unint64_t sub_237ACD0EC(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237ACD14C(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_237C0909C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4);
    v11 = sub_237C0867C();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237ACD2D0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1936945004;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x4C746E65746E6F63;
          v7 = 0xEB0000000073736FLL;
          break;
        case 2:
          v8 = 0x736F4C656C797473;
          v7 = 0xE900000000000073;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x7963617275636361;
          break;
        case 4:
          v8 = 0x69746164696C6176;
          v7 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000237C16BD0;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x8000000237C16BF0;
          break;
        case 7:
          v8 = 0xD000000000000014;
          v7 = 0x8000000237C16C10;
          break;
        case 8:
          v8 = 0x456D756D6978616DLL;
          v7 = 0xEC000000726F7272;
          break;
        case 9:
          v8 = 0xD00000000000001ELL;
          v7 = 0x8000000237C16C40;
          break;
        case 0xA:
          v8 = 0xD000000000000016;
          v7 = 0x8000000237C16C60;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1936945004;
      switch(a1)
      {
        case 1:
          v10 = 0x4C746E65746E6F63;
          v9 = 0xEB0000000073736FLL;
          break;
        case 2:
          v10 = 0x736F4C656C797473;
          v9 = 0xE900000000000073;
          break;
        case 3:
          v9 = 0xE800000000000000;
          v10 = 0x7963617275636361;
          break;
        case 4:
          v10 = 0x69746164696C6176;
          v9 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v10 = 0xD000000000000012;
          v9 = 0x8000000237C16BD0;
          break;
        case 6:
          v10 = 0xD000000000000010;
          v9 = 0x8000000237C16BF0;
          break;
        case 7:
          v10 = 0xD000000000000014;
          v9 = 0x8000000237C16C10;
          break;
        case 8:
          v10 = 0x456D756D6978616DLL;
          v9 = 0xEC000000726F7272;
          break;
        case 9:
          v10 = 0xD00000000000001ELL;
          v9 = 0x8000000237C16C40;
          break;
        case 10:
          v10 = 0xD000000000000016;
          v9 = 0x8000000237C16C60;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_237C0929C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_237ACD680(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237ACD6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v19 = a4;
  v17 = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v22 = v6 + 64;
  v18 = v6;
  v13 = ~(-1 << *(v6 + 32));
  for (i = a2 & v13; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v18 + 48) + *(v9 + 72) * i, v8);
    sub_237ACD93C(v19);
    v15 = sub_237C0867C();
    (*(v9 + 8))(v12, v8);
    if (v15)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237ACD878(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2379E8F20(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x2383DC9F0](v8, a1);
    sub_2379E8F7C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237ACD93C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237ACD97C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_237C086EC();
    v8 = v7;
    if (v6 == sub_237C086EC() && v8 == v9)
    {

      return i;
    }

    v11 = sub_237C0929C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_43(uint64_t a1, uint64_t a2)
{

  return sub_237ACB0FC(a1, a2, sub_2379FF0CC);
}

uint64_t OUTLINED_FUNCTION_7_28()
{
  v3 = *v0;
  v4 = *(v0 + 2);

  return MLDataTable.Row.description.getter();
}

uint64_t OUTLINED_FUNCTION_8_28(uint64_t a1)
{
  v4 = *(v2 + 56) + 32 * a1;

  return sub_2379FED88(v4, v1);
}

id OUTLINED_FUNCTION_9_30()
{

  return sub_237A02218(v0, v1, 0);
}

uint64_t sub_237ACDB54()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  *(v0 + 64) = v7;
  OUTLINED_FUNCTION_1(v7);
  *(v0 + 72) = v8;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *v4;
  *(v0 + 80) = v11;
  *(v0 + 88) = v12;
  *(v0 + 25) = *(v4 + 8);
  *(v0 + 96) = *v2;
  *(v0 + 26) = *(v2 + 8);
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_237ACDC34()
{
  v37 = v0;
  v32 = *(v0 + 26);
  v31 = *(v0 + 96);
  v30 = *(v0 + 25);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v28 = *(v0 + 56);
  v29 = *(v0 + 88);
  v4[2] = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v5 = type metadata accessor for MLHandActionClassifier();
  v6 = (v4 + v5[8]);
  sub_237C06FAC();
  v7 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v8 = *(v7 + 20);
  OUTLINED_FUNCTION_127();
  sub_2379E51D0();
  v9 = *(v7 + 24);
  OUTLINED_FUNCTION_127();
  sub_2379E5C70();
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_34_1();
  v10(v11);
  *v6 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v12 = (v4 + v5[9]);
  sub_237C06FAC();
  v13 = *(v7 + 20);
  OUTLINED_FUNCTION_127();
  sub_2379E51D0();
  v14 = *(v7 + 24);
  OUTLINED_FUNCTION_127();
  sub_2379E5C70();
  v15 = OUTLINED_FUNCTION_34_1();
  v10(v15);
  *v12 = 0;
  swift_storeEnumTagMultiPayload();
  v16 = v5[7];
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(v28, v4 + v17, v18);
  sub_2379DF938(v29, v30, &v35);
  v19 = v35;
  v20 = v36;
  sub_2379DFAE0(v35, v36, &v33);
  sub_2379DBC9C(v19, v20);
  *v4 = sub_2379DFC10(v33, v34);
  v21 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v0 + 104) = v21;
  v22 = *(v28 + *(v21 + 28));
  *(v0 + 112) = v22;
  v23 = _s8GraphCNNCMa(0);
  OUTLINED_FUNCTION_25_16(v23);
  swift_allocObject();

  v4[1] = sub_237AED020(v24, 0, 21, 3, v22);
  *(v0 + 16) = v29;
  *(v0 + 24) = v30;
  *(v0 + 32) = v31;
  *(v0 + 40) = v32;
  v25 = swift_task_alloc();
  *(v0 + 120) = v25;
  *v25 = v0;
  v25[1] = sub_237ACDEFC;
  v26 = *(v0 + 48);

  return sub_237BA78B4((v0 + 16), v0 + 32);
}

uint64_t sub_237ACDEFC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_2379DBC84(*(v3 + 32), *(v3 + 40));
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237ACE004()
{
  v23 = v0;
  v1 = sub_237A37A64();
  v2 = *(v0 + 25);
  v3 = *(v0 + 88);
  if (v1)
  {
    v4 = *(v0 + 56);
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    sub_2379DBC9C(v3, v2);
  }

  else
  {
    v21 = *(v0 + 88);
    MLDataTable.size.getter();
    sub_237A38140(25);
    v17 = v3;
    v18 = v2;
    MLDataTable.subscript.getter();
    sub_2379DBC9C(v3, v2);
    v21 = v19;
    v22 = v20;
    MLUntypedColumn.dropDuplicates()(&v15);
    sub_2379DBC9C(v21, v22);
    v5 = v15;
    if (v16)
    {
      sub_2379DBC9C(v15, 1);
    }

    else
    {
      v6 = *(v15 + 2);

      sub_237A2F128();
      sub_2379DBC9C(v5, 0);
      sub_2379DBC9C(v5, 0);
    }

    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 56);
    sub_237A38140(25);
    v10 = *(v9 + *(v8 + 24));
    sub_237A38140(25);
    sub_237A38140(25);
    v11 = *(v9 + *(v8 + 20));
    sub_237A38140(25);
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
  }

  v12 = *(v0 + 80);

  OUTLINED_FUNCTION_8();

  return v13();
}

uint64_t sub_237ACE238()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_0_44();
  sub_237AD4820();
  v6 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v6, v7);
  OUTLINED_FUNCTION_3_44();
  sub_237AD4820();

  OUTLINED_FUNCTION_8();
  v9 = *(v0 + 128);

  return v8();
}

void sub_237ACE2C8()
{
  OUTLINED_FUNCTION_37_8();
  v107 = v1;
  v108 = v3;
  v4 = v0;
  v100 = v5;
  v7 = v6;
  v90 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_0(v90);
  v89 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v91 = v13;
  OUTLINED_FUNCTION_41_0();
  v94 = sub_237C0683C();
  v14 = OUTLINED_FUNCTION_0(v94);
  v93 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  v19 = OUTLINED_FUNCTION_0(v18);
  v98 = v20;
  v99 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v103 = &v83 - v24;
  v25 = OUTLINED_FUNCTION_41_0();
  v26 = type metadata accessor for MLHandActionClassifier.ModelParameters(v25);
  v27 = OUTLINED_FUNCTION_0(v26);
  v95 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v96 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_41_0();
  v31 = sub_237C0617C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v101 = v33;
  v102 = v32;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v32);
  v37 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  v106 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  OUTLINED_FUNCTION_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v97 = &v83 - v45;
  v46 = *(v7 + 8);
  v111[0] = *v7;
  LOBYTE(v111[1]) = v46;
  v47 = *v4;
  v104 = v4;
  v105 = v47;
  v48 = v107;
  sub_2379EA98C(v111, v47);
  v50 = v48;
  if (v48)
  {
    goto LABEL_5;
  }

  v51 = v49;
  v107 = v41;
  v88 = v39;
  v84 = v2;
  v85 = *(v105 + 16);
  v52 = *MEMORY[0x277D2CD48];
  v53 = v101;
  v54 = *(v101 + 104);
  v55 = v106;
  v87 = 0;
  v56 = v102;
  v54(v106, v52);
  v109 = v51;
  v57 = v100;
  v86 = *(v100 + *(v26 + 20));
  memset(v111, 0, 40);
  (*(v53 + 16))(&v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v55, v56);
  OUTLINED_FUNCTION_2_45();
  v58 = v57;
  v59 = v96;
  sub_237AD48D4(v58, v96, v60);
  v61 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v62 = (v35 + *(v95 + 80) + v61) & ~*(v95 + 80);
  v63 = (v30 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v53 + 32))(v64 + v61, v37, v56);
  OUTLINED_FUNCTION_10_30();
  sub_237AD42D8(v59, v64 + v62, v65);
  *(v64 + v63) = v85;
  (*(v98 + 104))(v103, *MEMORY[0x277D2CEC0], v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  sub_237A7B85C(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380);
  sub_237A252E0();
  sub_237A7B85C(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8);
  v66 = v97;
  sub_237C0686C();
  (*(v53 + 8))(v106, v56);
  v67 = v104[1];
  v68 = v87;
  sub_237BA94EC(v66);
  v50 = v68;
  v69 = v66;
  if (v68)
  {
    (*(v107 + 8))(v66, v88);
LABEL_5:
    *v108 = v50;
    type metadata accessor for MLClassifierMetrics.Contents(0);
    OUTLINED_FUNCTION_125();
    goto LABEL_6;
  }

  v70 = v84;
  sub_237A347A4();
  v71 = v105;
  sub_237A34D48(v70, *(v105 + 16));
  v73 = v72;
  sub_237A33B40(v71, v111);
  v74 = v107;
  sub_237A34FA0(v70, v105, 0, &v109);
  v75 = v94;
  v76 = v93;
  v77 = v109;
  v78 = v110;
  v109 = v111[0];
  v110 = v111[1];
  sub_2379DBCF4(v111[0], v111[1]);
  sub_237A70ED4(&v109, v91);
  v109 = v77;
  v110 = v78;
  sub_2379DBCF4(v77, v78);
  sub_237A70ED4(&v109, v92);

  sub_2379DBC9C(v77, v78);
  (*(v76 + 8))(v70, v75);
  (*(v74 + 8))(v69, v88);
  sub_2379DBC9C(v111[0], v111[1]);
  v79 = v108;
  *v108 = 1.0 - v73;
  v80 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v81 = *(v89 + 32);
  v82 = v90;
  v81(v79 + *(v80 + 20), v91, v90);
  v81(v79 + *(v80 + 24), v92, v82);
  type metadata accessor for MLClassifierMetrics.Contents(0);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_38_8();
}

void MLHandActionClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v0;
  v5 = v4;
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  sub_237AD2F98(v5, v17);
  if (sub_237C0597C() == 0x67616B6361706C6DLL && v12 == 0xE900000000000065)
  {
  }

  else
  {
    v14 = sub_237C0929C();

    if ((v14 & 1) == 0)
    {
      memcpy(v16, v17, sizeof(v16));
      sub_237AD38A8();
      goto LABEL_10;
    }
  }

  sub_2379F25FC();
  if (!v1)
  {
    v15 = *(v3 + 8);
    memcpy(v16, v17, sizeof(v16));
    sub_237B33A98(v2, v16);
    (*(v9 + 8))(v2, v6);
  }

LABEL_10:
  sub_2379D9054(v17, &qword_27DE9ADE0, &unk_237C0BF90);
  OUTLINED_FUNCTION_73();
}

void sub_237ACECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MLDataTable.subscript.getter();
  if (v34)
  {
    sub_2379DBC9C(v33, 1);
LABEL_14:
    v31 = *(a1 + 8);
    v33 = *a1;
    v30 = v33;
    LOBYTE(v34) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    LOBYTE(v35) = 5;

    sub_2379DBCF4(v30, v31);
    sub_2379F21A4(&v33, inited, &v35);
    sub_2379DBC9C(v33, v34);
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  v6 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v6, v7);
  sub_237A60248(&v35);
  v8 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v8, v9);
  v10 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v10, v11);
  if (v35 != 3)
  {
    goto LABEL_14;
  }

  MLDataTable.subscript.getter();
  sub_237AC3F10(1, sub_237AD4874, 0, v35, v36, &v33);
  v12 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v12, v13);
  v37 = v33;
  v14 = v34;
  MLDataTable.subscript.getter();
  v15 = v33;
  v16 = v34;
  if (v34)
  {
    v17 = -1;
  }

  else
  {
    v18 = *(v33 + 2);

    v17 = sub_237A2F128();
    sub_2379DBC9C(v15, 0);
  }

  sub_2379DBC9C(v15, v16);
  sub_237AB08AC(v37, v14, &v35);
  v19 = v35;
  v20 = v36;
  if (v36)
  {
    v21 = -1;
  }

  else
  {
    v22 = *(v35 + 16);
    sub_2379DBCF4(v35, 0);
    v21 = sub_237A2F128();
    sub_2379DBC9C(v19, 0);
  }

  sub_2379DBC9C(v19, v20);
  if (!__OFSUB__(v17, v21))
  {
    if (v17 != v21)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000003DLL, 0x8000000237C17110);
      v35 = v17 - v21;
      OUTLINED_FUNCTION_34_1();
      v23 = sub_237C0924C();
      MEMORY[0x2383DC360](v23);

      MEMORY[0x2383DC360](0xD00000000000006BLL, 0x8000000237C17150);
      v35 = 3;
      OUTLINED_FUNCTION_34_1();
      v24 = sub_237C0924C();
      MEMORY[0x2383DC360](v24);

      MEMORY[0x2383DC360](8236, 0xE200000000000000);
      v35 = 21;
      OUTLINED_FUNCTION_34_1();
      v25 = sub_237C0924C();
      MEMORY[0x2383DC360](v25);

      MEMORY[0x2383DC360](0xD00000000000003CLL, 0x8000000237C171C0);
      v26 = v33;
      v27 = v34;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v28 = swift_allocError();
      *v29 = v26;
      v29[1] = v27;
      OUTLINED_FUNCTION_52(v28, v29);
      sub_2379DBC9C(v37, v14);
      return;
    }

    sub_237AB09D4(v37, v14, a2, a3);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_237ACF0A4()
{
  v0 = sub_237C0829C();
  __swift_allocate_value_buffer(v0, qword_27DEACD98);
  v1 = OUTLINED_FUNCTION_37_0();
  __swift_project_value_buffer(v1, v2);
  return sub_237C0828C();
}

uint64_t sub_237ACF120()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9C8F8);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C8F8);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 20;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLHandActionClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A610 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9C8F8);
  OUTLINED_FUNCTION_4_42();
  return sub_237AD48D4(v3, a1, v4);
}

uint64_t MLHandActionClassifier.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = *(type metadata accessor for MLHandActionClassifier() + 28);
  OUTLINED_FUNCTION_2_45();
  return sub_237AD48D4(v1 + v3, v0, v4);
}

uint64_t MLHandActionClassifier.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLHandActionClassifier();
  return OUTLINED_FUNCTION_19_21(*(v0 + 32));
}

uint64_t MLHandActionClassifier.trainingMetrics.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = v1 + *(type metadata accessor for MLHandActionClassifier() + 32);

  return sub_2379DC1F8(v0, v2);
}

uint64_t (*MLHandActionClassifier.trainingMetrics.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLHandActionClassifier() + 32);
  return nullsub_1;
}

uint64_t MLHandActionClassifier.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLHandActionClassifier();
  return OUTLINED_FUNCTION_19_21(*(v0 + 36));
}

uint64_t MLHandActionClassifier.validationMetrics.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = v1 + *(type metadata accessor for MLHandActionClassifier() + 36);

  return sub_2379DC1F8(v0, v2);
}

uint64_t (*MLHandActionClassifier.validationMetrics.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLHandActionClassifier() + 36);
  return nullsub_1;
}

uint64_t MLHandActionClassifier.Prediction.frameRange.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MLHandActionClassifier.Prediction.frameRange.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t MLHandActionClassifier.Prediction.results.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void MLHandActionClassifier.init(trainingData:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v86 = v1;
  v87 = v0;
  v3 = v2;
  v4 = type metadata accessor for MLHandActionClassifier();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v83 = v8 - v7;
  v9 = OUTLINED_FUNCTION_41_0();
  v85 = type metadata accessor for MLHandActionClassifier.ModelParameters(v9);
  v10 = OUTLINED_FUNCTION_0(v85);
  v80 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v81 = v15;
  v82 = &v71[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v84 = v16;
  v17 = OUTLINED_FUNCTION_41_0();
  v78 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(v17);
  v18 = OUTLINED_FUNCTION_4(v78);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v79 = v22 - v21;
  OUTLINED_FUNCTION_41_0();
  v23 = type metadata accessor for MLHandActionClassifier.DataSource();
  v24 = OUTLINED_FUNCTION_20(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v77 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &v71[-v35];
  *v3 = MEMORY[0x277D84F90];
  v89 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v3[2] = v89;
  v37 = (v3 + *(v5 + 40));
  sub_237C06FAC();
  v38 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v39 = v37 + *(v38 + 20);
  sub_2379E51D0();
  v40 = v37 + *(v38 + 24);
  sub_2379E5C70();
  v41 = *(v31 + 8);
  v41(v36, v29);
  *v37 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v88 = v37;
  swift_storeEnumTagMultiPayload();
  v42 = (v3 + *(v5 + 44));
  sub_237C06FAC();
  v43 = v42 + *(v38 + 20);
  sub_2379E51D0();
  v44 = v42 + *(v38 + 24);
  sub_2379E5C70();
  v41(v36, v29);
  v45 = v86;
  *v42 = 0;
  swift_storeEnumTagMultiPayload();
  v46 = v87;
  sub_237A2764C(&v92, &v90);
  if (v46)
  {
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    OUTLINED_FUNCTION_1_45();
    sub_237AD4820();

    OUTLINED_FUNCTION_18_23();
    sub_237AD4820();
    sub_237AD4820();
LABEL_6:
    OUTLINED_FUNCTION_73();
    return;
  }

  v75 = v3;
  v47 = v92;
  v48 = v93;
  v76 = v90;
  LODWORD(v87) = v91;
  if (v93 == 255)
  {
    v74 = v92;
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v92);
  }

  else
  {
    _s16FeatureExtractorCMa();
    v90 = v47;
    OUTLINED_FUNCTION_33_11(v48 & 1);
    v74 = v47;
  }

  v49 = v93;
  v50 = v87;
  v73 = v92;
  if (v87 != 255)
  {
    LODWORD(v78) = v93;
    _s16FeatureExtractorCMa();
    v90 = v76;
    OUTLINED_FUNCTION_33_11(v50 & 1);
    v72 = v48;
LABEL_13:
    v85 = v92;
    v56 = v93;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_11_30();
  v51 = v79;
  sub_237AD48D4(v45, v79, v52);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_237AD42D8(v51, v77, type metadata accessor for MLHandActionClassifier.DataSource);
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v92);
    LODWORD(v78) = v49;
    v72 = v48;
    OUTLINED_FUNCTION_1_45();
    sub_237AD4820();
    goto LABEL_13;
  }

  LODWORD(v78) = v49;
  v72 = v48;
  sub_237AD4820();
  v53 = MEMORY[0x2383DDC00](0);
  if (v53)
  {
    v54 = v53;
    type metadata accessor for CMLTable();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    type metadata accessor for _DataTable();
    swift_allocObject();
    v85 = sub_237B6C578(v55);
    v56 = 0;
LABEL_14:
    v57 = v84;
    sub_237AD48D4(v45, v84, type metadata accessor for MLHandActionClassifier.ModelParameters);
    v58 = v57;
    v59 = v82;
    sub_237AD48D4(v58, v82, type metadata accessor for MLHandActionClassifier.ModelParameters);
    v60 = (*(v80 + 80) + 41) & ~*(v80 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v73;
    v62 = v78;
    *(v61 + 24) = v78;
    v63 = v85;
    *(v61 + 32) = v85;
    *(v61 + 40) = v56;
    OUTLINED_FUNCTION_10_30();
    v65 = v64 + v60;
    v66 = v59;
    v68 = v67;
    sub_237AD42D8(v66, v65, v69);
    sub_2379DBCF4(v68, v62);
    sub_2379DBCF4(v63, v56);
    v70 = v83;
    sub_2379DDB00();

    OUTLINED_FUNCTION_42_7();
    sub_2379DBC84(v74, v72);
    OUTLINED_FUNCTION_17_19();
    sub_237AD4820();
    OUTLINED_FUNCTION_1_45();
    sub_237AD4820();
    sub_237AD4820();

    OUTLINED_FUNCTION_18_23();
    sub_237AD4820();
    sub_237AD4820();
    sub_237AD42D8(v70, v75, type metadata accessor for MLHandActionClassifier);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_237ACFC4C(uint64_t a1, void *a2, char a3, void *a4, char a5, uint64_t a6)
{
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  *(v6 + 25) = a3;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v11 = *(*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  sub_2379DBCF4(a2, a3 & 1);
  sub_2379DBCF4(a4, a5 & 1);

  return MEMORY[0x2822009F8](sub_237ACFD18, 0, 0);
}

uint64_t sub_237ACFD18()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 26);
  v4 = *(v0 + 25);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v4 & 1;
  *(v0 + 32) = v5;
  *(v0 + 40) = v3 & 1;
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(v6, v7, v8);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_2379DCCB4;
  v10 = *(v0 + 80);
  v11 = *(v0 + 48);

  return sub_237ACDB54();
}

void sub_237ACFDEC()
{
  OUTLINED_FUNCTION_37_8();
  v111 = v1;
  v117 = v2;
  v118 = v3;
  v115 = v5;
  v116 = v4;
  OUTLINED_FUNCTION_146();
  v6 = sub_237C05DBC();
  v109 = OUTLINED_FUNCTION_0(v6);
  v110 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_18_0();
  v108 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v107 = v13;
  OUTLINED_FUNCTION_41_0();
  v14 = sub_237C0683C();
  v113 = OUTLINED_FUNCTION_0(v14);
  v114 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v112 = v19;
  v20 = OUTLINED_FUNCTION_41_0();
  v21 = type metadata accessor for MLClassifierMetrics(v20);
  v22 = OUTLINED_FUNCTION_20(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  v104 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v96 - v33;
  v0[2] = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v35 = type metadata accessor for MLHandActionClassifier();
  v36 = (v0 + v35[8]);
  sub_237C06FAC();
  v37 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v38 = *(v37 + 20);
  OUTLINED_FUNCTION_53_6();
  sub_2379E51D0();
  v39 = *(v37 + 24);
  OUTLINED_FUNCTION_53_6();
  sub_2379E5C70();
  v40 = *(v29 + 8);
  v40(v34, v27);
  *v36 = 0;
  v41 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v103 = v36;
  OUTLINED_FUNCTION_62_5();
  v42 = (v0 + v35[9]);
  sub_237C06FAC();
  v43 = *(v37 + 20);
  OUTLINED_FUNCTION_53_6();
  sub_2379E51D0();
  v106 = v37;
  v44 = *(v37 + 24);
  OUTLINED_FUNCTION_53_6();
  sub_2379E5C70();
  v40(v34, v27);
  v45 = v118;
  v46 = v115;
  *v42 = 0;
  v100 = v42;
  v105 = v41;
  OUTLINED_FUNCTION_62_5();
  v0[1] = v116;
  v47 = v35[7];
  v48 = v117;
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(v46, v0 + v49, v50);
  *v0 = v45;

  sub_237AC9A74(0xD000000000000012, 0x8000000237C170A0, v48, &v121);
  if (!v122)
  {

    sub_2379D9054(&v121, &qword_27DE9A998, &unk_237C0C100);
LABEL_7:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v58 = swift_allocError();
    *v59 = 0xD00000000000002CLL;
    v59[1] = 0x8000000237C170C0;
    OUTLINED_FUNCTION_52(v58, v59);
    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    goto LABEL_8;
  }

  v51 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v52 = v119;
  v53 = v112;
  sub_237A347A4();
  v54 = *(v45 + 16);
  sub_237A34D48(v53, v54);
  v56 = v55;
  v57 = v111;
  sub_237A33B40(v45, &v121);
  if (v57)
  {

    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    (*(v114 + 8))(v53, v113);
  }

  else
  {
    v99 = v54;
    v111 = v51;
    v116 = v52;
    sub_237A34FA0(v53, v45, 0, &v119);
    v60 = v113;
    v98 = 0;
    v61 = v119;
    v62 = v120;
    v119 = OUTLINED_FUNCTION_39_7();
    v120 = v63;
    sub_2379DBCF4(v119, v63);
    v64 = v48;
    v65 = v107;
    sub_237A70ED4(&v119, v107);
    v119 = v61;
    v120 = v62;
    v66 = v108;
    sub_237A70ED4(&v119, v108);
    v67 = *(v114 + 8);
    v114 += 8;
    v112 = v67;
    v67(v53, v60);
    v68 = OUTLINED_FUNCTION_39_7();
    sub_2379DBC9C(v68, v69);
    v70 = v104;
    *v104 = 1.0 - v56;
    v71 = v106;
    v72 = v110 + 32;
    v73 = *(v110 + 32);
    v74 = v65;
    v75 = v109;
    v73(v70 + *(v106 + 20), v74, v109);
    v76 = v70 + *(v71 + 24);
    v110 = v72;
    v97 = v73;
    v73(v76, v66, v75);
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v70, v103);
    sub_237AC9A74(0xD000000000000014, 0x8000000237C170F0, v64, &v121);

    if (!v122)
    {

      OUTLINED_FUNCTION_0_44();
      sub_237AD4820();
      sub_2379D9054(&v121, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_10;
    }

    v77 = swift_dynamicCast();
    v78 = v98;
    if ((v77 & 1) == 0)
    {

      OUTLINED_FUNCTION_0_44();
      goto LABEL_9;
    }

    v79 = v102;
    sub_237A347A4();
    sub_237A34D48(v79, v99);
    v81 = v80;
    v82 = v118;
    sub_237A33B40(v118, &v121);
    if (!v78)
    {
      sub_237A34FA0(v79, v82, 0, &v119);
      v83 = v113;

      v84 = v79;
      v85 = v119;
      v86 = v120;
      v119 = OUTLINED_FUNCTION_39_7();
      v120 = v87;
      sub_2379DBCF4(v119, v87);
      v88 = v107;
      sub_237A70ED4(&v119, v107);
      v119 = v85;
      v120 = v86;
      sub_2379DBCF4(v85, v86);
      v98 = 0;
      v89 = v108;
      sub_237A70ED4(&v119, v108);

      sub_2379DBC9C(v85, v86);
      OUTLINED_FUNCTION_0_44();
      sub_237AD4820();
      v112(v84, v83);
      v90 = OUTLINED_FUNCTION_39_7();
      sub_2379DBC9C(v90, v91);
      v92 = v101;
      *v101 = 1.0 - v81;
      v93 = v106;
      v94 = v109;
      v95 = v97;
      v97(v92 + *(v106 + 20), v88, v109);
      v95(v92 + *(v93 + 24), v89, v94);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v92, v100);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_44();
    sub_237AD4820();
    v112(v79, v113);
  }

LABEL_8:
  OUTLINED_FUNCTION_3_44();
LABEL_9:
  sub_237AD4820();
LABEL_10:
  OUTLINED_FUNCTION_38_8();
}

void MLHandActionClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_37_8();
  v3 = v2;
  v70 = type metadata accessor for MLHandActionClassifier.DataSource();
  v4 = OUTLINED_FUNCTION_4(v70);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v69 = v8 - v7;
  OUTLINED_FUNCTION_41_0();
  v68 = _s20PersistentParametersVMa();
  v9 = OUTLINED_FUNCTION_4(v68);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v72 = v13 - v12;
  OUTLINED_FUNCTION_41_0();
  v14 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v76 = v16;
  v77 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v73 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  v75 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_52_8();
  *v3 = MEMORY[0x277D84F90];
  v74 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v29 = type metadata accessor for MLHandActionClassifier();
  v30 = (v3 + v29[8]);
  sub_237C06FAC();
  v31 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v32 = v30 + *(v31 + 20);
  sub_2379E51D0();
  v33 = v30 + *(v31 + 24);
  sub_2379E5C70();
  v34 = *(v25 + 8);
  v34(v1, v23);
  *v30 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_62_5();
  v71 = v3;
  v35 = (v3 + v29[9]);
  sub_237C06FAC();
  v36 = v35 + *(v31 + 20);
  sub_2379E51D0();
  v37 = *(v31 + 24);
  sub_2379E5C70();
  v34(v1, v23);
  *v35 = 0;
  OUTLINED_FUNCTION_62_5();
  sub_237C05A5C();
  (*(v76 + 16))(v73, v75, v77);
  sub_237A02C3C(v73, v72);
  if (v0)
  {
    OUTLINED_FUNCTION_7_29();
    sub_237AD4820();
    (*(v76 + 8))(v75, v77);

    sub_237AD4820();
    sub_237AD4820();
  }

  else
  {
    v38 = OUTLINED_FUNCTION_16_17();
    sub_237AD48D4(v38, v69, v39);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v40 = *v69;
      v41 = *(v69 + 8);
      v42 = *(v69 + 24);
      v43 = *(v69 + 32);
      v44 = *(v69 + 40);
      v45 = *(v69 + 56);

      sub_2379DF938(v40, v41, v78);

      v46 = OUTLINED_FUNCTION_37_0();
      sub_2379DFAE0(v46, v47, v48);
      v49 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v49, v50);
      sub_2379DFC10(v78[2], v79);
      sub_2379DBC9C(v40, v41);
    }

    else
    {
      sub_237AB4184();
      sub_2379DFFEC(v51);
      OUTLINED_FUNCTION_1_45();
      sub_237AD4820();
    }

    v52 = v71 + v29[7];
    v53 = v68[5];
    OUTLINED_FUNCTION_11_30();
    sub_237AD48D4(v72 + v54, v52, v55);
    v56 = *(v72 + v68[6]);
    v57 = *(v72 + v68[7]);
    v58 = *(v72 + v68[8]);
    v59 = *(v72 + v68[10]);
    v60 = *(v72 + v68[9]);
    v61 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    *(v52 + v61[5]) = v56;
    *(v52 + v61[6]) = v57;
    *(v52 + v61[7]) = v58;
    *(v52 + v61[8]) = v59;
    *(v52 + v61[10]) = v60;
    v62 = _s8GraphCNNCMa(0);
    OUTLINED_FUNCTION_25_16(v62);
    swift_allocObject();
    v63 = OUTLINED_FUNCTION_85();
    v65 = sub_237AED020(v63, v64, 21, 3, v58);
    sub_237AE8BE0();

    sub_2379DD56C();
    v67 = v66;

    OUTLINED_FUNCTION_7_29();
    sub_237AD4820();
    OUTLINED_FUNCTION_6_35();
    sub_237AD4820();
    (*(v76 + 8))(v75, v77);

    v71[1] = v65;
    v71[2] = v67;
  }

  OUTLINED_FUNCTION_38_8();
}

uint64_t sub_237AD0D3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237AD0DD0;

  return sub_237BAF670();
}

uint64_t sub_237AD0DD0(uint64_t a1)
{
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = a1;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void static MLHandActionClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C910, &qword_237C11608);
    OUTLINED_FUNCTION_25_16(v6);
    v7 = swift_allocObject();
    sub_237BEC2EC(v7, v5);
  }
}

void static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLTrainingSessionParameters();
  v7 = OUTLINED_FUNCTION_20(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39[-1] - v14;
  v16 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = type metadata accessor for MLHandActionClassifier.DataSource();
  v24 = OUTLINED_FUNCTION_20(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v30 = OUTLINED_FUNCTION_16_17();
  sub_237AD48D4(v30, v29, v31);
  OUTLINED_FUNCTION_2_45();
  sub_237AD48D4(a2, v22, v32);
  OUTLINED_FUNCTION_4_42();
  sub_237AD48D4(a3, v15, v33);
  v34 = type metadata accessor for HandActionClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_25_16(v34);
  swift_allocObject();
  sub_237B75084();
  if (!v3)
  {
    v39[3] = v34;
    v39[4] = &off_284AC5738;
    v39[0] = v35;
    OUTLINED_FUNCTION_4_42();
    sub_237AD48D4(a3, v12, v36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C918, &unk_237C11610);
    OUTLINED_FUNCTION_25_16(v37);
    swift_allocObject();
    sub_2379E4210(v39, v12, 25);
  }
}

uint64_t static MLHandActionClassifier.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C910, &qword_237C11608);
  OUTLINED_FUNCTION_25_16(v2);
  v3 = swift_allocObject();

  return sub_237BEC2EC(v3, a1);
}

void static MLHandActionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-1] - v11;
  OUTLINED_FUNCTION_4_42();
  sub_237AD48D4(a1, v12, v13);
  v14 = type metadata accessor for HandActionClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_25_16(v14);
  swift_allocObject();
  OUTLINED_FUNCTION_125();
  sub_237B74C2C();
  if (!v1)
  {
    v19[3] = v14;
    v19[4] = &off_284AC5738;
    v19[0] = v15;
    OUTLINED_FUNCTION_4_42();
    sub_237AD48D4(a1, v9, v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C918, &unk_237C11610);
    OUTLINED_FUNCTION_25_16(v17);
    swift_allocObject();
    sub_2379E4210(v19, v9, 25);
  }
}

uint64_t sub_237AD12BC(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C930, &unk_237C11710);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = (&v60 - v14);
  v65 = _s20PersistentParametersVMa();
  v16 = OUTLINED_FUNCTION_4(v65);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v64 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  OUTLINED_FUNCTION_20(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  v27 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  if (a2)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v36 = a1;
    a4(v15);
    v37 = &qword_27DE9C930;
    v38 = &unk_237C11710;
    v39 = v15;
    return sub_2379D9054(v39, v37, v38);
  }

  v41 = v35;
  v62 = a5;
  v63 = a4;
  sub_2379E8624(a3 + qword_27DEACD88, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
  OUTLINED_FUNCTION_46();
  type metadata accessor for HandActionClassifierTrainingSessionDelegate();
  result = swift_dynamicCast();
  if (result)
  {
    v42 = v66;
    v43 = *(v66 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
    if (v43)
    {
      v44 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
      swift_beginAccess();
      sub_2379FC864(v42 + v44, v26, &qword_27DE9C938, &unk_237C14AB0);
      v45 = v65;
      if (__swift_getEnumTagSinglePayload(v26, 1, v65))
      {

        v37 = &qword_27DE9C938;
        v38 = &unk_237C14AB0;
        v39 = v26;
        return sub_2379D9054(v39, v37, v38);
      }

      v46 = v64;
      sub_237AD48D4(v26, v64, _s20PersistentParametersVMa);

      sub_2379D9054(v26, &qword_27DE9C938, &unk_237C14AB0);
      v47 = v45[5];
      OUTLINED_FUNCTION_11_30();
      sub_237AD48D4(v46 + v48, v33, v49);
      v50 = *(v46 + v45[6]);
      v51 = *(v46 + v45[7]);
      v52 = v45[8];
      v53 = v45[9];
      v61 = v43;
      v54 = *(v46 + v52);
      v55 = *(v46 + v45[10]);
      v56 = *(v46 + v53);
      OUTLINED_FUNCTION_6_35();
      sub_237AD4820();
      *(v33 + v27[5]) = v50;
      *(v33 + v27[6]) = v51;
      *(v33 + v27[7]) = v54;
      *(v33 + v27[8]) = v55;
      *(v33 + v27[10]) = v56;
      OUTLINED_FUNCTION_10_30();
      v58 = sub_237AD42D8(v33, v41, v57);
      v59 = *(v42 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
      if (v59)
      {
        MEMORY[0x28223BE20](v58);
        *(&v60 - 4) = v61;
        *(&v60 - 3) = v41;
        *(&v60 - 2) = v42;
        *(&v60 - 1) = v59;

        sub_237BBDD08(sub_237AD47FC, v15);

        v63(v15);

        sub_2379D9054(v15, &qword_27DE9C930, &unk_237C11710);
      }

      else
      {
      }

      OUTLINED_FUNCTION_0_44();
      return sub_237AD4820();
    }

    else
    {
    }
  }

  return result;
}

void sub_237AD1710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_237AD48D4(a2, &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MLHandActionClassifier.ModelParameters);
  v13 = *(a3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  sub_237ACFDEC();
  if (v7)
  {
    *a5 = v7;
  }
}

void sub_237AD1818(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) == 3)
  {
    v4[1] = v2;
    v4[2] = v3;
    v4[0] = *a1;
    sub_237AD185C(v4, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_237AD185C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *&v112 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = sub_237AC8938(v112, 65600);
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = v5;
  v7 = sub_237C08D4C();
  sub_237A2E9F4();
  if (sub_237A01878() != 1)
  {

LABEL_56:
    *a2 = 0;
    return;
  }

  v116 = 0;
  v117 = 0;
  v115 = v3;

  v107 = v7;
  while (1)
  {
    sub_237BABD8C(&v112);
    v8 = *(&v112 + 1);
    *v108 = v112;
    v9 = v113;
    if (v114 != 3)
    {
      if (v114 == 255)
      {

        MLDataValue.MultiArrayType.init(_:)(v6);
        *a2 = v112;
        return;
      }

      sub_2379E9268(v112, *(&v112 + 1), v113, v114);

      goto LABEL_63;
    }

    sub_2379E9288(*(&v112 + 1), v113, 3);
    sub_237A2E9F4();
    if (sub_237A01878() != 3)
    {

      OUTLINED_FUNCTION_58_6();
      OUTLINED_FUNCTION_58_6();
      goto LABEL_56;
    }

    v101 = v9;
    sub_2379E9288(v8, v9, 3);
    v102 = v8;
    v103 = a2;
    v105 = v6;
LABEL_7:
    sub_237BABD8C(&v112);
    v10 = *(&v112 + 1);
    *v109 = v112;
    v11 = v113;
    v12 = v114;
    if (v114 == 3)
    {
      break;
    }

    if (v114 != 255)
    {
      sub_2379E9268(v108[0], v8, v101, 3);
      sub_2379E9268(v108[0], v8, v101, 3);
      v91 = v109[0];
      v92 = v10;
      v93 = v11;
      v94 = v12;
LABEL_62:
      sub_2379E9268(v91, v92, v93, v94);

LABEL_63:

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v75, v76, v77, v78);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v79, v80, v81, v82);
  }

  sub_2379E9288(*(&v112 + 1), v113, 3);
  sub_237A2E9F4();
  if (sub_237A01878() != 21)
  {
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v95, v96, v97, v98);
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    goto LABEL_62;
  }

  v104 = v11;
  sub_2379E9288(v10, v11, 3);
  v13 = 0;
  v110 = v10;
  while (1)
  {
    while (1)
    {
      if (v13 == sub_237A2E9F4())
      {
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v67, v68, v69, v70);
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v71, v72, v73, v74);

        v8 = v102;
        a2 = v103;
        goto LABEL_7;
      }

      v14 = sub_237A2E9C8(v13);
      switch(sub_237A2E910())
      {
        case 1u:
          v43 = *(v14 + 16);

          sub_237B0E848();
          v45 = v44;

          v17 = 0;
          v16 = v45;
          v18 = 1;
          goto LABEL_30;
        case 2u:

          v16 = sub_237A2DE60();
          v17 = v41;
          v18 = 2;

          goto LABEL_30;
        case 3u:
          v42 = sub_237B0DD68(*(v14 + 16));
          if (!v42)
          {
            goto LABEL_78;
          }

          type metadata accessor for CMLSequence();
          v16 = swift_allocObject();
          v17 = 0;
          *(v16 + 16) = v42;
          *(v16 + 24) = 1;
          v18 = 3;
          goto LABEL_30;
        case 4u:
          v19 = sub_237B0DDC8(*(v14 + 16));
          if (!v19)
          {
            goto LABEL_77;
          }

          type metadata accessor for CMLDictionary();
          *(swift_initStackObject() + 16) = v19;
          v16 = MEMORY[0x277D84F98];
          v111 = MEMORY[0x277D84F98];
          swift_retain_n();
          v20 = 0;
          break;
        case 5u:

          v16 = 0;
          v17 = 0;
          v18 = 6;
          goto LABEL_30;
        case 6u:

          sub_237AC8278(v46, &v112);
          v16 = v112;
          if (!v112)
          {
            goto LABEL_79;
          }

          v17 = 0;
          v18 = 5;
          goto LABEL_30;
        default:
          v15 = *(v14 + 16);

          v16 = sub_237B0ECCC(v15);

          v17 = 0;
          v18 = 0;
          goto LABEL_30;
      }

      while (v20 != sub_237A2EAA4())
      {
        sub_237A2EB64(v20);
        v20 = sub_237B6A974(v20);
        v21 = sub_237A2DE60();
        v23 = v22;

        sub_237AFC548(v24, &v112);

        v25 = v112;
        v106 = v113;
        *&v112 = v21;
        *(&v112 + 1) = v23;
        LOBYTE(v113) = 2;
        v26 = OUTLINED_FUNCTION_84();
        v28 = sub_237ACB180(v26, v27, 2);
        v30 = *(v16 + 16);
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_75;
        }

        v34 = v29;
        if (*(v16 + 24) < v33)
        {
          sub_237ABF994(v33, 1);
          v16 = v111;
          v28 = sub_237ACB180(v112, *(&v112 + 1), v113);
          if ((v34 & 1) != (v35 & 1))
          {
            sub_237C0932C();
            __break(1u);
LABEL_82:
            OUTLINED_FUNCTION_50();
            v99 = swift_allocError();
            swift_willThrow();

            v100 = v99;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            if (swift_dynamicCast())
            {
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
              sub_237C0907C();
              MEMORY[0x2383DC360](39, 0xE100000000000000);
              sub_237C090DC();
              __break(1u);
            }

            sub_2379E8CE8(v25, *(&v25 + 1), v106);

            sub_2379E8CE8(v112, *(&v112 + 1), v113);

            goto LABEL_80;
          }
        }

        if (v34)
        {
          goto LABEL_82;
        }

        *(v16 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v36 = *(v16 + 48) + 24 * v28;
        v37 = v113;
        *v36 = v112;
        *(v36 + 16) = v37;
        v38 = *(v16 + 56) + 24 * v28;
        *v38 = v25;
        *(v38 + 16) = v106;
        v39 = *(v16 + 16);
        v32 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v32)
        {
          goto LABEL_76;
        }

        *(v16 + 16) = v40;
      }

      v18 = 4;

      v17 = 0;
      v6 = v105;
LABEL_30:
      if (v13 >= sub_237A2E9F4())
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);
        while (1)
        {
LABEL_80:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v47 = [v6 strides];
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v48 = sub_237C0893C();

      if ((v48 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x2383DCAF0](0, v48);
      }

      else
      {
        if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v49 = *(v48 + 32);
      }

      v50 = v49;

      v51 = [v50 integerValue];

      v52 = *v108 * v51;
      if ((*v108 * v51) >> 64 != (*v108 * v51) >> 63)
      {
        goto LABEL_67;
      }

      v53 = [v6 strides];
      v54 = sub_237C0893C();

      if ((v54 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x2383DCAF0](1, v54);
      }

      else
      {
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_70;
        }

        v55 = *(v54 + 40);
      }

      v56 = v55;

      v57 = [v56 integerValue];

      v58 = *v109 * v57;
      if ((*v109 * v57) >> 64 != (*v109 * v57) >> 63)
      {
        goto LABEL_69;
      }

      v59 = v52 + v58;
      if (__OFADD__(v52, v58))
      {
        goto LABEL_71;
      }

      v60 = [v6 strides];
      v61 = sub_237C0893C();

      if ((v61 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x2383DCAF0](2, v61);
      }

      else
      {
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_73;
        }

        v62 = *(v61 + 48);
      }

      v63 = v62;

      v64 = [v63 integerValue];

      v65 = v13 * v64;
      if ((v13 * v64) >> 64 != (v13 * v64) >> 63)
      {
        goto LABEL_72;
      }

      v32 = __OFADD__(v59, v65);
      v66 = v59 + v65;
      if (v32)
      {
        goto LABEL_74;
      }

      ++v13;
      if (v18)
      {
        break;
      }

      *(v107 + 8 * v66) = v16;
    }

    if (v18 != 1)
    {
      break;
    }

    *(v107 + 8 * v66) = v16;
  }

  sub_2379E8CE8(v16, v17, v18);
  sub_2379E9268(v109[0], v110, v104, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v83, v84, v85, v86);
  sub_2379E9268(v109[0], v110, v104, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v87, v88, v89, v90);

  *v103 = 0;
}

void sub_237AD24C8(uint64_t a1)
{
  v4 = v1 + *(type metadata accessor for MLHandActionClassifier() + 28);
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v6 = sub_237AB1D68(a1, *MEMORY[0x277CC08F0], *(MEMORY[0x277CC08F0] + 8), *(MEMORY[0x277CC08F0] + 16), *MEMORY[0x277CC0888], *(MEMORY[0x277CC0888] + 8), *(MEMORY[0x277CC0888] + 16), *(v4 + *(v5 + 40)));
  if (!v2)
  {
    v7 = v6;
    v8 = v6[2];
    if (v8)
    {
      v30 = MEMORY[0x277D84F90];
      sub_237C08FCC();
      v9 = 4;
      do
      {
        v10 = v7[v9];
        sub_237C08F8C();
        v11 = *(v30 + 16);
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        ++v9;
        --v8;
      }

      while (v8);

      v12 = v30;
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }

    v13 = sub_237AB0E94(v12, *(v4 + *(v5 + 28)), 21);

    v14 = 0;
    v29 = *(v13 + 16);
    v15 = (v13 + 48);
    v16 = MEMORY[0x277D84F90];
    for (i = v13; ; v13 = i)
    {
      if (v29 == v14)
      {

        return;
      }

      if (v14 >= *(v13 + 16))
      {
        break;
      }

      v17 = *(v15 - 1);
      v18 = v15;
      v19 = *v15;
      v20 = *(v15 - 2);
      sub_237AD27E0();
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v16 + 16);
        sub_237BC1C78();
        v16 = v26;
      }

      v23 = *(v16 + 16);
      if (v23 >= *(v16 + 24) >> 1)
      {
        sub_237BC1C78();
        v16 = v27;
      }

      *(v16 + 16) = v23 + 1;
      v24 = (v16 + 24 * v23);
      v24[4] = v17;
      v24[5] = v19;
      v24[6] = v22;
      v15 = v18 + 3;
      ++v14;
    }

    __break(1u);
  }
}

void sub_237AD2794(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = *(a2 + 16);
  sub_237AD24C8(a1);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v8;
  }
}

void sub_237AD27E0()
{
  OUTLINED_FUNCTION_37_8();
  v3 = v2;
  v5 = v4;
  v79 = *MEMORY[0x277D85DE8];
  v6 = [v4 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v7 = sub_237C0893C();

  v8 = sub_237A254D8(v7);

  if (v8 != 3)
  {
    goto LABEL_26;
  }

  v9 = [v5 shape];
  v10 = sub_237C0893C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_237C0BA30;
  v12 = v0 + *(type metadata accessor for MLHandActionClassifier() + 28);
  *(v11 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v11 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v11 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  LOBYTE(v12) = sub_237AC7718(v10, v11);

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = 0x7365736F70;
    *(inited + 40) = 0xE500000000000000;
    v14 = [objc_opt_self() featureValueWithMultiArray_];
    *(inited + 72) = sub_2379E8EE0(0, &qword_27DE9AC50, 0x277CBFEF8);
    *(inited + 48) = v14;
    sub_237C085AC();
    v15 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    OUTLINED_FUNCTION_125();
    v16 = sub_237AD4714();
    if (!v1)
    {
      v17 = v16;
      *&v77[0] = 0;
      v18 = [v3 predictionFromFeatures:v16 error:v77];
      if (v18)
      {
        v19 = v18;
        v20 = *&v77[0];
        v21 = sub_237C086BC();
        v22 = [v19 featureValueForName_];

        if (v22)
        {
          v23 = [v22 dictionaryValue];

          v24 = sub_237C0857C();
          v25 = *(v24 + 16);
          if (v25)
          {
            v54 = v17;
            v65 = MEMORY[0x277D84F90];
            sub_237AC8C74();
            v28 = sub_237B024B4(v24);
            v29 = 0;
            v30 = v24 + 64;
            v56 = v26;
            v57 = v25;
            v55 = v24 + 72;
            v58 = v24 + 64;
            v59 = v24;
            do
            {
              if (v28 < 0 || v28 >= 1 << *(v24 + 32))
              {
                __break(1u);
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                __break(1u);
              }

              v31 = v28 >> 6;
              if ((*(v30 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
              {
                goto LABEL_32;
              }

              if (*(v24 + 36) != v26)
              {
                goto LABEL_33;
              }

              v61 = v29;
              v62 = v26;
              v60 = v27;
              sub_2379E8F20(*(v24 + 48) + 40 * v28, v77);
              v32 = *(*(v24 + 56) + 8 * v28);
              v74[0] = v77[0];
              v74[1] = v77[1];
              v75 = v78;
              v76 = v32;
              sub_2379FC864(v74, v68, &qword_27DE9AC58, &qword_237C0B9A0);
              v33 = v70;
              v34 = v32;

              v71 = v68[0];
              v72 = v68[1];
              v73 = v69;
              swift_dynamicCast();
              sub_2379FC864(v74, v66, &qword_27DE9AC58, &qword_237C0B9A0);
              v35 = v67;
              [v67 doubleValue];
              v37 = v36;

              sub_2379D9054(v74, &qword_27DE9AC58, &qword_237C0B9A0);
              sub_2379E8F7C(v66);
              v38 = *(v65 + 16);
              if (v38 >= *(v65 + 24) >> 1)
              {
                sub_237AC8C74();
              }

              *(v65 + 16) = v38 + 1;
              v39 = (v65 + 24 * v38);
              v39[4] = v63;
              v39[5] = v64;
              v39[6] = v37;
              v24 = v59;
              v40 = 1 << *(v59 + 32);
              if (v28 >= v40)
              {
                goto LABEL_34;
              }

              v30 = v58;
              v41 = *(v58 + 8 * v31);
              if ((v41 & (1 << v28)) == 0)
              {
                goto LABEL_35;
              }

              if (*(v59 + 36) != v62)
              {
                goto LABEL_36;
              }

              v42 = v41 & (-2 << (v28 & 0x3F));
              if (v42)
              {
                v40 = __clz(__rbit64(v42)) | v28 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v43 = v31 << 6;
                v44 = v31 + 1;
                v45 = (v55 + 8 * v31);
                while (v44 < (v40 + 63) >> 6)
                {
                  v47 = *v45++;
                  v46 = v47;
                  v43 += 64;
                  ++v44;
                  if (v47)
                  {
                    sub_2379E94D0(v28, v62, v60 & 1);
                    v40 = __clz(__rbit64(v46)) + v43;
                    goto LABEL_24;
                  }
                }

                sub_2379E94D0(v28, v62, v60 & 1);
              }

LABEL_24:
              v27 = 0;
              v29 = v61 + 1;
              v28 = v40;
              v26 = v56;
            }

            while (v61 + 1 != v57);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_2379E8AF0();
          OUTLINED_FUNCTION_50();
          v52 = swift_allocError();
          *v53 = 0xD000000000000028;
          v53[1] = 0x8000000237C17070;
          OUTLINED_FUNCTION_52(v52, v53);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v51 = *&v77[0];
        sub_237C0593C();

        swift_willThrow();
      }
    }
  }

  else
  {
LABEL_26:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v48 = swift_allocError();
    *v49 = 0xD000000000000025;
    v49[1] = 0x8000000237C17020;
    OUTLINED_FUNCTION_52(v48, v49);
  }

  v50 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_8();
}

void MLHandActionClassifier.evaluation(on:)()
{
  MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v4);
  if (!v0)
  {
    v1 = v4;
    v2 = v5;
    v3 = *(type metadata accessor for MLHandActionClassifier() + 28);
    sub_237ACE2C8();
    sub_2379DBC9C(v1, v2);
  }
}

void sub_237AD2F98(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for MLHandActionClassifier();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v86 - v13;
  memcpy(__dst, a1, 0x48uLL);
  v15 = __dst[1];
  if (!__dst[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    OUTLINED_FUNCTION_80();
    v31 = OUTLINED_FUNCTION_59_5(v29, v30);
    *&v97[0] = *(v11 + *(v31 + 28));
    *(inited + 48) = sub_237C0924C();
    *(inited + 56) = v32;
    OUTLINED_FUNCTION_80();
    *(inited + 64) = 0xD000000000000011;
    *(inited + 72) = v33;
    v34 = *(v11 + *(v31 + 40));
    *(inited + 80) = sub_237C08A6C();
    *(inited + 88) = v35;
    v36 = sub_237C085AC();
    v37 = NSFullUserName();
    v38 = sub_237C086EC();
    v40 = v39;

    *a2 = v38;
    a2[1] = v40;
    a2[2] = 0xD000000000000033;
    a2[3] = 0x8000000237C17C90;
    a2[4] = 0;
    a2[5] = 0;
    a2[6] = 49;
    a2[7] = 0xE100000000000000;
    a2[8] = v36;
    return;
  }

  v94 = __dst[0];
  v16 = __dst[8];
  v17 = a1[2];
  v98 = a1[1];
  v99 = v17;
  v100 = a1[3];
  if (!__dst[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_237C0B670;
    OUTLINED_FUNCTION_80();
    v44 = OUTLINED_FUNCTION_59_5(v42, v43);
    v95[0] = *(v11 + *(v44 + 28));
    memcpy(v97, a1, 0x48uLL);
    sub_237AD4878(v97, v96);
    *(v41 + 48) = sub_237C0924C();
    *(v41 + 56) = v45;
    OUTLINED_FUNCTION_80();
    *(v41 + 64) = 0xD000000000000011;
    *(v41 + 72) = v46;
    v47 = *(v11 + *(v44 + 40));
    *(v41 + 80) = sub_237C08A6C();
    *(v41 + 88) = v48;
    v49 = sub_237C085AC();
    goto LABEL_33;
  }

  v93 = __dst[1];
  sub_2379FC864(__dst, v97, &qword_27DE9ADE0, &unk_237C0BF90);

  v18 = sub_237AC9AB8(0xD000000000000016, 0x8000000237C1AEA0, v16);
  v92 = v11;
  if (!v19)
  {
    v50 = v2;
    v51 = v2 + *(v5 + 28);
    *&v97[0] = *(v51 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28));
    sub_237C0924C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v97[0] = v16;
    v21 = v50;
    goto LABEL_21;
  }

  v20 = v19;
  v91 = "Number of Labels";
  v21 = v2;
  v22 = v2 + *(v5 + 28);
  v23 = v18;
  v24 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v90 = *(v22 + *(v24 + 28));
  *&v97[0] = v90;
  if (v23 != sub_237C0924C() || v20 != v25)
  {
    v89 = v24;
    v27 = sub_237C0929C();

    if (v27)
    {
      goto LABEL_14;
    }

    if (qword_27DE9A608 != -1)
    {
      OUTLINED_FUNCTION_22_15();
    }

    v52 = sub_237C0829C();
    __swift_project_value_buffer(v52, qword_27DEACD98);
    v53 = OUTLINED_FUNCTION_15_22();
    sub_237AD48D4(v53, v14, v54);

    v55 = sub_237C0827C();
    v56 = sub_237C08C1C();

    LODWORD(v88) = v56;
    v57 = os_log_type_enabled(v55, v56);
    v58 = v89;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v87 = v55;
      v60 = v59;
      v86 = swift_slowAlloc();
      *&v97[0] = v86;
      *v60 = 136315394;
      v61 = sub_237BAAC6C(v23, v20, v97);

      *(v60 + 4) = v61;
      *(v60 + 12) = 2048;
      v62 = *&v14[*(v5 + 28) + *(v58 + 28)];
      OUTLINED_FUNCTION_3_44();
      sub_237AD4820();
      *(v60 + 14) = v62;
      v63 = v87;
      _os_log_impl(&dword_2379D3000, v87, v88, "Prediction window size %s is set incorrectly, change it to %ld frames.", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_63_4();
      OUTLINED_FUNCTION_63_4();
    }

    else
    {
      OUTLINED_FUNCTION_3_44();
      sub_237AD4820();
    }

    *&v97[0] = v90;
    sub_237C0924C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v97[0] = v16;
LABEL_21:
    sub_237B40C78();
    v49 = *&v97[0];
    goto LABEL_22;
  }

LABEL_14:

  v49 = v16;
LABEL_22:
  v64 = sub_237AC9AB8(0xD000000000000011, 0x8000000237C1AEC0, v49);
  if (v65)
  {
    v66 = v64;
    v67 = v65;
    v68 = v21 + *(v5 + 28);
    v91 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    v69 = *(v68 + *(v91 + 10));
    if (v66 == sub_237C08A6C() && v67 == v70)
    {
    }

    else
    {
      v90 = "Prediction Window Size";
      v72 = sub_237C0929C();

      if ((v72 & 1) == 0)
      {
        if (qword_27DE9A608 != -1)
        {
          OUTLINED_FUNCTION_22_15();
        }

        v76 = sub_237C0829C();
        __swift_project_value_buffer(v76, qword_27DEACD98);
        v77 = OUTLINED_FUNCTION_15_22();
        v78 = v92;
        sub_237AD48D4(v77, v92, v79);

        v80 = sub_237C0827C();
        v81 = sub_237C08C1C();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          LODWORD(v89) = v81;
          v83 = v82;
          v88 = swift_slowAlloc();
          *&v97[0] = v88;
          *v83 = 136315394;
          v84 = sub_237BAAC6C(v66, v67, v97);

          *(v83 + 4) = v84;
          *(v83 + 12) = 2048;
          v85 = *(v78 + *(v5 + 28) + *(v91 + 10));
          OUTLINED_FUNCTION_3_44();
          sub_237AD4820();
          *(v83 + 14) = v85;
          _os_log_impl(&dword_2379D3000, v80, v89, "Target frame rate %s is set incorrectly, change it to %f.", v83, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v88);
          OUTLINED_FUNCTION_63_4();
          OUTLINED_FUNCTION_63_4();
        }

        else
        {

          OUTLINED_FUNCTION_3_44();
          sub_237AD4820();
        }

        v15 = v93;
        sub_237C08A6C();
        swift_isUniquelyReferenced_nonNull_native();
        *&v97[0] = v49;
        OUTLINED_FUNCTION_34_1();
        sub_237B40C78();

        v49 = *&v97[0];
        goto LABEL_33;
      }
    }
  }

  else
  {
    v73 = v21 + *(v5 + 28);
    v74 = *(v73 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 40));
    sub_237C08A6C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v97[0] = v49;
    OUTLINED_FUNCTION_34_1();
    sub_237B40C78();

    v49 = *&v97[0];
  }

  v15 = v93;
LABEL_33:
  v75 = v94;
  *v96 = v94;
  *&v96[8] = v15;
  *&v96[16] = v98;
  *&v96[32] = v99;
  *&v96[48] = v100;
  *&v96[64] = v49;
  memcpy(a2, v96, 0x48uLL);
  *&v97[0] = v75;
  *(&v97[0] + 1) = v15;
  v97[1] = v98;
  v97[2] = v99;
  v97[3] = v100;
  *&v97[4] = v49;
  sub_237AD4878(v96, v95);
  sub_2379FC064(v97);
}

void sub_237AD38A8()
{
  OUTLINED_FUNCTION_74();
  v21 = v3;
  v4 = sub_237C07F1C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_237C05ADC();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  sub_2379F25FC();
  if (!v1)
  {
    v19 = *(v0 + 8);
    memcpy(v20, v21, sizeof(v20));
    sub_237BB0228(v20);
    sub_237C07E5C();
    (*(v7 + 8))(v12, v4);
    (*(v16 + 8))(v2, v13);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t type metadata accessor for MLHandActionClassifier()
{
  result = qword_27DE9C920;
  if (!qword_27DE9C920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLHandActionClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v30[1] = v3;
  v31 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = v30 - v19;
  v21 = sub_237C05ADC();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  memcpy(v32, v5, sizeof(v32));
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v9 + 104))(v14, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLHandActionClassifier.write(to:metadata:)();
  (*(v24 + 8))(v29, v21);
  OUTLINED_FUNCTION_73();
}

unint64_t MLHandActionClassifier.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLHandActionClassifier();
  v10 = v0 + v9[7];
  v11 = MLHandActionClassifier.ModelParameters.description.getter();
  v13 = v12;
  v14 = v1 + v9[8];
  ML19MLClassifierMetricsV16debugDescriptionSSvg_0 = _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  v17 = v16;
  sub_237AD48D4(v1 + v9[9], v8, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v9) = swift_getEnumCaseMultiPayload();
  sub_237AD4820();
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v11, v13);

  OUTLINED_FUNCTION_80();
  v22 = v18;
  MEMORY[0x2383DC360](ML19MLClassifierMetricsV16debugDescriptionSSvg_0, v17);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v22);

  if (v9 <= 1)
  {
    OUTLINED_FUNCTION_80();
    v23 = v19;
    v20 = OUTLINED_FUNCTION_90();
    MEMORY[0x2383DC360](v20);
    MEMORY[0x2383DC360](0xD000000000000020, v23);
  }

  return 0xD000000000000021;
}

id MLHandActionClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLHandActionClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237AD3EE4()
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 41) & ~v4;
  v7 = *(v6 + 64);
  sub_2379DBC9C(*(v0 + 16), *(v0 + 24));
  sub_2379DBC9C(*(v0 + 32), *(v0 + 40));
  v8 = (v0 + v5);
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (OUTLINED_FUNCTION_65_4() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource();
    switch(OUTLINED_FUNCTION_65_4())
    {
      case 0u:
        v14 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v14);
        v16 = *(v15 + 8);
        v16(v0 + v5, v14);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v18 = OUTLINED_FUNCTION_46_6(v17);
        (v16)(v18);
        OUTLINED_FUNCTION_105(v1[16]);

        OUTLINED_FUNCTION_105(v1[20]);

        OUTLINED_FUNCTION_105(v1[24]);

        v19 = v1[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v9 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v9);
        (*(v10 + 8))(v0 + v5);
        break;
      case 3u:
        OUTLINED_FUNCTION_34_9();
        v20 = v8[5];

        v21 = v8[7];
        goto LABEL_10;
      case 4u:
        OUTLINED_FUNCTION_34_9();
        v11 = v8[5];

        v12 = v8[7];

        v13 = v8[9];
        goto LABEL_10;
      case 5u:
        v22 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v22);
        (*(v23 + 8))(v0 + v5);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v24[12]);

        OUTLINED_FUNCTION_105(v24[16]);

        v19 = v24[20];
        goto LABEL_9;
      case 6u:
        v25 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v25);
        (*(v26 + 8))(v0 + v5);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v27[12]);

        OUTLINED_FUNCTION_105(v27[16]);

        OUTLINED_FUNCTION_105(v27[20]);

        v19 = v27[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v19);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_237AD41D4()
{
  v3 = OUTLINED_FUNCTION_46();
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters(v3);
  OUTLINED_FUNCTION_20(v4);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2379D9D48;

  return sub_237ACFC4C(v0, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_237AD42D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237AD4334()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2379D6854;

  return sub_237AD0D3C(v2);
}

uint64_t sub_237AD4400(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237AD44E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_237AD45A8()
{
  sub_2379FC328();
  if (v0 <= 0x3F)
  {
    _s8GraphCNNCMa(319);
    if (v1 <= 0x3F)
    {
      sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MLHandActionClassifier.ModelParameters(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MLClassifierMetrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_237AD4684(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237AD46C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_237AD4714()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_237C0855C();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_237C0593C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_237AD4820()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237AD48D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237AD4930()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v3 + 8))(v0 + v5, v1);
  v14 = (v0 + v11);
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (OUTLINED_FUNCTION_65_4() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource();
    switch(OUTLINED_FUNCTION_65_4())
    {
      case 0u:
        v20 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v20);
        v22 = *(v21 + 8);
        v22(v0 + v11, v20);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v24 = OUTLINED_FUNCTION_46_6(v23);
        (v22)(v24);
        OUTLINED_FUNCTION_105(*(((v4 + 16) & ~v4) + 0x40));

        OUTLINED_FUNCTION_105(*(((v4 + 16) & ~v4) + 0x50));

        OUTLINED_FUNCTION_105(*(((v4 + 16) & ~v4) + 0x60));

        v25 = *(((v4 + 16) & ~v4) + 0x70);
        goto LABEL_9;
      case 1u:
      case 2u:
        v15 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v15);
        (*(v16 + 8))(v0 + v11);
        break;
      case 3u:
        OUTLINED_FUNCTION_34_9();
        v26 = v14[5];

        v27 = v14[7];
        goto LABEL_10;
      case 4u:
        OUTLINED_FUNCTION_34_9();
        v17 = v14[5];

        v18 = v14[7];

        v19 = v14[9];
        goto LABEL_10;
      case 5u:
        v28 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v28);
        (*(v29 + 8))(v0 + v11);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v30[12]);

        OUTLINED_FUNCTION_105(v30[16]);

        v25 = v30[20];
        goto LABEL_9;
      case 6u:
        v31 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v31);
        (*(v32 + 8))(v0 + v11);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v33[12]);

        OUTLINED_FUNCTION_105(v33[16]);

        OUTLINED_FUNCTION_105(v33[20]);

        v25 = v33[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v25);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v10 | 7);
}

uint64_t OUTLINED_FUNCTION_19_21@<X0>(uint64_t a1@<X8>)
{

  return sub_237AD48D4(v2 + a1, v1, type metadata accessor for MLClassifierMetrics);
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_16(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

id OUTLINED_FUNCTION_33_11@<X0>(char a1@<W8>)
{
  *(v3 - 112) = a1;
  v5 = *(v2 + *(v1 + 40));

  return sub_2379F54E0(v3 - 120, 0, (v3 - 104), v5);
}

uint64_t OUTLINED_FUNCTION_34_9()
{
  sub_2379DBC9C(*v0, *(v0 + 8));
  v1 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_39_7()
{
  result = *(v0 - 120);
  v2 = *(v0 - 112);
  return result;
}

void OUTLINED_FUNCTION_42_7()
{
  sub_2379DBC9C(*(v3 - 160), v1);
  sub_2379DBC9C(v0, v2);
  v4 = *(v3 - 232);
  v5 = *(v3 - 144);

  sub_2379DBC84(v4, v5);
}

void OUTLINED_FUNCTION_57_5()
{

  sub_2379E9268(v0, v1, v2, 3);
}

void OUTLINED_FUNCTION_58_6()
{

  sub_2379E9268(v0, v2, v1, 3);
}

uint64_t OUTLINED_FUNCTION_59_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = a2;
  v6 = v3 + *(v4 + 28);

  return type metadata accessor for MLHandActionClassifier.ModelParameters(0);
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_63_4()
{

  JUMPOUT(0x2383DD950);
}

uint64_t OUTLINED_FUNCTION_65_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t static MLSoundClassifier.__Defaults.validation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A618 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v3 = __swift_project_value_buffer(v2, qword_27DE9C948);

  return sub_237A392BC(v3, a1);
}

uint64_t sub_237AD5080()
{
  v0 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  __swift_allocate_value_buffer(v0, qword_27DE9C948);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C948);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 256;

  return swift_storeEnumTagMultiPayload();
}

_BYTE *_s10__DefaultsVwst_1(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x237AD51C0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237AD521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for MLSoundClassifier.DataSource();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
    v12 = OUTLINED_FUNCTION_135(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(v3 + *(a3 + 36) + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_237AD5318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87();
  v8 = type metadata accessor for MLSoundClassifier.DataSource();
  v9 = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
    result = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 36) + 8) = -a2;
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t _s20PersistentParametersVMa_2()
{
  result = qword_27DE9C960;
  if (!qword_27DE9C960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237AD544C()
{
  result = type metadata accessor for MLSoundClassifier.DataSource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AD54F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s20PersistentParametersVMa_2();
  v7 = v6[6];
  v8 = v6[7];
  v9 = v6[8];
  v10 = a3 + v6[9];
  *v10 = 1;
  *(v10 + 8) = 1;
  OUTLINED_FUNCTION_7_30();
  v11 = OUTLINED_FUNCTION_55();
  sub_237AD94B0(v11, v12);
  v13 = v6[5];
  OUTLINED_FUNCTION_6_36();
  sub_237AD94B0(a2, a3 + v14);
  v15 = type metadata accessor for MLSoundClassifier.ModelParameters();
  *(a3 + v7) = *(a2 + v15[6]);
  v16 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  OUTLINED_FUNCTION_1_46();
  sub_237AD9458(a1, v17);
  *(a3 + v8) = v16;
  *(a3 + v9) = *(a2 + v15[5]);
  sub_2379F6D68(a2 + v15[7], v32);
  OUTLINED_FUNCTION_5_37();
  v19 = sub_237AD9458(a2, v18);
  if (!v33)
  {
    result = sub_2379D9054(v32, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_23_20(v19, v20, v21, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v22, v23, v24, v25, v29);
  OUTLINED_FUNCTION_16_18();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v27 = 1;
    v28 = 1;
    goto LABEL_6;
  }

  v27 = v30;
  v28 = v31;
LABEL_6:
  *v10 = v27;
  *(v10 + 8) = v28;
  return result;
}

void sub_237AD564C(uint64_t a1)
{
  v109 = a1;
  v123 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_49_4();
  v4 = type metadata accessor for MLSoundClassifier.DataSource();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v99 = v9 - v8;
  OUTLINED_FUNCTION_41_0();
  v10 = sub_237C05ADC();
  v110 = OUTLINED_FUNCTION_0(v10);
  v111 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_18_0();
  v98 = v14 - v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  v106 = &v98 - v17;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v18);
  v107 = &v98 - v19;
  OUTLINED_FUNCTION_41_0();
  v103 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v20 = OUTLINED_FUNCTION_4(v103);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  v104 = v23 - v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  v105 = &v98 - v26;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_46_7();
  v28 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_0();
  v102 = v32 - v33;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v98 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6C0;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v38 = sub_237AD7E98();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v115 = v39;
  *(inited + 48) = v38;
  *(inited + 72) = v39;
  *(inited + 80) = v2;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v40 = _s20PersistentParametersVMa_2();
  v41 = v40[5];
  OUTLINED_FUNCTION_6_36();
  v114 = v42;
  v100 = v43;
  sub_237AD94B0(v1 + v43, v3);
  v44 = v40[8];
  v45 = v40[9];
  v118 = v1;
  v46 = *(v1 + v44);
  v116 = v40;
  v117 = v46;
  v47 = *(v1 + v40[6]);
  v48 = (v1 + v45);
  v113 = *(v1 + v45);
  v112 = *(v1 + v45 + 8);
  v49 = &v36[v28[7]];
  *v49 = 0u;
  *(v49 + 1) = 0u;
  v50 = &v36[v28[8]];
  *v50 = 0;
  v50[8] = 1;
  *&v36[v28[9]] = 32;
  sub_237AD94B0(v3, v36);
  *&v36[v28[5]] = v46;
  v101 = v28;
  *&v36[v28[6]] = v47;
  v122 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *&v121 = v113;
  BYTE8(v121) = v112;
  sub_237AD9458(v3, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  sub_2379DAE54(&v121, v49);
  sub_237AD94B0(v36, v3);
  OUTLINED_FUNCTION_5_37();
  sub_237AD9458(v36, v51);
  v52 = sub_237AD85EC();
  v114 = v3;
  sub_237AD9458(v3, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(inited + 96) = v52;
  v53 = v115;
  *(inited + 120) = v115;
  *(inited + 128) = 0x70616C7265766FLL;
  *(inited + 136) = 0xE700000000000000;
  v54 = MEMORY[0x277D839F8];
  *(inited + 144) = v47;
  *(inited + 168) = v54;
  strcpy((inited + 176), "max_iterations");
  v55 = MEMORY[0x277D83B88];
  *(inited + 191) = -18;
  *(inited + 192) = v117;
  *(inited + 216) = v55;
  *(inited + 224) = 0x687469726F676C61;
  *(inited + 232) = 0xE90000000000006DLL;
  v56 = *v48;
  v113 = v48;
  v57 = *(v48 + 8);
  *&v121 = v56;
  BYTE8(v121) = v57;
  v58 = sub_237AD88DC();
  *(inited + 264) = v53;
  *(inited + 240) = v58;
  v59 = sub_237C085AC();
  v60 = *(v118 + *(v116 + 28));
  v122 = v54;
  *&v121 = v60;
  sub_2379DAD24(&v121, v120);
  swift_isUniquelyReferenced_nonNull_native();
  v119 = v59;
  sub_237B40B6C(v120, 0xD000000000000010, 0x8000000237C1AEE0);
  v61 = objc_opt_self();
  v62 = sub_237C0855C();

  *&v121 = 0;
  v63 = [v61 dataWithPropertyList:v62 format:200 options:0 error:&v121];

  v64 = v121;
  if (v63)
  {
    v65 = sub_237C05B7C();
    v67 = v66;

    v68 = v107;
    OUTLINED_FUNCTION_40_9();
    sub_237C05A2C();
    v69 = v108;
    sub_237C05B9C();
    if (!v69)
    {
      v73 = v111 + 8;
      v74 = v68;
      v75 = v110;
      v115 = *(v111 + 8);
      v116 = v67;
      v115(v74, v110);
      sub_237AD8AA8(&v121);
      v76 = BYTE8(v121);
      if (BYTE8(v121) == 255)
      {
        v111 = v73;
      }

      else
      {
        v77 = v121;
        BYTE8(v121) &= 1u;
        v78 = v106;
        OUTLINED_FUNCTION_19_5();
        sub_237C05A2C();
        MLDataTable.write(to:)(v78);
        v111 = v73;
        v115(v78, v75);
        sub_2379DBC84(v77, v76);
      }

      v79 = v114;
      sub_237AD94B0(v118 + v100, v114);
      v118 = *v113;
      v80 = *(v113 + 8);
      v82 = v101;
      v81 = v102;
      v83 = (v102 + v101[7]);
      *v83 = 0u;
      v83[1] = 0u;
      v84 = v81 + v82[8];
      *v84 = 0;
      *(v84 + 8) = 1;
      *(v81 + v82[9]) = 32;
      sub_237AD94B0(v79, v81);
      *(v81 + v82[5]) = v117;
      *(v81 + v82[6]) = v47;
      v122 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      *&v121 = v118;
      BYTE8(v121) = v80;
      OUTLINED_FUNCTION_0_46();
      sub_237AD9458(v79, v85);
      sub_2379DAE54(&v121, v83);
      v86 = v105;
      sub_237AD94B0(v81, v105);
      OUTLINED_FUNCTION_5_37();
      sub_237AD9458(v81, v87);
      v88 = v104;
      sub_237AD94B0(v86, v104);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_2_46();
          v89 = v99;
          sub_237AD950C(v88, v99);
          sub_237AD8AA8(&v121);
          OUTLINED_FUNCTION_1_46();
          sub_237AD9458(v89, v90);
          OUTLINED_FUNCTION_0_46();
          sub_237AD9458(v86, v91);
          v92 = BYTE8(v121);
          if (BYTE8(v121) == 255)
          {
            goto LABEL_13;
          }

          v93 = v121;
          BYTE8(v121) &= 1u;
          OUTLINED_FUNCTION_41_1();
          v94 = v98;
          sub_237C05A2C();
          MLDataTable.write(to:)(v94);
          v115(v94, v110);
          sub_2379E86D4(v65, v116);
          sub_2379DBC84(v93, v92);
          goto LABEL_15;
        case 2u:
          OUTLINED_FUNCTION_0_46();
          sub_237AD9458(v86, v95);
          v86 = v88;
          goto LABEL_12;
        default:
LABEL_12:
          OUTLINED_FUNCTION_0_46();
          sub_237AD9458(v86, v96);
LABEL_13:
          v70 = v65;
          v71 = v116;
          goto LABEL_14;
      }
    }

    (*(v111 + 8))(v68, v110);
    v70 = v65;
    v71 = v67;
LABEL_14:
    sub_2379E86D4(v70, v71);
  }

  else
  {
    v72 = v64;
    sub_237C0593C();

    swift_willThrow();
  }

LABEL_15:
  v97 = *MEMORY[0x277D85DE8];
}

uint64_t sub_237AD5F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136[4] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C980, &qword_237C11788);
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v125 = &v112 - v9;
  OUTLINED_FUNCTION_41_0();
  v127 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v10 = OUTLINED_FUNCTION_4(v127);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v124 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C988, &qword_237C11790);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v129 = &v112 - v19;
  OUTLINED_FUNCTION_41_0();
  v128 = type metadata accessor for MLSoundClassifier.DataSource();
  v20 = OUTLINED_FUNCTION_4(v128);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v126 = v24 - v23;
  OUTLINED_FUNCTION_41_0();
  v25 = sub_237C05ADC();
  v26 = OUTLINED_FUNCTION_0(v25);
  v131 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_0();
  v32 = v30 - v31;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v112 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v112 - v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_46_7();
  v40 = _s20PersistentParametersVMa_2();
  v41 = *(v40 + 36);
  v130 = a2;
  v42 = a2 + v41;
  *v42 = 1;
  *(v42 + 8) = 1;
  OUTLINED_FUNCTION_40_9();
  v43 = a1;
  sub_237C05A2C();
  v44 = v132;
  v45 = sub_237C05B1C();
  if (v44)
  {
    v47 = *(v131 + 8);
    v47(v43, v25);
    result = (v47)(v2, v25);
    goto LABEL_22;
  }

  v117 = v42;
  v116 = v36;
  v118 = v40;
  v115 = v32;
  v119 = v39;
  v114 = 0;
  v132 = a1;
  v49 = v131;
  v50 = *(v131 + 8);
  v51 = v45;
  v52 = v46;
  v50(v2, v25);
  v53 = objc_opt_self();
  v54 = sub_237C05B6C();
  *&v134 = 0;
  v55 = [v53 propertyListWithData:v54 options:0 format:0 error:&v134];

  v56 = v134;
  if (!v55)
  {
    v70 = v56;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v51, v52);
    result = (v50)(v132, v25);
    goto LABEL_22;
  }

  v120 = v51;
  v121 = v52;
  v122 = v50;
  v123 = v25;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v136, &v134);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  OUTLINED_FUNCTION_10_31();
  v58 = swift_dynamicCast();
  v59 = v132;
  if ((v58 & 1) == 0)
  {
    v71 = 0x8000000237C17D40;
    sub_2379E8AF0();
    v72 = OUTLINED_FUNCTION_6_2();
    v74 = 0xD000000000000037;
LABEL_20:
    *v73 = v74;
    v73[1] = v71;
    OUTLINED_FUNCTION_52(v72, v73);
    OUTLINED_FUNCTION_12_25();
    v122(v59, v123);
LABEL_21:
    result = __swift_destroy_boxed_opaque_existential_1(v136);
    goto LABEL_22;
  }

  v60 = v133;
  sub_237AC9A74(0x70616C7265766FLL, 0xE700000000000000, v133, &v134);
  if (!v135)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v61 = v133;
  sub_237AC9A74(0x726574695F78616DLL, 0xEE00736E6F697461, v60, &v134);
  if (!v135)
  {
LABEL_17:

    sub_2379D9054(&v134, &qword_27DE9A998, &unk_237C0C100);
LABEL_19:
    v71 = 0x8000000237C17D80;
    sub_2379E8AF0();
    v72 = OUTLINED_FUNCTION_6_2();
    v74 = 0xD000000000000034;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v62 = v133;
  sub_237AC9A74(0x687469726F676C61, 0xE90000000000006DLL, v60, &v134);
  if (!v135)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_237AD6B0C(v133, &v134);
  v63 = BYTE8(v134);
  if (BYTE8(v134) == 255)
  {

    v59 = v132;
    goto LABEL_19;
  }

  v112 = v134;
  v64 = OUTLINED_FUNCTION_40_9();
  v113 = v60;
  sub_237AC9A74(v64, v65, v60, v66);
  if (v135)
  {
    OUTLINED_FUNCTION_10_31();
    swift_dynamicCast();
    OUTLINED_FUNCTION_30_14();
    if (v68)
    {
      v69 = v133;
    }

    else
    {
      v69 = 0x3FEF333333333333;
    }
  }

  else
  {
    sub_2379D9054(&v134, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_30_14();
  }

  v76 = v117;
  v77 = v60[6];
  v78 = v60[8];
  *(v67 + v60[7]) = v69;
  *(v67 + v78) = v62;
  *(v67 + v77) = v61;
  *v76 = v112;
  *(v76 + 8) = v63 & 1;
  OUTLINED_FUNCTION_19_5();
  v79 = v132;
  sub_237C05A2C();
  sub_237AC9A74(0x676E696E69617274, 0xE800000000000000, v113, &v134);
  if (!v135)
  {

    sub_2379D9054(&v134, &qword_27DE9A998, &unk_237C0C100);
LABEL_32:
    sub_2379E8AF0();
    v89 = OUTLINED_FUNCTION_6_2();
    *v90 = 0xD00000000000002ELL;
    v90[1] = 0x8000000237C1AF80;
    OUTLINED_FUNCTION_52(v89, v90);
    OUTLINED_FUNCTION_12_25();
    v91 = v79;
    v93 = v122;
    v92 = v123;
    v122(v91, v123);
    v93(v25, v92);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_32;
  }

  v117 = v57;
  v80 = v133;
  v81 = v116;
  v82 = v123;
  v131 = *(v49 + 16);
  (v131)(v116, v25, v123);
  v83 = v81;
  v84 = v129;
  sub_237AD6D88(v80, v83, v129);
  if (__swift_getEnumTagSinglePayload(v84, 1, v128) == 1)
  {

    sub_2379D9054(v84, &qword_27DE9C988, &qword_237C11790);
    sub_2379E8AF0();
    v85 = OUTLINED_FUNCTION_6_2();
    *v86 = 0xD000000000000035;
    v86[1] = 0x8000000237C18010;
    OUTLINED_FUNCTION_52(v85, v86);
    OUTLINED_FUNCTION_12_25();
    v87 = v122;
    v122(v79, v82);
    v88 = OUTLINED_FUNCTION_33_12();
    v87(v88, v82);
    goto LABEL_21;
  }

  v94 = v126;
  sub_237AD950C(v84, v126);
  sub_237AD950C(v94, v130);
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_41_1();
  sub_237C05A2C();
  sub_237AC9A74(type metadata accessor for MLSoundClassifier.DataSource, 0xEA00000000006E6FLL, v113, &v134);

  v95 = v122;
  if (!v135)
  {
    OUTLINED_FUNCTION_12_25();
    v105 = v123;
    v95(v132, v123);
    v95(v115, v105);
    v106 = OUTLINED_FUNCTION_33_12();
    v95(v106, v105);
    __swift_destroy_boxed_opaque_existential_1(v136);
    sub_2379D9054(&v134, &qword_27DE9A998, &unk_237C0C100);
LABEL_39:
    v109 = v60[5];
    result = swift_storeEnumTagMultiPayload();
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_10_31();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_25();
    v107 = v123;
    v95(v132, v123);
    v95(v115, v107);
    v108 = OUTLINED_FUNCTION_33_12();
    v95(v108, v107);
    __swift_destroy_boxed_opaque_existential_1(v136);
    goto LABEL_39;
  }

  v96 = v133;
  v97 = v116;
  v98 = v115;
  v99 = v123;
  (v131)(v116, v115, v123);
  v100 = v125;
  sub_237AD7974(v96, v97, v125);
  if (__swift_getEnumTagSinglePayload(v100, 1, v127) == 1)
  {
    sub_2379D9054(v100, &qword_27DE9C980, &qword_237C11788);
    sub_2379E8AF0();
    v101 = OUTLINED_FUNCTION_6_2();
    *v102 = 0xD000000000000037;
    v102[1] = 0x8000000237C17FD0;
    OUTLINED_FUNCTION_52(v101, v102);
    OUTLINED_FUNCTION_12_25();
    v95(v132, v99);
    v95(v98, v99);
    v103 = OUTLINED_FUNCTION_33_12();
    v95(v103, v99);
    __swift_destroy_boxed_opaque_existential_1(v136);
    OUTLINED_FUNCTION_1_46();
    result = sub_237AD9458(v130, v104);
  }

  else
  {
    OUTLINED_FUNCTION_12_25();
    v95(v132, v99);
    v95(v98, v99);
    v110 = OUTLINED_FUNCTION_33_12();
    v95(v110, v99);
    __swift_destroy_boxed_opaque_existential_1(v136);
    v111 = v124;
    sub_237AD950C(v100, v124);
    result = sub_237AD950C(v111, v130 + *(v118 + 20));
  }

LABEL_22:
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237AD6B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v4 = OUTLINED_FUNCTION_19_22();
  v6 = sub_237ACAC78(v4, v5);
  if ((v7 & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = sub_2379FED88(*(a1 + 56) + 32 * v6, &v43);
  OUTLINED_FUNCTION_23_20(v8, v9, v10, MEMORY[0x277D837D0], v11, v12, v13, v14, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v15 = v39;
  sub_237AC9A74(0x6E6F6973726576, 0xE700000000000000, a1, &v43);
  if (!v44)
  {

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23_20(v16, v17, v18, MEMORY[0x277D83B88], v19, v20, v21, v22, v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:

    goto LABEL_19;
  }

  v23 = v40;
  sub_237AC9A74(0x6966697373616C63, 0xEA00000000007265, a1, &v43);

  if (!v44)
  {
LABEL_23:

    result = sub_2379D9054(&v43, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_23_20(v24, v25, v26, MEMORY[0x277D837D0], v27, v28, v29, v30, v40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v31 = v15 == 0x687369676776 && v42 == 0xE600000000000000;
  if (!v31 && (sub_237C0929C() & 1) == 0 || (v41 == 0xD000000000000012 ? (v32 = 0x8000000237C1AF20 == v42) : (v32 = 0), !v32 && (OUTLINED_FUNCTION_35_10() & 1) == 0))
  {
    v35 = v15 == 0xD000000000000013 && 0x8000000237C1AF00 == v42;
    if (v35 || (sub_237C0929C() & 1) != 0)
    {
      if (v41 == 0xD000000000000012 && 0x8000000237C1AF20 == v42)
      {

LABEL_38:
        v34 = 1;
        goto LABEL_21;
      }

      v37 = OUTLINED_FUNCTION_35_10();

      if (v37)
      {
        goto LABEL_38;
      }

LABEL_20:
      v23 = 0;
      v34 = -1;
      goto LABEL_21;
    }

    goto LABEL_35;
  }

  v34 = 0;
LABEL_21:
  *a2 = v23;
  *(a2 + 8) = v34;
  return result;
}

void sub_237AD6D88(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v114 - v16;
  v18 = type metadata accessor for MLSoundClassifier.DataSource();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v24 = (v22 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = (&v114 - v26);
  if (!*(a1 + 16) || (v28 = OUTLINED_FUNCTION_19_22(), v30 = sub_237ACAC78(v28, v29), (v31 & 1) == 0) || (sub_2379FED88(*(a1 + 56) + 32 * v30, &v134), OUTLINED_FUNCTION_24_19(), OUTLINED_FUNCTION_16_18(), (swift_dynamicCast() & 1) == 0))
  {
    v40 = *(v9 + 8);
    v41 = a2;
LABEL_15:
    v40(v41, v6);
    goto LABEL_16;
  }

  v130 = v27;
  v131 = a2;
  v32 = v158;
  v33 = v159;
  v34 = v158 == 0xD000000000000013 && 0x8000000237C17F40 == v159;
  if (v34 || (OUTLINED_FUNCTION_27_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_37_9();

    if (v136)
    {
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_16_18();
      if (swift_dynamicCast())
      {
        v35 = v130;
        sub_237C059BC();

        v36 = OUTLINED_FUNCTION_47_9();
        v37(v36, v6);
        goto LABEL_12;
      }

      goto LABEL_30;
    }

    v42 = OUTLINED_FUNCTION_13_22();
    goto LABEL_20;
  }

  v44 = v32 == 0x5F64656C6562616CLL && v33 == 0xED000073656C6966;
  if (v44 || (OUTLINED_FUNCTION_27_9() & 1) != 0)
  {

    OUTLINED_FUNCTION_37_9();

    v35 = v130;
    if (!v136)
    {
      v42 = OUTLINED_FUNCTION_47_9();
LABEL_20:
      v43(v42, v6);
LABEL_21:
      sub_2379D9054(&v134, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_16_18();
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_30:
      v47 = OUTLINED_FUNCTION_47_9();
      v48(v47, v6);
      goto LABEL_17;
    }

    sub_237C059BC();

    v45 = OUTLINED_FUNCTION_47_9();
    v46(v45, v6);
LABEL_12:
    swift_storeEnumTagMultiPayload();
LABEL_13:
    OUTLINED_FUNCTION_2_46();
    sub_237AD950C(v35, a3);
    v38 = a3;
    v39 = 0;
    goto LABEL_18;
  }

  v49 = v32 == 0x79625F73656C6966 && v33 == 0xEE006C6562616C5FLL;
  if (v49 || (OUTLINED_FUNCTION_27_9() & 1) != 0)
  {

    sub_237AC9A74(0x73656C6966, 0xE500000000000000, a1, &v134);

    v50 = v131;
    v35 = v130;
    if (!v136)
    {
      (*(v9 + 8))(v131, v6);
      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_16_18();
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v9 + 8))(v50, v6);
      goto LABEL_17;
    }

    v51 = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
    v52 = sub_237C0910C();
    v53 = *(v51 + 64);
    v115 = v51 + 64;
    v122 = v51;
    v54 = *(v51 + 32);
    OUTLINED_FUNCTION_5_33();
    v58 = v57 & v56;
    v60 = (v59 + 63) >> 6;
    v127 = v9 + 32;
    v120 = v61 + 64;
    v117 = a3;
    v118 = v18;
    v116 = v61;
    v119 = v60;
    v129 = v6;
    if (v58)
    {
      while (1)
      {
        v62 = __clz(__rbit64(v58));
        v63 = (v58 - 1) & v58;
LABEL_46:
        v66 = v62 | (v55 << 6);
        v123 = v63;
        v126 = v55;
        v67 = *(v122 + 56);
        v68 = (*(v122 + 48) + 16 * v66);
        v69 = v68[1];
        v124 = *v68;
        v125 = v66;
        v70 = *(v67 + 8 * v66);
        v71 = *(v70 + 16);
        if (v71)
        {
          break;
        }

        v73 = MEMORY[0x277D84F90];
LABEL_54:
        OUTLINED_FUNCTION_42_8((v125 >> 3) & 0x1FFFFFFFFFFFFFF8);
        v80 = (v78 + 16 * v79);
        *v80 = v124;
        v80[1] = v81;
        *(*(v52 + 56) + 8 * v79) = v73;
        v82 = *(v52 + 16);
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        v55 = v126;
        if (v83)
        {
          __break(1u);
          return;
        }

        *(v52 + 16) = v84;
        v60 = v119;
        v58 = v123;
        if (!v123)
        {
          goto LABEL_41;
        }
      }

      *&v134 = MEMORY[0x277D84F90];
      v121 = v69;

      v128 = v71;
      sub_237AC8AF4(0, v71, 0);
      v72 = 0;
      v73 = v134;
      v18 = (v70 + 40);
      while (v72 < *(v70 + 16))
      {
        v74 = v70;
        v75 = *(v18 - 1);
        v76 = *v18;

        sub_237C059BC();

        *&v134 = v73;
        a3 = *(v73 + 16);
        v77 = *(v73 + 24);
        if (a3 >= v77 >> 1)
        {
          sub_237AC8AF4(v77 > 1, a3 + 1, 1);
          v73 = v134;
        }

        ++v72;
        *(v73 + 16) = a3 + 1;
        (*(v9 + 32))(v73 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a3, v17, v129);
        v18 += 2;
        v70 = v74;
        if (v128 == v72)
        {

          a3 = v117;
          v18 = v118;
          v35 = v130;
          v52 = v116;
          v6 = v129;
          goto LABEL_54;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_41:
    v64 = v55;
    while (1)
    {
      v55 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v55 >= v60)
      {

        v87 = OUTLINED_FUNCTION_13_22();
        v88(v87, v6);
        *v24 = v52;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_46();
        sub_237AD950C(v24, v35);
        goto LABEL_13;
      }

      v65 = *(v115 + 8 * v55);
      ++v64;
      if (v65)
      {
        v62 = __clz(__rbit64(v65));
        v63 = (v65 - 1) & v65;
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  if (v32 == 0x7365727574616566 && v33 == 0xE800000000000000)
  {
  }

  else
  {
    v86 = OUTLINED_FUNCTION_27_9();

    if ((v86 & 1) == 0)
    {
      v41 = OUTLINED_FUNCTION_13_22();
      goto LABEL_15;
    }
  }

  (*(v9 + 16))(v14, v131, v6);
  LOBYTE(v134) = 1;
  *(&v134 + 1) = *v157;
  DWORD1(v134) = *&v157[3];
  *(&v134 + 1) = 44;
  v135 = 0xE100000000000000;
  v136 = 0;
  v137 = 0xE000000000000000;
  v138 = 92;
  v139 = 0xE100000000000000;
  v140 = 1;
  *v141 = *v156;
  *&v141[3] = *&v156[3];
  v142 = 34;
  v143 = 0xE100000000000000;
  v144 = 1;
  *v145 = *v155;
  *&v145[3] = *&v155[3];
  v146 = &unk_284ABEBF0;
  v147 = 10;
  v148 = 0xE100000000000000;
  v149 = 0;
  v150 = 0;
  v151 = 1;
  *v152 = *v154;
  *&v152[3] = *&v154[3];
  v153 = 0;
  MLDataTable.init(contentsOf:options:)(v14, &v134, &v158);
  v89 = v158;
  v90 = v159;
  sub_237AC9A74(0x5F65727574616566, 0xEE006E6D756C6F63, a1, &v134);
  if (!v136)
  {
    v102 = OUTLINED_FUNCTION_20_17();
    v103(v102);
    OUTLINED_FUNCTION_62_0();
LABEL_79:

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_16_18();
  if (swift_dynamicCast())
  {
    v91 = v158;
    v92 = v159;
    sub_237AC9A74(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1, &v134);
    if (!v136)
    {
LABEL_78:
      v106 = OUTLINED_FUNCTION_20_17();
      v107(v106);
      OUTLINED_FUNCTION_62_0();

      goto LABEL_79;
    }

    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_16_18();
    if (swift_dynamicCast())
    {
      v118 = v18;
      v93 = v158;
      v94 = v159;
      sub_237AC9A74(0x6574656D61726170, 0xEA00000000007372, a1, &v134);

      if (v136)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
        OUTLINED_FUNCTION_24_19();
        OUTLINED_FUNCTION_16_18();
        if (swift_dynamicCast())
        {
          sub_237AD8ECC(v158, &v134);
          v95 = OUTLINED_FUNCTION_13_22();
          v96(v95, v6);
          if (v137 != 255)
          {
            v97 = v136;
            v98 = *(&v134 + 1);
            v99 = v134;
            LOBYTE(v158) = v90;
            v133 = v135 & 1;
            v100 = v137 & 1;
            v132 = v137 & 1;
            v101 = v130;
            *v130 = v89;
            *(v101 + 8) = v90;
            v101[2] = v91;
            v101[3] = v92;
            v101[4] = v93;
            v101[5] = v94;
            v35 = v101;
            v101[6] = v99;
            v101[7] = v98;
            *(v101 + 64) = v133;
            v101[9] = v97;
            *(v101 + 80) = v100;
            v18 = v118;
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_62_0();
        }

        else
        {
          v112 = OUTLINED_FUNCTION_13_22();
          v113(v112, v6);
          OUTLINED_FUNCTION_62_0();
        }

LABEL_85:
        v18 = v118;
        goto LABEL_17;
      }

LABEL_82:
      v110 = OUTLINED_FUNCTION_13_22();
      v111(v110, v6);
      OUTLINED_FUNCTION_62_0();

      sub_2379D9054(&v134, &qword_27DE9A998, &unk_237C0C100);
      goto LABEL_85;
    }

    v108 = OUTLINED_FUNCTION_20_17();
    v109(v108);
    OUTLINED_FUNCTION_62_0();
  }

  else
  {
    v104 = OUTLINED_FUNCTION_20_17();
    v105(v104);
    OUTLINED_FUNCTION_62_0();
  }

LABEL_16:

LABEL_17:
  v38 = a3;
  v39 = 1;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v38, v39, 1, v18);
}

uint64_t sub_237AD7974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v5 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C988, &qword_237C11790);
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  v20 = type metadata accessor for MLSoundClassifier.DataSource();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v34 = OUTLINED_FUNCTION_19_22();
  sub_237AC9A74(v34, v35, a1, v36);
  if (!v76)
  {
    sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_16_18();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v68 = a3;
  v69 = v27;
  v38 = v71;
  v37 = v72;
  v39 = v71 == 1701736302 && v72 == 0xE400000000000000;
  if (!v39 && (OUTLINED_FUNCTION_38_0() & 1) == 0)
  {
    v48 = v38 == 0x756F735F61746164 && v37 == 0xEB00000000656372;
    if (v48 || (OUTLINED_FUNCTION_38_0() & 1) != 0)
    {

      v49 = OUTLINED_FUNCTION_19_5();
      sub_237AC9A74(v49, v50, a1, v51);

      a3 = v68;
      v27 = v69;
      if (!v76)
      {
        v54 = OUTLINED_FUNCTION_9_4();
        v55(v54);
        sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      OUTLINED_FUNCTION_16_18();
      if (swift_dynamicCast())
      {
        v53 = v70;
        v52 = v71;
        (*(v8 + 16))(v13, v70, v5);
        sub_237AD6D88(v52, v13, v19);
        (*(v8 + 8))(v53, v5);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
        {
          sub_2379D9054(v19, &qword_27DE9C988, &qword_237C11790);
          v44 = 1;
          v27 = v69;
          return __swift_storeEnumTagSinglePayload(a3, v44, 1, v27);
        }

        sub_237AD950C(v19, v26);
        sub_237AD950C(v26, v33);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v38 == 0x74696C7073 && v37 == 0xE500000000000000)
    {
    }

    else
    {
      v57 = OUTLINED_FUNCTION_38_0();

      if ((v57 & 1) == 0)
      {

        a3 = v68;
        v27 = v69;
        goto LABEL_13;
      }
    }

    v58 = OUTLINED_FUNCTION_19_5();
    sub_237AC9A74(v58, v59, a1, v60);

    v27 = v69;
    if (!v76)
    {
      v65 = OUTLINED_FUNCTION_9_4();
      v66(v65);
      sub_2379D9054(&v73, &qword_27DE9A998, &unk_237C0C100);
      v44 = 1;
      a3 = v68;
      return __swift_storeEnumTagSinglePayload(a3, v44, 1, v27);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    OUTLINED_FUNCTION_16_18();
    v61 = swift_dynamicCast();
    a3 = v68;
    if (v61)
    {
      sub_237A283AC(v71, &v73);
      v62 = OUTLINED_FUNCTION_9_4();
      v63(v62);
      if ((v75 & 1) == 0)
      {
        v64 = v74;
        *v33 = v73;
        *(v33 + 16) = v64;
        *(v33 + 17) = HIBYTE(v64) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v44 = 1;
      return __swift_storeEnumTagSinglePayload(a3, v44, 1, v27);
    }

LABEL_13:
    v45 = OUTLINED_FUNCTION_9_4();
    v46(v45);
    goto LABEL_14;
  }

  v40 = OUTLINED_FUNCTION_9_4();
  v41(v40);
  a3 = v68;
LABEL_9:
  v27 = v69;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  v42 = OUTLINED_FUNCTION_55();
  sub_237AD950C(v42, v43);
  v44 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v44, 1, v27);
}

uint64_t sub_237AD7E98()
{
  v3 = v0;
  v103 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_0(v103);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v101 = v10 - v9;
  OUTLINED_FUNCTION_41_0();
  v11 = type metadata accessor for MLSoundClassifier.DataSource();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_7_30();
  sub_237AD94B0(v3, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v84 = OUTLINED_FUNCTION_22_16();
      v85(v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      v20 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v23 = MEMORY[0x277D837D0];
      strcpy((v20 + 48), "labeled_files");
      *(v20 + 62) = -4864;
      goto LABEL_24;
    case 2u:
      v38 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v39 = swift_initStackObject();
      v40 = OUTLINED_FUNCTION_0_8(v39, xmmword_237C0B670);
      v41 = MEMORY[0x277D837D0];
      strcpy(&v40[3], "files_by_label");
      v40[3].n128_u8[15] = -18;
      v40[4].n128_u64[1] = v41;
      v40[5].n128_u64[0] = 0x73656C6966;
      v90 = v40;
      v40[5].n128_u64[1] = 0xE500000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
      v42 = sub_237C0910C();
      v43 = 0;
      v44 = *(v38 + 8);
      v91 = v38 + 64;
      v45 = v38[32];
      OUTLINED_FUNCTION_5_33();
      i = v47 & v46;
      v50 = (v49 + 63) >> 6;
      v99 = (v6 + 8);
      v95 = v6;
      v93 = v51;
      v94 = v38;
      v92 = v50;
      if ((v47 & v46) != 0)
      {
        goto LABEL_5;
      }

      break;
    case 3u:
      v27 = *(v17 + 24);
      v29 = *(v17 + 40);
      v102 = *(v17 + 32);
      v104 = *(v17 + 16);
      v75 = *(v17 + 48);
      v76 = *(v17 + 56);
      v77 = *(v17 + 64);
      v78 = *(v17 + 72);
      v79 = *(v17 + 80);
      sub_2379DBC9C(*v17, *(v17 + 8));
      goto LABEL_22;
    case 4u:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
      v25 = (v17 + v24[12]);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v17 + v24[16]);
      v29 = v28[1];
      v102 = *v28;
      v104 = v26;
      v30 = v17 + v24[20];
      v31 = *v30;
      v32 = *(v30 + 8);
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
      v35 = *(v30 + 32);
      v36 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v36);
      (*(v37 + 8))(v17);
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v80 = swift_initStackObject();
      v81 = OUTLINED_FUNCTION_0_8(v80, xmmword_237C0BC00);
      v82 = MEMORY[0x277D837D0];
      v81[3].n128_u64[0] = 0x7365727574616566;
      v81[3].n128_u64[1] = 0xE800000000000000;
      v81[4].n128_u64[1] = v82;
      strcpy(&v81[5], "feature_column");
      v81[5].n128_u8[15] = -18;
      v81[6].n128_u64[0] = v104;
      v81[6].n128_u64[1] = v27;
      v81[7].n128_u64[1] = v82;
      strcpy(&v81[8], "label_column");
      v81[8].n128_u8[13] = 0;
      v81[8].n128_u16[7] = -5120;
      v81[9].n128_u64[0] = v102;
      v81[9].n128_u64[1] = v29;
      v81[10].n128_u64[1] = v82;
      v81[11].n128_u64[0] = 0x6574656D61726170;
      v81[11].n128_u64[1] = 0xEA00000000007372;
      v83 = sub_237AD8D80();
      v80[13].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v80[12].n128_u64[0] = v83;
      OUTLINED_FUNCTION_29_10();
      return sub_237C085AC();
    default:
      v18 = OUTLINED_FUNCTION_22_16();
      v19(v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v20 = swift_initStackObject();
      inited = v20;
      *(v20 + 16) = xmmword_237C0B670;
      v22 = 0xE400000000000000;
      *(v20 + 32) = 1684957547;
      *(v20 + 40) = 0xE400000000000000;
      v23 = MEMORY[0x277D837D0];
      *(v20 + 48) = 0xD000000000000013;
      *(v20 + 56) = 0x8000000237C17F40;
LABEL_24:
      *(v20 + 72) = v23;
      *(v20 + 80) = 1752457584;
      *(v20 + 88) = v22;
      v86 = sub_237C05A9C();
      inited[7].n128_u64[1] = v23;
      inited[6].n128_u64[0] = v86;
      inited[6].n128_u64[1] = v87;
      v88 = sub_237C085AC();
      (*(v1 + 8))(v2, v6);
      return v88;
  }

LABEL_6:
  v53 = v43;
  while (1)
  {
    v43 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v43 >= v50)
    {
      break;
    }

    v54 = *&v91[8 * v43];
    ++v53;
    if (v54)
    {
      v52 = __clz(__rbit64(v54));
      for (i = (v54 - 1) & v54; ; i &= i - 1)
      {
        v55 = v52 | (v43 << 6);
        v56 = (*(v38 + 6) + 16 * v55);
        v57 = v56[1];
        v98 = *v56;
        v58 = *(*(v38 + 7) + 8 * v55);
        v59 = *(v58 + 16);
        if (v59)
        {
          v96 = v55;
          v97 = v43;
          v105 = MEMORY[0x277D84F90];

          sub_237AC8A74();
          v60 = v58;
          v61 = v105;
          v62 = v60 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
          v100 = *(v6 + 72);
          v63 = *(v6 + 16);
          do
          {
            v63(v101, v62, v103);
            v64 = sub_237C05A9C();
            v66 = v65;
            (*v99)(v101, v103);
            v67 = *(v105 + 16);
            if (v67 >= *(v105 + 24) >> 1)
            {
              sub_237AC8A74();
            }

            *(v105 + 16) = v67 + 1;
            v68 = v105 + 16 * v67;
            *(v68 + 32) = v64;
            *(v68 + 40) = v66;
            v62 += v100;
            --v59;
          }

          while (v59);

          v38 = v94;
          v6 = v95;
          v50 = v92;
          v42 = v93;
          v43 = v97;
          v55 = v96;
        }

        else
        {

          v61 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_42_8((v55 >> 3) & 0x1FFFFFFFFFFFFFF8);
        v70 = (v69 + 16 * v55);
        *v70 = v98;
        v70[1] = v71;
        *(*(v42 + 56) + 8 * v55) = v61;
        v72 = *(v42 + 16);
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          break;
        }

        *(v42 + 16) = v74;
        if (!i)
        {
          goto LABEL_6;
        }

LABEL_5:
        v52 = __clz(__rbit64(i));
      }

LABEL_29:
      __break(1u);
      JUMPOUT(0x237AD85D8);
    }
  }

  v90[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  v90[6].n128_u64[0] = v42;
  return sub_237C085AC();
}

uint64_t sub_237AD85EC()
{
  v0 = type metadata accessor for MLSoundClassifier.DataSource();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v6 = (v5 - v4);
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_6_36();
  v14 = OUTLINED_FUNCTION_55();
  sub_237AD94B0(v14, v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_46();
      sub_237AD950C(v13, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      goto LABEL_7;
    case 2u:
      *v6 = *v13;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
LABEL_7:
      inited = swift_initStackObject();
      v28 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      OUTLINED_FUNCTION_34_0(v28, 0x756F735F61746164);
      v29 = sub_237AD7E98();
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      inited[6].n128_u64[0] = v29;
      OUTLINED_FUNCTION_29_10();
      v26 = sub_237C085AC();
      OUTLINED_FUNCTION_1_46();
      sub_237AD9458(v6, v30);
      return v26;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v23 = swift_initStackObject();
      v24 = OUTLINED_FUNCTION_0_8(v23, xmmword_237C0B660);
      v24[4].n128_u64[1] = MEMORY[0x277D837D0];
      v24[3].n128_u64[0] = 1701736302;
      v24[3].n128_u64[1] = v25;
      return sub_237C085AC();
    default:
      v16 = *v13;
      v17 = *(v13 + 8);
      v18 = *(v13 + 16);
      v19 = *(v13 + 17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v20 = swift_initStackObject();
      v21 = OUTLINED_FUNCTION_0_8(v20, xmmword_237C0B670);
      OUTLINED_FUNCTION_34_0(v21, 0x74696C7073);
      v22 = sub_237A28200();
      v20[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v20[6].n128_u64[0] = v22;
      OUTLINED_FUNCTION_29_10();
      return sub_237C085AC();
  }
}

uint64_t sub_237AD88DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D837D0];
  sub_237C085AC();
  v16 = v3;
  if (v2)
  {
    *&v15 = 0xD000000000000013;
    *(&v15 + 1) = 0x8000000237C1AF00;
    sub_2379DAD24(&v15, v14);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_21();
    sub_237B40B6C(v4, 1684957547, 0xE400000000000000);
    v16 = v3;
    OUTLINED_FUNCTION_45_5();
    *&v15 = v5;
    *(&v15 + 1) = v6;
    sub_2379DAD24(&v15, v14);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_21();
    v8 = 1701869940;
  }

  else
  {
    OUTLINED_FUNCTION_44_9();
    *&v15 = v9;
    *(&v15 + 1) = v10;
    sub_2379DAD24(&v15, v14);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_21();
    v8 = 1684957547;
  }

  sub_237B40B6C(v7, v8, 0xE400000000000000);
  v16 = MEMORY[0x277D83B88];
  *&v15 = v1;
  sub_2379DAD24(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_14_21();
  sub_237B40B6C(v11, 0x6E6F6973726576, 0xE700000000000000);
  v16 = v3;
  *&v15 = 0xD000000000000012;
  *(&v15 + 1) = 0x8000000237C1AF20;
  sub_2379DAD24(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B40B6C(v14, 0x6966697373616C63, 0xEA00000000007265);
  return v13;
}

uint64_t sub_237AD8AA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_237C05DBC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for MLSoundClassifier.DataSource();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_7_30();
  sub_237AD94B0(v2, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      result = sub_237AD9458(v22, type metadata accessor for MLSoundClassifier.DataSource);
      goto LABEL_5;
    case 3u:
      v34 = *v22;
      v35 = *(v22 + 8);
      v36 = *(v22 + 24);
      v37 = *(v22 + 40);

      *a1 = v34;
      *(a1 + 8) = v35;
      break;
    case 4u:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
      v27 = (v22 + *(v26 + 48));
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v22 + *(v26 + 64) + 8);

      (*(v7 + 32))(v15, v22, v4);
      sub_237B3C658();

      v31 = *(v7 + 16);
      v32 = OUTLINED_FUNCTION_55();
      v33(v32);
      sub_237A70684(v12, 0, &v40);
      result = (*(v7 + 8))(v15, v4);
      v38 = v41;
      *a1 = v40;
      *(a1 + 8) = v38;
      break;
    default:
      v23 = sub_237C05ADC();
      OUTLINED_FUNCTION_4(v23);
      result = (*(v24 + 8))(v22);
LABEL_5:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237AD8D80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_237C0B680;
  strcpy((inited + 32), "overlap_factor");
  *(inited + 47) = -18;
  v8 = MEMORY[0x277D839F8];
  *(inited + 48) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000237C1AEE0;
  v9 = 0.975;
  if (!v3)
  {
    v9 = v2;
  }

  *(inited + 96) = v9;
  *(inited + 120) = v8;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000237C1AF40;
  v10 = sub_237AD9058();
  *(v7 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  *(v7 + 144) = v10;
  return sub_237C085AC();
}

uint64_t sub_237AD8ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237AC9A74(0x5F70616C7265766FLL, 0xEE00726F74636166, a1, &v11);
  if (!v12)
  {
    goto LABEL_7;
  }

  if ((OUTLINED_FUNCTION_25_17() & 1) == 0)
  {
LABEL_6:

    goto LABEL_9;
  }

  sub_237AC9A74(0xD000000000000011, 0x8000000237C1AF40, a1, &v11);
  if (!v12)
  {
LABEL_7:

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_25_17() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_237AD91E0(v10, &v11);
  v4 = BYTE8(v11);
  if (BYTE8(v11) == 255)
  {
    goto LABEL_6;
  }

  v6 = v11;
  v7 = OUTLINED_FUNCTION_40_9();
  sub_237AC9A74(v7, v8, a1, v9);

  if (!v12)
  {
LABEL_8:
    result = sub_2379D9054(&v11, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_25_17();
  if (result)
  {
    *a2 = v10;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v4 & 1;
    return result;
  }

LABEL_9:
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = -1;
  return result;
}

uint64_t sub_237AD9058()
{
  v1 = *v0;
  if (v0[1])
  {
    sub_237C085AC();
    OUTLINED_FUNCTION_39_8();
    v2 = OUTLINED_FUNCTION_18_24();
    sub_237B40B6C(v2, 1684957547, 0xE400000000000000);
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_39_8();
    v3 = OUTLINED_FUNCTION_18_24();
    sub_237B40B6C(v3, 1701869940, 0xE400000000000000);
    OUTLINED_FUNCTION_39_8();
    v4 = OUTLINED_FUNCTION_18_24();
    sub_237B40B6C(v4, 0x6E6F697369766572, 0xE800000000000000);
    return v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 1684957547;
    *(inited + 40) = 0xE400000000000000;
    OUTLINED_FUNCTION_44_9();
    v7[6] = v8;
    v7[7] = v9;
    v7[9] = v10;
    v7[10] = 0x6E6F697369766572;
    v7[15] = MEMORY[0x277D83B88];
    v7[11] = 0xE800000000000000;
    v7[12] = v1;
    return sub_237C085AC();
  }
}

uint64_t sub_237AD91E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237AC9A74(0x6E6F697369766572, 0xE800000000000000, a1, &v42);
  if (v43)
  {
    OUTLINED_FUNCTION_23_20(v4, v5, v6, MEMORY[0x277D83B88], v7, v8, v9, v10, v38);
    if (swift_dynamicCast())
    {
      v11 = v38;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2379D9054(&v42, &qword_27DE9A998, &unk_237C0C100);
  }

  v11 = 1;
LABEL_6:
  v12 = OUTLINED_FUNCTION_19_22();
  sub_237AC9A74(v12, v13, a1, v14);
  if (!v43)
  {
    sub_2379D9054(&v42, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_23_20(v15, v16, v17, MEMORY[0x277D837D0], v18, v19, v20, v21, v38);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v22 = v39 == 0x687369676776 && v41 == 0xE600000000000000;
  if (!v22 && (sub_237C0929C() & 1) == 0)
  {
    if (v39 == 0xD000000000000011 && 0x8000000237C1AF60 == v41)
    {

      goto LABEL_25;
    }

    v26 = sub_237C0929C();

    if (v26)
    {
LABEL_25:
      sub_237AC9A74(1701869940, 0xE400000000000000, a1, &v42);

      if (v43)
      {
        OUTLINED_FUNCTION_23_20(v27, v28, v29, MEMORY[0x277D837D0], v30, v31, v32, v33, v39);
        if (swift_dynamicCast())
        {
          v34 = v40;
          v35 = v41;
LABEL_30:
          if (v34 == 0x646E756F73 && v35 == 0xE500000000000000)
          {

LABEL_37:
            v24 = 1;
            goto LABEL_17;
          }

          v37 = sub_237C0929C();

          if (v37)
          {
            goto LABEL_37;
          }

LABEL_16:
          v11 = 0;
          v24 = -1;
          goto LABEL_17;
        }
      }

      else
      {
        sub_2379D9054(&v42, &qword_27DE9A998, &unk_237C0C100);
      }

      v35 = 0xE500000000000000;
      v34 = 0x646E756F73;
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v24 = 0;
LABEL_17:
  *a2 = v11;
  *(a2 + 8) = v24;
  return result;
}

uint64_t sub_237AD9458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237AD94B0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237AD950C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_25()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);

  return sub_2379E86D4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_22_16()
{
  v2 = *(v1 + 32);
  result = *(v0 + 128);
  v4 = *(v0 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_9()
{

  return sub_237C0929C();
}

void OUTLINED_FUNCTION_30_14()
{
  v1 = *(v0 - 192);
  v2 = *(v0 - 280);
  v3 = *(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return sub_237C0929C();
}

double OUTLINED_FUNCTION_37_9()
{

  return sub_237AC9A74(1752457584, 0xE400000000000000, v0, (v1 - 280));
}

uint64_t OUTLINED_FUNCTION_39_8()
{
  sub_2379DAD24((v0 - 80), (v0 - 112));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_237AD982C()
{
  v1 = *(v0 + 16);
  sub_237B1A25C(sub_237AD9B00);
}

uint64_t sub_237AD988C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_237AD98C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_237A9D194();
  v4 = *(*(a1 + 24) + 16);
  sub_237A9D310(v4);
  v5 = *(a1 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = sub_237C074BC();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *(a1 + 24) = v5;
  return swift_endAccess();
}

BOOL sub_237AD99A4()
{
  v0 = sub_237C0749C();
  sub_237AC9A5C(v0, &v3);

  v1 = v4 != 0;
  sub_237AD9A98(&v3);
  return v1;
}

uint64_t sub_237AD9A18()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_237AD9A40()
{
  sub_237AD9A18();

  return swift_deallocClassInstance();
}

uint64_t sub_237AD9A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C998, &qword_237C117C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLImageClassifier.prediction(from:)(CGImageRef from)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_4_43();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  sub_237AD9BC4(v3, from);
  OUTLINED_FUNCTION_5_38();
  v8 = v2;
  v9 = v1;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id sub_237AD9BC4(uint64_t a1, id a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v58 - v8;
  v60 = sub_237C05ADC();
  v10 = OUTLINED_FUNCTION_0(v60);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v58 - v18;
  sub_2379E8EE0(0, &qword_27DE9C9A0, 0x277CE2C38);
  v20 = sub_237B1EED0(*v2);
  if (v3)
  {
    goto LABEL_18;
  }

  v21 = v20;
  v59 = [objc_allocWithZone(MEMORY[0x277CE2C40]) initWithModel_];
  sub_237A6FAB8(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v60) == 1)
  {
    sub_237A6FB28(v9);
    if (!a2)
    {
      sub_2379E8AF0();
      v53 = swift_allocError();
      *v54 = 0xD000000000000019;
      v54[1] = 0x8000000237C1B020;
      OUTLINED_FUNCTION_1_11(v53, v54);

      goto LABEL_18;
    }

    type metadata accessor for VNImageOption(0);
    OUTLINED_FUNCTION_0_47();
    sub_237ADABBC(v22, v23);
    v24 = a2;
    sub_237C085AC();
    v25 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    v26 = sub_237B22EA0(v24);
  }

  else
  {
    v58 = v21;
    v27 = v12;
    (*(v12 + 32))(v19, v9, v60);
    v28 = [objc_opt_self() defaultManager];
    sub_237C05A9C();
    v29 = sub_237C086BC();

    v30 = [v28 fileExistsAtPath_];

    if ((v30 & 1) == 0)
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_237C08EDC();

      v61 = 0xD000000000000012;
      v62 = 0x8000000237C1B040;
      sub_237ADABBC(&qword_27DE9B3B8, MEMORY[0x277CC9260]);
      a2 = v60;
      v48 = sub_237C0924C();
      MEMORY[0x2383DC360](v48);

      MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C1B060);
      v49 = v61;
      v50 = v62;
      sub_2379E8AF0();
      v51 = swift_allocError();
      *v52 = v49;
      v52[1] = v50;
      OUTLINED_FUNCTION_1_11(v51, v52);

      (*(v27 + 8))(v19, a2);
      goto LABEL_18;
    }

    v31 = v60;
    (*(v27 + 16))(v17, v19, v60);
    type metadata accessor for VNImageOption(0);
    OUTLINED_FUNCTION_0_47();
    sub_237ADABBC(v32, v33);
    sub_237C085AC();
    v34 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    v26 = sub_237ADAA08(v17);
    (*(v27 + 8))(v19, v31);
    v21 = v58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_237C10D30;
  v36 = v59;
  *(v35 + 32) = v59;
  sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
  v37 = v36;
  v38 = v26;
  v39 = sub_237C0892C();

  v61 = 0;
  v40 = [v38 performRequests:v39 error:&v61];

  a2 = v61;
  if (!v40)
  {
    v47 = v61;

    sub_237C0593C();
LABEL_17:
    swift_willThrow();

    goto LABEL_18;
  }

  v41 = v61;
  v42 = sub_237B233B8(v37);
  if (!v42 || (v43 = sub_237B1ED90(v42), , !v43))
  {
    a2 = 0x8000000237C1AFE0;
    sub_2379E8AF0();
    swift_allocError();
    *v55 = 0xD000000000000033;
    *(v55 + 8) = 0x8000000237C1AFE0;
    *(v55 + 16) = 0u;
    *(v55 + 32) = 0u;
    *(v55 + 48) = 0;
    goto LABEL_17;
  }

  sub_237A254DC(0, (v43 & 0xC000000000000001) == 0, v43);
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x2383DCAF0](0, v43);
  }

  else
  {
    v44 = *(v43 + 4);
  }

  v45 = v44;

  v46 = [v45 identifier];

  a2 = sub_237C086EC();
LABEL_18:
  v56 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t MLImageClassifier.prediction(from:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OUTLINED_FUNCTION_4_43();
  (*(*(v6 - 8) + 16))(v2, a1, v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  sub_237AD9BC4(v2, 0);
  OUTLINED_FUNCTION_5_38();
  return v1;
}

uint64_t *MLImageClassifier.predictions(from:)(uint64_t a1)
{
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = v1;
    v29 = MEMORY[0x277D84F90];
    v14 = &v29;
    sub_237C08FCC();
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v27 = v15 - 8;
    v28 = v16;
    v26 = *(v15 + 56);
    while (1)
    {
      v28(v11, v17, v4);
      sub_237C06ACC();
      if (v2)
      {
        break;
      }

      v18 = OUTLINED_FUNCTION_2_47();
      v19(v18);
      v14 = &v29;
      sub_237C08F8C();
      v20 = v15;
      v21 = *(v29 + 16);
      sub_237C08FEC();
      v15 = v20;
      sub_237C08FFC();
      sub_237C08F9C();
      v17 += v26;
      if (!--v12)
      {
        v13 = v29;
        goto LABEL_6;
      }
    }

    v22 = OUTLINED_FUNCTION_2_47();
    v23(v22);
  }

  else
  {
LABEL_6:
    v14 = sub_237ADA570(v13);
  }

  return v14;
}

id sub_237ADA570(uint64_t a1)
{
  sub_2379E8EE0(0, &qword_27DE9C9A0, 0x277CE2C38);
  result = sub_237B1EED0(*v1);
  if (!v2)
  {
    v5 = result;
    v8 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x2383DD1C0]();
    sub_237ADA644(v5, a1, &v8, &v7);
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  return result;
}

void sub_237ADA644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v35 = [objc_allocWithZone(MEMORY[0x277CE2C40]) initWithModel_];
  v36 = sub_237A254D8(a2);
  v6 = 0;
  v34 = a2 & 0xC000000000000001;
  while (1)
  {
    if (v36 == v6)
    {

      goto LABEL_18;
    }

    sub_237A254DC(v6, v34 == 0, a2);
    if (v34)
    {
      v7 = MEMORY[0x2383DCAF0](v6, a2);
    }

    else
    {
      v7 = *(a2 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    type metadata accessor for VNImageOption(0);
    sub_237ADABBC(&qword_27DE9A7C0, type metadata accessor for VNImageOption);
    v9 = v8;
    sub_237C085AC();
    v10 = objc_allocWithZone(MEMORY[0x277CE2D50]);
    v11 = sub_237ADAB00(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_237C10D30;
    *(v12 + 32) = v35;
    sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
    v13 = v35;
    v14 = sub_237C0892C();

    v37[0] = 0;
    v15 = [v11 performRequests:v14 error:v37];

    if (!v15)
    {
      break;
    }

    v16 = v37[0];
    v17 = sub_237B233B8(v13);
    if (!v17 || (v18 = sub_237B1ED90(v17), , !v18))
    {
      sub_2379E8AF0();
      v28 = swift_allocError();
      *v29 = 0xD000000000000033;
      *(v29 + 8) = 0x8000000237C1AFE0;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0;
      v30 = v9;
      goto LABEL_17;
    }

    sub_237A254DC(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x2383DCAF0](0, v18);
    }

    else
    {
      v19 = *(v18 + 4);
    }

    v20 = v19;

    v21 = [v20 identifier];

    v22 = sub_237C086EC();
    v24 = v23;

    sub_237A9D104();
    v25 = *(*a3 + 16);
    sub_237A9D220(v25);

    v26 = *a3;
    *(v26 + 16) = v25 + 1;
    v27 = v26 + 16 * v25;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    ++v6;
  }

  v31 = v37[0];

  v28 = sub_237C0593C();
  v30 = v11;
  v11 = v9;
LABEL_17:
  swift_willThrow();

  *a4 = v28;
LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
}

id sub_237ADAA08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_237C059EC();
  type metadata accessor for VNImageOption(0);
  OUTLINED_FUNCTION_0_47();
  sub_237ADABBC(v5, v6);
  v7 = sub_237C0855C();

  v8 = [v2 initWithURL:v4 options:v7];

  v9 = sub_237C05ADC();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id sub_237ADAB00(void *a1)
{
  type metadata accessor for VNImageOption(0);
  sub_237ADABBC(&qword_27DE9A7C0, type metadata accessor for VNImageOption);
  v3 = sub_237C0855C();

  v4 = [v1 initWithCIImage:a1 options:v3];

  return v4;
}

uint64_t sub_237ADABBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_43()
{

  return sub_237C05ADC();
}

uint64_t OUTLINED_FUNCTION_5_38()
{

  return sub_237A6FB28(v0);
}

void MLDataTable.group<A>(columnsNamed:aggregators:)(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v72 = a2;
  v61 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v66 = &v59 - v12;
  v64 = *v4;
  v62 = *(v4 + 8);
  v13 = MEMORY[0x2383DDAC0](0);
  if (!v13)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = v13;
  type metadata accessor for CMLSequence();
  inited = swift_initStackObject();
  v60 = v14;
  *(inited + 16) = v14;
  v68 = inited;
  *(inited + 24) = 1;
  v16 = (a1 + 40);
  v17 = *(a1 + 16) + 1;
  while (--v17)
  {
    v18 = *(v16 - 1);
    v19 = *v16;
    type metadata accessor for CMLFeatureValue();
    swift_bridgeObjectRetain_n();
    v20 = sub_237A2E7CC();
    v16 += 2;

    sub_237A2DE9C(v20);
  }

  v21 = MEMORY[0x2383DDB50](0);
  if (!v21)
  {
    goto LABEL_48;
  }

  v22 = v21;
  type metadata accessor for CMLAggregator();
  v23 = swift_initStackObject();
  *(v23 + 16) = v22;
  (*(v7 + 16))(v10, v72, a3);
  sub_237C0885C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_237C08D7C();
    v24 = v73;
    if (!v73)
    {
      break;
    }

    v26 = v74;
    v25 = v75;

    v71 = v26;
    v72 = v25;
    sub_237ADB770(v27);
    v70 = *(v24 + 2);
    if (v70)
    {
      v28 = 0;
      v29 = v24 + 48;
      v69 = v24;
      while (v28 < *(v24 + 2))
      {
        v31 = *(v29 - 2);
        v30 = *(v29 - 1);
        ++v28;
        v32 = 0xEF656772654D7972;
        v33 = 0x616E6F6974636944;
        v34 = *v29;
        switch(*v29)
        {
          case 1:
            v32 = 0xE600000000000000;
            v33 = 0x6E696D677241;
            break;
          case 2:
            v32 = 0xE600000000000000;
            v33 = 0x78616D677241;
            break;
          case 3:
            v32 = 0xE300000000000000;
            v33 = 7235917;
            v44 = *(v29 - 2);
            switch(v31)
            {
              case 1:
                v33 = 7889229;
                break;
              case 2:
                v33 = 7173459;
                break;
              case 3:
                v32 = 0xE400000000000000;
                v33 = 1851876685;
                break;
              case 4:
                v32 = 0xE500000000000000;
                v33 = 0x7665647453;
                break;
              case 5:
                v32 = 0xE500000000000000;
                v33 = 0x746E756F43;
                break;
              case 6:
                v33 = 0x74636E6974736944;
                v47 = 0x746E756F43;
                goto LABEL_32;
              case 7:
                v32 = 0xE800000000000000;
                v33 = 0x65636E6169726156;
                break;
              case 8:
                v33 = 0x65636E6575716553;
                v47 = 0x656772654DLL;
LABEL_32:
                v32 = v47 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                v32 = 0xE900000000000065;
                v33 = 0x6E4F7463656C6553;
                break;
              default:
                goto LABEL_14;
            }

            break;
          default:
            break;
        }

LABEL_14:
        v73 = v71;
        v74 = v72;

        v35 = OUTLINED_FUNCTION_175();
        sub_237ADB7B0(v35, v36, v34);
        MEMORY[0x2383DC360](v33, v32);

        switch(v34)
        {
          case 0:

            sub_237A31448();

            v37 = OUTLINED_FUNCTION_175();
            sub_237ADB7C8(v37, v38, 0);
            v39 = OUTLINED_FUNCTION_175();
            v41 = 0;
            goto LABEL_22;
          case 1:

            OUTLINED_FUNCTION_4_44(0);

            v45 = OUTLINED_FUNCTION_175();
            sub_237ADB7C8(v45, v46, 1u);
            v39 = OUTLINED_FUNCTION_175();
            v41 = 1;
            goto LABEL_22;
          case 2:

            OUTLINED_FUNCTION_4_44(1);

            v42 = OUTLINED_FUNCTION_175();
            sub_237ADB7C8(v42, v43, 2u);
            v39 = OUTLINED_FUNCTION_175();
            v41 = 2;
LABEL_22:
            sub_237ADB7C8(v39, v40, v41);
            break;
          case 3:
            switch(v31)
            {
              case 5:

                sub_237A310C8();
                break;
              case 6:
              case 8:
              case 9:
                OUTLINED_FUNCTION_2_48();
                goto LABEL_34;
              default:
                OUTLINED_FUNCTION_1_47();
LABEL_34:

                break;
            }

            break;
          default:
            JUMPOUT(0);
        }

        v24 = v69;
        v29 += 24;
        if (v70 == v28)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_42:
      v50 = swift_allocError();
      *v54 = v28;

      goto LABEL_43;
    }

LABEL_36:
  }

  (*(v63 + 8))(v66, AssociatedTypeWitness);
  v28 = v64;
  if ((v62 & 1) == 0)
  {
    v51 = *(*(v64 + 2) + 16);
    v52 = *(v23 + 16);
    sub_2379DBCF4(v64, 0);
    v53 = sub_237B14194(v51, v60, v52);
    v57 = v53;
    if (v53)
    {
      type metadata accessor for CMLTable();
      v58 = swift_allocObject();
      *(v58 + 16) = v57;

      sub_2379DBC9C(v64, 0);
      type metadata accessor for _DataTable();
      swift_allocObject();
      v50 = sub_237B6C578(v58);
      v55 = 0;
      goto LABEL_44;
    }

LABEL_49:
    __break(1u);
    OUTLINED_FUNCTION_0_48();
    swift_unexpectedError();
    __break(1u);
    JUMPOUT(0x237ADB618);
  }

  v73 = v64;
  v48 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  v49 = sub_237C0925C();
  if (!v49)
  {
    goto LABEL_42;
  }

  v50 = v49;

  sub_2379DBC9C(v28, 1);
LABEL_43:
  v55 = 1;
LABEL_44:
  v56 = v61;
  *v61 = v50;
  *(v56 + 8) = v55;
}

uint64_t MLDataTable.Aggregator.operations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MLDataTable.Aggregator.columnName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MLDataTable.Aggregator.columnName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MLDataTable.Aggregator.init(operations:of:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_237ADB770(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_237ADB7B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_237ADB7C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8CreateML11MLDataTableV10AggregatorV10OperationsO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_237ADB80C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237ADB84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_237ADB890(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_47()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);

  return sub_237A310C8();
}

uint64_t OUTLINED_FUNCTION_2_48()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);

  return sub_237A310C8();
}

uint64_t OUTLINED_FUNCTION_4_44(uint64_t a1)
{
  v7 = *(v5 - 192);
  v8 = *(v5 - 184);

  return sub_237A311F4(a1, v1, v3, v7, v8, v4, v2);
}

void sub_237ADB934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_237AC8A34();
    v5 = sub_237AE854C(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v1;
    v25 = v2;
    v26 = v2 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v9 = v4;
        v27 = v3;
        v10 = (*(v2 + 48) + 16 * v5);
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_237C0879C();

        v14 = *(v28 + 16);
        if (v14 >= *(v28 + 24) >> 1)
        {
          sub_237AC8A34();
        }

        *(v28 + 16) = v14 + 1;
        *(v28 + 8 * v14 + 32) = v13;
        if (v9)
        {
          goto LABEL_29;
        }

        v2 = v25;
        v7 = v26;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v26 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_2379E8FD0(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_2379E8FD0(v5, v27, 0);
        }

LABEL_19:
        if (++v6 == v24)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

BOOL MLClassifierMetrics.isValid.getter()
{
  v1 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_45();
  v5 = OUTLINED_FUNCTION_11_31();
  sub_237ADD8DC(v5, v6);
  v7 = swift_getEnumCaseMultiPayload() < 2;
  sub_237ADE880(v0, type metadata accessor for MLClassifierMetrics.Contents);
  return v7;
}

unint64_t MLClassifierMetrics.description.getter()
{
  v1 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  sub_237ADD8DC(v0, v0);
  OUTLINED_FUNCTION_11_31();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *v0;
    v10 = 0;
    swift_getErrorValue();
    sub_237C0927C();
  }

  else
  {
    OUTLINED_FUNCTION_9_31();
    sub_237ADE880(v0, v5);
    v10 = 0xD000000000000023;
    ML19MLClassifierMetricsV16debugDescriptionSSvg_0 = _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
    MEMORY[0x2383DC360](ML19MLClassifierMetricsV16debugDescriptionSSvg_0);

    sub_237ADD940();
    MEMORY[0x2383DC360]();

    v7 = sub_237ADE14C();
    MEMORY[0x2383DC360](v7);
  }

  return v10;
}

uint64_t sub_237ADBD64(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_237ADFA24(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      a3(0);

      return OUTLINED_FUNCTION_11_31();
    }
  }

  __break(1u);
  return result;
}

uint64_t MLClassifierMetrics.init(classificationError:confusion:precisionRecall:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 8);
  v11 = *a1;
  v12 = v6;
  v9 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_237A70ED4(&v11, a3 + *(v9 + 20));
  v11 = v7;
  v12 = v8;
  sub_237A70ED4(&v11, a3 + *(v9 + 24));
  *a3 = a4;
  type metadata accessor for MLClassifierMetrics.Contents(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MLClassifierMetrics.error.getter()
{
  v1 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_237ADD8DC(v0, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v7;
  }

  sub_237ADE880(v7, type metadata accessor for MLClassifierMetrics.Contents);
  return 0;
}

double MLClassifierMetrics.classificationError.getter()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = type metadata accessor for AnyClassificationMetrics();
  v11 = OUTLINED_FUNCTION_20(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_45();
  v14 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v18 = OUTLINED_FUNCTION_25_18();
  if (v18)
  {
    if (v18 == 1)
    {
      sub_237ADE8D8(v2, v9);
      v19 = *v9;
      OUTLINED_FUNCTION_2_49();
      sub_237ADE880(v9, v20);
      v21 = 1.0 - v19;
    }

    else
    {
      OUTLINED_FUNCTION_9_31();
      sub_237ADE880(v2, v23);
      v21 = 0.0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_24_20();
    v21 = sub_237B0D7E8();
    OUTLINED_FUNCTION_0_49();
    sub_237ADE880(v1, v22);
  }

  return 1.0 - v21;
}

double sub_237ADC0C4()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = type metadata accessor for AnyClassificationMetrics();
  v11 = OUTLINED_FUNCTION_20(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_45();
  v14 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v18 = OUTLINED_FUNCTION_25_18();
  if (v18)
  {
    if (v18 == 1)
    {
      sub_237ADE8D8(v2, v9);
      v19 = *v9;
      OUTLINED_FUNCTION_2_49();
      sub_237ADE880(v9, v20);
      return 1.0 - v19;
    }

    else
    {
      sub_237ADE880(v2, type metadata accessor for MLClassifierMetrics.Contents);
      return 0.0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_24_20();
    v21 = sub_237B0D7E8();
    OUTLINED_FUNCTION_0_49();
    sub_237ADE880(v1, v22);
  }

  return v21;
}

void MLClassifierMetrics.confusionDataFrame.getter()
{
  OUTLINED_FUNCTION_153();
  v49 = v0;
  v50 = v4;
  v48 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v5 = OUTLINED_FUNCTION_4(v48);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0(v8);
  v47[2] = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_94();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v13);
  v47[1] = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_60();
  v24 = type metadata accessor for AnyClassificationMetrics();
  v25 = OUTLINED_FUNCTION_20(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  v31 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  sub_237ADD8DC(v49, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_48();
    sub_237ADE8D8(v0, v30);
    sub_2379D8FF4(v30, v3, &qword_27DE9A9F8, &unk_237C0E1C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = OUTLINED_FUNCTION_12_26();
      v44(v43);
      sub_2379E575C();
      (*(v0 + 8))(v2, v8);
    }

    else
    {
      v45 = OUTLINED_FUNCTION_13_23();
      v46(v45);
      sub_2379E51D0();
      (*(v20 + 8))(v19, v13);
    }

    OUTLINED_FUNCTION_0_49();
    v42 = v30;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v36 = OUTLINED_FUNCTION_11_31();
    sub_237ADE8D8(v36, v37);
    v38 = *(v48 + 20);
    v39 = sub_237C05DBC();
    OUTLINED_FUNCTION_4(v39);
    (*(v40 + 16))(v50, v1 + v38);
    OUTLINED_FUNCTION_2_49();
    v42 = v1;
LABEL_9:
    sub_237ADE880(v42, v41);
    goto LABEL_10;
  }

  sub_237ADE880(v0, type metadata accessor for MLClassifierMetrics.Contents);
  sub_237C05DAC();
LABEL_10:
  OUTLINED_FUNCTION_150();
}

void MLClassifierMetrics.precisionRecall.getter(void *a1@<X8>)
{
  v3 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_45();
  MLClassifierMetrics.precisionRecallDataFrame.getter();
  sub_237A70684(v1, 0, a1);
}

void MLClassifierMetrics.precisionRecallDataFrame.getter()
{
  OUTLINED_FUNCTION_153();
  v49 = v0;
  v50 = v4;
  v48 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v5 = OUTLINED_FUNCTION_4(v48);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0(v8);
  v47[2] = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_94();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v13);
  v47[1] = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_60();
  v24 = type metadata accessor for AnyClassificationMetrics();
  v25 = OUTLINED_FUNCTION_20(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  v31 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  sub_237ADD8DC(v49, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_48();
    sub_237ADE8D8(v0, v30);
    sub_2379D8FF4(v30, v3, &qword_27DE9A9F8, &unk_237C0E1C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = OUTLINED_FUNCTION_12_26();
      v44(v43);
      sub_2379E62D4();
      (*(v0 + 8))(v2, v8);
    }

    else
    {
      v45 = OUTLINED_FUNCTION_13_23();
      v46(v45);
      sub_2379E5C70();
      (*(v20 + 8))(v19, v13);
    }

    OUTLINED_FUNCTION_0_49();
    v42 = v30;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v36 = OUTLINED_FUNCTION_11_31();
    sub_237ADE8D8(v36, v37);
    v38 = *(v48 + 24);
    v39 = sub_237C05DBC();
    OUTLINED_FUNCTION_4(v39);
    (*(v40 + 16))(v50, v1 + v38);
    OUTLINED_FUNCTION_2_49();
    v42 = v1;
LABEL_9:
    sub_237ADE880(v42, v41);
    goto LABEL_10;
  }

  sub_237ADE880(v0, type metadata accessor for MLClassifierMetrics.Contents);
  sub_237C05DAC();
LABEL_10:
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237ADCB34()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v7 = type metadata accessor for AnyClassificationMetrics();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_45();
  v11 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v15 = OUTLINED_FUNCTION_25_18();
  if (v15)
  {
    if (v15 != 1)
    {
      sub_237ADE880(v2, type metadata accessor for MLClassifierMetrics.Contents);
      return MEMORY[0x277D84FA0];
    }

    sub_237ADE8D8(v2, v0);
    sub_237ADCCA0();
    v17 = v16;
    OUTLINED_FUNCTION_2_49();
    v19 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_24_20();
    sub_237B0D298();
    v17 = v20;
    OUTLINED_FUNCTION_0_49();
    v19 = v1;
  }

  sub_237ADE880(v19, v18);
  return v17;
}

void sub_237ADCCA0()
{
  OUTLINED_FUNCTION_153();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v3 = OUTLINED_FUNCTION_0(v2);
  v67 = v4;
  v68 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_60();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  OUTLINED_FUNCTION_0(v20);
  v69 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_94();
  v25 = sub_237C0602C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v70 = v27;
  v71 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = v0 + *(type metadata accessor for MLClassifierMetrics.Precomputed(0) + 24);
  sub_237C05DFC();
  v34 = sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v50 = v67;
    v49 = v68;
    if (!swift_dynamicCastMetatype())
    {
      sub_237ADFA70();
      v56 = v71;
      v57 = sub_237C08B3C();
      v58 = MEMORY[0x277D84F90];
      if (v57)
      {
        v59 = v57;
        v74 = MEMORY[0x277D84F90];
        sub_237AC8A74();
        v58 = v74;
        sub_237C08B2C();
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        __break(1u);
LABEL_18:
        sub_237AC8A74();
        v58 = v74;
        while (1)
        {
          *(v58 + 16) = v34;
          v65 = v58 + 16 * v49;
          *(v65 + 32) = v14;
          *(v65 + 40) = v1;
          sub_237C08B6C();
          if (!--v59)
          {
            break;
          }

LABEL_19:
          v60 = sub_237C08B9C();
          sub_2379D8FF4(v61, v72, &qword_27DE9A998, &unk_237C0C100);
          v60(v73, 0);
          sub_2379D8FF4(v72, v73, &qword_27DE9A998, &unk_237C0C100);
          v62 = OUTLINED_FUNCTION_11_31();
          __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
          v14 = sub_237C0874C();
          v1 = v64;
          sub_237A286E0(v72);
          v74 = v58;
          v49 = *(v58 + 16);
          v34 = v49 + 1;
          if (v49 >= *(v58 + 24) >> 1)
          {
            goto LABEL_18;
          }
        }
      }

      sub_237B42F98(v58);
      OUTLINED_FUNCTION_15_23();
      v52 = v32;
      v55 = v56;
      goto LABEL_14;
    }

    sub_237C05FEC();
    v73[0] = 0;
    v73[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    sub_237C05EAC();
    (*(v50 + 8))(v9, v49);
    sub_237B43058();
    OUTLINED_FUNCTION_15_23();
    v52 = v32;
LABEL_13:
    v55 = v71;
LABEL_14:
    v51(v52, v55);
    OUTLINED_FUNCTION_150();
    return;
  }

  sub_237C05FEC();
  v73[0] = 0;
  OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
  sub_237C05EAC();
  (*(v16 + 8))(v1, v14);
  sub_2379D9224(&qword_27DE9C9E0, &qword_27DE9C798, &qword_237C10E70);
  v35 = sub_237C08B3C();
  v36 = v32;
  if (!v35)
  {
    v53 = OUTLINED_FUNCTION_20_18();
    v54(v53);
    v38 = MEMORY[0x277D84F90];
LABEL_12:
    sub_237B42F98(v38);
    OUTLINED_FUNCTION_15_23();
    v52 = v36;
    goto LABEL_13;
  }

  v37 = v35;
  v72[0] = MEMORY[0x277D84F90];
  sub_237AC8A74();
  v38 = v72[0];
  sub_237C08B2C();
  if ((v37 & 0x8000000000000000) == 0)
  {
    v68 = v36;
    do
    {
      v39 = sub_237C08B9C();
      v41 = *v40;
      v39(v73, 0);
      v73[0] = v41;
      v42 = sub_237C0924C();
      v44 = v43;
      v72[0] = v38;
      v45 = *(v38 + 16);
      if (v45 >= *(v38 + 24) >> 1)
      {
        sub_237AC8A74();
        v38 = v72[0];
      }

      *(v38 + 16) = v45 + 1;
      v46 = v38 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v44;
      sub_237C08B6C();
      --v37;
    }

    while (v37);
    v47 = OUTLINED_FUNCTION_20_18();
    v48(v47);
    v36 = v68;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_237ADD304()
{
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v7 = type metadata accessor for AnyClassificationMetrics();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_45();
  v11 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  sub_237ADD8DC(v0, v2);
  v15 = OUTLINED_FUNCTION_25_18();
  if (v15)
  {
    if (v15 == 1)
    {
      sub_237ADE8D8(v2, v0);
      sub_237ADCCA0();
      v17 = v16;
      OUTLINED_FUNCTION_2_49();
      sub_237ADE880(v0, v18);
      v19 = *(v17 + 16);
    }

    else
    {
      sub_237ADE880(v2, type metadata accessor for MLClassifierMetrics.Contents);
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    v20 = OUTLINED_FUNCTION_24_20();
    v19 = sub_237B0D484(v20);
    OUTLINED_FUNCTION_0_49();
    sub_237ADE880(v1, v21);
  }

  return v19;
}

void sub_237ADD47C()
{
  OUTLINED_FUNCTION_153();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v14 = type metadata accessor for AnyClassificationMetrics();
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  sub_237ADD8DC(v0, v26 - v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_237ADE880(v27, type metadata accessor for MLClassifierMetrics.Contents);
      goto LABEL_7;
    }

    sub_237ADE8D8(v27, v1);
    v29 = v1 + *(v10 + 20);
    sub_237C05DEC();
    sub_237C05F7C();
    (*(v4 + 8))(v9, v2);
    OUTLINED_FUNCTION_2_49();
    v31 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_1_48();
    v32 = sub_237ADE8D8(v27, v20);
    sub_237B0D63C(v32);
    OUTLINED_FUNCTION_0_49();
    v31 = v20;
  }

  sub_237ADE880(v31, v30);
LABEL_7:
  OUTLINED_FUNCTION_150();
}

unint64_t _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0()
{
  sub_237C08EDC();

  sub_237ADD47C();
  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  sub_237C08EDC();

  sub_237ADD304();
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1B1E0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237C0B660;
  v3 = sub_237ADC0C4();
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3 * 100.0;
  v5 = sub_237C0871C();
  MEMORY[0x2383DC360](v5);

  return 0xD000000000000014;
}

uint64_t sub_237ADD8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics.Contents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237ADD940()
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v54[0] = *(v64 - 8);
  v0 = *(v54[0] + 64);
  MEMORY[0x28223BE20](v64);
  v2 = v54 - v1;
  sub_237ADCB34();
  sub_237B98EF8();
  v4 = v3;

  v63 = v2;
  sub_237ADE9A4(v4, v2);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  *&v61 = v5;
  if (v5)
  {
    v69 = MEMORY[0x277D84F90];
    sub_237AC8A34();
    v7 = v69;
    v8 = (v4 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_237C0879C();

      v69 = v7;
      v12 = v7[2];
      if (v12 >= v7[3] >> 1)
      {
        sub_237AC8A34();
        v7 = v69;
      }

      v7[2] = v12 + 1;
      v7[v12 + 4] = v11;
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v13 = sub_2379FBD74(v7);
  v15 = v14;

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v62 = sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
  v17 = sub_237C0834C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v59 = v16;
    v60 = v4;
    v69 = v6;
    sub_237AC8A34();
    v19 = 32;
    v20 = v69;
    while (1)
    {
      v21 = *(v17 + v19);
      if ((LODWORD(v21) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v21 <= -9.2234e18)
      {
        goto LABEL_59;
      }

      if (v21 >= 9.2234e18)
      {
        goto LABEL_60;
      }

      v67 = v21;
      sub_237C0924C();
      v22 = sub_237C0879C();

      v69 = v20;
      v23 = v20[2];
      if (v23 >= v20[3] >> 1)
      {
        sub_237AC8A34();
        v20 = v69;
      }

      v20[2] = v23 + 1;
      v20[v23 + 4] = v22;
      v19 += 4;
      if (!--v18)
      {

        v16 = v59;
        v4 = v60;
        goto LABEL_21;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_21:
  v24 = sub_2379FBD74(v20);
  v26 = v25;

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  if (v27 <= v16)
  {
    v27 = v16;
  }

  if (__OFADD__(v27, 1))
  {
    goto LABEL_65;
  }

  v28 = sub_237C0879C();
  if (v28 <= v16)
  {
    v29 = v16;
  }

  else
  {
    v29 = v28;
  }

  v58 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    goto LABEL_66;
  }

  v54[1] = sub_237ADBD64(20, v4, sub_237A59760);
  v57 = v30;
  v32 = v31;
  v34 = v33;
  v69 = 0xD00000000000001ELL;
  v70 = 0x8000000237C1B180;
  if (v61 >= 0x15)
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_237C08EDC();

    v67 = 0xD000000000000010;
    v68 = 0x8000000237C1B1A0;
    v65 = 20;
    v35 = sub_237C0924C();
    MEMORY[0x2383DC360](v35);

    MEMORY[0x2383DC360](762929709, 0xE400000000000000);
    v65 = 20;
    v36 = sub_237C0924C();
    MEMORY[0x2383DC360](v36);

    MEMORY[0x2383DC360](0xA2A2A2A2A2029, 0xE700000000000000);
    MEMORY[0x2383DC360](v67, v68);
  }

  MEMORY[0x2383DC360](0xD000000000000023, 0x8000000237C1B0B0);
  v67 = 0x6572505C65757254;
  v68 = 0xE900000000000064;
  v65 = 32;
  v66 = 0xE100000000000000;
  sub_2379F3408();
  v37 = sub_237C08DAC();
  MEMORY[0x2383DC360](v37);

  v38 = v34 >> 1;
  v39 = (v34 >> 1) - v32;
  v56 = v34 >> 1;
  if (v34 >> 1 == v32)
  {
LABEL_38:
    MEMORY[0x2383DC360](10, 0xE100000000000000);
    v43 = v38 - v32;
    v44 = __OFSUB__(v38, v32);
    v55 = v44;
    swift_unknownObjectRetain();
    v45 = 0;
    v61 = xmmword_237C0B670;
    while (!__OFADD__(v45, 1))
    {
      if (v32 == v38)
      {
        swift_unknownObjectRelease_n();
        (*(v54[0] + 8))(v63, v64);
        return;
      }

      if (v32 >= v38)
      {
        goto LABEL_62;
      }

      v60 = v45 + 1;
      v46 = *(v57 + 16 * v32 + 8);
      v67 = *(v57 + 16 * v32);
      v68 = v46;
      v65 = 32;
      v66 = 0xE100000000000000;
      v47 = sub_237C08DAC();
      MEMORY[0x2383DC360](v47);

      if (v55)
      {
        goto LABEL_63;
      }

      if (v43 < 0)
      {
        goto LABEL_64;
      }

      v59 = v32;
      if (v43)
      {
        v48 = 0;
        while (1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v49 = swift_allocObject();
          *(v49 + 16) = v61;
          *(v49 + 32) = v45;
          *(v49 + 40) = v48;
          sub_237C0835C();

          if ((v67 & 0x7FFFFFFF) > 0x7F7FFFFF)
          {
            break;
          }

          if (*&v67 <= -9.2234e18)
          {
            goto LABEL_56;
          }

          if (*&v67 >= 9.2234e18)
          {
            goto LABEL_57;
          }

          ++v48;
          v67 = *&v67;
          v67 = sub_237C0924C();
          v68 = v50;
          v65 = 32;
          v66 = 0xE100000000000000;
          v51 = sub_237C08DAC();
          v53 = v52;

          MEMORY[0x2383DC360](v51, v53);

          if (v43 == v48)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_53:
      v32 = v59 + 1;
      MEMORY[0x2383DC360](10, 0xE100000000000000);
      v45 = v60;
      v38 = v56;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if ((v34 >> 1) > v32)
  {
    swift_unknownObjectRetain();
    v40 = (v57 + 16 * v32 + 8);
    do
    {
      v41 = *v40;
      v67 = *(v40 - 1);
      v68 = v41;
      v65 = 32;
      v66 = 0xE100000000000000;
      v42 = sub_237C08DAC();
      MEMORY[0x2383DC360](v42);

      v40 += 2;
      --v39;
    }

    while (v39);
    swift_unknownObjectRelease();
    v38 = v56;
    goto LABEL_38;
  }

LABEL_67:
  __break(1u);
}

uint64_t sub_237ADE14C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v55 = *(v0 - 8);
  v1 = *(v55 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v66 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - v4;
  v6 = sub_237C0602C();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = sub_237C05DBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLClassifierMetrics.precisionRecallDataFrame.getter();
  if (sub_237C05C5C())
  {
    (*(v15 + 8))(v18, v14);
    return 0;
  }

  else
  {
    v63 = v15;
    v53 = v14;
    v54 = v10;
    v65 = v9;
    v20 = sub_237ADCB34();
    sub_237ADB934(v20);
    v22 = v21;

    v23 = sub_2379FBD74(v22);
    v64 = v5;
    v25 = v24;

    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    v73 = 0xD000000000000041;
    v74 = 0x8000000237C1B110;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v27 = swift_allocObject();
    v59 = xmmword_237C0B680;
    *(v27 + 16) = xmmword_237C0B680;
    v71 = 0x7373616C43;
    v72 = 0xE500000000000000;
    v69 = 32;
    v70 = 0xE100000000000000;
    sub_2379F3408();
    v28 = MEMORY[0x277D837D0];
    v58 = v26;
    v29 = sub_237C08DAC();
    v31 = v30;
    *(v27 + 56) = v28;
    v32 = sub_237A8E8E4();
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    *(v27 + 96) = v28;
    *(v27 + 104) = v32;
    *(v27 + 64) = v32;
    strcpy((v27 + 72), "Precision(%)");
    *(v27 + 85) = 0;
    *(v27 + 86) = -5120;
    *(v27 + 136) = v28;
    *(v27 + 144) = v32;
    v57 = v32;
    *(v27 + 112) = 0x25286C6C61636552;
    *(v27 + 120) = 0xE900000000000029;
    v33 = sub_237C0871C();
    MEMORY[0x2383DC360](v33);

    v34 = v56;
    sub_237C05DFC();
    sub_237B63BC4(v13);
    (*(v61 + 1))(v34, v62);
    v35 = MEMORY[0x277D839F8];
    v36 = v64;
    sub_237C05DEC();
    sub_237C05DEC();
    result = sub_237C05F1C();
    v62 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      v52 = v18;
      v61 = v13;
      v37 = 0;
      v56 = "----------------\n";
      v38 = MEMORY[0x277D83A80];
      while (1)
      {
        v39 = v63;
        if (v62 == v37)
        {
          MEMORY[0x2383DC360](10, 0xE100000000000000);
          v50 = *(v55 + 8);
          v50(v66, v0);
          v50(v36, v0);
          (*(v54 + 8))(v61, v65);
          (*(v39 + 8))(v52, v53);
          return v73;
        }

        if (__OFADD__(v37, 1))
        {
          break;
        }

        v40 = v35;
        v41 = swift_allocObject();
        *(v41 + 16) = v59;
        result = sub_237C05F9C();
        if (!v72)
        {
          goto LABEL_18;
        }

        v69 = v71;
        v70 = v72;
        v67 = 32;
        v68 = 0xE100000000000000;
        v42 = MEMORY[0x277D837D0];
        v43 = sub_237C08DAC();
        v45 = v44;

        v46 = v57;
        *(v41 + 56) = v42;
        *(v41 + 64) = v46;
        *(v41 + 32) = v43;
        *(v41 + 40) = v45;
        v36 = v64;
        result = sub_237C05F9C();
        if (v72)
        {
          goto LABEL_19;
        }

        v47 = *&v71 * 100.0;
        v35 = v40;
        *(v41 + 96) = v40;
        *(v41 + 104) = v38;
        *(v41 + 72) = v47;
        result = sub_237C05F9C();
        if (v72)
        {
          goto LABEL_20;
        }

        v48 = *&v71 * 100.0;
        *(v41 + 136) = v40;
        *(v41 + 144) = v38;
        *(v41 + 112) = v48;
        v49 = sub_237C0871C();
        MEMORY[0x2383DC360](v49);

        ++v37;
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_237ADE880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237ADE8D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

unint64_t MLClassifierMetrics.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = OUTLINED_FUNCTION_11_31();
  v5 = v4;
  sub_237A02218(v3, v6, 0);
  OUTLINED_FUNCTION_87();
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_237ADE9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v70 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  v78 = *(v85 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v85);
  v92 = &v70 - v8;
  v86 = sub_237C0602C();
  v81 = *(v86 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x28223BE20](v86);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v13 = *(v12 - 8);
  v79 = v12;
  v80 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  v76 = *(v77 - 8);
  v17 = *(v76 + 64);
  v18 = MEMORY[0x28223BE20](v77);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v75 = *(v93 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v70 - v24;
  v25 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v90 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AnyClassificationMetrics();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237ADD8DC(v89, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v71 = a2;
      sub_237ADE8D8(v35, v90);
      LODWORD(v94) = 0;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v37 = swift_allocObject();
      v88 = xmmword_237C0B670;
      *(v37 + 16) = xmmword_237C0B670;
      v38 = *(a1 + 16);
      *(v37 + 32) = v38;
      *(v37 + 40) = v38;
      v87 = sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
      sub_237C0837C();
      v74 = *(v25 + 20);
      sub_237C05DFC();
      v39 = v16;
      sub_237B63BC4(v16);
      v73 = *(v81 + 8);
      v73(v11, v86);
      v94 = 0;
      v95 = 0xE000000000000000;
      v81 = MEMORY[0x277CE18F0];
      v72 = sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
      v40 = v79;
      sub_237C05EAC();
      v41 = *(v80 + 8);
      v41(v39, v40);
      sub_237C05DFC();
      sub_237B63BC4(v39);
      v73(v11, v86);
      v94 = 0;
      v95 = 0xE000000000000000;
      v42 = v20;
      sub_237C05EAC();
      v41(v39, v40);
      v43 = v82;
      sub_237C05DEC();
      v94 = 0;
      sub_2379D9224(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
      v44 = v84;
      sub_237C05EAC();
      (*(v83 + 8))(v43, v44);
      sub_2379D9224(&qword_27DE9C9E0, &qword_27DE9C798, &qword_237C10E70);
      sub_237C08B2C();
      sub_237C08B5C();
      result = sub_237C08B4C();
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        v46 = result;
        v47 = v71;
        if (result)
        {
          v48 = 0;
          do
          {
            v49 = sub_237ADF37C(v48);
            v51 = sub_2379EB28C(v49, v50, a1);
            v53 = v52;

            if ((v53 & 1) == 0)
            {
              v54 = sub_237ADF37C(v48);
              v56 = sub_2379EB28C(v54, v55, a1);
              v58 = v57;

              if ((v58 & 1) == 0)
              {
                v59 = swift_allocObject();
                *(v59 + 16) = v88;
                *(v59 + 32) = v51;
                *(v59 + 40) = v56;
                *&v94 = sub_237ADF518(v48);
                sub_237C0836C();
              }
            }

            ++v48;
          }

          while (v46 != v48);
        }

        (*(v78 + 8))(v92, v85);
        v60 = *(v76 + 8);
        v61 = v77;
        v60(v42, v77);
        v60(v22, v61);
        sub_237ADE880(v90, type metadata accessor for MLClassifierMetrics.Precomputed);
        return (*(v75 + 32))(v47, v91, v93);
      }
    }

    else
    {
      sub_237ADE880(v35, type metadata accessor for MLClassifierMetrics.Contents);
      sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
      return sub_237C0832C();
    }
  }

  else
  {
    v62 = sub_237ADE8D8(v35, v31);
    sub_237B0DA34(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    return sub_237ADE880(v31, type metadata accessor for AnyClassificationMetrics);
  }

  return result;
}

uint64_t sub_237ADF37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-1] - v5;
  v13[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  sub_237C05E3C();
  sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0);
  v7 = sub_237C08B9C();
  v9 = *v8;
  v10 = v8[1];

  v7(v13, 0);
  (*(v3 + 8))(v6, v2);
  if (!v10)
  {
    sub_237C05E2C();
    return v13[0];
  }

  return v9;
}

uint64_t sub_237ADF518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-1] - v5;
  v13[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  sub_237C05E3C();
  sub_2379D9224(&qword_27DE9BD80, &qword_27DE9AB98, &unk_237C0B900);
  v7 = sub_237C08B9C();
  v9 = *v8;
  v10 = *(v8 + 8);
  v7(v13, 0);
  (*(v3 + 8))(v6, v2);
  if (v10 == 1)
  {
    sub_237C05E2C();
    return v13[0];
  }

  return v9;
}

uint64_t sub_237ADF6BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLClassifierMetrics.Contents(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_237ADF714(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLClassifierMetrics.Contents(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_237ADF77C()
{
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_237ADF7E8()
{
  result = type metadata accessor for AnyClassificationMetrics();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MLClassifierMetrics.Precomputed(319);
    if (v2 <= 0x3F)
    {
      result = sub_237ADF870();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_237ADF870()
{
  result = qword_27DE9C9C8;
  if (!qword_27DE9C9C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DE9C9C8);
  }

  return result;
}

uint64_t sub_237ADF8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05DBC();
  v7 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t sub_237ADF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_237C05DBC();
  v8 = a1 + *(a4 + 20);

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_237ADF9A8()
{
  result = sub_237C05DBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237ADFA24(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_237ADFA70()
{
  result = qword_27DE9C058;
  if (!qword_27DE9C058)
  {
    sub_237C0602C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C058);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_20()
{

  return sub_237ADE8D8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_18()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_237ADFBE4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_7:
      v6[0] = v4;
      v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      result = sub_237B0FAE4(v6);
      if (!v2 && !result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = sub_237B0FAE4((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v2 || result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_7;
    }
  }

  result = sub_237C08ECC();
  if (!v2)
  {
    return v6[2];
  }

  return result;
}

uint64_t sub_237ADFC80(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_50(sub_237ADFCC0);
}

uint64_t sub_237ADFCC0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[2];
  *(v0[3] + 40) = 0;
  v0[5] = sub_237A31828();
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_237ADFDC4;
  v4 = v0[2];

  return sub_237A6FB90();
}

uint64_t sub_237ADFDC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v8 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[6];

    v6 = sub_237ADFF9C;
  }

  else
  {
    v6 = sub_237ADFEE0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_237ADFEE0()
{
  result = sub_237B98710(*(v0 + 40), *(v0 + 48));
  if (result == 28)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = *(v0 + 64);
    v4 = *(v0 + 24);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 24) = v3;
    *(v4 + 32) = result;

    v5 = v3;
    if ((sub_237A37A64() & 1) == 0)
    {
      sub_237A37DD8(v2, 2u);
    }

    v6 = *(v0 + 16);

    v7 = *(v0 + 8);
    v8 = *(v0 + 24);

    return v7(v8);
  }

  return result;
}

uint64_t sub_237ADFF9C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[2];

  v2 = v0[9];
  v3 = v0[4];
  v4 = *(v0[3] + 40);

  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_50();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t *sub_237AE0018(char a1)
{
  v4 = *v1;
  v1[5] = 0;
  v1[3] = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  sub_237B983D8();
  v7 = sub_237ADFBE4(v5, v6);
  if (v2)
  {

    v8 = v1[5];

    OUTLINED_FUNCTION_2_50();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v7;

    type metadata accessor for CMLModel();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v1[2] = v10;
    *(v1 + 32) = a1;
  }

  return v1;
}

uint64_t sub_237AE0110(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  *(v4 + 40) = *v3;
  return OUTLINED_FUNCTION_0_50(sub_237AE0158);
}

uint64_t sub_237AE0158()
{
  v1 = *(v0 + 80);
  *(*(v0 + 32) + 40) = 0;
  sub_237B983D8();
  v3 = v2;
  v5 = v4;

  v6 = sub_237ADFBE4(v3, v5);
  v7 = *(v0 + 24);
  v8 = v6;

  type metadata accessor for CMLModel();
  v9 = swift_allocObject();
  *(v0 + 48) = v9;
  *(v9 + 16) = v8;
  if (v7)
  {
    v10 = *(v0 + 24);

    sub_237A6F428();
  }

  if (sub_237A37A64())
  {
    v11 = *(v0 + 16);

    sub_237A31864(5);
  }

  else
  {
    v12 = *(v0 + 80);
    sub_237B983D8();
    result = sub_237B98710(v13, v14);
    if (result == 28)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = *(v0 + 16);

    CFAbsoluteTimeGetCurrent();
    sub_237A37DD8(v16, 2u);
    sub_237A31864(5);

    sub_237A37F70(v16);
  }

  v18 = swift_task_alloc();
  *(v0 + 56) = v18;
  *v18 = v0;
  v18[1] = sub_237AE040C;

  return sub_237A6FB90();
}

uint64_t sub_237AE040C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v7 = sub_237AE05C8;
  }

  else
  {
    *(v4 + 72) = v3;
    v7 = sub_237AE0530;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237AE0530()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 80);

  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v6;
  v7 = *(v0 + 8);
  v8 = *(v0 + 32);

  return v7(v8);
}

uint64_t sub_237AE05C8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  v7 = *(v5 + 40);

  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_50();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_8();

  return v8();
}

uint64_t sub_237AE0658(uint64_t a1, unint64_t a2, const void *a3)
{
  v9 = sub_237C05ADC();
  v10 = OUTLINED_FUNCTION_1_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &__dst[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a3, sizeof(__dst));
  sub_237B980B4(*(v4 + 32));
  sub_2379F29AC(a1, a2, v17, v18);
  if (v5)
  {
  }

  sub_237AE078C(v16, __dst);
  return (*(v12 + 8))(v16, v3);
}

uint64_t sub_237AE078C(char *a1, uint64_t *a2)
{
  v85 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v75 - v7;
  v9 = sub_237C05ADC();
  v10 = OUTLINED_FUNCTION_1_7(v9);
  v83 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v82 = a2[1];
  v18 = a2[2];
  v17 = a2[3];
  v80 = v16;
  v81 = v17;
  v19 = a2[4];
  v20 = a2[5];
  v78 = v18;
  v79 = v19;
  v22 = a2[6];
  v21 = a2[7];
  v23 = a2[8];
  i = v3;
  sub_237B980B4(*(v3 + 32));
  v24 = v88;
  sub_2379F25FC();
  if (v24)
  {
  }

  v76 = v20;
  v77 = v21;
  v88 = v22;
  v85 = v15;

  v26 = *(i + 16);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v2);
  v27 = v2;
  v28 = sub_237A6F760(v8);
  sub_237A6FB28(v8);
  v29 = MEMORY[0x2383DDA80](0);
  if (v29)
  {
    v30 = v29;
    v75[2] = type metadata accessor for CMLDictionary();
    inited = swift_initStackObject();
    *(inited + 16) = v30;
    v75[1] = v28;
    if (v82)
    {
      type metadata accessor for CMLFeatureValue();

      v32 = sub_237A2E7CC();
      v33 = OUTLINED_FUNCTION_4_45();
      sub_237A2EABC(v33, v34, v32);

      v35 = sub_237A2E7CC();
      sub_237A2EABC(0xD000000000000011, 0x8000000237C1B2E0, v35);

      if (v76)
      {

        OUTLINED_FUNCTION_3_5();
        v36 = sub_237A2E7CC();
        sub_237A2EABC(0x65736E6563696CLL, 0xE700000000000000, v36);
      }

      OUTLINED_FUNCTION_3_5();
      v37 = sub_237A2E7CC();
      sub_237A2EABC(0x5F6E6F6973726576, 0xEE00676E69727473, v37);
    }

    else
    {
      v38 = NSFullUserName();
      sub_237C086EC();

      type metadata accessor for CMLFeatureValue();

      v39 = sub_237A2E7CC();

      v40 = OUTLINED_FUNCTION_4_45();
      sub_237A2EABC(v40, v41, v39);
    }

    sub_237BAC418();
    v42 = sub_237C085AC();
    if (v82 && v23)
    {

      v42 = v23;
    }

    v80 = inited;
    v81 = v27;
    swift_isUniquelyReferenced_nonNull_native();
    v86 = v42;
    sub_237B40C78();
    v43 = v86;
    v44 = MEMORY[0x2383DDA80](0);
    if (!v44)
    {
      goto LABEL_25;
    }

    v45 = v44;
    v88 = swift_initStackObject();
    *(v88 + 16) = v45;
    v46 = v43 + 64;
    v47 = 1 << *(v43 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v43 + 64);
    v50 = (v47 + 63) >> 6;

    v51 = 0;
    v82 = v43 + 64;
    for (i = v43; v49; v46 = v82)
    {
      v52 = v51;
LABEL_20:
      v53 = (v52 << 10) | (16 * __clz(__rbit64(v49)));
      v54 = (*(v43 + 48) + v53);
      v56 = *v54;
      v55 = v54[1];
      v57 = (*(v43 + 56) + v53);
      v58 = *v57;
      v59 = v57[1];
      type metadata accessor for CMLFeatureValue();
      swift_bridgeObjectRetain_n();

      v60 = sub_237A2E7CC();

      sub_237A2EABC(v56, v55, v60);
      v49 &= v49 - 1;

      v51 = v52;
      v43 = i;
    }

    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v52 >= v50)
      {

        type metadata accessor for CMLFeatureValue();

        v62 = sub_237A2E858(v61);
        v63 = v80;
        sub_237A2EABC(0x6665645F72657375, 0xEC00000064656E69, v62);
        v64 = v81;
        v65 = v83;
        v66 = v85;

        sub_237A6F534();
        sub_237A6F634();
        v86 = 0;
        v87 = 0xE000000000000000;
        sub_237C08EDC();

        OUTLINED_FUNCTION_8_29();
        v86 = v68 + 19;
        v87 = v67;
        v69 = sub_237C05A9C();
        MEMORY[0x2383DC360](v69);

        MEMORY[0x2383DC360](46, 0xE100000000000000);
        v70 = v86;
        v71 = v87;
        sub_237C08C1C();
        sub_237BABE74(v70, v71);

        swift_setDeallocating();
        v72 = *(v63 + 16);
        tc_v1_release();

        v73 = v88;
        swift_setDeallocating();
        v74 = *(v73 + 16);
        tc_v1_release();
        return (*(v65 + 8))(v66, v64);
      }

      v49 = *(v46 + 8 * v52);
      ++v51;
      if (v49)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237AE1168()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_237AE1198()
{
  sub_237AE1168();

  return swift_deallocClassInstance();
}

void sub_237AE123C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v5 = sub_237AE8508(v2);
    v6 = 0;
    v7 = v2 + 56;
    v27 = v2 + 64;
    v28 = v1;
    v8 = 1;
    v29 = v2 + 56;
    v30 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < v8 << *(v2 + 32))
      {
        v9 = v5 >> 6;
        v10 = v8 << v5;
        if ((*(v7 + 8 * (v5 >> 6)) & (v8 << v5)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_31;
        }

        v32 = v4;
        v31 = v3;
        v11 = (*(v2 + 48) + 16 * v5);
        v12 = v11[1];
        if (v12)
        {
          v13 = *v11;
        }

        else
        {
          v13 = 0;
        }

        if (v12)
        {
          v14 = v11[1];
        }

        else
        {
          v14 = 0xE000000000000000;
        }

        v16 = *(v33 + 16);
        v15 = *(v33 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_237AC8A74();
        }

        *(v33 + 16) = v16 + 1;
        v17 = v33 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        if (v32)
        {
          goto LABEL_35;
        }

        v7 = v29;
        v2 = v30;
        v18 = 1 << *(v30 + 32);
        if (v5 >= v18)
        {
          goto LABEL_32;
        }

        v19 = *(v29 + 8 * v9);
        if ((v19 & v10) == 0)
        {
          goto LABEL_33;
        }

        if (*(v30 + 36) != v31)
        {
          goto LABEL_34;
        }

        if ((v19 & (-2 << (v5 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_60_6();
        }

        else
        {
          OUTLINED_FUNCTION_57_6();
          v24 = (v27 + 8 * v9);
          while (v23 < v22)
          {
            v26 = *v24++;
            v25 = v26;
            v10 += 64;
            ++v23;
            if (v26)
            {
              OUTLINED_FUNCTION_71_3(v20, v21);
              v8 = 1;
              v18 = __clz(__rbit64(v25)) + v10;
              goto LABEL_25;
            }
          }

          OUTLINED_FUNCTION_71_3(v20, v21);
          v8 = 1;
        }

LABEL_25:
        if (++v6 == v28)
        {
          return;
        }

        v4 = 0;
        v3 = *(v30 + 36);
        v5 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_237AE1458(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v25 = MEMORY[0x277D84F90];
    v24 = *(a1 + 16);
    sub_237AC8A34();
    v4 = sub_237AE8508(a1);
    v5 = 0;
    v6 = a1 + 56;
    v7 = 1;
    v8 = -2;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < v7 << *(a1 + 32))
      {
        v9 = v4 >> 6;
        v10 = v7 << v4;
        if ((*(v6 + 8 * (v4 >> 6)) & (v7 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v11 = *(a1 + 48) + 16 * v4;
        if (*(v11 + 8))
        {
          v12 = 0;
        }

        else
        {
          v12 = *v11;
        }

        v13 = *(v25 + 16);
        if (v13 >= *(v25 + 24) >> 1)
        {
          sub_237AC8A34();
          OUTLINED_FUNCTION_40_10();
        }

        *(v25 + 16) = v13 + 1;
        *(v25 + 8 * v13 + 32) = v12;
        if (v3)
        {
          goto LABEL_32;
        }

        v14 = v7 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_29;
        }

        v15 = *(v6 + 8 * v9);
        if ((v15 & v10) == 0)
        {
          goto LABEL_30;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_31;
        }

        if ((v15 & (v8 << (v4 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_60_6();
        }

        else
        {
          OUTLINED_FUNCTION_57_6();
          v21 = (a1 + 64 + 8 * v9);
          while (v20 < v19)
          {
            v23 = *v21++;
            v22 = v23;
            v10 += 64;
            ++v20;
            if (v23)
            {
              OUTLINED_FUNCTION_71_3(v17, v18);
              OUTLINED_FUNCTION_40_10();
              v14 = __clz(__rbit64(v22)) + v10;
              goto LABEL_22;
            }
          }

          OUTLINED_FUNCTION_71_3(v17, v18);
          OUTLINED_FUNCTION_40_10();
        }

LABEL_22:
        if (++v5 == v16)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_237AE1668(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA30, &qword_237C13C90);
    OUTLINED_FUNCTION_39_9();
    v2 = sub_237C08EAC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B210, &unk_237C11B00);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_32:
      v28 = (*(a1 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v7)))));
      v7 &= v7 - 1;
      v34 = *v28;
      v36 = v28[1];

      swift_dynamicCast();
      sub_237AE8368(v29, v31);
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v8)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        v26 = v27;
        goto LABEL_32;
      }
    }
  }

  else
  {
    v9 = v2 + 7;

    v10 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
    }

    while (!v7);
    v10 = v11;
    while (1)
    {
LABEL_13:
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v30 = *v12;
      v32 = v12[1];

      swift_dynamicCast();
      v13 = v2[5];
      sub_237C093CC();
      sub_237C093EC();
      if (v35)
      {
        sub_237C0878C();
      }

      v14 = sub_237C0940C();
      OUTLINED_FUNCTION_43_5(v14);
      if (((v17 << v16) & ~v9[v15]) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_3_40();
LABEL_24:
      v7 &= v7 - 1;
      OUTLINED_FUNCTION_31_7();
      *(v9 + v22) |= v23;
      v25 = (v2[6] + 16 * v24);
      *v25 = v33;
      v25[1] = v35;
      ++v2[2];
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_20();
    while (++v18 != v20 || (v19 & 1) == 0)
    {
      v21 = v18 == v20;
      if (v18 == v20)
      {
        v18 = 0;
      }

      v19 |= v21;
      if (v9[v18] != -1)
      {
        OUTLINED_FUNCTION_4_39();
        goto LABEL_24;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
}

void sub_237AE1948(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA38, &unk_237C13CA0);
    OUTLINED_FUNCTION_39_9();
    v2 = sub_237C08EAC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 7;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v23 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA40, &unk_237C11B10);
    swift_dynamicCast();
    v10 = v2[5];
    sub_237C093CC();
    sub_237C093EC();
    if (v25 != 1)
    {
      MEMORY[0x2383DCF70]();
    }

    v11 = sub_237C0940C();
    OUTLINED_FUNCTION_43_5(v11);
    if (((v14 << v13) & ~v7[v12]) == 0)
    {
      OUTLINED_FUNCTION_7_20();
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        if (v7[v15] != -1)
        {
          OUTLINED_FUNCTION_4_39();
          goto LABEL_23;
        }
      }

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_23:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_31_7();
    *(v7 + v19) |= v20;
    v22 = v2[6] + 16 * v21;
    *v22 = v24;
    *(v22 + 8) = v25;
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

id MLRandomForestClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestClassifier() + 20));

  return v1;
}

uint64_t type metadata accessor for MLRandomForestClassifier()
{
  result = qword_27DE9CA18;
  if (!qword_27DE9CA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLRandomForestClassifier.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLRandomForestClassifier() + 20);

  *(v1 + v2) = v0;
}

void (*MLRandomForestClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestClassifier() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLRandomForestClassifier.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLRandomForestClassifier() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLRandomForestClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLRandomForestClassifier() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}