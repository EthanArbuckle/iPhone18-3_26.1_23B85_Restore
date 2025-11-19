uint64_t sub_23B8101C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23B811BF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = (&v16 - v10);
  sub_23B811ACC(v2, &v16 - v10, &qword_27E188FA0, &qword_23B811F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23B811C14();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = *v11;
    sub_23B811CE4();
    v15 = sub_23B811C24();
    sub_23B811BB4();

    sub_23B811BE4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t CommunicationLimitsButton.init(question:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for CommunicationLimitsButton();
  *(a4 + *(result + 36)) = a1;
  v9 = (a4 + *(result + 40));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t CommunicationLimitsButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v25[0] = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v26 = *(v7 + 16);
  v9 = sub_23B811C74();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = (MEMORY[0x28223BE20])();
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v25 - v15;
  (*(v5 + 16))(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  *(v18 + 24) = v8;
  (*(v5 + 32))(v18 + v17, v25[0], a1);
  v19 = (v25[1] + *(a1 + 40));
  v20 = *v19;
  v21 = v19[1];
  sub_23B811C64();
  swift_getWitnessTable();
  v22 = v10[2];
  v22(v16, v14, v9);
  v23 = v10[1];
  v23(v14, v9);
  v22(v27, v16, v9);
  return (v23)(v16, v9);
}

uint64_t sub_23B8106F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B811C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CommunicationLimitsButton();
  sub_23B8101C0(v10);
  v13 = a2;
  v14 = a3;
  v15 = a1;
  sub_23B811C04();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23B810800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CommunicationLimitsButton();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v23 - v11;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E189050, &qword_23B812020) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v23 - v14;
  v16 = sub_23B811CD4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a2, v8);
  sub_23B811CB4();
  v17 = a1;
  v18 = sub_23B811CA4();
  v19 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  *(v20 + 6) = a1;
  (*(v9 + 32))(&v20[v19], v12, v8);
  sub_23B810DE4(0, 0, v15, &unk_23B812030, v20);
}

uint64_t sub_23B810A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_23B811CB4();
  v7[6] = sub_23B811CA4();
  v9 = sub_23B811C94();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_23B810AB0, v9, v8);
}

uint64_t sub_23B810AB0()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[3];
    sub_23B811BA4();
    v5 = v1;
    v0[9] = sub_23B811B94();
    v6 = *(v4 + *(type metadata accessor for CommunicationLimitsButton() + 36));
    v7 = *(MEMORY[0x277CE4438] + 4);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_23B810BE4;

    return MEMORY[0x282137188](v6, v5);
  }

  else
  {
    v9 = v0[6];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23B810BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_23B810D6C;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_23B810D00;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B810D00()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B810D6C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_23B810DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E189050, &qword_23B812020) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_23B811ACC(a3, v23 - v9, &unk_27E189050, &qword_23B812020);
  v11 = sub_23B811CD4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B811A64(v10);
  }

  else
  {
    sub_23B811CC4();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B811C94();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B811C84() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_23B811A64(a3);

      return v21;
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

  sub_23B811A64(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
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

uint64_t sub_23B81110C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CommunicationLimitsButton();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23B811C14();
    (*(*(v8 - 8) + 8))(v0 + v5, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = *(v7 + *(v3 + 36));

  v11 = *(v7 + *(v3 + 40) + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B811240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for CommunicationLimitsButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23B8106F0(v4, v1, v2);
}

void sub_23B811310()
{
  sub_23B811560();
  if (v0 <= 0x3F)
  {
    sub_23B8115B8();
    if (v1 <= 0x3F)
    {
      sub_23B811674();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B8113C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E188FA8, &qword_23B811FC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B81149C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E188FA8, &qword_23B811FC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_23B811560()
{
  if (!qword_27E189030)
  {
    sub_23B811C14();
    v0 = sub_23B811BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E189030);
    }
  }
}

void sub_23B8115B8()
{
  if (!qword_27E189038)
  {
    sub_23B811B74();
    sub_23B81161C();
    v0 = sub_23B811B64();
    if (!v1)
    {
      atomic_store(v0, &qword_27E189038);
    }
  }
}

unint64_t sub_23B81161C()
{
  result = qword_27E189040;
  if (!qword_27E189040)
  {
    sub_23B811B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E189040);
  }

  return result;
}

unint64_t sub_23B811674()
{
  result = qword_27E189048;
  if (!qword_27E189048)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E189048);
  }

  return result;
}

uint64_t sub_23B8116C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23B811C74();

  return swift_getWitnessTable();
}

uint64_t sub_23B811718()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for CommunicationLimitsButton();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E188FA0, &qword_23B811F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23B811C14();
    (*(*(v9 - 8) + 8))(v0 + v5, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = *(v8 + *(v3 + 36));

  v12 = *(v8 + *(v3 + 40) + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B81185C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for CommunicationLimitsButton() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23B811970;

  return sub_23B810A14(a1, v8, v9, v10, v1 + v7, v4, v5);
}

uint64_t sub_23B811970()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B811A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E189050, &qword_23B812020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B811ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}