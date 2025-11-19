uint64_t static SensitiveContentPolicy.changes(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1ED98D748 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  PolicyCache.changes(for:)(a1, a2);
}

uint64_t PolicyCache.changes(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v29 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v26);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8790], v6);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8F58);
  a2[4] = sub_1AEA4A324(&qword_1ED98A490, &unk_1EB5E8F58);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1AEAF990C();
  (*(v7 + 8))(v9, v6);
  v16 = sub_1AEAF982C();
  (*(*(v16 - 8) + 56))(v30, 1, 1, v16);
  sub_1AEA63BD4(v27, v31, &qword_1EB5E8F38);
  v17 = v26;
  (*(v10 + 16))(v13, v15, v26);
  sub_1AEAF97FC();
  v18 = v28;

  v19 = sub_1AEAF97EC();
  v20 = (*(v10 + 80) + 89) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v23 = v31[1];
  *(v21 + 40) = v31[0];
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  *(v21 + 32) = v18;
  *(v21 + 56) = v23;
  *(v21 + 72) = v31[2];
  *(v21 + 88) = v32;
  (*(v10 + 32))(v21 + v20, v13, v17);
  v24 = v30;
  *(v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  sub_1AEA5E2A0(0, 0, v24, &unk_1AEAFE678, v21);
  sub_1AEAF991C();
  return (*(v10 + 8))(v15, v17);
}

uint64_t SensitiveContentPolicy.Changes.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA9BF88, 0, 0);
}

uint64_t sub_1AEA9BF88()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1AEA4B8D0;
  v5 = v0[2];

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

uint64_t SensitiveContentPolicy.Changes.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1AEAF977C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[7] = v5;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AEA9C0DC, v5, v7);
}

uint64_t sub_1AEA9C0DC()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1AEA9C1A0;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return MEMORY[0x1EEE6D8D0](v7, v5, v6, v0 + 2, v2, v3);
}

uint64_t sub_1AEA9C1A0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1AEA9C2CC, v4, v5);
  }

  else
  {
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1AEA9C2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1AEAF977C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[8] = v6;
  v5[9] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1AEA9C380, v6, v8);
}

uint64_t sub_1AEA9C380()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1AEA9C444;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return MEMORY[0x1EEE6D8D0](v7, v5, v6, v0 + 2, v2, v3);
}

uint64_t sub_1AEA9C444()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1AEA9C570, v4, v5);
  }

  else
  {
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t SensitiveContentPolicy.Changes.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1AEAF98EC();
}

uint64_t sub_1AEA9C6C4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8F58);
  v3 = sub_1AEA4A324(&qword_1ED98A490, &unk_1EB5E8F58);
  __swift_allocate_boxed_opaque_existential_1(&v1);
  sub_1AEAF995C();
  return sub_1AEA49728(&v1, &unk_1EB5F5C38);
}

uint64_t sub_1AEA9C790()
{
  sub_1AEAA2368();
  swift_allocError();
  *v1 = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AEA9C820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E90F0);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98D6C0 = result;
  return result;
}

uint64_t *sub_1AEA9C884()
{
  if (qword_1ED98D6C8 != -1)
  {
    swift_once();
  }

  return &qword_1ED98D6C0;
}

uint64_t static SensitiveContentPolicy.$currentPolicyOverride.getter()
{
  if (qword_1ED98D6C8 != -1)
  {
    swift_once();
  }
}

uint64_t static SensitiveContentPolicy.currentPolicyOverride.getter()
{
  if (qword_1ED98D6C8 != -1)
  {
    swift_once();
  }

  return sub_1AEAFA47C();
}

void *Optional<A>.check(for:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*(v2 + 8) & 1) != 0 || (*result & ~*v2) != 0)
  {
    type metadata accessor for SCAError(0);
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA41714(&unk_1ED98A750, 255, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    return swift_willThrow();
  }

  else
  {
    *a2 = *v2;
  }

  return result;
}

uint64_t PolicyCache.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PolicyCache.init(_:)(a1);
  return v2;
}

uint64_t *sub_1AEA9CAC0()
{
  if (qword_1ED98D748 != -1)
  {
    swift_once();
  }

  return &qword_1ED98D740;
}

id sub_1AEA9CB34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  v3 = *(v1 + 16);
  *a1 = v3;
  v4 = *(v1 + 24);
  *(a1 + 8) = v4;
  return sub_1AEA4E9A4(v3, v4);
}

id sub_1AEA9CBEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  v4 = *(v3 + 16);
  *a2 = v4;
  v5 = *(v3 + 24);
  *(a2 + 8) = v5;
  return sub_1AEA4E9A4(v4, v5);
}

uint64_t sub_1AEA9CCA4()
{
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DCC();
}

uint64_t sub_1AEA9CD7C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  swift_beginAccess();
  return sub_1AEA63BD4(v1 + 96, a1, &qword_1EB5E8F38);
}

uint64_t sub_1AEA9CE50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  swift_beginAccess();
  return sub_1AEA63BD4(v3 + 96, a2, &qword_1EB5E8F38);
}

uint64_t sub_1AEA9CF70(uint64_t a1)
{
  swift_beginAccess();
  sub_1AEA63BD4(v1 + 96, v6, &qword_1EB5E8F38);
  sub_1AEA63BD4(v6, v10, &qword_1EB5E8F38);
  sub_1AEA63BD4(a1, v12, &qword_1EB5E8F38);
  if (v11 == 255)
  {
    if (v13 == 255)
    {
      sub_1AEA41FAC(v10, &qword_1EB5E8F38);
      sub_1AEA41FAC(v6, &qword_1EB5E8F38);
      goto LABEL_7;
    }

LABEL_9:
    sub_1AEA41FAC(v10, &qword_1EB5E8F78);
    sub_1AEA41FAC(v6, &qword_1EB5E8F38);
LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[0] = v1;
    sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
    sub_1AEAF8DCC();

    return sub_1AEA41FAC(a1, &qword_1EB5E8F38);
  }

  sub_1AEA63BD4(v10, v9, &qword_1EB5E8F38);
  if (v13 == 255)
  {
    sub_1AEA45CE0(v9);
    goto LABEL_9;
  }

  v7[0] = v12[0];
  v7[1] = v12[1];
  v7[2] = v12[2];
  v8 = v13;
  v3 = _s24SensitiveContentAnalysis0aB6PolicyV6SourceO2eeoiySbAE_AEtFZ_0(v9, v7);
  sub_1AEA45CE0(v7);
  sub_1AEA45CE0(v9);
  sub_1AEA41FAC(v10, &qword_1EB5E8F38);
  sub_1AEA41FAC(v6, &qword_1EB5E8F38);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  swift_beginAccess();
  sub_1AEAA2160(a1, v1 + 96);
  swift_endAccess();
  return sub_1AEA41FAC(a1, &qword_1EB5E8F38);
}

uint64_t sub_1AEA9D22C()
{
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();
}

uint64_t sub_1AEA9D2D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41714(qword_1ED98A968, 255, type metadata accessor for PolicyCache);
  sub_1AEAF8DDC();

  *a2 = *(v3 + 152);
}

uint64_t sub_1AEA9D3B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA9D414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA9D480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA9D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AEA63BD4(a3, v22 - v9, &qword_1EB5E8F30);
  v11 = sub_1AEAF982C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AEA41FAC(v10, &qword_1EB5E8F30);
  }

  else
  {
    sub_1AEAF981C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AEAF977C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1AEAF95CC() + 32;
      type metadata accessor for PolicyFetcher();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1AEA41FAC(a3, &qword_1EB5E8F30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AEA41FAC(a3, &qword_1EB5E8F30);
  type metadata accessor for PolicyFetcher();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1AEA9D794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1AEA63BD4(a3, v25 - v10, &qword_1EB5E8F30);
  v12 = sub_1AEAF982C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1AEA41FAC(v11, &qword_1EB5E8F30);
  }

  else
  {
    sub_1AEAF981C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AEAF977C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AEAF95CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9118);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1AEA41FAC(a3, &qword_1EB5E8F30);

      return v22;
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

  sub_1AEA41FAC(a3, &qword_1EB5E8F30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9118);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t PolicyCache.deinit()
{
  sub_1AEA4E9D4(*(v0 + 16), *(v0 + 24));

  sub_1AEA45CE0(v0 + 40);
  sub_1AEA41FAC(v0 + 96, &qword_1EB5E8F38);

  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis11PolicyCache___observationRegistrar;
  v2 = sub_1AEAF8E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PolicyCache.__deallocating_deinit()
{
  sub_1AEA4E9D4(*(v0 + 16), *(v0 + 24));

  sub_1AEA45CE0(v0 + 40);
  sub_1AEA41FAC(v0 + 96, &qword_1EB5E8F38);

  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis11PolicyCache___observationRegistrar;
  v2 = sub_1AEAF8E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1AEA9DC1C()
{
  if (*(v0 + 48))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    sub_1AEAF985C();
  }

  sub_1AEA4D5B8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1AEA9DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_1AEAF97BC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  if (qword_1ED98D888 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED98D890;
  v5[24] = qword_1ED98D890;

  return MEMORY[0x1EEE6DFA0](sub_1AEA9DDB4, v7, 0);
}

uint64_t sub_1AEA9DDB4()
{
  sub_1AEAA12D0(v0[19], (v0 + 7));
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1AEAF98EC();

  sub_1AEA4A65C((v0 + 7));
  v0[25] = sub_1AEA41714(&unk_1ED98AA20, v5, type metadata accessor for PolicyActor);
  if (v0[24])
  {
    swift_getObjectType();
    v6 = sub_1AEAF977C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v0[26] = v6;
  v0[27] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1AEA9DF8C, v6, v8);
}

uint64_t sub_1AEA9DF8C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[5];
  v4 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v3);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1AEA9E064;

  return MEMORY[0x1EEE6D8D0](v0 + 12, v1, v2, v0 + 16, v3, v4);
}

uint64_t sub_1AEA9E064()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[26];
    v4 = v2[27];
    v5 = sub_1AEA9E560;
  }

  else
  {
    v3 = v2[24];
    v5 = sub_1AEA9E180;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEA9E180()
{
  v34 = v0;
  v1 = *(v0 + 96);
  if (*(v0 + 104))
  {
    sub_1AEAA2338(v0 + 16);
LABEL_11:

    v13 = *(v0 + 8);

    return v13();
  }

  v2 = *(v0 + 232);
  sub_1AEAF988C();
  if (v2)
  {
    v3 = v2;
    sub_1AEAA2338(v0 + 16);
    *(v0 + 136) = v2;
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast() && *(v0 + 105) == 1)
    {

      if (qword_1ED98D6E8 != -1)
      {
        swift_once();
      }

      v5 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v5, qword_1ED98DDF8);
      v6 = sub_1AEAF8FCC();
      v7 = sub_1AEAF9A9C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1AEA3F000, v6, v7, "Failed to retrieve SensitiveContentPolicy due to connectivity issues. Forcing obscuration.", v8, 2u);
        MEMORY[0x1B270E620](v8, -1, -1);
      }

      v9 = *(v0 + 160);

      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      *(v9 + 16) = 2;
      *(v9 + 24) = 0;
      sub_1AEA4D5B8(v10, v11);
      v12 = *(v9 + 32);
      v32 = 2;
      v33 = 0;
      v12(&v32);
    }

    else
    {

      *(v0 + 144) = v2;
      v22 = v2;
      if (swift_dynamicCast())
      {
        v24 = *(v0 + 176);
        v23 = *(v0 + 184);
        v25 = *(v0 + 168);

        sub_1AEA41714(&unk_1EB5E9008, 255, MEMORY[0x1E69E8550]);
        swift_allocError();
        sub_1AEAF94EC();
        swift_willThrow();
        (*(v24 + 8))(v23, v25);
      }

      else
      {
        v26 = *(v0 + 160);

        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
        *(v26 + 16) = v3;
        *(v26 + 24) = 1;
        v29 = v3;
        v30 = v3;
        sub_1AEA4D5B8(v27, v28);
        v31 = *(v26 + 32);
        v32 = v3;
        v33 = 1;
        v31(&v32);
        sub_1AEA4D5B8(v32, v33);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  v15 = *(v0 + 160);
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  *(v15 + 16) = v1;
  *(v15 + 24) = 0;
  sub_1AEA4D5B8(v16, v17);
  v18 = *(v15 + 32);
  *(v0 + 112) = v1;
  *(v0 + 120) = 0;
  v18(v0 + 112);
  if (*(v0 + 192))
  {
    swift_getObjectType();
    v19 = sub_1AEAF977C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v0 + 208) = v19;
  *(v0 + 216) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1AEA9DF8C, v19, v21);
}

uint64_t sub_1AEA9E560()
{
  v1 = v0[24];
  v0[30] = v0[16];
  return MEMORY[0x1EEE6DFA0](sub_1AEA9E584, v1, 0);
}

uint64_t sub_1AEA9E584()
{
  v26 = v0;
  sub_1AEAA2338(v0 + 16);
  v1 = *(v0 + 240);
  *(v0 + 136) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 105) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    if (qword_1ED98D6E8 != -1)
    {
      swift_once();
    }

    v8 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v8, qword_1ED98DDF8);
    v9 = sub_1AEAF8FCC();
    v10 = sub_1AEAF9A9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEA3F000, v9, v10, "Failed to retrieve SensitiveContentPolicy due to connectivity issues. Forcing obscuration.", v11, 2u);
      MEMORY[0x1B270E620](v11, -1, -1);
    }

    v12 = *(v0 + 160);

    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    *(v12 + 16) = 2;
    *(v12 + 24) = 0;
    sub_1AEA4D5B8(v13, v14);
    v15 = *(v12 + 32);
    v24 = 2;
    v25 = 0;
    v15(&v24);

    v16 = *(v0 + 8);
  }

  else
  {

    *(v0 + 144) = v1;
    v4 = v1;
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 176);
      v5 = *(v0 + 184);
      v7 = *(v0 + 168);

      sub_1AEA41714(&unk_1EB5E9008, 255, MEMORY[0x1E69E8550]);
      swift_allocError();
      sub_1AEAF94EC();
      swift_willThrow();
      (*(v6 + 8))(v5, v7);
    }

    else
    {
      v17 = *(v0 + 160);

      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      *(v17 + 16) = v1;
      *(v17 + 24) = 1;
      v20 = v1;
      v21 = v1;
      sub_1AEA4D5B8(v18, v19);
      v22 = *(v17 + 32);
      v24 = v1;
      v25 = 1;
      v22(&v24);
      sub_1AEA4D5B8(v24, v25);
      swift_willThrow();
    }

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_1AEA9E8A0()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_1AEA9E8FC(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t PolicyActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AEA9E9B8()
{
  if (qword_1ED98D888 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AEA9EA14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PolicyActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1AEA9EA4C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*v1 + 80);
  v2[7] = v3;
  v4 = sub_1AEAF9C3C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = sub_1AEAF97FC();
  v2[14] = sub_1AEAF97EC();
  v6 = sub_1AEAF977C();
  v2[15] = v6;
  v2[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AEA9EBB0, v6, v5);
}

uint64_t sub_1AEA9EBB0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = *(*v6 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v1, v6 + v7, v3);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v8 = sub_1AEAF97EC();
    v0[17] = v8;
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_1AEA9EDD0;
    v10 = v0[6];
    v11 = v0[7];
    v12 = v0[5];
    v13 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v12, v8, v13, 0x65756C6176, 0xE500000000000000, sub_1AEAA19F4, v10, v11);
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[5];

    v19 = *(v15 + 32);
    v19(v14, v16, v17);
    v19(v18, v14, v17);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1AEA9EDD0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1AEA9EF64;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1AEA9EEEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEA9EEEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA9EF64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA9EFF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v2 = sub_1AEAF97AC();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  swift_beginAccess();
  sub_1AEAF975C();
  sub_1AEAF974C();
  return swift_endAccess();
}

uint64_t sub_1AEA9F13C()
{
  v1 = *(*v0 + 88);
  v2 = sub_1AEAF9C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1AEA9F1DC()
{
  sub_1AEA9F13C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AEA9F234()
{
  v0 = swift_allocObject();
  sub_1AEA9F26C();
  return v0;
}

uint64_t sub_1AEA9F26C()
{
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 88), 1, 1, *(*v0 + 80));
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  sub_1AEAF97AC();
  *(v0 + v1) = sub_1AEAF94DC();
  return v0;
}

uint64_t sub_1AEA9F340()
{
  v1 = *(v0 + 72);
  *v1 = 0;
  *(v1 + 8) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_1AEA9F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a6;
  v8 = sub_1AEAF8B1C();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9100);
  v6[20] = swift_task_alloc();
  v9 = sub_1AEAF9B4C();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9108);
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = sub_1AEAF97FC();
  v6[29] = sub_1AEAF97EC();
  v11 = swift_task_alloc();
  v6[30] = v11;
  *v11 = v6;
  v11[1] = sub_1AEA9F590;

  return PolicyCache.restart(with:)((v6 + 6), a5);
}

uint64_t sub_1AEA9F590()
{
  v2 = *v1;
  v2[31] = v0;

  v4 = sub_1AEAF977C();
  v2[32] = v4;
  v2[33] = v3;
  if (v0)
  {
    v5 = sub_1AEA9FF80;
  }

  else
  {
    v5 = sub_1AEA9F6F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1AEA9F6F0()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    *(v0 + 120) = *(v0 + 48);
    v1 = *(v0 + 216);
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50);
    sub_1AEAF993C();
    (*(v3 + 8))(v1, v2);
  }

  v4 = [objc_opt_self() defaultCenter];
  if (qword_1ED98D768 != -1)
  {
    swift_once();
  }

  *(v0 + 272) = sub_1AEAF9B6C();

  sub_1AEAF9B3C();
  *(v0 + 280) = sub_1AEAF97EC();
  v5 = sub_1AEA41714(&unk_1ED98A850, 255, MEMORY[0x1E6969EF8]);
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_1AEA9F8CC;
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);

  return MEMORY[0x1EEE6D8C8](v7, v8, v5);
}

uint64_t sub_1AEA9F8CC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1AEAF977C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1AEA9FEF4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1AEAF977C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1AEA9FA64;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1AEA9FA64()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1AEA9FAC8, v1, v2);
}

uint64_t sub_1AEA9FAC8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    *(v0 + 96) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50);
    sub_1AEAF994C();

LABEL_3:

    v4 = *(v0 + 8);

    return v4();
  }

  (*(v3 + 32))(*(v0 + 152), v1, v2);
  sub_1AEAF8B0C();
  if (!*(v0 + 40))
  {
    sub_1AEA41FAC(v0 + 16, &unk_1EB5E9680);
    return sub_1AEAFA01C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1AEAFA01C();
  }

  v6 = *(v0 + 64);
  if (*(v0 + 72))
  {
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = *(v0 + 168);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 136);
    v13 = v6;

    *(v0 + 104) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    swift_willThrowTypedImpl();

    sub_1AEA4D5B8(v6, 1);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
    *(v0 + 80) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50);
    sub_1AEAF994C();
    goto LABEL_3;
  }

  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 192);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v19 = *(v0 + 136);
  *(v0 + 112) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50);
  sub_1AEAF993C();
  (*(v15 + 8))(v14, v16);
  (*(v18 + 8))(v17, v19);
  *(v0 + 280) = sub_1AEAF97EC();
  v20 = sub_1AEA41714(&unk_1ED98A850, 255, MEMORY[0x1E6969EF8]);
  v21 = swift_task_alloc();
  *(v0 + 288) = v21;
  *v21 = v0;
  v21[1] = sub_1AEA9F8CC;
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);

  return MEMORY[0x1EEE6D8C8](v22, v23, v20);
}

uint64_t sub_1AEA9FEF4()
{
  *(v0 + 88) = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1AEA9FF80()
{
  v1 = v0[31];

  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50);
  sub_1AEAF994C();

  v2 = v0[1];

  return v2();
}

uint64_t static SensitiveContentPolicy.Source.override(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1ED98D6D8 != -1)
  {
LABEL_8:
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v3 = qword_1ED98D6E0;
  do
  {
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&qword_1ED98D6E0, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  result = sub_1AEA5B924(a1, a2);
  *(a2 + 40) = v4;
  *(a2 + 48) = 1;
  return result;
}

void sub_1AEAA00F8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if ((a1 & 4) != 0)
    {
      v8 = 1951;
    }

    else if ((a1 & 8) != 0)
    {
      v8 = 1959;
    }

    else
    {
      if ((a1 & 2) != 0)
      {
        v3 = a2;
        if (qword_1ED98D6E8 != -1)
        {
          swift_once();
        }

        v9 = sub_1AEAF8FEC();
        __swift_project_value_buffer(v9, qword_1ED98DDF8);
        v5 = sub_1AEAF8FCC();
        v10 = sub_1AEAF9A7C();
        if (!os_log_type_enabled(v5, v10))
        {
          v8 = 1959;
          goto LABEL_21;
        }

        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1AEA3F000, v5, v10, "Not entitled to distinguish CommSafety types", v7, 2u);
        v8 = 1959;
LABEL_17:
        MEMORY[0x1B270E620](v7, -1, -1);
LABEL_21:

        a2 = v3;
        goto LABEL_22;
      }

      if ((a1 & 1) == 0)
      {
        v3 = a2;
        if (qword_1ED98D6E8 != -1)
        {
          swift_once();
        }

        v4 = sub_1AEAF8FEC();
        __swift_project_value_buffer(v4, qword_1ED98DDF8);
        v5 = sub_1AEAF8FCC();
        v6 = sub_1AEAF9A9C();
        if (!os_log_type_enabled(v5, v6))
        {
          v8 = 0;
          goto LABEL_21;
        }

        v7 = swift_slowAlloc();
        *v7 = 134217984;
        *(v7 + 4) = a1;
        _os_log_impl(&dword_1AEA3F000, v5, v6, "Unexpected SCMADUserSafetyPolicy value %lu. Assuming .disabled...", v7, 0xCu);
        v8 = 0;
        goto LABEL_17;
      }

      v8 = 67;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_22:
  *a2 = v8;
}

uint64_t sub_1AEAA02E8(void *a1, id *a2)
{
  v8 = v2;
  v4 = *a2;
  sub_1AEAA00F8([v4 type], &v7);

  *a1 = v7;
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_1AEAA0374(void *a1, void *a2)
{
  if (*a2 >= 3uLL)
  {
    return sub_1AEAFA01C();
  }

  *a1 = qword_1AEAFF168[*a2];
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1AEAA0444()
{
  sub_1AEA438F0(v0, &v2);
  if (v8)
  {
    if (v8 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v2);
      return 0x656469727265764FLL;
    }

    else if (v6 | v7 | v2 | v5 | v4 | v3)
    {
      result = 0x20676E696C6C6F50;
      if (v2 == 1 && !(v6 | v7 | v5 | v4 | v3))
      {
        return 0xD000000000000012;
      }
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    sub_1AEA45CE0(&v2);
    return 0x746E65746E49;
  }

  return result;
}

uint64_t sub_1AEAA054C(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_1AEAF9F5C();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEAA060C, 0, 0);
}

uint64_t sub_1AEAA060C()
{
  v1 = v0[12];
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = v0[12];
    v3 = [objc_allocWithZone(SCSensitivityAnalyzer) init];
    v4 = [v3 analysisPolicy];

    swift_beginAccess();
    v5 = v0[12];
    if ((*(v2 + 24) & 1) != 0 || v4 != *(v5 + 16))
    {
      swift_beginAccess();
      v6 = 0;
      *(v5 + 16) = v4;
      *(v5 + 24) = 0;
    }

    else
    {
      v4 = 0;
      v6 = 1;
    }

    v9 = v0[11];
    *v9 = v4;
    *(v9 + 8) = v6;

    v10 = v0[1];

    return v10();
  }

  else
  {
    sub_1AEAFA34C();
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1AEAA07D8;

    return sub_1AEA761F0(1000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1AEAA07D8()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1AEAA0A4C;
  }

  else
  {
    v5 = sub_1AEAA0948;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AEAA0948()
{
  v1 = v0[12];
  v2 = [objc_allocWithZone(SCSensitivityAnalyzer) init];
  v3 = [v2 analysisPolicy];

  swift_beginAccess();
  v4 = v0[12];
  if ((*(v1 + 24) & 1) != 0 || v3 != *(v4 + 16))
  {
    swift_beginAccess();
    v5 = 0;
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
  }

  else
  {
    v3 = 0;
    v5 = 1;
  }

  v6 = v0[11];
  *v6 = v3;
  *(v6 + 8) = v5;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AEAA0A4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAA0AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E90A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  (*(v3 + 16))(v11 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v8 = objc_allocWithZone(SCMADPolicyService);
  v9 = sub_1AEAA0F54(sub_1AEAA20D4, v7);
  *(swift_allocObject() + 16) = v9;
  return sub_1AEAF991C();
}

uint64_t sub_1AEAA0C5C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E90B0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  if (a2)
  {
    v14 = a2;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E90A8);
    return sub_1AEAF994C();
  }

  else if (a1)
  {
    v11 = v6;
    v14 = a1;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E90A8);
    sub_1AEAF993C();
    return (*(v5 + 8))(v8, v11);
  }

  else
  {
    result = sub_1AEAFA01C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AEAA0DEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9040);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  v8[1] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9038);
  sub_1AEAF993C();
  return (*(v3 + 8))(v5, v2);
}

void sub_1AEAA0EEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1AEAA0F54(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AEAA1074;
  aBlock[3] = &block_descriptor_92;
  v3 = _Block_copy(aBlock);
  v8 = 0;
  v4 = [v2 initWithUpdateHandler:v3 error:&v8];
  _Block_release(v3);
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_1AEAF8C5C();

    swift_willThrow();
  }

  return v4;
}

void sub_1AEAA1074(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1AEAA1100(uint64_t a1)
{
  v2 = sub_1AEA41714(&qword_1EB5E9018, 255, type metadata accessor for MOUserSafetyScannableServices);
  v3 = sub_1AEA41714(&unk_1EB5E9150, 255, type metadata accessor for MOUserSafetyScannableServices);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1AEAA11C4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F50) - 8);
  v3 = (*(v2 + 80) + 89) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA9F364(v5, v6, v7, v4, v0 + 40, v0 + v3);
}

uint64_t sub_1AEAA1308(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9030);
  v35 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1AEAA15AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9030);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t _s24SensitiveContentAnalysis0aB6PolicyV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1AEA438F0(a1, &v10);
  sub_1AEA438F0(a2, &v17);
  if (!v16)
  {
    sub_1AEA438F0(&v10, &v7);
    if (!v21)
    {
      if (v8)
      {
        if (v18)
        {
          if (v7 == v17 && v8 == v18)
          {

            v3 = 1;
          }

          else
          {
            v3 = sub_1AEAFA2BC();
          }
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        if (!v18)
        {
          v3 = 1;
          goto LABEL_32;
        }

        v3 = 0;
      }

LABEL_32:
      sub_1AEA45CE0(&v10);
      return v3 & 1;
    }

    goto LABEL_26;
  }

  if (v16 == 1)
  {
    sub_1AEA438F0(&v10, &v7);
    if (v21 == 1)
    {
      v3 = v9 == v20.i64[1];
      __swift_destroy_boxed_opaque_existential_1(&v17);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      goto LABEL_32;
    }

    __swift_destroy_boxed_opaque_existential_1(&v7);
    goto LABEL_26;
  }

  if (v14 | v15 | v10 | v13 | v12 | v11)
  {
    if (v10 != 1 || v14 | v15 | v13 | v12 | v11)
    {
      if (v21 != 2 || v17 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v21 != 2 || v17 != 1)
    {
      goto LABEL_26;
    }

    v5 = vorrq_s8(v19, v20);
    if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v18)
    {
LABEL_26:
      sub_1AEA41FAC(&v10, &qword_1EB5E90C8);
      v3 = 0;
      return v3 & 1;
    }
  }

  else
  {
    if (v21 != 2)
    {
      goto LABEL_26;
    }

    v4 = vorrq_s8(v19, v20);
    if (*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v18 | v17)
    {
      goto LABEL_26;
    }
  }

  sub_1AEA45CE0(&v10);
  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1AEAA1958(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AEA63D38;

  return sub_1AEAA054C(a1, v1);
}

unint64_t sub_1AEAA1A00()
{
  result = qword_1EB5E8FE8;
  if (!qword_1EB5E8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8FE8);
  }

  return result;
}

unint64_t sub_1AEAA1A5C()
{
  result = qword_1EB5E8FF8;
  if (!qword_1EB5E8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8FF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveContentPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SensitiveContentPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveContentPolicy.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SensitiveContentPolicy.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AEAA1CA0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1AEAA1D34()
{
  result = sub_1AEAF9C3C();
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

uint64_t sub_1AEAA1E08(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1AEAA1E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9030);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1AEA61F84(v5, v6, sub_1AEA61BA0);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AEAA1F5C()
{
  result = qword_1EB5E9028;
  if (!qword_1EB5E9028)
  {
    sub_1AEA49EF8(255, &qword_1EB5E9020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9028);
  }

  return result;
}

uint64_t sub_1AEAA1FC4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9038);

  return sub_1AEAA0DEC(a1);
}

uint64_t objectdestroy_79Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1AEAA20D4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E90A8);

  return sub_1AEAA0C5C(a1, a2);
}

uint64_t sub_1AEAA2160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AEAA21D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_1AEAA2160(v1, v2 + 96);
  return swift_endAccess();
}

uint64_t sub_1AEAA2230(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v1;
    v5 = v2;
    sub_1AEA4C24C(&v4);
  }

  return result;
}

uint64_t sub_1AEAA22A0()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA63D38;

  return sub_1AEA9DCBC(v3, v4, v5, v0 + 32, v2);
}

unint64_t sub_1AEAA2368()
{
  result = qword_1EB5E90F8;
  if (!qword_1EB5E90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E90F8);
  }

  return result;
}

uint64_t sub_1AEAA24D4()
{
  result = sub_1AEAF958C();
  qword_1ED98AD18 = result;
  return result;
}

uint64_t sub_1AEAA250C()
{
  swift_getKeyPath();
  sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);
  sub_1AEAF8DDC();

  swift_beginAccess();
}

uint64_t sub_1AEAA25C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);
  sub_1AEAF8DDC();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1AEAA2684()
{
  swift_getKeyPath();
  sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);
  sub_1AEAF8DCC();
}

void *AnalysisHistoryCache.__allocating_init(history:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1ED98AD10 != -1)
  {
    swift_once();
  }

  v5 = sub_1AEAF9B6C();

  swift_allocObject();
  return sub_1AEAA28E4(a1, a2, v5);
}

uint64_t static AnalysisHistoryCache.$shared.getter()
{
  if (qword_1ED98D230 != -1)
  {
    swift_once();
  }
}

uint64_t AnalysisHistoryCache.__allocating_init<A>(history:appLifecycle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  AnalysisHistoryCache.init<A>(history:appLifecycle:)(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_1AEAA28E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = &v26 - v9;
  v3[2] = sub_1AEA436D4(MEMORY[0x1E69E7CC0]);
  v3[5] = 0;
  v10 = v3 + 5;
  sub_1AEAF8E0C();
  if (qword_1ED98CE50 != -1)
  {
    swift_once();
  }

  v11 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v11, qword_1ED98DDC0);
  v12 = sub_1AEAF8FCC();
  v13 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1AEA3F000, v12, v13, "Initialized cache", v14, 2u);
    MEMORY[0x1B270E620](v14, -1, -1);
  }

  v4[3] = a1;
  v4[4] = a2;
  ObjectType = swift_getObjectType();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(a2 + 16);
  swift_unknownObjectRetain();

  v17(sub_1AEAAD8CC, v16, ObjectType, a2);

  if (a3)
  {
    v18 = sub_1AEAF982C();
    v19 = v26;
    (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
    v20 = swift_allocObject();
    swift_weakInit();

    sub_1AEAF97FC();

    v21 = sub_1AEAF97EC();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = a3;
    v22[5] = v20;

    v24 = sub_1AEA67464(0, 0, v19, &unk_1AEAFF650, v22);
    swift_unknownObjectRelease();

    swift_beginAccess();
    if (v4[5])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
      sub_1AEAF985C();
    }

    *v10 = v24;
    swift_endAccess();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v4;
}

void *AnalysisHistoryCache.init<A>(history:appLifecycle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v54 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v50 - v12;
  v61 = sub_1AEAF9C3C();
  v13 = *(v61 - 8);
  v14 = MEMORY[0x1EEE9AC00](v61);
  v16 = &v50 - v15;
  v59 = a4;
  v57 = *(a4 - 8);
  v17 = *(v57 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v50 - v19;
  v6[2] = sub_1AEA436D4(MEMORY[0x1E69E7CC0]);
  v6[5] = 0;
  v55 = v6 + 5;
  sub_1AEAF8E0C();
  if (qword_1ED98CE50 != -1)
  {
    swift_once();
  }

  v60 = v13;
  v62 = a3;
  v20 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v20, qword_1ED98DDC0);
  v21 = sub_1AEAF8FCC();
  v22 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1AEA3F000, v21, v22, "Initialized cache", v23, 2u);
    MEMORY[0x1B270E620](v23, -1, -1);
  }

  v6[3] = a1;
  v6[4] = a2;
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = a1;
  v27 = *(a2 + 16);
  swift_unknownObjectRetain();

  v27(sub_1AEAACCA4, v25, ObjectType, a2);

  v29 = v60;
  v28 = v61;
  v30 = v62;
  (*(v60 + 16))(v16, v62, v61);
  v31 = v57;
  v32 = v59;
  if ((*(v57 + 48))(v16, 1, v59) == 1)
  {

    swift_unknownObjectRelease();
    v33 = *(v29 + 8);
    v33(v30, v28);
    v33(v16, v28);
  }

  else
  {
    v34 = *(v31 + 32);
    v51 = v17;
    v52 = v34;
    v35 = v56;
    v34();
    v36 = sub_1AEAF982C();
    (*(*(v36 - 8) + 56))(v58, 1, 1, v36);
    v37 = swift_allocObject();
    swift_weakInit();

    v38 = *(v31 + 16);
    v50 = v26;
    v39 = v53;
    v38(v53, v35, v32);
    sub_1AEAF97FC();
    v40 = v31;

    v41 = sub_1AEAF97EC();
    v42 = (*(v40 + 80) + 48) & ~*(v40 + 80);
    v43 = (v51 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    v44[2] = v41;
    v44[3] = v45;
    v46 = v54;
    v44[4] = v32;
    v44[5] = v46;
    (v52)(v44 + v42, v39, v32);
    *(v44 + v43) = v37;

    v47 = sub_1AEA67464(0, 0, v58, &unk_1AEAFF190, v44);
    swift_unknownObjectRelease();
    (*(v60 + 8))(v62, v61);
    (*(v40 + 8))(v56, v32);
    v48 = v55;
    swift_beginAccess();
    if (v6[5])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
      sub_1AEAF985C();
    }

    *v48 = v47;
    swift_endAccess();
  }

  return v6;
}

uint64_t sub_1AEAA326C(uint64_t a1, uint64_t a2)
{
  sub_1AEAF97FC();
  sub_1AEAF9DBC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AEAA3324(a1, a2);
  }

  return result;
}

void sub_1AEAA3324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED98CE50 != -1)
  {
LABEL_47:
    swift_once();
  }

  v6 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v6, qword_1ED98DDC0);

  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A8C();
  v62 = a2;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(a1 + 16);

    *(v9 + 12) = 2048;
    *(v9 + 14) = *(a2 + 16);

    _os_log_impl(&dword_1AEA3F000, v7, v8, "Importing update: %ld added, %ld removed", v9, 0x16u);
    MEMORY[0x1B270E620](v9, -1, -1);
  }

  else
  {
  }

  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  a2 = OBJC_IVAR____TtC24SensitiveContentAnalysis20AnalysisHistoryCache___observationRegistrar;
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v64 = a1 + 64;
  v66 = a1;
  for (i = v14; ; v14 = i)
  {
    if (!v13)
    {
      while (1)
      {
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v19 >= v14)
        {
          break;
        }

        v13 = *(v10 + 8 * v19);
        ++v15;
        if (v13)
        {
          v15 = v19;
          goto LABEL_15;
        }
      }

      v65 = *(v62 + 16);
      if (!v65)
      {
LABEL_37:
        if (*(v66 + 16) | v65)
        {
          v61 = [objc_opt_self() defaultCenter];
          if (qword_1ED98BDE0 != -1)
          {
            swift_once();
          }

          [v61 postNotificationName:qword_1ED98BDE8 object:{v3, v62}];
        }

        return;
      }

      v41 = (v62 + 40);
      v42 = "0Ӯ<";
      v43 = *(v62 + 16);
      while (1)
      {
        a1 = *v41;
        v68 = v43;
        v70 = *(v41 - 1);
        swift_getKeyPath();
        sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

        sub_1AEAF8DDC();

        v45 = a2;
        a2 = v42;
        swift_getKeyPath();
        v46 = v3;
        v3 = v45;
        sub_1AEAF8DFC();

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v46 + 16);
        *(v46 + 16) = 0x8000000000000000;
        v49 = sub_1AEA61F84(v70, a1, sub_1AEA61BA0);
        v51 = v48[2];
        v52 = (v50 & 1) == 0;
        v31 = __OFADD__(v51, v52);
        v53 = v51 + v52;
        if (v31)
        {
          break;
        }

        v54 = v50;
        if (v48[3] >= v53)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v60 = v49;
            sub_1AEAAC694();
            v49 = v60;
          }
        }

        else
        {
          sub_1AEAAC030(v53, isUniquelyReferenced_nonNull_native);
          v49 = sub_1AEA61F84(v70, a1, sub_1AEA61BA0);
          if ((v54 & 1) != (v55 & 1))
          {
            goto LABEL_48;
          }
        }

        v42 = a2;
        a2 = v3;
        if (v54)
        {
          v44 = v48[7] + 6 * v49;
          *v44 = 0;
          *(v44 + 4) = 1;

          v3 = v46;
        }

        else
        {
          v48[(v49 >> 6) + 8] |= 1 << v49;
          v56 = (v48[6] + 16 * v49);
          *v56 = v70;
          v56[1] = a1;
          v57 = v48[7] + 6 * v49;
          *v57 = 0;
          *(v57 + 4) = 1;
          v58 = v48[2];
          v31 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v31)
          {
            goto LABEL_44;
          }

          v3 = v46;
          v48[2] = v59;
        }

        *(v3 + 16) = v48;
        swift_endAccess();
        swift_getKeyPath();
        sub_1AEAF8DEC();

        v41 += 2;
        v43 = v68 - 1;
        if (v68 == 1)
        {
          goto LABEL_37;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_15:
    v20 = __clz(__rbit64(v13)) | (v15 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = (*(a1 + 56) + 4 * v20);
    v69 = *v24;
    v67 = v24[1];
    swift_getKeyPath();
    a1 = sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

    sub_1AEAF8DDC();

    swift_getKeyPath();
    sub_1AEAF8DFC();

    swift_beginAccess();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v3 + 16);
    v71 = v26;
    *(v3 + 16) = 0x8000000000000000;
    v27 = sub_1AEA61F84(v23, v22, sub_1AEA61BA0);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_45;
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      break;
    }

    if ((v25 & 1) == 0)
    {
      v40 = v27;
      sub_1AEAAC694();
      v27 = v40;
    }

LABEL_21:
    v35 = v69 | (v67 << 16);
    if (v33)
    {
      v16 = v27;

      v17 = v71;
      v18 = v71[7] + 6 * v16;
      *v18 = v35;
      *(v18 + 4) = 0;
    }

    else
    {
      v17 = v71;
      v71[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v71[6] + 16 * v27);
      *v36 = v23;
      v36[1] = v22;
      v37 = v71[7] + 6 * v27;
      *v37 = v35;
      *(v37 + 4) = 0;
      v38 = v71[2];
      v31 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v31)
      {
        goto LABEL_46;
      }

      v71[2] = v39;
    }

    v13 &= v13 - 1;
    *(v3 + 16) = v17;
    swift_endAccess();
    swift_getKeyPath();
    sub_1AEAF8DEC();

    v10 = v64;
    a1 = v66;
  }

  sub_1AEAAC030(v32, v25);
  v27 = sub_1AEA61F84(v23, v22, sub_1AEA61BA0);
  if ((v33 & 1) == (v34 & 1))
  {
    goto LABEL_21;
  }

LABEL_48:
  sub_1AEAFA31C();
  __break(1u);
}

uint64_t sub_1AEAA3AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1AEAF8B1C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9100);
  v5[11] = swift_task_alloc();
  v7 = sub_1AEAF9B4C();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = sub_1AEAF97FC();
  v5[16] = sub_1AEAF97EC();
  v9 = sub_1AEAF977C();
  v5[17] = v9;
  v5[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA3C2C, v9, v8);
}

uint64_t sub_1AEAA3C2C()
{
  v0[5] = v0[6];
  sub_1AEAF9B5C();
  sub_1AEA41D94(&qword_1ED98A480, MEMORY[0x1E6969F08]);

  sub_1AEAF98EC();
  swift_beginAccess();
  v1 = sub_1AEAF97EC();
  v0[19] = v1;
  v2 = sub_1AEA41D94(&unk_1ED98A850, MEMORY[0x1E6969EF8]);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1AEAA3DB0;
  v5 = v0[11];
  v6 = v0[12];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v5, v1, v7, v3, v6, v2);
}

uint64_t sub_1AEAA3DB0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x1EEE6DFA0](sub_1AEAA3EC8, v4, v5);
  }

  return result;
}

uint64_t sub_1AEAA3EC8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  v5 = v0[21];
  (*(v3 + 32))(v0[10], v1, v2);
  sub_1AEAF988C();
  if (v5)
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];

    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);

    v4 = v0[1];
    goto LABEL_5;
  }

  v13 = sub_1AEAF8AFC();
  if (qword_1ED98AD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1AEAF95BC();
  v16 = v15;
  if (v14 == sub_1AEAF95BC() && v16 == v17)
  {

LABEL_17:
    if (swift_weakLoadStrong())
    {
      sub_1AEAA49E0();
    }

    goto LABEL_19;
  }

  v19 = sub_1AEAFA2BC();

  if (v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  (*(v0[9] + 8))(v0[10], v0[8]);
  v20 = sub_1AEAF97EC();
  v0[19] = v20;
  v21 = sub_1AEA41D94(&unk_1ED98A850, MEMORY[0x1E6969EF8]);
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_1AEAA3DB0;
  v24 = v0[11];
  v25 = v0[12];
  v26 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v24, v20, v26, v22, v25, v21);
}

uint64_t sub_1AEAA421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v9 = sub_1AEAF8B1C();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9100);
  v7[12] = swift_task_alloc();
  v7[13] = *(a6 - 8);
  v7[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[15] = AssociatedTypeWitness;
  v7[16] = *(AssociatedTypeWitness - 8);
  v7[17] = swift_task_alloc();
  v7[18] = sub_1AEAF97FC();
  v7[19] = sub_1AEAF97EC();
  v12 = sub_1AEAF977C();
  v7[20] = v12;
  v7[21] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA4420, v12, v11);
}

uint64_t sub_1AEAA4420()
{
  (*(v0[13] + 16))(v0[14], v0[5], v0[7]);
  sub_1AEAF98EC();
  swift_beginAccess();
  v1 = sub_1AEAF97EC();
  v0[22] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_1AEAA456C;
  v5 = v0[15];
  v6 = v0[12];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v6, v1, v7, v3, v5, AssociatedConformanceWitness);
}

uint64_t sub_1AEAA456C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (!v0)
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return MEMORY[0x1EEE6DFA0](sub_1AEAA4684, v4, v5);
  }

  return result;
}

uint64_t sub_1AEAA4684()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  v5 = v0[24];
  (*(v3 + 32))(v0[11], v1, v2);
  sub_1AEAF988C();
  if (v5)
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    v9 = v0[11];
    v10 = v0[9];
    v11 = v0[10];

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);

    v4 = v0[1];
    goto LABEL_5;
  }

  v13 = sub_1AEAF8AFC();
  if (qword_1ED98AD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1AEAF95BC();
  v16 = v15;
  if (v14 == sub_1AEAF95BC() && v16 == v17)
  {

LABEL_17:
    if (swift_weakLoadStrong())
    {
      sub_1AEAA49E0();
    }

    goto LABEL_19;
  }

  v19 = sub_1AEAFA2BC();

  if (v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  (*(v0[10] + 8))(v0[11], v0[9]);
  v20 = sub_1AEAF97EC();
  v0[22] = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_1AEAA456C;
  v24 = v0[15];
  v25 = v0[12];
  v26 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v25, v20, v26, v22, v24, AssociatedConformanceWitness);
}

uint64_t sub_1AEAA49E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  if (qword_1ED98CE50 != -1)
  {
    swift_once();
  }

  v5 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v5, qword_1ED98DDC0);
  v6 = sub_1AEAF8FCC();
  v7 = sub_1AEAF9A7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1AEA3F000, v6, v7, "Handling app foregrounded", v8, 2u);
    MEMORY[0x1B270E620](v8, -1, -1);
  }

  v9 = sub_1AEAF982C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1AEAF97FC();

  v10 = sub_1AEAF97EC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  sub_1AEA5E2A0(0, 0, v4, &unk_1AEAFF628, v11);
}

uint64_t AnalysisHistoryCache.deinit()
{
  v1 = v0;
  if (qword_1ED98CE50 != -1)
  {
    swift_once();
  }

  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1ED98DDC0);
  v3 = sub_1AEAF8FCC();
  v4 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEA3F000, v3, v4, "Deinitialized cache", v5, 2u);
    MEMORY[0x1B270E620](v5, -1, -1);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];

  swift_unknownObjectRelease();
  if (*(v1 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    sub_1AEAF985C();
  }

  v7 = OBJC_IVAR____TtC24SensitiveContentAnalysis20AnalysisHistoryCache___observationRegistrar;
  v8 = sub_1AEAF8E1C();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t AnalysisHistoryCache.__deallocating_deinit()
{
  AnalysisHistoryCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AEAA4DD0()
{

  sub_1AEAF985C();
}

uint64_t AnalysisHistoryCache.handlesWithoutAnalyses.getter()
{
  swift_getKeyPath();
  sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);
  sub_1AEAF8DDC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v7 << 6);
      if (*(*(v1 + 56) + 6 * v10 + 4))
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v12 = (*(v1 + 48) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AEA61C58(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v15 = *(v8 + 16);
    v16 = *(v8 + 24);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v19 = v8;
      v20 = *(v8 + 16);
      result = sub_1AEA61C58((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v17 = v21;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = v8 + 16 * v15;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      v7 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnalysisHistoryCache.cachedSensitiveParticipants(from:)(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v1;
  v4 = 0;
  v41 = result + 32;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = *(result + 16);
LABEL_4:
  while (2)
  {
    if (v4 >= v2)
    {
LABEL_30:
      __break(1u);
    }

    else if (!__OFADD__(v4, 1))
    {
      v5 = (v41 + 56 * v4);
      v6 = v5[1];
      v7 = v5[3];
      v9 = v5[4];
      v8 = v5[5];
      v10 = v5[6];
      v46 = v4 + 1;
      v47 = v4 + 1;
      v39 = v5[2];
      v40 = *v5;
      *&v51 = *v5;
      *(&v51 + 1) = v6;
      *&v52 = v39;
      *(&v52 + 1) = v7;
      v38 = v9;
      *v53 = v9;
      *&v53[8] = v8;
      *&v53[16] = v10;
      v43 = v8;

      v42 = v10;

      v45 = v6;

      v44 = v7;

      v11 = Participant.handlesForStoring.getter();
      v12 = v11 + 56;
      v48 = v11;
      v13 = 1 << *(v11 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(v11 + 56);
      result = swift_beginAccess();
      v16 = 0;
      v17 = (v13 + 63) >> 6;
      do
      {
        while (1)
        {
          if (!v15)
          {
            while (1)
            {
              v18 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
                goto LABEL_30;
              }

              if (v18 >= v17)
              {
                break;
              }

              v15 = *(v12 + 8 * v18);
              ++v16;
              if (v15)
              {
                v16 = v18;
                goto LABEL_16;
              }
            }

            v2 = v37;
            v4 = v47;
            if (v46 == v37)
            {
              return v36;
            }

            goto LABEL_4;
          }

LABEL_16:
          v19 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v20 = (*(v48 + 48) + ((v16 << 10) | (16 * v19)));
          v22 = *v20;
          v21 = v20[1];
          swift_getKeyPath();
          *&v51 = v3;
          sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

          sub_1AEAF8DDC();

          v23 = *(v3 + 16);
          if (*(v23 + 16))
          {

            v24 = sub_1AEA61F84(v22, v21, sub_1AEA61BA0);
            v26 = v25;

            if (v26)
            {
              break;
            }
          }
        }

        v27 = *(v23 + 56) + 6 * v24;
        v28 = *v27;
        v29 = *(v27 + 4);
      }

      while ((v29 & 1) != 0);
      v50[0] = v40;
      v50[1] = v45;
      v50[2] = v39;
      v50[3] = v44;
      v50[4] = v38;
      v50[5] = v43;
      v50[6] = v42;
      v49 = v28;

      SensitiveParticipant.init(participant:analysis:)(v50, &v49, &v51);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AEA81760(0, *(v36 + 16) + 1, 1, v36);
        v36 = result;
      }

      v2 = v37;
      v4 = v47;
      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1AEA81760((v30 > 1), v31 + 1, 1, v36);
        v36 = result;
      }

      *(v36 + 16) = v31 + 1;
      v32 = (v36 + (v31 << 6));
      v33 = v51;
      v34 = v52;
      v35 = *v53;
      *(v32 + 76) = *&v53[12];
      v32[3] = v34;
      v32[4] = v35;
      v32[2] = v33;
      if (v46 != v37)
      {
        continue;
      }

      return v36;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t AnalysisHistoryCache.store(_:where:for:timeout:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 96) = a5;
  *(v7 + 104) = v6;
  *(v7 + 217) = a6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a4;
  *(v7 + 72) = a2;
  v9 = sub_1AEAF8FEC();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 212) = *a1;
  *(v7 + 136) = sub_1AEAF97FC();
  *(v7 + 144) = sub_1AEAF97EC();
  v11 = sub_1AEAF977C();
  *(v7 + 152) = v11;
  *(v7 + 160) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA5530, v11, v10);
}

uint64_t sub_1AEAA5530()
{
  v1 = v0;
  *(v0 + 208) = *(v0 + 212);
  swift_getAtKeyPath();
  if (*(v0 + 216) == 1)
  {
    v2 = *(v0 + 80);
    v3 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = v2 + 40;
      do
      {
        v6 = Participant.handlesForStoring.getter();
        sub_1AEA81B30(v6);
        v5 += 56;
        --v4;
      }

      while (v4);
      v3 = v50;
    }

    v44 = *(v3 + 16);
    if (v44)
    {
      v7 = 0;
      v43 = *(v0 + 212);
      v47 = *(v0 + 104);
      v8 = (v3 + 40);
      v41 = v3;
      v42 = v0;
      do
      {
        if (v7 >= *(v3 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v46 = v7;
        v12 = *(v1 + 104);
        v13 = *(v8 - 1);
        v3 = *v8;
        v45 = v8;
        swift_getKeyPath();
        *(v1 + 40) = v12;
        sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

        sub_1AEAF8DDC();

        *(v1 + 48) = v12;
        swift_getKeyPath();
        sub_1AEAF8DFC();

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *(v47 + 16);
        *(v47 + 16) = 0x8000000000000000;
        v17 = sub_1AEA61F84(v13, v3, sub_1AEA61BA0);
        v18 = v15[2];
        v19 = (v16 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_33;
        }

        v21 = v16;
        if (v15[3] >= v20)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v16)
            {
              goto LABEL_8;
            }
          }

          else
          {
            sub_1AEAAC694();
            if (v21)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          sub_1AEAAC030(v20, isUniquelyReferenced_nonNull_native);
          v22 = sub_1AEA61F84(v13, v3, sub_1AEA61BA0);
          if ((v21 & 1) != (v23 & 1))
          {

            return sub_1AEAFA31C();
          }

          v17 = v22;
          if (v21)
          {
LABEL_8:

            v9 = v15;
            v10 = v15[7] + 6 * v17;
            *v10 = v43;
            *(v10 + 4) = 0;
            goto LABEL_9;
          }
        }

        v9 = v15;
        v15[(v17 >> 6) + 8] |= 1 << v17;
        v24 = (v15[6] + 16 * v17);
        *v24 = v13;
        v24[1] = v3;
        v25 = v15[7] + 6 * v17;
        *v25 = v43;
        *(v25 + 4) = 0;
        v26 = v15[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_34;
        }

        v15[2] = v28;
LABEL_9:
        v7 = v46 + 1;
        v1 = v42;
        v11 = *(v42 + 104);
        *(v47 + 16) = v9;
        swift_endAccess();
        *(v42 + 56) = v11;
        swift_getKeyPath();
        sub_1AEAF8DEC();

        v8 = v45 + 2;
        v3 = v41;
      }

      while (v44 != v46 + 1);
    }

    if (qword_1ED98CE50 != -1)
    {
LABEL_35:
      swift_once();
    }

    v31 = *(v1 + 212);
    v32 = *(v1 + 104);
    v48 = *(v1 + 217);
    __swift_project_value_buffer(*(v1 + 112), qword_1ED98DDC0);
    v33 = sub_1AEAF97EC();
    *(v1 + 168) = v33;
    sub_1AEAF9E1C();

    *(v1 + 64) = *(v3 + 16);
    v34 = sub_1AEAFA27C();
    MEMORY[0x1B270CB50](v34);

    MEMORY[0x1B270CB50](0x73656C646E616820, 0xEA0000000000203ALL);
    v35 = MEMORY[0x1B270CC60](v3, MEMORY[0x1E69E6158]);
    MEMORY[0x1B270CB50](v35);

    *(v1 + 176) = 0x80000001AEB07450;
    v36 = swift_allocObject();
    *(v1 + 184) = v36;
    *(v36 + 16) = v32;
    *(v36 + 24) = v31;
    *(v36 + 32) = v3;

    v37 = swift_task_alloc();
    *(v1 + 192) = v37;
    *v37 = v1;
    v37[1] = sub_1AEAA5B70;
    v38 = *(v1 + 88);
    v39 = *(v1 + 96);
    v40 = MEMORY[0x1E69E85E0];

    return sub_1AEA96128(v37, v38, v39, v48 & 1, v33, v40, 0xD00000000000001FLL, 0x80000001AEB07450);
  }

  else
  {

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1AEAA5B70()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1AEAA5D14;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1AEAA5CA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEAA5CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAA5D14()
{
  v1 = v0[25];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = sub_1AEA4351C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to store most recent analysis: %@", v10, 0xCu);
    sub_1AEA41FAC(v11, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v11, -1, -1);
    MEMORY[0x1B270E620](v10, -1, -1);
  }

  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[14];

  (*(v15 + 8))(v14, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1AEAA5EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 96) = a3;
  *(v4 + 16) = a2;
  *(v4 + 24) = a4;
  v5 = sub_1AEAF8FEC();
  *(v4 + 32) = v5;
  *(v4 + 40) = *(v5 - 8);
  *(v4 + 48) = swift_task_alloc();
  sub_1AEAF97FC();
  *(v4 + 56) = sub_1AEAF97EC();
  v7 = sub_1AEAF977C();
  *(v4 + 64) = v7;
  *(v4 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA5FE0, v7, v6);
}

uint64_t sub_1AEAA5FE0()
{
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 16) + 32);
  ObjectType = swift_getObjectType();
  *(v0 + 100) = v1;
  v7 = (*(v2 + 40) + **(v2 + 40));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1AEAA6120;
  v5 = *(v0 + 24);

  return v7(v0 + 100, v5, ObjectType, v2);
}

uint64_t sub_1AEAA6120()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1AEAA6358;
  }

  else
  {
    v5 = sub_1AEAA6234;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEAA6234()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  v4 = sub_1AEA4351C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1AEAF8FCC();
  v6 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AEA3F000, v5, v6, "Stored analysis", v7, 2u);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1AEAA6358()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnalysisHistoryCache.clearMostRecentAnalyses(for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 160) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = sub_1AEAF8FEC();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = sub_1AEAF97FC();
  *(v5 + 88) = sub_1AEAF97EC();
  v8 = sub_1AEAF977C();
  *(v5 + 96) = v8;
  *(v5 + 104) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA64C4, v8, v7);
}

uint64_t sub_1AEAA64C4()
{
  if (qword_1ED98CE50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 160);
  v3 = *(v0 + 24);
  __swift_project_value_buffer(*(v0 + 56), qword_1ED98DDC0);
  v4 = sub_1AEAF97EC();
  *(v0 + 112) = v4;
  sub_1AEAF9E1C();

  v5 = *(v3 + 16);
  *(v0 + 120) = v5;
  *(v0 + 16) = v5;
  v6 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v6);

  *(v0 + 128) = 0x80000001AEB07470;
  v7 = swift_allocObject();
  *(v0 + 136) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;

  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1AEAA66C4;
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = MEMORY[0x1E69E85E0];

  return sub_1AEA96128(v8, v9, v10, v2 & 1, v4, v11, 0xD000000000000020, 0x80000001AEB07470);
}

uint64_t sub_1AEAA66C4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1AEAA686C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1AEAA67FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEAA67FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAA686C()
{
  v1 = v0[19];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = sub_1AEA4351C();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = v10;

    *(v11 + 12) = 2112;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to clear analyses for %ld %@", v11, 0x16u);
    sub_1AEA41FAC(v12, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v12, -1, -1);
    MEMORY[0x1B270E620](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1AEAA6A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  sub_1AEAF97FC();
  v3[10] = sub_1AEAF97EC();
  v5 = sub_1AEAF977C();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA6B10, v5, v4);
}

uint64_t sub_1AEAA6B10()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v3 = v1 + 40;
    do
    {
      v4 = Participant.handlesForStoring.getter();
      sub_1AEA81B30(v4);
      v3 += 56;
      --v2;
    }

    while (v2);
    v5 = *(v27 + 16);
    if (v5)
    {
      v6 = v0[9];
      v7 = OBJC_IVAR____TtC24SensitiveContentAnalysis20AnalysisHistoryCache___observationRegistrar;
      v8 = (v27 + 40);
      do
      {
        v10 = v7;
        v11 = v0[9];
        v12 = *v8;
        v24 = *(v8 - 1);
        v25 = v5;
        swift_getKeyPath();
        v0[5] = v11;
        sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

        sub_1AEAF8DDC();

        v0[6] = v11;
        v7 = v10;
        swift_getKeyPath();
        sub_1AEAF8DFC();

        swift_beginAccess();
        v13 = sub_1AEA61F84(v24, v12, sub_1AEA61BA0);
        v15 = v14;

        if (v15)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = *(v6 + 16);
          *(v6 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AEAAC694();
          }

          sub_1AEAAC2F0(v13, v17);
          *(v6 + 16) = v17;
        }

        v9 = v0[9];
        swift_endAccess();
        v0[7] = v9;
        swift_getKeyPath();
        sub_1AEAF8DEC();

        v8 += 2;
        v5 = v25 - 1;
      }

      while (v25 != 1);
    }

    v18 = *(v0[9] + 32);
    ObjectType = swift_getObjectType();
    v26 = (*(v18 + 48) + **(v18 + 48));
    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_1AEAA6EC0;
    v21 = v0[8];

    return v26(v21, ObjectType, v18);
  }

  else
  {

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1AEAA6EC0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1AEAA7060;
  }

  else
  {
    v5 = sub_1AEAA6FFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1AEAA6FFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAA7060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnalysisHistoryCache.fetchAnalyses(for:checkCache:)(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1AEAF8FEC();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  sub_1AEAF97FC();
  *(v3 + 56) = sub_1AEAF97EC();
  v6 = sub_1AEAF977C();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA71BC, v6, v5);
}

uint64_t sub_1AEAA71BC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 16);
    v2 = AnalysisHistoryCache.cachedSensitiveParticipants(from:)(v1);
    v3 = sub_1AEAA7758(v1);
  }

  else
  {
    v3 = *(v0 + 16);

    v2 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 80) = v3;
  *(v0 + 88) = v2;
  if (*(v3 + 16))
  {
    v4 = *(*(v0 + 24) + 32);
    ObjectType = swift_getObjectType();
    v9 = (*(v4 + 32) + **(v4 + 32));
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_1AEAA7394;

    return v9(v3, 0, ObjectType, v4);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8(v2);
  }
}

uint64_t sub_1AEAA7394(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1AEAA757C;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1AEAA74C8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1AEAA74C8()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];

  sub_1AEAA7AC4(v3, v1);

  sub_1AEAAC814(v2);

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_1AEAA757C()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];

  v5 = sub_1AEA4351C();
  (*(v4 + 16))(v2, v5, v3);

  v6 = v1;
  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = *(v10 + 16);

    *(v11 + 12) = 2112;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Failed to fetch analyses for %ld %@", v11, 0x16u);
    sub_1AEA41FAC(v12, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v12, -1, -1);
    MEMORY[0x1B270E620](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1AEAA7758(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v25 = result + 32;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = *(result + 16);
LABEL_4:
  while (2)
  {
    if (v2 >= v1)
    {
LABEL_29:
      __break(1u);
    }

    else if (!__OFADD__(v2, 1))
    {
      v3 = (v25 + 56 * v2);
      v4 = v3[1];
      v5 = v3[3];
      v6 = v3[6];
      v33 = v2 + 1;
      v34 = v2 + 1;
      v27 = v3[2];
      v28 = *v3;
      v26 = v3[4];
      v30 = v3[5];

      v29 = v6;

      v32 = v4;

      v31 = v5;

      v7 = Participant.handlesForStoring.getter();
      v8 = v7 + 56;
      v36 = v7;
      v9 = 1 << *(v7 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(v7 + 56);
      result = swift_beginAccess();
      v12 = 0;
      while (1)
      {
        if (!v11)
        {
          while (1)
          {
            v13 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_29;
            }

            if (v13 >= ((v9 + 63) >> 6))
            {
              break;
            }

            v11 = *(v8 + 8 * v13);
            ++v12;
            if (v11)
            {
              v12 = v13;
              goto LABEL_15;
            }
          }

          v1 = v24;
          v2 = v34;
          if (v33 == v24)
          {
            return v23;
          }

          goto LABEL_4;
        }

LABEL_15:
        v14 = (*(v36 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
        v15 = *v14;
        v16 = v14[1];
        swift_getKeyPath();
        sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

        sub_1AEAF8DDC();

        if (!*(*(v35 + 16) + 16))
        {
          break;
        }

        v11 &= v11 - 1;

        sub_1AEA61F84(v15, v16, sub_1AEA61BA0);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_19:

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v1 = v24;
        v19 = v23;
      }

      else
      {
        result = sub_1AEA4FF44(0, *(v23 + 16) + 1, 1);
        v19 = v23;
        v1 = v24;
      }

      v2 = v34;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1AEA4FF44((v20 > 1), v21 + 1, 1);
        v19 = v23;
      }

      *(v19 + 16) = v21 + 1;
      v23 = v19;
      v22 = (v19 + 56 * v21);
      v22[4] = v28;
      v22[5] = v32;
      v22[6] = v27;
      v22[7] = v31;
      v22[8] = v26;
      v22[9] = v30;
      v22[10] = v29;
      if (v33 != v1)
      {
        continue;
      }

      return v23;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEAA7AC4(unint64_t a1, int64_t a2)
{
  if (qword_1ED98CE50 != -1)
  {
LABEL_48:
    swift_once();
  }

  v4 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v4, qword_1ED98DDC0);

  v5 = sub_1AEAF8FCC();
  v6 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(a1 + 16);

    *(v7 + 12) = 2048;
    *(v7 + 14) = *(a2 + 16);

    _os_log_impl(&dword_1AEA3F000, v5, v6, "Importing fetch requested:%ld,fetched:%ld", v7, 0x16u);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  else
  {
  }

  v8 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + 80;
    do
    {
      v10 += 56;

      sub_1AEA81B30(v11);
      --v9;
    }

    while (v9);
    v8 = v66;
  }

  v12 = sub_1AEA47CAC(v8);

  v67 = v12;
  v55 = *(a2 + 16);
  if (v55)
  {
    v13 = 0;
    v54 = a2 + 32;
    while (2)
    {
      v58 = *(v54 + (v13 << 6) + 56);
      v56 = v13 + 1;

      v14 = Participant.handlesForStoring.getter();
      a1 = 0;
      v16 = v14 + 56;
      v15 = *(v14 + 56);
      v60 = v14;
      v17 = 1 << *(v14 + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & v15;
      v20 = (v17 + 63) >> 6;
      if ((v18 & v15) != 0)
      {
        while (1)
        {
          v21 = a1;
LABEL_21:
          v22 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v23 = (*(v60 + 48) + ((v21 << 10) | (16 * v22)));
          v24 = v23[1];
          v63 = *v23;
          swift_getKeyPath();
          a2 = v57;
          sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

          sub_1AEAF8DDC();

          swift_getKeyPath();
          sub_1AEAF8DFC();

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v57 + 16);
          *(v57 + 16) = 0x8000000000000000;
          sub_1AEAAC4C0(v58, v63, v24, isUniquelyReferenced_nonNull_native);
          *(v57 + 16) = v65;
          swift_endAccess();
          swift_getKeyPath();
          sub_1AEAF8DEC();

          sub_1AEAAC908(v63, v24);

          if (!v19)
          {
            goto LABEL_17;
          }
        }
      }

      while (1)
      {
LABEL_17:
        v21 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (v21 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v21);
        ++a1;
        if (v19)
        {
          a1 = v21;
          goto LABEL_21;
        }
      }

      v13 = v56;
      if (v56 != v55)
      {
        continue;
      }

      break;
    }

    v12 = v67;
  }

  v26 = v12 + 56;
  v27 = 1 << *(v12 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  a1 = v28 & *(v12 + 56);
  v29 = OBJC_IVAR____TtC24SensitiveContentAnalysis20AnalysisHistoryCache___observationRegistrar;
  v30 = (v27 + 63) >> 6;

  a2 = 0;
  v31 = "0Ӯ<";
  v59 = v30;
  v61 = v12 + 56;
  v62 = v12;
  while (1)
  {
    if (!a1)
    {
      while (1)
      {
        v33 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_45;
        }

        if (v33 >= v30)
        {
        }

        a1 = *(v26 + 8 * v33);
        ++a2;
        if (a1)
        {
          a2 = v33;
          break;
        }
      }
    }

    v34 = (*(v12 + 48) + ((a2 << 10) | (16 * __clz(__rbit64(a1)))));
    v35 = v34[1];
    v64 = *v34;
    swift_getKeyPath();
    sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);

    sub_1AEAF8DDC();

    v36 = v31;
    swift_getKeyPath();
    v37 = v29;
    sub_1AEAF8DFC();

    swift_beginAccess();
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v57 + 16);
    *(v57 + 16) = 0x8000000000000000;
    v40 = sub_1AEA61F84(v64, v35, sub_1AEA61BA0);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_46;
    }

    v46 = v41;
    if (v39[3] < v45)
    {
      break;
    }

    if ((v38 & 1) == 0)
    {
      v52 = v40;
      sub_1AEAAC694();
      v40 = v52;
    }

LABEL_40:
    v29 = v37;
    v31 = v36;
    if (v46)
    {
      v32 = v39[7] + 6 * v40;
      *v32 = 0;
      *(v32 + 4) = 1;
    }

    else
    {
      v39[(v40 >> 6) + 8] |= 1 << v40;
      v48 = (v39[6] + 16 * v40);
      *v48 = v64;
      v48[1] = v35;
      v49 = v39[7] + 6 * v40;
      *v49 = 0;
      *(v49 + 4) = 1;
      v50 = v39[2];
      v44 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v44)
      {
        goto LABEL_47;
      }

      v39[2] = v51;
    }

    a1 &= a1 - 1;
    *(v57 + 16) = v39;
    swift_endAccess();
    swift_getKeyPath();
    sub_1AEAF8DEC();

    v26 = v61;
    v12 = v62;
    v30 = v59;
  }

  sub_1AEAAC030(v45, v38);
  v40 = sub_1AEA61F84(v64, v35, sub_1AEA61BA0);
  if ((v46 & 1) == (v47 & 1))
  {
    goto LABEL_40;
  }

  result = sub_1AEAFA31C();
  __break(1u);
  return result;
}

uint64_t sub_1AEAA8250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_1AEAF97FC();
  v4[8] = sub_1AEAF97EC();
  v6 = sub_1AEAF977C();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AEAA82E8, v6, v5);
}

uint64_t sub_1AEAA82E8()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[11] = OBJC_IVAR____TtC24SensitiveContentAnalysis20AnalysisHistoryCache___observationRegistrar;
  v0[5] = v1;
  v0[12] = sub_1AEA41D94(qword_1ED98A1F8, type metadata accessor for AnalysisHistoryCache);
  sub_1AEAF8DDC();

  swift_beginAccess();

  v3 = sub_1AEAA8D00(v2);
  v0[13] = v3;

  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v8 = (*(v4 + 32) + **(v4 + 32));
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1AEAA84CC;

  return v8(v3, 0, ObjectType, v4);
}

uint64_t sub_1AEAA84CC(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = v3[10];
    v6 = sub_1AEAA8B48;
  }

  else
  {

    v4 = v3[9];
    v5 = v3[10];
    v6 = sub_1AEAA85E8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

unint64_t sub_1AEAA85E8()
{
  v1 = v0[15];

  result = sub_1AEA82468(MEMORY[0x1E69E7CC0]);
  v3 = result;
  v56 = v1;
  v57 = v0;
  v54 = *(v1 + 16);
  if (!v54)
  {
LABEL_25:
    v32 = v0[7];

    swift_getKeyPath();
    v0[6] = v32;
    sub_1AEAF8DDC();

    v33 = *(v32 + 16);
    v34 = -1;
    v35 = -1 << *(v33 + 32);
    if (-v35 < 64)
    {
      v34 = ~(-1 << -v35);
    }

    v36 = v34 & *(v33 + 64);
    v37 = (63 - v35) >> 6;

    v38 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      for (i = v38; !v36; ++i)
      {
        v38 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_48;
        }

        if (v38 >= v37)
        {

          sub_1AEAA3324(v3, v39);

          v53 = v57[1];

          return v53();
        }

        v36 = *(v33 + 64 + 8 * v38);
      }

      v41 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v42 = (*(v33 + 48) + ((v38 << 10) | (16 * v41)));
      v44 = *v42;
      v43 = v42[1];
      v45 = *(v3 + 16);

      if (v45 && (, sub_1AEA61F84(v44, v43, sub_1AEA61BA0), v47 = v46, , (v47 & 1) != 0))
      {
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v64 = v39;
        if ((result & 1) == 0)
        {
          result = sub_1AEA61E58(0, *(v39 + 16) + 1, 1);
        }

        v49 = *(v39 + 16);
        v48 = *(v39 + 24);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v52 = v49 + 1;
          v62 = v49;
          result = sub_1AEA61E58((v48 > 1), v49 + 1, 1);
          v50 = v52;
          v49 = v62;
          v39 = v64;
        }

        *(v39 + 16) = v50;
        v51 = v39 + 16 * v49;
        *(v51 + 32) = v44;
        *(v51 + 40) = v43;
      }
    }
  }

  v4 = 0;
  v55 = v0[15] + 32;
LABEL_4:
  if (v4 >= *(v56 + 16))
  {
    goto LABEL_50;
  }

  v5 = v55 + (v4 << 6);
  v59 = *(v5 + 58);
  v60 = *(v5 + 56);
  v58 = v4 + 1;
  v6 = *(v5 + 48);
  v7 = v6 + 56;
  v8 = -1 << *(v6 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 56);
  v11 = (63 - v8) >> 6;

  v61 = v6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      v4 = v58;
      v0 = v57;
      if (v58 == v54)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
    }

    v10 = *(v7 + 8 * v15);
    ++v12;
    if (v10)
    {
      while (1)
      {
        v16 = (*(v61 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v10)))));
        v18 = *v16;
        v17 = v16[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v3;
        result = sub_1AEA61F84(v18, v17, sub_1AEA61BA0);
        v21 = *(v3 + 16);
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_47;
        }

        v25 = v20;
        if (*(v3 + 24) >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = result;
            sub_1AEA82144();
            result = v31;
          }
        }

        else
        {
          sub_1AEA81E8C(v24, isUniquelyReferenced_nonNull_native);
          result = sub_1AEA61F84(v18, v17, sub_1AEA61BA0);
          if ((v25 & 1) != (v26 & 1))
          {

            return sub_1AEAFA31C();
          }
        }

        v10 &= v10 - 1;
        if (v25)
        {
          break;
        }

        v3 = v63;
        v63[(result >> 6) + 8] |= 1 << result;
        v27 = (v63[6] + 16 * result);
        *v27 = v18;
        v27[1] = v17;
        v28 = (v63[7] + 4 * result);
        *v28 = v60;
        v28[1] = v59;
        v29 = v63[2];
        v23 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v23)
        {
          goto LABEL_49;
        }

        v63[2] = v30;
        v12 = v15;
        if (!v10)
        {
          goto LABEL_12;
        }

LABEL_11:
        v15 = v12;
      }

      v13 = result;

      v3 = v63;
      v14 = (v63[7] + 4 * v13);
      *v14 = v60;
      v14[1] = v59;
      v12 = v15;
      if (v10)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1AEAA8B48()
{

  if (qword_1ED98CE50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1ED98DDC0);
  v3 = v1;
  v4 = sub_1AEAF8FCC();
  v5 = sub_1AEAF9A9C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1AEA3F000, v4, v5, "Failed to refresh cache %@", v8, 0xCu);
    sub_1AEA41FAC(v9, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v9, -1, -1);
    MEMORY[0x1B270E620](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AEAA8D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1AEA4FF44(0, v1, 0);
  v2 = v42;
  v4 = v3 + 64;
  result = sub_1AEAF9D6C();
  v6 = result;
  v7 = 0;
  v32 = v3 + 72;
  v33 = v1;
  v34 = v3 + 64;
  v35 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v36 = v7;
    v37 = *(v3 + 36);
    v10 = (*(v3 + 48) + 16 * v6);
    v11 = *v10;
    v12 = v10[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEAFC470;
    *(inited + 32) = v11;
    *(inited + 40) = v12;
    swift_bridgeObjectRetain_n();
    v14 = sub_1AEAACFD0(inited);
    swift_setDeallocating();
    sub_1AEAAD764(inited + 32);
    Participant.init(displayName:handles:)(63, 0xE100000000000000, v14, v38);

    v15 = v38[0];
    v16 = v38[1];
    v17 = v39;
    v18 = v40;
    v19 = v41;
    v42 = v2;
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
    if (v21 >= v20 >> 1)
    {
      v30 = v40;
      v31 = v39;
      result = sub_1AEA4FF44((v20 > 1), v21 + 1, 1);
      v18 = v30;
      v17 = v31;
      v2 = v42;
    }

    *(v2 + 16) = v21 + 1;
    v22 = v2 + 56 * v21;
    *(v22 + 32) = v15;
    *(v22 + 40) = v16;
    *(v22 + 48) = v17;
    *(v22 + 64) = v18;
    *(v22 + 80) = v19;
    v3 = v35;
    v8 = 1 << *(v35 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = v34;
    v23 = *(v34 + 8 * v9);
    if ((v23 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v6 & 0x3F));
    if (v24)
    {
      v8 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v9 << 6;
      v26 = v9 + 1;
      v27 = (v32 + 8 * v9);
      while (v26 < (v8 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1AEA9B2DC(v6, v37, 0);
          v8 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1AEA9B2DC(v6, v37, 0);
    }

LABEL_4:
    v7 = v36 + 1;
    v6 = v8;
    if (v36 + 1 == v33)
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

uint64_t CacheCheck.Status.debugDescription.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      sub_1AEAF9E1C();

      v2 = 0x646568637465662ELL;
    }

    else
    {
      sub_1AEAF9E1C();

      v2 = 0x3A64656C6961662ELL;
    }
  }

  else if (a2)
  {
    sub_1AEAF9E1C();

    v2 = 0x686374656665722ELL;
  }

  else
  {
    sub_1AEAF9E1C();

    v2 = 0x6E6968637465662ELL;
  }

  v5 = v2;
  v3 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v3);

  MEMORY[0x1B270CB50](0x6963697472617020, 0xED000073746E6170);
  return v5;
}

uint64_t sub_1AEAA9150(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v23[0] = *v5;
    v23[1] = v8;
    v24[0] = v5[2];
    v9 = v24[0];
    *(v24 + 12) = *(v5 + 44);
    v20 = v23[0];
    v21 = v8;
    v22[0] = v9;
    *(v22 + 12) = *(v24 + 12);
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    *(v26 + 12) = *(v6 + 44);
    v13 = *(v26 + 12);
    v25[1] = v11;
    v26[0] = v12;
    v25[0] = v10;
    v17 = v10;
    v18 = v11;
    v19[0] = v12;
    *(v19 + 12) = v13;
    sub_1AEAAD510(v23, v16);
    sub_1AEAAD510(v25, v16);
    sub_1AEAAD56C();
    v14 = sub_1AEAF957C();
    v27[0] = v17;
    v27[1] = v18;
    v28[0] = v19[0];
    *(v28 + 12) = *(v19 + 12);
    sub_1AEAAD5C0(v27);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v22[0];
    *(v30 + 12) = *(v22 + 12);
    sub_1AEAAD5C0(v29);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 4;
    v6 += 4;
  }

  return 1;
}

uint64_t sub_1AEAA92B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_1AEA4A428();
      v3 = 0;
      do
      {

        v4 = sub_1AEAF957C();

        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1AEAA9484()
{
  v1 = *v0;
  v2 = 0x64656C6961662ELL;
  if (*v0 == 2)
  {
    v2 = 0x646568637465662ELL;
  }

  if (v1 == 1)
  {
    v2 = 0x686374656665722ELL;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6E6968637465662ELL;
  }
}

void *sub_1AEAA950C()
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  v1 = *(v0 + 16);
  sub_1AEAAD4C4(v1);
  return v1;
}

id sub_1AEAA95B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  v4 = *(v3 + 16);
  *a2 = v4;
  return sub_1AEAAD4C4(v4);
}

uint64_t sub_1AEAA9684()
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DCC();
}

uint64_t CacheCheck.status.getter()
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  if (!*(*(v0 + 32) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  sub_1AEAF8DDC();

  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  sub_1AEAF8DDC();

  v2 = AnalysisHistoryCache.cachedSensitiveParticipants(from:)(v1);

  swift_getKeyPath();
  sub_1AEAF8DDC();

  return v2;
}

uint64_t sub_1AEAA9918()
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();
}

uint64_t sub_1AEAA99BC()
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  return swift_weakLoadStrong();
}

uint64_t sub_1AEAA9A60@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1AEAA9B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  *a2 = *(v3 + 32);
}

uint64_t sub_1AEAA9C04(uint64_t a1)
{

  v4 = sub_1AEAA92B4(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
    sub_1AEAF8DCC();
  }
}

uint64_t sub_1AEAA9D58()
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  return *(v0 + 40);
}

uint64_t sub_1AEAA9DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1AEAA9EC8(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
    sub_1AEAF8DCC();
  }

  return result;
}

uint64_t CacheCheck.updateCount.getter()
{
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_1AEAAA08C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t CacheCheck.updateCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 48) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
    sub_1AEAF8DCC();
  }

  return result;
}

void (*CacheCheck.updateCount.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC24SensitiveContentAnalysis10CacheCheck___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1AEAF8DFC();

  swift_beginAccess();
  return sub_1AEAAA3C8;
}

void sub_1AEAAA3C8(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1AEAF8DEC();

  free(v1);
}

uint64_t CacheCheck.__allocating_init(cache:)()
{
  v0 = swift_allocObject();
  CacheCheck.init(cache:)();
  return v0;
}

uint64_t sub_1AEAAA48C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1AEAF977C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1AEAAA998;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1AEAF977C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1AEAAA624;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1AEAAA624()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1AEAAA688, v1, v2);
}

uint64_t sub_1AEAAA688()
{
  v1 = v0[11];
  v2 = sub_1AEAF8B1C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v3 = v0[1];
LABEL_5:

    return v3();
  }

  v4 = v0[24];
  sub_1AEAF988C();
  if (v4)
  {
    v5 = v0[11];
    (*(v0[13] + 8))(v0[14], v0[12]);

    sub_1AEA41FAC(v5, &qword_1EB5E9100);

    v3 = v0[1];
    goto LABEL_5;
  }

  v7 = v0[10];
  swift_getKeyPath();
  v0[7] = v7;
  sub_1AEAF8DDC();

  v0[8] = v7;
  swift_getKeyPath();
  sub_1AEAF8DFC();

  v11 = *(v7 + 48);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[10];
    v14 = v0[11];
    *(v15 + 48) = v13;
    v0[9] = v15;
    swift_getKeyPath();
    sub_1AEAF8DEC();

    sub_1AEA41FAC(v14, &qword_1EB5E9100);
    v0[22] = sub_1AEAF97EC();
    v16 = sub_1AEA41D94(&unk_1ED98A850, MEMORY[0x1E6969EF8]);
    v17 = swift_task_alloc();
    v0[23] = v17;
    *v17 = v0;
    v17[1] = sub_1AEAAA48C;
    v8 = v0[11];
    v9 = v0[12];
    v10 = v16;
  }

  return MEMORY[0x1EEE6D8C8](v8, v9, v10);
}

uint64_t sub_1AEAAA998()
{
  *(v0 + 48) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t CacheCheck.refetch(for:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1AEAF97BC();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = sub_1AEAF8A8C();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = sub_1AEAF97FC();
  v2[28] = sub_1AEAF97EC();
  v6 = sub_1AEAF977C();
  v2[29] = v6;
  v2[30] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AEAAAB78, v6, v5);
}

uint64_t sub_1AEAAAB78()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 16) = v2;
  *(v0 + 248) = OBJC_IVAR____TtC24SensitiveContentAnalysis10CacheCheck___observationRegistrar;
  *(v0 + 256) = sub_1AEA41D94(&qword_1ED98A598, type metadata accessor for CacheCheck);
  sub_1AEAF8DDC();

  LOBYTE(v1) = sub_1AEAA92B4(v3, v1);

  if (v1)
  {

LABEL_19:

    v35 = *(v0 + 8);

    return v35();
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 24) = v4;
  sub_1AEAF8DDC();

  v6 = *(v4 + 40);
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  *(v0 + 32) = v4;
  sub_1AEAF8DCC();
  sub_1AEAACFC0(v6);

  sub_1AEAA9C04(v8);
  if (!*(v5 + 16))
  {
    v20 = *(v0 + 160);

    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    *(v21 + 24) = 2;
    *(v0 + 136) = v20;
    sub_1AEAF8DCC();

    v22 = *(v4 + 40);
    if (v22 != 1)
    {
      v23 = *(v0 + 160);
      swift_getKeyPath();
      v24 = swift_task_alloc();
      *(v24 + 16) = v23;
      *(v24 + 24) = 1;
      *(v0 + 144) = v23;
LABEL_15:
      sub_1AEAF8DCC();
      goto LABEL_16;
    }

LABEL_18:
    *(v4 + 40) = v22;
    goto LABEL_19;
  }

  v9 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 40) = v9;
  sub_1AEAF8DDC();

  Strong = swift_weakLoadStrong();
  *(v0 + 264) = Strong;
  if (!Strong)
  {
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v27 = *(v0 + 192);
    v28 = *(v0 + 160);

    *(v0 + 328) = 98;
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA41D94(&qword_1EB5E9160, MEMORY[0x1E6967EB8]);
    sub_1AEAF8C3C();
    v29 = sub_1AEAF8A7C();
    (*(v26 + 8))(v25, v27);
    swift_getKeyPath();
    v30 = swift_task_alloc();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    *(v0 + 48) = v28;
    sub_1AEAF8DCC();

    v22 = *(v4 + 40);
    if (v22 != 1)
    {
      v31 = *(v0 + 160);
      swift_getKeyPath();
      v32 = swift_task_alloc();
      *(v32 + 16) = v31;
      *(v32 + 24) = 1;
      *(v0 + 56) = v31;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v11 = Strong;
  v12 = sub_1AEAA7758(*(v0 + 152));
  *(v0 + 272) = v12;
  if (!*(v12 + 16))
  {
    v33 = *(v0 + 160);

    swift_getKeyPath();
    v34 = swift_task_alloc();
    *(v34 + 16) = v33;
    *(v34 + 24) = 2;
    *(v0 + 120) = v33;
    sub_1AEAF8DCC();

    v22 = *(v4 + 40);
    if (v22 == 1)
    {
      goto LABEL_18;
    }

    v36 = *(v0 + 160);
    swift_getKeyPath();
    v37 = swift_task_alloc();
    *(v37 + 16) = v36;
    *(v37 + 24) = 1;
    *(v0 + 128) = v36;
    sub_1AEAF8DCC();
LABEL_16:

    goto LABEL_19;
  }

  if (qword_1ED98CE50 != -1)
  {
    swift_once();
  }

  v13 = sub_1AEAF8FEC();
  *(v0 + 280) = __swift_project_value_buffer(v13, qword_1ED98DDC0);
  v14 = sub_1AEAF97EC();
  *(v0 + 288) = v14;
  sub_1AEAF9E1C();

  *(v0 + 72) = *(v12 + 16);
  v15 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v15);

  MEMORY[0x1B270CB50](0x6963697472617020, 0xEE002E73746E6170);
  *(v0 + 296) = 0x80000001AEB074A0;
  v16 = swift_allocObject();
  *(v0 + 304) = v16;
  *(v16 + 16) = v11;
  *(v16 + 24) = v12;

  v17 = swift_task_alloc();
  *(v0 + 312) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9168);
  *v17 = v0;
  v17[1] = sub_1AEAAB3E4;
  v18 = MEMORY[0x1E69E85E0];

  return sub_1AEA96128(v0 + 64, 2000000000000000000, 0, 0, v14, v18, 0xD000000000000013, 0x80000001AEB074A0);
}

uint64_t sub_1AEAAB3E4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1AEAAB744;
  }

  else
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1AEAAB578;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEAAB578()
{
  v1 = v0[34];
  v2 = v0[20];

  sub_1AEAA7AC4(v1, v0[8]);

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = 2;
  v0[14] = v2;
  sub_1AEAF8DCC();

  v4 = v0[20];
  if (*(v4 + 40) == 1)
  {
    *(v4 + 40) = 1;
  }

  else
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v0[13] = v4;
    sub_1AEAF8DCC();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AEAAB744()
{
  v1 = *(v0 + 320);

  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 320);
  if (v3)
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);

    (*(v6 + 8))(v5, v7);
    v8 = *(v0 + 160);
    if (*(v8 + 40))
    {
      *(v8 + 40) = 1;
    }

    else
    {
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v8;
      *(v21 + 24) = 1;
      *(v0 + 104) = v8;
      sub_1AEAF8DCC();
    }
  }

  else
  {

    v9 = v4;
    v10 = sub_1AEAF8FCC();
    v11 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 320);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1AEA3F000, v10, v11, "Failed to fetch participants: %@", v13, 0xCu);
      sub_1AEA41FAC(v14, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v14, -1, -1);
      MEMORY[0x1B270E620](v13, -1, -1);
    }

    v17 = *(v0 + 320);
    v18 = *(v0 + 160);

    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    *(v0 + 88) = v18;
    v20 = v17;
    sub_1AEAF8DCC();

    swift_willThrow();

    if (*(v18 + 40) == 1)
    {
      *(*(v0 + 160) + 40) = 1;
    }

    else
    {
      v22 = *(v0 + 160);
      swift_getKeyPath();
      v23 = swift_task_alloc();
      *(v23 + 16) = v22;
      *(v23 + 24) = 1;
      *(v0 + 96) = v22;
      sub_1AEAF8DCC();
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1AEAABB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1AEAF97FC();
  v3[5] = sub_1AEAF97EC();
  v5 = sub_1AEAF977C();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AEAABBD8, v5, v4);
}

uint64_t sub_1AEAABBD8()
{
  v1 = *(v0[3] + 32);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 32) + **(v1 + 32));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1AEAABD08;
  v4 = v0[4];

  return v6(v4, 0, ObjectType, v1);
}

uint64_t sub_1AEAABD08(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1AEAABEA0;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1AEAABE30;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1AEAABE30()
{
  v1 = v0[10];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1AEAABEA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CacheCheck.deinit()
{
  sub_1AEAACFC0(*(v0 + 16));
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis10CacheCheck___observationRegistrar;
  v2 = sub_1AEAF8E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CacheCheck.__deallocating_deinit()
{
  sub_1AEAACFC0(v0[2]);
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC24SensitiveContentAnalysis10CacheCheck___observationRegistrar;
  v2 = sub_1AEAF8E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1AEAAC030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9188);
  v36 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 6 * v21;
      v26 = *v25;
      v37 = *(v25 + 4);
      if ((v36 & 1) == 0)
      {
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 6 * v15;
      *v17 = v26;
      *(v17 + 4) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AEAAC2F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AEAF9D7C() + 1) & ~v5;
    do
    {
      sub_1AEAFA3BC();

      sub_1AEAF95DC();
      v10 = sub_1AEAFA3FC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 6 * v3;
        v17 = (v15 + 6 * v6);
        if (6 * v3 < (6 * v6) || v16 >= v17 + 6 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 4) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1AEAAC4C0(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1AEA61F84(a2, a3, sub_1AEA61BA0);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1AEAAC694();
      result = v19;
      goto LABEL_8;
    }

    sub_1AEAAC030(v16, a4 & 1);
    result = sub_1AEA61F84(a2, a3, sub_1AEA61BA0);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1AEAFA31C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 6 * result;
    *v22 = a1;
    *(v22 + 4) = BYTE4(a1) & 1;
  }

  else
  {
    sub_1AEAAC63C(result, a2, a3, a1 | ((HIDWORD(a1) & 1) << 32), v21);
  }

  return result;
}

unint64_t sub_1AEAAC63C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 6 * result;
  *v6 = a4;
  *(v6 + 4) = BYTE4(a4) & 1;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

void *sub_1AEAAC694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9188);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 6;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        LOBYTE(v22) = *(v22 + 4);
        v24 = (*(v4 + 48) + v18);
        *v24 = v21;
        v24[1] = v20;
        v25 = *(v4 + 56) + v17;
        *v25 = v23;
        *(v25 + 4) = v22;
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

uint64_t sub_1AEAAC814(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AEA81760(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AEAAC908(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  v6 = sub_1AEAFA3FC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1AEAFA2BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AEA9AC00();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1AEAACA44(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1AEAACA44(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1AEAF9D7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1AEAFA3BC();

        sub_1AEAF95DC();
        v10 = sub_1AEAFA3FC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1AEAACC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1AEA5E1AC;

  return sub_1AEAA3AA0(v8, v9, v10, v7, a5);
}

uint64_t sub_1AEAACCAC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1AEA63D38;

  return sub_1AEAA421C(v6, v7, v8, v0 + v4, v5, v2, v3);
}

uint64_t sub_1AEAACDB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA63D38;

  return sub_1AEAA5EE8(v5, v2, v3, v4);
}

uint64_t sub_1AEAACE64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AEA5E1AC;

  return sub_1AEAA6A78(v4, v2, v3);
}

uint64_t _s24SensitiveContentAnalysis10CacheCheckC6StatusO2eeoiySbAE_AEtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 3)
    {
      return 0;
    }
  }

  else if (a2)
  {
    if (a4 != 1)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  return sub_1AEAA9150(a1, a3);
}

uint64_t sub_1AEAACF58()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 48) = v1;
  return result;
}

void sub_1AEAACFC0(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1AEAACFD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F28);
    v3 = sub_1AEAF9DFC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1AEAFA3BC();

      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1AEAFA2BC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t objectdestroy_15Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t sub_1AEAAD1A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AEA63D38;

  return sub_1AEAABB3C(a1, v5, v4);
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisHistoryCache.Entry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnalysisHistoryCache.Entry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1AEAAD2E0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEAAD2FC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void *sub_1AEAAD34C(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AEAAD3CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AEAAD414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24SensitiveContentAnalysis10CacheCheckC11FetchStatus33_042D099C3048B292C2C607B19D7DC16ALLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AEAAD488()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

id sub_1AEAAD4C4(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1AEAAD4D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_1AEAAD4C4(v1);
  sub_1AEAACFC0(v3);
}

unint64_t sub_1AEAAD56C()
{
  result = qword_1EB5E9178;
  if (!qword_1EB5E9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9178);
  }

  return result;
}

uint64_t sub_1AEAAD614()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t objectdestroy_9Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1AEAAD6D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA5E1AC;

  return sub_1AEAA8250(v3, v4, v5, v2);
}

uint64_t sub_1AEAAD7B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AEA63D38;

  return sub_1AEAACC08(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_1AEAAD8D0()
{
  if (*sub_1AEA5CE80() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEAFC480;
    if (qword_1ED98AC60 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED98DD58;
    *(inited + 32) = qword_1ED98DD58;
    v2 = v1;
    v3 = sub_1AEAADA10(0xD00000000000002BLL, 0x80000001AEB07610, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t *sub_1AEAAD9C0()
{
  if (qword_1ED98AC60 != -1)
  {
    swift_once();
  }

  return &qword_1ED98DD58;
}

uint64_t sub_1AEAADA10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AEAF9FFC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B270D3B0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = sub_1AEAF958C();
      v10 = [v7 objectForKey_];

      if (v10)
      {
        sub_1AEAF9CCC();

        swift_unknownObjectRelease();
        sub_1AEA45304(&v12, v13);
      }

      else
      {

        memset(v13, 0, sizeof(v13));
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9680);
      if (swift_dynamicCast())
      {
        return v12;
      }

      if (v8 == i)
      {
        return 2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 2;
}

uint64_t sub_1AEAADB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_1AEAF9C3C();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = v22 - v9;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AEAF9FFC())
  {
    v12 = 0;
    v23 = a5;
    v24 = a3 & 0xFFFFFFFFFFFFFF8;
    v25 = v8 + 1;
    v26 = a4 - 8;
    v27 = a3 & 0xC000000000000001;
    v22[1] = (a4 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    while (1)
    {
      if (v27)
      {
        v13 = MEMORY[0x1B270D3B0](v12, a3);
      }

      else
      {
        if (v12 >= *(v24 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v12 + 32);
      }

      v8 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = sub_1AEAF958C();
      v16 = [v8 objectForKey_];

      if (v16)
      {
        sub_1AEAF9CCC();

        swift_unknownObjectRelease();
        sub_1AEA45304(&v31, v32);
      }

      else
      {

        memset(v32, 0, sizeof(v32));
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9680);
      v17 = swift_dynamicCast();
      v8 = *(a4 - 8);
      v18 = v8[7];
      if (v17)
      {
        v19 = *(a4 - 8);
        (v18)(v10, 0, 1, a4);
        v20 = v23;
        (*(v19 + 32))(v23, v10, a4);
        return (v18)(v20, 0, 1, a4);
      }

      (v18)(v10, 1, 1, a4);
      (*v25)(v10, v28);
      ++v12;
      if (v14 == i)
      {
        a5 = v23;
        return (v8[7])(a5, 1, 1, a4);
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = *(a4 - 8);
  return (v8[7])(a5, 1, 1, a4);
}

void sub_1AEAADEB0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1AEAF958C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1ED98DD58 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ServicePolicyChecker.isSCWEnabledByServiceOrApplication(for:allServices:allApplications:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _s24SensitiveContentAnalysis20ServicePolicyCheckerV02isaB14WarningEnabled3for11allServices0K12ApplicationsSo8NSNumberCSgSS_SDySSAIGAKtFZ_0(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 BOOLValue];

    return v9;
  }

  else if (*(a4 + 16) && (v11 = sub_1AEA8EECC(a1, a2), (v12 & 1) != 0))
  {
    return [*(*(a4 + 56) + 8 * v11) BOOLValue];
  }

  else
  {
    return 2;
  }
}

SCServicePolicyChecker __swiftcall SCServicePolicyChecker.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id _s24SensitiveContentAnalysis20ServicePolicyCheckerV02isaB14WarningEnabled3for11allServices0K12ApplicationsSo8NSNumberCSgSS_SDySSAIGAKtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xD000000000000013 && 0x80000001AEB07680 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000012 && 0x80000001AEB076A0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {
    v6 = MEMORY[0x1E69AE000];
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001AEB076C0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {
    v6 = MEMORY[0x1E69ADFF8];
  }

  else if (a1 == 0xD000000000000017 && 0x80000001AEB076E0 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000011 && 0x80000001AEB07700 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000019 && 0x80000001AEB07720 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001AEB07740 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000026 && 0x80000001AEB07760 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD00000000000002BLL && 0x80000001AEB07790 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000026 && 0x80000001AEB077C0 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000020 && 0x80000001AEB077F0 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001AEB07820 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001AEB07840 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001AEB07860 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD00000000000001CLL && 0x80000001AEB07880 == a2 || (sub_1AEAFA2BC() & 1) != 0 || a1 == 0xD000000000000035 && 0x80000001AEB078A0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {
    v6 = MEMORY[0x1E69AE008];
  }

  else
  {
    if ((a1 != 0xD000000000000012 || 0x80000001AEB06570 != a2) && (sub_1AEAFA2BC() & 1) == 0 && (a1 != 0xD000000000000012 || 0x80000001AEB078E0 != a2) && (sub_1AEAFA2BC() & 1) == 0 && (a1 != 0xD000000000000015 || 0x80000001AEB07900 != a2) && (sub_1AEAFA2BC() & 1) == 0 && (a1 != 0xD000000000000017 || 0x80000001AEB060B0 != a2) && (sub_1AEAFA2BC() & 1) == 0 && (a1 != 0xD000000000000017 || 0x80000001AEB07920 != a2) && (sub_1AEAFA2BC() & 1) == 0 && (a1 != 0xD000000000000017 || 0x80000001AEB07940 != a2) && (sub_1AEAFA2BC() & 1) == 0 && (a1 != 0xD00000000000001DLL || 0x80000001AEB07960 != a2) && (sub_1AEAFA2BC() & 1) == 0)
    {
      return 0;
    }

    v6 = MEMORY[0x1E69AE010];
  }

  v7 = *v6;
  v8 = sub_1AEAF95BC();
  v10 = v9;
  if (*(a3 + 16))
  {
    v11 = v8;
    v12 = v7;
    v13 = sub_1AEA8EECC(v11, v10);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(a3 + 56) + 8 * v13);
      v17 = [v16 BOOLValue];
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];

      return v18;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AEAAE818()
{
  if (*v0)
  {
    return 0x69736E6553746F6ELL;
  }

  else
  {
    return 0x76697469736E6573;
  }
}

uint64_t sub_1AEAAE860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x76697469736E6573 && a2 == 0xE900000000000065;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69736E6553746F6ELL && a2 == 0xEC00000065766974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

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

uint64_t sub_1AEAAE948(uint64_t a1)
{
  v2 = sub_1AEAAED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAAE984(uint64_t a1)
{
  v2 = sub_1AEAAED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAAE9C0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1AEAAE9FC(uint64_t a1)
{
  v2 = sub_1AEAAEDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAAEA38(uint64_t a1)
{
  v2 = sub_1AEAAEDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEAAEA74(uint64_t a1)
{
  v2 = sub_1AEAAEE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAAEAB0(uint64_t a1)
{
  v2 = sub_1AEAAEE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sensitivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9198);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91A0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAAED9C();
  sub_1AEAFA42C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1AEAAEDF0();
    v14 = v18;
    sub_1AEAFA19C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1AEAAEE44();
    sub_1AEAFA19C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1AEAAED9C()
{
  result = qword_1EB5EC610;
  if (!qword_1EB5EC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EC610);
  }

  return result;
}

unint64_t sub_1AEAAEDF0()
{
  result = qword_1EB5EC618;
  if (!qword_1EB5EC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EC618);
  }

  return result;
}

unint64_t sub_1AEAAEE44()
{
  result = qword_1EB5EC620[0];
  if (!qword_1EB5EC620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EC620);
  }

  return result;
}

uint64_t Sensitivity.hashValue.getter()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](v1);
  return sub_1AEAFA3FC();
}

uint64_t Sensitivity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91B0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91B8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91C0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAAED9C();
  v13 = v31;
  sub_1AEAFA41C();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1AEAFA17C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1AEAF9E7C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91C8);
    *v21 = &type metadata for Sensitivity;
    sub_1AEAFA0BC();
    sub_1AEAF9E6C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1AEAAEDF0();
    sub_1AEAFA0AC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1AEAAEE44();
    sub_1AEAFA0AC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t Sensitivity.description.getter()
{
  if (*v0)
  {
    return 0x736E655320746F4ELL;
  }

  else
  {
    return 0x76697469736E6553;
  }
}

unint64_t sub_1AEAAF3E0()
{
  result = qword_1EB5E91D0;
  if (!qword_1EB5E91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E91D0);
  }

  return result;
}

uint64_t sub_1AEAAF434()
{
  if (*v0)
  {
    return 0x736E655320746F4ELL;
  }

  else
  {
    return 0x76697469736E6553;
  }
}

unint64_t sub_1AEAAF4CC()
{
  result = qword_1EB5ECBB0[0];
  if (!qword_1EB5ECBB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ECBB0);
  }

  return result;
}

unint64_t sub_1AEAAF524()
{
  result = qword_1EB5ECCC0;
  if (!qword_1EB5ECCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5ECCC0);
  }

  return result;
}

unint64_t sub_1AEAAF57C()
{
  result = qword_1EB5ECCC8[0];
  if (!qword_1EB5ECCC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ECCC8);
  }

  return result;
}

unint64_t sub_1AEAAF5D4()
{
  result = qword_1EB5ECD50;
  if (!qword_1EB5ECD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5ECD50);
  }

  return result;
}

unint64_t sub_1AEAAF62C()
{
  result = qword_1EB5ECD58[0];
  if (!qword_1EB5ECD58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ECD58);
  }

  return result;
}

unint64_t sub_1AEAAF684()
{
  result = qword_1EB5ECDE0;
  if (!qword_1EB5ECDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5ECDE0);
  }

  return result;
}

unint64_t sub_1AEAAF6DC()
{
  result = qword_1EB5ECDE8[0];
  if (!qword_1EB5ECDE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ECDE8);
  }

  return result;
}

uint64_t SensitiveParticipant.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

__n128 SensitiveParticipant.init(participant:analysis:)@<Q0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  v5 = *a2;
  *a3 = *a1;
  *(a3 + 8) = v3;
  result = *(a1 + 16);
  v7 = *(a1 + 32);
  *(a3 + 16) = result;
  *(a3 + 32) = v7;
  *(a3 + 48) = v4;
  *(a3 + 56) = v5;
  return result;
}

uint64_t SensitiveParticipant.subscript.getter()
{

  swift_getAtKeyPath();
}

uint64_t sub_1AEAAF8AC()
{
  if (*v0)
  {
    return 0x736973796C616E61;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_1AEAAF8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736973796C616E61 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

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

uint64_t sub_1AEAAF9D0(uint64_t a1)
{
  v2 = sub_1AEAB0264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAAFA0C(uint64_t a1)
{
  v2 = sub_1AEAB0264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SensitiveParticipant.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91D8);
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v13 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[3];
  v15 = v1[2];
  v16 = v5;
  v8 = v1[5];
  v14 = v1[4];
  v9 = v1[6];
  v27 = *(v1 + 28);
  HIDWORD(v13) = *(v1 + 29);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB0264();

  sub_1AEAFA42C();
  v20 = v16;
  v21 = v6;
  v10 = v17;
  v22 = v15;
  v23 = v7;
  v24 = v14;
  v25 = v8;
  v26 = v9;
  v28 = 0;
  sub_1AEAB02B8();
  v11 = v18;
  sub_1AEAFA22C();

  if (!v11)
  {
    LOWORD(v20) = v27;
    WORD1(v20) = WORD2(v13);
    v28 = 1;
    sub_1AEA5AA30();
    sub_1AEAFA22C();
  }

  return (*(v19 + 8))(v4, v10);
}

uint64_t SensitiveParticipant.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E91E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAB0264();
  sub_1AEAFA41C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26) = 0;
  sub_1AEAB030C();
  sub_1AEAFA14C();
  v9 = v30;
  v21 = v31;
  v22 = v29;
  v23 = v33;
  v24 = v32;
  v25 = v34;
  v10 = v35;
  v38 = 1;
  sub_1AEA5AAD8();
  sub_1AEAFA14C();
  (*(v6 + 8))(v8, v5);
  v20 = v39;
  v19 = v40;
  v12 = v21;
  v11 = v22;
  *&v26 = v22;
  *(&v26 + 1) = v9;
  v13 = v9;
  v14 = v24;
  *&v27 = v21;
  *(&v27 + 1) = v24;
  v15 = v25;
  *v28 = v23;
  *&v28[8] = v25;
  *&v28[16] = v10;
  *&v28[24] = v39;
  *&v28[26] = v40;
  v16 = v27;
  *a2 = v26;
  a2[1] = v16;
  a2[2] = *v28;
  *(a2 + 44) = *&v28[12];
  sub_1AEAAD510(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v11;
  v30 = v13;
  v31 = v12;
  v32 = v14;
  v33 = v23;
  v34 = v15;
  v35 = v10;
  v36 = v20;
  v37 = v19;
  return sub_1AEAAD5C0(&v29);
}

uint64_t sub_1AEAAFF70@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveParticipant.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SensitiveParticipant.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F08);
  sub_1AEAB0360();
  sub_1AEAB03C4();

  v0 = sub_1AEAF964C();

  v1 = sub_1AEAFA27C();
  v3 = v2;

  MEMORY[0x1B270CB50](v1, v3);

  v4 = sub_1AEAFA27C();
  v6 = v5;

  MEMORY[0x1B270CB50](v4, v6);

  return v0;
}

BOOL _s24SensitiveContentAnalysis0A11ParticipantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v16 = *(a1 + 56);
  v6 = *(a1 + 58);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[5];
  v11 = a2[6];
  v12 = *(a2 + 28);
  v13 = *(a2 + 29);
  v21[0] = *a1;
  v21[1] = v2;
  v21[2] = v3;
  v22 = *(a1 + 24);
  v23 = v4;
  v24 = v5;
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = v9;
  v18 = *(a2 + 3);
  v19 = v10;
  v20 = v11;

  LOBYTE(v2) = static Participant.== infix(_:_:)(v21, v17);

  if (v2)
  {
    LOWORD(v21[0]) = v16;
    WORD1(v21[0]) = v6;
    LOWORD(v17[0]) = v12;
    WORD1(v17[0]) = v13;
    return static SensitivityAnalysis.== infix(_:_:)(v21, v17);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1AEAB0264()
{
  result = qword_1EB5ECE70;
  if (!qword_1EB5ECE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5ECE70);
  }

  return result;
}

unint64_t sub_1AEAB02B8()
{
  result = qword_1ED989FB0;
  if (!qword_1ED989FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED989FB0);
  }

  return result;
}

unint64_t sub_1AEAB030C()
{
  result = qword_1ED989FA8;
  if (!qword_1ED989FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED989FA8);
  }

  return result;
}

unint64_t sub_1AEAB0360()
{
  result = qword_1EB5E91E8;
  if (!qword_1EB5E91E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E91E8);
  }

  return result;
}

unint64_t sub_1AEAB03C4()
{
  result = qword_1EB5E91F0;
  if (!qword_1EB5E91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E91F0);
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AEAB0440(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_1AEAB0488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AEAB04EC()
{
  result = qword_1EB5ED000[0];
  if (!qword_1EB5ED000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ED000);
  }

  return result;
}

unint64_t sub_1AEAB0544()
{
  result = qword_1EB5ED110;
  if (!qword_1EB5ED110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5ED110);
  }

  return result;
}

unint64_t sub_1AEAB059C()
{
  result = qword_1EB5ED118[0];
  if (!qword_1EB5ED118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5ED118);
  }

  return result;
}

void sub_1AEAB0880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1AEAF8C4C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id SCVideoStreamAnalyzer.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for VideoStreamAnalyzer();
  v4 = a1;
  v5 = VideoStreamAnalyzer.__allocating_init(coder:)(v4);
  if (v5)
  {
    *&v2[OBJC_IVAR___SCVideoStreamAnalyzer_analyzer] = v5;
    v8.receiver = v2;
    v8.super_class = SCVideoStreamAnalyzer;
    v6 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    type metadata accessor for SCVideoStreamAnalyzer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

unint64_t type metadata accessor for SCVideoStreamAnalyzer()
{
  result = qword_1ED98AC40;
  if (!qword_1ED98AC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED98AC40);
  }

  return result;
}

id sub_1AEAB0BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1AEAF958C();

  v10[0] = 0;
  v6 = [v3 initWithParticipantUUID:v5 options:sub_1AEA5FEA4(a3) error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1AEAF8C5C();

    swift_willThrow();
  }

  return v6;
}

id sub_1AEAB0C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (a3 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  type metadata accessor for VideoStreamAnalyzer();
  v9 = sub_1AEA5F8B8();
  v11 = v10;
  j___s24SensitiveContentAnalysis11SampleTimerC6ConfigVAEycfC(&v21);
  value = v21.baseInterval.value;
  is_nil = v21.baseInterval.is_nil;
  v17 = *(&v21.followUpFrameInterval.value + 7);
  v18 = BYTE6(v21.continueStreamTimeout.value);
  v19 = v22;
  v20 = v23;
  v12 = VideoStreamAnalyzer.__allocating_init(uuid:participantUUID:streamDirection:timerConfig:)(v9, v11, a1, a2, v8, &value);
  if (v4)
  {
    type metadata accessor for SCVideoStreamAnalyzer();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v5[OBJC_IVAR___SCVideoStreamAnalyzer_analyzer] = v12;
    v14.receiver = v5;
    v14.super_class = SCVideoStreamAnalyzer;
    return objc_msgSendSuper2(&v14, sel_init);
  }
}

void __swiftcall SCVideoStreamAnalyzer.init()(SCVideoStreamAnalyzer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1AEAB1490(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

id sub_1AEAB16EC(uint64_t a1, SEL *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([v2 *a2])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1AEAF8C5C();

  return swift_willThrow();
}

uint64_t sub_1AEAB17A0(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v7 = a3;
  v8 = a1;
  sub_1AEAB16EC(v7, a5);

  return 1;
}

void sub_1AEAB19D4(uint64_t a1, CMTimeValue a2, unint64_t a3, CMTimeEpoch a4, unsigned int a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_1AEAF9BAC();
  if ((v18 & 1) == 0)
  {
    a2 = 0;
    a3 = 0;
    a4 = 0;
  }

  v19 = sub_1AEA61794();
  *v22 = a6;
  *&v22[1] = a7;
  *&v22[2] = a8;
  *&v22[3] = a9;
  v23 = 0;
  LOBYTE(v21[0]) = 0;
  FrameDetails.init(orientation:frameSize:regionOfInterest:)(a5, v22, v21, v19, v20);
  VideoStreamAnalyzer.analyze(_:timestamp:frameDetails:)(a1, a2, a3, a4, (v18 & 1) == 0, v21);
}

uint64_t sub_1AEAB1BE4(void *a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  v3 = a1;
  SCSensitivityAnalysis.analysis.getter(&v6);
  shouldStoreOnVideoStream = SensitivityAnalysis._shouldStoreOnVideoStreamAnalyzer.getter();
  sub_1AEA4F1AC(a1);
  result = 0;
  if (shouldStoreOnVideoStream)
  {
    return 1;
  }

  return result;
}

void sub_1AEAB1C5C(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (!a1)
  {
LABEL_19:
    v14 = 0;
    if (a2)
    {
      v19 = 0;
    }

    else
    {
      type metadata accessor for SCAError(0);
      v22 = 56;
      sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
      sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
      sub_1AEAF8C3C();
      v19 = 0;
      a2 = v23;
    }

    v18 = 1;
    goto LABEL_23;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v20 = a1;
  v21 = sub_1AEAF9FFC();
  a1 = v20;
  if (!v21)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B270D3B0](0);
    goto LABEL_7;
  }

  if (*(v7 + 16))
  {
    v8 = *(a1 + 32);
LABEL_7:
    v9 = v8;

    v10 = [v9 analysis];
    v11 = [v9 confidenceScore];
    v12 = v11;
    if (v11)
    {
      [v11 doubleValue];
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    SCSensitivityAnalysis.analysis.getter(&v23);
    if (a3)
    {
      v16 = sub_1AEAD984C();
      v15 = sub_1AEAB1F04(&v22, *v16);
    }

    else
    {
      LOWORD(v22) = *sub_1AEAD984C();
      v24 = WORD1(v23);
      sub_1AEA632F0();
      sub_1AEAF9D0C();
      v15 = sub_1AEAF9D1C();
      if ((v15 & 1) == 0)
      {
        v15 = sub_1AEAF9D2C();
      }
    }

    LODWORD(v22) = v23;
    shouldObscureOr = SensitivityAnalysis._shouldObscureOrInterrupt.getter(v15);

    a2 = v23;
    v18 = 0;
    if (shouldObscureOr)
    {
      v19 = v12 == 0;
    }

    else
    {
      v19 = 0x80;
      v14 = 0;
    }

LABEL_23:
    *a4 = a2;
    *(a4 + 8) = v14;
    *(a4 + 16) = v19;
    *(a4 + 17) = v18;
    return;
  }

  __break(1u);
}

BOOL sub_1AEAB1F04(_WORD *a1, __int16 a2)
{
  sub_1AEA632F0();
  sub_1AEAF9D0C();
  sub_1AEAB2174();
  v3 = sub_1AEAF957C();
  if (v3)
  {
    v4 = v6;
  }

  else
  {
    v4 = a2;
    sub_1AEAF9D3C();
  }

  *a1 = v4;
  return (v3 & 1) == 0;
}

uint64_t sub_1AEAB2014(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  SCSensitivityAnalysis.analysis.getter(&v6);
  LOBYTE(a3) = a3();

  return a3 & 1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Sample(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  if (*a1 > 0x80000000FFFFFFFFLL)
  {
    v2 = ~HIDWORD(*a1);
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Sample(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = -a2 << 32;
      *(result + 8) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned int *sub_1AEAB2140(unsigned int *result, char a2)
{
  v2 = result[4] & 1 | (a2 << 7);
  *result = *result;
  *(result + 16) = v2;
  return result;
}

unint64_t sub_1AEAB2174()
{
  result = qword_1EB5E9780;
  if (!qword_1EB5E9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9780);
  }

  return result;
}

void __swiftcall Family.Parent.init(appleID:appleIDAliases:phoneNumbers:emailAddresses:)(SensitiveContentAnalysis::Family::Parent *__return_ptr retstr, Swift::String_optional appleID, Swift::OpaquePointer appleIDAliases, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer emailAddresses)
{
  object = appleID.value._object;
  countAndFlagsBits = appleID.value._countAndFlagsBits;
  if (appleID.value._object)
  {
    v11 = HIBYTE(appleID.value._object) & 0xF;
    if ((appleID.value._object & 0x2000000000000000) == 0)
    {
      v11 = appleID.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      countAndFlagsBits = 0;
      object = 0;
    }
  }

  v12 = sub_1AEAB2288(appleIDAliases._rawValue);

  v13 = sub_1AEAB2288(phoneNumbers._rawValue);

  v14 = sub_1AEAB2288(emailAddresses._rawValue);

  retstr->appleID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->appleID.value._object = object;
  retstr->appleIDAliases._rawValue = v12;
  retstr->phoneNumbers._rawValue = v13;
  retstr->emailAddresses._rawValue = v14;
}

uint64_t sub_1AEAB2288(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AEA61E58(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1AEA61E58((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AEAB23C0()
{
  if (qword_1ED98AD08 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  v1 = v0[2];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  *v2 = v0;
  v2[1] = sub_1AEAB24CC;
  v4 = v0[3];
  v5 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v4, v1, &type metadata for Family, v3, v5);
}

uint64_t sub_1AEAB24CC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1AEAB2644;
  }

  else
  {
    v2 = sub_1AEAB25E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEAB25E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEAB2644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Family._current.getter()
{
  if (qword_1ED98AD08 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  return v1;
}

uint64_t sub_1AEAB2710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v6 - v1;
  v3 = sub_1AEAF982C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v6[1] = sub_1AEA7C1B8(0, 0, v2, &unk_1AEAFFD70, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9218);
  swift_allocObject();
  result = sub_1AEAFA46C();
  qword_1ED98AD00 = result;
  return result;
}

uint64_t sub_1AEAB2838(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA5E1AC;

  return sub_1AEAB28D0(a1);
}

uint64_t sub_1AEAB28F0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E699C070]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1AEAB2A28;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9200);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AEA90828;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AEAB2A28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1AEAB3020;
  }

  else
  {
    v2 = sub_1AEAB2B38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEAB2B38()
{
  v1 = *(v0 + 144);

  v46 = v1;
  v2 = [v1 members];
  sub_1AEAB3594();
  v3 = sub_1AEAF96EC();

  if (v3 >> 62)
  {
    goto LABEL_55;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v53 = v3 & 0xC000000000000001;
    v48 = v3 + 32;
    v49 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7CC0];
    v50 = v3;
    v51 = v4;
    while (1)
    {
      while (1)
      {
        if (v53)
        {
          v8 = MEMORY[0x1B270D3B0](v6, v3);
        }

        else
        {
          if (v6 >= *(v49 + 16))
          {
            goto LABEL_54;
          }

          v8 = *(v48 + 8 * v6);
        }

        v9 = v8;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v4 = sub_1AEAF9FFC();
          goto LABEL_3;
        }

        if (([v8 isParent] & 1) != 0 || objc_msgSend(v9, sel_isGuardian))
        {
          break;
        }

        if (v6 == v4)
        {
          goto LABEL_49;
        }
      }

      v56 = v7;
      v11 = [v9 contact];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 emailAddresses];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9208);
        v14 = sub_1AEAF96EC();
      }

      else
      {
        v14 = v5;
      }

      v15 = [v9 appleID];
      if (v15)
      {
        v16 = v15;
        v58 = sub_1AEAF95BC();
        v18 = v17;
      }

      else
      {
        v58 = 0;
        v18 = 0;
      }

      v19 = [v9 appleIDAliases];
      if (v19)
      {
        v20 = v19;
        v57 = sub_1AEAF96EC();
      }

      else
      {
        v57 = v5;
      }

      v55 = v9;
      v54 = sub_1AEAF9AAC();
      if (v14 >> 62)
      {
        v21 = sub_1AEAF9FFC();
        if (!v21)
        {
LABEL_34:

          v23 = v5;
          goto LABEL_35;
        }
      }

      else
      {
        v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_34;
        }
      }

      sub_1AEA61E58(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        goto LABEL_53;
      }

      v52 = v18;
      v22 = 0;
      v23 = v5;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1B270D3B0](v22, v14);
        }

        else
        {
          v24 = *(v14 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = [v24 value];
        v27 = sub_1AEAF95BC();
        v29 = v28;

        v31 = *(v5 + 16);
        v30 = *(v5 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1AEA61E58((v30 > 1), v31 + 1, 1);
        }

        ++v22;
        *(v5 + 16) = v31 + 1;
        v32 = v5 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
      }

      while (v21 != v22);

      v3 = v50;
      v18 = v52;
LABEL_35:
      v7 = v56;
      v33 = v58;
      v34 = v3;
      if (!v18)
      {
        goto LABEL_41;
      }

      v35 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v35 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {

        v33 = 0;
LABEL_41:
        v36 = 0;
        goto LABEL_42;
      }

      v36 = v18;
LABEL_42:
      v37 = sub_1AEAB2288(v57);

      v38 = sub_1AEAB2288(v54);

      v39 = sub_1AEAB2288(v23);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AEAB3458(0, *(v56 + 2) + 1, 1, v56);
      }

      v41 = *(v7 + 2);
      v40 = *(v7 + 3);
      if (v41 >= v40 >> 1)
      {
        v7 = sub_1AEAB3458((v40 > 1), v41 + 1, 1, v7);
      }

      *(v7 + 2) = v41 + 1;
      v42 = &v7[40 * v41];
      *(v42 + 4) = v33;
      *(v42 + 5) = v36;
      *(v42 + 6) = v37;
      *(v42 + 7) = v38;
      *(v42 + 8) = v39;
      v5 = MEMORY[0x1E69E7CC0];
      v3 = v34;
      v4 = v51;
      if (v6 == v51)
      {
        goto LABEL_49;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_49:
  v43 = *(v47 + 152);

  *v43 = v7;
  v44 = *(v47 + 8);

  return v44();
}

uint64_t sub_1AEAB3020()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static Family.$_current.getter()
{
  if (qword_1ED98AD08 != -1)
  {
    swift_once();
  }
}

Swift::Bool __swiftcall Family.hasParent(withOneOf:)(Swift::OpaquePointer withOneOf)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  rawValue = withOneOf._rawValue;
  v5 = 0;
  v6 = v2 + 32;
  v7 = withOneOf._rawValue + 40;
  v31 = *v1;
  v32 = withOneOf._rawValue;
  v29 = v2 + 32;
  v30 = v3;
  v28 = withOneOf._rawValue + 40;
  while (2)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = (v6 + 40 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      v13 = v8[4];
      v33 = v5 + 1;
      v14 = rawValue[2];

      v36 = v11;

      v35 = v12;

      v34 = v13;

      v16 = v14 + 1;
      v17 = v7;
      while (--v16)
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        if (v9)
        {
          v20 = v10 == v19 && v9 == v18;
          if (v20 || (v15 = sub_1AEAFA2BC(), (v15 & 1) != 0))
          {
LABEL_19:

LABEL_21:

            LOBYTE(withOneOf._rawValue) = 1;
            return withOneOf._rawValue;
          }
        }

        v37 = v19;
        v38 = v18;
        MEMORY[0x1EEE9AC00](v15);
        v27 = &v37;

        v21 = sub_1AEAB33AC(sub_1AEAB3780, v26, v36);
        if (v21 & 1) != 0 || (v37 = v19, v38 = v18, MEMORY[0x1EEE9AC00](v21), v27 = &v37, v22 = sub_1AEAB33AC(sub_1AEAB3780, v26, v35), (v22))
        {

          goto LABEL_21;
        }

        v17 += 2;
        v37 = v19;
        v38 = v18;
        MEMORY[0x1EEE9AC00](v22);
        v27 = v23;
        v24 = sub_1AEAB33AC(sub_1AEAB3780, v26, v34);

        if (v24)
        {
          goto LABEL_19;
        }
      }

      LOBYTE(withOneOf._rawValue) = 0;
      v2 = v31;
      rawValue = v32;
      v5 = v33;
      v7 = v28;
      v6 = v29;
      if (v33 != v30)
      {
        continue;
      }
    }

    return withOneOf._rawValue;
  }
}