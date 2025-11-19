uint64_t sub_10002DD3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002DDBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SelectableEventLoop.ExternalState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SocketChannelLifecycleManager.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002DF4CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002DF88()
{
  result = qword_1002AD908[0];
  if (!qword_1002AD908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002AD908);
  }

  return result;
}

uint64_t sub_10002E030()
{

  return sub_1001F7AC8();
}

uint64_t sub_10002E070()
{

  return sub_1001F7AC8();
}

uint64_t sub_10002E0FC()
{

  return sub_1001F7AC8();
}

uint64_t sub_10002E11C()
{

  return swift_dynamicCast();
}

uint64_t sub_10002E150()
{

  return swift_dynamicCast();
}

uint64_t sub_10002E17C()
{

  return sub_1000A13B0();
}

uint64_t sub_10002E198()
{

  return swift_getAssociatedTypeWitness();
}

void sub_10002E1B4()
{
  v1._countAndFlagsBits = 0x70757320746F6E20;
  v1._object = 0xEE00646574726F70;

  sub_1001F6CA8(v1);
}

uint64_t sub_10002E1E4()
{

  return swift_getObjectType();
}

void sub_10002E204()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;
  v3._countAndFlagsBits = 0x206E6F6974706FLL;
  v3._object = 0xE700000000000000;

  sub_1001F6CA8(v3);
}

uint64_t sub_10002E288(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return debugOnly(_:)(a1, a2, a3, 44, v4, v3);
}

uint64_t sub_10002E2A4()
{

  return sub_1000287AC();
}

void sub_10002E32C()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  sub_1001F77B8(23);
}

uint64_t sub_10002E34C()
{

  return swift_getObjectType();
}

uint64_t sub_10002E39C()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_10002E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return debugOnly(_:)(a1, a2, a3, a4, v5, v4);
}

uint64_t NIOMulticastNotSupportedError.device.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PriorityQueue.remove(_:)()
{
  sub_10002E9DC();

  return Heap.remove(value:)();
}

void PriorityQueue.push(_:)()
{
  sub_10002E9DC();

  Heap.append(_:)();
}

uint64_t PriorityQueue.peek()()
{
  sub_1001F7988();
  sub_10002E9AC();
  swift_getWitnessTable();
  return sub_1001F7198();
}

uint64_t PriorityQueue.isEmpty.getter()
{
  sub_1001F7988();
  sub_10002E9AC();
  swift_getWitnessTable();
  return sub_1001F71A8() & 1;
}

Swift::Void __swiftcall PriorityQueue.clear()()
{
  v1 = Heap.init()();

  *v0 = v1;
}

uint64_t static PriorityQueue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Heap.count.getter(a1, a3, a4);
  if (v7 == Heap.count.getter(a2, a3, a4))
  {
    type metadata accessor for PriorityQueue();
    sub_10002E9C4();
    swift_getWitnessTable();
    v8 = sub_1001F6E78();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10002E6BC(uint64_t a1, uint64_t (*a2)(void, void, void), uint64_t (*a3)(uint64_t))
{
  v3 = a2(0, *(a1 + 16), *(a1 + 24));

  return a3(v3);
}

uint64_t sub_10002E720@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  Scheduled.futureResult.getter(v3);

  *a1 = v3;
  return result;
}

uint64_t PriorityQueue.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001F77B8(28);
  v7._object = 0x8000000100223F70;
  v7._countAndFlagsBits = 0xD000000000000015;
  sub_1001F6CA8(v7);
  Heap.count.getter(a1, a2, a3);
  v8._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v8);

  v9._countAndFlagsBits = 2112041;
  v9._object = 0xE300000000000000;
  sub_1001F6CA8(v9);
  type metadata accessor for PriorityQueue();

  sub_10002E9C4();
  swift_getWitnessTable();
  sub_1001F6FD8();
  sub_1001F6FC8();
  swift_getWitnessTable();
  sub_1001F7E78();

  return 0;
}

uint64_t sub_10002E914()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10002E950()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10002E9DC()
{

  return type metadata accessor for Heap();
}

unint64_t sub_10002E9FC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v21 = a2 & 0xFFFFFFFFFFFFFFLL;
  v19 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = 15;
  while (1)
  {
    v9 = v8 >> 14;
    if (v8 >> 14 == v5)
    {
      return v9 != v5;
    }

    result = v8;
    if ((v8 & 0xC) == v7)
    {
      v13 = sub_100037908();
      result = sub_1001EE2BC(v13, v14, v15);
    }

    v11 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1001F6D38();
      v12 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v20[0] = a1;
      v20[1] = v21;
      v12 = *(v20 + v11);
    }

    else
    {
      result = v19;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_1001F7858();
      }

      v12 = *(result + v11);
    }

    if ((v8 & 0xC) == v7)
    {
      v16 = sub_100037908();
      result = sub_1001EE2BC(v16, v17, v18);
      v8 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      if (v4 <= v8 >> 16)
      {
        goto LABEL_27;
      }

      sub_100037908();
      v8 = sub_1001F6D08();
      if (v12 < 0)
      {
        return v9 != v5;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v12 < 0)
      {
        return v9 != v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t HTTPServerPipelineHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  HTTPServerPipelineHandler.init()();
  return v0;
}

uint64_t HTTPServerPipelineHandler.init()()
{
  *(v0 + 16) = 2;
  *(v0 + 24) = sub_10002ECB0(0);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 512;
  *(v0 + 50) = 2;
  return v0;
}

unint64_t sub_10002EC00(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    v1 = sub_100106280(result);
    memset(v2, 0, sizeof(v2));
    v3 = 1;
    return sub_1001CAAEC(v2, v1);
  }

  __break(1u);
  return result;
}

unint64_t sub_10002EC5C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    sub_100106280(result);
    sub_1000378B8();
    v3 = -1;
    return sub_1001CAB90(v2, v1);
  }

  __break(1u);
  return result;
}

unint64_t sub_10002ECB0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    sub_100106280(result);
    sub_1000378B8();
    v3 = -256;
    return sub_1001CAD00(v2, v1);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10002ED3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t HTTPServerPipelineHandler.channelRead(context:data:)()
{
  if ((*(v1 + 48) & 0xFE) != 2)
  {
    sub_100037B94();
    sub_100037C40();
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    v4 = __OFSUB__(v3, v2);
    v5 = v3 - v2;
    if (v5 < 0 != v4)
    {
      v5 += *(*(v1 + 24) + 16);
    }

    if (v5 || !*(v1 + 16))
    {
      sub_10002EE44(v0, v7);
      v7[57] = 0;
      swift_beginAccess();
      sub_10002F3F4(v7);
      swift_endAccess();
      return sub_10002F4AC(v7);
    }

    else
    {
      sub_100037B7C();
      return sub_10002F4DC();
    }
  }

  return result;
}

void sub_10002EEA0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *v2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100111F3C();
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = v6 + 16 * v5;
  v8 = *(v7 + 32);
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  sub_100037408(v8);
  *v2 = v6;
  sub_100037608(v5 + 1);
  if (v9)
  {

    sub_100113CFC();
  }
}

void sub_10002EF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000379FC();
  v7 = v3[2];
  v8 = *v3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F54();
    v8 = v9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= *(v8 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v8 + 24 * v7;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 54) = BYTE6(a3);
  *(v10 + 52) = WORD2(a3);
  *(v10 + 48) = a3;

  *v3 = v8;
  sub_100037608(v7 + 1);
  if (v11)
  {

    sub_100113DE8();
  }
}

void sub_10002F02C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000379FC();
  v7 = v3[2];
  v8 = *v3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F6C();
    v8 = v9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= *(v8 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v8 + 24 * v7;
  v11 = *(v10 + 32);
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = a3;
  sub_1000370B8(v11);
  *v3 = v8;
  sub_100037608(v7 + 1);
  if (v12)
  {

    sub_100113EE0();
  }
}

void sub_10002F0F8(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v3 = a1[3];
  v17 = a1[2];
  v18 = v3;
  v4 = v1[2];
  v5 = *v1;
  sub_1000370F8(a1, v14);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F9C();
    v5 = v6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= *(v5 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = (v5 + (v4 << 6));
  v8 = v7[2];
  v9 = v7[3];
  v10 = v7[5];
  v14[2] = v7[4];
  v14[3] = v10;
  v14[0] = v8;
  v14[1] = v9;
  v11 = v16;
  v7[2] = v15;
  v7[3] = v11;
  v12 = v18;
  v7[4] = v17;
  v7[5] = v12;
  sub_1000374B8(v14, &qword_1002ADC00);
  *v1 = v5;
  sub_100037608(v4 + 1);
  if (v13)
  {
    sub_100113FD8();
  }
}

void sub_10002F1C8(uint64_t a1)
{
  v2 = v1[2];
  sub_10002EE44(a1, v6);
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111F84();
    v3 = v4;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *(v3 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_10003743C(v6, v3 + (v2 << 6) + 32, &qword_1002ADD30);
  *v1 = v3;
  sub_100037608(v2 + 1);
  if (v5)
  {
    sub_1001140B0();
  }
}

void sub_10002F26C()
{
  sub_100037AEC();
  v4 = v3;
  v6 = v5;
  sub_1000379FC();
  v7 = v0[2];
  v8 = *v0;
  sub_100037154();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FB4();
    v8 = v9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= *(v8 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = (v8 + 32 * v7);
  v11 = v10[4];
  v12 = v10[5];
  v13 = v10[6];
  v14 = v10[7];
  v10[4] = v2;
  v10[5] = v1;
  v10[6] = v6 & 0xFFFFFFFFFFFFFFLL;
  v10[7] = v4;
  sub_10003715C(v11, v12, v13, v14);
  *v0 = v8;
  sub_100037608(v7 + 1);
  if (v15)
  {
    sub_100037A50();

    sub_10011416C();
  }

  else
  {
    sub_100037A50();
  }
}

void sub_10002F33C(uint64_t a1)
{
  v2 = v1[2];
  sub_10003736C(a1, v6, &qword_1002ADD78);
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FCC();
    v3 = v4;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= *(v3 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_10003743C(v6, v3 + 72 * v2 + 32, &qword_1002ADD70);
  *v1 = v3;
  sub_100037608(v2 + 1);
  if (v5)
  {
    sub_100114244();
  }
}

void sub_10002F3F4(uint64_t a1)
{
  v2 = v1[2];
  sub_100037510(a1, v6);
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FE4();
    v3 = v4;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= *(v3 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_10003743C(v6, v3 + (v2 << 6) + 32, &qword_1002ADA18);
  *v1 = v3;
  v5 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v2 + 1);
  v1[2] = v5;
  if (v1[1] == v5)
  {
    sub_100114318();
  }
}

uint64_t sub_10002F4DC()
{
  sub_1000183C4(&qword_1002ADD40);
  sub_100031254();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = HIBYTE(v5);
  if (HIBYTE(v5))
  {
    if (v7 != 1)
    {
      v8 = 2;
      switch(*(v0 + 16))
      {
        case 1:
          v8 = 0;
          goto LABEL_5;
        case 3:
LABEL_5:
          *(v0 + 16) = v8;
          v9 = *(v0 + 48);
          if (v9 == 1)
          {
            *(v0 + 48) = 2;
            swift_beginAccess();
            *(v0 + 24) = _swiftEmptyArrayStorage;

            *(v0 + 24) = _swiftEmptyArrayStorage;
            sub_100034244();
            v10 = *(v0 + 24);
            v11 = *(v10 + 16);
            v12 = v11 + 1;
            if (v11 >= *(v10 + 24) >> 1)
            {
              v15 = *(v10 + 16);
              v16 = v11 + 1;
              sub_100034244();
              v11 = v15;
              v12 = v16;
              v10 = *(v0 + 24);
            }

            *(v10 + 16) = v12;
            v13 = v10 + (v11 << 6);
            *(v13 + 32) = 0u;
            *(v13 + 48) = 0u;
            *(v13 + 64) = 0u;
            *(v13 + 80) = 0;
            *(v13 + 88) = -256;
            *(v0 + 32) = 0;
            *(v0 + 40) = 0;
            *(v0 + 24) = v10;
            swift_endAccess();
            v9 = *(v0 + 48);
          }

          if (v9 == 2 && *(v0 + 16) == 2)
          {
            *(v0 + 48) = 3;
            ChannelHandlerContext.close(mode:promise:)();
          }

          break;
        default:
          __break(1u);
          goto LABEL_16;
      }
    }
  }

  else
  {
    if (*(v0 + 16) != 2)
    {
LABEL_16:
      __break(1u);
      JUMPOUT(0x10002F6CCLL);
    }

    *(v0 + 16) = 1;
  }

  ChannelHandlerContext.fireChannelRead(_:)();
  return sub_100037548(v2, v4, v6, v7);
}

uint64_t sub_10002F6DC()
{
  if ((*(v0 + 16) & 0xFE) == 2)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    if (swift_dynamicCast())
    {
      *(v0 + 16) = 0;
    }
  }

  return ChannelHandlerContext.fireErrorCaught(_:)();
}

uint64_t HTTPServerPipelineHandler.userInboundEventTriggered(context:event:)(uint64_t a1, uint64_t a2)
{
  sub_10002F9B0(a2, v18);
  if (swift_dynamicCast())
  {
    switch(*(v2 + 16))
    {
      case 1:
      case 3:
        *(v2 + 48) = 1;
        break;
      case 2:
        sub_100037A88(3);
        *(v2 + 24) = _swiftEmptyArrayStorage;

        sub_100037A64();
        v6 = *(v2 + 24);
        v7 = *(v6 + 16);
        v8 = v7 + 1;
        if (v7 >= *(v6 + 24) >> 1)
        {
          v14 = v7 + 1;
          sub_100034244();
          v8 = v14;
          v6 = *(v2 + 24);
        }

        *(v6 + 16) = v8;
        sub_100037918(v6);
        ChannelHandlerContext.close(mode:promise:)();
        break;
      default:
        sub_100037A88(2);
        *(v2 + 24) = _swiftEmptyArrayStorage;

        sub_100037A64();
        v3 = *(v2 + 24);
        v4 = *(v3 + 16);
        v5 = v4 + 1;
        if (v4 >= *(v3 + 24) >> 1)
        {
          sub_100034244();
          v3 = *(v2 + 24);
        }

        *(v3 + 16) = v5;
        sub_100037918(v3);
        break;
    }
  }

  else
  {
    if (!swift_dynamicCast() || (v17 & 1) != 0 || *(v2 + 16))
    {
      goto LABEL_7;
    }

    sub_100037C40();
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (v13 < 0 != v12)
    {
      v13 += *(*(v2 + 24) + 16);
    }

    if (v13 < 1)
    {
LABEL_7:
      ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
    }

    else
    {
      memset(v15, 0, sizeof(v15));
      v16 = 2;
      sub_100037AAC();
      sub_10002F3F4(v15);
      swift_endAccess();
      sub_10002F4AC(v15);
    }
  }

  return sub_100019CCC(v18);
}

uint64_t sub_10002F9B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t HTTPServerPipelineHandler.errorCaught(context:error:)()
{
  sub_100037B94();
  v4[0] = v1;
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (swift_dynamicCast() && !*(v0 + 16))
  {
    LOBYTE(v4[0]) = v3;
    v5 = 1;
    sub_100037AAC();
    sub_10002F3F4(v4);
    swift_endAccess();
    return sub_10002F4AC(v4);
  }

  else
  {
    sub_100037B7C();
    return sub_10002F6DC();
  }
}

void HTTPServerPipelineHandler.write(context:data:promise:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000377A8();
  v6 = sub_1000183C4(v5);
  sub_100031254();
  v10 = v7;
  v11 = v8;
  v12 = v9;
  if (!HIBYTE(v9))
  {
    v36 = v8;
    if (!*(v0 + 48))
    {

      goto LABEL_18;
    }

    sub_1001B8BE0(*(v7 + 40), v8, v9);
    if ((v13 & 1) == 0)
    {
LABEL_13:
      v34 = v6;
      v31[0] = v10;
      v31[1] = v11;
      v32 = v12;
      v33 = 0;
      v35 = 2;

      ChannelHandlerContext.write(_:promise:)();
      sub_100034310(v31);

LABEL_19:
      sub_100037B00();
      return;
    }

    v30 = sub_10003783C();
    v14 = sub_10003783C();
    __chkstk_darwin(v14, v15);
    v16 = sub_10003653C(&v36, sub_100034364);
    if (*(v36 + 16) < v16)
    {
      __break(1u);
    }

    else
    {
      sub_100036918();
      if ((sub_10002E9FC(0x697463656E6E6F63uLL, 0xEA00000000006E6FLL) & 1) == 0)
      {
        v11 = v36;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_9:
          v17 = *(v11 + 16);
          if (v17 >= *(v11 + 24) >> 1)
          {
            sub_100033A8C();
            v11 = v29;
          }

          *(v11 + 16) = v17 + 1;
          v18 = (v11 + 32 * v17);
          v18[4] = 0x697463656E6E6F63;
          v18[5] = 0xEA00000000006E6FLL;
          v18[6] = 0x65736F6C63;
          v18[7] = 0xE500000000000000;
          if (((sub_10003783C() | v14) | v30))
          {
            v12 = 2;
          }

          goto LABEL_13;
        }

LABEL_30:
        sub_100033A8C();
        v11 = v28;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  if (HIBYTE(v9) == 1)
  {
    sub_100034284(v7, v8, v9, 1);
LABEL_18:
    ChannelHandlerContext.write(_:promise:)();
    goto LABEL_19;
  }

  sub_100034284(v7, v8, v9, 2);
  switch(*(v0 + 48))
  {
    case 1:
      if (!*(v0 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    case 2:
LABEL_20:
      *(v0 + 48) = 3;
      sub_100037BA0();
      sub_100030794();
      v20 = v19;
      ChannelHandlerContext.write(_:promise:)();
      swift_retain_n();
      v21 = sub_100037BA0();
      sub_100112C28(v21, v22, v23, v24, v20, v25, v4);

      sub_10002FF80(v2, sub_1000374A4, sub_10011DE78);

      break;
    default:
LABEL_16:
      ChannelHandlerContext.write(_:promise:)();
      break;
  }

  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      __break(1u);
      JUMPOUT(0x10002FE94);
    }

    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  *(v0 + 16) = v26;
  sub_10002FFF4();
  sub_100037B00();

  sub_1000303FC();
}

uint64_t sub_10002FEA4()
{
  sub_100030794();
  v1 = v0;

  ChannelHandlerContext.close(mode:promise:)();

  return v1;
}

uint64_t sub_10002FF80(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result)
  {
    v6 = v3;
    v7 = result;
    swift_retain_n();

    a3(v8, a2, v7, v6);
  }

  return result;
}

void sub_10002FFF4()
{
  v1 = v0;
  swift_beginAccess();
  v13 = 0;
  while (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    if (v3 == v2)
    {
      break;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (HIDWORD(v2))
    {
      goto LABEL_34;
    }

    v4 = *(v1 + 24);
    if (v2 >= *(v4 + 16))
    {
      goto LABEL_35;
    }

    v5 = v4 + (v2 << 6);
    sub_10003736C(v5 + 32, &v17, &qword_1002ADA18);
    if (v19[25] == 255)
    {
      goto LABEL_41;
    }

    v20 = v17;
    *v21 = v18;
    *&v21[16] = *v19;
    *&v21[26] = *&v19[10];
    swift_beginAccess();
    sub_10003736C(v5 + 32, &v17, &qword_1002ADA18);
    if (v19[25] == 255)
    {
      goto LABEL_42;
    }

    sub_1000374B8(&v17, &qword_1002ADA18);
    v6 = v3 - v2;
    if (v3 < v2)
    {
      v6 += *(v4 + 16);
    }

    if (v6 < 1)
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100111FE4();
      v4 = v8;
    }

    v18 = 0u;
    memset(v19, 0, 24);
    v17 = 0u;
    *&v19[24] = -256;
    *(v1 + 24) = v4;
    if (v2 >= *(v4 + 16))
    {
      goto LABEL_37;
    }

    sub_10003743C(&v17, v4 + (v2 << 6) + 32, &qword_1002ADA18);
    *(v1 + 24) = v4;
    *(v1 + 32) = (*(v4 + 16) + 0x1FFFFFFFFLL) & (v2 + 1);
    swift_endAccess();
    sub_100037510(&v20, &v17);
    if (v19[25])
    {
      if (v19[25] == 1)
      {
        v9 = v17;
        sub_100036A04();
        swift_allocError();
        *v10 = v9;
        sub_10002F6DC();
        sub_10002F4AC(&v20);
      }

      else
      {
        *(v1 + 17) = 0;
        *(&v15 + 1) = &type metadata for ChannelEvent;
        LOBYTE(v14) = 0;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_10002F4AC(&v20);
        sub_100019CCC(&v14);
      }
    }

    else
    {
      v14 = v17;
      v15 = v18;
      v16[0] = *v19;
      *(v16 + 9) = *&v19[9];
      sub_10002F4DC();
      sub_100034310(&v14);
      sub_10002F4AC(&v20);
      v13 = 1;
    }
  }

  if (v13)
  {
    ChannelHandlerContext.fireChannelReadComplete()();
  }

  swift_beginAccess();
  sub_1001C2854(&v20, *(v1 + 32), *(v1 + 40));
  if (HIBYTE(*&v21[40]) >= 0xFFu)
  {
    sub_1000374B8(&v20, &qword_1002ADA18);
    return;
  }

  if ((*&v21[40] & 0xFF00) != 0x200 || *&v21[40] != 512 || (v11 = vorrq_s8(*&v21[8], *&v21[24]), *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *v21 | *(&v20 + 1) | v20))
  {
    sub_10002F4AC(&v20);
    return;
  }

  sub_10002F4AC(&v20);
  swift_beginAccess();
  v12 = *(v1 + 32);
  if (v12 == *(v1 + 40))
  {
    goto LABEL_38;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!HIDWORD(v12))
  {
    sub_100030980(&v20);
    sub_100031B24(1);
    swift_endAccess();
    sub_10002F4AC(&v20);
    *(v1 + 17) = 0;
    *&v21[8] = &type metadata for ChannelEvent;
    LOBYTE(v20) = 0;
    ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
    sub_100019CCC(&v20);
    return;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1000303FC()
{
  if (v0[17] == 1 && v0[16] && (v0[48] & 0xFE) != 2)
  {
    v0[17] = 0;
    ChannelHandlerContext.read()();
  }
}

void HTTPServerPipelineHandler.read(context:)()
{
  if ((v0[48] & 0xFE) != 2)
  {
    if (v0[16])
    {
      ChannelHandlerContext.read()();
    }

    else
    {
      v0[17] = 1;
    }
  }
}

void HTTPServerPipelineHandler.handlerRemoved(context:)()
{
  sub_100037C40();
  v1 = *(v0 + 32);
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v2 = *(v0 + 40);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  if (HIDWORD(v2))
  {
    goto LABEL_28;
  }

  v3 = *(v0 + 24);

  v4 = 1;
  LODWORD(v5) = v1;
  while (v2 < v1 == v4 || v5 != v2)
  {
    v7 = *(v3 + 16);
    if (v5 >= v7)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_10003736C(v3 + 32 + (v5 << 6), &v11, &qword_1002ADA18);
    v8 = HIBYTE(*&v15[7]);
    if (v8 > 0xFE)
    {
      goto LABEL_29;
    }

    v9 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = *v15;
    v5 = (v7 - 1) & (v5 + 1);
    v4 = v5 >= v1;
    if (HIDWORD(v5))
    {
      goto LABEL_24;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        sub_100036A04();
        swift_allocError();
        *v10 = v9;
        ChannelHandlerContext.fireErrorCaught(_:)();
      }

      else
      {
        *(&v13 + 7) = &type metadata for ChannelEvent;
        v11 = 0;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(&v11);
      }
    }

    else
    {
      v12 = v16;
      v13 = v17;
      v14 = v18;
      *v15 = v19;
      ChannelHandlerContext.fireChannelRead(_:)();
      sub_100034310(&v11);
    }
  }

  if (*(v0 + 48) - 1 <= 1)
  {
    *(&v13 + 7) = &type metadata for ChannelShouldQuiesceEvent;
    ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
    sub_100019CCC(&v11);
  }

  if (*(v0 + 17) == 1)
  {
    ChannelHandlerContext.read()();
  }
}

void HTTPServerPipelineHandler.channelInactive(context:)()
{
  sub_100037AAC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    v3 += *(v0[3] + 16);
  }

  sub_100031B24(v3);
  v0[4] = 0;
  v0[5] = 0;
  swift_endAccess();
  ChannelHandlerContext.fireChannelInactive()();
}

uint64_t HTTPServerPipelineHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_100030794()
{
  sub_100037AEC();
  v4 = v3;
  v6 = v5;
  sub_1000379FC();
  v7 = *(*(v0 + 32) + 56);
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for () + 8);
  EventLoop.makePromise<A>(of:file:line:)(&type metadata for () + 8, v2, v1, v6, v4, ObjectType, &type metadata for () + 8, v7);
  sub_100037A50();
}

uint64_t sub_10003081C()
{
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for () + 8);
  sub_1000183C4(&qword_1002ADC18);
  v2 = swift_allocObject();
  sub_100037950(v2);
  return v0;
}

uint64_t sub_100030890()
{
  sub_100037C40();
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[8]);
  sub_1000183C4(&qword_1002ADC18);
  v2 = swift_allocObject();
  sub_100037950(v2);
  return v0;
}

void sub_100030918()
{
  sub_100037980();
  if (v2)
  {
    __break(1u);
  }

  else if (*(v0 + 24 * v1 + 32))
  {

    return;
  }

  __break(1u);
}

void sub_100030980(uint64_t a1@<X8>)
{
  sub_100037980();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_10003736C(v2 + (v3 << 6) + 32, v14, &qword_1002ADA18);
    if (HIBYTE(v15) != 255)
    {
      sub_100037B2C(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v13);
      *(a1 + 42) = v15;
      return;
    }
  }

  __break(1u);
}

void sub_1000309F0()
{
  sub_100037980();
  if (v2)
  {
    __break(1u);
  }

  else if (*(v0 + 24 * v1 + 32))
  {

    sub_100037A2C();
    return;
  }

  __break(1u);
}

void sub_100030A54()
{
  sub_100037980();
  if (v2)
  {
    __break(1u);
  }

  else if (*(v0 + 16 * v1 + 32))
  {

    sub_100037A2C();
    return;
  }

  __break(1u);
}

void sub_100030A9C(uint64_t a1@<X8>)
{
  sub_100037980();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_10003736C(v2 + (v3 << 6) + 32, v14, &qword_1002ADD30);
    if (HIBYTE(v15) != 255)
    {
      sub_100037B2C(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v13);
      *(a1 + 41) = v15;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100030B0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(i - 3);
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;

    LOBYTE(v8) = a2(v6, v7, v8, v9);

    if (v8)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_100030BD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1000379FC();
  v15[0] = v5;
  v15[1] = v6;
  v14[2] = v15;
  v9 = sub_1001B9274(sub_100037488, v14, v7, v8);
  if ((v9 & 0xFE) == 2)
  {
    v10 = sub_100037908();
    v9 = sub_1001B97FC(v10, v11, v12, a4);
  }

  return v9 & 1;
}

uint64_t sub_100030C5C()
{
  sub_100037030(v0, &v5);
  if (!v8)
  {
    sub_100034300();
    return 0;
  }

  if (v8 == 1)
  {
    v1 = v6;
    v2 = v7;

    sub_10003709C(v1, v2);
    return 0;
  }

  sub_10003708C(&v5, &v4);
  type metadata accessor for SocketChannel(0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100030D34()
{
  sub_100037030(v0, &v6);
  if (v10)
  {
    if (v10 == 1)
    {
      v2 = v6;
      v3 = v7;
      v4 = v8;
      v5 = v9;
      sub_1000183C4(&qword_1002ADD58);
      sub_1000183C4(&qword_1002ADD50);
    }

    else
    {
      sub_10003708C(&v6, &v2);
      sub_1000183C4(&qword_1002ADD50);
    }
  }

  else
  {
    v2 = v6;
    BYTE6(v3) = BYTE6(v7);
    WORD2(v3) = WORD2(v7);
    LODWORD(v3) = v7;
    sub_1000183C4(&qword_1002ADD50);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
  }

  return v11;
}

uint64_t sub_100030E6C()
{
  sub_100037B94();
  sub_100037030(v0, &v6);
  if (!v7)
  {
    sub_100034300();
    return 0;
  }

  if (v7 == 1)
  {

    v1 = sub_100037A2C();
    sub_10003709C(v1, v2);
    return 0;
  }

  sub_10003708C(&v6, &v5);
  v4 = sub_100037B7C();
  sub_1000183C4(v4);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100030F5C@<X0>(_OWORD *a1@<X8>)
{
  sub_100037030(v1, &v4);
  if (v5)
  {
    if (v5 != 1)
    {
      return sub_10003708C(&v4, a1);
    }

    sub_1000183C4(&qword_1002ADD58);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_100031058()
{
  sub_100037AEC();
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v1, v2);
  sub_1000376CC();
  __chkstk_darwin(v3, v4);
  sub_1000378DC();
  if (sub_100030C5C())
  {
    sub_100037A50();
  }

  else
  {
    sub_100037BE8();
    v10 = v7;
    sub_100037AC8("tried to decode as type ");
    v11._countAndFlagsBits = 0x684374656B636F53;
    v11._object = 0xED00006C656E6E61;
    sub_1001F6CA8(v11);
    sub_100037738();
    v8 = &type metadata for NIOAny._NIOAny;
    sub_100037A20();
    *&v7 = swift_allocObject();
    sub_100037C58(v7);
    sub_1001F80E8();
    sub_1001F8128();
    v5 = sub_100037B68();
    v0(v5);
    sub_100088740(&v7);

    if (!v9)
    {
      __break(1u);
    }

    sub_1001F80E8();
    sub_1001F80F8();
    v6 = sub_1000378EC();
    v0(v6);
    v12._countAndFlagsBits = sub_100037C70();
    sub_1001F6CA8(v12);

    sub_1000376E8();
    sub_1001F7A28();
    sub_1000377F0();
    sub_10003787C();
    __break(1u);
  }
}

void sub_100031254()
{
  sub_100037C08();
  sub_1001F8138();
  sub_100037778();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_1000376CC();
  __chkstk_darwin(v6, v7);
  sub_1000378DC();
  sub_100030E6C();
  if (HIBYTE(v8) == 255)
  {
    sub_100037BC8();
    v14 = v11;
    v15._object = 0x80000001002240A0;
    v15._countAndFlagsBits = 0xD000000000000018;
    sub_1001F6CA8(v15);
    v16._countAndFlagsBits = sub_1001F8218();
    sub_1001F6CA8(v16);

    sub_100037738();
    v12 = &type metadata for NIOAny._NIOAny;
    sub_100037A20();
    *&v11 = swift_allocObject();
    sub_100037C58(v11);
    sub_1001F80E8();
    sub_1001F8128();
    v9 = *(v3 + 8);
    v9(v1, v0);
    sub_100088740(&v11);

    if (!v13)
    {
      __break(1u);
    }

    sub_1001F80E8();
    sub_1001F80F8();
    v10 = sub_1000378EC();
    (v9)(v10);
    v17._countAndFlagsBits = sub_100037C70();
    sub_1001F6CA8(v17);

    sub_1000376E8();
    sub_1001F7A28();
    sub_1000377F0();
    sub_10003787C();
    __break(1u);
  }

  else
  {
    sub_100037B00();
  }
}

void sub_100031498()
{
  sub_100037AEC();
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v1, v2);
  sub_1000376CC();
  __chkstk_darwin(v3, v4);
  sub_1000378DC();
  if (sub_100030D34())
  {
    sub_100037A50();
  }

  else
  {
    sub_100037BE8();
    v10 = v7;
    sub_100037AC8("tried to decode as type ");
    v11._countAndFlagsBits = 0x6C656E6E616843;
    v11._object = 0xE700000000000000;
    sub_1001F6CA8(v11);
    sub_100037738();
    v8 = &type metadata for NIOAny._NIOAny;
    sub_100037A20();
    *&v7 = swift_allocObject();
    sub_100037C58(v7);
    sub_1001F80E8();
    sub_1001F8128();
    v5 = sub_100037B68();
    v0(v5);
    sub_100088740(&v7);

    if (!v9)
    {
      __break(1u);
    }

    sub_1001F80E8();
    sub_1001F80F8();
    v6 = sub_1000378EC();
    v0(v6);
    v12._countAndFlagsBits = sub_100037C70();
    sub_1001F6CA8(v12);

    sub_1000376E8();
    sub_1001F7A28();
    sub_1000377F0();
    sub_10003787C();
    __break(1u);
  }
}

void sub_100031674()
{
  sub_100037C08();
  v3 = v0;
  v5 = v4;
  sub_1001F8138();
  sub_100037778();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_1000376CC();
  __chkstk_darwin(v10, v11);
  sub_1000378DC();
  sub_100037030(v3, v19);
  if (v22 == 2)
  {
    sub_10003708C(v19, &v18);
    if (swift_dynamicCast())
    {
      if (v25[24] != 255)
      {
        v12 = v24;
        *v5 = v23;
        v5[1] = v12;
        v5[2] = *v25;
        *(v5 + 41) = *&v25[9];
        sub_100037B00();
        return;
      }
    }

    else
    {
      sub_1000379D0();
    }
  }

  else
  {
    v17 = v7;
    if (v22)
    {
      v13 = v20;
      v14 = v21;

      sub_10003709C(v13, v14);
    }

    else
    {
      sub_100034300();
    }

    sub_1000379D0();
    v7 = v17;
  }

  sub_1000374B8(&v23, &qword_1002ADD30);
  sub_100037BC8();
  v19[0] = v23;
  v26._object = 0x80000001002240A0;
  v26._countAndFlagsBits = 0xD000000000000018;
  sub_1001F6CA8(v26);
  v27._countAndFlagsBits = sub_1001F8218();
  sub_1001F6CA8(v27);

  sub_100037738();
  *(&v24 + 1) = &type metadata for NIOAny._NIOAny;
  sub_100037A20();
  *&v23 = swift_allocObject();
  sub_100037C58(v23);
  sub_1001F80E8();
  sub_1001F8128();
  v15 = *(v7 + 8);
  v15(v2, v1);
  sub_100088740(&v23);

  if (!*&v25[8])
  {
    __break(1u);
  }

  sub_1001F80E8();
  sub_1001F80F8();
  v16 = sub_1000378EC();
  (v15)(v16);
  v28._countAndFlagsBits = sub_100037C70();
  sub_1001F6CA8(v28);

  sub_1000376E8();
  sub_1001F7A28();
  sub_1000377F0();
  sub_10003787C();
  __break(1u);
}

void sub_100031960()
{
  sub_100037AEC();
  sub_100037B54();
  if (v5 != v6)
  {
    v4 += *(v2 + 16);
  }

  if (v4 < v0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    if (!v0)
    {
LABEL_14:
      v1[1] = v3;
      sub_100037A50();
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111F54();
      v2 = v7;
    }

    while ((v3 & 0x8000000000000000) == 0)
    {
      if (v3 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v8 = (v2 + 32 + 24 * v3);
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 15) = 0;

      sub_100037A08();
      if (v9)
      {
        *v1 = v2;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

void sub_100031A14(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100111F9C();
        v3 = v8;
      }

      v9 = a1 - 1;
      if ((v4 & 0x8000000000000000) == 0)
      {
        while (v4 < *(v3 + 16))
        {
          v10 = (v3 + 32 + (v4 << 6));
          v11 = *v10;
          v12 = v10[1];
          v13 = v10[3];
          v14[2] = v10[2];
          v14[3] = v13;
          v14[0] = v11;
          v14[1] = v12;
          v10[2] = 0u;
          v10[3] = 0u;
          *v10 = 0u;
          v10[1] = 0u;
          sub_1000374B8(v14, &qword_1002ADC00);
          v4 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
          if (!v9)
          {
            goto LABEL_14;
          }

          --v9;
          if (v4 < 0)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_17;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      *v1 = v3;
    }

    v1[1] = v4;
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_100031B24(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_13:
      v1[1] = v4;
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111FE4();
      v3 = v8;
    }

    while (1)
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      v11 = -256;
      if (v4 < 0)
      {
        break;
      }

      if (v4 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      sub_10003743C(v9, v3 + 32 + (v4 << 6), &qword_1002ADA18);
      v4 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
      if (!--v2)
      {
        *v1 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void sub_100031C30()
{
  sub_100037AEC();
  sub_100037B54();
  if (v5 != v6)
  {
    v4 += *(v2 + 16);
  }

  if (v4 < v0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    if (!v0)
    {
LABEL_14:
      v1[1] = v3;
      sub_100037A50();
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111F6C();
      v2 = v7;
    }

    while ((v3 & 0x8000000000000000) == 0)
    {
      if (v3 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v8 = v2 + 32 + 24 * v3;
      v9 = *v8;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      sub_1000370B8(v9);
      sub_100037A08();
      if (v10)
      {
        *v1 = v2;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

void sub_100031CE8(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_13:
      v1[1] = v4;
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111F84();
      v3 = v8;
    }

    while (1)
    {
      sub_1000378B8();
      v9[56] = -1;
      if (v4 < 0)
      {
        break;
      }

      if (v4 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      sub_10003743C(v9, v3 + 32 + (v4 << 6), &qword_1002ADD30);
      v4 = (*(v3 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
      if (!--v2)
      {
        *v1 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100031DE8(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000A13B0();

    return sub_1000374AC(a1, 1);
  }

  else
  {

    return sub_1000A13B0();
  }
}

uint64_t sub_100031E68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    sub_10003742C(a1);
  }

  sub_1000A1568();

  return sub_100037420(a1, a2, a3 & 1);
}

uint64_t sub_100031EE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  sub_1000A1714();

  return sub_1000373FC(a1, a2, a3 & 1);
}

void sub_100031F78()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100033204();
    *v0 = v3;
  }
}

uint64_t sub_100031FFC(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    sub_100037B18();
    result = a1();
    *v1 = result;
  }

  return result;
}

uint64_t sub_100032064(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    sub_100037B18();
    result = a1();
    *v1 = result;
  }

  return result;
}

void sub_1000320D0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100032D00();
    *v0 = v3;
  }
}

void sub_1000321AC()
{
  sub_100037BB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_100033204();
    *v0 = v4;
  }
}

void sub_100032218()
{
  sub_100037A38();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_100032268()
{
  sub_100037A38();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_1000322BC()
{
  sub_100037BB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_100032D00();
    *v0 = v4;
  }
}

uint64_t sub_10003232C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1001F6F58();
  }

  return result;
}

void sub_100032370()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002AC7E0);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10003243C()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADB88);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100032508()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000379EC();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADBD0);
    v7 = sub_10001A2A4();
    j__malloc_size(v7);
    sub_1000376A8();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1000325D4()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADBF0);
    v3 = 40;
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v9)
    {
      v10 = v8 > v3;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = sub_1000377A8();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002BCC90);
    sub_100037718();
  }
}

void sub_1000326B0()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADDE8);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100032840()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v12)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100037990(v6, v7, v8, v9, v10);
    v14 = sub_1000379B4();
    sub_10003768C(v14);
    sub_10003789C(v15);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = sub_100037804();
  if (v1)
  {
    if (v13 != v0 || &v17[48 * v2] <= v16)
    {
      memmove(v16, v17, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88();
  }
}

void sub_1000328FC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADD10);
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v8 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v9[40 * v2] <= v8)
    {
      memmove(v8, v9, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000329D0()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADD00);
    v3 = 24;
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v9)
    {
      v10 = v8 > v3;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = sub_1000377A8();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADD08);
    sub_100037718();
  }
}

void sub_100032AF8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADC60);
    v3 = 48;
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v9)
    {
      v10 = v8 > v3;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = sub_1000377A8();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADC68);
    sub_100037718();
  }
}

void sub_100032BE8()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADB90);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADB98);
    sub_100037718();
  }
}

void sub_100032D00()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v12)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100037990(v6, v7, v8, v9, v10);
    v14 = sub_1000379B4();
    sub_10003768C(v14);
    sub_10003789C(v15);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = sub_100037804();
  if (v1)
  {
    if (v13 != v0 || &v17[40 * v2] <= v16)
    {
      memmove(v16, v17, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88();
  }
}

void sub_100032DFC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    sub_10003766C();
    if (v12 != v13)
    {
      sub_100037790();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100033DD0(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100032F20()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v12)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100037990(v6, v7, v8, v9, v10);
    v14 = sub_1000379B4();
    sub_10003768C(v14);
    sub_10003789C(v15);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = sub_100037804();
  if (v1)
  {
    if (v13 != v0 || &v17[24 * v2] <= v16)
    {
      memmove(v16, v17, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88();
  }
}

void sub_100032FDC()
{
  sub_10003779C();
  if (v3)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_100017C08(v7, v4);
  v9 = *(sub_1000183C4(&qword_1002AC7C8) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_100033D08(v0 + v10, v7, v8 + v10, &qword_1002AC7C8);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000330CC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADCB0);
    v7 = swift_allocObject();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100033204()
{
  sub_100037AEC();
  sub_100037764();
  if (v5)
  {
    sub_10003766C();
    if (v6 != v7)
    {
      sub_100037790();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v6 ^ v7 | v14)
  {
    v15 = v2;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100037990(v8, v9, v10, v11, v12);
    v16 = sub_10001A2A4();
    j__malloc_size(v16);
    sub_1000376A8();
    v16[2] = v2;
    v16[3] = v17;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v1)
  {
    if (v16 != v0 || v4 + 16 * v2 <= v3)
    {
      v19 = sub_100037870();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = sub_1000378FC();
    sub_1000183C4(v22);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_1000332D8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADCC0);
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v8 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v9[112 * v2] <= v8)
    {
      memmove(v8, v9, 112 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000333A8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000379EC();
  if (v2)
  {
    sub_1000183C4(&qword_1002AC818);
    v7 = sub_10001A2A4();
    j__malloc_size(v7);
    sub_1000377B4();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_100033474()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADDE0);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100033540()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADCD8);
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v8 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v9[136 * v2] <= v8)
    {
      memmove(v8, v9, 136 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100033628()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_100037990(v7, v8, v9, v10, v11);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v12[2] = v2;
    v12[3] = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = sub_100037804();
  if (v1)
  {
    if (v12 != v0 || &v15[v2] <= v14)
    {
      memmove(v14, v15, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v14, v15, v2);
  }
}

void sub_1000336EC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADC70);
    v3 = 80;
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v9)
    {
      v10 = v8 > v3;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = sub_1000377A8();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADC78);
    sub_100037718();
  }
}

void sub_1000337C8()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADDA8);
    v3 = 24;
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v9)
    {
      v10 = v8 > v3;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = sub_1000377A8();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADDB0);
    sub_100037718();
  }
}

char *sub_1000338A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADBE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000339AC()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADC08);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADC10);
    sub_100037718();
  }
}

void sub_100033A8C()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002AC840);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADD98);
    sub_100037718();
  }
}

char *sub_100033B80(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADBA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_100033C80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

char *sub_100033CA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

char *sub_100033CC4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

char *sub_100033CE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100037624(a3, result);
  }

  return result;
}

void sub_100033D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_100037B40();
  if (v8 && (sub_1000183C4(a4), sub_100023520(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_1000377DC();

      _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    sub_1000183C4(a4);
    v11 = sub_1000377DC();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }
}

void sub_100033DD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_100037B40();
  if (v8 && (a4(0), sub_100023520(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = sub_1000377DC();

      _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    a4(0);
    v11 = sub_1000377DC();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }
}

char *sub_100033F6C(char *a1, int64_t a2, char a3)
{
  result = sub_1000346CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100033F8C(void *a1, int64_t a2, char a3)
{
  result = sub_1000347E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100033FAC(void *a1, int64_t a2, char a3)
{
  result = sub_100034910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100033FCC(char *a1, int64_t a2, char a3)
{
  result = sub_100034A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003408C(char *a1, int64_t a2, char a3)
{
  result = sub_100034DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000340AC(char *a1, int64_t a2, char a3)
{
  result = sub_100034ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000340CC(void *a1, int64_t a2, char a3)
{
  result = sub_100034FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000340EC(size_t a1, int64_t a2, char a3)
{
  result = sub_10003511C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003410C(char *a1, int64_t a2, char a3)
{
  result = sub_1000352F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003412C(char *a1, int64_t a2, char a3)
{
  result = sub_100035400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100034284(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
LABEL_5:
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    goto LABEL_5;
  }

  return sub_100034300();
}

void *sub_1000343AC(void *a1, int64_t a2, char a3)
{
  result = sub_10003588C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003440C(char *a1, int64_t a2, char a3)
{
  result = sub_1000359C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003442C(char *a1, int64_t a2, char a3)
{
  result = sub_100035AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000344BC(void *a1, int64_t a2, char a3)
{
  result = sub_100035CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000344DC(char *a1, int64_t a2, char a3)
{
  result = sub_100035DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003452C(char *a1, int64_t a2, char a3)
{
  result = sub_100035EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000345BC(char *a1, int64_t a2, char a3)
{
  result = sub_100036268(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100034610()
{
  sub_1000378CC();
  if (v3)
  {
    sub_10003766C();
    if (v4 != v5)
    {
      sub_100037790();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v4 ^ v5 | v12)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100037990(v6, v7, v8, v9, v10);
    v14 = sub_1000379B4();
    sub_10003768C(v14);
    sub_10003789C(v15);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = sub_100037804();
  if (v1)
  {
    if (v13 != v0 || &v17[40 * v2] <= v16)
    {
      memmove(v16, v17, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100037C88();
  }
}

char *sub_1000346CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADC38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000347E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADD20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADD28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034910(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADCF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADCF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100034A48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100034BA8()
{
  sub_100037AEC();
  sub_100037764();
  if (v4)
  {
    sub_10003766C();
    if (v8 != v9)
    {
      sub_100037790();
      if (v8)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = v0[2];
  if (v7 <= v10)
  {
    v11 = v0[2];
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    sub_100037990(v2, v3, v4, v5, v6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v12 != v0 || &v0[3 * v10 + 4] <= v12 + 4)
    {
      v15 = sub_100037870();
      memmove(v15, v16, v17);
    }

    v0[2] = 0;
  }

  else
  {
    v18 = sub_1000378FC();
    sub_1000183C4(v18);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_100034CC0()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002ADBF8);
    v9 = swift_allocObject();
    sub_10003768C(v9);
    sub_1000376BC(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + (v2 << 6) <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADC00);
    sub_100037718();
  }
}

char *sub_100034DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADDE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100034ED4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 248);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[248 * v8] <= v12)
    {
      memmove(v12, v13, 248 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034FEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADCA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADCA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10003511C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000183C4(&qword_1002ADBB8);
  v10 = *(sub_1000183C4(&qword_1002ADBC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000183C4(&qword_1002ADBC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100033D08(a4 + v16, v8, v13 + v16, &qword_1002ADBC0);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000352F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADC40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100035400(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[224 * v8] <= v12)
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100035514()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v9)
  {
    sub_10003766C();
    if (v10 != v11)
    {
      sub_100037790();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v10 ^ v11 | v24)
  {
    v18 = v0;
  }

  else
  {
    v18 = v17;
  }

  if (!v18)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  sub_100037990(v12, v13, v14, v15, v16);
  v19 = *(v4(0) - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v20)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23 - v21 == 0x8000000000000000 && v20 == -1;
  if (v24)
  {
    goto LABEL_22;
  }

  v22[2] = v0;
  v22[3] = 2 * ((v23 - v21) / v20);
LABEL_17:
  v25 = *(v4(0) - 8);
  if (v8)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_100033DD0(v6 + v26, v0, v22 + v26, v2);
    *(v6 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100037B00();
}

void sub_1000356AC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v2)
  {
    sub_1000183C4(&qword_1002ADD68);
    v3 = 72;
    v7 = sub_100037820();
    sub_100037634(v7);
  }

  sub_100037864();
  if (v1)
  {
    sub_1000379A8();
    if (v9)
    {
      v10 = v8 > v3;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = sub_1000377A8();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADD70);
    sub_100037718();
  }
}

void sub_1000357AC()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&unk_1002B3460);
    v9 = sub_10001A2A4();
    sub_10003768C(v9);
    v3[2] = v2;
    v3[3] = (2 * (v10 / 8)) | 1;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_1000377A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    type metadata accessor for ScheduledTask();
    sub_100037718();
  }
}

void *sub_10003588C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002ADC70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADC78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000359C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADCC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100035AD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002B34C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100035BE4()
{
  sub_100037AEC();
  sub_100037764();
  if (v5)
  {
    sub_10003766C();
    if (v6 != v7)
    {
      sub_100037790();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v6 ^ v7 | v14)
  {
    v15 = v2;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100037990(v8, v9, v10, v11, v12);
    v16 = sub_10001A2A4();
    v17 = j__malloc_size(v16);
    v16[2] = v2;
    v16[3] = 2 * ((v17 - 32) / 32);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v1)
  {
    if (v16 != v0 || v4 + 32 * v2 <= v3)
    {
      v19 = sub_100037870();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = sub_1000378FC();
    sub_1000183C4(v22);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void *sub_100035CC4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000183C4(&qword_1002B3490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000183C4(&unk_1002BCCC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100035DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADC88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_100035EF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002ADDE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100035FF8()
{
  sub_100037AEC();
  sub_100037764();
  if (v5)
  {
    sub_10003766C();
    if (v6 != v7)
    {
      sub_100037790();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v6 ^ v7 | v14)
  {
    v15 = v2;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100037990(v8, v9, v10, v11, v12);
    v16 = sub_10001A2A4();
    j__malloc_size(v16);
    sub_1000376A8();
    v16[2] = v2;
    v16[3] = v17;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v1)
  {
    if (v16 != v0 || v4 + 16 * v2 <= v3)
    {
      v19 = sub_100037870();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = sub_1000378FC();
    sub_1000183C4(v22);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_1000360CC()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_1000183C4(&qword_1002AC7E0);
    v7 = sub_10001A2A4();
    sub_10003768C(v7);
    sub_1000376BC(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100037804();
  if (v1)
  {
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100036198()
{
  sub_10003779C();
  if (v4)
  {
    sub_10003766C();
    if (v5 != v6)
    {
      sub_100037790();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000379EC();
  if (v2)
  {
    sub_100037990(v7, v8, v9, v10, v11);
    v12 = sub_10001A2A4();
    j__malloc_size(v12);
    sub_1000377B4();
    *(v12 + 2) = v3;
    *(v12 + 3) = v13;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = v0 + 32;
  if (v1)
  {
    if (v12 != v0 || &v15[8 * v3] <= v14)
    {
      memmove(v14, v15, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v3);
  }
}

char *sub_100036268(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000183C4(&qword_1002AC850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100036370()
{
  sub_100037AEC();
  sub_100037764();
  if (v5)
  {
    sub_10003766C();
    if (v6 != v7)
    {
      sub_100037790();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_1000378AC();
  if (v6 ^ v7 | v14)
  {
    v15 = v2;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100037990(v8, v9, v10, v11, v12);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v2;
    v16[3] = 2 * ((v17 - 32) / 64);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_100037B88();
  if (v1)
  {
    if (v16 != v0 || v4 + (v2 << 6) <= v3)
    {
      v19 = sub_100037870();
      memmove(v19, v20, v21);
    }

    v0[2] = 0;
  }

  else
  {
    v22 = sub_1000378FC();
    sub_1000183C4(v22);
    sub_100037810();
    swift_arrayInitWithCopy();
  }

  sub_100037A50();
}

void sub_10003646C()
{
  sub_10003779C();
  if (v6)
  {
    sub_10003766C();
    if (v7 != v8)
    {
      sub_100037790();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10003765C();
    }
  }

  sub_10003767C();
  if (v3)
  {
    sub_100037990(v9, v10, v11, v12, v13);
    v14 = sub_10001A2A4();
    sub_10003768C(v14);
    sub_1000376BC(v15);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100037864();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v17 = sub_1000377A8();
      memmove(v17, v18, v19);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000183C4(&qword_1002ADD88);
    sub_100037718();
  }
}

uint64_t sub_10003653C(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  result = sub_100030B0C(*a1, a2);
  if (!v2)
  {
    if (v7)
    {
      return *(v5 + 16);
    }

    else
    {
      v25 = a1;
      v30 = a2;
      v8 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_26:
        __break(1u);
      }

      else
      {
        for (i = 32 * result + 88; ; i += 32)
        {
          v10 = *(v5 + 16);
          if (v8 == v10)
          {
            break;
          }

          if (v8 >= v10)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v11 = result;
          v12 = v5 + i;
          v13 = *(v5 + i - 24);
          v14 = *(v5 + i - 16);
          v15 = *(v5 + i - 8);
          v16 = *(v5 + i);

          LOBYTE(v15) = v30(v13, v14, v15, v16);

          if (v15)
          {
            result = v11;
          }

          else
          {
            result = v11;
            if (v8 != v11)
            {
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_22;
              }

              v17 = *(v5 + 16);
              if (v11 >= v17)
              {
                goto LABEL_23;
              }

              if (v8 >= v17)
              {
                goto LABEL_24;
              }

              v18 = (v5 + 32 + 32 * v11);
              v19 = v18[3];
              v27 = v18[2];
              v28 = *v18;
              v20 = *(v12 - 16);
              v29 = *(v12 - 24);
              v21 = *(v12 - 8);
              v22 = *(v5 + i);
              v26 = v18[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_10019122C(v5);
              }

              v23 = (v5 + 32 * v11);
              v23[4] = v29;
              v23[5] = v20;
              v23[6] = v21;
              v23[7] = v22;

              if (v8 >= *(v5 + 16))
              {
                goto LABEL_25;
              }

              v24 = (v5 + i);
              *(v24 - 3) = v28;
              *(v24 - 2) = v26;
              *(v24 - 1) = v27;
              *v24 = v19;

              *v25 = v5;
              result = v11;
            }

            ++result;
          }

          ++v8;
        }
      }
    }
  }

  return result;
}

void sub_100036754()
{
  sub_100037AEC();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000377C8();
  if (v5 != v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100073C84(v4 - v8, 1);
  v10 = *v1;
  v11 = *v1 + 32;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_15:
    *v1 = v10;
    sub_100037A50();
    return;
  }

  v12 = *(v10 + 16);
  v13 = v12 - v0;
  if (__OFSUB__(v12, v0))
  {
    goto LABEL_21;
  }

  v14 = (v11 + 8 * v0);
  if (v7 != v0 || v14 + 8 * v13 <= v11 + 8 * v7)
  {
    memmove((v11 + 8 * v7), v14, 8 * v13);
    v12 = *(v10 + 16);
  }

  v6 = __OFADD__(v12, v9);
  v16 = v12 - v8;
  if (!v6)
  {
    *(v10 + 16) = v16;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void sub_100036830()
{
  sub_100037AEC();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000377C8();
  if (v5 != v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100073C9C(v4 - v8, 1);
  v10 = *v1;
  v11 = *v1 + 32;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_15:
    *v1 = v10;
    sub_100037A50();
    return;
  }

  v12 = *(v10 + 16);
  if (__OFSUB__(v12, v0))
  {
    goto LABEL_21;
  }

  v13 = (v11 + 40 * v0);
  if (v7 != v0 || v13 + 40 * (v12 - v0) <= v11 + 40 * v7)
  {
    memmove((v11 + 40 * v7), v13, 40 * (v12 - v0));
    v12 = *(v10 + 16);
  }

  v6 = __OFADD__(v12, v9);
  v15 = v12 - v8;
  if (!v6)
  {
    *(v10 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

void sub_100036918()
{
  sub_100037AEC();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000377C8();
  if (v5 != v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100073CD0(v4 - v8, 1);
  v10 = *v1;
  v11 = *v1 + 32;
  sub_1000183C4(&qword_1002ADD98);
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_15:
    *v1 = v10;
    sub_100037A50();
    return;
  }

  v12 = *(v10 + 16);
  v13 = v12 - v0;
  if (__OFSUB__(v12, v0))
  {
    goto LABEL_21;
  }

  v14 = (v11 + 32 * v0);
  if (v7 != v0 || v14 + 32 * v13 <= v11 + 32 * v7)
  {
    memmove((v11 + 32 * v7), v14, 32 * v13);
    v12 = *(v10 + 16);
  }

  v6 = __OFADD__(v12, v9);
  v16 = v12 - v8;
  if (!v6)
  {
    *(v10 + 16) = v16;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_100036A04()
{
  result = qword_1002ADA20;
  if (!qword_1002ADA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADA20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPServerPipelineHandler.NextExpectedMessageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100036B48);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OctaneIAPType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100036C20(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100036CECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100036D30(void *a1)
{
  v1 = ((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036D60(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036D80(uint64_t a1)
{
  if ((*(a1 + 57) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 57) & 3;
  }
}

__n128 sub_100036D9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100036DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 58))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 57);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036DF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_100036E44(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 57) = a2;
  return result;
}

unint64_t sub_100036E84()
{
  result = qword_1002ADB68;
  if (!qword_1002ADB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADB68);
  }

  return result;
}

unint64_t sub_100036EDC()
{
  result = qword_1002ADB70;
  if (!qword_1002ADB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADB70);
  }

  return result;
}

unint64_t sub_100036F34()
{
  result = qword_1002ADB78;
  if (!qword_1002ADB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADB78);
  }

  return result;
}

uint64_t sub_100036F88()
{
  v1 = *(v0 + 72);
  if (v1 == 2)
  {
    sub_100019CCC(v0 + 16);
  }

  else if (v1 == 1)
  {

    if (*(v0 + 48) != 4 && (~*(v0 + 56) & 0xF000000000000007) != 0)
    {
    }
  }

  else if (!*(v0 + 72))
  {
    sub_100034300();
  }

  sub_100037A20();

  return _swift_deallocObject(v2, v3, v4);
}

_OWORD *sub_10003708C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003709C(uint64_t result, uint64_t a2)
{
  if (result != 4)
  {
    return sub_10002D83C(a2);
  }

  return result;
}

uint64_t sub_1000370B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003715C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100034300();
  }

  return result;
}

void sub_1000371A0()
{
  sub_100037AEC();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1000377C8();
  if (v5 != v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = v0 - v3;
  if (__OFSUB__(v0, v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v3 - v0;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100073D30(v4 - v8, 1);
  v10 = *v1;
  v11 = *(type metadata accessor for EventManager.Observer(0) - 8);
  v12 = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v14 = v12 + v13 * v7;
  swift_arrayDestroy();
  if (!v8)
  {
LABEL_10:
    *v1 = v10;
    sub_100037A50();
    return;
  }

  v15 = *(v10 + 16);
  if (__OFSUB__(v15, v0))
  {
    goto LABEL_16;
  }

  sub_100033DD0(v12 + v13 * v0, v15 - v0, v14, type metadata accessor for EventManager.Observer);
  v16 = *(v10 + 16);
  v6 = __OFADD__(v16, v9);
  v17 = v16 - v8;
  if (!v6)
  {
    *(v10 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000372D0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_100037B94();
  v4 = *v2;
  result = sub_10001744C(*v2);
  if (result < v1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(v1, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3 - v1;
  if (__OFSUB__(0, v1 - v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_10001A07C(v4);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_100073F34(result, 1);
  v8 = sub_100037B7C();

  return sub_1000C844C(v8, v9, 0);
}

uint64_t sub_10003736C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100037C20(a1, a2, a3);
  sub_100023520();
  v4 = sub_100037A2C();
  v5(v4);
  return v3;
}

uint64_t sub_1000373FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100037408(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100037420(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100037408(a1);
  }
}

uint64_t sub_10003742C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003743C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100037C20(a1, a2, a3);
  sub_100023520();
  v4 = sub_100037A2C();
  v5(v4);
  return v3;
}

uint64_t sub_1000374AC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000374B8(uint64_t a1, uint64_t *a2)
{
  sub_1000183C4(a2);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100037548(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }
}

size_t sub_100037634(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void sub_1000376E8()
{
  v1._countAndFlagsBits = 0x6F63206874697720;
  v1._object = 0xEF2073746E65746ELL;

  sub_1001F6CA8(v1);
}

uint64_t sub_100037718()
{

  return swift_arrayInitWithCopy();
}

void sub_100037738()
{
  v1._countAndFlagsBits = 0x756F662074756220;
  v1._object = 0xEB0000000020646ELL;

  sub_1001F6CA8(v1);
}

uint64_t sub_100037820()
{

  return swift_allocObject();
}

uint64_t sub_10003783C()
{

  return sub_100030BD4(v0, 0xEA00000000006E6FLL, v0, 0xEA00000000006E6FLL);
}

uint64_t sub_10003787C()
{

  return sub_1001F7AC8();
}

uint64_t sub_100037918@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + (v1 << 6);
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = -256;
  v2[4] = 0;
  v2[5] = 0;
  v2[3] = a1;

  return swift_endAccess();
}

uint64_t sub_100037950(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
}

uint64_t sub_100037990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return sub_1000183C4(a5);
}

uint64_t sub_1000379B4()
{

  return swift_allocObject();
}

double sub_1000379D0()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 88) = -1;
  return result;
}

void sub_100037A64()
{
  *(v0 + 24) = v1;

  sub_100034244();
}

uint64_t sub_100037A88@<X0>(char a1@<W8>)
{
  *(v1 + 48) = a1;

  return swift_beginAccess();
}

uint64_t sub_100037AAC()
{

  return swift_beginAccess();
}

void sub_100037AC8(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000018;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_1001F6CA8(v2);
}

__n128 sub_100037B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

void sub_100037BC8()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0xE000000000000000;

  sub_1001F77B8(56);
}

void sub_100037BE8()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  sub_1001F77B8(56);
}

uint64_t sub_100037C20(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000183C4(a3);
}

uint64_t sub_100037C40()
{

  return swift_beginAccess();
}

uint64_t sub_100037C58(uint64_t a1)
{

  return sub_100037030(v1, a1 + 16);
}

uint64_t sub_100037C70()
{

  return sub_1001F8218();
}

uint64_t sub_100037C88()
{

  return swift_arrayInitWithCopy();
}

uint64_t HTTPServerProtocolErrorHandler.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t HTTPServerProtocolErrorHandler.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t HTTPServerProtocolErrorHandler.errorCaught(context:error:)(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (swift_dynamicCast() && (*(v2 + 16) & 1) == 0)
  {
    type metadata accessor for HTTPResponseHead._Storage();
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 21;
    *(v3 + 40) = 65537;
    v4 = sub_1000183C4(&qword_1002ADA10);
    v6 = v3;
    *&v7 = &off_10027A438;
    *(&v7 + 1) = 2;
    v8 = v4;
    v9 = 2;

    ChannelHandlerContext.write(_:promise:)();
    sub_100034310(&v6);
    v8 = v4;
    v6 = 0;
    *&v7 = 0;
    *(&v7 + 7) = 0;
    HIBYTE(v7) = 2;
    v9 = 2;
    ChannelHandlerContext.writeAndFlush(_:promise:)();

    sub_100034310(&v6);
  }

  return ChannelHandlerContext.fireErrorCaught(_:)();
}

void HTTPServerProtocolErrorHandler.write(context:data:promise:)()
{
  sub_1000183C4(&qword_1002ADA10);
  sub_1000375F0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = HIBYTE(v5);
  v8 = *(v0 + 16);
  if (!HIBYTE(v5))
  {
    goto LABEL_5;
  }

  if (v7 != 1)
  {
    if (*(v0 + 16))
    {
      v9 = 0;
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

  if ((*(v0 + 16) & 1) == 0)
  {
    __break(1u);
LABEL_5:
    if ((v8 & 1) == 0)
    {
      v9 = 1;
LABEL_9:
      *(v0 + 16) = v9;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_10:
  ChannelHandlerContext.write(_:promise:)();

  sub_100034284(v2, v4, v6, v7);
}

unint64_t sub_100037F28()
{
  result = qword_1002ADF38;
  if (!qword_1002ADF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF38);
  }

  return result;
}

uint64_t sub_100037F7C()
{
  v302 = sub_1001F6938();
  sub_10001A278();
  v2 = v1;
  __chkstk_darwin(v3, v4);
  v303 = &v280 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v306 = &v280 - v8;
  v9 = sub_1001F68E8();
  sub_10001A278();
  v11 = v10;
  __chkstk_darwin(v12, v13);
  v15 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v305 = &v280 - v18;
  v19 = sub_1001F6B98();
  sub_10001A278();
  v307 = v20;
  __chkstk_darwin(v21, v22);
  v24 = &v280 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = 0x6E6F6973726576;
  v312 = 0xE700000000000000;
  sub_1001F7758();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  v304 = v11;
  v301 = v2;
  if (v318)
  {
    if (swift_dynamicCast())
    {
      v25 = v311;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10003A24C(v316);
  }

  v25 = 3157553;
LABEL_6:
  v308 = v25;
  strcpy(v316, "adNetwork");
  WORD1(v316[1]) = 0;
  HIDWORD(v316[1]) = -385875968;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
  }

  else
  {
    sub_10003A24C(v316);
  }

  sub_10003A610();
  v31 = sub_100039CBC(v26, v27, v28, v29, v30);
  if (v0)
  {

    return v15;
  }

  v299 = v31;
  v300 = v32;

  v316[0] = 0x6449707061;
  v316[1] = 0xE500000000000000;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
  }

  else
  {
    sub_10003A24C(v316);
  }

  sub_10003A610();
  v298 = sub_100039EB4(v33, v34, v35, v36, v37);
  strcpy(v316, "transactionId");
  HIWORD(v316[1]) = -4864;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
  }

  else
  {
    sub_10003A24C(v316);
  }

  sub_10003A610();
  v285 = sub_100039CBC(v39, v40, v41, v42, v43);
  v297 = v44;
  v284 = v9;

  strcpy(v316, "campaignId");
  BYTE3(v316[1]) = 0;
  HIDWORD(v316[1]) = -369098752;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
    sub_10003A6E4();
    sub_10003A810(v45);
  }

  else
  {
    sub_10003A24C(v316);
    sub_10003A81C(v316);
  }

  LODWORD(v292) = v46;
  v316[0] = 0xD000000000000010;
  v316[1] = 0x80000001002244A0;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
    sub_10003A6F4();
    v289 = v48;
    if (v49)
    {
      v50 = 0;
    }

    else
    {
      v50 = v47;
    }

    v293 = v50;
  }

  else
  {
    sub_10003A24C(v316);
    v289 = 0;
    v293 = 0;
  }

  strcpy(v316, "sourceAppId");
  HIDWORD(v316[1]) = -352321536;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
    sub_10003A6E4();
    sub_10003A810(v51);
  }

  else
  {
    sub_10003A24C(v316);
    sub_10003A81C(&v313);
  }

  LODWORD(v288) = v52;
  strcpy(v316, "sourceDomain");
  BYTE5(v316[1]) = 0;
  HIWORD(v316[1]) = -5120;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
    sub_10003A6F4();
    v281 = v54;
    if (v49)
    {
      v55 = 0;
    }

    else
    {
      v55 = v53;
    }

    v295 = v55;
  }

  else
  {
    sub_10003A24C(v316);
    v281 = 0;
    v295 = 0;
  }

  strcpy(v316, "fidelityType");
  BYTE5(v316[1]) = 0;
  HIWORD(v316[1]) = -5120;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
    sub_10003A6E4();
    sub_10003A810(v56);
  }

  else
  {
    sub_10003A24C(v316);
    sub_10003A81C(&v310);
  }

  LODWORD(v287) = v57;
  strcpy(v316, "redownload");
  BYTE3(v316[1]) = 0;
  HIDWORD(v316[1]) = -369098752;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
    sub_10003A6F4();
    v290 = v59;
    if (v49)
    {
      v60 = 0;
    }

    else
    {
      v60 = v58;
    }
  }

  else
  {
    sub_10003A24C(v316);
    v290 = 0;
    v60 = 0;
  }

  v294 = v60;
  v316[0] = 0x6E6957646964;
  v316[1] = 0xE600000000000000;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  if (v318)
  {
    sub_10003A660();
    sub_10003A6F4();
    v283 = v62;
    if (v49)
    {
      v63 = 0;
    }

    else
    {
      v63 = v61;
    }
  }

  else
  {
    sub_10003A24C(v316);
    v283 = 0;
    v63 = 0;
  }

  v316[0] = 0xD000000000000015;
  v316[1] = 0x80000001002244C0;
  sub_10003A76C();
  sub_10003A6AC();
  sub_10003A1F8(&v313);
  v296 = v63;
  if (v318)
  {
    sub_10003A660();
    sub_10003A6E4();
    sub_10003A810(v64);
  }

  else
  {
    sub_10003A24C(v316);
    sub_10003A81C(&v309);
  }

  v282 = v65;
  v66 = sub_1001F6B48();
  v67 = [v66 skan_version];

  if ((v67 - 200) < 2)
  {
    sub_10003A794();
    sub_10003A7F8();
    sub_10003A610();
    v78 = sub_100039EB4(v73, v74, v75, v76, v77);
    sub_10003A610();
    v84 = sub_100039CBC(v79, v80, v81, v82, v83);
    sub_10003A7B8(v84, v85);
    sub_10003A610();
    v294 = sub_100039EB4(v86, v87, v88, v89, v90);
    sub_1000183C4(&qword_1002AC7E0);
    v91 = swift_allocObject();
    v91[3].n128_u64[1] = sub_10003A620(v91, xmmword_100200CB0);
    v313 = v78;

    v92 = &v313;
    v91[4].n128_u64[0] = sub_1001F7E28();
    v91[4].n128_u64[1] = v93;
    sub_10003A6C8();
    v94 = sub_1001F7E28();
    sub_10003A644(v94, v95);
    sub_10003A784();
    v91[7].n128_u64[0] = v97;
    v91[7].n128_u64[1] = v96;
    sub_10003A6D8(&v318);

    v98 = sub_1001F7E28();
    v292 = v91;
    v91[8].n128_u64[0] = v98;
    v91[8].n128_u64[1] = v99;
    v313 = v91;
    v100 = sub_1000183C4(&qword_1002ACA10);
    sub_10003A2B4();
    sub_10003A680();
    sub_1001F6A68();
    sub_10003A828();
    goto LABEL_84;
  }

  if (!v67)
  {
    sub_10003A6A0();
    goto LABEL_64;
  }

  if (v67 != 400)
  {
    if (v67 == 202)
    {
      sub_10003A794();
      sub_10003A7F8();
      sub_10003A610();
      v132 = sub_100039EB4(v112, v113, v114, v115, v116);
      sub_10003A610();
      v138 = sub_100039CBC(v133, v134, v135, v136, v137);
      sub_10003A7B8(v138, v190);
      sub_10003A610();
      v196 = sub_100039EB4(v191, v192, v193, v194, v195);
      sub_10003A610();
      v294 = sub_100039EB4(v197, v198, v199, v200, v201);
      sub_1000183C4(&qword_1002AC7E0);
      v240 = swift_allocObject();
      v292 = v196;
      v241 = v240;
      v240[3].n128_u64[1] = sub_10003A620(v240, xmmword_100200CA0);
      v313 = v132;

      v92 = &v313;
      v241[4].n128_u64[0] = sub_1001F7E28();
      v241[4].n128_u64[1] = v242;
      sub_10003A6C8();
      v243 = sub_1001F7E28();
      sub_10003A644(v243, v244);
      sub_10003A784();
      v241[7].n128_u64[0] = v246;
      v241[7].n128_u64[1] = v245;
      sub_10003A6D8(&v316[1]);

      v241[8].n128_u64[0] = sub_1001F7E28();
      v241[8].n128_u64[1] = v247;
      sub_10003A6D8(&v318);
      v248 = sub_1001F7E28();
      v291 = v241;
      v241[9].n128_u64[0] = v248;
      v241[9].n128_u64[1] = v249;
      v313 = v241;
      v100 = sub_1000183C4(&qword_1002ACA10);
      sub_10003A2B4();
      sub_10003A680();
      sub_1001F6A68();
      sub_10003A828();
      goto LABEL_84;
    }

    if (v67 == 300)
    {
      sub_10003A794();
      sub_10003A610();
      v293 = sub_100039EB4(v107, v108, v109, v110, v111);
      sub_10003A610();
      sub_100039CBC(v127, v128, v129, v130, v131);
      sub_10003A7AC();
      sub_10003A848(v183, v184);

      sub_10003A610();
      v208 = sub_100039EB4(v185, v186, v187, v188, v189);
      sub_10003A610();
      v290 = sub_100039EB4(v209, v210, v211, v212, v213);
      v294 = v208;
      sub_10003A610();
      v289 = sub_100039CBC(v214, v215, v216, v217, v218);
      v288 = v219;

      sub_1000183C4(&qword_1002AC7E0);
      v254 = swift_allocObject();
      v254[3].n128_u64[1] = sub_10003A620(v254, xmmword_100200C90);
      sub_10003A6D8(v317);

      v92 = &v313;
      v254[4].n128_u64[0] = sub_1001F7E28();
      v254[4].n128_u64[1] = v255;
      sub_10003A6C8();
      v256 = sub_1001F7E28();
      sub_10003A644(v256, v257);
      v258 = v292;
      v254[7].n128_u64[0] = v291;
      v254[7].n128_u64[1] = v258;
      sub_10003A6D8(&v318);

      v254[8].n128_u64[0] = sub_1001F7E28();
      v254[8].n128_u64[1] = v259;
      sub_10003A6D8(v315);
      v260 = sub_1001F7E28();
      v296 = v254;
      v254[9].n128_u64[0] = v260;
      v254[9].n128_u64[1] = v261;
      v262 = v288;
      v254[10].n128_u64[0] = v289;
      v254[10].n128_u64[1] = v262;
      v313 = v254;
      v100 = sub_1000183C4(&qword_1002ACA10);
      sub_10003A2B4();
      sub_10003A680();
      sub_1001F6A68();
      sub_10003A828();
      goto LABEL_84;
    }

    if (v67 == 100)
    {
      sub_10003A794();
      sub_10003A7F8();

      sub_10003A610();
      v308 = sub_100039EB4(v68, v69, v70, v71, v72);
      if ((v287 & 1) == 0)
      {
        if (qword_1002AC510 != -1)
        {
          sub_10001B230();
        }

        v139 = sub_1001F6688();
        sub_100019C94(v139, qword_1002E6180);
        v140 = sub_1001F6668();
        v141 = sub_1001F7278();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = sub_10003A87C();
          *v142 = 0;
          sub_10003A85C(&_mh_execute_header, v143, v144, "SKAdNetwork signature verification: Found fidelity type specified for unsupported version", v142);
          sub_10003A704();
        }
      }

      if ((v288 & 1) == 0)
      {
        if (qword_1002AC510 != -1)
        {
          sub_10001B230();
        }

        v145 = sub_1001F6688();
        sub_100019C94(v145, qword_1002E6180);
        v146 = sub_1001F6668();
        v147 = sub_1001F7278();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = sub_10003A87C();
          *v148 = 0;
          sub_10003A85C(&_mh_execute_header, v149, v150, "SKAdNetwork signature verification: Found source app id specified for unsupported version", v148);
          sub_10003A704();
        }
      }

      sub_1000183C4(&qword_1002AC7E0);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_100200CC0;
      *(v151 + 32) = v299;
      *(v151 + 40) = sub_10003A694();
      v313 = v308;

      *(v151 + 48) = sub_1001F7E28();
      *(v151 + 56) = v152;
      sub_10003A6C8();
      *(v151 + 64) = sub_1001F7E28();
      *(v151 + 72) = v153;
      v154 = sub_10003A6A0();
      *(v151 + 80) = v155;
      *(v151 + 88) = v154;
      v313 = v151;

      v308 = sub_1000183C4(&qword_1002ACA10);
      sub_10003A2B4();
      sub_10003A680();
      v156 = sub_1001F6A68();
      v92 = v157;
      v100 = v156;
      goto LABEL_84;
    }

LABEL_64:

    sub_10003A694();

    sub_10003A794();

LABEL_65:

    sub_10003A720();

    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v117 = sub_1001F6688();
    sub_100019C94(v117, qword_1002E6180);
    v118 = sub_1001F6668();
    v119 = sub_1001F7278();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = sub_10003A87C();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "SKAdNetwork postback signing: Unable to compose digest.", v120, 2u);
      sub_10003A72C();
    }

    return 0;
  }

  sub_10003A610();
  v106 = sub_100039CBC(v101, v102, v103, v104, v105);
  sub_10003A848(v106, v121);

  sub_10003A610();
  sub_100039CBC(v122, v123, v124, v125, v126);
  sub_10003A7AC();
  v290 = v170;
  v293 = v171;

  sub_10003A610();
  v294 = sub_100039EB4(v172, v173, v174, v175, v176);
  sub_10003A610();
  v182 = sub_100039CBC(v177, v178, v179, v180, v181);
  v234 = v233;
  v289 = v182;

  sub_10003A610();
  v287 = sub_100039EB4(v235, v236, v237, v238, v239);
  v296 = v234;
  if (v295)
  {
    v288 = v295;
  }

  else
  {
    if (v288)
    {
      sub_10003A7F8();
      sub_10003A794();
      sub_10003A760();

      sub_10003A6A0();

      sub_10003A694();

      if (qword_1002AC510 != -1)
      {
        sub_10001B230();
      }

      v263 = sub_1001F6688();
      sub_100019C94(v263, qword_1002E6180);
      v264 = sub_1001F6668();
      v265 = sub_1001F7298();
      if (os_log_type_enabled(v264, v265))
      {
        v15 = sub_10003A87C();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v264, v265, "SKAdNetwork signing failure: Source Domain or Source App ID is absent or of unexpected type", v15, 2u);
        sub_10003A72C();
      }

      sub_100037F28();
      sub_1000276A0();
      *v266 = 5;
      swift_willThrow();
      return v15;
    }

    sub_10003A6D8(&v313);
    v281 = sub_1001F7E28();
    v288 = v267;
  }

  sub_1000183C4(&qword_1002AC7E0);
  v268 = swift_allocObject();
  v269 = sub_10003A620(v268, xmmword_100200C80);
  v270 = v291;
  v268[3].n128_u64[1] = v269;
  v268[4].n128_u64[0] = v270;
  v268[4].n128_u64[1] = v292;
  sub_10003A6C8();

  v92 = &v313;
  v271 = sub_1001F7E28();
  sub_10003A644(v271, v272);
  v273 = v293;
  v268[7].n128_u64[0] = v290;
  v268[7].n128_u64[1] = v273;
  v274 = v288;
  v268[8].n128_u64[0] = v281;
  v268[8].n128_u64[1] = v274;
  sub_10003A6D8(&v318);

  v268[9].n128_u64[0] = sub_1001F7E28();
  v268[9].n128_u64[1] = v275;
  sub_10003A784();
  v268[10].n128_u64[0] = v277;
  v268[10].n128_u64[1] = v276;
  sub_10003A6D8(&v314);
  v278 = sub_1001F7E28();
  v286 = v268;
  v268[11].n128_u64[0] = v278;
  v268[11].n128_u64[1] = v279;
  v313 = v268;
  v100 = sub_1000183C4(&qword_1002ACA10);
  sub_10003A2B4();
  sub_10003A680();
  sub_1001F6A68();
  sub_10003A828();
LABEL_84:

  v308 = v92;
  sub_1001F6B88();
  v298 = v100;
  v299 = sub_1001F6B68();
  v159 = v158;
  (*(v307 + 8))(v24, v19);
  if (v159 >> 60 == 15)
  {

    sub_10003A6A0();

    goto LABEL_65;
  }

  v307 = v159;
  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v160 = sub_1001F6688();
  v161 = sub_100019C94(v160, qword_1002E6180);
  v162 = v308;

  v296 = v161;
  v163 = sub_1001F6668();
  v164 = sub_1001F7278();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = sub_10003A8AC();
    v166 = sub_10003A894();
    v294 = v163;
    v167 = v166;
    v313 = v166;
    *v165 = 136315138;
    *(v165 + 4) = sub_1000E4544(v298, v162, &v313);
    v168 = v164;
    v169 = v294;
    _os_log_impl(&_mh_execute_header, v294, v168, "Composed digest: %s", v165, 0xCu);
    sub_100019CCC(v167);
    sub_10003A72C();
    sub_10003A704();
  }

  else
  {
  }

  v202 = v284;
  v203 = v306;
  result = sub_1001F6328();
  if (v204 >> 60 != 15)
  {
    v205 = result;
    v206 = v204;

    sub_10003A694();

    sub_10003A6A0();

    sub_10003A720();

    v313 = v205;
    v314 = v206;
    sub_10003A318();
    sub_1001F6888();
    (*(v304 + 32))(v305, v15, v202);
    v313 = v299;
    v314 = v307;
    sub_10003A3D8();
    v207 = v303;
    sub_1001F68D8();
    (*(v301 + 32))(v203, v207, v302);
    v220 = sub_1001F68F8();
    v222 = v221;
    v15 = sub_1001F63B8(0);
    v224 = v223;
    sub_10003A380(v220, v222);

    sub_10003A7AC();
    v225 = sub_1001F6668();
    v226 = sub_1001F7278();

    if (os_log_type_enabled(v225, v226))
    {
      v227 = swift_slowAlloc();
      v308 = swift_slowAlloc();
      v313 = v308;
      *v227 = 136315394;
      *(v227 + 4) = sub_1000E4544(v15, v224, &v313);
      *(v227 + 12) = 2080;
      v228 = sub_1001F69A8();
      v230 = sub_1000E4544(v228, v229, &v313);

      *(v227 + 14) = v230;
      _os_log_impl(&_mh_execute_header, v225, v226, "Generated signature: %s from parameters: %s", v227, 0x16u);
      swift_arrayDestroy();
      sub_10003A72C();
      sub_10003A704();
      sub_10003A7DC();

      v231 = sub_10003A744();
      v232(v231);
      (*(v304 + 8))(v305, v284);
    }

    else
    {
      sub_10003A7DC();

      v250 = sub_10003A744();
      v251(v250);
      v252 = sub_10003A834();
      v253(v252);
    }

    return v15;
  }

  __break(1u);
  return result;
}

unint64_t sub_100039CBC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
  }

  else
  {
    if (a5)
    {
      a1 = a5;
    }

    else
    {
      v19 = a3;
      sub_100037F28();
      a4 = sub_1001F7FE8();
      a1 = v8;
    }

    v9 = qword_1002AC510;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1001F6688();
    sub_100019C94(v10, qword_1002E6180);

    v11 = sub_1001F6668();
    v12 = sub_1001F7298();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_1000E4544(a4, a1, &v18);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
      sub_100019CCC(v14);
    }

    else
    {
    }

    sub_100037F28();
    swift_allocError();
    *v16 = a3;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100039EB4(uint64_t a1, char a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      v8 = a5;
    }

    else
    {
      v20 = a3;
      sub_100037F28();
      a4 = sub_1001F7FE8();
      v8 = v9;
    }

    v10 = qword_1002AC510;

    if (v10 != -1)
    {
      sub_10001B230();
    }

    v11 = sub_1001F6688();
    sub_100019C94(v11, qword_1002E6180);

    v12 = sub_1001F6668();
    v13 = sub_1001F7298();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_10003A8AC();
      v15 = sub_10003A894();
      v19 = v15;
      *v14 = 136315138;
      v16 = sub_1000E4544(a4, v8, &v19);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
      sub_100019CCC(v15);
      sub_10003A72C();
      sub_10003A72C();
    }

    else
    {
    }

    sub_100037F28();
    sub_1000276A0();
    *v17 = a3;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_10003A070(char a1)
{
  result = 0xD000000000000035;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000033;
      break;
    case 2:
      result = 0xD000000000000039;
      break;
    case 4:
      result = 0xD00000000000003ALL;
      break;
    case 5:
      result = 0xD00000000000004BLL;
      break;
    case 6:
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 7:
      result = 0xD000000000000035;
      break;
    case 8:
      result = 0xD000000000000032;
      break;
    case 9:
      result = 0xD00000000000002FLL;
      break;
    case 10:
      result = 0xD00000000000003FLL;
      break;
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 12:
      result = 0xD000000000000038;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003A24C(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B34A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003A2B4()
{
  result = qword_1002ADF40;
  if (!qword_1002ADF40)
  {
    sub_100019BC4(&qword_1002ACA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF40);
  }

  return result;
}

unint64_t sub_10003A318()
{
  result = qword_1002ADF48;
  if (!qword_1002ADF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF48);
  }

  return result;
}

uint64_t sub_10003A36C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003A380(a1, a2);
  }

  return a1;
}

uint64_t sub_10003A380(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10003A3D8()
{
  result = qword_1002ADF50;
  if (!qword_1002ADF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SKANPostbackSigningError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SKANPostbackSigningError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003A580);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10003A5BC()
{
  result = qword_1002ADF58;
  if (!qword_1002ADF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ADF58);
  }

  return result;
}

uint64_t sub_10003A620(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = *(v3 - 240);
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = *(v3 - 312);
  return *(v3 - 304);
}

uint64_t sub_10003A644(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  result = *(v3 - 328);
  v2[12] = *(v3 - 424);
  v2[13] = result;
  return result;
}

uint64_t sub_10003A660()
{

  return swift_dynamicCast();
}

double sub_10003A6AC()
{

  return sub_1001F12A0(v1 - 160, v0);
}

uint64_t sub_10003A704()
{
}

uint64_t sub_10003A72C()
{
}

uint64_t sub_10003A76C()
{

  return sub_1001F7758();
}

uint64_t sub_10003A794()
{
}

uint64_t sub_10003A7B8(uint64_t a1, uint64_t a2)
{
  *(v2 - 360) = a1;
  *(v2 - 336) = a2;
}

uint64_t sub_10003A7DC()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 248);

  return sub_10003A36C(v2, v3);
}

uint64_t sub_10003A7F8()
{
}

uint64_t sub_10003A848(uint64_t result, uint64_t a2)
{
  *(v2 - 376) = result;
  *(v2 - 368) = a2;
  return result;
}

void sub_10003A85C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, v6, a4, a5, 2u);
}

uint64_t sub_10003A87C()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A894()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A8AC()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A8E4()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  sub_10003E830();
  v3 = sub_10003E8E0();
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_1001200D0();

  return _swift_continuation_await(v0);
}

uint64_t sub_10003A9C4()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  sub_10003E830();
  v3 = sub_10003E8E0();
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_10011DE78();

  return _swift_continuation_await(v0);
}

uint64_t sub_10003AA84()
{
  sub_10003E7B8();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E73C();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_10003AB9C()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  *(v1 + 56) = v1 + 80;
  sub_10003E830();
  v3 = sub_10003E8E0();
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_100120368();

  return _swift_continuation_await(v0);
}

uint64_t sub_10003AC64()
{
  sub_10003E7B8();
  sub_10003E7A0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    sub_10003E7D4();

    return v7();
  }
}

uint64_t sub_10003ADB4()
{
  sub_10003E7B8();
  sub_10003E890();
  *(v1 + 16) = v2;
  *(v1 + 56) = v1 + 80;
  sub_10003E830();
  v3 = sub_10003E8E0();
  sub_10003E8C8(v3);

  sub_10003E7C4();
  sub_10012049C();

  return _swift_continuation_await(v0);
}

uint64_t EventLoopFuture.get()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10003AEC4, 0, 0);
}

uint64_t sub_10003AEC4()
{
  sub_10003E794();
  v1 = v0[4];
  v2 = sub_10003E75C();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_10003AF7C;
  v4 = v0[2];
  v5 = v0[3];

  return v7(v4, 0, 0, sub_10003B14C, v5, v3);
}

uint64_t sub_10003AF7C()
{
  sub_10003E794();
  sub_10003E7AC();
  sub_10003E7A0();
  *v3 = v2;
  v4 = *v1;
  sub_10003E72C();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10003B098, 0, 0);
  }

  else
  {
    sub_10003E824();

    return v7();
  }
}

uint64_t sub_10003B0BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v3 + 80);
  *(v4 + 24) = a1;
  EventLoopFuture.whenComplete(_:)();
}

uint64_t sub_10003B154(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_1000183C4(&qword_1002ACE88);
    v5 = swift_allocError();
    *v6 = a1;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v5);
  }

  else
  {

    return _swift_continuation_throwingResume(a3);
  }
}

uint64_t sub_10003B1F8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_1000183C4(&qword_1002ACE88);
    v5 = swift_allocError();
    *v6 = a1;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v5);
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;

    return _swift_continuation_throwingResume(a3);
  }
}

void sub_10003B2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = __chkstk_darwin(a1, a2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v19 - v11;
  v13 = sub_100019BC4(&qword_1002ACE88);
  v14 = sub_1001F8158();
  __chkstk_darwin(v14, v15);
  v17 = (&v19 - v16);
  (*(v18 + 16))(&v19 - v16, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v17;
    sub_10003B57C(&v20, a2, a3, v13);
  }

  else
  {
    (*(v6 + 32))(v12, v17, a3);
    (*(v6 + 16))(v9, v12, a3);
    sub_10003B504(v9, a2, a3);
    (*(v6 + 8))(v12, a3);
  }
}

uint64_t sub_10003B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return _swift_continuation_throwingResume(a2);
}

void sub_10003B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  JUMPOUT(0x1001F93C8);
}

uint64_t sub_10003B610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1001F7008();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_10003B6A4, v6, v8);
}

uint64_t sub_10003B6A4()
{
  sub_10003E7B8();
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_10003E70C;
  v3 = swift_continuation_init();
  v1(v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t EventLoopGroup.shutdownGracefully()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003B760()
{
  sub_10003E7B8();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10003E86C(v2);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  v5 = sub_10003E878(v4);
  *v5 = v6;
  v5[1] = sub_10003B850;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10003B850()
{
  sub_10003E794();
  sub_10003E7AC();
  sub_10003E7A0();
  *v3 = v2;
  v4 = *v1;
  sub_10003E72C();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_10003B990;
  }

  else
  {
    v7 = sub_10003B96C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003B9B4(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADF68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  EventLoopGroup.shutdownGracefully(_:)();
}

uint64_t sub_10003BB20(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ADF68);
    return sub_1001F7018();
  }

  else
  {
    sub_1000183C4(&qword_1002ADF68);
    return sub_1001F7028();
  }
}

uint64_t EventLoopPromise.completeWithTask(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000183C4(&qword_1002ADF60);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v15 - v10;
  v12 = sub_1001F7058();
  sub_100018460(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;

  return sub_10003DEB8(0, 0, v11, &unk_100200E28, v13);
}

uint64_t sub_10003BC98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = *(a7 - 8);
  v9 = swift_task_alloc();
  v7[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_10003BDEC;

  return v12(v9);
}

uint64_t sub_10003BDEC()
{
  sub_10003E794();
  sub_10003E7AC();
  sub_10003E7A0();
  *v3 = v2;
  v4 = *v1;
  sub_10003E72C();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_10003BF78;
  }

  else
  {
    v7 = sub_10003BEEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003BEEC()
{
  sub_10003E7B8();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  EventLoopPromise.succeed(_:)(v1, v0[2], v3);
  (*(v2 + 8))(v1, v3);

  sub_10003E824();

  return v4();
}

uint64_t sub_10003BF78()
{
  sub_10003E794();
  EventLoopPromise.fail(_:)(*(v0 + 56));

  sub_10003E824();

  return v1();
}

uint64_t sub_10003BFE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003C030(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = sub_10003E85C(v9);
  *v10 = v11;
  v10[1] = sub_10003C108;

  return sub_10003BC98(a1, v3, v4, v6, v8, v7, v5);
}

uint64_t sub_10003C108()
{
  sub_10003E794();
  sub_10003E7AC();
  v1 = *v0;
  sub_10003E72C();
  *v2 = v1;

  sub_10003E824();

  return v3();
}

uint64_t Channel.writeAndFlush<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_10003E71C();
}

{
  return sub_10003F314(a1, a2, a3, a4, 233, ChannelOutboundInvoker.writeAndFlush(_:file:line:));
}

uint64_t sub_10003C204()
{
  sub_10003E794();
  v0[7] = Channel.writeAndFlush<A>(_:)(v0[2], v0[3], v0[4], v0[5]);
  v1 = sub_10003E75C();
  v0[8] = v1;
  *v1 = v0;
  v9 = sub_10003E74C(v1, v2, v3, v4, v5, v6, v7, v8, v11);

  return v9();
}

uint64_t sub_10003C2A0()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_10003C3A4;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003C3A4()
{
  sub_10003E794();

  sub_10003E824();

  return v0();
}

uint64_t Channel.setOption<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003C420()
{
  sub_10003E794();
  v1 = (*(v0[6] + 64))(v0[2], v0[3], v0[5], v0[7], v0[4]);
  sub_10003E7EC(v1);
  v2 = sub_10003E75C();
  v3 = sub_10003E818(v2);
  *v3 = v4;
  v12 = sub_10003E74C(v3, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

uint64_t sub_10003C4C8()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_10003E700;
  }

  else
  {

    v7 = sub_10003E6F0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t Channel.getOption<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_10003E71C();
}

uint64_t sub_10003C5EC()
{
  sub_10003E794();
  v1 = (*(v0[6] + 72))(v0[3], v0[5], v0[7], v0[4]);
  sub_10003E7EC(v1);
  v2 = swift_task_alloc();
  v3 = sub_10003E818(v2);
  *v3 = v4;
  v3[1] = sub_10003C69C;
  v5 = v0[2];

  return EventLoopFuture.get()(v5);
}

uint64_t sub_10003C69C()
{
  sub_10003E794();
  sub_10003E7AC();
  v3 = v2;
  sub_10003E73C();
  *v4 = v3;
  v5 = *v1;
  sub_10003E72C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10003E700, 0, 0);
  }

  else
  {

    sub_10003E824();

    return v7();
  }
}