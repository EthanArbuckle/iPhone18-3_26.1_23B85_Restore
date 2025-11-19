uint64_t static CredentialSession.isEligible.getter()
{
  v1 = sub_23AA95F8C();
  v0[29] = v1;
  v2 = *(v1 - 8);
  v0[30] = v2;
  v3 = *(v2 + 64) + 15;
  v0[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA763FC, 0, 0);
}

uint64_t sub_23AA763FC()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v2 + 104))(v1, *MEMORY[0x277D49158], v3);
  v4 = sub_23AA95F9C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_27DFC1768 != -1)
    {
      swift_once();
    }

    v0[32] = qword_27DFC29D8;

    return MEMORY[0x2822009F8](sub_23AA76578, 0, 0);
  }

  else
  {
    sub_23AA76B00();
    swift_allocError();
    *v5 = 15;
    v6 = v0[31];
    swift_willThrow();

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_23AA76578()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[32];
  v1[2] = v2;
  v1[7] = v1 + 34;
  v1[3] = sub_23AA768A8;
  v5 = swift_continuation_init();
  sub_23AA94B44();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v1[14] = sub_23AA76D44;
  v1[15] = v8;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_23AA76C84;
  v1[13] = &unk_284DAB6D8;
  v9 = _Block_copy(v1 + 10);
  v10 = v1[15];

  v11 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1788, &qword_23AA97630);
  if (swift_dynamicCast())
  {
    v12 = v1[26];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v5;
      v1[20] = sub_23AA76D78;
      v1[21] = v13;
      v1[16] = MEMORY[0x277D85DD0];
      v1[17] = 1107296256;
      v1[18] = sub_23AA76C18;
      v1[19] = &unk_284DAB728;
      v14 = _Block_copy(v1 + 16);
      v15 = v1[21];
      swift_unknownObjectRetain();

      [v12 computeEligibilityWithReply_];
      _Block_release(v14);
      swift_unknownObjectRelease();
      v16 = v1[26];
      goto LABEL_6;
    }
  }

  else
  {
    v1[26] = 0;
  }

  sub_23AA76B00();
  v17 = swift_allocError();
  *v18 = 12;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  swift_allocError();
  *v19 = v17;
  swift_continuation_throwingResumeWithError();
  v20 = v1[26];
LABEL_6:
  swift_unknownObjectRelease();

  return MEMORY[0x282200938](v3);
}

uint64_t sub_23AA768A8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23AA76A00, 0, 0);
  }

  else
  {
    v4 = *(v1 + 272);
    v5 = *(v1 + 248);

    v6 = *(v2 + 8);

    return v6(v4);
  }
}

uint64_t sub_23AA76A00()
{
  v1 = *(v0 + 264);
  *(v0 + 216) = v1;
  v2 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224) == 27;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    v7 = *(v0 + 248);
  }

  else
  {

    v4 = *(v0 + 264);
    v5 = *(v0 + 248);
    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6(0);
}

unint64_t sub_23AA76B00()
{
  result = qword_27DFC1778;
  if (!qword_27DFC1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1778);
  }

  return result;
}

uint64_t sub_23AA76B54(void *a1, uint64_t a2)
{
  if (a1)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v3 = a1;
    v4 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a2 + 64) + 40) = 1;

    return swift_continuation_throwingResume();
  }
}

void sub_23AA76C18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_23AA76C84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_23AA76CEC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23AA76D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA76D84(void *a1)
{
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  swift_allocError();
  *v2 = a1;
  v3 = a1;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_23AA76E20()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_23AA77614(0, &qword_27DFC17F8, 0x277CBEB98);
  sub_23AA76CEC(&qword_27DFC1800, &qword_23AA96D08);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA96C20;
  v1 = sub_23AA9606C();
  *(v0 + 56) = sub_23AA76CEC(&qword_27DFC1808, &qword_23AA96D10);
  *(v0 + 32) = v1;
  v2 = sub_23AA960EC();
  *(v0 + 88) = sub_23AA76CEC(&qword_27DFC1810, &qword_23AA96D18);
  *(v0 + 64) = v2;
  v3 = sub_23AA9610C();
  *(v0 + 120) = sub_23AA76CEC(&qword_27DFC1818, &qword_23AA96D20);
  *(v0 + 96) = v3;
  v4 = sub_23AA77614(0, &qword_27DFC1820, 0x277CBEA60);
  *(v0 + 152) = sub_23AA76CEC(&qword_27DFC1828, &qword_23AA96D28);
  *(v0 + 128) = v4;
  v5 = sub_23AA77614(0, &qword_27DFC1830, 0x277CCAD78);
  *(v0 + 184) = sub_23AA76CEC(&qword_27DFC1838, &qword_23AA96D30);
  *(v0 + 160) = v5;
  v6 = sub_23AA77614(0, &qword_27DFC1840, 0x277CCACA8);
  *(v0 + 216) = sub_23AA76CEC(&qword_27DFC1848, &qword_23AA96D38);
  *(v0 + 192) = v6;
  v7 = sub_23AA77614(0, &qword_27DFC1850, 0x277CBEA90);
  *(v0 + 248) = sub_23AA76CEC(&qword_27DFC1858, &qword_23AA96D40);
  *(v0 + 224) = v7;
  MEMORY[0x23EE927F0](v0);
  result = sub_23AA9623C();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_23AA77218()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_23AA77614(0, &qword_27DFC17F8, 0x277CBEB98);
  sub_23AA76CEC(&qword_27DFC1800, &qword_23AA96D08);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA96C20;
  v1 = sub_23AA9606C();
  *(v0 + 56) = sub_23AA76CEC(&qword_27DFC1808, &qword_23AA96D10);
  *(v0 + 32) = v1;
  v2 = sub_23AA960EC();
  *(v0 + 88) = sub_23AA76CEC(&qword_27DFC1810, &qword_23AA96D18);
  *(v0 + 64) = v2;
  v3 = sub_23AA9610C();
  *(v0 + 120) = sub_23AA76CEC(&qword_27DFC1818, &qword_23AA96D20);
  *(v0 + 96) = v3;
  v4 = sub_23AA77614(0, &qword_27DFC1820, 0x277CBEA60);
  *(v0 + 152) = sub_23AA76CEC(&qword_27DFC1828, &qword_23AA96D28);
  *(v0 + 128) = v4;
  v5 = sub_23AA77614(0, &qword_27DFC1830, 0x277CCAD78);
  *(v0 + 184) = sub_23AA76CEC(&qword_27DFC1838, &qword_23AA96D30);
  *(v0 + 160) = v5;
  v6 = sub_23AA77614(0, &qword_27DFC1840, 0x277CCACA8);
  *(v0 + 216) = sub_23AA76CEC(&qword_27DFC1848, &qword_23AA96D38);
  *(v0 + 192) = v6;
  v7 = sub_23AA77614(0, &qword_27DFC1850, 0x277CBEA90);
  *(v0 + 248) = sub_23AA76CEC(&qword_27DFC1858, &qword_23AA96D40);
  *(v0 + 224) = v7;
  MEMORY[0x23EE927F0](v0);
  result = sub_23AA9623C();
  __break(1u);
  return result;
}

uint64_t sub_23AA774B4()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

uint64_t sub_23AA77528()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

unint64_t sub_23AA7756C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23AA77604(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_23AA775B0()
{
  result = qword_27DFC17F0;
  if (!qword_27DFC17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC17F0);
  }

  return result;
}

unint64_t sub_23AA77604(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23AA77614(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t CredentialSession.enterWiredMode(using:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23AA7767C, v1, 0);
}

uint64_t sub_23AA7767C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_23AA77750;

  return sub_23AA77F3C(sub_23AA77F3C, &unk_23AA96D70);
}

uint64_t sub_23AA77750()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23AA77874;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_23AA7A350;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23AA77874()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_23AA778D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return MEMORY[0x2822009F8](sub_23AA778F4, a2, 0);
}

uint64_t sub_23AA778F4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, (v0 + 10));
  v3 = swift_task_alloc();
  v0[21] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_23AA77988, 0, 0);
}

uint64_t sub_23AA77988()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23AA77A38;
  v2 = swift_continuation_init();
  sub_23AA86364(v2, (v0 + 80), sub_23AA7A320, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA77A38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23AA77B90, 0, 0);
  }

  else
  {
    v4 = *(v1 + 168);

    sub_23AA7A178(v1 + 80);
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_23AA77B90()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA77C04, v2, 0);
}

uint64_t sub_23AA77C1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA77CC8;

  return sub_23AA778D8(a1, v5, v4);
}

uint64_t sub_23AA77CC8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23AA77DBC(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_23AA95F1C();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v11[4] = sub_23AA7A36C;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_23AA76C18;
    v11[3] = &unk_284DAB928;
    v7 = _Block_copy(v11);

    [v3 setCredentialInWiredModeWith:v5 reply:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v8 = swift_allocError();
    *v9 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v10 = v8;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA77F3C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_23AA78034;

  return v7(a1);
}

uint64_t sub_23AA78034()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23AA7A33C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23AA78168(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_23AA78260;

  return v7(a1);
}

uint64_t sub_23AA78260()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23AA78394, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23AA78394()
{
  v21 = v0;
  v1 = v0[5];
  v0[2] = v1;
  v2 = (v0 + 2);
  v3 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  v4 = swift_dynamicCast();
  v5 = v0[5];
  if (v4)
  {

    v6 = v0[3];
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v7 = sub_23AA95F7C();
    sub_23AA7A0D4(v7, qword_27DFC29B0);
    v8 = sub_23AA95F5C();
    v9 = sub_23AA9627C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = sub_23AA95FEC();
      v14 = sub_23AA8F920(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23AA75000, v8, v9, "Throwing public error for internal error with description %s", v10, 0xCu);
      sub_23AA7A258(v11);
      MEMORY[0x23EE92E60](v11, -1, -1);
      MEMORY[0x23EE92E60](v10, -1, -1);
    }

    sub_23AA76B00();
    swift_allocError();
    sub_23AA8A0C0(v6, v15);
    swift_willThrow();
    v16 = *v2;
  }

  else
  {

    sub_23AA76B00();
    swift_allocError();
    *v17 = 21;
    swift_willThrow();
    v16 = v5;
  }

  v18 = v0[1];

  return v18();
}

uint64_t CredentialSession.transceive(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23AA7860C, v2, 0);
}

uint64_t sub_23AA7860C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_23AA78838(v3, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23AA786D8;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  return (sub_23AA84530)(v0 + 2, v5, v7, v6);
}

uint64_t sub_23AA786D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_23AA78820;
  }

  else
  {
    v6 = sub_23AA78804;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23AA78838(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_23AA7888C(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_23AA95EEC();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v11[4] = sub_23AA7A2B0;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_23AA78AF4;
    v11[3] = &unk_284DAB8D8;
    v7 = _Block_copy(v11);

    [v3 transceive:v5 reply:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v8 = swift_allocError();
    *v9 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v10 = v8;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA78A18(uint64_t result, unint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    sub_23AA78838(result, a2);
    v10 = *(*(a4 + 64) + 40);
    *v10 = v8;
    v10[1] = a2;

    return swift_continuation_throwingResume();
  }

  return result;
}

uint64_t sub_23AA78AF4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_23AA95EFC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_23AA7A2B8(v4, v9);
}

uint64_t sub_23AA78BC0()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23AA78C70;
  v3 = *(v0 + 16);

  return sub_23AA83C44(sub_23AA83C44, v3);
}

uint64_t sub_23AA78C70()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_23AA78D9C;
  }

  else
  {
    v6 = sub_23AA7A350;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23AA78DD0()
{
  v1 = *(v0 + 256);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA78E54, 0, 0);
}

uint64_t sub_23AA78E54()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_23AA791D0;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, v5 + 48);
  v6 = swift_allocObject();
  v7 = *(v5 + 64);
  *(v6 + 16) = *(v5 + 48);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v5 + 80);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA7A2A4;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DAB838;
  v8 = _Block_copy(v1 + 22);
  v9 = v1[27];
  swift_unknownObjectRetain();

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 168) = 0;
    goto LABEL_7;
  }

  v11 = *(v5 + 168);
  if (!v11)
  {
LABEL_7:
    sub_23AA76B00();
    v19 = swift_allocError();
    *v20 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v21 = v19;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    v22 = *(v5 + 168);
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v1[20] = sub_23AA7A36C;
  v1[21] = v12;
  v1[16] = MEMORY[0x277D85DD0];
  v1[17] = 1107296256;
  v1[18] = sub_23AA76C18;
  v1[19] = &unk_284DAB888;
  v13 = _Block_copy((v5 + 48));
  v14 = v1[21];
  swift_unknownObjectRetain();

  [v11 endWiredModeWithReply_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v1[31];
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA791D0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23AA79320, 0, 0);
  }

  else
  {
    sub_23AA7A178(v1 + 80);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_23AA79320()
{
  v1 = *(v0 + 256);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA7938C, v1, 0);
}

uint64_t CredentialSession.performCardEmulationTransactionWithCurrentCredential(scene:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23AA793C8, v2, 0);
}

uint64_t sub_23AA793C8()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23AA79488;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_23AA83DFC();
}

uint64_t sub_23AA79488()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_23AA795CC;
  }

  else
  {
    v6 = sub_23AA795B4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_23AA795E4(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_23AA9615C();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v11[4] = sub_23AA7A1F4;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_23AA76C18;
    v11[3] = &unk_284DAB7E8;
    v7 = _Block_copy(v11);

    [v3 armCurrentCredentialForCardEmulationWithSceneIdentifier:v5 reply:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v8 = swift_allocError();
    *v9 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v10 = v8;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t CredentialSession.performTransactionInWiredMode(_:scene:instanceAID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_23AA79798, v5, 0);
}

uint64_t sub_23AA79798()
{
  v1 = *(v0 + 56);
  v8 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v8;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_23AA79894;

  return sub_23AA77F3C(sub_23AA77F3C, &unk_23AA96DA8);
}

uint64_t sub_23AA79894()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_23AA799B8;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_23AA7A350;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23AA799B8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_23AA79A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  return MEMORY[0x2822009F8](sub_23AA79A40, a2, 0);
}

uint64_t sub_23AA79A40()
{
  v1 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = *(v0 + 176);
  v2 = *(v0 + 152);
  swift_beginAccess();
  sub_23AA7A10C(v2 + 112, v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 48) = v1;

  return MEMORY[0x2822009F8](sub_23AA79AF0, 0, 0);
}

uint64_t sub_23AA79AF0()
{
  v1 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23AA79BA0;
  v2 = swift_continuation_init();
  sub_23AA86364(v2, (v0 + 80), sub_23AA7A168, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA79BA0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23AA79CF8, 0, 0);
  }

  else
  {
    v4 = *(v1 + 200);

    sub_23AA7A178(v1 + 80);
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_23AA79CF8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);

  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA79D6C, v2, 0);
}

uint64_t sub_23AA79D84(uint64_t a1)
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
  v10[1] = sub_23AA7A354;

  return sub_23AA79A1C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_23AA79E58(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_23AA95F1C();
    v6 = sub_23AA95EEC();
    v7 = sub_23AA9615C();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v13[4] = sub_23AA7A36C;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_23AA76C18;
    v13[3] = &unk_284DAB798;
    v9 = _Block_copy(v13);

    [v3 authorizeCredentialInWiredModeWith:v5 instanceAID:v6 sceneIdentifier:v7 reply:v9];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v10 = swift_allocError();
    *v11 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v12 = v10;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA7A030(void *a1)
{
  if (a1)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v2 = a1;
    v3 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_23AA7A0D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_23AA7A168(void **a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  sub_23AA79E58(a1, a2);
}

uint64_t sub_23AA7A1DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA7A210()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[6])
  {
    sub_23AA7A258(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA7A258(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23AA7A2B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23AA7A2CC(a1, a2);
  }

  return a1;
}

uint64_t sub_23AA7A2CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CredentialSession.performTransaction(using:scene:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23AA7A398, v3, 0);
}

uint64_t sub_23AA7A398()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_23AA7A484;

  return sub_23AA77F3C(sub_23AA77F3C, &unk_23AA96DD0);
}

uint64_t sub_23AA7A484()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_23AA7A5A8;
  }

  else
  {
    v7 = *(v2 + 40);
    v6 = *(v2 + 48);

    v5 = sub_23AA795B4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23AA7A5A8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_23AA7A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  return MEMORY[0x2822009F8](sub_23AA7A62C, a2, 0);
}

uint64_t sub_23AA7A62C()
{
  v1 = *(v0 + 176);
  v5 = *(v0 + 160);
  v2 = *(v0 + 152);
  swift_beginAccess();
  sub_23AA7A10C(v2 + 112, v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_23AA7A6DC, 0, 0);
}

uint64_t sub_23AA7A6DC()
{
  v1 = *(v0 + 184);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23AA7A78C;
  v2 = swift_continuation_init();
  sub_23AA86364(v2, (v0 + 80), sub_23AA7B21C, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA7A78C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23AA7A8E4, 0, 0);
  }

  else
  {
    v4 = *(v1 + 184);

    sub_23AA7A178(v1 + 80);
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_23AA7A8E4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);

  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA7A958, v2, 0);
}

uint64_t sub_23AA7A970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA77CC8;

  return sub_23AA7A60C(a1, v4, v5, v7, v6);
}

void sub_23AA7AA30(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_23AA95F1C();
    v6 = sub_23AA9615C();
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v12[4] = sub_23AA7A1F4;
    v12[5] = v7;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_23AA76C18;
    v12[3] = &unk_284DABA90;
    v8 = _Block_copy(v12);

    [v3 armCredentialForCardEmulation:v5 sceneIdentifier:v6 reply:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v9 = swift_allocError();
    *v10 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v11 = v9;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA7ABFC()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23AA78C70;
  v3 = *(v0 + 16);

  return sub_23AA843E8(sub_23AA843E8, v3);
}

uint64_t _s20CardEmulationOptionsVwet(unsigned int *a1, int a2)
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

_WORD *_s20CardEmulationOptionsVwst(_WORD *result, int a2, int a3)
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

uint64_t sub_23AA7ADAC()
{
  v1 = *(v0 + 256);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA7AE30, 0, 0);
}

uint64_t sub_23AA7AE30()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_23AA791D0;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, v5 + 48);
  v6 = swift_allocObject();
  v7 = *(v5 + 64);
  *(v6 + 16) = *(v5 + 48);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v5 + 80);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA7A2A4;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DAB9F0;
  v8 = _Block_copy(v1 + 22);
  v9 = v1[27];
  swift_unknownObjectRetain();

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 168) = 0;
    goto LABEL_7;
  }

  v11 = *(v5 + 168);
  if (!v11)
  {
LABEL_7:
    sub_23AA76B00();
    v19 = swift_allocError();
    *v20 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v21 = v19;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    v22 = *(v5 + 168);
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v1[20] = sub_23AA7A36C;
  v1[21] = v12;
  v1[16] = MEMORY[0x277D85DD0];
  v1[17] = 1107296256;
  v1[18] = sub_23AA76C18;
  v1[19] = &unk_284DABA40;
  v13 = _Block_copy((v5 + 48));
  v14 = v1[21];
  swift_unknownObjectRetain();

  [v11 endCardEmulationWithReply_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v1[31];
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA7B1AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[6])
  {
    sub_23AA7A258(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA7B1F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23AA7B21C(void **a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_23AA7AA30(a1, a2);
}

uint64_t *sub_23AA7B24C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_23AA7B26C()
{
  result = qword_27DFC1870;
  if (!qword_27DFC1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1870);
  }

  return result;
}

uint64_t CredentialSession.Credential.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23AA95F4C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CredentialSession.Credential.name.getter()
{
  v1 = (v0 + *(type metadata accessor for CredentialSession.Credential() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for CredentialSession.Credential()
{
  result = qword_27DFC1888;
  if (!qword_27DFC1888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t CredentialSession.Credential.state.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for CredentialSession.Credential() + 24));
  *a1 = v3;

  return sub_23AA7B3F8(v3);
}

unint64_t sub_23AA7B3F8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23AA7B408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23AA95F4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA95FDC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CredentialSession.Credential();
  v76 = *(v13 - 1);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA9600C();
  v17 = v13[10];
  sub_23AA95FFC();
  v18 = sub_23AA9602C();
  v20 = v19;
  v21 = &v16[v13[5]];
  *v21 = v18;
  v21[1] = v19;
  sub_23AA9605C();
  sub_23AA7BAEC(v12, &v79);
  v77 = v13;
  v78 = v16;
  if (v79 != 2)
  {
    v74 = a1;
    v75 = a2;
    *&v16[v13[6]] = v79;
    v36 = sub_23AA9604C();
    v37 = v36;
    if (v36 >> 62)
    {
      v38 = sub_23AA9631C();
    }

    else
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      v79 = MEMORY[0x277D84F90];
      sub_23AA8FFE0(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        __break(1u);
        goto LABEL_41;
      }

      v40 = 0;
      v41 = v79;
      do
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x23EE92830](v40, v37);
        }

        else
        {
          v42 = *(v37 + 8 * v40 + 32);
        }

        v43 = v42;
        v44 = sub_23AA960FC();
        v46 = v45;

        v79 = v41;
        v48 = *(v41 + 16);
        v47 = *(v41 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_23AA8FFE0((v47 > 1), v48 + 1, 1);
          v41 = v79;
        }

        ++v40;
        *(v41 + 16) = v48 + 1;
        v49 = v41 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
      }

      while (v38 != v40);

      v13 = v77;
      v39 = MEMORY[0x277D84F90];
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    *&v78[v13[7]] = v41;
    v52 = sub_23AA9603C();
    v53 = v52;
    if (v52 >> 62)
    {
      v54 = sub_23AA9631C();
      if (v54)
      {
LABEL_23:
        v79 = v39;
        sub_23AA8FFE0(0, v54 & ~(v54 >> 63), 0);
        if ((v54 & 0x8000000000000000) == 0)
        {
          v55 = 0;
          v56 = v79;
          do
          {
            if ((v53 & 0xC000000000000001) != 0)
            {
              v57 = MEMORY[0x23EE92830](v55, v53);
            }

            else
            {
              v57 = *(v53 + 8 * v55 + 32);
            }

            v58 = v57;
            v59 = sub_23AA960FC();
            v61 = v60;

            v79 = v56;
            v63 = *(v56 + 16);
            v62 = *(v56 + 24);
            if (v63 >= v62 >> 1)
            {
              sub_23AA8FFE0((v62 > 1), v63 + 1, 1);
              v56 = v79;
            }

            ++v55;
            *(v56 + 16) = v63 + 1;
            v64 = v56 + 16 * v63;
            *(v64 + 32) = v59;
            *(v64 + 40) = v61;
          }

          while (v54 != v55);

          v13 = v77;
          goto LABEL_35;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_23;
      }
    }

    v56 = MEMORY[0x277D84F90];
LABEL_35:
    v65 = v78;
    *&v78[v13[8]] = v56;
    v66 = v74;
    v67 = sub_23AA9601C();
    v68 = v75;
    if (!v67)
    {
      v69 = 1;
LABEL_39:

      *(v65 + v13[9]) = v69;
      sub_23AA7F24C(v65, v68);
      (*(v76 + 56))(v68, 0, 1, v13);
      return sub_23AA7F2B0(v65);
    }

    if (v67 == 1)
    {
      v69 = 0;
      goto LABEL_39;
    }

LABEL_42:
    result = sub_23AA9630C();
    __break(1u);
    return result;
  }

  v72 = v20;
  v73 = v17;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v74 = v4;
  v22 = sub_23AA95F7C();
  sub_23AA7A0D4(v22, qword_27DFC29B0);
  v23 = a1;
  v24 = sub_23AA95F5C();
  v25 = sub_23AA9629C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v79 = v71;
    *v26 = 136315138;
    sub_23AA9600C();
    v27 = sub_23AA95F0C();
    v75 = a2;
    v29 = v28;
    v30 = *(v5 + 8);
    v31 = v8;
    v32 = v74;
    v30(v31, v74);
    v33 = sub_23AA8F920(v27, v29, &v79);
    a2 = v75;

    *(v26 + 4) = v33;
    _os_log_impl(&dword_23AA75000, v24, v25, "Credential %s hidden from public due to LOCKED state", v26, 0xCu);
    v34 = v71;
    sub_23AA7A258(v71);
    MEMORY[0x23EE92E60](v34, -1, -1);
    MEMORY[0x23EE92E60](v26, -1, -1);

    v35 = v76;
  }

  else
  {

    v30 = *(v5 + 8);
    v35 = v76;
    v32 = v74;
  }

  v50 = v78;
  v30(v78, v32);

  v30(&v50[v73], v32);
  return (*(v35 + 56))(a2, 1, 1, v77);
}

uint64_t sub_23AA7BAEC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = sub_23AA95FBC();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA95FDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v55 - v13);
  v15 = *(v8 + 16);
  v59 = a1;
  v15(&v55 - v13, a1, v7);
  v16 = (*(v8 + 88))(v14, v7);
  if (v16 == *MEMORY[0x277D491A0])
  {
    (*(v8 + 96))(v14, v7);
    v17 = *v14;
    v18 = v8;
    if (*v14 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA9631C())
    {
      v20 = 0;
      v62 = v17 & 0xFFFFFFFFFFFFFF8;
      v63 = v17 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      v55 = v18;
      v56 = v7;
      v60 = i;
      v61 = v17;
LABEL_5:
      v57 = v21;
      while (1)
      {
        if (v63)
        {
          v22 = MEMORY[0x23EE92830](v20, v17);
        }

        else
        {
          if (v20 >= *(v62 + 16))
          {
            goto LABEL_33;
          }

          v22 = *(v17 + 8 * v20 + 32);
        }

        v23 = v22;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v70 = v20 + 1;
        v24 = sub_23AA9609C();
        v26 = v25;
        v18 = sub_23AA9608C();
        v65 = v27;
        v64 = sub_23AA960DC();
        v66 = v28;
        v67 = sub_23AA960BC();
        v69 = v29;
        result = sub_23AA9607C();
        v68 = result;
        if (v31 >> 60 == 15)
        {
          __break(1u);
          return result;
        }

        v7 = v31;
        v32 = sub_23AA960AC();
        v34 = v33;
        v35 = sub_23AA960CC();

        if (v35 <= 2)
        {
          *&v72 = v24;
          *(&v72 + 1) = v26;
          *&v73 = v18;
          *(&v73 + 1) = v65;
          *&v74 = v64;
          *(&v74 + 1) = v66;
          *&v75 = v67;
          *(&v75 + 1) = v69;
          *&v76 = v68;
          *(&v76 + 1) = v7;
          *&v77 = v32;
          *(&v77 + 1) = v34;
          v78 = v35;
          v79[0] = v24;
          v79[1] = v26;
          v79[2] = v18;
          v79[3] = v65;
          v79[4] = v64;
          v79[5] = v66;
          v79[6] = v67;
          v79[7] = v69;
          v79[8] = v68;
          v79[9] = v7;
          v79[10] = v32;
          v79[11] = v34;
          v80 = v35;
          sub_23AA7E800(&v72, &v71);
          sub_23AA7F30C(v79);
          v21 = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_23AA94610(0, *(v21 + 16) + 1, 1, v21);
          }

          v18 = v55;
          v7 = v56;
          v17 = v61;
          v37 = *(v21 + 16);
          v36 = *(v21 + 24);
          if (v37 >= v36 >> 1)
          {
            v21 = sub_23AA94610((v36 > 1), v37 + 1, 1, v21);
          }

          *(v21 + 16) = v37 + 1;
          v38 = v21 + 104 * v37;
          v39 = v72;
          v40 = v74;
          *(v38 + 48) = v73;
          *(v38 + 64) = v40;
          *(v38 + 32) = v39;
          v41 = v75;
          v42 = v76;
          v43 = v77;
          *(v38 + 128) = v78;
          *(v38 + 96) = v42;
          *(v38 + 112) = v43;
          *(v38 + 80) = v41;
          v20 = v70;
          if (v70 == v60)
          {
            goto LABEL_23;
          }

          goto LABEL_5;
        }

        sub_23AA7A2CC(v24, v26);
        sub_23AA7A2CC(v18, v65);
        sub_23AA7A2CC(v64, v66);
        sub_23AA7A2CC(v67, v69);
        sub_23AA7A2CC(v68, v7);
        sub_23AA7A2CC(v32, v34);
        ++v20;
        v17 = v61;
        if (v70 == v60)
        {
          v18 = v55;
          v7 = v56;
          v21 = v57;
LABEL_23:

          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v51 = sub_23AA95F7C();
    sub_23AA7A0D4(v51, qword_27DFC29B0);
    v52 = sub_23AA95F5C();
    v53 = sub_23AA9627C();
    if (os_log_type_enabled(v52, v53))
    {
      v21 = 2;
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_23AA75000, v52, v53, "Credential in installed state without instance info", v54, 2u);
      MEMORY[0x23EE92E60](v54, -1, -1);

LABEL_39:
      result = (*(v18 + 8))(v59, v7);
    }

    else
    {

      result = (*(v18 + 8))(v59, v7);
      v21 = 2;
    }
  }

  else if (v16 == *MEMORY[0x277D49198])
  {
    result = (*(v8 + 8))(v59, v7);
    v21 = 0;
  }

  else if (v16 == *MEMORY[0x277D49190])
  {
    result = (*(v8 + 8))(v59, v7);
    v21 = 1;
  }

  else
  {
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v44 = sub_23AA95F7C();
    sub_23AA7A0D4(v44, qword_27DFC29B0);
    v15(v12, v59, v7);
    v45 = sub_23AA95F5C();
    v46 = sub_23AA9626C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      LODWORD(v68) = v46;
      v48 = v47;
      *v47 = 134217984;
      v69 = v45;
      sub_23AA95FCC();
      v49 = sub_23AA95FAC();
      (*(v70 + 8))(v6, v3);
      v50 = *(v8 + 8);
      v50(v12, v7);
      *(v48 + 1) = v49;
      v45 = v69;
      _os_log_impl(&dword_23AA75000, v69, v68, "Unknown internal credential state %ld", v48, 0xCu);
      MEMORY[0x23EE92E60](v48, -1, -1);
    }

    else
    {
      v50 = *(v8 + 8);
      v50(v12, v7);
    }

    v50(v59, v7);
    result = (v50)(v14, v7);
    v21 = 2;
  }

  *v58 = v21;
  return result;
}

uint64_t sub_23AA7C248(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23AA9637C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_23AA7C2D8(uint64_t a1, uint64_t a2)
{
  v152 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
LABEL_322:
    v134 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  while (1)
  {
    v6 = v3[5];
    v142 = v3[4];
    v143 = v6;
    v144 = *(v3 + 96);
    v7 = v3[1];
    v138 = *v3;
    v139 = v7;
    v8 = v3[3];
    v140 = v3[2];
    v141 = v8;
    v9 = v4[1];
    v145 = *v4;
    v146 = v9;
    v10 = v4[2];
    v11 = v4[3];
    v12 = v4[4];
    v13 = v4[5];
    v151 = *(v4 + 96);
    v149 = v12;
    v150 = v13;
    v14 = *(&v145 + 1);
    v15 = v145;
    v16 = *(&v138 + 1) >> 62;
    v17 = *(&v145 + 1) >> 62;
    v147 = v10;
    v148 = v11;
    v135 = v5;
    if (*(&v138 + 1) >> 62 == 3)
    {
      v18 = 0;
      if (v138 == __PAIR128__(0xC000000000000000, 0) && *(&v145 + 1) >> 62 == 3)
      {
        v18 = 0;
        if (v145 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_31;
        }
      }

LABEL_19:
      if (v17 <= 1)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v24 = *(v138 + 16);
        v23 = *(v138 + 24);
        v21 = __OFSUB__(v23, v24);
        v18 = v23 - v24;
        if (v21)
        {
          goto LABEL_336;
        }

        goto LABEL_19;
      }

      v18 = 0;
      if (v17 <= 1)
      {
        goto LABEL_20;
      }
    }

    else if (v16)
    {
      LODWORD(v18) = DWORD1(v138) - v138;
      if (__OFSUB__(DWORD1(v138), v138))
      {
        goto LABEL_335;
      }

      v18 = v18;
      if (v17 <= 1)
      {
LABEL_20:
        if (v17)
        {
          LODWORD(v22) = DWORD1(v145) - v145;
          if (__OFSUB__(DWORD1(v145), v145))
          {
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
LABEL_354:
            __break(1u);
LABEL_355:
            __break(1u);
LABEL_356:
            __break(1u);
LABEL_357:
            __break(1u);
LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
LABEL_363:
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
          }

          v22 = v22;
        }

        else
        {
          v22 = BYTE14(v145);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v18 = BYTE14(v138);
      if (v17 <= 1)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    if (v17 != 2)
    {
      if (v18)
      {
        goto LABEL_322;
      }

LABEL_31:
      sub_23AA7E800(&v138, __s2);
      sub_23AA7E800(&v145, __s2);
      goto LABEL_83;
    }

    v20 = *(v145 + 16);
    v19 = *(v145 + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (v21)
    {
      goto LABEL_324;
    }

LABEL_26:
    if (v18 != v22)
    {
      goto LABEL_322;
    }

    if (v18 < 1)
    {
      goto LABEL_31;
    }

    if (v16 > 1)
    {
      break;
    }

    if (!v16)
    {
      v136[0] = v138;
      LODWORD(v136[1]) = DWORD2(v138);
      WORD2(v136[1]) = WORD6(v138);
      sub_23AA7E800(&v138, __s2);
      sub_23AA7E800(&v145, __s2);
      goto LABEL_62;
    }

    v30 = v138;
    if (v138 > v138 >> 32)
    {
      goto LABEL_347;
    }

    sub_23AA7E800(&v138, __s2);
    sub_23AA7E800(&v145, __s2);
    v26 = sub_23AA95E8C();
    if (v26)
    {
      v31 = sub_23AA95EAC();
      if (__OFSUB__(v30, v31))
      {
        goto LABEL_358;
      }

      v26 += v30 - v31;
    }

    sub_23AA95E9C();
    if (v17 == 2)
    {
      v39 = *(v15 + 16);
      v38 = *(v15 + 24);
      v34 = sub_23AA95E8C();
      if (v34)
      {
        v40 = sub_23AA95EAC();
        if (__OFSUB__(v39, v40))
        {
          goto LABEL_372;
        }

        v34 += v39 - v40;
      }

      v21 = __OFSUB__(v38, v39);
      v41 = v38 - v39;
      if (v21)
      {
        goto LABEL_370;
      }

      v42 = sub_23AA95E9C();
      if (v42 >= v41)
      {
        v37 = v41;
      }

      else
      {
        v37 = v42;
      }

      if (!v26)
      {
        goto LABEL_378;
      }

      if (!v34)
      {
        goto LABEL_377;
      }

      goto LABEL_78;
    }

    if (v17 == 1)
    {
      v32 = v15;
      v33 = (v15 >> 32) - v15;
      if (v15 >> 32 < v15)
      {
        goto LABEL_369;
      }

      v34 = sub_23AA95E8C();
      if (v34)
      {
        v35 = sub_23AA95EAC();
        if (__OFSUB__(v32, v35))
        {
          goto LABEL_373;
        }

        v34 += v32 - v35;
      }

      v36 = sub_23AA95E9C();
      if (v36 >= v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = v36;
      }

      if (!v26)
      {
        goto LABEL_376;
      }

      if (!v34)
      {
        goto LABEL_375;
      }

LABEL_78:
      if (v26 == v34)
      {
        goto LABEL_83;
      }

      v43 = v37;
      v44 = v26;
      v45 = v34;
      goto LABEL_82;
    }

    *__s2 = v15;
    *&__s2[8] = v14;
    __s2[10] = BYTE2(v14);
    __s2[11] = BYTE3(v14);
    __s2[12] = BYTE4(v14);
    __s2[13] = BYTE5(v14);
    if (!v26)
    {
      goto LABEL_374;
    }

LABEL_81:
    v43 = BYTE6(v14);
    v45 = __s2;
    v44 = v26;
LABEL_82:
    if (memcmp(v44, v45, v43))
    {
      goto LABEL_321;
    }

LABEL_83:
    v46 = *(&v146 + 1);
    v47 = v146;
    v48 = *(&v139 + 1) >> 62;
    v49 = *(&v146 + 1) >> 62;
    if (*(&v139 + 1) >> 62 == 3)
    {
      v50 = 0;
      if (v139 == __PAIR128__(0xC000000000000000, 0) && *(&v146 + 1) >> 62 == 3)
      {
        v50 = 0;
        if (v146 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_137;
        }
      }

LABEL_97:
      if (v49 <= 1)
      {
        goto LABEL_98;
      }

      goto LABEL_91;
    }

    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v55 = *(v139 + 16);
        v54 = *(v139 + 24);
        v21 = __OFSUB__(v54, v55);
        v50 = v54 - v55;
        if (v21)
        {
          goto LABEL_337;
        }

        goto LABEL_97;
      }

      v50 = 0;
      if (v49 <= 1)
      {
        goto LABEL_98;
      }
    }

    else if (v48)
    {
      LODWORD(v50) = DWORD1(v139) - v139;
      if (__OFSUB__(DWORD1(v139), v139))
      {
        goto LABEL_338;
      }

      v50 = v50;
      if (v49 <= 1)
      {
LABEL_98:
        if (v49)
        {
          LODWORD(v53) = DWORD1(v146) - v146;
          if (__OFSUB__(DWORD1(v146), v146))
          {
            goto LABEL_326;
          }

          v53 = v53;
        }

        else
        {
          v53 = BYTE14(v146);
        }

        goto LABEL_104;
      }
    }

    else
    {
      v50 = BYTE14(v139);
      if (v49 <= 1)
      {
        goto LABEL_98;
      }
    }

LABEL_91:
    if (v49 != 2)
    {
      if (v50)
      {
        goto LABEL_321;
      }

      goto LABEL_137;
    }

    v52 = *(v146 + 16);
    v51 = *(v146 + 24);
    v21 = __OFSUB__(v51, v52);
    v53 = v51 - v52;
    if (v21)
    {
      goto LABEL_325;
    }

LABEL_104:
    if (v50 != v53)
    {
      goto LABEL_321;
    }

    if (v50 < 1)
    {
      goto LABEL_137;
    }

    if (v48 > 1)
    {
      if (v48 != 2)
      {
        *&__s2[6] = 0;
        *__s2 = 0;
LABEL_130:
        sub_23AA7DF90(__s2, v146, *(&v146 + 1), v136);
        if ((v136[0] & 1) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_137;
      }

      v57 = *(v139 + 16);
      v56 = *(v139 + 24);
      v58 = sub_23AA95E8C();
      if (v58)
      {
        v59 = sub_23AA95EAC();
        if (__OFSUB__(v57, v59))
        {
          goto LABEL_359;
        }

        v58 += v57 - v59;
      }

      if (__OFSUB__(v56, v57))
      {
        goto LABEL_349;
      }

      sub_23AA95E9C();
      sub_23AA7DF90(v58, v47, v46, __s2);
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_321;
      }
    }

    else
    {
      if (!v48)
      {
        *__s2 = v139;
        *&__s2[8] = DWORD2(v139);
        *&__s2[12] = WORD6(v139);
        goto LABEL_130;
      }

      v60 = v139;
      if (v139 > v139 >> 32)
      {
        goto LABEL_348;
      }

      v61 = sub_23AA95E8C();
      if (v61)
      {
        v62 = sub_23AA95EAC();
        if (__OFSUB__(v60, v62))
        {
          goto LABEL_360;
        }

        v61 += v60 - v62;
      }

      sub_23AA95E9C();
      if (v49 == 2)
      {
        v63 = *(v47 + 16);
        v64 = *(v47 + 24);
        goto LABEL_133;
      }

      if (v49 == 1)
      {
        v63 = v47;
        v64 = v47 >> 32;
        if (v47 >> 32 < v47)
        {
          goto LABEL_371;
        }

LABEL_133:
        if ((sub_23AA7E698(v63, v64, v46 & 0x3FFFFFFFFFFFFFFFLL, v61) & 1) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_137;
      }

      *__s2 = v47;
      *&__s2[8] = v46;
      __s2[10] = BYTE2(v46);
      __s2[11] = BYTE3(v46);
      __s2[12] = BYTE4(v46);
      __s2[13] = BYTE5(v46);
      if (!v61)
      {
        goto LABEL_379;
      }

      if (memcmp(v61, __s2, BYTE6(v46)))
      {
        goto LABEL_321;
      }
    }

LABEL_137:
    v65 = *(&v147 + 1);
    v66 = v147;
    v67 = *(&v140 + 1) >> 62;
    v68 = *(&v147 + 1) >> 62;
    if (*(&v140 + 1) >> 62 == 3)
    {
      v69 = 0;
      if (v140 == __PAIR128__(0xC000000000000000, 0) && *(&v147 + 1) >> 62 == 3)
      {
        v69 = 0;
        if (v147 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_183;
        }
      }

LABEL_151:
      if (v68 <= 1)
      {
        goto LABEL_152;
      }

      goto LABEL_145;
    }

    if (v67 > 1)
    {
      if (v67 == 2)
      {
        v74 = *(v140 + 16);
        v73 = *(v140 + 24);
        v21 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        if (v21)
        {
          goto LABEL_339;
        }

        goto LABEL_151;
      }

      v69 = 0;
      if (v68 <= 1)
      {
        goto LABEL_152;
      }
    }

    else if (v67)
    {
      LODWORD(v69) = DWORD1(v140) - v140;
      if (__OFSUB__(DWORD1(v140), v140))
      {
        goto LABEL_340;
      }

      v69 = v69;
      if (v68 <= 1)
      {
LABEL_152:
        if (v68)
        {
          LODWORD(v72) = DWORD1(v147) - v147;
          if (__OFSUB__(DWORD1(v147), v147))
          {
            goto LABEL_328;
          }

          v72 = v72;
        }

        else
        {
          v72 = BYTE14(v147);
        }

        goto LABEL_158;
      }
    }

    else
    {
      v69 = BYTE14(v140);
      if (v68 <= 1)
      {
        goto LABEL_152;
      }
    }

LABEL_145:
    if (v68 != 2)
    {
      if (v69)
      {
        goto LABEL_321;
      }

      goto LABEL_183;
    }

    v71 = *(v147 + 16);
    v70 = *(v147 + 24);
    v21 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v21)
    {
      goto LABEL_327;
    }

LABEL_158:
    if (v69 != v72)
    {
      goto LABEL_321;
    }

    if (v69 < 1)
    {
      goto LABEL_183;
    }

    if (v67 > 1)
    {
      if (v67 != 2)
      {
        *&__s2[6] = 0;
        *__s2 = 0;
LABEL_182:
        sub_23AA7DF90(__s2, v147, *(&v147 + 1), v136);
        if ((v136[0] & 1) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_183;
      }

      v76 = *(v140 + 16);
      v75 = *(v140 + 24);
      v77 = sub_23AA95E8C();
      if (v77)
      {
        v78 = sub_23AA95EAC();
        if (__OFSUB__(v76, v78))
        {
          goto LABEL_361;
        }

        v77 += v76 - v78;
      }

      if (__OFSUB__(v75, v76))
      {
        goto LABEL_351;
      }

      sub_23AA95E9C();
      sub_23AA7DF90(v77, v66, v65, __s2);
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_321;
      }
    }

    else
    {
      if (!v67)
      {
        *__s2 = v140;
        *&__s2[8] = DWORD2(v140);
        *&__s2[12] = WORD6(v140);
        goto LABEL_182;
      }

      v79 = v140;
      if (v140 >> 32 < v140)
      {
        goto LABEL_350;
      }

      v80 = sub_23AA95E8C();
      if (v80)
      {
        v81 = sub_23AA95EAC();
        if (__OFSUB__(v79, v81))
        {
          goto LABEL_362;
        }

        v80 += v79 - v81;
      }

      sub_23AA95E9C();
      sub_23AA7DF90(v80, v66, v65, __s2);
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_321;
      }
    }

LABEL_183:
    v82 = *(&v148 + 1);
    v83 = v148;
    v84 = *(&v141 + 1) >> 62;
    v85 = *(&v148 + 1) >> 62;
    if (*(&v141 + 1) >> 62 == 3)
    {
      v86 = 0;
      if (v141 == __PAIR128__(0xC000000000000000, 0) && *(&v148 + 1) >> 62 == 3)
      {
        v86 = 0;
        if (v148 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_229;
        }
      }

LABEL_197:
      if (v85 <= 1)
      {
        goto LABEL_198;
      }

      goto LABEL_191;
    }

    if (v84 > 1)
    {
      if (v84 == 2)
      {
        v91 = *(v141 + 16);
        v90 = *(v141 + 24);
        v21 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        if (v21)
        {
          goto LABEL_342;
        }

        goto LABEL_197;
      }

      v86 = 0;
      if (v85 <= 1)
      {
        goto LABEL_198;
      }
    }

    else if (v84)
    {
      LODWORD(v86) = DWORD1(v141) - v141;
      if (__OFSUB__(DWORD1(v141), v141))
      {
        goto LABEL_341;
      }

      v86 = v86;
      if (v85 <= 1)
      {
LABEL_198:
        if (v85)
        {
          LODWORD(v89) = DWORD1(v148) - v148;
          if (__OFSUB__(DWORD1(v148), v148))
          {
            goto LABEL_330;
          }

          v89 = v89;
        }

        else
        {
          v89 = BYTE14(v148);
        }

        goto LABEL_204;
      }
    }

    else
    {
      v86 = BYTE14(v141);
      if (v85 <= 1)
      {
        goto LABEL_198;
      }
    }

LABEL_191:
    if (v85 != 2)
    {
      if (v86)
      {
        goto LABEL_321;
      }

      goto LABEL_229;
    }

    v88 = *(v148 + 16);
    v87 = *(v148 + 24);
    v21 = __OFSUB__(v87, v88);
    v89 = v87 - v88;
    if (v21)
    {
      goto LABEL_329;
    }

LABEL_204:
    if (v86 != v89)
    {
      goto LABEL_321;
    }

    if (v86 < 1)
    {
      goto LABEL_229;
    }

    if (v84 > 1)
    {
      if (v84 != 2)
      {
        *&__s2[6] = 0;
        *__s2 = 0;
LABEL_228:
        sub_23AA7DF90(__s2, v148, *(&v148 + 1), v136);
        if ((v136[0] & 1) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_229;
      }

      v93 = *(v141 + 16);
      v92 = *(v141 + 24);
      v94 = sub_23AA95E8C();
      if (v94)
      {
        v95 = sub_23AA95EAC();
        if (__OFSUB__(v93, v95))
        {
          goto LABEL_363;
        }

        v94 += v93 - v95;
      }

      if (__OFSUB__(v92, v93))
      {
        goto LABEL_353;
      }

      sub_23AA95E9C();
      sub_23AA7DF90(v94, v83, v82, __s2);
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_321;
      }
    }

    else
    {
      if (!v84)
      {
        *__s2 = v141;
        *&__s2[8] = DWORD2(v141);
        *&__s2[12] = WORD6(v141);
        goto LABEL_228;
      }

      v96 = v141;
      if (v141 >> 32 < v141)
      {
        goto LABEL_352;
      }

      v97 = sub_23AA95E8C();
      if (v97)
      {
        v98 = sub_23AA95EAC();
        if (__OFSUB__(v96, v98))
        {
          goto LABEL_364;
        }

        v97 += v96 - v98;
      }

      sub_23AA95E9C();
      sub_23AA7DF90(v97, v83, v82, __s2);
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_321;
      }
    }

LABEL_229:
    v99 = *(&v149 + 1);
    v100 = v149;
    v101 = *(&v142 + 1) >> 62;
    v102 = *(&v149 + 1) >> 62;
    if (*(&v142 + 1) >> 62 == 3)
    {
      v103 = 0;
      if (v142 == __PAIR128__(0xC000000000000000, 0) && *(&v149 + 1) >> 62 == 3)
      {
        v103 = 0;
        if (v149 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_275;
        }
      }

LABEL_243:
      if (v102 <= 1)
      {
        goto LABEL_244;
      }

      goto LABEL_237;
    }

    if (v101 > 1)
    {
      if (v101 == 2)
      {
        v108 = *(v142 + 16);
        v107 = *(v142 + 24);
        v21 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        if (v21)
        {
          goto LABEL_344;
        }

        goto LABEL_243;
      }

      v103 = 0;
      if (v102 <= 1)
      {
        goto LABEL_244;
      }
    }

    else if (v101)
    {
      LODWORD(v103) = DWORD1(v142) - v142;
      if (__OFSUB__(DWORD1(v142), v142))
      {
        goto LABEL_343;
      }

      v103 = v103;
      if (v102 <= 1)
      {
LABEL_244:
        if (v102)
        {
          LODWORD(v106) = DWORD1(v149) - v149;
          if (__OFSUB__(DWORD1(v149), v149))
          {
            goto LABEL_331;
          }

          v106 = v106;
        }

        else
        {
          v106 = BYTE14(v149);
        }

        goto LABEL_250;
      }
    }

    else
    {
      v103 = BYTE14(v142);
      if (v102 <= 1)
      {
        goto LABEL_244;
      }
    }

LABEL_237:
    if (v102 != 2)
    {
      if (v103)
      {
        goto LABEL_321;
      }

      goto LABEL_275;
    }

    v105 = *(v149 + 16);
    v104 = *(v149 + 24);
    v21 = __OFSUB__(v104, v105);
    v106 = v104 - v105;
    if (v21)
    {
      goto LABEL_332;
    }

LABEL_250:
    if (v103 != v106)
    {
      goto LABEL_321;
    }

    if (v103 < 1)
    {
      goto LABEL_275;
    }

    if (v101 > 1)
    {
      if (v101 != 2)
      {
        *&__s2[6] = 0;
        *__s2 = 0;
LABEL_274:
        sub_23AA7DF90(__s2, v149, *(&v149 + 1), v136);
        if ((v136[0] & 1) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_275;
      }

      v110 = *(v142 + 16);
      v109 = *(v142 + 24);
      v111 = sub_23AA95E8C();
      if (v111)
      {
        v112 = sub_23AA95EAC();
        if (__OFSUB__(v110, v112))
        {
          goto LABEL_365;
        }

        v111 += v110 - v112;
      }

      if (__OFSUB__(v109, v110))
      {
        goto LABEL_355;
      }

      sub_23AA95E9C();
      sub_23AA7DF90(v111, v100, v99, __s2);
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_321;
      }
    }

    else
    {
      if (!v101)
      {
        *__s2 = v142;
        *&__s2[8] = DWORD2(v142);
        *&__s2[12] = WORD6(v142);
        goto LABEL_274;
      }

      v113 = v142;
      if (v142 >> 32 < v142)
      {
        goto LABEL_354;
      }

      v114 = sub_23AA95E8C();
      if (v114)
      {
        v115 = sub_23AA95EAC();
        if (__OFSUB__(v113, v115))
        {
          goto LABEL_366;
        }

        v114 += v113 - v115;
      }

      sub_23AA95E9C();
      sub_23AA7DF90(v114, v100, v99, __s2);
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_321;
      }
    }

LABEL_275:
    v116 = *(&v143 + 1);
    v117 = *(&v150 + 1);
    v118 = v150;
    v119 = *(&v143 + 1) >> 62;
    v120 = *(&v150 + 1) >> 62;
    if (*(&v143 + 1) >> 62 == 3)
    {
      v121 = 0;
      if (v143 == __PAIR128__(0xC000000000000000, 0) && *(&v150 + 1) >> 62 == 3)
      {
        v121 = 0;
        if (v150 == __PAIR128__(0xC000000000000000, 0))
        {
          goto LABEL_317;
        }
      }

LABEL_289:
      if (v120 <= 1)
      {
        goto LABEL_290;
      }

      goto LABEL_283;
    }

    if (v119 > 1)
    {
      if (v119 == 2)
      {
        v126 = *(v143 + 16);
        v125 = *(v143 + 24);
        v21 = __OFSUB__(v125, v126);
        v121 = v125 - v126;
        if (v21)
        {
          goto LABEL_345;
        }

        goto LABEL_289;
      }

      v121 = 0;
      if (v120 <= 1)
      {
        goto LABEL_290;
      }
    }

    else if (v119)
    {
      LODWORD(v121) = DWORD1(v143) - v143;
      if (__OFSUB__(DWORD1(v143), v143))
      {
        goto LABEL_346;
      }

      v121 = v121;
      if (v120 <= 1)
      {
LABEL_290:
        if (v120)
        {
          LODWORD(v124) = DWORD1(v150) - v150;
          if (__OFSUB__(DWORD1(v150), v150))
          {
            goto LABEL_334;
          }

          v124 = v124;
        }

        else
        {
          v124 = BYTE14(v150);
        }

        goto LABEL_296;
      }
    }

    else
    {
      v121 = BYTE14(v143);
      if (v120 <= 1)
      {
        goto LABEL_290;
      }
    }

LABEL_283:
    if (v120 != 2)
    {
      if (v121)
      {
        goto LABEL_321;
      }

      goto LABEL_317;
    }

    v123 = *(v150 + 16);
    v122 = *(v150 + 24);
    v21 = __OFSUB__(v122, v123);
    v124 = v122 - v123;
    if (v21)
    {
      goto LABEL_333;
    }

LABEL_296:
    if (v121 != v124)
    {
      goto LABEL_321;
    }

    if (v121 < 1)
    {
      goto LABEL_317;
    }

    if (v119 > 1)
    {
      if (v119 == 2)
      {
        v127 = *(v143 + 16);
        v128 = *(v143 + 24);
        sub_23AA78838(v150, *(&v150 + 1));
        sub_23AA78838(v118, v117);
        LOBYTE(v127) = sub_23AA7E350(v127, v128, v116 & 0x3FFFFFFFFFFFFFFFLL, v118, v117);
        sub_23AA7A2CC(v118, v117);
        sub_23AA7A2CC(v118, v117);
        if ((v127 & 1) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_317;
      }

      *&__s2[6] = 0;
      *__s2 = 0;
      sub_23AA78838(v150, *(&v150 + 1));
      goto LABEL_316;
    }

    if (!v119)
    {
      *__s2 = v143;
      *&__s2[8] = DWORD2(v143);
      *&__s2[12] = WORD6(v143);
      sub_23AA78838(v150, *(&v150 + 1));
LABEL_316:
      sub_23AA7DF90(__s2, v118, v117, v136);
      sub_23AA7A2CC(v118, v117);
      if ((v136[0] & 1) == 0)
      {
        goto LABEL_321;
      }

      goto LABEL_317;
    }

    v129 = v143;
    if (v143 >> 32 < v143)
    {
      goto LABEL_356;
    }

    sub_23AA78838(v150, *(&v150 + 1));
    v130 = sub_23AA95E8C();
    if (v130)
    {
      v131 = sub_23AA95EAC();
      if (__OFSUB__(v129, v131))
      {
        goto LABEL_367;
      }

      v130 += v129 - v131;
    }

    sub_23AA95E9C();
    sub_23AA7DF90(v130, v118, v117, __s2);
    sub_23AA7A2CC(v118, v117);
    if ((__s2[0] & 1) == 0)
    {
LABEL_321:
      sub_23AA7F30C(&v145);
      sub_23AA7F30C(&v138);
      goto LABEL_322;
    }

LABEL_317:
    v132 = v144;
    v133 = v151;
    sub_23AA7F30C(&v145);
    sub_23AA7F30C(&v138);
    if (v132 != v133 || !v135)
    {
      goto LABEL_322;
    }

    v5 = v135 - 1;
    v4 = (v4 + 104);
    v3 = (v3 + 104);
  }

  if (v16 != 2)
  {
    memset(v136, 0, 14);
    sub_23AA7E800(&v138, __s2);
    sub_23AA7E800(&v145, __s2);
LABEL_62:
    sub_23AA7DF90(v136, v15, v14, __s2);
    if ((__s2[0] & 1) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_83;
  }

  v25 = *(v138 + 16);
  sub_23AA7E800(&v138, __s2);
  sub_23AA7E800(&v145, __s2);
  v26 = sub_23AA95E8C();
  if (v26)
  {
    v27 = sub_23AA95EAC();
    if (__OFSUB__(v25, v27))
    {
      goto LABEL_357;
    }

    v26 += v25 - v27;
  }

  sub_23AA95E9C();
  if (v17 == 2)
  {
    v28 = *(v15 + 16);
    v29 = *(v15 + 24);
    goto LABEL_65;
  }

  if (v17 == 1)
  {
    v28 = v15;
    v29 = v15 >> 32;
    if (v15 >> 32 < v15)
    {
      goto LABEL_368;
    }

LABEL_65:
    if ((sub_23AA7E698(v28, v29, v14 & 0x3FFFFFFFFFFFFFFFLL, v26) & 1) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_83;
  }

  *__s2 = v15;
  *&__s2[8] = v14;
  __s2[10] = BYTE2(v14);
  __s2[11] = BYTE3(v14);
  __s2[12] = BYTE4(v14);
  __s2[13] = BYTE5(v14);
  if (v26)
  {
    goto LABEL_81;
  }

  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);

  __break(1u);
}

uint64_t CredentialSession.Credential.InstanceInfo.instanceAID.getter()
{
  v1 = *v0;
  sub_23AA78838(*v0, *(v0 + 8));
  return v1;
}

uint64_t CredentialSession.Credential.InstanceInfo.packageAID.getter()
{
  v1 = *(v0 + 16);
  sub_23AA78838(v1, *(v0 + 24));
  return v1;
}

uint64_t CredentialSession.Credential.InstanceInfo.moduleAID.getter()
{
  v1 = *(v0 + 32);
  sub_23AA78838(v1, *(v0 + 40));
  return v1;
}

uint64_t CredentialSession.Credential.InstanceInfo.securityDomainAID.getter()
{
  v1 = *(v0 + 48);
  sub_23AA78838(v1, *(v0 + 56));
  return v1;
}

uint64_t CredentialSession.Credential.InstanceInfo.securityDomainKeyInfo.getter()
{
  v1 = *(v0 + 64);
  sub_23AA78838(v1, *(v0 + 72));
  return v1;
}

uint64_t CredentialSession.Credential.InstanceInfo.lifeCycleState.getter()
{
  v1 = *(v0 + 80);
  sub_23AA78838(v1, *(v0 + 88));
  return v1;
}

uint64_t CredentialSession.Credential.InstanceInfo.securityDomainCounter.getter()
{
  v2 = *(v0 + 80);
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = v2;
  *(v1 + 112) = *(v0 + 96);
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v4;
  return MEMORY[0x2822009F8](sub_23AA7D8D8, 0, 0);
}

uint64_t sub_23AA7D8D8()
{
  sub_23AA7E800(v0 + 16, v0 + 120);
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_23AA7D98C;

  return sub_23AA84B44(v0 + 16);
}

uint64_t sub_23AA7D98C(uint64_t a1)
{
  v4 = *(*v2 + 224);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_23AA7DA8C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a3 + 48);
    v6 = *(a3 + 56);
    v7 = *a1;
    swift_unknownObjectRetain();
    v8 = sub_23AA95EEC();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v14[4] = sub_23AA7F35C;
    v14[5] = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_23AA7DD28;
    v14[3] = &unk_284DABD48;
    v10 = _Block_copy(v14);

    [v4 securityDomainCounterFor:v8 reply:v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v11 = swift_allocError();
    *v12 = 12;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v13 = v11;

    swift_continuation_throwingResumeWithError();
  }
}

void sub_23AA7DC14(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v9 = a1;
    **(*(a3 + 64) + 40) = sub_23AA9624C();
    swift_continuation_throwingResume();
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_23AA76B00();
      v5 = swift_allocError();
      *v6 = 21;
    }

    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v7 = v5;
    v8 = a2;

    swift_continuation_throwingResumeWithError();
  }
}

void sub_23AA7DD28(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t CredentialSession.Credential.InstanceInfo.InstanceType.hashValue.getter()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

uint64_t sub_23AA7DE3C()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

uint64_t sub_23AA7DEB0()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

uint64_t CredentialSession.Credential.hash(into:)(uint64_t a1)
{
  v2 = sub_23AA95F4C();
  v3 = sub_23AA7E838();

  return MEMORY[0x2821FBA10](a1, v2, v3);
}

uint64_t sub_23AA7DF90@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23AA95E8C();
    if (v10)
    {
      v11 = sub_23AA95EAC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23AA95E9C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23AA95E8C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23AA95EAC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23AA95E9C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23AA7E1C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_23AA7E350(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23AA7A2CC(a3, a4);
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
  sub_23AA7DF90(v14, a3, a4, &v13);
  v10 = v4;
  sub_23AA7A2CC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_23AA7E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23AA95E8C();
  v11 = result;
  if (result)
  {
    result = sub_23AA95EAC();
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

  sub_23AA95E9C();
  sub_23AA7DF90(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_23AA7E408(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_23AA78838(a3, a4);
          return sub_23AA7E1C0(v13, a2, a3, a4) & 1;
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

uint64_t _s23SecureElementCredential0C7SessionC0C0V12InstanceInfoV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v23 = *(a1 + 56);
  v24 = *(a1 + 48);
  v21 = *(a1 + 72);
  v22 = *(a1 + 64);
  v16 = *(a1 + 88);
  v17 = *(a1 + 80);
  v18 = *(a1 + 96);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a2 + 64);
  v13 = *(a2 + 88);
  v14 = *(a2 + 80);
  v15 = *(a2 + 96);
  if (sub_23AA7E408(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (sub_23AA7E408(v2, v3, v6, v7) & 1) != 0 && (sub_23AA7E408(v4, v5, v8, v9) & 1) != 0 && (sub_23AA7E408(v24, v23, v10, v11) & 1) != 0 && (sub_23AA7E408(v22, v21, v20, v19))
  {
    return sub_23AA7E408(v17, v16, v14, v13) & (v18 == v15);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23AA7E698(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_23AA95E8C();
  v8 = result;
  if (result)
  {
    result = sub_23AA95EAC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_23AA95E9C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t _s23SecureElementCredential0C7SessionC0C0V5StateO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_23AA7B3F8(*a2);
      sub_23AA7B3F8(v2);
      sub_23AA7C2D8(v2, v3);
      v4 = v5;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_23AA7B3F8(*a2);
    sub_23AA7B3F8(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_23AA7F33C(v2);
  sub_23AA7F33C(v3);
  return v4 & 1;
}

unint64_t sub_23AA7E838()
{
  result = qword_27DFC1878;
  if (!qword_27DFC1878)
  {
    sub_23AA95F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1878);
  }

  return result;
}

uint64_t _s23SecureElementCredential0C7SessionC0C0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_23AA95F2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CredentialSession.Credential();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23AA9637C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (!v11)
  {
    if (!v12)
    {
LABEL_12:
      sub_23AA7F33C(*(a1 + v10));
      sub_23AA7F33C(v11);
      goto LABEL_16;
    }

LABEL_14:
    sub_23AA7B3F8(*(a1 + v10));
    sub_23AA7B3F8(v12);
    sub_23AA7F33C(v11);
    sub_23AA7F33C(v12);
    return 0;
  }

  if (v11 == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v12 < 2)
  {
    goto LABEL_14;
  }

  sub_23AA7B3F8(*(a1 + v10));
  sub_23AA7B3F8(v12);
  sub_23AA7B3F8(v11);
  sub_23AA7B3F8(v12);
  sub_23AA7C2D8(v11, v12);
  v14 = v13;
  sub_23AA7F33C(v11);
  sub_23AA7F33C(v12);
  sub_23AA7F33C(v12);
  sub_23AA7F33C(v11);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if ((sub_23AA7C248(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || (sub_23AA7C248(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v16 = v4[10];

  return sub_23AA95F2C();
}

unint64_t sub_23AA7EA34()
{
  result = qword_27DFC1880;
  if (!qword_27DFC1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1880);
  }

  return result;
}

uint64_t sub_23AA7EA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23AA95F4C();
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

uint64_t sub_23AA7EB70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23AA95F4C();
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

void sub_23AA7EC2C()
{
  sub_23AA95F4C();
  if (v0 <= 0x3F)
  {
    sub_23AA7ECD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23AA7ECD8()
{
  if (!qword_27DFC1898)
  {
    v0 = sub_23AA961BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFC1898);
    }
  }
}

uint64_t sub_23AA7ED28(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23AA7ED4C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23AA7EDA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_23AA7EE00(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_23AA7EE30(uint64_t a1)
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

__n128 sub_23AA7EE4C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23AA7EE78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 97))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 96);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23AA7EEBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 2;
    }
  }

  return result;
}

uint64_t _s10CredentialV12InstanceInfoV12InstanceTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CredentialV12InstanceInfoV12InstanceTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10CredentialV11AccessLevelOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CredentialV11AccessLevelOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23AA7F1F8()
{
  result = qword_27DFC18A0;
  if (!qword_27DFC18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC18A0);
  }

  return result;
}

uint64_t sub_23AA7F24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialSession.Credential();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AA7F2B0(uint64_t a1)
{
  v2 = type metadata accessor for CredentialSession.Credential();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23AA7F33C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23AA7F364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA7F37C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_23AA7F394(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23AA7F3A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23AA7F404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23AA7F494()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_23AA7F6AC(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23AA7F5B8;

  return v8(v2, v3);
}

uint64_t sub_23AA7F5B8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_23AA7F6AC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23AA7F730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA7F784(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t, uint64_t, uint64_t))
{
  v9 = *a2;
  if (*a2)
  {
    sub_23AA7A10C(a2, v24);
    v15 = swift_allocObject();
    v16 = v24[1];
    *(v15 + 16) = v24[0];
    *(v15 + 32) = v16;
    *(v15 + 48) = v24[2];
    *(v15 + 64) = a1;
    v23[4] = a6;
    v23[5] = v15;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_23AA76C84;
    v23[3] = a7;
    v17 = _Block_copy(v23);
    swift_unknownObjectRetain();

    v18 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v17);
    sub_23AA962CC();
    swift_unknownObjectRelease();
    sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v23[0] = 0;
    }

    a8(v23, a1, a3, a4);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v20 = swift_allocError();
    *v21 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v22 = v20;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA7F9A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[6])
  {
    sub_23AA7A258(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA7FA04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = (*(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v35 - v10;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v12 = sub_23AA95F7C();
  sub_23AA7A0D4(v12, qword_27DFC29B0);
  v13 = sub_23AA9627C();
  v14 = a1;
  v15 = sub_23AA95F5C();

  if (os_log_type_enabled(v15, v13))
  {
    v16 = swift_slowAlloc();
    v35[1] = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35[0] = v4;
    v19 = v18;
    v38[0] = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v20 = sub_23AA9639C();
    v22 = sub_23AA8F920(v20, v21, v38);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_23AA75000, v15, v13, "XPC error %s encountered", v17, 0xCu);
    sub_23AA7A258(v19);
    v7 = v35[0];
    MEMORY[0x23EE92E60](v19, -1, -1);
    MEMORY[0x23EE92E60](v17, -1, -1);
  }

  sub_23AA824D8(v7 + 8, &v36);
  if (v37)
  {
    sub_23AA825B0(&v36, v38);
    v23 = sub_23AA961EC();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    sub_23AA82840(v38, &v36);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_23AA825B0(&v36, v24 + 32);
    sub_23AA865C8(0, 0, v11, a4, v24);

    sub_23AA76B00();
    v25 = swift_allocError();
    *v26 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v27 = v25;
    swift_continuation_throwingResumeWithError();
    return sub_23AA7A258(v38);
  }

  else
  {
    sub_23AA82548(&v36);
    v29 = sub_23AA9627C();
    v30 = sub_23AA95F5C();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23AA75000, v30, v29, "No parent session", v31, 2u);
      MEMORY[0x23EE92E60](v31, -1, -1);
    }

    sub_23AA76B00();
    v32 = swift_allocError();
    *v33 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v34 = v32;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t CredentialSession.acquirePresentmentAssertion()()
{
  v1[2] = v0;
  v2 = type metadata accessor for CredentialSession.State(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[5] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_23AA8007C;

  return sub_23AA881F0(v4);
}

uint64_t sub_23AA8007C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23AA8018C, v2, 0);
}

uint64_t sub_23AA8018C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  v4 = _s23SecureElementCredential0C7SessionC5StateO2eeoiySbAE_AEtFZ_0(v2, v1);
  sub_23AA82378(v1);
  sub_23AA82378(v2);
  if (v4)
  {
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v5 = sub_23AA95F7C();
    sub_23AA7A0D4(v5, qword_27DFC29B0);
    v6 = sub_23AA95F5C();
    v7 = sub_23AA9627C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23AA75000, v6, v7, "Acquiring assertion from invalid state is disallowed", v8, 2u);
      MEMORY[0x23EE92E60](v8, -1, -1);
    }

    sub_23AA76B00();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    v11 = v0[4];
    v10 = v0[5];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[2];

    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_23AA803A8;
    v16 = v0[2];

    return sub_23AA850A8(v16);
  }
}

uint64_t sub_23AA803A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  v7 = *(v4 + 40);
  v8 = *(v4 + 32);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_23AA804F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = a2;
  return MEMORY[0x2822009F8](sub_23AA8050C, a2, 0);
}

uint64_t sub_23AA8050C()
{
  if (qword_27DFC1768 != -1)
  {
    swift_once();
  }

  *(v0 + 480) = qword_27DFC29D8;

  return MEMORY[0x2822009F8](sub_23AA805A8, 0, 0);
}

uint64_t sub_23AA805A8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[60];
  v1[2] = v2;
  v1[7] = v1 + 55;
  v1[3] = sub_23AA808D4;
  v5 = swift_continuation_init();
  sub_23AA94B44();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v1[20] = sub_23AA8296C;
  v1[21] = v8;
  v1[16] = MEMORY[0x277D85DD0];
  v1[17] = 1107296256;
  v1[18] = sub_23AA76C84;
  v1[19] = &unk_284DAC198;
  v9 = _Block_copy(v1 + 16);
  v10 = v1[21];

  v11 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1788, &qword_23AA97630);
  if (swift_dynamicCast())
  {
    v12 = v1[56];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v5;
      v1[26] = sub_23AA82974;
      v1[27] = v13;
      v1[22] = MEMORY[0x277D85DD0];
      v1[23] = 1107296256;
      v1[24] = sub_23AA7DD28;
      v1[25] = &unk_284DAC1E8;
      v14 = _Block_copy(v1 + 22);
      v15 = v1[27];
      swift_unknownObjectRetain();

      [v12 acquirePresentmentIntentAssertionWithReply_];
      _Block_release(v14);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    v1[56] = 0;
  }

  sub_23AA76B00();
  v16 = swift_allocError();
  *v17 = 12;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  swift_allocError();
  *v18 = v16;
  swift_continuation_throwingResumeWithError();
LABEL_6:
  v19 = v1[56];
  swift_unknownObjectRelease();

  return MEMORY[0x282200938](v3);
}

uint64_t sub_23AA808D4()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    v3 = *(*v0 + 48);
    swift_willThrow();
    v4 = v2[1];

    return v4();
  }

  else
  {
    v6 = v1[59];
    v1[61] = v1[55];

    return MEMORY[0x2822009F8](sub_23AA80A20, v6, 0);
  }
}

uint64_t sub_23AA80A20()
{
  v29 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 472);
  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);

  v3 = sub_23AA95F5C();
  v4 = sub_23AA9625C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 472);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    sub_23AA95F4C();
    sub_23AA82914();
    v8 = sub_23AA9636C();
    v10 = sub_23AA8F920(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23AA75000, v3, v4, "Credential Session [%s] acquired presentment intent assertion", v6, 0xCu);
    sub_23AA7A258(v7);
    MEMORY[0x23EE92E60](v7, -1, -1);
    MEMORY[0x23EE92E60](v6, -1, -1);
  }

  v11 = *(v0 + 488);
  v12 = *(v0 + 472);
  v27 = *(v0 + 464);
  v13 = type metadata accessor for CredentialSession(0);
  *(v0 + 248) = v13;
  *(v0 + 256) = &off_284DABEF0;
  *(v0 + 224) = v12;
  v14 = type metadata accessor for CredentialSession.PresentmentIntentAssertion();
  v15 = swift_allocObject();
  v16 = sub_23AA827F0(v0 + 224, v13);
  v17 = *(v13 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v13);
  v20 = *v19;
  *(v0 + 288) = v13;
  *(v0 + 296) = &off_284DABEF0;
  *(v0 + 264) = v20;
  sub_23AA82840(v0 + 264, (v15 + 4));
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_23AA828A4(v0 + 304, v0 + 88);
  v21 = *(v0 + 96);
  v15[1] = *(v0 + 80);
  v15[2] = v21;
  v15[3] = *(v0 + 112);
  *(v0 + 456) = &unk_284DAF878;
  v22 = swift_dynamicCastObjCProtocolUnconditional();
  swift_beginAccess();
  *(v0 + 368) = v14;
  *(v0 + 376) = &off_284DABEE0;
  *(v0 + 344) = v15;
  v23 = *(v15 + 2);
  *(v15 + 2) = v22;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_unknownObjectRelease();
  sub_23AA82548(v15 + 24);
  sub_23AA82840(v0 + 344, v15 + 24);
  sub_23AA7A258((v0 + 344));
  swift_endAccess();
  swift_unknownObjectRelease();

  sub_23AA7A258((v0 + 264));
  swift_unknownObjectRelease();
  sub_23AA7A258((v0 + 224));

  v24 = *(v12 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion);
  *(v12 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion) = v15;

  *v27 = v15;
  v25 = *(v0 + 8);

  return v25();
}

void sub_23AA80DF4(void *a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v5 = sub_23AA95F7C();
    sub_23AA7A0D4(v5, qword_27DFC29B0);
    v6 = sub_23AA95F5C();
    v7 = sub_23AA9625C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23AA75000, v6, v7, "Did not obtain presentment intent assertion", v8, 2u);
      MEMORY[0x23EE92E60](v8, -1, -1);
    }

    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v9 = a2;

    swift_continuation_throwingResumeWithError();
  }

  else if (a1)
  {
    **(*(a3 + 64) + 40) = swift_dynamicCastObjCProtocolUnconditional();
    v11 = a1;
    swift_continuation_throwingResume();
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v12 = sub_23AA95F7C();
    sub_23AA7A0D4(v12, qword_27DFC29B0);
    v13 = sub_23AA95F5C();
    v14 = sub_23AA9626C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23AA75000, v13, v14, "Successfully obtained presentment intent assertion", v15, 2u);
      MEMORY[0x23EE92E60](v15, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23AA8107C()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23AA8112C;
  v3 = *(v0 + 16);

  return sub_23AA8448C(sub_23AA8448C, v3);
}

uint64_t sub_23AA8112C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_23AA78D9C;
  }

  else
  {
    v3 = sub_23AA81240;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23AA81240()
{
  v1 = sub_23AA7F6AC((*(v0 + 16) + 64), *(*(v0 + 16) + 88));
  v2 = *v1;
  *(v0 + 40) = *v1;

  return MEMORY[0x2822009F8](sub_23AA812B4, v2, 0);
}

uint64_t sub_23AA812B4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion);
  *(v1 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AA8134C()
{
  v1 = *(v0 + 256);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 16, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA813D0, 0, 0);
}

uint64_t sub_23AA813D0()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_23AA8174C;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, v5 + 48);
  v6 = swift_allocObject();
  v7 = *(v5 + 64);
  *(v6 + 16) = *(v5 + 48);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v5 + 80);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA827A4;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DAC0F8;
  v8 = _Block_copy(v1 + 22);
  v9 = v1[27];
  swift_unknownObjectRetain();

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC18A8, &qword_23AA974A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 168) = 0;
    goto LABEL_7;
  }

  v11 = *(v5 + 168);
  if (!v11)
  {
LABEL_7:
    sub_23AA76B00();
    v19 = swift_allocError();
    *v20 = 21;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v21 = v19;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    v22 = *(v5 + 168);
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v1[20] = sub_23AA827E8;
  v1[21] = v12;
  v1[16] = MEMORY[0x277D85DD0];
  v1[17] = 1107296256;
  v1[18] = sub_23AA76C18;
  v1[19] = &unk_284DAC148;
  v13 = _Block_copy((v5 + 48));
  v14 = v1[21];
  swift_unknownObjectRetain();

  [v11 relinquishAssertionWithReply_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v1[31];
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA8174C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23AA8189C, 0, 0);
  }

  else
  {
    sub_23AA7A178(v1 + 80);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_23AA8189C()
{
  sub_23AA7A178(v0 + 80);
  v1 = *(v0 + 8);
  v2 = *(v0 + 264);

  return v1();
}

uint64_t CredentialSession.PresentmentIntentAssertion.State.hashValue.getter()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

uint64_t CredentialSession.PresentmentIntentAssertion.state.getter(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
  return MEMORY[0x2822009F8](sub_23AA819AC, 0, 0);
}

uint64_t sub_23AA819AC()
{
  v1 = *(v0 + 272);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 16, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA81A30, 0, 0);
}

uint64_t sub_23AA81A30()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_23AA81C90;
  v3 = swift_continuation_init();
  v4 = (v1 + 10);
  v5 = v1[10];
  if (v5)
  {
    sub_23AA7A10C((v1 + 10), (v1 + 16));
    v6 = swift_allocObject();
    v7 = *(v1 + 9);
    *(v6 + 16) = *(v1 + 8);
    *(v6 + 32) = v7;
    *(v6 + 48) = *(v1 + 10);
    *(v6 + 64) = v3;
    v1[26] = sub_23AA823D8;
    v1[27] = v6;
    v1[22] = MEMORY[0x277D85DD0];
    v1[23] = 1107296256;
    v1[24] = sub_23AA76C84;
    v1[25] = &unk_284DABEB8;
    v8 = _Block_copy(v1 + 22);
    v9 = v1[27];
    swift_unknownObjectRetain();

    v10 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v8);
    sub_23AA962CC();
    swift_unknownObjectRelease();
    sub_23AA76CEC(&qword_27DFC18A8, &qword_23AA974A8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v4[22] = 0;
    }

    sub_23AA81E80(v4 + 22, v3);
    swift_unknownObjectRelease();
    v11 = v4[22];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v12 = swift_allocError();
    *v13 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v14 = v12;
    swift_continuation_throwingResumeWithError();
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA81C90()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA81E08;
  }

  else
  {
    *(v1 + 288) = *(v1 + 248);
    sub_23AA7A178(v1 + 80);
    v4 = sub_23AA81DBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23AA81DBC()
{
  v1 = *(v0 + 288);
  if (v1 > 1)
  {
    *(v0 + 80) = v1;
    return MEMORY[0x2821FE1D0](&type metadata for SECPresentmentIntentAssertionState, v0 + 80, &type metadata for SECPresentmentIntentAssertionState, MEMORY[0x277D83B88]);
  }

  else
  {
    **(v0 + 264) = v1;
    return (*(v0 + 8))();
  }
}

uint64_t sub_23AA81E08()
{
  v1 = *(v0 + 280);
  sub_23AA7A178(v0 + 80);

  **(v0 + 264) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23AA81E80(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v11[4] = sub_23AA8277C;
    v11[5] = v4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_23AA82068;
    v11[3] = &unk_284DAC080;
    v5 = _Block_copy(v11);
    swift_unknownObjectRetain();

    [v3 getAssertionStateWithReply_];
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v7 = sub_23AA95F7C();
    sub_23AA7A0D4(v7, qword_27DFC29B0);
    v8 = sub_23AA95F5C();
    v9 = sub_23AA9625C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23AA75000, v8, v9, "Internal assertion has been invalidated", v10, 2u);
      MEMORY[0x23EE92E60](v10, -1, -1);
    }

    **(*(a2 + 64) + 40) = 1;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_23AA82068(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t CredentialSession.PresentmentIntentAssertion.deinit()
{
  sub_23AA7A178(v0 + 16);
  sub_23AA7A258((v0 + 64));
  return v0;
}

uint64_t CredentialSession.PresentmentIntentAssertion.__deallocating_deinit()
{
  sub_23AA7A178(v0 + 16);
  sub_23AA7A258((v0 + 64));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_23AA82144()
{
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = sub_23AA95F7C();
  sub_23AA7A0D4(v1, qword_27DFC29B0);
  v2 = sub_23AA95F5C();
  v3 = sub_23AA9625C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23AA75000, v2, v3, "PresentmentIntentAssertion invalidated", v4, 2u);
    MEMORY[0x23EE92E60](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = sub_23AA7F6AC((v5 + 64), *(v5 + 88));
  v7 = *v6;
  *(v0 + 24) = *v6;

  return MEMORY[0x2822009F8](sub_23AA82274, v7, 0);
}

uint64_t sub_23AA82274()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion);
  *(v1 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23AA822E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23AA77CC8;

  return sub_23AA82124();
}

uint64_t sub_23AA82378(uint64_t a1)
{
  v2 = type metadata accessor for CredentialSession.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23AA8241C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23AA82438()
{
  result = qword_27DFC18B0;
  if (!qword_27DFC18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC18B0);
  }

  return result;
}

uint64_t sub_23AA824D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AA76CEC(&qword_27DFC18C0, &qword_23AA975E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AA82548(uint64_t a1)
{
  v2 = sub_23AA76CEC(&qword_27DFC18C0, &qword_23AA975E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23AA825B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23AA825CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA7A354;

  return sub_23AA7F474(a1, v4, v5, v1 + 32);
}

uint64_t sub_23AA8267C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_23AA7A258((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA826BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA77CC8;

  return sub_23AA7F474(a1, v4, v5, v1 + 32);
}

uint64_t sub_23AA827F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_23AA82840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23AA828A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AA76CEC(&qword_27DFC18C0, &qword_23AA975E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23AA82914()
{
  result = qword_27DFC18C8;
  if (!qword_27DFC18C8)
  {
    sub_23AA95F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC18C8);
  }

  return result;
}

uint64_t CredentialSession.SecureElementInfo.hardwareReleaseVersionInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CredentialSession.SecureElementInfo.secureElementPlatformSigningCertificate.getter()
{
  v1 = *(v0 + 16);
  sub_23AA78838(v1, *(v0 + 24));
  return v1;
}

unint64_t sub_23AA82A30()
{
  if (*v0)
  {
    result = 0xD000000000000027;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_23AA82A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x800000023AA99440 == a2 || (sub_23AA9637C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000027 && 0x800000023AA99460 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23AA9637C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23AA82B68(uint64_t a1)
{
  v2 = sub_23AA82D7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23AA82BA4(uint64_t a1)
{
  v2 = sub_23AA82D7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CredentialSession.SecureElementInfo.encode(to:)(void *a1)
{
  v3 = sub_23AA76CEC(&qword_27DFC18D0, &qword_23AA97640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  sub_23AA7F6AC(a1, a1[3]);
  sub_23AA82D7C();
  sub_23AA9642C();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_23AA9634C();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_23AA78838(v16, v15);
    sub_23AA82DD0();
    sub_23AA9635C();
    sub_23AA7A2CC(v18, v19);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23AA82D7C()
{
  result = qword_27DFC18D8;
  if (!qword_27DFC18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC18D8);
  }

  return result;
}

unint64_t sub_23AA82DD0()
{
  result = qword_27DFC18E0;
  if (!qword_27DFC18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC18E0);
  }

  return result;
}

uint64_t CredentialSession.SecureElementInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23AA76CEC(&qword_27DFC18E8, &qword_23AA97648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  sub_23AA7F6AC(a1, a1[3]);
  sub_23AA82D7C();
  sub_23AA9641C();
  if (v2)
  {
    return sub_23AA7A258(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_23AA9632C();
  v13 = v12;
  v14 = v11;
  v19 = 1;
  sub_23AA83044();
  sub_23AA9633C();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;

  sub_23AA78838(v15, v16);
  sub_23AA7A258(a1);

  return sub_23AA7A2CC(v15, v16);
}

unint64_t sub_23AA83044()
{
  result = qword_27DFC18F0;
  if (!qword_27DFC18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC18F0);
  }

  return result;
}

uint64_t CredentialSession.secureElementInfo.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23AA830E8, v1, 0);
}

uint64_t sub_23AA830E8()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_23AA8319C;
  v3 = v0[2];
  v4 = v0[3];

  return sub_23AA85520(v3, v4);
}

uint64_t sub_23AA8319C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 sub_23AA83290(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23AA8329C(uint64_t a1, int a2)
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

uint64_t sub_23AA832E4(uint64_t result, int a2, int a3)
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

unint64_t sub_23AA83348()
{
  result = qword_27DFC18F8;
  if (!qword_27DFC18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC18F8);
  }

  return result;
}

unint64_t sub_23AA833A0()
{
  result = qword_27DFC1900;
  if (!qword_27DFC1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1900);
  }

  return result;
}

unint64_t sub_23AA833F8()
{
  result = qword_27DFC1908;
  if (!qword_27DFC1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1908);
  }

  return result;
}

uint64_t sub_23AA8344C(uint64_t a1, uint64_t a2)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return MEMORY[0x2822009F8](sub_23AA83468, a2, 0);
}

uint64_t sub_23AA83468()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA834EC, 0, 0);
}

uint64_t sub_23AA834EC()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_23AA83870;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, v5 + 48);
  v6 = swift_allocObject();
  v7 = *(v5 + 64);
  *(v6 + 16) = *(v5 + 48);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v5 + 80);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA83AA0;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DAC370;
  v8 = _Block_copy(v1 + 22);
  v9 = v1[27];
  swift_unknownObjectRetain();

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 200) = 0;
    goto LABEL_7;
  }

  v11 = *(v5 + 200);
  if (!v11)
  {
LABEL_7:
    sub_23AA76B00();
    v19 = swift_allocError();
    *v20 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v21 = v19;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    v22 = *(v5 + 200);
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v1[20] = sub_23AA83C34;
  v1[21] = v12;
  v1[16] = MEMORY[0x277D85DD0];
  v1[17] = 1107296256;
  v1[18] = sub_23AA7DD28;
  v1[19] = &unk_284DAC3C0;
  v13 = _Block_copy((v5 + 48));
  v14 = v1[21];
  swift_unknownObjectRetain();

  [v11 secureElementInfoWithReply_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v1[35];
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA83870()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23AA839D4, 0, 0);
  }

  else
  {
    v4 = *(v1 + 288);
    v5 = *(v1 + 232);
    v6 = *(v1 + 240);
    *v4 = *(v1 + 224);
    *(v4 + 8) = v5;
    *(v4 + 16) = v6;
    sub_23AA7A178(v1 + 80);
    v7 = *(v2 + 8);

    return v7();
  }
}

uint64_t sub_23AA839D4()
{
  v1 = *(v0 + 296);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA83A40, v1, 0);
}

uint64_t sub_23AA83A58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[6])
  {
    sub_23AA7A258(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA83AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23AA83AC4(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v5 = a2;
    v6 = a2;
LABEL_3:

    swift_continuation_throwingResumeWithError();
    return;
  }

  if (!a1)
  {
    sub_23AA76B00();
    v13 = swift_allocError();
    *v14 = 21;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v15 = v13;
    goto LABEL_3;
  }

  v16 = a1;
  v7 = sub_23AA9612C();
  v9 = v8;
  v10 = sub_23AA9611C();
  v11 = *(*(a3 + 64) + 40);
  *v11 = v7;
  v11[1] = v9;
  v11[2] = v10;
  v11[3] = v12;
  swift_continuation_throwingResume();
}

uint64_t sub_23AA83C44(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_23AA83CE8;

  return sub_23AA78DB4(a1, a2);
}

uint64_t sub_23AA83CE8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23AA92748;
  }

  else
  {
    v3 = sub_23AA9276C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23AA83DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_23AA83E1C, a2, 0);
}

uint64_t sub_23AA83E1C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  swift_beginAccess();
  sub_23AA7A10C(v2 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA83EB0, 0, 0);
}

uint64_t sub_23AA83EB0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23AA83F60;
  v3 = swift_continuation_init();
  sub_23AA7F6F0(v3, (v0 + 80), v2, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA83F60()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA840F4;
  }

  else
  {
    sub_23AA7A178(v1 + 80);
    v4 = sub_23AA84084;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23AA84084()
{
  v1 = v0[22];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23AA840F4()
{
  v1 = *(v0 + 160);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA84160, v1, 0);
}

uint64_t sub_23AA8417C()
{
  v24 = v0;
  v1 = *(v0 + 184);
  *(v0 + 80) = v1;
  v2 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 184);
  if (v3)
  {

    v5 = *(v0 + 152);
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v6 = sub_23AA95F7C();
    sub_23AA7A0D4(v6, qword_27DFC29B0);
    v7 = sub_23AA95F5C();
    v8 = sub_23AA9627C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = sub_23AA95FEC();
      v13 = sub_23AA8F920(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23AA75000, v7, v8, "Throwing public error for internal error with description %s", v9, 0xCu);
      sub_23AA7A258(v10);
      MEMORY[0x23EE92E60](v10, -1, -1);
      MEMORY[0x23EE92E60](v9, -1, -1);
    }

    v14 = *(v0 + 176);
    v15 = *(v0 + 160);
    sub_23AA76B00();
    swift_allocError();
    sub_23AA8A0C0(v5, v16);
    swift_willThrow();
    v17 = *(v0 + 80);
  }

  else
  {
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);

    sub_23AA76B00();
    swift_allocError();
    *v20 = 21;
    swift_willThrow();
    v17 = v4;
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23AA843E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_23AA83CE8;

  return sub_23AA7AD90(a1, a2);
}

uint64_t sub_23AA8448C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_23AA83CE8;

  return sub_23AA8132C(a1, a2);
}

uint64_t sub_23AA84530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  return MEMORY[0x2822009F8](sub_23AA84550, a2, 0);
}

uint64_t sub_23AA84550()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_beginAccess();
  sub_23AA7A10C(v3 + 112, (v0 + 10));
  sub_23AA78838(v1, v2);

  return MEMORY[0x2822009F8](sub_23AA845EC, 0, 0);
}

uint64_t sub_23AA845EC()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_23AA846A8;
  v3 = swift_continuation_init();
  sub_23AA7F748(v3, (v0 + 80), v2, v1);
  sub_23AA7A2CC(v2, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA846A8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA8484C;
  }

  else
  {
    **(v1 + 168) = *(v1 + 152);
    sub_23AA7A178(v1 + 80);
    v4 = sub_23AA847D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23AA847D8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  sub_23AA7A2CC(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_23AA8484C()
{
  v1 = *(v0 + 176);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA848B8, v1, 0);
}

uint64_t sub_23AA848D4()
{
  v24 = v0;
  v1 = *(v0 + 200);
  *(v0 + 80) = v1;
  v2 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 200);
  if (v3)
  {

    v5 = *(v0 + 152);
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v6 = sub_23AA95F7C();
    sub_23AA7A0D4(v6, qword_27DFC29B0);
    v7 = sub_23AA95F5C();
    v8 = sub_23AA9627C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = sub_23AA95FEC();
      v13 = sub_23AA8F920(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23AA75000, v7, v8, "Throwing public error for internal error with description %s", v9, 0xCu);
      sub_23AA7A258(v10);
      MEMORY[0x23EE92E60](v10, -1, -1);
      MEMORY[0x23EE92E60](v9, -1, -1);
    }

    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 176);
    sub_23AA76B00();
    swift_allocError();
    sub_23AA8A0C0(v5, v17);
    swift_willThrow();
    v18 = *(v0 + 80);
  }

  else
  {
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v19 = *(v0 + 176);

    sub_23AA76B00();
    swift_allocError();
    *v20 = 21;
    swift_willThrow();
    v18 = v4;
  }

  sub_23AA7A2CC(v15, v14);
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23AA84B64()
{
  if (qword_27DFC1768 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  *(v0 + 200) = qword_27DFC29D8;
  sub_23AA7E800(v1, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA84C0C, 0, 0);
}

uint64_t sub_23AA84C0C()
{
  v2 = v0[24];
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_23AA84CC0;
  v3 = swift_continuation_init();
  sub_23AA95894(v3, v1, v2);
  sub_23AA7F30C(v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23AA84CC0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA84E4C;
  }

  else
  {
    *(v1 + 216) = *(v1 + 80);
    v4 = sub_23AA84DE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23AA84DE4()
{
  sub_23AA7F30C(v0[24]);
  v1 = v0[1];
  v2 = v0[27];

  return v1(v2);
}

uint64_t sub_23AA84E4C()
{
  v21 = v0;
  v1 = *(v0 + 208);
  *(v0 + 80) = v1;
  v2 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 208);
  if (v3)
  {

    v5 = *(v0 + 184);
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v6 = sub_23AA95F7C();
    sub_23AA7A0D4(v6, qword_27DFC29B0);
    v7 = sub_23AA95F5C();
    v8 = sub_23AA9627C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = sub_23AA95FEC();
      v13 = sub_23AA8F920(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23AA75000, v7, v8, "Throwing public error for internal error with description %s", v9, 0xCu);
      sub_23AA7A258(v10);
      MEMORY[0x23EE92E60](v10, -1, -1);
      MEMORY[0x23EE92E60](v9, -1, -1);
    }

    v14 = *(v0 + 192);
    sub_23AA76B00();
    swift_allocError();
    sub_23AA8A0C0(v5, v15);
    swift_willThrow();
    v16 = *(v0 + 80);
  }

  else
  {
    v14 = *(v0 + 192);

    sub_23AA76B00();
    swift_allocError();
    *v17 = 21;
    swift_willThrow();
    v16 = v4;
  }

  sub_23AA7F30C(v14);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23AA850A8(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_23AA85148;

  return sub_23AA804F0(v1 + 16, a1);
}

uint64_t sub_23AA85148()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_23AA852C4;
  }

  else
  {
    v3 = sub_23AA8525C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23AA8525C()
{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23AA852C4()
{
  v22 = v0;
  v1 = *(v0 + 56);
  *(v0 + 24) = v1;
  v2 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 56);
  if (v3)
  {

    v5 = *(v0 + 32);
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v6 = sub_23AA95F7C();
    sub_23AA7A0D4(v6, qword_27DFC29B0);
    v7 = sub_23AA95F5C();
    v8 = sub_23AA9627C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      v11 = sub_23AA95FEC();
      v13 = sub_23AA8F920(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23AA75000, v7, v8, "Throwing public error for internal error with description %s", v9, 0xCu);
      sub_23AA7A258(v10);
      MEMORY[0x23EE92E60](v10, -1, -1);
      MEMORY[0x23EE92E60](v9, -1, -1);
    }

    v14 = *(v0 + 40);
    sub_23AA76B00();
    swift_allocError();
    sub_23AA8A0C0(v5, v15);
    swift_willThrow();
    v16 = *(v0 + 24);
  }

  else
  {
    v17 = *(v0 + 40);

    sub_23AA76B00();
    swift_allocError();
    *v18 = 21;
    swift_willThrow();
    v16 = v4;
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23AA85520(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_23AA855C4;

  return sub_23AA8344C(a1, a2);
}

uint64_t sub_23AA855C4()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23AA8573C;
  }

  else
  {
    v3 = sub_23AA856D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23AA856D8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23AA8573C()
{
  v22 = v0;
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 48);
  if (v3)
  {

    v5 = *(v0 + 24);
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v6 = sub_23AA95F7C();
    sub_23AA7A0D4(v6, qword_27DFC29B0);
    v7 = sub_23AA95F5C();
    v8 = sub_23AA9627C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      v11 = sub_23AA95FEC();
      v13 = sub_23AA8F920(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23AA75000, v7, v8, "Throwing public error for internal error with description %s", v9, 0xCu);
      sub_23AA7A258(v10);
      MEMORY[0x23EE92E60](v10, -1, -1);
      MEMORY[0x23EE92E60](v9, -1, -1);
    }

    v14 = *(v0 + 32);
    sub_23AA76B00();
    swift_allocError();
    sub_23AA8A0C0(v5, v15);
    swift_willThrow();
    v16 = *(v0 + 16);
  }

  else
  {
    v17 = *(v0 + 32);

    sub_23AA76B00();
    swift_allocError();
    *v18 = 21;
    swift_willThrow();
    v16 = v4;
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23AA85998()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_23AA85A2C;

  return sub_23AA86F3C(v0 + 16);
}

uint64_t sub_23AA85A2C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23AA85B5C;
  }

  else
  {
    v3 = sub_23AA85B40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23AA85B5C()
{
  v21 = v0;
  v1 = v0[6];
  v0[3] = v1;
  v2 = (v0 + 3);
  v3 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  v4 = swift_dynamicCast();
  v5 = v0[6];
  if (v4)
  {

    v6 = v0[4];
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v7 = sub_23AA95F7C();
    sub_23AA7A0D4(v7, qword_27DFC29B0);
    v8 = sub_23AA95F5C();
    v9 = sub_23AA9627C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = sub_23AA95FEC();
      v14 = sub_23AA8F920(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23AA75000, v8, v9, "Throwing public error for internal error with description %s", v10, 0xCu);
      sub_23AA7A258(v11);
      MEMORY[0x23EE92E60](v11, -1, -1);
      MEMORY[0x23EE92E60](v10, -1, -1);
    }

    sub_23AA76B00();
    swift_allocError();
    sub_23AA8A0C0(v6, v15);
    swift_willThrow();
    v16 = *v2;
  }

  else
  {

    sub_23AA76B00();
    swift_allocError();
    *v17 = 21;
    swift_willThrow();
    v16 = v5;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_23AA85DB0(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_23AA85E50;

  return sub_23AA92944(v1 + 16, a1);
}

uint64_t sub_23AA85E50()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_23AA92764;
  }

  else
  {
    v3 = sub_23AA92744;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23AA85F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v26 = a1;
  v3 = sub_23AA76CEC(&qword_27DFC1918, &qword_23AA978C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = sub_23AA76CEC(&qword_27DFC1920, &qword_23AA978D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_23AA76CEC(&qword_27DFC1930, &qword_23AA978E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  v20 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v21 = *(v20 - 8);
  (*(v21 + 56))(v19, 1, 1, v20);
  (*(v4 + 16))(v7, v25, v3);
  v27 = v19;
  type metadata accessor for CredentialSession.Event(0);
  sub_23AA9621C();
  (*(v9 + 16))(v26, v12, v8);
  sub_23AA912F8(v19, v17, &qword_27DFC1930, &qword_23AA978E0);
  result = (*(v21 + 48))(v17, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    (*(v21 + 32))(v24, v17, v20);
    return sub_23AA92440(v19, &qword_27DFC1930, &qword_23AA978E0);
  }

  return result;
}

uint64_t sub_23AA86288(uint64_t a1, uint64_t a2)
{
  sub_23AA92440(a2, &qword_27DFC1930, &qword_23AA978E0);
  v4 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_23AA863B4(uint64_t a1, void **a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  if (*a2)
  {
    sub_23AA7A10C(a2, v21);
    v12 = swift_allocObject();
    v13 = v21[1];
    *(v12 + 16) = v21[0];
    *(v12 + 32) = v13;
    *(v12 + 48) = v21[2];
    *(v12 + 64) = a1;
    v20[4] = a6;
    v20[5] = v12;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_23AA76C84;
    v20[3] = a7;
    v14 = _Block_copy(v20);
    swift_unknownObjectRetain();

    v15 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v14);
    sub_23AA962CC();
    swift_unknownObjectRelease();
    sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v20[0] = 0;
    }

    a3(v20, a1);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v17 = swift_allocError();
    *v18 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v19 = v17;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA865C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23AA912F8(a3, v26 - v10, &qword_27DFC18B8, &qword_23AA98090);
  v12 = sub_23AA961EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23AA92440(v11, &qword_27DFC18B8, &qword_23AA98090);
  }

  else
  {
    sub_23AA961DC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23AA961CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23AA9617C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23AA868C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23AA912F8(a3, v26 - v10, &qword_27DFC18B8, &qword_23AA98090);
  v12 = sub_23AA961EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23AA92440(v11, &qword_27DFC18B8, &qword_23AA98090);
  }

  else
  {
    sub_23AA961DC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23AA961CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23AA9617C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_23AA76CEC(&qword_27DFC19F0, &qword_23AA97FC8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_23AA76CEC(&qword_27DFC19F0, &qword_23AA97FC8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t static CredentialSession.startSession()()
{
  v1 = sub_23AA95F8C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA86C98, 0, 0);
}

uint64_t sub_23AA86C98()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D49158], v3);
  v4 = sub_23AA95F9C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_23AA86E10;

    return sub_23AA85998();
  }

  else
  {
    sub_23AA76B00();
    swift_allocError();
    *v7 = 15;
    swift_willThrow();
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23AA86E10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  v7 = *(v4 + 32);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_23AA86F5C()
{
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = sub_23AA95F7C();
  sub_23AA7A0D4(v1, qword_27DFC29B0);
  v2 = sub_23AA95F5C();
  v3 = sub_23AA9625C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23AA75000, v2, v3, "Starting credential session", v4, 2u);
    MEMORY[0x23EE92E60](v4, -1, -1);
  }

  v5 = type metadata accessor for CredentialSession(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  *(v0 + 24) = swift_allocObject();
  CredentialSession.init()();
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  v8[1] = sub_23AA870C4;

  return sub_23AA87294();
}

uint64_t sub_23AA870C4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23AA871F8;
  }

  else
  {
    v3 = sub_23AA871D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23AA871F8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t CredentialSession.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CredentialSession.init()();
  return v3;
}

uint64_t sub_23AA872B4()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionStarted;
  v0[20] = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionStarted;
  if (*(v1 + v2) == 1)
  {
    sub_23AA76B00();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_27DFC1768 != -1)
    {
      swift_once();
      v6 = v0[19];
    }

    v0[21] = qword_27DFC29D8;

    return MEMORY[0x2822009F8](sub_23AA873E4, 0, 0);
  }
}

uint64_t sub_23AA873E4()
{
  v1 = v0[21];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_23AA8749C;
  v3 = swift_continuation_init();
  sub_23AA95A5C(v3, v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23AA8749C()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    v3 = *(*v0 + 48);
    swift_willThrow();
    v4 = v2[1];

    return v4();
  }

  else
  {
    v6 = v1[19];
    v1[22] = v1[10];

    return MEMORY[0x2822009F8](sub_23AA875E8, v6, 0);
  }
}

uint64_t sub_23AA875E8()
{
  v19 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);

  v3 = sub_23AA95F5C();
  v4 = sub_23AA9625C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v8 = sub_23AA9636C();
    v10 = sub_23AA8F920(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23AA75000, v3, v4, "Credential Session [%s] Start Success!", v6, 0xCu);
    sub_23AA7A258(v7);
    MEMORY[0x23EE92E60](v7, -1, -1);
    MEMORY[0x23EE92E60](v6, -1, -1);
  }

  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[20];
  *(v0[21] + 32) = &off_284DAC538;
  swift_unknownObjectWeakAssign();
  v0[18] = &unk_284DAF878;
  v14 = swift_dynamicCastObjCProtocolUnconditional();
  swift_beginAccess();
  v0[13] = type metadata accessor for CredentialSession(0);
  v0[14] = &off_284DAC528;
  v0[10] = v12;
  v15 = *(v12 + 112);
  *(v12 + 112) = v14;

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_23AA92440(v12 + 120, &qword_27DFC18C0, &qword_23AA975E0);
  sub_23AA82840((v0 + 10), v12 + 120);
  sub_23AA7A258(v0 + 10);
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v12 + v13) = 1;
  v16 = v0[1];

  return v16();
}

uint64_t sub_23AA878D0()
{
  v1 = *(v0 + 288);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA87954, 0, 0);
}

uint64_t sub_23AA87954()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_23AA87CD0;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, v5 + 48);
  v6 = swift_allocObject();
  v7 = *(v5 + 64);
  *(v6 + 16) = *(v5 + 48);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v5 + 80);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA7A2A4;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DAC410;
  v8 = _Block_copy(v1 + 22);
  v9 = v1[27];
  swift_unknownObjectRetain();

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 200) = 0;
    goto LABEL_7;
  }

  v11 = *(v5 + 200);
  if (!v11)
  {
LABEL_7:
    sub_23AA76B00();
    v19 = swift_allocError();
    *v20 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v21 = v19;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    v22 = *(v5 + 200);
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v1[20] = sub_23AA8FEE4;
  v1[21] = v12;
  v1[16] = MEMORY[0x277D85DD0];
  v1[17] = 1107296256;
  v1[18] = sub_23AA880A0;
  v1[19] = &unk_284DAC460;
  v13 = _Block_copy((v5 + 48));
  v14 = v1[21];
  swift_unknownObjectRetain();

  [v11 endWithReply_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v1[35];
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA87CD0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA87E68;
    v5 = 0;
  }

  else
  {
    v6 = *(v1 + 288);
    sub_23AA7A178(v1 + 80);
    v4 = sub_23AA87E04;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_23AA87E04()
{
  v1 = *(v0 + 288);
  sub_23AA880E4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23AA87E68()
{
  v1 = *(v0 + 288);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA87ED4, v1, 0);
}

uint64_t sub_23AA87ED4()
{
  v20 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);
  v3 = sub_23AA9627C();
  v4 = v1;
  v5 = sub_23AA95F5C();

  v6 = os_log_type_enabled(v5, v3);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[33];
    v13 = sub_23AA9639C();
    v15 = sub_23AA8F920(v13, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_23AA75000, v5, v3, "Error %s encountered when invalidating session", v8, 0xCu);
    sub_23AA7A258(v9);
    MEMORY[0x23EE92E60](v9, -1, -1);
    MEMORY[0x23EE92E60](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[36];
  sub_23AA880E4();
  v17 = v0[1];

  return v17();
}

uint64_t sub_23AA880A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_23AA880E4()
{
  v1 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);
  v3 = sub_23AA95F5C();
  v4 = sub_23AA9629C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23AA75000, v3, v4, "signalInvalidationOnEventStream", v5, 2u);
    MEMORY[0x23EE92E60](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion);
  *(v1 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion) = 0;

  v7 = 7;
  sub_23AA8A90C(&v7);
}

uint64_t sub_23AA881F0(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = *(*(sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v4 = type metadata accessor for CredentialSession.Credential();
  v2[49] = v4;
  v5 = *(v4 - 8);
  v2[50] = v5;
  v6 = *(v5 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA88300, v1, 0);
}

uint64_t sub_23AA88300()
{
  v1 = *(v0 + 368);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA88384, 0, 0);
}

uint64_t sub_23AA88384()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_23AA88708;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, (v1 + 16));
  v6 = swift_allocObject();
  v7 = *(v1 + 9);
  *(v6 + 16) = *(v1 + 8);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 10);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA8FF70;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DAC4B0;
  v8 = _Block_copy(v1 + 22);
  v9 = v1[27];
  swift_unknownObjectRetain();

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 272) = 0;
    goto LABEL_7;
  }

  v11 = *(v5 + 272);
  if (!v11)
  {
LABEL_7:
    sub_23AA76B00();
    v19 = swift_allocError();
    *v20 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v21 = v19;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    v22 = *(v5 + 272);
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v1[32] = sub_23AA8FF8C;
  v1[33] = v12;
  v1[28] = MEMORY[0x277D85DD0];
  v1[29] = 1107296256;
  v1[30] = sub_23AA88D04;
  v1[31] = &unk_284DAC500;
  v13 = _Block_copy((v5 + 144));
  v14 = v1[33];
  swift_unknownObjectRetain();

  [v11 getSessionStateWithReply_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v1[44];
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA88708()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 424) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA88BE4;
    v5 = 0;
  }

  else
  {
    v6 = *(v1 + 368);
    *(v1 + 432) = *(v1 + 328);
    sub_23AA7A178(v1 + 80);
    v4 = sub_23AA88848;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_23AA88848()
{
  v1 = *(v0 + 432);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v13 = *(v0 + 440);
      if (v13)
      {
        v14 = *(v0 + 392);
        v15 = *(v0 + 400);
        v16 = *(v0 + 384);
        v17 = v13;
        sub_23AA7B408(v17, v16);
        if ((*(v15 + 48))(v16, 1, v14) != 1)
        {
          v29 = *(v0 + 416);
          v30 = *(v0 + 384);
          v31 = *(v0 + 360);

          sub_23AA8FF0C(v30, v29);
          sub_23AA8FF0C(v29, v31);
          goto LABEL_25;
        }

        sub_23AA92440(*(v0 + 384), &qword_27DFC1910, &unk_23AA978B8);
      }

      if (qword_27DFC1760 != -1)
      {
        swift_once();
      }

      v18 = sub_23AA95F7C();
      sub_23AA7A0D4(v18, qword_27DFC29B0);
      v8 = sub_23AA95F5C();
      v9 = sub_23AA9629C();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_24;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "No valid credential selected";
    }

    else
    {
      if (v1 != 3)
      {
        goto LABEL_13;
      }

      v2 = *(v0 + 440);
      if (v2)
      {
        v3 = *(v0 + 392);
        v4 = *(v0 + 400);
        v5 = *(v0 + 376);
        v6 = v2;
        sub_23AA7B408(v6, v5);
        if ((*(v4 + 48))(v5, 1, v3) != 1)
        {
          v26 = *(v0 + 408);
          v27 = *(v0 + 376);
          v28 = *(v0 + 360);

          sub_23AA8FF0C(v27, v26);
          sub_23AA8FF0C(v26, v28);
          goto LABEL_25;
        }

        sub_23AA92440(*(v0 + 376), &qword_27DFC1910, &unk_23AA978B8);
      }

      if (qword_27DFC1760 != -1)
      {
        swift_once();
      }

      v7 = sub_23AA95F7C();
      sub_23AA7A0D4(v7, qword_27DFC29B0);
      v8 = sub_23AA95F5C();
      v9 = sub_23AA9629C();
      if (!os_log_type_enabled(v8, v9))
      {
LABEL_24:
        v19 = *(v0 + 440);

        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "No credential selected";
    }

    _os_log_impl(&dword_23AA75000, v8, v9, v11, v10, 2u);
    MEMORY[0x23EE92E60](v10, -1, -1);
    goto LABEL_24;
  }

  if (v1 <= 1)
  {

LABEL_25:
    v21 = *(v0 + 408);
    v20 = *(v0 + 416);
    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v24 = *(v0 + 360);
    type metadata accessor for CredentialSession.State(0);
    swift_storeEnumTagMultiPayload();

    v25 = *(v0 + 8);

    return v25();
  }

LABEL_13:
  *(v0 + 344) = v1;
  v12 = MEMORY[0x277D83B88];

  return MEMORY[0x2821FE1D0](&type metadata for SECSessionState, v0 + 344, &type metadata for SECSessionState, v12);
}

uint64_t sub_23AA88BE4()
{
  v1 = *(v0 + 368);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA88C50, v1, 0);
}

uint64_t sub_23AA88C50()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  type metadata accessor for CredentialSession.State(0);
  swift_storeEnumTagMultiPayload();

  v6 = *(v0 + 8);

  return v6();
}

void sub_23AA88D04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23AA88D7C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_23AA76CEC(&qword_27DFC1918, &qword_23AA978C8);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = sub_23AA76CEC(&qword_27DFC1920, &qword_23AA978D0);
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v9 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v2[22] = v9;
  v10 = *(v9 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v12 = *(*(sub_23AA76CEC(&qword_27DFC1930, &qword_23AA978E0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v13 = *(*(sub_23AA76CEC(&qword_27DFC1938, &unk_23AA978E8) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA88FAC, v1, 0);
}

uint64_t sub_23AA88FAC()
{
  v60 = v0;
  v2 = v0 + 29;
  v1 = v0[29];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[15];
  v6 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStream;
  swift_beginAccess();
  sub_23AA912F8(v5 + v6, v1, &qword_27DFC1938, &unk_23AA978E8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v7 = v0[27];
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[15];
    sub_23AA92440(v0[29], &qword_27DFC1938, &unk_23AA978E8);
    v11 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStreamContinuation;
    swift_beginAccess();
    v53 = v11;
    v54 = v10;
    sub_23AA912F8(v10 + v11, v7, &qword_27DFC1930, &qword_23AA978E0);
    v12 = (*(v8 + 48))(v7, 1, v9);
    v13 = v0[27];
    v55 = v6;
    v56 = v5;
    if (v12)
    {
      sub_23AA92440(v13, &qword_27DFC1930, &qword_23AA978E0);
    }

    else
    {
      v14 = v0[25];
      v15 = v0[22];
      v16 = v0[23];
      (*(v16 + 16))(v14, v13, v15);
      sub_23AA92440(v13, &qword_27DFC1930, &qword_23AA978E0);
      sub_23AA9620C();
      (*(v16 + 8))(v14, v15);
    }

    v2 = v0 + 21;
    v17 = v0[21];
    v52 = v0[26];
    v18 = v0[23];
    v19 = v0[24];
    v50 = v0[28];
    v51 = v0[22];
    v21 = v0[19];
    v20 = v0[20];
    v22 = v0[17];
    v23 = v0[18];
    v24 = v0[16];
    (*(v22 + 104))(v23, *MEMORY[0x277D85778], v24);
    sub_23AA85F64(v17, v19, v23);
    (*(v22 + 8))(v23, v24);
    (*(v20 + 16))(v50, v17, v21);
    (*(v20 + 56))(v50, 0, 1, v21);
    swift_beginAccess();
    sub_23AA90720(v50, v56 + v55, &qword_27DFC1938, &unk_23AA978E8);
    swift_endAccess();
    (*(v18 + 16))(v52, v19, v51);
    (*(v18 + 56))(v52, 0, 1, v51);
    swift_beginAccess();
    sub_23AA90720(v52, v54 + v53, &qword_27DFC1930, &qword_23AA978E0);
    swift_endAccess();
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v25 = v0[15];
    v26 = sub_23AA95F7C();
    sub_23AA7A0D4(v26, qword_27DFC29B0);
    v27 = sub_23AA9626C();

    v28 = sub_23AA95F5C();

    v29 = os_log_type_enabled(v28, v27);
    v31 = v0[23];
    v30 = v0[24];
    v32 = v0[22];
    if (v29)
    {
      v58 = v0[24];
      v33 = v0[15];
      v57 = v0[22];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59 = v35;
      *v34 = 136315138;
      sub_23AA95F4C();
      sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
      v36 = sub_23AA9636C();
      v38 = sub_23AA8F920(v36, v37, &v59);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_23AA75000, v28, v27, "[self=%s] eventStream init", v34, 0xCu);
      sub_23AA7A258(v35);
      MEMORY[0x23EE92E60](v35, -1, -1);
      MEMORY[0x23EE92E60](v34, -1, -1);

      (*(v31 + 8))(v58, v57);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
    }
  }

  v39 = *v2;
  v40 = v0[28];
  v41 = v0[29];
  v43 = v0[26];
  v42 = v0[27];
  v45 = v0[24];
  v44 = v0[25];
  v46 = v0[21];
  v47 = v0[18];
  (*(v0[20] + 32))(v0[14], v39, v0[19]);

  v48 = v0[1];

  return v48();
}

uint64_t sub_23AA89548(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(sub_23AA76CEC(&qword_27DFC1938, &unk_23AA978E8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = sub_23AA76CEC(&qword_27DFC1918, &qword_23AA978C8);
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v10 = sub_23AA76CEC(&qword_27DFC1920, &qword_23AA978D0);
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();
  v13 = *(*(sub_23AA76CEC(&qword_27DFC1930, &qword_23AA978E0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA89760, v1, 0);
}

uint64_t sub_23AA89760()
{
  v45 = v0;
  v1 = v0;
  v3 = v0[24];
  v2 = v0 + 24;
  v4 = *(v2 - 7);
  v5 = *(v2 - 6);
  v6 = *(v2 - 12);
  v7 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStreamContinuation;
  swift_beginAccess();
  sub_23AA912F8(v6 + v7, v3, &qword_27DFC1930, &qword_23AA978E0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v2 = v1 + 19;
    v8 = v1[19];
    v42 = v1[23];
    v9 = v1[21];
    v10 = v1[22];
    v40 = v1[18];
    v41 = v1[17];
    v11 = v1[15];
    v12 = v1[16];
    v13 = v1[14];
    v37 = v1[13];
    v38 = v1[20];
    v39 = v1[12];
    sub_23AA92440(v1[24], &qword_27DFC1930, &qword_23AA978E0);
    (*(v11 + 104))(v12, *MEMORY[0x277D85778], v13);
    sub_23AA85F64(v10, v8, v12);
    (*(v11 + 8))(v12, v13);
    (*(v9 + 16))(v37, v10, v38);
    (*(v9 + 56))(v37, 0, 1, v38);
    v14 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStream;
    swift_beginAccess();
    sub_23AA90720(v37, v39 + v14, &qword_27DFC1938, &unk_23AA978E8);
    swift_endAccess();
    (*(v40 + 16))(v42, v8, v41);
    (*(v40 + 56))(v42, 0, 1, v41);
    swift_beginAccess();
    sub_23AA90720(v42, v6 + v7, &qword_27DFC1930, &qword_23AA978E0);
    swift_endAccess();
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v15 = v1[12];
    v16 = sub_23AA95F7C();
    sub_23AA7A0D4(v16, qword_27DFC29B0);
    v17 = sub_23AA9626C();

    v18 = sub_23AA95F5C();

    v19 = os_log_type_enabled(v18, v17);
    v21 = v1[21];
    v20 = v1[22];
    v22 = v1[20];
    if (v19)
    {
      v43 = v1[22];
      v23 = v1[12];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = v25;
      *v24 = 136315138;
      sub_23AA95F4C();
      sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
      v26 = sub_23AA9636C();
      v28 = sub_23AA8F920(v26, v27, &v44);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23AA75000, v18, v17, "[%s]eventStreamContinuation init", v24, 0xCu);
      sub_23AA7A258(v25);
      MEMORY[0x23EE92E60](v25, -1, -1);
      MEMORY[0x23EE92E60](v24, -1, -1);

      (*(v21 + 8))(v43, v22);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  v29 = v1[23];
  v30 = v1[24];
  v31 = v1[22];
  v32 = v1[19];
  v33 = v1[16];
  v34 = v1[13];
  (*(v1[18] + 32))(v1[11], *v2, v1[17]);

  v35 = v1[1];

  return v35();
}

uint64_t CredentialSession.NFCFieldInformation.hashValue.getter()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

uint64_t CredentialSession.ConnectivityEvent.instanceApplicationIdentifier.getter()
{
  v1 = *v0;
  sub_23AA78838(*v0, *(v0 + 8));
  return v1;
}

uint64_t CredentialSession.ConnectivityEvent.data.getter()
{
  v1 = *(v0 + 16);
  sub_23AA78838(v1, *(v0 + 24));
  return v1;
}

unint64_t CredentialSession.ErrorCode.failureReason.getter()
{
  result = 0x2064696C61766E49;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000033;
      break;
    case 2:
      v2 = 5;
      goto LABEL_9;
    case 3:
      result = 0xD000000000000044;
      break;
    case 4:
      result = 0xD00000000000004BLL;
      break;
    case 5:
      result = 0xD000000000000058;
      break;
    case 6:
      result = 0xD00000000000004ALL;
      break;
    case 7:
      result = 0xD00000000000002ELL;
      break;
    case 8:
      result = 0xD00000000000006BLL;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 0xA:
      result = 0xD00000000000002ALL;
      break;
    case 0xB:
    case 0x14:
      result = 0xD000000000000020;
      break;
    case 0xC:
      v2 = 36;
LABEL_9:
      result = v2 | 0xD00000000000001ALL;
      break;
    case 0xD:
      result = 0xD000000000000045;
      break;
    case 0xE:
      result = 0xD00000000000002FLL;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x10:
      result = 0xD000000000000048;
      break;
    case 0x11:
      return result;
    case 0x12:
      result = 0xD000000000000078;
      break;
    case 0x13:
      result = 0xD00000000000005ALL;
      break;
    case 0x15:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD00000000000002CLL;
      break;
  }

  return result;
}

uint64_t CredentialSession.ErrorCode.hashValue.getter()
{
  v1 = *v0;
  sub_23AA963EC();
  MEMORY[0x23EE92940](v1);
  return sub_23AA9640C();
}

uint64_t sub_23AA8A0C0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  switch(result)
  {
    case 1:
      goto LABEL_5;
    case 3:
    case 5:
      v2 = 6;
LABEL_5:
      *a2 = v2;
      break;
    case 7:
      *a2 = 4;
      break;
    case 8:
    case 9:
    case 29:
      *a2 = 12;
      break;
    case 10:
      *a2 = 3;
      break;
    case 11:
    case 13:
      *a2 = 11;
      break;
    case 15:
      sub_23AA9630C();
      __break(1u);
      JUMPOUT(0x23AA8A1E8);
    case 18:
      *a2 = 10;
      break;
    case 22:
      *a2 = 1;
      break;
    case 24:
      *a2 = 13;
      break;
    case 26:
      *a2 = 14;
      break;
    case 27:
      *a2 = 16;
      break;
    case 28:
      *a2 = 19;
      break;
    case 32:
      *a2 = 18;
      break;
    default:
      *a2 = 21;
      break;
  }

  return result;
}

uint64_t sub_23AA8A268()
{
  v0 = sub_23AA95F7C();
  sub_23AA924A8(v0, qword_27DFC29B0);
  sub_23AA7A0D4(v0, qword_27DFC29B0);
  return sub_23AA95F6C();
}

char *CredentialSession.init()()
{
  v1 = sub_23AA95F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  sub_23AA90720(v11, (v0 + 120), &qword_27DFC18C0, &qword_23AA975E0);
  v6 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStreamContinuation;
  v7 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStream;
  v9 = sub_23AA76CEC(&qword_27DFC1920, &qword_23AA978D0);
  (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  *&v0[OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionStartedContinuation] = 0;
  v0[OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionStarted] = 0;
  *&v0[OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion] = 0;
  sub_23AA95F3C();
  (*(v2 + 32))(&v0[OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionIdentifier], v5, v1);
  return v0;
}

uint64_t CredentialSession.deinit()
{
  sub_23AA7A178(v0 + 112);
  sub_23AA92440(v0 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStreamContinuation, &qword_27DFC1930, &qword_23AA978E0);
  sub_23AA92440(v0 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStream, &qword_27DFC1938, &unk_23AA978E8);
  v1 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionIdentifier;
  v2 = sub_23AA95F4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CredentialSession.__deallocating_deinit()
{
  sub_23AA7A178(v0 + 112);
  sub_23AA92440(v0 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStreamContinuation, &qword_27DFC1930, &qword_23AA978E0);
  sub_23AA92440(v0 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStream, &qword_27DFC1938, &unk_23AA978E8);
  v1 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionIdentifier;
  v2 = sub_23AA95F4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23AA8A684(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23AA95F2C();
}

uint64_t sub_23AA8A6A0(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v12[4] = sub_23AA924A0;
    v12[5] = v6;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_23AA7DD28;
    v12[3] = &unk_284DACB98;
    v7 = _Block_copy(v12);
    swift_unknownObjectRetain();

    [v4 queueSessionWithCallbackProxy:a3 reply:v7];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v9 = swift_allocError();
    *v10 = 12;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v11 = v9;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA8A818(uint64_t result, void *a2, uint64_t a3)
{
  if (a2)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v4 = a2;
    v5 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else if (result)
  {
    v6 = result;
    **(*(a3 + 64) + 40) = swift_dynamicCastObjCProtocolUnconditional();
    v7 = v6;
    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23AA8A90C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_23AA76CEC(&qword_27DFC1938, &unk_23AA978E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for CredentialSession.Event(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v48 - v13;
  v14 = sub_23AA76CEC(&qword_27DFC1930, &qword_23AA978E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v51 = &v48 - v23;
  v57 = *a1;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v24 = sub_23AA95F7C();
  v25 = sub_23AA7A0D4(v24, qword_27DFC29B0);

  v50 = v25;
  v26 = sub_23AA95F5C();
  v27 = sub_23AA9626C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = v7;
    v29 = v28;
    v30 = swift_slowAlloc();
    v48 = v8;
    v31 = v30;
    v59[0] = v30;
    *v29 = 136315394;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v32 = sub_23AA9636C();
    v34 = sub_23AA8F920(v32, v33, v59);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v58 = v57;
    v35 = sub_23AA9616C();
    v37 = sub_23AA8F920(v35, v36, v59);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_23AA75000, v26, v27, "[%s] invalidateEventStream(reason: %s)", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE92E60](v31, -1, -1);
    v38 = v29;
    v7 = v49;
    MEMORY[0x23EE92E60](v38, -1, -1);
  }

  v39 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStreamContinuation;
  swift_beginAccess();
  sub_23AA912F8(v2 + v39, v19, &qword_27DFC1930, &qword_23AA978E0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_23AA92440(v19, &qword_27DFC1930, &qword_23AA978E0);
    v40 = sub_23AA95F5C();
    v41 = sub_23AA9626C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_23AA75000, v40, v41, "Previously invalidated", v42, 2u);
      MEMORY[0x23EE92E60](v42, -1, -1);
    }
  }

  else
  {
    v43 = v51;
    (*(v21 + 32))(v51, v19, v20);
    *v55 = v57;
    swift_storeEnumTagMultiPayload();
    v44 = v52;
    sub_23AA961FC();
    (*(v53 + 8))(v44, v54);
    sub_23AA9620C();
    (*(v21 + 8))(v43, v20);
    v45 = v56;
    (*(v21 + 56))(v56, 1, 1, v20);
    swift_beginAccess();
    sub_23AA90720(v45, v2 + v39, &qword_27DFC1930, &qword_23AA978E0);
    swift_endAccess();
    v46 = sub_23AA76CEC(&qword_27DFC1920, &qword_23AA978D0);
    (*(*(v46 - 8) + 56))(v7, 1, 1, v46);
    v47 = OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentEventStream;
    swift_beginAccess();
    sub_23AA90720(v7, v2 + v47, &qword_27DFC1938, &unk_23AA978E8);
    swift_endAccess();
  }
}

uint64_t sub_23AA8AFA8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CredentialSession.Event(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_23AA95F4C();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = *(*(sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for CredentialSession.Credential();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v2[18] = v18;
  v19 = swift_task_alloc();
  v2[19] = v19;
  *v19 = v2;
  v19[1] = sub_23AA8B234;

  return sub_23AA89548(v18);
}

uint64_t sub_23AA8B234()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23AA8B344, v2, 0);
}

uint64_t sub_23AA8B344()
{
  v44 = v0;
  v1 = v0[2];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA9631C())
  {
    v3 = 0;
    v39 = v1 & 0xFFFFFFFFFFFFFF8;
    v40 = v1 & 0xC000000000000001;
    v37 = v0[2] + 32;
    v38 = (v0[14] + 48);
    v34 = (v0[10] + 8);
    v35 = (v0[7] + 8);
    v36 = i;
    while (v40)
    {
      v8 = MEMORY[0x23EE92830](v3, v0[2]);
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_8:
      v11 = v0[12];
      v10 = v0[13];
      v12 = v8;
      sub_23AA7B408(v12, v11);
      if ((*v38)(v11, 1, v10) == 1)
      {
        v25 = v0[12];
        (*(v0[17] + 8))(v0[18], v0[16]);

        sub_23AA92440(v25, &qword_27DFC1910, &unk_23AA978B8);
        goto LABEL_21;
      }

      sub_23AA8FF0C(v0[12], v0[15]);
      if (qword_27DFC1760 != -1)
      {
        swift_once();
      }

      v42 = v9;
      v13 = sub_23AA95F7C();
      sub_23AA7A0D4(v13, qword_27DFC29B0);
      v14 = v12;
      v15 = sub_23AA95F5C();
      v16 = sub_23AA9629C();

      v41 = v14;
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[11];
        v18 = v0[9];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136315138;
        sub_23AA9600C();
        v21 = sub_23AA95F0C();
        v23 = v22;
        (*v34)(v17, v18);
        v24 = sub_23AA8F920(v21, v23, &v43);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_23AA75000, v15, v16, "Yield event for cred: %s", v19, 0xCu);
        sub_23AA7A258(v20);
        MEMORY[0x23EE92E60](v20, -1, -1);
        MEMORY[0x23EE92E60](v19, -1, -1);
      }

      v1 = v0[18];
      v4 = v0[15];
      v5 = v0[8];
      v6 = v0[6];
      v7 = v0[4];
      sub_23AA9250C(v4, v0[5], type metadata accessor for CredentialSession.Credential);
      swift_storeEnumTagMultiPayload();
      sub_23AA961FC();

      (*v35)(v5, v6);
      sub_23AA92574(v4, type metadata accessor for CredentialSession.Credential);
      ++v3;
      if (v42 == v36)
      {
        goto LABEL_20;
      }
    }

    if (v3 >= *(v39 + 16))
    {
      goto LABEL_18;
    }

    v8 = *(v37 + 8 * v3);
    v9 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  (*(v0[17] + 8))(v0[18], v0[16]);
LABEL_21:
  v26 = v0[18];
  v27 = v0[15];
  v29 = v0[11];
  v28 = v0[12];
  v30 = v0[8];
  v31 = v0[5];

  v32 = v0[1];

  return v32();
}

uint64_t sub_23AA8B75C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_23AA8B77C, v2, 0);
}

uint64_t sub_23AA8B77C()
{
  v1 = *(v0 + 16);
  sub_23AA880E4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23AA8B7DC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_23AA8B800, v1, 0);
}

uint64_t sub_23AA8B800()
{
  if (*(v0 + 24))
  {
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v1 = sub_23AA95F7C();
    sub_23AA7A0D4(v1, qword_27DFC29B0);
    v2 = sub_23AA9626C();
    v3 = sub_23AA95F5C();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23AA75000, v3, v2, "XPC interrupted", v4, 2u);
      MEMORY[0x23EE92E60](v4, -1, -1);
    }
  }

  else
  {
    *(*(v0 + 16) + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_sessionStarted) = 0;
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v5 = sub_23AA95F7C();
    sub_23AA7A0D4(v5, qword_27DFC29B0);
    v6 = sub_23AA9626C();
    v7 = sub_23AA95F5C();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23AA75000, v7, v6, "XPC invalidated", v8, 2u);
      MEMORY[0x23EE92E60](v8, -1, -1);
    }

    v9 = *(v0 + 16);

    sub_23AA880E4();
  }

  v10 = *(v0 + 8);

  return v10();
}