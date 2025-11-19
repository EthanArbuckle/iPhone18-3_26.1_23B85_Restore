uint64_t sub_22399CB58(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEE0065707954746ELL;
  v4 = 0x6576456F69647561;
  v5 = 0x7461636964657270;
  v6 = 0xE700000000000000;
  if (a1 == 5)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x7372656B726F77;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000002239B9060;
  if (a1 != 3)
  {
    v7 = 0x64726163736964;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  if (a1 != 1)
  {
    v4 = 0x73616364616F7262;
    v3 = 0xE900000000000074;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000002239B9290;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (*(a2 + 16))
  {
    v12 = sub_22396236C(v9, v10);
    v14 = v13;

    if (v14)
    {
      sub_22395E644(*(a2 + 56) + 32 * v12, v16);
      goto LABEL_23;
    }
  }

  else
  {
  }

  memset(v16, 0, sizeof(v16));
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22399CD00(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xEE0065707954746ELL;
  v4 = 0x6576456F69647561;
  v5 = 0x7461636964657270;
  v6 = 0xE700000000000000;
  if (a1 == 5)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x7372656B726F77;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000002239B9060;
  if (a1 != 3)
  {
    v7 = 0x64726163736964;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  if (a1 != 1)
  {
    v4 = 0x73616364616F7262;
    v3 = 0xE900000000000074;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000002239B9290;
  }

  if (a1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (*(a2 + 16))
  {
    v12 = sub_22396236C(v9, v10);
    v14 = v13;

    if (v14)
    {
      sub_22395E644(*(a2 + 56) + 32 * v12, v16);
      goto LABEL_23;
    }
  }

  else
  {
  }

  memset(v16, 0, sizeof(v16));
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399CEB8(char a1, uint64_t a2)
{
  v3 = sub_2239A59E8(a1);
  if (*(a2 + 16))
  {
    v5 = sub_22396236C(v3, v4);
    v7 = v6;

    if (v7)
    {
      sub_22395E644(*(a2 + 56) + 32 * v5, v9);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v9, 0, sizeof(v9));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22399D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  if (*(a2 + 16))
  {
    v7 = sub_22396236C(v5, v6);
    v9 = v8;

    if (v9)
    {
      sub_22395E644(*(a2 + 56) + 32 * v7, v11);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v11, 0, sizeof(v11));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22399D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v9 = a4();
  if (*(a2 + 16))
  {
    v11 = sub_22396236C(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_22395E644(*(a2 + 56) + 32 * v11, v15);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v15, 0, sizeof(v15));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void sub_22399D1DC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0108, &unk_2239B6320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B6310;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000002239B9DF0;
  v8 = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000002239B9E30;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  *(inited + 96) = &unk_2836FCEB8;
  v9 = sub_223974468(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD78, &unk_2239B4D80);
  swift_arrayDestroy();
  v10 = *(v3 + 40);
  sub_22399F430(v9, *(v3 + 40), v70);
  if (v2)
  {
    return;
  }

  v11 = v5;
  v55 = a2;
  v56 = v6;
  v72 = 0;
  v12 = &v65;
  v67 = v70[2];
  v68 = v70[3];
  v69 = v70[4];
  v65 = v70[0];
  v66 = v70[1];
  v71[0] = *v3;
  v13 = v71[0];
  if (!*(v71[0] + 16) || (v14 = sub_223981500(1u), (v15 & 1) == 0) || (sub_22395E644(*(v13 + 56) + 32 * v14, &v58), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_22:
    *(&v54 + 1) = v11;
    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v32 = sub_2239B3048();
    __swift_project_value_buffer(v32, qword_2813366C8);
    v33 = *(v3 + 8);
    v34 = *(v3 + 16);
    v35 = v56;

    sub_22399F690(v71, &v58);

    v36 = sub_2239B3028();
    v37 = sub_2239B34D8();
    sub_22399F700(v71);

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v58 = v39;
      *v38 = 136380931;
      *(v38 + 4) = sub_223973B2C(v33, v34, &v58);
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_223973B2C(*(&v54 + 1), v35, &v58);
      _os_log_impl(&dword_22395C000, v36, v37, "No server section found. Using default. { configPath=%{private}s, platform=%{private}s }", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DEF1D0](v39, -1, -1);
      MEMORY[0x223DEF1D0](v38, -1, -1);
    }

    v40 = v12[2];
    v41 = v12[3];
    v42 = v55;
    goto LABEL_27;
  }

  v16 = v57[0];
  v17 = *(v57[0] + 16);
  if (!v17)
  {

    v42 = v55;
    goto LABEL_31;
  }

  v18 = 0;
  if (v10)
  {
    v19 = 257;
  }

  else
  {
    v19 = 1;
  }

  v49 = v19;
  v48 = v17 - 1;
  v12 = v11;
  HIDWORD(v47) = v10;
  v50 = v57[0];
  while (1)
  {
    v20 = *(v16 + 8 * v18 + 32);
    swift_bridgeObjectRetain_n();
    if (v10)
    {
      v21 = v72;
    }

    else
    {
      v21 = v72;
      sub_22399DE9C(v20);
      if (v21)
      {

        sub_22397F68C(&v65);
        swift_bridgeObjectRelease_n();
        return;
      }
    }

    CommonConfigFields.init(dict:)(v20, &v58);
    if (v21)
    {

      sub_22397F68C(&v65);
      return;
    }

    v22 = v58;
    v23 = *(&v58 + 1);
    v3 = *(&v59 + 1);
    v24 = v59;
    v54 = v60;
    v64 = BYTE2(v58);
    v25 = sub_22397B840(0, v20);
    v72 = 0;
    v51 = v18;
    v53 = v25 & 1;
    v52 = sub_22399C7B8(1u, v20);
    v63 = v26 & 1;
    v27 = sub_22399C6A0(2u, v20);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v28 = v27;
    }

    v57[0] = v28;
    sub_223983BB4(&unk_2836FCE88);

    LOWORD(v58) = v22;
    BYTE2(v58) = v64;
    *(&v58 + 1) = v23;
    *&v59 = v24;
    *(&v59 + 1) = v3;
    v60 = v54;
    LOBYTE(v61) = v53;
    *(&v61 + 1) = v52;
    LOBYTE(v62) = v63;
    *(&v62 + 1) = v57[0];
    if (!v3)
    {
LABEL_32:

      sub_22397F68C(&v65);
LABEL_35:
      v45 = v61;
      v42 = v55;
      v55[2] = v60;
      v42[3] = v45;
      v42[4] = v62;
      v43 = v59;
      v44 = v58;
      goto LABEL_28;
    }

    if (!*(v3 + 16))
    {

      sub_22397F68C(&v65);

      goto LABEL_35;
    }

    v11 = &v47;
    v57[0] = v12;
    v57[1] = v56;
    MEMORY[0x28223BE20](v29);
    v46[2] = v57;

    v30 = v72;
    v31 = sub_223968CB8(sub_223968D9C, v46, v3);
    v72 = v30;

    if (v31)
    {
      goto LABEL_32;
    }

    sub_22397F68C(&v58);
    v16 = v50;
    if (v48 == v51)
    {
      break;
    }

    v18 = v51 + 1;
    LOBYTE(v10) = BYTE4(v47);
    if ((v51 + 1) >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v42 = v55;
  v12 = &v65;
LABEL_31:
  v40 = v67;
  v41 = v68;
LABEL_27:
  v42[2] = v40;
  v42[3] = v41;
  v42[4] = v12[4];
  v44 = v65;
  v43 = v66;
LABEL_28:
  *v42 = v44;
  v42[1] = v43;
}

uint64_t sub_22399D854(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v20 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = sub_2239B37B8();

      if (v15 >= 9)
      {

        v16 = sub_2239B37B8();

        if (v16 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v18 = *(i + 16);
    v17 = *(i + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = v18 + 1;
      v27 = v18;
      result = sub_22396C7F0((v17 > 1), v18 + 1, 1);
      v19 = v21;
      v18 = v27;
      i = v28;
    }

    *(i + 16) = v19;
    v20 = i + 16 * v18;
    *(v20 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v22 = sub_2239B3128();
  v24 = v23;

  sub_2239B3678();

  v25 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v25);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v22, v24);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v26 = 0xD00000000000001ALL;
  *(v26 + 8) = 0x80000002239BA2E0;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399DB88(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v20 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = sub_2239B37B8();

      if (v15 >= 5)
      {

        v16 = sub_2239B37B8();

        if (v16 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v18 = *(i + 16);
    v17 = *(i + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = v18 + 1;
      v27 = v18;
      result = sub_22396C7F0((v17 > 1), v18 + 1, 1);
      v19 = v21;
      v18 = v27;
      i = v28;
    }

    *(i + 16) = v19;
    v20 = i + 16 * v18;
    *(v20 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v22 = sub_2239B3128();
  v24 = v23;

  sub_2239B3678();

  v25 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v25);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v22, v24);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v26 = 0xD00000000000001ALL;
  *(v26 + 8) = 0x80000002239BA2E0;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399DE9C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v20 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = sub_2239B37B8();

      if (v15 >= 3)
      {

        v16 = sub_2239B37B8();

        if (v16 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v18 = *(i + 16);
    v17 = *(i + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = v18 + 1;
      v27 = v18;
      result = sub_22396C7F0((v17 > 1), v18 + 1, 1);
      v19 = v21;
      v18 = v27;
      i = v28;
    }

    *(i + 16) = v19;
    v20 = i + 16 * v18;
    *(v20 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v22 = sub_2239B3128();
  v24 = v23;

  sub_2239B3678();

  v25 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v25);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v22, v24);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v26 = 0xD00000000000001ALL;
  *(v26 + 8) = 0x80000002239BA2E0;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399E1B0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v20 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = sub_2239B37B8();

      if (v15 >= 2)
      {

        v16 = sub_2239B37B8();

        if (v16 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v18 = *(i + 16);
    v17 = *(i + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = v18 + 1;
      v27 = v18;
      result = sub_22396C7F0((v17 > 1), v18 + 1, 1);
      v19 = v21;
      v18 = v27;
      i = v28;
    }

    *(i + 16) = v19;
    v20 = i + 16 * v18;
    *(v20 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v22 = sub_2239B3128();
  v24 = v23;

  sub_2239B3678();

  v25 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v25);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v22, v24);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v26 = 0xD00000000000001ALL;
  *(v26 + 8) = 0x80000002239BA2E0;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399E4E4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v20 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      v14 = sub_2239B37B8();

      if (v14 >= 7)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v16 = i;
    result = swift_isUniquelyReferenced_nonNull_native();
    v29 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
      v16 = i;
    }

    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v28 = v18 + 1;
      v26 = *(v16 + 16);
      result = sub_22396C7F0((v17 > 1), v18 + 1, 1);
      v19 = v28;
      v16 = v29;
      v18 = v26;
    }

    *(v16 + 16) = v19;
    i = v16;
    v20 = v16 + 16 * v18;
    *(v20 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v21 = sub_2239B3128();
  v23 = v22;

  sub_2239B3678();

  v24 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v24);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v21, v23);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v25 = 0xD00000000000001ALL;
  *(v25 + 8) = 0x80000002239BA2E0;
  *(v25 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399E804(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      if (sub_2239A6EDC() == 16)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      result = sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v17 = v26;
      v18 = v20;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v21 = sub_2239B3128();
  v23 = v22;

  sub_2239B3678();

  v24 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v24);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v21, v23);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v25 = 0xD00000000000001ALL;
  *(v25 + 8) = 0x80000002239BA2E0;
  *(v25 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399EB08(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v20 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = sub_2239B37B8();

      if (v15 >= 6)
      {

        v16 = sub_2239B37B8();

        if (v16 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v18 = *(i + 16);
    v17 = *(i + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = v18 + 1;
      v27 = v18;
      result = sub_22396C7F0((v17 > 1), v18 + 1, 1);
      v19 = v21;
      v18 = v27;
      i = v28;
    }

    *(i + 16) = v19;
    v20 = i + 16 * v18;
    *(v20 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v22 = sub_2239B3128();
  v24 = v23;

  sub_2239B3678();

  v25 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v25);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v22, v24);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v26 = 0xD00000000000001ALL;
  *(v26 + 8) = 0x80000002239BA2E0;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399EE1C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      if (sub_2239B37B8())
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      result = sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v18 = v20;
      v17 = v26;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v21 = sub_2239B3128();
  v23 = v22;

  sub_2239B3678();

  v24 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v24);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v21, v23);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v25 = 0xD00000000000001ALL;
  *(v25 + 8) = 0x80000002239BA2E0;
  *(v25 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399F11C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v20 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = sub_2239B37B8();

      if (v15 >= 0xA)
      {

        v16 = sub_2239B37B8();

        if (v16 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v28 = i;
    if ((result & 1) == 0)
    {
      result = sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v18 = *(i + 16);
    v17 = *(i + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v21 = v18 + 1;
      v27 = v18;
      result = sub_22396C7F0((v17 > 1), v18 + 1, 1);
      v19 = v21;
      v18 = v27;
      i = v28;
    }

    *(i + 16) = v19;
    v20 = i + 16 * v18;
    *(v20 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  if (!*(i + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_22399F768();
  v22 = sub_2239B3128();
  v24 = v23;

  sub_2239B3678();

  v25 = ConfigSection.rawValue.getter();
  MEMORY[0x223DEE030](v25);

  MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DEE030](v22, v24);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);
  sub_223973AD8();
  swift_allocError();
  *v26 = 0xD00000000000001ALL;
  *(v26 + 8) = 0x80000002239BA2E0;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_22399F430@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399DE9C(a1);
    if (v3)
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  CommonConfigFields.init(dict:)(a1, v22);
  if (v3)
  {
  }

  v21 = v22[0];
  v9 = v22[1];
  v8 = v22[2];
  v11 = v22[3];
  v10 = v22[4];
  v12 = v22[5];
  v24 = BYTE2(v22[0]);
  v20 = sub_22397B840(0, a1) & 1;
  v19 = sub_22399C7B8(1u, a1);
  v23 = v13 & 1;
  v14 = sub_22399C6A0(2u, a1);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v15 = v14;
  }

  v22[0] = v15;
  sub_223983BB4(&unk_2836FCE88);

  v16 = v22[0];
  v17 = v24;
  v18 = v23;
  *a3 = v21;
  *(a3 + 2) = v17;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = v12;
  *(a3 + 48) = v20;
  *(a3 + 56) = v19;
  *(a3 + 64) = v18;
  *(a3 + 72) = v16;
  return result;
}

uint64_t ServerConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t ServerConfig.osTransactionTimeout.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_22399F690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0380, &qword_2239B7408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22399F700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0380, &qword_2239B7408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22399F768()
{
  result = qword_281335D60;
  if (!qword_281335D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09FE70, "<r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D60);
  }

  return result;
}

uint64_t sub_22399F81C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2239B3478();
  if (!v26)
  {
    return sub_2239B33D8();
  }

  v48 = v26;
  v52 = sub_2239B3738();
  v39 = sub_2239B3748();
  sub_2239B36E8();
  result = sub_2239B3468();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2239B34A8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2239B3728();
      result = sub_2239B3498();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22399FC40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v3 - 2);
    v12 = *(v3 - 1);
    v13 = *v3;
    if (v10 > 2)
    {
      break;
    }

    if (!*i)
    {
      if (*v3)
      {
        goto LABEL_39;
      }

      sub_223963BB4(*(i - 2), *(i - 1), 0);
      v5 = v11;
      v6 = v12;
      v7 = 0;
LABEL_7:
      sub_223963BB4(v5, v6, v7);
      if (v8 != v11)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v10 == 1)
    {
      if (v13 != 1)
      {
        goto LABEL_39;
      }

      sub_223963BB4(*(i - 2), *(i - 1), 1);
      v5 = v11;
      v6 = v12;
      v7 = 1;
      goto LABEL_7;
    }

    if (v13 != 2)
    {
      goto LABEL_39;
    }

    v15 = *(v3 - 2);
    sub_223963BB4(*(i - 2), *(i - 1), 2);
    sub_223963BB4(v11, v12, 2);
    if (*&v8 != *&v11)
    {
      return 0;
    }

LABEL_8:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*i > 4u)
  {
    if (v10 == 5)
    {
      if (v13 != 5)
      {
        goto LABEL_36;
      }

      sub_22396298C(*(v3 - 2), *(v3 - 1), 5);
      sub_22396298C(v8, v9, 5);
      sub_22396298C(v11, v12, 5);
      sub_22396298C(v8, v9, 5);
      v14 = sub_22399FC40(v8, v11);
      sub_223963BB4(v8, v9, 5);
      sub_223963BB4(v11, v12, 5);
      sub_223963BB4(v11, v12, 5);
      sub_223963BB4(v8, v9, 5);
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v13 != 6)
      {
LABEL_36:
        v23 = *(i - 2);
        goto LABEL_38;
      }

      sub_22396298C(*(v3 - 2), *(v3 - 1), 6);
      sub_22396298C(v8, v9, 6);
      sub_22396298C(v11, v12, 6);
      sub_22396298C(v8, v9, 6);
      v16 = sub_22396A45C(v8, v11);
      sub_223963BB4(v8, v9, 6);
      sub_223963BB4(v11, v12, 6);
      sub_223963BB4(v11, v12, 6);
      sub_223963BB4(v8, v9, 6);
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_8;
  }

  if (v10 == 3)
  {
    if (v13 != 3)
    {
      goto LABEL_39;
    }

    sub_223963BB4(*(i - 2), *(i - 1), 3);
    sub_223963BB4(v11, v12, 3);
    if ((v11 ^ v8))
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v13 == 4)
  {
    if (v8 == v11 && v9 == v12)
    {
      sub_22396298C(*(i - 2), *(i - 1), 4);
      sub_22396298C(v8, v9, 4);
      sub_223963BB4(v8, v9, 4);
      sub_223963BB4(v8, v9, 4);
    }

    else
    {
      v17 = *(i - 2);
      v18 = *(i - 1);
      v19 = *(v3 - 2);
      v20 = *(v3 - 1);
      v21 = sub_2239B3958();
      sub_22396298C(v11, v12, 4);
      sub_22396298C(v8, v9, 4);
      sub_223963BB4(v8, v9, 4);
      sub_223963BB4(v11, v12, 4);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_8;
  }

  v24 = *(i - 1);
LABEL_38:
  sub_22396298C(*(i - 2), *(i - 1), *i);

LABEL_39:
  sub_22396298C(v11, v12, v13);
  sub_223963BB4(v8, v9, v10);
  sub_223963BB4(v11, v12, v13);
  sub_223963BB4(v8, v9, v10);
  return 0;
}

uint64_t sub_2239A0044(uint64_t a1)
{
  v2 = sub_2239A377C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0080(uint64_t a1)
{
  v2 = sub_2239A377C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A00BC(uint64_t a1)
{
  v2 = sub_2239A3824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A00F8(uint64_t a1)
{
  v2 = sub_2239A3824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A0134()
{
  v1 = *v0;
  v2 = 7630441;
  v3 = 0x7961727261;
  if (v1 != 5)
  {
    v3 = 0x616E6F6974636964;
  }

  v4 = 1819242338;
  if (v1 != 3)
  {
    v4 = 0x676E69727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953393013;
  if (v1 != 1)
  {
    v5 = 0x656C62756F64;
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

uint64_t sub_2239A01EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2239A4514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2239A0214(uint64_t a1)
{
  v2 = sub_2239A36D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0250(uint64_t a1)
{
  v2 = sub_2239A36D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A028C(uint64_t a1)
{
  v2 = sub_2239A3728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A02C8(uint64_t a1)
{
  v2 = sub_2239A3728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A0304(uint64_t a1)
{
  v2 = sub_2239A3878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0340(uint64_t a1)
{
  v2 = sub_2239A3878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A037C(uint64_t a1)
{
  v2 = sub_2239A3920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A03B8(uint64_t a1)
{
  v2 = sub_2239A3920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A03F4(uint64_t a1)
{
  v2 = sub_2239A37D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0430(uint64_t a1)
{
  v2 = sub_2239A37D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2239B3958();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2239A04EC(uint64_t a1)
{
  v2 = sub_2239A38CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0528(uint64_t a1)
{
  v2 = sub_2239A38CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SimpleType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03B0, &qword_2239B7450);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03B8, &qword_2239B7458);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03C0, &qword_2239B7460);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03C8, &qword_2239B7468);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = v46 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03D0, &qword_2239B7470);
  v47 = *(v63 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v46 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03D8, &qword_2239B7478);
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03E0, &qword_2239B7480);
  v60 = *(v21 - 8);
  v22 = *(v60 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v46 - v23;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03E8, &unk_2239B7488);
  v67 = *(v64 - 8);
  v25 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  v27 = v46 - v26;
  v28 = v1[1];
  v66 = *v1;
  v46[1] = v28;
  v29 = *(v1 + 16);
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239A36D4();
  v65 = v27;
  sub_2239B3A98();
  if (v29 <= 2)
  {
    v37 = v60;
    v36 = v61;
    v38 = v62;
    v39 = v63;
    if (v29)
    {
      v40 = v29 == 1;
      v41 = v64;
      if (v40)
      {
        LOBYTE(v68) = 1;
        sub_2239A38CC();
        v45 = v65;
        sub_2239B3878();
        sub_2239B38F8();
        (*(v36 + 8))(v20, v17);
      }

      else
      {
        LOBYTE(v68) = 2;
        sub_2239A3878();
        v45 = v65;
        sub_2239B3878();
        sub_2239B38C8();
        (*(v47 + 8))(v38, v39);
      }

      return (*(v67 + 8))(v45, v41);
    }

    else
    {
      LOBYTE(v68) = 0;
      sub_2239A3920();
      v42 = v64;
      v43 = v65;
      sub_2239B3878();
      sub_2239B38E8();
      (*(v37 + 8))(v24, v21);
      return (*(v67 + 8))(v43, v42);
    }
  }

  else
  {
    if (v29 > 4)
    {
      v31 = v64;
      v32 = v65;
      if (v29 == 5)
      {
        LOBYTE(v68) = 5;
        sub_2239A377C();
        v33 = v54;
        sub_2239B3878();
        v68 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0408, &qword_2239B7498);
        sub_2239A3974(&qword_27D0A0410, sub_223991650);
        v34 = v56;
        sub_2239B38D8();
        v35 = v55;
      }

      else
      {
        LOBYTE(v68) = 6;
        sub_2239A3728();
        v33 = v57;
        sub_2239B3878();
        v68 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01D0, &qword_2239B68D0);
        sub_2239916F8(&qword_27D0A01D8, sub_223991650);
        v34 = v59;
        sub_2239B38D8();
        v35 = v58;
      }
    }

    else
    {
      v31 = v64;
      v32 = v65;
      if (v29 == 3)
      {
        LOBYTE(v68) = 3;
        sub_2239A3824();
        v33 = v48;
        sub_2239B3878();
        v34 = v50;
        sub_2239B38B8();
        v35 = v49;
      }

      else
      {
        LOBYTE(v68) = 4;
        sub_2239A37D0();
        v33 = v51;
        sub_2239B3878();
        v34 = v53;
        sub_2239B38A8();
        v35 = v52;
      }
    }

    (*(v35 + 8))(v33, v34);
    return (*(v67 + 8))(v32, v31);
  }
}

uint64_t SimpleType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v4 != 1)
      {
        MEMORY[0x223DEE800](2);
        if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v3;
        }

        else
        {
          v10 = 0;
        }

        return MEMORY[0x223DEE840](v10);
      }

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x223DEE800](v6);
    v10 = v3;
    return MEMORY[0x223DEE840](v10);
  }

  if (*(v1 + 16) > 4u)
  {
    if (v4 == 5)
    {
      MEMORY[0x223DEE800](5);
      result = MEMORY[0x223DEE800](*(v3 + 16));
      v7 = *(v3 + 16);
      if (v7)
      {
        v8 = (v3 + 48);
        do
        {
          v12 = *(v8 - 2);
          v13 = *(v8 - 1);
          v9 = *v8;
          v8 += 24;
          sub_22396298C(v12, v13, v9);
          SimpleType.hash(into:)(a1);
          result = sub_223963BB4(v12, v13, v9);
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      MEMORY[0x223DEE800](6);

      return sub_2239A2FC4(a1, v3);
    }
  }

  else if (v4 == 3)
  {
    MEMORY[0x223DEE800](3);
    return sub_2239B3A38();
  }

  else
  {
    v11 = *(v1 + 8);
    MEMORY[0x223DEE800](4);

    return sub_2239B3228();
  }

  return result;
}

uint64_t SimpleType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2239B3A18();
  SimpleType.hash(into:)(v3);
  return sub_2239B3A78();
}

uint64_t SimpleType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0440, &qword_2239B74A0);
  v4 = *(v3 - 8);
  v86 = v3;
  v87 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v89 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0448, &qword_2239B74A8);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v88 = &v72 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0450, &qword_2239B74B0);
  v83 = *(v79 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v79);
  v93 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0458, &qword_2239B74B8);
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  MEMORY[0x28223BE20](v12);
  v92 = &v72 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0460, &qword_2239B74C0);
  v80 = *(v76 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20](v76);
  v91 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0468, &qword_2239B74C8);
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0470, &qword_2239B74D0);
  v75 = *(v21 - 8);
  v22 = *(v75 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v72 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0478, &qword_2239B74D8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v94 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_2239A36D4();
  v32 = v95;
  sub_2239B3A88();
  if (v32)
  {
    goto LABEL_11;
  }

  v73 = v21;
  v33 = v91;
  v74 = 0;
  v35 = v92;
  v34 = v93;
  v95 = v26;
  v36 = sub_2239B3868();
  if (*(v36 + 16) != 1 || (v37 = *(v36 + 32), v37 == 7))
  {
    v41 = sub_2239B36A8();
    swift_allocError();
    v43 = v42;
    v44 = v25;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0480, &unk_2239B74E0) + 48);
    *v43 = &type metadata for SimpleType;
    sub_2239B37D8();
    sub_2239B3698();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v95 + 8))(v29, v44);
    goto LABEL_10;
  }

  if (*(v36 + 32) <= 2u)
  {
    if (*(v36 + 32))
    {
      v48 = v74;
      if (v37 == 1)
      {
        LOBYTE(v96) = 1;
        sub_2239A38CC();
        v49 = v20;
        sub_2239B37C8();
        v50 = v90;
        if (!v48)
        {
          v51 = v78;
          v69 = sub_2239B3858();
          (*(v77 + 8))(v49, v51);
          (*(v95 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v68 = 0;
LABEL_32:
          v46 = v94;
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v96) = 2;
        sub_2239A3878();
        sub_2239B37C8();
        v50 = v90;
        if (!v48)
        {
          v58 = v76;
          sub_2239B3828();
          v66 = v65;
          (*(v80 + 8))(v33, v58);
          (*(v95 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v68 = 0;
          v69 = v66;
          goto LABEL_32;
        }
      }
    }

    else
    {
      LODWORD(v93) = 0;
      LOBYTE(v96) = 0;
      sub_2239A3920();
      v56 = v24;
      v57 = v74;
      sub_2239B37C8();
      if (!v57)
      {
        v64 = v73;
        v69 = sub_2239B3848();
        (*(v75 + 8))(v56, v64);
        (*(v95 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v68 = 0;
        v46 = v94;
        v50 = v90;
        LOBYTE(v37) = v93;
LABEL_35:
        *v50 = v69;
        *(v50 + 8) = v68;
        *(v50 + 16) = v37;
        return __swift_destroy_boxed_opaque_existential_0Tm(v46);
      }
    }

    (*(v95 + 8))(v29, v25);
    goto LABEL_10;
  }

  v72 = v36;
  if (v37 <= 4)
  {
    v38 = v95;
    if (v37 == 3)
    {
      LOBYTE(v96) = 3;
      sub_2239A3824();
      v39 = v74;
      sub_2239B37C8();
      if (!v39)
      {
        v40 = v82;
        v67 = sub_2239B3818();
        (*(v81 + 8))(v35, v40);
        (*(v38 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v68 = 0;
        v69 = v67 & 1;
LABEL_34:
        v46 = v94;
        v50 = v90;
        goto LABEL_35;
      }
    }

    else
    {
      LOBYTE(v96) = 4;
      sub_2239A37D0();
      v59 = v74;
      sub_2239B37C8();
      if (!v59)
      {
        v60 = v79;
        v69 = sub_2239B3808();
        v71 = v70;
        (*(v83 + 8))(v34, v60);
        (*(v38 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v68 = v71;
        goto LABEL_34;
      }
    }

    (*(v38 + 8))(v29, v25);
    goto LABEL_10;
  }

  v52 = v95;
  if (v37 == 5)
  {
    LOBYTE(v96) = 5;
    sub_2239A377C();
    v53 = v88;
    v54 = v74;
    sub_2239B37C8();
    if (!v54)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0408, &qword_2239B7498);
      sub_2239A3974(&qword_27D0A0488, sub_22399177C);
      v55 = v85;
      sub_2239B3838();
      (*(v84 + 8))(v53, v55);
LABEL_33:
      (*(v52 + 8))(v29, v25);
      swift_unknownObjectRelease();
      v68 = 0;
      v69 = v96;
      goto LABEL_34;
    }
  }

  else
  {
    LOBYTE(v96) = 6;
    sub_2239A3728();
    v61 = v74;
    sub_2239B37C8();
    if (!v61)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01D0, &qword_2239B68D0);
      sub_2239916F8(&qword_27D0A0208, sub_22399177C);
      v62 = v86;
      v63 = v89;
      sub_2239B3838();
      (*(v87 + 8))(v63, v62);
      goto LABEL_33;
    }
  }

  (*(v52 + 8))(v29, v25);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v46 = v94;
  return __swift_destroy_boxed_opaque_existential_0Tm(v46);
}

uint64_t sub_2239A1CE8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2239B3A18();
  SimpleType.hash(into:)(v3);
  return sub_2239B3A78();
}

uint64_t sub_2239A1D40()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2239B3A18();
  SimpleType.hash(into:)(v3);
  return sub_2239B3A78();
}

uint64_t ConversionError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_2239B3678();
  MEMORY[0x223DEE030](0x2064696C61766E49, 0xED00002065707974);
  MEMORY[0x223DEE030](v1, v2);

  MEMORY[0x223DEE030](0x6176206874697720, 0xEC0000002065756CLL);
  MEMORY[0x223DEE030](v4, v3);

  MEMORY[0x223DEE030](0xD000000000000021, 0x80000002239BADD0);
  return 0;
}

unint64_t sub_2239A1E9C()
{
  result = qword_27D0A03A0;
  if (!qword_27D0A03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A03A0);
  }

  return result;
}

uint64_t static SimpleType.initOrThrow(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22395E644(a1, &v14);
  SimpleType.init(_:)(&v14, &v16);
  v4 = v18;
  result = v16;
  v6 = v17;
  if (v18 == 255)
  {
    sub_22397617C(v16, v17, 255);
    sub_2239A1E9C();
    swift_allocError();
    v8 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v9 = sub_2239B3AC8();
    v11 = v10;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2239B3758();
    v12 = v14;
    v13 = v15;
    *v8 = v9;
    v8[1] = v11;
    v8[2] = v12;
    v8[3] = v13;
    return swift_willThrow();
  }

  else
  {
    *a2 = v16;
    *(a2 + 8) = v6;
    *(a2 + 16) = v4;
  }

  return result;
}

uint64_t SimpleType.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void SimpleType.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t SimpleType.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

uint64_t SimpleType.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 4;
  return result;
}

void *sub_2239A206C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void *sub_2239A207C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

unsigned __int8 *sub_2239A2090@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

uint64_t SimpleType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[16];
  if (v5 <= 1)
  {
    if (v0[16])
    {
      if (v5 != 1)
      {
LABEL_15:
        v8 = *v0;
        v9 = v4;
        v10 = swift_allocObject();
        *(v10 + 16) = v8;
        *(v10 + 24) = v9;
        *(v10 + 32) = v5;
        sub_22396298C(v8, v9, v5);
        sub_22396298C(v8, v9, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A04A0, &unk_2239B74F0);
        v11 = sub_2239B31C8();
        sub_223963BB4(v1 | (v2 << 8), v9, v5);
        return v11;
      }

      sub_22396298C(v3, v4, 1);
    }

    else
    {
      sub_22396298C(v3, v4, 0);
    }

    return sub_2239B3928();
  }

  if (v5 == 2)
  {
    sub_22396298C(v3, v4, 2);
    return sub_2239B3438();
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      v6 = *(v0 + 1);
      sub_22396298C(v3, v4, 4);
      return v1 | (v2 << 8);
    }

    goto LABEL_15;
  }

  sub_22396298C(v3, v4, 3);
  if (v1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t SimpleType.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void SimpleType.init(dictionaryLiteral:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
    v4 = sub_2239B3798();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_2239A2BE0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 16) = 6;
}

uint64_t sub_2239A2378@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void sub_2239A2388(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
    v4 = sub_2239B3798();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_2239A2BE0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 16) = 6;
}

Swift::UInt64_optional __swiftcall SimpleType.unwrapToUInt()()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[16];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      sub_22396298C(v3, v4, 3);
      v23 = 0;
      v3 = v1 & 1;
      goto LABEL_82;
    }

    if (v5 != 4)
    {
LABEL_27:
      v18 = v1 | (v2 << 8);
      v19 = v4;
      sub_22396298C(v3, v4, v5);
      v20 = v18;
      v21 = v19;
      v22 = v5;
LABEL_28:
      sub_223963BB4(v20, v21, v22);
      goto LABEL_45;
    }

    v8 = v1 | (v2 << 8);
    v9 = HIBYTE(v4) & 0xF;
    v10 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      v34 = *(v0 + 1);
      sub_22396298C(v3, v4, 4);
      v20 = v8;
      v21 = v34;
      v22 = 4;
      goto LABEL_28;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v35 = *(v0 + 1);
      sub_22396298C(v3, v4, 4);
      v33 = v35;
      v14 = sub_2239A3154(v8, v35, 10);
      v23 = v36;
LABEL_79:
      sub_223963BB4(v8, v33, 4);
      if (v23)
      {
        v3 = 0;
      }

      else
      {
        v3 = v14;
      }

      goto LABEL_82;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v40[0] = v1 | (v2 << 8);
      v40[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v1 == 43)
      {
        if (v9)
        {
          v10 = v9 - 1;
          if (v9 != 1)
          {
            v14 = 0;
            v28 = v40 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                break;
              }

              v17 = __CFADD__(10 * v14, v29);
              v14 = 10 * v14 + v29;
              if (v17)
              {
                break;
              }

              ++v28;
              if (!--v10)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v1 != 45)
      {
        if (v9)
        {
          v14 = 0;
          v31 = v40;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              break;
            }

            v17 = __CFADD__(10 * v14, v32);
            v14 = 10 * v14 + v32;
            if (v17)
            {
              break;
            }

            ++v31;
            if (!--v9)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_77;
      }

      if (v9)
      {
        v10 = v9 - 1;
        if (v9 != 1)
        {
          v14 = 0;
          v24 = v40 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              break;
            }

            v17 = 10 * v14 >= v25;
            v14 = 10 * v14 - v25;
            if (!v17)
            {
              break;
            }

            ++v24;
            if (!--v10)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v2 & 0x10000000000000) != 0)
      {
        v12 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v37 = *v0;
        v38 = *(v0 + 1);
        v12 = sub_2239B36B8();
        v3 = v37;
        v10 = v39;
        v4 = v38;
      }

      v13 = *v12;
      if (v13 == 43)
      {
        if (v10 >= 1)
        {
          if (--v10)
          {
            v14 = 0;
            if (v12)
            {
              v26 = v12 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_77;
                }

                if (!is_mul_ok(v14, 0xAuLL))
                {
                  goto LABEL_77;
                }

                v17 = __CFADD__(10 * v14, v27);
                v14 = 10 * v14 + v27;
                if (v17)
                {
                  goto LABEL_77;
                }

                ++v26;
                if (!--v10)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_76;
          }

          goto LABEL_77;
        }

        goto LABEL_88;
      }

      if (v13 != 45)
      {
        if (v10)
        {
          v14 = 0;
          if (v12)
          {
            while (1)
            {
              v30 = *v12 - 48;
              if (v30 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                goto LABEL_77;
              }

              v17 = __CFADD__(10 * v14, v30);
              v14 = 10 * v14 + v30;
              if (v17)
              {
                goto LABEL_77;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_76;
        }

LABEL_77:
        v14 = 0;
        LOBYTE(v10) = 1;
        goto LABEL_78;
      }

      if (v10 >= 1)
      {
        if (--v10)
        {
          v14 = 0;
          if (v12)
          {
            v15 = v12 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                goto LABEL_77;
              }

              v17 = 10 * v14 >= v16;
              v14 = 10 * v14 - v16;
              if (!v17)
              {
                goto LABEL_77;
              }

              ++v15;
              if (!--v10)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_76:
          LOBYTE(v10) = 0;
LABEL_78:
          v41 = v10;
          v23 = v10;
          v33 = v4;
          sub_22396298C(v3, v4, 4);
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (!v0[16])
  {
    if (((v2 << 8) & 0x8000000000000000) == 0)
    {
      v6 = (v2 << 8) | v1;
      v7 = 0;
      goto LABEL_31;
    }

    sub_22396298C(v3, v4, 0);
LABEL_45:
    v3 = 0;
    v23 = 1;
    goto LABEL_82;
  }

  if (v5 != 1)
  {
    goto LABEL_27;
  }

  v6 = v1 | (v2 << 8);
  v7 = 1;
LABEL_31:
  sub_22396298C(v3, v4, v7);
  v3 = v6;
  v23 = 0;
LABEL_82:
  LOBYTE(v4) = v23 & 1;
LABEL_90:
  result.is_nil = v4;
  result.value = v3;
  return result;
}

Swift::String_optional __swiftcall SimpleType.unwrapToString()()
{
  if (*(v0 + 16) == 4)
  {
    v3 = v0;
    v2 = *v0;
    v1 = *(v3 + 8);
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  v4 = v2;
  v5 = v1;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Array.asSimpleType()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2239B3048();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v13[1] = v3;
  v12 = v2;
  v6 = sub_2239B3408();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0148, &unk_2239B66D0);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_22399F81C(sub_2239A3AD0, v11, v6, &type metadata for SimpleType, v7, WitnessTable, MEMORY[0x277D84950], v13);
  result.value._rawValue = v9;
  result.is_nil = v10;
  return result;
}

uint64_t sub_2239A2B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v11[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  static SimpleType.initOrThrow(_:)(v11, a4);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v11);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

void sub_2239A2BE0(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {

    return;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  sub_22396298C(v7, v6, v8);
  v11 = sub_22396236C(v4, v5);
  v12 = *(v9 + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v10;
  if (*(v9 + 24) >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_223963D78();
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0148, &unk_2239B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_223963BB4(v7, v6, v8);

      return;
    }

    goto LABEL_29;
  }

  sub_223965FA8(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_22396236C(v4, v5);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_2239B39A8();
    __break(1u);
LABEL_29:
    sub_2239B3678();
    MEMORY[0x223DEE030](0xD00000000000001BLL, 0x80000002239BA820);
    sub_2239B3758();
    MEMORY[0x223DEE030](39, 0xE100000000000000);
    sub_2239B3768();
    __break(1u);
    return;
  }

  v11 = v17;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_13:
  v21 = a3;
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v4;
  v23[1] = v5;
  v24 = v22[7] + 24 * v11;
  *v24 = v7;
  *(v24 + 8) = v6;
  *(v24 + 16) = v8;
  v25 = v22[2];
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v27;
  v28 = a1;
  if (v47 != 1)
  {
    v29 = (a1 + 104);
    v30 = 1;
    while (v30 < *(v28 + 16))
    {
      v32 = *(v29 - 4);
      v31 = *(v29 - 3);
      v7 = *(v29 - 2);
      v6 = *(v29 - 1);
      v8 = *v29;
      v33 = *v21;

      sub_22396298C(v7, v6, v8);
      v34 = sub_22396236C(v32, v31);
      v36 = *(v33 + 16);
      v37 = (v35 & 1) == 0;
      v26 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v26)
      {
        goto LABEL_25;
      }

      v39 = v35;
      if (*(v33 + 24) < v38)
      {
        sub_223965FA8(v38, 1);
        v40 = *a3;
        v34 = sub_22396236C(v32, v31);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }
      }

      if (v39)
      {
        goto LABEL_10;
      }

      v21 = a3;
      v42 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v32;
      v43[1] = v31;
      v44 = v42[7] + 24 * v34;
      *v44 = v7;
      *(v44 + 8) = v6;
      *(v44 + 16) = v8;
      v45 = v42[2];
      v26 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      ++v30;
      v42[2] = v46;
      v29 += 40;
      v28 = a1;
      if (v47 == v30)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_2239A2FC4(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v22 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 56) + 24 * v11;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);

      sub_22396298C(v16, v17, v18);
      if (!v13)
      {
        break;
      }

      v6 &= v6 - 1;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v19 = *(a1 + 48);
      v23[2] = *(a1 + 32);
      v23[3] = v19;
      v24 = *(a1 + 64);
      v20 = *(a1 + 16);
      v23[0] = *a1;
      v23[1] = v20;
      sub_2239B3228();

      SimpleType.hash(into:)(v23);
      sub_223963BB4(v16, v17, v18);
      result = sub_2239B3A78();
      v22 ^= result;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x223DEE800](v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_2239A3154(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_2239B32E8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2239888E8();
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2239B36B8();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_127;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_2239A36D4()
{
  result = qword_27D0A03F0;
  if (!qword_27D0A03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A03F0);
  }

  return result;
}

unint64_t sub_2239A3728()
{
  result = qword_27D0A03F8;
  if (!qword_27D0A03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A03F8);
  }

  return result;
}

unint64_t sub_2239A377C()
{
  result = qword_27D0A0400;
  if (!qword_27D0A0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0400);
  }

  return result;
}

unint64_t sub_2239A37D0()
{
  result = qword_27D0A0418;
  if (!qword_27D0A0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0418);
  }

  return result;
}

unint64_t sub_2239A3824()
{
  result = qword_27D0A0420;
  if (!qword_27D0A0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0420);
  }

  return result;
}

unint64_t sub_2239A3878()
{
  result = qword_27D0A0428;
  if (!qword_27D0A0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0428);
  }

  return result;
}

unint64_t sub_2239A38CC()
{
  result = qword_27D0A0430;
  if (!qword_27D0A0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0430);
  }

  return result;
}

unint64_t sub_2239A3920()
{
  result = qword_27D0A0438;
  if (!qword_27D0A0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0438);
  }

  return result;
}

uint64_t sub_2239A3974(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A0408, &qword_2239B7498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2239A39EC()
{
  result = qword_27D0A0498;
  if (!qword_27D0A0498)
  {
    sub_2239B2EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0498);
  }

  return result;
}

uint64_t sub_2239A3A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2239A3AF4()
{
  result = qword_2813365C0;
  if (!qword_2813365C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813365C0);
  }

  return result;
}

unint64_t sub_2239A3B74()
{
  result = qword_27D0A04A8;
  if (!qword_27D0A04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04A8);
  }

  return result;
}

unint64_t sub_2239A3BD8()
{
  result = qword_27D0A04B0;
  if (!qword_27D0A04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04B0);
  }

  return result;
}

unint64_t sub_2239A3CD8()
{
  result = qword_27D0A04B8;
  if (!qword_27D0A04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04B8);
  }

  return result;
}

unint64_t sub_2239A3D30()
{
  result = qword_27D0A04C0;
  if (!qword_27D0A04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04C0);
  }

  return result;
}

unint64_t sub_2239A3D88()
{
  result = qword_27D0A04C8;
  if (!qword_27D0A04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04C8);
  }

  return result;
}

unint64_t sub_2239A3DE0()
{
  result = qword_27D0A04D0;
  if (!qword_27D0A04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04D0);
  }

  return result;
}

unint64_t sub_2239A3E38()
{
  result = qword_27D0A04D8;
  if (!qword_27D0A04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04D8);
  }

  return result;
}

unint64_t sub_2239A3E90()
{
  result = qword_27D0A04E0;
  if (!qword_27D0A04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04E0);
  }

  return result;
}

unint64_t sub_2239A3EE8()
{
  result = qword_27D0A04E8;
  if (!qword_27D0A04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04E8);
  }

  return result;
}

unint64_t sub_2239A3F40()
{
  result = qword_27D0A04F0;
  if (!qword_27D0A04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04F0);
  }

  return result;
}

unint64_t sub_2239A3F98()
{
  result = qword_27D0A04F8;
  if (!qword_27D0A04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04F8);
  }

  return result;
}

unint64_t sub_2239A3FF0()
{
  result = qword_27D0A0500;
  if (!qword_27D0A0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0500);
  }

  return result;
}

unint64_t sub_2239A4048()
{
  result = qword_27D0A0508;
  if (!qword_27D0A0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0508);
  }

  return result;
}

unint64_t sub_2239A40A0()
{
  result = qword_27D0A0510;
  if (!qword_27D0A0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0510);
  }

  return result;
}

unint64_t sub_2239A40F8()
{
  result = qword_27D0A0518;
  if (!qword_27D0A0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0518);
  }

  return result;
}

unint64_t sub_2239A4150()
{
  result = qword_27D0A0520;
  if (!qword_27D0A0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0520);
  }

  return result;
}

unint64_t sub_2239A41A8()
{
  result = qword_27D0A0528;
  if (!qword_27D0A0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0528);
  }

  return result;
}

unint64_t sub_2239A4200()
{
  result = qword_27D0A0530;
  if (!qword_27D0A0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0530);
  }

  return result;
}

unint64_t sub_2239A4258()
{
  result = qword_27D0A0538;
  if (!qword_27D0A0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0538);
  }

  return result;
}

unint64_t sub_2239A42B0()
{
  result = qword_27D0A0540;
  if (!qword_27D0A0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0540);
  }

  return result;
}

unint64_t sub_2239A4308()
{
  result = qword_27D0A0548;
  if (!qword_27D0A0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0548);
  }

  return result;
}

unint64_t sub_2239A4360()
{
  result = qword_27D0A0550;
  if (!qword_27D0A0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0550);
  }

  return result;
}

unint64_t sub_2239A43B8()
{
  result = qword_27D0A0558;
  if (!qword_27D0A0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0558);
  }

  return result;
}

unint64_t sub_2239A4410()
{
  result = qword_27D0A0560;
  if (!qword_27D0A0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0560);
  }

  return result;
}

unint64_t sub_2239A4468()
{
  result = qword_27D0A0568;
  if (!qword_27D0A0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0568);
  }

  return result;
}

unint64_t sub_2239A44C0()
{
  result = qword_27D0A0570;
  if (!qword_27D0A0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0570);
  }

  return result;
}

uint64_t sub_2239A4514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_2239B3958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953393013 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    return 6;
  }

  else
  {
    v6 = sub_2239B3958();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_2239A47C0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399E804(a1);
    if (v3)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  CommonConfigFields.init(dict:)(a1, &v123);
  if (v3)
  {

    return;
  }

  v7 = v123;
  v8 = v124;
  v119 = v125;
  v120 = v126;
  v121 = v127;
  v122 = v128;
  v129 = BYTE2(v123);
  if (a2)
  {
    v9 = 259;
  }

  else
  {
    v9 = 3;
  }

  v10 = sub_22397B988(1, a1, v9);
  v12 = v11;
  v13 = v10;
  v14 = sub_2239B0D94(v10, v11);
  if ((v14 & 0x10000) != 0)
  {

    v123 = 0;
    v124 = 0xE000000000000000;
    sub_2239B3678();
    v19 = "No summaries section found!";
    v20 = 0xD000000000000033;
LABEL_13:
    MEMORY[0x223DEE030](v20, v19 | 0x8000000000000000);
    MEMORY[0x223DEE030](v13, v12);

    v21 = v123;
    v22 = v124;
    sub_223973AD8();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = v22;
    *(v23 + 16) = 1;
    swift_willThrow();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_14;
  }

  v107 = v14;

  v13 = sub_22397B988(0, a1, v9);
  v12 = v15;
  v16 = sub_2239B1DD8(v13, v15);
  if ((v16 & 0x100000000) != 0)
  {

    v123 = 0;
    v124 = 0xE000000000000000;
    sub_2239B3678();
    v19 = "ue. AudioEventType=";
    v20 = 0xD00000000000003BLL;
    goto LABEL_13;
  }

  v106 = v16;

  sub_22397B9B8(11, a1);
  v18 = v17;
  v105 = v7;
  v31 = sub_22397BBE8(14, a1, v9);
  sub_223984678(v31, a2 & 1, 0xD000000000000013, 0x80000002239B9520);
  v118 = v31;
  v32 = sub_22397B988(13, a1, v9);
  v117 = v33;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B5BE0;
  v104 = v34;
  *(inited + 32) = v34;
  *(inited + 40) = v117;

  sub_223984678(inited, a2 & 1, 0x695474757074756FLL, 0xEF646C656946656DLL);
  swift_setDeallocating();
  sub_22398ABEC(inited + 32);
  *(&v116 + 1) = sub_22399CF8C(8, a1, v9);
  if (*(&v116 + 1))
  {

    sub_223984678(v36, a2 & 1, 0x6E696E6E75527369, 0xEF73646C65694667);
  }

  v37 = sub_22399CEB8(9, a1);
  if (v38)
  {
    *&v116 = sub_22398455C(v37, v38);
  }

  else
  {
    *&v116 = 0;
  }

  if (v116 == 0)
  {

    sub_223973AD8();
    swift_allocError();
    *v39 = 0xD000000000000041;
    *(v39 + 8) = 0x80000002239BAEA0;
    v24 = 1;
    *(v39 + 16) = 1;
    swift_willThrow();
    *&v116 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 1;
    v26 = 1;
    v27 = 1;
    goto LABEL_14;
  }

  v115 = sub_22399CF8C(2, a1, v9);
  if (v115)
  {

    sub_223984678(v40, a2 & 1, 0xD000000000000018, 0x80000002239B9420);
  }

  v102 = sub_22399CFDC(10, a1, v9);
  if (!v102)
  {
LABEL_44:
    v114 = 0;
LABEL_60:
    v103 = sub_22399CF74(6, a1, v9);
    v101 = sub_22399CF74(7, a1, v9);
    v108 = sub_22397BAB4(3, a1);
    v61 = *(v108 + 16);
    v93 = MEMORY[0x277D84F90];
    if (v61)
    {
      v62 = sub_2239A60BC(v61, 0);
      v111 = sub_2239A6D70(&v123, v62 + 4, v61, v108);

      sub_22396D730();
      if (v111 == v61)
      {
LABEL_64:
        sub_223984678(v62, a2 & 1, 0x56746C7561666564, 0xED00007365756C61);

        v112 = Dictionary<>.asSimpleType()(v108);
        if (!v112)
        {
LABEL_79:

          v82 = sub_2239B30E8();
          v84 = v83;
          sub_223973AD8();
          swift_allocError();
          *v85 = v82;
          *(v85 + 8) = v84;
          *(v85 + 16) = 5;
          swift_willThrow();

          v29 = 0;
          v24 = 1;
          v25 = 1;
          v26 = 1;
          v27 = 1;
          v28 = 1;
          v30 = 1;
          goto LABEL_14;
        }

        v109 = sub_22399CF8C(5, a1, v9);
        v63 = sub_22399CFB4(15, a1, v9);

        if (!v63)
        {
          v63 = sub_223974468(MEMORY[0x277D84F90]);
        }

        v99 = Dictionary<>.asSimpleType()(v63);
        if (v99)
        {

          v64 = sub_22399139C(&unk_2836FC788);
          sub_22398ABEC(&unk_2836FC7A8);

          v66 = sub_2239A5734(v65, v64);
          v67 = MEMORY[0x277D84F90];
          if (v115)
          {
            v68 = v115;
          }

          else
          {
            v68 = MEMORY[0x277D84F90];
          }

          swift_bridgeObjectRetain_n();
          v69 = sub_2239A6F28(v68, v66);

          if (*(&v116 + 1))
          {
            v70 = *(&v116 + 1);
          }

          else
          {
            v70 = v67;
          }

          v71 = sub_2239A6F28(v70, v69);

          v73 = sub_2239A5734(v72, v71);
          v74 = v73;
          v75 = *(v73 + 16);
          if (!v75 || (v93 = sub_2239A60BC(*(v73 + 16), 0), a2 = sub_2239A6C18(&v123, v93 + 4, v75, v74), , sub_22396D730(), a2 == v75))
          {
            v123 = v93;
            sub_2239A6140(&v123);

            v95 = v123;

            v77 = sub_2239A5734(v76, MEMORY[0x277D84FA0]);
            v78 = sub_2239A6F28(v68, v77);

            v79 = *(v78 + 16);
            if (v79)
            {
              v80 = sub_2239A60BC(*(v78 + 16), 0);
              v81 = sub_2239A6C18(&v123, v80 + 4, v79, v78);

              sub_22396D730();
              if (v81 != v79)
              {
                __break(1u);
                goto LABEL_79;
              }
            }

            else
            {
              v80 = MEMORY[0x277D84F90];
            }

            v123 = v80;
            sub_2239A6140(&v123);

            v91 = v123;
            v92 = v129;
            *a3 = v105;
            *(a3 + 2) = v92;
            *(a3 + 8) = v8;
            *(a3 + 16) = v119;
            *(a3 + 24) = v120;
            *(a3 + 32) = v121;
            *(a3 + 40) = v122;
            *(a3 + 48) = v107;
            *(a3 + 52) = v106;
            *(a3 + 56) = v18;
            *(a3 + 64) = v118;
            *(a3 + 72) = v104;
            *(a3 + 80) = v117;
            *(a3 + 88) = *(&v116 + 1);
            *(a3 + 96) = v116;
            *(a3 + 104) = v114;
            *(a3 + 112) = v109;
            *(a3 + 120) = v99;
            *(a3 + 128) = v112;
            *(a3 + 136) = v115;
            *(a3 + 144) = v95;
            *(a3 + 152) = v91;
            *(a3 + 160) = v103 & 1;
            *(a3 + 161) = v101 & 1;
            return;
          }

LABEL_86:
          __break(1u);

          __break(1u);
          return;
        }

        v87 = sub_2239B30E8();
        v89 = v88;

        sub_223973AD8();
        swift_allocError();
        *v90 = v87;
        *(v90 + 8) = v89;
        *(v90 + 16) = 5;
        swift_willThrow();
        v24 = 1;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        v30 = 1;
        goto LABEL_14;
      }

      __break(1u);
    }

    v62 = MEMORY[0x277D84F90];
    goto LABEL_64;
  }

  v41 = *(v102 + 16);
  if (v41)
  {
    v42 = sub_2239A60BC(*(v102 + 16), 0);
    v113 = sub_2239A6D70(&v123, v42 + 4, v41, v102);
    swift_bridgeObjectRetain_n();
    sub_22396D730();
    if (v113 != v41)
    {
      __break(1u);
      goto LABEL_44;
    }
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  sub_223984678(v42, a2 & 1, 0xD00000000000001ALL, 0x80000002239B94D0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0580, &unk_2239B8410);
  v43 = sub_2239B3778();
  v44 = 0;
  v45 = *(v102 + 64);
  v46 = 1 << *(v102 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v100 = v47 & v45;
  v110 = (v46 + 63) >> 6;
  v114 = v43;
  v94 = v43 + 64;
  if ((v47 & v45) == 0)
  {
LABEL_50:
    v49 = v44;
    while (1)
    {
      v44 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v44 >= v110)
      {

        goto LABEL_60;
      }

      v50 = *(v102 + 64 + 8 * v44);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        v100 = (v50 - 1) & v50;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  while (1)
  {
    v48 = __clz(__rbit64(v100));
    v100 &= v100 - 1;
LABEL_55:
    v98 = v48 | (v44 << 6);
    v51 = (*(v102 + 48) + 16 * v98);
    v96 = *v51;
    v97 = v51[1];
    v52 = (*(v102 + 56) + 16 * v98);
    v53 = *v52;
    v54 = v52[1];

    v55 = sub_2239B37B8();
    if (v55 >= 4)
    {
      break;
    }

    v56 = v55;

    *(v94 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v98;
    v57 = (v114[6] + 16 * v98);
    *v57 = v96;
    v57[1] = v97;
    *(v114[7] + v98) = v56;
    v58 = v114[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_85;
    }

    v114[2] = v60;
    if (!v100)
    {
      goto LABEL_50;
    }
  }

  sub_223973AD8();
  swift_allocError();
  *v86 = v53;
  *(v86 + 8) = v54;
  *(v86 + 16) = 5;
  swift_willThrow();

  v28 = 0;
  v29 = 0;
  v24 = 1;
  v25 = 1;
  v26 = 1;
  v27 = 1;
  v30 = 1;
LABEL_14:

  if (v24)
  {

    if (!v25)
    {
LABEL_16:
      if (!v26)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if (!v25)
  {
    goto LABEL_16;
  }

  if (!v26)
  {
LABEL_17:
    if (!v27)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (!v27)
  {
LABEL_18:
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:

  if (!v28)
  {
LABEL_19:
    if (!v29)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:

  if (!v29)
  {
LABEL_20:
    if (!v30)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_28:

  if (v30)
  {
LABEL_21:
  }
}

AudioAnalyticsBase::SummaryConfig::DataType_optional __swiftcall SummaryConfig.DataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2239A5734(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2239967B8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SummaryConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t SummaryConfig.outputTimeField.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

void *SummaryConfig.isRunningPredicate.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t SummaryConfig.DataType.rawValue.getter()
{
  v1 = 0x676E69727473;
  v2 = 0x74616F6C66;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 7630441;
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

unint64_t sub_2239A59E8(char a1)
{
  result = 0x6576456F69647541;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x56746C7561666564;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 7:
      result = 0x61726F6365447369;
      break;
    case 8:
      result = 0x6E696E6E75527369;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x695474757074756FLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_2239A5C04()
{
  result = qword_27D0A0578;
  if (!qword_27D0A0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0578);
  }

  return result;
}

uint64_t sub_2239A5C58()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239A5D04()
{
  *v0;
  *v0;
  *v0;
  sub_2239B3228();
}

uint64_t sub_2239A5D9C()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239A5E50(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0xE500000000000000;
  v5 = 0x74616F6C66;
  if (*v1 != 2)
  {
    v5 = 1819242338;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 7630441;
    v2 = 0xE300000000000000;
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

uint64_t sub_2239A5EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2239A5F00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryConfig.DataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummaryConfig.DataType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_2239A60BC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2239A6140(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2239A6EC8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2239A61AC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2239A61AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2239B3908();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2239B33E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2239A6374(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2239A62A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2239A62A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2239B3958(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2239A6374(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2239A6C04(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2239A6950((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2239B3958();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2239B3958();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_223982480(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_223982480((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2239A6950((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2239A6C04(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2239A6B78(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2239B3958(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2239A6950(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2239B3958() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2239B3958() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2239A6B78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2239A6C04(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2239A6C18(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2239A6D70(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2239A6EDC()
{
  v0 = sub_2239B37B8();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2239A6F28(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_2239967B8(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void sub_2239A6FA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 16) || (v5 = v4, v8 = sub_223981500(3u), (v9 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v8, &v72), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    sub_223973AD8();
    swift_allocError();
    *v28 = 0xD00000000000001BLL;
    *(v28 + 8) = 0x80000002239BAE00;
    *(v28 + 16) = 0;
    swift_willThrow();
    return;
  }

  v10 = v61;
  v11 = *(v61 + 16);
  if (!v11)
  {

    v13 = MEMORY[0x277D84F90];
    v29 = *(MEMORY[0x277D84F90] + 16);
    if (!v29)
    {
LABEL_30:

      return;
    }

    goto LABEL_15;
  }

  v60[0] = MEMORY[0x277D84F90];
  sub_223982910(0, v11, 0);
  if (*(v61 + 16))
  {
    v12 = 0;
    v13 = v60[0];
    v14 = v11 - 1;
    while (1)
    {
      v15 = *(v10 + 8 * v12 + 32);

      sub_2239A47C0(v16, (a4 & 1), &v72);
      if (v4)
      {

        return;
      }

      v65 = v76;
      v66 = v77;
      v62 = v73;
      v63 = v74;
      v64 = v75;
      v69 = v80;
      v70 = v81;
      v67 = v78;
      v68 = v79;
      v71 = v82;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      v61 = v72;
      v60[0] = v13;
      if (v18 >= v17 >> 1)
      {
        sub_223982910((v17 > 1), v18 + 1, 1);
        v13 = v60[0];
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 168 * v18;
      v20 = v61;
      v21 = v63;
      *(v19 + 48) = v62;
      *(v19 + 64) = v21;
      *(v19 + 32) = v20;
      v22 = v64;
      v23 = v65;
      v24 = v67;
      *(v19 + 112) = v66;
      *(v19 + 128) = v24;
      *(v19 + 80) = v22;
      *(v19 + 96) = v23;
      v25 = v68;
      v26 = v69;
      v27 = v70;
      *(v19 + 192) = v71;
      *(v19 + 160) = v26;
      *(v19 + 176) = v27;
      *(v19 + 144) = v25;
      if (v14 == v12)
      {
        break;
      }

      if (++v12 >= *(v10 + 16))
      {
        goto LABEL_32;
      }
    }

    v5 = 0;

    v29 = *(v13 + 16);
    if (!v29)
    {
      goto LABEL_30;
    }

LABEL_15:
    v30 = 0;
    v31 = MEMORY[0x277D84F90];
    v32 = 32;
LABEL_16:
    v33 = v32;
    v34 = v32 + 168 * v30;
    v35 = v30;
    while (v35 < *(v13 + 16))
    {
      v36 = *(v13 + v34);
      v37 = *(v13 + v34 + 32);
      v73 = *(v13 + v34 + 16);
      v74 = v37;
      v72 = v36;
      v38 = *(v13 + v34 + 48);
      v39 = *(v13 + v34 + 64);
      v40 = *(v13 + v34 + 96);
      v77 = *(v13 + v34 + 80);
      v78 = v40;
      v75 = v38;
      v76 = v39;
      v41 = *(v13 + v34 + 112);
      v42 = *(v13 + v34 + 128);
      v43 = *(v13 + v34 + 144);
      v82 = *(v13 + v34 + 160);
      v80 = v42;
      v81 = v43;
      v79 = v41;
      v60[3] = &type metadata for SummaryConfig;
      v60[4] = &protocol witness table for SummaryConfig;
      v60[0] = swift_allocObject();
      memmove((v60[0] + 16), (v13 + v34), 0xA2uLL);
      sub_2239A7420(&v72, &v61);
      sub_2239A7420(&v72, &v61);
      v44 = sub_223984164(v60, a2, a3);
      if (v5)
      {

        sub_2239A7458(&v72);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);

        return;
      }

      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      if (v45)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_223982910(0, *(v31 + 16) + 1, 1);
          v31 = v83;
        }

        v48 = *(v31 + 16);
        v47 = *(v31 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_223982910((v47 > 1), v48 + 1, 1);
          v31 = v83;
        }

        v30 = v35 + 1;
        *(v31 + 16) = v48 + 1;
        v49 = v31 + 168 * v48;
        v50 = v72;
        v51 = v74;
        *(v49 + 48) = v73;
        *(v49 + 64) = v51;
        *(v49 + 32) = v50;
        v52 = v75;
        v53 = v76;
        v54 = v78;
        *(v49 + 112) = v77;
        *(v49 + 128) = v54;
        *(v49 + 80) = v52;
        *(v49 + 96) = v53;
        v55 = v79;
        v56 = v80;
        v57 = v81;
        *(v49 + 192) = v82;
        *(v49 + 160) = v56;
        *(v49 + 176) = v57;
        *(v49 + 144) = v55;
        v32 = v33;
        if (v29 - 1 != v35)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      ++v35;
      sub_2239A7458(&v72);
      v34 += 168;
      if (v29 == v35)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_33;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_2239A7488(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399EB08(a1);
    if (v3)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  CommonConfigFields.init(dict:)(a1, &v57);
  if (v3)
  {

    return;
  }

  v7 = v57;
  v40 = *(&v57 + 1);
  v65 = *(&v58 + 1);
  v41 = v58;
  v38 = *(&v59 + 1);
  v39 = v59;
  v64 = BYTE2(v57);
  v8 = sub_22397BD50(5u, a1);
  v10 = v9;

  v11 = sub_2239B37B8();

  if (v11 >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  sub_2239729D8(a2 & 1, 0xD00000000000001BLL, 0x80000002239BAF30, v8, v10, v12, &v50);

  v13 = v50;
  if (v50 == 3)
  {

    sub_2239A8A54(&v57);
    v14 = v62;
    a3[4] = v61;
    a3[5] = v14;
    a3[6] = *v63;
    *(a3 + 105) = *&v63[9];
    v15 = v58;
    *a3 = v57;
    a3[1] = v15;
    v16 = v60;
    a3[2] = v59;
    a3[3] = v16;
    return;
  }

  if (!v50)
  {
    v17 = v7;
LABEL_15:
    v37 = 0xE600000000000000;
    v19 = sub_2239B3958();

    if (v19)
    {
      v18 = 0x646573756E75;
    }

    else
    {
      v18 = sub_22397BD50(2u, a1);
      v37 = v20;
    }

    goto LABEL_18;
  }

  v17 = v7;
  if (v50 != 1)
  {
    goto LABEL_15;
  }

  v18 = 0x646573756E75;
  v37 = 0xE600000000000000;

LABEL_18:
  v21 = sub_22397BD50(3u, a1);
  v36 = v22;
  sub_22397BD50(4u, a1);
  v35 = v23;
  v33 = sub_22397BD50(1u, a1);
  v34 = v24;
  sub_22397BD50(0, a1);
  v32 = v18;

  v25 = sub_2239B37B8();

  v26 = v65;
  if (v25 >= 4)
  {
    sub_223973AD8();
    swift_allocError();
    *v30 = 0xD000000000000029;
    *(v30 + 8) = 0x80000002239BAF50;
    *(v30 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    LOWORD(v43) = v17;
    v31 = v64;
    BYTE2(v43) = v64;
    *(&v43 + 1) = v40;
    *&v44 = v41;
    *(&v44 + 1) = v65;
    *&v45 = v39;
    *(&v45 + 1) = v38;
    LOBYTE(v46) = v13;
    *(&v46 + 1) = v21;
    *&v47 = v36;
    *(&v47 + 1) = v32;
    v48 = v37;
    *v49 = v35;
    *&v49[8] = v33;
    *&v49[16] = v34;
    v49[24] = v25;
    v52 = v45;
    v53 = v46;
    *(v56 + 9) = *&v49[9];
    v55 = v37;
    v56[0] = *v49;
    v54 = v47;
    v50 = v43;
    v51 = v44;
    nullsub_1(&v50);
    v27 = v55;
    a3[4] = v54;
    a3[5] = v27;
    a3[6] = v56[0];
    *(a3 + 105) = *(v56 + 9);
    v28 = v51;
    *a3 = v50;
    a3[1] = v28;
    v29 = v53;
    a3[2] = v52;
    a3[3] = v29;
    LOWORD(v57) = v17;
    BYTE2(v57) = v31;
    *(&v57 + 1) = v40;
    *&v58 = v41;
    *(&v58 + 1) = v26;
    *&v59 = v39;
    *(&v59 + 1) = v38;
    LOBYTE(v60) = v13;
    *(&v60 + 1) = v21;
    *&v61 = v36;
    *(&v61 + 1) = v32;
    v62 = v37;
    *v63 = v35;
    *&v63[8] = v33;
    *&v63[16] = v34;
    v63[24] = v25;
    sub_2239A89EC(&v43, v42);
    sub_2239A8A24(&v57);
  }
}

AudioAnalyticsBase::SystemMonitorConfig::MonitorType_optional __swiftcall SystemMonitorConfig.MonitorType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

AudioAnalyticsBase::SystemMonitorConfig::DataType_optional __swiftcall SystemMonitorConfig.DataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SystemMonitorConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t SystemMonitorConfig.name.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t SystemMonitorConfig.domain.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t SystemMonitorConfig.notification.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t SystemMonitorConfig.defaultValue.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t SystemMonitorConfig.DataType.rawValue.getter()
{
  v1 = 0x676E69727473;
  v2 = 0x656C62756F64;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 7630441;
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

uint64_t sub_2239A7D00()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239A7DAC()
{
  *v0;
  *v0;
  *v0;
  sub_2239B3228();
}

uint64_t sub_2239A7E44()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239A7EF8(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0xE600000000000000;
  v5 = 0x656C62756F64;
  if (*v1 != 2)
  {
    v5 = 1819242338;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 7630441;
    v2 = 0xE300000000000000;
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

uint64_t SystemMonitorConfig.MonitorType.rawValue.getter()
{
  v1 = 0x796669746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746C7561666564;
  }
}

unint64_t sub_2239A7FB8()
{
  result = qword_281336858;
  if (!qword_281336858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336858);
  }

  return result;
}

uint64_t sub_2239A800C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x796669746F6ELL;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x796669746F6ELL;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

unint64_t sub_2239A8104()
{
  result = qword_281336860;
  if (!qword_281336860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336860);
  }

  return result;
}

uint64_t sub_2239A8158()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239A81F4()
{
  *v0;
  *v0;
  sub_2239B3228();
}

uint64_t sub_2239A827C()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239A8320(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796669746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2239A83A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2239A83EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2239A847C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v71 = a3;
  if (!*(a1 + 16) || (v7 = sub_223981500(6u), (v8 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v7, &v64), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), result = swift_dynamicCast(), (result & 1) == 0))
  {
    v10 = 0x80000002239BAF10;
    sub_223973AD8();
    swift_allocError();
    *v24 = 0xD00000000000001FLL;
    *(v24 + 8) = 0x80000002239BAF10;
    *(v24 + 16) = 0;
    swift_willThrow();
    return v10;
  }

  v10 = *&v62[0];
  v11 = *(*&v62[0] + 16);
  if (v11)
  {
    v12 = 0;
    v47 = v11 - 1;
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = v12;
      while (1)
      {
        if (v14 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v15 = *(v10 + 32 + 8 * v14);

        sub_2239A7488(v16, a4 & 1, &v64);
        if (v4)
        {

          return v10;
        }

        v62[4] = v68;
        v62[5] = v69;
        v63[0] = v70[0];
        *(v63 + 9) = *(v70 + 9);
        v62[0] = v64;
        v62[1] = v65;
        v62[2] = v66;
        v62[3] = v67;
        if (sub_2239A896C(v62) != 1)
        {
          break;
        }

        ++v14;
        v59 = v68;
        v60 = v69;
        v61[0] = v70[0];
        *(v61 + 9) = *(v70 + 9);
        v55 = v64;
        v56 = v65;
        v57 = v66;
        v58 = v67;
        result = sub_2239A8984(&v55);
        if (v11 == v14)
        {
          goto LABEL_21;
        }
      }

      v59 = v68;
      v60 = v69;
      v61[0] = v70[0];
      *(v61 + 9) = *(v70 + 9);
      v55 = v64;
      v56 = v65;
      v57 = v66;
      v58 = v67;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223982028(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v46 = v11;
        v22 = v18 + 1;
        v23 = *(v13 + 16);
        result = sub_223982028((v17 > 1), v18 + 1, 1, v13);
        v18 = v23;
        v19 = v22;
        v11 = v46;
        v13 = result;
      }

      v12 = v14 + 1;
      v52 = v59;
      v53 = v60;
      *v54 = v61[0];
      *&v54[9] = *(v61 + 9);
      v50 = v57;
      v51 = v58;
      v20 = v55;
      v49 = v56;
      *(v13 + 16) = v19;
      v21 = (v13 + (v18 << 7));
      v21[4] = v50;
      v21[5] = v51;
      v21[3] = v49;
      *(v21 + 137) = *&v54[9];
      v21[7] = v53;
      v21[8] = *v54;
      v21[6] = v52;
      v21[2] = v20;
    }

    while (v47 != v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

LABEL_21:

  v25 = *(v13 + 16);
  if (!v25)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_37:

    return v10;
  }

  v26 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_23:
  v27 = (v26 << 7) | 0x20;
  v28 = v26;
  while (v28 < *(v13 + 16))
  {
    v29 = *(v13 + v27);
    v30 = *(v13 + v27 + 16);
    v31 = *(v13 + v27 + 48);
    v66 = *(v13 + v27 + 32);
    v67 = v31;
    v64 = v29;
    v65 = v30;
    v32 = *(v13 + v27 + 64);
    v33 = *(v13 + v27 + 80);
    v34 = *(v13 + v27 + 96);
    *(v70 + 9) = *(v13 + v27 + 105);
    v69 = v33;
    v70[0] = v34;
    v68 = v32;
    *(&v56 + 1) = &type metadata for SystemMonitorConfig;
    *&v57 = &protocol witness table for SystemMonitorConfig;
    *&v55 = swift_allocObject();
    memmove((v55 + 16), (v13 + v27), 0x79uLL);
    sub_2239A89EC(&v64, v62);
    sub_2239A89EC(&v64, v62);
    v35 = sub_223984164(&v55, a2, v71);
    if (v4)
    {

      sub_2239A8A24(&v64);
      __swift_destroy_boxed_opaque_existential_0Tm(&v55);

      return v10;
    }

    v36 = v35;
    __swift_destroy_boxed_opaque_existential_0Tm(&v55);
    if (v36)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223982930(0, *(v10 + 16) + 1, 1);
      }

      v38 = *(v10 + 16);
      v37 = *(v10 + 24);
      if (v38 >= v37 >> 1)
      {
        result = sub_223982930((v37 > 1), v38 + 1, 1);
      }

      v26 = v28 + 1;
      *(v10 + 16) = v38 + 1;
      v39 = (v10 + (v38 << 7));
      v40 = v64;
      v41 = v65;
      v42 = v67;
      v39[4] = v66;
      v39[5] = v42;
      v39[2] = v40;
      v39[3] = v41;
      v43 = v68;
      v44 = v69;
      v45 = v70[0];
      *(v39 + 137) = *(v70 + 9);
      v39[7] = v44;
      v39[8] = v45;
      v39[6] = v43;
      if (v25 - 1 != v28)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    ++v28;
    result = sub_2239A8A24(&v64);
    v27 += 128;
    if (v25 == v28)
    {
      goto LABEL_37;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2239A896C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2239A8984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0588, &qword_2239B8640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2239A8A54(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t SystemUtility.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v7 = sub_2239B3048();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SystemUtility.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v4 = sub_2239B3048();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t SystemUtility.setSysctl<A>(_:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(a4 - 8) + 64);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v15[2] = a4;
  v15[3] = v10;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v9;
  v16 = v4;
  sub_2239A8E44(a3, sub_2239A8E18, v15, a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v12);
  swift_beginAccess();
  v13 = *v11;

  return v13;
}

void sub_2239A8C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v8 = sub_2239B31E8();
  LODWORD(a5) = sysctlbyname((v8 + 32), 0, 0, a1, a5);

  swift_beginAccess();
  *(a2 + 16) = a5;
  if (a5 != sub_2239B3068())
  {

    v9 = sub_2239B3028();
    v10 = sub_2239B34E8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 67109379;
      swift_beginAccess();
      *(v11 + 4) = *(a2 + 16);

      *(v11 + 8) = 2081;
      v13 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v15 = sub_223973B2C(v13, v14, &v16);

      *(v11 + 10) = v15;
      _os_log_impl(&dword_22395C000, v9, v10, "An error occurred in sysctlbyname { returnCode=%d, %{private}s }", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x223DEF1D0](v12, -1, -1);
      MEMORY[0x223DEF1D0](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2239A8E18(void *a1)
{
  v2 = v1[2];
  v3 = v1[7];
  sub_2239A8C5C(a1, v1[3], v1[4], v1[5], v1[6]);
}

uint64_t sub_2239A8E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

Swift::Int32 __swiftcall SystemUtility.pgrep(_:allUsers:)(Swift::String _, Swift::Bool allUsers)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(_._object) & 0xF;
  if ((_._object & 0x2000000000000000) == 0)
  {
    v2 = _._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v15 = sub_2239B3028();
    v16 = sub_2239B34F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22395C000, v15, v16, "pgrep failure. Zero-length process name provided.", v17, 2u);
      MEMORY[0x223DEF1D0](v17, -1, -1);
    }

    goto LABEL_41;
  }

  v4 = sub_2239A9D70(16);
  v6 = v5;
  v47 = v7;
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF78, &unk_2239B8670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B8660;
  *(inited + 32) = 0xE00000001;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  v48 = 0;
  v11 = sysctl((inited + 32), 3u, 0, &v48, 0, 0);
  if (v11 != sub_2239B3068())
  {

    v18 = sub_2239B3028();
    v19 = sub_2239B34F8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v49 = v21;
      *v20 = 67109379;
      *(v20 + 4) = v11;
      *(v20 + 8) = 2081;
      v22 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v24 = sub_223973B2C(v22, v23, &v49);

      *(v20 + 10) = v24;
      _os_log_impl(&dword_22395C000, v18, v19, "pgrep failure: sysctl. Failed to get proc list buffer size. { returnCode=%d, %{private}s } ", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x223DEF1D0](v21, -1, -1);
      MEMORY[0x223DEF1D0](v20, -1, -1);
    }

    swift_setDeallocating();
    goto LABEL_42;
  }

  if (v48 < -647)
  {
LABEL_46:
    __break(1u);
  }

  if (v48 < 648)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = v48 / 648;
    type metadata accessor for kinfo_proc(0);
    v13 = sub_2239B33E8();
    *(v13 + 16) = v12;
    v14 = 32;
    do
    {
      bzero((v13 + v14), 0x288uLL);
      v14 += 648;
      --v12;
    }

    while (v12);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_223982584(0, 6, 0, inited);
  }

  v11 = sysctl((inited + 32), 3u, (v13 + 32), &v48, 0, 0);
  if (v11 != sub_2239B3068())
  {

    v35 = sub_2239B3028();
    v36 = sub_2239B34F8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v49 = v38;
      *v37 = 67109379;
      *(v37 + 4) = v11;
      *(v37 + 8) = 2081;
      v39 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v41 = sub_223973B2C(v39, v40, &v49);

      *(v37 + 10) = v41;
      _os_log_impl(&dword_22395C000, v35, v36, "pgrep failure: sysctl. Failed to get proc list. { returnCode=%d, %{private}s } ", v37, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x223DEF1D0](v38, -1, -1);
      MEMORY[0x223DEF1D0](v37, -1, -1);
    }

    goto LABEL_42;
  }

  v46 = v9;
  v25 = geteuid();
  v26 = *(v13 + 16);
  if (!v26)
  {
LABEL_40:

LABEL_41:
    v11 = -1;
    goto LABEL_42;
  }

  v27 = v25;
  v28 = 0;
  v44 = v6 >> 16;
  v45 = v4 >> 16;
  v29 = v13 + 275;
  while (1)
  {
    if (v28 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v11 = *(v29 - 203);
    if (v27 != *(v29 + 177) && !allUsers)
    {
      goto LABEL_23;
    }

    v31 = *(v29 + 16);
    v49 = *v29;
    v50 = v31;
    v32 = sub_2239B3278();
    if (v11 < 1)
    {

      goto LABEL_23;
    }

    if ((v33 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v33) & 0xF;
    }

    else
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v32 == v47 && v33 == v46 && !v45 && v34 == v44)
    {

      goto LABEL_44;
    }

    v30 = sub_2239B3918();

    if (v30)
    {
      break;
    }

LABEL_23:
    ++v28;
    v29 += 648;
    if (v26 == v28)
    {
      goto LABEL_40;
    }
  }

LABEL_44:

LABEL_42:
  v42 = *MEMORY[0x277D85DE8];
  return v11;
}

Swift::Int32 __swiftcall SystemUtility.pkill(_:signal:)(Swift::String _, Swift::Int32 signal)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = SystemUtility.pgrep(_:allUsers:)(_, 1);
  if (v5 < 1)
  {

    v14 = sub_2239B3028();
    v15 = sub_2239B34F8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_223973B2C(countAndFlagsBits, object, &v19);
      _os_log_impl(&dword_22395C000, v14, v15, "Unable to retrieve pid for process. { procName=%{private}s }", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DEF1D0](v17, -1, -1);
      MEMORY[0x223DEF1D0](v16, -1, -1);
    }

    return -1;
  }

  else
  {
    v6 = kill(v5, signal);
    if (v6 != sub_2239B3068())
    {
      v7 = sub_2239B3028();
      v8 = sub_2239B34F8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 67109379;
        *(v9 + 4) = v6;
        *(v9 + 8) = 2081;
        v11 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
        v13 = sub_223973B2C(v11, v12, &v19);

        *(v9 + 10) = v13;
        _os_log_impl(&dword_22395C000, v7, v8, "Failed to kill process { returnCode=%d, %{private}s }", v9, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        MEMORY[0x223DEF1D0](v10, -1, -1);
        MEMORY[0x223DEF1D0](v9, -1, -1);
      }
    }
  }

  return v6;
}

Swift::Int32_optional __swiftcall SystemUtility.spawn(cmd:)(Swift::OpaquePointer cmd)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v41[0] = 0;
  v2 = posix_spawnattr_init(v41);
  if (v2 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v2;
    *(v13 + 8) = 2081;
    v15 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v17 = sub_223973B2C(v15, v16, &v40);

    *(v13 + 10) = v17;
    v18 = "posix_spawnattr_init failed. { returnCode=%d, %{private}s }";
LABEL_21:
    _os_log_impl(&dword_22395C000, v11, v12, v18, v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223DEF1D0](v14, -1, -1);
    MEMORY[0x223DEF1D0](v13, -1, -1);
    goto LABEL_22;
  }

  v39 = 0;
  sigemptyset(&v39);
  v3 = posix_spawnattr_setsigmask(v41, &v39);
  if (v3 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v3;
    *(v13 + 8) = 2081;
    v19 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v21 = sub_223973B2C(v19, v20, &v40);

    *(v13 + 10) = v21;
    v18 = "posix_spawnattr_setsigmask failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v38 = 0;
  sigfillset(&v38);
  v4 = posix_spawnattr_setsigdefault(v41, &v38);
  if (v4 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v4;
    *(v13 + 8) = 2081;
    v22 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v24 = sub_223973B2C(v22, v23, &v40);

    *(v13 + 10) = v24;
    v18 = "posix_spawnattr_setsigdefault failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v37 = 0;
  v5 = posix_spawnattr_getflags(v41, &v37);
  if (v5 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v5;
    *(v13 + 8) = 2081;
    v25 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v27 = sub_223973B2C(v25, v26, &v40);

    *(v13 + 10) = v27;
    v18 = "posix_spawnattr_getflags failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v37 |= 0xCu;
  v6 = posix_spawnattr_setflags(v41, v37);
  if (v6 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v6;
    *(v13 + 8) = 2081;
    v28 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v30 = sub_223973B2C(v28, v29, &v40);

    *(v13 + 10) = v30;
    v18 = "posix_spawnattr_setflags failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v36 = 0;
  v7 = sub_2239A9E0C(cmd._rawValue);
  if (!*(v7 + 2))
  {
    __break(1u);
  }

  v8 = posix_spawnp(&v36, *(v7 + 4), 0, v41, v7 + 4, 0);

  if (v8 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v40 = v14;
      *v13 = 67109379;
      *(v13 + 4) = v8;
      *(v13 + 8) = 2081;
      v31 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v33 = sub_223973B2C(v31, v32, &v40);

      *(v13 + 10) = v33;
      v18 = "posix_spawnp failed. { returnCode=%d, %{private}s }";
      goto LABEL_21;
    }

LABEL_22:

    v10 = 0;
    v9 = 1;
    goto LABEL_23;
  }

  v9 = 0;
  v10 = v36;
LABEL_23:
  LOBYTE(v41[0]) = v9;
  v34 = *MEMORY[0x277D85DE8];
  return (v10 | (v9 << 32));
}

char *sub_2239A9C44@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t SystemUtility.deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SystemUtility.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2239A9D70(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2239B3238();

    return sub_2239B32F8();
  }

  return result;
}

char *sub_2239A9E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_223982AA0(0, v1, 0);
    v2 = v18;
    v4 = (a1 + 40);
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v4 - 1);
        v16 = v5 & 0xFFFFFFFFFFFFFFLL;

        v7 = __s1;
      }

      else
      {
        if ((*(v4 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v6 = *v4;

        v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      v17 = strdup(v7);
LABEL_9:

      v8 = v17;
      v18 = v2;
      v10 = *(v2 + 2);
      v9 = *(v2 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_223982AA0((v9 > 1), v10 + 1, 1);
        v2 = v18;
      }

      *(v2 + 2) = v10 + 1;
      *&v2[8 * v10 + 32] = v8;
      v4 += 2;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }

    v11 = *v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0590, &qword_2239B86A8);
    sub_2239B3668();
    goto LABEL_9;
  }

LABEL_14:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_223982688(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_223982688((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  *&v2[8 * v13 + 32] = 0;
  return v2;
}

uint64_t type metadata accessor for SystemUtility()
{
  result = qword_2813365A8;
  if (!qword_2813365A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239AA038()
{
  result = sub_2239B3048();
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

uint64_t sub_2239AA0F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399EE1C(a1);
    if (v3)
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  CommonConfigFields.init(dict:)(a1, &v42);
  if (v3)
  {
  }

  v49 = v42;
  v8 = v45;
  v41 = v44;
  v10 = v46;
  v9 = v47;
  v11 = v48;
  v50 = v43;
  v12 = sub_22397F96C(a1);
  v13 = v11;

  result = v41;
  v35 = a3;
  v37 = v8;
  v38 = v10;
  v39 = v9;
  v14 = *(v12 + 16);
  v15 = v12;
  if (v14)
  {
    v16 = 0;
    v17 = v12 + 40;
    v40 = *(v12 + 16);
    v32 = v14 - 1;
    v18 = MEMORY[0x277D84F90];
    v33 = v12 + 40;
    v34 = v13;
    do
    {
      v36 = v18;
      v19 = (v17 + 16 * v16);
      v20 = v16;
      while (1)
      {
        if (v20 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v22 = *(v19 - 1);
        v21 = *v19;
        v16 = v20 + 1;

        v23 = sub_2239B37B8();
        if (v23 < 4)
        {
          break;
        }

        if ((a2 & 1) == 0)
        {

          sub_223973AD8();
          swift_allocError();
          *v30 = v22;
          *(v30 + 8) = v21;
          *(v30 + 16) = 5;
          swift_willThrow();
        }

        v19 += 2;
        ++v20;
        v24 = v41;
        v25 = v49;
        if (v40 == v16)
        {
          v13 = v34;
          v18 = v36;
          goto LABEL_24;
        }
      }

      v26 = v23;

      v18 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22398278C(0, *(v36 + 16) + 1, 1, v36);
        v18 = result;
      }

      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_22398278C((v27 > 1), v28 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 16) = v28 + 1;
      *(v18 + v28 + 32) = v26;
      v17 = v33;
      v29 = v32 == v20;
      v24 = v41;
      v25 = v49;
      v13 = v34;
    }

    while (!v29);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v24 = v41;
    v25 = v49;
  }

LABEL_24:

  v31 = v50;
  *v35 = v18;
  *(v35 + 8) = v25;
  *(v35 + 10) = v31;
  *(v35 + 16) = v24;
  *(v35 + 24) = v37;
  *(v35 + 32) = v38;
  *(v35 + 40) = v39;
  *(v35 + 48) = v13;
  return result;
}

AudioAnalyticsBase::TailspinConfig::CaseName_optional __swiftcall TailspinConfig.CaseName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TailspinConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *(v1 + 8);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 TailspinConfig.commonFields.setter(__int16 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 5);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);

  *(v1 + 8) = v3;
  *(v1 + 10) = v4;
  result = *(a1 + 4);
  v12 = *(a1 + 12);
  *(v1 + 16) = result;
  *(v1 + 32) = v12;
  *(v1 + 48) = v5;
  return result;
}

uint64_t TailspinConfig.CaseName.rawValue.getter()
{
  v1 = 0x64616F6C7265766FLL;
  v2 = 0x73747469726973;
  if (*v0 != 2)
  {
    v2 = 0x65646F63656D6974;
  }

  if (*v0)
  {
    v1 = 0x6573616870;
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

unint64_t sub_2239AA638()
{
  result = qword_27D0A0598;
  if (!qword_27D0A0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0598);
  }

  return result;
}

uint64_t sub_2239AA68C()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239AA758()
{
  *v0;
  *v0;
  *v0;
  sub_2239B3228();
}

uint64_t sub_2239AA810()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239AA8E4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64616F6C7265766FLL;
  v4 = 0xE700000000000000;
  v5 = 0x73747469726973;
  if (*v1 != 2)
  {
    v5 = 0x65646F63656D6974;
    v4 = 0xED00006575737349;
  }

  if (*v1)
  {
    v3 = 0x6573616870;
    v2 = 0xE500000000000000;
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

unint64_t sub_2239AA970()
{
  result = qword_27D0A05A0;
  if (!qword_27D0A05A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A05A8, &qword_2239B8750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05A0);
  }

  return result;
}

uint64_t sub_2239AA9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *(v1 + 8);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2239AAA84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2239AAACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2239AAB38(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a1[2] || (v6 = v5, v4 = a1, v8 = sub_223981500(8u), (v9 & 1) == 0) || (sub_22395E644(v4[7] + 32 * v8, &v51), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    sub_223973AD8();
    swift_allocError();
    *v24 = 0xD00000000000001ALL;
    *(v24 + 8) = 0x80000002239BAFB0;
    *(v24 + 16) = 0;
    swift_willThrow();
    return v4;
  }

  v10 = v47;
  v11 = *(v47 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x277D84F90];
    v25 = *(MEMORY[0x277D84F90] + 16);
    if (!v25)
    {
LABEL_31:
      v4 = MEMORY[0x277D84F90];
LABEL_32:

      return v4;
    }

    goto LABEL_16;
  }

  v46[0] = MEMORY[0x277D84F90];
  v4 = v46;
  result = sub_2239829B0(0, v11, 0);
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v46[0];
    v15 = v11 - 1;
    while (1)
    {
      v16 = *(v10 + 8 * v13 + 32);

      result = sub_2239AA0F4(v17, a4 & 1, &v51);
      if (v5)
      {

        return v4;
      }

      v50 = v54;
      v48 = v52;
      v49 = v53;
      v47 = v51;
      v46[0] = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        v4 = v46;
        result = sub_2239829B0((v18 > 1), v19 + 1, 1);
        v14 = v46[0];
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 56 * v19;
      v21 = v47;
      v22 = v48;
      v23 = v49;
      *(v20 + 80) = v50;
      *(v20 + 48) = v22;
      *(v20 + 64) = v23;
      *(v20 + 32) = v21;
      if (v15 == v13)
      {
        break;
      }

      if (++v13 >= *(v10 + 16))
      {
        goto LABEL_34;
      }
    }

    v6 = 0;

    v25 = *(v14 + 16);
    if (!v25)
    {
      goto LABEL_31;
    }

LABEL_16:
    v26 = 0;
    v4 = MEMORY[0x277D84F90];
LABEL_17:
    v27 = 56 * v26 + 32;
    v28 = v26;
    while (v28 < *(v14 + 16))
    {
      v29 = *(v14 + v27);
      v30 = *(v14 + v27 + 16);
      v31 = *(v14 + v27 + 32);
      v54 = *(v14 + v27 + 48);
      v52 = v30;
      v53 = v31;
      v51 = v29;
      v46[3] = &type metadata for TailspinConfig;
      v46[4] = &protocol witness table for TailspinConfig;
      v32 = swift_allocObject();
      v46[0] = v32;
      v34 = *(v14 + v27 + 16);
      v33 = *(v14 + v27 + 32);
      v35 = *(v14 + v27);
      *(v32 + 64) = *(v14 + v27 + 48);
      *(v32 + 32) = v34;
      *(v32 + 48) = v33;
      *(v32 + 16) = v35;
      sub_2239AAF38(&v51, &v47);
      sub_2239AAF38(&v51, &v47);
      v36 = sub_223984164(v46, a2, a3);
      if (v6)
      {

        sub_2239AAF70(&v51);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);

        return v4;
      }

      v37 = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      if (v37)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v55 = v4;
        if ((result & 1) == 0)
        {
          result = sub_2239829B0(0, v4[2] + 1, 1);
          v4 = v55;
        }

        v39 = v4[2];
        v38 = v4[3];
        if (v39 >= v38 >> 1)
        {
          result = sub_2239829B0((v38 > 1), v39 + 1, 1);
          v4 = v55;
        }

        v26 = v28 + 1;
        v4[2] = v39 + 1;
        v40 = &v4[7 * v39];
        v41 = v51;
        v42 = v52;
        v43 = v53;
        v40[10] = v54;
        *(v40 + 3) = v42;
        *(v40 + 4) = v43;
        *(v40 + 2) = v41;
        if (v25 - 1 != v28)
        {
          goto LABEL_17;
        }

        goto LABEL_32;
      }

      ++v28;
      result = sub_2239AAF70(&v51);
      v27 += 56;
      if (v25 == v28)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

Swift::String __swiftcall Double.toDateString(_:)(Swift::String a1)
{
  v1 = sub_2239B2FC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v7 = sub_2239B3158();
  [v6 setDateFormat_];

  sub_2239B2F98();
  v8 = sub_2239B2F88();
  v9 = [v6 stringFromDate_];

  v10 = sub_2239B3188();
  v12 = v11;

  (*(v2 + 8))(v5, v1);
  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

AudioAnalyticsBase::TraceCode_optional __swiftcall TraceCode.init(rawValue:)(Swift::UInt32 rawValue)
{
  HIDWORD(v3) = rawValue - 4608;
  LODWORD(v3) = rawValue - 4608;
  v2 = v3 >> 2;
  if (v2 >= 0x12)
  {
    LOBYTE(v2) = 18;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2239AB200()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3A58();
  return sub_2239B3A78();
}

uint64_t sub_2239AB280()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3A58();
  return sub_2239B3A78();
}

unint64_t sub_2239AB318()
{
  result = qword_27D0A05B0;
  if (!qword_27D0A05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TraceCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2239AB4BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x7254746E64694469;
  v5 = 0xE900000000000079;
  if (a1 != 5)
  {
    v4 = 0x696C707041746F6ELL;
    v5 = 0xED0000656C626163;
  }

  v6 = 0x796C65726172;
  if (a1 != 3)
  {
    v6 = 0x656C62616E75;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737961776C61;
  if (a1 != 1)
  {
    v8 = 0x656D6974656D6F73;
    v7 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE600000000000000;
        if (v9 != 0x737961776C61)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE900000000000073;
        if (v9 != 0x656D6974656D6F73)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1701736302)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE900000000000079;
      if (v9 != 0x7254746E64694469)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xED0000656C626163;
      if (v9 != 0x696C707041746F6ELL)
      {
LABEL_39:
        v12 = sub_2239B3958();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x796C65726172)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x656C62616E75)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_2239AB6F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE400000000000000;
    v14 = 0xD000000000000011;
    v15 = 0x80000002239B9CC0;
    v16 = 0xE500000000000000;
    v17 = 0x7265776F70;
    if (a1 != 3)
    {
      v17 = 0x616D726F66726570;
      v16 = 0xEB0000000065636ELL;
    }

    if (a1 != 2)
    {
      v14 = v17;
      v15 = v16;
    }

    v18 = 0x7974697275636573;
    if (a1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v18 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v15;
    }
  }

  else
  {
    v3 = 0x4E65727574616566;
    v4 = 0xEA00000000007765;
    v5 = 0x6D65636E61686E65;
    v6 = 0xEB00000000746E65;
    if (a1 != 9)
    {
      v5 = 1802723700;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6C69626173556975;
    v8 = 0xEB00000000797469;
    v9 = 0x4273756F69726573;
    v10 = 0xEA00000000006775;
    if (a1 != 6)
    {
      v9 = 0x677542726568746FLL;
      v10 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v9;
      v8 = v10;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE800000000000000;
        if (v11 != 0x7974697275636573)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v19 = 0xE400000000000000;
        if (v11 != 1701736302)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_59;
    }

    if (a2 == 2)
    {
      v19 = 0x80000002239B9CC0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    if (a2 == 3)
    {
      v19 = 0xE500000000000000;
      if (v11 != 0x7265776F70)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    v20 = 0x616D726F66726570;
    v21 = 6644590;
    goto LABEL_52;
  }

  if (a2 <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v19 = 0xEA00000000006775;
        if (v11 != 0x4273756F69726573)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        if (v11 != 0x677542726568746FLL)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_59;
    }

    v20 = 0x6C69626173556975;
    v21 = 7959657;
LABEL_52:
    v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != v20)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (a2 == 8)
  {
    v19 = 0xEA00000000007765;
    if (v11 != 0x4E65727574616566)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (a2 == 9)
  {
    v20 = 0x6D65636E61686E65;
    v21 = 7630437;
    goto LABEL_52;
  }

  v19 = 0xE400000000000000;
  if (v11 != 1802723700)
  {
LABEL_61:
    v22 = sub_2239B3958();
    goto LABEL_62;
  }

LABEL_59:
  if (v12 != v19)
  {
    goto LABEL_61;
  }

  v22 = 1;
LABEL_62:

  return v22 & 1;
}