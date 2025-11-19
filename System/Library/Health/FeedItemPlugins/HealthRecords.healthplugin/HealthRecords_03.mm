uint64_t sub_29D4E39CC()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4E4304(v0 + OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D4E3ABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4E3B38()
{
  if (!qword_2A1A19740)
  {
    sub_29D4E3BCC();
    sub_29D4E3D3C(&qword_2A1A19758, sub_29D4E3BCC);
    v0 = sub_29D5B3AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19740);
    }
  }
}

void sub_29D4E3BCC()
{
  if (!qword_2A1A19750)
  {
    sub_29D4E3C34();
    v0 = sub_29D5B3A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19750);
    }
  }
}

void sub_29D4E3C34()
{
  if (!qword_2A1A196E0)
  {
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A196E0);
    }
  }
}

uint64_t sub_29D4E3C84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4E1638(v8, v9, v1 + v4, v7, v10, v11, a1);
}

uint64_t sub_29D4E3D3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4E3D84()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D4E3E7C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v7);
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4E17F8(a1, a2, v9, v10, v2 + v6, v11, v12, v13);
}

uint64_t sub_29D4E3F44(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void sub_29D4E3F84(uint64_t a1)
{
  v3 = *(sub_29D5B148C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_29D4E19E4(a1, v8, v1 + v4, v9, v10, v11, v12, v13);
}

void sub_29D4E404C()
{
  if (!qword_2A1A17358)
  {
    sub_29D5B1D6C();
    sub_29D4E4404(255, &qword_2A1A196C8, MEMORY[0x29EDC4108], MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A17358);
    }
  }
}

void sub_29D4E40F0()
{
  if (!qword_2A1A161B0)
  {
    sub_29D5B23FC();
    sub_29D4B3AF4();
    v0 = sub_29D5B4DAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A161B0);
    }
  }
}

uint64_t sub_29D4E4160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4E41C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D4E4214(uint64_t a1)
{
  sub_29D4E4404(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4E42A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordKindFeedItemData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4E4304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D4E43A4()
{
  result = qword_2A1A19650;
  if (!qword_2A1A19650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A19650);
  }

  return result;
}

void sub_29D4E4404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D4E447C()
{
  sub_29D4E4404(319, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  if (v0 <= 0x3F)
  {
    sub_29D5B0E6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D4E4530()
{
  result = qword_2A17A4398;
  if (!qword_2A17A4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4398);
  }

  return result;
}

uint64_t sub_29D4E4584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D4E4404(255, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4E45F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4E4530();
    v7 = a3(a1, &type metadata for RecordKindGeneratorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RecordKindGeneratorData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecordKindGeneratorData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D4E47BC()
{
  result = qword_2A17A43A8;
  if (!qword_2A17A43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A43A8);
  }

  return result;
}

unint64_t sub_29D4E4814()
{
  result = qword_2A17A43B0;
  if (!qword_2A17A43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A43B0);
  }

  return result;
}

unint64_t sub_29D4E486C()
{
  result = qword_2A17A43B8;
  if (!qword_2A17A43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A43B8);
  }

  return result;
}

uint64_t sub_29D4E48C0(uint64_t a1)
{
  v47 = a1;
  v48 = sub_29D5B0F8C();
  v1 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B0D0C();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E4F18();
  v7 = sub_29D5B0F7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D5B8060;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x29EDB9CB8], v7);
  v13(v12 + v9, *MEMORY[0x29EDB9CC8], v7);
  v13(v12 + 2 * v9, *MEMORY[0x29EDB9CE0], v7);
  v13(v12 + 3 * v9, *MEMORY[0x29EDB9CE8], v7);
  sub_29D50BA94(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = [objc_opt_self() currentCalendar];
  sub_29D5B0F4C();

  sub_29D5B0F2C();

  (*(v1 + 8))(v3, v48);
  v52 = 0;
  v53 = 0xE000000000000000;
  v15 = sub_29D5B0CEC();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v51 = v17;
  v18 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v18);

  MEMORY[0x29ED5E510](115, 0xE100000000000000);
  v20 = v52;
  v19 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  v21 = sub_29D5B0CDC();
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v51 = v23;
  v24 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v24);

  MEMORY[0x29ED5E510](109, 0xE100000000000000);

  MEMORY[0x29ED5E510](32, 0xE100000000000000);

  v48 = v20;
  MEMORY[0x29ED5E510](v20, v19);

  v26 = v52;
  v25 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  v27 = sub_29D5B0CCC();
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v51 = v29;
  v30 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v30);

  MEMORY[0x29ED5E510](104, 0xE100000000000000);

  MEMORY[0x29ED5E510](32, 0xE100000000000000);

  MEMORY[0x29ED5E510](v26, v25);

  v31 = v52;
  v32 = v53;
  v52 = 0;
  v53 = 0xE000000000000000;
  v33 = sub_29D5B0CBC();
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v51 = v35;
  v36 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v36);

  MEMORY[0x29ED5E510](100, 0xE100000000000000);

  MEMORY[0x29ED5E510](32, 0xE100000000000000);

  MEMORY[0x29ED5E510](v31, v32);

  v37 = v52;
  v38 = sub_29D5B0CBC();
  if ((v39 & 1) != 0 || v38 < 1)
  {

    v40 = sub_29D5B0CCC();
    if ((v41 & 1) != 0 || v40 < 1)
    {

      v42 = sub_29D5B0CDC();
      if ((v43 & 1) != 0 || v42 < 1)
      {

        v44 = sub_29D5B0CEC();
        if ((v45 & 1) != 0 || v44 < 1)
        {

          (*(v49 + 8))(v6, v50);
          return 7549244;
        }

        else
        {
          (*(v49 + 8))(v6, v50);
          return v48;
        }
      }

      else
      {
        (*(v49 + 8))(v6, v50);

        return v26;
      }
    }

    else
    {
      (*(v49 + 8))(v6, v50);

      return v31;
    }
  }

  else
  {
    (*(v49 + 8))(v6, v50);
  }

  return v37;
}

void sub_29D4E4F18()
{
  if (!qword_2A1A16220)
  {
    sub_29D5B0F7C();
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16220);
    }
  }
}

uint64_t type metadata accessor for CategoryFeedItemViewController()
{
  result = qword_2A1A1A438;
  if (!qword_2A1A1A438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D4E5014(char a1)
{
  v3 = sub_29D5B1BCC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CategoryFeedItemViewController();
  v14.receiver = v1;
  v14.super_class = v10;
  result = objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1 & 1);
  v12 = *&v1[qword_2A1A1A450];
  if (v12)
  {
    (*(v4 + 16))(v7, v12 + *(*v12 + 88), v3);
    (*(v4 + 32))(v9, v7, v3);
    sub_29D5B1E5C();
    v13 = sub_29D5B1E4C();
    sub_29D5B1E3C();

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

void sub_29D4E51A4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D4E5014(a3);
}

id sub_29D4E51F8()
{
  sub_29D4E7A74(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v14 - v2;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v5 = *&v0[qword_2A1A1A450];
    if (v5)
    {
      sub_29D4E7A74(0, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
      v7 = v6;
      v8 = sub_29D4E793C();
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v14[2] = 0;
      v14[3] = 0;
    }

    v14[1] = v5;
    v14[4] = v7;
    v14[5] = v8;

    sub_29D5B2F8C();
    v9 = sub_29D5B410C();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_29D5B40EC();
    v10 = v0;
    v11 = sub_29D5B40DC();
    v12 = swift_allocObject();
    v13 = MEMORY[0x29EDCA390];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_29D57657C(0, 0, v3, &unk_29D5B80F0, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4E53DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_29D5B40EC();
  v4[4] = sub_29D5B40DC();
  v6 = sub_29D5B40CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2A1C73D48](sub_29D4E5478, v6, v5);
}

uint64_t sub_29D4E5478()
{
  v1 = v0[2];
  v2 = qword_2A1A1A450;
  v0[7] = qword_2A1A1A450;
  v3 = *(v1 + v2);
  v0[8] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_29D4E5580;

    return sub_29D4E6BA4();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D4E5698, 0, 0);
  }
}

uint64_t sub_29D4E5580()
{

  return MEMORY[0x2A1C73D48](sub_29D4E5698, 0, 0);
}

uint64_t sub_29D4E5698()
{
  *(v0 + 80) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D4E5724, v2, v1);
}

uint64_t sub_29D4E5724()
{
  v1 = v0[7];
  v2 = v0[2];

  if (*(v2 + v1))
  {
    sub_29D4E7A74(0, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
    sub_29D4E793C();
  }

  sub_29D5B2F8C();
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2A1C73D48](sub_29D4E580C, v3, v4);
}

uint64_t sub_29D4E580C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_29D4E586C()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1A2C();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B1BCC();
  v33 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v29 - v13;
  sub_29D5B2FAC();
  v15 = v35;
  if (v35)
  {
    v29[2] = v5;
    v30 = v9;
    v29[0] = v3;
    v29[1] = v2;
    v16 = sub_29D499EC0(v34, v35);
    v17 = v0;
    v18 = *(v15 - 8);
    MEMORY[0x2A1C7C4A8](v16);
    v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    sub_29D4E7E04(v34, sub_29D4E79C4);
    v21 = sub_29D5B317C();
    v23 = v22;
    (*(v18 + 8))(v20, v15);
    v1 = v17;
    if (v23 >> 60 != 15)
    {
      sub_29D4E7EF8(&qword_2A1A19478, MEMORY[0x29EDC3FB8]);
      v24 = v30;
      sub_29D5B0BBC();
      v25 = v33;
      (*(v33 + 16))(v12, v14, v24);
      (*(v31 + 104))(v8, *MEMORY[0x29EDC3EC8], v32);
      sub_29D5B1F0C();
      v26 = sub_29D5B1EFC();
      v27 = sub_29D52BBBC(v12, v8, v26);

      sub_29D4A96BC(v21, v23);
      (*(v25 + 8))(v14, v24);
      *(v1 + qword_2A1A1A450) = v27;

      sub_29D4E51F8();
    }
  }

  else
  {
    sub_29D4E7E04(v34, sub_29D4E79C4);
  }

  *(v1 + qword_2A1A1A450) = 0;

  return sub_29D4E51F8();
}

void sub_29D4E5EB4(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for CategoryFeedItemViewController();
  v4 = v6.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, v5);
  if (*&v4[qword_2A1A1A450])
  {
    sub_29D4E7A74(0, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
    sub_29D4E793C();
  }

  sub_29D5B2F8C();
}

uint64_t sub_29D4E5F9C(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v59 - v8;
  v10 = sub_29D5B1BCC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v59 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v59 - v18;
  v20 = *&v2[qword_2A1A1A450];
  if (v20)
  {
    v64 = v4;
    (*(v11 + 16))(v17, v20 + *(*v20 + 88), v10);
    (*(v11 + 32))(v19, v17, v10);
    (*(v11 + 104))(v14, *MEMORY[0x29EDC3FA0], v10);
    sub_29D4E7EF8(&qword_2A1A17360, MEMORY[0x29EDC3FB8]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    v63 = v9;
    if (v68[0] == v66[0] && v68[1] == v66[1])
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_29D5B4C7C();
    }

    v33 = *(v11 + 8);
    v33(v14, v10);

    if (v21)
    {
      if (qword_2A1A19618 != -1)
      {
        swift_once();
      }

      v34 = qword_2A1A1A7C8;
      v35 = objc_allocWithZone(sub_29D5B2AEC());
      v36 = v34;
      v37 = sub_29D5B2ADC();
      sub_29D48F51C(0, &qword_2A17A43D8);
      v38 = sub_29D5B430C();
      [v38 addOperation_];

      return (v33)(v19, v10);
    }

    else
    {
      v62 = v33;
      v60 = v3;
      sub_29D5B21EC();
      v39 = sub_29D5B21DC();
      sub_29D5B1CBC();
      v40 = sub_29D5B1C8C();
      v61 = v2;
      result = sub_29D5B2FAC();
      v41 = v69;
      if (v69)
      {
        v42 = sub_29D499EC0(v68, v69);
        v43 = *(v41 - 8);
        MEMORY[0x2A1C7C4A8](v42);
        v45 = &v59 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v43 + 16))(v45);
        v46 = sub_29D5B314C();
        (*(v43 + 8))(v45, v41);
        v47 = sub_29D5B1C9C();

        sub_29D48F668(v68);
        v48 = sub_29D5B21BC();

        if (v48)
        {
          sub_29D4E7F40(v65, v68, sub_29D4A63E4);
          v49 = v69;
          if (v69)
          {
            v50 = sub_29D499EC0(v68, v69);
            v51 = *(v49 - 8);
            MEMORY[0x2A1C7C4A8](v50);
            v53 = &v59 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v51 + 16))(v53);
            v54 = sub_29D5B4C6C();
            (*(v51 + 8))(v53, v49);
            sub_29D48F668(v68);
          }

          else
          {
            v54 = 0;
          }

          [v61 showViewController:v48 sender:v54];

          swift_unknownObjectRelease();
        }

        else
        {
          v55 = v63;
          sub_29D5B36DC();
          v56 = sub_29D5B370C();
          v57 = sub_29D5B427C();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_29D48C000, v56, v57, "Unable to create category view controller.", v58, 2u);
            MEMORY[0x29ED5FB80](v58, -1, -1);
          }

          (*(v64 + 8))(v55, v60);
        }

        return v62(v19, v10);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_29D5B36DC();
    v22 = v2;
    v23 = sub_29D5B370C();
    v24 = sub_29D5B427C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v67 = v26;
      *v25 = 136446210;
      sub_29D5B2FAC();
      sub_29D4E7F40(v68, v66, sub_29D4E79C4);
      sub_29D4E79C4();
      sub_29D5B4CAC();
      v27 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v28 = sub_29D5B3E9C();
      v30 = v29;
      sub_29D4E7E04(v68, sub_29D4E79C4);
      v31 = sub_29D501890(v28, v30, &v67);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_29D48C000, v23, v24, "Unable to present category room: %{public}s", v25, 0xCu);
      sub_29D48F668(v26);
      MEMORY[0x29ED5FB80](v26, -1, -1);
      MEMORY[0x29ED5FB80](v25, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_29D4E6804(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_29D4E5F9C(v7);

  return sub_29D4E7E04(v7, sub_29D4A63E4);
}

id sub_29D4E6888(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *&a1[qword_2A1A1A450] = 0;
  v8 = qword_2A1A1A448;
  sub_29D5B0BDC();
  swift_allocObject();
  v9 = a4;
  *&a1[v8] = sub_29D5B0BCC();
  if (v7)
  {
    v10 = sub_29D5B3E1C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = a1;
  v13.super_class = type metadata accessor for CategoryFeedItemViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, v9);

  return v11;
}

id sub_29D4E6984(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A1A1A450] = 0;
  v5 = qword_2A1A1A448;
  sub_29D5B0BDC();
  swift_allocObject();
  v6 = a3;
  *&a1[v5] = sub_29D5B0BCC();
  v9.receiver = a1;
  v9.super_class = type metadata accessor for CategoryFeedItemViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_29D4E6A38()
{
}

id sub_29D4E6A78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4E6AB0()
{
}

uint64_t sub_29D4E6B28@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29D5B2F7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D4E6BA4()
{
  v1[11] = v0;
  sub_29D4E7C80();
  v1[12] = v2;
  v1[13] = swift_task_alloc();
  v3 = sub_29D5B1A2C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = MEMORY[0x29EDC9C68];
  sub_29D4E7A74(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = sub_29D5B19EC();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_29D4E7A74(0, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8], v4);
  v1[25] = swift_task_alloc();
  v6 = sub_29D5B1BCC();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D4E6E28, 0, 0);
}

uint64_t sub_29D4E6E28()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[11];
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_29D4E7D84(v4 + v5, v3, &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29D4E7D14(v0[25], &qword_2A1A1A3A8, MEMORY[0x29EDC3FB8]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[14];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    (*(v9 + 104))(v8, *MEMORY[0x29EDC3EC8], v10);
    v15 = (*MEMORY[0x29EDC40F8] + MEMORY[0x29EDC40F8]);
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_29D4E70A4;
    v12 = v0[28];
    v13 = v0[20];
    v14 = v0[16];

    return v15(v13, v12, v14);
  }
}

uint64_t sub_29D4E70A4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2A1C73D48](sub_29D4E71FC, 0, 0);
}

uint64_t sub_29D4E71FC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_29D4E7D14(v3, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    goto LABEL_10;
  }

  v5 = v0[24];
  v6 = v0[19];
  v7 = v0[13];
  v8 = v0[11];
  v43 = *(v2 + 32);
  v44 = v0[12];
  v43(v5, v3, v1);
  v9 = v2;
  v10 = *(*v8 + 112);
  swift_beginAccess();
  (*(v9 + 16))(v6, v5, v1);
  v41 = *(v9 + 56);
  v41(v6, 0, 1, v1);
  v11 = *(v44 + 48);
  v12 = MEMORY[0x29EDC3EB0];
  v45 = v8;
  v42 = v10;
  v13 = v8 + v10;
  v14 = v11;
  sub_29D4E7D84(v13, v7, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  sub_29D4E7D84(v6, v7 + v14, &unk_2A1A19488, v12);
  if (v4(v7, 1, v1) == 1)
  {
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[26];
    v18 = v0[21];
    sub_29D4E7D14(v0[19], &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    (*(v16 + 8))(v15, v17);
    if (v4(v7 + v14, 1, v18) == 1)
    {
      v19 = v0[13];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_29D4E7D14(v19, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v20 = v0[21];
  sub_29D4E7D84(v0[13], v0[18], &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  v21 = v4(v7 + v14, 1, v20);
  v23 = v0[27];
  v22 = v0[28];
  v24 = v0[26];
  if (v21 == 1)
  {
    v25 = v0[21];
    v26 = v0[22];
    v27 = v0[18];
    sub_29D4E7D14(v0[19], &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
    (*(v23 + 8))(v22, v24);
    (*(v26 + 8))(v27, v25);
LABEL_8:
    sub_29D4E7E04(v0[13], sub_29D4E7C80);
LABEL_9:
    v28 = v0[21];
    v29 = v0[17];
    v43(v29, v0[24], v28);
    v41(v29, 0, 1, v28);
    swift_beginAccess();
    sub_29D4E7E64(v29, v45 + v42);
    swift_endAccess();
    goto LABEL_10;
  }

  v32 = v0[22];
  v33 = v0[23];
  v34 = v0[21];
  v38 = v0[18];
  v39 = v0[19];
  v40 = v0[13];
  v43(v33, v7 + v14, v34);
  sub_29D4E7EF8(&qword_2A17A43D0, MEMORY[0x29EDC3EB0]);
  v35 = sub_29D5B3E0C();
  v36 = *(v32 + 8);
  v36(v33, v34);
  v37 = MEMORY[0x29EDC3EB0];
  sub_29D4E7D14(v39, &unk_2A1A19488, MEMORY[0x29EDC3EB0]);
  (*(v23 + 8))(v22, v24);
  v36(v38, v34);
  sub_29D4E7D14(v40, &unk_2A1A19488, v37);
  if ((v35 & 1) == 0)
  {
    goto LABEL_9;
  }

  v36(v0[24], v0[21]);
LABEL_10:

  v30 = v0[1];

  return v30();
}

uint64_t sub_29D4E7784(void *a1)
{
  v3 = sub_29D5B1BCC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v14 - v8;
  v14[3] = sub_29D48F51C(0, &qword_2A17A43C0);
  v14[0] = a1;
  v10 = a1;
  sub_29D4E5F9C(v14);
  result = sub_29D4E7E04(v14, sub_29D4A63E4);
  v12 = *(v1 + qword_2A1A1A450);
  if (v12)
  {
    (*(v4 + 16))(v7, v12 + *(*v12 + 88), v3);
    (*(v4 + 32))(v9, v7, v3);
    sub_29D5B1E5C();
    v13 = sub_29D5B1E4C();
    sub_29D5B1E3C();

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

unint64_t sub_29D4E793C()
{
  result = qword_2A1A194C0[0];
  if (!qword_2A1A194C0[0])
  {
    sub_29D4E7A74(255, &qword_2A1A194B8, MEMORY[0x29EDC3FB8], type metadata accessor for BrowseItem);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A194C0);
  }

  return result;
}

void sub_29D4E79C4()
{
  if (!qword_2A1A19460)
  {
    sub_29D4A02FC(255, &qword_2A1A19470);
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19460);
    }
  }
}

unint64_t sub_29D4E7A2C()
{
  result = qword_2A17A43C8;
  if (!qword_2A17A43C8)
  {
    sub_29D5B1BCC();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A43C8);
  }

  return result;
}

void sub_29D4E7A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D4E7AD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D4E7B8C;

  return sub_29D4E53DC(a1, v4, v5, v6);
}

uint64_t sub_29D4E7B8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_29D4E7C80()
{
  if (!qword_2A1A19480)
  {
    sub_29D4E7A74(255, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A19480);
    }
  }
}

uint64_t sub_29D4E7D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4E7A74(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4E7D84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D4E7A74(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D4E7E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4E7E64(uint64_t a1, uint64_t a2)
{
  sub_29D4E7A74(0, &unk_2A1A19488, MEMORY[0x29EDC3EB0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4E7EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4E7F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4E7FA8(uint64_t result)
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
  for (i = (v4 + 63) >> 6; v6; result = sub_29D4B4660(v17))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 88 * (v9 | (v8 << 6));
    v11 = *(v10 + 16);
    v19[0] = *v10;
    v19[1] = v11;
    v13 = *(v10 + 48);
    v12 = *(v10 + 64);
    v14 = *(v10 + 32);
    v20 = *(v10 + 80);
    v19[3] = v13;
    v19[4] = v12;
    v19[2] = v14;
    sub_29D4B4604(v19, v17);
    sub_29D59B0A0(v15, v19);
    v17[3] = v15[3];
    v17[4] = v15[4];
    v18 = v16;
    v17[0] = v15[0];
    v17[1] = v15[1];
    v17[2] = v15[2];
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4E80E8(uint64_t result)
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

      sub_29D59AD10(&v13, v11, v12);

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

uint64_t sub_29D4E81EC(uint64_t a1, void *a2)
{
  sub_29D4F2FB0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3050();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D4E84CC(a1, a2);
  v17[0] = sub_29D4E8F04(a1, a2);
  v17[1] = v14;
  sub_29D4B2D8C();
  sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C);
  sub_29D5B3B6C();
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D4F172C(&qword_2A1A172C0, sub_29D4F2FB0);
  sub_29D5B3B7C();
  (*(v6 + 8))(v8, v5);
  sub_29D4F172C(&qword_2A1A16EC0, sub_29D4F3050);
  v15 = sub_29D5B3B1C();

  (*(v11 + 8))(v13, v10);
  return v15;
}

uint64_t sub_29D4E84CC(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v68 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v69 = v4;
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29D5B104C();
  v65 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F35D0(0);
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F35F0();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v74 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F36DC();
  v82 = v11;
  v80 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v78 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F37AC(0);
  v14 = v13;
  v81 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D5B0EDC();
  v62 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B1AAC();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B140C();
  (*(v20 + 104))(v22, *MEMORY[0x29EDC3F38], v19);
  v70 = a1;
  v23 = sub_29D5B143C();
  v24 = sub_29D5B10AC();
  v25 = sub_29D5B1A8C();
  v63 = v26;
  if (v24)
  {
    v83 = 0x656C69666F72505BLL;
    v84 = 0xE90000000000003ALL;
    v61 = v25;
    v24 = v24;
    v27 = [v24 identifier];
    sub_29D5B0EBC();

    v28 = sub_29D5B0E8C();
    v29 = v16;
    v30 = v23;
    v31 = v14;
    v32 = v28;
    v60 = v22;
    v33 = v20;
    v34 = v19;
    v35 = v5;
    v37 = v36;
    (*(v62 + 8))(v18, v29);
    v38 = v32;
    v14 = v31;
    v23 = v30;
    MEMORY[0x29ED5E510](v38, v37);
    v5 = v35;
    v19 = v34;
    v20 = v33;
    v22 = v60;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v25 = v61;
    v39 = v83;
    v40 = v84;
  }

  else
  {
    v40 = 0x800000029D5BBCB0;
    v39 = 0xD000000000000013;
  }

  v83 = v39;
  v84 = v40;
  MEMORY[0x29ED5E510](v25, v63);

  v41 = v83;
  v42 = v84;
  (*(v20 + 8))(v22, v19);
  type metadata accessor for FeedItemContextChangeGenerator();
  v43 = swift_allocObject();
  sub_29D497868(v85, v43 + 16);
  *(v43 + 56) = v41;
  *(v43 + 64) = v42;
  v44 = v65;
  v45 = v64;
  v46 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x29EDC3778], v66);
  v47 = sub_29D537A0C(v45);
  (*(v44 + 8))(v45, v46);
  *&v85[0] = v47;
  sub_29D4F3A64(v70, v5, type metadata accessor for HealthRecordsGeneratorContext);
  v48 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v49 = swift_allocObject();
  sub_29D4F45C0(v5, v49 + v48, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D4F31D4();
  sub_29D4B3AC0(0);
  sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4);
  v50 = v71;
  sub_29D5B3BCC();

  sub_29D4B3A8C(0);
  sub_29D4F172C(&qword_2A1A16C58, sub_29D4F35D0);
  sub_29D4F172C(&qword_2A1A167C0, sub_29D4B3A8C);
  v51 = v73;
  v52 = v74;
  sub_29D5B3B8C();
  (*(v72 + 8))(v50, v51);
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D4F172C(&qword_2A1A16DE8, sub_29D4F35F0);

  v53 = v77;
  v54 = v78;
  sub_29D5B3BCC();

  (*(v76 + 8))(v52, v53);
  *(swift_allocObject() + 16) = v75;
  sub_29D4B2D8C();
  sub_29D4F172C(&qword_2A1A16BD8, sub_29D4F36DC);
  sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C);
  v55 = v79;
  v56 = v82;
  sub_29D5B3B8C();

  (*(v80 + 8))(v54, v56);
  sub_29D4F172C(&qword_2A1A16D18, sub_29D4F37AC);
  v57 = sub_29D5B3B1C();

  (*(v81 + 8))(v55, v14);
  return v57;
}

uint64_t sub_29D4E8F04(uint64_t a1, void *a2)
{
  v50[1] = a2;
  sub_29D4B37EC();
  v3 = v2;
  v61 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B371C();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B104C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3120(0, &qword_2A1A16F18, MEMORY[0x29EDB8900]);
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v50 - v14;
  sub_29D4F32D0();
  v55 = v16;
  v53 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F33A0(0);
  v56 = *(v19 - 8);
  v57 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v54 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D5B143C();
  v22 = v21;
  if (v21)
  {
    v50[0] = v21;
    if ([v50[0] type] == 1)
    {
      sub_29D5B140C();
      v23 = sub_29D5B3ECC();
      v25 = v24;
      type metadata accessor for FeedItemContextChangeGenerator();
      v26 = swift_allocObject();
      sub_29D497868(v62, v26 + 16);
      *(v26 + 56) = v23;
      *(v26 + 64) = v25;
      (*(v10 + 104))(v12, *MEMORY[0x29EDC3770], v9);
      v27 = sub_29D537A0C(v12);
      (*(v10 + 8))(v12, v9);
      *&v62[0] = v27;
      v28 = swift_allocObject();
      v29 = v58;
      *(v28 + 16) = v22;
      *(v28 + 24) = v29;
      sub_29D4F31D4();
      sub_29D4B3AC0(0);
      v61 = MEMORY[0x29EDB8A00];
      sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4);
      sub_29D5B3B7C();

      sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);

      v30 = v52;
      sub_29D5B383C();

      (*(v51 + 8))(v15, v30);
      *(swift_allocObject() + 16) = v29;
      sub_29D4B2D8C();
      sub_29D4F172C(&qword_2A1A16C48, sub_29D4F32D0);
      sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C);
      v32 = v54;
      v31 = v55;
      sub_29D5B3B8C();

      (*(v53 + 8))(v18, v31);
      sub_29D4F172C(&qword_2A1A16DD8, sub_29D4F33A0);
      v33 = v57;
      v34 = sub_29D5B3B1C();

      (*(v56 + 8))(v32, v33);
      return v34;
    }
  }

  sub_29D5B36AC();
  v35 = v22;
  v36 = sub_29D5B370C();
  v37 = sub_29D5B427C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v62[0] = v58;
    *v38 = 136446466;
    v63 = sub_29D4F33DC(0);
    sub_29D4F33FC(0, &qword_2A17A43E0, sub_29D4F33DC);
    v39 = sub_29D5B3E7C();
    v41 = v5;
    v42 = v35;
    v43 = v3;
    v44 = sub_29D501890(v39, v40, v62);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2082;
    v45 = sub_29D5B10BC();
    v47 = sub_29D501890(v45, v46, v62);
    v3 = v43;
    v35 = v42;
    v5 = v41;

    *(v38 + 14) = v47;
    _os_log_impl(&dword_29D48C000, v36, v37, "[%{public}s] Sidebar feed item is not supported for non-primary profile: %{public}s", v38, 0x16u);
    v48 = v58;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v48, -1, -1);
    MEMORY[0x29ED5FB80](v38, -1, -1);
  }

  (*(v59 + 8))(v8, v60);
  *&v62[0] = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4F172C(&qword_2A1A165D8, sub_29D4B37EC);
  v34 = sub_29D5B3B1C();

  (*(v61 + 8))(v5, v3);
  return v34;
}

uint64_t sub_29D4E97B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36EC();

  v8 = sub_29D5B370C();
  v9 = sub_29D5B426C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = v5;
    v11 = v10;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446466;
    v13 = MEMORY[0x29EDC3A38];
    v14 = MEMORY[0x29ED5E610](a1, MEMORY[0x29EDC3A38]);
    v16 = sub_29D501890(v14, v15, &v26);
    v24 = v4;
    v17 = v16;

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    v18 = MEMORY[0x29ED5E610](a2, v13);
    v20 = sub_29D501890(v18, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_29D48C000, v8, v9, "Categories: %{public}s, Sidebars: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v12, -1, -1);
    MEMORY[0x29ED5FB80](v11, -1, -1);

    (*(v25 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v26 = a1;

  sub_29D54F7FC(v21);
  return v26;
}

uint64_t sub_29D4E9A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D4E97B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D4E9A40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_29D5B143C();
  sub_29D4E9AE8(a1, v5, a2);

  if (!v2)
  {
    v6 = sub_29D5B134C();
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }
}

uint64_t sub_29D4E9AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v184 = a3;
  v162 = sub_29D5B104C();
  v160 = *(v162 - 8);
  MEMORY[0x2A1C7C4A8](v162);
  v154 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_29D5B11BC();
  v161 = *(v163 - 8);
  MEMORY[0x2A1C7C4A8](v163);
  v159 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_29D5B2BFC();
  v179 = *(v180 - 8);
  MEMORY[0x2A1C7C4A8](v180);
  v178 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B1D6C();
  v193 = *(v8 - 8);
  v194 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v192 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_29D5B31CC();
  v171 = *(v172 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v172);
  v158 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v169 = &v149 - v12;
  v187 = sub_29D5B2FFC();
  v186 = *(v187 - 8);
  MEMORY[0x2A1C7C4A8](v187);
  v188 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for RecordsCategoryIconProvider(0);
  MEMORY[0x2A1C7C4A8](v174);
  v173 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F326C(0, &qword_2A1A17320, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v185 = &v149 - v16;
  sub_29D4F39D0();
  v177 = v17;
  v176 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v175 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_29D5B134C();
  v167 = *(v168 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v168);
  v151 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v156 = &v149 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v155 = &v149 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v157 = &v149 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v153 = &v149 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v164 = &v149 - v29;
  v182 = sub_29D5B0EDC();
  v190 = *(v182 - 8);
  MEMORY[0x2A1C7C4A8](v182);
  v189 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3508(0);
  v32 = MEMORY[0x2A1C7C4A8](v31 - 8);
  v152 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v170 = &v149 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v38 = &v149 - v37;
  MEMORY[0x2A1C7C4A8](v36);
  v40 = &v149 - v39;
  v204 = sub_29D5B2A7C();
  v201 = *(v204 - 8);
  MEMORY[0x2A1C7C4A8](v204);
  v42 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v191);
  v44 = &v149 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D5B1BCC();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x2A1C7C4A8](v45);
  v166 = &v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v200 = &v149 - v50;
  MEMORY[0x2A1C7C4A8](v49);
  v52 = &v149 - v51;
  v183 = a2;
  v181 = sub_29D4DFDC4(a1);
  v196 = v53;
  v209 = v46;
  v54 = *(v46 + 16);
  v202 = v52;
  v54(v52, a1, v45);
  v203 = v44;
  v207 = v45;
  v198 = v54;
  v199 = v46 + 16;
  v54(v44, a1, v45);
  v205 = v42;
  sub_29D5173F4(v42);
  v55 = sub_29D5B2A2C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 56);
  v57(v40, 1, 1, v55);
  v206 = a1;
  v58 = v38;
  if (sub_29D5B1B6C())
  {
    sub_29D5B2A1C();
    sub_29D4F3474(v40, sub_29D4F3508);
    (*(v56 + 104))(v38, *MEMORY[0x29EDC17D0], v55);
    v57(v38, 0, 1, v55);
    sub_29D4F45C0(v38, v40, sub_29D4F3508);
  }

  v197 = v40;
  v59 = v200;
  v60 = v207;
  v198(v200, v206, v207);
  v61 = v209;
  v62 = v209 + 88;
  v63 = *(v209 + 88);
  v64 = v63(v59, v60);
  v144 = v64 == *MEMORY[0x29EDC3F80];
  v165 = v63;
  if (v144)
  {
    (*(v61 + 96))(v59, v60);
    (*(v193 + 32))(v192, v59, v194);
    v65 = sub_29D5B1D1C();
    if (v65)
    {
      v66 = v65;
      v67 = v178;
      sub_29D5B2BEC();
      sub_29D5B0C0C();
      swift_allocObject();
      sub_29D5B0BFC();
      sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      v68 = v203;
      v69 = v195;
      v70 = sub_29D5B0BEC();
      v72 = v202;
      if (v69)
      {

        (*(v179 + 8))(v67, v180);
        (*(v193 + 8))(v192, v194);
        sub_29D4F3474(v197, sub_29D4F3508);
        (*(v201 + 8))(v205, v204);
        sub_29D4F3474(v68, type metadata accessor for HealthRecordsSidebarActionHandlerData);
        return (*(v209 + 8))(v72, v207);
      }

      v113 = v70;
      v114 = v71;
      v150 = v62;

      type metadata accessor for HealthRecordsSidebarActionHandler(0);
      sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler);
      v115 = v157;
      sub_29D5B11AC();
      v104 = v201;
      (*(v179 + 8))(v67, v180);
      sub_29D4A96D0(v113, v114);
      (*(v167 + 32))(v184, v115, v168);
      sub_29D5B127C();

      (*(v193 + 8))(v192, v194);
      v133 = v202;
      v134 = v203;
      goto LABEL_34;
    }

    v150 = v62;
    v200 = sub_29D5B1B0C();
    v97 = v197;
    v98 = v170;
    sub_29D4F3A64(v197, v170, sub_29D4F3508);
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    v99 = v203;
    v100 = v195;
    v101 = sub_29D5B0BEC();
    v103 = v202;
    if (v100)
    {

      sub_29D4F3474(v98, sub_29D4F3508);
      (*(v193 + 8))(v192, v194);
      sub_29D4F3474(v97, sub_29D4F3508);
      (*(v201 + 8))(v205, v204);
      sub_29D4F3474(v99, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return (*(v209 + 8))(v103, v207);
    }

    v119 = v101;
    v120 = v102;

    type metadata accessor for HealthRecordsSidebarActionHandler(0);
    sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler);
    v121 = v155;
    sub_29D5B118C();

    sub_29D4A96D0(v119, v120);

    sub_29D4F3474(v98, sub_29D4F3508);
    (*(v193 + 8))(v192, v194);
    (*(v167 + 32))(v184, v121, v168);
    goto LABEL_32;
  }

  v144 = v64 == *MEMORY[0x29EDC3FB0];
  v150 = v62;
  if (v144)
  {
    v74 = v200;
    (*(v61 + 96))(v200, v60);
    sub_29D4E019C();

    v193 = v58;
    v75 = v190;
    v76 = v189;
    v77 = v74;
    v78 = v182;
    (*(v190 + 32))(v189, v77, v182);
    v200 = sub_29D5B1B0C();
    v194 = v79;
    v80 = v201;
    v81 = v185;
    v82 = v204;
    (*(v201 + 16))(v185, v205, v204);
    (*(v80 + 56))(v81, 0, 1, v82);
    v57(v193, 1, 1, v55);
    (*(v75 + 16))(v173, v76, v78);
    v83 = v188;
    *v188 = 0;
    *(v83 + 1) = 0x3FE999999999999ALL;
    (*(v186 + 104))(v83, *MEMORY[0x29EDC24C8], v187);
    sub_29D4F172C(qword_2A1A190F8, type metadata accessor for RecordsCategoryIconProvider);
    v84 = v175;
    sub_29D5B31DC();
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    v85 = v203;
    v86 = v195;
    v87 = sub_29D5B0BEC();
    if (v86)
    {

      (*(v176 + 8))(v84, v177);
      (*(v190 + 8))(v189, v78);
      sub_29D4F3474(v197, sub_29D4F3508);
      (*(v201 + 8))(v205, v204);
LABEL_15:
      sub_29D4F3474(v85, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return (*(v209 + 8))(v202, v207);
    }

    v116 = v87;
    v117 = v88;

    type metadata accessor for HealthRecordsSidebarActionHandler(0);
    v200 = sub_29D5B1B0C();
    sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler);
    sub_29D4F172C(&qword_2A17A4418, sub_29D4F39D0);
    v118 = v177;
    sub_29D5B119C();

    sub_29D4A96D0(v116, v117);

    (*(v176 + 8))(v84, v118);
    (*(v190 + 8))(v189, v182);
    (*(v167 + 32))(v184, v164, v168);
    goto LABEL_32;
  }

  if (v64 == *MEMORY[0x29EDC3FA8])
  {
LABEL_13:
    v200 = sub_29D5B1B0C();
    v89 = v201;
    v90 = v185;
    v91 = v204;
    (*(v201 + 16))(v185, v205, v204);
    (*(v89 + 56))(v90, 0, 1, v91);
    v57(v58, 1, 1, v55);
    v92 = v188;
    *v188 = 1;
    *(v92 + 1) = 0x3FF0000000000000;
    (*(v186 + 104))(v92, *MEMORY[0x29EDC24C8], v187);
    v93 = v169;
    sub_29D5B31BC();
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    v85 = v203;
    v94 = v195;
    v95 = sub_29D5B0BEC();
    if (v94)
    {

      (*(v171 + 8))(v93, v172);
      sub_29D4F3474(v197, sub_29D4F3508);
      (*(v89 + 8))(v205, v204);
      goto LABEL_15;
    }

    v129 = v95;
    v130 = v96;

    type metadata accessor for HealthRecordsSidebarActionHandler(0);
    v200 = sub_29D5B1B0C();
    sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler);
    sub_29D4F172C(&qword_2A1A17318, MEMORY[0x29EDC2848]);
    v131 = v172;
    v132 = v153;
    sub_29D5B119C();
    (*(v171 + 8))(v93, v131);

    sub_29D4A96D0(v129, v130);

    (*(v167 + 32))(v184, v132, v168);
LABEL_32:
    v133 = v202;
    v134 = v203;
LABEL_33:
    v104 = v201;
    goto LABEL_34;
  }

  if (v64 != *MEMORY[0x29EDC3FA0])
  {
    if (v64 != *MEMORY[0x29EDC3F78] && v64 != *MEMORY[0x29EDC3F90])
    {
      v194 = sub_29D5B1B0C();
      v122 = v197;
      v123 = v152;
      sub_29D4F3A64(v197, v152, sub_29D4F3508);
      sub_29D5B0C0C();
      swift_allocObject();
      sub_29D5B0BFC();
      sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      v124 = v203;
      v125 = v195;
      v126 = sub_29D5B0BEC();
      if (v125)
      {

        sub_29D4F3474(v123, sub_29D4F3508);
        sub_29D4F3474(v122, sub_29D4F3508);
        (*(v201 + 8))(v205, v204);
        sub_29D4F3474(v124, type metadata accessor for HealthRecordsSidebarActionHandlerData);
        v128 = *(v209 + 8);
        v148 = v207;
        v128(v202, v207);
        return (v128)(v200, v148);
      }

      v146 = v126;
      v147 = v127;

      type metadata accessor for HealthRecordsSidebarActionHandler(0);
      sub_29D4F172C(&qword_2A1A18F98, type metadata accessor for HealthRecordsSidebarActionHandler);
      sub_29D5B118C();
      v133 = v202;
      sub_29D4F3474(v123, sub_29D4F3508);
      sub_29D4A96D0(v146, v147);

      (*(v167 + 32))(v184, v151, v168);
      (*(v209 + 8))(v200, v207);
      v134 = v203;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  (*(v161 + 104))(v159, *MEMORY[0x29EDC1B20], v163);
  sub_29D5B1B0C();
  v104 = v201;
  v105 = v185;
  v106 = v204;
  (*(v201 + 16))(v185, v205, v204);
  (*(v104 + 56))(v105, 0, 1, v106);
  sub_29D4F3A64(v197, v58, sub_29D4F3508);
  v107 = v188;
  *v188 = 0;
  *(v107 + 1) = 0x3FE999999999999ALL;
  (*(v186 + 104))(v107, *MEMORY[0x29EDC24C8], v187);
  sub_29D5B31BC();
  v108 = v154;
  (*(v160 + 104))(v154, *MEMORY[0x29EDC3778], v162);
  sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_29D5B5E20;
  *(v109 + 32) = 0x686372616553;
  *(v109 + 40) = 0xE600000000000000;
  *(v109 + 48) = sub_29D5B1B0C();
  *(v109 + 56) = v110;
  v111 = sub_29D5B401C();

  v112 = HKUIJoinStringsForAutomationIdentifier();

  if (v112)
  {
    sub_29D5B3E5C();
  }

  v133 = v202;
  sub_29D4F4160();
  type metadata accessor for ShowAllCategoryActionHandler();
  sub_29D4F172C(&qword_2A17A4408, sub_29D4F4160);
  sub_29D4F172C(&qword_2A17A4410, type metadata accessor for ShowAllCategoryActionHandler);
  v135 = v159;
  v136 = v158;
  v137 = v195;
  sub_29D5B116C();
  if (v137)
  {

    (*(v160 + 8))(v108, v162);
    (*(v171 + 8))(v136, v172);
    (*(v161 + 8))(v135, v163);
    sub_29D4F3474(v197, sub_29D4F3508);
    (*(v104 + 8))(v205, v204);
    sub_29D4F3474(v203, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    return (*(v209 + 8))(v133, v207);
  }

  (*(v160 + 8))(v108, v162);
  (*(v171 + 8))(v136, v172);
  (*(v161 + 8))(v135, v163);
  (*(v167 + 32))(v184, v156, v168);
  v134 = v203;
LABEL_34:
  sub_29D5B1B0C();
  sub_29D5B124C();
  v138 = v206;
  v139 = sub_29D4F19AC(v206);
  v140 = sub_29D5B130C();
  sub_29D4E80E8(v139);
  v140(v208, 0);
  sub_29D4F3ACC(v138);
  sub_29D5B132C();
  sub_29D4F3E20(v138);
  sub_29D5B129C();
  v141 = v166;
  v142 = v207;
  v198(v166, v138, v207);
  v143 = v165(v141, v142);
  v144 = v143 == *MEMORY[0x29EDC3FA8] || v143 == *MEMORY[0x29EDC3F78];
  if (!v144 && v143 != *MEMORY[0x29EDC3F90])
  {
    (*(v209 + 8))(v141, v142);
  }

  sub_29D5B123C();
  sub_29D4F3474(v197, sub_29D4F3508);
  (*(v104 + 8))(v205, v204);
  sub_29D4F3474(v134, type metadata accessor for HealthRecordsSidebarActionHandlerData);
  return (*(v209 + 8))(v133, v142);
}

uint64_t sub_29D4EBE88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4F326C(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - v6;
  sub_29D4B3DC8(0);
  v9 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D5B371C();
  v12 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = v5;
    v22 = v21;
    v40 = v21;
    *v20 = 136446210;
    v39 = v15;
    v23 = v15;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v24 = HKSensitiveLogItem();
    v35 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v25 = sub_29D5B3E9C();
    v27 = sub_29D501890(v25, v26, &v40);

    *(v20 + 4) = v27;
    a2 = v35;
    _os_log_impl(&dword_29D48C000, v17, v18, "Error making feed item for category, hiding from UI: %{public}s", v20, 0xCu);
    sub_29D48F668(v22);
    v28 = v22;
    v5 = v33;
    MEMORY[0x29ED5FB80](v28, -1, -1);
    v29 = v20;
    v9 = v34;
    MEMORY[0x29ED5FB80](v29, -1, -1);
  }

  (*(v12 + 8))(v14, v36);
  v39 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4B3AF4();
  sub_29D5B39EC();
  (*(v37 + 8))(v7, v5);
  sub_29D4F172C(&qword_2A1A161C0, sub_29D4B3DC8);
  v30 = sub_29D5B3B1C();
  result = (*(v38 + 8))(v11, v9);
  *a2 = v30;
  return result;
}

uint64_t sub_29D4EC2A0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  (*(v7 + 104))(v9, *MEMORY[0x29EDC3F88], v6);
  sub_29D5768B4(v9, v10);
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v17 = MEMORY[0x29EDCA1A0];
  v13 = a2;
  v14 = sub_29D4F23EC(v10, (v12 & 1) == 0, a2, &v17);

  *a3 = v14;
}

uint64_t sub_29D4EC400@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v195 = a2;
  v214 = a1;
  v217 = a4;
  v5 = sub_29D5B371C();
  v215 = *(v5 - 8);
  v216 = v5;
  v6 = MEMORY[0x2A1C7C4A8](v5);
  v212 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v172 - v8;
  v187 = sub_29D5B2C9C();
  v186 = *(v187 - 8);
  MEMORY[0x2A1C7C4A8](v187);
  v185 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F34D4(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v196 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_29D5B33CC();
  v198 = *(v203 - 8);
  MEMORY[0x2A1C7C4A8](v203);
  v201 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3508(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B2A7C();
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_29D5B34CC();
  v193 = *(v194 - 8);
  MEMORY[0x2A1C7C4A8](v194);
  v200 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D5B2C7C();
  v22 = *(v21 - 8);
  v209 = v21;
  v210 = v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v208 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v191 = &v172 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v189 = &v172 - v27;
  v213 = sub_29D5B1BCC();
  v28 = *(v213 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v213);
  v31 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v29);
  v188 = &v172 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v207 = &v172 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v199 = &v172 - v37;
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v211 = &v172 - v39;
  MEMORY[0x2A1C7C4A8](v38);
  v41 = &v172 - v40;
  v206 = sub_29D5B1D6C();
  v205 = *(v206 - 8);
  MEMORY[0x2A1C7C4A8](v206);
  v204 = &v172 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29D5B134C();
  v218 = *(v43 - 8);
  v219 = v43;
  v44 = MEMORY[0x2A1C7C4A8](v43);
  v184 = &v172 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x2A1C7C4A8](v44);
  v192 = &v172 - v47;
  v48 = MEMORY[0x2A1C7C4A8](v46);
  v190 = &v172 - v49;
  v50 = MEMORY[0x2A1C7C4A8](v48);
  v52 = &v172 - v51;
  MEMORY[0x2A1C7C4A8](v50);
  v197 = &v172 - v53;
  v54 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v54);
  v56 = &v172 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_7;
  }

  v202 = a3;
  v57 = a3;
  if ([v57 type] != 1)
  {

    a3 = v202;
LABEL_7:
    sub_29D5B36AC();
    v82 = a3;
    v83 = sub_29D5B370C();
    v84 = sub_29D5B427C();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v221[0] = v86;
      *v85 = 136446466;
      v220[0] = sub_29D4F355C(0);
      sub_29D4F33FC(0, &qword_2A17A43F0, sub_29D4F355C);
      v87 = sub_29D5B3E7C();
      v89 = sub_29D501890(v87, v88, v221);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2082;
      v90 = sub_29D5B10BC();
      v92 = sub_29D501890(v90, v91, v221);

      *(v85 + 14) = v92;
      _os_log_impl(&dword_29D48C000, v83, v84, "[%{public}s] Sidebar feed item is not supported for non-primary profile: %{public}s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v86, -1, -1);
      MEMORY[0x29ED5FB80](v85, -1, -1);
    }

    (*(v215 + 8))(v9, v216);
    goto LABEL_12;
  }

  v177 = v19;
  v176 = v16;
  v178 = v31;
  v183 = v57;
  v59 = v28 + 16;
  v58 = *(v28 + 16);
  v60 = v214;
  v61 = v28;
  v62 = v213;
  v58(v56, v214, v213);
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4F172C(&qword_2A1A18F78, type metadata accessor for HealthRecordsSidebarActionHandlerData);
  v179 = v56;
  v63 = sub_29D5B0BEC();
  v180 = 0;
  v182 = v58;
  v181 = v61;
  v98 = v97;
  v175 = v63;

  v58(v41, v60, v62);
  v99 = *(v61 + 88);
  v174 = v61 + 88;
  v173 = v99;
  v100 = v99(v41, v62);
  v101 = v59;
  if (v100 != *MEMORY[0x29EDC3F80])
  {
    v189 = v98;
    (*(v61 + 8))(v41, v62);
    v106 = v177;
    v107 = v207;
LABEL_20:
    (*(v61 + 104))(v211, *MEMORY[0x29EDC3F88], v62);
    sub_29D4F172C(&qword_2A1A17360, MEMORY[0x29EDC3FB8]);
    v116 = v214;
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v221[0] == v220[0] && v221[1] == v220[1])
    {
      v118 = 1;
    }

    else
    {
      v118 = sub_29D5B4C7C();
    }

    v120 = v181 + 8;
    v119 = *(v181 + 8);
    (v119)(v211, v62);

    if (v118)
    {
      v121 = v199;
      v182(v199, v116, v62);
      sub_29D5B1B0C();
      sub_29D5173F4(v106);
      v122 = sub_29D5B2A2C();
      (*(*(v122 - 8) + 56))(v176, 1, 1, v122);
      sub_29D5B34BC();
      (v119)(v121, v62);
      sub_29D5B1B8C();
      v124 = v209;
      v123 = v210;
      v125 = v191;
      (*(v210 + 104))(v191, *MEMORY[0x29EDC1E58], v209);
      v126 = v190;
      v127 = v125;
      v128 = v180;
      sub_29D5B114C();
      if (v128)
      {
        v114 = v128;

        sub_29D4A96D0(v175, v189);
        (*(v123 + 8))(v127, v124);
        (*(v193 + 8))(v200, v194);
        v115 = v212;
        v117 = v183;
        goto LABEL_4;
      }

      (*(v123 + 8))(v127, v124);
      (*(v193 + 8))(v200, v194);
      v139 = v197;
      v140 = v126;
      v141 = *(v218 + 32);
      (v141)(v197, v140, v219);
      v142 = v189;
      v112 = v175;
LABEL_44:
      v158 = sub_29D4F19AC(v116);
      v159 = sub_29D5B130C();
      sub_29D4E80E8(v158);
      v159(v221, 0);
      sub_29D5B1B0C();
      sub_29D5B124C();
      sub_29D4F207C(v116);
      sub_29D5B132C();

      sub_29D4A96D0(v112, v142);
      sub_29D4F3474(v179, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      v160 = v217;
      v161 = v219;
      (v141)(v217, v139, v219);
      v95 = v161;
      v94 = v160;
      v93 = 0;
      return (*(v218 + 56))(v94, v93, 1, v95);
    }

    v205 = v119;
    v206 = v120;
    v130 = v209;
    v129 = v210;
    v131 = *(v210 + 104);
    v131(v208, *MEMORY[0x29EDC1E58], v209);
    if (v195)
    {
      v182(v107, v116, v62);
      v132 = v173(v107, v62);
      v133 = v201;
      if (v132 == *MEMORY[0x29EDC3FB0])
      {
        v134 = *(v129 + 8);
        v135 = v208;
        v134(v208, v130);
        (*(v181 + 96))(v107, v62);
        sub_29D4E019C();

        v136 = sub_29D5B0EDC();
        (*(*(v136 - 8) + 8))(v107, v136);
      }

      else
      {
        if (v132 != *MEMORY[0x29EDC3F90])
        {
          (v205)(v107, v62);
          v137 = 0;
          v138 = v198;
          goto LABEL_38;
        }

        v144 = *(v129 + 8);
        v135 = v208;
        v144(v208, v130);
      }

      v131(v135, *MEMORY[0x29EDC1E60], v130);
      v137 = 2;
      v138 = v198;
    }

    else
    {
      v137 = 0;
      v138 = v198;
      v133 = v201;
    }

LABEL_38:
    v172 = v101;
    v145 = v199;
    v182(v199, v116, v62);
    sub_29D517AC4(v145, v137, v133);
    type metadata accessor for AccountSidebarContentConfigurationProvider(0);
    v146 = v196;
    v147 = v203;
    (*(v138 + 16))(v196, v133, v203);
    (*(v138 + 56))(v146, 0, 1, v147);
    v211 = sub_29D5B33AC();
    v148 = type metadata accessor for HealthRecordsSidebarActionHandler(0);
    v149 = v175;
    v142 = v189;
    sub_29D4F357C(v175, v189);
    v207 = sub_29D5B1B8C();
    sub_29D4F172C(&qword_2A1A17600, type metadata accessor for AccountSidebarContentConfigurationProvider);
    sub_29D4F172C(&qword_2A1A19580, type metadata accessor for HealthRecordsSidebarActionHandler);
    v150 = v146;
    v151 = v192;
    v152 = v138;
    v153 = v180;
    sub_29D5B113C();
    v114 = v153;
    if (v153)
    {
      sub_29D4A96D0(v149, v142);

      sub_29D4A96D0(v149, v142);
      sub_29D4F3474(v150, sub_29D4F34D4);
      (*(v152 + 8))(v201, v203);
      (*(v210 + 8))(v208, v209);
      v62 = v213;
      v116 = v214;
      v117 = v183;
      v115 = v212;
      goto LABEL_4;
    }

    v207 = v148;
    v154 = v203;
    v180 = 0;

    sub_29D4F3474(v150, sub_29D4F34D4);
    v139 = v197;
    v211 = *(v218 + 32);
    (v211)(v197, v151, v219);
    v155 = v188;
    v156 = v213;
    v182(v188, v214, v213);
    v157 = v173(v155, v156);
    if (v157 != *MEMORY[0x29EDC3FA8] && v157 != *MEMORY[0x29EDC3F78] && v157 != *MEMORY[0x29EDC3F90])
    {
      v112 = v175;
      sub_29D4A96D0(v175, v142);
      (*(v198 + 8))(v201, v154);
      (*(v210 + 8))(v208, v209);
      (v205)(v155, v213);
      v116 = v214;
      v141 = v211;
      goto LABEL_44;
    }

    sub_29D5B1B0C();
    sub_29D5173F4(v177);
    v162 = sub_29D5B2A2C();
    (*(*(v162 - 8) + 56))(v176, 1, 1, v162);
    v163 = v185;
    sub_29D5B2C8C();
    sub_29D5B1B8C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v165 = NSStringFromClass(ObjCClassFromMetadata);
    sub_29D5B3E5C();

    v166 = v184;
    v167 = v163;
    v168 = v208;
    v112 = v175;
    v169 = v180;
    sub_29D5B115C();
    v180 = v169;
    if (v169)
    {
      sub_29D4A96D0(v112, v142);

      sub_29D4A96D0(v112, v142);
      (*(v186 + 8))(v167, v187);
      (*(v198 + 8))(v201, v203);
      (*(v210 + 8))(v168, v209);
      (*(v218 + 8))(v197, v219);
      v115 = v212;
      v62 = v213;
      v116 = v214;
      v117 = v183;
      v114 = v180;
      goto LABEL_4;
    }

    sub_29D4A96D0(v112, v142);

    (*(v186 + 8))(v167, v187);
    (*(v198 + 8))(v201, v203);
    (*(v210 + 8))(v168, v209);
    v170 = v219;
    v139 = v197;
    (*(v218 + 8))(v197, v219);
    v171 = v166;
    v141 = v211;
    (v211)(v139, v171, v170);
    goto LABEL_33;
  }

  (*(v61 + 96))(v41, v62);
  v102 = v205;
  v103 = v204;
  v104 = v206;
  v205[4](v204, v41, v206);
  v105 = sub_29D5B1D1C();
  v106 = v177;
  v107 = v207;
  if (!v105)
  {
    v189 = v98;
    (v102[1])(v103, v104);
    v62 = v213;
    v61 = v181;
    goto LABEL_20;
  }

  v108 = v105;
  v172 = v101;
  type metadata accessor for HealthRecordsSidebarActionHandler(0);
  v110 = v209;
  v109 = v210;
  v111 = v189;
  (*(v210 + 104))(v189, *MEMORY[0x29EDC1E58], v209);
  v112 = v175;
  sub_29D4F357C(v175, v98);
  sub_29D4F172C(&qword_2A1A19580, type metadata accessor for HealthRecordsSidebarActionHandler);
  v113 = v180;
  sub_29D5B112C();
  if (!v113)
  {
    sub_29D4A96D0(v112, v98);

    (*(v109 + 8))(v111, v110);
    (v205[1])(v204, v206);
    v139 = v197;
    v143 = v52;
    v141 = *(v218 + 32);
    (v141)(v197, v143, v219);
    v142 = v98;
LABEL_33:
    v116 = v214;
    goto LABEL_44;
  }

  v114 = v113;
  sub_29D4A96D0(v112, v98);

  sub_29D4A96D0(v112, v98);
  (*(v109 + 8))(v111, v110);
  (v205[1])(v204, v206);
  v115 = v212;
  v62 = v213;
  v116 = v214;
  v117 = v183;
LABEL_4:
  sub_29D5B36AC();
  v64 = v178;
  v182(v178, v116, v62);
  v65 = v114;
  v66 = sub_29D5B370C();
  v67 = sub_29D5B427C();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v220[0] = v214;
    *v68 = 136446722;
    v221[0] = sub_29D4F355C(0);
    sub_29D4F33FC(0, &qword_2A17A43F0, sub_29D4F355C);
    v69 = sub_29D5B3E7C();
    v71 = sub_29D501890(v69, v70, v220);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2082;
    v72 = sub_29D5B1B0C();
    v74 = v73;
    (*(v181 + 8))(v64, v62);
    v75 = sub_29D501890(v72, v74, v220);

    *(v68 + 14) = v75;
    *(v68 + 22) = 2082;
    v221[0] = v114;
    v76 = v114;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v77 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v78 = sub_29D5B3E7C();
    v80 = sub_29D501890(v78, v79, v220);

    *(v68 + 24) = v80;
    _os_log_impl(&dword_29D48C000, v66, v67, "[%{public}s] Error making feed item for sidebar for %{public}s: %{public}s", v68, 0x20u);
    v81 = v214;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v81, -1, -1);
    MEMORY[0x29ED5FB80](v68, -1, -1);
  }

  else
  {

    (*(v181 + 8))(v64, v62);
  }

  (*(v215 + 8))(v115, v216);
  sub_29D4F3474(v179, type metadata accessor for HealthRecordsSidebarActionHandlerData);
LABEL_12:
  v93 = 1;
  v94 = v217;
  v95 = v219;
  return (*(v218 + 56))(v94, v93, 1, v95);
}

uint64_t sub_29D4EDFF8@<X0>(void **a1@<X0>, const char *a2@<X2>, uint64_t *a3@<X8>)
{
  v38 = a2;
  sub_29D4B37EC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B371C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_29D5B36AC();
  v15 = v14;
  v16 = sub_29D5B370C();
  v17 = sub_29D5B427C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v10;
    v21 = v20;
    v40 = v20;
    *v19 = 136446466;
    v39 = sub_29D4F33DC(0);
    sub_29D4F33FC(0, &qword_2A17A43E0, sub_29D4F33DC);
    v22 = sub_29D5B3E7C();
    v36 = v6;
    v24 = sub_29D501890(v22, v23, &v40);
    v37 = a3;
    v25 = v24;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    v39 = v14;
    v26 = v14;
    sub_29D4B3AF4();
    sub_29D5B4CAC();
    v27 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v28 = sub_29D5B3E7C();
    v30 = sub_29D501890(v28, v29, &v40);

    *(v19 + 14) = v30;
    a3 = v37;
    _os_log_impl(&dword_29D48C000, v16, v17, v38, v19, 0x16u);
    v6 = v36;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v21, -1, -1);
    v31 = v19;
    v7 = v35;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v11 + 8))(v13, v34);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v39 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4F172C(&qword_2A1A165D8, sub_29D4B37EC);
  v32 = sub_29D5B3B1C();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v32;
  return result;
}

uint64_t sub_29D4EE3C8()
{

  v1 = OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4F3474(v0 + OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t sub_29D4EE518@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4EE594(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_29D5B2FFC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_29D5B1A1C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_29D5B1A2C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  sub_29D4F4538(0);
  v2[14] = swift_task_alloc();
  v6 = sub_29D5B1A6C();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D4EE7C0, 0, 0);
}

uint64_t sub_29D4EE7C0()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v1[11];
  v4 = v1[12];
  sub_29D5B208C();
  v1[18] = sub_29D5B207C();
  (*(v4 + 104))(v2, *MEMORY[0x29EDC3EC8], v3);
  v5 = swift_task_alloc();
  v1[19] = v5;
  *v5 = v1;
  v5[1] = sub_29D4EE8DC;
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[4];

  return MEMORY[0x2A1C65D58](v6, v8, v7);
}

uint64_t sub_29D4EE8DC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2A1C73D48](sub_29D4EEA84, 0, 0);
}

uint64_t sub_29D4EEA84()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    sub_29D4F3474(v3, sub_29D4F4538);
    v5 = sub_29D5B300C();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    (*(v2 + 32))(v0[17], v3, v1);
    sub_29D5B1A3C();
    v9 = (*(v7 + 88))(v6, v8);
    v10 = *MEMORY[0x29EDC3EC0];
    v11 = sub_29D5B1A5C();
    if (v9 == v10)
    {
      v0[2] = 0;
      v12 = v11;
      v13 = [v11 hr:v0 + 2 imageWithWhiteBackground:?];

      v14 = v0[2];
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v20 = v14;
        v21 = sub_29D5B0D2C();

        swift_willThrow();
        v13 = sub_29D5B1A5C();
      }

      v19 = v13;
    }

    else
    {
      v16 = v0[10];
      v17 = v0[8];
      v18 = *(v0[9] + 8);
      v19 = v11;
      v18(v16, v17);
    }

    v22 = v9 == v10;
    v23 = v0[16];
    v33 = v0[17];
    v24 = v0[15];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[5];
    v28 = v0[3];
    v29 = v19;
    sub_29D5B3C7C();
    *v26 = v22;
    (*(v25 + 104))(v26, *MEMORY[0x29EDC24C0], v27);
    sub_29D5B2FEC();

    (*(v23 + 8))(v33, v24);
    v30 = sub_29D5B300C();
    (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_29D4EEDAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_29D5B0EDC();
  v18 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F4628(0, &qword_2A17A4440, sub_29D4F456C, &type metadata for RecordsCategoryIconProvider.CodingKeys, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v17 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for RecordsCategoryIconProvider(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F456C();
  v12 = v20;
  sub_29D5B4DBC();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    sub_29D4F172C(&qword_2A17A4030, MEMORY[0x29EDB9C08]);
    sub_29D5B4B6C();
    (*(v13 + 8))(v8, v6);
    (*(v14 + 32))(v11, v19, v3);
    sub_29D4F45C0(v11, v16, type metadata accessor for RecordsCategoryIconProvider);
  }

  return sub_29D48F668(a1);
}

uint64_t sub_29D4EF0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D4EF134(uint64_t a1)
{
  v2 = sub_29D4F456C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4EF170(uint64_t a1)
{
  v2 = sub_29D4F456C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4EF1AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D4E7B8C;

  return sub_29D4EE594(a1);
}

uint64_t sub_29D4EF25C(void *a1)
{
  sub_29D4F4628(0, &qword_2A17A4450, sub_29D4F456C, &type metadata for RecordsCategoryIconProvider.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F456C();
  sub_29D5B4DCC();
  sub_29D5B0EDC();
  sub_29D4F172C(&qword_2A1A193B8, MEMORY[0x29EDB9C08]);
  sub_29D5B4C0C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D4EF408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_29D5B1BCC();
  v18 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F4628(0, &qword_2A17A4438, sub_29D4F44E4, &type metadata for HealthRecordsSidebarActionHandlerData.CodingKeys, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v17 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F44E4();
  v12 = v20;
  sub_29D5B4DBC();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    sub_29D4F172C(&qword_2A1A19478, MEMORY[0x29EDC3FB8]);
    sub_29D5B4B6C();
    (*(v13 + 8))(v8, v6);
    (*(v14 + 32))(v11, v19, v3);
    sub_29D4F45C0(v11, v16, type metadata accessor for HealthRecordsSidebarActionHandlerData);
  }

  return sub_29D48F668(a1);
}

uint64_t sub_29D4EF6E4()
{
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](0);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4EF728()
{
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](0);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4EF780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D4EF808(uint64_t a1)
{
  v2 = sub_29D4F44E4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4EF844(uint64_t a1)
{
  v2 = sub_29D4F44E4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4EF898(void *a1)
{
  sub_29D4F4628(0, &unk_2A1A16238, sub_29D4F44E4, &type metadata for HealthRecordsSidebarActionHandlerData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4F44E4();
  sub_29D5B4DCC();
  sub_29D5B1BCC();
  sub_29D4F172C(&qword_2A1A19808, MEMORY[0x29EDC3FB8]);
  sub_29D5B4C0C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D4EFA44()
{
  v1 = sub_29D5B371C();
  v104 = *(v1 - 1);
  v105 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v94 = &v84 - v5;
  v6 = sub_29D5B2C2C();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v89 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v88 = &v84 - v9;
  v10 = sub_29D5B1BCC();
  v11 = *(v10 - 8);
  v102 = v10;
  v103 = v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v92 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v93 = &v84 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v95 = &v84 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v101 = &v84 - v18;
  sub_29D4F424C(0);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v100 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D5B32CC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v87 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v96 = &v84 - v30;
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v84 - v31;
  v98 = v0;
  sub_29D5B30DC();
  v33 = sub_29D5B329C();
  v35 = v34;
  v36 = *(v26 + 8);
  v99 = v25;
  v97 = v26 + 8;
  v36(v32, v25);
  if (v35 >> 60 != 15)
  {
    v86 = v36;
    sub_29D5B0BDC();
    swift_allocObject();
    sub_29D5B0BCC();
    sub_29D4F172C(&qword_2A17A4428, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    sub_29D5B0BBC();
    v84 = v33;
    v85 = v35;

    (*(v23 + 56))(v21, 0, 1, v22);
    v41 = v100;
    sub_29D4F45C0(v21, v100, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    v42 = v102;
    v43 = v103;
    v44 = v101;
    (*(v103 + 16))(v101, v41, v102);
    sub_29D5B21EC();
    v45 = sub_29D5B21DC();
    sub_29D5B1CBC();
    v46 = sub_29D5B1C8C();
    v47 = v96;
    sub_29D5B30DC();
    sub_29D5B328C();
    v86(v47, v99);
    v48 = sub_29D5B2DEC();

    v49 = sub_29D5B1C9C();

    v50 = v44;
    v51 = sub_29D5B21BC();

    if (!v51)
    {
      v54 = v94;
      sub_29D5B36DC();
      v55 = sub_29D5B370C();
      v56 = sub_29D5B427C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_29D48C000, v55, v56, "Unable to create category view controller.", v57, 2u);
        MEMORY[0x29ED5FB80](v57, -1, -1);
      }

      sub_29D4A96BC(v84, v85);

      (*(v104 + 8))(v54, v105);
      (*(v103 + 8))(v50, v42);
      return sub_29D4F3474(v100, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    }

    v105 = v51;
    v52 = *MEMORY[0x29EDC3F78];
    v104 = *(v43 + 104);
    (v104)(v95, v52, v42);
    sub_29D4F172C(&qword_2A1A17360, MEMORY[0x29EDC3FB8]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v108 == v106 && v109 == v107)
    {
      v53 = 1;
    }

    else
    {
      v53 = sub_29D5B4C7C();
    }

    v58 = v102;
    v60 = v103 + 8;
    v59 = *(v103 + 8);
    v59(v95, v102);

    if (v53)
    {
      goto LABEL_21;
    }

    v61 = v59;
    v103 = v60;
    v62 = v93;
    (v104)(v93, *MEMORY[0x29EDC3F90], v58);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v108 == v106 && v109 == v107)
    {
      v58 = v102;
      v59(v62, v102);
    }

    else
    {
      v63 = sub_29D5B4C7C();
      v58 = v102;
      v59(v62, v102);

      if (v63)
      {
        goto LABEL_21;
      }

      v67 = v92;
      (v104)(v92, *MEMORY[0x29EDC3FA8], v58);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v108 != v106 || v109 != v107)
      {
        v68 = sub_29D5B4C7C();
        v58 = v102;
        v59(v67, v102);

        if ((v68 & 1) == 0)
        {
          v69 = v96;
          v70 = v98;
          sub_29D5B30DC();
          v71 = v88;
          sub_29D5B327C();
          v86(v69, v99);
          v73 = v90;
          v72 = v91;
          v74 = v89;
          (*(v90 + 104))(v89, *MEMORY[0x29EDC1D78], v91);
          v75 = sub_29D5B2C1C();
          v76 = *(v73 + 8);
          v76(v74, v72);
          v76(v71, v72);
          if (v75)
          {
            sub_29D5B30DC();
            v77 = sub_29D5B32AC();
            v86(v69, v99);
            v78 = v105;
            [v77 showDetailViewController:v105 sender:v70];
            sub_29D4A96BC(v84, v85);

            v61(v101, v102);
          }

          else
          {
            v79 = v87;
            sub_29D5B30DC();
            v80 = sub_29D5B32AC();
            v86(v79, v99);
            v81 = [v80 navigationController];

            v82 = v101;
            if (v81)
            {
              v83 = v105;
              [v81 pushViewController:v105 animated:1];
              sub_29D4A96BC(v84, v85);
            }

            else
            {
              sub_29D4A96BC(v84, v85);
            }

            v61(v82, v102);
          }

          return sub_29D4F3474(v100, type metadata accessor for HealthRecordsSidebarActionHandlerData);
        }

LABEL_21:
        v64 = v96;
        sub_29D5B30DC();
        v65 = sub_29D5B32AC();
        v86(v64, v99);
        v66 = v105;
        [v65 presentViewController:v105 animated:1 completion:0];
        sub_29D4A96BC(v84, v85);

        v59(v101, v58);
        return sub_29D4F3474(v100, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      }

      v58 = v102;
      v59(v67, v102);
    }

    goto LABEL_21;
  }

  sub_29D5B36DC();
  v37 = sub_29D5B370C();
  v38 = sub_29D5B427C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_29D48C000, v37, v38, "Unable to decode and find the correct health records category for sidebar item", v39, 2u);
    MEMORY[0x29ED5FB80](v39, -1, -1);
  }

  return (*(v104 + 8))(v4, v105);
}

id sub_29D4F074C()
{
  v1 = sub_29D5B371C();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F424C(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  v36 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B32CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v32 - v14;
  v34 = v0;
  sub_29D5B30DC();
  v16 = sub_29D5B329C();
  v18 = v17;
  v19 = *(v10 + 8);
  v19(v15, v9);
  if (v18 >> 60 == 15)
  {
    sub_29D5B36DC();
    v20 = sub_29D5B370C();
    v21 = sub_29D5B427C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_29D48C000, v20, v21, "Unable to decode and find the correct health records category for sidebar item", v22, 2u);
      MEMORY[0x29ED5FB80](v22, -1, -1);
    }

    (*(v37 + 8))(v3, v38);
    return [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
  }

  else
  {
    v33 = v19;
    sub_29D5B0BDC();
    swift_allocObject();
    sub_29D5B0BCC();
    sub_29D4F172C(&qword_2A17A4428, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    sub_29D5B0BBC();
    v37 = v16;
    v38 = v18;

    (*(v36 + 56))(v6, 0, 1, v7);
    v24 = v6;
    v25 = v35;
    sub_29D4F45C0(v24, v35, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    sub_29D5B21EC();
    v26 = sub_29D5B21DC();
    sub_29D5B1CBC();
    v27 = sub_29D5B1C8C();
    sub_29D5B30DC();
    sub_29D5B328C();
    v33(v13, v9);
    v28 = sub_29D5B2DEC();

    v29 = sub_29D5B1C9C();

    v30 = sub_29D5B21BC();
    if (v30)
    {
      sub_29D4F3474(v25, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      sub_29D4A96BC(v37, v38);
      return v30;
    }

    else
    {
      v31 = [objc_allocWithZone(MEMORY[0x29EDC7DA8]) init];
      sub_29D4A96BC(v37, v38);
      sub_29D4F3474(v25, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return v31;
    }
  }
}

BOOL sub_29D4F0C84()
{
  v49 = sub_29D5B371C();
  v0 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D5B1BCC();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v43 = &v41 - v7;
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v44 = &v41 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v48 = &v41 - v10;
  sub_29D4F424C(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HealthRecordsSidebarActionHandlerData(0);
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v47 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B32CC();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B30DC();
  v21 = sub_29D5B329C();
  v22 = v20;
  v24 = v23;
  (*(v18 + 8))(v22, v17);
  if (v24 >> 60 == 15)
  {
    sub_29D5B36DC();
    v25 = sub_29D5B370C();
    v26 = sub_29D5B427C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_29D48C000, v25, v26, "Unable to decode and find the correct health records category for sidebar item", v27, 2u);
      MEMORY[0x29ED5FB80](v27, -1, -1);
    }

    (*(v0 + 8))(v2, v49);
    return 1;
  }

  else
  {
    sub_29D5B0BDC();
    swift_allocObject();
    sub_29D5B0BCC();
    sub_29D4F172C(&qword_2A17A4428, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    sub_29D5B0BBC();
    v41 = v21;
    v49 = v24;

    v29 = 1;
    (*(v15 + 56))(v13, 0, 1, v14);
    v30 = v47;
    sub_29D4F45C0(v13, v47, type metadata accessor for HealthRecordsSidebarActionHandlerData);
    v31 = v45;
    v32 = v30;
    v33 = v46;
    (*(v45 + 16))(v48, v32, v46);
    v34 = *(v31 + 104);
    v35 = v44;
    v34(v44, *MEMORY[0x29EDC3F78], v33);
    sub_29D4F172C(&qword_2A1A17360, MEMORY[0x29EDC3FB8]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v52 != v50 || v53 != v51)
    {
      v29 = sub_29D5B4C7C();
    }

    v36 = *(v31 + 8);
    v36(v35, v33);

    if (v29)
    {
      goto LABEL_15;
    }

    v37 = v43;
    v34(v43, *MEMORY[0x29EDC3F90], v33);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v52 == v50 && v53 == v51)
    {
      v36(v37, v33);

LABEL_15:
      sub_29D4A96BC(v41, v49);
      v36(v48, v33);
      sub_29D4F3474(v47, type metadata accessor for HealthRecordsSidebarActionHandlerData);
      return 0;
    }

    v38 = sub_29D5B4C7C();
    v36(v37, v33);

    if (v38)
    {
      goto LABEL_15;
    }

    v39 = v42;
    v34(v42, *MEMORY[0x29EDC3FA8], v33);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v52 == v50 && v53 == v51)
    {
      sub_29D4A96BC(v41, v49);
      v36(v39, v33);
      v36(v48, v33);
      sub_29D4F3474(v47, type metadata accessor for HealthRecordsSidebarActionHandlerData);

      return 0;
    }

    else
    {
      v40 = sub_29D5B4C7C();
      sub_29D4A96BC(v41, v49);
      v36(v39, v33);
      v36(v48, v33);
      sub_29D4F3474(v47, type metadata accessor for HealthRecordsSidebarActionHandlerData);

      return (v40 & 1) == 0;
    }
  }
}

uint64_t sub_29D4F14B8(uint64_t a1)
{
  v2 = sub_29D5B32CC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_29D5B30FC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_29D4F15C0()
{
  sub_29D5B310C();

  return swift_deallocClassInstance();
}

uint64_t sub_29D4F1644@<X0>(_BYTE *a1@<X8>)
{
  if (sub_29D4F0C84())
  {
    v2 = MEMORY[0x29EDC22C8];
  }

  else
  {
    *a1 = 1;
    v2 = MEMORY[0x29EDC22C0];
  }

  v3 = *v2;
  v4 = sub_29D5B2F7C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_29D4F172C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4F1774(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_29D59AD10(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_29D4F17E4(uint64_t a1)
{
  v2 = sub_29D5B16BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_29D59BD10(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_29D4F192C(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_29D59AD10(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_29D4F19AC(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v46[-v7];
  v9 = sub_29D5B1BCC();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x29EDC3F80])
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v8, v12, v2);
    v14 = sub_29D563D48();
    (*(v3 + 16))(v6, v8, v2);
    v15 = (*(v3 + 88))(v6, v2);
    v16 = *MEMORY[0x29EDC4078];
    v17 = *MEMORY[0x29EDC4080];
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v18 = (v3 + 8);
    if (v15 == v16 || v15 == v17)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D5B62A0;
      *(inited + 32) = sub_29D5B15CC();
      *(inited + 40) = v21;
      v28 = sub_29D4F192C(inited, v14);
      swift_setDeallocating();
      sub_29D4B4B58(inited + 32);
      (*v18)(v8, v2);
    }

    else
    {
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_29D5B62A0;
      *(v26 + 32) = sub_29D5B15BC();
      *(v26 + 40) = v27;
      v28 = sub_29D4F192C(v26, v14);
      swift_setDeallocating();
      sub_29D4B4B58(v26 + 32);
      v29 = *v18;
      (*v18)(v8, v2);
      v29(v6, v2);
    }
  }

  else if (v13 == *MEMORY[0x29EDC3FB0])
  {
    (*(v10 + 96))(v12, v9);
    sub_29D4E019C();

    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_29D5B6320;
    *(v22 + 32) = 0xD000000000000010;
    *(v22 + 40) = 0x800000029D5BCDE0;
    *(v22 + 48) = sub_29D5B151C();
    *(v22 + 56) = v23;
    *(v22 + 64) = sub_29D5B15AC();
    *(v22 + 72) = v24;
    v28 = sub_29D5959C4(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    v25 = sub_29D5B0EDC();
    (*(*(v25 - 8) + 8))(v12, v25);
  }

  else if (v13 == *MEMORY[0x29EDC3FA8] || v13 == *MEMORY[0x29EDC3FA0] || v13 == *MEMORY[0x29EDC3F70])
  {
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_29D5B5E20;
    *(v32 + 32) = sub_29D5B151C();
    *(v32 + 40) = v33;
    *(v32 + 48) = sub_29D5B15BC();
    *(v32 + 56) = v34;
    v28 = sub_29D5959C4(v32);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else if (v13 == *MEMORY[0x29EDC3F78] || v13 == *MEMORY[0x29EDC3F90])
  {
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_29D5B62A0;
    *(v36 + 32) = sub_29D5B15AC();
    *(v36 + 40) = v37;
    v28 = sub_29D5959C4(v36);
    swift_setDeallocating();
    sub_29D4B4B58(v36 + 32);
  }

  else
  {
    v38 = *MEMORY[0x29EDC3F98];
    v39 = v13;
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    if (v39 == v38)
    {
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_29D5B5E20;
      *(v40 + 32) = sub_29D5B154C();
      *(v40 + 40) = v41;
      *(v40 + 48) = sub_29D5B15CC();
      *(v40 + 56) = v42;
      v28 = sub_29D5959C4(v40);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_29D5B62A0;
      *(v43 + 32) = sub_29D5B155C();
      *(v43 + 40) = v44;
      v28 = sub_29D5959C4(v43);
      swift_setDeallocating();
      sub_29D4B4B58(v43 + 32);
      (*(v10 + 8))(v12, v9);
    }
  }

  return v28;
}

uint64_t sub_29D4F207C(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x29EDC3F80])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = (*(v3 + 88))(v5, v2);
    if (v11 == *MEMORY[0x29EDC4078])
    {
      return 0x8000000000000000;
    }

    if (v11 == *MEMORY[0x29EDC4080])
    {
      return 0x8000000000000001;
    }

    (*(v3 + 8))(v5, v2);
    return 0x7FFFFFFFFFFFFFFDLL;
  }

  v13 = v10;
  if (v10 == *MEMORY[0x29EDC3FB0])
  {
    (*(v7 + 96))(v9, v6);
    sub_29D4E019C();

    v14 = sub_29D5B0EDC();
    (*(*(v14 - 8) + 8))(v9, v14);
    return 0x8000000000000003;
  }

  result = 0x8000000000000002;
  if (v13 == *MEMORY[0x29EDC3FA8])
  {
    return result;
  }

  if (v13 == *MEMORY[0x29EDC3FA0])
  {
    return 0x8000000000000003;
  }

  if (v13 == *MEMORY[0x29EDC3F70])
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v13 == *MEMORY[0x29EDC3F88])
  {
    return 0x8000000000000004;
  }

  if (v13 != *MEMORY[0x29EDC3F78] && v13 != *MEMORY[0x29EDC3F90])
  {
    if (v13 != *MEMORY[0x29EDC3F98])
    {
      (*(v7 + 8))(v9, v6);
      return 0x8000000000000000;
    }

    return 0x8000000000000001;
  }

  return result;
}

char *sub_29D4F23EC(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  v64 = sub_29D5B371C();
  v8 = *(v64 - 8);
  MEMORY[0x2A1C7C4A8](v64);
  v63 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4AD4(0);
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v81 = v57 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v78 = v57 - v16;
  v17 = sub_29D5B134C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v77 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v71 = v57 - v21;
  v76 = *(a1 + 16);
  if (v76)
  {
    v22 = 0;
    v23 = *(sub_29D5B1BCC() - 8);
    v80 = (v18 + 48);
    v68 = (v18 + 8);
    v62 = (v8 + 8);
    v61 = (v18 + 56);
    v69 = v18;
    v73 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v74 = (v18 + 32);
    v72 = *(v23 + 72);
    v79 = MEMORY[0x29EDCA190];
    *&v24 = 136446466;
    v57[0] = v24;
    v25 = v78;
    v66 = a4;
    v65 = a3;
    v75 = v6;
    v70 = v13;
    v67 = v17;
    while (1)
    {
      v26 = v81;
      sub_29D4EC400(v73 + v72 * v22, v6 & 1, a3, v81);
      sub_29D4F3A64(v26, v13, sub_29D4B4AD4);
      v27 = *v80;
      if ((*v80)(v13, 1, v17) == 1)
      {
        sub_29D4F3474(v13, sub_29D4B4AD4);
      }

      else
      {
        v6 = sub_29D5B126C();
        v29 = v28;
        (*v68)(v13, v17);
        v30 = *a4;
        if (*(*a4 + 16))
        {
          sub_29D5B4D4C();

          sub_29D5B3EFC();
          v31 = sub_29D5B4D9C();
          v32 = -1 << *(v30 + 32);
          v33 = v31 & ~v32;
          if ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = (*(v30 + 48) + 16 * v33);
              v36 = *v35 == v6 && v35[1] == v29;
              if (v36 || (sub_29D5B4C7C() & 1) != 0)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v42 = v63;
            sub_29D5B36AC();

            v43 = sub_29D5B370C();
            v44 = sub_29D5B427C();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v83 = v60;
              *v45 = v57[0];
              v82[0] = sub_29D4F33DC(0);
              sub_29D4F33FC(0, &qword_2A17A43E0, sub_29D4F33DC);
              v46 = sub_29D5B3E7C();
              v59 = v43;
              v48 = sub_29D501890(v46, v47, &v83);
              v58 = v44;
              v49 = v48;

              *(v45 + 4) = v49;
              *(v45 + 12) = 2082;
              v82[0] = v6;
              v82[1] = v29;
              sub_29D5B4CAC();
              v50 = HKSensitiveLogItem();
              swift_unknownObjectRelease();
              sub_29D5B47BC();
              swift_unknownObjectRelease();
              v51 = sub_29D5B3E7C();
              v53 = sub_29D501890(v51, v52, &v83);

              *(v45 + 14) = v53;
              v54 = v59;
              _os_log_impl(&dword_29D48C000, v59, v58, "[%{public}s] Duplicated unique identifier for sidebar item found: %{public}s", v45, 0x16u);
              v55 = v60;
              swift_arrayDestroy();
              MEMORY[0x29ED5FB80](v55, -1, -1);
              MEMORY[0x29ED5FB80](v45, -1, -1);
            }

            else
            {
            }

            (*v62)(v42, v64);
            sub_29D4F3474(v81, sub_29D4B4AD4);
            a4 = v66;
            a3 = v65;
            LOBYTE(v6) = v75;
            v13 = v70;
            v25 = v78;
            (*v61)(v78, 1, 1, v17);
            goto LABEL_19;
          }

LABEL_16:

          a4 = v66;
          a3 = v65;
        }

        sub_29D59AD10(v82, v6, v29);

        LOBYTE(v6) = v75;
        v13 = v70;
        v25 = v78;
      }

      sub_29D4F45C0(v81, v25, sub_29D4B4AD4);
LABEL_19:
      if (v27(v25, 1, v17) == 1)
      {
        sub_29D4F3474(v25, sub_29D4B4AD4);
      }

      else
      {
        v37 = *v74;
        v38 = v71;
        (*v74)(v71, v25, v17);
        v37(v77, v38, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_29D515230(0, *(v79 + 2) + 1, 1, v79);
        }

        v40 = *(v79 + 2);
        v39 = *(v79 + 3);
        if (v40 >= v39 >> 1)
        {
          v79 = sub_29D515230(v39 > 1, v40 + 1, 1, v79);
        }

        v41 = v79;
        *(v79 + 2) = v40 + 1;
        v17 = v67;
        v37(&v41[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v40], v77, v67);
        v25 = v78;
        LOBYTE(v6) = v75;
      }

      if (++v22 == v76)
      {
        return v79;
      }
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t *sub_29D4F2C74(uint64_t a1, void *a2)
{
  v3 = v2;
  v20 = a1;
  v24 = *v3;
  v25 = a2;
  v23 = sub_29D5B13CC();
  v21 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D5B13EC();
  v7 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F3A64(a1, v3 + OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D4F326C(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D5B5E20;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v14 + v13, *MEMORY[0x29EDC3778], v10);
  v16(v15 + v12, *MEMORY[0x29EDC3770], v10);
  v17 = v20;
  sub_29D5B143C();
  (*(v21 + 104))(v6, *MEMORY[0x29EDC3898], v23);
  sub_29D5B13DC();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC13HealthRecords17CategoryGenerator_domain, v9, v22);
  v18 = sub_29D4E81EC(v17, v25);
  sub_29D4F3474(v17, type metadata accessor for HealthRecordsGeneratorContext);
  v3[2] = v18;
  return v3;
}

void sub_29D4F2FB0()
{
  if (!qword_2A1A172B8)
  {
    sub_29D4B2D8C();
    sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A172B8);
    }
  }
}

void sub_29D4F3050()
{
  if (!qword_2A1A16EB8)
  {
    sub_29D4F2FB0();
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4F172C(&qword_2A1A172C0, sub_29D4F2FB0);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16EB8);
    }
  }
}

void sub_29D4F3120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D4F31D4();
    v7 = v6;
    sub_29D4B3AC0(255);
    v9 = v8;
    v10 = sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4);
    v11 = a3(a1, v7, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D4F31D4()
{
  if (!qword_2A1A16748)
  {
    sub_29D4F326C(255, &qword_2A1A16438, MEMORY[0x29EDC3FB8], MEMORY[0x29EDC9A40]);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16748);
    }
  }
}

void sub_29D4F326C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D4F32D0()
{
  if (!qword_2A1A16C40)
  {
    sub_29D4F31D4();
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4F172C(&qword_2A1A16750, sub_29D4F31D4);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C40);
    }
  }
}

uint64_t sub_29D4F33FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D4F3474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4F357C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_29D4F35F0()
{
  if (!qword_2A1A16DE0)
  {
    sub_29D4F35D0(255);
    sub_29D4B3A8C(255);
    sub_29D4F172C(&qword_2A1A16C58, sub_29D4F35D0);
    sub_29D4F172C(&qword_2A1A167C0, sub_29D4B3A8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16DE0);
    }
  }
}

void sub_29D4F36DC()
{
  if (!qword_2A1A16BD0)
  {
    sub_29D4F35F0();
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4F172C(&qword_2A1A16DE8, sub_29D4F35F0);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16BD0);
    }
  }
}

void sub_29D4F37E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D4B2D8C();
    sub_29D4F172C(a4, a5);
    sub_29D4F172C(&qword_2A1A16780, sub_29D4B2D8C);
    v8 = sub_29D5B387C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_29D4F38CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v7 = *a1;
  v9[2] = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
  result = sub_29D58BA18(sub_29D4F3994, v9, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_29D4F39D0()
{
  if (!qword_2A1A17310)
  {
    type metadata accessor for RecordsCategoryIconProvider(255);
    sub_29D4F172C(qword_2A1A190F8, type metadata accessor for RecordsCategoryIconProvider);
    v0 = sub_29D5B31EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17310);
    }
  }
}

uint64_t sub_29D4F3A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4F3ACC(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x29EDC3F80])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = (*(v3 + 88))(v5, v2);
    if (v11 == *MEMORY[0x29EDC4078])
    {
      return 0x8000000000000000;
    }

    if (v11 == *MEMORY[0x29EDC4080])
    {
      return 0x8000000000000001;
    }

    (*(v3 + 8))(v5, v2);
    return 0x7FFFFFFFFFFFFFFDLL;
  }

  v13 = v10;
  if (v10 == *MEMORY[0x29EDC3FB0])
  {
    (*(v7 + 96))(v9, v6);
    sub_29D4E019C();

    v14 = sub_29D5B0EDC();
    (*(*(v14 - 8) + 8))(v9, v14);
    return 0x8000000000000003;
  }

  result = 0x8000000000000002;
  if (v13 == *MEMORY[0x29EDC3FA8])
  {
    return result;
  }

  if (v13 == *MEMORY[0x29EDC3FA0])
  {
    return 0x8000000000000003;
  }

  if (v13 == *MEMORY[0x29EDC3F70])
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v13 != *MEMORY[0x29EDC3F78] && v13 != *MEMORY[0x29EDC3F90])
  {
    if (v13 != *MEMORY[0x29EDC3F98])
    {
      (*(v7 + 8))(v9, v6);
      return 0x8000000000000000;
    }

    return 0x8000000000000001;
  }

  return result;
}

uint64_t sub_29D4F3E20(uint64_t a1)
{
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x29EDC3F80])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = (*(v3 + 88))(v5, v2);
    if (v11 == *MEMORY[0x29EDC4078] || v11 == *MEMORY[0x29EDC4080])
    {
      return 8;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 5;
    }
  }

  else if (v10 == *MEMORY[0x29EDC3FB0])
  {
    (*(v7 + 96))(v9, v6);
    sub_29D4E019C();

    v13 = sub_29D5B0EDC();
    (*(*(v13 - 8) + 8))(v9, v13);
    return 6;
  }

  else if (v10 == *MEMORY[0x29EDC3FA8] || v10 == *MEMORY[0x29EDC3FA0] || v10 == *MEMORY[0x29EDC3F70])
  {
    return 5;
  }

  else if (v10 == *MEMORY[0x29EDC3F78] || v10 == *MEMORY[0x29EDC3F90])
  {
    return 6;
  }

  else if (v10 == *MEMORY[0x29EDC3F98])
  {
    return 7;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return 13;
  }
}

void sub_29D4F4160()
{
  if (!qword_2A17A43F8)
  {
    sub_29D5B31CC();
    type metadata accessor for ShowAllCategoryActionHandler();
    sub_29D4F172C(&qword_2A1A17318, MEMORY[0x29EDC2848]);
    sub_29D4F172C(&qword_2A17A4400, type metadata accessor for ShowAllCategoryActionHandler);
    v0 = sub_29D5B326C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A43F8);
    }
  }
}

uint64_t sub_29D4F42D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_29D4F4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_29D4F43E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D4F44E4()
{
  result = qword_2A1A18F90;
  if (!qword_2A1A18F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18F90);
  }

  return result;
}

unint64_t sub_29D4F456C()
{
  result = qword_2A17A4448;
  if (!qword_2A17A4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4448);
  }

  return result;
}

uint64_t sub_29D4F45C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D4F4628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClinicalSharingOnboardingTileViewController.ViewModel.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ClinicalSharingOnboardingTileViewController.ViewModel.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_29D4F4784()
{
  result = qword_2A17A4458;
  if (!qword_2A17A4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4458);
  }

  return result;
}

unint64_t sub_29D4F47DC()
{
  result = qword_2A17A4460;
  if (!qword_2A17A4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4460);
  }

  return result;
}

unint64_t sub_29D4F4834()
{
  result = qword_2A17A4468;
  if (!qword_2A17A4468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4468);
  }

  return result;
}

unint64_t sub_29D4F488C()
{
  result = qword_2A17A4470;
  if (!qword_2A17A4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4470);
  }

  return result;
}

unint64_t sub_29D4F48E4()
{
  result = qword_2A1A18F80;
  if (!qword_2A1A18F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18F80);
  }

  return result;
}

unint64_t sub_29D4F493C()
{
  result = qword_2A1A18F88;
  if (!qword_2A1A18F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A18F88);
  }

  return result;
}

uint64_t sub_29D4F49BC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

id sub_29D4F49F4()
{
  v79 = 0;
  v95 = *MEMORY[0x29EDCA608];
  v1 = sub_29D5B0E6C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v75 = &v74 - v6;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v80 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v90 = &v74 - v15;
  v16 = type metadata accessor for SharedConceptCodedValue(0);
  v17 = MEMORY[0x2A1C7C4A8](v16);
  v20 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = v0;
  v21 = v0[5];
  v22 = MEMORY[0x29EDCA190];
  v94 = MEMORY[0x29EDCA190];
  v23 = *(v21 + 16);
  v76 = v2;
  v77 = v1;
  v74 = v5;
  if (v23)
  {
    v24 = 0;
    v89 = v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v25 = *(v17 + 20);
    v91 = (v11 + 8);
    v92 = v11 + 16;
    v87 = *(v18 + 72);
    v88 = v25;
    v81 = MEMORY[0x29EDCA190];
    v82 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = v23;
    v84 = v11;
    v26 = v80;
    do
    {
      sub_29D4F55C4(v89 + v87 * v24, v20, type metadata accessor for SharedConceptCodedValue);
      sub_29D4F55C4(v20 + v88, v26, sub_29D4A05F4);
      sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
      v28 = v27;
      v29 = *(v27 - 8);
      if ((*(v29 + 48))(v26, 1, v27) == 1)
      {
        sub_29D4F562C(v26, sub_29D4A05F4);
        sub_29D4F562C(v20, type metadata accessor for SharedConceptCodedValue);
      }

      else
      {
        v86 = v24;
        v30 = sub_29D5B3CEC();
        (*(v29 + 8))(v26, v28);
        v31 = v30;
        v32 = [v30 currentValue];
        v33 = [v32 inspectableValue];

        if (v33 && (v34 = [v33 codedQuantityValue], v33, (v85 = v34) != 0))
        {
          v35 = *v20;
          v93[0] = v22;
          v36 = *(v35 + 16);
          if (v36)
          {
            v37 = v31;
            v38 = v35 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
            v39 = *(v11 + 72);
            v40 = *(v11 + 16);
            do
            {
              v40(v14, v38, v10);
              sub_29D5B3CEC();
              v41 = (*v91)(v14, v10);
              MEMORY[0x29ED5E5E0](v41);
              if (*((v93[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_29D5B408C();
              }

              sub_29D5B40AC();
              v38 += v39;
              --v36;
            }

            while (v36);
            v26 = v80;
            v31 = v37;
          }

          v42 = [v31 lowValue];
          v43 = v31;
          v44 = [v42 codedQuantityValue];

          v45 = [v31 highValue];
          v46 = [v45 &off_29F351088];

          sub_29D48F51C(0, &qword_2A17A41A8);
          v47 = sub_29D5B401C();

          v48 = objc_opt_self();
          v93[0] = 0;
          v49 = v85;
          v50 = [v48 chartableCodedQuantityWithCodings:v47 originalCodedQuantity:v85 originalRangeLowCodedQuantity:v44 originalRangeHighCodedQuantity:v46 error:v93];

          v20 = v82;
          if (v50)
          {
            v51 = v93[0];

            v52 = sub_29D4F562C(v20, type metadata accessor for SharedConceptCodedValue);
            MEMORY[0x29ED5E5E0](v52);
            if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_29D5B408C();
            }

            sub_29D5B40AC();
            v81 = v94;
          }

          else
          {
            v53 = v93[0];
            v79 = v43;
            v54 = v53;
            v55 = sub_29D5B0D2C();

            swift_willThrow();
            sub_29D4F562C(v20, type metadata accessor for SharedConceptCodedValue);
            v79 = 0;
          }

          v23 = v83;
          v11 = v84;
          v22 = MEMORY[0x29EDCA190];
        }

        else
        {
          sub_29D4F562C(v20, type metadata accessor for SharedConceptCodedValue);
        }

        v24 = v86;
      }

      ++v24;
    }

    while (v24 != v23);
  }

  else
  {
    v81 = MEMORY[0x29EDCA190];
  }

  v56 = *v78;
  v94 = v22;
  v57 = *(v56 + 16);
  if (v57)
  {
    v60 = *(v11 + 16);
    v59 = v11 + 16;
    v58 = v60;
    v61 = v56 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v62 = *(v59 + 56);
    v63 = (v59 - 8);
    do
    {
      v64 = v90;
      v58(v90, v61, v10);
      sub_29D5B3CEC();
      v65 = (*v63)(v64, v10);
      MEMORY[0x29ED5E5E0](v65);
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v84 = v59;
        sub_29D5B408C();
        v59 = v84;
      }

      sub_29D5B40AC();
      v61 += v62;
      --v57;
    }

    while (v57);
    v22 = v94;
  }

  v66 = v75;
  sub_29D5B0E1C();
  sub_29D48F51C(0, &qword_2A17A4478);
  v68 = v76;
  v67 = v77;
  v69 = v74;
  (*(v76 + 16))(v74, v66, v77);
  v70 = v79;
  v71 = sub_29D4F52E0(v22, v81, v69);
  if (v70)
  {

    v72 = 0;
  }

  else
  {
    v72 = v71;
  }

  (*(v68 + 8))(v66, v67);
  return v72;
}

id sub_29D4F52E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x29EDCA608];
  sub_29D48F51C(0, &qword_2A17A41A8);
  v4 = sub_29D5B401C();

  sub_29D48F51C(0, &qword_2A17A4480);
  v5 = sub_29D5B401C();

  v6 = sub_29D5B0DEC();
  v15[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() setWithMedicalCodings:v4 quantities:v5 date:v6 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_29D5B0E6C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a3, v9);
  }

  else
  {
    v12 = v15[0];
    sub_29D5B0D2C();

    swift_willThrow();
    v13 = sub_29D5B0E6C();
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  return v7;
}

uint64_t sub_29D4F54B0()
{
  v0 = sub_29D5B211C();
  MEMORY[0x2A1C7C4A8](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC4170]);

  return sub_29D5B240C();
}

uint64_t sub_29D4F55C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4F562C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_29D4F568C(uint64_t a1)
{
  v81 = *v1;
  v82 = v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v72 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v71 = v4;
  v73 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7688();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F78B8();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F794C();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v75 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7D54(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v63 = v11;
  v62 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v61 = &v61 - v12;
  sub_29D4F7D54(0, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData, MEMORY[0x29EDC9C68]);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v80 = &v61 - v16;
  v65 = sub_29D5B13CC();
  v17 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D5B13EC();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  sub_29D4F7CA0(a1, v1 + OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5B143C();
  sub_29D4F7D54(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v24 = sub_29D5B104C();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v67 = xmmword_29D5B62A0;
  *(v27 + 16) = xmmword_29D5B62A0;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x29EDC3730], v24);
  (*(v17 + 104))(v19, *MEMORY[0x29EDC3898], v65);
  sub_29D5B13DC();
  (*(v21 + 32))(v82 + OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_domain, v23, v20);
  v28 = v64;
  v29 = v80;
  sub_29D4F6344(v80);
  sub_29D5B1CBC();
  v30 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v84, v85);
  v31 = sub_29D5B136C();
  v32 = [v31 profileIdentifier];

  sub_29D5B1C6C();
  v33 = v66;
  sub_29D48F668(v84);
  sub_29D4F7A08(v29, v33);
  v34 = type metadata accessor for UDCSnippetGeneratorData(0);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
  {
    sub_29D4F7DB8(v33, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData);
    v35 = 0;
  }

  else
  {
    v36 = v62;
    v37 = v61;
    v38 = v63;
    (*(v62 + 16))(v61, v33, v63);
    sub_29D4F7BA0(v33, type metadata accessor for UDCSnippetGeneratorData);
    v35 = sub_29D5B3CEC();
    (*(v36 + 8))(v37, v38);
  }

  sub_29D4F7D54(0, &qword_2A1A161E8, MEMORY[0x29EDC4098], MEMORY[0x29EDC9E90]);
  v39 = sub_29D5B1D6C();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v67;
  (*(v40 + 104))(v42 + v41, *MEMORY[0x29EDC4068], v39);
  v43 = sub_29D5B260C();

  v44 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v84, v85);
  v45 = sub_29D5B136C();
  v46 = [v45 profileIdentifier];

  sub_29D5B1C3C();
  sub_29D48F668(v84);
  v47 = sub_29D5B363C();

  v83 = v43;
  v84[0] = v47;
  sub_29D4F7770();
  sub_29D4F77D8();
  sub_29D4F7870(&qword_2A1A16800, sub_29D4F7770);
  sub_29D4F7870(&qword_2A1A166A0, sub_29D4F77D8);
  v48 = v68;
  sub_29D5B3B6C();

  sub_29D4F7870(&qword_2A1A172E0, sub_29D4F7688);
  v49 = v70;
  v50 = v74;
  sub_29D5B3B3C();
  (*(v69 + 8))(v48, v49);
  v51 = v73;
  sub_29D4F7CA0(v28, v73, type metadata accessor for HealthRecordsGeneratorContext);
  v52 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v53 = (v71 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_29D499F90(v51, v54 + v52);
  *(v54 + v53) = v81;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_29D4F7A9C;
  *(v55 + 24) = v54;
  sub_29D4A02FC(0, &qword_2A1A19818);
  sub_29D4F7870(&qword_2A1A170E8, sub_29D4F78B8);
  v56 = v75;
  v57 = v77;
  sub_29D5B3B2C();

  (*(v76 + 8))(v50, v57);
  sub_29D4F7870(&qword_2A1A171B8, sub_29D4F794C);
  v58 = v79;
  v59 = sub_29D5B3B1C();

  sub_29D4F7BA0(v28, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v78 + 8))(v56, v58);
  sub_29D4F7DB8(v80, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData);
  result = v82;
  v82[2] = v59;
  return result;
}

uint64_t sub_29D4F6344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D5B371C();
  v33[3] = *(v2 - 8);
  v33[4] = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v33[2] = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4F7D54(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v35 = v33 - v5;
  v6 = sub_29D5B1AAC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0EDC();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B143C();
  v15 = sub_29D5B10AC();

  if (v15)
  {
    v34 = a1;
    v16 = [v15 identifier];

    sub_29D5B0EBC();
    v17 = sub_29D5B0E8C();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    sub_29D5B140C();
    v36 = 0;
    v37 = 0xE000000000000000;
    MEMORY[0x29ED5E510](v17, v19);

    MEMORY[0x29ED5E510](58, 0xE100000000000000);
    (*(v7 + 104))(v9, *MEMORY[0x29EDC3F28], v6);
    sub_29D5B49DC();
    (*(v7 + 8))(v9, v6);
    sub_29D499EC0(v38, v38[3]);
    v20 = v35;
    sub_29D5B137C();

    v21 = sub_29D5B109C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_29D4F7DB8(v35, &qword_2A1A17398, MEMORY[0x29EDC37D8]);
      v23 = v34;
    }

    else
    {
      v27 = v35;
      v28 = sub_29D5B108C();
      v30 = v29;
      (*(v22 + 8))(v27, v21);
      v23 = v34;
      if (v30 >> 60 != 15)
      {
        sub_29D5B0BDC();
        swift_allocObject();
        sub_29D5B0BCC();
        v32 = type metadata accessor for UDCSnippetGeneratorData(0);
        sub_29D4F7870(&qword_2A1A18888, type metadata accessor for UDCSnippetGeneratorData);
        sub_29D5B0BBC();
        sub_29D4A96BC(v28, v30);

        (*(*(v32 - 8) + 56))(v23, 0, 1, v32);
        return sub_29D48F668(v38);
      }
    }

    v31 = type metadata accessor for UDCSnippetGeneratorData(0);
    (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
    return sub_29D48F668(v38);
  }

  v24 = type metadata accessor for UDCSnippetGeneratorData(0);
  v25 = *(*(v24 - 8) + 56);

  return v25(a1, 1, 1, v24);
}

uint64_t sub_29D4F6ACC(uint64_t a1)
{
  v2 = sub_29D5B377C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D48F564(a1, v28);
  v10 = sub_29D5B370C();
  v11 = sub_29D5B429C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v6;
    v13 = v12;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v13 = 136446466;
    v26 = type metadata accessor for UserDomainConceptPipeline();
    sub_29D4F7D08(0, qword_2A1A18478, type metadata accessor for UserDomainConceptPipeline);
    v14 = sub_29D5B3E7C();
    v16 = sub_29D501890(v14, v15, &v27);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    sub_29D499EC0(v28, v28[3]);
    sub_29D5B376C();
    sub_29D4F7870(&qword_2A1A172E8, MEMORY[0x29EDB8858]);
    v17 = sub_29D5B4C4C();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    sub_29D48F668(v28);
    v20 = sub_29D501890(v17, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_29D48C000, v10, v11, "[%{public}s] receivedSubscription %{public}s", v13, 0x16u);
    v21 = v24;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v21, -1, -1);
    MEMORY[0x29ED5FB80](v13, -1, -1);

    return (*(v7 + 8))(v9, v25);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    return sub_29D48F668(v28);
  }
}

uint64_t sub_29D4F6E24(uint64_t a1)
{
  sub_29D4F7C00();
  v3 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v32 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v32 - v10;
  v12 = sub_29D5B371C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  sub_29D4F7CA0(a1, v11, sub_29D4F7C00);
  v16 = sub_29D5B370C();
  v17 = sub_29D5B425C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = v17;
    v19 = v18;
    v35 = swift_slowAlloc();
    v37 = v35;
    *v19 = 136446466;
    v36 = type metadata accessor for UserDomainConceptPipeline();
    sub_29D4F7D08(0, qword_2A1A18478, type metadata accessor for UserDomainConceptPipeline);
    v20 = sub_29D5B3E7C();
    v33 = v12;
    v22 = sub_29D501890(v20, v21, &v37);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    sub_29D4F7CA0(v11, v9, sub_29D4F7C00);
    v23 = *(v3 + 48);
    v24 = *&v9[v23];
    v25 = sub_29D5B368C();
    (*(*(v25 - 8) + 32))(v6, v9, v25);
    *&v6[v23] = v24;
    v26 = sub_29D5B3E7C();
    v28 = v27;
    sub_29D4F7BA0(v11, sub_29D4F7C00);
    v29 = sub_29D501890(v26, v28, &v37);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_29D48C000, v16, v34, "[%{public}s] receiveOutput: %{public}s", v19, 0x16u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v30, -1, -1);
    MEMORY[0x29ED5FB80](v19, -1, -1);

    return (*(v13 + 8))(v15, v33);
  }

  else
  {

    sub_29D4F7BA0(v11, sub_29D4F7C00);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_29D4F71B8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v15 = sub_29D5B370C();
  v16 = sub_29D5B426C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = a1;
    v20 = v19;
    v39 = v19;
    v40 = a3;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v21 = sub_29D5B3E7C();
    v23 = sub_29D501890(v21, v22, &v39);
    v36 = v11;
    v24 = a2;
    v25 = v23;

    *(v18 + 4) = v25;
    *(v18 + 12) = 2082;
    v40 = type metadata accessor for UDCSnippetGenerator(0);
    sub_29D4F7D08(0, qword_2A1A18B20, type metadata accessor for UDCSnippetGenerator);
    v26 = sub_29D5B3E7C();
    v28 = sub_29D501890(v26, v27, &v39);
    a2 = v24;

    *(v18 + 14) = v28;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s]: Emitting %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v29 = v20;
    a1 = v37;
    MEMORY[0x29ED5FB80](v29, -1, -1);
    v30 = v18;
    a4 = v38;
    MEMORY[0x29ED5FB80](v30, -1, -1);

    (*(v12 + 8))(v14, v36);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  sub_29D4F7CA0(a2, v10, type metadata accessor for HealthRecordsGeneratorContext);
  v31 = type metadata accessor for UDCSnippetGenerator(0);
  swift_allocObject();
  v32 = a1;
  v33 = sub_29D5235A4(v10, a1);

  a4[3] = v31;
  result = sub_29D4F7870(qword_2A1A18C00, type metadata accessor for UDCSnippetGenerator);
  a4[4] = result;
  *a4 = v33;
  return result;
}

uint64_t sub_29D4F74F0()
{

  v1 = OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D4F7BA0(v0 + OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserDomainConceptPipeline()
{
  result = qword_2A1A18548;
  if (!qword_2A1A18548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4F760C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords25UserDomainConceptPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4F7688()
{
  if (!qword_2A1A172D8)
  {
    sub_29D4F7770();
    sub_29D4F77D8();
    sub_29D4F7870(&qword_2A1A16800, sub_29D4F7770);
    sub_29D4F7870(&qword_2A1A166A0, sub_29D4F77D8);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A172D8);
    }
  }
}

void sub_29D4F7770()
{
  if (!qword_2A1A167F8)
  {
    sub_29D5B368C();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A167F8);
    }
  }
}

void sub_29D4F77D8()
{
  if (!qword_2A1A16698)
  {
    sub_29D4F7D54(255, &qword_2A1A19648, sub_29D4E43A4, MEMORY[0x29EDC9C68]);
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16698);
    }
  }
}

uint64_t sub_29D4F7870(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D4F78B8()
{
  if (!qword_2A1A170E0)
  {
    sub_29D4F7688();
    sub_29D4F7870(&qword_2A1A172E0, sub_29D4F7688);
    v0 = sub_29D5B37EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A170E0);
    }
  }
}

void sub_29D4F794C()
{
  if (!qword_2A1A171B0)
  {
    sub_29D4F78B8();
    sub_29D4A02FC(255, &qword_2A1A19818);
    sub_29D4F7870(&qword_2A1A170E8, sub_29D4F78B8);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A171B0);
    }
  }
}

uint64_t sub_29D4F7A08(uint64_t a1, uint64_t a2)
{
  sub_29D4F7D54(0, qword_2A1A18848, type metadata accessor for UDCSnippetGeneratorData, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4F7A9C@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4F71B8(a1, v2 + v6, v7, a2);
}

uint64_t sub_29D4F7B50(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D4F7C00();
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_29D4F7BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D4F7C00()
{
  if (!qword_2A1A172F8)
  {
    sub_29D5B368C();
    sub_29D4F7D54(255, &qword_2A1A19648, sub_29D4E43A4, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A172F8);
    }
  }
}

uint64_t sub_29D4F7CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4F7D08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D4F7D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D4F7DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4F7D54(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for LabsOnboardingAppPluginViewController()
{
  result = qword_2A17A4488;
  if (!qword_2A17A4488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D4F7EB4(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for LabsOnboardingAppPluginViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D4F7F2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabsOnboardingAppPluginViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D4F7F6C(char a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewRecordsFeedItemViewController();
  v12.receiver = v1;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1 & 1);
  sub_29D5B36CC();
  v8 = sub_29D5B370C();
  v9 = sub_29D5B429C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29D48C000, v8, v9, "New Records tile did appear", v10, 2u);
    MEMORY[0x29ED5FB80](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_29D5B1E5C();
  v11 = sub_29D5B1E4C();
  sub_29D5B1E2C();
}

void sub_29D4F80FC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D4F7F6C(a3);
}

uint64_t sub_29D4F8150@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_2A17A4498;
  swift_beginAccess();
  sub_29D4B9790(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4B9414(&v9);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

void sub_29D4F8238(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_29D5B200C();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for NewRecordsFeedItemData(0);
  v10 = *(v9 - 1);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v33 - v14;
  sub_29D4FA52C(0, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v33 - v17;
  sub_29D4FA6EC(a1, v15, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    v19 = type metadata accessor for NewRecordsFeedItemViewData();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  else
  {
    sub_29D4FA5DC(v15, v12);
    v20 = v9[6];
    v21 = &v12[v9[5]];
    v22 = *(v21 + 1);
    v34 = *v21;
    v24 = *&v12[v20];
    v23 = *&v12[v20 + 8];
    v25 = type metadata accessor for NewRecordsFeedItemViewData();
    v26 = *(v25 + 24);
    v27 = sub_29D5B0EDC();
    (*(*(v27 - 8) + 16))(&v18[v26], v12, v27);
    v28 = *&v12[v9[7]];

    sub_29D4FA758(v12, type metadata accessor for NewRecordsFeedItemData);
    *v18 = v34;
    *(v18 + 1) = v22;
    *(v18 + 2) = v24;
    *(v18 + 3) = v23;
    *&v18[*(v25 + 28)] = v28;
    (*(*(v25 - 8) + 56))(v18, 0, 1, v25);
  }

  sub_29D52C65C(v18);
  sub_29D4FA580(v18, &qword_2A17A44C0, type metadata accessor for NewRecordsFeedItemViewData);
  v29 = sub_29D5B0EFC();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v35 + 8))(v5, v36);
  sub_29D4FA580(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  v30 = sub_29D5B3E1C();

  v31 = v38;
  [v38 setTitle_];

  v32 = sub_29D5B22DC();
  [v32 addTarget:v31 action:sel_didTapAction forControlEvents:64];
}

uint64_t sub_29D4F8750(void *a1)
{
  sub_29D5B1E5C();
  v2 = a1;
  v3 = sub_29D5B1E4C();
  sub_29D5B1E2C();

  memset(v5, 0, sizeof(v5));
  sub_29D4F92A4(v5);

  return sub_29D4FA758(v5, sub_29D4A63E4);
}

uint64_t sub_29D4F87E4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewRecordsFeedItemData(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v25 - v8;
  sub_29D4FA52C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v25 - v11;
  v13 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4FA6EC(v1 + v13, v9, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_29D4FA580(v9, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    v14 = sub_29D5B0E6C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  else
  {
    sub_29D4FA640(v9, v6, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA580(v9, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA6EC(&v6[*(v3 + 32)], v12, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    sub_29D4FA758(v6, type metadata accessor for NewRecordsFeedItemData);
    v15 = sub_29D5B0E6C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v12, 1, v15) != 1)
    {
      sub_29D4B971C();
      v22 = *(v21 + 48);
      (*(v16 + 32))(a1, v12, v15);
      v23 = *MEMORY[0x29EDC2188];
      v24 = sub_29D5B2E8C();
      (*(*(v24 - 8) + 104))(a1 + v22, v23, v24);
      v17 = MEMORY[0x29EDC2190];
      goto LABEL_5;
    }
  }

  v17 = MEMORY[0x29EDC2198];
LABEL_5:
  v18 = *v17;
  v19 = sub_29D5B2E9C();
  return (*(*(v19 - 8) + 104))(a1, v18, v19);
}

void sub_29D4F8BD8()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v25 - v5;
  v7 = sub_29D5B2C2C();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  sub_29D4B9790(v1 + v11, v29, &qword_2A1A19460, &qword_2A1A19470);
  v12 = v30;
  if (v30)
  {
    v13 = sub_29D499EC0(v29, v30);
    v14 = *(v12 - 8);
    MEMORY[0x2A1C7C4A8](v13);
    v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    sub_29D5B315C();
    (*(v14 + 8))(v16, v12);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v29);
      sub_29D5B36DC();
      v17 = sub_29D5B370C();
      v18 = sub_29D5B429C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_29D48C000, v17, v18, "User dismissed NewRecords tile", v19, 2u);
        MEMORY[0x29ED5FB80](v19, -1, -1);
      }

      (*(v27 + 8))(v6, v28);
      v29[0] = v1;
      type metadata accessor for NewRecordsFeedItemViewController();
      sub_29D4FA6A8(&unk_2A17A44C8);
      sub_29D5B212C();
      sub_29D5B1E5C();
      v20 = sub_29D5B1E4C();
      sub_29D5B1E2C();
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      sub_29D48F668(v29);
      v21 = v26;
      sub_29D5B36DC();
      v22 = sub_29D5B370C();
      v23 = sub_29D5B427C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_29D48C000, v22, v23, "didTapDismis invoked for tile without a dismiss button!", v24, 2u);
        MEMORY[0x29ED5FB80](v24, -1, -1);
      }

      (*(v27 + 8))(v21, v28);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D4F905C()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v0 + v5, v15, &qword_2A1A19460, &qword_2A1A19470);
  v7 = v16;
  if (v16)
  {
    v8 = sub_29D499EC0(v15, v16);
    v9 = *(v7 - 8);
    MEMORY[0x2A1C7C4A8](v8);
    v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v11);
    sub_29D5B315C();
    (*(v9 + 8))(v11, v7);
    v12 = (*(v2 + 88))(v4, v1);
    v13 = *MEMORY[0x29EDC1D20];
    if (v12 != *MEMORY[0x29EDC1D20])
    {
      (*(v2 + 8))(v4, v1);
    }

    sub_29D48F668(v15);
    return v12 == v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4F92A4(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_29D5B371C();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewRecordsFeedItemData(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_29D5B0EDC();
  v45 = *(v13 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v46 = &v44 - v17;
  v18 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D4FA6EC(v2 + v18, v12, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_29D4FA580(v12, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    sub_29D5B36DC();
    v19 = sub_29D5B370C();
    v20 = sub_29D5B427C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_29D48C000, v19, v20, "Error tapping on NewRecords feed item without an accountId", v21, 2u);
      MEMORY[0x29ED5FB80](v21, -1, -1);
    }

    return (*(v47 + 8))(v5, v48);
  }

  else
  {
    sub_29D4FA640(v12, v9, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA580(v12, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    v23 = v45;
    (*(v45 + 16))(v16, v9, v13);
    sub_29D4FA758(v9, type metadata accessor for NewRecordsFeedItemData);
    v24 = v46;
    (*(v23 + 32))(v46, v16, v13);
    sub_29D5B1CBC();
    v25 = sub_29D5B1C8C();
    v26 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x70);
    swift_beginAccess();
    result = sub_29D4B9790(v2 + v26, v49, &qword_2A1A19460, &qword_2A1A19470);
    v27 = v50;
    if (v50)
    {
      v28 = v13;
      v29 = sub_29D499EC0(v49, v50);
      v30 = *(v27 - 8);
      MEMORY[0x2A1C7C4A8](v29);
      v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v32);
      v33 = sub_29D5B314C();
      (*(v30 + 8))(v32, v27);
      v34 = sub_29D5B1C9C();

      sub_29D48F668(v49);
      sub_29D4F8150(v49);
      sub_29D499EC0(v49, v50);
      v35 = sub_29D5B24EC();
      sub_29D48F668(v49);
      sub_29D4FA640(v44, v49, sub_29D4A63E4);
      v36 = v50;
      if (v50)
      {
        v37 = sub_29D499EC0(v49, v50);
        v38 = v28;
        v39 = v23;
        v40 = *(v36 - 8);
        MEMORY[0x2A1C7C4A8](v37);
        v42 = &v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v40 + 16))(v42);
        v43 = sub_29D5B4C6C();
        (*(v40 + 8))(v42, v36);
        v23 = v39;
        v28 = v38;
        v24 = v46;
        sub_29D48F668(v49);
      }

      else
      {
        v43 = 0;
      }

      [v2 showViewController:v35 sender:{v43, v44}];

      swift_unknownObjectRelease();
      return (*(v23 + 8))(v24, v28);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_29D4F9998(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D5B3E5C();
    v6 = &a1[qword_2A17A4498];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    v7 = qword_2A17ABEF8;
    v8 = *MEMORY[0x29EDC1E68];
    v9 = sub_29D5B2CAC();
    (*(*(v9 - 8) + 104))(&a1[v7], v8, v9);
    a1[qword_2A17ABF00] = 1;
    v10 = a4;
    v11 = sub_29D5B3E1C();
  }

  else
  {
    v12 = &a1[qword_2A17A4498];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 4) = 0;
    v13 = qword_2A17ABEF8;
    v14 = *MEMORY[0x29EDC1E68];
    v15 = sub_29D5B2CAC();
    (*(*(v15 - 8) + 104))(&a1[v13], v14, v15);
    a1[qword_2A17ABF00] = 1;
    v16 = a4;
    v11 = 0;
  }

  v19.receiver = a1;
  v19.super_class = type metadata accessor for NewRecordsFeedItemViewController();
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, v11, a4);

  return v17;
}

id sub_29D4F9B34(_BYTE *a1, uint64_t a2, void *a3)
{
  v5 = &a1[qword_2A17A4498];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = qword_2A17ABEF8;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  a1[qword_2A17ABF00] = 1;
  v12.receiver = a1;
  v12.super_class = type metadata accessor for NewRecordsFeedItemViewController();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v9);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_29D4F9C28()
{
  sub_29D4B9414(v0 + qword_2A17A4498);
  v1 = qword_2A17ABEF8;
  v2 = sub_29D5B2CAC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D4F9CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4F9CD8(uint64_t a1)
{
  sub_29D4B9414(a1 + qword_2A17A4498);
  v2 = qword_2A17ABEF8;
  v3 = sub_29D5B2CAC();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for NewRecordsFeedItemViewController()
{
  result = qword_2A17A44A0;
  if (!qword_2A17A44A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4F9DA0()
{
  result = sub_29D5B2CAC();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D4F9E54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_2A17ABEF8;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4F9EF4@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v2 = sub_29D5B371C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewRecordsFeedItemData(0);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FA52C(0, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_29D5B0EDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v29 - v15;
  v17 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4FA6EC(v1 + v17, v9, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
  if ((*(v5 + 48))(v9, 1, v4))
  {
    v18 = v33;
    sub_29D4FA580(v9, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    v19 = v30;
    sub_29D5B36BC();
    v20 = sub_29D5B370C();
    v21 = sub_29D5B427C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_29D48C000, v20, v21, "NewRecordsFeedItemViewController - Error accessing NewRecordsFeedItemData.accountId", v22, 2u);
      MEMORY[0x29ED5FB80](v22, -1, -1);
    }

    (*(v31 + 8))(v19, v32);
    v23 = v18;
    sub_29D5B0ECC();
  }

  else
  {
    v24 = v29;
    sub_29D4FA640(v9, v29, type metadata accessor for NewRecordsFeedItemData);
    sub_29D4FA580(v9, &qword_2A17A44B8, type metadata accessor for NewRecordsFeedItemData);
    (*(v11 + 16))(v14, v24, v10);
    sub_29D4FA758(v24, type metadata accessor for NewRecordsFeedItemData);
    v25 = *(v11 + 32);
    v25(v16, v14, v10);
    v23 = v33;
    v25(v33, v16, v10);
  }

  v26 = *MEMORY[0x29EDC41D0];
  v27 = sub_29D5B23CC();
  return (*(*(v27 - 8) + 104))(v23, v26, v27);
}

uint64_t sub_29D4FA380()
{
  v1 = *v0;
  v2 = *((*MEMORY[0x29EDCA1E8] & **v0) + 0x70);
  swift_beginAccess();
  result = sub_29D4B9790(v1 + v2, v11, &qword_2A1A19460, &qword_2A1A19470);
  v4 = v12;
  if (v12)
  {
    v5 = sub_29D499EC0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_29D5B314C();
    (*(v6 + 8))(v8, v4);
    sub_29D48F668(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D4FA52C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4FA580(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D4FA52C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4FA5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewRecordsFeedItemData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4FA640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4FA6A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewRecordsFeedItemViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4FA6EC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D4FA52C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D4FA758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4FA7B8()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0EFC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_29D5B1FDC();
  v8 = sub_29D5B2A0C();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  result = sub_29D4A24B4(v6);
  qword_2A1A1A580 = v8;
  *algn_2A1A1A588 = v10;
  return result;
}

uint64_t sub_29D4FA964()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0EFC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_29D5B1FDC();
  v8 = sub_29D5B2A0C();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  result = sub_29D4A24B4(v6);
  qword_2A17ABF08 = v8;
  unk_2A17ABF10 = v10;
  return result;
}

uint64_t sub_29D4FAB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D4FABA8(uint64_t a1)
{
  v2 = sub_29D4FC544();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4FABE4(uint64_t a1)
{
  v2 = sub_29D4FC544();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4FAC20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4FC598(0, &qword_2A1A16248, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v14 - v8;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4FC544();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v10 = sub_29D5B4B2C();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = sub_29D48F668(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_29D4FADAC(void *a1)
{
  sub_29D4FC598(0, &qword_2A1A16228, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4FC544();
  sub_29D5B4DCC();
  sub_29D5B4BCC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D4FAEF8()
{
  sub_29D5B324C();
  result = sub_29D5B323C();
  qword_2A1A19370 = v1;
  return result;
}

uint64_t sub_29D4FAF2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___factory;
  swift_beginAccess();
  sub_29D4B9790(v1 + v4, &v9, &unk_2A17A4DB0, &unk_2A17A4570);
  if (v10)
  {
    return sub_29D497868(&v9, a1);
  }

  sub_29D4A0598(&v9, &unk_2A17A4DB0, &unk_2A17A4570);
  v6 = sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  v8 = MEMORY[0x29EDC4178];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = v7;
  sub_29D48F564(a1, &v9);
  swift_beginAccess();
  sub_29D4B9800(&v9, v2 + v4);
  return swift_endAccess();
}

id sub_29D4FB02C()
{
  v1 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label);
  }

  else
  {
    v4 = v0;
    sub_29D5B2D5C();
    sub_29D48F51C(0, &unk_2A1A19440);
    sub_29D5B458C();
    v5 = [objc_opt_self() linkColor];
    v6 = sub_29D5B461C();
    [v6 setLineBreakMode_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29D4FB148()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v2 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = sub_29D4FB02C();
  [v4 addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result heightAnchor];

  v8 = [v7 constraintGreaterThanOrEqualToConstant_];
  [v8 setActive_];

  v9 = *&v0[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label];
  v10 = [v0 view];
  if (qword_2A1A19360 != -1)
  {
    swift_once();
  }

  sub_29D5B451C();
  [v9 hk:v10 alignConstraintsWithView:? insets:?];

  return sub_29D4FB4BC();
}

void sub_29D4FB384(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v5 = sub_29D5B3E1C();
    [v2 setAccessibilityIdentifier_];

    v6 = sub_29D4FB02C();
    sub_29D4FC460();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_29D5B5E20;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 48) = 0x656C746954;
    *(v7 + 56) = 0xE500000000000000;
    v8 = sub_29D5B401C();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v9 = sub_29D4FB02C();
    [v9 setAccessibilityIdentifier_];
  }
}

uint64_t sub_29D4FB4BC()
{
  v1 = v0;
  v23[1] = swift_getObjectType();
  v2 = sub_29D5B371C();
  v23[2] = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v3 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context;
  swift_beginAccess();
  result = sub_29D4B9790(v0 + v3, &v24, &qword_2A1A19460, &qword_2A1A19470);
  v5 = v25;
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = sub_29D499EC0(&v24, v25);
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_29D5B317C();
  v12 = v11;
  (*(v7 + 8))(v9, v5);
  result = sub_29D48F668(&v24);
  if (v12 >> 60 == 15)
  {
    return result;
  }

  sub_29D5B0BDC();
  swift_allocObject();
  sub_29D5B0BCC();
  sub_29D4FC40C();
  sub_29D5B0BBC();

  v13 = sub_29D4FB02C();

  v14 = sub_29D5B3E1C();

  [v13 setText_];

  result = sub_29D4B9790(v1 + v3, &v24, &qword_2A1A19460, &qword_2A1A19470);
  if (!v25)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v15 = v25;
  v16 = sub_29D499EC0(&v24, v25);
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19);
  v20 = sub_29D5B316C();
  v22 = v21;
  (*(v17 + 8))(v19, v15);
  sub_29D4FB384(v20, v22);
  sub_29D4A96BC(v10, v12);

  return sub_29D48F668(&v24);
}

void sub_29D4FB99C()
{
  v1 = v0;
  v2 = sub_29D5B20DC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 navigationController];
  if (!v6 || (v7 = v6, v8 = [v6 topViewController], v7, !v8) || (sub_29D4FAF2C(v12), sub_29D499EC0(v12, v13), v9 = sub_29D5B24FC(), v8, sub_29D48F668(v12), (v9 & 1) == 0))
  {
    sub_29D4FAF2C(v12);
    sub_29D499EC0(v12, v13);
    (*(v3 + 104))(v5, *MEMORY[0x29EDC4148], v2);
    v10 = sub_29D5B24DC();
    (*(v3 + 8))(v5, v2);
    sub_29D48F668(v12);
    [v1 showViewController:v10 sender:v1];
  }
}

id sub_29D4FBC04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v3[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___factory];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_profile;
  sub_29D5B1CBC();
  v11 = sub_29D5B1C8C();
  v12 = sub_29D5B1C5C();

  *&v4[v10] = v12;
  *&v4[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label] = 0;
  if (a2)
  {
    v13 = sub_29D5B3E1C();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_29D4FBD78(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v1[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___factory];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_profile;
  sub_29D5B1CBC();
  v8 = sub_29D5B1C8C();
  v9 = sub_29D5B1C5C();

  *&v2[v7] = v9;
  *&v2[OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController____lazy_storage___label] = 0;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_29D4FBE88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingOnboardingTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4FBF90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context;
  swift_beginAccess();
  return sub_29D4B9790(v1 + v3, a1, &qword_2A1A19460, &qword_2A1A19470);
}

uint64_t sub_29D4FC000(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D4FB4BC();
  return sub_29D4A0598(a1, &qword_2A1A19460, &qword_2A1A19470);
}

uint64_t (*sub_29D4FC084(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D4FC0E8;
}

uint64_t sub_29D4FC0E8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D4FB4BC();
  }

  return result;
}

void sub_29D4FC11C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x29EDC42A0]) initWithContext:6 onboardingOptions:1 sourceIdentifier:0 profile:*(*v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_profile) existingAccount:0];
  [v2 setOnboardingDelegate_];
  [v1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_29D4FC1C0()
{
  v1 = (*v0 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_29D4FC21C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13HealthRecords43ClinicalSharingOnboardingTileViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_29D4FC2E8(char a1)
{
  v3 = [*v1 view];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      sub_29D48F51C(0, &unk_2A1A19430);
      v5 = sub_29D5B45FC();
    }

    else
    {
      v5 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    }

    v6 = v5;
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_29D4FC3B8()
{
  result = qword_2A1A17498;
  if (!qword_2A1A17498)
  {
    type metadata accessor for ClinicalSharingOnboardingTileViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A17498);
  }

  return result;
}

unint64_t sub_29D4FC40C()
{
  result = qword_2A1A174A0;
  if (!qword_2A1A174A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A174A0);
  }

  return result;
}

void sub_29D4FC460()
{
  if (!qword_2A1A1A398)
  {
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1A398);
    }
  }
}

uint64_t sub_29D4FC4B0(uint64_t a1, int a2)
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

uint64_t sub_29D4FC4F8(uint64_t result, int a2, int a3)
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

unint64_t sub_29D4FC544()
{
  result = qword_2A1A194B0;
  if (!qword_2A1A194B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A194B0);
  }

  return result;
}

void sub_29D4FC598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D4FC544();
    v7 = a3(a1, &type metadata for ClinicalSharingOnboardingTileViewController.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D4FC610()
{
  result = qword_2A17A4580;
  if (!qword_2A17A4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4580);
  }

  return result;
}

unint64_t sub_29D4FC668()
{
  result = qword_2A1A19498;
  if (!qword_2A1A19498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19498);
  }

  return result;
}

unint64_t sub_29D4FC6C0()
{
  result = qword_2A1A194A0;
  if (!qword_2A1A194A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A194A0);
  }

  return result;
}

uint64_t static ConceptSharableModelVersioning.stringIdentifier(for:)()
{
  swift_getMetatypeMetadata();
  v0 = sub_29D5B3E7C();
  MEMORY[0x29ED5E510](v0);

  MEMORY[0x29ED5E510](3815994, 0xE300000000000000);

  sub_29D5B414C();
  return 0;
}

uint64_t static ConceptSharableModelVersioning.version(from:)()
{
  swift_getMetatypeMetadata();
  sub_29D5B3E7C();
  MEMORY[0x29ED5E510](3815994, 0xE300000000000000);

  v0 = sub_29D5B3F9C();

  if (v0)
  {
    sub_29D4B343C();
    v1 = sub_29D5B476C();

    if (v1[2] == 2)
    {
      v2 = v1[6];
      v3 = v1[7];

      sub_29D4FC938(v2, v3);

      return 0;
    }
  }

  return 0;
}

BOOL sub_29D4FC938(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_29D5B493C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_29D4FCA30@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_29D4FCAB0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D4FEF8C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4FF400();
  v19[0] = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = ObjectType;
  v13 = MEMORY[0x29EDB8AD0];
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  sub_29D4FF040(&qword_2A1A165A0, &qword_2A1A16598, v13, sub_29D4FF4C8);
  v14 = v1;
  sub_29D5B3A9C();
  sub_29D4FF09C(&qword_2A1A16520, sub_29D4FEF8C);
  v15 = sub_29D5B3B1C();
  (*(v5 + 8))(v7, v4);
  v19[1] = v15;
  sub_29D4FF4C8(0, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
  sub_29D4FF56C(0, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
  sub_29D4FF5D0();
  sub_29D5B3B7C();

  sub_29D4FF09C(&qword_2A1A16F10, sub_29D4FF400);
  v16 = v19[0];
  v17 = sub_29D5B3B1C();
  (*(v9 + 8))(v11, v16);
  return v17;
}

uint64_t sub_29D4FCE00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v4 = a1;
  result = sub_29D5B3A6C();
  *a2 = result;
  return result;
}

void sub_29D4FCEA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_29D4FF74C;
  *(v7 + 24) = v6;
  v9[4] = sub_29D4FEF84;
  v9[5] = v7;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D4FD03C;
  v9[3] = &unk_2A2428D80;
  v8 = _Block_copy(v9);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v8);
}

void sub_29D4FCFB4(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    if (!a1)
    {
      a1 = MEMORY[0x29EDCA190];
    }

    a3(a1, 0);
  }
}

uint64_t sub_29D4FD03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_29D48F51C(0, &qword_2A1A19640);
    v4 = sub_29D5B402C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_29D4FD0E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  sub_29D4FF2F4(0, &qword_2A1A165A8, sub_29D4FF370, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v4 = a1;
  result = sub_29D5B3A6C();
  *a2 = result;
  return result;
}

void sub_29D4FD198(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_29D4FF3F4;
  *(v7 + 24) = v6;
  v9[4] = sub_29D4FF3F8;
  v9[5] = v7;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D4FD03C;
  v9[3] = &unk_2A2428F88;
  v8 = _Block_copy(v9);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v8);
}

void sub_29D4FD2A8(unint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  v3 = a3;
  if (a2)
  {
    v5 = a2;
    v3(a2, 1);
  }

  else if (a1)
  {
    v13 = MEMORY[0x29EDCA190];
    if (a1 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
    {
      v12 = v3;
      v8 = 0;
      v3 = &off_29F351000;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x29ED5EF30](v8, a1);
        }

        else
        {
          if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ([v9 isSharingToProvider])
        {
          sub_29D5B498C();
          sub_29D5B49BC();
          sub_29D5B49CC();
          sub_29D5B499C();
        }

        else
        {
        }

        ++v8;
        if (v11 == i)
        {
          v12(v13, 0);
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v3(MEMORY[0x29EDCA190], 0);
LABEL_24:
  }

  else
  {
    a3(MEMORY[0x29EDCA190], 0);
  }
}

uint64_t sub_29D4FD49C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D4FEF8C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = ObjectType;
  v9 = MEMORY[0x29EDB8AD0];
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  sub_29D4FF040(&qword_2A1A165A0, &qword_2A1A16598, v9, sub_29D4FF4C8);
  v10 = v1;
  sub_29D5B3A9C();
  sub_29D4FF09C(&qword_2A1A16520, sub_29D4FEF8C);
  v11 = sub_29D5B3B1C();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_29D4FD660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  sub_29D4FF56C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_29D5B359C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF538();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v37 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x2A1C7C4A8](v10);
  v42 = &v31 - v13;
  v14 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    do
    {
      v16 = 0;
      v17 = v14 & 0xC000000000000001;
      v41 = v14 & 0xFFFFFFFFFFFFFF8;
      v18 = (v7 + 48);
      v34 = (v7 + 32);
      v19 = MEMORY[0x29EDCA190];
      v35 = v14 & 0xC000000000000001;
      v36 = v15;
      v33 = v14;
      while (1)
      {
        if (v17)
        {
          v20 = MEMORY[0x29ED5EF30](v16, v14);
        }

        else
        {
          if (v16 >= *(v41 + 16))
          {
            goto LABEL_18;
          }

          v20 = *(v14 + 8 * v16 + 32);
        }

        v7 = v20;
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_29D5B438C();
        if ((*v18)(v5, 1, v6) == 1)
        {

          result = sub_29D4FF644(v5);
        }

        else
        {
          v22 = *v34;
          v23 = v40;
          (*v34)(v40);
          v24 = *(v39 + 48);
          v25 = v6;
          v26 = v37;
          *v37 = v7;
          v27 = v23;
          v28 = v25;
          (v22)(v26 + v24, v27);
          sub_29D4FF6D0(v26, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_29D515584(0, v19[2] + 1, 1, v19);
          }

          v30 = v19[2];
          v29 = v19[3];
          v7 = (v30 + 1);
          v6 = v28;
          if (v30 >= v29 >> 1)
          {
            v19 = sub_29D515584(v29 > 1, v30 + 1, 1, v19);
          }

          v14 = v33;
          v19[2] = v7;
          result = sub_29D4FF6D0(v42, v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30);
          v17 = v35;
          v15 = v36;
        }

        ++v16;
        if (v21 == v15)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_29D5B485C();
      v15 = result;
    }

    while (result);
  }

  v19 = MEMORY[0x29EDCA190];
LABEL_21:
  *v32 = v19;
  return result;
}

uint64_t sub_29D4FDA2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_29D4FF4C8(0, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v7 = a1;
  result = sub_29D5B3A6C();
  *a3 = result;
  return result;
}

void sub_29D4FDAD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_29D4FF74C;
  v9[3] = v8;
  v9[4] = a4;
  v11[4] = sub_29D4FF0EC;
  v11[5] = v9;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D4FD03C;
  v11[3] = &unk_2A2428E48;
  v10 = _Block_copy(v11);

  [a3 fetchAllAccountsWithCompletion_];
  _Block_release(v10);
}

void sub_29D4FDBF4(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    sub_29D5B255C();
    swift_allocObject();

    sub_29D5B254C();
    v6 = sub_29D5B253C();

    a3(v6, 0);
  }

  else
  {
    a3(MEMORY[0x29EDCA190], 0);
  }
}

uint64_t sub_29D4FDCFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  v4 = MEMORY[0x29EDB8AD0];
  sub_29D4FF27C(0, &qword_2A1A16568, MEMORY[0x29EDB8AD0]);
  swift_allocObject();
  v5 = a1;
  sub_29D5B3A6C();
  sub_29D4FF040(&qword_2A1A16570, &qword_2A1A16568, v4, sub_29D4FF27C);
  v6 = sub_29D5B3B1C();

  *a2 = v6;
  return result;
}

uint64_t sub_29D4FDE10(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D4FF56C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v14 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_29D5B410C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = sub_29D4FF174;
  v11[6] = v9;

  v12 = a3;
  sub_29D57657C(0, 0, v8, &unk_29D5B8B20, v11);
}

uint64_t sub_29D4FDF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2A1C73D48](sub_29D4FDFA8, 0, 0);
}

uint64_t sub_29D4FDFA8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_29D4FE0D4;
  v2 = swift_continuation_init();
  sub_29D4FF27C(0, &qword_2A1A16390, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D4FE230;
  v0[13] = &unk_2A2428EE8;
  v0[14] = v2;
  [v1 shouldShowHealthRecordsSectionWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D4FE0D4()
{

  return MEMORY[0x2A1C73D48](sub_29D4FE1B4, 0, 0);
}

uint64_t sub_29D4FE1B4()
{
  if (*(v0 + 169))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  (*(v0 + 152))(v1 | *(v0 + 168));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D4FE230(uint64_t a1, char a2, char a3)
{
  v5 = *(*(*sub_29D499EC0((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;

  return MEMORY[0x2A1C73CD0]();
}

uint64_t sub_29D4FE294(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = swift_getObjectType();
  v3 = sub_29D5B371C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D4FE378, 0, 0);
}

uint64_t sub_29D4FE378()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D4FE4B8;
  v2 = swift_continuation_init();
  sub_29D4FF2F4(0, qword_2A17A4588, type metadata accessor for HKFailableBooleanResult, MEMORY[0x29EDCA3C8]);
  v0[17] = v3;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D4FEDC4;
  v0[13] = &unk_2A2428CE0;
  v0[14] = v2;
  [v1 deviceConfigurationSupportsHealthRecords_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D4FE4B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_29D4FE820;
  }

  else
  {
    v2 = sub_29D4FE5C8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D4FE5C8()
{
  v22 = v0;
  v1 = v0[18];
  if (!v1)
  {
    sub_29D5B36CC();
    v2 = sub_29D5B370C();
    v3 = sub_29D5B428C();
    v15 = os_log_type_enabled(v2, v3);
    v5 = v0[26];
    v6 = v0[22];
    v7 = v0[23];
    if (v15)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      v16 = sub_29D5B4DFC();
      v18 = sub_29D501890(v16, v17, &v21);

      *(v8 + 4) = v18;
      v13 = "%s got an error response from deviceConfigurationSupportsHealthRecords(), which should have thrown";
      goto LABEL_9;
    }

LABEL_10:

    (*(v7 + 8))(v5, v6);
    goto LABEL_11;
  }

  if (v1 == 1)
  {
    v14 = 1;
    goto LABEL_12;
  }

  if (v1 != 2)
  {
    sub_29D5B36CC();
    v2 = sub_29D5B370C();
    v3 = sub_29D5B427C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[25];
    v6 = v0[22];
    v7 = v0[23];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      v10 = sub_29D5B4DFC();
      v12 = sub_29D501890(v10, v11, &v21);

      *(v8 + 4) = v12;
      v13 = "%s got unknown response from deviceConfigurationSupportsHealthRecords()";
LABEL_9:
      _os_log_impl(&dword_29D48C000, v2, v3, v13, v8, 0xCu);
      sub_29D48F668(v9);
      MEMORY[0x29ED5FB80](v9, -1, -1);
      MEMORY[0x29ED5FB80](v8, -1, -1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:
  v14 = 0;
LABEL_12:

  v19 = v0[1];

  return v19(v14);
}

uint64_t sub_29D4FE820()
{
  v28 = v0;
  v1 = *(v0 + 216);
  swift_willThrow();
  sub_29D5B36CC();
  v2 = v1;
  v3 = sub_29D5B370C();
  v4 = sub_29D5B427C();

  if (!os_log_type_enabled(v3, v4))
  {
    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    v22 = *(v0 + 176);

    (*(v21 + 8))(v20, v22);
    v15 = *(v0 + 152);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_10;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  v25 = *(v0 + 176);
  v26 = *(v0 + 192);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v27 = v9;
  *v7 = 136315394;
  v10 = sub_29D5B4DFC();
  v12 = sub_29D501890(v10, v11, &v27);

  *(v7 + 4) = v12;
  *(v7 + 12) = 2112;
  v13 = v5;
  v14 = _swift_stdlib_bridgeErrorToNSError();
  *(v7 + 14) = v14;
  *v8 = v14;
  _os_log_impl(&dword_29D48C000, v3, v4, "%s failed calling into deviceConfigurationSupportsHealthRecords(): %@", v7, 0x16u);
  sub_29D4FEE8C(v8);
  MEMORY[0x29ED5FB80](v8, -1, -1);
  sub_29D48F668(v9);
  MEMORY[0x29ED5FB80](v9, -1, -1);
  MEMORY[0x29ED5FB80](v7, -1, -1);

  (*(v6 + 8))(v26, v25);
  v15 = *(v0 + 152);
  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  v16 = objc_opt_self();
  v17 = v15;
  if ([v16 isAppleInternalInstall])
  {
    *(v0 + 224) = objc_opt_self();
    *(v0 + 232) = sub_29D5B3E1C();
    *(v0 + 240) = sub_29D5B3E1C();
    *(v0 + 248) = sub_29D5B0D1C();
    *(v0 + 256) = sub_29D5B40EC();
    *(v0 + 264) = sub_29D5B40DC();
    v19 = sub_29D5B40CC();

    return MEMORY[0x2A1C73D48](sub_29D4FEB74, v19, v18);
  }

LABEL_10:

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_29D4FEB74()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];

  v0[34] = [v4 basicAlertControllerWithTitle:v3 message:v1 internalError:v2];

  return MEMORY[0x2A1C73D48](sub_29D4FEC20, 0, 0);
}

uint64_t sub_29D4FEC20()
{
  *(v0 + 280) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D4FECAC, v2, v1);
}

uint64_t sub_29D4FECAC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 152);

  [v2 presentViewController:v1 animated:1 completion:0];

  return MEMORY[0x2A1C73D48](sub_29D4FED34, 0, 0);
}

uint64_t sub_29D4FED34()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_29D4FEDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_29D499EC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D4B3AF4();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x2A1C73CE0](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x2A1C73CD8](v5);
  }
}

uint64_t sub_29D4FEE8C(uint64_t a1)
{
  sub_29D4FEF1C(0, &qword_2A1A16270, &qword_2A1A16278, 0x29EDC9738, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D4FEF1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4FEF8C()
{
  if (!qword_2A1A16518)
  {
    v0 = MEMORY[0x29EDB8AD0];
    sub_29D4FF4C8(255, &qword_2A1A16598, MEMORY[0x29EDB8AD0]);
    sub_29D4FF040(&qword_2A1A165A0, &qword_2A1A16598, v0, sub_29D4FF4C8);
    v1 = sub_29D5B3AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16518);
    }
  }
}

uint64_t sub_29D4FF040(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a4(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4FF09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4FF0F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D4FF118()
{
  if (!qword_2A1A16398)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16398);
    }
  }
}

uint64_t sub_29D4FF174(int a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  v5 = BYTE2(a1) & 1;
  return v2(&v4);
}

uint64_t sub_29D4FF1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D4FDF84(a1, v4, v5, v6, v7, v8);
}

void sub_29D4FF27C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29D4FF118();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D4FF2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4FF370()
{
  if (!qword_2A1A16410)
  {
    sub_29D4FEF1C(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08, MEMORY[0x29EDC9A40]);
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16410);
    }
  }
}

void sub_29D4FF400()
{
  if (!qword_2A1A16F08)
  {
    sub_29D4FF4C8(255, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
    sub_29D4FF56C(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    sub_29D4FF5D0();
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16F08);
    }
  }
}

void sub_29D4FF4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D4FEF1C(255, &qword_2A1A16420, &qword_2A1A19640, 0x29EDC3E08, MEMORY[0x29EDC9A40]);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D4FF56C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D4FF5D0()
{
  result = qword_2A1A16730;
  if (!qword_2A1A16730)
  {
    sub_29D4FF4C8(255, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16730);
  }

  return result;
}

uint64_t sub_29D4FF644(uint64_t a1)
{
  sub_29D4FF56C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4FF6D0(uint64_t a1, uint64_t a2)
{
  sub_29D4CF538();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BaseFeedItemViewController.feedItemData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_29D5B472C();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t BaseFeedItemViewController.feedItemData.setter(uint64_t a1)
{
  sub_29D502000(a1);
  v2 = sub_29D5B472C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*BaseFeedItemViewController.feedItemData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = MEMORY[0x29EDCA1E8];
  v7 = *MEMORY[0x29EDCA1E8];
  v8 = sub_29D5B472C();
  v5[4] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[5] = v9;
  v11 = *(v9 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
    v7 = *v6;
  }

  else
  {
    v5[6] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v5[7] = v12;
  v13 = *((v7 & *v1) + 0x60);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v5[8] = v14;
  v5[9] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v12, &v1[v13], v8);
  return sub_29D4FFA50;
}

void sub_29D4FFA50(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_29D502000(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_29D502000(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t BaseFeedItemViewController.decoder.getter()
{
  v1 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x68);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = v0;
    sub_29D5B0BDC();
    swift_allocObject();
    v2 = sub_29D5B0BCC();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t BaseFeedItemViewController.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  return sub_29D4A9434(v1 + v3, a1);
}

uint64_t BaseFeedItemViewController.context.setter(uint64_t a1)
{
  sub_29D500D10();
  v3 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D500F18();
  return sub_29D4A93AC(a1);
}

void (*BaseFeedItemViewController.context.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  sub_29D4A9434(v1 + v5, v4);
  return sub_29D4FFD78;
}

void sub_29D4FFD78(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_29D4A9434(*a1, v2 + 40);
    BaseFeedItemViewController.context.setter(v2 + 40);
    sub_29D4A93AC(v2);
  }

  else
  {
    BaseFeedItemViewController.context.setter(*a1);
  }

  free(v2);
}

uint64_t BaseFeedItemViewController.reloadData()()
{
  v1 = *v0;
  v2 = *MEMORY[0x29EDCA1E8];
  v21[4] = *MEMORY[0x29EDCA1E8] & v1;
  v3 = sub_29D5B371C();
  v21[1] = *(v3 - 8);
  v21[2] = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v21[3] = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *((v2 & v1) + 0x50);
  v6 = sub_29D5B472C();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v21 - v10;
  result = BaseFeedItemViewController.context.getter(v24);
  v13 = v25;
  if (v25)
  {
    v14 = sub_29D499EC0(v24, v25);
    v15 = *(v13 - 8);
    MEMORY[0x2A1C7C4A8](v14);
    v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = sub_29D5B317C();
    v20 = v19;
    (*(v15 + 8))(v17, v13);
    sub_29D48F668(v24);
    if (v20 >> 60 == 15)
    {
      (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
      sub_29D502000(v9);
      return (*(v22 + 8))(v9, v23);
    }

    else
    {
      BaseFeedItemViewController.decoder.getter();
      sub_29D5B0BBC();

      (*(*(v5 - 8) + 56))(v11, 0, 1, v5);
      sub_29D502000(v11);
      (*(v22 + 8))(v11, v23);
      return sub_29D4A96BC(v18, v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BaseFeedItemViewController.deselectionBehavior(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC22C8];
  v3 = sub_29D5B2F7C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t BaseFeedItemViewController.didTapTile(sender:)()
{
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v5 = v0;
  v6 = sub_29D5B370C();
  v7 = sub_29D5B426C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController();
    swift_getMetatypeMetadata();
    v10 = sub_29D5B3E7C();
    v12 = sub_29D501890(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D48C000, v6, v7, "didTapTile: %{public}s", v8, 0xCu);
    sub_29D48F668(v9);
    MEMORY[0x29ED5FB80](v9, -1, -1);
    MEMORY[0x29ED5FB80](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_29D500654()
{
  v1 = *MEMORY[0x29EDCA1E8] & *v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 200))(v4);
  sub_29D5B36DC();
  v7 = v0;
  v8 = sub_29D5B370C();
  v9 = sub_29D5B426C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController();
    swift_getMetatypeMetadata();
    v12 = sub_29D5B3E7C();
    v14 = sub_29D501890(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29D48C000, v8, v9, "dataDidUpdate: %{public}s", v10, 0xCu);
    sub_29D48F668(v11);
    MEMORY[0x29ED5FB80](v11, -1, -1);
    MEMORY[0x29ED5FB80](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall BaseFeedItemViewController.viewDidLoad()()
{
  v1 = MEMORY[0x29EDCA1E8];
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BaseFeedItemViewController();
  v18.receiver = v0;
  v18.super_class = v6;
  v7 = objc_msgSendSuper2(&v18, sel_viewDidLoad);
  (*((*v1 & *v0) + 0xC8))(v7);
  sub_29D5B36DC();
  v8 = v0;
  v9 = sub_29D5B370C();
  v10 = sub_29D5B426C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    ObjectType = swift_getObjectType();
    swift_getMetatypeMetadata();
    v13 = sub_29D5B3E7C();
    v15 = sub_29D501890(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29D48C000, v9, v10, "viewDidLoad: %{public}s", v11, 0xCu);
    sub_29D48F668(v12);
    MEMORY[0x29ED5FB80](v12, -1, -1);
    MEMORY[0x29ED5FB80](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

void sub_29D500ABC(void *a1)
{
  v1 = a1;
  BaseFeedItemViewController.viewDidLoad()();
}

Swift::Void __swiftcall BaseFeedItemViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for BaseFeedItemViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1);
  BaseFeedItemViewController.context.getter(v13);
  v8 = v14;
  sub_29D4A93AC(v13);
  if (!v8)
  {
    sub_29D5B36DC();
    v9 = sub_29D5B370C();
    v10 = sub_29D5B427C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_29D48C000, v9, v10, "FeedItemViewControllerContext should be set before the tile appears", v11, 2u);
      MEMORY[0x29ED5FB80](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_29D500CBC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BaseFeedItemViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_29D500D10()
{
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v5 = v0;
  v6 = sub_29D5B370C();
  v7 = sub_29D5B426C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController();
    swift_getMetatypeMetadata();
    v10 = sub_29D5B3E7C();
    v12 = sub_29D501890(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D48C000, v6, v7, "contextWillUpdate: %{public}s", v8, 0xCu);
    sub_29D48F668(v9);
    MEMORY[0x29ED5FB80](v9, -1, -1);
    MEMORY[0x29ED5FB80](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_29D500F18()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = sub_29D5B371C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v25 - v9;
  v11 = *((v3 & v2) + 0x70);
  swift_beginAccess();
  sub_29D4A9434(v1 + v11, v26);
  v12 = v26[3];
  sub_29D4A93AC(v26);
  if (!v12)
  {
    sub_29D5B36DC();
    v13 = sub_29D5B370C();
    v14 = sub_29D5B427C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_29D48C000, v13, v14, "FeedItemViewControllerContext should never be null", v15, 2u);
      MEMORY[0x29ED5FB80](v15, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  BaseFeedItemViewController.reloadData()();
  sub_29D5B36DC();
  v16 = v1;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B426C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136446210;
    v25[1] = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController();
    swift_getMetatypeMetadata();
    v21 = sub_29D5B3E7C();
    v23 = sub_29D501890(v21, v22, v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_29D48C000, v17, v18, "contextDidUpdate: %{public}s", v19, 0xCu);
    sub_29D48F668(v20);
    MEMORY[0x29ED5FB80](v20, -1, -1);
    MEMORY[0x29ED5FB80](v19, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

id BaseFeedItemViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_29D5B3E1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BaseFeedItemViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x29EDCA1E8];
  (*(*(*((*MEMORY[0x29EDCA1E8] & *v3) + 0x50) - 8) + 56))(&v3[*((*MEMORY[0x29EDCA1E8] & *v3) + 0x60)], 1, 1, *((*MEMORY[0x29EDCA1E8] & *v3) + 0x50));
  *&v3[*((*v6 & *v3) + 0x68)] = 0;
  v7 = &v3[*((*v6 & *v3) + 0x70)];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  if (a2)
  {
    v8 = sub_29D5B3E1C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for BaseFeedItemViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id sub_29D501424(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return BaseFeedItemViewController.init(nibName:bundle:)(v5, v7, a4);
}

id BaseFeedItemViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BaseFeedItemViewController.init(coder:)(void *a1)
{
  v3 = MEMORY[0x29EDCA1E8];
  (*(*(*((*MEMORY[0x29EDCA1E8] & *v1) + 0x50) - 8) + 56))(&v1[*((*MEMORY[0x29EDCA1E8] & *v1) + 0x60)], 1, 1, *((*MEMORY[0x29EDCA1E8] & *v1) + 0x50));
  *&v1[*((*v3 & *v1) + 0x68)] = 0;
  v4 = &v1[*((*v3 & *v1) + 0x70)];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseFeedItemViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id BaseFeedItemViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5016A8(char *a1)
{
  v2 = MEMORY[0x29EDCA1E8];
  v3 = *((*MEMORY[0x29EDCA1E8] & *a1) + 0x60);
  v4 = sub_29D5B472C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = &a1[*((*v2 & *a1) + 0x70)];

  return sub_29D4A93AC(v5);
}

void (*sub_29D50179C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = BaseFeedItemViewController.context.modify(v2);
  return sub_29D50180C;
}

void sub_29D50180C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_29D501890(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29D50195C(v11, 0, 0, 1, a1, a2);
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
    sub_29D4A7420(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D48F668(v11);
  return v7;
}

unint64_t sub_29D50195C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29D501A68(a5, a6);
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
    result = sub_29D5B497C();
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

uint64_t sub_29D501A68(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D501AB4(a1, a2);
  sub_29D501BE4(&unk_2A24276F8);
  return v3;
}

uint64_t sub_29D501AB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_29D515C58(v5, 0);
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

  result = sub_29D5B497C();
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
        v10 = sub_29D5B3F4C();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D515C58(v10, 0);
        result = sub_29D5B492C();
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

uint64_t sub_29D501BE4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29D501CD0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_29D501CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D502718(0, &qword_2A1A161C8, MEMORY[0x29EDCA018], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_29D501DF4(const char *a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v7 = v1;
  v8 = sub_29D5B370C();
  v9 = sub_29D5B426C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController();
    swift_getMetatypeMetadata();
    v13 = sub_29D5B3E7C();
    v15 = sub_29D501890(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29D48C000, v8, v9, v18, v11, 0xCu);
    sub_29D48F668(v12);
    MEMORY[0x29ED5FB80](v12, -1, -1);
    MEMORY[0x29ED5FB80](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D502000(uint64_t a1)
{
  v3 = MEMORY[0x29EDCA1E8];
  sub_29D501DF4("dataWillUpdate: %{public}s");
  v4 = *((*v3 & *v1) + 0x60);
  swift_beginAccess();
  v5 = sub_29D5B472C();
  (*(*(v5 - 8) + 24))(&v1[v4], a1, v5);
  swift_endAccess();
  return sub_29D500654();
}

uint64_t _s13HealthRecords26BaseFeedItemViewControllerC13didSelectCell_2inySo6UIViewC_So0lG0CtF_0(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x29EDCA1E8] & *v1;
  v5 = *(v4 + 0x50);
  v6 = sub_29D5B472C();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v40 - v7;
  v43 = sub_29D5B371C();
  v9 = *(v43 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v43);
  v42 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v40 - v12;
  sub_29D5B36DC();
  v14 = v2;
  v15 = a1;
  v16 = sub_29D5B370C();
  v17 = sub_29D5B426C();

  v41 = v17;
  v18 = os_log_type_enabled(v16, v17);
  v46 = v9;
  v47 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40[1] = v2;
    v21 = v20;
    v49[0] = v20;
    *v19 = 136446466;
    ObjectType = swift_getObjectType();
    type metadata accessor for BaseFeedItemViewController();
    swift_getMetatypeMetadata();
    v22 = sub_29D5B3E7C();
    v24 = sub_29D501890(v22, v23, v49);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    ObjectType = v15;
    sub_29D5026CC();
    v25 = v15;
    v26 = sub_29D5B3E9C();
    v28 = sub_29D501890(v26, v27, v49);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_29D48C000, v16, v41, "didSelectCell: %{public}s %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v21, -1, -1);
    MEMORY[0x29ED5FB80](v19, -1, -1);

    v29 = v46;
  }

  else
  {

    v29 = v9;
  }

  v30 = *(v29 + 8);
  v31 = v43;
  v30(v13, v43);
  BaseFeedItemViewController.feedItemData.getter(v8);
  v32 = (*(*(v5 - 8) + 48))(v8, 1, v5);
  (*(v44 + 8))(v8, v45);
  if (v32 == 1)
  {
    v33 = v42;
    sub_29D5B36DC();
    v34 = sub_29D5B370C();
    v35 = sub_29D5B427C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_29D48C000, v34, v35, "User tapped tile before its data was available", v36, 2u);
      MEMORY[0x29ED5FB80](v36, -1, -1);
    }

    v30(v33, v31);
  }

  v49[3] = type metadata accessor for BaseFeedItemViewController();
  v49[0] = v14;
  v37 = *((*MEMORY[0x29EDCA1E8] & *v14) + 0xD0);
  v38 = v14;
  v37(v49);
  return sub_29D502648(v49);
}

uint64_t sub_29D5025A0()
{
  result = sub_29D5B472C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D502648(uint64_t a1)
{
  sub_29D502718(0, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D5026CC()
{
  result = qword_2A17A43C0;
  if (!qword_2A17A43C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A43C0);
  }

  return result;
}

void sub_29D502718(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for RecordKindFeedItemViewController()
{
  result = qword_2A17A4628;
  if (!qword_2A17A4628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5027B4()
{
  sub_29D504F04(319, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29D502880(uint64_t a1)
{
  v3 = type metadata accessor for RecordKindFeedItemData();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D504F04(0, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v12 - v8;
  v10 = qword_2A17A4610;
  swift_beginAccess();
  sub_29D505274(a1, v1 + v10);
  swift_endAccess();
  sub_29D505000(v1 + v10, v9, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  else
  {
    sub_29D4E42A0(v9, v6);
    sub_29D503114(v6, v12);
    sub_29D504F58(v6, type metadata accessor for RecordKindFeedItemData);
  }

  sub_29D5B2F8C();
  return sub_29D50506C(a1, qword_2A1A18A30, type metadata accessor for RecordKindFeedItemData);
}