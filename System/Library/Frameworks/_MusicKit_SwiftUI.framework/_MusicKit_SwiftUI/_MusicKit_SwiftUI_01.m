uint64_t sub_216663160(unsigned __int8 a1)
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](a1);
  return sub_21666D83C();
}

unint64_t sub_2166631A8(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x44496D657469;
      break;
    case 3:
      result = 0x7461696C69666661;
      break;
    case 4:
      result = 0x6E676961706D6163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2166632DC()
{
  v1 = *v0;
  sub_21666D7FC();
  MEMORY[0x21CE95D60](v1);
  return sub_21666D83C();
}

uint64_t sub_216663328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216662E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216663370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216663120();
  *a1 = result;
  return result;
}

uint64_t sub_216663398(uint64_t a1)
{
  v2 = sub_216663C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2166633D4(uint64_t a1)
{
  v2 = sub_216663C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MusicSubscriptionOffer.Options.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v43 = a1[6];
  v48 = a1[7];
  v39 = a1[8];
  v50 = a1[9];
  v36 = a1[10];
  v33 = a1[12];
  v37 = a1[13];
  v30 = a1[14];
  v35 = a1[15];
  v29 = a1[16];
  v32 = a1[17];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v41 = a1[11];
  v42 = a2[6];
  v47 = a2[7];
  v10 = a2[9];
  v49 = a2[8];
  v11 = a2[10];
  v40 = a2[11];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v38 = a2[13];
  v44 = a2[12];
  v45 = a2[14];
  v34 = a2[15];
  v46 = a2[16];
  v31 = a2[17];
  if (!v12 && (sub_21666D79C() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v6 && v4 == v7;
  if (!v13 && (sub_21666D79C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v3 == v8 && v5 == v9;
    if (!v14 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v48)
  {
    v16 = v49;
    v15 = v50;
    if (!v47)
    {
      return 0;
    }

    v17 = v11;
    v18 = v10;
    v19 = v43 == v42 && v48 == v47;
    if (!v19 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = v11;
    v16 = v49;
    v15 = v50;
    v18 = v10;
    if (v47)
    {
      return 0;
    }
  }

  if (v15)
  {
    v20 = v46;
    v22 = v44;
    v21 = v45;
    if (!v18)
    {
      return 0;
    }

    v23 = v39 == v16 && v15 == v18;
    if (!v23 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v20 = v46;
    v22 = v44;
    v21 = v45;
    if (v18)
    {
      return 0;
    }
  }

  if (v41)
  {
    if (!v40)
    {
      return 0;
    }

    v24 = v36 == v17 && v41 == v40;
    if (!v24 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    v25 = v33 == v22 && v37 == v38;
    if (!v25 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  if (v35)
  {
    if (!v34)
    {
      return 0;
    }

    v26 = v30 == v21 && v35 == v34;
    if (!v26 && (sub_21666D79C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (v32)
  {
    if (v31)
    {
      v27 = v29 == v20 && v32 == v31;
      if (v27 || (sub_21666D79C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

uint64_t MusicSubscriptionOffer.Options.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v8 = v0[9];
  v12 = v0[6];
  v13 = v0[8];
  v9 = v0[13];
  v14 = v0[10];
  v15 = v0[12];
  v10 = v0[15];
  v16 = v0[14];
  v17 = v0[16];
  v18 = v0[11];
  v19 = v0[17];
  sub_21666D47C();
  sub_21666D47C();
  if (v5)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  if (v18)
  {
    OUTLINED_FUNCTION_23_0();
    sub_21666D47C();
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
    if (v9)
    {
LABEL_12:
      OUTLINED_FUNCTION_23_0();
      sub_21666D47C();
      if (v10)
      {
        goto LABEL_13;
      }

LABEL_19:
      OUTLINED_FUNCTION_22_0();
      if (v19)
      {
        goto LABEL_14;
      }

      return OUTLINED_FUNCTION_22_0();
    }
  }

  OUTLINED_FUNCTION_22_0();
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_13:
  OUTLINED_FUNCTION_23_0();
  sub_21666D47C();
  if (!v19)
  {
    return OUTLINED_FUNCTION_22_0();
  }

LABEL_14:
  OUTLINED_FUNCTION_23_0();

  return sub_21666D47C();
}

uint64_t MusicSubscriptionOffer.Options.hashValue.getter()
{
  sub_21666D7FC();
  MusicSubscriptionOffer.Options.hash(into:)();
  return sub_21666D83C();
}

uint64_t sub_2166638F8()
{
  sub_21666D7FC();
  MusicSubscriptionOffer.Options.hash(into:)();
  return sub_21666D83C();
}

uint64_t MusicSubscriptionOffer.Options.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB36E8, &qword_21666FAC0);
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v40 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v53 = v1[2];
  v54 = v13;
  v14 = v1[4];
  v51 = v1[5];
  v52 = v14;
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[8];
  v47 = v1[9];
  v48 = v16;
  v18 = v1[10];
  v45 = v1[11];
  v46 = v17;
  v19 = v1[12];
  v43 = v1[13];
  v44 = v18;
  v20 = v1[15];
  v40 = v1[14];
  v41 = v20;
  v42 = v19;
  v21 = v1[17];
  v49 = v1[16];
  v50 = v15;
  v22 = a1[3];
  v23 = a1[4];
  v24 = a1;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v24, v22);
  sub_216663C04();

  v27 = v10;
  sub_21666D85C();
  v56 = v11;
  v57 = v12;
  v58 = 0;
  sub_216663C58();
  OUTLINED_FUNCTION_18_0();
  v28 = v55;
  sub_21666D77C();
  if (v28)
  {
  }

  else
  {
    v30 = v51;
    v29 = v52;
    v55 = v21;
    v32 = v49;
    v31 = v50;

    v56 = v53;
    v57 = v54;
    v58 = 1;
    sub_216663CAC();

    OUTLINED_FUNCTION_18_0();
    sub_21666D77C();

    v56 = v29;
    v57 = v30;
    v58 = 2;
    sub_216663D00();
    OUTLINED_FUNCTION_18_0();
    sub_21666D76C();
    OUTLINED_FUNCTION_16_1(3);
    OUTLINED_FUNCTION_8_1(v31, v48, v34);
    OUTLINED_FUNCTION_16_1(4);
    OUTLINED_FUNCTION_8_1(v46, v47, v35);
    OUTLINED_FUNCTION_16_1(5);
    OUTLINED_FUNCTION_8_1(v44, v45, v36);
    OUTLINED_FUNCTION_16_1(6);
    OUTLINED_FUNCTION_8_1(v42, v43, v37);
    OUTLINED_FUNCTION_16_1(7);
    OUTLINED_FUNCTION_8_1(v40, v41, v38);
    OUTLINED_FUNCTION_16_1(8);
    OUTLINED_FUNCTION_8_1(v32, v55, v39);
  }

  return (*(v6 + 8))(v27, v26);
}

unint64_t sub_216663C04()
{
  result = qword_27CAB36F0;
  if (!qword_27CAB36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB36F0);
  }

  return result;
}

unint64_t sub_216663C58()
{
  result = qword_27CAB36F8;
  if (!qword_27CAB36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB36F8);
  }

  return result;
}

unint64_t sub_216663CAC()
{
  result = qword_27CAB3700;
  if (!qword_27CAB3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3700);
  }

  return result;
}

unint64_t sub_216663D00()
{
  result = qword_27CAB3708;
  if (!qword_27CAB3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3708);
  }

  return result;
}

uint64_t MusicSubscriptionOffer.Options.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3710, &qword_21666FAC8);
  v5 = OUTLINED_FUNCTION_0_2(v36);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_216663C04();
  sub_21666D84C();
  if (v2)
  {
    OUTLINED_FUNCTION_0_7();
    __swift_destroy_boxed_opaque_existential_0(a1);
    strcpy(v44, "sdkSubscribe");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    v45 = 1852403562;
    v46 = 0xE400000000000000;
    v47 = 0;
    v48 = 0;
    v49 = v2;
    v50 = v2;
    v51 = v10;
    v52 = v11;
    OUTLINED_FUNCTION_15_1();
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v12 = a2;
    sub_2166641FC();
    sub_21666D72C();
    v34 = v44[1];
    v35 = v44[0];

    sub_216664250();
    OUTLINED_FUNCTION_21_1();
    sub_21666D72C();
    v32 = v44[0];
    v33 = v44[1];

    LOBYTE(v43[0]) = 2;
    sub_2166642A4();
    OUTLINED_FUNCTION_21_1();
    sub_21666D71C();
    v14 = v44[0];
    v15 = v44[1];
    v16 = OUTLINED_FUNCTION_11_1(3);
    v30 = v17;
    v31 = v16;
    v28 = OUTLINED_FUNCTION_11_1(4);
    v29 = v18;
    v39 = OUTLINED_FUNCTION_11_1(5);
    v40 = v19;
    v37 = OUTLINED_FUNCTION_11_1(6);
    v38 = v20;
    v41 = OUTLINED_FUNCTION_11_1(7);
    v42 = v21;
    v55 = 8;
    v27 = sub_21666D70C();
    v23 = v22;
    v24 = *(v7 + 8);
    v25 = OUTLINED_FUNCTION_5_2();
    v26(v25);
    v43[0] = v35;
    v43[1] = v34;
    v43[2] = v32;
    v43[3] = v33;
    v43[4] = v14;
    v43[5] = v15;
    v43[6] = v31;
    v43[7] = v30;
    v43[8] = v28;
    v43[9] = v29;
    v43[10] = v39;
    v43[11] = v40;
    v43[12] = v37;
    v43[13] = v38;
    v43[14] = v41;
    v43[15] = v42;
    v43[16] = v27;
    v43[17] = v23;
    memcpy(v12, v43, 0x90uLL);
    sub_216658704(v43, v44);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v44[0] = v35;
    v44[1] = v34;
    v45 = v32;
    v46 = v33;
    v47 = v14;
    v48 = v15;
    v49 = v31;
    v50 = v30;
    v51 = v28;
    v52 = v29;
    OUTLINED_FUNCTION_15_1();
    v53 = v27;
    v54 = v23;
  }

  return sub_21665F084(v44);
}

unint64_t sub_2166641FC()
{
  result = qword_27CAB3718;
  if (!qword_27CAB3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3718);
  }

  return result;
}

unint64_t sub_216664250()
{
  result = qword_27CAB3720;
  if (!qword_27CAB3720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3720);
  }

  return result;
}

unint64_t sub_2166642A4()
{
  result = qword_27CAB3728;
  if (!qword_27CAB3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3728);
  }

  return result;
}

uint64_t MusicSubscriptionOffer.Options.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[13];
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[16];
  v17 = v0[17];
  v52 = *v0;
  v53 = v2;
  v54 = v4;
  v55 = v3;
  v41 = v7;
  v56 = v5;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  v42 = v9;
  v43 = v11;
  v60 = v9;
  v61 = v10;
  v19 = v10;
  v62 = v11;
  v63 = v12;
  v44 = v13;
  v45 = v12;
  v64 = v13;
  v65 = v14;
  v46 = v14;
  v47 = v15;
  v66 = v16;
  v67 = v15;
  v68 = v18;
  v69 = v17;
  v48 = v17;
  if (qword_27CAB2F10 != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  memcpy(__dst, &qword_27CAB3658, sizeof(__dst));
  memcpy(__src, &qword_27CAB3658, sizeof(__src));
  v20 = static MusicSubscriptionOffer.Options.== infix(_:_:)(&v52, __src);
  memcpy(v71, __src, 0x90uLL);
  sub_216658704(__dst, &v49);
  sub_21665F084(v71);
  if (v20)
  {
    return 0x746C75616665642ELL;
  }

  v40 = v16;
  v22 = 0xE000000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  if (v1 == 0x63736275536B6473 && v2 == 0xEC00000065626972)
  {
    v24 = 0;
  }

  else
  {
    if ((sub_21666D79C() & 1) == 0)
    {
      __src[0] = 0x203A6E6F69746361;
      __src[1] = 0xE800000000000000;
      if (sub_21666D79C())
      {
        v26 = 0xEA00000000006562;
        v27 = 0x697263736275732ELL;
      }

      else
      {
        OUTLINED_FUNCTION_26();
        v49 = v28;
        v50 = 0xE800000000000000;
        MEMORY[0x21CE959E0](v1, v2);
        MEMORY[0x21CE959E0](10530, 0xE200000000000000);
        v27 = v49;
        v26 = v50;
      }

      v25 = v18;
      MEMORY[0x21CE959E0](v27, v26);

      MEMORY[0x21CE959E0](__src[0], __src[1]);

      v22 = v53;
      v24 = v52 & 0xFFFFFFFFFFFFLL;
      goto LABEL_17;
    }

    v24 = 0;
    v22 = 0xE000000000000000;
  }

  v25 = v18;
LABEL_17:
  if ((v22 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v29 = v24;
  }

  if (v29)
  {
    MEMORY[0x21CE959E0](8236, 0xE200000000000000);
  }

  OUTLINED_FUNCTION_3_2();
  sub_21666D62C();

  OUTLINED_FUNCTION_6_1();
  __src[0] = 0xD000000000000013;
  __src[1] = v30;
  v49 = v4;
  v50 = v3;
  v31 = MusicSubscriptionOffer.MessageIdentifier.description.getter();
  MEMORY[0x21CE959E0](v31);

  MEMORY[0x21CE959E0](__src[0], __src[1]);

  if (v6)
  {
    __src[0] = 0x44496D657469202CLL;
    __src[1] = 0xEA0000000000203ALL;
    v32 = sub_21666D2EC();
    MEMORY[0x21CE959E0](v32);

    MEMORY[0x21CE959E0](__src[0], __src[1]);
  }

  if (v8)
  {
    OUTLINED_FUNCTION_3_2();
    sub_21666D62C();

    OUTLINED_FUNCTION_6_1();
    __src[0] = 0xD000000000000012;
    __src[1] = v33;
    MEMORY[0x21CE959E0](v41, v8);
    MEMORY[0x21CE959E0](__src[0], __src[1]);
  }

  if (v19)
  {
    OUTLINED_FUNCTION_3_2();
    sub_21666D62C();

    OUTLINED_FUNCTION_6_1();
    __src[0] = 0xD000000000000011;
    __src[1] = v34;
    MEMORY[0x21CE959E0](v42, v19);
    OUTLINED_FUNCTION_12_1();
  }

  if (v45)
  {
    OUTLINED_FUNCTION_3_2();
    sub_21666D62C();

    OUTLINED_FUNCTION_6_1();
    __src[0] = 0xD000000000000017;
    __src[1] = v35;
    MEMORY[0x21CE959E0](v43, v45);
    OUTLINED_FUNCTION_12_1();
  }

  if (v46)
  {
    OUTLINED_FUNCTION_3_2();
    sub_21666D62C();

    OUTLINED_FUNCTION_6_1();
    __src[0] = 0xD000000000000017;
    __src[1] = v36;
    MEMORY[0x21CE959E0](v44, v46);
    OUTLINED_FUNCTION_12_1();
  }

  if (v47)
  {
    OUTLINED_FUNCTION_3_2();
    sub_21666D62C();

    OUTLINED_FUNCTION_6_1();
    __src[0] = 0xD000000000000017;
    __src[1] = v37;
    MEMORY[0x21CE959E0](v40, v47);
    OUTLINED_FUNCTION_12_1();
  }

  if (v48)
  {
    OUTLINED_FUNCTION_3_2();
    sub_21666D62C();

    OUTLINED_FUNCTION_6_1();
    __src[0] = 0xD000000000000021;
    __src[1] = v38;
    MEMORY[0x21CE959E0](v25, v48);
    OUTLINED_FUNCTION_12_1();
  }

  OUTLINED_FUNCTION_3_2();
  sub_21666D62C();

  OUTLINED_FUNCTION_6_1();
  __src[0] = 0xD00000000000001FLL;
  __src[1] = v39;
  MEMORY[0x21CE959E0](v52, v53);

  MEMORY[0x21CE959E0](41, 0xE100000000000000);
  return __src[0];
}

uint64_t MusicSubscriptionOffer.Action.description.getter()
{
  v1 = 0x697263736275732ELL;
  v2 = *v0;
  v3 = v0[1];
  v4 = *v0 == 0x63736275536B6473 && v3 == 0xEC00000065626972;
  if (!v4 && (OUTLINED_FUNCTION_14_1() & 1) == 0)
  {
    OUTLINED_FUNCTION_26();
    v7 = v5;
    MEMORY[0x21CE959E0](v2, v3);
    MEMORY[0x21CE959E0](10530, 0xE200000000000000);
    return v7;
  }

  return v1;
}

uint64_t MusicSubscriptionOffer.MessageIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *v0 == 1852403562 && v2 == 0xE400000000000000;
  if (!v3 && (OUTLINED_FUNCTION_14_1() & 1) == 0)
  {
    v5 = v1 == 0x636973754D646461 && v2 == 0xE800000000000000;
    if (!v5 && (OUTLINED_FUNCTION_14_1() & 1) == 0)
    {
      v6 = v1 == 0x6973754D79616C70 && v2 == 0xE900000000000063;
      if (!v6 && (OUTLINED_FUNCTION_14_1() & 1) == 0)
      {
        sub_21666D62C();

        OUTLINED_FUNCTION_6_1();
        MEMORY[0x21CE959E0](v1, v2);
        MEMORY[0x21CE959E0](10530, 0xE200000000000000);
      }
    }
  }

  return OUTLINED_FUNCTION_21_0();
}

uint64_t MusicSubscriptionOffer.Options.campaignAttributionQueryParameters.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[13];

  sub_21666D3EC();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_1();
  sub_2166650FC(0x434953554DLL, 0xE500000000000000, 7368801, 0xE300000000000000);
  v9 = v11;
  if (v2)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_1();
    sub_2166650FC(v1, v2, 29793, 0xE200000000000000);
    v9 = v11;
  }

  if (v4)
  {

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_1();
    sub_2166650FC(v3, v4, 29795, 0xE200000000000000);
    v9 = v11;
  }

  if (v8)
  {

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_1();
    sub_2166650FC(v7, v8, 0x7463737469, 0xE500000000000000);
    v9 = v11;
  }

  if (v6)
  {

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_1();
    sub_2166650FC(v5, v6, 0x6763737469, 0xE500000000000000);
    v9 = v11;
  }

  if (*(v9 + 16) < 2uLL)
  {

    return 0;
  }

  return v9;
}

uint64_t sub_216664D9C()
{
  result = sub_21666D41C();
  qword_27CAB5868 = result;
  return result;
}

uint64_t sub_216664DCC()
{
  result = sub_21666D41C();
  qword_27CAB5870 = result;
  return result;
}

uint64_t sub_216664DFC()
{
  sub_21666D44C();
  sub_21666D7FC();
  sub_21666D47C();
  v0 = sub_21666D83C();

  return v0;
}

unint64_t sub_216664E74(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21666D44C();
  sub_21666D7FC();
  sub_21666D47C();
  v4 = sub_21666D83C();

  return sub_2166659CC(a1, v4);
}

unint64_t sub_216664F08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21666D7FC();
  sub_21666D47C();
  v6 = sub_21666D83C();

  return sub_216665AC4(a1, a2, v6);
}

unint64_t sub_216664F80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21666D5EC();

  return sub_216665B78(a1, v5);
}

_OWORD *sub_216664FC4(_OWORD *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_216664E74(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3760, &qword_21666FFD8);
  if ((sub_21666D68C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_216664E74(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(0);
    result = sub_21666D7AC();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = (v13[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v14);

    return sub_21664FEF8(a1, v14);
  }

  else
  {
    sub_2166658AC(v8, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_2166650FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_216664F08(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3780, &qword_21666FFE8);
  if ((sub_21666D68C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_216664F08(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_21666D7AC();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_216665914(v13, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_216665254()
{
  result = qword_27CAB3730;
  if (!qword_27CAB3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3730);
  }

  return result;
}

unint64_t sub_2166652AC()
{
  result = qword_27CAB3738;
  if (!qword_27CAB3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3738);
  }

  return result;
}

unint64_t sub_216665304()
{
  result = qword_27CAB3740;
  if (!qword_27CAB3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3740);
  }

  return result;
}

uint64_t sub_216665364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2166653A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2166653F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_216665434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7OptionsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s7OptionsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21666560C()
{
  result = qword_27CAB3748;
  if (!qword_27CAB3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3748);
  }

  return result;
}

unint64_t sub_216665664()
{
  result = qword_27CAB3750;
  if (!qword_27CAB3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3750);
  }

  return result;
}

unint64_t sub_2166656BC()
{
  result = qword_27CAB3758;
  if (!qword_27CAB3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3758);
  }

  return result;
}

unint64_t sub_216665710()
{
  result = qword_27CAB2FC0;
  if (!qword_27CAB2FC0)
  {
    type metadata accessor for MusicKit_SPI_SKCloudServiceSetupOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB2FC0);
  }

  return result;
}

_OWORD *sub_216665768(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_216664F08(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3768, &qword_21666FFE0);
  if ((sub_21666D68C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_216664F08(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_21666D7AC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0((v16[7] + 32 * v11));
    v17 = OUTLINED_FUNCTION_21_0();

    return sub_21664FEF8(v17, v18);
  }

  else
  {
    sub_216665960(v11, a2, a3, a1, v16);
  }
}

_OWORD *sub_2166658AC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21664FEF8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_216665914(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_216665960(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21664FEF8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2166659CC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_21666D44C();
    v8 = v7;
    if (v6 == sub_21666D44C() && v8 == v9)
    {

      return i;
    }

    v11 = sub_21666D79C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_216665AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21666D79C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_216665B78(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_216665C3C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x21CE95B50](v8, a1);
    sub_216665C98(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_216665CEC()
{
  result = qword_27CAB3770;
  if (!qword_27CAB3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3770);
  }

  return result;
}

unint64_t sub_216665D40()
{
  result = qword_27CAB3778;
  if (!qword_27CAB3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3778);
  }

  return result;
}

void OUTLINED_FUNCTION_0_7()
{
  v0[19] = 0;
  v0[20] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = 0;
}

_OWORD *OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{

  return sub_216664FC4(&a22, v22);
}

uint64_t OUTLINED_FUNCTION_2_3()
{
  *(v0 + 104) = v2;
  v4 = *(v3 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FDAC0](a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_11_1@<X0>(char a1@<W8>)
{
  *(v1 - 232) = a1;

  return sub_21666D70C();
}

void OUTLINED_FUNCTION_12_1()
{

  JUMPOUT(0x21CE959E0);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_21666D79C();
}

void OUTLINED_FUNCTION_15_1()
{
  v2 = v0[18];
  *(v1 - 152) = v0[17];
  *(v1 - 144) = v2;
  v3 = v0[16];
  *(v1 - 136) = v0[15];
  *(v1 - 128) = v3;
  v4 = v0[20];
  *(v1 - 120) = v0[19];
  *(v1 - 112) = v4;
}

_OWORD *OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{

  return sub_21664FEF8((v22 - 120), &a22);
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_21666D47C();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_21666D81C();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_21666D81C();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_216665FF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 170))
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

uint64_t sub_216666038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2166660C0()
{
  memcpy(__dst, v0, 0xAAuLL);
  v1 = _s11CoordinatorCMa();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR____TtCV17_MusicKit_SwiftUI21CloudServiceSetupView11Coordinator_parent], v0, 0xAAuLL);
  sub_216666604(__dst, v5);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_216666148()
{
  memcpy(__dst, v0, 0xAAuLL);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3810, &qword_2166701A0);
  MEMORY[0x21CE957A0](__src);
  memcpy(v22, __src, 0x9AuLL);
  memcpy(v23, __src, 0x9AuLL);
  if (sub_21665F05C(v23))
  {
    sub_21665ED34(v22);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_21666D62C();
    v19[20] = __dst[0];
    v19[21] = __dst[1];
    MEMORY[0x21CE959E0](0xD00000000000005FLL, 0x8000000216671730);
    memcpy(__dst, v0, 0xAAuLL);
    MEMORY[0x21CE957A0](v19, v1);
    memcpy(__dst, v19, 0x9AuLL);
    memcpy(v18, v19, sizeof(v18));
    sub_21666D67C();
    sub_21665ED34(__dst);
    MEMORY[0x21CE959E0](46, 0xE100000000000000);
  }

  else
  {
    v2 = nullsub_1(v23);
    v3 = *v2;
    sub_21665F084((v2 + 1));
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3788, &qword_2166701A8);
      sub_21666D09C();
      v7 = __dst[0];
      [v5 musicKit:__dst[0] setDelegate:?];

      return v6;
    }

    _s14ViewControllerCMa();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3788, &qword_2166701A8);
      sub_21666D09C();
      v11 = __dst[0];
      *(v9 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate + 8) = &off_2829008F8;
      swift_unknownObjectWeakAssign();

      v12 = objc_allocWithZone(_s21WrapperViewControllerCMa());
      v6 = sub_21665FC6C(v9);

      return v6;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_21666D62C();
    MEMORY[0x21CE959E0](0xD00000000000005CLL, 0x8000000216671790);
    v14 = [v3 description];
    v15 = sub_21666D44C();
    v17 = v16;

    MEMORY[0x21CE959E0](v15, v17);

    MEMORY[0x21CE959E0](0xD000000000000066, 0x80000002166717F0);
  }

  result = sub_21666D69C();
  __break(1u);
  return result;
}

id sub_2166664AC@<X0>(void *a1@<X8>)
{
  result = sub_2166660C0();
  *a1 = result;
  return result;
}

uint64_t sub_216666510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666663C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_216666574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21666663C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2166665D8()
{
  sub_21666663C();
  sub_21666D07C();
  __break(1u);
}

unint64_t sub_21666663C()
{
  result = qword_27CAB3790;
  if (!qword_27CAB3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3790);
  }

  return result;
}

uint64_t sub_216666690()
{
  memcpy(__dst, (v0 + OBJC_IVAR____TtCV17_MusicKit_SwiftUI21CloudServiceSetupView11Coordinator_parent), 0xAAuLL);
  sub_21665E72C(__src);
  memcpy(v3, __dst, sizeof(v3));
  memcpy(v2, __src, sizeof(v2));
  sub_216666604(__dst, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3810, &qword_2166701A0);
  sub_21666D25C();
  memcpy(v6, v3, 0xAAuLL);
  return sub_216666948(v6);
}

uint64_t sub_21666679C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  memcpy(__dst, (v3 + OBJC_IVAR____TtCV17_MusicKit_SwiftUI21CloudServiceSetupView11Coordinator_parent), 0xAAuLL);
  sub_21665E72C(__src);
  memcpy(v7, __dst, sizeof(v7));
  memcpy(v6, __src, sizeof(v6));
  sub_216666604(__dst, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3810, &qword_2166701A0);
  sub_21666D25C();
  memcpy(v10, v7, 0xAAuLL);
  result = sub_216666948(v10);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

id sub_2166668A8()
{
  v2.receiver = v0;
  v2.super_class = _s11CoordinatorCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_216666948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3810, &qword_2166701A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicAngel.Client.Error.hashValue.getter()
{
  v1 = *v0;
  sub_21666D7FC();
  MEMORY[0x21CE95D60](v1);
  return sub_21666D83C();
}

unint64_t sub_216666B20()
{
  result = qword_27CAB3820;
  if (!qword_27CAB3820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3828, &qword_216670210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3820);
  }

  return result;
}

unint64_t sub_216666B88()
{
  result = qword_27CAB3830;
  if (!qword_27CAB3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3830);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicAngel.Constants(_BYTE *result, int a2, int a3)
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

uint64_t sub_216666E30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 154))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 153);
      if (v3 <= 2)
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

uint64_t sub_216666E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 154) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 154) = 0;
    }

    if (a2)
    {
      *(result + 153) = -a2;
    }
  }

  return result;
}

void sub_216666EDC(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    *a1 = a2 - 2;
    bzero((a1 + 8), 0x91uLL);
    LOBYTE(a2) = 2;
  }

  *(a1 + 153) = a2;
}

BOOL sub_216666F30(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t sub_216666F88(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 0;
  }

  else if (a2 == 3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x21CE95D60](2);
    v2 = a2 & 1;
  }

  return MEMORY[0x21CE95D60](v2);
}

uint64_t sub_216666FE0(char a1)
{
  sub_21666D7FC();
  if (a1 == 2)
  {
    v2 = 0;
  }

  else if (a1 == 3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x21CE95D60](2);
    v2 = a1 & 1;
  }

  MEMORY[0x21CE95D60](v2);
  return sub_21666D83C();
}

uint64_t sub_216667074()
{
  v1 = *v0;
  sub_21666D7FC();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else if (v1 == 3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x21CE95D60](2);
    v2 = v1 & 1;
  }

  MEMORY[0x21CE95D60](v2);
  return sub_21666D83C();
}

BOOL sub_2166670E4(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_3_3(v55);
  memcpy(__dst, a2, 0x9AuLL);
  OUTLINED_FUNCTION_3_3(v57);
  memcpy(v58, a2, sizeof(v58));
  OUTLINED_FUNCTION_3_3(v59);
  v3 = sub_21665F05C(v59);
  if (v3)
  {
    if (v3 == 1)
    {
      v11 = nullsub_1(v59);
      OUTLINED_FUNCTION_1_5(v11, v12, v13, v14, v15, v16, v17, v18, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16], v33[17], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      if (sub_21665F05C(v54) == 1)
      {
        nullsub_1(v54);
        sub_2166674C0(__dst, &v35);
        sub_2166674C0(v55, &v35);
LABEL_9:
        sub_2166674F8(v57);
        return 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5(v3, v4, v5, v6, v7, v8, v9, v10, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16], v33[17], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      if (sub_21665F05C(v54) == 2)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

  v19 = nullsub_1(v59);
  OUTLINED_FUNCTION_1_5(v19, v20, v21, v22, v23, v24, v25, v26, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v33[14], v33[15], v33[16], v33[17], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  if (sub_21665F05C(v54))
  {
LABEL_10:
    sub_2166674C0(__dst, v54);
    sub_2166674C0(v55, v54);
    sub_2166674F8(v57);
    return 0;
  }

  v27 = nullsub_1(v54);
  v28 = *(v19 + 152);
  v29 = *(v27 + 152);
  memcpy(v34, (v19 + 8), sizeof(v34));
  memcpy(v33, (v27 + 8), sizeof(v33));
  v30 = static MusicSubscriptionOffer.Options.== infix(_:_:)(v34, v33);
  sub_2166674C0(__dst, &v35);
  sub_2166674C0(v55, &v35);
  sub_2166674F8(v57);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

  return sub_216666F30(v28, v29);
}

uint64_t sub_216667294()
{
  memcpy(__dst, v0, 0x9AuLL);
  v2 = sub_21665F05C(__dst);
  if (v2)
  {
    if (v2 == 1)
    {
      nullsub_1(__dst);
      OUTLINED_FUNCTION_0_8();
    }

    return sub_21666D47C();
  }

  else
  {
    v3 = nullsub_1(__dst);
    OUTLINED_FUNCTION_2_4(v3);
    sub_21666D47C();
    memcpy(v6, (v3 + 8), sizeof(v6));
    MusicSubscriptionOffer.Options.hash(into:)();
    if (v1 == 2)
    {
      v4 = 0;
    }

    else if (v1 == 3)
    {
      v4 = 1;
    }

    else
    {
      MEMORY[0x21CE95D60](2);
      v4 = v1 & 1;
    }

    return MEMORY[0x21CE95D60](v4);
  }
}

uint64_t sub_216667384()
{
  sub_21666D7FC();
  OUTLINED_FUNCTION_3_3(v6);
  v1 = sub_21665F05C(v6);
  if (v1)
  {
    if (v1 == 1)
    {
      nullsub_1(v6);
      OUTLINED_FUNCTION_0_8();
    }

    sub_21666D47C();
  }

  else
  {
    v2 = nullsub_1(v6);
    OUTLINED_FUNCTION_2_4(v2);
    sub_21666D47C();
    memcpy(__dst, (v2 + 8), sizeof(__dst));
    MusicSubscriptionOffer.Options.hash(into:)();
    if (v0 == 2)
    {
      v3 = 0;
    }

    else if (v0 == 3)
    {
      v3 = 1;
    }

    else
    {
      MEMORY[0x21CE95D60](2);
      v3 = v0 & 1;
    }

    MEMORY[0x21CE95D60](v3);
  }

  return sub_21666D83C();
}

uint64_t sub_216667484()
{
  sub_21666D7FC();
  sub_216667294();
  return sub_21666D83C();
}

uint64_t sub_2166674F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3838, &qword_216670450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *_s17PresentationStateO14ActiveSubstateOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s17PresentationStateO14ActiveSubstateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2166676E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2166676F8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_21666771C()
{
  result = qword_27CAB3840;
  if (!qword_27CAB3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3840);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &STACK[0x300], 0x9AuLL);
}

void *OUTLINED_FUNCTION_3_3(void *a1)
{

  return memcpy(a1, v1, 0x9AuLL);
}

uint64_t ArtworkImage._ReusePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_21666D7FC();
  MEMORY[0x21CE95D60](v1);
  return sub_21666D83C();
}

unint64_t sub_216667894()
{
  result = qword_27CAB3848;
  if (!qword_27CAB3848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB3850, &qword_2166704D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3848);
  }

  return result;
}

unint64_t sub_2166678FC()
{
  result = qword_27CAB3858;
  if (!qword_27CAB3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3858);
  }

  return result;
}

uint64_t _s12_ReusePolicyOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s12_ReusePolicyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_216667AC0()
{
  v1 = [v0 dataSource];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 token];
    sub_21666D5CC();
    swift_unknownObjectRelease();
    v4 = objc_allocWithZone(MEMORY[0x277CD5D50]);
    return sub_21666808C(v13, v2);
  }

  else
  {
    if (qword_27CAB2ED8 != -1)
    {
      swift_once();
    }

    v6 = sub_21666CE2C();
    __swift_project_value_buffer(v6, qword_27CAB5818);
    v12 = v0;
    v7 = sub_21666CE0C();
    v8 = sub_21666D55C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v12;
      *v10 = v12;
      v11 = v12;
      _os_log_impl(&dword_21664A000, v7, v8, "Data source for artwork catalog %{public}@ was deallocated prematurely. Unable to make a proper fresh instance.", v9, 0xCu);
      sub_216659588(v10);
      MEMORY[0x21CE96470](v10, -1, -1);
      MEMORY[0x21CE96470](v9, -1, -1);
    }

    return v12;
  }
}

uint64_t sub_216667C84(id a1, id a2)
{
  if (a2)
  {
    if (a1)
    {
      if (a2 != a1)
      {
        return [a2 isArtworkVisuallyIdenticalToCatalog_];
      }

      return 1;
    }

    return 0;
  }

  return !a1;
}

id sub_216667CD8()
{
  if ([v0 isImagePrepared])
  {
    return [v0 image];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216667D40()
{
  v1 = *(v0 + 152);
  v2 = sub_216667CD8();
  if (v2 || (v5 = [*(v0 + 152) image], (*(v0 + 160) = v5) == 0))
  {
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v6 = v5;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_216667EC0;
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3860, &qword_2166705A8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_216668008;
    *(v0 + 104) = &block_descriptor_6;
    *(v0 + 112) = v7;
    [v6 prepareForDisplayWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_216667EC0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_216667FA0, 0, 0);
}

uint64_t sub_216667FA0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_216668008(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_21666806C(v3, a2);
}

id sub_21666808C(uint64_t *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithToken:sub_21666D78C() dataSource:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_216668108()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_216668164()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2166681C0()
{
  type metadata accessor for MusicKit_SwiftUI_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CAB5878 = result;
  return result;
}

id sub_216668218()
{
  v1 = &v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client18SceneSpecification_clientID];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client18SceneSpecification_parameters] = 1;
  v3.receiver = v0;
  v3.super_class = _s18SceneSpecificationCMa();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_216668290(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client18SceneSpecification_clientID];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client18SceneSpecification_parameters;
  *v3 = a1;
  v3[1] = a2;
  v2[v4] = 0;
  v6.receiver = v2;
  v6.super_class = _s18SceneSpecificationCMa();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_2166682E4()
{
  v1 = *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client18SceneSpecification_clientID + 8);
  if (!v1 || (*(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client18SceneSpecification_parameters) & 1) != 0)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client18SceneSpecification_clientID);

  v2 = sub_21666AA20(v3, v1);

  return v2;
}

id sub_216668398()
{
  v2.receiver = v0;
  v2.super_class = _s18SceneSpecificationCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL static Artwork._LoadingStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 3:
      if (v2 != 3 || *a2 != 0)
      {
        goto LABEL_14;
      }

      result = 1;
      break;
    default:
      if (*(a2 + 8))
      {
LABEL_14:
        result = 0;
      }

      else
      {
LABEL_13:
        result = *a1 == *a2;
      }

      break;
  }

  return result;
}

uint64_t Artwork._LoadingStatus.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      MEMORY[0x21CE95D60](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x21CE95D80](v3);
      return MEMORY[0x21CE95D60](0);
    case 2:
      v2 = 3;
      goto LABEL_9;
    case 3:
      return MEMORY[0x21CE95D60](0);
    default:
      v2 = 1;
LABEL_9:
      MEMORY[0x21CE95D60](v2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v1;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x21CE95D80](v5);
  }
}

uint64_t Artwork._LoadingStatus.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21666D7FC();
  Artwork._LoadingStatus.hash(into:)();
  return sub_21666D83C();
}

uint64_t sub_216668568()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21666D7FC();
  Artwork._LoadingStatus.hash(into:)();
  return sub_21666D83C();
}

unint64_t sub_2166685BC()
{
  result = qword_27CAB3878;
  if (!qword_27CAB3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3878);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14_LoadingStatusOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t _s14_LoadingStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2166686A8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_2166686C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2166686F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 96))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 57);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 57);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21666873C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 2;
    }
  }

  return result;
}

double sub_2166687A8(uint64_t a1, char a2, uint64_t a3, char a4, double result)
{
  if (a2)
  {
    return *&a3 * result;
  }

  if (a4)
  {
    return *&a1 / result;
  }

  return result;
}

BOOL sub_2166687F0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
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
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v6 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(a2 + 57);
  if (*(a1 + 57) == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || (sub_21666CE6C() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
}

_BYTE *_s18FailureAlertReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216668A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v44 = a2;
  v4 = _s20FailureAlertModifierVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37[1] = v7;
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB38D0, &qword_216670818);
  v40 = OUTLINED_FUNCTION_0_2(v9);
  v41 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v40);
  v45 = v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB38D8, &qword_216670820);
  v42 = OUTLINED_FUNCTION_0_2(v14);
  v43 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = v37 - v18;
  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v48 = *v2;
  v49 = v19;
  LOBYTE(v50) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB38E0, &qword_216670828);
  MEMORY[0x21CE957A0](v47, v21);
  sub_21666A538(v2, v8);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  sub_21666A59C(v8, v23 + v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB38E8, &unk_216670838);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3508, &unk_21666F4C0);
  OUTLINED_FUNCTION_1_6();
  v27 = sub_2166620F4(v26, &qword_27CAB38E8, &unk_216670838);
  v28 = sub_21665EC00();
  sub_21666D15C();

  LODWORD(v39) = *(v2 + 24);
  v37[0] = *(v2 + 32);
  LOBYTE(v48) = v39;
  v49 = v37[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3580, &qword_21666F6D0);
  sub_21666D20C();
  sub_21666A538(v2, v8);
  v29 = swift_allocObject();
  sub_21666A59C(v8, v29 + v22);
  v48 = v24;
  v49 = v25;
  v50 = v27;
  v51 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x277D839B0];
  v32 = v38;
  v33 = v40;
  v34 = v45;
  sub_21666D15C();

  (*(v41 + 8))(v34, v33);
  LOBYTE(v47[0]) = v39;
  v47[1] = v37[0];
  sub_21666D22C();
  v46 = v3;
  v48 = v33;
  v49 = v31;
  v50 = OpaqueTypeConformance2;
  v51 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v35 = v42;
  sub_21666D12C();

  return (*(v43 + 8))(v32, v35);
}

uint64_t sub_216668EB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3518, &qword_21666F690);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  v12 = *a2;
  if (v12 == 2)
  {
    v13 = *(a3 + 32);
    v20 = *(a3 + 24);
    v21 = v13;
    v19 = 0;
  }

  else
  {
    sub_216669248(v12 & 1, &v18[-v10]);
    v14 = sub_21666D1AC();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    v15 = *(_s20FailureAlertModifierVMa() + 24);
    sub_21666A6C8(v11, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3890, &qword_2166707A0);
    sub_21666D21C();
    sub_21666A74C(v11, &qword_27CAB3518, &qword_21666F690);
    v16 = *(a3 + 32);
    v20 = *(a3 + 24);
    v21 = v16;
    v19 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3580, &qword_21666F6D0);
  return sub_21666D21C();
}

void *sub_21666903C(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if ((*a2 & 1) == 0)
  {
    v3 = *a3;
    v4 = a3[1];
    v5 = *(a3 + 16);
    v8 = *a3;
    v9 = v4;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB38E0, &qword_216670828);
    result = MEMORY[0x21CE957A0](&v7);
    if (v7 != 2)
    {
      v8 = v3;
      v9 = v4;
      v10 = v5;
      v7 = 2;
      return sub_21666D25C();
    }
  }

  return result;
}

uint64_t sub_2166690DC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3518, &qword_21666F690);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = *(_s20FailureAlertModifierVMa() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3890, &qword_2166707A0);
  sub_21666D20C();
  v7 = sub_21666D1AC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a1, v5, v7);
  }

  sub_21666A74C(v5, &qword_27CAB3518, &qword_21666F690);
  result = sub_21666D69C();
  __break(1u);
  return result;
}

uint64_t sub_216669248@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {

    return sub_2166699D0(a2);
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = sub_21666D59C();

    if (v5)
    {

      return sub_216669304(a2);
    }

    else
    {

      return sub_216669668(a2);
    }
  }
}

uint64_t sub_216669304@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = _s20FailureAlertModifierVMa();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_21666D19C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  sub_21666CFFC();
  if (qword_27CAB2F28 != -1)
  {
    swift_once();
  }

  v6 = qword_27CAB5878;
  v7 = sub_21666D0DC();
  v25 = v8;
  v26 = v7;
  v23 = v9;
  v24 = v10;
  sub_21666CFFC();
  v11 = sub_21666D0DC();
  v22[1] = v12;
  v22[2] = v11;
  v22[0] = v13;
  sub_21666CFFC();
  v14 = sub_21666D0DC();
  v16 = v15;
  v18 = v17;
  sub_21666A538(v28, v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v20 = swift_allocObject();
  sub_21666A59C(v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_21666D18C();
  sub_21666A73C(v14, v16, v18 & 1);

  sub_21666D17C();
  return sub_21666D16C();
}

uint64_t sub_216669668@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = _s20FailureAlertModifierVMa();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_21666D19C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  sub_21666CFFC();
  if (qword_27CAB2F28 != -1)
  {
    swift_once();
  }

  v6 = qword_27CAB5878;
  v7 = sub_21666D0DC();
  v25 = v8;
  v26 = v7;
  v23 = v9;
  v24 = v10;
  sub_21666CFFC();
  v11 = sub_21666D0DC();
  v22[1] = v12;
  v22[2] = v11;
  v22[0] = v13;
  sub_21666CFFC();
  v14 = sub_21666D0DC();
  v16 = v15;
  v18 = v17;
  sub_21666A538(v28, v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v20 = swift_allocObject();
  sub_21666A59C(v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_21666D18C();
  sub_21666A73C(v14, v16, v18 & 1);

  sub_21666D17C();
  return sub_21666D16C();
}

uint64_t sub_2166699D0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = _s20FailureAlertModifierVMa();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_21666D19C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  sub_21666CFFC();
  if (qword_27CAB2F28 != -1)
  {
    swift_once();
  }

  v6 = qword_27CAB5878;
  v7 = sub_21666D0DC();
  v25 = v8;
  v26 = v7;
  v23 = v9;
  v24 = v10;
  sub_21666CFFC();
  v11 = sub_21666D0DC();
  v22[1] = v12;
  v22[2] = v11;
  v22[0] = v13;
  sub_21666CFFC();
  v14 = sub_21666D0DC();
  v16 = v15;
  v18 = v17;
  sub_21666A538(v28, v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v20 = swift_allocObject();
  sub_21666A59C(v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_21666D18C();
  sub_21666A73C(v14, v16, v18 & 1);

  sub_21666D17C();
  return sub_21666D16C();
}

uint64_t sub_216669D38(uint64_t a1)
{
  v2 = sub_21666CEFC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB38F8, &qword_216670848);
  v11 = OUTLINED_FUNCTION_17(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = sub_21666CD2C();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21666CD1C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    return sub_21666A74C(v15, &qword_27CAB38F8, &qword_216670848);
  }

  (*(v19 + 32))(v23, v15, v16);
  v25 = a1 + *(_s20FailureAlertModifierVMa() + 28);
  sub_216661864(v9);
  sub_21666CEEC();
  (*(v5 + 8))(v9, v2);
  return (*(v19 + 8))(v23, v16);
}

uint64_t sub_216669F5C(uint64_t a1)
{
  v2 = sub_21666CEFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB38F8, &qword_216670848);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_21666CD2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21666CD1C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return sub_21666A74C(v10, &qword_27CAB38F8, &qword_216670848);
  }

  (*(v12 + 32))(v15, v10, v11);
  v17 = a1 + *(_s20FailureAlertModifierVMa() + 28);
  sub_216661864(v6);
  sub_21666CEEC();
  (*(v3 + 8))(v6, v2);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21666A1D4(char a1)
{
  sub_21666D7FC();
  MEMORY[0x21CE95D60](a1 & 1);
  return sub_21666D83C();
}

uint64_t _s20FailureAlertModifierVMa()
{
  result = qword_27CAB38A0;
  if (!qword_27CAB38A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21666A304()
{
  sub_21666A460(319, &qword_27CAB38B0, &qword_27CAB3508, &unk_21666F4C0, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_21666A410();
    if (v1 <= 0x3F)
    {
      sub_21666A460(319, &qword_27CAB38C0, &qword_27CAB3518, &qword_21666F690, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21666A4C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21666A410()
{
  if (!qword_27CAB38B8)
  {
    v0 = sub_21666D23C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB38B8);
    }
  }
}

void sub_21666A460(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21666A4C4()
{
  if (!qword_27CAB38C8)
  {
    sub_21666CEFC();
    v0 = sub_21666CE7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB38C8);
    }
  }
}

uint64_t sub_21666A538(uint64_t a1, uint64_t a2)
{
  v4 = _s20FailureAlertModifierVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21666A59C(uint64_t a1, uint64_t a2)
{
  v4 = _s20FailureAlertModifierVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21666A630(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_17(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

uint64_t sub_21666A6C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3518, &qword_21666F690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21666A73C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21666A74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_21666A7A0()
{
  v1 = _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_17(v1);
  return sub_216669D38(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t objectdestroyTm_0()
{
  v1 = _s20FailureAlertModifierVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 32);

  v9 = v0 + v3 + *(v1 + 24);
  v10 = sub_21666D1AC();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  v11 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3890, &qword_2166707A0) + 28));

  v12 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB35A8, &qword_216670830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21666CEFC();
    OUTLINED_FUNCTION_2_5(v13);
    (*(v14 + 8))(v5 + v12);
  }

  else
  {
    v15 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21666A994()
{
  v1 = _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_17(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_216669F5C(v3);
}

id sub_21666AA20(uint64_t a1, uint64_t a2)
{
  sub_21666BD18();
  v4 = sub_21666AD44();
  v5 = MEMORY[0x277D837D0];
  v6 = sub_21666D3EC();
  v16 = v5;
  *&v15 = a1;
  *(&v15 + 1) = a2;
  sub_21664FEF8(&v15, v14);

  swift_isUniquelyReferenced_nonNull_native();
  sub_216665768(v14, 0x4449746E65696C63, 0xE800000000000000);
  v7 = sub_21666CCEC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_21666CCDC();
  sub_21666BD5C();
  v10 = sub_21666CCCC();
  v16 = MEMORY[0x277CC9318];
  *&v15 = v10;
  *(&v15 + 1) = v11;
  sub_21664FEF8(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  sub_216665768(v14, 0x6574656D61726170, 0xEA00000000007372);

  v12 = sub_21666ADB8(v6);

  sub_21666BB2C(v12, v4);
  return v4;
}

id sub_21666AD44()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21666D41C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

uint64_t sub_21666ADB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3918, &qword_216670868);
    v2 = sub_21666D6BC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_216652E30(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_21664FEF8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_21664FEF8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_21664FEF8(v32, v33);
    v15 = *(v2 + 40);
    result = sub_21666D5EC();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_21664FEF8(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t static MusicAngel.Client.UserActivityHandler.clientID(from:)(void *a1)
{
  v1 = sub_21666BBAC(a1);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  v2 = v1;
  *&v5 = 0x4449746E65696C63;
  *(&v5 + 1) = 0xE800000000000000;
  sub_21666D60C();
  sub_21666B168(&v4, v2, &v5);

  sub_216665C98(&v4);
  if (!*(&v6 + 1))
  {
LABEL_8:
    sub_216652DB8(&v5, &unk_27CAB3350, &qword_21666EE30);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double sub_21666B168@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_216664F80(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_216652E30(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void static MusicAngel.Client.UserActivityHandler.parameters(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21666BBAC(a1);
  if (v4)
  {
    v5 = v4;
    sub_21666D60C();
    sub_21666B168(v20, v5, &v21);

    sub_216665C98(v20);
    if (v22)
    {
      if (swift_dynamicCast())
      {
        v6 = sub_21666CCBC();
        v7 = *(v6 + 48);
        v8 = *(v6 + 52);
        swift_allocObject();
        sub_21666CCAC();
        sub_21666BC18();
        sub_21666CC9C();

        sub_2166594C0(0x6574656D61726170, 0xEA00000000007372);
        v19 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      sub_216652DB8(&v21, &unk_27CAB3350, &qword_21666EE30);
    }
  }

  if (qword_27CAB2ED0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v9 = sub_21666CE2C();
  __swift_project_value_buffer(v9, qword_27CAB5800);
  v10 = a1;
  v11 = sub_21666CE0C();
  v12 = sub_21666D54C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v13 = 136446466;
    *(v13 + 4) = OUTLINED_FUNCTION_1_7(v15, v16, v17);
    *(v13 + 12) = 2114;
    *(v13 + 14) = v10;
    *v14 = v10;
    v18 = v10;
    _os_log_impl(&dword_21664A000, v11, v12, "Failed retrieve encoded parameters for key: %{public}s from user activity’s user info dictionary: %{public}@.", v13, 0x16u);
    sub_216652DB8(v14, &qword_27CAB34A8, &qword_21666F720);
    OUTLINED_FUNCTION_1();
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  v19 = 1;
LABEL_11:
  *a2 = v19;
}

uint64_t sub_21666B5BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21666B680(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_216652E30(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21666B680(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21666B780(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21666D66C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21666B780(uint64_t a1, unint64_t a2)
{
  v4 = sub_21666B7CC(a1, a2);
  sub_21666B8E4(&unk_2828FF708);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21666B7CC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_21666D49C())
  {
    result = sub_21666B9C8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21666D61C();
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
          result = sub_21666D66C();
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_21666B8E4(uint64_t result)
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

    result = sub_21666BA38(result, v8, 1, v3);
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

void *sub_21666B9C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3920, &unk_216670870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21666BA38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB3920, &unk_216670870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_21666BB2C(uint64_t a1, void *a2)
{
  v3 = sub_21666D3CC();

  [a2 setUserInfo_];
}

uint64_t sub_21666BBAC(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21666D3DC();

  return v3;
}

unint64_t sub_21666BC18()
{
  result = qword_27CAB3900;
  if (!qword_27CAB3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3900);
  }

  return result;
}

_BYTE *_s19UserActivityHandlerVwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_21666BD18()
{
  result = qword_27CAB3908;
  if (!qword_27CAB3908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB3908);
  }

  return result;
}

unint64_t sub_21666BD5C()
{
  result = qword_27CAB3910;
  if (!qword_27CAB3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB3910);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_21666B5BC(0x74656D617261702ELL, 0xEB00000000737265, va);
}

uint64_t sub_21666BDE4@<X0>(uint64_t *a1@<X8>)
{

  v3 = [v1 action];
  v4 = sub_21666D44C();
  v6 = v5;
  if (v4 == sub_21666D44C() && v6 == v7)
  {
    v39 = 0x63736275536B6473;

    goto LABEL_8;
  }

  v9 = sub_21666D79C();

  if (v9)
  {
    v39 = 0x63736275536B6473;

LABEL_8:
    v38 = 0xEC00000065626972;
    goto LABEL_10;
  }

  v10 = sub_21666D44C();
  v38 = v11;
  v39 = v10;

LABEL_10:

  v12 = [v1 messageIdentifier];
  sub_21666C03C(v40);

  v36 = v40[1];
  v37 = v40[0];

  sub_21666CBB0(v1, &selRef_itemID);
  if (v13)
  {
    v14 = sub_21666D2FC();
    v34 = v15;
    v35 = v14;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v16 = sub_21666CBB0(v1, &selRef_affiliateToken);
  v32 = v17;
  v33 = v16;
  v18 = sub_21666CBB0(v1, &selRef_campaignToken);
  v20 = v19;
  v21 = sub_21666CBB0(v1, &selRef_figaroCampaignGroup);
  v23 = v22;
  v24 = sub_21666CBB0(v1, &selRef_figaroCampaignToken);
  v26 = v25;
  v27 = sub_21666CBB0(v1, &selRef_homePodSerialNumber);
  v29 = v28;
  result = sub_21666CBB0(v1, &selRef_homePodUniqueDeviceIdentifier);
  *a1 = v39;
  a1[1] = v38;
  a1[2] = v37;
  a1[3] = v36;
  a1[4] = v35;
  a1[5] = v34;
  a1[6] = v33;
  a1[7] = v32;
  a1[8] = v18;
  a1[9] = v20;
  a1[10] = v24;
  a1[11] = v26;
  a1[12] = v21;
  a1[13] = v23;
  a1[14] = v27;
  a1[15] = v29;
  a1[16] = result;
  a1[17] = v31;
  return result;
}

uint64_t sub_21666C03C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 1852403562;
  v3 = sub_21666D44C();
  v5 = v4;
  if (v3 == sub_21666D44C() && v5 == v6)
  {

    goto LABEL_18;
  }

  v8 = sub_21666D79C();

  if (v8)
  {
LABEL_18:
    v16 = 0xE400000000000000;
    goto LABEL_19;
  }

  v2 = 0x636973754D646461;
  v10 = sub_21666D44C();
  v12 = v11;
  if (v10 == sub_21666D44C() && v12 == v13)
  {

    goto LABEL_21;
  }

  v15 = sub_21666D79C();

  if (v15)
  {
LABEL_21:
    v16 = 0xE800000000000000;
    goto LABEL_19;
  }

  v16 = 0xE900000000000063;
  v2 = 0x6973754D79616C70;
  v17 = sub_21666D44C();
  v19 = v18;
  if (v17 == sub_21666D44C() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_21666D79C();

    if ((v22 & 1) == 0)
    {
      result = sub_21666D44C();
      v2 = result;
      v16 = v23;
    }
  }

LABEL_19:
  *a1 = v2;
  a1[1] = v16;
  return result;
}

uint64_t sub_21666C264()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = [v0 childViewControllers];
  sub_21666CC10();
  v3 = sub_21666D4EC();

  if (!sub_21666CB8C(v3))
  {
    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CE95B90](0, v3);
    goto LABEL_5;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_9:

    goto LABEL_11;
  }

  v4 = *(v3 + 32);
LABEL_5:
  v5 = v4;

  _s14ViewControllerCMa();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

LABEL_11:
  sub_21666D62C();
  MEMORY[0x21CE959E0](0xD00000000000001FLL, 0x8000000216671FB0);
  v7 = [v1 description];
  v8 = sub_21666D44C();
  v10 = v9;

  MEMORY[0x21CE959E0](v8, v10);

  MEMORY[0x21CE959E0](0xD000000000000019, 0x8000000216671FD0);
  v11 = [v1 childViewControllers];
  v12 = sub_21666D4EC();

  if (sub_21666CB8C(v12))
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CE95B90](0, v12);
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      __break(1u);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAB3930, &qword_2166708B8);
  v14 = sub_21666D45C();
  MEMORY[0x21CE959E0](v14);

  MEMORY[0x21CE959E0](0xD00000000000002CLL, 0x8000000216672030);
  result = sub_21666D69C();
  __break(1u);
  return result;
}

void sub_21666C510(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() systemBackgroundColor];
  [a1 setBackgroundColor_];

  v5 = objc_allocWithZone(_s14ViewControllerCMa());
  v6 = sub_21664FFA8();
  *&v6[OBJC_IVAR____TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController_delegate + 8] = &off_282900EE0;
  swift_unknownObjectWeakAssign();
  v11 = v6;
  [v2 addChildViewController_];
  v7 = [v11 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  [a1 bounds];
  [v8 setFrame_];

  v9 = [v11 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v9 setAutoresizingMask_];

  v10 = [v11 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [a1 addSubview_];

  [v11 didMoveToParentViewController_];
}

uint64_t sub_21666C734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 childViewController];
  sub_21666BDE4(v9);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_21664C528(a2);
  sub_216658254(v9, sub_21666CB84, v7);

  memcpy(__dst, v9, sizeof(__dst));
  return sub_21665F084(__dst);
}

uint64_t sub_21666C80C(uint64_t result, uint64_t a2, void (*a3)(void, uint64_t))
{
  if (a3)
  {
    v5 = result;

    a3(v5 & 1, a2);

    return sub_21664D5A4(a3);
  }

  return result;
}

void sub_21666C948(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_21666CCFC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_21666C9B8(uint64_t a1, char a2, void *a3)
{
  v6 = [v3 delegate];
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      OUTLINED_FUNCTION_0_9();
      v12 = 1107296256;
      v13 = sub_21666CC70;
      v14 = &block_descriptor_6;
      a3 = _Block_copy(&v11);
    }

    [v7 subscriptionOfferViewController:v3 requestsDismissalWithAnimation:a2 & 1 completion:a3];
    _Block_release(a3);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = [v3 parentViewController];
    if (v8)
    {
      v9 = v8;
      if (a3)
      {
        OUTLINED_FUNCTION_0_9();
        v12 = 1107296256;
        v13 = sub_21666CC70;
        v14 = &block_descriptor_7;
        v10 = _Block_copy(&v11);
      }

      else
      {
        v10 = 0;
      }

      [v9 dismissViewControllerAnimated:1 completion:v10];
      _Block_release(v10);
    }
  }
}

uint64_t sub_21666CB34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_21666CB8C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_21666CBB0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21666D44C();

  return v4;
}

unint64_t sub_21666CC10()
{
  result = qword_27CAB3928;
  if (!qword_27CAB3928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAB3928);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}