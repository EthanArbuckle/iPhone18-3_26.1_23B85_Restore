uint64_t sub_23BC7D7DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v1;
  sub_23BC7DCE0(v2);

  return MEMORY[0x2821DBB40](v4, v2, v3);
}

uint64_t sub_23BC7D840(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_23BC7D8D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __isPlatformVersionAtLeast(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
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

unint64_t sub_23BC7D9AC()
{
  result = qword_27E1C1808;
  if (!qword_27E1C1808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C17F8, "\n\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1808);
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

unint64_t sub_23BC7DA58()
{
  result = qword_27E1C1810;
  if (!qword_27E1C1810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1800, &qword_23BC86610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1818, &qword_23BC86618);
    sub_23BC7DB20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1810);
  }

  return result;
}

unint64_t sub_23BC7DB20()
{
  result = qword_27E1C1820;
  if (!qword_27E1C1820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1818, &qword_23BC86618);
    sub_23BC7DBAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1820);
  }

  return result;
}

unint64_t sub_23BC7DBAC()
{
  result = qword_27E1C1828;
  if (!qword_27E1C1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1828);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So25_LTPreflightConfigurationCSgSo7NSErrorCSgIeggg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23BC7DC2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23BC7DC74(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23BC7DCE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23BC7DCF4()
{
  result = qword_27E1C1830;
  if (!qword_27E1C1830)
  {
    sub_23BC85B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1830);
  }

  return result;
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

uint64_t sub_23BC7DE24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23BC85BD8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23BC85BC8();
}

uint64_t sub_23BC7DE9C()
{
  v0 = sub_23BC85BD8();
  __swift_allocate_value_buffer(v0, qword_27E1C1EE0);
  __swift_project_value_buffer(v0, qword_27E1C1EE0);
  return sub_23BC85BC8();
}

uint64_t get_enum_tag_for_layout_string_SSIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BC7DF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BC7DF88(uint64_t result, int a2, int a3)
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

id sub_23BC7DFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D73520]) initWithNibName:0 bundle:0];
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_23BC85EB8();
  v10 = [v8 initWithString_];

  [v7 setText_];
  v11 = [objc_allocWithZone(MEMORY[0x277D73518]) init];
  [v11 setOrigin_];
  [v7 setSourceMeta_];
  if (a4)
  {

    [v7 setIsSourceEditable_];
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;
    v15[4] = sub_23BC7E570;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_23BC7E300;
    v15[3] = &block_descriptor;
    v13 = _Block_copy(v15);

    [v7 setReplacementHandler_];

    _Block_release(v13);
    sub_23BC7E590(a4);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_23BC7E1C0(void *a1, void (*a2)(uint64_t, uint64_t))
{
  if (qword_27E1C17F0 != -1)
  {
    swift_once();
  }

  v4 = sub_23BC85BD8();
  __swift_project_value_buffer(v4, qword_27E1C1EE0);
  v5 = sub_23BC85BB8();
  v6 = sub_23BC85F58();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23BC7C000, v5, v6, "Replacement action invoked through API", v7, 2u);
    MEMORY[0x23EEB8D70](v7, -1, -1);
  }

  v8 = [a1 string];
  v9 = sub_23BC85EC8();
  v11 = v10;

  a2(v9, v11);
}

void sub_23BC7E300(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_23BC7E3C0(uint64_t a1)
{
  result = sub_23BC7E3E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BC7E3E8()
{
  result = qword_27E1C1838;
  if (!qword_27E1C1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1838);
  }

  return result;
}

uint64_t sub_23BC7E448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BC7E3E8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23BC7E4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BC7E3E8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23BC7E510()
{
  sub_23BC7E3E8();
  sub_23BC85D38();
  __break(1u);
}

uint64_t sub_23BC7E538()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BC7E590(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BC7E5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1870, &unk_23BC86920);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = (a1 + *(type metadata accessor for SystemTranslationViewModifier() + 32));
  v12 = *v11;
  v13 = v11[1];

  sub_23BC7DCE0(v12);
  sub_23BC85E88();
  sub_23BC85C38();
  *&v21 = v10;
  *(&v21 + 1) = v9;
  *&v22 = v12;
  *(&v22 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1878, &qword_23BC86C10);
  v14 = *(sub_23BC85CA8() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23BC86890;
  sub_23BC85C98();
  sub_23BC85C88();
  sub_23BC7F244(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1818, &qword_23BC86618);
  sub_23BC7DB20();
  sub_23BC85DF8();

  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v29;
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v25;
  v30[5] = v26;
  v30[0] = v21;
  v30[1] = v22;
  sub_23BC7F564(v30);
  v18 = sub_23BC85C28();
  LOBYTE(v9) = sub_23BC85D88();
  (*(v5 + 32))(a2, v8, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1800, &qword_23BC86610);
  v20 = a2 + *(result + 36);
  *v20 = v18;
  *(v20 + 8) = v9;
  return result;
}

uint64_t sub_23BC7E8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v15[2] = a1;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v10 = *(v9 + 32);
  v11 = *(v3 + *(v9 + 36));
  sub_23BC7EFF4(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_23BC7F170(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  MEMORY[0x23EEB8740](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C17F8, "\n\v");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1800, &qword_23BC86610);
  sub_23BC7D9AC();
  sub_23BC7DA58();
  sub_23BC85DD8();
}

uint64_t View.translationPresentation(isPresented:text:attachmentAnchor:arrowEdge:replacementAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a7;
  v27 = a4;
  v30 = a9;
  v31 = a12;
  v29 = a11;
  v18 = type metadata accessor for SystemTranslationViewModifier();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 24);
  v24 = sub_23BC85CC8();
  (*(*(v24 - 8) + 16))(&v22[v23], a6, v24);
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = a3;
  *(v22 + 3) = v27;
  *(v22 + 4) = a5;
  v22[*(v18 + 28)] = v28;
  v25 = &v22[*(v18 + 32)];
  *v25 = a8;
  v25[1] = a10;

  sub_23BC7DCE0(a8);
  MEMORY[0x23EEB87C0](v22, v29, v18, v31);
  return sub_23BC7EC08(v22);
}

uint64_t type metadata accessor for SystemTranslationViewModifier()
{
  result = qword_27E1C1848;
  if (!qword_27E1C1848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BC7EC08(uint64_t a1)
{
  v2 = type metadata accessor for SystemTranslationViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC7EC64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SystemTranslationViewModifier();
  sub_23BC85C18();
  sub_23BC7F5CC(&qword_27E1C1840, type metadata accessor for SystemTranslationViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_23BC7ED14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23BC85CC8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23BC7EDD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23BC85CC8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23BC7EE78()
{
  sub_23BC7EF24();
  if (v0 <= 0x3F)
  {
    sub_23BC85CC8();
    if (v1 <= 0x3F)
    {
      sub_23BC7EF74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BC7EF24()
{
  if (!qword_27E1C1858)
  {
    v0 = sub_23BC85E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C1858);
    }
  }
}

void sub_23BC7EF74()
{
  if (!qword_27E1C1860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1868, "\n");
    v0 = sub_23BC85F78();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C1860);
    }
  }
}

uint64_t sub_23BC7EFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemTranslationViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC7F058()
{
  v1 = (type metadata accessor for SystemTranslationViewModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = v1[8];
  v9 = sub_23BC85CC8();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = (v0 + v3 + v1[10]);
  if (*v10)
  {
    v11 = v10[1];
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23BC7F170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemTranslationViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC7F1D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SystemTranslationViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23BC7E5A0(v4, a1);
}

uint64_t sub_23BC7F244(uint64_t a1)
{
  v2 = sub_23BC85CA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1880, &qword_23BC86930);
    v10 = sub_23BC85F88();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_23BC7F5CC(&qword_27E1C1888, MEMORY[0x277CDDE90]);
      v18 = sub_23BC85E98();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_23BC7F5CC(&unk_27E1C1890, MEMORY[0x277CDDE90]);
          v25 = sub_23BC85EA8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23BC7F564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1818, &qword_23BC86618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC7F5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BC7F614()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C17F8, "\n\v");
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1800, &qword_23BC86610);
  sub_23BC7D9AC();
  sub_23BC7DA58();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BC7F6A4()
{
  swift_getKeyPath();
  sub_23BC80314();
  sub_23BC85AE8();

  v1 = *(v0 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession);
}

uint64_t sub_23BC7F720(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BC80314();
    sub_23BC85AD8();
  }
}

void *sub_23BC7F82C()
{
  swift_getKeyPath();
  sub_23BC80314();
  sub_23BC85AE8();

  v1 = *(v0 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration);
  v2 = v1;
  return v1;
}

void sub_23BC7F8AC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration;
  v5 = *(v1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BC80314();
    sub_23BC85AD8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23BC807CC();
  v6 = v5;
  v7 = a1;
  v8 = sub_23BC85F68();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_23BC7FA04()
{
  swift_getKeyPath();
  sub_23BC80314();
  sub_23BC85AE8();

  v1 = *(v0 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion);
  v2 = *(v0 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion + 8);
  sub_23BC7DCE0(v1);
  return v1;
}

uint64_t sub_23BC7FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion);
  v4 = *(a1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion);
  v5 = *(a1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_23BC7DCE0(a2);
  return sub_23BC7E590(v4);
}

char *sub_23BC7FAEC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration] = 0;
  v3 = &v1[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion];
  *v3 = 0;
  *(v3 + 1) = 0;
  sub_23BC85AF8();
  *&v1[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TranslationSessionViewModel();

  v4 = objc_msgSendSuper2(&v8, sel_init);
  swift_getKeyPath();
  sub_23BC80314();
  v5 = v4;
  sub_23BC85AE8();

  v6 = *&v5[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession];

  sub_23BC85B18();

  return v5;
}

void sub_23BC7FC08(void *a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  if (a1)
  {
    v6 = qword_27E1C17E0;
    v7 = a2;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_23BC85BD8();
    __swift_project_value_buffer(v8, qword_27E1C1EB0);
    v9 = a1;
    v10 = sub_23BC85BB8();
    v11 = sub_23BC85F58();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v9;
      *v13 = a1;
      v14 = v9;
      _os_log_impl(&dword_23BC7C000, v10, v11, "User finished remote UI and provided completed configuration: %{public}@", v12, 0xCu);
      sub_23BC806C4(v13);
      MEMORY[0x23EEB8D70](v13, -1, -1);
      MEMORY[0x23EEB8D70](v12, -1, -1);
    }
  }

  else
  {
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CE1C58] code:20 userInfo:0];
    }

    v16 = qword_27E1C17E0;
    v17 = v4;
    v18 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v19 = sub_23BC85BD8();
    __swift_project_value_buffer(v19, qword_27E1C1EB0);
    v20 = v18;
    v10 = sub_23BC85BB8();
    v21 = sub_23BC85F38();

    if (os_log_type_enabled(v10, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v20;
      *v23 = v15;
      _os_log_impl(&dword_23BC7C000, v10, v21, "Reported that remote UI finished but didn't get finished configuration, reporting the error as: %@", v22, 0xCu);
      sub_23BC806C4(v23);
      MEMORY[0x23EEB8D70](v23, -1, -1);
      MEMORY[0x23EEB8D70](v22, -1, -1);
    }

    else
    {

      v10 = v20;
    }

    v4 = v15;
  }

  swift_getKeyPath();
  sub_23BC80314();
  sub_23BC85AE8();

  v24 = *(v3 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion);
  if (v24)
  {
    v25 = *(v3 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion + 8);

    v24(a1, v4);
    sub_23BC7E590(v24);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23BC85AD8();

  if (*(v3 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration))
  {
    v27 = swift_getKeyPath();
    MEMORY[0x28223BE20](v27);
    sub_23BC85AD8();
  }
}

id sub_23BC80074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranslationSessionViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TranslationSessionViewModel()
{
  result = qword_27E1C18C8;
  if (!qword_27E1C18C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BC801A0()
{
  result = sub_23BC85B08();
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

unint64_t sub_23BC80314()
{
  result = qword_27E1C1938;
  if (!qword_27E1C1938)
  {
    type metadata accessor for TranslationSessionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1938);
  }

  return result;
}

void sub_23BC8036C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23BC85AC8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_23BC803DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BC8041C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27E1C17E0 != -1)
  {
    swift_once();
  }

  v6 = sub_23BC85BD8();
  __swift_project_value_buffer(v6, qword_27E1C1EB0);
  v7 = a1;
  v8 = sub_23BC85BB8();
  v9 = sub_23BC85F58();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_23BC7C000, v8, v9, "Text session reported that it needs user action; will present UI with configuration: %{public}@", v10, 0xCu);
    sub_23BC806C4(v11);
    MEMORY[0x23EEB8D70](v11, -1, -1);
    MEMORY[0x23EEB8D70](v10, -1, -1);
  }

  v13 = v7;
  sub_23BC7F8AC(v7);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23BC80314();

  sub_23BC85AD8();
}

uint64_t sub_23BC80644()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BC8067C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23BC806C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1940, &qword_23BC86A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC8072C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_23BC7DCE0(v1);
  return sub_23BC7E590(v4);
}

void sub_23BC8078C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration);
  *(v1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration) = v2;
  v4 = v2;
}

unint64_t sub_23BC807CC()
{
  result = qword_27E1C1948;
  if (!qword_27E1C1948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C1948);
  }

  return result;
}

uint64_t sub_23BC80818()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession);
  *(v1 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession) = *(v0 + 24);
}

uint64_t View.translationTask(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v26[1] = a6;
  v27 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B0, &qword_23BC86A90);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = type metadata accessor for TranslationTaskModifier();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BC81100(a1, v19, &qword_27E1C19B0, &qword_23BC86A90);
  v20 = &v19[v16[5]];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = v16[6];
  v22 = sub_23BC85B58();
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  sub_23BC81100(v15, v13, &qword_27E1C19B0, &qword_23BC86A90);

  sub_23BC85E38();
  sub_23BC80B04(v15);
  v23 = v16[7];
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B8, &qword_23BC86A98);
  sub_23BC85E38();
  *&v19[v23] = v30;
  v24 = v16[8];
  *&v19[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19C0, &qword_23BC86AD0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEB87C0](v19, v27, v16, v28);
  return sub_23BC80FE0(v19);
}

uint64_t sub_23BC80B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B0, &qword_23BC86A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.translationTask(source:target:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v42 = a7;
  v43 = a5;
  v36 = a4;
  v37 = a1;
  v40 = a3;
  v38 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B0, &qword_23BC86A90);
  v7 = *(*(v41 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TranslationTaskModifier();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19C8, &unk_23BC86AD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v23 = sub_23BC85B58();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BC81100(v37, v22, &qword_27E1C19C8, &unk_23BC86AD8);
  sub_23BC81100(v38, v20, &qword_27E1C19C8, &unk_23BC86AD8);
  sub_23BC85B48();
  (*(v24 + 16))(v15, v27, v23);
  v28 = *(v24 + 56);
  v28(v15, 0, 1, v23);
  v29 = &v15[v12[5]];
  v30 = v36;
  *v29 = v40;
  *(v29 + 1) = v30;
  v31 = v12[6];
  v28(v11, 1, 1, v23);
  sub_23BC81100(v11, v39, &qword_27E1C19B0, &qword_23BC86A90);

  sub_23BC85E38();
  sub_23BC80B04(v11);
  v32 = v12[7];
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B8, &qword_23BC86A98);
  sub_23BC85E38();
  *&v15[v32] = v46;
  v33 = v12[8];
  *&v15[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19C0, &qword_23BC86AD0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEB87C0](v15, v43, v12, v44);
  sub_23BC80FE0(v15);
  return (*(v24 + 8))(v27, v23);
}

uint64_t sub_23BC80F34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19D8, "T\t");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BC81100(a1, &v6 - v4, &qword_27E1C19D8, "T\t");
  return sub_23BC85C58();
}

uint64_t sub_23BC80FE0(uint64_t a1)
{
  v2 = type metadata accessor for TranslationTaskModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC8103C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TranslationTaskModifier();
  sub_23BC85C18();
  sub_23BC810A8();
  return swift_getWitnessTable();
}

unint64_t sub_23BC810A8()
{
  result = qword_27E1C19D0;
  if (!qword_27E1C19D0)
  {
    type metadata accessor for TranslationTaskModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C19D0);
  }

  return result;
}

uint64_t sub_23BC81100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23BC8117C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B0, &qword_23BC86A90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19E0, &qword_23BC86AE8);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19E8, &unk_23BC86AF0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23BC81328(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B0, &qword_23BC86A90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19E0, &qword_23BC86AE8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19E8, &unk_23BC86AF0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for TranslationTaskModifier()
{
  result = qword_27E1C19F0;
  if (!qword_27E1C19F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BC8150C()
{
  sub_23BC8165C();
  if (v0 <= 0x3F)
  {
    sub_23BC816B4();
    if (v1 <= 0x3F)
    {
      sub_23BC81704(319, &qword_27E1C1A10, &qword_27E1C19B0, &qword_23BC86A90, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_23BC81704(319, &qword_27E1C1A18, &qword_27E1C19B8, &qword_23BC86A98, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_23BC81704(319, &qword_27E1C1A20, &qword_27E1C19D8, "T\t", MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BC8165C()
{
  if (!qword_27E1C1A00)
  {
    sub_23BC85B58();
    v0 = sub_23BC85F78();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C1A00);
    }
  }
}

unint64_t sub_23BC816B4()
{
  result = qword_27E1C1A08;
  if (!qword_27E1C1A08)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E1C1A08);
  }

  return result;
}

void sub_23BC81704(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23BC81784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
  sub_23BC85AE8();

  *a2 = *(v3 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession);
}

uint64_t sub_23BC81838(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23BC7F720(v4);
}

id sub_23BC81864@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
  sub_23BC85AE8();

  v4 = *(v3 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration);
  *a2 = v4;

  return v4;
}

void sub_23BC81924(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23BC7F8AC(v2);
}

uint64_t sub_23BC81954@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
  sub_23BC85AE8();

  v4 = *(v3 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion);
  v5 = *(v3 + OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23BC85368;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23BC7DCE0(v4);
}

uint64_t sub_23BC81A4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23BC8532C;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23BC7DCE0(v3);
  sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
  sub_23BC85AD8();
  sub_23BC7E590(v6);
}

uint64_t sub_23BC81BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v34 = a2;
  v4 = type metadata accessor for TranslationTaskModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A28, &qword_23BC86B78);
  v33 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  sub_23BC84294(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v5 + 80);
  v12 = (v11 + 16) & ~v11;
  v13 = swift_allocObject();
  sub_23BC842FC(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A30, &qword_23BC86B98) + 36)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A38, &qword_23BC86BA0);
  v16 = &v14[*(v15 + 36)];
  sub_23BC85F08();
  sub_23BC81100(v3, &v14[*(v15 + 40)], &qword_27E1C19B0, &qword_23BC86A90);
  *v14 = &unk_23BC86B90;
  *(v14 + 1) = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A40, &qword_23BC86BA8);
  v18 = *(*(v17 - 8) + 16);
  v32 = v10;
  v18(v10, v31, v17);
  sub_23BC84294(v3, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_23BC842FC(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v12);
  v20 = &v10[*(v7 + 36)];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = sub_23BC84520;
  *(v20 + 3) = v19;
  sub_23BC84294(v3, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BC85EF8();
  v21 = sub_23BC85EE8();
  v22 = (v11 + 32) & ~v11;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  sub_23BC842FC(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_23BC84294(v3, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_23BC85EE8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  sub_23BC842FC(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v22);
  sub_23BC85E68();
  sub_23BC84294(v3, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_23BC842FC(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A48, &qword_23BC86BB0);
  sub_23BC84964();
  sub_23BC84B1C();
  v28 = v32;
  sub_23BC85E18();

  return sub_23BC853C8(v28, &qword_27E1C1A28, &qword_23BC86B78);
}

uint64_t sub_23BC81FB8(uint64_t a1)
{
  v1[12] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AC0, &qword_23BC86C68);
  v1[13] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19B0, &qword_23BC86A90) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = sub_23BC85B58();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = sub_23BC85EF8();
  v1[26] = sub_23BC85EE8();
  v9 = sub_23BC85ED8();
  v1[27] = v9;
  v1[28] = v8;

  return MEMORY[0x2822009F8](sub_23BC8216C, v9, v8);
}

uint64_t sub_23BC8216C()
{
  v1 = v0[12];
  v89 = type metadata accessor for TranslationTaskModifier();
  v2 = v1 + *(v89 + 28);
  v3 = *v2;
  v4 = *(v2 + 8);
  v0[2] = *v2;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
  sub_23BC85E48();
  v5 = v0[8];
  if (v5)
  {
    swift_getKeyPath();
    v0[9] = v5;
    sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
    sub_23BC85AE8();

    v6 = *&v5[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession];

    if (qword_27E1C17E8 != -1)
    {
      swift_once();
    }

    v7 = sub_23BC85BD8();
    __swift_project_value_buffer(v7, qword_27E1C1EC8);
    v8 = sub_23BC85BB8();
    v9 = sub_23BC85F28();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23BC7C000, v8, v9, "Cancelling previous session because a configuration change was triggered", v10, 2u);
      MEMORY[0x23EEB8D70](v10, -1, -1);
    }

    sub_23BC85B28();
    v0[4] = v3;
    v0[5] = v4;
    v0[10] = 0;

    v11 = v3;
    sub_23BC85E58();
  }

  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  sub_23BC81100(v0[12], v14, &qword_27E1C19B0, &qword_23BC86A90);
  v15 = *(v12 + 48);
  if (v15(v14, 1, v13) == 1)
  {
    v16 = v0[26];
    v17 = v0[20];

    sub_23BC853C8(v17, &qword_27E1C19B0, &qword_23BC86A90);
LABEL_9:
    v19 = v0[23];
    v18 = v0[24];
    v21 = v0[19];
    v20 = v0[20];
    v23 = v0[17];
    v22 = v0[18];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];

    v27 = v0[1];

    return v27();
  }

  v83 = v4;
  v84 = v3;
  v29 = v0[24];
  v31 = v0[21];
  v30 = v0[22];
  v32 = v0[19];
  v33 = v0[18];
  v85 = v0[14];
  v87 = v0[13];
  v34 = v0[12];
  v80 = v30[4];
  v80(v29, v0[20], v31);
  v35 = *(v89 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19E0, &qword_23BC86AE8);
  sub_23BC85E48();
  v82 = v30[2];
  v82(v33, v29, v31);
  v81 = v30[7];
  v81(v33, 0, 1, v31);
  v36 = *(v87 + 48);
  sub_23BC81100(v32, v85, &qword_27E1C19B0, &qword_23BC86A90);
  sub_23BC81100(v33, v85 + v36, &qword_27E1C19B0, &qword_23BC86A90);
  v37 = v15(v85, 1, v31);
  v38 = v0[21];
  if (v37 != 1)
  {
    sub_23BC81100(v0[14], v0[17], &qword_27E1C19B0, &qword_23BC86A90);
    if (v15(v85 + v36, 1, v38) != 1)
    {
      v44 = v0[22];
      v45 = v0[23];
      v46 = v0[21];
      v47 = v0[18];
      v79 = v0[19];
      v48 = v0[17];
      v88 = v0[14];
      v80(v45, v85 + v36, v46);
      sub_23BC854DC(&qword_27E1C1AC8, MEMORY[0x277CE1AA0]);
      v49 = sub_23BC85EA8();
      v50 = *(v44 + 8);
      v50(v45, v46);
      sub_23BC853C8(v47, &qword_27E1C19B0, &qword_23BC86A90);
      sub_23BC853C8(v79, &qword_27E1C19B0, &qword_23BC86A90);
      v50(v48, v46);
      sub_23BC853C8(v88, &qword_27E1C19B0, &qword_23BC86A90);
      if ((v49 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v41 = v0[21];
    v40 = v0[22];
    v42 = v0[19];
    v43 = v0[17];
    sub_23BC853C8(v0[18], &qword_27E1C19B0, &qword_23BC86A90);
    sub_23BC853C8(v42, &qword_27E1C19B0, &qword_23BC86A90);
    (*(v40 + 8))(v43, v41);
LABEL_17:
    sub_23BC853C8(v0[14], &qword_27E1C1AC0, &qword_23BC86C68);
    goto LABEL_25;
  }

  v39 = v0[19];
  sub_23BC853C8(v0[18], &qword_27E1C19B0, &qword_23BC86A90);
  sub_23BC853C8(v39, &qword_27E1C19B0, &qword_23BC86A90);
  if (v15(v85 + v36, 1, v38) != 1)
  {
    goto LABEL_17;
  }

  sub_23BC853C8(v0[14], &qword_27E1C19B0, &qword_23BC86A90);
LABEL_19:
  v51 = v0[24];
  if ((sub_23BC85B38() & 1) == 0)
  {
    v70 = v0[26];

    if (qword_27E1C17E8 != -1)
    {
      swift_once();
    }

    v71 = sub_23BC85BD8();
    __swift_project_value_buffer(v71, qword_27E1C1EC8);
    v72 = sub_23BC85BB8();
    v73 = sub_23BC85F28();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[24];
    v76 = v0[21];
    v77 = v0[22];
    if (v74)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_23BC7C000, v72, v73, "Not triggering translation on configuration since it hasn't changed; the view is likely reappearing", v78, 2u);
      MEMORY[0x23EEB8D70](v78, -1, -1);
    }

    (*(v77 + 8))(v75, v76);
    goto LABEL_9;
  }

  if (qword_27E1C17E8 != -1)
  {
    swift_once();
  }

  v52 = sub_23BC85BD8();
  __swift_project_value_buffer(v52, qword_27E1C1EC8);
  v53 = sub_23BC85BB8();
  v54 = sub_23BC85F28();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_23BC7C000, v53, v54, "Configurations are identical but both were created internally, so allowing to change", v55, 2u);
    MEMORY[0x23EEB8D70](v55, -1, -1);
  }

LABEL_25:
  v56 = v0[24];
  v57 = v0[23];
  v58 = v0[21];
  v59 = v0[15];
  v60 = v0[16];
  v61 = v0[12];
  v86 = v61;
  v82(v60, v56, v58);
  v81(v60, 0, 1, v58);
  sub_23BC81100(v60, v59, &qword_27E1C19B0, &qword_23BC86A90);
  sub_23BC85E58();
  sub_23BC853C8(v60, &qword_27E1C19B0, &qword_23BC86A90);
  sub_23BC85B78();
  v82(v57, v56, v58);
  v62 = sub_23BC85B68();
  v0[29] = v62;
  v63 = objc_allocWithZone(type metadata accessor for TranslationSessionViewModel());

  v65 = sub_23BC7FAEC(v64);
  v0[6] = v84;
  v0[7] = v83;
  v0[11] = v65;
  sub_23BC85E58();
  v66 = swift_task_alloc();
  v0[30] = v66;
  *(v66 + 16) = v86;
  *(v66 + 24) = v62;
  v67 = swift_task_alloc();
  v0[31] = v67;
  *(v67 + 16) = v86;
  v0[32] = sub_23BC85EE8();
  v68 = *(MEMORY[0x277D85A10] + 4);
  v69 = swift_task_alloc();
  v0[33] = v69;
  *v69 = v0;
  v69[1] = sub_23BC82B44;

  return MEMORY[0x282200830]();
}

void sub_23BC82B44()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[31];
    v5 = v2[32];
    v7 = v2[30];

    v8 = v2[27];
    v9 = v2[28];

    MEMORY[0x2822009F8](sub_23BC82C90, v8, v9);
  }
}

uint64_t sub_23BC82C90()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];

  (*(v5 + 8))(v3, v4);
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_23BC82D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_23BC85EF8();
  v3[4] = sub_23BC85EE8();
  v5 = sub_23BC85ED8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_23BC82E24, v5, v4);
}

uint64_t sub_23BC82E24()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for TranslationTaskModifier() + 20));
  v3 = v2[1];
  v8 = (*v2 + **v2);
  v4 = (*v2)[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23BC82F28;
  v6 = v0[3];

  return v8(v6);
}

uint64_t sub_23BC82F28()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_23BC83048, v4, v3);
}

uint64_t sub_23BC83048()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23BC830AC(uint64_t a1)
{
  if (qword_27E1C17E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BC85BD8();
  __swift_project_value_buffer(v2, qword_27E1C1EC8);
  v3 = sub_23BC85BB8();
  v4 = sub_23BC85F18();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BC7C000, v3, v4, "Received cancel while performing client 'action', asking session to cancel pending work", v5, 2u);
    MEMORY[0x23EEB8D70](v5, -1, -1);
  }

  v9 = *(a1 + *(type metadata accessor for TranslationTaskModifier() + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
  result = sub_23BC85E48();
  if (v8)
  {
    swift_getKeyPath();
    sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
    sub_23BC85AE8();

    v7 = *&v8[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession];

    sub_23BC85B28();
  }

  return result;
}

uint64_t sub_23BC8325C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for TranslationTaskModifier() + 28);
  v3 = *v1;
  v2 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
  result = sub_23BC85E48();
  if (v11)
  {
    swift_getKeyPath();
    sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
    sub_23BC85AE8();

    v5 = *&v11[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__translationSession];

    if (qword_27E1C17E8 != -1)
    {
      swift_once();
    }

    v6 = sub_23BC85BD8();
    __swift_project_value_buffer(v6, qword_27E1C1EC8);
    v7 = sub_23BC85BB8();
    v8 = sub_23BC85F28();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      MEMORY[0x23EEB8D70](v9, -1, -1);
    }

    sub_23BC85B28();

    v10 = v3;
    sub_23BC85E58();
  }

  return result;
}

uint64_t sub_23BC8345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranslationTaskModifier();
  v5 = v4 - 8;
  v42 = *(v4 - 8);
  v6 = v42[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A88, &qword_23BC86BC0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A98, &qword_23BC86BC8);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = &v40 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A80, &qword_23BC86BB8);
  v15 = *(v48 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v48);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = &v40 - v20;
  v49 = *(a1 + *(v5 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
  sub_23BC85E48();
  v21 = v51;
  if (!v51)
  {
    v38 = 1;
LABEL_10:
    v34 = v48;
    return (*(v15 + 56))(a2, v38, 1, v34);
  }

  v41 = a2;
  swift_getKeyPath();
  *&v49 = v21;
  sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
  sub_23BC85AE8();

  v22 = *&v21[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration];
  v23 = v22;

  if (!v22)
  {
    v38 = 1;
    a2 = v41;
    goto LABEL_10;
  }

  sub_23BC84294(a1, &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_23BC842FC(v7, v25 + v24);
  *&v49 = v23;
  *(&v49 + 1) = sub_23BC84F9C;
  v50 = v25;
  v26 = v23;
  sub_23BC83AB8();
  v27 = sub_23BC84C94();
  sub_23BC85DF8();

  v42 = v26;

  *&v49 = &type metadata for DownloadsHostingView;
  *(&v49 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v45;
  sub_23BC85E08();
  (*(v43 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA8, &qword_23BC86C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BC86890;
  v30 = sub_23BC85D88();
  *(inited + 32) = v30;
  v31 = sub_23BC85D78();
  *(inited + 33) = v31;
  v32 = sub_23BC85D98();
  sub_23BC85D98();
  if (sub_23BC85D98() != v30)
  {
    v32 = sub_23BC85D98();
  }

  sub_23BC85D98();
  v33 = sub_23BC85D98();
  a2 = v41;
  v34 = v48;
  if (v33 != v31)
  {
    v32 = sub_23BC85D98();
  }

  v35 = sub_23BC85C28();

  (*(v46 + 32))(v19, v28, v47);
  v36 = &v19[*(v34 + 36)];
  *v36 = v35;
  v36[8] = v32;
  v37 = v44;
  sub_23BC8501C(v19, v44);
  sub_23BC8501C(v37, a2);
  v38 = 0;
  return (*(v15 + 56))(a2, v38, 1, v34);
}

void sub_23BC839C8(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v7 = *(a3 + *(type metadata accessor for TranslationTaskModifier() + 28));
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
    sub_23BC85E48();
    if (v6)
    {
      v4 = v4;
      sub_23BC7FC08(0, a2);
    }
  }

  else
  {
    v8 = *(a3 + *(type metadata accessor for TranslationTaskModifier() + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
    sub_23BC85E48();
    v4 = v6;
    if (!v6)
    {
      return;
    }

    sub_23BC7FC08(a1, 0);
  }
}

uint64_t sub_23BC83AB8()
{
  v1 = sub_23BC85CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AB0, &qword_23BC86C08);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19D8, "T\t");
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = v0 + *(type metadata accessor for TranslationTaskModifier() + 32);
  sub_23BC8508C(v19);
  (*(v2 + 104))(v17, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v17, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_23BC81100(v19, v9, &qword_27E1C19D8, "T\t");
  sub_23BC81100(v17, &v9[v21], &qword_27E1C19D8, "T\t");
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) != 1)
  {
    sub_23BC81100(v9, v14, &qword_27E1C19D8, "T\t");
    if (v22(&v9[v21], 1, v1) != 1)
    {
      v24 = &v9[v21];
      v25 = v34;
      (*(v2 + 32))(v34, v24, v1);
      sub_23BC854DC(&qword_27E1C1AB8, MEMORY[0x277CE0570]);
      v26 = sub_23BC85EA8();
      v27 = *(v2 + 8);
      v27(v25, v1);
      sub_23BC853C8(v17, &qword_27E1C19D8, "T\t");
      sub_23BC853C8(v19, &qword_27E1C19D8, "T\t");
      v27(v14, v1);
      sub_23BC853C8(v9, &qword_27E1C19D8, "T\t");
      if (v26)
      {
        goto LABEL_9;
      }

      return MEMORY[0x277D84FA0];
    }

    sub_23BC853C8(v17, &qword_27E1C19D8, "T\t");
    sub_23BC853C8(v19, &qword_27E1C19D8, "T\t");
    (*(v2 + 8))(v14, v1);
LABEL_6:
    sub_23BC853C8(v9, &qword_27E1C1AB0, &qword_23BC86C08);
    return MEMORY[0x277D84FA0];
  }

  sub_23BC853C8(v17, &qword_27E1C19D8, "T\t");
  sub_23BC853C8(v19, &qword_27E1C19D8, "T\t");
  if (v22(&v9[v21], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_23BC853C8(v9, &qword_27E1C19D8, "T\t");
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1878, &qword_23BC86C10);
  v28 = *(sub_23BC85CA8() - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23BC86890;
  sub_23BC85C98();
  sub_23BC85C88();
  v32 = sub_23BC7F244(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v32;
}

void sub_23BC83FF0(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for TranslationTaskModifier() + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
  sub_23BC85E48();
  if (!v5)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_23BC854DC(&qword_27E1C1938, type metadata accessor for TranslationSessionViewModel);
  sub_23BC85AE8();

  if (!*&v5[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightCompletion])
  {

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  swift_getKeyPath();
  sub_23BC85AE8();

  v3 = *&v5[OBJC_IVAR____TtC20_Translation_SwiftUI27TranslationSessionViewModel__preflightConfiguration];

  v4 = v3 != 0;
LABEL_6:
  *a2 = v4;
}

void sub_23BC84140(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    if (qword_27E1C17E0 != -1)
    {
      swift_once();
    }

    v4 = sub_23BC85BD8();
    __swift_project_value_buffer(v4, qword_27E1C1EB0);
    oslog = sub_23BC85BB8();
    v5 = sub_23BC85F38();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23BC7C000, oslog, v5, "Attempted to force present API UI via Binding which isn't supported, not doing anything", v6, 2u);
      MEMORY[0x23EEB8D70](v6, -1, -1);
    }
  }

  else
  {
    v9 = *(a4 + *(type metadata accessor for TranslationTaskModifier() + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1AA0, &qword_23BC86BD0);
    sub_23BC85E48();
    if (v8)
    {
      sub_23BC7FC08(0, 0);
    }
  }
}

uint64_t sub_23BC84294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationTaskModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC842FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationTaskModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC84360()
{
  v2 = *(type metadata accessor for TranslationTaskModifier() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23BC8442C;

  return sub_23BC81FB8(v0 + v3);
}

uint64_t sub_23BC8442C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23BC84520()
{
  v1 = *(type metadata accessor for TranslationTaskModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23BC8325C(v2);
}

void sub_23BC84580(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationTaskModifier() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_23BC83FF0(v6, a1);
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for TranslationTaskModifier();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_23BC85B58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v9 = *(v5 + v1[5] + 8);

  v10 = v5 + v1[6];
  if (!v8(v10, 1, v6))
  {
    (*(v7 + 8))(v10, v6);
  }

  v11 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19E0, &qword_23BC86AE8) + 28));

  v12 = v5 + v1[7];

  v13 = *(v12 + 8);

  v14 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19C0, &qword_23BC86AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23BC85CB8();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v14, 1, v15))
    {
      (*(v16 + 8))(v5 + v14, v15);
    }
  }

  else
  {
    v17 = *(v5 + v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v19, v2 | 7);
}

void sub_23BC84880(_BYTE *a1)
{
  v3 = *(type metadata accessor for TranslationTaskModifier() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_23BC84140(a1, v4, v5, v6);
}

uint64_t sub_23BC848F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationTaskModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23BC8345C(v4, a1);
}

unint64_t sub_23BC84964()
{
  result = qword_27E1C1A50;
  if (!qword_27E1C1A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1A28, &qword_23BC86B78);
    sub_23BC849F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1A50);
  }

  return result;
}

unint64_t sub_23BC849F0()
{
  result = qword_27E1C1A58;
  if (!qword_27E1C1A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1A30, &qword_23BC86B98);
    sub_23BC84AD4(&qword_27E1C1A60, &qword_27E1C1A40, &qword_23BC86BA8);
    sub_23BC84AD4(&qword_27E1C1A68, &qword_27E1C1A38, &qword_23BC86BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1A58);
  }

  return result;
}

uint64_t sub_23BC84AD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23BC84B1C()
{
  result = qword_27E1C1A70;
  if (!qword_27E1C1A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1A48, &qword_23BC86BB0);
    sub_23BC84BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1A70);
  }

  return result;
}

unint64_t sub_23BC84BA0()
{
  result = qword_27E1C1A78;
  if (!qword_27E1C1A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1A80, &qword_23BC86BB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1A88, &qword_23BC86BC0);
    sub_23BC84C94();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1A78);
  }

  return result;
}

unint64_t sub_23BC84C94()
{
  result = qword_27E1C1A90;
  if (!qword_27E1C1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1A90);
  }

  return result;
}

void sub_23BC84CEC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23BC7F8AC(v2);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for TranslationTaskModifier();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_23BC85B58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v8 = *(v4 + v1[5] + 8);

  v9 = v4 + v1[6];
  if (!v7(v9, 1, v5))
  {
    (*(v6 + 8))(v9, v5);
  }

  v10 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19E0, &qword_23BC86AE8) + 28));

  v11 = v4 + v1[7];

  v12 = *(v11 + 8);

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19C0, &qword_23BC86AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23BC85CB8();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v4 + v13, 1, v14))
    {
      (*(v15 + 8))(v4 + v13, v14);
    }
  }

  else
  {
    v16 = *(v4 + v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v18, v2 | 7);
}

void sub_23BC84F9C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for TranslationTaskModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23BC839C8(a1, a2, v6);
}

uint64_t sub_23BC8501C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1A80, &qword_23BC86BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC8508C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BC85C78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19C0, &qword_23BC86AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_23BC81100(v2, &v16 - v11, &qword_27E1C19C0, &qword_23BC86AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23BC8525C(v12, a1);
  }

  v14 = *v12;
  sub_23BC85F48();
  v15 = sub_23BC85D68();
  sub_23BC85BA8();

  sub_23BC85C68();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23BC8525C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C19D8, "T\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC852F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BC8532C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_23BC85368(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_23BC8539C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23BC7F720(v4);
}

uint64_t sub_23BC853C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BC85428(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BC8442C;

  return sub_23BC82D8C(a1, v5, v4);
}

uint64_t sub_23BC854DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BC85524()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1A28, &qword_23BC86B78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1A48, &qword_23BC86BB0);
  sub_23BC84964();
  sub_23BC84B1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E1C1EA0 == -1)
  {
    if (qword_27E1C1EA8)
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
    if (qword_27E1C1EA8)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E1C1E98 != -1)
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
      if (dword_27E1C1E8C > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E1C1E8C >= a3)
      {
        result = dword_27E1C1E90 >= a4;
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
  v1 = qword_27E1C1EA8;
  if (qword_27E1C1EA8)
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
      qword_27E1C1EA8 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x23EEB8A10](v13);
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
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E1C1E8C, &dword_27E1C1E90);
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