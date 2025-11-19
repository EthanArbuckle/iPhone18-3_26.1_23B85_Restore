uint64_t sub_18227D1BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v3[3] = a1;
  v8 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 + 48);
  v3[2] = a2;
  v14 = (*(a3 + 40) + **(a3 + 40));
  v11 = swift_task_alloc();
  v3[5] = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v3;
  v11[1] = sub_18227D3D4;

  return v14(a1, a1 + v10, v3 + 2, v7, WitnessTable, v8, a3);
}

uint64_t sub_18227D3D4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1821EC0B4;
  }

  else
  {
    v2 = sub_18227FA74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18227D5CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v3[3] = a1;
  v8 = v7;
  v9 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 + 48);
  v3[2] = a2;
  v15 = (*(a3 + 40) + **(a3 + 40));
  v12 = swift_task_alloc();
  v3[5] = v12;
  WitnessTable = swift_getWitnessTable();
  *v12 = v3;
  v12[1] = sub_1820A980C;

  return v15(a1, a1 + v11, v3 + 2, v8, WitnessTable, v9, a3);
}

uint64_t sub_18227D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  locked = type metadata accessor for Connection6.LockedState();
  memset(v18, 0, sizeof(v18));
  *(v3 + 24) = sub_1820C6414(v18, locked);
  v12 = NWEndpoint.nw.getter();
  if (v12)
  {
    v13 = v12;
    if (nw_endpoint_get_type(v12) == nw_endpoint_type_url)
    {
      v14 = *(a2 + 16);
      os_unfair_lock_lock((v14 + 24));
      v15 = *(v14 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v14 + 24));
      nw_parameters_set_url_endpoint(v15, v13);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_181D8E1E8(a1, v10, type metadata accessor for NWEndpoint);
  type metadata accessor for NWConnection(0);
  swift_allocObject();
  v16 = sub_181E60914(v10, a2);
  sub_181F49A88(a3, &qword_1EA83A290);
  sub_181FDAD5C(a1);
  *(v4 + 16) = v16;
  return v4;
}

uint64_t sub_18227DA04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_182279964(a1, v5, v7, v6, v4);
}

uint64_t sub_18227DAE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182276AD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227DBB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1822786BC(a1, v1);
}

uint64_t sub_18227DC4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182276C20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227DD14(uint64_t a1)
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
  v11[1] = sub_181F5EB68;

  return sub_18227B13C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18227DDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_18227B908(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227DEB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1822787C0(a1, v1);
}

uint64_t sub_18227DF54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F54964;

  return sub_18227C930(a1, v4, v5, v6);
}

uint64_t sub_18227E024(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182276D68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227E0EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1822788C4(a1, v1);
}

uint64_t sub_18227E188(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_18227D1BC(a1, v4, v5);
}

uint64_t sub_18227E234(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_18227D5CC(a1, v4, v5);
}

uint64_t sub_18227E2FC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18227E424()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18227E490(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182276EB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227E5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1820AAEE4;

  return sub_18227CA54(a1, a2, a3, v3);
}

uint64_t sub_18227E668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_182277FAC(a1, v4, v5, v6);
}

uint64_t sub_18227E780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6) - 8);
  v15 = *a5 | (*(a5 + 4) << 32);
  v16 = v8 + ((*(v14 + 80) + 16) & ~*(v14 + 80));

  return a8(a1, a2, a3, a4, v15, v16);
}

uint64_t sub_18227E840(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_181F5EB68;

  return sub_18227BC18(a1, a2, a3, v9, v8);
}

uint64_t sub_18227E900(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_181F5EB68;

  return sub_18227B698(a1, a2, a3, v9, v8);
}

uint64_t sub_18227E9E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A130);
  v9 = *a5 | (*(a5 + 4) << 32);

  return sub_18227EA8C(a1, a2, a3, v9);
}

uint64_t sub_18227EA8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((~a4 & 0xFF00000000) != 0)
  {
    v6 = HIDWORD(a4);
    v7 = a4;
    sub_181F4B3B8();
    v8 = swift_allocError();
    *v9 = v7;
    *(v9 + 4) = v6;
LABEL_7:
    aBlock[0] = v8;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v8 = swift_allocError();
    *v10 = 22;
    *(v10 + 4) = 0;
    goto LABEL_7;
  }

  if (a2 >> 60 != 15)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x1E69E7CC0];
    v16 = *(a3 + 16);
    aBlock[4] = sub_181FE5010;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F25CD0;
    aBlock[3] = &block_descriptor_198;
    v17 = _Block_copy(aBlock);
    swift_retain_n();
    sub_181F49B44(a1, a2);

    nw_content_context_foreach_protocol_metadata(v16, v17);

    _Block_release(v17);

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A130);
    sub_182AD34C8();
  }

  sub_181F4B3B8();
  v4 = swift_allocError();
  *v5 = 22;
  *(v5 + 4) = 0;
  swift_willThrow();
  aBlock[0] = v4;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A130);
  return sub_182AD34B8();
}

uint64_t sub_18227ED30(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v13 = *(sub_182AD34D8() - 8);
  v14 = v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80));

  return sub_182279DF4(a1, a2, a3, a4, a5, v14, v11, v12);
}

uint64_t sub_18227EE74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182275AA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227EF44(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_18227606C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_18227F00C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209E954(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18227F0D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182274C78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227F1A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_182275140(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_18227F268()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209D910(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18227F3A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182273C4C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227F470(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_182274288(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_18227F538()
{
  v2 = *(type metadata accessor for NWPath(0) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_181F5EB68;

  return sub_18209CA6C(v4, v5, v6, v7, v0 + v3, v8);
}

uint64_t sub_18227F660(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150);

  return sub_182274130(a1);
}

uint64_t sub_18227F6DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_182272E28(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18227F7AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_182273374(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_18227F874()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48) | (*(v0 + 52) << 32);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209B628(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18227F968(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t static QUICConnectionProtocol.options()()
{
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED411BF0 + 1);
  v1 = unk_1ED411C00;
  v2 = byte_1ED411C08;
  v3 = xmmword_1ED411BF0;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  v4 = swift_allocObject();
  sub_181F49A24(v0, v1, v2);
  sub_181AACB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  swift_allocObject();
  return sub_181AA94EC(v3, v0, v1, v2, v4);
}

void sub_18227FBA4(__int16 a1)
{
  v3 = sub_182AD27A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue);
    if (v13)
    {
      v18 = v9;
      v19 = v8;
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = a1;
      aBlock[4] = sub_1822811F8;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181B7D048;
      aBlock[3] = &block_descriptor_62_1;
      v17 = _Block_copy(aBlock);
      _Block_copy(v12);
      _Block_copy(v12);
      v15 = v13;
      sub_182AD27B8();
      v20 = MEMORY[0x1E69E7CC0];
      sub_182281120(&qword_1ED40F4B0, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
      sub_181AB3DCC(&qword_1ED40F4A0, &unk_1EA839F50);
      sub_182AD3AC8();
      v16 = v17;
      MEMORY[0x1865DA490](0, v11, v6, v17);
      _Block_release(v16);

      _Block_release(v12);
      (*(v4 + 8))(v6, v3);
      (*(v18 + 8))(v11, v19);
    }
  }
}

uint64_t QUICConnectionProtocol.QUICConnectionOptions.datagramEnableFlowID.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  if (result)
  {
    if ((v2 & 0x20) != 0)
    {
      return result;
    }

    v3 = v2 | 0x20;
  }

  else
  {
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFDFLL;
  }

  *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v3;
  return result;
}

uint64_t QUICConnectionProtocol.QUICConnectionOptions.datagramQuarterStreamID.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  if (result)
  {
    if ((v2 & 0x40) != 0)
    {
      return result;
    }

    v3 = v2 | 0x40;
  }

  else
  {
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFBFLL;
  }

  *(v1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v3;
  return result;
}

void sub_18227FF0C(char a1, uint64_t a2)
{
  v5 = sub_182AD27A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateBlock);
  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_maxStreamsUpdateQueue);
    if (v15)
    {
      v20 = v11;
      v21 = v10;
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = a1;
      *(v16 + 32) = a2;
      aBlock[4] = sub_182281100;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181B7D048;
      aBlock[3] = &block_descriptor_35;
      v19 = _Block_copy(aBlock);
      _Block_copy(v14);
      _Block_copy(v14);
      v17 = v15;
      sub_182AD27B8();
      v22 = MEMORY[0x1E69E7CC0];
      sub_182281120(&qword_1ED40F4B0, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
      sub_181AB3DCC(&qword_1ED40F4A0, &unk_1EA839F50);
      sub_182AD3AC8();
      v18 = v19;
      MEMORY[0x1865DA490](0, v13, v8, v19);
      _Block_release(v18);

      _Block_release(v14);
      (*(v6 + 8))(v8, v5);
      (*(v20 + 8))(v13, v21);
    }
  }
}

uint64_t (*QUICConnectionProtocol.QUICConnectionOptions.maxDatagramFrameSize.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_182280258;
}

uint64_t *(*QUICConnectionProtocol.QUICConnectionOptions.datagramEnableFlowID.modify(uint64_t a1))(uint64_t *result, char a2)
{
  v2 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*(v1 + v2) & 0x20) != 0;
  return sub_1822802A0;
}

uint64_t *sub_1822802A0(uint64_t *result, char a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = *(*result + v2);
  if (a2)
  {
    if (*(result + 16))
    {
      if ((v4 & 0x20) != 0)
      {
        return result;
      }

LABEL_7:
      *(v3 + v2) = v4 | 0x20;
      return result;
    }

    goto LABEL_8;
  }

  if (!*(result + 16))
  {
LABEL_8:
    if ((v4 & 0x20) != 0)
    {
      *(v3 + v2) = v4 & 0xFFFFFFFFFFFFFFDFLL;
    }

    return result;
  }

  if ((v4 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t *(*QUICConnectionProtocol.QUICConnectionOptions.datagramQuarterStreamID.modify(uint64_t a1))(uint64_t *result, char a2)
{
  v2 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*(v1 + v2) & 0x40) != 0;
  return sub_18228031C;
}

uint64_t *sub_18228031C(uint64_t *result, char a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = *(*result + v2);
  if (a2)
  {
    if (*(result + 16))
    {
      if ((v4 & 0x40) != 0)
      {
        return result;
      }

LABEL_7:
      *(v3 + v2) = v4 | 0x40;
      return result;
    }

    goto LABEL_8;
  }

  if (!*(result + 16))
  {
LABEL_8:
    if ((v4 & 0x40) != 0)
    {
      *(v3 + v2) = v4 & 0xFFFFFFFFFFFFFFBFLL;
    }

    return result;
  }

  if ((v4 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL sub_18228039C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1822803CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1822803F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1822804B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1822804C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1822C1368();

  *a1 = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall QUICConnectionProtocol.QUICConnectionOptions.serialize()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

uint64_t QUICConnectionProtocol.QUICConnectionOptions.isEqual(to:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    v4 = 1;
  }

  else if (*(v2 + 112) && *(a1 + 112))
  {
    v5 = *(a1 + 120);
    v6 = *(v2 + 120);
    ObjectType = swift_getObjectType();
    v11 = v3;
    v8 = *(v6 + 24);
    swift_unknownObjectRetain();
    v9 = swift_unknownObjectRetain();
    v4 = v8(v9, v5, &v11, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1822805EC(uint64_t a1)
{
  v2 = sub_182AD2808();
  v3 = sub_182AD2808();
  (*(a1 + 16))(a1, v2, v3);
}

uint64_t sub_182280668@<X0>(uint64_t *a1@<X8>)
{
  result = QUICConnectionProtocol.QUICConnectionOptions.deepCopy()();
  *a1 = result;
  return result;
}

uint64_t QUICConnectionProtocol.QUICConnectionInstance.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t QUICConnectionProtocol.QUICConnectionInstance.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t QUICConnectionProtocol.QUICConnectionInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t QUICConnectionProtocol.QUICConnectionInstance.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t QUICConnectionProtocol.newPerProtocolOptions()()
{
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  v0 = swift_allocObject();
  sub_181AACB6C();
  return v0;
}

uint64_t QUICConnectionProtocol.newPerProtocolMetadata()()
{
  type metadata accessor for QUICConnectionProtocol.QUICConnectionMetadata();
  v0 = swift_allocObject();
  sub_181C94C18();
  return v0;
}

char *sub_1822808D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  v2 = swift_allocObject();
  result = sub_181AACB6C();
  *a1 = v2;
  return result;
}

uint64_t sub_182280914@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for QUICConnectionProtocol.QUICConnectionMetadata();
  v2 = swift_allocObject();
  result = sub_181C94C18();
  *a1 = v2;
  return result;
}

uint64_t _s7Network22QUICConnectionProtocolV0B7OptionsC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || a1[7] != a2[7] || a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10] || a1[11] != a2[11] || a1[12] != a2[12] || a1[13] != a2[13] || *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout) != *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout) || *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_streamPathAffinity) != *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_streamPathAffinity))
  {
    return 0;
  }

  v2 = *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S);
  v3 = *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize) == *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize) && *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize) == *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize) && *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize) == *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize) && *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount) == *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount) && *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__ackDelaySize) == *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__ackDelaySize) && *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxPathsPerInterface) == *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxPathsPerInterface) && *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex) == *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex) && *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode) == *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode))
  {
    v4 = *(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
    v5 = *(a2 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
    if ((*(a1 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) & 1) != ((v5 & 1) == 0) && ((v4 >> 1) & 1) != ((v5 & 2) == 0) && ((v4 >> 2) & 1) != ((v5 & 4) == 0) && ((v4 >> 3) & 1) != ((v5 & 8) == 0) && ((v4 >> 4) & 1) != ((v5 & 0x10) == 0) && ((v4 >> 5) & 1) != ((v5 & 0x20) == 0) && ((v4 >> 6) & 1) != ((v5 & 0x40) == 0) && ((v4 >> 7) & 1) != ((v5 & 0x80) == 0) && ((v4 >> 8) & 1) != ((v5 & 0x100) == 0) && ((v4 >> 10) & 1) != ((v5 & 0x400) == 0) && ((v4 >> 11) & 1) != ((v5 & 0x800) == 0) && ((v4 >> 12) & 1) != ((v5 & 0x1000) == 0) && ((v4 >> 14) & 1) != ((v5 & 0x4000) == 0) && ((v4 >> 15) & 1) != ((v5 & 0x8000) == 0) && ((v4 >> 16) & 1) != ((v5 & 0x10000) == 0) && ((v4 >> 17) & 1) != ((v5 & 0x20000) == 0) && ((v4 >> 19) & 1) != ((v5 & 0x80000) == 0) && ((v4 >> 20) & 1) != ((v5 & 0x100000) == 0) && ((v4 >> 21) & 1) != ((v5 & 0x200000) == 0) && ((v4 >> 22) & 1) != ((v5 & 0x400000) == 0) && ((v4 >> 23) & 1) != ((v5 & 0x800000) == 0))
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s7Network22QUICConnectionProtocolV0B8MetadataC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 24) != *(a2 + 24) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_182AD4268();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1;
    v11 = a2;
    v12 = _s7Network18QUICStreamProtocolV0B7OptionsC2eeoiySbAE_AEtFZ_0(*(a1 + 56), *(a2 + 56));
    a2 = v11;
    v13 = v12;
    a1 = v10;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if (!v14)
  {
    if (!v15)
    {
      return *(a1 + 232) == *(a2 + 232);
    }

    return 0;
  }

  if (v14 != v15)
  {
    return 0;
  }

  return *(a1 + 232) == *(a2 + 232);
}

uint64_t sub_182280DEC(uint64_t a1)
{
  result = sub_182281120(&qword_1ED40F848, 255, type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_182280E48(uint64_t a1, uint64_t a2)
{
  result = sub_182281120(&qword_1EA83B9B0, a2, type metadata accessor for QUICConnectionProtocol.QUICConnectionMetadata);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_182280FA4()
{
  result = qword_1EA83B9C8;
  if (!qword_1EA83B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B9C8);
  }

  return result;
}

unint64_t sub_182280FFC()
{
  result = qword_1EA83B9D0;
  if (!qword_1EA83B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B9D0);
  }

  return result;
}

unint64_t sub_182281054()
{
  result = qword_1EA83B9D8;
  if (!qword_1EA83B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B9D8);
  }

  return result;
}

unint64_t sub_1822810AC()
{
  result = qword_1EA83B9E0;
  if (!qword_1EA83B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B9E0);
  }

  return result;
}

uint64_t sub_182281120(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_182281168()
{
  sub_182AD2868();
  v1 = *(v0 + 16);

  sub_1822805EC(v1);
}

uint64_t sub_18228121C()
{
  options_0 = _nw_quic_create_options_0();
  v2 = *(*v0 + 128);
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(*options_0 + 128);
  swift_beginAccess();
  *(options_0 + v4) = v3;

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  LOBYTE(v4) = *(v0 + 40);
  swift_beginAccess();
  v8 = *(options_0 + 24);
  v9 = *(options_0 + 32);
  v10 = *(options_0 + 40);
  *(options_0 + 16) = v5;
  *(options_0 + 24) = v6;
  *(options_0 + 32) = v7;
  *(options_0 + 40) = v4;
  sub_181F49A24(v6, v7, v4);
  sub_181F48350(v8, v9, v10);
  v11 = *(*v0 + 136);
  swift_beginAccess();
  v12 = *(v0 + v11);
  v13 = *(*options_0 + 136);
  swift_beginAccess();
  v14 = *(options_0 + v13);
  *(options_0 + v13) = v12;
  v15 = v12;

  v16 = *(*v0 + 144);
  swift_beginAccess();
  v17 = *(v0 + v16);
  v18 = *(*options_0 + 144);
  swift_beginAccess();
  *(options_0 + v18) = v17;

  v19 = *(*v0 + 176);
  swift_beginAccess();
  LOBYTE(v19) = *(v0 + v19);
  v20 = *(*options_0 + 176);
  swift_beginAccess();
  *(options_0 + v20) = v19;
  v21 = *(*v0 + 184);
  swift_beginAccess();
  v22 = *(v0 + v21);
  v23 = *(*options_0 + 184);
  swift_beginAccess();
  *(options_0 + v23) = v22;
  return options_0;
}

uint64_t ProtocolOptions<>.tlsOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (!v5)
  {
LABEL_6:
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 1;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    return result;
  }

  v6 = *(v5 + 56);
  if (!v6 || (v7 = (v6 + *(*v6 + 128)), swift_beginAccess(), v8 = *v7, v9 = *(v7 + 3), v24 = *(v7 + 1), v25 = v9, v10 = *(v7 + 7), v26 = *(v7 + 5), v27 = v10, v28 = v24, v29 = v9, v30 = v26, v31 = v10, v8 == 1))
  {
    result = swift_beginAccess();
    v11 = *(v5 + 48);
    if (*(v11 + 112))
    {
      v12 = *(v11 + 120);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 344);
      swift_unknownObjectRetain();
      v14(sub_182282F10, 0, &type metadata for SwiftTLSProtocol.SwiftTLSProtocolOptions, ObjectType, v12);
      return swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  v15 = v29;
  *(a1 + 8) = v28;
  *(a1 + 24) = v15;
  v16 = v31;
  *(a1 + 40) = v30;
  *(a1 + 56) = v16;
  v20 = v24;
  v21 = v25;
  v17 = v27;
  v22 = v26;
  *a1 = v8;
  v19 = v8;
  v23 = v17;
  return sub_1820752BC(&v19, v18);
}

uint64_t QUICStreamProtocol.QUICStreamOptions.isDatagram.setter(uint64_t result)
{
  v2 = *(v1 + 64);
  if (result)
  {
    if ((*(v1 + 64) & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  else
  {
    if ((*(v1 + 64) & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFD;
  }

  *(v1 + 64) = v3;
  return result;
}

uint64_t QUICStreamProtocol.QUICStreamOptions.associatedStreamID.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t QUICStreamProtocol.QUICStreamOptions.quicConnectionOptions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

_BYTE *(*QUICStreamProtocol.QUICStreamOptions.isDatagram.modify(uint64_t a1))(_BYTE *result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 64) & 2) != 0;
  return sub_182281890;
}

_BYTE *sub_182281890(_BYTE *result, char a2)
{
  v2 = *result;
  v3 = *(*result + 64);
  if (a2)
  {
    if (result[8])
    {
      if ((*(*result + 64) & 2) != 0)
      {
        return result;
      }

LABEL_7:
      *(v2 + 64) = v3 | 2;
      return result;
    }

    goto LABEL_8;
  }

  if (!result[8])
  {
LABEL_8:
    if ((*(*result + 64) & 2) != 0)
    {
      *(v2 + 64) = v3 & 0xFD;
    }

    return result;
  }

  if ((*(*result + 64) & 2) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t QUICStreamProtocol.QUICStreamOptions.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  *(v0 + 48) = sub_181AACB6C();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  return v0;
}

uint64_t QUICStreamProtocol.QUICStreamOptions.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  *(v0 + 48) = sub_181AACB6C();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  return v0;
}

Swift::OpaquePointer_optional __swiftcall QUICStreamProtocol.QUICStreamOptions.serialize()()
{
  v140 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v74 - v2;
  v4 = sub_182AD2868();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v86 = v0;
  v8 = *(v0 + 48);
  v9 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
  swift_beginAccess();
  sub_181AB5D28(v8 + v9, v3, &unk_1EA8394B0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {

    sub_181F49A88(v3, &unk_1EA8394B0);
    v10 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);

    v10 = sub_182AD2838();
    (*(v5 + 8))(v7, v4);
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_66;
    }

    if (v10 > 0xFF)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

  v84 = *(v8 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S);
  v11 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  v12 = v8[16];
  v87 = v8;
  v85 = v10;
  if (!v12)
  {
    v29 = 0;
    LOBYTE(v16) = 0;
    v30 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v13 = v12;
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {

    LOBYTE(v16) = 0;
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v15 = Count;
  LOBYTE(v16) = 0;
  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v17);
    if (!ValueAtIndex)
    {
      goto LABEL_9;
    }

    v21 = ValueAtIndex;
    BytePtr = CFDataGetBytePtr(v21);
    Length = CFDataGetLength(v21);

    v24 = MEMORY[0x1E69E7CC0];
    if (BytePtr && Length)
    {
      if (Length <= 0)
      {
        goto LABEL_69;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
      v24 = swift_allocObject();
      v25 = _swift_stdlib_malloc_size(v24);
      v24[2] = Length;
      v24[3] = 2 * v25 - 64;
      memmove(v24 + 4, BytePtr, Length);
    }

    sub_1820D46D8(v26);
    v16 = v16 + 1;
    if ((v16 & 0x100) != 0)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v27 = v24[2];

    if (v27 >> 16)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
    v18 = swift_allocObject();
    v19 = _swift_stdlib_malloc_size(v18);
    *(v18 + 16) = 2;
    *(v18 + 24) = 2 * v19 - 64;
    *(v18 + 32) = v27;
    sub_1820D46D8(v18);

LABEL_9:
    if (v15 == ++v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:

  v28 = v93;
  v8 = v87;
LABEL_21:
  v29 = *(v28 + 16);
  if (v29 > 0xFF)
  {
    goto LABEL_65;
  }

  v11 = v94;
  v30 = *(v94 + 16);
LABEL_23:
  v31 = v8[17];
  v82 = v28;
  v83 = v11;
  v80 = v30;
  v81 = v29;
  if (!v31)
  {
    goto LABEL_37;
  }

  v32 = v8[18];
  if (!v32)
  {
    v52 = v31;
    v76 = 0;
    v77 = 0;
    LOBYTE(v38) = 0;
    v78 = MEMORY[0x1E69E7CC0];
    v79 = MEMORY[0x1E69E7CC0];
LABEL_43:
    v53 = v31;
    v54 = CFDataGetBytePtr(v53);
    v55 = CFDataGetLength(v53);

    if (v54)
    {
      v56 = &v54[v55];
    }

    else
    {
      v56 = 0;
    }

    v57 = sub_181AC1C5C(v54, v56);
    sub_1820D46D8(v57);

    v50 = v92;
    v75 = *(v92 + 16);
    goto LABEL_47;
  }

  v33 = v32;
  v75 = v31;
  v34 = v31;
  v35 = v33;
  v36 = CFArrayGetCount(v35);
  if (v36 < 1)
  {

    LOBYTE(v38) = 0;
    v51 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v31 = v75;
    if (*(v51 + 16) <= 0xFFuLL)
    {
      v77 = *(v51 + 16);
      v78 = v51;
      v79 = v91;
      v76 = *(v91 + 16);
      goto LABEL_43;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  v37 = v36;
  LOBYTE(v38) = 0;
  v39 = 0;
  while (2)
  {
    v42 = CFArrayGetValueAtIndex(v35, v39);
    if (!v42)
    {
LABEL_28:
      if (v37 == ++v39)
      {

        v51 = v90;
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  v43 = v42;
  v44 = CFDataGetBytePtr(v43);
  v45 = CFDataGetLength(v43);

  v46 = MEMORY[0x1E69E7CC0];
  if (v44 && v45)
  {
    if (v45 <= 0)
    {
      goto LABEL_70;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
    v46 = swift_allocObject();
    v47 = _swift_stdlib_malloc_size(v46);
    v46[2] = v45;
    v46[3] = 2 * v47 - 64;
    memmove(v46 + 4, v44, v45);
  }

  sub_1820D46D8(v48);
  v38 = v38 + 1;
  if ((v38 & 0x100) != 0)
  {
    goto LABEL_64;
  }

  v49 = v46[2];

  if (!(v49 >> 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
    v40 = swift_allocObject();
    v41 = _swift_stdlib_malloc_size(v40);
    *(v40 + 16) = 2;
    *(v40 + 24) = 2 * v41 - 64;
    *(v40 + 32) = v49;
    sub_1820D46D8(v40);

    goto LABEL_28;
  }

  __break(1u);
LABEL_37:
  v76 = 0;
  v77 = 0;
  LOBYTE(v38) = 0;
  v75 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v58 = v87[19];
  v59 = MEMORY[0x1E69E7CC0];
  if (v58)
  {
    v60 = v58;
    v61 = CFDataGetBytePtr(v60);
    v62 = CFDataGetLength(v60);
    if (v61)
    {
      v63 = &v61[v62];
    }

    else
    {
      v63 = 0;
    }

    v64 = sub_181AC1C5C(v61, v63);
    sub_1820D46D8(v64);

    v59 = v89;
    v65 = *(v89 + 16);
  }

  else
  {
    v65 = 0;
  }

  if (v84)
  {
    v66 = 1;
  }

  else
  {
    v66 = 2;
  }

  v138[0] = *(v87 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize);
  v139 = 1;
  if (v84 == 2)
  {
    v66 = 0;
  }

  v136[0] = *(v87 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__idleTimeout);
  v137 = 3;
  v134[0] = *(v87 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize);
  v135 = 1;
  v132[0] = *(v87 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__initialPacketSize);
  v133 = 1;
  v130[0] = *(v87 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keepaliveCount);
  v131 = 1;
  v128[0] = *(v87 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
  v129 = 4;
  v127[0] = v66;
  v127[40] = 0;
  v125[0] = *(v87 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__pqtlsMode);
  v126 = 1;
  v67 = v86;
  swift_beginAccess();
  v68 = *(v67 + 16);
  if (*(v67 + 24))
  {
    v68 = 0;
  }

  v123[0] = v68;
  v124 = 4;
  v69 = *(v67 + 32);
  if (*(v67 + 40))
  {
    v69 = 0;
  }

  v121[0] = v69;
  v122 = 4;
  v120[0] = *(v67 + 64);
  v120[40] = 0;
  v119[0] = v85;
  v119[40] = 0;
  v118[0] = v16;
  v118[40] = 0;
  v117[0] = v81;
  v117[40] = 0;
  v115[0] = v82;
  v116 = 11;
  v113[0] = v80;
  v114 = 4;
  v111[0] = v83;
  v112 = 11;
  v109[0] = v75;
  v110 = 4;
  v107[0] = v50;
  v108 = 11;
  v106[0] = v38;
  v106[40] = 0;
  v105[0] = v77;
  v105[40] = 0;
  v103[0] = v78;
  v104 = 11;
  v101[0] = v76;
  v102 = 4;
  v99[0] = v79;
  v100 = 11;
  v97[0] = v65;
  v98 = 4;
  v95[0] = v59;
  v96 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A580);
  v70 = swift_allocObject();
  sub_181F80BF8(v138, v70 + 32);
  sub_181F80BF8(v136, v70 + 80);
  sub_181F80BF8(v134, v70 + 128);
  sub_181F80BF8(v132, v70 + 176);
  sub_181F80BF8(v130, v70 + 224);
  sub_181F80BF8(v128, v70 + 272);
  sub_181F80BF8(v127, v70 + 320);
  sub_181F80BF8(v125, v70 + 368);
  sub_181F80BF8(v123, v70 + 416);
  sub_181F80BF8(v121, v70 + 464);
  sub_181F80BF8(v120, v70 + 512);
  sub_181F80BF8(v119, v70 + 560);
  sub_181F80BF8(v118, v70 + 608);
  sub_181F80BF8(v117, v70 + 656);
  sub_181F80BF8(v115, v70 + 704);
  sub_181F80BF8(v113, v70 + 752);
  sub_181F80BF8(v111, v70 + 800);
  sub_181F80BF8(v109, v70 + 848);
  sub_181F80BF8(v107, v70 + 896);
  sub_181F80BF8(v106, v70 + 944);
  sub_181F80BF8(v105, v70 + 992);
  sub_181F80BF8(v103, v70 + 1040);
  sub_181F80BF8(v101, v70 + 1088);
  sub_181F80BF8(v99, v70 + 1136);
  sub_181F80BF8(v97, v70 + 1184);
  sub_181F80BF8(v95, v70 + 1232);
  v88 = MEMORY[0x1E69E7CC0];

  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  sub_1822A69B4(&v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  sub_181F80C54(v95);
  sub_181F80C54(v97);
  sub_181F80C54(v99);
  sub_181F80C54(v101);
  sub_181F80C54(v103);
  sub_181F80C54(v105);
  sub_181F80C54(v106);
  sub_181F80C54(v107);
  sub_181F80C54(v109);
  sub_181F80C54(v111);
  sub_181F80C54(v113);
  sub_181F80C54(v115);
  sub_181F80C54(v117);
  sub_181F80C54(v118);
  sub_181F80C54(v119);
  sub_181F80C54(v120);
  sub_181F80C54(v121);
  sub_181F80C54(v123);
  sub_181F80C54(v125);
  sub_181F80C54(v127);
  sub_181F80C54(v128);
  sub_181F80C54(v130);
  sub_181F80C54(v132);
  sub_181F80C54(v134);
  sub_181F80C54(v136);
  sub_181F80C54(v138);
  v71 = v88;

  v73 = v71;
  result.value._rawValue = v73;
  result.is_nil = v72;
  return result;
}

uint64_t QUICStreamProtocol.QUICStreamOptions.deinit()
{

  return v0;
}

uint64_t QUICStreamProtocol.QUICStreamMetadata.__allocating_init()()
{
  v0 = swift_allocObject();
  QUICStreamProtocol.QUICStreamMetadata.init()();
  return v0;
}

uint64_t QUICStreamProtocol.QUICStreamMetadata.deinit()
{
  _Block_release(*(v0 + 48));

  return v0;
}

uint64_t QUICStreamProtocol.QUICStreamInstance.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t QUICStreamProtocol.QUICStreamInstance.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t QUICStreamProtocol.QUICStreamInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t QUICStreamProtocol.QUICStreamInstance.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t static QUICStreamProtocol.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED40FE60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1ED40FE78;
  v7[0] = xmmword_1ED40FE68;
  v7[1] = unk_1ED40FE78;
  v2 = unk_1ED40FE88;
  v7[2] = unk_1ED40FE88;
  v3 = qword_1ED40FE98;
  v8 = qword_1ED40FE98;
  *a1 = xmmword_1ED40FE68;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_181AB5D28(v7, v6, &qword_1EA838E28);
}

uint64_t static SwiftQUICProtocol.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED40FDC8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1ED40FDE0;
  v7[0] = xmmword_1ED40FDD0;
  v7[1] = unk_1ED40FDE0;
  v2 = unk_1ED40FDF0;
  v7[2] = unk_1ED40FDF0;
  v3 = qword_1ED40FE00;
  v8 = qword_1ED40FE00;
  *a1 = xmmword_1ED40FDD0;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_181AB5D28(v7, v6, &qword_1EA838E18);
}

uint64_t static SwiftQUICProtocol.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED40FDA0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1ED40FDB0;
  v3 = unk_1ED40FDB8;
  v4 = byte_1ED40FDC0;
  *a1 = word_1ED40FDA8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_181F49A24(v2, v3, v4);
}

uint64_t sub_182282AE0()
{
  type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  *(v0 + 48) = sub_181AACB6C();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  return v0;
}

_WORD *sub_182282B84()
{
  type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
  swift_allocObject();

  return sub_181E0AFEC(v0);
}

uint64_t sub_182282BC8()
{
  type metadata accessor for QUICStreamProtocol.QUICStreamMetadata();
  v0 = swift_allocObject();
  QUICStreamProtocol.QUICStreamMetadata.init()();
  return v0;
}

double SwiftQUICProtocol.newProtocolInstance()()
{
  type metadata accessor for QUICConnectionImplementation();
  swift_allocObject();
  return QUICConnectionImplementation.init()();
}

double static SwiftQUICProtocol.instance()()
{
  type metadata accessor for QUICConnectionImplementation();
  swift_allocObject();
  return QUICConnectionImplementation.init()();
}

uint64_t sub_182282C78@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  result = sub_181AACB6C();
  *(v2 + 48) = result;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  if (qword_1ED40FF40 != -1)
  {
    result = swift_once();
  }

  *a1 = v2;
  return result;
}

_WORD *sub_182282D20@<X0>(void *a1@<X8>)
{
  type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
  swift_allocObject();

  result = sub_181E0AFEC(v2);
  *a1 = result;
  return result;
}

uint64_t sub_182282D70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for QUICStreamProtocol.QUICStreamMetadata();
  v2 = swift_allocObject();
  result = QUICStreamProtocol.QUICStreamMetadata.init()();
  *a1 = v2;
  return result;
}

uint64_t ProtocolOptions<>.tlsOptions.setter(__int128 *a1)
{
  v2 = a1[3];
  v21 = a1[2];
  v22 = v2;
  v23 = *(a1 + 8);
  v3 = a1[1];
  v19 = *a1;
  v20 = v3;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    return sub_182064A70(&v19);
  }

  *(v5 + 56) = _s7Network16SwiftTLSProtocolV7optionsAA15ProtocolOptionsCyACGyFZ_0();

  v6 = *(v1 + v4);
  if (!v6)
  {
    return sub_182064A70(&v19);
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    return sub_182064A70(&v19);
  }

  v15 = v22;
  v16 = v23;
  v13 = v19;
  v14 = v20;
  v8 = v7 + *(*v7 + 128);
  swift_beginAccess();
  v17[0] = *v8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  v18 = *(v8 + 64);
  v17[2] = v10;
  v17[3] = v11;
  v17[1] = v9;
  *(v8 + 32) = v21;
  *(v8 + 48) = v15;
  *(v8 + 64) = v16;
  *v8 = v13;
  *(v8 + 16) = v14;

  sub_181F49A88(v17, &qword_1EA839BF0);
}

uint64_t sub_182282F10@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_unknownObjectRetain();

  return sub_1820745FC(v2, a1);
}

void (*ProtocolOptions<>.tlsOptions.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  *a1 = v3;
  *(v3 + 288) = v1;
  ProtocolOptions<>.tlsOptions.getter(v3);
  return sub_182282FC0;
}

void sub_182282FC0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[11] = v5;
    v2[12] = v4;
    v6 = v2[1];
    v7 = *v2;
    v2[9] = *v2;
    v2[10] = v6;
    v8 = v2[3];
    v15 = v5;
    v16 = v8;
    *(v2 + 26) = *(v2 + 8);
    v17 = *(v2 + 8);
    v13 = v7;
    v14 = v3;
    sub_1820752BC((v2 + 9), v2 + 216);
    ProtocolOptions<>.tlsOptions.setter(&v13);
    v9 = *v2;
    *(v2 + 88) = v2[1];
    v10 = v2[3];
    *(v2 + 104) = v2[2];
    *(v2 + 120) = v10;
    *(v2 + 17) = *(v2 + 8);
    *(v2 + 72) = v9;
    sub_182064A70(v2 + 72);
  }

  else
  {
    v11 = v2[3];
    v15 = v2[2];
    v16 = v11;
    v17 = *(v2 + 8);
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    ProtocolOptions<>.tlsOptions.setter(&v13);
  }

  free(v2);
}

uint64_t ProtocolMetadata<>.streamID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t ProtocolMetadata<>.datagramFlowID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t ProtocolMetadata<>.applicationError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

BOOL ProtocolMetadata<>.isDatagram.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  return v1 && *(v1 + 66) == 2;
}

BOOL ProtocolMetadata<>.isBidirectional.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  return v1 && *(v1 + 66) == 0;
}

BOOL ProtocolMetadata<>.isUnidirectional.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  return v1 && *(v1 + 66) == 1;
}

uint64_t _s7Network18QUICStreamProtocolV0B7OptionsC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  if (_s7Network22QUICConnectionProtocolV0B7OptionsC2eeoiySbAE_AEtFZ_0(v8, *(a2 + 48)))
  {
    v9 = *(a1 + 64);
    v10 = *(a2 + 64);
    if (v9 & 1) != ((v10 & 1) == 0) && ((((v10 & 2) == 0) ^ ((v9 & 2) >> 1)))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s7Network18QUICStreamProtocolV0B8MetadataC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 40) == *(a2 + 40))
  {
    v3 = *(a1 + 56);
    v4 = *(a2 + 56);
    if (v3)
    {
      if (!v4)
      {
        return 0;
      }

      v5 = a1;
      v6 = a2;
      v7 = _s7Network22QUICConnectionProtocolV0B8MetadataC2eeoiySbAE_AEtFZ_0(v3, v4);
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if (!v8)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }

    if (*(a1 + 64) == *(a2 + 64) && *(a1 + 66) == *(a2 + 66))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _nw_quic_create_options_0()
{
  if (qword_1ED40FE60 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1ED40FE68;
  v1 = BYTE1(xmmword_1ED40FE68);
  v2 = *(&xmmword_1ED40FE68 + 1);
  v3 = unk_1ED40FE78;
  v4 = byte_1ED40FE80;
  type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  sub_181F49A24(v2, v3, v4);
  *(v5 + 48) = sub_181AACB6C();
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  swift_allocObject();
  return sub_181AA94EC(v0 | (v1 << 8), v2, v3, v4, v5);
}

uint64_t _s7Network18QUICStreamProtocolV8metadataAA0C8MetadataCyACGyFZ_0()
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED40FE60 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1ED40FE68;
  v1 = *(&xmmword_1ED40FE68 + 1);
  v2 = unk_1ED40FE78;
  v3 = byte_1ED40FE80;
  v8 = 0uLL;
  nw_uuid_generate_insecure_7(&v8);
  v7 = v8;
  type metadata accessor for QUICStreamProtocol.QUICStreamMetadata();
  v4 = swift_allocObject();
  QUICStreamProtocol.QUICStreamMetadata.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B9A0);
  v5 = swift_allocObject();
  *(v5 + 57) = 0;
  *(v5 + 64) = 0;
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 41) = v7;
  swift_beginAccess();
  *(v5 + 64) = v4;
  sub_181F49A24(v1, v2, v3);
  return v5;
}

uint64_t _nw_swift_quic_create_options_0()
{
  if (qword_1ED40FDC8 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1ED40FDD0;
  v1 = BYTE1(xmmword_1ED40FDD0);
  v2 = *(&xmmword_1ED40FDD0 + 1);
  v3 = unk_1ED40FDE0;
  v4 = byte_1ED40FDE8;
  type metadata accessor for QUICStreamProtocol.QUICStreamOptions();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  sub_181F49A24(v2, v3, v4);
  *(v5 + 48) = sub_181AACB6C();
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C50);
  swift_allocObject();
  return sub_181AA94EC(v0 | (v1 << 8), v2, v3, v4, v5);
}

uint64_t sub_18228383C(uint64_t a1)
{
  result = sub_181D84898(&qword_1EA83B9E8, type metadata accessor for QUICStreamProtocol.QUICStreamMetadata);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_182283950()
{
  result = qword_1EA83B9F8;
  if (!qword_1EA83B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B9F8);
  }

  return result;
}

unint64_t sub_1822839A8()
{
  result = qword_1EA83BA00;
  if (!qword_1EA83BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA00);
  }

  return result;
}

unint64_t sub_182283A00()
{
  result = qword_1EA83BA08;
  if (!qword_1EA83BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA08);
  }

  return result;
}

unint64_t sub_182283A58()
{
  result = qword_1EA83BA10;
  if (!qword_1EA83BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA10);
  }

  return result;
}

unint64_t sub_182283AB0()
{
  result = qword_1EA83BA18;
  if (!qword_1EA83BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA18);
  }

  return result;
}

void sub_182283B28(uint64_t a1, uint64_t a2)
{
  v6 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v21 = v6;
    swift_once();
    v6 = v21;
  }

  v7 = qword_1EA8387E8;
  if (is_mul_ok(v6, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v22 = v6;
  swift_once();
  v6 = v22;
LABEL_5:
  v8 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v23 = v6;
  swift_once();
  v6 = v23;
LABEL_7:
  if (!qword_1EA8431F0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = v6 * v7 / v8;
  v10 = *(v2 + 22);
  v7 = &unk_182B04000;
  v11 = v9 / qword_1EA8431F0;
  if (!v10)
  {
    *(v2 + 22) = v11;
    v12 = *v2;
    v13 = *(v2 + 20);
    v14 = 0.0;
    v15 = *v2;
    if (v13 > *v2)
    {
      v14 = cbrt((v13 - *v2) / 0.4 / a1);
      v15 = v13;
    }

    *(v2 + 21) = v15;
    v2[15] = v14;
    *(v2 + 23) = v12;
    v10 = v11;
    v2[18] = 0.0;
  }

  v16 = v11 >= v10;
  v17 = v11 - v10;
  if (!v16)
  {
    goto LABEL_25;
  }

  v16 = __CFADD__(v17, a2);
  v18 = v17 + a2;
  if (!v16)
  {
    v3 = v18;
    if (qword_1EA837018 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  swift_once();
LABEL_16:
  v19 = v3 / qword_1EA8431F8 - v2[15];
  v20 = fmax(v19 * (v19 * v19 * *(v7 + 440) * a1) + *(v2 + 21), 0.0);
  if (v20 == INFINITY)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v20 <= -1.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v20 >= 1.84467441e19)
  {
LABEL_30:
    __break(1u);
  }
}

unint64_t sub_182283D90(unint64_t result, uint64_t a2)
{
  v3 = v2[18];
  v4 = v3 + result;
  if (__CFADD__(v3, result))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v2[23];
  v6 = 0.529411765;
  if (v5 >= v2[20])
  {
    v6 = 1.0;
  }

  v2[18] = v4;
  v7 = v6 * result * a2 / v5;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v7 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = __CFADD__(v5, v7);
  v9 = v5 + v7;
  if (!v8)
  {
    v2[23] = v9;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_182283E2C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[17];
  v5 = __CFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = result;
  v3[17] = v6;
  sub_182283B28(a3, a2);
  v10 = v9;
  result = sub_182283D90(v8, a3);
  v11 = *v3;
  if (v10 > *v3)
  {
    v12 = v3[17] / v11 * (v10 - *v3);
    if (COERCE__INT64(fabs(v12)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v12 > -1.0)
      {
        if (v12 < 1.84467441e19)
        {
          v13 = 10 * a3;
          if ((a3 * 10) >> 64 == (10 * a3) >> 63)
          {
            if ((v13 & 0x8000000000000000) == 0)
            {
              v14 = 2 * a3;
              if (2 * a3 <= 14720)
              {
                v14 = 14720;
              }

              if (v14 < v13)
              {
                v13 = v14;
              }

              if (v13 >= v12)
              {
                v13 = v12;
              }

              v5 = __CFADD__(v11, v13);
              v11 += v13;
              if (!v5)
              {
                *v3 = v11;
                v3[17] = 0;
                goto LABEL_16;
              }

LABEL_29:
              __break(1u);
              return result;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_16:
  v15 = v3[23];
  if (v11 < v15)
  {
    *v3 = v15;
    v16 = v3[17];
    v17 = v3[18];
    v5 = v16 >= v17;
    v18 = v16 - v17;
    if (!v5)
    {
      v18 = 0;
    }

    v3[17] = v18;
    v3[18] = 0;
    v11 = v15;
  }

  if (!v3[16])
  {
    v3[20] = v11;
  }

  return result;
}

void sub_182283F70(char a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (qword_1EA837020 != -1)
  {
    swift_once();
  }

  if (!is_mul_ok(qword_1EA843200, 0x64uLL))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = 10 * a2;
  if ((a2 * 10) >> 64 != (10 * a2) >> 63)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = 2 * a2;
  if (2 * a2 <= 14720)
  {
    v12 = 14720;
  }

  if (v12 >= v11)
  {
    v4 = 10 * a2;
  }

  else
  {
    v4 = v12;
  }

  if (v11 < 0)
  {
    goto LABEL_18;
  }

  v6 = &v13;
  v5 = 100 * qword_1EA843200;
  v3 = sub_182AD3428();
  v3[2] = 3;
  v3[5] = 0;
  v3[6] = 0;
  v3[4] = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = v4;
  v7 = -1;
  v35 = 0;
  v36 = -1;
  v37 = -1;
  v38 = 0;
  v39 = 0;
  v40 = v3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  v46 = v4;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = v5;
  v51 = 10;
  sub_182015E58();
  if (a1)
  {
LABEL_15:
    v13 = v4;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    v17 = v7;
    v18 = v7;
    v19 = 0;
    v20 = 0;
    v21 = v3;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    *(v6 + 17) = 0u;
    v25 = 0;
    v26 = v4;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v5;
    v31 = 10;
    sub_182015E58();
    *a3 = v4;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
    *(a3 + 48) = v7;
    *(a3 + 56) = v7;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 80) = v3;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = v4;
    *(a3 + 168) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    *(a3 + 192) = v5;
    *(a3 + 200) = 10;
    return;
  }

  if (qword_1EA837018 == -1)
  {
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_19:
  swift_once();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

__n128 sub_18228418C(uint64_t a1)
{
  v5 = v1;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_48;
  }

  while (1)
  {
    v7 = mach_continuous_time();
    if (qword_1EA837030 != -1)
    {
      v37 = v7;
      swift_once();
      v7 = v37;
    }

    v8 = qword_1EA8387E8;
    if (is_mul_ok(v7, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    v38 = v7;
    swift_once();
    v7 = v38;
LABEL_9:
    v9 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    v2 = v7;
    swift_once();
    v7 = v2;
LABEL_11:
    v10 = qword_1EA8431F0;
    if (!qword_1EA8431F0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v2 = v7 * v8 / v9 / qword_1EA8431F0;
    *(v5 + 64) = v2;
    v4 = *(v5 + 160);
    v3 = *v5;
    *(v5 + 152) = v4;
    *(v5 + 160) = v3;
    v11 = *(v5 + 192);
    v9 = v64;
    v12 = *(v5 + 112);
    v69 = *(v5 + 96);
    v70 = v12;
    v13 = *(v5 + 48);
    v65[2] = *(v5 + 32);
    v66 = v13;
    v14 = *(v5 + 16);
    v65[0] = *v5;
    v65[1] = v14;
    v15 = *(v5 + 144);
    v71 = *(v5 + 128);
    v72 = v15;
    v16 = *(v5 + 160);
    v74 = *(v5 + 176);
    v75 = v11;
    v73 = v16;
    v17 = *(v5 + 80);
    v67 = *(v5 + 64);
    v68 = v17;
    if (sub_182011CE0())
    {
      v18 = *&v65[0];
    }

    else
    {
      v18 = *(&v68 + 1);
      if (*(&v65[0] + 1) > *(&v68 + 1))
      {
        v18 = *(&v65[0] + 1);
      }
    }

    v19 = v18 * 0.7;
    v10 = 0x7FF0000000000000;
    if (v19 == INFINITY)
    {
      goto LABEL_40;
    }

    if (v19 <= -1.0)
    {
      goto LABEL_41;
    }

    v10 = 0x43F0000000000000;
    if (v19 >= 1.84467441e19)
    {
      goto LABEL_42;
    }

    v20 = v19;
    *v5 = v19;
    v10 = 0x4000000000000000;
    if (a1 + 0x4000000000000000 < 0)
    {
      goto LABEL_43;
    }

    v10 = 2 * a1;
    if (((2 * a1) & 0x8000000000000000) == 0)
    {
      if (v10 <= v20)
      {
        goto LABEL_22;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    *v5 = v10;
    v20 = v10;
LABEL_22:
    v21 = v66;
    *(v5 + 48) = v20;
    *(v5 + 56) = v21;
    if (v3 < v4)
    {
      v22 = v3 * 1.7 * 0.5;
      if (v22 <= v10)
      {
        v22 = v10;
      }

      if (v22 == INFINITY)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v22 <= -1.0)
      {
        goto LABEL_53;
      }

      if (v22 >= 1.84467441e19)
      {
        goto LABEL_54;
      }

      v3 = v22;
      *(v5 + 160) = v22;
    }

    if (v3)
    {
      if (v3 < v20)
      {
        goto LABEL_47;
      }

      *(v5 + 120) = cbrt((v3 - v20) / 0.4 / a1);
    }

    else
    {
      *(v5 + 120) = 0;
    }

    v23 = v71;
    *(v5 + 168) = v3;
    *(v5 + 176) = v2;
    *(v5 + 184) = v20;
    *(v5 + 144) = 0;
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      break;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    *&v65[0] = 0;
    *(&v65[0] + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v65[0] = 0xD000000000000020;
    *(&v65[0] + 1) = 0x8000000182BE39B0;
    *&v64[0] = *v5;
    v39 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v39);

    v40 = v65[0];
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v41 = sub_182AD2698();
    __swift_project_value_buffer(v41, qword_1EA843418);
    v42 = swift_allocObject();
    *(v42 + 16) = "enterRecovery(mss:qlog:)";
    *(v42 + 24) = 24;
    *(v42 + 32) = 2;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C258;
    *(v43 + 24) = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = 1564427099;
    *(v44 + 24) = 0xE400000000000000;
    v45 = swift_allocObject();
    *(v45 + 16) = v40;

    log = sub_182AD2678();
    v60 = sub_182AD38A8();
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C264;
    *(v46 + 24) = v43;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C27C;
    *(v47 + 24) = v46;
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v2 = swift_allocObject();
    *(v2 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C26C;
    *(v48 + 24) = v44;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_181F8C718;
    *(v3 + 24) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C26C;
    *(v51 + 24) = v45;
    v4 = log;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_181F8C718;
    *(v52 + 24) = v51;
    if (os_log_type_enabled(log, v60))
    {
      v56 = v50;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      v63 = 0;
      v4 = v53;
      *v53 = 770;
      v55 = v54;
      *&v64[0] = v53 + 2;
      *&v65[0] = sub_181F8C274;
      *(&v65[0] + 1) = v58;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C728;
      *(&v65[0] + 1) = v57;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C284;
      *(&v65[0] + 1) = v47;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C728;
      *(&v65[0] + 1) = v59;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C728;
      *(&v65[0] + 1) = v2;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C714;
      *(&v65[0] + 1) = v3;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C728;
      *(&v65[0] + 1) = v49;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C728;
      *(&v65[0] + 1) = v56;
      sub_181F73AE0(v65, v64, &v63, &v62);

      *&v65[0] = sub_181F8C714;
      *(&v65[0] + 1) = v52;
      sub_181F73AE0(v65, v64, &v63, &v62);

      _os_log_impl(&dword_181A37000, log, v60, "%s %s %s", v53, 0x20u);
      v2 = v55;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v55, -1, -1);
      MEMORY[0x1865DF520](v53, -1, -1);
    }

    else
    {
LABEL_55:
    }
  }

  *(v5 + 128) = v25;
  v26 = sub_182AD3428();
  v26[2] = 3;
  v26[5] = 0;
  v26[6] = 0;
  v26[4] = 0;
  sub_182284C98(v65);
  *(v5 + 112) = 0;
  *(v5 + 80) = v26;
  *(v5 + 88) = 0;
  v27 = *(v5 + 160);
  v28 = *(v5 + 176);
  v29 = *(v5 + 128);
  *(v9 + 144) = *(v5 + 144);
  *(v9 + 160) = v27;
  v30 = *(v5 + 192);
  *(v9 + 176) = v28;
  *(v9 + 192) = v30;
  v32 = *(v5 + 96);
  v31 = *(v5 + 112);
  v33 = *(v5 + 48);
  v64[2] = *(v5 + 32);
  v64[3] = v33;
  v34 = *(v5 + 16);
  v64[0] = *v5;
  v64[1] = v34;
  v35 = *(v5 + 80);
  v64[4] = *(v5 + 64);
  v64[5] = v35;
  v64[6] = v32;
  *(v9 + 112) = v31;
  *(v9 + 128) = v29;
  sub_182015E58();
  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_182284D04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182284D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182284DDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 209))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 208);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_182284E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
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
    *(result + 208) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 208) = -a2;
    }
  }

  return result;
}

uint64_t sub_182284EBC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 176);
  v45[10] = *(v2 + 160);
  v45[11] = v5;
  v45[12] = *(v2 + 192);
  v46 = *(v2 + 208);
  v6 = *(v2 + 112);
  v45[6] = *(v2 + 96);
  v45[7] = v6;
  v7 = *(v2 + 144);
  v45[8] = *(v2 + 128);
  v45[9] = v7;
  v8 = *(v2 + 48);
  v45[2] = *(v2 + 32);
  v45[3] = v8;
  v9 = *(v2 + 80);
  v45[4] = *(v2 + 64);
  v45[5] = v9;
  v10 = *(v2 + 16);
  v45[0] = *v2;
  v45[1] = v10;
  if (sub_182015D80(v45) == 1)
  {
    result = nullsub_41(v45);
    v12 = *result;
    v32 = *(result + 104);
    v34 = *(result + 120);
    v36 = *(result + 136);
    v38 = *(result + 152);
    v24 = *(result + 40);
    v26 = *(result + 56);
    v28 = *(result + 72);
    v30 = *(result + 88);
    v20 = *(result + 8);
    v22 = *(result + 24);
    if ((a1 & 0x8000000000000000) == 0)
    {
      v54 = *(result + 104);
      v55 = v34;
      v56 = v36;
      v50 = v24;
      v51 = v26;
      v52 = v28;
      v53 = v30;
      v48 = v20;
      if (v12 > a1)
      {
        a1 = v12;
      }

      v47 = a1;
      *&v57 = v38;
      v49 = v22;
      sub_182015D94(v2, &v61);
      sub_182016600();
      *&v43[104] = v32;
      *&v43[120] = v34;
      *&v43[136] = v36;
      *&v43[40] = v24;
      *&v43[56] = v26;
      *&v43[72] = v28;
      *&v43[88] = v30;
      *&v43[8] = v20;
      *&v43[24] = v22;
      *&v43[152] = v38;
      *v43 = a1;
      result = sub_182015D88(v43);
LABEL_10:
      v71 = *&v43[160];
      v72 = *&v43[176];
      v73 = *&v43[192];
      v74 = v44;
      v67 = *&v43[96];
      v68 = *&v43[112];
      v69 = *&v43[128];
      v70 = *&v43[144];
      v63 = *&v43[32];
      v64 = *&v43[48];
      v65 = *&v43[64];
      v66 = *&v43[80];
      v61 = *v43;
      v62 = *&v43[16];
      v14 = *&v43[176];
      *(a2 + 160) = *&v43[160];
      *(a2 + 176) = v14;
      *(a2 + 192) = v73;
      *(a2 + 208) = v74;
      v15 = v68;
      *(a2 + 96) = v67;
      *(a2 + 112) = v15;
      v16 = v70;
      *(a2 + 128) = v69;
      *(a2 + 144) = v16;
      v17 = v64;
      *(a2 + 32) = v63;
      *(a2 + 48) = v17;
      v18 = v66;
      *(a2 + 64) = v65;
      *(a2 + 80) = v18;
      v19 = v62;
      *a2 = v61;
      *(a2 + 16) = v19;
      return result;
    }

    __break(1u);
  }

  else
  {
    result = nullsub_41(v45);
    v13 = *result;
    v40 = *(result + 168);
    v41 = *(result + 184);
    v42 = *(result + 200);
    v33 = *(result + 104);
    v35 = *(result + 120);
    v37 = *(result + 136);
    v39 = *(result + 152);
    v25 = *(result + 40);
    v27 = *(result + 56);
    v29 = *(result + 72);
    v31 = *(result + 88);
    v21 = *(result + 8);
    v23 = *(result + 24);
    if ((a1 & 0x8000000000000000) == 0)
    {
      v57 = *(result + 152);
      v58 = v40;
      v59 = v41;
      v53 = v31;
      v54 = v33;
      v55 = v35;
      v56 = v37;
      v49 = v23;
      v50 = v25;
      v51 = v27;
      v52 = v29;
      if (v13 > a1)
      {
        a1 = v13;
      }

      v47 = a1;
      v60 = v42;
      v48 = v21;
      sub_182015D94(v2, &v61);
      sub_182015E58();
      *&v43[152] = v39;
      *&v43[168] = v40;
      *&v43[184] = v41;
      *&v43[88] = v31;
      *&v43[104] = v33;
      *&v43[120] = v35;
      *&v43[136] = v37;
      *&v43[24] = v23;
      *&v43[40] = v25;
      *&v43[56] = v27;
      *&v43[72] = v29;
      *&v43[8] = v21;
      *&v43[200] = v42;
      *v43 = a1;
      result = sub_18201A508(v43);
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_182285204(unint64_t result, uint64_t a2)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = 2 * a2;
  if (2 * a2 < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result * 0.7;
  if (v3 <= v2)
  {
    v3 = v2;
  }

  if (v3 == INFINITY)
  {
    goto LABEL_11;
  }

  if (v3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 1.84467441e19)
  {
    return v3;
  }

LABEL_13:
  __break(1u);
  return result;
}

double sub_182285284@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[11];
  v90[10] = v1[10];
  v90[11] = v3;
  v90[12] = v1[12];
  v91 = *(v1 + 208);
  v4 = v1[7];
  v90[6] = v1[6];
  v90[7] = v4;
  v5 = v1[9];
  v90[8] = v1[8];
  v90[9] = v5;
  v6 = v1[3];
  v90[2] = v1[2];
  v90[3] = v6;
  v7 = v1[5];
  v90[4] = v1[4];
  v90[5] = v7;
  v8 = v1[1];
  v90[0] = *v1;
  v90[1] = v8;
  if (sub_182015D80(v90) == 1)
  {
    v9 = nullsub_41(v90);
    v10 = *v9;
    v11 = *(v9 + 24);
    v87 = *(v9 + 8);
    v88 = v11;
    v12 = *(v9 + 48);
    v89 = *(v9 + 40);
    v13 = *(v9 + 120);
    v86 = *(v9 + 112);
    v14 = *(v9 + 56);
    v15 = *(v9 + 80);
    v83 = *(v9 + 64);
    v84 = v15;
    v85 = *(v9 + 96);
    v16 = *(v9 + 144);
    v81 = *(v9 + 128);
    v82 = v16;
    if (v13 && v14)
    {
      if (v10 <= v13)
      {
        v10 = v13;
      }

      v93 = v87;
      v94 = v88;
      v92 = v10;
      v95 = v89;
      v96 = v14;
      v97 = v14;
      v98 = v83;
      v99 = v84;
      v100 = v85;
      *&v101 = v86;
      *(&v101 + 1) = v13;
      v102 = v81;
      v103 = v82;
      v17 = v1[1];
      v108 = *v1;
      v109 = v17;
      v18 = v1[4];
      v113 = v1[5];
      v112 = v18;
      v19 = v1[3];
      v110 = v1[2];
      v111 = v19;
      v20 = v1[8];
      v117 = v1[9];
      v116 = v20;
      v21 = v1[6];
      v115 = v1[7];
      v114 = v21;
      v121 = *(v1 + 208);
      v22 = v1[11];
      v120 = v1[12];
      v23 = v1[10];
      v119 = v22;
      v118 = v23;
      v24 = nullsub_41(&v108);
      sub_181AB5D28(v24, v71, &qword_1EA83BA28);
      sub_182016600();
      v12 = v14;
    }

    else
    {
      v38 = v1[11];
      v118 = v1[10];
      v119 = v38;
      v120 = v1[12];
      v121 = *(v1 + 208);
      v39 = v1[7];
      v114 = v1[6];
      v115 = v39;
      v40 = v1[9];
      v116 = v1[8];
      v117 = v40;
      v41 = v1[3];
      v110 = v1[2];
      v111 = v41;
      v42 = v1[5];
      v112 = v1[4];
      v113 = v42;
      v43 = v1[1];
      v108 = *v1;
      v109 = v43;
      v44 = nullsub_41(&v108);
      sub_181AB5D28(v44, v71, &qword_1EA83BA28);
    }

    *&v71[8] = v87;
    *&v71[24] = v88;
    *v71 = v10;
    *&v71[40] = v89;
    *&v72 = v12;
    *(&v72 + 1) = v14;
    v73 = v83;
    v74 = v84;
    v75 = v85;
    *&v76 = v86;
    *(&v76 + 1) = v13;
    v77 = v81;
    v78 = v82;
    sub_182015D88(v71);
  }

  else
  {
    v25 = nullsub_41(v90);
    v26 = *v25;
    v68 = *(v25 + 8);
    v69 = *(v25 + 24);
    v27 = *(v25 + 48);
    v70 = *(v25 + 40);
    v28 = *(v25 + 56);
    v64 = *(v25 + 96);
    v65 = *(v25 + 112);
    v66 = *(v25 + 128);
    v67 = *(v25 + 144);
    v62 = *(v25 + 64);
    v63 = *(v25 + 80);
    v29 = *(v25 + 160);
    v61 = *(v25 + 200);
    v59 = *(v25 + 168);
    v60 = *(v25 + 184);
    if (v29 && v28)
    {
      if (v26 <= v29)
      {
        v26 = *(v25 + 160);
      }

      v93 = *(v25 + 8);
      v94 = v69;
      v92 = v26;
      v95 = v70;
      v96 = v28;
      v97 = v28;
      v100 = v64;
      v101 = v65;
      v102 = v66;
      v103 = v67;
      v98 = v62;
      v99 = v63;
      v104 = v29;
      v107 = v61;
      v106 = v60;
      v105 = v59;
      v30 = v1[1];
      v108 = *v1;
      v109 = v30;
      v31 = v1[4];
      v113 = v1[5];
      v112 = v31;
      v32 = v1[3];
      v110 = v1[2];
      v111 = v32;
      v33 = v1[8];
      v117 = v1[9];
      v116 = v33;
      v34 = v1[6];
      v115 = v1[7];
      v114 = v34;
      v121 = *(v1 + 208);
      v35 = v1[11];
      v120 = v1[12];
      v36 = v1[10];
      v119 = v35;
      v118 = v36;
      v37 = nullsub_41(&v108);
      sub_181AB5D28(v37, v71, &qword_1EA83BA30);
      sub_182015E58();
      v27 = v28;
    }

    else
    {
      v45 = v1[11];
      v118 = v1[10];
      v119 = v45;
      v120 = v1[12];
      v121 = *(v1 + 208);
      v46 = v1[7];
      v114 = v1[6];
      v115 = v46;
      v47 = v1[9];
      v116 = v1[8];
      v117 = v47;
      v48 = v1[3];
      v110 = v1[2];
      v111 = v48;
      v49 = v1[5];
      v112 = v1[4];
      v113 = v49;
      v50 = v1[1];
      v108 = *v1;
      v109 = v50;
      v51 = nullsub_41(&v108);
      sub_181AB5D28(v51, v71, &qword_1EA83BA30);
    }

    *&v71[8] = v68;
    *&v71[24] = v69;
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v73 = v62;
    v74 = v63;
    *&v79[24] = v60;
    *v71 = v26;
    *&v71[40] = v70;
    *&v72 = v27;
    *(&v72 + 1) = v28;
    *v79 = v29;
    *&v79[40] = v61;
    *&v79[8] = v59;
    sub_18201A508(v71);
  }

  v120 = *&v79[32];
  v121 = v80;
  v114 = v75;
  v115 = v76;
  v116 = v77;
  v117 = v78;
  v110 = *&v71[32];
  v111 = v72;
  v112 = v73;
  v113 = v74;
  v108 = *v71;
  v109 = *&v71[16];
  v52 = *&v79[16];
  *(a1 + 160) = *v79;
  *(a1 + 176) = v52;
  *(a1 + 192) = v120;
  *(a1 + 208) = v121;
  v53 = v115;
  *(a1 + 96) = v114;
  *(a1 + 112) = v53;
  v54 = v117;
  *(a1 + 128) = v116;
  *(a1 + 144) = v54;
  v55 = v111;
  *(a1 + 32) = v110;
  *(a1 + 48) = v55;
  v56 = v113;
  *(a1 + 64) = v112;
  *(a1 + 80) = v56;
  result = *&v108;
  v58 = v109;
  *a1 = v108;
  *(a1 + 16) = v58;
  return result;
}

uint64_t sub_18228578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[11];
  v79[10] = v2[10];
  v79[11] = v5;
  v79[12] = v2[12];
  v80 = *(v2 + 208);
  v6 = v2[7];
  v79[6] = v2[6];
  v79[7] = v6;
  v7 = v2[9];
  v79[8] = v2[8];
  v79[9] = v7;
  v8 = v2[3];
  v79[2] = v2[2];
  v79[3] = v8;
  v9 = v2[5];
  v79[4] = v2[4];
  v79[5] = v9;
  v10 = v2[1];
  v79[0] = *v2;
  v79[1] = v10;
  if (sub_182015D80(v79) != 1)
  {
    v24 = nullsub_41(v79);
    v25 = *v24;
    v26 = *(v24 + 24);
    v76 = *(v24 + 8);
    v77 = v26;
    v78 = *(v24 + 40);
    v55 = *(v24 + 152);
    v56 = *(v24 + 168);
    v57 = *(v24 + 184);
    v58 = *(v24 + 200);
    v47 = *(v24 + 88);
    v49 = *(v24 + 104);
    v51 = *(v24 + 120);
    v53 = *(v24 + 136);
    v43 = *(v24 + 56);
    v45 = *(v24 + 72);
    result = sub_182285204(v25, a1);
    if (a1 + 0x4000000000000000 >= 0)
    {
      v27 = 2 * a1;
      if ((v27 & 0x8000000000000000) == 0)
      {
        v28 = result;
        v82 = v76;
        v83 = v77;
        v81 = v27;
        v84 = v78;
        v92 = v55;
        v93 = v56;
        v94 = v57;
        v85 = result;
        v95 = v58;
        v88 = v47;
        v89 = v49;
        v90 = v51;
        v91 = v53;
        v86 = v43;
        v87 = v45;
        v29 = v2[11];
        v69 = v2[10];
        v70 = v29;
        v71 = v2[12];
        v72 = *(v2 + 208);
        v30 = v2[7];
        v65 = v2[6];
        v66 = v30;
        v31 = v2[9];
        v67 = v2[8];
        v68 = v31;
        v32 = v2[3];
        v61 = v2[2];
        v62 = v32;
        v33 = v2[5];
        v63 = v2[4];
        v64 = v33;
        v34 = v2[1];
        v59 = *v2;
        v60 = v34;
        v35 = nullsub_41(&v59);
        sub_181AB5D28(v35, &v96, &qword_1EA83BA30);
        sub_182015E58();
        *&v73[8] = v76;
        *&v73[24] = v77;
        *&v74[104] = v55;
        *&v74[120] = v56;
        *&v74[136] = v57;
        *&v74[40] = v47;
        *&v74[56] = v49;
        *&v74[72] = v51;
        *&v74[88] = v53;
        *&v74[8] = v43;
        *&v74[24] = v45;
        *&v73[40] = v78;
        *v74 = v28;
        *v73 = v27;
        *&v74[152] = v58;
        result = sub_18201A508(v73);
LABEL_14:
        v106 = *&v74[112];
        v107 = *&v74[128];
        v108 = *&v74[144];
        v109 = v75;
        v102 = *&v74[48];
        v103 = *&v74[64];
        v104 = *&v74[80];
        v105 = *&v74[96];
        v98 = *&v73[32];
        v99 = *v74;
        v100 = *&v74[16];
        v101 = *&v74[32];
        v96 = *v73;
        v97 = *&v73[16];
        v36 = *&v74[128];
        *(a2 + 160) = *&v74[112];
        *(a2 + 176) = v36;
        *(a2 + 192) = v108;
        *(a2 + 208) = v109;
        v37 = v103;
        *(a2 + 96) = v102;
        *(a2 + 112) = v37;
        v38 = v105;
        *(a2 + 128) = v104;
        *(a2 + 144) = v38;
        v39 = v99;
        *(a2 + 32) = v98;
        *(a2 + 48) = v39;
        v40 = v101;
        *(a2 + 64) = v100;
        *(a2 + 80) = v40;
        v41 = v97;
        *a2 = v96;
        *(a2 + 16) = v41;
        return result;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  result = nullsub_41(v79);
  v12 = *result;
  v13 = *(result + 24);
  v76 = *(result + 8);
  v77 = v13;
  v78 = *(result + 40);
  v50 = *(result + 120);
  v52 = *(result + 136);
  v54 = *(result + 152);
  v42 = *(result + 56);
  v44 = *(result + 72);
  v46 = *(result + 88);
  v48 = *(result + 104);
  if (a1 + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 2 * a1;
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = vcvtd_n_f64_u64(v12, 1uLL);
  if (v15 == INFINITY)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < 1.84467441e19)
  {
    v82 = v76;
    v83 = v77;
    v89 = v48;
    v90 = v50;
    v91 = v52;
    v86 = v42;
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v81 = v14;
    v84 = v78;
    v85 = v16;
    *&v92 = v54;
    v87 = v44;
    v88 = v46;
    v17 = v2[1];
    v59 = *v2;
    v60 = v17;
    v18 = v2[5];
    v63 = v2[4];
    v64 = v18;
    v19 = v2[3];
    v61 = v2[2];
    v62 = v19;
    v20 = v2[9];
    v67 = v2[8];
    v68 = v20;
    v21 = v2[7];
    v65 = v2[6];
    v66 = v21;
    v72 = *(v2 + 208);
    v22 = v2[12];
    v70 = v2[11];
    v71 = v22;
    v69 = v2[10];
    v23 = nullsub_41(&v59);
    sub_181AB5D28(v23, &v96, &qword_1EA83BA28);
    sub_182016600();
    *&v73[8] = v76;
    *&v73[24] = v77;
    *&v74[56] = v48;
    *&v74[72] = v50;
    *&v74[88] = v52;
    *&v74[8] = v42;
    *&v74[24] = v44;
    *&v74[40] = v46;
    *&v73[40] = v78;
    *v74 = v16;
    *v73 = v14;
    *&v74[104] = v54;
    result = sub_182015D88(v73);
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
  return result;
}

__n128 sub_182285C4C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = &v44;
  v58 = *MEMORY[0x1E69E9840];
  v6 = &v44;
  FrameArray.init()(&v44);
  if (!nw_frame_array_is_empty(a1))
  {
    v14 = 1;
    v15 = 5;
    v39 = a2;
    v38 = a1;
    do
    {
      v16 = nw_frame_array_first(a1);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      swift_unknownObjectRetain();
      nw_frame_array_remove(a1, a2 & 1, v17);
      v43 = 0;
      v18 = swift_unknownObjectRetain();
      nw_frame_get_buffer(v18, &v43);
      v42 = v43;
      is_connection_complete = nw_frame_is_connection_complete(v17);
      LOBYTE(v20) = nw_frame_is_metadata_complete(v17);
      swift_unknownObjectRelease();
      if (v57 == 1)
      {
        v40 = v20;
        v41 = is_connection_complete;
        v14 = *(&v44 + 1);
        v6 = v44;
        v15 = v45;
        LOBYTE(v5) = BYTE8(v45);
        a2 = *(&v46 + 1);
        v21 = v46;
        LODWORD(v20) = v47.n128_u8[0];
        v22 = v53;
        v23 = v54;

        if (v20 != 2 || __PAIR128__(a2, v21) != 0)
        {
          goto LABEL_36;
        }

        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        if ((v24 & 1) == 0)
        {
          MEMORY[0x1865DF520](v22, -1, -1);
        }

        sub_181F68EF4(v6, v14, v15, v5);

        swift_unknownObjectRelease();
        v44 = v17;
        *&v45 = 0;
        v15 = 5;
        BYTE8(v45) = 5;
        v46 = xmmword_182AED520;
        v47.n128_u8[0] = 2;
        v47.n128_u64[1] = 0;
        *&v48 = 0;
        *(&v48 + 1) = v42;
        *&v49 = 0;
        BYTE8(v49) = 0;
        v50 = 0u;
        v51 = 0u;
        *&v52 = 0;
        v5 = &v44;
        DWORD2(v52) = 2;
        BYTE12(v52) = 1;
        v53 = 0uLL;
        LOBYTE(v54) = 1;
        *(&v54 + 1) = 0;
        a2 = v39;
        v55[0] = v40;
        *&v55[1] = 0;
        v6 = &v44;
        *&v55[9] = 0;
        v55[17] = 1;
        v55[18] = v41;
        *&v55[24] = 0;
        LOBYTE(v56) = -1;
        *(&v56 + 1) = 0;
        v57 = 0;
        a1 = v38;
        v14 = 1;
      }

      else
      {
        if (!*(&v56 + 1))
        {
          *(&v56 + 1) = *sub_182AD2388();
        }

        type metadata accessor for FrameArrayEntry();
        v25 = swift_allocObject();
        swift_beginAccess();
        *(v25 + 24) = 0;
        *(v25 + 32) = 0;
        *(v25 + 16) = v17;
        *(v25 + 40) = 5;
        *(v25 + 48) = xmmword_182AED520;
        *(v25 + 64) = 2;
        *(v25 + 72) = 0;
        *(v25 + 80) = 0;
        *(v25 + 88) = v42;
        *(v25 + 96) = 0;
        *(v25 + 104) = 0;
        *(v25 + 112) = 0u;
        *(v25 + 128) = 0u;
        *(v25 + 144) = 0;
        *(v25 + 152) = 2;
        *(v25 + 156) = 1;
        *(v25 + 160) = 0;
        *(v25 + 168) = 0;
        *(v25 + 176) = 1;
        *(v25 + 184) = 0;
        *(v25 + 192) = v20;
        *(v25 + 201) = 0;
        *(v25 + 193) = 0;
        *(v25 + 209) = 1;
        *(v25 + 210) = is_connection_complete;
        *(v25 + 216) = 0;
        *(v25 + 224) = -1;
        v26 = *(*(&v56 + 1) + 24);
        v21 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          sub_181F68EF4(v6, v14, v15, v5);

          sub_181F68F3C(v21, a2, v20);
          __break(1u);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *(&v56 + 1);
        if (*(*(&v56 + 1) + 16) < v21 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = &v56 + 8;
          sub_181F461F8(isUniquelyReferenced_nonNull_native, v21);
          v28 = *(&v56 + 1);
        }

        v29 = v28[3];
        v30 = v28[4];
        v33 = __OFADD__(v30, v29);
        v31 = v30 + v29;
        if (v33)
        {
          goto LABEL_32;
        }

        if (v29 < 0)
        {
          if (v31 < 0)
          {
            v35 = v28[2];
            v33 = __OFADD__(v31, v35);
            v31 += v35;
            if (v33)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v32 = v28[2];
          v33 = __OFSUB__(v31, v32);
          v34 = v31 - v32;
          if (v34 < 0 == v33)
          {
            v31 = v34;
            if (v33)
            {
              goto LABEL_34;
            }
          }
        }

        v28[v31 + 5] = v25;
        v33 = __OFADD__(v29, 1);
        v36 = v29 + 1;
        if (v33)
        {
          goto LABEL_33;
        }

        v28[3] = v36;
        swift_unknownObjectRelease();
      }
    }

    while (!nw_frame_array_is_empty(a1));
  }

  v7 = v56;
  *(a3 + 192) = *&v55[16];
  *(a3 + 208) = v7;
  *(a3 + 224) = v57;
  v8 = v53;
  *(a3 + 128) = v52;
  *(a3 + 144) = v8;
  v9 = *v55;
  *(a3 + 160) = v54;
  *(a3 + 176) = v9;
  v10 = v49;
  *(a3 + 64) = v48;
  *(a3 + 80) = v10;
  v11 = v51;
  *(a3 + 96) = v50;
  *(a3 + 112) = v11;
  v12 = v45;
  *a3 = v44;
  *(a3 + 16) = v12;
  result = v47;
  *(a3 + 32) = v46;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1822860AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = *(v2 + 24);
  if (v17 == 5)
  {
    v18 = *(v2 + 32);
    v19 = *(v2 + 40);
    v20 = *(v2 + 48);
    v64 = *v2;
    swift_unknownObjectRetain();
    sub_181F68F3C(v18, v19, v20);
    *(v2 + 40) = 0;
    *(v2 + 32) = 0;
    *(v2 + 48) = 2;
    v79 = 1;
    v78 = 1;
    v77 = 1;
    v65 = 0uLL;
    *&v66 = 0;
    BYTE8(v66) = 6;
    v67 = 0uLL;
    LOBYTE(v68[0]) = 2;
    *(v68 + 8) = 0u;
    *(&v68[1] + 8) = 0u;
    BYTE8(v68[2]) = 0;
    v69 = 0u;
    v70 = 0u;
    *&v71 = 0;
    DWORD2(v71) = 2;
    BYTE12(v71) = 1;
    v72 = 0uLL;
    LODWORD(v60) = 1;
    LOBYTE(v73) = 1;
    *(&v73 + 1) = 0;
    v74 = 0uLL;
    LOWORD(v75) = 256;
    LODWORD(v61) = 1;
    BYTE2(v75) = 0;
    *(&v75 + 1) = 0;
    v76 = -1;
    v21 = Frame.bufferLength.getter();
    v22 = *v2;
    v23 = *(v2 + 8);
    v10 = *(v2 + 16);
    LOBYTE(v13) = *(v2 + 24);
    v6 = *(v2 + 32);
    v24 = *(v2 + 40);
    v8 = *(v2 + 48);
    v26 = v2 + 168;
    v25 = *(v2 + 168);
    v62 = v21;
    v63 = v25;
    if (v8 == 2 && !(v24 | v6))
    {
      v28 = (v2 + 144);
      v27 = *(v2 + 144);
      if ((*(v2 + 160) & 1) == 0)
      {
        if (v27)
        {
          v29 = v22;
          MEMORY[0x1865DF520](v27, -1, -1);
          v22 = v29;
        }
      }

      sub_181F68EF4(v22, v23, v10, v13);

      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *(v2 + 24) = 6;
      *(v2 + 25) = v65;
      *(v2 + 28) = *(&v65 + 3);
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      *(v2 + 48) = 2;
      *(v2 + 49) = v86[0];
      *(v2 + 52) = *(v86 + 3);
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      *(v2 + 72) = v62;
      *(v2 + 80) = 0;
      *(v2 + 88) = 0;
      *(v2 + 89) = *v85;
      *(v2 + 92) = *&v85[3];
      *(v2 + 96) = 0u;
      *(v2 + 112) = 0u;
      *(v2 + 128) = 0;
      *(v2 + 136) = 2;
LABEL_45:
      *(v2 + 140) = 1;
      *(v2 + 141) = v83;
      *(v2 + 143) = v84;
      *v28 = 0;
      v28[1] = 0;
      *(v2 + 160) = v60;
      *(v2 + 164) = *&v82[3];
      *(v2 + 161) = *v82;
      *(v26 + 24) = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *v26 = 0;
      *(v2 + 193) = v61;
      *(v2 + 194) = 0;
      *(v2 + 199) = v81;
      *(v2 + 195) = v80;
      *(v2 + 200) = 0;
      *(v2 + 208) = -1;
      return v64;
    }

    goto LABEL_54;
  }

  v64 = a1;
  v30 = *(v2 + 56);
  v63 = (v2 + 56);
  v23 = *(v2 + 64);
  if (v17 != 2)
  {
    goto LABEL_11;
  }

  v31 = swift_projectBox();
  sub_181AB5D28(v31, v16, &qword_1EA8398E0);
  v32 = sub_182AD2868();
  v33 = *(v32 - 8);
  v61 = *(v33 + 8);
  v62 = v32;
  v60 = v33 + 8;
  v61(v16);
  v34 = *(v2 + 176);
  v73 = *(v2 + 160);
  v74 = v34;
  v75 = *(v2 + 192);
  v76 = *(v2 + 208);
  v35 = *(v2 + 112);
  v69 = *(v2 + 96);
  v70 = v35;
  v36 = *(v2 + 144);
  v71 = *(v2 + 128);
  v72 = v36;
  v37 = *(v2 + 48);
  v67 = *(v2 + 32);
  v68[0] = v37;
  v38 = *(v2 + 80);
  v68[1] = *(v2 + 64);
  v68[2] = v38;
  v39 = *(v2 + 16);
  v65 = *v2;
  v66 = v39;
  sub_1821438A8(v6);
  v40 = *(v8 + 48);
  v8 += 48;
  if (v40(v6, 1, v7) == 1)
  {
    sub_181F49A88(v6, &qword_1EA839BA8);
LABEL_11:
    v24 = v2;
    v41 = Frame.extractBufferToFreeExternally()();
    v44 = v43;
    v22 = v43 | (v41 == 0);
    if (v43 & 1 | (v41 == 0))
    {
      v45 = 0;
    }

    else
    {
      v45 = v42 - v41;
    }

    if (v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = v41;
    }

    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (HIDWORD(v45))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    result = nw_frame_create(0, v46, v45, 0, 0);
    if (!result)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v8 = result;
    v48 = swift_unknownObjectRetain();
    nw_frame_set_buffer_used_malloc(v48, 1);
LABEL_25:
    nw_frame_set_default_finalizer(v8, v64);
    if (v30 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (((v23 | v30) & 0x8000000000000000) == 0)
    {
      if (v23 <= 0xFFFFFFFFLL)
      {
        nw_frame_claim(v8, 0, v30, v23);
        swift_unknownObjectRelease();
        if (*(v2 + 194) == 1)
        {
          nw_frame_set_connection_complete(v8, 1);
        }

        v26 = v2 + 168;
        v49 = *(v2 + 168);
        v50 = *(v2 + 176);
        v62 = v49;
        if (!v49 || (v22 = v49[3]) == 0)
        {
          if (!v50)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (v22 >= 1)
        {
          v51 = v49[4];
          v52 = v49[2];
          if (v51 < v52)
          {
            v52 = 0;
          }

          if ((v49[5 * (v51 - v52) + 9] & 1) == 0)
          {
LABEL_39:
            v64 = v8;
            sub_181F68F3C(*(v2 + 32), *(v2 + 40), *(v2 + 48));
            *(v2 + 40) = 0;
            *(v2 + 32) = 0;
            *(v2 + 48) = 2;
            v79 = 1;
            v78 = 1;
            v77 = 1;
            v65 = 0uLL;
            *&v66 = 0;
            BYTE8(v66) = 6;
            v67 = 0uLL;
            LOBYTE(v68[0]) = 2;
            *(v68 + 8) = 0u;
            *(&v68[1] + 8) = 0u;
            BYTE8(v68[2]) = 0;
            v69 = 0u;
            v70 = 0u;
            *&v71 = 0;
            DWORD2(v71) = 2;
            BYTE12(v71) = 1;
            v72 = 0uLL;
            LODWORD(v60) = 1;
            LOBYTE(v73) = 1;
            *(&v73 + 1) = 0;
            v74 = 0uLL;
            LOWORD(v75) = 256;
            LODWORD(v61) = 1;
            BYTE2(v75) = 0;
            *(&v75 + 1) = 0;
            v76 = -1;
            v53 = Frame.bufferLength.getter();
            v54 = *v2;
            v23 = *(v2 + 8);
            v10 = *(v2 + 16);
            LOBYTE(v13) = *(v2 + 24);
            v8 = *(v2 + 32);
            v6 = *(v2 + 40);
            LODWORD(v24) = *(v2 + 48);
            if (v24 == 2 && !(v6 | v8))
            {
              v55 = v53;
              v28 = (v2 + 144);
              v56 = *(v2 + 144);
              if ((*(v2 + 160) & 1) == 0 && v56)
              {
                v57 = *v2;
                MEMORY[0x1865DF520](v56, -1, -1);
                v54 = v57;
              }

              sub_181F68EF4(v54, v23, v10, v13);

              *v2 = 0;
              *(v2 + 8) = 0;
              *(v2 + 16) = 0;
              *(v2 + 24) = 6;
              *(v2 + 25) = v65;
              *(v2 + 28) = *(&v65 + 3);
              *(v2 + 32) = 0;
              *(v2 + 40) = 0;
              *(v2 + 48) = 2;
              *(v2 + 49) = v86[0];
              *(v2 + 52) = *(v86 + 3);
              v58 = v63;
              *v63 = 0;
              v58[1] = 0;
              *(v2 + 72) = v55;
              *(v2 + 80) = 0;
              *(v2 + 88) = 0;
              *(v2 + 89) = *v85;
              *(v2 + 92) = *&v85[3];
              *(v2 + 96) = 0u;
              *(v2 + 112) = 0u;
              *(v2 + 128) = 0;
              *(v2 + 136) = 2;
              goto LABEL_45;
            }

            goto LABEL_55;
          }

LABEL_38:
          nw_frame_set_metadata(v8, 0, 0, 1);
          goto LABEL_39;
        }

        goto LABEL_51;
      }

      goto LABEL_48;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_182022420(v6, v13);
  sub_181AB5D28(v13, v10, &unk_1EA83A980);
  v24 = *&v10[*(v7 + 64)];
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v6 = v61;
  v22 = v60;
  if (HIDWORD(v24))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    sub_181F68EF4(v22, v23, v10, v13);

    sub_181F68F3C(v6, v24, v8);
    __break(1u);
LABEL_55:
    sub_181F68EF4(v54, v23, v10, v13);

    result = sub_181F68F3C(v8, v6, v24);
    __break(1u);
    goto LABEL_56;
  }

  (v61)(v10, v62);
  result = nw_frame_create_external(0, v24, 0, 0);
  if (result)
  {
    v8 = result;
    sub_181AB5D28(v13, v10, &unk_1EA83A980);
    swift_unknownObjectRetain_n();
    v24 = sub_182AD2808();
    nw_frame_set_external_data(v8, v24, 0);
    swift_unknownObjectRelease();

    sub_181F49A88(v13, &unk_1EA83A980);
    (v6)(v10, v62);
    goto LABEL_25;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_182286990(uint64_t a1)
{
  v2 = sub_182286F00();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1822869CC(uint64_t a1)
{
  v2 = sub_182286F00();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t NWActorSystemError.errorCode.getter()
{
  v1 = v0[2];
  v2 = v1 >> 60;
  if ((v1 >> 60) > 5)
  {
    if (v2 > 8)
    {
      if (v2 == 9)
      {
        return 16;
      }

      else if (v2 == 10)
      {
        return 17;
      }

      else
      {
        v9 = *v0;
        v10 = v0[1];
        if (v1 != 0xB000000000000000 || v10 | v9)
        {
          if (v1 == 0xB000000000000000 && v9 == 1 && !v10)
          {
            return 7;
          }

          else if (v1 == 0xB000000000000000 && v9 == 2 && !v10)
          {
            return 9;
          }

          else if (v1 == 0xB000000000000000 && v9 == 3 && !v10)
          {
            return 12;
          }

          else
          {
            if (v10)
            {
              v11 = 0;
            }

            else
            {
              v11 = v9 == 4;
            }

            if (v11 && v1 == 0xB000000000000000)
            {
              return 13;
            }

            else
            {
              return 14;
            }
          }
        }

        else
        {
          return 6;
        }
      }
    }

    else
    {
      v8 = 11;
      if (v2 != 7)
      {
        v8 = 15;
      }

      if (v2 == 6)
      {
        return 10;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    v3 = 1;
    v4 = 4;
    v5 = 5;
    if (v2 != 4)
    {
      v5 = 8;
    }

    if (v2 != 3)
    {
      v4 = v5;
    }

    v6 = 2;
    if (v2 != 1)
    {
      v6 = 3;
    }

    if (v2)
    {
      v3 = v6;
    }

    if (v2 <= 2)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

unint64_t sub_182286B54()
{
  result = qword_1EA83BA38;
  if (!qword_1EA83BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA38);
  }

  return result;
}

uint64_t sub_182286BC4()
{
  v1 = v0[2];
  v2 = v1 >> 60;
  if ((v1 >> 60) > 5)
  {
    if (v2 > 8)
    {
      if (v2 == 9)
      {
        return 16;
      }

      else if (v2 == 10)
      {
        return 17;
      }

      else
      {
        v9 = *v0;
        v10 = v0[1];
        if (v1 != 0xB000000000000000 || v10 | v9)
        {
          if (v1 == 0xB000000000000000 && v9 == 1 && !v10)
          {
            return 7;
          }

          else if (v1 == 0xB000000000000000 && v9 == 2 && !v10)
          {
            return 9;
          }

          else if (v1 == 0xB000000000000000 && v9 == 3 && !v10)
          {
            return 12;
          }

          else
          {
            if (v10)
            {
              v11 = 0;
            }

            else
            {
              v11 = v9 == 4;
            }

            if (v11 && v1 == 0xB000000000000000)
            {
              return 13;
            }

            else
            {
              return 14;
            }
          }
        }

        else
        {
          return 6;
        }
      }
    }

    else
    {
      v8 = 11;
      if (v2 != 7)
      {
        v8 = 15;
      }

      if (v2 == 6)
      {
        return 10;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    v3 = 1;
    v4 = 4;
    v5 = 5;
    if (v2 != 4)
    {
      v5 = 8;
    }

    if (v2 != 3)
    {
      v4 = v5;
    }

    v6 = 2;
    if (v2 != 1)
    {
      v6 = 3;
    }

    if (v2)
    {
      v3 = v6;
    }

    if (v2 <= 2)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

unint64_t get_enum_tag_for_layout_string_7Network16ActorSystemErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >> 61 <= 4)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_182286D14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 24))
  {
    return (*a1 + 118);
  }

  v3 = ((*(a1 + 16) >> 60) & 0x8F | (16 * (*(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_182286D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_182286DBC(uint64_t result, uint64_t a2)
{
  if (a2 < 0xA)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 10);
    *(result + 8) = xmmword_182B04310;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network18NWActorSystemErrorO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 60;
  if (v1 <= 0xA)
  {
    return v1;
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_182286E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x75 && *(a1 + 24))
  {
    return (*a1 + 117);
  }

  v3 = ((*(a1 + 16) >> 60) & 0x8F | (16 * (*(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x74)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_182286E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x74)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 117;
    if (a3 >= 0x75)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x75)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_182286EC0(uint64_t result, uint64_t a2)
{
  if (a2 < 0xB)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 11);
    *(result + 8) = xmmword_182B04320;
  }

  return result;
}

unint64_t sub_182286F00()
{
  result = qword_1EA83BA40;
  if (!qword_1EA83BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA40);
  }

  return result;
}

uint64_t sub_182286F6C()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 >= v2)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v3 = v0[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    sub_182AD3B98();
    goto LABEL_10;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v10[0] = *v0;
    v10[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v5 = v10 + v1;
    goto LABEL_8;
  }

  if ((*v0 & 0x1000000000000000) == 0)
  {
    goto LABEL_22;
  }

  for (i = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = sub_182AD3CF8())
  {
    v5 = (i + v1);
LABEL_8:
    if ((*v5 & 0x80000000) == 0)
    {
LABEL_9:
      v6 = 1;
      goto LABEL_10;
    }

    v9 = (__clz(*v5 ^ 0xFF) - 24);
    if (v9 > 2)
    {
      v6 = v9 == 3 ? 3 : 4;
    }

    else
    {
      if (v9 == 1)
      {
        goto LABEL_9;
      }

      v6 = 2;
    }

LABEL_10:
    v0[2] = v6 + v1;
    v7 = v0[4];
    if (!__OFADD__(v7, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v0[4] = v7 + 1;
LABEL_12:
  LOBYTE(v10[0]) = v1 >= v2;
  return v7;
}

uint64_t sub_1822870CC@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((sub_181CA4798(a3, a4) & 1) == 0)
  {
    return sub_182288614(a1, a2, a3, a4, a5, a6);
  }

  sub_182243630(a1);
}

uint64_t sub_18228717C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  if (sub_182AD32B8())
  {
    v22 = *(v6 + 16);
    v12 = v22(v11, a1, a2);
    v23 = a1;
    MEMORY[0x1EEE9AC00](v12);
    *(&v20 - 2) = a2;
    *(&v20 - 1) = a3;
    sub_182AD32A8();
    if (v26[1])
    {
      v13 = v26[0];
      v14 = *(v6 + 8);
      v14(v23, a2);
LABEL_11:
      v14(v11, a2);
      return v13;
    }

    v21 = a3;
    v22(v8, v11, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C8);
    if (swift_dynamicCast())
    {
      sub_181F3CF20(v24, v26);
      __swift_project_boxed_opaque_existential_1(v26, v27);
      if (sub_182AD3F18())
      {
        __swift_project_boxed_opaque_existential_1(v26, v27);
        sub_182AD3F08();
        v15 = *(v6 + 8);
        v15(v23, a2);
        v15(v11, a2);
        v13 = *&v24[0];
        __swift_destroy_boxed_opaque_existential_1(v26);
        return v13;
      }

      v18 = v21;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v17 = v18;
      v16 = v23;
    }

    else
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_181FF3BD4(v24);
      v16 = v23;
      v17 = v21;
    }

    v13 = sub_18228924C(v11, a2, v17);
    v14 = *(v6 + 8);
    v14(v16, a2);
    goto LABEL_11;
  }

  v13 = sub_1822874DC(a1, a2, a3);
  (*(v6 + 8))(a1, a2);
  return v13;
}

uint64_t sub_1822874DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = sub_182AD3BE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = sub_182AD3DF8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  MEMORY[0x1865D9E50](a2, v4, v11);
  swift_getWitnessTable();
  sub_182AD3F28();
  (*(v6 + 8))(v8, v5);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  swift_getWitnessTable();
  sub_182AD30A8();
  (*(v10 + 8))(v13, v9);
  return v15[0];
}

uint64_t sub_182287700(unint64_t a1, unint64_t a2)
{
  v15[5] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  isStackAllocationSafe = sub_18224A3EC(0xFuLL, v7 | (v6 << 16), a1, a2);
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
LABEL_16:
    v14 = isStackAllocationSafe;
    MEMORY[0x1865DF520](v3, -1, -1);
    return v14;
  }

  if (isStackAllocationSafe >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v3 = swift_slowAlloc();
      isStackAllocationSafe = sub_182288880(v3);
      if (v2)
      {
        return MEMORY[0x1865DF520](v3, -1, -1);
      }

      goto LABEL_16;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v10 = v15 - v9;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = 0;
  v15[3] = v6;
  v15[4] = 0;
  while (1)
  {
    v11 = sub_182286F6C();
    if ((v12 & 0x100000000) != 0)
    {
      break;
    }

    v10[v11] = v12;
  }

  return sub_182AD30B8();
}

uint64_t sub_1822878B4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35[7] = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v17 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v17 = 11;
  }

  v18 = sub_18224A3EC(0xFuLL, v17 | (v16 << 16), a1, a2);
  if (v18 < 0)
  {
    __break(1u);
  }

  v19 = v18;
  v32 = a5;
  if (v18 < 1025)
  {
    sub_181F88CC0(a3, v35);
    isStackAllocationSafe = sub_181F88CC0(a4, v35);
  }

  else
  {
    sub_181F88CC0(a3, v35);
    sub_181F88CC0(a4, v35);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v30 = swift_slowAlloc();
      sub_181F88CC0(a3, v35);
      sub_181F88CC0(a4, v35);
      sub_182288918(v30, v19, a1, a2, a3, a4, v32);
      MEMORY[0x1865DF520](v30, -1, -1);
      goto LABEL_18;
    }
  }

  v31[1] = v31;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v21 = v31 - v20;
  v35[0] = a1;
  v35[1] = a2;
  v35[2] = 0;
  v35[3] = v16;
  v35[4] = 0;
  while (1)
  {
    v22 = sub_182286F6C();
    if ((v23 & 0x100000000) != 0)
    {
      break;
    }

    v21[v22] = v23;
  }

  v24 = *(a3 + 40);
  v25 = *(a3 + 48);
  v26 = v33;
  if ((sub_181CA4798(v24, v25) & 1) == 0)
  {
    sub_181F88CC0(a4, v35);
    sub_182287C24(v24, v25, a4, v21, v19, v12);
    goto LABEL_17;
  }

  v34[0] = v24;
  v34[1] = v25;
  sub_181F88CC0(a4, v35);
  sub_181F88CC0(a4, v35);
  sub_181F88CC0(a4, v35);

  sub_181F88A84(v34, a4, v21, v19, v12);
  if (!v26)
  {

    sub_181CA27BC(a4);
    sub_181CA27BC(a4);
LABEL_17:
    v27 = v32;
    sub_181B2BAC0(v12, v15);
    sub_181B2BAC0(v15, v27);
LABEL_18:
    sub_181CA27BC(a3);
    sub_181CA27BC(a4);
    sub_181CA27BC(a3);
    return sub_181CA27BC(a4);
  }

  sub_181CA27BC(a4);
  sub_181CA27BC(a4);

  __break(1u);
  return result;
}

uint64_t sub_182287C24@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v33[7] = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v18 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  v19 = sub_18224A3EC(0xFuLL, v18 | (v17 << 16), a1, a2);
  if (v19 < 0)
  {
    __break(1u);
  }

  v20 = v19;
  v30 = v6;
  if (v19 < 1025)
  {
    isStackAllocationSafe = sub_181F88CC0(a3, v33);
  }

  else
  {
    sub_181F88CC0(a3, v33);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v28 = swift_slowAlloc();
      sub_181F88CC0(a3, v33);
      sub_182288AA8(v28, v20, a3, v31, v32, a6);
      MEMORY[0x1865DF520](v28, -1, -1);
      goto LABEL_16;
    }
  }

  v29 = a6;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v22 = &v29 - v21;
  v33[0] = a1;
  v33[1] = a2;
  v33[2] = 0;
  v33[3] = v17;
  v33[4] = 0;
  while (1)
  {
    v23 = sub_182286F6C();
    if ((v24 & 0x100000000) != 0)
    {
      break;
    }

    v22[v23] = v24;
  }

  v25 = v30;
  sub_181F88284(v22, v20, a3, v31, v32, v13);
  if (v25)
  {
    swift_willThrow();
  }

  else
  {
    sub_181B2BAC0(v13, v16);
    sub_181B2BAC0(v16, v29);
  }

LABEL_16:
  sub_181CA27BC(a3);
  return sub_181CA27BC(a3);
}

uint64_t sub_182287EB8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v18 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  isStackAllocationSafe = sub_18224A3EC(0xFuLL, v18 | (v17 << 16), a1, a2);
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v20 = isStackAllocationSafe;
  if (isStackAllocationSafe < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v28 = a7;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v22 = &v27 - v21;
    v32 = a1;
    v33 = a2;
    v34 = 0;
    v35 = v17;
    v36 = 0;
    while (1)
    {
      v23 = sub_182286F6C();
      if ((v24 & 0x100000000) != 0)
      {
        break;
      }

      v22[v23] = v24;
    }

    sub_181F883D4(v29, v30, v31, a6, v22, v20, v13);
    sub_181B2BAC0(v13, v16);
    return sub_181B2BAC0(v16, v28);
  }

  else
  {
    v26 = swift_slowAlloc();
    sub_182288B80(v26, v20, v29, v30, v31, a6, a7);
    return MEMORY[0x1865DF520](v26, -1, -1);
  }
}

uint64_t sub_18228810C(unint64_t a1, unint64_t a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  result = sub_18224A3EC(0xFuLL, v5 | (v4 << 16), a1, a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (result < 1025 || (result = swift_stdlib_isStackAllocationSafe(), (result & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](result);
      v9 = v13 - v8;
      v13[0] = a1;
      v13[1] = a2;
      v13[2] = 0;
      v13[3] = v4;
      v13[4] = 0;
      while (1)
      {
        v10 = sub_182286F6C();
        if ((v11 & 0x100000000) != 0)
        {
          break;
        }

        v9[v10] = v11;
      }

      return sub_1820D4CC0(v9, v7);
    }

    else
    {
      v12 = swift_slowAlloc();
      sub_182288C48(v12, v7);
      return MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  return result;
}

uint64_t sub_1822882C0(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, unsigned __int8 *(*a6)@<X0>(unsigned __int8 *result@<X0>, _DWORD *a2@<X8>), uint64_t a7)
{
  v33 = a4;
  v34 = a6;
  v46 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  v14 = sub_18224A3EC(0xFuLL, v13 | (v12 << 16), a1, a2);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v15 = v14;

  if (v15 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v18 = &v32 - v17;
    v41 = a1;
    v42 = a2;
    v43 = 0;
    v44 = v12;
    v45 = 0;
    while (1)
    {
      v19 = sub_182286F6C();
      if ((v20 & 0x100000000) != 0)
      {
        break;
      }

      v18[v19] = v20;
    }

    if (v15)
    {
      v21 = 0;
      while ((v18[v21] & 0x80000000) == 0)
      {
        if (v15 == ++v21)
        {
          goto LABEL_15;
        }
      }

      v41 = v18;
      v42 = v15;
      v43 = sub_1822876F4;
      v44 = 0;
      v35 = 0;
      v36 = 0xE000000000000000;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
      sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
      sub_182AD30A8();
      v22 = v35;
      v24 = v36;
    }

    else
    {
LABEL_15:

      v22 = sub_182AD30B8();
      v24 = v23;
    }

    v25 = sub_181DDDCA0(v22, v24);
    v27 = v26;

    v28 = *a3;
    swift_beginAccess();
    v29 = *(*(v28 + 16) + 16);
    v37[0] = v33;
    v37[1] = a5;
    v37[2] = v34;
    v37[3] = a7;
    v38 = 0;
    v39 = v25;
    v40 = v27;
    sub_181DAE9E4(v29, v29, v37);

    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v31 = swift_slowAlloc();

    sub_182288CE8(v31, v15, a1, a2, a3, v33, a5, v34, a7);
    MEMORY[0x1865DF520](v31, -1, -1);
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_182288614@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = *MEMORY[0x1E69E9840];
  v28 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v19 = v15;
  }

  v20 = 7;
  if (((v16 >> 60) & ((v15 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  isStackAllocationSafe = sub_18224A3EC(0xFuLL, v20 | (v19 << 16), v15, v16);
  if (isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v22 = isStackAllocationSafe;
  if (isStackAllocationSafe <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_182288EEC(&v27 - v23, v22, a3, a4, a1);
    if (v6)
    {
      return swift_willThrow();
    }

    else
    {
      v25 = *(v28 + 32);
      v25(v18, v13, a5);
      return (v25)(a6, v18, a5);
    }
  }

  else
  {
    v26 = swift_slowAlloc();
    sub_182288EEC(v26, v22, a3, a4, a1);
    return MEMORY[0x1865DF520](v26, -1, -1);
  }
}

uint64_t sub_182288880(uint64_t a1)
{
  while (1)
  {
    v2 = sub_182286F6C();
    if ((v3 & 0x100000000) != 0)
    {
      break;
    }

    *(a1 + v2) = v3;
  }

  return sub_182AD30B8();
}

uint64_t sub_182288918@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = HIBYTE(a4) & 0xF;
  v20[0] = a3;
  v20[1] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v20[2] = 0;
  v20[3] = v13;
  v20[4] = 0;
  while (1)
  {
    v14 = sub_182286F6C();
    if ((v15 & 0x100000000) != 0)
    {
      break;
    }

    a1[v14] = v15;
  }

  v17 = *(a5 + 40);
  v16 = *(a5 + 48);
  if ((sub_181CA4798(v17, v16) & 1) == 0)
  {
    sub_181F88CC0(a6, v20);
    sub_182287C24(v17, v16, a6, a1, a2, a7);
    goto LABEL_10;
  }

  v19[0] = v17;
  v19[1] = v16;
  sub_181F88CC0(a6, v20);
  sub_181F88CC0(a6, v20);
  sub_181F88CC0(a6, v20);

  sub_181F88A84(v19, a6, a1, a2, a7);
  if (!v7)
  {

    sub_181CA27BC(a6);
    sub_181CA27BC(a6);
LABEL_10:
    sub_181CA27BC(a5);
    return sub_181CA27BC(a6);
  }

  sub_181CA27BC(a6);
  sub_181CA27BC(a6);

  __break(1u);
  return result;
}

uint64_t sub_182288AA8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X4>, char *a4@<X5>, char *a5@<X6>, char *a6@<X8>)
{
  while (1)
  {
    v12 = sub_182286F6C();
    if ((v13 & 0x100000000) != 0)
    {
      break;
    }

    a1[v12] = v13;
  }

  sub_181F88284(a1, a2, a3, a4, a5, a6);
  return sub_181CA27BC(a3);
}

void sub_182288B80(char *a1@<X0>, char *a2@<X1>, char *a3@<X4>, char *a4@<X5>, char *a5@<X6>, char *a6@<X7>, char *a7@<X8>)
{
  while (1)
  {
    v14 = sub_182286F6C();
    if ((v15 & 0x100000000) != 0)
    {
      break;
    }

    a1[v14] = v15;
  }

  sub_181F883D4(a3, a4, a5, a6, a1, a2, a7);
}

char *sub_182288C48(char *a1, char *a2)
{
  while (1)
  {
    v4 = sub_182286F6C();
    if ((v5 & 0x100000000) != 0)
    {
      break;
    }

    a1[v4] = v5;
  }

  return sub_1820D4CC0(a1, a2);
}

uint64_t sub_182288CE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, unint64_t a7, unsigned __int8 *(*a8)@<X0>(unsigned __int8 *result@<X0>, _DWORD *a2@<X8>), uint64_t a9)
{
  v15 = HIBYTE(a4) & 0xF;
  v28 = a3;
  v29 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v30 = 0;
  v31 = v15;
  v32 = 0;
  while (1)
  {
    v16 = sub_182286F6C();
    if ((v17 & 0x100000000) != 0)
    {
      break;
    }

    *(a1 + v16) = v17;
  }

  if (a1 && a2)
  {
    v18 = 0;
    while ((*(a1 + v18) & 0x80000000) == 0)
    {
      if (a2 == ++v18)
      {
        goto LABEL_11;
      }
    }

    v28 = a1;
    v29 = a2;
    v30 = sub_1822876F4;
    v31 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
    sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
    sub_182AD30A8();
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
LABEL_11:

    v19 = sub_182AD30B8();
    v21 = v20;
  }

  v22 = sub_181DDDCA0(v19, v21);
  v24 = v23;

  v25 = *a5;
  swift_beginAccess();
  v26 = *(*(v25 + 16) + 16);
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  LOBYTE(v32) = 0;
  v33 = v22;
  v34 = v24;
  sub_181DAE9E4(v26, v26, &v28);

  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_182288EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  while (1)
  {
    v8 = sub_182286F6C();
    if ((v9 & 0x100000000) != 0)
    {
      break;
    }

    *(a1 + v8) = v9;
  }

  return a5(a1, a2);
}

uint64_t sub_182288FB4()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_182289008()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_182289050(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_182AD4268();
  }
}

unint64_t sub_182289084()
{
  result = qword_1EA83BA48;
  if (!qword_1EA83BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA48);
  }

  return result;
}

void *sub_1822890D8(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      sub_182AD3C48();
      swift_getWitnessTable();
      v3 = sub_182AD43C8();

      objc_setAssociatedObject(v1, MEMORY[0x1E69E7CC0], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

uint64_t sub_1822891D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1865D9EA0](a1, a2, AssociatedTypeWitness);
  result = sub_182AD30B8();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_18228924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  v8 = sub_182AD3298();
  v16 = a2;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v8 < 0 || (v8 & 0x4000000000000000) != 0))
  {
    v12 = sub_1822894CC(sub_182289C6C, v15, v8, AssociatedTypeWitness);
  }

  else
  {
    _swift_isClassOrObjCExistentialType();
    v10 = (*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80);
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v8 < 0 || (v8 & 0x4000000000000000) != 0))
    {
      v11 = sub_182AD3EB8();
    }

    else
    {
      _swift_isClassOrObjCExistentialType();
      v11 = *(v8 + 16);
    }

    MEMORY[0x1865D9EA0](v8 + v10, v11, AssociatedTypeWitness);
    v12 = sub_182AD30B8();
  }

  v13 = v12;

  return v13;
}

uint64_t sub_182289448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1865D9EA0](a1, a2, AssociatedTypeWitness);
  result = sub_182AD30B8();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  return result;
}

void *sub_1822894CC(void *(*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1822890D8(a3);
  v8 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v9 = *(v7 + 2);

  result = a1(&v11, &v7[v8], v9);
  if (!v4)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_182289584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, BOOL *a8@<X8>)
{
  v12 = sub_182289600(a1, a2, a3, a4, a5);
  if (v8)
  {
  }

  else
  {
    v13 = v12;

    *a8 = v13;
  }

  return sub_181CA27BC(a7);
}

BOOL sub_182289600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v7 - 8);
  while (1)
  {
    v8 = sub_182286F6C();
    if ((v9 & 0x100000000) != 0)
    {
      break;
    }

    *(a1 + v8) = v9;
  }

  v10 = *(a5 + 16);
  v11 = a5 + 32;
  while (1)
  {
    v12 = v10;
    if (v10-- == 0)
    {
      break;
    }

    v11 += 8;
    sub_182AD2FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5A8);
    sub_181AB3DCC(&qword_1EA8363E8, &qword_1EA83A5A8);
    sub_182AD2FB8();
    if (v14)
    {
      v15 = sub_182AD2F58();
      v16 = sub_182AD2F58();

      _CFHTTPMessageAddHeaderFieldValue();

      return v12 != 0;
    }
  }

  return v12 != 0;
}

unint64_t sub_1822897C4(unint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v48[7] = *MEMORY[0x1E69E9840];
  v11 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v41 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v14 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v15 = sub_18224A3EC(0xFuLL, v14 | (v13 << 16), a1, a2);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = v15;

  v17 = a4;
  if (v16 >= 1025)
  {
    sub_181F88CC0(a5, v48);

    v32 = v17;
    sub_181F88CC0(a5, v48);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_9;
    }

    v33 = swift_slowAlloc();

    v34 = v16;
    v35 = a3;
    v36 = v32;
    sub_181F88CC0(a5, v48);
    sub_182289584(v33, v34, a1, a2, v35, v36, a5, &v47);
    MEMORY[0x1865DF520](v33, -1, -1);

    sub_181CA27BC(a5);

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_26:
    LOBYTE(a1) = v47;
    goto LABEL_21;
  }

  sub_181F88CC0(a5, v48);

  v18 = v17;
  isStackAllocationSafe = sub_181F88CC0(a5, v48);
LABEL_9:
  v37[0] = v37;
  v37[1] = v5;
  v40 = v16;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v21 = v37 - v20;
  v42 = a1;
  v43 = a2;
  v44 = 0;
  v45 = v13;
  v46 = 0;
  while (1)
  {
    v22 = sub_182286F6C();
    if ((v23 & 0x100000000) != 0)
    {
      break;
    }

    v21[v22] = v23;
  }

  v38 = v17;
  v39 = a5;
  sub_181F88CC0(a5, v48);

  v24 = *(a3 + 16);
  v25 = 32;
  while (1)
  {
    v26 = v24-- != 0;
    LOBYTE(a1) = v26;
    if (!v26)
    {
      break;
    }

    v48[0] = v21;
    v48[1] = v40;
    sub_182AD2FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5A8);
    sub_181AB3DCC(&qword_1EA8363E8, &qword_1EA83A5A8);
    sub_182AD2FB8();
    v25 += 8;
    if (v27)
    {
      v28 = sub_182AD2F58();
      v29 = sub_182AD2F58();

      _CFHTTPMessageAddHeaderFieldValue();

      break;
    }
  }

  a5 = v39;
  sub_181CA27BC(v39);
  v30 = v38;

  sub_181CA27BC(a5);

LABEL_21:
  sub_181CA27BC(a5);
  return a1 & 1;
}

unint64_t sub_182289C18()
{
  result = qword_1EA83BA50;
  if (!qword_1EA83BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BA50);
  }

  return result;
}

uint64_t NWParameters.nw.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t NWParameters.copy()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = nw_parameters_copy(*(v1 + 16));
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  *(v3 + 16) = v4;
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t NWParameters.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t NWParameters.requiredNetworkAgents.setter()
{
  v1 = xpc_array_create(0, 0);
  v2 = xpc_array_create(0, 0);
  v3 = *(v0 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_18228E568(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));
  nw_parameters_set_required_netagent_classes(v4, v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t static NWParameters.applicationService.getter()
{
  application_service = nw_parameters_create_application_service();
  v1 = nw_parameters_copy(application_service);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v1;
  swift_unknownObjectRelease();
  *(v2 + 16) = v3;
  return v2;
}

NSObject *static NWParameters.applicationServiceQUIC(identity:)(uint64_t a1)
{
  if (a1)
  {
    v1 = swift_unknownObjectRetain();
    result = nw_parameters_create_application_service_quic_using_identity(v1);
    if (result)
    {
      v3 = nw_parameters_copy(result);
      v4 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      *(v5 + 16) = v3;
      swift_unknownObjectRelease();
LABEL_6:
      swift_unknownObjectRelease();
      *(v4 + 16) = v5;
      return v4;
    }

    __break(1u);
  }

  else
  {
    result = nw_parameters_create_application_service_quic();
    if (result)
    {
      v6 = nw_parameters_copy(result);
      v4 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      *(v5 + 16) = v6;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t NWParameters.preferredNetworkAgents.setter()
{
  v1 = xpc_array_create(0, 0);
  v2 = xpc_array_create(0, 0);
  v3 = *(v0 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_18229275C(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));
  nw_parameters_set_preferred_netagent_classes(v4, v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t NWParameters.preferredNetworkAgentUUIDs.setter()
{
  v1 = xpc_array_create(0, 0);
  v2 = *(v0 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_18228EC80(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 24));
  nw_parameters_set_preferred_netagent_uuids(v3, v1);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t NWParameters.requiredInterface.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1821DF12C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void NWParameters.requiredInterfaceSubtype.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  nw_parameters_set_required_interface_subtype(*(v3 + 16), dword_182B04D2C[v2]);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t NWParameters.prohibitedInterfaces.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1821DF148((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t NWParameters.prohibitedInterfaceSubtypes.setter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1821DF164((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t NWParameters.__allocating_init(_:)(NSObject *a1)
{
  v1 = nw_parameters_copy(a1);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v1;
  swift_unknownObjectRelease();
  *(v2 + 16) = v3;
  return v2;
}

uint64_t NWParameters.__allocating_init(quicStream:)()
{
  v0 = swift_allocObject();
  v1 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  *(v2 + 24) = 0;
  v3 = (v2 + 24);
  os_unfair_lock_lock((v2 + 24));
  v4 = nw_parameters_copy_default_protocol_stack(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v6 = (inited + 24);
  *(inited + 16) = v4;
  v7 = (inited + 16);
  os_unfair_lock_unlock(v3);
  os_unfair_lock_lock(v6);
  sub_181C2D570(v7);
  os_unfair_lock_unlock(v6);

  return v0;
}

uint64_t NWParameters.init()()
{
  v1 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t static NWParameters.quic(alpn:)()
{
  type metadata accessor for NWProtocolQUIC.Options();
  inited = swift_initStackObject();
  *(inited + 16) = nw_quic_create_options();

  sub_181FBC07C(v1);

  return _s7Network12NWParametersC4quicAcA14NWProtocolQUICC7OptionsC_tcfC_0();
}

uint64_t static NWParameters.migratingPeerToPeerQuic(quic:)()
{

  v0 = _s7Network12NWParametersC4quicAcA14NWProtocolQUICC7OptionsC_tcfC_0();
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  nw_parameters_set_migrating_peer_to_peer(v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t static NWParameters.quicDatagram(alpn:)()
{
  type metadata accessor for NWProtocolQUIC.Options();
  inited = swift_initStackObject();
  *(inited + 16) = nw_quic_create_options();

  sub_181FBC07C(v1);

  nw_quic_set_stream_is_datagram(*(inited + 16), 1);
  return _s7Network12NWParametersC4quicAcA14NWProtocolQUICC7OptionsC_tcfC_0();
}

uint64_t sub_18228A868(void (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for NWProtocolTLS.Options();
  v6 = swift_allocObject();
  *(v6 + 16) = nw_tls_create_options();
  a1(0);
  inited = swift_initStackObject();
  *(inited + 16) = a2();
  return a3(v6, inited);
}

uint64_t sub_18228A974(void (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void, uint64_t))
{
  a1(0);
  inited = swift_initStackObject();
  *(inited + 16) = a2();
  return a3(0, inited);
}

void NWParameters.requiredInterface.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_copy_required_interface(*(v3 + 16));
  if (v4)
  {
    v5 = *(&v4->isa + OBJC_IVAR____TtC7Network13__NWInterface_interface);

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;

  os_unfair_lock_unlock((v3 + 24));
}

void sub_18228AA98(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_copy_required_interface(*(v3 + 16));
  if (v4)
  {
    v5 = *(&v4->isa + OBJC_IVAR____TtC7Network13__NWInterface_interface);

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));
  *a2 = v5;
}

void sub_18228AB48(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1821EBDD8((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_18228ABA4(NSObject **a1, nw_interface_t interface)
{
  v2 = interface;
  v3 = *a1;
  if (interface)
  {
    v4 = type metadata accessor for __NWInterface();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

    v7 = swift_slowAlloc();
    *&v5[v6] = v7;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v2;
    *v7 = 0;
    v10.receiver = v5;
    v10.super_class = v4;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    v2 = nw_interface_bridge(v8);
  }

  nw_parameters_require_interface(v3, v2);
  return swift_unknownObjectRelease();
}

uint64_t (*NWParameters.requiredInterface.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_copy_required_interface(*(v3 + 16));
  if (v4)
  {
    v5 = *(&v4->isa + OBJC_IVAR____TtC7Network13__NWInterface_interface);

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228AD40;
}

uint64_t sub_18228AD40(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_1821EBDD8((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_1821EBDD8((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

uint64_t sub_18228AE08@<X0>(nw_parameters_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_parameters_get_required_interface_type(*a1);
  if (result >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

void (*NWParameters.requiredInterfaceType.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  required_interface_type = nw_parameters_get_required_interface_type(*(v3 + 16));
  if (required_interface_type >= (nw_interface_type_loopback|nw_interface_type_wifi))
  {
    v5 = 0;
  }

  else
  {
    v5 = required_interface_type;
  }

  *(a1 + 8) = v5;
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228AEB8;
}

void sub_18228AEE8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  nw_parameters_set_required_interface_subtype(*(v3 + 16), dword_182B04D2C[v2]);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_18228AF40@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  result = nw_parameters_get_required_interface_subtype(*a1);
  if (result > 4000)
  {
    if (result == 4001)
    {
      v4 = 3;
      goto LABEL_11;
    }

    if (result == 5001)
    {
      v4 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_11;
  }

  if (result == 1001)
  {
    v4 = 1;
    goto LABEL_11;
  }

  if (result != 1002)
  {
    goto LABEL_8;
  }

  v4 = 2;
LABEL_11:
  *a2 = v4;
  return result;
}

void (*NWParameters.requiredInterfaceSubtype.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  required_interface_subtype = nw_parameters_get_required_interface_subtype(*(v3 + 16));
  if (required_interface_subtype > 4000)
  {
    if (required_interface_subtype == 4001)
    {
      v5 = 3;
      goto LABEL_11;
    }

    if (required_interface_subtype == 5001)
    {
      v5 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_11;
  }

  if (required_interface_subtype == 1001)
  {
    v5 = 1;
    goto LABEL_11;
  }

  if (required_interface_subtype != 1002)
  {
    goto LABEL_8;
  }

  v5 = 2;
LABEL_11:
  *(a1 + 8) = v5;
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228B080;
}

void sub_18228B080(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 6);
  nw_parameters_set_required_interface_subtype(*&v1[4]._os_unfair_lock_opaque, dword_182B04D2C[v2]);

  os_unfair_lock_unlock(v1 + 6);
}

void sub_18228B0EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1821EBDF0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

void sub_18228B148(nw_parameters_t *a1, uint64_t a2)
{
  v3 = *a1;
  nw_parameters_clear_prohibited_interfaces(*a1);
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      v6 = type metadata accessor for __NWInterface();
      while (1)
      {
        v7 = *v5;
        v8 = objc_allocWithZone(v6);
        v9 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
        swift_retain_n();
        v10 = swift_slowAlloc();
        *&v8[v9] = v10;
        *&v8[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
        *&v8[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v7;
        *v10 = 0;
        v13.receiver = v8;
        v13.super_class = v6;
        v11 = [(nw_parameters_t *)&v13 init];
        v12 = nw_interface_bridge(v11);
        if (!v12)
        {
          break;
        }

        nw_parameters_prohibit_interface(v3, v12);
        swift_unknownObjectRelease();

        ++v5;
        if (!--v4)
        {
          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_18228B25C@<X0>(NSObject **a1@<X0>, void *a2@<X8>)
{
  v11 = MEMORY[0x1E69E7CC0];
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_181B80034;
  *(v5 + 24) = v4;
  aBlock[4] = sub_181B80070;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7FFE4;
  aBlock[3] = &block_descriptor_267;
  v6 = _Block_copy(aBlock);

  nw_parameters_iterate_prohibited_interfaces(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v11;
    v9 = *(v11 + 16);

    if (!v9)
    {

      v8 = 0;
    }

    *a2 = v8;
  }

  return result;
}

uint64_t (*NWParameters.prohibitedInterfaces.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  sub_18228B25C((v3 + 16), &v5);
  a1[2] = 0;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v5;
  return sub_18228B45C;
}

uint64_t sub_18228B45C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_1821EBDF0((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_1821EBDF0((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

void sub_18228B520(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1821EBE08((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_18228B57C@<X0>(NSObject **a1@<X0>, void *a2@<X8>)
{
  v11 = MEMORY[0x1E69E7CC0];
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1822926A4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1822926AC;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18228B7B4;
  aBlock[3] = &block_descriptor_258_1;
  v6 = _Block_copy(aBlock);

  nw_parameters_iterate_prohibited_interface_types(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v11;
    v9 = *(v11 + 16);

    if (!v9)
    {

      v8 = 0;
    }

    *a2 = v8;
  }

  return result;
}

uint64_t sub_18228B6FC(unsigned int a1, char **a2)
{
  v4 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_181F5B034(0, *(v4 + 2) + 1, 1, v4);
    *a2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_181F5B034((v6 > 1), v7 + 1, 1, v4);
    *a2 = v4;
  }

  if (a1 >= 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  *(v4 + 2) = v7 + 1;
  v4[v7 + 32] = v8;
  return 1;
}

uint64_t (*NWParameters.prohibitedInterfaceTypes.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  sub_18228B57C((v3 + 16), &v5);
  a1[2] = 0;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v5;
  return sub_18228B864;
}

uint64_t sub_18228B864(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_1821EBE08((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_1821EBE08((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

uint64_t sub_18228B928(void (*a1)(uint64_t *__return_ptr, os_unfair_lock_s *))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  a1(&v5, v3 + 4);
  os_unfair_lock_unlock(v3 + 6);
  return v5;
}

void sub_18228B984(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, os_unfair_lock_s *)@<X3>, void *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock(v5 + 6);
  a2(&v6, v5 + 4);
  os_unfair_lock_unlock(v5 + 6);
  *a3 = v6;
}

void sub_18228B9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_182292714((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_18228BA48(void **a1, uint64_t a2)
{
  v4 = xpc_array_create(0, 0);
  if (a2)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (a2 + 32);
      do
      {
        v7 = *v6++;
        v8 = xpc_uint64_create(qword_182B04D40[v7]);
        xpc_array_append_value(v4, v8);
        swift_unknownObjectRelease();
        --v5;
      }

      while (v5);
    }
  }

  nw_parameters_set_prohibited_interface_subtypes(*a1, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_18228BAF4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v12 = MEMORY[0x1E69E7CC0];
  v3 = nw_parameters_copy_prohibited_interface_subtypes(*a1);
  if (!v3)
  {
    v3 = xpc_array_create(0, 0);
  }

  v4 = swift_allocObject();
  *(v4 + 16) = &v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_18229269C;
  *(v5 + 24) = v4;
  v11[4] = sub_181F7F228;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_181F79D48;
  v11[3] = &block_descriptor_249;
  v6 = _Block_copy(v11);
  swift_unknownObjectRetain();

  xpc_array_apply(v3, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v12;
    v10 = *(v12 + 16);

    if (!v10)
    {

      v9 = 0;
    }

    *a2 = v9;
  }

  return result;
}

uint64_t sub_18228BCB0(int a1, xpc_object_t xuint, char **a3)
{
  value = xpc_uint64_get_value(xuint);
  if (!HIDWORD(value))
  {
    if (value > 4000)
    {
      if (value != 4001)
      {
        if (value == 5001)
        {
          v4 = 4;
          goto LABEL_12;
        }

        goto LABEL_9;
      }

      v4 = 3;
    }

    else
    {
      if (value != 1001)
      {
        if (value == 1002)
        {
          v4 = 2;
          goto LABEL_12;
        }

LABEL_9:
        v4 = 0;
        goto LABEL_12;
      }

      v4 = 1;
    }

LABEL_12:
    v3 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  v3 = sub_181F5B048(0, *(v3 + 2) + 1, 1, v3);
  *a3 = v3;
LABEL_13:
  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_181F5B048((v8 > 1), v9 + 1, 1, v3);
    *a3 = v3;
  }

  *(v3 + 2) = v9 + 1;
  v3[v9 + 32] = v4;
  return 1;
}

uint64_t (*NWParameters.prohibitedInterfaceSubtypes.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  sub_18228BAF4((v3 + 16), &v5);
  a1[2] = 0;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v5;
  return sub_18228BE40;
}

uint64_t sub_18228BE40(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_182292714((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_182292714((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

void (*NWParameters.prohibitExpensivePaths.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  prohibit_expensive = nw_parameters_get_prohibit_expensive(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = prohibit_expensive;
  return sub_18228BF70;
}

void (*NWParameters.prohibitConstrainedPaths.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  prohibit_constrained = nw_parameters_get_prohibit_constrained(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = prohibit_constrained;
  return sub_18228C00C;
}

void (*NWParameters.allowUltraConstrainedPaths.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  allow_ultra_constrained = nw_parameters_get_allow_ultra_constrained(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = allow_ultra_constrained;
  return sub_18228C0A8;
}

void (*NWParameters.preferNoProxies.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  prefer_no_proxy = nw_parameters_get_prefer_no_proxy(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = prefer_no_proxy;
  return sub_18228C144;
}

void NWParameters.requiredLocalEndpoint.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_copy_local_endpoint(*(v3 + 16));
  if (v4)
  {
    sub_181B80998(v4, a1);
  }

  else
  {
    v5 = type metadata accessor for NWEndpoint();
    (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }

  os_unfair_lock_unlock((v3 + 24));
}

void sub_18228C1F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_copy_local_endpoint(*(v3 + 16));
  if (v4)
  {
    sub_181B80998(v4, a2);
  }

  else
  {
    v5 = type metadata accessor for NWEndpoint();
    (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_18228C288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_181AB5D28(a1, &v9[-v5], &qword_1EA839360);
  v7 = *(*a2 + 16);
  v10 = v6;
  os_unfair_lock_lock((v7 + 24));
  sub_18229272C((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));
  return sub_181F49A88(v6, &qword_1EA839360);
}

uint64_t NWParameters.requiredLocalEndpoint.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_182291E08((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  return sub_181F49A88(a1, &qword_1EA839360);
}

uint64_t sub_18228C3D8(NSObject **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  sub_181AB5D28(a2, &v11 - v5, &qword_1EA839360);
  v8 = type metadata accessor for NWEndpoint();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_181F49A88(v6, &qword_1EA839360);
    v9 = 0;
  }

  else
  {
    v9 = NWEndpoint.nw.getter();
    sub_181D8E4A8(v6, type metadata accessor for NWEndpoint);
  }

  nw_parameters_set_local_endpoint(v7, v9);
  return swift_unknownObjectRelease();
}

void (*NWParameters.requiredLocalEndpoint.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  v6 = *(v1 + 16);
  a1[1] = v4;
  a1[2] = v6;
  os_unfair_lock_lock((v6 + 24));
  v7 = nw_parameters_copy_local_endpoint(*(v6 + 16));
  if (v7)
  {
    sub_181B80998(v7, v5);
  }

  else
  {
    v8 = type metadata accessor for NWEndpoint();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  os_unfair_lock_unlock((v6 + 24));
  return sub_18228C638;
}

void sub_18228C638(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = sub_181AB5D28(*(a1 + 8), v4, &qword_1EA839360);
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v3 + 24));
    sub_18229272C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    sub_181F49A88(v4, &qword_1EA839360);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v3 + 24));
    sub_18229272C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  sub_181F49A88(v2, &qword_1EA839360);
  free(v2);
  free(v4);
}

void (*NWParameters.allowLocalEndpointReuse.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  reuse_local_address = nw_parameters_get_reuse_local_address(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = reuse_local_address;
  return sub_18228C7F4;
}

void (*NWParameters.acceptLocalOnly.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  local_only = nw_parameters_get_local_only(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = local_only;
  return sub_18228C8A8;
}

void (*NWParameters.includePeerToPeer.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  include_peer_to_peer = nw_parameters_get_include_peer_to_peer(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = include_peer_to_peer;
  return sub_18228C944;
}

void (*NWParameters.requiresDNSSECValidation.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_requires_dnssec_validation(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = v4;
  return sub_18228C9E0;
}

void sub_18228CA54(void (*a1)(os_unfair_lock_s *))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  a1(v3 + 4);

  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_18228CABC@<X0>(nw_parameters_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_parameters_get_service_class(*a1);
  if (result >= 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

void (*NWParameters.serviceClass.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  service_class = nw_parameters_get_service_class(*(v3 + 16));
  if (service_class >= (nw_service_class_responsive_data|nw_service_class_interactive_video))
  {
    v5 = 0;
  }

  else
  {
    v5 = service_class;
  }

  *(a1 + 8) = v5;
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228CB6C;
}

uint64_t sub_18228CB84@<X0>(nw_parameters_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_parameters_get_multipath_service(*a1);
  if (result >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

void (*NWParameters.multipathServiceType.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  multipath_service = nw_parameters_get_multipath_service(*(v3 + 16));
  if (multipath_service >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = multipath_service;
  }

  *(a1 + 8) = v5;
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228CC34;
}

void (*NWParameters.allowFastOpen.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  fast_open_enabled = nw_parameters_get_fast_open_enabled(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = fast_open_enabled;
  return sub_18228CCD0;
}

void sub_18228CD00(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = a1(*(v5 + 16));
  if (v6 >= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *a2 = v7;

  os_unfair_lock_unlock((v5 + 24));
}

void sub_18228CD64(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, os_unfair_lock_s *)@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock(v5 + 6);
  a2(&v6, v5 + 4);
  os_unfair_lock_unlock(v5 + 6);
  *a3 = v6;
}

void sub_18228CDCC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  v6 = *a1;
  v7 = *(*a2 + 16);
  os_unfair_lock_lock((v7 + 24));
  a5(*(v7 + 16), v6);

  os_unfair_lock_unlock((v7 + 24));
}

uint64_t sub_18228CE2C@<X0>(nw_parameters_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = nw_parameters_get_expired_dns_behavior(*a1);
  if (result >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  return result;
}

void (*NWParameters.expiredDNSBehavior.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  expired_dns_behavior = nw_parameters_get_expired_dns_behavior(*(v3 + 16));
  if (expired_dns_behavior >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = expired_dns_behavior;
  }

  *(a1 + 8) = v5;
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228CEDC;
}

void sub_18228CEF4(os_unfair_lock_s **a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 6);
  a3(*&v4[4]._os_unfair_lock_opaque, v5);

  os_unfair_lock_unlock(v4 + 6);
}

void sub_18228CF50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v9 = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = &v9;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_181EC65EC;
  *(v6 + 24) = v5;
  aBlock[4] = sub_181EC63E0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181EC635C;
  aBlock[3] = &block_descriptor_235;
  v7 = _Block_copy(aBlock);

  nw_protocol_stack_iterate_application_protocols(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 24));
    *a2 = v9;
  }
}

void sub_18228D0D4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_181C4E3C0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_18228D130()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_181C2D914((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_18228D190()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v8 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_181EC65E4;
  *(v4 + 24) = v3;
  aBlock[4] = sub_181EC63D8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181EC635C;
  aBlock[3] = &block_descriptor_36;
  v5 = _Block_copy(aBlock);

  nw_protocol_stack_iterate_application_protocols(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return v8;
  }

  return result;
}

void *sub_18228D300(void *result, uint64_t a2)
{
  if (*result)
  {
    v2 = *(*a2 + 16);

    os_unfair_lock_lock((v2 + 24));
    sub_181C2D558((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  return result;
}

uint64_t sub_18228D388(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    os_unfair_lock_lock((v2 + 24));
    sub_181C2D558((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  return result;
}

uint64_t *(*sub_18228D420(uint64_t *a1))(uint64_t *result, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_protocol_stack_copy_transport_protocol(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v5 = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_18228D4AC;
}

uint64_t *sub_18228D4AC(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = result[1];

      os_unfair_lock_lock((v3 + 24));
      sub_181C2D558((v3 + 16));
      os_unfair_lock_unlock((v3 + 24));
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v4 = result[1];
    os_unfair_lock_lock((v4 + 24));
    sub_181C2D558((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }
}

void sub_18228D564(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = a2(*(v5 + 16));
  os_unfair_lock_unlock((v5 + 24));
  if (v6)
  {
    v7 = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_18228D5F8(uint64_t (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = a1(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (!v4)
  {
    return 0;
  }

  v5 = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(v4);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t (*sub_18228D660(uint64_t *a1))()
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_protocol_stack_copy_internet_protocol(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v5 = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_18228D6E8;
}

uint64_t sub_18228D714()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) description];
  v3 = sub_182AD2F88();

  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_18228D780()
{
  type metadata accessor for NWParameters.PrivacyContext();
  v0 = swift_allocObject();
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83BA70);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = &__block_literal_global_11774;
  *(v0 + 16) = v1;
  qword_1EA83BA60 = v0;

  return swift_unknownObjectRetain();
}

uint64_t static NWParameters.PrivacyContext.default.getter()
{
  if (qword_1EA837268 != -1)
  {
    swift_once();
  }
}

uint64_t NWParameters.PrivacyContext.__allocating_init(description:)()
{
  v0 = swift_allocObject();
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  v1 = sub_182AD3048();

  v2 = nw_privacy_context_create((v1 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83BA70);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v0 + 16) = v3;
  return v0;
}

uint64_t NWParameters.PrivacyContext.init(description:)()
{
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  v1 = sub_182AD3048();

  v2 = nw_privacy_context_create((v1 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83BA70);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *(v0 + 16) = v3;
  return v0;
}

void sub_18228D9CC(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  a1(*(v3 + 16));

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t NWParameters.PrivacyContext.ResolverConfiguration.debugDescription.getter()
{
  v0 = sub_18228DA94();
  if (!v0)
  {
    return 7104878;
  }

  v1 = [v0 description];
  swift_unknownObjectRelease();
  v2 = sub_182AD2F88();

  return v2;
}

NSObject *sub_18228DA94()
{
  v1 = sub_182AD2058();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWEndpoint();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  v15 = type metadata accessor for NWParameters.PrivacyContext.ResolverConfiguration();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182292634(v0, v17, type metadata accessor for NWParameters.PrivacyContext.ResolverConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BAE0) + 48)];
    (*(v2 + 32))(v4, v17, v1);
    v19 = sub_182AD1F98();
    v20 = nw_endpoint_create_with_cfurl(v19);

    https = nw_resolver_config_create_https(v20);
    if (https)
    {
      v22 = v6;
      v23 = *(v18 + 16);
      if (v23)
      {
        v24 = v22;
        v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v36[1] = v18;
        v26 = v18 + v25;
        v27 = *(v24 + 72);
        swift_unknownObjectRetain();
        do
        {
          sub_182292634(v26, v8, type metadata accessor for NWEndpoint);
          v28 = NWEndpoint.nw.getter();
          sub_181D8E4A8(v8, type metadata accessor for NWEndpoint);
          if (v28)
          {
            nw_resolver_config_add_server_address(https, v28);
            swift_unknownObjectRelease();
          }

          v26 += v27;
          --v23;
        }

        while (v23);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v2 + 8))(v4, v1);
    }

    else
    {
      (*(v2 + 8))(v4, v1);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v29 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BAE8) + 48)];
    sub_181B81180(v17, v14);
    v30 = NWEndpoint.nw.getter();
    if (v30)
    {
      https = nw_resolver_config_create_tls(v30);
      if (https)
      {
        v31 = *(v29 + 16);
        if (v31)
        {
          v32 = v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
          v33 = *(v6 + 72);
          swift_unknownObjectRetain();
          do
          {
            sub_182292634(v32, v11, type metadata accessor for NWEndpoint);
            v34 = NWEndpoint.nw.getter();
            sub_181D8E4A8(v11, type metadata accessor for NWEndpoint);
            if (v34)
            {
              nw_resolver_config_add_server_address(https, v34);
              swift_unknownObjectRelease();
            }

            v32 += v33;
            --v31;
          }

          while (v31);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_181D8E4A8(v14, type metadata accessor for NWEndpoint);
      }

      else
      {
        sub_181D8E4A8(v14, type metadata accessor for NWEndpoint);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_181D8E4A8(v14, type metadata accessor for NWEndpoint);

      return 0;
    }
  }

  return https;
}

uint64_t sub_18228DF70()
{
  v0 = sub_18228DA94();
  if (!v0)
  {
    return 7104878;
  }

  v1 = [v0 description];
  swift_unknownObjectRelease();
  v2 = sub_182AD2F88();

  return v2;
}

void sub_18228DFEC()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_182291E24((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_18228E044(NSObject **a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BAD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  v9 = *a1;
  sub_181AB5D28(a3, v13 - v7, &qword_1EA83BAD8);
  v10 = type metadata accessor for NWParameters.PrivacyContext.ResolverConfiguration();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_181F49A88(v8, &qword_1EA83BAD8);
    v11 = 0;
  }

  else
  {
    v11 = sub_18228DA94();
    sub_181D8E4A8(v8, type metadata accessor for NWParameters.PrivacyContext.ResolverConfiguration);
  }

  nw_privacy_context_require_encrypted_name_resolution(v9, a2 & 1, v11);
  return swift_unknownObjectRelease();
}

void sub_18228E19C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock(v3 + 6);
  sub_182292828(&v4);
  os_unfair_lock_unlock(v3 + 6);
  *a2 = v4;
}

void sub_18228E1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1822927C0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_18228E258()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_182291E44((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_18228E2B8(NSObject **a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 24) = a3;

  v5 = *a1;
  nw_privacy_context_clear_proxies(v5);
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 32);
    do
    {
      v8 = *v7++;
      nw_privacy_context_add_proxy(v5, v8);
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_18228E330()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_182291E60(&v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

uint64_t (*sub_18228E384(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 6);
  sub_182292828(&v5);
  a1[3] = 0;
  os_unfair_lock_unlock(v3 + 6);
  *a1 = v5;
  return sub_18228E404;
}

uint64_t sub_18228E404(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_1822927C0((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_1822927C0((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

uint64_t NWParameters.PrivacyContext.deinit()
{

  return v0;
}

uint64_t NWParameters.PrivacyContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t (*NWParameters.requiredNetworkAgents.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_18228E844((v3 + 16), nw_parameters_copy_required_netagent_domains, nw_parameters_copy_required_netagent_types, &v5);
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v5;
  return sub_18228E62C;
}

uint64_t sub_18228E670(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_18228E844((v5 + 16), a1, a2, &v7);
  os_unfair_lock_unlock((v5 + 24));
  return v7;
}

void sub_18228E6D4(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, void *a4@<X8>)
{
  v7 = *(*a1 + 16);
  os_unfair_lock_lock((v7 + 24));
  sub_18228E844((v7 + 16), a2, a3, &v8);
  os_unfair_lock_unlock((v7 + 24));
  *a4 = v8;
}

void sub_18228E74C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = a2 + 56;
    do
    {
      v8 = sub_182AD3048();

      v9 = xpc_string_create((v8 + 32));

      xpc_array_append_value(a3, v9);

      v10 = sub_182AD3048();

      v11 = xpc_string_create((v10 + 32));

      xpc_array_append_value(a4, v11);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v7 += 32;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_18228E844@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  result = a2(*a1);
  if (!result)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_20:
    *a4 = v13;
    return result;
  }

  v8 = result;
  v9 = a3(v6);
  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v10 = v9;
  count = xpc_array_get_count(v8);
  result = xpc_array_get_count(v10);
  v23 = a4;
  if (count != result)
  {
    goto LABEL_16;
  }

  if ((count & 0x8000000000000000) == 0)
  {
    if (count)
    {
      v12 = 0;
      v13 = MEMORY[0x1E69E7CC0];
      v25 = v10;
      v24 = count;
      do
      {
        if (xpc_array_get_string(v8, v12) && xpc_array_get_string(v10, v12))
        {
          v15 = sub_182AD3158();
          v17 = v16;
          v18 = sub_182AD3158();
          v20 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_181F5B05C(0, v13[2] + 1, 1, v13);
          }

          v22 = v13[2];
          v21 = v13[3];
          if (v22 >= v21 >> 1)
          {
            v13 = sub_181F5B05C((v21 > 1), v22 + 1, 1, v13);
          }

          v13[2] = v22 + 1;
          v14 = &v13[4 * v22];
          v14[4] = v15;
          v14[5] = v17;
          v14[6] = v18;
          v14[7] = v20;
          v10 = v25;
          count = v24;
        }

        ++v12;
      }

      while (count != v12);
      goto LABEL_17;
    }

LABEL_16:
    v13 = MEMORY[0x1E69E7CC0];
LABEL_17:
    swift_unknownObjectRelease();
    a4 = v23;
LABEL_19:
    result = swift_unknownObjectRelease();
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t (*NWParameters.preferredNetworkAgents.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_18228E844((v3 + 16), nw_parameters_copy_preferred_netagent_domains, nw_parameters_copy_preferred_netagent_types, &v5);
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v5;
  return sub_18228EAAC;
}

char *NWParameters.preferredNetworkAgentUUIDs.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_18228EC9C((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_18228EB18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_18228EC9C((v3 + 16), &v4);
  os_unfair_lock_unlock((v3 + 24));
  *a2 = v4;
}

void sub_18228EB78(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      *(v7 + 16) = 16;
      *(v7 + 24) = 2 * v8 - 64;
      *(v7 + 32) = v6;
      v9 = xpc_uuid_create((v7 + 32));

      xpc_array_append_value(a3, v9);
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }
}

size_t sub_18228EC9C@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  result = nw_parameters_copy_preferred_netagent_uuids(*a1);
  if (!result)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:
    *a2 = v7;
    return result;
  }

  v4 = result;
  result = xpc_array_get_count(result);
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        uuid = xpc_array_get_uuid(v4, v6);
        if (uuid)
        {
          v9 = uuid;
          if (uuid_is_null(uuid) != 1)
          {
            v12 = *v9;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_181C6CA4C(0, *(v7 + 2) + 1, 1, v7);
            }

            v11 = *(v7 + 2);
            v10 = *(v7 + 3);
            if (v11 >= v10 >> 1)
            {
              v7 = sub_181C6CA4C((v10 > 1), v11 + 1, 1, v7);
            }

            *(v7 + 2) = v11 + 1;
            *&v7[16 * v11 + 32] = v12;
          }
        }

        ++v6;
      }

      while (v5 != v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    result = swift_unknownObjectRelease();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t (*NWParameters.preferredNetworkAgentUUIDs.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_18228EC9C((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v5;
  return sub_18228EE54;
}

uint64_t sub_18228EE6C(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void NWParameters.setPrivacyContext(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_182291E80((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_18228EF3C(NSObject **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));
  nw_parameters_set_privacy_context(v2, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_18228EFB8(uint64_t (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = a1(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  return v4;
}

void sub_18228F000(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock((v5 + 24));
  LOBYTE(a2) = a2(*(v5 + 16));
  os_unfair_lock_unlock((v5 + 24));
  *a3 = a2;
}

void sub_18228F058(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  v6 = *a1;
  v7 = *(*a2 + 16);
  os_unfair_lock_lock((v7 + 24));
  a5(*(v7 + 16), v6);

  os_unfair_lock_unlock((v7 + 24));
}

void (*NWParameters.isKnownTracker.modify(uint64_t a1))(os_unfair_lock_s **a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  is_known_tracker = nw_parameters_get_is_known_tracker(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *(a1 + 8) = is_known_tracker;
  return sub_18228F13C;
}

void sub_18228F154(os_unfair_lock_s **a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 6);
  a3(*&v4[4]._os_unfair_lock_opaque, v5);

  os_unfair_lock_unlock(v4 + 6);
}

uint64_t NWParameters.Attribution.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

void NWParameters.attribution.getter(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  *a1 = nw_parameters_get_attribution(*(v3 + 16)) == nw_parameters_attribution_user;

  os_unfair_lock_unlock((v3 + 24));
}

void sub_18228F290(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_get_attribution(*(v3 + 16)) == nw_parameters_attribution_user;
  os_unfair_lock_unlock((v3 + 24));
  *a2 = v4;
}

void sub_18228F2E4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  if (v2)
  {
    v4 = nw_parameters_attribution_user;
  }

  else
  {
    v4 = nw_parameters_attribution_developer;
  }

  nw_parameters_set_attribution(*(v3 + 16), v4);

  os_unfair_lock_unlock((v3 + 24));
}

void (*NWParameters.attribution.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 24));
  *(a1 + 8) = nw_parameters_get_attribution(*(v3 + 16)) == nw_parameters_attribution_user;
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228F3B0;
}

void sub_18228F3B0(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 6);
  if (v2)
  {
    v3 = nw_parameters_attribution_user;
  }

  else
  {
    v3 = nw_parameters_attribution_developer;
  }

  nw_parameters_set_attribution(*&v1[4]._os_unfair_lock_opaque, v3);

  os_unfair_lock_unlock(v1 + 6);
}

void sub_18228F41C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1822927D8((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t (*NWParameters.accountID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 24));
  if (nw_parameters_get_account_id(*(v3 + 16)))
  {
    v4 = sub_182AD3158();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  a1[1] = v6;
  return sub_18228F4FC;
}

uint64_t sub_18228F4FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_1822927D8((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_1822927D8((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

uint64_t sub_18228F5C8(uint64_t (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if (a1(*(v3 + 16)))
  {
    v4 = sub_182AD3158();
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));
  return v4;
}

void sub_18228F634(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock((v5 + 24));
  if (a2(*(v5 + 16)))
  {
    v6 = sub_182AD3158();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  os_unfair_lock_unlock((v5 + 24));
  *a3 = v6;
  a3[1] = v8;
}

void sub_18228F6A4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1822927F0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t (*NWParameters.sourceApplicationBundleID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 24));
  if (nw_parameters_get_effective_bundle_id(*(v3 + 16)))
  {
    v4 = sub_182AD3158();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  a1[1] = v6;
  return sub_18228F784;
}

uint64_t sub_18228F784(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 24));
    sub_1822927F0((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
    os_unfair_lock_lock((v2 + 24));
    sub_1822927F0((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }
}

void NWParameters.applicationID.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  *a1 = nw_parameters_copy_application_id(*(v3 + 16));

  os_unfair_lock_unlock((v3 + 24));
}

void sub_18228F884(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_copy_application_id(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  *a2 = v4;
}

void *sub_18228F8D4(void *result, uint64_t a2)
{
  if (*result)
  {
    v2 = *(*a2 + 16);
    MEMORY[0x1EEE9AC00](result);
    swift_unknownObjectRetain();
    os_unfair_lock_lock((v2 + 24));
    sub_182292798((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
    return swift_unknownObjectRelease();
  }

  return result;
}

void *NWParameters.applicationID.setter(void *result)
{
  if (*result)
  {
    v2 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock((v2 + 24));
    sub_182291E9C((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *(*NWParameters.applicationID.modify(uint64_t *a1))(uint64_t *result, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 24));
  *a1 = nw_parameters_copy_application_id(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  return sub_18228FA60;
}

uint64_t *sub_18228FA60(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = result[1];
      MEMORY[0x1EEE9AC00](result);
      swift_unknownObjectRetain();
      os_unfair_lock_lock((v3 + 24));
      sub_182292798((v3 + 16));
      os_unfair_lock_unlock((v3 + 24));
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else if (v2)
  {
    v4 = result[1];
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock((v4 + 24));
    sub_182292798((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18228FB60()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) description];
  v3 = sub_182AD2F88();

  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

unint64_t NWParameters.customOptions.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = nw_parameters_copy_custom_options(*(v1 + 16));
  if (v2)
  {
    v3 = v2;
    Class = object_getClass(v2);
    if (Class == sub_182AD26B8())
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v3);
      if (bytes_ptr)
      {
        v8 = bytes_ptr;
        length = xpc_data_get_length(v3);
        if (length > 0)
        {
          v5 = sub_181E63D00(v8, length);
          swift_unknownObjectRelease();
          goto LABEL_5;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  v5 = 0;
LABEL_5:
  os_unfair_lock_unlock((v1 + 24));
  return v5;
}

double sub_18228FC84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_18228FE34((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_18228FCE4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_182292808((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t NWParameters.customOptions.setter(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_182291ECC((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));
  return sub_181D9D680(a1, a2);
}

void sub_18228FDB0(void **a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    nw_parameters_set_custom_options(*a1, 0);
  }

  else
  {
    sub_181F49B58(a2, a3);
    sub_18229181C(a2, a3, a1);
    sub_181D9D680(a2, a3);
  }
}

void *sub_18228FE34@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = nw_parameters_copy_custom_options(*a1);
  if (result)
  {
    v4 = result;
    Class = object_getClass(result);
    if (Class == sub_182AD26B8())
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v4);
      if (bytes_ptr)
      {
        v9 = bytes_ptr;
        length = xpc_data_get_length(v4);
        if (length >= 1)
        {
          v6 = sub_181E63D00(v9, length);
          v7 = v11;
          result = swift_unknownObjectRelease();
          goto LABEL_5;
        }
      }
    }

    result = swift_unknownObjectRelease();
  }

  v6 = 0;
  v7 = 0xF000000000000000;
LABEL_5:
  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t (*NWParameters.customOptions.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = nw_parameters_copy_custom_options(*(v3 + 16));
  if (v4)
  {
    v5 = v4;
    Class = object_getClass(v4);
    if (Class == sub_182AD26B8())
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v5);
      if (bytes_ptr)
      {
        v11 = bytes_ptr;
        length = xpc_data_get_length(v5);
        if (length > 0)
        {
          v7 = sub_181E63D00(v11, length);
          v8 = v13;
          swift_unknownObjectRelease();
          goto LABEL_5;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  v7 = 0;
  v8 = 0xF000000000000000;
LABEL_5:
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v7;
  a1[1] = v8;
  return sub_18228FFC0;
}

uint64_t sub_18228FFC0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_181F49B44(v2, v3);
    os_unfair_lock_lock((v4 + 24));
    sub_182292808((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
    sub_181D9D680(v2, v3);
  }

  else
  {
    os_unfair_lock_lock((v4 + 24));
    sub_182292808((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  return sub_181D9D680(v2, v3);
}

void (*ProxyConfiguration.allowFailover.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = nw_proxy_config_get_failover_allowed(v3);
  return sub_182290110;
}

uint64_t ProxyConfiguration.matchDomains.getter()
{
  v1 = *v0;
  v8 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_182291EE8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_182291F04;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822902F0;
  aBlock[3] = &block_descriptor_61;
  v4 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_proxy_config_enumerate_match_domains(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}