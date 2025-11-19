uint64_t ASApplicationRecord_V1.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ASApplicationRecord_V1.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ASApplicationRecord_V1.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24011378C();
  }
}

uint64_t sub_240112C34()
{
  sub_24011379C();
  MEMORY[0x245CB9D80](0);
  return sub_2401137BC();
}

uint64_t sub_240112CA0()
{
  sub_24011379C();
  MEMORY[0x245CB9D80](0);
  return sub_2401137BC();
}

uint64_t sub_240112CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000240113BC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24011378C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_240112DA8(uint64_t a1)
{
  v2 = sub_240112FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240112DE4(uint64_t a1)
{
  v2 = sub_240112FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ASApplicationRecord_V1.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C72F0, &qword_2401138B0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240112FE8();
  sub_2401137DC();
  sub_24011377C();
  return (*(v4 + 8))(v7, v3);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_240112FE8()
{
  result = qword_27E3C7310[0];
  if (!qword_27E3C7310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E3C7310);
  }

  return result;
}

uint64_t ASApplicationRecord_V1.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24011375C();
}

uint64_t ASApplicationRecord_V1.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24011379C();
  sub_24011375C();
  return sub_2401137BC();
}

uint64_t ASApplicationRecord_V1.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C72F8, &qword_2401138B8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240112FE8();
  sub_2401137CC();
  if (!v2)
  {
    v11 = sub_24011376C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24011321C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C72F0, &qword_2401138B0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240112FE8();
  sub_2401137DC();
  sub_24011377C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_240113358()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24011379C();
  sub_24011375C();
  return sub_2401137BC();
}

uint64_t sub_2401133A4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24011375C();
}

uint64_t sub_2401133AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24011379C();
  sub_24011375C();
  return sub_2401137BC();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_240113444()
{
  result = qword_27E3C7300;
  if (!qword_27E3C7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C7300);
  }

  return result;
}

uint64_t sub_240113498(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24011378C();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2401134D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24011351C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ASApplicationRecord_V1.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ASApplicationRecord_V1.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_240113658()
{
  result = qword_27E3C7620[0];
  if (!qword_27E3C7620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E3C7620);
  }

  return result;
}

unint64_t sub_2401136B0()
{
  result = qword_27E3C7730;
  if (!qword_27E3C7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C7730);
  }

  return result;
}

unint64_t sub_240113708()
{
  result = qword_27E3C7738[0];
  if (!qword_27E3C7738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E3C7738);
  }

  return result;
}