BOOL sub_18225B6FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v10 = sub_18224FE14();
    v12 = v11;

    v2 = v10;
    *a1 = v10;
    a1[1] = v12;
    v3 = v12;
    if ((v12 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v17[0] = v2;
    v17[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v13 = sub_182AD3048();
    v14 = swift_unknownObjectRetain();
    v9 = nw_txt_record_set_key(v14, (v13 + 32), v17, HIBYTE(v3) & 0xF);
    goto LABEL_8;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_182AD3CF8();
    v6 = v16;
  }

  v7 = sub_182AD3048();
  v8 = swift_unknownObjectRetain();
  v9 = nw_txt_record_set_key(v8, (v7 + 32), v5, v6);
LABEL_8:
  swift_unknownObjectRelease();

  return v9;
}

unint64_t sub_18225B840()
{
  result = qword_1EA83B538;
  if (!qword_1EA83B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B538);
  }

  return result;
}

unint64_t sub_18225B898()
{
  result = qword_1EA83B540;
  if (!qword_1EA83B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B540);
  }

  return result;
}

unint64_t sub_18225B8F0()
{
  result = qword_1EA83B548;
  if (!qword_1EA83B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B548);
  }

  return result;
}

unint64_t sub_18225B948()
{
  result = qword_1EA83B550;
  if (!qword_1EA83B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B550);
  }

  return result;
}

unint64_t sub_18225BAA8()
{
  result = qword_1EA836518;
  if (!qword_1EA836518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836518);
  }

  return result;
}

uint64_t sub_18225BB58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_18225BB64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_18225BB70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18225BBB8(uint64_t a1)
{
  v2 = type metadata accessor for NWActorID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18225BC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18225BC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18225BCE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Connection4.__allocating_init(using:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t Connection4.nw.getter()
{
  sub_181F3D244();
}

uint64_t Connection4.__allocating_init(to:using:where:)(uint64_t a1, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_18225DF10(a1, a2, a3, a4);

  return v8;
}

uint64_t Connection4.init(to:using:where:)(uint64_t a1, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v4 = sub_18225DF10(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_18225BFAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *), void (*a6)(uint64_t, void *))
{
  if (v6[2])
  {
    v10 = result;
    v11 = *v6;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v11[10];
    v13[3] = v11[11];
    v13[4] = swift_allocateMetadataPack();
    v13[5] = v11[13];
    v13[6] = swift_allocateWitnessTablePack();
    v13[7] = v12;
    v13[8] = v10;
    v13[9] = a2;
    v13[10] = v11;

    a5(a4, v13);
    a6(a4, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection4.deinit()
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

uint64_t Connection4.__deallocating_deinit()
{
  Connection4.deinit();

  return swift_deallocClassInstance();
}

uint64_t Connection4.hashValue.getter()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_18225C20C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18225C288()
{
  swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)();
}

uint64_t sub_18225C2E8()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t Connection4<>.send(_:metadata:isComplete:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
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

  return MEMORY[0x1EEE6DFA0](sub_18225C494, 0, 0);
}

uint64_t sub_18225C494()
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

uint64_t Connection4<>.receive(minimumLength:maximumLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Connection4<>.receive(exactly:)(uint64_t a1, uint64_t a2)
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

uint64_t Connection4.send<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18225D3A8, 0, 0);
}

{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18225D540, 0, 0);
}

uint64_t Connection4.receive<>()()
{
  v2 = *v0;
  *(v1 + 24) = v0;
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_18208DDEC;

  return static UDP.receive<A>(connection:)(v1 + 16, v1 + 24, v2, WitnessTable);
}

uint64_t Connection4.send<>(type:_:metadata:isFinal:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 116) = a5;
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 112) = a1;
  *(v6 + 88) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_18225CCE0, 0, 0);
}

void sub_18225CCE0()
{
  *(v0 + 48) = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = *(*(v0 + 56) + 16);
    v6 = *(*(v0 + 56) + 24);
    v7 = __OFSUB__(v6, v5);
    v4 = v6 - v5;
    if (!v7)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(v2);
    goto LABEL_11;
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 60);
  v7 = __OFSUB__(v9, v8);
  LODWORD(v4) = v9 - v8;
  if (v7)
  {
    __break(1u);
    return;
  }

  v4 = v4;
LABEL_11:
  v10 = *(v0 + 88);
  v11 = *(v0 + 116);
  v12 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 24) = v4;
  *(v0 + 32) = 1;
  *(v0 + 33) = v11;
  *(v0 + 40) = v12;

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_18208E190;
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);

  static TLV.send<A>(connection:content:metadata:)(v0 + 48, v15, v16, v0 + 16, v10, WitnessTable);
}

uint64_t Connection4.receive<>()(uint64_t a1)
{
  v3 = *v1;
  v2[7] = a1;
  v2[6] = v1;
  v4 = swift_task_alloc();
  v2[8] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v2;
  v4[1] = sub_18208E400;

  return static TLV.receive<A>(connection:)((v2 + 2), (v2 + 6), v3, WitnessTable);
}

{
  v3 = *v1;
  v2[5] = a1;
  v2[4] = v1;
  v4 = swift_task_alloc();
  v2[6] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v2;
  v4[1] = sub_18208F9A0;

  return static WebSocket.receive<A>(connection:)((v2 + 2), (v2 + 4), v3, WitnessTable);
}

uint64_t Connection4.send<A>(_:metadata:isFinal:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 128) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18225CFB4, 0, 0);
}

uint64_t sub_18225CFB4()
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

uint64_t Connection4.receive<A>()(uint64_t a1)
{
  v3 = *v1;
  v2[5] = a1;
  v4 = *(*v1 + 88);
  v5 = v4[2];
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[8] = v6;
  v2[4] = v1;
  v7 = swift_task_alloc();
  v2[9] = v7;
  v8 = v4[3];
  v2[10] = v8;
  v9 = v4[4];
  v2[11] = v9;
  WitnessTable = swift_getWitnessTable();
  *v7 = v2;
  v7[1] = sub_18208EA38;

  return static JSON.receive<A>(connection:)(v6, (v2 + 2), (v2 + 4), v5, v3, v8, v9, WitnessTable);
}

uint64_t sub_18225D3A8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  *(v0 + 32) = *(v0 + 64);
  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_181F76154(v5, v6);
  v9 = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  *(v0 + 16) = 1;
  *(v0 + 20) = -1;
  *(v0 + 18) = 0;
  *(v0 + 21) = 1;
  *(v0 + 24) = v3;

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v0;
  v10[1] = sub_18208EE90;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v7, v9, v0 + 16, v1, WitnessTable);
}

uint64_t sub_18225D540()
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

  *(v0 + 16) = 2;
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
  v5[1] = sub_18208F1A0;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t Connection4.ping<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18225D6B4, 0, 0);
}

uint64_t sub_18225D6B4()
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

  *(v0 + 16) = 4;
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

uint64_t Connection4.pong<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_18225D828, 0, 0);
}

uint64_t sub_18225D828()
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

  *(v0 + 16) = 5;
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
  v5[1] = sub_18208F1A0;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, v3, v4, v0 + 16, v1, WitnessTable);
}

uint64_t Connection4.close<>(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 56) = *v4;
  *(v5 + 80) = *a1;
  *(v5 + 82) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_18225D9A8, 0, 0);
}

uint64_t sub_18225D9A8()
{
  v1 = *(v0 + 82);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  *(v0 + 16) = 3;
  *(v0 + 20) = v1;
  *(v0 + 18) = v2;
  *(v0 + 21) = 257;
  *(v0 + 24) = *(v0 + 40);

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_18208F748;

  return static WebSocket.send<A>(connection:content:metadata:)(v0 + 32, 0, 0xC000000000000000, v0 + 16, v3, WitnessTable);
}

uint64_t Connection4<>.messages.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6DBA8](&unk_182B015D0, v3, AssociatedTypeWitness);
}

uint64_t sub_18225DC70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v3[3] = a1;
  v3[4] = a3;
  v7 = v6;
  v8 = *(*a2 + 88);
  v3[5] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v3[7] = *(AssociatedTypeWitness - 8);
  v10 = swift_task_alloc();
  v3[8] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v3[9] = v11;
  v3[10] = *(v11 - 8);
  v12 = swift_task_alloc();
  v3[11] = v12;
  v3[2] = a2;
  v16 = (*(a3 + 40) + **(a3 + 40));
  v13 = swift_task_alloc();
  v3[12] = v13;
  WitnessTable = swift_getWitnessTable();
  *v13 = v3;
  v13[1] = sub_18208FF18;

  return v16(v12, v10, v3 + 2, v7, WitnessTable, v8, a3);
}

uint64_t sub_18225DF10(uint64_t a1, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *v4;
  v10 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v4;
  v13 = *(v8 + 80);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v15 = (v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = *(v9 + 96);
    *v15 = *(v9 + 88);
    v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    if (v13 >= 6 && v15 - v17 + 8 >= 0x20)
    {
      v18 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      v52 = v15 + 3;
      v53 = (v17 + 16);
      v54 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v55 = *v53;
        *(v52 - 1) = *(v53 - 1);
        *v52 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 4;
      }

      while (v54);
      if (v13 == v18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v13 - v18;
    v20 = 8 * v18;
    v21 = &v15[v18 + 1];
    v22 = (v17 + v20);
    do
    {
      v23 = *v22++;
      *v21++ = v23;
      --v19;
    }

    while (v19);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v24 = *(v9 + 88);
LABEL_9:
  v56[1] = v56;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v27 = v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = v56;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v31 = v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  if (v13)
  {
    v32 = (v24 + 48);
    v33 = v31;
    do
    {
      v34 = *v32;
      v32 += 4;
      *v33++ = &v27[v34];
      --v13;
    }

    while (v13);
    v35 = *(v24 + 32);
  }

  else
  {
    v35 = 0;
  }

  a2(&v27[v35], v29);
  v36 = sub_182185B3C(v27, v24);
  result = (*(v25 + 8))(v27, v24);
  v38 = v36[2];
  if (v38)
  {
    v39 = 0;
    v40 = (v36 + 4);
    while (v39 < v36[2])
    {
      sub_181F75240(v40, v60);
      ++v39;
      v41 = v61;
      v42 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v43 = *(a4 + 16);
      os_unfair_lock_lock((v43 + 24));
      v44 = *(v43 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v43 + 24));
      (*(v42 + 56))(v44, v41, v42);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v60);
      v40 += 40;
      if (v38 == v39)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v45 = v58;
    v46 = NWEndpoint.nw.getter();
    if (v46)
    {
      v47 = v46;
      if (nw_endpoint_get_type(v46) == nw_endpoint_type_url)
      {
        v48 = *(a4 + 16);
        os_unfair_lock_lock((v48 + 24));
        v49 = *(v48 + 16);
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v48 + 24));
        nw_parameters_set_url_endpoint(v49, v47);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v50 = v57;
    sub_181FE4EE0(v45, v57);
    type metadata accessor for NWConnection(0);
    swift_allocObject();
    v51 = sub_181E60914(v50, a4);
    sub_181FDAD5C(v45);
    result = v59;
    v59[2] = v51;
  }

  return result;
}

uint64_t sub_18225E334(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F54964;

  return sub_18225DC70(a1, v4, v5);
}

uint64_t sub_18225E3E0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

const char *sub_18225E4F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network8__NWPath_lock);
  os_unfair_lock_lock(v1 + 4);
  v2 = v0 + OBJC_IVAR____TtC7Network8__NWPath_path;
  swift_beginAccess();
  if (*(v2 + 368))
  {
    v3 = *(v2 + 360);
  }

  else
  {
    memcpy(__dst, v2, sizeof(__dst));
    v4 = *(v2 + 376);
    v8 = 0;
    v9 = v4;
    v3 = PathProperties.description.getter();
    *(v2 + 360) = v3;
    *(v2 + 368) = v5;
  }

  swift_endAccess();

  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t PathProperties.LinkQuality.description.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6574617265646F6DLL;
  if (*v0 != 2)
  {
    v2 = 1685024615;
  }

  if (*v0)
  {
    v1 = 0x6C616D696E696DLL;
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

uint64_t sub_18225E678()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6574617265646F6DLL;
  if (*v0 != 2)
  {
    v2 = 1685024615;
  }

  if (*v0)
  {
    v1 = 0x6C616D696E696DLL;
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

uint64_t sub_18225E6EC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) > 0x1F)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = byte_182B01752[(result - 1)];
  }

  return result;
}

uint64_t _nw_network_agent_cache_copy_proxy_config_0(uint64_t result, unsigned int a2, unsigned int a3, const unsigned __int8 *a4)
{
  if (result)
  {

    if (uuid_is_null(a4) == 1)
    {

      return 0;
    }

    else
    {
      v10 = *a4;
      v7 = a3;
      v8 = a3 == 0;
      if (a3 == -1)
      {
        v7 = 1;
        v8 = 1;
      }

      sub_181AC04E8(&v10, (v7 | (v8 << 32)), a2, v11);

      result = v11[0];
      if (v11[0])
      {
        v9 = v11[1];

        return v9;
      }
    }
  }

  return result;
}

id _nw_path_create_static(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, void *a11)
{
  swift_unknownObjectRetain();
  v18 = sub_18225E890(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  swift_unknownObjectRelease();
  return v18;
}

id sub_18225E890(void *a1, uint64_t a2, unsigned int a3, unsigned __int8 *uu, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (!uu || uuid_is_null(uu) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = a9;
    if (!a1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v17 = 0;
  v15 = *uu;
  v16 = *(uu + 1);
  v18 = a9;
  if (a1)
  {
LABEL_4:
    v19 = a1;
  }

LABEL_5:
  if (a2)
  {
    v20 = *(a2 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    memcpy(__dst, ((v20 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
    sub_181F481DC(__dst, aBlock);
  }

  else
  {
    Parameters.init(noInternetProtocol:)(0, __dst);
  }

  type metadata accessor for MutableParametersStorage();
  v20 = swift_allocObject();
  memcpy((v20 + 16), __dst, 0x188uLL);
LABEL_10:
  if (a3 >= 4)
  {
    v21 = 0;
  }

  else
  {
    v21 = a3;
  }

  if (v18)
  {
    v22 = *(v18 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

    if (a10)
    {
LABEL_15:
      v23 = *(a10 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0;
    if (a10)
    {
      goto LABEL_15;
    }
  }

  v23 = 0;
LABEL_18:
  sub_181FD45CC(a1, v20, aBlock);
  __dst[6] = aBlock[6];
  __dst[7] = aBlock[7];
  __dst[8] = aBlock[8];
  *(&__dst[8] + 12) = *(&aBlock[8] + 12);
  __dst[2] = aBlock[2];
  __dst[4] = aBlock[4];
  __dst[5] = aBlock[5];
  *&__dst[0] = *&aBlock[0];
  __dst[1] = aBlock[1];
  v24 = HIDWORD(aBlock[9]);
  *(&__dst[22] + 10) = *(&aBlock[22] + 10);
  __dst[20] = aBlock[20];
  __dst[21] = aBlock[21];
  __dst[22] = aBlock[22];
  __dst[16] = aBlock[16];
  __dst[17] = aBlock[17];
  __dst[18] = aBlock[18];
  __dst[19] = aBlock[19];
  __dst[12] = aBlock[12];
  __dst[13] = aBlock[13];
  __dst[14] = aBlock[14];
  __dst[15] = aBlock[15];
  __dst[10] = aBlock[10];
  __dst[11] = aBlock[11];
  HIDWORD(__dst[9]) = HIDWORD(aBlock[9]);
  BYTE4(__dst[7]) = v21;
  *(&__dst[3] + 1) = v16;
  LOBYTE(__dst[4]) = v17;
  *&__dst[3] = v15;
  *(&__dst[0] + 1) = v22;

  *&__dst[1] = v23;

  if (a5)
  {
    if ((v24 & 0x20) != 0)
    {
      goto LABEL_24;
    }

    v24 |= 0x20u;
  }

  else
  {
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    v24 &= ~0x20u;
  }

  HIDWORD(__dst[9]) = v24;
LABEL_24:
  if (a6)
  {
    if ((v24 & 0x10) != 0)
    {
      goto LABEL_30;
    }

    v24 |= 0x10u;
  }

  else
  {
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    v24 &= ~0x10u;
  }

  HIDWORD(__dst[9]) = v24;
LABEL_30:
  if (a7)
  {
    if ((v24 & 0x40) != 0)
    {
      goto LABEL_36;
    }

    v24 |= 0x40u;
  }

  else
  {
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    v24 &= ~0x40u;
  }

  HIDWORD(__dst[9]) = v24;
LABEL_36:
  if (a8)
  {
    if ((v24 & 0x80) != 0)
    {
      goto LABEL_42;
    }

    v25 = v24 | 0x80;
  }

  else
  {
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    v25 = v24 & 0xFFFFFF7F;
  }

  HIDWORD(__dst[9]) = v25;
LABEL_42:
  if (!a11)
  {
LABEL_45:
    v28 = 0;
    goto LABEL_46;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = __dst;
  v27 = swift_allocObject();
  v28 = sub_18225F204;
  *(v27 + 16) = sub_18225F204;
  *(v27 + 24) = v26;
  *&aBlock[2] = sub_18225F20C;
  *(&aBlock[2] + 1) = v27;
  *&aBlock[0] = MEMORY[0x1E69E9820];
  *(&aBlock[0] + 1) = 1107296256;
  *&aBlock[1] = sub_18225F238;
  *(&aBlock[1] + 1) = &block_descriptor_33;
  v29 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_dictionary_apply(a11, v29);
  swift_unknownObjectRelease();
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_46:
  memcpy(__src, __dst, 0x17AuLL);
  v31 = type metadata accessor for __NWPath();
  v32 = objc_allocWithZone(v31);
  v33 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  type metadata accessor for SystemLock._Storage();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *&v32[v33] = v34;
  *&v32[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
  *&v32[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
  *&v32[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
  memcpy(&v32[OBJC_IVAR____TtC7Network8__NWPath_path], __src, 0x17AuLL);
  sub_181A3DF5C(__src, aBlock);
  sub_181A3DF5C(__src, aBlock);
  v42.receiver = v32;
  v42.super_class = v31;
  v35 = objc_msgSendSuper2(&v42, sel_init);
  sub_181A3DFB8(__src);
  memcpy(aBlock, __dst, 0x17AuLL);
  sub_181A3DFB8(aBlock);
  sub_181A554F4(v28);
  return v35;
}

uint64_t sub_18225ED94(int a1, id a2, void *a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a2);
  if (Class != sub_182AD26F8())
  {
    v6 = object_getClass(a2);
    xpc_type_get_name(v6);
    v7 = sub_182AD3158();
    v9 = v8;
    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1ED411DA8);

    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38[0] = v14;
      *v13 = 136315138;
      v15 = sub_181C64FFC(v7, v9, v38);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_181A37000, v11, v12, "Got unexpected XPC type while creating agent for _nw_path_create_static '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1865DF520](v14, -1, -1);
      MEMORY[0x1865DF520](v13, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  uint64 = xpc_dictionary_get_uint64(a2, "generation");
  length = 0;
  data = xpc_dictionary_get_data(a2, "data", &length);
  v18 = data;
  if (data)
  {
    v19 = data + length;
  }

  else
  {
    v19 = 0;
  }

  result = malloc(length);
  v38[0] = v18;
  v38[1] = v19;
  if (result)
  {
    v21 = result;
    sub_181CA5CCC();
    sub_182AD1CE8();
    if (HIDWORD(uint64))
    {
      __break(1u);
      swift_once();
      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1ED411DA8);
      v25 = a3;
      v26 = sub_182AD2678();
      v27 = sub_182AD38B8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = a3;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_181A37000, v26, v27, "Got unexpected NetworkAgent failure: %@", v28, 0xCu);
        sub_181F49A88(v29, &unk_1EA83AA30);
        MEMORY[0x1865DF520](v29, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v22 = length;
      type metadata accessor for NetworkAgent.NetworkAgentBackingClass();
      swift_allocObject();
      v23 = sub_181AC3F18(v21, v21 + v22, uint64, v38);
      if (a3[33] || (v32 = v23, a3[33] = sub_18225B598(MEMORY[0x1E69E7CC0]), , v23 = v32, a3[33]))
      {
        v33 = *(v23 + 4);
        v34 = *(v23 + 5);
        v35 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38[0] = a3[33];
        a3[33] = 0x8000000000000000;
        sub_181AC4D20(v35, v33, v34, isUniquelyReferenced_nonNull_native);
        a3[33] = v38[0];
      }

      else
      {
      }
    }

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_18225F238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_18225F2AC(const void *a1, unsigned __int16 a2, int a3)
{
  v5 = a2;
  v6 = swift_slowAlloc();
  memcpy(v6, a1, v5);
  type metadata accessor for NetworkAgent.NetworkAgentBackingClass();
  swift_allocObject();
  v13 = sub_181AC3F18(v6, v6 + v5, a3, &v13);
  v7 = sub_1820F55CC();
  v9 = v8;
  if (v7 == sub_182AD3158() && v9 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_182AD4268();
  }

  return v11 & 1;
}

uint64_t _nw_path_copy_description_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  v3 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
  v4 = a1;
  os_unfair_lock_lock(v3 + 4);
  v5 = &v4[OBJC_IVAR____TtC7Network8__NWPath_path];
  swift_beginAccess();
  if (*(v5 + 46))
  {
    v6 = *(v5 + 45);
    v7 = *(v5 + 46);
  }

  else
  {
    memcpy(__dst, v5, sizeof(__dst));
    v9 = *(v5 + 188);
    v13 = 0;
    v14 = v9;
    v6 = PathProperties.description.getter();
    v7 = v10;
    *(v5 + 45) = v6;
    *(v5 + 46) = v10;
  }

  v8 = sub_182267820(v6, v7);
  swift_endAccess();
  swift_bridgeObjectRelease_n();
  os_unfair_lock_unlock((*&a1[v2] + 16));

  return v8;
}

uint64_t sub_18225F614@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_182AD30F8();
  v5 = __OFADD__(v4, 1);
  result = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_slowAlloc();
    result = sub_182AD30F8();
    if (!__OFADD__(result, 1))
    {
      result = memcpy(v7, a1, result + 1);
      *a2 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

id _nw_path_copy_0(char *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  v5 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
  v6 = a1;
  os_unfair_lock_lock(v5 + 4);
  v7 = &v6[OBJC_IVAR____TtC7Network8__NWPath_path];
  swift_beginAccess();
  memcpy(__dst, v7, 0x17AuLL);
  v8 = *(v7 + 11);
  v61 = *(v7 + 10);
  v62 = v8;
  v63 = *(v7 + 24);
  v9 = *(v7 + 7);
  v57 = *(v7 + 6);
  v58 = v9;
  v10 = *(v7 + 8);
  v60 = *(v7 + 9);
  v59 = v10;
  v11 = *(v7 + 3);
  v53 = *(v7 + 2);
  v54 = v11;
  v12 = *(v7 + 4);
  v56 = *(v7 + 5);
  v55 = v12;
  v13 = *(v7 + 1);
  v51 = *v7;
  v52 = v13;
  v14 = __dst[25];
  v15 = *(v7 + 22);
  v49 = *(v7 + 21);
  v50[0] = v15;
  *(v50 + 10) = *(v7 + 362);
  v16 = *(v7 + 18);
  v45 = *(v7 + 17);
  v46 = v16;
  v17 = *(v7 + 20);
  v47 = *(v7 + 19);
  v48 = v17;
  v18 = *(v7 + 14);
  v41 = *(v7 + 13);
  v42 = v18;
  v19 = *(v7 + 16);
  v43 = *(v7 + 15);
  v44 = v19;
  sub_181A3DF5C(__dst, v28);
  if (a2)
  {

    v14 = 0;
  }

  __src[10] = v61;
  __src[11] = v62;
  __src[6] = v57;
  __src[7] = v58;
  __src[8] = v59;
  __src[9] = v60;
  __src[2] = v53;
  __src[3] = v54;
  __src[4] = v55;
  __src[5] = v56;
  __src[0] = v51;
  __src[1] = v52;
  *&__src[12] = v63;
  *(&__src[12] + 1) = v14;
  *(&__src[22] + 10) = *(v50 + 10);
  __src[21] = v49;
  __src[22] = v50[0];
  __src[17] = v45;
  __src[18] = v46;
  __src[19] = v47;
  __src[20] = v48;
  __src[13] = v41;
  __src[14] = v42;
  __src[15] = v43;
  __src[16] = v44;
  v21 = type metadata accessor for __NWPath();
  v22 = objc_allocWithZone(v21);
  v23 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  type metadata accessor for SystemLock._Storage();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *&v22[v23] = v24;
  *&v22[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage] = 0;
  *&v22[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage] = 0;
  *&v22[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage] = 0;
  memcpy(&v22[OBJC_IVAR____TtC7Network8__NWPath_path], __src, 0x17AuLL);
  sub_181A3DF5C(__src, v28);
  sub_181A3DF5C(__src, v28);
  v26.receiver = v22;
  v26.super_class = v21;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  sub_181A3DFB8(__src);
  v28[10] = v61;
  v28[11] = v62;
  v28[6] = v57;
  v28[7] = v58;
  v28[8] = v59;
  v28[9] = v60;
  v28[2] = v53;
  v28[3] = v54;
  v28[4] = v55;
  v28[5] = v56;
  v28[0] = v51;
  v28[1] = v52;
  v29 = v63;
  v30 = v14;
  *(v40 + 10) = *(v50 + 10);
  v39 = v49;
  v40[0] = v50[0];
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  sub_181A3DFB8(v28);
  swift_endAccess();
  os_unfair_lock_unlock((*&a1[v4] + 16));

  return v20;
}

void _nw_path_set_is_local_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x10) == 0)
      {
        v6 = v5 | 0x10;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x10) != 0)
    {
      v6 = v5 & 0xFFFFFFEF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_is_direct_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x20) == 0)
      {
        v6 = v5 | 0x20;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x20) != 0)
    {
      v6 = v5 & 0xFFFFFFDF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_has_ipv4_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x40) == 0)
      {
        v6 = v5 | 0x40;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x40) != 0)
    {
      v6 = v5 & 0xFFFFFFBF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_has_ipv6_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x80) == 0)
      {
        v6 = v5 | 0x80;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x80) != 0)
    {
      v6 = v5 & 0xFFFFFF7F;
      goto LABEL_7;
    }
  }
}

void sub_18225FBCC(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x100) == 0)
      {
        v6 = v5 | 0x100;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x100) != 0)
    {
      v6 = v5 & 0xFFFFFEFF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_has_necp_satisfied_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x400) == 0)
      {
        v6 = v5 | 0x400;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x400) != 0)
    {
      v6 = v5 & 0xFFFFFBFF;
      goto LABEL_7;
    }
  }
}

uint64_t sub_18225FCF0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  if (v1[116] == 2 && *(v1 + 72) == 3)
  {
    v4 = (v1[292] >> 2) & 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_18225FD78(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v6 = v5 | 0x80000000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if (v5 < 0)
    {
      v6 = v5 & 0x7FFFFFFF;
      goto LABEL_7;
    }
  }
}

void sub_18225FE00(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x200) == 0)
      {
        v6 = v5 | 0x200;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x200) != 0)
    {
      v6 = v5 & 0xFFFFFDFF;
      goto LABEL_7;
    }
  }
}

void sub_18225FE88(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x2000) == 0)
      {
        v6 = v5 | 0x2000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x2000) != 0)
    {
      v6 = v5 & 0xFFFFDFFF;
      goto LABEL_7;
    }
  }
}

void sub_18225FF10(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x4000) == 0)
      {
        v6 = v5 | 0x4000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x4000) != 0)
    {
      v6 = v5 & 0xFFFFBFFF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_is_listener_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x10000) == 0)
      {
        v6 = v5 | 0x10000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x10000) != 0)
    {
      v6 = v5 & 0xFFFEFFFF;
      goto LABEL_7;
    }
  }
}

char *_nw_path_is_interpose(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 17) & 1);
  }

  return result;
}

void _nw_path_set_is_interpose_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x20000) == 0)
      {
        v6 = v5 | 0x20000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x20000) != 0)
    {
      v6 = v5 & 0xFFFDFFFF;
      goto LABEL_7;
    }
  }
}

void sub_182260100(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x40000) == 0)
      {
        v6 = v5 | 0x40000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x40000) != 0)
    {
      v6 = v5 & 0xFFFBFFFF;
      goto LABEL_7;
    }
  }
}

char *_nw_path_is_override_expensive(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 19) & 1);
  }

  return result;
}

void _nw_path_set_is_override_expensive_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x80000) == 0)
      {
        v6 = v5 | 0x80000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x80000) != 0)
    {
      v6 = v5 & 0xFFF7FFFF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_override_viable_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x800) == 0)
      {
        v6 = v5 | 0x800;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x800) != 0)
    {
      v6 = v5 & 0xFFFFF7FF;
      goto LABEL_7;
    }
  }
}

char *_nw_path_is_override_constrained(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 20) & 1);
  }

  return result;
}

void _nw_path_set_is_override_constrained_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x100000) == 0)
      {
        v6 = v5 | 0x100000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x100000) != 0)
    {
      v6 = v5 & 0xFFEFFFFF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_override_uses_wifi_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x400000) == 0)
      {
        v6 = v5 | 0x400000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x400000) != 0)
    {
      v6 = v5 & 0xFFBFFFFF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_override_uses_cellular_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x800000) == 0)
      {
        v6 = v5 | 0x800000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x800000) != 0)
    {
      v6 = v5 & 0xFF7FFFFF;
      goto LABEL_7;
    }
  }
}

void _nw_path_set_override_reason_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x2000000) == 0)
      {
        v6 = v5 | 0x2000000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x2000000) != 0)
    {
      v6 = v5 & 0xFDFFFFFF;
      goto LABEL_7;
    }
  }
}

void _nw_path_update_network_is_satisfied_0(char *a1)
{
  if (a1)
  {
    v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = a1;
    swift_beginAccess();
    v6 = 32;
    v5[0] = 0;
    v5[1] = 0;
    memcpy(__dst, v1, 0x17AuLL);
    memcpy(v4, v1, sizeof(v4));
    sub_181A3DF5C(__dst, v8);
    v3 = sub_181ADE7DC(&v6, v5);
    memcpy(v8, v4, 0x17AuLL);
    sub_181A3DFB8(v8);

    v1[376] = v3 & 1;
    swift_endAccess();
  }
}

void _nw_path_set_changed_from_previous_0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x1000) == 0)
      {
        v6 = v5 | 0x1000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x1000) != 0)
    {
      v6 = v5 & 0xFFFFEFFF;
      goto LABEL_7;
    }
  }
}

void sub_1822606C0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x8000000) == 0)
      {
        v6 = v5 | 0x8000000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x8000000) != 0)
    {
      v6 = v5 & 0xF7FFFFFF;
      goto LABEL_7;
    }
  }
}

void sub_182260748(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x10000000) == 0)
      {
        v6 = v5 | 0x10000000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x10000000) != 0)
    {
      v6 = v5 & 0xEFFFFFFF;
      goto LABEL_7;
    }
  }
}

void sub_1822607D0(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x20000000) == 0)
      {
        v6 = v5 | 0x20000000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x20000000) != 0)
    {
      v6 = v5 & 0xDFFFFFFF;
      goto LABEL_7;
    }
  }
}

void sub_182260858(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v5 = *(v3 + 39);
    if (a2)
    {
      if ((v5 & 0x40000000) == 0)
      {
        v6 = v5 | 0x40000000;
LABEL_7:
        *(v3 + 39) = v6;
      }
    }

    else if ((v5 & 0x40000000) != 0)
    {
      v6 = v5 & 0xBFFFFFFF;
      goto LABEL_7;
    }
  }
}

uint64_t _nw_path_get_reason_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = dword_182B01774[v1[117]];

  return v3;
}

uint64_t _nw_path_get_reason_description_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage];
  v2 = a1;
  v3 = v2;
  if (!v1)
  {
    v4 = &v2[OBJC_IVAR____TtC7Network8__NWPath_path];
    swift_beginAccess();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 15);
      v7 = v3;

      v1 = sub_182267974(v6, v5, v7);

      return v1;
    }

    return 0;
  }

  return v1;
}

uint64_t sub_182260A10@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 + OBJC_IVAR____TtC7Network8__NWPath_path;
  result = swift_beginAccess();
  if (!*(v6 + 128))
  {
    goto LABEL_6;
  }

  v8 = sub_182AD30F8();

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = swift_slowAlloc();
  *(a2 + OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage) = v10;
  result = memcpy(v10, a1, v9);
  if (v10)
  {
    *a3 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id _nw_path_copy_direct_interface_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 1);
  if (v3)
  {
    v4 = type metadata accessor for __NWInterface();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
    swift_retain_n();
    v7 = swift_slowAlloc();
    *&v5[v6] = v7;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v3;
    *v7 = 0;
    v10.receiver = v5;
    v10.super_class = v4;
    v8 = objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  return v8;
}

id _nw_path_copy_delegate_interface_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 2);
  if (v3)
  {
    v4 = type metadata accessor for __NWInterface();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
    swift_retain_n();
    v7 = swift_slowAlloc();
    *&v5[v6] = v7;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v3;
    *v7 = 0;
    v10.receiver = v5;
    v10.super_class = v4;
    v8 = objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  return v8;
}

uint64_t _nw_path_get_fallback_interface_index_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  result = swift_beginAccess();
  v4 = *(v1 + 3);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v5 = *(v4 + 16);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v5))
    {
      __break(1u);
      return 0;
    }

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void *_nw_path_copy_connected_interface_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  v3 = swift_beginAccess();
  v4 = *v1;
  if (!*v1)
  {
    v9 = *(v1 + 25);
    if (!v9)
    {
      goto LABEL_5;
    }

    v11 = v9[4];
    v12 = v9[2];
    if (v12 >= v9[3] + v11)
    {
      v12 = v9[3] + v11;
    }

    v29 = v9;
    v30 = v11;
    v31 = v12;
    v13 = v9;
    while (1)
    {
      if (v11 == v12)
      {
        v3 = sub_181AC81FC(v3);
        if ((v3 & 1) == 0)
        {

          v9 = 0;
          goto LABEL_5;
        }

        v13 = v29;
        v11 = v30;
      }

      v14 = v11 + 1;
      v30 = v11 + 1;
      v15 = &v13[26 * v11];
      v16 = *(v15 + 9);
      v17 = *(v15 + 13);
      v18 = *(v15 + 7);
      v27[3] = *(v15 + 11);
      v27[4] = v17;
      v27[1] = v18;
      v27[2] = v16;
      v19 = *(v15 + 17);
      v20 = *(v15 + 21);
      v21 = *(v15 + 15);
      v27[7] = *(v15 + 19);
      v27[8] = v20;
      v27[5] = v21;
      v27[6] = v19;
      v22 = *(v15 + 25);
      v23 = *(v15 + 27);
      v24 = *(v15 + 23);
      *&v28[10] = *(v15 + 226);
      v27[10] = v22;
      *v28 = v23;
      v27[9] = v24;
      v27[0] = *(v15 + 5);
      v4 = *(&v27[0] + 1);
      if (*(&v27[0] + 1) && (v28[24] & 1) != 0)
      {

        sub_181AFE6F4(v27, v26);

        sub_181AFE6A0(v27);
        goto LABEL_4;
      }

      v12 = v31;
      v11 = v14;
    }
  }

LABEL_4:
  v5 = type metadata accessor for __NWInterface();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v8 = swift_slowAlloc();
  *&v6[v7] = v8;
  *&v6[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v6[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v4;
  *v8 = 0;
  v25.receiver = v6;
  v25.super_class = v5;
  v9 = objc_msgSendSuper2(&v25, sel_init);

LABEL_5:
  swift_endAccess();

  return v9;
}

uint64_t sub_182260F84(char *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v3], 0x17AuLL);
    memcpy(__src, &a1[v3], sizeof(__src));
    if (a2 >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2;
    }

    v9 = v6;
    sub_181A3DF5C(__dst, v10);
    v7 = sub_181A3DFE8(&v9);
    memcpy(v10, __src, 0x17AuLL);
    sub_181A3DFB8(v10);
    swift_endAccess();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t _nw_path_copy_group_members_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!v3)
  {
LABEL_22:
    swift_endAccess();

    return v3;
  }

  v4 = type metadata accessor for NWArray();
  v5 = objc_allocWithZone(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B718);
  v36[3] = v6;
  v36[4] = sub_181AB3DCC(&unk_1EA836F70, &qword_1EA83B718);
  v36[0] = v3;

  v7 = sub_182AD2388();
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  *&v5[OBJC_IVAR____TtC7Network7NWArray_deque] = *v7;
  v9 = __swift_project_boxed_opaque_existential_1(v36, v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  (*(v13 + 16))(v31 - v11, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v33);
  v15 = *(*v12 + 32);
  v16 = *(*v12 + 24) + v15;
  if (*(*v12 + 16) < v16)
  {
    v16 = *(*v12 + 16);
  }

  *boxed_opaque_existential_0Tm = *v12;
  boxed_opaque_existential_0Tm[1] = v15;
  boxed_opaque_existential_0Tm[2] = v16;

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
    sub_182AD3A08();
    v17 = v31[0];
    if (!v31[0])
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *&v5[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v30;
      v32.receiver = v5;
      v32.super_class = v4;
      v3 = objc_msgSendSuper2(&v32, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v36);
      goto LABEL_22;
    }

    swift_beginAccess();
    result = *&v5[v8];
    v19 = *(result + 24);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v5[v8];
    if (v21[2] < v20 || (result & 1) == 0)
    {
      result = sub_181ACC600(result, v20);
      v21 = *&v5[v8];
    }

    v22 = v21[3];
    v23 = v21[4];
    v26 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v26)
    {
      goto LABEL_26;
    }

    if (v22 < 0)
    {
      if (v24 < 0)
      {
        v28 = v21[2];
        v26 = __OFADD__(v24, v28);
        v24 += v28;
        if (v26)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v25 = v21[2];
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v27 < 0 == v26)
      {
        v24 = v27;
        if (v26)
        {
          goto LABEL_28;
        }
      }
    }

    v21[v24 + 5] = v17;
    v26 = __OFADD__(v22, 1);
    v29 = v22 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    v21[3] = v29;
    swift_endAccess();
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

void sub_1822613E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 256);
  if (!v4)
  {
    v5 = sub_182AD2388();
    v4 = *v5;
    *(a1 + 256) = *v5;
  }

  v6 = *(v4 + 24);
  v7 = v6 + 1;
  v8 = __OFADD__(v6, 1);
  v9 = a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v12 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 256);
    if (*(v11 + 16) < v7 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ADA6FC(isUniquelyReferenced_nonNull_native, v7);
      v11 = *(a1 + 256);
    }

    sub_181ADA8CC((v11 + 16), v11 + 40, v12);
  }
}

uint64_t _nw_path_copy_gateways_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 31);
  if (!v3)
  {
LABEL_22:
    swift_endAccess();

    return v3;
  }

  v4 = type metadata accessor for NWArray();
  v5 = objc_allocWithZone(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B718);
  v36[3] = v6;
  v36[4] = sub_181AB3DCC(&unk_1EA836F70, &qword_1EA83B718);
  v36[0] = v3;

  v7 = sub_182AD2388();
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  *&v5[OBJC_IVAR____TtC7Network7NWArray_deque] = *v7;
  v9 = __swift_project_boxed_opaque_existential_1(v36, v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  (*(v13 + 16))(v31 - v11, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v33);
  v15 = *(*v12 + 32);
  v16 = *(*v12 + 24) + v15;
  if (*(*v12 + 16) < v16)
  {
    v16 = *(*v12 + 16);
  }

  *boxed_opaque_existential_0Tm = *v12;
  boxed_opaque_existential_0Tm[1] = v15;
  boxed_opaque_existential_0Tm[2] = v16;

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
    sub_182AD3A08();
    v17 = v31[0];
    if (!v31[0])
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *&v5[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v30;
      v32.receiver = v5;
      v32.super_class = v4;
      v3 = objc_msgSendSuper2(&v32, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v36);
      goto LABEL_22;
    }

    swift_beginAccess();
    result = *&v5[v8];
    v19 = *(result + 24);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v5[v8];
    if (v21[2] < v20 || (result & 1) == 0)
    {
      result = sub_181ACC600(result, v20);
      v21 = *&v5[v8];
    }

    v22 = v21[3];
    v23 = v21[4];
    v26 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v26)
    {
      goto LABEL_26;
    }

    if (v22 < 0)
    {
      if (v24 < 0)
      {
        v28 = v21[2];
        v26 = __OFADD__(v24, v28);
        v24 += v28;
        if (v26)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v25 = v21[2];
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v27 < 0 == v26)
      {
        v24 = v27;
        if (v26)
        {
          goto LABEL_28;
        }
      }
    }

    v21[v24 + 5] = v17;
    v26 = __OFADD__(v22, 1);
    v29 = v22 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    v21[3] = v29;
    swift_endAccess();
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

void sub_182261824(uint64_t a1, void *a2)
{
  v3 = (a1 + 248);
  v4 = *(a1 + 248);
  if (!v4)
  {
    v5 = sub_182AD2388();
    v4 = *v5;
    *v3 = *v5;
  }

  v6 = *(v4 + 24);
  v7 = v6 + 1;
  v8 = __OFADD__(v6, 1);
  v9 = a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v12 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    if (*(*v3 + 16) < v7 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ADA6FC(isUniquelyReferenced_nonNull_native, v7);
      v11 = *v3;
    }

    sub_181ADA8CC((v11 + 16), v11 + 40, v12);
  }
}

uint64_t _nw_path_copy_resolver_configs_0(char *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v4 = a1;
  swift_beginAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(v3 + 28);
    if (v5)
    {
      v32 = type metadata accessor for NWArray();
      v33 = objc_allocWithZone(v32);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B720);
      v68 = v34;
      v69 = sub_181AB3DCC(&qword_1ED410108, &unk_1EA83B720);
      v67[0] = v5;

      v35 = sub_182AD2388();
      v36 = OBJC_IVAR____TtC7Network7NWArray_deque;
      *&v33[OBJC_IVAR____TtC7Network7NWArray_deque] = *v35;
      v37 = __swift_project_boxed_opaque_existential_1(v67, v34);
      v38 = MEMORY[0x1EEE9AC00](v37);
      v40 = &v60 - v39;
      (*(v41 + 16))(&v60 - v39, v38);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v64);
      v43 = *(*v40 + 32);
      v44 = *(*v40 + 24) + v43;
      if (*(*v40 + 16) < v44)
      {
        v44 = *(*v40 + 16);
      }

      *boxed_opaque_existential_0Tm = *v40;
      boxed_opaque_existential_0Tm[1] = v43;
      boxed_opaque_existential_0Tm[2] = v44;

      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v64, AssociatedTypeWitness);
        sub_182AD3A08();
        v45 = v62;
        if (!v62)
        {
          break;
        }

        swift_beginAccess();
        result = *&v33[v36];
        v46 = *(result + 24);
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_48;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v48 = *&v33[v36];
        if (v48[2] < v47 || (result & 1) == 0)
        {
          result = sub_181ACC600(result, v47);
          v48 = *&v33[v36];
        }

        v49 = v48[3];
        v50 = v48[4];
        v28 = __OFADD__(v50, v49);
        v51 = v50 + v49;
        if (v28)
        {
          goto LABEL_50;
        }

        if (v49 < 0)
        {
          if (v51 < 0)
          {
            v55 = v48[2];
            v28 = __OFADD__(v51, v55);
            v51 += v55;
            if (v28)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          v52 = v48[2];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          if (v54 < 0 == v53)
          {
            v51 = v54;
            if (v53)
            {
              goto LABEL_54;
            }
          }
        }

        v48[v51 + 5] = v45;
        v28 = __OFADD__(v49, 1);
        v56 = v49 + 1;
        if (v28)
        {
          goto LABEL_52;
        }

        v48[3] = v56;
        swift_endAccess();
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
      v59 = swift_allocObject();
      *(v59 + 16) = 0;
      *&v33[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v59;
      v63.receiver = v33;
      v63.super_class = v32;
      v58 = objc_msgSendSuper2(&v63, sel_init);
LABEL_44:
      v5 = v58;
      __swift_destroy_boxed_opaque_existential_1(v67);
    }

    goto LABEL_45;
  }

  v5 = *(v3 + 29);
  if (!v5)
  {
LABEL_45:
    swift_endAccess();

    return v5;
  }

  v6 = type metadata accessor for NWArray();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B720);
  v68 = v8;
  v69 = sub_181AB3DCC(&qword_1ED410108, &unk_1EA83B720);
  v67[0] = v5;

  v9 = sub_182AD2388();
  v10 = OBJC_IVAR____TtC7Network7NWArray_deque;
  *&v7[OBJC_IVAR____TtC7Network7NWArray_deque] = *v9;
  v11 = __swift_project_boxed_opaque_existential_1(v67, v8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - v13;
  (*(v15 + 16))(&v60 - v13, v12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = __swift_allocate_boxed_opaque_existential_0Tm(v64);
  v17 = *(*v14 + 32);
  v18 = *(*v14 + 24) + v17;
  if (*(*v14 + 16) < v18)
  {
    v18 = *(*v14 + 16);
  }

  *v16 = *v14;
  v16[1] = v17;
  v16[2] = v18;

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v64, AssociatedTypeWitness);
    sub_182AD3A08();
    v19 = v62;
    if (!v62)
    {
      __swift_destroy_boxed_opaque_existential_1(v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *&v7[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v57;
      v61.receiver = v7;
      v61.super_class = v6;
      v58 = objc_msgSendSuper2(&v61, sel_init);
      goto LABEL_44;
    }

    swift_beginAccess();
    result = *&v7[v10];
    v21 = *(result + 24);
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v23 = *&v7[v10];
    if (v23[2] < v22 || (result & 1) == 0)
    {
      result = sub_181ACC600(result, v22);
      v23 = *&v7[v10];
    }

    v24 = v23[3];
    v25 = v23[4];
    v28 = __OFADD__(v25, v24);
    v26 = v25 + v24;
    if (v28)
    {
      goto LABEL_49;
    }

    if (v24 < 0)
    {
      if (v26 < 0)
      {
        v30 = v23[2];
        v28 = __OFADD__(v26, v30);
        v26 += v30;
        if (v28)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
      v27 = v23[2];
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v29 < 0 == v28)
      {
        v26 = v29;
        if (v28)
        {
          goto LABEL_53;
        }
      }
    }

    v23[v26 + 5] = v19;
    v28 = __OFADD__(v24, 1);
    v31 = v24 + 1;
    if (v28)
    {
      goto LABEL_51;
    }

    v23[3] = v31;
    swift_endAccess();
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_182261F40(char *a1, char *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v6 = a1;
    swift_beginAccess();
    v7 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v8 = a2;
    swift_beginAccess();
    memcpy(__dst, &a1[v4], 0x17AuLL);
    memcpy(__src, &a1[v4], sizeof(__src));
    memcpy(v13, &a2[v7], 0x17AuLL);
    memcpy(v10, &a2[v7], 0x17AuLL);
    sub_181A3DF5C(__dst, v15);
    sub_181A3DF5C(v13, v15);
    v2 = sub_181EB3488(v10);
    memcpy(v14, v10, 0x17AuLL);
    sub_181A3DFB8(v14);
    memcpy(v15, __src, 0x17AuLL);
    sub_181A3DFB8(v15);
    swift_endAccess();
    swift_endAccess();
  }

  return v2 & 1;
}

uint64_t sub_182262088(uint64_t a1, char *a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v5 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v6 = a2;
  swift_beginAccess();
  v7 = *&a2[v5];

  v8 = *(v7 + 24);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v18[0] = MEMORY[0x1E69E7CC0];
    v9 = v18;
    sub_182AD3D38();
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    v10 = 0;
    while (v10 < *(v7 + 24))
    {
      ++v10;
      swift_unknownObjectRetain();
      v9 = v18;
      sub_182AD3D08();
      sub_182AD3D48();
      sub_182AD3D58();
      sub_182AD3D18();
      if (v8 == v10)
      {
        v9 = v18[0];
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  v2 = v9 >> 62;
  if (v9 >> 62)
  {
LABEL_19:
    v11 = sub_182AD3EB8();
    if (v11 <= 0)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 <= 0)
  {
LABEL_20:
    v12 = *sub_182AD2388();

    goto LABEL_21;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B760);
  v12 = swift_allocObject();
  v13 = _swift_stdlib_malloc_size(v12);
  v14 = v13 - 40;
  if (v13 < 40)
  {
    v14 = v13 - 33;
  }

  v12[3] = 0;
  v12[4] = 0;
  v12[2] = v14 >> 3;
  MEMORY[0x1EEE9AC00](v13);
  v17[2] = v12 + 5;
  v17[3] = v11;
  if (v2)
  {

    sub_1822674D8(v9, sub_182267F60, v17, sub_1822D09D8);
    goto LABEL_17;
  }

  v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    if (v11 >= v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA20);
      swift_arrayInitWithCopy();
      goto LABEL_15;
    }

LABEL_23:
    __break(1u);
  }

LABEL_15:

LABEL_17:
  v12[3] = v11;

LABEL_21:

  *(a1 + 240) = v12;
  return result;
}

char *_nw_path_set_parameters_0(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = result;
    swift_beginAccess();
    v5 = *(a2 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

    if (v5 < 0)
    {
      memcpy(__dst, ((v5 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      sub_181F481DC(__dst, v6);

      type metadata accessor for MutableParametersStorage();
      v5 = swift_allocObject();
      memcpy((v5 + 16), __dst, 0x188uLL);
    }

    *(v3 + 4) = v5;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_182262440(char *a1, unsigned __int8 *a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v4 = a1;
  swift_beginAccess();
  v5 = v3[64];
  if ((v5 & 1) == 0)
  {
    v7 = *(v3 + 6);
    v6 = *(v3 + 7);
    v10[0] = v7;
    v10[1] = v6;
    uuid_copy(a2, v10);
  }

  v8 = v5 ^ 1u;
  swift_endAccess();

  return v8;
}

uint64_t sub_182262578(char *a1, unsigned __int8 *a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v4 = a1;
  swift_beginAccess();
  v5 = v3[81];
  if ((v5 & 1) == 0)
  {
    v6 = *(v3 + 73);
    v7 = *(v3 + 65);
    v10[0] = v7;
    v10[1] = v6;
    uuid_copy(a2, v10);
  }

  v8 = v5 ^ 1u;
  swift_endAccess();

  return v8;
}

uint64_t sub_1822626D0(char *a1, unsigned __int8 *a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v4 = a1;
  swift_beginAccess();
  v5 = v3[98];
  if ((v5 & 1) == 0)
  {
    v6 = *(v3 + 90);
    v7 = *(v3 + 82);
    v10[0] = v7;
    v10[1] = v6;
    uuid_copy(a2, v10);
  }

  v8 = v5 ^ 1u;
  swift_endAccess();

  return v8;
}

id _nw_path_copy_override_interface_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7Network8__NWPath_path;
  v3 = a1;
  swift_beginAccess();
  v4 = *&a1[v1];
  if (v4)
  {
    v5 = type metadata accessor for __NWInterface();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
    swift_retain_n();
    v8 = swift_slowAlloc();
    *&v6[v7] = v8;
    *&v6[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v6[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v4;
    *v8 = 0;
    v11.receiver = v6;
    v11.super_class = v5;
    v9 = objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();

  return v9;
}

char *_nw_path_set_override_interface_0(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = result;
    swift_beginAccess();
    if (a2)
    {
    }

    else
    {
      v6 = 0;
    }

    *&v3[v4] = v6;
    swift_endAccess();
  }

  return result;
}

uint64_t _nw_path_get_recommended_mss(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = v1[152];

  return v3;
}

void _nw_path_set_recommended_mss(char *a1, char a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    v3[152] = a2;
  }
}

uint64_t sub_182262A7C(char *a1)
{
  if (a1)
  {
    v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = a1;
    swift_beginAccess();
    v3 = v1[153];
    if (v3 > 0x31)
    {
      if (v3 == 100)
      {
        v5 = 30;
        goto LABEL_15;
      }

      if (v3 != 50)
      {
        goto LABEL_13;
      }

      v5 = 20;
    }

    else
    {
      if (v3 != 10 && v3 != 20)
      {
LABEL_13:
        v5 = 0;
        goto LABEL_15;
      }

      v5 = 10;
    }

LABEL_15:

    return v5;
  }

  return 0;
}

uint64_t _nw_path_get_custom_ethertype(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 68);

  return v3;
}

uint64_t _nw_path_get_custom_ip_protocol(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = v1[138];

  return v3;
}

uint64_t _nw_path_copy_discovered_endpoints_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 23);
  if (!v3)
  {
LABEL_22:
    swift_endAccess();

    return v3;
  }

  v4 = type metadata accessor for NWArray();
  v5 = objc_allocWithZone(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B718);
  v36[3] = v6;
  v36[4] = sub_181AB3DCC(&unk_1EA836F70, &qword_1EA83B718);
  v36[0] = v3;

  v7 = sub_182AD2388();
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  *&v5[OBJC_IVAR____TtC7Network7NWArray_deque] = *v7;
  v9 = __swift_project_boxed_opaque_existential_1(v36, v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  (*(v13 + 16))(v31 - v11, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v33);
  v15 = *(*v12 + 32);
  v16 = *(*v12 + 24) + v15;
  if (*(*v12 + 16) < v16)
  {
    v16 = *(*v12 + 16);
  }

  *boxed_opaque_existential_0Tm = *v12;
  boxed_opaque_existential_0Tm[1] = v15;
  boxed_opaque_existential_0Tm[2] = v16;

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
    sub_182AD3A08();
    v17 = v31[0];
    if (!v31[0])
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *&v5[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v30;
      v32.receiver = v5;
      v32.super_class = v4;
      v3 = objc_msgSendSuper2(&v32, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v36);
      goto LABEL_22;
    }

    swift_beginAccess();
    result = *&v5[v8];
    v19 = *(result + 24);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v5[v8];
    if (v21[2] < v20 || (result & 1) == 0)
    {
      result = sub_181ACC600(result, v20);
      v21 = *&v5[v8];
    }

    v22 = v21[3];
    v23 = v21[4];
    v26 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v26)
    {
      goto LABEL_26;
    }

    if (v22 < 0)
    {
      if (v24 < 0)
      {
        v28 = v21[2];
        v26 = __OFADD__(v24, v28);
        v24 += v28;
        if (v26)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v25 = v21[2];
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v27 < 0 == v26)
      {
        v24 = v27;
        if (v26)
        {
          goto LABEL_28;
        }
      }
    }

    v21[v24 + 5] = v17;
    v26 = __OFADD__(v22, 1);
    v29 = v22 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    v21[3] = v29;
    swift_endAccess();
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

uint64_t _nw_path_copy_resolved_endpoints_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!v3)
  {
LABEL_22:
    swift_endAccess();

    return v3;
  }

  v4 = type metadata accessor for NWArray();
  v5 = objc_allocWithZone(v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B718);
  v36[3] = v6;
  v36[4] = sub_181AB3DCC(&unk_1EA836F70, &qword_1EA83B718);
  v36[0] = v3;

  v7 = sub_182AD2388();
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  *&v5[OBJC_IVAR____TtC7Network7NWArray_deque] = *v7;
  v9 = __swift_project_boxed_opaque_existential_1(v36, v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  (*(v13 + 16))(v31 - v11, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v33);
  v15 = *(*v12 + 32);
  v16 = *(*v12 + 24) + v15;
  if (*(*v12 + 16) < v16)
  {
    v16 = *(*v12 + 16);
  }

  *boxed_opaque_existential_0Tm = *v12;
  boxed_opaque_existential_0Tm[1] = v15;
  boxed_opaque_existential_0Tm[2] = v16;

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v33, AssociatedTypeWitness);
    sub_182AD3A08();
    v17 = v31[0];
    if (!v31[0])
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *&v5[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v30;
      v32.receiver = v5;
      v32.super_class = v4;
      v3 = objc_msgSendSuper2(&v32, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v36);
      goto LABEL_22;
    }

    swift_beginAccess();
    result = *&v5[v8];
    v19 = *(result + 24);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v5[v8];
    if (v21[2] < v20 || (result & 1) == 0)
    {
      result = sub_181ACC600(result, v20);
      v21 = *&v5[v8];
    }

    v22 = v21[3];
    v23 = v21[4];
    v26 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v26)
    {
      goto LABEL_26;
    }

    if (v22 < 0)
    {
      if (v24 < 0)
      {
        v28 = v21[2];
        v26 = __OFADD__(v24, v28);
        v24 += v28;
        if (v26)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v25 = v21[2];
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v27 < 0 == v26)
      {
        v24 = v27;
        if (v26)
        {
          goto LABEL_28;
        }
      }
    }

    v21[v24 + 5] = v17;
    v26 = __OFADD__(v22, 1);
    v29 = v22 + 1;
    if (v26)
    {
      goto LABEL_27;
    }

    v21[3] = v29;
    swift_endAccess();
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

uint64_t sub_1822632E0@<X0>(unsigned __int8 *uu@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  result = uuid_is_null(uu);
  v7 = result;
  v55 = 0u;
  if (result != 1)
  {
    v55 = *uu;
  }

  v8 = *(a2 + 200);
  if (!v8)
  {
LABEL_35:
    *a3 = 0;
    return result;
  }

  v9 = v8[4];
  if (v8[2] >= v8[3] + v9)
  {
    v10 = v8[3] + v9;
  }

  else
  {
    v10 = v8[2];
  }

  v57 = *(a2 + 200);
  v58 = v9;
  v59 = v10;
  v11 = swift_retain_n();
  v12 = v8;
  while (1)
  {
    if (v9 == v10)
    {
      v11 = sub_181AC81FC(v11);
      if ((v11 & 1) == 0)
      {

        goto LABEL_35;
      }

      v12 = v57;
      v9 = v58;
    }

    v13 = v9 + 1;
    v58 = v9 + 1;
    v14 = &v12[26 * v9];
    v15 = *(v14 + 9);
    v16 = *(v14 + 13);
    v17 = *(v14 + 7);
    v66 = *(v14 + 11);
    v67 = v16;
    v65[1] = v17;
    v65[2] = v15;
    v18 = *(v14 + 17);
    v19 = *(v14 + 21);
    v20 = *(v14 + 15);
    v70 = *(v14 + 19);
    v71 = v19;
    v68 = v20;
    v69 = v18;
    v21 = *(v14 + 25);
    v22 = *(v14 + 27);
    v23 = *(v14 + 23);
    *(v74 + 10) = *(v14 + 226);
    v73 = v21;
    v74[0] = v22;
    v72 = v23;
    v65[0] = *(v14 + 5);
    if (v7 != 1)
    {
      break;
    }

LABEL_9:
    v10 = v59;
    v9 = v13;
  }

  v62 = v66;
  v61 = v55;
  sub_181AFE6F4(v65, v60);
  if (uuid_compare(&v62, &v61) || (v24 = v68) == 0)
  {
    v11 = sub_181AFE6A0(v65);
    goto LABEL_9;
  }

  v53 = a3;
  v52 = type metadata accessor for NWArray();
  v25 = objc_allocWithZone(v52);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B718);
  v60[3] = v26;
  v60[4] = sub_181AB3DCC(&unk_1EA836F70, &qword_1EA83B718);
  v60[0] = v24;
  swift_retain_n();
  *&v55 = *sub_182AD2388();
  v27 = OBJC_IVAR____TtC7Network7NWArray_deque;
  *&v25[OBJC_IVAR____TtC7Network7NWArray_deque] = v55;
  v28 = __swift_project_boxed_opaque_existential_1(v60, v26);
  v54 = &v51;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v51 - v30;
  (*(v32 + 16))(&v51 - v30, v29);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v62);
  v34 = *(*v31 + 32);
  v35 = *(*v31 + 24) + v34;
  if (*(*v31 + 16) < v35)
  {
    v35 = *(*v31 + 16);
  }

  *boxed_opaque_existential_0Tm = *v31;
  boxed_opaque_existential_0Tm[1] = v34;
  boxed_opaque_existential_0Tm[2] = v35;

  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v62, AssociatedTypeWitness);
    sub_182AD3A08();
    v36 = v61;
    if (!v61)
    {
      break;
    }

    swift_beginAccess();
    v37 = *(*&v25[v27] + 24);
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *&v25[v27];
    if (v40[2] < v38 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ACC600(isUniquelyReferenced_nonNull_native, v38);
      v40 = *&v25[v27];
    }

    v41 = v40[3];
    v42 = v40[4];
    v45 = __OFADD__(v42, v41);
    v43 = v42 + v41;
    if (v45)
    {
      goto LABEL_39;
    }

    if (v41 < 0)
    {
      if (v43 < 0)
      {
        v47 = v40[2];
        v45 = __OFADD__(v43, v47);
        v43 += v47;
        if (v45)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v44 = v40[2];
      v45 = __OFSUB__(v43, v44);
      v46 = v43 - v44;
      if (v46 < 0 == v45)
      {
        v43 = v46;
        if (v45)
        {
          goto LABEL_41;
        }
      }
    }

    v40[v43 + 5] = v36;
    v45 = __OFADD__(v41, 1);
    v48 = v41 + 1;
    if (v45)
    {
      goto LABEL_40;
    }

    v40[3] = v48;
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(&v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *&v25[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v49;
  v56.receiver = v25;
  v56.super_class = v52;
  v50 = objc_msgSendSuper2(&v56, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_181AFE6A0(v65);

  *v53 = v50;
  return result;
}

uint64_t _nw_path_get_flow_divert_aggregate_unit(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 88);

  return v3;
}

uint64_t _nw_path_get_csum_flags_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  result = swift_beginAccess();
  v4 = *(v1 + 1);
  if (v1[376] != 1 || v4 == 0)
  {
    v6 = 0;
LABEL_11:

    return v6;
  }

  v6 = *(v4 + 112);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v6))
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t _nw_path_get_effective_traffic_class_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  if (v1[376] == 1)
  {
    v3 = *(v1 + 26);
    if (!v3)
    {
      v4 = *(v1 + 4);
      swift_beginAccess();
      v3 = *(v4 + 220);
    }
  }

  else
  {
    v3 = 0;
  }

  swift_endAccess();

  return v3;
}

uint64_t sub_1822639D4@<X0>(uint64_t result@<X0>, objc_super **a2@<X8>)
{
  if ((*(result + 159) & 1) != 0 && (v3 = *result) != 0)
  {
    v4 = type metadata accessor for __NWInterface();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
    swift_retain_n();
    v7 = swift_slowAlloc();
    *&v5[v6] = v7;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v5[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v3;
    *v7 = 0;
    v16 = v5;
    v8 = &v16;
  }

  else
  {
    v9 = *(result + 288);
    v10 = v9 == 12 || v9 == 6;
    if (!v10 || !*(result + 292) || (v11 = *(result + 8)) == 0)
    {
      v15 = 0;
      goto LABEL_14;
    }

    v4 = type metadata accessor for __NWInterface();
    v12 = objc_allocWithZone(v4);
    v13 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
    swift_retain_n();
    v14 = swift_slowAlloc();
    *&v12[v13] = v14;
    *&v12[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
    *&v12[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v11;
    *v14 = 0;
    v17.receiver = v12;
    v8 = &v17;
  }

  v8->super_class = v4;
  v15 = [(objc_super *)v8 init];

LABEL_14:
  *a2 = v15;
  return result;
}

void *sub_182263B30@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[33];
  if (v2)
  {
    v16 = a2;
    empty = xpc_dictionary_create_empty();
    v4 = v2 + 64;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v17 = v2;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_9:
        v11 = *(*(v2 + 56) + 8 * (__clz(__rbit64(v7)) | (v10 << 6)));

        result = xpc_dictionary_create_empty();
        v12 = *(v11 + 16);
        if (!v12)
        {
          break;
        }

        v7 &= v7 - 1;
        v13 = result;
        xpc_dictionary_set_data(result, "data", v12, *(v11 + 24) - v12);
        xpc_dictionary_set_uint64(v13, "generation", *(v11 + 84));
        MEMORY[0x1EEE9AC00](v14);
        sub_182AD30D8();
        v15 = sub_182AD3048();
        swift_unknownObjectRetain();

        xpc_dictionary_set_value(empty, (v15 + 32), v13);

        result = swift_unknownObjectRelease_n();
        v9 = v10;
        v2 = v17;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v8)
        {

          a2 = v16;
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v10);
        ++v9;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    empty = 0;
LABEL_14:
    *a2 = empty;
  }

  return result;
}

char *sub_182263D1C(char *result, char a2, char a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v8 = result;
    v9 = result;
    swift_beginAccess();
    memcpy(__dst, &v8[v7], 0x17AuLL);
    sub_181A3DF5C(__dst, __src);

    memcpy(__src, __dst, 0x17AuLL);
    v10 = sub_181C6DBC8(a2 & 1, a3 & 1);
    memcpy(v17, __src, 0x17AuLL);
    sub_181A3DFB8(v17);
    if (v10)
    {
      if (a4)
      {
        v11 = *(v10 + 2);
        if (v11)
        {
          v12 = (v10 + 32);
          swift_unknownObjectRetain();
          do
          {
            v13 = *v12++;
            v14 = sub_182AD26E8();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
            v15 = swift_allocObject();
            v16 = _swift_stdlib_malloc_size(v15);
            *(v15 + 16) = 16;
            *(v15 + 24) = 2 * v16 - 64;
            *(v15 + 32) = v13;
            xpc_array_set_uuid(a4, v14, (v15 + 32));

            --v11;
          }

          while (v11);
          swift_unknownObjectRelease();
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_182263EEC@<X0>(void *__src@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  memcpy(__dst, __src, 0x17AuLL);
  memcpy(v15, __src, 0x17AuLL);
  sub_181A3DF5C(__dst, v17);
  v6 = sub_181C72A14(a2);
  memcpy(v17, v15, 0x17AuLL);
  result = sub_181A3DFB8(v17);
  if (v6)
  {
    empty = xpc_array_create_empty();
    v9 = *(v6 + 16);
    if (v9)
    {
      v10 = (v6 + 32);
      do
      {
        v11 = *v10++;
        v15[0] = v11;
        v12 = sub_182AD26E8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
        v13 = swift_allocObject();
        v14 = _swift_stdlib_malloc_size(v13);
        *(v13 + 16) = 16;
        *(v13 + 24) = 2 * v14 - 64;
        *(v13 + 32) = v15[0];
        xpc_array_set_uuid(empty, v12, (v13 + 32));

        --v9;
      }

      while (v9);
    }
  }

  else
  {
    empty = 0;
  }

  *a3 = empty;
  return result;
}

uint64_t sub_182264060(char *a1, int a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v3], 0x17AuLL);
    memcpy(__src, &a1[v3], sizeof(__src));
    if (a2 > 4000)
    {
      if (a2 == 4001)
      {
        v6 = 3;
        goto LABEL_13;
      }

      if (a2 == 5001)
      {
        v6 = 4;
        goto LABEL_13;
      }
    }

    else
    {
      if (a2 == 1001)
      {
        v6 = 1;
        goto LABEL_13;
      }

      if (a2 == 1002)
      {
        v6 = 2;
LABEL_13:
        v9 = v6;
        sub_181A3DF5C(__dst, v10);
        v7 = sub_181CCC278(&v9);
        memcpy(v10, __src, 0x17AuLL);
        sub_181A3DFB8(v10);
        swift_endAccess();

        return v7 & 1;
      }
    }

    v6 = 0;
    goto LABEL_13;
  }

  v7 = 0;
  return v7 & 1;
}

void sub_182264188(char *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v5 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v6 = a1;
    swift_beginAccess();
    if (a2)
    {
      *v5 = *(a2 + OBJC_IVAR____TtC7Network13__NWInterface_interface);
    }

    else
    {
      *v5 = 0;
    }

    v7 = *(v5 + 39);
    if (a3)
    {
      if ((v7 & 0x1000000) == 0)
      {
        v8 = v7 | 0x1000000;
LABEL_10:
        *(v5 + 39) = v8;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      v8 = v7 & 0xFEFFFFFF;
      goto LABEL_10;
    }

    swift_endAccess();
  }
}

void sub_182264250(char *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = sub_182AD3158();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v9 = a1;
    swift_beginAccess();
    sub_18225E6EC(a2, &v10);
    if (!v10 || !v8[117] || v10 - 30 >= 0xFFFFFFFC && v8[117] - 26 > 3)
    {
      v8[117] = v10;
      *(v8 + 15) = v5;
      *(v8 + 16) = v7;

      *(v8 + 45) = 0;
      *(v8 + 46) = 0;
    }

    swift_endAccess();
  }
}

BOOL sub_182264368(char *a1, char *a2, char a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v8 = a1;
    swift_beginAccess();
    v9 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v10 = a2;
    swift_beginAccess();
    memcpy(__dst, &a1[v6], 0x17AuLL);
    memcpy(v13, &a1[v6], sizeof(v13));
    memcpy(v15, &a2[v9], 0x17AuLL);
    memmove(__src, &a2[v9], 0x17AuLL);
    nullsub_41(__src);
    memcpy(v12, __src, 0x17AuLL);
    sub_181A3DF5C(__dst, v18);
    sub_181A3DF5C(v15, v18);
    v3 = sub_181FD4738(v12, a3 & 1);
    memcpy(v17, v12, 0x17AuLL);
    sub_181F49A88(v17, &qword_1EA83A110);
    memcpy(v18, v13, 0x17AuLL);
    sub_181A3DFB8(v18);
    swift_endAccess();
    swift_endAccess();
  }

  return v3;
}

BOOL sub_1822644E0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = v4 && (*(v4 + 136) & 0x20) != 0 || v3 && (*(v3 + 136) & 0x20) != 0;

  return v5;
}

uint64_t sub_182264568(char *a1)
{
  v2 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return 0;
  }

  v5 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v6 = a1;
  swift_beginAccess();
  if (v5[158])
  {
    v9 = 1;
  }

  else
  {
    v7 = *(v5 + 5);
    if (v7)
    {
      v8 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181B5C0FC(v7 + v8, v4);
      if (swift_getEnumCaseMultiPayload() - 1 > 1)
      {
        v9 = (*(v7 + OBJC_IVAR____TtC7Network8Endpoint_flags) >> 3) & 1;
      }

      else
      {
        v9 = 1;
      }

      sub_181B5C160(v4);
    }

    else
    {
      v9 = 0;
    }
  }

  swift_endAccess();

  return v9;
}

uint64_t _nw_path_copy_effective_local_endpoint_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  result = swift_beginAccess();
  v4 = *(v1 + 26);
  v5 = v4;
  if (v4)
  {
    goto LABEL_11;
  }

  v6 = *(v1 + 4);
  v7 = *(v1 + 25);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7[3];
  if (!v8)
  {
    goto LABEL_9;
  }

  if (v8 >= 1)
  {
    v9 = v7[4];
    v10 = v7[2];
    if (v9 < v10)
    {
      v10 = 0;
    }

    v5 = v7[26 * (v9 - v10) + 7];
    if (v5)
    {
LABEL_10:
      v11 = v5;
LABEL_11:
      v12 = v4;
      goto LABEL_12;
    }

LABEL_9:
    swift_beginAccess();
    v5 = *(v6 + 312);
    if (!v5)
    {
LABEL_12:
      swift_endAccess();

      return v5;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _nw_path_copy_effective_remote_endpoint_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  result = swift_beginAccess();
  v4 = *(v1 + 5);
  v5 = *(v1 + 25);
  if (!v5 || (v6 = v5[3]) == 0)
  {
LABEL_8:
    v9 = v4;
    if (!v4)
    {
LABEL_10:

      return v9;
    }

LABEL_9:
    v10 = v9;
    goto LABEL_10;
  }

  if (v6 >= 1)
  {
    v7 = v5[4];
    v8 = v5[2];
    if (v7 < v8)
    {
      v8 = 0;
    }

    v9 = v5[26 * (v7 - v8) + 8];
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_182264854(char *a1, void *a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v7 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v8 = a1;
    swift_beginAccess();
    memcpy(v16, &a1[v7], 0x17AuLL);
    memcpy(v15, &a1[v7], sizeof(v15));
    v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
    v10 = a2;
    swift_beginAccess();
    sub_181B5C0FC(a2 + v9, v6);
    sub_181A3DF5C(v16, v14);

    v11 = dword_182B017F4[swift_getEnumCaseMultiPayload()];
    sub_181B5C160(v6);
    v12 = sub_181B6B060(v11);
    memcpy(v14, v15, 0x17AuLL);
    sub_181A3DFB8(v14);
    swift_endAccess();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1822649F0(char *a1, char *a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v5 = a1;
    swift_beginAccess();
    memcpy(__dst, &a1[v3], 0x17AuLL);
    memcpy(__src, &a1[v3], sizeof(__src));
    v6 = *&a2[OBJC_IVAR____TtC7Network13__NWInterface_interface];
    v7 = a2;
    sub_181A3DF5C(__dst, v13);

    v10 = v6;
    v8 = sub_181C54400(&v10);

    memcpy(v13, __src, 0x17AuLL);
    sub_181A3DFB8(v13);
    swift_endAccess();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void _nw_path_apply_override_interface_types_from_path_0(void *a1, char *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a1;
      swift_beginAccess();
      v4 = OBJC_IVAR____TtC7Network8__NWPath_path;
      v5 = a2;
      swift_beginAccess();
      memcpy(__dst, &a2[v4], 0x17AuLL);
      sub_181A3DF5C(__dst, v8);

      memcpy(v6, __dst, 0x17AuLL);
      sub_181D889B8(v6);
      memcpy(v8, v6, 0x17AuLL);
      sub_181A3DFB8(v8);
      swift_endAccess();
    }
  }
}

char *sub_182264C00(char *result, unsigned __int8 *a2, _DWORD *a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2 && a3)
    {
      v5 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
      v6 = result;
      swift_beginAccess();
      v7 = *(v5 + 25);
      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = v7[3];
      if (!v8)
      {
        goto LABEL_11;
      }

      if (v8 < 1)
      {
        __break(1u);
      }

      v9 = v7[4];
      v10 = v7[2];
      if (v9 < v10)
      {
        v10 = 0;
      }

      v11 = &v7[26 * (v9 - v10)];
      v13 = v11[21];
      v12 = v11[22];
      v14 = v11[23];
      v15 = *(v11 + 192);
      LOBYTE(v11) = *(v11 + 193);
      *a3 = 0;
      if ((v11 & 1) == 0 && (*a3 = HIDWORD(v13), (v15 & 1) == 0))
      {
        v17[0] = v12;
        v17[1] = v14;
        uuid_copy(a2, v17);
        v16 = 1;
      }

      else
      {
LABEL_11:
        v16 = 0;
      }

      swift_endAccess();

      return v16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _nw_path_get_custom_metadata(void *a1, void *a2, _BYTE *a3)
{
  v6 = OBJC_IVAR____TtC7Network8__NWPath_path;
  v7 = a1;
  swift_beginAccess();
  sub_182264E20(a1 + v6, a3, a2, &v9);
  swift_endAccess();

  return v9;
}

void sub_182264E20(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v6 = *(a1 + 200);
  if (!v6 || (v7 = v6[3]) == 0)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  if (v7 >= 1)
  {
    v8 = v6[4];
    v9 = v6[2];
    if (v8 < v9)
    {
      v9 = 0;
    }

    v10 = v6[26 * (v8 - v9) + 26];
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = a3;

    a3 = v11;
LABEL_9:
    v12 = *(v10 + 16);
    if (v12 <= *a2)
    {
      *a2 = v12;
      memcpy(a3, (v10 + 32), v12);

      v18 = 1;
LABEL_17:
      *a4 = v18;
      return;
    }

    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1ED411DA8);

    v14 = sub_182AD2678();
    v15 = sub_182AD38B8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 16777728;
      *(v16 + 4) = *a2;
      *(v16 + 5) = 2048;
      v17 = *(v10 + 16);

      *(v16 + 7) = v17;

      _os_log_impl(&dword_181A37000, v14, v15, "Custom metadata with length %hhu is too small for %ld bytes", v16, 0xFu);
      MEMORY[0x1865DF520](v16, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_182264FEC(char *a1, unsigned __int8 *a2, BOOL *a3)
{
  __dst[51] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return 0;
  }

  v5 = OBJC_IVAR____TtC7Network8__NWPath_path;
  v7 = a1;
  swift_beginAccess();
  memcpy(__dst, &a1[v5], 0x17AuLL);
  v8 = sub_181BA5EC0(v12);
  v9 = v13;
  if ((v13 & 1) == 0)
  {
    __dst[0] = v12[0];
    __dst[1] = v12[1];
    if (a3)
    {
      *a3 = v8;
    }

    uuid_copy(a2, __dst);
  }

  v10 = v9 ^ 1u;
  swift_endAccess();

  return v10;
}

uint64_t sub_18226515C(char *a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage;
  v4 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_nexusKeyStorage];
  v6 = a1;
  v7 = v6;
  if (v4)
  {

    return v4;
  }

  v8 = &v6[OBJC_IVAR____TtC7Network8__NWPath_path];
  result = swift_beginAccess();
  v10 = *(v8 + 25);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10[3];
  if (!v11)
  {
    goto LABEL_14;
  }

  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v10[4];
  v13 = v10[2];
  if (v12 < v13)
  {
    v13 = 0;
  }

  v14 = v10[26 * (v12 - v13) + 5];
  if (!v14)
  {
LABEL_14:

    return 0;
  }

  v15 = *(v14 + 16);

  v16 = swift_slowAlloc();
  *&a1[v3] = v16;
  result = memcpy(v16, (v14 + 32), v15);
  if (HIDWORD(v15))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *a2 = v15;
  v4 = *&a1[v3];
  if (v4)
  {

    return v4;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_18226529C(char *a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v4 = a1;
  result = swift_beginAccess();
  v6 = *(v3 + 25);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v7 = *(v6 + 24);
  if (!v7)
  {
LABEL_9:
    LODWORD(v6) = 0;
    v10 = 0;
LABEL_13:
    *a2 = v6;

    return v10;
  }

  if (v7 >= 1)
  {
    v8 = *(v6 + 32);
    v9 = *(v6 + 16);
    if (v8 < v9)
    {
      v9 = 0;
    }

    v6 += 208 * (v8 - v9);
    if ((*(v6 + 193) & 1) == 0)
    {
      LODWORD(v6) = *(v6 + 168);
      v10 = 1;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_18226536C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 200);
  if (!v2 || v2[3] < 1)
  {
    *a2 = 0;
    return result;
  }

  v70 = sub_182AD2388();
  v3 = *v70;
  v4 = v2[4];
  if (v2[2] >= v2[3] + v4)
  {
    v5 = v2[3] + v4;
  }

  else
  {
    v5 = v2[2];
  }

  v86 = v2;
  v87 = v4;
  v88 = v5;
  v89 = v3;

  if (v4 != v5)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = sub_181AC81FC(v6);
  v8 = v86;
  if (v7)
  {
    while (1)
    {
      v9 = v87;
      v10 = ++v87;
      v11 = &v8[26 * v9];
      v74 = *(v11 + 5);
      v12 = *(v11 + 9);
      v13 = *(v11 + 13);
      v14 = *(v11 + 7);
      v77 = *(v11 + 11);
      v78 = v13;
      v75 = v14;
      v76 = v12;
      v15 = *(v11 + 17);
      v16 = *(v11 + 21);
      v17 = *(v11 + 15);
      v81 = *(v11 + 19);
      v82 = v16;
      v79 = v17;
      v80 = v15;
      v18 = *(v11 + 25);
      v19 = *(v11 + 27);
      v20 = *(v11 + 23);
      *(v85 + 10) = *(v11 + 226);
      v84 = v18;
      v85[0] = v19;
      v83 = v20;
      v21 = type metadata accessor for __NWPathFlow();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC7Network12__NWPathFlow_keyStorage] = 0;
      v23 = &v22[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
      *v23 = v74;
      v24 = v78;
      v26 = v75;
      v25 = v76;
      *(v23 + 3) = v77;
      *(v23 + 4) = v24;
      *(v23 + 1) = v26;
      *(v23 + 2) = v25;
      v27 = v82;
      v29 = v79;
      v28 = v80;
      *(v23 + 7) = v81;
      *(v23 + 8) = v27;
      *(v23 + 5) = v29;
      *(v23 + 6) = v28;
      v30 = v83;
      v31 = v84;
      v32 = v85[0];
      *(v23 + 186) = *(v85 + 10);
      *(v23 + 10) = v31;
      *(v23 + 11) = v32;
      *(v23 + 9) = v30;
      sub_181AFE6F4(&v74, v73);
      sub_181AFE6F4(&v74, v73);
      v72.receiver = v22;
      v72.super_class = v21;
      result = objc_msgSendSuper2(&v72, sel_init);
      v33 = v3[3];
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v35 = result;
      v3 = v89;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v3[2] < v34 || (result & 1) == 0)
      {
        result = sub_181B9CDF8(result, v34);
        v3 = v89;
      }

      v36 = v3[3];
      v37 = v3[4];
      v40 = __OFADD__(v37, v36);
      v38 = v37 + v36;
      if (v40)
      {
        goto LABEL_50;
      }

      if (v36 < 0)
      {
        if (v38 < 0)
        {
          v42 = v3[2];
          v40 = __OFADD__(v38, v42);
          v38 += v42;
          if (v40)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v39 = v3[2];
        v40 = __OFSUB__(v38, v39);
        v41 = v38 - v39;
        if (v41 < 0 == v40)
        {
          v38 = v41;
          if (v40)
          {
            goto LABEL_55;
          }
        }
      }

      v3[v38 + 5] = v35;
      v40 = __OFADD__(v36, 1);
      v43 = v36 + 1;
      if (v40)
      {
        goto LABEL_51;
      }

      v3[3] = v43;
      v44 = v35;
      sub_181AFE6A0(&v74);

      if (v10 == v88)
      {
        goto LABEL_7;
      }

LABEL_9:
      v8 = v86;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v45 = type metadata accessor for NWArray();
    v46 = objc_allocWithZone(v45);
    v47 = v46;
    v48 = OBJC_IVAR____TtC7Network7NWArray_deque;
    *&v46[OBJC_IVAR____TtC7Network7NWArray_deque] = *v70;
    v49 = v3[4];
    if (v3[2] >= v3[3] + v49)
    {
      v50 = v3[3] + v49;
    }

    else
    {
      v50 = v3[2];
    }

    *&v74 = v3;
    *(&v74 + 1) = v49;
    *&v75 = v50;
    swift_retain_n();

    v52 = v3;
    if (v49 == v50)
    {
LABEL_30:
      if (sub_181AC81FC(v51))
      {
        v49 = *(&v74 + 1);
        v52 = v74;
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
      v67 = swift_allocObject();
      *(v67 + 16) = 0;
      *&v47[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v67;
      v71.receiver = v47;
      v71.super_class = v45;
      v68 = objc_msgSendSuper2(&v71, sel_init);

      *a2 = v68;
      return result;
    }

LABEL_32:
    while (1)
    {
      v53 = v49 + 1;
      *(&v74 + 1) = v49 + 1;
      v54 = v52[v49 + 5];
      result = swift_beginAccess();
      v55 = *(*&v47[v48] + 24);
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      v57 = v54;
      result = swift_isUniquelyReferenced_nonNull_native();
      v58 = *&v47[v48];
      if (v58[2] < v56 || (result & 1) == 0)
      {
        result = sub_181ACC600(result, v56);
        v58 = *&v47[v48];
      }

      v59 = v58[3];
      v60 = v58[4];
      v40 = __OFADD__(v60, v59);
      v61 = v60 + v59;
      if (v40)
      {
        goto LABEL_53;
      }

      if (v59 < 0)
      {
        if (v61 < 0)
        {
          v65 = v58[2];
          v40 = __OFADD__(v61, v65);
          v61 += v65;
          if (v40)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        v62 = v58[2];
        v63 = __OFSUB__(v61, v62);
        v64 = v61 - v62;
        if (v64 < 0 == v63)
        {
          v61 = v64;
          if (v63)
          {
            goto LABEL_56;
          }
        }
      }

      v58[v61 + 5] = v57;
      v40 = __OFADD__(v59, 1);
      v66 = v59 + 1;
      if (v40)
      {
        goto LABEL_54;
      }

      v58[3] = v66;
      v51 = swift_endAccess();
      v49 = v53;
      if (v53 == v75)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

void _nw_path_group_members_appendTm(char *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  if (a1)
  {
    if (a2)
    {
      v4 = OBJC_IVAR____TtC7Network8__NWPath_path;
      v7 = a1;
      swift_beginAccess();
      a3(&a1[v4], a2);
      swift_endAccess();
    }
  }
}

uint64_t sub_182265864(uint64_t a1, char *a2)
{
  v3 = (a1 + 200);
  if (!*(a1 + 200))
  {
    *v3 = *sub_182AD2388();
  }

  v4 = &a2[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v5 = a2;
  swift_beginAccess();
  v6 = *(v4 + 11);
  v18[10] = *(v4 + 10);
  v19[0] = v6;
  *(v19 + 10) = *(v4 + 186);
  v7 = *(v4 + 7);
  v18[6] = *(v4 + 6);
  v18[7] = v7;
  v8 = *(v4 + 9);
  v18[8] = *(v4 + 8);
  v18[9] = v8;
  v9 = *(v4 + 3);
  v18[2] = *(v4 + 2);
  v18[3] = v9;
  v10 = *(v4 + 5);
  v18[4] = *(v4 + 4);
  v18[5] = v10;
  v11 = *(v4 + 1);
  v18[0] = *v4;
  v18[1] = v11;
  sub_181AFE6F4(v18, v17);

  result = *v3;
  v13 = *(*v3 + 24);
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    if (*(*v3 + 16) < v14 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B997D0(isUniquelyReferenced_nonNull_native, v14);
      v16 = *v3;
    }

    sub_181B999A8((v16 + 16), v16 + 40, v18);
    return sub_181AFE6A0(v18);
  }

  return result;
}

char *_nw_path_flow_copy_resolved_endpointsTm(char *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *, uint64_t))
{
  if (result)
  {
    v5 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v6 = result;
    v7 = result;
    swift_beginAccess();
    a3(&v8, &v6[v5], a2);
    swift_endAccess();

    return v8;
  }

  return result;
}

uint64_t sub_182265A10@<X0>(unsigned __int8 *uu@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  result = uuid_is_null(uu);
  v7 = result;
  v36 = 0u;
  if (result != 1)
  {
    v36 = *uu;
  }

  v8 = *(a2 + 200);
  if (!v8)
  {
LABEL_16:
    *a3 = 0;
    return result;
  }

  v9 = v8[4];
  if (v8[2] >= v8[3] + v9)
  {
    v10 = v8[3] + v9;
  }

  else
  {
    v10 = v8[2];
  }

  v40 = *(a2 + 200);
  v41 = v9;
  v42 = v10;
  v11 = swift_retain_n();
  v12 = v8;
  while (1)
  {
    if (v9 == v10)
    {
      v11 = sub_181AC81FC(v11);
      if ((v11 & 1) == 0)
      {

        goto LABEL_16;
      }

      v12 = v40;
      v9 = v41;
    }

    v41 = v9 + 1;
    v13 = &v12[26 * v9];
    v14 = *(v13 + 9);
    v15 = *(v13 + 13);
    v16 = *(v13 + 7);
    v47 = *(v13 + 11);
    v48 = v15;
    v45 = v16;
    v46 = v14;
    v17 = *(v13 + 17);
    v18 = *(v13 + 21);
    v19 = *(v13 + 15);
    v51 = *(v13 + 19);
    v52 = v18;
    v49 = v19;
    v50 = v17;
    v20 = *(v13 + 25);
    v21 = *(v13 + 27);
    v22 = *(v13 + 23);
    *(v55 + 10) = *(v13 + 226);
    v54 = v20;
    v55[0] = v21;
    v53 = v22;
    v44 = *(v13 + 5);
    if (v7 != 1)
    {
      break;
    }

LABEL_8:
    v10 = v42;
    ++v9;
  }

  uu1 = v47;
  *uu2 = v36;
  sub_181AFE6F4(&v44, v43);
  if (uuid_compare(&uu1, uu2))
  {
    v11 = sub_181AFE6A0(&v44);
    goto LABEL_8;
  }

  v23 = type metadata accessor for __NWPathFlow();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC7Network12__NWPathFlow_keyStorage] = 0;
  v25 = &v24[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  *v25 = v44;
  v26 = v48;
  v28 = v45;
  v27 = v46;
  *(v25 + 3) = v47;
  *(v25 + 4) = v26;
  *(v25 + 1) = v28;
  *(v25 + 2) = v27;
  v29 = v52;
  v31 = v49;
  v30 = v50;
  *(v25 + 7) = v51;
  *(v25 + 8) = v29;
  *(v25 + 5) = v31;
  *(v25 + 6) = v30;
  v32 = v53;
  v33 = v54;
  v34 = v55[0];
  *(v25 + 186) = *(v55 + 10);
  *(v25 + 10) = v33;
  *(v25 + 11) = v34;
  *(v25 + 9) = v32;
  sub_181AFE6F4(&v44, v43);
  v39.receiver = v24;
  v39.super_class = v23;
  v35 = objc_msgSendSuper2(&v39, sel_init);

  sub_181AFE6A0(&v44);

  *a3 = v35;
  return result;
}

uint64_t sub_182265D10(char *a1, unsigned __int8 *uu)
{
  result = 0;
  __dst[48] = *MEMORY[0x1E69E9840];
  if (uu && a1)
  {
    if (uuid_is_null(uu) == 1)
    {
      return 0;
    }

    else
    {
      v22 = *uu;
      v5 = OBJC_IVAR____TtC7Network8__NWPath_path;
      v6 = a1;
      swift_beginAccess();
      memcpy(__dst, &a1[v5], 0x17AuLL);
      v7 = __dst[25];
      if (__dst[25])
      {
        v8 = *(__dst[25] + 32);
        if (*(__dst[25] + 16) >= *(__dst[25] + 24) + v8)
        {
          v9 = *(__dst[25] + 24) + v8;
        }

        else
        {
          v9 = *(__dst[25] + 16);
        }

        v19 = __dst[25];
        v20 = v8;
        v21 = v9;
        swift_retain_n();
        v10 = sub_181A3DF5C(__dst, uu1);
        v11 = v7;
        while (1)
        {
          if (v8 == v9)
          {
            v10 = sub_181AC81FC(v10);
            if ((v10 & 1) == 0)
            {

              sub_181A3DFB8(__dst);

              break;
            }

            v11 = v19;
            v8 = v20;
          }

          v20 = v8 + 1;
          v12 = v11 + 208 * v8;
          if (*(v12 + 156) != 1)
          {
            v13 = *(v12 + 152);
            v16 = v12 + 136;
            v14 = *(v12 + 136);
            v15 = *(v16 + 8);
            uu1[0] = BYTE4(v14);
            uu1[1] = BYTE5(v14);
            uu1[2] = BYTE6(v14);
            uu1[3] = HIBYTE(v14);
            v24 = v15;
            v25 = v13;
            v18 = v22;
            v10 = uuid_compare(uu1, &v18);
            if (!v10)
            {

              sub_181A3DFB8(__dst);

              v17 = 1;
              goto LABEL_19;
            }
          }

          v9 = v21;
          ++v8;
        }
      }

      v17 = 0;
LABEL_19:
      swift_endAccess();

      return v17;
    }
  }

  return result;
}

uint64_t _nw_path_throughput_estimates_up(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = nw_bucket_to_throughput(v1[356]);
  swift_endAccess();

  return v3;
}

uint64_t _nw_path_throughput_estimates_down(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = nw_bucket_to_throughput(v1[357]);
  swift_endAccess();

  return v3;
}

char *sub_182266030(char *result, char *a2, uint64_t a3)
{
  if (result && a2)
  {
    v5 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v6 = result;
    swift_beginAccess();
    if (a3)
    {
      v7 = sub_181AC1BE8(a3, 0);
      sub_181F853B4(v7 + 4, a3, a2, a3);
      if (v8 == a3)
      {
LABEL_7:
        *(v5 + 18) = v7;
      }

      __break(1u);
    }

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1822660F0(char *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_nat64PrefixStorage];
  v4 = a1;
  if (v3)
  {
    MEMORY[0x1865DF520](v3, -1, -1);
  }

  v5 = swift_slowAlloc();
  *&v1[v2] = v5;
  v6 = &v4[OBJC_IVAR____TtC7Network8__NWPath_path];
  result = swift_beginAccess();
  v8 = *(v6 + 18);
  if (v8)
  {
    if (*(v8 + 16) >= 0x50uLL)
    {
      v9 = 80;
    }

    else
    {
      v9 = *(v8 + 16);
    }

    result = memcpy(v5, (v8 + 32), v9);
    v1 = *&v1[v2];
    if (v1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5[3] = 0u;
    v5[4] = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    v1 = *&v1[v2];
    if (v1)
    {
LABEL_9:

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _nw_path_get_routed_interface_indexTm(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 82);

  return v3;
}

void _nw_path_set_routed_interface_indexTm(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 82) = a2;
  }
}

void _nw_path_set_necp_result_filter_control_unit(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 74) = a2;
  }
}

void _nw_path_set_necp_result_flow_divert_aggregate_unit(char *a1, int a2)
{
  if (a1)
  {
    v3 = &a1[OBJC_IVAR____TtC7Network8__NWPath_path];
    v4 = a1;
    swift_beginAccess();
    *(v3 + 88) = a2;
  }
}

uint64_t sub_18226638C(uint64_t a1, unsigned int a2, const void *a3)
{
  if (!a2)
  {
LABEL_22:
    v8 = 0;
LABEL_25:

    *(a1 + 312) = v8;
    return result;
  }

  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C8);
  v7 = 8 * (v5 + 2 * a2);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = (v9 - 40) / 24;
  v30 = v8;
  v10 = sub_181A5630C(v5, 0);
  result = memcpy(v10 + 4, a3, v7);
  v12 = v10[2];
  if (!v12)
  {

    goto LABEL_25;
  }

  v13 = 0;
  v14 = v10 + 5;
  v15 = v12 - 1;
  v16 = v8;
  while (1)
  {
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = *(v14 - 1);
    v29 = *v14;
    v18 = v8[3];
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (v8[2] < v19 || (result & 1) == 0)
    {
      result = sub_181F46904(result, v19);
      v8 = v30;
    }

    v20 = v8[3];
    v21 = v8[4];
    v24 = __OFADD__(v21, v20);
    v22 = v21 + v20;
    if (v24)
    {
      goto LABEL_27;
    }

    if (v20 < 0)
    {
      if (v22 < 0)
      {
        v26 = v8[2];
        v24 = __OFADD__(v22, v26);
        v22 += v26;
        if (v24)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v23 = v8[2];
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v25 < 0 == v24)
      {
        v22 = v25;
        if (v24)
        {
          goto LABEL_29;
        }
      }
    }

    v27 = &v8[3 * v22];
    v27[5] = v17;
    *(v27 + 3) = v29;
    v24 = __OFADD__(v20, 1);
    v28 = v20 + 1;
    if (v24)
    {
      goto LABEL_28;
    }

    v8[3] = v28;
    v16 = v8;
LABEL_19:
    if (v15 == v13)
    {

      v8 = v30;
      goto LABEL_25;
    }

    ++v13;
    v14 = (v14 + 24);
    if (v13 >= v10[2])
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_182266578(uint64_t a1, unsigned __int8 *uu, unint64_t a3)
{
  if (uuid_is_null(uu) == 1)
  {
    if (*(a1 + 368))
    {
      v6 = *(a1 + 360);
      a3 = *(a1 + 368);
    }

    else
    {
      memcpy(__dst, a1, 0x170uLL);
      v17 = *(a1 + 376);
      __dst[46] = 0;
      v27 = v17;
      v6 = PathProperties.description.getter();
      a3 = v18;

      *(a1 + 360) = v6;
      *(a1 + 368) = a3;
    }

    v19 = qword_1ED4106B8;

    if (v19 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v7 = *uu;
  v8 = uu[1];
  v9 = uu[2];
  v10 = uu[3];
  v6 = *(uu + 4);
  v11 = *(uu + 3);
  v12 = *(a1 + 304);
  if (!v12)
  {
    *(a1 + 304) = *sub_182AD2388();
  }

  v13 = *(v12 + 24);
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_13:
    v20 = sub_182AD2698();
    __swift_project_value_buffer(v20, qword_1ED411DA8);

    oslog = sub_182AD2678();
    v21 = sub_182AD38B8();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      __dst[0] = v23;
      *v22 = 136315138;
      v24 = sub_181C64FFC(v6, a3, __dst);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_181A37000, oslog, v21, "Unable to add NECP result for path due to invalid UUID %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1865DF520](v23, -1, -1);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    else
    {
    }

    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 304);
  if (*(v16 + 16) < v14 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181A56144(isUniquelyReferenced_nonNull_native, v14);
    v16 = *(a1 + 304);
  }

  sub_181ADABF4((v16 + 16), v16 + 40, a3 | (v7 << 32) | (v8 << 40) | (v9 << 48) | (v10 << 56), v6, v11);
}

char *sub_182266844(char *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a2)
    {
      v4 = result;
      result = 0;
      if (a3 && a4)
      {
        v6 = OBJC_IVAR____TtC7Network8__NWPath_path;
        v7 = v4;
        v8 = v4;
        swift_beginAccess();
        memcpy(__dst, &v7[v6], 0x17AuLL);
        memcpy(__src, &v7[v6], 0x17AuLL);
        sub_181A3DF5C(__dst, v28);
        v9 = sub_182AD3158();
        v11 = v10;
        v12 = sub_182AD3158();
        v14 = v13;
        v20 = sub_181AC47A8(v9, v11);
        v21 = v15;
        v22 = sub_181AC49BC(v12, v14);
        v23 = v16;
        sub_181FD67BC(&v20, v25);
        v17 = v22;
        v18 = v23;
        sub_181E4926C(v20, v21);
        sub_181E49280(v17, v18);
        memcpy(v28, __src, 0x17AuLL);
        sub_181A3DFB8(v28);
        v19 = v26;
        if ((v26 & 1) == 0)
        {
          __src[0] = v25[0];
          __src[1] = v25[1];
          uuid_copy(a2, __src);
        }

        swift_endAccess();

        return (v19 ^ 1u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _nw_path_access_network_agent(char *a1, uint64_t *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  sub_182267E50(a1, a2, v5);

  _Block_release(v5);
}

uint64_t sub_182266ACC(char *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  v5 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
  v6 = a1;
  os_unfair_lock_lock(v5 + 4);
  v7 = &v6[OBJC_IVAR____TtC7Network8__NWPath_path];
  swift_beginAccess();
  v8 = *(v7 + 34);
  if (v8)
  {
    v9 = v8[4];
    v10 = v8[3] + v9;
    if (v8[2] < v10)
    {
      v10 = v8[2];
    }

    v15 = *(v7 + 34);
    v16 = v8[4];
    v17 = v10;
    swift_retain_n();
    is_equal = swift_unknownObjectRetain();
    v12 = v8;
    while (1)
    {
      if (v9 == v17)
      {
        if ((sub_181AC81FC(is_equal) & 1) == 0)
        {
          swift_unknownObjectRelease();

          break;
        }

        v12 = v15;
        v9 = v16;
      }

      v16 = v9 + 1;
      is_equal = nw_proxy_config_is_equal(v12[v9++ + 5], a2);
      if (is_equal)
      {

        swift_unknownObjectRelease();

        v13 = 1;
        goto LABEL_14;
      }
    }
  }

  v13 = 0;
LABEL_14:
  swift_endAccess();
  os_unfair_lock_unlock((*&a1[v4] + 16));

  return v13;
}

BOOL sub_182266C30(char *a1, char a2)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_lock;
    v4 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
    v6 = a1;
    os_unfair_lock_lock(v4 + 4);
    v7 = OBJC_IVAR____TtC7Network8__NWPath_path;
    swift_beginAccess();
    memcpy(__dst, &v6[v7], 0x17AuLL);
    memcpy(__src, &v6[v7], sizeof(__src));
    sub_181A3DF5C(__dst, v12);
    v8 = sub_181B8AEF8(a2 & 1);
    memcpy(v12, __src, 0x17AuLL);
    sub_181A3DFB8(v12);
    swift_endAccess();
    os_unfair_lock_unlock((*&a1[v3] + 16));
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t _nw_path_copy_proxy_configs_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  v2 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
  v4 = a1;
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_182266DC0(&v7);
  swift_endAccess();
  v5 = v7;
  os_unfair_lock_unlock((*&a1[v1] + 16));

  return v5;
}

void sub_182266DC0(void *a1@<X8>)
{
  v3 = sub_181C1F630();
  if (!v3)
  {
    v13 = 0;
LABEL_41:
    *a1 = v13;
    return;
  }

  v4 = v3;
  v5 = *(v3 + 24);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v48[0] = MEMORY[0x1E69E7CC0];
    v6 = v48;
    sub_182AD3D38();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    v7 = 0;
    while (v7 < *(v4 + 24))
    {
      ++v7;
      swift_unknownObjectRetain();
      v6 = v48;
      sub_182AD3D08();
      sub_182AD3D48();
      sub_182AD3D58();
      sub_182AD3D18();
      if (v5 == v7)
      {
        v6 = v48[0];
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_8:
  v1 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_48:
    v8 = sub_182AD3EB8();
    goto LABEL_10;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v42 = a1;
  if (v8 <= 0)
  {
    v9 = *sub_182AD2388();

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B748);
  v9 = swift_allocObject();
  v10 = _swift_stdlib_malloc_size(v9);
  v11 = v10 - 40;
  if (v10 < 40)
  {
    v11 = v10 - 33;
  }

  v9[3] = 0;
  v9[4] = 0;
  v9[2] = v11 >> 3;
  MEMORY[0x1EEE9AC00](v10);
  v40[2] = v9 + 5;
  v40[3] = v8;
  if (v1)
  {

    sub_1822674D8(v6, sub_182267F34, v40, sub_1822D09D8);
    goto LABEL_21;
  }

  v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_17:

LABEL_21:
    v9[3] = v8;

LABEL_22:
    v14 = type metadata accessor for NWArray();
    v15 = objc_allocWithZone(v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B738);
    v48[3] = v16;
    v48[4] = sub_181AB3DCC(&unk_1EA836DB0, &unk_1EA83B738);
    v48[0] = v9;
    v17 = sub_182AD2388();
    a1 = OBJC_IVAR____TtC7Network7NWArray_deque;
    *&v15[OBJC_IVAR____TtC7Network7NWArray_deque] = *v17;
    v18 = __swift_project_boxed_opaque_existential_1(v48, v16);
    v19 = MEMORY[0x1EEE9AC00](v18);
    v21 = &v41 - v20;
    (*(v22 + 16))(&v41 - v20, v19);
    v1 = MEMORY[0x1E69E6208];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v45);
    v24 = *(*v21 + 32);
    v25 = *(*v21 + 24) + v24;
    if (*(*v21 + 16) < v25)
    {
      v25 = *(*v21 + 16);
    }

    *boxed_opaque_existential_0Tm = *v21;
    boxed_opaque_existential_0Tm[1] = v24;
    boxed_opaque_existential_0Tm[2] = v25;

    while (1)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v45, AssociatedTypeWitness);
      sub_182AD3A08();
      v26 = v43;
      if (!v43)
      {
        break;
      }

      swift_beginAccess();
      v27 = *(*(a1 + v15) + 24);
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_43;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a1 + v15);
      if (v30[2] < v28 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = a1 + v15;
        sub_181ACC600(isUniquelyReferenced_nonNull_native, v28);
        v30 = *(a1 + v15);
      }

      v31 = v30[3];
      v32 = v30[4];
      v35 = __OFADD__(v32, v31);
      v33 = v32 + v31;
      if (v35)
      {
        goto LABEL_44;
      }

      if (v31 < 0)
      {
        if (v33 < 0)
        {
          v37 = v30[2];
          v35 = __OFADD__(v33, v37);
          v33 += v37;
          if (v35)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        v34 = v30[2];
        v35 = __OFSUB__(v33, v34);
        v36 = v33 - v34;
        if (v36 < 0 == v35)
        {
          v33 = v36;
          if (v35)
          {
            goto LABEL_46;
          }
        }
      }

      v30[v33 + 5] = v26;
      v35 = __OFADD__(v31, 1);
      v38 = v31 + 1;
      if (v35)
      {
        goto LABEL_45;
      }

      v30[3] = v38;
      swift_endAccess();
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839FA0);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *&v15[OBJC_IVAR____TtC7Network7NWArray_applyCount] = v39;
    v44.receiver = v15;
    v44.super_class = v14;
    v13 = objc_msgSendSuper2(&v44, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v48);

    a1 = v42;
    goto LABEL_41;
  }

  if (v8 >= v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B750);
    swift_arrayInitWithCopy();
    goto LABEL_17;
  }

LABEL_50:
  __break(1u);
}

uint64_t _nw_path_copy_legacy_proxy_settings_0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7Network8__NWPath_lock;
  v2 = *&a1[OBJC_IVAR____TtC7Network8__NWPath_lock];
  v4 = a1;
  os_unfair_lock_lock(v2 + 4);
  v5 = &v4[OBJC_IVAR____TtC7Network8__NWPath_path];
  swift_beginAccess();
  v6 = *(v5 + 35);
  v7 = *&a1[v1];
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v7 + 4);

  return v6;
}

uint64_t _nw_path_set_proxy_settings(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = OBJC_IVAR____TtC7Network8__NWPath_lock;
    v3 = *(result + OBJC_IVAR____TtC7Network8__NWPath_lock);
    v4 = result;
    swift_unknownObjectRetain();
    v6 = v4;
    os_unfair_lock_lock(v3 + 4);
    v7 = OBJC_IVAR____TtC7Network8__NWPath_path;
    swift_beginAccess();
    sub_182267458(&v6[v7], a2);
    swift_endAccess();
    os_unfair_lock_unlock((*&v4[v2] + 16));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_182267458(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *(a1 + 280) = 0;
  v4 = *(a1 + 156);
  if ((v4 & 0x4000000) != 0)
  {
    *(a1 + 156) = v4 & 0xFBFFFFFF;
  }

  v5 = swift_unknownObjectRetain();
  Class = object_getClass(v5);
  if (Class == sub_182AD26C8())
  {
    *(a1 + 280) = a2;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return result;
}

uint64_t sub_1822674D8(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_182267540(a1, a4);
  v6 = v5[2];

  return a2(v5 + 4, v6);
}

void *sub_182267540(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, MEMORY[0x1E69E7CC0]);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, MEMORY[0x1E69E7CC0], v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

uint64_t sub_182267604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (result && a2)
  {
    if (a4 < a2)
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      return swift_arrayInitWithCopy();
    }
  }

  return result;
}

uint64_t sub_182267670(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_182AD3EB8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_182AD3EB8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_181AB3DCC(&qword_1EA83B778, &qword_1EA83B770);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B770);
            v9 = sub_182291A0C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA20);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_182267820(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = sub_182AD30F8();
    v5 = __OFADD__(v10, 1);
    result = v10 + 1;
    if (!v5)
    {
      v7 = swift_slowAlloc();
      result = sub_182AD30F8();
      v8 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v9 = __src;
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B780);
    sub_182AD3B78();
    if (!v2)
    {
      return __src[3];
    }

    return v7;
  }

  v4 = sub_182AD30F8();
  v5 = __OFADD__(v4, 1);
  result = v4 + 1;
  if (v5)
  {
    goto LABEL_15;
  }

  v7 = swift_slowAlloc();
  result = sub_182AD30F8();
  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_10:
    memcpy(v7, v9, v8);
    return v7;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_182267974(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_8;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      v6 = a3 + OBJC_IVAR____TtC7Network8__NWPath_path;
      result = swift_beginAccess();
      if (!*(v6 + 128))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v7 = sub_182AD30F8();

      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

      v9 = v4 & 0xFFFFFFFFFFFFFFFLL;
      v4 = swift_slowAlloc();
      *(a3 + OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage) = v4;
      memcpy(v4, (v9 + 32), v8);
      result = v4;
      if (v4)
      {
        return result;
      }

      __break(1u);
LABEL_8:
      __src[0] = result;
      __src[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      v10 = a3 + OBJC_IVAR____TtC7Network8__NWPath_path;
      result = swift_beginAccess();
      if (!*(v10 + 128))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v11 = sub_182AD30F8();

      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        v13 = swift_slowAlloc();
        *(a3 + OBJC_IVAR____TtC7Network8__NWPath_reasonDescriptionStorage) = v13;
        result = memcpy(v13, __src, v12);
        if (v13)
        {
          return v13;
        }

LABEL_19:
        __break(1u);
        return result;
      }

      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B780);
  result = sub_182AD3B78();
  if (!v3)
  {
    return __src[3];
  }

  return result;
}

char *sub_182267B54(char *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v4 = result;
    v5 = result;
    swift_beginAccess();
    memcpy(__dst, &v4[v3], 0x17AuLL);
    sub_181A3DF5C(__dst, v14);

    memcpy(v14, __dst, 0x17AuLL);
    v6 = sub_181B6B27C();
    memcpy(v16, v14, 0x17AuLL);
    result = sub_181A3DFB8(v16);
    if (v6)
    {
      v7 = *(v6 + 2);
      if (v7)
      {
        v8 = 0;
        v9 = v7 - 1;
        for (i = 32; ; i += 16)
        {
          v14[0] = *&v6[i];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730);
          v11 = swift_allocObject();
          v12 = _swift_stdlib_malloc_size(v11);
          *(v11 + 16) = 16;
          *(v11 + 24) = 2 * v12 - 64;
          *(v11 + 32) = v14[0];
          v13 = (*(a2 + 16))(a2, v11 + 32);

          if (!v13 || v9 == v8)
          {
            break;
          }

          if (++v8 >= *(v6 + 2))
          {
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_182267CF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v4 = result;
    v5 = result;
    swift_beginAccess();
    memcpy(__dst, (v4 + v3), 0x17AuLL);
    sub_181A3DF5C(__dst, v14);

    v6 = __dst[33];
    if (__dst[33])
    {
      v7 = 1 << *(__dst[33] + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(__dst[33] + 64);
      v10 = (v7 + 63) >> 6;

      v11 = 0;
      while (v9)
      {
LABEL_11:
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        if (*(*(*(v6 + 56) + ((v11 << 9) | (8 * v13))) + 16))
        {
          result = (*(a2 + 16))(a2);
          if ((result & 1) == 0)
          {

            return sub_181A3DFB8(__dst);
          }
        }
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {
          sub_181A3DFB8(__dst);
        }

        v9 = *(v6 + 64 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      return sub_181A3DFB8(__dst);
    }
  }

  return result;
}

char *sub_182267E50(char *result, uint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v5 = OBJC_IVAR____TtC7Network8__NWPath_path;
    v6 = result;
    v7 = result;
    swift_beginAccess();
    memcpy(__dst, &v6[v5], 0x17AuLL);
    sub_181A3DF5C(__dst, v13);

    v8 = __dst[33];
    if (__dst[33])
    {
      if (uuid_is_null(a2) != 1)
      {
        if (*(v8 + 16))
        {
          v9 = sub_181AC2218(*a2, a2[1]);
          if (v10)
          {
            v11 = *(*(v8 + 56) + 8 * v9);
            v12 = *(v11 + 16);
            if (v12)
            {
              (*(a3 + 16))(a3, v12, *(v11 + 84));
            }
          }
        }
      }
    }

    return sub_181A3DFB8(__dst);
  }

  return result;
}

uint64_t sub_182267FC4()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA843418);
  __swift_project_value_buffer(v0, qword_1EA843418);
  return sub_182AD2688();
}

uint64_t sub_182268034()
{
  result = nw_settings_get_swift_quic_logging_enabled();
  byte_1EA843430 = result;
  return result;
}

uint64_t sub_18226805C()
{
  type metadata accessor for Preferences();
  swift_allocObject();
  result = sub_182268098();
  qword_1EA843438 = result;
  return result;
}

uint64_t sub_182268098()
{
  *(v0 + 16) = sub_182268474(0x645F656C62616E65, 0xEC00000067756265, 0);
  *(v0 + 17) = sub_182268474(0x5F656C6261736964, 0xED00006369627563, 0);
  *(v0 + 18) = sub_182268474(0x656C5F6563726F66, 0xEC00000074616264, 0);
  *(v0 + 19) = sub_182268474(0xD000000000000012, 0x8000000182BE27D0, 0);
  *(v0 + 20) = sub_182268474(0xD000000000000014, 0x8000000182BE27F0, 1);
  *(v0 + 21) = sub_182268474(0xD000000000000016, 0x8000000182BE2810, 1);
  *(v0 + 22) = sub_182268474(0x615F656C62616E65, 0xEF716572665F6B63, 0);
  *(v0 + 23) = sub_182268474(0x6361705F65636170, 0xEC0000007374656BLL, 0);
  *(v0 + 24) = sub_182268474(0xD000000000000015, 0x8000000182BE2830, 0);
  *(v0 + 25) = sub_182268474(0xD000000000000016, 0x8000000182BE2850, 1);
  *(v0 + 26) = sub_182268474(0xD000000000000010, 0x8000000182BE2870, 0);
  *(v0 + 32) = sub_182268770(0xD000000000000019, 0x8000000182BE2890, 20);
  *(v0 + 40) = sub_182268770(0xD00000000000001CLL, 0x8000000182BE28B0, 128);
  *(v0 + 48) = sub_182268770(0xD000000000000011, 0x8000000182BE28D0, 6);
  *(v0 + 56) = sub_182268770(0xD000000000000017, 0x8000000182BE28F0, 3);
  *(v0 + 64) = sub_182268770(0xD00000000000001DLL, 0x8000000182BE2910, 2);
  *(v0 + 72) = sub_182268A60(0xD000000000000011, 0x8000000182BE2930, 0);
  *(v0 + 80) = v1;
  *(v0 + 136) = sub_182268D70(0xD000000000000015, 0x8000000182BE2950, 0);
  *(v0 + 144) = v2 & 1;
  *(v0 + 88) = sub_182268D70(0xD000000000000018, 0x8000000182BE2970, 0);
  *(v0 + 96) = v3 & 1;
  *(v0 + 104) = sub_182268D70(0xD000000000000016, 0x8000000182BE2990, 0);
  *(v0 + 112) = v4 & 1;
  *(v0 + 120) = sub_182268D70(0xD000000000000016, 0x8000000182BE29B0, 0);
  *(v0 + 128) = v5 & 1;
  *(v0 + 152) = sub_182268D70(0xD000000000000010, 0x8000000182BE29D0, 0);
  *(v0 + 160) = v6 & 1;
  *(v0 + 168) = sub_182268D70(0xD000000000000022, 0x8000000182BE29F0, 0);
  *(v0 + 176) = v7 & 1;
  return v0;
}

BOOL sub_182268474(uint64_t a1, unint64_t a2, char a3)
{
  LOBYTE(BOOL_setting) = a3;
  v23 = 0x5F63697571;
  v24 = 0xE500000000000000;
  MEMORY[0x1865D9CA0](a1, a2);
  v6 = sub_182AD3048();
  v7 = network_config_setting_exists((v6 + 32));

  if (v7)
  {
    v8 = sub_182AD3048();

    BOOL_setting = network_config_get_BOOL_setting((v8 + 32));

    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v23 = a1;
      v24 = a2;

      MEMORY[0x1865D9CA0](2112800, 0xE300000000000000);
      if (BOOL_setting)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (BOOL_setting)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v9, v10);

      v12 = v23;
      v11 = v24;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v13 = sub_182AD2698();
      __swift_project_value_buffer(v13, qword_1EA843418);

      v14 = sub_182AD2678();
      v15 = sub_182AD38A8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315650;
        v18 = sub_182AD3BF8();
        v20 = sub_181C64FFC(v18, v19, &v23);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v23);
        *(v16 + 22) = 2080;
        v21 = sub_181C64FFC(v12, v11, &v23);

        *(v16 + 24) = v21;
        _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v17, -1, -1);
        MEMORY[0x1865DF520](v16, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return BOOL_setting;
}

uint64_t sub_182268770(unint64_t a1, NSObject *a2, uint64_t a3)
{
  v19 = 0x5F63697571;
  v20 = 0xE500000000000000;
  MEMORY[0x1865D9CA0]();
  v6 = sub_182AD3048();
  v7 = network_config_setting_exists((v6 + 32));

  if (v7)
  {
    v9 = sub_182AD3048();

    int64_setting = network_config_get_int64_setting((v9 + 32));

    if (qword_1EA837250 != -1)
    {
      goto LABEL_9;
    }

    while (byte_1EA843430 == 1)
    {
      v19 = a1;
      v20 = a2;

      MEMORY[0x1865D9CA0](2112800, 0xE300000000000000);
      v11 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v11);

      int64_setting = v19;
      a1 = v20;
      if (qword_1EA837248 != -1)
      {
        goto LABEL_11;
      }

LABEL_6:
      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA843418);

      a2 = sub_182AD2678();
      v13 = sub_182AD38A8();

      if (os_log_type_enabled(a2, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315650;
        v16 = sub_182AD3BF8();
        v18 = sub_181C64FFC(v16, v17, &v19);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v19);
        *(v14 + 22) = 2080;
        int64_setting = sub_181C64FFC(int64_setting, a1, &v19);

        *(v14 + 24) = int64_setting;
        _os_log_impl(&dword_181A37000, a2, v13, "%s %s %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v15, -1, -1);
        MEMORY[0x1865DF520](v14, -1, -1);

        __break(1u);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }

    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  return a3;
}

uint64_t sub_182268A60(uint64_t a1, unint64_t a2, uint64_t a3)
{
  MEMORY[0x1865D9CA0]();
  v6 = sub_182AD3048();
  v7 = network_config_setting_exists((v6 + 32));

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v8);
    a3 = sub_182AD30D8();
    v10 = v9;

    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v21[0] = a1;
      v21[1] = a2;

      MEMORY[0x1865D9CA0](2112800, 0xE300000000000000);
      MEMORY[0x1865D9CA0](a3, v10);
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v11 = sub_182AD2698();
      __swift_project_value_buffer(v11, qword_1EA843418);

      v12 = sub_182AD2678();
      v13 = sub_182AD38A8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21[0] = v15;
        *v14 = 136315650;
        v16 = sub_182AD3BF8();
        v18 = sub_181C64FFC(v16, v17, v21);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v21);
        *(v14 + 22) = 2080;
        v19 = sub_181C64FFC(a1, a2, v21);

        *(v14 + 24) = v19;
        _os_log_impl(&dword_181A37000, v12, v13, "%s %s %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v15, -1, -1);
        MEMORY[0x1865DF520](v14, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }

  return a3;
}

uint64_t sub_182268D70(unint64_t a1, NSObject *a2, uint64_t a3)
{
  v19 = 0x5F63697571;
  v20 = 0xE500000000000000;
  MEMORY[0x1865D9CA0]();
  int64_setting = 0x5F63697571;
  v7 = sub_182AD3048();
  v8 = network_config_setting_exists((v7 + 32));

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B788);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = sub_182AD3048();

    int64_setting = network_config_get_int64_setting((v10 + 32));

    if (qword_1EA837250 != -1)
    {
      goto LABEL_11;
    }

    while (1)
    {
      if (byte_1EA843430 == 1)
      {
        v19 = a1;
        v20 = a2;

        MEMORY[0x1865D9CA0](2112800, 0xE300000000000000);
        v11 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v11);

        int64_setting = v19;
        a1 = v20;
        if (qword_1EA837248 == -1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_7:
      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA843418);

      a2 = sub_182AD2678();
      v13 = sub_182AD38A8();

      if (os_log_type_enabled(a2, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315650;
        v16 = sub_182AD3BF8();
        v18 = sub_181C64FFC(v16, v17, &v19);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v19);
        *(v14 + 22) = 2080;
        int64_setting = sub_181C64FFC(int64_setting, a1, &v19);

        *(v14 + 24) = int64_setting;
        _os_log_impl(&dword_181A37000, a2, v13, "%s %s %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v15, -1, -1);
        MEMORY[0x1865DF520](v14, -1, -1);

        __break(1u);
LABEL_9:
        __break(1u);
      }

      __break(1u);
LABEL_11:
      swift_once();
    }
  }

  return a3;
}

size_t sub_1822690AC(size_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_182AD3048();
    network_config_get_string_setting((v2 + 32), v1, 0x400uLL);

    return strlen(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_182269114()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18226918C()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_182269294()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1822693F4()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1822694FC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xE400000000000000;
  v3 = 1768319351;
  v4 = 0xE800000000000000;
  v5 = 0x72616C756C6C6563;
  v6 = 0xEE0074656E726568;
  v7 = 0x7465206465726977;
  if (a1 != 3)
  {
    v7 = 0x6B636162706F6F6CLL;
    v6 = 0xE800000000000000;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (!a1)
  {
    v3 = 0x726568746FLL;
    v2 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1865D9CA0](v8, v9);
}

uint64_t sub_1822695CC(unsigned __int8 a1)
{
  v1 = 0xE90000000000006CLL;
  v2 = a1;
  v3 = 0x6477615F69666977;
  v4 = 0xEB00000000726F73;
  v5 = 0x7365636F72706F63;
  if (a1 != 3)
  {
    v5 = 0x6F696E61706D6F63;
    v4 = 0xE90000000000006ELL;
  }

  if (a1 != 2)
  {
    v3 = v5;
    v1 = v4;
  }

  v6 = 0xE500000000000000;
  v7 = 0x726568746FLL;
  if (a1)
  {
    v7 = 0xD000000000000013;
    v6 = 0x8000000182BD71B0;
  }

  if (a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  if (v2 <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v1;
  }

  MEMORY[0x1865D9CA0](v8, v9);
}

uint64_t sub_1822696A8()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + 96);
  v9 = result;
  if (*(v1 + 152))
  {
  }

  v4 = *(v1 + 136);
  v3 = *(v1 + 144);
  if (result)
  {
    v5 = *(v1 + 96);
  }

  else
  {
    v5 = *sub_182AD2388();
    v9 = v5;

    result = 0;
  }

  v6 = *(v5 + 24);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v5 + 16) < v7 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v7);
      v5 = v9;
    }

    sub_181B855B4((v5 + 16), v5 + 40, v4, v3);
    return v9;
  }

  return result;
}

uint64_t sub_182269784(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1[3];
  if (v2 != a2[3])
  {
    return 0;
  }

  v3 = 1;
  if (a1 != a2 && v2)
  {
    v4 = a1[4];
    v5 = v4 + v2;
    if (a1[2] < v4 + v2)
    {
      v5 = a1[2];
    }

    v20 = a1;
    v21 = v4;
    v22 = v5;
    v6 = a2[4];
    v7 = v6 + v2;
    if (a2[2] < v6 + v2)
    {
      v7 = a2[2];
    }

    v17 = a2;
    v18 = v6;
    v19 = v7;

    while (1)
    {
      v9 = v21;
      if (v21 != v22)
      {
        goto LABEL_12;
      }

      v8 = sub_181AC81FC(v8);
      if (v8)
      {
        break;
      }

      v11 = 0uLL;
      v10 = 1;
LABEL_14:
      if (v6 == v19)
      {
        v14 = v11;
        if ((sub_181AC81FC(v8) & 1) == 0)
        {
          if (v10)
          {
            v12 = 1;
            goto LABEL_24;
          }

LABEL_25:

          v12 = 0;
LABEL_26:

          return v12;
        }

        v6 = v18;
        v11 = v14;
      }

      v18 = v6 + 1;
      if (v10)
      {
        v12 = 0;
LABEL_24:

        goto LABEL_26;
      }

      *uu2 = *&v17[2 * v6 + 5];
      *uu1 = v11;
      v8 = uuid_compare(uu1, uu2);
      ++v6;
      if (v8)
      {
        goto LABEL_25;
      }
    }

    v9 = v21;
LABEL_12:
    v10 = 0;
    v21 = v9 + 1;
    v11 = *&v20[2 * v9 + 5];
    goto LABEL_14;
  }

  return v3;
}

uint64_t sub_182269920(void *a1, void *a2)
{
  v2 = a1[3];
  if (v2 != a2[3])
  {
    return 0;
  }

  result = 1;
  if (a1 != a2 && v2)
  {
    v5 = a1[4] + v2;
    if (a1[2] < v5)
    {
      v5 = a1[2];
    }

    v16 = a1[4];
    v17 = v5;
    v6 = a2[4];
    v7 = v6 + v2;
    if (a2[2] < v7)
    {
      v7 = a2[2];
    }

    v14 = a2[4];
    v15 = v7;
    v8 = a2;
    while (1)
    {
      v9 = v16;
      if (v16 != v17)
      {
        goto LABEL_12;
      }

      result = sub_181AC81FC(result);
      if (result)
      {
        break;
      }

      v10 = 5;
LABEL_14:
      if (v6 == v15)
      {
        result = sub_181AC81FC(result);
        v8 = a2;
        if ((result & 1) == 0)
        {
          if (v10 == 5)
          {
            v12 = 1;
LABEL_24:

            goto LABEL_26;
          }

LABEL_25:

          v12 = 0;
LABEL_26:

          return v12;
        }

        v6 = v14;
      }

      v14 = v6 + 1;
      v11 = *(v8 + v6 + 40);
      v12 = v11 == 5;
      if (v10 == 5)
      {
        goto LABEL_24;
      }

      if (v11 != 5)
      {
        ++v6;
        if (qword_182B03380[v10] == qword_182B03380[v11])
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v9 = v16;
LABEL_12:
    v16 = v9 + 1;
    v10 = *(a1 + v9 + 40);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_182269AC0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 96);
    if (v5)
    {
      if (*(v5 + 96))
      {
        v10 = *(v5 + 96);

        result = sub_18226E36C(&v10, v2, v3, 0);
        v7 = v10;
        v8 = *(v10 + 24);
        if (v8 < result)
        {
          __break(1u);
        }

        else
        {
          v9 = result;
          if ((result & 0x8000000000000000) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1820E5F10();
              v7 = v10;
            }

            sub_181B64818(v9, v8, (v7 + 16), v7 + 40, v11);
            sub_18226E660(v9, v8, (v7 + 16), (v7 + 40));
            if (!*(v7 + 24))
            {

              v7 = 0;
            }

            *(v5 + 96) = v7;

            goto LABEL_11;
          }
        }

        __break(1u);
        return result;
      }
    }
  }

LABEL_11:
  result = *(v1 + 96);
  if (!result)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0;
    *(result + 152) = 1;
    *(result + 160) = 0;
    *(v1 + 96) = result;
  }

  *(result + 136) = v2;
  *(result + 144) = v3;
  *(result + 152) = v4;
  return result;
}

uint64_t sub_182269C0C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_182AD44F8();
  sub_182AD44F8();
  if ((v1 & 1) == 0)
  {
    sub_182AD4518();
    sub_182AD44F8();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_182AD4518();
    goto LABEL_6;
  }

  sub_182AD4518();
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_182AD4518();
  MEMORY[0x1865DB0B0](v2);
LABEL_6:
  sub_182AD4538();
  return sub_182AD4538();
}

uint64_t sub_182269D1C()
{
  sub_182AD44E8();
  sub_182269C0C();
  return sub_182AD4558();
}

uint64_t sub_182269D60()
{
  sub_182AD44E8();
  sub_182269C0C();
  return sub_182AD4558();
}

uint64_t sub_182269DA0()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  sub_182AD4538();
  sub_182AD4518();
  if (v1 != 5)
  {
    MEMORY[0x1865DB070](qword_182B03358[v1]);
  }

  sub_182AD4518();
  if (v2 != 5)
  {
    MEMORY[0x1865DB070](qword_182B03380[v2]);
  }

  sub_182AD4518();
  MEMORY[0x1865DB070](v3);
  if (v4 != 5)
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](qword_182B03358[v4]);
    if (v5 != 5)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_182AD4518();
    goto LABEL_10;
  }

  sub_182AD4518();
  if (v5 == 5)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_182AD4518();
  MEMORY[0x1865DB070](qword_182B03380[v5]);
LABEL_10:
  sub_182AD4518();
  return sub_182AD4518();
}

uint64_t sub_182269ED0()
{
  sub_182AD44E8();
  sub_182269DA0();
  return sub_182AD4558();
}

uint64_t sub_182269F14()
{
  sub_182AD44E8();
  sub_182269DA0();
  return sub_182AD4558();
}

uint64_t sub_182269F54()
{
  sub_182AD44E8();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t sub_182269FFC()
{
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  return sub_182AD4528();
}

uint64_t sub_18226A078()
{
  sub_182AD44E8();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t sub_18226A1A4(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v107 = v1[2];
  v108 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[7];
  v109 = v1[6];
  v110 = v1[8];
  v114 = v1[9];
  v8 = v1[11];
  v111 = v1[10];
  v112 = v1[12];
  v106 = *(v1 + 136);
  if (!*v1)
  {
    sub_182AD4518();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_257:
    sub_182AD4518();
    v14 = v107;
    if (v107)
    {
      goto LABEL_11;
    }

    goto LABEL_258;
  }

  sub_182AD4518();
  v104 = *(v4 + 184);
  v105 = *(v4 + 185);
  MEMORY[0x1865DB070](*(v4 + 16));

  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182B03358[v104]);
  MEMORY[0x1865DB070](qword_182B03380[v105]);

  if (!v3)
  {
    goto LABEL_257;
  }

LABEL_3:
  sub_182AD4518();
  v9 = MEMORY[0x1865DB070](v3[3]);
  v10 = v3[4];
  v11 = v3[3] + v10;
  if (v3[2] < v11)
  {
    v11 = v3[2];
  }

  v122 = v3[4];
  v134 = v11;
  v12 = v3;
  while (1)
  {
    if (v10 != v11)
    {
      goto LABEL_6;
    }

    if ((sub_181AC81FC(v9) & 1) == 0)
    {
      break;
    }

    v12 = v3;
    v10 = v122;
LABEL_6:
    v13 = v10 + 1;
    v122 = v10 + 1;
    v9 = MEMORY[0x1865DB070](qword_182B03358[*(v12 + v10 + 40)]);
    v11 = v134;
    v10 = v13;
  }

  v14 = v107;
  if (v107)
  {
LABEL_11:
    sub_182AD4518();
    v15 = MEMORY[0x1865DB070](v14[3]);
    v16 = v14[4];
    v17 = v14[3] + v16;
    if (v14[2] < v17)
    {
      v17 = v14[2];
    }

    v115 = v14;
    v123 = v14[4];
    v135 = v17;
    while (1)
    {
      if (v16 == v17)
      {
        if ((sub_181AC81FC(v15) & 1) == 0)
        {

          v19 = v108;
          if (v108)
          {
            goto LABEL_19;
          }

LABEL_259:
          sub_182AD4518();
          if (v6)
          {
            goto LABEL_27;
          }

          goto LABEL_260;
        }

        v14 = v115;
        v16 = v123;
      }

      v18 = v16 + 1;
      v123 = v16 + 1;
      v15 = MEMORY[0x1865DB070](qword_182B03380[*(v14 + v16 + 40)]);
      v17 = v135;
      v16 = v18;
    }
  }

LABEL_258:
  sub_182AD4518();
  v19 = v108;
  if (!v108)
  {
    goto LABEL_259;
  }

LABEL_19:
  sub_182AD4518();
  v20 = MEMORY[0x1865DB070](v19[3]);
  v21 = v19[4];
  v22 = v19[3] + v21;
  if (v19[2] < v22)
  {
    v22 = v19[2];
  }

  v116 = v19;
  v124 = v19[4];
  v136 = v22;
  while (2)
  {
    if (v21 != v22)
    {
LABEL_22:
      v23 = v21 + 1;
      v124 = v21 + 1;
      v20 = MEMORY[0x1865DB070](qword_182B03380[*(v19 + v21 + 40)]);
      v22 = v136;
      v21 = v23;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v20))
  {
    v19 = v116;
    v21 = v124;
    goto LABEL_22;
  }

  if (v6)
  {
LABEL_27:
    sub_182AD4518();
    MEMORY[0x1865DB070](v6[3]);
    v24 = v6[4];
    if (v6[2] >= v6[3] + v24)
    {
      v25 = v6[3] + v24;
    }

    else
    {
      v25 = v6[2];
    }

    v117 = v6;
    v125 = v6[4];
    v137 = v25;

    for (i = v7; ; v7 = i)
    {
      if (v24 == v25)
      {
        if ((sub_181AC81FC(v26) & 1) == 0)
        {

          if (v5)
          {
            goto LABEL_36;
          }

LABEL_261:
          sub_182AD4518();
          v48 = v109;
          if (v109)
          {
            goto LABEL_82;
          }

          goto LABEL_262;
        }

        v6 = v117;
        v24 = v125;
      }

      v27 = v24 + 1;
      v125 = v24 + 1;
      v28 = v6[v24 + 5];
      v29 = v6;
      v30 = v8;
      v31 = *(v28 + 184);
      v32 = a1;
      v33 = v5;
      v34 = *(v28 + 185);
      MEMORY[0x1865DB070](*(v28 + 16));

      sub_182AD30E8();
      v35 = qword_182B03358[v31];
      v8 = v30;
      v6 = v29;
      MEMORY[0x1865DB070](v35);
      v36 = qword_182B03380[v34];
      v5 = v33;
      a1 = v32;
      MEMORY[0x1865DB070](v36);

      v25 = v137;
      v24 = v27;
    }
  }

LABEL_260:
  sub_182AD4518();
  if (!v5)
  {
    goto LABEL_261;
  }

LABEL_36:
  sub_182AD4518();
  MEMORY[0x1865DB070](v5[3]);
  v37 = v5[4];
  if (v5[2] >= v5[3] + v37)
  {
    v38 = v5[3] + v37;
  }

  else
  {
    v38 = v5[2];
  }

  v118 = v5;
  v126 = v5[4];
  v138 = v38;

  while (2)
  {
    if (v37 != v38)
    {
LABEL_46:
      v41 = &v5[4 * v37++];
      v126 = v37;
      v43 = v41[5];
      v42 = v41[6];
      v44 = v41[7];
      v45 = v41[8];
      if (v42 > 2)
      {
        switch(v42)
        {
          case 3:
            MEMORY[0x1865DB070](3);
            v46 = v43;
            v47 = 3;
            break;
          case 4:
            MEMORY[0x1865DB070](4);
            v46 = v43;
            v47 = 4;
            break;
          case 5:
            MEMORY[0x1865DB070](5);
            v46 = v43;
            v47 = 5;
            break;
          default:
            goto LABEL_57;
        }
      }

      else if (v42)
      {
        if (v42 != 1)
        {
          if (v42 == 2)
          {
            MEMORY[0x1865DB070](2);
            v46 = v43;
            v47 = 2;
            goto LABEL_67;
          }

LABEL_57:
          MEMORY[0x1865DB070](6);
          sub_181AA5C1C(v43, v42);
          sub_181ADC1E0(v44, v45);
          sub_181ADC1E0(v44, v45);
          sub_181AA5C1C(v43, v42);
          sub_182AD30E8();
          sub_181E4926C(v43, v42);
          if (v45 <= 4)
          {
LABEL_68:
            if (v45 > 1)
            {
              if (v45 == 2)
              {
                v40 = 2;
              }

              else if (v45 == 3)
              {
                v40 = 3;
              }

              else
              {
                v40 = 4;
              }

              goto LABEL_41;
            }

            if (v45)
            {
              if (v45 == 1)
              {
                v40 = 1;
                goto LABEL_41;
              }

LABEL_80:
              MEMORY[0x1865DB070](10);
              sub_182AD30E8();
              sub_181E4926C(v43, v42);
              sub_181E49280(v44, v45);
              goto LABEL_42;
            }

            v40 = 0;
LABEL_41:
            MEMORY[0x1865DB070](v40);
            sub_181E4926C(v43, v42);
LABEL_42:
            v39 = sub_181E49280(v44, v45);
            v38 = v138;
            continue;
          }

LABEL_58:
          if (v45 <= 6)
          {
            if (v45 == 5)
            {
              v40 = 5;
            }

            else
            {
              v40 = 6;
            }

            goto LABEL_41;
          }

          if (v45 == 7)
          {
            v40 = 7;
            goto LABEL_41;
          }

          if (v45 == 8)
          {
            v40 = 8;
            goto LABEL_41;
          }

          if (v45 != 9)
          {
            goto LABEL_80;
          }

          v40 = 9;
          goto LABEL_41;
        }

        MEMORY[0x1865DB070](1);
        v46 = v43;
        v47 = 1;
      }

      else
      {
        MEMORY[0x1865DB070](0);
        v46 = v43;
        v47 = 0;
      }

LABEL_67:
      sub_181AA5C1C(v46, v47);
      sub_181ADC1E0(v44, v45);
      sub_181ADC1E0(v44, v45);
      if (v45 <= 4)
      {
        goto LABEL_68;
      }

      goto LABEL_58;
    }

    break;
  }

  if (sub_181AC81FC(v39))
  {
    v5 = v118;
    v37 = v126;
    goto LABEL_46;
  }

  v48 = v109;
  if (v109)
  {
LABEL_82:
    sub_182AD4518();
    v49 = MEMORY[0x1865DB070](v48[3]);
    v50 = v48[4];
    if (v48[2] >= v48[3] + v50)
    {
      v51 = v48[3] + v50;
    }

    else
    {
      v51 = v48[2];
    }

    v127 = v48[4];
    v139 = v51;
    while (1)
    {
      if (v50 == v51)
      {
        if ((sub_181AC81FC(v49) & 1) == 0)
        {

          if (v7)
          {
            goto LABEL_91;
          }

LABEL_263:
          sub_182AD4518();
          v64 = v110;
          if (v110)
          {
            goto LABEL_137;
          }

          goto LABEL_264;
        }

        v50 = v127;
        v51 = v139;
      }

      v52 = v50 + 1;
      v127 = v50 + 1;
      v49 = sub_182AD44F8();
      v50 = v52;
    }
  }

LABEL_262:
  sub_182AD4518();
  if (!v7)
  {
    goto LABEL_263;
  }

LABEL_91:
  sub_182AD4518();
  MEMORY[0x1865DB070](v7[3]);
  v53 = v7[4];
  if (v7[2] >= v7[3] + v53)
  {
    v54 = v7[3] + v53;
  }

  else
  {
    v54 = v7[2];
  }

  v119 = v7;
  v128 = v7[4];
  v140 = v54;

  while (2)
  {
    if (v53 != v54)
    {
LABEL_101:
      v57 = &v7[4 * v53++];
      v128 = v53;
      v59 = v57[5];
      v58 = v57[6];
      v60 = v57[7];
      v61 = v57[8];
      if (v58 > 2)
      {
        switch(v58)
        {
          case 3:
            MEMORY[0x1865DB070](3);
            v62 = v59;
            v63 = 3;
            break;
          case 4:
            MEMORY[0x1865DB070](4);
            v62 = v59;
            v63 = 4;
            break;
          case 5:
            MEMORY[0x1865DB070](5);
            v62 = v59;
            v63 = 5;
            break;
          default:
            goto LABEL_112;
        }
      }

      else if (v58)
      {
        if (v58 != 1)
        {
          if (v58 == 2)
          {
            MEMORY[0x1865DB070](2);
            v62 = v59;
            v63 = 2;
            goto LABEL_122;
          }

LABEL_112:
          MEMORY[0x1865DB070](6);
          sub_181AA5C1C(v59, v58);
          sub_181ADC1E0(v60, v61);
          sub_181ADC1E0(v60, v61);
          sub_181AA5C1C(v59, v58);
          sub_182AD30E8();
          sub_181E4926C(v59, v58);
          if (v61 <= 4)
          {
LABEL_123:
            if (v61 > 1)
            {
              if (v61 == 2)
              {
                v56 = 2;
              }

              else if (v61 == 3)
              {
                v56 = 3;
              }

              else
              {
                v56 = 4;
              }

              goto LABEL_96;
            }

            if (v61)
            {
              if (v61 == 1)
              {
                v56 = 1;
                goto LABEL_96;
              }

LABEL_135:
              MEMORY[0x1865DB070](10);
              sub_182AD30E8();
              sub_181E4926C(v59, v58);
              sub_181E49280(v60, v61);
              goto LABEL_97;
            }

            v56 = 0;
LABEL_96:
            MEMORY[0x1865DB070](v56);
            sub_181E4926C(v59, v58);
LABEL_97:
            v55 = sub_181E49280(v60, v61);
            v54 = v140;
            continue;
          }

LABEL_113:
          if (v61 <= 6)
          {
            if (v61 == 5)
            {
              v56 = 5;
            }

            else
            {
              v56 = 6;
            }

            goto LABEL_96;
          }

          if (v61 == 7)
          {
            v56 = 7;
            goto LABEL_96;
          }

          if (v61 == 8)
          {
            v56 = 8;
            goto LABEL_96;
          }

          if (v61 != 9)
          {
            goto LABEL_135;
          }

          v56 = 9;
          goto LABEL_96;
        }

        MEMORY[0x1865DB070](1);
        v62 = v59;
        v63 = 1;
      }

      else
      {
        MEMORY[0x1865DB070](0);
        v62 = v59;
        v63 = 0;
      }

LABEL_122:
      sub_181AA5C1C(v62, v63);
      sub_181ADC1E0(v60, v61);
      sub_181ADC1E0(v60, v61);
      if (v61 <= 4)
      {
        goto LABEL_123;
      }

      goto LABEL_113;
    }

    break;
  }

  if (sub_181AC81FC(v55))
  {
    v7 = v119;
    v53 = v128;
    goto LABEL_101;
  }

  v64 = v110;
  if (v110)
  {
LABEL_137:
    sub_182AD4518();
    v65 = MEMORY[0x1865DB070](v64[3]);
    v66 = v64[4];
    if (v64[2] >= v64[3] + v66)
    {
      v67 = v64[3] + v66;
    }

    else
    {
      v67 = v64[2];
    }

    v129 = v64[4];
    v141 = v67;
    while (1)
    {
      if (v66 == v67)
      {
        if ((sub_181AC81FC(v65) & 1) == 0)
        {

          v69 = v114;
          if (v114)
          {
            goto LABEL_146;
          }

LABEL_265:
          sub_182AD4518();
          v82 = v111;
          if (v111)
          {
            goto LABEL_192;
          }

          goto LABEL_266;
        }

        v66 = v129;
        v67 = v141;
      }

      v68 = v66 + 1;
      v129 = v66 + 1;
      v65 = sub_182AD44F8();
      v66 = v68;
    }
  }

LABEL_264:
  sub_182AD4518();
  v69 = v114;
  if (!v114)
  {
    goto LABEL_265;
  }

LABEL_146:
  sub_182AD4518();
  MEMORY[0x1865DB070](v69[3]);
  v70 = v69[4];
  if (v69[2] >= v69[3] + v70)
  {
    v71 = v69[3] + v70;
  }

  else
  {
    v71 = v69[2];
  }

  v120 = v69;
  v130 = v69[4];
  v142 = v71;

  while (2)
  {
    v74 = v114;
    if (v70 != v71)
    {
LABEL_156:
      v75 = &v74[4 * v70++];
      v130 = v70;
      v77 = v75[5];
      v76 = v75[6];
      v78 = v75[7];
      v79 = v75[8];
      v114 = v74;
      if (v76 > 2)
      {
        switch(v76)
        {
          case 3:
            MEMORY[0x1865DB070](3);
            v80 = v77;
            v81 = 3;
            break;
          case 4:
            MEMORY[0x1865DB070](4);
            v80 = v77;
            v81 = 4;
            break;
          case 5:
            MEMORY[0x1865DB070](5);
            v80 = v77;
            v81 = 5;
            break;
          default:
            goto LABEL_167;
        }
      }

      else if (v76)
      {
        if (v76 != 1)
        {
          if (v76 == 2)
          {
            MEMORY[0x1865DB070](2);
            v80 = v77;
            v81 = 2;
            goto LABEL_177;
          }

LABEL_167:
          MEMORY[0x1865DB070](6);
          sub_181AA5C1C(v77, v76);
          sub_181ADC1E0(v78, v79);
          sub_181ADC1E0(v78, v79);
          sub_181AA5C1C(v77, v76);
          sub_182AD30E8();
          sub_181E4926C(v77, v76);
          if (v79 <= 4)
          {
LABEL_178:
            if (v79 > 1)
            {
              if (v79 == 2)
              {
                v73 = 2;
              }

              else if (v79 == 3)
              {
                v73 = 3;
              }

              else
              {
                v73 = 4;
              }

              goto LABEL_151;
            }

            if (v79)
            {
              if (v79 == 1)
              {
                v73 = 1;
                goto LABEL_151;
              }

LABEL_190:
              MEMORY[0x1865DB070](10);
              sub_182AD30E8();
              sub_181E4926C(v77, v76);
              sub_181E49280(v78, v79);
              goto LABEL_152;
            }

            v73 = 0;
LABEL_151:
            MEMORY[0x1865DB070](v73);
            sub_181E4926C(v77, v76);
LABEL_152:
            v72 = sub_181E49280(v78, v79);
            v71 = v142;
            continue;
          }

LABEL_168:
          if (v79 <= 6)
          {
            if (v79 == 5)
            {
              v73 = 5;
            }

            else
            {
              v73 = 6;
            }

            goto LABEL_151;
          }

          if (v79 == 7)
          {
            v73 = 7;
            goto LABEL_151;
          }

          if (v79 == 8)
          {
            v73 = 8;
            goto LABEL_151;
          }

          if (v79 != 9)
          {
            goto LABEL_190;
          }

          v73 = 9;
          goto LABEL_151;
        }

        MEMORY[0x1865DB070](1);
        v80 = v77;
        v81 = 1;
      }

      else
      {
        MEMORY[0x1865DB070](0);
        v80 = v77;
        v81 = 0;
      }

LABEL_177:
      sub_181AA5C1C(v80, v81);
      sub_181ADC1E0(v78, v79);
      sub_181ADC1E0(v78, v79);
      if (v79 <= 4)
      {
        goto LABEL_178;
      }

      goto LABEL_168;
    }

    break;
  }

  if (sub_181AC81FC(v72))
  {
    v74 = v120;
    v70 = v130;
    goto LABEL_156;
  }

  v82 = v111;
  if (v111)
  {
LABEL_192:
    sub_182AD4518();
    v83 = MEMORY[0x1865DB070](v82[3]);
    v84 = v82[4];
    if (v82[2] >= v82[3] + v84)
    {
      v85 = v82[3] + v84;
    }

    else
    {
      v85 = v82[2];
    }

    v131 = v82[4];
    v143 = v85;
    while (1)
    {
      if (v84 == v85)
      {
        if ((sub_181AC81FC(v83) & 1) == 0)
        {

          if (v8)
          {
            goto LABEL_201;
          }

LABEL_267:
          sub_182AD4518();
          v98 = v112;
          if (v112)
          {
            goto LABEL_247;
          }

          goto LABEL_268;
        }

        v84 = v131;
        v85 = v143;
      }

      v86 = v84 + 1;
      v131 = v84 + 1;
      v83 = sub_182AD44F8();
      v84 = v86;
    }
  }

LABEL_266:
  sub_182AD4518();
  if (!v8)
  {
    goto LABEL_267;
  }

LABEL_201:
  sub_182AD4518();
  MEMORY[0x1865DB070](v8[3]);
  v87 = v8[4];
  if (v8[2] >= v8[3] + v87)
  {
    v88 = v8[3] + v87;
  }

  else
  {
    v88 = v8[2];
  }

  v121 = v8;
  v132 = v8[4];
  v144 = v88;

  while (2)
  {
    if (v87 != v88)
    {
LABEL_211:
      v91 = &v8[4 * v87++];
      v132 = v87;
      v93 = v91[5];
      v92 = v91[6];
      v94 = v91[7];
      v95 = v91[8];
      if (v92 > 2)
      {
        switch(v92)
        {
          case 3:
            MEMORY[0x1865DB070](3);
            v96 = v93;
            v97 = 3;
            break;
          case 4:
            MEMORY[0x1865DB070](4);
            v96 = v93;
            v97 = 4;
            break;
          case 5:
            MEMORY[0x1865DB070](5);
            v96 = v93;
            v97 = 5;
            break;
          default:
            goto LABEL_222;
        }
      }

      else if (v92)
      {
        if (v92 != 1)
        {
          if (v92 == 2)
          {
            MEMORY[0x1865DB070](2);
            v96 = v93;
            v97 = 2;
            goto LABEL_232;
          }

LABEL_222:
          MEMORY[0x1865DB070](6);
          sub_181AA5C1C(v93, v92);
          sub_181ADC1E0(v94, v95);
          sub_181ADC1E0(v94, v95);
          sub_181AA5C1C(v93, v92);
          sub_182AD30E8();
          sub_181E4926C(v93, v92);
          if (v95 <= 4)
          {
LABEL_233:
            if (v95 > 1)
            {
              if (v95 == 2)
              {
                v90 = 2;
              }

              else if (v95 == 3)
              {
                v90 = 3;
              }

              else
              {
                v90 = 4;
              }

              goto LABEL_206;
            }

            if (v95)
            {
              if (v95 == 1)
              {
                v90 = 1;
                goto LABEL_206;
              }

LABEL_245:
              MEMORY[0x1865DB070](10);
              sub_182AD30E8();
              sub_181E4926C(v93, v92);
              sub_181E49280(v94, v95);
              goto LABEL_207;
            }

            v90 = 0;
LABEL_206:
            MEMORY[0x1865DB070](v90);
            sub_181E4926C(v93, v92);
LABEL_207:
            v89 = sub_181E49280(v94, v95);
            v88 = v144;
            continue;
          }

LABEL_223:
          if (v95 <= 6)
          {
            if (v95 == 5)
            {
              v90 = 5;
            }

            else
            {
              v90 = 6;
            }

            goto LABEL_206;
          }

          if (v95 == 7)
          {
            v90 = 7;
            goto LABEL_206;
          }

          if (v95 == 8)
          {
            v90 = 8;
            goto LABEL_206;
          }

          if (v95 != 9)
          {
            goto LABEL_245;
          }

          v90 = 9;
          goto LABEL_206;
        }

        MEMORY[0x1865DB070](1);
        v96 = v93;
        v97 = 1;
      }

      else
      {
        MEMORY[0x1865DB070](0);
        v96 = v93;
        v97 = 0;
      }

LABEL_232:
      sub_181AA5C1C(v96, v97);
      sub_181ADC1E0(v94, v95);
      sub_181ADC1E0(v94, v95);
      if (v95 <= 4)
      {
        goto LABEL_233;
      }

      goto LABEL_223;
    }

    break;
  }

  if (sub_181AC81FC(v89))
  {
    v8 = v121;
    v87 = v132;
    goto LABEL_211;
  }

  v98 = v112;
  if (v112)
  {
LABEL_247:
    sub_182AD4518();
    v99 = MEMORY[0x1865DB070](v98[3]);
    v100 = v98[4];
    if (v98[2] >= v98[3] + v100)
    {
      v101 = v98[3] + v100;
    }

    else
    {
      v101 = v98[2];
    }

    v133 = v98[4];
    v145 = v101;
    while (1)
    {
      if (v100 == v101)
      {
        if ((sub_181AC81FC(v99) & 1) == 0)
        {

          goto LABEL_269;
        }

        v100 = v133;
        v101 = v145;
      }

      v102 = v100 + 1;
      v133 = v100 + 1;
      v99 = sub_182AD44F8();
      v100 = v102;
    }
  }

LABEL_268:
  sub_182AD4518();
LABEL_269:
  sub_182AD4518();
  sub_182AD4518();
  if ((v106 & 1) == 0)
  {
    sub_182AD44F8();
  }

  return sub_182AD4518();
}

double sub_18226B448@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  return result;
}