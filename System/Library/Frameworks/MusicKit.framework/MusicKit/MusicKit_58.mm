uint64_t CloudSong.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudSong.Relationships.hash(into:)();
  return sub_217753238();
}

void CloudSong.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v5 = v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C218, &qword_2177905B0);
  OUTLINED_FUNCTION_0_0(v34);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v31 - v12;
  v14 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21738C45C();
  sub_2177532C8();
  if (!v1)
  {
    v32 = v5;
    v33 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_2172E0450();
    OUTLINED_FUNCTION_32_43();
    OUTLINED_FUNCTION_55_23();
    sub_217752E58();
    OUTLINED_FUNCTION_117_16(v37);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    v19 = sub_2172E05BC();
    OUTLINED_FUNCTION_75_17();
    sub_217752E58();
    v20 = v33;
    v31[3] = v18;
    v35 = v19;
    OUTLINED_FUNCTION_117_16(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C78, &unk_21775EFE0);
    sub_2176945D4();
    OUTLINED_FUNCTION_32_43();
    OUTLINED_FUNCTION_55_23();
    sub_217752E58();
    OUTLINED_FUNCTION_117_16(v40);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    v22 = sub_2172E02E4();
    OUTLINED_FUNCTION_75_17();
    OUTLINED_FUNCTION_126_14();
    v31[2] = v22;
    v36 = v21;
    OUTLINED_FUNCTION_117_16(v39);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    v24 = sub_2173620F8();
    OUTLINED_FUNCTION_75_17();
    OUTLINED_FUNCTION_126_14();
    v31[1] = v24;
    OUTLINED_FUNCTION_117_16(v41);
    OUTLINED_FUNCTION_75_17();
    sub_217752E58();
    OUTLINED_FUNCTION_117_16(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C80, &unk_217775700);
    sub_2176946E4();
    OUTLINED_FUNCTION_32_43();
    OUTLINED_FUNCTION_55_23();
    sub_217752E58();
    v15 = v37;
    OUTLINED_FUNCTION_117_16(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C88, &unk_21775EFF0);
    sub_2176947F4();
    OUTLINED_FUNCTION_32_43();
    OUTLINED_FUNCTION_55_23();
    sub_217752E58();
    v36 = 0;
    LODWORD(v14) = v23;
    OUTLINED_FUNCTION_117_16(v44);
    OUTLINED_FUNCTION_75_17();
    v25 = v36;
    sub_217752E58();
    LODWORD(v35) = v25 == 0;
    if (!v25)
    {
      OUTLINED_FUNCTION_117_16(v45);
      OUTLINED_FUNCTION_75_17();
      sub_217752E58();
      v36 = 0;
      OUTLINED_FUNCTION_117_16(&v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
      sub_2172E0ED0();
      OUTLINED_FUNCTION_32_43();
      OUTLINED_FUNCTION_172_10();
      v36 = 0;
      OUTLINED_FUNCTION_117_16(v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
      sub_21752C0C4();
      OUTLINED_FUNCTION_32_43();
      OUTLINED_FUNCTION_172_10();
      v36 = 0;
      v29 = OUTLINED_FUNCTION_86_17();
      v30(v29);
      OUTLINED_FUNCTION_117_16(&v48);
      sub_21738C1D0(v37, v32);
      __swift_destroy_boxed_opaque_existential_1(v3);
      sub_217284234(v37);
      goto LABEL_26;
    }

    v36 = v25;
    v26 = *(v20 + 8);
    v16 = v20 + 8;
    v27 = OUTLINED_FUNCTION_5_3();
    v28(v27);
    LODWORD(v34) = 0;
    __swift_destroy_boxed_opaque_existential_1(v3);
    LOBYTE(v0) = 1;
    OUTLINED_FUNCTION_87_20();
    LODWORD(v5) = 1;
    LODWORD(v13) = 1;
    v17 = 1;
LABEL_6:
    sub_2171F0738(v37, &qword_27CB24270, &unk_21775D640);
    if (v0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  v36 = v1;
  OUTLINED_FUNCTION_197_1();
  LODWORD(v15) = 0;
  v16 = 0;
  OUTLINED_FUNCTION_65_25();
  __swift_destroy_boxed_opaque_existential_1(v3);
  if (v7)
  {
    v17 = 0;
    LODWORD(v35) = 0;
    LODWORD(v34) = 0;
    goto LABEL_6;
  }

  LODWORD(v34) = 0;
  LODWORD(v35) = 0;
  v17 = 0;
  if (v0)
  {
LABEL_7:
    sub_2171F0738(v38, &qword_27CB243B0, &unk_21775D670);
    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v15)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_2171F0738(v39, &qword_27CB24280, &unk_21775D680);
  if (v16)
  {
LABEL_9:
    sub_2171F0738(v40, &qword_27CB255E0, &unk_2177756D0);
    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v14)
  {
LABEL_10:
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  sub_2171F0738(v41, &qword_27CB242E0, &unk_21777EEE0);
  if (v5)
  {
LABEL_11:
    sub_2171F0738(v42, &qword_27CB24280, &unk_21775D680);
    if ((v13 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v13)
  {
LABEL_12:
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_2171F0738(v43, &qword_27CB255D8, &unk_21775D4B0);
  if (v17)
  {
LABEL_13:
    sub_2171F0738(v44, &qword_27CB255D0, &qword_21775D4A8);
    if ((v35 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_2171F0738(v45, &qword_27CB243B0, &unk_21775D670);
    goto LABEL_24;
  }

LABEL_22:
  if (v35)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v34)
  {
    sub_2171F0738(v47, &qword_27CB242B0, &unk_21775D630);
  }

LABEL_26:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217692168()
{
  sub_2177531E8();
  CloudSong.Relationships.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176921AC(uint64_t a1)
{
  v2 = sub_217694904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176921E8(uint64_t a1)
{
  v2 = sub_217694904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudSong.Associations.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C250, &qword_2177905B8);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_217694904();
  sub_2177532F8();
  return (*(v4 + 8))(v10, v2);
}

void *CloudSong.Metadata.init(contributors:popularity:snippets:formerIds:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t CloudSong.Metadata.contributors.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_217221020(v2);
}

uint64_t CloudSong.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

BOOL static CloudSong.Metadata.== infix(_:_:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 16);
  v11 = a2[3];
  v10 = a2[4];
  if (*a1 == 1)
  {
    sub_217221020(1);
    if (v7 == 1)
    {
      v2 = 1;
      sub_217221020(1);
      goto LABEL_15;
    }

    sub_217221020(v7);
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    sub_217221020(*a1);
    sub_217221020(1);
    sub_217221020(v2);

LABEL_7:
    sub_217221010(v2);
    v12 = v7;
LABEL_34:
    sub_217221010(v12);
    return 0;
  }

  if (!v2)
  {
    sub_217221020(0);
    v15 = 0;
    if (!v7)
    {
      sub_217221020(0);
      sub_217221020(0);
      sub_217221010(0);
      goto LABEL_14;
    }

LABEL_32:
    sub_217221020(v7);
    sub_217221020(v15);
    sub_217221010(v7);
LABEL_33:

    v12 = v2;
    goto LABEL_34;
  }

  v13 = *a1;
  if (!v7)
  {
    sub_217221020(v13);
    v15 = v2;
    goto LABEL_32;
  }

  v14 = sub_2172849CC(v13, *a2);
  sub_217221020(v2);
  sub_217221020(v7);
  sub_217221020(v2);
  sub_217221010(v7);
  if ((v14 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_14:

LABEL_15:
  sub_217221010(v2);
  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v16 = v9;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    sub_217751DE8();
    sub_21726F358();
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (!v5)
  {
    return !v10;
  }

  if (!v10)
  {
    return 0;
  }

  sub_217751DE8();
  v19 = sub_2172A9110(v5, v10);

  return (v19 & 1) != 0;
}

unint64_t sub_217692668()
{
  result = qword_280BE2518[0];
  if (!qword_280BE2518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE2518);
  }

  return result;
}

unint64_t sub_2176926BC()
{
  result = qword_280BE24C8;
  if (!qword_280BE24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE24C8);
  }

  return result;
}

unint64_t sub_217692710()
{
  result = qword_280BE24D8;
  if (!qword_280BE24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE24D8);
  }

  return result;
}

unint64_t sub_217692764()
{
  result = qword_280BE24A0;
  if (!qword_280BE24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE24A0);
  }

  return result;
}

uint64_t sub_2176927B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_217692810(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_217692854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75626972746E6F63 && a2 == 0xEC00000073726F74;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6972616C75706F70 && a2 == 0xEA00000000007974;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374657070696E73 && a2 == 0xE800000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x644972656D726F66 && a2 == 0xE900000000000073)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2176929C0(char a1)
{
  result = 0x75626972746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6972616C75706F70;
      break;
    case 2:
      result = 0x7374657070696E73;
      break;
    case 3:
      result = 0x644972656D726F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217692A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217692854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217692A84(uint64_t a1)
{
  v2 = sub_217694958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217692AC0(uint64_t a1)
{
  v2 = sub_217694958();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudSong.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C260, &qword_2177905C0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_87_2();
  v12 = *v0;
  v17 = *(v0 + 8);
  v16 = *(v0 + 16);
  v14 = *(v0 + 32);
  v15 = *(v0 + 24);
  v13 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_217221020(v12);
  sub_217694958();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  sub_21736237C();
  OUTLINED_FUNCTION_44_2();
  sub_217752F38();
  sub_217221010(v12);
  if (!v1)
  {
    OUTLINED_FUNCTION_44_2();
    sub_217752F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E163C();
    OUTLINED_FUNCTION_15_62();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C268, &qword_2177905C8);
    sub_2176949AC();
    OUTLINED_FUNCTION_15_62();
    sub_217752F38();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudSong.Metadata.hash(into:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v8 = v2[3];
  v7 = v2[4];
  if (*v2 != 1)
  {
    sub_217753208();
    if (v4)
    {
      sub_217753208();
      sub_2172849D8(a1, v4);
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      sub_217753208();
      if (v8)
      {
        goto LABEL_8;
      }

LABEL_14:
      sub_217753208();
      if (v7)
      {
        goto LABEL_9;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_217753208();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x21CEA3580](v9);
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_217753208();
  sub_21727DDE0();
  if (!v7)
  {
    return sub_217753208();
  }

LABEL_9:
  sub_217753208();

  return sub_2172A98C8(a1, v7);
}

uint64_t CloudSong.Metadata.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_238();
  CloudSong.Metadata.hash(into:)(v3);
  return sub_217753238();
}

void CloudSong.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C270, &qword_2177905D0);
  OUTLINED_FUNCTION_0_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20, v21);
  v22 = v12[4];
  OUTLINED_FUNCTION_160(v12, v12[3]);
  sub_217694958();
  sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2173623D0();
    sub_217752E58();
    v23 = a10;
    LOBYTE(a10) = 1;
    v24 = sub_217752E38();
    v29 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E1928();
    OUTLINED_FUNCTION_41_36();
    sub_217752E58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C268, &qword_2177905C8);
    sub_217694A30();
    OUTLINED_FUNCTION_41_36();
    sub_217752E58();
    v26 = *(v17 + 8);
    v27 = OUTLINED_FUNCTION_5_3();
    v28(v27);
    *v14 = v23;
    *(v14 + 8) = v24;
    *(v14 + 16) = v29 & 1;
    *(v14 + 24) = a10;
    *(v14 + 32) = a10;
    sub_217221020(v23);
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_217221010(v23);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217693124()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 24);
  sub_2177531E8();
  CloudSong.Metadata.hash(into:)(v3);
  return sub_217753238();
}

uint64_t CloudSong.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudSong.attributes.getter()
{
  v2 = *(OUTLINED_FUNCTION_175_9() + 20);
  OUTLINED_FUNCTION_29_40();
  return sub_217693BF8(v1 + v3, v0, v4);
}

uint64_t static CloudSong.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB2C150 = a1;
}

uint64_t sub_21769330C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB2C150;
  return sub_217751DE8();
}

uint64_t sub_21769335C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB2C150 = v1;
  sub_217751DE8();
}

uint64_t CloudSong.views.getter()
{
  result = OUTLINED_FUNCTION_175_9();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudSong.meta.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_175_9() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;

  return sub_21733BF2C(v3, v4, v5, v6);
}

__n128 CloudSong.meta.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for CloudSong(0) + 32));
  v5 = v4[4];
  sub_21733BF7C(*v4, v4[1], v4[2], v4[3]);
  result = *a1;
  v7 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v7;
  v4[4] = v3;
  return result;
}

uint64_t sub_217693514()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BEA1C8 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BEA1D8;
  v2 = byte_280BEA1E0;
  *(v0 + 32) = qword_280BEA1D0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE7628 = v0;

  return sub_217751DE8();
}

uint64_t sub_2176935E4()
{
  if (qword_280BE8B08 != -1)
  {
    swift_once();
  }

  qword_280BE24F0 = qword_280BE8B10;
  *algn_280BE24F8 = *algn_280BE8B18;
  byte_280BE2500 = byte_280BE8B20;

  return sub_217751DE8();
}

uint64_t static CloudSong.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE24E8 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE24F8;
  v3 = byte_280BE2500;
  *a1 = qword_280BE24F0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

uint64_t sub_2176936D0(char a1)
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

uint64_t sub_217693764(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176937B8(uint64_t a1)
{
  v2 = sub_217692668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176937F4(uint64_t a1)
{
  v2 = sub_217692668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudSong.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_217751FF8();
  v4 = type metadata accessor for CloudSong(0);
  v5 = v0 + v4[5];
  CloudSong.Attributes.hash(into:)();
  sub_21726A630(v1 + v4[6], __src, &qword_27CB24A78, &qword_217759040);
  if (*&__src[1] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v10, __src, sizeof(v10));
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_11_7();
    CloudSong.Relationships.hash(into:)();
    sub_217284234(v10);
  }

  v6 = *(v1 + v4[7]);
  sub_217753208();
  v7 = v1 + v4[8];
  v8 = *(v7 + 1);
  __src[0] = *v7;
  __src[1] = v8;
  *&__src[2] = *(v7 + 4);
  return sub_217263F54();
}

uint64_t sub_217693940(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2176939F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

void CloudSong.Attributes.offerKinds.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + *(type metadata accessor for CloudSong.Attributes(0) + 120));
  if (v1)
  {
    v2 = 0;
    v3 = *(v1 + 16);
    v4 = MEMORY[0x277D84F90];
LABEL_3:
    v5 = (v1 + 88 + 72 * v2);
    while (v3 != v2)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v5 + 9;
      ++v2;
      v7 = *v5;
      v5 += 9;
      if (v7)
      {
        v8 = *(v6 - 10);
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v4 + 16);
          sub_2172B1E18();
          v4 = v12;
        }

        v9 = *(v4 + 16);
        if (v9 >= *(v4 + 24) >> 1)
        {
          sub_2172B1E18();
          v4 = v13;
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;
        goto LABEL_3;
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217693B48()
{
  v1 = *(v0 + *(type metadata accessor for CloudSong.Attributes(0) + 124) + 8);
  sub_21735D9D8();
  return v2 & 1 | (v1 != 0);
}

uint64_t sub_217693B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSong(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_217693BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);
  return a2;
}

uint64_t sub_217693C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);
  return a2;
}

unint64_t sub_217693CB0()
{
  result = qword_280BE2650;
  if (!qword_280BE2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2650);
  }

  return result;
}

unint64_t sub_217693D04()
{
  result = qword_27CB2C180;
  if (!qword_27CB2C180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C60, &qword_217759660);
    sub_217692810(&unk_280BE7410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C180);
  }

  return result;
}

unint64_t sub_217693DC0()
{
  result = qword_27CB2C188;
  if (!qword_27CB2C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C70, &unk_217775710);
    sub_217693E4C();
    sub_217693EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C188);
  }

  return result;
}

unint64_t sub_217693E4C()
{
  result = qword_27CB2C190;
  if (!qword_27CB2C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C190);
  }

  return result;
}

unint64_t sub_217693EA0()
{
  result = qword_27CB2C198;
  if (!qword_27CB2C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C198);
  }

  return result;
}

unint64_t sub_217693EF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE0, &unk_2177657E0);
    v4();
    result = OUTLINED_FUNCTION_157_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217693F64()
{
  result = qword_280BE23B8;
  if (!qword_280BE23B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C60, &qword_217759660);
    sub_217692810(&unk_280BE7400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE23B8);
  }

  return result;
}

unint64_t sub_217694020()
{
  result = qword_27CB2C1A8;
  if (!qword_27CB2C1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C70, &unk_217775710);
    sub_217693E4C();
    sub_217693EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1A8);
  }

  return result;
}

unint64_t sub_2176940AC()
{
  result = qword_27CB2C1B8;
  if (!qword_27CB2C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C78, &unk_21775EFE0);
    sub_217694130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1B8);
  }

  return result;
}

unint64_t sub_217694130()
{
  result = qword_27CB2C1C0;
  if (!qword_27CB2C1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB249A8, &qword_217758F38);
    sub_2176941BC();
    sub_217694210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1C0);
  }

  return result;
}

unint64_t sub_2176941BC()
{
  result = qword_27CB2C1C8;
  if (!qword_27CB2C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1C8);
  }

  return result;
}

unint64_t sub_217694210()
{
  result = qword_27CB2C1D0;
  if (!qword_27CB2C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1D0);
  }

  return result;
}

unint64_t sub_217694264()
{
  result = qword_27CB2C1D8;
  if (!qword_27CB2C1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C80, &unk_217775700);
    sub_2176942E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1D8);
  }

  return result;
}

unint64_t sub_2176942E8()
{
  result = qword_27CB2C1E0;
  if (!qword_27CB2C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24988, &qword_217758F18);
    sub_217694374();
    sub_2176943C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1E0);
  }

  return result;
}

unint64_t sub_217694374()
{
  result = qword_27CB2C1E8;
  if (!qword_27CB2C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1E8);
  }

  return result;
}

unint64_t sub_2176943C8()
{
  result = qword_27CB2C1F0;
  if (!qword_27CB2C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1F0);
  }

  return result;
}

unint64_t sub_21769441C()
{
  result = qword_27CB2C1F8;
  if (!qword_27CB2C1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C88, &unk_21775EFF0);
    sub_2176944A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C1F8);
  }

  return result;
}

unint64_t sub_2176944A0()
{
  result = qword_27CB2C200;
  if (!qword_27CB2C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24980, &qword_217758F10);
    sub_21769452C();
    sub_217694580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C200);
  }

  return result;
}

unint64_t sub_21769452C()
{
  result = qword_27CB2C208;
  if (!qword_27CB2C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C208);
  }

  return result;
}

unint64_t sub_217694580()
{
  result = qword_27CB2C210;
  if (!qword_27CB2C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C210);
  }

  return result;
}

unint64_t sub_2176945D4()
{
  result = qword_27CB2C220;
  if (!qword_27CB2C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C78, &unk_21775EFE0);
    sub_217694658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C220);
  }

  return result;
}

unint64_t sub_217694658()
{
  result = qword_27CB2C228;
  if (!qword_27CB2C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB249A8, &qword_217758F38);
    sub_2176941BC();
    sub_217694210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C228);
  }

  return result;
}

unint64_t sub_2176946E4()
{
  result = qword_27CB2C230;
  if (!qword_27CB2C230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C80, &unk_217775700);
    sub_217694768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C230);
  }

  return result;
}

unint64_t sub_217694768()
{
  result = qword_27CB2C238;
  if (!qword_27CB2C238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24988, &qword_217758F18);
    sub_217694374();
    sub_2176943C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C238);
  }

  return result;
}

unint64_t sub_2176947F4()
{
  result = qword_27CB2C240;
  if (!qword_27CB2C240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25C88, &unk_21775EFF0);
    sub_217694878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C240);
  }

  return result;
}

unint64_t sub_217694878()
{
  result = qword_27CB2C248;
  if (!qword_27CB2C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24980, &qword_217758F10);
    sub_21769452C();
    sub_217694580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C248);
  }

  return result;
}

unint64_t sub_217694904()
{
  result = qword_27CB2C258;
  if (!qword_27CB2C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C258);
  }

  return result;
}

unint64_t sub_217694958()
{
  result = qword_280BE24B8;
  if (!qword_280BE24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE24B8);
  }

  return result;
}

unint64_t sub_2176949AC()
{
  result = qword_280BE7530;
  if (!qword_280BE7530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C268, &qword_2177905C8);
    sub_2172E1B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7530);
  }

  return result;
}

unint64_t sub_217694A30()
{
  result = qword_280BE84A8;
  if (!qword_280BE84A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C268, &qword_2177905C8);
    sub_2172E1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE84A8);
  }

  return result;
}

unint64_t sub_217694B00()
{
  result = qword_27CB2C280;
  if (!qword_27CB2C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C280);
  }

  return result;
}

unint64_t sub_217694B58()
{
  result = qword_27CB2C288;
  if (!qword_27CB2C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C288);
  }

  return result;
}

unint64_t sub_217694BB0()
{
  result = qword_27CB2C290;
  if (!qword_27CB2C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C290);
  }

  return result;
}

unint64_t sub_217694C08()
{
  result = qword_27CB2C298;
  if (!qword_27CB2C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C2A0, &qword_217790780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C298);
  }

  return result;
}

unint64_t sub_217694C70()
{
  result = qword_27CB2C2A8;
  if (!qword_27CB2C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2A8);
  }

  return result;
}

unint64_t sub_217694CC8()
{
  result = qword_27CB2C2B0;
  if (!qword_27CB2C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2B0);
  }

  return result;
}

unint64_t sub_217694D20()
{
  result = qword_27CB2C2B8;
  if (!qword_27CB2C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2B8);
  }

  return result;
}

void sub_217694ED8()
{
  type metadata accessor for CloudSong.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE24C0);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE24D0);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE2498);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217694FF4()
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2172E2DB0();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_217351B44(319, &qword_280BE2348, &qword_27CB25028, &qword_21775B510);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E58(319, &qword_280BE7528);
        if (v10 > 0x3F)
        {
          return v9;
        }

        sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
        if (v11 > 0x3F)
        {
          return v7;
        }

        sub_217351B44(319, &qword_280BE4308, &qword_27CB25040, &qword_21775B518);
        if (v12 > 0x3F)
        {
          return v7;
        }

        sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
        if (v13 > 0x3F)
        {
          return v7;
        }

        sub_217351B44(319, &unk_280BE75B8, &qword_27CB24C60, &qword_217759660);
        if (v14 > 0x3F)
        {
          return v7;
        }

        sub_217351B44(319, &qword_280BE7548, &qword_27CB24C58, &unk_2177677B0);
        if (v15 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E58(319, &qword_280BE7540);
        if (v17 > 0x3F)
        {
          return v16;
        }

        sub_217351B44(319, &qword_280BE7558, &qword_27CB24C50, &unk_217759650);
        if (v18 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E58(319, &qword_280BE7DD0);
        if (v19 > 0x3F)
        {
          return v7;
        }

        sub_217351B44(319, &qword_280BE2370, &qword_27CB25CE0, &qword_21775F658);
        if (v20 > 0x3F)
        {
          return v7;
        }

        sub_217351B44(319, &qword_280BE7DF8, &qword_27CB25C70, &unk_217775710);
        if (v21 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_217695374(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 1536))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2176953C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1528) = 0;
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
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1536) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1536) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSong.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSong.Associations(_BYTE *result, int a2, int a3)
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

uint64_t sub_217695748(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21769579C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSong.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudSong.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudSong.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSong.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217695B38()
{
  result = qword_27CB2C2D0;
  if (!qword_27CB2C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2D0);
  }

  return result;
}

unint64_t sub_217695B90()
{
  result = qword_27CB2C2D8;
  if (!qword_27CB2C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2D8);
  }

  return result;
}

unint64_t sub_217695BE8()
{
  result = qword_27CB2C2E0;
  if (!qword_27CB2C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2E0);
  }

  return result;
}

unint64_t sub_217695C40()
{
  result = qword_280BE24A8;
  if (!qword_280BE24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE24A8);
  }

  return result;
}

unint64_t sub_217695C98()
{
  result = qword_280BE24B0;
  if (!qword_280BE24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE24B0);
  }

  return result;
}

unint64_t sub_217695CF0()
{
  result = qword_27CB2C2E8;
  if (!qword_27CB2C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2E8);
  }

  return result;
}

unint64_t sub_217695D48()
{
  result = qword_27CB2C2F0;
  if (!qword_27CB2C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2F0);
  }

  return result;
}

unint64_t sub_217695DA0()
{
  result = qword_280BE2640;
  if (!qword_280BE2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2640);
  }

  return result;
}

unint64_t sub_217695DF8()
{
  result = qword_280BE2648;
  if (!qword_280BE2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2648);
  }

  return result;
}

unint64_t sub_217695E50()
{
  result = qword_280BE2508;
  if (!qword_280BE2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2508);
  }

  return result;
}

unint64_t sub_217695EA8()
{
  result = qword_280BE2510;
  if (!qword_280BE2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2510);
  }

  return result;
}

void OUTLINED_FUNCTION_14_59(int a1@<W8>)
{
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = a1;
  v1[7] = a1;
  v1[8] = a1;
  v1[9] = a1;
  v1[10] = a1;
}

void OUTLINED_FUNCTION_16_66()
{

  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
}

uint64_t OUTLINED_FUNCTION_22_54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21726A630(v6 + v5, v4 + 7104, a3, a4);
}

void OUTLINED_FUNCTION_40_35(int a1@<W8>)
{
  v1[11] = a1;
  v1[12] = a1;
  v1[14] = a1;
  v1[16] = a1;
  v1[18] = a1;
}

uint64_t OUTLINED_FUNCTION_46_30()
{

  return sub_2171F0738(v0 + 4256, v1, v2);
}

uint64_t OUTLINED_FUNCTION_48_21()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[14];

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_49_31()
{

  return sub_2171F0738(v0 + 2928, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_25@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

void OUTLINED_FUNCTION_71_20(_BYTE *a1@<X8>)
{

  sub_217230490(a1);
}

uint64_t OUTLINED_FUNCTION_86_17()
{
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 40) + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_94_16()
{
  *(v0 + 112) = v2;
  v3 = *(*(v0 + 64) + 8);
  return v1;
}

void *OUTLINED_FUNCTION_117_16(void *a1)
{

  return memcpy(a1, (v1 + 72), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_125_9@<X0>(char a1@<W8>)
{
  *(v2 - 69) = a1;
  result = v2 - 69;
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_126_14()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_127_12@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v12 = *(v9 + 408);

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(a1, a2, a3, a4, a5, v10, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_142_11()
{
}

uint64_t OUTLINED_FUNCTION_148_7(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 72, v2, v3);
}

void *OUTLINED_FUNCTION_171_10()
{

  return memcpy((v0 + 3568), (v1 + 16), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_172_10()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_173_11@<X0>(uint64_t a1@<X8>)
{

  return sub_21726A630(v3 + a1, v2 + v1, v5, v4);
}

uint64_t OUTLINED_FUNCTION_175_9()
{

  return type metadata accessor for CloudSong(0);
}

uint64_t OUTLINED_FUNCTION_176_9(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

void *OUTLINED_FUNCTION_177_7(void *a1)
{

  return memcpy(a1, (v1 + 176), 0xB0uLL);
}

uint64_t sub_2176965B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_2177528F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

BOOL sub_2176966D0(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  for (i = (a2 + 72); ; i += 48)
  {
    v30 = v3;
    v31 = v3 - 1;
    if (!v3)
    {
      break;
    }

    v5 = *(i - 2);
    v6 = *(i - 1);
    v7 = *i;
    v8 = *(i - 5);
    v9 = *(i - 4);
    v10 = *a1;
    v11 = a1[1];
    v12 = *(i - 24);
    v13 = *(a1 + 16);
    v14 = sub_217752AB8();
    v16 = v15;
    if (v14 == sub_217752AB8() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_217753058();

      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v20 = a1[3];
    v21 = a1[4];
    v22 = *(a1 + 40);
    v23 = sub_217752AB8();
    v25 = v24;
    if (v23 == sub_217752AB8() && v25 == v26)
    {

      return v30 != 0;
    }

    v28 = sub_217753058();

    if (v28)
    {
      return v30 != 0;
    }

LABEL_15:
    v3 = v31;
  }

  return v30 != 0;
}

void CloudResource.identifierSet(for:playParameters:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v79 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a2 + 8);
  memcpy(__dst, (v5 + *(a3 + 44)), 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(__dst) == 1 || (memcpy(v84, __dst, sizeof(v84)), j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v84) == 1))
  {
    v11 = v5 + *(a3 + 36);
    v78 = v8;
    if (*(v11 + 16) == 1)
    {
      v12 = CloudResource.id.getter(a3);
      v14 = v13;
      sub_217751DE8();
      sub_217751DE8();

      v15 = 0;
      v16 = 0;
      v17 = &unk_28295EE30;
      OUTLINED_FUNCTION_0_135();
      v29 = 0uLL;
      v30 = v9;
      v31 = MEMORY[0x277D84FA0];
      v32 = v12;
      v33 = v14;
    }

    else
    {
      if (dynamic_cast_existential_1_conditional(v79))
      {
        v35 = (*(v34 + 8))();
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v36 = sub_21722CF24(7u, v35);

      if (v36 && v10)
      {
        v12 = CloudResource.id.getter(a3);
        v14 = v37;
        v16 = 6;
      }

      else
      {
        v38 = CloudResource.id.getter(a3);
        v40 = v39;
        v41 = *(v11 + 8);
        v42 = *(v11 + 16);
        v83[0] = *v11;
        v83[1] = v41;
        LOBYTE(v83[2]) = v42;
        sub_217751DE8();
        v88.value.rawValue._countAndFlagsBits = v83;
        v43.rawValue._countAndFlagsBits = v38;
        v43.rawValue._object = v40;
        MusicCatalogID.init(value:type:)(v43, v88);
        v12 = *v84;
        v14 = *&v84[8];
        v16 = v84[16];
      }

      sub_217751DE8();
      sub_217751DE8();

      v32 = 0;
      v33 = 0;
      v17 = &unk_28295EE60;
      OUTLINED_FUNCTION_0_135();
      v30 = v9;
      v31 = MEMORY[0x277D84FA0];
      v29 = 0uLL;
      v18 = v12;
      v15 = v14;
    }

    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = v79;
  }

  else
  {
    v12 = *v84;
    v14 = *&v84[8];
    v75 = *&v84[16];
    v15 = *&v84[24];
    v16 = v84[32];
    v86[0] = *&v84[33];
    *(v86 + 3) = *&v84[36];
    v32 = *&v84[40];
    v33 = *&v84[48];
    v31 = *&v84[264];
    v85[0] = *&v84[273];
    *(v85 + 3) = *&v84[276];
    v17 = *&v84[280];
    v77 = *&v84[312];
    v78 = *&v84[304];
    v76 = *&v84[320];
    v73 = *&v84[56];
    v74 = *&v84[336];
    v71 = *&v84[88];
    v72 = *&v84[72];
    v69 = *&v84[120];
    v70 = *&v84[104];
    v67 = *&v84[152];
    v68 = *&v84[136];
    v65 = *&v84[184];
    v66 = *&v84[168];
    v63 = *&v84[216];
    v64 = *&v84[200];
    v61 = *&v84[248];
    v62 = *&v84[232];
    v60 = *&v84[288];
    if (*&v84[24])
    {
      v58 = v84[352];
      v59 = v84[272];
      if (v84[32])
      {
        memcpy(v83, __dst, 0x161uLL);
        sub_217269EF4(v83, v82);
      }

      else
      {
        v53 = dynamic_cast_existential_1_conditional(v79);
        if (v53)
        {
          v55 = v53;
          v57 = v54;
          v80 = *(v54 + 8);
          sub_217696DA0(__dst, v83);
          sub_217751DE8();
          v56 = v80(v55, v57);
        }

        else
        {
          sub_217696DA0(__dst, v83);
          sub_217751DE8();
          v56 = MEMORY[0x277D84F90];
        }

        v81 = sub_21722CF24(7u, v56);

        if (v81)
        {

          if (v10)
          {
            v16 = 6;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {

          v16 = 0;
        }
      }

      v50 = v60;
      v49 = v61;
      v30 = v77;
      v21 = v76;
      v20 = v58;
      v19 = v59;
      v18 = v75;
      v23 = v73;
      v22 = v74;
      v25 = v71;
      v24 = v72;
      v27 = v69;
      v26 = v70;
      v29 = v67;
      v28 = v68;
      v45 = v65;
      v44 = v66;
      v47 = v63;
      v46 = v64;
      v48 = v62;
    }

    else
    {
      v51 = v84[272];
      v52 = v84[352];
      memcpy(v83, __dst, 0x161uLL);
      sub_217269EF4(v83, v82);
      v49 = v61;
      v48 = v62;
      v47 = v63;
      v46 = v64;
      v45 = v65;
      v44 = v66;
      v29 = v67;
      v28 = v68;
      v27 = v69;
      v26 = v70;
      v25 = v71;
      v24 = v72;
      v23 = v73;
      v22 = v74;
      v20 = v52;
      v19 = v51;
      v21 = v76;
      v15 = 0;
      v50 = v60;
      v30 = v77;
      v18 = v75;
    }
  }

  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 16) = v18;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  *(a4 + 33) = v86[0];
  *(a4 + 36) = *(v86 + 3);
  *(a4 + 40) = v32;
  *(a4 + 48) = v33;
  *(a4 + 56) = v23;
  *(a4 + 72) = v24;
  *(a4 + 88) = v25;
  *(a4 + 104) = v26;
  *(a4 + 120) = v27;
  *(a4 + 136) = v28;
  *(a4 + 152) = v29;
  *(a4 + 168) = v44;
  *(a4 + 184) = v45;
  *(a4 + 200) = v46;
  *(a4 + 216) = v47;
  *(a4 + 232) = v48;
  *(a4 + 248) = v49;
  *(a4 + 264) = v31;
  *(a4 + 272) = v19;
  *(a4 + 276) = *(v85 + 3);
  *(a4 + 273) = v85[0];
  *(a4 + 280) = v17;
  *(a4 + 288) = v50;
  *(a4 + 304) = v78;
  *(a4 + 312) = v30;
  *(a4 + 320) = v21;
  *(a4 + 336) = v22;
  *(a4 + 352) = v20;
}

uint64_t sub_217696DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25468, &qword_21775CD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217696E14(uint64_t a1)
{
  v2 = *(a1 + 336);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 344);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_217696EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_217696F48(a1, a2, a3);
}

uint64_t sub_217696F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 368);
  OUTLINED_FUNCTION_7_77(*(*v3 + 352));
  v11 = *(v10 + 336);
  OUTLINED_FUNCTION_3_111();
  sub_217752338();
  sub_217752FF8();
  v12 = *(*v4 + 376);
  OUTLINED_FUNCTION_7_77(*(v8 + 360));
  v14 = *(v13 + 344);
  OUTLINED_FUNCTION_3_111();
  sub_217752338();
  sub_217752FF8();
  v15 = (v4 + *(*v4 + 384));
  *v15 = a2;
  v15[1] = a3;
  v17 = *a1;
  v18 = *(a1 + 8);
  return AnyLibraryRequestConfigurationParameters.init(filteringOptions:)(&v17);
}

uint64_t sub_2176970A0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_127();
  v3 = *(v2 + 336);
  OUTLINED_FUNCTION_6_95();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18 - v10;
  OUTLINED_FUNCTION_1_127();
  v13 = *(v12 + 368);
  OUTLINED_FUNCTION_138();
  v14 = OUTLINED_FUNCTION_2_121();
  v15(v14);
  OUTLINED_FUNCTION_1_127();
  OUTLINED_FUNCTION_4_114(*(v16 + 352));
  (*(v5 + 8))(v11, v3);
  return v18;
}

uint64_t sub_2176971A0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_127();
  v3 = *(v2 + 344);
  OUTLINED_FUNCTION_6_95();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18 - v10;
  OUTLINED_FUNCTION_1_127();
  v13 = *(v12 + 376);
  OUTLINED_FUNCTION_138();
  v14 = OUTLINED_FUNCTION_2_121();
  v15(v14);
  OUTLINED_FUNCTION_1_127();
  OUTLINED_FUNCTION_4_114(*(v16 + 360));
  (*(v5 + 8))(v11, v3);
  return v18;
}

uint64_t sub_2176972A0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_80();
  v3 = *(v2 + 344);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27 - v8;
  OUTLINED_FUNCTION_8_80();
  v11 = *(v10 + 336);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v27 - v16;
  OUTLINED_FUNCTION_8_80();
  v19 = v0 + *(v18 + 384);
  v21 = *v19;
  v20 = *(v19 + 8);
  OUTLINED_FUNCTION_8_80();
  v23 = *(v22 + 368);
  OUTLINED_FUNCTION_138();
  (*(v12 + 16))(v17, v0 + v23, v11);
  v24 = *(*v0 + 376);
  OUTLINED_FUNCTION_138();
  (*(v4 + 16))(v9, v0 + v24, v3);
  OUTLINED_FUNCTION_138();
  v28 = v0[7];
  v29 = *(v0 + 64);
  v25 = v21(v17, v9, &v28);
  (*(v4 + 8))(v9, v3);
  (*(v12 + 8))(v17, v11);
  return v25;
}

void sub_2176974D8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_2176974F8();
}

uint64_t sub_217697528(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  OUTLINED_FUNCTION_0_136(a1, *(*v1 + 336));
  v6 = (*(v4 + 8))(v1 + v5);
  v7 = *(*v1 + 376);
  OUTLINED_FUNCTION_0_136(v6, *(v2 + 344));
  (*(v8 + 8))(v1 + v9);
  v10 = *(v1 + *(*v1 + 384) + 8);
}

char *sub_21769760C()
{
  v1 = *v0;
  v2 = AnyLibraryRequestConfigurationParameters.deinit();
  v3 = *(*v2 + 368);
  OUTLINED_FUNCTION_0_136(v2, *(v1 + 336));
  v7 = (*(v4 + 8))(v5 + v6);
  v8 = *(*v2 + 376);
  OUTLINED_FUNCTION_0_136(v7, *(v1 + 344));
  (*(v9 + 8))(&v2[v10]);
  v11 = *&v2[*(*v2 + 384) + 8];

  return v2;
}

uint64_t sub_2176976F8()
{
  v0 = sub_21769760C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Genre.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Genre.name.getter()
{
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71();
  }

  result = sub_2172A4344();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void Genre._editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02228;

  sub_2176CAE24(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217697D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8, void (*a9)(void))
{
  if (!a3)
  {
    goto LABEL_11;
  }

  v11 = *(a3 + 16);
  if (!v11)
  {

LABEL_11:
    OUTLINED_FUNCTION_2_122();
    v29 = MEMORY[0x277D84F90];
    v30 = a6;
    *&v28 = MEMORY[0x277D84F90];
    *(&v28 + 1) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_72();
    return sub_2173C381C(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30);
  }

  v35 = MEMORY[0x277D84F90];
  sub_217752BF8();
  v12 = 0;
  v13 = (a3 + 48);
  do
  {
    if (v12 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v12;
    v14 = *(v13 - 2);
    v15 = *(v13 - 1);
    v16 = *v13;
    v13 += 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_12_58();
    a9();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752BC8();
    v17 = *(v35 + 16);
    sub_217752C08();
    sub_217752C18();
    sub_217752BD8();
  }

  while (v11 != v12);

  if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v11 = v35;
    goto LABEL_9;
  }

LABEL_14:
  type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_23_51();
  sub_217751DE8();
  sub_217752D28();
  OUTLINED_FUNCTION_23_51();

LABEL_9:
  v18 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_2_122();
  v29 = v18;
  v30 = &unk_282959AF8;
  *&v28 = v11;
  *(&v28 + 1) = v18;
  OUTLINED_FUNCTION_6();
  v23 = a4;
  v24 = a5;
  v25 = 0;
  v26 = 1;
  return sub_2173C381C(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30);
}

uint64_t sub_217697F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    goto LABEL_11;
  }

  v8 = *(a3 + 16);
  if (!v8)
  {

LABEL_11:
    OUTLINED_FUNCTION_2_122();
    v32 = MEMORY[0x277D84F90];
    v33 = a6;
    *&v31 = MEMORY[0x277D84F90];
    *(&v31 + 1) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_72();
    return sub_2173C381C(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33);
  }

  v36 = MEMORY[0x277D84F90];
  sub_217752BF8();
  v9 = 0;
  v10 = (a3 + 48);
  do
  {
    if (v9 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v9;
    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    v10 += 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_12_58();
    sub_217698370(v14, v15, v16, v17, v18, v19);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752BC8();
    v20 = *(v36 + 16);
    sub_217752C08();
    sub_217752C18();
    sub_217752BD8();
  }

  while (v8 != v9);

  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v10 = v36;
    goto LABEL_9;
  }

LABEL_14:
  type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_23_51();
  sub_217751DE8();
  sub_217752D28();
  OUTLINED_FUNCTION_23_51();

LABEL_9:
  v21 = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_2_122();
  v32 = v21;
  v33 = &unk_282959AF8;
  *&v31 = v10;
  *(&v31 + 1) = v21;
  OUTLINED_FUNCTION_6();
  v26 = a4;
  v27 = a5;
  v28 = 0;
  v29 = 1;
  return sub_2173C381C(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33);
}

uint64_t sub_217698154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 7630409, 0xE300000000000000, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_2176981A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000035, 0x80000002177B4C10, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_217698200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000030, 0x80000002177B4C50, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_21769825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD00000000000002DLL, 0x80000002177B4CB0, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_2176982B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000017, 0x80000002177B4CE0, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_217698314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 0xD000000000000021, 0x80000002177B49A0, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_217698370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  *&v8 = MEMORY[0x277D84F90];
  *(&v8 + 1) = MEMORY[0x277D84F90];
  return sub_2173C381C(a1, a2, a3, a4, 5001813, 0xE300000000000000, 0, 0, v8, MEMORY[0x277D84F90], a6);
}

uint64_t sub_2176983C0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698420(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698490(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176984F4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698558(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176985BC(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698628(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698690(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176986F4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_217698758(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176987C0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_21769882C(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_9_1(a1, a2, a3);
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = v4;
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v5, v6, v7, v8, v9, v10, v11, 0, v13, v14, v15);
}

uint64_t sub_2176988E0(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
  return sub_2172A4344();
}

uint64_t sub_217698990(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

void Genre.parent.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6A80 != -1)
  {
    OUTLINED_FUNCTION_35_34();
  }

  v26 = qword_280C021F0;

  sub_2176CA6B8(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Genre.debugDescription.getter()
{
  v26 = 0x2865726E6547;
  v27 = 0xE600000000000000;
  *&v21 = 0x22203A6469;
  *(&v21 + 1) = 0xE500000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_19_45();
  OUTLINED_FUNCTION_17_58();

  *&v21 = 0x203A656D616E202CLL;
  *(&v21 + 1) = 0xE900000000000022;
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71();
  }

  v1 = sub_2172A4344();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v1, v3);

  OUTLINED_FUNCTION_19_45();
  OUTLINED_FUNCTION_17_58();

  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_2172A4344();
  if (v5)
  {
    v12 = v4;
    v13 = v5;
    sub_217752AA8();

    strcpy(&v21, ", shortName: ");
    HIBYTE(v21) = -18;
    MEMORY[0x21CEA23B0](v12, v13);

    OUTLINED_FUNCTION_19_45();
    OUTLINED_FUNCTION_17_58();
  }

  if (qword_280BE6A80 != -1)
  {
    OUTLINED_FUNCTION_35_34();
  }

  sub_2176CA6B8(qword_280C021F0, v5, v6, v7, v8, v9, v10, v11, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27);
  if (*(&v17 + 1))
  {
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    *&v17 = 0x746E65726170202CLL;
    *(&v17 + 1) = 0xEA0000000000203ALL;
    v14 = Genre.description.getter();
    MEMORY[0x21CEA23B0](v14);

    MEMORY[0x21CEA23B0](0x746E65726170202CLL, 0xEA0000000000203ALL);

    sub_21728418C(&v21);
  }

  else
  {
    sub_217699F38(&v17);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v26;
}

uint64_t Genre.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t sub_217698D60(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v4)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v5 = *a2;

  return v3(v5);
}

void sub_217698DF0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v34)
  {
    swift_once();
  }

  v35 = *a2;

  sub_2176CAE18(v35, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void Genre._playlists.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE6B08 != -1)
  {
    swift_once();
  }

  v30 = qword_280BE6B10;

  sub_2176CB634(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static Genre.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Genre.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t Genre.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 112))(v6, v3, v4);
  return sub_217753238();
}

uint64_t sub_217699058@<X0>(uint64_t *a1@<X8>)
{
  result = Genre.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Genre.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2172E2134();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2172E2134();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2172E2134();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t sub_217699230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C308, &qword_217791B98);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C021E8 = result;
  return result;
}

uint64_t sub_2176992A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  if (qword_280BE4BF0 != -1)
  {
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_9_80(&qword_280BE4BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C328, &qword_217791BC0);
  OUTLINED_FUNCTION_31_11();
  sub_217751DE8();
  result = OUTLINED_FUNCTION_18_55(0xD000000000000010, 0x80000002177AB890, inited, 0x6B726F77747241, 0xE700000000000000, &unk_282959AF8, v1, v2, sub_217698200);
  qword_280C02210 = result;
  return result;
}

uint64_t sub_2176993B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3A8, &qword_217791C40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02228 = result;
  return result;
}

uint64_t sub_217699428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  if (qword_280BE4BF0 != -1)
  {
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_9_80(&qword_280BE4BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C320, &qword_217791BB8);
  OUTLINED_FUNCTION_31_11();
  sub_217751DE8();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_18_55(v1, 0xEE006F656469566CLL, inited, 0xD000000000000035, 0x80000002177ABB30, v2, v3, v4, sub_2176981A4);
  qword_280C02208 = result;
  return result;
}

uint64_t sub_217699538()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C308, &qword_217791B98);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02220 = result;
  return result;
}

uint64_t sub_2176995B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3B0, qword_217791C48);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C021F8 = result;
  return result;
}

uint64_t sub_217699624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C318, &unk_217791BA8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746E657261705FLL, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C021F0 = result;
  return result;
}

uint64_t sub_217699698()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3B0, qword_217791C48);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E74726F6873, 0xE900000000000065, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02230 = result;
  return result;
}

uint64_t sub_217699710()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C310, &qword_217791BA0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02200 = result;
  return result;
}

uint64_t sub_21769977C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3A0, &qword_217791C38);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, 0x80000002177B48C0, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02218 = result;
  return result;
}

uint64_t sub_2176997F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  if (qword_280BE4A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_80(&qword_280BE4A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C330, &qword_217791BC8);
  OUTLINED_FUNCTION_31_11();
  sub_217751DE8();
  result = OUTLINED_FUNCTION_18_55(0x62614C7472616863, 0xEA00000000006C65, inited, 0x676E69727453, 0xE600000000000000, &unk_282959AF8, v1, v2, sub_21769A090);
  qword_280BE6AE8 = result;
  return result;
}

uint64_t sub_217699938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C300, &qword_217791B90);
  swift_allocObject();
  result = sub_217698758(0x7473696C79616C70, 0xE900000000000073, 0);
  qword_280BE6B10 = result;
  return result;
}

uint64_t static Genre.catalogFilterID(for:)@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = sub_217751F08();

  if (v2)
  {
    *a1 = 25705;
    a1[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217699B0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void static Genre.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 != &type metadata for Track && a4 != &type metadata for Song && a4 != &type metadata for Album && a4 != &type metadata for MusicVideo)
  {
    sub_2173546F8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
  }
}

uint64_t Genre.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE3F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Genre.description.getter()
{
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71();
  }

  v1 = sub_2172A4344();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v1, v3);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0x64692865726E6547;
}

uint64_t static Genre.typeValue.getter()
{
  if (qword_280BE2A80 != -1)
  {
    OUTLINED_FUNCTION_6_96();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE2A88);

  return sub_217751DE8();
}

uint64_t sub_217699E68()
{
  if (qword_280BE2A80 != -1)
  {
    OUTLINED_FUNCTION_6_96();
  }

  xmmword_280BE62D0 = xmmword_280BE2A88;
  qword_280BE62E0 = qword_280BE2A98;
  unk_280BE62E8 = unk_280BE2AA0;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.genre.getter()
{
  if (qword_280BE62C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE62D0);

  return sub_217751DE8();
}

uint64_t sub_217699F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217699FA4()
{
  result = qword_27CB2C2F8;
  if (!qword_27CB2C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C2F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(void))
{

  return sub_217697D44(a1, a2, a3, a4, a5, a6, v9, v10, a9);
}

void sub_21769A0D8(uint64_t a1, void (*a2)(__int128 *__return_ptr, unint64_t, _OWORD *))
{
  v2 = *a1;
  v3 = *a1;
  v33 = *(a1 + 8);
  if (v33 == 1)
  {
    swift_beginAccess();
    v3 = *(v2 + 56);
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v32 = MEMORY[0x277D84F90];
    sub_217275DB0();
    v5 = 0;
    v6 = v2 + 32;
    v7 = v32;
    v16 = v4;
    do
    {
      if (v33)
      {
        swift_beginAccess();
        if (v5 >= *(*(v2 + 56) + 16))
        {
          goto LABEL_17;
        }

        sub_217294634();
        sub_21725CF00(v2, 1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
LABEL_17:
          __break(1u);
          return;
        }

        sub_217202078(v6, &v25, &dword_27CB27E20, &unk_2177589C0);
        sub_217202078(&v25, &v18, &dword_27CB27E20, &unk_2177589C0);
        if (v21)
        {
          v8 = *(v18 + 16);
          v9 = *(v18 + 24);
          v10 = *(v18 + 32);
          sub_217751DE8();
          sub_21729366C(v8);

          sub_2171F06D8(&v25, &dword_27CB27E20, &unk_2177589C0);
        }

        else
        {
          sub_2171F06D8(&v25, &dword_27CB27E20, &unk_2177589C0);
          v22 = v18;
          v23 = v19;
          v24[0] = *v20;
          *(v24 + 9) = *&v20[9];
        }

        v28 = v22;
        v29 = v23;
        v30[0] = v24[0];
        *(v30 + 9) = *(v24 + 9);
      }

      v30[4] = v28;
      v30[5] = v29;
      v31[0] = v30[0];
      *(v31 + 9) = *(v30 + 9);
      v25 = v5;
      v26[0] = v28;
      v26[1] = v29;
      v27[0] = v31[0];
      *(v27 + 9) = *(v30 + 9);
      a2(&v18, v5, v26);
      sub_2171F06D8(&v25, &qword_27CB2C410, &unk_217791F20);
      v32 = v7;
      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_217275DB0();
        v7 = v32;
      }

      ++v5;
      *(v7 + 16) = v11 + 1;
      v12 = v7 + 56 * v11;
      v13 = v18;
      v14 = v19;
      v15 = *v20;
      *(v12 + 80) = *&v20[16];
      *(v12 + 48) = v14;
      *(v12 + 64) = v15;
      *(v12 + 32) = v13;
      v6 += 64;
    }

    while (v16 != v5);
  }
}

uint64_t sub_21769A3D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v6 = *(v5 + 64);
  if (v6)
  {
    v10 = result;
    v12 = *(v5 + 56);
    sub_217751DE8();
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a3, a4, &__src[4]);
    __src[0] = v12;
    __src[1] = v6;
    __src[2] = a2;
    __src[3] = v10;
    v13 = swift_allocObject();
    memcpy((v13 + 16), __src, 0x48uLL);
    sub_217751DE8();
    result = sub_2171F06D8(a5, &qword_27CB24188, &dword_217758930);
    *a5 = v13;
    *(a5 + 24) = &type metadata for MusicCatalogPlaylistEntryResourceIncrementalLoader;
    *(a5 + 32) = &off_28297A108;
  }

  return result;
}

uint64_t sub_21769A540(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 752) = v6;
  *(v7 + 744) = a6;
  *(v7 + 736) = a5;
  *(v7 + 728) = a4;
  *(v7 + 194) = a3;
  *(v7 + 720) = a2;
  *(v7 + 712) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21769A56C()
{
  v1 = *(v0 + 752);
  v2 = v1[1];
  if (!v2)
  {
    return OUTLINED_FUNCTION_2_123();
  }

  v3 = *(v0 + 194);
  v4 = *(v0 + 720);
  v5 = *v1;
  v6 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v6;
  swift_beginAccess();
  v7 = off_280BEBCD0;
  sub_217751DE8();

  (v7)(v8);

  v9 = *(v0 + 576);
  v10 = *(v0 + 584);
  __swift_project_boxed_opaque_existential_1((v0 + 552), v9);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v9, v10, v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 552));
  *(v0 + 184) = v6;
  *(v0 + 192) = 0;
  *(v0 + 48) = v5;
  *(v0 + 56) = v2;
  *(v0 + 80) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  sub_21725EE54((v1 + 4), v0 + 144);
  *(v0 + 16) = v4;
  *(v0 + 24) = v3 & 1;
  v11 = swift_task_alloc();
  *(v0 + 760) = v11;
  *v11 = v0;
  v11[1] = sub_21769A748;

  return (sub_2173EF9B8)(v0 + 200);
}

uint64_t sub_21769A748()
{
  v2 = *(*v1 + 760);
  v5 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = sub_21769ACCC;
  }

  else
  {
    v3 = sub_21769A85C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21769A85C()
{
  v43 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 728);
  *(v0 + 696) = *(v2 + 24);
  sub_217202078(v0 + 200, v0 + 304, &qword_27CB240D0, &unk_21775D400);
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 696;
  *(v4 + 24) = v2;
  sub_217751DE8();
  sub_21769A0D8(v0 + 304, sub_21769BD24);
  v6 = v5;

  sub_2171F06D8(v0 + 304, &qword_27CB2C400, &qword_217791F08);
  v7 = sub_217752DB8();
  if (!v7)
  {

    return sub_217752D08();
  }

  v8 = v7;
  *(v0 + 472) = 0;
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  sub_217202078(v0 + 216, v0 + 632, &qword_27CB24188, &dword_217758930);
  if (*(v0 + 656))
  {
    v9 = *(v0 + 752);
    *(v0 + 624) = *(v0 + 664);
    v10 = *(v0 + 648);
    *(v0 + 592) = *(v0 + 632);
    *(v0 + 608) = v10;
    v11 = *(v0 + 616);
    v12 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_1((v0 + 592), v11);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    v16 = *(v0 + 696);
    v17 = *(v9 + 16);
    v18 = *(v6 + 16);
    sub_217751DE8();

    if (__OFADD__(v17, v18))
    {
      __break(1u);
      return result;
    }

    sub_2172CA838(*(v0 + 752) + 32, v0 + 512);
    *(v0 + 480) = v13;
    *(v0 + 488) = v15;
    *(v0 + 496) = v17 + v18;
    *(v0 + 504) = v16;
    sub_217283154(v0 + 592);
    sub_21769BD50(v0 + 480, v0 + 408);
  }

  else
  {

    sub_2171F06D8(v0 + 632, &qword_27CB24188, &dword_217758930);
  }

  v20 = *(v0 + 728);
  *(v0 + 704) = v8;
  v21 = swift_task_alloc();
  v22 = *(v0 + 736);
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  v23 = sub_217752418();
  v24 = type metadata accessor for RelatedItem();
  WitnessTable = swift_getWitnessTable();
  v41 = sub_2175FA70C(sub_21769BD2C, v21, v23, v24, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v26);

  v27 = *(v0 + 432);
  if (v27)
  {
    v28 = swift_allocObject();
    sub_21769B9B0(v0 + 408, v28 + 16);
    v27 = &off_28297A108;
    v29 = &type metadata for MusicCatalogPlaylistEntryResourceIncrementalLoader;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v42[1] = 0;
    v42[2] = 0;
  }

  v30 = *(v0 + 736);
  v31 = *(v0 + 728);
  v32 = *(v0 + 712);
  v42[0] = v28;
  v42[3] = v29;
  v42[4] = v27;
  v33 = *(v0 + 256);
  v34 = *(v0 + 264);
  v35 = *(v0 + 272);
  v36 = *(v0 + 280);
  v37 = *(v0 + 288);
  v38 = *(v0 + 296);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F06D8(v0 + 200, &qword_27CB27E18, &qword_217791F10);
  sub_217741DEC(v41, 0, v42, v33, v34, v35, v36, v37, v32, v38);
  sub_2171F06D8(v0 + 408, &qword_27CB2C408, &qword_217791F18);
  v39 = *(v0 + 696);

  sub_2171F06D8(v0 + 16, &unk_27CB27E00, &qword_21776BC90);
  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_21769ACCC()
{
  sub_2171F06D8(v0 + 16, &unk_27CB27E00, &qword_21776BC90);
  v1 = *(v0 + 8);
  v2 = *(v0 + 768);

  return v1();
}

void sub_21769AD40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  Track.innerItem.getter();
  v8 = v22;
  v9 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v21);
  v13 = sub_2173AC898(v10, v12, *a3);
  LOBYTE(v9) = v14;

  if (v9)
  {
    Track.innerItem.getter();
    v15 = v22;
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v16 + 8))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v17 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *a3;
    sub_2172C8018();
    *a3 = v21[0];
  }

  else
  {
    if (__OFADD__(v13, 1))
    {
      goto LABEL_8;
    }

    Track.innerItem.getter();
    v18 = v22;
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v19 + 8))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v20 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *a3;
    sub_2172C8018();
    *a3 = v21[0];
  }

  sub_217275710(a2, v21);
  if (!__OFADD__(a1, *(a4 + 16)))
  {
    Playlist.Entry.init(track:position:occurrence:)();
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_21769AF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for RelatedItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21769AFDC(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    v8 = a1[3];
    v9 = a2[3];
    sub_2172634BC();
    if (v10)
    {
      v11 = a1[7];
      v12 = a1[8];
      __swift_project_boxed_opaque_existential_1(a1 + 4, v11);
      v13 = *(v12 + 112);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
      return v13(a2 + 4, v14, v11, v12) & 1;
    }
  }

  return 0;
}

uint64_t sub_21769B0C0(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  MEMORY[0x21CEA3550](v2[2]);
  sub_217269FA4(a1, v2[3]);
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  return (*(v6 + 120))(a1, v5, v6);
}

uint64_t sub_21769B168()
{
  sub_2177531E8();
  sub_21769B0C0(v1);
  return sub_217753238();
}

uint64_t sub_21769B1A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21769BDC0;

  return sub_21769A4CC();
}

uint64_t sub_21769B234(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_217514FAC;

  return sub_21769A540(a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t sub_21769B318()
{
  sub_2177531E8();
  sub_21769B0C0(v1);
  return sub_217753238();
}

uint64_t sub_21769B378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21722D0B0();
  *a2 = result;
  return result;
}

uint64_t sub_21769B3A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21722D0FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21769B3DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21722D0B0();
  *a1 = result;
  return result;
}

uint64_t sub_21769B404(uint64_t a1)
{
  v2 = sub_21769B95C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21769B440(uint64_t a1)
{
  v2 = sub_21769B95C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21769B47C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3B8, &qword_217791CA0);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21769B95C();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  OUTLINED_FUNCTION_4_115();
  v17[0] = sub_217752E68();
  v17[1] = v12;
  LOBYTE(v19) = 1;
  OUTLINED_FUNCTION_4_115();
  if (sub_217752EC8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3C8, &qword_217791CA8);
    sub_21769BA18(&qword_27CB2C3D0, sub_2172E1C68);
    sub_217752EA8();
    v18 = v19;
  }

  else
  {
    sub_2172CAE0C();
    v18 = sub_217751DC8();
  }

  LOBYTE(v19) = 2;
  OUTLINED_FUNCTION_4_115();
  v17[2] = sub_217752E98();
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  Decoder.dataRequestConfiguration.getter(v13, v14);
  v15 = OUTLINED_FUNCTION_1_3();
  v16(v15);
  sub_21769B9B0(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21769B9E8(v17);
}

uint64_t sub_21769B754(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3D8, &qword_217791CB0);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21769B95C();
  sub_2177532F8();
  v19 = *v3;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  sub_21725E964();
  OUTLINED_FUNCTION_28_24();
  if (!v2)
  {
    *&v19 = *(v3 + 3);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C3C8, &qword_217791CA8);
    sub_21769BA18(&qword_27CB2C3E0, sub_2172E1B18);
    OUTLINED_FUNCTION_28_24();
    v15 = *(v3 + 2);
    LOBYTE(v19) = 2;
    sub_217752F78();
  }

  return (*(v8 + 8))(v13, v5);
}

unint64_t sub_21769B95C()
{
  result = qword_27CB2C3C0;
  if (!qword_27CB2C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3C0);
  }

  return result;
}

uint64_t sub_21769BA18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C3C8, &qword_217791CA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogPlaylistEntryResourceIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21769BB78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_21769BBB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21769BC20()
{
  result = qword_27CB2C3E8;
  if (!qword_27CB2C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3E8);
  }

  return result;
}

unint64_t sub_21769BC78()
{
  result = qword_27CB2C3F0;
  if (!qword_27CB2C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3F0);
  }

  return result;
}

unint64_t sub_21769BCD0()
{
  result = qword_27CB2C3F8;
  if (!qword_27CB2C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C3F8);
  }

  return result;
}

uint64_t sub_21769BD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_21769AF50(a1, v2[2], a2);
}

uint64_t sub_21769BD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C408, &qword_217791F18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *CloudPlaylist.Collaboration.init(id:attributes:relationships:views:meta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X3>, char *a4@<X4>, char *a5@<X5>, void *a6@<X8>)
{
  v9 = *a4;
  v10 = *a5;
  *a6 = a1;
  a6[1] = a2;
  v11 = type metadata accessor for CloudPlaylist.Collaboration(0);
  v12 = OUTLINED_FUNCTION_32_44(v11);
  sub_21769BE5C(v12, v13);
  result = memcpy(a6 + v6[6], a3, 0x180uLL);
  *(a6 + v6[7]) = v9;
  *(a6 + v6[8]) = v10;
  return result;
}

uint64_t sub_21769BE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CloudPlaylist.Collaboration.Attributes.init(expirationDate:invitationUrl:joinedStatus:openInvitation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, char a4@<W4>, void *a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  *a5 = a1;
  a5[1] = a2;
  v10 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  v11 = OUTLINED_FUNCTION_32_44(v10);
  result = sub_21751AF10(v11, v12);
  v14 = (a5 + *(v5 + 24));
  *v14 = v8;
  v14[1] = v9;
  *(a5 + *(v5 + 28)) = a4;
  return result;
}

uint64_t CloudPlaylist.Collaboration.Attributes.expirationDate.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudPlaylist.Collaboration.Attributes.invitationUrl.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = *(type metadata accessor for CloudPlaylist.Collaboration.Attributes(v0) + 20);
  return sub_217284868();
}

uint64_t CloudPlaylist.Collaboration.Attributes.joinedStatus.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = (v1 + *(type metadata accessor for CloudPlaylist.Collaboration.Attributes(v2) + 24));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;

  return sub_217751DE8();
}

BOOL static CloudPlaylist.Collaboration.Attributes.== infix(_:_:)(void *a1, void *a2)
{
  v5 = sub_2177516D8();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_128();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v46 - v23;
  v25 = a1[1];
  v26 = a2[1];
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = *a1 == *a2 && v25 == v26;
    if (!v27 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v47 = v8;
  v46 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  v28 = *(v46 + 20);
  v29 = *(v18 + 48);
  sub_217284868();
  sub_217284868();
  OUTLINED_FUNCTION_73(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_73(&v24[v29]);
    if (v27)
    {
      sub_2171F0738(v24, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_21;
    }

LABEL_18:
    sub_2171F0738(v24, &qword_27CB24840, &unk_217758DD0);
    return 0;
  }

  sub_217284868();
  OUTLINED_FUNCTION_73(&v24[v29]);
  if (v30)
  {
    (*(v47 + 8))(v2, v5);
    goto LABEL_18;
  }

  v32 = v47;
  (*(v47 + 32))(v14, &v24[v29], v5);
  OUTLINED_FUNCTION_0_137();
  sub_21769F06C(v33);
  v34 = sub_217751F08();
  v35 = *(v32 + 8);
  v35(v14, v5);
  v35(v2, v5);
  sub_2171F0738(v24, &unk_27CB277C0, &qword_217758DC0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v36 = v46;
  v37 = *(v46 + 24);
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    v42 = *v38 == *v40 && v39 == v41;
    if (!v42 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v41)
    {
      return 0;
    }
  }

  v43 = *(v36 + 28);
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44 != 2)
  {
    return v45 != 2 && ((v45 ^ v44) & 1) == 0;
  }

  return v45 == 2;
}

uint64_t sub_21769C3A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617469766E69 && a2 == 0xED00006C72556E6FLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x745364656E696F6ALL && a2 == 0xEC00000073757461;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x69766E496E65706FLL && a2 == 0xEE006E6F69746174)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_21769C514(char a1)
{
  result = 0x6974617269707865;
  switch(a1)
  {
    case 1:
      result = 0x6974617469766E69;
      break;
    case 2:
      result = 0x745364656E696F6ALL;
      break;
    case 3:
      result = 0x69766E496E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21769C5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21769C3A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21769C60C(uint64_t a1)
{
  v2 = sub_21769F018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21769C648(uint64_t a1)
{
  v2 = sub_21769F018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudPlaylist.Collaboration.Attributes.encode(to:)()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C428, &qword_217791F40);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22[-v11];
  OUTLINED_FUNCTION_68();
  sub_21769F018();
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v13 = *v0;
  v14 = v0[1];
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_72();
  sub_217752EF8();
  if (!v1)
  {
    v15 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    OUTLINED_FUNCTION_16_68(v15);
    sub_2177516D8();
    OUTLINED_FUNCTION_0_137();
    sub_21769F06C(v16);
    OUTLINED_FUNCTION_72();
    sub_217752F38();
    v17 = (v0 + *(v2 + 24));
    v18 = v17[1];
    v23 = *v17;
    v24 = v18;
    v22[15] = 2;
    v19 = sub_21769F0B0();
    sub_217751DE8();
    OUTLINED_FUNCTION_72();
    sub_217752F38();

    if (!v19)
    {
      v20 = *(v3 + *(v2 + 28));
      LOBYTE(v23) = 3;
      OUTLINED_FUNCTION_67_0();
      sub_217752F08();
    }
  }

  return (*(v6 + 8))(v12, v4);
}

uint64_t CloudPlaylist.Collaboration.Attributes.hash(into:)()
{
  v2 = sub_2177516D8();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_128();
  if (v0[1])
  {
    v15 = *v0;
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v16 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  v17 = v16[5];
  sub_217284868();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    (*(v5 + 32))(v11, v1, v2);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_0_137();
    sub_21769F06C(v18);
    sub_217751EB8();
    (*(v5 + 8))(v11, v2);
  }

  v19 = (v0 + v16[6]);
  if (v19[1])
  {
    v20 = *v19;
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (*(v0 + v16[7]) != 2)
  {
    OUTLINED_FUNCTION_24();
  }

  return sub_217753208();
}

void CloudPlaylist.Collaboration.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v33 = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C440, &qword_217791F48);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v34 = v11;
  v35 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v16 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  v23 = (v22 - v21);
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21769F018();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v36) = 0;
    *v23 = sub_217752E18();
    v23[1] = v25;
    v31[1] = v25;
    v32 = v23;
    sub_2177516D8();
    LOBYTE(v36) = 1;
    OUTLINED_FUNCTION_0_137();
    sub_21769F06C(v26);
    sub_217752E58();
    sub_21751AF10(v8, v32 + v16[5]);
    sub_21769F104();
    sub_217752E58();
    v27 = v32;
    *(v32 + v16[6]) = v36;
    LOBYTE(v36) = 3;
    v28 = sub_217752E28();
    v29 = OUTLINED_FUNCTION_13_64();
    v30(v29);
    *(v27 + v16[7]) = v28;
    sub_21769F744();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21769F79C(v27, type metadata accessor for CloudPlaylist.Collaboration.Attributes);
  }

  OUTLINED_FUNCTION_170();
}

void *CloudPlaylist.Collaboration.Relationships.init(collaborators:pendingCollaborators:playlists:)@<X0>(void *__src@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(a4, __src, 0x80uLL);
  memcpy((a4 + 128), a2, 0x80uLL);

  return memcpy((a4 + 256), a3, 0x80uLL);
}

uint64_t CloudPlaylist.Collaboration.Relationships.CodingKeys.init(stringValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t CloudPlaylist.Collaboration.Relationships.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F62616C6C6F63;
  }
}

uint64_t sub_21769D08C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2177074FC();
}

uint64_t sub_21769D0B0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudPlaylist.Collaboration.Relationships.CodingKeys.init(stringValue:)(a1);
}

uint64_t sub_21769D0BC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylist.Collaboration.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21769D100(uint64_t a1)
{
  v2 = sub_21769F158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21769D13C(uint64_t a1)
{
  v2 = sub_21769F158();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudPlaylist.Collaboration.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_22_55();
  OUTLINED_FUNCTION_22_55();
  if (v33)
  {
    v0 = sub_217284868();
    if (!v34)
    {
LABEL_11:
      sub_2171F0738(v31, &qword_27CB24260, &qword_217758678);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v30[0]);
    v8 = sub_2172DE208(v31, v30);
    OUTLINED_FUNCTION_63(v30);
    OUTLINED_FUNCTION_63(v31);
    sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v34)
    {
      goto LABEL_13;
    }

    sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
  }

  OUTLINED_FUNCTION_22_55();
  OUTLINED_FUNCTION_22_55();
  if (!v33)
  {
    if (!v34)
    {
      sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
      goto LABEL_18;
    }

LABEL_13:
    v18 = &unk_27CB26330;
    v19 = &unk_217791F60;
LABEL_14:
    sub_2171F0738(v32, v18, v19);
    return 0;
  }

  v9 = sub_217284868();
  if (!v34)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_75(v9, v10, v11, v12, v13, v14, v15, v16, v30[0]);
  v17 = sub_2172DE208(v31, v30);
  OUTLINED_FUNCTION_63(v30);
  OUTLINED_FUNCTION_63(v31);
  sub_2171F0738(v32, &qword_27CB24258, &unk_217791F50);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  OUTLINED_FUNCTION_22_55();
  OUTLINED_FUNCTION_22_55();
  if (!v33)
  {
    if (!v34)
    {
      sub_2171F0738(v32, &qword_27CB242C0, &unk_21775D650);
      return 1;
    }

    goto LABEL_26;
  }

  v21 = sub_217284868();
  if (!v34)
  {
    sub_2171F0738(v31, &qword_27CB242C8, &unk_217758970);
LABEL_26:
    v18 = &qword_27CB25198;
    v19 = &qword_21775B550;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_75(v21, v22, v23, v24, v25, v26, v27, v28, v30[0]);
  v29 = sub_2172DE118(v31, v30);
  sub_2171F0738(v30, &qword_27CB242C8, &unk_217758970);
  sub_2171F0738(v31, &qword_27CB242C8, &unk_217758970);
  sub_2171F0738(v32, &qword_27CB242C0, &unk_21775D650);
  return (v29 & 1) != 0;
}

uint64_t CloudPlaylist.Collaboration.Relationships.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C450, &qword_217791F70);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13[-v8];
  OUTLINED_FUNCTION_68();
  sub_21769F158();
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v13[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24260, &qword_217758678);
  OUTLINED_FUNCTION_4_9();
  sub_21769F270(v10);
  OUTLINED_FUNCTION_106();
  sub_217752F38();
  if (!v0)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_106();
    sub_217752F38();
    v13[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    OUTLINED_FUNCTION_4_9();
    sub_21769F3A4(v11);
    sub_217752F38();
  }

  return (*(v3 + 8))(v9, v1);
}

uint64_t CloudPlaylist.Collaboration.Relationships.hash(into:)(uint64_t a1)
{
  v2 = sub_217284868();
  if (v44)
  {
    OUTLINED_FUNCTION_10_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_24();
    sub_2172DE73C(a1);
    sub_2171F0738(&v27, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v10 = sub_217284868();
  if (v44)
  {
    OUTLINED_FUNCTION_10_1(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_24();
    sub_2172DE73C(a1);
    sub_2171F0738(&v27, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_217284868();
  if (!v44)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  OUTLINED_FUNCTION_24();
  sub_2172DE724(a1);
  return sub_2171F0738(&v27, &qword_27CB242C8, &unk_217758970);
}

uint64_t CloudPlaylist.Collaboration.Relationships.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_217284868();
  if (v43)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    sub_217753208();
    sub_2172DE73C(v44);
    sub_2171F0738(v26, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  v8 = sub_217284868();
  if (v43)
  {
    OUTLINED_FUNCTION_180(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    sub_217753208();
    sub_2172DE73C(v44);
    sub_2171F0738(v26, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  v16 = sub_217284868();
  if (v43)
  {
    OUTLINED_FUNCTION_180(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    sub_217753208();
    sub_2172DE724(v44);
    sub_2171F0738(v26, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPlaylist.Collaboration.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C460, &qword_217791F78);
  OUTLINED_FUNCTION_0_0(v17);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_128();
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21769F158();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24260, &qword_217758678);
    OUTLINED_FUNCTION_3_90();
    sub_21769F270(v12);
    OUTLINED_FUNCTION_24_46();
    memcpy(v19, v18, sizeof(v19));
    OUTLINED_FUNCTION_24_46();
    memcpy(v20, v18, sizeof(v20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    OUTLINED_FUNCTION_3_90();
    sub_21769F3A4(v13);
    sub_217752E58();
    v14 = *(v6 + 8);
    v15 = OUTLINED_FUNCTION_5_3();
    v16(v15);
    memcpy(v21, v18, sizeof(v21));
    sub_21769F418(v19, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217269E04(v19);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21769DC6C()
{
  sub_2177531E8();
  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE73C(v3);
    sub_2171F0738(__dst, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE73C(v3);
    sub_2171F0738(__dst, &qword_27CB24260, &qword_217758678);
  }

  else
  {
    sub_217753208();
  }

  sub_217284868();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v3);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_21769DE10(uint64_t a1)
{
  v2 = sub_21769F450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21769DE4C(uint64_t a1)
{
  v2 = sub_21769F450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21769DF50(uint64_t a1)
{
  v2 = sub_21769F4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21769DF8C(uint64_t a1)
{
  v2 = sub_21769F4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21769E00C()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_128();
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_2177532F8();
  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_5_3();
  v16(v15);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPlaylist.Collaboration.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudPlaylist.Collaboration.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudPlaylist.Collaboration.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = *(type metadata accessor for CloudPlaylist.Collaboration(v0) + 20);
  return sub_21769F744();
}

uint64_t CloudPlaylist.Collaboration.relationships.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = *(type metadata accessor for CloudPlaylist.Collaboration(v0) + 24);
  return sub_217284868();
}

uint64_t CloudPlaylist.Collaboration.views.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudPlaylist.Collaboration(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudPlaylist.Collaboration.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudPlaylist.Collaboration(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_21769E2D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4AD0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4AE0;
  v2 = byte_280BE4AE8;
  *(v0 + 32) = qword_280BE4AD8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2C420 = v0;

  return sub_217751DE8();
}

uint64_t static CloudPlaylist.Collaboration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = type metadata accessor for CloudPlaylist.Collaboration(0);
  if (!static CloudPlaylist.Collaboration.Attributes.== infix(_:_:)((v1 + v4[5]), (v0 + v4[5])))
  {
    goto LABEL_15;
  }

  v5 = v4[6];
  sub_217284868();
  sub_217284868();
  if (v12 != 1)
  {
    sub_217284868();
    if (v13[2] != 1)
    {
      memcpy(v9, v13, sizeof(v9));
      v6 = static CloudPlaylist.Collaboration.Relationships.== infix(_:_:)();
      sub_217269E04(v9);
      sub_217269E04(v10);
      sub_2171F0738(v11, &qword_27CB24250, &qword_217791F90);
      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_217269E04(v10);
LABEL_12:
    sub_2171F0738(v11, &qword_27CB2C488, &qword_217791F98);
    goto LABEL_15;
  }

  if (v13[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v11, &qword_27CB24250, &qword_217791F90);
LABEL_14:
  if (*(v1 + v4[7]) == *(v0 + v4[7]))
  {
    v7 = *(v1 + v4[8]) ^ *(v0 + v4[8]) ^ 1;
    return v7 & 1;
  }

LABEL_15:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_21769E564(char a1)
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

uint64_t sub_21769E5F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21769E64C(uint64_t a1)
{
  v2 = sub_21769F4F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21769E688(uint64_t a1)
{
  v2 = sub_21769F4F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudPlaylist.Collaboration.encode(to:)()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C490, &qword_217791FA0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19 - v11;
  OUTLINED_FUNCTION_68();
  sub_21769F4F8();
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v13 = v0[1];
  v21 = *v0;
  v22 = v13;
  v20 = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_67_0();
  sub_217752F88();
  if (!v1)
  {
    v14 = type metadata accessor for CloudPlaylist.Collaboration(0);
    v15 = OUTLINED_FUNCTION_16_68(v14);
    type metadata accessor for CloudPlaylist.Collaboration.Attributes(v15);
    OUTLINED_FUNCTION_9_81();
    sub_21769F06C(v16);
    OUTLINED_FUNCTION_72();
    sub_217752F88();
    v17 = v2[6];
    LOBYTE(v21) = 2;
    sub_21769F54C();
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
    LOBYTE(v21) = *(v3 + v2[7]);
    v20 = 3;
    sub_21769F5A0();
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
    LOBYTE(v21) = *(v3 + v2[8]);
    v20 = 4;
    sub_21769F5F4();
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
  }

  return (*(v6 + 8))(v12, v4);
}

uint64_t CloudPlaylist.Collaboration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_217751FF8();
  v6 = type metadata accessor for CloudPlaylist.Collaboration(0);
  v7 = v1 + v6[5];
  CloudPlaylist.Collaboration.Attributes.hash(into:)();
  v8 = v2 + v6[6];
  sub_217264EA8(a1);
  v9 = *(v2 + v6[7]);
  sub_217753208();
  v10 = *(v2 + v6[8]);
  return sub_217753208();
}

uint64_t sub_21769E99C(void (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

void CloudPlaylist.Collaboration.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v37 = v0;
  v2 = v1;
  v32[1] = v3;
  v33 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
  v4 = OUTLINED_FUNCTION_43(v33);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C4C0, &qword_217791FA8);
  OUTLINED_FUNCTION_0_0(v36);
  v34 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = v32 - v16;
  v18 = type metadata accessor for CloudPlaylist.Collaboration(0);
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  v25 = (v24 - v23);
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21769F4F8();
  v35 = v17;
  v27 = v37;
  sub_2177532C8();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2172E1C68();
    sub_217752EA8();
    v28 = v38[1];
    *v25 = v38[0];
    v25[1] = v28;
    v37 = v28;
    LOBYTE(v38[0]) = 1;
    OUTLINED_FUNCTION_9_81();
    sub_21769F06C(v29);
    sub_217752EA8();
    sub_21769BE5C(v10, v25 + v18[5]);
    sub_21769F648();
    OUTLINED_FUNCTION_11_73();
    v33 = 0;
    sub_217752E58();
    memcpy(v25 + v18[6], v38, 0x180uLL);
    sub_21769F69C();
    OUTLINED_FUNCTION_11_73();
    sub_217752E58();
    *(v25 + v18[7]) = v38[0];
    sub_21769F6F0();
    OUTLINED_FUNCTION_11_73();
    sub_217752E58();
    v30 = OUTLINED_FUNCTION_2_124();
    v31(v30);
    *(v25 + v18[8]) = v38[0];
    sub_21769F744();
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21769F79C(v25, type metadata accessor for CloudPlaylist.Collaboration);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21769EE40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudPlaylist.Collaboration.CollaboratorStatus.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudPlaylist.Collaboration.CollaboratorStatus.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_21769EF00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudPlaylist.Collaboration.CollaboratorStatus.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_21769EF40@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylist.Collaboration.CollaboratorStatus.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21769F018()
{
  result = qword_27CB2C430;
  if (!qword_27CB2C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C430);
  }

  return result;
}

unint64_t sub_21769F06C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F0B0()
{
  result = qword_27CB2C438;
  if (!qword_27CB2C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C438);
  }

  return result;
}

unint64_t sub_21769F104()
{
  result = qword_27CB2C448;
  if (!qword_27CB2C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C448);
  }

  return result;
}

unint64_t sub_21769F158()
{
  result = qword_27CB2C458;
  if (!qword_27CB2C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C458);
  }

  return result;
}

unint64_t sub_21769F1AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_21769F06C(&unk_27CB251C8);
    sub_21769F06C(&unk_27CB251D0);
    result = OUTLINED_FUNCTION_44();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F270(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24260, &qword_217758678);
    sub_21769F2E4(v4);
    result = OUTLINED_FUNCTION_20_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F2E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A30, &qword_217758FE8);
    sub_21769F06C(&unk_27CB26358);
    sub_21769F06C(&unk_27CB26360);
    result = OUTLINED_FUNCTION_44();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F3A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_21769F1AC(v4);
    result = OUTLINED_FUNCTION_20_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21769F450()
{
  result = qword_27CB2C470;
  if (!qword_27CB2C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C470);
  }

  return result;
}

unint64_t sub_21769F4A4()
{
  result = qword_27CB2C480;
  if (!qword_27CB2C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C480);
  }

  return result;
}

unint64_t sub_21769F4F8()
{
  result = qword_27CB2C498;
  if (!qword_27CB2C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C498);
  }

  return result;
}

unint64_t sub_21769F54C()
{
  result = qword_27CB2C4A8;
  if (!qword_27CB2C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4A8);
  }

  return result;
}

unint64_t sub_21769F5A0()
{
  result = qword_27CB2C4B0;
  if (!qword_27CB2C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4B0);
  }

  return result;
}

unint64_t sub_21769F5F4()
{
  result = qword_27CB2C4B8;
  if (!qword_27CB2C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4B8);
  }

  return result;
}

unint64_t sub_21769F648()
{
  result = qword_27CB2C4D0;
  if (!qword_27CB2C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4D0);
  }

  return result;
}

unint64_t sub_21769F69C()
{
  result = qword_27CB2C4D8;
  if (!qword_27CB2C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4D8);
  }

  return result;
}

unint64_t sub_21769F6F0()
{
  result = qword_27CB2C4E0;
  if (!qword_27CB2C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4E0);
  }

  return result;
}

uint64_t sub_21769F744()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_21769F79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21769F840()
{
  result = qword_27CB2C4F0;
  if (!qword_27CB2C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4F0);
  }

  return result;
}

unint64_t sub_21769F898()
{
  result = qword_27CB2C4F8;
  if (!qword_27CB2C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C4F8);
  }

  return result;
}

unint64_t sub_21769F8F0()
{
  result = qword_27CB2C500;
  if (!qword_27CB2C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C500);
  }

  return result;
}

unint64_t sub_21769F948()
{
  result = qword_27CB2C508;
  if (!qword_27CB2C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C510, &qword_217792158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C508);
  }

  return result;
}

unint64_t sub_21769F9B0()
{
  result = qword_27CB2C518;
  if (!qword_27CB2C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C518);
  }

  return result;
}

unint64_t sub_21769FA08()
{
  result = qword_27CB2C520;
  if (!qword_27CB2C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C520);
  }

  return result;
}

unint64_t sub_21769FA60()
{
  result = qword_27CB2C528;
  if (!qword_27CB2C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C528);
  }

  return result;
}

unint64_t sub_21769FBAC()
{
  result = qword_27CB2C538;
  if (!qword_27CB2C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C538);
  }

  return result;
}

void sub_21769FC28()
{
  type metadata accessor for CloudPlaylist.Collaboration.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE4568);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE4570);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE4558);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21769FD44()
{
  sub_2172E2E58(319, &qword_280BE7598);
  if (v0 <= 0x3F)
  {
    sub_2172E2DB0();
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE4560);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE7540);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C8PlaylistV12CollaboratorVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21769FE48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 384))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21769FE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 384) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *_s13CollaborationV13RelationshipsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2176A0050(_BYTE *result, int a2, int a3)
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

_BYTE *_s13CollaborationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s13CollaborationV10AttributesV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176A02E8()
{
  result = qword_27CB2C540;
  if (!qword_27CB2C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C540);
  }

  return result;
}

unint64_t sub_2176A0340()
{
  result = qword_27CB2C548;
  if (!qword_27CB2C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C548);
  }

  return result;
}

unint64_t sub_2176A0398()
{
  result = qword_27CB2C550;
  if (!qword_27CB2C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C550);
  }

  return result;
}

unint64_t sub_2176A03F0()
{
  result = qword_27CB2C558;
  if (!qword_27CB2C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C558);
  }

  return result;
}

unint64_t sub_2176A0448()
{
  result = qword_27CB2C560;
  if (!qword_27CB2C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C560);
  }

  return result;
}

unint64_t sub_2176A04A0()
{
  result = qword_27CB2C568;
  if (!qword_27CB2C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C568);
  }

  return result;
}

unint64_t sub_2176A04F8()
{
  result = qword_27CB2C570;
  if (!qword_27CB2C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C570);
  }

  return result;
}

unint64_t sub_2176A0550()
{
  result = qword_27CB2C578;
  if (!qword_27CB2C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C578);
  }

  return result;
}

unint64_t sub_2176A05A8()
{
  result = qword_27CB2C580;
  if (!qword_27CB2C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C580);
  }

  return result;
}

unint64_t sub_2176A0600()
{
  result = qword_27CB2C588;
  if (!qword_27CB2C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C588);
  }

  return result;
}

unint64_t sub_2176A0654()
{
  result = qword_27CB2C590;
  if (!qword_27CB2C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C590);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_68(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(v1 - 80) = 1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_22_55()
{

  return sub_217284868();
}

uint64_t MusicIdentifierKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t MusicIdentifierKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_217752B38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2171FF30C(a1, v20);
  sub_2176A0A9C();
  sub_21758ABC8();
  sub_217752258();
  if (!v2)
  {
    v12 = v21;
    v11 = v22;
    sub_217751DE8();
    sub_21758AC1C(v12, v11, v20);
    v13 = v20[0];
    if (LOBYTE(v20[0]) == 4)
    {
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_217753298();
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177B4DD0);
      v21 = v12;
      v22 = v11;
      sub_217752C78();

      MEMORY[0x21CEA23B0](46, 0xE100000000000000);
      sub_217752B08();
      v15 = sub_217752B48();
      swift_allocError();
      v17 = v16;
      (*(v6 + 16))(v16, v10, v5);
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84168], v15);
      swift_willThrow();
      (*(v6 + 8))(v10, v5);
    }

    else
    {

      *a2 = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2176A0A9C()
{
  result = qword_280BE8300;
  if (!qword_280BE8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8300);
  }

  return result;
}

uint64_t MusicIdentifierKind.encode(to:)()
{
  *v0;
  sub_2176A0C2C();
  sub_21758ABC8();
  sub_217752208();
}

unint64_t sub_2176A0C2C()
{
  result = qword_280BE8308;
  if (!qword_280BE8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8308);
  }

  return result;
}

unint64_t sub_2176A0C84()
{
  result = qword_27CB2C598;
  if (!qword_27CB2C598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C5A0, &qword_217792C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C598);
  }

  return result;
}

unint64_t sub_2176A0CEC()
{
  result = qword_27CB2C5A8;
  if (!qword_27CB2C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicIdentifierKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PropertyProvider.mergeProperty<A>(for:from:using:key:preferring:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35[1] = a1;
  v35[0] = a8;
  v12 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v35 - v19;
  OUTLINED_FUNCTION_0();
  v22 = v21;
  v24 = *(v23 + 64);
  v27.n128_f64[0] = MEMORY[0x28223BE20](v25, v26);
  v29 = v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a5 & 1) != 0 || (swift_getAtKeyPath(), memcpy(v38, v37, 0x221uLL), memcpy(v39, v37, 0x221uLL), get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v39) == 1))
  {
    (*(v14 + 16))(v20, a4, v12, v27);
    if (__swift_getEnumTagSinglePayload(v20, 1, a6) == 1)
    {
      return (*(v14 + 8))(v20, v12);
    }

    (*(v22 + 32))(v29, v20, a6);
    sub_2176A11C4(a3, v35[0], &v40);
    if (v41)
    {
      sub_2171F3F0C(&v40, v42);
      sub_2171FF30C(v42, v39);
      v37[0] = 1;
      memset(&v37[1], 0, 24);
      Artwork.init(_:alternateText:existingColorAnalysis:)(v39, 0, 0, v37, v38);
      memcpy(v39, v38, 0x221uLL);
      nullsub_1(v39, v31);
      memcpy(v37, v39, 0x221uLL);
      sub_217284028(v38, &v36);
      swift_setAtWritableKeyPath();
      sub_217284084(v38);
      __swift_destroy_boxed_opaque_existential_1(v42);
      return (*(v22 + 8))(v29, a6);
    }

    (*(v22 + 8))(v29, a6);
    v32 = &qword_27CB28308;
    v33 = &qword_21776C430;
    v34 = &v40;
  }

  else
  {
    v32 = &qword_27CB24400;
    v33 = &unk_21775E9A0;
    v34 = v38;
  }

  return sub_2171F06D8(v34, v32, v33);
}

uint64_t LegacyModelArtworkKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

void sub_2176A11C4(void *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  sub_2177521E8();
  v6 = sub_217751F18();

  v7 = [a1 musicKit:v6 artworkCatalogForProperty:?];

  if (v7)
  {
    swift_getObjectType();
    v8 = sub_217717634();
    swift_unknownObjectRelease();
    v9 = &off_28297F3C8;
    v10 = &type metadata for SoftLinking_ArtworkCatalog;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v8;
  a3[3] = v10;
  a3[4] = v9;
}

uint64_t PropertyProvider.mergeProperty<A, B>(for:from:relationship:ofType:property:preferring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*a6 & 1) != 0 || (swift_getAtKeyPath(), memcpy(__dst, __src, 0x221uLL), memcpy(v20, __src, 0x221uLL), get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v20) == 1))
  {
    result = sub_2175FB398(MEMORY[0x277D84F68] + 8, a10, v20);
    v11 = v20[0];
    if (!v20[0])
    {
      return result;
    }

    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_2176A11C4(v11, AssociatedConformanceWitness, &v21);
    if (v22)
    {
      sub_2171F3F0C(&v21, v23);
      sub_2171FF30C(v23, v20);
      __src[0] = 1;
      memset(&__src[1], 0, 24);
      Artwork.init(_:alternateText:existingColorAnalysis:)(v20, 0, 0, __src, __dst);
      memcpy(v20, __dst, 0x221uLL);
      nullsub_1(v20, v13);
      memcpy(__src, v20, 0x221uLL);
      sub_217284028(__dst, v17);
      swift_setAtWritableKeyPath();
      swift_unknownObjectRelease();
      sub_217284084(__dst);
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    swift_unknownObjectRelease();
    v14 = &qword_27CB28308;
    v15 = &qword_21776C430;
    v16 = &v21;
  }

  else
  {
    v14 = &qword_27CB24400;
    v15 = &unk_21775E9A0;
    v16 = __dst;
  }

  return sub_2171F06D8(v16, v14, v15);
}

_OWORD *Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 520);
  if (v5)
  {
    swift_beginAccess();
    v6 = v5[7];
    v7 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
    OUTLINED_FUNCTION_0();
    v9 = v8;
    v11 = *(v10 + 64);
    v14 = MEMORY[0x28223BE20](v12, v13);
    v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v9 + 16))(v16, v14);
    (*(v7 + 104))(&v37, v6, v7);
    (*(v9 + 8))(v16, v6);
    return sub_2172124CC(&v37, a3);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    memcpy(v33, v3, sizeof(v33));
    v34 = 0;
    v35 = *(v3 + 528);
    v36 = *(v3 + 544);
    v20 = Artwork._makeCloudArtworkCatalog(cropStyle:)(a1, a2);
    swift_beginAccess();
    v21 = v20[7];
    v22 = v20[8];
    __swift_project_boxed_opaque_existential_1(v20 + 4, v21);
    OUTLINED_FUNCTION_0();
    v24 = v23;
    v26 = *(v25 + 64);
    v29 = MEMORY[0x28223BE20](v27, v28);
    v31 = &v33[-v30 - 8];
    (*(v24 + 16))(&v33[-v30 - 8], v29);

    (*(v22 + 104))(v21, v22);
    result = (*(v24 + 8))(v31, v21);
    if (*(&v38 + 1))
    {
      return sub_2171F06D8(&v37, &qword_27CB2AD40, &qword_2177583F0);
    }
  }

  return result;
}

unint64_t sub_2176A1758()
{
  result = qword_27CB2C5B0;
  if (!qword_27CB2C5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C5B8, &qword_217792D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5B0);
  }

  return result;
}

unint64_t sub_2176A17C0()
{
  result = qword_27CB2C5C0;
  if (!qword_27CB2C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelArtworkKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 CloudCoverArtworkRecipe.init(expressionID:version:colorInformation:textColor:)@<Q0>(void *__src@<X4>, uint64_t a2@<X0>, char a3@<W1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a6 + 32);
  *a7 = a2;
  *(a7 + 8) = a3 & 1;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  memcpy((a7 + 32), __src, 0xA0uLL);
  result = *a6;
  v11 = *(a6 + 16);
  *(a7 + 192) = *a6;
  *(a7 + 208) = v11;
  *(a7 + 224) = v9;
  return result;
}

uint64_t CloudCoverArtworkRecipe.expressionID.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CloudCoverArtworkRecipe.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return v1;
}

uint64_t CloudCoverArtworkRecipe.colorInformation.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0xA0uLL);
  memcpy(a1, (v1 + 32), 0xA0uLL);
  return sub_2176A19DC(__dst, v4);
}

uint64_t sub_2176A19DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C5C8, &qword_217792E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

MusicKit::CloudCoverArtworkRecipe::CodingKeys_optional __swiftcall CloudCoverArtworkRecipe.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudCoverArtworkRecipe.CodingKeys.stringValue.getter()
{
  result = 0x6973736572707865;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x666E49726F6C6F63;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176A1B9C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudCoverArtworkRecipe.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176A1BE0(uint64_t a1)
{
  v2 = sub_2176A2CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A1C1C(uint64_t a1)
{
  v2 = sub_2176A2CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudCoverArtworkRecipe.== infix(_:_:)(uint64_t *a1, double *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = a1[3];
  OUTLINED_FUNCTION_6_97(v38);
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  v10 = *(a1 + 26);
  v29 = a1[27];
  v30 = a1[28];
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 2);
  v13 = *(a2 + 3);
  OUTLINED_FUNCTION_8_81(v39);
  v15 = a2[24];
  v16 = a2[25];
  v17 = a2[26];
  v19 = *(a2 + 27);
  v18 = *(a2 + 28);
  if (v5)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *&v11)
    {
      v20 = v12;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }

    v21 = *(a2 + 27);
    v22 = *(a2 + 28);
    v23 = v6 == v14 && v7 == v13;
    if (!v23 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v21 = *(a2 + 27);
    v22 = *(a2 + 28);
    if (v13)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_6_97(__src);
  OUTLINED_FUNCTION_8_81(&__src[160]);
  OUTLINED_FUNCTION_6_97(v37);
  if (sub_21726A474(v37) == 1)
  {
    OUTLINED_FUNCTION_8_81(__dst);
    if (sub_21726A474(__dst) == 1)
    {
      OUTLINED_FUNCTION_6_97(v35);
      sub_2176A19DC(v38, v33);
      sub_2176A19DC(v39, v33);
      sub_2171F06D8(v35, &qword_27CB2C5C8, &qword_217792E50);
      goto LABEL_25;
    }

    sub_2176A19DC(v38, v35);
    sub_2176A19DC(v39, v35);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_6_97(v35);
  OUTLINED_FUNCTION_8_81(__dst);
  if (sub_21726A474(__dst) == 1)
  {
    OUTLINED_FUNCTION_6_97(v33);
    sub_2176A19DC(v38, v32);
    sub_2176A19DC(v39, v32);
    sub_2176A19DC(v35, v32);
    sub_2176A1F98(v33);
LABEL_23:
    memcpy(__dst, __src, sizeof(__dst));
    sub_2171F06D8(__dst, &qword_27CB2C5D0, &qword_217792E58);
    return 0;
  }

  sub_2176A19DC(v38, v33);
  sub_2176A19DC(v39, v33);
  sub_2176A19DC(v35, v33);
  v24 = static CloudCoverArtworkRecipe.ColorInformation.== infix(_:_:)((a1 + 4), (a2 + 4));
  OUTLINED_FUNCTION_8_81(v31);
  sub_2176A1F98(v31);
  OUTLINED_FUNCTION_6_97(v32);
  sub_2176A1F98(v32);
  OUTLINED_FUNCTION_6_97(v33);
  sub_2171F06D8(v33, &qword_27CB2C5C8, &qword_217792E50);
  if (!v24)
  {
    return 0;
  }

LABEL_25:
  if (!v30)
  {
    if (!v22)
    {

      return 1;
    }

LABEL_36:
    sub_217751DE8();

    return 0;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  if (v8 != v15 || v9 != v16 || v10 != v17)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v28 = v29 == v21 && v30 == v22;
  return v28 || (sub_217753058() & 1) != 0;
}

void CloudCoverArtworkRecipe.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v26 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C5D8, &qword_217792E60);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - v11;
  v13 = *v0;
  v14 = *(v0 + 8);
  v15 = v0[3];
  v24 = v0[2];
  v25 = v13;
  v23 = v15;
  memcpy(v32, v0 + 4, 0xA0uLL);
  v16 = *(v0 + 12);
  v20 = *(v0 + 13);
  v21 = v16;
  v22 = v0[28];
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2176A2CD8();
  sub_2177532F8();
  v31[0] = 0;
  v18 = v26;
  sub_217752F28();
  if (!v18)
  {
    v19 = v22;
    v31[0] = 1;
    sub_217752EF8();
    OUTLINED_FUNCTION_14_61(v31);
    sub_2176A19DC(v32, v30);
    sub_2176A2D2C();
    sub_217752F38();
    memcpy(v30, v31, sizeof(v30));
    sub_2171F06D8(v30, &qword_27CB2C5C8, &qword_217792E50);
    v27 = v21;
    v28 = v20;
    v29 = v19;
    sub_2172A9724();
    sub_217751DE8();
    sub_217752F38();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCoverArtworkRecipe.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[3];
  v12 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[11];
  v16 = v0[10];
  v17 = v0[8];
  v9 = v0[13];
  v14 = v0[9];
  v15 = v0[12];
  v13 = v0[14];
  v25 = v0[16];
  v26 = v0[15];
  v24 = v0[17];
  v22 = v0[19];
  v23 = v0[18];
  v20 = v0[21];
  v21 = v0[20];
  v18 = v0[23];
  v19 = v0[22];
  v10 = *(v0 + 13);
  v28 = *(v0 + 12);
  v29 = v10;
  v30 = v0[28];
  if (v2 == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    MEMORY[0x21CEA3550](v1);
  }

  sub_217753208();
  if (v3)
  {
    sub_217751FF8();
  }

  v27[0] = v4;
  v27[1] = v5;
  v27[2] = v6;
  v27[3] = v7;
  v27[4] = v17;
  v27[5] = v14;
  v27[6] = v16;
  v27[7] = v8;
  v27[8] = v15;
  v27[9] = v9;
  v27[10] = v13;
  v27[11] = v26;
  v27[12] = v25;
  v27[13] = v24;
  v27[14] = v23;
  v27[15] = v22;
  v27[16] = v21;
  v27[17] = v20;
  v27[18] = v19;
  v27[19] = v18;
  if (sub_21726A474(v27) == 1)
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    v46 = v4;
    v47 = v5;
    v48 = v6;
    v49 = v7;
    v50 = v17;
    v41 = v14;
    v42 = v16;
    v43 = v8;
    v44 = v15;
    v45 = v9;
    v36 = v13;
    v37 = v26;
    v38 = v25;
    v39 = v24;
    v40 = v23;
    v31 = v22;
    v32 = v21;
    v33 = v20;
    v34 = v19;
    v35 = v18;
    sub_21726519C();
    sub_21726519C();
    sub_21726519C();
    sub_21726519C();
  }

  return sub_21726519C();
}

uint64_t CloudCoverArtworkRecipe.hashValue.getter()
{
  sub_2177531E8();
  CloudCoverArtworkRecipe.hash(into:)();
  return sub_217753238();
}

void CloudCoverArtworkRecipe.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C5F0, &unk_217792E68);
  OUTLINED_FUNCTION_0_0(v26);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2176A2CD8();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v25 = v4;
    OUTLINED_FUNCTION_11_74();
    v10 = sub_217752E48();
    v40 = v11 & 1;
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_11_74();
    v12 = sub_217752E18();
    v14 = v13;
    v15 = v12;
    sub_2176A371C();
    OUTLINED_FUNCTION_11_74();
    sub_217752E58();
    memcpy(v39, v38, sizeof(v39));
    sub_2172A9B6C();
    OUTLINED_FUNCTION_11_74();
    sub_217752E58();
    v16 = OUTLINED_FUNCTION_5_95();
    v17(v16);
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v23 = v35;
    v24 = v33;
    v21 = v37;
    v22 = v36;
    v27[0] = v10;
    LOBYTE(v27[1]) = v40;
    v27[2] = v15;
    v27[3] = v14;
    OUTLINED_FUNCTION_14_61(&v27[4]);
    v27[24] = v18;
    v27[25] = v19;
    v27[26] = v20;
    v27[27] = v22;
    v27[28] = v21;
    memcpy(v25, v27, 0xE8uLL);
    sub_217350FD0(v27, &v28);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v28 = v10;
    v29 = v40;
    v30 = v15;
    v31 = v14;
    OUTLINED_FUNCTION_14_61(v32);
    v32[20] = v24;
    v32[21] = v19;
    v32[22] = v23;
    v32[23] = v22;
    v32[24] = v21;
    sub_21735129C(&v28);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176A2828()
{
  sub_2177531E8();
  CloudCoverArtworkRecipe.hash(into:)();
  return sub_217753238();
}

__n128 CloudCoverArtworkRecipe.ColorInformation.init(color1:color2:color3:color4:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v5;
  v6 = *(a2 + 16);
  *(a5 + 40) = *a2;
  *(a5 + 56) = v6;
  v7 = *(a3 + 16);
  *(a5 + 80) = *a3;
  *(a5 + 96) = v7;
  result = *a4;
  v9 = *(a4 + 16);
  *(a5 + 120) = *a4;
  v10 = *(a2 + 32);
  v11 = *(a3 + 32);
  v12 = *(a4 + 32);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 72) = v10;
  *(a5 + 112) = v11;
  *(a5 + 136) = v9;
  *(a5 + 152) = v12;
  return result;
}

BOOL static CloudCoverArtworkRecipe.ColorInformation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v72 = *(a1 + 48);
  v70 = *(a1 + 40);
  v71 = *(a1 + 56);
  v66 = *(a1 + 64);
  v74 = *(a1 + 72);
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  v10 = *(a1 + 96);
  v9 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v16 = *(a1 + 144);
  v15 = *(a1 + 152);
  v17 = *a2;
  v18 = *(a2 + 8);
  v20 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *(a2 + 32);
  v67 = *(a2 + 40);
  v69 = *(a2 + 48);
  v68 = *(a2 + 56);
  v65 = *(a2 + 64);
  v73 = *(a2 + 72);
  v62 = *(a2 + 80);
  v64 = *(a2 + 88);
  v22 = *(a2 + 104);
  v63 = *(a2 + 96);
  v23 = *(a2 + 112);
  v24 = *(a2 + 120);
  v25 = *(a2 + 128);
  v26 = *(a2 + 136);
  v28 = *(a2 + 144);
  v27 = *(a2 + 152);
  if (!v6)
  {
    if (!v21)
    {
      v32 = *(a1 + 80);
      v33 = *(a1 + 96);
      v34 = *(a1 + 88);
      v60 = *(a1 + 152);
      v61 = *(a2 + 104);
      v35 = *(a2 + 112);
      v36 = *(a1 + 104);
      v37 = *(a1 + 112);
      v54 = *(a1 + 136);
      v55 = *(a2 + 120);
      v57 = *(a2 + 136);
      v58 = *(a2 + 128);
      OUTLINED_FUNCTION_10_66();

      goto LABEL_21;
    }

LABEL_12:
    sub_217751DE8();
    v75 = v2;
    v76 = v3;
    v77 = v4;
    v78 = v5;
    v79 = v6;
    v80 = v17;
    v81 = v18;
    v82 = v20;
    v83 = v19;
    v84 = v21;
LABEL_13:
    sub_2171F06D8(&v75, &qword_27CB24C98, &qword_2177800E0);
    return 0;
  }

  if (!v21)
  {
    goto LABEL_12;
  }

  if (v2 != v17 || v3 != v18 || v4 != v20)
  {
    goto LABEL_10;
  }

  v32 = *(a1 + 80);
  v33 = *(a1 + 96);
  v34 = *(a1 + 88);
  v60 = *(a1 + 152);
  v61 = *(a2 + 104);
  v35 = *(a2 + 112);
  v36 = *(a1 + 104);
  v37 = *(a1 + 112);
  v54 = *(a1 + 136);
  v55 = *(a2 + 120);
  v57 = *(a2 + 136);
  v58 = *(a2 + 128);
  OUTLINED_FUNCTION_10_66();
  v38 = v5 == v19 && v6 == v21;
  if (!v38 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (!v74)
  {
    v39 = v73;
    if (!v73)
    {

      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v39 = v73;
  if (!v73)
  {
LABEL_32:
    sub_217751DE8();
    v75 = v70;
    v76 = v72;
    v77 = v71;
    v78 = v66;
    v79 = v74;
    v80 = v67;
    v81 = v69;
    v82 = v68;
    v83 = v65;
    v84 = v39;
    goto LABEL_13;
  }

  if (v70 != v67 || v72 != v69 || v71 != v68)
  {
    goto LABEL_10;
  }

  v42 = v66 == v65 && v74 == v73;
  if (!v42 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if (!v37)
  {
    if (!v35)
    {

      goto LABEL_57;
    }

    goto LABEL_50;
  }

  if (!v35)
  {
LABEL_50:
    sub_217751DE8();
    v75 = v32;
    v76 = v34;
    v77 = v33;
    v78 = v36;
    v79 = v37;
    v80 = v62;
    v81 = v64;
    v82 = v63;
    v83 = v61;
    v84 = v35;
    goto LABEL_13;
  }

  if (v32 != v62 || v34 != v64 || v33 != v63)
  {
    goto LABEL_10;
  }

  v45 = v36 == v61 && v37 == v35;
  if (!v45 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  if (!v60)
  {
    v46 = v59;
    if (!v59)
    {

      return 1;
    }

    goto LABEL_68;
  }

  v46 = v59;
  if (!v59)
  {
LABEL_68:
    v49 = v46;
    sub_217751DE8();
    v75 = v53;
    v76 = v56;
    v77 = v54;
    v78 = v51;
    v79 = v60;
    v80 = v55;
    v81 = v58;
    v82 = v57;
    v83 = v52;
    v84 = v49;
    goto LABEL_13;
  }

  if (v53 != v55 || v56 != v58 || v54 != v57)
  {
LABEL_10:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v50 = v51 == v52 && v60 == v59;
  return v50 || (sub_217753058() & 1) != 0;
}

unint64_t sub_2176A2CD8()
{
  result = qword_27CB2C5E0;
  if (!qword_27CB2C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5E0);
  }

  return result;
}

unint64_t sub_2176A2D2C()
{
  result = qword_27CB2C5E8;
  if (!qword_27CB2C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5E8);
  }

  return result;
}

uint64_t sub_2176A2D80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2176A2EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176A2D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176A2F14(uint64_t a1)
{
  v2 = sub_2176A3770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A2F50(uint64_t a1)
{
  v2 = sub_2176A3770();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudCoverArtworkRecipe.ColorInformation.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C600, &qword_217792E78);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  v13 = *(v1 + 4);
  v14 = *(v1 + 40);
  v29 = *(v1 + 56);
  v30 = v14;
  v31 = *(v1 + 9);
  v15 = v1[5];
  v25 = v1[6];
  v26 = v15;
  v16 = *(v1 + 14);
  v17 = *(v1 + 120);
  v23 = *(v1 + 136);
  v24 = v17;
  v27 = *(v1 + 19);
  v28 = v16;
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v19 = sub_2176A3770();
  sub_217751DE8();
  sub_2177532F8();
  v20 = v1[1];
  v32 = *v1;
  v33 = v20;
  v34 = v13;
  sub_2172A9724();
  OUTLINED_FUNCTION_1_128();
  if (!v19)
  {
    v21 = v27;
    v22 = v28;

    v32 = v30;
    v33 = v29;
    v34 = v31;
    sub_217751DE8();
    OUTLINED_FUNCTION_1_128();

    v32 = v26;
    v33 = v25;
    v34 = v22;
    sub_217751DE8();
    OUTLINED_FUNCTION_1_128();

    v32 = v24;
    v33 = v23;
    v34 = v21;
    sub_217751DE8();
    OUTLINED_FUNCTION_1_128();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCoverArtworkRecipe.ColorInformation.hash(into:)()
{
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 4);
  v8 = *(v0 + 40);
  v9 = *(v0 + 56);
  v10 = *(v0 + 9);
  v7 = *(v0 + 14);
  v5 = v0[5];
  v6 = v0[6];
  v4 = *(v0 + 19);
  v2 = *(v0 + 120);
  v3 = *(v0 + 136);
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  return sub_21726519C();
}

uint64_t CloudCoverArtworkRecipe.ColorInformation.hashValue.getter()
{
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 4);
  v8 = *(v0 + 40);
  v9 = *(v0 + 56);
  v10 = *(v0 + 9);
  v7 = *(v0 + 14);
  v6 = v0[6];
  v5 = v0[5];
  v4 = *(v0 + 19);
  v2 = *(v0 + 120);
  v3 = *(v0 + 136);
  sub_2177531E8();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  return sub_217753238();
}

void CloudCoverArtworkRecipe.ColorInformation.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C610, &qword_217792E80);
  OUTLINED_FUNCTION_0_0(v32);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2176A3770();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v31 = v4;
    sub_2172A9B6C();
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v28 = v36;
    v29 = v35;
    v27 = v37;
    v30 = v39;
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v21 = v35;
    v22 = v38;
    v23 = v37;
    v24 = v36;
    v26 = v39;
    LOBYTE(v34[0]) = 2;
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v19 = v35;
    v20 = v38;
    v17 = v37;
    v18 = v36;
    v16 = v38;
    v10 = v39;
    OUTLINED_FUNCTION_3_112();
    sub_217752E58();
    v11 = OUTLINED_FUNCTION_4_116();
    v12(v11);
    v25 = v56;
    v14 = v58;
    v15 = v57;
    v13 = v59;
    v33 = v55;
    v34[0] = v29;
    v34[1] = v28;
    v34[2] = v27;
    v34[3] = v22;
    v34[4] = v30;
    v34[5] = v21;
    v34[6] = v24;
    v34[7] = v23;
    v34[8] = v20;
    v34[9] = v26;
    v34[10] = v19;
    v34[11] = v18;
    v34[12] = v17;
    v34[13] = v16;
    v34[14] = v10;
    v34[15] = v55;
    v34[16] = v56;
    v34[17] = v57;
    v34[18] = v58;
    v34[19] = v59;
    memcpy(v31, v34, 0xA0uLL);
    sub_2176A37C4(v34, &v35);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v35 = v29;
    v36 = v28;
    v37 = v27;
    v38 = v22;
    v39 = v30;
    v40 = v21;
    v41 = v24;
    v42 = v23;
    v43 = v20;
    v44 = v26;
    v45 = v19;
    v46 = v18;
    v47 = v17;
    v48 = v16;
    v49 = v10;
    v50 = v33;
    v51 = v25;
    v52 = v15;
    v53 = v14;
    v54 = v13;
    sub_2176A1F98(&v35);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176A36E0()
{
  sub_2177531E8();
  CloudCoverArtworkRecipe.ColorInformation.hash(into:)();
  return sub_217753238();
}

unint64_t sub_2176A371C()
{
  result = qword_27CB2C5F8;
  if (!qword_27CB2C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C5F8);
  }

  return result;
}

unint64_t sub_2176A3770()
{
  result = qword_27CB2C608;
  if (!qword_27CB2C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C608);
  }

  return result;
}

unint64_t sub_2176A3800()
{
  result = qword_27CB2C618;
  if (!qword_27CB2C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C618);
  }

  return result;
}

unint64_t sub_2176A3858()
{
  result = qword_27CB2C620;
  if (!qword_27CB2C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C620);
  }

  return result;
}

unint64_t sub_2176A38B0()
{
  result = qword_27CB2C628;
  if (!qword_27CB2C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C628);
  }

  return result;
}

unint64_t sub_2176A3908()
{
  result = qword_27CB2C630;
  if (!qword_27CB2C630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C638, &qword_217792F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C630);
  }

  return result;
}

unint64_t sub_2176A3970()
{
  result = qword_27CB2C640;
  if (!qword_27CB2C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C640);
  }

  return result;
}

unint64_t sub_2176A39C8()
{
  result = qword_27CB2C648;
  if (!qword_27CB2C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C648);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudCoverArtworkRecipeV16ColorInformationVSg(uint64_t a1)
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

uint64_t sub_2176A3A48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 232))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2176A3A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2176A3B40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2176A3B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

_BYTE *sub_2176A3C1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176A3CFC()
{
  result = qword_27CB2C650;
  if (!qword_27CB2C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C650);
  }

  return result;
}

unint64_t sub_2176A3D54()
{
  result = qword_27CB2C658;
  if (!qword_27CB2C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C658);
  }

  return result;
}

unint64_t sub_2176A3DAC()
{
  result = qword_27CB2C660;
  if (!qword_27CB2C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C660);
  }

  return result;
}

void *OUTLINED_FUNCTION_14_61(void *a1)
{

  return memcpy(a1, (v1 - 248), 0xA0uLL);
}

uint64_t sub_2176A3F4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000065707954;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002177B4E00 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000002177B4E20 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657355736465656ELL && a2 == 0xEF64616F6C705572;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000002177B4E40 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_2176A4104(char a1)
{
  result = 0x746E696F70646E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x657355736465656ELL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176A41DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176A3F4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176A4204(uint64_t a1)
{
  v2 = sub_2176A4448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A4240(uint64_t a1)
{
  v2 = sub_2176A4448();

  return MEMORY[0x2821FE720](a1, v2);
}

void CatalogAsset.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C668, &qword_2177933A0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v17 - v11;
  v13 = *v0;
  v14 = v0[1];
  v17[2] = v0[2];
  v17[3] = v14;
  v15 = v0[3];
  v17[0] = v0[4];
  v17[1] = v15;
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2176A4448();
  sub_2177532F8();
  sub_2176A449C();
  OUTLINED_FUNCTION_48();
  sub_217752F88();
  if (!v1)
  {
    OUTLINED_FUNCTION_8_82();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
    OUTLINED_FUNCTION_48();
    sub_217752F58();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176A4448()
{
  result = qword_27CB2C670;
  if (!qword_27CB2C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C670);
  }

  return result;
}

unint64_t sub_2176A449C()
{
  result = qword_27CB2C678;
  if (!qword_27CB2C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C678);
  }

  return result;
}

uint64_t CatalogAsset.hash(into:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_78();
  MEMORY[0x21CEA3550]();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t CatalogAsset.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_78();
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

void CatalogAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_171();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C680, &qword_2177933A8);
  OUTLINED_FUNCTION_0_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v31 - v25;
  v27 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_2176A4448();
  sub_2177532C8();
  if (!v13)
  {
    sub_2176A57E4();
    sub_217752EA8();
    OUTLINED_FUNCTION_8_82();
    v28 = OUTLINED_FUNCTION_5_96();
    v33 = OUTLINED_FUNCTION_5_96();
    v32 = OUTLINED_FUNCTION_5_96();
    v29 = OUTLINED_FUNCTION_5_96();
    HIDWORD(v31) = v28 & 1;
    v33 &= 1u;
    v30 = v32 & 1;
    (*(v20 + 8))(v26, v18);
    *v17 = a13;
    v17[1] = BYTE4(v31);
    v17[2] = v33;
    v17[3] = v30;
    v17[4] = v29 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176A47F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616863727570 && a2 == 0xE900000000000073;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686374616DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2176A4954(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6573616863727570;
      break;
    case 2:
      result = 0x686374616DLL;
      break;
    case 3:
      result = 0x7069726373627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176A4A1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

uint64_t sub_2176A4AB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176A4B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176A47F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176A4B2C(uint64_t a1)
{
  v2 = sub_2176A5838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A4B68(uint64_t a1)
{
  v2 = sub_2176A5838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176A4BA4(uint64_t a1)
{
  v2 = sub_2176A58E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A4BE0(uint64_t a1)
{
  v2 = sub_2176A58E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176A4C1C(uint64_t a1)
{
  v2 = sub_2176A5934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A4C58(uint64_t a1)
{
  v2 = sub_2176A5934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176A4C94(uint64_t a1)
{
  v2 = sub_2176A588C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A4CD0(uint64_t a1)
{
  v2 = sub_2176A588C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176A4D0C(uint64_t a1)
{
  v2 = sub_2176A5988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176A4D48(uint64_t a1)
{
  v2 = sub_2176A5988();

  return MEMORY[0x2821FE720](a1, v2);
}

void CatalogAsset.EndpointType.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C690, &qword_2177933B0);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v59 = v5;
  v60 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_150();
  v58 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C698, &qword_2177933B8);
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v56 = v13;
  v57 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_150();
  v55 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6A0, &qword_2177933C0);
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v53 = v21;
  v54 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_150();
  v52 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6A8, &qword_2177933C8);
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v50 = v29;
  v51 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v50 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6B0, &qword_2177933D0);
  OUTLINED_FUNCTION_0_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v50 - v43;
  v45 = *v0;
  v46 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2176A5838();
  sub_2177532F8();
  switch(v45)
  {
    case 1:
      OUTLINED_FUNCTION_8_82();
      sub_2176A5934();
      v47 = v52;
      OUTLINED_FUNCTION_3_113();
      v49 = v53;
      v48 = v54;
      goto LABEL_6;
    case 2:
      sub_2176A58E0();
      v47 = v55;
      OUTLINED_FUNCTION_3_113();
      v49 = v56;
      v48 = v57;
      goto LABEL_6;
    case 3:
      sub_2176A588C();
      v47 = v58;
      OUTLINED_FUNCTION_3_113();
      v49 = v59;
      v48 = v60;
LABEL_6:
      (*(v49 + 8))(v47, v48);
      break;
    default:
      sub_2176A5988();
      sub_217752EE8();
      (*(v50 + 8))(v35, v51);
      break;
  }

  (*(v38 + 8))(v44, v36);
  OUTLINED_FUNCTION_170();
}