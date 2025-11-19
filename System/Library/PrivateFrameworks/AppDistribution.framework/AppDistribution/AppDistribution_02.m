void *sub_23FF81E74(void *a1, int64_t a2, char a3)
{
  result = sub_23FF823F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23FF81E94()
{
  result = qword_27E3A3058;
  if (!qword_27E3A3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3058);
  }

  return result;
}

unint64_t sub_23FF81EE8()
{
  result = qword_27E3A3070;
  if (!qword_27E3A3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3070);
  }

  return result;
}

uint64_t sub_23FF81F3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A3060, &qword_23FFDE7F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF81FB4()
{
  result = qword_27E3A3088;
  if (!qword_27E3A3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3088);
  }

  return result;
}

unint64_t sub_23FF82008()
{
  result = qword_27E3A3098;
  if (!qword_27E3A3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3098);
  }

  return result;
}

unint64_t sub_23FF820C0()
{
  result = qword_27E3A30A8;
  if (!qword_27E3A30A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30A8);
  }

  return result;
}

unint64_t sub_23FF82118()
{
  result = qword_27E3A30B0;
  if (!qword_27E3A30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30B0);
  }

  return result;
}

unint64_t sub_23FF82170()
{
  result = qword_27E3A30B8;
  if (!qword_27E3A30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30B8);
  }

  return result;
}

unint64_t sub_23FF821C8()
{
  result = qword_27E3A30C0;
  if (!qword_27E3A30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30C0);
  }

  return result;
}

unint64_t sub_23FF82220()
{
  result = qword_27E3A30C8;
  if (!qword_27E3A30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30C8);
  }

  return result;
}

unint64_t sub_23FF82278()
{
  result = qword_27E3A30D0;
  if (!qword_27E3A30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30D0);
  }

  return result;
}

unint64_t sub_23FF822D0()
{
  result = qword_27E3A30D8;
  if (!qword_27E3A30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30D8);
  }

  return result;
}

unint64_t sub_23FF82328()
{
  result = qword_27E3A30E0;
  if (!qword_27E3A30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30E0);
  }

  return result;
}

unint64_t sub_23FF82380()
{
  result = qword_27E3A30E8;
  if (!qword_27E3A30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A30E8);
  }

  return result;
}

char *sub_23FF823D4(char *a1, int64_t a2, char a3)
{
  result = sub_23FF82528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23FF823F4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A30F8, &qword_23FFDECD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3100, &qword_23FFDECD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23FF82528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A30F0, &unk_23FFDECC0);
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

uint64_t LicenseResolutionContext.logKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LicenseResolutionContext.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LicenseResolutionContext() + 20);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LicenseResolutionContext()
{
  result = qword_27E3A3120;
  if (!qword_27E3A3120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LicenseResolutionContext.init(logKey:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LicenseResolutionContext() + 20);
  v7 = sub_23FFD8F6C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_23FF827C4()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x79654B676F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_23FF827F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF828CC(uint64_t a1)
{
  v2 = sub_23FF82AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF82908(uint64_t a1)
{
  v2 = sub_23FF82AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LicenseResolutionContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3108, &qword_23FFDECE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82AE8();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = *(type metadata accessor for LicenseResolutionContext() + 20);
    v15[14] = 1;
    sub_23FFD8F6C();
    sub_23FF82E4C(&qword_27E3A2438);
    sub_23FFD991C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23FF82AE8()
{
  result = qword_27E3A3110;
  if (!qword_27E3A3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3110);
  }

  return result;
}

uint64_t LicenseResolutionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_23FFD8F6C();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3118, &qword_23FFDECE8);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for LicenseResolutionContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82AE8();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_23FFD980C();
  v13[1] = v17;
  v25 = 1;
  sub_23FF82E4C(&qword_27E3A2458);
  sub_23FFD983C();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_23FF82E90(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FF82EF4(v13);
}

uint64_t sub_23FF82E4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23FFD8F6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF82E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF82EF4(uint64_t a1)
{
  v2 = type metadata accessor for LicenseResolutionContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23FF82FA8()
{
  result = sub_23FFD8F6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23FF83038()
{
  result = qword_27E3A3130;
  if (!qword_27E3A3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3130);
  }

  return result;
}

unint64_t sub_23FF83090()
{
  result = qword_27E3A3138;
  if (!qword_27E3A3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3138);
  }

  return result;
}

unint64_t sub_23FF830E8()
{
  result = qword_27E3A3140;
  if (!qword_27E3A3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3140);
  }

  return result;
}

uint64_t sub_23FF83160()
{
  v0 = type metadata accessor for AppLibrary(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_23FF8415C();
  qword_27E3A3148 = v3;
  return result;
}

uint64_t static AppLibrary.current.getter()
{
  if (qword_27E3A2158 != -1)
  {
    swift_once();
  }
}

uint64_t AppLibrary.maximumAllowedAgeRating.getter()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  return *(v0 + 16);
}

uint64_t sub_23FF8329C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_23FF8338C(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FDC();
  }

  return result;
}

uint64_t sub_23FF83490(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_23FF8B27C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FDC();
  }
}

uint64_t sub_23FF835E8()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  v1 = *(v0 + 32);
}

uint64_t sub_23FF8368C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 32);
}

uint64_t (*AppLibrary.installedApps.modify(void *a1))(uint64_t *a1)
{
  swift_getKeyPath();
  a1[1] = v1;
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  *a1 = *(v1 + 32);

  return sub_23FF8380C;
}

uint64_t sub_23FF83814(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_23FF8B27C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FDC();
  }
}

uint64_t sub_23FF8396C()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  v1 = *(v0 + 40);
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_23FF83A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 40);
}

uint64_t (*AppLibrary.installingApps.modify(void *a1))(uint64_t *)
{
  swift_getKeyPath();
  a1[1] = v1;
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  *a1 = *(v1 + 40);

  return sub_23FF8C854;
}

uint64_t sub_23FF83BC0()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  return *(v0 + 48);
}

uint64_t sub_23FF83C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_23FF83D08(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FDC();
  }

  return result;
}

uint64_t sub_23FF83E18()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  return *(v0 + 49);
}

uint64_t sub_23FF83EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_23FF83F60(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FDC();
  }

  return result;
}

uint64_t AppLibrary.isLoading.getter()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FEC();

  if (*(v0 + 48))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_23FFD8FEC();

  return *(v0 + 49);
}

uint64_t sub_23FF8415C()
{
  v1 = v0;
  *(v0 + 16) = 2000;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 24) = sub_23FF8D690(MEMORY[0x277D84F90]);
  if (v2 >> 62)
  {
    if (sub_23FFD963C())
    {
      v7 = sub_23FF8B5A4(MEMORY[0x277D84F90]);
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }

    *(v1 + 32) = v7;
    if (sub_23FFD963C())
    {
      v3 = sub_23FF8B5A4(MEMORY[0x277D84F90]);
    }

    else
    {
      v3 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
    *(v1 + 32) = MEMORY[0x277D84FA0];
  }

  *(v1 + 40) = v3;
  *(v1 + 48) = 257;
  sub_23FFD8FFC();
  sub_23FFD922C();
  v4 = sub_23FFD921C();

  sub_23FFD920C();

  v5 = sub_23FFD921C();

  sub_23FFD91EC();

  return v1;
}

uint64_t sub_23FF842B0(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v30 = sub_23FFD92EC();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23FFD92BC();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23FFD929C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD925C();
  v16 = sub_23FFD927C();
  v17 = sub_23FFD954C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v7;
    v19 = v3;
    v20 = a1;
    v21 = v18;
    *v18 = 134217984;
    *(v18 + 4) = v20;
    _os_log_impl(&dword_23FF4C000, v16, v17, "AppLibrary received new maximum allowed age rating: %ld", v18, 0xCu);
    v22 = v21;
    a1 = v20;
    v3 = v19;
    v7 = v27;
    MEMORY[0x245CB48E0](v22, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_23FF79E5C();
  v23 = sub_23FFD958C();
  sub_23FFD92AC();
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 24) = a1;
  aBlock[4] = sub_23FF8C810;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF84984;
  aBlock[3] = &block_descriptor_86_0;
  v25 = _Block_copy(aBlock);

  sub_23FFD92DC();
  MEMORY[0x245CB3D50](0, v6, v10, v25);
  _Block_release(v25);

  (*(v3 + 8))(v6, v30);
  (*(v7 + 8))(v10, v29);
}

uint64_t sub_23FF84618(uint64_t a1, uint64_t a2)
{
  v4 = sub_23FFD929C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD946C();
  v15[1] = sub_23FFD945C();
  sub_23FFD942C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 16) == a2)
  {
    if ((*(a1 + 49) & 1) == 0)
    {
LABEL_5:
      *(a1 + 49) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15[0] = v15;
    MEMORY[0x28223BE20](KeyPath);
    v15[-2] = a1;
    v15[-1] = a2;
    v16 = a1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FDC();

    if ((*(a1 + 49) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v10 = swift_getKeyPath();
  v15[0] = v15;
  MEMORY[0x28223BE20](v10);
  v15[-2] = a1;
  LOBYTE(v15[-1]) = 0;
  v16 = a1;
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
  sub_23FFD8FDC();

LABEL_8:
  sub_23FFD925C();
  v11 = sub_23FFD927C();
  v12 = sub_23FFD954C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23FF4C000, v11, v12, "Finished updating maximum allowed age rating", v13, 2u);
    MEMORY[0x245CB48E0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_23FF84984(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23FF849C8(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_23FFD92EC();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23FFD92BC();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23FFD929C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD925C();

  v16 = sub_23FFD927C();
  v17 = sub_23FFD954C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    _os_log_impl(&dword_23FF4C000, v16, v17, "Received %ld apps", v18, 0xCu);
    MEMORY[0x245CB48E0](v18, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v15, v11);
  sub_23FF79E5C();
  v19 = sub_23FFD958C();
  sub_23FFD92AC();
  v20 = swift_allocObject();
  v21 = v24;
  *(v20 + 16) = a1;
  *(v20 + 24) = v21;
  aBlock[4] = sub_23FF8C7F0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF84984;
  aBlock[3] = &block_descriptor_6;
  v22 = _Block_copy(aBlock);

  sub_23FFD92DC();
  MEMORY[0x245CB3D50](0, v6, v10, v22);
  _Block_release(v22);

  (*(v26 + 8))(v6, v27);
  (*(v7 + 8))(v10, v25);
}

uint64_t sub_23FF84D40(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = sub_23FFD929C();
  i = *(v3 - 8);
  v83 = v3;
  v4 = *(i + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v84 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = v76 - v7;
  v8 = sub_23FFD91CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v85 = (v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = v76 - v13;
  v78 = 0;
  sub_23FFD946C();
  v15 = sub_23FFD945C();
  sub_23FFD942C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v76[1] = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v88 = *(v9 + 16);
    v17 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v86 = *(v9 + 72);
    v89 = MEMORY[0x277D84FA0];
    v18 = v87;
    v88(v14, v17, v8);
    while (1)
    {
      v22 = sub_23FFD913C();
      v23 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91[0] = v23;
      sub_23FF89B64(v22, isUniquelyReferenced_nonNull_native);
      v89 = v91[0];
      v25 = sub_23FFD913C();
      swift_beginAccess();
      v26 = *(v18 + 24);
      if (!*(v26 + 16))
      {
        goto LABEL_5;
      }

      v27 = sub_23FF88FF8(v25);
      if (v28)
      {
        v20 = *(*(v26 + 56) + 8 * v27);
        swift_endAccess();
        swift_retain_n();
        sub_23FF6B278(v14);
        v18 = v87;
      }

      else
      {
LABEL_5:
        swift_endAccess();
        v19 = v85;
        v88(v85, v14, v8);
        v20 = sub_23FF6EC80(v19);

        v18 = v87;
        sub_23FF856C4(v21);
      }

      AppLibrary.updateInstallState(forUpdated:)(v20);

      (*(v9 + 8))(v14, v8);
      v17 += v86;
      if (!--v16)
      {
        break;
      }

      v88(v14, v17, v8);
    }
  }

  else
  {
    v89 = MEMORY[0x277D84FA0];
    v18 = v87;
  }

  swift_beginAccess();
  v29 = *(v18 + 24);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v35 = v89;
  v80 = v89 + 56;
  v85 = (i + 8);
  v86 = v29;

  v37 = 0;
  *&v38 = 134217984;
  v79 = v38;
  v39 = v18;
  v40 = v78;
  v81 = v30;
  for (i = v34; v33; v34 = i)
  {
LABEL_23:
    while (1)
    {
      v55 = v40;
      v56 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v57 = *(*(v86 + 56) + ((v37 << 9) | (8 * v56)));
      if (*(v35 + 16))
      {
        v58 = *(v57 + 16);
        v59 = *(v35 + 40);
        result = sub_23FFD9A1C();
        v60 = -1 << *(v35 + 32);
        v61 = result & ~v60;
        if ((*(v80 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
        {
          break;
        }
      }

LABEL_28:

      sub_23FFD925C();

      v63 = sub_23FFD927C();
      v64 = sub_23FFD953C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = v79;
        *(v65 + 4) = *(v57 + 16);

        _os_log_impl(&dword_23FF4C000, v63, v64, "Known app %llu is not installed", v65, 0xCu);
        MEMORY[0x245CB48E0](v65, -1, -1);
      }

      else
      {
      }

      v40 = v55;
      (*v85)(v84, v83);
      v95 = 0;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v66 = *(v57 + 24);
      v67 = *(v57 + 40);
      v97 = *(v57 + 72);
      v68 = *(v57 + 56);
      v96[1] = v67;
      v96[2] = v68;
      v96[0] = v66;
      sub_23FF642A8(v96, v90, &qword_27E3A2950, &qword_23FFDBD30);
      v69 = sub_23FF6E880(v96, &v92);
      sub_23FF64248(v96, &qword_27E3A2950, &qword_23FFDBD30);
      if (v69)
      {
        KeyPath = swift_getKeyPath();
        v88 = v76;
        MEMORY[0x28223BE20](KeyPath);
        v76[-2] = v57;
        v76[-1] = &v92;
        v90[0] = v57;
        sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
        sub_23FFD8FDC();
        v51 = 0x27E3A2000;
      }

      else
      {
        v41 = *(v57 + 40);
        v42 = *(v57 + 48);
        v43 = v95;
        v44 = v94;
        v45 = v92;
        *(v57 + 40) = v93;
        v46 = *(v57 + 24);
        v47 = *(v57 + 32);
        v48 = *(v57 + 56);
        v49 = *(v57 + 64);
        v50 = *(v57 + 72);
        *(v57 + 24) = v45;
        *(v57 + 56) = v44;
        *(v57 + 72) = v43;
        sub_23FF6E04C(v46, v47, v41);
        v51 = 0x27E3A2000uLL;
      }

      memset(v91, 0, sizeof(v91));
      v52 = swift_getKeyPath();
      v88 = v76;
      MEMORY[0x28223BE20](v52);
      v76[-2] = v57;
      v76[-1] = v91;
      v53 = *(v51 + 2240);
      v90[0] = v57;
      sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
      sub_23FFD8FDC();

      v39 = v87;
      AppLibrary.updateInstallState(forUpdated:)(v57);

      v35 = v89;
      v30 = v81;
      v34 = i;
      if (!v33)
      {
        goto LABEL_19;
      }
    }

    v62 = ~v60;
    while (*(*(v35 + 48) + 8 * v61) != v58)
    {
      v61 = (v61 + 1) & v62;
      if (((*(v80 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v40 = v55;
  }

  while (1)
  {
LABEL_19:
    v54 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return result;
    }

    if (v54 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v54);
    ++v37;
    if (v33)
    {
      v37 = v54;
      goto LABEL_23;
    }
  }

  if (*(v39 + 48))
  {
    v71 = swift_getKeyPath();
    MEMORY[0x28223BE20](v71);
    v76[-2] = v39;
    LOBYTE(v76[-1]) = 0;
    v90[0] = v39;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FDC();
  }

  else
  {
    *(v39 + 48) = 0;
  }

  v72 = v77;
  sub_23FFD925C();
  v73 = sub_23FFD927C();
  v74 = sub_23FFD954C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_23FF4C000, v73, v74, "Finished updating catalog", v75, 2u);
    MEMORY[0x245CB48E0](v75, -1, -1);
  }

  (*v85)(v72, v83);
}

uint64_t sub_23FF856C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(a1 + 16);
  swift_beginAccess();

  v9 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_23FF8A904(a1, v8, isUniquelyReferenced_nonNull_native);
  *(v1 + 24) = v16;
  swift_endAccess();
  sub_23FFD947C();
  v11 = sub_23FFD949C();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_23FFD946C();

  v12 = sub_23FFD945C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  v13[5] = v2;
  sub_23FF86474(0xD00000000000001DLL, 0x800000023FFEB430, v7, &unk_23FFDF248, v13);

  return sub_23FF64248(v7, &qword_27E3A2920, &qword_23FFDBCE8);
}

uint64_t AppLibrary.updateInstallState(forUpdated:)(uint64_t a1)
{
  swift_getKeyPath();
  v6 = a1;
  sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
  sub_23FFD8FEC();

  if (*(a1 + 40))
  {
    swift_getKeyPath();
    v6 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FEC();

    v4 = *(v1 + 32);

    sub_23FF8AA50(&v6, a1);
  }

  else
  {
    swift_getKeyPath();
    v6 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FEC();

    v6 = *(v1 + 32);

    sub_23FF8AC5C(a1);
  }

  swift_getKeyPath();
  v6 = a1;
  sub_23FFD8FEC();

  if (*(a1 + 96))
  {
    swift_getKeyPath();
    v6 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FEC();

    v5 = *(v1 + 40);

    sub_23FF8AA50(&v6, a1);
  }

  else
  {
    swift_getKeyPath();
    v6 = v1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary);
    sub_23FFD8FEC();

    v6 = *(v1 + 40);

    sub_23FF8AC5C(a1);
  }
}

uint64_t sub_23FF85BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppLibrary.app(forAppleItemID:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (*(v3 + 16) && (v4 = sub_23FF88FF8(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7 = type metadata accessor for AppLibrary.App();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v6 = swift_allocObject();
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0;
    v10 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
    v11 = type metadata accessor for MarketplaceKitError();
    (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
    sub_23FFD8FFC();
    *(v6 + 16) = a1;
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_23FF686CC(v14);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v14[0] = v6;
    sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
    sub_23FFD8FDC();

    sub_23FF856C4(v6);
  }

  return v6;
}

uint64_t sub_23FF85E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23FFD908C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3190, &qword_23FFDF260) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3198, &qword_23FFDF268);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A0, &unk_23FFDF270);
  v5[11] = v13;
  v14 = *(v13 - 8);
  v5[12] = v14;
  v15 = *(v14 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = sub_23FFD946C();
  v5[15] = sub_23FFD945C();
  v17 = sub_23FFD942C();
  v5[16] = v17;
  v5[17] = v16;

  return MEMORY[0x2822009F8](sub_23FF8604C, v17, v16);
}

uint64_t sub_23FF8604C()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[2];
  sub_23FF693F8();
  sub_23FFD94CC();
  (*(v3 + 8))(v2, v4);
  v6 = v0[14];
  v7 = sub_23FFD945C();
  v0[18] = v7;
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_23FF86158;
  v10 = v0[13];
  v11 = v0[11];
  v12 = v0[7];
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v12, v7, v13, v11);
}

uint64_t sub_23FF86158()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23FF8629C, v5, v4);
}

uint64_t sub_23FF8629C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[15];
    v5 = v0[10];
    v6 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[6];
    v11 = v0[2];
    v10 = v0[3];
    (*(v3 + 32))(v9, v1, v2);
    sub_23FF6973C(v9);
    AppLibrary.updateInstallState(forUpdated:)(v11);
    (*(v3 + 8))(v9, v2);
    v12 = v0[14];
    v13 = sub_23FFD945C();
    v0[18] = v13;
    v14 = *(MEMORY[0x277D85798] + 4);
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_23FF86158;
    v16 = v0[13];
    v17 = v0[11];
    v18 = v0[7];
    v19 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v18, v13, v19, v17);
  }
}

uint64_t sub_23FF86474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23FF642A8(a3, v27 - v11, &qword_27E3A2920, &qword_23FFDBCE8);
  v13 = sub_23FFD949C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23FF64248(v12, &qword_27E3A2920, &qword_23FFDBCE8);
  }

  else
  {
    sub_23FFD948C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23FFD942C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23FFD937C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AppLibrary.InstallationRequest.alternativeDistributionPackageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23FFD8F6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppLibrary.InstallationRequest.alternativeDistributionPackageURL.setter(uint64_t a1)
{
  v3 = sub_23FFD8F6C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppLibrary.InstallationRequest.account.getter()
{
  v1 = (v0 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppLibrary.InstallationRequest.account.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppLibrary.InstallationRequest.installVerificationToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppLibrary.InstallationRequest.installVerificationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AppLibrary.InstallationRequest.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AppLibrary.InstallationRequest(0) + 28);

  return sub_23FF8ADF4(a1, v3);
}

uint64_t AppLibrary.InstallationRequest.init(alternativeDistributionPackageURL:account:installVerificationToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v13 = v12[7];
  v14 = sub_23FFD8F6C();
  v15 = *(v14 - 8);
  v19 = *(v15 + 56);
  v19(a6 + v13, 1, 1, v14);
  (*(v15 + 32))(a6, a1, v14);
  v16 = (a6 + v12[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + v12[6]);
  *v17 = a4;
  v17[1] = a5;
  sub_23FF64248(a6 + v13, &qword_27E3A2418, &qword_23FFDADC0);

  return (v19)(a6 + v13, 1, 1, v14);
}

uint64_t AppLibrary.requestAppInstallation(for:account:installVerificationToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF86C78, 0, 0);
}

uint64_t sub_23FF86C78()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v16 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_23FFD8F6C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  v9 = v2[7];
  v10 = *(v8 + 56);
  v10(v1 + v9, 1, 1, v7);
  v11 = (v1 + v2[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v1 + v2[6]);
  *v12 = v16;
  v12[1] = v3;

  sub_23FF64248(v1 + v9, &qword_27E3A2418, &qword_23FFDADC0);
  v10(v1 + v9, 1, 1, v7);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_23FF86E2C;
  v14 = v0[8];

  return sub_23FF8B838(v14);
}

uint64_t sub_23FF86E2C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23FF86FC4;
  }

  else
  {
    v3 = sub_23FF86F40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF86F40()
{
  sub_23FF8BDB0(*(v0 + 64), type metadata accessor for AppLibrary.InstallationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF86FC4()
{
  sub_23FF8BDB0(v0[8], type metadata accessor for AppLibrary.InstallationRequest);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t AppLibrary.requestAppInstallation(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23FF6E6E4;

  return sub_23FF8B838(a1);
}

uint64_t AppLibrary.requestAppInstallationFromBrowser(for:referrer:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_23FFD8F6C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for LinkMetadata() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3160, &qword_23FFDEFC0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for AppInstallRequest();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8727C, 0, 0);
}

uint64_t sub_23FF8727C()
{
  v1 = v0[11];
  v18 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[2];
  v8 = *(v0[5] + 16);
  v8(v4, v0[3], v6);
  v8(v5, v7, v6);
  sub_23FF67B04(v4, v5, v3);
  sub_23FF53670(v3, v2);
  if ((*(v1 + 48))(v2, 1, v18) == 1)
  {
    sub_23FF64248(v0[9], &qword_27E3A3160, &qword_23FFDEFC0);
    type metadata accessor for MarketplaceKitError();
    sub_23FF85BE0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[12];
    v11 = v0[8];
    v10 = v0[9];
    v13 = v0[6];
    v12 = v0[7];

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_23FF8BD4C(v0[9], v0[12]);
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_23FF87524;
    v17 = v0[12];

    return sub_23FF54AC4(v17, sub_23FF53CBC, 0);
  }
}

uint64_t sub_23FF87524()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23FF876F4;
  }

  else
  {
    v3 = sub_23FF87638;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF87638()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_23FF8BDB0(v0[12], type metadata accessor for AppInstallRequest);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23FF876F4()
{
  sub_23FF8BDB0(v0[12], type metadata accessor for AppInstallRequest);
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t AppLibrary.requestAppUpdate(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23FF8C81C;

  return sub_23FF8BE10(a1);
}

uint64_t AppLibrary.requestAppUpdate(for:account:installVerificationToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF878F0, 0, 0);
}

uint64_t sub_23FF878F0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v16 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_23FFD8F6C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  v9 = v2[7];
  v10 = *(v8 + 56);
  v10(v1 + v9, 1, 1, v7);
  v11 = (v1 + v2[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v1 + v2[6]);
  *v12 = v16;
  v12[1] = v3;

  sub_23FF64248(v1 + v9, &qword_27E3A2418, &qword_23FFDADC0);
  v10(v1 + v9, 1, 1, v7);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_23FF87AA4;
  v14 = v0[8];

  return sub_23FF8BE10(v14);
}

uint64_t sub_23FF87AA4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23FF8C84C;
  }

  else
  {
    v3 = sub_23FF8C820;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t AppLibrary.didAuthenticate(account:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23FF87BD8, 0, 0);
}

uint64_t sub_23FF87BD8()
{
  v1 = v0[3];
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_23FF87CDC;
  v3 = v0[2];

  return (sub_23FF579FC)();
}

uint64_t sub_23FF87CDC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_23FF8C858;
  }

  else
  {
    v3 = sub_23FF87DF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF87E24()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_23FF87F20;

  return sub_23FF57BFC(v0 + 16, 1, sub_23FFC2C24, 0);
}

uint64_t sub_23FF87F20()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23FF8817C;
  }

  else
  {
    v3 = sub_23FF88034;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF88034()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 == 9)
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 24);
    type metadata accessor for MarketplaceKitError();
    sub_23FF85BE0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v6, v2);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_23FF8817C()
{
  v1 = *(v0 + 48);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t AppLibrary.signalAccountHasAuthenticated(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23FF88208, 0, 0);
}

uint64_t sub_23FF88208()
{
  v1 = v0[3];
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_23FF8830C;
  v3 = v0[2];

  return (sub_23FF579FC)();
}

uint64_t sub_23FF8830C()
{
  v2 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_23FF8C858, 0, 0);
}

uint64_t sub_23FF88440()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_23FF8853C;

  return sub_23FF57BFC(v0 + 16, 0, sub_23FFC2C24, 0);
}

uint64_t sub_23FF8853C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23FF88760;
  }

  else
  {
    v3 = sub_23FF88650;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF88650()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3 != 7)
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    type metadata accessor for MarketplaceKitError();
    sub_23FF85BE0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v4, v5, v3);

    v1 = 0;
    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v1, v2);
}

uint64_t sub_23FF88760()
{
  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t AppLibrary.setSearchTerritory(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for SetPublicDataRequest(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF88858, 0, 0);
}

uint64_t sub_23FF88858()
{
  v1 = v0[3];
  v2 = v0[4];
  *v2 = v0[2];
  v2[1] = v1;
  type metadata accessor for SetPublicDataRequest.Request(0);
  swift_storeEnumTagMultiPayload();
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23FF88980;
  v5 = v0[4];

  return (sub_23FF57F80)(v5, sub_23FFC73BC, 0);
}

uint64_t sub_23FF88980()
{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_23FF8C824;
  }

  else
  {
    v3 = sub_23FF88A98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF88A98()
{
  sub_23FF8BDB0(*(v0 + 32), type metadata accessor for SetPublicDataRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF88B38()
{
  v1 = *(v0 + 16);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23FF88C3C;

  return (sub_23FF579FC)();
}

uint64_t sub_23FF88C3C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_23FF88D68;
  }

  else
  {
    v3 = sub_23FF88D50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t AppLibrary.UninstallError.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

char *AppLibrary.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC15AppDistribution10AppLibrary___observationRegistrar;
  v5 = sub_23FFD900C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t AppLibrary.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC15AppDistribution10AppLibrary___observationRegistrar;
  v5 = sub_23FFD900C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

unint64_t sub_23FF88F80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23FFD9A2C();
  sub_23FFD938C();
  v6 = sub_23FFD9A7C();

  return sub_23FF8903C(a1, a2, v6);
}

unint64_t sub_23FF88FF8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23FFD9A1C();

  return sub_23FF890F4(a1, v4);
}

unint64_t sub_23FF8903C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23FFD996C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23FF890F4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_23FF89160()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
  v2 = *v0;
  v3 = sub_23FFD975C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_23FF892D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A8, &unk_23FFDF320);
  v2 = *v0;
  v3 = sub_23FFD975C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_23FF89434(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
  v40 = a2;
  result = sub_23FFD976C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_23FFD9A2C();
      sub_23FFD938C();
      result = sub_23FFD9A7C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23FF896F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A8, &unk_23FFDF320);
  result = sub_23FFD976C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_23FFD9A1C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23FF89964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
    v2 = sub_23FFD96AC();
    v16 = v2;
    sub_23FFD962C();
    if (sub_23FFD966C())
    {
      type metadata accessor for AppLibrary.App();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_23FF89D44(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_23FFD9A2C();
        MEMORY[0x245CB4210](*(v15 + 16));
        result = sub_23FFD9A7C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_23FFD966C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23FF89B64(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_23FFD9A1C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = 1;
    while (1)
    {
      v12 = *(*(v5 + 48) + 8 * v9);
      v13 = v12 != a1;
      if (v12 == a1)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
  }

  else
  {
    v13 = 1;
    v11 = 1;
  }

LABEL_8:
  v14 = *(v5 + 16);
  v15 = v14 + v11;
  if (__OFADD__(v14, v11))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = *(v5 + 24);
  if (v16 >= v15 && (a2 & 1) != 0)
  {
    if (!v13)
    {
LABEL_27:
      v27 = *(*v2 + 48);
      result = *(v27 + 8 * v9);
      *(v27 + 8 * v9) = a1;
      return result;
    }

    goto LABEL_24;
  }

  if (a2)
  {
    sub_23FF89F94(v15);
  }

  else
  {
    if (v16 >= v15)
    {
      sub_23FF8A3AC();
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    sub_23FF8A714(v15);
  }

  v17 = *v2;
  v18 = *(*v2 + 40);
  v19 = sub_23FFD9A1C();
  v20 = -1 << *(v17 + 32);
  v9 = v19 & ~v20;
  if (((*(v17 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_23:
    if (!v13)
    {
      goto LABEL_30;
    }

LABEL_24:
    v22 = *v2;
    *(*v2 + 8 * (v9 >> 6) + 56) |= 1 << v9;
    *(*(v22 + 48) + 8 * v9) = a1;
    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      result = 0;
      *(v22 + 16) = v25;
      return result;
    }

    goto LABEL_29;
  }

  v21 = ~v20;
  while (*(*(v17 + 48) + 8 * v9) != a1)
  {
    v9 = (v9 + 1) & v21;
    if (((*(v17 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_30:
  result = sub_23FFD99AC();
  __break(1u);
  return result;
}

uint64_t sub_23FF89D44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
  result = sub_23FFD969C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v18 + 16));
      result = sub_23FFD9A7C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23FF89F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B8, &unk_23FFDF290);
  result = sub_23FFD969C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_23FFD9A1C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_23FF8A1B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(a1 + 16));
  sub_23FFD9A7C();
  v5 = -1 << *(a2 + 32);
  result = sub_23FFD961C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_23FF8A25C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
  v2 = *v0;
  v3 = sub_23FFD968C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_23FF8A3AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B8, &unk_23FFDF290);
  v2 = *v0;
  v3 = sub_23FFD968C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_23FF8A4EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
  result = sub_23FFD969C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v17 + 16));
      result = sub_23FFD9A7C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_23FF8A714(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B8, &unk_23FFDF290);
  result = sub_23FFD969C();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_23FFD9A1C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_23FF8A904(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23FF88FF8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23FF896F4(v14, a3 & 1);
      v18 = *v4;
      result = sub_23FF88FF8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_23FFD99BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23FF892D8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_23FF8AA50(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_23FFD964C();

    if (v8)
    {

      type metadata accessor for AppLibrary.App();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_23FFD963C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_23FF89964(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_23FF89D44(v19 + 1);
    }

    sub_23FF8A1B8(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(a2 + 16));
  v11 = sub_23FFD9A7C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_23FF8B118(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(*(v6 + 48) + 8 * v13) + 16) != *(a2 + 16))
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

unint64_t sub_23FF8AC5C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = sub_23FFD967C();

    if (v6)
    {
      v7 = sub_23FF8AE64(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  sub_23FFD9A2C();
  v10 = *(a1 + 16);
  MEMORY[0x245CB4210](v10);
  v11 = sub_23FFD9A7C();
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (*(*(*(v3 + 48) + 8 * v13) + 16) != v10)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v19 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23FF8A25C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v13);
  sub_23FF8AF70(v13);
  result = v18;
  *v1 = v19;
  return result;
}

uint64_t sub_23FF8ADF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23FF8AE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;

  v6 = sub_23FFD963C();
  v7 = swift_unknownObjectRetain();
  v8 = sub_23FF89964(v7, v6);
  v18 = v8;
  v9 = *(v8 + 40);
  sub_23FFD9A2C();
  v10 = *(a2 + 16);
  MEMORY[0x245CB4210](v10);
  v11 = sub_23FFD9A7C();
  v12 = v8 + 56;
  v13 = -1 << *(v8 + 32);
  v14 = v11 & ~v13;
  if ((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v8 + 48);
    while (1)
    {
      v8 = *(v16 + 8 * v14);
      if (*(v8 + 16) == v10)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  result = sub_23FF8AF70(v14);
  if (v10 == *(v8 + 16))
  {
    *v3 = v18;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23FF8AF70(unint64_t result)
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

    v9 = sub_23FFD960C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_23FFD9A2C();
        MEMORY[0x245CB4210](*(v12 + 16));
        v13 = sub_23FFD9A7C() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23FF8B118(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23FF89D44(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23FF8A25C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23FF8A4EC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v4 + 16));
  result = sub_23FFD9A7C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for AppLibrary.App();
    a2 = v12;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23FFD99AC();
  __break(1u);
  return result;
}

uint64_t sub_23FF8B27C(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v3 = a1;
    }

    if (v2)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v3;

      return MEMORY[0x2821FCF40](a1, a2);
    }

    goto LABEL_15;
  }

  if (v2)
  {
    v3 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v3 = a2;
    }

    a2 = a1;
LABEL_15:

    return sub_23FF8B4A0(v3, a2);
  }

  if (a1 != a2)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    v5 = 0;
    v6 = a1 + 56;
    v7 = 1 << *(a1 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a1 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a2 + 56;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_31:
      v15 = a1;
      v16 = *(*(a1 + 48) + 8 * (v12 | (v5 << 6)));
      v17 = *(a2 + 40);
      v18 = a2;
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v16 + 16));
      v19 = sub_23FFD9A7C();
      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return 0;
      }

      a2 = v18;
      v22 = ~v20;
      a1 = v15;
      while (*(*(*(v18 + 48) + 8 * v21) + 16) != *(v16 + 16))
      {
        v21 = (v21 + 1) & v22;
        if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        return 1;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_31;
      }
    }

    __break(1u);
    return MEMORY[0x2821FCF40](a1, a2);
  }

  return 1;
}

uint64_t sub_23FF8B4A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_23FFD963C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_23FFD967C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23FF8B5A4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23FFD963C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31B0, &unk_23FFDF280);
      result = sub_23FFD96BC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_23FFD963C();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x245CB3EA0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v9 + 16));
      result = sub_23FFD9A7C();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v6 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      v16 = *(v3 + 48);
      if (((1 << v12) & v14) != 0)
      {
        v17 = ~v11;
        while (*(*(v16 + 8 * v12) + 16) != *(v9 + 16))
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = *(v6 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v9;
        v18 = *(v3 + 16);
        v8 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v19;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = v1 + 32;
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20 != v22)
    {
      v25 = *(v21 + 8 * v20);
      v26 = *(v3 + 40);
      sub_23FFD9A2C();
      MEMORY[0x245CB4210](*(v25 + 16));
      result = sub_23FFD9A7C();
      v27 = -1 << *(v3 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      v32 = *(v3 + 48);
      if (((1 << v28) & v30) != 0)
      {
        v33 = ~v27;
        while (*(*(v32 + 8 * v28) + 16) != *(v25 + 16))
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *(v6 + 8 * v29) = v31 | v30;
        *(v32 + 8 * v28) = v25;
        v23 = *(v3 + 16);
        v8 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v24;
      }

      if (++v20 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_23FF8B838(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AppInstallRequest();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8B8CC, 0, 0);
}

uint64_t sub_23FF8B8CC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2[5];
  v5 = sub_23FFD8F6C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, v3, v5);
  v7 = v2[9];
  v8 = *MEMORY[0x277CD4968];
  v9 = sub_23FFD906C();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v11 = *(v10 + 20);
  v12 = (v3 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v16 = *(v3 + v11);
  v15 = *(v3 + v11 + 8);

  sub_23FFD8FBC();
  v17 = (v1 + v2[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + v2[7]);
  *v18 = v14;
  v18[1] = v13;
  v19 = (v1 + v2[8]);
  *v19 = v16;
  v19[1] = v15;
  *(v1 + v2[10]) = 0;
  v20 = *(v6 + 56);
  v20(v1 + v2[11], 1, 1, v5);
  v20(v1 + v2[12], 1, 1, v5);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[5] = v21;
  *v21 = v0;
  v21[1] = sub_23FF8BB30;
  v22 = v0[4];

  return sub_23FF54AC4(v22, sub_23FF53CBC, 0);
}

uint64_t sub_23FF8BB30()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23FF8BCC8;
  }

  else
  {
    v3 = sub_23FF8BC44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF8BC44()
{
  sub_23FF8BDB0(*(v0 + 32), type metadata accessor for AppInstallRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF8BCC8()
{
  sub_23FF8BDB0(v0[4], type metadata accessor for AppInstallRequest);

  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t sub_23FF8BD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF8BDB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23FF8BE10(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AppInstallRequest();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8BEA4, 0, 0);
}

uint64_t sub_23FF8BEA4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2[5];
  v5 = sub_23FFD8F6C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, v3, v5);
  v7 = v2[9];
  v8 = *MEMORY[0x277CD4970];
  v9 = sub_23FFD906C();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = type metadata accessor for AppLibrary.InstallationRequest(0);
  v11 = *(v10 + 20);
  v12 = (v3 + *(v10 + 24));
  v14 = *v12;
  v13 = v12[1];
  v16 = *(v3 + v11);
  v15 = *(v3 + v11 + 8);

  sub_23FFD8FBC();
  v17 = (v1 + v2[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + v2[7]);
  *v18 = v14;
  v18[1] = v13;
  v19 = (v1 + v2[8]);
  *v19 = v16;
  v19[1] = v15;
  *(v1 + v2[10]) = 0;
  v20 = *(v6 + 56);
  v20(v1 + v2[11], 1, 1, v5);
  v20(v1 + v2[12], 1, 1, v5);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[5] = v21;
  *v21 = v0;
  v21[1] = sub_23FF8C108;
  v22 = v0[4];

  return sub_23FF54AC4(v22, sub_23FF53CBC, 0);
}

uint64_t sub_23FF8C108()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23FF8C850;
  }

  else
  {
    v3 = sub_23FF8C828;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_23FF8C220()
{
  result = qword_27E3A3168;
  if (!qword_27E3A3168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3168);
  }

  return result;
}

uint64_t sub_23FF8C27C()
{
  result = sub_23FFD900C();
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

void sub_23FF8C378()
{
  sub_23FFD8F6C();
  if (v0 <= 0x3F)
  {
    sub_23FF59878();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution0A7LibraryC12InstallErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23FF8C424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23FF8C47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_23FF8C4CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_23FF8C50C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23FF6E6E4;

  return sub_23FF85E4C(a1, v4, v5, v7, v6);
}

uint64_t sub_23FF8C5CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23FF8C81C;

  return sub_23FF91DD4(a1, v5);
}

uint64_t sub_23FF8C684(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23FF6E6E4;

  return sub_23FF91DD4(a1, v5);
}

uint64_t sub_23FF8C75C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_23FF8C798()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF8C894()
{
  sub_23FFD911C();
  v0 = sub_23FFD910C();
  type metadata accessor for ServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27E3C0850 = result;
  return result;
}

uint64_t sub_23FF8C8E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23FF8C978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OAuthAuthorizationRequest.run()()
{
  v1[4] = v0;
  v2 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(type metadata accessor for OAuthAuthorizationRequest() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_23FFD929C();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF8CAF4, 0, 0);
}

uint64_t sub_23FF8CAF4()
{
  v21 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];
  sub_23FFD924C();
  sub_23FF8D020(v3, v2, type metadata accessor for OAuthAuthorizationRequest);
  v4 = sub_23FFD927C();
  v5 = sub_23FFD956C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  if (v6)
  {
    v19 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = *v10;
    v14 = v10[1];

    sub_23FF8D088(v10, type metadata accessor for OAuthAuthorizationRequest);
    v15 = sub_23FF8D0E8(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23FF4C000, v4, v5, "[%s] Requesting OAuth Authorization using Launch Angel...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CB48E0](v12, -1, -1);
    MEMORY[0x245CB48E0](v11, -1, -1);

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    sub_23FF8D088(v10, type metadata accessor for OAuthAuthorizationRequest);
    (*(v7 + 8))(v8, v9);
  }

  sub_23FF8D020(v0[4], v0[5], type metadata accessor for OAuthAuthorizationContext);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_23FF8CD54;
  v17 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v17);
}

uint64_t sub_23FF8CD54()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_23FF8CF34;
  }

  else
  {
    v3 = sub_23FF8CE68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF8CE68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 != 1)
  {
    sub_23FF7983C(*(v0 + 16), v2);
    v1 = sub_23FF8D798(MEMORY[0x277D84F90]);
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  sub_23FF8D088(*(v0 + 40), type metadata accessor for LaunchAngelXPCRequest);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_23FF8CF34()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_23FF8D088(v0[5], type metadata accessor for LaunchAngelXPCRequest);

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t type metadata accessor for OAuthAuthorizationRequest()
{
  result = qword_27E3A31C0;
  if (!qword_27E3A31C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FF8D020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FF8D088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23FF8D0E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23FF8D1B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23FF63004(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23FF8D1B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23FF8D2C0(a5, a6);
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
    result = sub_23FFD971C();
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

uint64_t sub_23FF8D2C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_23FF8D30C(a1, a2);
  sub_23FF8D43C(&unk_2851F2210);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23FF8D30C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23FF8D528(v5, 0);
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

  result = sub_23FFD971C();
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
        v10 = sub_23FFD93AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23FF8D528(v10, 0);
        result = sub_23FFD96CC();
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

uint64_t sub_23FF8D43C(uint64_t result)
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

  result = sub_23FF8D59C(result, v12, 1, v3);
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

void *sub_23FF8D528(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31E0, &unk_23FFDF310);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23FF8D59C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31E0, &unk_23FFDF310);
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

void *sub_23FF8D690(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31A8, &unk_23FFDF320);
  v3 = sub_23FFD977C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_23FF88FF8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23FF88FF8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23FF8D798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
    v3 = sub_23FFD977C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23FF88F80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23FF8D8D4()
{
  result = type metadata accessor for OAuthAuthorizationContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23FF8D940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31D0, &qword_23FFDF300);
    v3 = sub_23FFD977C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23FF8DA50(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_23FF88F80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23FF8DAC0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23FF8DA50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31D8, &qword_23FFDF308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23FF8DAC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t InstallRequirements.minimumSystemVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InstallRequirements.minimumSystemVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InstallRequirements.requiredDeviceCapabilities.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t InstallRequirements.ageRatingRank.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t InstallRequirements.ageRatingRank.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t InstallRequirements.expectedInstallSize.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t InstallRequirements.expectedInstallSize.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

double InstallRequirements.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

Swift::Bool __swiftcall InstallRequirements.satisfiedByDevice()()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  if (!(*(&v4[0] + 1) | v1) && (v5 & 1) != 0 && (v6 & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v2 = sub_23FF78D9C(v4, sub_23FF8DD18, 0);
  }

  return v2 & 1;
}

void sub_23FF8DD18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [a1 checkDeviceCabilityForADPInstallation:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FF8DDF4()
{
  v1 = 0x6E69746152656761;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23FF8DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF8E738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF8DEA4(uint64_t a1)
{
  v2 = sub_23FF8E160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF8DEE0(uint64_t a1)
{
  v2 = sub_23FF8E160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallRequirements.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31E8, &qword_23FFDF330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16 = v1[3];
  v17 = v10;
  v20 = *(v1 + 32);
  v15 = v1[5];
  v14[1] = *(v1 + 48);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8E160();
  sub_23FFD9ACC();
  v24 = 0;
  v12 = v18;
  sub_23FFD989C();
  if (!v12)
  {
    v19 = v17;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31F8, &qword_23FFDF338);
    sub_23FF8E498(&qword_27E3A3200);
    sub_23FFD98CC();
    v22 = 2;
    sub_23FFD98BC();
    v21 = 3;
    sub_23FFD98DC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FF8E160()
{
  result = qword_27E3A31F0;
  if (!qword_27E3A31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A31F0);
  }

  return result;
}

uint64_t InstallRequirements.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3208, &qword_23FFDF340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8E160();
  sub_23FFD9AAC();
  if (!v2)
  {
    v31 = 0;
    v11 = sub_23FFD97BC();
    v14 = v13;
    v25 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A31F8, &qword_23FFDF338);
    v30 = 1;
    sub_23FF8E498(&qword_27E3A3210);
    sub_23FFD97EC();
    v15 = v26;
    v29 = 2;
    v16 = sub_23FFD97DC();
    v27 = v17;
    v24 = v16;
    v28 = 3;
    v18 = sub_23FFD97FC();
    v19 = v9;
    v21 = v20;
    (*(v6 + 8))(v19, v5);
    v22 = v24;
    *a2 = v25;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v22;
    *(a2 + 32) = v27 & 1;
    *(a2 + 40) = v18;
    *(a2 + 48) = v21 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF8E498(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A31F8, &qword_23FFDF338);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23FF8E550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23FF8E5AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23FF8E634()
{
  result = qword_27E3A3218;
  if (!qword_27E3A3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3218);
  }

  return result;
}

unint64_t sub_23FF8E68C()
{
  result = qword_27E3A3220;
  if (!qword_27E3A3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3220);
  }

  return result;
}

unint64_t sub_23FF8E6E4()
{
  result = qword_27E3A3228;
  if (!qword_27E3A3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3228);
  }

  return result;
}

uint64_t sub_23FF8E738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000023FFEB4B0 == a2;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000023FFEB4D0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xED00006B6E615267 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB4F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ApprovedDeveloper.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ApprovedDeveloper.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ApprovedDeveloper.supportURL.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall ApprovedDeveloper.init(name:identifier:supportURL:)(AppDistribution::ApprovedDeveloper *__return_ptr retstr, Swift::String name, Swift::String identifier, Swift::String_optional supportURL)
{
  retstr->field23FFF3458 = name;
  retstr->field23FFF3464 = identifier;
  retstr->field23FFF3470 = supportURL;
}

uint64_t sub_23FF8E968()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x5574726F70707573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23FF8E9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF8F9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF8E9EC(uint64_t a1)
{
  v2 = sub_23FF8F6FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF8EA28(uint64_t a1)
{
  v2 = sub_23FF8F6FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApprovedDeveloper.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3230, &qword_23FFDF500);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8F6FC();
  sub_23FFD9ACC();
  v18 = 0;
  v13 = v15[5];
  sub_23FFD98EC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_23FFD98EC();
  v16 = 2;
  sub_23FFD989C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ApprovedDeveloper.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23FFD938C();
  sub_23FFD938C();
  if (!v6)
  {
    return sub_23FFD9A4C();
  }

  sub_23FFD9A4C();

  return sub_23FFD938C();
}

uint64_t ApprovedDeveloper.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23FFD9A2C();
  sub_23FFD938C();
  sub_23FFD938C();
  sub_23FFD9A4C();
  if (v6)
  {
    sub_23FFD938C();
  }

  return sub_23FFD9A7C();
}

uint64_t ApprovedDeveloper.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3240, &qword_23FFDF508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF8F6FC();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_23FFD980C();
  v23 = v14;
  v25 = 2;
  v15 = sub_23FFD97BC();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF8F018()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23FFD9A2C();
  sub_23FFD938C();
  sub_23FFD938C();
  sub_23FFD9A4C();
  if (v6)
  {
    sub_23FFD938C();
  }

  return sub_23FFD9A7C();
}

uint64_t sub_23FF8F0C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23FFD938C();
  sub_23FFD938C();
  if (!v6)
  {
    return sub_23FFD9A4C();
  }

  sub_23FFD9A4C();

  return sub_23FFD938C();
}

uint64_t sub_23FF8F15C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23FFD9A2C();
  sub_23FFD938C();
  sub_23FFD938C();
  sub_23FFD9A4C();
  if (v6)
  {
    sub_23FFD938C();
  }

  return sub_23FFD9A7C();
}

uint64_t static AppDistributor.allApprovedDevelopers()()
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = 0x2000000000000000;
  v10 = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(v7, sub_23FFBF448, 0, &v5);
  result = v5;
  v1 = v6;
  if (v6)
  {
    v2 = *(&v5 + 1);
    v3 = v5;
    type metadata accessor for MarketplaceKitError();
    sub_23FF8F750();
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v3, v2, v1);

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t static AppDistributor.revokeDeveloperApproval(_:removeInstalledApps:)(uint64_t a1, uint64_t a2, char a3)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = a3 & 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 3;
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_23FF788A8(&v5, sub_23FF8F3E0, 0);
}

void sub_23FF8F3E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_8;
  v9 = _Block_copy(v10);

  [a1 setPrivateDataRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t static AppDistributor.isDeveloperApproved(_:)(uint64_t a1, uint64_t a2)
{
  *&v10[0] = a1;
  *(&v10[0] + 1) = a2;
  memset(&v10[1], 0, 32);
  v11 = 0;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(v10, sub_23FFBF448, 0, &v8);
  v4 = *(&v8 + 1);
  v3 = v8;
  v5 = v9;
  if (v9 == 1)
  {
    sub_23FF795B0(v8, *(&v8 + 1), 1u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_23FF8F750();
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v3, v4, v5);

    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t _s15AppDistribution17ApprovedDeveloperV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_23FFD996C()) && (v2 == v6 && v4 == v7 || (sub_23FFD996C()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_23FFD996C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_23FF8F6FC()
{
  result = qword_27E3A3238;
  if (!qword_27E3A3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3238);
  }

  return result;
}

unint64_t sub_23FF8F750()
{
  result = qword_27E3A24C0;
  if (!qword_27E3A24C0)
  {
    type metadata accessor for MarketplaceKitError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A24C0);
  }

  return result;
}

unint64_t sub_23FF8F7AC()
{
  result = qword_27E3A3248;
  if (!qword_27E3A3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3248);
  }

  return result;
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

uint64_t sub_23FF8F814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23FF8F85C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23FF8F8CC()
{
  result = qword_27E3A3250;
  if (!qword_27E3A3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3250);
  }

  return result;
}

unint64_t sub_23FF8F924()
{
  result = qword_27E3A3258;
  if (!qword_27E3A3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3258);
  }

  return result;
}

unint64_t sub_23FF8F97C()
{
  result = qword_27E3A3260;
  if (!qword_27E3A3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3260);
  }

  return result;
}

uint64_t sub_23FF8F9D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5574726F70707573 && a2 == 0xEA00000000004C52)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AppLibrary.ExceptionRequest.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.distributorID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLibrary.ExceptionRequest() + 40);
  v4 = sub_23FFD8FAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppLibrary.ExceptionRequest()
{
  result = qword_27E3A32B8;
  if (!qword_27E3A32B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(id:appleItemID:bundleIdentifier:distributorID:status:exceptedRatingValue:timestamp:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a8;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *a9 = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 8) = v13;
  *(a9 + 64) = a10;
  v14 = type metadata accessor for AppLibrary.ExceptionRequest();
  v15 = *(v14 + 40);
  v16 = sub_23FFD8FAC();
  (*(*(v16 - 8) + 32))(a9 + v15, a11, v16);
  v17 = a9 + *(v14 + 44);

  return sub_23FF8FD8C(a12, v17);
}

uint64_t sub_23FF8FD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExceptionRequestMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t AppLibrary.ExceptionRequest.Status.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23FF8FED0()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x7562697274736964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23FF8FFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF90F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF90014(uint64_t a1)
{
  v2 = sub_23FF9039C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF90050(uint64_t a1)
{
  v2 = sub_23FF9039C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppLibrary.ExceptionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3268, &qword_23FFDF740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9039C();
  sub_23FFD9ACC();
  v11 = *v3;
  v23[15] = 0;
  sub_23FFD993C();
  if (!v2)
  {
    v23[14] = *(v3 + 8);
    v23[13] = 1;
    sub_23FF903F0();
    sub_23FFD991C();
    v12 = v3[2];
    v13 = v3[3];
    v23[12] = 2;
    sub_23FFD98EC();
    v14 = v3[4];
    v15 = v3[5];
    v23[11] = 3;
    sub_23FFD989C();
    v16 = v3[6];
    v17 = v3[7];
    v23[10] = 4;
    sub_23FFD989C();
    v18 = v3[8];
    v23[9] = 5;
    sub_23FFD990C();
    v19 = type metadata accessor for AppLibrary.ExceptionRequest();
    v20 = *(v19 + 40);
    v23[8] = 6;
    sub_23FFD8FAC();
    sub_23FF90A50(&qword_27E3A3280, MEMORY[0x277CC9578]);
    sub_23FFD991C();
    v21 = *(v19 + 44);
    v23[7] = 7;
    type metadata accessor for ExceptionRequestMetadata();
    sub_23FF90A50(&qword_27E3A3288, type metadata accessor for ExceptionRequestMetadata);
    sub_23FFD991C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23FF9039C()
{
  result = qword_27E3A3270;
  if (!qword_27E3A3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3270);
  }

  return result;
}

unint64_t sub_23FF903F0()
{
  result = qword_27E3A3278;
  if (!qword_27E3A3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3278);
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = type metadata accessor for ExceptionRequestMetadata();
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23FFD8FAC();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3290, &qword_23FFDF748);
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AppLibrary.ExceptionRequest();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23FF9039C();
  v18 = v48;
  sub_23FFD9AAC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v19 = v8;
  v48 = v12;
  v20 = v45;
  v21 = v46;
  v58 = 0;
  v22 = v47;
  *v15 = sub_23FFD985C();
  v56 = 1;
  sub_23FF909FC();
  sub_23FFD983C();
  v15[8] = v57;
  v55 = 2;
  *(v15 + 2) = sub_23FFD980C();
  *(v15 + 3) = v24;
  v54 = 3;
  *(v15 + 4) = sub_23FFD97BC();
  *(v15 + 5) = v25;
  v53 = 4;
  *(v15 + 6) = sub_23FFD97BC();
  *(v15 + 7) = v26;
  v52 = 5;
  v27 = sub_23FFD982C();
  v41 = 0;
  v40 = 0;
  *(v15 + 8) = v27;
  v51 = 6;
  sub_23FF90A50(&qword_27E3A32A0, MEMORY[0x277CC9578]);
  v28 = v41;
  sub_23FFD983C();
  v41 = v28;
  if (v28)
  {
    (*(v20 + 8))(v11, v22);
    v29 = v40;
    __swift_destroy_boxed_opaque_existential_1(v49);
    v30 = *(v15 + 3);

    if (!v29)
    {
      v32 = *(v15 + 5);
    }

    v31 = *(v15 + 7);
  }

  else
  {
    v33 = v48;
    (*(v21 + 32))(&v15[*(v48 + 40)], v19, v5);
    v50 = 7;
    sub_23FF90A50(&qword_27E3A32A8, type metadata accessor for ExceptionRequestMetadata);
    v34 = v44;
    v35 = v41;
    sub_23FFD983C();
    (*(v20 + 8))(v11, v22);
    if (v35)
    {
      __swift_destroy_boxed_opaque_existential_1(v49);
      v36 = *(v15 + 3);

      v37 = *(v15 + 5);

      v38 = *(v15 + 7);

      return (*(v21 + 8))(&v15[*(v33 + 40)], v5);
    }

    else
    {
      sub_23FF8FD8C(v34, &v15[*(v33 + 44)]);
      sub_23FF90A98(v15, v42, type metadata accessor for AppLibrary.ExceptionRequest);
      __swift_destroy_boxed_opaque_existential_1(v49);
      return sub_23FF90B00(v15);
    }
  }
}

unint64_t sub_23FF909FC()
{
  result = qword_27E3A3298;
  if (!qword_27E3A3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3298);
  }

  return result;
}

uint64_t sub_23FF90A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23FF90A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FF90B00(uint64_t a1)
{
  v2 = type metadata accessor for AppLibrary.ExceptionRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23FF90B60()
{
  result = qword_27E3A32B0;
  if (!qword_27E3A32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A32B0);
  }

  return result;
}

void sub_23FF90C0C()
{
  sub_23FF59828();
  if (v0 <= 0x3F)
  {
    sub_23FFD8FAC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ExceptionRequestMetadata();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s16ExceptionRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16ExceptionRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FF90E44()
{
  result = qword_27E3A32C8;
  if (!qword_27E3A32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A32C8);
  }

  return result;
}

unint64_t sub_23FF90E9C()
{
  result = qword_27E3A32D0;
  if (!qword_27E3A32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A32D0);
  }

  return result;
}

unint64_t sub_23FF90EF4()
{
  result = qword_27E3A32D8;
  if (!qword_27E3A32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A32D8);
  }

  return result;
}

uint64_t sub_23FF90F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB510 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_23FF911F0()
{
  result = qword_27E3A32E0;
  if (!qword_27E3A32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A32E0);
  }

  return result;
}

uint64_t sub_23FF91244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23FF91CFC(a3, v27 - v11);
  v13 = sub_23FFD949C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23FF91D6C(v12);
  }

  else
  {
    sub_23FFD948C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23FFD942C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23FFD937C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23FF91D6C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23FF91D6C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static LicenseRepair.requestLicenseRepair(_:status:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_23FFD949C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;

  sub_23FF91244(0, 0, v9, &unk_23FFDFA08, v11);
}

uint64_t sub_23FF91624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_23FFD929C();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF916E8, 0, 0);
}

uint64_t sub_23FF916E8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_23FF91800;
  v5 = *(v0 + 48);

  return sub_23FF581E4(sub_23FF581E4, v5, v2, v1, 0, sub_23FF93148, 0);
}

uint64_t sub_23FF91800()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_23FF9197C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_23FF9191C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23FF9191C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23FF9197C()
{
  v30 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  sub_23FFD923C();

  v4 = v1;
  v5 = sub_23FFD927C();
  v6 = sub_23FFD955C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v28 = *(v0 + 80);
    v9 = *(v0 + 56);
    v26 = v7;
    v27 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_23FF8D0E8(v10, v9, &v29);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v14 = *(*(v0 + 24) - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = sub_23FFD936C();
    v18 = v17;

    v19 = sub_23FF8D0E8(v16, v18, &v29);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_23FF4C000, v5, v6, "Error requesting license repair for app at path: %{public}s, %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CB48E0](v12, -1, -1);
    MEMORY[0x245CB48E0](v11, -1, -1);

    (*(v8 + 8))(v28, v27);
  }

  else
  {
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 64);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 80);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23FF91C24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23FF6E6E4;

  return sub_23FF91624(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23FF91CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF91D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23FF91DD4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23FF91ECC;

  return v7(a1);
}

uint64_t sub_23FF91ECC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 PerformPrivateActionRequest.init(request:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t PerformPrivateActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 56) = *(v1 + 24);
  return MEMORY[0x2822009F8](sub_23FF92018, 0, 0);
}

uint64_t sub_23FF92018()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_23FF718C8;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 56);

  return sub_23FF581E4(v4, v5, v2, v3, v6, sub_23FF93148, 0);
}

uint64_t sub_23FF92118()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x63694C77656E6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x694C726961706572;
  }
}

uint64_t sub_23FF92190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF95440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF921B8(uint64_t a1)
{
  v2 = sub_23FF93224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF921F4(uint64_t a1)
{
  v2 = sub_23FF93224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF92230(uint64_t a1)
{
  v2 = sub_23FF93278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9226C(uint64_t a1)
{
  v2 = sub_23FF93278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF922A8(uint64_t a1)
{
  v2 = sub_23FF932CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF922E4(uint64_t a1)
{
  v2 = sub_23FF932CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF92320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF923EC(uint64_t a1)
{
  v2 = sub_23FF93320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF92428(uint64_t a1)
{
  v2 = sub_23FF93320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionRequest.Request.encode(to:)(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A32E8, &qword_23FFDFA38);
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v30 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A32F0, &qword_23FFDFA40);
  v31 = *(v33 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A32F8, &qword_23FFDFA48);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3300, &unk_23FFDFA50);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = *v1;
  v35 = v1[1];
  v36 = v16;
  v28 = v1[2];
  v17 = *(v1 + 24);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF93224();
  sub_23FFD9ACC();
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v40) = 1;
      sub_23FF932CC();
      v19 = v39;
      sub_23FFD988C();
      LOBYTE(v40) = 0;
      v20 = v33;
      v21 = v37;
      sub_23FFD98EC();
      if (!v21)
      {
        LOBYTE(v40) = 1;
        sub_23FFD98FC();
        LOBYTE(v40) = 2;
        sub_23FFD992C();
      }

      (*(v31 + 8))(v7, v20);
    }

    else
    {
      LOBYTE(v40) = 2;
      sub_23FF93278();
      v25 = v30;
      v19 = v39;
      sub_23FFD988C();
      v40 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
      sub_23FF79774(&qword_27E3A2C20);
      v26 = v34;
      sub_23FFD991C();
      (*(v32 + 8))(v25, v26);
    }

    return (*(v38 + 8))(v15, v19);
  }

  else
  {
    v22 = v29;
    LOBYTE(v40) = 0;
    sub_23FF93320();
    v23 = v39;
    sub_23FFD988C();
    LOBYTE(v40) = 0;
    v24 = v37;
    sub_23FFD98EC();
    if (!v24)
    {
      LOBYTE(v40) = 1;
      sub_23FFD992C();
    }

    (*(v22 + 8))(v11, v8);
    return (*(v38 + 8))(v15, v23);
  }
}

uint64_t PerformPrivateActionRequest.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3328, &qword_23FFDFA60);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v50[-v6];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3330, &qword_23FFDFA68);
  v56 = *(v52 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v52);
  v9 = &v50[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3338, &qword_23FFDFA70);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3340, &qword_23FFDFA78);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50[-v17];
  v19 = a1[3];
  v20 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_23FF93224();
  v21 = v59;
  sub_23FFD9AAC();
  if (!v21)
  {
    v22 = v58;
    v59 = v15;
    v23 = sub_23FFD986C();
    v24 = (2 * *(v23 + 16)) | 1;
    v61 = v23;
    v62 = v23 + 32;
    v63 = 0;
    v64 = v24;
    v25 = sub_23FF7522C();
    if (v25 == 3 || v63 != v64 >> 1)
    {
      v32 = sub_23FFD970C();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
      *v34 = &type metadata for PerformPrivateActionRequest.Request;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v59 + 8))(v18, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = v25;
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v65) = 1;
          sub_23FF932CC();
          v26 = v9;
          sub_23FFD979C();
          LOBYTE(v65) = 0;
          v27 = v52;
          v28 = sub_23FFD980C();
          v30 = v29;
          v58 = v28;
          LOBYTE(v65) = 1;
          v31 = sub_23FFD981C();
          LOBYTE(v65) = 2;
          v46 = sub_23FFD984C();
          (*(v56 + 8))(v26, v27);
          (*(v59 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v47 = v31 & 1 | (v46 << 32);
          v48 = v57;
          v49 = v58;
        }

        else
        {
          LOBYTE(v65) = 2;
          sub_23FF93278();
          sub_23FFD979C();
          v48 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
          sub_23FF79774(&qword_27E3A2C30);
          v41 = v54;
          sub_23FFD983C();
          v42 = v59;
          (*(v55 + 8))(v22, v41);
          (*(v42 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v30 = 0;
          v47 = 0;
          v49 = v65;
        }
      }

      else
      {
        LOBYTE(v65) = 0;
        sub_23FF93320();
        v37 = v13;
        sub_23FFD979C();
        v58 = v14;
        LOBYTE(v65) = 0;
        v38 = v10;
        v39 = sub_23FFD980C();
        v40 = v59;
        v44 = v43;
        v49 = v39;
        LOBYTE(v65) = 1;
        v45 = sub_23FFD984C();
        (*(v53 + 8))(v37, v38);
        (*(v40 + 8))(v18, v58);
        swift_unknownObjectRelease();
        v47 = v45;
        v48 = v57;
        v30 = v44;
      }

      *v48 = v49;
      *(v48 + 8) = v30;
      *(v48 + 16) = v47;
      *(v48 + 24) = v51;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t PerformPrivateActionRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_23FF93374(v2, v3, v4, v5);
}

void sub_23FF93148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_9;
  v9 = _Block_copy(v10);

  [a1 performPrivateActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FF93224()
{
  result = qword_27E3A3308;
  if (!qword_27E3A3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3308);
  }

  return result;
}

unint64_t sub_23FF93278()
{
  result = qword_27E3A3310;
  if (!qword_27E3A3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3310);
  }

  return result;
}

unint64_t sub_23FF932CC()
{
  result = qword_27E3A3318;
  if (!qword_27E3A3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3318);
  }

  return result;
}

unint64_t sub_23FF93320()
{
  result = qword_27E3A3320;
  if (!qword_27E3A3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3320);
  }

  return result;
}

uint64_t sub_23FF93374(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

unint64_t PerformPrivateActionRequest.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (!*(v0 + 24))
  {
    sub_23FFD96DC();

    v24 = 0xD000000000000020;
    MEMORY[0x245CB3B50](v1, v2);
    MEMORY[0x245CB3B50](10272, 0xE200000000000000);
LABEL_11:
    v6 = sub_23FFD995C();
    MEMORY[0x245CB3B50](v6);

    MEMORY[0x245CB3B50](41, 0xE100000000000000);
    return v24;
  }

  if (*(v0 + 24) == 1)
  {
    v24 = 0;
    sub_23FFD96DC();
    MEMORY[0x245CB3B50](0xD00000000000001DLL, 0x800000023FFEB570);
    MEMORY[0x245CB3B50](v1, v2);
    MEMORY[0x245CB3B50](0xD000000000000013, 0x800000023FFEB590);
    if (v3)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x245CB3B50](v4, v5);

    MEMORY[0x245CB3B50](0x737574617473202CLL, 0xEB0000000028203ALL);
    goto LABEL_11;
  }

  sub_23FFD96DC();

  v24 = 0xD000000000000014;
  v7 = *(v1 + 16);
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_23FF823D4(0, v7, 0);
    v8 = v22;
    v9 = (v1 + 32);
    do
    {
      v10 = *v9++;
      v11 = sub_23FFD995C();
      v23 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v11;
        v17 = v12;
        sub_23FF823D4((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v11 = v16;
        v8 = v23;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
  sub_23FF94764();
  v18 = sub_23FFD931C();
  v20 = v19;

  MEMORY[0x245CB3B50](v18, v20);

  return v24;
}

uint64_t sub_23FF936DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF93764(uint64_t a1)
{
  v2 = sub_23FF947C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF937A0(uint64_t a1)
{
  v2 = sub_23FF947C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionRequest.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3350, &qword_23FFDFA80);
  v18 = *(v13 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v13);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = a1[4];
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF93374(v6, v7, v8, v10);
  sub_23FF947C8();
  sub_23FFD9ACC();
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v10;
  sub_23FF9481C();
  v11 = v13;
  sub_23FFD991C();
  sub_23FF94870(v14, v15, v16, v17);
  return (*(v18 + 8))(v5, v11);
}

uint64_t PerformPrivateActionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3368, &qword_23FFDFA88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF947C8();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FF94890();
    sub_23FFD983C();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF93B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF93BBC(uint64_t a1)
{
  v2 = sub_23FF948E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF93BF8(uint64_t a1)
{
  v2 = sub_23FF948E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF93C34(uint64_t a1)
{
  v2 = sub_23FF94938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF93C70(uint64_t a1)
{
  v2 = sub_23FF94938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionResponse.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3378, &qword_23FFDFA90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3380, &qword_23FFDFA98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF948E4();
  sub_23FFD9ACC();
  sub_23FF94938();
  sub_23FFD988C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t PerformPrivateActionResponse.Response.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

uint64_t PerformPrivateActionResponse.Response.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3398, &qword_23FFDFAA0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A33A0, &qword_23FFDFAA8);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF948E4();
  sub_23FFD9AAC();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_23FFD986C();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_23FF75234() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_23FFD970C();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
    *v19 = &type metadata for PerformPrivateActionResponse.Response;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_23FF94938();
  sub_23FFD979C();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_23FF94254(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3378, &qword_23FFDFA90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3380, &qword_23FFDFA98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF948E4();
  sub_23FFD9ACC();
  sub_23FF94938();
  sub_23FFD988C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23FF94434(uint64_t a1)
{
  v2 = sub_23FF9498C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF94470(uint64_t a1)
{
  v2 = sub_23FF9498C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformPrivateActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A33A8, &qword_23FFDFAB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9498C();
  sub_23FFD9ACC();
  sub_23FF949E0();
  sub_23FFD991C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PerformPrivateActionResponse.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A33C0, &qword_23FFDFAB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9498C();
  sub_23FFD9AAC();
  if (!v1)
  {
    sub_23FF94A34();
    sub_23FFD983C();
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF94764()
{
  result = qword_27E3A3348;
  if (!qword_27E3A3348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A27F0, &qword_23FFDB210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3348);
  }

  return result;
}

unint64_t sub_23FF947C8()
{
  result = qword_27E3A3358;
  if (!qword_27E3A3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3358);
  }

  return result;
}

unint64_t sub_23FF9481C()
{
  result = qword_27E3A3360;
  if (!qword_27E3A3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3360);
  }

  return result;
}

uint64_t sub_23FF94870(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

unint64_t sub_23FF94890()
{
  result = qword_27E3A3370;
  if (!qword_27E3A3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3370);
  }

  return result;
}

unint64_t sub_23FF948E4()
{
  result = qword_27E3A3388;
  if (!qword_27E3A3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3388);
  }

  return result;
}

unint64_t sub_23FF94938()
{
  result = qword_27E3A3390;
  if (!qword_27E3A3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3390);
  }

  return result;
}

unint64_t sub_23FF9498C()
{
  result = qword_27E3A33B0;
  if (!qword_27E3A33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33B0);
  }

  return result;
}

unint64_t sub_23FF949E0()
{
  result = qword_27E3A33B8;
  if (!qword_27E3A33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33B8);
  }

  return result;
}

unint64_t sub_23FF94A34()
{
  result = qword_27E3A33C8;
  if (!qword_27E3A33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33C8);
  }

  return result;
}

unint64_t sub_23FF94A8C()
{
  result = qword_27E3A33D0;
  if (!qword_27E3A33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33D0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23FF94B10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FF94B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_23FF94C5C()
{
  result = qword_27E3A33D8;
  if (!qword_27E3A33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33D8);
  }

  return result;
}

unint64_t sub_23FF94CB4()
{
  result = qword_27E3A33E0;
  if (!qword_27E3A33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33E0);
  }

  return result;
}

unint64_t sub_23FF94D0C()
{
  result = qword_27E3A33E8;
  if (!qword_27E3A33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33E8);
  }

  return result;
}

unint64_t sub_23FF94D64()
{
  result = qword_27E3A33F0;
  if (!qword_27E3A33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33F0);
  }

  return result;
}

unint64_t sub_23FF94DBC()
{
  result = qword_27E3A33F8;
  if (!qword_27E3A33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A33F8);
  }

  return result;
}

unint64_t sub_23FF94E14()
{
  result = qword_27E3A3400;
  if (!qword_27E3A3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3400);
  }

  return result;
}

unint64_t sub_23FF94E6C()
{
  result = qword_27E3A3408;
  if (!qword_27E3A3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3408);
  }

  return result;
}

unint64_t sub_23FF94EC4()
{
  result = qword_27E3A3410;
  if (!qword_27E3A3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3410);
  }

  return result;
}

unint64_t sub_23FF94F1C()
{
  result = qword_27E3A3418;
  if (!qword_27E3A3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3418);
  }

  return result;
}

unint64_t sub_23FF94F74()
{
  result = qword_27E3A3420;
  if (!qword_27E3A3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3420);
  }

  return result;
}

unint64_t sub_23FF94FCC()
{
  result = qword_27E3A3428;
  if (!qword_27E3A3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3428);
  }

  return result;
}

unint64_t sub_23FF95024()
{
  result = qword_27E3A3430;
  if (!qword_27E3A3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3430);
  }

  return result;
}

unint64_t sub_23FF9507C()
{
  result = qword_27E3A3438;
  if (!qword_27E3A3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3438);
  }

  return result;
}

unint64_t sub_23FF950D4()
{
  result = qword_27E3A3440;
  if (!qword_27E3A3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3440);
  }

  return result;
}

unint64_t sub_23FF9512C()
{
  result = qword_27E3A3448;
  if (!qword_27E3A3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3448);
  }

  return result;
}

unint64_t sub_23FF95184()
{
  result = qword_27E3A3450;
  if (!qword_27E3A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3450);
  }

  return result;
}

unint64_t sub_23FF951DC()
{
  result = qword_27E3A3458;
  if (!qword_27E3A3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3458);
  }

  return result;
}

unint64_t sub_23FF95234()
{
  result = qword_27E3A3460;
  if (!qword_27E3A3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3460);
  }

  return result;
}

unint64_t sub_23FF9528C()
{
  result = qword_27E3A3468;
  if (!qword_27E3A3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3468);
  }

  return result;
}

unint64_t sub_23FF952E4()
{
  result = qword_27E3A3470;
  if (!qword_27E3A3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3470);
  }

  return result;
}

unint64_t sub_23FF9533C()
{
  result = qword_27E3A3478;
  if (!qword_27E3A3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3478);
  }

  return result;
}

unint64_t sub_23FF95394()
{
  result = qword_27E3A3480;
  if (!qword_27E3A3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3480);
  }

  return result;
}

unint64_t sub_23FF953EC()
{
  result = qword_27E3A3488;
  if (!qword_27E3A3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3488);
  }

  return result;
}

uint64_t sub_23FF95440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694C726961706572 && a2 == 0xED000065736E6563;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB5E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63694C77656E6572 && a2 == 0xED00007365736E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FF95570(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManifestValidationRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23FFD8F6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ManifestValidationRequest.primaryProductVariant.getter()
{
  v1 = (v0 + *(type metadata accessor for ManifestValidationRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ManifestValidationRequest()
{
  result = qword_27E3A34A8;
  if (!qword_27E3A34A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ManifestValidationRequest.compatibleProductVariants.getter()
{
  v1 = *(v0 + *(type metadata accessor for ManifestValidationRequest() + 24));
}

uint64_t ManifestValidationRequest.osVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for ManifestValidationRequest() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *ManifestValidationRequest.init(url:primaryProductVariant:compatibleProductVariants:osVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_23FFD8F6C();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for ManifestValidationRequest();
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = a4;
  v17 = (a7 + result[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_23FF958D8()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23FF53BC8;
  v2 = *(v0 + 16);

  return sub_23FF585F0(v2, sub_23FF959D0, 0);
}

void sub_23FF959D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_10;
  v9 = _Block_copy(v10);

  [a1 runManifestValidation:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_23FF95AAC()
{
  v1 = 7107189;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_23FF95B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF96610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF95B58(uint64_t a1)
{
  v2 = sub_23FF95E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF95B94(uint64_t a1)
{
  v2 = sub_23FF95E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ManifestValidationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3490, &unk_23FFE0688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF95E28();
  sub_23FFD9ACC();
  v22 = 0;
  sub_23FFD8F6C();
  sub_23FF82E4C(&qword_27E3A2438);
  sub_23FFD991C();
  if (!v2)
  {
    v11 = type metadata accessor for ManifestValidationRequest();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v21 = 1;
    sub_23FFD989C();
    v20 = *(v3 + v11[6]);
    v19[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
    sub_23FF668B0(&qword_27E3A27F8);
    sub_23FFD98CC();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = v15[1];
    v19[14] = 3;
    sub_23FFD989C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23FF95E28()
{
  result = qword_27E3A3498;
  if (!qword_27E3A3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3498);
  }

  return result;
}

uint64_t ManifestValidationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_23FFD8F6C();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34A0, &qword_23FFE0698);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ManifestValidationRequest();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF95E28();
  v35 = v10;
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v31;
  v40 = 0;
  sub_23FF82E4C(&qword_27E3A2458);
  v17 = v32;
  sub_23FFD983C();
  (*(v16 + 32))(v14, v17, v4);
  v39 = 1;
  v19 = sub_23FFD97BC();
  v32 = 0;
  v21 = &v14[v11[5]];
  *v21 = v19;
  v21[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
  v38 = 2;
  sub_23FF668B0(&qword_2814FD770);
  v22 = v32;
  v23 = v32;
  sub_23FFD97EC();
  if (v23)
  {
    (*(v33 + 8))(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = (*(v16 + 8))(v14, v4);
    if (!v22)
    {
      v24 = *&v14[v11[5] + 8];
    }
  }

  else
  {
    *&v14[v11[6]] = v36;
    v37 = 3;
    v25 = sub_23FFD97BC();
    v27 = v26;
    (*(v33 + 8))(v35, v34);
    v28 = &v14[v11[7]];
    *v28 = v25;
    v28[1] = v27;
    sub_23FF962DC(v14, v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23FF96340(v14);
  }

  return result;
}

uint64_t sub_23FF962DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManifestValidationRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF96340(uint64_t a1)
{
  v2 = type metadata accessor for ManifestValidationRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23FF963F4()
{
  sub_23FFD8F6C();
  if (v0 <= 0x3F)
  {
    sub_23FF59828();
    if (v1 <= 0x3F)
    {
      sub_23FF96494();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23FF96494()
{
  if (!qword_27E3A34B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A27F0, &qword_23FFDB210);
    v0 = sub_23FFD95CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3A34B8);
    }
  }
}

unint64_t sub_23FF9650C()
{
  result = qword_27E3A34C0;
  if (!qword_27E3A34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A34C0);
  }

  return result;
}

unint64_t sub_23FF96564()
{
  result = qword_27E3A34C8;
  if (!qword_27E3A34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A34C8);
  }

  return result;
}

unint64_t sub_23FF965BC()
{
  result = qword_27E3A34D0;
  if (!qword_27E3A34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A34D0);
  }

  return result;
}

uint64_t sub_23FF96610(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEB600 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023FFEB620 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ConfirmationSheetContext.symbolConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ConfirmationSheetContext.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ConfirmationSheetContext.subtitle.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ConfirmationSheetContext.moreInformationLink.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_23FF96828(v2, v3);
}

uint64_t sub_23FF96828(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ConfirmationSheetContext.miniProductPageConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 160);
  return sub_23FF96898(v2, v3);
}

uint64_t sub_23FF96898(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ConfirmationSheetContext.primaryButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ConfirmationSheetContext.secondaryButtonText.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t ConfirmationSheetContext.init(logKey:symbolConfiguration:title:subtitle:moreInformationLink:bulletPoints:miniProductPageConfiguration:primaryButton:secondaryButtonText:postPrimaryButtonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a3 + 16);
  v17 = *(a11 + 48);
  v18 = *a12;
  v19 = a12[1];
  v20 = *(a12 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v16;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  v21 = a8[1];
  *(a9 + 72) = *a8;
  *(a9 + 88) = v21;
  *(a9 + 104) = a10;
  v22 = *(a11 + 16);
  *(a9 + 112) = *a11;
  *(a9 + 128) = v22;
  *(a9 + 144) = *(a11 + 32);
  *(a9 + 160) = v17;
  *(a9 + 168) = v18;
  *(a9 + 176) = v19;
  *(a9 + 184) = v20;
  *(a9 + 192) = a13;
  *(a9 + 200) = a14;
  v23 = type metadata accessor for ConfirmationSheetContext(0);
  return sub_23FF64358(a15, a9 + *(v23 + 52), &qword_27E3A34D8, &qword_23FFE0840);
}

unint64_t sub_23FF96A40(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x427972616D697270;
    v6 = 0xD000000000000017;
    if (a1 == 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v7 = 0x6F5074656C6C7562;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x79654B676F6CLL;
    v2 = 0x656C746974;
    v3 = 0x656C746974627573;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23FF96B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF9E6E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF96BC4(uint64_t a1)
{
  v2 = sub_23FF9708C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF96C00(uint64_t a1)
{
  v2 = sub_23FF9708C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34E0, &qword_23FFE0848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9708C();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v35) = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = v3[3];
    v14 = *(v3 + 32);
    v35 = v3[2];
    v36 = v13;
    LOBYTE(v37) = v14;
    v42 = 1;
    sub_23FF970E0();

    sub_23FFD98CC();

    v15 = v3[5];
    v16 = v3[6];
    LOBYTE(v35) = 2;
    sub_23FFD98EC();
    v17 = v3[7];
    v18 = v3[8];
    LOBYTE(v35) = 3;
    sub_23FFD989C();
    v19 = v3[10];
    v20 = v3[11];
    v21 = v3[12];
    v35 = v3[9];
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v42 = 4;
    sub_23FF96828(v35, v19);
    sub_23FF97134();
    sub_23FFD98CC();
    sub_23FF97188(v35, v36);
    v35 = v3[13];
    v42 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3500, &qword_23FFE0850);
    sub_23FF97B08(&qword_27E3A3508, sub_23FF971CC);
    sub_23FFD98CC();
    v22 = v3[15];
    v23 = v3[16];
    v24 = v3[17];
    v25 = v3[18];
    v26 = v3[19];
    v27 = *(v3 + 160);
    v35 = v3[14];
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v41 = v27;
    v42 = 6;
    sub_23FF96898(v35, v22);
    sub_23FF97220();
    sub_23FFD98CC();
    sub_23FF97274(v35, v36);
    v28 = v3[22];
    v29 = *(v3 + 184);
    v35 = v3[21];
    v36 = v28;
    LOBYTE(v37) = v29;
    v42 = 7;
    sub_23FF972C4();

    sub_23FFD991C();

    v30 = v3[24];
    v31 = v3[25];
    LOBYTE(v35) = 8;
    sub_23FFD989C();
    v32 = *(type metadata accessor for ConfirmationSheetContext(0) + 52);
    LOBYTE(v35) = 9;
    type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
    sub_23FF97C7C(&qword_27E3A3528, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v9, v5);
}