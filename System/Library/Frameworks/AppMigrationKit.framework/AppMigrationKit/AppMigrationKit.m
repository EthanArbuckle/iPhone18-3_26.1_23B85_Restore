uint64_t validatePathInArchive(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 length])
  {
    while ([v3 characterAtIndex:{objc_msgSend(v3, "length") - 1}] == 47)
    {
      v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];

      v3 = v4;
      if (![v4 length])
      {
        goto LABEL_6;
      }
    }
  }

  v4 = v3;
LABEL_6:
  v5 = MEMORY[0x29EDB8E20];
  v6 = [v4 pathComponents];
  v7 = [v5 setWithArray:v6];

  [v7 removeObject:@"."];
  if (validatePathInArchive_onceToken != -1)
  {
    validatePathInArchive_cold_1();
  }

  if ([v7 count] && !objc_msgSend(validatePathInArchive_invalidComponents, "intersectsSet:", v7))
  {
    v8 = 1;
  }

  else if (a2)
  {
    [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9E30] code:514 userInfo:0];
    *a2 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __validatePathInArchive_block_invoke()
{
  validatePathInArchive_invalidComponents = [MEMORY[0x29EDB8E50] setWithObjects:{@"/", @"..", &stru_2A2537C90, 0}];

  return MEMORY[0x2A1C71028]();
}

ssize_t write_callback(uint64_t a1, void *a2, const void *a3, size_t a4)
{
  v6 = a2;
  v7 = [v6 fileHandle];
  v8 = write([v7 fileDescriptor], a3, a4);

  if (v8 >= 1)
  {
    [v6 setCompressedBytes:{objc_msgSend(v6, "compressedBytes") + v8}];
  }

  return v8;
}

unint64_t sub_29EAA8710()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A470, &unk_29EB168A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29EB16460;
  result = sub_29EAA88D4();
  *(v0 + 32) = &type metadata for _t_Preflight;
  *(v0 + 40) = result;
  qword_2A1881288 = v0;
  return result;
}

double static _t_Preflight.example.getter@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A358, &qword_29EB164A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29EB16460;
  *(v2 + 32) = 0xD000000000000012;
  *(v2 + 40) = 0x800000029EB1AF30;
  *(v2 + 48) = 0x2E6F6F662E6D6F63;
  *(v2 + 56) = 0xEB00000000726162;
  *(v2 + 64) = 0x64696F72646E61;
  *(v2 + 72) = 0xE700000000000000;
  a1[3] = &type metadata for _t_Preflight;
  a1[4] = sub_29EAA88D4();
  v3 = swift_allocObject();
  *a1 = v3;
  *(v3 + 16) = xmmword_29EB16470;
  *(v3 + 32) = xmmword_29EB16480;
  *(v3 + 48) = xmmword_29EB16490;
  *(v3 + 64) = MEMORY[0x29EDCA190];
  result = 0.0;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  *(v3 + 128) = v2;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_29EAA88D4()
{
  result = qword_2A187A360;
  if (!qword_2A187A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A360);
  }

  return result;
}

uint64_t sub_29EAA8928()
{
  if (v0[6])
  {

    v1 = v0[8];
  }

  if (v0[13])
  {

    v2 = v0[15];
  }

  v3 = v0[16];

  return MEMORY[0x2A1C733A0](v0, 136, 7);
}

__n128 _t_Preflight.init(serializedDataInfo:resourcesInfo:supportedDestinations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 32) = *(a1 + 32);
  v5 = *(a2 + 16);
  *(a4 + 56) = *a2;
  v6 = *(a2 + 48);
  *(a4 + 48) = *(a1 + 48);
  *(a4 + 72) = v5;
  result = *(a2 + 32);
  *(a4 + 88) = result;
  *(a4 + 104) = v6;
  *(a4 + 112) = a3;
  return result;
}

uint64_t sub_29EAA89D4()
{
  v1 = *v0;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v1);
  return sub_29EB14FAC();
}

uint64_t sub_29EAA8A48()
{
  v1 = *v0;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v1);
  return sub_29EB14FAC();
}

unint64_t sub_29EAA8A8C()
{
  v1 = 0x656372756F736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_29EAA8AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EAAA0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EAA8B38(uint64_t a1)
{
  v2 = sub_29EAA8F10();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAA8B74(uint64_t a1)
{
  v2 = sub_29EAA8F10();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_Preflight.encode(to:)(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A368, &qword_29EB164A8);
  v37 = *(v35 - 8);
  v3 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v5 = &v24 - v4;
  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v12 = v1[6];
  v31 = v1[7];
  v32 = v8;
  v13 = v1[8];
  v29 = v1[9];
  v30 = v13;
  v14 = v1[10];
  v27 = v1[11];
  v28 = v14;
  v15 = v1[12];
  v25 = v1[13];
  v26 = v15;
  v24 = v1[14];
  v16 = a1[4];
  v33 = a1[3];
  v34 = v16;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v17 = v32;
  sub_29EAA8ECC(v6, v7, v9, v32, v11);
  sub_29EAA8F10();
  sub_29EB14FFC();
  v38 = v6;
  v39 = v7;
  v18 = v5;
  v40 = v9;
  v41 = v17;
  v42 = v11;
  v43 = v10;
  v44 = v12;
  v19 = v35;
  v45 = 0;
  sub_29EAA8F64();
  v20 = v36;
  sub_29EB14E2C();
  sub_29EAA8FB8(v38, v39, v40, v41, v42);
  if (v20)
  {
    return (*(v37 + 8))(v5, v19);
  }

  v22 = v24;
  v23 = v37;
  v38 = v31;
  v39 = v30;
  v40 = v29;
  v41 = v28;
  v42 = v27;
  v43 = v26;
  v44 = v25;
  v45 = 1;
  sub_29EAA8ECC(v31, v30, v29, v28, v27);
  sub_29EB14E2C();
  sub_29EAA8FB8(v38, v39, v40, v41, v42);
  v38 = v22;
  v45 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A380, &qword_29EB164B0);
  sub_29EAA950C(&qword_2A187A388, sub_29EAA9044);
  sub_29EB14E6C();
  return (*(v23 + 8))(v18, v19);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29EAA8ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_29EAA8F10()
{
  result = qword_2A187A370;
  if (!qword_2A187A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A370);
  }

  return result;
}

unint64_t sub_29EAA8F64()
{
  result = qword_2A187A378;
  if (!qword_2A187A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A378);
  }

  return result;
}

uint64_t sub_29EAA8FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_29EAA9044()
{
  result = qword_2A187A390;
  if (!qword_2A187A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A390);
  }

  return result;
}

uint64_t _t_Preflight.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A398, &qword_29EB164B8);
  v5 = *(v35 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v8 = &v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAA8F10();
  sub_29EB14FEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v36) = 0;
  sub_29EAA94B8();
  v11 = v35;
  sub_29EB14DBC();
  v33 = *v44;
  v34 = *&v44[16];
  v30 = *v45;
  v31 = *&v45[8];
  v32 = v46;
  LOBYTE(v36) = 1;
  sub_29EB14DBC();
  v25 = *v44;
  v26 = *&v44[8];
  v27 = *v45;
  v29 = *&v45[16];
  v28 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A380, &qword_29EB164B0);
  v53 = 2;
  sub_29EAA950C(&qword_2A187A3A8, sub_29EAA9584);
  sub_29EB14DFC();
  (*(v10 + 8))(v8, v11);
  v12 = v54;
  v36 = v33;
  v14 = v30;
  v13 = v31;
  *&v37 = v34;
  *(&v37 + 1) = v30;
  v16 = *(&v31 + 1);
  v15 = v32;
  v38 = v31;
  *&v39 = v32;
  *(&v39 + 1) = v25;
  v40 = v26;
  v41 = v27;
  *&v42 = v29;
  *(&v42 + 1) = v28;
  v43 = v54;
  v17 = v33;
  v18 = v37;
  v19 = v39;
  *(a2 + 32) = v31;
  *(a2 + 48) = v19;
  *a2 = v17;
  *(a2 + 16) = v18;
  v20 = v40;
  v21 = v41;
  v22 = v42;
  *(a2 + 112) = v12;
  *(a2 + 80) = v21;
  *(a2 + 96) = v22;
  *(a2 + 64) = v20;
  sub_29EAA95D8(&v36, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *v44 = v33;
  *&v44[16] = v34;
  *v45 = v14;
  *&v45[8] = v13;
  *&v45[16] = v16;
  v46 = v15;
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v50 = v29;
  v51 = v28;
  v52 = v12;
  return sub_29EAA9610(v44);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_29EAA94B8()
{
  result = qword_2A187A3A0;
  if (!qword_2A187A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A3A0);
  }

  return result;
}

uint64_t sub_29EAA950C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A380, &qword_29EB164B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29EAA9584()
{
  result = qword_2A187A3B0;
  if (!qword_2A187A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A3B0);
  }

  return result;
}

unint64_t sub_29EAA9644(uint64_t a1)
{
  *(a1 + 8) = sub_29EAA9674();
  result = sub_29EAA96C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29EAA9674()
{
  result = qword_2A187A3B8;
  if (!qword_2A187A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A3B8);
  }

  return result;
}

unint64_t sub_29EAA96C8()
{
  result = qword_2A187A3C0;
  if (!qword_2A187A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A3C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15AppMigrationKit12TransferInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_29EAA9790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAA97D8(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _t_Preflight.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _t_Preflight.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29EAA99D0()
{
  result = qword_2A187A430;
  if (!qword_2A187A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A430);
  }

  return result;
}

uint64_t sub_29EAA9A38(uint64_t a1, id *a2)
{
  result = sub_29EB1468C();
  *a2 = 0;
  return result;
}

uint64_t sub_29EAA9AB4(uint64_t a1, id *a2)
{
  v3 = sub_29EB1469C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29EAA9B38@<X0>(uint64_t *a1@<X8>)
{
  sub_29EB146AC();
  v2 = sub_29EB1467C();

  *a1 = v2;
  return result;
}

uint64_t sub_29EAA9B80()
{
  v1 = *v0;
  v2 = sub_29EB146AC();
  v3 = MEMORY[0x29EDA6E20](v2);

  return v3;
}

uint64_t sub_29EAA9BC0()
{
  v1 = *v0;
  sub_29EB146AC();
  sub_29EB1473C();
}

uint64_t sub_29EAA9C18()
{
  v1 = *v0;
  sub_29EB146AC();
  sub_29EB14F8C();
  sub_29EB1473C();
  v2 = sub_29EB14FAC();

  return v2;
}

uint64_t sub_29EAA9C9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29EB146AC();
  v6 = v5;
  if (v4 == sub_29EB146AC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29EB14EBC();
  }

  return v9 & 1;
}

uint64_t sub_29EAA9D24(uint64_t a1)
{
  v2 = sub_29EAA9FA4(&qword_2A187A498, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_29EAA9FA4(&unk_2A187A4A0, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29EAA9DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29EB1467C();

  *a2 = v5;
  return result;
}

uint64_t sub_29EAA9E2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_29EB146AC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_29EAA9E58(uint64_t a1)
{
  v2 = sub_29EAA9FA4(&qword_2A187A460, type metadata accessor for URLResourceKey);
  v3 = sub_29EAA9FA4(&qword_2A187A468, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29EAA9FA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29EAAA038()
{
  result = qword_2A187A450;
  if (!qword_2A187A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A450);
  }

  return result;
}

unint64_t sub_29EAAA090()
{
  result = qword_2A187A458;
  if (!qword_2A187A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A458);
  }

  return result;
}

uint64_t sub_29EAAA0E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000029EB1AEF0 == a2 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xED00006F666E4973 || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000029EB1AF50 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_29EB14EBC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_29EAAA228(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResourcesExtractor.init(fileHandle:)(AppMigrationKit::ResourcesExtractor *__return_ptr retstr, NSFileHandle fileHandle)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = 0;
  v4 = [objc_allocWithZone(AMKArchiveReader) initWithFileHandle:fileHandle.super.isa error:v9];
  if (v4)
  {
    v5 = v4;
    v6 = v9[0];

    retstr->archiveReader.super.isa = v5;
  }

  else
  {
    v7 = v9[0];
    sub_29EB1417C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t ResourcesExtractor.readAndExpand(into:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2A1C73D48](sub_29EAAA4A8, 0, 0);
}

uint64_t sub_29EAAA4A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x29EDCA470] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_29EAAA5B4;
  v7 = v0[2];

  return MEMORY[0x2A1C73C78](v7, &unk_29EB16A40, v3, sub_29EAAB000, v4, 0, 0, &type metadata for ResourcesExtractorMetrics);
}

uint64_t sub_29EAAA5B4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAAA6FC, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_29EAAA6FC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_29EAAA768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAAA838, 0, 0);
}

uint64_t sub_29EAAA838()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v8 = v0[20];
  v5 = sub_29EB141BC();
  v0[25] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29EAAAA00;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A578, &qword_29EB16AF0);
  sub_29EB148AC();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29EAAAF50;
  v0[13] = &block_descriptor;
  [v8 readAndExpandIntoURL:v5 completion:v0 + 10];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EAAAA00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_29EAAAD34;
  }

  else
  {
    v3 = sub_29EAAAB10;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAAAB10()
{
  v1 = *(v0 + 160);
  v18 = *(v0 + 144);

  v17 = [v1 uncompressedBytes];
  v2 = [v1 fileCount];
  v3 = [v1 dirCount];
  v4 = [v1 symlinkCount];
  v5 = [v1 compressionScheme];
  if (v5)
  {
    v6 = v5;
    sub_29EB146AC();

    v7 = sub_29EB1465C();
    v9 = v8;

    v10 = v7 == 1885960807 && v9 == 0xE400000000000000;
    if (v10 || (sub_29EB14EBC() & 1) != 0)
    {

      v11 = 1;
      goto LABEL_13;
    }

    if (v7 != 1701736302 || v9 != 0xE400000000000000)
    {
      sub_29EB14EBC();
    }
  }

  v11 = 0;
LABEL_13:
  v12 = *(v0 + 192);
  v13 = *(v0 + 152);
  v14 = [*(v0 + 160) archiveFormat];
  sub_29EB146AC();

  sub_29EB1465C();

  *v13 = v18;
  v13[1] = v17;
  v13[2] = v2;
  v13[3] = v3;
  v13[4] = v4;
  v13[5] = v11;
  v13[6] = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_29EAAAD34()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_29EAAADB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EAAAE5C;

  return sub_29EAAA768(a1, v5, v4);
}

uint64_t sub_29EAAAE5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_29EAAAF50(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_29EB148BC();
  }

  else
  {
    sub_29EB148CC();
  }
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

uint64_t sub_29EAAB02C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EAAB04C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_29EAAB0A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_29EAAB0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29EAAB1A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29EAAB22C()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187A580);
  __swift_project_value_buffer(v0, qword_2A187A580);
  return sub_29EB1453C();
}

AppMigrationKit::_t_MigrationInjectionOperation_optional __swiftcall _t_MigrationInjectionOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_29EB14D8C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t _t_MigrationInjectionOperation.rawValue.getter()
{
  v1 = 0x655274726F706D69;
  v2 = *v0;
  v3 = 0xD000000000000014;
  v4 = 0xD00000000000001ALL;
  if (v2 != 4)
  {
    v4 = 0x6867696C66657270;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0x655274726F707865;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_29EAAB3E4()
{
  result = qword_2A187A598;
  if (!qword_2A187A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A598);
  }

  return result;
}

uint64_t sub_29EAAB440()
{
  sub_29EB14F8C();
  sub_29EB1473C();

  return sub_29EB14FAC();
}

uint64_t sub_29EAAB558()
{
  *v0;
  *v0;
  *v0;
  sub_29EB1473C();
}

uint64_t sub_29EAAB658()
{
  sub_29EB14F8C();
  sub_29EB1473C();

  return sub_29EB14FAC();
}

uint64_t sub_29EAAB778@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0x655274726F706D69;
  v3 = *v1;
  v4 = 0xD000000000000014;
  v5 = 0x800000029EB1AEA0;
  v6 = 0x800000029EB1AEC0;
  v7 = 0xD00000000000001ALL;
  result = 0x6867696C66657270;
  if (v3 != 4)
  {
    v7 = 0x6867696C66657270;
    v6 = 0xE900000000000074;
  }

  if (v3 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v9 = 0x800000029EB1AE80;
  if (v3 == 1)
  {
    v9 = 0xEF73656372756F73;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v2 = 0x655274726F707865;
    v10 = 0xEF73656372756F73;
  }

  if (*v1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
  return result;
}

unint64_t sub_29EAAB8F4()
{
  result = qword_2A187A5A0;
  if (!qword_2A187A5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A5A8, &qword_29EB16BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A5A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _t_MigrationInjectionOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _t_MigrationInjectionOperation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29EAABAB8(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x29EDCA190];
  if (os_variant_has_internal_content())
  {
    swift_beginAccess();
    v4 = *(v2 + 112);
    *(v2 + 112) = a1;
  }

  else
  {

    if (qword_2A187A2D8 != -1)
    {
      swift_once();
    }

    v5 = sub_29EB1454C();
    __swift_project_value_buffer(v5, qword_2A187A580);
    v6 = sub_29EB1452C();
    v7 = sub_29EB14A5C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_29EAA5000, v6, v7, "unable to create injection manager on external build", v8, 2u);
      MEMORY[0x29EDA8150](v8, -1, -1);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_29EAABC04()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x2A1C73CE8](v0);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29EAABD08(uint64_t a1)
{
  *(v2 + 632) = v1;
  *(v2 + 624) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAABD2C, v1, 0);
}

uint64_t sub_29EAABD2C()
{
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v1 = sub_29EB1454C();
  __swift_project_value_buffer(v1, qword_2A187A580);
  v2 = sub_29EB1452C();
  v3 = sub_29EB14A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EAA5000, v2, v3, "Performing preflight injections", v4, 2u);
    MEMORY[0x29EDA8150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 640) = v5;
  *v5 = v0;
  v5[1] = sub_29EAABE98;
  v6 = *(v0 + 632);
  v7 = MEMORY[0x29EDCA190];

  return sub_29EACDE88(5, v7);
}

uint64_t sub_29EAABE98()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 632);

    return MEMORY[0x2A1C73D48](sub_29EAABFDC, v7, 0);
  }
}

uint64_t sub_29EAABFDC()
{
  v1 = *(v0 + 632);
  sub_29EAAD45C((v0 + 16));
  swift_beginAccess();
  v20 = *(v1 + 112);
  v2 = *(v20 + 16);
  if (v2)
  {
    v29 = v20 + 32;
    v3 = *(v0 + 96);
    *(v0 + 208) = *(v0 + 80);
    *(v0 + 224) = v3;
    v4 = *(v0 + 128);
    *(v0 + 240) = *(v0 + 112);
    *(v0 + 256) = v4;
    v5 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v5;
    v6 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v6;

    v28 = v2 - 1;
    while (1)
    {
      sub_29EAAD064(v29, v0 + 520);
      sub_29EAAD474(v0 + 520, v0 + 560);
      sub_29EAAD4D8(v0 + 520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E0, &qword_29EB16CF8);
      if (swift_dynamicCast())
      {
        sub_29EAAD52C(v0 + 144);
        v7 = *(v0 + 400);
        v8 = *(v0 + 416);
        v22 = *(v0 + 440);
        v23 = *(v0 + 432);
        v9 = *(v0 + 456);
        v10 = *(v0 + 472);
        v24 = *(v0 + 408);
        v25 = *(v0 + 464);
        v11 = *(v0 + 488);
        v26 = *(v0 + 480);
        v27 = *(v0 + 424);
        v12 = *(v0 + 496);
        v13 = *(v0 + 504);
        v14 = *(v0 + 512);
        v21 = *(v0 + 448);
        sub_29EAA8ECC(v7, v24, v8, v27, v23);
        sub_29EAA8ECC(v9, v25, v10, v26, v11);

        sub_29EAA8FB8(v7, v24, v8, v27, v23);
        sub_29EAA8FB8(v9, v25, v10, v26, v11);

        *(v0 + 272) = v7;
        *(v0 + 280) = v24;
        *(v0 + 288) = v8;
        *(v0 + 296) = v27;
        *(v0 + 304) = v23;
        *(v0 + 312) = v22;
        *(v0 + 320) = v21;
        *(v0 + 328) = v9;
        *(v0 + 336) = v25;
        *(v0 + 344) = v10;
        *(v0 + 352) = v26;
        *(v0 + 360) = v11;
        *(v0 + 368) = v12;
        *(v0 + 376) = v13;
        *(v0 + 384) = 0;
        *(v0 + 392) = v14;
        nullsub_1(v0 + 272);
        v34 = *(v0 + 336);
        v35 = *(v0 + 352);
        v36 = *(v0 + 368);
        v37 = *(v0 + 384);
        v30 = *(v0 + 272);
        v31 = *(v0 + 288);
        v15 = *(v0 + 304);
        v16 = *(v0 + 320);
      }

      else
      {
        v34 = *(v0 + 208);
        v35 = *(v0 + 224);
        v36 = *(v0 + 240);
        v37 = *(v0 + 256);
        v30 = *(v0 + 144);
        v31 = *(v0 + 160);
        v15 = *(v0 + 176);
        v16 = *(v0 + 192);
      }

      v32 = v15;
      v33 = v16;
      if (!v28)
      {
        break;
      }

      *(v0 + 208) = v34;
      *(v0 + 224) = v35;
      *(v0 + 240) = v36;
      *(v0 + 256) = v37;
      *(v0 + 144) = v30;
      *(v0 + 160) = v31;
      --v28;
      v29 += 40;
      *(v0 + 176) = v15;
      *(v0 + 192) = v16;
    }
  }

  else
  {
    v34 = *(v0 + 80);
    v35 = *(v0 + 96);
    v36 = *(v0 + 112);
    v37 = *(v0 + 128);
    v30 = *(v0 + 16);
    v31 = *(v0 + 32);
    v32 = *(v0 + 48);
    v33 = *(v0 + 64);
  }

  v17 = *(v0 + 624);
  v17[4] = v34;
  v17[5] = v35;
  v17[6] = v36;
  v17[7] = v37;
  *v17 = v30;
  v17[1] = v31;
  v17[2] = v32;
  v17[3] = v33;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_29EAAC334@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5C8, &qword_29EB16CE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v19 = &v17 - v3;
  v4 = sub_29EB1418C();
  v18 = *(v4 - 8);
  v5 = v18;
  v6 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29EB1422C();
  v17 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = NSTemporaryDirectory();
  sub_29EB146AC();

  v15 = *(v5 + 104);
  v15(v8, *MEMORY[0x29EDB9B00], v4);
  (*(v10 + 56))(v19, 1, 1, v9);
  sub_29EB1420C();
  v21 = 0xD000000000000016;
  v22 = 0x800000029EB1B630;
  v15(v8, *MEMORY[0x29EDB9B10], v4);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v18 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v17);
}

uint64_t sub_29EAAC5E0()
{
  v1 = sub_29EB1422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  sub_29EAAC334(v5);
  sub_29EB141EC();
  (*(v2 + 8))(v5, v1);
  v7 = sub_29EB1467C();

  v8 = [v6 contentsAtPath_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_29EB142CC();
  v11 = v10;

  v12 = sub_29EB1405C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_29EB1404C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5B8, &qword_29EB16CD8);
  sub_29EAAD5E8(&qword_2A187A5F8, sub_29EAAD660);
  sub_29EB1403C();
  if (v0)
  {
    sub_29EAAD010(v9, v11);
  }

  else
  {

    v16 = v19;
    if (*(v19 + 16))
    {
      type metadata accessor for _t_MigrationInjectionManager();
      swift_allocObject();
      v17 = sub_29EAABAB8(v16);
    }

    else
    {

      v17 = 0;
    }

    sub_29EAAD010(v9, v11);
    return v17;
  }
}

void sub_29EAAC850()
{
  v2 = v0;
  v26[4] = *MEMORY[0x29EDCA608];
  v3 = sub_29EB1422C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v26[-1] - v9;
  swift_beginAccess();
  if (*(*(v2 + 112) + 16))
  {
    v11 = sub_29EB1408C();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_29EB1407C();
    v26[0] = *(v2 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5B8, &qword_29EB16CD8);
    sub_29EAAD5E8(&qword_2A187A5C0, sub_29EAACFBC);
    v14 = sub_29EB1406C();
    if (v1)
    {
    }

    else
    {
      v20 = v14;
      v21 = v15;

      sub_29EAAC334(v10);
      sub_29EB142DC();
      (*(v4 + 8))(v10, v3);
      sub_29EAAD010(v20, v21);
    }
  }

  else
  {
    v16 = [objc_opt_self() defaultManager];
    sub_29EAAC334(v8);
    v17 = sub_29EB141BC();
    (*(v4 + 8))(v8, v3);
    v26[0] = 0;
    v18 = [v16 removeItemAtURL:v17 error:v26];

    if (v18)
    {
      v19 = v26[0];
    }

    else
    {
      v22 = v26[0];
      v23 = sub_29EB1417C();

      swift_willThrow();
    }
  }

  v24 = *MEMORY[0x29EDCA608];
}

void sub_29EAACB3C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_29EB146EC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = sub_29EB1408C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_29EB1407C();
  sub_29EAACFBC();
  v10 = sub_29EB1406C();
  v12 = v11;

  if (!v2)
  {
    sub_29EB146DC();
    v13 = sub_29EB146CC();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      sub_29EAAD010(v10, v12);
      if (qword_2A187A2D8 != -1)
      {
        swift_once();
      }

      v17 = sub_29EB1454C();
      __swift_project_value_buffer(v17, qword_2A187A580);

      v18 = sub_29EB1452C();
      v19 = sub_29EB14A4C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v30[0] = v21;
        *v20 = 136315138;
        v22 = sub_29EABC674(v15, v16, v30);

        *(v20 + 4) = v22;
        _os_log_impl(&dword_29EAA5000, v18, v19, "Handling extension injection message %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x29EDA8150](v21, -1, -1);
        MEMORY[0x29EDA8150](v20, -1, -1);
      }

      else
      {
      }

      sub_29EAAD064(a1, v30);
      swift_beginAccess();
      v23 = *(v3 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 112) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_29EAAD0C0(0, *(v23 + 2) + 1, 1, v23);
        *(v3 + 112) = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_29EAAD0C0((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v27 = &v23[40 * v26];
      v28 = v30[0];
      v29 = v30[1];
      *(v27 + 8) = v31;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      *(v3 + 112) = v23;
      swift_endAccess();
      sub_29EAAC850();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_29EAACE48()
{
  v1 = v0;
  if (qword_2A187A2D8 != -1)
  {
    swift_once();
  }

  v2 = sub_29EB1454C();
  __swift_project_value_buffer(v2, qword_2A187A580);
  v3 = sub_29EB1452C();
  v4 = sub_29EB14A4C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_29EABC674(0x7261656C63, 0xE500000000000000, &v8);
    _os_log_impl(&dword_29EAA5000, v3, v4, "Handling extension control message %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x29EDA8150](v6, -1, -1);
    MEMORY[0x29EDA8150](v5, -1, -1);
  }

  swift_beginAccess();
  v7 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x29EDCA190];

  sub_29EAAC850();
}

unint64_t sub_29EAACFBC()
{
  result = qword_2A187A5B0;
  if (!qword_2A187A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A5B0);
  }

  return result;
}

uint64_t sub_29EAAD010(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_29EAAD0C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5D8, &qword_29EB16CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29EAAD1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A358, &qword_29EB164A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29EAAD300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A470, &unk_29EB168A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_29EAAD404()
{
  result = qword_2A187A5D0;
  if (!qword_2A187A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A5D0);
  }

  return result;
}

double sub_29EAAD45C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_29EAAD474(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29EAAD52C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5E8, &qword_29EB16D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29EAAD594()
{
  result = qword_2A187A5F0;
  if (!qword_2A187A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A5F0);
  }

  return result;
}

uint64_t sub_29EAAD5E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A5B8, &qword_29EB16CD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29EAAD660()
{
  result = qword_2A187A600;
  if (!qword_2A187A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A600);
  }

  return result;
}

uint64_t sub_29EAAD6B4()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A1881290);
  __swift_project_value_buffer(v0, qword_2A1881290);
  return sub_29EB1453C();
}

uint64_t sub_29EAAD72C()
{
  v0 = *(*(sub_29EB145CC() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v1 = sub_29EB14AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_29EB14A9C() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  sub_29EAADFA4();
  sub_29EB14A8C();
  (*(v2 + 104))(v5, *MEMORY[0x29EDCA2B0], v1);
  sub_29EB145BC();
  result = sub_29EB14ACC();
  qword_2A187A608 = result;
  return result;
}

uint64_t sub_29EAAD8DC()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187A610);
  __swift_project_value_buffer(v0, qword_2A187A610);
  return sub_29EB1453C();
}

uint64_t sub_29EAAD958(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v5 = sub_29EB145AC();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29EB145CC();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8]();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8]();
  v17 = &v24 - v16;
  if (qword_2A187A2E8 != -1)
  {
    swift_once();
  }

  v24 = qword_2A187A608;
  sub_29EAAD474(a2, v30);
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  sub_29EAADE9C(v30, v19 + 16);
  v20 = v26;
  *(v19 + 56) = v26;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_29EAADEB4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);
  v22 = v20;
  sub_29EB145BC();
  v28 = MEMORY[0x29EDCA190];
  sub_29EAAE548(&qword_2A187A630, MEMORY[0x29EDCA248]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8C0, &unk_29EB16D10);
  sub_29EAADF40();
  sub_29EB14BDC();
  MEMORY[0x29EDA7130](0, v12, v8, v21);
  _Block_release(v21);
  (*(v25 + 8))(v8, v5);
  (*(v9 + 8))(v12, v27);
}

uint64_t sub_29EAADD24(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB14A2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  return sub_29EB148CC();
}

uint64_t sub_29EAADDC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EAADE9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29EAADEB4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8) + 80);
  v2 = *(v0 + 56);

  return sub_29EAADD24((v0 + 16));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29EAADF40()
{
  result = qword_2A187A638;
  if (!qword_2A187A638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2A187A8C0, &unk_29EB16D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A638);
  }

  return result;
}

unint64_t sub_29EAADFA4()
{
  result = qword_2A187A8F0;
  if (!qword_2A187A8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A187A8F0);
  }

  return result;
}

uint64_t sub_29EAADFF0()
{
  v1 = sub_29EB1422C();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29EB1402C();
  v49 = *(v53 - 8);
  v5 = *(v49 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v53);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v45 - v9;
  v11 = sub_29EB1425C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0;
  sub_29EB141EC();
  v17 = sub_29EB1471C();

  v18 = sandbox_extension_issue_file();

  if (v18)
  {
    v20 = strlen(v18);
    v21 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      (*(v12 + 13))(v15, *MEMORY[0x29EDB9B48], v11);
      return sub_29EAAE6DC(v18, v21, v15);
    }

    __break(1u);
  }

  else
  {
    v12 = v16;
    v48 = v8;
    v8 = v50;
    v15 = v51;
    v17 = v49;
    MEMORY[0x29EDA6BF0](v19);
    v23 = sub_29EB1455C();
    if ((v23 & 0x100000000) != 0)
    {
      v24 = 4;
    }

    else
    {
      v24 = v23;
    }

    v56 = v24;
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EAAE548(&qword_2A187A640, MEMORY[0x29EDB9870]);
    sub_29EB1415C();
    v16 = v10;
    if (qword_2A187A2F0 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  v25 = sub_29EB1454C();
  __swift_project_value_buffer(v25, qword_2A187A610);
  v26 = v4;
  (*(v8 + 2))(v4, v12, v15);
  v27 = v17;
  v28 = *(v17 + 16);
  v29 = v48;
  v52 = v16;
  v28(v48, v16, v53);
  v30 = sub_29EB1452C();
  v31 = sub_29EB14A5C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v32 = 136315394;
    v55 = v31;
    v33 = sub_29EB141EC();
    v35 = v34;
    (*(v8 + 1))(v26, v15);
    v36 = sub_29EABC674(v33, v35, &v54);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2112;
    sub_29EB1401C();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    v38 = *(v27 + 8);
    v39 = v29;
    v40 = v53;
    v38(v39, v53);
    *(v32 + 14) = v37;
    v41 = v46;
    *v46 = v37;
    _os_log_impl(&dword_29EAA5000, v30, v55, "Could not issue sandbox extension for %s - %@", v32, 0x16u);
    sub_29EAAE590(v41);
    MEMORY[0x29EDA8150](v41, -1, -1);
    v42 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x29EDA8150](v42, -1, -1);
    MEMORY[0x29EDA8150](v32, -1, -1);
  }

  else
  {

    v38 = *(v17 + 8);
    v43 = v29;
    v40 = v53;
    v38(v43, v53);
    (*(v8 + 1))(v4, v15);
  }

  v44 = v52;
  sub_29EB1401C();
  swift_willThrow();
  return (v38)(v44, v40);
}

uint64_t sub_29EAAE548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EAAE590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A648, qword_29EB17EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EAAE5F8(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_29EB1426C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_29EB140BC();
  if (v3)
  {
    result = sub_29EB140DC();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_29EB140CC();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_29EAB5EBC(v3, v7);

  return v8;
}

uint64_t sub_29EAAE6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EB1425C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29EB1424C();
  if (a2)
  {
    v11 = sub_29EB1410C();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_29EB1409C();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x29EDB9B50])
    {
      v15 = sub_29EB140FC();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_29EAAE5F8(v14, a2);
  }

  else
  {
    v17 = sub_29EB1424C();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

void *sub_29EAAE944@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v6 = *a1;
  v8[0] = a1[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A650, &unk_29EB1A790);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_29EAB02A4();
  v3 = sub_29EB147CC();

  v8[0] = v3;
  sub_29EB1488C();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v4 = sub_29EB1464C();
  v8[0] = v6;
  v8[1] = v2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return MigrationRequestWithOptions.init(destinationPlatform:options:)(v8, v4, a2);
}

uint64_t sub_29EAAEB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_29EB14B6C();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v25);
  v12 = &v25 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v16 = &v25 - v15;
  v29 = a1;
  v30 = a2;
  swift_getAssociatedConformanceWitness();

  sub_29EB147EC();
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v12, v25);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v28, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v19 = *(v13 + 32);
    v19(v16, v12, AssociatedTypeWitness);
    v20 = swift_getTupleTypeMetadata2();
    v21 = v28;
    v22 = &v28[*(v20 + 48)];
    v19(v28, v16, AssociatedTypeWitness);
    v24 = v26;
    v23 = v27;
    *v22 = v26;
    v22[1] = v23;
    (*(*(v20 - 8) + 56))(v21, 0, 1, v20);
    return sub_29EAB0308(v24, v23);
  }
}

uint64_t sub_29EAAEE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 96) = *a2;
  *(v5 + 104) = *(a2 + 8);
  return MEMORY[0x2A1C73D48](sub_29EAAEE68, 0, 0);
}

uint64_t sub_29EAAEE68()
{
  v14 = v0;
  v1 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  sub_29EAAE944(&v12, (v0 + 16));
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = *(v0 + 24);
  v2 = *(v11 + 48);
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_29EAAEFB4;
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  return v10(v8, v0 + 40, v7, v5);
}

uint64_t sub_29EAAEFB4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 56);

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAAF12C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_29EAAF144()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_29EB147DC();
}

uint64_t ResourcesArchiver.appendItem(at:pathInArchive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAAF2B8, 0, 0);
}

uint64_t sub_29EAAF2B8()
{
  sub_29EB1493C();
  if (v0[20])
  {
    v1 = v0[19];
    v2 = v0[20];
  }

  else
  {
    v3 = v0[18];
    sub_29EB141AC();
  }

  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[18];
  v12 = *(v0[21] + 16);

  v8 = sub_29EB141BC();
  v0[25] = v8;
  v9 = sub_29EB1467C();
  v0[26] = v9;

  v0[2] = v0;
  v0[3] = sub_29EAAF51C;
  swift_continuation_init();
  v0[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A578, &qword_29EB16AF0);
  sub_29EB148AC();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29EAAF720;
  v0[13] = &block_descriptor_1;
  [v12 appendItemAtURL:v8 pathInArchive:v9 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EAAF51C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_29EAAF6A0;
  }

  else
  {
    v3 = sub_29EAAF62C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAAF62C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EAAF6A0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  v4 = v0[27];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

void sub_29EAAF720(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    sub_29EB148CC();
  }
}

uint64_t sub_29EAAF7C8()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAAF894, 0, 0);
}

uint64_t sub_29EAAF894()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = *(v1[18] + 16);
  v1[2] = v2;
  v1[3] = sub_29EAAFA48;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A578, &qword_29EB16AF0);
  sub_29EB148AC();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29EAAF720;
  v1[13] = &block_descriptor_10;
  [v8 closeWithCompletion_];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t sub_29EAAFA48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_29EAAFBBC;
  }

  else
  {
    v3 = sub_29EAAFB58;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAAFB58()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EAAFBBC()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t ResourcesArchiver.__deallocating_deinit()
{

  return MEMORY[0x2A1C73398](v0, 25, 7);
}

uint64_t dispatch thunk of ResourcesExportingWithOptions.exportResources(to:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EAAAE5C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ResourcesExportingWithOptions.resourcesSizeEstimate.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB0544;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DataclassResourcesExporting.resourcesItemCount.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB0010;

  return v9(a1, a2);
}

uint64_t sub_29EAB0010(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DataclassResourcesExporting.resourcesErrorCount.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB0544;

  return v9(a1, a2);
}

uint64_t sub_29EAB0260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return sub_29EAAEB4C(a1, a2, a3, a4, a5);
}

uint64_t sub_29EAB0268(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

unint64_t sub_29EAB02A4()
{
  result = qword_2A187A658;
  if (!qword_2A187A658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187A650, &unk_29EB1A790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A658);
  }

  return result;
}

uint64_t sub_29EAB0308(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29EAB035C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v8 = &v13[-v7];
  swift_checkMetadataState();
  sub_29EB14C3C();
  v14 = a1;
  v15 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_29EB01330(sub_29EAB051C, v13, AssociatedTypeWitness, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9F80], AssociatedConformanceWitness, MEMORY[0x29EDC9F90], v10);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_29EAB051C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29EAAF144();
}

uint64_t sub_29EAB0548(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73656372756F73;
  v3 = 0x655274726F706D69;
  v4 = a1;
  v5 = 0x800000029EB1AEA0;
  v6 = 0x800000029EB1AEC0;
  v7 = 0xD00000000000001ALL;
  if (a1 != 4)
  {
    v7 = 0x6867696C66657270;
    v6 = 0xE900000000000074;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xD000000000000014;
  v9 = 0x800000029EB1AE80;
  if (a1 == 1)
  {
    v8 = 0x655274726F706D69;
    v9 = 0xEF73656372756F73;
  }

  if (!a1)
  {
    v8 = 0x655274726F707865;
    v9 = 0xEF73656372756F73;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x800000029EB1AEC0;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xE900000000000074;
        if (v10 != 0x6867696C66657270)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 0xD000000000000014;
    v2 = 0x800000029EB1AEA0;
  }

  else
  {
    if (!a2)
    {
      if (v10 != 0x655274726F707865)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0x800000029EB1AE80;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v10 != v3)
  {
LABEL_32:
    v12 = sub_29EB14EBC();
    goto LABEL_33;
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

unint64_t sub_29EAB0704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A470, &unk_29EB168A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29EB16E50;
  v1 = sub_29EAB615C();
  *(v0 + 32) = &type metadata for _t_StreamRandomData;
  *(v0 + 40) = v1;
  result = sub_29EAB622C();
  *(v0 + 48) = &type metadata for _t_StreamRepeated;
  *(v0 + 56) = result;
  qword_2A18812A8 = v0;
  return result;
}

double static _t_StreamRandomData.example.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_StreamRandomData;
  *(a1 + 32) = sub_29EAB615C();
  *&result = 100;
  *a1 = xmmword_29EB16E60;
  *(a1 + 16) = 50;
  return result;
}

AppMigrationKit::_t_StreamRandomData __swiftcall _t_StreamRandomData.init(count:delay:size:)(Swift::Int count, Swift::Int delay, Swift::Int size)
{
  *v3 = count;
  v3[1] = delay;
  v3[2] = size;
  result.size = size;
  result.delay = delay;
  result.count = count;
  return result;
}

uint64_t sub_29EAB07E8()
{
  v1 = 0x79616C6564;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_29EAB0834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EAB6D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EAB085C(uint64_t a1)
{
  v2 = sub_29EAB61B0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAB0898(uint64_t a1)
{
  v2 = sub_29EAB61B0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_StreamRandomData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A668, &qword_29EB16EA0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAB61B0();
  sub_29EB14FFC();
  v16 = 0;
  sub_29EB14E5C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_29EB14E5C();
  v14 = 2;
  sub_29EB14E5C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t _t_StreamRandomData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A678, &qword_29EB16EA8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAB61B0();
  sub_29EB14FEC();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_29EB14DEC();
    v18 = 1;
    v16 = sub_29EB14DEC();
    v17 = 2;
    v13 = sub_29EB14DEC();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAB0C64(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAAAE5C;

  return (sub_29EAB165C)(a1, v4, v5, v6);
}

uint64_t sub_29EAB0D2C(uint64_t a1)
{
  *(v2 + 104) = a1;
  v3 = sub_29EB14CFC();
  *(v2 + 112) = v3;
  v4 = *(v3 - 8);
  *(v2 + 120) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v6 = sub_29EB14D0C();
  *(v2 + 144) = v6;
  v7 = *(v6 - 8);
  *(v2 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v9 = *(v1 + 16);
  *(v2 + 168) = vextq_s8(*v1, *v1, 8uLL);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v9;
  *(v2 + 48) = *(v1 + 32);

  return MEMORY[0x2A1C73D48](sub_29EAB0E70, 0, 0);
}

void sub_29EAB0E70()
{
  v1 = v0[22];
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v0[23] = 0;
    v2 = _t_StreamRepeated.generate(index:)(0);
    v4 = v3;
    v0[24] = v2;
    v0[25] = v3;
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_29EAB0FA4;
    v6 = v0[13];

    sub_29EAB46EC(v2, v4);
  }

  else
  {
    v7 = v0[20];
    v8 = v0[16];
    v9 = v0[17];

    v10 = v0[1];

    v10();
  }
}

uint64_t sub_29EAB0FA4()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_29EAB13EC;
  }

  else
  {
    v3 = sub_29EAB10B8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAB10B8()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = 1000000000000000000 * v1;
  v9 = ((v1 >> 63) & 0xF21F494C589C0000) + ((v1 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 1;
  v10 = sub_29EAB726C(&qword_2A187A680, MEMORY[0x29EDCA440]);
  sub_29EB14F0C();
  sub_29EAB726C(&qword_2A187A688, MEMORY[0x29EDCA430]);
  sub_29EB14D1C();
  v11 = *(v6 + 8);
  *(v0 + 224) = v11;
  *(v0 + 232) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  v12 = *(MEMORY[0x29EDCA480] + 4);
  v13 = swift_task_alloc();
  *(v0 + 240) = v13;
  *v13 = v0;
  v13[1] = sub_29EAB1294;
  v14 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);

  return MEMORY[0x2A1C73C90](v16, v0 + 64, v15, v10);
}

uint64_t sub_29EAB1294()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 248) = v0;

  v4 = *(v2 + 232);
  if (v0)
  {
    (*(v2 + 224))(*(v2 + 136), *(v2 + 112));
    v5 = sub_29EAB15B8;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);
    v8 = *(v2 + 144);
    (*(v2 + 224))(*(v2 + 136), *(v2 + 112));
    (*(v7 + 8))(v6, v8);
    v5 = sub_29EAB1478;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAB13EC()
{
  v1 = v0[27];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  sub_29EAAD010(v0[24], v0[25]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EAB1478()
{
  v1 = v0[22];
  v2 = v0[23] + 1;
  sub_29EAAD010(v0[24], v0[25]);
  if (v2 == v1)
  {
    v3 = v0[20];
    v4 = v0[16];
    v5 = v0[17];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[23] + 1;
    v0[23] = v8;
    v9 = _t_StreamRepeated.generate(index:)(v8);
    v11 = v10;
    v0[24] = v9;
    v0[25] = v10;
    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    v12[1] = sub_29EAB0FA4;
    v13 = v0[13];

    return sub_29EAB46EC(v9, v11);
  }
}

uint64_t sub_29EAB15B8()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[31];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  sub_29EAAD010(v0[24], v0[25]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EAB165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v5 = sub_29EB14CFC();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_29EB14D0C();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EAB17B4, 0, 0);
}

uint64_t sub_29EAB17B4()
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 128);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v1)
  {
    v2 = *(v0 + 144);
    if ((v2 & 0x8000000000000000) == 0)
    {
      *(v0 + 208) = 0;
      v3 = MEMORY[0x29EDCA190];
      if (v2)
      {
        *(v0 + 104) = MEMORY[0x29EDCA190];
        sub_29EB00B4C(0, v2, 0);
        v4 = 0;
        v3 = *(v0 + 104);
        do
        {
          *(v0 + 112) = 0;
          MEMORY[0x29EDA8160](v0 + 112, 8);
          v5 = *(v0 + 112);
          *(v0 + 104) = v3;
          v7 = *(v3 + 16);
          v6 = *(v3 + 24);
          if (v7 >= v6 >> 1)
          {
            sub_29EB00B4C((v6 > 1), v7 + 1, 1);
            v3 = *(v0 + 104);
          }

          v8 = *(v0 + 144);
          ++v4;
          *(v3 + 16) = v7 + 1;
          *(v3 + v7 + 32) = v5;
        }

        while (v4 != v8);
      }

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A720, &unk_29EB17418);
      *(v0 + 40) = v9;
      *(v0 + 48) = sub_29EAB72B4(&qword_2A187A728, &qword_2A187A720, &unk_29EB17418);
      *(v0 + 16) = v3;
      v10 = __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
      v11 = *v10;
      v12 = *(*v10 + 16);
      if (v12)
      {
        if (v12 <= 0xE)
        {
          *(v0 + 79) = 0;
          *(v0 + 73) = 0;
          *(v0 + 87) = v12;
          memcpy((v0 + 73), (v11 + 32), v12);
          v18 = *(v0 + 73);
          v19 = *(v0 + 81) | ((*(v0 + 85) | (*(v0 + 87) << 16)) << 32);
        }

        else
        {
          v13 = sub_29EB1410C();
          v14 = *(v13 + 48);
          v15 = *(v13 + 52);
          swift_allocObject();
          v16 = sub_29EB140AC();
          v17 = v16;
          if (v12 >= 0x7FFFFFFF)
          {
            sub_29EB1426C();
            v18 = swift_allocObject();
            *(v18 + 16) = 0;
            *(v18 + 24) = v12;
            v19 = v17 | 0x8000000000000000;
          }

          else
          {
            v18 = v12 << 32;
            v19 = v16 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = 0xC000000000000000;
      }

      *(v0 + 224) = v18;
      *(v0 + 232) = v19;
      *(v0 + 216) = v19;
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v26 = swift_task_alloc();
      *(v0 + 240) = v26;
      *v26 = v0;
      v26[1] = sub_29EAB1AE8;
      v27 = *(v0 + 120);
      v28 = *MEMORY[0x29EDCA608];

      return sub_29EAB46EC(v18, v19);
    }

LABEL_23:
    __break(1u);
  }

  v20 = *(v0 + 200);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);

  v23 = *(v0 + 8);
  v24 = *MEMORY[0x29EDCA608];

  return v23();
}

uint64_t sub_29EAB1AE8()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_29EAB1FC0;
  }

  else
  {
    v3 = sub_29EAB1C28;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAB1C28()
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = 1000000000000000000 * v7;
  v9 = ((v7 >> 63) & 0xF21F494C589C0000) + ((v7 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  *(v0 + 64) = 0;
  *(v0 + 56) = 0;
  *(v0 + 72) = 1;
  v10 = sub_29EAB726C(&qword_2A187A680, MEMORY[0x29EDCA440]);
  sub_29EB14F0C();
  sub_29EAB726C(&qword_2A187A688, MEMORY[0x29EDCA430]);
  sub_29EB14D1C();
  v11 = *(v5 + 8);
  *(v0 + 256) = v11;
  *(v0 + 264) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v6);
  v12 = *(MEMORY[0x29EDCA480] + 4);
  v13 = swift_task_alloc();
  *(v0 + 272) = v13;
  *v13 = v0;
  v13[1] = sub_29EAB1E34;
  v14 = *(v0 + 200);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73C90](v16, v0 + 56, v15, v10);
}

uint64_t sub_29EAB1E34()
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 272);
  v12 = *v1;
  *(*v1 + 280) = v0;

  v4 = *(v2 + 264);
  if (v0)
  {
    (*(v2 + 256))(*(v2 + 176), *(v2 + 152));
    v5 = sub_29EAB23CC;
  }

  else
  {
    v7 = *(v2 + 192);
    v6 = *(v2 + 200);
    v8 = *(v2 + 184);
    (*(v2 + 256))(*(v2 + 176), *(v2 + 152));
    (*(v7 + 8))(v6, v8);
    v5 = sub_29EAB2080;
  }

  v9 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAB1FC0()
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = v0[31];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  sub_29EAAD010(v0[28], v0[29]);

  v5 = v0[1];
  v6 = *MEMORY[0x29EDCA608];

  return v5();
}

uint64_t sub_29EAB2080()
{
  v31 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 128);
  v2 = *(v0 + 208) + 1;
  sub_29EAAD010(*(v0 + 224), *(v0 + 232));
  if (v2 == v1)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);

    v6 = *(v0 + 8);
    v7 = *MEMORY[0x29EDCA608];

    return v6();
  }

  else
  {
    v9 = *(v0 + 216);
    ++*(v0 + 208);
    v10 = *(v0 + 144);
    v11 = MEMORY[0x29EDCA190];
    if (v10)
    {
      *(v0 + 104) = MEMORY[0x29EDCA190];
      sub_29EB00B4C(0, v10, 0);
      v12 = 0;
      v11 = *(v0 + 104);
      do
      {
        *(v0 + 112) = 0;
        MEMORY[0x29EDA8160](v0 + 112, 8);
        v13 = *(v0 + 112);
        *(v0 + 104) = v11;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_29EB00B4C((v14 > 1), v15 + 1, 1);
          v11 = *(v0 + 104);
        }

        v16 = *(v0 + 144);
        ++v12;
        *(v11 + 16) = v15 + 1;
        *(v11 + v15 + 32) = v13;
      }

      while (v12 != v16);
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A720, &unk_29EB17418);
    *(v0 + 40) = v17;
    *(v0 + 48) = sub_29EAB72B4(&qword_2A187A728, &qword_2A187A720, &unk_29EB17418);
    *(v0 + 16) = v11;
    v18 = __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    v19 = *v18;
    v20 = *(*v18 + 16);
    if (v20)
    {
      if (v20 <= 0xE)
      {
        *(v0 + 79) = 0;
        *(v0 + 73) = 0;
        *(v0 + 87) = v20;
        memcpy((v0 + 73), (v19 + 32), v20);
        v26 = *(v0 + 73);
        v9 = v9 & 0xF00000000000000 | *(v0 + 81) | ((*(v0 + 85) | (*(v0 + 87) << 16)) << 32);
        v27 = v9;
      }

      else
      {
        v21 = sub_29EB1410C();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        v24 = sub_29EB140AC();
        v25 = v24;
        if (v20 >= 0x7FFFFFFF)
        {
          sub_29EB1426C();
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = v20;
          v27 = v25 | 0x8000000000000000;
        }

        else
        {
          v26 = v20 << 32;
          v27 = v24 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v26 = 0;
      v27 = 0xC000000000000000;
    }

    *(v0 + 224) = v26;
    *(v0 + 232) = v27;
    *(v0 + 216) = v9;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v28 = swift_task_alloc();
    *(v0 + 240) = v28;
    *v28 = v0;
    v28[1] = sub_29EAB1AE8;
    v29 = *(v0 + 120);
    v30 = *MEMORY[0x29EDCA608];

    return sub_29EAB46EC(v26, v27);
  }
}

uint64_t sub_29EAB23CC()
{
  v8 = *MEMORY[0x29EDCA608];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[35];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  sub_29EAAD010(v0[28], v0[29]);

  v5 = v0[1];
  v6 = *MEMORY[0x29EDCA608];

  return v5();
}

uint64_t _t_SerializedDataStreamer.perform(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_29EB14CFC();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_29EB14D0C();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAB25D0, 0, 0);
}

uint64_t sub_29EAB25D0()
{
  v1 = v0[10];
  result = (*(v0[9] + 16))(v0[8]);
  v0[18] = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v3 = v0[8];
    v4 = *(v0[9] + 32);
    v0[19] = v4;
    v0[20] = 0;
    v5 = v0[10];
    v6 = v4(0, v3);
    v8 = v7;
    v0[21] = v6;
    v0[22] = v7;
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_29EAB2734;
    v10 = v0[7];

    return sub_29EAB46EC(v6, v8);
  }

  else
  {
    v11 = v0[17];
    v12 = v0[13];
    v13 = v0[14];

    v14 = v0[1];

    return v14();
  }

  return result;
}

uint64_t sub_29EAB2734()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_29EAB2D94;
  }

  else
  {
    v3 = sub_29EAB2848;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAB2848()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v18 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = (*(*(v0 + 72) + 24))(*(v0 + 64));
  v8 = 1000000000000000000 * v7;
  v9 = ((v7 >> 63) & 0xF21F494C589C0000) + ((v7 * 0xDE0B6B3A7640000uLL) >> 64);
  sub_29EB14F2C();
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v10 = sub_29EAB726C(&qword_2A187A680, MEMORY[0x29EDCA440]);
  sub_29EB14F0C();
  sub_29EAB726C(&qword_2A187A688, MEMORY[0x29EDCA430]);
  sub_29EB14D1C();
  v11 = *(v4 + 8);
  *(v0 + 200) = v11;
  *(v0 + 208) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v6);
  v12 = *(MEMORY[0x29EDCA480] + 4);
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_29EAB2A44;
  v14 = *(v0 + 136);
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);

  return MEMORY[0x2A1C73C90](v16, v0 + 16, v15, v10);
}

uint64_t sub_29EAB2A44()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v10 = *v1;
  *(*v1 + 224) = v0;

  v4 = *(v2 + 208);
  if (v0)
  {
    (*(v2 + 200))(*(v2 + 112), *(v2 + 88));
    v5 = sub_29EAB2CF0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 200))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v5 = sub_29EAB2B9C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EAB2B9C()
{
  v1 = v0[18];
  v2 = v0[20] + 1;
  sub_29EAAD010(v0[21], v0[22]);
  if (v2 == v1)
  {
    v3 = v0[17];
    v4 = v0[13];
    v5 = v0[14];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[19];
    ++v0[20];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    v12 = v8();
    v14 = v13;
    v0[21] = v12;
    v0[22] = v13;
    v15 = swift_task_alloc();
    v0[23] = v15;
    *v15 = v0;
    v15[1] = sub_29EAB2734;
    v16 = v0[7];

    return sub_29EAB46EC(v12, v14);
  }
}

uint64_t sub_29EAB2CF0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[28];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  sub_29EAAD010(v0[21], v0[22]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EAB2D94()
{
  v1 = v0[24];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  sub_29EAAD010(v0[21], v0[22]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EAB2E20(char *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *a1;
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAB73B4;

  return sub_29EAB3214(v8, v4, v5, v6, v7);
}

uint64_t sub_29EAB2EF8(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 40) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAB2F1C, 0, 0);
}

uint64_t sub_29EAB2F1C()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      goto LABEL_12;
    }

    v2 = "exportSerializedData";
  }

  else
  {
    if (!*(v0 + 40))
    {
      goto LABEL_12;
    }

    v2 = "exportResources";
    if (v1 == 1)
    {
      goto LABEL_12;
    }
  }

  if (0x800000029EB1AE80 == (v2 | 0x8000000000000000))
  {

    goto LABEL_13;
  }

LABEL_12:
  v3 = sub_29EB14EBC();

  if ((v3 & 1) == 0)
  {
    return sub_29EB14D2C();
  }

LABEL_13:
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_29EAB3120;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_29EAB0D2C(v5);
}

uint64_t sub_29EAB3120()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EAB3214(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = a1;
  return MEMORY[0x2A1C73D48](sub_29EAB323C, 0, 0);
}

uint64_t sub_29EAB323C()
{
  v1 = *(v0 + 56);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      goto LABEL_12;
    }

    v2 = "exportSerializedData";
  }

  else
  {
    if (!*(v0 + 56))
    {
      goto LABEL_12;
    }

    v2 = "exportResources";
    if (v1 == 1)
    {
      goto LABEL_12;
    }
  }

  if (0x800000029EB1AE80 == (v2 | 0x8000000000000000))
  {

    goto LABEL_13;
  }

LABEL_12:
  v3 = sub_29EB14EBC();

  if ((v3 & 1) == 0)
  {
    return sub_29EB14D2C();
  }

LABEL_13:
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_29EAB3444;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_29EAB165C(v8, v7, v5, v6);
}

uint64_t sub_29EAB3444()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _t_ExportSerializedDataInjectionMessage.perform(operation:options:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 56) = *a1;
  return MEMORY[0x2A1C73D48](sub_29EAB3564, 0, 0);
}

uint64_t sub_29EAB3564()
{
  v1 = *(v0 + 56);
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      goto LABEL_12;
    }

    v2 = "exportSerializedData";
  }

  else
  {
    if (!*(v0 + 56))
    {
      goto LABEL_12;
    }

    v2 = "exportResources";
    if (v1 == 1)
    {
      goto LABEL_12;
    }
  }

  if (0x800000029EB1AE80 == (v2 | 0x8000000000000000))
  {

    goto LABEL_13;
  }

LABEL_12:
  v3 = sub_29EB14EBC();

  if ((v3 & 1) == 0)
  {
    return sub_29EB14D2C();
  }

LABEL_13:
  v11 = (*(v0 + 32) + 16);
  v12 = (*v11 + **v11);
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_29EAB73B8;
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return v12(v9, v8, v6);
}

double sub_29EAB37CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *&result = 100;
  *a3 = xmmword_29EB16E60;
  *(a3 + 16) = 50;
  return result;
}

uint64_t _t_StreamRepeated.json.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _t_StreamRepeated.data.getter()
{
  v1 = *(v0 + 32);
  sub_29EAB6204(v1, *(v0 + 40));
  return v1;
}

uint64_t _t_StreamRepeated.generate(index:)(uint64_t a1)
{
  v3 = sub_29EB146EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8]();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v1[3])
  {
    goto LABEL_6;
  }

  v33 = *v1;
  v8 = v1[2];
  v38 = xmmword_29EB16E70;
  if (!a1)
  {
    sub_29EB146DC();
    v9 = sub_29EB146BC();
    v11 = v14;
    v1 = v3;
    result = (*(v4 + 8))(v7, v3);
    if (v11 >> 60 == 15)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    goto LABEL_9;
  }

  if (a1 < 1)
  {
    v1 = v3;
LABEL_12:
    sub_29EB146DC();
    v19 = sub_29EB146BC();
    v21 = v20;
    v22 = *(v4 + 8);
    result = v22(v7, v1);
    if (v21 >> 60 != 15)
    {
      v36 = MEMORY[0x29EDB9B70];
      v37 = MEMORY[0x29EDB9B68];
      v34 = v19;
      v35 = v21;
      v23 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x29EDB9B70]);
      v24 = *v23;
      v25 = v23[1];
      sub_29EAB0308(v19, v21);
      sub_29EAB5C3C(v24, v25);
      sub_29EAB6218(v19, v21);
      result = __swift_destroy_boxed_opaque_existential_1(&v34);
      if (!__OFSUB__(v33, 1))
      {
        if (v33 - 1 != a1)
        {
          return v38;
        }

        sub_29EB146DC();
        v26 = sub_29EB146BC();
        v28 = v27;
        result = v22(v7, v1);
        if (v28 >> 60 != 15)
        {
          v36 = MEMORY[0x29EDB9B70];
          v37 = MEMORY[0x29EDB9B68];
          v34 = v26;
          v35 = v28;
          v29 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x29EDB9B70]);
          v30 = *v29;
          v31 = v29[1];
          sub_29EAB0308(v26, v28);
          sub_29EAB5C3C(v30, v31);
          sub_29EAB6218(v26, v28);
          __swift_destroy_boxed_opaque_existential_1(&v34);
          return v38;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_29EB146DC();
  v9 = sub_29EB146BC();
  v11 = v10;
  v1 = v3;
  (*(v4 + 8))(v7, v3);
  if (v11 >> 60 != 15)
  {
LABEL_9:
    v36 = MEMORY[0x29EDB9B70];
    v37 = MEMORY[0x29EDB9B68];
    v34 = v9;
    v35 = v11;
    v15 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x29EDB9B70]);
    v16 = *v15;
    v17 = v15[1];
    sub_29EAB0308(v9, v11);
    sub_29EAB5C3C(v16, v17);
    sub_29EAB6218(v9, v11);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    goto LABEL_12;
  }

  __break(1u);
LABEL_6:
  v12 = v1[5];
  if (v12 >> 60 == 15)
  {
    return 0;
  }

  v18 = v1[4];
  sub_29EAB0308(v18, v12);
  return v18;
}

double static _t_StreamRepeated.example.getter@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _t_StreamRepeated;
  a1[4] = sub_29EAB622C();
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 16) = xmmword_29EB16E80;
  *(v2 + 32) = 0xD000000000000076;
  *(v2 + 40) = 0x800000029EB1B7B0;
  result = 0.0;
  *(v2 + 48) = xmmword_29EB16E90;
  return result;
}

double _t_StreamRepeated.init(count:delay:json:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = xmmword_29EB16E90;
  return result;
}

uint64_t _t_StreamRepeated.init(count:delay:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[4] = a3;
  a5[5] = a4;
  a5[2] = 0;
  a5[3] = 0;
  return result;
}

uint64_t _t_StreamRepeated.init(count:delay:element:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*(sub_29EB146EC() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v9 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v10 = sub_29EB1408C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_29EB1407C();
  v13 = sub_29EB1406C();
  v15 = v14;

  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(a3);
  }

  sub_29EB146DC();
  v16 = sub_29EB146CC();
  v18 = v17;
  result = sub_29EAAD010(v13, v15);
  if (v18)
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v16;
    *(a4 + 24) = v18;
    *(a4 + 32) = xmmword_29EB16E90;
    return __swift_destroy_boxed_opaque_existential_1(a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAB3E28()
{
  v1 = 0x746E756F63;
  v2 = 1852797802;
  if (*v0 != 2)
  {
    v2 = 1635017060;
  }

  if (*v0)
  {
    v1 = 0x79616C6564;
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

uint64_t sub_29EAB3E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EAB6E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EAB3EC0(uint64_t a1)
{
  v2 = sub_29EAB62D0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAB3EFC(uint64_t a1)
{
  v2 = sub_29EAB62D0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_StreamRepeated.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A698, &qword_29EB16EC8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v19 = v1[2];
  v20 = v8;
  v11 = v1[5];
  v17 = v1[4];
  v18 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAB62D0();
  sub_29EB14FFC();
  LOBYTE(v22) = 0;
  v13 = v21;
  sub_29EB14E5C();
  if (!v13)
  {
    v14 = v17;
    LOBYTE(v22) = 1;
    sub_29EB14E5C();
    LOBYTE(v22) = 2;
    sub_29EB14E1C();
    v22 = v14;
    v23 = v11;
    v24 = 3;
    sub_29EAB6204(v14, v11);
    sub_29EAB6324();
    sub_29EB14E2C();
    sub_29EAB6218(v22, v23);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t _t_StreamRepeated.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A6B0, &qword_29EB16ED0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAB62D0();
  sub_29EB14FEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_29EB14DEC();
  LOBYTE(v22) = 1;
  v21 = sub_29EB14DEC();
  LOBYTE(v22) = 2;
  v12 = sub_29EB14DAC();
  v14 = v13;
  v20 = v12;
  v24 = 3;
  sub_29EAB6378();
  sub_29EB14DBC();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  v16 = v23;
  v17 = v20;
  v18 = v21;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;

  sub_29EAB6204(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_29EAB6218(v15, v16);
}

uint64_t sub_29EAB43C8(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_29EAB73BC;

  return (sub_29EAB0D2C)(a1);
}

uint64_t sub_29EAB4488(char *a1, uint64_t *a2)
{
  v4 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v4;
  v5 = *a2;
  *(v3 + 48) = v2[2];
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_29EAB4558;

  return sub_29EAB2EF8(v6, v5);
}

uint64_t sub_29EAB4558()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_29EAB464C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v4 = swift_allocObject();
  *a3 = v4;
  *(v4 + 16) = xmmword_29EB16E80;
  *(v4 + 32) = 0xD000000000000076;
  *(v4 + 40) = 0x800000029EB1B7B0;
  result = 0.0;
  *(v4 + 48) = xmmword_29EB16E90;
  return result;
}

uint64_t sub_29EAB46EC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[3] = a2;
  v3[4] = a1;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAB4714, v2, 0);
}

uint64_t sub_29EAB4714()
{
  v1 = sub_29EB1493C();
  v9 = *(v0 + 40);
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    goto LABEL_12;
  }

  v12 = *(*(v0 + 32) + 16);
  v13 = *(*(v0 + 32) + 24);
  v14 = __OFSUB__(v13, v12);
  v11 = v13 - v12;
  if (v14)
  {
    __break(1u);
LABEL_8:
    v15 = *(v0 + 32);
    v16 = *(v0 + 36);
    v14 = __OFSUB__(v16, v15);
    LODWORD(v11) = v16 - v15;
    if (v14)
    {
      __break(1u);
      return MEMORY[0x2A1C73C78](v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v11 = v11;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_12:
  v11 = 0;
LABEL_13:
  *(v0 + 56) = v11;
  v17 = *(v0 + 48);
  v18 = swift_task_alloc();
  *(v0 + 64) = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v0 + 16;
  v19 = sub_29EAB726C(&qword_2A187A730, type metadata accessor for SerializedDataExportStream);
  v20 = *(MEMORY[0x29EDCA470] + 4);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_29EAB48E4;
  v5 = *(v0 + 48);
  v2 = &unk_29EB17430;
  v4 = sub_29EAB7084;
  v8 = MEMORY[0x29EDCA180] + 8;
  v3 = v18;
  v6 = v17;
  v7 = v19;

  return MEMORY[0x2A1C73C78](v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_29EAB48E4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_29EAB4AC0;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 48);

    v5 = sub_29EAB4A0C;
    v4 = v7;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

void sub_29EAB4A0C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v1 + 152);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v1 + 152) = v5;
  v6 = *(v1 + 144);
  if (v6)
  {
    v7 = v0[7];
    v8 = v6;
    v9 = [v8 completedUnitCount];
    if (!__OFADD__(v9, v7))
    {
      [v8 setCompletedUnitCount_];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
  v10 = v0[1];

  v10();
}

uint64_t sub_29EAB4AC0()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EAB4B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  return MEMORY[0x2A1C73D48](sub_29EAB4B44, a2, 0);
}

uint64_t sub_29EAB4B44()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v1[14];
  v0[12] = v3;
  v4 = v0[11];
  if (v3)
  {
    v5 = v1[16];
    v0[13] = v5;
    v0[14] = v1[15];
    v0[7] = v2;
    v0[8] = v4;

    v6 = v5;
    v7 = sub_29EAB4C28;
  }

  else
  {
    v0[18] = v1[17];
    v0[5] = MEMORY[0x29EDB9B70];
    v0[6] = sub_29EAB708C();
    v0[2] = v2;
    v0[3] = v4;
    sub_29EAB0308(v2, v4);
    v7 = sub_29EAB4FC4;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EAB4C28()
{
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  v3 = *(v0 + 104);
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  *(v2 + 40) = v0 + 56;
  v4 = *(MEMORY[0x29EDCA478] + 4);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_29EAB4D30;

  return MEMORY[0x2A1C73C80]();
}

uint64_t sub_29EAB4D30()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_29EAB4EE0;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_29EAB4E4C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAB4E68()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EAB4EE0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);

  return MEMORY[0x2A1C73D48](sub_29EAB4F4C, v2, 0);
}

uint64_t sub_29EAB4F4C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = *(v0 + 136);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EAB4FC4()
{
  v1 = v0[18];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x29EDCA478] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_29EAB50BC;

  return MEMORY[0x2A1C73C80]();
}

uint64_t sub_29EAB50BC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_29EAB523C;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_29EAB51D8;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAB51D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAB523C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);

  return MEMORY[0x2A1C73D48](sub_29EAB52A8, v2, 0);
}

uint64_t sub_29EAB52A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[21];
  v2 = v0[1];

  return v2();
}

uint64_t sub_29EAB530C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v29 = a6;
  v32 = sub_29EB145AC();
  v35 = *(v32 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8]();
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29EB145CC();
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8]();
  v30 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8]();
  v20 = &v29 - v19;
  (*(v17 + 16))(&v29 - v19, a1, v16);
  v21 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  *(v22 + 4) = a4;
  *(v22 + 5) = a5;
  v23 = v29;
  *(v22 + 6) = v29;
  (*(v17 + 32))(&v22[v21], v20, v16);
  aBlock[4] = sub_29EAB71E0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_2;
  v24 = _Block_copy(aBlock);

  a4;
  sub_29EAB0308(a5, v23);
  v25 = v30;
  sub_29EB145BC();
  v36 = MEMORY[0x29EDCA190];
  sub_29EAB726C(&qword_2A187A630, MEMORY[0x29EDCA248]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8C0, &unk_29EB16D10);
  sub_29EAB72B4(&qword_2A187A638, &unk_2A187A8C0, &unk_29EB16D10);
  v27 = v31;
  v26 = v32;
  sub_29EB14BDC();
  MEMORY[0x29EDA7130](0, v25, v27, v24);
  _Block_release(v24);
  (*(v35 + 8))(v27, v26);
  (*(v33 + 8))(v25, v34);
}

uint64_t sub_29EAB56F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_29EB14CFC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2A1C73D48](sub_29EAB57F0, 0, 0);
}

uint64_t sub_29EAB57F0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_29EB14D0C();
  v7 = sub_29EAB726C(&qword_2A187A680, MEMORY[0x29EDCA440]);
  sub_29EB14F0C();
  sub_29EAB726C(&qword_2A187A688, MEMORY[0x29EDCA430]);
  sub_29EB14D1C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x29EDCA480] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_29EAB5980;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2A1C73C90](v11, v0 + 2, v6, v7);
}

uint64_t sub_29EAB5980()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAB5B3C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_29EAB5B3C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

_BYTE *sub_29EAB5BA8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_29EAB5EBC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_29EAB5F74(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_29EAB5FF0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_29EAB5C3C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_29EB1428C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_29EAB5D74(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EAB5D74(uint64_t a1, uint64_t a2)
{
  result = sub_29EB140BC();
  if (!result || (result = sub_29EB140DC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_29EB140CC();
      return sub_29EB1428C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29EAB5E08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_29EAB73B4;

  return sub_29EAB4B24(a1, a2, v6, v7);
}

uint64_t sub_29EAB5EBC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EAB5F74(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_29EB1410C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_29EB140AC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29EB1426C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_29EAB5FF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_29EB1410C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_29EB140AC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void _s15AppMigrationKit19_t_StreamRandomDataV8generate5index10Foundation0F0VSi_tF_0()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = MEMORY[0x29EDCA190];
    if (v1)
    {
      v7 = MEMORY[0x29EDCA190];
      sub_29EB00B4C(0, v1, 0);
      v2 = v7;
      do
      {
        v6 = 0;
        MEMORY[0x29EDA8160](&v6, 8);
        v3 = v6;
        v7 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_29EB00B4C((v4 > 1), v5 + 1, 1);
          v2 = v7;
        }

        *(v2 + 16) = v5 + 1;
        *(v2 + v5 + 32) = v3;
        --v1;
      }

      while (v1);
    }

    sub_29EAEF4E8(v2);
  }
}

unint64_t sub_29EAB615C()
{
  result = qword_2A187A660;
  if (!qword_2A187A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A660);
  }

  return result;
}

unint64_t sub_29EAB61B0()
{
  result = qword_2A187A670;
  if (!qword_2A187A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A670);
  }

  return result;
}

uint64_t sub_29EAB6204(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EAB0308(a1, a2);
  }

  return a1;
}

uint64_t sub_29EAB6218(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EAAD010(a1, a2);
  }

  return a1;
}

unint64_t sub_29EAB622C()
{
  result = qword_2A187A690;
  if (!qword_2A187A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A690);
  }

  return result;
}

uint64_t sub_29EAB6280()
{
  v1 = v0[5];

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    sub_29EAAD010(v0[6], v2);
  }

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

unint64_t sub_29EAB62D0()
{
  result = qword_2A187A6A0;
  if (!qword_2A187A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6A0);
  }

  return result;
}

unint64_t sub_29EAB6324()
{
  result = qword_2A187A6A8;
  if (!qword_2A187A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6A8);
  }

  return result;
}

unint64_t sub_29EAB6378()
{
  result = qword_2A187A6B8;
  if (!qword_2A187A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6B8);
  }

  return result;
}

unint64_t sub_29EAB63CC(uint64_t a1)
{
  result = sub_29EAB63F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAB63F4()
{
  result = qword_2A187A6C0;
  if (!qword_2A187A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6C0);
  }

  return result;
}

unint64_t sub_29EAB6448(uint64_t a1)
{
  result = sub_29EAB615C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAB649C()
{
  result = qword_2A187A6C8;
  if (!qword_2A187A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6C8);
  }

  return result;
}

unint64_t sub_29EAB64F0()
{
  result = qword_2A187A6D0;
  if (!qword_2A187A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6D0);
  }

  return result;
}

unint64_t sub_29EAB6544(uint64_t a1)
{
  result = sub_29EAB656C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAB656C()
{
  result = qword_2A187A6D8;
  if (!qword_2A187A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6D8);
  }

  return result;
}

unint64_t sub_29EAB65C0(uint64_t a1)
{
  result = sub_29EAB622C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29EAB6614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29EAB6650()
{
  result = qword_2A187A6E0;
  if (!qword_2A187A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6E0);
  }

  return result;
}

unint64_t sub_29EAB66A4()
{
  result = qword_2A187A6E8;
  if (!qword_2A187A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6E8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _t_StreamRandomData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _t_StreamRandomData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29EAB67C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29EAB681C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of _t_ExportSerializedDataInjectionMessage.perform(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAB73B4;

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for _t_StreamRepeated.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _t_StreamRepeated.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29EAB6B54()
{
  result = qword_2A187A6F0;
  if (!qword_2A187A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6F0);
  }

  return result;
}

unint64_t sub_29EAB6BAC()
{
  result = qword_2A187A6F8;
  if (!qword_2A187A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A6F8);
  }

  return result;
}

unint64_t sub_29EAB6C04()
{
  result = qword_2A187A700;
  if (!qword_2A187A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A700);
  }

  return result;
}

unint64_t sub_29EAB6C5C()
{
  result = qword_2A187A708;
  if (!qword_2A187A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A708);
  }

  return result;
}

unint64_t sub_29EAB6CB4()
{
  result = qword_2A187A710;
  if (!qword_2A187A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A710);
  }

  return result;
}

unint64_t sub_29EAB6D0C()
{
  result = qword_2A187A718;
  if (!qword_2A187A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A718);
  }

  return result;
}

uint64_t sub_29EAB6D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29EB14EBC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29EAB6E70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852797802 && a2 == 0xE400000000000000 || (sub_29EB14EBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_29EB14EBC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29EAB6FCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EAAAE5C;

  return sub_29EAB5E08(a1, v5, v4);
}

unint64_t sub_29EAB708C()
{
  result = qword_2A187A738;
  if (!qword_2A187A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A738);
  }

  return result;
}

uint64_t sub_29EAB70F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  sub_29EAAD010(*(v0 + 40), *(v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EAB71E0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8) + 80);
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];

  return sub_29EAB72FC(v2, v3, v4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EAB726C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EAB72B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29EAB72FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_29EAB0308(a2, a3);
  sub_29EAB708C();
  sub_29EB1433C();
  sub_29EAB6218(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  return sub_29EB148CC();
}

__n128 SerializedDataMetrics.deviceToDeviceTransferMetrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u8[0] = v4;
  a1[2].n128_u64[1] = v5;
  return result;
}

__n128 SerializedDataMetrics.XPCHelper.serializedDataMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics;
  v3 = *(v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics + 24);
  v4 = *(v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics + 32);
  v5 = *(v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics + 40);
  v6 = *(v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics + 48);
  *a1 = *(v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics);
  result = *(v2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return result;
}

void sub_29EAB7460(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics;
  if (*(v1 + OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_29EB1467C();
  }

  v5 = sub_29EB1467C();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics];
  *v14 = v6;
  *(v14 + 1) = v7;
  v14[16] = v8;
  *(v14 + 3) = v9;
  v14[32] = v10;
  *(v14 + 5) = v11;
  v17.receiver = v13;
  v17.super_class = v12;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  v16 = sub_29EB1467C();
  [a1 encodeObject:v15 forKey:v16];
}

id SerializedDataMetrics.XPCHelper.init(coder:)(void *a1)
{
  v2 = v1;
  sub_29EAB77D4();
  v4 = sub_29EB14B3C();
  if (v4)
  {
    v5 = v4;
    sub_29EB146AC();
    v6 = sub_29EB14D8C();

    v7 = v6 != 0;
  }

  else
  {
    v7 = 1;
  }

  type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
  v8 = sub_29EB14B3C();
  if (v8)
  {
    v9 = v8[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 16];
    v10 = *&v8[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 24];
    v11 = v8[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 32];
    v12 = *&v8[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 40];
    v16 = *&v8[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics];

    v13 = &v2[OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics];
    *v13 = v7;
    *(v13 + 8) = v16;
    v13[24] = v9;
    *(v13 + 4) = v10;
    v13[40] = v11;
    *(v13 + 6) = v12;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for SerializedDataMetrics.XPCHelper();
    v14 = objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {

    type metadata accessor for SerializedDataMetrics.XPCHelper();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

unint64_t sub_29EAB77D4()
{
  result = qword_2A187B080;
  if (!qword_2A187B080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A187B080);
  }

  return result;
}

id SerializedDataMetrics.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SerializedDataMetrics.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SerializedDataMetrics.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EAB7934(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29EAB7988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_29EAB7A48()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187A7B0);
  __swift_project_value_buffer(v0, qword_2A187A7B0);
  return sub_29EB1453C();
}

uint64_t sub_29EAB7ACC@<X0>(__int128 *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_29EB1422C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v73 - v12;
  v14 = a1[5];
  v96 = a1[4];
  v97 = v14;
  v15 = a1[7];
  v98 = a1[6];
  v99 = v15;
  v16 = a1[1];
  v92 = *a1;
  v93 = v16;
  v17 = a1[3];
  v94 = a1[2];
  v95 = v17;
  v18 = sub_29EB1443C();
  if (!v18)
  {
    if (qword_2A187A300 == -1)
    {
LABEL_10:
      v31 = sub_29EB1454C();
      __swift_project_value_buffer(v31, qword_2A187A7B0);

      v32 = sub_29EB1452C();
      v33 = sub_29EB14A5C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v86 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_29EABC674(*(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v86);
        _os_log_impl(&dword_29EAA5000, v32, v33, "Unable get containing application for %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x29EDA8150](v35, -1, -1);
        MEMORY[0x29EDA8150](v34, -1, -1);
      }

      goto LABEL_39;
    }

LABEL_43:
    swift_once();
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v18 URL];

  sub_29EB141DC();
  (*(v7 + 32))(v13, v11, v6);
  v21 = objc_allocWithZone(MEMORY[0x29EDB9F48]);
  v22 = sub_29EB141BC();
  v23 = [v21 initWithURL_];

  if (!v23)
  {
    if (qword_2A187A300 != -1)
    {
      swift_once();
    }

    v46 = sub_29EB1454C();
    __swift_project_value_buffer(v46, qword_2A187A7B0);

    v47 = sub_29EB1452C();
    v48 = sub_29EB14A5C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v86 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_29EABC674(*(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v86);
      _os_log_impl(&dword_29EAA5000, v47, v48, "Unable get bundle for containing application for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x29EDA8150](v50, -1, -1);
      MEMORY[0x29EDA8150](v49, -1, -1);
    }

    goto LABEL_38;
  }

  v81 = v23;
  v24 = [v23 infoDictionary];
  if (!v24)
  {
    if (qword_2A187A300 != -1)
    {
      swift_once();
    }

    v57 = sub_29EB1454C();
    __swift_project_value_buffer(v57, qword_2A187A7B0);

    v52 = sub_29EB1452C();
    v53 = sub_29EB14A5C();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_37;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v86 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_29EABC674(*(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v86);
    v56 = "Unable get bundle info dictionary for containing application for %s";
    goto LABEL_36;
  }

  v74 = a2;
  v25 = v24;
  v26 = sub_29EB1462C();

  if (!*(v26 + 16) || (v27 = sub_29EABC4C0(0xD00000000000001BLL, 0x800000029EB1B930), (v28 & 1) == 0))
  {

    goto LABEL_28;
  }

  sub_29EAAB1A8(*(v26 + 56) + 32 * v27, &v86);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A7C8, &unk_29EB174C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    a2 = v74;
    if (qword_2A187A300 != -1)
    {
      swift_once();
    }

    v51 = sub_29EB1454C();
    __swift_project_value_buffer(v51, qword_2A187A7B0);

    v52 = sub_29EB1452C();
    v53 = sub_29EB14A5C();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_37;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v86 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_29EABC674(*(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v3 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v86);
    v56 = "Unable to parse app identifiers off of %s";
LABEL_36:
    _os_log_impl(&dword_29EAA5000, v52, v53, v56, v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x29EDA8150](v55, -1, -1);
    MEMORY[0x29EDA8150](v54, -1, -1);
LABEL_37:

LABEL_38:
    (*(v7 + 8))(v13, v6);
LABEL_39:
    v58 = v97;
    *(a2 + 64) = v96;
    *(a2 + 80) = v58;
    v59 = v99;
    *(a2 + 96) = v98;
    *(a2 + 112) = v59;
    v60 = v93;
    *a2 = v92;
    *(a2 + 16) = v60;
    v61 = v95;
    *(a2 + 32) = v94;
    *(a2 + 48) = v61;
    return sub_29EAB83AC(&v92, &v86);
  }

  v29 = v85;
  v82 = *(v85 + 16);
  if (v82)
  {
    a2 = 0;
    v30 = 0;
    v77 = v85 + 32;
    v83 = MEMORY[0x29EDCA190];
    v75 = v6;
    v76 = v7;
    v79 = v3;
    v80 = v13;
    v78 = v85;
    while (a2 < *(v29 + 16))
    {
      v85 = *(v77 + 8 * a2);

      sub_29EAB8408(&v85, v3, &v86);
      v84 = v30;

      v37 = v86;
      v36 = v87;
      v39 = v88;
      v38 = v89;
      v41 = v90;
      v40 = v91;
      if (v87)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_29EAAD1E0(0, *(v83 + 2) + 1, 1, v83);
        }

        v43 = *(v83 + 2);
        v42 = *(v83 + 3);
        if (v43 >= v42 >> 1)
        {
          v83 = sub_29EAAD1E0((v42 > 1), v43 + 1, 1, v83);
        }

        v44 = v83;
        *(v83 + 2) = v43 + 1;
        v45 = &v44[48 * v43];
        *(v45 + 4) = v37;
        *(v45 + 5) = v36;
        *(v45 + 6) = v39;
        *(v45 + 7) = v38;
        *(v45 + 8) = v41;
        *(v45 + 9) = v40;
        v6 = v75;
        v7 = v76;
      }

      else
      {
        sub_29EAB8920(v86, 0);
      }

      ++a2;
      v3 = v79;
      v13 = v80;
      v29 = v78;
      v30 = v84;
      if (v82 == a2)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v83 = MEMORY[0x29EDCA190];
LABEL_41:

  (*(v7 + 8))(v13, v6);
  v64 = *(&v92 + 1);
  v63 = v92;
  v65 = v93;
  v66 = v94;
  v67 = v95;
  v68 = v96;
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v72 = v74;
  *v74 = v92;
  v72[1] = v64;
  *(v72 + 1) = v65;
  *(v72 + 2) = v66;
  *(v72 + 3) = v67;
  *(v72 + 4) = v68;
  *(v72 + 5) = v69;
  *(v72 + 6) = v70;
  *(v72 + 112) = v71;
  v72[15] = v83;
  sub_29EAA8ECC(v63, v64, v65, *(&v65 + 1), v66);
  return sub_29EAA8ECC(*(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1));
}

void sub_29EAB8408(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (!*(*a1 + 16) || (v6 = sub_29EABC4C0(0xD000000000000012, 0x800000029EB1B950), (v7 & 1) == 0))
  {
    if (qword_2A187A300 != -1)
    {
      swift_once();
    }

    v21 = sub_29EB1454C();
    __swift_project_value_buffer(v21, qword_2A187A7B0);

    v22 = sub_29EB1452C();
    v23 = sub_29EB14A4C();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_23;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315394;
    v26 = sub_29EB1463C();
    v28 = sub_29EABC674(v26, v27, &v38);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_29EABC674(*(a2 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(a2 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v38);
    v29 = "No store found for %s in %s";
    goto LABEL_22;
  }

  if (!*(v5 + 16))
  {
LABEL_13:
    if (qword_2A187A300 != -1)
    {
      swift_once();
    }

    v30 = sub_29EB1454C();
    __swift_project_value_buffer(v30, qword_2A187A7B0);

    v22 = sub_29EB1452C();
    v23 = sub_29EB14A4C();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_23;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315394;
    v31 = sub_29EB1463C();
    v33 = sub_29EABC674(v31, v32, &v38);

    *(v24 + 4) = v33;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_29EABC674(*(a2 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(a2 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v38);
    v29 = "No bundleID found for %s in %s";
    goto LABEL_22;
  }

  v8 = (*(v5 + 56) + 16 * v6);
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_29EABC4C0(0xD000000000000010, 0x800000029EB1B970);
  if ((v12 & 1) == 0)
  {

    goto LABEL_13;
  }

  if (*(v5 + 16))
  {
    v13 = (*(v5 + 56) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];

    v16 = sub_29EABC4C0(0x6674616C504B4D41, 0xEB000000006D726FLL);
    if (v17)
    {
      v18 = (*(v5 + 56) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      *a3 = v10;
      a3[1] = v9;
      a3[2] = v15;
      a3[3] = v14;
      a3[4] = v20;
      a3[5] = v19;

      return;
    }
  }

  if (qword_2A187A300 != -1)
  {
    swift_once();
  }

  v34 = sub_29EB1454C();
  __swift_project_value_buffer(v34, qword_2A187A7B0);

  v22 = sub_29EB1452C();
  v23 = sub_29EB14A4C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136315394;
    v35 = sub_29EB1463C();
    v37 = sub_29EABC674(v35, v36, &v38);

    *(v24 + 4) = v37;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_29EABC674(*(a2 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(a2 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v38);
    v29 = "No platform found for %s in %s";
LABEL_22:
    _os_log_impl(&dword_29EAA5000, v22, v23, v29, v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v25, -1, -1);
    MEMORY[0x29EDA8150](v24, -1, -1);
  }

LABEL_23:

  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  *a3 = 0u;
}

uint64_t sub_29EAB8920(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29EAB898C()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187A7D0);
  __swift_project_value_buffer(v0, qword_2A187A7D0);
  type metadata accessor for ExtensionController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8B0, &unk_29EB17650);
  sub_29EB146FC();
  return sub_29EB1453C();
}

uint64_t ExtensionController.deinit()
{
  v1 = v0;
  v2 = sub_29EB143EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A187A2E0 != -1)
  {
    swift_once();
  }

  v7 = sub_29EB1454C();
  __swift_project_value_buffer(v7, qword_2A1881290);

  v8 = sub_29EB1452C();
  v9 = sub_29EB14A4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EABC674(*(v1 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID), *(v1 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8), &v22);
    *(v10 + 12) = 2080;
    v21 = v1;
    v12 = sub_29EB146FC();
    v14 = sub_29EABC674(v12, v13, &v22);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_29EAA5000, v8, v9, "Releasing extension controller %s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v11, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v15 = OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_process;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_process, v2);
  sub_29EB1439C();
  v16 = *(v3 + 8);
  v16(v6, v2);
  [*(v1 + 16) invalidate];

  v16((v1 + v15), v2);
  v17 = *(v1 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID + 8);

  v18 = OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_identity;
  v19 = sub_29EB1446C();
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  return v1;
}

uint64_t ExtensionController.__deallocating_deinit()
{
  ExtensionController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

uint64_t ExtensionController.__allocating_init(identity:)(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EABD838;

  return ExtensionController.init(identity:)(a1);
}

uint64_t ExtensionController.init(identity:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_29EB14CFC();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_29EB14D0C();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = sub_29EB143EC();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A7E8, &unk_29EB174E0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v13 = sub_29EB1446C();
  v2[23] = v13;
  v14 = *(v13 - 8);
  v2[24] = v14;
  v15 = *(v14 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v16 = sub_29EB143BC();
  v2[27] = v16;
  v17 = *(v16 - 8);
  v2[28] = v17;
  v18 = *(v17 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EAB90BC, 0, 0);
}

uint64_t sub_29EAB90BC()
{
  v1 = v0[30];
  v20 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[17];
  v7 = v0[18];
  v9 = v0[8];
  v8 = v0[9];
  v10 = OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_identity;
  v0[31] = OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_identity;
  v11 = *(v4 + 16);
  v0[32] = v11;
  v0[33] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v8 + v10, v9, v3);
  v11(v2, v9, v3);
  sub_29EB143AC();
  v12 = *(v7 + 56);
  v0[34] = v12;
  v0[35] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v5, 1, 1, v6);
  v13 = *(v20 + 16);
  v0[37] = 0;
  v0[38] = 1;
  v0[36] = v13;
  v14 = v0[28] + 16;
  v13(v0[29], v0[30], v0[27]);
  v15 = *(MEMORY[0x29EDB9828] + 4);
  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  v16[1] = sub_29EAB9260;
  v17 = v0[29];
  v18 = v0[20];

  return MEMORY[0x2A1C5A170](v18, v17);
}

uint64_t sub_29EAB9260()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_29EAB9BB4;
  }

  else
  {
    v3 = sub_29EAB9374;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EAB9374()
{
  v113 = v0;
  v2 = (v0 + 136);
  v1 = *(v0 + 136);
  v3 = *(v0 + 304);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  sub_29EABCCEC(v6, &qword_2A187A7E8, &unk_29EB174E0);
  v5(v7, 0, 1, v1);
  sub_29EABCD4C(v7, v6);
  if (v3 == 5)
  {
    v8 = *(v0 + 168);
    v9 = *(v0 + 136);
    v10 = *(v0 + 144);
    sub_29EABD778(*(v0 + 176), v8, &qword_2A187A7E8, &unk_29EB174E0);
    v11 = (*(v10 + 48))(v8, 1, v9);
    v12 = *(v0 + 168);
    if (v11 == 1)
    {
      v13 = *(v0 + 296);
      sub_29EABCCEC(*(v0 + 168), &qword_2A187A7E8, &unk_29EB174E0);
      if (v13)
      {
        v14 = *(v0 + 296);
      }

      else
      {
        v32 = *(v0 + 64);
        sub_29EB14C2C();

        v112[0] = 0xD000000000000017;
        v112[1] = 0x800000029EB1B990;
        v33 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
        MEMORY[0x29EDA6DF0](v33);

        sub_29EABCDBC();
        swift_allocError();
        *v34 = 0xD000000000000017;
        v34[1] = 0x800000029EB1B990;
        v34[2] = 0;
      }

      v35 = *(v0 + 192);
      swift_willThrow();
      v30 = *(v35 + 8);
      v2 = (v0 + 184);
      v23 = (v0 + 64);
      v36 = *(v0 + 192) + 8;
      v96 = v30;
      goto LABEL_13;
    }

    v23 = (v0 + 152);
    v24 = *(v0 + 320);
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    v25 = sub_29EB143DC();
    if (v24)
    {
      v26 = *(v0 + 184);
      v27 = *(v0 + 192);
      v28 = *(v0 + 144);
      v29 = *(v0 + 64);

      v96 = *(v27 + 8);
      v96(v29, v26);
      v30 = *(v28 + 8);
      v31 = *(v0 + 192) + 8;
LABEL_13:
      v37 = *v23;
      v38 = *v2;
      v40 = *(v0 + 240);
      v39 = *(v0 + 248);
      v41 = *(v0 + 224);
      v42 = *(v0 + 216);
      v91 = *(v0 + 232);
      v92 = *(v0 + 208);
      v94 = *(v0 + 200);
      v44 = *(v0 + 176);
      v43 = *(v0 + 184);
      v98 = *(v0 + 168);
      v100 = *(v0 + 160);
      v102 = *(v0 + 152);
      v104 = *(v0 + 128);
      v106 = *(v0 + 104);
      v108 = *(v0 + 96);
      v45 = *(v0 + 72);
      v30(v37, v38);
      sub_29EABCCEC(v44, &qword_2A187A7E8, &unk_29EB174E0);
      (*(v41 + 8))(v40, v42);
      v96(v45 + v39, v43);
      type metadata accessor for ExtensionController();
      v46 = *(*v45 + 48);
      v47 = *(*v45 + 52);
      swift_deallocPartialClassInstance();

      v48 = *(v0 + 8);

      return v48();
    }

    v49 = v25;
    v51 = *(v0 + 144);
    v50 = *(v0 + 152);
    v52 = *(v0 + 136);
    v53 = *(v0 + 64);
    v54 = *(v0 + 72);
    v55 = [objc_opt_self() interfaceWithProtocol_];
    [v49 setRemoteObjectInterface_];

    [v49 resume];
    *(v54 + 16) = v49;
    (*(v51 + 16))(v54 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_process, v50, v52);
    v3 = v49;
    v56 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
    v4 = &unk_2A1881000;
    v57 = (v54 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_bundleID);
    *v57 = v56;
    v57[1] = v58;
    if (qword_2A187A308 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v15 = *(v0 + 304);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_17:
    v59 = *(v0 + 72);
    v60 = sub_29EB1454C();
    __swift_project_value_buffer(v60, qword_2A187A7D0);

    v61 = sub_29EB1452C();
    v62 = sub_29EB14A4C();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 224);
    v109 = *(v0 + 216);
    v110 = *(v0 + 240);
    v65 = *(v0 + 192);
    v99 = *(v0 + 296);
    v101 = *(v0 + 184);
    v66 = *(v0 + 144);
    v105 = *(v0 + 152);
    v107 = *(v0 + 176);
    v103 = *(v0 + 136);
    if (v63)
    {
      v93 = v3;
      v67 = *(v0 + 72);
      v95 = *(v0 + 64);
      v68 = swift_slowAlloc();
      v97 = v64;
      v69 = swift_slowAlloc();
      v112[0] = v69;
      *v68 = 136315394;
      v70 = (v67 + v4[87]);
      v71 = *v70;
      v72 = v70[1];

      v73 = sub_29EABC674(v71, v72, v112);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      *(v0 + 56) = v67;
      v74 = sub_29EB146FC();
      v76 = sub_29EABC674(v74, v75, v112);

      *(v68 + 14) = v76;
      _os_log_impl(&dword_29EAA5000, v61, v62, "Creating extension controller %s %s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDA8150](v69, -1, -1);
      MEMORY[0x29EDA8150](v68, -1, -1);

      (*(v65 + 8))(v95, v101);
      (*(v66 + 8))(v105, v103);
      sub_29EABCCEC(v107, &qword_2A187A7E8, &unk_29EB174E0);
      (*(v97 + 8))(v110, v109);
    }

    else
    {
      v77 = *(v0 + 64);

      (*(v65 + 8))(v77, v101);
      (*(v66 + 8))(v105, v103);
      sub_29EABCCEC(v107, &qword_2A187A7E8, &unk_29EB174E0);
      (*(v64 + 8))(v110, v109);
    }

    v79 = *(v0 + 232);
    v78 = *(v0 + 240);
    v81 = *(v0 + 200);
    v80 = *(v0 + 208);
    v83 = *(v0 + 168);
    v82 = *(v0 + 176);
    v85 = *(v0 + 152);
    v84 = *(v0 + 160);
    v86 = *(v0 + 128);
    v87 = *(v0 + 104);
    v111 = *(v0 + 96);

    v88 = *(v0 + 8);
    v89 = *(v0 + 72);

    return v88(v89);
  }

  *(v0 + 304) = v17;
  v18 = *(v0 + 224) + 16;
  (*(v0 + 288))(*(v0 + 232), *(v0 + 240), *(v0 + 216));
  v19 = *(MEMORY[0x29EDB9828] + 4);
  v20 = swift_task_alloc();
  *(v0 + 312) = v20;
  *v20 = v0;
  v20[1] = sub_29EAB9260;
  v21 = *(v0 + 232);
  v22 = *(v0 + 160);

  return MEMORY[0x2A1C5A170](v22, v21);
}

uint64_t sub_29EAB9BB4()
{
  v72 = v0;
  if (qword_2A187A308 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 64);
  v7 = sub_29EB1454C();
  __swift_project_value_buffer(v7, qword_2A187A7D0);
  v3(v4, v6, v5);
  v8 = v1;
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A5C();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v65 = *(v0 + 184);
    v67 = *(v0 + 320);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v71 = v69;
    *v13 = 136315394;
    v15 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v65);
    v19 = sub_29EABC674(v15, v17, &v71);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v67;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v14 = v21;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Failed to connect to the app extension process for %s -- %@", v13, 0x16u);
    sub_29EABCCEC(v14, &qword_2A187A648, qword_29EB17EB0);
    MEMORY[0x29EDA8150](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x29EDA8150](v69, -1, -1);
    MEMORY[0x29EDA8150](v13, -1, -1);
  }

  else
  {
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 184);

    v18 = *(v27 + 8);
    v22 = (v18)(v26, v28);
  }

  *(v0 + 328) = v18;
  v29 = *(v0 + 304);
  if (v29 == 5)
  {
    v30 = *(v0 + 320);
    v31 = *(v0 + 296);
    swift_willThrow();

    v70 = *(v0 + 320);
    v32 = *(v0 + 184);
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 224);
    v36 = *(v0 + 216);
    v59 = *(v0 + 232);
    v60 = *(v0 + 208);
    v37 = *(v0 + 176);
    v61 = *(v0 + 200);
    v62 = *(v0 + 168);
    v63 = *(v0 + 160);
    v64 = *(v0 + 152);
    v38 = *(v0 + 128);
    v66 = *(v0 + 104);
    v68 = *(v0 + 96);
    v39 = *(v0 + 72);
    v18(*(v0 + 64), v32);
    sub_29EABCCEC(v37, &qword_2A187A7E8, &unk_29EB174E0);
    (*(v35 + 8))(v34, v36);
    v18(v39 + v33, v32);
    type metadata accessor for ExtensionController();
    v40 = *(*v39 + 48);
    v41 = *(*v39 + 52);
    swift_deallocPartialClassInstance();

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = (v29 * 10) >> 64;
    v45 = 10 * v29;
    if (v44 == v45 >> 63)
    {
      v46 = *(v0 + 128);
      v47 = *(v0 + 104);
      v48 = *(v0 + 112);
      v50 = *(v0 + 88);
      v49 = *(v0 + 96);
      v51 = *(v0 + 80);
      v52 = 1000000000000000 * v45;
      v53 = ((v45 >> 63) & 0xFFFC72815B398000) + ((v45 * 0x38D7EA4C68000uLL) >> 64);
      sub_29EB14F2C();
      *(v0 + 40) = v52;
      *(v0 + 48) = v53;
      *(v0 + 24) = 0;
      *(v0 + 16) = 0;
      *(v0 + 32) = 1;
      v54 = sub_29EABD7F0(&qword_2A187A680, MEMORY[0x29EDCA440]);
      sub_29EB14F0C();
      sub_29EABD7F0(&qword_2A187A688, MEMORY[0x29EDCA430]);
      sub_29EB14D1C();
      v55 = *(v50 + 8);
      *(v0 + 336) = v55;
      *(v0 + 344) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v55(v49, v51);
      v56 = *(MEMORY[0x29EDCA480] + 4);
      v57 = swift_task_alloc();
      *(v0 + 352) = v57;
      *v57 = v0;
      v57[1] = sub_29EABA144;
      v58 = *(v0 + 128);
      v24 = *(v0 + 112);
      v22 = *(v0 + 104);
      v23 = v0 + 16;
      v25 = v54;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2A1C73C90](v22, v23, v24, v25);
  }
}

uint64_t sub_29EABA144()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v10 = *v1;
  *(*v1 + 360) = v0;

  v4 = *(v2 + 344);
  if (v0)
  {
    (*(v2 + 336))(*(v2 + 104), *(v2 + 80));
    v5 = sub_29EABA374;
  }

  else
  {
    v7 = *(v2 + 120);
    v6 = *(v2 + 128);
    v8 = *(v2 + 112);
    (*(v2 + 336))(*(v2 + 104), *(v2 + 80));
    (*(v7 + 8))(v6, v8);
    v5 = sub_29EABA29C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EABA29C()
{
  v1 = *(v0 + 320);

  v4 = *(v0 + 304);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 296) = v1;
    *(v0 + 304) = v6;
    v7 = *(v0 + 224) + 16;
    (*(v0 + 288))(*(v0 + 232), *(v0 + 240), *(v0 + 216));
    v8 = *(MEMORY[0x29EDB9828] + 4);
    v9 = swift_task_alloc();
    *(v0 + 312) = v9;
    *v9 = v0;
    v9[1] = sub_29EAB9260;
    v3 = *(v0 + 232);
    v2 = *(v0 + 160);
  }

  return MEMORY[0x2A1C5A170](v2, v3);
}

uint64_t sub_29EABA374()
{
  v1 = v0[40];
  v2 = v0[37];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v24 = v0[45];
  v3 = v0[41];
  v4 = v0[23];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v8 = v0[27];
  v16 = v0[29];
  v17 = v0[26];
  v9 = v0[22];
  v18 = v0[25];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v10 = v0[16];
  v22 = v0[13];
  v23 = v0[12];
  v11 = v0[9];
  v3(v0[8], v4);
  sub_29EABCCEC(v9, &qword_2A187A7E8, &unk_29EB174E0);
  (*(v7 + 8))(v6, v8);
  v3(v11 + v5, v4);
  type metadata accessor for ExtensionController();
  v12 = *(*v11 + 48);
  v13 = *(*v11 + 52);
  swift_deallocPartialClassInstance();

  v14 = v0[1];

  return v14();
}

uint64_t ExtensionController.__allocating_init(bundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_29EB1446C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EABA628, 0, 0);
}

uint64_t sub_29EABA628()
{
  v49 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_allocWithZone(MEMORY[0x29EDB93E8]);

  v4 = sub_29EABC348();
  v0[9] = v4;
  v5 = v4;
  v6 = [v4 bundleIdentifier];
  v7 = v0[3];
  if (v6)
  {
    v8 = v0[2];
    v9 = v6;
    v10 = sub_29EB146AC();
    v12 = v11;

    v13 = v0[3];
    if (v10 == v8 && v12 == v7)
    {
      v30 = v0[3];

LABEL_15:
      v32 = v0[7];
      v31 = v0[8];
      v33 = v0[5];
      v34 = v0[6];
      v47 = v0[4];
      v35 = v5;
      sub_29EB1444C();
      (*(v34 + 16))(v32, v31, v33);
      v36 = *(v47 + 112);
      v46 = (v36 + *v36);
      v37 = v36[1];
      v38 = swift_task_alloc();
      v0[10] = v38;
      *v38 = v0;
      v38[1] = sub_29EABAA6C;
      v39 = v0[7];
      v40 = v0[4];

      return v46(v39);
    }

    v15 = v0[2];
    v16 = v0[3];
    v17 = sub_29EB14EBC();

    if (v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = v0[3];
  }

  if (qword_2A187A308 != -1)
  {
    swift_once();
  }

  v19 = sub_29EB1454C();
  __swift_project_value_buffer(v19, qword_2A187A7D0);
  v20 = v5;
  v21 = sub_29EB1452C();
  v22 = sub_29EB14A6C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v48 = v24;
    *v23 = 136315138;
    v25 = [v20 bundleIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_29EB146AC();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v42 = sub_29EABC674(v27, v29, &v48);

    *(v23 + 4) = v42;
    _os_log_impl(&dword_29EAA5000, v21, v22, "Launch services returned a record that didn't match %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x29EDA8150](v24, -1, -1);
    MEMORY[0x29EDA8150](v23, -1, -1);
  }

  else
  {
  }

  v44 = v0[7];
  v43 = v0[8];

  v45 = v0[1];

  return v45(0);
}

uint64_t sub_29EABAA6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_29EABAC34;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_29EABAB94;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EABAB94()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  (*(v4 + 8))(v2, v3);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_29EABAC34()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 88);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t static ExtensionController.printMigrationExtensions()()
{
  v1 = sub_29EB1402C();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v4 = sub_29EB1446C();
  v0[8] = v4;
  v5 = *(v4 - 8);
  v0[9] = v5;
  v6 = *(v5 + 64) + 15;
  v0[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_29EABAE24;

  return sub_29EABCF40();
}

uint64_t sub_29EABAE24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v6 = *(v3 + 80);
    v7 = *(v3 + 56);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29EABAF80, 0, 0);
  }
}

uint64_t sub_29EABAF80()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v23 = *(v0 + 96);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 72);
      sub_29EABD730(0, &qword_2A187B080, 0x29EDBA0F8);
      v5 = *(v3 + 16);
      v4 = v3 + 16;
      v25 = v5;
      v6 = v23 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v24 = *(v4 + 56);
      do
      {
        v8 = *(v0 + 80);
        v9 = *(v0 + 64);
        v25(v8, v6, v9);
        v10 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
        v12 = v11;
        v26 = v11;
        v13 = sub_29EB1441C();
        (*(v4 - 8))(v8, v9);
        if (v13)
        {
          *(v0 + 32) = v13;
          if (swift_dynamicCast())
          {
            MEMORY[0x29EDA6DF0](*(v0 + 16), *(v0 + 24));

            MEMORY[0x29EDA6DF0](0x6D305B1B5DLL, 0xE500000000000000);
            MEMORY[0x29EDA6DF0](0x5B6D31335B1BLL, 0xE600000000000000);

            v12 = v26;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A7F8, &qword_29EB17508);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_29EB16460;
        *(v7 + 56) = MEMORY[0x29EDC99B0];
        *(v7 + 32) = v10;
        *(v7 + 40) = v12;
        sub_29EB14F7C();

        v6 += v24;
        --v2;
      }

      while (v2);
    }

    v14 = *(v0 + 80);
    v15 = *(v0 + 56);

    v16 = *(v0 + 8);
  }

  else
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);
    *(v0 + 104) = 2;
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EABD7F0(&qword_2A187A640, MEMORY[0x29EDB9870]);
    sub_29EB1415C();
    sub_29EB1401C();
    (*(v18 + 8))(v17, v19);
    swift_willThrow();
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t static ExtensionController.allMigrationExtensions.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29EABB354;

  return sub_29EABCF40();
}

uint64_t sub_29EABB354(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_29EABB454(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = sub_29EB1446C();
  v66 = *(v68 - 8);
  v5 = v66[8];
  v6 = (MEMORY[0x2A1C7C4A8])();
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v63 - v9;
  v11 = sub_29EB1422C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v63 - v17;
  v19 = [a1 bundleContainerURL];
  v67 = a2;
  if (v19)
  {
    v20 = v19;
    sub_29EB141DC();

    sub_29EABD730(0, &qword_2A187A818, 0x29EDC56C8);
    v21 = *(v12 + 16);
    v63 = v18;
    v21(v16, v18, v11);
    v22 = sub_29EABBB80(v16);
    v23 = v12;
    if (v2)
    {

      v24 = 0;
      v25 = v68;
      v26 = v66;
    }

    else
    {
      v25 = v68;
      v26 = v66;
      if (v22)
      {
        v24 = v22;
        v54 = [v22 distributorInfo];
        if (v54)
        {
          v55 = v54;
          v56 = [v54 distributorType];
          if (v56 == -1)
          {
            v59 = [v55 distributorID];
            v57 = v63;
            if (v59)
            {
              v60 = v59;
              v39 = sub_29EB146AC();
              v61 = v23;
              v53 = v62;

              (*(v61 + 8))(v57, v11);
              v38 = v67;
              goto LABEL_22;
            }
          }

          else
          {
            v57 = v63;
            if (v56 == 2)
            {

              v53 = 0x800000029EB1BA40;
              (*(v12 + 8))(v57, v11);
              v39 = 0xD000000000000014;
              v38 = v67;
              goto LABEL_22;
            }

            if (v56 == 1)
            {
              v39 = 0xD000000000000012;

              v58 = v23;
              v53 = 0x800000029EB1BA60;
              (*(v58 + 8))(v57, v11);
              v38 = v67;
              goto LABEL_22;
            }
          }

          v39 = 0x6E776F6E6B6E75;

          (*(v23 + 8))(v57, v11);
          v53 = 0xE700000000000000;
          v38 = v67;
          goto LABEL_22;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    v64 = 0;
    if (qword_2A187A2E0 != -1)
    {
      swift_once();
    }

    v66 = v24;
    v27 = sub_29EB1454C();
    __swift_project_value_buffer(v27, qword_2A1881290);
    (v26[2])(v10, v65, v25);
    v28 = sub_29EB1452C();
    v29 = sub_29EB14A6C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v69 = v31;
      *v30 = 136315138;
      v32 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
      v65 = v23;
      v33 = v11;
      v35 = v34;
      (v26[1])(v10, v68);
      v36 = sub_29EABC674(v32, v35, &v69);
      v11 = v33;
      v23 = v65;

      *(v30 + 4) = v36;
      _os_log_impl(&dword_29EAA5000, v28, v29, "Unable to get distributor info for %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v37 = v31;
      v38 = v67;
      MEMORY[0x29EDA8150](v37, -1, -1);
      MEMORY[0x29EDA8150](v30, -1, -1);
    }

    else
    {

      (v26[1])(v10, v25);
      v38 = v67;
    }

    v39 = 0x6E776F6E6B6E75;

    (*(v23 + 8))(v63, v11);
    v53 = 0xE700000000000000;
  }

  else
  {
    v64 = v2;
    if (qword_2A187A2E0 != -1)
    {
      swift_once();
    }

    v39 = 0x6E776F6E6B6E75;
    v40 = sub_29EB1454C();
    __swift_project_value_buffer(v40, qword_2A1881290);
    v41 = v66;
    v42 = v68;
    (v66[2])(v8, v65, v68);
    v43 = sub_29EB1452C();
    v44 = sub_29EB14A6C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v41;
      v46 = v42;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v48;
      *v47 = 136315138;
      v49 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
      v51 = v50;
      (v45[1])(v8, v46);
      v52 = sub_29EABC674(v49, v51, &v69);
      v39 = 0x6E776F6E6B6E75;

      *(v47 + 4) = v52;
      _os_log_impl(&dword_29EAA5000, v43, v44, "Unable to get containing application record bundle container URL for %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x29EDA8150](v48, -1, -1);
      MEMORY[0x29EDA8150](v47, -1, -1);
    }

    else
    {

      (v41[1])(v8, v42);
    }

    v53 = 0xE700000000000000;
    v38 = v67;
  }

LABEL_22:
  *v38 = v39;
  v38[1] = v53;
}

id sub_29EABBB80(uint64_t a1)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29EB141BC();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() metadataForBundleContainerURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_29EB1422C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_29EB1417C();

    swift_willThrow();
    v9 = sub_29EB1422C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

void AppExtensionIdentity.migrationAppIdentifier.getter(uint64_t *a1@<X8>)
{
  v4 = sub_29EB13FFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29EB1400C();
  v52 = *(v7 - 1);
  v8 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29EB1446C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v47 - v16;
  v18 = sub_29EB1443C();
  if (v18)
  {
    v19 = v18;
    v20 = [v18 bundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = sub_29EB146AC();
      v24 = v23;

      sub_29EABB454(v19, v51);
      if (v2)
      {
      }

      else
      {
        v44 = v51[0];
        v45 = v51[1];

        *a1 = v44;
        a1[1] = v45;
        a1[2] = v22;
        a1[3] = v24;
        a1[4] = 5459817;
        a1[5] = 0xE300000000000000;
      }
    }

    else
    {
      if (qword_2A187A2E0 != -1)
      {
        swift_once();
      }

      v34 = sub_29EB1454C();
      __swift_project_value_buffer(v34, qword_2A1881290);
      (*(v11 + 16))(v17, v1, v10);
      v35 = sub_29EB1452C();
      v36 = sub_29EB14A6C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v51[0] = v48;
        *v37 = 136315138;
        v47 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
        v39 = v38;
        (*(v11 + 8))(v17, v10);
        v40 = sub_29EABC674(v47, v39, v51);

        *(v37 + 4) = v40;
        _os_log_impl(&dword_29EAA5000, v35, v36, "Unable to get containing application record bundleID for %s", v37, 0xCu);
        v41 = v48;
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x29EDA8150](v41, -1, -1);
        MEMORY[0x29EDA8150](v37, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v17, v10);
      }

      sub_29EB13FEC();
      sub_29EABCE10(MEMORY[0x29EDCA190]);
      sub_29EABD7F0(&qword_2A187A800, MEMORY[0x29EDB9860]);
      v46 = v50;
      sub_29EB1415C();
      sub_29EB13F9C();
      (*(v52 + 8))(v46, v7);
      swift_willThrow();
    }
  }

  else
  {
    if (qword_2A187A2E0 != -1)
    {
      swift_once();
    }

    v48 = v7;
    v25 = sub_29EB1454C();
    __swift_project_value_buffer(v25, qword_2A1881290);
    (*(v11 + 16))(v15, v1, v10);
    v26 = sub_29EB1452C();
    v27 = sub_29EB14A6C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51[0] = v29;
      *v28 = 136315138;
      v30 = _s19ExtensionFoundation03AppA8IdentityV0C12MigrationKitE8bundleIDSSvg_0();
      v32 = v31;
      (*(v11 + 8))(v15, v10);
      v33 = sub_29EABC674(v30, v32, v51);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_29EAA5000, v26, v27, "Unable to get containing application record for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x29EDA8150](v29, -1, -1);
      MEMORY[0x29EDA8150](v28, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    sub_29EB13FEC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EABD7F0(&qword_2A187A800, MEMORY[0x29EDB9860]);
    v42 = v50;
    v43 = v48;
    sub_29EB1415C();
    sub_29EB13F9C();
    (*(v52 + 8))(v42, v43);
    swift_willThrow();
  }
}

id sub_29EABC348()
{
  v7[1] = *MEMORY[0x29EDCA608];
  v1 = sub_29EB1467C();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_29EB1417C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_29EABC414(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_29EABC460(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_29EABC4C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29EB14F8C();
  sub_29EB1473C();
  v6 = sub_29EB14FAC();

  return sub_29EABC538(a1, a2, v6);
}

unint64_t sub_29EABC538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29EB14EBC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_29EABC618(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_29EABC674(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_29EABC674(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EABC740(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29EAAB1A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_29EABC740(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29EABC84C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_29EB14C5C();
    a6 = v11;
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

uint64_t sub_29EABC84C(uint64_t a1, unint64_t a2)
{
  v4 = sub_29EABC898(a1, a2);
  sub_29EABC9C8(&unk_2A25349E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29EABC898(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EABCAB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29EB14C5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29EB1478C();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EABCAB4(v10, 0);
        result = sub_29EB14C1C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29EABC9C8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_29EABCB28(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29EABCAB4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1E0, &qword_29EB175A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EABCB28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1E0, &qword_29EB175A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_29EABCC1C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t type metadata accessor for ExtensionController()
{
  result = qword_2A187A808;
  if (!qword_2A187A808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29EABCC78(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_29EABCCEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29EABCD4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A7E8, &unk_29EB174E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29EABCDBC()
{
  result = qword_2A187A7F0;
  if (!qword_2A187A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A7F0);
  }

  return result;
}

unint64_t sub_29EABCE10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A820, &qword_29EB185C0);
    v3 = sub_29EB14D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_29EABD778(v4, &v13, &qword_2A187A828, &unk_29EB17590);
      v5 = v13;
      v6 = v14;
      result = sub_29EABC4C0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_29EABD7E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EABCF40()
{
  v1 = sub_29EB143FC();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = sub_29EB1440C();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EABD064, 0, 0);
}

uint64_t sub_29EABD064()
{
  v1 = v0[9];
  sub_29EB1445C();
  v2 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[9], v0[6]);
  sub_29EABD7F0(&qword_2A187A830, MEMORY[0x29EDB9840]);
  sub_29EB1495C();
  v3 = sub_29EABD7F0(&qword_2A187A838, MEMORY[0x29EDB9830]);
  v4 = *(MEMORY[0x29EDCA378] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_29EABD21C;
  v6 = v0[5];
  v7 = v0[3];

  return MEMORY[0x2A1C73B18](v0 + 2, v7, v3);
}

uint64_t sub_29EABD21C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[3];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_29EABD35C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29EABD35C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_29EABD428()
{
  result = sub_29EB143EC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29EB1446C();
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

uint64_t dispatch thunk of ExtensionController.__allocating_init(identity:)(uint64_t a1)
{
  v4 = *(v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EABD634;

  return v8(a1);
}

uint64_t sub_29EABD634(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_29EABD730(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29EABD778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_29EABD7E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_29EABD7F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EABD83C()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187A840);
  __swift_project_value_buffer(v0, qword_2A187A840);
  type metadata accessor for ExtensionController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8B0, &unk_29EB17650);
  sub_29EB146FC();
  return sub_29EB1453C();
}

uint64_t sub_29EABD8E0()
{
  v0 = sub_29EB1459C();
  __swift_allocate_value_buffer(v0, qword_2A187A858);
  *__swift_project_value_buffer(v0, qword_2A187A858) = 5;
  v1 = *MEMORY[0x29EDCA238];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_29EABD970(uint64_t a1)
{
  v14 = a1;
  v13 = sub_29EB14AAC();
  v2 = *(v13 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29EB14A9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = sub_29EB145CC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  *(v1 + 24) = 0;
  v10 = sub_29EABD730(0, &qword_2A187A8F0, 0x29EDCA548);
  v12[1] = "ProgressObserver";
  v12[2] = v10;
  sub_29EB145BC();
  v15 = MEMORY[0x29EDCA190];
  sub_29EABF974(&qword_2A187A8F8, MEMORY[0x29EDCA288]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A900, &unk_29EB17678);
  sub_29EABF9BC(&qword_2A187A908, &qword_2A187A900, &unk_29EB17678);
  sub_29EB14BDC();
  (*(v2 + 104))(v5, *MEMORY[0x29EDCA2A8], v13);
  *(v1 + 32) = sub_29EB14ACC();
  *(v1 + 40) = 0;
  *(v1 + 16) = v14;
  return v1;
}

void sub_29EABDC04(uint64_t a1)
{
  v2 = sub_29EB145AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v45 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29EB145CC();
  v44 = *(v46 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v46);
  v43 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EB1459C();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_29EB145FC();
  isa = v47[-1].isa;
  v12 = *(isa + 8);
  v13 = MEMORY[0x2A1C7C4A8](v47);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = v38 - v16;
  v18 = sub_29EB14ADC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    if (qword_2A187A310 != -1)
    {
      swift_once();
    }

    v23 = sub_29EB1454C();
    __swift_project_value_buffer(v23, qword_2A187A840);
    v47 = sub_29EB1452C();
    v24 = sub_29EB14A3C();
    if (!os_log_type_enabled(v47, v24))
    {
      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Can't cancel when we've already finished";
LABEL_11:
    _os_log_impl(&dword_29EAA5000, v47, v24, v26, v25, 2u);
    MEMORY[0x29EDA8150](v25, -1, -1);
LABEL_12:
    v28 = v47;

    return;
  }

  if (*(a1 + 40))
  {
    if (qword_2A187A310 != -1)
    {
      swift_once();
    }

    v27 = sub_29EB1454C();
    __swift_project_value_buffer(v27, qword_2A187A840);
    v47 = sub_29EB1452C();
    v24 = sub_29EB14A3C();
    if (!os_log_type_enabled(v47, v24))
    {
      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "Can't arm a new timer when we already have one";
    goto LABEL_11;
  }

  v39 = v3;
  v40 = v2;
  v29 = sub_29EABD730(0, &qword_2A187A8D0, 0x29EDCA550);
  v38[1] = *(a1 + 32);
  v38[2] = v29;
  aBlock[0] = MEMORY[0x29EDCA190];
  v38[0] = sub_29EABF974(&qword_2A187A8D8, MEMORY[0x29EDCA2B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A8E0, &qword_29EB17660);
  sub_29EABF9BC(&qword_2A187A8E8, &qword_2A187A8E0, &qword_29EB17660);
  sub_29EB14BDC();
  v30 = sub_29EB14AEC();
  (*(v19 + 8))(v22, v18);
  sub_29EB145DC();
  if (qword_2A187A318 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_2A187A858);
  sub_29EB145EC();
  isa = *(isa + 1);
  (isa)(v15, v47);
  ObjectType = swift_getObjectType();
  *v11 = 0;
  v32 = v41;
  (*(v41 + 104))(v11, *MEMORY[0x29EDCA228], v8);
  v33 = v30;
  MEMORY[0x29EDA71A0](v17, v11, ObjectType, INFINITY);
  (*(v32 + 8))(v11, v8);
  aBlock[4] = sub_29EABF878;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_16;
  v34 = _Block_copy(aBlock);

  v35 = v43;
  sub_29EB145BC();
  v36 = v45;
  sub_29EABE530();
  sub_29EB14AFC();
  _Block_release(v34);
  (*(v39 + 8))(v36, v40);
  (*(v44 + 8))(v35, v46);

  sub_29EB14B1C();
  (isa)(v17, v47);
  v37 = *(a1 + 40);
  *(a1 + 40) = v33;
  swift_unknownObjectRelease();
}

uint64_t sub_29EABE324(uint64_t a1)
{
  v2 = sub_29EB143EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A187A310 != -1)
  {
    swift_once();
  }

  v7 = sub_29EB1454C();
  __swift_project_value_buffer(v7, qword_2A187A840);
  v8 = sub_29EB1452C();
  v9 = sub_29EB14A5C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29EAA5000, v8, v9, "Failed to cancel within the allotted grace period. Forcing cancellation of the extension", v10, 2u);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v11 = *(a1 + 16);
  [*(v11 + 16) invalidate];
  (*(v3 + 16))(v6, v11 + OBJC_IVAR____TtC15AppMigrationKit19ExtensionController_process, v2);
  sub_29EB1439C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29EABE4EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_29EABE530()
{
  sub_29EB145AC();
  sub_29EABF974(&qword_2A187A630, MEMORY[0x29EDCA248]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8C0, &unk_29EB16D10);
  sub_29EABF9BC(&qword_2A187A638, &unk_2A187A8C0, &unk_29EB16D10);
  return sub_29EB14BDC();
}

uint64_t sub_29EABE628(uint64_t a1, uint64_t a2)
{
  v5 = sub_29EB145AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29EB145CC();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 32);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_29EB145BC();
  v18 = MEMORY[0x29EDCA190];
  sub_29EABF974(&qword_2A187A630, MEMORY[0x29EDCA248]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8C0, &unk_29EB16D10);
  sub_29EABF9BC(&qword_2A187A638, &unk_2A187A8C0, &unk_29EB16D10);
  sub_29EB14BDC();
  MEMORY[0x29EDA7130](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_29EABE8B8(uint64_t result)
{
  *(result + 24) = 1;
  if (*(result + 40))
  {
    v1 = *(result + 40);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_29EB14B0C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29EABE920()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C73398](v0, 48, 7);
}

uint64_t sub_29EABE98C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a1;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  sub_29EB148FC();
  *(v6 + 40) = sub_29EB148EC();
  v8 = sub_29EB1489C();

  return MEMORY[0x2A1C73D48](sub_29EABEA28, v8, v7);
}

uint64_t sub_29EABEA28()
{
  v1 = *(v0 + 5);
  v2 = v0[4];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);

  v3(v5, v2);
  v6 = *(v0 + 1);

  return v6();
}

id sub_29EABEC04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29EABECB0(void *a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_7;
  }

  v8[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v8[0];
  if (!v1)
  {
    v5 = v8[0];
    v6 = sub_29EB1417C();

    swift_willThrow();
LABEL_7:
    v7 = *MEMORY[0x29EDCA608];
    return;
  }

  v3 = *MEMORY[0x29EDCA608];

  v4 = v2;
}