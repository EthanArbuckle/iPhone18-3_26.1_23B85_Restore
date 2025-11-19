uint64_t sub_217264FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_44_3(a1, a2, &qword_27CB24290, &unk_21775D550, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  if (!v35)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE7FC(v16);
  return sub_2171F0738(&v18, &qword_27CB24298, &qword_21777CD60);
}

uint64_t sub_21726504C(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB243C8, &unk_21775D390);
  if (__src[2] == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_90();
  memcpy(v5, __src, 0x300uLL);
  OUTLINED_FUNCTION_24();
  v6 = OUTLINED_FUNCTION_89_1();
  sub_217264A60(v6);
  sub_2172640D4(a1, v7, v8, v9, v10, v11, v12, v13);
  v14 = sub_21726A630(v2 + 256, v63, &qword_27CB243B0, &unk_21775D670);
  if (v64)
  {
    OUTLINED_FUNCTION_10_1(v14, v15, v16, v17, v18, v19, v20, v21, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63[0]);
    OUTLINED_FUNCTION_24();
    v22 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v22);
    sub_2171F0738(&v47, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v23 = sub_21726A630(&v66, v63, &qword_27CB24240, &qword_217758668);
  if (v64)
  {
    OUTLINED_FUNCTION_10_1(v23, v24, v25, v26, v27, v28, v29, v30, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63[0]);
    OUTLINED_FUNCTION_24();
    v31 = OUTLINED_FUNCTION_11_7();
    sub_2172DE67C(v31);
    sub_2171F0738(&v47, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v32 = OUTLINED_FUNCTION_41_3();
  sub_2172640D4(v32, v33, v34, v35, v36, v37, v38, v39);
  sub_217264058(a1, v40, v41, v42, v43, v44, v45, v46);
  return sub_21726A4EC(v65);
}

uint64_t sub_21726519C()
{
  OUTLINED_FUNCTION_49_1();
  if (!v0[4])
  {
    return sub_217753208();
  }

  v2 = v0[2];
  v1 = v0[3];
  v4 = *v0;
  v3 = v0[1];
  sub_217753208();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x21CEA3580](v5);
  v6 = OUTLINED_FUNCTION_23_6();
  MEMORY[0x21CEA3580](v6);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x21CEA3580](v7);
  OUTLINED_FUNCTION_35();

  return sub_217751FF8();
}

void sub_217265238()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_49_1();
  v1 = v0[1];
  if (v1 == 1)
  {
    goto LABEL_12;
  }

  v2 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_217753208();
  if (v1)
  {
    sub_217753208();
    sub_217751FF8();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_217753208();
    if (v4)
    {
LABEL_4:
      sub_217753208();
      sub_217751FF8();
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_217753208();
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_12:
      sub_217753208();
      OUTLINED_FUNCTION_13();
      return;
    }
  }

  sub_217753208();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_217753208();
  sub_217751FF8();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_217753208();
  OUTLINED_FUNCTION_13();

  sub_217751FF8();
}

void sub_217265348()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[9];
  v16 = v0[8];
  v8 = v0[10];
  v14 = v0[4];
  v15 = v0[11];
  v9 = v0[13];
  v27 = v0[12];
  v28 = v0[7];
  v13 = v0[14];
  v11 = v0[2];
  v12 = v0[15];
  v25 = v0[17];
  v26 = v0[16];
  v23 = v0[19];
  v24 = v0[18];
  v21 = v0[21];
  v22 = v0[20];
  v19 = v0[23];
  v20 = v0[22];
  v17 = *(v0 + 12);
  v18 = *(v0 + 13);
  v10 = v0[28];
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_21726A450(__dst) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    if (v3)
    {
      OUTLINED_FUNCTION_25();
    }

    else
    {
      OUTLINED_FUNCTION_24();
      MEMORY[0x21CEA3550](v2);
    }

    if (v4)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    v29[0] = v14;
    v29[1] = v5;
    v29[2] = v6;
    v29[3] = v28;
    v29[4] = v16;
    v29[5] = v7;
    v29[6] = v8;
    v29[7] = v15;
    v29[8] = v27;
    v29[9] = v9;
    v29[10] = v13;
    v29[11] = v12;
    v29[12] = v26;
    v29[13] = v25;
    v29[14] = v24;
    v29[15] = v23;
    v29[16] = v22;
    v29[17] = v21;
    v29[18] = v20;
    v29[19] = v19;
    if (sub_21726A474(v29) == 1)
    {
      OUTLINED_FUNCTION_25();
    }

    else
    {
      sub_217753208();
      v49 = v14;
      v50 = v5;
      v51 = v6;
      v52 = v28;
      v53 = v16;
      v44 = v7;
      v45 = v8;
      v46 = v15;
      v47 = v27;
      v48 = v9;
      v39 = v13;
      v40 = v12;
      v41 = v26;
      v42 = v25;
      v43 = v24;
      v34 = v23;
      v35 = v22;
      v36 = v21;
      v37 = v20;
      v38 = v19;
      sub_21726519C();
      sub_21726519C();
      sub_21726519C();
      sub_21726519C();
    }

    v31 = v17;
    v32 = v18;
    v33 = v10;
    sub_21726519C();
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217265574(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (a2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if ((a2 & 0xFF00) != 0x200)
  {
    sub_217753208();
  }

  sub_217753208();
  if ((*&a2 & 0xFF0000) != 0x20000)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a4)
  {
    return sub_217753208();
  }

  sub_217753208();
  OUTLINED_FUNCTION_35();

  return sub_217751FF8();
}

void sub_217265660()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_49_1();
  if (*(v0 + 58))
  {
    goto LABEL_13;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = v0[5];
  v10 = v0[6];
  v7 = *(v0 + 56);
  v8 = *(v0 + 57);
  v9 = *(v0 + 25);
  sub_217753208();
  if ((v9 & 1) == 0)
  {
    sub_217753208();
    if (v2)
    {
      sub_217753208();
      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_217753208();
      MEMORY[0x21CEA3550](v1);
      if ((v4 & 1) == 0)
      {
LABEL_5:
        sub_217753208();
        MEMORY[0x21CEA3550](v3);
        if (v8)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }
  }

  sub_217753208();
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_217753208();
  if ((v6 & 1) == 0)
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v5);
    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_217753208();
    goto LABEL_14;
  }

  sub_217753208();
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_217753208();
  MEMORY[0x21CEA3550](v10);
LABEL_14:
  OUTLINED_FUNCTION_95_0();
}

uint64_t sub_217265760()
{
  OUTLINED_FUNCTION_49_1();
  if (*(v0 + 41))
  {
    return sub_217753208();
  }

  v1 = *v0;
  v2 = v0[2];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = *(v0 + 6);
  v6 = *(v0 + 2);
  sub_217753208();
  if (v6)
  {
    sub_217753208();
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_217753208();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x21CEA3580](v10);
    if ((v5 & 1) == 0)
    {
LABEL_4:
      sub_217753208();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x21CEA3580](v7);
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (v4)
  {
    return sub_217753208();
  }

LABEL_8:
  sub_217753208();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x21CEA3580](v8);
}

uint64_t sub_21726582C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  memcpy(__dst, v0, 0x91uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) != 1)
  {
    memcpy(v9, v0, sizeof(v9));
    OUTLINED_FUNCTION_24();
    v5 = OUTLINED_FUNCTION_11_7();
    PlayParameters.hash(into:)(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_25();
      if ((v4 & 1) == 0)
      {
LABEL_4:
        OUTLINED_FUNCTION_24();
        v6 = OUTLINED_FUNCTION_37();
        return MEMORY[0x21CEA3580](v6);
      }
    }

    else
    {
      OUTLINED_FUNCTION_24();
      v8 = OUTLINED_FUNCTION_23_6();
      MEMORY[0x21CEA3580](v8);
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  return OUTLINED_FUNCTION_25();
}

void sub_2172658E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__src, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_98_1();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  __srca = v36;
  v38 = v34 + 64;
  v37 = *(v34 + 64);
  v39 = *(v34 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_42_3();
  sub_217751DE8();
  v40 = 0;
  for (i = 0; v31; v40 ^= sub_217753238())
  {
    v42 = i;
LABEL_7:
    v43 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v44 = (v42 << 10) | (16 * v43);
    v45 = (*(v35 + 48) + v44);
    v46 = *v45;
    v47 = v45[1];
    v48 = (*(v35 + 56) + v44);
    v49 = *v48;
    v50 = v48[1];
    memcpy(&__dst, __srca, 0x48uLL);
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_61();

    sub_217751FF8();
  }

  while (1)
  {
    v42 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v42 >= v30)
    {

      MEMORY[0x21CEA3550](v40);
      OUTLINED_FUNCTION_96();
      return;
    }

    v31 = *(v38 + 8 * v42);
    ++i;
    if (v31)
    {
      i = v42;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_217265A08(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  result = sub_217751DE8();
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v30 = v12;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v15 = *(a2 + 56);
    v16 = (*(a2 + 48) + 16 * (__clz(__rbit64(v8)) | (v13 << 6)));
    v18 = *v16;
    v17 = v16[1];
    OUTLINED_FUNCTION_17_2();
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    sub_217751DE8();
    v23 = OUTLINED_FUNCTION_47_2();
    sub_21726A5E0(v23, v24, v22);
    if (!v17)
    {
LABEL_19:

      return MEMORY[0x21CEA3550](v30);
    }

    OUTLINED_FUNCTION_88_0();
    memcpy(__dst, a1, sizeof(__dst));
    sub_217751FF8();

    switch(v22)
    {
      case 1:
        MEMORY[0x21CEA3550](2);
        sub_217753208();
        goto LABEL_18;
      case 2:
        MEMORY[0x21CEA3550](3);
        v28 = v20;
        goto LABEL_13;
      case 3:
        MEMORY[0x21CEA3550](4);
        v28 = OUTLINED_FUNCTION_23_6();
LABEL_13:
        MEMORY[0x21CEA3580](v28);
        goto LABEL_18;
      case 4:
        MEMORY[0x21CEA3550](5);
        sub_21728054C(__dst, v20);
        v25 = OUTLINED_FUNCTION_47_2();
        v27 = 4;
        goto LABEL_16;
      case 5:
        MEMORY[0x21CEA3550](6);
        sub_217265A08(__dst, v20);
        v25 = OUTLINED_FUNCTION_47_2();
        v27 = 5;
        goto LABEL_16;
      case 6:
        MEMORY[0x21CEA3550](0);
        goto LABEL_18;
      default:
        MEMORY[0x21CEA3550](1);
        sub_217751FF8();
        v25 = OUTLINED_FUNCTION_47_2();
        v27 = 0;
LABEL_16:
        sub_21726A608(v25, v26, v27);
LABEL_18:
        result = sub_217753238();
        v12 = result ^ v30;
        break;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_19;
    }

    v8 = *(v4 + 8 * v14);
    ++v13;
    if (v8)
    {
      v13 = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217265C30()
{
  result = qword_27CB24208;
  if (!qword_27CB24208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24208);
  }

  return result;
}

uint64_t sub_217265C8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_217265CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_217265D30()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v66 = v2;
  v69 = sub_2177516D8();
  v3 = OUTLINED_FUNCTION_0_0(v69);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_81();
  v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24310, &qword_217758680);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_6_1();
  v67 = (v15 - v16);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17, v18);
  v20 = (v60 - v19);
  v22 = v1 + 64;
  v21 = *(v1 + 64);
  v23 = *(v1 + 32);
  OUTLINED_FUNCTION_0_1();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v60[1] = v5 + 16;
  v29 = (v5 + 32);
  v62 = v5;
  v63 = v1;
  v65 = (v5 + 8);
  sub_217751DE8();
  v30 = 0;
  v31 = 0;
  v61 = v20;
  v60[0] = v5 + 32;
  for (i = v1 + 64; ; v22 = i)
  {
    v70 = v30;
    if (!v26)
    {
      break;
    }

LABEL_8:
    v26 &= v26 - 1;
    v34 = v62;
    OUTLINED_FUNCTION_14_8();
    v37 = *v35;
    v36 = v35[1];
    v41 = v68;
    v40 = v69;
    (*(v34 + 16))(v68, v39 + *(v34 + 72) * v38, v69);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
    v43 = *(v42 + 48);
    v44 = v67;
    *v67 = v37;
    *(v44 + 1) = v36;
    v32 = v44;
    v45 = v41;
    v29 = v60[0];
    (*(v34 + 32))(&v44[v43], v45, v40);
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
    sub_217751DE8();
    v20 = v61;
LABEL_9:
    sub_21726A594(v32, v20, &qword_27CB24310, &qword_217758680);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
    OUTLINED_FUNCTION_108(v20, 1);
    if (v50)
    {

      MEMORY[0x21CEA3550](v70);
      OUTLINED_FUNCTION_13();
      return;
    }

    v51 = *(v49 + 48);
    v52 = *v20;
    v53 = v20[1];
    v55 = v68;
    v54 = v69;
    (*v29)(v68, v20 + v51, v69);
    memcpy(v71, v66, sizeof(v71));
    sub_217751FF8();

    OUTLINED_FUNCTION_4_16();
    sub_217269EAC(&qword_27CB24320, v56);
    sub_217751EB8();
    (*v65)(v55, v54);
    v30 = sub_217753238() ^ v70;
  }

  v32 = v67;
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v28)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24318, &qword_217758688);
      OUTLINED_FUNCTION_120_2(v32, v58, v59, v57);
      v26 = 0;
      goto LABEL_9;
    }

    v26 = *(v22 + 8 * v33);
    ++v31;
    if (v26)
    {
      v31 = v33;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2172660B4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v361 = v2;
  v360 = sub_2177516D8();
  v3 = OUTLINED_FUNCTION_0_0(v360);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_81();
  v355 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v349 - v15;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243D8, &qword_217788BC0);
  v17 = OUTLINED_FUNCTION_0_0(v359);
  v357 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17, v21);
  OUTLINED_FUNCTION_6_1();
  v375 = v22 - v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_80();
  v356 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E0, &qword_2177586B8);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  OUTLINED_FUNCTION_6_1();
  v364 = (v32 - v33);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34, v35);
  OUTLINED_FUNCTION_80();
  v362 = v36;
  v37 = *(v1 + 64);
  v363 = v1 + 64;
  v38 = *(v1 + 32);
  OUTLINED_FUNCTION_1_4();
  v370 = v40 & v39;
  v354 = (v5 + 32);
  v352 = (v41 + 63) >> 6;
  v353 = (v5 + 8);
  v358 = v1;
  sub_217751DE8();
  v42 = 0;
  v43 = 0;
  for (i = v16; ; v16 = i)
  {
    v44 = v370;
    v369 = v42;
    if (!v370)
    {
      break;
    }

    v368 = v43;
LABEL_9:
    v370 = (v44 - 1) & v44;
    OUTLINED_FUNCTION_14_8();
    v49 = *v47;
    v48 = v47[1];
    v50 = v356;
    sub_21726A630(v52 + *(v357 + 72) * v51, v356, &qword_27CB243D8, &qword_217788BC0);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
    v54 = *(v53 + 48);
    v45 = v364;
    *v364 = v49;
    *(v45 + 8) = v48;
    sub_21726A594(v50, v45 + v54, &qword_27CB243D8, &qword_217788BC0);
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v53);
    sub_217751DE8();
    v16 = i;
LABEL_10:
    v58 = v362;
    sub_21726A594(v45, v362, &qword_27CB243E0, &qword_2177586B8);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
    OUTLINED_FUNCTION_108(v58, 1);
    if (v60)
    {
LABEL_265:

      MEMORY[0x21CEA3550](v369);
      OUTLINED_FUNCTION_13();
      return;
    }

    v61 = *(v59 + 48);
    v62 = v58;
    v63 = *v58;
    v64 = v58[1];
    sub_21726A594(v62 + v61, v375, &qword_27CB243D8, &qword_217788BC0);
    memcpy(v400, v361, sizeof(v400));
    sub_217751FF8();

    OUTLINED_FUNCTION_117_1(v401);
    OUTLINED_FUNCTION_117_1(v402);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v402) == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v403, v401, sizeof(v403));
      sub_217753208();
      sub_2172DE90C(v400);
    }

    v65 = 24;
    v66 = type metadata accessor for CloudVideoArtwork();
    sub_21726A630(v375 + *(v66 + 20), v16, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_108(v16, 1);
    if (v60)
    {
      sub_217753208();
    }

    else
    {
      v67 = *v354;
      v68 = OUTLINED_FUNCTION_13_2();
      v69(v68);
      sub_217753208();
      OUTLINED_FUNCTION_4_16();
      sub_217269EAC(&qword_27CB24320, v70);
      sub_217751EB8();
      v71 = *v353;
      v72 = OUTLINED_FUNCTION_13_2();
      v73(v72);
    }

    if (*(v375 + *(v66 + 24)))
    {
      sub_217753208();
      sub_21728115C();
    }

    else
    {
      sub_217753208();
    }

    v74 = OUTLINED_FUNCTION_82_0(*(v375 + *(v359 + 28)));
    v372 = v75;
    v76 = *(v74 + 32);
    OUTLINED_FUNCTION_1_4();
    v79 = v78 & v77;
    OUTLINED_FUNCTION_26_3();
    v371 = v80;
    v376 = v81;
    sub_217751DE8();
    v385 = 0;
    v82 = 0;
    if (!v79)
    {
LABEL_21:
      while (1)
      {
        v83 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        if (v83 >= v371)
        {
          goto LABEL_262;
        }

        v79 = *(v372 + 8 * v83);
        ++v82;
        if (v79)
        {
          v82 = v83;
          goto LABEL_25;
        }
      }

LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

LABEL_25:
    v380 = v82;
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_14_8();
    v86 = *v84;
    v85 = v84[1];
    v89 = v88 + v87 * v65;
    v90 = *v89;
    v91 = *(v89 + 8);
    v92 = v79;
    v93 = *(v89 + 16);
    sub_217751DE8();
    v386 = v90;
    v374 = v91;
    sub_21726A5E0(v90, v91, v93);
    if (v85)
    {
      v379 = (v92 - 1) & v92;
      memcpy(v399, v400, sizeof(v399));
      sub_217751FF8();

      switch(v93)
      {
        case 1:
          OUTLINED_FUNCTION_112_1();
          sub_217753208();
          goto LABEL_260;
        case 2:
          OUTLINED_FUNCTION_113_0();
          v224 = v386;
          goto LABEL_156;
        case 3:
          OUTLINED_FUNCTION_116_0();
          v224 = OUTLINED_FUNCTION_28_0(v386);
LABEL_156:
          MEMORY[0x21CEA3580](v224);
          goto LABEL_260;
        case 4:
          OUTLINED_FUNCTION_114_0();
          v97 = v386;
          MEMORY[0x21CEA3550](*(v386 + 16));
          v94 = v97;
          v383 = *(v97 + 16);
          if (!v383)
          {
            goto LABEL_153;
          }

          v98 = 0;
          v382 = v97 + 32;
LABEL_30:
          v99 = v382 + v98 * v65;
          v101 = *v99;
          v100 = *(v99 + 8);
          switch(*(v99 + 16))
          {
            case 1:
              OUTLINED_FUNCTION_112_1();
              sub_217753208();
              goto LABEL_151;
            case 2:
              OUTLINED_FUNCTION_113_0();
              v158 = v101;
              goto LABEL_90;
            case 3:
              OUTLINED_FUNCTION_116_0();
              if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v158 = v101;
              }

              else
              {
                v158 = 0;
              }

LABEL_90:
              MEMORY[0x21CEA3580](v158);
              goto LABEL_151;
            case 4:
              v373 = *(v99 + 8);
              OUTLINED_FUNCTION_114_0();
              MEMORY[0x21CEA3550](*(v101 + 16));
              v105 = *(v101 + 16);
              if (!v105)
              {
                goto LABEL_151;
              }

              v106 = v101 + 32;
              sub_217751DE8();
              v107 = 0;
              v377 = v101 + 32;
              v378 = v105;
              v381 = v98;
              v384 = v101;
LABEL_34:
              v108 = v106 + v107 * v65;
              v109 = *v108;
              v110 = *(v108 + 8);
              switch(*(v108 + 16))
              {
                case 1:
                  OUTLINED_FUNCTION_112_1();
                  sub_217753208();
                  goto LABEL_83;
                case 2:
                  OUTLINED_FUNCTION_113_0();
                  v128 = v109;
                  goto LABEL_55;
                case 3:
                  OUTLINED_FUNCTION_116_0();
                  v128 = OUTLINED_FUNCTION_37();
LABEL_55:
                  MEMORY[0x21CEA3580](v128);
                  goto LABEL_83;
                case 4:
                  v388 = *(v108 + 8);
                  OUTLINED_FUNCTION_114_0();
                  MEMORY[0x21CEA3550](*(v109 + 16));
                  v111 = OUTLINED_FUNCTION_85_0();
                  if (!v109)
                  {
                    goto LABEL_83;
                  }

                  v387 = v107;
                  v112 = v111 + 32;
                  v113 = v111;
                  sub_217751DE8();
                  v114 = 0;
                  while (2)
                  {
                    v115 = v112 + v114 * v65;
                    v117 = *v115;
                    v116 = *(v115 + 8);
                    switch(*(v115 + 16))
                    {
                      case 1:
                        OUTLINED_FUNCTION_112_1();
                        sub_217753208();
                        goto LABEL_51;
                      case 2:
                        OUTLINED_FUNCTION_113_0();
                        v127 = v117;
                        goto LABEL_46;
                      case 3:
                        OUTLINED_FUNCTION_116_0();
                        v127 = OUTLINED_FUNCTION_23_6();
LABEL_46:
                        MEMORY[0x21CEA3580](v127);
                        goto LABEL_51;
                      case 4:
                        OUTLINED_FUNCTION_114_0();
                        MEMORY[0x21CEA3550](*(v117 + 16));
                        v121 = *(v117 + 16);
                        if (v121)
                        {
                          sub_217751DE8();
                          v122 = (v117 + 48);
                          do
                          {
                            v123 = *(v122 - 1);
                            v396 = *(v122 - 2);
                            v397 = v123;
                            v124 = *v122;
                            v122 += 24;
                            v398 = v124;
                            sub_21726A5E0(v396, v123, v124);
                            JSONValue.hash(into:)(v399);
                            sub_21726A608(v396, v397, v398);
                            --v121;
                          }

                          while (v121);
                          v125 = OUTLINED_FUNCTION_13_2();
                          sub_21726A608(v125, v126, 4);
                          v65 = 24;
                        }

                        goto LABEL_51;
                      case 5:
                        OUTLINED_FUNCTION_110();
                        sub_217751DE8();
                        sub_217265A08(v399, v117);
                        v118 = OUTLINED_FUNCTION_13_2();
                        v120 = 5;
                        goto LABEL_49;
                      case 6:
                        OUTLINED_FUNCTION_115();
                        goto LABEL_51;
                      default:
                        OUTLINED_FUNCTION_111_0();
                        sub_217751DE8();
                        OUTLINED_FUNCTION_29_5();
                        sub_217751FF8();
                        v118 = OUTLINED_FUNCTION_13_2();
                        v120 = 0;
LABEL_49:
                        sub_21726A608(v118, v119, v120);
LABEL_51:
                        if (++v114 != v109)
                        {
                          continue;
                        }

                        sub_21726A608(v113, v388, 4);
                        break;
                    }

                    goto LABEL_82;
                  }

                case 5:
                  v387 = v107;
                  OUTLINED_FUNCTION_110();
                  v129 = v109;
                  v131 = *(v109 + 64);
                  v130 = v109 + 64;
                  v132 = *(v129 + 32);
                  OUTLINED_FUNCTION_3_17();
                  v135 = v134 & v133;
                  v388 = v110;
                  OUTLINED_FUNCTION_50_1(v129, v110);
                  v137 = v136 >> 6;
                  v389 = v129;
                  sub_217751DE8();
                  v390 = 0;
                  v65 = 0;
                  if (v135)
                  {
                    goto LABEL_62;
                  }

                  break;
                case 6:
                  OUTLINED_FUNCTION_115();
                  goto LABEL_83;
                default:
                  OUTLINED_FUNCTION_111_0();
                  sub_217751DE8();
                  sub_217751FF8();
                  sub_21726A608(v109, v110, 0);
                  goto LABEL_83;
              }

              while (1)
              {
                v138 = v65 + 1;
                if (__OFADD__(v65, 1))
                {
                  break;
                }

                if (v138 >= v137)
                {
                  goto LABEL_81;
                }

                v135 = *(v130 + 8 * v138);
                ++v65;
                if (v135)
                {
                  v65 = v138;
LABEL_62:
                  OUTLINED_FUNCTION_14_8();
                  v141 = *v139;
                  v140 = v139[1];
                  OUTLINED_FUNCTION_17_2();
                  v144 = *v142;
                  v143 = *(v142 + 8);
                  v145 = *(v142 + 16);
                  sub_217751DE8();
                  v146 = OUTLINED_FUNCTION_48_2();
                  sub_21726A5E0(v146, v147, v145);
                  if (v140)
                  {
                    v135 &= v135 - 1;
                    OUTLINED_FUNCTION_63_0();
                    sub_217751FF8();

                    switch(v145)
                    {
                      case 1:
                        OUTLINED_FUNCTION_66();
                        sub_217753208();
                        goto LABEL_78;
                      case 2:
                        OUTLINED_FUNCTION_67_2();
                        v155 = v144;
                        goto LABEL_73;
                      case 3:
                        OUTLINED_FUNCTION_70_1();
                        if ((v144 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                        {
                          v155 = v144;
                        }

                        else
                        {
                          v155 = 0;
                        }

LABEL_73:
                        MEMORY[0x21CEA3580](v155);
                        goto LABEL_78;
                      case 4:
                        OUTLINED_FUNCTION_68_3();
                        MEMORY[0x21CEA3550](*(v144 + 16));
                        v151 = *(v144 + 16);
                        if (v151)
                        {
                          v152 = (v144 + 48);
                          do
                          {
                            v153 = *(v152 - 1);
                            v395[0] = *(v152 - 2);
                            v395[1] = v153;
                            v154 = *v152;
                            v152 += 24;
                            OUTLINED_FUNCTION_77_0(v395[0], v153, v154);
                            sub_21726A608(v395[0], v395[1], v395[2]);
                            --v151;
                          }

                          while (v151);
                        }

                        v148 = OUTLINED_FUNCTION_48_2();
                        v150 = 4;
                        goto LABEL_76;
                      case 5:
                        OUTLINED_FUNCTION_64_1();
                        sub_217265A08(&v396, v144);
                        v148 = OUTLINED_FUNCTION_48_2();
                        v150 = 5;
                        goto LABEL_76;
                      case 6:
                        OUTLINED_FUNCTION_69_1();
                        goto LABEL_78;
                      default:
                        OUTLINED_FUNCTION_65_1();
                        sub_217751FF8();
                        v148 = OUTLINED_FUNCTION_48_2();
                        v150 = 0;
LABEL_76:
                        sub_21726A608(v148, v149, v150);
LABEL_78:
                        v156 = sub_217753238();
                        OUTLINED_FUNCTION_39(v156);
                        if (!v135)
                        {
                          continue;
                        }

                        goto LABEL_62;
                    }
                  }

LABEL_81:
                  v157 = v389;

                  MEMORY[0x21CEA3550](v390);
                  OUTLINED_FUNCTION_119_0(v157, v388);
LABEL_82:
                  v98 = v381;
                  v101 = v384;
                  v106 = v377;
                  v105 = v378;
                  v107 = v387;
LABEL_83:
                  if (++v107 == v105)
                  {
                    v102 = v101;
                    v103 = v373;
                    v104 = 4;
LABEL_85:
                    sub_21726A608(v102, v103, v104);
LABEL_151:
                    if (++v98 == v383)
                    {
                      v94 = v386;
LABEL_153:
                      v95 = v374;
                      v96 = 4;
                      goto LABEL_259;
                    }

                    goto LABEL_30;
                  }

                  goto LABEL_34;
                }
              }

              __break(1u);
              goto LABEL_265;
            case 5:
              v381 = v98;
              OUTLINED_FUNCTION_110();
              v159 = *(v101 + 64);
              v160 = *(v101 + 32);
              OUTLINED_FUNCTION_3_17();
              v163 = v162 & v161;
              v373 = v100;
              v164 = v100;
              v166 = v165;
              OUTLINED_FUNCTION_50_1(v101, v164);
              v378 = v167 >> 6;
              sub_217751DE8();
              v168 = 0;
              v169 = 0;
              v377 = v166;
LABEL_93:
              v388 = v168;
              if (v163)
              {
                goto LABEL_98;
              }

              break;
            case 6:
              OUTLINED_FUNCTION_115();
              goto LABEL_151;
            default:
              OUTLINED_FUNCTION_111_0();
              sub_217751DE8();
              sub_217751FF8();
              v102 = v101;
              v103 = v100;
              v104 = 0;
              goto LABEL_85;
          }

          do
          {
            v170 = v169 + 1;
            if (__OFADD__(v169, 1))
            {
              __break(1u);
              goto LABEL_267;
            }

            if (v170 >= v378)
            {
              goto LABEL_150;
            }

            v163 = *(v166 + 8 * v170);
            ++v169;
          }

          while (!v163);
          v169 = v170;
LABEL_98:
          v171 = __clz(__rbit64(v163)) | (v169 << 6);
          v172 = (*(v101 + 48) + 16 * v171);
          v174 = *v172;
          v173 = v172[1];
          v175 = *(v101 + 56) + v171 * v65;
          v176 = v101;
          v177 = *v175;
          v178 = *(v175 + 8);
          v179 = *(v175 + 16);
          sub_217751DE8();
          v389 = v177;
          v387 = v178;
          v180 = v178;
          v101 = v176;
          v65 = 24;
          sub_21726A5E0(v177, v180, v179);
          v168 = v388;
          if (!v173)
          {
LABEL_150:

            MEMORY[0x21CEA3550](v168);
            sub_21726A608(v101, v373, 5);
            v98 = v381;
            goto LABEL_151;
          }

          v163 &= v163 - 1;
          OUTLINED_FUNCTION_63_0();
          sub_217751FF8();

          switch(v179)
          {
            case 1:
              OUTLINED_FUNCTION_66();
              sub_217753208();
              goto LABEL_147;
            case 2:
              OUTLINED_FUNCTION_67_2();
              v199 = v389;
              goto LABEL_121;
            case 3:
              OUTLINED_FUNCTION_70_1();
              v199 = OUTLINED_FUNCTION_28_0(v389);
LABEL_121:
              MEMORY[0x21CEA3580](v199);
              goto LABEL_147;
            case 4:
              OUTLINED_FUNCTION_68_3();
              v183 = v389;
              MEMORY[0x21CEA3550](*(v389 + 16));
              v184 = OUTLINED_FUNCTION_85_0();
              if (!v183)
              {
                sub_21726A608(v184, v387, 4);
                v166 = v377;
                goto LABEL_147;
              }

              v185 = 0;
              v390 = v184 + 32;
              v384 = v101;
              while (2)
              {
                v186 = v390 + 24 * v185;
                v188 = *v186;
                v187 = *(v186 + 8);
                switch(*(v186 + 16))
                {
                  case 1:
                    OUTLINED_FUNCTION_66();
                    sub_217753208();
                    goto LABEL_117;
                  case 2:
                    OUTLINED_FUNCTION_67_2();
                    v198 = v188;
                    goto LABEL_112;
                  case 3:
                    OUTLINED_FUNCTION_70_1();
                    v198 = OUTLINED_FUNCTION_23_6();
LABEL_112:
                    MEMORY[0x21CEA3580](v198);
                    goto LABEL_117;
                  case 4:
                    OUTLINED_FUNCTION_68_3();
                    MEMORY[0x21CEA3550](*(v188 + 16));
                    v192 = *(v188 + 16);
                    if (v192)
                    {
                      sub_217751DE8();
                      v193 = (v188 + 48);
                      do
                      {
                        v194 = *(v193 - 1);
                        v395[0] = *(v193 - 2);
                        v395[1] = v194;
                        v195 = *v193;
                        v193 += 24;
                        OUTLINED_FUNCTION_77_0(v395[0], v194, v195);
                        sub_21726A608(v395[0], v395[1], v395[2]);
                        --v192;
                      }

                      while (v192);
                      v196 = OUTLINED_FUNCTION_13_2();
                      sub_21726A608(v196, v197, 4);
                      v65 = 24;
                    }

                    v101 = v384;
                    goto LABEL_117;
                  case 5:
                    OUTLINED_FUNCTION_64_1();
                    sub_217751DE8();
                    sub_217265A08(&v396, v188);
                    v189 = OUTLINED_FUNCTION_13_2();
                    v191 = 5;
                    goto LABEL_115;
                  case 6:
                    OUTLINED_FUNCTION_69_1();
                    goto LABEL_117;
                  default:
                    OUTLINED_FUNCTION_65_1();
                    sub_217751DE8();
                    OUTLINED_FUNCTION_29_5();
                    sub_217751FF8();
                    v189 = OUTLINED_FUNCTION_13_2();
                    v191 = 0;
LABEL_115:
                    sub_21726A608(v189, v190, v191);
LABEL_117:
                    if (++v185 != v183)
                    {
                      continue;
                    }

                    sub_21726A608(v389, v387, 4);
                    break;
                }

                goto LABEL_146;
              }

            case 5:
              OUTLINED_FUNCTION_64_1();
              v200 = OUTLINED_FUNCTION_82_0(v389);
              v366 = v201;
              v202 = *(v200 + 32);
              OUTLINED_FUNCTION_1_4();
              v205 = v204 & v203;
              OUTLINED_FUNCTION_26_3();
              v365 = v206;
              sub_217751DE8();
              v390 = 0;
              v65 = 0;
              v384 = v101;
              if (v205)
              {
                goto LABEL_128;
              }

              break;
            case 6:
              OUTLINED_FUNCTION_69_1();
              goto LABEL_147;
            default:
              OUTLINED_FUNCTION_65_1();
              v181 = v389;
              v182 = v387;
              sub_217751FF8();
              sub_21726A608(v181, v182, 0);
              goto LABEL_147;
          }

          while (1)
          {
            v207 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_269;
            }

            if (v207 >= v365)
            {
              goto LABEL_145;
            }

            v205 = *(v366 + 8 * v207);
            ++v65;
            if (v205)
            {
              v65 = v207;
LABEL_128:
              OUTLINED_FUNCTION_6_9(__clz(__rbit64(v205)) | (v65 << 6));
              v210 = *v208;
              v209 = *(v208 + 8);
              v211 = *(v208 + 16);
              sub_217751DE8();
              v212 = OUTLINED_FUNCTION_13_2();
              sub_21726A5E0(v212, v213, v211);
              if (v173)
              {
                v205 &= v205 - 1;
                OUTLINED_FUNCTION_52_1();
                OUTLINED_FUNCTION_109_0();

                switch(v211)
                {
                  case 1:
                    MEMORY[0x21CEA3550](2);
                    sub_217753208();
                    goto LABEL_142;
                  case 2:
                    MEMORY[0x21CEA3550](3);
                    v221 = v210;
                    goto LABEL_137;
                  case 3:
                    MEMORY[0x21CEA3550](4);
                    v221 = OUTLINED_FUNCTION_23_6();
LABEL_137:
                    MEMORY[0x21CEA3580](v221);
                    goto LABEL_142;
                  case 4:
                    MEMORY[0x21CEA3550](5);
                    MEMORY[0x21CEA3550](*(v210 + 16));
                    v217 = *(v210 + 16);
                    if (v217)
                    {
                      v218 = (v210 + 48);
                      do
                      {
                        v219 = *(v218 - 1);
                        v391[0] = *(v218 - 2);
                        v391[1] = v219;
                        v220 = *v218;
                        v218 += 24;
                        OUTLINED_FUNCTION_76_0(v391[0], v219, v220);
                        sub_21726A608(v391[0], v391[1], v391[2]);
                        --v217;
                      }

                      while (v217);
                    }

                    v214 = OUTLINED_FUNCTION_13_2();
                    v216 = 4;
                    goto LABEL_140;
                  case 5:
                    MEMORY[0x21CEA3550](6);
                    sub_217265A08(v395, v210);
                    v214 = OUTLINED_FUNCTION_13_2();
                    v216 = 5;
                    goto LABEL_140;
                  case 6:
                    MEMORY[0x21CEA3550](0);
                    goto LABEL_142;
                  default:
                    MEMORY[0x21CEA3550](1);
                    OUTLINED_FUNCTION_29_5();
                    sub_217751FF8();
                    v214 = OUTLINED_FUNCTION_13_2();
                    v216 = 0;
LABEL_140:
                    sub_21726A608(v214, v215, v216);
LABEL_142:
                    v173 = v395;
                    v222 = sub_217753238();
                    OUTLINED_FUNCTION_39(v222);
                    if (!v205)
                    {
                      continue;
                    }

                    goto LABEL_128;
                }
              }

LABEL_145:
              v223 = v389;

              MEMORY[0x21CEA3550](v390);
              OUTLINED_FUNCTION_119_0(v223, v387);
              v101 = v384;
LABEL_146:
              v166 = v377;
              v168 = v388;
LABEL_147:
              v168 ^= sub_217753238();
              goto LABEL_93;
            }
          }

        case 5:
          OUTLINED_FUNCTION_110();
          v226 = v386 + 64;
          v225 = *(v386 + 64);
          v227 = *(v386 + 32);
          OUTLINED_FUNCTION_1_4();
          v230 = v229 & v228;
          OUTLINED_FUNCTION_26_3();
          v366 = v231;
          sub_217751DE8();
          v232 = 0;
          v233 = 0;
          v384 = v226;
          if (v230)
          {
            goto LABEL_159;
          }

          break;
        case 6:
          OUTLINED_FUNCTION_115();
          goto LABEL_260;
        default:
          OUTLINED_FUNCTION_111_0();
          sub_217751FF8();
          v94 = OUTLINED_FUNCTION_35();
          v96 = 0;
          goto LABEL_259;
      }

LABEL_160:
      while (1)
      {
        v235 = v233 + 1;
        if (__OFADD__(v233, 1))
        {
          break;
        }

        if (v235 >= v366)
        {
          goto LABEL_258;
        }

        v230 = *(v226 + 8 * v235);
        ++v233;
        if (v230)
        {
          v234 = v232;
          v233 = v235;
LABEL_164:
          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_14_8();
          v236 = v230;
          v239 = *v237;
          v238 = v237[1];
          v242 = v241 + v240 * v65;
          v244 = *v242;
          v243 = *(v242 + 8);
          v245 = *(v242 + 16);
          sub_217751DE8();
          v387 = v244;
          v382 = v243;
          sub_21726A5E0(v244, v243, v245);
          v232 = v234;
          v226 = v384;
          if (v238)
          {
            v383 = (v236 - 1) & v236;
            OUTLINED_FUNCTION_63_0();
            sub_217751FF8();

            switch(v245)
            {
              case 1:
                OUTLINED_FUNCTION_66();
                sub_217753208();
                goto LABEL_255;
              case 2:
                OUTLINED_FUNCTION_67_2();
                v298 = v387;
                goto LABEL_223;
              case 3:
                OUTLINED_FUNCTION_70_1();
                v298 = OUTLINED_FUNCTION_28_0(v387);
LABEL_223:
                MEMORY[0x21CEA3580](v298);
                goto LABEL_255;
              case 4:
                OUTLINED_FUNCTION_68_3();
                v249 = v387;
                v250 = &v396;
                MEMORY[0x21CEA3550](*(v387 + 16));
                v246 = v249;
                v251 = *(v249 + 16);
                if (!v251)
                {
                  goto LABEL_219;
                }

                v252 = 0;
                v389 = v249 + 32;
                v365 = v251;
                v373 = v232;
                do
                {
                  v253 = v389 + v252 * v65;
                  v254 = *v253;
                  v255 = *(v253 + 8);
                  switch(*(v253 + 16))
                  {
                    case 1:
                      OUTLINED_FUNCTION_66();
                      v250 = &v396;
                      sub_217753208();
                      goto LABEL_217;
                    case 2:
                      OUTLINED_FUNCTION_67_2();
                      v250 = &v396;
                      v272 = v254;
                      goto LABEL_191;
                    case 3:
                      OUTLINED_FUNCTION_70_1();
                      v272 = OUTLINED_FUNCTION_37();
                      v250 = &v396;
LABEL_191:
                      MEMORY[0x21CEA3580](v272);
                      goto LABEL_217;
                    case 4:
                      v381 = *(v253 + 8);
                      OUTLINED_FUNCTION_68_3();
                      v250 = &v396;
                      MEMORY[0x21CEA3550](*(v254 + 16));
                      v256 = OUTLINED_FUNCTION_85_0();
                      if (!v254)
                      {
                        goto LABEL_217;
                      }

                      v378 = v252;
                      v257 = v256 + 32;
                      v388 = v256;
                      sub_217751DE8();
                      v258 = 0;
                      while (2)
                      {
                        v259 = v257 + v258 * v65;
                        v261 = *v259;
                        v260 = *(v259 + 8);
                        switch(*(v259 + 16))
                        {
                          case 1:
                            OUTLINED_FUNCTION_66();
                            v250 = &v396;
                            sub_217753208();
                            goto LABEL_187;
                          case 2:
                            OUTLINED_FUNCTION_67_2();
                            v250 = &v396;
                            v271 = v261;
                            goto LABEL_182;
                          case 3:
                            OUTLINED_FUNCTION_70_1();
                            v271 = OUTLINED_FUNCTION_23_6();
                            v250 = &v396;
LABEL_182:
                            MEMORY[0x21CEA3580](v271);
                            goto LABEL_187;
                          case 4:
                            OUTLINED_FUNCTION_68_3();
                            v250 = &v396;
                            MEMORY[0x21CEA3550](*(v261 + 16));
                            v265 = *(v261 + 16);
                            if (v265)
                            {
                              sub_217751DE8();
                              v266 = (v261 + 48);
                              do
                              {
                                v267 = *(v266 - 1);
                                v395[0] = *(v266 - 2);
                                v395[1] = v267;
                                v268 = *v266;
                                v266 += 24;
                                OUTLINED_FUNCTION_77_0(v395[0], v267, v268);
                                sub_21726A608(v395[0], v395[1], v395[2]);
                                --v265;
                              }

                              while (v265);
                              v269 = OUTLINED_FUNCTION_13_2();
                              sub_21726A608(v269, v270, 4);
                            }

                            v65 = 24;
                            goto LABEL_187;
                          case 5:
                            OUTLINED_FUNCTION_64_1();
                            sub_217751DE8();
                            sub_217265A08(&v396, v261);
                            v262 = OUTLINED_FUNCTION_13_2();
                            v264 = 5;
                            goto LABEL_185;
                          case 6:
                            OUTLINED_FUNCTION_69_1();
                            goto LABEL_187;
                          default:
                            OUTLINED_FUNCTION_65_1();
                            sub_217751DE8();
                            OUTLINED_FUNCTION_29_5();
                            sub_217751FF8();
                            v262 = OUTLINED_FUNCTION_13_2();
                            v264 = 0;
LABEL_185:
                            sub_21726A608(v262, v263, v264);
LABEL_187:
                            if (++v258 != v254)
                            {
                              continue;
                            }

                            sub_21726A608(v388, v381, 4);
                            break;
                        }

                        goto LABEL_216;
                      }

                    case 5:
                      v378 = v252;
                      OUTLINED_FUNCTION_64_1();
                      v273 = *(v254 + 64);
                      v377 = v254 + 64;
                      v274 = *(v254 + 32);
                      OUTLINED_FUNCTION_3_17();
                      v275 = v254;
                      v278 = v277 & v276;
                      v381 = v255;
                      OUTLINED_FUNCTION_50_1(v275, v255);
                      v65 = v279 >> 6;
                      v388 = v275;
                      sub_217751DE8();
                      v390 = 0;
                      v280 = 0;
                      if (v278)
                      {
                        goto LABEL_198;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_69_1();
                      goto LABEL_217;
                    default:
                      OUTLINED_FUNCTION_65_1();
                      sub_217751DE8();
                      sub_217751FF8();
                      sub_21726A608(v254, v255, 0);
                      goto LABEL_217;
                  }

                  do
                  {
LABEL_194:
                    v281 = v280 + 1;
                    if (__OFADD__(v280, 1))
                    {
                      goto LABEL_268;
                    }

                    if (v281 >= v65)
                    {
                      goto LABEL_215;
                    }

                    v278 = *(v377 + 8 * v281);
                    ++v280;
                  }

                  while (!v278);
                  v280 = v281;
LABEL_198:
                  while (2)
                  {
                    OUTLINED_FUNCTION_6_9(__clz(__rbit64(v278)) | (v280 << 6));
                    v284 = *v282;
                    v283 = *(v282 + 8);
                    v285 = *(v282 + 16);
                    sub_217751DE8();
                    v286 = OUTLINED_FUNCTION_13_2();
                    sub_21726A5E0(v286, v287, v285);
                    if (v250)
                    {
                      v278 &= v278 - 1;
                      OUTLINED_FUNCTION_52_1();
                      OUTLINED_FUNCTION_109_0();

                      switch(v285)
                      {
                        case 1:
                          MEMORY[0x21CEA3550](2);
                          sub_217753208();
                          goto LABEL_212;
                        case 2:
                          MEMORY[0x21CEA3550](3);
                          v295 = v284;
                          goto LABEL_207;
                        case 3:
                          MEMORY[0x21CEA3550](4);
                          v295 = OUTLINED_FUNCTION_23_6();
LABEL_207:
                          MEMORY[0x21CEA3580](v295);
                          goto LABEL_212;
                        case 4:
                          MEMORY[0x21CEA3550](5);
                          MEMORY[0x21CEA3550](*(v284 + 16));
                          v291 = *(v284 + 16);
                          if (v291)
                          {
                            v292 = (v284 + 48);
                            do
                            {
                              v293 = *(v292 - 1);
                              v391[0] = *(v292 - 2);
                              v391[1] = v293;
                              v294 = *v292;
                              v292 += 24;
                              OUTLINED_FUNCTION_76_0(v391[0], v293, v294);
                              sub_21726A608(v391[0], v391[1], v391[2]);
                              --v291;
                            }

                            while (v291);
                          }

                          v288 = OUTLINED_FUNCTION_13_2();
                          v290 = 4;
                          goto LABEL_210;
                        case 5:
                          MEMORY[0x21CEA3550](6);
                          sub_217265A08(v395, v284);
                          v288 = OUTLINED_FUNCTION_13_2();
                          v290 = 5;
                          goto LABEL_210;
                        case 6:
                          MEMORY[0x21CEA3550](0);
                          goto LABEL_212;
                        default:
                          MEMORY[0x21CEA3550](1);
                          OUTLINED_FUNCTION_29_5();
                          sub_217751FF8();
                          v288 = OUTLINED_FUNCTION_13_2();
                          v290 = 0;
LABEL_210:
                          sub_21726A608(v288, v289, v290);
LABEL_212:
                          v250 = v395;
                          v296 = sub_217753238();
                          OUTLINED_FUNCTION_39(v296);
                          if (!v278)
                          {
                            goto LABEL_194;
                          }

                          continue;
                      }
                    }

                    break;
                  }

LABEL_215:
                  v297 = v388;

                  v250 = &v396;
                  MEMORY[0x21CEA3550](v390);
                  OUTLINED_FUNCTION_119_0(v297, v381);
LABEL_216:
                  v226 = v384;
                  v232 = v373;
                  v251 = v365;
                  v252 = v378;
LABEL_217:
                  ++v252;
                }

                while (v252 != v251);
                v246 = v387;
LABEL_219:
                v247 = v382;
                v248 = 4;
LABEL_220:
                sub_21726A608(v246, v247, v248);
                goto LABEL_255;
              case 5:
                v373 = v232;
                OUTLINED_FUNCTION_64_1();
                v300 = v387 + 64;
                v299 = *(v387 + 64);
                v301 = *(v387 + 32);
                OUTLINED_FUNCTION_1_4();
                v65 = v303 & v302;
                v305 = (v304 + 63) >> 6;
                sub_217751DE8();
                v306 = 0;
                v307 = 0;
                v388 = v300;
LABEL_226:
                v389 = v306;
                if (v65)
                {
                  goto LABEL_231;
                }

                break;
              case 6:
                OUTLINED_FUNCTION_69_1();
                goto LABEL_255;
              default:
                OUTLINED_FUNCTION_65_1();
                sub_217751FF8();
                v246 = OUTLINED_FUNCTION_35();
                v248 = 0;
                goto LABEL_220;
            }

            while (1)
            {
              v308 = v307 + 1;
              if (__OFADD__(v307, 1))
              {
                goto LABEL_271;
              }

              if (v308 >= v305)
              {
                goto LABEL_254;
              }

              v65 = *(v300 + 8 * v308);
              ++v307;
              if (v65)
              {
                v307 = v308;
LABEL_231:
                OUTLINED_FUNCTION_14_8();
                v311 = *v309;
                v310 = v309[1];
                OUTLINED_FUNCTION_17_2();
                v314 = *v312;
                v313 = *(v312 + 8);
                v315 = *(v312 + 16);
                sub_217751DE8();
                v390 = v314;
                v316 = v314;
                v317 = v313;
                sub_21726A5E0(v316, v313, v315);
                v300 = v388;
                if (v310)
                {
                  v65 &= v65 - 1;
                  OUTLINED_FUNCTION_52_1();
                  sub_217751FF8();

                  switch(v315)
                  {
                    case 1:
                      MEMORY[0x21CEA3550](2);
                      sub_217753208();
                      goto LABEL_250;
                    case 2:
                      MEMORY[0x21CEA3550](3);
                      v325 = v390;
                      goto LABEL_240;
                    case 3:
                      MEMORY[0x21CEA3550](4);
                      v325 = OUTLINED_FUNCTION_28_0(v390);
LABEL_240:
                      MEMORY[0x21CEA3580](v325);
                      goto LABEL_250;
                    case 4:
                      v319 = v305;
                      MEMORY[0x21CEA3550](5);
                      v320 = v390;
                      MEMORY[0x21CEA3550](*(v390 + 16));
                      v321 = *(v320 + 16);
                      if (v321)
                      {
                        v322 = (v390 + 48);
                        do
                        {
                          v323 = *(v322 - 1);
                          v391[0] = *(v322 - 2);
                          v391[1] = v323;
                          v324 = *v322;
                          v322 += 24;
                          OUTLINED_FUNCTION_76_0(v391[0], v323, v324);
                          sub_21726A608(v391[0], v391[1], v391[2]);
                          --v321;
                        }

                        while (v321);
                      }

                      sub_21726A608(v390, v317, 4);
                      v305 = v319;
                      goto LABEL_250;
                    case 5:
                      v350 = v317;
                      v351 = v305;
                      MEMORY[0x21CEA3550](6);
                      v326 = OUTLINED_FUNCTION_82_0(v390);
                      v377 = v327;
                      v328 = *(v326 + 32);
                      OUTLINED_FUNCTION_1_4();
                      v331 = v330 & v329;
                      OUTLINED_FUNCTION_26_3();
                      v365 = v332;
                      sub_217751DE8();
                      v381 = 0;
                      v333 = 0;
                      if (v331)
                      {
                        goto LABEL_243;
                      }

                      break;
                    case 6:
                      MEMORY[0x21CEA3550](0);
                      goto LABEL_250;
                    default:
                      MEMORY[0x21CEA3550](1);
                      v318 = v390;
                      sub_217751FF8();
                      sub_21726A608(v318, v317, 0);
LABEL_250:
                      v341 = v389;
                      goto LABEL_251;
                  }

                  while (1)
                  {
                    v334 = v333 + 1;
                    if (__OFADD__(v333, 1))
                    {
                      goto LABEL_273;
                    }

                    if (v334 >= v365)
                    {
                      goto LABEL_252;
                    }

                    ++v333;
                    if (*(v377 + 8 * v334))
                    {
                      while (1)
                      {
                        OUTLINED_FUNCTION_14_8();
                        v336 = v335[1];
                        v378 = *v335;
                        OUTLINED_FUNCTION_17_2();
                        v338 = *v337;
                        v339 = *(v337 + 8);
                        v340 = *(v337 + 16);
                        sub_217751DE8();
                        sub_21726A5E0(v338, v339, v340);
                        if (!v336)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_88_0();
                        v392 = v338;
                        v393 = v339;
                        v394 = v340;
                        memcpy(v391, v395, sizeof(v391));
                        sub_217751FF8();

                        JSONValue.hash(into:)(v391);
                        sub_21726A608(v392, v393, v394);
                        v381 ^= sub_217753238();
                        v333 = v334;
LABEL_243:
                        v334 = v333;
                      }

LABEL_252:
                      v342 = v390;

                      MEMORY[0x21CEA3550](v381);
                      sub_21726A608(v342, v350, 5);
                      v300 = v388;
                      v341 = v389;
                      v305 = v351;
LABEL_251:
                      v306 = sub_217753238() ^ v341;
                      goto LABEL_226;
                    }
                  }
                }

LABEL_254:
                v343 = v387;

                MEMORY[0x21CEA3550](v389);
                OUTLINED_FUNCTION_119_0(v343, v382);
                v226 = v384;
                v232 = v373;
LABEL_255:
                v232 ^= sub_217753238();
                v230 = v383;
                if (v383)
                {
LABEL_159:
                  v234 = v232;
                  goto LABEL_164;
                }

                goto LABEL_160;
              }
            }
          }

LABEL_258:
          v344 = v386;

          MEMORY[0x21CEA3550](v232);
          v94 = v344;
          v95 = v374;
          v96 = 5;
LABEL_259:
          sub_21726A608(v94, v95, v96);
LABEL_260:
          v385 ^= sub_217753238();
          v79 = v379;
          v82 = v380;
          if (v379)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }
      }

LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

LABEL_262:

    MEMORY[0x21CEA3550](v385);
    sub_2171F0738(v375, &qword_27CB243D8, &qword_217788BC0);
    v345 = sub_217753238();
    v43 = v368;
    v42 = v345 ^ v369;
  }

  v45 = v364;
  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v46 >= v352)
    {
      v368 = v43;
      v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243E8, &unk_2177586C0);
      OUTLINED_FUNCTION_120_2(v45, v347, v348, v346);
      v370 = 0;
      goto LABEL_10;
    }

    v44 = *(v363 + 8 * v46);
    ++v43;
    if (v44)
    {
      v368 = v46;
      goto LABEL_9;
    }
  }

LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
}

void sub_217267C90()
{
  OUTLINED_FUNCTION_12();
  v427 = v0;
  v3 = v1 + 64;
  v2 = *(v1 + 64);
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 & v5;
  v9 = ((v8 + 63) >> 6);
  v424 = v10;
  sub_217751DE8();
  v11 = 0;
  v12 = 0;
  v425 = v9;
  v426 = v3;
LABEL_2:
  v431 = v11;
  if (v7)
  {
    v430 = v12;
LABEL_8:
    v429 = (v7 - 1) & v7;
    OUTLINED_FUNCTION_14_8();
    v15 = *v14;
    v3 = v14[1];
    v9 = (v17 + 440 * v16);
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(__src, v9, sizeof(__src));
    v470 = v15;
    v471 = v3;
    memcpy(v472, __src, sizeof(v472));
    nullsub_1(&v470, v18);
    sub_217751DE8();
    sub_21726A630(__dst, v467, &qword_27CB243F0, &qword_21775D690);
    OUTLINED_FUNCTION_62_1();
LABEL_9:
    memcpy(v472, v473, sizeof(v472));
    v470 = v9;
    v471 = v3;
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v470) == 1)
    {
LABEL_275:

      MEMORY[0x21CEA3550](v431);
      OUTLINED_FUNCTION_13();
      return;
    }

    memcpy(__src, v473, sizeof(__src));
    memcpy(v467, v427, 0x48uLL);
    sub_217751FF8();

    memcpy(__dst, __src, 0x1B0uLL);
    CloudArtwork.hash(into:)(v467);
    v19 = __src[54];
    sub_217751DE8();
    sub_2171F0738(__src, &qword_27CB243F0, &qword_21775D690);
    v20 = *(v19 + 64);
    v434 = v19 + 64;
    v21 = *(v19 + 32);
    OUTLINED_FUNCTION_1_4();
    v24 = v23 & v22;
    OUTLINED_FUNCTION_26_3();
    v433 = v25;
    v437 = v19;
    sub_217751DE8();
    v449 = 0;
    v26 = 0;
    if (v24)
    {
      goto LABEL_15;
    }

LABEL_11:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v433)
      {
        goto LABEL_272;
      }

      v24 = *(v434 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
LABEL_15:
        while (1)
        {
          v443 = v26;
          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_14_8();
          v28 = v24;
          v31 = *v29;
          v30 = v29[1];
          OUTLINED_FUNCTION_17_2();
          v33 = *v32;
          v34 = *(v32 + 8);
          v35 = *(v32 + 16);
          sub_217751DE8();
          v450 = v33;
          v436 = v34;
          sub_21726A5E0(v33, v34, v35);
          if (!v30)
          {
            break;
          }

          OUTLINED_FUNCTION_88_0();
          v442 = v28;
          memcpy(__dst, v467, 0x48uLL);
          sub_217751FF8();

          switch(v35)
          {
            case 1:
              OUTLINED_FUNCTION_103_0();
              sub_217753208();
              goto LABEL_270;
            case 2:
              OUTLINED_FUNCTION_104_0();
              v231 = v33;
              goto LABEL_152;
            case 3:
              OUTLINED_FUNCTION_107();
              v231 = OUTLINED_FUNCTION_28_0(v33);
LABEL_152:
              MEMORY[0x21CEA3580](v231);
              goto LABEL_270;
            case 4:
              OUTLINED_FUNCTION_105_2();
              MEMORY[0x21CEA3550](*(v33 + 16));
              v36 = v33;
              v447 = *(v33 + 16);
              if (!v447)
              {
                goto LABEL_149;
              }

              v39 = 0;
              v445 = v33 + 32;
LABEL_20:
              v40 = v445 + 24 * v39;
              v42 = *v40;
              v41 = *(v40 + 8);
              v451 = *v40;
              switch(*(v40 + 16))
              {
                case 1:
                  OUTLINED_FUNCTION_103_0();
                  sub_217753208();
                  goto LABEL_147;
                case 2:
                  OUTLINED_FUNCTION_104_0();
                  v103 = v42;
                  goto LABEL_82;
                case 3:
                  OUTLINED_FUNCTION_107();
                  v103 = OUTLINED_FUNCTION_37();
LABEL_82:
                  MEMORY[0x21CEA3580](v103);
                  goto LABEL_147;
                case 4:
                  v435 = *(v40 + 8);
                  OUTLINED_FUNCTION_105_2();
                  v43 = __dst;
                  MEMORY[0x21CEA3550](*(v42 + 16));
                  v44 = *(v42 + 16);
                  if (!v44)
                  {
                    goto LABEL_147;
                  }

                  v455 = v42 + 32;
                  sub_217751DE8();
                  v45 = 0;
                  v438 = v44;
                  v444 = v39;
LABEL_24:
                  v46 = v455 + 24 * v45;
                  v47 = *v46;
                  v48 = *(v46 + 8);
                  switch(*(v46 + 16))
                  {
                    case 1:
                      OUTLINED_FUNCTION_103_0();
                      v43 = __dst;
                      sub_217753208();
                      goto LABEL_78;
                    case 2:
                      OUTLINED_FUNCTION_104_0();
                      v43 = __dst;
                      v68 = v47;
                      goto LABEL_51;
                    case 3:
                      OUTLINED_FUNCTION_107();
                      if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v68 = v47;
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v43 = __dst;
LABEL_51:
                      MEMORY[0x21CEA3580](v68);
                      goto LABEL_78;
                    case 4:
                      OUTLINED_FUNCTION_105_2();
                      v43 = __dst;
                      MEMORY[0x21CEA3550](*(v47 + 16));
                      v49 = v47;
                      v50 = *(v47 + 16);
                      if (!v50)
                      {
                        goto LABEL_78;
                      }

                      v51 = v49 + 32;
                      v453 = v49;
                      sub_217751DE8();
                      v52 = 0;
                      while (2)
                      {
                        v53 = v51 + 24 * v52;
                        v54 = *v53;
                        v55 = *(v53 + 8);
                        switch(*(v53 + 16))
                        {
                          case 1:
                            OUTLINED_FUNCTION_103_0();
                            v43 = __dst;
                            sub_217753208();
                            goto LABEL_44;
                          case 2:
                            OUTLINED_FUNCTION_104_0();
                            v43 = __dst;
                            v63 = v54;
                            goto LABEL_39;
                          case 3:
                            OUTLINED_FUNCTION_107();
                            if ((v54 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v63 = v54;
                            }

                            else
                            {
                              v63 = 0;
                            }

                            v43 = __dst;
LABEL_39:
                            MEMORY[0x21CEA3580](v63);
                            goto LABEL_44;
                          case 4:
                            OUTLINED_FUNCTION_105_2();
                            v43 = __dst;
                            MEMORY[0x21CEA3550](*(v54 + 16));
                            v59 = *(v54 + 16);
                            if (!v59)
                            {
                              goto LABEL_44;
                            }

                            sub_217751DE8();
                            v60 = (v54 + 48);
                            do
                            {
                              v61 = *(v60 - 1);
                              v464 = *(v60 - 2);
                              v465 = v61;
                              v62 = *v60;
                              v60 += 24;
                              v466 = v62;
                              sub_21726A5E0(v464, v61, v62);
                              v43 = &v464;
                              JSONValue.hash(into:)(__dst);
                              sub_21726A608(v464, v465, v466);
                              --v59;
                            }

                            while (v59);
                            v56 = v54;
                            v57 = v55;
                            v58 = 4;
LABEL_42:
                            sub_21726A608(v56, v57, v58);
LABEL_44:
                            if (++v52 != v50)
                            {
                              continue;
                            }

                            v65 = v453;
                            v66 = v48;
                            v67 = 4;
                            break;
                          case 5:
                            v64 = OUTLINED_FUNCTION_84_1();
                            MEMORY[0x21CEA3550](v64);
                            sub_217751DE8();
                            sub_217265A08(__dst, v54);
                            v56 = v54;
                            v57 = v55;
                            v58 = 5;
                            goto LABEL_42;
                          case 6:
                            OUTLINED_FUNCTION_106_0();
                            goto LABEL_44;
                          default:
                            OUTLINED_FUNCTION_102_2();
                            sub_217751DE8();
                            sub_217751FF8();
                            v56 = v54;
                            v57 = v55;
                            v58 = 0;
                            goto LABEL_42;
                        }

                        goto LABEL_77;
                      }

                    case 5:
                      v69 = OUTLINED_FUNCTION_84_1();
                      MEMORY[0x21CEA3550](v69);
                      v70 = v47;
                      v72 = *(v47 + 64);
                      v71 = v47 + 64;
                      v73 = *(v70 + 32);
                      OUTLINED_FUNCTION_3_17();
                      v76 = v75 & v74;
                      v439 = v48;
                      OUTLINED_FUNCTION_50_1(v70, v48);
                      v78 = v77 >> 6;
                      v453 = v70;
                      sub_217751DE8();
                      v456 = 0;
                      v79 = 0;
                      if (v76)
                      {
                        goto LABEL_58;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_106_0();
                      goto LABEL_78;
                    default:
                      OUTLINED_FUNCTION_102_2();
                      sub_217751DE8();
                      sub_217751FF8();
                      sub_21726A608(v47, v48, 0);
                      goto LABEL_78;
                  }

                  while (1)
                  {
                    v80 = v79 + 1;
                    if (__OFADD__(v79, 1))
                    {
                      break;
                    }

                    if (v80 >= v78)
                    {
                      goto LABEL_76;
                    }

                    v76 = *(v71 + 8 * v80);
                    ++v79;
                    if (v76)
                    {
                      v79 = v80;
LABEL_58:
                      while (1)
                      {
                        OUTLINED_FUNCTION_6_9(__clz(__rbit64(v76)) | (v79 << 6));
                        v83 = *v81;
                        v82 = *(v81 + 8);
                        v84 = *(v81 + 16);
                        sub_217751DE8();
                        v85 = OUTLINED_FUNCTION_86();
                        sub_21726A5E0(v85, v86, v84);
                        if (!v43)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_88_0();
                        OUTLINED_FUNCTION_74_0(v87, v88, v89, v90, v91, v92, v93, v94, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v442, v443, v444, v445, v447, v449, v450, v451, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                        OUTLINED_FUNCTION_109_0();

                        switch(v84)
                        {
                          case 1:
                            OUTLINED_FUNCTION_55_1();
                            sub_217753208();
                            goto LABEL_74;
                          case 2:
                            OUTLINED_FUNCTION_56_1();
                            v102 = v83;
                            goto LABEL_69;
                          case 3:
                            OUTLINED_FUNCTION_59_1();
                            if ((v83 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                            {
                              v102 = v83;
                            }

                            else
                            {
                              v102 = 0;
                            }

LABEL_69:
                            MEMORY[0x21CEA3580](v102);
                            goto LABEL_74;
                          case 4:
                            OUTLINED_FUNCTION_57_1();
                            MEMORY[0x21CEA3550](*(v83 + 16));
                            v98 = *(v83 + 16);
                            if (v98)
                            {
                              v99 = (v83 + 48);
                              do
                              {
                                v100 = *(v99 - 1);
                                v463[0] = *(v99 - 2);
                                v463[1] = v100;
                                v101 = *v99;
                                v99 += 24;
                                LOBYTE(v463[2]) = v101;
                                sub_21726A5E0(v463[0], v100, v101);
                                JSONValue.hash(into:)(&v464);
                                sub_21726A608(v463[0], v463[1], v463[2]);
                                --v98;
                              }

                              while (v98);
                            }

                            v95 = OUTLINED_FUNCTION_86();
                            v97 = 4;
                            goto LABEL_72;
                          case 5:
                            OUTLINED_FUNCTION_53_0();
                            sub_217265A08(&v464, v83);
                            v95 = OUTLINED_FUNCTION_86();
                            v97 = 5;
                            goto LABEL_72;
                          case 6:
                            OUTLINED_FUNCTION_58_2();
                            goto LABEL_74;
                          default:
                            OUTLINED_FUNCTION_54_1();
                            sub_217751FF8();
                            v95 = OUTLINED_FUNCTION_86();
                            v97 = 0;
LABEL_72:
                            sub_21726A608(v95, v96, v97);
LABEL_74:
                            v43 = &v464;
                            v456 = sub_217753238() ^ v457;
                            break;
                        }
                      }

LABEL_76:

                      v43 = __dst;
                      MEMORY[0x21CEA3550](v456);
                      v65 = v453;
                      v66 = v439;
                      v67 = 5;
LABEL_77:
                      sub_21726A608(v65, v66, v67);
                      v39 = v444;
                      v42 = v451;
                      v44 = v438;
LABEL_78:
                      if (++v45 == v44)
                      {
                        sub_21726A608(v42, v435, 4);
                        goto LABEL_147;
                      }

                      goto LABEL_24;
                    }
                  }

                  __break(1u);
                  goto LABEL_275;
                case 5:
                  v444 = v39;
                  v104 = OUTLINED_FUNCTION_84_1();
                  v105 = v41;
                  MEMORY[0x21CEA3550](v104);
                  v106 = v42 + 64;
                  v107 = 1 << *(v42 + 32);
                  if (v107 < 64)
                  {
                    v108 = ~(-1 << v107);
                  }

                  else
                  {
                    v108 = -1;
                  }

                  v109 = v108 & *(v42 + 64);
                  v435 = v105;
                  sub_21726A5E0(v42, v105, 5);
                  v110 = v107 + 63;
                  v111 = v42 + 64;
                  v112 = v110 >> 6;
                  sub_217751DE8();
                  v113 = 0;
                  v114 = 0;
                  v440 = v112;
                  v432 = v106;
                  if (v109)
                  {
                    goto LABEL_88;
                  }

                  break;
                case 6:
                  OUTLINED_FUNCTION_106_0();
                  goto LABEL_147;
                default:
                  OUTLINED_FUNCTION_102_2();
                  sub_217751DE8();
                  sub_217751FF8();
                  sub_21726A608(v42, v41, 0);
                  goto LABEL_147;
              }

LABEL_89:
              while (1)
              {
                v117 = v114 + 1;
                if (__OFADD__(v114, 1))
                {
                  break;
                }

                if (v117 >= v112)
                {
                  goto LABEL_146;
                }

                v109 = *(v111 + 8 * v117);
                ++v114;
                if (v109)
                {
                  v115 = v112;
                  v116 = v113;
                  v114 = v117;
                  while (1)
                  {
                    OUTLINED_FUNCTION_14_8();
                    v120 = *v118;
                    v119 = v118[1];
                    OUTLINED_FUNCTION_17_2();
                    v122 = *v121;
                    v123 = *(v121 + 8);
                    v124 = *(v121 + 16);
                    sub_217751DE8();
                    v455 = v123;
                    v456 = v122;
                    v125 = sub_21726A5E0(v122, v123, v124);
                    v113 = v116;
                    if (!v119)
                    {
                      break;
                    }

                    v112 = v115;
                    v109 &= v109 - 1;
                    OUTLINED_FUNCTION_74_0(v125, v126, v127, v128, v129, v130, v131, v132, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v440, v442, v443, v444, v445, v447, v449, v450, v451, v453, v455, v122, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                    sub_217751FF8();

                    v133 = v124;
                    v134 = v456;
                    switch(v133)
                    {
                      case 1:
                        OUTLINED_FUNCTION_55_1();
                        sub_217753208();
                        goto LABEL_143;
                      case 2:
                        OUTLINED_FUNCTION_56_1();
                        v178 = v456;
                        goto LABEL_116;
                      case 3:
                        OUTLINED_FUNCTION_59_1();
                        v178 = OUTLINED_FUNCTION_38();
LABEL_116:
                        MEMORY[0x21CEA3580](v178);
                        goto LABEL_143;
                      case 4:
                        OUTLINED_FUNCTION_57_1();
                        MEMORY[0x21CEA3550](*(v456 + 16));
                        v143 = *(v456 + 16);
                        if (v143)
                        {
                          v144 = 0;
                          v145 = v456 + 32;
                          v438 = v113;
                          while (2)
                          {
                            v146 = v145 + 24 * v144;
                            v147 = *v146;
                            v148 = *(v146 + 8);
                            switch(*(v146 + 16))
                            {
                              case 1:
                                OUTLINED_FUNCTION_55_1();
                                sub_217753208();
                                goto LABEL_112;
                              case 2:
                                OUTLINED_FUNCTION_56_1();
                                v166 = v147;
                                goto LABEL_107;
                              case 3:
                                OUTLINED_FUNCTION_59_1();
                                v166 = OUTLINED_FUNCTION_38();
LABEL_107:
                                MEMORY[0x21CEA3580](v166);
                                goto LABEL_112;
                              case 4:
                                OUTLINED_FUNCTION_57_1();
                                MEMORY[0x21CEA3550](*(v147 + 16));
                                v160 = *(v147 + 16);
                                if (v160)
                                {
                                  sub_217751DE8();
                                  v161 = (v147 + 48);
                                  do
                                  {
                                    v162 = *(v161 - 1);
                                    v463[0] = *(v161 - 2);
                                    v463[1] = v162;
                                    v163 = *v161;
                                    v161 += 24;
                                    LOBYTE(v463[2]) = v163;
                                    sub_21726A5E0(v463[0], v162, v163);
                                    JSONValue.hash(into:)(&v464);
                                    sub_21726A608(v463[0], v463[1], v463[2]);
                                    --v160;
                                  }

                                  while (v160);
                                  v164 = OUTLINED_FUNCTION_34_2();
                                  sub_21726A608(v164, v165, 4);
                                  v113 = v438;
                                }

                                v112 = v440;
                                goto LABEL_112;
                              case 5:
                                OUTLINED_FUNCTION_53_0();
                                v167 = sub_217751DE8();
                                v175 = OUTLINED_FUNCTION_51_0(v167, v168, v169, v170, v171, v172, v173, v174, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v440, v442, v443, v444, v445, v447, v449, v450, v451, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                                sub_217265A08(v175, v176);
                                v157 = OUTLINED_FUNCTION_34_2();
                                v159 = 5;
                                goto LABEL_110;
                              case 6:
                                OUTLINED_FUNCTION_58_2();
                                goto LABEL_112;
                              default:
                                OUTLINED_FUNCTION_54_1();
                                v149 = sub_217751DE8();
                                OUTLINED_FUNCTION_51_0(v149, v150, v151, v152, v153, v154, v155, v156, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v440, v442, v443, v444, v445, v447, v449, v450, v451, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                                sub_217751FF8();
                                v157 = OUTLINED_FUNCTION_34_2();
                                v159 = 0;
LABEL_110:
                                sub_21726A608(v157, v158, v159);
LABEL_112:
                                if (++v144 != v143)
                                {
                                  continue;
                                }

                                v177 = v456;
                                break;
                            }

                            break;
                          }
                        }

                        else
                        {
                          v177 = v456;
                        }

                        sub_21726A608(v177, v455, 4);
                        v111 = v432;
                        goto LABEL_143;
                      case 5:
                        OUTLINED_FUNCTION_53_0();
                        v180 = v456 + 64;
                        v179 = *(v456 + 64);
                        v181 = *(v456 + 32);
                        OUTLINED_FUNCTION_1_4();
                        v184 = v183 & v182;
                        OUTLINED_FUNCTION_26_3();
                        v428 = v185;
                        sub_217751DE8();
                        v453 = 0;
                        v186 = 0;
                        v438 = v113;
                        if (v184)
                        {
                          goto LABEL_123;
                        }

                        break;
                      case 6:
                        OUTLINED_FUNCTION_58_2();
                        goto LABEL_143;
                      default:
                        OUTLINED_FUNCTION_54_1();
                        OUTLINED_FUNCTION_51_0(v135, v136, v137, v138, v139, v140, v141, v142, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v440, v442, v443, v444, v445, v447, v449, v450, v451, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                        sub_217751FF8();
                        sub_21726A608(v134, v455, 0);
                        goto LABEL_143;
                    }

                    do
                    {
LABEL_119:
                      v187 = v186 + 1;
                      if (__OFADD__(v186, 1))
                      {
                        goto LABEL_279;
                      }

                      if (v187 >= v428)
                      {
                        goto LABEL_140;
                      }

                      v184 = *(v180 + 8 * v187);
                      ++v186;
                    }

                    while (!v184);
                    v186 = v187;
LABEL_123:
                    while (2)
                    {
                      OUTLINED_FUNCTION_14_8();
                      v190 = *v188;
                      v189 = v188[1];
                      OUTLINED_FUNCTION_17_2();
                      v192 = *v191;
                      v193 = *(v191 + 8);
                      v194 = *(v191 + 16);
                      sub_217751DE8();
                      v195 = OUTLINED_FUNCTION_19_1();
                      v197 = sub_21726A5E0(v195, v196, v194);
                      if (v189)
                      {
                        v184 &= v184 - 1;
                        OUTLINED_FUNCTION_71_1(v197, v198, v199, v200, v201, v202, v203, v204, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v440, v442, v443, v444, v445, v447, v449, v450, v451, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                        sub_217751FF8();

                        switch(v194)
                        {
                          case 1:
                            OUTLINED_FUNCTION_123_0();
                            sub_217753208();
                            goto LABEL_137;
                          case 2:
                            OUTLINED_FUNCTION_124_0();
                            v220 = v192;
                            goto LABEL_132;
                          case 3:
                            OUTLINED_FUNCTION_127();
                            v220 = OUTLINED_FUNCTION_38();
LABEL_132:
                            MEMORY[0x21CEA3580](v220);
                            goto LABEL_137;
                          case 4:
                            OUTLINED_FUNCTION_125_0();
                            OUTLINED_FUNCTION_118_0();
                            v216 = *(v192 + 16);
                            if (v216)
                            {
                              v217 = (v192 + 48);
                              do
                              {
                                v218 = *(v217 - 1);
                                v459[0] = *(v217 - 2);
                                v459[1] = v218;
                                v219 = *v217;
                                v217 += 24;
                                LOBYTE(v459[2]) = v219;
                                sub_21726A5E0(v459[0], v218, v219);
                                JSONValue.hash(into:)(v463);
                                sub_21726A608(v459[0], v459[1], v459[2]);
                                --v216;
                              }

                              while (v216);
                            }

                            v213 = OUTLINED_FUNCTION_19_1();
                            v215 = 4;
                            goto LABEL_135;
                          case 5:
                            OUTLINED_FUNCTION_121_0();
                            v229 = OUTLINED_FUNCTION_36_2(v221, v222, v223, v224, v225, v226, v227, v228, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v440, v442, v443, v444, v445, v447, v449, v450, v451, v454, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0]);
                            sub_217265A08(v229, v230);
                            v213 = OUTLINED_FUNCTION_19_1();
                            v215 = 5;
                            goto LABEL_135;
                          case 6:
                            OUTLINED_FUNCTION_126_0();
                            goto LABEL_137;
                          default:
                            OUTLINED_FUNCTION_122();
                            OUTLINED_FUNCTION_36_2(v205, v206, v207, v208, v209, v210, v211, v212, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v440, v442, v443, v444, v445, v447, v449, v450, v451, v454, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0]);
                            sub_217751FF8();
                            v213 = OUTLINED_FUNCTION_19_1();
                            v215 = 0;
LABEL_135:
                            sub_21726A608(v213, v214, v215);
LABEL_137:
                            v453 = sub_217753238() ^ v454;
                            if (!v184)
                            {
                              goto LABEL_119;
                            }

                            continue;
                        }
                      }

                      break;
                    }

LABEL_140:

                    MEMORY[0x21CEA3550](v453);
                    sub_21726A608(v456, v455, 5);
                    v111 = v432;
                    v113 = v438;
                    v112 = v440;
LABEL_143:
                    v113 ^= sub_217753238();
                    if (!v109)
                    {
                      goto LABEL_89;
                    }

LABEL_88:
                    v115 = v112;
                    v116 = v113;
                  }

LABEL_146:

                  MEMORY[0x21CEA3550](v113);
                  sub_21726A608(v451, v435, 5);
                  v39 = v444;
LABEL_147:
                  if (++v39 == v447)
                  {
                    v36 = v450;
LABEL_149:
                    v37 = v436;
                    v38 = 4;
                    goto LABEL_269;
                  }

                  goto LABEL_20;
                }
              }

              __break(1u);
              goto LABEL_277;
            case 5:
              v232 = OUTLINED_FUNCTION_84_1();
              MEMORY[0x21CEA3550](v232);
              v234 = v33 + 64;
              v233 = *(v450 + 64);
              v235 = *(v450 + 32);
              OUTLINED_FUNCTION_1_4();
              v238 = v237 & v236;
              v240 = (v239 + 63) >> 6;
              sub_217751DE8();
              v241 = 0;
              v242 = 0;
              v438 = v240;
              v441 = v450 + 64;
              if (!v238)
              {
                goto LABEL_155;
              }

              break;
            case 6:
              OUTLINED_FUNCTION_106_0();
              goto LABEL_270;
            default:
              OUTLINED_FUNCTION_102_2();
              sub_217751FF8();
              v36 = OUTLINED_FUNCTION_93();
              v38 = 0;
              goto LABEL_269;
          }

LABEL_159:
          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_14_8();
          v244 = v238;
          v247 = *v245;
          v246 = v245[1];
          OUTLINED_FUNCTION_17_2();
          v250 = *v248;
          v249 = *(v248 + 8);
          v251 = *(v248 + 16);
          sub_217751DE8();
          v252 = sub_21726A5E0(v250, v249, v251);
          if (v246)
          {
            OUTLINED_FUNCTION_74_0(v252, v253, v254, v255, v256, v257, v258, v259, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v249, (v244 - 1) & v244, v449, v450, v250, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
            sub_217751FF8();

            switch(v251)
            {
              case 1:
                OUTLINED_FUNCTION_55_1();
                sub_217753208();
                goto LABEL_265;
              case 2:
                OUTLINED_FUNCTION_56_1();
                v342 = v452;
                goto LABEL_216;
              case 3:
                OUTLINED_FUNCTION_59_1();
                v342 = OUTLINED_FUNCTION_28_0(v452);
LABEL_216:
                MEMORY[0x21CEA3580](v342);
                goto LABEL_265;
              case 4:
                OUTLINED_FUNCTION_57_1();
                MEMORY[0x21CEA3550](*(v452 + 16));
                v260 = v452;
                v263 = *(v452 + 16);
                if (!v263)
                {
                  goto LABEL_212;
                }

                v264 = 0;
                v455 = v452 + 32;
                v428 = *(v452 + 16);
                v435 = v241;
                do
                {
                  v265 = v455 + 24 * v264;
                  v266 = *v265;
                  v267 = *(v265 + 8);
                  switch(*(v265 + 16))
                  {
                    case 1:
                      OUTLINED_FUNCTION_55_1();
                      sub_217753208();
                      goto LABEL_210;
                    case 2:
                      OUTLINED_FUNCTION_56_1();
                      v295 = v266;
                      goto LABEL_185;
                    case 3:
                      OUTLINED_FUNCTION_59_1();
                      v295 = OUTLINED_FUNCTION_37();
LABEL_185:
                      MEMORY[0x21CEA3580](v295);
                      goto LABEL_210;
                    case 4:
                      OUTLINED_FUNCTION_57_1();
                      MEMORY[0x21CEA3550](*(v266 + 16));
                      v268 = OUTLINED_FUNCTION_85_0();
                      if (v266)
                      {
                        v444 = v264;
                        v263 = (v268 + 32);
                        v453 = v268;
                        sub_217751DE8();
                        v234 = 0;
                        while (2)
                        {
                          v269 = &v263[24 * v234];
                          v241 = *v269;
                          v240 = *(v269 + 1);
                          switch(v269[16])
                          {
                            case 1:
                              OUTLINED_FUNCTION_55_1();
                              sub_217753208();
                              goto LABEL_181;
                            case 2:
                              OUTLINED_FUNCTION_56_1();
                              v284 = v241;
                              goto LABEL_176;
                            case 3:
                              OUTLINED_FUNCTION_59_1();
                              v284 = OUTLINED_FUNCTION_38();
LABEL_176:
                              MEMORY[0x21CEA3580](v284);
                              goto LABEL_181;
                            case 4:
                              OUTLINED_FUNCTION_57_1();
                              MEMORY[0x21CEA3550](*(v241 + 16));
                              v281 = *(v241 + 16);
                              if (!v281)
                              {
                                goto LABEL_181;
                              }

                              sub_217751DE8();
                              v264 = v241 + 48;
                              do
                              {
                                v282 = *(v264 - 8);
                                v463[0] = *(v264 - 16);
                                v463[1] = v282;
                                v283 = *v264;
                                v264 += 24;
                                LOBYTE(v463[2]) = v283;
                                sub_21726A5E0(v463[0], v282, v283);
                                JSONValue.hash(into:)(&v464);
                                sub_21726A608(v463[0], v463[1], v463[2]);
                                --v281;
                              }

                              while (v281);
                              v278 = OUTLINED_FUNCTION_34_2();
                              v280 = 4;
LABEL_179:
                              sub_21726A608(v278, v279, v280);
LABEL_181:
                              if (++v234 != v266)
                              {
                                continue;
                              }

                              sub_21726A608(v453, v267, 4);
                              OUTLINED_FUNCTION_87_3();
                              break;
                            case 5:
                              OUTLINED_FUNCTION_53_0();
                              v285 = sub_217751DE8();
                              v293 = OUTLINED_FUNCTION_51_0(v285, v286, v287, v288, v289, v290, v291, v292, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                              sub_217265A08(v293, v294);
                              v278 = OUTLINED_FUNCTION_34_2();
                              v280 = 5;
                              goto LABEL_179;
                            case 6:
                              OUTLINED_FUNCTION_58_2();
                              goto LABEL_181;
                            default:
                              OUTLINED_FUNCTION_54_1();
                              v270 = sub_217751DE8();
                              OUTLINED_FUNCTION_51_0(v270, v271, v272, v273, v274, v275, v276, v277, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                              sub_217751FF8();
                              v278 = OUTLINED_FUNCTION_34_2();
                              v280 = 0;
                              goto LABEL_179;
                          }

                          break;
                        }
                      }

                      goto LABEL_210;
                    case 5:
                      OUTLINED_FUNCTION_53_0();
                      v263 = (v266 + 64);
                      v296 = *(v266 + 64);
                      v297 = *(v266 + 32);
                      OUTLINED_FUNCTION_3_17();
                      v300 = v299 & v298;
                      v432 = v267;
                      OUTLINED_FUNCTION_50_1(v266, v267);
                      v240 = v301 >> 6;
                      v453 = v266;
                      sub_217751DE8();
                      v456 = 0;
                      v302 = 0;
                      v444 = v264;
                      if (v300)
                      {
                        goto LABEL_192;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_58_2();
                      goto LABEL_210;
                    default:
                      OUTLINED_FUNCTION_54_1();
                      sub_217751DE8();
                      sub_217751FF8();
                      sub_21726A608(v266, v267, 0);
                      goto LABEL_210;
                  }

                  do
                  {
LABEL_188:
                    v303 = v302 + 1;
                    if (__OFADD__(v302, 1))
                    {
                      goto LABEL_278;
                    }

                    if (v303 >= v240)
                    {
                      goto LABEL_209;
                    }

                    v300 = *&v263[8 * v303];
                    ++v302;
                  }

                  while (!v300);
                  v302 = v303;
LABEL_192:
                  while (2)
                  {
                    OUTLINED_FUNCTION_14_8();
                    v264 = *v304;
                    v305 = v304[1];
                    OUTLINED_FUNCTION_17_2();
                    v241 = *v306;
                    v307 = *(v306 + 8);
                    v234 = *(v306 + 16);
                    sub_217751DE8();
                    v308 = OUTLINED_FUNCTION_19_1();
                    v310 = sub_21726A5E0(v308, v309, v234);
                    if (v305)
                    {
                      v300 &= v300 - 1;
                      OUTLINED_FUNCTION_71_1(v310, v311, v312, v313, v314, v315, v316, v317, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                      sub_217751FF8();

                      switch(v234)
                      {
                        case 1:
                          OUTLINED_FUNCTION_123_0();
                          sub_217753208();
                          goto LABEL_206;
                        case 2:
                          OUTLINED_FUNCTION_124_0();
                          v331 = v241;
                          goto LABEL_201;
                        case 3:
                          OUTLINED_FUNCTION_127();
                          v331 = OUTLINED_FUNCTION_38();
LABEL_201:
                          MEMORY[0x21CEA3580](v331);
                          goto LABEL_206;
                        case 4:
                          OUTLINED_FUNCTION_125_0();
                          OUTLINED_FUNCTION_118_0();
                          v234 = *(v241 + 16);
                          if (v234)
                          {
                            v264 = v241 + 48;
                            do
                            {
                              v329 = *(v264 - 8);
                              v459[0] = *(v264 - 16);
                              v459[1] = v329;
                              v330 = *v264;
                              v264 += 24;
                              LOBYTE(v459[2]) = v330;
                              sub_21726A5E0(v459[0], v329, v330);
                              JSONValue.hash(into:)(v463);
                              sub_21726A608(v459[0], v459[1], v459[2]);
                              --v234;
                            }

                            while (v234);
                          }

                          v326 = OUTLINED_FUNCTION_19_1();
                          v328 = 4;
                          goto LABEL_204;
                        case 5:
                          OUTLINED_FUNCTION_121_0();
                          v340 = OUTLINED_FUNCTION_36_2(v332, v333, v334, v335, v336, v337, v338, v339, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v458, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0]);
                          sub_217265A08(v340, v341);
                          v326 = OUTLINED_FUNCTION_19_1();
                          v328 = 5;
                          goto LABEL_204;
                        case 6:
                          OUTLINED_FUNCTION_126_0();
                          goto LABEL_206;
                        default:
                          OUTLINED_FUNCTION_122();
                          OUTLINED_FUNCTION_36_2(v318, v319, v320, v321, v322, v323, v324, v325, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v458, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0]);
                          sub_217751FF8();
                          v326 = OUTLINED_FUNCTION_19_1();
                          v328 = 0;
LABEL_204:
                          sub_21726A608(v326, v327, v328);
LABEL_206:
                          v456 = sub_217753238() ^ v458;
                          if (!v300)
                          {
                            goto LABEL_188;
                          }

                          continue;
                      }
                    }

                    break;
                  }

LABEL_209:

                  MEMORY[0x21CEA3550](v456);
                  sub_21726A608(v453, v432, 5);
                  OUTLINED_FUNCTION_87_3();
LABEL_210:
                  ++v264;
                }

                while (v264 != v263);
                v260 = v452;
LABEL_212:
                v261 = v446;
                v262 = 4;
LABEL_213:
                sub_21726A608(v260, v261, v262);
                goto LABEL_265;
              case 5:
                v435 = v241;
                OUTLINED_FUNCTION_53_0();
                v344 = v452 + 64;
                v343 = *(v452 + 64);
                v345 = *(v452 + 32);
                OUTLINED_FUNCTION_1_4();
                v348 = v347 & v346;
                v350 = (v349 + 63) >> 6;
                sub_217751DE8();
                v351 = 0;
                v352 = 0;
                v432 = v350;
                if (v348)
                {
                  goto LABEL_219;
                }

                break;
              case 6:
                OUTLINED_FUNCTION_58_2();
                goto LABEL_265;
              default:
                OUTLINED_FUNCTION_54_1();
                sub_217751FF8();
                v260 = OUTLINED_FUNCTION_35();
                v262 = 0;
                goto LABEL_213;
            }

LABEL_220:
            while (1)
            {
              v353 = v352 + 1;
              if (__OFADD__(v352, 1))
              {
                goto LABEL_281;
              }

              if (v353 >= v350)
              {
                goto LABEL_264;
              }

              v348 = *(v344 + 8 * v353);
              ++v352;
              if (v348)
              {
                v455 = v351;
                v352 = v353;
LABEL_224:
                OUTLINED_FUNCTION_14_8();
                v356 = *v354;
                v355 = v354[1];
                OUTLINED_FUNCTION_17_2();
                v358 = *v357;
                v359 = *(v357 + 8);
                v360 = *(v357 + 16);
                sub_217751DE8();
                v456 = v358;
                v453 = v359;
                v361 = sub_21726A5E0(v358, v359, v360);
                v351 = v455;
                if (v355)
                {
                  v348 &= v348 - 1;
                  OUTLINED_FUNCTION_71_1(v361, v362, v363, v364, v365, v366, v367, v368, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v358, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0], v463[1], v463[2], v463[3], v463[4], v463[5], v463[6], v463[7], v463[8], v464);
                  sub_217751FF8();

                  switch(v360)
                  {
                    case 1:
                      OUTLINED_FUNCTION_123_0();
                      sub_217753208();
                      goto LABEL_260;
                    case 2:
                      OUTLINED_FUNCTION_124_0();
                      v406 = v456;
                      goto LABEL_246;
                    case 3:
                      OUTLINED_FUNCTION_127();
                      v406 = OUTLINED_FUNCTION_28_0(v456);
LABEL_246:
                      MEMORY[0x21CEA3580](v406);
                      goto LABEL_260;
                    case 4:
                      OUTLINED_FUNCTION_125_0();
                      OUTLINED_FUNCTION_118_0();
                      v369 = *(v456 + 16);
                      if (!v369)
                      {
                        sub_21726A608(v456, v453, 4);
                        goto LABEL_259;
                      }

                      v428 = v344;
                      v370 = 0;
                      v371 = v456 + 32;
                      v444 = v456 + 32;
                      while (2)
                      {
                        v372 = v371 + 24 * v370;
                        v373 = *v372;
                        v374 = *(v372 + 8);
                        switch(*(v372 + 16))
                        {
                          case 1:
                            OUTLINED_FUNCTION_123_0();
                            sub_217753208();
                            goto LABEL_242;
                          case 2:
                            OUTLINED_FUNCTION_124_0();
                            v392 = v373;
                            goto LABEL_237;
                          case 3:
                            OUTLINED_FUNCTION_127();
                            v392 = OUTLINED_FUNCTION_38();
LABEL_237:
                            MEMORY[0x21CEA3580](v392);
                            goto LABEL_242;
                          case 4:
                            OUTLINED_FUNCTION_125_0();
                            OUTLINED_FUNCTION_118_0();
                            v386 = *(v373 + 16);
                            if (v386)
                            {
                              sub_217751DE8();
                              v387 = (v373 + 48);
                              do
                              {
                                v388 = *(v387 - 1);
                                v459[0] = *(v387 - 2);
                                v459[1] = v388;
                                v389 = *v387;
                                v387 += 24;
                                LOBYTE(v459[2]) = v389;
                                sub_21726A5E0(v459[0], v388, v389);
                                JSONValue.hash(into:)(v463);
                                sub_21726A608(v459[0], v459[1], v459[2]);
                                --v386;
                              }

                              while (v386);
                              v390 = OUTLINED_FUNCTION_19_1();
                              sub_21726A608(v390, v391, 4);
                              v371 = v444;
                            }

                            goto LABEL_242;
                          case 5:
                            OUTLINED_FUNCTION_121_0();
                            v393 = sub_217751DE8();
                            v401 = OUTLINED_FUNCTION_36_2(v393, v394, v395, v396, v397, v398, v399, v400, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0]);
                            sub_217265A08(v401, v402);
                            v383 = OUTLINED_FUNCTION_19_1();
                            v385 = 5;
                            goto LABEL_240;
                          case 6:
                            OUTLINED_FUNCTION_126_0();
                            goto LABEL_242;
                          default:
                            OUTLINED_FUNCTION_122();
                            v375 = sub_217751DE8();
                            OUTLINED_FUNCTION_36_2(v375, v376, v377, v378, v379, v380, v381, v382, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v441, v442, v443, v444, v446, v448, v449, v450, v452, v453, v455, v456, v459[0], v459[1], v459[2], v459[3], v459[4], v459[5], v459[6], v459[7], v459[8], v460, v461, v462, v463[0]);
                            sub_217751FF8();
                            v383 = OUTLINED_FUNCTION_19_1();
                            v385 = 0;
LABEL_240:
                            sub_21726A608(v383, v384, v385);
LABEL_242:
                            if (++v370 != v369)
                            {
                              continue;
                            }

                            v403 = v456;
                            v404 = v453;
                            v405 = 4;
                            break;
                        }

                        goto LABEL_258;
                      }

                    case 5:
                      v428 = v344;
                      OUTLINED_FUNCTION_121_0();
                      v407 = OUTLINED_FUNCTION_82_0(v456);
                      v423 = v408;
                      v409 = *(v407 + 32);
                      OUTLINED_FUNCTION_1_4();
                      v412 = v411 & v410;
                      OUTLINED_FUNCTION_26_3();
                      v422 = v413;
                      sub_217751DE8();
                      v444 = 0;
                      v414 = 0;
                      if (v412)
                      {
                        goto LABEL_249;
                      }

                      break;
                    case 6:
                      OUTLINED_FUNCTION_126_0();
                      goto LABEL_260;
                    default:
                      OUTLINED_FUNCTION_122();
                      sub_217751FF8();
                      sub_21726A608(v456, v453, 0);
                      goto LABEL_260;
                  }

LABEL_250:
                  while (1)
                  {
                    v415 = v414 + 1;
                    if (__OFADD__(v414, 1))
                    {
                      goto LABEL_283;
                    }

                    if (v415 >= v422)
                    {
                      goto LABEL_257;
                    }

                    v412 = *(v423 + 8 * v415);
                    ++v414;
                    if (v412)
                    {
                      while (1)
                      {
                        OUTLINED_FUNCTION_6_9(__clz(__rbit64(v412)) | (v415 << 6));
                        v417 = *v416;
                        v418 = *(v416 + 8);
                        v419 = *(v416 + 16);
                        sub_217751DE8();
                        sub_21726A5E0(v417, v418, v419);
                        if (!v355)
                        {
                          break;
                        }

                        v412 &= v412 - 1;
                        v460 = v417;
                        v461 = v418;
                        LOBYTE(v462) = v419;
                        memcpy(v459, v463, sizeof(v459));
                        OUTLINED_FUNCTION_109_0();

                        JSONValue.hash(into:)(v459);
                        sub_21726A608(v460, v461, v462);
                        v355 = v459;
                        v444 ^= sub_217753238();
                        v414 = v415;
                        if (!v412)
                        {
                          goto LABEL_250;
                        }

LABEL_249:
                        v415 = v414;
                      }

LABEL_257:

                      MEMORY[0x21CEA3550](v444);
                      v403 = v456;
                      v404 = v453;
                      v405 = 5;
LABEL_258:
                      sub_21726A608(v403, v404, v405);
                      v344 = v428;
                      v351 = v455;
LABEL_259:
                      v350 = v432;
LABEL_260:
                      v351 ^= sub_217753238();
                      if (v348)
                      {
LABEL_219:
                        v455 = v351;
                        goto LABEL_224;
                      }

                      goto LABEL_220;
                    }
                  }
                }

LABEL_264:

                MEMORY[0x21CEA3550](v351);
                sub_21726A608(v452, v446, 5);
                v240 = v438;
                v234 = v441;
                v241 = v435;
LABEL_265:
                v241 ^= sub_217753238();
                v238 = v448;
                if (!v448)
                {
LABEL_155:
                  while (1)
                  {
                    v243 = v242 + 1;
                    if (__OFADD__(v242, 1))
                    {
                      goto LABEL_280;
                    }

                    if (v243 >= v240)
                    {
                      goto LABEL_268;
                    }

                    v238 = *(v234 + 8 * v243);
                    ++v242;
                    if (v238)
                    {
                      v242 = v243;
                      goto LABEL_159;
                    }
                  }
                }

                goto LABEL_159;
              }
            }
          }

LABEL_268:

          MEMORY[0x21CEA3550](v241);
          v36 = v450;
          v37 = v436;
          v38 = 5;
LABEL_269:
          sub_21726A608(v36, v37, v38);
LABEL_270:
          v449 ^= sub_217753238();
          v24 = v442;
          v26 = v443;
          if (!v442)
          {
            goto LABEL_11;
          }
        }

LABEL_272:

        MEMORY[0x21CEA3550](v449);

        v420 = sub_217753238();
        v12 = v430;
        v11 = v420 ^ v431;
        v9 = v425;
        v3 = v426;
        v7 = v429;
        goto LABEL_2;
      }
    }

LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        v430 = v12;
        sub_21726A67C(&v470);
        OUTLINED_FUNCTION_62_1();
        v429 = 0;
        goto LABEL_9;
      }

      v7 = *(v3 + 8 * v13);
      ++v12;
      if (v7)
      {
        v430 = v13;
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_283:
  __break(1u);
}

uint64_t sub_217269698(const void *a1, uint64_t a2)
{
  v68 = a1;
  v3 = type metadata accessor for CloudPersonalRecommendation.Item();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CloudPersonalRecommendation.Content();
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67, v8);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  v62 = *(v10 - 1);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v65 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v61 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24218, &qword_217758658);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v57 - v24);
  v26 = *(a2 + 64);
  v69 = a2 + 64;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v58 = (v27 + 63) >> 6;
  v64 = a2;
  result = sub_217751DE8();
  v31 = 0;
  v32 = 0;
  v63 = v10;
  v60 = v21;
  v70 = v25;
  while (1)
  {
    v71 = v31;
    if (!v29)
    {
      break;
    }

    v33 = v32;
LABEL_10:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = v34 | (v33 << 6);
    v36 = (*(v64 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    v39 = v61;
    sub_21726A630(*(v64 + 56) + *(v62 + 72) * v35, v61, &qword_27CB24210, &unk_21776DB90);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
    v41 = *(v40 + 48);
    v42 = v60;
    *v60 = v38;
    *(v42 + 1) = v37;
    v43 = v39;
    v21 = v42;
    sub_21726A594(v43, &v42[v41], &qword_27CB24210, &unk_21776DB90);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v40);
    sub_217751DE8();
    v10 = v63;
    v25 = v70;
LABEL_11:
    sub_21726A594(v21, v25, &qword_27CB24218, &qword_217758658);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
    if (__swift_getEnumTagSinglePayload(v25, 1, v44) == 1)
    {

      return MEMORY[0x21CEA3550](v71);
    }

    v45 = *(v44 + 48);
    v46 = *v25;
    v47 = v25[1];
    v48 = v65;
    sub_21726A594(v25 + v45, v65, &qword_27CB24210, &unk_21776DB90);
    memcpy(v73, v68, sizeof(v73));
    sub_217751FF8();

    v49 = v66;
    sub_217269C38(v48, v66);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = v59;
      sub_217269C9C(v49, v59);
      MEMORY[0x21CEA3550](1);
      CloudPersonalRecommendation.Item.hash(into:)();
      sub_217269D00(v50);
    }

    else
    {
      memcpy(v72, v49, sizeof(v72));
      MEMORY[0x21CEA3550](0);
      CloudPersonalRecommendation.hash(into:)(v73);
      sub_217269D5C(v72);
    }

    v51 = (v48 + v10[9]);
    v52 = *v51;
    v53 = v51[1];
    sub_217751FF8();
    v54 = (v48 + v10[10]);
    if (v54[1])
    {
      v55 = *v54;
      sub_217753208();
      sub_217751FF8();
    }

    else
    {
      sub_217753208();
    }

    v25 = v70;
    memcpy(v74, (v48 + v10[11]), sizeof(v74));
    sub_2172638E8(v73);
    sub_217265A08(v73, *(v48 + v10[12]));
    sub_217265A08(v73, *(v48 + v10[13]));
    sub_217265A08(v73, *(v48 + v10[14]));
    sub_217265A08(v73, *(v48 + v10[15]));
    sub_2171F0738(v48, &qword_27CB24210, &unk_21776DB90);
    result = sub_217753238();
    v31 = result ^ v71;
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v58)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24220, &qword_217758660);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v56);
      v29 = 0;
      goto LABEL_11;
    }

    v29 = *(v69 + 8 * v33);
    ++v32;
    if (v29)
    {
      v32 = v33;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217269C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPersonalRecommendation.Content();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217269C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPersonalRecommendation.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217269D00(uint64_t a1)
{
  v2 = type metadata accessor for CloudPersonalRecommendation.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217269EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21726A074(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_0_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = sub_217751DE8();
  v11 = 0;
  v12 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_6:
      v14 = __clz(__rbit64(v7)) | (v12 << 6);
      v15 = (*(a2 + 48) + 24 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = (*(a2 + 56) + 16 * v14);
      v19 = *v18;
      v20 = v18[1];
      sub_217751DE8();

      if (!v16)
      {
LABEL_13:

        return MEMORY[0x21CEA3550](v11);
      }

      memcpy(__dst, a1, sizeof(__dst));
      sub_217751FF8();

      result = MEMORY[0x21CEA3550](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        break;
      }

LABEL_11:
      v7 &= v7 - 1;

      result = sub_217753238();
      v11 ^= result;
      if (!v7)
      {
        goto LABEL_2;
      }
    }

    v22 = 0;
    v23 = (v20 + 40);
    while (v22 < *(v20 + 16))
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      ++v22;
      result = sub_217751FF8();
      v23 += 2;
      if (v21 == v22)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v13);
      ++v12;
      if (v7)
      {
        v12 = v13;
        goto LABEL_6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21726A450(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t sub_21726A474(uint64_t a1)
{
  v1 = *(a1 + 32);
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

uint64_t sub_21726A594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return v4;
}

uint64_t sub_21726A5E0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 5 || a3 == 4)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_21726A608(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_21726A630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return v4;
}

void *OUTLINED_FUNCTION_22_3@<X0>(uint64_t a1@<X8>, uint64_t a2, char __dst)
{
  v7 = __clz(__rbit64(v5)) | (a1 << 6);
  v8 = (*(v4 + 48) + 16 * v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(*(v4 + 56) + 8 * v7);

  return memcpy(&__dst, v3, 0x48uLL);
}

void *OUTLINED_FUNCTION_52_1()
{

  return memcpy((v0 + 432), (v0 + 504), 0x48uLL);
}

void OUTLINED_FUNCTION_53_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_54_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_55_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_56_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_57_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_58_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_59_1()
{

  JUMPOUT(0x21CEA3550);
}

void *OUTLINED_FUNCTION_60_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __src)
{

  return memcpy(&a9, &__src, 0x140uLL);
}

uint64_t OUTLINED_FUNCTION_61()
{

  return sub_217751FF8();
}

void *OUTLINED_FUNCTION_62_1()
{
  v2 = STACK[0x708];
  v3 = STACK[0x710];

  return memcpy(&STACK[0x8D0], (v0 + 16), 0x1B8uLL);
}

void *OUTLINED_FUNCTION_63_0()
{

  return memcpy((v0 + 504), (v0 + 576), 0x48uLL);
}

void OUTLINED_FUNCTION_64_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_65_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_67_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_68_3()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_69_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_70_1()
{

  JUMPOUT(0x21CEA3550);
}

void *OUTLINED_FUNCTION_71_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __dst, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(&__dst, &__src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return sub_217751FF8();
}

void *OUTLINED_FUNCTION_74_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x398], 0x48uLL);
}

void OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 352) = a3;
  sub_21726A5E0(a1, a2, a3);

  JSONValue.hash(into:)((v3 + 432));
}

void OUTLINED_FUNCTION_77_0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 448) = a3;
  sub_21726A5E0(a1, a2, a3);

  JSONValue.hash(into:)((v3 + 504));
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  result = v0;
  v2 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_100_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_21726A630(a3 + 128, va, a1, a2);
}

void OUTLINED_FUNCTION_102_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_103_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_104_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_105_2()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_106_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_107()
{

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return sub_217751FF8();
}

void OUTLINED_FUNCTION_110()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_111_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_112_1()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_113_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_114_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_115()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_116_0()
{

  JUMPOUT(0x21CEA3550);
}

void *OUTLINED_FUNCTION_117_1(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

void OUTLINED_FUNCTION_118_0()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_120_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_121_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_122()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_123_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_124_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_125_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_126_0()
{

  JUMPOUT(0x21CEA3550);
}

void OUTLINED_FUNCTION_127()
{

  JUMPOUT(0x21CEA3550);
}

id sub_21726AD78()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_2177528F8();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v104 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v104 - v18;
  v20 = v2[11];
  v21 = v2[12];
  v22 = type metadata accessor for _MusicLibraryMapping.Item.Source();
  v23 = OUTLINED_FUNCTION_0_0(v22);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v104 - v28;
  (*(v30 + 16))(&v104 - v28, v1 + v2[15], v22, v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    HIDWORD(v105) = *v29;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v7 + 32))(v19, &v29[*(TupleTypeMetadata2 + 48)], v4);
    v38 = v7;
    v39 = *(v7 + 16);
    v39(v15, v19, v4);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v3);
    v41 = v19;
    v106 = v38;
    if (EnumTagSinglePayload == 1)
    {
      (*(v38 + 8))(v15, v4);
      v42 = v4;
LABEL_11:
      memset(v115, 0, 40);
      v43 = v107;
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD70, &unk_217787190);
    v42 = v4;
    if (!swift_dynamicCast())
    {
      goto LABEL_11;
    }

    v43 = v107;
    if (!*(&v115[1] + 1))
    {
LABEL_12:
      sub_2171F06D8(v115, &qword_27CB243F8, &qword_21779C830);
      goto LABEL_13;
    }

    v44 = v42;
    v45 = v41;
    sub_2171F3F0C(v115, v126);
    v46 = v127;
    v47 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    (*(v47 + 8))(v115, v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v114, 0, 40);
      sub_2171F06D8(v114, &qword_27CB281E0, &qword_2177871A0);
      __swift_destroy_boxed_opaque_existential_1(v126);
      v41 = v45;
      v42 = v44;
      v43 = v107;
LABEL_13:
      v39(v43, v41, v42);
      if (__swift_getEnumTagSinglePayload(v43, 1, v3) == 1)
      {
        (*(v106 + 8))(v43, v42);
LABEL_20:
        memset(v115, 0, 40);
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
      if (!swift_dynamicCast())
      {
        goto LABEL_20;
      }

      if (!*(&v115[1] + 1))
      {
LABEL_21:
        sub_2171F06D8(v115, &qword_27CB281E0, &qword_2177871A0);
        LOBYTE(v115[0]) = BYTE4(v105);
        _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
        v52 = sub_21721478C();
        v53 = objc_opt_self();
        v54 = *(v1 + 16);
        v55 = *(v1 + 24);
        v56 = sub_217751F18();
        v57 = [v53 identifierSetWithIdentifier:v56 modelObjectType:v52 specificLibraryDatabaseID:0 isPossibleLibraryPersistentID:0 source:8];

        sub_217751DC8();
        v58 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
        v59 = v52;
        v60 = v58;
        sub_2175FCB20(v57, v59);
        v61 = OUTLINED_FUNCTION_4_17();
        v62(v61);
        v35 = v60;
        v36 = 4;
        goto LABEL_50;
      }

      sub_2171F3F0C(v115, v126);
      sub_2171FF30C(v126, v120);
      if (swift_dynamicCast())
      {
        v122 = v116;
        v123 = v117;
        v124 = v118;
        v125 = v119;
        Playlist.artwork.getter(v114);
        memcpy(v115, v114, 0x221uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v115) == 1)
        {
          sub_21726B8C4(&v122);
LABEL_36:
          v36 = 3;
LABEL_40:
          v90 = v127;
          __swift_project_boxed_opaque_existential_1(v126, v127);
          OUTLINED_FUNCTION_2_11();
          v91 = OUTLINED_FUNCTION_4_17();
          v92(v91);
          v35 = v90;
LABEL_49:
          __swift_destroy_boxed_opaque_existential_1(v126);
          goto LABEL_50;
        }

        sub_2171F06D8(v114, &qword_27CB24400, &unk_21775E9A0);
        if (qword_280BE91A0 != -1)
        {
          OUTLINED_FUNCTION_0_8();
        }

        sub_2176CA4DC(qword_280C025B8, v83, v84, v85, v86, v87, v88, v89, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&v114[0], *(&v114[0] + 1), *&v114[1], *(&v114[1] + 1), *&v114[2], *(&v114[2] + 1), *&v114[3], *(&v114[3] + 1), *&v114[4], *(&v114[4] + 1));
        sub_21726B8C4(&v122);
        if (v109 == 10)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v119 = 0;
        v117 = 0u;
        v118 = 0u;
        v116 = 0u;
        sub_2171F06D8(&v116, &unk_27CB28A90, &qword_217758F90);
      }

      __swift_project_boxed_opaque_existential_1(v126, v127);
      OUTLINED_FUNCTION_3_18();
      v63 = *(&v115[17] + 1);
      sub_217751DE8();
      sub_217269F50(v115);
      if (v63[2])
      {
        v64 = v63[4];
        v65 = v63[5];
        v66 = OUTLINED_FUNCTION_1_5();
        sub_21726B87C(v66, v67);

        if (v65 != 9)
        {
          *&v114[0] = v64;
          *(&v114[0] + 1) = v65;
          v116 = xmmword_2177586D0;
          v68 = OUTLINED_FUNCTION_1_5();
          sub_21726B8B4(v68, v69);
          v70 = static MusicItemDataSource.== infix(_:_:)(v114, &v116);
          sub_21726B8A0(v116, *(&v116 + 1));
          sub_21726B8A0(*&v114[0], *(&v114[0] + 1));
          v71 = OUTLINED_FUNCTION_1_5();
          sub_21726B890(v71, v72);
          if (v70)
          {
            goto LABEL_36;
          }

LABEL_39:
          v36 = 1;
          goto LABEL_40;
        }
      }

      else
      {

        v64 = 0;
      }

      sub_21726B890(v64, 9uLL);
      sub_21726B890(0, 1uLL);
      goto LABEL_39;
    }

    sub_2171F3F0C(v114, v120);
    sub_2171FF30C(v120, &v109);
    v48 = v45;
    if (swift_dynamicCast())
    {
      v122 = v116;
      v123 = v117;
      v124 = v118;
      v125 = v119;
      Playlist.artwork.getter(v114);
      memcpy(v115, v114, 0x221uLL);
      enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 = get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v115);
      v50 = v106;
      v51 = v44;
      if (enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 == 1)
      {
        sub_21726B8C4(&v122);
LABEL_44:
        v36 = 3;
LABEL_48:
        __swift_project_boxed_opaque_existential_1(v120, v121);
        v100 = OUTLINED_FUNCTION_2_11();
        (*(v50 + 8))(v48, v51);
        v35 = v100;
        __swift_destroy_boxed_opaque_existential_1(v120);
        goto LABEL_49;
      }

      sub_2171F06D8(v114, &qword_27CB24400, &unk_21775E9A0);
      if (qword_280BE91A0 != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      sub_2176CA4DC(qword_280C025B8, v93, v94, v95, v96, v97, v98, v99, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&v114[0], *(&v114[0] + 1), *&v114[1], *(&v114[1] + 1), *&v114[2], *(&v114[2] + 1), *&v114[3], *(&v114[3] + 1), *&v114[4], *(&v114[4] + 1));
      sub_21726B8C4(&v122);
      if (HIBYTE(v108) == 10)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v119 = 0;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      sub_2171F06D8(&v116, &unk_27CB28A90, &qword_217758F90);
      v51 = v44;
    }

    __swift_project_boxed_opaque_existential_1(v120, v121);
    OUTLINED_FUNCTION_3_18();
    v73 = *(&v115[17] + 1);
    sub_217751DE8();
    sub_217269F50(v115);
    if (v73[2])
    {
      v74 = v73[4];
      v75 = v73[5];
      v76 = OUTLINED_FUNCTION_1_5();
      sub_21726B87C(v76, v77);

      v50 = v106;
      if (v75 != 9)
      {
        *&v114[0] = v74;
        *(&v114[0] + 1) = v75;
        v116 = xmmword_2177586D0;
        v78 = OUTLINED_FUNCTION_1_5();
        sub_21726B8B4(v78, v79);
        v80 = static MusicItemDataSource.== infix(_:_:)(v114, &v116);
        sub_21726B8A0(v116, *(&v116 + 1));
        sub_21726B8A0(*&v114[0], *(&v114[0] + 1));
        v81 = OUTLINED_FUNCTION_1_5();
        sub_21726B890(v81, v82);
        if (v80)
        {
          goto LABEL_44;
        }

LABEL_47:
        v36 = 1;
        goto LABEL_48;
      }
    }

    else
    {

      v74 = 0;
      v50 = v106;
    }

    sub_21726B890(v74, 9uLL);
    sub_21726B890(0, 1uLL);
    goto LABEL_47;
  }

  v31 = [objc_opt_self() emptyIdentifierSet];
  sub_217751DC8();
  v32 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v33 = sub_2175FCB20(v31, 28);
  v34 = *(*(v3 - 8) + 8);
  v35 = v33;
  v34(v29, v3);
  v36 = 0;
LABEL_50:
  v101 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelStoreBrowseContentItem) initWithInnerObject_];

  v102 = [objc_allocWithZone(MusicKit_SoftLinking_MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v101 personalizationStyle:v36];
  return v102;
}

uint64_t sub_21726B87C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t sub_21726B890(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_21726B8A0(a1, a2);
  }

  return a1;
}

uint64_t sub_21726B8A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_21726B8B4(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_21726B87C(a1, a2);
  }

  return a1;
}

void MusicPlayer.Queue.__allocating_init<A, B>(for:startingAt:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_69_2();
  swift_allocObject();
  MusicPlayer.Queue.init<A, B>(for:startingAt:)();
  OUTLINED_FUNCTION_218();
}

void MusicPlayer.Queue.init<A, B>(for:startingAt:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_2177528F8();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v41 = v16;
  v42 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_150();
  v40 = v21;
  OUTLINED_FUNCTION_0();
  v39 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_81();
  v38 = v27;
  bzero((v0 + 16), 0x2EAuLL);
  *(v0 + 1544) = 0;
  *(v0 + 1528) = 0u;
  *(v0 + 1552) = 0xF000000000000000;
  _s7MonitorCMa();
  *(v0 + 1560) = 0u;
  *(v0 + 1576) = 0u;
  *(v0 + 1592) = 0u;
  swift_allocObject();
  *(v0 + 1608) = sub_217548944();
  bzero(v50, 0x2EAuLL);
  v44[2] = v9;
  v44[3] = v7;
  v44[4] = v5;
  v44[5] = v3;
  v43 = v11;
  v44[6] = v11;
  v44[7] = v50;
  v29 = sub_21726C3E4(sub_217275658, v44, v9, &type metadata for MusicPlayer.Queue.Entry, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v28);
  sub_217284868();
  if (v48)
  {
    OUTLINED_FUNCTION_162_1();
    (*(v30 + 8))(v13, v9);
    sub_2171F0738(&v47, &qword_27CB24410, &unk_2177586F0);
    v32 = v41;
    v31 = v42;
  }

  else
  {
    v33 = v13;
    sub_2171F0738(&v47, &qword_27CB24410, &unk_2177586F0);
    v32 = v41;
    v31 = v42;
    (*(v41 + 16))(v40, v43, v42);
    OUTLINED_FUNCTION_133(v40, 1, v7);
    if (v34)
    {
      OUTLINED_FUNCTION_162_1();
      (*(v35 + 8))(v33, v9);
      (*(v41 + 8))(v40, v42);
    }

    else
    {
      (*(v39 + 32))(v38, v40, v7);
      v46[3] = v7;
      v46[4] = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
      (*(v39 + 16))(boxed_opaque_existential_0, v38, v7);
      sub_2171FF30C(v46, &v47);
      OUTLINED_FUNCTION_53_1(&v47, v45);
      OUTLINED_FUNCTION_162_1();
      (*(v37 + 8))(v33, v9);
      (*(v39 + 8))(v38, v7);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v47 = v45[0];
      v48 = v45[1];
      memcpy(v49, v45, 0x2D9uLL);
      v49[729] = 0;
      sub_217751DE8();
      sub_217275974();
    }
  }

  *(v1 + 768) = v29;
  memcpy((v1 + 776), v50, 0x2EAuLL);
  (*(v32 + 8))(v43, v31);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21726BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v49 = a3;
  v53 = a2;
  v10 = sub_2177528F8();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v47 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[1] = a4;
  v51 = a5;
  v62[2] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
  v22 = *(v15 + 16);
  v50 = a1;
  v22(boxed_opaque_existential_0, a1, a4);
  sub_2171FF30C(v61, &v58);
  sub_2173E04B4(&v58, 0, 1, 0, 1, v63);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v23 = v63[1];
  *a6 = v63[0];
  *(a6 + 8) = v23;
  memcpy((a6 + 16), v63, 0x2D9uLL);
  v48 = a6;
  *(a6 + 745) = 0;
  v24 = v52;
  (*(v52 + 16))(v14, v53, v10);
  if (__swift_getEnumTagSinglePayload(v14, 1, a4) == 1)
  {
    v25 = *(v24 + 8);
    sub_217751DE8();
    return v25(v14, v10);
  }

  v53 = v15;
  (*(v15 + 32))(v20, v14, a4);
  v27 = *(v51 + 8);
  v28 = a4;
  v29 = *(v27 + 8);
  sub_217751DE8();
  v30 = v29(a4, v27);
  v32 = v31;
  v52 = v28;
  if (v30 == v29(v28, v27) && v32 == v33)
  {
  }

  else
  {
    v35 = sub_217753058();

    if ((v35 & 1) == 0)
    {
      return (*(v53 + 8))(v20, v52);
    }
  }

  v36 = v51;
  v37 = v52;
  v38 = *(v51 + 16);
  v38(v61, v52, v51);
  v39 = v61[0];
  v40 = v61[1];
  v38(&v58, v37, v36);
  v41 = v58;
  v42 = v59;
  v43 = v53;
  if (!v40)
  {
    (*(v53 + 8))(v20, v37);
    if (!v42)
    {
      v63[0] = v39;
      v63[1] = 0;
      memcpy(&v63[2], v62, 0x68uLL);
      sub_2171F0738(v63, &qword_27CB244D0, &unk_21775D620);
      goto LABEL_16;
    }

LABEL_18:
    v63[0] = v39;
    v63[1] = v40;
    memcpy(&v63[2], v62, 0x68uLL);
    v63[15] = v41;
    v63[16] = v42;
    memcpy(&v63[17], v60, 0x68uLL);
    return sub_2171F0738(v63, &qword_27CB24AE8, &unk_2177590C0);
  }

  v63[0] = v39;
  v63[1] = v40;
  memcpy(&v63[2], v62, 0x68uLL);
  memcpy(v57, v63, sizeof(v57));
  if (!v59)
  {
    sub_217284868();
    (*(v43 + 8))(v20, v37);
    memcpy(v56, v57, sizeof(v56));
    sub_2172848C0(v56);
    goto LABEL_18;
  }

  memcpy(&v56[2], v60, 0x68uLL);
  v56[0] = v58;
  v56[1] = v59;
  sub_217284868();
  static PlayParameters.== infix(_:_:)(v57, v56);
  v45 = v44;
  memcpy(v54, v56, sizeof(v54));
  sub_2172848C0(v54);
  (*(v43 + 8))(v20, v37);
  memcpy(v55, v57, sizeof(v55));
  sub_2172848C0(v55);
  v56[0] = v39;
  v56[1] = v40;
  memcpy(&v56[2], v62, 0x68uLL);
  result = sub_2171F0738(v56, &qword_27CB244D0, &unk_21775D620);
  if (v45)
  {
LABEL_16:
    v46 = v49;
    sub_2171F0738(v49, &qword_27CB24410, &unk_2177586F0);
    return sub_217275AA0(v48, v46);
  }

  return result;
}

uint64_t sub_21726C3E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a8;
  v9 = v8;
  v98 = a2;
  v99 = a4;
  v97 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(AssociatedTypeWitness);
  v92 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_150();
  v85 = a5;
  v86 = v20;
  v83 = *(a5 - 8);
  v21 = *(v83 + 64);
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_6_1();
  v95 = (v24 - v25);
  MEMORY[0x28223BE20](v26, v27);
  v93 = &v80 - v28;
  OUTLINED_FUNCTION_206();
  v29 = sub_2177528F8();
  v30 = OUTLINED_FUNCTION_0_0(v29);
  v81 = v31;
  v82 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30, v34);
  OUTLINED_FUNCTION_6_1();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v80 - v40;
  v42 = *(*(a4 - 1) + 64);
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_6_1();
  v94 = v45 - v46;
  MEMORY[0x28223BE20](v47, v48);
  OUTLINED_FUNCTION_0();
  v91 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52, v53);
  OUTLINED_FUNCTION_81();
  v90 = v54;
  v89 = a6;
  v100 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(v100);
  v87 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v80 - v60;
  v62 = sub_217752138();
  v101 = sub_217752C38();
  v96 = sub_217752C48();
  sub_217752BE8();
  (*(v91 + 16))(v90, v88, a3);
  v99 = v61;
  v91 = a3;
  result = sub_217752128();
  if (v62 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v62)
  {
    v64 = (v92 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_217752968();
      result = __swift_getEnumTagSinglePayload(v41, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v97(v41, v93);
      if (v9)
      {
        v75 = OUTLINED_FUNCTION_159();
        v76(v75);

        (*(v83 + 32))(v84, v93, v85);
        v77 = *v64;
        v78 = OUTLINED_FUNCTION_205_0();
        return v79(v78);
      }

      v9 = 0;
      v65 = *v64;
      v66 = OUTLINED_FUNCTION_205_0();
      v67(v66);
      sub_217752C28();
      if (!--v62)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v68 = (v92 + 32);
  v69 = (v92 + 8);
  v70 = v86;
  while (1)
  {
    sub_217752968();
    if (__swift_getEnumTagSinglePayload(v37, 1, AssociatedTypeWitness) == 1)
    {
      v71 = OUTLINED_FUNCTION_159();
      v72(v71);
      (*(v81 + 8))(v37, v82);
      return v101;
    }

    (*v68)(v70, v37, AssociatedTypeWitness);
    v97(v70, v95);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v69)(v70, AssociatedTypeWitness);
    sub_217752C28();
  }

  (*v69)(v70, AssociatedTypeWitness);
  v73 = OUTLINED_FUNCTION_159();
  v74(v73);

  return (*(v83 + 32))(v84, v95, v85);
}

uint64_t MusicPlayer.Queue.__allocating_init<A>(_:startingAt:)()
{
  OUTLINED_FUNCTION_69_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_13_2();
  MusicPlayer.Queue.init<A>(_:startingAt:)();
  return v0;
}

void MusicPlayer.Queue.init<A>(_:startingAt:)()
{
  OUTLINED_FUNCTION_220();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_1();
  bzero((v0 + 16), 0x2EAuLL);
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_110_0();
  *(v0 + 1608) = sub_217548944();
  v10 = *(v5 + 16);
  OUTLINED_FUNCTION_29_5();
  v11();
  v12 = sub_217752468();
  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_13_2();
  v15(v14);
  *(v1 + 768) = v12;
  memcpy((v1 + 776), v3, 0x2EAuLL);
  OUTLINED_FUNCTION_218();
}

uint64_t MusicPlayer.Queue.__allocating_init(album:startingAt:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_69_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_132();
  MusicPlayer.Queue.init(album:startingAt:)();
  return v0;
}

uint64_t MusicPlayer.Queue.init(album:startingAt:)()
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_110_0();
  *(v0 + 1608) = sub_217548944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2177586E0;
  v16[3] = &type metadata for Album;
  v16[4] = &protocol witness table for Album;
  OUTLINED_FUNCTION_197();
  v16[0] = swift_allocObject();
  sub_21725CF0C(v1, v16[0] + 16);
  sub_2171FF30C(v16, v14);
  OUTLINED_FUNCTION_53_1(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_164_0();
  *(v3 + 777) = 0;
  *(v0 + 768) = v3;
  v15[3] = &type metadata for Track;
  v15[4] = &protocol witness table for Track;
  v15[0] = swift_allocObject();
  sub_217275710(v2, v15[0] + 16);
  sub_2171FF30C(v15, v16);
  sub_217751DE8();
  OUTLINED_FUNCTION_53_1(v16, v13);
  sub_21727576C(v2);
  sub_21725CE44(v1);
  v4 = __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_141_0(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1]);
  *(v0 + 1521) = v16[0];
  sub_217751DE8();
  return v0;
}

uint64_t MusicPlayer.Queue.__allocating_init(playlist:startingAt:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_69_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_132();
  MusicPlayer.Queue.init(playlist:startingAt:)();
  return v0;
}

uint64_t MusicPlayer.Queue.init(playlist:startingAt:)()
{
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_110_0();
  *(v0 + 1608) = sub_217548944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2177586E0;
  v16[3] = &type metadata for Playlist;
  v16[4] = &protocol witness table for Playlist;
  OUTLINED_FUNCTION_197();
  v16[0] = swift_allocObject();
  sub_2172757C0(v1, v16[0] + 16);
  sub_2171FF30C(v16, v14);
  OUTLINED_FUNCTION_53_1(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_164_0();
  *(v3 + 777) = 0;
  *(v0 + 768) = v3;
  v15[3] = &type metadata for Playlist.Entry;
  v15[4] = &protocol witness table for Playlist.Entry;
  OUTLINED_FUNCTION_197();
  v15[0] = swift_allocObject();
  sub_217275858(v2, v15[0] + 16);
  sub_2171FF30C(v15, v16);
  sub_217751DE8();
  OUTLINED_FUNCTION_53_1(v16, v13);
  sub_2172758B4(v2);
  sub_21726B8C4(v1);
  v4 = __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_141_0(v4, v5, v6, v7, v8, v9, v10, v11, v13[0], v13[1]);
  *(v0 + 1521) = v16[0];
  sub_217751DE8();
  return v0;
}

uint64_t sub_21726CEA0(uint64_t a1, uint64_t *a2)
{
  sub_217284868();
  v3 = *a2;
  return sub_21726CF40(&v5);
}

void (*sub_21726CF80(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x600uLL);
  *a1 = v3;
  v3[191] = v1;
  OUTLINED_FUNCTION_138();
  sub_217284868();
  return sub_21726D004;
}

void sub_21726D004(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 1528);
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    sub_21726E7A0();
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v4, v5, v6);
  }

  else
  {
    sub_21726E7A0();
  }

  sub_2171F0738(v2, &qword_27CB24410, &unk_2177586F0);

  free(v2);
}

uint64_t sub_21726D0AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_217751DE8();
  return sub_21726D12C();
}

uint64_t sub_21726D0EC()
{
  OUTLINED_FUNCTION_126();
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1536);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21726D12C()
{
  OUTLINED_FUNCTION_143();
  swift_beginAccess();
  v3 = *(v1 + 1536);
  *(v1 + 1528) = v2;
  *(v1 + 1536) = v0;
}

uint64_t sub_21726D1C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_217275908(*a1, *(a1 + 8));
  return sub_21726D248();
}

uint64_t sub_21726D208()
{
  OUTLINED_FUNCTION_126();
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1552);
  v3 = OUTLINED_FUNCTION_93();
  sub_217275908(v3, v4);
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21726D248()
{
  OUTLINED_FUNCTION_143();
  swift_beginAccess();
  v3 = *(v1 + 1544);
  v4 = *(v1 + 1552);
  *(v1 + 1544) = v2;
  *(v1 + 1552) = v0;
  return sub_217275680(v3, v4);
}

uint64_t sub_21726D2E4(uint64_t a1, uint64_t *a2)
{
  sub_217284868();
  v3 = *a2;
  return sub_21726D37C();
}

uint64_t sub_21726D37C()
{
  swift_beginAccess();
  sub_217275974();
  return swift_endAccess();
}

void sub_21726D424()
{
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1600);
  v3 = v2;
  sub_2175486B8(v2);
}

void sub_21726D458(void *a1)
{
  v2 = *(v1 + 1600);
  *(v1 + 1600) = a1;
  v3 = a1;

  sub_21726D424();
}

uint64_t sub_21726D4A8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  *(v7 + 88) = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21726D4CC()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  v7 = sub_21726C3E4(sub_2172759CC, v3, v4, &type metadata for MusicPlayer.Queue.Entry, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
  *(v0 + 64) = v7;

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_21726D5F4;
  v9 = *(v0 + 56);

  return sub_21726D850(v7, v1);
}

uint64_t sub_21726D5F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = *(v2 + 72);
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21726D71C, 0, 0);
  }

  else
  {
    v7 = *(v3 + 64);

    OUTLINED_FUNCTION_20_0();

    return v8();
  }
}

uint64_t sub_21726D71C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_20_0();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_21726D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  sub_2171FF30C(v12, v10);
  sub_2173E04B4(v10, 0, 1, 0, 1, __src);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v8 = __src[1];
  *a4 = __src[0];
  *(a4 + 8) = v8;
  memcpy((a4 + 16), __src, 0x2D9uLL);
  *(a4 + 745) = 0;
  return sub_217751DE8();
}

uint64_t sub_21726D850(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = a2 & 1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21726D900;

  return sub_21726E31C();
}

uint64_t sub_21726D900()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_21726D9E4()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v0;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  v7 = *(v6 - 8);
  *(v1 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 89) = *v3;

  return MEMORY[0x2822009F8](sub_21726DAA4, 0, 0);
}

uint64_t sub_21726DAA4()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(*(v0 + 56) + 16);
  v7 = OUTLINED_FUNCTION_117_2();
  v8(v7);
  OUTLINED_FUNCTION_117_2();
  v9 = sub_217752468();
  *(v0 + 16) = v9;
  *(v0 + 72) = v9;
  *(v0 + 88) = v1;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_21726DB8C;
  v11 = *(v0 + 48);
  OUTLINED_FUNCTION_132();

  return sub_21726E31C();
}

uint64_t sub_21726DB8C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_21726DCA8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 81) = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21726DCC8()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 81);
  v2 = *(v0 + 32);
  v3 = sub_217275A34(v2, v2);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = *(v2 - 8);
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  swift_allocObject();
  v9 = sub_2177522C8();
  v10 = *(v6 + 16);
  OUTLINED_FUNCTION_58_3();
  v11();
  sub_21726B91C();
  *(v0 + 16) = v9;
  *(v0 + 56) = v9;
  *(v0 + 80) = v1;
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  v13 = sub_217752418();
  swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_21726DE60;
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  v16 = *(v0 + 32);
  v17 = OUTLINED_FUNCTION_20_6();

  return sub_21726D4A8(v17, v18, v13, v19, v20, v21);
}

uint64_t sub_21726DE60()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v7 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21726DF9C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v8();
  }
}

uint64_t sub_21726DF9C()
{
  OUTLINED_FUNCTION_20_0();
  v1 = *(v0 + 72);
  return v2();
}

uint64_t sub_21726DFC0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 808) = v2;
  *(v3 + 800) = a1;
  *(v3 + 832) = *a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21726DFE0()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  inited = swift_initStackObject();
  *(v0 + 816) = inited;
  *(inited + 16) = xmmword_2177586E0;
  sub_217275AA0(v2, inited + 32);
  v4 = swift_task_alloc();
  *(v0 + 824) = v4;
  *v4 = v0;
  v4[1] = sub_21726E0D8;
  v5 = *(v0 + 808);

  return sub_21726D850(inited, v1);
}

uint64_t sub_21726E0D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 824);
  v3 = *(v1 + 816);
  v4 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  swift_setDeallocating();
  sub_217275B68();
  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_21726E1EC()
{
  v8 = *(v0 + 1608);

  v1 = OUTLINED_FUNCTION_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_58_3();
  sub_217283840(v3, v4, v5);
  v6 = sub_217751C38();

  return v6;
}

uint64_t sub_21726E284()
{
  v1 = *(*(v0 + 1608) + 16);

  v2 = OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  sub_217283840(&qword_280BE73D8, &qword_27CB244D8, &qword_2177589B0);
  sub_217751BB8();
}

uint64_t sub_21726E31C()
{
  OUTLINED_FUNCTION_10();
  v3 = *v2;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  *(v1 + 40) = *v4;
  sub_217752518();
  *(v1 + 32) = sub_217752508();
  v6 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21726E3BC, v6, v5);
}

uint64_t sub_21726E3BC()
{
  v8 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  v7 = v3;
  (*(*v4 + 376))(v2, &v7);
  OUTLINED_FUNCTION_20_0();

  return v5();
}

void sub_21726E470()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = *v2;
  bzero(v47, 0x2EAuLL);
  v4 = sub_217751DE8();
  sub_21763BD80(v4, v47, v48);
  OUTLINED_FUNCTION_138();
  v5 = v0[192];
  v39 = v0[191];
  sub_217751DE8();

  OUTLINED_FUNCTION_138();
  v6 = v0[193];
  v7 = v1[194];
  v8 = *&v48[176];
  v9 = *&v48[184];
  sub_217275908(v1[193], v7);
  sub_217275680(v8, v9);
  *&v10 = v39;
  *(&v10 + 1) = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  *&v48[160] = v10;
  *&v48[176] = v11;
  OUTLINED_FUNCTION_138();
  sub_217284868();
  v12 = v45;
  if (v45)
  {
    v13 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    OUTLINED_FUNCTION_0();
    v15 = v14;
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v18, v19);
    OUTLINED_FUNCTION_1();
    (*(v15 + 16))(v21 - v20);
    sub_2171F0738(v44, &qword_27CB24418, &unk_21777F680);
    v22 = *(v13 + 16);
    v23 = OUTLINED_FUNCTION_204();
    v24(v23);
    v25 = *(v15 + 8);
    v26 = OUTLINED_FUNCTION_154();
    v27(v26);
    v38 = v47[1];
    v40 = v47[0];
    v36 = v47[3];
    v37 = v47[2];
    v34 = v47[5];
    v35 = v47[4];
    v12 = *(&v47[6] + 1);
    v28 = *&v47[6];
    v29 = *&v47[7];
  }

  else
  {
    sub_2171F0738(v44, &qword_27CB24418, &unk_21777F680);
    v28 = 0;
    v29 = 0;
    v38 = 0u;
    v40 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
  }

  memcpy(v42, &v48[192], sizeof(v42));
  sub_2171F0738(v42, &qword_27CB244D0, &unk_21775D620);
  *&v48[192] = v40;
  *&v48[208] = v38;
  *&v48[224] = v37;
  *&v48[240] = v36;
  *&v48[256] = v35;
  *&v48[272] = v34;
  *&v48[288] = v28;
  *&v48[296] = v12;
  *&v48[304] = v29;
  memcpy(v43, v48, 0x138uLL);
  memcpy(v41, v48, sizeof(v41));
  sub_217283790(v43, v47);
  v30 = sub_21763C064();
  memcpy(v47, v41, 0x138uLL);
  sub_2172837EC(v47);
  v31 = v1[200];
  v32 = v31;
  v33 = &selRef_appendQueueDescriptor_;
  if (!v3)
  {
    v33 = &selRef_prependQueueDescriptor_;
  }

  [v31 *v33];

  memcpy(v41, v48, sizeof(v41));
  sub_2172837EC(v41);
  OUTLINED_FUNCTION_13();
}

void sub_21726E7A0()
{
  OUTLINED_FUNCTION_217_1();
  v2 = v1;
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_170_0();
  sub_217284868();
  OUTLINED_FUNCTION_170_0();
  sub_217284868();
  if (!v16)
  {
    if (!v17[1])
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  sub_217284868();
  if (!v17[1])
  {
    sub_217276358(v13);
LABEL_13:
    v5 = &unk_27CB24448;
    v6 = &unk_217758748;
LABEL_14:
    sub_2171F0738(&v15, v5, v6);
    goto LABEL_15;
  }

  memcpy(__dst, v17, 0x2EAuLL);
  v3 = v13[0] == __dst[0] && v13[1] == __dst[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    sub_217276358(__dst);
    sub_217276358(v13);
    v5 = &qword_27CB24410;
    v6 = &unk_2177586F0;
    goto LABEL_14;
  }

  v4 = sub_2175ABBE4(&v14, &__dst[2]);
  sub_217276358(__dst);
  sub_217276358(v13);
  sub_2171F0738(&v15, &qword_27CB24410, &unk_2177586F0);
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  sub_21726E284();
  OUTLINED_FUNCTION_170_0();
  sub_217284868();
  swift_beginAccess();
  OUTLINED_FUNCTION_170_0();
  sub_217275974();
  swift_endAccess();
  if (v2)
  {
    goto LABEL_22;
  }

  sub_217284868();
  if (!v16)
  {
LABEL_19:
    sub_2171F0738(&v15, &qword_27CB24410, &unk_2177586F0);
    goto LABEL_22;
  }

  sub_217751DE8();
  sub_217276358(&v15);
  v7 = *(v0 + 1600);
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_132();
    v9 = sub_217751F18();

    v10 = OUTLINED_FUNCTION_117_2();
    [v10 v11];
  }

  else
  {
  }

LABEL_22:
  OUTLINED_FUNCTION_219();
}

void MusicPlayer.Queue.__allocating_init(arrayLiteral:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    sub_217276338(0, v3, 0);
    v4 = v19;
    v5 = v2 + 32;
    do
    {
      sub_2171FF30C(v5, v17);
      sub_2171FF30C(v17, v16);
      sub_2171FF30C(v16, __dst);
      OUTLINED_FUNCTION_53_1(__dst, __src);
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 = __src[0];
      v7 = __src[1];
      memcpy(__dst, __src, 0x2D9uLL);
      v18 = 0;
      v19 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      sub_217751DE8();
      if (v9 >= v8 >> 1)
      {
        sub_217276338(v8 > 1, v9 + 1, 1);
        v4 = v19;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 752 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      memcpy((v10 + 48), __dst, 0x2D9uLL);
      *(v10 + 777) = v18;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  __src[0] = v4;
  bzero(__dst, 0x2EAuLL);
  v11 = *(v0 + 152);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24438, &qword_217758740);
  v13 = sub_217283840(&qword_27CB24440, &qword_27CB24438, &qword_217758740);
  v11(__src, __dst, v12, v13);
  OUTLINED_FUNCTION_13();
}

uint64_t MusicPlayer.Queue.deinit()
{
  sub_2171F0738(v0 + 16, &qword_27CB24410, &unk_2177586F0);
  v1 = *(v0 + 768);

  sub_2171F0738(v0 + 776, &qword_27CB24410, &unk_2177586F0);
  v2 = *(v0 + 1536);

  sub_217275680(*(v0 + 1544), *(v0 + 1552));
  sub_2171F0738(v0 + 1560, &qword_27CB24418, &unk_21777F680);

  v3 = *(v0 + 1608);

  return v0;
}

uint64_t MusicPlayer.Queue.__deallocating_deinit()
{
  MusicPlayer.Queue.deinit();
  v0 = OUTLINED_FUNCTION_69_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21726ECA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21726E1EC();
  *a1 = result;
  return result;
}

uint64_t sub_21726ECC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 392))();
  *a1 = result;
  return result;
}

BOOL static MusicPlayer.Queue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  if (v25)
  {
    sub_217284868();
    if (!v26[1])
    {
      sub_2171F0738(v27, &qword_27CB24410, &unk_2177586F0);
      v14 = __dst;
LABEL_24:
      sub_217276358(v14);
      goto LABEL_25;
    }

    memcpy(v22, v26, 0x2EAuLL);
    v4 = __dst[0] == v22[0] && __dst[1] == v22[1];
    if (!v4 && (sub_217753058() & 1) == 0)
    {
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v18, v19, v20);
      sub_217276358(v22);
      sub_217276358(__dst);
      OUTLINED_FUNCTION_58_3();
      goto LABEL_26;
    }

    v5 = sub_2175ABBE4(&__dst[2], &v22[2]);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v6, v7, v8);
    sub_217276358(v22);
    sub_217276358(__dst);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v9, v10, v11);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    sub_2171F0738(v27, &qword_27CB24410, &unk_2177586F0);
    if (v26[1])
    {
LABEL_25:
      v15 = &unk_27CB24448;
      v16 = &unk_217758748;
      v17 = v24;
LABEL_26:
      sub_2171F0738(v17, v15, v16);
      return 0;
    }

    sub_2171F0738(v24, &qword_27CB24410, &unk_2177586F0);
  }

  if ((sub_2172725A8(*(v3 + 768), *(v2 + 768)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  OUTLINED_FUNCTION_39_0();
  sub_217284868();
  if (!v25)
  {
    if (v26[1])
    {
      goto LABEL_25;
    }

    sub_2171F0738(v24, &qword_27CB24410, &unk_2177586F0);
    return 1;
  }

  sub_217284868();
  if (!v26[1])
  {
    v14 = v27;
    goto LABEL_24;
  }

  memcpy(__dst, v26, 0x2EAuLL);
  v12 = v27[0] == __dst[0] && v27[1] == __dst[1];
  if (v12 || (v13 = 0, (sub_217753058() & 1) != 0))
  {
    v13 = sub_2175ABBE4(&v28, &__dst[2]);
  }

  sub_217276358(__dst);
  sub_217276358(v27);
  sub_2171F0738(v24, &qword_27CB24410, &unk_2177586F0);
  return v13;
}

uint64_t sub_21726F024(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_99_3(a1, a2);
  if (!v12)
  {
    return 0;
  }

  if (!v2 || v3 == v4)
  {
    return 1;
  }

  v5 = (v4 + 48);
  v6 = (v3 + 48);
  while (2)
  {
    v7 = *(v6 - 2);
    v8 = *v6;
    v9 = *(v5 - 2);
    v10 = *(v5 - 1);
    v11 = *v5;
    switch(*v6)
    {
      case 1:
        if (v11 != 1)
        {
          goto LABEL_41;
        }

        v48 = OUTLINED_FUNCTION_93();
        sub_21726A608(v48, v49, 1);
        v50 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v50, v51, 1);
        if ((LODWORD(v9) ^ LODWORD(v7)))
        {
          return 0;
        }

        goto LABEL_36;
      case 2:
        if (v11 != 2)
        {
          goto LABEL_41;
        }

        v38 = OUTLINED_FUNCTION_93();
        sub_21726A608(v38, v39, 2);
        v40 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v40, v41, 2);
        if (*&v7 != *&v9)
        {
          return 0;
        }

        goto LABEL_36;
      case 3:
        if (v11 != 3)
        {
          goto LABEL_41;
        }

        v42 = *(v6 - 2);
        v43 = *(v5 - 2);
        v44 = OUTLINED_FUNCTION_93();
        sub_21726A608(v44, v45, 3);
        v46 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v46, v47, 3);
        if (v7 != v9)
        {
          return 0;
        }

        goto LABEL_36;
      case 4:
        if (v11 != 4)
        {
          goto LABEL_38;
        }

        v23 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v23, v24, 4);
        v25 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v25, v26, 4);
        v27 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v27, v28, 4);
        v29 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v29, v30, 4);
        v31 = OUTLINED_FUNCTION_20_6();
        v13 = sub_21726F024(v31);
        v32 = OUTLINED_FUNCTION_93();
        sub_21726A608(v32, v33, 4);
        v34 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v34, v35, 4);
        v36 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v36, v37, 4);
        v20 = OUTLINED_FUNCTION_93();
        v22 = 4;
        goto LABEL_26;
      case 5:
        if (v11 == 5)
        {
          v52 = OUTLINED_FUNCTION_16_0();
          sub_21726A5E0(v52, v53, 5);
          v54 = OUTLINED_FUNCTION_93();
          sub_21726A5E0(v54, v55, 5);
          v56 = OUTLINED_FUNCTION_16_0();
          sub_21726A5E0(v56, v57, 5);
          v58 = OUTLINED_FUNCTION_93();
          sub_21726A5E0(v58, v59, 5);
          v60 = OUTLINED_FUNCTION_20_6();
          v13 = sub_217261FB0(v60);
          v61 = OUTLINED_FUNCTION_93();
          sub_21726A608(v61, v62, 5);
          v63 = OUTLINED_FUNCTION_16_0();
          sub_21726A608(v63, v64, 5);
          v65 = OUTLINED_FUNCTION_16_0();
          sub_21726A608(v65, v66, 5);
          v20 = OUTLINED_FUNCTION_93();
          v22 = 5;
LABEL_26:
          sub_21726A608(v20, v21, v22);
          if ((v13 & 1) == 0)
          {
            return 0;
          }

LABEL_36:
          v5 += 3;
          v6 += 24;
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

LABEL_38:
        v78 = *(v6 - 2);
LABEL_40:
        v80 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v80, v81, v8);
        sub_217751DE8();
LABEL_41:
        v82 = OUTLINED_FUNCTION_16_0();
        sub_21726A5E0(v82, v83, v11);
        v84 = OUTLINED_FUNCTION_93();
        sub_21726A608(v84, v85, v8);
        v86 = OUTLINED_FUNCTION_16_0();
        sub_21726A608(v86, v87, v11);
        v88 = OUTLINED_FUNCTION_93();
        sub_21726A608(v88, v89, v8);
        return 0;
      case 6:
        if (v11 != 6 || (v10 | *&v9) != 0)
        {
          goto LABEL_41;
        }

        v68 = OUTLINED_FUNCTION_93();
        sub_21726A608(v68, v69, 6);
        v70 = 0;
        v71 = 0;
        v72 = 6;
        goto LABEL_35;
      default:
        if (*v5)
        {
          v79 = *(v6 - 1);
          goto LABEL_40;
        }

        v12 = *&v7 == *&v9 && *(v6 - 1) == v10;
        if (!v12)
        {
          OUTLINED_FUNCTION_39_0();
          v13 = sub_217753058();
          v14 = OUTLINED_FUNCTION_16_0();
          sub_21726A5E0(v14, v15, 0);
          v16 = OUTLINED_FUNCTION_93();
          sub_21726A5E0(v16, v17, 0);
          v18 = OUTLINED_FUNCTION_93();
          sub_21726A608(v18, v19, 0);
          v20 = OUTLINED_FUNCTION_16_0();
          v22 = 0;
          goto LABEL_26;
        }

        sub_21726A5E0(*(v6 - 2), *(v6 - 1), 0);
        v73 = OUTLINED_FUNCTION_93();
        sub_21726A5E0(v73, v74, 0);
        v75 = OUTLINED_FUNCTION_93();
        sub_21726A608(v75, v76, 0);
        v70 = OUTLINED_FUNCTION_93();
        v72 = 0;
LABEL_35:
        sub_21726A608(v70, v71, v72);
        goto LABEL_36;
    }
  }
}

void sub_21726F358()
{
  OUTLINED_FUNCTION_97_0();
  v3 = OUTLINED_FUNCTION_93_1(v1, v2);
  if (v14 && v0 && v3 != v4)
  {
    v5 = (v3 + 64);
    v6 = (v4 + 64);
    while (1)
    {
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v9 = *v5;
      v11 = *(v6 - 3);
      v12 = *(v6 - 2);
      v13 = *(v6 - 1);
      v20 = *v6;
      if (v7)
      {
        if (!v11)
        {
          break;
        }

        v14 = *(v5 - 4) == *(v6 - 4) && v7 == v11;
        if (!v14 && (sub_217753058() & 1) == 0)
        {
          break;
        }
      }

      else if (v11)
      {
        break;
      }

      if (v10)
      {
        if (!v13)
        {
          break;
        }

        if (v8 == v12 && v10 == v13)
        {
          sub_217751DE8();
          v17 = v20;
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
        }

        else
        {
          v16 = sub_217753058();
          sub_217751DE8();
          v17 = v20;
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          if ((v16 & 1) == 0)
          {

            break;
          }
        }
      }

      else
      {
        if (v13)
        {
          break;
        }

        sub_217751DE8();
        v17 = v20;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
      }

      sub_217261FB0(v9, v17);
      v19 = v18;

      if (v19)
      {
        v5 += 5;
        v6 += 5;
        if (--v0)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_95_0();
}

void sub_21726F5AC()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  OUTLINED_FUNCTION_67_3();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_151();
  if (v15 && v0 && v6 != v4)
  {
    OUTLINED_FUNCTION_70_2(v14);
    v17 = v6 + v16;
    v18 = v4 + v16;
    v20 = *(v19 + 72);
    do
    {
      OUTLINED_FUNCTION_105_3();
      sub_217284868();
      OUTLINED_FUNCTION_182_0();
      v21 = OUTLINED_FUNCTION_13_2();
      v22 = v2(v21);
      OUTLINED_FUNCTION_129();
      sub_2171F0738(v23, v24, v25);
      OUTLINED_FUNCTION_129();
      sub_2171F0738(v26, v27, v28);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v18 += v20;
      v17 += v20;
      OUTLINED_FUNCTION_178();
    }

    while (!v15);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21726F708()
{
  OUTLINED_FUNCTION_217_1();
  v5 = OUTLINED_FUNCTION_23_7(v3, v4);
  if (v7 && v2 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      memcpy(__dst, v0, sizeof(__dst));
      memcpy(v16, v1, sizeof(v16));
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767DE54(__dst, v16);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v0 += 616;
      v1 += 616;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726F800()
{
  OUTLINED_FUNCTION_217_1();
  v5 = OUTLINED_FUNCTION_23_7(v3, v4);
  if (v7 && v2 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767E124();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v0 += 640;
      v1 += 640;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726F900()
{
  OUTLINED_FUNCTION_217_1();
  v5 = OUTLINED_FUNCTION_23_7(v3, v4);
  if (v7 && v2 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      memcpy(__dst, v0, sizeof(__dst));
      memcpy(v16, v1, sizeof(v16));
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767E3C0(__dst, v16);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v0 += 1272;
      v1 += 1272;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726FA70()
{
  OUTLINED_FUNCTION_97_0();
  v3 = OUTLINED_FUNCTION_93_1(v1, v2);
  if (v14 && v0 && v3 != v4)
  {
    v5 = (v3 + 40);
    v6 = (v4 + 40);
    do
    {
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[5];
      v17 = v5[4];
      v10 = v6[1];
      v11 = v6[2];
      v13 = v6[4];
      v12 = v6[5];
      v14 = *(v5 - 1) == *(v6 - 1) && *v5 == *v6;
      if (!v14 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v15 = v7 == v10 && v8 == v11;
      if (!v15 && (OUTLINED_FUNCTION_183() & 1) == 0)
      {
        break;
      }

      if (v9)
      {
        if (!v12)
        {
          break;
        }

        v16 = v17 == v13 && v9 == v12;
        if (!v16 && (OUTLINED_FUNCTION_216() & 1) == 0)
        {
          break;
        }
      }

      else if (v12)
      {
        break;
      }

      v5 += 7;
      v6 += 7;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_95_0();
}

void sub_21726FB4C()
{
  OUTLINED_FUNCTION_217_1();
  v5 = OUTLINED_FUNCTION_23_7(v3, v4);
  if (v7 && v2 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767E738();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v0 += 768;
      v1 += 768;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

void sub_21726FC24()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_150();
  v70 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  OUTLINED_FUNCTION_45_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v68 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24718, &qword_217758CA0);
  OUTLINED_FUNCTION_43(v74);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19, v20);
  v22 = (&v68 - v21);
  v73 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  v23 = OUTLINED_FUNCTION_109_1(v73);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_67_3();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30, v31);
  v34 = &v68 - v33;
  v35 = *(v3 + 16);
  if (v35 != *(v1 + 16) || !v35 || v3 == v1)
  {
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_70_2(v32);
  v37 = v3 + v36;
  v38 = v1 + v36;
  v69 = *(v39 + 72);
  v40 = &qword_27CB24710;
  v41 = &unk_2177A28C0;
  while (1)
  {
    OUTLINED_FUNCTION_177();
    sub_217283FD0();
    v75 = v35;
    v42 = v41;
    v41 = v40;
    v71 = v38;
    v72 = v37;
    v40 = v22;
    v22 = v4;
    v4 = v16;
    OUTLINED_FUNCTION_77_1();
    sub_217283FD0();
    v43 = *v29;
    v44 = *v34 ? 0x6C75736552706F74 : 0x736D726574;
    v16 = (*v34 ? 0xEA00000000007374 : 0xE500000000000000);
    v45 = *v29 ? 0x6C75736552706F74 : 0x736D726574;
    v46 = *v29 ? 0xEA00000000007374 : 0xE500000000000000;
    v47 = v44 == v45 && v16 == v46;
    if (v47)
    {

      OUTLINED_FUNCTION_146_0();
    }

    else
    {
      v48 = sub_217753058();

      OUTLINED_FUNCTION_146_0();
      if ((v48 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v49 = *(v34 + 2);
    v50 = *(v29 + 2);
    if (v49)
    {
      if (!v50)
      {
        goto LABEL_63;
      }

      v51 = *(v34 + 1) == *(v29 + 1) && v49 == v50;
      if (!v51 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v50)
    {
      goto LABEL_63;
    }

    v52 = *(v34 + 4);
    v53 = *(v29 + 4);
    if (v52)
    {
      if (!v53)
      {
        goto LABEL_63;
      }

      v54 = *(v34 + 3) == *(v29 + 3) && v52 == v53;
      if (!v54 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v53)
    {
      goto LABEL_63;
    }

    v55 = *(v34 + 6);
    v56 = *(v29 + 6);
    if (v55)
    {
      if (!v56)
      {
        goto LABEL_63;
      }

      v57 = *(v34 + 5) == *(v29 + 5) && v55 == v56;
      if (!v57 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v56)
    {
      goto LABEL_63;
    }

    v58 = *(v73 + 32);
    v59 = *(v74 + 48);
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_133(v22, 1, v4);
    if (!v47)
    {
      break;
    }

    OUTLINED_FUNCTION_133(v22 + v59, 1, v4);
    if (!v47)
    {
      goto LABEL_62;
    }

    v60 = OUTLINED_FUNCTION_160_1();
    sub_2171F0738(v60, v61, v62);
    sub_2172840D8(v29, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
    sub_2172840D8(v34, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
LABEL_58:
    v38 = v71 + v69;
    v37 = v72 + v69;
    v35 = v42 - 1;
    if (!v35)
    {
      goto LABEL_64;
    }
  }

  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_133(v22 + v59, 1, v4);
  if (!v63)
  {
    v64 = v70;
    sub_217283888(v22 + v59, v70);
    LODWORD(v75) = sub_21767E9A4(v16, v64);
    sub_2171F0738(v64, &qword_27CB24708, &unk_217758C90);
    sub_2171F0738(v16, &qword_27CB24708, &unk_217758C90);
    v65 = OUTLINED_FUNCTION_160_1();
    sub_2171F0738(v65, v66, v67);
    sub_2172840D8(v29, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
    sub_2172840D8(v34, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
    if ((v75 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  sub_2171F0738(v16, &qword_27CB24708, &unk_217758C90);
LABEL_62:
  sub_2171F0738(v22, &qword_27CB24718, &qword_217758CA0);
LABEL_63:
  sub_2172840D8(v29, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
  sub_2172840D8(v34, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
LABEL_64:
  OUTLINED_FUNCTION_13();
}

void sub_217270140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_210();
  if (v13)
  {
    goto LABEL_28;
  }

  v20 = *(v19 + 16);
LABEL_3:
  if (v15 >> 62)
  {
    v21 = sub_217752D38();
  }

  else
  {
    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 != v21 || !v20)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_203();
  OUTLINED_FUNCTION_202_0();
  if (!v25)
  {
    v24 = v15;
  }

  if (v15 >> 62)
  {
    v23 = v24;
  }

  if (v22 != v23)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      type metadata accessor for AnyMusicProperty();
      OUTLINED_FUNCTION_134_0();
      while (1)
      {
        v26 = v17 - 3;
        if (__OFADD__(v17 - 4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v20 = sub_217752D38();
          goto LABEL_3;
        }

        if (v18)
        {
          v27 = MEMORY[0x21CEA2E30](v17 - 4, a12);
          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
          OUTLINED_FUNCTION_201_1(a11);
          if (v29)
          {
            goto LABEL_26;
          }

          v27 = *(a12 + 8 * v17);

          if (v16)
          {
LABEL_17:
            v28 = MEMORY[0x21CEA2E30](v17 - 4, v15);
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_201_1(a10);
        if (v29)
        {
          goto LABEL_27;
        }

        v28 = *(v15 + 8 * v17);

LABEL_22:
        v30 = static AnyMusicProperty.== infix(_:_:)(v27, v28);

        if (v30)
        {
          ++v17;
          v15 = v14;
          if (v26 != v12)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_213();
  }
}

void sub_2172702B8()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_23_7(v3, v4);
  if (v5)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_169();
      if (v6 != v7)
      {
        v8 = 0;
        while (1)
        {
          v9 = *(v1 + v8 + 64);
          v10 = *(v0 + v8 + 40);
          v11 = *(v0 + v8 + 64);
          if (*(v1 + v8 + 40))
          {
            if (!*(v0 + v8 + 40))
            {
              break;
            }
          }

          else
          {
            if (*(v1 + v8 + 32) != *(v0 + v8 + 32))
            {
              v10 = 1;
            }

            if (v10)
            {
              break;
            }
          }

          if (*(v1 + v8 + 56))
          {
            if (!*(v0 + v8 + 56))
            {
              break;
            }
          }

          else
          {
            if (*(v1 + v8 + 48) == *(v0 + v8 + 48))
            {
              v12 = *(v0 + v8 + 56);
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              break;
            }
          }

          v13 = *(v1 + v8 + 64);
          sub_217751DE8();
          sub_217751DE8();
          v14 = OUTLINED_FUNCTION_16_0();
          sub_217261FB0(v14, v15);
          v17 = v16;

          if (v17)
          {
            v8 += 40;
            if (--v2)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

  OUTLINED_FUNCTION_218();
}

void sub_217270404()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_217751428();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v33 - v16;
  v18 = *(v3 + 16);
  if (v18 == *(v1 + 16) && v18 && v3 != v1)
  {
    v19 = *(v7 + 80);
    OUTLINED_FUNCTION_47_3();
    v21 = v3 + v20;
    v22 = v1 + v20;
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v25 = (v23 - 8);
    v33 = *(v23 + 56);
    v34 = v24;
    do
    {
      v26 = OUTLINED_FUNCTION_16_0();
      v27 = v34;
      (v34)(v26);
      v28 = v23;
      v27(v13, v22, v4);
      OUTLINED_FUNCTION_4_18();
      sub_217284690(&qword_27CB24AC0, 255, v29);
      OUTLINED_FUNCTION_58_3();
      LOBYTE(v27) = sub_217751F08();
      v30 = *v25;
      v31 = OUTLINED_FUNCTION_93();
      v30(v31);
      (v30)(v17, v4);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v22 += v33;
      v21 += v33;
      OUTLINED_FUNCTION_178();
      v23 = v28;
    }

    while (!v32);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172705FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_103_1(a1, a2);
  if (v7)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v4 + 40);
    for (i = (v3 + 40); ; i += 3)
    {
      v7 = *(i - 1) == *(v5 - 1) && *i == *v5;
      if (!v7 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v5 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2172706A8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_99_3(a1, a2);
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      v13 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_1();
      do
      {
        OUTLINED_FUNCTION_182_0();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_182_0();
        v13 = v2(v16, &v15);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v7, v8, v9);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v10, v11, v12);
        if ((v13 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_62_2();
      }

      while (!v6);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_217270790(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_103_1(a1, a2);
  if (v7)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 40);
    for (i = (v4 + 40); ; i += 2)
    {
      v7 = *(v5 - 1) == *(i - 1) && *v5 == *i;
      if (!v7 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v5 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2172708B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_15:
    v12 = 0;
    return v12 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    while (1)
    {
      sub_217275858(v3, v16);
      sub_217275858(v4, v14);
      v5 = v16[0] == v14[0] && v16[1] == v14[1];
      if (!v5 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v6 = v18;
      v7 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v8 = *(v7 + 104);
      v9 = OUTLINED_FUNCTION_204();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      v12 = v8(&v15, v11, v6, v7);
      sub_2172758B4(v14);
      sub_2172758B4(v16);
      if (v12)
      {
        v3 += 56;
        v4 += 56;
        if (--v2)
        {
          continue;
        }
      }

      return v12 & 1;
    }

    sub_2172758B4(v14);
    sub_2172758B4(v16);
    goto LABEL_15;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_217270A74(uint64_t a1, uint64_t a2)
{
  v7 = OUTLINED_FUNCTION_99_3(a1, a2);
  if (v9)
  {
    if (!v6 || v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_1();
      do
      {
        (v4)(v5, v14);
        v10 = OUTLINED_FUNCTION_196_1();
        v4(v10);
        v11 = v3(v14, v13);
        v2(v13);
        v2(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_62_2();
      }

      while (!v9);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_217270BE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_103_1(a1, a2);
  if (v7)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v4 + 56);
    for (i = (v3 + 56); ; i += 4)
    {
      v7 = *(i - 1) == *(v5 - 1) && *i == *v5;
      if (!v7 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v5 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217270D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = OUTLINED_FUNCTION_93_1(a1, a2);
  if (v16)
  {
    if (v5 && v6 != v7)
    {
      v8 = v6 + 32;
      v9 = v7 + 32;
      while (1)
      {
        sub_217284868();
        sub_217284868();
        if (v29[0])
        {
          if (v29[0] == 1)
          {
            v10 = 0x706F742D79746963;
          }

          else
          {
            v10 = 0xD000000000000010;
          }

          if (v29[0] == 1)
          {
            v11 = 0xE800000000000000;
          }

          else
          {
            v11 = 0x80000002177AA870;
          }
        }

        else
        {
          v10 = 0x616C702D74736F6DLL;
          v11 = 0xEB00000000646579;
        }

        if (v23[0] == 1)
        {
          v12 = 0x706F742D79746963;
        }

        else
        {
          v12 = 0xD000000000000010;
        }

        if (v23[0] == 1)
        {
          v13 = 0xE800000000000000;
        }

        else
        {
          v13 = 0x80000002177AA870;
        }

        if (v23[0])
        {
          v14 = v12;
        }

        else
        {
          v14 = 0x616C702D74736F6DLL;
        }

        if (v23[0])
        {
          v15 = v13;
        }

        else
        {
          v15 = 0xEB00000000646579;
        }

        v16 = v10 == v14 && v11 == v15;
        if (v16)
        {
        }

        else
        {
          v17 = sub_217753058();

          if ((v17 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        if (v31)
        {
          if (!v25 || (v30 == v24 ? (v18 = v31 == v25) : (v18 = 0), !v18 && (sub_217753058() & 1) == 0))
          {
LABEL_56:
            OUTLINED_FUNCTION_224(v23);
            OUTLINED_FUNCTION_224(v29);
            goto LABEL_57;
          }
        }

        else if (v25)
        {
          goto LABEL_56;
        }

        if (v33)
        {
          if (!v27)
          {
            goto LABEL_56;
          }

          v19 = v32 == v26 && v33 == v27;
          if (!v19 && (sub_217753058() & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else if (v27)
        {
          goto LABEL_56;
        }

        v20 = a5(&v34, &v28);
        OUTLINED_FUNCTION_224(v23);
        OUTLINED_FUNCTION_224(v29);
        if (v20)
        {
          v8 += 168;
          v9 += 168;
          OUTLINED_FUNCTION_178();
          if (!v16)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v20 = 1;
  }

  else
  {
LABEL_57:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_2172711A8(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_23_7(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      memcpy(__dst, v2, sizeof(__dst));
      memcpy(v26, v3, sizeof(v26));
      memcpy(v24, v2, sizeof(v24));
      memcpy(v23, v3, sizeof(v23));
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      if ((static CloudOffer.== infix(_:_:)(v24, v23) & 1) == 0)
      {
        break;
      }

      sub_217261FB0(__dst[8], v26[8]);
      v9 = v8;
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v10, v11, v12);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v13, v14, v15);
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      v2 += 72;
      v3 += 72;
      if (!--v4)
      {
        return 1;
      }
    }

    OUTLINED_FUNCTION_58_3();
    sub_2171F0738(v17, v18, v19);
    OUTLINED_FUNCTION_58_3();
    sub_2171F0738(v20, v21, v22);
  }

  return 0;
}

uint64_t sub_217271340(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void *))
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
LABEL_15:
    v15 = 0;
    return v15 & 1;
  }

  if (v4 && a1 != a2)
  {
    v7 = a1 + 32;
    v8 = a2 + 32;
    while (1)
    {
      (a3)(v7, v19);
      v9 = OUTLINED_FUNCTION_196_1();
      a3(v9);
      v10 = v19[0] == v17[0] && v19[1] == v17[1];
      if (!v10 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v12 = v21;
      v11 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v13 = *(v11 + 104);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v15 = v13(&v18, v14, v12, v11);
      a4(v17);
      a4(v19);
      if (v15)
      {
        v7 += 56;
        v8 += 56;
        if (--v4)
        {
          continue;
        }
      }

      return v15 & 1;
    }

    a4(v17);
    a4(v19);
    goto LABEL_15;
  }

  v15 = 1;
  return v15 & 1;
}

void sub_217271500()
{
  OUTLINED_FUNCTION_217_1();
  v5 = OUTLINED_FUNCTION_23_7(v3, v4);
  if (v7 && v2 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767EABC();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v0 += 768;
      v1 += 768;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

uint64_t sub_217271600(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 16);
      if (*(v3 - 16))
      {
        if (!*(v4 - 16))
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 3) != *(v4 - 3))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) == *(v4 - 1))
        {
          v6 = *v4;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return OUTLINED_FUNCTION_140_0();
}

uint64_t sub_217271698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 4)
    {
      v5 = v3[1];
      v21[0] = *v3;
      v21[1] = v5;
      v6 = v3[3];
      v22 = v3[2];
      v23 = v6;
      v17 = v21[0];
      v18 = v5;
      v19 = v22;
      v20 = v6;
      v7 = *i;
      v8 = i[1];
      v9 = i[3];
      v25 = i[2];
      v26 = v9;
      v24[0] = v7;
      v24[1] = v8;
      v13 = v7;
      v14 = v8;
      v15 = v25;
      v16 = v9;
      sub_217283A4C(v21, v12);
      sub_217283A4C(v24, v12);
      v10 = static CloudAudioAnalysis.CloudVocalActivity.== infix(_:_:)(&v17, &v13);
      v27[0] = v13;
      v27[1] = v14;
      v27[2] = v15;
      v27[3] = v16;
      sub_217283AA8(v27);
      v28[0] = v17;
      v28[1] = v18;
      v28[2] = v19;
      v28[3] = v20;
      sub_217283AA8(v28);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217271798(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_140_0();
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

uint64_t sub_2172717F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_217271848()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_2177516D8();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_81();
  v77 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_150();
  v80 = v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43(v79);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v71 - v22;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24838, &qword_217758DC8);
  v24 = OUTLINED_FUNCTION_109_1(v78);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_67_3();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v35 = &v71 - v34;
  v36 = *(v3 + 16);
  if (v36 != *(v1 + 16) || !v36 || v3 == v1)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_70_2(v33);
  v38 = v3 + v37;
  v39 = v1 + v37;
  v71 = (v7 + 32);
  v72 = v35;
  v73 = v23;
  v74 = (v7 + 8);
  v76 = *(v40 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_172_2();
    sub_217284868();
    sub_217284868();
    v41 = *(v79 + 48);
    OUTLINED_FUNCTION_36();
    sub_217284868();
    sub_217284868();
    OUTLINED_FUNCTION_133(v23, 1, v4);
    if (!v44)
    {
      break;
    }

    OUTLINED_FUNCTION_133(&v23[v41], 1, v4);
    if (!v44)
    {
      goto LABEL_29;
    }

    v42 = OUTLINED_FUNCTION_16_0();
    sub_2171F0738(v42, v43, &qword_217758DC0);
LABEL_12:
    v51 = type metadata accessor for CloudVideoArtwork.FileAsset();
    OUTLINED_FUNCTION_113_1(*(v51 + 20));
    if (v54)
    {
      if (!v53)
      {
        goto LABEL_30;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112();
      if (v55)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_113_1(*(v52 + 24));
    if (v58)
    {
      if (!v57)
      {
        goto LABEL_30;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112();
      if (v59)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_113_1(*(v56 + 28));
    if (v61)
    {
      if ((v60 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112();
      if (v62)
      {
        goto LABEL_30;
      }
    }

    sub_217261FB0(*&v35[*(v78 + 28)], *(v30 + *(v78 + 28)));
    v64 = v63;
    sub_2171F0738(v30, &qword_27CB24838, &qword_217758DC8);
    sub_2171F0738(v35, &qword_27CB24838, &qword_217758DC8);
    if (v64)
    {
      v39 += v76;
      v38 += v76;
      if (--v36)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  sub_217284868();
  OUTLINED_FUNCTION_133(&v23[v41], 1, v4);
  if (!v44)
  {
    v45 = &v23[v41];
    v46 = v77;
    (*v71)(v77, v45, v4);
    OUTLINED_FUNCTION_1_6();
    sub_217284690(&qword_280BE7408, 255, v47);
    OUTLINED_FUNCTION_129();
    v75 = sub_217751F08();
    v48 = *v74;
    v49 = v46;
    v23 = v73;
    (*v74)(v49, v4);
    v50 = OUTLINED_FUNCTION_173();
    (v48)(v50);
    v35 = v72;
    sub_2171F0738(v23, &unk_27CB277C0, &qword_217758DC0);
    if ((v75 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  (*v74)(v80, v4);
LABEL_29:
  sub_2171F0738(v23, &qword_27CB24840, &unk_217758DD0);
LABEL_30:
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v65, v66, v67);
  OUTLINED_FUNCTION_58_3();
  sub_2171F0738(v68, v69, v70);
LABEL_31:
  OUTLINED_FUNCTION_13();
}

void sub_217271D10()
{
  OUTLINED_FUNCTION_214();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = v1 + 32;
    v34 = v1 + 32;
    v35 = v0 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_48;
      }

      v6 = v4 + 56 * v3;
      v7 = v5 + 56 * v3;
      if (*v6 != *v7)
      {
        goto LABEL_46;
      }

      v8 = *(v6 + 8);
      v9 = *(v7 + 8);
      v10 = *(v8 + 16);
      if (v10 != *(v9 + 16))
      {
        goto LABEL_46;
      }

      v11 = *(v6 + 16);
      v12 = *(v6 + 24);
      v13 = *(v6 + 32);
      v15 = *(v6 + 40);
      v14 = *(v6 + 48);
      v16 = *(v7 + 16);
      v17 = *(v7 + 24);
      v18 = *(v7 + 32);
      if (v10)
      {
        v19 = v8 == v9;
      }

      else
      {
        v19 = 1;
      }

      v20 = *(v7 + 40);
      v21 = *(v7 + 48);
      if (!v19)
      {
        v22 = (v8 + 32);
        v23 = (v9 + 32);
        while (v10)
        {
          if (*v22 != *v23)
          {
            goto LABEL_46;
          }

          ++v22;
          ++v23;
          if (!--v10)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        __break(1u);
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

LABEL_16:
      v24 = *(v11 + 16);
      if (v24 != *(v16 + 16))
      {
        goto LABEL_46;
      }

      if (v24 && v11 != v16)
      {
        break;
      }

LABEL_22:
      if (v13)
      {
        if (!v18)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v12 != v17)
        {
          LOBYTE(v18) = 1;
        }

        if (v18)
        {
          goto LABEL_46;
        }
      }

      if (v15)
      {
        if (!v20)
        {
          goto LABEL_46;
        }

        v27 = v21;
        v28 = *(v15 + 16);
        if (v28 != *(v20 + 16))
        {
          goto LABEL_46;
        }

        if (v28 && v15 != v20)
        {
          v33 = v14;
          v29 = 0;
          while (1)
          {
            v30 = *(v15 + v29 + 32) == *(v20 + v29 + 32) && *(v15 + v29 + 40) == *(v20 + v29 + 40);
            if (!v30 && (sub_217753058() & 1) == 0)
            {
              goto LABEL_46;
            }

            v29 += 16;
            if (!--v28)
            {
              v21 = v27;
              v14 = v33;
              goto LABEL_44;
            }
          }
        }

        v21 = v27;
      }

      else if (v20)
      {
        goto LABEL_46;
      }

LABEL_44:
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217261FB0(v14, v21);
      v32 = v31;

      if (v32)
      {
        ++v3;
        v5 = v34;
        v4 = v35;
        if (v3 != v2)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    v25 = (v11 + 32);
    v26 = (v16 + 32);
    while (*v25 == *v26)
    {
      ++v25;
      ++v26;
      if (!--v24)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_213();
}

void sub_21727208C()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_61_0(v1, v2);
  if (v12 && v0 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v8 = 0xEB00000000736F6DLL;
      v9 = 0x74612D79626C6F64;
      switch(*v5)
      {
        case 1:
          break;
        case 2:
          v9 = 0x75612D79626C6F64;
          v8 = 0xEB000000006F6964;
          break;
        case 3:
          v8 = 0xE800000000000000;
          v9 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v9 = 0x6C2D7365722D6968;
          v8 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v9 = 0x74732D7973736F6CLL;
          v8 = 0xEC0000006F657265;
          break;
        case 6:
          v9 = 0x2D6C616974617073;
          v8 = 0xED00006F69647561;
          break;
        case 7:
          v8 = 0xE700000000000000;
          v9 = 0x6C616974617073;
          break;
        case 8:
          v9 = 0xD000000000000013;
          v8 = 0x80000002177AA7E0;
          break;
        case 9:
          v8 = 0xE500000000000000;
          v9 = 0x736F6D7461;
          break;
        case 0xA:
          v8 = 0xE800000000000000;
          v9 = 0x646E756F72727573;
          break;
        default:
          v9 = 0xD000000000000014;
          v8 = 0x80000002177AA770;
          break;
      }

      v10 = 0x74612D79626C6F64;
      v11 = 0xEB00000000736F6DLL;
      switch(*v6)
      {
        case 1:
          break;
        case 2:
          v10 = 0x75612D79626C6F64;
          v11 = 0xEB000000006F6964;
          break;
        case 3:
          v11 = 0xE800000000000000;
          v10 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v10 = 0x6C2D7365722D6968;
          v11 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v10 = 0x74732D7973736F6CLL;
          v11 = 0xEC0000006F657265;
          break;
        case 6:
          v10 = 0x2D6C616974617073;
          v11 = 0xED00006F69647561;
          break;
        case 7:
          v11 = 0xE700000000000000;
          v10 = 0x6C616974617073;
          break;
        case 8:
          v10 = 0xD000000000000013;
          v11 = 0x80000002177AA7E0;
          break;
        case 9:
          v11 = 0xE500000000000000;
          v10 = 0x736F6D7461;
          break;
        case 0xA:
          v11 = 0xE800000000000000;
          v10 = 0x646E756F72727573;
          break;
        default:
          v10 = 0xD000000000000014;
          v11 = 0x80000002177AA770;
          break;
      }

      v12 = v9 == v10 && v8 == v11;
      if (v12)
      {
      }

      else
      {
        v13 = sub_217753058();

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

  OUTLINED_FUNCTION_13();
}

void sub_2172723E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v27 = OUTLINED_FUNCTION_109_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_67_3();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v38 = &a9 - v37;
  v39 = *(v25 + 16);
  if (v39 == *(v23 + 16) && v39 && v25 != v23)
  {
    OUTLINED_FUNCTION_70_2(v36);
    v41 = v25 + v40;
    v42 = v23 + v40;
    v44 = *(v43 + 72);
    while (1)
    {
      sub_217284868();
      sub_217284868();
      static CloudPreviewAsset.== infix(_:_:)();
      if ((v45 & 1) == 0)
      {
        break;
      }

      sub_217261FB0(*&v38[*(v26 + 28)], *(v33 + *(v26 + 28)));
      v47 = v46;
      v48 = OUTLINED_FUNCTION_135();
      sub_2171F0738(v48, v49, &qword_217759030);
      v50 = OUTLINED_FUNCTION_148();
      sub_2171F0738(v50, v51, &qword_217759030);
      if (v47)
      {
        v42 += v44;
        v41 += v44;
        OUTLINED_FUNCTION_178();
        if (!v52)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_2171F0738(v33, &qword_27CB24A68, &qword_217759030);
    v53 = OUTLINED_FUNCTION_132();
    sub_2171F0738(v53, v54, &qword_217759030);
  }

LABEL_12:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172725A8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v7 = OUTLINED_FUNCTION_61_0(v5, v6);
  if (v9)
  {
    if (!v4 || v7 == v8)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      sub_217275AA0(v2, v232);
      sub_217275AA0(v3, v231);
      v9 = v232[0] == v231[0] && v232[1] == v231[1];
      if (!v9 && (sub_217753058() & 1) == 0)
      {
LABEL_44:
        sub_217276358(v231);
        sub_217276358(v232);
        return 0;
      }

      sub_2172846D8(v233, __src);
      if (v225)
      {
        v11 = *(*__src + 16);
        v10 = *(*__src + 24);
        sub_217751DE8();
      }

      else
      {
        v12 = OUTLINED_FUNCTION_130();
        memcpy(v12, __src, 0x2D9uLL);
        v11 = *v229;
        v10 = *&v229[8];
        sub_217751DE8();
        v13 = OUTLINED_FUNCTION_130();
        sub_217284734(v13);
      }

      OUTLINED_FUNCTION_215();
      if (v225)
      {
        v15 = *(*__src + 16);
        v14 = *(*__src + 24);
        sub_217751DE8();
      }

      else
      {
        v16 = OUTLINED_FUNCTION_130();
        memcpy(v16, __src, 0x2D9uLL);
        v15 = *v229;
        v14 = *&v229[8];
        sub_217751DE8();
        v17 = OUTLINED_FUNCTION_130();
        sub_217284734(v17);
      }

      if (v11 == v15 && v10 == v14)
      {
      }

      else
      {
        v19 = sub_217753058();

        if ((v19 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      sub_2172846D8(v233, __src);
      if (v225)
      {
        v20 = *(*__src + 32);
        v21 = *(v20 + 16);

        os_unfair_lock_lock(v21);
        OUTLINED_FUNCTION_198();
        OUTLINED_FUNCTION_138();
        v22 = OUTLINED_FUNCTION_198();
        sub_217284788(v22, v23 + 360);
        if (v230)
        {
          v220 = *&v229[16];
          v221 = *v229;
          v218 = *&v229[48];
          v219 = *&v229[32];
          v216 = *&v229[80];
          v217 = *&v229[64];
          v214 = *&v229[112];
          v215 = *&v229[96];
          v212 = *&v229[144];
          v213 = *&v229[128];
          v209 = *&v229[176];
          v210 = *&v229[160];
          v206 = *&v229[208];
          v207 = *&v229[192];
          v203 = *&v229[240];
          v204 = *&v229[224];
          v201 = *&v229[272];
          v202 = *&v229[256];
          v199 = *&v229[304];
          v200 = *&v229[288];
          v197 = *&v229[336];
          v198 = *&v229[320];
          OUTLINED_FUNCTION_54_2(&v229[113]);
          v196 = *(v24 + 712);
          OUTLINED_FUNCTION_100_1(&v229[145]);
          v194 = *(v25 + 744);
          v195 = v26;
          OUTLINED_FUNCTION_54_2(&v229[177]);
          v192 = *(v27 + 776);
          v193 = v28;
          OUTLINED_FUNCTION_100_1(&v229[209]);
          v190 = *(v29 + 808);
          v191 = v30;
          OUTLINED_FUNCTION_54_2(&v229[241]);
          v188 = *(v31 + 840);
          v189 = v32;
          v211 = *&v229[704];
          v208 = *&v229[712];
          v205 = *&v229[720];
          v33 = v229[728];
          OUTLINED_FUNCTION_100_1(&v229[273]);
          v186 = *(v34 + 872);
          v187 = v35;
          OUTLINED_FUNCTION_54_2(&v229[305]);
          v184 = *(v36 + 904);
          v185 = v37;
          OUTLINED_FUNCTION_100_1(&v229[337]);
          v182 = *(v38 + 936);
          v183 = v39;
          OUTLINED_FUNCTION_54_2(&v229[369]);
          v180 = *(v40 + 968);
          v181 = v41;
          OUTLINED_FUNCTION_100_1(&v229[401]);
          v178 = *(v42 + 1000);
          v179 = v43;
          v175 = *&v229[688];
          v176 = *&v229[672];
          v177 = v44;
        }

        else
        {
          v45 = OUTLINED_FUNCTION_130();
          sub_2172847E4(v45);
          v211 = 0;
          v208 = 0;
          v205 = 0;
          v33 = 0;
          v221 = 0u;
          v220 = 0u;
          v219 = 0u;
          v218 = 0u;
          v217 = 0u;
          v216 = 0u;
          v215 = 0u;
          v214 = 0u;
          v213 = 0u;
          v212 = 0u;
          v210 = 0u;
          v209 = 0u;
          v207 = 0u;
          v206 = 0u;
          v204 = 0u;
          v203 = 0u;
          v202 = 0u;
          v201 = 0u;
          v200 = 0u;
          v199 = 0u;
          v198 = 0u;
          v197 = 0u;
          v196 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v178 = 0u;
          v179 = 0u;
          v176 = 0u;
          v177 = 0u;
          v175 = 0u;
        }

        os_unfair_lock_unlock(*(v20 + 16));
      }

      else
      {
        v220 = *&__src[16];
        v221 = *__src;
        v218 = *&__src[48];
        v219 = *&__src[32];
        v216 = *&__src[80];
        v217 = *&__src[64];
        v214 = *&__src[112];
        v215 = *&__src[96];
        v212 = *&__src[144];
        v213 = *&__src[128];
        v209 = *&__src[176];
        v210 = *&__src[160];
        v206 = *&__src[208];
        v207 = *&__src[192];
        v203 = *&__src[240];
        v204 = *&__src[224];
        v201 = *&__src[272];
        v202 = *&__src[256];
        v199 = *&__src[304];
        v200 = *&__src[288];
        v197 = *&__src[336];
        v198 = *&__src[320];
        v196 = *&__src[352];
        v194 = *&__src[384];
        v195 = *&__src[368];
        v192 = *&__src[416];
        v193 = *&__src[400];
        v190 = *&__src[448];
        v191 = *&__src[432];
        v188 = *&__src[480];
        v189 = *&__src[464];
        v211 = *&__src[704];
        v208 = *&__src[712];
        v205 = *&__src[720];
        v33 = __src[728];
        v186 = *&__src[512];
        v187 = *&__src[496];
        v184 = *&__src[544];
        v185 = *&__src[528];
        v182 = *&__src[576];
        v183 = *&__src[560];
        v180 = *&__src[608];
        v181 = *&__src[592];
        v178 = *&__src[640];
        v179 = *&__src[624];
        v175 = *&__src[688];
        v176 = *&__src[672];
        v177 = *&__src[656];
      }

      OUTLINED_FUNCTION_215();
      if (v225)
      {
        v46 = *(*__src + 32);
        v47 = *(v46 + 16);

        os_unfair_lock_lock(v47);
        OUTLINED_FUNCTION_198();
        OUTLINED_FUNCTION_138();
        v48 = OUTLINED_FUNCTION_198();
        sub_217284788(v48, v49 + 360);
        if (v230)
        {
          OUTLINED_FUNCTION_54_2(&v226[34] + 1);
          v160 = v51;
          v161 = *(v50 + 360);
          OUTLINED_FUNCTION_54_2(&v226[36] + 1);
          v158 = v53;
          v159 = *(v52 + 392);
          OUTLINED_FUNCTION_54_2(&v226[38] + 1);
          v156 = v55;
          v157 = *(v54 + 424);
          OUTLINED_FUNCTION_54_2(&v226[40] + 1);
          v154 = v57;
          v155 = *(v56 + 456);
          OUTLINED_FUNCTION_54_2(&v226[42] + 1);
          v152 = v59;
          v153 = *(v58 + 488);
          OUTLINED_FUNCTION_54_2(&v226[44] + 1);
          v150 = v61;
          v151 = *(v60 + 520);
          OUTLINED_FUNCTION_54_2(v227);
          v173 = v63;
          v174 = *(v62 + 552);
          OUTLINED_FUNCTION_54_2(v228);
          v171 = v65;
          v172 = *(v64 + 584);
          OUTLINED_FUNCTION_54_2(&v229[17]);
          v169 = v67;
          v170 = *(v66 + 616);
          OUTLINED_FUNCTION_54_2(&v229[49]);
          v167 = v69;
          v168 = *(v68 + 648);
          OUTLINED_FUNCTION_54_2(&v229[81]);
          v165 = v71;
          v166 = *(v70 + 680);
          OUTLINED_FUNCTION_54_2(&v229[113]);
          v163 = v73;
          v164 = *(v72 + 712);
          OUTLINED_FUNCTION_54_2(&v229[145]);
          v162 = *(v74 + 744);
          OUTLINED_FUNCTION_100_1(&v229[177]);
          v148 = *(v75 + 776);
          v149 = v76;
          OUTLINED_FUNCTION_54_2(&v229[209]);
          v146 = *(v77 + 808);
          v147 = v78;
          OUTLINED_FUNCTION_100_1(&v229[241]);
          v144 = *(v79 + 840);
          v145 = v80;
          v81 = *&v229[704];
          v82 = *&v229[712];
          v83 = *&v229[720];
          v84 = v229[728];
          OUTLINED_FUNCTION_54_2(&v229[273]);
          v142 = *(v85 + 872);
          v143 = v86;
          OUTLINED_FUNCTION_100_1(&v229[305]);
          v140 = *(v87 + 904);
          v141 = v88;
          OUTLINED_FUNCTION_54_2(&v229[337]);
          v138 = *(v89 + 936);
          v139 = v90;
          OUTLINED_FUNCTION_100_1(&v229[369]);
          v136 = *(v91 + 968);
          v137 = v92;
          OUTLINED_FUNCTION_54_2(&v229[401]);
          v134 = *(v93 + 1000);
          v135 = v94;
          v131 = *&v229[688];
          v132 = *&v229[672];
          v133 = v95;
        }

        else
        {
          v127 = OUTLINED_FUNCTION_130();
          sub_2172847E4(v127);
          v84 = 0;
          v83 = 0;
          v82 = 0;
          v81 = 0;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v162 = 0u;
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v131 = 0u;
        }

        os_unfair_lock_unlock(*(v46 + 16));

        v96 = v160;
        v97 = v161;
        v98 = v158;
        v99 = v159;
        v100 = v156;
        v101 = v157;
        v102 = v154;
        v103 = v155;
        v104 = v152;
        v105 = v153;
        v106 = v150;
        v107 = v151;
        v110 = v148;
        v108 = v149;
        v112 = v146;
        v109 = v147;
        v114 = v144;
        v111 = v145;
        v116 = v142;
        v113 = v143;
        v118 = v140;
        v115 = v141;
        v120 = v138;
        v117 = v139;
        v122 = v136;
        v119 = v137;
        v124 = v134;
        v121 = v135;
        v126 = v132;
        v123 = v133;
        v125 = v131;
      }

      else
      {
        v96 = *&__src[16];
        v97 = *__src;
        v98 = *&__src[48];
        v99 = *&__src[32];
        v100 = *&__src[80];
        v101 = *&__src[64];
        v102 = *&__src[112];
        v103 = *&__src[96];
        v104 = *&__src[144];
        v105 = *&__src[128];
        v106 = *&__src[176];
        v107 = *&__src[160];
        v173 = *&__src[208];
        v174 = *&__src[192];
        v171 = *&__src[240];
        v172 = *&__src[224];
        v169 = *&__src[272];
        v170 = *&__src[256];
        v167 = *&__src[304];
        v168 = *&__src[288];
        v165 = *&__src[336];
        v166 = *&__src[320];
        v163 = *&__src[368];
        v164 = *&__src[352];
        v108 = *&__src[400];
        v162 = *&__src[384];
        v109 = *&__src[432];
        v110 = *&__src[416];
        v111 = *&__src[464];
        v112 = *&__src[448];
        v113 = *&__src[496];
        v114 = *&__src[480];
        v81 = *&__src[704];
        v82 = *&__src[712];
        v83 = *&__src[720];
        v84 = __src[728];
        v115 = *&__src[528];
        v116 = *&__src[512];
        v117 = *&__src[560];
        v118 = *&__src[544];
        v119 = *&__src[592];
        v120 = *&__src[576];
        v121 = *&__src[624];
        v122 = *&__src[608];
        v123 = *&__src[656];
        v124 = *&__src[640];
        v125 = *&__src[688];
        v126 = *&__src[672];
      }

      *&__src[16] = v220;
      *__src = v221;
      *&__src[48] = v218;
      *&__src[32] = v219;
      *&__src[80] = v216;
      *&__src[64] = v217;
      *&__src[112] = v214;
      *&__src[96] = v215;
      *&__src[144] = v212;
      *&__src[128] = v213;
      *&__src[176] = v209;
      *&__src[160] = v210;
      *&__src[208] = v206;
      *&__src[192] = v207;
      *&__src[240] = v203;
      *&__src[224] = v204;
      *&__src[272] = v201;
      *&__src[256] = v202;
      *&__src[304] = v199;
      *&__src[288] = v200;
      *&__src[336] = v197;
      *&__src[320] = v198;
      *&__src[368] = v195;
      *&__src[352] = v196;
      *&__src[400] = v193;
      *&__src[384] = v194;
      *&__src[432] = v191;
      *&__src[416] = v192;
      *&__src[464] = v189;
      *&__src[448] = v190;
      *&__src[496] = v187;
      *&__src[480] = v188;
      *&__src[528] = v185;
      *&__src[512] = v186;
      *&__src[560] = v183;
      *&__src[544] = v184;
      *&__src[592] = v181;
      *&__src[576] = v182;
      *&__src[624] = v179;
      *&__src[608] = v180;
      *&__src[656] = v177;
      *&__src[640] = v178;
      *&__src[688] = v175;
      *&__src[672] = v176;
      v226[1] = v96;
      v226[0] = v97;
      v226[3] = v98;
      v226[2] = v99;
      v226[5] = v100;
      v226[4] = v101;
      v226[7] = v102;
      v226[6] = v103;
      v226[9] = v104;
      v226[8] = v105;
      v226[11] = v106;
      v226[10] = v107;
      *&__src[704] = v211;
      *&__src[712] = v208;
      *&__src[720] = v205;
      __src[728] = v33;
      v226[13] = v173;
      v226[12] = v174;
      v226[15] = v171;
      v226[14] = v172;
      v226[17] = v169;
      v226[16] = v170;
      v226[19] = v167;
      v226[18] = v168;
      v226[21] = v165;
      v226[20] = v166;
      v226[23] = v163;
      v226[22] = v164;
      v226[25] = v108;
      v226[24] = v162;
      v226[27] = v109;
      v226[26] = v110;
      v226[29] = v111;
      v226[28] = v112;
      v226[31] = v113;
      v226[30] = v114;
      v226[33] = v115;
      v226[32] = v116;
      v226[35] = v117;
      v226[34] = v118;
      v226[37] = v119;
      v226[36] = v120;
      v226[39] = v121;
      v226[38] = v122;
      v226[41] = v123;
      v226[40] = v124;
      v226[43] = v125;
      v226[42] = v126;
      *&v226[44] = v81;
      *(&v226[44] + 1) = v82;
      *&v226[45] = v83;
      BYTE8(v226[45]) = v84;
      if (*(&v221 + 1))
      {
        sub_217284868();
        if (*(&v226[0] + 1))
        {
          memcpy(__dst, v229, 0x2D9uLL);
          memcpy(v222, v226, 0x2D9uLL);
          v128 = sub_2173E2640(__dst, v222);
          sub_217284734(v222);
          sub_217284734(__dst);
          sub_2171F0738(__src, &qword_27CB24AE0, &unk_2177590B0);
          sub_217276358(v231);
          sub_217276358(v232);
          if (!v128)
          {
            return 0;
          }

          goto LABEL_42;
        }

        v129 = OUTLINED_FUNCTION_130();
        sub_217284734(v129);
      }

      sub_2171F0738(__src, &qword_27CB24AD8, &qword_2177590A8);
      sub_217276358(v231);
      sub_217276358(v232);
LABEL_42:
      v3 += 752;
      v2 += 752;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217273708(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_61_0(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      memcpy(__dst, v2, 0x91uLL);
      memcpy(v15, v3, 0x91uLL);
      memcpy(v13, v2, sizeof(v13));
      memcpy(__src, v3, sizeof(__src));
      sub_217284914(__dst, v11);
      sub_217284914(v15, v11);
      sub_217284914(__dst, v11);
      sub_217284914(v15, v11);
      static PlayParameters.== infix(_:_:)(v13, __src);
      v9 = v8;
      memcpy(v16, __src, sizeof(v16));
      sub_2172848C0(v16);
      memcpy(v17, v13, sizeof(v17));
      sub_2172848C0(v17);
      sub_217284970(v15);
      sub_217284970(__dst);
      if ((v9 & 1) == 0)
      {
        break;
      }

      if (LOBYTE(__dst[16]))
      {
        if ((LOBYTE(v15[16]) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((LOBYTE(v15[16]) & 1) != 0 || __dst[15] != v15[15])
      {
        return 0;
      }

      if (LOBYTE(__dst[18]))
      {
        if ((LOBYTE(v15[18]) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((LOBYTE(v15[18]) & 1) != 0 || __dst[17] != v15[17])
      {
        return 0;
      }

      v3 += 152;
      v2 += 152;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_217273884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_2172830F8(v3, v14);
        sub_2172830F8(v4, v13);
        v5 = v15;
        v6 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v7 = *(v6 + 32);
        v8 = OUTLINED_FUNCTION_204();
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
        v11 = v7(v13, v10, v5, v6);
        sub_217283154(v13);
        sub_217283154(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2172739A0(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_61_0(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      return 1;
    }

    OUTLINED_FUNCTION_90_0();
    while (1)
    {
      memcpy(__dst, v2, sizeof(__dst));
      memcpy(v12, v2, sizeof(v12));
      memcpy(v14, v3, sizeof(v14));
      memcpy(__src, v3, sizeof(__src));
      sub_21728399C(__dst, v10);
      sub_21728399C(v14, v10);
      v8 = static MusicAPI.Error.== infix(_:_:)(v12, __src);
      memcpy(v15, __src, sizeof(v15));
      sub_2172839F8(v15);
      memcpy(v16, v12, sizeof(v16));
      sub_2172839F8(v16);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v2 += 112;
      v3 += 112;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_217273AA4()
{
  OUTLINED_FUNCTION_97_0();
  v3 = OUTLINED_FUNCTION_93_1(v1, v2);
  if (v14 && v0 && v3 != v4)
  {
    v5 = (v3 + 72);
    v6 = (v4 + 40);
    do
    {
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *v5;
      v17 = *(v5 - 1);
      v10 = v6[1];
      v11 = v6[2];
      v13 = v6[3];
      v12 = v6[4];
      v14 = *(v5 - 5) == *(v6 - 1) && *(v5 - 4) == *v6;
      if (!v14 && (sub_217753058() & 1) == 0)
      {
        break;
      }

      v15 = v7 == v10 && v8 == v11;
      if (!v15 && (OUTLINED_FUNCTION_183() & 1) == 0)
      {
        break;
      }

      if (v9)
      {
        if (!v12)
        {
          break;
        }

        v16 = v17 == v13 && v9 == v12;
        if (!v16 && (OUTLINED_FUNCTION_216() & 1) == 0)
        {
          break;
        }
      }

      else if (v12)
      {
        break;
      }

      v5 += 6;
      v6 += 6;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_95_0();
}