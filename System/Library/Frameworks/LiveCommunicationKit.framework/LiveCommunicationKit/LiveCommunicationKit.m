unint64_t sub_238B2DA3C()
{
  result = qword_280B60900;
  if (!qword_280B60900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60900);
  }

  return result;
}

uint64_t Handle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF606D8, &qword_238B72B90);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[2] = *(v1 + 2);
  v14[3] = v10;
  v11 = *(v1 + 3);
  v14[0] = *(v1 + 4);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B2DDD4();
  sub_238B6CEC4();
  v18 = v9;
  v17 = 0;
  sub_238B2DE28();
  sub_238B6CDB4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_238B6CD84();
  v15 = 2;
  sub_238B6CD84();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_238B2DD28()
{
  result = qword_280B60918;
  if (!qword_280B60918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60918);
  }

  return result;
}

unint64_t sub_238B2DD80()
{
  result = qword_280B60920;
  if (!qword_280B60920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60920);
  }

  return result;
}

unint64_t sub_238B2DDD4()
{
  result = qword_280B60928;
  if (!qword_280B60928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60928);
  }

  return result;
}

unint64_t sub_238B2DE28()
{
  result = qword_280B60908;
  if (!qword_280B60908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60908);
  }

  return result;
}

unint64_t sub_238B2DECC()
{
  result = qword_280B60910;
  if (!qword_280B60910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60910);
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

uint64_t sub_238B2DF64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238B2DFAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t Handle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF606E0, &qword_238B72B98);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B2DDD4();
  sub_238B6CEB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  sub_238B2E314();
  sub_238B6CD44();
  v11 = v26;
  v24 = 1;
  v12 = sub_238B6CD14();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  v15 = sub_238B6CD14();
  v17 = v16;
  v18 = *(v6 + 8);
  v21 = v15;
  v18(v9, v5);
  *a2 = v11;
  v19 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t storeEnumTagSinglePayload for SandboxExtendedURL.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238B2E314()
{
  result = qword_280B60638;
  if (!qword_280B60638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60638);
  }

  return result;
}

uint64_t sub_238B2E370()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t getEnumTagSinglePayload for SandboxExtendedURL.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

LiveCommunicationKit::Handle::Kind_optional __swiftcall Handle.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238B2E560()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t _s20LiveCommunicationKit6HandleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_238B6CDF4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_238B6CDF4();
}

uint64_t sub_238B2E694()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x23EE72A40](*v0 + 1);
  sub_238B6C8D4();

  return sub_238B6C8D4();
}

uint64_t sub_238B2E754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConversationRecordingContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_238B6C4B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238B2E844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ConversationRecordingContext(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_238B6C4B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_238B2E948(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _ConversationRecordingExtensionConfiguration();

  return swift_getWitnessTable();
}

uint64_t sub_238B2E990()
{
  v1 = type metadata accessor for _ConversationRecordingContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3;
  v7 = sub_238B6C574();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[5], v7);
  v9 = v1[6];
  v10 = sub_238B6C534();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v0 + v3 + v1[7];
  if (*(v11 + 16))
  {

    v12 = *(v11 + 32);
  }

  v13 = *(v6 + v1[8]);

  v14 = *(v6 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238B2EB20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238B2EB58()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238B2EBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConversationRecordingContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238B2EC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConversationRecordingContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_238B2ED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_238B2EE0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238B6C574();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

uint64_t sub_238B2EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC58, &qword_238B6F030);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_238B2F004(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC58, &qword_238B6F030);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_238B2F140(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartCellularConversationAction();
  v5 = *(*(started - 8) + 48);

  return v5(a1, a2, started);
}

uint64_t sub_238B2F1AC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartCellularConversationAction();
  v5 = *(*(started - 8) + 56);

  return v5(a1, a2, a2, started);
}

uint64_t sub_238B2F22C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238B2F264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_238B2F324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238B6C574();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_238B2F3E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238B2F458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_238B2F4A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_238B2F554()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF601F0, "L^");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238B2F584()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF601F8, "V^");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238B2F5B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238B2F5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238B2F664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238B2F6F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238B2F730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_238B6C534();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238B2F854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238B6C574();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_238B6C534();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238B2F9CC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t PauseConversationAction.__allocating_init(conversationUUID:isPaused:)(char *a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PauseConversationAction.init(conversationUUID:isPaused:)(a1, a2);
  return v7;
}

uint64_t PauseConversationAction.init(conversationUUID:isPaused:)(char *a1, char a2)
{
  v3 = v2;
  v23 = a1;
  v6 = sub_238B6C534();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20]();
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238B6C574();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9);
  v15 = objc_allocWithZone(MEMORY[0x277CBB000]);
  v16 = sub_238B6C544();
  v17 = [v15 initWithCallUUID:v16 onHold:a2 & 1];

  v18 = *(v10 + 8);
  v18(v13, v9);
  *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit23PauseConversationAction_isPaused) = a2;
  v19 = v23;
  v14(v13, v23, v9);
  v20 = v24;
  sub_238B6C504();
  v18(v19, v9);
  *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v17;
  (*(v10 + 32))(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v13, v9);
  v21 = (v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v21 = 0;
  v21[1] = 0;
  (*(v25 + 32))(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v20, v26);
  return v3;
}

uint64_t sub_238B2FCFC(void *a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238B6C574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 isOnHold];
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit23PauseConversationAction_isPaused) = v13;
  v14 = [a1 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v9 + 32))(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v12, v8);
  v15 = (v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v15 = 0;
  v15[1] = 0;
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v7, v3);
  return v1;
}

uint64_t PauseConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_238B2FFFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t PauseConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PauseConversationAction()
{
  result = qword_27DF5F6C8;
  if (!qword_27DF5F6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B301E4()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B30258()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

void *sub_238B302B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_238B302EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238B3030C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_238B30348(uint64_t a1, unint64_t *a2)
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

unint64_t sub_238B30398()
{
  result = qword_280B608F8;
  if (!qword_280B608F8)
  {
    type metadata accessor for HandleType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B608F8);
  }

  return result;
}

id sub_238B30454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallObserverDelegateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238B30544()
{
  v0 = sub_238B6C6A4();
  __swift_allocate_value_buffer(v0, qword_27DF60710);
  __swift_project_value_buffer(v0, qword_27DF60710);
  return sub_238B6C694();
}

uint64_t sub_238B305B8()
{
  v0 = sub_238B6C6A4();
  __swift_allocate_value_buffer(v0, qword_280B61330);
  __swift_project_value_buffer(v0, qword_280B61330);
  return sub_238B6C694();
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

uint64_t sub_238B306D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_238B6CAC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v14, v16, a2);
    v18 = sub_238B6C8B4();
    (*(v10 + 8))(v16, a2);
    return v18;
  }
}

uint64_t sub_238B308F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  if (v2 != 1)
  {
    v4 = 0x656C646E6168;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E656B6F74;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (*a2 != 1)
  {
    v8 = 0x656C646E6168;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_238B6CDF4();
  }

  return v11 & 1;
}

uint64_t sub_238B309E0()
{
  v1 = *v0;
  sub_238B6CE64();
  sub_238B6C8D4();

  return sub_238B6CEA4();
}

uint64_t sub_238B30A74()
{
  *v0;
  *v0;
  sub_238B6C8D4();
}

uint64_t sub_238B30AF4()
{
  v1 = *v0;
  sub_238B6CE64();
  sub_238B6C8D4();

  return sub_238B6CEA4();
}

uint64_t sub_238B30B84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_238B33F18();
  *a2 = result;
  return result;
}

void sub_238B30BB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  if (v2 != 1)
  {
    v5 = 0x656C646E6168;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E656B6F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_238B30C04()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x656C646E6168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_238B30C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238B33F18();
  *a1 = result;
  return result;
}

uint64_t sub_238B30C90(uint64_t a1)
{
  v2 = sub_238B3330C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B30CCC(uint64_t a1)
{
  v2 = sub_238B3330C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B30D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B30DC4(uint64_t a1)
{
  v2 = sub_238B310E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B30E00(uint64_t a1)
{
  v2 = sub_238B310E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B30E48(uint64_t a1)
{
  v2 = sub_238B31134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B30E84(uint64_t a1)
{
  v2 = sub_238B31134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SandboxExtendedURL.DecodingError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7C0, &qword_238B6DCB0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7C8, &qword_238B6DCB8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B310E0();
  sub_238B6CEC4();
  sub_238B31134();
  sub_238B6CD64();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
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

unint64_t sub_238B310E0()
{
  result = qword_27DF5F7D0;
  if (!qword_27DF5F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F7D0);
  }

  return result;
}

unint64_t sub_238B31134()
{
  result = qword_27DF5F7D8;
  if (!qword_27DF5F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F7D8);
  }

  return result;
}

uint64_t SandboxExtendedURL.DecodingError.hashValue.getter()
{
  sub_238B6CE64();
  MEMORY[0x23EE72A40](0);
  return sub_238B6CEA4();
}

uint64_t SandboxExtendedURL.DecodingError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7E0, &qword_238B6DCC0);
  v20 = *(v3 - 8);
  v4 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7E8, &qword_238B6DCC8);
  v7 = *(v21 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B310E0();
  sub_238B6CEB4();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_238B6CD54() + 16) == 1)
    {
      sub_238B31134();
      sub_238B6CCC4();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_238B6CBE4();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0) + 48);
      *v16 = &type metadata for SandboxExtendedURL.DecodingError;
      sub_238B6CCD4();
      sub_238B6CBD4();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_238B314E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238B3151C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238B31550()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238B31594()
{
  sub_238B6CE64();
  MEMORY[0x23EE72A40](0);
  return sub_238B6CEA4();
}

uint64_t sub_238B315D8()
{
  sub_238B6CE64();
  MEMORY[0x23EE72A40](0);
  return sub_238B6CEA4();
}

uint64_t sub_238B31630(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7C0, &qword_238B6DCB0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7C8, &qword_238B6DCB8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B310E0();
  sub_238B6CEC4();
  sub_238B31134();
  sub_238B6CD64();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_238B31808()
{
  result = *MEMORY[0x277D861B8];
  if (*MEMORY[0x277D861B8])
  {
    result = sub_238B6C834();
    qword_27DF5F7B0 = result;
    qword_27DF5F7B8 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SandboxExtendedURL.__allocating_init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url] = sub_238B6C474();
  v5 = &v4[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v4[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionToken];
  *v6 = 0;
  *(v6 + 1) = 0;
  v10.receiver = v4;
  v10.super_class = v2;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = sub_238B6C4B4();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id SandboxExtendedURL.init(url:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url] = sub_238B6C474();
  v5 = &v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionToken];
  *v6 = 0;
  *(v6 + 1) = 0;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = sub_238B6C4B4();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id SandboxExtendedURL.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if ((v0[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle + 8] & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle];
    sandbox_extension_release();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id SandboxExtendedURL.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_238B31CE4(0, &qword_27DF5F810, 0x277CBEBC0);
  v5 = sub_238B6CA94();
  if (v5)
  {
    *&v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url] = v5;
    v6 = v5;
    sub_238B31CE4(0, &qword_27DF5F818, 0x277CCACA8);
    v7 = v6;
    v8 = sub_238B6CA94();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      sub_238B6C854();

      v11 = &v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionToken];
      *v11 = 0;
      *(v11 + 1) = 0;
      [v10 UTF8String];
      v8 = sandbox_extension_consume();
    }

    else
    {
      v10 = 0;
      v13 = &v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionToken];
      *v13 = 0;
      *(v13 + 1) = 0;
    }

    v14 = &v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle];
    *v14 = v8;
    v14[8] = v9 == 0;
    v16.receiver = v2;
    v16.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v16, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

uint64_t sub_238B31CE4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Void __swiftcall SandboxExtendedURL.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_238B6C894();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url];
  v10 = sub_238B6C844();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  if (qword_27DF5F6A8 != -1)
  {
    swift_once();
  }

  if (qword_27DF5F7B8)
  {
    v21[0] = qword_27DF5F7B0;
    v21[1] = qword_27DF5F7B8;

    sub_238B6C884();
    sub_238B331EC();
    sub_238B6CAD4();
    (*(v5 + 8))(v8, v4);
  }

  [v9 fileSystemRepresentation];
  v11 = sandbox_extension_issue_file();

  if (v11)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String_];
    v13 = sub_238B6C844();
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

    free(v11);
  }

  else
  {
    if (qword_27DF5F6A0 != -1)
    {
      swift_once();
    }

    v14 = sub_238B6C6A4();
    __swift_project_value_buffer(v14, qword_27DF60710);
    v15 = v2;
    v16 = sub_238B6C684();
    v17 = sub_238B6CA44();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v9;
      *v19 = v9;
      v20 = v9;
      _os_log_impl(&dword_238B2C000, v16, v17, "Unable to issue sandbox extension for file with URL: %@", v18, 0xCu);
      sub_238B33360(v19, &qword_27DF5F820, &qword_238B6F7A0);
      MEMORY[0x23EE73110](v19, -1, -1);
      MEMORY[0x23EE73110](v18, -1, -1);
    }
  }
}

void *SandboxExtendedURL.sandboxResolvedURL.getter()
{
  if ((v0[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle + 8] & 1) != 0 || *&v0[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle] == -1)
  {
    if (qword_27DF5F6A0 != -1)
    {
      swift_once();
    }

    v12 = sub_238B6C6A4();
    __swift_project_value_buffer(v12, qword_27DF60710);
    v13 = v0;
    v14 = sub_238B6C684();
    v15 = sub_238B6CA44();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315138;
      v18 = *&v13[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url];
      v23 = v17;
      sub_238B31CE4(0, &qword_27DF5F810, 0x277CBEBC0);
      v19 = v18;
      v20 = sub_238B6C8B4();
      v22 = sub_238B33240(v20, v21, &v23);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_238B2C000, v14, v15, "Error while consuming sandbox extension for URL: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x23EE73110](v17, -1, -1);
      MEMORY[0x23EE73110](v16, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_27DF5F6A0 != -1)
    {
      swift_once();
    }

    v1 = sub_238B6C6A4();
    __swift_project_value_buffer(v1, qword_27DF60710);
    v2 = v0;
    v3 = sub_238B6C684();
    v4 = sub_238B6CA44();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = *&v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url];
      *(v5 + 4) = v7;
      *v6 = v7;
      v8 = v7;
      _os_log_impl(&dword_238B2C000, v3, v4, "Successfully consumed sandbox extension for URL: %@", v5, 0xCu);
      sub_238B33360(v6, &qword_27DF5F820, &qword_238B6F7A0);
      MEMORY[0x23EE73110](v6, -1, -1);
      MEMORY[0x23EE73110](v5, -1, -1);
    }

    v9 = *&v2[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url];
    v10 = v9;
    return v9;
  }
}

void (**SandboxExtendedURL.init(from:)(uint64_t *a1))(char *, uint64_t, void)
{
  ObjectType = swift_getObjectType();
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F830, &qword_238B6DCE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v33 - v3;
  v5 = sub_238B6C4B4();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F838, &qword_238B6DCE8);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = a1[3];
  v13 = a1[4];
  v38 = a1;
  v14 = a1;
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_238B3330C();
  v17 = v37;
  sub_238B6CEB4();
  if (v17)
  {
    goto LABEL_3;
  }

  v34 = v8;
  v35 = v5;
  v37 = v10;
  v42 = 1;
  sub_238B6CD14();
  v19 = v4;
  sub_238B6C4A4();

  v20 = v35;
  v12 = v36;
  v21 = (*(v36 + 48))(v4, 1, v35);
  v22 = v39;
  if (v21 == 1)
  {
    sub_238B33360(v19, &qword_27DF5F830, &qword_238B6DCE0);
    sub_238B333C0();
    swift_allocError();
    swift_willThrow();
    (*(v37 + 8))(v16, v9);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    swift_deallocPartialClassInstance();
    return v12;
  }

  v12[4](v34, v19, v20);
  v23 = sub_238B6C474();
  v33 = OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url;
  *&v22[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url] = v23;
  v42 = 0;
  v24 = sub_238B6CCE4();
  v25 = v37;
  v26 = &v22[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionToken];
  *v26 = v24;
  v26[1] = v27;
  if (v27)
  {

    v28 = sub_238B6C844();

    [v28 UTF8String];
    v29 = sandbox_extension_consume();

    (*(v36 + 8))(v34, v35);
    (*(v25 + 8))(v16, v9);
    v30 = 0;
  }

  else
  {
    v42 = 2;
    v29 = sub_238B6CD04();
    v30 = v32;
    (*(v36 + 8))(v34, v35);
    (*(v25 + 8))(v16, v9);
  }

  v31 = &v22[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle];
  *v31 = v29;
  v31[8] = v30 & 1;
  v41.receiver = v22;
  v41.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v41, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v12;
}

uint64_t SandboxExtendedURL.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F850, &qword_238B6DCF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B3330C();
  sub_238B6CEC4();
  v11 = [*(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_url) absoluteString];
  if (v11)
  {
    v12 = v11;
    v13 = sub_238B6C864();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v20 = v13;
  v21 = v15;
  v19[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F858, &qword_238B6DCF8);
  sub_238B33414();
  sub_238B6CDB4();

  if (!v2)
  {
    if (*(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionToken + 8))
    {
      v17 = *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionToken);
      LOBYTE(v20) = 0;
      sub_238B6CD84();
    }

    if (*(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle + 8) != 1)
    {
      v18 = *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle);
      LOBYTE(v20) = 2;
      sub_238B6CDC4();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t SandboxExtendedURL.description.getter()
{
  swift_getObjectType();
  v0 = sub_238B6C894();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_238B6C3D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_238B6C414();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_238B6C404();
  sub_238B6C3C4();
  sub_238B6C3E4();
  sub_238B334D8();
  v7 = sub_238B6C3F4();
  v9 = v8;
  sub_238B6C884();
  v10 = sub_238B6C874();
  if (v11)
  {
    v12 = v10;
    sub_238B33550(v7, v9);

    return v12;
  }

  else
  {
    sub_238B33550(v7, v9);

    return 0xD000000000000012;
  }
}

id SandboxExtendedURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (**sub_238B33178@<X0>(uint64_t *a1@<X0>, void *a2@<X8>))(char *, uint64_t, void)
{
  v6 = objc_allocWithZone(v2);
  result = SandboxExtendedURL.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_238B331EC()
{
  result = qword_27DF5F828;
  if (!qword_27DF5F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F828);
  }

  return result;
}

uint64_t sub_238B33240(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238B33A3C(v11, 0, 0, 1, a1, a2);
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
    sub_238B33F64(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_238B3330C()
{
  result = qword_27DF5F840;
  if (!qword_27DF5F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F840);
  }

  return result;
}

uint64_t sub_238B33360(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_238B333C0()
{
  result = qword_27DF5F848;
  if (!qword_27DF5F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F848);
  }

  return result;
}

unint64_t sub_238B33414()
{
  result = qword_27DF5F860;
  if (!qword_27DF5F860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF5F858, &qword_238B6DCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F860);
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

unint64_t sub_238B334D8()
{
  result = qword_27DF5F868;
  if (!qword_27DF5F868)
  {
    type metadata accessor for SandboxExtendedURL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F868);
  }

  return result;
}

uint64_t sub_238B33550(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_238B335A8()
{
  result = qword_27DF5F870;
  if (!qword_27DF5F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F870);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ConversationProvider.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _ConversationProvider.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_238B33780()
{
  result = qword_27DF5F8E0;
  if (!qword_27DF5F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F8E0);
  }

  return result;
}

unint64_t sub_238B337D8()
{
  result = qword_27DF5F8E8;
  if (!qword_27DF5F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F8E8);
  }

  return result;
}

unint64_t sub_238B33830()
{
  result = qword_27DF5F8F0;
  if (!qword_27DF5F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F8F0);
  }

  return result;
}

unint64_t sub_238B33888()
{
  result = qword_27DF5F8F8;
  if (!qword_27DF5F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F8F8);
  }

  return result;
}

unint64_t sub_238B338E0()
{
  result = qword_27DF5F900;
  if (!qword_27DF5F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F900);
  }

  return result;
}

unint64_t sub_238B33938()
{
  result = qword_27DF5F908;
  if (!qword_27DF5F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F908);
  }

  return result;
}

unint64_t sub_238B33990()
{
  result = qword_27DF5F910;
  if (!qword_27DF5F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F910);
  }

  return result;
}

unint64_t sub_238B339E8()
{
  result = qword_27DF5F918;
  if (!qword_27DF5F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F918);
  }

  return result;
}

unint64_t sub_238B33A3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238B33B48(a5, a6);
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
    result = sub_238B6CBF4();
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

uint64_t sub_238B33B48(uint64_t a1, unint64_t a2)
{
  v4 = sub_238B33B94(a1, a2);
  sub_238B33CC4(&unk_284B6AD48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238B33B94(uint64_t a1, unint64_t a2)
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

  v6 = sub_238B33DB0(v5, 0);
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

  result = sub_238B6CBF4();
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
        v10 = sub_238B6C8F4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238B33DB0(v10, 0);
        result = sub_238B6CB84();
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

uint64_t sub_238B33CC4(uint64_t result)
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

  result = sub_238B33E24(result, v12, 1, v3);
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

void *sub_238B33DB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF5F920, &unk_238B6E1A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238B33E24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF5F920, &unk_238B6E1A0);
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

uint64_t sub_238B33F18()
{
  v0 = sub_238B6CCB4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_238B33F64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id XPCWrapper.__allocating_init<A>(wrapped:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_238B34628();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

id XPCWrapper.init<A>(wrapped:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_238B34628();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t XPCWrapper.unwrapped<A>(as:)()
{
  v1 = sub_238B6C3B4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_238B6C3A4();
  v4 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data);
  v5 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data + 8);
  sub_238B6C394();
}

Swift::Void __swiftcall XPCWrapper.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data);
  v4 = *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data + 8);
  v5 = sub_238B6C4C4();
  v6 = sub_238B6C844();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id XPCWrapper.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_238B34714();
  v5 = sub_238B6CA94();
  if (v5)
  {
    v6 = v5;
    v7 = sub_238B6C4D4();
    v9 = v8;

    v10 = &v4[OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data];
    *v10 = v7;
    v10[1] = v9;
    v13.receiver = v4;
    v13.super_class = v2;
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

id XPCWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_238B34714();
  v5 = sub_238B6CA94();
  if (v5)
  {
    v6 = v5;
    v7 = sub_238B6C4D4();
    v9 = v8;

    v10 = &v2[OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data];
    *v10 = v7;
    v10[1] = v9;
    v13.receiver = v2;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

id XPCWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_238B34628()
{
  ObjectType = swift_getObjectType();
  v3 = sub_238B6C414();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_238B6C404();
  v6 = sub_238B6C3F4();
  v8 = v7;

  if (v1)
  {
    return swift_deallocPartialClassInstance();
  }

  v10 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data];
  *v10 = v6;
  v10[1] = v8;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_238B34714()
{
  result = qword_27DF5F998;
  if (!qword_27DF5F998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF5F998);
  }

  return result;
}

uint64_t ConversationProvider.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ConversationProvider.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_238B6CDF4();
  }
}

uint64_t ConversationProvider.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_238B6C8D4();
}

uint64_t ConversationProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_238B6CE64();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B34894()
{
  v1 = *v0;
  v2 = v0[1];
  sub_238B6CE64();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B348E0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_238B6C8D4();
}

uint64_t sub_238B348E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_238B6CE64();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B34930(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_238B6CDF4();
  }
}

uint64_t static ConversationRecordingContext.== infix(_:_:)()
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for ConversationRecordingContext(0) + 20);

  return sub_238B6C554();
}

uint64_t ConversationRecordingContext.uuid.setter(uint64_t a1)
{
  v3 = sub_238B6C574();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_238B34AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t ConversationRecordingContext.init(recordingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238B6C574();
  v5 = *(*(v4 - 8) + 16);
  v5(a2, a1, v4);
  v6 = type metadata accessor for _ConversationRecordingContext(0);
  v7 = v6[5];
  v8 = type metadata accessor for ConversationRecordingContext(0);
  v5(a2 + v8[5], a1 + v7, v4);
  v9 = v6[6];
  v10 = v8[6];
  v11 = sub_238B6C534();
  (*(*(v11 - 8) + 16))(a2 + v10, a1 + v9, v11);
  v12 = (a1 + v6[7]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v17 = v12[4];
  v18 = *(a1 + v6[8]);
  v19 = (a1 + v6[9]);
  v20 = *v19;
  v21 = v19[1];
  v22 = (a2 + v8[7]);
  *v22 = v13;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  *(a2 + v8[8]) = v18;
  v23 = (a2 + v8[9]);
  *v23 = v20;
  v23[1] = v21;
  sub_238B34AC8(v13, v14, v15);

  return sub_238B34CEC(a1);
}

uint64_t _ConversationProvider.conversationProvider.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_238B34CEC(uint64_t a1)
{
  v2 = type metadata accessor for _ConversationRecordingContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationRecordingContext.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_238B6C574();
  sub_238B34F14(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v4 = type metadata accessor for ConversationRecordingContext(0);
  v5 = v1 + v4[5];
  sub_238B6C814();
  v6 = v4[6];
  sub_238B6C534();
  sub_238B34F14(&qword_27DF5F9A8, MEMORY[0x277CC9578]);
  sub_238B6C814();
  v7 = (v2 + v4[7]);
  v8 = v7[2];
  if (v8)
  {
    v10 = v7[3];
    v9 = v7[4];
    v12 = *v7;
    v11 = v7[1];
    sub_238B6CE84();
    MEMORY[0x23EE72A40](v12 + 1);

    sub_238B6C8D4();
    sub_238B6C8D4();
    sub_238B36C90(v12, v11, v8);
  }

  else
  {
    sub_238B6CE84();
  }

  sub_238B36CD4(a1, *(v2 + v4[8]));
  v13 = (v2 + v4[9]);
  v14 = *v13;
  v15 = v13[1];

  return sub_238B6C8D4();
}

uint64_t sub_238B34F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ConversationRecordingContext.hashValue.getter()
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B34F9C()
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B34FE0()
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t _s20LiveCommunicationKit28ConversationRecordingContextV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238B6C574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_238B35084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_238B6C554();
}

uint64_t sub_238B3514C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t static ConversationRecording.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ConversationRecordingContext(0) + 20);
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ConversationRecording(0) + 20);

  return MEMORY[0x28211D040](a1 + v5, a2 + v5);
}

uint64_t ConversationRecording.hash(into:)(uint64_t a1)
{
  ConversationRecordingContext.hash(into:)(a1);
  v1 = *(type metadata accessor for ConversationRecording(0) + 20);
  sub_238B6C4B4();
  sub_238B34F14(&qword_27DF5F9B0, MEMORY[0x277CC9260]);
  return sub_238B6C814();
}

uint64_t ConversationRecording.hashValue.getter()
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v2);
  v0 = *(type metadata accessor for ConversationRecording(0) + 20);
  sub_238B6C4B4();
  sub_238B34F14(&qword_27DF5F9B0, MEMORY[0x277CC9260]);
  sub_238B6C814();
  return sub_238B6CEA4();
}

uint64_t sub_238B35388(uint64_t a1)
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v4);
  v2 = *(a1 + 20);
  sub_238B6C4B4();
  sub_238B34F14(&qword_27DF5F9B0, MEMORY[0x277CC9260]);
  sub_238B6C814();
  return sub_238B6CEA4();
}

uint64_t sub_238B3542C(uint64_t a1, uint64_t a2)
{
  ConversationRecordingContext.hash(into:)(a1);
  v3 = *(a2 + 20);
  sub_238B6C4B4();
  sub_238B34F14(&qword_27DF5F9B0, MEMORY[0x277CC9260]);
  return sub_238B6C814();
}

uint64_t sub_238B354B4(uint64_t a1, uint64_t a2)
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v5);
  v3 = *(a2 + 20);
  sub_238B6C4B4();
  sub_238B34F14(&qword_27DF5F9B0, MEMORY[0x277CC9260]);
  sub_238B6C814();
  return sub_238B6CEA4();
}

uint64_t sub_238B35554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ConversationRecordingContext(0) + 20);
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x28211D040](a1 + v7, a2 + v7);
}

uint64_t sub_238B3561C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_238B6C534();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_238B356B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;

  return sub_238B34AC8(v5, v6, v7);
}

uint64_t sub_238B35730(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));
}

uint64_t sub_238B35784@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 36));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

__n128 sub_238B357EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a4 + 32);
  v26 = *a6;
  v25 = a6[1];
  v15 = sub_238B6C574();
  v16 = *(*(v15 - 8) + 32);
  v23 = *(a4 + 16);
  v24 = *a4;
  v16(a8, a1, v15);
  v17 = a7(0);
  v16(a8 + v17[5], a2, v15);
  v18 = v17[6];
  v19 = sub_238B6C534();
  (*(*(v19 - 8) + 32))(a8 + v18, a3, v19);
  v20 = a8 + v17[7];
  result = v24;
  *v20 = v24;
  *(v20 + 16) = v23;
  *(v20 + 32) = v14;
  *(a8 + v17[8]) = a5;
  v22 = (a8 + v17[9]);
  *v22 = v26;
  v22[1] = v25;
  return result;
}

LiveCommunicationKit::_ConversationProvider __swiftcall _ConversationProvider.init(conversationProvider:)(LiveCommunicationKit::_ConversationProvider conversationProvider)
{
  v2 = *(conversationProvider.name._countAndFlagsBits + 8);
  *v1 = *conversationProvider.name._countAndFlagsBits;
  v1[1] = v2;
  return conversationProvider;
}

__n128 _ConversationRecordingContext.init(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238B6C574();
  v5 = *(*(v4 - 8) + 32);
  v5(a2, a1, v4);
  v6 = type metadata accessor for ConversationRecordingContext(0);
  v7 = v6[5];
  v8 = type metadata accessor for _ConversationRecordingContext(0);
  v5(a2 + v8[5], a1 + v7, v4);
  v9 = v6[6];
  v10 = v8[6];
  v11 = sub_238B6C534();
  (*(*(v11 - 8) + 32))(a2 + v10, a1 + v9, v11);
  v12 = a1 + v6[7];
  v13 = *(v12 + 32);
  v14 = *(a1 + v6[8]);
  v15 = (a1 + v6[9]);
  v17 = *v15;
  v16 = v15[1];
  v18 = a2 + v8[7];
  result = *v12;
  v20 = *(v12 + 16);
  *v18 = *v12;
  *(v18 + 16) = v20;
  *(v18 + 32) = v13;
  *(a2 + v8[8]) = v14;
  v21 = (a2 + v8[9]);
  *v21 = v17;
  v21[1] = v16;
  return result;
}

uint64_t _s20LiveCommunicationKit26ConversationHistoryManagerC06RecentD0V6StatusO9hashValueSivg_0()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B35ACC()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

unint64_t sub_238B35B10()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 0x6E61486C61636F6CLL;
  v4 = 0x614865746F6D6572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_238B35BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B37B20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B35C1C(uint64_t a1)
{
  v2 = sub_238B36DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B35C58(uint64_t a1)
{
  v2 = sub_238B36DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _ConversationRecordingContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9B8, &qword_238B6E1F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B36DDC();
  sub_238B6CEC4();
  LOBYTE(v23) = 0;
  sub_238B6C574();
  sub_238B34F14(&qword_27DF5F9C8, MEMORY[0x277CC95F0]);
  sub_238B6CDB4();
  if (!v2)
  {
    v11 = type metadata accessor for _ConversationRecordingContext(0);
    v12 = v11[5];
    LOBYTE(v23) = 1;
    sub_238B6CDB4();
    v13 = v11[6];
    LOBYTE(v23) = 2;
    sub_238B6C534();
    sub_238B34F14(&qword_27DF5F9D0, MEMORY[0x277CC9578]);
    sub_238B6CDB4();
    v14 = (v3 + v11[7]);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v23 = *v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = 3;
    sub_238B34AC8(v23, v15, v16);
    sub_238B36E30();
    sub_238B6CD74();
    sub_238B36C90(v23, v24, v25);
    v23 = *(v3 + v11[8]);
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9E0, &qword_238B6E1F8);
    sub_238B36F2C(&qword_27DF5F9E8, sub_238B36E30);
    sub_238B6CDB4();
    v19 = (v3 + v11[9]);
    v20 = v19[1];
    v23 = *v19;
    v24 = v20;
    v28 = 5;
    sub_238B36E84();

    sub_238B6CDB4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t _ConversationRecordingContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v37 = sub_238B6C534();
  v34 = *(v37 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238B6C574();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = v31 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9F8, &qword_238B6E200);
  v36 = *(v40 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v13 = v31 - v12;
  v14 = type metadata accessor for _ConversationRecordingContext(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B36DDC();
  v39 = v13;
  v19 = v41;
  sub_238B6CEB4();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v41 = v17;
  v20 = v37;
  LOBYTE(v42) = 0;
  sub_238B34F14(&qword_27DF5FA00, MEMORY[0x277CC95F0]);
  sub_238B6CD44();
  v21 = v38;
  v38 = *(v35 + 32);
  (v38)(v41, v21, v5);
  LOBYTE(v42) = 1;
  sub_238B6CD44();
  v31[1] = v5;
  (v38)(&v41[v14[5]], v9, v5);
  LOBYTE(v42) = 2;
  sub_238B34F14(&qword_27DF5FA08, MEMORY[0x277CC9578]);
  v22 = v33;
  sub_238B6CD44();
  v23 = v36;
  v24 = v41;
  (*(v34 + 32))(&v41[v14[6]], v22, v20);
  v45 = 3;
  sub_238B36ED8();
  sub_238B6CCF4();
  v25 = v44;
  v26 = v24 + v14[7];
  v27 = v43;
  *v26 = v42;
  *(v26 + 16) = v27;
  *(v26 + 32) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9E0, &qword_238B6E1F8);
  v45 = 4;
  sub_238B36F2C(&qword_27DF5FA18, sub_238B36ED8);
  sub_238B6CD44();
  *(v24 + v14[8]) = v42;
  v45 = 5;
  sub_238B36FA4();
  sub_238B6CD44();
  (*(v23 + 8))(v39, v40);
  v28 = *(&v42 + 1);
  v29 = (v24 + v14[9]);
  *v29 = v42;
  v29[1] = v28;
  sub_238B36FF8(v24, v32, type metadata accessor for _ConversationRecordingContext);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_238B34CEC(v24);
}

uint64_t sub_238B3678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B36814(uint64_t a1)
{
  v2 = sub_238B37060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B36850(uint64_t a1)
{
  v2 = sub_238B37060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _ConversationProvider.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FA28, &qword_238B6E208);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B37060();
  sub_238B6CEC4();
  sub_238B6CD84();
  return (*(v4 + 8))(v7, v3);
}

uint64_t _ConversationProvider.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FA38, &qword_238B6E210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B37060();
  sub_238B6CEB4();
  if (!v2)
  {
    v11 = sub_238B6CD14();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_238B36B54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FA28, &qword_238B6E208);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B37060();
  sub_238B6CEC4();
  sub_238B6CD84();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_238B36C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_238B36CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE72A40](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      MEMORY[0x23EE72A40](*(v5 - 32) + 1);

      sub_238B6C8D4();
      sub_238B6C8D4();

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_238B36DA4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_238B36DDC()
{
  result = qword_27DF5F9C0;
  if (!qword_27DF5F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F9C0);
  }

  return result;
}

unint64_t sub_238B36E30()
{
  result = qword_27DF5F9D8;
  if (!qword_27DF5F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F9D8);
  }

  return result;
}

unint64_t sub_238B36E84()
{
  result = qword_27DF5F9F0;
  if (!qword_27DF5F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5F9F0);
  }

  return result;
}

unint64_t sub_238B36ED8()
{
  result = qword_27DF5FA10;
  if (!qword_27DF5FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FA10);
  }

  return result;
}

uint64_t sub_238B36F2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF5F9E0, &qword_238B6E1F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238B36FA4()
{
  result = qword_27DF5FA20;
  if (!qword_27DF5FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FA20);
  }

  return result;
}

uint64_t sub_238B36FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_238B37060()
{
  result = qword_27DF5FA30;
  if (!qword_27DF5FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FA30);
  }

  return result;
}

unint64_t sub_238B370B8()
{
  result = qword_27DF5FA40;
  if (!qword_27DF5FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FA40);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_238B37234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Handle);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_238B372B0()
{
  result = type metadata accessor for ConversationRecordingContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_238B6C4B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238B6C534();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_238B6C574();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_238B6C534();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_238B3757C()
{
  sub_238B6C574();
  if (v0 <= 0x3F)
  {
    sub_238B6C534();
    if (v1 <= 0x3F)
    {
      sub_238B37234(319, &qword_27DF5FA68, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_238B37234(319, &qword_27DF5FA70, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_238B3766C(uint64_t a1, int a2)
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

uint64_t sub_238B376B4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for _ConversationRecordingContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _ConversationRecordingContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238B37864()
{
  result = qword_27DF5FA98;
  if (!qword_27DF5FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FA98);
  }

  return result;
}

unint64_t sub_238B378BC()
{
  result = qword_27DF5FAA0;
  if (!qword_27DF5FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FAA0);
  }

  return result;
}

unint64_t sub_238B37914()
{
  result = qword_27DF5FAA8;
  if (!qword_27DF5FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FAA8);
  }

  return result;
}

unint64_t sub_238B3796C()
{
  result = qword_27DF5FAB0;
  if (!qword_27DF5FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FAB0);
  }

  return result;
}

unint64_t sub_238B379C4()
{
  result = qword_27DF5FAB8;
  if (!qword_27DF5FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FAB8);
  }

  return result;
}

unint64_t sub_238B37A1C()
{
  result = qword_27DF5FAC0;
  if (!qword_27DF5FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FAC0);
  }

  return result;
}

uint64_t sub_238B37A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE72A40](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_238B6C8D4();
      if (v8 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v8;
      }

      MEMORY[0x23EE72A60](*&v10);
      if (v9 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v9;
      }

      MEMORY[0x23EE72A60](*&v11);

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_238B37B20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000238B73250 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000238B73270 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E61486C61636F6CLL && a2 == 0xEB00000000656C64 || (sub_238B6CDF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614865746F6D6572 && a2 == 0xED000073656C646ELL || (sub_238B6CDF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000238B73290 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_238B6CDF4();

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

uint64_t dispatch thunk of ConversationRecordingDestination.conversationRecordingStarted(recordingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238B37F2C;

  return v11(a1, a2, a3);
}

uint64_t sub_238B37F2C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id ConversationRecordingDestination.configuration.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for _ConversationRecordingExtensionConfiguration();
  result = sub_238B3ADC0(v1);
  *a1 = result;
  return result;
}

uint64_t ConversationRecordingError.hashValue.getter()
{
  sub_238B6CE64();
  MEMORY[0x23EE72A40](0);
  return sub_238B6CEA4();
}

uint64_t sub_238B3815C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FB68, &qword_238B6E970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FB50, &qword_238B6E968);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v65 - v12;
  v13 = type metadata accessor for _ConversationRecordingContext(0);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v67 = &v65 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v23 = sub_238B6C6A4();
  v24 = __swift_project_value_buffer(v23, qword_27DF60710);
  v25 = sub_238B6C684();
  v26 = sub_238B6CA44();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v66 = v24;
    v28 = v20;
    v29 = v22;
    v30 = a1;
    v31 = v7;
    v32 = v3;
    v33 = v27;
    *v27 = 0;
    _os_log_impl(&dword_238B2C000, v25, v26, "conversation Recording Started", v27, 2u);
    v34 = v33;
    v3 = v32;
    v7 = v31;
    a1 = v30;
    v22 = v29;
    v20 = v28;
    MEMORY[0x23EE73110](v34, -1, -1);
  }

  v35 = sub_238B6C3B4();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_238B6C3A4();
  v38 = a1 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data;
  v41 = *(a1 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data);
  v39 = *(v38 + 8);
  sub_238B3AF38();
  sub_238B6C394();

  sub_238B3AF90(v22, v20);
  v40 = sub_238B6C684();
  LODWORD(v41) = sub_238B6CA44();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v73 = v65;
    v66 = v42;
    *v42 = 136315138;
    v43 = v69;
    sub_238B3AF90(v20, v69);
    v44 = v72;
    (*(v72 + 56))(v43, 0, 1, v13);
    v45 = v43;
    v46 = v68;
    sub_238B3B1A4(v45, v68, &qword_27DF5FB50, &qword_238B6E968);
    v47 = v44;
    v48 = v46;
    v49 = (*(v47 + 48))(v46, 1, v13);
    v50 = v70;
    if (v49 == 1)
    {
      sub_238B33360(v48, &qword_27DF5FB50, &qword_238B6E968);
      v51 = 0xE300000000000000;
      v52 = 7104878;
    }

    else
    {
      LODWORD(v68) = v41;
      v41 = v67;
      sub_238B3B048(v48, v67);
      sub_238B3AF90(v41, v50);
      v52 = sub_238B6C8B4();
      v51 = v53;
      v54 = v41;
      LOBYTE(v41) = v68;
      sub_238B3B37C(v54, type metadata accessor for _ConversationRecordingContext);
    }

    sub_238B33360(v69, &qword_27DF5FB50, &qword_238B6E968);
    sub_238B3B37C(v20, type metadata accessor for _ConversationRecordingContext);
    v55 = sub_238B33240(v52, v51, &v73);

    v56 = v66;
    *(v66 + 1) = v55;
    _os_log_impl(&dword_238B2C000, v40, v41, "Unwrapped start context to %s", v56, 0xCu);
    v57 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x23EE73110](v57, -1, -1);
    MEMORY[0x23EE73110](v56, -1, -1);
  }

  else
  {

    sub_238B3B37C(v20, type metadata accessor for _ConversationRecordingContext);
    v50 = v70;
  }

  v58 = sub_238B6CA04();
  (*(*(v58 - 8) + 56))(v7, 1, 1, v58);
  sub_238B3AF90(v22, v50);
  sub_238B6C9E4();
  v59 = v71;
  v60 = sub_238B6C9D4();
  v61 = (*(v72 + 80) + 56) & ~*(v72 + 80);
  v62 = swift_allocObject();
  v63 = MEMORY[0x277D85700];
  v62[2] = v60;
  v62[3] = v63;
  v62[4] = *(v3 + 80);
  v62[5] = *(v3 + 88);
  v62[6] = v59;
  sub_238B3B048(v50, v62 + v61);
  sub_238B38E34(0, 0, v7, &unk_238B6E980, v62);

  return sub_238B3B37C(v22, type metadata accessor for _ConversationRecordingContext);
}

uint64_t sub_238B3889C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *MEMORY[0x277D85000] & *a4;
  v6 = type metadata accessor for _ConversationRecordingContext(0);
  v5[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v8 = type metadata accessor for ConversationRecordingContext(0);
  v5[7] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_238B6C9E4();
  v5[9] = sub_238B6C9D4();
  v11 = sub_238B6C994();
  v5[10] = v11;
  v5[11] = v10;

  return MEMORY[0x2822009F8](sub_238B389CC, v11, v10);
}

uint64_t sub_238B389CC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v30 = *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x60);
  sub_238B3AF90(*(v0 + 24), v3);
  v6 = sub_238B6C574();
  v7 = *(*(v6 - 8) + 16);
  v7(v1, v3, v6);
  v7(v1 + v2[5], v3 + v4[5], v6);
  v8 = v4[6];
  v9 = v2[6];
  v10 = sub_238B6C534();
  (*(*(v10 - 8) + 16))(v1 + v9, v3 + v8, v10);
  v11 = (v3 + v4[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  v17 = *(v3 + v4[8]);
  v18 = (v3 + v4[9]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (v1 + v2[7]);
  *v21 = v12;
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v15;
  v21[4] = v16;
  *(v1 + v2[8]) = v17;
  v22 = (v1 + v2[9]);
  *v22 = v19;
  v22[1] = v20;
  sub_238B34AC8(v12, v13, v14);

  sub_238B3B37C(v3, type metadata accessor for _ConversationRecordingContext);
  v24 = *(v5 + 80);
  v23 = *(v5 + 88);
  v29 = (*(v23 + 16) + **(v23 + 16));
  v25 = *(*(v23 + 16) + 4);
  v26 = swift_task_alloc();
  *(v0 + 96) = v26;
  *v26 = v0;
  v26[1] = sub_238B38C68;
  v27 = *(v0 + 64);

  return v29(v27, v24, v23);
}

uint64_t sub_238B38C68()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 64);
  v7 = *v0;

  sub_238B3B37C(v3, type metadata accessor for ConversationRecordingContext);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_238B38DC0, v5, v4);
}

uint64_t sub_238B38DC0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_238B38E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FB68, &qword_238B6E970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_238B3B1A4(a3, v27 - v11, &qword_27DF5FB68, &qword_238B6E970);
  v13 = sub_238B6CA04();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238B33360(v12, &qword_27DF5FB68, &qword_238B6E970);
  }

  else
  {
    sub_238B6C9F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_238B6C994();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_238B6C8C4() + 32;
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

      sub_238B33360(a3, &qword_27DF5FB68, &qword_238B6E970);

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

  sub_238B33360(a3, &qword_27DF5FB68, &qword_238B6E970);
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

void sub_238B39134(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_238B3815C(v4);
}

uint64_t sub_238B3919C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *MEMORY[0x277D85000] & *v2;
  v4 = type metadata accessor for ConversationRecording(0);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FB50, &qword_238B6E968) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for _ConversationRecordingContext(0);
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_238B6C9E4();
  v3[21] = sub_238B6C9D4();
  v11 = sub_238B6C994();

  return MEMORY[0x2822009F8](sub_238B39364, v11, v10);
}

uint64_t sub_238B39364()
{
  v112 = v0;
  v1 = v0[21];

  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_238B6C6A4();
  __swift_project_value_buffer(v3, qword_27DF60710);
  v4 = v2;
  v5 = sub_238B6C684();
  v6 = sub_238B6CA44();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v111[0] = v9;
    *v8 = 136315138;
    v0[6] = v7;
    type metadata accessor for SandboxExtendedURL();
    v10 = v7;
    v11 = sub_238B6C8B4();
    v13 = sub_238B33240(v11, v12, v111);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_238B2C000, v5, v6, "Conversation recording ended with url %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x23EE73110](v9, -1, -1);
    MEMORY[0x23EE73110](v8, -1, -1);
  }

  v14 = v0[20];
  v15 = v0[15];
  v16 = v0[8];
  v17 = sub_238B6C3B4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_238B6C3A4();
  v20 = v16 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data;
  v21 = *(v16 + OBJC_IVAR____TtC20LiveCommunicationKit10XPCWrapper_data);
  v22 = *(v20 + 8);
  sub_238B3AF38();
  sub_238B6C394();
  v48 = v0[19];
  v47 = v0[20];

  sub_238B3AF90(v47, v48);
  v49 = sub_238B6C684();
  v50 = sub_238B6CA44();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[19];
  if (v51)
  {
    v54 = v0[15];
    v53 = v0[16];
    v56 = v0[13];
    v55 = v0[14];
    v57 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v111[0] = v109;
    *v57 = 136315138;
    sub_238B3AF90(v52, v55);
    (*(v53 + 56))(v55, 0, 1, v54);
    sub_238B3B1A4(v55, v56, &qword_27DF5FB50, &qword_238B6E968);
    if ((*(v53 + 48))(v56, 1, v54) == 1)
    {
      sub_238B33360(v0[13], &qword_27DF5FB50, &qword_238B6E968);
      v58 = 0xE300000000000000;
      v59 = 7104878;
    }

    else
    {
      v60 = v0[17];
      v61 = v0[18];
      v62 = v0[15];
      sub_238B3B048(v0[13], v61);
      sub_238B3AF90(v61, v60);
      v59 = sub_238B6C8B4();
      v58 = v63;
      sub_238B3B37C(v61, type metadata accessor for _ConversationRecordingContext);
    }

    v64 = v0[19];
    sub_238B33360(v0[14], &qword_27DF5FB50, &qword_238B6E968);
    sub_238B3B37C(v64, type metadata accessor for _ConversationRecordingContext);
    v65 = sub_238B33240(v59, v58, v111);

    *(v57 + 4) = v65;
    _os_log_impl(&dword_238B2C000, v49, v50, "Unwrapped end context to %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    MEMORY[0x23EE73110](v109, -1, -1);
    MEMORY[0x23EE73110](v57, -1, -1);
  }

  else
  {

    sub_238B3B37C(v52, type metadata accessor for _ConversationRecordingContext);
  }

  v66 = v0[7];
  v67 = SandboxExtendedURL.sandboxResolvedURL.getter();
  if (v67)
  {
    v68 = v67;
    v69 = v0[17];
    v70 = v0[15];
    v71 = v0[12];
    v105 = v0[11];
    v107 = v0[9];
    v110 = v0[10];
    sub_238B3AF90(v0[20], v69);
    v72 = sub_238B6C574();
    v73 = *(*(v72 - 8) + 16);
    v73(v71, v69, v72);
    v74 = v70[5];
    v75 = type metadata accessor for ConversationRecordingContext(0);
    v73(v71 + v75[5], v69 + v74, v72);
    v76 = v70[6];
    v77 = v75[6];
    v78 = sub_238B6C534();
    (*(*(v78 - 8) + 16))(v71 + v77, v69 + v76, v78);
    v79 = (v69 + v70[7]);
    v80 = *v79;
    v81 = v79[1];
    v82 = v79[2];
    v83 = v79[3];
    v84 = v79[4];
    v85 = *(v69 + v70[8]);
    v86 = (v69 + v70[9]);
    v87 = *v86;
    v88 = v86[1];
    v89 = (v71 + v75[7]);
    *v89 = v80;
    v89[1] = v81;
    v89[2] = v82;
    v89[3] = v83;
    v89[4] = v84;
    *(v71 + v75[8]) = v85;
    v90 = (v71 + v75[9]);
    *v90 = v87;
    v90[1] = v88;
    sub_238B34AC8(v80, v81, v82);

    sub_238B3B37C(v69, type metadata accessor for _ConversationRecordingContext);
    v91 = v71 + *(v105 + 20);
    sub_238B6C494();
    v92 = *((*MEMORY[0x277D85000] & *v107) + 0x60);
    (*(*(v110 + 88) + 24))(v71, *(v110 + 80));
    v93 = v0[20];
    v100 = v0[18];
    v99 = v0[19];
    v101 = v0[17];
    v103 = v0[13];
    v102 = v0[14];
    v104 = v0[12];

    sub_238B3B37C(v104, type metadata accessor for ConversationRecording);
    sub_238B3B37C(v93, type metadata accessor for _ConversationRecordingContext);

    v45 = v0[1];
  }

  else
  {
    v94 = sub_238B6C684();
    v95 = sub_238B6CA34();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_238B2C000, v94, v95, "Url is not in sandbox", v96, 2u);
      MEMORY[0x23EE73110](v96, -1, -1);
    }

    v97 = v0[20];

    sub_238B3AFF4();
    v98 = swift_allocError();
    swift_willThrow();
    sub_238B3B37C(v97, type metadata accessor for _ConversationRecordingContext);
    v23 = v98;
    v24 = sub_238B6C684();
    v25 = sub_238B6CA44();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v111[0] = v108;
      *v26 = 136315138;
      swift_getErrorValue();
      v27 = v0[2];
      v28 = v0[3];
      v29 = sub_238B6CAC4();
      v30 = *(v29 - 8);
      v31 = *(v30 + 64) + 15;
      v32 = swift_task_alloc();
      v106 = v25;
      v33 = *(v28 - 8);
      (*(v33 + 16))(v32, v27, v28);
      (*(v33 + 56))(v32, 0, 1, v28);
      v34 = sub_238B306D4(v32, v28);
      v36 = v35;
      (*(v30 + 8))(v32, v29);

      v37 = sub_238B33240(v34, v36, v111);

      *(v26 + 4) = v37;
      _os_log_impl(&dword_238B2C000, v24, v106, "Failed to notify client of finished recording :-( %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      MEMORY[0x23EE73110](v108, -1, -1);
      MEMORY[0x23EE73110](v26, -1, -1);
    }

    v38 = v0[19];
    v39 = v0[20];
    v41 = v0[17];
    v40 = v0[18];
    v43 = v0[13];
    v42 = v0[14];
    v44 = v0[12];
    swift_willThrow();

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_238B39D6C(void *a1, uint64_t a2, void *a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FB68, &qword_238B6E970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = a1;
  v15 = sub_238B6CA04();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_238B6E9A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_238B6E9B8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = a1;
  sub_238B3A900(0, 0, v12, &unk_238B6E9C8, v17);
}

uint64_t sub_238B39EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_238B6C9E4();
  v4[6] = sub_238B6C9D4();
  v6 = sub_238B6C994();

  return MEMORY[0x2822009F8](sub_238B39F98, v6, v5);
}

uint64_t sub_238B39F98()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_238B3A064;
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return sub_238B3919C(v12, v11);
}

uint64_t sub_238B3A064()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 56);
  if (v2)
  {
    v11 = sub_238B6C454();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_238B3A220(void *a1)
{
  v2 = v1;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v4 = sub_238B6C6A4();
  __swift_project_value_buffer(v4, qword_27DF60710);
  v5 = sub_238B6C684();
  v6 = sub_238B6CA44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238B2C000, v5, v6, "Asked to accept xpc connection", v7, 2u);
    MEMORY[0x23EE73110](v7, -1, -1);
  }

  [a1 setExportedObject_];
  v8 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];
  [a1 resume];

  return 1;
}

void sub_238B3A378(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  sub_238B6C9E4();
  sub_238B6C9D4();
  sub_238B6C994();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_238B3B3DC();
}

id sub_238B3A444()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _ConversationRecordingExtensionConfiguration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_238B3A518(void *a1)
{
  v2 = *v1;
  sub_238B3A220(a1);
  return 1;
}

uint64_t sub_238B3A540(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238B3A638;

  return v7(a1);
}

uint64_t sub_238B3A638()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238B3A730(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_238B3B780;

  return v7();
}

uint64_t sub_238B3A818(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_238B37F2C;

  return v8();
}

uint64_t sub_238B3A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FB68, &qword_238B6E970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_238B3B1A4(a3, v25 - v11, &qword_27DF5FB68, &qword_238B6E970);
  v13 = sub_238B6CA04();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_238B33360(v12, &qword_27DF5FB68, &qword_238B6E970);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_238B6C9F4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_238B6C994();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_238B6C8C4() + 32;
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

    sub_238B33360(a3, &qword_27DF5FB68, &qword_238B6E970);

    return v23;
  }

LABEL_8:
  sub_238B33360(a3, &qword_27DF5FB68, &qword_238B6E970);
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

uint64_t sub_238B3ABFC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238B3B784;

  return v7(a1);
}

id sub_238B3ACF4(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _ConversationRecordingExtensionConfiguration();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_238B3ADC0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for _ConversationRecordingExtensionConfiguration());
  return sub_238B3ACF4(a1);
}

unint64_t sub_238B3AE00()
{
  result = qword_27DF5FAC8[0];
  if (!qword_27DF5FAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF5FAC8);
  }

  return result;
}

uint64_t sub_238B3AE68(uint64_t a1)
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

uint64_t sub_238B3AEFC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_238B3AF38()
{
  result = qword_27DF5FB58;
  if (!qword_27DF5FB58)
  {
    type metadata accessor for _ConversationRecordingContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FB58);
  }

  return result;
}

uint64_t sub_238B3AF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConversationRecordingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238B3AFF4()
{
  result = qword_27DF5FB60;
  if (!qword_27DF5FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FB60);
  }

  return result;
}

uint64_t sub_238B3B048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConversationRecordingContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B3B0AC(uint64_t a1)
{
  v4 = *(type metadata accessor for _ConversationRecordingContext(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238B3B780;

  return sub_238B3889C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_238B3B1A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238B3B20C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238B3B780;

  return sub_238B3A540(a1, v5);
}

uint64_t sub_238B3B2C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238B37F2C;

  return sub_238B3A540(a1, v5);
}

uint64_t sub_238B3B37C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238B3B40C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238B37F2C;

  return sub_238B39EFC(v2, v3, v5, v4);
}

uint64_t sub_238B3B4CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238B3B780;

  return sub_238B3A730(v2, v3, v5);
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238B3B5CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238B3B780;

  return sub_238B3A818(a1, v4, v5, v7);
}

uint64_t sub_238B3B698(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238B3B780;

  return sub_238B3ABFC(a1, v5);
}

BOOL static ConversationTranscript.Segment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_238B6CDF4();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t ConversationTranscript.Segment.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = v0[3];
  sub_238B6C8D4();
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x23EE72A60](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  return MEMORY[0x23EE72A60](*&v6);
}

uint64_t ConversationTranscript.Segment.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_238B6CE64();
  ConversationTranscript.Segment.hash(into:)();
  return sub_238B6CEA4();
}

uint64_t sub_238B3B924()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_238B6CE64();
  ConversationTranscript.Segment.hash(into:)();
  return sub_238B6CEA4();
}

uint64_t sub_238B3B97C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_238B6CE64();
  ConversationTranscript.Segment.hash(into:)();
  return sub_238B6CEA4();
}

BOOL sub_238B3B9CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_238B6CDF4();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

uint64_t sub_238B3BA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationRecordingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversationTranscript.localTranscript.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConversationTranscript() + 20));
}

uint64_t type metadata accessor for ConversationTranscript()
{
  result = qword_27DF5FB80;
  if (!qword_27DF5FB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationTranscript.remoteTranscripts.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConversationTranscript() + 24));
}

uint64_t static ConversationTranscript.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ConversationRecordingContext(0) + 20);
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ConversationTranscript();
  if ((sub_238B3BCFC(*(a1 + *(v5 + 20)), *(a2 + *(v5 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_238B3BDC8(v7, v8);
}

uint64_t sub_238B3BC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = (a1 + i);
      v7 = (a2 + i);
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v8 = v6[7];
      v9 = v6[8];
      v10 = v7[7];
      v11 = v7[8];
      v12 = v6[5] == v7[5] && v6[6] == v7[6];
      if (!v12 && (sub_238B6CDF4() & 1) == 0)
      {
        break;
      }

      v13 = v8 == v10 && v9 == v11;
      if (!v13 && (sub_238B6CDF4() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_238B3BCFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(v4 - 1);
      v8 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_238B6CDF4();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }

        if (v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_238B3BDC8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v32 = (v6 - 1) & v6;
LABEL_12:
      v11 = v8 | (v3 << 6);
      v12 = (*(v2 + 48) + 40 * v11);
      v13 = *v12;
      v15 = v12[1];
      v14 = v12[2];
      v16 = v12[3];
      v17 = v12[4];
      v18 = *(*(v2 + 56) + 8 * v11);

      if (!v14)
      {
        return 1;
      }

      v33[0] = v13;
      v33[1] = v15;
      v33[2] = v14;
      v33[3] = v16;
      v33[4] = v17;
      v19 = sub_238B4DEF4(v33);
      v21 = v20;
      result = sub_238B3C7B0(v33);
      if ((v21 & 1) == 0 || (v22 = *(*(a2 + 56) + 8 * v19), v23 = *(v22 + 16), v23 != *(v18 + 16)))
      {
LABEL_33:

        return 0;
      }

      if (v23)
      {
        v24 = v22 == v18;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        v25 = 0;
        while (v23)
        {
          result = *(v22 + v25 + 32);
          v27 = *(v22 + v25 + 48);
          v26 = *(v22 + v25 + 56);
          v29 = *(v18 + v25 + 48);
          v28 = *(v18 + v25 + 56);
          if (result != *(v18 + v25 + 32) || *(v22 + v25 + 40) != *(v18 + v25 + 40))
          {
            result = sub_238B6CDF4();
            if ((result & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          if (v27 != v29 || v26 != v28)
          {
            goto LABEL_33;
          }

          v25 += 32;
          if (!--v23)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_36;
      }

LABEL_20:

      v6 = v32;
    }

    while (v32);
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t ConversationTranscript.hash(into:)(__int128 *a1)
{
  ConversationRecordingContext.hash(into:)(a1);
  v3 = type metadata accessor for ConversationTranscript();
  sub_238B37A70(a1, *(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));

  return sub_238B3C260(a1, v4);
}

uint64_t ConversationTranscript.hashValue.getter()
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v3);
  v1 = type metadata accessor for ConversationTranscript();
  sub_238B37A70(v3, *(v0 + *(v1 + 20)));
  sub_238B3C260(v3, *(v0 + *(v1 + 24)));
  return sub_238B6CEA4();
}

uint64_t sub_238B3C0A8(uint64_t a1)
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v4);
  sub_238B37A70(v4, *(v1 + *(a1 + 20)));
  sub_238B3C260(v4, *(v1 + *(a1 + 24)));
  return sub_238B6CEA4();
}

uint64_t sub_238B3C10C(__int128 *a1, uint64_t a2)
{
  ConversationRecordingContext.hash(into:)(a1);
  sub_238B37A70(a1, *(v2 + *(a2 + 20)));
  v5 = *(v2 + *(a2 + 24));

  return sub_238B3C260(a1, v5);
}

uint64_t sub_238B3C168(uint64_t a1, uint64_t a2)
{
  sub_238B6CE64();
  ConversationRecordingContext.hash(into:)(v5);
  sub_238B37A70(v5, *(v2 + *(a2 + 20)));
  sub_238B3C260(v5, *(v2 + *(a2 + 24)));
  return sub_238B6CEA4();
}

uint64_t sub_238B3C1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_238B6C554() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ConversationRecordingContext(0) + 20);
  if ((sub_238B6C554() & 1) == 0 || (sub_238B3BCFC(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_238B3BDC8(v8, v9);
}

uint64_t sub_238B3C260(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v28 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a2 + 48) + 40 * v10);
    v12 = *v11;
    v14 = v11[1];
    v13 = v11[2];
    v16 = v11[3];
    v15 = v11[4];
    v17 = *(*(a2 + 56) + 8 * v10);

    if (!v13)
    {
LABEL_21:

      return MEMORY[0x23EE72A40](v28);
    }

    v31 = a1[2];
    v32 = a1[3];
    v33 = *(a1 + 8);
    v29 = *a1;
    v30 = a1[1];
    MEMORY[0x23EE72A40](v12 + 1);
    sub_238B6C8D4();
    sub_238B6C8D4();

    MEMORY[0x23EE72A40](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 56);
      do
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        v22 = *(v19 - 1);
        v23 = *v19;

        sub_238B6C8D4();
        if (v22 == 0.0)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v22;
        }

        MEMORY[0x23EE72A60](*&v24);
        if (v23 == 0.0)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = v23;
        }

        MEMORY[0x23EE72A60](*&v25);

        v19 += 4;
        --v18;
      }

      while (v18);
    }

    v5 &= v5 - 1;

    result = sub_238B6CEA4();
    v28 ^= result;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_21;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_238B3C47C()
{
  result = qword_27DF5FB70;
  if (!qword_27DF5FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FB70);
  }

  return result;
}

unint64_t sub_238B3C4D4()
{
  result = qword_27DF5FB78;
  if (!qword_27DF5FB78)
  {
    type metadata accessor for ConversationTranscript();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FB78);
  }

  return result;
}

void sub_238B3C554()
{
  type metadata accessor for ConversationRecordingContext(319);
  if (v0 <= 0x3F)
  {
    sub_238B3C5F0();
    if (v1 <= 0x3F)
    {
      sub_238B3C640();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238B3C5F0()
{
  if (!qword_27DF5FB90)
  {
    v0 = sub_238B6C984();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF5FB90);
    }
  }
}

void sub_238B3C640()
{
  if (!qword_27DF5FB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF5FBA0, "~u");
    sub_238B3C6B8();
    v0 = sub_238B6C7F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF5FB98);
    }
  }
}

unint64_t sub_238B3C6B8()
{
  result = qword_27DF5FBA8;
  if (!qword_27DF5FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBA8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_238B3C718(uint64_t a1, int a2)
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

uint64_t sub_238B3C760(uint64_t result, int a2, int a3)
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

uint64_t Conversation.Member.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 Conversation.Member.handle.setter(char *a1)
{
  v2 = *a1;
  v8 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);

  *v1 = v2;
  result = v8;
  *(v1 + 8) = v8;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t Conversation.Member.identityBlob.getter()
{
  v1 = *(v0 + 40);
  sub_238B3C90C(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_238B3C90C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238B3C920(a1, a2);
  }

  return a1;
}

uint64_t sub_238B3C920(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Conversation.Member.identityBlob.setter(uint64_t a1, uint64_t a2)
{
  result = sub_238B3C9AC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_238B3C9AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238B33550(a1, a2);
  }

  return a1;
}

uint64_t Conversation.Member.init(handle:identityBlob:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  result = sub_238B3C9AC(0, 0xF000000000000000);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_238B3CA3C()
{
  if (*v0)
  {
    result = 0x797469746E656469;
  }

  else
  {
    result = 0x656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_238B3CA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_238B6CDF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xEC000000626F6C42)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B6CDF4();

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

uint64_t sub_238B3CB64(uint64_t a1)
{
  v2 = sub_238B3DA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B3CBA0(uint64_t a1)
{
  v2 = sub_238B3DA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Conversation.Member.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FBB0, "|u");
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 4);
  v18 = *(v1 + 3);
  v19 = v8;
  v11 = *(v1 + 5);
  v16 = *(v1 + 6);
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B3DA94();

  sub_238B6CEC4();
  LOBYTE(v22) = v7;
  v23 = v19;
  v24 = v9;
  v25 = v18;
  v26 = v10;
  v27 = 0;
  sub_238B36E30();
  v13 = v20;
  sub_238B6CDB4();

  if (!v13)
  {
    v22 = v17;
    v23 = v16;
    v27 = 1;
    sub_238B3C90C(v17, v16);
    sub_238B3DAE8();
    sub_238B6CD74();
    sub_238B3C9AC(v22, v23);
  }

  return (*(v21 + 8))(v6, v3);
}

uint64_t Conversation.Member.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x23EE72A40](*v0 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  if (v6 >> 60 == 15)
  {
    return sub_238B6CE84();
  }

  sub_238B6CE84();

  return sub_238B6C4E4();
}

uint64_t Conversation.Member.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  sub_238B6CE84();
  if (v7 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  return sub_238B6CEA4();
}

uint64_t Conversation.Member.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FBC8, &qword_238B6EB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B3DA94();
  sub_238B6CEB4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v17 = 0;
    v18 = 0xF000000000000000;
  }

  else
  {
    v28 = 0;
    sub_238B36ED8();
    sub_238B6CD44();
    v27 = v22;
    v12 = v24;
    v13 = v26;
    v20 = v25;
    v21 = v23;
    v28 = 1;
    sub_238B3DB3C();
    sub_238B6CCF4();
    (*(v6 + 8))(v9, v5);
    v14 = v22;
    v15 = v23;
    sub_238B3C9AC(0, 0xF000000000000000);
    *a2 = v27;
    v16 = v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = v12;
    *(a2 + 24) = v16;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;

    sub_238B3C90C(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    v17 = v14;
    v18 = v15;
  }

  return sub_238B3C9AC(v17, v18);
}

uint64_t sub_238B3D1F4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  MEMORY[0x23EE72A40](*v0 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  if (v6 >> 60 == 15)
  {
    return sub_238B6CE84();
  }

  sub_238B6CE84();

  return sub_238B6C4E4();
}

uint64_t sub_238B3D2C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  sub_238B6CE84();
  if (v7 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  return sub_238B6CEA4();
}

uint64_t Conversation.Member.debugDescription.getter()
{
  v1 = sub_238B6C894();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *v0;
  v5 = *(v0 + 1);
  v4 = *(v0 + 2);
  v7 = *(v0 + 3);
  v6 = *(v0 + 4);
  v9 = *(v0 + 5);
  v8 = *(v0 + 6);

  sub_238B3C90C(v9, v8);
  sub_238B6CB94();

  v10 = sub_238B6C8A4();
  MEMORY[0x23EE724B0](v10);

  MEMORY[0x23EE724B0](0x7469746E65646920, 0xEE003D626F6C4279);
  if (v8 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v8 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  sub_238B6C884();
  sub_238B6C874();
  sub_238B33550(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F858, &qword_238B6DCF8);
  v12 = sub_238B6C8A4();
  MEMORY[0x23EE724B0](v12);

  MEMORY[0x23EE724B0](62, 0xE100000000000000);
  return 0x207265626D654D3CLL;
}

uint64_t sub_238B3D554(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_238B3D6E4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_238B33550(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_238B578BC(v14, a3, a4, &v13);
  v10 = v4;
  sub_238B33550(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_238B3D6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_238B6C424();
  v11 = result;
  if (result)
  {
    result = sub_238B6C444();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_238B6C434();
  sub_238B578BC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_238B3D79C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_238B3C920(a3, a4);
          return sub_238B3D554(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s20LiveCommunicationKit12ConversationC6MemberV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_238B6CDF4() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_238B6CDF4() & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      sub_238B3C90C(v3, v5);
      sub_238B3C90C(v9, v8);
      v11 = sub_238B3D79C(v3, v5, v9, v8);
      sub_238B3C9AC(v9, v8);
      sub_238B3C9AC(v3, v5);
      return (v11 & 1) != 0;
    }

LABEL_13:
    sub_238B3C90C(v3, v5);
    sub_238B3C90C(v9, v8);
    sub_238B3C9AC(v3, v5);
    sub_238B3C9AC(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_13;
  }

  sub_238B3C90C(v3, v5);
  sub_238B3C90C(v9, v8);
  sub_238B3C9AC(v3, v5);
  return 1;
}

unint64_t sub_238B3DA94()
{
  result = qword_27DF5FBB8;
  if (!qword_27DF5FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBB8);
  }

  return result;
}

unint64_t sub_238B3DAE8()
{
  result = qword_27DF5FBC0;
  if (!qword_27DF5FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBC0);
  }

  return result;
}

unint64_t sub_238B3DB3C()
{
  result = qword_27DF5FBD0;
  if (!qword_27DF5FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBD0);
  }

  return result;
}

unint64_t sub_238B3DB94()
{
  result = qword_27DF5FBD8;
  if (!qword_27DF5FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBD8);
  }

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

uint64_t sub_238B3DC48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238B3DC90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6MemberV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6MemberV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238B3DE40()
{
  result = qword_27DF5FBE0;
  if (!qword_27DF5FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBE0);
  }

  return result;
}

unint64_t sub_238B3DE98()
{
  result = qword_27DF5FBE8;
  if (!qword_27DF5FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBE8);
  }

  return result;
}

unint64_t sub_238B3DEF0()
{
  result = qword_27DF5FBF0;
  if (!qword_27DF5FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FBF0);
  }

  return result;
}

uint64_t sub_238B3DF44@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = [a2 UUID];
  sub_238B6C564();

  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_238B4DF9C(v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    v19 = *(v7 + 8);

    v19(v13, v6);
    result = sub_238B3E9B0(a2);
  }

  else
  {
    v29 = v3;
    v21 = *(v7 + 8);
    v21(v13, v6);
    v22 = type metadata accessor for Conversation(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = a2;
    v18 = sub_238B3F958(v25);

    v26 = [v25 0x278A602F8];
    sub_238B6C564();

    v27 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a1;
    sub_238B4E6EC(v18, v11, isUniquelyReferenced_nonNull_native);
    result = (v21)(v11, v6);
    *a1 = v31;
  }

  *v30 = v18;
  return result;
}

uint64_t sub_238B3E170()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ConversationManager.Configuration.ringtoneName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConversationManager.Configuration.ringtoneName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConversationManager.Configuration.iconTemplateImageData.getter()
{
  v1 = *(v0 + 16);
  sub_238B3C90C(v1, *(v0 + 24));
  return v1;
}

uint64_t ConversationManager.Configuration.iconTemplateImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_238B3C9AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConversationManager.Configuration.supportedHandleTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

id sub_238B3E424()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = v0[7];
  v14 = *(v0 + 64);
  v10 = [objc_allocWithZone(MEMORY[0x277CBAFF0]) init];
  if (v1)
  {
    v1 = sub_238B6C844();
  }

  [v10 setRingtoneSound_];

  if (v4 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_238B6C4C4();
  }

  [v10 setIconTemplateImageData_];

  [v10 setMaximumCallGroups_];
  [v10 setMaximumCallsPerCallGroup_];
  [v10 setIncludesCallsInRecents_];
  [v10 setSupportsVideo_];
  v12 = sub_238B3E5B0(v9);
  sub_238B5C664(v12);

  sub_238B6CA84();
  [v10 setSupportsDynamicSystemUI_];
  [v10 setSupportsAudioTranslation_];
  return v10;
}

uint64_t sub_238B3E5B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_238B5FB78(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_238B6CAF4();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_238B5FB78((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12 + 1;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_238B3E9A4(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_238B3E9A4(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ConversationManager.Configuration.init(ringtoneName:iconTemplateImageData:maximumConversationGroups:maximumConversationsPerConversationGroup:includesConversationInRecents:supportsVideo:supportedHandleTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_238B3C9AC(0, 0xF000000000000000);
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = 0;
  return result;
}

uint64_t ConversationManager.Configuration.init(ringtoneName:iconTemplateImageData:maximumConversationGroups:maximumConversationsPerConversationGroup:includesConversationInRecents:supportsVideo:supportedHandleTypes:supportsAudioTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_238B3C9AC(0, 0xF000000000000000);
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_238B3E8F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238B3E940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238B3E9A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_238B3E9B0(void *a1)
{
  if ([a1 hasEnded])
  {
    v3 = 5;
  }

  else if ([a1 isOnHold])
  {
    v3 = 3;
  }

  else if ([a1 hasConnected])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [a1 localMemberIdentity];
  if (v4)
  {
    v5 = v4;
    v6 = sub_238B6C4D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = *(v1 + 16);
  v10 = v9 + *(*v9 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  v12 = type metadata accessor for InternalConversationState(0);
  *(v10 + *(v12 + 20)) = v3;
  v13 = (v10 + *(v12 + 24));
  if (v13[2])
  {
    v14 = v13[5];
    v15 = v13[6];
    v13[5] = v6;
    v13[6] = v8;
    sub_238B3C90C(v6, v8);
    sub_238B3C9AC(v14, v15);
  }

  os_unfair_lock_unlock((v9 + v11));

  return sub_238B3C9AC(v6, v8);
}

uint64_t Conversation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit12Conversation_uuid;
  v4 = sub_238B6C574();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void Conversation.state.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3 + *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  *a1 = *(v4 + *(type metadata accessor for InternalConversationState(0) + 20));

  os_unfair_lock_unlock((v3 + v5));
}

void sub_238B3EC5C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = v3 + *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  LOBYTE(v4) = *(v4 + *(type metadata accessor for InternalConversationState(0) + 20));
  os_unfair_lock_unlock((v3 + v5));
  *a2 = v4;
}

void sub_238B3ECF8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = v3 + *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  *(v4 + *(type metadata accessor for InternalConversationState(0) + 20)) = v2;

  os_unfair_lock_unlock((v3 + v5));
}

void Conversation.localMember.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = (v3 + *(type metadata accessor for InternalConversationState(0) + 24) + v4);
  v7 = v6[2];
  if (v7)
  {
    v8 = *v6;
    v9 = v6[1];
    v11 = v6[3];
    v10 = v6[4];
    v12 = v6[2];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v7;
  a1[3] = v11;
  a1[4] = v10;

  os_unfair_lock_unlock((v3 + v5));
}

void Conversation.localConversationMember.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = (v3 + *(type metadata accessor for InternalConversationState(0) + 24) + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v12 = v6[5];
  v13 = v6[6];
  *a1 = *v6;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v12;
  a1[6] = v13;
  sub_238B3EF54(v7, v8, v9, v10, v11, v12, v13);

  os_unfair_lock_unlock((v3 + v5));
}

void sub_238B3EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3)
  {

    sub_238B3C90C(a6, a7);
  }
}

void sub_238B3EFB4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = (v3 + *(type metadata accessor for InternalConversationState(0) + 24) + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v12 = v6[5];
  v13 = v6[6];
  sub_238B3EF54(*v6, v8, v9, v10, v11, v12, v13);
  os_unfair_lock_unlock((v3 + v5));
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v11;
  a2[5] = v12;
  a2[6] = v13;
}

void sub_238B3F0A4(__int128 *a1, uint64_t a2)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 6);
  v5 = *a1;
  v2 = *(*a2 + 16);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_238B3F86C(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

__n128 sub_238B3F15C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for InternalConversationState(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  sub_238B3F888(a2, v13);
  sub_238B3F8F8(v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 1) = v11;
  result = *(a2 + 32);
  *(v3 + 2) = result;
  v3[6] = *(a2 + 48);
  return result;
}

uint64_t Conversation.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC20LiveCommunicationKit12Conversation_uuid;
  v3 = sub_238B6C574();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC20LiveCommunicationKit12Conversation___observationRegistrar;
  v5 = sub_238B6C674();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t Conversation.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20LiveCommunicationKit12Conversation_uuid;
  v3 = sub_238B6C574();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC20LiveCommunicationKit12Conversation___observationRegistrar;
  v5 = sub_238B6C674();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Conversation.debugDescription.getter()
{
  sub_238B6CB94();
  MEMORY[0x23EE724B0](0xD000000000000013, 0x8000000238B73590);
  sub_238B6C574();
  sub_238B3F5D0();
  v1 = sub_238B6CDD4();
  MEMORY[0x23EE724B0](v1);

  MEMORY[0x23EE724B0](0x3D657461747320, 0xE700000000000000);
  v2 = *(v0 + 16);
  v3 = v2 + *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  v5 = type metadata accessor for InternalConversationState(0);
  v6 = *(v3 + *(v5 + 20));
  os_unfair_lock_unlock((v2 + v4));
  sub_238B6CC54();
  MEMORY[0x23EE724B0](0x654D6C61636F6C20, 0xED00003D7265626DLL);
  os_unfair_lock_lock((v2 + v4));
  v7 = (v3 + *(v5 + 24));
  if (v7[2])
  {
    v8 = *v7;
    v9 = v7[1];
    v11 = v7[3];
    v10 = v7[4];
    v12 = v7[2];
  }

  os_unfair_lock_unlock((v2 + v4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC08, &qword_238B6EF20);
  v13 = sub_238B6C8A4();
  MEMORY[0x23EE724B0](v13);

  MEMORY[0x23EE724B0](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_238B3F5D0()
{
  result = qword_27DF5FC00;
  if (!qword_27DF5FC00)
  {
    sub_238B6C574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FC00);
  }

  return result;
}

uint64_t sub_238B3F674()
{
  result = sub_238B6C574();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_238B6C674();
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

void sub_238B3F790()
{
  sub_238B6C574();
  if (v0 <= 0x3F)
  {
    sub_238B3F81C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238B3F81C()
{
  if (!qword_27DF5FC30)
  {
    v0 = sub_238B6CAC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF5FC30);
    }
  }
}

uint64_t sub_238B3F888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC38, &qword_238B6EFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_238B3F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3)
  {

    sub_238B3C9AC(a6, a7);
  }
}

uint64_t sub_238B3F958(void *a1)
{
  v3 = sub_238B6C574();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for InternalConversationState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238B6C664();
  v15 = [a1 UUID];
  sub_238B6C564();

  v16 = a1;
  if ([v16 hasEnded])
  {

    v17 = 5;
  }

  else if ([v16 isOnHold])
  {

    v17 = 3;
  }

  else
  {
    v18 = [v16 hasConnected];

    if (v18)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }
  }

  v19 = *(v4 + 32);
  v19(v14, v10, v3);
  v14[*(v11 + 20)] = v17;
  v20 = &v14[*(v11 + 24)];
  *(v20 + 6) = 0;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *v20 = 0u;
  v21 = [v16 UUID];
  sub_238B6C564();

  v19((v1 + OBJC_IVAR____TtC20LiveCommunicationKit12Conversation_uuid), v8, v3);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC40, &qword_238B6EFD8);
  v23 = *(v22 + 52);
  v24 = (*(v22 + 48) + 3) & 0x1FFFFFFFCLL;
  v25 = swift_allocObject();
  *(v25 + ((*(*v25 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_238B3FC58(v14, v25 + *(*v25 + *MEMORY[0x277D841D0] + 16));
  *(v1 + 16) = v25;
  return v1;
}

uint64_t sub_238B3FC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalConversationState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

void ConversationAction.uuid.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) UUID];
  sub_238B6C564();
}

uint64_t ConversationAction.state.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_238B3FE5C(v4, v5);
}

uint64_t sub_238B3FE5C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_238B3FE90@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t ConversationAction.__allocating_init(conversationUUID:timeoutDate:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_238B6C534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238B6C574();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CBAF38]) init];
  (*(v11 + 16))(v14, a1, v10);
  (*(v6 + 16))(v9, a2, v5);
  v16 = (*(v2 + 112))(v14, v9, v15);
  (*(v6 + 8))(a2, v5);
  (*(v11 + 8))(a1, v10);
  return v16;
}

uint64_t sub_238B40108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a3;
  v10 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v11 = sub_238B6C574();
  (*(*(v11 - 8) + 32))(v9 + v10, a1, v11);
  v12 = (v9 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v14 = sub_238B6C534();
  (*(*(v14 - 8) + 32))(v9 + v13, a2, v14);
  return v9;
}

id sub_238B4021C(const char *a1, SEL *a2)
{
  v5 = v2;
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v6 = sub_238B6C6A4();
  __swift_project_value_buffer(v6, qword_27DF60710);

  v7 = sub_238B6C684();
  v8 = sub_238B6CA44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    type metadata accessor for ConversationAction();

    v11 = sub_238B6C8B4();
    v13 = sub_238B33240(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_238B2C000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23EE73110](v10, -1, -1);
    MEMORY[0x23EE73110](v9, -1, -1);
  }

  return [*(v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) *a2];
}

uint64_t ConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConversationAction()
{
  result = qword_27DF5FC48;
  if (!qword_27DF5FC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B40504()
{
  result = sub_238B6C574();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_238B6C534();
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

uint64_t StartCellularConversationAction.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t type metadata accessor for StartCellularConversationAction()
{
  result = qword_280B60778;
  if (!qword_280B60778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartCellularConversationAction.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ConversationHistoryManager.RecentConversation();
  v5 = *(a1 + *(result + 20));
  if (*(v5 + 16))
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 48);
    v8 = *(v5 + 56);
    v9 = *(v5 + 64);
    *a2 = *(v5 + 32);
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    started = type metadata accessor for StartCellularConversationAction();
    v11 = *(started + 20);
    v12 = sub_238B6C574();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a2 + v11, a1, v12);

    sub_238B41E38(a1, type metadata accessor for ConversationHistoryManager.RecentConversation);
    (*(v13 + 56))(a2 + v11, 0, 1, v12);
    v14 = *(started + 24);
    v15 = type metadata accessor for CellularService();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2 + v14, 1, 1, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StartCellularConversationAction.init(_:cellularService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  started = type metadata accessor for StartCellularConversationAction();
  sub_238B41D6C(a2, a3 + *(started + 24), &qword_27DF5FC58, &qword_238B6F030);
  v9 = *(started + 20);
  v10 = sub_238B6C574();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3 + v9, 1, 1, v10);
}

uint64_t sub_238B40910()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x72616C756C6C6563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_238B40978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B42140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B409A0(uint64_t a1)
{
  v2 = sub_238B41CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B409DC(uint64_t a1)
{
  v2 = sub_238B41CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartCellularConversationAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC60, &qword_238B6F038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B41CB4();
  sub_238B6CEC4();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v20 = *v3;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v19[7] = 0;
  sub_238B36E30();

  sub_238B6CDB4();

  if (!v2)
  {
    started = type metadata accessor for StartCellularConversationAction();
    v16 = *(started + 20);
    v20 = 1;
    sub_238B6C574();
    sub_238B42264(&qword_27DF5F9C8, MEMORY[0x277CC95F0]);
    sub_238B6CD74();
    v17 = *(started + 24);
    v20 = 2;
    type metadata accessor for CellularService();
    sub_238B42264(&qword_27DF5FC70, type metadata accessor for CellularService);
    sub_238B6CD74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StartCellularConversationAction.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for CellularService();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC58, &qword_238B6F030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v29 - v7;
  v8 = sub_238B6C574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v17 = v0[1];
  v16 = v0[2];
  v18 = v0[3];
  v19 = v0[4];
  MEMORY[0x23EE72A40](*v0 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  started = type metadata accessor for StartCellularConversationAction();
  sub_238B3B1A4(v0 + *(started + 20), v15, &qword_27DF5FC78, &qword_238B6F040);
  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_238B6CE84();
  }

  else
  {
    v21 = v30;
    (*(v9 + 32))(v30, v15, v8);
    sub_238B6CE84();
    sub_238B42264(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
    sub_238B6C814();
    (*(v9 + 8))(v21, v8);
  }

  v22 = v32;
  sub_238B3B1A4(v1 + *(started + 24), v32, &qword_27DF5FC58, &qword_238B6F030);
  v23 = v34;
  if ((*(v33 + 48))(v22, 1, v34) == 1)
  {
    return sub_238B6CE84();
  }

  v25 = v31;
  sub_238B41D08(v22, v31);
  sub_238B6CE84();
  sub_238B42264(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v26 = (v25 + *(v23 + 20));
  v27 = *v26;
  v28 = v26[1];
  sub_238B6C8D4();
  return sub_238B41E38(v25, type metadata accessor for CellularService);
}

uint64_t StartCellularConversationAction.hashValue.getter()
{
  sub_238B6CE64();
  StartCellularConversationAction.hash(into:)();
  return sub_238B6CEA4();
}

uint64_t StartCellularConversationAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC58, &qword_238B6F030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC80, &qword_238B6F048);
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  started = type metadata accessor for StartCellularConversationAction();
  v17 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_238B41CB4();
  sub_238B6CEB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  v22 = v31;
  v29 = v7;
  v38 = 0;
  sub_238B36ED8();
  sub_238B6CD44();
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v26 = v19;
  *v19 = v34;
  *(v19 + 8) = v23;
  *(v19 + 3) = v24;
  *(v19 + 4) = v25;
  sub_238B6C574();
  v34 = 1;
  sub_238B42264(&qword_27DF5FA00, MEMORY[0x277CC95F0]);
  sub_238B6CCF4();
  sub_238B41D6C(v11, &v19[*(started + 20)], &qword_27DF5FC78, &qword_238B6F040);
  type metadata accessor for CellularService();
  v34 = 2;
  sub_238B42264(&qword_27DF5FC88, type metadata accessor for CellularService);
  v27 = v29;
  sub_238B6CCF4();
  (*(v22 + 8))(v15, v32);
  sub_238B41D6C(v27, v26 + *(started + 24), &qword_27DF5FC58, &qword_238B6F030);
  sub_238B41DD4(v26, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return sub_238B41E38(v26, type metadata accessor for StartCellularConversationAction);
}

uint64_t sub_238B41570()
{
  sub_238B6CE64();
  StartCellularConversationAction.hash(into:)();
  return sub_238B6CEA4();
}

uint64_t sub_238B415B4()
{
  sub_238B6CE64();
  StartCellularConversationAction.hash(into:)();
  return sub_238B6CEA4();
}

uint64_t _s20LiveCommunicationKit31StartCellularConversationActionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for CellularService();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC58, &qword_238B6F030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FCB0, &qword_238B6F258);
  v12 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v14 = &v55 - v13;
  v15 = sub_238B6C574();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15);
  v61 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FCB8, &unk_238B6F260);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  v59 = v11;
  v60 = v4;
  v57 = v7;
  v58 = v14;
  v27 = a1[3];
  v26 = a1[4];
  v28 = a2[3];
  v29 = a2[4];
  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_238B6CDF4() & 1) == 0)
  {
    return 0;
  }

  if ((v27 != v28 || v26 != v29) && (sub_238B6CDF4() & 1) == 0)
  {
    return 0;
  }

  started = type metadata accessor for StartCellularConversationAction();
  v30 = *(started + 20);
  v31 = *(v22 + 48);
  sub_238B3B1A4(a1 + v30, v25, &qword_27DF5FC78, &qword_238B6F040);
  sub_238B3B1A4(a2 + v30, &v25[v31], &qword_27DF5FC78, &qword_238B6F040);
  v32 = *(v64 + 48);
  if (v32(v25, 1, v15) == 1)
  {
    v33 = v32(&v25[v31], 1, v15);
    v34 = v59;
    v35 = v60;
    if (v33 == 1)
    {
      sub_238B33360(v25, &qword_27DF5FC78, &qword_238B6F040);
      goto LABEL_15;
    }

LABEL_13:
    v37 = &qword_27DF5FCB8;
    v38 = &unk_238B6F260;
    v39 = v25;
LABEL_29:
    sub_238B33360(v39, v37, v38);
    return 0;
  }

  sub_238B3B1A4(v25, v21, &qword_27DF5FC78, &qword_238B6F040);
  v36 = v32(&v25[v31], 1, v15);
  v35 = v60;
  if (v36 == 1)
  {
    (*(v64 + 8))(v21, v15);
    goto LABEL_13;
  }

  v40 = v64;
  v41 = &v25[v31];
  v42 = v61;
  (*(v64 + 32))(v61, v41, v15);
  sub_238B42264(&qword_27DF5FCC0, MEMORY[0x277CC95F0]);
  v43 = sub_238B6C824();
  v44 = *(v40 + 8);
  v44(v42, v15);
  v44(v21, v15);
  v34 = v59;
  sub_238B33360(v25, &qword_27DF5FC78, &qword_238B6F040);
  if (v43)
  {
LABEL_15:
    v45 = *(started + 24);
    v46 = *(v62 + 48);
    v47 = v58;
    sub_238B3B1A4(a1 + v45, v58, &qword_27DF5FC58, &qword_238B6F030);
    sub_238B3B1A4(a2 + v45, v47 + v46, &qword_27DF5FC58, &qword_238B6F030);
    v48 = *(v63 + 48);
    if (v48(v47, 1, v35) == 1)
    {
      if (v48(v47 + v46, 1, v35) == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_238B3B1A4(v47, v34, &qword_27DF5FC58, &qword_238B6F030);
      if (v48(v47 + v46, 1, v35) != 1)
      {
        v49 = v57;
        sub_238B41D08(v47 + v46, v57);
        if (sub_238B6C554())
        {
          if (v50 = *(v35 + 20), v51 = *(v34 + v50), v52 = *(v34 + v50 + 8), v53 = (v49 + v50), v51 == *v53) && v52 == v53[1] || (sub_238B6CDF4())
          {
            sub_238B41E38(v49, type metadata accessor for CellularService);
            sub_238B41E38(v34, type metadata accessor for CellularService);
LABEL_26:
            sub_238B33360(v47, &qword_27DF5FC58, &qword_238B6F030);
            return 1;
          }
        }

        sub_238B41E38(v49, type metadata accessor for CellularService);
        sub_238B41E38(v34, type metadata accessor for CellularService);
        v37 = &qword_27DF5FC58;
        v38 = &qword_238B6F030;
        goto LABEL_28;
      }

      sub_238B41E38(v34, type metadata accessor for CellularService);
    }

    v37 = &qword_27DF5FCB0;
    v38 = &qword_238B6F258;
LABEL_28:
    v39 = v47;
    goto LABEL_29;
  }

  return 0;
}

unint64_t sub_238B41CB4()
{
  result = qword_27DF5FC68;
  if (!qword_27DF5FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FC68);
  }

  return result;
}

uint64_t sub_238B41D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellularService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B41D6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_238B41DD4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartCellularConversationAction();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_238B41E38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_238B41F08()
{
  sub_238B41FD4(319, &qword_280B608E8, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_238B41FD4(319, qword_280B608A8, type metadata accessor for CellularService);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238B41FD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_238B6CAC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_238B4203C()
{
  result = qword_27DF5FC98;
  if (!qword_27DF5FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FC98);
  }

  return result;
}

unint64_t sub_238B42094()
{
  result = qword_27DF5FCA0;
  if (!qword_27DF5FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FCA0);
  }

  return result;
}

unint64_t sub_238B420EC()
{
  result = qword_27DF5FCA8;
  if (!qword_27DF5FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FCA8);
  }

  return result;
}

uint64_t sub_238B42140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000238B73660 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C756C6C6563 && a2 == 0xEF65636976726553)
  {

    return 2;
  }

  else
  {
    v6 = sub_238B6CDF4();

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

uint64_t sub_238B42264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238B422AC()
{
  v1 = *(v0 + 16);
  sub_238B42A34();
  sub_238B6C7B4();
  return v3;
}

uint64_t sub_238B42428()
{
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v0 = sub_238B6C6A4();
  __swift_project_value_buffer(v0, qword_27DF60710);
  v1 = sub_238B6C684();
  v2 = sub_238B6CA44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_238B33240(0xD000000000000034, 0x8000000238B736C0, &v6);
    _os_log_impl(&dword_238B2C000, v1, v2, "Server disconnected from %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x23EE73110](v4, -1, -1);
    MEMORY[0x23EE73110](v3, -1, -1);
  }

  swift_beginAccess();
  swift_weakLoadStrong();
}

uint64_t sub_238B4258C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  started = type metadata accessor for StartCellularConversationMessage();
  v2[4] = started;
  v4 = *(*(started - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B42620, 0, 0);
}

uint64_t sub_238B42620()
{
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_27DF60710);
  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238B2C000, v2, v3, "Proxying StartCellularConversationAction...", v4, 2u);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  v8 = *(v7 + 16);
  sub_238B41DD4(v6, v5);
  v9 = *(MEMORY[0x277CF7E50] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = sub_238B42980();
  *v10 = v0;
  v10[1] = sub_238B42794;
  v13 = v0[4];
  v12 = v0[5];

  return MEMORY[0x282149828](v12, v13, v11);
}

uint64_t sub_238B42794()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *v1;
  v4[7] = v0;

  sub_238B429D8(v3);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238B428F8, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_238B428F8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

unint64_t sub_238B42980()
{
  result = qword_280B606E8[0];
  if (!qword_280B606E8[0])
  {
    type metadata accessor for StartCellularConversationMessage();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B606E8);
  }

  return result;
}

uint64_t sub_238B429D8(uint64_t a1)
{
  started = type metadata accessor for StartCellularConversationMessage();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_238B42A34()
{
  result = qword_280B60798;
  if (!qword_280B60798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60798);
  }

  return result;
}

uint64_t sub_238B42A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F820, &qword_238B6F7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartCellularConversationMessage()
{
  result = qword_280B606A0;
  if (!qword_280B606A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B42B74()
{
  result = type metadata accessor for StartCellularConversationAction();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238B42C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_238B42CB0()
{
  v0 = sub_238B6C6B4();
  __swift_allocate_value_buffer(v0, qword_280B61348);
  v1 = __swift_project_value_buffer(v0, qword_280B61348);
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x8000000238B73700;
  v2 = *MEMORY[0x277CF7E30];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_238B42D54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  started = type metadata accessor for StartCellularConversationAction();
  v5 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD08, &qword_238B6F538);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for StartCellularConversationMessage();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B437C0();
  sub_238B6CEB4();
  if (!v2)
  {
    v16 = v19;
    sub_238B4387C(&qword_27DF5FD18, type metadata accessor for StartCellularConversationAction);
    v17 = v21;
    sub_238B6CD44();
    (*(v20 + 8))(v10, v7);
    sub_238B43814(v17, v14, type metadata accessor for StartCellularConversationAction);
    sub_238B43814(v14, v16, type metadata accessor for StartCellularConversationMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_238B42FC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280B607A0 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6B4();
  v3 = __swift_project_value_buffer(v2, qword_280B61348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_238B43088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B43110(uint64_t a1)
{
  v2 = sub_238B437C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B4314C(uint64_t a1)
{
  v2 = sub_238B437C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B431A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD20, &qword_238B6F540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B437C0();
  sub_238B6CEC4();
  type metadata accessor for StartCellularConversationAction();
  sub_238B4387C(&qword_27DF5FD28, type metadata accessor for StartCellularConversationAction);
  sub_238B6CDB4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238B43318(uint64_t a1)
{
  v2 = sub_238B4376C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B43354(uint64_t a1)
{
  v2 = sub_238B4376C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B433B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FCF8, &qword_238B6F530);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B4376C();
  sub_238B6CEC4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_238B434D0()
{
  result = qword_280B60788;
  if (!qword_280B60788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60788);
  }

  return result;
}

unint64_t sub_238B43528()
{
  result = qword_280B60790;
  if (!qword_280B60790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B60790);
  }

  return result;
}

uint64_t sub_238B43640(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF5FCE8, &qword_238B6F458);
    sub_238B4387C(a2, type metadata accessor for CellularService);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238B4376C()
{
  result = qword_27DF5FD00;
  if (!qword_27DF5FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD00);
  }

  return result;
}

unint64_t sub_238B437C0()
{
  result = qword_27DF5FD10;
  if (!qword_27DF5FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD10);
  }

  return result;
}

uint64_t sub_238B43814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238B4387C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238B438E8()
{
  result = qword_27DF5FD30;
  if (!qword_27DF5FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD30);
  }

  return result;
}

unint64_t sub_238B43940()
{
  result = qword_27DF5FD38;
  if (!qword_27DF5FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD38);
  }

  return result;
}

unint64_t sub_238B43998()
{
  result = qword_27DF5FD40;
  if (!qword_27DF5FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD40);
  }

  return result;
}

unint64_t sub_238B439F0()
{
  result = qword_27DF5FD48;
  if (!qword_27DF5FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD48);
  }

  return result;
}

unint64_t sub_238B43A48()
{
  result = qword_27DF5FD50;
  if (!qword_27DF5FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF5FD50);
  }

  return result;
}

uint64_t ConversationDialingService.__allocating_init(server:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ConversationDialingService.init(server:)(a1);
  return v2;
}

void *ConversationDialingService.init(server:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v5 = sub_238B6C6A4();
  __swift_project_value_buffer(v5, qword_280B61330);
  v6 = sub_238B6C684();
  v7 = sub_238B6CA44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238B2C000, v6, v7, "Initialising conversation dialing service", v8, 2u);
    MEMORY[0x23EE73110](v8, -1, -1);
  }

  *(swift_allocObject() + 16) = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD58, &qword_238B6F720);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v2[2] = sub_238B6C6F4();
  sub_238B43D04(a1, (v2 + 3));
  return v2;
}

uint64_t sub_238B43D04(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Void __swiftcall ConversationDialingService.start()()
{
  v1 = v0;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_280B61330);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238B2C000, v3, v4, "Starting conversation dialing service", v5, 2u);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  type metadata accessor for StartCellularConversationMessage();
  sub_238B42980();

  sub_238B6C744();

  v7 = swift_allocObject();
  *(v7 + 16) = sub_238B455D0;
  *(v7 + 24) = v1;
  sub_238B42A34();

  sub_238B6C734();

  sub_238B6C754();
}

uint64_t sub_238B43EBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B37F2C;

  return sub_238B43F54(a1);
}

uint64_t sub_238B43F54(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  started = type metadata accessor for StartCellularConversationAction();
  v2[6] = started;
  v4 = *(started - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(type metadata accessor for StartCellularConversationMessage() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD70, &qword_238B6F790) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FD78, &qword_238B6F798);
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B44134, 0, 0);
}

uint64_t sub_238B44134()
{
  v81 = v0;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[4];
  v6 = sub_238B6C6A4();
  v0[21] = __swift_project_value_buffer(v6, qword_280B61330);
  v7 = *(v4 + 16);
  v0[22] = v7;
  v0[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v3);
  v7(v2, v5, v3);
  v8 = sub_238B6C684();
  v9 = sub_238B6CA44();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[20];
  if (v10)
  {
    v76 = v9;
    v77 = v7;
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[6];
    v17 = v0[7];
    v18 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v80[0] = v75;
    *v18 = 136315394;
    sub_238B6C6D4();
    sub_238B45F94(v14, v13);
    (*(v17 + 56))(v13, 0, 1, v16);
    sub_238B45FF8(v13, v15);
    v19 = (*(v17 + 48))(v15, 1, v16);
    v20 = v0[13];
    if (v19 == 1)
    {
      v21 = 7104878;
      sub_238B33360(v20, &qword_27DF5FD70, &qword_238B6F790);
      v22 = 0xE300000000000000;
    }

    else
    {
      v28 = v0[8];
      v27 = v0[9];
      v29 = v0[6];
      sub_238B45F94(v20, v27);
      sub_238B41DD4(v27, v28);
      v21 = sub_238B6C8B4();
      v22 = v30;
      sub_238B45F38(v27);
    }

    v32 = v0[19];
    v31 = v0[20];
    v34 = v0[15];
    v33 = v0[16];
    sub_238B33360(v0[14], &qword_27DF5FD70, &qword_238B6F790);
    v26 = *(v33 + 8);
    v26(v31, v34);
    v35 = sub_238B33240(v21, v22, v80);

    *(v18 + 4) = v35;
    *(v18 + 12) = 2082;
    v36 = sub_238B6C6C4();
    v38 = v0[19];
    v39 = v0[15];
    v40 = v0[16];
    if (v37)
    {
      v0[2] = v36;
      v0[3] = v37;
      v41 = sub_238B6C8B4();
      v43 = v42;
      v26(v38, v39);
    }

    else
    {
      v41 = 7104878;
      v26(v0[19], v0[15]);
      v43 = 0xE300000000000000;
    }

    v44 = sub_238B33240(v41, v43, v80);

    *(v18 + 14) = v44;
    _os_log_impl(&dword_238B2C000, v8, v76, "Handling incoming StartCellularConversationMessage message; request: %s, bundleID: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v75, -1, -1);
    MEMORY[0x23EE73110](v18, -1, -1);

    v7 = v77;
  }

  else
  {
    v23 = v0[19];
    v24 = v0[15];
    v25 = v0[16];

    v26 = *(v25 + 8);
    v26(v23, v24);
    v26(v11, v24);
  }

  v0[24] = v26;
  v7(v0[18], v0[4], v0[15]);
  v45 = sub_238B6C684();
  v46 = sub_238B6CA44();
  v47 = os_log_type_enabled(v45, v46);
  v48 = v0[18];
  v49 = v26;
  v50 = v0[15];
  v51 = v0[16];
  if (v47)
  {
    v52 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80[0] = v78;
    *v52 = 136446210;
    v53 = sub_238B6C6C4();
    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0x6E776F6E6B6E75;
    }

    if (v54)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0xE700000000000000;
    }

    v49(v48, v50);
    v57 = sub_238B33240(v55, v56, v80);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_238B2C000, v45, v46, "Checking that %{public}s is the default dialer", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x23EE73110](v78, -1, -1);
    MEMORY[0x23EE73110](v52, -1, -1);
  }

  else
  {

    v49(v48, v50);
  }

  sub_238B45AD8(v0[4], &qword_27DF5FD78, &qword_238B6F798);
  v58 = sub_238B6C684();
  v59 = sub_238B6CA44();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_238B2C000, v58, v59, "Dial is trusted!", v60, 2u);
    MEMORY[0x23EE73110](v60, -1, -1);
  }

  v61 = v0[15];
  v62 = v0[11];
  v63 = v0[4];
  v64 = v0[5];

  v65 = v64[6];
  v66 = v64[7];
  __swift_project_boxed_opaque_existential_1(v64 + 3, v65);
  sub_238B6C6D4();
  v67 = sub_238B6C6C4();
  v69 = v68;
  v0[25] = v68;
  v70 = *(v66 + 8);
  v79 = (v70 + *v70);
  v71 = v70[1];
  v72 = swift_task_alloc();
  v0[26] = v72;
  *v72 = v0;
  v72[1] = sub_238B44AD8;
  v73 = v0[11];

  return v79(v73, v67, v69, 1, v65, v66);
}

uint64_t sub_238B44AD8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *v1;
  v2[27] = v0;

  v6 = v2[11];
  if (v0)
  {

    sub_238B45F38(v6);

    return MEMORY[0x2822009F8](sub_238B44F54, 0, 0);
  }

  else
  {
    sub_238B45F38(v6);

    v8 = v2[19];
    v7 = v2[20];
    v9 = v2[17];
    v10 = v2[18];
    v12 = v2[13];
    v11 = v2[14];
    v14 = v2[11];
    v13 = v2[12];
    v15 = v2[10];
    v19 = v2[9];
    v16 = v2[8];

    v17 = *(v5 + 8);

    return v17();
  }
}

uint64_t sub_238B44CFC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 248) = v0;

  v6 = *(v2 + 80);
  if (v0)
  {

    sub_238B45F38(v6);
    v7 = sub_238B45294;
  }

  else
  {
    sub_238B45F38(v6);

    v7 = sub_238B44E60;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_238B44E60()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v13 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_238B44F54()
{
  v39 = v0;
  v1 = *(v0 + 216);
  *(v0 + 224) = v1;
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  (*(v0 + 176))(*(v0 + 136), *(v0 + 32), *(v0 + 120));
  v4 = v1;
  v5 = sub_238B6C684();
  v6 = sub_238B6CA34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  if (v7)
  {
    v35 = v6;
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v12 = 136446466;
    v13 = sub_238B6C6C4();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0x6E776F6E6B6E75;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v8(v9, v11);
    v17 = sub_238B33240(v15, v16, &v38);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v34 = v19;
    _os_log_impl(&dword_238B2C000, v5, v35, "Failed to verify default app status for %{public}s: %{public}@", v12, 0x16u);
    sub_238B33360(v34, &qword_27DF5F820, &qword_238B6F7A0);
    MEMORY[0x23EE73110](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x23EE73110](v36, -1, -1);
    MEMORY[0x23EE73110](v12, -1, -1);
  }

  else
  {

    v8(v9, v11);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 80);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  v24 = v22[6];
  v25 = v22[7];
  __swift_project_boxed_opaque_existential_1(v22 + 3, v24);
  sub_238B6C6D4();
  v26 = sub_238B6C6C4();
  v28 = v27;
  *(v0 + 232) = v27;
  v29 = *(v25 + 8);
  v37 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 240) = v31;
  *v31 = v0;
  v31[1] = sub_238B44CFC;
  v32 = *(v0 + 80);

  return (v37)(v32, v26, v28, 0, v24, v25);
}