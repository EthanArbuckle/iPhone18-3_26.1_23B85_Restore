uint64_t sub_23C6114D4()
{
  *(v0 + 48) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1F96A8, qword_23C873C40);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23C611568, 0, 0);
}

uint64_t sub_23C611568()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  swift_setDeallocating();
  v4 = *(v2 + 16);
  sub_23C610574();

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_23C611604(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C611704;

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(a1, a2, a3, 900.0);
}

uint64_t sub_23C611704(uint64_t a1)
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

uint64_t sub_23C611A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C611A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C611AF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23C611B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for EventFilter();
    if (v3 <= 0x3F)
    {
      sub_23C612258(319, &qword_2814FB0F0);
      if (v4 <= 0x3F)
      {
        sub_23C612258(319, &qword_2814FABC8);
        if (v5 <= 0x3F)
        {
          sub_23C612200();
          if (v6 <= 0x3F)
          {
            sub_23C612258(319, &qword_2814FAF78);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23C611C9C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23C8709E4();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  if (v11)
  {
    v17 = 7;
  }

  else
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v16 + 9;
  if (v14 < a2)
  {
    v19 = ((v17 + *(*(v8 - 8) + 64) + ((v18 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v14 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_28:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v14 + (v26 | v25) + 1;
      }
    }
  }

  if (v7 == v14)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  v29 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 0x80000000) != 0)
  {
    if (v11 >= 2)
    {
      v31 = (*(v10 + 48))((v18 + ((v29 + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *v29;
  if (*v29 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  return (v30 + 1);
}

void sub_23C611F18(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = 0;
  v10 = *(sub_23C8709E4() - 8);
  v11 = *(v10 + 84);
  v12 = *(v26 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v8 > v13)
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v13;
  }

  if (!v11)
  {
    ++v15;
  }

  v17 = ((v15 + ((v14 + 9 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((v15 + ((v14 + 9 + ((((v12 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v16)
  {
    if (v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v16;
    }

    if (v17)
    {
      v21 = ~v16 + a2;
      bzero(a1, v17);
      *a1 = v21;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v17) = v20;
      }

      else
      {
        *(a1 + v17) = v20;
      }
    }

    else if (v9)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v17) = 0;
  }

  else if (v9)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 == v16)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v8, v7);
  }

  else
  {
    v23 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      if (v11 >= 2)
      {
        v25 = *(v10 + 56);

        v25((v14 + 9 + ((v23 + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v14, (a2 + 1));
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

void sub_23C612200()
{
  if (!qword_2814FAF70)
  {
    sub_23C8709E4();
    v0 = sub_23C871B74();
    if (!v1)
    {
      atomic_store(v0, &qword_2814FAF70);
    }
  }
}

void sub_23C612258(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23C871B74();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

BOOL sub_23C6122A4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_23C8720F4();
  MEMORY[0x23EED79F0](a1);
  v5 = sub_23C872124();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_23C612370(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(*(a2 + 24) + 16))(*(v2 + *(a2 + 40)), *(v2 + *(a2 + 40) + 8), *(v2 + *(a2 + 44)), *(v2 + *(a2 + 44) + 8), *(v2 + *(a2 + 48)), *(v2 + *(a2 + 48) + 8), *(v2 + *(a2 + 52)), *(v2 + *(a2 + 52) + 8), v2 + *(a2 + 56), *(a2 + 16), *(a2 + 24));
  *(swift_allocObject() + 16) = a1;
  sub_23C611604(&qword_27E1FB678, &qword_27E1FB668, &qword_23C87B0B0);
  v10 = a1;
  sub_23C870BD4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23C612548(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = sub_23C870CA4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  ObjectType = swift_getObjectType();

  v7 = sub_23C870CB4();
  if (v7)
  {
    v8 = v7;
    v9 = swift_getObjectType();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + OBJC_IVAR___ISEventFilter_filter);
  if (!v10)
  {
    return 1;
  }

  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_23C5FF958(ObjectType);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  if (!v13)
  {
    return 1;
  }

  if (v13 == 1 || !v9)
  {
    return 0;
  }

  return sub_23C6122A4(v9, v13);
}

uint64_t sub_23C61261C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6D8, &qword_23C87B198);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_23C612370(*(v1 + *(a1 + 36)), a1);
  sub_23C611604(&qword_27E1FB6E0, &qword_27E1FB6D8, &qword_23C87B198);
  v8 = sub_23C870BA4();
  v9 = type metadata accessor for TimestampedOrderedEvent();
  MEMORY[0x23EED64F0](v8, v9);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_23C612764(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6D8, &qword_23C87B198);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(*(v4 + *(a2 + 36)), a1);
  sub_23C612370(v13, a2);

  v14 = sub_23C870B84();
  v15 = (v4 + *(a2 + 60));
  v16 = *v15;
  v17 = v15[1];
  objc_allocWithZone(type metadata accessor for EventGraphsPublisher(0));

  v18 = v14;
  sub_23C60B330(v18, v16, v17, a3);

  type metadata accessor for EventGraph();
  sub_23C870BF4();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_23C6128F4(uint64_t a1, double a2)
{
  if (qword_2814FB040 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v3 = qword_2814FB470;

  return sub_23C612764(v3, a1, a2);
}

uint64_t sub_23C612980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C8, &qword_23C87B188);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  if (qword_2814FACB0 != -1)
  {
    swift_once();
  }

  sub_23C612764(qword_2814FB468, a1, 30.0);
  v12 = type metadata accessor for SiriTurn();
  sub_23C611604(&qword_27E1FB690, &qword_27E1FB688, &qword_23C87B190);
  sub_23C870BB4();
  sub_23C611604(&qword_27E1FB6D0, &qword_27E1FB6C8, &qword_23C87B188);
  v13 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v13, v12);
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23C612C30(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C0, &qword_23C87B180);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_23C612980(a1);
  v8 = sub_23C870BE4();
  v9 = (v1 + *(a1 + 60));
  v10 = *v9;
  v11 = v9[1];
  objc_allocWithZone(type metadata accessor for SiriConversationPublisher());

  sub_23C64B1A0(v8, v10, v11);

  type metadata accessor for SiriConversation();
  sub_23C870BF4();
  return (*(v4 + 8))(v7, v3);
}

void sub_23C612D8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t sub_23C612DC4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_23C612DD8(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 40);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C612DF0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_23C612E04(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 44);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C612E1C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_23C612E30(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 48);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t (*sub_23C612E48(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_23C612E6C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_23C612E80(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 52);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

Swift::String_optional __swiftcall IntelligenceFlowTelemetry.contextId()()
{
  v0 = sub_23C871534();
  v82 = *(v0 - 8);
  v83 = v0;
  v1 = *(v82 + 64);
  MEMORY[0x28223BE20](v0);
  v81 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6E8, &qword_23C87B1A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F0, &unk_23C87B1A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v70 - v8;
  v9 = sub_23C871474();
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v73 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23C871584();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v80 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v70 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v70 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v70 - v23;
  v25 = sub_23C871514();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v70 - v35;
  sub_23C871404();
  v37 = sub_23C8713F4();
  v38 = *(v37 - 8);
  v39 = 0;
  v40 = 0;
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    goto LABEL_2;
  }

  sub_23C5855B0(v36, v34, &qword_27E1FB6F8, &qword_23C87B1B8);
  v43 = (*(v38 + 88))(v34, v37);
  if (v43 != *MEMORY[0x277D1F718])
  {
    if (v43 == *MEMORY[0x277D1F6F8])
    {
      (*(v38 + 96))(v34, v37);
      v47 = v81;
      v46 = v82;
      v48 = v83;
      (*(v82 + 32))(v81, v34, v83);
      v49 = v80;
      sub_23C871524();
      v50 = sub_23C870B74();
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(v49, 1, v50) == 1)
      {
        (*(v46 + 8))(v47, v48);
        sub_23C585C34(v49, &qword_27E1F92A0, &qword_23C8734E0);
        v39 = 0;
        v40 = 0;
      }

      else
      {
        v39 = sub_23C870B04();
        v40 = v62;
        (*(v46 + 8))(v47, v48);
        (*(v51 + 8))(v49, v50);
      }

      goto LABEL_2;
    }

    v53 = v36;
    if (v43 == *MEMORY[0x277D1F708])
    {
      (*(v38 + 96))(v34, v37);
      v55 = v77;
      v54 = v78;
      v56 = v79;
      (*(v78 + 32))(v77, v34, v79);
      v57 = v76;
      sub_23C871574();
    }

    else
    {
      if (v43 != *MEMORY[0x277D1F700])
      {
        (*(v38 + 8))(v34, v37);
        goto LABEL_22;
      }

      (*(v38 + 96))(v34, v37);
      v55 = v73;
      v54 = v74;
      v56 = v75;
      (*(v74 + 32))(v73, v34, v75);
      v57 = v72;
      sub_23C871464();
      v63 = sub_23C871454();
      v64 = *(v63 - 8);
      if ((*(v64 + 48))(v57, 1, v63) == 1)
      {
        (*(v54 + 8))(v55, v56);
        v60 = &qword_27E1FB6E8;
        v61 = &qword_23C87B1A0;
LABEL_19:
        sub_23C585C34(v57, v60, v61);
LABEL_22:
        v39 = 0;
        v40 = 0;
        goto LABEL_23;
      }

      v66 = v71;
      sub_23C871444();
      (*(v64 + 8))(v57, v63);
      v67 = sub_23C871624();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v66, 1, v67) == 1)
      {
        (*(v54 + 8))(v55, v56);
        sub_23C585C34(v66, &qword_27E1FB6F0, &unk_23C87B1A8);
        goto LABEL_22;
      }

      v57 = v70;
      sub_23C871614();
      (*(v68 + 8))(v66, v67);
    }

    v58 = sub_23C870B74();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) != 1)
    {
      v39 = sub_23C870B04();
      v40 = v65;
      (*(v54 + 8))(v55, v56);
      (*(v59 + 8))(v57, v58);
LABEL_23:
      v36 = v53;
      goto LABEL_2;
    }

    (*(v54 + 8))(v55, v56);
    v60 = &qword_27E1F92A0;
    v61 = &qword_23C8734E0;
    goto LABEL_19;
  }

  v83 = v36;
  (*(v38 + 96))(v34, v37);
  (*(v26 + 32))(v29, v34, v25);
  sub_23C8714F4();
  v44 = sub_23C870B74();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v24, 1, v44) == 1)
  {
    (*(v26 + 8))(v29, v25);
    sub_23C585C34(v24, &qword_27E1F92A0, &qword_23C8734E0);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = sub_23C870B04();
    v40 = v52;
    (*(v26 + 8))(v29, v25);
    (*(v45 + 8))(v24, v44);
  }

  v36 = v83;
LABEL_2:
  sub_23C585C34(v36, &qword_27E1FB6F8, &qword_23C87B1B8);
  v41 = v39;
  v42 = v40;
  result.value._object = v42;
  result.value._countAndFlagsBits = v41;
  return result;
}

Swift::String __swiftcall IntelligenceFlowTelemetry.description()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB700, &qword_23C87B1C0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v59 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v62 = &v59 - v4;
  v5 = sub_23C871514();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB708, &unk_23C87B1C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  sub_23C871374();
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_23C5855B0(v24, v22, &unk_27E2054F0, &unk_23C874DF0);
  v25 = sub_23C870AE4();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v22, 1, v25) == 1)
  {
    sub_23C585C34(v22, &unk_27E2054F0, &unk_23C874DF0);
    v27 = 0xEC000000706D6174;
    v28 = 0x73656D6974206F4ELL;
  }

  else
  {
    v28 = sub_23C870A74();
    v27 = v29;
    (*(v26 + 8))(v22, v25);
  }

  MEMORY[0x23EED7100](v28, v27);

  v65 = 32;
  v66 = 0xE100000000000000;
  v31 = IntelligenceFlowTelemetry.contextId()();
  countAndFlagsBits = v31.value._countAndFlagsBits;
  if (v31.value._object)
  {
    object = v31.value._object;
  }

  else
  {
    countAndFlagsBits = 0x65746E6F63206F4ELL;
    object = 0xEC00000064497478;
  }

  MEMORY[0x23EED7100](countAndFlagsBits, object);

  MEMORY[0x23EED7100](v65, v66);

  v65 = 32;
  v66 = 0xE100000000000000;
  sub_23C8713A4();
  v33 = sub_23C871364();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v17, 1, v33) == 1)
  {
    sub_23C585C34(v17, &qword_27E1FB708, &unk_23C87B1C8);
    v35 = 0xE900000000000074;
    v36 = 0x6567726174206F4ELL;
  }

  else
  {
    v37 = sub_23C871354();
    v35 = v38;
    (*(v34 + 8))(v17, v33);
    v36 = v37;
  }

  MEMORY[0x23EED7100](v36, v35);

  MEMORY[0x23EED7100](v65, v66);

  v39 = v64;
  sub_23C871404();
  v40 = sub_23C8713F4();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 48))(v39, 1, v40);
  v43 = v63;
  if (v42 != 1)
  {
    sub_23C5855B0(v39, v12, &qword_27E1FB6F8, &qword_23C87B1B8);
    if ((*(v41 + 88))(v12, v40) == *MEMORY[0x277D1F718])
    {
      (*(v41 + 96))(v12, v40);
      v45 = v60;
      v44 = v61;
      (*(v60 + 32))(v43, v12, v61);
      v46 = v62;
      sub_23C871504();
      v47 = sub_23C8714E4();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v46, 1, v47) == 1)
      {
LABEL_13:
        MEMORY[0x23EED7100](0x6E776F6E6B6E7520, 0xEE00657461747320);
        (*(v45 + 8))(v43, v44);
        sub_23C585C34(v24, &unk_27E2054F0, &unk_23C874DF0);
LABEL_23:
        v49 = &qword_27E1FB700;
        v50 = &qword_23C87B1C0;
        v51 = v46;
        goto LABEL_24;
      }

      v52 = v59;
      sub_23C5855B0(v46, v59, &qword_27E1FB700, &qword_23C87B1C0);
      v53 = (*(v48 + 88))(v52, v47);
      if (v53 == *MEMORY[0x277D20490])
      {
        v54 = 0x6465747261747320;
        v55 = 0xE800000000000000;
      }

      else if (v53 == *MEMORY[0x277D20480])
      {
        v54 = 0x6465646E6520;
        v55 = 0xE600000000000000;
      }

      else
      {
        if (v53 != *MEMORY[0x277D20488])
        {
          (*(v48 + 8))(v52, v47);
          goto LABEL_13;
        }

        v54 = 0x64656C69616620;
        v55 = 0xE700000000000000;
      }

      MEMORY[0x23EED7100](v54, v55);
      (*(v45 + 8))(v43, v44);
      sub_23C585C34(v24, &unk_27E2054F0, &unk_23C874DF0);
      (*(v48 + 8))(v52, v47);
      goto LABEL_23;
    }

    (*(v41 + 8))(v12, v40);
  }

  MEMORY[0x23EED7100](0xD000000000000012, 0x800000023C8A9190);
  v49 = &unk_27E2054F0;
  v50 = &unk_23C874DF0;
  v51 = v24;
LABEL_24:
  sub_23C585C34(v51, v49, v50);
  sub_23C585C34(v39, &qword_27E1FB6F8, &qword_23C87B1B8);
  v56 = v67;
  v57 = v68;
  result._object = v57;
  result._countAndFlagsBits = v56;
  return result;
}

Swift::String_optional __swiftcall IntelligenceFlowTelemetry.objectiveString()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB700, &qword_23C87B1C0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v6 = sub_23C871514();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_23C871404();
  v18 = sub_23C8713F4();
  v19 = *(v18 - 8);
  v20 = 0;
  v21 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_23C5855B0(v17, v15, &qword_27E1FB6F8, &qword_23C87B1B8);
    if ((*(v19 + 88))(v15, v18) == *MEMORY[0x277D1F718])
    {
      (*(v19 + 96))(v15, v18);
      v22 = v7;
      (*(v7 + 32))(v10, v15, v6);
      sub_23C871504();
      v23 = sub_23C8714E4();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v5, 1, v23) == 1)
      {
        (*(v7 + 8))(v10, v6);
      }

      else
      {
        v27 = v33;
        sub_23C5855B0(v5, v33, &qword_27E1FB700, &qword_23C87B1C0);
        v28 = (*(v24 + 88))(v27, v23);
        if (v28 == *MEMORY[0x277D20490])
        {
          (*(v22 + 8))(v10, v6);
          (*(v24 + 8))(v27, v23);
          sub_23C585C34(v5, &qword_27E1FB700, &qword_23C87B1C0);
          v21 = 0xE700000000000000;
          v20 = 0x64657472617473;
          goto LABEL_8;
        }

        if (v28 == *MEMORY[0x277D20480])
        {
          (*(v22 + 8))(v10, v6);
          (*(v24 + 8))(v27, v23);
          sub_23C585C34(v5, &qword_27E1FB700, &qword_23C87B1C0);
          v21 = 0xE500000000000000;
          v20 = 0x6465646E65;
          goto LABEL_8;
        }

        v29 = *MEMORY[0x277D20488];
        v30 = v28;
        (*(v22 + 8))(v10, v6);
        (*(v24 + 8))(v27, v23);
        if (v30 == v29)
        {
          sub_23C585C34(v5, &qword_27E1FB700, &qword_23C87B1C0);
          v21 = 0xE600000000000000;
          v20 = 0x64656C696166;
          goto LABEL_8;
        }
      }

      sub_23C585C34(v5, &qword_27E1FB700, &qword_23C87B1C0);
    }

    else
    {
      (*(v19 + 8))(v15, v18);
    }

    v20 = 0;
    v21 = 0;
  }

LABEL_8:
  sub_23C585C34(v17, &qword_27E1FB6F8, &qword_23C87B1B8);
  v25 = v20;
  v26 = v21;
  result.value._object = v26;
  result.value._countAndFlagsBits = v25;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary0A13FlowTelemetryV26AIMLInstrumentationStreamsE1loiySbAC_ACtFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = sub_23C870AE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_23C871374();
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    sub_23C870AB4();
    if (v15(v6, 1, v7) != 1)
    {
      sub_23C585C34(v6, &unk_27E2054F0, &unk_23C874DF0);
    }
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
  }

  sub_23C871374();
  if (v15(v4, 1, v7) == 1)
  {
    sub_23C870AB4();
    if (v15(v4, 1, v7) != 1)
    {
      sub_23C585C34(v4, &unk_27E2054F0, &unk_23C874DF0);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v4, v7);
  }

  v16 = sub_23C870A94();
  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v14, v7);
  return v16 & 1;
}

unint64_t sub_23C614980()
{
  result = qword_27E1FB710;
  if (!qword_27E1FB710)
  {
    sub_23C871414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB710);
  }

  return result;
}

uint64_t sub_23C6149D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v54 = MEMORY[0x277D84F90];
  sub_23C592C04(0, v1, 0);
  v2 = v54;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_23C871BB4();
  if (result < 0 || (v7 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 36);
    v33 = v1;
    v9 = 1;
    v55 = a1 + 64;
    v34 = v8;
    while (1)
    {
      v10 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v11 = *(*(a1 + 48) + 16 * v7 + 8);
      v12 = (*(a1 + 56) + 96 * v7);
      v13 = v12[1];
      v39[0] = *v12;
      v39[1] = v13;
      v14 = v12[5];
      v16 = v12[2];
      v15 = v12[3];
      v41 = v12[4];
      v42 = v14;
      *v40 = v16;
      *&v40[16] = v15;
      v17 = v12[1];
      v38 = *(v12 + 4);
      v36 = v12[4];
      v37 = v17;
      v43 = v39[0];
      *v45 = v38;
      v44 = v17;
      *&v45[8] = *&v40[8];
      *&v45[24] = *&v40[24];
      v46 = v36;
      v47 = v14;

      sub_23C58BBD4(v39, v35);
      sub_23C58BBD4(&v43, v35);

      v50 = *v45;
      v51 = *&v45[16];
      v52 = v46;
      v53 = v47;
      v48 = v43;
      v49 = v44;
      v54 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_23C592C04((v18 > 1), v19 + 1, 1);
        v2 = v54;
      }

      *(v2 + 16) = v19 + 1;
      v20 = (v2 + 96 * v19);
      v21 = v49;
      v20[2] = v48;
      v20[3] = v21;
      v22 = v50;
      v23 = v51;
      v24 = v53;
      v20[6] = v52;
      v20[7] = v24;
      v20[4] = v22;
      v20[5] = v23;
      v25 = 1 << *(a1 + 32);
      if (v7 >= v25)
      {
        goto LABEL_27;
      }

      v4 = v55;
      v26 = *(v55 + 8 * v10);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      LODWORD(v8) = v34;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v7 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v10 << 6;
        v29 = v10 + 1;
        v30 = (a1 + 72 + 8 * v10);
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_23C606430(v7, v34, 0);
            v7 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_23C606430(v7, v34, 0);
        v7 = v25;
      }

LABEL_19:
      if (v9 == v33)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        ++v9;
        if (v7 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_23C614D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB718, &qword_23C87B228);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v141 = &v129 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB720, qword_23C87B230);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v140 = &v129 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB700, &qword_23C87B1C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v129 - v16;
  v18 = sub_23C871514();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v150 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v154 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v129 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB708, &unk_23C87B1C8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v129 - v30;
  v157 = sub_23C871414();
  v32 = *(v157 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v157);
  v35 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = *(a1 + 16);
  if (!v37)
  {
    v153 = MEMORY[0x277D84F98];
LABEL_98:
    v127 = sub_23C6149D8(v153);

    return v127;
  }

  v149 = v18;
  v151 = v17;
  v134 = v9;
  v39 = *(v32 + 16);
  v38 = v32 + 16;
  v162 = v39;
  v40 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
  v153 = MEMORY[0x277D84F98];
  v146 = (v19 + 32);
  v152 = *MEMORY[0x277D1F718];
  v145 = (v19 + 8);
  v144 = *MEMORY[0x277D20490];
  v133 = *MEMORY[0x277D20480];
  v131 = *MEMORY[0x277D20488];
  v132 = *MEMORY[0x277D20610];
  v130 = *MEMORY[0x277D205F8];
  v160 = *(v38 + 56);
  v161 = (v38 - 8);
  v137 = v15;
  v41 = v157;
  v148 = v27;
  v159 = v38;
  v39(v35, v40, v157);
  while (1)
  {
    v42 = IntelligenceFlowTelemetry.contextId()();
    if (!v42.value._object)
    {
      (*v161)(v35, v41);
      goto LABEL_4;
    }

    countAndFlagsBits = v42.value._countAndFlagsBits;
    sub_23C8713A4();
    v43 = sub_23C871364();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v31, 1, v43) == 1)
    {
      v41 = v157;
      (*v161)(v35, v157);

      sub_23C585C34(v31, &qword_27E1FB708, &unk_23C87B1C8);
      goto LABEL_4;
    }

    v156 = sub_23C871354();
    v46 = v45;
    (*(v44 + 8))(v31, v43);
    sub_23C871404();
    v47 = sub_23C8713F4();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v27, 1, v47) == 1)
    {
      goto LABEL_15;
    }

    v155 = v46;
    v49 = v154;
    sub_23C5855B0(v27, v154, &qword_27E1FB6F8, &qword_23C87B1B8);
    v50 = (*(v48 + 88))(v49, v47);
    if (v50 != v152)
    {
      (*(v48 + 8))(v49, v47);
      goto LABEL_15;
    }

    (*(v48 + 96))(v49, v47);
    v51 = v150;
    v52 = v149;
    (*v146)(v150, v49, v149);
    v53 = v151;
    sub_23C871504();
    v54 = sub_23C8714E4();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      (*v145)(v51, v52);
      v27 = v148;
LABEL_13:
      sub_23C585C34(v151, &qword_27E1FB700, &qword_23C87B1C0);
LABEL_15:
      sub_23C585C34(v27, &qword_27E1FB6F8, &qword_23C87B1B8);
      v41 = v157;
      (*v161)(v35, v157);

      goto LABEL_4;
    }

    v56 = v137;
    sub_23C5855B0(v53, v137, &qword_27E1FB700, &qword_23C87B1C0);
    v57 = (*(v55 + 88))(v56, v54);
    if (v57 == v144)
    {
      LODWORD(v147) = v57;
      v142 = 0xE700000000000000;
      v143 = 0x64657472617473;
      v58 = v150;
      v27 = v148;
    }

    else
    {
      v58 = v150;
      v27 = v148;
      if (v57 == v133)
      {
        LODWORD(v147) = v57;
        v142 = 0xE500000000000000;
        v59 = 0x6465646E65;
      }

      else
      {
        if (v57 != v131)
        {
          (*v145)(v150, v149);
          (*(v55 + 8))(v56, v54);
          goto LABEL_13;
        }

        LODWORD(v147) = v57;
        v142 = 0xE600000000000000;
        v59 = 0x64656C696166;
      }

      v143 = v59;
    }

    (*v145)(v58, v149);
    (*(v55 + 8))(v56, v54);
    sub_23C585C34(v151, &qword_27E1FB700, &qword_23C87B1C0);
    sub_23C585C34(v27, &qword_27E1FB6F8, &qword_23C87B1B8);
    v60 = v141;
    sub_23C871384();
    v61 = sub_23C871564();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      sub_23C585C34(v60, &qword_27E1FB718, &qword_23C87B228);
      v63 = sub_23C871594();
      v64 = 1;
      v65 = v140;
      (*(*(v63 - 8) + 56))(v140, 1, 1, v63);
      sub_23C585C34(v65, &qword_27E1FB720, qword_23C87B230);
      v66 = 0;
    }

    else
    {
      v67 = v140;
      sub_23C871554();
      (*(v62 + 8))(v60, v61);
      v68 = sub_23C871594();
      v69 = *(v68 - 8);
      (*(v69 + 56))(v67, 0, 1, v68);
      v70 = v134;
      sub_23C615E94(v67, v134);
      v71 = (*(v69 + 88))(v70, v68);
      if (v71 == v132)
      {
        (*(v69 + 96))(v70, v68);
      }

      else
      {
        if (v71 != v130)
        {
          (*(v69 + 8))(v134, v68);
          v66 = 0;
          v64 = 1;
          goto LABEL_32;
        }

        v70 = v134;
        (*(v69 + 96))(v134, v68);
      }

      v66 = *(*v70 + 16);

      v64 = 0;
    }

LABEL_32:
    v72 = v142;
    if (v147 == v144 || (sub_23C872014() & 1) != 0)
    {
      v139 = 0;
      v136 = 0;
      v147 = 0;
      v73 = 1;
    }

    else
    {
      v139 = v66;
      v73 = v64;
      v64 = 1;
      v136 = v143;
      v147 = v72;
      v66 = 0;
      v143 = 0;
      v72 = 0;
    }

    v74 = v153;
    if (!v153[2] || (v75 = sub_23C5FF898(countAndFlagsBits, v42.value._object), (v76 & 1) == 0))
    {
LABEL_67:
      v138 = 0;
      LODWORD(v142) = 1;
      goto LABEL_68;
    }

    v77 = (*(v74 + 56) + 96 * v75);
    v78 = v77[6];
    v79 = v77[7];
    v80 = v77[8];
    v81 = v77[9];
    v82 = v77[10];
    v83 = v77[11];
    v84 = v66;
    if (!v64)
    {
      goto LABEL_105;
    }

    v84 = v80;
    if (!v79)
    {
      v138 = 0;
      LODWORD(v142) = 1;
      v64 = 1;
    }

    else
    {
LABEL_105:
      v85 = v139;
      if (v73 && (v85 = v83, !v82))
      {
        v138 = 0;
        LODWORD(v142) = 1;
        LOBYTE(v73) = 1;
      }

      else
      {
        v86 = v85 >= v84;
        v87 = v85 - v84;
        v138 = v87;
        if (v87 == 0 || !v86)
        {
          goto LABEL_67;
        }

        if (v87 < 0)
        {
          goto LABEL_101;
        }

        if (!v72)
        {
          if (!v79)
          {
            v78 = 0;
          }

          v143 = v78;
          v135 = v82;
          v142 = v83;
          v88 = v80;
          v129 = v81;

          v81 = v129;
          v80 = v88;
          v82 = v135;
          v83 = v142;
          v72 = v79;
        }

        if (!v147)
        {
          if (v82)
          {
            v89 = v81;
          }

          else
          {
            v89 = 0;
          }

          v136 = v89;
          v142 = v83;
          v135 = v80;

          v80 = v135;
          v83 = v142;
          v147 = v82;
        }

        if (v79)
        {
          v90 = v80;
        }

        else
        {
          v90 = 0;
        }

        if (v79)
        {
          v91 = 0;
        }

        else
        {
          v91 = v64;
        }

        if (v64)
        {
          v66 = v90;
        }

        v64 = v91;
        if (v73)
        {
          LODWORD(v142) = 0;
          LOBYTE(v73) = v82 == 0;
          v92 = v82 ? v83 : 0;
          v139 = v92;
        }

        else
        {
          LODWORD(v142) = 0;
        }
      }
    }

LABEL_68:
    v93 = v136;
    v94 = v143;
    if (v72)
    {
      v95 = v66;
    }

    else
    {
      v94 = 0;
      v95 = 0;
    }

    if (v72)
    {
      v96 = v147;
      if (v64)
      {

        v143 = 0;
        v72 = 0;
        v136 = 0;
      }

      else
      {
        v136 = v95;
        v143 = v94;
      }
    }

    else
    {
      v136 = v95;
      v143 = v94;
      v96 = v147;
    }

    if (v96)
    {
      v97 = v93;
    }

    else
    {
      v97 = 0;
    }

    v98 = v139;
    if (!v96)
    {
      v98 = 0;
    }

    v99 = v153;
    if (((v96 != 0) & v73) == 1)
    {

      v135 = 0;
      v147 = 0;
      v139 = 0;
    }

    else
    {
      v135 = v97;
      v139 = v98;
    }

    v165 = v142;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = v99;
    v102 = sub_23C5FF898(countAndFlagsBits, v42.value._object);
    v103 = *(v99 + 16);
    v104 = (v101 & 1) == 0;
    v105 = v103 + v104;
    if (__OFADD__(v103, v104))
    {
      break;
    }

    v106 = v101;
    if (*(v99 + 24) >= v105)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C643C48();
      }
    }

    else
    {
      sub_23C63E0FC(v105, isUniquelyReferenced_nonNull_native);
      v107 = sub_23C5FF898(countAndFlagsBits, v42.value._object);
      if ((v106 & 1) != (v108 & 1))
      {
        goto LABEL_102;
      }

      v102 = v107;
    }

    v27 = v148;
    if (v106)
    {

      v153 = v164;
      v109 = *(v164 + 56) + 96 * v102;
      v110 = *(v109 + 16);
      v163[0] = *v109;
      v163[1] = v110;
      v111 = *(v109 + 80);
      v113 = *(v109 + 32);
      v112 = *(v109 + 48);
      v163[4] = *(v109 + 64);
      v163[5] = v111;
      v163[2] = v113;
      v163[3] = v112;
      v114 = v155;
      *v109 = v156;
      *(v109 + 8) = v114;
      *(v109 + 16) = v138;
      *(v109 + 24) = v142;
      *(v109 + 25) = *v166;
      *(v109 + 28) = *&v166[3];
      *(v109 + 32) = countAndFlagsBits;
      *(v109 + 40) = v42.value._object;
      *(v109 + 48) = v143;
      *(v109 + 56) = v72;
      v115 = v135;
      *(v109 + 64) = v136;
      *(v109 + 72) = v115;
      v116 = v139;
      *(v109 + 80) = v147;
      *(v109 + 88) = v116;
      sub_23C58BC0C(v163);
      v41 = v157;
      (*v161)(v35, v157);
    }

    else
    {
      v117 = v164;
      *(v164 + 8 * (v102 >> 6) + 64) |= 1 << v102;
      v118 = (v117[6] + 16 * v102);
      v119 = countAndFlagsBits;
      *v118 = countAndFlagsBits;
      v118[1] = v42.value._object;
      v120 = v117[7] + 96 * v102;
      v121 = v155;
      *v120 = v156;
      *(v120 + 8) = v121;
      *(v120 + 16) = v138;
      *(v120 + 24) = v142;
      *(v120 + 28) = *&v166[3];
      *(v120 + 25) = *v166;
      *(v120 + 32) = v119;
      *(v120 + 40) = v42.value._object;
      *(v120 + 48) = v143;
      *(v120 + 56) = v72;
      v122 = v135;
      *(v120 + 64) = v136;
      *(v120 + 72) = v122;
      v123 = v139;
      *(v120 + 80) = v147;
      *(v120 + 88) = v123;
      v41 = v157;
      (*v161)(v35, v157);
      v124 = v117[2];
      v125 = __OFADD__(v124, 1);
      v126 = v124 + 1;
      if (v125)
      {
        goto LABEL_100;
      }

      v153 = v117;
      v117[2] = v126;
    }

LABEL_4:
    v40 += v160;
    if (!--v37)
    {
      goto LABEL_98;
    }

    v162(v35, v40, v41);
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C615E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB720, qword_23C87B230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.decodeBiomeEventProto()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23C870FE4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B0, &qword_23C8734F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-v6];
  v8 = type metadata accessor for TranscriptProtoEvent(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a1, 1, 1, v8);
  v14 = sub_23C871494();
  v15 = v10;
  v13 = 0;
  memset(&v12[16], 0, 32);
  sub_23C870FD4();
  sub_23C61622C();
  sub_23C8711E4();
  sub_23C585C34(a1, &qword_27E1F92B0, &qword_23C8734F0);
  v9(v7, 0, 1, v8);
  return sub_23C61632C(v7, a1);
}

unint64_t sub_23C61622C()
{
  result = qword_27E1F98A0;
  if (!qword_27E1F98A0)
  {
    type metadata accessor for TranscriptProtoEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F98A0);
  }

  return result;
}

uint64_t sub_23C616284()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FB728);
  __swift_project_value_buffer(v0, qword_27E1FB728);
  sub_23C5A3FDC(0, &qword_2814FABB0, 0x277D86200);
  sub_23C871B54();
  return sub_23C871664();
}

uint64_t sub_23C61632C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B0, &qword_23C8734F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C6163E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *OrderedEvent.linkedComponentIdentifiers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB7C8, &qword_23C87B290);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - v6;
  v8 = sub_23C870CA4();
  v9 = sub_23C870CB4();
  if (!v8)
  {
    goto LABEL_17;
  }

  v33 = v8;
  sub_23C616814();
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB7D0, &qword_23C87B298);
  if (swift_dynamicCast())
  {
    sub_23C581A8C(&v32, v31);
    __swift_project_boxed_opaque_existential_0(v31, v31[3]);
    v11 = sub_23C870E44();
    if (v11)
    {
      if (*(v11 + 16))
      {
        (*(v1 + 16))(v5, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

        (*(v1 + 32))(v7, v5, v0);
        sub_23C870E64();
        v12 = v30[2];
        sub_23C870E54();

        (*(v1 + 8))(v7, v0);
        __swift_destroy_boxed_opaque_existential_0(v31);

        return v12;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
    return 0;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

LABEL_17:
    return 0;
  }

  if (!v9)
  {
LABEL_25:

    return 0;
  }

  v15 = v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    goto LABEL_25;
  }

  v17 = v16;
  v10 = v10;
  v18 = [v17 turnID];
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = v18;
  v20 = [v18 turnID];

  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = [v15 metadata];
  if (!v21 || (v22 = v21, v23 = [v21 fingerprint], v22, !v23))
  {

LABEL_24:
    goto LABEL_25;
  }

  v24 = sub_23C870E34();
  objc_allocWithZone(v24);
  v25 = v23;
  v26 = sub_23C870E04();
  if (!v26)
  {

LABEL_23:
    goto LABEL_24;
  }

  v27 = v26;
  v28 = objc_allocWithZone(v24);
  v29 = sub_23C870E04();

  if (v29)
  {
    return v27;
  }

  return 0;
}

unint64_t sub_23C616814()
{
  result = qword_27E1F9E48;
  if (!qword_27E1F9E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F9E48);
  }

  return result;
}

unint64_t sub_23C616874()
{
  result = qword_2814FAFA8[0];
  if (!qword_2814FAFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814FAFA8);
  }

  return result;
}

uint64_t sub_23C6168DC()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t sub_23C616950()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t sub_23C616994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C6169DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_23C616A44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - v6;
  v8 = sub_23C870B74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  if (v0[1])
  {
    v16 = MEMORY[0x277D837D0];
    *&v64 = 0xD000000000000012;
    *(&v64 + 1) = 0x800000023C8A91B0;
    sub_23C871CB4();
    v17 = v1[2];
    v18 = v1[3];
    v65 = v16;
    if (!v18)
    {
      v17 = 0x6E776F6E6B6E55;
    }

    v19 = 0xE700000000000000;
    if (v18)
    {
      v19 = v18;
    }

    *&v64 = v17;
    *(&v64 + 1) = v19;
    sub_23C59A4B0(&v64, v63);
  }

  else
  {
    v20 = *v0;
    *&v64 = 0x6E6F697461727564;
    *(&v64 + 1) = 0xEF73646E6F636553;
    sub_23C871CB4();
    v65 = MEMORY[0x277D839F8];
    *&v64 = v20;
    sub_23C59A4B0(&v64, v63);
  }

  v21 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v21;
  sub_23C593DBC(v63, v66, isUniquelyReferenced_nonNull_native);
  sub_23C600810(v66);
  v23 = v62;
  v24 = v1[5];
  if (v24)
  {
    v60 = v13;
    *&v64 = 0x656D6954646E65;
    *(&v64 + 1) = 0xE700000000000000;
    v25 = v24;
    v26 = MEMORY[0x277D837D0];
    sub_23C871CB4();
    result = sub_23C870CF4();
    if (result)
    {
      v28 = result;
      v29 = sub_23C870DD4();

      v65 = MEMORY[0x277D84D38];
      *&v64 = v29;
      sub_23C59A4B0(&v64, v63);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v23;
      sub_23C593DBC(v63, v66, v30);
      sub_23C600810(v66);
      v31 = v62;
      sub_23C870CC4();
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_23C5FE4E4(v7);
      }

      else
      {
        (*(v9 + 32))(v15, v7, v8);
        *&v64 = 0x6449646E65;
        *(&v64 + 1) = 0xE500000000000000;
        sub_23C871CB4();
        v32 = sub_23C870B04();
        v65 = v26;
        *&v64 = v32;
        *(&v64 + 1) = v33;
        sub_23C59A4B0(&v64, v63);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v31;
        sub_23C593DBC(v63, v66, v34);
        sub_23C600810(v66);
        (*(v9 + 8))(v15, v8);
        v31 = v62;
      }

      v13 = v60;
      *&v64 = 0x65707954646E65;
      *(&v64 + 1) = 0xE700000000000000;
      v35 = MEMORY[0x277D837D0];
      sub_23C871CB4();
      result = sub_23C870CA4();
      if (result)
      {
        v36 = result;
        v37 = [result qualifiedMessageName];

        v38 = sub_23C871784();
        v40 = v39;

        v65 = v35;
        *&v64 = v38;
        *(&v64 + 1) = v40;
        sub_23C59A4B0(&v64, v63);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v31;
        sub_23C593DBC(v63, v66, v41);

        sub_23C600810(v66);
        v23 = v62;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_15:
  v42 = v1[4];
  if (!v42)
  {
    return v23;
  }

  *&v64 = 0x6D69547472617473;
  *(&v64 + 1) = 0xE900000000000065;
  v43 = v42;
  v44 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  result = sub_23C870CF4();
  if (!result)
  {
    goto LABEL_25;
  }

  v45 = result;
  v46 = sub_23C870DD4();

  v65 = MEMORY[0x277D84D38];
  *&v64 = v46;
  sub_23C59A4B0(&v64, v63);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v23;
  sub_23C593DBC(v63, v66, v47);
  sub_23C600810(v66);
  v48 = v61;
  v49 = v62;
  sub_23C870CC4();
  if ((*(v9 + 48))(v48, 1, v8) == 1)
  {
    sub_23C5FE4E4(v48);
  }

  else
  {
    (*(v9 + 32))(v13, v48, v8);
    *&v64 = 0x64497472617473;
    *(&v64 + 1) = 0xE700000000000000;
    sub_23C871CB4();
    v50 = sub_23C870B04();
    v65 = v44;
    *&v64 = v50;
    *(&v64 + 1) = v51;
    sub_23C59A4B0(&v64, v63);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v49;
    sub_23C593DBC(v63, v66, v52);
    sub_23C600810(v66);
    (*(v9 + 8))(v13, v8);
    v49 = v62;
  }

  *&v64 = 0x7079547472617473;
  *(&v64 + 1) = 0xE900000000000065;
  v53 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  result = sub_23C870CA4();
  if (result)
  {
    v54 = result;
    v55 = [result qualifiedMessageName];

    v56 = sub_23C871784();
    v58 = v57;

    v65 = v53;
    *&v64 = v56;
    *(&v64 + 1) = v58;
    sub_23C59A4B0(&v64, v63);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v49;
    sub_23C593DBC(v63, v66, v59);

    sub_23C600810(v66);
    return v62;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23C6171D8@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_23C601E20();
  v4 = v1;
  v5 = sub_23C624EB0(v3, v4);

  if (v5 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EED7610](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

  v9 = sub_23C870CF4();

LABEL_9:
  v10 = sub_23C86E780();
  if (v10)
  {
    v11 = v10;
    v12 = sub_23C870CF4();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_23C62A1DC(v9, v12);
  v15 = v14;

  v16 = sub_23C601E20();
  v17 = v4;
  v18 = sub_23C624EB0(v16, v17);

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:

    v20 = 0;
    goto LABEL_20;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EED7610](0, v18);
    goto LABEL_17;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v19 = *(v18 + 32);
LABEL_17:
  v20 = v19;

LABEL_20:
  v21 = sub_23C86E780();
  v22 = sub_23C601F9C();
  v47 = v15 & 1;
  if (v15)
  {
    if (v20)
    {
      v24 = 0x800000023C8A91F0;
      if (v21)
      {
        v25 = 0xD000000000000016;
      }

      else
      {
        v25 = 0x20676E697373694DLL;
      }

      if (!v21)
      {
        v24 = 0xEB00000000646E45;
      }
    }

    else
    {
      v24 = 0x800000023C8A91D0;
      v25 = 0x20676E697373694DLL;
      if (v21)
      {
        v24 = 0xED00007472617453;
      }

      else
      {
        v25 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  *&v30 = v13;
  BYTE8(v30) = v47;
  *&v31 = v25;
  *(&v31 + 1) = v24;
  *&v32 = v20;
  *(&v32 + 1) = v21;
  *&v33 = 0;
  BYTE8(v33) = 0;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  v35 = xmmword_27E1FB880;
  v36 = v13;
  v37 = v47;
  v38 = v25;
  v39 = v24;
  v40 = v20;
  v41 = v21;
  v42 = 0;
  v43 = 0;
  v44 = v22;
  v45 = v23;
  v46 = xmmword_27E1FB880;

  sub_23C61FD0C(&v30, v29);
  result = sub_23C61FD68(&v36);
  v26 = v33;
  a1[2] = v32;
  a1[3] = v26;
  v27 = v35;
  a1[4] = v34;
  a1[5] = v27;
  v28 = v31;
  *a1 = v30;
  a1[1] = v28;
  return result;
}

uint64_t sub_23C6174F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = SiriTurn.mh.getter();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = v1;
  v8 = sub_23C624AF4(v6, v7);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_54;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_56;
  }

  for (i = *(v8 + 32); ; i = MEMORY[0x23EED7610](0, v8))
  {
    v10 = i;

    v11 = sub_23C870CF4();

LABEL_11:
    v6 = sub_23C601E20();
    v7 = v3;
    v12 = sub_23C624EB0(v6, v7);

    if (v12 >> 62)
    {
      if (!sub_23C871C34())
      {
LABEL_18:

        v15 = 0;
        goto LABEL_19;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EED7610](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_52:
        v21 = MEMORY[0x23EED7610](0, v2);
LABEL_34:
        v22 = v21;

        goto LABEL_37;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;

    v15 = sub_23C870CF4();

LABEL_19:
    v3 = sub_23C62A1DC(v11, v15);
    LOBYTE(v6) = v16;

    v11 = SiriTurn.mh.getter();
    if (!v11)
    {
      goto LABEL_29;
    }

    v17 = v7;
    v8 = sub_23C624AF4(v11, v17);

    if (v8 >> 62)
    {
      result = sub_23C871C34();
      if (!result)
      {
LABEL_28:

        v11 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_28;
      }
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
LABEL_56:
      v19 = MEMORY[0x23EED7610](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v19 = *(v8 + 32);
    }

    v11 = v19;

LABEL_29:
    v20 = sub_23C601E20();
    v8 = v7;
    v2 = sub_23C624EB0(v20, v8);

    if (v2 >> 62)
    {
      break;
    }

    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

LABEL_31:
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_52;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v2 + 32);
      goto LABEL_34;
    }

    __break(1u);
LABEL_54:
    ;
  }

  if (sub_23C871C34())
  {
    goto LABEL_31;
  }

LABEL_36:

  v22 = 0;
LABEL_37:
  v23 = sub_23C601F9C();
  v48 = v6 & 1;
  if (v6)
  {
    v25 = 0xD000000000000015;
    if (v11)
    {
      if (v22)
      {
        v25 = 0xD000000000000016;
      }

      else
      {
        v25 = 0x20676E697373694DLL;
      }

      v26 = 0xEB00000000646E45;
      if (v22)
      {
        v26 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v22)
      {
        v25 = 0x20676E697373694DLL;
      }

      v26 = 0xED00007472617453;
      if (!v22)
      {
        v26 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *&v31 = v3;
  BYTE8(v31) = v48;
  *&v32 = v25;
  *(&v32 + 1) = v26;
  *&v33 = v11;
  *(&v33 + 1) = v22;
  *&v34 = 0;
  BYTE8(v34) = 0;
  *&v35 = v23;
  *(&v35 + 1) = v24;
  v36 = xmmword_27E1FB8A0;
  v37 = v3;
  v38 = v48;
  v39 = v25;
  v40 = v26;
  v41 = v11;
  v42 = v22;
  v43 = 0;
  v44 = 0;
  v45 = v23;
  v46 = v24;
  v47 = xmmword_27E1FB8A0;

  sub_23C61FD0C(&v31, v30);
  result = sub_23C61FD68(&v37);
  v27 = v34;
  a1[2] = v33;
  a1[3] = v27;
  v28 = v36;
  a1[4] = v35;
  a1[5] = v28;
  v29 = v32;
  *a1 = v31;
  a1[1] = v29;
  return result;
}

uint64_t sub_23C617984@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = v4;
  v10 = SiriTurn.mh.getter();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = v4;
  v13 = sub_23C624AF4(v11, v12);

  if (v13 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EED7610](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = sub_23C870CF4();

LABEL_11:
  v18 = a1();
  if (v18)
  {
    v19 = v18;
    v20 = sub_23C870CF4();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_23C62A1DC(v17, v20);
  v23 = v22;

  v24 = SiriTurn.mh.getter();
  if (!v24)
  {
    goto LABEL_23;
  }

  v25 = v8;
  v26 = sub_23C624AF4(v24, v25);

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_22:

    v24 = 0;
    goto LABEL_23;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x23EED7610](0, v26);
    goto LABEL_20;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v27 = *(v26 + 32);
LABEL_20:
  v24 = v27;

LABEL_23:
  v28 = a1();
  v29 = sub_23C601F9C();
  v31 = *a2;
  v32 = *a3;
  v57 = v23 & 1;
  if (v23)
  {
    v33 = 0xD000000000000015;
    if (v24)
    {
      if (v28)
      {
        v33 = 0xD000000000000016;
      }

      else
      {
        v33 = 0x20676E697373694DLL;
      }

      v34 = 0xEB00000000646E45;
      if (v28)
      {
        v34 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v28)
      {
        v33 = 0x20676E697373694DLL;
      }

      v34 = 0xED00007472617453;
      if (!v28)
      {
        v34 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  *&v39 = v21;
  BYTE8(v39) = v57;
  *&v40 = v33;
  *(&v40 + 1) = v34;
  *&v41 = v24;
  *(&v41 + 1) = v28;
  *&v42 = 0;
  BYTE8(v42) = 0;
  *&v43 = v29;
  *(&v43 + 1) = v30;
  *&v44 = v31;
  *(&v44 + 1) = v32;
  v45 = v21;
  v46 = v57;
  v47 = v33;
  v48 = v34;
  v49 = v24;
  v50 = v28;
  v51 = 0;
  v52 = 0;
  v53 = v29;
  v54 = v30;
  v55 = v31;
  v56 = v32;

  sub_23C61FD0C(&v39, &v38);
  result = sub_23C61FD68(&v45);
  v35 = v42;
  a4[2] = v41;
  a4[3] = v35;
  v36 = v44;
  a4[4] = v43;
  a4[5] = v36;
  v37 = v40;
  *a4 = v39;
  a4[1] = v37;
  return result;
}

uint64_t sub_23C617CA0@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = SiriTurn.nl.getter();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = v1;
  v8 = sub_23C62596C(v6, v7);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23EED7610](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = sub_23C870CF4();

LABEL_11:
  v12 = SiriTurn.nl.getter();
  if (!v12)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v13 = v12;
  v14 = v3;
  v15 = sub_23C625978(v13, v14);

  if (v15 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_14:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23EED7610](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_58;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  v19 = sub_23C870CF4();

LABEL_21:
  v6 = sub_23C62A1DC(v11, v19);
  LOBYTE(v7) = v20;

  v2 = SiriTurn.nl.getter();
  if (!v2)
  {
    goto LABEL_30;
  }

  v21 = v3;
  v22 = sub_23C62596C(v2, v21);

  if (v22 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_24:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23EED7610](0, v22);
        goto LABEL_27;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v22 + 32);
LABEL_27:
        v2 = v23;

        goto LABEL_30;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  v2 = 0;
LABEL_30:
  v24 = SiriTurn.nl.getter();
  if (v24)
  {
    v25 = v3;
    v8 = sub_23C625978(v24, v25);

    if (v8 >> 62)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_33:
        if ((v8 & 0xC000000000000001) == 0)
        {
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v26 = *(v8 + 32);
LABEL_36:
            v24 = v26;

            goto LABEL_39;
          }

LABEL_59:
          __break(1u);
          return result;
        }

LABEL_56:
        v26 = MEMORY[0x23EED7610](0, v8);
        goto LABEL_36;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_33;
      }
    }

    v24 = 0;
  }

LABEL_39:
  v27 = sub_23C601F9C();
  v52 = v7 & 1;
  if (v7)
  {
    if (v2)
    {
      v29 = 0x800000023C8A91F0;
      if (v24)
      {
        v30 = 0xD000000000000016;
      }

      else
      {
        v30 = 0x20676E697373694DLL;
      }

      if (!v24)
      {
        v29 = 0xEB00000000646E45;
      }
    }

    else
    {
      v29 = 0x800000023C8A91D0;
      v30 = 0x20676E697373694DLL;
      if (v24)
      {
        v29 = 0xED00007472617453;
      }

      else
      {
        v30 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  *&v35 = v6;
  BYTE8(v35) = v52;
  *&v36 = v30;
  *(&v36 + 1) = v29;
  *&v37 = v2;
  *(&v37 + 1) = v24;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *&v39 = v27;
  *(&v39 + 1) = v28;
  v40 = xmmword_27E1FB8C0;
  v41 = v6;
  v42 = v52;
  v43 = v30;
  v44 = v29;
  v45 = v2;
  v46 = v24;
  v47 = 0;
  v48 = 0;
  v49 = v27;
  v50 = v28;
  v51 = xmmword_27E1FB8C0;

  sub_23C61FD0C(&v35, v34);
  result = sub_23C61FD68(&v41);
  v31 = v38;
  a1[2] = v37;
  a1[3] = v31;
  v32 = v40;
  a1[4] = v39;
  a1[5] = v32;
  v33 = v36;
  *a1 = v35;
  a1[1] = v33;
  return result;
}

uint64_t sub_23C618100@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_23C601E20();
  v4 = v3;
  v71 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v61 = v1;
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EED7610](v7, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v2 = v8;
      v9 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB838, 0x277D59650);
      v1 = v2;
      v10 = sub_23C870D44();
      if (v10)
      {
        v1 = v10;
        v11 = [v10 startedOrChanged];
        if (v11)
        {
          v12 = v11;

          v1 = &v71;
          sub_23C871D54();
          v13 = v71[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v7;
      if (v9 == i)
      {
        v14 = v71;
        v6 = MEMORY[0x277D84F90];
        v1 = v61;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_21;
    }

LABEL_29:

    i = 0;
    goto LABEL_30;
  }

  if (!*(v14 + 16))
  {
    goto LABEL_29;
  }

LABEL_21:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EED7610](0, v14);
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      goto LABEL_112;
    }

    v15 = *(v14 + 32);
  }

  i = v15;

LABEL_30:
  v16 = sub_23C601E20();
  v4 = v1;
  v1 = sub_23C624EB0(v16, v4);

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_45:

    if (i)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_45;
  }

LABEL_32:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_35;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v17 = *(v1 + 32);
LABEL_35:
  v18 = v17;

  if (i)
  {
    if (!v18)
    {
LABEL_46:
      v18 = i;
      goto LABEL_47;
    }

    i = i;
    v18 = v18;
    result = sub_23C870CF4();
    if (!result)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v20 = result;
    result = sub_23C870CF4();
    if (!result)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v21 = result;
    v71 = v20;
    *&v65 = result;
    sub_23C870DE4();
    sub_23C61FDBC();
    v22 = sub_23C871714();

    if (v22)
    {

      goto LABEL_46;
    }

LABEL_47:
    v23 = sub_23C870CF4();

    goto LABEL_49;
  }

  if (v18)
  {
    goto LABEL_47;
  }

LABEL_48:
  v23 = 0;
LABEL_49:
  v24 = sub_23C86E780();
  if (v24)
  {
    v25 = v24;
    v26 = sub_23C870CF4();
  }

  else
  {
    v26 = 0;
  }

  i = sub_23C62A1DC(v23, v26);
  LOBYTE(v2) = v27;

  v28 = sub_23C601E20();
  v29 = v28;
  v71 = v6;
  if (v28 >> 62)
  {
    goto LABEL_69;
  }

  for (j = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_23C871C34())
  {
    v59 = v2;
    v60 = v4;
    v62 = i;
    v31 = 0;
    v4 = v29 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v32 = MEMORY[0x23EED7610](v31, v29);
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v2 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB838, 0x277D59650);
      v34 = sub_23C870D44();
      if (v34)
      {
        v35 = v34;
        v36 = [v34 startedOrChanged];
        if (v36)
        {
          v37 = v36;

          sub_23C871D54();
          i = v71[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v31;
      if (v2 == j)
      {
        v1 = v71;
        v4 = v60;
        i = v62;
        LOBYTE(v2) = v59;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_71:

  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
LABEL_74:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*(v1 + 16))
        {
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v38 = *(v1 + 32);
        goto LABEL_77;
      }

LABEL_113:
      v38 = MEMORY[0x23EED7610](0, v1);
LABEL_77:
      v39 = v38;

      goto LABEL_80;
    }
  }

  else
  {
    result = *(v1 + 16);
    if (result)
    {
      goto LABEL_74;
    }
  }

  v39 = 0;
LABEL_80:
  v40 = sub_23C601E20();
  v41 = v4;
  v42 = sub_23C624EB0(v40, v41);

  if (!(v42 >> 62))
  {
    result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_82;
    }

LABEL_95:

    goto LABEL_96;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_95;
  }

LABEL_82:
  if ((v42 & 0xC000000000000001) == 0)
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v42 + 32);
      goto LABEL_85;
    }

    goto LABEL_116;
  }

  v43 = MEMORY[0x23EED7610](0, v42);
LABEL_85:
  v44 = v43;

  if (!v39)
  {
    v39 = v44;
    goto LABEL_96;
  }

  if (v44)
  {
    v45 = v2;
    v46 = v39;
    v47 = v44;
    result = sub_23C870CF4();
    if (result)
    {
      v48 = result;
      result = sub_23C870CF4();
      if (result)
      {
        v49 = result;
        v71 = v48;
        *&v65 = result;
        sub_23C870DE4();
        sub_23C61FDBC();
        v50 = sub_23C871714();

        if (v50)
        {
        }

        else
        {

          v39 = v44;
        }

        LOBYTE(v2) = v45;
        goto LABEL_96;
      }

LABEL_120:
      __break(1u);
      return result;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

LABEL_96:
  v51 = sub_23C86E780();
  v52 = sub_23C601F9C();
  v82 = v2 & 1;
  if (v2)
  {
    if (v39)
    {
      v54 = 0x800000023C8A91F0;
      if (v51)
      {
        v55 = 0xD000000000000016;
      }

      else
      {
        v55 = 0x20676E697373694DLL;
      }

      if (!v51)
      {
        v54 = 0xEB00000000646E45;
      }
    }

    else
    {
      v54 = 0x800000023C8A91D0;
      v55 = 0x20676E697373694DLL;
      if (v51)
      {
        v54 = 0xED00007472617453;
      }

      else
      {
        v55 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  *&v65 = i;
  BYTE8(v65) = v82;
  *&v66 = v55;
  *(&v66 + 1) = v54;
  *&v67 = v39;
  *(&v67 + 1) = v51;
  *&v68 = 0;
  BYTE8(v68) = 0;
  *&v69 = v52;
  *(&v69 + 1) = v53;
  v70 = xmmword_27E1FB8D0;
  v71 = i;
  v72 = v82;
  v73 = v55;
  v74 = v54;
  v75 = v39;
  v76 = v51;
  v77 = 0;
  v78 = 0;
  v79 = v52;
  v80 = v53;
  v81 = xmmword_27E1FB8D0;

  sub_23C61FD0C(&v65, v64);
  result = sub_23C61FD68(&v71);
  v56 = v68;
  a1[2] = v67;
  a1[3] = v56;
  v57 = v70;
  a1[4] = v69;
  a1[5] = v57;
  v58 = v66;
  *a1 = v65;
  a1[1] = v58;
  return result;
}

uint64_t sub_23C61891C@<X0>(_OWORD *a1@<X8>)
{
  v6 = sub_23C601E20();
  v7 = v1;
  v8 = sub_23C625DA0(v6, v7);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_3;
    }

LABEL_8:

    v2 = 0;
    goto LABEL_9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23EED7610](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v2 = sub_23C870CF4();

LABEL_9:
  v11 = sub_23C601E20();
  v12 = v7;
  v13 = sub_23C625DAC(v11, v12);

  if (v13 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_11;
    }

LABEL_16:

    v7 = 0;
    goto LABEL_17;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x23EED7610](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v14 = *(v13 + 32);
  }

  v7 = v14;

LABEL_17:
  v13 = sub_23C601E20();
  v3 = v12;
  v8 = sub_23C626170(v13, v3);

  if (v8 >> 62)
  {
    if (sub_23C871C34())
    {
LABEL_19:
      if ((v8 & 0xC000000000000001) == 0)
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v15 = *(v8 + 32);
        goto LABEL_22;
      }

LABEL_79:
      v15 = MEMORY[0x23EED7610](0, v8);
LABEL_22:
      v16 = v15;

      if (v7)
      {
        if (v16)
        {

          v17 = 0;
          v16 = v7;
LABEL_31:

          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if (v16)
      {
LABEL_30:
        v17 = sub_23C870CF4();
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if (v7)
  {
LABEL_29:
    v16 = v7;
    goto LABEL_30;
  }

LABEL_32:
  v17 = 0;
LABEL_33:
  v7 = sub_23C62A1DC(v2, v17);
  LOBYTE(v13) = v18;

  v2 = sub_23C601E20();
  v12 = v3;
  v11 = sub_23C625DA0(v2, v12);

  if (v11 >> 62)
  {
    if (sub_23C871C34())
    {
LABEL_35:
      if ((v11 & 0xC000000000000001) == 0)
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_85;
        }

        v19 = *(v11 + 32);
        goto LABEL_38;
      }

LABEL_81:
      v19 = MEMORY[0x23EED7610](0, v11);
LABEL_38:
      v2 = v19;

      goto LABEL_41;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v2 = 0;
LABEL_41:
  v20 = sub_23C601E20();
  v8 = v12;
  v4 = sub_23C625DAC(v20, v8);

  if (v4 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
LABEL_43:
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_87;
        }

        v22 = *(v4 + 32);
        goto LABEL_46;
      }

LABEL_83:
      v22 = MEMORY[0x23EED7610](0, v4);
LABEL_46:
      v11 = v22;

      goto LABEL_49;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_43;
    }
  }

  v11 = 0;
LABEL_49:
  v23 = sub_23C601E20();
  v24 = v8;
  v4 = sub_23C626170(v23, v24);

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_51;
    }

LABEL_60:

    if (!v11)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_60;
  }

LABEL_51:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v4 + 32);
      goto LABEL_54;
    }

LABEL_87:
    __break(1u);
    return result;
  }

LABEL_85:
  v25 = MEMORY[0x23EED7610](0, v4);
LABEL_54:
  v26 = v25;

  if (v11)
  {
    if (v26)
    {

LABEL_61:
      v11 = 0;
    }
  }

  else
  {
    v11 = v26;
    if (!v26)
    {
      goto LABEL_61;
    }
  }

LABEL_62:
  v27 = sub_23C601F9C();
  v52 = v13 & 1;
  if (v13)
  {
    v29 = 0xD000000000000015;
    if (v2)
    {
      if (v11)
      {
        v29 = 0xD000000000000016;
      }

      else
      {
        v29 = 0x20676E697373694DLL;
      }

      v30 = 0xEB00000000646E45;
      if (v11)
      {
        v30 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v11)
      {
        v29 = 0x20676E697373694DLL;
      }

      v30 = 0xED00007472617453;
      if (!v11)
      {
        v30 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  *&v35 = v7;
  BYTE8(v35) = v52;
  *&v36 = v29;
  *(&v36 + 1) = v30;
  *&v37 = v2;
  *(&v37 + 1) = v11;
  *&v38 = 0;
  BYTE8(v38) = 0;
  *&v39 = v27;
  *(&v39 + 1) = v28;
  v40 = xmmword_27E1FB8E0;
  v41 = v7;
  v42 = v52;
  v43 = v29;
  v44 = v30;
  v45 = v2;
  v46 = v11;
  v47 = 0;
  v48 = 0;
  v49 = v27;
  v50 = v28;
  v51 = xmmword_27E1FB8E0;

  sub_23C61FD0C(&v35, v34);
  result = sub_23C61FD68(&v41);
  v31 = v38;
  a1[2] = v37;
  a1[3] = v31;
  v32 = v40;
  a1[4] = v39;
  a1[5] = v32;
  v33 = v36;
  *a1 = v35;
  a1[1] = v33;
  return result;
}

unint64_t sub_23C618ED0@<X0>(_OWORD *a1@<X8>)
{
  v2 = EventGraph.asr.getter();
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    goto LABEL_29;
  }

  v4 = v2;
  v75 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    v3 = v5 & 0xC000000000000001;
    v1 = (v5 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v8 = MEMORY[0x23EED7610](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v11 = sub_23C870D44();
      if (v11)
      {

        sub_23C871D54();
        v12 = v75[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        v13 = v75;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v14 = sub_23C871C34();
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_28:

LABEL_29:
    v1 = 0;
    goto LABEL_30;
  }

LABEL_20:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EED7610](0, v13);
  }

  else
  {
    if (!*(v13 + 16))
    {
      __break(1u);
      goto LABEL_137;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v1 = sub_23C870CF4();

LABEL_30:
  v17 = EventGraph.asr.getter();
  if (v17)
  {
    v18 = v17;
    v75 = v3;
    swift_beginAccess();
    v19 = v18[2];
    if (v19 >> 62)
    {
      goto LABEL_58;
    }

    for (j = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v61 = v18;
      v64 = v1;
      v21 = 0;
      v1 = (v19 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x23EED7610](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v18 = v22;
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
        v24 = sub_23C870D44();
        if (v24 && (v25 = v24, v3 = [v24 isFinal], v25, (v3 & 1) != 0))
        {
          sub_23C871D54();
          v3 = v75[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v21;
        if (v23 == j)
        {
          v13 = v75;
          v3 = MEMORY[0x277D84F90];
          v18 = v61;
          v1 = v64;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_47:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      v26 = sub_23C871C34();
      if (v26)
      {
LABEL_50:
        v27 = __OFSUB__(v26, 1);
        v14 = v26 - 1;
        if (!v27)
        {
          if ((v13 & 0xC000000000000001) == 0)
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v14 < *(v13 + 16))
            {
              v28 = *(v13 + 8 * v14 + 32);
LABEL_55:
              v29 = v28;

              v30 = sub_23C870CF4();

              goto LABEL_62;
            }

            __break(1u);
            goto LABEL_141;
          }

LABEL_138:
          v28 = MEMORY[0x23EED7610](v14, v13);
          goto LABEL_55;
        }

LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }

    else
    {
      v26 = *(v13 + 16);
      if (v26)
      {
        goto LABEL_50;
      }
    }
  }

  v30 = 0;
LABEL_62:
  v18 = sub_23C62A1DC(v1, v30);
  LOBYTE(v19) = v31;

  v32 = EventGraph.asr.getter();
  if (v32)
  {
    v33 = v32;
    v75 = v3;
    swift_beginAccess();
    v34 = *(v33 + 16);
    if (v34 >> 62)
    {
      goto LABEL_87;
    }

    for (k = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v62 = v19;
      v65 = v18;
      v36 = 0;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x23EED7610](v36, v34);
        }

        else
        {
          if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v37 = *(v34 + 8 * v36 + 32);
        }

        v18 = v37;
        v19 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
        v38 = sub_23C870D44();
        if (v38)
        {

          sub_23C871D54();
          v3 = v75[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v36;
        if (v19 == k)
        {
          v13 = v75;
          v3 = MEMORY[0x277D84F90];
          v18 = v65;
          LOBYTE(v19) = v62;
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_78:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_81:
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*(v13 + 16))
          {
            __break(1u);
            goto LABEL_143;
          }

          v40 = *(v13 + 32);
          goto LABEL_84;
        }

LABEL_141:
        v40 = MEMORY[0x23EED7610](0, v13);
LABEL_84:
        v34 = v40;

        goto LABEL_91;
      }
    }

    else
    {
      result = *(v13 + 16);
      if (result)
      {
        goto LABEL_81;
      }
    }
  }

  v34 = 0;
LABEL_91:
  v41 = EventGraph.asr.getter();
  if (v41)
  {
    v75 = v3;
    swift_beginAccess();
    v42 = *(v41 + 16);
    if (v42 >> 62)
    {
      goto LABEL_119;
    }

    for (m = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
    {

      if (!m)
      {
        break;
      }

      v60 = v34;
      v63 = v19;
      v66 = v18;
      v44 = 0;
      v34 = v42 & 0xFFFFFFFFFFFFFF8;
      v19 = 0x277D569E8uLL;
      while (1)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x23EED7610](v44, v42);
        }

        else
        {
          if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_118;
          }

          v45 = *(v42 + 8 * v44 + 32);
        }

        v18 = v45;
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
        v47 = sub_23C870D44();
        if (v47 && (v48 = v47, v49 = [v47 isFinal], v48, (v49 & 1) != 0))
        {
          sub_23C871D54();
          v50 = v75[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v44;
        if (v46 == m)
        {
          v13 = v75;
          v18 = v66;
          LOBYTE(v19) = v63;
          v34 = v60;
          goto LABEL_108;
        }
      }

      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_108:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      v51 = sub_23C871C34();
      if (v51)
      {
LABEL_111:
        v27 = __OFSUB__(v51, 1);
        result = v51 - 1;
        if (!v27)
        {
          if ((v13 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *(v13 + 16))
            {
              v52 = *(v13 + 8 * result + 32);
LABEL_116:
              v41 = v52;

              goto LABEL_122;
            }

            __break(1u);
            return result;
          }

LABEL_144:
          v52 = MEMORY[0x23EED7610](result, v13);
          goto LABEL_116;
        }

LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

    else
    {
      v51 = *(v13 + 16);
      if (v51)
      {
        goto LABEL_111;
      }
    }

    v41 = 0;
  }

LABEL_122:
  v53 = sub_23C601F9C();
  v86 = v19 & 1;
  if (v19)
  {
    if (v34)
    {
      v55 = 0x800000023C8A91F0;
      if (v41)
      {
        v56 = 0xD000000000000016;
      }

      else
      {
        v56 = 0x20676E697373694DLL;
      }

      if (!v41)
      {
        v55 = 0xEB00000000646E45;
      }
    }

    else
    {
      v55 = 0x800000023C8A91D0;
      v56 = 0x20676E697373694DLL;
      if (v41)
      {
        v55 = 0xED00007472617453;
      }

      else
      {
        v56 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  *&v69 = v18;
  BYTE8(v69) = v86;
  *&v70 = v56;
  *(&v70 + 1) = v55;
  *&v71 = v34;
  *(&v71 + 1) = v41;
  *&v72 = 0;
  BYTE8(v72) = 0;
  *&v73 = v53;
  *(&v73 + 1) = v54;
  v74 = xmmword_27E1FB980;
  v75 = v18;
  v76 = v86;
  v77 = v56;
  v78 = v55;
  v79 = v34;
  v80 = v41;
  v81 = 0;
  v82 = 0;
  v83 = v53;
  v84 = v54;
  v85 = xmmword_27E1FB980;

  sub_23C61FD0C(&v69, v68);
  result = sub_23C61FD68(&v75);
  v57 = v72;
  a1[2] = v71;
  a1[3] = v57;
  v58 = v74;
  a1[4] = v73;
  a1[5] = v58;
  v59 = v70;
  *a1 = v69;
  a1[1] = v59;
  return result;
}

uint64_t sub_23C619800@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = a1;
  v12 = a1();
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = v12;
  v54 = v10;
  v69 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v52 = v13;
    v55 = a4;
    v57 = a5;
    v59 = a6;
    v16 = 0;
    v13 = v14 & 0xC000000000000001;
    a4 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v17 = MEMORY[0x23EED7610](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      a6 = v17;
      a5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a2, a3);
      v18 = sub_23C870D44();
      if (v18)
      {
        v19 = v18;
        v20 = [v18 ended];
        if (v20)
        {
          v21 = v20;

          sub_23C871D54();
          v6 = *(v69 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v16;
      if (a5 == i)
      {
        v22 = v69;
        a5 = v57;
        a6 = v59;
        a4 = v55;
        LOBYTE(v13) = v52;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_19:

  if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
  {
    v10 = v54;
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v10 = v54;
  if (!*(v22 + 16))
  {
LABEL_30:

LABEL_31:
    v25 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x23EED7610](0, v22);
  }

  else
  {
    if (!*(v22 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  v25 = sub_23C870CF4();

LABEL_32:
  v26 = sub_23C86E780();
  if (v26)
  {
    v27 = v26;
    v28 = sub_23C870CF4();
  }

  else
  {
    v28 = 0;
  }

  v6 = sub_23C62A1DC(v25, v28);
  LOBYTE(v13) = v29;

  v30 = v10();
  if (!v30)
  {
    goto LABEL_65;
  }

  v69 = MEMORY[0x277D84F90];
  v31 = v30;
  swift_beginAccess();
  v32 = *(v31 + 16);
  if (v32 >> 62)
  {
    goto LABEL_62;
  }

  for (j = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
  {

    if (!j)
    {
      break;
    }

    v51 = v13;
    v53 = v6;
    v56 = a4;
    v58 = a5;
    v60 = a6;
    a4 = 0;
    v13 = v32 & 0xC000000000000001;
    v6 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v34 = MEMORY[0x23EED7610](a4, v32);
      }

      else
      {
        if (a4 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v34 = *(v32 + 8 * a4 + 32);
      }

      a6 = v34;
      a5 = (a4 + 1);
      if (__OFADD__(a4, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a2, a3);
      v35 = sub_23C870D44();
      if (v35)
      {
        v36 = v35;
        v37 = [v35 ended];
        if (v37)
        {
          v38 = v37;

          sub_23C871D54();
          v39 = *(v69 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++a4;
      if (a5 == j)
      {
        v22 = v69;
        a5 = v58;
        a6 = v60;
        a4 = v56;
        v6 = v53;
        LOBYTE(v13) = v51;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_53:

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    result = *(v22 + 16);
    if (result)
    {
      goto LABEL_56;
    }

    goto LABEL_64;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_64:

LABEL_65:
    v42 = 0;
    goto LABEL_66;
  }

LABEL_56:
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (!*(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v41 = *(v22 + 32);
    goto LABEL_59;
  }

LABEL_82:
  v41 = MEMORY[0x23EED7610](0, v22);
LABEL_59:
  v42 = v41;

LABEL_66:
  v43 = sub_23C86E780();
  v44 = *a4;
  v45 = *a5;
  v81 = v13 & 1;
  if (v13)
  {
    v46 = 0xD000000000000015;
    if (v42)
    {
      if (v43)
      {
        v46 = 0xD000000000000016;
      }

      else
      {
        v46 = 0x20676E697373694DLL;
      }

      v47 = 0xEB00000000646E45;
      if (v43)
      {
        v47 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v43)
      {
        v46 = 0x20676E697373694DLL;
      }

      v47 = 0xED00007472617453;
      if (!v43)
      {
        v47 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  *&v63 = v6;
  BYTE8(v63) = v81;
  *&v64 = v46;
  *(&v64 + 1) = v47;
  *&v65 = v42;
  *(&v65 + 1) = v43;
  *&v66 = 0;
  BYTE8(v66) = 0;
  v67 = 0uLL;
  *&v68 = v44;
  *(&v68 + 1) = v45;
  v69 = v6;
  v70 = v81;
  v71 = v46;
  v72 = v47;
  v73 = v42;
  v74 = v43;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = v44;
  v80 = v45;

  sub_23C61FD0C(&v63, v62);
  result = sub_23C61FD68(&v69);
  v48 = v66;
  a6[2] = v65;
  a6[3] = v48;
  v49 = v68;
  a6[4] = v67;
  a6[5] = v49;
  v50 = v64;
  *a6 = v63;
  a6[1] = v50;
  return result;
}

uint64_t sub_23C619DC0@<X0>(unint64_t a1@<X8>)
{
  v4 = EventGraph.uei.getter();
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_26;
  }

  v6 = v4;
  v50 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v5 = *(v6 + 16);
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (i)
    {
      v41 = a1;
      v8 = 0;
      v1 = v5 & 0xFFFFFFFFFFFFFF8;
      a1 = 0x277D5A7B8uLL;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EED7610](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
        v11 = sub_23C870D44();
        if (v11)
        {

          sub_23C871D54();
          v12 = *(v50 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v8;
        if (v2 == i)
        {
          v13 = v50;
          a1 = v41;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_17:

    if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
    {
      v14 = sub_23C871C34();
    }

    else
    {
      v14 = *(v13 + 16);
    }

    v5 = MEMORY[0x277D84F90];
    if (v14)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x23EED7610](0, v13);
      }

      else
      {
        if (!*(v13 + 16))
        {
          __break(1u);
          goto LABEL_81;
        }

        v15 = *(v13 + 32);
      }

      v16 = v15;

      v17 = sub_23C870CF4();
    }

    else
    {

LABEL_26:
      v17 = 0;
    }

    v18 = sub_23C86E780();
    if (v18)
    {
      v19 = v18;
      v20 = sub_23C870CF4();
    }

    else
    {
      v20 = 0;
    }

    v1 = sub_23C62A1DC(v17, v20);
    LOBYTE(v2) = v21;

    v22 = EventGraph.uei.getter();
    if (!v22)
    {
      goto LABEL_64;
    }

    v23 = v22;
    v40 = v2;
    v50 = v5;
    swift_beginAccess();
    v24 = *(v23 + 16);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v32 = *(v23 + 16);
      }

      v2 = sub_23C871C34();
    }

    else
    {
      v2 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v2)
    {
      break;
    }

    v39 = v1;
    v42 = a1;
    a1 = 0;
    v1 = 0x277D5A7B8uLL;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x23EED7610](a1, v24);
      }

      else
      {
        if (a1 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v25 = *(v24 + 8 * a1 + 32);
      }

      v26 = v25;
      v27 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
      v28 = sub_23C870D44();
      if (v28)
      {

        sub_23C871D54();
        v5 = *(v50 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++a1;
      if (v27 == v2)
      {
        v13 = v50;
        a1 = v42;
        v1 = v39;
        goto LABEL_46;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_46:

  LOBYTE(v2) = v40;
  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (!result)
    {
      goto LABEL_63;
    }

LABEL_49:
    if ((v13 & 0xC000000000000001) == 0)
    {
      if (!*(v13 + 16))
      {
        __break(1u);
        return result;
      }

      v30 = *(v13 + 32);
      goto LABEL_52;
    }

LABEL_81:
    v30 = MEMORY[0x23EED7610](0, v13);
LABEL_52:
    v31 = v30;

    goto LABEL_65;
  }

  result = *(v13 + 16);
  if (result)
  {
    goto LABEL_49;
  }

LABEL_63:

LABEL_64:
  v31 = 0;
LABEL_65:
  v33 = sub_23C86E780();
  v61 = v2 & 1;
  if (v2)
  {
    v34 = 0xD000000000000015;
    if (v31)
    {
      if (v33)
      {
        v34 = 0xD000000000000016;
      }

      else
      {
        v34 = 0x20676E697373694DLL;
      }

      v35 = 0xEB00000000646E45;
      if (v33)
      {
        v35 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v33)
      {
        v34 = 0x20676E697373694DLL;
      }

      v35 = 0xED00007472617453;
      if (!v33)
      {
        v35 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  *&v44 = v1;
  BYTE8(v44) = v61;
  *&v45 = v34;
  *(&v45 + 1) = v35;
  *&v46 = v31;
  *(&v46 + 1) = v33;
  *&v47 = 0;
  BYTE8(v47) = 0;
  v48 = 0uLL;
  v49 = xmmword_27E1FB910;
  v50 = v1;
  v51 = v61;
  v52 = v34;
  v53 = v35;
  v54 = v31;
  v55 = v33;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = xmmword_27E1FB910;

  sub_23C61FD0C(&v44, v43);
  result = sub_23C61FD68(&v50);
  v36 = v47;
  *(a1 + 32) = v46;
  *(a1 + 48) = v36;
  v37 = v49;
  *(a1 + 64) = v48;
  *(a1 + 80) = v37;
  v38 = v45;
  *a1 = v44;
  *(a1 + 16) = v38;
  return result;
}

uint64_t sub_23C61A330@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X8>)
{
  v11 = EventGraph.uei.getter();
  v12 = MEMORY[0x277D84F90];
  v70 = a3;
  if (!v11)
  {
    goto LABEL_29;
  }

  v82 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v13 = *(v11 + 16);
  if (v13 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v66 = v11;
    v11 = 0;
    v12 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23EED7610](v11, v13);
      }

      else
      {
        if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v13 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v17 = sub_23C870D44();
      if (v17)
      {

        sub_23C871D54();
        a3 = v82[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v82;
        a3 = v70;
        v12 = MEMORY[0x277D84F90];
        v11 = v66;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_20;
    }

LABEL_28:

    v11 = 0;
    goto LABEL_29;
  }

  if (!*(v18 + 16))
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EED7610](0, v18);
  }

  else
  {
    if (!*(v18 + 16))
    {
      __break(1u);
      goto LABEL_135;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

  v11 = sub_23C870CF4();

LABEL_29:
  v21 = (a3)();
  if (v21)
  {
    v22 = v21;
    v82 = v12;
    swift_beginAccess();
    i = *(v22 + 16);
    if (i >> 62)
    {
      goto LABEL_56;
    }

    for (j = *((i & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v65 = v22;
      v66 = v11;
      v24 = 0;
      v12 = i & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((i & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x23EED7610](v24, i);
        }

        else
        {
          if (v24 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v25 = *(i + 8 * v24 + 32);
        }

        v11 = v25;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a4, a5);
        v22 = v11;
        v27 = sub_23C870D44();
        if (v27)
        {
          v22 = v27;
          v28 = [v27 ended];
          if (v28)
          {
            v29 = v28;

            v22 = &v82;
            sub_23C871D54();
            a3 = v82[2];
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v24;
        if (v26 == j)
        {
          v13 = v82;
          a3 = v70;
          v12 = MEMORY[0x277D84F90];
          v22 = v65;
          v11 = v66;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_47:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_50:
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*(v13 + 16))
          {
            __break(1u);
            goto LABEL_137;
          }

          v30 = *(v13 + 32);
          goto LABEL_53;
        }

LABEL_135:
        v30 = MEMORY[0x23EED7610](0, v13);
LABEL_53:
        v31 = v30;

        v32 = sub_23C870CF4();

        goto LABEL_60;
      }
    }

    else if (*(v13 + 16))
    {
      goto LABEL_50;
    }
  }

  v32 = 0;
LABEL_60:
  v66 = sub_23C62A1DC(v11, v32);
  LOBYTE(v65) = v33;

  v34 = EventGraph.uei.getter();
  if (v34)
  {
    v82 = v12;
    v35 = v34;
    swift_beginAccess();
    v36 = *(v35 + 16);
    if (v36 >> 62)
    {
      goto LABEL_85;
    }

    for (k = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      a3 = 0;
      v12 = v36 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x23EED7610](a3, v36);
        }

        else
        {
          if (a3 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v38 = *(v36 + 8 * a3 + 32);
        }

        i = v38;
        v39 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v40 = sub_23C870D44();
        if (v40)
        {

          sub_23C871D54();
          v41 = v82[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++a3;
        if (v39 == k)
        {
          v22 = v82;
          a3 = v70;
          v12 = MEMORY[0x277D84F90];
          goto LABEL_76;
        }
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_76:

    if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_79:
        if ((v22 & 0xC000000000000001) == 0)
        {
          if (!*(v22 + 16))
          {
            __break(1u);
            goto LABEL_139;
          }

          v42 = *(v22 + 32);
          goto LABEL_82;
        }

LABEL_137:
        v42 = MEMORY[0x23EED7610](0, v22);
LABEL_82:
        i = v42;

        goto LABEL_89;
      }
    }

    else if (*(v22 + 16))
    {
      goto LABEL_79;
    }
  }

  i = 0;
LABEL_89:
  v43 = (a3)(v34);
  if (!v43)
  {
LABEL_119:
    v57 = 0;
    goto LABEL_120;
  }

  v44 = v43;
  v82 = v12;
  swift_beginAccess();
  v45 = *(v44 + 16);
  if (v45 >> 62)
  {
    goto LABEL_116;
  }

  for (m = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
  {

    if (!m)
    {
      break;
    }

    v74 = i;
    v47 = 0;
    while (1)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x23EED7610](v47, v45);
      }

      else
      {
        if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_115;
        }

        v48 = *(v45 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a4, a5);
      v51 = sub_23C870D44();
      if (v51)
      {
        v52 = v51;
        v53 = [v51 ended];
        if (v53)
        {
          v54 = v53;

          sub_23C871D54();
          i = v82[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v47;
      if (v50 == m)
      {
        v22 = v82;
        i = v74;
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_107:

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    result = *(v22 + 16);
    if (result)
    {
      goto LABEL_110;
    }

    goto LABEL_118;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_118:

    goto LABEL_119;
  }

LABEL_110:
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (!*(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v56 = *(v22 + 32);
    goto LABEL_113;
  }

LABEL_139:
  v56 = MEMORY[0x23EED7610](0, v22);
LABEL_113:
  v57 = v56;

LABEL_120:
  v58 = *a6;
  v59 = *a7;
  v94 = v65 & 1;
  if (v65)
  {
    if (i)
    {
      v60 = 0x800000023C8A91F0;
      if (v57)
      {
        v61 = 0xD000000000000016;
      }

      else
      {
        v61 = 0x20676E697373694DLL;
      }

      if (!v57)
      {
        v60 = 0xEB00000000646E45;
      }
    }

    else
    {
      v60 = 0x800000023C8A91D0;
      v61 = 0x20676E697373694DLL;
      if (v57)
      {
        v60 = 0xED00007472617453;
      }

      else
      {
        v61 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v61 = 0;
    v60 = 0;
  }

  *&v76 = v66;
  BYTE8(v76) = v94;
  *&v77 = v61;
  *(&v77 + 1) = v60;
  *&v78 = i;
  *(&v78 + 1) = v57;
  *&v79 = 0;
  BYTE8(v79) = 0;
  v80 = 0uLL;
  *&v81 = v58;
  *(&v81 + 1) = v59;
  v82 = v66;
  v83 = v94;
  v84 = v61;
  v85 = v60;
  v86 = i;
  v87 = v57;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v58;
  v93 = v59;

  sub_23C61FD0C(&v76, v75);
  result = sub_23C61FD68(&v82);
  v62 = v79;
  a8[2] = v78;
  a8[3] = v62;
  v63 = v81;
  a8[4] = v80;
  a8[5] = v63;
  v64 = v77;
  *a8 = v76;
  a8[1] = v64;
  return result;
}

unint64_t sub_23C61AC18@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, unint64_t a6@<X8>)
{
  v10 = a1;
  v11 = v6;
  v13 = a1();
  v14 = MEMORY[0x277D84F90];
  v80 = v6;
  if (!v13)
  {
    goto LABEL_31;
  }

  v15 = v13;
  v90 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(v15 + 16);
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v74 = v10;
    v7 = 0;
    v10 = v9 & 0xC000000000000001;
    v11 = (v9 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v10)
      {
        v17 = MEMORY[0x23EED7610](v7, v9);
      }

      else
      {
        if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v17 = *(v9 + 8 * v7 + 32);
      }

      v18 = v17;
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a2, a3);
      v19 = sub_23C870D44();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 ended];
        if (v21)
        {
          v22 = v21;

          sub_23C871D54();
          v14 = v90[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v7;
      if (v8 == i)
      {
        v23 = v90;
        v11 = v80;
        v14 = MEMORY[0x277D84F90];
        v10 = v74;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    v24 = sub_23C871C34();
    if (v24)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_30:

LABEL_31:
    v7 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x23EED7610](0, v23);
  }

  else
  {
    if (!*(v23 + 16))
    {
      __break(1u);
      goto LABEL_142;
    }

    v25 = *(v23 + 32);
  }

  v26 = v25;

  v7 = sub_23C870CF4();

LABEL_32:
  v27 = EventGraph.asr.getter();
  if (!v27)
  {
LABEL_62:
    v38 = 0;
    goto LABEL_63;
  }

  v28 = v27;
  v68 = v7;
  v90 = v14;
  swift_beginAccess();
  v29 = *(v28 + 16);
  if (v29 >> 62)
  {
    goto LABEL_59;
  }

  for (j = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
  {

    if (!j)
    {
      break;
    }

    v71 = a6;
    v75 = v10;
    v10 = 0;
    v8 = v29 & 0xC000000000000001;
    a6 = v29 & 0xFFFFFFFFFFFFFF8;
    v14 = 0x277D568E0uLL;
    while (1)
    {
      if (v8)
      {
        v31 = MEMORY[0x23EED7610](v10, v29);
      }

      else
      {
        if (v10 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v31 = *(v29 + 8 * v10 + 32);
      }

      v11 = v31;
      v32 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v33 = sub_23C870D44();
      if (v33)
      {

        sub_23C871D54();
        v9 = v90[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v10;
      if (v32 == j)
      {
        v23 = v90;
        a6 = v71;
        v10 = v75;
        v11 = v80;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_48:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v34 = *(v23 + 16);
    v7 = v68;
    if (v34)
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  v34 = sub_23C871C34();
  v7 = v68;
  if (!v34)
  {
LABEL_61:

    goto LABEL_62;
  }

LABEL_51:
  v35 = __OFSUB__(v34, 1);
  v24 = v34 - 1;
  if (v35)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_143:
    v36 = MEMORY[0x23EED7610](v24, v23);
    goto LABEL_56;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_145;
  }

  if (v24 >= *(v23 + 16))
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v36 = *(v23 + 8 * v24 + 32);
LABEL_56:
  v37 = v36;

  v38 = sub_23C870CF4();

LABEL_63:
  v8 = sub_23C62A1DC(v7, v38);
  LOBYTE(v9) = v39;

  v40 = (v10)();
  if (!v40)
  {
    goto LABEL_90;
  }

  v41 = v40;
  v90 = v14;
  swift_beginAccess();
  v10 = *(v41 + 16);
  if (v10 >> 62)
  {
    goto LABEL_120;
  }

  for (k = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
  {

    if (k)
    {
      v72 = v41;
      v76 = v8;
      v69 = v9;
      v9 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x23EED7610](v9, v10);
        }

        else
        {
          if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_117;
          }

          v43 = *(v10 + 8 * v9 + 32);
        }

        v44 = v43;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a2, a3);
        v41 = v44;
        v45 = sub_23C870D44();
        if (v45)
        {
          v41 = v45;
          v46 = [v45 ended];
          if (v46)
          {
            v47 = v46;

            v41 = &v90;
            sub_23C871D54();
            v48 = v90[2];
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v9;
        if (v8 == k)
        {
          v23 = v90;
          v41 = v72;
          v8 = v76;
          LOBYTE(v9) = v69;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_81:

    if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
    }

    else
    {
      result = *(v23 + 16);
    }

    v11 = v80;
    v14 = MEMORY[0x277D84F90];
    if (result)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
LABEL_146:
        v50 = MEMORY[0x23EED7610](0, v23);
      }

      else
      {
        if (!*(v23 + 16))
        {
          __break(1u);
          goto LABEL_148;
        }

        v50 = *(v23 + 32);
      }

      k = v50;
    }

    else
    {

LABEL_90:
      k = 0;
    }

    v41 = v11;
    v51 = EventGraph.asr.getter();
    if (!v51)
    {
      goto LABEL_127;
    }

    a3 = k;
    v90 = v14;
    swift_beginAccess();
    v52 = *(v51 + 16);
    if (v52 >> 62)
    {
      if (v52 < 0)
      {
        v60 = *(v51 + 16);
      }

      v53 = sub_23C871C34();
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v53)
    {
      break;
    }

    a2 = v51;
    v70 = v9;
    v73 = a6;
    v77 = v8;
    a6 = 0;
    v8 = v52 & 0xC000000000000001;
    v9 = 0x277D568E0uLL;
    while (1)
    {
      if (v8)
      {
        v54 = MEMORY[0x23EED7610](a6, v52);
      }

      else
      {
        if (a6 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_119;
        }

        v54 = *(v52 + 8 * a6 + 32);
      }

      v10 = v54;
      v55 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v41 = v10;
      v56 = sub_23C870D44();
      if (v56)
      {

        v41 = &v90;
        sub_23C871D54();
        v57 = v90[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++a6;
      if (v55 == v53)
      {
        v41 = v90;
        a6 = v73;
        v8 = v77;
        LOBYTE(v9) = v70;
        goto LABEL_107;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_107:

  k = a3;
  if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
  {
    v58 = sub_23C871C34();
    if (!v58)
    {
      goto LABEL_126;
    }

LABEL_110:
    v35 = __OFSUB__(v58, 1);
    result = v58 - 1;
    if (!v35)
    {
      if ((v41 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *(v41 + 16))
        {
          v59 = *(v41 + 8 * result + 32);
LABEL_115:
          v51 = v59;

          goto LABEL_127;
        }

        __break(1u);
        return result;
      }

LABEL_149:
      v59 = MEMORY[0x23EED7610](result, v41);
      goto LABEL_115;
    }

LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v58 = *(v41 + 16);
  if (v58)
  {
    goto LABEL_110;
  }

LABEL_126:

  v51 = 0;
LABEL_127:
  v61 = *a4;
  v62 = *a5;
  v102 = v9 & 1;
  if (v9)
  {
    if (k)
    {
      v63 = 0x800000023C8A91F0;
      if (v51)
      {
        v64 = 0xD000000000000016;
      }

      else
      {
        v64 = 0x20676E697373694DLL;
      }

      if (!v51)
      {
        v63 = 0xEB00000000646E45;
      }
    }

    else
    {
      v63 = 0x800000023C8A91D0;
      v64 = 0x20676E697373694DLL;
      if (v51)
      {
        v63 = 0xED00007472617453;
      }

      else
      {
        v64 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v64 = 0;
    v63 = 0;
  }

  *&v84 = v8;
  BYTE8(v84) = v102;
  *&v85 = v64;
  *(&v85 + 1) = v63;
  *&v86 = k;
  *(&v86 + 1) = v51;
  *&v87 = 0;
  BYTE8(v87) = 0;
  v88 = 0uLL;
  *&v89 = v61;
  *(&v89 + 1) = v62;
  v90 = v8;
  v91 = v102;
  v92 = v64;
  v93 = v63;
  v94 = k;
  v95 = v51;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = v61;
  v101 = v62;

  sub_23C61FD0C(&v84, v83);
  result = sub_23C61FD68(&v90);
  v65 = v87;
  *(a6 + 32) = v86;
  *(a6 + 48) = v65;
  v66 = v89;
  *(a6 + 64) = v88;
  *(a6 + 80) = v66;
  v67 = v85;
  *a6 = v84;
  *(a6 + 16) = v67;
  return result;
}

uint64_t sub_23C61B530@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v66 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v61 - v6;
  v7 = EventGraph.uei.getter();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_31;
  }

  v74 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = v7[2];
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v64 = v3;
    v65 = v7;
    v11 = 0;
    v8 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v12 = MEMORY[0x23EED7610](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v7 = v12;
      v2 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB830, 0x277D5ABF0);
      v13 = sub_23C870D44();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 ended];
        if (v15)
        {
          v16 = v15;

          sub_23C871D54();
          v3 = *(v74 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v11;
      if (v2 == i)
      {
        v17 = v74;
        v3 = v64;
        v8 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

LABEL_30:

    v7 = 0;
    goto LABEL_31;
  }

  if (!*(v17 + 16))
  {
    goto LABEL_30;
  }

LABEL_22:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x23EED7610](0, v17);
  }

  else
  {
    if (!*(v17 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v7 = sub_23C870CF4();

LABEL_31:
  v20 = sub_23C61FFE8();
  if (v20)
  {
    v21 = v20;
    v22 = sub_23C870CF4();
  }

  else
  {
    v22 = 0;
  }

  v2 = sub_23C62A1DC(v7, v22);
  v24 = v23;

  v25 = EventGraph.uei.getter();
  LODWORD(v65) = v24;
  if (v25)
  {
    v26 = v25;
    v63 = v2;
    v74 = v8;
    swift_beginAccess();
    v27 = v26[2];
    if (v27 >> 62)
    {
      goto LABEL_61;
    }

    for (j = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v61 = v26;
      v64 = v3;
      v29 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x23EED7610](v29, v27);
        }

        else
        {
          if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v26 = v30;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB830, 0x277D5ABF0);
        v32 = sub_23C870D44();
        if (v32)
        {
          v33 = v32;
          v34 = [v32 ended];
          if (v34)
          {
            v35 = v34;

            sub_23C871D54();
            v3 = *(v74 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v29;
        if (v31 == j)
        {
          v17 = v74;
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      ;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_52:

    v2 = v63;
    if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_55:
        if ((v17 & 0xC000000000000001) == 0)
        {
          if (!*(v17 + 16))
          {
            __break(1u);
            return result;
          }

          v37 = *(v17 + 32);
          goto LABEL_58;
        }

LABEL_93:
        v37 = MEMORY[0x23EED7610](0, v17);
LABEL_58:
        v38 = v37;

        goto LABEL_65;
      }
    }

    else
    {
      result = *(v17 + 16);
      if (result)
      {
        goto LABEL_55;
      }
    }
  }

  v38 = 0;
LABEL_65:
  v39 = sub_23C61FFE8();
  v40 = sub_23C620A78();
  if (v40)
  {
    v41 = v40;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v42 = sub_23C870D44();
    if (v42)
    {
      v43 = v42;
      v44 = [v42 eventMetadata];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 requestId];

        if (!v46)
        {

          goto LABEL_74;
        }

        v47 = v62;
        sub_23C871AB4();

        v48 = v47;
        v49 = sub_23C870B74();
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v48, 1, v49) != 1)
        {
          v63 = v2;
          v58 = v48;
          v46 = sub_23C870B04();
          v51 = v59;
          v60 = v58;
          v2 = v63;
          (*(v50 + 8))(v60, v49);

          goto LABEL_75;
        }

        sub_23C5FE4E4(v48);
      }
    }
  }

  v46 = 0;
LABEL_74:
  v51 = 0;
LABEL_75:
  v85 = v65 & 1;
  if (v65)
  {
    v52 = 0xD000000000000015;
    if (v38)
    {
      if (v39)
      {
        v52 = 0xD000000000000016;
      }

      else
      {
        v52 = 0x20676E697373694DLL;
      }

      v53 = 0xEB00000000646E45;
      if (v39)
      {
        v53 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v39)
      {
        v52 = 0x20676E697373694DLL;
      }

      v53 = 0xED00007472617453;
      if (!v39)
      {
        v53 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  *&v68 = v2;
  BYTE8(v68) = v85;
  *&v69 = v52;
  *(&v69 + 1) = v53;
  *&v70 = v38;
  *(&v70 + 1) = v39;
  *&v71 = 0;
  BYTE8(v71) = 0;
  *&v72 = v46;
  *(&v72 + 1) = v51;
  v73 = xmmword_27E1FB930;
  v74 = v2;
  v75 = v85;
  v76 = v52;
  v77 = v53;
  v78 = v38;
  v79 = v39;
  v80 = 0;
  v81 = 0;
  v82 = v46;
  v83 = v51;
  v84 = xmmword_27E1FB930;

  sub_23C61FD0C(&v68, &v67);
  result = sub_23C61FD68(&v74);
  v54 = v71;
  v55 = v66;
  v66[2] = v70;
  v55[3] = v54;
  v56 = v73;
  v55[4] = v72;
  v55[5] = v56;
  v57 = v69;
  *v55 = v68;
  v55[1] = v57;
  return result;
}

uint64_t sub_23C61BC44@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23C61FFE8();
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C870CF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = EventGraph.orch.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = v2;
  v10 = sub_23C62617C(v8);

  if (v10 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_7:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x23EED7610](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = sub_23C870CF4();

LABEL_14:
  v15 = sub_23C62A1DC(v6, v14);
  v17 = v16;

  v18 = sub_23C61FFE8();
  v19 = EventGraph.orch.getter();
  if (v19)
  {
    v20 = v2;
    v21 = sub_23C62617C(v19);

    if (v21 >> 62)
    {
      result = sub_23C871C34();
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x23EED7610](0, v21);
          goto LABEL_20;
        }

        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v21 + 32);
LABEL_20:
          v19 = v22;

          goto LABEL_23;
        }

LABEL_40:
        __break(1u);
        return result;
      }
    }

    v19 = 0;
  }

LABEL_23:
  v46 = v17 & 1;
  if (v17)
  {
    v23 = 0xD000000000000015;
    if (v18)
    {
      if (v19)
      {
        v23 = 0xD000000000000016;
      }

      else
      {
        v23 = 0x20676E697373694DLL;
      }

      v24 = 0xEB00000000646E45;
      if (v19)
      {
        v24 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v19)
      {
        v23 = 0x20676E697373694DLL;
      }

      v24 = 0xED00007472617453;
      if (!v19)
      {
        v24 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  *&v29 = v15;
  BYTE8(v29) = v46;
  *&v30 = v23;
  *(&v30 + 1) = v24;
  *&v31 = v18;
  *(&v31 + 1) = v19;
  *&v32 = 0;
  BYTE8(v32) = 0;
  v33 = 0uLL;
  v34 = xmmword_27E1FB940;
  v35 = v15;
  v36 = v46;
  v37 = v23;
  v38 = v24;
  v39 = v18;
  v40 = v19;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = xmmword_27E1FB940;

  sub_23C61FD0C(&v29, v28);
  result = sub_23C61FD68(&v35);
  v25 = v32;
  a1[2] = v31;
  a1[3] = v25;
  v26 = v34;
  a1[4] = v33;
  a1[5] = v26;
  v27 = v30;
  *a1 = v29;
  a1[1] = v27;
  return result;
}

uint64_t sub_23C61BF44@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = EventGraph.orch.getter();
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v1;
  v10 = sub_23C62617C(v8);

  if (v10 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x23EED7610](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_53;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v8 = sub_23C870CF4();

LABEL_10:
  v14 = sub_23C86E780();
  if (v14)
  {
    v15 = v14;
    v16 = sub_23C870CF4();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_23C62A1DC(v8, v16);
  v19 = v18;

  v20 = EventGraph.orch.getter();
  if (v20)
  {
    v21 = v20;
    v22 = v19;
    v23 = v2;
    v24 = sub_23C62617C(v21);

    if (v24 >> 62)
    {
      result = sub_23C871C34();
      v19 = v22;
      if (result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v22;
      if (result)
      {
LABEL_16:
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x23EED7610](0, v24);
          goto LABEL_19;
        }

        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v24 + 32);
LABEL_19:
          v26 = v25;

          goto LABEL_23;
        }

LABEL_53:
        __break(1u);
        return result;
      }
    }
  }

  v26 = 0;
LABEL_23:
  v27 = sub_23C86E780();
  v28 = sub_23C620A78();
  if (v28)
  {
    v29 = v28;
    v48 = v17;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v30 = sub_23C870D44();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 eventMetadata];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 requestId];

        if (v34)
        {
          v47 = v19;
          sub_23C871AB4();

          v35 = sub_23C870B74();
          v36 = v7;
          v37 = *(v35 - 8);
          if ((*(v37 + 48))(v36, 1, v35) == 1)
          {
            sub_23C5FE4E4(v36);

            v34 = 0;
            v38 = 0;
          }

          else
          {
            v46 = v35;
            v34 = sub_23C870B04();
            v38 = v39;
            (*(v37 + 8))(v36, v46);
          }

          v17 = v48;
          LOBYTE(v19) = v47;
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }

    v34 = 0;
LABEL_32:
    v38 = 0;
    v17 = v48;
    goto LABEL_36;
  }

  v34 = 0;
  v38 = 0;
LABEL_36:
  v67 = v19 & 1;
  if (v19)
  {
    v40 = 0xD000000000000015;
    if (v26)
    {
      if (v27)
      {
        v40 = 0xD000000000000016;
      }

      else
      {
        v40 = 0x20676E697373694DLL;
      }

      v41 = 0xEB00000000646E45;
      if (v27)
      {
        v41 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v27)
      {
        v40 = 0x20676E697373694DLL;
      }

      v41 = 0xED00007472617453;
      if (!v27)
      {
        v41 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  *&v50 = v17;
  BYTE8(v50) = v67;
  *&v51 = v40;
  *(&v51 + 1) = v41;
  *&v52 = v26;
  *(&v52 + 1) = v27;
  *&v53 = 0;
  BYTE8(v53) = 0;
  *&v54 = v34;
  *(&v54 + 1) = v38;
  v55 = xmmword_27E1FB950;
  v56 = v17;
  v57 = v67;
  v58 = v40;
  v59 = v41;
  v60 = v26;
  v61 = v27;
  v62 = 0;
  v63 = 0;
  v64 = v34;
  v65 = v38;
  v66 = xmmword_27E1FB950;

  sub_23C61FD0C(&v50, &v49);
  result = sub_23C61FD68(&v56);
  v42 = v53;
  a1[2] = v52;
  a1[3] = v42;
  v43 = v55;
  a1[4] = v54;
  a1[5] = v43;
  v44 = v51;
  *a1 = v50;
  a1[1] = v44;
  return result;
}

uint64_t sub_23C61C45C@<X0>(unint64_t a1@<X8>)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = v57 - v8;
  v9 = EventGraph.orch.getter();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = v1;
  v12 = sub_23C62617C(v10);

  if (v12 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EED7610](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_107:
      v27 = MEMORY[0x23EED7610](0, v12);
LABEL_46:
      v61 = v27;

      goto LABEL_50;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = sub_23C870CF4();

LABEL_11:
  v16 = EventGraph.orch.getter();
  v3 = MEMORY[0x277D84F90];
  v63 = v4;
  if (!v16)
  {
LABEL_39:
    v23 = 0;
    goto LABEL_40;
  }

  v17 = v16;
  v71 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(v17 + 16);
  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v61 = v17;
    v62 = v15;
    v60 = a1;
    v15 = 0;
    a1 = v2 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        v19 = MEMORY[0x23EED7610](v15, v2);
      }

      else
      {
        if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v19 = *(v2 + 8 * v15 + 32);
      }

      v4 = v19;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB818, 0x277D597F8);
      v20 = sub_23C870D44();
      if (v20)
      {

        sub_23C871D54();
        v3 = *(v71 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v15;
      if (v17 == i)
      {
        v12 = v71;
        a1 = v60;
        v15 = v62;
        v4 = v63;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_27:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!*(v12 + 16))
  {
LABEL_38:

    goto LABEL_39;
  }

LABEL_30:
  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_109;
  }

  if (!*(v12 + 16))
  {
    __break(1u);
    goto LABEL_111;
  }

  for (j = *(v12 + 32); ; j = MEMORY[0x23EED7610](0, v12))
  {
    v22 = j;

    v23 = sub_23C870CF4();

LABEL_40:
    v2 = sub_23C62A1DC(v15, v23);
    LODWORD(v62) = v24;

    v25 = EventGraph.orch.getter();
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v15 = v4;
    v12 = sub_23C62617C(v26);

    if (v12 >> 62)
    {
      if (!sub_23C871C34())
      {
LABEL_48:

        break;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_107;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v12 + 32);
      goto LABEL_46;
    }

    __break(1u);
LABEL_109:
    ;
  }

  v61 = 0;
LABEL_50:
  v28 = EventGraph.orch.getter();
  if (v28)
  {
    v29 = v28;
    v71 = v3;
    swift_beginAccess();
    v30 = *(v29 + 16);
    if (v30 >> 62)
    {
      goto LABEL_75;
    }

    for (k = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v57[1] = v29;
      v58 = v2;
      v60 = a1;
      a1 = 0;
      v2 = v30 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x23EED7610](a1, v30);
        }

        else
        {
          if (a1 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v32 = *(v30 + 8 * a1 + 32);
        }

        v33 = v32;
        v29 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB818, 0x277D597F8);
        v34 = sub_23C870D44();
        if (v34)
        {

          sub_23C871D54();
          v35 = *(v71 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++a1;
        if (v29 == k)
        {
          v12 = v71;
          a1 = v60;
          v2 = v58;
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_66:

    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_69:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (!*(v12 + 16))
          {
            __break(1u);
            return result;
          }

          v37 = *(v12 + 32);
          goto LABEL_72;
        }

LABEL_111:
        v37 = MEMORY[0x23EED7610](0, v12);
LABEL_72:
        v38 = v37;

        goto LABEL_79;
      }
    }

    else
    {
      result = *(v12 + 16);
      if (result)
      {
        goto LABEL_69;
      }
    }
  }

  v38 = 0;
LABEL_79:
  v39 = sub_23C620A78();
  if (!v39)
  {
LABEL_87:
    v45 = 0;
LABEL_88:
    v50 = 0;
    goto LABEL_89;
  }

  v40 = v39;
  sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
  v41 = sub_23C870D44();
  if (!v41)
  {
LABEL_86:

    goto LABEL_87;
  }

  v42 = v41;
  v43 = [v41 eventMetadata];
  if (!v43)
  {

    goto LABEL_86;
  }

  v44 = v43;
  v45 = [v43 requestId];

  if (!v45)
  {

    goto LABEL_88;
  }

  v58 = v2;
  v46 = a1;
  v47 = v59;
  sub_23C871AB4();

  v48 = sub_23C870B74();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_23C5FE4E4(v47);

    v45 = 0;
    v50 = 0;
  }

  else
  {
    v45 = sub_23C870B04();
    v50 = v56;
    (*(v49 + 8))(v47, v48);
  }

  a1 = v46;
  v2 = v58;
LABEL_89:
  v82 = v62 & 1;
  if (v62)
  {
    if (v61)
    {
      v51 = 0x800000023C8A91F0;
      if (v38)
      {
        v52 = 0xD000000000000016;
      }

      else
      {
        v52 = 0x20676E697373694DLL;
      }

      if (!v38)
      {
        v51 = 0xEB00000000646E45;
      }
    }

    else
    {
      v51 = 0x800000023C8A91D0;
      v52 = 0x20676E697373694DLL;
      if (v38)
      {
        v51 = 0xED00007472617453;
      }

      else
      {
        v52 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  *&v65 = v2;
  BYTE8(v65) = v82;
  *&v66 = v52;
  *(&v66 + 1) = v51;
  *&v67 = v61;
  *(&v67 + 1) = v38;
  *&v68 = 0;
  BYTE8(v68) = 0;
  *&v69 = v45;
  *(&v69 + 1) = v50;
  v70 = xmmword_27E1FB960;
  v71 = v2;
  v72 = v82;
  v73 = v52;
  v74 = v51;
  v75 = v61;
  v76 = v38;
  v77 = 0;
  v78 = 0;
  v79 = v45;
  v80 = v50;
  v81 = xmmword_27E1FB960;

  sub_23C61FD0C(&v65, &v64);
  result = sub_23C61FD68(&v71);
  v53 = v68;
  *(a1 + 32) = v67;
  *(a1 + 48) = v53;
  v54 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v54;
  v55 = v66;
  *a1 = v65;
  *(a1 + 16) = v55;
  return result;
}

unint64_t sub_23C61CC78@<X0>(_OWORD *a1@<X8>)
{
  v3 = EventGraph.asr.getter();
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    goto LABEL_29;
  }

  v5 = v3;
  v67 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v6 = v5[2];
  if (v6 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v57 = v5;
    v8 = 0;
    v1 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EED7610](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v5 = v9;
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v10 = sub_23C870D44();
      if (v10)
      {

        sub_23C871D54();
        v11 = *(v67 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v8;
      if (v2 == i)
      {
        v12 = v67;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_17:

  v4 = MEMORY[0x277D84F90];
  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_23C871C34();
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_28:

LABEL_29:
    v2 = 0;
    goto LABEL_30;
  }

LABEL_20:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x23EED7610](0, v12);
  }

  else
  {
    if (!*(v12 + 16))
    {
      __break(1u);
      goto LABEL_135;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v2 = sub_23C870CF4();

LABEL_30:
  v16 = EventGraph.asr.getter();
  if (!v16)
  {
    goto LABEL_61;
  }

  v67 = v4;
  swift_beginAccess();
  v17 = v16[2];
  if (v17 >> 62)
  {
    goto LABEL_58;
  }

  for (j = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
  {

    if (!j)
    {
      break;
    }

    v56 = v16;
    v57 = v2;
    v2 = 0;
    v4 = v17 & 0xC000000000000001;
    v1 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v19 = MEMORY[0x23EED7610](v2, v17);
      }

      else
      {
        if (v2 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v19 = *(v17 + 8 * v2 + 32);
      }

      v16 = v19;
      v20 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
      v21 = sub_23C870D44();
      if (v21 && (v22 = v21, v23 = [v21 isFinal], v22, (v23 & 1) != 0))
      {
        sub_23C871D54();
        v24 = *(v67 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v2;
      if (v20 == j)
      {
        v12 = v67;
        v4 = MEMORY[0x277D84F90];
        v2 = v57;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_47:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v25 = sub_23C871C34();
    if (v25)
    {
LABEL_50:
      v26 = __OFSUB__(v25, 1);
      v13 = v25 - 1;
      if (!v26)
      {
        if ((v12 & 0xC000000000000001) == 0)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v13 < *(v12 + 16))
          {
            v27 = *(v12 + 8 * v13 + 32);
LABEL_55:
            v1 = v27;

            v16 = sub_23C870CF4();

            goto LABEL_61;
          }

          __break(1u);
          goto LABEL_139;
        }

LABEL_136:
        v27 = MEMORY[0x23EED7610](v13, v12);
        goto LABEL_55;
      }

LABEL_135:
      __break(1u);
      goto LABEL_136;
    }
  }

  else
  {
    v25 = *(v12 + 16);
    if (v25)
    {
      goto LABEL_50;
    }
  }

  v16 = 0;
LABEL_61:
  v57 = sub_23C62A1DC(v2, v16);
  v56 = v28;

  v29 = EventGraph.asr.getter();
  if (!v29)
  {
    goto LABEL_89;
  }

  v67 = v4;
  swift_beginAccess();
  v30 = v29[2];
  if (v30 >> 62)
  {
    goto LABEL_86;
  }

  for (k = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
  {

    if (!k)
    {
      break;
    }

    v55 = v29;
    v1 = 0;
    v4 = v30 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x23EED7610](v1, v30);
      }

      else
      {
        if (v1 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v32 = *(v30 + 8 * v1 + 32);
      }

      v29 = v32;
      v33 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB810, 0x277D568E0);
      v34 = sub_23C870D44();
      if (v34)
      {

        sub_23C871D54();
        v35 = *(v67 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v1;
      if (v33 == k)
      {
        v12 = v67;
        v4 = MEMORY[0x277D84F90];
        v29 = v55;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_77:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
LABEL_80:
      if ((v12 & 0xC000000000000001) == 0)
      {
        if (!*(v12 + 16))
        {
          __break(1u);
          goto LABEL_141;
        }

        v37 = *(v12 + 32);
        goto LABEL_83;
      }

LABEL_139:
      v37 = MEMORY[0x23EED7610](0, v12);
LABEL_83:
      v29 = v37;

      goto LABEL_89;
    }
  }

  else
  {
    result = *(v12 + 16);
    if (result)
    {
      goto LABEL_80;
    }
  }

  v29 = 0;
LABEL_89:
  v38 = EventGraph.asr.getter();
  if (v38)
  {
    v67 = v4;
    swift_beginAccess();
    v39 = *(v38 + 16);
    if (v39 >> 62)
    {
      goto LABEL_117;
    }

    for (m = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
    {

      if (!m)
      {
        break;
      }

      v59 = v29;
      v41 = 0;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x23EED7610](v41, v39);
        }

        else
        {
          if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_116;
          }

          v42 = *(v39 + 8 * v41 + 32);
        }

        v29 = v42;
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB808, 0x277D569E8);
        v44 = sub_23C870D44();
        if (v44 && (v45 = v44, v46 = [v44 isFinal], v45, (v46 & 1) != 0))
        {
          sub_23C871D54();
          v47 = *(v67 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v41;
        if (v43 == m)
        {
          v1 = v67;
          v29 = v59;
          goto LABEL_106;
        }
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      ;
    }

    v1 = MEMORY[0x277D84F90];
LABEL_106:

    if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
    {
      v48 = sub_23C871C34();
      if (v48)
      {
LABEL_109:
        v26 = __OFSUB__(v48, 1);
        result = v48 - 1;
        if (!v26)
        {
          if ((v1 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *(v1 + 16))
            {
              v49 = *(v1 + 8 * result + 32);
LABEL_114:
              v38 = v49;

              goto LABEL_120;
            }

            __break(1u);
            return result;
          }

LABEL_142:
          v49 = MEMORY[0x23EED7610](result, v1);
          goto LABEL_114;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    else
    {
      v48 = *(v1 + 16);
      if (v48)
      {
        goto LABEL_109;
      }
    }

    v38 = 0;
  }

LABEL_120:
  v78 = v56 & 1;
  if (v56)
  {
    if (v29)
    {
      v50 = 0x800000023C8A91F0;
      if (v38)
      {
        v51 = 0xD000000000000016;
      }

      else
      {
        v51 = 0x20676E697373694DLL;
      }

      if (!v38)
      {
        v50 = 0xEB00000000646E45;
      }
    }

    else
    {
      v50 = 0x800000023C8A91D0;
      v51 = 0x20676E697373694DLL;
      if (v38)
      {
        v50 = 0xED00007472617453;
      }

      else
      {
        v51 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  *&v61 = v57;
  BYTE8(v61) = v78;
  *&v62 = v51;
  *(&v62 + 1) = v50;
  *&v63 = v29;
  *(&v63 + 1) = v38;
  *&v64 = 0;
  BYTE8(v64) = 0;
  v65 = 0uLL;
  v66 = xmmword_27E1FB980;
  v67 = v57;
  v68 = v78;
  v69 = v51;
  v70 = v50;
  v71 = v29;
  v72 = v38;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = xmmword_27E1FB980;

  sub_23C61FD0C(&v61, v60);
  result = sub_23C61FD68(&v67);
  v52 = v64;
  a1[2] = v63;
  a1[3] = v52;
  v53 = v66;
  a1[4] = v65;
  a1[5] = v53;
  v54 = v62;
  *a1 = v61;
  a1[1] = v54;
  return result;
}

uint64_t sub_23C61D598@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, SEL *a3@<X2>, uint64_t (*a4)(void)@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, _OWORD *a9@<X8>)
{
  v11 = EventGraph.uei.getter();
  v12 = MEMORY[0x277D84F90];
  v86 = a4;
  if (!v11)
  {
    goto LABEL_31;
  }

  v99 = MEMORY[0x277D84F90];
  v13 = v11;
  swift_beginAccess();
  v82 = v13;
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    a4 = (v14 & 0xC000000000000001);
    while (1)
    {
      if (a4)
      {
        v16 = MEMORY[0x23EED7610](v12, v14);
      }

      else
      {
        if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v19 = sub_23C870D44();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 *a3];
        if (v21)
        {
          v22 = v21;

          sub_23C871D54();
          v23 = *(v99 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v12;
      if (v18 == i)
      {
        v24 = v99;
        a4 = v86;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_19:

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!*(v24 + 16))
  {
LABEL_30:

LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x23EED7610](0, v24);
  }

  else
  {
    if (!*(v24 + 16))
    {
      __break(1u);
      goto LABEL_140;
    }

    v25 = *(v24 + 32);
  }

  v26 = v25;

  v27 = sub_23C870CF4();

LABEL_32:
  v28 = a4();
  if (v28)
  {
    v99 = v12;
    v29 = v28;
    swift_beginAccess();
    v81 = v29;
    v30 = *(v29 + 16);
    if (v30 >> 62)
    {
      goto LABEL_59;
    }

    for (j = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      v82 = v27;
      if (!j)
      {
        break;
      }

      v27 = 0;
      a4 = (v30 & 0xC000000000000001);
      while (1)
      {
        if (a4)
        {
          v32 = MEMORY[0x23EED7610](v27, v30);
        }

        else
        {
          if (v27 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v32 = *(v30 + 8 * v27 + 32);
        }

        v33 = v32;
        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a5, a6);
        v35 = sub_23C870D44();
        if (v35)
        {
          v36 = v35;
          v37 = [v35 ended];
          if (v37)
          {
            v38 = v37;

            sub_23C871D54();
            v39 = *(v99 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v27;
        if (v34 == j)
        {
          v24 = v99;
          a4 = v86;
          v27 = v82;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_50:

    v12 = MEMORY[0x277D84F90];
    if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_53:
        if ((v24 & 0xC000000000000001) == 0)
        {
          if (!*(v24 + 16))
          {
            __break(1u);
            goto LABEL_142;
          }

          v40 = *(v24 + 32);
          goto LABEL_56;
        }

LABEL_140:
        v40 = MEMORY[0x23EED7610](0, v24);
LABEL_56:
        v41 = v40;

        v42 = sub_23C870CF4();

        v27 = v82;
        goto LABEL_63;
      }
    }

    else if (*(v24 + 16))
    {
      goto LABEL_53;
    }
  }

  v42 = 0;
LABEL_63:
  v82 = sub_23C62A1DC(v27, v42);
  v81 = v43;

  v44 = EventGraph.uei.getter();
  if (v44)
  {
    v45 = v44;
    v99 = v12;
    swift_beginAccess();
    v46 = *(v45 + 16);
    if (v46 >> 62)
    {
      goto LABEL_90;
    }

    for (k = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v48 = 0;
      a4 = (v46 & 0xC000000000000001);
      while (1)
      {
        if (a4)
        {
          v49 = MEMORY[0x23EED7610](v48, v46);
        }

        else
        {
          if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v49 = *(v46 + 8 * v48 + 32);
        }

        v50 = v49;
        v51 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v52 = sub_23C870D44();
        if (v52)
        {
          v53 = v52;
          v54 = [v52 *a3];
          if (v54)
          {
            v55 = v54;

            sub_23C871D54();
            v56 = *(v99 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v48;
        if (v51 == k)
        {
          v24 = v99;
          a4 = v86;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      ;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_81:

    v12 = MEMORY[0x277D84F90];
    if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_84:
        if ((v24 & 0xC000000000000001) == 0)
        {
          if (!*(v24 + 16))
          {
            __break(1u);
            goto LABEL_144;
          }

          v57 = *(v24 + 32);
          goto LABEL_87;
        }

LABEL_142:
        v57 = MEMORY[0x23EED7610](0, v24);
LABEL_87:
        a1 = v57;

        goto LABEL_94;
      }
    }

    else if (*(v24 + 16))
    {
      goto LABEL_84;
    }
  }

  a1 = 0;
LABEL_94:
  v58 = (a4)(v44);
  if (!v58)
  {
LABEL_124:
    v73 = 0;
    goto LABEL_125;
  }

  v59 = v58;
  v99 = v12;
  swift_beginAccess();
  v60 = *(v59 + 16);
  if (v60 >> 62)
  {
    goto LABEL_121;
  }

  for (m = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
  {

    if (!m)
    {
      break;
    }

    v91 = a1;
    v62 = 0;
    a1 = &off_278BC1000;
    while (1)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x23EED7610](v62, v60);
      }

      else
      {
        if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v63 = *(v60 + 8 * v62 + 32);
      }

      v64 = v63;
      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a5, a6);
      v66 = sub_23C870D44();
      if (v66)
      {
        v67 = v66;
        v68 = [v66 ended];
        if (v68)
        {
          v69 = v68;

          sub_23C871D54();
          v70 = *(v99 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v62;
      if (v65 == m)
      {
        v24 = v99;
        a1 = v91;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_112:

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    result = *(v24 + 16);
    if (result)
    {
      goto LABEL_115;
    }

    goto LABEL_123;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_115:
  if ((v24 & 0xC000000000000001) == 0)
  {
    if (!*(v24 + 16))
    {
      __break(1u);
      return result;
    }

    v72 = *(v24 + 32);
    goto LABEL_118;
  }

LABEL_144:
  v72 = MEMORY[0x23EED7610](0, v24);
LABEL_118:
  v73 = v72;

LABEL_125:
  v74 = *a7;
  v75 = *a8;
  v111 = v81 & 1;
  if (v81)
  {
    if (a1)
    {
      v76 = 0x800000023C8A91F0;
      if (v73)
      {
        v77 = 0xD000000000000016;
      }

      else
      {
        v77 = 0x20676E697373694DLL;
      }

      if (!v73)
      {
        v76 = 0xEB00000000646E45;
      }
    }

    else
    {
      v76 = 0x800000023C8A91D0;
      v77 = 0x20676E697373694DLL;
      if (v73)
      {
        v76 = 0xED00007472617453;
      }

      else
      {
        v77 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  *&v93 = v82;
  BYTE8(v93) = v111;
  *&v94 = v77;
  *(&v94 + 1) = v76;
  *&v95 = a1;
  *(&v95 + 1) = v73;
  *&v96 = 0;
  BYTE8(v96) = 0;
  v97 = 0uLL;
  *&v98 = v74;
  *(&v98 + 1) = v75;
  v99 = v82;
  v100 = v111;
  v101 = v77;
  v102 = v76;
  v103 = a1;
  v104 = v73;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = v74;
  v110 = v75;

  sub_23C61FD0C(&v93, v92);
  result = sub_23C61FD68(&v99);
  v78 = v96;
  a9[2] = v95;
  a9[3] = v78;
  v79 = v98;
  a9[4] = v97;
  a9[5] = v79;
  v80 = v94;
  *a9 = v93;
  a9[1] = v80;
  return result;
}