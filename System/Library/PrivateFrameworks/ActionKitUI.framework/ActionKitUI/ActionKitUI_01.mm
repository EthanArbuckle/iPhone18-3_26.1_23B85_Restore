uint64_t sub_23E363784()
{
  v1 = v0;
  v2 = sub_23E3AA920();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23E3AA950();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E3AA930();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v0[2];
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7D0();
  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  (*(v11 + 104))(v14, *MEMORY[0x277D851B8], v10);
  v15 = sub_23E3AAB80();
  (*(v11 + 8))(v14, v10);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v1, 0x88uLL);
  aBlock[4] = sub_23E366C7C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_73;
  v17 = _Block_copy(aBlock);
  sub_23E366264(v1, v21);
  sub_23E3AA940();
  *&v21[0] = MEMORY[0x277D84F90];
  sub_23E366154(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v9, v5, v17);
  _Block_release(v17);

  (*(v20 + 8))(v5, v2);
  (*(v6 + 8))(v9, v19);
}

uint64_t sub_23E363B94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = [swift_getObjCClassFromMetadata() defaultKeySize];
  v7 = *(a3 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F488, &qword_23E3B2158);
  return sub_23E3AA7D0();
}

uint64_t sub_23E363C08(uint64_t a1)
{
  v2 = sub_23E3AA4B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F530, &qword_23E3B21D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  v13[2] = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F470, &qword_23E3B2150);
  sub_23E3AA7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F538, &qword_23E3B21E0);
  sub_23E3671AC();
  sub_23E367200();
  sub_23E3AA820();
  sub_23E3AA4A0();
  sub_23E34A09C(&qword_27E33F550, &qword_27E33F530, &qword_23E3B21D8);
  sub_23E3AA640();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23E363E7C()
{
  v0 = [objc_opt_self() keyFormats];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F398, &qword_23E3B1F50);
  v1 = sub_23E3AAA70();

  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_23E365598(0, v2, 0);
    v3 = *(v8 + 16);
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      v6 = *(v8 + 24);
      if (v3 >= v6 >> 1)
      {
        sub_23E365598((v6 > 1), v3 + 1, 1);
      }

      *(v8 + 16) = v3 + 1;
      *(v8 + 8 * v3 + 32) = v5;
      v4 += 8;
      ++v3;
      --v2;
    }

    while (v2);
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F558, &qword_23E3B2200);
  sub_23E34A09C(&qword_27E33F560, &qword_27E33F558, &qword_23E3B2200);
  sub_23E3671AC();
  return sub_23E3AA880();
}

uint64_t sub_23E36405C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [swift_getObjCClassFromMetadata() localizedDisplayName];
  sub_23E3AA9D0();

  sub_23E349C74();
  result = sub_23E3AA5F0();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_23E3640E8(uint64_t a1)
{
  v2 = sub_23E3AA4B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4E8, &qword_23E3B2198);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  v15 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F488, &qword_23E3B2158);
  sub_23E3AA7E0();
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F390, &unk_23E3B1F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4F0, &unk_23E3B21A0);
  sub_23E366FEC();
  sub_23E3670D8();
  sub_23E3AA820();
  sub_23E3AA4A0();
  sub_23E34A09C(&qword_27E33F510, &qword_27E33F4E8, &qword_23E3B2198);
  sub_23E3AA640();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23E364374(uint64_t a1)
{
  v3 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F470, &qword_23E3B2150);
  sub_23E3AA7C0();
  v1 = [swift_getObjCClassFromMetadata() possibleKeySizes];
  sub_23E350638(0, &qword_27E33F4E0, 0x277CCABB0);
  sub_23E3AAA70();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F518, &qword_23E3B21C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F520, &qword_23E3B21D0);
  sub_23E34A09C(&qword_27E33F528, &qword_27E33F518, &qword_23E3B21C8);
  sub_23E367070();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F390, &unk_23E3B1F40);
  sub_23E366FEC();
  swift_getOpaqueTypeConformance2();
  return sub_23E3AA880();
}

id sub_23E364538@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  v3 = [*a1 stringValue];
  sub_23E3AA9D0();

  sub_23E349C74();
  *a2 = sub_23E3AA5F0();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = 1;

  return v8;
}

uint64_t sub_23E3645E0(uint64_t a1)
{
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v2 = qword_27E33F950;
  v3 = sub_23E3AA9B0();
  v4 = sub_23E3AA9B0();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_23E3AA9D0();
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7E0();
  sub_23E349C74();
  return sub_23E3AA910();
}

uint64_t sub_23E364778(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  return sub_23E3AA7D0();
}

uint64_t sub_23E3647D0(uint64_t a1)
{
  v2 = sub_23E3AA920();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23E3AA950();
  v20 = *(v21 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F470, &qword_23E3B2150);
  sub_23E3AA7C0();
  v23 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F488, &qword_23E3B2158);
  sub_23E3AA7C0();
  v9 = aBlock[0];
  if (aBlock[0])
  {
    v10 = [aBlock[0] integerValue];
  }

  else
  {
    v10 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = *(a1 + 80);
  v24 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7C0();
  v12 = sub_23E3AA9B0();

  v13 = [ObjCClassFromMetadata generateKeyPairWithKeySize:v10 comment:v12];

  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v14 = sub_23E3AAB60();
  v15 = swift_allocObject();
  memcpy(v15 + 2, a1, 0x88uLL);
  v15[19] = v13;
  aBlock[4] = sub_23E366D24;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_79;
  v16 = _Block_copy(aBlock);
  sub_23E366264(a1, &v23);
  v17 = v13;

  sub_23E3AA940();
  *&v23 = MEMORY[0x277D84F90];
  sub_23E366154(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v8, v5, v16);
  _Block_release(v16);

  (*(v22 + 8))(v5, v2);
  return (*(v20 + 8))(v8, v21);
}

uint64_t sub_23E364C0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23E364C94@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v3 = sub_23E3AA8C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_23E364E90(&v19);
  v16 = v19;
  v17 = v20;
  v18 = v21;
  v11 = MEMORY[0x277CE0BC8];
  sub_23E3AA890();
  v15[1] = v11;
  v15[2] = a1;
  v15[3] = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  sub_23E34AA34(v8, v3, WitnessTable);
  v13 = *(v4 + 8);
  v13(v8, v3);
  sub_23E34AA34(v10, v3, WitnessTable);
  return (v13)(v10, v3);
}

uint64_t sub_23E364E90@<X0>(uint64_t a1@<X8>)
{
  sub_23E349C74();

  result = sub_23E3AA5F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_23E364EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(a1 + 16);
  return sub_23E364C94(*(a1 + 24), a2);
}

uint64_t sub_23E364F10(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23E367898;

  return v7();
}

uint64_t sub_23E364FF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23E34E4C0;

  return v8();
}

uint64_t sub_23E3650E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F290, &qword_23E3B1E10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23E3544EC(a3, v25 - v11, &qword_27E33F290, &qword_23E3B1E10);
  v13 = sub_23E3AAAE0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23E34A698(v12, &qword_27E33F290, &qword_23E3B1E10);
  }

  else
  {
    sub_23E3AAAD0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_23E3AAA80();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23E3AA9E0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23E34A698(a3, &qword_27E33F290, &qword_23E3B1E10);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E34A698(a3, &qword_27E33F290, &qword_23E3B1E10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23E3653BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E3654B4;

  return v7(a1);
}

uint64_t sub_23E3654B4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

char *sub_23E365598(char *a1, int64_t a2, char a3)
{
  result = sub_23E3655B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E3655B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F568, &qword_23E3B2208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_23E3656B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23E3AA350();
}

void sub_23E3656E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23E3AA9B0();

  [a4 populateWithIcon:a1 string:v6];
}

uint64_t sub_23E365788()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for SSHKeyConfigurationView()
{
  result = qword_27E33F2F0;
  if (!qword_27E33F2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E365838()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E365878()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E34E4C0;

  return sub_23E35DA70(v2, v3);
}

uint64_t sub_23E365920()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E367898;

  return sub_23E364F10(v2, v3, v5);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E365A24(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18(v7);
  *v8 = v9;
  v8[1] = sub_23E367898;

  return sub_23E364FF8(a1, v3, v4, v6);
}

uint64_t sub_23E365AE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E365B20()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16(v4);

  return v7(v6);
}

uint64_t sub_23E365BB4()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16(v4);

  return v7(v6);
}

uint64_t sub_23E365C70(uint64_t a1)
{
  v2 = type metadata accessor for SSHKeyConfigurationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E365CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F2E0, &unk_23E3B1E80);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23E365D88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F2E0, &unk_23E3B1E80);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E365E14()
{
  sub_23E365EC8();
  if (v0 <= 0x3F)
  {
    sub_23E3496A8();
    if (v1 <= 0x3F)
    {
      sub_23E365F2C();
      if (v2 <= 0x3F)
      {
        sub_23E365F84();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23E365EC8()
{
  if (!qword_27E33F300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F280, "@3");
    v0 = sub_23E3AA7F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33F300);
    }
  }
}

void sub_23E365F2C()
{
  if (!qword_27E33F310)
  {
    sub_23E3AA1A0();
    v0 = sub_23E3AA130();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33F310);
    }
  }
}

void sub_23E365F84()
{
  if (!qword_27E33ED00)
  {
    v0 = sub_23E3AA7F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33ED00);
    }
  }
}

uint64_t sub_23E36601C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SSHKeyConfigurationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E366084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SSHKeyConfigurationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E3660E8()
{
  v1 = type metadata accessor for SSHKeyConfigurationView();
  OUTLINED_FUNCTION_6_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_23E35F1C0(v3);
}

uint64_t sub_23E366154(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E3661A4()
{
  result = qword_27E33F388;
  if (!qword_27E33F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F388);
  }

  return result;
}

uint64_t sub_23E3661F8(void *a1)
{
  v3 = type metadata accessor for SSHKeyConfigurationView();
  OUTLINED_FUNCTION_6_0(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_23E360234(a1, v5);
}

uint64_t sub_23E366318(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23E36635C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  v1 = type metadata accessor for SSHKeyConfigurationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F288, &qword_23E3B1DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23E3AA1A0();
    OUTLINED_FUNCTION_13(v9);
    (*(v10 + 8))(v5 + v8);
  }

  else
  {
    v11 = *(v5 + v8);
  }

  v12 = *(v5 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E3664F8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SSHKeyConfigurationView();
  OUTLINED_FUNCTION_6_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

void sub_23E366570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();

  [a3 setString_];
}

uint64_t sub_23E3665DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_23E36661C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23E3666A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23E3666E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E366734()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F330, &qword_23E3B1F08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F328, &qword_23E3B1F00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F370, &qword_23E3B1F30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F320, &qword_23E3B1EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F348, &qword_23E3B1F18);
  sub_23E34A09C(&qword_27E33F350, &qword_27E33F320, &qword_23E3B1EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F358, &unk_23E3B1F20);
  sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F378, &qword_23E3B1F38);
  sub_23E3AA560();
  OUTLINED_FUNCTION_2_3();
  sub_23E34A09C(v0, &qword_27E33F378, &qword_23E3B1F38);
  sub_23E366154(&qword_27E33E880, MEMORY[0x277CDE2A0]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  sub_23E349C74();
  return OUTLINED_FUNCTION_4_1();
}

unint64_t sub_23E3669E0()
{
  result = qword_27E33F478;
  if (!qword_27E33F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F440, &qword_23E3B2138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F438, &qword_23E3B2130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F430, &qword_23E3B2128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F428, &qword_23E3B2120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F420, &qword_23E3B2118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F458, &qword_23E3B2148);
    sub_23E34A09C(&qword_27E33F460, &qword_27E33F420, &qword_23E3B2118);
    sub_23E34A09C(&qword_27E33F468, &qword_27E33F458, &qword_23E3B2148);
    swift_getOpaqueTypeConformance2();
    sub_23E349C74();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F478);
  }

  return result;
}

unint64_t sub_23E366C04()
{
  result = qword_27E33F480;
  if (!qword_27E33F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F480);
  }

  return result;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E366C9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  v9 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_23E366D24()
{
  v1 = v0[19];
  v2 = v0[2];
  v3 = v0[3];
  return v2(v1);
}

unint64_t sub_23E366D60()
{
  result = qword_27E33F4C0;
  if (!qword_27E33F4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F4B8, &unk_23E3B2180);
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33E8B0, &qword_23E3B1480);
    sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F4C0);
  }

  return result;
}

uint64_t sub_23E366E98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t objectdestroy_62Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  v9 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_23E366F5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23E366FA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23E366FEC()
{
  result = qword_27E33F4F8;
  if (!qword_27E33F4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F390, &unk_23E3B1F40);
    sub_23E367070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F4F8);
  }

  return result;
}

unint64_t sub_23E367070()
{
  result = qword_27E33F500;
  if (!qword_27E33F500)
  {
    sub_23E350638(255, &qword_27E33F4E0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F500);
  }

  return result;
}

unint64_t sub_23E3670D8()
{
  result = qword_27E33F508;
  if (!qword_27E33F508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F4F0, &unk_23E3B21A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F390, &unk_23E3B1F40);
    sub_23E366FEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F508);
  }

  return result;
}

unint64_t sub_23E3671AC()
{
  result = qword_27E33F540;
  if (!qword_27E33F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F540);
  }

  return result;
}

unint64_t sub_23E367200()
{
  result = qword_27E33F548;
  if (!qword_27E33F548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F538, &qword_23E3B21E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F548);
  }

  return result;
}

unint64_t sub_23E367290()
{
  result = qword_27E33F5C8;
  if (!qword_27E33F5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F5C0, &qword_23E3B2248);
    sub_23E367348();
    sub_23E34A09C(&qword_27E33F5F0, &qword_27E33F5F8, &qword_23E3B2260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F5C8);
  }

  return result;
}

unint64_t sub_23E367348()
{
  result = qword_27E33F5D0;
  if (!qword_27E33F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F5D8, &qword_23E3B2250);
    sub_23E3AA540();
    swift_getOpaqueTypeConformance2();
    sub_23E34A09C(&qword_27E33F5E0, &qword_27E33F5E8, &qword_23E3B2258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F5D0);
  }

  return result;
}

uint64_t sub_23E367444@<X0>(uint64_t a1@<X8>)
{
  result = sub_23E3AA340();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23E36747C@<X0>(void *a1@<X8>)
{
  result = sub_23E3AA2D0();
  *a1 = v3;
  return result;
}

uint64_t sub_23E3674D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E367518(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23E367558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SSHKeyGenerationView.KeyFormat(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SSHKeyGenerationView.KeyFormat(uint64_t result, int a2, int a3)
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

uint64_t sub_23E36764C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F440, &qword_23E3B2138);
  sub_23E3669E0();
  sub_23E366C04();
  return OUTLINED_FUNCTION_4_1();
}

unint64_t sub_23E3676BC()
{
  result = qword_27E33F6A0;
  if (!qword_27E33F6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F6A8, "z3");
    sub_23E34A09C(&qword_27E33F598, &qword_27E33F588, &qword_23E3B2228);
    sub_23E34A09C(&qword_27E33F5A0, &qword_27E33F570, &qword_23E3B2210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F6A0);
  }

  return result;
}

uint64_t sub_23E3677E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23E3AA8C0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t WFAccountAccessResource.accountConfigurationView.getter()
{
  v1 = type metadata accessor for AccountManagementView();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 28);
  *&v7[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B0, &unk_23E3B2460);
  swift_storeEnumTagMultiPayload();
  v9 = &v7[*(v1 + 32)];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = *(v1 + 36);
  v14[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B8, qword_23E3B24A0);
  sub_23E3AA7B0();
  *&v7[v10] = v15;
  *v7 = v0;
  [v0 accountClass];
  swift_getObjCClassMetadata();
  sub_23E350638(0, &qword_27E33F6C0, 0x277CE87F0);
  v11 = swift_dynamicCastMetatypeUnconditional();
  *(v7 + 1) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v7 + 2) = sub_23E36A9A4;
  *(v7 + 3) = v12;
  v7[32] = 0;
  sub_23E36AD74(&qword_27E33F6C8, type metadata accessor for AccountManagementView);
  return sub_23E3AA840();
}

uint64_t type metadata accessor for AccountManagementView()
{
  result = qword_27E33F6E0;
  if (!qword_27E33F6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E367AF0(uint64_t a1)
{
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23E36B904;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_38;
  v4 = _Block_copy(aBlock);

  v5 = [ObjCClassFromMetadata addAccountObserver_];
  _Block_release(v4);
  sub_23E3AABE0();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_23E36B90C(aBlock, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_23E367C30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for AccountListViewModel();
    sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel);
    sub_23E3AA110();

    sub_23E3AA120();
  }

  return result;
}

uint64_t sub_23E367CE4()
{
  swift_beginAccess();
  sub_23E34A628(v0 + 24, &v4, &qword_27E33F8B8, &qword_23E3B2728);
  if (v5)
  {
    sub_23E36B8BC(&v4, v6);
    v1 = *(v0 + 16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_project_boxed_opaque_existential_0(v6, v7);
    [ObjCClassFromMetadata removeAccountObserver_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_23E34A698(&v4, &qword_27E33F8B8, &qword_23E3B2728);
  }

  sub_23E34A698(v0 + 24, &qword_27E33F8B8, &qword_23E3B2728);
  return v0;
}

uint64_t sub_23E367DD8()
{
  v0 = sub_23E367CE4();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_23E367E08()
{
  v1 = *(v0 + 16);
  v2 = [swift_getObjCClassFromMetadata() accounts];
  sub_23E350638(0, &qword_27E33F6C0, 0x277CE87F0);
  v3 = sub_23E3AAA70();

  return v3;
}

uint64_t sub_23E367E74()
{
  v1 = *(v0 + 16);
  v2 = [swift_getObjCClassFromMetadata() localizedServiceName];
  v3 = sub_23E3AA9D0();

  return v3;
}

uint64_t sub_23E367ED0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountListViewModel();
  result = sub_23E3AA110();
  *a1 = result;
  return result;
}

uint64_t sub_23E367F10(uint64_t a1)
{
  type metadata accessor for AccountListViewModel();
  swift_allocObject();
  return sub_23E367AF0(a1);
}

uint64_t sub_23E367F50@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_23E3AA560();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F740, &qword_23E3B25F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v29 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F748, &qword_23E3B25F8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33F750, &unk_23E3B2600);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F348, &qword_23E3B1F18);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F760, &qword_23E3B2610);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F768, &qword_23E3B2618);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F770, &qword_23E3B2620);
  v15 = sub_23E3AA1C0();
  v16 = sub_23E36AE50();
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = MEMORY[0x277CDD8F0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_23E349C74();
  v30 = v13;
  v31 = MEMORY[0x277D837D0];
  v32 = OpaqueTypeConformance2;
  v33 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v30 = v12;
  v31 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F358, &unk_23E3B1F20);
  v22 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20);
  v30 = v21;
  v31 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v30 = v26;
  v31 = v25;
  v32 = v20;
  v33 = v23;
  swift_getOpaqueTypeConformance2();
  sub_23E3AA1E0();
  sub_23E3AA550();
  sub_23E34A09C(&unk_27E33F7A8, &qword_27E33F740, &qword_23E3B25F0);
  sub_23E36AD74(&qword_27E33E880, MEMORY[0x277CDE2A0]);
  sub_23E3AA600();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23E368344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_23E3AA380();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23E3AA1C0();
  v68 = *(v84 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v84);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E3AA8D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F770, &qword_23E3B2620);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F768, &qword_23E3B2618);
  v71 = *(v74 - 8);
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v20 = &v67 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F760, &qword_23E3B2610);
  v73 = *(v75 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v67 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F750, &unk_23E3B2600);
  v77 = *(v23 - 8);
  v78 = v23;
  v24 = *(v77 + 64);
  MEMORY[0x28223BE20](v23);
  v76 = &v67 - v25;
  v82 = a1;
  v85 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7B8, &qword_23E3B2640);
  sub_23E34A09C(&qword_27E33F7C0, &qword_27E33F7B8, &qword_23E3B2640);
  sub_23E3AA5D0();
  KeyPath = swift_getKeyPath();
  v27 = &v17[*(v14 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F798, &unk_23E3B2630) + 28);
  (*(v10 + 104))(v13, *MEMORY[0x277CDF0D0], v9);
  sub_23E3AA870();
  (*(v10 + 8))(v13, v9);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7C8, &qword_23E3B2678);
  __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v29);
  *v27 = KeyPath;
  sub_23E3AA1B0();
  v30 = sub_23E36AE50();
  v70 = v20;
  v69 = v14;
  v31 = MEMORY[0x277CDD8F0];
  v32 = v84;
  sub_23E3AA710();
  (*(v68 + 8))(v8, v32);
  sub_23E36AF64(v17);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v33 = qword_27E33F950;
  v34 = sub_23E3AA9B0();
  v35 = sub_23E3AA9B0();

  v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

  sub_23E3AA9D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7D0, &unk_23E3B2680);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23E3B1560;
  v38 = v82;
  v39 = *(v82 + 16);
  v40 = *(v82 + 24);
  v41 = *(v82 + 32);
  type metadata accessor for AccountListViewModel();
  sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel);
  sub_23E3AA150();
  v42 = sub_23E367E74();
  v44 = v43;

  v45 = MEMORY[0x277D837D0];
  *(v37 + 56) = MEMORY[0x277D837D0];
  v46 = v45;
  *(v37 + 64) = sub_23E36AFC4();
  *(v37 + 32) = v42;
  *(v37 + 40) = v44;
  v47 = sub_23E3AA9C0();
  v49 = v48;

  v90 = v47;
  v91 = v49;
  v86 = v69;
  v87 = v84;
  v88 = v30;
  v89 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_23E349C74();
  v52 = v72;
  v53 = v74;
  v54 = v46;
  v55 = v70;
  sub_23E3AA680();

  (*(v71 + 8))(v55, v53);
  v57 = v79;
  v56 = v80;
  v58 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x277CDDDC0], v81);
  v86 = v53;
  v87 = v54;
  v88 = OpaqueTypeConformance2;
  v89 = v51;
  v59 = swift_getOpaqueTypeConformance2();
  v61 = v75;
  v60 = v76;
  sub_23E3AA6B0();
  (*(v56 + 8))(v57, v58);
  v62 = (*(v73 + 8))(v52, v61);
  MEMORY[0x28223BE20](v62);
  *(&v67 - 2) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F348, &qword_23E3B1F18);
  v86 = v61;
  v87 = v59;
  swift_getOpaqueTypeConformance2();
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F358, &unk_23E3B1F20);
  v64 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20);
  v86 = v63;
  v87 = v64;
  swift_getOpaqueTypeConformance2();
  v65 = v78;
  sub_23E3AA6F0();
  return (*(v77 + 8))(v60, v65);
}

uint64_t sub_23E368C98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7E8, &qword_23E3B2698);
  v3 = *(v37 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7F0, &qword_23E3B26A0);
  v34 = *(v9 - 8);
  v10 = v34;
  v11 = *(v34 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7F8, &qword_23E3B26A8);
  sub_23E36B1FC();
  v33 = v16;
  sub_23E3AA8B0();
  v39 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F838, &qword_23E3B26C8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F840, &qword_23E3B26D0);
  v18 = sub_23E3AA500();
  v19 = sub_23E34A09C(&qword_27E33F848, &qword_27E33F840, &qword_23E3B26D0);
  v20 = sub_23E36AD74(&qword_27E33F850, MEMORY[0x277CDE0B8]);
  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = v20;
  swift_getOpaqueTypeConformance2();
  v31 = v8;
  sub_23E3AA8B0();
  v21 = *(v10 + 16);
  v32 = v14;
  v21(v14, v16, v9);
  v22 = v3[2];
  v23 = v36;
  v24 = v8;
  v25 = v37;
  v22(v36, v24, v37);
  v26 = v38;
  v21(v38, v14, v9);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F858, &qword_23E3B26D8);
  v22(&v26[*(v27 + 48)], v23, v25);
  v28 = v3[1];
  v28(v31, v25);
  v29 = *(v34 + 8);
  v29(v33, v9);
  v28(v23, v25);
  return (v29)(v32, v9);
}

uint64_t sub_23E369070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for AccountManagementView();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v5;
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F810, &qword_23E3B26B0);
  v6 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F890, &unk_23E3B26F8);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v43 - v10;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  type metadata accessor for AccountListViewModel();
  sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel);
  sub_23E3AA150();
  v15 = sub_23E367E08();

  v16 = sub_23E36B580(v15);

  if (v16)
  {
    sub_23E3AA150();
    v17 = sub_23E367E08();

    v50 = v17;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F898, &qword_23E3B2720);
    sub_23E34A09C(&qword_27E33F8A0, &qword_27E33F898, &qword_23E3B2720);
    sub_23E36B5A4();
    sub_23E3AA880();
    v18 = v46;
    sub_23E36B028(v2, v46);
    v19 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v20 = swift_allocObject();
    sub_23E36B0A4(v18, v20 + v19);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_23E36B788;
    *(v21 + 24) = v20;
    v22 = &v8[*(v49 + 36)];
    *v22 = sub_23E36B830;
    v22[1] = v21;
    sub_23E34A628(v8, v11, &qword_27E33F810, &qword_23E3B26B0);
    swift_storeEnumTagMultiPayload();
    sub_23E36B288();
    sub_23E3AA480();
    return sub_23E34A698(v8, &qword_27E33F810, &qword_23E3B26B0);
  }

  else
  {
    v24 = v11;
    sub_23E3AAA00();
    if (qword_27E33E560 != -1)
    {
      swift_once();
    }

    v25 = qword_27E33F950;
    v26 = sub_23E3AA9B0();
    v27 = sub_23E3AA9B0();

    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    v29 = sub_23E3AA9D0();
    v31 = v30;

    v50 = v29;
    v51 = v31;
    sub_23E349C74();
    v32 = sub_23E3AA5F0();
    v34 = v33;
    LOBYTE(v31) = v35;
    sub_23E3AA770();
    v36 = sub_23E3AA5E0();
    v38 = v37;
    v40 = v39;
    v42 = v41;

    sub_23E35BC20(v32, v34, v31 & 1);

    *v24 = v36;
    *(v24 + 1) = v38;
    v24[16] = v40 & 1;
    *(v24 + 3) = v42;
    swift_storeEnumTagMultiPayload();
    sub_23E36B288();
    return sub_23E3AA480();
  }
}

uint64_t sub_23E3695BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = sub_23E3AA500();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountManagementView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F840, &qword_23E3B26D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  sub_23E36B028(a1, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_23E36B0A4(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F860, &qword_23E3B26E0);
  sub_23E36B420();
  sub_23E3AA800();
  sub_23E3AA4F0();
  sub_23E34A09C(&qword_27E33F848, &qword_27E33F840, &qword_23E3B26D0);
  sub_23E36AD74(&qword_27E33F850, MEMORY[0x277CDE0B8]);
  sub_23E3AA630();
  (*(v4 + 8))(v7, v3);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23E3698C8()
{
  v1 = v0;
  v21 = sub_23E3AA370();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E3AA250();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for AccountManagementView();
  v13 = v0 + *(v12 + 28);
  sub_23E36A744(v11);
  MEMORY[0x23EF084E0](v8);
  sub_23E3AA240();
  sub_23E3AA860();
  sub_23E34A698(v11, &qword_27E33F718, &qword_23E3B2558);
  v14 = v1 + *(v12 + 32);
  v15 = *v14;
  if (v14[8] != 1)
  {

    sub_23E3AAB50();
    v17 = sub_23E3AA590();
    sub_23E3AA0E0();

    sub_23E3AA360();
    swift_getAtKeyPath();
    sub_23E36B098(v15, 0);
    result = (*(v2 + 8))(v5, v21);
    v15 = aBlock[0];
    if (!aBlock[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v15)
  {
LABEL_5:
    v18 = *v1;
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E36A6C8;
    aBlock[3] = &block_descriptor_6;
    v19 = _Block_copy(aBlock);
    [v18 makeAvailableWithUserInterface:v15 completionHandler:v19];
    _Block_release(v19);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_23E369BBC@<X0>(uint64_t a1@<X8>)
{
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v2 = qword_27E33F950;
  v3 = sub_23E3AA9B0();
  v4 = sub_23E3AA9B0();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_23E3AA9D0();
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  sub_23E349C74();
  v9 = sub_23E3AA5F0();
  v11 = v10;
  LOBYTE(v8) = v12;
  v14 = v13;
  sub_23E3AA8F0();
  sub_23E3AA270();
  memcpy(&v16[7], __src, 0x70uLL);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  return memcpy((a1 + 33), v16, 0x77uLL);
}

uint64_t sub_23E369D60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7E0, &qword_23E3B2690);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E34A628(a1, &v6 - v4, &qword_27E33F7E0, &qword_23E3B2690);
  return sub_23E3AA310();
}

uint64_t sub_23E369E08(uint64_t a1)
{
  v2 = sub_23E3AA4E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F358, &unk_23E3B1F20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_23E3AA4D0();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E8B0, &qword_23E3B1480);
  sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
  sub_23E3AA170();
  v9 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20);
  MEMORY[0x23EF081A0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23E369FF4(uint64_t a1)
{
  v2 = type metadata accessor for AccountManagementView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v5 = qword_27E33F950;
  v6 = sub_23E3AA9B0();
  v7 = sub_23E3AA9B0();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E3AA9D0();
  v11 = v10;

  v15[0] = v9;
  v15[1] = v11;
  sub_23E36B028(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_23E36B0A4(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_23E349C74();
  return sub_23E3AA810();
}

uint64_t sub_23E36A1E0(uint64_t a1)
{
  v2 = sub_23E3AA250();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = a1 + *(type metadata accessor for AccountManagementView() + 28);
  sub_23E36A744(v7);
  MEMORY[0x23EF084E0](v4);
  sub_23E3AA240();
  sub_23E3AA860();
  return sub_23E34A698(v7, &qword_27E33F718, &qword_23E3B2558);
}

uint64_t sub_23E36A30C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E36B858(*a1);
  sub_23E349C74();
  result = sub_23E3AA5F0();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_23E36A378(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E3A9EC0();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  type metadata accessor for AccountListViewModel();
  sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel);
  sub_23E3AA150();
  v10 = sub_23E367E08();

  sub_23E3A9ED0();
  sub_23E36AD74(&qword_27E33F8B0, MEMORY[0x277CC9A28]);
  v11 = sub_23E3AAB10();
  if (v11)
  {
    v12 = v11;
    v35 = MEMORY[0x277D84F90];
    sub_23E3AAC30();
    result = sub_23E3AAB00();
    if (v12 < 0)
    {
      goto LABEL_22;
    }

    v29 = a2;
    v14 = v10 & 0xC000000000000001;
    v15 = v10;
    v32 = v10 + 32;
    v33 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v16 = sub_23E3AAB30();
      v18 = *v17;
      result = v16(v34, 0);
      if (v14)
      {
        MEMORY[0x23EF08890](v18, v15);
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (v18 >= *(v33 + 16))
        {
          goto LABEL_21;
        }

        v19 = *(v32 + 8 * v18);
      }

      sub_23E3AAC10();
      v20 = *(v35 + 16);
      sub_23E3AAC40();
      sub_23E3AAC50();
      sub_23E3AAC20();
      sub_23E3AAB20();
      if (!--v12)
      {
        (*(v30 + 8))(v6, v31);

        v21 = v35;
        a2 = v29;
        goto LABEL_12;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_12:
  v22 = sub_23E36B580(v21);
  if (v22)
  {
    v23 = v22;
    v24 = *(a2 + 8);
    result = swift_getObjCClassFromMetadata();
    if (v23 < 1)
    {
      goto LABEL_23;
    }

    v25 = result;
    for (i = 0; i != v23; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x23EF08890](i, v21);
      }

      else
      {
        v27 = *(v21 + 8 * i + 32);
      }

      v28 = v27;
      [v25 deleteAccount_];
    }
  }
}

void sub_23E36A6C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23E36A744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23E3AA370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B0, &unk_23E3B2460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_23E34A628(v2, &v16 - v11, &qword_27E33F6B0, &unk_23E3B2460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23E36B168(v12, a1);
  }

  v14 = *v12;
  sub_23E3AAB50();
  v15 = sub_23E3AA590();
  sub_23E3AA0E0();

  sub_23E3AA360();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23E36A938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E3AA280();
  *a1 = result;
  return result;
}

uint64_t sub_23E36A964(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  return sub_23E3AA290();
}

uint64_t sub_23E36A9E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F6D0, "p>");
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E36AA8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F6D0, "p>");
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E36AB18()
{
  sub_23E350638(319, &qword_27E33F6F0, 0x277CE87F8);
  if (v0 <= 0x3F)
  {
    sub_23E36AC90();
    if (v1 <= 0x3F)
    {
      sub_23E36ACE0();
      if (v2 <= 0x3F)
      {
        sub_23E36ADBC(319, &qword_27E33F710, &qword_27E33F718, &qword_23E3B2558, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23E36ADBC(319, &qword_27E33F720, &qword_27E33F728, &qword_23E3B2560, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23E36ADBC(319, &unk_27E33F730, &qword_27E33F6B8, qword_23E3B24A0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_23E36AC90()
{
  result = qword_27E33F6F8;
  if (!qword_27E33F6F8)
  {
    sub_23E350638(255, &qword_27E33F6C0, 0x277CE87F0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27E33F6F8);
  }

  return result;
}

void sub_23E36ACE0()
{
  if (!qword_27E33F700)
  {
    type metadata accessor for AccountListViewModel();
    sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel);
    v0 = sub_23E3AA160();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33F700);
    }
  }
}

uint64_t sub_23E36AD74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23E36ADBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_23E36AE50()
{
  result = qword_27E33F778;
  if (!qword_27E33F778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F770, &qword_23E3B2620);
    sub_23E34A09C(&qword_27E33F780, &qword_27E33F788, &qword_23E3B2628);
    sub_23E34A09C(&qword_27E33F790, &unk_27E33F798, &unk_23E3B2630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F778);
  }

  return result;
}

uint64_t sub_23E36AF64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F770, &qword_23E3B2620);
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23E36AFC4()
{
  result = qword_27E33F7D8;
  if (!qword_27E33F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F7D8);
  }

  return result;
}

uint64_t sub_23E36B028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountManagementView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36B098(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_23E36B0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountManagementView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36B108()
{
  v1 = *(type metadata accessor for AccountManagementView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23E36A1E0(v2);
}

uint64_t sub_23E36B168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E36B1FC()
{
  result = qword_27E33F800;
  if (!qword_27E33F800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F7F8, &qword_23E3B26A8);
    sub_23E36B288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F800);
  }

  return result;
}

unint64_t sub_23E36B288()
{
  result = qword_27E33F808;
  if (!qword_27E33F808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F810, &qword_23E3B26B0);
    sub_23E36B340();
    sub_23E34A09C(&qword_27E33F828, &qword_27E33F830, &qword_23E3B26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F808);
  }

  return result;
}

unint64_t sub_23E36B340()
{
  result = qword_27E33F818;
  if (!qword_27E33F818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F820, &qword_23E3B26B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F818);
  }

  return result;
}

uint64_t sub_23E36B3C4()
{
  v1 = *(type metadata accessor for AccountManagementView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23E3698C8();
}

unint64_t sub_23E36B420()
{
  result = qword_27E33F868;
  if (!qword_27E33F868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F860, &qword_23E3B26E0);
    sub_23E36B4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F868);
  }

  return result;
}

unint64_t sub_23E36B4AC()
{
  result = qword_27E33F870;
  if (!qword_27E33F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F878, &qword_23E3B26E8);
    sub_23E34A09C(&qword_27E33F880, &qword_27E33F888, &qword_23E3B26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F870);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E36B580(uint64_t a1)
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

unint64_t sub_23E36B5A4()
{
  result = qword_27E33F8A8;
  if (!qword_27E33F8A8)
  {
    sub_23E350638(255, &qword_27E33F6C0, 0x277CE87F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F8A8);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for AccountManagementView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);
  v7 = *(v0 + v3 + 24);
  v8 = *(v0 + v3 + 32);
  sub_23E36B090();
  v9 = (v0 + v3 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B0, &unk_23E3B2460);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v9 + 1);

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558) + 32);
    v14 = sub_23E3AA250();
    OUTLINED_FUNCTION_13(v14);
    (*(v15 + 8))(&v9[v13]);
  }

  sub_23E36B098(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v16 = v5 + v1[9];

  v17 = *(v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E36B788(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountManagementView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23E36A378(a1, v4);
}

uint64_t sub_23E36B7F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E36B830()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23E36B858(void *a1)
{
  v1 = [a1 localizedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E3AA9D0();

  return v3;
}

_OWORD *sub_23E36B8BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23E36B8CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E36B90C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F8B8, &qword_23E3B2728);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36B97C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F740, &qword_23E3B25F0);
  sub_23E3AA560();
  sub_23E34A09C(&unk_27E33F7A8, &qword_27E33F740, &qword_23E3B25F0);
  sub_23E36AD74(&qword_27E33E880, MEMORY[0x277CDE2A0]);
  return swift_getOpaqueTypeConformance2();
}

void sub_23E36BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_23E3AA9B0();
    if (a3)
    {
LABEL_3:
      v7 = sub_23E3A9E30();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_23E36BAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a2;
  v37 = a3;
  v10 = sub_23E3AA920();
  v11 = OUTLINED_FUNCTION_0(v10);
  v40 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23E3AA950();
  v18 = OUTLINED_FUNCTION_0(v17);
  v38 = v19;
  v39 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v5[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
  v25 = *&v5[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
  v26 = *(v24 + 1);
  *v24 = a4;
  *(v24 + 1) = a5;

  sub_23E34A688(v25);
  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v27 = sub_23E3AAB60();
  v28 = swift_allocObject();
  v28[2] = v6;
  v28[3] = a1;
  v28[4] = a4;
  v28[5] = a5;
  v29 = v37;
  v28[6] = v36;
  v28[7] = v29;
  aBlock[4] = sub_23E36CFE8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  aBlock[2] = v30;
  aBlock[3] = &block_descriptor_19_0;
  v31 = _Block_copy(aBlock);
  v32 = a1;

  v33 = v6;

  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E35C7F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E35054C();
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v23, v16, v31);
  _Block_release(v31);

  (*(v40 + 8))(v16, v10);
  return (*(v38 + 8))(v23, v39);
}

void sub_23E36BDC4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v7 = sub_23E3AA100();
  v66 = *(v7 - 8);
  v8 = v66[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      v66 = a2;
      sub_23E3716A0(a2, a3, v67);

      v17 = v66;

      return;
    }
  }

  v65 = v7;
  v18 = [a1 attribution];

  sub_23E3A9D50();
  v19 = objc_allocWithZone(type metadata accessor for WFAskLLMActionViewController());
  v20 = sub_23E370758(v18, v14);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  aBlock[4] = sub_23E36D030;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E36C650;
  aBlock[3] = &block_descriptor_25;
  v22 = _Block_copy(aBlock);
  v23 = v20;
  v24 = a1;

  [v23 setDismissalHandler_];
  _Block_release(v22);

  *&v23[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_delegate + 8] = &off_28509F870;
  swift_unknownObjectWeakAssign();
  sub_23E3716A0(a2, a3, v67);
  swift_unknownObjectWeakAssign();
  v25 = [v24 delegate];
  if (v25)
  {
    v26 = [v25 viewControllerForPresentingActionUserInterface_];
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = v23;
      [v26 addChildViewController_];
      v28 = [v26 view];
      if (v28)
      {
        v29 = v28;
        v30 = [v27 view];
        if (v30)
        {
          v31 = v30;
          [v29 addSubview_];

          [v27 didMoveToParentViewController_];
          v32 = [v27 view];

          if (v32)
          {
            [v32 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F940, qword_23E3B1D30);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_23E3B2730;
            v34 = [v27 view];

            if (v34)
            {
              v35 = [v34 leadingAnchor];

              v36 = [v26 view];
              if (v36)
              {
                v37 = v36;
                v38 = [v36 leadingAnchor];

                v39 = [v35 constraintEqualToAnchor_];
                *(v33 + 32) = v39;
                v40 = [v27 view];

                if (v40)
                {
                  v41 = [v40 trailingAnchor];

                  v42 = [v26 view];
                  if (v42)
                  {
                    v43 = v42;
                    v44 = [v42 trailingAnchor];

                    v45 = [v41 constraintEqualToAnchor_];
                    *(v33 + 40) = v45;
                    v46 = [v27 view];

                    if (v46)
                    {
                      v47 = [v46 topAnchor];

                      v48 = [v26 view];
                      if (v48)
                      {
                        v49 = v48;
                        v50 = [v48 topAnchor];

                        v51 = [v47 constraintEqualToAnchor_];
                        *(v33 + 48) = v51;
                        v52 = [v27 view];

                        if (v52)
                        {
                          v53 = [v52 bottomAnchor];

                          v54 = [v26 view];
                          if (v54)
                          {
                            v55 = v54;
                            v56 = objc_opt_self();
                            v57 = [v55 bottomAnchor];

                            v58 = [v53 constraintEqualToAnchor_];
                            *(v33 + 56) = v58;
                            sub_23E350638(0, &qword_27E33F948, 0x277CCAAD0);
                            v59 = sub_23E3AAA60();

                            [v56 activateConstraints_];

                            return;
                          }

                          goto LABEL_36;
                        }

LABEL_35:
                        __break(1u);
LABEL_36:
                        __break(1u);
                        return;
                      }

LABEL_34:
                      __break(1u);
                      goto LABEL_35;
                    }

LABEL_33:
                    __break(1u);
                    goto LABEL_34;
                  }

LABEL_32:
                  __break(1u);
                  goto LABEL_33;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_28;
    }
  }

  v60 = *MEMORY[0x277D7A440];
  sub_23E3AA0D0();
  v61 = sub_23E3AA0F0();
  v62 = sub_23E3AAB40();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_23E342000, v61, v62, "WFAskLLMActionUIKitUserInterface: Cannot get delegate from action user interface, not presenting running UI", v63, 2u);
    MEMORY[0x23EF096F0](v63, -1, -1);
  }

  else
  {
  }

  (v66[1])(v10, v65);
}

void sub_23E36C5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = nullsub_1;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23E364C0C;
  v5[3] = &block_descriptor_28;
  v4 = _Block_copy(v5);
  [a3 cancelPresentationWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_23E36C650(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_23E3AA9D0();
  v5 = v4;

  v2(v3, v5);
}

void sub_23E36C78C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    OUTLINED_FUNCTION_1_3();
    v11[1] = 1107296256;
    OUTLINED_FUNCTION_0_2();
    v11[2] = v8;
    v11[3] = &block_descriptor_37;
    v9 = _Block_copy(v11);
    v10 = v2;

    [v6 dismissEmbeddedPlatterWithCompletion:v9 interruptible:0];
    _Block_release(v9);
  }
}

void sub_23E36C874(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  aBlock[4] = sub_23E36D0E4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_43;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  v9.receiver = v8;
  v9.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  objc_msgSendSuper2(&v9, sel_cancelPresentationWithCompletionHandler_, v7);
  _Block_release(v7);
}

uint64_t sub_23E36C96C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = (a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  v4 = *(a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  if (v4)
  {
    v5 = v3[1];
    v6 = objc_opt_self();

    v7 = [v6 userCancelledError];
    v4(0, 0, v7);
    sub_23E34A688(v4);

    v8 = *v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  v10 = sub_23E34A688(v8);
  return a2(v10);
}

void sub_23E36CAC0(uint64_t a1, unint64_t a2)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = &v2[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
    v7 = *&v2[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
    if (v7)
    {
      v8 = v6[1];

      v7(a1, a2, 0);
      sub_23E34A688(v7);
      v9 = *v6;
    }

    else
    {
      v9 = 0;
    }

    v16 = v6[1];
    *v6 = 0;
    v6[1] = 0;

    sub_23E34A688(v9);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_allocObject();
      v12[2] = v2;
      v12[3] = a1;
      v12[4] = a2;
      OUTLINED_FUNCTION_1_3();
      v17[1] = 1107296256;
      OUTLINED_FUNCTION_0_2();
      v17[2] = v13;
      v17[3] = &block_descriptor_7;
      v14 = _Block_copy(v17);
      v15 = v2;

      [v11 dismissEmbeddedPlatterWithCompletion:v14 interruptible:0];
      _Block_release(v14);
    }
  }
}

void sub_23E36CC38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  aBlock[4] = sub_23E36CF8C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_13;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  v9.receiver = v8;
  v9.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  objc_msgSendSuper2(&v9, sel_cancelPresentationWithCompletionHandler_, v7);
  _Block_release(v7);
}

uint64_t sub_23E36CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  v4 = *(a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  if (v4)
  {
    v7 = v3[1];

    v4(a2, a3, 0);
    sub_23E34A688(v4);
    v8 = *v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[1];
  *v3 = 0;
  v3[1] = 0;

  return sub_23E34A688(v8);
}

id sub_23E36CDCC(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  v6 = objc_msgSendSuper2(&v8, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v6)
  {
  }

  return v6;
}

id sub_23E36CEA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E36CF98()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_23E36CFE8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_23E36BDC4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t sub_23E36CFF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E36D038()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_23E3AAA00();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_23E3AAA00();
    }

LABEL_9:
    __break(1u);
    return sub_23E3AAA00();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v1 = qword_27E33F950;

  return v1;
}

id sub_23E36D2A4()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E33F950 = result;
  return result;
}

void sub_23E36D330(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23E3A9E30();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_23E36D3A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_23E3AA920();
  v6 = OUTLINED_FUNCTION_0(v5);
  v35 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23E3AA950();
  v13 = OUTLINED_FUNCTION_0(v12);
  v33 = v14;
  v34 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v20 = result;
    v21 = *MEMORY[0x277CE8948];
    v22 = sub_23E3AA9D0();
    sub_23E34E5A0(v22, v23, v20, &selRef_setOAuthConsumerKey_);
    v24 = *MEMORY[0x277CE8950];
    v25 = sub_23E3AA9D0();
    sub_23E34E5A0(v25, v26, v20, &selRef_setOAuthConsumerSecret_);
    sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
    v27 = sub_23E3AAB60();
    v28 = swift_allocObject();
    v28[2] = v2;
    v28[3] = v20;
    v28[4] = a1;
    v28[5] = a2;
    aBlock[4] = sub_23E36F5E8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E364C0C;
    aBlock[3] = &block_descriptor_8;
    v29 = _Block_copy(aBlock);
    v30 = v2;
    v31 = v20;

    sub_23E3AA940();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23E36F64C(&qword_27E33EAD0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
    sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
    sub_23E3AABF0();
    MEMORY[0x23EF08800](0, v18, v11, v29);
    _Block_release(v29);

    (*(v35 + 8))(v11, v5);
    return (*(v33 + 8))(v18, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23E36D704(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v7 = type metadata accessor for TumblrWebView.LoadingState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = type metadata accessor for TumblrWebView(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a2;
  v18[1] = 0x726C626D75746677;
  v18[2] = 0xE800000000000000;
  v19 = *(v16 + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  __swift_storeEnumTagSinglePayload(v13, 1, 2, v20);
  sub_23E36FB1C(v13, v11, type metadata accessor for TumblrWebView.LoadingState);
  v21 = a2;
  sub_23E3AA7B0();
  sub_23E36F694(v13, type metadata accessor for TumblrWebView.LoadingState);
  v22 = (v18 + *(v14 + 28));
  *v22 = a3;
  v22[1] = a4;
  sub_23E36F64C(&qword_27E33F9C0, type metadata accessor for TumblrWebView);

  sub_23E3AAB90();
  return sub_23E36F694(v18, type metadata accessor for TumblrWebView);
}

id sub_23E36D9A4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFTumblrAccessResourceUserInterface();
  v5 = objc_msgSendSuper2(&v7, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_23E36DA5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTumblrAccessResourceUserInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E36DAB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TumblrWebView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v10 = qword_27E33F950;
  v11 = sub_23E3AA9B0();
  v12 = sub_23E3AA9B0();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v22 = sub_23E3AA9D0();
  v15 = v14;

  sub_23E36FB1C(v1, v9, type metadata accessor for TumblrWebView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_23E36FB80(v9, v17 + v16);
  sub_23E36FB1C(v1, v7, type metadata accessor for TumblrWebView);
  v18 = swift_allocObject();
  sub_23E36FB80(v7, v18 + v16);
  v23 = 0;
  result = sub_23E3AA7B0();
  v20 = v24;
  v21 = v25;
  *a1 = v22;
  *(a1 + 8) = v15;
  *(a1 + 16) = 257;
  *(a1 + 24) = sub_23E36FBE4;
  *(a1 + 32) = v17;
  *(a1 + 40) = sub_23E36FD78;
  *(a1 + 48) = v18;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  return result;
}

uint64_t sub_23E36DD34@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v57 = type metadata accessor for WebView(0);
  v1 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v49 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_23E3A9E90();
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EED0, &unk_23E3B19D8);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v46 - v8;
  v9 = type metadata accessor for TumblrWebView(0);
  v10 = v9 - 8;
  v51 = *(v9 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4D0, &qword_23E3B1490);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EEE0, &qword_23E3B19E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33FA20, &qword_23E3B19F0);
  v21 = *(*(v53 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v53);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  v27 = type metadata accessor for TumblrWebView.LoadingState(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v10 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
  sub_23E3AA7C0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  if (__swift_getEnumTagSinglePayload(v30, 2, v32))
  {
    sub_23E3AA180();
    sub_23E3AA8E0();
    sub_23E3AA270();
    (*(v13 + 32))(v20, v16, v12);
    memcpy(&v20[*(v17 + 36)], __src, 0x70uLL);
    v33 = v52;
    sub_23E36FB1C(v58, v52, type metadata accessor for TumblrWebView);
    v34 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v35 = swift_allocObject();
    sub_23E36FB80(v33, v35 + v34);
    sub_23E35449C(v20, v24, &unk_27E33EEE0, &qword_23E3B19E8);
    v36 = &v24[*(v53 + 36)];
    *v36 = sub_23E36FE5C;
    v36[1] = v35;
    v36[2] = 0;
    v36[3] = 0;
    sub_23E35449C(v24, v26, &unk_27E33FA20, &qword_23E3B19F0);
    sub_23E3544EC(v26, v55, &unk_27E33FA20, &qword_23E3B19F0);
    swift_storeEnumTagMultiPayload();
    sub_23E35727C();
    sub_23E36F64C(&qword_27E33FA40, type metadata accessor for WebView);
    sub_23E3AA480();
    return sub_23E34A698(v26, &unk_27E33FA20, &qword_23E3B19F0);
  }

  else
  {
    v38 = v48;
    v39 = v47;
    v40 = v50;
    (*(v48 + 32))(v47, v30, v50);
    (*(v38 + 16))(v46, v39, v40);
    v41 = v49;
    sub_23E3A9D90();
    v42 = v52;
    sub_23E36FB1C(v58, v52, type metadata accessor for TumblrWebView);
    v43 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v44 = swift_allocObject();
    sub_23E36FB80(v42, v44 + v43);
    v45 = (v41 + *(v57 + 20));
    *v45 = &unk_23E3B2830;
    v45[1] = v44;
    sub_23E36FB1C(v41, v55, type metadata accessor for WebView);
    swift_storeEnumTagMultiPayload();
    sub_23E35727C();
    sub_23E36F64C(&qword_27E33FA40, type metadata accessor for WebView);
    sub_23E3AA480();
    sub_23E36F694(v41, type metadata accessor for WebView);
    return (*(v38 + 8))(v39, v40);
  }
}

uint64_t sub_23E36E4C0(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for TumblrWebView(0) + 28);
  v2 = *(v1 + 8);
  return (*v1)(0, 0);
}

uint64_t sub_23E36E504(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_23E3A9DB0();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_23E3A9E90();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_23E3AAAC0();
  v2[11] = sub_23E3AAAB0();
  v11 = sub_23E3AAA80();

  return MEMORY[0x2822009F8](sub_23E36E68C, v11, v10);
}

uint64_t sub_23E36E68C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  v8 = [v7 request];
  sub_23E3A9D80();

  sub_23E3A9DA0();
  (*(v5 + 8))(v3, v4);
  if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
  {
    sub_23E34A698(v0[4], &qword_27E33EB38, &qword_23E3B16C0);
LABEL_10:
    v14 = 1;
    goto LABEL_13;
  }

  v9 = v0[3];
  (*(v0[9] + 32))(v0[10], v0[4], v0[8]);
  v10 = sub_23E3A9E70();
  if (!v11)
  {
LABEL_9:
    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_10;
  }

  if (v10 == *(v9 + 8) && v11 == *(v9 + 16))
  {
  }

  else
  {
    v13 = sub_23E3AACA0();

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  v18 = *v0[3];
  v19 = sub_23E3A9E50();
  [v18 handleOpenURL_];

  (*(v16 + 8))(v15, v17);
  v14 = 0;
LABEL_13:
  v20 = v0[10];
  v21 = v0[7];
  v22 = v0[4];

  v23 = v0[1];

  return v23(v14);
}

void sub_23E36E878(uint64_t a1)
{
  v2 = type metadata accessor for TumblrWebView(0);
  v3 = v2 - 8;
  v27 = *(v2 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = type metadata accessor for TumblrWebView.LoadingState(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = *(v3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
  sub_23E3AA7C0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 2, v16);
  sub_23E36F694(v14, type metadata accessor for TumblrWebView.LoadingState);
  if (EnumTagSinglePayload == 1)
  {
    __swift_storeEnumTagSinglePayload(v12, 2, 2, v16);
    sub_23E36FB1C(v12, v9, type metadata accessor for TumblrWebView.LoadingState);
    sub_23E3AA7D0();
    sub_23E36F694(v12, type metadata accessor for TumblrWebView.LoadingState);
    v18 = *(a1 + 8);
    v26 = *a1;
    v19 = *(a1 + 16);
    v20 = sub_23E3AA9B0();
    sub_23E36FB1C(a1, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TumblrWebView);
    v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v22 = swift_allocObject();
    sub_23E36FB80(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v32 = sub_23E36FED8;
    v33 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_23E36F318;
    v31 = &block_descriptor_33_0;
    v23 = _Block_copy(&aBlock);

    sub_23E36FB1C(a1, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TumblrWebView);
    v24 = swift_allocObject();
    sub_23E36FB80(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v21);
    v32 = sub_23E36FF38;
    v33 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_23E36F4CC;
    v31 = &block_descriptor_39_0;
    v25 = _Block_copy(&aBlock);

    [v26 authenticate:v20 urlBlock:v23 callback:v25];
    _Block_release(v25);
    _Block_release(v23);
  }
}

uint64_t sub_23E36EC24(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v41 = a1;
  v2 = sub_23E3AA920();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23E3AA950();
  v36 = *(v38 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TumblrWebView(0);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_23E3A9E90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  sub_23E3544EC(v41, v12, &qword_27E33EB38, &qword_23E3B16C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_23E34A698(v12, &qword_27E33EB38, &qword_23E3B16C0);
  }

  v31 = *(v14 + 32);
  v32 = v18;
  v31(v18, v12);
  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v41 = sub_23E3AAB60();
  v20 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E36FB1C(v34, v21, type metadata accessor for TumblrWebView);
  (*(v14 + 16))(v20, v18, v13);
  v22 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v23 = (v8 + *(v14 + 80) + v22) & ~*(v14 + 80);
  v24 = swift_allocObject();
  sub_23E36FB80(v21, v24 + v22);
  (v31)(v24 + v23, v20, v13);
  aBlock[4] = sub_23E37022C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_45;
  v25 = _Block_copy(aBlock);

  v26 = v35;
  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E36F64C(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
  v27 = v37;
  v28 = v40;
  sub_23E3AABF0();
  v29 = v41;
  MEMORY[0x23EF08800](0, v26, v27, v25);
  _Block_release(v25);

  (*(v39 + 8))(v27, v28);
  (*(v36 + 8))(v26, v38);
  return (*(v14 + 8))(v32, v13);
}

uint64_t sub_23E36F1B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TumblrWebView.LoadingState(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = sub_23E3A9E90();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  __swift_storeEnumTagSinglePayload(v9, 0, 2, v11);
  LODWORD(a2) = *(type metadata accessor for TumblrWebView(0) + 24);
  sub_23E36FB1C(v9, v7, type metadata accessor for TumblrWebView.LoadingState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
  sub_23E3AA7D0();
  return sub_23E36F694(v9, type metadata accessor for TumblrWebView.LoadingState);
}

uint64_t sub_23E36F318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    sub_23E3A9E60();
    v10 = sub_23E3A9E90();
    v11 = 0;
  }

  else
  {
    v10 = sub_23E3A9E90();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v11, 1, v10);

  v9(v7);

  return sub_23E34A698(v7, &qword_27E33EB38, &qword_23E3B16C0);
}

uint64_t sub_23E36F40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && a4)
  {
    v12 = objc_opt_self();
    sub_23E36FFC8(a1, a2, v12);
    sub_23E370020(a3, a4, v12);
    v13 = a6 + *(type metadata accessor for TumblrWebView(0) + 28);
    v14 = *(v13 + 8);
    return (*v13)(1, 0);
  }

  else
  {
    v16 = a6 + *(type metadata accessor for TumblrWebView(0) + 28);
    v17 = *(v16 + 8);
    return (*v16)(0, a5);
  }
}

uint64_t sub_23E36F4CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_23E3AA9D0();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = sub_23E3AA9D0();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

uint64_t sub_23E36F5A0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E36F64C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E36F694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23E36F6EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E36F738(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E36F7E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E36F86C()
{
  sub_23E350638(319, &qword_27E33F9E8, 0x277CE87E8);
  if (v0 <= 0x3F)
  {
    sub_23E36F920();
    if (v1 <= 0x3F)
    {
      sub_23E3496A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23E36F920()
{
  if (!qword_27E33F9F0)
  {
    type metadata accessor for TumblrWebView.LoadingState(255);
    v0 = sub_23E3AA7F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33F9F0);
    }
  }
}

uint64_t sub_23E36F98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E36F9F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_23E36FA60()
{
  sub_23E36FAB8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_23E36FAB8()
{
  if (!qword_27E33FA10)
  {
    v0 = sub_23E3A9E90();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33FA10);
    }
  }
}

uint64_t sub_23E36FB1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23E36FB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TumblrWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36FBE4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_3_2();
  return sub_23E36DD34(a1);
}

uint64_t objectdestroy_16Tm_0()
{
  v2 = type metadata accessor for TumblrWebView(0);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v1 + v5 + 16);

  v9 = v1 + v5 + *(v0 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  if (!__swift_getEnumTagSinglePayload(v9, 2, v10))
  {
    v11 = sub_23E3A9E90();
    OUTLINED_FUNCTION_13(v11);
    (*(v12 + 8))(v9);
  }

  v13 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG") + 28));

  v14 = *(v1 + v5 + *(v0 + 28) + 8);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_23E36FD90(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E357180;

  return sub_23E36E504(a1, v1 + v5);
}

uint64_t sub_23E36FE74(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_1_4();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_3_2();

  return a1(v1 + v4);
}

uint64_t sub_23E36FED8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_3_2();

  return sub_23E36EC24(a1, v1 + v5);
}

uint64_t sub_23E36FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_4();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_3_2();

  return sub_23E36F40C(a1, a2, a3, a4, a5, v5 + v13);
}

void sub_23E36FFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();
  [a3 setTumblrOAuthToken_];
}

void sub_23E370020(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();
  [a3 setTumblrOAuthTokenSecret_];
}

uint64_t sub_23E370078()
{
  v2 = type metadata accessor for TumblrWebView(0);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_23E3A9E90();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v11 = *(v9 + 80);
  v21 = *(v12 + 64);

  v13 = *(v1 + v5 + 16);

  v14 = v1 + v5 + *(v0 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  if (!__swift_getEnumTagSinglePayload(v14, 2, v15))
  {
    (*(v10 + 8))(v14, v8);
  }

  v16 = v4 | v11;
  v17 = (v5 + v7 + v11) & ~v11;
  v18 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG") + 28));

  v19 = *(v1 + v5 + *(v0 + 28) + 8);

  (*(v10 + 8))(v1 + v17, v8);

  return MEMORY[0x2821FE8E8](v1, v17 + v21, v16 | 7);
}

uint64_t sub_23E37022C()
{
  v1 = *(type metadata accessor for TumblrWebView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_23E3A9E90() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_23E36F1B8(v0 + v2, v5);
}

uint64_t OUTLINED_FUNCTION_1_4()
{
  v0 = type metadata accessor for TumblrWebView(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

id sub_23E37038C()
{
  v1 = v0;
  v2 = sub_23E3A9D60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33FA98, &qword_23E3B2938);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v36[-v20];
  v22 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView;
  v23 = *(v1 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView);
  if (!v23)
  {
    v25 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_model;
    (*(v5 + 104))(&v36[-v20], *MEMORY[0x277CFC140], v2);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v2);
    v26 = *(v11 + 48);
    sub_23E3724F0(v1 + v25, v14);
    sub_23E3724F0(v21, &v14[v26]);
    OUTLINED_FUNCTION_2_4(v14);
    if (v27)
    {
      sub_23E3591BC(v21, &qword_27E33F938, &unk_23E3B2940);
      OUTLINED_FUNCTION_2_4(&v14[v26]);
      if (v27)
      {
        OUTLINED_FUNCTION_8_1();
        sub_23E3591BC(v14, &qword_27E33F938, &unk_23E3B2940);
LABEL_15:
        v31 = objc_allocWithZone(sub_23E3AA040());
        v32 = sub_23E3A9FF0();
        v33 = *(v1 + v22);
        *(v1 + v22) = v32;
        v24 = v32;

        v23 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      sub_23E3724F0(v14, v19);
      OUTLINED_FUNCTION_2_4(&v14[v26]);
      if (!v27)
      {
        (*(v5 + 32))(v10, &v14[v26], v2);
        OUTLINED_FUNCTION_5_0();
        sub_23E3725E0(v28, v29);
        v37 = sub_23E3AA9A0();
        v30 = *(v5 + 8);
        v30(v10, v2);
        sub_23E3591BC(v21, &qword_27E33F938, &unk_23E3B2940);
        v30(v19, v2);
        sub_23E3591BC(v14, &qword_27E33F938, &unk_23E3B2940);
        if (v37)
        {
          OUTLINED_FUNCTION_8_1();
        }

        goto LABEL_15;
      }

      sub_23E3591BC(v21, &qword_27E33F938, &unk_23E3B2940);
      (*(v5 + 8))(v19, v2);
    }

    sub_23E3591BC(v14, &qword_27E33FA98, &qword_23E3B2938);
    goto LABEL_15;
  }

  v24 = *(v1 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView);
LABEL_16:
  v34 = v23;
  return v24;
}

id sub_23E370758(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView] = 0;
  v5 = &v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_isDismissing] = 0;
  v6 = &v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_attribution] = a1;
  sub_23E3724F0(a2, &v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_model]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for WFAskLLMActionViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  sub_23E3591BC(a2, &qword_27E33F938, &unk_23E3B2940);
  return v7;
}

id sub_23E370840()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WFAskLLMActionViewController();
  result = objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler + 8];

    v2(v4);
    return sub_23E34A688(v2);
  }

  return result;
}

uint64_t sub_23E3708FC(char a1)
{
  v2 = v1;
  v4 = sub_23E3AA920();
  v5 = OUTLINED_FUNCTION_0(v4);
  v86 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v85 = v10 - v9;
  v11 = sub_23E3AA950();
  v12 = OUTLINED_FUNCTION_0(v11);
  v83 = v13;
  v84 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v82 = v17 - v16;
  v81 = sub_23E3AA050();
  v18 = OUTLINED_FUNCTION_0(v81);
  v79 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v80 = (v23 - v22);
  v24 = sub_23E3A9D60();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33FA98, &qword_23E3B2938);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v77[-v36];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v77[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40);
  v44 = &v77[-v43];
  v45 = type metadata accessor for WFAskLLMActionViewController();
  v88.receiver = v2;
  v88.super_class = v45;
  objc_msgSendSuper2(&v88, sel_viewDidAppear_, a1 & 1);
  v46 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_model;
  (*(v27 + 104))(v44, *MEMORY[0x277CFC140], v24);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v24);
  v47 = *(v34 + 56);
  sub_23E3724F0(&v2[v46], v37);
  sub_23E3724F0(v44, &v37[v47]);
  OUTLINED_FUNCTION_2_4(v37);
  if (v48)
  {
    sub_23E3591BC(v44, &qword_27E33F938, &unk_23E3B2940);
    OUTLINED_FUNCTION_2_4(&v37[v47]);
    if (v48)
    {
      sub_23E3591BC(v37, &qword_27E33F938, &unk_23E3B2940);
LABEL_14:
      v59 = sub_23E37038C();
      sub_23E3AAA00();
      if (qword_27E33E560 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v60 = OUTLINED_FUNCTION_11_0();
      v61 = OUTLINED_FUNCTION_11_0();

      v63 = OUTLINED_FUNCTION_10_0(v62, sel_localizedStringForKey_value_table_);

      sub_23E3AA9D0();
      sub_23E3A9FC0();

      v64 = *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
      v65 = objc_opt_self();
      v55 = v64;
      v66 = [v65 labelColor];
      v67 = v79;
      v68 = v80;
      *v80 = v66;
      (*(v67 + 104))(v68, *MEMORY[0x277D7D678], v81);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  sub_23E3724F0(v37, v42);
  OUTLINED_FUNCTION_2_4(&v37[v47]);
  if (v48)
  {
    sub_23E3591BC(v44, &qword_27E33F938, &unk_23E3B2940);
    (*(v27 + 8))(v42, v24);
LABEL_9:
    sub_23E3591BC(v37, &qword_27E33FA98, &qword_23E3B2938);
    goto LABEL_10;
  }

  (*(v27 + 32))(v32, &v37[v47], v24);
  OUTLINED_FUNCTION_5_0();
  sub_23E3725E0(v56, v57);
  v78 = sub_23E3AA9A0();
  v58 = *(v27 + 8);
  v58(v32, v24);
  sub_23E3591BC(v44, &qword_27E33F938, &unk_23E3B2940);
  v58(v42, v24);
  sub_23E3591BC(v37, &qword_27E33F938, &unk_23E3B2940);
  if (v78)
  {
    goto LABEL_14;
  }

LABEL_10:
  v49 = sub_23E37038C();
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v50 = OUTLINED_FUNCTION_11_0();
  v51 = OUTLINED_FUNCTION_11_0();

  v53 = OUTLINED_FUNCTION_10_0(v52, sel_localizedStringForKey_value_table_);

  sub_23E3AA9D0();
  sub_23E3A9FC0();

  v54 = *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
  (*(v79 + 104))(v80, *MEMORY[0x277D7D670], v81);
  v55 = v54;
LABEL_17:
  sub_23E3A9FD0();

  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v69 = sub_23E3AAB60();
  OUTLINED_FUNCTION_0_0();
  v70 = swift_allocObject();
  *(v70 + 16) = v2;
  aBlock[4] = sub_23E3725D8;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  aBlock[2] = v71;
  aBlock[3] = &block_descriptor_36;
  v72 = _Block_copy(aBlock);
  v73 = v2;

  v74 = v82;
  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E3725E0(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E35054C();
  v75 = v85;
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v74, v75, v72);
  _Block_release(v72);

  (*(v86 + 8))(v75, v4);
  return (*(v83 + 8))(v74, v84);
}

void sub_23E371120(char *a1)
{
  v2 = sub_23E37038C();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView;
  v4 = *&a1[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
  sub_23E3725E0(&qword_27E33FAA8, type metadata accessor for WFAskLLMActionViewController);
  v5 = a1;
  v6 = v4;
  sub_23E3AA020();

  v7 = [v5 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 addSubview_];

  [v5 platterContentSize];
  v10 = v9;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F940, qword_23E3B1D30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23E3B2850;
  v14 = [*&a1[v3] centerXAnchor];
  v15 = [v5 view];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v15 centerXAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v18;
  v19 = [*&a1[v3] leadingAnchor];
  v20 = [v5 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintGreaterThanOrEqualToAnchor:v22 constant:8.0];
  *(v13 + 40) = v23;
  v24 = [*&a1[v3] trailingAnchor];
  v25 = [v5 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v24 constraintLessThanOrEqualToAnchor:v27 constant:-8.0];
  *(v13 + 48) = v28;
  v29 = [*&a1[v3] bottomAnchor];
  v30 = [v5 view];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintLessThanOrEqualToAnchor_];
  *(v13 + 56) = v33;
  v34 = [*&a1[v3] widthAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v13 + 64) = v35;
  v36 = [v5 view];
  if (!v36)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v37 = v36;
  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v38 = 12.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = objc_opt_self();
  v40 = [v37 keyboardLayoutGuide];

  v41 = [v40 topAnchor];
  v42 = [*&a1[v3] bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:v38];

  *(v13 + 72) = v43;
  sub_23E350638(0, &qword_27E33F948, 0x277CCAAD0);
  v44 = sub_23E3AAA60();

  [v39 activateConstraints_];

  v45 = *&a1[v3];
  v46 = sub_23E3A9FA0();

  [v46 becomeFirstResponder];
  v47 = *&a1[v3];
  sub_23E3AA030();
}

void sub_23E3716A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler];
  v9 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler];
  v10 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler + 8];
  *v8 = a2;
  *(v8 + 1) = a3;

  sub_23E34A688(v9);
  if (a1)
  {
    v11 = a1;
    v12 = sub_23E37038C();
    sub_23E3AA030();

    v13 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView;
    v14 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
    sub_23E3AA010();

    v15 = *&v4[v13];
    sub_23E3A9FB0();

    v16 = *&v4[v13];
    sub_23E3AA000();

    v17 = *&v4[v13];
    sub_23E3A9FE0();

    if ([v4 isViewLoaded])
    {
      v18 = [objc_allocWithZone(WFAskLLMResponseViewController) init];
      v19 = swift_allocObject();
      *(v19 + 16) = v4;
      *(v19 + 24) = v18;
      v33 = sub_23E3724C8;
      v34 = v19;
      v29 = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      OUTLINED_FUNCTION_0_2();
      v31 = v20;
      v32 = &block_descriptor_9;
      v21 = _Block_copy(&v29);
      v22 = v4;
      v23 = v18;

      [v23 updateContent:v11 withCompletionHandler:{v21, v29, v30}];

      _Block_release(v21);
    }

    else
    {
      v24 = swift_allocObject();
      *(v24 + 2) = v4;
      *(v24 + 3) = v11;
      *(v24 + 4) = a2;
      *(v24 + 5) = a3;
      v25 = &v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
      v26 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
      v27 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler + 8];
      *v25 = sub_23E37245C;
      v25[1] = v24;

      v28 = v4;

      sub_23E34A688(v26);
    }
  }
}

void sub_23E3718F4(void (*a1)(), uint64_t a2, char a3)
{
  v3[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_isDismissing] = 1;
  v7 = objc_opt_self();
  OUTLINED_FUNCTION_0_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v17 = sub_23E3725D0;
  v18 = v8;
  OUTLINED_FUNCTION_7_1();
  v14 = 1107296256;
  v15 = sub_23E364C0C;
  v16 = &block_descriptor_27;
  v9 = _Block_copy(aBlock);
  v10 = v3;

  [v7 animateWithDuration:v9 animations:0.2];
  _Block_release(v9);
  v17 = a1;
  v18 = a2;
  OUTLINED_FUNCTION_7_1();
  v14 = 1107296256;
  v15 = sub_23E364C0C;
  v16 = &block_descriptor_30;
  v11 = _Block_copy(aBlock);

  v12.receiver = v10;
  v12.super_class = type metadata accessor for WFAskLLMActionViewController();
  objc_msgSendSuper2(&v12, sel_dismissEmbeddedPlatterWithCompletion_interruptible_, v11, a3 & 1);
  _Block_release(v11);
}

void sub_23E371A78()
{
  v0 = sub_23E37038C();
  [v0 setAlpha_];
}

double sub_23E371B60()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for WFAskLLMActionViewController();
  objc_msgSendSuper2(&v13, sel_platterContentSize);
  v2 = v1;
  v3 = sub_23E37038C();
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  CGRectGetMaxY(v14);
  [v0 platterOffsetFromPresentationEdge];
  return v2;
}

void sub_23E371CB4()
{
  *(v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_isDismissing) = 0;
  v2 = (v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_23E3AAC60();
  __break(1u);
}

id sub_23E371DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAskLLMActionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WFAskLLMActionViewController()
{
  result = qword_27E33FA80;
  if (!qword_27E33FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E371F00()
{
  sub_23E371FBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23E371FBC()
{
  if (!qword_27E33FA90)
  {
    sub_23E3A9D60();
    v0 = sub_23E3AABB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33FA90);
    }
  }
}

uint64_t sub_23E372014()
{
  v1 = v0;
  v2 = sub_23E3AAAF0();
  v3 = sub_23E37038C();
  v4 = sub_23E3A9FA0();

  [v4 setKeyboardAppearance_];
  result = [v1 view];
  if (result)
  {
    v6 = result;
    v7 = [result keyboardLayoutGuide];

    [v7 useLightEffectsBackgroundBelowView_];
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23E3720D8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 keyboardLayoutGuide];

    [v3 removeLightEffectsView];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E372160()
{
  v1 = v0;
  v2 = sub_23E37038C();
  v3 = sub_23E3A9FA0();

  v5 = sub_23E3723A4(v3);
  v6 = v4;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (v6)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    sub_23E36CAC0(v10, v7);
  }

  else
  {
  }

  v11 = *(v1 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v12 = qword_27E33F950;
  v13 = sub_23E3AA9B0();
  v14 = sub_23E3AA9B0();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  sub_23E3AA9D0();
  sub_23E3A9FC0();

  sub_23E3AA000();
  sub_23E3A9FE0();
  return sub_23E3AA010();
}

void sub_23E3722F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v1 = sub_23E3A9FA0();
    v2 = sub_23E3723A4(v1);
    if (v3)
    {
      sub_23E36CAC0(v2, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23E3723A4(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E3AA9D0();

  return v3;
}

uint64_t sub_23E372414()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E372488()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E3724F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E372560()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E37259C()
{
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E3725E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

id OUTLINED_FUNCTION_10_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_23E3AA9B0();
}

uint64_t sub_23E3727E0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_layer);
  objc_opt_self();
  return swift_dynamicCastObjCClassUnconditional();
}

id sub_23E372850(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_23E3728DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23E372970()
{
  v0 = type metadata accessor for WFShazamMediaActionView.ListeningView();
  v4.receiver = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4.super_class = v0;
  v1 = v4.receiver;
  v2 = objc_msgSendSuper2(&v4, sel_layer);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startActiveListeningAnimation];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id WFShazamMediaActionView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *WFShazamMediaActionView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___WFShazamMediaActionView_listeningView;
  *&v0[v2] = sub_23E372970();
  v3 = OBJC_IVAR___WFShazamMediaActionView_label;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v5 = qword_27E33F950;
  v6 = sub_23E3AA9B0();
  v7 = sub_23E3AA9B0();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E3AA9D0();
  v11 = v10;

  sub_23E373374(v9, v11, v4);
  v12 = [objc_opt_self() boldSystemFontOfSize_];
  [v4 setFont_];

  v13 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  [v4 setTextAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v3] = v4;
  v44.receiver = v0;
  v44.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = OBJC_IVAR___WFShazamMediaActionView_listeningView;
  v16 = *&v14[OBJC_IVAR___WFShazamMediaActionView_listeningView];
  v17 = v14;
  [v17 addSubview_];
  v18 = OBJC_IVAR___WFShazamMediaActionView_label;
  [v17 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F940, qword_23E3B1D30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23E3B2950;
  v21 = [*&v14[v15] widthAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v20 + 32) = v22;
  v23 = [*&v14[v15] heightAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v20 + 40) = v24;
  v25 = [*&v14[v15] centerXAnchor];
  v26 = [v17 centerXAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v20 + 48) = v27;
  v28 = [*&v14[v15] centerYAnchor];
  v29 = [v17 centerYAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v20 + 56) = v30;
  v31 = [*&v17[v18] leadingAnchor];
  v32 = [v17 layoutMarginsGuide];

  v33 = [v32 leadingAnchor];
  v34 = [v31 constraintEqualToAnchor_];

  *(v20 + 64) = v34;
  v35 = [*&v17[v18] trailingAnchor];
  v36 = [v17 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v35 constraintEqualToAnchor_];

  *(v20 + 72) = v38;
  v39 = [*&v17[v18] centerYAnchor];
  v40 = [v17 centerYAnchor];

  v41 = [v39 constraintEqualToAnchor:v40 constant:72.0];
  *(v20 + 80) = v41;
  sub_23E350638(0, &qword_27E33F948, 0x277CCAAD0);
  v42 = sub_23E3AAA60();

  [v19 activateConstraints_];

  return v17;
}

void sub_23E373030()
{
  v1 = OBJC_IVAR___WFShazamMediaActionView_listeningView;
  *(v0 + v1) = sub_23E372970();
  v2 = OBJC_IVAR___WFShazamMediaActionView_label;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = qword_27E33F950;
  v5 = sub_23E3AA9B0();
  v6 = sub_23E3AA9B0();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = sub_23E3AA9D0();
  v10 = v9;

  sub_23E373374(v8, v10, v3);
  v11 = [objc_opt_self() boldSystemFontOfSize_];
  [v3 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  sub_23E3AAC60();
  __break(1u);
}

id WFShazamMediaActionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_23E3732F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23E373374(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();

  [a3 setText_];
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E3432B8 == -1)
  {
    if (qword_27E3432C0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27E3432C0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E3432B0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27E3432A4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E3432A4 >= a3)
      {
        result = dword_27E3432A8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27E3432C0;
  if (qword_27E3432C0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E3432C0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EF08F60](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E3432A4, &dword_27E3432A8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  memset(&v5, 0, sizeof(v5));
  if (dladdr(WFCurrentBundle, &v5) && v5.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_23E342000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

void sub_23E378650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak((v31 + 40));
  _Unwind_Resume(a1);
}

void sub_23E37ADB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__414(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E37D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23E382768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E3883E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWKWebViewClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:18 description:{@"Unable to find class %s", "WKWebView"}];

    __break(1u);
  }
}

void __getWKWebViewConfigurationClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebViewConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:19 description:{@"Unable to find class %s", "WKWebViewConfiguration"}];

    __break(1u);
  }
}

void WebKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __WebKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C368F8;
    v6 = 0;
    WebKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __WebKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E388B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSFSafariViewControllerConfigurationClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFSafariViewControllerConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSafariViewControllerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:23 description:{@"Unable to find class %s", "SFSafariViewControllerConfiguration"}];

    __break(1u);
  }
}

void __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFSafariViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:22 description:{@"Unable to find class %s", "SFSafariViewController"}];

    __break(1u);
  }
}

void SafariServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SafariServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C368E0;
    v6 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAVMetadataObjectTypeUPCECodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeUPCECode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeUPCECodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AVFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C36A50;
    v7 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:17 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getAVMetadataObjectTypeCode39CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode39Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode39CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode39Mod43Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeEAN13CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeEAN13Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeEAN13CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeEAN8CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeEAN8Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeEAN8CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeCode93CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode93Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode93CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeCode128CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode128Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode128CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypePDF417CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypePDF417Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypePDF417CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeQRCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeQRCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeQRCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeAztecCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeAztecCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeAztecCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeInterleaved2of5Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeITF14CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeITF14Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeITF14CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeDataMatrixCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E38CF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVCaptureSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:15 description:{@"Unable to find class %s", "AVCaptureSession"}];

    __break(1u);
  }
}

void *__getAVCaptureSessionPresetPhotoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVCaptureSessionPresetPhoto");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionPresetPhotoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_2446()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_2451)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AVFoundationLibraryCore_block_invoke_2452;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C36A68;
    v7 = 0;
    AVFoundationLibraryCore_frameworkLibrary_2451 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_2451;
  if (!AVFoundationLibraryCore_frameworkLibrary_2451)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:13 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void __getAVCaptureDeviceInputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceInput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceInputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceInputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:16 description:{@"Unable to find class %s", "AVCaptureDeviceInput"}];

    __break(1u);
  }
}

uint64_t __AVFoundationLibraryCore_block_invoke_2452(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_2451 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E38D95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInDualCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInWideAngleCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceDiscoverySessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceDiscoverySession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceDiscoverySessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceDiscoverySessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:14 description:{@"Unable to find class %s", "AVCaptureDeviceDiscoverySession"}];

    __break(1u);
  }
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getAVFoundationErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVFoundationErrorDomainSymbolLoc_ptr;
  v9 = getAVFoundationErrorDomainSymbolLoc_ptr;
  if (!getAVFoundationErrorDomainSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_2446();
    v7[3] = dlsym(v1, "AVFoundationErrorDomain");
    getAVFoundationErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSErrorDomain getAVFoundationErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E38DC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVFoundationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVFoundationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVFoundationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E38DE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVCapturePhotoSettingsClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCapturePhotoSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCapturePhotoSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCapturePhotoSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:18 description:{@"Unable to find class %s", "AVCapturePhotoSettings"}];

    __break(1u);
  }
}

void sub_23E38E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVCapturePhotoOutputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCapturePhotoOutput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCapturePhotoOutputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCapturePhotoOutputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:17 description:{@"Unable to find class %s", "AVCapturePhotoOutput"}];

    __break(1u);
  }
}

void sub_23E38FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __QuickLookLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C36AC8;
    v9 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFMarkupActionUIKitUserInterface.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFMarkupActionUIKitUserInterface.m" lineNumber:19 description:{@"Unable to find class %s", "QLPreviewController"}];

LABEL_10:
    __break(1u);
  }

  getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E3910F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  _Block_object_dispose(&a30, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2913(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFExtensionItemsForActivityItemValues_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 userInfo];
  if (v3)
  {
    v4 = [v7 userInfo];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (*(a1 + 32))
  {
    v6 = MEMORY[0x277CBEC38];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D54798]];
  [v7 setUserInfo:v5];
}

void sub_23E391D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, char a41)
{
  objc_destroyWeak(&a40);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

id getSLComposeViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLComposeViewControllerClass_softClass;
  v7 = getSLComposeViewControllerClass_softClass;
  if (!getSLComposeViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSLComposeViewControllerClass_block_invoke;
    v3[3] = &unk_278C37610;
    v3[4] = &v4;
    __getSLComposeViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E392054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFExtensionCommunicationError(void *a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = WFLocalizedStringWithKey(@"App Communication Failure (iOS)", @"App Communication Failure");
  v3 = WFLocalizedStringWithKey(@"Unable to communicate with selected app. (iOS)", @"Unable to communicate with selected app.");
  v4 = *MEMORY[0x277CCA450];
  v10[0] = *MEMORY[0x277CCA470];
  v10[1] = v4;
  v11[0] = v2;
  v11[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = [v5 mutableCopy];

  if (v1)
  {
    [v6 setObject:v1 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFShareActionUIKitUserInterfaceErrorDomain" code:1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __WFConfiguredViewControllerForShareExtension_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] userCancelledError];
    (*(v2 + 16))(v2, 0, v5);
  }
}

uint64_t __WFConfiguredViewControllerForActionExtension_block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __WFConfiguredViewControllerForActionExtension_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] userCancelledError];
    v7 = v6;
    if (v4)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [v6 domain];
      v10 = [v7 code];
      v14 = *MEMORY[0x277CCA7E8];
      v15[0] = v4;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v12 = [v8 errorWithDomain:v9 code:v10 userInfo:v11];
    }

    else
    {
      v12 = v6;
    }

    (*(v5 + 16))(v5, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __WFConfiguredViewControllerForActionExtension_block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v3 = WFExtensionCommunicationError(0);
    (*(v2 + 16))(v2, 0, v3);
  }
}

void __WFConfiguredViewControllerForActionExtension_block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v16 = v7;
  if (a2 && v7)
  {
    v8 = [*(a1 + 32) infoDictionary];
    v9 = [v8 objectForKeyedSubscript:@"NSExtension"];

    v10 = [v9 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
    if ([v10 BOOLValue])
    {
      v11 = 0;
    }

    else
    {
      v13 = [v9 objectForKeyedSubscript:@"NSExtensionAttributes"];
      v14 = [v13 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
      if ([v14 BOOLValue])
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }
    }

    [v16 setModalPresentationStyle:v11];
    v15 = [v16 view];
    [v15 setTintAdjustmentMode:1];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 40);
    v9 = WFExtensionCommunicationError(a4);
    (*(v12 + 16))(v12, 0, v9);
  }
}

Class __getSLComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SocialLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C36D00;
    v9 = 0;
    SocialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SocialLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFShareActionUIKitUserInterface.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFShareActionUIKitUserInterface.m" lineNumber:24 description:{@"Unable to find class %s", "SLComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getSLComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SocialLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E396E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaPickerControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MediaPlayerLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C36F20;
    v9 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSelectMusicActionUIKitUserInterface.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("MPMediaPickerController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPickerControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSelectMusicActionUIKitUserInterface.m" lineNumber:17 description:{@"Unable to find class %s", "MPMediaPickerController"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaPickerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E39B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

id getSLComposeViewControllerClass_4537()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLComposeViewControllerClass_softClass_4547;
  v7 = getSLComposeViewControllerClass_softClass_4547;
  if (!getSLComposeViewControllerClass_softClass_4547)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSLComposeViewControllerClass_block_invoke_4548;
    v3[3] = &unk_278C37610;
    v3[4] = &v4;
    __getSLComposeViewControllerClass_block_invoke_4548(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E39D628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E39D744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSLComposeViewControllerClass_block_invoke_4548(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary_4549)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SocialLibraryCore_block_invoke_4550;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C37200;
    v9 = 0;
    SocialLibraryCore_frameworkLibrary_4549 = _sl_dlopen();
  }

  if (!SocialLibraryCore_frameworkLibrary_4549)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFShareExtensionActionUIKitUserInterface.m" lineNumber:24 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFShareExtensionActionUIKitUserInterface.m" lineNumber:25 description:{@"Unable to find class %s", "SLComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getSLComposeViewControllerClass_softClass_4547 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SocialLibraryCore_block_invoke_4550(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary_4549 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E39DDE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E39E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBFWallpaperOptionsClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!SpringBoardFoundationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SpringBoardFoundationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C37360;
    v9 = 0;
    SpringBoardFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardFoundationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardFoundationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SBFWallpaperOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBFWallpaperOptionsClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:22 description:{@"Unable to find class %s", "SBFWallpaperOptions"}];

LABEL_10:
    __break(1u);
  }

  getSBFWallpaperOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSBSUIWallpaperPreviewViewControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C37378;
    v9 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardUIServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("SBSUIWallpaperPreviewViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSUIWallpaperPreviewViewControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:24 description:{@"Unable to find class %s", "SBSUIWallpaperPreviewViewController"}];

LABEL_10:
    __break(1u);
  }

  getSBSUIWallpaperPreviewViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getPRSServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:31 description:{@"Unable to find class %s", "PRSService"}];

    __break(1u);
  }
}

void sub_23E39F518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRSPosterUpdateSessionInfoClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSPosterUpdateSessionInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterUpdateSessionInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSPosterUpdateSessionInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:32 description:{@"Unable to find class %s", "PRSPosterUpdateSessionInfo"}];

    __break(1u);
  }
}

void __getPRUISModalEntryPointEditingClass_block_invoke(uint64_t a1)
{
  PosterBoardUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISModalEntryPointEditing");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISModalEntryPointEditingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRUISModalEntryPointEditingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:27 description:{@"Unable to find class %s", "PRUISModalEntryPointEditing"}];

    __break(1u);
  }
}

void __getPRUISModalRemoteViewControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISModalRemoteViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISModalRemoteViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRUISModalRemoteViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:28 description:{@"Unable to find class %s", "PRUISModalRemoteViewController"}];

    __break(1u);
  }
}

void PosterBoardUILibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PosterBoardUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C37348;
    v6 = 0;
    PosterBoardUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardUILibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardUILibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __PosterBoardUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterBoardUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void PosterBoardServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C37330;
    v6 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:30 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E3A21A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWKWebViewClass_block_invoke_5068(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary_5071)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __WebKitLibraryCore_block_invoke_5072;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C37478;
    v9 = 0;
    WebKitLibraryCore_frameworkLibrary_5071 = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary_5071)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFContentItemViewController.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFContentItemViewController.m" lineNumber:17 description:{@"Unable to find class %s", "WKWebView"}];

LABEL_10:
    __break(1u);
  }

  getWKWebViewClass_softClass_5067 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WebKitLibraryCore_block_invoke_5072(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary_5071 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAVCaptureSessionInterruptionReasonKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionInterruptionReasonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionInterruptionReasonKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_5485()
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_5494)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AVFoundationLibraryCore_block_invoke_5495;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278C37580;
    v7 = 0;
    AVFoundationLibraryCore_frameworkLibrary_5494 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_5494;
  if (!AVFoundationLibraryCore_frameworkLibrary_5494)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"CDZQRScanningViewController.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke_5495(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_5494 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23E3A4458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureSessionErrorKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionErrorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionErrorKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E3A52B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getAVCaptureSessionClass_block_invoke_5506(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureSessionClass_softClass_5505 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:26 description:{@"Unable to find class %s", "AVCaptureSession"}];

    __break(1u);
  }
}

void __getAVCaptureVideoPreviewLayerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureVideoPreviewLayer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureVideoPreviewLayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureVideoPreviewLayerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:30 description:{@"Unable to find class %s", "AVCaptureVideoPreviewLayer"}];

    __break(1u);
  }
}

void *__getAVLayerVideoGravityResizeAspectFillSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVLayerVideoGravityResizeAspectFill");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDevice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:27 description:{@"Unable to find class %s", "AVCaptureDevice"}];

    __break(1u);
  }
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke_5513(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr_5512 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceInputClass_block_invoke_5517(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceInput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceInputClass_softClass_5516 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceInputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:28 description:{@"Unable to find class %s", "AVCaptureDeviceInput"}];

    __break(1u);
  }
}

void __getAVCaptureMetadataOutputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureMetadataOutput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureMetadataOutputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureMetadataOutputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:29 description:{@"Unable to find class %s", "AVCaptureMetadataOutput"}];

    __break(1u);
  }
}

void sub_23E3A63F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMetadataObjectTypeQRCodeSymbolLoc_block_invoke_5526(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVMetadataObjectTypeQRCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeQRCodeSymbolLoc_ptr_5525 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getAVCaptureSessionRuntimeErrorNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr;
  v9 = getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr;
  if (!getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_5485();
    v7[3] = dlsym(v1, "AVCaptureSessionRuntimeErrorNotification");
    getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNotificationName getAVCaptureSessionRuntimeErrorNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"CDZQRScanningViewController.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E3A67A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAVCaptureSessionWasInterruptedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr;
  v9 = getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr;
  if (!getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_5485();
    v7[3] = dlsym(v1, "AVCaptureSessionWasInterruptedNotification");
    getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNotificationName getAVCaptureSessionWasInterruptedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"CDZQRScanningViewController.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E3A690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAVCaptureSessionInterruptionEndedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr;
  v9 = getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr;
  if (!getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_5485();
    v7[3] = dlsym(v1, "AVCaptureSessionInterruptionEndedNotification");
    getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNotificationName getAVCaptureSessionInterruptionEndedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"CDZQRScanningViewController.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E3A6A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionInterruptionEndedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureSessionWasInterruptedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionWasInterruptedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionRuntimeErrorNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E3A78A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactPickerViewControllerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __ContactsUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_278C37630;
    v9 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSelectContactsActionUIKitUserInterface.m" lineNumber:22 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CNContactPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNContactPickerViewControllerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSelectContactsActionUIKitUserInterface.m" lineNumber:23 description:{@"Unable to find class %s", "CNContactPickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getCNContactPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}