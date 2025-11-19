uint64_t sub_23DC672C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DC672E4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23DC6733C()
{
  v1 = (type metadata accessor for AccountSuggestion() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = v1[10];
  v11 = sub_23DC82A40();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v1[12]);

  v13 = *(v0 + v3 + v1[13]);

  v14 = *(v0 + v3 + v1[14]);

  v15 = *(v0 + v3 + v1[15]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23DC6747C()
{
  v1 = (type metadata accessor for AccountSuggestion() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64) + v3;
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = *(v6 + 1);

  v8 = *(v6 + 3);

  v9 = *(v6 + 5);

  v10 = *(v6 + 7);

  v11 = v1[10];
  v12 = sub_23DC82A40();
  (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = *&v6[v1[12]];

  v14 = *&v6[v1[13]];

  v15 = *&v6[v1[14]];

  v16 = *&v6[v1[15]];

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_23DC675C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DC67610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23DC82A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23DC676BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23DC82A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t (*sub_23DC677B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DC82B10();
  return sub_23DC67854;
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

uint64_t (*sub_23DC678D0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__allSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  swift_endAccess();
  return sub_23DC67A40;
}

uint64_t sub_23DC67A58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DC82B20();

  *a2 = v5;
  return result;
}

uint64_t sub_23DC67AE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DC82B30();
}

uint64_t sub_23DC67B74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DC82B20();

  return v1;
}

uint64_t sub_23DC67BF4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DC82B30();
}

uint64_t (*sub_23DC67C60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DC82B10();
  return sub_23DC7C380;
}

void sub_23DC67D04(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23DC67D78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  return swift_endAccess();
}

uint64_t sub_23DC67DF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82B00();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_23DC67F90(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  return swift_endAccess();
}

uint64_t sub_23DC6800C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82B00();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_23DC68144(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA8, &qword_23DC83620);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__filteredSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  sub_23DC82AF0();
  swift_endAccess();
  return sub_23DC7C384;
}

void sub_23DC682B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_23DC82B00();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_23DC82B00();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_23DC684B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_23DC6851C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_23DC6858C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_23DC685DC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_23DC68690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23DC686E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_23DC6873C()
{
  v1 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23DC68780(char a1)
{
  v3 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23DC68834()
{
  v0 = sub_23DC82AB0();
  __swift_allocate_value_buffer(v0, qword_281303DE8);
  __swift_project_value_buffer(v0, qword_281303DE8);
  return sub_23DC82AA0();
}

uint64_t static AccountSuggestionManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static AccountSuggestionManager.logger.setter(uint64_t a1)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AccountSuggestionManager.logger.modify())()
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v0 = sub_23DC82AB0();
  __swift_project_value_buffer(v0, qword_281303DE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_23DC68B30@<X0>(uint64_t a1@<X8>)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23DC68BF0(uint64_t a1)
{
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_23DC82AB0();
  v3 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_23DC68CB8()
{
  v1 = v0;
  v2 = sub_23DC82A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
  v8 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults);
  if (v8 && (v9 = v8, v10 = sub_23DC82C40(), v11 = [v9 stringForKey_], v9, v10, v11))
  {
    v12 = sub_23DC82C50();

    return v12;
  }

  else
  {
    sub_23DC82A60();
    v14 = sub_23DC82A50();
    (*(v3 + 8))(v6, v2);
    v15 = *(v1 + v7);
    if (v15)
    {
      v16 = v15;
      v17 = sub_23DC82C40();
      v18 = sub_23DC82C40();
      [v16 setObject:v17 forKey:v18];
    }

    return v14;
  }
}

uint64_t sub_23DC68E90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23DC7C0F4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23DC672C0(v4);
}

uint64_t sub_23DC68F30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23DC7C0EC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_23DC672C0(v3);
  return sub_23DC69148(v8);
}

uint64_t sub_23DC68FF8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_23DC7A5E8;
  v8[1] = v6;
  a3(v8);
}

uint64_t sub_23DC6908C()
{
  v1 = (v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23DC672C0(v3);
  return v3;
}

uint64_t sub_23DC690E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23DC69148(v6);
}

uint64_t sub_23DC69148(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23DC691C0()
{
  sub_23DC82F40();
  MEMORY[0x23EEFBC50](0);
  return sub_23DC82F60();
}

uint64_t sub_23DC6922C()
{
  sub_23DC82F40();
  MEMORY[0x23EEFBC50](0);
  return sub_23DC82F60();
}

uint64_t sub_23DC69294()
{
  v2[3] = &type metadata for AccountSuggestionManager.Flags;
  v2[4] = sub_23DC692E4();
  v0 = sub_23DC82A80();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_23DC692E4()
{
  result = qword_281303E00;
  if (!qword_281303E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281303E00);
  }

  return result;
}

uint64_t AccountSuggestionManager.__allocating_init(uiMode:)(int a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AccountSuggestionManager.init(uiMode:)(a1);
  return v5;
}

uint64_t AccountSuggestionManager.init(uiMode:)(int a1)
{
  v2 = v1;
  v82 = a1;
  v3 = sub_23DC82D70();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v79 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DC82D50();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v78[1] = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23DC82B80();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v78 - v14;
  v16 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__allSuggestions;
  v17 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDB0, &qword_23DC83670);
  sub_23DC82AE0();
  v18 = *(v12 + 32);
  v18(v1 + v16, v15, v11);
  v19 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__filteredSuggestions;
  aBlock[0] = v17;
  sub_23DC82AE0();
  v18(v1 + v19, v15, v11);
  v20 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  *(v1 + v20) = sub_23DC7A1E0(v17);
  v21 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_deviceLastUsedDates;
  *(v1 + v21) = sub_23DC7A3B4(v17);
  v78[0] = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue;
  sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
  sub_23DC82B70();
  aBlock[0] = v17;
  sub_23DC7A754(&qword_281303A10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDB8, &qword_23DC83678);
  sub_23DC7A79C(&qword_281303A18, &qword_27E30CDB8, &qword_23DC83678);
  sub_23DC82DF0();
  (*(v80 + 104))(v79, *MEMORY[0x277D85268], v81);
  *(v1 + v78[0]) = sub_23DC82DA0();
  v22 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
  v23 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v24 = sub_23DC82C40();
  v25 = [v23 initWithStoreIdentifier:v24 type:1];

  *(v2 + v22) = v25;
  *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber) = 0;
  v26 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
  v27 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v28 = sub_23DC82C40();
  v29 = [v27 initWithSuiteName_];

  *(v2 + v26) = v29;
  v30 = (v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock);
  *v30 = 0;
  v30[1] = 0;
  *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem) = 0;
  v31 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_accountTypesThatNeedProperties;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_23DC83540;
  v33 = *MEMORY[0x277CB8D10];
  *(v32 + 32) = sub_23DC82C50();
  *(v32 + 40) = v34;
  v35 = *MEMORY[0x277CB8BC8];
  *(v32 + 48) = sub_23DC82C50();
  *(v32 + 56) = v36;
  v37 = *MEMORY[0x277CB8BD8];
  *(v32 + 64) = sub_23DC82C50();
  *(v32 + 72) = v38;
  v39 = *MEMORY[0x277CB8C60];
  *(v32 + 80) = sub_23DC82C50();
  *(v32 + 88) = v40;
  v41 = *MEMORY[0x277CB8CD8];
  *(v32 + 96) = sub_23DC82C50();
  *(v32 + 104) = v42;
  v43 = *MEMORY[0x277CB8C98];
  *(v32 + 112) = sub_23DC82C50();
  *(v32 + 120) = v44;
  *(v2 + v31) = v32;
  v45 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_supportedAccountTypes;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23DC83550;
  *(v46 + 32) = sub_23DC82C50();
  *(v46 + 40) = v47;
  *(v46 + 48) = sub_23DC82C50();
  *(v46 + 56) = v48;
  *(v46 + 64) = sub_23DC82C50();
  *(v46 + 72) = v49;
  *(v46 + 80) = sub_23DC82C50();
  *(v46 + 88) = v50;
  *(v46 + 96) = sub_23DC82C50();
  *(v46 + 104) = v51;
  v52 = *MEMORY[0x277CB8C00];
  *(v46 + 112) = sub_23DC82C50();
  *(v46 + 120) = v53;
  v54 = *MEMORY[0x277CB8C50];
  *(v46 + 128) = sub_23DC82C50();
  *(v46 + 136) = v55;
  *(v46 + 144) = sub_23DC82C50();
  *(v46 + 152) = v56;
  v57 = *MEMORY[0x277CB8C40];
  *(v46 + 160) = sub_23DC82C50();
  *(v46 + 168) = v58;
  v59 = *MEMORY[0x277CB8D38];
  *(v46 + 176) = sub_23DC82C50();
  *(v46 + 184) = v60;
  v61 = *MEMORY[0x277CB8B98];
  *(v46 + 192) = sub_23DC82C50();
  *(v46 + 200) = v62;
  v63 = *MEMORY[0x277CB8BA0];
  *(v46 + 208) = sub_23DC82C50();
  *(v46 + 216) = v64;
  v65 = *MEMORY[0x277CB8B80];
  *(v46 + 224) = sub_23DC82C50();
  *(v46 + 232) = v66;
  v67 = *MEMORY[0x277CB8B88];
  *(v46 + 240) = sub_23DC82C50();
  *(v46 + 248) = v68;
  v69 = *MEMORY[0x277CB8CE8];
  *(v46 + 256) = sub_23DC82C50();
  *(v46 + 264) = v70;
  *(v2 + v45) = v46;
  v71 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_locallySupportedAccountTypes;
  *(v2 + v71) = sub_23DC700B4();
  *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode) = v82;
  v72 = *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_23DC7C330;
  *(v73 + 24) = v2;
  aBlock[4] = sub_23DC7A5E8;
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC69B98;
  aBlock[3] = &block_descriptor;
  v74 = _Block_copy(aBlock);
  v75 = v72;

  dispatch_sync(v75, v74);

  _Block_release(v74);
  LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

  if (v74)
  {
    __break(1u);
  }

  else
  {
    v77 = [objc_opt_self() defaultCenter];
    [v77 addObserver:v2 selector:sel_reloadDelay_ name:*MEMORY[0x277CCA7C0] object:0];

    [*(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs) synchronize];

    return v2;
  }

  return result;
}

id sub_23DC69BC0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_reloadDelay_ name:*MEMORY[0x277CCA7C0] object:0];

  v2 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs);

  return [v2 synchronize];
}

uint64_t sub_23DC69C50()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1 name:*MEMORY[0x277CCA7C0] object:0];

  v3 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber;
  if (*(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber))
  {
    v4 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber);

    sub_23DC82AC0();

    v5 = *(v1 + v3);
  }

  *(v1 + v3) = 0;
}

uint64_t sub_23DC69D04(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v31 - v4;
  v38 = type metadata accessor for AccountSuggestion();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v38);
  v37 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DC82B20();

  v12 = *(v39 + 16);
  if (v12)
  {
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v31[1] = v39;
    v32 = v13;
    v14 = v39 + v13;
    v15 = *(v6 + 72);
    v35 = (v6 + 48);
    v36 = (v6 + 56);
    v16 = MEMORY[0x277D84F90];
    do
    {
      sub_23DC7A628(v14, v11);
      v18 = *(v11 + 4);
      v17 = *(v11 + 5);
      v19 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v19 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v19 && (v21 = v33, v20 = v34, v22 = *(v11 + 4), v23 = *(v11 + 5), (sub_23DC82CC0() & 1) != 0) && (v18 == v21 ? (v24 = v17 == v20) : (v24 = 0), !v24 && (sub_23DC82EF0() & 1) == 0))
      {
        sub_23DC7A628(v11, v5);
        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = v38;
      (*v36)(v5, v25, 1, v38);
      sub_23DC7A68C(v11);
      if ((*v35)(v5, 1, v26) == 1)
      {
        sub_23DC7C16C(v5, &qword_27E30CDC8, &qword_23DC83688);
      }

      else
      {
        sub_23DC7A6E8(v5, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_23DC75C2C(0, v16[2] + 1, 1, v16);
        }

        v28 = v16[2];
        v27 = v16[3];
        if (v28 >= v27 >> 1)
        {
          v16 = sub_23DC75C2C(v27 > 1, v28 + 1, 1, v16);
        }

        v16[2] = v28 + 1;
        sub_23DC7A6E8(v37, v16 + v32 + v28 * v15);
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v29 = v16[2];

  return v29;
}

uint64_t sub_23DC6A058(uint64_t a1)
{
  v2 = sub_23DC82BA0();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v23 = &v23 - v7;
  v8 = sub_23DC82B50();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem;
  if (*(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem))
  {
    v11 = *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem);

    sub_23DC82BC0();
  }

  aBlock[4] = sub_23DC7C0E4;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_108;
  _Block_copy(aBlock);
  v26 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  v12 = sub_23DC82BD0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_23DC82BB0();

  v16 = *(a1 + v10);
  *(a1 + v10) = v15;

  v17 = *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  sub_23DC82B90();
  v18 = arc4random();
  fmod(v18, 5.0);
  v19 = v23;
  sub_23DC82BE0();
  v20 = v25;
  v21 = *(v24 + 8);
  v21(v6, v25);
  sub_23DC82D60();

  return (v21)(v19, v20);
}

uint64_t sub_23DC6A378(uint64_t a1)
{
  v2 = sub_23DC82AB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23DC82A90();
  v9 = sub_23DC82D40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DC66000, v8, v9, "reloading after delay", v10, 2u);
    MEMORY[0x23EEFC160](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_23DC6C1EC();
  v11 = *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem);
  *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem) = 0;
}

uint64_t sub_23DC6A544(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_23DC6A5F4(uint64_t a1)
{
  v2 = sub_23DC82B50();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23DC82B80();
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
  v8 = *(a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs);
  if (v8)
  {
    v9 = [v8 dictionaryRepresentation];
    v10 = sub_23DC82C10();
  }

  else
  {
    v10 = sub_23DC7B28C(MEMORY[0x277D84F90]);
  }

  v11 = 0;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v18 = v11;
LABEL_19:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v10 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_23DC7BD48(*(v10 + 56) + 32 * v22, v38);
    *&v39 = v25;
    *(&v39 + 1) = v24;
    sub_23DC7BDA4(v38, &v40);

LABEL_20:
    aBlock = v39;
    v43 = v40;
    v44 = v41;
    if (!*(&v39 + 1))
    {

      [*(a1 + v7) synchronize];
      sub_23DC6E6E8();
      sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
      v27 = sub_23DC82D80();
      *&v44 = sub_23DC7C220;
      *(&v44 + 1) = a1;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v43 = sub_23DC7C32C;
      *(&v43 + 1) = &block_descriptor_126;
      v28 = _Block_copy(&aBlock);

      v29 = v32;
      sub_23DC82B60();
      *&aBlock = MEMORY[0x277D84F90];
      sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
      sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
      v30 = v34;
      v31 = v37;
      sub_23DC82DF0();
      MEMORY[0x23EEFBA90](0, v29, v30, v28);
      _Block_release(v28);

      (*(v36 + 8))(v30, v31);
      (*(v33 + 8))(v29, v35);
      return;
    }

    v26 = *(a1 + v7);
    if (v26)
    {
      v16 = v26;
      v17 = sub_23DC82C40();

      [v16 removeObjectForKey_];
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  }

  if (v15 <= v11 + 1)
  {
    v19 = v11 + 1;
  }

  else
  {
    v19 = v15;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      v14 = 0;
      v40 = 0u;
      v41 = 0u;
      v11 = v20;
      v39 = 0u;
      goto LABEL_20;
    }

    v14 = *(v10 + 64 + 8 * v18);
    ++v11;
    if (v14)
    {
      v11 = v18;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_23DC6AAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = sub_23DC82B50();
  v29 = *(v26 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23DC82B80();
  v27 = *(v15 - 8);
  v28 = v15;
  v16 = *(v27 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = v25;
  v20[7] = a6;
  v20[8] = v6;
  aBlock[4] = sub_23DC7A7F0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_17;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  sub_23DC82B60();
  v30 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  v23 = v26;
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v18, v14, v21);
  _Block_release(v21);

  (*(v29 + 8))(v14, v23);
  (*(v27 + 8))(v18, v28);
}

uint64_t sub_23DC6ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a4;
  v77 = a7;
  v80 = a5;
  v81 = a6;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v7 = sub_23DC82B50();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_23DC82B80();
  v65 = *(v67 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v62 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v61 - v16;
  v72 = type metadata accessor for AccountSuggestion();
  v78 = *(v72 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v72);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_23DC82A40();
  v19 = *(v71 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v71);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23DC82A70();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC82A60();
  v28 = sub_23DC82A50();
  v30 = v29;
  v31 = *(v24 + 8);
  v31(v27, v23);
  sub_23DC82A60();
  v70 = sub_23DC82A50();
  v33 = v32;
  v31(v27, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE50, &qword_23DC83888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DC83560;
  *(inited + 32) = 0x4449657571696E75;
  v35 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v28;
  v61 = v28;
  v36 = v30;
  *(inited + 56) = v30;
  *(inited + 72) = v35;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x800000023DC840B0;
  v37 = v74;
  *(inited + 96) = v73;
  *(inited + 104) = v37;
  *(inited + 120) = v35;
  *(inited + 128) = 0x656D616E72657375;
  *(inited + 136) = 0xE800000000000000;
  v38 = v76;
  *(inited + 144) = v75;
  *(inited + 152) = v38;
  *(inited + 168) = v35;
  *(inited + 176) = 0x4E79616C70736964;
  *(inited + 184) = 0xEB00000000656D61;
  *(inited + 192) = 1953719668;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 216) = v35;
  strcpy((inited + 224), "creationDate");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;

  sub_23DC82A30();
  sub_23DC82A20();
  v40 = v39;
  (*(v19 + 8))(v22, v71);
  v41 = v77;
  v42 = MEMORY[0x277D839F8];
  *(inited + 240) = v40;
  *(inited + 264) = v42;
  *(inited + 272) = 0x656372756F73;
  v43 = MEMORY[0x277D83B88];
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = 0;
  *(inited + 312) = v43;
  *(inited + 320) = 0xD000000000000014;
  v44 = v72;
  *(inited + 328) = 0x800000023DC840D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_23DC83570;
  v46 = v70;
  *(v45 + 32) = v70;
  *(v45 + 40) = v33;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE58, &qword_23DC83890);
  *(inited + 336) = v45;
  *(inited + 360) = v47;
  *(inited + 368) = 0x69747265706F7270;
  *(inited + 376) = 0xEA00000000007365;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE30, &unk_23DC83950);
  v49 = v81;
  *(inited + 384) = v80;
  *(inited + 408) = v48;
  *(inited + 416) = 0x676E696F6774756FLL;
  *(inited + 456) = v48;
  *(inited + 424) = 0xEF746E756F636341;
  *(inited + 432) = v49;

  v50 = sub_23DC7B28C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE48, &qword_23DC83880);
  swift_arrayDestroy();
  sub_23DC72B78(v46, v33);
  v52 = v78;
  v51 = v79;

  AccountSuggestion.init(with:)(v50, v51);
  if ((*(v52 + 48))(v51, 1, v44) == 1)
  {

    return sub_23DC7C16C(v51, &qword_27E30CDC8, &qword_23DC83688);
  }

  else
  {
    v54 = v63;
    sub_23DC7A6E8(v51, v63);
    v55 = v62;
    sub_23DC7A628(v54, v62);
    (*(v52 + 56))(v55, 0, 1, v44);
    sub_23DC70460(v55, v61, v36, 1, 0);

    sub_23DC7C16C(v55, &qword_27E30CDC8, &qword_23DC83688);
    sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
    v56 = sub_23DC82D80();
    v82[4] = sub_23DC7C334;
    v82[5] = v41;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 1107296256;
    v82[2] = sub_23DC7C32C;
    v82[3] = &block_descriptor_123;
    v57 = _Block_copy(v82);

    v58 = v64;
    sub_23DC82B60();
    v82[0] = MEMORY[0x277D84F90];
    sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
    sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
    v59 = v66;
    v60 = v69;
    sub_23DC82DF0();
    MEMORY[0x23EEFBA90](0, v58, v59, v57);
    _Block_release(v57);

    (*(v68 + 8))(v59, v60);
    (*(v65 + 8))(v58, v67);
    return sub_23DC7A68C(v54);
  }
}

uint64_t sub_23DC6B690(uint64_t a1)
{
  v3 = sub_23DC82B50();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23DC82B80();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccountSuggestion();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  sub_23DC7A628(a1, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_23DC7A6E8(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = sub_23DC7A804;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_23;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  sub_23DC82B60();
  v23 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v10, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v3);
  (*(v7 + 8))(v10, v21);
}

uint64_t sub_23DC6B9F8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v36 = sub_23DC82B50();
  v39 = *(v36 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DC82B80();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for AccountSuggestion();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_23DC82A70();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC82A60();
  v22 = sub_23DC82A50();
  v24 = v23;
  (*(v18 + 8))(v21, v17);

  sub_23DC72B78(v22, v24);

  sub_23DC7A628(v33, v16);
  v25 = v16 + *(v12 + 40);
  sub_23DC75E04(aBlock, v22, v24);

  sub_23DC7A628(v16, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_23DC70460(v11, *v16, v16[1], 1, 0);
  sub_23DC7C16C(v11, &qword_27E30CDC8, &qword_23DC83688);
  sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
  v26 = sub_23DC82D80();
  aBlock[4] = sub_23DC7C334;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_120;
  v27 = _Block_copy(aBlock);

  v28 = v34;
  sub_23DC82B60();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  v30 = v35;
  v29 = v36;
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v28, v30, v27);
  _Block_release(v27);

  (*(v39 + 8))(v30, v29);
  (*(v37 + 8))(v28, v38);
  return sub_23DC7A68C(v16);
}

uint64_t sub_23DC6BF0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_23DC82B50();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23DC82B80();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  aBlock[4] = a1;
  v22 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);
  v15 = v13;

  sub_23DC82B60();
  v20 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v12, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_23DC6C1EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE10, &qword_23DC83848);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v268 = &v262 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = (&v262 - v5);
  v284 = sub_23DC82A70();
  v263 = *(v284 - 8);
  v7 = *(v263 + 64);
  MEMORY[0x28223BE20](v284);
  v277 = &v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE18, &qword_23DC83850);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v299 = &v262 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v297 = &v262 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v262 - v16;
  MEMORY[0x28223BE20](v15);
  v300 = &v262 - v18;
  v19 = sub_23DC82A40();
  v281 = *(v19 - 8);
  v20 = *(v281 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v286 = &v262 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v276 = &v262 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v274 = &v262 - v26;
  MEMORY[0x28223BE20](v25);
  v296 = &v262 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v291 = &v262 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v288 = &v262 - v32;
  v303 = type metadata accessor for AccountSuggestion();
  v295 = *(v303 - 8);
  v33 = *(v295 + 64);
  v34 = MEMORY[0x28223BE20](v303);
  v304 = (&v262 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v34);
  v302 = (&v262 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v294 = &v262 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v273 = &v262 - v41;
  MEMORY[0x28223BE20](v40);
  v290 = (&v262 - v42);
  v43 = sub_23DC82AB0();
  v44 = *(v43 - 1);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v262 = &v262 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v278 = &v262 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v262 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v262 - v53;
  v264 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
  v292 = v0;
  [*(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs) synchronize];
  if (qword_281303DE0 != -1)
  {
LABEL_166:
    swift_once();
  }

  v55 = __swift_project_value_buffer(v43, qword_281303DE8);
  swift_beginAccess();
  v56 = *(v44 + 16);
  v271 = v55;
  v270 = v44 + 16;
  v269 = v56;
  v56(v54, v55, v43);
  v57 = sub_23DC82A90();
  v58 = sub_23DC82D40();
  v59 = os_log_type_enabled(v57, v58);
  v293 = v17;
  if (v59)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_23DC66000, v57, v58, "reloading account suggestions", v60, 2u);
    v61 = v60;
    v17 = v293;
    MEMORY[0x23EEFC160](v61, -1, -1);
  }

  v63 = *(v44 + 8);
  v62 = v44 + 8;
  v272 = v63;
  v63(v54, v43);
  v64 = *(v292 + v264);
  if (v64)
  {
    v65 = [v64 dictionaryRepresentation];
    v66 = sub_23DC82C10();
  }

  else
  {
    v66 = sub_23DC7B28C(MEMORY[0x277D84F90]);
  }

  v269(v52, v271, v43);

  v67 = sub_23DC82A90();
  v68 = sub_23DC82D40();

  v69 = os_log_type_enabled(v67, v68);
  v279 = v6;
  v289 = v19;
  v267 = v43;
  v266 = v62;
  if (v69)
  {
    v70 = v52;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v306 = v72;
    *v71 = 136315138;
    v73 = sub_23DC82C20();
    v75 = sub_23DC7EAC4(v73, v74, &v306);

    *(v71 + 4) = v75;
    v17 = v293;
    _os_log_impl(&dword_23DC66000, v67, v68, "loaded suggestion dict: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x23EEFC160](v72, -1, -1);
    MEMORY[0x23EEFC160](v71, -1, -1);

    v76 = v70;
  }

  else
  {

    v76 = v52;
  }

  v272(v76, v43);
  v77 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  v19 = 1;
  v78 = v292;
  swift_beginAccess();
  v79 = *(v78 + v77);
  v80 = MEMORY[0x277D84F98];
  v282 = v77;
  *(v78 + v77) = MEMORY[0x277D84F98];

  v81 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_deviceLastUsedDates;
  swift_beginAccess();
  v82 = *(v78 + v81);
  v275 = v81;
  *(v78 + v81) = v80;

  v52 = v66 + 64;
  v83 = 1 << *(v66 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v44 = v84 & *(v66 + 64);
  v43 = ((v83 + 63) >> 6);
  v280 = (v281 + 16);
  v287 = (v281 + 32);
  v265 = v281 + 40;
  v283 = (v281 + 8);
  v285 = (v295 + 48);
  v298 = v66;
  v54 = "DeviceIdleInterval";

  v6 = 0;
  for (i = "DeviceIdleInterval"; ; v54 = i)
  {
    while (1)
    {
      while (1)
      {
        if (!v44)
        {
          if (v43 <= (v6 + 1))
          {
            v86 = v6 + 1;
          }

          else
          {
            v86 = v43;
          }

          v87 = (v86 - 1);
          while (1)
          {
            v85 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if (v85 >= v43)
            {
              v44 = 0;
              v310 = 0u;
              v311 = 0u;
              v6 = v87;
              v309 = 0u;
              goto LABEL_25;
            }

            v44 = *(v52 + 8 * v85);
            v6 = (v6 + 1);
            if (v44)
            {
              v6 = v85;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_160;
        }

        v85 = v6;
LABEL_24:
        v88 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v89 = v88 | (v85 << 6);
        v90 = (*(v298 + 48) + 16 * v89);
        v92 = *v90;
        v91 = v90[1];
        sub_23DC7BD48(*(v298 + 56) + 32 * v89, &v308);
        *&v309 = v92;
        *(&v309 + 1) = v91;
        sub_23DC7BDA4(&v308, &v310);

        v54 = i;
LABEL_25:
        v306 = v309;
        v307[0] = v310;
        v307[1] = v311;
        v19 = *(&v309 + 1);
        if (!*(&v309 + 1))
        {

          v146 = *&v282[v292];
          v147 = v146 + 64;
          v148 = 1 << v146[32];
          if (v148 < 64)
          {
            v149 = ~(-1 << v148);
          }

          else
          {
            v149 = -1;
          }

          v52 = v149 & *(v146 + 8);
          v288 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
          v285 = ((v148 + 63) >> 6);
          v274 = (v263 + 8);
          v290 = (v295 + 56);
          v296 = v146;

          v54 = &qword_27E30CE20;
          v43 = &qword_23DC83858;
          v44 = v300;
          v298 = v147;
          while (v52)
          {
            v155 = v19;
LABEL_76:
            v157 = __clz(__rbit64(v52));
            v52 &= v52 - 1;
            v158 = v157 | (v155 << 6);
            v159 = (*(v296 + 6) + 16 * v158);
            v160 = *v159;
            v161 = v159[1];
            v162 = v294;
            sub_23DC7A628(*(v296 + 7) + *(v295 + 72) * v158, v294);
            v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE20, &qword_23DC83858);
            v164 = *(v163 + 48);
            *v17 = v160;
            *(v17 + 8) = v161;
            sub_23DC7A6E8(v162, v17 + v164);
            (*(*(v163 - 8) + 56))(v17, 0, 1, v163);

            v44 = v300;
LABEL_77:
            sub_23DC7C074(v17, v44, &qword_27E30CE18, &qword_23DC83850);
            v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE20, &qword_23DC83858);
            v166 = *(v165 - 8);
            i = *(v166 + 48);
            v167 = (i)(v44, 1, v165);
            v154 = v302;
            if (v167 == 1)
            {
              v298 = v165;

              v44 = v292;
              v191 = *&v275[v292];
              v193 = *(v191 + 64);
              v19 = v191 + 64;
              v192 = v193;
              v194 = 1 << *(*&v275[v292] + 32);
              if (v194 < 64)
              {
                v195 = ~(-1 << v194);
              }

              else
              {
                v195 = -1;
              }

              v52 = v195 & v192;
              v196 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
              v277 = *&v275[v292];

              v273 = v196;
              swift_beginAccess();
              v197 = 0;
              v265 = (v194 + 63) >> 6;
              v296 = (v166 + 56);
              v17 = &qword_27E30CE28;
              v198 = v268;
              v302 = (v166 + 48);
              v54 = v19;
              v274 = v19;
              while (1)
              {
                v43 = v198;
                if (!v52)
                {
                  break;
                }

                v284 = v197;
                v199 = v197;
LABEL_112:
                v285 = ((v52 - 1) & v52);
                v201 = __clz(__rbit64(v52)) | (v199 << 6);
                v202 = (*(v277 + 6) + 16 * v201);
                v203 = *v202;
                v204 = v202[1];
                v205 = v281;
                v206 = v276;
                v207 = v289;
                (*(v281 + 16))(v276, *(v277 + 7) + *(v281 + 72) * v201, v289);
                v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE28, &unk_23DC83860);
                v208 = *(v19 + 48);
                *v43 = v203;
                v43[1] = v204;
                v198 = v43;
                (*(v205 + 32))(v43 + v208, v206, v207);
                (*(*(v19 - 8) + 56))(v43, 0, 1, v19);

                v44 = v292;
LABEL_113:
                v209 = v279;
                sub_23DC7C074(v198, v279, &qword_27E30CE10, &qword_23DC83848);
                v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE28, &unk_23DC83860);
                if ((*(*(v210 - 8) + 48))(v209, 1, v210) == 1)
                {
                  goto LABEL_155;
                }

                v211 = *v209;
                v212 = v209[1];
                (*v287)(v286, v209 + *(v210 + 48), v289);
                sub_23DC82A00();
                v214 = fabs(v213);
                v215 = *(v44 + v288);
                if (v215 && (v216 = v215, v19 = sub_23DC82C40(), [v216 doubleForKey_], v218 = v217, v216, v19, v218 > 0.0))
                {
                  if (v218 < v214)
                  {
                    goto LABEL_119;
                  }
                }

                else if (v214 > 7776000.0)
                {
LABEL_119:
                  v219 = v267;
                  v269(v278, v271, v267);
                  v220 = sub_23DC82A90();
                  v19 = sub_23DC82D40();
                  if (os_log_type_enabled(v220, v19))
                  {
                    v221 = swift_slowAlloc();
                    *v221 = 0;
                    _os_log_impl(&dword_23DC66000, v220, v19, "device too old, removing it from all suggestions and the device list", v221, 2u);
                    MEMORY[0x23EEFC160](v221, -1, -1);
                  }

                  v272(v278, v219);
                  v222 = *&v282[v44];
                  v223 = *(v222 + 64);
                  v300 = (v222 + 64);
                  v224 = 1 << *(v222 + 32);
                  if (v224 < 64)
                  {
                    v225 = ~(-1 << v224);
                  }

                  else
                  {
                    v225 = -1;
                  }

                  v226 = v225 & v223;
                  v227 = (v224 + 63) >> 6;
                  v293 = v222;

                  v44 = 0;
                  while (1)
                  {
                    v230 = v299;
                    if (!v226)
                    {
                      break;
                    }

                    v231 = v44;
                    v232 = v298;
LABEL_137:
                    v235 = __clz(__rbit64(v226));
                    v226 &= v226 - 1;
                    v236 = v235 | (v231 << 6);
                    v237 = (*(v293 + 48) + 16 * v236);
                    v239 = *v237;
                    v238 = v237[1];
                    v19 = v294;
                    sub_23DC7A628(*(v293 + 56) + *(v295 + 72) * v236, v294);
                    v240 = *(v232 + 48);
                    *v230 = v239;
                    *(v230 + 1) = v238;
                    sub_23DC7A6E8(v19, &v230[v240]);
                    (*v296)(v230, 0, 1, v232);

LABEL_138:
                    v241 = v297;
                    sub_23DC7C074(v230, v297, &qword_27E30CE18, &qword_23DC83850);
                    if ((i)(v241, 1, v232) == 1)
                    {

                      v44 = v292;
                      v198 = v268;
                      v54 = v274;
                      if ((*(v292 + v273) & 1) == 0)
                      {
                        v251 = *(v292 + v264);
                        if (v251)
                        {
                          v252 = v268;
                          v253 = v251;
                          v254 = sub_23DC68CB8();
                          *&v306 = 0x5F454349564544;
                          *(&v306 + 1) = 0xE700000000000000;
                          MEMORY[0x23EEFB9A0](v254);

                          v19 = sub_23DC82C40();

                          [v253 removeObjectForKey_];

                          v198 = v252;
                        }
                      }

                      goto LABEL_101;
                    }

                    v242 = *(v241 + 8);

                    v243 = v304;
                    sub_23DC7A6E8(v241 + *(v232 + 48), v304);
                    v244 = *(v243 + *(v303 + 40));
                    if (*(v244 + 16))
                    {
                      v245 = *(v244 + 40);
                      sub_23DC82F40();
                      sub_23DC82C70();
                      v246 = sub_23DC82F60();
                      v247 = -1 << *(v244 + 32);
                      v248 = v246 & ~v247;
                      if ((*(v244 + 56 + ((v248 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v248))
                      {
                        v19 = ~v247;
                        while (1)
                        {
                          v249 = (*(v244 + 48) + 16 * v248);
                          v250 = *v249 == v211 && v249[1] == v212;
                          if (v250 || (sub_23DC82EF0() & 1) != 0)
                          {
                            break;
                          }

                          v248 = (v248 + 1) & v19;
                          if (((*(v244 + 56 + ((v248 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v248) & 1) == 0)
                          {
                            goto LABEL_126;
                          }
                        }

                        v228 = v304;
                        sub_23DC766C8(v211, v212);

                        v229 = v291;
                        sub_23DC7A628(v228, v291);
                        (*v290)(v229, 0, 1, v303);
                        sub_23DC70460(v229, *v228, v228[1], 0, 0);
                        sub_23DC7C16C(v229, &qword_27E30CDC8, &qword_23DC83688);
                      }
                    }

LABEL_126:
                    sub_23DC7A68C(v304);
                  }

                  if (v227 <= (v44 + 1))
                  {
                    v233 = v44 + 1;
                  }

                  else
                  {
                    v233 = v227;
                  }

                  v234 = v233 - 1;
                  v232 = v298;
                  while (1)
                  {
                    v231 = v44 + 1;
                    if (__OFADD__(v44, 1))
                    {
                      break;
                    }

                    if (v231 >= v227)
                    {
                      (*v296)(v299, 1, 1, v298);
                      v226 = 0;
                      v44 = v234;
                      goto LABEL_138;
                    }

                    v226 = *&v300[8 * v231];
                    ++v44;
                    if (v226)
                    {
                      v44 = v231;
                      goto LABEL_137;
                    }
                  }

                  __break(1u);
LABEL_155:

                  sub_23DC6E6E8();
                  v256 = v262;
                  v257 = v267;
                  v269(v262, v271, v267);

                  v258 = sub_23DC82A90();
                  v259 = sub_23DC82D40();
                  if (os_log_type_enabled(v258, v259))
                  {
                    v260 = swift_slowAlloc();
                    *v260 = 134218240;
                    *(v260 + 4) = *(*&v282[v44] + 16);
                    *(v260 + 12) = 2048;
                    *(v260 + 14) = *(*&v275[v44] + 16);

                    _os_log_impl(&dword_23DC66000, v258, v259, "reloading account suggestions finished, loaded %ld suggestions, loaded %ld devices", v260, 0x16u);
                    MEMORY[0x23EEFC160](v260, -1, -1);
                  }

                  else
                  {
                  }

                  return (v272)(v256, v257);
                }

LABEL_101:
                (*v283)(v286, v289);
                v17 = &qword_27E30CE28;
                v52 = v285;
                v197 = v284;
              }

              if (v265 <= v197 + 1)
              {
                v200 = v197 + 1;
              }

              else
              {
                v200 = v265;
              }

              v6 = (v200 - 1);
              while (1)
              {
                v199 = v197 + 1;
                if (__OFADD__(v197, 1))
                {
                  goto LABEL_161;
                }

                if (v199 >= v265)
                {
                  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE28, &unk_23DC83860);
                  (*(*(v255 - 8) + 56))(v43, 1, 1, v255);
                  v285 = 0;
                  v284 = v6;
                  v198 = v43;
                  goto LABEL_113;
                }

                v52 = *&v54[8 * v199];
                ++v197;
                if (v52)
                {
                  v284 = v199;
                  goto LABEL_112;
                }
              }
            }

            v168 = *(v44 + 8);

            sub_23DC7A6E8(v44 + *(v165 + 48), v154);
            if (*(v154 + *(v303 + 56)) == 1)
            {
              i = *(v303 + 40);
              v169 = *&i[v154];
              v170 = *(v292 + v288);
              if (v170 && (v171 = v170, v172 = sub_23DC82C40(), v173 = [v171 stringForKey_], v171, v172, v173))
              {
                v174 = sub_23DC82C50();
                v176 = v175;
              }

              else
              {
                v177 = v277;
                sub_23DC82A60();
                v174 = sub_23DC82A50();
                v176 = v178;
                (*v274)(v177, v284);
                v179 = *(v292 + v288);
                if (v179)
                {
                  v180 = v179;
                  v181 = sub_23DC82C40();
                  v182 = sub_23DC82C40();
                  [v180 setObject:v181 forKey:v182];
                }
              }

              if (*(v169 + 16) && (v183 = *(v169 + 40), sub_23DC82F40(), sub_23DC82C70(), v184 = sub_23DC82F60(), v185 = -1 << *(v169 + 32), v186 = v184 & ~v185, ((*(v169 + 56 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186) & 1) != 0))
              {
                v187 = ~v185;
                while (1)
                {
                  v188 = (*(v169 + 48) + 16 * v186);
                  v189 = *v188 == v174 && v188[1] == v176;
                  if (v189 || (sub_23DC82EF0() & 1) != 0)
                  {
                    break;
                  }

                  v186 = (v186 + 1) & v187;
                  if (((*(v169 + 56 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186) & 1) == 0)
                  {
                    goto LABEL_64;
                  }
                }

                v17 = v293;
                v44 = v300;
                v154 = v302;
              }

              else
              {
LABEL_64:

                v150 = sub_23DC68CB8();
                v151 = v302;
                sub_23DC75E04(&v306, v150, v152);

                v153 = v291;
                sub_23DC7A628(v151, v291);
                (*v290)(v153, 0, 1, v303);
                v154 = v151;
                sub_23DC70460(v153, *v151, v151[1], 0, 0);
                sub_23DC7C16C(v153, &qword_27E30CDC8, &qword_23DC83688);
                v17 = v293;
                v44 = v300;
              }
            }

            sub_23DC7A68C(v154);
            v147 = v298;
          }

          if (v285 <= v19 + 1)
          {
            v156 = (v19 + 1);
          }

          else
          {
            v156 = v285;
          }

          v6 = (v156 - 1);
          while (1)
          {
            v155 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v155 >= v285)
            {
              v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE20, &qword_23DC83858);
              (*(*(v190 - 8) + 56))(v17, 1, 1, v190);
              v52 = 0;
              v19 = v6;
              goto LABEL_77;
            }

            v52 = *&v147[8 * v155];
            ++v19;
            if (v52)
            {
              v19 = v155;
              goto LABEL_76;
            }
          }

LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v93 = v306;
        sub_23DC7BDA4(v307, &v309);
        if (sub_23DC82CC0())
        {
          break;
        }

        if (sub_23DC82CC0())
        {
          sub_23DC7BD48(&v309, &v308);
          if (swift_dynamicCast())
          {
            sub_23DC82A10();
            if (sub_23DC82CC0())
            {
              v95 = sub_23DC82C80();
              v96 = sub_23DC7A130(v95, v93, v19);
              v98 = v97;
              v100 = v99;
              v102 = v101;

              v93 = MEMORY[0x23EEFB960](v96, v98, v100, v102);
              v19 = v103;
            }

            v54 = v275;
            v17 = v292;
            swift_beginAccess();
            (*v280)(v274, v296, v289);
            v104 = *&v54[v17];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v305 = *&v54[v17];
            v106 = v305;
            *&v54[v17] = 0x8000000000000000;
            v107 = sub_23DC7F118(v93, v19);
            v109 = *(v106 + 16);
            v110 = (v108 & 1) == 0;
            v111 = __OFADD__(v109, v110);
            v112 = v109 + v110;
            if (v111)
            {
              goto LABEL_162;
            }

            v17 = v108;
            if (*(v106 + 24) >= v112)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_46;
              }

              v54 = v107;
              sub_23DC8125C();
              v107 = v54;
              if ((v17 & 1) == 0)
              {
                goto LABEL_52;
              }

LABEL_47:
              v132 = v107;

              v133 = v305;
              v134 = v305[7] + *(v281 + 72) * v132;
              v135 = v289;
              (*(v281 + 40))(v134, v274, v289);
            }

            else
            {
              sub_23DC7FCDC(v112, isUniquelyReferenced_nonNull_native);
              v107 = sub_23DC7F118(v93, v19);
              if ((v17 & 1) != (v113 & 1))
              {
                goto LABEL_167;
              }

LABEL_46:
              if (v17)
              {
                goto LABEL_47;
              }

LABEL_52:
              v133 = v305;
              v305[(v107 >> 6) + 8] |= 1 << v107;
              v138 = (v133[6] + 16 * v107);
              *v138 = v93;
              v138[1] = v19;
              (*(v281 + 32))(v133[7] + *(v281 + 72) * v107, v274, v289);
              v139 = v133[2];
              v111 = __OFADD__(v139, 1);
              v140 = v139 + 1;
              if (v111)
              {
                goto LABEL_165;
              }

              v133[2] = v140;
              v135 = v289;
            }

            v141 = *&v275[v292];
            *&v275[v292] = v133;

            swift_endAccess();
            (*v283)(v296, v135);
            goto LABEL_59;
          }
        }

LABEL_13:
        __swift_destroy_boxed_opaque_existential_1Tm(&v309);
      }

      sub_23DC7BD48(&v309, &v308);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE30, &unk_23DC83950);
      if (!swift_dynamicCast())
      {
        goto LABEL_13;
      }

      v94 = v288;
      AccountSuggestion.init(with:)(v305, v288);
      if ((*v285)(v94, 1, v303) != 1)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v309);

      sub_23DC7C16C(v94, &qword_27E30CDC8, &qword_23DC83688);
    }

    sub_23DC7A6E8(v94, v290);
    if (sub_23DC82CC0())
    {
      v114 = sub_23DC82C80();
      v115 = sub_23DC7A130(v114, v93, v19);
      v117 = v116;
      v119 = v118;
      v121 = v120;

      v93 = MEMORY[0x23EEFB960](v115, v117, v119, v121);
      v19 = v122;
    }

    v54 = v282;
    v17 = v292;
    swift_beginAccess();
    sub_23DC7A628(v290, v273);
    v123 = *&v54[v17];
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v305 = *&v54[v17];
    v125 = v305;
    *&v54[v17] = 0x8000000000000000;
    v126 = sub_23DC7F118(v93, v19);
    v128 = *(v125 + 16);
    v129 = (v127 & 1) == 0;
    v111 = __OFADD__(v128, v129);
    v130 = v128 + v129;
    if (v111)
    {
      goto LABEL_163;
    }

    v17 = v127;
    if (*(v125 + 24) < v130)
    {
      break;
    }

    if (v124)
    {
      goto LABEL_49;
    }

    v54 = v126;
    sub_23DC8102C();
    v126 = v54;
    if ((v17 & 1) == 0)
    {
LABEL_56:
      v137 = v305;
      v305[(v126 >> 6) + 8] |= 1 << v126;
      v142 = (v137[6] + 16 * v126);
      *v142 = v93;
      v142[1] = v19;
      sub_23DC7A6E8(v273, v137[7] + *(v295 + 72) * v126);
      v143 = v137[2];
      v111 = __OFADD__(v143, 1);
      v144 = v143 + 1;
      if (v111)
      {
        goto LABEL_164;
      }

      v137[2] = v144;
      goto LABEL_58;
    }

LABEL_50:
    v136 = v126;

    v137 = v305;
    sub_23DC7BE44(v273, v305[7] + *(v295 + 72) * v136);
LABEL_58:
    v145 = *&v282[v292];
    *&v282[v292] = v137;

    swift_endAccess();
    sub_23DC7A68C(v290);
LABEL_59:
    __swift_destroy_boxed_opaque_existential_1Tm(&v309);
    v17 = v293;
  }

  sub_23DC7F9A0(v130, v124);
  v126 = sub_23DC7F118(v93, v19);
  if ((v17 & 1) == (v131 & 1))
  {
LABEL_49:
    if ((v17 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_167:
  result = sub_23DC82F30();
  __break(1u);
  return result;
}

uint64_t sub_23DC6E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AccountSuggestion();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_23DC7C16C(a1, &qword_27E30CDC8, &qword_23DC83688);
    sub_23DC7F3F8(a2, a3, v10);

    return sub_23DC7C16C(v10, &qword_27E30CDC8, &qword_23DC83688);
  }

  else
  {
    sub_23DC7A6E8(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23DC809A8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_23DC6E510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF8, &qword_23DC83830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_23DC82A40();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_23DC7C16C(a1, &qword_27E30CDF8, &qword_23DC83830);
    sub_23DC7F564(a2, a3, v10);

    return sub_23DC7C16C(v10, &qword_27E30CDF8, &qword_23DC83830);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23DC80B0C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_23DC6E6E8()
{
  v1 = v0;
  v2 = sub_23DC82B50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v29 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DC82B80();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = v10[2];
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v24 = v6;
  v25 = v3;
  v26 = v2;
  v13 = sub_23DC7E944(v11, 0);
  v14 = *(type metadata accessor for AccountSuggestion() - 8);
  v15 = sub_23DC82084(aBlock, v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v11, v10);

  result = sub_23DC7C00C();
  if (v15 == v11)
  {
    v3 = v25;
    v2 = v26;
    v6 = v24;
    v12 = MEMORY[0x277D84F90];
LABEL_5:
    v17 = sub_23DC6ED28();
    sub_23DC7BEAC(0, &qword_281303A08, 0x277D85C78);
    v18 = sub_23DC82D80();
    v19 = swift_allocObject();
    v19[2] = v1;
    v19[3] = v13;
    v19[4] = v17;
    aBlock[4] = sub_23DC7C014;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DC7C32C;
    aBlock[3] = &block_descriptor_99;
    v20 = _Block_copy(aBlock);

    v21 = v27;
    sub_23DC82B60();
    aBlock[0] = v12;
    sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
    sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
    v22 = v29;
    sub_23DC82DF0();
    MEMORY[0x23EEFBA90](0, v21, v22, v20);
    _Block_release(v20);

    (*(v3 + 8))(v22, v2);
    return (*(v28 + 8))(v21, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_23DC6EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock;
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    sub_23DC672C0(v8);
    v8(sub_23DC7C068, v6);
    sub_23DC69148(v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    swift_retain_n();

    sub_23DC82B30();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DC82B30();
  }
}

uint64_t sub_23DC6EC58()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DC82B30();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DC82B30();
}

void *sub_23DC6ED28()
{
  v74 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for AccountSuggestion();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v61 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v61 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  v11 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  swift_beginAccess();
  v64 = v0;
  v12 = *(v0 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v63 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_locallySupportedAccountTypes;
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v19 = 0;
  v62 = MEMORY[0x277D84F90];
  v65 = v1;
  v66 = v2;
  v67 = v12;
  v68 = v8;
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_12:
  while (2)
  {
    while (2)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = *(v12 + 56);
      v70 = *(v2 + 72);
      sub_23DC7A628(v22 + v70 * (v21 | (v18 << 6)), v8);
      sub_23DC7A6E8(v8, v10);
      if (v10[*(v1 + 56)])
      {
LABEL_7:
        sub_23DC7A68C(v10);
        if (!v16)
        {
          goto LABEL_8;
        }

        continue;
      }

      break;
    }

    v71 = v19;
    v23 = *&v10[*(v1 + 40)];
    v24 = *(v23 + 32);
    v25 = v24 & 0x3F;
    v69 = ((1 << v24) + 63) >> 6;
    v26 = 8 * v69;

    if (v25 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v56 = swift_slowAlloc();

        v19 = v71;
        v57 = sub_23DC794D8(v56, v69, v23, sub_23DC6F7D8);
        if (!v19)
        {
          v58 = v57;
          swift_bridgeObjectRelease_n();
          MEMORY[0x23EEFC160](v56, -1, -1);
          v44 = v58;
          goto LABEL_33;
        }

        swift_bridgeObjectRelease_n();
        MEMORY[0x23EEFC160](v56, -1, -1);
        __break(1u);
        goto LABEL_51;
      }
    }

    MEMORY[0x28223BE20](v27);
    bzero(&v61 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0), v26);
    v28 = 0;
    v29 = 0;
    v30 = 1 << *(v23 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v23 + 56);
    v33 = (v30 + 63) >> 6;
LABEL_18:
    if (v32)
    {
      v34 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v35 = v34 | (v29 << 6);
      goto LABEL_25;
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v29 >= v33)
      {
        break;
      }

      v37 = *(v23 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v32 = (v37 - 1) & v37;
        v35 = __clz(__rbit64(v37)) | (v29 << 6);
LABEL_25:
        v38 = (*(v23 + 48) + 16 * v35);
        v40 = *v38;
        v39 = v38[1];
        v41 = v40 & 0xFFFFFFFFFFFFLL;
        if ((v39 & 0x2000000000000000) != 0)
        {
          v42 = HIBYTE(v39) & 0xF;
        }

        else
        {
          v42 = v41;
        }

        if (v42)
        {
          *(&v61 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v35;
          if (__OFADD__(v28++, 1))
          {
            goto LABEL_49;
          }
        }

        goto LABEL_18;
      }
    }

    v44 = sub_23DC795F8((&v61 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0)), v69, v28, v23);
    v1 = v65;
    v19 = v71;
LABEL_33:
    v45 = *(v44 + 16);

    v2 = v66;
    v8 = v68;
    if (!v45 || (v47 = *(v64 + v63), v48 = *(v10 + 3), v72[0] = *(v10 + 2), v72[1] = v48, MEMORY[0x28223BE20](v46), *(&v61 - 2) = v72, (sub_23DC792B8(sub_23DC7C388, (&v61 - 4), v49) & 1) == 0))
    {
      v12 = v67;
      goto LABEL_7;
    }

    sub_23DC7A6E8(v10, v61);
    v50 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v50;
    v71 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23DC78FB4(0, v50[2] + 1, 1);
      v50 = v73;
    }

    v12 = v67;
    v53 = v50[2];
    v52 = v50[3];
    v54 = v50;
    if (v53 >= v52 >> 1)
    {
      sub_23DC78FB4(v52 > 1, v53 + 1, 1);
      v12 = v67;
      v54 = v73;
    }

    v54[2] = v53 + 1;
    v55 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v62 = v54;
    sub_23DC7A6E8(v61, v54 + v55 + v53 * v70);
    v8 = v68;
    v19 = v71;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_8:
  while (2)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    if (v20 < v17)
    {
      v16 = *(v13 + 8 * v20);
      ++v18;
      if (!v16)
      {
        continue;
      }

      v18 = v20;
      goto LABEL_12;
    }

    break;
  }

  v72[0] = v62;

  sub_23DC769C8(v72, sub_23DC7708C, sub_23DC76BC4);
  if (!v19)
  {

    result = v72[0];
    v60 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_51:

  __break(1u);
  return result;
}

uint64_t sub_23DC6F30C(void *a1, void *a2)
{
  v9 = a1[2];
  v11 = a1[3];
  v5 = a2[2];
  v7 = a2[3];
  sub_23DC7BF10();
  result = sub_23DC82DD0();
  if (result == -1)
  {
    return 0;
  }

  if (result != 1)
  {
    if (result)
    {
      type metadata accessor for ComparisonResult();
      result = sub_23DC82F00();
      __break(1u);
    }

    else
    {
      v10 = a1[4];
      v12 = a1[5];
      v6 = a2[4];
      v8 = a2[5];
      return sub_23DC82DD0() == 1;
    }
  }

  return result;
}

void sub_23DC6F404(void *a1)
{
  v2 = [a1 accountType];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 identifier];

  if (!v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = sub_23DC82C50();
  v7 = v6;

  v8 = [a1 username];
  if (v8)
  {
    v9 = v8;
    v10 = sub_23DC82C50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_23DC6F4F4(v5, v7, v10, v12);
}

uint64_t sub_23DC6F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a2;
  v7 = type metadata accessor for AccountSuggestion();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = (&v33 - v14);
  v38 = a4;
  if (a4)
  {
    v36 = v13;
    v16 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
    swift_beginAccess();
    v17 = *(v4 + v16);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;

    v23 = 0;
    for (i = MEMORY[0x277D84F90]; v20; result = sub_23DC7A6E8(v36, i + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + v31 * v27))
    {
LABEL_12:
      while (1)
      {
        v26 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v27 = *(v37 + 72);
        sub_23DC7A628(*(v17 + 56) + v27 * (v26 | (v23 << 6)), v12);
        sub_23DC7A6E8(v12, v15);
        v28 = v15[2] == a1 && v15[3] == v40;
        if (v28 || (sub_23DC82EF0()) && (v15[4] == v39 && v15[5] == v38 || (sub_23DC82EF0()))
        {
          break;
        }

        result = sub_23DC7A68C(v15);
        if (!v20)
        {
          goto LABEL_8;
        }
      }

      sub_23DC7A6E8(v15, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23DC78FB4(0, *(i + 16) + 1, 1);
        i = v41;
      }

      v31 = *(i + 16);
      v30 = *(i + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v34 = *(i + 16);
        v35 = v31 + 1;
        sub_23DC78FB4(v30 > 1, v31 + 1, 1);
        v31 = v34;
        v32 = v35;
        i = v41;
      }

      *(i + 16) = v32;
    }

LABEL_8:
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v21)
      {

        return i;
      }

      v20 = *(v17 + 64 + 8 * v25);
      ++v23;
      if (v20)
      {
        v23 = v25;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

BOOL sub_23DC6F7D8(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

void sub_23DC6F7F8()
{
  v1 = sub_23DC82AB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults;
  v30 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults);
  if (!v10 || (v11 = v10, v12 = sub_23DC82C40(), v13 = [v11 BOOLForKey_], v11, v12, (v13 & 1) == 0))
  {
    if (qword_281303DE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v1, qword_281303DE8);
    swift_beginAccess();
    v31 = v2;
    v15 = *(v2 + 16);
    v15(v8, v14, v1);
    v16 = sub_23DC82A90();
    v17 = sub_23DC82D40();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v15;
      v19 = v6;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23DC66000, v16, v17, "Not locally migrated! Running now", v20, 2u);
      v21 = v20;
      v6 = v19;
      v15 = v18;
      MEMORY[0x23EEFC160](v21, -1, -1);
    }

    v22 = *(v31 + 8);
    v31 += 8;
    v22(v8, v1);
    v23 = *(v30 + v9);
    if (v23)
    {
      v24 = v23;
      v25 = sub_23DC82C40();
      [v24 setBool:1 forKey:v25];
    }

    sub_23DC702A0();
    v15(v6, v14, v1);
    v26 = sub_23DC82A90();
    v27 = sub_23DC82D40();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23DC66000, v26, v27, "Local migration is now complete, you are free to get up and move about the cabin", v28, 2u);
      MEMORY[0x23EEFC160](v28, -1, -1);
    }

    v22(v6, v1);
  }
}

void sub_23DC6FB40(void *a1)
{
  v3 = sub_23DC829D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_supportedAccountTypes);
  v9 = [a1 accountType];
  if (!v9)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = v9;
  v11 = [v9 identifier];

  if (!v11)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = sub_23DC82C50();
  v14 = v13;

  *&v40 = v12;
  *(&v40 + 1) = v14;
  MEMORY[0x28223BE20](v15);
  *(&v40 - 2) = &v40;
  v16 = sub_23DC792B8(sub_23DC7C388, (&v40 - 2), v8);

  if ((v16 & 1) == 0)
  {
    return;
  }

  v17 = [a1 username];
  if (!v17)
  {
    return;
  }

  v18 = [a1 username];
  if (!v18)
  {
    goto LABEL_31;
  }

  v19 = v18;
  v20 = sub_23DC82C50();
  v22 = v21;

  *&v40 = v20;
  *(&v40 + 1) = v22;
  sub_23DC829C0();
  sub_23DC7BF10();
  v23 = sub_23DC82DC0();
  v25 = v24;
  (*(v4 + 8))(v7, v3);

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    return;
  }

  v27 = [a1 parentAccount];
  if (v27)
  {
  }

  v28 = [a1 personaIdentifier];
  if (v28)
  {
  }

  else
  {
    [a1 isDataSeparatedAccount];
  }

  if ([a1 accountPropertyForKey_])
  {
    sub_23DC82DE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  sub_23DC7C16C(&v40, &qword_27E30CDE0, &qword_23DC83960);
  v29 = [a1 accountType];
  if (!v29)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = [v29 identifier];

  if (!v31)
  {
    v38 = *MEMORY[0x277CB8BA0];
    sub_23DC82C50();
    goto LABEL_25;
  }

  v32 = sub_23DC82C50();
  v34 = v33;

  v35 = *MEMORY[0x277CB8BA0];
  v36 = sub_23DC82C50();
  if (!v34)
  {
LABEL_25:

    return;
  }

  if (v32 == v36 && v34 == v37)
  {

LABEL_28:
    [a1 aa:*MEMORY[0x277CEC688] isAccountClass:{v40, v41}];
    return;
  }

  v39 = sub_23DC82EF0();

  if (v39)
  {
    goto LABEL_28;
  }
}

id sub_23DC6FF90(void *a1)
{
  sub_23DC6FB40(a1);
  if ((v3 & 1) == 0)
  {
    v12 = 0;
    return (v12 & 1);
  }

  v4 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_accountTypesThatNeedProperties);
  result = [a1 accountType];
  if (result)
  {
    v6 = result;
    v7 = [result identifier];

    if (v7)
    {
      v9 = sub_23DC82C50();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v14[0] = v9;
    v14[1] = v11;
    MEMORY[0x28223BE20](v8);
    v13[2] = v14;
    v12 = sub_23DC792B8(sub_23DC7BEF4, v13, v4);

    return (v12 & 1);
  }

  __break(1u);
  return result;
}

char *sub_23DC700B4()
{
  v35 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DC83580;
  v1 = *MEMORY[0x277CB8D10];
  *(inited + 32) = sub_23DC82C50();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CB8BC8];
  *(inited + 48) = sub_23DC82C50();
  *(inited + 56) = v4;
  v5 = *MEMORY[0x277CB8BD8];
  *(inited + 64) = sub_23DC82C50();
  *(inited + 72) = v6;
  v7 = *MEMORY[0x277CB8C60];
  *(inited + 80) = sub_23DC82C50();
  *(inited + 88) = v8;
  v9 = *MEMORY[0x277CB8CD8];
  *(inited + 96) = sub_23DC82C50();
  *(inited + 104) = v10;
  v11 = *MEMORY[0x277CB8C00];
  *(inited + 112) = sub_23DC82C50();
  *(inited + 120) = v12;
  v13 = *MEMORY[0x277CB8C98];
  *(inited + 128) = sub_23DC82C50();
  *(inited + 136) = v14;
  v15 = *MEMORY[0x277CB8C40];
  *(inited + 144) = sub_23DC82C50();
  *(inited + 152) = v16;
  v17 = *MEMORY[0x277CB8D38];
  *(inited + 160) = sub_23DC82C50();
  *(inited + 168) = v18;
  v19 = *MEMORY[0x277CB8B98];
  *(inited + 176) = sub_23DC82C50();
  *(inited + 184) = v20;
  v21 = *MEMORY[0x277CB8BA0];
  *(inited + 192) = sub_23DC82C50();
  *(inited + 200) = v22;
  v23 = *MEMORY[0x277CB8B80];
  *(inited + 208) = sub_23DC82C50();
  *(inited + 216) = v24;
  v25 = *MEMORY[0x277CB8B88];
  *(inited + 224) = sub_23DC82C50();
  *(inited + 232) = v26;
  v27 = *MEMORY[0x277CB8CE8];
  *(inited + 240) = sub_23DC82C50();
  *(inited + 248) = v28;
  v29 = *MEMORY[0x277CB8C50];
  v30 = sub_23DC82C50();
  v32 = v31;
  result = sub_23DC75A1C(1, 15, 1, inited);
  *(result + 2) = 15;
  *(result + 32) = v30;
  *(result + 33) = v32;
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23DC702A0()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_supportedAccountTypes);
  v4 = sub_23DC82CE0();
  v16[0] = 0;
  v5 = [v2 accountsWithAccountTypeIdentifiers:v4 error:v16];

  v6 = v16[0];
  if (v5)
  {
    sub_23DC7BEAC(0, &qword_2813039F0, 0x277CB8F30);
    v7 = sub_23DC82CF0();
    v8 = v6;

    if (v7 >> 62)
    {
      v9 = sub_23DC82E90();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 >= 1)
        {
          for (i = 0; i != v9; ++i)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x23EEFBB70](i, v7);
            }

            else
            {
              v11 = *(v7 + 8 * i + 32);
            }

            v12 = v11;
            sub_23DC734E8(v11);
          }

          goto LABEL_13;
        }

        __break(1u);
LABEL_16:
        __break(1u);
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  v13 = v16[0];
  v14 = sub_23DC829E0();

  swift_willThrow();
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_23DC70460(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v71 = a4;
  v69 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - v14;
  v16 = type metadata accessor for AccountSuggestion();
  v17 = *(v16 - 8);
  v72 = v16;
  v73 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v70 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_23DC82AB0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v20, qword_281303DE8);
  swift_beginAccess();
  (*(v21 + 16))(v24, v25, v20);
  v26 = sub_23DC82A90();
  v27 = sub_23DC82D40();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v67 = v15;
    v29 = a5;
    v30 = v6;
    v31 = a2;
    v32 = a3;
    v33 = v28;
    *v28 = 0;
    _os_log_impl(&dword_23DC66000, v26, v27, "updating KVS with latest local!", v28, 2u);
    v34 = v33;
    a3 = v32;
    a2 = v31;
    v6 = v30;
    a5 = v29;
    v15 = v67;
    MEMORY[0x23EEFC160](v34, -1, -1);
  }

  (*(v21 + 8))(v24, v20);
  v35 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  swift_beginAccess();
  if (*(v6 + v35) != 1 || (a5 & 1) != 0)
  {
    v74 = 0xD000000000000013;
    v75 = 0x800000023DC84070;
    MEMORY[0x23EEFB9A0](a2, a3);
    v36 = v75;
    v37 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
    v38 = *(v6 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs);
    v67 = v74;
    if (v38)
    {
      v39 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs;
      v40 = a3;
      v41 = v38;
      v42 = sub_23DC82C40();
      v43 = [v41 dictionaryForKey_];

      v44 = v70;
      if (v43)
      {
        v45 = sub_23DC82C10();
      }

      else
      {
        v45 = 0;
      }

      a3 = v40;
      v37 = v39;
      v46 = v44;
    }

    else
    {
      v45 = 0;
      v46 = v70;
    }

    sub_23DC7C224(v69, v15, &qword_27E30CDC8, &qword_23DC83688);
    v47 = v72;
    if ((*(v73 + 48))(v15, 1, v72) == 1)
    {
      sub_23DC7C16C(v15, &qword_27E30CDC8, &qword_23DC83688);
      if (v45)
      {

        v48 = v68;
        (*(v73 + 56))(v68, 1, 1, v47);
        swift_beginAccess();

        sub_23DC6E350(v48, a2, a3);
        swift_endAccess();
        v49 = *(v6 + v37);
        if (v49)
        {
          v50 = v49;
          v51 = sub_23DC82C40();

          [v50 removeObjectForKey_];

          if ((v71 & 1) == 0)
          {
            return;
          }

          goto LABEL_22;
        }
      }

LABEL_21:

      if ((v71 & 1) == 0)
      {
        return;
      }

      goto LABEL_22;
    }

    sub_23DC7A6E8(v15, v46);
    if (v45)
    {
      v70 = v36;
      v52 = AccountSuggestion.dictionaryRepresentation()();
      sub_23DC70C7C(v45);

      v53 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v54 = sub_23DC82BF0();

      v55 = [v53 initWithDictionary_];

      sub_23DC70C7C(v52);

      v56 = sub_23DC82BF0();

      LOBYTE(v53) = [v55 isEqualToDictionary_];

      if (v53)
      {
        sub_23DC7A68C(v46);
        goto LABEL_21;
      }

      v61 = *v46;
      v62 = v46[1];
      v63 = v68;
      sub_23DC7A628(v46, v68);
      (*(v73 + 56))(v63, 0, 1, v72);
      swift_beginAccess();

      sub_23DC6E350(v63, v61, v62);
      swift_endAccess();
      v60 = *(v6 + v37);
      if (v60)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v57 = *v46;
      v58 = v46[1];
      v59 = v68;
      sub_23DC7A628(v46, v68);
      (*(v73 + 56))(v59, 0, 1, v47);
      swift_beginAccess();

      sub_23DC6E350(v59, v57, v58);
      swift_endAccess();
      v60 = *(v6 + v37);
      if (v60)
      {
LABEL_27:
        v64 = v60;
        AccountSuggestion.dictionaryRepresentation()();
        v65 = sub_23DC82BF0();

        v66 = sub_23DC82C40();

        [v64 setDictionary:v65 forKey:v66];

        goto LABEL_29;
      }
    }

LABEL_29:
    sub_23DC7A68C(v46);
    if ((v71 & 1) == 0)
    {
      return;
    }
  }

LABEL_22:
  sub_23DC6E6E8();
}

uint64_t sub_23DC70C7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDE8, &qword_23DC83820);
    v2 = sub_23DC82EC0();
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
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23DC7BD48(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_23DC7BDA4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_23DC7BDA4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_23DC7BDA4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_23DC82E10();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_23DC7BDA4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23DC70F44(uint64_t a1, int a2)
{
  v22 = a2;
  v4 = sub_23DC82B50();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_23DC82B80();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AccountSuggestion();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = *(v2 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  sub_23DC7A628(a1, &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  sub_23DC7A6E8(&v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  *(v17 + v16 + v14) = v22;
  aBlock[4] = sub_23DC7A86C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = &block_descriptor_32;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  sub_23DC82B60();
  v25 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v11, v7, v18);
  _Block_release(v18);

  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);
}

uint64_t sub_23DC712BC(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for AccountSuggestion();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23DC70460(v8, *a2, a2[1], 1, a3);
  return sub_23DC7C16C(v8, &qword_27E30CDC8, &qword_23DC83688);
}

uint64_t sub_23DC713B4()
{
  v1 = v0;
  v2 = sub_23DC82AB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281303DE8);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23DC82A90();
  v9 = sub_23DC82D40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DC66000, v8, v9, "Deduplicating all", v10, 2u);
    MEMORY[0x23EEFC160](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_23DC7A8F0;
  *(v12 + 24) = v1;
  aBlock[4] = sub_23DC7C33C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC69B98;
  aBlock[3] = &block_descriptor_39;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  dispatch_sync(v14, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DC71678(uint64_t a1)
{
  v120 = sub_23DC82AB0();
  v122 = *(v120 - 8);
  v3 = *(v122 + 64);
  v4 = MEMORY[0x28223BE20](v120);
  v121 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v119 = &v118 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v129 = &v118 - v9;
  v136 = sub_23DC829D0();
  v10 = *(v136 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v136);
  v137 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for AccountSuggestion();
  v13 = *(v132 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v132);
  v124 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v118 = &v118 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v127 = (&v118 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v123 = &v118 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v118 - v24;
  MEMORY[0x28223BE20](v23);
  v135 = &v118 - v26;
  v143 = MEMORY[0x277D84F98];
  v27 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
  swift_beginAccess();
  v131 = a1;
  v28 = *(a1 + v27);
  v29 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v28 + 64);
  v33 = (v30 + 63) >> 6;
  v134 = (v10 + 8);
  v128 = (v13 + 56);
  v138 = v28;

  v34 = 0;
  v126 = xmmword_23DC83570;
  v130 = v13;
  v133 = v33;
  v125 = v25;
  while (v32)
  {
LABEL_11:
    v37 = *(v138 + 56);
    v38 = v13;
    v139 = *(v13 + 72);
    v39 = v135;
    sub_23DC7A628(v37 + v139 * (__clz(__rbit64(v32)) | (v34 << 6)), v135);
    sub_23DC7A6E8(v39, v25);
    v40 = *(v25 + 32);
    v1 = *(v25 + 40);
    v141 = v40;
    v142 = v1;

    v41 = v25;
    v42 = v137;
    sub_23DC829C0();
    sub_23DC7BF10();
    v43 = sub_23DC82DC0();
    v45 = v44;
    (*v134)(v42, v136);

    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {
      v35 = v129;
      (*v128)(v129, 1, 1, v132);
      sub_23DC70460(v35, *v41, v41[1], 1, 0);
      sub_23DC7C16C(v35, &qword_27E30CDC8, &qword_23DC83688);
      v25 = v41;
      v33 = v133;
      v13 = v38;
      goto LABEL_5;
    }

    v47 = v41[3];
    v141 = v41[2];
    v142 = v47;

    MEMORY[0x23EEFB9A0](46, 0xE100000000000000);
    MEMORY[0x23EEFB9A0](v40, v1);
    v48 = v141;
    v1 = v142;
    v49 = v143;
    v25 = v41;
    if (!v143[2] || (sub_23DC7F118(v141, v142), (v50 & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE08, &qword_23DC83840);
      v58 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = v126;
      sub_23DC7A628(v41, v59 + v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v141 = v49;
      v25 = sub_23DC7F118(v48, v1);
      v62 = v49[2];
      v63 = (v61 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
LABEL_66:
        v112 = v120;
        v113 = __swift_project_value_buffer(v120, qword_281303DE8);
        swift_beginAccess();
        (*v1)(v121, v113, v112);
        v114 = sub_23DC82A90();
        v115 = sub_23DC82D40();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_23DC66000, v114, v115, "Duplicates found and removed", v116, 2u);
          MEMORY[0x23EEFC160](v116, -1, -1);
        }

        (*v25)(v121, v112);
LABEL_69:
        sub_23DC6E6E8();
      }

      v65 = v61;
      if (v49[3] >= v64)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v68 = v141;
          if ((v61 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_23DC814DC();
          v68 = v141;
          if ((v65 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_23DC8005C(v64, isUniquelyReferenced_nonNull_native);
        v66 = sub_23DC7F118(v48, v1);
        if ((v65 & 1) != (v67 & 1))
        {
          sub_23DC82F30();
          __break(1u);
          goto LABEL_76;
        }

        v25 = v66;
        v68 = v141;
        if ((v65 & 1) == 0)
        {
LABEL_32:
          v68[(v25 >> 6) + 8] |= 1 << v25;
          v71 = (v68[6] + 16 * v25);
          *v71 = v48;
          v71[1] = v1;
          *(v68[7] + 8 * v25) = v59;
          v72 = v68[2];
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            goto LABEL_73;
          }

          v68[2] = v74;
LABEL_34:
          v143 = v68;
          v13 = v130;
          v25 = v125;
LABEL_35:
          v33 = v133;
          goto LABEL_5;
        }
      }

      v69 = v68[7];
      v70 = *(v69 + 8 * v25);
      *(v69 + 8 * v25) = v59;

      goto LABEL_34;
    }

    v52 = sub_23DC7241C(&v141, v48, v1);
    if (!*v51)
    {
      v13 = v38;
      (v52)(&v141, 0);

      goto LABEL_35;
    }

    v53 = v51;
    sub_23DC7A628(v41, v123);
    v54 = *v53;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *v53 = v54;
    v1 = v41;
    if ((v55 & 1) == 0)
    {
      v54 = sub_23DC75C2C(0, v54[2] + 1, 1, v54);
      *v53 = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_23DC75C2C(v56 > 1, v57 + 1, 1, v54);
      *v53 = v54;
    }

    v33 = v133;
    v54[2] = v57 + 1;
    v13 = v130;
    sub_23DC7A6E8(v123, v54 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v57 * v139);
    (v52)(&v141, 0);

    v25 = v1;
LABEL_5:
    v32 &= v32 - 1;
    sub_23DC7A68C(v25);
  }

  while (2)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v36 < v33)
    {
      v32 = *(v29 + 8 * v36);
      ++v34;
      if (v32)
      {
        v34 = v36;
        goto LABEL_11;
      }

      continue;
    }

    break;
  }

  v75 = v143;
  v76 = v143 + 8;
  v77 = 1 << *(v143 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & v143[8];
  v80 = (v77 + 63) >> 6;
  v1 = (v122 + 16);
  v25 = v122 + 8;

  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0x281303000uLL;
  if (!v79)
  {
LABEL_41:
    while (1)
    {
      v87 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        goto LABEL_71;
      }

      if (v87 >= v80)
      {

        if ((v81 & 1) == 0)
        {
          goto LABEL_69;
        }

        if (*(v84 + 3552) != -1)
        {
          goto LABEL_74;
        }

        goto LABEL_66;
      }

      v79 = v76[v87];
      ++v82;
      if (v79)
      {
        v82 = v87;
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    while (1)
    {
      v85 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v86 = *(*(v75 + 56) + ((v82 << 9) | (8 * v85)));
      if (v86[2] > 1uLL)
      {
        break;
      }

      if (!v79)
      {
        goto LABEL_41;
      }
    }

    v135 = v83;
    v88 = *(v84 + 3552);

    if (v88 != -1)
    {
      swift_once();
    }

    v89 = v120;
    v90 = __swift_project_value_buffer(v120, qword_281303DE8);
    swift_beginAccess();
    v91 = *v1;
    v134 = v1;
    v91(v119, v90, v89);
    v92 = sub_23DC82A90();
    v93 = sub_23DC82D40();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_23DC66000, v92, v93, "We have duplicates, lets merge everything together", v94, 2u);
      MEMORY[0x23EEFC160](v94, -1, -1);
    }

    (*v25)(v119, v120);
    v140 = v86;

    v32 = v135;
    sub_23DC769C8(&v140, sub_23DC77B58, sub_23DC76E8C);
    if (v32)
    {
      break;
    }

    v135 = 0;
    v1 = v134;
    if (v140[2])
    {
      *&v126 = v25;
      v133 = v75;
      v95 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v96 = v118;
      sub_23DC7A628(v140 + v95, v118);

      sub_23DC7A6E8(v96, v127);
      v97 = v86[2];
      v98 = v124;
      if (v97)
      {
        v137 = *(v132 + 40);
        v99 = *v127;
        v138 = v127[1];
        v139 = v99;
        v100 = v86 + v95;
        v136 = *(v130 + 72);
        do
        {
          sub_23DC7A628(v100, v98);
          v101 = *(v98 + *(v132 + 40));

          v103 = v98;
          sub_23DC72A74(v102);
          v104 = *v98;
          v105 = v103[1];
          if (*v103 != v139 || v105 != v138)
          {
            v107 = *v103;
            v108 = v103[1];
            if ((sub_23DC82EF0() & 1) == 0)
            {
              v109 = v129;
              (*v128)(v129, 1, 1, v132);
              sub_23DC70460(v109, v104, v105, 0, 1);
              sub_23DC7C16C(v109, &qword_27E30CDC8, &qword_23DC83688);
            }
          }

          v98 = v124;
          sub_23DC7A68C(v124);
          v100 += v136;
          --v97;
        }

        while (v97);
      }

      v110 = v127;
      v111 = v129;
      sub_23DC7A628(v127, v129);
      v81 = 1;
      (*v128)(v111, 0, 1, v132);
      sub_23DC70460(v111, *v110, v110[1], 0, 0);

      sub_23DC7C16C(v111, &qword_27E30CDC8, &qword_23DC83688);
      sub_23DC7A68C(v110);
      v75 = v133;
      v1 = v134;
      v25 = v126;
    }

    else
    {

      v81 = 1;
    }

    v84 = 0x281303000;
    v83 = v135;
    if (!v79)
    {
      goto LABEL_41;
    }
  }

LABEL_76:

  __break(1u);
  return result;
}

void (*sub_23DC7241C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_23DC7981C(v6, a2, a3);
  return sub_23DC724A4;
}

void sub_23DC724A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23DC724F0(void *a1, int a2, int a3, int a4, int a5)
{
  v67 = a5;
  v64 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v61[-v11];
  v71 = type metadata accessor for AccountSuggestion();
  v65 = *(v71 - 8);
  v12 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v71);
  v15 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v66 = &v61[-v17];
  MEMORY[0x28223BE20](v16);
  v19 = &v61[-v18];
  v20 = sub_23DC82AB0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a1[2];
  if (v26 >= 2)
  {
    v62 = a3;
    v63 = a2;
    v70 = v5;
    v27 = a1;
    v68 = v19;
    if (qword_281303DE0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v20, qword_281303DE8);
    swift_beginAccess();
    (*(v21 + 16))(v25, v28, v20);
    v29 = sub_23DC82A90();
    v30 = sub_23DC82D40();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23DC66000, v29, v30, "We have duplicates, lets merge everything together", v31, 2u);
      MEMORY[0x23EEFC160](v31, -1, -1);
    }

    (*(v21 + 8))(v25, v20);
    v32 = v27;
    v72 = v27;

    sub_23DC769C8(&v72, sub_23DC77B58, sub_23DC76E8C);
    v33 = v65;
    v34 = v63;
    if (v72[2])
    {
      v35 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v36 = v66;
      sub_23DC7A628(v72 + v35, v66);

      v37 = v68;
      sub_23DC7A6E8(v36, v68);
      if (v34)
      {
        v38 = sub_23DC68CB8();
        v39 = v37 + *(v71 + 40);
        sub_23DC75E04(&v72, v38, v40);
      }

      v41 = *(v71 + 40);
      v42 = v32 + v35;
      v66 = (v33 + 56);
      v43 = *v37;
      v44 = v37[1];
      v45 = *(v33 + 72);
      do
      {
        sub_23DC7A628(v42, v15);
        v46 = *(v15 + *(v71 + 40));

        sub_23DC72A74(v47);
        v48 = *v15;
        v49 = v15[1];
        if (*v15 != v43 || v49 != v44)
        {
          v51 = *v15;
          v52 = v15[1];
          if ((sub_23DC82EF0() & 1) == 0)
          {
            v53 = v69;
            (*v66)(v69, 1, 1, v71);
            sub_23DC70460(v53, v48, v49, 0, v67 & 1);
            v54 = v53;
            v37 = v68;
            sub_23DC7C16C(v54, &qword_27E30CDC8, &qword_23DC83688);
          }
        }

        sub_23DC7A68C(v15);
        v42 += v45;
        --v26;
      }

      while (v26);
      if (v62)
      {
        v55 = sub_23DC68CB8();
        v56 = v37 + *(v71 + 40);
        sub_23DC766C8(v55, v57);
      }

      v58 = v37;
      v59 = v37;
      v60 = v69;
      sub_23DC7A628(v58, v69);
      (*v66)(v60, 0, 1, v71);
      sub_23DC70460(v60, *v59, v59[1], 0, 0);
      sub_23DC7C16C(v60, &qword_27E30CDC8, &qword_23DC83688);
      if (v64)
      {
        sub_23DC6E6E8();
      }

      return sub_23DC7A68C(v68);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DC72A74(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_23DC75E04(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_23DC72B78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23DC82AB0();
  v85 = *(v6 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6);
  v88 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_23DC82A40();
  v9 = *(v89 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v89);
  v82 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF8, &qword_23DC83830);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v84 = &v78 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - v20;
  v83 = v22;
  v86 = v6;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    a1 = sub_23DC68CB8();
    v23 = v24;
  }

  v25 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_deviceLastUsedDates;
  swift_beginAccess();
  v26 = *(v2 + v25);
  v27 = *(v26 + 16);

  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = sub_23DC7F118(a1, v23);
  if ((v29 & 1) == 0)
  {

LABEL_11:
    v42 = v89;
    v87 = *(v9 + 56);
    v87(v21, 1, 1, v89);
    sub_23DC7C16C(v21, &qword_27E30CDF8, &qword_23DC83830);
    v38 = v23;
    v43 = v86;
    v41 = v85;
    goto LABEL_12;
  }

  v81 = a1;
  v30 = *(v26 + 56);
  v78 = *(v9 + 72);
  v31 = v30 + v78 * v28;
  v32 = *(v9 + 16);
  v33 = v9;
  v34 = v89;
  v79 = v32;
  v32(v21, v31, v89);

  v80 = v33;
  v35 = 1;
  v87 = *(v33 + 56);
  v87(v21, 0, 1, v34);
  sub_23DC7C16C(v21, &qword_27E30CDF8, &qword_23DC83830);
  v36 = *(v3 + v25);
  if (*(v36 + 16))
  {
    v37 = *(v3 + v25);

    v38 = v23;
    v39 = sub_23DC7F118(v81, v23);
    if (v40)
    {
      v79(v19, *(v36 + 56) + v39 * v78, v89);
      v35 = 0;
    }

    v9 = v80;
    v41 = v85;
  }

  else
  {
    v38 = v23;
    v9 = v80;
    v41 = v85;
  }

  v60 = v35;
  v61 = v89;
  v87(v19, v60, 1, v89);
  if ((*(v9 + 48))(v19, 1, v61))
  {
    sub_23DC7C16C(v19, &qword_27E30CDF8, &qword_23DC83830);
    v62 = 0.0;
  }

  else
  {
    v63 = v82;
    v79(v82, v19, v61);
    sub_23DC7C16C(v19, &qword_27E30CDF8, &qword_23DC83830);
    sub_23DC82A00();
    v62 = v64;
    (*(v9 + 8))(v63, v61);
  }

  a1 = v81;
  v42 = v61;
  v43 = v86;
  v65 = *(v3 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_defaults);
  if (v65 && (v66 = v65, v67 = sub_23DC82C40(), [v66 doubleForKey_], v69 = v68, v66, v67, v69 > 0.0))
  {
    if (v69 >= -v62)
    {
      goto LABEL_31;
    }
  }

  else if (v62 >= -604800.0)
  {
LABEL_31:

    return 0;
  }

LABEL_12:
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v43, qword_281303DE8);
  swift_beginAccess();
  (*(v41 + 16))(v88, v44, v43);
  v45 = sub_23DC82A90();
  v46 = sub_23DC82D40();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_23DC66000, v45, v46, "Updating device with date now", v47, 2u);
    v48 = v47;
    v42 = v89;
    MEMORY[0x23EEFC160](v48, -1, -1);
  }

  (*(v41 + 8))(v88, v43);

  v49 = v84;
  sub_23DC82A30();
  v87(v49, 0, 1, v42);
  swift_beginAccess();
  sub_23DC6E510(v49, a1, v38);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_nonUpdatingMode;
  swift_beginAccess();
  if ((*(v3 + v50) & 1) != 0 || (v51 = a1, (v52 = *(v3 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvs)) == 0))
  {
  }

  else
  {
    v53 = *(v3 + v25);
    if (*(v53 + 16))
    {
      v54 = v52;

      v55 = sub_23DC7F118(v51, v38);
      v56 = v83;
      if (v57)
      {
        (*(v9 + 16))(v83, *(v53 + 56) + *(v9 + 72) * v55, v42);

        v58 = v56;
        v59 = 0;
      }

      else
      {

        v58 = v56;
        v59 = 1;
      }

      v87(v58, v59, 1, v42);
    }

    else
    {
      v56 = v83;
      v87(v83, 1, 1, v42);
      v71 = v52;
    }

    if ((*(v9 + 48))(v56, 1, v42))
    {
      sub_23DC7C16C(v56, &qword_27E30CDF8, &qword_23DC83830);
      v72 = MEMORY[0x277D83B88];
      v93 = MEMORY[0x277D83B88];
      *&v92 = 0;
    }

    else
    {
      v73 = v82;
      (*(v9 + 16))(v82, v56, v42);
      sub_23DC7C16C(v56, &qword_27E30CDF8, &qword_23DC83830);
      sub_23DC82A20();
      v75 = v74;
      (*(v9 + 8))(v73, v42);
      v91 = MEMORY[0x277D839F8];
      *&v90 = v75;
      sub_23DC7BDA4(&v90, &v92);
      v72 = v93;
    }

    __swift_project_boxed_opaque_existential_0(&v92, v72);
    v76 = sub_23DC82EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(&v92);
    *&v92 = 0x5F454349564544;
    *(&v92 + 1) = 0xE700000000000000;
    MEMORY[0x23EEFB9A0](v51, v38);

    v77 = sub_23DC82C40();

    [v52 setObject:v76 forKey:v77];

    swift_unknownObjectRelease();
  }

  return 1;
}

void sub_23DC734E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = sub_23DC82AB0();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = type metadata accessor for AccountSuggestion();
  v18 = *(v17 - 8);
  v57 = v17;
  v58 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v54 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v54 - v26);
  sub_23DC6FB40(a1);
  if (v28)
  {
    v55 = v9;
    sub_23DC6F404(a1);
    v30 = v29[2];
    if (v30 < 2)
    {
      v54 = v1;
      if (v30)
      {
        v31 = v58;
        sub_23DC7A628(v29 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v25);

        sub_23DC7A6E8(v25, v27);
        if (qword_281303DE0 != -1)
        {
          swift_once();
        }

        v32 = __swift_project_value_buffer(v10, qword_281303DE8);
        swift_beginAccess();
        v33 = v56;
        (*(v56 + 16))(v16, v32, v10);
        v34 = sub_23DC82A90();
        v35 = sub_23DC82D40();
        v36 = os_log_type_enabled(v34, v35);
        v37 = v57;
        if (v36)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_23DC66000, v34, v35, "Existing suggestion found, adding the computer", v38, 2u);
          MEMORY[0x23EEFC160](v38, -1, -1);
        }

        (*(v33 + 8))(v16, v10);
        v39 = sub_23DC68CB8();
        v40 = v27 + *(v37 + 40);
        sub_23DC75E04(&v59, v39, v41);

        v42 = v55;
        sub_23DC7A628(v27, v55);
        (*(v31 + 56))(v42, 0, 1, v37);
        sub_23DC70460(v42, *v27, v27[1], 1, 0);
        sub_23DC7C16C(v42, &qword_27E30CDC8, &qword_23DC83688);
        v43 = v27;
      }

      else
      {

        v44 = a1;
        v45 = sub_23DC68CB8();
        v60[0] = 0;
        AccountSuggestion.init(with:computerID:source:)(v44, v45, v46, v60, v7);
        v47 = v57;
        if ((*(v58 + 48))(v7, 1, v57) == 1)
        {
          sub_23DC7C16C(v7, &qword_27E30CDC8, &qword_23DC83688);
          return;
        }

        sub_23DC7A6E8(v7, v22);
        if (qword_281303DE0 != -1)
        {
          swift_once();
        }

        v48 = __swift_project_value_buffer(v10, qword_281303DE8);
        swift_beginAccess();
        v49 = v56;
        (*(v56 + 16))(v14, v48, v10);
        v50 = sub_23DC82A90();
        v51 = sub_23DC82D40();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_23DC66000, v50, v51, "Existing suggestion not found, creating a new one", v52, 2u);
          MEMORY[0x23EEFC160](v52, -1, -1);
        }

        (*(v49 + 8))(v14, v10);
        v53 = v55;
        sub_23DC7A628(v22, v55);
        (*(v58 + 56))(v53, 0, 1, v47);
        sub_23DC70460(v53, *v22, v22[1], 1, 0);
        sub_23DC7C16C(v53, &qword_27E30CDC8, &qword_23DC83688);
        v43 = v22;
      }

      sub_23DC7A68C(v43);
    }

    else
    {
      sub_23DC724F0(v29, 1, 0, 1, 0);
    }
  }
}

uint64_t sub_23DC73B30(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v125 = &v115 - v6;
  v7 = sub_23DC82AB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AccountSuggestion();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v128 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v127 = &v115 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = (&v115 - v19);
  v21 = 0x278BF9000;
  if ((sub_23DC6FF90(a1) & 1) != 0 && sub_23DC7B948(a1))
  {
    sub_23DC6F404(a1);
    if (*(v22 + 16) != 1)
    {

      goto LABEL_46;
    }

    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v123 = v22;
    sub_23DC7A628(v22 + v23, v20);
    v124 = v12;
    v120 = *(v12 + 44);
    v119 = *(v20 + v120);
    sub_23DC70C7C(v119);
    v24 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v25 = sub_23DC82BF0();

    v26 = [v24 initWithDictionary_];

    v126 = a1;
    v27 = [a1 accountProperties];
    LODWORD(v25) = [v26 isEqual_];

    LODWORD(v122) = v25;
    if ((v25 & 1) == 0)
    {
      if (qword_281303DE0 != -1)
      {
LABEL_108:
        swift_once();
      }

      v28 = __swift_project_value_buffer(v7, qword_281303DE8);
      swift_beginAccess();
      (*(v8 + 16))(v11, v28, v7);
      v29 = sub_23DC82A90();
      v30 = sub_23DC82D40();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_23DC66000, v29, v30, "Existing suggestion found, account properties dictionary differs, saving off local account properties", v31, 2u);
        MEMORY[0x23EEFC160](v31, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      v32 = [v126 accountProperties];
      if (!v32 || (*&v133[0] = 0, v33 = v32, sub_23DC82C00(), v33, (v34 = *&v133[0]) == 0))
      {
        v34 = sub_23DC7B28C(MEMORY[0x277D84F90]);
      }

      *(v20 + v120) = v34;
    }

    a1 = v126;
    result = [v126 accountType];
    if (!result)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v36 = result;
    v37 = [result identifier];

    v12 = v124;
    if (v37)
    {
      v38 = sub_23DC82C50();
      v40 = v39;

      v41 = *MEMORY[0x277CB8C60];
      v42 = sub_23DC82C50();
      if (v40)
      {
        if (v38 == v42 && v40 == v43)
        {
LABEL_28:

          goto LABEL_29;
        }

        v44 = sub_23DC82EF0();

        if (v44)
        {
LABEL_29:
          v54 = *MEMORY[0x277CB8B58];
          *&v129 = sub_23DC82C50();
          *(&v129 + 1) = v55;
          v56 = [a1 objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v56)
          {
            sub_23DC82DE0();
            swift_unknownObjectRelease();
          }

          else
          {
            v129 = 0u;
            v130 = 0u;
          }

          v133[0] = v129;
          v133[1] = v130;
          if (!*(&v130 + 1))
          {

            sub_23DC7C16C(v133, &qword_27E30CDE0, &qword_23DC83960);
            goto LABEL_43;
          }

          if (swift_dynamicCast())
          {
            result = [objc_opt_self() defaultStore];
            if (!result)
            {
LABEL_113:
              __break(1u);
              return result;
            }

            v58 = result;

            v59 = sub_23DC82C40();

            v60 = [v58 accountWithIdentifier_];

            if (v60)
            {
              v123 = *(v12 + 48);
              sub_23DC70C7C(*(v20 + v123));
              v61 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
              v62 = sub_23DC82BF0();

              v63 = [v61 initWithDictionary_];

              v64 = [v60 accountProperties];
              LOBYTE(v62) = [v63 isEqual_];

              if ((v62 & 1) == 0)
              {
                v112 = [v60 accountProperties];
                if (!v112 || (*&v133[0] = 0, v113 = v112, sub_23DC82C00(), v113, (v114 = *&v133[0]) == 0))
                {
                  v114 = sub_23DC7B28C(MEMORY[0x277D84F90]);
                }

                v12 = v124;
                *(v20 + v123) = v114;
                goto LABEL_44;
              }

              v12 = v124;
            }

LABEL_43:
            if (v122)
            {
LABEL_45:
              sub_23DC7A68C(v20);
              v21 = 0x278BF9000uLL;
              goto LABEL_46;
            }

LABEL_44:
            v66 = v125;
            sub_23DC7A628(v20, v125);
            (*(v13 + 56))(v66, 0, 1, v12);
            sub_23DC70460(v66, *v20, v20[1], 1, 0);
            sub_23DC7C16C(v66, &qword_27E30CDC8, &qword_23DC83688);
            goto LABEL_45;
          }

LABEL_42:

          goto LABEL_43;
        }

LABEL_23:
        result = [a1 accountType];
        if (!result)
        {
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v46 = result;
        v47 = [result identifier];

        if (v47)
        {
          v48 = sub_23DC82C50();
          v50 = v49;

          v51 = *MEMORY[0x277CB8CD8];
          v52 = sub_23DC82C50();
          if (v50)
          {
            if (v48 != v52 || v50 != v53)
            {
              v65 = sub_23DC82EF0();

              if ((v65 & 1) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

        else
        {
          v57 = *MEMORY[0x277CB8CD8];
          sub_23DC82C50();
        }

        goto LABEL_42;
      }
    }

    else
    {
      v45 = *MEMORY[0x277CB8C60];
      sub_23DC82C50();
    }

    goto LABEL_23;
  }

LABEL_46:
  result = [a1 *(v21 + 3144)];
  if (!result)
  {
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v67 = result;
  v68 = [result identifier];

  v69 = MEMORY[0x277CB8CF8];
  if (!v68)
  {
    v75 = *MEMORY[0x277CB8CF8];
    sub_23DC82C50();
  }

  v70 = sub_23DC82C50();
  v7 = v71;

  v72 = *v69;
  v73 = sub_23DC82C50();
  if (!v7)
  {
  }

  if (v70 == v73 && v7 == v74)
  {
  }

  else
  {
    v76 = sub_23DC82EF0();

    if ((v76 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_23DC7B948(a1);
  if (result)
  {
    v126 = a1;
    v77 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID;
    swift_beginAccess();
    v120 = v2;
    v78 = *(v2 + v77);
    v20 = (v78 + 64);
    v79 = 1 << *(v78 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & *(v78 + 64);
    v2 = (v79 + 63) >> 6;
    v123 = *MEMORY[0x277CB8C60];
    v117 = *MEMORY[0x277CB8CD8];
    v122 = *MEMORY[0x277CB8B58];
    v116 = (v13 + 56);
    v124 = v78;

    LODWORD(v119) = 0;
    v8 = 0;
    v11 = v128;
    v121 = v13;
    while (1)
    {
      if (!v81)
      {
        while (1)
        {
          v84 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
            goto LABEL_108;
          }

          if (v84 >= v2)
          {
            break;
          }

          v81 = v20[v84];
          ++v8;
          if (v81)
          {
            v8 = v84;
            goto LABEL_68;
          }
        }

        if (v119)
        {
          return sub_23DC6E6E8();
        }

        return result;
      }

LABEL_68:
      v85 = v127;
      sub_23DC7A628(*(v124 + 56) + *(v13 + 72) * (__clz(__rbit64(v81)) | (v8 << 6)), v127);
      sub_23DC7A6E8(v85, v11);
      v7 = v11[2];
      v86 = v11[3];
      if (v7 == sub_23DC82C50() && v86 == v87)
      {
        goto LABEL_75;
      }

      v89 = sub_23DC82EF0();

      if (v89)
      {
        goto LABEL_76;
      }

      if (v7 == sub_23DC82C50() && v86 == v90)
      {
LABEL_75:
      }

      else
      {
        v111 = sub_23DC82EF0();

        if ((v111 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

LABEL_76:
      v91 = sub_23DC82C50();
      v93 = v12;
      v94 = *(v128 + *(v12 + 44));
      if (!*(v94 + 16))
      {

LABEL_85:
        v7 = 0;
        v99 = 0;
        goto LABEL_86;
      }

      v95 = sub_23DC7F118(v91, v92);
      v97 = v96;

      if ((v97 & 1) == 0)
      {
        goto LABEL_85;
      }

      sub_23DC7BD48(*(v94 + 56) + 32 * v95, v133);
      v98 = swift_dynamicCast();
      if (v98)
      {
        v7 = v131;
      }

      else
      {
        v7 = 0;
      }

      if (v98)
      {
        v99 = v132;
      }

      else
      {
        v99 = 0;
      }

LABEL_86:
      result = [v126 identifier];
      if (!result)
      {
        goto LABEL_110;
      }

      v100 = result;
      v101 = sub_23DC82C50();
      v103 = v102;

      if (!v99)
      {

        v12 = v93;
LABEL_97:
        v13 = v121;
LABEL_98:
        v11 = v128;
        goto LABEL_62;
      }

      v12 = v93;
      if (v7 == v101 && v99 == v103)
      {
      }

      else
      {
        v104 = sub_23DC82EF0();

        if ((v104 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      v11 = v128;
      v118 = *(v93 + 48);
      sub_23DC70C7C(*(v128 + v118));
      v105 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
      v106 = sub_23DC82BF0();

      v107 = [v105 initWithDictionary_];

      v108 = [v126 accountProperties];
      v7 = [v107 isEqual_];

      v12 = v93;
      v13 = v121;
      if ((v7 & 1) == 0)
      {
        v109 = [v126 accountProperties];
        if (!v109 || (*&v133[0] = 0, v110 = v109, sub_23DC82C00(), v110, (v7 = *&v133[0]) == 0))
        {
          v7 = sub_23DC7B28C(MEMORY[0x277D84F90]);
        }

        v11 = v128;
        *(v128 + v118) = v7;
        v82 = v125;
        sub_23DC7A628(v11, v125);
        v83 = *v116;
        LODWORD(v119) = 1;
        v83(v82, 0, 1, v12);
        sub_23DC70460(v82, *v11, v11[1], 0, 0);
        sub_23DC7C16C(v82, &qword_27E30CDC8, &qword_23DC83688);
      }

LABEL_62:
      v81 &= v81 - 1;
      sub_23DC7A68C(v11);
    }
  }

  return result;
}

uint64_t sub_23DC74A8C(uint64_t a1, void *a2)
{
  v3 = sub_23DC82AB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC6F7F8();
  sub_23DC72B78(0, 0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_281303DE8);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = a2;
  v10 = sub_23DC82A90();
  v11 = sub_23DC82D40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_23DC66000, v10, v11, "added: %@", v12, 0xCu);
    sub_23DC7C16C(v13, &qword_27E30CE38, &qword_23DC83870);
    MEMORY[0x23EEFC160](v13, -1, -1);
    MEMORY[0x23EEFC160](v12, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_23DC734E8(v9);
  return sub_23DC6C1EC();
}

uint64_t sub_23DC74CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = sub_23DC82B50();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23DC82B80();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_workQueue);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DC7C32C;
  aBlock[3] = a4;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  v21 = a1;
  sub_23DC82B60();
  v26 = MEMORY[0x277D84F90];
  sub_23DC7A754(&qword_281303A30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDD0, &qword_23DC83690);
  sub_23DC7A79C(&qword_281303A20, &qword_27E30CDD0, &qword_23DC83690);
  sub_23DC82DF0();
  MEMORY[0x23EEFBA90](0, v16, v12, v19);
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

uint64_t sub_23DC74FB8(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC8, &qword_23DC83688);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v46 - v5;
  v50 = type metadata accessor for AccountSuggestion();
  v54 = *(v50 - 8);
  v6 = *(v54 + 64);
  v7 = MEMORY[0x28223BE20](v50);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v46 - v9);
  v11 = sub_23DC82AB0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v49 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  sub_23DC6F7F8();
  sub_23DC72B78(0, 0);
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_281303DE8);
  swift_beginAccess();
  v51 = v12[2];
  v52 = v20;
  v51(v19, v20, v11);
  v21 = a2;
  v22 = sub_23DC82A90();
  v23 = sub_23DC82D40();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v21;
    *v26 = v21;
    v27 = v21;
    _os_log_impl(&dword_23DC66000, v22, v23, "removed: %@", v25, 0xCu);
    sub_23DC7C16C(v26, &qword_27E30CE38, &qword_23DC83870);
    MEMORY[0x23EEFC160](v26, -1, -1);
    v10 = v46;
    MEMORY[0x23EEFC160](v25, -1, -1);
  }

  v28 = v12[1];
  v28(v19, v11);
  sub_23DC6F404(v21);
  v30 = v29[2];
  if (v30 < 2)
  {
    if (v30)
    {
      v46 = v12 + 1;
      v31 = v48;
      sub_23DC7A628(v29 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v48);

      sub_23DC7A6E8(v31, v10);
      v32 = v49;
      v51(v49, v52, v11);
      v33 = sub_23DC82A90();
      v34 = sub_23DC82D40();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_23DC66000, v33, v34, "Existing suggestion found, removing this computer", v35, 2u);
        MEMORY[0x23EEFC160](v35, -1, -1);
      }

      v28(v32, v11);
      v36 = sub_23DC68CB8();
      v37 = v50;
      v38 = *(v50 + 40);
      sub_23DC766C8(v36, v39);

      if (*(*(v10 + v38) + 16))
      {
        sub_23DC7A628(v10, v53);
        v40 = 0;
      }

      else
      {
        v51(v47, v52, v11);
        v41 = sub_23DC82A90();
        v42 = sub_23DC82D40();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_23DC66000, v41, v42, "Existing suggestion has no remaining devices, removing it", v43, 2u);
          MEMORY[0x23EEFC160](v43, -1, -1);
        }

        v28(v47, v11);
        v40 = 1;
      }

      v44 = v53;
      (*(v54 + 56))(v53, v40, 1, v37);
      sub_23DC70460(v44, *v10, v10[1], 1, 0);
      sub_23DC7C16C(v44, &qword_27E30CDC8, &qword_23DC83688);
      sub_23DC7A68C(v10);
    }

    else
    {
    }
  }

  else
  {
    sub_23DC724F0(v29, 0, 1, 1, 0);
  }

  return sub_23DC6C1EC();
}

uint64_t sub_23DC755E0(uint64_t a1, void *a2)
{
  v3 = sub_23DC82AB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DC6F7F8();
  if (qword_281303DE0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_281303DE8);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = a2;
  v10 = sub_23DC82A90();
  v11 = sub_23DC82D40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_23DC66000, v10, v11, "updated: %@ checking if we need to update this computer", v12, 0xCu);
    sub_23DC7C16C(v13, &qword_27E30CE38, &qword_23DC83870);
    MEMORY[0x23EEFC160](v13, -1, -1);
    MEMORY[0x23EEFC160](v12, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  sub_23DC72B78(0, 0);
  return sub_23DC73B30(v9);
}

uint64_t AccountSuggestionManager.deinit()
{
  v1 = OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__allSuggestions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDA0, &qword_23DC83618);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager__filteredSuggestions, v2);
  v4 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_suggestionsByID);

  v5 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_deviceLastUsedDates);

  v6 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_kvsSubscriber);

  v7 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock + 8);
  sub_23DC69148(*(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_animationWrapperBlock));
  v8 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_previousWorkItem);

  v9 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_accountTypesThatNeedProperties);

  v10 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_supportedAccountTypes);

  v11 = *(v0 + OBJC_IVAR____TtC18AccountSuggestions24AccountSuggestionManager_locallySupportedAccountTypes);

  return v0;
}

uint64_t AccountSuggestionManager.__deallocating_deinit()
{
  AccountSuggestionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DC759C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountSuggestionManager();
  result = sub_23DC82AD0();
  *a1 = result;
  return result;
}

void *sub_23DC75A00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_23DC75A1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DC75B28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE00, &qword_23DC83838);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_23DC75C2C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE08, &qword_23DC83840);
  v10 = *(type metadata accessor for AccountSuggestion() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AccountSuggestion() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23DC75E04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_23DC82F40();
  sub_23DC82C70();
  v9 = sub_23DC82F60();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_23DC82EF0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_23DC761B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23DC75F54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  result = sub_23DC82E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_23DC82F40();
      sub_23DC82C70();
      result = sub_23DC82F60();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23DC761B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23DC75F54(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23DC76334();
      goto LABEL_16;
    }

    sub_23DC76490(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_23DC82F40();
  sub_23DC82C70();
  result = sub_23DC82F60();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23DC82EF0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23DC82F20();
  __break(1u);
  return result;
}

void *sub_23DC76334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  v2 = *v0;
  v3 = sub_23DC82E30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23DC76490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  result = sub_23DC82E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_23DC82F40();

      sub_23DC82C70();
      result = sub_23DC82F60();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23DC766C8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_23DC82F40();
  sub_23DC82C70();
  v7 = sub_23DC82F60();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_23DC82EF0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23DC76334();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_23DC76804(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_23DC76804(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_23DC82E00();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_23DC82F40();

        sub_23DC82C70();
        v15 = sub_23DC82F60();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23DC769C8(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AccountSuggestion() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_23DC7A108(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_23DC76A88(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_23DC76A88(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_23DC82ED0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AccountSuggestion();
        v10 = sub_23DC82D00();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for AccountSuggestion() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_23DC76BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = type metadata accessor for AccountSuggestion();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v45);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v32 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v32 - v16);
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    type metadata accessor for ComparisonResult();
    v32 = v19;
    v20 = *(v8 + 72);
    v21 = v18 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v39 = v18;
    v33 = v20;
    v24 = v18 + v20 * a3;
LABEL_5:
    v37 = v21;
    v38 = a3;
    v35 = v24;
    v36 = v23;
    while (1)
    {
      sub_23DC7A628(v24, v17);
      sub_23DC7A628(v21, v14);
      v25 = v17[3];
      v43 = v17[2];
      v44 = v25;
      v26 = v14[3];
      v41 = v14[2];
      v42 = v26;
      sub_23DC7BF10();
      result = sub_23DC82DD0();
      if (result)
      {
        if (result != 1)
        {
          if (result != -1)
          {
            goto LABEL_17;
          }

          sub_23DC7A68C(v14);
          result = sub_23DC7A68C(v17);
LABEL_4:
          a3 = v38 + 1;
          v21 = v37 + v33;
          v23 = v36 - 1;
          v24 = v35 + v33;
          if (v38 + 1 == v34)
          {
            return result;
          }

          goto LABEL_5;
        }

        sub_23DC7A68C(v14);
        result = sub_23DC7A68C(v17);
      }

      else
      {
        v27 = v17[5];
        v43 = v17[4];
        v44 = v27;
        v28 = v14[5];
        v41 = v14[4];
        v42 = v28;
        v29 = sub_23DC82DD0();
        sub_23DC7A68C(v14);
        result = sub_23DC7A68C(v17);
        if (v29 != 1)
        {
          goto LABEL_4;
        }
      }

      if (!v39)
      {
        break;
      }

      v30 = v40;
      sub_23DC7A6E8(v24, v40);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23DC7A6E8(v30, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_17:
    v43 = result;
    result = sub_23DC82F00();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DC76E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AccountSuggestion();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_23DC7A628(v25, v19);
      sub_23DC7A628(v22, v15);
      v26 = *(v8 + 32);
      v27 = sub_23DC829F0();
      sub_23DC7A68C(v15);
      result = sub_23DC7A68C(v19);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_23DC7A6E8(v25, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23DC7A6E8(v12, v22);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23DC7708C(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v124 = a1;
  v138 = type metadata accessor for AccountSuggestion();
  v132 = *(v138 - 8);
  v8 = *(v132 + 64);
  v9 = MEMORY[0x28223BE20](v138);
  v126 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v137 = v117 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v117 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (v117 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (v117 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v135 = v117 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v24);
  v133 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_108:
    a3 = *v124;
    if (!*v124)
    {
      goto LABEL_150;
    }

    a4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v111 = a4;
    }

    else
    {
LABEL_144:
      v111 = sub_23DC78EBC(a4);
    }

    v143 = v111;
    a4 = *(v111 + 2);
    if (a4 >= 2)
    {
      while (*v133)
      {
        v112 = *&v111[16 * a4];
        v113 = v111;
        v114 = *&v111[16 * a4 + 24];
        sub_23DC783B8(*v133 + *(v132 + 72) * v112, *v133 + *(v132 + 72) * *&v111[16 * a4 + 16], *v133 + *(v132 + 72) * v114, a3);
        if (v5)
        {
        }

        if (v114 < v112)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_23DC78EBC(v113);
        }

        if (a4 - 2 >= *(v113 + 2))
        {
          goto LABEL_138;
        }

        v115 = &v113[16 * a4];
        *v115 = v112;
        *(v115 + 1) = v114;
        v143 = v113;
        sub_23DC78E30(a4 - 1);
        v111 = v143;
        a4 = *(v143 + 2);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v120 = (v117 - v25);
  v121 = v26;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v123 = a4;
  while (1)
  {
    v127 = v29;
    if (v28 + 1 < v27)
    {
      v134 = v27;
      v30 = *v133;
      v31 = *(v132 + 72);
      a3 = *v133 + v31 * (v28 + 1);
      v32 = v120;
      sub_23DC7A628(a3, v120);
      v136 = v30;
      v33 = v30 + v31 * v28;
      v34 = v28;
      v35 = v121;
      sub_23DC7A628(v33, v121);
      LODWORD(v131) = sub_23DC6F30C(v32, v35);
      if (!v5)
      {
        sub_23DC7A68C(v35);
        sub_23DC7A68C(v32);
        v122 = v34;
        v36 = v34 + 2;
        v37 = v136 + v31 * (v34 + 2);
        v38 = v31;
        v136 = v31;
        do
        {
          if (v134 == v36)
          {
            v44 = v134;
            goto LABEL_17;
          }

          v39 = v135;
          sub_23DC7A628(v37, v135);
          sub_23DC7A628(a3, v21);
          v40 = *(v39 + 24);
          v141 = *(v39 + 16);
          v142 = v40;
          v41 = v21[3];
          v139 = v21[2];
          v140 = v41;
          sub_23DC7BF10();
          a4 = sub_23DC82DD0();
          type metadata accessor for ComparisonResult();
          if (a4 == -1)
          {
            LODWORD(a4) = 0;
          }

          else if (a4 != 1)
          {
            if (a4)
            {
              goto LABEL_151;
            }

            v42 = *(v135 + 40);
            v141 = *(v135 + 32);
            v142 = v42;
            v43 = v21[5];
            v139 = v21[4];
            v140 = v43;
            LODWORD(a4) = sub_23DC82DD0() == 1;
          }

          sub_23DC7A68C(v21);
          sub_23DC7A68C(v135);
          ++v36;
          v38 = v136;
          v37 += v136;
          a3 += v136;
        }

        while ((v131 & 1) == a4);
        v44 = v36 - 1;
LABEL_17:
        v28 = v122;
        a4 = v123;
        if (v131)
        {
          if (v44 < v122)
          {
            goto LABEL_143;
          }

          if (v122 < v44)
          {
            v118 = v21;
            v119 = 0;
            a4 = v38 * (v44 - 1);
            v45 = v44 * v38;
            v134 = v44;
            v46 = v122;
            v47 = v122 * v38;
            do
            {
              if (v46 != --v44)
              {
                v48 = *v133;
                if (!*v133)
                {
                  goto LABEL_147;
                }

                a3 = v48 + v47;
                sub_23DC7A6E8(v48 + v47, v126);
                if (v47 < a4 || a3 >= v48 + v45)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v47 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_23DC7A6E8(v126, v48 + a4);
                v38 = v136;
              }

              ++v46;
              a4 -= v38;
              v45 -= v38;
              v47 += v38;
            }

            while (v46 < v44);
            v5 = v119;
            v28 = v122;
            a4 = v123;
            v21 = v118;
            v44 = v134;
          }
        }

        goto LABEL_31;
      }

      sub_23DC7A68C(v35);
      sub_23DC7A68C(v32);
    }

    v44 = v28 + 1;
LABEL_31:
    v49 = v133[1];
    if (v44 >= v49)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v44, v28))
    {
      goto LABEL_140;
    }

    if (v44 - v28 >= a4)
    {
LABEL_40:
      a3 = v44;
      if (v44 < v28)
      {
        goto LABEL_139;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v28, a4))
    {
      goto LABEL_141;
    }

    if ((v28 + a4) >= v49)
    {
      a3 = v133[1];
    }

    else
    {
      a3 = v28 + a4;
    }

    if (a3 < v28)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v44 == a3)
    {
      goto LABEL_40;
    }

    v118 = v21;
    v119 = v5;
    v96 = *v133;
    type metadata accessor for ComparisonResult();
    v117[1] = v97;
    v98 = *(v132 + 72);
    v99 = v96 + v98 * (v44 - 1);
    v100 = -v98;
    v122 = v28;
    v101 = v28 - v44;
    v136 = v96;
    v125 = v98;
    v102 = v96 + v44 * v98;
    v128 = a3;
LABEL_92:
    v134 = v44;
    v129 = v102;
    v130 = v101;
    v103 = v101;
    v131 = v99;
    v104 = v99;
LABEL_93:
    sub_23DC7A628(v102, v18);
    sub_23DC7A628(v104, v15);
    v105 = v18[3];
    v141 = v18[2];
    v142 = v105;
    v106 = v15[3];
    v139 = v15[2];
    v140 = v106;
    sub_23DC7BF10();
    a4 = &v141;
    v107 = sub_23DC82DD0();
    if (!v107)
    {
      break;
    }

    if (v107 == 1)
    {
      sub_23DC7A68C(v15);
      sub_23DC7A68C(v18);
      goto LABEL_97;
    }

    if (v107 != -1)
    {
      v141 = v107;
      goto LABEL_153;
    }

    sub_23DC7A68C(v15);
    sub_23DC7A68C(v18);
LABEL_91:
    v44 = v134 + 1;
    v99 = v131 + v125;
    v101 = v130 - 1;
    a3 = v128;
    v102 = v129 + v125;
    if (v134 + 1 != v128)
    {
      goto LABEL_92;
    }

    v5 = v119;
    v21 = v118;
    v28 = v122;
    if (v128 < v122)
    {
      goto LABEL_139;
    }

LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = a3;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v127;
    }

    else
    {
      v29 = sub_23DC75B28(0, *(v127 + 2) + 1, 1, v127);
    }

    a3 = *(v29 + 2);
    v51 = *(v29 + 3);
    a4 = a3 + 1;
    if (a3 >= v51 >> 1)
    {
      v29 = sub_23DC75B28((v51 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = a4;
    v52 = &v29[16 * a3];
    v53 = v128;
    *(v52 + 4) = v28;
    *(v52 + 5) = v53;
    v136 = *v124;
    if (!v136)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (2)
      {
        a3 = a4 - 1;
        if (a4 >= 4)
        {
          v58 = &v29[16 * a4 + 32];
          v59 = *(v58 - 64);
          v60 = *(v58 - 56);
          v64 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          if (v64)
          {
            goto LABEL_126;
          }

          v63 = *(v58 - 48);
          v62 = *(v58 - 40);
          v64 = __OFSUB__(v62, v63);
          v56 = v62 - v63;
          v57 = v64;
          if (v64)
          {
            goto LABEL_127;
          }

          v65 = &v29[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v64 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v64)
          {
            goto LABEL_129;
          }

          v64 = __OFADD__(v56, v68);
          v69 = v56 + v68;
          if (v64)
          {
            goto LABEL_132;
          }

          if (v69 >= v61)
          {
            v87 = &v29[16 * a3 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v64 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v64)
            {
              goto LABEL_136;
            }

            if (v56 < v90)
            {
              a3 = a4 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v57)
            {
              goto LABEL_128;
            }

            v70 = &v29[16 * a4];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_131;
            }

            v76 = &v29[16 * a3 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_135;
            }

            if (v74 + v79 < v56)
            {
              goto LABEL_74;
            }

            if (v56 < v79)
            {
              a3 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v54 = *(v29 + 4);
            v55 = *(v29 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
            goto LABEL_60;
          }

          v80 = &v29[16 * a4];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_74:
          if (v75)
          {
            goto LABEL_130;
          }

          v83 = &v29[16 * a3];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_133;
          }

          if (v86 < v74)
          {
            break;
          }
        }

        v91 = a3 - 1;
        if (a3 - 1 >= a4)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v133)
        {
          goto LABEL_146;
        }

        v92 = v21;
        v93 = v29;
        a4 = *&v29[16 * v91 + 32];
        v94 = *&v29[16 * a3 + 40];
        sub_23DC783B8(*v133 + *(v132 + 72) * a4, *v133 + *(v132 + 72) * *&v29[16 * a3 + 32], *v133 + *(v132 + 72) * v94, v136);
        if (v5)
        {
        }

        if (v94 < a4)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_23DC78EBC(v93);
        }

        if (v91 >= *(v93 + 2))
        {
          goto LABEL_125;
        }

        v95 = &v93[16 * v91];
        *(v95 + 4) = a4;
        *(v95 + 5) = v94;
        v143 = v93;
        sub_23DC78E30(a3);
        v29 = v143;
        a4 = *(v143 + 2);
        v21 = v92;
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = v133[1];
    v28 = v128;
    a4 = v123;
    if (v128 >= v27)
    {
      goto LABEL_108;
    }
  }

  v108 = v18[5];
  v141 = v18[4];
  v142 = v108;
  v109 = v15[5];
  v139 = v15[4];
  v140 = v109;
  a4 = sub_23DC82DD0();
  sub_23DC7A68C(v15);
  sub_23DC7A68C(v18);
  if (a4 != 1)
  {
    goto LABEL_91;
  }

LABEL_97:
  if (v136)
  {
    a4 = v137;
    sub_23DC7A6E8(v102, v137);
    swift_arrayInitWithTakeFrontToBack();
    sub_23DC7A6E8(a4, v104);
    v104 += v100;
    v102 += v100;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  v141 = a4;
LABEL_153:
  result = sub_23DC82F00();
  __break(1u);
  return result;
}

uint64_t sub_23DC77B58(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v106 = a1;
  v9 = type metadata accessor for AccountSuggestion();
  v114 = *(v9 - 8);
  v10 = *(v114 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v103 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v103 - v16;
  result = MEMORY[0x28223BE20](v15);
  v20 = &v103 - v19;
  v116 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_100:
      v119 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v116)
        {
          v99 = *(result + 16 * a4);
          v100 = result;
          v101 = *(result + 16 * (a4 - 1) + 40);
          sub_23DC789A8(*v116 + *(v114 + 72) * v99, *v116 + *(v114 + 72) * *(result + 16 * (a4 - 1) + 32), *v116 + *(v114 + 72) * v101, v5);
          if (v6)
          {
          }

          if (v101 < v99)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_23DC78EBC(v100);
          }

          if (a4 - 2 >= *(v100 + 2))
          {
            goto LABEL_124;
          }

          v102 = &v100[16 * a4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v119 = v100;
          sub_23DC78E30(a4 - 1);
          result = v119;
          a4 = *(v119 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_23DC78EBC(a4);
    goto LABEL_100;
  }

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  v105 = a4;
  v118 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v109 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *v116;
      v27 = v24;
      v28 = *(v114 + 72);
      v5 = *v116 + v28 * v25;
      sub_23DC7A628(v5, v20);
      sub_23DC7A628(v26 + v28 * v27, v17);
      v29 = *(v9 + 32);
      LODWORD(v113) = sub_23DC829F0();
      sub_23DC7A68C(v17);
      result = sub_23DC7A68C(v20);
      v104 = v27;
      v30 = v27 + 2;
      v115 = v28;
      v31 = v26 + v28 * v30;
      v32 = v113;
      while (v21 != v30)
      {
        sub_23DC7A628(v31, v20);
        sub_23DC7A628(v5, v17);
        v33 = *(v118 + 32);
        v34 = sub_23DC829F0() & 1;
        sub_23DC7A68C(v17);
        result = sub_23DC7A68C(v20);
        ++v30;
        v31 += v115;
        v5 += v115;
        if ((v32 & 1) != v34)
        {
          v35 = v32;
          v21 = v30 - 1;
          goto LABEL_11;
        }
      }

      v35 = v32;
LABEL_11:
      v24 = v104;
      a4 = v105;
      v9 = v118;
      if (v35)
      {
        if (v21 < v104)
        {
          goto LABEL_127;
        }

        if (v104 < v21)
        {
          v103 = v6;
          v36 = v115 * (v21 - 1);
          v37 = v21 * v115;
          v113 = v21;
          v38 = v21;
          v39 = v104;
          v40 = v104 * v115;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v116;
              if (!*v116)
              {
                goto LABEL_133;
              }

              v5 = v41 + v40;
              sub_23DC7A6E8(v41 + v40, v108);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23DC7A6E8(v108, v41 + v36);
            }

            ++v39;
            v36 -= v115;
            v37 -= v115;
            v40 += v115;
          }

          while (v39 < v38);
          v6 = v103;
          v24 = v104;
          a4 = v105;
          v9 = v118;
          v21 = v113;
        }
      }
    }

    v42 = v116[1];
    if (v21 >= v42)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_126;
    }

    if (v21 - v24 >= a4)
    {
LABEL_34:
      v44 = v21;
      if (v21 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_128;
    }

    if ((v24 + a4) >= v42)
    {
      v43 = v116[1];
    }

    else
    {
      v43 = v24 + a4;
    }

    if (v43 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v21 == v43)
    {
      goto LABEL_34;
    }

    v103 = v6;
    v104 = v24;
    a4 = *v116;
    v89 = *(v114 + 72);
    v90 = *v116 + v89 * (v21 - 1);
    v91 = v21;
    v92 = -v89;
    v93 = v24 - v91;
    v113 = v91;
    v107 = v89;
    v5 = a4 + v91 * v89;
    v110 = v43;
LABEL_87:
    v111 = v5;
    v112 = v93;
    v115 = v90;
    v94 = v90;
LABEL_88:
    sub_23DC7A628(v5, v20);
    sub_23DC7A628(v94, v17);
    v95 = *(v9 + 32);
    v96 = sub_23DC829F0();
    sub_23DC7A68C(v17);
    result = sub_23DC7A68C(v20);
    if (v96)
    {
      break;
    }

    v9 = v118;
LABEL_86:
    v90 = v115 + v107;
    v93 = v112 - 1;
    v44 = v110;
    v5 = v111 + v107;
    if (++v113 != v110)
    {
      goto LABEL_87;
    }

    v6 = v103;
    v24 = v104;
    if (v110 < v104)
    {
      goto LABEL_125;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v109;
    }

    else
    {
      result = sub_23DC75B28(0, *(v109 + 2) + 1, 1, v109);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v45 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_23DC75B28((v45 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v46 = &v23[16 * a4];
    *(v46 + 4) = v24;
    *(v46 + 5) = v44;
    v47 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    v110 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v23[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_112;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v60 = &v23[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_115;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v64 >= v56)
          {
            v82 = &v23[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_122;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v52)
            {
              goto LABEL_114;
            }

            v65 = &v23[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = &v23[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_121;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_68;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v23 + 4);
            v50 = *(v23 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_54;
          }

          v75 = &v23[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_68:
          if (v70)
          {
            goto LABEL_116;
          }

          v78 = &v23[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_129;
        }

        if (!*v116)
        {
          goto LABEL_132;
        }

        v86 = v23;
        v87 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v48 + 40];
        sub_23DC789A8(*v116 + *(v114 + 72) * v87, *v116 + *(v114 + 72) * *&v23[16 * v48 + 32], *v116 + *(v114 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_23DC78EBC(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v119 = v86;
        result = sub_23DC78E30(v48);
        v23 = v119;
        v5 = *(v119 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = v116[1];
    v22 = v110;
    a4 = v105;
    v9 = v118;
    if (v110 >= v21)
    {
      goto LABEL_97;
    }
  }

  if (a4)
  {
    v97 = v117;
    sub_23DC7A6E8(v5, v117);
    v9 = v118;
    swift_arrayInitWithTakeFrontToBack();
    sub_23DC7A6E8(v97, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
  return result;
}

uint64_t sub_23DC783B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for AccountSuggestion();
  v8 = *(*(v52 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v52);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v47 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v47 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v47 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v51 = a2;
  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_70;
  }

  v22 = a3 - v51;
  if (a3 - v51 == 0x8000000000000000 && v20 == -1)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v56 = a2;
    result = sub_23DC82F00();
    __break(1u);
    return result;
  }

  v60 = a1;
  v59 = a4;
  if (v21 / v20 >= v22 / v20)
  {
    v25 = v22 / v20 * v20;
    if (a4 < v51 || v51 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v51)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v25;
    if (v25 >= 1)
    {
      v34 = -v20;
      v35 = v33;
      while (2)
      {
        while (1)
        {
          v48 = v33;
          v36 = v51;
          v50 = v51;
          v51 += v34;
          while (1)
          {
            if (v36 <= a1)
            {
              v60 = v36;
              v58 = v48;
              goto LABEL_68;
            }

            v38 = a3;
            v49 = v33;
            v39 = v34;
            v40 = v35 + v34;
            sub_23DC7A628(v40, v13);
            v41 = v53;
            sub_23DC7A628(v51, v53);
            v42 = v13[3];
            v56 = v13[2];
            v57 = v42;
            v43 = *(v41 + 24);
            v54 = *(v41 + 16);
            v55 = v43;
            sub_23DC7BF10();
            a2 = sub_23DC82DD0();
            type metadata accessor for ComparisonResult();
            if (a2 == -1)
            {
              LOBYTE(a2) = 0;
            }

            else if (a2 != 1)
            {
              if (a2)
              {
                goto LABEL_72;
              }

              v44 = v13[5];
              v56 = v13[4];
              v57 = v44;
              v45 = *(v53 + 40);
              v54 = *(v53 + 32);
              v55 = v45;
              a2 = sub_23DC82DD0() == 1;
            }

            a3 += v39;
            sub_23DC7A68C(v53);
            sub_23DC7A68C(v13);
            if (a2)
            {
              break;
            }

            v33 = v40;
            if (v38 < v35 || a3 >= v35)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v35 = v40;
            v37 = v40 > a4;
            v34 = v39;
            v36 = v50;
            if (!v37)
            {
              v51 = v50;
              goto LABEL_67;
            }
          }

          if (v38 < v50 || a3 >= v50)
          {
            break;
          }

          v33 = v49;
          v34 = v39;
          if (v38 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v35 <= a4)
          {
            goto LABEL_67;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v33 = v49;
        v34 = v39;
        if (v35 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_67:
    v60 = v51;
    v58 = v33;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v24 = v51;
    }

    else
    {
      v24 = v51;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v53 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && v24 < a3)
    {
      while (1)
      {
        v27 = v24;
        sub_23DC7A628(v24, v18);
        sub_23DC7A628(a4, v16);
        v28 = v18[3];
        v56 = v18[2];
        v57 = v28;
        v29 = v16[3];
        v54 = v16[2];
        v55 = v29;
        sub_23DC7BF10();
        a2 = sub_23DC82DD0();
        type metadata accessor for ComparisonResult();
        if (a2 == -1)
        {
          break;
        }

        if (a2 == 1)
        {
          sub_23DC7A68C(v16);
          sub_23DC7A68C(v18);
        }

        else
        {
          if (a2)
          {
            goto LABEL_72;
          }

          v30 = v18[5];
          v56 = v18[4];
          v57 = v30;
          v31 = v16[5];
          v54 = v16[4];
          v55 = v31;
          v32 = sub_23DC82DD0();
          sub_23DC7A68C(v16);
          sub_23DC7A68C(v18);
          if (v32 != 1)
          {
            goto LABEL_30;
          }
        }

        v24 += v20;
        if (a1 < v27 || a1 >= v24)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

LABEL_37:
        a1 += v20;
        v60 = a1;
        if (a4 >= v53 || v24 >= a3)
        {
          goto LABEL_68;
        }
      }

      sub_23DC7A68C(v16);
      sub_23DC7A68C(v18);
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = a4 + v20;
      a4 += v20;
      goto LABEL_37;
    }
  }

LABEL_68:
  sub_23DC78ED0(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_23DC789A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = type metadata accessor for AccountSuggestion();
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v45 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v41 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v50 = a1;
  v49 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v25 = a4 + v19;
    if (v19 < 1)
    {
      v28 = a4 + v19;
    }

    else
    {
      v26 = -v15;
      v27 = a4 + v19;
      v28 = v25;
      v43 = v26;
      v44 = a4;
      do
      {
        v41[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v47;
          if (v29 <= a1)
          {
            v50 = v29;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v28;
          v47 += v26;
          v33 = v27 + v26;
          sub_23DC7A628(v33, v13);
          v34 = v30;
          v35 = v30;
          v36 = v13;
          v37 = v45;
          sub_23DC7A628(v35, v45);
          v38 = *(v46 + 32);
          v39 = sub_23DC829F0();
          v40 = v37;
          v13 = v36;
          sub_23DC7A68C(v40);
          sub_23DC7A68C(v36);
          if (v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v47 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v44;
          v26 = v43;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v47 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v42;
          v26 = v43;
        }

        else
        {
          v28 = v42;
          v26 = v43;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v48 = a4 + v18;
    if (v18 >= 1 && a2 < v47)
    {
      do
      {
        sub_23DC7A628(a2, v13);
        v22 = v45;
        sub_23DC7A628(a4, v45);
        v23 = *(v46 + 32);
        v24 = sub_23DC829F0();
        sub_23DC7A68C(v22);
        sub_23DC7A68C(v13);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v50 = a1;
      }

      while (a4 < v20 && a2 < v47);
    }
  }

LABEL_59:
  sub_23DC78ED0(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_23DC78E30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DC78EBC(v3);
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

uint64_t sub_23DC78ED0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AccountSuggestion();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_23DC78FB4(size_t a1, int64_t a2, char a3)
{
  result = sub_23DC78FD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23DC78FD4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CE08, &qword_23DC83840);
  v10 = *(type metadata accessor for AccountSuggestion() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AccountSuggestion() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_23DC791AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDC0, &qword_23DC83680);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23DC792B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_23DC79364(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_23DC795F8(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_23DC794D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23DC79364(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_23DC79568(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_23DC79D2C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23DC795F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30CDF0, &qword_23DC83828);
  result = sub_23DC82E50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_23DC82F40();

    sub_23DC82C70();
    result = sub_23DC82F60();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_23DC7981C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_23DC79B34(v8);
  v8[9] = sub_23DC79928(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_23DC798C8;
}

void sub_23DC798C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23DC79928(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_23DC7F118(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_23DC814DC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_23DC8005C(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_23DC7F118(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_23DC82F30();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_23DC79A80;
}

void sub_23DC79A80(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_23DC80E40(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_23DC7C1CC(*(v7 + 48) + 16 * v6);
    sub_23DC806A8(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_23DC79B34(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23DC79B5C;
}

uint64_t sub_23DC79B68(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_23DC79D2C(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_23DC79568(v12, v6, a2, a1);

    MEMORY[0x23EEFC160](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23DC79D2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_23DC82F40();

      sub_23DC82C70();
      v27 = sub_23DC82F60();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_23DC82EF0() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_23DC795F8(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_23DC82F40();

      sub_23DC82C70();
      v41 = sub_23DC82F60();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_23DC82EF0() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}