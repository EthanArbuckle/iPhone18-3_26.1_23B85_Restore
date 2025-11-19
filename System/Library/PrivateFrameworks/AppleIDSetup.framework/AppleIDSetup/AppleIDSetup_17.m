unint64_t sub_24070B090()
{
  result = qword_27E4BD920;
  if (!qword_27E4BD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD920);
  }

  return result;
}

unint64_t sub_24070B0E8()
{
  result = qword_27E4BD928;
  if (!qword_27E4BD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD928);
  }

  return result;
}

uint64_t sub_24070B13C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000240789BF0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240789C10 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240789D00 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240787330 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24070B394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240789D20 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000240789C50 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000240789C30 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24070B504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD950, &qword_24077F128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnisetteCommand.Request.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload || (type metadata accessor for V1Command.Request(0), result = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Request, result != 2))
  {
    result = sub_2407128E4(a1, v5);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3000000000000000;
    v7 = -1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v8;
  }

  *(a2 + 32) = v7;
  return result;
}

uint64_t AnisetteCommand.Request.into()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24070B6D4(uint64_t a1)
{
  v2 = sub_240710734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070B710(uint64_t a1)
{
  v2 = sub_240710734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070B74C(uint64_t a1)
{
  v2 = sub_240710884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070B788(uint64_t a1)
{
  v2 = sub_240710884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070B7C4()
{
  if (*v0)
  {
    result = 0x79646F4270747468;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_24070B7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79646F4270747468 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24070B8D4(uint64_t a1)
{
  v2 = sub_240710788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070B910(uint64_t a1)
{
  v2 = sub_240710788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070B968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000240789D60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24075ACF4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24070B9FC(uint64_t a1)
{
  v2 = sub_240710830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070BA38(uint64_t a1)
{
  v2 = sub_240710830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070BA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632420 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24070BB0C(uint64_t a1)
{
  v2 = sub_2407107DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070BB48(uint64_t a1)
{
  v2 = sub_2407107DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070BB84(uint64_t a1)
{
  v2 = sub_24071092C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070BBC0(uint64_t a1)
{
  v2 = sub_24071092C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070BC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461446D6973 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24070BC9C(uint64_t a1)
{
  v2 = sub_2407108D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070BCD8(uint64_t a1)
{
  v2 = sub_2407108D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnisetteCommand.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD958, &qword_24077F130);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD960, &qword_24077F138);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD968, &qword_24077F140);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD970, &qword_24077F148);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD978, &qword_24077F150);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD980, &qword_24077F158);
  v50 = *(v51 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v49 = &v48 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD988, &qword_24077F160);
  v68 = *(v21 - 8);
  v69 = v21;
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = *v1;
  v66 = v1[1];
  v67 = v25;
  v26 = v1[3];
  v61 = v1[2];
  v27 = *(v1 + 32);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240710734();
  sub_24075AF74();
  if (v27)
  {
    v29 = 4;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v26 >> 60) & 3 | v29;
  if (v30 <= 1)
  {
    v36 = v18;
    v38 = v62;
    v37 = v63;
    v40 = v64;
    v39 = v65;
    if (v30)
    {
      LOBYTE(v71) = 3;
      sub_240710830();
      v32 = v69;
      v33 = v24;
      sub_24075AB54();
      sub_24075ABC4();
      (*(v40 + 8))(v37, v39);
    }

    else
    {
      LOBYTE(v71) = 1;
      sub_2407108D8();
      v41 = v36;
      v32 = v69;
      v33 = v24;
      sub_24075AB54();
      v71 = v67;
      v72 = v66;
      sub_240618E74();
      sub_24075ABE4();
      (*(v38 + 8))(v41, v15);
    }

    return (*(v68 + 8))(v33, v32);
  }

  if (v30 == 2)
  {
    LOBYTE(v71) = 4;
    sub_2407107DC();
    v42 = v55;
    v32 = v69;
    v33 = v24;
    sub_24075AB54();
    v43 = v57;
    sub_24075ABB4();
    (*(v56 + 8))(v42, v43);
    return (*(v68 + 8))(v33, v32);
  }

  if (v30 == 3)
  {
    LOBYTE(v71) = 5;
    sub_240710788();
    v31 = v58;
    v32 = v69;
    v33 = v24;
    sub_24075AB54();
    LOBYTE(v71) = 0;
    v34 = v60;
    v35 = v70;
    sub_24075ABB4();
    if (!v35)
    {
      v71 = v61;
      v72 = v26 & 0xCFFFFFFFFFFFFFFFLL;
      v73 = 1;
      sub_240618E74();
      sub_24075ABE4();
    }

    (*(v59 + 8))(v31, v34);
    return (*(v68 + 8))(v33, v32);
  }

  if (v61 | v66 | v67 | v26)
  {
    LOBYTE(v71) = 2;
    sub_240710884();
    v44 = v52;
    v45 = v69;
    sub_24075AB54();
    (*(v53 + 8))(v44, v54);
  }

  else
  {
    LOBYTE(v71) = 0;
    sub_24071092C();
    v47 = v49;
    v45 = v69;
    sub_24075AB54();
    (*(v50 + 8))(v47, v51);
  }

  return (*(v68 + 8))(v24, v45);
}

uint64_t AnisetteCommand.Request.hash(into:)()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v1 >> 60) & 3 | v2;
  if (v3 <= 1)
  {
    if (v3)
    {
      MEMORY[0x245CC6BA0](3);
      return sub_24075AE94();
    }

    MEMORY[0x245CC6BA0](1);
    goto LABEL_10;
  }

  if (v3 == 2)
  {
    MEMORY[0x245CC6BA0](4);

    return sub_24075A114();
  }

  else
  {
    if (v3 == 3)
    {
      MEMORY[0x245CC6BA0](5);
      sub_24075A114();
LABEL_10:

      return sub_2407596D4();
    }

    if (*(v0 + 16) | *(v0 + 8) | *v0 | v1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x245CC6BA0](v5);
  }
}

uint64_t AnisetteCommand.Request.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24075AE64();
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (v4 >> 60) & 3 | v6;
  if (v7 <= 1)
  {
    if (v7)
    {
      MEMORY[0x245CC6BA0](3);
      sub_24075AE94();
      return sub_24075AED4();
    }

    MEMORY[0x245CC6BA0](1);
    goto LABEL_10;
  }

  if (v7 == 2)
  {
    MEMORY[0x245CC6BA0](4);
    sub_24075A114();
    return sub_24075AED4();
  }

  if (v7 == 3)
  {
    MEMORY[0x245CC6BA0](5);
    sub_24075A114();
LABEL_10:
    sub_2407596D4();
    return sub_24075AED4();
  }

  if (v3 | v2 | v1 | v4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x245CC6BA0](v8);
  return sub_24075AED4();
}

uint64_t AnisetteCommand.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD9C8, &qword_24077F168);
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD9D0, &qword_24077F170);
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v89 = &v73 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD9D8, &qword_24077F178);
  v82 = *(v77 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v77);
  v88 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD9E0, &qword_24077F180);
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v13);
  v87 = &v73 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD9E8, &qword_24077F188);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD9F0, &qword_24077F190);
  v76 = *(v19 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BD9F8, &unk_24077F198);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v73 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_240710734();
  v30 = v92;
  sub_24075AF34();
  if (!v30)
  {
    v31 = v22;
    v73 = v19;
    v74 = v18;
    v32 = v88;
    v33 = v89;
    v92 = v24;
    v34 = v90;
    v35 = v91;
    v75 = v23;
    v36 = sub_24075AB34();
    v37 = (2 * *(v36 + 16)) | 1;
    v96 = v36;
    v97 = v36 + 32;
    v98 = 0;
    v99 = v37;
    v38 = sub_2405B8B00();
    if (v38 == 6 || v98 != v99 >> 1)
    {
      v48 = sub_24075A8C4();
      swift_allocError();
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v50 = &type metadata for AnisetteCommand.Request;
      v52 = v75;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
      swift_willThrow();
      (*(v92 + 8))(v27, v52);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38 > 2u)
      {
        if (v38 == 3)
        {
          LOBYTE(v94) = 3;
          sub_240710830();
          v59 = v32;
          v60 = v75;
          sub_24075AA54();
          v61 = v77;
          v68 = sub_24075AAD4();
          (*(v82 + 8))(v59, v61);
          (*(v92 + 8))(v27, v60);
          swift_unknownObjectRelease();
          v47 = 0;
          v43 = 0;
          v45 = 0;
          v46 = v68 & 1;
          v44 = 0x1000000000000000;
        }

        else
        {
          v54 = v75;
          if (v38 == 4)
          {
            LOBYTE(v94) = 4;
            sub_2407107DC();
            sub_24075AA54();
            v55 = v83;
            v56 = sub_24075AAC4();
            v47 = v69;
            v70 = v56;
            (*(v84 + 8))(v33, v55);
            (*(v92 + 8))(v27, v54);
            swift_unknownObjectRelease();
            v46 = v70;
            v43 = 0;
            v45 = 0;
            v44 = 0x2000000000000000;
          }

          else
          {
            LOBYTE(v94) = 5;
            sub_240710788();
            sub_24075AA54();
            LOBYTE(v94) = 0;
            v65 = v85;
            v66 = v34;
            v67 = sub_24075AAC4();
            v47 = v71;
            v72 = v67;
            v100 = 1;
            sub_240618EC8();
            sub_24075AAF4();
            (*(v86 + 8))(v66, v65);
            (*(v92 + 8))(v27, v54);
            swift_unknownObjectRelease();
            v45 = 0;
            v43 = v94;
            v44 = v95 | 0x3000000000000000;
            v46 = v72;
          }
        }
      }

      else if (v38)
      {
        if (v38 == 1)
        {
          LOBYTE(v94) = 1;
          sub_2407108D8();
          v39 = v74;
          v40 = v75;
          sub_24075AA54();
          v41 = v92;
          sub_240618EC8();
          v42 = v79;
          sub_24075AAF4();
          (*(v78 + 8))(v39, v42);
          (*(v41 + 8))(v27, v40);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = v94;
          v47 = v95;
        }

        else
        {
          LOBYTE(v94) = 2;
          sub_240710884();
          v62 = v87;
          v63 = v75;
          sub_24075AA54();
          v64 = v92;
          (*(v80 + 8))(v62, v81);
          (*(v64 + 8))(v27, v63);
          swift_unknownObjectRelease();
          v47 = 0;
          v43 = 0;
          v44 = 0;
          v46 = 1;
          v45 = 1;
        }
      }

      else
      {
        LOBYTE(v94) = 0;
        sub_24071092C();
        v57 = v31;
        v58 = v75;
        sub_24075AA54();
        (*(v76 + 8))(v57, v73);
        (*(v92 + 8))(v27, v58);
        swift_unknownObjectRelease();
        v46 = 0;
        v47 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 1;
      }

      *v35 = v46;
      *(v35 + 8) = v47;
      *(v35 + 16) = v43;
      *(v35 + 24) = v44;
      *(v35 + 32) = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t sub_24070D1F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24070D264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload || (type metadata accessor for V1Command.Request(0), result = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Request, result != 2))
  {
    result = sub_2407128E4(a1, v5);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3000000000000000;
    v7 = -1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v8;
  }

  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24070D340()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_24075AE64();
  AnisetteCommand.Request.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_24070D398()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_24075AE64();
  AnisetteCommand.Request.hash(into:)();
  return sub_24075AED4();
}

uint64_t AnisetteCommand.Response.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2407109CC(a1, a2);
      v4 = 0;
      goto LABEL_7;
    }

    v5 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v5 = type metadata accessor for V1Command;
  }

  sub_2407128E4(a1, v5);
  v4 = 1;
LABEL_7:
  v6 = type metadata accessor for AnisetteCommand.Response();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v4, 1, v6);
}

uint64_t AnisetteCommand.Response.into()@<X0>(uint64_t a1@<X8>)
{
  sub_2407109CC(v1, a1);
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24070D540()
{
  v1 = *v0;
  v2 = 0x6F697369766F7270;
  v3 = 0x7461446863746566;
  v4 = 0x614479636167656CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1668184435;
  if (v1 != 1)
  {
    v5 = 0x6573617265;
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

uint64_t sub_24070D5FC(uint64_t a1)
{
  v2 = sub_240710A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070D638(uint64_t a1)
{
  v2 = sub_240710A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070D674(uint64_t a1)
{
  v2 = sub_240710CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070D6B0(uint64_t a1)
{
  v2 = sub_240710CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070D6EC(uint64_t a1)
{
  v2 = sub_240710A84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070D728(uint64_t a1)
{
  v2 = sub_240710A84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070D764(uint64_t a1)
{
  v2 = sub_240710C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070D7A0(uint64_t a1)
{
  v2 = sub_240710C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070D7DC(uint64_t a1)
{
  v2 = sub_240710B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070D818(uint64_t a1)
{
  v2 = sub_240710B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070D854(uint64_t a1)
{
  v2 = sub_240710D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070D890(uint64_t a1)
{
  v2 = sub_240710D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24070D8CC(uint64_t a1)
{
  v2 = sub_240710D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24070D908(uint64_t a1)
{
  v2 = sub_240710D14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnisetteCommand.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDA00, &qword_24077F1A8);
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v2);
  v86 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BC0, &qword_24077F1B0);
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDA08, &qword_24077F1B8);
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDA10, &unk_24077F1C0);
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v66 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
  v94 = *(v91 - 8);
  v14 = *(v94 + 64);
  v15 = MEMORY[0x28223BE20](v91);
  v78 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v66 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDA18, &qword_24077F1D0);
  v75 = *(v76 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v66 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDA20, &qword_24077F1D8);
  v72 = *(v73 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v66 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDA28, &unk_24077F1E0);
  v69 = *(v70 - 8);
  v22 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v92 = *(v24 - 8);
  v93 = v24;
  v25 = *(v92 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v67 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v66 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v66 - v31;
  v33 = type metadata accessor for AnisetteCommand.Response();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDA30, &unk_24077F1F0);
  v96 = *(v37 - 8);
  v38 = *(v96 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v66 - v39;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240710A30();
  v95 = v40;
  sub_24075AF74();
  sub_240636B38(v97, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v51 = v94;
      v52 = v77;
      v53 = v91;
      (*(v94 + 32))(v77, v36, v91);
      v101 = 3;
      sub_240710C6C();
      v54 = v79;
      v43 = v37;
      v47 = v95;
      sub_24075AB54();
      sub_240710BDC(&qword_27E4BDA60, sub_240619204, sub_24060230C);
      v55 = v81;
      sub_24075ABE4();
      v56 = v80;
    }

    else
    {
      v43 = v37;
      v51 = v94;
      if (EnumCaseMultiPayload != 4)
      {
        v61 = v87;
        v44 = v88;
        v62 = v85;
        (*(v87 + 32))(v85, v36, v88);
        v103 = 5;
        sub_240710A84();
        v63 = v86;
        v47 = v95;
        sub_24075AB54();
        sub_240710AD8();
        v64 = v90;
        sub_24075ABE4();
        (*(v89 + 8))(v63, v64);
        v49 = *(v61 + 8);
        v50 = v62;
        goto LABEL_13;
      }

      v52 = v78;
      v53 = v91;
      (*(v94 + 32))(v78, v36, v91);
      v102 = 4;
      sub_240710B88();
      v54 = v82;
      v47 = v95;
      sub_24075AB54();
      sub_240710BDC(&qword_27E4BDA60, sub_240619204, sub_24060230C);
      v55 = v84;
      sub_24075ABE4();
      v56 = v83;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    v43 = v37;
    if (EnumCaseMultiPayload == 1)
    {
      v45 = v92;
      v44 = v93;
      (*(v92 + 32))(v30, v36, v93);
      v99 = 1;
      sub_240710D14();
      v46 = v71;
      v47 = v95;
      sub_24075AB54();
      sub_240710F88(&qword_27E4B9348, sub_24060230C);
      v48 = v73;
      sub_24075ABE4();
      (*(v72 + 8))(v46, v48);
      v49 = *(v45 + 8);
      v50 = v30;
LABEL_13:
      v49(v50, v44);
      return (*(v96 + 8))(v47, v43);
    }

    v51 = v92;
    v53 = v93;
    v52 = v67;
    (*(v92 + 32))(v67, v36, v93);
    v100 = 2;
    sub_240710CC0();
    v54 = v74;
    v47 = v95;
    sub_24075AB54();
    sub_240710F88(&qword_27E4B9348, sub_24060230C);
    v55 = v76;
    sub_24075ABE4();
    v56 = v75;
LABEL_11:
    (*(v56 + 8))(v54, v55);
    (*(v51 + 8))(v52, v53);
    return (*(v96 + 8))(v47, v43);
  }

  v58 = v92;
  v57 = v93;
  (*(v92 + 32))(v32, v36, v93);
  v98 = 0;
  sub_240710D68();
  v59 = v68;
  v43 = v37;
  v47 = v95;
  sub_24075AB54();
  sub_240710F88(&qword_27E4B9348, sub_24060230C);
  v60 = v70;
  sub_24075ABE4();
  (*(v69 + 8))(v59, v60);
  (*(v58 + 8))(v32, v57);
  return (*(v96 + 8))(v47, v43);
}

uint64_t AnisetteCommand.Response.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BC0, &qword_24077F1B0);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = type metadata accessor for AnisetteCommand.Response();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240636B38(v2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = v8;
      (*(v8 + 32))(v11, v20, v7);
      v24 = 3;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v27 = v29;
        v26 = v30;
        (*(v29 + 32))(v6, v20, v30);
        MEMORY[0x245CC6BA0](5);
        sub_240710DBC();
        sub_24075A004();
        return (*(v27 + 8))(v6, v26);
      }

      v23 = v8;
      (*(v8 + 32))(v11, v20, v7);
      v24 = 4;
    }

    MEMORY[0x245CC6BA0](v24);
    sub_240710BDC(&qword_27E4BDA98, sub_24061A9E0, sub_2406023B4);
    sub_24075A004();
    return (*(v23 + 8))(v11, v7);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v13 + 32))(v16, v20, v12);
      v22 = 1;
    }

    else
    {
      (*(v13 + 32))(v16, v20, v12);
      v22 = 2;
    }
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    v22 = 0;
  }

  MEMORY[0x245CC6BA0](v22);
  sub_240710F88(&qword_27E4B9458, sub_2406023B4);
  sub_24075A004();
  return (*(v13 + 8))(v16, v12);
}

uint64_t AnisetteCommand.Response.hashValue.getter()
{
  sub_24075AE64();
  AnisetteCommand.Response.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t AnisetteCommand.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDAA0, &qword_24077F200);
  v98 = *(v95 - 8);
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  v107 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDAA8, &qword_24077F208);
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v5);
  v100 = &v79 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDAB0, &qword_24077F210);
  v93 = *(v94 - 8);
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v106 = &v79 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDAB8, &qword_24077F218);
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v105 = &v79 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDAC0, &qword_24077F220);
  v89 = *(v90 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v101 = &v79 - v13;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDAC8, &qword_24077F228);
  v87 = *(v88 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v103 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDAD0, &qword_24077F230);
  v108 = *(v16 - 8);
  v109 = v16;
  v17 = *(v108 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - v18;
  v102 = type metadata accessor for AnisetteCommand.Response();
  v20 = *(*(v102 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v102);
  v85 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v86 = &v79 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v79 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v79 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v79 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v79 - v37;
  v40 = a1[3];
  v39 = a1[4];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_240710A30();
  v104 = v19;
  v41 = v110;
  sub_24075AF34();
  if (!v41)
  {
    v80 = v33;
    v81 = v30;
    v82 = v27;
    v83 = v36;
    v42 = v103;
    v110 = 0;
    v44 = v105;
    v43 = v106;
    v45 = v107;
    v84 = v38;
    v46 = v109;
    v47 = v104;
    v48 = sub_24075AB34();
    v49 = (2 * *(v48 + 16)) | 1;
    v112 = v48;
    v113 = v48 + 32;
    v114 = 0;
    v115 = v49;
    v50 = sub_2405B8B00();
    if (v50 == 6 || v114 != v115 >> 1)
    {
      v57 = sub_24075A8C4();
      swift_allocError();
      v59 = v58;
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v59 = v102;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
      swift_willThrow();
    }

    else
    {
      if (v50 > 2u)
      {
        if (v50 != 3)
        {
          v62 = v108;
          if (v50 == 4)
          {
            v116 = 4;
            sub_240710B88();
            v63 = v100;
            v64 = v110;
            sub_24075AA54();
            if (!v64)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
              sub_240710BDC(&qword_27E4BDAE8, sub_240619258, sub_2406024EC);
              v65 = v86;
              v66 = v97;
              sub_24075AAF4();
              (*(v96 + 8))(v63, v66);
              (*(v62 + 8))(v47, v46);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v55 = v65;
LABEL_28:
              v77 = v99;
              v78 = v84;
              sub_2407109CC(v55, v84);
              sub_2407109CC(v78, v77);
              return __swift_destroy_boxed_opaque_existential_1(v111);
            }
          }

          else
          {
            v116 = 5;
            sub_240710A84();
            v75 = v110;
            sub_24075AA54();
            if (!v75)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BC0, &qword_24077F1B0);
              sub_240710E6C();
              v55 = v85;
              v76 = v95;
              sub_24075AAF4();
              (*(v98 + 8))(v45, v76);
              (*(v62 + 8))(v47, v109);
              swift_unknownObjectRelease();
              goto LABEL_27;
            }
          }

          (*(v62 + 8))(v47, v46);
          goto LABEL_12;
        }

        v116 = 3;
        sub_240710C6C();
        v70 = v110;
        sub_24075AA54();
        v53 = v108;
        if (!v70)
        {
          v71 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
          sub_240710BDC(&qword_27E4BDAE8, sub_240619258, sub_2406024EC);
          v55 = v82;
          v72 = v94;
          sub_24075AAF4();
          (*(v93 + 8))(v43, v72);
          (*(v53 + 8))(v47, v71);
          swift_unknownObjectRelease();
          goto LABEL_27;
        }

LABEL_11:
        (*(v53 + 8))(v47, v46);
LABEL_12:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v111);
      }

      if (v50)
      {
        v51 = v110;
        if (v50 == 1)
        {
          v116 = 1;
          sub_240710D14();
          v52 = v101;
          sub_24075AA54();
          v53 = v108;
          if (!v51)
          {
            v54 = v46;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
            sub_240710F88(&qword_27E4B9368, sub_2406024EC);
            v55 = v80;
            v56 = v90;
            sub_24075AAF4();
            (*(v89 + 8))(v52, v56);
            (*(v53 + 8))(v47, v54);
            swift_unknownObjectRelease();
LABEL_27:
            swift_storeEnumTagMultiPayload();
            goto LABEL_28;
          }
        }

        else
        {
          v116 = 2;
          sub_240710CC0();
          sub_24075AA54();
          v53 = v108;
          if (!v51)
          {
            v73 = v46;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
            sub_240710F88(&qword_27E4B9368, sub_2406024EC);
            v55 = v81;
            v74 = v92;
            sub_24075AAF4();
            (*(v91 + 8))(v44, v74);
            (*(v53 + 8))(v47, v73);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }
        }

        goto LABEL_11;
      }

      v116 = 0;
      sub_240710D68();
      v67 = v110;
      sub_24075AA54();
      if (!v67)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
        v68 = v46;
        sub_240710F88(&qword_27E4B9368, sub_2406024EC);
        v55 = v83;
        v69 = v88;
        sub_24075AAF4();
        (*(v87 + 8))(v42, v69);
        (*(v108 + 8))(v47, v68);
        swift_unknownObjectRelease();
        goto LABEL_27;
      }
    }

    v53 = v108;
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_24070F86C@<X0>(uint64_t a1@<X8>)
{
  sub_2407109CC(v1, a1);
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24070F8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for V1Command.Response(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2407109CC(a1, a3);
      v6 = 0;
      goto LABEL_7;
    }

    v7 = type metadata accessor for V1Command.Response;
  }

  else
  {
    v7 = type metadata accessor for V1Command;
  }

  sub_2407128E4(a1, v7);
  v6 = 1;
LABEL_7:
  v8 = *(*(a2 - 8) + 56);

  return v8(a3, v6, 1, a2);
}

uint64_t sub_24070F9F8()
{
  sub_24075AE64();
  AnisetteCommand.Response.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24070FA3C()
{
  sub_24075AE64();
  AnisetteCommand.Response.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t _s12AppleIDSetup15AnisetteCommandV7RequestO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v38[0] = *a1;
  v38[1] = v3;
  v10 = *(a1 + 16);
  v39 = v10;
  v40 = v4;
  v41 = v5;
  v42 = v6;
  v43 = v8;
  v44 = v7;
  v45 = v9;
  v11 = *(&v10 + 1);
  if (v4)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(&v10 + 1) >> 60) & 3 | v12;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (v9)
      {
        v22 = 4;
      }

      else
      {
        v22 = 0;
      }

      if (((v7 >> 60) & 3 | v22) != 2)
      {

LABEL_44:
        v26 = v5;
        v27 = v6;
        v28 = v8;
        v29 = v7;
        v30 = v9;
LABEL_45:
        sub_240635AF0(v26, v27, v28, v29, v30);
        sub_2405B8A50(v38, &qword_27E4BDCA0, &qword_2407804C0);
        v25 = 0;
        return v25 & 1;
      }

      v36 = v10;
      if (v2 != v5 || v3 != v6)
      {
        v34 = sub_24075ACF4();
        sub_240635AF0(v5, v6, v8, v7, v9);
        sub_240635AF0(v2, v3, v36, v11, v4);
        sub_2405B8A50(v38, &qword_27E4BDCA0, &qword_2407804C0);
        return v34 & 1;
      }

      sub_240635AF0(v2, v3, v8, v7, v9);
      sub_240635AF0(v2, v3, v36, v11, v4);
    }

    else
    {
      if (v13 == 3)
      {
        if (v9)
        {
          v14 = 4;
        }

        else
        {
          v14 = 0;
        }

        v35 = v10;
        if (((v7 >> 60) & 3 | v14) == 3)
        {
          if (v2 == v5 && v3 == v6 || (sub_24075ACF4() & 1) != 0)
          {
            sub_240635AF0(v5, v6, v8, v7, v9);
            sub_240635AF0(v2, v3, v35, v11, v4);
            v15 = v11 & 0xCFFFFFFFFFFFFFFFLL;
            v16 = v7 & 0xCFFFFFFFFFFFFFFFLL;
            v17 = v35;
            v18 = v8;
LABEL_55:
            v33 = sub_24062A208(v17, v15, v18, v16);
            sub_2405B8A50(v38, &qword_27E4BDCA0, &qword_2407804C0);
            return v33 & 1;
          }

          sub_240635AF0(v5, v6, v8, v7, v9);
          v28 = v35;
          v26 = v2;
          v27 = v3;
          v29 = v11;
          v30 = v4;
          goto LABEL_45;
        }

        v20 = v35;
        v21 = v11 & 0xCFFFFFFFFFFFFFFFLL;
        goto LABEL_43;
      }

      if (v10 | v3 | v2 | *(&v10 + 1))
      {
        if (v9)
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        if (((v7 >> 60) & 3 | v23) != 4 || v5 != 1 || v8 | v6 | v7)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v9)
        {
          v32 = 4;
        }

        else
        {
          v32 = 0;
        }

        if (((v7 >> 60) & 3 | v32) != 4 || v8 | v6 | v5 | v7)
        {
          goto LABEL_44;
        }
      }
    }

    sub_2405B8A50(v38, &qword_27E4BDCA0, &qword_2407804C0);
    v25 = 1;
    return v25 & 1;
  }

  if (!v13)
  {
    if (v9)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    if (!((v7 >> 60) & 3 | v19))
    {
      v37 = v10;
      sub_240635AF0(v5, v6, v8, v7, v9);
      sub_240635AF0(v2, v3, v37, v11, v4);
      v17 = v2;
      v15 = v3;
      v18 = v5;
      v16 = v6;
      goto LABEL_55;
    }

    v20 = v2;
    v21 = v3;
LABEL_43:
    sub_2405BB9D4(v20, v21);
    goto LABEL_44;
  }

  if (v9)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  if (((v7 >> 60) & 3 | v24) != 1)
  {
    goto LABEL_44;
  }

  sub_2405B8A50(v38, &qword_27E4BDCA0, &qword_2407804C0);
  v25 = v5 ^ v2 ^ 1;
  return v25 & 1;
}

uint64_t _s12AppleIDSetup15AnisetteCommandV8ResponseO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v85 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BC0, &qword_24077F1B0);
  v78 = *(v2 - 8);
  v79 = v2;
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v2);
  v77 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - v16;
  v18 = type metadata accessor for AnisetteCommand.Response();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v72 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v72 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v72 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v72 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v72 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDC90, &qword_2407804B8);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &v72 - v40;
  v42 = *(v39 + 56);
  sub_240636B38(v84, &v72 - v40);
  sub_240636B38(v85, &v41[v42]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_240636B38(v41, v25);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          (*(v80 + 8))(v25, v81);
          goto LABEL_25;
        }

        v52 = v80;
        v51 = v81;
        v53 = &v41[v42];
        v54 = v76;
        (*(v80 + 32))(v76, v53, v81);
        sub_24061AA38();
        sub_2406021BC();
        sub_240602210();
        v48 = sub_240759964();
        v55 = *(v52 + 8);
        v55(v54, v51);
        v56 = v25;
        v57 = v51;
      }

      else
      {
        sub_240636B38(v41, v22);
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          (*(v78 + 8))(v22, v79);
          goto LABEL_25;
        }

        v65 = v77;
        v64 = v78;
        v66 = v79;
        (*(v78 + 32))(v77, &v41[v42], v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86D8, &unk_2407670A0);
        sub_240712878(&qword_27E4BDC98);
        sub_2406021BC();
        sub_240602210();
        v48 = sub_240759964();
        v55 = *(v64 + 8);
        v55(v65, v66);
        v56 = v22;
        v57 = v66;
      }

      v55(v56, v57);
      goto LABEL_27;
    }

    sub_240636B38(v41, v28);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v58 = v80;
      v44 = v81;
      v59 = &v41[v42];
      v60 = v75;
      (*(v80 + 32))(v75, v59, v81);
      sub_24061AA38();
      sub_2406021BC();
      sub_240602210();
      v48 = sub_240759964();
      v49 = *(v58 + 8);
      v49(v60, v44);
      v50 = v28;
      goto LABEL_16;
    }

    (*(v80 + 8))(v28, v81);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_240636B38(v41, v34);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v82;
        v44 = v83;
        v46 = &v41[v42];
        v47 = v73;
        (*(v82 + 32))(v73, v46, v83);
        sub_2406021BC();
        sub_240602210();
        v48 = sub_240759964();
        v49 = *(v45 + 8);
        v49(v47, v44);
        v50 = v34;
LABEL_16:
        v49(v50, v44);
LABEL_27:
        sub_2407128E4(v41, type metadata accessor for AnisetteCommand.Response);
        return v48 & 1;
      }

      (*(v82 + 8))(v34, v83);
    }

    else
    {
      sub_240636B38(v41, v31);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v61 = v82;
        v44 = v83;
        v62 = &v41[v42];
        v63 = v74;
        (*(v82 + 32))(v74, v62, v83);
        sub_2406021BC();
        sub_240602210();
        v48 = sub_240759964();
        v49 = *(v61 + 8);
        v49(v63, v44);
        v50 = v31;
        goto LABEL_16;
      }

      (*(v82 + 8))(v31, v83);
    }
  }

  else
  {
    sub_240636B38(v41, v36);
    if (!swift_getEnumCaseMultiPayload())
    {
      v67 = v82;
      v68 = &v41[v42];
      v69 = v83;
      (*(v82 + 32))(v17, v68, v83);
      sub_2406021BC();
      sub_240602210();
      v48 = sub_240759964();
      v70 = *(v67 + 8);
      v70(v17, v69);
      v70(v36, v69);
      goto LABEL_27;
    }

    (*(v82 + 8))(v36, v83);
  }

LABEL_25:
  sub_2405B8A50(v41, &qword_27E4BDC90, &qword_2407804B8);
  v48 = 0;
  return v48 & 1;
}

unint64_t sub_240710734()
{
  result = qword_27E4BD990;
  if (!qword_27E4BD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD990);
  }

  return result;
}

unint64_t sub_240710788()
{
  result = qword_27E4BD998;
  if (!qword_27E4BD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD998);
  }

  return result;
}

unint64_t sub_2407107DC()
{
  result = qword_27E4BD9A0;
  if (!qword_27E4BD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD9A0);
  }

  return result;
}

unint64_t sub_240710830()
{
  result = qword_27E4BD9A8;
  if (!qword_27E4BD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD9A8);
  }

  return result;
}

unint64_t sub_240710884()
{
  result = qword_27E4BD9B0;
  if (!qword_27E4BD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD9B0);
  }

  return result;
}

unint64_t sub_2407108D8()
{
  result = qword_27E4BD9B8;
  if (!qword_27E4BD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD9B8);
  }

  return result;
}

unint64_t sub_24071092C()
{
  result = qword_27E4BD9C0;
  if (!qword_27E4BD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BD9C0);
  }

  return result;
}

uint64_t type metadata accessor for AnisetteCommand.Response()
{
  result = qword_280FADDF8;
  if (!qword_280FADDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2407109CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnisetteCommand.Response();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240710A30()
{
  result = qword_27E4BDA38;
  if (!qword_27E4BDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA38);
  }

  return result;
}

unint64_t sub_240710A84()
{
  result = qword_27E4BDA40;
  if (!qword_27E4BDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA40);
  }

  return result;
}

unint64_t sub_240710AD8()
{
  result = qword_27E4BDA48;
  if (!qword_27E4BDA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BC0, &qword_24077F1B0);
    sub_240710F1C(&qword_27E4BDA50);
    sub_24060230C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA48);
  }

  return result;
}

unint64_t sub_240710B88()
{
  result = qword_27E4BDA58;
  if (!qword_27E4BDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA58);
  }

  return result;
}

uint64_t sub_240710BDC(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9BB8, &qword_24076CD70);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240710C6C()
{
  result = qword_27E4BDA68;
  if (!qword_27E4BDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA68);
  }

  return result;
}

unint64_t sub_240710CC0()
{
  result = qword_27E4BDA70;
  if (!qword_27E4BDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA70);
  }

  return result;
}

unint64_t sub_240710D14()
{
  result = qword_27E4BDA78;
  if (!qword_27E4BDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA78);
  }

  return result;
}

unint64_t sub_240710D68()
{
  result = qword_27E4BDA80;
  if (!qword_27E4BDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA80);
  }

  return result;
}

unint64_t sub_240710DBC()
{
  result = qword_27E4BDA88;
  if (!qword_27E4BDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BC0, &qword_24077F1B0);
    sub_240712878(&qword_27E4BDA90);
    sub_2406023B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDA88);
  }

  return result;
}

unint64_t sub_240710E6C()
{
  result = qword_27E4BDAD8;
  if (!qword_27E4BDAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BC0, &qword_24077F1B0);
    sub_240710F1C(&qword_27E4BDAE0);
    sub_2406024EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDAD8);
  }

  return result;
}

uint64_t sub_240710F1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B86D8, &unk_2407670A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240710F88(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9350, &qword_24076B5F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24071100C()
{
  result = qword_27E4BDAF0;
  if (!qword_27E4BDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDAF0);
  }

  return result;
}

unint64_t sub_240711060(uint64_t a1)
{
  result = sub_240711088();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240711088()
{
  result = qword_27E4BDAF8;
  if (!qword_27E4BDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDAF8);
  }

  return result;
}

unint64_t sub_2407110DC()
{
  result = qword_27E4BDB00;
  if (!qword_27E4BDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB00);
  }

  return result;
}

unint64_t sub_240711130(uint64_t a1)
{
  result = sub_240711158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240711158()
{
  result = qword_27E4BDB08;
  if (!qword_27E4BDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB08);
  }

  return result;
}

unint64_t sub_2407111AC(void *a1)
{
  a1[1] = sub_2405E1BAC();
  a1[2] = sub_2405E17C4();
  result = sub_2407111E4();
  a1[3] = result;
  return result;
}

unint64_t sub_2407111E4()
{
  result = qword_27E4BDB10;
  if (!qword_27E4BDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB10);
  }

  return result;
}

unint64_t sub_24071123C()
{
  result = qword_27E4BDB18;
  if (!qword_27E4BDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB18);
  }

  return result;
}

uint64_t sub_240711290(uint64_t a1)
{
  result = sub_240711464(&qword_27E4BDB20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2407112D4(uint64_t a1)
{
  result = sub_240711464(&qword_27E4BDB28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_240711318(void *a1)
{
  a1[1] = sub_240711464(&qword_27E4B7C00);
  a1[2] = sub_240711464(&qword_27E4B7B70);
  result = sub_240711464(&qword_27E4BDB30);
  a1[3] = result;
  return result;
}

unint64_t sub_2407113DC()
{
  result = qword_27E4BDB40;
  if (!qword_27E4BDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB40);
  }

  return result;
}

uint64_t sub_240711464(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnisetteCommand.Response();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2407114A8(uint64_t a1)
{
  result = sub_2407110DC();
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup15AnisetteCommandV7RequestO(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 3;
  }
}

uint64_t sub_240711538(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 33))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (4 * *(a1 + 32))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24071158C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 1020;
    *(result + 8) = 0;
    if (a3 >= 0x3FC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 & 3) << 60;
      *(result + 32) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_2407115F4(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 24) = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2 > 3;
  return result;
}

void sub_240711638()
{
  sub_2407116E4(319, &qword_280FAD788);
  if (v0 <= 0x3F)
  {
    sub_2407116E4(319, &qword_280FAD798);
    if (v1 <= 0x3F)
    {
      sub_240711748();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2407116E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_240602210();
    v3 = sub_240759974();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_240711748()
{
  if (!qword_280FAD790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B86D8, &unk_2407670A0);
    sub_240602210();
    v0 = sub_240759974();
    if (!v1)
    {
      atomic_store(v0, &qword_280FAD790);
    }
  }
}

unint64_t sub_2407118A4()
{
  result = qword_27E4BDB50;
  if (!qword_27E4BDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB50);
  }

  return result;
}

unint64_t sub_2407118FC()
{
  result = qword_27E4BDB58;
  if (!qword_27E4BDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB58);
  }

  return result;
}

unint64_t sub_240711954()
{
  result = qword_27E4BDB60;
  if (!qword_27E4BDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB60);
  }

  return result;
}

unint64_t sub_2407119AC()
{
  result = qword_27E4BDB68;
  if (!qword_27E4BDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB68);
  }

  return result;
}

unint64_t sub_240711A04()
{
  result = qword_27E4BDB70;
  if (!qword_27E4BDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB70);
  }

  return result;
}

unint64_t sub_240711A5C()
{
  result = qword_27E4BDB78;
  if (!qword_27E4BDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB78);
  }

  return result;
}

unint64_t sub_240711AB4()
{
  result = qword_27E4BDB80;
  if (!qword_27E4BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB80);
  }

  return result;
}

unint64_t sub_240711B0C()
{
  result = qword_27E4BDB88;
  if (!qword_27E4BDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB88);
  }

  return result;
}

unint64_t sub_240711B64()
{
  result = qword_27E4BDB90;
  if (!qword_27E4BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB90);
  }

  return result;
}

unint64_t sub_240711BBC()
{
  result = qword_27E4BDB98;
  if (!qword_27E4BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDB98);
  }

  return result;
}

unint64_t sub_240711C14()
{
  result = qword_27E4BDBA0;
  if (!qword_27E4BDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBA0);
  }

  return result;
}

unint64_t sub_240711C6C()
{
  result = qword_27E4BDBA8;
  if (!qword_27E4BDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBA8);
  }

  return result;
}

unint64_t sub_240711CC4()
{
  result = qword_27E4BDBB0;
  if (!qword_27E4BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBB0);
  }

  return result;
}

unint64_t sub_240711D1C()
{
  result = qword_27E4BDBB8;
  if (!qword_27E4BDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBB8);
  }

  return result;
}

unint64_t sub_240711D74()
{
  result = qword_27E4BDBC0;
  if (!qword_27E4BDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBC0);
  }

  return result;
}

unint64_t sub_240711DCC()
{
  result = qword_27E4BDBC8;
  if (!qword_27E4BDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBC8);
  }

  return result;
}

unint64_t sub_240711E24()
{
  result = qword_27E4BDBD0;
  if (!qword_27E4BDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBD0);
  }

  return result;
}

unint64_t sub_240711E7C()
{
  result = qword_27E4BDBD8;
  if (!qword_27E4BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBD8);
  }

  return result;
}

unint64_t sub_240711ED4()
{
  result = qword_27E4BDBE0;
  if (!qword_27E4BDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBE0);
  }

  return result;
}

unint64_t sub_240711F2C()
{
  result = qword_27E4BDBE8;
  if (!qword_27E4BDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBE8);
  }

  return result;
}

unint64_t sub_240711F84()
{
  result = qword_27E4BDBF0;
  if (!qword_27E4BDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBF0);
  }

  return result;
}

unint64_t sub_240711FDC()
{
  result = qword_27E4BDBF8;
  if (!qword_27E4BDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDBF8);
  }

  return result;
}

unint64_t sub_240712034()
{
  result = qword_27E4BDC00;
  if (!qword_27E4BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC00);
  }

  return result;
}

unint64_t sub_24071208C()
{
  result = qword_27E4BDC08;
  if (!qword_27E4BDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC08);
  }

  return result;
}

unint64_t sub_2407120E4()
{
  result = qword_27E4BDC10;
  if (!qword_27E4BDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC10);
  }

  return result;
}

unint64_t sub_24071213C()
{
  result = qword_27E4BDC18;
  if (!qword_27E4BDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC18);
  }

  return result;
}

unint64_t sub_240712194()
{
  result = qword_27E4BDC20;
  if (!qword_27E4BDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC20);
  }

  return result;
}

unint64_t sub_2407121EC()
{
  result = qword_27E4BDC28;
  if (!qword_27E4BDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC28);
  }

  return result;
}

unint64_t sub_240712244()
{
  result = qword_27E4BDC30;
  if (!qword_27E4BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC30);
  }

  return result;
}

unint64_t sub_24071229C()
{
  result = qword_27E4BDC38;
  if (!qword_27E4BDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC38);
  }

  return result;
}

unint64_t sub_2407122F4()
{
  result = qword_27E4BDC40;
  if (!qword_27E4BDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC40);
  }

  return result;
}

unint64_t sub_24071234C()
{
  result = qword_27E4BDC48;
  if (!qword_27E4BDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC48);
  }

  return result;
}

unint64_t sub_2407123A4()
{
  result = qword_27E4BDC50;
  if (!qword_27E4BDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC50);
  }

  return result;
}

unint64_t sub_2407123FC()
{
  result = qword_27E4BDC58;
  if (!qword_27E4BDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC58);
  }

  return result;
}

unint64_t sub_240712454()
{
  result = qword_27E4BDC60;
  if (!qword_27E4BDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC60);
  }

  return result;
}

unint64_t sub_2407124AC()
{
  result = qword_27E4BDC68;
  if (!qword_27E4BDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC68);
  }

  return result;
}

unint64_t sub_240712504()
{
  result = qword_27E4BDC70;
  if (!qword_27E4BDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC70);
  }

  return result;
}

unint64_t sub_24071255C()
{
  result = qword_27E4BDC78;
  if (!qword_27E4BDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC78);
  }

  return result;
}

unint64_t sub_2407125B4()
{
  result = qword_27E4BDC80;
  if (!qword_27E4BDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC80);
  }

  return result;
}

unint64_t sub_24071260C()
{
  result = qword_27E4BDC88;
  if (!qword_27E4BDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDC88);
  }

  return result;
}

uint64_t sub_240712660(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F697369766F7270 && a2 == 0xE90000000000006ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573617265 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446863746566 && a2 == 0xE900000000000061 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614479636167656CLL && a2 == 0xEA00000000006174 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000240789D40 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_240712878(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B86D8, &unk_2407670A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2407128E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_240712954()
{
  v0 = sub_240759A64();
  __swift_allocate_value_buffer(v0, qword_27E4BDCA8);
  __swift_project_value_buffer(v0, qword_27E4BDCA8);
  return sub_240759A54();
}

uint64_t Signpost.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = "com.apple.appleidsetup.signpost";
  *(v7 + 24) = 31;
  *(v7 + 32) = 2;
  v8 = OBJC_IVAR____TtC12AppleIDSetup8Signpost_identifier;
  v9 = sub_240759A34();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState) = 0;
  v10 = v7 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_startTime;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  return v7;
}

uint64_t Signpost.init(name:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = "com.apple.appleidsetup.signpost";
  *(v2 + 24) = 31;
  *(v2 + 32) = 2;
  v5 = OBJC_IVAR____TtC12AppleIDSetup8Signpost_identifier;
  v6 = sub_240759A34();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState) = 0;
  v7 = v2 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_startTime;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return v2;
}

void sub_240712B60()
{
  v1 = v0;
  v2 = sub_240759A34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v55 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCD8, &qword_2407804C8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v55 - v18;
  if (qword_27E4B5F98 != -1)
  {
    swift_once();
  }

  v20 = sub_240759A64();
  v21 = __swift_project_value_buffer(v20, qword_27E4BDCA8);
  sub_240759A44();
  sub_240759A14();
  (*(v3 + 56))(v19, 0, 1, v2);
  v22 = OBJC_IVAR____TtC12AppleIDSetup8Signpost_identifier;
  swift_beginAccess();
  sub_240713218(v19, v1 + v22);
  swift_endAccess();
  sub_240713288(v1 + v22, v17);
  if ((*(v3 + 48))(v17, 1, v2) != 1)
  {
    (*(v3 + 32))(v12, v17, v2);
    if (qword_27E4B5ED0 != -1)
    {
      swift_once();
    }

    v27 = sub_240759AE4();
    __swift_project_value_buffer(v27, qword_27E4B8560);
    v58 = *(v3 + 16);
    v59 = v3 + 16;
    v58(v10, v12, v2);

    v28 = sub_240759AC4();
    v29 = sub_24075A604();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v56 = v7;
      v31 = v30;
      v55[0] = swift_slowAlloc();
      v61[0] = v55[0];
      *v31 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCE0, &qword_2407804D0);
      v32 = swift_allocObject();
      v55[1] = v21;
      v33 = v32;
      *(v32 + 16) = xmmword_240765570;
      v34 = sub_240759A24();
      v35 = MEMORY[0x277D84D90];
      v33[7] = MEMORY[0x277D84D38];
      v33[8] = v35;
      v33[4] = v34;
      v36 = sub_24075A0C4();
      v38 = v37;
      v57 = *(v3 + 8);
      v57(v10, v2);
      v39 = sub_2405BBA7C(v36, v38, v61);

      *(v31 + 4) = v39;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2405BBA7C(*(v1 + 40), *(v1 + 48), v61);
      _os_log_impl(&dword_240579000, v28, v29, "BEGIN [%s]: %s", v31, 0x16u);
      v40 = v55[0];
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v40, -1, -1);
      v41 = v31;
      v7 = v56;
      MEMORY[0x245CC76B0](v41, -1, -1);
    }

    else
    {

      v57 = *(v3 + 8);
      v57(v10, v2);
    }

    v42 = *(v1 + 16);
    v43 = *(v1 + 32);
    v44 = sub_240759A44();
    v45 = sub_24075A684();
    if ((sub_24075A6F4() & 1) == 0)
    {
      goto LABEL_23;
    }

    if ((v43 & 1) == 0)
    {
      if (v42)
      {
LABEL_22:
        v46 = swift_slowAlloc();
        *v46 = 0;
        v47 = sub_240759A24();
        _os_signpost_emit_with_name_impl(&dword_240579000, v44, v45, v47, v42, "", v46, 2u);
        MEMORY[0x245CC76B0](v46, -1, -1);
LABEL_23:

        v58(v7, v12, v2);
        v48 = sub_240759AA4();
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        v51 = sub_240759A94();
        v52 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState);
        *(v1 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState) = v51;

        Current = CFAbsoluteTimeGetCurrent();
        v57(v12, v2);
        v54 = v1 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_startTime;
        *v54 = Current;
        *(v54 + 8) = 0;
        return;
      }

      __break(1u);
    }

    if (v42 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v42 & 0xFFFFF800) == 0xD800)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if (v42 >> 16 <= 0x10)
      {
        v42 = &v60;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  sub_2407132F8(v17);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v23 = sub_240759AE4();
  __swift_project_value_buffer(v23, qword_280FADA00);
  v24 = sub_240759AC4();
  v25 = sub_24075A5E4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_240579000, v24, v25, "Could not generate a signpost identifier. Cannot start a sign post.", v26, 2u);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }
}

uint64_t sub_240713218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCD8, &qword_2407804C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_240713288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCD8, &qword_2407804C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407132F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCD8, &qword_2407804C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_240713360()
{
  v1 = v0;
  v2 = sub_240759A74();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240759A64();
  isa = v7[-1].isa;
  v84 = v7;
  v8 = *(isa + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCD8, &qword_2407804C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v74 - v13;
  v15 = sub_240759A34();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v82 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v74 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v74 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_startTime + 8);
  v81 = v2;
  v78 = v6;
  v79 = v3;
  if (v25)
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v80 = 2960685;
    v26 = sub_240759AE4();
    __swift_project_value_buffer(v26, qword_280FADA00);
    v27 = sub_240759AC4();
    v28 = sub_24075A5E4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_240579000, v27, v28, "Could not determine time elapsed for signpost", v29, 2u);
      MEMORY[0x245CC76B0](v29, -1, -1);
    }

    v30 = 0xE300000000000000;
  }

  else
  {
    v31 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_startTime);
    v32 = CFAbsoluteTimeGetCurrent() - v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCE0, &qword_2407804D0);
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D839F8];
    *(v33 + 16) = xmmword_240765570;
    v35 = MEMORY[0x277D83A80];
    *(v33 + 56) = v34;
    *(v33 + 64) = v35;
    *(v33 + 32) = v32;
    v80 = sub_24075A0C4();
    v30 = v36;
  }

  v37 = OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState;
  if (*(v1 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState))
  {
    v38 = OBJC_IVAR____TtC12AppleIDSetup8Signpost_identifier;
    swift_beginAccess();
    sub_240713288(v1 + v38, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      sub_2407132F8(v14);
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v39 = sub_240759AE4();
      __swift_project_value_buffer(v39, qword_280FADA00);
      v40 = sub_240759AC4();
      v41 = sub_24075A5E4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_240579000, v40, v41, "We do not have a signpost identifier. Calling an end, but we don't have a beginning.", v42, 2u);
        MEMORY[0x245CC76B0](v42, -1, -1);
      }

      return;
    }

    (*(v16 + 32))(v24, v14, v15);
    if (qword_27E4B5F98 != -1)
    {
      swift_once();
    }

    v77 = v24;
    v47 = v84;
    v48 = __swift_project_value_buffer(v84, qword_27E4BDCA8);
    (*(isa + 2))(v10, v48, v47);
    if (!*(v1 + v37))
    {
LABEL_46:
      __break(1u);
      return;
    }

    v76 = *(v1 + 16);
    v49 = *(v1 + 32);

    v50 = sub_240759A44();
    sub_240759A84();
    v75 = sub_24075A674();
    if ((sub_24075A6F4() & 1) == 0)
    {
LABEL_37:

      v57 = *(v16 + 8);
      v57(v22, v15);
      (*(isa + 1))(v10, v84);
      if (qword_27E4B5ED0 != -1)
      {
        swift_once();
      }

      v58 = sub_240759AE4();
      __swift_project_value_buffer(v58, qword_27E4B8560);
      v59 = v82;
      (*(v16 + 16))(v82, v77, v15);

      v60 = sub_240759AC4();
      v61 = sub_24075A604();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v86 = v84;
        *v62 = 136315650;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDCE0, &qword_2407804D0);
        v63 = swift_allocObject();
        LODWORD(isa) = v61;
        v64 = v59;
        v65 = v63;
        *(v63 + 16) = xmmword_240765570;
        v66 = sub_240759A24();
        v67 = MEMORY[0x277D84D90];
        v65[7] = MEMORY[0x277D84D38];
        v65[8] = v67;
        v65[4] = v66;
        v68 = sub_24075A0C4();
        v70 = v69;
        v57(v64, v15);
        v71 = sub_2405BBA7C(v68, v70, &v86);

        *(v62 + 4) = v71;
        *(v62 + 12) = 2080;
        v72 = sub_2405BBA7C(v80, v30, &v86);

        *(v62 + 14) = v72;
        *(v62 + 22) = 2080;
        *(v62 + 24) = sub_2405BBA7C(*(v1 + 40), *(v1 + 48), &v86);
        _os_log_impl(&dword_240579000, v60, isa, "END [%s] %ss: %s", v62, 0x20u);
        v73 = v84;
        swift_arrayDestroy();
        MEMORY[0x245CC76B0](v73, -1, -1);
        MEMORY[0x245CC76B0](v62, -1, -1);
      }

      else
      {

        v57(v59, v15);
      }

      v57(v77, v15);
      return;
    }

    v74 = v15;
    if ((v49 & 1) == 0)
    {
      v51 = v81;
      if (v76)
      {
LABEL_33:

        v52 = v78;
        sub_240759AB4();

        v53 = v79;
        if ((*(v79 + 88))(v52, v51) == *MEMORY[0x277D85B00])
        {
          v54 = "[Error] Interval already ended";
        }

        else
        {
          (*(v53 + 8))(v52, v51);
          v54 = "";
        }

        v81 = v54;
        v15 = v74;
        v55 = swift_slowAlloc();
        *v55 = 0;
        v56 = sub_240759A24();
        _os_signpost_emit_with_name_impl(&dword_240579000, v50, v75, v56, v76, v81, v55, 2u);
        MEMORY[0x245CC76B0](v55, -1, -1);
        goto LABEL_37;
      }

      __break(1u);
    }

    v51 = v81;
    if (v76 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v76 & 0xFFFFF800) == 0xD800)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v76 >> 16 <= 0x10)
      {
        v76 = &v85;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v43 = sub_240759AE4();
  __swift_project_value_buffer(v43, qword_280FADA00);
  v84 = sub_240759AC4();
  v44 = sub_24075A5E4();
  if (os_log_type_enabled(v84, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_240579000, v84, v44, "Could not find non nil interval state, make sure begin() is being called before end().", v45, 2u);
    MEMORY[0x245CC76B0](v45, -1, -1);
  }

  v46 = v84;
}

uint64_t Signpost.deinit()
{
  v1 = *(v0 + 48);

  sub_2407132F8(v0 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState);

  return v0;
}

uint64_t Signpost.__deallocating_deinit()
{
  v1 = v0[6];

  sub_2407132F8(v0 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup8Signpost_intervalState);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_27E4BDCE8;
  if (!qword_27E4BDCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240713EB8()
{
  sub_240713FE4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_240713FE4()
{
  if (!qword_27E4BDCF8)
  {
    sub_240759A34();
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4BDCF8);
    }
  }
}

uint64_t Result<>.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22[1] = a4;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  sub_240602210();
  v15 = sub_24075AEE4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v22 - v17;
  (*(v9 + 16))(v13, v5, a1);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v22[4] = v14;
  v22[5] = v19;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = v20;
  sub_2407148E8(sub_2407148AC, a1, v18);
  return sub_240759944();
}

uint64_t RemoteError.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

AppleIDSetup::RemoteError __swiftcall RemoteError.init(domain:code:)(Swift::String domain, Swift::Int code)
{
  *v2 = domain;
  v2[1]._countAndFlagsBits = code;
  result.domain = domain;
  result.code = code;
  return result;
}

BOOL static RemoteError.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_24075ACF4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_240714274(uint64_t a1)
{
  v2 = sub_240714ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407142B0(uint64_t a1)
{
  v2 = sub_240714ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD00, &qword_240780570);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240714ABC();
  sub_24075AF74();
  v15 = 0;
  v11 = v13[1];
  sub_24075ABB4();
  if (!v11)
  {
    v14 = 1;
    sub_24075ABD4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RemoteError.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24075A114();
  return MEMORY[0x245CC6BA0](v3);
}

uint64_t RemoteError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24075AE64();
  sub_24075A114();
  MEMORY[0x245CC6BA0](v3);
  return sub_24075AED4();
}

uint64_t RemoteError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD10, &qword_240780578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240714ABC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_24075AAE4();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_240714728(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_24075ACF4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_240714784()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24075AE64();
  sub_24075A114();
  MEMORY[0x245CC6BA0](v3);
  return sub_24075AED4();
}

uint64_t sub_2407147E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24075A114();
  return MEMORY[0x245CC6BA0](v3);
}

uint64_t sub_240714820()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24075AE64();
  sub_24075A114();
  MEMORY[0x245CC6BA0](v3);
  return sub_24075AED4();
}

AppleIDSetup::RemoteError __swiftcall Error.into()()
{
  v1 = v0;
  v2 = sub_24075AE14();
  *v1 = v2;
  v1[1] = v3;
  v1[2] = 0;
  result.code = v4;
  result.domain._object = v3;
  result.domain._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_2407148AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  result = sub_24075AE14();
  *a1 = result;
  a1[1] = v6;
  a1[2] = 0;
  return result;
}

uint64_t sub_2407148E8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v3, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    v12 = *(a2 + 16);
    sub_24075AEE4();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    sub_24075AEE4();

    return swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_240714ABC()
{
  result = qword_27E4BDD08;
  if (!qword_27E4BDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDD08);
  }

  return result;
}

uint64_t Result<>.into()(void *a1)
{
  v2 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  return sub_240759944();
}

unint64_t sub_240714BDC(void *a1)
{
  a1[1] = sub_2406024EC();
  a1[2] = sub_24060230C();
  result = sub_2406023B4();
  a1[3] = result;
  return result;
}

unint64_t sub_240714C3C()
{
  result = qword_27E4BDD18;
  if (!qword_27E4BDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDD18);
  }

  return result;
}

unint64_t sub_240714C94()
{
  result = qword_27E4BDD20;
  if (!qword_27E4BDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDD20);
  }

  return result;
}

unint64_t sub_240714CEC()
{
  result = qword_27E4BDD28;
  if (!qword_27E4BDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDD28);
  }

  return result;
}

__n128 RepairModel.init(accountID:setupModel:state:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = a1[3];
  a4[2] = a1[2];
  a4[3] = v9;
  a4[4] = a1[4];
  v10 = a1[1];
  *a4 = *a1;
  a4[1] = v10;
  v11 = type metadata accessor for RepairModel();
  sub_240717E04(a2, a4 + *(v11 + 20));
  v12 = a4 + *(v11 + 24);
  result = *a3;
  v14 = *(a3 + 16);
  *v12 = *a3;
  *(v12 + 1) = v14;
  *(v12 + 4) = v7;
  v12[40] = v8;
  return result;
}

uint64_t sub_240714DD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646F4D7075746573;
  v4 = 0xEA00000000006C65;
  if (v2 != 1)
  {
    v3 = 0x6574617473;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x49746E756F636361;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  v7 = 0x646F4D7075746573;
  v8 = 0xEA00000000006C65;
  if (*a2 != 1)
  {
    v7 = 0x6574617473;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000044;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24075ACF4();
  }

  return v11 & 1;
}

uint64_t sub_240714ED4()
{
  v1 = *v0;
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_240714F7C()
{
  *v0;
  *v0;
  sub_24075A114();
}

uint64_t sub_240715010()
{
  v1 = *v0;
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_2407150B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_240718D50();
  *a2 = result;
  return result;
}

void sub_2407150E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0xEA00000000006C65;
  v5 = 0x646F4D7075746573;
  if (v2 != 1)
  {
    v5 = 0x6574617473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x49746E756F636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_240715148()
{
  v1 = 0x646F4D7075746573;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_2407151A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240718D50();
  *a1 = result;
  return result;
}

uint64_t sub_2407151D0(uint64_t a1)
{
  v2 = sub_240717E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071520C(uint64_t a1)
{
  v2 = sub_240717E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairModel.accountID.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

__n128 RepairModel.accountID.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_240618468(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t RepairModel.setupModel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RepairModel() + 20);

  return sub_240607744(a1, v3);
}

uint64_t RepairModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RepairModel() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  return sub_240717E68(v4, v5, v6, v7, v8, v9);
}

__n128 RepairModel.state.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for RepairModel() + 24);
  sub_2406076C8(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t RepairModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD30, &qword_2407807F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240717E7C();
  v10 = v4;
  sub_24075AF74();
  v11 = v2[2];
  v12 = *v2;
  v45 = v2[1];
  v46 = v11;
  v13 = v2[2];
  v14 = v2[4];
  v47 = v2[3];
  v48 = v14;
  v15 = *v2;
  v41 = v13;
  v42 = v47;
  v43 = v2[4];
  v44 = v15;
  v39 = v12;
  v40 = v45;
  v38 = 0;
  sub_2405AF99C(&v44, &v33);
  sub_2406185FC();
  v16 = v49;
  sub_24075ABE4();
  if (v16)
  {
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v33 = v39;
    v34 = v40;
    sub_240618468(&v33);
  }

  else
  {
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v33 = v39;
    v34 = v40;
    sub_240618468(&v33);
    v17 = type metadata accessor for RepairModel();
    v18 = *(v17 + 20);
    LOBYTE(v27) = 1;
    type metadata accessor for SetupModel();
    sub_240718380(&qword_27E4BDD40, type metadata accessor for SetupModel);
    v10 = v4;
    sub_24075ABE4();
    v19 = v2 + *(v17 + 24);
    v20 = *(v19 + 1);
    v21 = *(v19 + 2);
    v22 = *(v19 + 3);
    v23 = *(v19 + 4);
    v24 = v19[40];
    v27 = *v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v26[15] = 2;
    sub_240717E68(v27, v20, v21, v22, v23, v24);
    sub_240717ED0();
    sub_24075ABE4();
    sub_2406076C8(v27, v28, v29, v30, v31, v32);
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t RepairModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for SetupModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD50, &qword_2407807F8);
  v30 = *(v31 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v27 - v9;
  v11 = type metadata accessor for RepairModel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_240717E7C();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v17 = v14;
  v28 = v11;
  v37 = 0;
  sub_2406186F8();
  v18 = v31;
  sub_24075AAF4();
  v19 = v41;
  v17[2] = v40;
  v17[3] = v19;
  v17[4] = v42;
  v20 = v39;
  *v17 = v38;
  v17[1] = v20;
  LOBYTE(v33) = 1;
  sub_240718380(&qword_27E4BDD58, type metadata accessor for SetupModel);
  sub_24075AAF4();
  v21 = v28;
  sub_240717E04(v7, v17 + *(v28 + 20));
  v32 = 2;
  sub_240717F24();
  sub_24075AAF4();
  (*(v30 + 8))(v10, v18);
  v22 = v35;
  v23 = v36;
  v24 = v17 + *(v21 + 24);
  v25 = v34;
  *v24 = v33;
  *(v24 + 1) = v25;
  *(v24 + 4) = v22;
  v24[40] = v23;
  sub_240717F78(v17, v29, type metadata accessor for RepairModel);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_240717FE0(v17, type metadata accessor for RepairModel);
}

__n128 RepairModel.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_24075A114();
  v6 = type metadata accessor for RepairModel();
  v7 = v1 + *(v6 + 20);
  v8.n128_f64[0] = SetupModel.hash(into:)(a1);
  v9 = v2 + *(v6 + 24);
  v10 = v9[40];
  if (v10 <= 0xFC)
  {
    if (v10 == 251)
    {
      v11 = 5;
      goto LABEL_12;
    }

    if (v10 == 252)
    {
      v11 = 3;
      goto LABEL_12;
    }

LABEL_14:
    v13 = *(v9 + 4);
    v14 = *(v9 + 1);
    v15 = *v9;
    MEMORY[0x245CC6BA0](4);
    RepairError.hash(into:)(a1);
    return result;
  }

  if (v10 == 253)
  {
    v11 = 2;
    goto LABEL_12;
  }

  if (v10 == 254)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (v10 != 255)
  {
    goto LABEL_14;
  }

  v11 = 0;
LABEL_12:
  MEMORY[0x245CC6BA0](v11, v8);
  return result;
}

uint64_t RepairModel.hashValue.getter()
{
  sub_24075AE64();
  RepairModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_240715DDC()
{
  sub_24075AE64();
  RepairModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_240715E20()
{
  sub_24075AE64();
  RepairModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_240715E5C()
{
  v1 = *v0;
  v2 = 0x6C616974696E69;
  v3 = 0x64656873696E6966;
  v4 = 0x64656C696166;
  if (v1 != 4)
  {
    v4 = 0x7373696D736964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7075746573;
  if (v1 != 1)
  {
    v5 = 0x6E69726961706572;
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

uint64_t sub_240715F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240718D9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240715F3C(uint64_t a1)
{
  v2 = sub_240718040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240715F78(uint64_t a1)
{
  v2 = sub_240718040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240715FB4(uint64_t a1)
{
  v2 = sub_240718094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240715FF0(uint64_t a1)
{
  v2 = sub_240718094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071602C(uint64_t a1)
{
  v2 = sub_2407180E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240716068(uint64_t a1)
{
  v2 = sub_2407180E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2407160A4(uint64_t a1)
{
  v2 = sub_24071813C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407160E0(uint64_t a1)
{
  v2 = sub_24071813C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071611C(uint64_t a1)
{
  v2 = sub_240718238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240716158(uint64_t a1)
{
  v2 = sub_240718238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240716194(uint64_t a1)
{
  v2 = sub_240718190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407161D0(uint64_t a1)
{
  v2 = sub_240718190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071620C(uint64_t a1)
{
  v2 = sub_2407181E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240716248(uint64_t a1)
{
  v2 = sub_2407181E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairModel.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD68, &qword_240780800);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD70, &qword_240780808);
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD78, &qword_240780810);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD80, &qword_240780818);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = &v42 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD88, &qword_240780820);
  v47 = *(v48 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD90, &qword_240780828);
  v46 = *(v18 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDD98, &qword_240780830);
  v61 = *(v22 - 8);
  v62 = v22;
  v23 = *(v61 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  v26 = *v1;
  v44 = v1[1];
  v45 = v26;
  v43 = *(v1 + 4);
  v27 = *(v1 + 40);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240718040();
  sub_24075AF74();
  if (v27 > 252)
  {
    if (v27 == 253)
    {
      LOBYTE(v63) = 2;
      sub_240718190();
      v37 = v49;
      v29 = v62;
      sub_24075AB54();
      (*(v50 + 8))(v37, v51);
    }

    else if (v27 == 254)
    {
      LOBYTE(v63) = 1;
      sub_2407181E4();
      v29 = v62;
      sub_24075AB54();
      (*(v47 + 8))(v17, v48);
    }

    else
    {
      LOBYTE(v63) = 0;
      sub_240718238();
      v29 = v62;
      sub_24075AB54();
      (*(v46 + 8))(v21, v18);
    }

    return (*(v61 + 8))(v25, v29);
  }

  v30 = v55;
  v31 = v56;
  v33 = v57;
  v32 = v58;
  v35 = v59;
  v34 = v60;
  if (v27 == 251)
  {
    LOBYTE(v63) = 5;
    sub_240718094();
    v29 = v62;
    sub_24075AB54();
    (*(v35 + 8))(v32, v34);
    return (*(v61 + 8))(v25, v29);
  }

  if (v27 == 252)
  {
    LOBYTE(v63) = 3;
    sub_24071813C();
    v36 = v30;
    v29 = v62;
    sub_24075AB54();
    (*(v31 + 8))(v36, v33);
    return (*(v61 + 8))(v25, v29);
  }

  LOBYTE(v63) = 4;
  sub_2407180E8();
  v39 = v52;
  v40 = v62;
  sub_24075AB54();
  v64 = v44;
  v63 = v45;
  v65 = v43;
  v66 = v27;
  sub_2405EE62C();
  v41 = v54;
  sub_24075ABE4();
  (*(v53 + 8))(v39, v41);
  return (*(v61 + 8))(v25, v40);
}

void RepairModel.State.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  if (v3 <= 0xFC)
  {
    if (v3 == 251)
    {
      v4 = 5;
      goto LABEL_12;
    }

    if (v3 == 252)
    {
      v4 = 3;
      goto LABEL_12;
    }

LABEL_14:
    v5 = *(v1 + 4);
    MEMORY[0x245CC6BA0](4);
    v6 = *v1;
    v7 = v1[1];
    RepairError.hash(into:)(a1);
    return;
  }

  if (v3 == 253)
  {
    v4 = 2;
    goto LABEL_12;
  }

  if (v3 == 254)
  {
    v4 = 1;
    goto LABEL_12;
  }

  if (v3 != 255)
  {
    goto LABEL_14;
  }

  v4 = 0;
LABEL_12:
  MEMORY[0x245CC6BA0](v4);
}

uint64_t RepairModel.State.hashValue.getter()
{
  v5 = v0[1];
  v6 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  sub_24075AE64();
  if (v2 <= 252)
  {
    if (v2 == 251)
    {
      v3 = 5;
    }

    else
    {
      if (v2 != 252)
      {
        MEMORY[0x245CC6BA0](4);
        RepairError.hash(into:)(v7);
        return sub_24075AED4();
      }

      v3 = 3;
    }
  }

  else if (v2 == 253)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 254;
  }

  MEMORY[0x245CC6BA0](v3);
  return sub_24075AED4();
}

uint64_t RepairModel.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDDD8, &qword_240780838);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v57 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDDE0, &qword_240780840);
  v70 = *(v67 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  v73 = &v57 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDDE8, &qword_240780848);
  v66 = *(v61 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v61);
  v72 = &v57 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDDF0, &qword_240780850);
  v64 = *(v65 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v71 = &v57 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDDF8, &qword_240780858);
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDE00, &qword_240780860);
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDE08, &unk_240780868);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_240718040();
  v26 = v76;
  sub_24075AF34();
  if (!v26)
  {
    v27 = v18;
    v57 = v15;
    v58 = v14;
    v29 = v72;
    v28 = v73;
    v76 = v20;
    v30 = v74;
    v31 = v75;
    v59 = v19;
    v32 = sub_24075AB34();
    v33 = (2 * *(v32 + 16)) | 1;
    v81 = v32;
    v82 = v32 + 32;
    v83 = 0;
    v84 = v33;
    v34 = sub_2405B8B00();
    if (v34 != 6 && v83 == v84 >> 1)
    {
      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          LOBYTE(v77) = 3;
          sub_24071813C();
          v51 = v59;
          sub_24075AA54();
          v52 = v76;
          (*(v66 + 8))(v29, v61);
          (*(v52 + 8))(v23, v51);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 0uLL;
          v40 = -4;
        }

        else
        {
          v47 = v76;
          v48 = v59;
          if (v34 == 4)
          {
            LOBYTE(v77) = 4;
            sub_2407180E8();
            sub_24075AA54();
            sub_2405EEBC0();
            v49 = v67;
            sub_24075AAF4();
            (*(v70 + 8))(v28, v49);
            (*(v47 + 8))(v23, v48);
            swift_unknownObjectRelease();
            v39 = v77;
            v56 = v78;
            v38 = v79;
            v40 = v80;
LABEL_18:
            *v31 = v39;
            *(v31 + 16) = v56;
            *(v31 + 32) = v38;
            *(v31 + 40) = v40;
            return __swift_destroy_boxed_opaque_existential_1(v85);
          }

          LOBYTE(v77) = 5;
          sub_240718094();
          sub_24075AA54();
          (*(v68 + 8))(v30, v69);
          (*(v47 + 8))(v23, v48);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 0uLL;
          v40 = -5;
        }
      }

      else if (v34)
      {
        if (v34 == 1)
        {
          LOBYTE(v77) = 1;
          sub_2407181E4();
          v35 = v58;
          v36 = v59;
          sub_24075AA54();
          v37 = v76;
          (*(v62 + 8))(v35, v63);
          (*(v37 + 8))(v23, v36);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 0uLL;
          v40 = -2;
        }

        else
        {
          LOBYTE(v77) = 2;
          sub_240718190();
          v53 = v71;
          v54 = v59;
          sub_24075AA54();
          v55 = v76;
          (*(v64 + 8))(v53, v65);
          (*(v55 + 8))(v23, v54);
          swift_unknownObjectRelease();
          v38 = 0;
          v39 = 0uLL;
          v40 = -3;
        }
      }

      else
      {
        LOBYTE(v77) = 0;
        sub_240718238();
        v50 = v59;
        sub_24075AA54();
        (*(v60 + 8))(v27, v57);
        (*(v76 + 8))(v23, v50);
        swift_unknownObjectRelease();
        v38 = 0;
        v39 = 0uLL;
        v40 = -1;
      }

      v56 = 0uLL;
      goto LABEL_18;
    }

    v41 = sub_24075A8C4();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v43 = &type metadata for RepairModel.State;
    v45 = v59;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v76 + 8))(v23, v45);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

void sub_240717528(__int128 *a1)
{
  v3 = *(v1 + 40);
  if (v3 <= 0xFC)
  {
    if (v3 == 251)
    {
      v4 = 5;
      goto LABEL_12;
    }

    if (v3 == 252)
    {
      v4 = 3;
      goto LABEL_12;
    }

LABEL_14:
    v5 = *(v1 + 4);
    MEMORY[0x245CC6BA0](4);
    v6 = *v1;
    v7 = v1[1];
    RepairError.hash(into:)(a1);
    return;
  }

  if (v3 == 253)
  {
    v4 = 2;
    goto LABEL_12;
  }

  if (v3 == 254)
  {
    v4 = 1;
    goto LABEL_12;
  }

  if (v3 != 255)
  {
    goto LABEL_14;
  }

  v4 = 0;
LABEL_12:
  MEMORY[0x245CC6BA0](v4);
}

uint64_t sub_2407175F4()
{
  v5 = v0[1];
  v6 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  sub_24075AE64();
  if (v2 <= 252)
  {
    if (v2 == 251)
    {
      v3 = 5;
    }

    else
    {
      if (v2 != 252)
      {
        MEMORY[0x245CC6BA0](4);
        RepairError.hash(into:)(v7);
        return sub_24075AED4();
      }

      v3 = 3;
    }
  }

  else if (v2 == 253)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 254;
  }

  MEMORY[0x245CC6BA0](v3);
  return sub_24075AED4();
}

uint64_t RepairModel.description.getter()
{
  v1 = v0;
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000015, 0x8000000240789E30);
  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[4];
  v8 = *v0;
  v10 = v0[1];
  v2 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v2);

  MEMORY[0x245CC5E60](0x7574657320200A2CLL, 0xEF3A6C65646F4D70);
  v3 = type metadata accessor for RepairModel();
  v4 = v0 + *(v3 + 20);
  v5 = SetupModel.description.getter();
  MEMORY[0x245CC5E60](v5);

  MEMORY[0x245CC5E60](0x7461747320200A2CLL, 0xEA00000000003A65);
  v6 = v1 + *(v3 + 24);
  v9 = *v6;
  v11 = *(v6 + 1);
  *&v12 = *(v6 + 4);
  BYTE8(v12) = v6[40];
  sub_24075A994();
  MEMORY[0x245CC5E60](32010, 0xE200000000000000);
  return 0;
}

double static RepairModel._defaultModel.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RepairModel();
  static SetupModel._defaultModel.getter(a1 + *(v2 + 20));
  *a1 = 0x20746C7561666544;
  *(a1 + 8) = 0xEF44495344746C61;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v4 = a1 + *(v2 + 24);
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 40) = -1;
  return result;
}

uint64_t _s12AppleIDSetup11RepairModelV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v7 <= 0xFC)
  {
    if (v7 == 251)
    {
      if (v13 == 251)
      {
        v28 = *(a2 + 16);
        v29 = *(a2 + 8);
        sub_2406076C8(*a1, v3, v5, v4, v6, 0xFBu);
        v16 = v9;
        v17 = v29;
        v18 = v28;
        v19 = v11;
        v20 = v12;
        v21 = -5;
        goto LABEL_17;
      }
    }

    else
    {
      if (v7 != 252)
      {
LABEL_18:
        if (v13 <= 0xFA)
        {
          v48[0] = *a1;
          v48[1] = v3;
          v48[2] = v5;
          v48[3] = v4;
          v34 = v6;
          v48[4] = v6;
          v49 = v7;
          v46[0] = v9;
          v46[1] = v8;
          v46[2] = v10;
          v46[3] = v11;
          v41 = v10;
          v46[4] = v12;
          v47 = v13;
          v35 = v10;
          v36 = v11;
          v37 = v11;
          v42 = v13;
          v38 = v8;
          v45 = v8;
          sub_240717E68(v9, v8, v35, v37, v12, v13);
          sub_240717E68(v2, v3, v5, v4, v34, v7);
          v39 = v38;
          v40 = v36;
          sub_240717E68(v9, v39, v41, v36, v12, v42);
          sub_240717E68(v2, v3, v5, v4, v34, v7);
          v30 = _s12AppleIDSetup11RepairErrorO2eeoiySbAC_ACtFZ_0(v48, v46);
          sub_2406076C8(v2, v3, v5, v4, v34, v7);
          sub_2406076C8(v9, v45, v41, v40, v12, v42);
          sub_2406076C8(v9, v45, v41, v40, v12, v42);
          sub_2406076C8(v2, v3, v5, v4, v34, v7);
          return v30 & 1;
        }

        goto LABEL_19;
      }

      if (v13 == 252)
      {
        v22 = *(a2 + 16);
        v23 = *(a2 + 8);
        sub_2406076C8(*a1, v3, v5, v4, v6, 0xFCu);
        v16 = v9;
        v17 = v23;
        v18 = v22;
        v19 = v11;
        v20 = v12;
        v21 = -4;
        goto LABEL_17;
      }
    }

LABEL_19:
    v31 = *(a2 + 40);
    v43 = *a2;
    v44 = *(a2 + 8);
    v32 = *(a1 + 32);
    sub_240717E68(*a2, v44, v10, v11, v12, v13);
    sub_240717E68(v2, v3, v5, v4, v32, v7);
    sub_2406076C8(v2, v3, v5, v4, v32, v7);
    sub_2406076C8(v43, v44, v10, v11, v12, v31);
    v30 = 0;
    return v30 & 1;
  }

  if (v7 == 253)
  {
    if (v13 == 253)
    {
      v24 = *(a2 + 16);
      v25 = *(a2 + 8);
      sub_2406076C8(*a1, v3, v5, v4, v6, 0xFDu);
      v16 = v9;
      v17 = v25;
      v18 = v24;
      v19 = v11;
      v20 = v12;
      v21 = -3;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 == 254)
  {
    if (v13 == 254)
    {
      v26 = *(a2 + 16);
      v27 = *(a2 + 8);
      sub_2406076C8(*a1, v3, v5, v4, v6, 0xFEu);
      v16 = v9;
      v17 = v27;
      v18 = v26;
      v19 = v11;
      v20 = v12;
      v21 = -2;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v7 != 255)
  {
    goto LABEL_18;
  }

  if (v13 != 255)
  {
    goto LABEL_19;
  }

  v14 = *(a2 + 16);
  v15 = *(a2 + 8);
  sub_2406076C8(*a1, v3, v5, v4, v6, 0xFFu);
  v16 = v9;
  v17 = v15;
  v18 = v14;
  v19 = v11;
  v20 = v12;
  v21 = -1;
LABEL_17:
  sub_2406076C8(v16, v17, v18, v19, v20, v21);
  v30 = 1;
  return v30 & 1;
}

uint64_t _s12AppleIDSetup11RepairModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 1);
  if (v4 || (sub_24075ACF4()) && (v5 = type metadata accessor for RepairModel(), (_s12AppleIDSetup10SetupModelV2eeoiySbAC_ACtFZ_0(&a1[*(v5 + 20)], &a2[*(v5 + 20)])))
  {
    v6 = &a1[*(v5 + 24)];
    v7 = *(v6 + 1);
    v8 = *(v6 + 2);
    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v11 = v6[40];
    v26 = *v6;
    v27 = v7;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    v31 = v11;
    v12 = &a2[*(v5 + 24)];
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    v17 = v12[40];
    v20 = *v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    sub_240717E68(v26, v7, v8, v9, v10, v11);
    sub_240717E68(v20, v13, v14, v15, v16, v17);
    v18 = _s12AppleIDSetup11RepairModelV5StateO2eeoiySbAE_AEtFZ_0(&v26, &v20);
    sub_2406076C8(v20, v21, v22, v23, v24, v25);
    sub_2406076C8(v26, v27, v28, v29, v30, v31);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t type metadata accessor for RepairModel()
{
  result = qword_27E4BDE30;
  if (!qword_27E4BDE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240717E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240717E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xFAu)
  {
    return sub_2405EF2E8(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

unint64_t sub_240717E7C()
{
  result = qword_27E4BDD38;
  if (!qword_27E4BDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDD38);
  }

  return result;
}

unint64_t sub_240717ED0()
{
  result = qword_27E4BDD48;
  if (!qword_27E4BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDD48);
  }

  return result;
}

unint64_t sub_240717F24()
{
  result = qword_27E4BDD60;
  if (!qword_27E4BDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDD60);
  }

  return result;
}

uint64_t sub_240717F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240717FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_240718040()
{
  result = qword_27E4BDDA0;
  if (!qword_27E4BDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDDA0);
  }

  return result;
}

unint64_t sub_240718094()
{
  result = qword_27E4BDDA8;
  if (!qword_27E4BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDDA8);
  }

  return result;
}

unint64_t sub_2407180E8()
{
  result = qword_27E4BDDB0;
  if (!qword_27E4BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDDB0);
  }

  return result;
}

unint64_t sub_24071813C()
{
  result = qword_27E4BDDB8;
  if (!qword_27E4BDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDDB8);
  }

  return result;
}

unint64_t sub_240718190()
{
  result = qword_27E4BDDC0;
  if (!qword_27E4BDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDDC0);
  }

  return result;
}

unint64_t sub_2407181E4()
{
  result = qword_27E4BDDC8;
  if (!qword_27E4BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDDC8);
  }

  return result;
}

unint64_t sub_240718238()
{
  result = qword_27E4BDDD0;
  if (!qword_27E4BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDDD0);
  }

  return result;
}

uint64_t sub_24071828C(void *a1)
{
  a1[1] = sub_240718380(&qword_27E4B81F0, type metadata accessor for RepairModel);
  a1[2] = sub_240718380(&qword_27E4B8150, type metadata accessor for RepairModel);
  result = sub_240718380(&qword_27E4BDE10, type metadata accessor for RepairModel);
  a1[3] = result;
  return result;
}

uint64_t sub_240718380(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2407183C8(void *a1)
{
  a1[1] = sub_240717F24();
  a1[2] = sub_240717ED0();
  result = sub_240718400();
  a1[3] = result;
  return result;
}

unint64_t sub_240718400()
{
  result = qword_27E4BDE20;
  if (!qword_27E4BDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE20);
  }

  return result;
}

unint64_t sub_240718458()
{
  result = qword_27E4BDE28;
  if (!qword_27E4BDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE28);
  }

  return result;
}

uint64_t sub_2407184D4()
{
  result = type metadata accessor for SetupModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11RepairModelV5StateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24071856C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 41))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 40);
  if (v3 > 4)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2407185B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -5 - a2;
    }
  }

  return result;
}

double sub_240718604(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFB)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 - 252;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

unint64_t sub_2407186CC()
{
  result = qword_27E4BDE40;
  if (!qword_27E4BDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE40);
  }

  return result;
}

unint64_t sub_240718724()
{
  result = qword_27E4BDE48;
  if (!qword_27E4BDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE48);
  }

  return result;
}

unint64_t sub_24071877C()
{
  result = qword_27E4BDE50;
  if (!qword_27E4BDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE50);
  }

  return result;
}

unint64_t sub_2407187D4()
{
  result = qword_27E4BDE58;
  if (!qword_27E4BDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE58);
  }

  return result;
}

unint64_t sub_24071882C()
{
  result = qword_27E4BDE60;
  if (!qword_27E4BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE60);
  }

  return result;
}

unint64_t sub_240718884()
{
  result = qword_27E4BDE68;
  if (!qword_27E4BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE68);
  }

  return result;
}

unint64_t sub_2407188DC()
{
  result = qword_27E4BDE70;
  if (!qword_27E4BDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE70);
  }

  return result;
}

unint64_t sub_240718934()
{
  result = qword_27E4BDE78;
  if (!qword_27E4BDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE78);
  }

  return result;
}

unint64_t sub_24071898C()
{
  result = qword_27E4BDE80;
  if (!qword_27E4BDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE80);
  }

  return result;
}

unint64_t sub_2407189E4()
{
  result = qword_27E4BDE88;
  if (!qword_27E4BDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE88);
  }

  return result;
}

unint64_t sub_240718A3C()
{
  result = qword_27E4BDE90;
  if (!qword_27E4BDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE90);
  }

  return result;
}

unint64_t sub_240718A94()
{
  result = qword_27E4BDE98;
  if (!qword_27E4BDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDE98);
  }

  return result;
}

unint64_t sub_240718AEC()
{
  result = qword_27E4BDEA0;
  if (!qword_27E4BDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDEA0);
  }

  return result;
}

unint64_t sub_240718B44()
{
  result = qword_27E4BDEA8;
  if (!qword_27E4BDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDEA8);
  }

  return result;
}

unint64_t sub_240718B9C()
{
  result = qword_27E4BDEB0;
  if (!qword_27E4BDEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDEB0);
  }

  return result;
}

unint64_t sub_240718BF4()
{
  result = qword_27E4BDEB8;
  if (!qword_27E4BDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDEB8);
  }

  return result;
}

unint64_t sub_240718C4C()
{
  result = qword_27E4BDEC0;
  if (!qword_27E4BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDEC0);
  }

  return result;
}

unint64_t sub_240718CA4()
{
  result = qword_27E4BDEC8;
  if (!qword_27E4BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDEC8);
  }

  return result;
}

unint64_t sub_240718CFC()
{
  result = qword_27E4BDED0;
  if (!qword_27E4BDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDED0);
  }

  return result;
}

uint64_t sub_240718D50()
{
  v0 = sub_24075AA34();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_240718D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7075746573 && a2 == 0xE500000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69726961706572 && a2 == 0xE900000000000067 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_240718FB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_240719100()
{
  v1 = *(v0 + OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_2405BB2A4(*MEMORY[0x277CED1A0]);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t SignOutContext.machineIdToSignOut.getter()
{
  v1 = *(v0 + OBJC_IVAR___AISSignOutContext_machineIdToSignOut);
  v2 = *(v0 + OBJC_IVAR___AISSignOutContext_machineIdToSignOut + 8);

  return v1;
}

void sub_240719234(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService);
  type metadata accessor for AIDAServiceType(0);
  sub_240665FC0();
  v4 = sub_240759F54();
  v5 = sub_24075A084();
  [a1 encodeObject:v4 forKey:v5];

  if (*(v1 + OBJC_IVAR___AISSignOutContext_machineIdToSignOut + 8))
  {
    v6 = *(v1 + OBJC_IVAR___AISSignOutContext_machineIdToSignOut);
    v7 = sub_24075A084();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_24075A084();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(v1 + OBJC_IVAR___AISSignOutContext_type);
  v10 = sub_24075A084();
  [a1 encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser);
  v12 = sub_24075A084();
  [a1 encodeBool:v11 forKey:v12];
}

id SignOutContext.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24071A30C(a1);

  return v4;
}

id SignOutContext.init(coder:)(void *a1)
{
  v2 = sub_24071A30C(a1);

  return v2;
}

uint64_t sub_2407194B8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7398, &qword_240762640);
    v2 = sub_24075AA04();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v10 = 0;
  v25 = v1;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v13 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v13);
        ++v10;
        if (v6)
        {
          v10 = v13;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:
    v14 = __clz(__rbit64(v6)) | (v10 << 6);
    sub_2405BE44C(*(v1 + 48) + 40 * v14, v34);
    sub_2405BD1CC(*(v1 + 56) + 32 * v14, v35 + 8);
    v32[0] = v35[0];
    v32[1] = v35[1];
    v33 = v36;
    v31[0] = v34[0];
    v31[1] = v34[1];
    sub_2405BE44C(v31, v28);
    type metadata accessor for AIDAServiceType(0);
    if (!swift_dynamicCast())
    {
      sub_2405B8A50(v31, qword_27E4BDF30, &qword_2407813A8);

      goto LABEL_29;
    }

    v15 = v29;
    sub_2405BD1CC(v32 + 8, v28);
    sub_2405B8A50(v31, qword_27E4BDF30, &qword_2407813A8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v26 = v30;
    v27 = v29;
    v16 = *(v2 + 40);
    sub_24075A0B4();
    sub_24075AE64();
    sub_24075A114();
    v17 = sub_24075AED4();

    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v8 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      v1 = v25;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v8 + 8 * v20);
        if (v24 != -1)
        {
          v11 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v11 = __clz(__rbit64((-1 << v19) & ~*(v8 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
    v1 = v25;
LABEL_9:
    v6 &= v6 - 1;
    *(v8 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    *(*(v2 + 48) + 8 * v11) = v15;
    v12 = (*(v2 + 56) + 16 * v11);
    *v12 = v27;
    v12[1] = v26;
    ++*(v2 + 16);
  }

  v30 = 0;
LABEL_29:
  v29 = 0;

  return 0;
}

id SignOutContext.__allocating_init(accountAltDSIDsByService:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for SignOutContext();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = a1;
  v6 = &v5[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR___AISSignOutContext_type] = 0;
  v5[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = 0;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id SignOutContext.init(accountAltDSIDsByService:)(uint64_t a1)
{
  v2 = type metadata accessor for SignOutContext();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = a1;
  v4 = &v3[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v4 = 0;
  v4[1] = 0;
  *&v3[OBJC_IVAR___AISSignOutContext_type] = 0;
  v3[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = 0;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id SignOutContext.__allocating_init(accountAltDSIDsByService:machineIdToSignOut:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = a1;
  v10 = &v9[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v10 = a2;
  v10[1] = a3;
  *&v9[OBJC_IVAR___AISSignOutContext_type] = a4;
  v9[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = 0;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id SignOutContext.init(accountAltDSIDsByService:machineIdToSignOut:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = a1;
  v5 = &v4[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v5 = a2;
  v5[1] = a3;
  *&v4[OBJC_IVAR___AISSignOutContext_type] = a4;
  v4[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = 0;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for SignOutContext();
  return objc_msgSendSuper2(&v7, sel_init);
}

id SignOutContext.init(deviceUserCloudAltDSID:machineIdToSignOut:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDF08, &qword_2407812B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  v10 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v11 = v10;
  v12 = sub_2405BD890(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &qword_27E4BDF10, &qword_2407812C0);
  *&v4[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = v12;
  v13 = &v4[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v13 = a3;
  v13[1] = a4;
  *&v4[OBJC_IVAR___AISSignOutContext_type] = 0;
  v4[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = 1;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SignOutContext();
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_240719CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BDF08, &qword_2407812B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  v11 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v12 = v11;
  v13 = sub_2405BD890(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &qword_27E4BDF10, &qword_2407812C0);
  v14 = type metadata accessor for SignOutContext();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = v13;
  v16 = &v15[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v16 = a3;
  v16[1] = a4;
  *&v15[OBJC_IVAR___AISSignOutContext_type] = a5;
  v15[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = 0;
  v19.receiver = v15;
  v19.super_class = v14;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

id sub_240719E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_24075A084();

  v7 = [v5 initWithAltDSID:v6 machineIdToSignOut:0 type:a3];

  return v7;
}

id sub_240719F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24075A084();

  v6 = [v3 initWithAltDSID:v5 machineIdToSignOut:0 type:a3];

  return v6;
}

id SignOutContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignOutContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SignOutContext.description.getter()
{
  v1 = v0;
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000010, 0x8000000240789EB0);
  v8 = v0;
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000022, 0x8000000240789ED0);
  v2 = *(v0 + OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService);
  type metadata accessor for AIDAServiceType(0);
  sub_240665FC0();
  v3 = sub_240759F84();
  MEMORY[0x245CC5E60](v3);

  MEMORY[0x245CC5E60](0xD00000000000001ELL, 0x8000000240789F00);
  if (*(v8 + OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v4, v5);

  MEMORY[0x245CC5E60](0xD00000000000001ALL, 0x8000000240789F20);
  v9 = *(v1 + OBJC_IVAR___AISSignOutContext_machineIdToSignOut);
  sub_24075ACD4();
  MEMORY[0x245CC5E60](0x7974202020200A2CLL, 0xEC000000203A6570);
  *&v9 = *(v1 + OBJC_IVAR___AISSignOutContext_type);
  v6 = sub_24075AC34();
  MEMORY[0x245CC5E60](v6);

  MEMORY[0x245CC5E60](32010, 0xE200000000000000);
  return 0;
}

id sub_24071A30C(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC128, &qword_240775CC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_240765570;
  v5 = sub_24071A66C();
  *(v4 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_240765570;
  *(v6 + 32) = v5;
  v7 = sub_24075A6A4();

  if (!v7 || (v8 = sub_2407194B8(v7), , !v8))
  {
    v8 = sub_2405BD890(MEMORY[0x277D84F90]);
  }

  *&v2[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = v8;
  v9 = sub_24075A694();
  if (v9)
  {
    v10 = v9;
    v11 = sub_24075A0B4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = &v2[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v14 = v11;
  v14[1] = v13;
  v15 = sub_24075A084();
  v16 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___AISSignOutContext_type] = v16;
  v17 = sub_24075A084();
  v18 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = v18;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for SignOutContext();
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t sub_24071A54C()
{
  result = qword_27E4BDF18;
  if (!qword_27E4BDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BDF18);
  }

  return result;
}

unint64_t sub_24071A66C()
{
  result = qword_27E4BDF20;
  if (!qword_27E4BDF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4BDF20);
  }

  return result;
}

uint64_t sub_24071A748@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_24071ACC0(KeyPath);

  return sub_2405BE94C(a1);
}

uint64_t sub_24071A7CC(uint64_t a1)
{
  v3 = *v1;
  sub_24071AF6C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t sub_24071A848(uint64_t a1)
{
  v1 = *(*(*(*a1 + 80) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2);
  return sub_2405BE9EC(v3);
}

void (*sub_24071A914(uint64_t *a1))(void *a1)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *v1;
  MEMORY[0x28223BE20](v4);
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  KeyPath = swift_getKeyPath();
  sub_24071ACC0(KeyPath);

  v12 = *(*v1 + 104);
  *v5 = v2;
  MEMORY[0x28223BE20](v11);
  swift_getKeyPath();
  type metadata accessor for ObservableBox();
  swift_getWitnessTable();
  sub_240759834();

  v5[5] = sub_2405BEA94();
  return sub_24071AAB0;
}

void sub_24071AAB0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_24071AB04(v2);

  free(v1);
}

uint64_t sub_24071AB04(uint64_t a1)
{
  v1 = *(*a1 + 104);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for ObservableBox();
  swift_getWitnessTable();
  sub_240759824();
}

uint64_t ObservableBox.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ObservableBox.init(_:)(a1);
  return v5;
}

uint64_t ObservableBox.init(_:)(uint64_t a1)
{
  v3 = v1 + *(*v1 + 104);
  sub_240759844();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t sub_24071ACC0(void *a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return sub_240759814();
}

uint64_t sub_24071AD6C(void *a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*a1 + *MEMORY[0x277D84DE8]);
  swift_getWitnessTable();
  return sub_240759804();
}

uint64_t ObservableBox.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = sub_240759854();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObservableBox.__deallocating_deinit()
{
  ObservableBox.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24071AF6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16[-v8];
  sub_2405BE94C(&v16[-v8]);
  v10 = *(v4 + 88);
  v11 = sub_24075A054();
  v12 = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    (*(v6 + 16))(v9, a1, v5);
    return sub_2405BE9EC(v9);
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    *&v16[-16] = v5;
    *&v16[-8] = v10;
    KeyPath = swift_getKeyPath();
    v15 = MEMORY[0x28223BE20](KeyPath);
    *&v16[-16] = v2;
    *&v16[-8] = a1;
    sub_24071AD6C(v15);
  }
}

uint64_t sub_24071B168(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_240759854();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_24071B2EC(uint64_t a1)
{
  v3 = sub_24075A714();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  type metadata accessor for OneTimeUse();
  v8 = *(a1 - 8);
  (*(v8 + 16))(v7, v1, a1);
  (*(v8 + 56))(v7, 0, 1, a1);
  v9 = sub_24071B61C();
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_24071B444()
{
  v1 = *v0;
  v2 = v0[2];

  v4[2] = *(v1 + 80);
  sub_24075A714();
  sub_2406AB7E4(sub_24071B600, v4, v2);
}

uint64_t sub_24071B4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24075A714();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  return (*(*(a2 - 8) + 56))(a1, 1, 1, a2);
}

uint64_t sub_24071B590()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_24071B5B0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_24071B61C()
{
  v1 = *(v0 + 80);
  type metadata accessor for OneTimeUse();
  v2 = swift_allocObject();
  v3 = *(*v2 + 80);
  sub_24075A714();
  v2[2] = sub_2406AC3E8();
  return v2;
}

uint64_t sub_24071B688(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x61746144736D6469;
  v6 = 0xD000000000000015;
  v7 = 0x8000000240785DD0;
  if (a1 != 4)
  {
    v6 = 0x53746E6572727563;
    v7 = 0xEF73656369767265;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x65746E4972657375;
  v9 = 0xEF6E6F6974636172;
  if (a1 != 1)
  {
    v8 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x746E756F636361;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x61746144736D6469)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x8000000240785DD0;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF73656369767265;
      if (v10 != 0x53746E6572727563)
      {
LABEL_34:
        v13 = sub_24075ACF4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEF6E6F6974636172;
      if (v10 != 0x65746E4972657375)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6574617473)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746E756F636361)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24071B894(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E756F636361;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7265766F63736964;
    }

    else
    {
      v4 = 0x6574617473;
    }

    if (v3 == 2)
    {
      v5 = 0xEE006C65646F4D79;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F5265746F6D6572;
    }

    else
    {
      v4 = 0x746E756F636361;
    }

    if (v3)
    {
      v5 = 0xEA0000000000656CLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7265766F63736964;
  v8 = 0xEE006C65646F4D79;
  if (a2 != 2)
  {
    v7 = 0x6574617473;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6F5265746F6D6572;
    v6 = 0xEA0000000000656CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24075ACF4();
  }

  return v11 & 1;
}

uint64_t sub_24071B9F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C6F526C61636F6CLL;
  v4 = a1;
  v5 = 0xEB000000006C6564;
  v6 = 0xD00000000000001DLL;
  if (a1 == 5)
  {
    v6 = 0x6F4D6E496E676973;
  }

  else
  {
    v5 = 0x8000000240785FD0;
  }

  v7 = 0x7265766F63736964;
  v8 = 0xEE006C65646F4D79;
  if (a1 != 3)
  {
    v7 = 0xD000000000000013;
    v8 = 0x8000000240785FB0;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x6F5265746F6D6572;
  v10 = 0xEA0000000000656CLL;
  if (a1 != 1)
  {
    v9 = 0x6574617473;
    v10 = 0xE500000000000000;
  }

  if (!a1)
  {
    v9 = 0x6C6F526C61636F6CLL;
    v10 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000656CLL;
        if (v11 != 0x6F5265746F6D6572)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x6574617473)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEB000000006C6564;
        if (v11 != 0x6F4D6E496E676973)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x8000000240785FD0;
        if (v11 != 0xD00000000000001DLL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0xEE006C65646F4D79;
      if (v11 != 0x7265766F63736964)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0xD000000000000013;
    v2 = 0x8000000240785FB0;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_24075ACF4();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_24071BC38()
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_24071BD80()
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t SetupModel.init(localRole:remoteRole:state:discoveryModel:authenticationModel:signInModel:)@<X0>(void *__src@<X3>, char *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 8) = *a3;
  v10 = *(a4 + 16);
  *(a7 + 40) = *a4;
  v11 = *a2;
  v12 = *(a3 + 16);
  v15 = *(a3 + 24);
  v13 = a3 + 24;
  v14 = v15;
  LOWORD(v15) = *(v13 + 4);
  v16 = *(a4 + 48);
  *(a7 + 39) = 0;
  *a7 = v11;
  *(a7 + 24) = v12;
  *(a7 + 32) = v14;
  *(a7 + 36) = v15;
  *(a7 + 38) = *(v13 + 6);
  *(a7 + 56) = v10;
  *(a7 + 72) = *(a4 + 32);
  *(a7 + 88) = v16;
  memcpy((a7 + 96), __src, 0x131uLL);
  v17 = type metadata accessor for SetupModel();
  sub_24071BFE4(a5, a7 + *(v17 + 36), type metadata accessor for AuthenticationModel);
  return sub_24071BFE4(a6, a7 + *(v17 + 40), type metadata accessor for SignInModel);
}

uint64_t type metadata accessor for SetupModel()
{
  result = qword_27E4BE1B0;
  if (!qword_27E4BE1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24071BFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SetupModel.init(localRole:remoteRole:state:discoveryModel:authenticationModel:signInModel:hasCustomManualImplementation:)@<X0>(void *__src@<X3>, _BYTE *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 8) = *a3;
  v12 = *(a4 + 16);
  *(a8 + 40) = *a4;
  v13 = *(a3 + 16);
  v16 = *(a3 + 24);
  v14 = a3 + 24;
  v15 = v16;
  LOWORD(v16) = *(v14 + 4);
  v17 = *(a4 + 48);
  *a8 = *a2;
  *(a8 + 24) = v13;
  *(a8 + 32) = v15;
  *(a8 + 36) = v16;
  *(a8 + 38) = *(v14 + 6);
  *(a8 + 56) = v12;
  *(a8 + 72) = *(a4 + 32);
  *(a8 + 88) = v17;
  memcpy((a8 + 96), __src, 0x131uLL);
  v18 = type metadata accessor for SetupModel();
  sub_24071BFE4(a5, a8 + *(v18 + 36), type metadata accessor for AuthenticationModel);
  result = sub_24071BFE4(a6, a8 + *(v18 + 40), type metadata accessor for SignInModel);
  *(a8 + 39) = a7;
  return result;
}

double static SetupModel._defaultModel.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v53 = 0x200uLL;
  v54 = 0uLL;
  v55 = xmmword_240768EF0;
  LOBYTE(v56) = 0;
  sub_240676624(v47);
  sub_240604AE0(0, 0, 0, 0xA0u);
  sub_240609C34(0, 0);
  v6 = type metadata accessor for IdMSAccount();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v43 = v7;
  v44 = type metadata accessor for SetupModel();
  v8 = a1 + *(v44 + 36);
  v9 = type metadata accessor for AuthenticationModel(0);
  v10 = v9[10];
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  v7(v8, 1, 1, v6);
  v11 = (v8 + v9[5]);
  v11[3] = 0u;
  v11[4] = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  v12 = v9[8];
  v13 = (v8 + v9[7]);
  v14 = v9[9];
  v15 = (v8 + v9[11]);
  *v15 = 0;
  v15[1] = 0;
  sub_240590814(v5, v8);
  *(v8 + v9[6]) = 1;
  *v13 = 0;
  v13[1] = 0;
  *(v8 + v14) = 0;
  *(v8 + v12) = MEMORY[0x277D84F90];
  v16 = v43;
  v43(v5, 1, 1, v6);
  v17 = a1 + *(v44 + 40);
  v16(v17, 1, 1, v6);
  v18 = type metadata accessor for SignInModel();
  v19 = (v17 + v18[5]);
  v19[4] = 0u;
  v19[5] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v17 + v18[10];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = (v17 + v18[11]);
  *(v17 + v18[13]) = 0;
  v22 = v18[15];
  v23 = (v17 + v18[14]);
  *(v17 + v22) = 2;
  v24 = (v17 + v18[17]);
  *v24 = 0;
  v24[1] = 0;
  *(v17 + v18[18]) = 0;
  sub_240590814(v5, v17);
  v25 = v19[3];
  v55 = v19[2];
  v56 = v25;
  v26 = v19[5];
  v57 = v19[4];
  v58 = v26;
  v27 = v19[1];
  v53 = *v19;
  v54 = v27;
  sub_24071C564(&v53);
  *v19 = 0u;
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  v19[4] = 0u;
  v19[5] = 0u;
  v28 = MEMORY[0x277D84FA0];
  *(v17 + v18[6]) = MEMORY[0x277D84FA0];
  *(v17 + v18[7]) = v28;
  *(v17 + v18[8]) = 0;
  *(v17 + v18[9]) = 0;
  *v23 = 0;
  v23[1] = 0;
  *(v17 + v22) = 2;
  v29 = v17 + v18[16];
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 3;
  v30 = v17 + v18[19];
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0xE000000000000000;
  *(v30 + 80) = 0;
  *(v30 + 88) = 0;
  *(v30 + 96) = 0;
  v31 = *(v20 + 16);
  v32 = *(v20 + 24);
  sub_240604C2C(*v20, *(v20 + 8));
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *v21 = 0;
  v21[1] = 0;
  *(v17 + v18[12]) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xC000000000;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = -1;
  *(a1 + 96) = 256;
  *(a1 + 98) = v51;
  *(a1 + 102) = v52;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 2;
  v33 = v49;
  *(a1 + 150) = v50;
  *(a1 + 146) = v33;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v34 = v47[0];
  *(a1 + 184) = v47[1];
  *(a1 + 168) = v34;
  v35 = v47[2];
  v36 = v47[3];
  v37 = v47[4];
  *(a1 + 248) = v47[5];
  *(a1 + 232) = v37;
  *(a1 + 216) = v36;
  *(a1 + 200) = v35;
  v38 = v47[6];
  v39 = v47[7];
  v40 = v47[8];
  *(a1 + 312) = v48;
  *(a1 + 280) = v39;
  *(a1 + 296) = v40;
  *(a1 + 264) = v38;
  *(a1 + 314) = v45;
  *(a1 + 318) = v46;
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  return result;
}

uint64_t sub_24071C564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8D00, &qword_2407691E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24071C5E8()
{
  *v0;
  *v0;
  *v0;
  sub_24075A114();
}

uint64_t sub_24071C724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_240722074();
  *a2 = result;
  return result;
}

void sub_24071C754(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6C6F526C61636F6CLL;
  v5 = 0xEB000000006C6564;
  v6 = 0x6F4D6E496E676973;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001DLL;
    v5 = 0x8000000240785FD0;
  }

  v7 = 0xEE006C65646F4D79;
  v8 = 0x7265766F63736964;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x8000000240785FB0;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000656CLL;
  v10 = 0x6F5265746F6D6572;
  if (v2 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_24071C858()
{
  v1 = *v0;
  v2 = 0x6C6F526C61636F6CLL;
  v3 = 0x6F4D6E496E676973;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001DLL;
  }

  v4 = 0x7265766F63736964;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F5265746F6D6572;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
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

uint64_t sub_24071C958@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240722074();
  *a1 = result;
  return result;
}

uint64_t sub_24071C980(uint64_t a1)
{
  v2 = sub_240720AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071C9BC(uint64_t a1)
{
  v2 = sub_240720AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

id SetupModel.remoteRole.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = v1 + 32;
  v5 = *(v3 - 24);
  v6 = *(v3 - 16);
  v7 = *(v3 - 8);
  v8 = *(v3 + 6);
  v9 = *(v3 + 4) | (v8 << 16);
  v10 = v4 | (v9 << 32);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;
  *(a1 + 30) = v8;
  *(a1 + 28) = v9;

  return sub_240609C0C(v5, v6, v7, v10);
}

__n128 SetupModel.remoteRole.setter(__n128 *a1)
{
  v11 = *a1;
  v2 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u32[2];
  v3 = &a1[1].n128_i8[8];
  v4 = v5;
  v6 = *(v3 + 2);
  v8 = *(v1 + 32);
  v7 = v1 + 32;
  v9 = v3[6];
  sub_240604AB8(*(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | ((*(v7 + 4) | (*(v7 + 6) << 16)) << 32));
  result = v11;
  *(v7 - 24) = v11;
  *(v7 - 8) = v2;
  *(v7 + 6) = v9;
  *(v7 + 4) = v6;
  *v7 = v4;
  return result;
}

uint64_t SetupModel.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 88);
  *(a1 + 48) = v8;
  return sub_240720A24(v2, v3, v4, v5, v6, v7, v8);
}

__n128 SetupModel.state.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_240720A38(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t SetupModel.discoveryModel.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0x131uLL);
  memcpy(a1, (v1 + 96), 0x131uLL);
  return sub_240684CD4(__dst, v4);
}

void *SetupModel.discoveryModel.setter(const void *a1)
{
  memcpy(v4, (v1 + 96), 0x131uLL);
  sub_240684D0C(v4);
  return memcpy((v1 + 96), a1, 0x131uLL);
}

uint64_t SetupModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE040, &qword_240781480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720AB4();
  sub_24075AF74();
  v30[0] = *v3;
  v29[0] = 0;
  sub_240720B08();
  sub_24075ABE4();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v14 = *(v3 + 38);
    v15 = *(v3 + 36) | (v14 << 16);
    *v30 = *(v3 + 8);
    *&v30[8] = v12;
    *&v30[16] = v13;
    *&v30[24] = v11;
    v30[30] = v14;
    *&v30[28] = v15;
    v29[0] = 1;
    sub_240609C0C(*v30, v12, v13, v11 | (v15 << 32));
    sub_24070352C();
    sub_24075ABE4();
    sub_240604AB8(*v30, *&v30[8], *&v30[16], *&v30[24] | ((*&v30[28] | (v30[30] << 16)) << 32));
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    v21 = *(v3 + 88);
    v32 = *(v3 + 40);
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v31 = 2;
    sub_240720A24(v32, v16, v17, v18, v19, v20, v21);
    sub_240720B5C();
    sub_24075ABE4();
    sub_240720A38(v32, v33, v34, v35, v36, v37, v38);
    memcpy(v30, (v3 + 96), sizeof(v30));
    memcpy(v29, (v3 + 96), sizeof(v29));
    v28[311] = 3;
    sub_240684CD4(v30, v28);
    sub_240687078();
    sub_24075ABE4();
    memcpy(v28, v29, 0x131uLL);
    sub_240684D0C(v28);
    v22 = type metadata accessor for SetupModel();
    v23 = *(v22 + 36);
    HIBYTE(v27) = 4;
    type metadata accessor for AuthenticationModel(0);
    sub_2407211B0(&qword_27E4B6B78, type metadata accessor for AuthenticationModel);
    sub_24075ABE4();
    v24 = *(v22 + 40);
    HIBYTE(v27) = 5;
    type metadata accessor for SignInModel();
    sub_2407211B0(&qword_27E4BCFF0, type metadata accessor for SignInModel);
    sub_24075ABE4();
    v25 = *(v3 + 39);
    HIBYTE(v27) = 6;
    sub_24075ABC4();
  }

  return (*(v6 + 8))(v9, v5);
}

void SetupModel.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for SignInModel();
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AuthenticationModel(0);
  v5 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE060, &qword_240781488);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for SetupModel();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_240720AB4();
  v18 = v34;
  sub_24075AF34();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    v34 = v7;
    v19 = v32;
    v38 = 0;
    sub_240720BB0();
    v20 = v33;
    sub_24075AAF4();
    *v15 = v36[0];
    v38 = 1;
    sub_24070361C();
    sub_24075AAF4();
    v21 = *&v36[1];
    v22 = WORD6(v36[1]);
    v23 = DWORD2(v36[1]);
    *(v15 + 8) = v36[0];
    *(v15 + 3) = v21;
    *(v15 + 8) = v23;
    *(v15 + 18) = v22;
    v15[38] = BYTE14(v36[1]);
    v38 = 2;
    sub_240720C04();
    sub_24075AAF4();
    v24 = v36[3];
    v25 = v36[1];
    *(v15 + 40) = v36[0];
    *(v15 + 56) = v25;
    *(v15 + 72) = v36[2];
    v15[88] = v24;
    v38 = 3;
    sub_240687024();
    sub_24075AAF4();
    memcpy(v15 + 96, v36, 0x131uLL);
    v37 = 4;
    sub_2407211B0(&qword_27E4B6B70, type metadata accessor for AuthenticationModel);
    v26 = v34;
    sub_24075AAF4();
    sub_24071BFE4(v26, &v15[*(v12 + 36)], type metadata accessor for AuthenticationModel);
    v37 = 5;
    sub_2407211B0(&qword_27E4BCFE8, type metadata accessor for SignInModel);
    v27 = v30;
    sub_24075AAF4();
    sub_24071BFE4(v27, &v15[*(v12 + 40)], type metadata accessor for SignInModel);
    v37 = 6;
    LOBYTE(v27) = sub_24075AAD4();
    (*(v19 + 8))(v11, v20);
    v15[39] = v27 & 1;
    sub_240720C58(v15, v28, type metadata accessor for SetupModel);
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_240720CC0(v15, type metadata accessor for SetupModel);
  }
}

double SetupModel.hash(into:)(__int128 *a1)
{
  v2 = v1;
  MEMORY[0x245CC6BA0](*v1);
  v4 = *(v1 + 8);
  v5 = *(v1 + 3);
  v6 = *(v1 + 18);
  v7 = v1[38];
  __dst[0] = *(v1 + 8);
  *&__dst[1] = v5;
  BYTE14(__dst[1]) = v7;
  WORD6(__dst[1]) = v6;
  DWORD2(__dst[1]) = v4;
  RemoteRole.hash(into:)();
  v8 = v1[39];
  sub_24075AE94();
  v9 = v1[88];
  if (v9 > 0xFC)
  {
    if (v9 == 253)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 254;
    }

    goto LABEL_12;
  }

  switch(v9)
  {
    case 0xFAu:
      v10 = 6;
      goto LABEL_12;
    case 0xFBu:
      v10 = 4;
      goto LABEL_12;
    case 0xFCu:
      v10 = 3;
LABEL_12:
      MEMORY[0x245CC6BA0](v10);
      goto LABEL_13;
  }

  v12 = *(v1 + 9);
  v11 = *(v1 + 10);
  v13 = *(v1 + 56);
  v18 = v13;
  v19 = *(v1 + 40);
  MEMORY[0x245CC6BA0](5);
  __dst[0] = v19;
  __dst[1] = v18;
  *&__dst[2] = v12;
  *(&__dst[2] + 1) = v11;
  LOBYTE(__dst[3]) = v9;
  SetupError.hash(into:)(a1);
LABEL_13:
  memcpy(__dst, v1 + 96, 0x131uLL);
  DiscoveryModel.hash(into:)(a1);
  v14 = type metadata accessor for SetupModel();
  v15 = &v1[*(v14 + 36)];
  AuthenticationModel.hash(into:)(a1);
  v16 = &v2[*(v14 + 40)];
  *&result = SignInModel.hash(into:)(a1).n128_u64[0];
  return result;
}

uint64_t SetupModel.hashValue.getter()
{
  sub_24075AE64();
  SetupModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24071DBBC()
{
  sub_24075AE64();
  SetupModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24071DC00()
{
  sub_24075AE64();
  SetupModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t SetupModel.description.getter()
{
  v1 = v0;
  *&v15[0] = 0;
  *(&v15[0] + 1) = 0xE000000000000000;
  sub_24075A864();
  v16 = v15[0];
  MEMORY[0x245CC5E60](0x6C61636F6C20200ALL, 0xEE00203A656C6F52);
  LOBYTE(v15[0]) = *v0;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x746F6D657220200ALL, 0xEF203A656C6F5265);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 36);
  v5 = *(v0 + 38);
  v15[0] = *(v0 + 8);
  *&v15[1] = v2;
  BYTE14(v15[1]) = v5;
  WORD6(v15[1]) = v4;
  DWORD2(v15[1]) = v3;
  sub_24075A994();
  MEMORY[0x245CC5E60](0x657461747320200ALL, 0xEA0000000000203ALL);
  v6 = *(v0 + 88);
  v7 = *(v0 + 56);
  v15[0] = *(v0 + 40);
  v15[1] = v7;
  v15[2] = *(v0 + 72);
  LOBYTE(v15[3]) = v6;
  sub_24075A994();
  MEMORY[0x245CC5E60](0xD000000000000014, 0x800000024078A010);
  memcpy(v15, (v0 + 96), 0x131uLL);
  v8 = DiscoveryModel.description.getter();
  MEMORY[0x245CC5E60](v8);

  MEMORY[0x245CC5E60](0xD000000000000019, 0x800000024078A030);
  v9 = type metadata accessor for SetupModel();
  v10 = v0 + *(v9 + 36);
  v11 = AuthenticationModel.description.getter();
  MEMORY[0x245CC5E60](v11);

  MEMORY[0x245CC5E60](0xD000000000000011, 0x800000024078A050);
  v12 = v1 + *(v9 + 40);
  v13 = SignInModel.description.getter();
  MEMORY[0x245CC5E60](v13);

  return v16;
}

uint64_t sub_24071DE80(uint64_t a1)
{
  v2 = sub_240720EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071DEBC(uint64_t a1)
{
  v2 = sub_240720EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071DEF8()
{
  v1 = *v0;
  v2 = 0x6C616974696E69;
  v3 = 0x64656C696166;
  if (v1 != 5)
  {
    v3 = 0x7373696D736964;
  }

  v4 = 0x6E496E676973;
  if (v1 != 3)
  {
    v4 = 0x64656873696E6966;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7265766F63736964;
  if (v1 != 1)
  {
    v5 = 0x69746E6568747561;
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

uint64_t sub_24071DFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2407220C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24071DFFC(uint64_t a1)
{
  v2 = sub_240720D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E038(uint64_t a1)
{
  v2 = sub_240720D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E074(uint64_t a1)
{
  v2 = sub_240720F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E0B0(uint64_t a1)
{
  v2 = sub_240720F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E0EC(uint64_t a1)
{
  v2 = sub_240720D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E128(uint64_t a1)
{
  v2 = sub_240720D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E164(uint64_t a1)
{
  v2 = sub_240720DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E1A0(uint64_t a1)
{
  v2 = sub_240720DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E1DC(uint64_t a1)
{
  v2 = sub_240720E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E218(uint64_t a1)
{
  v2 = sub_240720E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E254(uint64_t a1)
{
  v2 = sub_240720F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E290(uint64_t a1)
{
  v2 = sub_240720F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071E2CC(uint64_t a1)
{
  v2 = sub_240720E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071E308(uint64_t a1)
{
  v2 = sub_240720E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupModel.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE078, &qword_240781490);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE080, &qword_240781498);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE088, &qword_2407814A0);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE090, &qword_2407814A8);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE098, &qword_2407814B0);
  v49 = *(v50 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v41 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0A0, &qword_2407814B8);
  v46 = *(v47 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0A8, &qword_2407814C0);
  v45 = *(v20 - 8);
  v21 = *(v45 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0B0, &qword_2407814C8);
  v63 = *(v24 - 8);
  v64 = v24;
  v25 = *(v63 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  v28 = *v1;
  v43 = v1[1];
  v44 = v28;
  v29 = *(v1 + 5);
  v42 = *(v1 + 4);
  v41 = v29;
  v30 = *(v1 + 48);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720D20();
  sub_24075AF74();
  if (v30 > 252)
  {
    if (v30 == 253)
    {
      LOBYTE(v65) = 2;
      sub_240720EC4();
      v36 = v48;
      v33 = v64;
      sub_24075AB54();
      (*(v49 + 8))(v36, v50);
    }

    else if (v30 == 254)
    {
      LOBYTE(v65) = 1;
      sub_240720F18();
      v33 = v64;
      sub_24075AB54();
      (*(v46 + 8))(v19, v47);
    }

    else
    {
      LOBYTE(v65) = 0;
      sub_240720F6C();
      v33 = v64;
      sub_24075AB54();
      (*(v45 + 8))(v23, v20);
    }
  }

  else
  {
    switch(v30)
    {
      case 250:
        LOBYTE(v65) = 6;
        sub_240720D74();
        v32 = v57;
        v33 = v64;
        sub_24075AB54();
        v35 = v58;
        v34 = v59;
        break;
      case 251:
        LOBYTE(v65) = 4;
        sub_240720E1C();
        v32 = v54;
        v33 = v64;
        sub_24075AB54();
        v35 = v55;
        v34 = v56;
        break;
      case 252:
        LOBYTE(v65) = 3;
        sub_240720E70();
        v32 = v51;
        v33 = v64;
        sub_24075AB54();
        v35 = v52;
        v34 = v53;
        break;
      default:
        LOBYTE(v65) = 5;
        sub_240720DC8();
        v37 = v60;
        v38 = v64;
        sub_24075AB54();
        v65 = v44;
        v66 = v43;
        v67 = v42;
        v68 = v41;
        v69 = v30;
        sub_2405B0D90();
        v39 = v62;
        sub_24075ABE4();
        (*(v61 + 8))(v37, v39);
        return (*(v63 + 8))(v27, v38);
    }

    (*(v35 + 8))(v32, v34);
  }

  return (*(v63 + 8))(v27, v33);
}

uint64_t SetupModel.State.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3 > 0xFC)
  {
    switch(v3)
    {
      case 0xFDu:
        v4 = 2;
        return MEMORY[0x245CC6BA0](v4);
      case 0xFEu:
        v4 = 1;
        return MEMORY[0x245CC6BA0](v4);
      case 0xFFu:
        v4 = 0;
        return MEMORY[0x245CC6BA0](v4);
    }

LABEL_12:
    v6 = *(v1 + 4);
    v5 = *(v1 + 5);
    MEMORY[0x245CC6BA0](5);
    v9 = v1[1];
    v8 = *v1;
    return SetupError.hash(into:)(a1);
  }

  if (v3 == 250)
  {
    v4 = 6;
    return MEMORY[0x245CC6BA0](v4);
  }

  if (v3 == 251)
  {
    v4 = 4;
    return MEMORY[0x245CC6BA0](v4);
  }

  if (v3 != 252)
  {
    goto LABEL_12;
  }

  v4 = 3;
  return MEMORY[0x245CC6BA0](v4);
}

uint64_t SetupModel.State.hashValue.getter()
{
  v6 = v0[1];
  v7 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  sub_24075AE64();
  if (v3 > 252)
  {
    if (v3 == 253)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3 == 254;
    }

    goto LABEL_12;
  }

  switch(v3)
  {
    case 250:
      v4 = 6;
      goto LABEL_12;
    case 251:
      v4 = 4;
      goto LABEL_12;
    case 252:
      v4 = 3;
LABEL_12:
      MEMORY[0x245CC6BA0](v4);
      return sub_24075AED4();
  }

  MEMORY[0x245CC6BA0](5);
  SetupError.hash(into:)(v8);
  return sub_24075AED4();
}

uint64_t SetupModel.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE0F8, &qword_2407814D0);
  v66 = *(v67 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v75 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE100, &qword_2407814D8);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  v74 = &v55 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE108, &qword_2407814E0);
  v64 = *(v65 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v73 = &v55 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE110, &qword_2407814E8);
  v62 = *(v63 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v70 = &v55 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE118, &qword_2407814F0);
  v60 = *(v61 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v71 = &v55 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE120, &qword_2407814F8);
  v58 = *(v59 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE128, &qword_240781500);
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE130, &unk_240781508);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v55 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_240720D20();
  v28 = v85;
  sub_24075AF34();
  if (!v28)
  {
    v29 = v20;
    v55 = v17;
    v56 = v16;
    v30 = v73;
    v31 = v74;
    v32 = v75;
    v85 = v22;
    v33 = sub_24075AB34();
    v34 = (2 * *(v33 + 16)) | 1;
    v81 = v33;
    v82 = v33 + 32;
    v83 = 0;
    v84 = v34;
    v35 = sub_2405B8B04();
    v36 = v25;
    if (v35 != 7 && v83 == v84 >> 1)
    {
      if (v35 <= 2u)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            LOBYTE(v77) = 1;
            sub_240720F18();
            v49 = v56;
            sub_24075AA54();
            (*(v58 + 8))(v49, v59);
            (*(v85 + 8))(v36, v21);
            swift_unknownObjectRelease();
            v41 = 0uLL;
            v42 = -2;
          }

          else
          {
            LOBYTE(v77) = 2;
            sub_240720EC4();
            v51 = v71;
            sub_24075AA54();
            (*(v60 + 8))(v51, v61);
            (*(v85 + 8))(v36, v21);
            swift_unknownObjectRelease();
            v41 = 0uLL;
            v42 = -3;
          }
        }

        else
        {
          LOBYTE(v77) = 0;
          sub_240720F6C();
          sub_24075AA54();
          (*(v57 + 8))(v29, v55);
          (*(v85 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v41 = 0uLL;
          v42 = -1;
        }
      }

      else
      {
        if (v35 <= 4u)
        {
          v37 = v76;
          v38 = v72;
          v39 = v85;
          if (v35 == 3)
          {
            LOBYTE(v77) = 3;
            sub_240720E70();
            v40 = v70;
            sub_24075AA54();
            (*(v62 + 8))(v40, v63);
            (*(v39 + 8))(v25, v21);
            swift_unknownObjectRelease();
            v41 = 0uLL;
            v42 = -4;
          }

          else
          {
            LOBYTE(v77) = 4;
            sub_240720E1C();
            sub_24075AA54();
            (*(v64 + 8))(v30, v65);
            (*(v39 + 8))(v25, v21);
            swift_unknownObjectRelease();
            v41 = 0uLL;
            v42 = -5;
          }

          v53 = 0uLL;
          v54 = 0uLL;
          v47 = v37;
          goto LABEL_23;
        }

        v50 = v85;
        if (v35 == 5)
        {
          LOBYTE(v77) = 5;
          sub_240720DC8();
          sub_24075AA54();
          sub_2405B0DE4();
          v52 = v69;
          sub_24075AAF4();
          (*(v68 + 8))(v31, v52);
          (*(v50 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v41 = v77;
          v53 = v78;
          v54 = v79;
          v42 = v80;
LABEL_21:
          v47 = v76;
          v38 = v72;
LABEL_23:
          *v38 = v41;
          *(v38 + 16) = v53;
          *(v38 + 32) = v54;
          *(v38 + 48) = v42;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }

        LOBYTE(v77) = 6;
        sub_240720D74();
        sub_24075AA54();
        (*(v66 + 8))(v32, v67);
        (*(v50 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v41 = 0uLL;
        v42 = -6;
      }

      v53 = 0uLL;
      v54 = 0uLL;
      goto LABEL_21;
    }

    v43 = sub_24075A8C4();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v45 = &type metadata for SetupModel.State;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v85 + 8))(v36, v21);
    swift_unknownObjectRelease();
  }

  v47 = v76;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_24071F804()
{
  sub_24075AE64();
  SetupModel.State.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24071F840()
{
  if (*v0)
  {
    result = 0x7463697274736572;
  }

  else
  {
    result = 0x6C61756E616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_24071F87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24071F95C(uint64_t a1)
{
  v2 = sub_240720FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071F998(uint64_t a1)
{
  v2 = sub_240720FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071F9D4(uint64_t a1)
{
  v2 = sub_240721068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071FA10(uint64_t a1)
{
  v2 = sub_240721068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24071FA4C(uint64_t a1)
{
  v2 = sub_240721014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24071FA88(uint64_t a1)
{
  v2 = sub_240721014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupModel.LocalRole.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE138, &qword_240781518);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE140, &qword_240781520);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE148, &qword_240781528);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720FC0();
  sub_24075AF74();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_240721014();
    v18 = v22;
    sub_24075AB54();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_240721068();
    sub_24075AB54();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t SetupModel.LocalRole.hashValue.getter()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  return sub_24075AED4();
}

uint64_t SetupModel.LocalRole.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE168, &qword_240781530);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE170, &qword_240781538);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE178, &qword_240781540);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240720FC0();
  v16 = v36;
  sub_24075AF34();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_24075AB34();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_2405B8AF4();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_24075A8C4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v26 = &type metadata for SetupModel.LocalRole;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_240721014();
        sub_24075AA54();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_240721068();
        sub_24075AA54();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t _s12AppleIDSetup10SetupModelV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v37 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v8 > 0xFC)
  {
    switch(v8)
    {
      case 0xFDu:
        if (v14 == 253)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFDu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -3;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFEu:
        if (v14 == 254)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFEu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -2;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFFu:
        if (v14 == 255)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFFu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -1;
          goto LABEL_22;
        }

LABEL_23:
        v36 = *(a2 + 16);
        v34 = *a2;
        v35 = *(a2 + 8);
        v26 = *(a2 + 48);
        v27 = *(a1 + 8);
        v28 = *a1;
        sub_240720A24(*a2, v35, v36, v11, v13, v37, v14);
        sub_240720A24(v28, v27, v5, v4, v6, v7, v8);
        sub_240720A38(v28, v27, v5, v4, v6, v7, v8);
        sub_240720A38(v34, v35, v36, v11, v13, v37, v26);
        v25 = 0;
        return v25 & 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 0xFAu:
        if (v14 == 250)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFAu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -6;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFBu:
        if (v14 == 251)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFBu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -5;
          goto LABEL_22;
        }

        goto LABEL_23;
      case 0xFCu:
        if (v14 == 252)
        {
          sub_240720A38(v3, v2, v5, v4, v6, v7, 0xFCu);
          v15 = v10;
          v16 = v9;
          v17 = v12;
          v18 = v11;
          v19 = v13;
          v20 = v37;
          v21 = -4;
LABEL_22:
          sub_240720A38(v15, v16, v17, v18, v19, v20, v21);
          v25 = 1;
          return v25 & 1;
        }

        goto LABEL_23;
    }
  }

  if (v14 > 0xF9)
  {
    goto LABEL_23;
  }

  v40[0] = *a1;
  v40[1] = v2;
  v40[2] = v5;
  v40[3] = v4;
  v40[4] = v6;
  v40[5] = v7;
  v41 = v8;
  v38[0] = v10;
  v38[1] = v9;
  v38[2] = v12;
  v38[3] = v11;
  v38[4] = v13;
  v38[5] = v37;
  v39 = v14;
  v31 = v6;
  v32 = v13;
  v22 = v13;
  v30 = v14;
  v23 = v2;
  v24 = v3;
  v33 = v3;
  sub_240720A24(v10, v9, v12, v11, v22, v37, v14);
  sub_240720A24(v24, v23, v5, v4, v31, v7, v8);
  sub_240720A24(v10, v9, v12, v11, v32, v37, v30);
  sub_240720A24(v33, v23, v5, v4, v31, v7, v8);
  v25 = static SetupError.== infix(_:_:)(v40, v38);
  sub_240720A38(v33, v23, v5, v4, v31, v7, v8);
  sub_240720A38(v10, v9, v12, v11, v32, v37, v30);
  sub_240720A38(v10, v9, v12, v11, v32, v37, v30);
  sub_240720A38(v33, v23, v5, v4, v31, v7, v8);
  return v25 & 1;
}

uint64_t _s12AppleIDSetup10SetupModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v43 = v2;
  v44 = v3;
  v7 = *(a1 + 8);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 18);
  v11 = a1[38];
  v12 = v7 | ((v10 | (v11 << 16)) << 32);
  *v42 = *(a1 + 1);
  *&v42[2] = v8;
  *&v42[4] = v9;
  v42[6] = v7;
  BYTE2(v42[7]) = v11;
  LOWORD(v42[7]) = v10;
  v13 = *(a2 + 8);
  v14 = *(a2 + 2);
  v15 = *(a2 + 3);
  v16 = a2[38];
  v17 = *(a2 + 18) | (v16 << 16);
  v18 = v13 | (v17 << 32);
  *v41 = *(a2 + 1);
  *&v41[2] = v14;
  *&v41[4] = v15;
  v41[6] = v13;
  BYTE2(v41[7]) = v16;
  LOWORD(v41[7]) = v17;
  sub_240609C0C(*v42, v8, v9, v12);
  sub_240609C0C(*v41, v14, v15, v18);
  v19 = _s12AppleIDSetup10RemoteRoleO2eeoiySbAC_ACtFZ_0(v42, v41);
  sub_240604AB8(*v41, *&v41[2], *&v41[4], v41[6] | ((LOWORD(v41[7]) | (BYTE2(v41[7]) << 16)) << 32));
  sub_240604AB8(*v42, *&v42[2], *&v42[4], v42[6] | ((LOWORD(v42[7]) | (BYTE2(v42[7]) << 16)) << 32));
  if (!v19)
  {
    goto LABEL_9;
  }

  if (a1[39] != a2[39])
  {
    goto LABEL_9;
  }

  v20 = *(a1 + 6);
  v21 = *(a1 + 7);
  v22 = *(a1 + 8);
  v23 = *(a1 + 9);
  v24 = *(a1 + 10);
  v25 = a1[88];
  *v42 = *(a1 + 5);
  *&v42[2] = v20;
  *&v42[4] = v21;
  *&v42[6] = v22;
  *&v42[8] = v23;
  *&v42[10] = v24;
  LOBYTE(v42[12]) = v25;
  v27 = *(a2 + 6);
  v28 = *(a2 + 7);
  v29 = *(a2 + 8);
  v30 = *(a2 + 9);
  v31 = *(a2 + 10);
  v32 = a2[88];
  *v41 = *(a2 + 5);
  v26 = *v41;
  *&v41[2] = v27;
  *&v41[4] = v28;
  *&v41[6] = v29;
  *&v41[8] = v30;
  *&v41[10] = v31;
  LOBYTE(v41[12]) = v32;
  sub_240720A24(*v42, v20, v21, v22, v23, v24, v25);
  sub_240720A24(v26, v27, v28, v29, v30, v31, v32);
  LOBYTE(v26) = _s12AppleIDSetup10SetupModelV5StateO2eeoiySbAE_AEtFZ_0(v42, v41);
  sub_240720A38(*v41, *&v41[2], *&v41[4], *&v41[6], *&v41[8], *&v41[10], v41[12]);
  sub_240720A38(*v42, *&v42[2], *&v42[4], *&v42[6], *&v42[8], *&v42[10], v42[12]);
  if ((v26 & 1) == 0)
  {
    goto LABEL_9;
  }

  memcpy(__dst, a1 + 96, 0x131uLL);
  memcpy(v38, a1 + 96, 0x131uLL);
  memcpy(v40, a2 + 96, 0x131uLL);
  memcpy(__src, a2 + 96, 0x131uLL);
  sub_240684CD4(__dst, v36);
  sub_240684CD4(v40, v36);
  v33 = _s12AppleIDSetup14DiscoveryModelV2eeoiySbAC_ACtFZ_0(v38, __src);
  memcpy(v41, __src, 0x131uLL);
  sub_240684D0C(v41);
  memcpy(v42, v38, 0x131uLL);
  sub_240684D0C(v42);
  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = type metadata accessor for SetupModel();
  if (_s12AppleIDSetup19AuthenticationModelV2eeoiySbAC_ACtFZ_0(&a1[*(v34 + 36)], &a2[*(v34 + 36)]))
  {
    v35 = _s12AppleIDSetup11SignInModelV2eeoiySbAC_ACtFZ_0(&a1[*(v34 + 40)], &a2[*(v34 + 40)]);
  }

  else
  {
LABEL_9:
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_240720A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xF9u)
  {
    return sub_2405AF8D8(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_240720A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xF9u)
  {
    return sub_2405AEA70(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_240720A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_240720AB4()
{
  result = qword_27E4BE048;
  if (!qword_27E4BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE048);
  }

  return result;
}

unint64_t sub_240720B08()
{
  result = qword_27E4BE050;
  if (!qword_27E4BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE050);
  }

  return result;
}

unint64_t sub_240720B5C()
{
  result = qword_27E4BE058;
  if (!qword_27E4BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE058);
  }

  return result;
}

unint64_t sub_240720BB0()
{
  result = qword_27E4BE068;
  if (!qword_27E4BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE068);
  }

  return result;
}

unint64_t sub_240720C04()
{
  result = qword_27E4BE070;
  if (!qword_27E4BE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE070);
  }

  return result;
}

uint64_t sub_240720C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240720CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_240720D20()
{
  result = qword_27E4BE0B8;
  if (!qword_27E4BE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0B8);
  }

  return result;
}

unint64_t sub_240720D74()
{
  result = qword_27E4BE0C0;
  if (!qword_27E4BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0C0);
  }

  return result;
}

unint64_t sub_240720DC8()
{
  result = qword_27E4BE0C8;
  if (!qword_27E4BE0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0C8);
  }

  return result;
}

unint64_t sub_240720E1C()
{
  result = qword_27E4BE0D0;
  if (!qword_27E4BE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0D0);
  }

  return result;
}

unint64_t sub_240720E70()
{
  result = qword_27E4BE0D8;
  if (!qword_27E4BE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0D8);
  }

  return result;
}

unint64_t sub_240720EC4()
{
  result = qword_27E4BE0E0;
  if (!qword_27E4BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0E0);
  }

  return result;
}

unint64_t sub_240720F18()
{
  result = qword_27E4BE0E8;
  if (!qword_27E4BE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0E8);
  }

  return result;
}

unint64_t sub_240720F6C()
{
  result = qword_27E4BE0F0;
  if (!qword_27E4BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE0F0);
  }

  return result;
}

unint64_t sub_240720FC0()
{
  result = qword_27E4BE150;
  if (!qword_27E4BE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE150);
  }

  return result;
}

unint64_t sub_240721014()
{
  result = qword_27E4BE158;
  if (!qword_27E4BE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE158);
  }

  return result;
}

unint64_t sub_240721068()
{
  result = qword_27E4BE160;
  if (!qword_27E4BE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE160);
  }

  return result;
}

uint64_t sub_2407210BC(void *a1)
{
  a1[1] = sub_2407211B0(&qword_27E4BDD58, type metadata accessor for SetupModel);
  a1[2] = sub_2407211B0(&qword_27E4BDD40, type metadata accessor for SetupModel);
  result = sub_2407211B0(&qword_27E4BE180, type metadata accessor for SetupModel);
  a1[3] = result;
  return result;
}

uint64_t sub_2407211B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240721238(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_24072128C()
{
  result = qword_27E4BE190;
  if (!qword_27E4BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE190);
  }

  return result;
}

unint64_t sub_2407212E4()
{
  result = qword_27E4BE198;
  if (!qword_27E4BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE198);
  }

  return result;
}

unint64_t sub_24072133C()
{
  result = qword_27E4BE1A0;
  if (!qword_27E4BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1A0);
  }

  return result;
}

unint64_t sub_2407213D0()
{
  result = qword_27E4BE1A8;
  if (!qword_27E4BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1A8);
  }

  return result;
}

uint64_t sub_24072144C()
{
  result = type metadata accessor for AuthenticationModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SignInModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup10SetupModelV5StateO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240721520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 49))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 48);
  if (v3 > 6)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 7)
  {
    return v4 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240721568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -6 - a2;
    }
  }

  return result;
}

double sub_2407215BC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xF9)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 - 250;
  }

  else if (a2)
  {
    *(a1 + 48) = -a2;
  }

  return result;
}

unint64_t sub_2407216D8()
{
  result = qword_27E4BE1C0;
  if (!qword_27E4BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1C0);
  }

  return result;
}

unint64_t sub_240721730()
{
  result = qword_27E4BE1C8;
  if (!qword_27E4BE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1C8);
  }

  return result;
}

unint64_t sub_240721788()
{
  result = qword_27E4BE1D0;
  if (!qword_27E4BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1D0);
  }

  return result;
}

unint64_t sub_2407217E0()
{
  result = qword_27E4BE1D8;
  if (!qword_27E4BE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1D8);
  }

  return result;
}

unint64_t sub_240721838()
{
  result = qword_27E4BE1E0;
  if (!qword_27E4BE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1E0);
  }

  return result;
}

unint64_t sub_240721890()
{
  result = qword_27E4BE1E8;
  if (!qword_27E4BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1E8);
  }

  return result;
}

unint64_t sub_2407218E8()
{
  result = qword_27E4BE1F0;
  if (!qword_27E4BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1F0);
  }

  return result;
}

unint64_t sub_240721940()
{
  result = qword_27E4BE1F8;
  if (!qword_27E4BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE1F8);
  }

  return result;
}

unint64_t sub_240721998()
{
  result = qword_27E4BE200;
  if (!qword_27E4BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE200);
  }

  return result;
}

unint64_t sub_2407219F0()
{
  result = qword_27E4BE208;
  if (!qword_27E4BE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE208);
  }

  return result;
}

unint64_t sub_240721A48()
{
  result = qword_27E4BE210;
  if (!qword_27E4BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE210);
  }

  return result;
}

unint64_t sub_240721AA0()
{
  result = qword_27E4BE218;
  if (!qword_27E4BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE218);
  }

  return result;
}

unint64_t sub_240721AF8()
{
  result = qword_27E4BE220;
  if (!qword_27E4BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE220);
  }

  return result;
}

unint64_t sub_240721B50()
{
  result = qword_27E4BE228;
  if (!qword_27E4BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE228);
  }

  return result;
}

unint64_t sub_240721BA8()
{
  result = qword_27E4BE230;
  if (!qword_27E4BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE230);
  }

  return result;
}

unint64_t sub_240721C00()
{
  result = qword_27E4BE238;
  if (!qword_27E4BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE238);
  }

  return result;
}

unint64_t sub_240721C58()
{
  result = qword_27E4BE240;
  if (!qword_27E4BE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE240);
  }

  return result;
}

unint64_t sub_240721CB0()
{
  result = qword_27E4BE248;
  if (!qword_27E4BE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE248);
  }

  return result;
}

unint64_t sub_240721D08()
{
  result = qword_27E4BE250;
  if (!qword_27E4BE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE250);
  }

  return result;
}

unint64_t sub_240721D60()
{
  result = qword_27E4BE258;
  if (!qword_27E4BE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE258);
  }

  return result;
}