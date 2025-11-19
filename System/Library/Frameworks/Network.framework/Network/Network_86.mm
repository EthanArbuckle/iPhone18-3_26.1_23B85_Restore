uint64_t Connection2.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    nw_connection_cancel(*(v1 + 16));

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection2.__deallocating_deinit()
{
  Connection2.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_181FDD06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_182259704(sub_181C571A4, v8, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v11;
  return swift_endAccess();
}

uint64_t sub_181FDD138(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_182AD27A8();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_182AD27C8();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_182AD2258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v19 = qword_1EA8433A8;
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v3[10];
  *(v15 + 3) = v3[11];
  *(v15 + 4) = swift_allocateMetadataPack();
  *(v15 + 5) = v3[13];
  *(v15 + 6) = swift_allocateWitnessTablePack();
  *(v15 + 7) = v1;
  (*(v11 + 32))(&v15[v14], v13, v10);
  aBlock[4] = sub_181FE47F8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_72_0;
  v16 = _Block_copy(aBlock);

  sub_182AD27B8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_181FE485C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181B7CFE4();
  v17 = v23;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v9, v6, v16);
  _Block_release(v16);
  (*(v22 + 8))(v6, v17);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_181FDD500(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_18224F354(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 24);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182257080();
    }

    v9 = *(v8 + 48);
    v10 = sub_182AD2258();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    sub_181FABDE0(v6, v8);
    *(a1 + 24) = v8;
  }

  return swift_endAccess();
}

uint64_t Connection2.hashValue.getter()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181FDD680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_181FDD6FC()
{
  swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)();
}

uint64_t sub_181FDD75C()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t Connection2<>.send(_:metadata:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 120) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 64) = *v5;
  *(v6 + 72) = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 80) = AssociatedTypeWitness;
  *(v6 + 88) = *(AssociatedTypeWitness - 8);
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FDD908, 0, 0);
}

{
  *(v6 + 136) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 64) = *v5;
  *(v6 + 72) = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 80) = AssociatedTypeWitness;
  *(v6 + 88) = *(AssociatedTypeWitness - 8);
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FDDDB8, 0, 0);
}

uint64_t sub_181FDD908()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 120);
  v11 = *(v0 + 48);
  v3 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  (*(v11 + 40))(v2, v3);
  v10 = (*(v11 + 16) + **(v11 + 16));
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_181FDDA88;
  v6 = *(v0 + 96);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  return v10(v0 + 16, v7, v8, v6, v1, WitnessTable);
}

uint64_t sub_181FDDA88()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(v5 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FDDC30, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_181FDDC30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FDDDB8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 136);
  v15 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 56);

  v7 = sub_181F76154(v6, v4);
  v9 = v8;
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  (*(v15 + 40))(v3, v5, v2);
  v14 = (*(v15 + 16) + **(v15 + 16));
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_181FDDF8C;
  v12 = *(v0 + 96);

  return v14(v0 + 16, v7, v9, v12, v1, WitnessTable);
}

uint64_t sub_181FDDF8C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  sub_181C1F2E4(v3, v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FDE17C, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8();
  }
}

uint64_t sub_181FDE17C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Connection2<>.send(_:metadata:isComplete:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void (**a6)(uint64_t a1)@<X8>)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = v6;
  *(v13 + 32) = a4;
  *(v13 + 40) = a3;
  *(v13 + 48) = a1;
  *(v13 + 56) = a2;
  *a6 = sub_181FE4438;
  a6[1] = v13;

  return sub_181F49B58(a1, a2);
}

{

  v12 = sub_181F76154(a1, a2);
  v14 = v13;
  Connection2<>.send(_:metadata:isComplete:)(v12, v13, a3, a4, a5, a6);

  return sub_181C1F2E4(v12, v14);
}

void sub_181FDE28C(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v64 = a6;
  v63 = a5;
  LODWORD(v66) = a3;
  v60 = *a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - v13;
  v69 = sub_182AD2258();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v20 = *(v11 + 16);
  v70 = a1;
  v54 = v20;
  (v20)(v14, a1, v10, v17);
  v21 = *(v11 + 80);
  v57 = v12;
  v22 = swift_allocObject();
  v23 = *(v11 + 32);
  v59 = v14;
  v68 = v10;
  v61 = v11 + 32;
  v56 = v23;
  v23((v22 + ((v21 + 16) & ~v21)), v14, v10);
  v67 = v19;
  sub_181FDCBFC(sub_181FE500C, v22, v19);

  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v25 = nw_content_context_create("sendContext");
  *(inited + 16) = v25;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v26 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v26, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v25, 0.5);
  v27 = v66;
  *(inited + 64) = v66;
  nw_content_context_set_is_final(v25, v27 & 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (a4)
  {
    if (a4 >> 62)
    {
      v28 = sub_182AD3EB8();
      if (!v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v28 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_11;
      }
    }

    if (v28 < 1)
    {
      __break(1u);
      goto LABEL_16;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v28; ++i)
      {
        v30 = MEMORY[0x1865DA790](i, a4);
        nw_content_context_set_metadata_for_protocol(v25, *(v30 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v31 = (a4 + 32);
      do
      {
        v32 = *v31++;
        nw_content_context_set_metadata_for_protocol(v25, *(v32 + 16));
        --v28;
      }

      while (v28);
    }
  }

LABEL_11:
  v33 = a2[2];
  v66 = a2;
  v53 = v33;
  if (v33)
  {
    v34 = v65;
    v35 = v58;
    (*(v65 + 16))(v58, v67, v69);
    v36 = v59;
    v54(v59, v70, v68);
    v37 = (*(v34 + 80) + 64) & ~*(v34 + 80);
    v38 = (v55 + v21 + v37) & ~v21;
    v39 = swift_allocObject();
    v40 = v60;
    *(v39 + 2) = *(v60 + 80);
    *(v39 + 3) = *(v40 + 88);
    MetadataPack = swift_allocateMetadataPack();
    v42 = v62;
    *(v39 + 4) = MetadataPack;
    *(v39 + 5) = v42;
    WitnessTablePack = swift_allocateWitnessTablePack();
    v44 = v66;
    *(v39 + 6) = WitnessTablePack;
    *(v39 + 7) = v44;
    v45 = v35;
    v46 = v69;
    (*(v34 + 32))(&v39[v37], v45, v69);
    v56(&v39[v38], v36, v68);
    v47 = *(v53 + 16);

    v48 = sub_182AD2138();
    v50 = NWCreateDispatchDataFromNSData(v48, v49);

    v51 = swift_allocObject();
    *(v51 + 16) = sub_181FE4CD8;
    *(v51 + 24) = v39;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_155;
    v52 = _Block_copy(aBlock);

    nw_connection_send(v47, v50, v25, 1, v52);

    _Block_release(v52);

    sub_182AD3568();
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();
    (*(v34 + 8))(v67, v46);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_181FDE8D0(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v9 = *(a1 + 4);
  v10 = *a1;
  sub_181FDD138(a3);
  if (v9 <= 0xFEuLL)
  {
    v11 = v10 & 0xFFFFFF00FFFFFFFFLL | (v9 << 32);
    v13[2] = v11;
    v14 = (v11 | 0x4000000000) >> 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
    sub_182AD3588();
    (*(v6 + 8))(v8, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  return sub_182AD3598();
}

uint64_t Connection2<>.receive(minimumLength:maximumLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v4[3] = a3;
  v9 = v8;
  v10 = *(*v3 + 88);
  v4[4] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[5] = AssociatedTypeWitness;
  v4[6] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v4[7] = v12;
  v4[2] = v3;
  v16 = (*(a3 + 32) + **(a3 + 32));
  v13 = swift_task_alloc();
  v4[8] = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v4;
  v13[1] = sub_181FDECFC;

  return v16(v12, v4 + 2, a1, a2, v9, WitnessTable, v10, a3);
}

uint64_t sub_181FDECFC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_181FDEF2C;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_181FDEE30;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_181FDEE30()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = (*(v0[3] + 48))(v1, v2, v3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_181C1F2E4(v1, v2);
  (*(v4 + 8))(v3, v5);

  v13 = v0[1];

  return v13(v6, v8, v10 & 1, v12);
}

uint64_t sub_181FDEF2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Connection2<>.receive(exactly:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3[3] = a2;
  v7 = v6;
  v8 = *(*v2 + 88);
  v3[4] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v3[6] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v3[7] = v10;
  v3[2] = v2;
  v14 = (*(a2 + 32) + **(a2 + 32));
  v11 = swift_task_alloc();
  v3[8] = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v3;
  v11[1] = sub_181FDF1C4;

  return v14(v10, v3 + 2, a1, a1, v7, WitnessTable, v8, a2);
}

uint64_t sub_181FDF1C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_181FE4FCC;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_181FE4FD4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t Connection2<>.send(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  *(v4 + 16) = v3;
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_181FDF40C;

  return static UDP.send<A>(connection:content:metadata:)(v4 + 16, a1, a2, a3, v8, WitnessTable);
}

{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_181FDF5A4, 0, 0);
}

uint64_t sub_181FDF40C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FDF540, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_181FDF5A4()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v0[2] = v0[6];

  v4 = sub_181F76154(v3, v2);
  v6 = v5;
  v0[8] = v4;
  v0[9] = v5;
  v7 = swift_task_alloc();
  v0[10] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_181FDF6AC;
  v9 = v0[5];

  return static UDP.send<A>(connection:content:metadata:)((v0 + 2), v4, v6, v9, v1, WitnessTable);
}

uint64_t sub_181FDF6AC()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FDF7E8, 0, 0);
  }

  else
  {
    sub_181C1F2E4(v2[8], v2[9]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_181FDF7E8()
{
  sub_181C1F2E4(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t Connection2<>.send(_:metadata:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t a1)@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 2) = v4;
  *(v9 + 3) = a3;
  *(v9 + 4) = a1;
  *(v9 + 5) = a2;
  *a4 = sub_181FE444C;
  a4[1] = v9;

  return sub_181F49B58(a1, a2);
}

{

  v8 = sub_181F76154(a1, a2);
  v10 = v9;
  Connection2<>.send(_:metadata:)(v8, v9, a3, a4);

  return sub_181C1F2E4(v8, v10);
}

void sub_181FDF8E0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v56 = a4;
  v54 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  v61 = sub_182AD2258();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = *(v9 + 16);
  v62 = a1;
  v49 = v9 + 16;
  v48 = v18;
  (v18)(v12, a1, v8, v15);
  v19 = *(v9 + 80);
  v52 = v10;
  v20 = swift_allocObject();
  v21 = *(v9 + 32);
  v53 = v12;
  v60 = v8;
  v55 = v9 + 32;
  v21(v20 + ((v19 + 16) & ~v19), v12, v8);
  v59 = v17;
  v22 = a2;
  sub_181FDCBFC(sub_181FE500C, v20, v17);

  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v24 = nw_content_context_create("sendContext");
  *(inited + 16) = v24;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v25 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v25, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v24, 0.5);
  *(inited + 64) = 1;
  nw_content_context_set_is_final(v24, 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (a3)
  {
    if (a3 >> 62)
    {
      v26 = sub_182AD3EB8();
      if (!v26)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v26 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_11;
      }
    }

    if (v26 < 1)
    {
      __break(1u);
      goto LABEL_16;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v26; ++i)
      {
        v28 = MEMORY[0x1865DA790](i, a3);
        nw_content_context_set_metadata_for_protocol(v24, *(v28 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v29 = (a3 + 32);
      do
      {
        v30 = *v29++;
        nw_content_context_set_metadata_for_protocol(v24, *(v30 + 16));
        --v26;
      }

      while (v26);
    }
  }

LABEL_11:
  v46 = v21;
  v47 = inited;
  v45 = a2[2];
  if (v45)
  {
    v31 = v58;
    v32 = v51;
    (*(v58 + 16))(v51, v59, v61);
    v33 = v53;
    v48(v53, v62, v60);
    v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
    v35 = (v50 + v19 + v34) & ~v19;
    v36 = swift_allocObject();
    *(v36 + 2) = *(v54 + 80);
    *(v36 + 3) = swift_allocateMetadataPack();
    *(v36 + 4) = swift_allocateWitnessTablePack();
    *(v36 + 5) = v22;
    v37 = v32;
    v38 = v61;
    (*(v31 + 32))(&v36[v34], v37, v61);
    v46(&v36[v35], v33, v60);
    v39 = *(v45 + 16);

    v40 = sub_182AD2138();
    v42 = NWCreateDispatchDataFromNSData(v40, v41);

    v43 = swift_allocObject();
    *(v43 + 16) = sub_181FE4AA4;
    *(v43 + 24) = v36;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_142;
    v44 = _Block_copy(aBlock);

    nw_connection_send(v39, v42, v24, 1, v44);

    _Block_release(v44);

    sub_182AD3568();
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();
    (*(v31 + 8))(v59, v38);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t Connection2<>.receive()()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839958);
  type metadata accessor for AsyncSequenceReceive();
  v1 = sub_182185454(sub_181FE4458, v0);

  return v1;
}

uint64_t sub_181FE009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_181FE4A5C;
    *(v9 + 24) = v8;
    v10 = *(v7 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181FE4A9C;
    *(v11 + 24) = v9;
    v13[4] = sub_181FE4FD0;
    v13[5] = v11;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_181D478F8;
    v13[3] = &block_descriptor_124;
    v12 = _Block_copy(v13);

    nw_connection_receive_message(v10, v12);
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_181FE01F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void (*a6)(uint64_t, unint64_t, uint64_t, void *))
{
  if (a2 >> 60 == 15 || a3 == 0)
  {
    v8 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v10 = swift_allocError();
    if (HIDWORD(v8) <= 0xFE)
    {
      *v9 = v8;
      *(v9 + 4) = BYTE4(v8);
    }

    else
    {
      *v9 = 22;
      *(v9 + 4) = 0;
    }

    a6(0, 0, 1, v10);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    v15 = (v14 + 16);
    v16 = *(a3 + 16);
    v19[4] = sub_181FE5010;
    v19[5] = v14;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_181F25CD0;
    v19[3] = &block_descriptor_129_0;
    v17 = _Block_copy(v19);
    sub_181F49B44(a1, a2);
    sub_181F49B44(a1, a2);

    nw_content_context_foreach_protocol_metadata(v16, v17);
    _Block_release(v17);
    swift_beginAccess();
    v18 = *v15;

    a6(a1, a2, v18, 0);
    sub_181C1F2E4(a1, a2);

    sub_181D9D680(a1, a2);
  }
}

uint64_t Connection2.send<A>(_:metadata:isFinal:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_181FE04D8, 0, 0);
}

uint64_t sub_181FE04D8()
{
  *(v0 + 48) = *(v0 + 72);
  v1 = *(v0 + 88);
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  v2 = *(v1 + 88);
  v3 = v2[2];
  v4 = v2[4];
  v5 = sub_182AD1C68();
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = v5;
  v8 = v6;
  v15 = *(v0 + 80);
  v9 = *(v0 + 128);
  v10 = *(v0 + 64);

  v11 = v2[3];
  sub_1821EBCD8(v9, v10, v0 + 16);
  v12 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v12;

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_181FE06E0;

  return static JSON.send<A>(connection:content:metadata:)(v0 + 48, v7, v8, v0 + 32, v3, v15, v11, v4);
}

uint64_t sub_181FE06E0()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v4 = v2[12];
    v3 = v2[13];

    sub_181C1F2E4(v4, v3);

    return MEMORY[0x1EEE6DFA0](sub_181FE0854, 0, 0);
  }

  else
  {
    v6 = v2[12];
    v5 = v2[13];

    sub_181C1F2E4(v6, v5);
    v7 = v2[1];

    return v7();
  }
}

uint64_t Connection2.send<A>(_:metadata:isFinal:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (**a5)(uint64_t a1)@<X8>)
{
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a4;
  *a5 = sub_181FE4460;
  a5[1] = v11;

  sub_181F49B58(a1, a2);
}

void sub_181FE0908(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v71) = a6;
  v72 = a5;
  v81 = a3;
  v82 = a4;
  v69 = *a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839968);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v66 - v12;
  v80 = sub_182AD2258();
  v79 = *(v80 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v76 = (v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v66 - v17;
  v19 = *(v10 + 16);
  v84 = a1;
  v68 = v19;
  (v19)(v13, a1, v9, v16);
  v20 = *(v10 + 80);
  v70 = v11;
  v21 = swift_allocObject();
  v22 = *(v10 + 32);
  v78 = v9;
  v22(v21 + ((v20 + 16) & ~v20), v13, v9);
  v83 = v18;
  v77 = a2;
  sub_181FDCBFC(sub_181FE500C, v21, v18);

  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  aBlock = v81;
  v86 = v82;
  sub_181C675F8();
  v23 = sub_182AD1C68();
  v24 = v71;
  v66[1] = v10 + 16;
  v67 = v20;
  v73 = v14;
  v74 = v22;
  v81 = v23;
  v25 = v13;
  v75 = v10 + 32;
  v26 = v77;
  v27 = v84;
  v82 = v28;

  v91 = v72;
  v29 = v82 >> 62;
  if ((v82 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v32 = *(v81 + 16);
      v31 = *(v81 + 24);
      v30 = v31 - v32;
      if (__OFSUB__(v31, v32))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else if (v29)
  {
    if (__OFSUB__(HIDWORD(v81), v81))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v30 = HIDWORD(v81) - v81;
  }

  else
  {
    v30 = BYTE6(v82);
  }

  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(0, v30);
  MEMORY[0x1865D9F10]();
  if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v33 = v91;
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v35 = nw_content_context_create("JSON");
  *(inited + 16) = v35;
  *(inited + 24) = 1313821514;
  *(inited + 32) = 0xE400000000000000;
  *(inited + 40) = 0;
  v36 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v36, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v35, 0.5);
  *(inited + 64) = v24 & 1;
  nw_content_context_set_is_final(v35, v24 & 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  v72 = inited;
  if (v33 >> 62)
  {
    v37 = sub_182AD3EB8();
    v38 = v25;
    if (!v37)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = v25;
    if (!v37)
    {
      goto LABEL_21;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v33 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v37; ++i)
    {
      v40 = MEMORY[0x1865DA790](i, v33);
      nw_content_context_set_metadata_for_protocol(v35, *(v40 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v41 = (v33 + 32);
    do
    {
      v42 = *v41++;
      nw_content_context_set_metadata_for_protocol(v35, *(v42 + 16));
      --v37;
    }

    while (v37);
  }

LABEL_21:
  v43 = v83;
  v71 = v26[2];
  if (v71)
  {
    v44 = v67;

    v45 = v79;
    v46 = v43;
    v47 = v80;
    (*(v79 + 16))(v76, v46, v80);
    v48 = v78;
    v68(v38, v27, v78);
    v49 = (*(v45 + 80) + 72) & ~*(v45 + 80);
    v50 = &v73[v44 + v49] & ~v44;
    v51 = swift_allocObject();
    v73 = v38;
    v52 = v69;
    *(v51 + 2) = *(v69 + 80);
    *(v51 + 3) = swift_allocateMetadataPack();
    v53 = *(v52 + 88);
    *(v51 + 4) = v53[2];
    *(v51 + 5) = swift_allocateWitnessTablePack();
    *(v51 + 6) = v53[3];
    v54 = v53[4];
    v55 = v48;
    v56 = v47;
    v57 = v77;
    *(v51 + 7) = v54;
    *(v51 + 8) = v57;
    (*(v45 + 32))(&v51[v49], v76, v47);
    v74(&v51[v50], v73, v55);
    v76 = *(v71 + 16);
    v58 = v81;
    v59 = v82;
    sub_181F49B58(v81, v82);

    v60 = sub_182AD2138();
    v62 = NWCreateDispatchDataFromNSData(v60, v61);

    v63 = swift_allocObject();
    *(v63 + 16) = sub_181FE4984;
    *(v63 + 24) = v51;
    v89 = sub_181FE5014;
    v90 = v63;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = sub_181AA4EBC;
    v88 = &block_descriptor_111_0;
    v64 = _Block_copy(&aBlock);

    nw_connection_send(v76, v62, v35, 1, v64);

    sub_181C1F2E4(v58, v59);
    sub_181C1F2E4(v58, v59);
    v65 = v83;
    _Block_release(v64);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();

    sub_182AD3568();
    (*(v45 + 8))(v65, v56);
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t Connection2.receive<A>()()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83AF70);
  swift_getTupleTypeMetadata3();
  swift_getWitnessTable();
  type metadata accessor for AsyncSequenceReceive();
  v1 = sub_182185454(sub_181FE4470, v0);

  return v1;
}

uint64_t sub_181FE1374(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[2];
  if (v3)
  {
    v5 = result;
    v6 = *a3;
    v7 = swift_allocObject();
    v7[2] = *(v6 + 80);
    v7[3] = swift_allocateMetadataPack();
    v8 = *(v6 + 88);
    v7[4] = v8[2];
    v7[5] = swift_allocateWitnessTablePack();
    v7[6] = v8[3];
    v7[7] = v8[4];
    v7[8] = v5;
    v7[9] = a2;
    v9 = *(v3 + 16);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_181FE4948;
    *(v10 + 24) = v7;
    v12[4] = sub_181FE4FD0;
    v12[5] = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_181D478F8;
    v12[3] = &block_descriptor_93;
    v11 = _Block_copy(v12);

    nw_connection_receive_message(v9, v11);
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181FE1514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void (*a6)(char *, void *), uint64_t a7)
{
  v38 = a7;
  v39 = a6;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83AF70);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v40 = sub_182AD39B8();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = *(a5 + 4);
  v19 = *a5;
  if (a3)
  {
    v36 = a2;
    v20 = qword_1EA837200;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(a3 + 16);
    v22 = nw_content_context_copy_protocol_metadata(v21, *(qword_1EA8433A0 + 32));
    if (v22)
    {
      v35 = v21;
      v23 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v22);
      swift_unknownObjectRelease();
      if (v23)
      {
        type metadata accessor for NWProtocolFramer.Message();
        if (swift_dynamicCastClass())
        {

          sub_182AD1C48();
          swift_allocObject();
          sub_182AD1C38();
          sub_182AD1C18();

          v28 = *(TupleTypeMetadata3 + 48);
          v29 = *(TupleTypeMetadata3 + 64);
          v30 = swift_allocObject();
          *(v30 + 16) = MEMORY[0x1E69E7CC0];
          v31 = (v30 + 16);
          aBlock[4] = sub_181FE5010;
          aBlock[5] = v30;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_181F25CD0;
          aBlock[3] = &block_descriptor_98;
          v32 = _Block_copy(aBlock);

          nw_content_context_foreach_protocol_metadata(v35, v32);
          _Block_release(v32);
          swift_beginAccess();
          v33 = *v31;

          *&v17[v28] = v33;
          v17[v29] = *(a3 + 64);
          (*(*(TupleTypeMetadata3 - 8) + 56))(v17, 0, 1, TupleTypeMetadata3);
          v39(v17, 0);

          return (*(v11 + 8))(v17, v40);
        }
      }
    }
  }

  v24 = v19 | (v18 << 32);
  (*(*(TupleTypeMetadata3 - 8) + 56))(v13, 1, 1, TupleTypeMetadata3, v15);
  sub_181F4B3B8();
  v26 = swift_allocError();
  if (HIDWORD(v24) <= 0xFE)
  {
    *v25 = v19;
    *(v25 + 4) = BYTE4(v24);
  }

  else
  {
    *v25 = 22;
    *(v25 + 4) = 0;
  }

  v39(v13, v26);

  v17 = v13;
  return (*(v11 + 8))(v17, v40);
}

uint64_t sub_181FE1A4C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 72) = *v4;
  *(v5 + 96) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_181FE1AA0, 0, 0);
}

uint64_t sub_181FE1AA0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 40);
  }

  *(v0 + 16) = *(v0 + 96);
  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = *(v0 + 56);

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_181FE1BC8;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t sub_181FE1BC8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FE1D24, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Connection2.send<>(_:metadata:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FE1D60, 0, 0);
}

uint64_t sub_181FE1D60()
{
  *(v0 + 72) = 1;
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  v1 = sub_182AD1C68();
  v3 = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_181FE1EC8;
  v5 = *(v0 + 24);

  return sub_181FE1A4C((v0 + 72), v1, v3, v5);
}

uint64_t sub_181FE1EC8()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FE2004, 0, 0);
  }

  else
  {
    sub_181C1F2E4(v2[5], v2[6]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_181FE2004()
{
  sub_181C1F2E4(v0[5], v0[6]);
  swift_willThrow();
  v1 = v0[1];

  return v1();
}

uint64_t Connection2.send(opcode:content:metadata:isFinal:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void (**a6)(uint64_t a1)@<X8>)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 33) = a5;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *a6 = sub_181FE4478;
  a6[1] = v13;

  return sub_181F49B44(a2, a3);
}

void sub_181FE2124(uint64_t a1, NSObject *a2, unint64_t a3, char a4, int a5, unint64_t a6, uint64_t a7)
{
  v69 = a7;
  v68 = a6;
  LODWORD(v73) = a5;
  v62.isa = a2->isa;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839968);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v57 - v15);
  v71 = sub_182AD2258();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v66 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v57 - v20;
  v22 = *(v13 + 16);
  v74 = a1;
  v57[1] = v13 + 16;
  v57[0] = v22;
  v22(v16, a1, v12, v19);
  v23 = *(v13 + 80);
  v60 = v14;
  v24 = swift_allocObject();
  v25 = *(v13 + 32);
  v67 = v16;
  v72 = v12;
  v61 = v13 + 32;
  v59 = v25;
  v25((v24 + ((v23 + 16) & ~v23)), v16, v12);
  v75 = a2;
  sub_181FDCBFC(sub_181FE46AC, v24, v21);

  v82 = a3;
  LOBYTE(aBlock) = a4;
  type metadata accessor for NWProtocolWebSocket.Metadata();
  swift_allocObject();

  NWProtocolWebSocket.Metadata.init(opcode:)(&aBlock);
  MEMORY[0x1865D9F10]();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v26 = v82;
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v28 = nw_content_context_create("WebSocket");
  *(inited + 16) = v28;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  v29 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v29, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v28, 0.5);
  v30 = v73 & 1;
  *(inited + 64) = v73 & 1;
  nw_content_context_set_is_final(v28, v30);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v26 >> 62)
  {
    v31 = sub_182AD3EB8();
    if (!v31)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_12;
    }
  }

  if (v31 < 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v31; ++i)
    {
      v33 = MEMORY[0x1865DA790](i, v26);
      nw_content_context_set_metadata_for_protocol(v28, *(v33 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v34 = (v26 + 32);
    do
    {
      v35 = *v34++;
      nw_content_context_set_metadata_for_protocol(v28, *(v35 + 16));
      --v31;
    }

    while (v31);
  }

LABEL_12:
  isa = v75[2].isa;
  if (isa)
  {
    v73 = v21;

    sub_182AD1C98();
    swift_allocObject();
    sub_182AD1C88();
    aBlock = v68;
    v77 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FD0);
    sub_181F9AC34();
    v69 = sub_182AD1C68();
    v68 = v37;

    v38 = v70;
    v39 = v71;
    (*(v70 + 16))(v66, v73, v71);
    v40 = v72;
    (v57[0])(v67, v74, v72);
    v41 = (*(v38 + 80) + 64) & ~*(v38 + 80);
    v42 = (v58 + v23 + v41) & ~v23;
    v43 = swift_allocObject();
    v65 = isa;
    v44 = v43;
    v45 = v62.isa;
    *(v43 + 2) = *(v62.isa + 10);
    *(v43 + 3) = *(v45 + 11);
    *(v43 + 4) = swift_allocateMetadataPack();
    *(v44 + 5) = *(v45 + 13);
    v46 = v39;
    WitnessTablePack = swift_allocateWitnessTablePack();
    v48 = v75;
    *(v44 + 6) = WitnessTablePack;
    *(v44 + 7) = v48;
    (*(v38 + 32))(&v44[v41], v66, v39);
    v59(&v44[v42], v67, v40);
    v67 = *(v65 + 16);

    v49 = v69;
    v50 = v68;
    v51 = sub_182AD2138();
    v75 = NWCreateDispatchDataFromNSData(v51, v52);

    v53 = swift_allocObject();
    *(v53 + 16) = sub_181FE4720;
    *(v53 + 24) = v44;
    v80 = sub_181FE5014;
    v81 = v53;
    aBlock = MEMORY[0x1E69E9820];
    v77 = 1107296256;
    v78 = sub_181AA4EBC;
    v79 = &block_descriptor_66;
    v54 = _Block_copy(&aBlock);

    v55 = v75;
    nw_connection_send(v67, v75, v28, 1, v54);

    sub_181C1F2E4(v49, v50);
    _Block_release(v54);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();

    v56 = v73;
    sub_182AD3568();
    (*(v38 + 8))(v56, v46);
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_181FE29EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839968);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  LODWORD(v4) = *a1;
  v8 = *(a1 + 4);
  v7[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  sub_182AD3588();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Connection2.send<>(_:metadata:isFinal:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (**a4)(uint64_t a1)@<X8>)
{
  v11 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  v7 = sub_182AD1C68();
  v9 = v8;

  Connection2.send(opcode:content:metadata:isFinal:)(&v11, v7, v9, a2, a3 & 1, a4);
  return sub_181C1F2E4(v7, v9);
}

uint64_t sub_181FE2BEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839968);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  v6 = 64;
  v5[2] = 22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  sub_182AD3588();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Connection2.ping<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 4;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_181FE2DAC;

  return sub_181FE1A4C((v3 + 32), a1, a2, a3);
}

uint64_t sub_181FE2DAC()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FE2EE0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Connection2.pong<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 5;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_181FE2FBC;

  return sub_181FE1A4C((v3 + 32), a1, a2, a3);
}

uint64_t sub_181FE2FBC()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FE4FD8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Connection2.close<>(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 72) = *a1;
  *(v5 + 74) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_181FE3124, 0, 0);
}

uint64_t sub_181FE3124()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v9 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 26) = v1;
  *(v5 + 32) = v9;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_181FE324C;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001CLL, 0x8000000182BD74E0, sub_181FE448C, v5, v7);
}

uint64_t sub_181FE324C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_181FE3368;
  }

  else
  {

    v2 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FE3368()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_181FE33CC(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v46 = a6;
  v44 = a1;
  v10 = HIWORD(a3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v41 - v13;
  v48 = a2;
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v14 = swift_allocObject();
  *(v14 + 24) = 3;
  *(v14 + 40) = 4;
  *(v14 + 42) = 0;
  *(v14 + 32) = 0;

  metadata = nw_ws_create_metadata(nw_ws_opcode_close);
  *(v14 + 16) = metadata;
  swift_beginAccess();
  *(v14 + 40) = a3;
  *(v14 + 42) = v10;
  if (BYTE2(a3))
  {
    v16 = a3;
  }

  else
  {
    v16 = dword_182AEE674[a3];
  }

  nw_ws_metadata_set_close_code(metadata, v16);

  MEMORY[0x1865D9F10](v17);
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v18 = v48;
  v45 = v11;
  if (a5)
  {

    a5 = sub_181F76154(a4, a5);
    v42 = v19;
  }

  else
  {
    v42 = 0xF000000000000000;
  }

  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v21 = nw_content_context_create("WebSocket");
  *(inited + 16) = v21;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  v22 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v22, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v21, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v21, 0);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v18 >> 62)
  {
    v23 = sub_182AD3EB8();
    if (!v23)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_18;
    }
  }

  if (v23 < 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v23; ++i)
    {
      v25 = MEMORY[0x1865DA790](i, v18);
      nw_content_context_set_metadata_for_protocol(v21, *(v25 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v26 = (v18 + 32);
    do
    {
      v27 = *v26++;
      nw_content_context_set_metadata_for_protocol(v21, *(v27 + 16));
      --v23;
    }

    while (v23);
  }

LABEL_18:
  v41 = v14;
  v28 = *(v46 + 16);
  if (!v28)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v29 = a5;

  v30 = v43;
  v31 = v45;
  (*(v12 + 16))(v43, v44, v45);
  v32 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v33 = swift_allocObject();
  (*(v12 + 32))(v33 + v32, v30, v31);
  v35 = *(v28 + 16);
  v36 = v42;
  if (v42 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_182AD2138();
  }

  v38 = NWCreateDispatchDataFromNSData(v37, v34);

  v39 = swift_allocObject();
  *(v39 + 16) = sub_181FE4630;
  *(v39 + 24) = v33;
  aBlock[4] = sub_181BEBE54;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181AA4EBC;
  aBlock[3] = &block_descriptor_53;
  v40 = _Block_copy(aBlock);

  nw_connection_send(v35, v38, v21, 1, v40);

  sub_181D9D680(v29, v36);

  _Block_release(v40);
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
}

uint64_t sub_181FE38D0(unsigned int *a1)
{
  if (*(a1 + 4) == 255)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
    return sub_182AD34C8();
  }

  else
  {
    v2 = *a1 | (*(a1 + 4) << 32);
    sub_181F4B3B8();
    swift_allocError();
    *v3 = v2;
    *(v3 + 4) = BYTE4(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
    return sub_182AD34B8();
  }
}

uint64_t Connection2.receive<>()()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839960);
  type metadata accessor for AsyncSequenceReceive();
  v1 = sub_182185454(sub_181FE44A8, v0);

  return v1;
}

uint64_t sub_181FE3A8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v7 = *(v3 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_181FE45DC;
    *(v8 + 24) = v6;
    v10[4] = sub_181D47AA0;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_181D478F8;
    v10[3] = &block_descriptor_11;
    v9 = _Block_copy(v10);

    nw_connection_receive_message(v7, v9);
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_181FE3BB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void (*a6)(uint64_t *, uint64_t))
{
  v7 = *a5 | (*(a5 + 4) << 32);
  if (!a3)
  {
    if (HIDWORD(v7) <= 0xFE)
    {
      aBlock = 0;
      v32 = 0;
      v33 = 0;
      v34 = 1;
      LOBYTE(v35) = 0;
      sub_181F4B3B8();
      v22 = swift_allocError();
      *v23 = v7;
      *(v23 + 4) = BYTE4(v7);
      a6(&aBlock, v22);
      v24 = v22;
LABEL_18:

      return;
    }

    aBlock = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    LOBYTE(v35) = 0;
    sub_181F4B3B8();
    v20 = swift_allocError();
    *v21 = 22;
    *(v21 + 4) = 0;
    a6(&aBlock, v20);
LABEL_16:
    v24 = v20;
    goto LABEL_18;
  }

  v11 = qword_1EA837040;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = *(a3 + 16);
  v13 = nw_content_context_copy_protocol_metadata(v12, *(off_1EA838800 + 4));
  if (!v13 || (v14 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v13), swift_unknownObjectRelease(), !v14))
  {
LABEL_14:
    if (HIDWORD(v7) <= 0xFE)
    {
      aBlock = 0;
      v32 = 0;
      v33 = 0;
      v34 = 1;
      LOBYTE(v35) = 0;
      sub_181F4B3B8();
      v26 = swift_allocError();
      *v27 = v7;
      *(v27 + 4) = BYTE4(v7);
      a6(&aBlock, v26);

      v24 = v26;
      goto LABEL_18;
    }

    aBlock = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    LOBYTE(v35) = 0;
    sub_181F4B3B8();
    v20 = swift_allocError();
    *v25 = 22;
    *(v25 + 4) = 0;
    a6(&aBlock, v20);

    goto LABEL_16;
  }

  type metadata accessor for NWProtocolWebSocket.Metadata();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    goto LABEL_14;
  }

  if (a2 >> 60 == 15)
  {
    a1 = 0;
    a2 = 0xC000000000000000;
  }

  v30 = *(v15 + 24);
  swift_beginAccess();
  v29 = *(a3 + 64);
  v16 = swift_allocObject();
  v28 = a6;
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v17 = (v16 + 16);
  v35 = sub_181F25E08;
  v36 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_181F25CD0;
  v34 = &block_descriptor_44;
  v18 = _Block_copy(&aBlock);

  nw_content_context_foreach_protocol_metadata(v12, v18);
  _Block_release(v18);
  swift_beginAccess();
  v19 = *v17;

  sub_181F49B58(a1, a2);
  sub_181F49B58(a1, a2);

  sub_181C1F2E4(a1, a2);

  aBlock = v30;
  v32 = a1;
  v33 = a2;
  v34 = v19;
  LOBYTE(v35) = v29;
  v28(&aBlock, 0);

  sub_181FE45E4(aBlock, v32, v33, v34);
}

uint64_t sub_181FE3FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2[3] = MEMORY[0x1E69E7CC8];
  v10 = NWEndpoint.nw.getter();
  if (v10)
  {
    v11 = v10;
    if (nw_endpoint_get_type(v10) == nw_endpoint_type_url)
    {
      swift_beginAccess();
      v12 = *(*(a2 + 16) + 16);

      os_unfair_lock_lock((v12 + 24));
      v13 = *(v12 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v12 + 24));

      nw_parameters_set_url_endpoint(v13, v11);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_181FE4EE0(a1, v9);
  swift_beginAccess();
  v14 = *(a2 + 16);
  type metadata accessor for NWConnection(0);
  swift_allocObject();

  v15 = sub_181E60914(v9, v14);

  v3[2] = v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v6[10];
  v17[3] = v6[11];
  v17[4] = swift_allocateMetadataPack();
  v17[5] = v6[13];
  v17[6] = swift_allocateWitnessTablePack();
  v17[7] = v16;

  sub_181AA39C0(sub_181FE4F44);
  NWConnection.stateUpdateHandler.setter(sub_181FE4F44, v17);

  if (v3[2])
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    NWConnection.start(queue:)(qword_1EA8433A8);
    sub_181FDAD5C(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181FE4274(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1E69E7CC8];
  v1[2] = a1;
  v1[3] = v3;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v2[10];
  v5[3] = v2[11];
  v5[4] = swift_allocateMetadataPack();
  v5[5] = v2[13];
  v5[6] = swift_allocateWitnessTablePack();
  v5[7] = v4;
  swift_retain_n();

  sub_181AA39C0(sub_181FE4E50);
  NWConnection.stateUpdateHandler.setter(sub_181FE4E50, v5);

  if (v1[2])
  {
    v7 = qword_1EA837208;

    if (v7 != -1)
    {
      swift_once();
    }

    NWConnection.start(queue:)(qword_1EA8433A8);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181FE44B8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_181FE45E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_181C1F2E4(a2, a3);
  }

  return result;
}

uint64_t sub_181FE4630(unsigned int *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);

  return sub_181FE38D0(a1);
}

uint64_t sub_181FE4720(unsigned int *a1)
{
  v3 = *(sub_182AD2258() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  return sub_181FDE8D0(a1, *(v1 + 56), v1 + v4);
}

uint64_t sub_181FE47F8()
{
  v1 = *(sub_182AD2258() - 8);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_181FDD500(v2, v3);
}

unint64_t sub_181FE485C()
{
  result = qword_1ED40F4B0;
  if (!qword_1ED40F4B0)
  {
    sub_182AD27A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F4B0);
  }

  return result;
}

uint64_t sub_181FE48B4()
{
  v1 = *(sub_182AD2258() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v0 + 56);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_181FDD06C(v3, v0 + v2, v5, v6);
}

uint64_t sub_181FE4984(unsigned int *a1)
{
  v3 = *(sub_182AD2258() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  return sub_181FDE8D0(a1, *(v1 + 64), v1 + v4);
}

uint64_t sub_181FE4A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  return v5(v7, a4);
}

uint64_t sub_181FE4AA4(unsigned int *a1)
{
  v3 = *(sub_182AD2258() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  return sub_181FDE8D0(a1, *(v1 + 40), v1 + v4);
}

uint64_t objectdestroy_58Tm()
{
  v1 = sub_182AD2258();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_181FE4CD8(unsigned int *a1)
{
  v3 = *(sub_182AD2258() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839970);
  v5 = *(v1 + 56);

  return sub_181FDE8D0(a1, v5, v1 + v4);
}

uint64_t objectdestroy_46Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_181FE4E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_181FE4EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OutputHarnessProtocol.addInputHandler(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5AA0);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  v9 = *(v2 + 32);
  *(v2 + 32) = v6;
  sub_181F68EA8(v4, v5, v6);
  sub_181F68E5C(v7, v8, v9);
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
}

uint64_t InputHarnessProtocol.getParameters()@<X0>(void *a1@<X8>)
{
  sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD5A10, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 56), sizeof(__dst));
  memcpy(__src, (v1 + 56), 0x188uLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x188uLL);
  return sub_181F481DC(__dst, &v4);
}

void *InputHarnessProtocol.getRemoteEndpoint()()
{
  sub_181FE6300(0xD000000000000020, 0x8000000182BD5A30, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *InputHarnessProtocol.getLocalEndpoint()()
{
  sub_181FE6300(0xD00000000000001FLL, 0x8000000182BD5A60, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t InputHarnessProtocol.getPath()@<X0>(void *a1@<X8>)
{
  sub_181FE6300(0xD000000000000015, 0x8000000182BD5A80, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 448), 0x17AuLL);
  memcpy(__src, (v1 + 448), 0x17AuLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x17AuLL);
  return sub_181A3DF5C(__dst, v4);
}

void InputHarnessProtocol.connected(_:)()
{
  sub_181FE6300(0xD000000000000012, 0x8000000182BD5850, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 832);
  if (v1)
  {

    v1(1);
    sub_181A554F4(v1);
    v2 = *(v0 + 832);
    *(v0 + 832) = 0;
    *(v0 + 840) = 0;

    sub_181A554F4(v2);
  }
}

void InputHarnessProtocol.disconnected(_:)()
{
  sub_181FE6300(0xD000000000000015, 0x8000000182BD5B00, MEMORY[0x1E69E9438]);
  v1 = v0[104];
  if (v1)
  {

    v1(0);
    sub_181A554F4(v1);
    v2 = v0[104];
    v0[104] = 0;
    v0[105] = 0;
    sub_181A554F4(v2);
  }

  v3 = v0[106];
  if (v3)
  {

    v3(0);
    sub_181A554F4(v3);
    v4 = v0[106];
    v0[106] = 0;
    v0[107] = 0;

    sub_181A554F4(v4);
  }
}

void InputHarnessProtocol.inputAvailable(_:)()
{
  sub_181FE6300(0xD000000000000018, 0x8000000182BD5890, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 848);
  if (v1)
  {

    v1(1);
    sub_181A554F4(v1);
    v2 = *(v0 + 848);
    *(v0 + 848) = 0;
    *(v0 + 856) = 0;

    sub_181A554F4(v2);
  }
}

uint64_t OutputHarnessProtocol.connect(_:)()
{
  sub_181FE8374(0xD000000000000010, 0x8000000182BD5810);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v4 = v0;
  v5 = 0;
  v6 = 5;
  sub_181F68EA8(v7, v1, v2);

  InputHandlerLinkage.invokeConnected(_:)(&v4);
  sub_181F68E5C(v4, v5, v6);
  sub_181F68E5C(v7, v8, v9);
  return 1;
}

void OutputHarnessProtocol.disconnect(_:)()
{
  sub_181FE8374(0xD000000000000013, 0x8000000182BD5830);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = v0;
  v4 = 0;
  v5 = 5;
  sub_181F68EA8(v6, v1, v2);

  InputHandlerLinkage.invokeDisconnected(_:)(&v3);
  sub_181F68E5C(v3, v4, v5);
  sub_181F68E5C(v6, v7, v8);
}

void OutputHarnessProtocol.getMessageProperties(_:)(uint64_t a1@<X8>)
{
  *(a1 + 6) = 0;
  *a1 = 0;
  *(a1 + 4) = 2;
}

void OutputHarnessProtocol.getInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(uint64_t a1@<X8>)
{
  sub_181FE8374(0xD000000000000019, 0x8000000182BD5930);
  v3 = *(v1 + 48);
  if (*(v1 + 64))
  {
    sub_181F73CAC(&v13);
LABEL_5:
    v6 = v25;
    *(a1 + 192) = v24;
    *(a1 + 208) = v6;
    *(a1 + 224) = v26;
    v7 = v21;
    *(a1 + 128) = v20;
    *(a1 + 144) = v7;
    v8 = v23;
    *(a1 + 160) = v22;
    *(a1 + 176) = v8;
    v9 = *&v17[16];
    *(a1 + 64) = *v17;
    *(a1 + 80) = v9;
    v10 = v19;
    *(a1 + 96) = v18;
    *(a1 + 112) = v10;
    v11 = v14;
    *a1 = v13;
    *(a1 + 16) = v11;
    v12 = v16;
    *(a1 + 32) = v15;
    *(a1 + 48) = v12;
    return;
  }

  if (v3)
  {
    v4 = *(v1 + 56) - v3;
    v5 = Frame.bufferLength.getter();
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 1;
    *&v13 = v3;
    *(&v13 + 1) = v4;
    *&v14 = 0;
    BYTE8(v14) = 0;
    v15 = xmmword_182AE69F0;
    LOBYTE(v16) = 2;
    *(&v16 + 1) = 0;
    *v17 = 0;
    *&v17[8] = v5;
    v17[24] = 0;
    *&v20 = 0;
    v18 = 0u;
    v19 = 0u;
    DWORD2(v20) = 2;
    BYTE12(v20) = 1;
    v21 = 0uLL;
    LOBYTE(v22) = 1;
    *(&v22 + 1) = 0;
    v23 = 0uLL;
    LOBYTE(v24) = 0;
    *(&v24 + 1) = 1;
    *(&v24 + 1) = 0;
    LOBYTE(v25) = -1;
    *(&v25 + 1) = 0;
    v26 = 0;
    nullsub_41(&v13);
    goto LABEL_5;
  }

  __break(1u);
}

__n128 OutputHarnessProtocol.getOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)@<Q0>(int64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5990);
  swift_beginAccess();
  if (*(v2 + 88) >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v2 + 88);
  }

  Frame.init(capacity:)(v5, v13);
  *(&v14 + 1) = 0;
  v15 = 0;
  nullsub_41(v13);
  v6 = v14;
  *(a2 + 192) = v13[12];
  *(a2 + 208) = v6;
  *(a2 + 224) = v15;
  v7 = v13[9];
  *(a2 + 128) = v13[8];
  *(a2 + 144) = v7;
  v8 = v13[11];
  *(a2 + 160) = v13[10];
  *(a2 + 176) = v8;
  v9 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v9;
  v10 = v13[7];
  *(a2 + 96) = v13[6];
  *(a2 + 112) = v10;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  result = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t OutputHarnessProtocol.finalizeOutputFrames(_:frames:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v4 = a2[11];
  v38 = a2[10];
  v39 = v4;
  v40 = a2[12];
  v5 = a2[7];
  v34 = a2[6];
  v35 = v5;
  v6 = a2[9];
  v36 = a2[8];
  v37 = v6;
  v7 = a2[3];
  v30 = a2[2];
  v31 = v7;
  v8 = a2[5];
  v32 = a2[4];
  v33 = v8;
  v9 = a2[1];
  v28 = *a2;
  v29 = v9;
  v10 = *(a2 + 27);
  v11 = *(a2 + 224);
  v41 = *(a2 + 26);
  v42 = v10;
  v43 = v11;
  sub_181FE8374(0xD00000000000001FLL, 0x8000000182BD59F0);
  if ((v11 & 1) != 0 || (sub_181FE8904(&v28, v2) & 1) == 0)
  {
LABEL_11:
  }

  else if (v10)
  {
    v12 = v10[4];
    v13 = v10[3] + v12;
    if (v10[2] < v13)
    {
      v13 = v10[2];
    }

    v26 = v10[4];
    v27 = v13;

    v15 = v10;
    while (1)
    {
      if (v12 == v27)
      {
        if ((sub_181AC81FC(v14) & 1) == 0)
        {
LABEL_18:

          goto LABEL_11;
        }

        v15 = v10;
        v12 = v26;
      }

      v16 = v12 + 1;
      v26 = v12 + 1;
      v17 = v15[v12 + 5];
      swift_beginAccess();

      v18 = sub_181FE8904(v17 + 16, v3);
      swift_endAccess();

      v12 = v16;
      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = v28;
  v20 = v29;
  v21 = BYTE8(v29);
  v22 = v30;
  if (v31 == 2 && v30 == 0)
  {
    if ((v38 & 1) == 0)
    {
      if (v37)
      {
        MEMORY[0x1865DF520](v37, -1, -1);
      }
    }

    sub_181F68EF4(v19, *(&v19 + 1), v20, v21);

    return 1;
  }

  else
  {
    v24 = *(&v30 + 1);
    v25 = v31;
    sub_181F68EF4(v28, *(&v28 + 1), v29, BYTE8(v29));

    result = sub_181F68F3C(v22, v24, v25);
    __break(1u);
  }

  return result;
}

BOOL ListenerHarnessProtocol.handleNewFlow(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  sub_181FE8FF4(0xD000000000000011, 0x8000000182BD75D0, MEMORY[0x1E69E9438]);
  v6 = v1[4];
  v7 = v2[5];
  memcpy(__dst, v2 + 6, sizeof(__dst));
  memcpy(v34, v2 + 55, 0x17AuLL);
  type metadata accessor for InputHarnessProtocol();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 6;
  *(v8 + 832) = 0u;
  *(v8 + 848) = 0u;
  *(v8 + 864) = 0x61487475706E495BLL;
  *(v8 + 872) = 0xEF5D3A7373656E72;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  memcpy((v8 + 56), v2 + 6, 0x188uLL);
  memcpy((v8 + 448), v2 + 55, 0x17AuLL);
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v25 = v8;
  v26 = 0;
  v27 = 5;
  v9 = v6;
  v10 = v7;
  v11 = v9;
  v12 = v10;

  sub_181F481DC(__dst, v24);
  sub_181A3DF5C(v34, v24);
  OutputHandlerLinkage.invokeAddInputHandler(_:)(&v25, v31);
  sub_181F68E5C(v25, v26, v27);
  v13 = v32;
  if (v32 == 255)
  {
    v22 = MEMORY[0x1E69E9440];
    sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD75F0, MEMORY[0x1E69E9440]);

    sub_181FE8FF4(0xD000000000000019, 0x8000000182BD7610, v22);
  }

  else
  {
    v15 = v31[0];
    v14 = v31[1];

    v16 = *(v8 + 16);
    v17 = *(v8 + 24);
    *(v8 + 16) = v15;
    *(v8 + 24) = v14;
    v18 = *(v8 + 32);
    *(v8 + 32) = v13;
    sub_181F68EA8(v15, v14, v13);
    sub_181F68E5C(v16, v17, v18);
    sub_181F3D4C0(v15, v14, v13);
    swift_beginAccess();

    MEMORY[0x1865D9F10](v19);
    if (*((v2[109] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[109] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    swift_endAccess();
    v20 = v2[105];
    if (v20)
    {

      v20(1);

      sub_181A554F4(v20);
      v21 = v2[105];
      v2[105] = 0;
      v2[106] = 0;
      sub_181A554F4(v21);
    }

    else
    {
    }
  }

  return v13 != 255;
}

uint64_t ListenerHarnessProtocol.getParameters()@<X0>(void *a1@<X8>)
{
  sub_181FE8FF4(0xD00000000000001BLL, 0x8000000182BD5A10, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  memcpy(__src, (v1 + 48), 0x188uLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x188uLL);
  return sub_181F481DC(__dst, &v4);
}

void *ListenerHarnessProtocol.getRemoteEndpoint()()
{
  sub_181FE8FF4(0xD000000000000020, 0x8000000182BD5A30, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *ListenerHarnessProtocol.getLocalEndpoint()()
{
  sub_181FE8FF4(0xD00000000000001FLL, 0x8000000182BD5A60, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ListenerHarnessProtocol.getPath()@<X0>(void *a1@<X8>)
{
  sub_181FE8FF4(0xD000000000000015, 0x8000000182BD5A80, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 440), 0x17AuLL);
  memcpy(__src, (v1 + 440), 0x17AuLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x17AuLL);
  return sub_181A3DF5C(__dst, v4);
}

void ListenerHarnessProtocol.connected(_:)()
{
  sub_181FE8FF4(0xD000000000000012, 0x8000000182BD5850, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 824);
  if (v1)
  {

    v1(1);
    sub_181A554F4(v1);
    v2 = *(v0 + 824);
    *(v0 + 824) = 0;
    *(v0 + 832) = 0;

    sub_181A554F4(v2);
  }
}

void ListenerHarnessProtocol.disconnected(_:)()
{
  sub_181FE8FF4(0xD000000000000015, 0x8000000182BD5B00, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 824);
  if (v1)
  {

    v1(0);
    sub_181A554F4(v1);
    v2 = *(v0 + 824);
    *(v0 + 824) = 0;
    *(v0 + 832) = 0;

    sub_181A554F4(v2);
  }
}

void sub_181FE6300(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = *(v3 + 864);
  v8 = *(v3 + 872);
  if (qword_1EA8371A0 != -1)
  {
    swift_once();
  }

  v9 = sub_182AD2698();
  __swift_project_value_buffer(v9, qword_1EA843348);

  oslog = sub_182AD2678();
  v10 = a3();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    v13 = sub_181C64FFC(v7, v8, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_181C64FFC(a1, a2, &v15);
    _os_log_impl(&dword_181A37000, oslog, v10, "%s %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v12, -1, -1);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t InputHarnessProtocol.__allocating_init(identifier:local:remote:parameters:path:outputHandler:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 6;
  *(v15 + 832) = 0u;
  *(v15 + 848) = 0u;
  sub_182AD3BA8();

  strcpy(v31, "[InputHarness:");
  HIBYTE(v31[1]) = -18;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v16 = v31[1];
  *(v15 + 864) = v31[0];
  *(v15 + 872) = v16;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  memcpy((v15 + 56), a5, 0x188uLL);
  memcpy((v15 + 448), a6, 0x17AuLL);
  ObjectType = swift_getObjectType();
  v28 = v15;
  v29 = 0;
  v30 = 5;
  v18 = *(a8 + 16);
  v19 = a3;
  v20 = a4;

  v18(v31, &v28, ObjectType, a8);
  sub_181F68E5C(v28, v29, v30);
  v21 = v32;
  if (v32 == 255)
  {
    sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD75F0, MEMORY[0x1E69E9440]);

    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
    v23 = v31[0];
    v22 = v31[1];
    swift_unknownObjectRelease();

    v24 = *(v15 + 16);
    v25 = *(v15 + 24);
    *(v15 + 16) = v23;
    *(v15 + 24) = v22;
    v26 = *(v15 + 32);
    *(v15 + 32) = v21;
    sub_181F68EA8(v23, v22, v21);
    sub_181F68E5C(v24, v25, v26);
    sub_181F3D4C0(v23, v22, v21);
  }

  return v15;
}

uint64_t InputHarnessProtocol.init(identifier:local:remote:parameters:path:outputHandler:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 6;
  *(v8 + 832) = 0u;
  *(v8 + 848) = 0u;
  sub_182AD3BA8();

  strcpy(v32, "[InputHarness:");
  HIBYTE(v32[1]) = -18;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v17 = v32[1];
  *(v8 + 864) = v32[0];
  *(v8 + 872) = v17;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  memcpy((v8 + 56), a5, 0x188uLL);
  memcpy((v8 + 448), a6, 0x17AuLL);
  ObjectType = swift_getObjectType();
  v29 = v8;
  v30 = 0;
  v31 = 5;
  v19 = *(a8 + 16);
  v20 = a3;
  v21 = a4;

  v19(v32, &v29, ObjectType, a8);
  sub_181F68E5C(v29, v30, v31);
  v22 = v33;
  if (v33 == 255)
  {
    sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD75F0, MEMORY[0x1E69E9440]);

    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
    v24 = v32[0];
    v23 = v32[1];
    swift_unknownObjectRelease();

    v25 = *(v9 + 16);
    v26 = *(v9 + 24);
    *(v9 + 16) = v24;
    *(v9 + 24) = v23;
    v27 = *(v9 + 32);
    *(v9 + 32) = v22;
    sub_181F68EA8(v24, v23, v22);
    sub_181F68E5C(v25, v26, v27);
    sub_181F3D4C0(v24, v23, v22);
  }

  return v9;
}

uint64_t InputHarnessProtocol.__allocating_init(identifier:local:remote:parameters:path:outputLinkage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v14 = *a7;
  v15 = *(a7 + 8);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 6;
  *(v13 + 832) = 0u;
  *(v13 + 848) = 0u;
  LOBYTE(a7) = *(a7 + 16);
  sub_182AD3BA8();

  strcpy(v33, "[InputHarness:");
  HIBYTE(v33[1]) = -18;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v16 = v33[1];
  *(v13 + 864) = v33[0];
  *(v13 + 872) = v16;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  memcpy((v13 + 56), a5, 0x188uLL);
  memcpy((v13 + 448), a6, 0x17AuLL);
  v30 = v14;
  v31 = v15;
  v32 = a7;
  v27 = v13;
  v28 = 0;
  v29 = 5;
  v17 = a3;
  v18 = a4;

  OutputHandlerLinkage.invokeAddInputHandler(_:)(&v27, v33);
  sub_181F68E5C(v27, v28, v29);
  sub_181F68E5C(v14, v15, a7);
  v19 = v34;
  if (v34 == 255)
  {
    sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD75F0, MEMORY[0x1E69E9440]);

    return 0;
  }

  else
  {
    v21 = v33[0];
    v20 = v33[1];

    v22 = *(v13 + 16);
    v23 = *(v13 + 24);
    *(v13 + 16) = v21;
    *(v13 + 24) = v20;
    v24 = *(v13 + 32);
    *(v13 + 32) = v19;
    sub_181F68EA8(v21, v20, v19);
    sub_181F68E5C(v22, v23, v24);
    sub_181F3D4C0(v21, v20, v19);
  }

  return v13;
}

uint64_t InputHarnessProtocol.init(identifier:local:remote:parameters:path:outputLinkage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t a7)
{
  v8 = v7;
  v14 = *a7;
  v15 = *(a7 + 8);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 6;
  *(v7 + 832) = 0u;
  *(v7 + 848) = 0u;
  v16 = *(a7 + 16);
  sub_182AD3BA8();

  strcpy(v34, "[InputHarness:");
  HIBYTE(v34[1]) = -18;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v17 = v34[1];
  *(v7 + 864) = v34[0];
  *(v7 + 872) = v17;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  memcpy((v7 + 56), a5, 0x188uLL);
  memcpy((v7 + 448), a6, 0x17AuLL);
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v28 = v7;
  v29 = 0;
  v30 = 5;
  v18 = a3;
  v19 = a4;

  OutputHandlerLinkage.invokeAddInputHandler(_:)(&v28, v34);
  sub_181F68E5C(v28, v29, v30);
  sub_181F68E5C(v14, v15, v16);
  v20 = v35;
  if (v35 == 255)
  {
    sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD75F0, MEMORY[0x1E69E9440]);

    return 0;
  }

  else
  {
    v22 = v34[0];
    v21 = v34[1];

    v23 = *(v8 + 16);
    v24 = *(v8 + 24);
    *(v8 + 16) = v22;
    *(v8 + 24) = v21;
    v25 = *(v8 + 32);
    *(v8 + 32) = v20;
    sub_181F68EA8(v22, v21, v20);
    sub_181F68E5C(v23, v24, v25);
    sub_181F3D4C0(v22, v21, v20);
  }

  return v8;
}

uint64_t InputHarnessProtocol.start(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 832);
  *(v2 + 832) = a1;
  *(v2 + 840) = a2;
  sub_181A554F4(v3);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v11 = *(v2 + 16);
  v12 = v4;
  v13 = v5;
  v8 = v2;
  v9 = 0;
  v10 = 5;

  sub_181F68EA8(v11, v4, v5);

  v6 = OutputHandlerLinkage.invokeConnect(_:)(&v8);
  sub_181F68E5C(v8, v9, v10);
  sub_181F68E5C(v11, v12, v13);
  return v6 & 1;
}

Swift::Void __swiftcall InputHarnessProtocol.stop()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = v1;
  v7 = v2;
  v4 = 5;
  sub_181F68EA8(v5, v1, v2);

  OutputHandlerLinkage.invokeDisconnect(_:)(v3);
  sub_181F68E5C(v3[0], v3[1], v4);
  sub_181F68E5C(v5, v6, v7);
}

Swift::Void __swiftcall InputHarnessProtocol.teardown()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = v1;
  v10 = v2;
  v7 = 5;
  sub_181F68EA8(v8, v1, v2);

  OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(v6, 1);
  sub_181F68E5C(v6[0], v6[1], v7);
  sub_181F68E5C(v8, v9, v10);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v5 = *(v0 + 32);
  *(v0 + 32) = 6;
  sub_181F68E5C(v3, v4, v5);
}

Swift::Bool __swiftcall InputHarnessProtocol.write(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v47 - v5;
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  *&v69 = v7;
  *(&v69 + 1) = v8;
  LOBYTE(v70) = v9;
  v48 = v2;
  LOBYTE(v49) = 5;
  v10 = *(a1._rawValue + 2);

  sub_181F68EA8(v7, v8, v9);
  OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(&v48, v10, v10, 1uLL, v84);
  sub_181F68E5C(v69, *(&v69 + 1), v70);
  if (sub_181F3D1E4(v84) != 1)
  {
    v81 = v84[12];
    v82 = v85;
    v83 = v86;
    v77 = v84[8];
    v78 = v84[9];
    v79 = v84[10];
    v80 = v84[11];
    v73 = v84[4];
    v74 = v84[5];
    v75 = v84[6];
    v76 = v84[7];
    v69 = v84[0];
    v70 = v84[1];
    v71 = v84[2];
    v72 = v84[3];
    if (v86)
    {
      goto LABEL_43;
    }

    v12 = sub_181FE74FC(&v69, a1._rawValue);
    if ((v12 & 1) == 0 || !*(&v85 + 1))
    {
      goto LABEL_43;
    }

    v13 = *(*(&v85 + 1) + 32);
    v14 = *(*(&v85 + 1) + 24) + v13;
    if (*(*(&v85 + 1) + 16) < v14)
    {
      v14 = *(*(&v85 + 1) + 16);
    }

    v66 = *(&v85 + 1);
    v67 = v13;
    v68 = v14;
    if (v13 == v14)
    {
      if ((sub_181AC81FC(v12) & 1) == 0)
      {

LABEL_42:

LABEL_43:
        v43 = *(v2 + 24);
        v44 = *(v2 + 32);
        *&v48 = *(v2 + 16);
        *(&v48 + 1) = v43;
        LOBYTE(v49) = v44;
        v66 = v2;
        v67 = 0;
        LOBYTE(v68) = 5;
        sub_181F68EA8(v48, v43, v44);
        v11 = OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(&v66, &v69);
        sub_181F68E5C(v48, *(&v48 + 1), v49);

        goto LABEL_44;
      }

      v15 = v66;
      v13 = v67;
    }

    else
    {
      v15 = *(&v85 + 1);
    }

    v47[1] = v15;
    v16 = *(v15 + 8 * v13 + 40);
    swift_beginAccess();
    if (*(v16 + 40) == 2)
    {
      v17 = swift_projectBox();
      sub_181FD804C(v17, v6);
      v18 = sub_182AD2868();
      v19 = *(*(v18 - 8) + 8);
      swift_retain_n();

      v19(v6, v18);
      sub_1822AE0A0(v16 + 16, 1, a1._rawValue, &v64);
      v20 = v64;
      v21 = v65;
LABEL_39:
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      strcpy(&v48, "Write result: ");
      HIBYTE(v48) = -18;
      v64 = v20;
      v65 = v21;
      v42 = SerializationResult.description.getter();
      MEMORY[0x1865D9CA0](v42);

      sub_181FE6300(v48, *(&v48 + 1), MEMORY[0x1E69E9438]);

      Frame.collapse()();
      if (!Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(v10, 0, 1))
      {
        sub_181FE6300(0xD000000000000011, 0x8000000182BD7650, MEMORY[0x1E69E9440]);
      }

      swift_endAccess();

      goto LABEL_42;
    }

    v22 = *(v16 + 32);
    v48 = *(v16 + 16);
    v49 = v22;
    v50 = *(v16 + 48);
    v23 = *(v16 + 64);
    v24 = *(v16 + 72);
    v63 = *(v16 + 224);
    v25 = *(v16 + 80);
    v26 = *(v16 + 88);
    v27 = *(v16 + 208);
    v61 = *(v16 + 192);
    v62 = v27;
    v28 = *(v16 + 144);
    v57 = *(v16 + 128);
    v58 = v28;
    v29 = *(v16 + 176);
    v59 = *(v16 + 160);
    v60 = v29;
    v30 = *(v16 + 112);
    v55 = *(v16 + 96);
    v56 = v30;
    v51 = v23;
    v52 = v24;
    v53 = v25;
    v54 = v26;
    swift_retain_n();

    v31 = Frame.unclaimedBytes.getter();
    if (v33)
    {

LABEL_38:
      v20 = 2;
      v64 = 2;
      v21 = 1;
      goto LABEL_39;
    }

    if (*(v16 + 40) == 5)
    {
      v34 = v31;
      v35 = v32;
      v36 = nw_frame_unclaimed_length(*(v16 + 16));
      v32 = v35;
      v37 = v36;
      v31 = v34;
      v38 = v37;
      goto LABEL_25;
    }

    if (v26)
    {
      v39 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_49;
      }

      v38 = v26 - v39;
      if (!__OFSUB__(v26, v39))
      {
LABEL_25:
        *&v48 = v31;
        *(&v48 + 1) = v32;
        v49 = 0uLL;
        LOBYTE(v50) = 1;
        LOBYTE(v31) = InPlaceSerializer.buffer(_:)(a1._rawValue, &v64);
        v20 = *(&v49 + 1);
        if (v50 == 1)
        {
          if (*(&v49 + 1))
          {

            v21 = 1;
            goto LABEL_37;
          }

          if (v48)
          {
            v40 = *(&v48 + 1) - v48;
          }

          else
          {
            v40 = 0;
          }

          v20 = v40 - v49;
          if (__OFSUB__(v40, v49))
          {
            goto LABEL_50;
          }

          if (v20 < 0)
          {
LABEL_51:
            __break(1u);
            return v31;
          }

          if (!v20)
          {
            v21 = 1;
            v45 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v38, 0, 1);

            if (v45)
            {
              v20 = 0;
              v64 = 0;
              goto LABEL_39;
            }

            v20 = 2;
            goto LABEL_37;
          }
        }

        v31 = v38 - v20;
        if (!__OFSUB__(v38, v20))
        {
          v41 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v31, 0, 1);

          if (!v41)
          {
            goto LABEL_38;
          }

          v21 = 0;
LABEL_37:
          v64 = v20;
          goto LABEL_39;
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      __break(1u);
    }

    v38 = 0;
    goto LABEL_25;
  }

  sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD7630, MEMORY[0x1E69E9440]);

  v11 = 0;
LABEL_44:
  LOBYTE(v31) = v11 & 1;
  return v31;
}

Swift::Int sub_181FE74FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  if (*(a1 + 24) == 2)
  {
    v7 = swift_projectBox();
    sub_181FD804C(v7, v6);
    v8 = sub_182AD2868();
    v9 = *(*(v8 - 8) + 8);

    v9(v6, v8);
    sub_1822AE0A0(a1, 1, a2, &v50);
    v10 = v50;
    v11 = v51;
    goto LABEL_26;
  }

  v12 = *(a1 + 16);
  v34 = *a1;
  v35 = v12;
  v36 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v49 = *(a1 + 208);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *(a1 + 192);
  v47 = *(a1 + 176);
  v48 = v17;
  v18 = *(a1 + 128);
  v43 = *(a1 + 112);
  v44 = v18;
  v19 = *(a1 + 160);
  v45 = *(a1 + 144);
  v46 = v19;
  v20 = *(a1 + 96);
  v41 = *(a1 + 80);
  v42 = v20;
  v37 = v13;
  v38 = v14;
  v39 = v16;
  v40 = v15;

  result = Frame.unclaimedBytes.getter();
  if (v23)
  {

    goto LABEL_25;
  }

  if (*(a1 + 24) == 5)
  {
    v24 = result;
    v25 = v22;
    v26 = nw_frame_unclaimed_length(*a1);
    v22 = v25;
    v27 = v26;
    result = v24;
    v28 = v27;
    goto LABEL_13;
  }

  if (!v15)
  {
LABEL_12:
    v28 = 0;
    goto LABEL_13;
  }

  v29 = v14 + v16;
  if (__OFADD__(v14, v16))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = v15 - v29;
  if (__OFSUB__(v15, v29))
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  *&v34 = result;
  *(&v34 + 1) = v22;
  v35 = 0uLL;
  LOBYTE(v36) = 1;
  result = InPlaceSerializer.buffer(_:)(a2, &v50);
  v10 = *(&v35 + 1);
  if (v36 != 1)
  {
    goto LABEL_22;
  }

  if (*(&v35 + 1))
  {

    v11 = 1;
    v50 = v10;
    goto LABEL_26;
  }

  if (v34)
  {
    v30 = *(&v34 + 1) - v34;
  }

  else
  {
    v30 = 0;
  }

  v10 = v30 - v35;
  if (__OFSUB__(v30, v35))
  {
    goto LABEL_34;
  }

  if (v10 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if (v10)
  {
LABEL_22:
    result = v28 - v10;
    if (!__OFSUB__(v28, v10))
    {
      v31 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);

      if (v31)
      {
        v11 = 0;
        v50 = v10;
        goto LABEL_26;
      }

LABEL_25:
      v10 = 2;
      v50 = 2;
      v11 = 1;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_33;
  }

  v11 = 1;
  v33 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28, 0, 1);

  if (v33)
  {
    v10 = 0;
    v50 = 0;
  }

  else
  {
    v10 = 2;
    v50 = 2;
  }

LABEL_26:
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  strcpy(&v34, "Write result: ");
  HIBYTE(v34) = -18;
  v50 = v10;
  v51 = v11;
  v32 = SerializationResult.description.getter();
  MEMORY[0x1865D9CA0](v32);

  sub_181FE6300(v34, *(&v34 + 1), MEMORY[0x1E69E9438]);

  Frame.collapse()();
  if (!Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(*(a2 + 16), 0, 1))
  {
    sub_181FE6300(0xD000000000000011, 0x8000000182BD7650, MEMORY[0x1E69E9440]);
  }

  return 0;
}

Swift::OpaquePointer_optional __swiftcall InputHarnessProtocol.read()()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *&v20 = *(v0 + 16);
  *(&v20 + 1) = v3;
  LOBYTE(v21) = v4;
  v35[0] = v0;
  v35[1] = 0;
  v36 = 5;

  sub_181F68EA8(v20, v3, v4);
  v5 = &v20;
  OutputHandlerLinkage.invokeGetInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(v35, 1uLL, 0x7FFFFFFFFFFFFFFFuLL, 1uLL, v37);
  sub_181F68E5C(v20, *(&v20 + 1), v21);
  if (sub_181F3D1E4(v37) != 1)
  {
    v8 = *(&v48 + 1);
    v32 = v47;
    v33 = v48;
    v34 = v49;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v20 = v37[0];
    v21 = v37[1];
    v22 = v37[2];
    v23 = v38;
    if (v49 == 1)
    {

      v7 = 0;
LABEL_14:
      v8 = *(&v20 + 1);
      v5 = v20;
      v1 = v21;
      v2 = BYTE8(v21);
      v12 = *(&v22 + 1);
      v10 = v22;
      v11 = v23;
      if (v23 == 2 && v22 == 0)
      {
        if ((v30 & 1) == 0 && v29)
        {
          MEMORY[0x1865DF520](v29, -1, -1);
        }

        sub_181F68EF4(v5, v8, v1, v2);

        goto LABEL_20;
      }

LABEL_23:
      v14 = v10;
      v15 = v5;
      v16 = v12;
      v17 = v8;
      v18 = v11;
      sub_181F68EF4(v15, v17, v1, v2);

      v13 = sub_181F68F3C(v14, v16, v18);
      __break(1u);
      goto LABEL_24;
    }

    v19 = MEMORY[0x1E69E7CC0];
    if (BYTE8(v21) == 5)
    {
      v9 = nw_frame_unclaimed_length(v20);
      goto LABEL_10;
    }

    v10 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_12;
    }

    v11 = BYTE8(v38);
    v12 = *(&v38 + 1) + v39;
    if (__OFADD__(*(&v38 + 1), v39))
    {
      __break(1u);
    }

    else
    {
      v9 = *(&v39 + 1) - v12;
      if (!__OFSUB__(*(&v39 + 1), v12))
      {
LABEL_10:
        if (v9 > 0)
        {
          sub_1820D72E8(&v20, 0, &v19, v9, v35);
          v7 = v19;
LABEL_13:

          Frame.finalize(success:)(1);

          goto LABEL_14;
        }

LABEL_12:
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_181FE6300(0xD00000000000001ALL, 0x8000000182BD7670, MEMORY[0x1E69E9438]);

  v7 = 0;
LABEL_20:
  v13 = v7;
LABEL_24:
  result.value._rawValue = v13;
  result.is_nil = v6;
  return result;
}

uint64_t sub_181FE7C0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  if (*(result + 32) == 1 && *(result + 24))
  {
    goto LABEL_7;
  }

  v6 = v3 - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < a2)
  {
LABEL_7:
    v9 = 1;
    *(result + 24) = 1;
    *(result + 32) = 1;
    v10 = 1;
LABEL_11:
    *a3 = v9;
    *(a3 + 8) = v10;
    return result;
  }

  v11 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    goto LABEL_13;
  }

  if (v11 >= v5)
  {
    v12 = result;
    v14 = a3;
    sub_181ADF8C8(*(result + 16), v11, v4, v3);
    result = sub_1820E2C6C(a2);
    a3 = v14;
    v9 = *(v12 + 24);
    v10 = *(v12 + 32);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t InputHarnessProtocol.waitForInputAvailable(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 848);
  *(v2 + 848) = a1;
  *(v2 + 856) = a2;
  sub_181A554F4(v3);
}

uint64_t InputHarnessProtocol.getMetadata<A>()(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v11 = *(v2 + 16);
  v12 = v5;
  v13 = v6;
  v10 = 5;
  sub_181F68EA8(v11, v5, v6);

  v7 = OutputHandlerLinkage.invokeGetMetadata<A>(_:)(v9, a1, a2);
  sub_181F68E5C(v9[0], v9[1], v10);
  sub_181F68E5C(v11, v12, v13);
  return v7;
}

uint64_t InputHarnessProtocol.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  memcpy(__dst, (v0 + 56), sizeof(__dst));
  sub_181F48214(__dst);
  memcpy(v3, (v0 + 448), 0x17AuLL);
  sub_181A3DFB8(v3);
  sub_181A554F4(*(v0 + 832));
  sub_181A554F4(*(v0 + 848));

  return v0;
}

uint64_t InputHarnessProtocol.__deallocating_deinit()
{
  InputHarnessProtocol.deinit();

  return swift_deallocClassInstance();
}

void sub_181FE7EC0()
{
  sub_181FE6300(0xD000000000000018, 0x8000000182BD5890, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 848);
  if (v1)
  {

    v1(1);
    sub_181A554F4(v1);
    v2 = *(v0 + 848);
    *(v0 + 848) = 0;
    *(v0 + 856) = 0;

    sub_181A554F4(v2);
  }
}

void sub_181FE8088()
{
  sub_181FE6300(0xD000000000000012, 0x8000000182BD5850, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 832);
  if (v1)
  {

    v1(1);
    sub_181A554F4(v1);
    v2 = *(v0 + 832);
    *(v0 + 832) = 0;
    *(v0 + 840) = 0;

    sub_181A554F4(v2);
  }
}

uint64_t sub_181FE818C@<X0>(void *a1@<X8>)
{
  sub_181FE6300(0xD00000000000001BLL, 0x8000000182BD5A10, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 56), sizeof(__dst));
  memcpy(__src, (v1 + 56), 0x188uLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x188uLL);
  return sub_181F481DC(__dst, &v4);
}

void *sub_181FE8228()
{
  sub_181FE6300(0xD000000000000020, 0x8000000182BD5A30, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *sub_181FE8280()
{
  sub_181FE6300(0xD00000000000001FLL, 0x8000000182BD5A60, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_181FE82D8@<X0>(void *a1@<X8>)
{
  sub_181FE6300(0xD000000000000015, 0x8000000182BD5A80, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 448), 0x17AuLL);
  memcpy(__src, (v1 + 448), 0x17AuLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x17AuLL);
  return sub_181A3DF5C(__dst, v4);
}

void sub_181FE8374(uint64_t a1, unint64_t a2)
{
  v6 = *(v2 + 72);
  v5 = *(v2 + 80);
  if (qword_1EA8371A0 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843348);

  oslog = sub_182AD2678();
  v8 = sub_182AD38A8();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    v11 = sub_181C64FFC(v6, v5, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_181C64FFC(a1, a2, &v13);
    _os_log_impl(&dword_181A37000, oslog, v8, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v10, -1, -1);
    MEMORY[0x1865DF520](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t OutputHarnessProtocol.maximumOutputSize.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t OutputHarnessProtocol.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  OutputHarnessProtocol.init(identifier:)(a1, a2);
  return v4;
}

uint64_t OutputHarnessProtocol.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 6;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = v5;
  *(v2 + 64) = 1;
  *(v2 + 88) = 1400;
  sub_182AD3BA8();

  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  *(v2 + 72) = 0x4874757074754F5BLL;
  *(v2 + 80) = 0xEF3A7373656E7261;
  return v2;
}

uint64_t sub_181FE8710()
{
  result = swift_beginAccess();
  for (i = *(v0 + 40); ; i = *(v0 + 40))
  {
    v3 = *(i + 2);
    if (!v3)
    {
      break;
    }

    swift_beginAccess();
    v4 = *(i + 4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 40) = i;
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > *(i + 3) >> 1)
    {
      i = sub_181F59AF4(isUniquelyReferenced_nonNull_native, v3, 1, i);
      *(v0 + 40) = i;
    }

    v6 = *(i + 2);
    memmove(i + 32, i + 48, 16 * v6 - 16);
    *(i + 2) = v6 - 1;
    *(v0 + 40) = i;
    result = swift_endAccess();
    if (v4)
    {
      result = MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  return result;
}

uint64_t OutputHarnessProtocol.replaceInputHandler(old:new:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a1 + 16);
  sub_181FE8374(0xD00000000000001ELL, 0x8000000182BD76B0);
  if (sub_181F74A48(*(v3 + 16), *(v3 + 24), *(v3 + 32), v5, v6, v10))
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
    v13 = *(v3 + 32);
    *(v3 + 32) = v9;
    sub_181F68EA8(v7, v8, v9);
    sub_181F68E5C(v11, v12, v13);
  }

  *a3 = v3;
  *(a3 + 8) = 0;
  *(a3 + 16) = 5;
}

uint64_t sub_181FE8904(uint64_t result, uint64_t a2)
{
  if (*(result + 24) == 5)
  {
    v3 = nw_frame_unclaimed_length(*result);
    goto LABEL_9;
  }

  v4 = *(result + 72);
  if (!v4)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v5 = *(result + 56);
  v6 = *(result + 64);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    __break(1u);
    return result;
  }

  v3 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_182AD3BA8();

  strcpy(v22, "Frame length: ");
  HIBYTE(v22[1]) = -18;
  v23 = v3;
  v9 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v9);

  sub_181FE8374(v22[0], v22[1]);

  v10 = Frame.extractBufferToFreeExternally()();
  v12 = v11;
  v14 = v13;
  if ((v13 & 1) == 0)
  {
    swift_beginAccess();
    v15 = *(a2 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 40) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_181F59AF4(0, *(v15 + 2) + 1, 1, v15);
      *(a2 + 40) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_181F59AF4((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[16 * v18];
    *(v19 + 4) = v10;
    *(v19 + 5) = v12;
    *(a2 + 40) = v15;
    swift_endAccess();
  }

  sub_182AD3BA8();

  v22[0] = 0xD000000000000018;
  v22[1] = 0x8000000182BD78B0;
  if (v14 & 1 | (v10 == 0))
  {
    v20 = 0;
  }

  else
  {
    v20 = v12 - v10;
  }

  v23 = v20;
  v21 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v21);

  sub_181FE8374(v22[0], v22[1]);

  Frame.finalize(success:)(1);
  return 1;
}

Swift::OpaquePointer_optional __swiftcall OutputHarnessProtocol.extractLastOutputPacket()()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  if (v2[2])
  {
    swift_beginAccess();
    v3 = v2[4];
    v4 = v2[5];
    sub_181FCDA28(0, 1);
    swift_endAccess();
    v5 = sub_181AC1C5C(v3, v4);
    if (v3)
    {
      v6 = v5;
      MEMORY[0x1865DF520](v3, -1, -1);
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  result.value._rawValue = v5;
  result.is_nil = v1;
  return result;
}

Swift::Void __swiftcall OutputHarnessProtocol.setNextInputPacket(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if ((*(v1 + 64) & 1) == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843348);
    v5 = sub_182AD2678();
    v6 = sub_182AD38B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_181A37000, v5, v6, "Dropping a packet", v7, 2u);
      MEMORY[0x1865DF520](v7, -1, -1);
    }
  }

  v8 = *(a1._rawValue + 2);
  v9 = swift_slowAlloc();
  *(v2 + 48) = v9;
  *(v2 + 56) = v9 + v8;
  *(v2 + 64) = 0;
  sub_181FE8D8C(&v15, a1._rawValue + 32, a1._rawValue + v8 + 32, v9, v9 + v8);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v15 = *(v2 + 16);
  v16 = v10;
  v17 = v11;
  v12 = v2;
  v13 = 0;
  v14 = 5;
  sub_181F68EA8(v15, v10, v11);

  InputHandlerLinkage.invokeInputAvailable(_:)(&v12);
  sub_181F68E5C(v12, v13, v14);
  sub_181F68E5C(v15, v16, v17);
}

void *sub_181FE8D8C(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  v5 = 0;
  if (a4)
  {
    while (1)
    {
      v6 = a4 + v5 >= a5 || a2 == 0;
      if (v6 || a2 == a3)
      {
        goto LABEL_14;
      }

      *(a4 + v5) = *a2;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      ++a2;
      ++v5;
      if ((a5 - a4) < v8)
      {
        __break(1u);
        break;
      }
    }
  }

  if (!a2 || a3 == a2)
  {
LABEL_14:
    *result = a2;
    result[1] = a3;
    return a4;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t OutputHarnessProtocol.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t OutputHarnessProtocol.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_181FE8F18(uint64_t a1@<X8>)
{
  *(a1 + 6) = 0;
  *a1 = 0;
  *(a1 + 4) = 2;
}

uint64_t sub_181FE8F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_181FE8374(0xD00000000000001ALL, 0x8000000182BD5AA0);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  v9 = *(v2 + 32);
  *(v2 + 32) = v6;
  sub_181F68EA8(v4, v5, v6);
  sub_181F68E5C(v7, v8, v9);
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
}

void sub_181FE8FF4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = *(v3 + 856);
  v8 = *(v3 + 864);
  if (qword_1EA8371A0 != -1)
  {
    swift_once();
  }

  v9 = sub_182AD2698();
  __swift_project_value_buffer(v9, qword_1EA843348);

  oslog = sub_182AD2678();
  v10 = a3();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    v13 = sub_181C64FFC(v7, v8, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_181C64FFC(a1, a2, &v15);
    _os_log_impl(&dword_181A37000, oslog, v10, "%s %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v12, -1, -1);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t ListenerHarnessProtocol.inputHarnesses.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 872) = a1;
}

uint64_t ListenerHarnessProtocol.__allocating_init(identifier:local:remote:parameters:path:listenHandler:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 824) = 0u;
  *(v15 + 840) = 0u;
  *(v15 + 872) = MEMORY[0x1E69E7CC0];
  sub_182AD3BA8();

  v24 = 0xD000000000000011;
  v25 = 0x8000000182BD76D0;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  *(v15 + 856) = 0xD000000000000011;
  *(v15 + 864) = 0x8000000182BD76D0;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  memcpy((v15 + 48), a5, 0x188uLL);
  memcpy((v15 + 440), a6, 0x17AuLL);
  ObjectType = swift_getObjectType();
  v23[0] = v15;
  v23[1] = 0x4000000000000000;
  v17 = *(a8 + 16);
  v18 = a3;
  v19 = a4;
  swift_unknownObjectRetain();

  v17(&v24, v23, ObjectType, a8);

  v20 = v24;
  if (v24 == 1)
  {
    sub_181FE8FF4(0xD00000000000001ELL, 0x8000000182BD76F0, MEMORY[0x1E69E9440]);

    swift_unknownObjectRelease_n();
    return 0;
  }

  else
  {
    v21 = v25;

    swift_unknownObjectRelease_n();
    *(v15 + 16) = v20;
    *(v15 + 24) = v21;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_181B03DAC(v20);
  }

  return v15;
}

uint64_t ListenerHarnessProtocol.init(identifier:local:remote:parameters:path:listenHandler:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 824) = 0u;
  *(v8 + 840) = 0u;
  *(v8 + 872) = MEMORY[0x1E69E7CC0];
  sub_182AD3BA8();

  v25 = 0xD000000000000011;
  v26 = 0x8000000182BD76D0;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  *(v8 + 856) = 0xD000000000000011;
  *(v8 + 864) = 0x8000000182BD76D0;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  memcpy((v8 + 48), a5, 0x188uLL);
  memcpy((v8 + 440), a6, 0x17AuLL);
  ObjectType = swift_getObjectType();
  v24[0] = v8;
  v24[1] = 0x4000000000000000;
  v18 = *(a8 + 16);
  v19 = a3;
  v20 = a4;
  swift_unknownObjectRetain();

  v18(&v25, v24, ObjectType, a8);

  v21 = v25;
  if (v25 == 1)
  {
    sub_181FE8FF4(0xD00000000000001ELL, 0x8000000182BD76F0, MEMORY[0x1E69E9440]);

    swift_unknownObjectRelease_n();
    return 0;
  }

  else
  {
    v22 = v26;

    swift_unknownObjectRelease_n();
    *(v9 + 16) = v21;
    *(v9 + 24) = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_181B03DAC(v21);
  }

  return v9;
}

uint64_t ListenerHarnessProtocol.__allocating_init(identifier:local:remote:parameters:path:listenLinkage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t *a7)
{
  v14 = swift_allocObject();
  v15 = *a7;
  v16 = a7[1];
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 824) = 0u;
  *(v14 + 840) = 0u;
  *(v14 + 872) = MEMORY[0x1E69E7CC0];
  sub_182AD3BA8();

  v27 = 0xD000000000000011;
  v28 = 0x8000000182BD76D0;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  *(v14 + 856) = 0xD000000000000011;
  *(v14 + 864) = 0x8000000182BD76D0;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  memcpy((v14 + 48), a5, 0x188uLL);
  memcpy((v14 + 440), a6, 0x17AuLL);
  if (!v15)
  {
    v22 = a3;
    v23 = a4;
    goto LABEL_5;
  }

  ObjectType = swift_getObjectType();
  v26[0] = v14;
  v26[1] = 0x4000000000000000;
  v18 = *(v16 + 16);
  v25 = a3;
  v19 = a4;

  swift_unknownObjectRetain();
  v18(&v27, v26, ObjectType, v16);

  swift_unknownObjectRelease_n();
  v20 = v27;
  if (v27 == 1)
  {
LABEL_5:
    sub_181FE8FF4(0xD00000000000001ELL, 0x8000000182BD76F0, MEMORY[0x1E69E9440]);

    return 0;
  }

  v21 = v28;

  *(v14 + 16) = v20;
  *(v14 + 24) = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_181B03DAC(v20);
  return v14;
}

uint64_t ListenerHarnessProtocol.init(identifier:local:remote:parameters:path:listenLinkage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, const void *a5, const void *a6, uint64_t *a7)
{
  v8 = v7;
  v15 = *a7;
  v25 = a7[1];
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 824) = 0u;
  *(v7 + 840) = 0u;
  *(v7 + 872) = MEMORY[0x1E69E7CC0];
  sub_182AD3BA8();

  v27 = 0xD000000000000011;
  v28 = 0x8000000182BD76D0;
  MEMORY[0x1865D9CA0](a1, a2);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  *(v7 + 856) = 0xD000000000000011;
  *(v7 + 864) = 0x8000000182BD76D0;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  memcpy((v7 + 48), a5, 0x188uLL);
  memcpy((v7 + 440), a6, 0x17AuLL);
  if (!v15)
  {
    v21 = a3;
    v22 = a4;
    goto LABEL_5;
  }

  ObjectType = swift_getObjectType();
  v26[0] = v7;
  v26[1] = 0x4000000000000000;
  v17 = *(v25 + 16);
  v24 = a3;
  v18 = a4;

  swift_unknownObjectRetain();
  v17(&v27, v26, ObjectType, v25);

  swift_unknownObjectRelease_n();
  v19 = v27;
  if (v27 == 1)
  {
LABEL_5:
    sub_181FE8FF4(0xD00000000000001ELL, 0x8000000182BD76F0, MEMORY[0x1E69E9440]);

    return 0;
  }

  v20 = v28;

  *(v8 + 16) = v19;
  *(v8 + 24) = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_181B03DAC(v19);
  return v8;
}

uint64_t ListenerHarnessProtocol.start(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[103];
  v2[103] = a1;
  v2[104] = a2;
  sub_181A554F4(v3);
  if (v2[2])
  {
    v4 = v2[3];
    ObjectType = swift_getObjectType();
    v9[0] = v2;
    v9[1] = 0x4000000000000000;
    v6 = *(v4 + 32);

    swift_unknownObjectRetain();
    v7 = v6(v9, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

Swift::Void __swiftcall ListenerHarnessProtocol.stop()()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4[0] = v0;
    v4[1] = 0x4000000000000000;
    v3 = *(v1 + 40);

    swift_unknownObjectRetain();
    v3(v4, ObjectType, v1);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ListenerHarnessProtocol.teardown()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[109];
  if (v2 >> 62)
  {
    v3 = sub_182AD3EB8();
    if (!v3)
    {
LABEL_73:
      v1[109] = MEMORY[0x1E69E7CC0];

      if (v1[2])
      {
        v108 = v1[3];
        ObjectType = swift_getObjectType();
        v118 = v1;
        v119 = 0x4000000000000000;
        v110 = *(v108 + 24);

        swift_unknownObjectRetain();
        v110(&v118, ObjectType, v108);

        swift_unknownObjectRelease();
      }

      v1[2] = 0;
      v1[3] = 0;
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_73;
    }
  }

  if (v3 >= 1)
  {
    v114 = v2 & 0xC000000000000001;
    v111 = v0;

    v4 = 0;
    v112 = v3;
    v113 = v2;
    while (1)
    {
      if (v114)
      {
        v13 = MEMORY[0x1865DA790](v4, v2);
      }

      else
      {
        v13 = *(v2 + 8 * v4 + 32);
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      v16 = *(v13 + 32);
      if (v16 > 2)
      {
        if (*(v13 + 32) > 4u)
        {
          if (v16 == 5)
          {

            sub_181F68EA8(v15, v14, 5u);
            sub_181FE8374(0xD00000000000001DLL, 0x8000000182BD57F0);
            if (sub_181F74A48(*(v15 + 16), *(v15 + 24), *(v15 + 32), v13, 0, 5))
            {
              v39 = *(v15 + 16);
              v40 = *(v15 + 24);
              v41 = *(v15 + 32);
              *(v15 + 16) = 0;
              *(v15 + 24) = 0;
              *(v15 + 32) = 6;
              sub_181F68E5C(v39, v40, v41);
            }

            sub_181FE8710();
            sub_181F68E5C(v15, v14, 5u);

            v2 = v113;
          }

          goto LABEL_7;
        }

        if (v16 != 3)
        {

          sub_181F68EA8(v15, v14, 4u);
          output_handler = nw_protocol_swift_wrapper_get_output_handler(v15, v14);
          if (output_handler && (nw_protocol_remove_input_handler_quiet(output_handler, v15) & 1) != 0)
          {
            nw_protocol_destroy_output_linkage_handle(v15, v14);
          }

          sub_181F68E5C(v15, v14, 4u);
          goto LABEL_7;
        }

        v5 = swift_getObjectType();
        v118 = v13;
        v119 = 0;
        v120 = 5;
        v6 = v14[2];

        sub_181F68EA8(v15, v14, 3u);
        v6(&v118, 1, v5, v14);
        v3 = v112;
        v2 = v113;
        v7 = v15;
        v8 = v14;
        v9 = 3;
        goto LABEL_6;
      }

      if (!*(v13 + 32))
      {
        v42 = *(v15 + 16);
        v43 = *(v15 + 32);
        v44 = v42;
        if (v43 <= 3)
        {
          goto LABEL_31;
        }

        if (v43 == 4)
        {
          v44 = *(v15 + 24);
          goto LABEL_31;
        }

        v44 = *(v15 + 16);
        if (v43 == 5)
        {
LABEL_31:
          if (v13 == v44)
          {
            v45 = *(v15 + 24);
            *(v15 + 16) = 0;
            *(v15 + 24) = 0;
            *(v15 + 32) = 6;

            sub_181F68EA8(v15, v14, 0);
            sub_181F68E5C(v42, v45, v43);
            v46 = *(v15 + 40);
            v47 = *(v15 + 48);
            v48 = *(v15 + 56);
            v118 = v46;
            v119 = v47;
            v120 = v48;
            if (*(v15 + 104) == 6 && *(v15 + 88) == 0)
            {
              *(v15 + 88) = v15;
              *(v15 + 96) = 0;
              *(v15 + 104) = 0;
              v99 = v46;
              v100 = v47;
              v101 = v48;
              sub_181F68EA8(v15, v14, 0);
              sub_181F68EA8(v99, v100, v101);
              sub_181F68E5C(0, 0, 6u);
            }

            else
            {
              sub_181F68EA8(v46, v47, v48);
            }

            v49 = *(v15 + 96);
            v50 = *(v15 + 104);
            v115 = *(v15 + 88);
            v116 = v49;
            v117 = v50;
            sub_181F68EA8(v115, v49, v50);
            OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(&v115, 1);
            sub_181F68E5C(v115, v116, v117);
            sub_181F68E5C(v118, v119, v120);
            v51 = *(v15 + 40);
            v52 = *(v15 + 48);
            v53 = *(v15 + 56);
            *(v15 + 40) = 0;
            *(v15 + 48) = 0;
            *(v15 + 56) = 6;
            sub_181F68E5C(v51, v52, v53);
            v54 = *(v15 + 88);
            v55 = *(v15 + 96);
            v56 = *(v15 + 104);
            *(v15 + 88) = 0;
            *(v15 + 96) = 0;
            *(v15 + 104) = 6;
            sub_181F68E5C(v54, v55, v56);
            v57 = *(v15 + 112);
            v58 = *(v15 + 120);
            *(v15 + 112) = 0;
            *(v15 + 120) = 0;
            v59 = *(v15 + 128);
            *(v15 + 128) = 6;
            sub_181F68E5C(v57, v58, v59);
            v36 = v15;
            v37 = v14;
            v38 = 0;
            goto LABEL_42;
          }
        }

        sub_181F68EA8(v15, v14, 0);
        if (qword_1EA8371A0 != -1)
        {
          swift_once();
        }

        v78 = sub_182AD2698();
        __swift_project_value_buffer(v78, qword_1EA843348);
        v79 = sub_182AD2678();
        v80 = sub_182AD38C8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v118 = v82;
          *v81 = 136315138;
          *(v81 + 4) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BD7710, &v118);
          _os_log_impl(&dword_181A37000, v79, v80, "Received '%s' from incorrect input linkage", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          v83 = v82;
          v2 = v113;
          MEMORY[0x1865DF520](v83, -1, -1);
          v84 = v81;
          v3 = v112;
          MEMORY[0x1865DF520](v84, -1, -1);
        }

        LOBYTE(v118) = 0;
        sub_181FEADD0();
        swift_willThrowTypedImpl();
        v7 = v15;
        v8 = v14;
        v9 = 0;
        goto LABEL_6;
      }

      if (v16 != 1)
      {
        v60 = *(v15 + 16);
        v61 = *(v15 + 32);
        v62 = v60;
        if (v61 <= 3)
        {
          goto LABEL_37;
        }

        if (v61 == 4)
        {
          v62 = *(v15 + 24);
          goto LABEL_37;
        }

        v62 = *(v15 + 16);
        if (v61 == 5)
        {
LABEL_37:
          if (v13 == v62)
          {
            v63 = *(v15 + 24);
            *(v15 + 16) = 0;
            *(v15 + 24) = 0;
            *(v15 + 32) = 6;

            sub_181F68EA8(v15, v14, 2u);
            sub_181F68E5C(v60, v63, v61);
            v64 = *(v15 + 40);
            v65 = *(v15 + 48);
            v66 = *(v15 + 56);
            v118 = v64;
            v119 = v65;
            v120 = v66;
            if (*(v15 + 104) == 6 && *(v15 + 88) == 0)
            {
              *(v15 + 88) = v15;
              *(v15 + 96) = 0;
              *(v15 + 104) = 2;
              v105 = v64;
              v106 = v65;
              v107 = v66;
              sub_181F68EA8(v15, v14, 2u);
              sub_181F68EA8(v105, v106, v107);
              sub_181F68E5C(0, 0, 6u);
            }

            else
            {
              sub_181F68EA8(v64, v65, v66);
            }

            v67 = *(v15 + 96);
            v68 = *(v15 + 104);
            v115 = *(v15 + 88);
            v116 = v67;
            v117 = v68;
            sub_181F68EA8(v115, v67, v68);
            OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(&v115, 1);
            sub_181F68E5C(v115, v116, v117);
            sub_181F68E5C(v118, v119, v120);
            v69 = *(v15 + 40);
            v70 = *(v15 + 48);
            v71 = *(v15 + 56);
            *(v15 + 40) = 0;
            *(v15 + 48) = 0;
            *(v15 + 56) = 6;
            sub_181F68E5C(v69, v70, v71);
            v72 = *(v15 + 88);
            v73 = *(v15 + 96);
            v74 = *(v15 + 104);
            *(v15 + 88) = 0;
            *(v15 + 96) = 0;
            *(v15 + 104) = 6;
            sub_181F68E5C(v72, v73, v74);
            v75 = *(v15 + 112);
            v76 = *(v15 + 120);
            *(v15 + 112) = 0;
            *(v15 + 120) = 0;
            v77 = *(v15 + 128);
            *(v15 + 128) = 6;
            sub_181F68E5C(v75, v76, v77);
            v36 = v15;
            v37 = v14;
            v38 = 2;
LABEL_42:
            sub_181F68E5C(v36, v37, v38);

            v3 = v112;
            v2 = v113;
            goto LABEL_7;
          }
        }

        sub_181F68EA8(v15, v14, 2u);
        if (qword_1EA8371A0 != -1)
        {
          swift_once();
        }

        v92 = sub_182AD2698();
        __swift_project_value_buffer(v92, qword_1EA843348);
        v93 = sub_182AD2678();
        v94 = sub_182AD38C8();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v118 = v96;
          *v95 = 136315138;
          *(v95 + 4) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BD7710, &v118);
          _os_log_impl(&dword_181A37000, v93, v94, "Received '%s' from incorrect input linkage", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v97 = v96;
          v3 = v112;
          MEMORY[0x1865DF520](v97, -1, -1);
          v98 = v95;
          v2 = v113;
          MEMORY[0x1865DF520](v98, -1, -1);
        }

        LOBYTE(v118) = 0;
        sub_181FEADD0();
        swift_willThrowTypedImpl();
        v7 = v15;
        v8 = v14;
        v9 = 2;
        goto LABEL_6;
      }

      v18 = *(v15 + 16);
      v19 = *(v15 + 32);
      v20 = v18;
      if (v19 <= 3)
      {
        goto LABEL_21;
      }

      if (v19 == 4)
      {
        break;
      }

      v20 = *(v15 + 16);
      if (v19 == 5)
      {
        goto LABEL_21;
      }

LABEL_52:

      sub_181F68EA8(v15, v14, 1u);
      if (qword_1EA8371A0 != -1)
      {
        swift_once();
      }

      v85 = sub_182AD2698();
      __swift_project_value_buffer(v85, qword_1EA843348);
      v86 = sub_182AD2678();
      v87 = sub_182AD38C8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v118 = v89;
        *v88 = 136315138;
        *(v88 + 4) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BD7710, &v118);
        _os_log_impl(&dword_181A37000, v86, v87, "Received '%s' from incorrect input linkage", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        v90 = v89;
        v3 = v112;
        MEMORY[0x1865DF520](v90, -1, -1);
        v91 = v88;
        v2 = v113;
        MEMORY[0x1865DF520](v91, -1, -1);
      }

      LOBYTE(v118) = 0;
      sub_181FEADD0();
      swift_willThrowTypedImpl();
      v7 = v15;
      v8 = v14;
      v9 = 1;
LABEL_6:
      sub_181F68E5C(v7, v8, v9);

LABEL_7:
      ++v4;
      v10 = *(v13 + 16);
      v11 = *(v13 + 24);
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      v12 = *(v13 + 32);
      *(v13 + 32) = 6;
      sub_181F68E5C(v10, v11, v12);

      if (v3 == v4)
      {

        v1 = v111;
        goto LABEL_73;
      }
    }

    v20 = *(v15 + 24);
LABEL_21:
    if (v13 == v20)
    {
      v21 = *(v15 + 24);
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 6;

      sub_181F68EA8(v15, v14, 1u);
      sub_181F68E5C(v18, v21, v19);
      v22 = *(v15 + 40);
      v23 = *(v15 + 48);
      v24 = *(v15 + 56);
      v118 = v22;
      v119 = v23;
      v120 = v24;
      if (*(v15 + 104) == 6 && *(v15 + 88) == 0)
      {
        *(v15 + 88) = v15;
        *(v15 + 96) = 0;
        *(v15 + 104) = 1;
        v102 = v22;
        v103 = v23;
        v104 = v24;
        sub_181F68EA8(v15, v14, 1u);
        sub_181F68EA8(v102, v103, v104);
        sub_181F68E5C(0, 0, 6u);
        if (*(v15 + 104) == 6 && *(v15 + 88) == 0)
        {
          *(v15 + 88) = v15;
          *(v15 + 96) = 0;
          *(v15 + 104) = 1;

          sub_181F68E5C(0, 0, 6u);
        }
      }

      else
      {
        sub_181F68EA8(v22, v23, v24);
      }

      v25 = *(v15 + 96);
      v26 = *(v15 + 104);
      v115 = *(v15 + 88);
      v116 = v25;
      v117 = v26;
      sub_181F68EA8(v115, v25, v26);
      OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(&v115, 1);
      sub_181F68E5C(v115, v116, v117);
      sub_181F68E5C(v118, v119, v120);
      v27 = *(v15 + 40);
      v28 = *(v15 + 48);
      v29 = *(v15 + 56);
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 6;
      sub_181F68E5C(v27, v28, v29);
      v30 = *(v15 + 88);
      v31 = *(v15 + 96);
      v32 = *(v15 + 104);
      *(v15 + 88) = 0;
      *(v15 + 96) = 0;
      *(v15 + 104) = 6;
      sub_181F68E5C(v30, v31, v32);
      v33 = *(v15 + 112);
      v34 = *(v15 + 120);
      *(v15 + 112) = 0;
      *(v15 + 120) = 0;
      v35 = *(v15 + 128);
      *(v15 + 128) = 6;
      sub_181F68E5C(v33, v34, v35);
      v36 = v15;
      v37 = v14;
      v38 = 1;
      goto LABEL_42;
    }

    goto LABEL_52;
  }

  __break(1u);
}

uint64_t ListenerHarnessProtocol.deinit()
{
  swift_unknownObjectRelease();

  memcpy(__dst, (v0 + 48), sizeof(__dst));
  sub_181F48214(__dst);
  memcpy(v3, (v0 + 440), 0x17AuLL);
  sub_181A3DFB8(v3);
  sub_181A554F4(*(v0 + 824));
  sub_181A554F4(*(v0 + 840));

  return v0;
}

uint64_t ListenerHarnessProtocol.__deallocating_deinit()
{
  ListenerHarnessProtocol.deinit();

  return swift_deallocClassInstance();
}

void sub_181FEA980()
{
  sub_181FE8FF4(0xD000000000000012, 0x8000000182BD5850, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 824);
  if (v1)
  {

    v1(1);
    sub_181A554F4(v1);
    v2 = *(v0 + 824);
    *(v0 + 824) = 0;
    *(v0 + 832) = 0;

    sub_181A554F4(v2);
  }
}

void sub_181FEAA34()
{
  sub_181FE8FF4(0xD000000000000015, 0x8000000182BD5B00, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 824);
  if (v1)
  {

    v1(0);
    sub_181A554F4(v1);
    v2 = *(v0 + 824);
    *(v0 + 824) = 0;
    *(v0 + 832) = 0;

    sub_181A554F4(v2);
  }
}

uint64_t sub_181FEAB34@<X0>(void *a1@<X8>)
{
  sub_181FE8FF4(0xD00000000000001BLL, 0x8000000182BD5A10, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  memcpy(__src, (v1 + 48), 0x188uLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x188uLL);
  return sub_181F481DC(__dst, &v4);
}

void *sub_181FEABD0()
{
  sub_181FE8FF4(0xD000000000000020, 0x8000000182BD5A30, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *sub_181FEAC28()
{
  sub_181FE8FF4(0xD00000000000001FLL, 0x8000000182BD5A60, MEMORY[0x1E69E9438]);
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_181FEAC80@<X0>(void *a1@<X8>)
{
  sub_181FE8FF4(0xD000000000000015, 0x8000000182BD5A80, MEMORY[0x1E69E9438]);
  memcpy(__dst, (v1 + 440), 0x17AuLL);
  memcpy(__src, (v1 + 440), 0x17AuLL);
  nullsub_41(__src);
  memcpy(a1, __src, 0x17AuLL);
  return sub_181A3DF5C(__dst, v4);
}

uint64_t _s7Network21OutputHarnessProtocolC18removeInputHandler_7destroySbAA0fG7LinkageV_SbtF_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_181FE8374(0xD00000000000001DLL, 0x8000000182BD57F0);
  if (sub_181F74A48(*(v1 + 16), *(v1 + 24), *(v1 + 32), v2, v3, v4))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    v7 = *(v1 + 32);
    *(v1 + 32) = 6;
    sub_181F68E5C(v5, v6, v7);
  }

  sub_181FE8710();
  return 1;
}

unint64_t sub_181FEADD0()
{
  result = qword_1EA839988;
  if (!qword_1EA839988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839988);
  }

  return result;
}

uint64_t NWError.errorCode.getter()
{
  LODWORD(result) = *v0;
  if (!*(v0 + 4))
  {
    LODWORD(result) = sub_182AD2768();
  }

  return result;
}

unint64_t NWError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AE9730;
  result = *MEMORY[0x1E695E620];
  if (*MEMORY[0x1E695E620])
  {
    *(inited + 32) = sub_182AD2F88();
    *(inited + 40) = v2;
    v3 = sub_181E7BD5C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    v5 = sub_181E7BE80(inited);
    swift_setDeallocating();
    sub_181E7BFD4(inited + 32);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s7Network7NWErrorO2eeoiySbAC_ACtFZ_0(int *a1, int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *a2;
  v6 = *(a2 + 4);
  if (v4 > 1)
  {
    v9 = v6 == 2 && v3 == v5;
    v11 = v6 == 3 && v3 == v5;
    if (v4 == 2)
    {
      return v9;
    }

    else
    {
      return v11;
    }
  }

  else if (v4)
  {
    return v6 == 1 && v3 == v5;
  }

  else
  {
    if (*(a2 + 4))
    {
      return 0;
    }

    v13 = sub_182AD2768();
    return v13 == sub_182AD2768();
  }
}

uint64_t NWListener.__allocating_init(using:on:)(uint64_t a1, unsigned __int16 *a2)
{
  v4 = swift_allocObject();
  NWListener.init(using:on:)(a1, a2);
  return v4;
}

uint64_t NWListener.debugDescription.getter()
{
  v1 = [*(v0 + 24) description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t NWListener.Service.Invitation.debugDescription.getter()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](46, 0xE100000000000000);
  sub_182AD3E18();
  return *(&v2 + 1);
}

Network::NWListener::Service::Invitation::Route_optional __swiftcall NWListener.Service.Invitation.Route.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_182AD3F48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NWListener.Service.Invitation.Route.rawValue.getter()
{
  v1 = 0x646F70656D6F68;
  if (*v0 != 1)
  {
    v1 = 0x72656B61657073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7496035;
  }
}

uint64_t sub_181FEB2F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646F70656D6F68;
  if (v2 != 1)
  {
    v3 = 0x72656B61657073;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7496035;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x646F70656D6F68;
  if (*a2 != 1)
  {
    v6 = 0x72656B61657073;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7496035;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_182AD4268();
  }

  return v9 & 1;
}

uint64_t sub_181FEB3F4()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FEB490()
{
  sub_182AD30E8();
}

uint64_t sub_181FEB518()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

void sub_181FEB5BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x646F70656D6F68;
  if (v2 != 1)
  {
    v4 = 0x72656B61657073;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7496035;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

Network::NWListener::Service::Invitation::Scope_optional __swiftcall NWListener.Service.Invitation.Scope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_182AD3F48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NWListener.Service.Invitation.Scope.rawValue.getter()
{
  v1 = 0x73646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696D69786F7270;
  }
}

_BYTE *static NWListener.Service.Invitation.wrangler(route:scope:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t sub_181FEB70C()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](46, 0xE100000000000000);
  sub_182AD3E18();
  return *(&v2 + 1);
}

uint64_t NWListener.Service.PairingConfiguration.pairingData.getter()
{
  v1 = *v0;
  sub_181F49B44(*v0, *(v0 + 8));
  return v1;
}

uint64_t NWListener.Service.PairingConfiguration.pairingData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_181D9D680(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NWListener.Service.PairingConfiguration.init(supportedPairingTypes:pairingData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  result = sub_181D9D680(0, 0xF000000000000000);
  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t NWListener.Service.PairingConfiguration.pairingValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t NWListener.Service.PairingConfiguration.pairingValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t NWListener.Service.PairingConfiguration.supportedPairingTypes.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t NWListener.Service.PairingConfiguration.init(supportedPairingTypes:pairingValue:generatePairingValueImmediately:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  *a4 = xmmword_182AE8230;
  *(a4 + 16) = a3;

  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  *(a4 + 40) = a1;
  return result;
}

unint64_t sub_181FEB9B8()
{
  v1 = 0x44676E6972696170;
  v2 = 0x56676E6972696170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
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

uint64_t sub_181FEBA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181FF1AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181FEBA80(uint64_t a1)
{
  v2 = sub_181FF0B98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEBABC(uint64_t a1)
{
  v2 = sub_181FF0B98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWListener.Service.PairingConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8399A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v21 = *(v1 + 16);
  v9 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v9;
  v15 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F49B44(v7, v8);
  sub_181FF0B98();
  sub_182AD4638();
  v19 = v7;
  v20 = v8;
  v22 = 0;
  sub_181C675F8();
  v10 = v18;
  sub_182AD40D8();
  sub_181D9D680(v19, v20);
  if (!v10)
  {
    v11 = v16;
    v12 = v17;
    v13 = v15;
    LOBYTE(v19) = 1;
    sub_182AD40F8();
    v19 = v12;
    v20 = v11;
    v22 = 2;
    sub_181FF0BEC();

    sub_182AD40D8();

    v19 = v13;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8399C0);
    sub_181F9A768(&qword_1EA838F20, sub_181F9A6C0);
    sub_182AD4118();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NWListener.Service.PairingConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8399C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0B98();
  sub_182AD45E8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_181D9D680(0, 0xF000000000000000);
  }

  else
  {
    v21 = 0;
    sub_181C67934();
    sub_182AD3FA8();
    v10 = v18;
    v11 = v19;
    sub_181D9D680(0, 0xF000000000000000);
    LOBYTE(v18) = 1;
    v20 = sub_182AD3FD8();
    v21 = 2;
    sub_181FF0C40();
    sub_182AD3FA8();
    v16 = v18;
    v17 = a2;
    v12 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8399C0);
    v21 = 3;
    sub_181F9A768(&unk_1EA8399E0, sub_181F9A714);
    sub_182AD3FF8();
    (*(v6 + 8))(v8, v5);
    v13 = v20 & 1;
    v14 = v17;
    v15 = v18;
    *v17 = v10;
    v14[1] = v11;
    *(v14 + 16) = v13;
    v14[3] = v16;
    v14[4] = v12;
    v14[5] = v15;
    sub_181F49B44(v10, v11);

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_181D9D680(v10, v11);
  }
}

uint64_t NWListener.Service.txtRecordObject.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  return sub_181E6550C(v2);
}

uint64_t NWListener.Service.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 105);
  if (*(v0 + 16))
  {
    v16 = *(v0 + 8);
    v17 = *(v0 + 16);

    MEMORY[0x1865D9CA0](46, 0xE100000000000000);
  }

  else
  {
    v16 = 11818;
    v17 = 0xE200000000000000;
  }

  MEMORY[0x1865D9CA0](v1, v3);
  if (v5)
  {
    MEMORY[0x1865D9CA0](46, 0xE100000000000000);
    v9 = v2;
    v10 = v5;
  }

  else
  {
    v9 = 10798;
    v10 = 0xE200000000000000;
  }

  MEMORY[0x1865D9CA0](v9, v10);
  v12 = v16;
  v11 = v17;
  if (v6 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v13 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v13 != 2)
    {
LABEL_15:
      sub_181D9D680(v7, v6);
      goto LABEL_17;
    }

    if (*(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (!v13)
  {
    if ((v6 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    sub_182AD3BA8();

    result = MEMORY[0x1865D9CA0](15392, 0xE200000000000000);
    if (v13 == 2)
    {
      if (__OFSUB__(*(v7 + 24), *(v7 + 16)))
      {
        __break(1u);
      }
    }

    else if (v13 == 1 && __OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
      return result;
    }

    v15 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v15);

    MEMORY[0x1865D9CA0](0x6F20736574796220, 0xEE003E7478742066);
    sub_181D9D680(v7, v6);
    goto LABEL_28;
  }

  if (v7 != v7 >> 32)
  {
LABEL_19:
    sub_181F49B44(v7, v6);
    goto LABEL_20;
  }

LABEL_17:
  if (v4)
  {
    v16 = 0;
    v17 = 0xE000000000000000;

    swift_unknownObjectRetain();
    MEMORY[0x1865D9CA0](v12, v11);

    MEMORY[0x1865D9CA0](32, 0xE100000000000000);
    sub_182AD3E18();
    sub_181AB612C(v4);
LABEL_28:
    v12 = v16;
    v11 = v17;
  }

  if (v8 != 3)
  {
    MEMORY[0x1865D9CA0](v12, v11);

    MEMORY[0x1865D9CA0](32, 0xE100000000000000);
    sub_182AD3E18();
    return 0;
  }

  return v12;
}

uint64_t NWListener.Service.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NWListener.Service.type.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NWListener.Service.domain.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NWListener.Service.txtRecordObject.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_181AB612C(*(v1 + 56));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t (*NWListener.Service.txtRecordObject.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  *a1 = v3;
  a1[1] = v4;
  sub_181E6550C(v3);
  return sub_181FEC51C;
}

uint64_t sub_181FEC51C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 56);
  if (a2)
  {
    sub_181E6550C(*a1);
    sub_181AB612C(v5);
    *(v3 + 56) = v4;
    *(v3 + 64) = v2;

    return sub_181AB612C(v4);
  }

  else
  {
    result = sub_181AB612C(*(v3 + 56));
    *(v3 + 56) = v4;
    *(v3 + 64) = v2;
  }

  return result;
}

uint64_t NWListener.Service.txtRecord.getter()
{
  v1 = *(v0 + 88);
  sub_181F49B44(v1, *(v0 + 96));
  return v1;
}

_BYTE *(*NWListener.Service.noAutoRename.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 104);
  return sub_181FEC620;
}

_WORD *(*NWListener.Service.invitation.modify(uint64_t a1))(_WORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 105);
  return sub_181FEC668;
}

uint64_t NWListener.Service.init(name:type:domain:txtRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 72) = xmmword_182AE8230;
  *(a9 + 104) = 0;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  result = sub_181AB612C(0);
  *a9 = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 105) = 3;
  return result;
}

uint64_t NWListener.Service.init(name:type:domain:txtRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a7;
  v10 = a7[1];
  *(a8 + 72) = xmmword_182AE8230;
  *(a8 + 104) = 0;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 88) = xmmword_182AE8230;
  result = sub_181AB612C(0);
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  *a8 = 0;
  *(a8 + 105) = 3;
  return result;
}

uint64_t NWListener.Service.init(applicationService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 72) = xmmword_182AE8230;
  *(a3 + 104) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 88) = xmmword_182AE8230;
  result = sub_181AB612C(0);
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *a3 = 1;
  *(a3 + 105) = 3;
  return result;
}

uint64_t NWListener.Service.init(applicationService:invitation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 72) = xmmword_182AE8230;
  *(a4 + 104) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 88) = xmmword_182AE8230;
  v5 = *a3;
  result = sub_181AB612C(0);
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *a4 = 1;
  *(a4 + 105) = v5;
  return result;
}

uint64_t NWListener.Service.init(name:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 104) = 0;
  *(a5 + 105) = 3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 88) = xmmword_182AE8230;
  *(a5 + 24) = a1;
  *(a5 + 32) = a2;
  *a5 = 1;
  result = sub_181D9D680(0, 0xF000000000000000);
  *(a5 + 72) = a3;
  *(a5 + 80) = a4;
  return result;
}

double NWListener.Service.init(name:pairingConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  sub_181FF0C94();
  v8 = sub_182AD1C68();
  v10 = v9;

  sub_181D9D680(v6, v7);

  sub_181D9D680(0, 0xF000000000000000);
  sub_181AB612C(0);
  sub_181D9D680(0, 0xF000000000000000);
  *a4 = 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = v8;
  *(a4 + 80) = v10;
  result = 0.0;
  *(a4 + 88) = xmmword_182AE8230;
  *(a4 + 104) = 0;
  *(a4 + 105) = 3;
  return result;
}

void sub_181FEC9D0()
{
  if (*v0 != 1)
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    txt_record = *(v0 + 64);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 104);
    if (*(v0 + 16))
    {
      v11 = (sub_182AD3048() + 32);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_182AD3048();
    if (v6)
    {
      v13 = (sub_182AD3048() + 32);
    }

    else
    {
      v13 = 0;
    }

    bonjour_service = nw_advertise_descriptor_create_bonjour_service(v11, (v12 + 32), v13);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v8 >> 60 == 15)
    {
      if (v7)
      {
        if (!bonjour_service)
        {
LABEL_24:
          __break(1u);
          return;
        }

        nw_advertise_descriptor_set_txt_record_object(bonjour_service, txt_record);
      }

      if (v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_181F49B44(v9, v8);
      sub_181F49B44(v9, v8);
      swift_unknownObjectRetain();
      sub_181FEFF44(v9, v8, bonjour_service, v9, v8);
      sub_181D9D680(v9, v8);
      if (v10)
      {
LABEL_17:
        if (bonjour_service)
        {
          nw_advertise_descriptor_set_no_auto_rename(bonjour_service, 1);
          return;
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    if (bonjour_service)
    {
      return;
    }

    goto LABEL_23;
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 105);
  v4 = sub_182AD3048();
  application_service = nw_advertise_descriptor_create_application_service((v4 + 32));

  if (v3 != 3)
  {
    nw_advertise_descriptor_set_invitation(application_service, (v3 >> 8) + 1, v3 + 1);
  }

  if (v1 >> 60 != 15)
  {
    swift_unknownObjectRetain();
    sub_181F49B44(v2, v1);
    sub_181FEFDDC(v2, v1, application_service);
    sub_181D9D680(v2, v1);
  }
}

uint64_t (*NWListener.newConnectionHandler.getter())(uint64_t a1)
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181FF0CE8;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181FCD148;
}

uint64_t sub_181FECCC0@<X0>(void *a1@<X8>)
{
  result = NWListener.newConnectionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181FF1D18;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FECD5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181FCE5A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWListener.newConnectionHandler.setter(v4, v3);
}

uint64_t (*NWListener.newConnectionHandler.modify(uint64_t (**a1)(uint64_t)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181FF1D18;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181FCE5A8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FECF14;
}

uint64_t (*NWListener.newConnectionGroupHandler.getter())(uint64_t)
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181FF1D18;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181FCE5A8;
}

uint64_t sub_181FED024@<X0>(void *a1@<X8>)
{
  result = NWListener.newConnectionGroupHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181FF1D18;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FED094(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181FCE5A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWListener.newConnectionGroupHandler.setter(v4, v3);
}

void NWListener.newConnectionGroupHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 52);
  sub_181EC7ABC(&v5[4]);
  os_unfair_lock_unlock(v5 + 52);
  if (a1)
  {
    v6 = *(v2 + 24);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181FF0D14;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D8BD0C;
    aBlock[3] = &block_descriptor_39;
    v8 = _Block_copy(aBlock);

    nw_listener_set_new_connection_group_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1);
  }

  else
  {
    nw_listener_set_new_connection_handler(*(v2 + 24), 0);
  }
}

uint64_t sub_181FED254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  sub_181AA39C0(a2);
  result = sub_181A554F4(v6);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

uint64_t sub_181FED2B4(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for NWConnectionGroup();
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  result = sub_18222D15C(v3);
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t (*NWListener.newConnectionGroupHandler.modify(uint64_t (**a1)(uint64_t)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181FF1D18;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181FCE5A8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FED434;
}

void NWListener.state.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 200);
  *(a1 + 4) = *(v3 + 204);
  *a1 = v4;

  os_unfair_lock_unlock((v3 + 208));
}

uint64_t (*NWListener.stateUpdateHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181F9DBE4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181F9DC70;
}

uint64_t sub_181FED594@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NWListener.stateUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FED604(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWListener.stateUpdateHandler.setter(v4, v3);
}

uint64_t (*NWListener.stateUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FED784;
}

void NWListener.service.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 160);
  v15 = *(v3 + 144);
  v5 = v15;
  v16[0] = v4;
  *(v16 + 11) = *(v3 + 171);
  v6 = *(v16 + 11);
  v7 = *(v3 + 96);
  v12[0] = *(v3 + 80);
  v12[1] = v7;
  v8 = *(v3 + 128);
  v10 = *(v3 + 80);
  v9 = *(v3 + 96);
  v13 = *(v3 + 112);
  v14 = v8;
  a1[2] = v13;
  a1[3] = v8;
  a1[4] = v5;
  a1[5] = v4;
  *(a1 + 91) = v6;
  *a1 = v10;
  a1[1] = v9;
  sub_181FF0D1C(v12, &v11);
  os_unfair_lock_unlock((v3 + 208));
}

__n128 sub_181FED850@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 160);
  v15 = *(v3 + 144);
  v16[0] = v4;
  *(v16 + 11) = *(v3 + 171);
  v5 = *(v3 + 96);
  v11 = *(v3 + 80);
  v12 = v5;
  v6 = *(v3 + 128);
  v13 = *(v3 + 112);
  v14 = v6;
  sub_181FF0D1C(&v11, &v10);
  os_unfair_lock_unlock((v3 + 208));
  v7 = v16[0];
  *(a2 + 64) = v15;
  *(a2 + 80) = v7;
  *(a2 + 91) = *(v16 + 11);
  v8 = v12;
  *a2 = v11;
  *(a2 + 16) = v8;
  result = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = result;
  return result;
}

void sub_181FED8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 208));
  sub_181FF1D1C((v2 + 16));
  os_unfair_lock_unlock((v2 + 208));
}

uint64_t NWListener.service.setter(_OWORD *a1)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 91);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v5 = *(v1 + 16);
  os_unfair_lock_lock((v5 + 208));
  sub_181FF0D8C((v5 + 16));
  os_unfair_lock_unlock((v5 + 208));
  return sub_181F49A88(v7, &qword_1EA83A230);
}

void sub_181FED9F4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 80);
  v33 = *(a2 + 64);
  v7 = v33;
  v34[0] = v6;
  *(v34 + 11) = *(a2 + 91);
  v8 = *(a2 + 16);
  v29 = *a2;
  v30 = v8;
  v9 = *(a2 + 48);
  v11 = *a2;
  v10 = *(a2 + 16);
  v31 = *(a2 + 32);
  v12 = v31;
  v32 = v9;
  v13 = a1[5];
  v35[0] = a1[4];
  v35[1] = v13;
  *(v36 + 11) = *(a1 + 155);
  v14 = a1[9];
  v35[4] = a1[8];
  v36[0] = v14;
  v15 = a1[7];
  v35[2] = a1[6];
  v35[3] = v15;
  a1[4] = v11;
  a1[5] = v10;
  *(a1 + 155) = *(a2 + 91);
  v16 = *(a2 + 80);
  a1[8] = v7;
  a1[9] = v16;
  a1[6] = v12;
  a1[7] = v5;
  sub_181FF0D1C(a2, v27);
  sub_181F49A88(v35, &qword_1EA83A230);
  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = *(a2 + 16);
    v21[7] = *a2;
    v21[8] = v18;
    v24 = *(a2 + 56);
    v25 = *(a2 + 72);
    *v26 = *(a2 + 88);
    *&v26[15] = *(a2 + 103);
    v23 = *(a2 + 40);
    v19 = *(a3 + 24);
    v22 = v17;
    v27[0] = v29;
    v27[1] = v30;
    *(v28 + 11) = *(v34 + 11);
    v27[4] = v33;
    v28[0] = v34[0];
    v27[2] = v31;
    v27[3] = v32;
    sub_181FF1CB8(v27, v21);
    sub_181FEC9D0();
    nw_listener_set_advertise_descriptor(v19, v20);
    sub_181F49A88(a2, &qword_1EA83A230);
    swift_unknownObjectRelease();
  }

  else
  {
    nw_listener_set_advertise_descriptor(*(a3 + 24), 0);
  }
}

void (*NWListener.service.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x240uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 560) = v1;
  v5 = *(v1 + 16);
  *(v3 + 568) = v5;
  os_unfair_lock_lock(v5 + 52);
  v6 = *&v5[20]._os_unfair_lock_opaque;
  v7 = *&v5[28]._os_unfair_lock_opaque;
  v4[1] = *&v5[24]._os_unfair_lock_opaque;
  v4[2] = v7;
  *v4 = v6;
  v8 = *&v5[32]._os_unfair_lock_opaque;
  v9 = *&v5[36]._os_unfair_lock_opaque;
  v10 = *&v5[40]._os_unfair_lock_opaque;
  *(v4 + 91) = *(&v5[42]._os_unfair_lock_opaque + 3);
  v4[4] = v9;
  v4[5] = v10;
  v4[3] = v8;
  memmove(v4 + 21, &v5[20], 0x6BuLL);
  sub_181FF0D1C(v4, (v4 + 28));
  os_unfair_lock_unlock(v5 + 52);
  return sub_181FEDC48;
}

void sub_181FEDC48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 336);
  v4 = *(*a1 + 568);
  v5 = *(*a1 + 416);
  if (a2)
  {
    *(v2 + 176) = *(*a1 + 400);
    *(v2 + 192) = v5;
    *(v2 + 203) = *(v3 + 91);
    v6 = v3[1];
    *(v2 + 112) = *v3;
    *(v2 + 128) = v6;
    v7 = v3[3];
    *(v2 + 144) = v3[2];
    *(v2 + 160) = v7;
    MEMORY[0x1EEE9AC00](a1);
    sub_181FF0D1C(v2 + 112, v2 + 448);
    os_unfair_lock_lock((v4 + 208));
    sub_181FF1D1C((v4 + 16));
    os_unfair_lock_unlock((*(v2 + 568) + 208));
    sub_181F49A88(v2 + 112, &qword_1EA83A230);
    v8 = v3[5];
    *(v2 + 512) = v3[4];
    *(v2 + 528) = v8;
    *(v2 + 539) = *(v3 + 91);
    v9 = v3[1];
    *(v2 + 448) = *v3;
    *(v2 + 464) = v9;
    v10 = v3[3];
    *(v2 + 480) = v3[2];
    *(v2 + 496) = v10;
    v11 = v2 + 448;
  }

  else
  {
    *(v2 + 288) = *(*a1 + 400);
    *(v2 + 304) = v5;
    *(v2 + 315) = *(v3 + 91);
    v12 = v3[1];
    *(v2 + 224) = *v3;
    *(v2 + 240) = v12;
    v13 = v3[3];
    *(v2 + 256) = v3[2];
    *(v2 + 272) = v13;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v4 + 208));
    sub_181FF1D1C((v4 + 16));
    os_unfair_lock_unlock((v4 + 208));
    v11 = v2 + 224;
  }

  sub_181F49A88(v11, &qword_1EA83A230);
  free(v2);
}

void sub_181FEDE20(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    nw_listener_set_new_connection_limit(*(*a2 + 24), v3);
    return;
  }

  __break(1u);
}

void NWListener.newConnectionLimit.setter(unint64_t new_connection_limit)
{
  if ((new_connection_limit & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(new_connection_limit))
  {
    nw_listener_set_new_connection_limit(*(v1 + 24), new_connection_limit);
    return;
  }

  __break(1u);
}

void (*NWListener.newConnectionLimit.modify(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = v3;
  *a1 = nw_listener_get_new_connection_limit(v3);
  return sub_181FEDEB8;
}

void sub_181FEDEB8(unint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v3))
    {
LABEL_7:
      nw_listener_set_new_connection_limit(a1[1], v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v3))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t NWListener.port.getter@<X0>(uint64_t a1@<X8>)
{
  result = nw_listener_get_port(*(v1 + 24));
  *a1 = result;
  *(a1 + 2) = 0;
  return result;
}

uint64_t (*NWListener.serviceRegistrationUpdateHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181C571A4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181C4DBD0;
}

uint64_t sub_181FEDFF4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NWListener.serviceRegistrationUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FEE064(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWListener.serviceRegistrationUpdateHandler.setter(v4, v3);
}

void NWListener.serviceRegistrationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 52);
  sub_181E61C48(&v5[4]);
  os_unfair_lock_unlock(v5 + 52);
  if (a1)
  {
    v6 = *(v2 + 24);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181FF0DA8;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181FEE4AC;
    aBlock[3] = &block_descriptor_77;
    v8 = _Block_copy(aBlock);

    nw_listener_set_advertised_endpoint_changed_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1);
  }

  else
  {
    nw_listener_set_advertised_endpoint_changed_handler(*(v2 + 24), 0);
  }
}

uint64_t sub_181FEE224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  sub_181AA39C0(a2);
  result = sub_181A554F4(v6);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  return result;
}

uint64_t sub_181FEE284(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = type metadata accessor for NWListener.ServiceRegistrationChange();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NWEndpoint();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_unknownObjectRetain();
  sub_181B80998(v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_181F49A88(v9, &qword_1EA839360);
  }

  sub_181B81180(v9, v13);
  sub_181FE4EE0(v13, v6);
  swift_storeEnumTagMultiPayload();
  a3(v6);
  sub_181FF1C58(v6, type metadata accessor for NWListener.ServiceRegistrationChange);
  return sub_181FF1C58(v13, type metadata accessor for NWEndpoint);
}

uint64_t sub_181FEE4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

uint64_t (*NWListener.serviceRegistrationUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FEE604;
}

uint64_t sub_181FEE644(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

void *sub_181FEE6E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A08);
  v5 = swift_allocObject();
  *(v5 + 208) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 171) = 0u;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 204) = 128;
  v2[3] = a1;
  v2[4] = a2;
  v2[2] = v5;
  return v2;
}

uint64_t NWListener.__allocating_init(_:)(void *a1)
{
  v2 = nw_listener_copy_parameters(a1);
  type metadata accessor for NWParameters();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  *(v3 + 16) = v4;
  v5 = swift_allocObject();
  sub_181FEE6E8(a1, v3);
  return v5;
}

void NWListener.__allocating_init(applicationService:using:)(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v5 = swift_allocObject();

  NWListener.init(using:on:)(v6, &v14);
  if (v2)
  {
  }

  else
  {

    v7 = sub_181AB612C(0);
    LOBYTE(v9[0]) = 1;
    v9[1] = 0;
    *&v10 = 0;
    *(&v10 + 1) = a1;
    *v11 = a2;
    memset(&v11[8], 0, 32);
    v12 = 0;
    *v13 = xmmword_182AEE940;
    *&v13[16] = 0xF000000000000000;
    v13[24] = 0;
    *&v13[25] = 3;
    v19 = 0uLL;
    v20[0] = xmmword_182AEE940;
    *(v20 + 11) = *&v13[11];
    v15 = v9[0];
    v16 = v10;
    v17 = *v11;
    v18 = *&v11[16];
    v8 = *(v5 + 16);
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock((v8 + 208));
    sub_181FF1D1C((v8 + 16));
    os_unfair_lock_unlock((v8 + 208));

    sub_181FF0DB0(v9);
  }
}

uint64_t NWListener.__allocating_init(connection:parameters:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));
  v6 = nw_listener_create_with_connection(v3, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = swift_allocObject();
    sub_181FEE6E8(v6, a2);
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t NWListener.__allocating_init(launchd:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));
  v6 = sub_182AD3048();

  v7 = nw_listener_create_with_launchd_key(v5, (v6 + 32));
  swift_unknownObjectRelease();

  v8 = swift_allocObject();
  sub_181FEE6E8(v7, a3);
  return v8;
}

uint64_t NWListener.__allocating_init(launchdSocketKey:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));
  v6 = sub_182AD3048();
  v7 = nw_listener_create_with_launchd_key(v5, (v6 + 32));
  swift_unknownObjectRelease();

  v8 = swift_allocObject();
  sub_181FEE6E8(v7, a3);

  return v8;
}

void *NWListener.queue.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 192);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 208));
  return v2;
}

uint64_t static NWListener.registrationIterator(on:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F70);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = *a1;
  v10 = 128;
  v11 = v6;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8790], v3);
  return sub_182AD3738();
}

uint64_t NWListener.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t NWListener.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_181FEEDC0()
{
  v1 = [*(*v0 + 24) description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t sub_181FEEE34(uint64_t a1)
{
  v2 = sub_181FF0DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEEE70(uint64_t a1)
{
  v2 = sub_181FF0DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181FEEEAC(uint64_t a1)
{
  v2 = sub_181FF0E34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEEEE8(uint64_t a1)
{
  v2 = sub_181FF0E34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWPairingType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0DE0();
  sub_182AD4638();
  sub_181FF0E34();
  sub_182AD4098();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t NWPairingType.hashValue.getter()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t NWPairingType.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A30);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A38);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0DE0();
  sub_182AD45E8();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_182AD4078();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_181F9DC14() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_182AD3C98();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
    *v16 = &type metadata for NWPairingType;
    sub_182AD3F78();
    sub_182AD3C88();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_181FF0E34();
  sub_182AD3F58();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_181FEF4CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0DE0();
  sub_182AD4638();
  sub_181FF0E34();
  sub_182AD4098();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_181FEF6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7235952 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181FEF72C(uint64_t a1)
{
  v2 = sub_181FF0E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEF768(uint64_t a1)
{
  v2 = sub_181FF0E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181FEF7A4(uint64_t a1)
{
  v2 = sub_181FF0EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEF7E0(uint64_t a1)
{
  v2 = sub_181FF0EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWPairingValue.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A48);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0E88();
  sub_182AD4638();
  sub_181FF0EDC();
  sub_182AD4098();
  v11 = v14;
  sub_182AD40E8();
  (*(v3 + 8))(v5, v11);
  return (*(v7 + 8))(v9, v6);
}

uint64_t NWPairingValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A68);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A70);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0E88();
  sub_182AD45E8();
  if (v2)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v10 = v33;
  v11 = v28;
  v12 = sub_182AD4078();
  v13 = (2 * *(v12 + 16)) | 1;
  v29 = v12;
  v30 = v12 + 32;
  v31 = 0;
  v32 = v13;
  v14 = v9;
  if ((sub_181F9DC14() & 1) != 0 || v31 != v32 >> 1)
  {
    v15 = sub_182AD3C98();
    swift_allocError();
    v16 = v7;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
    *v18 = &type metadata for NWPairingValue;
    sub_182AD3F78();
    sub_182AD3C88();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v11 + 8))(v9, v16);
    swift_unknownObjectRelease();
    a1 = v26;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_181FF0EDC();
  sub_182AD3F58();
  v20 = sub_182AD3FC8();
  v22 = v21;
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v14, v7);
  swift_unknownObjectRelease();
  v23 = v26;
  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_181FEFDDC(uint64_t a1, unint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v7 = a3;
      v6 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v7 = a3;
LABEL_9:
      nw_advertise_descriptor_set_custom_service(v7, v11, v6);
      return swift_unknownObjectRelease();
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  sub_181FF0214(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_181FEFF44(uint64_t result, unint64_t a2, NSObject *a3, uint64_t a4, unint64_t a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_19;
    }

    v28[0] = result;
    LOWORD(v28[1]) = a2;
    BYTE2(v28[1]) = BYTE2(a2);
    BYTE3(v28[1]) = BYTE3(a2);
    BYTE4(v28[1]) = BYTE4(a2);
    BYTE5(v28[1]) = BYTE5(a2);
    if (!a3)
    {
      __break(1u);
      goto LABEL_62;
    }

    v9 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v9 != 2)
      {
LABEL_39:
        v18 = 0;
        goto LABEL_51;
      }

      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v18 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
        goto LABEL_51;
      }

      __break(1u);
LABEL_35:
      if (v19 == 2)
      {
        v22 = *(a4 + 16);
        v21 = *(a4 + 24);
        v18 = v21 - v22;
        if (!__OFSUB__(v21, v22))
        {
          goto LABEL_51;
        }

        __break(1u);
      }

      goto LABEL_39;
    }

    if (!v9)
    {
LABEL_30:
      v18 = BYTE6(a5);
LABEL_51:
      v26 = v28;
      v27 = a3;
LABEL_55:
      nw_advertise_descriptor_set_txt_record(v27, v26, v18);
      swift_unknownObjectRelease();
      return sub_181C1F2E4(a4, a5);
    }

    LODWORD(v8) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      goto LABEL_50;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    memset(v28, 0, 14);
    if (a3)
    {
      v19 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v19)
        {
          LODWORD(v8) = HIDWORD(a4) - a4;
          if (!__OFSUB__(HIDWORD(a4), a4))
          {
LABEL_50:
            v18 = v8;
            goto LABEL_51;
          }

          goto LABEL_59;
        }

        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v10 = *(result + 16);
  v11 = sub_182AD1D58();
  if (v11)
  {
    v12 = sub_182AD1D88();
    if (__OFSUB__(v10, v12))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v11 += v10 - v12;
  }

  result = sub_182AD1D78();
  if (!a3)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v13 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v13 != 2)
    {
LABEL_48:
      v18 = 0;
      goto LABEL_54;
    }

    v23 = *(a4 + 16);
    v17 = *(a4 + 24);
    v18 = v17 - v23;
    if (!__OFSUB__(v17, v23))
    {
      goto LABEL_54;
    }

    __break(1u);
LABEL_44:
    if (v17 == 2)
    {
      v25 = *(a4 + 16);
      v24 = *(a4 + 24);
      v18 = v24 - v25;
      if (!__OFSUB__(v24, v25))
      {
        goto LABEL_54;
      }

      __break(1u);
    }

    goto LABEL_48;
  }

  if (!v13)
  {
LABEL_26:
    v18 = BYTE6(a5);
LABEL_54:
    v27 = a3;
    v26 = v11;
    goto LABEL_55;
  }

  v14 = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    goto LABEL_53;
  }

  __break(1u);
LABEL_19:
  v15 = result;
  if (result > result >> 32)
  {
    __break(1u);
    goto LABEL_57;
  }

  v11 = sub_182AD1D58();
  if (!v11)
  {
    goto LABEL_23;
  }

  v16 = sub_182AD1D88();
  if (__OFSUB__(v15, v16))
  {
    goto LABEL_58;
  }

  v11 += v15 - v16;
LABEL_23:
  result = sub_182AD1D78();
  if (a3)
  {
    v17 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v17)
      {
        goto LABEL_26;
      }

      v14 = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_53:
        v18 = v14;
        goto LABEL_54;
      }

LABEL_60:
      __break(1u);
    }

    goto LABEL_44;
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_181FF0214(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_182AD1D58();
  v8 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_182AD1D78();
  if (v8)
  {
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    nw_advertise_descriptor_set_custom_service(a4, v8, v12);
  }

  return swift_unknownObjectRelease();
}

uint64_t _s7Network10NWListenerC7ServiceV10InvitationV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v5 = 0x646F70656D6F68;
  if (v2 != 1)
  {
    v5 = 0x72656B61657073;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7496035;
  }

  if (v2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0x646F70656D6F68;
  if (*a2 != 1)
  {
    v8 = 0x72656B61657073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7496035;
  }

  if (*a2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {

    goto LABEL_21;
  }

  v11 = sub_182AD4268();

  v12 = 0;
  if (v11)
  {
LABEL_21:
    v13 = 0xE900000000000079;
    v14 = 0x74696D69786F7270;
    v15 = 0xE700000000000000;
    v16 = 0x73646E65697266;
    if (v3 != 1)
    {
      v16 = 0x656E6F7972657665;
      v15 = 0xE800000000000000;
    }

    if (v3)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x74696D69786F7270;
    }

    if (v3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xE900000000000079;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        v13 = 0xE800000000000000;
        if (v17 != 0x656E6F7972657665)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v13 = 0xE700000000000000;
      v14 = 0x73646E65697266;
    }

    if (v17 != v14)
    {
      goto LABEL_37;
    }

LABEL_35:
    if (v18 == v13)
    {
      v12 = 1;
LABEL_38:

      return v12 & 1;
    }

LABEL_37:
    v12 = sub_182AD4268();
    goto LABEL_38;
  }

  return v12 & 1;
}

BOOL _s7Network10NWListenerC7ServiceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v16 = *(a2 + 88);
  v15 = *(a2 + 96);
  v17 = *(a2 + 104);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v60 = *(a2 + 64);
    v61 = *(a1 + 88);
    v57 = *(a2 + 56);
    v58 = *(a1 + 56);
    v59 = *(a1 + 64);
    v55 = *(a2 + 105);
    v56 = *(a1 + 105);
    if (*(a1 + 8) != *(a2 + 8) || v3 != v10)
    {
      v53 = *(a2 + 48);
      v54 = *(a2 + 88);
      v52 = *(a2 + 96);
      v18 = *(a2 + 104);
      v19 = *(a1 + 104);
      v20 = *(a1 + 96);
      v21 = *(a1 + 48);
      v22 = *(a2 + 40);
      v23 = sub_182AD4268();
      v12 = v22;
      v7 = v21;
      v8 = v20;
      v9 = v19;
      v17 = v18;
      v15 = v52;
      v14 = v53;
      v16 = v54;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v60 = *(a2 + 64);
    v61 = *(a1 + 88);
    v57 = *(a2 + 56);
    v58 = *(a1 + 56);
    v59 = *(a1 + 64);
    v55 = *(a2 + 105);
    v56 = *(a1 + 105);
    if (v10)
    {
      return 0;
    }
  }

  if (v4 != v11 || v6 != v13)
  {
    v24 = v14;
    v25 = v8;
    v26 = v7;
    v27 = v12;
    v28 = sub_182AD4268();
    v12 = v27;
    v14 = v24;
    v7 = v26;
    v8 = v25;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v14)
    {
      return 0;
    }

    if (v5 != v12 || v7 != v14)
    {
      v29 = v8;
      v30 = sub_182AD4268();
      v8 = v29;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    v31 = v61;
    if (v15 >> 60 != 15)
    {
      v36 = v15;
      v37 = v8;
      sub_181F49B44(v61, v8);
      sub_181F49B44(v16, v36);
      sub_181F49B44(v61, v37);
      sub_181F49B44(v16, v36);
      v38 = sub_18206EADC(v61, v37, v16, v36);
      sub_181D9D680(v16, v36);
      sub_181D9D680(v16, v36);
      sub_181D9D680(v61, v37);
      sub_181D9D680(v61, v37);
      result = 0;
      if (v38 & 1) == 0 || ((v9 ^ v17))
      {
        return result;
      }

      goto LABEL_28;
    }

LABEL_23:
    v33 = v31;
    v34 = v8;
    sub_181F49B44(v31, v8);
    sub_181F49B44(v16, v15);
    sub_181D9D680(v33, v34);
    sub_181D9D680(v16, v15);
    return 0;
  }

  v31 = v61;
  if (v15 >> 60 != 15)
  {
    goto LABEL_23;
  }

  v32 = v8;
  sub_181F49B44(v61, v8);
  sub_181F49B44(v16, v15);
  sub_181D9D680(v61, v32);
  if (v9 != v17)
  {
    return 0;
  }

LABEL_28:
  if (!v58)
  {
    v39 = v57;
    if (!v57)
    {
      sub_181E6550C(0);
      sub_181E6550C(0);
      sub_181AB612C(0);
      goto LABEL_35;
    }

LABEL_33:
    sub_181E6550C(v58);
    sub_181E6550C(v39);
    sub_181AB612C(v58);
    sub_181AB612C(v39);
    return 0;
  }

  v39 = v57;
  if (!v57)
  {
    goto LABEL_33;
  }

  sub_181E6550C(v58);
  sub_181E6550C(v57);
  is_equal = nw_txt_record_is_equal(v59, v60);
  sub_181AB612C(v57);
  sub_181AB612C(v58);
  if (!is_equal)
  {
    return 0;
  }

LABEL_35:
  result = v55 == 3 && v56 == 3;
  if (v56 == 3 || v55 == 3)
  {
    return result;
  }

  v41 = 7496035;
  if (v56)
  {
    v42 = 0xE700000000000000;
    if (v56 == 1)
    {
      v43 = 0x646F70656D6F68;
    }

    else
    {
      v43 = 0x72656B61657073;
    }
  }

  else
  {
    v42 = 0xE300000000000000;
    v43 = 7496035;
  }

  if (v55)
  {
    v44 = 0xE700000000000000;
    if (v55 == 1)
    {
      v41 = 0x646F70656D6F68;
    }

    else
    {
      v41 = 0x72656B61657073;
    }
  }

  else
  {
    v44 = 0xE300000000000000;
  }

  if (v43 != v41 || v42 != v44)
  {
    v45 = sub_182AD4268();

    if (v45)
    {
      goto LABEL_54;
    }

    return 0;
  }

LABEL_54:
  v46 = v55 >> 8;
  v47 = 0xE900000000000079;
  v48 = 0x74696D69786F7270;
  if (v56 >> 8)
  {
    if (v56 >> 8 == 1)
    {
      v49 = 0xE700000000000000;
      v50 = 0x73646E65697266;
    }

    else
    {
      v49 = 0xE800000000000000;
      v50 = 0x656E6F7972657665;
    }
  }

  else
  {
    v50 = 0x74696D69786F7270;
    v49 = 0xE900000000000079;
  }

  if (v46)
  {
    if (v46 == 1)
    {
      v47 = 0xE700000000000000;
      v48 = 0x73646E65697266;
    }

    else
    {
      v47 = 0xE800000000000000;
      v48 = 0x656E6F7972657665;
    }
  }

  if (v50 == v48 && v49 == v47)
  {

    return 1;
  }

  else
  {
    v51 = sub_182AD4268();

    return v51 & 1;
  }
}

void sub_181FF0A24(__int128 *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[2];
  v20 = a1[3];
  v21 = v2;
  v22[0] = v3;
  *(v22 + 11) = *(a1 + 91);
  v5 = a1[1];
  v17 = *a1;
  v18 = v5;
  v19 = v4;
  v10 = 0;
  type metadata accessor for NWListener();
  v6 = swift_allocObject();

  v8 = NWListener.init(using:on:)(v7, &v10);
  if (!v1)
  {
    v15 = v21;
    v16[0] = v22[0];
    *(v16 + 11) = *(v22 + 11);
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v9 = *(v6 + 16);
    MEMORY[0x1EEE9AC00](v8);

    os_unfair_lock_lock((v9 + 208));
    sub_181FF1D1C((v9 + 16));
    os_unfair_lock_unlock((v9 + 208));
  }

  sub_181FF0DB0(&v17);
}

unint64_t sub_181FF0B98()
{
  result = qword_1EA8399A8;
  if (!qword_1EA8399A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399A8);
  }

  return result;
}

unint64_t sub_181FF0BEC()
{
  result = qword_1EA8399B8;
  if (!qword_1EA8399B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399B8);
  }

  return result;
}

unint64_t sub_181FF0C40()
{
  result = qword_1EA8399D8;
  if (!qword_1EA8399D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399D8);
  }

  return result;
}

unint64_t sub_181FF0C94()
{
  result = qword_1EA8399F0;
  if (!qword_1EA8399F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399F0);
  }

  return result;
}

uint64_t sub_181FF0D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_181FF0DE0()
{
  result = qword_1EA839A20;
  if (!qword_1EA839A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A20);
  }

  return result;
}

unint64_t sub_181FF0E34()
{
  result = qword_1EA839A28;
  if (!qword_1EA839A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A28);
  }

  return result;
}

unint64_t sub_181FF0E88()
{
  result = qword_1EA839A58;
  if (!qword_1EA839A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A58);
  }

  return result;
}

unint64_t sub_181FF0EDC()
{
  result = qword_1EA839A60;
  if (!qword_1EA839A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A60);
  }

  return result;
}

unint64_t sub_181FF0F34()
{
  result = qword_1EA839A78;
  if (!qword_1EA839A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A78);
  }

  return result;
}

unint64_t sub_181FF0F8C()
{
  result = qword_1EA839A80;
  if (!qword_1EA839A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A80);
  }

  return result;
}

unint64_t sub_181FF0FE4()
{
  result = qword_1EA839A88;
  if (!qword_1EA839A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A88);
  }

  return result;
}

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_181FF10C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 107))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181FF1110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 107) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 107) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWListener.Service.Invitation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for NWListener.Service.Invitation(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_181FF1300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181FF1348(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t type metadata accessor for NWListener.ServiceRegistrationChange()
{
  result = qword_1EA839A98;
  if (!qword_1EA839A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181FF1400()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network10NWListenerC7ServiceVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy190_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 174) = *(a2 + 174);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_181FF1514(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 190))
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

uint64_t sub_181FF1570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 188) = 0;
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 190) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 190) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_181FF160C()
{
  result = qword_1EA839AB0;
  if (!qword_1EA839AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AB0);
  }

  return result;
}

unint64_t sub_181FF1664()
{
  result = qword_1EA839AB8;
  if (!qword_1EA839AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AB8);
  }

  return result;
}

unint64_t sub_181FF16BC()
{
  result = qword_1EA839AC0;
  if (!qword_1EA839AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AC0);
  }

  return result;
}

unint64_t sub_181FF1714()
{
  result = qword_1EA839AC8;
  if (!qword_1EA839AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AC8);
  }

  return result;
}

unint64_t sub_181FF176C()
{
  result = qword_1EA839AD0;
  if (!qword_1EA839AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AD0);
  }

  return result;
}

unint64_t sub_181FF17C4()
{
  result = qword_1EA839AD8;
  if (!qword_1EA839AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AD8);
  }

  return result;
}

unint64_t sub_181FF181C()
{
  result = qword_1EA839AE0;
  if (!qword_1EA839AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AE0);
  }

  return result;
}

unint64_t sub_181FF1874()
{
  result = qword_1EA839AE8;
  if (!qword_1EA839AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AE8);
  }

  return result;
}

unint64_t sub_181FF18CC()
{
  result = qword_1EA839AF0;
  if (!qword_1EA839AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AF0);
  }

  return result;
}

unint64_t sub_181FF1924()
{
  result = qword_1EA839AF8;
  if (!qword_1EA839AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AF8);
  }

  return result;
}

unint64_t sub_181FF197C()
{
  result = qword_1EA839B00;
  if (!qword_1EA839B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B00);
  }

  return result;
}

unint64_t sub_181FF19D4()
{
  result = qword_1EA839B08;
  if (!qword_1EA839B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B08);
  }

  return result;
}

unint64_t sub_181FF1A2C()
{
  result = qword_1EA839B10;
  if (!qword_1EA839B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B10);
  }

  return result;
}

unint64_t sub_181FF1A84()
{
  result = qword_1EA839B18;
  if (!qword_1EA839B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B18);
  }

  return result;
}

uint64_t sub_181FF1AD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44676E6972696170 && a2 == 0xEB00000000617461;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000182BD7990 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x56676E6972696170 && a2 == 0xEC00000065756C61 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000182BD79B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_182AD4268();

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

uint64_t sub_181FF1C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HTTPField.DynamicTableIndexingStrategy.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t HTTPField.init(name:value:)@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a4 + 32) = 0;
  *a4 = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  if ((sub_181CA4798(a2, a3) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
    sub_182AD30A8();

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v10 = sub_181CA1930(v5, v4);
  v12 = v11;

  *(a4 + 40) = v10;
  *(a4 + 48) = v12;
  return result;
}

uint64_t sub_181FF1F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = *(v14 + 2);
  v17 = *(v14 + 3);
  *(a6 + 32) = 0;
  *a6 = v15;
  *(a6 + 16) = v16;
  *(a6 + 24) = v17;
  (*(v11 + 16))(v13);
  v18 = sub_18228717C(v13, a3, a4);
  v19 = a5(v18);
  v21 = v20;

  result = (*(v11 + 8))(a2, a3);
  *(a6 + 40) = v19;
  *(a6 + 48) = v21;
  return result;
}

uint64_t HTTPField.name.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 HTTPField.name.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t HTTPField.value.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if ((sub_181CA4798(v1, v2) & 1) == 0)
  {
    return sub_182287700(v1, v2);
  }

  return v1;
}

uint64_t HTTPField.value.setter(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  if ((sub_181CA4798(a1, a2) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
    sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
    sub_182AD30A8();

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = sub_181CA1930(v5, v4);
  v8 = v7;

  *(v3 + 40) = v6;
  *(v3 + 48) = v8;
  return result;
}

void (*HTTPField.value.modify(uint64_t *a1))(unint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v3 + 56) = v6;
  if (sub_181CA4798(v5, v6))
  {
  }

  else
  {
    v5 = sub_182287700(v5, v6);
    v6 = v7;
  }

  v4[8] = 0;
  v4[4] = v5;
  v4[5] = v6;
  return sub_181FF235C;
}

void sub_181FF235C(unint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = sub_181CA4798(v4, v5);
  if (a2)
  {
    if (v6)
    {
    }

    else
    {
      *v3 = v4;
      v3[1] = v5;
      v3[2] = sub_1822876F4;
      v3[3] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
      sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
      sub_182AD30A8();
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    v11 = v3[6];
    v12 = sub_181CA1930(v4, v5);
    v14 = v13;

    *(v11 + 40) = v12;
    *(v11 + 48) = v14;
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      *v3 = v4;
      v3[1] = v5;
      v3[2] = sub_1822876F4;
      v3[3] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8);
      sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8);
      sub_182AD30A8();

      v4 = 0;
      v5 = 0xE000000000000000;
    }

    v7 = v3[6];
    v8 = sub_181CA1930(v4, v5);
    v10 = v9;

    *(v7 + 40) = v8;
    *(v7 + 48) = v10;
  }

  free(v3);
}

BOOL sub_181FF2584(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v15[-v10];
  (*(v4 + 16))(v6, a1, a2, v9);
  sub_182AD3268();
  swift_getAssociatedConformanceWitness();
  sub_182AD3A08();
  if (v17)
  {
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    return 1;
  }

  else
  {
    v13 = v16;
    if (v16 != 9 && v16 != 32)
    {
      while (v13 == 9 || v13 == 32 || (v13 & 0x80) != 0 || (v13 - 127) > 0xFFFFFFA1)
      {
        sub_182AD3A08();
        if (v15[13] == 1)
        {
          (*(v8 + 8))(v11, AssociatedTypeWitness);
          return v13 != 32 && v13 != 9;
        }

        v13 = v15[12];
      }
    }

    (*(v8 + 8))(v11, AssociatedTypeWitness);
    return 0;
  }
}