unint64_t sub_23FFC8920()
{
  result = qword_27E3A47E0;
  if (!qword_27E3A47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A47E0);
  }

  return result;
}

unint64_t sub_23FFC8974()
{
  result = qword_27E3A47E8;
  if (!qword_27E3A47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A47E8);
  }

  return result;
}

uint64_t sub_23FFC89C8(uint64_t a1)
{
  v2 = sub_23FFC8BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFC8A04(uint64_t a1)
{
  v2 = sub_23FFC8BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetPublicDataRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4828, &qword_23FFE6678);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8BB8();
  sub_23FFD9ACC();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_23FFC7EDC(&qword_27E3A4838, type metadata accessor for SetPublicDataRequest.Request);
  sub_23FFD991C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_23FFC8BB8()
{
  result = qword_27E3A4830;
  if (!qword_27E3A4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4830);
  }

  return result;
}

uint64_t SetPublicDataRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4840, &qword_23FFE6680);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SetPublicDataRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8BB8();
  sub_23FFD9AAC();
  if (!v2)
  {
    v16 = v19;
    sub_23FFC7EDC(&qword_27E3A4848, type metadata accessor for SetPublicDataRequest.Request);
    v17 = v21;
    sub_23FFD983C();
    (*(v20 + 8))(v10, v7);
    sub_23FFC8EA0(v17, v14, type metadata accessor for SetPublicDataRequest.Request);
    sub_23FFC8EA0(v14, v16, type metadata accessor for SetPublicDataRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFC8EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FFC8F0C()
{
  result = qword_27E3A4850;
  if (!qword_27E3A4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4850);
  }

  return result;
}

uint64_t sub_23FFC8F78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4828, &qword_23FFE6678);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFC8BB8();
  sub_23FFD9ACC();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_23FFC7EDC(&qword_27E3A4838, type metadata accessor for SetPublicDataRequest.Request);
  sub_23FFD991C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution23FetchPrivateDataRequestV0F0O(uint64_t a1)
{
  v1 = (*(a1 + 40) >> 60) & 3 | (4 * (*(a1 + 48) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_23FFC9124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 49))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 40) >> 60) & 3 | (4 * *(a1 + 48))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23FFC9178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 1018;
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = (-a2 & 3) << 60;
      *(result + 48) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_23FFC91F0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 40) = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 48) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x2000000000000000;
    *(result + 48) = 1;
  }

  return result;
}

uint64_t sub_23FFC9264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FFC92AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23FFC9344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23FFC938C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_23FFC9420()
{
  result = type metadata accessor for SetPublicDataRequest.Request(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23FFC948C()
{
  sub_23FF59828();
  if (v0 <= 0x3F)
  {
    sub_23FFC95D0(319, &qword_27E3A4878);
    if (v1 <= 0x3F)
    {
      sub_23FFC954C();
      if (v2 <= 0x3F)
      {
        sub_23FFC95D0(319, &qword_27E3A4890);
        if (v3 <= 0x3F)
        {
          sub_23FFC9618();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23FFC954C()
{
  if (!qword_27E3A4880)
  {
    sub_23FFD8FCC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4888, &qword_23FFE72A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E3A4880);
    }
  }
}

void sub_23FFC95D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23FFD8FCC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23FFC9618()
{
  if (!qword_27E3A4898)
  {
    sub_23FFD8FCC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A47B8, &qword_23FFE6638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4888, &qword_23FFE72A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E3A4898);
    }
  }
}

unint64_t sub_23FFC996C()
{
  result = qword_27E3A48A0;
  if (!qword_27E3A48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48A0);
  }

  return result;
}

unint64_t sub_23FFC99C4()
{
  result = qword_27E3A48A8;
  if (!qword_27E3A48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48A8);
  }

  return result;
}

unint64_t sub_23FFC9A1C()
{
  result = qword_27E3A48B0;
  if (!qword_27E3A48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48B0);
  }

  return result;
}

unint64_t sub_23FFC9A74()
{
  result = qword_27E3A48B8;
  if (!qword_27E3A48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48B8);
  }

  return result;
}

unint64_t sub_23FFC9ACC()
{
  result = qword_27E3A48C0;
  if (!qword_27E3A48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48C0);
  }

  return result;
}

unint64_t sub_23FFC9B24()
{
  result = qword_27E3A48C8;
  if (!qword_27E3A48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48C8);
  }

  return result;
}

unint64_t sub_23FFC9B7C()
{
  result = qword_27E3A48D0;
  if (!qword_27E3A48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48D0);
  }

  return result;
}

unint64_t sub_23FFC9BD4()
{
  result = qword_27E3A48D8;
  if (!qword_27E3A48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48D8);
  }

  return result;
}

unint64_t sub_23FFC9C2C()
{
  result = qword_27E3A48E0;
  if (!qword_27E3A48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48E0);
  }

  return result;
}

unint64_t sub_23FFC9C84()
{
  result = qword_27E3A48E8;
  if (!qword_27E3A48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48E8);
  }

  return result;
}

unint64_t sub_23FFC9CDC()
{
  result = qword_27E3A48F0;
  if (!qword_27E3A48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48F0);
  }

  return result;
}

unint64_t sub_23FFC9D34()
{
  result = qword_27E3A48F8;
  if (!qword_27E3A48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A48F8);
  }

  return result;
}

unint64_t sub_23FFC9D8C()
{
  result = qword_27E3A4900;
  if (!qword_27E3A4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4900);
  }

  return result;
}

unint64_t sub_23FFC9DE4()
{
  result = qword_27E3A4908;
  if (!qword_27E3A4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4908);
  }

  return result;
}

unint64_t sub_23FFC9E3C()
{
  result = qword_27E3A4910;
  if (!qword_27E3A4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4910);
  }

  return result;
}

unint64_t sub_23FFC9E94()
{
  result = qword_27E3A4918;
  if (!qword_27E3A4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4918);
  }

  return result;
}

unint64_t sub_23FFC9EEC()
{
  result = qword_27E3A4920;
  if (!qword_27E3A4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4920);
  }

  return result;
}

unint64_t sub_23FFC9F44()
{
  result = qword_27E3A4928;
  if (!qword_27E3A4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4928);
  }

  return result;
}

unint64_t sub_23FFC9F9C()
{
  result = qword_27E3A4930;
  if (!qword_27E3A4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4930);
  }

  return result;
}

unint64_t sub_23FFC9FF4()
{
  result = qword_27E3A4938;
  if (!qword_27E3A4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4938);
  }

  return result;
}

unint64_t sub_23FFCA04C()
{
  result = qword_27E3A4940;
  if (!qword_27E3A4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4940);
  }

  return result;
}

unint64_t sub_23FFCA0A4()
{
  result = qword_27E3A4948;
  if (!qword_27E3A4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4948);
  }

  return result;
}

unint64_t sub_23FFCA0FC()
{
  result = qword_27E3A4950;
  if (!qword_27E3A4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4950);
  }

  return result;
}

unint64_t sub_23FFCA154()
{
  result = qword_27E3A4958;
  if (!qword_27E3A4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4958);
  }

  return result;
}

unint64_t sub_23FFCA1AC()
{
  result = qword_27E3A4960;
  if (!qword_27E3A4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4960);
  }

  return result;
}

unint64_t sub_23FFCA204()
{
  result = qword_27E3A4968;
  if (!qword_27E3A4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4968);
  }

  return result;
}

unint64_t sub_23FFCA25C()
{
  result = qword_27E3A4970;
  if (!qword_27E3A4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4970);
  }

  return result;
}

unint64_t sub_23FFCA2B4()
{
  result = qword_27E3A4978;
  if (!qword_27E3A4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4978);
  }

  return result;
}

unint64_t sub_23FFCA30C()
{
  result = qword_27E3A4980;
  if (!qword_27E3A4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4980);
  }

  return result;
}

unint64_t sub_23FFCA364()
{
  result = qword_27E3A4988;
  if (!qword_27E3A4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4988);
  }

  return result;
}

unint64_t sub_23FFCA3BC()
{
  result = qword_27E3A4990;
  if (!qword_27E3A4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4990);
  }

  return result;
}

unint64_t sub_23FFCA414()
{
  result = qword_27E3A4998;
  if (!qword_27E3A4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4998);
  }

  return result;
}

unint64_t sub_23FFCA46C()
{
  result = qword_27E3A49A0;
  if (!qword_27E3A49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49A0);
  }

  return result;
}

unint64_t sub_23FFCA4C4()
{
  result = qword_27E3A49A8;
  if (!qword_27E3A49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49A8);
  }

  return result;
}

unint64_t sub_23FFCA51C()
{
  result = qword_27E3A49B0;
  if (!qword_27E3A49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49B0);
  }

  return result;
}

unint64_t sub_23FFCA574()
{
  result = qword_27E3A49B8;
  if (!qword_27E3A49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49B8);
  }

  return result;
}

unint64_t sub_23FFCA5CC()
{
  result = qword_27E3A49C0;
  if (!qword_27E3A49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49C0);
  }

  return result;
}

unint64_t sub_23FFCA624()
{
  result = qword_27E3A49C8;
  if (!qword_27E3A49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49C8);
  }

  return result;
}

unint64_t sub_23FFCA67C()
{
  result = qword_27E3A49D0;
  if (!qword_27E3A49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49D0);
  }

  return result;
}

unint64_t sub_23FFCA6D4()
{
  result = qword_27E3A49D8;
  if (!qword_27E3A49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49D8);
  }

  return result;
}

unint64_t sub_23FFCA72C()
{
  result = qword_27E3A49E0;
  if (!qword_27E3A49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49E0);
  }

  return result;
}

unint64_t sub_23FFCA784()
{
  result = qword_27E3A49E8;
  if (!qword_27E3A49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49E8);
  }

  return result;
}

unint64_t sub_23FFCA7DC()
{
  result = qword_27E3A49F0;
  if (!qword_27E3A49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49F0);
  }

  return result;
}

unint64_t sub_23FFCA834()
{
  result = qword_27E3A49F8;
  if (!qword_27E3A49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A49F8);
  }

  return result;
}

unint64_t sub_23FFCA88C()
{
  result = qword_27E3A4A00;
  if (!qword_27E3A4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A00);
  }

  return result;
}

unint64_t sub_23FFCA8E4()
{
  result = qword_27E3A4A08;
  if (!qword_27E3A4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A08);
  }

  return result;
}

unint64_t sub_23FFCA93C()
{
  result = qword_27E3A4A10;
  if (!qword_27E3A4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A10);
  }

  return result;
}

unint64_t sub_23FFCA994()
{
  result = qword_27E3A4A18;
  if (!qword_27E3A4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A18);
  }

  return result;
}

unint64_t sub_23FFCA9EC()
{
  result = qword_27E3A4A20;
  if (!qword_27E3A4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A20);
  }

  return result;
}

unint64_t sub_23FFCAA44()
{
  result = qword_27E3A4A28;
  if (!qword_27E3A4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A28);
  }

  return result;
}

unint64_t sub_23FFCAA9C()
{
  result = qword_27E3A4A30;
  if (!qword_27E3A4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A30);
  }

  return result;
}

unint64_t sub_23FFCAAF4()
{
  result = qword_27E3A4A38;
  if (!qword_27E3A4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A38);
  }

  return result;
}

unint64_t sub_23FFCAB4C()
{
  result = qword_27E3A4A40;
  if (!qword_27E3A4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A40);
  }

  return result;
}

unint64_t sub_23FFCABA4()
{
  result = qword_27E3A4A48;
  if (!qword_27E3A4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A48);
  }

  return result;
}

unint64_t sub_23FFCABFC()
{
  result = qword_27E3A4A50;
  if (!qword_27E3A4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A50);
  }

  return result;
}

unint64_t sub_23FFCAC54()
{
  result = qword_27E3A4A58;
  if (!qword_27E3A4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A58);
  }

  return result;
}

unint64_t sub_23FFCACAC()
{
  result = qword_27E3A4A60;
  if (!qword_27E3A4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A60);
  }

  return result;
}

unint64_t sub_23FFCAD04()
{
  result = qword_27E3A4A68;
  if (!qword_27E3A4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A68);
  }

  return result;
}

unint64_t sub_23FFCAD5C()
{
  result = qword_27E3A4A70;
  if (!qword_27E3A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A70);
  }

  return result;
}

unint64_t sub_23FFCADB4()
{
  result = qword_27E3A4A78;
  if (!qword_27E3A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A78);
  }

  return result;
}

unint64_t sub_23FFCAE0C()
{
  result = qword_27E3A4A80;
  if (!qword_27E3A4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A80);
  }

  return result;
}

unint64_t sub_23FFCAE64()
{
  result = qword_27E3A4A88;
  if (!qword_27E3A4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A88);
  }

  return result;
}

unint64_t sub_23FFCAEBC()
{
  result = qword_27E3A4A90;
  if (!qword_27E3A4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A90);
  }

  return result;
}

unint64_t sub_23FFCAF14()
{
  result = qword_27E3A4A98;
  if (!qword_27E3A4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4A98);
  }

  return result;
}

unint64_t sub_23FFCAF6C()
{
  result = qword_27E3A4AA0;
  if (!qword_27E3A4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AA0);
  }

  return result;
}

unint64_t sub_23FFCAFC4()
{
  result = qword_27E3A4AA8;
  if (!qword_27E3A4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AA8);
  }

  return result;
}

unint64_t sub_23FFCB01C()
{
  result = qword_27E3A4AB0;
  if (!qword_27E3A4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AB0);
  }

  return result;
}

unint64_t sub_23FFCB074()
{
  result = qword_27E3A4AB8;
  if (!qword_27E3A4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AB8);
  }

  return result;
}

unint64_t sub_23FFCB0CC()
{
  result = qword_27E3A4AC0;
  if (!qword_27E3A4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AC0);
  }

  return result;
}

unint64_t sub_23FFCB124()
{
  result = qword_27E3A4AC8;
  if (!qword_27E3A4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AC8);
  }

  return result;
}

unint64_t sub_23FFCB17C()
{
  result = qword_27E3A4AD0;
  if (!qword_27E3A4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AD0);
  }

  return result;
}

unint64_t sub_23FFCB1D4()
{
  result = qword_27E3A4AD8;
  if (!qword_27E3A4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AD8);
  }

  return result;
}

unint64_t sub_23FFCB22C()
{
  result = qword_27E3A4AE0;
  if (!qword_27E3A4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AE0);
  }

  return result;
}

unint64_t sub_23FFCB284()
{
  result = qword_27E3A4AE8;
  if (!qword_27E3A4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AE8);
  }

  return result;
}

unint64_t sub_23FFCB2DC()
{
  result = qword_27E3A4AF0;
  if (!qword_27E3A4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AF0);
  }

  return result;
}

unint64_t sub_23FFCB334()
{
  result = qword_2814FD868;
  if (!qword_2814FD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD868);
  }

  return result;
}

unint64_t sub_23FFCB38C()
{
  result = qword_2814FD870;
  if (!qword_2814FD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD870);
  }

  return result;
}

unint64_t sub_23FFCB3E4()
{
  result = qword_2814FD898;
  if (!qword_2814FD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD898);
  }

  return result;
}

unint64_t sub_23FFCB43C()
{
  result = qword_2814FD8A0;
  if (!qword_2814FD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8A0);
  }

  return result;
}

unint64_t sub_23FFCB494()
{
  result = qword_2814FD8B8;
  if (!qword_2814FD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8B8);
  }

  return result;
}

unint64_t sub_23FFCB4EC()
{
  result = qword_2814FD8C0;
  if (!qword_2814FD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8C0);
  }

  return result;
}

unint64_t sub_23FFCB544()
{
  result = qword_2814FD8E8;
  if (!qword_2814FD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8E8);
  }

  return result;
}

unint64_t sub_23FFCB59C()
{
  result = qword_2814FD8F0;
  if (!qword_2814FD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8F0);
  }

  return result;
}

unint64_t sub_23FFCB5F4()
{
  result = qword_2814FD888;
  if (!qword_2814FD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD888);
  }

  return result;
}

unint64_t sub_23FFCB64C()
{
  result = qword_2814FD890;
  if (!qword_2814FD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD890);
  }

  return result;
}

unint64_t sub_23FFCB6A4()
{
  result = qword_2814FD8A8;
  if (!qword_2814FD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8A8);
  }

  return result;
}

unint64_t sub_23FFCB6FC()
{
  result = qword_2814FD8B0;
  if (!qword_2814FD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8B0);
  }

  return result;
}

unint64_t sub_23FFCB754()
{
  result = qword_2814FD8C8;
  if (!qword_2814FD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8C8);
  }

  return result;
}

unint64_t sub_23FFCB7AC()
{
  result = qword_2814FD8D0;
  if (!qword_2814FD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8D0);
  }

  return result;
}

unint64_t sub_23FFCB804()
{
  result = qword_2814FD910;
  if (!qword_2814FD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD910);
  }

  return result;
}

unint64_t sub_23FFCB85C()
{
  result = qword_2814FD918;
  if (!qword_2814FD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD918);
  }

  return result;
}

unint64_t sub_23FFCB8B4()
{
  result = qword_2814FD8D8;
  if (!qword_2814FD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8D8);
  }

  return result;
}

unint64_t sub_23FFCB90C()
{
  result = qword_2814FD8E0;
  if (!qword_2814FD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8E0);
  }

  return result;
}

unint64_t sub_23FFCB964()
{
  result = qword_27E3A4AF8;
  if (!qword_27E3A4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4AF8);
  }

  return result;
}

unint64_t sub_23FFCB9BC()
{
  result = qword_27E3A4B00;
  if (!qword_27E3A4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B00);
  }

  return result;
}

unint64_t sub_23FFCBA14()
{
  result = qword_27E3A4B08;
  if (!qword_27E3A4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B08);
  }

  return result;
}

unint64_t sub_23FFCBA6C()
{
  result = qword_27E3A4B10;
  if (!qword_27E3A4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B10);
  }

  return result;
}

unint64_t sub_23FFCBAC4()
{
  result = qword_2814FD8F8;
  if (!qword_2814FD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD8F8);
  }

  return result;
}

unint64_t sub_23FFCBB1C()
{
  result = qword_2814FD900;
  if (!qword_2814FD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD900);
  }

  return result;
}

unint64_t sub_23FFCBB74()
{
  result = qword_2814FD7B0;
  if (!qword_2814FD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7B0);
  }

  return result;
}

unint64_t sub_23FFCBBCC()
{
  result = qword_2814FD7B8;
  if (!qword_2814FD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7B8);
  }

  return result;
}

unint64_t sub_23FFCBC24()
{
  result = qword_2814FD7F0;
  if (!qword_2814FD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7F0);
  }

  return result;
}

unint64_t sub_23FFCBC7C()
{
  result = qword_2814FD7F8;
  if (!qword_2814FD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7F8);
  }

  return result;
}

unint64_t sub_23FFCBCD4()
{
  result = qword_2814FD810;
  if (!qword_2814FD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD810);
  }

  return result;
}

unint64_t sub_23FFCBD2C()
{
  result = qword_2814FD818;
  if (!qword_2814FD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD818);
  }

  return result;
}

unint64_t sub_23FFCBD84()
{
  result = qword_2814FD830;
  if (!qword_2814FD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD830);
  }

  return result;
}

unint64_t sub_23FFCBDDC()
{
  result = qword_2814FD838;
  if (!qword_2814FD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD838);
  }

  return result;
}

unint64_t sub_23FFCBE34()
{
  result = qword_2814FD7E0;
  if (!qword_2814FD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7E0);
  }

  return result;
}

unint64_t sub_23FFCBE8C()
{
  result = qword_2814FD7E8;
  if (!qword_2814FD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7E8);
  }

  return result;
}

unint64_t sub_23FFCBEE4()
{
  result = qword_2814FD800;
  if (!qword_2814FD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD800);
  }

  return result;
}

unint64_t sub_23FFCBF3C()
{
  result = qword_2814FD808;
  if (!qword_2814FD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD808);
  }

  return result;
}

unint64_t sub_23FFCBF94()
{
  result = qword_2814FD820;
  if (!qword_2814FD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD820);
  }

  return result;
}

unint64_t sub_23FFCBFEC()
{
  result = qword_2814FD828;
  if (!qword_2814FD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD828);
  }

  return result;
}

unint64_t sub_23FFCC044()
{
  result = qword_2814FD858;
  if (!qword_2814FD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD858);
  }

  return result;
}

unint64_t sub_23FFCC09C()
{
  result = qword_2814FD860;
  if (!qword_2814FD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD860);
  }

  return result;
}

unint64_t sub_23FFCC0F4()
{
  result = qword_2814FD7D0;
  if (!qword_2814FD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7D0);
  }

  return result;
}

unint64_t sub_23FFCC14C()
{
  result = qword_2814FD7D8;
  if (!qword_2814FD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD7D8);
  }

  return result;
}

unint64_t sub_23FFCC1A4()
{
  result = qword_27E3A4B18;
  if (!qword_27E3A4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B18);
  }

  return result;
}

unint64_t sub_23FFCC1FC()
{
  result = qword_27E3A4B20;
  if (!qword_27E3A4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B20);
  }

  return result;
}

unint64_t sub_23FFCC254()
{
  result = qword_27E3A4B28;
  if (!qword_27E3A4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B28);
  }

  return result;
}

unint64_t sub_23FFCC2AC()
{
  result = qword_27E3A4B30;
  if (!qword_27E3A4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B30);
  }

  return result;
}

unint64_t sub_23FFCC304()
{
  result = qword_2814FD840;
  if (!qword_2814FD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD840);
  }

  return result;
}

unint64_t sub_23FFCC35C()
{
  result = qword_2814FD848;
  if (!qword_2814FD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FD848);
  }

  return result;
}

uint64_t sub_23FFCC3B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023FFEC4F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEC510 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC550 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEC570 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023FFEC590 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC5B0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB2E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC5D0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23FFCC6E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023FFEC4F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEC510 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC550 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEC570 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023FFEC590 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB2E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC5D0 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23FFCCA2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000023FFEC5F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC610 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC530 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEC630 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEC570 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC5B0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_23FFD996C();

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

uint64_t sub_23FFCCC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEC650 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEC670 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023FFEC690 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000023FFEC6B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.distributorID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(distributorID:appleItemID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.run()()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 16);
  return MEMORY[0x2822009F8](sub_23FFCCEE0, 0, 0);
}

uint64_t sub_23FFCCEE0()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_23FFCCFDC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_23FF59250(v4, v2, v3, sub_23FFCD0E4, 0);
}

uint64_t sub_23FFCCFDC(char a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

void sub_23FFCD0E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_17;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheetForDistributor:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_23FFCD1C0()
{
  if (*v0)
  {
    result = 0x657449656C707061;
  }

  else
  {
    result = 0x7562697274736964;
  }

  *v0;
  return result;
}

uint64_t sub_23FFCD210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL)
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

uint64_t sub_23FFCD2F8(uint64_t a1)
{
  v2 = sub_23FFCD504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFCD334(uint64_t a1)
{
  v2 = sub_23FFCD504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PresentAgeExceptionApprovalSheetRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B38, &qword_23FFE9F78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFCD504();
  sub_23FFD9ACC();
  v15 = 0;
  v11 = v13[1];
  sub_23FFD98EC();
  if (!v11)
  {
    v14 = 1;
    sub_23FFD993C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FFCD504()
{
  result = qword_27E3A4B40;
  if (!qword_27E3A4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B40);
  }

  return result;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B48, &qword_23FFE9F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFCD504();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_23FFD985C();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FFCD788()
{
  result = qword_27E3A4B50;
  if (!qword_27E3A4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B50);
  }

  return result;
}

unint64_t sub_23FFCD7E0()
{
  result = qword_27E3A4B58;
  if (!qword_27E3A4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B58);
  }

  return result;
}

unint64_t sub_23FFCD838()
{
  result = qword_27E3A4B60;
  if (!qword_27E3A4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B60);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ExceptionRequestMetadata.appBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ExceptionRequestMetadata.appName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ExceptionRequestMetadata.requestedAppIconURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata() + 32);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t type metadata accessor for ExceptionRequestMetadata()
{
  result = qword_27E3A4B90;
  if (!qword_27E3A4B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExceptionRequestMetadata.distributorID.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.distributorName.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.developerID.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.developerName.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.developerSupportURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata() + 52);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t ExceptionRequestMetadata.askerName.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.ageRatingString.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.distributorType.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.distributorBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.distributorDomain.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.installTypeRawValue.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExceptionRequestMetadata() + 92);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExceptionRequestMetadata.oAuthToken.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 96));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.installVerificationToken.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.clientID.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 104));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExceptionRequestMetadata.authenticationContextData.getter()
{
  v1 = v0 + *(type metadata accessor for ExceptionRequestMetadata() + 108);
  v2 = *v1;
  sub_23FFA7094(*v1, *(v1 + 8));
  return v2;
}

uint64_t ExceptionRequestMetadata.originallyRequestedVersionID.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 120));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ExceptionRequestMetadata.itemIDFromButtonConfiguration.getter()
{
  v1 = (v0 + *(type metadata accessor for ExceptionRequestMetadata() + 124));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ExceptionRequestMetadata.referrer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata() + 128);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t ExceptionRequestMetadata.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata() + 132);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t ExceptionRequestMetadata.init(appBundleID:appItemID:appVersionID:appName:requestedAppIconURL:distributorID:distributorName:developerID:developerName:developerSupportURL:isWebApp:isDistributor:askerName:ageRatingString:distributorType:distributorBundleID:distributorDomain:installTypeRawValue:accountID:url:oAuthToken:installVerificationToken:clientID:authenticationContextData:userInitiatedOverride:allowAccountPrompt:originallyRequestedVersionID:itemIDFromButtonConfiguration:referrer:appShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v51 = type metadata accessor for ExceptionRequestMetadata();
  sub_23FF6832C(a7, a9 + v51[8]);
  v52 = (a9 + v51[9]);
  *v52 = a8;
  v52[1] = a10;
  v53 = (a9 + v51[10]);
  *v53 = a11;
  v53[1] = a12;
  v54 = (a9 + v51[11]);
  *v54 = a13;
  v54[1] = a14;
  v55 = (a9 + v51[12]);
  *v55 = a15;
  v55[1] = a16;
  sub_23FF6832C(a17, a9 + v51[13]);
  *(a9 + v51[14]) = a18;
  *(a9 + v51[15]) = a19;
  v56 = (a9 + v51[16]);
  *v56 = a20;
  v56[1] = a21;
  v57 = (a9 + v51[17]);
  *v57 = a22;
  v57[1] = a23;
  v58 = (a9 + v51[18]);
  *v58 = a24;
  v58[1] = a25;
  v59 = (a9 + v51[19]);
  *v59 = a26;
  v59[1] = a27;
  v60 = (a9 + v51[20]);
  *v60 = a28;
  v60[1] = a29;
  v61 = (a9 + v51[21]);
  *v61 = a30;
  v61[1] = a31;
  v62 = (a9 + v51[22]);
  *v62 = a32;
  v62[1] = a33;
  v63 = v51[23];
  v64 = sub_23FFD8F6C();
  (*(*(v64 - 8) + 32))(a9 + v63, a34, v64);
  v65 = (a9 + v51[24]);
  *v65 = a35;
  v65[1] = a36;
  v66 = (a9 + v51[25]);
  *v66 = a37;
  v66[1] = a38;
  v67 = (a9 + v51[26]);
  *v67 = a39;
  v67[1] = a40;
  v68 = (a9 + v51[27]);
  *v68 = a41;
  v68[1] = a42;
  *(a9 + v51[28]) = a43;
  *(a9 + v51[29]) = a44;
  v69 = a9 + v51[30];
  *v69 = a45;
  v69[8] = a46 & 1;
  v70 = a9 + v51[31];
  *v70 = a47;
  v70[8] = a48 & 1;
  sub_23FF6832C(a49, a9 + v51[32]);
  v71 = a9 + v51[33];

  return sub_23FF6832C(a50, v71);
}

uint64_t ExceptionRequestMetadata.jsonData()()
{
  v0 = sub_23FFD8E1C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23FFD8E0C();
  type metadata accessor for ExceptionRequestMetadata();
  sub_23FFD0A1C(&qword_27E3A3288, type metadata accessor for ExceptionRequestMetadata);
  v3 = sub_23FFD8DFC();

  return v3;
}

uint64_t static ExceptionRequestMetadata.from(jsonData:)()
{
  v0 = sub_23FFD8DEC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23FFD8DDC();
  type metadata accessor for ExceptionRequestMetadata();
  sub_23FFD0A1C(&qword_27E3A32A8, type metadata accessor for ExceptionRequestMetadata);
  sub_23FFD8DCC();
}

uint64_t ExceptionRequestMetadata.dictionary()()
{
  v23[4] = *MEMORY[0x277D85DE8];
  v1 = sub_23FFD8E1C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_23FFD8E0C();
  type metadata accessor for ExceptionRequestMetadata();
  sub_23FFD0A1C(&qword_27E3A3288, type metadata accessor for ExceptionRequestMetadata);
  v4 = sub_23FFD8DFC();
  if (v0)
  {
    goto LABEL_2;
  }

  v8 = v4;
  v9 = v5;
  v10 = objc_opt_self();
  v11 = sub_23FFD8F8C();
  v22[0] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:v22];

  v13 = v22[0];
  if (!v12)
  {
    v14 = v13;
    sub_23FFD8F4C();

    swift_willThrow();
    sub_23FF62F84(v8, v9);
LABEL_2:

    goto LABEL_3;
  }

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B68, &qword_23FFEA148);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_23FF62F84(v8, v9);

    result = v21;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B70, &unk_23FFEA150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23FFDD040;
    v16 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_23FFD935C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v17;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000023FFEC6F0;
    sub_23FF8D940(inited);
    swift_setDeallocating();
    sub_23FF64248(inited + 32, &qword_27E3A31D8, &qword_23FFDF308);
    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v19 = sub_23FFD933C();
    v20 = sub_23FFD92FC();

    [v18 initWithDomain:v19 code:1 userInfo:v20];

    swift_willThrow();
    sub_23FF62F84(v8, v9);

    result = __swift_destroy_boxed_opaque_existential_1(v23);
  }

LABEL_3:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static ExceptionRequestMetadata.from(dictionary:)()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_23FFD92FC();
  v13[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v13];

  v3 = v13[0];
  if (v2)
  {
    v4 = sub_23FFD8F9C();
    v6 = v5;

    v7 = sub_23FFD8DEC();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_23FFD8DDC();
    type metadata accessor for ExceptionRequestMetadata();
    sub_23FFD0A1C(&qword_27E3A32A8, type metadata accessor for ExceptionRequestMetadata);
    sub_23FFD8DCC();

    result = sub_23FF62F84(v4, v6);
  }

  else
  {
    v11 = v3;
    sub_23FFD8F4C();

    result = swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23FFCE960(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x496D657449707061;
      break;
    case 2:
      result = 0x6973726556707061;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
    case 14:
      result = 0x7562697274736964;
      break;
    case 7:
      result = 0x65706F6C65766564;
      break;
    case 8:
      result = 0x65706F6C65766564;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x7070416265577369;
      break;
    case 11:
      result = 0x6972747369447369;
      break;
    case 12:
      result = 0x6D614E72656B7361;
      break;
    case 13:
      result = 0x6E69746152656761;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x49746E756F636361;
      break;
    case 19:
      result = 7107189;
      break;
    case 20:
      result = 0x6B6F54687475416FLL;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0x4449746E65696C63;
      break;
    case 23:
      result = 0xD000000000000019;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
      result = 0xD00000000000001CLL;
      break;
    case 27:
      result = 0xD00000000000001DLL;
      break;
    case 28:
      result = 0x7265727265666572;
      break;
    case 29:
      result = 0x6572616853707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23FFCECD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFD0F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFCED04(uint64_t a1)
{
  v2 = sub_23FFD09C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFCED40(uint64_t a1)
{
  v2 = sub_23FFD09C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExceptionRequestMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B78, &qword_23FFEA160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v78 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD09C8();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v78) = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v78) = 1;
    sub_23FFD993C();
    v14 = v3[3];
    LOBYTE(v78) = 2;
    sub_23FFD993C();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v78) = 3;
    sub_23FFD98EC();
    v17 = type metadata accessor for ExceptionRequestMetadata();
    v18 = v17[8];
    LOBYTE(v78) = 4;
    sub_23FFD8F6C();
    sub_23FFD0A1C(&qword_27E3A2438, MEMORY[0x277CC9260]);
    sub_23FFD98CC();
    v19 = (v3 + v17[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v78) = 5;
    sub_23FFD98EC();
    v22 = (v3 + v17[10]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v78) = 6;
    sub_23FFD98EC();
    v25 = (v3 + v17[11]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v78) = 7;
    sub_23FFD98EC();
    v28 = (v3 + v17[12]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v78) = 8;
    sub_23FFD98EC();
    v31 = v17[13];
    LOBYTE(v78) = 9;
    sub_23FFD98CC();
    v32 = *(v3 + v17[14]);
    LOBYTE(v78) = 10;
    sub_23FFD98FC();
    v33 = *(v3 + v17[15]);
    LOBYTE(v78) = 11;
    sub_23FFD98FC();
    v34 = (v3 + v17[16]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v78) = 12;
    sub_23FFD98EC();
    v37 = (v3 + v17[17]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v78) = 13;
    sub_23FFD98EC();
    v40 = (v3 + v17[18]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v78) = 14;
    sub_23FFD98EC();
    v43 = (v3 + v17[19]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v78) = 15;
    sub_23FFD989C();
    v46 = (v3 + v17[20]);
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v78) = 16;
    sub_23FFD989C();
    v49 = (v3 + v17[21]);
    v50 = *v49;
    v51 = v49[1];
    LOBYTE(v78) = 17;
    sub_23FFD98EC();
    v52 = (v3 + v17[22]);
    v53 = *v52;
    v54 = v52[1];
    LOBYTE(v78) = 18;
    sub_23FFD98EC();
    v55 = v17[23];
    LOBYTE(v78) = 19;
    sub_23FFD991C();
    v56 = (v3 + v17[24]);
    v57 = *v56;
    v58 = v56[1];
    LOBYTE(v78) = 20;
    sub_23FFD989C();
    v59 = (v3 + v17[25]);
    v60 = *v59;
    v61 = v59[1];
    LOBYTE(v78) = 21;
    sub_23FFD989C();
    v62 = (v3 + v17[26]);
    v63 = *v62;
    v64 = v62[1];
    LOBYTE(v78) = 22;
    sub_23FFD989C();
    v65 = (v3 + v17[27]);
    v66 = v65[1];
    v78 = *v65;
    v79 = v66;
    v80 = 23;
    sub_23FFA7094(v78, v66);
    sub_23FF70D64();
    sub_23FFD98CC();
    sub_23FF6EC6C(v78, v79);
    v67 = *(v3 + v17[28]);
    LOBYTE(v78) = 24;
    sub_23FFD98AC();
    v68 = *(v3 + v17[29]);
    LOBYTE(v78) = 25;
    sub_23FFD98FC();
    v69 = v3 + v17[30];
    v70 = *v69;
    v71 = v69[8];
    LOBYTE(v78) = 26;
    sub_23FFD98DC();
    v72 = v3 + v17[31];
    v73 = *v72;
    v74 = v72[8];
    LOBYTE(v78) = 27;
    sub_23FFD98DC();
    v75 = v17[32];
    LOBYTE(v78) = 28;
    sub_23FFD98CC();
    v76 = v17[33];
    LOBYTE(v78) = 29;
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ExceptionRequestMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v3 = sub_23FFD8F6C();
  v152 = *(v3 - 8);
  v153 = v3;
  v4 = *(v152 + 64);
  MEMORY[0x28223BE20](v3);
  v148 = &v143[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v150 = &v143[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v149 = &v143[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v143[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v143[-v15];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B88, &qword_23FFEA168);
  v154 = *(v156 - 8);
  v17 = *(v154 + 64);
  MEMORY[0x28223BE20](v156);
  v19 = &v143[-v18];
  v20 = type metadata accessor for ExceptionRequestMetadata();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v143[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD09C8();
  v155 = v19;
  v25 = v157;
  sub_23FFD9AAC();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v16;
  v27 = v154;
  v157 = a1;
  v146 = v20;
  v147 = v23;
  LOBYTE(v158) = 0;
  v28 = sub_23FFD980C();
  v30 = v147;
  *v147 = v28;
  v30[1] = v31;
  LOBYTE(v158) = 1;
  v30[2] = sub_23FFD985C();
  LOBYTE(v158) = 2;
  v30[3] = sub_23FFD985C();
  LOBYTE(v158) = 3;
  v30[4] = sub_23FFD980C();
  v30[5] = v54;
  LOBYTE(v158) = 4;
  sub_23FFD0A1C(&qword_27E3A2458, MEMORY[0x277CC9260]);
  sub_23FFD97EC();
  v55 = v146;
  sub_23FF6832C(v26, v30 + v146[8]);
  LOBYTE(v158) = 5;
  v56 = sub_23FFD980C();
  v57 = (v30 + v55[9]);
  *v57 = v56;
  v57[1] = v58;
  LOBYTE(v158) = 6;
  v59 = sub_23FFD980C();
  v60 = (v30 + v55[10]);
  *v60 = v59;
  v60[1] = v61;
  LOBYTE(v158) = 7;
  v62 = sub_23FFD980C();
  v63 = (v30 + v146[11]);
  *v63 = v62;
  v63[1] = v64;
  LOBYTE(v158) = 8;
  v65 = sub_23FFD980C();
  v145 = 0;
  v67 = (v147 + v146[12]);
  *v67 = v65;
  v67[1] = v66;
  LOBYTE(v158) = 9;
  v68 = v145;
  sub_23FFD97EC();
  v145 = v68;
  if (v68)
  {
    (*(v27 + 8))(v155, v156);
    v69 = 0;
    memset(v144, 0, sizeof(v144));
    v159 = 0;
    LODWORD(v148) = 0;
    LODWORD(v149) = 0;
    LODWORD(v150) = 0;
    LODWORD(v151) = 0;
    LODWORD(v154) = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    v70 = 0;
  }

  else
  {
    sub_23FF6832C(v14, v147 + v146[13]);
    LOBYTE(v158) = 10;
    v71 = v145;
    v72 = sub_23FFD981C();
    v145 = v71;
    if (v71)
    {
      goto LABEL_37;
    }

    *(v147 + v146[14]) = v72 & 1;
    LOBYTE(v158) = 11;
    v73 = v145;
    v74 = sub_23FFD981C();
    v145 = v73;
    if (v73 || (*(v147 + v146[15]) = v74 & 1, LOBYTE(v158) = 12, v75 = v145, v76 = sub_23FFD980C(), (v145 = v75) != 0))
    {
LABEL_37:
      (*(v27 + 8))(v155, v156);
      memset(v144, 0, sizeof(v144));
      v159 = 0;
      LODWORD(v148) = 0;
      LODWORD(v149) = 0;
      LODWORD(v150) = 0;
      LODWORD(v151) = 0;
      LODWORD(v154) = 0;
      LODWORD(v155) = 0;
      LODWORD(v156) = 0;
      v70 = 0;
      v69 = 1;
    }

    else
    {
      v78 = (v147 + v146[16]);
      *v78 = v76;
      v78[1] = v77;
      LOBYTE(v158) = 13;
      v79 = v145;
      v80 = sub_23FFD980C();
      v145 = v79;
      if (v79)
      {
        (*(v27 + 8))(v155, v156);
        *&v144[4] = 0;
        v159 = 0;
        LODWORD(v148) = 0;
        LODWORD(v149) = 0;
        LODWORD(v150) = 0;
        LODWORD(v151) = 0;
        LODWORD(v154) = 0;
        LODWORD(v155) = 0;
        LODWORD(v156) = 0;
        v70 = 0;
        v69 = 1;
        *v144 = 1;
      }

      else
      {
        v82 = (v147 + v146[17]);
        *v82 = v80;
        v82[1] = v81;
        LOBYTE(v158) = 14;
        v83 = v145;
        v84 = sub_23FFD980C();
        v145 = v83;
        if (v83)
        {
          (*(v27 + 8))(v155, v156);
          v159 = 0;
          LODWORD(v148) = 0;
          LODWORD(v149) = 0;
          LODWORD(v150) = 0;
          LODWORD(v151) = 0;
          LODWORD(v154) = 0;
          LODWORD(v155) = 0;
          LODWORD(v156) = 0;
          v70 = 0;
          v69 = 1;
          *v144 = 1;
          *&v144[4] = 1;
        }

        else
        {
          v86 = (v147 + v146[18]);
          *v86 = v84;
          v86[1] = v85;
          LOBYTE(v158) = 15;
          v87 = v145;
          v88 = sub_23FFD97BC();
          v145 = v87;
          if (v87)
          {
            (*(v27 + 8))(v155, v156);
            v159 = 0;
            LODWORD(v148) = 0;
            LODWORD(v149) = 0;
            LODWORD(v150) = 0;
            LODWORD(v151) = 0;
            LODWORD(v154) = 0;
            LODWORD(v155) = 0;
            LODWORD(v156) = 0;
            v70 = 0;
            v69 = 1;
            *v144 = 0x100000001;
            *&v144[8] = 1;
          }

          else
          {
            v90 = (v147 + v146[19]);
            *v90 = v88;
            v90[1] = v89;
            LOBYTE(v158) = 16;
            v91 = v145;
            v92 = sub_23FFD97BC();
            v145 = v91;
            if (v91)
            {
              (*(v27 + 8))(v155, v156);
              LODWORD(v148) = 0;
              LODWORD(v149) = 0;
              LODWORD(v150) = 0;
              LODWORD(v151) = 0;
              LODWORD(v154) = 0;
              LODWORD(v155) = 0;
              LODWORD(v156) = 0;
              v70 = 0;
              v69 = 1;
              *v144 = 0x100000001;
              *&v144[8] = 1;
              v159 = 1;
            }

            else
            {
              v94 = (v147 + v146[20]);
              *v94 = v92;
              v94[1] = v93;
              LOBYTE(v158) = 17;
              v95 = v145;
              v96 = sub_23FFD980C();
              v145 = v95;
              if (v95)
              {
                (*(v27 + 8))(v155, v156);
                LODWORD(v149) = 0;
                LODWORD(v150) = 0;
                LODWORD(v151) = 0;
                LODWORD(v154) = 0;
                LODWORD(v155) = 0;
                LODWORD(v156) = 0;
                v70 = 0;
                v69 = 1;
                *v144 = 0x100000001;
                *&v144[8] = 1;
                v159 = 1;
                LODWORD(v148) = 1;
              }

              else
              {
                v98 = (v147 + v146[21]);
                *v98 = v96;
                v98[1] = v97;
                LOBYTE(v158) = 18;
                v99 = v145;
                v100 = sub_23FFD980C();
                v145 = v99;
                if (v99)
                {
                  (*(v27 + 8))(v155, v156);
                  LODWORD(v150) = 0;
                  LODWORD(v151) = 0;
                  LODWORD(v154) = 0;
                  LODWORD(v155) = 0;
                  LODWORD(v156) = 0;
                  v70 = 0;
                  v69 = 1;
                  *v144 = 0x100000001;
                  *&v144[8] = 1;
                  v159 = 1;
                  LODWORD(v148) = 1;
                  LODWORD(v149) = 1;
                }

                else
                {
                  v102 = (v147 + v146[22]);
                  *v102 = v100;
                  v102[1] = v101;
                  LOBYTE(v158) = 19;
                  v103 = v145;
                  sub_23FFD983C();
                  v145 = v103;
                  if (v103)
                  {
                    (*(v27 + 8))(v155, v156);
                    LODWORD(v151) = 0;
                    LODWORD(v154) = 0;
                    LODWORD(v155) = 0;
                    LODWORD(v156) = 0;
                    v70 = 0;
                    v69 = 1;
                    *v144 = 0x100000001;
                    *&v144[8] = 1;
                    v159 = 1;
                    LODWORD(v148) = 1;
                    LODWORD(v149) = 1;
                    LODWORD(v150) = 1;
                  }

                  else
                  {
                    (*(v152 + 32))(v147 + v146[23], v148, v153);
                    LOBYTE(v158) = 20;
                    v104 = v145;
                    v105 = sub_23FFD97BC();
                    v145 = v104;
                    if (v104)
                    {
                      (*(v27 + 8))(v155, v156);
                      LODWORD(v154) = 0;
                      LODWORD(v155) = 0;
                      LODWORD(v156) = 0;
                      v70 = 0;
                      v69 = 1;
                      *v144 = 0x100000001;
                      *&v144[8] = 1;
                      v159 = 1;
                      LODWORD(v148) = 1;
                      LODWORD(v149) = 1;
                      LODWORD(v150) = 1;
                      LODWORD(v151) = 1;
                    }

                    else
                    {
                      v107 = (v147 + v146[24]);
                      *v107 = v105;
                      v107[1] = v106;
                      LOBYTE(v158) = 21;
                      v108 = v145;
                      v109 = sub_23FFD97BC();
                      v145 = v108;
                      if (v108)
                      {
                        (*(v27 + 8))(v155, v156);
                        LODWORD(v155) = 0;
                        LODWORD(v156) = 0;
                        v70 = 0;
                        v69 = 1;
                        *v144 = 0x100000001;
                        *&v144[8] = 1;
                        v159 = 1;
                        LODWORD(v148) = 1;
                        LODWORD(v149) = 1;
                        LODWORD(v150) = 1;
                        LODWORD(v151) = 1;
                        LODWORD(v154) = 1;
                      }

                      else
                      {
                        v111 = (v147 + v146[25]);
                        *v111 = v109;
                        v111[1] = v110;
                        LOBYTE(v158) = 22;
                        v112 = v145;
                        v113 = sub_23FFD97BC();
                        v145 = v112;
                        if (v112)
                        {
                          (*(v27 + 8))(v155, v156);
                          LODWORD(v156) = 0;
                          v70 = 0;
                          v69 = 1;
                          *v144 = 0x100000001;
                          *&v144[8] = 1;
                          v159 = 1;
                          LODWORD(v148) = 1;
                          LODWORD(v149) = 1;
                          LODWORD(v150) = 1;
                          LODWORD(v151) = 1;
                          LODWORD(v154) = 1;
                          LODWORD(v155) = 1;
                        }

                        else
                        {
                          v115 = (v147 + v146[26]);
                          *v115 = v113;
                          v115[1] = v114;
                          v160 = 23;
                          sub_23FF71690();
                          v116 = v145;
                          sub_23FFD97EC();
                          v145 = v116;
                          if (v116)
                          {
                            (*(v27 + 8))(v155, v156);
                            v70 = 0;
                            v69 = 1;
                            *v144 = 0x100000001;
                            *&v144[8] = 1;
                            v159 = 1;
                            LODWORD(v148) = 1;
                            LODWORD(v149) = 1;
                            LODWORD(v150) = 1;
                            LODWORD(v151) = 1;
                            LODWORD(v154) = 1;
                            LODWORD(v155) = 1;
                            LODWORD(v156) = 1;
                          }

                          else
                          {
                            *(v147 + v146[27]) = v158;
                            LOBYTE(v158) = 24;
                            v117 = v145;
                            v118 = sub_23FFD97CC();
                            v145 = v117;
                            if (!v117)
                            {
                              *(v147 + v146[28]) = v118;
                              LOBYTE(v158) = 25;
                              v119 = v145;
                              v120 = sub_23FFD981C();
                              v145 = v119;
                              if (!v119)
                              {
                                *(v147 + v146[29]) = v120 & 1;
                                LOBYTE(v158) = 26;
                                v121 = v145;
                                v122 = sub_23FFD97FC();
                                if (!v121)
                                {
                                  v124 = v147 + v146[30];
                                  *v124 = v122;
                                  v124[8] = v123 & 1;
                                  LOBYTE(v158) = 27;
                                  v125 = sub_23FFD97FC();
                                  v126 = v147 + v146[31];
                                  *v126 = v125;
                                  v126[8] = v127 & 1;
                                  LOBYTE(v158) = 28;
                                  sub_23FFD97EC();
                                  sub_23FF6832C(v149, v147 + v146[32]);
                                  LOBYTE(v158) = 29;
                                  sub_23FFD97EC();
                                  (*(v27 + 8))(v155, v156);
                                  v142 = v147;
                                  sub_23FF6832C(v150, v147 + v146[33]);
                                  sub_23FFD0A64(v142, v151);
                                  __swift_destroy_boxed_opaque_existential_1(v157);
                                  return sub_23FFD0AC8(v142);
                                }

                                (*(v27 + 8))(v155, v156);
                                __swift_destroy_boxed_opaque_existential_1(v157);
                                v32 = v147;
                                v128 = v147[1];

                                v129 = v32[5];

                                v130 = v146;
                                sub_23FF64248(v32 + v146[8], &qword_27E3A2418, &qword_23FFDADC0);
                                v131 = *(v32 + v130[9] + 8);

                                v132 = *(v32 + v130[10] + 8);

                                v133 = *(v32 + v130[11] + 8);

                                v134 = *(v32 + v130[12] + 8);

                                v44 = v130;
                                sub_23FF64248(v32 + v130[13], &qword_27E3A2418, &qword_23FFDADC0);
                                v135 = *(v32 + v130[16] + 8);

                                v136 = *(v32 + v130[17] + 8);

                                v137 = *(v32 + v130[18] + 8);

                                v138 = *(v32 + v130[19] + 8);

                                v139 = *(v32 + v130[20] + 8);

                                v140 = *(v32 + v130[21] + 8);

                                v141 = *(v32 + v130[22] + 8);

                                v45 = 1;
                                v38 = 1;
                                v48 = 1;
                                LOBYTE(v37) = 1;
                                goto LABEL_13;
                              }
                            }

                            (*(v27 + 8))(v155, v156);
                            v69 = 1;
                            *v144 = 0x100000001;
                            *&v144[8] = 1;
                            v159 = 1;
                            LODWORD(v148) = 1;
                            LODWORD(v149) = 1;
                            LODWORD(v150) = 1;
                            LODWORD(v151) = 1;
                            LODWORD(v154) = 1;
                            LODWORD(v155) = 1;
                            LODWORD(v156) = 1;
                            v70 = 1;
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
  }

  __swift_destroy_boxed_opaque_existential_1(v157);
  v32 = v147;
  v33 = v147[1];

  v34 = v32[5];

  v44 = v146;
  sub_23FF64248(v32 + v146[8], &qword_27E3A2418, &qword_23FFDADC0);
  v45 = v70;
  v35 = *(v32 + v44[9] + 8);

  v46 = *(v32 + v44[10] + 8);

  v36 = *(v32 + v44[11] + 8);

  v37 = v154;
  v47 = *(v32 + v44[12] + 8);

  v48 = v155;
  if (v69)
  {
    result = sub_23FF64248(v32 + v44[13], &qword_27E3A2418, &qword_23FFDADC0);
    if (v144[0])
    {
      goto LABEL_20;
    }

LABEL_6:
    v38 = v156;
    if (!*&v144[4])
    {
      goto LABEL_21;
    }

LABEL_7:
    v39 = *(v32 + v44[17] + 8);

    if (v144[8])
    {
      goto LABEL_22;
    }

LABEL_8:
    if (!v159)
    {
      goto LABEL_23;
    }

LABEL_9:
    v40 = *(v32 + v44[19] + 8);

    if (v148)
    {
      goto LABEL_24;
    }

LABEL_10:
    if (!v149)
    {
      goto LABEL_25;
    }

LABEL_11:
    v41 = *(v32 + v44[21] + 8);

    if (v150)
    {
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (!*v144)
  {
    goto LABEL_6;
  }

LABEL_20:
  v49 = *(v32 + v44[16] + 8);

  v38 = v156;
  if (v144[4])
  {
    goto LABEL_7;
  }

LABEL_21:
  if (!*&v144[8])
  {
    goto LABEL_8;
  }

LABEL_22:
  v50 = *(v32 + v44[18] + 8);

  if (v159)
  {
    goto LABEL_9;
  }

LABEL_23:
  if (!v148)
  {
    goto LABEL_10;
  }

LABEL_24:
  v51 = *(v32 + v44[20] + 8);

  if (v149)
  {
    goto LABEL_11;
  }

LABEL_25:
  if (!v150)
  {
LABEL_12:
    if (!v151)
    {
      goto LABEL_27;
    }

LABEL_13:
    result = (*(v152 + 8))(v32 + v44[23], v153);
    if ((v37 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_14:
    v42 = *(v32 + v44[24] + 8);

    if (v48)
    {
      goto LABEL_29;
    }

LABEL_15:
    if (!v38)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

LABEL_26:
  v52 = *(v32 + v44[22] + 8);

  if (v151)
  {
    goto LABEL_13;
  }

LABEL_27:
  if (v37)
  {
    goto LABEL_14;
  }

LABEL_28:
  if (!v48)
  {
    goto LABEL_15;
  }

LABEL_29:
  v53 = *(v32 + v44[25] + 8);

  if ((v38 & 1) == 0)
  {
LABEL_30:
    if (v45)
    {
      return sub_23FF6EC6C(*(v32 + v44[27]), *(v32 + v44[27] + 8));
    }

    return result;
  }

LABEL_16:
  v43 = *(v32 + v44[26] + 8);

  if (v45)
  {
    return sub_23FF6EC6C(*(v32 + v44[27]), *(v32 + v44[27] + 8));
  }

  return result;
}

unint64_t sub_23FFD09C8()
{
  result = qword_27E3A4B80;
  if (!qword_27E3A4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4B80);
  }

  return result;
}

uint64_t sub_23FFD0A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23FFD0A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExceptionRequestMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFD0AC8(uint64_t a1)
{
  v2 = type metadata accessor for ExceptionRequestMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23FFD0B4C()
{
  sub_23FF59878();
  if (v0 <= 0x3F)
  {
    sub_23FF9D0DC(319, &qword_27E3A2478);
    if (v1 <= 0x3F)
    {
      sub_23FFD8F6C();
      if (v2 <= 0x3F)
      {
        sub_23FF9D0DC(319, &qword_27E3A3B98);
        if (v3 <= 0x3F)
        {
          sub_23FF9D0DC(319, &qword_27E3A4BA0);
          if (v4 <= 0x3F)
          {
            sub_23FF9D0DC(319, &qword_27E3A4BA8);
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

uint64_t getEnumTagSinglePayload for ExceptionRequestMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExceptionRequestMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FFD0E2C()
{
  result = qword_27E3A4BB0;
  if (!qword_27E3A4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4BB0);
  }

  return result;
}

unint64_t sub_23FFD0E84()
{
  result = qword_27E3A4BB8;
  if (!qword_27E3A4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4BB8);
  }

  return result;
}

unint64_t sub_23FFD0EDC()
{
  result = qword_27E3A4BC0;
  if (!qword_27E3A4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4BC0);
  }

  return result;
}

uint64_t sub_23FFD0F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D657449707061 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEC00000044496E6FLL || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC710 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF656D614E726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC730 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7070416265577369 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6972747369447369 && a2 == 0xED0000726F747562 || (sub_23FFD996C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D614E72656B7361 && a2 == 0xE900000000000065 || (sub_23FFD996C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xEF676E6972745367 || (sub_23FFD996C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF65707954726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC750 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEC770 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC790 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_23FFD996C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEAE60 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023FFEBA70 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEC7B0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEC7D0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023FFEC7F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC810 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x7265727265666572 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255)
  {

    return 29;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t AppVersion.init(appleItemID:appleVersionID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppVersion.description.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = sub_23FFD995C();
  MEMORY[0x245CB3B50](58, 0xE100000000000000);
  v2 = sub_23FFD995C();
  MEMORY[0x245CB3B50](v2);

  return v5;
}

uint64_t sub_23FFD1980()
{
  if (*v0)
  {
    result = 0x726556656C707061;
  }

  else
  {
    result = 0x657449656C707061;
  }

  *v0;
  return result;
}

uint64_t sub_23FFD19D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973)
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

uint64_t sub_23FFD1AB8(uint64_t a1)
{
  v2 = sub_23FFD1CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFD1AF4(uint64_t a1)
{
  v2 = sub_23FFD1CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BC8, &qword_23FFEA3D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD1CC0();
  sub_23FFD9ACC();
  v14 = 0;
  sub_23FFD993C();
  if (!v2)
  {
    v13 = 1;
    sub_23FFD993C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23FFD1CC0()
{
  result = qword_27E3A4BD0;
  if (!qword_27E3A4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4BD0);
  }

  return result;
}

uint64_t AppVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BD8, &unk_23FFEA3D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD1CC0();
  sub_23FFD9AAC();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_23FFD985C();
    v15 = 1;
    v12 = sub_23FFD985C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AutomaticUpdate.alternativeDistributionPackage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutomaticUpdate() + 20);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AutomaticUpdate()
{
  result = qword_27E3A4BF8;
  if (!qword_27E3A4BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutomaticUpdate.account.getter()
{
  v1 = (v0 + *(type metadata accessor for AutomaticUpdate() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AutomaticUpdate.installVerificationToken.getter()
{
  v1 = (v0 + *(type metadata accessor for AutomaticUpdate() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AutomaticUpdate.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutomaticUpdate() + 32);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t AutomaticUpdate.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutomaticUpdate() + 32);

  return sub_23FF8ADF4(a1, v3);
}

uint64_t AutomaticUpdate.init(appleItemID:alternativeDistributionPackage:account:installVerificationToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for AutomaticUpdate();
  v14 = v13[8];
  v15 = sub_23FFD8F6C();
  v16 = *(v15 - 8);
  v21 = *(v16 + 56);
  v21(&a7[v14], 1, 1, v15);
  *a7 = a1;
  (*(v16 + 32))(&a7[v13[5]], a2, v15);
  v17 = &a7[v13[6]];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &a7[v13[7]];
  *v18 = a5;
  *(v18 + 1) = a6;
  sub_23FF64248(&a7[v14], &qword_27E3A2418, &qword_23FFDADC0);

  return (v21)(&a7[v14], 1, 1, v15);
}

unint64_t sub_23FFD2258()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x746E756F636361;
  v4 = 0x6572616853707061;
  if (v1 == 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23FFD2308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFD5984(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFD2330(uint64_t a1)
{
  v2 = sub_23FFD25EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFD236C(uint64_t a1)
{
  v2 = sub_23FFD25EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutomaticUpdate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BE0, &qword_23FFEA3E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD25EC();
  sub_23FFD9ACC();
  v11 = *v3;
  v27 = 0;
  sub_23FFD993C();
  if (!v2)
  {
    v12 = type metadata accessor for AutomaticUpdate();
    v13 = v12[5];
    v26 = 1;
    sub_23FFD8F6C();
    sub_23FF82E4C(&qword_27E3A2438);
    sub_23FFD991C();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    v25 = 2;
    sub_23FFD98EC();
    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    v24 = 3;
    sub_23FFD98EC();
    v20 = v12[8];
    v23 = 4;
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23FFD25EC()
{
  result = qword_27E3A4BE8;
  if (!qword_27E3A4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4BE8);
  }

  return result;
}

uint64_t AutomaticUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = v35 - v5;
  v6 = sub_23FFD8F6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BF0, &qword_23FFEA3F0);
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - v13;
  v15 = type metadata accessor for AutomaticUpdate();
  v16 = *(*(v15 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = *(v7 + 56);
  v42 = *(v17 + 32);
  v43 = (v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19(v43 + v42, 1, 1, v6);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD25EC();
  v40 = v14;
  v21 = v41;
  sub_23FFD9AAC();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23FF64248(v43 + v42, &qword_27E3A2418, &qword_23FFDADC0);
  }

  else
  {
    v22 = v10;
    v41 = a1;
    v48 = 0;
    v23 = v39;
    v24 = sub_23FFD985C();
    v25 = v43;
    *v43 = v24;
    v47 = 1;
    v26 = sub_23FF82E4C(&qword_27E3A2458);
    sub_23FFD983C();
    v35[1] = v26;
    (*(v7 + 32))(v25 + v15[5], v22, v6);
    v46 = 2;
    v27 = sub_23FFD980C();
    v28 = (v25 + v15[6]);
    *v28 = v27;
    v28[1] = v29;
    v45 = 3;
    v30 = sub_23FFD980C();
    v31 = v41;
    v32 = (v25 + v15[7]);
    *v32 = v30;
    v32[1] = v33;
    v44 = 4;
    sub_23FFD97EC();
    (*(v38 + 8))(v40, v23);
    sub_23FF8ADF4(v37, v25 + v42);
    sub_23FFD2B50(v25, v36);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_23FFD2BB4(v25);
  }
}

uint64_t sub_23FFD2B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFD2BB4(uint64_t a1)
{
  v2 = type metadata accessor for AutomaticUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MarketplaceAppExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject();
  result = sub_23FFD5C28(v1, type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject, type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject);
  *a1 = result;
  return result;
}

uint64_t sub_23FFD2C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  v28 = *v5;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_23FFD8DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = sub_23FFD949C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v28;
  *(v19 + 4) = *((v7 & v28) + 0x50);
  *(v19 + 5) = *((v7 & v20) + 0x58);
  *(v19 + 6) = v5;
  (*(v9 + 32))(&v19[v17], v11, v8);
  v21 = &v19[v18];
  v22 = v30;
  *v21 = v29;
  *(v21 + 1) = v22;
  v23 = &v19[(v18 + 23) & 0xFFFFFFFFFFFFFFF8];
  v24 = v32;
  *v23 = v31;
  *(v23 + 1) = v24;
  v25 = v5;

  sub_23FF91244(0, 0, v15, &unk_23FFEA9F8, v19);
}

uint64_t sub_23FFD2F08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v21;
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0x60);
  v13 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v14 = *(v13 + 16);
  v15 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v19 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  v8[4] = v17;
  *v17 = v8;
  v17[1] = sub_23FFD30A0;

  return v19(a5, a6, a7, v15, v13);
}

uint64_t sub_23FFD30A0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_23FFD31A0, 0, 0);
}

uint64_t sub_23FFD31A0()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2();
}

void sub_23FFD3248(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_23FFD92FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_23FFD32E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = *((*MEMORY[0x277D85000] & *a4) + 0x60);
  v10 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v11 = *(v10 + 32);
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v16 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  v7[4] = v14;
  *v14 = v7;
  v14[1] = sub_23FFD3458;

  return v16(a5, v12, v10);
}

uint64_t sub_23FFD3458(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_23FFD3558, 0, 0);
}

uint64_t sub_23FFD3558()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23FFD3614(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v9 = *((*MEMORY[0x277D85000] & *a4) + 0x60);
  v10 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v11 = *(v10 + 40);
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v16 = (v11 + *v11);
  v13 = v11[1];
  v14 = swift_task_alloc();
  v7[5] = v14;
  *v14 = v7;
  v14[1] = sub_23FFD378C;

  return v16(a5, v12, v10);
}

uint64_t sub_23FFD378C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_23FFD388C, 0, 0);
}

uint64_t sub_23FFD388C()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B0, &qword_23FFDB128);
  sub_23FFD6D2C();
  sub_23FFD6DE0();
  v1 = sub_23FFD90EC();
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v1;
  v7 = v6;

  v4(v5, v7);
  sub_23FF62F84(v5, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_23FFD3A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v8[9] = *MEMORY[0x277D85000] & *a6;
  v9 = type metadata accessor for MarketplaceKitError();
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E38, &qword_23FFEA980);
  v8[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FFD3B24, 0, 0);
}

uint64_t sub_23FFD3B24()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E40, &unk_23FFEA988);
  sub_23FFD6ACC(&qword_27E3A4E48, sub_23FFD6A78);
  sub_23FFD6ACC(&qword_27E3A4E58, sub_23FFD6B44);
  sub_23FFD90DC();
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[2];
  v0[15] = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v8 = *(v3 + 80);
  v7 = *(v3 + 88);
  v12 = (*(v7 + 24) + **(v7 + 24));
  v9 = *(*(v7 + 24) + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_23FFD3D68;

  return v12(v5, v8, v7);
}

uint64_t sub_23FFD3D68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[15];

  if (v1)
  {
    v8 = sub_23FFD4048;
  }

  else
  {
    v4[18] = a1;
    v8 = sub_23FFD3EAC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23FFD3EAC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  *v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_23FFD6BE8(v1, v2);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  sub_23FFD6B98(&qword_27E3A4E68);
  sub_23FFD6B98(&qword_27E3A4E70);
  v7 = sub_23FFD90EC();
  if (v4)
  {

    return MEMORY[0x2821FEBD8](v4, "AppDistribution/MarketplaceExtension.swift", 42, 1, 128);
  }

  else
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = v7;
    v14 = v8;
    (*(v0 + 56))();
    sub_23FF62F84(v13, v14);
    sub_23FF64248(v9, &qword_27E3A4E38, &qword_23FFEA980);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_23FFD4048()
{
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24E8, &unk_23FFDB010);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  if (v5)
  {
    v9 = *(v0 + 88);

    sub_23FF51974(v9, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = *(v0 + 80);

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  sub_23FFD6B98(&qword_27E3A4E68);
  sub_23FFD6B98(&qword_27E3A4E70);
  v13 = sub_23FFD90EC();
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = v13;
  v20 = v19;
  (*(v0 + 56))();
  sub_23FF62F84(v18, v20);
  sub_23FF64248(v14, &qword_27E3A4E38, &qword_23FFEA980);

  v21 = *(v0 + 8);

  return v21();
}

id MarketplaceExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject();
  result = sub_23FFD5C28(v1, type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject, type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject);
  *a1 = result;
  return result;
}

uint64_t sub_23FFD4338(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_23FFD43D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *(*((*MEMORY[0x277D85000] & *v4) + 0x58) + 16);
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v8 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v6(a1, a2, a3, v7);
  a4();
}

uint64_t sub_23FFD44BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_23FFD8DBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a5);
  sub_23FFD8DAC();
  v18 = sub_23FFD935C();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = a1;
  a8(v16, v18, v20, a7, v21);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_23FFD4644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_23FFD949C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v16 = v5;
  v17 = a1;

  sub_23FF91244(0, 0, v13, a5, v15);
}

uint64_t sub_23FFD4768(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *MEMORY[0x277D85000] & *a4;
  return MEMORY[0x2822009F8](sub_23FFD47C4, 0, 0);
}

uint64_t sub_23FFD47C4()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2] + *((*MEMORY[0x277D85000] & *v0[2]) + 0x60);
  v4 = (*(*(v0[6] + 88) + 32))(v0[3], *(v0[6] + 80));
  v2(v4 & 1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_23FFD48B4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_23FFD497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_23FFD949C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v16 = v5;

  sub_23FF91244(0, 0, v13, a5, v15);
}

uint64_t sub_23FFD4AA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[7] = *MEMORY[0x277D85000] & *a4;
  return MEMORY[0x2822009F8](sub_23FFD4B00, 0, 0);
}

uint64_t sub_23FFD4B00()
{
  v1 = v0[3] + *((*MEMORY[0x277D85000] & *v0[3]) + 0x60);
  v2 = (*(*(v0[7] + 88) + 24))(v0[4], *(v0[7] + 80));
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B0, &qword_23FFDB128);
  sub_23FFD6D2C();
  sub_23FFD6DE0();
  v4 = sub_23FFD90EC();
  v6 = v0[5];
  v5 = v0[6];
  v7 = v4;
  v9 = v8;

  v6(v7, v9);
  sub_23FF62F84(v7, v9);
  v10 = v0[1];

  return v10();
}

uint64_t sub_23FFD4CAC(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_23FFD93EC();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a1;
  a7(v11, a6, v12);
}

uint64_t sub_23FFD4D84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_23FFD949C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = v6;
  v17[7] = a3;
  v17[8] = a4;
  sub_23FF71730(a1, a2);
  v18 = v6;

  sub_23FF91244(0, 0, v15, a6, v17);
}

uint64_t sub_23FFD4EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v8[9] = *MEMORY[0x277D85000] & *a6;
  v9 = type metadata accessor for MarketplaceKitError();
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E38, &qword_23FFEA980);
  v8[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FFD4FD4, 0, 0);
}

uint64_t sub_23FFD4FD4()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E40, &unk_23FFEA988);
  sub_23FFD6ACC(&qword_27E3A4E48, sub_23FFD6A78);
  sub_23FFD6ACC(&qword_27E3A4E58, sub_23FFD6B44);
  sub_23FFD90DC();
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[2];
  v0[15] = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  v8 = *(v3 + 80);
  v7 = *(v3 + 88);
  v12 = (*(v7 + 40) + **(v7 + 40));
  v9 = *(*(v7 + 40) + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_23FFD5218;

  return v12(v5, v8, v7);
}

uint64_t sub_23FFD5218(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[15];

  if (v1)
  {
    v8 = sub_23FFD54F8;
  }

  else
  {
    v4[18] = a1;
    v8 = sub_23FFD535C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23FFD535C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  *v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_23FFD6BE8(v1, v2);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  sub_23FFD6B98(&qword_27E3A4E68);
  sub_23FFD6B98(&qword_27E3A4E70);
  v7 = sub_23FFD90EC();
  if (v4)
  {

    return MEMORY[0x2821FEBD8](v4, "AppDistribution/MarketplaceExtension.swift", 42, 1, 204);
  }

  else
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = v7;
    v14 = v8;
    (*(v0 + 56))();
    sub_23FF62F84(v13, v14);
    sub_23FF64248(v9, &qword_27E3A4E38, &qword_23FFEA980);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_23FFD54F8()
{
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24E8, &unk_23FFDB010);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  if (v5)
  {
    v9 = *(v0 + 88);

    sub_23FF51974(v9, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = *(v0 + 80);

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  sub_23FFD6B98(&qword_27E3A4E68);
  sub_23FFD6B98(&qword_27E3A4E70);
  v13 = sub_23FFD90EC();
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = v13;
  v20 = v19;
  (*(v0 + 56))();
  sub_23FF62F84(v18, v20);
  sub_23FF64248(v14, &qword_27E3A4E38, &qword_23FFEA980);

  v21 = *(v0 + 8);

  return v21();
}

void sub_23FFD5758(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v17 = a1;
  v13 = sub_23FFD8F9C();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  a7(v13, v15, a6, v16);

  sub_23FF62F84(v13, v15);
}

id sub_23FFD58A8(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23FFD5984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023FFEAE80 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEAE60 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_23FFD5B4C(uint64_t a1, uint64_t (*a2)(void, uint64_t, void))
{
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  (*(*(v6 - 8) + 16))(&v2[*((*MEMORY[0x277D85000] & *v2) + 0x60)], a1, v6);
  v7 = a2(0, v6, *((v5 & v4) + 0x58));
  v9.receiver = v2;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_23FFD5CB4()
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

uint64_t dispatch thunk of MarketplaceAppExtension.additionalHeaders(for:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23FFD74C0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MarketplaceAppExtension.automaticUpdates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23FFD5FC0;

  return v11(a1, a2, a3);
}

uint64_t sub_23FFD5FC0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MarketplaceAppExtension.requestFailed(response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23FFD61E4;

  return v11(a1, a2, a3);
}

uint64_t sub_23FFD61E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MarketplaceAppExtension.availableAppVersions(forAppleItemIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23FFD61E4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MarketplaceExtension.automaticUpdates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23FFD74B8;

  return v11(a1, a2, a3);
}

uint64_t sub_23FFD6584(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_15AppDistribution011MarketplaceA9ExtensionRzlAA01_cD13ConfigurationVyxG0D10Foundation0adE0HPyHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_23FFD66AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23FFD66F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_23FFD6754()
{
  result = qword_27E3A4E08;
  if (!qword_27E3A4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E08);
  }

  return result;
}

unint64_t sub_23FFD67AC()
{
  result = qword_27E3A4E10;
  if (!qword_27E3A4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E10);
  }

  return result;
}

uint64_t sub_23FFD6800(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23FFD6840()
{
  result = qword_27E3A4E18;
  if (!qword_27E3A4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E18);
  }

  return result;
}

unint64_t sub_23FFD6898()
{
  result = qword_27E3A4E20;
  if (!qword_27E3A4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E20);
  }

  return result;
}

unint64_t sub_23FFD68F0()
{
  result = qword_27E3A4E28;
  if (!qword_27E3A4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E28);
  }

  return result;
}

unint64_t sub_23FFD6948()
{
  result = qword_27E3A4E30;
  if (!qword_27E3A4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E30);
  }

  return result;
}

uint64_t sub_23FFD699C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23FF8C81C;

  return sub_23FFD4EB8(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_23FFD6A78()
{
  result = qword_27E3A4E50;
  if (!qword_27E3A4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E50);
  }

  return result;
}

uint64_t sub_23FFD6ACC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4E40, &unk_23FFEA988);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FFD6B44()
{
  result = qword_27E3A4E60;
  if (!qword_27E3A4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E60);
  }

  return result;
}

uint64_t sub_23FFD6B98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4E38, &qword_23FFEA980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FFD6BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E38, &qword_23FFEA980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFD6C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF8C81C;

  return sub_23FFD4AA4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_23FFD6D2C()
{
  result = qword_27E3A4E78;
  if (!qword_27E3A4E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A26B0, &qword_23FFDB128);
    sub_23FFD6ACC(&qword_27E3A4E48, sub_23FFD6A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E78);
  }

  return result;
}

unint64_t sub_23FFD6DE0()
{
  result = qword_27E3A4E80;
  if (!qword_27E3A4E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A26B0, &qword_23FFDB128);
    sub_23FFD6ACC(&qword_27E3A4E58, sub_23FFD6B44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4E80);
  }

  return result;
}

uint64_t sub_23FFD6E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF8C81C;

  return sub_23FFD4768(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_23FF62F84(*(v0 + 32), *(v0 + 40));

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23FFD6FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23FF8C81C;

  return sub_23FFD3A08(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23FFD7108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF6E6E4;

  return sub_23FFD3614(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_35Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23FFD722C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF8C81C;

  return sub_23FFD32E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23FFD7300(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_23FFD8DBC() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = (v1 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_23FF8C81C;

  return sub_23FFD2F08(a1, v8, v9, v10, v1 + v5, v12, v13, v15);
}

void sub_23FFD7460()
{
  v1 = *(v0 + 16);
  v2 = sub_23FFD8F8C();
  (*(v1 + 16))(v1, v2);
}

AppDistribution::SecureButtonTag::ButtonImagePlacement_optional __swiftcall SecureButtonTag.ButtonImagePlacement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureButtonTag.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label);
  v2 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label + 8);

  return v1;
}

uint64_t SecureButtonTag.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName);
  v2 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8);

  return v1;
}

double SecureButtonTag.size.getter()
{
  result = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size);
  v2 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size + 8);
  return result;
}

id SecureButtonTag.__allocating_init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v27 = objc_allocWithZone(v13);
  v28 = *a5;
  v29 = &v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement] = v28;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor] = a6;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor] = a7;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] = a9;
  v31 = &v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] = a12;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth] = a13;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor] = a8;
  v33.receiver = v27;
  v33.super_class = v13;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  ObjectType = swift_getObjectType();
  v28 = *a5;
  v29 = &v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement] = v28;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor] = a6;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor] = a7;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] = a9;
  v31 = &v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] = a12;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth] = a13;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor] = a8;
  v33.receiver = v13;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_23FFD86D0(a1);

  return v4;
}

id SecureButtonTag.init(coder:)(void *a1)
{
  v2 = sub_23FFD86D0(a1);

  return v2;
}

Swift::Void __swiftcall SecureButtonTag.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label);
  v4 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label + 8);
  v5 = sub_23FFD933C();
  v6 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8))
  {
    v7 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName);
    v8 = sub_23FFD933C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement);
  v11 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor);
  v13 = type metadata accessor for SerializableColor();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = v12;
  v46.receiver = v14;
  v46.super_class = v13;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v46, sel_init);
  v17 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  v18 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor);
  v19 = objc_allocWithZone(v13);
  *&v19[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = v18;
  v45.receiver = v19;
  v45.super_class = v13;
  v20 = v18;
  v21 = objc_msgSendSuper2(&v45, sel_init);
  v22 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  v23 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius);
  v24 = sub_23FFD901C();
  v25 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

  v26 = v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size;
  v27 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size);
  v28 = sub_23FFD901C();
  v29 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  v30 = *(v26 + 8);
  v31 = sub_23FFD901C();
  v32 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v31 forKey:v32];

  v33 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize);
  v34 = sub_23FFD901C();
  v35 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];

  v36 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth);
  v37 = sub_23FFD901C();
  v38 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v37 forKey:v38];

  v39 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor);
  v40 = objc_allocWithZone(v13);
  *&v40[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = v39;
  v44.receiver = v40;
  v44.super_class = v13;
  v41 = v39;
  v42 = objc_msgSendSuper2(&v44, sel_init);
  v43 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v42 forKey:v43, v44.receiver, v44.super_class, v45.receiver, v45.super_class, v46.receiver, v46.super_class];
}

uint64_t SecureButtonTag.hash.getter()
{
  v1 = v0;
  sub_23FFD9A8C();
  v2 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label);
  v3 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label + 8);
  sub_23FFD938C();
  if (*(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8))
  {
    v4 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName);
    sub_23FFD9A4C();
    sub_23FFD938C();
  }

  else
  {
    sub_23FFD9A4C();
  }

  MEMORY[0x245CB41F0](*(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement));
  v5 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor);
  type metadata accessor for CGColor(0);
  sub_23FFD8B20();
  sub_23FFD904C();
  v6 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor);
  sub_23FFD904C();
  v7 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x245CB4210](*&v7);
  v8 = v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size;
  v9 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x245CB4210](*&v9);
  v10 = *(v8 + 8);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x245CB4210](*&v10);
  v11 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x245CB4210](*&v11);
  v12 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x245CB4210](*&v12);
  v13 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor);
  sub_23FFD904C();
  return sub_23FFD9A6C();
}

uint64_t SecureButtonTag.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_23FFB9978(a1, v17);
  if (!v18)
  {
    sub_23FFB9790(v17);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v14 = 0;
    return v14 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label) == *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label] && *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label + 8) == *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label + 8];
  if (!v3 && (sub_23FFD996C() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8);
  v5 = *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName) == *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName] && v4 == v5;
    if (!v6 && (sub_23FFD996C() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v5)
  {
LABEL_27:

    goto LABEL_28;
  }

  if (*(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement) != v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement])
  {
    goto LABEL_27;
  }

  type metadata accessor for CGColor(0);
  v7 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor);
  v8 = *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor];
  sub_23FFD8B20();
  v9 = v8;
  LOBYTE(v7) = sub_23FFD903C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor);
  v11 = *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor];
  LOBYTE(v10) = sub_23FFD903C();

  if ((v10 & 1) == 0 || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius) != *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size) != *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size + 8) != *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size + 8] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize) != *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth) != *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth])
  {
    goto LABEL_27;
  }

  v12 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor);
  v13 = *&v16[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor];
  v14 = sub_23FFD903C();

  return v14 & 1;
}

id SecureButtonTag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecureButtonTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23FFD8410(void *a1)
{
  v3 = sub_23FFD940C();
  *(v3 + 16) = 4;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  v4 = *(v1 + OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor);
  UISGetColorSRGBComponents();
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v3 + 32);
  v6 = sub_23FFD901C();
  v7 = sub_23FFD933C();
  [a1 encodeObject:v6 forKey:v7];

  if (*(v3 + 16) < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v3 + 40);
  v9 = sub_23FFD901C();
  v10 = sub_23FFD933C();
  [a1 encodeObject:v9 forKey:v10];

  if (*(v3 + 16) < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(v3 + 48);
  v12 = sub_23FFD901C();
  v13 = sub_23FFD933C();
  [a1 encodeObject:v12 forKey:v13];

  if (*(v3 + 16) < 4uLL)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = *(v3 + 56);
  v15 = sub_23FFD901C();
  v16 = sub_23FFD933C();
  [a1 encodeObject:v15 forKey:v16];
}

id sub_23FFD868C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23FFD86D0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_23FFD8D60();
  v5 = sub_23FFD95BC();
  if (v5)
  {
    v6 = v5;
    sub_23FFD934C();
  }

  v7 = &v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = sub_23FFD95BC();
  sub_23FFD934C();

  v9 = &v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName];
  *v9 = 0;
  v9[1] = 0;
  v10 = sub_23FFD933C();
  v11 = [a1 decodeIntegerForKey_];

  if (v11 >= 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement] = v12;
  type metadata accessor for SerializableColor();
  v13 = sub_23FFD95BC();
  if (!v13 || (v14 = *(v13 + OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor), v15 = v13, GenericRGB = v14, v15, !v14))
  {
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor] = GenericRGB;
  v17 = sub_23FFD95BC();
  if (!v17 || (v18 = *(v17 + OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor), v19 = v17, v20 = v18, v19, !v18))
  {
    v20 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  }

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor] = v20;
  v21 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v23 = v22;

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] = v23;
  v24 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v26 = v25;

  v27 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v29 = v28;

  v30 = &v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size];
  *v30 = v26;
  v30[1] = v29;
  v31 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v33 = v32;

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] = v33;
  v34 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v36 = v35;

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth] = v36;
  v37 = sub_23FFD95BC();
  if (!v37 || (v38 = *(v37 + OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor), v39 = v37, v40 = v38, v39, !v38))
  {
    v40 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor] = v40;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  return objc_msgSendSuper2(&v42, sel_init, 0);
}

unint64_t sub_23FFD8B20()
{
  result = qword_27E3A4EE8;
  if (!qword_27E3A4EE8)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4EE8);
  }

  return result;
}

unint64_t sub_23FFD8B7C()
{
  result = qword_27E3A4EF8;
  if (!qword_27E3A4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A4EF8);
  }

  return result;
}

id sub_23FFD8C44(void *a1)
{
  v3 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v5 = v4;

  v6 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v8 = v7;

  v9 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  v12 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v14 = v13;

  *&v1[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = CGColorCreateSRGB(v5, v8, v11, v14);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_23FFD8D60()
{
  result = qword_27E3A4FD0;
  if (!qword_27E3A4FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3A4FD0);
  }

  return result;
}