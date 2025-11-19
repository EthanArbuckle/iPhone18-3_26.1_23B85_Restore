void *sub_10007DF78(void *__c, size_t __len, void *__b)
{
  if ((__len & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (__len)
  {
    return memset(__b, __c, __len);
  }

  else
  {
    return __b;
  }

  return __c;
}

uint64_t sub_10007DFA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007DFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B10A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E044(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B10A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10007E210(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, __int16 a14, char a15)
{

  return ByteBuffer.setRepeatingByte(_:count:at:)(v17, v15, v16);
}

void sub_10007E264()
{

  ByteBuffer.setDispatchData(_:at:)();
}

void sub_10007E2E4(uint64_t a1, unint64_t a2, Swift::UInt32 a3)
{

  sub_10007C1E8(a1, a2, v3, a3);
}

uint64_t sub_10007E33C()
{
}

uint64_t sub_10007E360()
{
}

uint64_t sub_10007E384()
{
}

uint64_t sub_10007E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(a1, a2, a3, a4, v4);
}

uint64_t sub_10007E410()
{
}

uint64_t AddressedEnvelope.init(remoteAddress:data:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = &a7[*(type metadata accessor for AddressedEnvelope() + 32)];
  *a7 = a1;
  sub_10007F3C0();
  result = (*(v15 + 32))(&a7[v16], a2, a6);
  *v14 = a3;
  *(v14 + 1) = a4;
  *(v14 + 2) = a5;
  return result;
}

uint64_t AddressedEnvelope.remoteAddress.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AddressedEnvelope.remoteAddress.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AddressedEnvelope.metadata.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  sub_10007E65C(*v2, v2[1]);
  return v3;
}

uint64_t sub_10007E65C(uint64_t result, uint64_t a2)
{
  if (result != 4)
  {
    return sub_10002D824(a2);
  }

  return result;
}

uint64_t AddressedEnvelope.metadata.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(a4 + 32));
  result = sub_10003709C(*v8, v8[1]);
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  return result;
}

uint64_t AddressedEnvelope.init(remoteAddress:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = &a4[*(type metadata accessor for AddressedEnvelope() + 32)];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 4;
  *a4 = a1;
  sub_10007F3C0();
  v11 = *(v10 + 32);

  return v11(&a4[v9], a2, a3);
}

uint64_t AddressedEnvelope.Metadata.packetInfo.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10002D83C(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

BOOL static AddressedEnvelope.Metadata.__derived_struct_equals(_:_:)(char a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  v8 = a5 & 0xF000000000000007;
  if ((~a2 & 0xF000000000000007) != 0)
  {
    if (v8 != 0xF000000000000007)
    {

      v12 = static SocketAddress.== infix(_:_:)(a2, a5);
      sub_10002D83C(a5);
      if (v12 && a3 == a6)
      {
        return 1;
      }
    }

    return 0;
  }

  return v8 == 0xF000000000000007;
}

void AddressedEnvelope.Metadata.hash(into:)(uint64_t a1, unsigned __int8 a2, unint64_t a3, Swift::UInt a4)
{
  sub_1001F8088(a2);
  if ((~a3 & 0xF000000000000007) != 0)
  {
    sub_1001F8098(1u);
    SocketAddress.hash(into:)(a1, a3);
    sub_1001F8088(a4);
  }

  else
  {
    sub_1001F8098(0);
  }
}

Swift::Int AddressedEnvelope.Metadata.hashValue.getter(unsigned __int8 a1, unint64_t a2, Swift::UInt a3)
{
  sub_1001F8068();
  AddressedEnvelope.Metadata.hash(into:)(v7, a1, a2, a3);
  return sub_1001F80D8();
}

Swift::Int sub_10007E984()
{
  sub_1001F8068();
  AddressedEnvelope.Metadata.hash(into:)(v2, *v0, *(v0 + 8), *(v0 + 16));
  return sub_1001F80D8();
}

uint64_t AddressedEnvelope.description.getter()
{
  sub_1001F77B8(49);
  v2._object = 0x8000000100225B50;
  v2._countAndFlagsBits = 0xD000000000000023;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = SocketAddress.description.getter(*v0);
  sub_1001F6CA8(v3);

  v4._countAndFlagsBits = 0x203A61746164202CLL;
  v4._object = 0xE800000000000000;
  sub_1001F6CA8(v4);
  sub_1001F7E68();
  v5._countAndFlagsBits = 32032;
  v5._object = 0xE200000000000000;
  sub_1001F6CA8(v5);
  return 0;
}

Swift::Int NIOPacketInfo.hashValue.getter(unint64_t a1, Swift::UInt a2)
{
  sub_1001F8068();
  SocketAddress.hash(into:)(v5, a1);
  sub_1001F8088(a2);
  return sub_1001F80D8();
}

Swift::Int sub_10007EBB8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001F8068();
  NIOPacketInfo.hash(into:)(v4, v1, v2);
  return sub_1001F80D8();
}

unint64_t sub_10007EC34()
{
  result = qword_1002B10A8;
  if (!qword_1002B10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B10A8);
  }

  return result;
}

unint64_t sub_10007EC8C()
{
  result = qword_1002B10B0[0];
  if (!qword_1002B10B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B10B0);
  }

  return result;
}

uint64_t sub_10007ECE8()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AddressedEnvelope.Metadata();
    v0 = sub_1001F74B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10007ED9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFB)
  {
    v8 = 251;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 < a2)
  {
    v10 = ((v9 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 24;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v10);
        if (v16)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10007EEF4);
      case 4:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

LABEL_22:
        v18 = v16 - 1;
        if (v12)
        {
          v18 = 0;
          LODWORD(v12) = *a1;
        }

        return v8 + (v12 | v18) + 1;
      default:
        break;
    }
  }

  v19 = (a1 + v7 + 8) & ~v7;
  if (v6 >= 0xFB)
  {
    return sub_10001C990(v19, v6, v4);
  }

  v20 = *((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 >= 4;
  v22 = v20 - 4;
  if (!v21)
  {
    v22 = -1;
  }

  if (v22 + 1 >= 2)
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

void sub_10007EF08(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFB)
  {
    v9 = 251;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 24);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        return;
      case 2:
        *&a1[v12] = v17;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x10007F100);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v19 = &a1[v10 + 8] & ~v10;
        if (v8 < 0xFB)
        {
          v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0xFB)
          {
            *v20 = 0;
            v20[1] = 0;
            v20[2] = 0;
            *v20 = a2 - 252;
          }

          else
          {
            *v20 = a2 + 4;
          }
        }

        else
        {

          sub_100018460(v19, a2, v8, v6);
        }
      }

      return;
  }
}

uint64_t sub_10007F140()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10007F17C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[24])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007F1B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NIOExplicitCongestionNotificationState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10007F2C8);
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

uint64_t sub_10007F300(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 16))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_10007F354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t NIOHTTPClientUpgradeHandler.__allocating_init(upgraders:httpHandlers:upgradeCompletionHandler:)()
{
  sub_1000814DC();
  v0 = swift_allocObject();
  NIOHTTPClientUpgradeHandler.init(upgraders:httpHandlers:upgradeCompletionHandler:)();
  return v0;
}

Swift::Int sub_10007F4C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

unint64_t NIOHTTPClientUpgradeHandler.init(upgraders:httpHandlers:upgradeCompletionHandler:)()
{
  sub_1000814DC();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  result = sub_10002EC5C(0x10uLL);
  *(v1 + 72) = result;
  *(v1 + 80) = v6;
  *(v1 + 88) = v7;
  if (*(v4 + 16))
  {
    *(v1 + 16) = v4;
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void NIOHTTPClientUpgradeHandler.write(context:data:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(*(v3 + 56))
  {
    case 0:
      sub_10007F7A8(a2, v8);
      ChannelHandlerContext.write(_:promise:)();
      sub_100034310(v8);
      break;
    case 1:
    case 3:
      ChannelHandlerContext.write(_:promise:)();
      break;
    case 4:
    case 5:
      if (a3)
      {
        sub_10007F754();
        sub_1000276A0();
        *v4 = 4;
        swift_errorRetain();
        sub_1000A13B0();
      }

      sub_10007F754();
      sub_1000276A0();
      v6 = 4;
      goto LABEL_9;
    default:
      if (a3)
      {
        sub_10007F754();
        sub_1000276A0();
        *v7 = 3;
        swift_errorRetain();
        sub_1000A13B0();
      }

      sub_10007F754();
      sub_1000276A0();
      v6 = 3;
LABEL_9:
      *v5 = v6;
      ChannelHandlerContext.fireErrorCaught(_:)();

      break;
  }
}

unint64_t sub_10007F754()
{
  result = qword_1002B11B8;
  if (!qword_1002B11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B11B8);
  }

  return result;
}

uint64_t sub_10007F7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000183C4(&qword_1002ADD38);
  sub_1000375F8();
  v10 = v7;
  v11 = v8;
  v12 = v9;
  if (HIBYTE(v9))
  {
    sub_100034284(v7, v8, v9, SHIBYTE(v9));

    return sub_10002EE44(a1, a2);
  }

  else
  {
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v13 = *(v3 + 56);
    *(v3 + 56) = xmmword_100206DF0;

    sub_100080E68(v13);
    sub_10007F8DC();
    sub_10007FAF8(&v18);
    v14 = v18;
    v15 = v19;
    v16 = v20;
    *(a2 + 24) = v6;
    result = sub_100034284(v10, v11, v12, 0);
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 20) = 0;
    *(a2 + 56) = 2;
  }

  return result;
}

void sub_10007F8DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100026064(v3, v19);
      v5 = v20;
      v6 = v21;
      sub_10001AE68(v19, v20);
      v7 = (*(v6 + 16))(v5, v6);
      sub_100019CCC(v19);
      v8 = *(v7 + 16);
      v9 = v4[2];
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > v4[3] >> 1)
      {
        sub_100032370();
        v4 = v10;
      }

      if (*(v7 + 16))
      {
        if ((v4[3] >> 1) - v4[2] < v8)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = v4[2];
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_20;
          }

          v4[2] = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      v3 += 40;
      if (!--v2)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_16:
    v19[0] = &off_10027A408;
    sub_1001BA7E0(v4);
    sub_1000183C4(&qword_1002ACA10);
    sub_10003A2B4();
    v14 = sub_1001F6A68();
    v16 = v15;

    v17._countAndFlagsBits = 0x697463656E6E6F43;
    v17._object = 0xEA00000000006E6FLL;
    v18._countAndFlagsBits = v14;
    v18._object = v16;
    HTTPHeaders.add(name:value:)(v17, v18);
  }
}

uint64_t sub_10007FAF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v30 = _swiftEmptyArrayStorage;

    sub_1000375CC(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + 32;
    do
    {
      sub_100026064(v7, v27);
      v8 = v28;
      v9 = v29;
      sub_10001AE68(v27, v28);
      (*(v9 + 8))(v8, v9);
      v10 = sub_1001F6BB8();
      v12 = v11;

      sub_100019CCC(v27);
      v30 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000375CC(v13 > 1, v14 + 1, 1);
        v6 = v30;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v7 += 40;
      --v5;
    }

    while (v5);

    v2 = v1;
  }

  v27[0] = v6;
  sub_1000183C4(&qword_1002ACA10);
  sub_10003A2B4();
  v16 = sub_1001F6A68();
  v18 = v17;

  v19._countAndFlagsBits = 0x65646172677055;
  v19._object = 0xE700000000000000;
  v20._countAndFlagsBits = v16;
  v20._object = v18;
  HTTPHeaders.add(name:value:)(v19, v20);

  v22 = *(v2 + 16);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;

    do
    {
      sub_100026064(v24, v27);
      v25 = v28;
      v26 = v29;
      sub_10001AE68(v27, v28);
      (*(v26 + 24))(a1 + 8, v25, v26);
      sub_100019CCC(v27);
      v24 += 40;
      --v23;
    }

    while (v23);
  }

  return result;
}

void NIOHTTPClientUpgradeHandler.channelRead(context:data:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    sub_1000183C4(&qword_1002ADD48);
    sub_1000375F4();
    v8 = HIBYTE(v7);
    v9 = *(v2 + 56);
    switch(v9)
    {
      case 0uLL:
        sub_10007F754();
        sub_1000276A0();
        v14 = 6;
        goto LABEL_18;
      case 1uLL:
        sub_10007FF5C(a1, v5, v6, v7);
        goto LABEL_14;
      case 2uLL:
      case 3uLL:
        if (v8 != 2)
        {
          goto LABEL_14;
        }

        v10 = sub_1000814B0();
        sub_100037548(v10, v11, v12, 2);
        *(v2 + 48) = 1;
        goto LABEL_3;
      case 4uLL:
        sub_10007F754();
        sub_1000276A0();
        v14 = 7;
LABEL_18:
        *v13 = v14;
        ChannelHandlerContext.fireErrorCaught(_:)();
        v26 = sub_1000814B0();
        sub_100037548(v26, v27, v28, v8);
        sub_1000814C0();

        return;
      case 5uLL:
        ChannelHandlerContext.fireChannelRead(_:)();
        goto LABEL_14;
      default:
        if (v8 == 2)
        {
          *(v2 + 48) = 1;

          v9(v15);
          v16 = sub_1000814B0();
          sub_100037548(v16, v17, v18, 2);
          sub_1000814C0();

          sub_100080E68(v19);
        }

        else
        {
LABEL_14:
          sub_1000814B0();
          sub_1000814C0();

          sub_100037548(v21, v22, v23, v24);
        }

        return;
    }
  }

  swift_beginAccess();
  sub_10002F1C8(a2);
  swift_endAccess();
LABEL_3:
  sub_1000814C0();
}

void sub_10007FF5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (HIBYTE(a4))
  {

    sub_100080114(a1, a2, a3, a4, 1u);
  }

  else
  {
    if (*(a2 + 32) == 1)
    {

      v8 = sub_100080230(a1, a2, a3, a4);
      sub_10008036C(v8, v9);
    }

    else
    {
      sub_1000811E4(a2, a3, a4, 0);
      sub_100080114(a1, a2, a3, a4, 8u);
    }
  }
}

void sub_100080114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v10 = a5;
  v11 = *(v5 + 56);
  *(v5 + 56) = xmmword_100206E00;
  sub_100080E68(v11);
  if (v10 != 8)
  {
    sub_10007F754();
    swift_allocError();
    *v12 = a5;
    ChannelHandlerContext.fireErrorCaught(_:)();
  }

  v13[3] = sub_1000183C4(&qword_1002ADD48);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v14 = 2;
  sub_1000811E4(a2, a3, a4, SHIBYTE(a4));
  ChannelHandlerContext.fireChannelRead(_:)();
  sub_100034310(v13);
  ChannelPipeline.removeHandler(context:promise:)();
}

uint64_t (*sub_100080230(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4))()
{
  HTTPHeaders.subscript.getter();
  if (*(v10 + 16))
  {

    v11 = sub_1001F74E8();
    v13 = v12;

    v14 = sub_1000803C4(a1, v11, v13, a2, a3, a4);
    if (!v5)
    {
      v4 = v14;
    }
  }

  else
  {

    sub_10007F754();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10008036C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = *(v2 + 56);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  sub_100080E68(v4);
  v5 = *(v2 + 48);

  if (v5 == 1)
  {
    return a1(result);
  }

  return result;
}

uint64_t (*sub_1000803C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6))()
{
  v9 = *(v6 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + 32;

  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {

      v37 = 0;
      memset(v36, 0, sizeof(v36));
      goto LABEL_13;
    }

    if (i >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    sub_100026064(v11, &v33);
    v14 = v34;
    v15 = v35;
    sub_10001AE68(&v33, v34);
    (*(v15 + 8))(v14, v15);
    v16 = sub_1001F6BB8();
    v18 = v17;

    if (v16 == a2 && v18 == a3)
    {
      break;
    }

    v20 = sub_1001F7EA8();

    if (v20)
    {
      goto LABEL_12;
    }

    result = sub_100019CCC(&v33);
    v11 += 40;
  }

LABEL_12:

  sub_10002DD3C(&v33, v36);
LABEL_13:
  sub_100057CB8(v36, &v31, &qword_1002B1310);
  if (v32)
  {
    sub_10002DD3C(&v31, &v33);
    v21 = v34;
    v22 = v35;
    sub_10001AE68(&v33, v34);
    if ((*(v22 + 32))(a4, a5, a6, v21, v22))
    {
      sub_100081258(v36);
      sub_100026064(&v33, &v31);
      v23 = swift_allocObject();
      *(v23 + 16) = v27;
      *(v23 + 24) = a1;
      sub_10002DD3C(&v31, v23 + 32);
      *(v23 + 72) = a4;
      *(v23 + 80) = a5;
      *(v23 + 88) = a6;

      sub_100019CCC(&v33);
      return sub_100081318;
    }

    else
    {
      sub_10007F754();
      swift_allocError();
      *v25 = 2;
      swift_willThrow();
      sub_100081258(v36);
      return sub_100019CCC(&v33);
    }
  }

  else
  {
    sub_100081258(&v31);
    sub_10007F754();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return sub_100081258(v36);
  }
}

uint64_t sub_1000806B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = *(a1 + 56);
  *(a1 + 56) = xmmword_100206E10;
  sub_100080E68(v12);
  sub_10008095C(a2);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100081330;
  *(v14 + 24) = v13;

  v15 = sub_10019F6C8();

  sub_100026064(a3, v20);
  v16 = swift_allocObject();
  sub_10002DD3C(v20, v16 + 16);
  *(v16 + 56) = a2;
  *(v16 + 64) = a4;
  *(v16 + 72) = a5;
  *(v16 + 80) = a6;

  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOHTTPClientUpgradeHandler.swift", 129, 2, 308, v15, sub_1000813C8, v16);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10008141C;
  *(v18 + 24) = v17;

  sub_10019F6C8();

  swift_retain_n();

  sub_10011DE78();
}

uint64_t sub_10008095C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1001F78C8();
    v5 = v3 + 40;
    do
    {
      swift_unknownObjectRetain();
      ChannelPipeline.removeHandler(_:)();
      swift_unknownObjectRelease();
      sub_1001F7878();
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
      v5 += 16;
      --v4;
    }

    while (v4);
    v6 = *(*(a1 + 32) + 56);
    ObjectType = swift_getObjectType();
    v8 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[8], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1084, ObjectType, &type metadata for ()[8], v6);
    swift_unknownObjectRetain();
    sub_100110F70(_swiftEmptyArrayStorage, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v8 = v9;
    swift_unknownObjectRelease();
  }

  return v8;
}

unint64_t sub_100080AF4(uint64_t a1, uint64_t a2)
{
  (*(a1 + 32))(a2);
  v3 = *(a1 + 56);
  *(a1 + 56) = xmmword_100206E20;

  return sub_100080E68(v3);
}

uint64_t sub_100080B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  sub_10001AE68(a1, v9);
  return (*(v10 + 40))(a2, a3, a4, a5, v9, v10);
}

void sub_100080BC0(void *a1)
{
  swift_beginAccess();
  v2 = a1[10];
  v3 = a1[11];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 += *(a1[9] + 16);
  }

  v12 = v4;
  while (1)
  {
    v5 = a1[9];
    v6 = v3 - v2;
    if (v3 < v2)
    {
      v6 += *(v5 + 16);
    }

    if (v6 <= 0)
    {
      break;
    }

    swift_beginAccess();
    if (v3 == v2)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (HIDWORD(v2))
    {
      goto LABEL_25;
    }

    v7 = *(v5 + 16);
    if (v2 >= v7)
    {
      goto LABEL_26;
    }

    sub_100057CB8(v5 + (v2 << 6) + 32, &v13, &qword_1002ADD30);
    if (v15[24] == 255)
    {
      goto LABEL_29;
    }

    v16[0] = v13;
    v16[1] = v14;
    v17[0] = *v15;
    *(v17 + 9) = *&v15[9];
    if (v3 >= v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if ((v3 - v2 + v8) < 1)
    {
      goto LABEL_27;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[9] = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100111F84();
      v5 = v10;
    }

    v14 = 0u;
    memset(v15, 0, 24);
    v13 = 0u;
    v15[24] = -1;
    a1[9] = v5;
    if (v2 >= *(v5 + 16))
    {
      goto LABEL_28;
    }

    sub_10008142C(&v13, v5 + (v2 << 6) + 32);
    a1[9] = v5;
    a1[10] = (*(v5 + 16) + 0x1FFFFFFFFLL) & (v2 + 1);
    swift_endAccess();
    ChannelHandlerContext.fireChannelRead(_:)();
    sub_100034310(v16);
    v2 = a1[10];
    v3 = a1[11];
  }

  if (v12 >= 1)
  {
    ChannelHandlerContext.fireChannelReadComplete()();
  }

  v11 = a1[7];
  *(a1 + 7) = xmmword_100206E30;
  sub_100080E68(v11);
}

uint64_t NIOHTTPClientUpgradeHandler.deinit()
{

  sub_100080E68(*(v0 + 56));

  return v0;
}

uint64_t NIOHTTPClientUpgradeHandler.__deallocating_deinit()
{
  NIOHTTPClientUpgradeHandler.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_100080E68(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

unint64_t sub_100080E80()
{
  result = qword_1002B11C0;
  if (!qword_1002B11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B11C0);
  }

  return result;
}

uint64_t sub_100080F08(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100080F20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100080F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_100080FC8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TransactionHistoryResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100081088(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x100081154);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100081190()
{
  result = qword_1002B1308;
  if (!qword_1002B1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1308);
  }

  return result;
}

uint64_t sub_1000811E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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

uint64_t sub_100081258(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B1310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000812C0()
{

  sub_100019CCC(v0 + 32);

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100081338()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100081378()
{
  sub_100019CCC(v0 + 16);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1000813DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008142C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADD30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000814F0(uint64_t a1)
{
  v1 = sub_1000817D8(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);

  return v2;
}

_UNKNOWN **sub_100081528(uint64_t a1)
{
  v1 = sub_1000817D8(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  if (v2 == 5)
  {
    return 0;
  }

  result = sub_1001DC9A8(v2);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < result[2])
  {
    v4 = result[v3 + 4];

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000815A0(char a1, char a2, char a3, char a4, char a5, uint64_t *a6, uint64_t *a7, uint64_t a8, char a9, uint64_t a10)
{
  v11 = a10;
  v12 = *a7;
  v13 = a7[1];
  v15 = a7[2];
  v14 = a7[3];
  v16 = a7[4];
  v17 = a7[5];
  v18 = a7[6];
  v19 = a7[7];
  v20 = a7[8];
  v21 = a7[9];
  v23 = *a6;
  v22 = a6[1];
  v25 = a6[2];
  v24 = a6[3];
  v26 = a6[4];
  *(v10 + 16) = a1 & 1;
  *(v10 + 17) = a2 & 1;
  *(v10 + 18) = a3 & 1;
  *(v10 + 19) = a4 & 1;
  *(v10 + 20) = a5 & 1;
  if (!v22)
  {
    v36 = v12;
    v37 = v14;
    v38 = v17;
    v39 = v16;
    v40 = v19;
    v41 = v18;
    v43 = v21;
    v45 = v20;
    v27 = a8;
    if (qword_1002AC458 != -1)
    {
      swift_once();
    }

    v23 = qword_1002E6098;
    v22 = unk_1002E60A0;
    v25 = qword_1002E60A8;
    v24 = unk_1002E60B0;
    v26 = qword_1002E60B8;

    a8 = v27;
    v21 = v43;
    v20 = v45;
    v19 = v40;
    v18 = v41;
    v17 = v38;
    v16 = v39;
    v12 = v36;
    v14 = v37;
  }

  v28 = a9;
  *(v10 + 24) = v23;
  *(v10 + 32) = v22;
  *(v10 + 40) = v25;
  *(v10 + 48) = v24;
  *(v10 + 56) = v26;
  if (!v13)
  {
    v42 = a8;
    if (qword_1002AC4A0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1002E60F0, 0x50uLL);
    v44 = __dst[9];
    v46 = __dst[8];
    v29 = __dst[6];
    v30 = __dst[7];
    v31 = __dst[4];
    v17 = __dst[5];
    v15 = __dst[2];
    v32 = __dst[3];
    v33 = __dst[0];
    v13 = __dst[1];
    sub_10007B844(__dst, v47);
    v12 = v33;
    v14 = v32;
    v16 = v31;
    v19 = v30;
    v18 = v29;
    v21 = v44;
    v20 = v46;
    a8 = v42;
    v28 = a9;
  }

  *(v10 + 72) = v12;
  *(v10 + 80) = v13;
  *(v10 + 88) = v15;
  *(v10 + 96) = v14;
  *(v10 + 104) = v16;
  *(v10 + 112) = v17;
  *(v10 + 120) = v18;
  *(v10 + 128) = v19;
  *(v10 + 136) = v20;
  *(v10 + 144) = v21;
  if (v28)
  {
    v34 = 0;
  }

  else
  {
    v34 = a8;
  }

  *(v10 + 152) = v34;
  if (!sub_10013B560(a10))
  {

    if (qword_1002AC528 != -1)
    {
      swift_once();
    }

    v11 = qword_1002E61A0;
  }

  *(v10 + 64) = v11;
  return v10;
}

uint64_t sub_1000817D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = sub_10013B560(v3);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return 0;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
      v7 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v7 + 16) == a1)
    {

      return v7;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000818D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = sub_10013B560(v3);

  v6 = 0;
  while (1)
  {
    if (v4 == v6)
    {

      return 0;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = *(sub_1001F7808() + 16);
      result = swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_10:

        return v6;
      }

      goto LABEL_6;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    if (*(*(v3 + 8 * v6 + 32) + 16) == a1)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000819D0(char a1, uint64_t a2)
{
  result = sub_1000818D4(a2);
  if ((v5 & 1) == 0)
  {
    v6 = result;
    sub_100082DF8();
    v7 = *(v2 + 64);
    sub_1001C19A8(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_1001F7808();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    swift_endAccess();
    *(v8 + 24) = a1 & 1;
  }

  return result;
}

uint64_t sub_100081A6C(uint64_t a1, char a2, uint64_t a3)
{
  result = sub_1000818D4(a3);
  if ((v7 & 1) == 0)
  {
    v8 = result;
    sub_100082DF8();
    v9 = *(v3 + 64);
    sub_1001C19A8(v8, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_1001F7808();
    }

    else
    {
    }

    swift_endAccess();
    sub_1001DC2D4(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_100081B18(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027ABB8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100081B74(char a1)
{
  result = 0x656C62617369645FLL;
  switch(a1)
  {
    case 1:
      v3 = 5;
      goto LABEL_8;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      v3 = 10;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 4:
      return result;
    case 5:
      result = 0x656C61636F6C5FLL;
      break;
    case 6:
    case 10:
      result = 0x694B65726F74735FLL;
      break;
    case 7:
      result = 0x726665726F74735FLL;
      break;
    case 8:
      result = 0x746152656D69745FLL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_100081D30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100081B18(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100081D60@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100081B74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100081DA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100081B64();
  *a1 = result;
  return result;
}

uint64_t sub_100081DD0@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.Option.ipv6_multicast_loop.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100081DF8(uint64_t a1)
{
  v2 = sub_100082840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100081E34(uint64_t a1)
{
  v2 = sub_100082840();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100081E70(void *a1)
{
  sub_1000183C4(&qword_1002B1438);
  sub_10001A278();
  __chkstk_darwin(v3, v4);
  v5 = a1[3];
  v6 = a1[4];
  v33 = a1;
  sub_10001AE68(a1, v5);
  sub_100082840();
  sub_1001F8178();
  if (!v1)
  {
    sub_100082DAC();
    v7 = sub_1001F7C18();
    sub_100082DAC();
    v8 = sub_1001F7C18();
    sub_100082DAC();
    v24 = sub_1001F7C18();
    sub_100082DAC();
    v23 = sub_1001F7C18();
    sub_100082DAC();
    v22 = sub_1001F7C18();
    v26[0] = 5;
    sub_10008293C();
    sub_100082E18();
    v30[0] = v27;
    v30[1] = v28;
    v31 = v29;
    sub_100082990();
    sub_100082E18();
    memcpy(__dst, v26, 0x50uLL);
    LOBYTE(v25) = 8;
    sub_100082DAC();
    v10 = sub_1001F7C38();
    v20 = v11;
    v21 = v10;
    sub_1000183C4(&qword_1002B1418);
    sub_1000829E4(&qword_1002B1458, &qword_1002B1460);
    sub_100082DD0();
    sub_1001F7C48();
    if (v25)
    {
      v12 = v25;
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    v6 = swift_allocObject();
    sub_1000815A0(v7, v8, v24, v23, v22, v30, __dst, v21, v20 & 1, v12);

    sub_100081528(1);
    if ((v13 & 1) != 0 && (sub_1000183C4(&qword_1002B02E8), LOBYTE(v27) = 9, sub_100082AB0(&qword_1002B1468, &qword_1002B02E8), sub_100082DD0(), sub_1001F7CB8(), v26[0] != 2) && (v26[0] & 1) != 0 && (sub_1000183C4(&qword_1002B1470), LOBYTE(v27) = 10, sub_100082AB0(&qword_1002B1478, &qword_1002B1470), sub_100082DD0(), sub_1001F7CB8(), v26[8] != 1))
    {
      sub_1000819D0(1, 1);
      v16 = sub_1001DC42C();
      sub_100081A6C(v16, v17 & 1, 1);

      v18 = sub_100082DBC();
      v19(v18);
    }

    else
    {
      v14 = sub_100082DBC();
      v15(v14);
    }
  }

  sub_100019CCC(v33);
  return v6;
}

uint64_t sub_1000823C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B1400);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v14[-v10];
  sub_10001AE68(a1, a1[3]);
  sub_100082840();
  sub_1001F8198();
  LOBYTE(v17[0]) = 0;
  sub_1000582C0();
  sub_1001F7D98();
  if (!v2)
  {
    LOBYTE(v17[0]) = 1;
    sub_1000582C0();
    sub_1001F7D98();
    LOBYTE(v17[0]) = 2;
    sub_1000582C0();
    sub_1001F7D98();
    LOBYTE(v17[0]) = 3;
    sub_1000582C0();
    sub_1001F7D98();
    LOBYTE(v17[0]) = 4;
    sub_1000582C0();
    sub_1001F7D98();
    v12 = *(v3 + 40);
    v17[0] = *(v3 + 24);
    *&v17[1] = v12;
    *(&v17[1] + 8) = *(v3 + 48);
    v16[0] = 5;
    sub_100082894();
    sub_1000582C0();
    sub_1001F7DC8();
    swift_beginAccess();
    v19 = *(v3 + 64);
    v18 = 6;
    sub_1000183C4(&qword_1002B1418);
    sub_1000829E4(&qword_1002B1420, &qword_1002B1428);
    sub_1001F7DC8();
    memcpy(v17, (v3 + 72), sizeof(v17));
    memcpy(v16, (v3 + 72), sizeof(v16));
    v15[87] = 7;
    sub_10007B844(v17, v15);
    sub_1000828E8();
    sub_1000582C0();
    sub_1001F7DC8();
    memcpy(v15, v16, 0x50uLL);
    sub_10001C7E4(v15);
    v14[7] = 8;
    sub_1000582C0();
    sub_1001F7DA8();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_10008270C()
{

  return v0;
}

uint64_t sub_100082798()
{
  sub_10008270C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000827F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100081E70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100082840()
{
  result = qword_1002B1408;
  if (!qword_1002B1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1408);
  }

  return result;
}

unint64_t sub_100082894()
{
  result = qword_1002B1410;
  if (!qword_1002B1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1410);
  }

  return result;
}

unint64_t sub_1000828E8()
{
  result = qword_1002B1430;
  if (!qword_1002B1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1430);
  }

  return result;
}

unint64_t sub_10008293C()
{
  result = qword_1002B1440;
  if (!qword_1002B1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1440);
  }

  return result;
}

unint64_t sub_100082990()
{
  result = qword_1002B1448;
  if (!qword_1002B1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1448);
  }

  return result;
}

uint64_t sub_1000829E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B1418);
    sub_100082A6C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100082A6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OctaneSimulatedError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100082AB0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OctaneConfigurationSettings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OctaneConfigurationSettings.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x100082C6CLL);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100082CA8()
{
  result = qword_1002B1480;
  if (!qword_1002B1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1480);
  }

  return result;
}

unint64_t sub_100082D00()
{
  result = qword_1002B1488;
  if (!qword_1002B1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1488);
  }

  return result;
}

unint64_t sub_100082D58()
{
  result = qword_1002B1490;
  if (!qword_1002B1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1490);
  }

  return result;
}

uint64_t sub_100082DF8()
{

  return swift_beginAccess();
}

uint64_t sub_100082E18()
{

  return sub_1001F7C48();
}

uint64_t sub_100082E38()
{

  sub_10005E2F4(*(v0 + 32), *(v0 + 40));
  sub_100019CCC(v0 + 48);
  return v0;
}

__n128 sub_100082E68@<Q0>(uint64_t a1@<X8>)
{
  sub_1000B738C(0x6D656C706D696E55, 0xED00006465746E65, 6, v8);
  v2 = v10;
  v3 = v9;
  v4 = v11;
  type metadata accessor for HTTPResponseHead._Storage();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 25;
  *(v5 + 40) = 65537;
  result = v8[0];
  v7 = v8[1];
  *a1 = v5;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  *(a1 + 40) = v7;
  *(a1 + 24) = result;
  *(a1 + 62) = v4;
  *(a1 + 60) = v2;
  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_100082F30()
{
  sub_100082E38();

  return swift_deallocClassInstance();
}

double sub_100082F88@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 112))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v6[0];
  result = *(v6 + 15);
  *(a1 + 47) = *(v6 + 15);
  return result;
}

uint64_t sub_100082FFC()
{
  sub_100082E38();
  sub_100019CCC(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t UnsafeEmbeddedAtomic.init(value:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000856F0(a1, a2);
  v6 = v5(v4);
  v7 = v6(a1);

  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

uint64_t UnsafeEmbeddedAtomic.compareAndExchange(expected:desired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(a4, a5);
  v7 = sub_1000856E0();
  v9 = v8(v7, a1, a2);

  return v9 & 1;
}

uint64_t UnsafeEmbeddedAtomic.add(_:)()
{
  sub_1000856CC();
  v3 = sub_1000856BC(v0, v1, v2);
  v4(v3);
  v5 = sub_100085694();
  v6(v5);
}

uint64_t UnsafeEmbeddedAtomic.sub(_:)()
{
  sub_1000856CC();
  v3 = sub_1000856BC(v0, v1, v2);
  v4(v3);
  v5 = sub_100085694();
  v6(v5);
}

uint64_t UnsafeEmbeddedAtomic.exchange(with:)()
{
  sub_1000856CC();
  v3 = sub_1000856BC(v0, v1, v2);
  v4(v3);
  v5 = sub_100085694();
  v6(v5);
}

uint64_t UnsafeEmbeddedAtomic.load()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000856F0(a1, a2);
  v5 = v4(v3);
  v5(a1);
}

uint64_t UnsafeEmbeddedAtomic.store(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000856BC(a1, a2, a3);
  v5(v4);
  v6 = sub_1000856E0();
  v7(v6, a1);
}

Swift::Void __swiftcall UnsafeEmbeddedAtomic.destroy()()
{
  v2 = sub_1000856F0(v0, v1);
  v3(v2);
  v4 = sub_1000856E0();
  v5(v4);
}

uint64_t Atomic.__allocating_init(value:)(uint64_t a1)
{
  sub_1000856AC();
  v2 = swift_allocObject();
  Atomic.init(value:)(a1, v3);
  return v2;
}

void *Atomic.init(value:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1, a2);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, a1, v4);
  v8 = UnsafeEmbeddedAtomic.init(value:)(v7, v4);
  (*(v5 + 8))(a1, v4);
  v2[2] = v8;
  return v2;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  sub_1000856AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000838E0@<X0>(atomic_uchar *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083734(a1, *a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100083910@<X0>(atomic_uchar *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083774(a1, *a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100083940@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000837B4(a1, a2);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000839C4@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000837F4(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100083C20@<X0>(atomic_uchar *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083A90(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_100083C4C@<X0>(atomic_uchar *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083AD0(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_100083C78@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083B10(a1, a2);
  *a2 = result;
  return result;
}

uint64_t sub_100083CF8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083B50(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100083F50@<X0>(atomic_uchar *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083DC0(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_100083F7C@<X0>(atomic_uchar *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083E00(a1, *a2);
  *a3 = result;
  return result;
}

unsigned int *sub_100083FA8@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083E40(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100084028@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083E80(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100084280@<X0>(atomic_ushort *a1@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  result = sub_1000840F0(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000842AC@<X0>(atomic_ushort *a1@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  result = sub_100084130(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000842D8@<X0>(unsigned int *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_100084170(a1, a2);
  *a2 = result;
  return result;
}

uint64_t sub_100084358@<X0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1000841B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000845B0@<X0>(atomic_ushort *a1@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  result = sub_100084420(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000845DC@<X0>(atomic_ushort *a1@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  result = sub_100084460(a1, *a2);
  *a3 = result;
  return result;
}

unsigned int *sub_100084608@<X0>(unsigned int *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1000844A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100084688@<X0>(unsigned __int16 *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1000844E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100084874@<X0>(atomic_uint *a1@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_100084744(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000848A0@<X0>(atomic_uint *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_10008476C(a1, *a2);
  *a3 = result;
  return result;
}

unsigned int *sub_1000848CC@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_100084794(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008494C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1000847BC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100084C40@<X0>(atomic_ullong *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_100084B10(a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_100084C6C@<X0>(atomic_ullong *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_100084B38(a1, *a2);
  *a3 = result;
  return result;
}

unsigned int *sub_100084C98@<X0>(unsigned int *a1@<X0>, unsigned int **a2@<X8>)
{
  result = sub_100084B60(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100084D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100084B88(a1);
  *a2 = result;
  return result;
}

uint64_t AtomicBox.__allocating_init(value:)(uint64_t a1)
{
  sub_1000856AC();
  v2 = swift_allocObject();
  AtomicBox.init(value:)(a1);
  return v2;
}

uint64_t AtomicBox.init(value:)(uint64_t a1)
{
  sub_1000183C4(qword_1002B1628);
  swift_unknownObjectRetain();
  swift_bufferAllocate();
  v3 = swift_unknownObjectRetain();
  sub_100006B94((v3 + 16), a1);
  swift_unknownObjectRelease();
  v4 = swift_dynamicCastClassUnconditional();
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  return v1;
}

uint64_t AtomicBox.deinit()
{
  v1 = *(v0 + 16);

  v2 = sub_100006B84((v1 + 16));

  if (v2)
  {
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AtomicBox.__deallocating_deinit()
{
  AtomicBox.deinit();
  sub_1000856AC();

  return swift_deallocClassInstance();
}

uint64_t AtomicBox.compareAndExchange(expected:desired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v12 = a2;
  v11[2] = a1;
  v11[3] = a2;
  sub_10008530C(&v12, sub_1000854E4, v11, *(v9 + 80), &type metadata for Never, &type metadata for Bool, &protocol witness table for Never, a8);
  return v13;
}

uint64_t sub_100085270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a3 + 16);
  while (1)
  {
    result = sub_100006B5C((v7 + 16), a1, a2);
    if (result)
    {
      break;
    }

    result = sub_100006B8C(v7 + 16);
    if (result && result != a1)
    {
      v9 = 0;
      goto LABEL_10;
    }

    pthread_yield_np();
  }

  if (a2 != a1)
  {
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
  }

  v9 = 1;
LABEL_10:
  *a4 = v9;
  return result;
}

uint64_t sub_10008530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

uint64_t AtomicBox.exchange(with:)(unint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  do
  {
    while (1)
    {
      v4 = sub_100006B8C(v3 + 16);
      if (v4)
      {
        break;
      }

      pthread_yield_np();
    }

    v5 = v4;
  }

  while (!sub_100006B5C((v3 + 16), v4, a1));
  return v5;
}

BOOL AtomicBox.load()()
{
  v1 = *(v0 + 16);
  do
  {
    while (1)
    {
      v2 = sub_100006B8C(v1 + 16);
      if (v2)
      {
        break;
      }

      pthread_yield_np();
    }

    v3 = v2;
  }

  while (!sub_100006B5C((v1 + 16), v2, 0));
  swift_unknownObjectRetain();
  result = sub_100006B5C((v1 + 16), 0, v3);
  if (result)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t AtomicBox.store(_:)(unint64_t a1)
{
  AtomicBox.exchange(with:)(a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_100085508()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100085544(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_100085700()
{
  sub_10002D678();
  sub_10002E0D8();
  v0 = swift_allocError();
  sub_10002E00C(v0, v1);
  return swift_willThrow();
}

uint64_t sub_100085748(uint64_t result)
{
  if (result)
  {
    sub_10002D678();
    sub_10002E0D8();
    v1 = swift_allocError();
    sub_10002E00C(v1, v2);
    swift_errorRetain();
    sub_1000A13B0();
  }

  return result;
}

void sub_1000857C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_10002E00C(v2, v3);
    swift_errorRetain();
    sub_1000A13B0();
  }
}

void sub_100085838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002D678();
    swift_allocError();
    *v2 = 2;
    *(v2 + 8) = 3;
    swift_errorRetain();
    sub_1000A13B0();
  }
}

void sub_1000858C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10002D678();
    swift_allocError();
    *v3 = 3;
    *(v3 + 8) = 3;
    swift_errorRetain();
    sub_1000A13B0();
  }
}

uint64_t sub_100085AF0(uint64_t a1)
{
  type metadata accessor for DeadChannelCore();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = swift_allocObject();
  *(v1 + 72) = &off_1002857A8;
  *(v1 + 32) = a1;
  *(v1 + 16) = *(a1 + 48);
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_100085B50()
{
  swift_getObjectType();
  sub_10002D678();
  sub_10002E0D8();
  v0 = swift_allocError();
  sub_10002E00C(v0, v1);
  v2 = EventLoop.makeFailedFuture<A>(_:file:line:)();

  return v2;
}

uint64_t sub_100085BE4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  sub_10002D678();
  sub_10002E0D8();
  v3 = swift_allocError();
  sub_10002E00C(v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = EventLoop.makeFailedFuture<A>(_:file:line:)(v3, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/DeadChannel.swift", 113, 2, 111, ObjectType, AssociatedTypeWitness, v1);

  return v6;
}

uint64_t sub_100085CA4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100085CDC()
{
  sub_100085CA4();

  return swift_deallocClassInstance();
}

uint64_t sub_100085DE4()
{
  v2 = v0;
  v3 = sub_1000183C4(&qword_1002AE9F0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = v22 - v5;
  v7 = *(v0 + 88);
  sub_1001E84A8();
  sub_100087254();
  if (*(v7 + 112) == 3)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v0 + 368);
  }

  sub_1000872F8(v8);
  sub_1000871D0();
  sub_100087260();
  sub_1001F7438();
  sub_100087254();
  v10 = v9;
  memcpy(__dst, (v0 + 144), sizeof(__dst));
  v11 = *(v0 + 120);
  v25 = *(v0 + 104);
  v26 = v11;
  v27 = *(v0 + 136);
  sub_100087260();
  v12 = sub_10004B450();
  v23 = 0;
  v24 = 0xE000000000000000;
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v22[0] = v12;
  v22[1] = v13;
  v22[2] = 0;
  v22[3] = v14;
  while (1)
  {
    sub_1001F6CE8();
    if (!v15)
    {
      break;
    }

    sub_100087324();
    if ((sub_1001F6A48() & 1) == 0)
    {
      v29._countAndFlagsBits = v10;
      v29._object = v1;
      sub_1001F6C98(v29);
    }
  }

  v16 = v23;
  v17 = sub_1001F65B8();
  sub_100018460(v6, 1, 1, v17);
  sub_1001F7448();
  sub_100087254();
  v19 = v18;

  sub_10004BDE8(v6, &qword_1002AE9F0);
  if ((v19 & 0x100000000) != 0)
  {
    v16 = v7;
    sub_1001E84A8();
    sub_100087280();
    if (*(v7 + 112) == 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(v2 + 368);
    }

    sub_1000872F8(v20);
    sub_1000871D0();
    sub_100087270();
    sub_1001F7438();
    sub_100087254();
  }

  return v16;
}

uint64_t sub_100085FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a1;
  v5 = sub_1001F6508();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v68 - v12;
  sub_100161BA8();
  v15 = v14;
  v17 = v16;
  sub_1001F64F8();
  v18 = *(v3 + 376);
  v70 = v17;
  sub_10004B73C(v15, v17, v10, v18);
  v19 = *(v6 + 8);
  v19(v10, v5);
  sub_1001F6418();
  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v20 = qword_1002AE9E8;
  isa = sub_1001F6478().super.isa;
  v22 = [v20 stringFromDate:isa];

  v69 = sub_1001F6B58();
  v24 = v23;

  v19(v13, v5);
  switch(*(a2 + 57))
  {
    case 1:

      goto LABEL_7;
    case 2:
      sub_100087310();
      break;
    default:
      break;
  }

  v25 = sub_1001F7EA8();

  if (v25)
  {
LABEL_7:
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1001F77B8(88);
    v74 = v76;
    v75 = v77;
    v78._countAndFlagsBits = sub_1000871AC();
    sub_1001F6CA8(v78);
    v26 = *(v3 + 88);
    sub_1000871E0();

    v28 = sub_1000E087C(v27);

    if (v28)
    {
      v30 = *(v28 + 32);
      v29 = *(v28 + 40);
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {

LABEL_16:
        v79._countAndFlagsBits = v30;
        v79._object = v29;
        sub_1001F6CA8(v79);

        v80._countAndFlagsBits = 8238;
        v80._object = 0xE200000000000000;
        sub_1001F6CA8(v80);
        v76 = v15;
        v81._countAndFlagsBits = sub_1001F7E28();
        sub_100087330(v81);

        v82._countAndFlagsBits = 32;
        v82._object = 0xE100000000000000;
        sub_1001F6CA8(v82);
        v83._countAndFlagsBits = sub_1001ECA84(v70);
        sub_1001F6CA8(v83);

        if (v15 == 1)
        {
          v34._countAndFlagsBits = 0;
        }

        else
        {
          v34._countAndFlagsBits = 115;
        }

        if (v15 == 1)
        {
          v35 = 0xE000000000000000;
        }

        else
        {
          v35 = 0xE100000000000000;
        }

        v34._object = v35;
        sub_1001F6CA8(v34);

        v84._countAndFlagsBits = 0xD00000000000002DLL;
        v84._object = 0x80000001002261A0;
        sub_1001F6CA8(v84);
        sub_1001E84A8();
        sub_100087208();
        if (*(v26 + 112) == 3)
        {
          v36 = 1;
        }

        else
        {
          v36 = *(v3 + 368);
        }

        sub_1000872F8(v36);
        sub_1000871D0();
        sub_100087218();
        sub_1001F7438();
        sub_100087208();
        sub_1000872C0();
        sub_100087218();
LABEL_51:
        v95._countAndFlagsBits = sub_10004B450();
        sub_100087330(v95);

        v96._countAndFlagsBits = 47;
        v96._object = 0xE100000000000000;
        sub_1001F6CA8(v96);
        v97._countAndFlagsBits = sub_1001ECA84(*(v71 + 184));
        sub_1001F6CA8(v97);

        v98._countAndFlagsBits = 0x6E69747261747320;
        v98._object = 0xEA00000000002067;
        sub_1001F6CA8(v98);
        v99._countAndFlagsBits = v69;
        v99._object = v24;
        sub_1001F6CA8(v99);
        goto LABEL_52;
      }
    }

    v30 = sub_1001E8450();
    v29 = v33;
    goto LABEL_16;
  }

  if (*(a2 + 40))
  {
    v32 = *(a2 + 32);
    sub_1000872C0();
    sub_1000871E0();

    sub_10004B628();
    sub_100087254();

    v74 = v32;
    v75 = v22;
    switch(*(a2 + 57))
    {
      case 2:
        sub_100087310();
        goto LABEL_32;
      case 3:

        goto LABEL_35;
      default:
LABEL_32:
        v42 = sub_1001F7EA8();

        if (v42)
        {
LABEL_35:
          v43._countAndFlagsBits = 0;
          v44 = 0xE000000000000000;
        }

        else
        {
          v72 = 47;
          v73 = 0xE100000000000000;
          v85._countAndFlagsBits = sub_1001ECA84(v70);
          sub_1001F6CA8(v85);

          v43._countAndFlagsBits = v72;
          v44 = v73;
        }

        v43._object = v44;
        sub_1001F6CA8(v43);

        v46 = v74;
        v45 = v75;
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_1001F77B8(90);
        v86._countAndFlagsBits = sub_1000871AC();
        sub_1001F6CA8(v86);
        v47 = *(v3 + 88);
        v48 = *(v47 + 56);

        v50 = sub_1000E087C(v49);

        if (!v50)
        {
          goto LABEL_40;
        }

        sub_1000872A8();
        if (v51)
        {
        }

        else
        {

LABEL_40:
          v22 = sub_1001E8450();
          v48 = v52;
        }

        v87._countAndFlagsBits = v22;
        v87._object = v48;
        sub_1001F6CA8(v87);

        v88._countAndFlagsBits = 8238;
        v88._object = 0xE200000000000000;
        sub_1001F6CA8(v88);
        v89._countAndFlagsBits = v46;
        v89._object = v45;
        sub_1001F6CA8(v89);

        v90._countAndFlagsBits = sub_1000871F8();
        v90._object = 0xE500000000000000;
        sub_1001F6CA8(v90);
        v72 = v15;
        v91._countAndFlagsBits = sub_1001F7E28();
        sub_100087330(v91);

        v92._countAndFlagsBits = 32;
        v92._object = 0xE100000000000000;
        sub_1001F6CA8(v92);
        v93._countAndFlagsBits = sub_1001ECA84(v70);
        sub_1001F6CA8(v93);

        if (v15 == 1)
        {
          v53._countAndFlagsBits = 0;
        }

        else
        {
          v53._countAndFlagsBits = 115;
        }

        if (v15 == 1)
        {
          v54 = 0xE000000000000000;
        }

        else
        {
          v54 = 0xE100000000000000;
        }

        v53._object = v54;
        sub_1001F6CA8(v53);

        v94._object = 0x8000000100226170;
        v94._countAndFlagsBits = 0xD000000000000028;
        sub_1001F6CA8(v94);
        sub_1001E84A8();
        sub_100087208();
        if (*(v47 + 112) == 3)
        {
          v55 = 1;
        }

        else
        {
          v55 = *(v3 + 368);
        }

        sub_1000872F8(v55);
        sub_1000871D0();
        sub_100087218();
        sub_1001F7438();
        break;
    }

    goto LABEL_51;
  }

  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v37 = sub_1001F6688();
  sub_100019C94(v37, qword_1002E6180);

  v38 = sub_1001F6668();
  v39 = sub_1001F7298();

  if (os_log_type_enabled(v38, v39))
  {
    v22 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v22 = 136315650;
    v40 = 1701736270;
    v41 = 0xE400000000000000;
    switch(*(a2 + 57))
    {
      case 1:
        v41 = 0xE90000000000006CLL;
        v40 = 0x6169725465657246;
        break;
      case 2:
        v40 = 0x756F597341796150;
        v41 = 0xEA00000000006F47;
        break;
      case 3:
        v40 = 0x6F72467055796150;
        v41 = 0xEA0000000000746ELL;
        break;
      default:
        break;
    }

    v57 = sub_1000E4544(v40, v41, &v76);

    *(v22 + 1) = v57;
    *(v22 + 6) = 2080;
    *(v22 + 14) = sub_1000E4544(*(a2 + 16), *(a2 + 24), &v76);
    *(v22 + 11) = 2080;
    v58 = *(v71 + 80);
    v59 = *(v71 + 88);

    v60 = sub_1000E4544(v58, v59, &v76);

    *(v22 + 3) = v60;
    _os_log_impl(&_mh_execute_header, v38, v39, "Unexpected nil display price for %s offer (%s) for subscription %s", v22, 0x20u);
    swift_arrayDestroy();
  }

  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1001F77B8(78);
  v74 = v76;
  v75 = v77;
  v101._countAndFlagsBits = sub_1000871AC();
  sub_1001F6CA8(v101);
  v61 = *(v3 + 88);
  sub_1000871E0();
  v62 = *(v61 + 56);

  v64 = sub_1000E087C(v63);

  if (!v64)
  {
    goto LABEL_60;
  }

  sub_1000872A8();
  if (!v65)
  {

LABEL_60:
    v22 = sub_1001E8450();
    v62 = v66;
    goto LABEL_61;
  }

LABEL_61:
  v102._countAndFlagsBits = v22;
  v102._object = v62;
  sub_1001F6CA8(v102);

  v103._object = 0x8000000100226130;
  v103._countAndFlagsBits = 0x1000000000000034;
  sub_1001F6CA8(v103);
  v104._countAndFlagsBits = sub_1001ECA84(*(v71 + 184));
  sub_1001F6CA8(v104);

  v105._countAndFlagsBits = sub_1000871F8();
  v105._object = 0xE500000000000000;
  sub_1001F6CA8(v105);
  sub_1001E84A8();
  sub_100087208();
  if (*(v61 + 112) == 3)
  {
    v67 = 1;
  }

  else
  {
    v67 = *(v3 + 368);
  }

  sub_1000872F8(v67);
  sub_1000871D0();
  sub_100087218();
  sub_1001F7438();
  sub_1000872C0();
  v106._countAndFlagsBits = sub_10004B450();
  sub_100087330(v106);
LABEL_52:

  v100._countAndFlagsBits = 46;
  v100._object = 0xE100000000000000;
  sub_1001F6CA8(v100);
  return v74;
}

unint64_t sub_100086AD4()
{
  v1 = v0;
  memcpy(__dst, v0 + 28, sizeof(__dst));
  memcpy(__src, v0 + 28, sizeof(__src));
  if (sub_100086FB4(__src) != 1)
  {
    memcpy(v29, __src, sizeof(v29));
    memcpy(v27, __dst, 0x90uLL);
    sub_10008703C(v27, &v25);
    v6 = sub_1001948F8();
    v8 = v9;
    sub_10004BDE8(__dst, &qword_1002B1910);
    goto LABEL_27;
  }

  v2 = v0[11];
  type metadata accessor for OctaneSubscription();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    if (qword_1002AC490 != -1)
    {
      swift_once();
    }

    v10 = qword_1002E60E0;
    v11 = v1[46];
    v12 = [objc_allocWithZone(NSNumber) initWithInteger:v11];
    v13 = [v10 stringFromNumber:v12];

    if (v13)
    {
      sub_1001F6B58();
      sub_100087324();
    }

    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_1001F77B8(32);

    v25 = 0xD000000000000013;
    v26 = 0x80000001002260F0;
    sub_1000872DC();

    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    sub_1001F6CA8(v32);
    v14 = sub_100087228();
    v15 = sub_1000E087C(v14);

    if (v15)
    {
      sub_100087290();
      if (v16)
      {

LABEL_19:
        sub_1000872DC();

        v33._countAndFlagsBits = sub_1000871F8();
        v33._object = 0xE500000000000000;
        sub_1001F6CA8(v33);
        sub_1001E84A8();
        sub_100087254();
        v17 = *(v2 + 112);
        if (v11 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v11;
        }

        if (v17 == 3)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        sub_1001F7478(v17, v19);
        sub_1000871D0();
        sub_100087260();
        sub_1001F7438();
        memcpy(v29, v1 + 18, 0x50uLL);
        v34._countAndFlagsBits = sub_10004B450();
        sub_1001F6CA8(v34);

        v35._countAndFlagsBits = 63;
        v35._object = 0xE100000000000000;
        sub_1001F6CA8(v35);
        goto LABEL_26;
      }
    }

    sub_1001E8450();
    sub_100087324();
    goto LABEL_19;
  }

  v4 = v3;
  v5 = v0[12];
  v28 = v5;
  if (!v5)
  {
    v5 = v0[2];
    if (v5 || (v5 = v0[3]) != 0 || (v5 = v0[4]) != 0)
    {

      goto LABEL_8;
    }

    v29[0] = 0;
    v29[1] = 0xE000000000000000;

    sub_1001F77B8(78);
    v25 = 0;
    v26 = 0xE000000000000000;
    v37._countAndFlagsBits = sub_1000871AC();
    sub_1001F6CA8(v37);
    v21 = sub_100087228();
    v22 = sub_1000E087C(v21);

    if (v22)
    {
      sub_100087290();
      if (v23)
      {

LABEL_33:
        sub_1000872DC();

        v38._object = 0x8000000100226130;
        v38._countAndFlagsBits = 0x1000000000000034;
        sub_1001F6CA8(v38);
        v39._countAndFlagsBits = sub_1001ECA84(*(v4 + 184));
        sub_1001F6CA8(v39);

        v40._countAndFlagsBits = sub_1000871F8();
        v40._object = 0xE500000000000000;
        sub_1001F6CA8(v40);
        sub_1001E84A8();
        sub_100087280();
        if (*(v2 + 112) == 3)
        {
          v24 = 1;
        }

        else
        {
          v24 = v1[46];
        }

        sub_1000872F8(v24);
        sub_1000871D0();
        sub_100087270();
        sub_1001F7438();
        sub_100087280();
        memcpy(v29, v1 + 18, 0x50uLL);
        sub_100087270();
        v41._countAndFlagsBits = sub_10004B450();
        sub_1001F6CA8(v41);

        v42._countAndFlagsBits = 46;
        v42._object = 0xE100000000000000;
        sub_1001F6CA8(v42);

LABEL_26:
        v6 = v25;
        v8 = v26;
        goto LABEL_27;
      }
    }

    sub_1001E8450();
    sub_100087324();
    goto LABEL_33;
  }

LABEL_8:

  sub_100086FCC(&v28, v29);
  v6 = sub_100085FE8(v4, v5);
  v8 = v7;

LABEL_27:
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1001F77B8(24);

  v25 = v6;
  v26 = v8;
  v36._countAndFlagsBits = 0xD000000000000016;
  v36._object = 0x8000000100226110;
  sub_1001F6CA8(v36);
  return v25;
}

uint64_t sub_100086FB4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100086FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AD560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087098(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000870B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 378))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000870F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 378) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 378) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000871E0()
{
  result = *(v0 + 104);
  v3 = *(v0 + 120);
  *(v1 - 144) = result;
  *(v1 - 128) = v3;
  *(v1 - 112) = *(v0 + 136);
  return result;
}

uint64_t sub_100087228()
{
}

void *sub_1000872C0()
{

  return memcpy((v1 - 224), (v0 + 144), 0x50uLL);
}

void sub_1000872DC()
{
  v3._countAndFlagsBits = v1;
  v3._object = v0;

  sub_1001F6CA8(v3);
}

void sub_1000872F8(Swift::Int a1@<X8>)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  sub_1001F7478(a1, v2);
}

void sub_100087330(Swift::String a1)
{

  sub_1001F6CA8(a1);
}

double sub_100087348@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BagResponse();
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v25[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = (&v25[-2] - v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(v1 + 104);
    v14 = *(v1 + 112);
    v15 = *(*(Strong + 48) + 16);
    swift_unknownObjectRetain();

    os_unfair_lock_lock(v15);
    os_unfair_lock_unlock(v15);
    swift_unknownObjectRelease();
    sub_10001AE68((v2 + 48), *(v2 + 72));
    sub_1000792D8(v26);
    v16 = sub_10001AE68((v2 + 48), *(v2 + 72));
    v17 = *v16;
    v18 = *(*(*v16 + 24) + 16);

    os_unfair_lock_lock(v18);
    v19 = *(v17 + 144);
    v34[0] = *(v17 + 128);
    v34[1] = v19;
    v35 = *(v17 + 160);
    v36 = v34[0];
    v37 = v19;
    v38 = v35;
    sub_1000552A0(&v36, v30);
    sub_1000552A0(&v37, v30);
    sub_10007B8A0(&v38, v30);
    os_unfair_lock_unlock(v18);

    sub_10001B930(v13, v14, v26, v34, v11);
    sub_10001DF20(v11, v8);
    sub_1001F1CEC(v8);
    *v25 = v30[1];
    v24 = v30[0];
    v20 = v31 | ((v32 | (v33 << 16)) << 32);
    swift_unknownObjectRelease();
    sub_10001DF84(v11);
    type metadata accessor for HTTPResponseHead._Storage();
    v21 = swift_allocObject();
    v22 = 3;
  }

  else
  {
    sub_1000B738C(0xD000000000000017, 0x8000000100226200, 6, v26);
    *v25 = v26[1];
    v24 = v26[0];
    v20 = v27 | ((v28 | (v29 << 16)) << 32);
    type metadata accessor for HTTPResponseHead._Storage();
    v21 = swift_allocObject();
    v22 = 49;
  }

  *(v21 + 32) = v22;
  *(v21 + 40) = 65537;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *a1 = v21;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  *(a1 + 24) = v24;
  result = v25[0];
  *(a1 + 40) = *v25;
  *(a1 + 56) = v20;
  *(a1 + 62) = BYTE6(v20);
  *(a1 + 60) = WORD2(v20);
  return result;
}

uint64_t sub_100087628()
{
  sub_1000876E4(v0 + 88);
}

uint64_t sub_100087658()
{
  v0 = sub_100082E38();
  sub_1000876E4(v0 + 88);

  return v0;
}

uint64_t sub_100087690()
{
  sub_100087658();

  return swift_deallocClassInstance();
}

uint64_t sub_10008770C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  if (a4 == a2)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        if (a4 == v5)
        {
          v7 = 1;
          goto LABEL_9;
        }

        if (__OFADD__(v5, 1))
        {
          break;
        }

        v6 = *(result + v5) ^ *(a3 + v5);
        ++v5;
        if ((v6 & 0xDF) != 0)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v7 = 0;
LABEL_9:
    *a5 = v7;
  }

  return result;
}

uint64_t sub_100087764(unint64_t a1)
{
  if (a1 - 1 < 0xE)
  {
    return byte_1002079E6[a1 - 1];
  }

  v13[7] = v1;
  v13[8] = v2;
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v5 = sub_1001F6688();
  sub_100019C94(v5, qword_1002E6180);
  v6 = sub_1001F6668();
  v7 = sub_1001F7298();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    v10 = sub_1001DC4B0(a1);
    v12 = sub_1000E4544(v10, v11, v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received unsupported ASOctaneSimulatedError %s for FailureType", v8, 0xCu);
    sub_100019CCC(v9);
  }

  return 0;
}

unint64_t sub_1000878CC(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
    case 18:
      sub_1000881D8();
      result = v10 - 4;
      break;
    case 2:
      sub_1000881D8();
      result = v4 + 12;
      break;
    case 3:
      sub_1000881D8();
      result = v6 - 5;
      break;
    case 4:
    case 6:
    case 17:
      sub_1000881D8();
      result = v9 - 1;
      break;
    case 5:
      sub_1000881D8();
      result = v7 - 3;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x206B726F7774654ELL;
      break;
    case 9:
      result = 0x65206D6574737953;
      break;
    case 10:
      sub_1000881D8();
      result = v11 + 18;
      break;
    case 11:
    case 16:
      sub_1000881D8();
      result = v3 - 2;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
    case 14:
      sub_1000881D8();
      result = v8 + 1;
      break;
    case 15:
      sub_1000881D8();
      result = v5 + 3;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0x6E776F6E6B6E55;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100087B8C()
{
  v0 = sub_1001F7F58();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100087BE0(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 808529970;
      break;
    case 2:
      result = 942878771;
      break;
    case 3:
      result = 858862899;
      break;
    case 4:
      result = 842216755;
      break;
    case 5:
      result = 892352307;
      break;
    case 6:
      result = 808597299;
      break;
    case 7:
      result = 3616825;
      break;
    case 8:
      result = 3223861;
      break;
    case 9:
      result = 3617589;
      break;
    case 10:
      result = 875900977;
      break;
    case 11:
      result = 3485749;
      break;
    case 12:
      result = 3289397;
      break;
    case 13:
      result = 808792113;
      break;
    case 14:
      result = 875575603;
      break;
    case 15:
      result = 808466739;
      break;
    case 16:
      result = 825243955;
      break;
    case 17:
      result = 842021171;
      break;
    case 18:
      result = 858798387;
      break;
    case 19:
      result = 892416309;
      break;
    case 20:
      result = 960051513;
      break;
    case 21:
      result = 0x3039393939;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100087DE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100087B8C();
  *a1 = result;
  return result;
}

uint64_t sub_100087E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100087BE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for OctaneError()
{
  result = qword_1002B1A78;
  if (!qword_1002B1A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100087F40()
{
  result = sub_1001F6288();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FailureType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
        JUMPOUT(0x1000880F4);
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100088130()
{
  result = qword_1002B1AB0;
  if (!qword_1002B1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1AB0);
  }

  return result;
}

unint64_t sub_100088184()
{
  result = qword_1002B1AB8;
  if (!qword_1002B1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B1AB8);
  }

  return result;
}

BOOL static FileRegion.== infix(_:_:)(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != a4 || ((a6 ^ a3) & 0xFFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if (((a5 | a2) & 0x8000000000000000) == 0)
  {
    return a2 == a5;
  }

  __break(1u);
  return result;
}

uint64_t FileRegion.readableBytes.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return a2 - (a3 & 0xFFFFFFFFFFFFFFLL);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall FileRegion.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = (*(v1 + 22) << 48) | (*(v1 + 20) << 32) | *(v1 + 16);
  v3 = __OFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(v4);
    ByteBuffer._slice.setter(v5);
    return;
  }

  __break(1u);
}

uint64_t sub_10008827C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FileRegion.readerIndex.getter(a1, a2, *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  *a3 = result;
  return result;
}

uint64_t sub_1000882B8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(result);
    return ByteBuffer._slice.setter(v1);
  }

  return result;
}

uint64_t FileRegion.endIndex.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t FileRegion.init(fileHandle:readerIndex:endIndex:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = result;
    static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(a2);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t FileRegion.init(fileHandle:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1)
  {
    sub_1000274C4();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    *(v7 + 8) = 0x8000000100224AB0;
    *(v7 + 16) = 9;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = *(a1 + 20);
  v4 = sub_100027518(v3, 0, 2);
  if (v1)
  {
LABEL_6:

    return a1;
  }

  v5 = v4;
  result = sub_100027518(v3, 0, 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(0);
    return a1;
  }

  __break(1u);
  return result;
}

void FileRegion.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1001F77B8(56);
  v3._object = 0x8000000100226480;
  v3._countAndFlagsBits = 0xD000000000000015;
  sub_1001F6CA8(v3);
  v4._countAndFlagsBits = NIOFileHandle.description.getter();
  sub_1001F6CA8(v4);

  v5._countAndFlagsBits = 0x726564616572202CLL;
  v5._object = 0xEF203A7865646E49;
  sub_1001F6CA8(v5);
  v6._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v6);

  v7._countAndFlagsBits = 0x646E49646E65202CLL;
  v7._object = 0xEC000000203A7865;
  sub_1001F6CA8(v7);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v8);

    v9._countAndFlagsBits = 32032;
    v9._object = 0xE200000000000000;
    sub_1001F6CA8(v9);
  }
}

uint64_t sub_100088634(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);

  return v1;
}

uint64_t sub_100088678(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1001F6D98();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000886C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16))
  {
    v3 = *(result + 32);
    v4 = *(result + 40);
    v5 = *(result + 48);
    v6 = *(result + 56);
    v7 = *(result + 64);
    result = sub_10008A298(v3, v4, v5, v6, v7);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_100088740@<X0>(_OWORD *a1@<X8>)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v2 = sub_1001F81A8();
  swift_unknownObjectRelease();
  if (v2)
  {
    result = swift_unknownObjectRelease();
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    sub_1001F7A88();

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1000887FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_10008A228(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_100088824(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

void sub_100088854()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1 != v2)
  {
    if (v1 < v2)
    {
      if ((sub_100064380(*(v0 + 24), 0, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 20) << 32) | (*(v0 + 22) << 48)) & 0x100) == 0)
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1000888D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for IAPTransaction();
  v6 = v5;
  if (v4)
  {
    sub_10008A1C4(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100018460(a2, v7, 1, v6);
}

uint64_t NIOAny.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10002DFFC();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, a2);
  NIOAny._NIOAny.init<A>(_:)(v11, a2, a3);
  return (*(v7 + 8))(a1, a2);
}

uint64_t NIOAny.forceAs<A>(type:)@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 == &type metadata for ByteBuffer)
  {
    NIOAny.forceAsByteBuffer()();
    sub_10008A308();
    return swift_dynamicCast();
  }

  if (a1 == &type metadata for FileRegion)
  {
    NIOAny.forceAsFileRegion()();
    sub_10008A308();
    return swift_dynamicCast();
  }

  if (a1 == &type metadata for IOData)
  {
    NIOAny.forceAsIOData()();
    sub_10008A308();
    return swift_dynamicCast();
  }

  if (sub_1000183C4(&qword_1002ADD58) == a1)
  {
    NIOAny.forceAsByteEnvelope()(v5);
    return swift_dynamicCast();
  }

  return NIOAny.forceAsOther<A>(type:)(a1, a2);
}

uint64_t NIOAny.tryAs<A>(type:)@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 == &type metadata for ByteBuffer)
  {
    sub_100037030(v2, &v14);
    if (v19)
    {
      sub_100089D44(&v14);
    }

    else
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        v20 = v14;
        v21 = v15;
        LODWORD(v22) = v16;
        WORD2(v22) = WORD2(v16);
        BYTE6(v22) = (v16 | ((WORD2(v16) | (BYTE6(v16) << 16)) << 32)) >> 48;
        v13 = &type metadata for ByteBuffer;
        goto LABEL_24;
      }

      sub_100034300();
    }

    v6 = sub_10008A40C();
    return sub_100018460(v6, v7, v8, v9);
  }

  if (a1 == &type metadata for FileRegion)
  {
    v10 = NIOAny.tryAsFileRegion()();
    if (!v10)
    {
LABEL_19:
      v6 = sub_10008A40C();
      goto LABEL_20;
    }

    v14 = v10;
    v15 = v11;
    LODWORD(v16) = v12;
    WORD2(v16) = WORD2(v12);
    BYTE6(v16) = BYTE6(v12);
    v13 = &type metadata for FileRegion;
LABEL_24:
    swift_dynamicCast();
    v6 = a2;
    v7 = 0;
    v8 = 1;
    v9 = v13;
    return sub_100018460(v6, v7, v8, v9);
  }

  if (a1 == &type metadata for IOData)
  {
    if ((~NIOAny.tryAsIOData()() & 0xF000000000000007) == 0)
    {
      goto LABEL_19;
    }

    sub_10008A308();
    v13 = &type metadata for IOData;
    goto LABEL_24;
  }

  if (sub_1000183C4(&qword_1002ADD58) == a1)
  {
    NIOAny.tryAsByteEnvelope()(&v14);
    if (v15)
    {
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v20 = v14;
      v21 = v15;
      swift_dynamicCast();
      v6 = a2;
      v7 = 0;
      v8 = 1;
      v9 = a1;
      return sub_100018460(v6, v7, v8, v9);
    }

    v6 = sub_10008A40C();
    v9 = a1;
LABEL_20:

    return sub_100018460(v6, v7, v8, v9);
  }

  return NIOAny.tryAsOther<A>(type:)(a1, a2);
}

uint64_t NIOAny._NIOAny.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, a2);
  if (sub_10008A3A0())
  {
    v13 = sub_10008A324();
    v3(v13);
    sub_10008A41C();
LABEL_5:
    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 22) = v18;
    *(a3 + 20) = v17;
    *(a3 + 16) = v16;
LABEL_6:
    *(a3 + 56) = 0;
    return (v3)(v12, a2);
  }

  if (sub_10008A3A0())
  {
    v19 = sub_10008A324();
    v3(v19);
    sub_10008A41C();
    v14 = v20 | 0x8000000000000000;
    goto LABEL_5;
  }

  if (sub_10008A3A0())
  {
    v22 = sub_10008A324();
    v3(v22);
    v23 = WORD2(v29);
    v24 = v29;
    *a3 = v28;
    *(a3 + 20) = v23;
    *(a3 + 16) = v24;
    *(a3 + 22) = BYTE6(v29);
    goto LABEL_6;
  }

  sub_1000183C4(&qword_1002ADD58);
  if (!sub_10008A3A0())
  {
    *(a3 + 24) = a2;
    v27 = sub_1000629FC(a3);
    (*(v8 + 32))(v27, a1, a2);
    *(a3 + 56) = 2;
    return (*(v8 + 8))(v12, a2);
  }

  v25 = sub_10008A324();
  v3(v25);
  v26 = v29;
  *a3 = v28;
  *(a3 + 16) = v26;
  *(a3 + 32) = v30;
  *(a3 + 48) = v31;
  *(a3 + 56) = 1;
  return (v3)(v12, a2);
}

uint64_t NIOAny.tryAsByteBuffer()()
{
  v1 = sub_100037030(v0, v10);
  if (v11)
  {
    sub_100089D44(v10);
    return 0;
  }

  result = sub_10008A33C(v1, v2, v3, v4, v5, v6, v7, v8, v10[0]);
  if (result < 0)
  {
    sub_100034300();
    return 0;
  }

  return result;
}

uint64_t NIOAny.forceAsByteBuffer()()
{
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v2, v3);
  sub_1000376CC();
  __chkstk_darwin(v4, v5);
  sub_10008A374();
  sub_100037030(v0, v6);
  if (v14)
  {
    sub_100089D44(v11);
  }

  else
  {
    result = sub_10008A358();
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    sub_100034300();
  }

  sub_100037BE8();
  sub_10008A430();
  sub_10008A3C0("nextExpectedOutboundMessage");
  v15._countAndFlagsBits = 0x6666754265747942;
  v15._object = 0xEA00000000007265;
  sub_1001F6CA8(v15);
  sub_100037738();
  v12 = &type metadata for NIOAny._NIOAny;
  sub_100037A20();
  v8 = swift_allocObject();
  sub_10008A3F0(v8);
  sub_10008A43C();
  sub_1001F8128();
  v9 = sub_10008A388();
  v1(v9);
  sub_10008A454();

  if (!v13)
  {
    __break(1u);
  }

  sub_1001F80E8();
  sub_1001F80F8();
  v10 = sub_1000378EC();
  v1(v10);
  v16._countAndFlagsBits = sub_100037C70();
  sub_10008A46C(v16);

  sub_1000376E8();
  sub_10008A484();
  sub_10008A3E0();
  result = sub_10003787C();
  __break(1u);
  return result;
}

uint64_t NIOAny.tryAsIOData()()
{
  v1 = sub_100037030(v0, v10);
  if (!v11)
  {
    return sub_10008A33C(v1, v2, v3, v4, v5, v6, v7, v8, v10[0]);
  }

  sub_100089D44(v10);
  return 0xF000000000000007;
}

uint64_t NIOAny.forceAsIOData()()
{
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v2, v3);
  sub_1000376CC();
  __chkstk_darwin(v4, v5);
  sub_10008A374();
  sub_100037030(v0, v6);
  if (!v14)
  {
    return sub_10008A358();
  }

  sub_100089D44(v11);
  sub_100037BE8();
  sub_10008A430();
  sub_10008A3C0("nextExpectedOutboundMessage");
  v15._countAndFlagsBits = 0x617461444F49;
  v15._object = 0xE600000000000000;
  sub_1001F6CA8(v15);
  sub_100037738();
  v12 = &type metadata for NIOAny._NIOAny;
  sub_100037A20();
  v8 = swift_allocObject();
  sub_10008A3F0(v8);
  sub_10008A43C();
  sub_1001F8128();
  v9 = sub_100037B68();
  v1(v9);
  sub_10008A454();

  if (!v13)
  {
    __break(1u);
  }

  sub_1001F80E8();
  sub_1001F80F8();
  v10 = sub_1000378EC();
  v1(v10);
  v16._countAndFlagsBits = sub_100037C70();
  sub_10008A46C(v16);

  sub_1000376E8();
  sub_10008A484();
  sub_10008A3E0();
  result = sub_10003787C();
  __break(1u);
  return result;
}

uint64_t NIOAny.tryAsFileRegion()()
{
  v1 = sub_100037030(v0, v11);
  if (v12)
  {
    sub_100089D44(v11);
  }

  else
  {
    v9 = sub_10008A33C(v1, v2, v3, v4, v5, v6, v7, v8, v11[0]);
    if (v9 < 0)
    {
      return v9 & 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_100034300();
  }

  return 0;
}

uint64_t NIOAny.forceAsFileRegion()()
{
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v2, v3);
  sub_1000376CC();
  __chkstk_darwin(v4, v5);
  sub_10008A374();
  sub_100037030(v0, v6);
  if (v15)
  {
    sub_100089D44(v12);
  }

  else
  {
    v7 = sub_10008A358();
    if (v7 < 0)
    {
      return v7 & 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_100034300();
  }

  sub_100037BE8();
  sub_10008A430();
  sub_10008A3C0("nextExpectedOutboundMessage");
  v16._countAndFlagsBits = 0x69676552656C6946;
  v16._object = 0xEA00000000006E6FLL;
  sub_1001F6CA8(v16);
  sub_100037738();
  v13 = &type metadata for NIOAny._NIOAny;
  sub_100037A20();
  v9 = swift_allocObject();
  sub_10008A3F0(v9);
  sub_10008A43C();
  sub_1001F8128();
  v10 = sub_10008A388();
  v1(v10);
  sub_10008A454();

  if (!v14)
  {
    __break(1u);
  }

  sub_1001F80E8();
  sub_1001F80F8();
  v11 = sub_1000378EC();
  v1(v11);
  v17._countAndFlagsBits = sub_100037C70();
  sub_10008A46C(v17);

  sub_1000376E8();
  sub_10008A484();
  sub_10008A3E0();
  result = sub_10003787C();
  __break(1u);
  return result;
}

uint64_t NIOAny.tryAsByteEnvelope()@<X0>(uint64_t a1@<X8>)
{
  result = sub_100037030(v1, v8);
  if (v10 == 1)
  {
    v4 = v8[0];
    v5 = v8[1];
    v6 = v8[2];
    v7 = v9;
  }

  else
  {
    result = sub_100089D44(v8);
    v7 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t NIOAny.forceAsByteEnvelope()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1001F8138();
  sub_100037778();
  __chkstk_darwin(v4, v5);
  sub_1000376CC();
  __chkstk_darwin(v6, v7);
  sub_10008A374();
  result = sub_100037030(v2, v8);
  if (v18 == 1)
  {
    v10 = v15;
    *a1 = v14;
    *(a1 + 16) = v10;
    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
  }

  else
  {
    sub_100089D44(&v14);
    sub_100037BE8();
    sub_10008A430();
    sub_10008A3C0("nextExpectedOutboundMessage");
    v19._countAndFlagsBits = 0xD00000000000001DLL;
    v19._object = 0x80000001002264A0;
    sub_1001F6CA8(v19);
    sub_100037738();
    *(&v15 + 1) = &type metadata for NIOAny._NIOAny;
    sub_100037A20();
    v11 = swift_allocObject();
    sub_10008A3F0(v11);
    sub_10008A43C();
    sub_1001F8128();
    v12 = sub_100037B68();
    MEMORY[0xD000000000000018](v12);
    sub_10008A454();

    if (!*(&v16 + 1))
    {
      __break(1u);
    }

    sub_1001F80E8();
    sub_1001F80F8();
    v13 = sub_1000378EC();
    MEMORY[0xD000000000000018](v13);
    v20._countAndFlagsBits = sub_100037C70();
    sub_10008A46C(v20);

    sub_1000376E8();
    sub_10008A484();
    sub_10008A3E0();
    result = sub_10003787C();
    __break(1u);
  }

  return result;
}

uint64_t NIOAny.tryAsOther<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_100037030(v3, &v12);
  if (v16)
  {
    if (v16 == 1)
    {
      v8 = v12;
      v9 = v13;
      v10 = v14;
      v11 = v15;
      sub_1000183C4(&qword_1002ADD58);
    }

    else
    {
      sub_10003708C(&v12, &v8);
    }
  }

  else
  {
    v8 = v12;
    BYTE6(v9) = BYTE6(v13);
    WORD2(v9) = WORD2(v13);
    LODWORD(v9) = v13;
  }

  v6 = swift_dynamicCast();
  return sub_100018460(a2, v6 ^ 1u, 1, a1);
}

uint64_t NIOAny.forceAsOther<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1001F8138();
  sub_100037778();
  v21[1] = v5;
  __chkstk_darwin(v6, v7);
  sub_1000376CC();
  __chkstk_darwin(v8, v9);
  v10 = sub_1001F74B8();
  sub_10002DFFC();
  v12 = v11;
  __chkstk_darwin(v13, v14);
  v16 = v21 - v15;
  NIOAny.tryAsOther<A>(type:)(a1, v21 - v15);
  if (sub_10001C990(v16, 1, a1) != 1)
  {
    return (*(*(a1 - 8) + 32))(a2, v16, a1);
  }

  (*(v12 + 8))(v16, v10);
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_1001F77B8(56);
  v25 = v22;
  v26._object = 0x80000001002240A0;
  v26._countAndFlagsBits = 0xD000000000000018;
  sub_1001F6CA8(v26);
  v27._countAndFlagsBits = sub_1001F8218();
  object = v27._object;
  sub_1001F6CA8(v27);

  sub_100037738();
  v23 = &type metadata for NIOAny._NIOAny;
  sub_100037A20();
  *&v22 = swift_allocObject();
  sub_100037030(v2, v22 + 16);
  sub_1001F80E8();
  sub_1001F8128();
  v19 = sub_10008A388();
  object(v19);
  sub_100088740(&v22);

  if (!v24)
  {
    __break(1u);
  }

  sub_1001F80E8();
  sub_1001F80F8();
  v20 = sub_1000378EC();
  object(v20);
  v28._countAndFlagsBits = sub_100037C70();
  sub_1001F6CA8(v28);

  sub_1000376E8();
  sub_1001F7A28();
  result = sub_10003787C();
  __break(1u);
  return result;
}

uint64_t sub_100089D74()
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

_OWORD *NIOAny.asAny()@<X0>(uint64_t a1@<X8>)
{
  result = sub_100037030(v1, &v7);
  if (v11)
  {
    if (v11 == 1)
    {
      *(a1 + 24) = sub_1000183C4(&qword_1002ADD58);
      result = swift_allocObject();
      *a1 = result;
      v4 = v8;
      result[1] = v7;
      result[2] = v4;
      result[3] = v9;
      *(result + 8) = v10;
    }

    else
    {
      return sub_10003708C(&v7, a1);
    }
  }

  else
  {
    v5 = v7;
    v6 = v8 | ((WORD2(v8) | (BYTE6(v8) << 16)) << 32);
    if ((v7 & 0x8000000000000000) != 0)
    {
      *(a1 + 24) = &type metadata for FileRegion;
      *a1 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      *(a1 + 24) = &type metadata for ByteBuffer;
      *a1 = v5;
    }

    *(a1 + 8) = *(&v5 + 1);
    *(a1 + 16) = v6;
    *(a1 + 20) = WORD2(v6);
    *(a1 + 22) = BYTE6(v6);
  }

  return result;
}

uint64_t sub_100089F30()
{

  if (*(v0 + 48) != 4 && (~*(v0 + 56) & 0xF000000000000007) != 0)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t NIOAny.description.getter()
{
  v2 = 0;
  v3 = 0xE000000000000000;
  v4._countAndFlagsBits = 0x7B20796E414F494ELL;
  v4._object = 0xE900000000000020;
  sub_1001F6CA8(v4);
  NIOAny.asAny()(v1);
  sub_1001F7A28();
  sub_100019CCC(v1);
  v5._countAndFlagsBits = 32032;
  v5._object = 0xE200000000000000;
  sub_1001F6CA8(v5);
  return v2;
}

__n128 sub_10008A03C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10008A058(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 57))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008A098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_10008A0FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008A138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_10008A188(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_10008A1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IAPTransaction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADC68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  result = a2;
  if (a5 - 1 < 3)
  {
  }

  if (!a5 || a5 == 4)
  {
  }

  return result;
}

uint64_t sub_10008A3A0()
{

  return swift_dynamicCast();
}

void sub_10008A3C0(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000018;

  v2._object = (a1 | 0x8000000000000000);
  sub_1001F6CA8(v2);
}

uint64_t sub_10008A3F0(uint64_t a1)
{
  *(v2 - 128) = a1;

  return sub_100037030(v1, a1 + 16);
}

void sub_10008A430()
{
  v1 = *(v0 - 120);
  *(v0 - 144) = *(v0 - 128);
  *(v0 - 136) = v1;
}

uint64_t sub_10008A43C()
{

  return sub_1001F80E8();
}

uint64_t sub_10008A454()
{

  return sub_100088740((v0 - 128));
}

void sub_10008A46C(Swift::String a1)
{

  sub_1001F6CA8(a1);
}

uint64_t sub_10008A484()
{

  return sub_1001F7A28();
}

uint64_t sub_10008A49C(uint64_t a1, void *a2)
{
  result = sub_10013B560(a1);
  v16 = result;
  v5 = 0;
  while (1)
  {
    if (v16 == v5)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v6 = sub_1001F7808();
LABEL_6:
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[4];
    v10 = sub_1000C1A68();
    v11 = sub_1000BFC24();
    if (v7 == v10)
    {
      if (v8 == v11 && v9 == v12)
      {

        return v5;
      }

      v14 = sub_1001F7EA8();

      if (v14)
      {

        return v5;
      }
    }

    else
    {
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_22;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(a1 + 8 * v5 + 32);

    goto LABEL_6;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10008A60C(uint64_t a1, void *a2)
{
  result = sub_10013B560(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_1001F7808();
      goto LABEL_6;
    }

    if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(a1 + 8 * v6 + 32);

LABEL_6:
    if (v7[2] == a2[2])
    {
      if (v7[3] == a2[3] && v7[4] == a2[4])
      {

LABEL_20:

        return v6;
      }

      v9 = sub_1001F7EA8();

      if (v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10008A73C(uint64_t a1)
{
  result = sub_10013B560(a1);
  v3 = result;
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_1001F7808();
      goto LABEL_6;
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    v6 = *(v5 + OBJC_IVAR____TtCC25ASOctaneSupportXPCServiceP33_4168D9B03AF8124BE3111952AAE62D6930SubscriptionRenewalCoordinator11RenewalTask_isComplete);

    if (v6)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10008A864()
{
  v1 = *(v0 + 152);
  if (*(v0 + 160) >> 60 == 11)
  {
    swift_unownedRetain();
    v1 = sub_10008A8FC();
    v3 = v2;
    swift_unownedRelease();
    *(v0 + 152) = v1;
    *(v0 + 160) = v3;
    sub_100040C5C(v1, v3);
    v4 = sub_1000999D4();
    sub_100099404(v4, v5);
  }

  v6 = sub_100037A2C();
  sub_100099418(v6, v7);
  return v1;
}

uint64_t sub_10008A8FC()
{
  v0 = sub_1001F6288();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v14 - v7;
  type metadata accessor for OctaneConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11 = sub_100098B84(0xD000000000000010, 0x8000000100226870, 3289456, 0xE300000000000000, v10);

  if (!v11)
  {
    return 0;
  }

  sub_1001F6238();

  (*(v1 + 32))(v8, v5, v0);
  v12 = sub_1001F62C8();
  (*(v1 + 8))(v8, v0);
  return v12;
}

uint64_t sub_10008AC20(void *a1, uint64_t a2)
{
  sub_10001AE68(a1, a1[3]);
  v3 = sub_1000D2524();
  v5 = v4;
  swift_beginAccess();
  *(a2 + 96) = v3;

  swift_beginAccess();
  *(a2 + 104) = v5;
}

uint64_t sub_10008ACA8()
{
  sub_1000999C8();
  v14 = 0;
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v2 = sub_1001F6688();
  sub_10009951C(v2, qword_1002E6180);

  v3 = sub_1001F6668();
  v4 = sub_1001F7288();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_1000996CC();
    v13[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_10005053C();
    *(v5 + 4) = sub_1000E4544(v6, v7, v8);
    *(v5 + 12) = 2080;
    sub_100037C40();
    if (v14)
    {
      v9 = 7561576;
    }

    else
    {
      v9 = 0x2074276E73656F64;
    }

    if (v14)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xEC00000065766168;
    }

    v11 = sub_1000E4544(v9, v10, v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s transaction(s) in billing error", v5, 0x16u);
    swift_arrayDestroy();
    sub_100099474();

    sub_100021754();
  }

  sub_100037C40();
  return v14;
}

void sub_10008AE7C(void *a1, BOOL *a2, uint64_t a3, uint64_t a4)
{
  sub_10001AE68(a1, a1[3]);
  v7 = sub_1000D37DC(a3, a4);
  v8 = v7;
  if (v7)
  {
  }

  *a2 = v8 != 0;
}

uint64_t sub_10008AEDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = _swiftEmptyArrayStorage;
  sub_10001AE68((v3 + 56), *(v3 + 80));
  v43 = &v48;
  v44 = a1;
  v45 = a2;
  sub_1001E5114(sub_1000993EC, v42);
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v6 = sub_1001F6688();
  v7 = sub_100019C94(v6, qword_1002E6180);
  v8 = sub_1001F6668();
  v9 = sub_1001F72B8();
  if (sub_100099534(v9))
  {
    sub_100099504();
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    sub_100037C40();
    *(v10 + 4) = sub_10013B560(v48);
    sub_100099494();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_100021754();
  }

  sub_100037C40();
  v16 = v48;
  result = sub_10013B560(v48);
  if (!result)
  {
  }

  v18 = result;
  if (result >= 1)
  {
    v19 = v16 & 0xC000000000000001;

    v20 = 0;
    v39 = v16;
    v40 = v16 & 0xC000000000000001;
    v41 = v18;
    do
    {
      if (v19)
      {
        v21 = sub_1001F7808();
      }

      else
      {
        v21 = *(v16 + 8 * v20 + 32);
      }

      v22 = v21;
      sub_10008E56C();
      sub_100099834();
      if (v24)
      {
      }

      else
      {
        v25 = v23;
        v26 = v22;
        v27 = sub_1001F6668();
        v28 = sub_1001F7298();

        if (os_log_type_enabled(v27, v28))
        {
          v30 = sub_1000996CC();
          v47 = swift_slowAlloc();
          *v30 = 136315394;
          v31 = sub_1000BFC14();
          v33 = v7;
          v34 = v3;
          v35 = sub_1000E4544(v31, v32, &v47);

          *(v30 + 4) = v35;
          v3 = v34;
          v7 = v33;
          sub_100099984();
          v46 = v25;
          sub_10005C288();
          v36 = sub_1001F7FE8();
          v38 = sub_1000E4544(v36, v37, &v47);

          *(v30 + 14) = v38;
          _os_log_impl(&_mh_execute_header, v27, v28, "Failed to resolve billing error for %s: %s", v30, 0x16u);
          swift_arrayDestroy();
          sub_100021754();

          v16 = v39;
          sub_100021754();
        }

        v19 = v40;
        v18 = v41;
      }

      ++v20;
    }

    while (v18 != v20);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008B260()
{
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return 0;
}

void sub_10008B2F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000CD4A0(a2, a3, a4, a5, a6, a7, a8, v16, v21[0], v21[1], v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v22 = a8;
  sub_1001A4F6C(sub_10009942C, v21, v17);
  v19 = v18;

  v20 = *a9;
  *a9 = v19;
}

void sub_10008B3C8()
{
  sub_100037C08();
  v17 = v0;
  v2 = v1;
  v3 = 0;
  v5 = *(v4 + 16);
  v16 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v6 = v4 + 40;
  v15 = v4 + 40;
LABEL_2:
  v7 = (v6 + 16 * v3);
  while (1)
  {
    if (v5 == v3)
    {
      sub_100037B00();
      return;
    }

    if (v3 >= v5)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v18 = 0;
    v11 = sub_100099B14();
    __chkstk_darwin(v11, v12);
    v14[2] = &v18;
    v14[3] = v9;
    v14[4] = v10;
    v14[5] = v2;
    v14[6] = v17;

    sub_1001E5114(sub_100099388, v14);

    ++v3;
    v7 += 2;
    if (v18)
    {
      sub_1001F6F08();
      v13 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        sub_10005669C(v13);
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v16 = v19;
      v3 = v8;
      v6 = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_10008B654(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000BFC24();
  sub_10008C1B4();
  v5 = v4;

  sub_1000C1D48();
  v6 = sub_1000C5458(8);
  if (v7)
  {
    v6 = sub_1000C1A68();
  }

  sub_1000C1DE8(v6, 0);
  v8 = COERCE_DOUBLE(sub_1000C5464(12));
  if (v9)
  {
    v8 = sub_1000BFDA8();
  }

  sub_1000C1DF0(*&v8, 0);
  sub_100099978();
  sub_10008EA08(v10, v11);
  sub_1000C1E5C(1);
  sub_100099AFC(a3);
  return v5;
}

void sub_10008B744()
{
  sub_100099620();
  v1 = v0;
  v80 = v2;
  v4 = v3;
  v77 = v5;
  v82 = v6;
  v83 = v7;
  v79 = v8;
  v9 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v9);
  sub_10001E844();
  __chkstk_darwin(v10, v11);
  v13 = &v73 - v12;
  v14 = sub_1001F6508();
  sub_10001A278();
  v16 = v15;
  __chkstk_darwin(v17, v18);
  sub_10004FE10();
  v75 = v19;
  sub_100099510();
  __chkstk_darwin(v20, v21);
  v23 = &v73 - v22;
  v78 = v0[16];
  v24 = *(v78 + 16);

  os_unfair_lock_lock(v24);
  swift_getKeyPath();
  v81 = sub_100094D64();

  os_unfair_lock_unlock(v24);

  sub_100098F84(v4, v13, &unk_1002B3450);
  sub_1000994CC(v13);
  if (v25)
  {
    sub_1001F64E8();
    sub_1000994CC(v13);
    v26 = v16;
    if (!v25)
    {
      sub_1000374B8(v13, &unk_1002B3450);
    }
  }

  else
  {
    (*(v16 + 32))(v23, v13, v14);
    v26 = v16;
  }

  sub_1001F6428();
  v28 = v27;
  v29 = *(v26 + 8);
  v76 = v14;
  v74 = v29;
  v29(v23, v14);
  sub_1000183C4(&qword_1002B2010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100200C90;
  *(inited + 32) = 0;
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = 7959874;
  *(inited + 48) = 0xE300000000000000;
  *(inited + 72) = 2;
  *(inited + 104) = &type metadata for String;
  v31 = v83;
  *(inited + 80) = v82;
  *(inited + 88) = v31;
  *(inited + 112) = 7;
  *(inited + 144) = &type metadata for UInt;
  *(inited + 120) = v81;
  *(inited + 152) = 9;
  v32 = v79;
  v33 = *(v79 + 80);
  v34 = *(v79 + 88);
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v33;
  *(inited + 168) = v34;
  *(inited + 192) = 11;
  *(inited + 224) = &type metadata for Double;
  *(inited + 200) = v28;
  *(inited + 232) = 13;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v77;
  *(inited + 272) = 16;
  v35 = 0xEA0000000000656CLL;
  v36 = *(v32 + 112);
  v37 = inited;
  v77 = v26 + 8;
  v38 = 0x62616D75736E6F43;
  switch(v36)
  {
    case 1:
      sub_100099A00();
      sub_1000999EC();
      break;
    case 2:
      sub_100099818();
      v38 = v39 + 2;
      break;
    case 3:
      sub_100099818();
      break;
    default:
      break;
  }

  *(v37 + 304) = &type metadata for String;
  *(v37 + 280) = v38;
  *(v37 + 288) = v35;
  *(v37 + 312) = 20;
  sub_10001AE68(v0 + 2, v0[5]);

  sub_1000792D8(v88);
  v41 = v88[0];
  v40 = v88[1];

  sub_10001C7E4(v88);
  *(v37 + 344) = &type metadata for String;
  *(v37 + 320) = v41;
  *(v37 + 328) = v40;
  *(v37 + 352) = 21;
  v42 = sub_1001E84A8();
  v44 = v43;
  v46 = v45;
  type metadata accessor for Decimal(0);
  *(v37 + 384) = v47;
  *(v37 + 360) = v42;
  *(v37 + 368) = v44;
  *(v37 + 376) = v46;
  sub_100098F08();
  v87 = sub_1001F69B8();
  v48 = *(v78 + 16);

  os_unfair_lock_lock(v48);
  v49 = 3157553;
  if (*(v1 + 112))
  {
    v49 = 3157554;
  }

  v86 = &type metadata for String;
  v84 = v49;
  v85 = 0xE300000000000000;
  v50 = sub_100099790();
  sub_100145028(v50, 26);
  os_unfair_lock_unlock(v48);

  switch(*(v32 + 112))
  {
    case 1:
      sub_1000995FC();
      goto LABEL_14;
    case 2:

      goto LABEL_15;
    default:
LABEL_14:
      v51 = sub_1001F7EA8();

      if (v51)
      {
LABEL_15:
        v86 = &type metadata for UInt;
        v84 = v81;
        v52 = sub_100099790();
        sub_100145028(v52, 8);
        v86 = &type metadata for Double;
        v84 = v28;
        sub_100145028(&v84, 12);
      }

      else
      {
        switch(*(v32 + 112))
        {
          case 1:
            sub_100099938();
            goto LABEL_27;
          case 2:
          case 3:
LABEL_27:
            v59 = sub_1001F7EA8();

            if ((v59 & 1) == 0)
            {
              v60 = *(v32 + 80);
              v61 = *(v32 + 88);

              v62 = sub_10008D67C(v82, v83, v60, v61);

              if (v62)
              {
                v63 = sub_1000C1A68();
                v86 = &type metadata for UInt;
                v84 = v63;
                v64 = sub_100099790();
                sub_100145028(v64, 8);
                *&v65 = sub_1000BFDA8();
                v86 = &type metadata for Double;
                v84 = v65;
                v66 = sub_100099790();
                sub_100145028(v66, 12);
                v67 = v75;
                sub_1001F64E8();
                v68 = sub_1000C18DC();
                v74(v67, v76);
                if (v68)
                {
                  v86 = &type metadata for String;
                  v84 = 0x6F6C6E776F646552;
                  v85 = 0xEA00000000006461;
                  v69 = sub_100099790();
                  sub_100145028(v69, 0);
                }

                v70 = sub_1000C5388(15);
                if (v71)
                {
                  v86 = &type metadata for String;
                  v84 = v70;
                  v85 = v71;
                  v72 = sub_100099790();
                  sub_100145028(v72, 15);
                }
              }
            }

            break;
          default:

            break;
        }
      }

      v84 = 0;
      v53 = sub_10001AE68(v1 + 7, v1[10]);
      __chkstk_darwin(v53, v54);
      sub_1000997F8();
      *(v55 - 16) = &v84;
      *(v55 - 8) = &v87;
      sub_1001E524C(sub_100099448, v56);
      if (v80)
      {
        if (qword_1002AC478 != -1)
        {
          sub_10007B910();
          swift_once();
        }

        sub_1000183C4(&qword_1002AC7E0);
        sub_100047958();
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1001FE9E0;
        *(v57 + 32) = v82;
        *(v57 + 40) = v83;

        sub_1000FBFE4(0, v57);
      }

      if (qword_1002AC478 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      if (!v84)
      {
        __break(1u);
        JUMPOUT(0x10008BF64);
      }

      v58 = v84;
      sub_100131590();

      sub_1000995E0();
      return;
  }
}

void sub_10008BF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v22 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v23, v24);
  sub_100023510();
  v25 = sub_1000999D4();
  v26 = sub_1000183C4(v25);
  sub_100056658(v26);
  sub_10001E844();
  __chkstk_darwin(v27, v28);
  v30 = &a9 - v29;
  sub_1000995D4();
  sub_100018460(v31, v32, v33, v22);
  sub_1001F64E8();
  sub_1000929DC();
  v35 = v34;
  v37 = v36;
  v38 = sub_10007B9BC();
  v39(v38);
  sub_1000374B8(v30, &unk_1002B3450);
  if (v37)
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    sub_1000183C4(&qword_1002AC7E0);
    sub_100047958();
    v40 = swift_allocObject();
    v41 = sub_1000998C8(v40, xmmword_1001FE9E0);
    sub_1000997A8(v41, v42);
    sub_100099A34(1);
  }

  if (v35)
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    sub_1000183C4(&qword_1002AC7E0);
    sub_100047958();
    v43 = swift_allocObject();
    v44 = sub_1000998C8(v43, xmmword_1001FE9E0);
    sub_1000997A8(v44, v45);
    sub_100099A34(0);
  }

  sub_100037B00();
}

void sub_10008C1B4()
{
  sub_100099620();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1000183C4(&unk_1002B3450);
  v14 = sub_100056658(v13);
  __chkstk_darwin(v14, v15);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v16, v17);
  sub_100099670();
  sub_10004FE44();
  __chkstk_darwin(v18, v19);
  sub_100099670();
  v89 = v20;
  sub_100099510();
  __chkstk_darwin(v21, v22);
  v24 = &v83 - v23;
  v90 = sub_1001F6508();
  sub_10001A278();
  v93 = v25;
  __chkstk_darwin(v26, v27);
  sub_10004FE10();
  sub_10004FE44();
  __chkstk_darwin(v28, v29);
  sub_100099918();
  __chkstk_darwin(v30, v31);
  v33 = &v83 - v32;
  v92 = v4;
  sub_10008B744();
  v35 = v34;
  v100 = 0;
  sub_100099B14();
  v99[2] = &v100;
  v99[3] = v12;
  v96 = v10;
  v97 = v8;
  v99[4] = v10;
  v99[5] = v8;
  v86 = v6;
  v99[6] = v6;
  sub_1001E5114(sub_100099378, v99);
  sub_1000BFDA8();
  v94 = v33;
  sub_1001F6418();
  v36 = v100;
  if (v100)
  {
    v37 = COERCE_DOUBLE(sub_1000C5464(4));
    v38 = 0.0;
    if ((v39 & 1) == 0)
    {
      v38 = v37;
    }
  }

  else
  {
    v38 = 0.0;
  }

  v88 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate;
  v40 = *&v35[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___purchaseDate] - v38;
  sub_1001F6418();
  sub_100099B2C();
  v41 = sub_10007A5F0();
  v42 = sub_10008ED88(v1, v41);
  v43 = v93;
  v44 = *(v93 + 8);
  v45 = v90;
  v95 = v93 + 8;
  v98 = v44;
  (v44)(v1, v90);
  v46 = v89;
  if (v40 >= v42)
  {
    (*(v43 + 16))(v84, v94, v45);
  }

  else
  {
    if (v36)
    {
      sub_1000C1AC4(v89);
      sub_1000994CC(v46);
      if (!v47)
      {
        v48 = sub_1000994EC();
        v49(v48);
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000995D4();
      sub_100018460(v50, v51, v52, v45);
    }

    (*(v43 + 16))(v24, v94, v45);
    sub_1000994CC(v46);
    if (!v47)
    {
      sub_1000374B8(v46, &unk_1002B3450);
    }
  }

LABEL_14:
  sub_100099784();
  sub_100018460(v53, v54, v55, v45);
  sub_1000C1F4C();
  sub_1000C20A4(0, 0);
  v56 = *(*(v2 + 128) + 16);

  os_unfair_lock_lock(v56);
  swift_getKeyPath();
  v57 = sub_100094D64();

  os_unfair_lock_unlock(v56);

  sub_1000C21C8(v57, 0);

  v58 = sub_10009967C();
  sub_1000C1ACC(v58, v59);

  sub_100099B2C();
  sub_1000BFC24();
  LODWORD(v89) = sub_10007A5F0();

  v60 = *(v12 + 176);
  v61 = *(v12 + 184);
  v62 = *(v12 + 136);
  v91 = v36;
  if (v62)
  {
    LODWORD(v84) = v61;

    v63 = sub_10008D2D0();

    if (v63)
    {

      v61 = v84;
    }

    else
    {
      sub_100161BA8();
      v60 = v64;
      v61 = v65;
    }
  }

  sub_1001F64E8();
  sub_10009967C();
  v66 = sub_10008B260();

  v67 = sub_100099700();
  v98(v67);
  if (v66)
  {
    v97 = v60;
    v68 = sub_1000BFDA8();
    v69 = v87;
    sub_100098F84(v86, v87, &unk_1002B3450);
    sub_1000994CC(v69);
    if (v47)
    {
      v70 = v85;
      sub_1001F64E8();
      sub_1000994CC(v69);
      if (!v47)
      {
        sub_1000374B8(v69, &unk_1002B3450);
      }
    }

    else
    {
      v70 = v85;
      (*(v93 + 32))(v85, v69, v45);
    }

    sub_1001F6428();
    v72 = v71;
    (v98)(v70, v45);
    if (v68 < v72)
    {
      v73 = sub_1000C5464(4);
      v75 = v74;

      goto LABEL_27;
    }

    v60 = v97;
  }

  sub_1001F6418();
  v76 = sub_10004B73C(v60, v61, v1, v89);
  v77 = sub_100099700();
  v98(v77);
  v75 = 0;
  v73 = *&v76;
LABEL_27:
  sub_1000C223C(v73, v75 & 1);

  v78 = sub_10009967C();
  sub_1000C2244(v78, v79);
  sub_10008EA08(v35, v92 & 1);
  v80 = sub_1000C22AC();
  v81 = v91;
  switch(v80)
  {
    case 2:

      break;
    default:
      v82 = sub_1001F7EA8();

      if ((v82 & 1) == 0)
      {
        sub_10009531C(v35);
      }

      break;
  }

  (v98)(v94, v45);

  sub_1000995E0();
}

void sub_10008C914(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a5;
  v10 = sub_1000183C4(&unk_1002B3450);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v27 - v12;
  v14 = sub_1001F6508();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AE68(a1, a1[3]);
  v20 = *(a3 + 192);
  v19 = *(a3 + 200);
  sub_100098F84(a6, v13, &unk_1002B3450);
  if (sub_10001C990(v13, 1, v14) == 1)
  {

    sub_1001F64E8();
    if (sub_10001C990(v13, 1, v14) != 1)
    {
      sub_1000374B8(v13, &unk_1002B3450);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_1000D1500(v20, v19, v27, v28, v18, v21, v22, v23, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, vars0, vars8);
  v25 = v24;

  (*(v15 + 8))(v18, v14);
  v26 = *a2;
  *a2 = v25;
}

uint64_t sub_10008CB2C(void *a1, char a2)
{
  if (sub_1000C22E4())
  {
    return 0;
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  sub_1000C2320(v5);
  if (a2)
  {
    sub_1000C23D8(1u);
  }

  return sub_10008EA08(a1, 1);
}

uint64_t sub_10008CBB0()
{
  v19 = 4;
  v18[1] = &_swiftEmptySetSingleton;
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E524C(v0, v1);
  v2 = sub_1000C1A68();
  sub_1001D193C(v18, v2);
  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  v4 = sub_10007B9F4(v3);
  sub_1000BFC24();
  sub_100131D3C(v4);

  sub_10013146C();
  v5 = sub_1000C5388(15);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v5;
  v8 = v6;
  sub_1000183C4(&qword_1002AC7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  *(inited + 32) = v7;
  *(inited + 40) = v8;

  sub_10008B3C8();
  v11 = v10;

  swift_setDeallocating();
  sub_1001E56B4();
  if (!sub_10013B560(v11))
  {

LABEL_12:

    return v19;
  }

  sub_100099A54();
  if (inited)
  {
    v12 = sub_1001F7808();
  }

  else
  {
    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = sub_1000BFDA8();
  if (v14 < sub_1000BFDA8())
  {
    v15 = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
    sub_1000C1ACC(v15, v16);
    sub_100099AFC(v13);
  }

  return v19;
}

BOOL sub_10008CDF8(void *a1, _BYTE *a2, void *a3, uint64_t *a4)
{
  sub_10001AE68(a1, a1[3]);
  v8 = sub_1001D071C(a3);
  *a2 = v8;
  if (v8 != 4)
  {
    return 0;
  }

  sub_10001AE68(a1, a1[3]);
  v9 = sub_1000BFC24();
  v11 = v10;
  v12 = sub_1000C1A68();
  v13 = sub_1001D037C(v9, v11, v12);

  *a4 = v13;

  return *a2 == 4;
}

void sub_10008CEC4()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v5 = sub_10008E918(v3, v1);
  v6 = sub_10001A07C(v5);
  v34 = v2;
  v33 = v0;
  if (v6)
  {
    v7 = v6;
    sub_10003448C();
    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    do
    {
      if (v9)
      {
        v10 = sub_1001F7808();
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = sub_1000C1A68();

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10005669C(v13);
        sub_10003448C();
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = v5 & 0xC000000000000001;
  }

  v15 = sub_10013B560(v5);
  v16 = 0;
  v35 = _swiftEmptyArrayStorage;
  while (v15 != v16)
  {
    if (v9)
    {
      sub_100099700();
      v17 = sub_1001F7808();
    }

    else
    {
      if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v17 = *(v5 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v20 = sub_1000C5458(25);
    v22 = v21;

    ++v16;
    if ((v22 & 1) == 0)
    {
      v23 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000333A8();
        v23 = v26;
      }

      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        sub_10005669C(v24);
        sub_1000333A8();
        v23 = v27;
      }

      v23[2] = v25 + 1;
      v35 = v23;
      v23[v25 + 4] = v20;
      v16 = v19;
    }
  }

  v28 = sub_10001AE68(v33 + 7, v33[10]);
  __chkstk_darwin(v28, v29);
  sub_1000997F8();
  *(v30 - 16) = v4;
  *(v30 - 8) = v34;
  sub_1001E524C(sub_100099364, v31);
  v32 = v33[16];

  sub_1000B72C4(v32, v33, _swiftEmptyArrayStorage, v35);

  if (qword_1002AC478 == -1)
  {
    goto LABEL_26;
  }

LABEL_29:
  sub_10007B910();
  swift_once();
LABEL_26:
  sub_100131D3C(_swiftEmptyArrayStorage);

  sub_100037B00();
}

uint64_t sub_10008D1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a1 + 96) + 16))
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = (a2 + 32);
      do
      {
        v8 = *v7++;
        sub_100132974(v8);
        --v6;
      }

      while (v6);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(*(a1 + 104) + 16))
  {
    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = (a3 + 32);
      do
      {
        v11 = *v10++;
        sub_100132974(v11);
        --v9;
      }

      while (v9);
    }
  }

  return swift_endAccess();
}

uint64_t sub_10008D2D0()
{
  sub_1000997D8();
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return 0;
}

void sub_10008D344(void *a1, _BYTE *a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000C9E78();
  *a2 = v3 & 1;
}

uint64_t sub_10008D3AC(uint64_t a1)
{
  sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v2, v3);
  sub_100023510();
  sub_1000183C4(&qword_1002AC7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  v5 = *(a1 + 200);
  *(inited + 32) = *(a1 + 192);
  *(inited + 40) = v5;

  sub_1000999A8();
  sub_10008B3C8();
  v7 = v6;
  swift_setDeallocating();
  sub_1001E56B4();
  if (sub_10013B560(v7))
  {
    v8 = (v7 & 0xC000000000000001);
    sub_1001C19A8(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      sub_1001F7808();
    }

    else
    {
      v9 = *(v7 + 32);
    }

    sub_10009958C();

    sub_1001F64E8();
    v10 = sub_1000C18DC();

    v11 = sub_100037B7C();
    v12(v11);
    if (v10)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10008D53C()
{
  sub_1000997D8();
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return 0;
}

void sub_10008D5B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  sub_10001AE68(a1, a1[3]);
  v12 = *(a2 + 80);
  v11 = *(a2 + 88);

  sub_1000CC928(v12, v11, a3, a4, a5, v13, v14, v15, v21[0], v21[1], v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
  v17 = v16;

  v22 = a5;
  sub_1001A4F6C(sub_10009931C, v21, v17);
  v19 = v18;

  v20 = *a6;
  *a6 = v19;
}

uint64_t sub_10008D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100037B94();
  v20 = 0;
  sub_10001AE68(v5 + 2, v5[5]);
  sub_100037B7C();
  sub_1000795A8();
  v9 = sub_10007B9BC();
  v11 = sub_1000EE5B8(v9, v10);

  if (v11)
  {
    v12 = sub_10001AE68(v5 + 7, v5[10]);
    __chkstk_darwin(v12, v13);
    sub_100099808();
    *(v14 - 32) = &v20;
    *(v14 - 24) = v6;
    *(v14 - 16) = v4;
    *(v14 - 8) = v11;
    sub_1001E5114(sub_100099300, v15);
  }

  else
  {
    v16 = sub_10001AE68(v5 + 7, v5[10]);
    __chkstk_darwin(v16, v17);
    v19[2] = &v20;
    v19[3] = v6;
    v19[4] = v4;
    v19[5] = a3;
    v19[6] = a4;
    sub_1001E5114(sub_1000992E8, v19);
  }

  return v20;
}

void sub_10008D7C0(void *a1, void **a2)
{
  sub_10001AE68(a1, a1[3]);

  sub_1000CA54C();
  v4 = v3;

  v5 = *a2;
  *a2 = v4;
}

uint64_t sub_10008D850(void *a1, void *a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000CAB58();
  *a2 = v3;

  return _objc_release_x1();
}

uint64_t sub_10008D8E0(void *a1, void *a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000CB160();
  *a2 = v3;
}

void sub_10008D944()
{
  sub_100099620();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10008A864();
  if (v11 >> 60 == 15)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_10009951C(v12, qword_1002E6180);
    v13 = sub_1001F6668();
    v14 = sub_1001F7298();
    if (sub_100099534(v14))
    {
      v15 = sub_10003A87C();
      sub_100099888(v15);
      sub_100099494();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      sub_100021754();
    }

    goto LABEL_51;
  }

  v21 = v10;
  sub_100094E2C();
  if (v22)
  {
    v23 = v22;
    v86 = 0;
    v24 = sub_100099694();
    __chkstk_darwin(v24, v25);
    sub_100099808();
    *(v26 - 32) = &v86;
    *(v26 - 24) = v27;
    *(v26 - 16) = v9;
    v29 = *v28;
    sub_1001E5114(sub_1000992B8, v30);
    v31 = v86;
    if (!v86)
    {
      __break(1u);
      JUMPOUT(0x10008E374);
    }

    v32 = sub_10013B560(v86);
    v81 = v23;
    v80 = v1;
    v79 = v7;
    if (v32)
    {
      v82 = v32;
      if (v32 < 1)
      {
        __break(1u);
LABEL_53:
        sub_1000216F8();
        swift_once();
LABEL_46:
        v73 = sub_1001F6688();
        sub_100019C94(v73, qword_1002E6180);
        v74 = v29;
        v75 = sub_1001F6668();
        v76 = sub_1001F7298();

        if (os_log_type_enabled(v75, v76))
        {
          sub_100099504();
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 138412290;
          *(v77 + 4) = v74;
          *v78 = v5;
          v74 = v74;
          _os_log_impl(&_mh_execute_header, v75, v76, "Error encoding and signing receipt: %@", v77, 0xCu);
          sub_1000374B8(v78, &unk_1002BA650);
          sub_100021754();

          sub_100021754();

          sub_1000996AC();
        }

        else
        {

          sub_1000996AC();
        }

        goto LABEL_51;
      }

      v33 = 0;
      v34 = v31 & 0xC000000000000001;
      v35 = _swiftEmptyArrayStorage;
      v36 = v32;
      do
      {
        if (v34)
        {
          sub_1000994EC();
          v37 = sub_1001F7808();
        }

        else
        {
          v37 = *(v31 + 8 * v33 + 32);
        }

        v38 = v37;
        if (sub_1000C2468())
        {
          sub_1001F6B58();
          v39 = sub_1000C2550();
          v85 = &type metadata for Int;
          *&v84 = v39;
          sub_10003708C(&v84, &v83);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1001E5A4C();

          sub_1001F6B58();
          sub_100099990();
          v40 = sub_1000BFC14();
          v85 = &type metadata for String;
          *&v84 = v40;
          *(&v84 + 1) = v41;
          sub_100099724();
          sub_1000995C4();
          sub_1001E5A4C();

          sub_1001F6B58();
          sub_100099990();
          *&v84 = sub_1000C1A68();
          v42 = sub_1001F7E28();
          v85 = &type metadata for String;
          *&v84 = v42;
          *(&v84 + 1) = v43;
          sub_100099724();
          sub_1000995C4();
          sub_1001E5A4C();

          sub_1001F6B58();
          sub_1000BFDA8();
          v44 = sub_1001F6508();
          v85 = v44;
          sub_1000629FC(&v84);
          sub_100099ACC();
          sub_100099724();
          sub_1000995C4();
          sub_1001E5A4C();

          v45 = sub_1000C5458(8);
          if ((v46 & 1) == 0)
          {
            v47 = v45;
            sub_1000C5464(12);
            if ((v48 & 1) == 0)
            {
              sub_1001F6B58();
              *&v84 = v47;
              v49 = sub_1001F7E28();
              v85 = &type metadata for String;
              *&v84 = v49;
              *(&v84 + 1) = v50;
              sub_100099754();
              sub_1000994A4();
              sub_1001E5A4C();

              sub_1001F6B58();
              v85 = v44;
              sub_1000629FC(&v84);
              sub_100099ACC();
              sub_100099724();
              sub_1000995C4();
              v36 = v82;
              sub_1001E5A4C();
            }
          }

          sub_1000C257C();
          sub_1000998F8();
          switch(v51)
          {
            case 1:
              sub_1000995FC();
              goto LABEL_22;
            case 3:

              goto LABEL_25;
            default:
LABEL_22:
              v52 = sub_1001F7EA8();

              if ((v52 & 1) == 0)
              {
                goto LABEL_28;
              }

LABEL_25:
              sub_1000C5464(4);
              if ((v53 & 1) == 0)
              {
                sub_1001F6B58();
                sub_100099A94();
                sub_100099ACC();
                sub_100099754();
                sub_1000994A4();
                sub_1001E5A4C();
                v36 = v82;
              }

              v54 = sub_1000C25B8();
              sub_1001F6B58();
              v85 = &type metadata for Int;
              *&v84 = v54;
              sub_100099754();
              sub_1000994A4();
              sub_1001E5A4C();

LABEL_28:
              sub_1000C5464(3);
              if (v55 & 1) == 0 && (sub_1000BFBB0())
              {
                sub_1001F6B58();
                sub_100099A94();
                sub_100099ACC();
                sub_100099754();
                sub_1000994A4();
                sub_1001E5A4C();
                v36 = v82;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100032BE8();
                v35 = v58;
              }

              v57 = v35[2];
              v56 = v35[3];
              if (v57 >= v56 >> 1)
              {
                sub_10005669C(v56);
                sub_100032BE8();
                v35 = v59;
              }

              v35[2] = v57 + 1;
              v35[v57 + 4] = _swiftEmptyDictionarySingleton;
              v34 = v31 & 0xC000000000000001;
              break;
          }
        }

        else
        {
        }

        ++v33;
      }

      while (v36 != v33);
    }

    else
    {
      v35 = _swiftEmptyArrayStorage;
    }

    sub_10006E6CC(v35);

    v29 = objc_allocWithZone(ASOctaneReceiptEncoder);
    v21 = sub_1000981D0();
    *&v84 = 0;
    v7 = v81;
    v71 = [v21 encodeAndSignWithIdentity:v81 error:{&v84, v79, v5, v3, v80}];
    v5 = v84;
    v72 = v84;
    sub_10009958C();
    sub_1001F63C8();

    if (!v29)
    {

      sub_1000996AC();

      goto LABEL_51;
    }

    if (qword_1002AC510 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v60 = sub_1001F6688();
  sub_10009951C(v60, qword_1002E6180);
  v61 = sub_1001F6668();
  v62 = sub_1001F7298();
  if (sub_100099534(v62))
  {
    v63 = sub_10003A87C();
    sub_100099888(v63);
    sub_100099494();
    _os_log_impl(v64, v65, v66, v67, v68, 2u);
    sub_100021754();
  }

  v69 = sub_10007B9BC();
  sub_10003A36C(v69, v70);
LABEL_51:
  sub_1000995E0();
}

void sub_10008E384(void *a1, char a2, char a3)
{
  v6 = sub_1001F6508();
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v13 = v12 - v11;
  sub_1001F64F8();
  sub_1001F6428();
  v15 = v14;
  (*(v8 + 8))(v13, v6);
  sub_1000C2620(a3 & 1);
  sub_1000C2690(v15, 0);
  sub_1000C26FC(1);
  sub_10008EA08(a1, 1);
  sub_100099834();
  if (v17)
  {
    if (a2)
    {
      if (qword_1002AC478 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      sub_1000183C4(&qword_1002AC7E0);
      sub_100047958();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001FE9E0;
      *(v18 + 32) = sub_1000BFC14();
      *(v18 + 40) = v19;
      v20 = sub_1000BFC24();
      sub_100131014(v18, v20, v21);
    }
  }

  else
  {
    v22 = v16;
    sub_10005C288();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
  }
}

void *sub_10008E6C0()
{
  sub_100037B94();
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10008E790()
{
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return 0;
}

uint64_t sub_10008E7E8(void *a1, unint64_t *a2, uint64_t a3)
{
  sub_10001AE68(a1, a1[3]);
  *a2 = sub_1000D04D4(a3);

  return _objc_release_x1();
}

uint64_t sub_10008E840()
{
  sub_1000999C8();
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return 0;
}

uint64_t sub_10008E8A8(void *a1, void *a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000CFEE4();
  *a2 = v3;

  return _objc_release_x1();
}

uint64_t sub_10008E930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000999C8();
  v10 = 0;
  sub_100099694();
  v7[2] = &v10;
  v8 = v4;
  v9 = v3;
  sub_1001E5114(a3, v7);
  result = v10;
  if (!v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008E994(void *a1, void *a2)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000D0560();
  *a2 = v3;
}

uint64_t sub_10008EA08(void *a1, char a2)
{
  sub_100099694();
  v4 = sub_100099568();
  sub_1001E524C(v4, v5);
  v6 = OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels;
  if (*(a1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction_updatedModels))
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    sub_1000183C4(&qword_1002AC7E0);
    sub_100047958();
    v7 = swift_allocObject();
    v7[2].n128_u64[0] = sub_1000998C8(v7, xmmword_1001FE9E0);
    v7[2].n128_u64[1] = v8;
    sub_10009999C();
    sub_1000FBFE4(v9, v10);

    sub_10009531C(a1);
  }

  if (a2 & 1) != 0 && (*(a1 + v6) & 2) != 0 && (sub_1000C2858())
  {
    if (qword_1002AC478 != -1)
    {
      sub_10007B910();
      swift_once();
    }

    sub_1000183C4(&qword_1002AC7E0);
    sub_100047958();
    v11 = swift_allocObject();
    v11[2].n128_u64[0] = sub_1000998C8(v11, xmmword_1001FE9E0);
    v11[2].n128_u64[1] = v12;
    sub_10009999C();
    sub_1000FBFE4(v13, v14);
  }

  if (qword_1002AC478 != -1)
  {
    sub_10007B910();
    swift_once();
  }

  sub_100131590();
  return 4;
}

BOOL sub_10008EBF4(void *a1, _BYTE *a2, void *a3)
{
  sub_10001AE68(a1, a1[3]);
  v5 = sub_1001D0828(a3);
  *a2 = v5;
  return v5 == 4;
}

void *sub_10008EC44()
{
  sub_100099694();
  v0 = sub_100099568();
  sub_1001E5114(v0, v1);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10008ECF0(void *a1, void *a2, _BYTE *a3)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000D0B68();
  v6 = v5;
  *a2 = v7;

  *a3 = v6 & 1;
  return result;
}

double sub_10008ED88(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = sub_1001F6508();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100099484();
  v12 = v10 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v28 - v15;
  v17 = a2 >> 6;
  if (v4 > 0x3F)
  {
    if (v17 != 2)
    {
      v24 = sub_10005053C();
      v25(v24);
      v26 = sub_1001CF6F8(5, a2 & 0x3F);
      v21 = v26 + v26;
      (*(v7 + 8))(v12, v5);
      return v21;
    }
  }

  else if (a2)
  {
    v18 = sub_10005053C();
    v19(v18);
    v20 = sub_1001ECBB4(v12, 2, 5);
    (*(v7 + 8))(v12, v5);
    return dbl_1002082A0[a2 - 1] * v20;
  }

  (*(v7 + 16))(&v28 - v15, a1, v5);
  v22 = sub_1001CF4AC(60, 3, a2, v16);
  v23 = 1.0;
  if (v17 == 2)
  {
    v23 = 2.0;
  }

  return v23 * v22;
}

void sub_10008EF68()
{
  sub_100099620();
  v1 = v0;
  v3 = v2;
  v4 = sub_1000183C4(&unk_1002B3450);
  sub_100056658(v4);
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  v8 = &v116 - v7;
  v9 = sub_1001F6508();
  sub_10001A278();
  v125 = v10;
  __chkstk_darwin(v11, v12);
  sub_10004FE10();
  v122 = v13;
  sub_100099510();
  __chkstk_darwin(v14, v15);
  sub_100099670();
  v121 = v16;
  sub_100099510();
  __chkstk_darwin(v17, v18);
  sub_100099670();
  v123 = v19;
  sub_100099510();
  v22 = __chkstk_darwin(v20, v21);
  v24 = &v116 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v116 - v26;
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v28 = sub_1001F6688();
  v29 = sub_100019C94(v28, qword_1002E6180);
  v30 = v3;
  v126 = v29;
  v31 = sub_1001F6668();
  v32 = sub_1001F7288();
  if (os_log_type_enabled(v31, v32))
  {
    sub_100099504();
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = sub_1000C1A68();

    _os_log_impl(&_mh_execute_header, v31, v32, "Beginning billing retry for transaction: %lu", v33, 0xCu);
    sub_100021754();
  }

  else
  {

    v31 = v30;
  }

  sub_1000C5464(4);
  if ((v34 & 1) == 0)
  {
    v124 = v9;
    sub_1001F6418();
    sub_10001AE68((v1 + 16), *(v1 + 40));
    sub_1000BFC14();
    sub_1000BFC24();
    sub_1000795A8();

    v39 = sub_100099718();
    v41 = sub_1000EE5B8(v39, v40);

    if (!v41)
    {
      v66 = v27;
      v67 = v30;
      v68 = sub_1001F6668();
      v69 = sub_1001F7298();

      if (os_log_type_enabled(v68, v69))
      {
        sub_100099504();
        v70 = swift_slowAlloc();
        v71 = sub_10003A894();
        v127 = v71;
        *v70 = 136315138;
        v72 = v67 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID;
        v73 = *(&v67->isa + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___productID);
        v74 = *(v72 + 1);

        v75 = sub_1000E4544(v73, v74, &v127);

        *(v70 + 4) = v75;
        sub_100099494();
        _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
        sub_100019CCC(v71);
        sub_100021754();

        sub_100021754();
      }

      (*(v125 + 8))(v66, v124);
      goto LABEL_47;
    }

    sub_10001AE68((v1 + 16), *(v1 + 40));
    v42 = v24;
    v43 = v8;
    v44 = (v30 + OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID);

    v45 = sub_10007A5F0();

    v46 = *(v1 + 40);
    v119 = v1;
    sub_10001AE68((v1 + 16), v46);
    v117 = v44;
    v47 = v43;
    v48 = v42;
    v49 = v45;

    v50 = sub_10007AB64();

    v118 = v41;
    v51 = *(v41 + 184);
    sub_1001F64E8();
    v52 = sub_100037A2C();
    v54 = sub_1001ECBB4(v52, v53, v51);
    v55 = v124;
    v56 = *(v125 + 8);
    v57 = sub_100037A2C();
    v56(v57);
    sub_10008ED88(v27, v49);
    v120 = v27;
    sub_1001F64A8();
    sub_100099784();
    sub_100018460(v58, v59, v60, v55);
    sub_1000C2A14(v47);
    if (v50)
    {
      if (v49)
      {
        v61 = v49 >> 6;
        if (v61 != 2)
        {
          v62 = *(v125 + 16);
          v63 = v54 <= 7;
          v64 = v124;
          if (v63)
          {
            v88 = v121;
            v62(v121, v120, v124);
            if (!(v49 >> 6))
            {
              sub_1001ECBB4(v88, 1, 4);
              v91 = sub_10005053C();
              v56(v91);
              sub_100099A20(dbl_1002082A0);
              goto LABEL_35;
            }

            if (v61 == 1)
            {
              sub_1001CF6F8(4, v49 & 0x3F);
            }
          }

          else
          {
            v65 = v122;
            v62(v122, v120, v124);
            if (!(v49 >> 6))
            {
              sub_1001ECBB4(v65, 1, 5);
              v90 = sub_10005053C();
              v56(v90);
              sub_100099A20(dbl_1002082A0);
              goto LABEL_35;
            }

            if (v61 == 1)
            {
              sub_1001CF6F8(5, v49 & 0x3F);
            }
          }

          v89 = sub_10005053C();
          v56(v89);
LABEL_35:
          sub_1001F64A8();
          sub_100099784();
          sub_100018460(v92, v93, v94, v64);
          sub_1000C2A1C(v47);
          goto LABEL_36;
        }
      }

      if (v54 <= 7)
      {
        v81 = 6;
      }

      else
      {
        v81 = 16;
      }

      v122 = v56;
      v82 = v124;
      v83 = *(v125 + 16);
      v83(v48, v120, v124);
      sub_1001CF4AC(v81, 3, v49, v48);
      v84 = v123;
      sub_1001F64A8();
      v83(v47, v84, v82);
      v56 = v122;
      sub_100099784();
      sub_100018460(v85, v86, v87, v82);
      sub_1000C2A1C(v47);
      (v56)(v84, v82);
    }

LABEL_36:
    sub_10008EA08(v30, 0);
    sub_1000C5388(15);
    if (v95)
    {
      v122 = v56;
      v96 = v30;
      v97 = sub_1001F6668();
      v98 = sub_1001F72B8();
      if (os_log_type_enabled(v97, v98))
      {
        sub_100099504();
        v99 = swift_slowAlloc();
        *v99 = 134217984;
        *(v99 + 4) = sub_1000C1A68();

        _os_log_impl(&_mh_execute_header, v97, v98, "Asking to show billing error sheet for transaction %lu", v99, 0xCu);
        sub_100021754();
      }

      else
      {

        v97 = v96;
      }

      v108 = v124;
      v109 = v117;

      type metadata accessor for BillingErrorHelperRoute();
      v110 = *v109;
      v111 = v109[1];

      v128._countAndFlagsBits = sub_100037B7C();
      sub_10001AD5C(v128, v110, v111);

      if (qword_1002AC478 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      v112 = *v109;
      v113 = v109[1];

      v114 = sub_10005053C();
      sub_100132174(v114, v115, 769, v112, v113);

      (v122)(v120, v108);
    }

    else
    {
      v100 = sub_1001F6668();
      v101 = sub_1001F7298();
      if (sub_100099534(v101))
      {
        v102 = sub_10003A87C();
        sub_100099888(v102);
        sub_100099494();
        _os_log_impl(v103, v104, v105, v106, v107, 2u);
        sub_100021754();
      }

      else
      {
      }

      (v56)(v120, v124);
    }

LABEL_47:
    sub_1000995E0();
    return;
  }

  v126 = sub_1001F6668();
  v35 = sub_1001F7298();
  if (os_log_type_enabled(v126, v35))
  {
    v36 = sub_10003A87C();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v126, v35, "Can't start billing retry on transaction without expiration date", v36, 2u);
    sub_100021754();
  }

  sub_1000995E0();
}

void sub_10008F8E8(void *a1, char a2)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  v5 = sub_1000C152C();
  v6 = &off_1002AC000;
  if (((1 << v5) & 0x36) != 0)
  {
    goto LABEL_5;
  }

  if (v5)
  {
    v34 = 10;
  }

  else
  {
    v34 = v5;
  }

  v35 = 10;
  if (a2)
  {
    v35 = 0;
  }

  if (v34 != v35)
  {
LABEL_5:
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v7 = sub_1001F6688();
    sub_10009951C(v7, qword_1002E6180);
    v8 = a1;
    v9 = sub_1001F6668();
    v10 = sub_1001F72B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_1000996CC();
      v12 = sub_10003A894();
      v54 = v12;
      *v11 = 134218242;
      *(v11 + 4) = sub_1000C1A68();

      sub_100099858();
      v13 = sub_1001F6BA8();
      v15 = sub_1000E4544(v13, v14, &v54);

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "putting transaction %lu into price increase %s", v11, 0x16u);
      sub_100019CCC(v12);
      v6 = &off_1002AC000;
      sub_100021754();

      sub_100021754();
    }

    else
    {
    }

    sub_1000C1B88(v4);
    sub_10009994C();
    sub_10008EA08(v16, v17);
  }

  sub_1000C5388(15);
  if (v18)
  {
    sub_1000C152C();
    sub_10009970C();
    if (!v20)
    {
      v21 = sub_1000B4B80(v19);
      if (v21 != 2)
      {
        v22 = v21;
        sub_1000C152C();
        sub_10009970C();
        if (!v20)
        {
          sub_1000B4C78(v23);
          sub_100099834();
          if (!v20)
          {
            v53 = v24;
            if (v6[162] != -1)
            {
              sub_1000216F8();
              swift_once();
            }

            v36 = sub_1001F6688();
            sub_10009951C(v36, qword_1002E6180);
            v37 = a1;
            v38 = sub_1001F6668();
            v39 = sub_1001F72B8();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = sub_1000996CC();
              v41 = sub_10003A894();
              v54 = v41;
              *v40 = 134218242;
              *(v40 + 4) = sub_1000C1A68();

              *(v40 + 12) = 2080;
              v42 = sub_1001F6BA8();
              sub_1000E4544(v42, v43, &v54);
              sub_100013EFC();

              *(v40 + 14) = v37;
              _os_log_impl(&_mh_execute_header, v38, v39, "asking to show price increase sheet for %lu %s", v40, 0x16u);
              sub_100019CCC(v41);
              sub_100099474();

              sub_100021754();
            }

            else
            {
            }

            type metadata accessor for PriceIncreaseUIRoute();
            sub_1000BFC24();
            v45 = v44;
            v55._countAndFlagsBits = sub_1000999A8();
            v47 = sub_100051198(v55, v46, v45);
            v49 = v48;

            if (qword_1002AC478 != -1)
            {
              sub_10007B910();
              swift_once();
            }

            v50 = &v37[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID];
            v51 = *&v37[OBJC_IVAR____TtC25ASOctaneSupportXPCService11Transaction____lazy_storage___bundleID];
            v52 = *(v50 + 1);

            sub_100132174(v47, v49, v22 & 1 | (v53 << 8), v51, v52);

            return;
          }
        }
      }
    }
  }

  if (v6[162] != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v25 = sub_1001F6688();
  sub_10009951C(v25, qword_1002E6180);
  v26 = sub_1001F6668();
  v27 = sub_1001F7298();
  if (sub_100099534(v27))
  {
    v28 = sub_10003A87C();
    sub_100099888(v28);
    sub_100099494();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    sub_100021754();
  }
}

uint64_t sub_10008FD70(void *a1, char a2)
{
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v4 = sub_1001F6688();
  sub_100019C94(v4, qword_1002E6180);
  v5 = a1;
  v6 = sub_1001F6668();
  v7 = sub_1001F72B8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = sub_1000C1A68();

    *(v8 + 12) = 1024;
    *(v8 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "resolving price increase for %lu with response: %{BOOL}d", v8, 0x12u);
    sub_100021754();
  }

  else
  {

    v6 = v5;
  }

  v9 = sub_1000C152C();
  if (!v9)
  {
    if ((a2 & 1) == 0)
    {
      sub_1000C1B88(2u);
      v15 = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
      sub_1000C1ACC(v15, v16);
      goto LABEL_15;
    }

    v10 = 1;
LABEL_11:
    sub_1000C1B88(v10);
LABEL_15:
    sub_10009994C();
    return sub_10008EA08(v17, v18);
  }

  if (v9 == 3)
  {
    v10 = 4;
    goto LABEL_11;
  }

  v11 = v5;
  v12 = sub_1001F6668();
  v13 = sub_1001F7298();
  if (os_log_type_enabled(v12, v13))
  {
    sub_100099504();
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = sub_1000C1A68();

    _os_log_impl(&_mh_execute_header, v12, v13, "cannot resolve price increase on transaction %lu which does not need consent or notice", v14, 0xCu);
    sub_100099474();
  }

  else
  {

    v12 = v11;
  }

  sub_10005C288();
  swift_allocError();
  *v20 = 0;
  return swift_willThrow();
}

unint64_t sub_10008FFB8()
{
  sub_100037B94();
  v59 = 1;
  v4 = sub_100090534(v1, v2, v0, &v59);
  if (!v4)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v10 = sub_1001F6688();
    sub_10009951C(v10, qword_1002E6180);

    v11 = sub_1001F6668();
    v12 = sub_1001F72B8();

    if (os_log_type_enabled(v11, v12))
    {
      sub_100099504();
      swift_slowAlloc();
      v13 = sub_100099598();
      v58 = v13;
      *v3 = 136315138;
      v14 = sub_100037B7C();
      *(v3 + 4) = sub_1000E4544(v14, v15, v16);
      sub_100099870();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      sub_100019CCC(v13);
      sub_100099474();

      sub_100021754();
    }

    return 0;
  }

  v5 = v4;
  sub_1000C5388(15);
  if (!v6)
  {

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v22 = sub_1001F6688();
    sub_10009951C(v22, qword_1002E6180);
    v23 = v5;
    sub_100013F08();

    v24 = sub_1001F6668();
    sub_1001F7298();

    if (sub_100099AE4())
    {
      v25 = sub_1000996CC();
      v26 = sub_10003A894();
      v58 = v26;
      *v25 = 134218242;
      *(v25 + 4) = sub_1000C1A68();

      sub_100099858();
      v27 = sub_100037B7C();
      *(v25 + 14) = sub_1000E4544(v27, v28, v29);
      sub_100099610();
      _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
      sub_100019CCC(v26);
      sub_100021754();

LABEL_32:
      sub_100021754();

LABEL_34:
      return 0;
    }

    goto LABEL_33;
  }

  if (v59 != 3)
  {

    type metadata accessor for PriceIncreaseUIRoute();
    sub_100099958();
    sub_1000995B4();
    v9 = sub_100051198(v61, v35, v36);

    sub_1000C152C();
    sub_10009970C();
    if (v38)
    {
      v39 = 4;
    }

    else
    {
      v39 = sub_1000B4C78(v37);
    }

    sub_1000C152C();
    sub_10009970C();
    if (v38)
    {
      if (v39 == 4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v41 = sub_1000B4B80(v40);
      if (v39 == 4)
      {
LABEL_22:

        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v42 = sub_1001F6688();
        sub_10009951C(v42, qword_1002E6180);
        v43 = v5;
        sub_100013F08();

        v24 = sub_1001F6668();
        sub_1001F7298();
        sub_1000998E0();
        if (os_log_type_enabled(v24, v39))
        {
          sub_10003A894();
          v58 = sub_100099894();
          *v9 = 134218498;
          *(v9 + 4) = sub_1000C1A68();

          *(v9 + 12) = 2080;
          v44 = sub_100037B7C();
          *(v9 + 14) = sub_1000E4544(v44, v45, v46);
          *(v9 + 22) = 2080;
          v47 = sub_1001F6BA8();
          sub_1000E4544(v47, v48, &v58);
          sub_100013EFC();

          *(v9 + 24) = 2080;
          v49 = "transaction %lu for %s has a pending message incompatible type for message %s";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v24, v39, v49, v9, 0x20u);
          swift_arrayDestroy();
          sub_100021754();

          goto LABEL_32;
        }

        goto LABEL_33;
      }

      if (v41 != 2)
      {

        return v9;
      }
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v50 = sub_1001F6688();
    sub_10009951C(v50, qword_1002E6180);
    v51 = v5;
    sub_100013F08();

    v24 = sub_1001F6668();
    sub_1001F7298();
    sub_1000998E0();
    if (os_log_type_enabled(v24, v39))
    {
      sub_10003A894();
      v58 = sub_100099894();
      *v9 = 134218498;
      *(v9 + 4) = sub_1000C1A68();

      *(v9 + 12) = 2080;
      v52 = sub_100037B7C();
      *(v9 + 14) = sub_1000E4544(v52, v53, v54);
      *(v9 + 22) = 2080;
      v55 = sub_1001F6BA8();
      sub_1000E4544(v55, v56, &v58);
      sub_100013EFC();

      *(v9 + 24) = 2080;
      v49 = "transaction %lu for %s has a pending message (%s incompatible type for message control";
      goto LABEL_31;
    }

LABEL_33:

    goto LABEL_34;
  }

  type metadata accessor for BillingErrorHelperRoute();
  sub_100099958();
  sub_1000995B4();
  v9 = sub_10001AD5C(v60, v7, v8);

  return v9;
}

uint64_t sub_100090534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  sub_10001AE68((a1 + 56), *(a1 + 80));
  v8[2] = &v9;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1001E5114(sub_100099248, v8);
  return v9;
}

uint64_t sub_10009065C(void *x0_0, uint64_t a2, uint64_t a3)
{
  v6 = sub_100090B5C(v3, x0_0, a2, a3);
  if (v6)
  {
    v7 = v6;
    sub_1000C5388(15);
    if (v8)
    {
      type metadata accessor for PriceIncreaseUIRoute();
      sub_100099958();
      sub_1000995B4();
      sub_100051198(v50, v9, v10);
      sub_100099990();

      sub_1000C152C();
      sub_10009970C();
      if (v40 || (sub_1000B4C78(v11), sub_100099834(), v40))
      {

        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v12 = sub_1001F6688();
        sub_10009951C(v12, qword_1002E6180);
        v7 = v7;

        v13 = sub_1001F6668();
        sub_1001F7298();
        sub_1000998E0();
        if (os_log_type_enabled(v13, v4))
        {
          v14 = sub_10003A894();
          v15 = sub_10003A894();
          *v14 = 134218498;
          *(v14 + 4) = sub_1000C1A68();

          sub_100099984();
          v16 = sub_100037B7C();
          v19 = sub_1000E4544(v16, v17, v18);
          sub_1000997B8(v19);
          *(v14 + 24) = qword_1002082D0[x0_0];
          v20 = "transaction %lu for %s in %ld has a pending message incompatible type for message";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v13, v4, v20, v14, 0x20u);
          sub_100019CCC(v15);
          sub_100021754();

          sub_100021754();

LABEL_29:
          return sub_1000999D4();
        }
      }

      else
      {
        sub_1000C152C();
        sub_10009970C();
        if (!v40 && sub_1000B4B80(v41) != 2)
        {
          goto LABEL_29;
        }

        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v42 = sub_1001F6688();
        sub_10009951C(v42, qword_1002E6180);
        v7 = v7;

        v13 = sub_1001F6668();
        sub_1001F7298();
        sub_1000998E0();
        if (os_log_type_enabled(v13, v4))
        {
          v14 = sub_10003A894();
          v15 = sub_10003A894();
          *v14 = 134218498;
          *(v14 + 4) = sub_1000C1A68();

          sub_100099984();
          v43 = sub_100037B7C();
          v46 = sub_1000E4544(v43, v44, v45);
          sub_1000997B8(v46);
          *(v14 + 24) = qword_1002082D0[x0_0];
          v20 = "transaction %lu for %s in %ld has a pending message incompatible type for message control";
          goto LABEL_10;
        }
      }

      goto LABEL_29;
    }

    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v28 = sub_1001F6688();
    sub_10009951C(v28, qword_1002E6180);
    v29 = v7;
    sub_100013F08();

    v30 = sub_1001F6668();
    sub_1001F7298();

    if (sub_100099AE4())
    {
      v31 = sub_1000996CC();
      v49 = sub_10003A894();
      *v31 = 134218242;
      *(v31 + 4) = sub_1000C1A68();

      sub_100099858();
      v32 = sub_100037B7C();
      *(v31 + 14) = sub_1000E4544(v32, v33, v34);
      sub_100099610();
      _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
      sub_100019CCC(v49);
      sub_100021754();

      sub_100021754();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v21 = sub_1001F6688();
    sub_10009951C(v21, qword_1002E6180);

    v22 = sub_1001F6668();
    v23 = sub_1001F72B8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_1000996CC();
      v48 = sub_10003A894();
      *v24 = 136315394;
      v25 = sub_100037B7C();
      *(v24 + 4) = sub_1000E4544(v25, v26, v27);
      *(v24 + 12) = 2048;
      *(v24 + 14) = qword_1002082D0[x0_0];
      _os_log_impl(&_mh_execute_header, v22, v23, "no transactions for %s in state %ld have pending messages", v24, 0x16u);
      sub_100019CCC(v48);
      sub_100021754();

      sub_100099474();
    }
  }

  return sub_1000999D4();
}

uint64_t sub_100090B5C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  sub_10001AE68((a1 + 56), *(a1 + 80));
  v8[2] = &v12;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  sub_1001E5114(sub_100099238, v8);
  return v12;
}

void sub_100090BD8(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_10001AE68(a1, a1[3]);
  sub_1000183C4(&qword_1002B2028);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  *(inited + 32) = a3;
  sub_1000D2AE8(inited, a4, a5, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v16 = v15;
  swift_setDeallocating();
  v17 = *a2;
  *a2 = v16;
}

uint64_t sub_100090C88()
{
  sub_100037B94();
  v4 = sub_100090F10(v1, v2, v0);
  if (v4)
  {
    v5 = v4;
    sub_1000C5388(15);
    if (v6)
    {
      type metadata accessor for BillingErrorHelperRoute();
      sub_100099958();
      sub_1000995B4();
      sub_10001AD5C(v35, v7, v8);
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v20 = sub_1001F6688();
      sub_10009951C(v20, qword_1002E6180);
      v21 = v5;
      sub_100013F08();

      v22 = sub_1001F6668();
      sub_1001F7298();

      if (sub_100099AE4())
      {
        v23 = sub_1000996CC();
        v34 = sub_10003A894();
        *v23 = 134218242;
        *(v23 + 4) = sub_1000C1A68();

        sub_100099858();
        v24 = sub_100037B7C();
        *(v23 + 14) = sub_1000E4544(v24, v25, v26);
        sub_100099610();
        _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
        sub_100019CCC(v34);
        sub_100021754();

        sub_100021754();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v9 = sub_1001F6688();
    sub_10009951C(v9, qword_1002E6180);

    v10 = sub_1001F6668();
    v11 = sub_1001F72B8();

    if (os_log_type_enabled(v10, v11))
    {
      sub_100099504();
      swift_slowAlloc();
      v33 = sub_100099598();
      *v3 = 136315138;
      v12 = sub_100037B7C();
      *(v3 + 4) = sub_1000E4544(v12, v13, v14);
      sub_100099870();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      sub_100019CCC(v33);
      sub_100099474();

      sub_100021754();
    }
  }

  return sub_100037A2C();
}

uint64_t sub_100090F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  sub_10001AE68((a1 + 56), *(a1 + 80));
  v6[2] = &v7;
  v6[3] = a2;
  v6[4] = a3;
  sub_1001E5114(sub_10009922C, v6);
  return v7;
}

uint64_t sub_100090F7C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10001AE68(a1, a1[3]);
  *a2 = sub_1000D37DC(a3, a4);

  return _objc_release_x1();
}

uint64_t sub_100090FDC(char a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 1:
      v13 = 3;
      goto LABEL_10;
    case 2:
      v13 = 0;
LABEL_10:
      result = sub_10009065C(v13, a2, a3);
      break;
    case 3:
      result = sub_100090C88();
      break;
    default:
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v3 = sub_1001F6688();
      sub_10009951C(v3, qword_1002E6180);
      v4 = sub_1001F6668();
      v5 = sub_1001F7298();
      if (sub_100099534(v5))
      {
        sub_100099504();
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = 1;
        sub_100099494();
        _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
        sub_100021754();
      }

      result = _s25ASOctaneSupportXPCService27NIOHTTPClientUpgradeHandlerC12upgradeState33_DA99B82EE915FC6038DE006F2EC0FD37LLAC0eH0AELLOvpfi_0();
      break;
  }

  return result;
}

uint64_t sub_1000910F8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = _swiftEmptyArrayStorage;
  v66 = _swiftEmptyArrayStorage;
  v67 = _swiftEmptyArrayStorage;
  sub_100099694();
  v59 = a1;
  v60 = a2;
  v61 = &v67;
  v62 = &v66;
  sub_1001E5114(sub_1000991BC, v58);
  if (qword_1002AC510 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_1000216F8();
    swift_once();
LABEL_2:
    v8 = sub_1001F6688();
    sub_100019C94(v8, qword_1002E6180);

    v9 = sub_1001F6668();
    sub_1001F7278();
    sub_1000998E0();
    if (os_log_type_enabled(v9, v3))
    {
      v10 = sub_10003A894();
      v11 = sub_10003A894();
      v63[0] = v11;
      *v10 = 134218498;
      sub_100037C40();
      *(v10 + 4) = sub_10001A07C(v67);
      sub_100099984();
      v12 = sub_1000E4544(a1, a2, v63);
      sub_1000997B8(v12);
      sub_100037C40();
      *(v10 + 24) = sub_10001A07C(v66);
      _os_log_impl(&_mh_execute_header, v9, v3, "Will start renewing %ld active subscriptions for %s. %ld subscriptions expired and need to be caught up.", v10, 0x20u);
      sub_100019CCC(v11);
      sub_100021754();

      sub_100021754();
    }

    sub_100037C40();
    v13 = v67;
    v14 = sub_10013B560(v67);
    if (!v14)
    {
      goto LABEL_12;
    }

    a1 = v14;
    if (v14 < 1)
    {
      break;
    }

    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        sub_1000999A8();
        v16 = sub_1001F7808();
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      sub_10009531C(v16);
    }

    while (a1 != v15);

LABEL_12:
    sub_100037C40();
    a2 = v66;
    if (!sub_10013B560(v66))
    {
      goto LABEL_48;
    }

    v18 = sub_1001F6668();
    v19 = sub_1001F72B8();
    if (os_log_type_enabled(v18, v19))
    {
      sub_100099504();
      v20 = swift_slowAlloc();
      v21 = sub_10003A894();
      v63[0] = v21;
      *v20 = 136315138;
      type metadata accessor for Transaction();

      sub_1001F6F48();
      a1 = v4;

      v22 = sub_100099718();
      v25 = sub_1000E4544(v22, v23, v24);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Catching up %s subscriptions", v20, 0xCu);
      sub_100019CCC(v21);
      sub_100021754();

      sub_100099474();
    }

    v65 = v7;
    v64 = &_swiftEmptySetSingleton;
    v26 = sub_10013B560(a2);
    v57 = a2 & 0xC000000000000001;
    v27 = a2 & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v56 = a2;
    while (v26 != v3)
    {
      if (v57)
      {
        v28 = sub_1001F7808();
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_51;
        }

        v28 = *(a2 + 8 * v3 + 32);
      }

      v29 = v28;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_50;
      }

      a1 = v4;
      sub_10009208C();
      v31 = v30;
      v33 = v32;
      sub_1001F6F08();
      v34 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v34 >> 1)
      {
        sub_10005669C(v34);
        sub_1001F6F58();
      }

      sub_1001F6F98();
      v7 = v65;
      if (v31)
      {
        v35 = v33;
        v36 = sub_1000BFC24();
        v38 = v37;

        v39 = v38;
        a2 = v56;
        sub_1001D1564(v63, v36, v39);
      }

      else
      {
      }

      v4 = a1;
      ++v3;
    }

    a1 = v64;
    v40 = sub_1000183C4(&qword_1002AC7D0);
    v63[3] = v40;
    v63[4] = sub_1000991C8();
    v63[0] = v7;
    v41 = sub_10001AE68(v63, v40);
    sub_10001A07C(*v41);

    v65 = sub_1001F70C8();
    sub_100019CCC(v63);
    v42 = sub_10013B560(v7);
    v3 = 0;
    a2 = v7 & 0xC000000000000001;
    while (v42 != v3)
    {
      sub_1001C19A8(v3, a2 == 0, v7);
      if (a2)
      {
        v43 = sub_1001F7808();
      }

      else
      {
        v43 = *(v7 + 8 * v3 + 32);
      }

      v44 = v43;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_52;
      }

      v45 = sub_1000BFC24();
      sub_1001D1564(v63, v45, v46);

      ++v3;
    }

    v57 = a1;

    v7 = v65;
    a1 = v65 + 56;
    v47 = 1 << *(v65 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v65 + 56);
    v50 = (v47 + 63) >> 6;

    v51 = 0;
    v4 = &off_1002AC000;
    while (v49)
    {
LABEL_42:
      v53 = (*(v7 + 48) + ((v51 << 10) | (16 * __clz(__rbit64(v49)))));
      a2 = *v53;
      v3 = v53[1];
      v54 = qword_1002AC478;

      if (v54 != -1)
      {
        sub_10007B910();
        swift_once();
      }

      v49 &= v49 - 1;
      sub_100130A24(a2, v3);
    }

    while (1)
    {
      v52 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v52 >= v50)
      {

        if (qword_1002AC478 != -1)
        {
          goto LABEL_55;
        }

        goto LABEL_47;
      }

      v49 = *(a1 + 8 * v52);
      ++v51;
      if (v49)
      {
        v51 = v52;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_55:
  sub_10007B910();
  swift_once();
LABEL_47:
  sub_1000FC1F0(0, v7);

  sub_1000FC1F0(1, v57);

LABEL_48:
}