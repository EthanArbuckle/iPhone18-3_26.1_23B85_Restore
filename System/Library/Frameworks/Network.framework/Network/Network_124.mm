Swift::Void __swiftcall ProtocolOptions.setLogID(prefix:parent:protocolLogIDNumber:)(Swift::String prefix, Swift::String parent, Swift::Int protocolLogIDNumber)
{
  v4 = v3;
  object = parent._object;
  countAndFlagsBits = parent._countAndFlagsBits;
  v8 = prefix._object;
  v9 = prefix._countAndFlagsBits;
  v10 = v3 + *(*v3 + 160);
  swift_beginAccess();
  *v10 = protocolLogIDNumber;
  *(v10 + 8) = 0;
  MEMORY[0x1865D9CA0](v9, v8);
  MEMORY[0x1865D9CA0](countAndFlagsBits, object);
  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v11 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v11);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v12 = (v4 + *(*v4 + 168));
  swift_beginAccess();
  *v12 = 91;
  v12[1] = 0xE100000000000000;
}

uint64_t ProtocolOptions.setProtocolInstance(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IPProtocol.IPInstance();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = 0;
LABEL_7:
    swift_unknownObjectRetain();
    a1 = v6;
    goto LABEL_8;
  }

  type metadata accessor for UDPProtocol.UDPInstance();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v6 = v8;
    v7 = 0x2000000000000000;
    goto LABEL_7;
  }

  type metadata accessor for TCPProtocol.TCPInstance();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v6 = v9;
    v7 = 0x4000000000000000;
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  if ((~a2 & 0x9000000000000007) != 0)
  {
    v7 = a2 | 0x6000000000000000;
  }

  else
  {
    a1 = 0;
    v7 = 0x1000000000000007;
  }

LABEL_8:
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = v7;

  return sub_181AAD250(v10, v11);
}

uint64_t ProtocolCompareMode.description.getter()
{
  v1 = *v0;
  v2 = 0x6C61757165;
  v3 = 0x676E696E696F6ALL;
  v4 = 0x20676E696E696F6ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746169636F737361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ProtocolCompareMode.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_1822B11A8()
{
  v1 = *v0;
  v2 = 0x6C61757165;
  v3 = 0x676E696E696F6ALL;
  v4 = 0x20676E696E696F6ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746169636F737361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ProtocolOptions.identifier.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return sub_181F48350(v6, v7, v8);
}

double ProtocolOptions.protocolInstance.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  if ((~v2 & 0x1000000000000007) == 0 || (v2 & 0x1000000000000000) != 0)
  {
    result = 0.0;
    *a1 = xmmword_182AE3CC0;
  }

  else
  {
    v3 = *(v1 + 48);
    *a1 = v3;
    *(a1 + 8) = v2;
    sub_1822B330C(v3, v2);
  }

  return result;
}

uint64_t ProtocolOptions.protocolInstance.setter(uint64_t *a1)
{
  v2 = a1[1];
  if ((~v2 & 0xF000000000000007) != 0)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0;
    v2 = 0x1000000000000007;
  }

  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;
  return sub_181AAD250(v4, v5);
}

uint64_t (*ProtocolOptions.protocolInstance.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 56);
  if ((~v3 & 0x1000000000000007) == 0 || (v3 & 0x1000000000000000) != 0)
  {
    *a1 = xmmword_182AE3CC0;
  }

  else
  {
    v4 = *(v1 + 48);
    *a1 = v4;
    *(a1 + 8) = v3;
    sub_1822B330C(v4, v3);
  }

  return sub_1822B13EC;
}

uint64_t sub_1822B13EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_1822B3360(*a1, v2);
    if ((v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    if ((v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      v8 = 0x1000000000000007;
    }

    else
    {
      v8 = v2;
    }

    *(v4 + 48) = v5;
    *(v4 + 56) = v8;
    sub_181AAD250(v6, v7);

    return sub_1822B2F9C(v3, v2);
  }

  else
  {
    if ((v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v11 = *(v4 + 48);
    v12 = *(v4 + 56);
    if ((v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      v13 = 0x1000000000000007;
    }

    else
    {
      v13 = v2;
    }

    *(v4 + 48) = v10;
    *(v4 + 56) = v13;

    return sub_181AAD250(v11, v12);
  }
}

uint64_t ProtocolOptions.protocolHandle.getter()
{
  v1 = *(v0 + 56);
  if ((v1 & 0x1000000000000000) == 0 || (~v1 & 0x1000000000000007) == 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

uint64_t ProtocolOptions.protocolHandle.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = 0x1000000000000000;
  if (!a1)
  {
    v4 = 0x1000000000000007;
  }

  *(v1 + 48) = a1;
  *(v1 + 56) = v4;
  return sub_181AAD250(v3, v2);
}

uint64_t (*ProtocolOptions.protocolHandle.modify(void *a1))(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  if ((v3 & 0x1000000000000000) == 0 || (~v3 & 0x1000000000000007) == 0)
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_1822B1528;
}

uint64_t sub_1822B1528(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = 0x1000000000000000;
  if (!v2)
  {
    v5 = 0x1000000000000007;
  }

  *(v1 + 48) = v2;
  *(v1 + 56) = v5;
  return sub_181AAD250(v3, v4);
}

uint64_t ProtocolOptions.legacyParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ED411A90;
  swift_beginAccess();
  return sub_181AACF84(v1 + v3, a1);
}

uint64_t ProtocolOptions.legacyParameters.setter(uint64_t a1)
{
  v3 = qword_1ED411A90;
  swift_beginAccess();
  sub_181B2D2D8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t ProtocolOptions.perProtocolOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_182AD39B8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ProtocolOptions.perProtocolOptions.setter(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_182AD39B8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *ProtocolOptions.proxyEndpoint.getter()
{
  v0 = sub_1822B3374();
  v1 = v0;
  return v0;
}

void ProtocolOptions.proxyEndpoint.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ProtocolOptions.proxyNextHops.getter()
{
  sub_1822B33C4();
}

uint64_t ProtocolOptions.proxyNextHops.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ProtocolOptions.topID.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t ProtocolOptions.topID.setter(uint64_t a1, char a2)
{
  v5 = v2 + *(*v2 + 152);
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t ProtocolOptions.logIDNumber.getter()
{
  v1 = v0 + *(*v0 + 160);
  swift_beginAccess();
  return *v1;
}

uint64_t ProtocolOptions.logIDNumber.setter(uint64_t a1, char a2)
{
  v5 = v2 + *(*v2 + 160);
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t ProtocolOptions.logIDString.getter()
{
  v0 = sub_1822B2FB0();

  return v0;
}

uint64_t ProtocolOptions.logIDString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 168));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ProtocolOptions.overrideStackEndpoint.getter()
{
  v1 = *(*v0 + 176);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProtocolOptions.overrideStackEndpoint.setter(char a1)
{
  v3 = *(*v1 + 176);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ProtocolOptions.prohibitJoining.getter()
{
  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProtocolOptions.prohibitJoining.setter(char a1)
{
  v3 = *(*v1 + 184);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ProtocolOptions.serialize()()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v12 - v4;
  v6 = *(v1 + 128);
  swift_beginAccess();
  v8 = (*(v3 + 48))(&v0[v6], 1, AssociatedTypeWitness);
  v9 = 0;
  if (!v8)
  {
    (*(v3 + 16))(v5, &v0[v6], AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v3 + 8))(v5, AssociatedTypeWitness);
    v9 = v11;
  }

  result.value._rawValue = v9;
  result.is_nil = v7;
  return result;
}

uint64_t ProtocolOptions.init(protocolIdentifier:perProtocolOptions:)(__int16 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  *(v2 + 48) = xmmword_182AE8E90;
  v8 = qword_1ED411A90;
  v9 = sub_182AD2738();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v2 + qword_1ED411A88) = 0;
  v10 = *(*v2 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v2 + v10, 1, 1, AssociatedTypeWitness);
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  v12 = v2 + *(*v2 + 152);
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v2 + *(*v2 + 160);
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v2 + *(*v2 + 168));
  *v14 = 0;
  v14[1] = 0;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;
  swift_beginAccess();
  v15 = sub_182AD39B8();
  (*(*(v15 - 8) + 40))(v2 + v10, a2, v15);
  swift_endAccess();
  return v2;
}

uint64_t ProtocolOptions.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProtocolOptions.init(from:)(a1);
  return v2;
}

uint64_t ProtocolOptions.init(definition:serializedBytes:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1822B3004(a1, a2);
  v4 = type metadata accessor for ProtocolDefinition();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t ProtocolOptions.matches(protocolInstance:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if ((v3 & 0x1000000000000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v6 = *(v2 + 48);
    sub_1822B330C(v6, v3);
    type metadata accessor for IPProtocol.IPInstance();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      type metadata accessor for UDPProtocol.UDPInstance();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = 0x2000000000000000;
      }

      else
      {
        type metadata accessor for TCPProtocol.TCPInstance();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = 0x4000000000000000;
        }

        else
        {
          v8 = a2 | 0x6000000000000000;
          v7 = a1;
        }
      }
    }

    v14 = v7;
    v15 = v8;
    v13[0] = v6;
    v13[1] = v3;
    v9 = _s7Network25ProtocolInstanceReferenceV2eeoiySbAC_ACtFZ_0(&v14, v13);
    v10 = v14;
    v11 = v15;
    swift_unknownObjectRetain();
    sub_181F749D0(v10, v11);
    sub_1822B2F9C(v6, v3);
  }

  return v9 & 1;
}

uint64_t ProtocolOptions.setProxyEndpoint(_:overrideStackEndpoint:)(void *a1, char a2)
{
  v5 = *(*v2 + 136);
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  v7 = a1;

  v8 = *(*v2 + 176);
  result = swift_beginAccess();
  *(v2 + v8) = a2;
  return result;
}

uint64_t ProtocolOptions.addProxyNextHop(_:)(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 144);
  swift_beginAccess();
  if (!*(v2 + v4))
  {
    *(v2 + v4) = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1865D9F10]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  return swift_endAccess();
}

uint64_t ProtocolOptions.hash(into:)()
{
  swift_beginAccess();
  v1 = *(v0 + 17);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  MEMORY[0x1865DB070](*(v0 + 16));
  MEMORY[0x1865DB070](v1);
  if (v4)
  {
    MEMORY[0x1865DB070](1);
    sub_181F49A24(v2, v3, 1);
    sub_182AD30E8();
    return sub_181F48350(v2, v3, 1);
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v2);
    sub_182AD30E8();
    sub_181F48350(v2, v3, 0);
  }
}

uint64_t ProtocolOptions.hashValue.getter()
{
  sub_182AD44E8();
  ProtocolOptions.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_1822B2974()
{
  sub_182AD44E8();
  ProtocolOptions.hash(into:)();
  return sub_182AD4558();
}

uint64_t (*sub_1822B29C4(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ProtocolOptions.protocolHandle.modify(v2);
  return sub_1822B39CC;
}

uint64_t (*sub_1822B2A38(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.identifier.modify();
  return sub_182088F70;
}

uint64_t (*sub_1822B2ACC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.topID.modify();
  return sub_1822B39CC;
}

uint64_t (*sub_1822B2B60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.logIDNumber.modify();
  return sub_1822B39CC;
}

uint64_t sub_1822B2BD0()
{
  v0 = sub_1822B2FB0();

  return v0;
}

uint64_t (*sub_1822B2C0C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.logIDString.modify();
  return sub_1822B39CC;
}

void *sub_1822B2C7C()
{
  v0 = sub_1822B3374();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1822B2CAC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.proxyEndpoint.modify();
  return sub_1822B39CC;
}

uint64_t sub_1822B2D1C()
{
  sub_1822B33C4();
}

uint64_t (*sub_1822B2D48(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.proxyNextHops.modify();
  return sub_1822B39CC;
}

uint64_t (*sub_1822B2DC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.legacyParameters.modify();
  return sub_1822B39CC;
}

uint64_t (*sub_1822B2E40(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.overrideStackEndpoint.modify();
  return sub_1822B39CC;
}

uint64_t (*sub_1822B2EB8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ProtocolOptions.prohibitJoining.modify();
  return sub_1822B39CC;
}

uint64_t sub_1822B2F9C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_181F749D0(a1, a2);
  }

  return a1;
}

uint64_t sub_1822B2FB0()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1822B3004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_182AD39B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  *(v3 + 48) = xmmword_182AE8E90;
  v10 = qword_1ED411A90;
  v11 = sub_182AD2738();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + qword_1ED411A88) = 0;
  v12 = *(*v3 + 128);
  (*(*(AssociatedTypeWitness - 8) + 56))(v3 + v12, 1, 1, AssociatedTypeWitness);
  *(v3 + *(*v3 + 136)) = 0;
  *(v3 + *(*v3 + 144)) = 0;
  v13 = v3 + *(*v3 + 152);
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3 + *(*v3 + 160);
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = (v3 + *(*v3 + 168));
  *v15 = 0;
  v15[1] = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  *(v3 + 16) = *a1;
  *(v3 + 24) = v16;
  *(v3 + 32) = v17;
  *(v3 + 40) = v18;
  sub_181F49A24(v16, v17, v18);
  v19 = type metadata accessor for ProtocolDefinition();
  sub_181FB95C4(v21, v19);

  swift_beginAccess();
  (*(v7 + 40))(v3 + v12, v9, v6);
  swift_endAccess();
  return v3;
}

uint64_t sub_1822B330C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    return sub_1822B3318(a1, a2);
  }

  return a1;
}

uint64_t sub_1822B3318(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v2 > 2)
    {
      return result;
    }
  }

  if (v2 == 3)
  {
    return swift_unknownObjectRetain();
  }

  if (v2 == 4 || v2 == 5)
  {
  }

  return result;
}

uint64_t sub_1822B3360(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1822B3318(a1, a2);
  }

  return a1;
}

uint64_t sub_1822B3374()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1822B33C4()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1822B3418()
{
  result = qword_1EA83BD20;
  if (!qword_1EA83BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BD20);
  }

  return result;
}

uint64_t sub_1822B389C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1822B38E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 16))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 8) & 0x1000000000000000) != 0) | (2 * (*(a1 + 8) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1822B3934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 7 | (8 * (-a2 & 0xF));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0x1000000000000007;
    }
  }

  return result;
}

uint64_t sub_1822B39D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BDB0);
  swift_allocObject();
  result = sub_182AD46B8();
  qword_1EA83BD28 = result;
  return result;
}

uint64_t static NWFile1.$delegate.getter()
{
  if (qword_1EA8372A8 != -1)
  {
    swift_once();
  }
}

uint64_t static NWFile1.delegate.getter()
{
  if (qword_1EA8372A8 != -1)
  {
    swift_once();
  }

  return sub_182AD46C8();
}

uint64_t NWFile1.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Network7NWFile1_fileURL;
  v4 = sub_182AD2058();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NWFile1.transferState.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD38);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8790], v2, v12);
  sub_182AD3668();
  (*(v3 + 8))(v5, v2);
  v15 = *(v1 + 16);
  v22 = v1;
  v23 = v9;
  v19 = sub_1822B3FE4;
  v20 = &v21;
  os_unfair_lock_lock(v15 + 4);
  sub_1822B58C8(&v24);
  os_unfair_lock_unlock(v15 + 4);
  if (v25 != 255)
  {
    if ((v25 & 1) == 0)
    {
      v24 = 0;
    }

    sub_182AD36B8();
  }

  (*(v11 + 32))(v18, v14, v10);
  return (*(v7 + 8))(v9, v6);
}

id sub_1822B3E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388B8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 40);
  if (v11 == 255)
  {
    (*(v7 + 16))(v10, a2, v6, v8);
    v12 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_181F5B1B4(0, v12[2] + 1, 1, v12);
      *(a1 + 24) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_181F5B1B4(v14 > 1, v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
    *(a1 + 24) = v12;
    LOBYTE(v11) = *(a1 + 40);
  }

  v16 = *(a1 + 32);
  *a3 = v16;
  *(a3 + 8) = v11;
  return sub_1822B5E28(v16, v11);
}

uint64_t NWFile1.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  *(v2 + 40) = -1;
  v5 = OBJC_IVAR____TtC7Network7NWFile1_fileURL;
  v6 = sub_182AD2058();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

uint64_t NWFile1.init(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = 0;
  *(v1 + 40) = -1;
  v5 = OBJC_IVAR____TtC7Network7NWFile1_fileURL;
  v6 = sub_182AD2058();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t NWFile1.description.getter()
{
  sub_182AD2058();
  sub_1822B59FC(&qword_1EA8394E0);
  v0 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v0);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  return 0x28656C6946574ELL;
}

uint64_t NWFile1.waitUntilComplete()()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD38);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD40);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1822B4350, 0, 0);
}

uint64_t sub_1822B4350()
{
  v14 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_1822B58E0;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_1822B5E4C(&v12);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v13;

  if (v4 == 255)
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    NWFile1.transferState.getter(v6);
    sub_182AD35B8();
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_1822B4554;
    v10 = v0[7];

    return MEMORY[0x1EEE6DB90](v0 + 11, 0, 0, v10, v0 + 2);
  }

  else
  {
    if (v4)
    {
      swift_willThrow();
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1822B4554()
{

  if (v0)
  {
    v1 = sub_1822B4780;
  }

  else
  {
    v1 = sub_1822B4664;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1822B4664()
{
  if (*(v0 + 88) == 2)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_1822B4554;
    v4 = *(v0 + 56);

    return MEMORY[0x1EEE6DB90](v0 + 88, 0, 0, v4, v0 + 16);
  }
}

uint64_t sub_1822B4780()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t NWFile1.init(from:)(void *a1)
{
  v2 = v1;
  v36 = *v1;
  v33 = sub_182AD2058();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD48);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v1[2] = v12;
  v1[3] = v13;
  v1[4] = 0;
  *(v1 + 40) = -1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_182AD45D8();
  if (qword_1EA8372B0 != -1)
  {
    swift_once();
  }

  v15 = sub_182AD3E78();
  v16 = __swift_project_value_buffer(v15, qword_1EA843458);
  if (!*(v14 + 16) || (v17 = sub_18224F1E0(v16), (v18 & 1) == 0))
  {

    v24 = type metadata accessor for NWFileSerializationContext(0);
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    goto LABEL_9;
  }

  sub_181C65504(*(v14 + 56) + 32 * v17, v35);

  v19 = type metadata accessor for NWFileSerializationContext(0);
  v20 = swift_dynamicCast();
  v21 = *(v19 - 8);
  (*(v21 + 56))(v11, v20 ^ 1u, 1, v19);
  if ((*(v21 + 48))(v11, 1, v19) == 1)
  {
LABEL_9:
    sub_181F49A88(v11, &qword_1EA83BD50);
    v25 = sub_182AD3C98();
    swift_allocError();
    v27 = v26;
    sub_182AD3C88();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v25);
    swift_willThrow();
    goto LABEL_10;
  }

  sub_181F49A88(v11, &qword_1EA83BD50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822B59A8();
  v22 = v34;
  sub_182AD45E8();
  if (!v22)
  {
    sub_1822B59FC(&qword_1EA83BD60);
    v23 = v33;
    sub_182AD3FF8();
    sub_182AD1F88();

    if (qword_1EA8372A8 != -1)
    {
      swift_once();
    }

    sub_182AD46C8();
    sub_181FCD1A0();
    swift_allocError();
    *v29 = 0xD000000000000025;
    v29[1] = 0x8000000182BE41F0;
    v29[2] = 0x9000000000000000;
    swift_willThrow();
    sub_181F49A88(v35, &qword_1EA83BD68);
    (*(v31 + 8))(v5, v23);
    (*(v32 + 8))(v8, v6);
  }

LABEL_10:

  sub_1822B5984(v2[4], *(v2 + 40));
  swift_deallocPartialClassInstance();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NWFile1.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_182AD4628();
  if (qword_1EA8372B0 != -1)
  {
    swift_once();
  }

  v10 = sub_182AD3E78();
  v11 = __swift_project_value_buffer(v10, qword_1EA843458);
  if (*(v9 + 16) && (v12 = sub_18224F1E0(v11), (v13 & 1) != 0))
  {
    sub_181C65504(*(v9 + 56) + 32 * v12, v22);

    v14 = type metadata accessor for NWFileSerializationContext(0);
    v15 = swift_dynamicCast();
    v16 = *(v14 - 8);
    (*(v16 + 56))(v8, v15 ^ 1u, 1, v14);
    if ((*(v16 + 48))(v8, 1, v14) != 1)
    {
      sub_181F49A88(v8, &qword_1EA83BD50);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1822B59A8();
      sub_182AD4638();
      sub_182AD2058();
      sub_1822B59FC(&qword_1EA83BD78);
      sub_182AD4118();
      return (*(v3 + 8))(v5, v2);
    }
  }

  else
  {

    v18 = type metadata accessor for NWFileSerializationContext(0);
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  }

  sub_181F49A88(v8, &qword_1EA83BD50);
  v19 = sub_182AD3CB8();
  swift_allocError();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839510);
  v21[3] = MEMORY[0x1E69E6158];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  sub_182AD3C88();
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B30], v19);
  return swift_willThrow();
}

uint64_t sub_1822B52A0()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1822B530C()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1822B535C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_182AD3F48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1822B53E4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_182AD3F48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1822B543C(uint64_t a1)
{
  v2 = sub_1822B59A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B5478(uint64_t a1)
{
  v2 = sub_1822B59A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWFile1.deinit()
{

  sub_1822B5984(*(v0 + 32), *(v0 + 40));
  v1 = OBJC_IVAR____TtC7Network7NWFile1_fileURL;
  v2 = sub_182AD2058();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NWFile1.__deallocating_deinit()
{

  sub_1822B5984(*(v0 + 32), *(v0 + 40));
  v1 = OBJC_IVAR____TtC7Network7NWFile1_fileURL;
  v2 = sub_182AD2058();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1822B5658()
{
  sub_182AD2058();
  sub_1822B59FC(&qword_1EA8394E0);
  v0 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v0);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  return 0x28656C6946574ELL;
}

uint64_t NWFile1.TransferPhase.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_1822B5798()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BDB8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_182AD3E78();
  __swift_allocate_value_buffer(v3, qword_1EA843458);
  v4 = __swift_project_value_buffer(v3, qword_1EA843458);
  sub_182AD3E68();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id sub_1822B58E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  v3 = *(v1 + 40);
  *(a1 + 8) = v3;
  return sub_1822B5E28(v2, v3);
}

void *sub_1822B5918@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    *a1 = v6;
    *(a1 + 8) = v5;
  }

  return result;
}

void sub_1822B5984(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1822B599C(a1, a2 & 1);
  }
}

void sub_1822B599C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_1822B59A8()
{
  result = qword_1EA83BD58;
  if (!qword_1EA83BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BD58);
  }

  return result;
}

uint64_t sub_1822B59FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_182AD2058();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1822B5A44()
{
  result = qword_1EA83BD80;
  if (!qword_1EA83BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BD80);
  }

  return result;
}

uint64_t sub_1822B5AC0()
{
  result = sub_182AD2058();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1822B5C38()
{
  result = sub_1822B5CBC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NWActorID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1822B5CBC()
{
  result = qword_1EA83A548;
  if (!qword_1EA83A548)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA83A548);
  }

  return result;
}

unint64_t sub_1822B5D24()
{
  result = qword_1EA83BD98;
  if (!qword_1EA83BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BD98);
  }

  return result;
}

unint64_t sub_1822B5D7C()
{
  result = qword_1EA83BDA0;
  if (!qword_1EA83BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BDA0);
  }

  return result;
}

unint64_t sub_1822B5DD4()
{
  result = qword_1EA83BDA8;
  if (!qword_1EA83BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BDA8);
  }

  return result;
}

id sub_1822B5E28(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1822B5E40(result, a2 & 1);
  }

  return result;
}

id sub_1822B5E40(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t type metadata accessor for ReplyEnvelope()
{
  result = qword_1EA83BDC0;
  if (!qword_1EA83BDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1822B5ED8()
{
  sub_182AD2258();
  if (v0 <= 0x3F)
  {
    sub_1822B5F9C(319, &qword_1EA83BDD0);
    if (v1 <= 0x3F)
    {
      sub_1822B5F9C(319, &qword_1EA83BDD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1822B5F9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_182AD39B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7Network13ReplyEnvelopeV5ErrorO(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 3;
  }
}

uint64_t sub_1822B6018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 33))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (4 * *(a1 + 32))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1822B606C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 1020;
    *(result + 8) = 0;
    if (a3 >= 0x3FC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 & 3) << 60;
      *(result + 32) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1822B60D4(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 24) = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2 > 3;
  return result;
}

uint64_t sub_1822B6118@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v186 = a3;
  v185 = type metadata accessor for NWActorSystemProtobuf_Reply.Metrics(0);
  v181 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v178 = (&v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v177 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v184 = &v157 - v9;
  v10 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v176 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
  v182 = *(v12 - 8);
  v183 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v175 = (&v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v174 = (&v157 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v167 = (&v157 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v173 = (&v157 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v172 = (&v157 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v180 = (&v157 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D48);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v171 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v170 = &v157 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v166 = &v157 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v169 = &v157 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v168 = &v157 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v179 = &v157 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v157 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v157 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v187 = &v157 - v43;
  v44 = sub_182AD2258();
  v188 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NWActorSystemProtobuf_Reply(0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v157 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = a1;
  v193 = a2;
  v50 = sub_182AD23E8();
  v189 = 0u;
  v190 = 0u;
  v191 = 0;
  MEMORY[0x1EEE9AC00](v50 - 8);
  sub_181F49B58(a1, a2);
  sub_182AD23D8();
  sub_1822BAB14(&qword_1EA839CA8, type metadata accessor for NWActorSystemProtobuf_Reply);
  v51 = v194;
  sub_182AD24D8();
  if (v51)
  {
    return sub_181C1F2E4(a1, a2);
  }

  v162 = v46;
  v163 = v38;
  v165 = a2;
  v164 = v47;
  v194 = a1;
  v53 = v187;
  sub_182AD21F8();
  sub_181AB5D28(v53, v41, &qword_1EA8394C0);
  v54 = v188;
  if ((*(v188 + 48))(v41, 1, v44) == 1)
  {
    sub_181F49A88(v41, &qword_1EA8394C0);
    sub_182168BA0();
    swift_allocError();
    strcpy(v55, "Missing callID");
    v55[15] = -18;
    swift_willThrow();
    sub_181C1F2E4(v194, v165);
    sub_181F49A88(v53, &qword_1EA8394C0);
    return sub_1822BAC2C(v49, type metadata accessor for NWActorSystemProtobuf_Reply);
  }

  v160 = 0;
  sub_181F49A88(v53, &qword_1EA8394C0);
  v56 = *(v54 + 32);
  v57 = v162;
  v56(v162, v41, v44);
  v58 = v186;
  v158 = v44;
  v56(v186, v57, v44);
  v59 = *(v49 + 16);
  v60 = *(v49 + 24);
  v61 = type metadata accessor for ReplyEnvelope();
  v62 = &v58[*(v61 + 20)];
  *v62 = v59;
  v62[1] = v60;
  v159 = v62;
  v162 = *(v164 + 28);
  v63 = v163;
  sub_181AB5D28(&v162[v49], v163, &qword_1EA839D48);
  v64 = v183;
  v182 = *(v182 + 48);
  v65 = v49;
  v66 = (v182)(v63, 1, v183);
  sub_181F49B58(v59, v60);
  sub_181F49A88(v63, &qword_1EA839D48);
  v187 = v61;
  v161 = v65;
  if (v66 != 1)
  {
    v73 = v162;
    v74 = &v162[v65];
    v75 = v179;
    sub_181AB5D28(v74, v179, &qword_1EA839D48);
    v76 = v182;
    if ((v182)(v75, 1, v64) == 1)
    {
      v77 = v180;
      *v180 = 0;
      *(v77 + 8) = 1;
      v77[2] = MEMORY[0x1E69E7CC0];
      sub_182AD23B8();
      v78 = v76;
      v79 = v76(v75, 1, v64) == 1;
      v68 = v186;
      v80 = v165;
      v81 = v75;
      v71 = v184;
      if (!v79)
      {
        sub_181F49A88(v81, &qword_1EA839D48);
      }
    }

    else
    {
      v78 = v76;
      v77 = v180;
      sub_1822BABC4(v75, v180, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
      v68 = v186;
      v80 = v165;
      v71 = v184;
    }

    v82 = *v77;
    v83 = v77;
    v84 = *(v77 + 8);
    sub_1822BAC2C(v83, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
    if (v84 != 1)
    {
      *&v189 = 0;
      *(&v189 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v189 = 0xD00000000000001BLL;
      *(&v189 + 1) = 0x8000000182BE4270;
      v192 = v82;
      v86 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v86);

      v87 = *(&v189 + 1);
      v88 = &v68[*(v187 + 6)];
      *v88 = v189;
      *(v88 + 1) = v87;
      *(v88 + 2) = 0;
      *(v88 + 3) = 0;
      v88[32] = 0;
      v70 = v185;
      v72 = v164;
      goto LABEL_18;
    }

    if (v82 <= 2)
    {
      v70 = v185;
      v72 = v164;
      if (!v82)
      {
        v106 = &v68[*(v187 + 6)];
        *v106 = 0u;
        *(v106 + 1) = 0u;
        v106[32] = 1;
        goto LABEL_18;
      }

      if (v82 == 1)
      {
        v85 = &v68[*(v187 + 6)];
        *v85 = 1;
        *(v85 + 1) = 0;
        *(v85 + 2) = 0;
        *(v85 + 3) = 0;
        v85[32] = 1;
LABEL_18:
        v69 = v194;
        goto LABEL_19;
      }

      v111 = v168;
      sub_181AB5D28(&v73[v161], v168, &qword_1EA839D48);
      if (v78(v111, 1, v64) == 1)
      {
        v112 = v64;
        v103 = v68;
        v113 = v172;
        *v172 = 0;
        *(v113 + 8) = 1;
        v114 = v113;
        v113[2] = MEMORY[0x1E69E7CC0];
        sub_182AD23B8();
        if (v78(v111, 1, v112) != 1)
        {
          sub_181F49A88(v111, &qword_1EA839D48);
        }
      }

      else
      {
        v103 = v68;
        v114 = v172;
        sub_1822BABC4(v111, v172, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
      }

      v138 = v114[2];

      sub_1822BAC2C(v114, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
      v69 = v194;
      if (v138[2])
      {
        v130 = v138[4];
        v131 = v138[5];
        sub_181F49B58(v130, v131);

        sub_182AD2FD8();
        v139 = sub_182AD2FA8();
        if (v140)
        {
          v141 = v139;
          v142 = v140;
          sub_181C1F2E4(v130, v131);
          v136 = &v103[*(v187 + 6)];
          *v136 = v141;
          *(v136 + 1) = v142;
          v68 = v103;
          *(v136 + 2) = 0;
          *(v136 + 3) = 0;
LABEL_62:
          v136[32] = 0;
          v70 = v185;
          goto LABEL_7;
        }

        goto LABEL_63;
      }

LABEL_57:

      sub_182168BA0();
      swift_allocError();
      *v143 = 0xD000000000000013;
      v143[1] = 0x8000000182BE42E0;
      swift_willThrow();
LABEL_64:
      v68 = v103;
      v110 = v188;
      v80 = v165;
      goto LABEL_69;
    }

    if (v82 == 3)
    {
      v107 = v169;
      sub_181AB5D28(&v73[v161], v169, &qword_1EA839D48);
      if (v78(v107, 1, v64) == 1)
      {
        v108 = v173;
        *v173 = 0;
        *(v108 + 8) = 1;
        v108[2] = MEMORY[0x1E69E7CC0];
        sub_182AD23B8();
        v79 = v78(v107, 1, v64) == 1;
        v109 = v107;
        v110 = v188;
        if (!v79)
        {
          sub_181F49A88(v109, &qword_1EA839D48);
        }
      }

      else
      {
        v108 = v173;
        sub_1822BABC4(v107, v173, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
        v110 = v188;
      }

      v118 = v108[2];

      sub_1822BAC2C(v108, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
      if (v118[2])
      {
        v119 = v118[4];
        v120 = v118[5];
        sub_181F49B58(v119, v120);

        sub_182AD2FD8();
        v121 = sub_182AD2FA8();
        if (v122)
        {
          v123 = v122;
          v188 = v121;
          v124 = v166;
          sub_181AB5D28(&v73[v161], v166, &qword_1EA839D48);
          v125 = v182;
          if ((v182)(v124, 1, v64) == 1)
          {
            v126 = v167;
            *v167 = 0;
            *(v126 + 8) = 1;
            v126[2] = MEMORY[0x1E69E7CC0];
            sub_182AD23B8();
            v127 = v125(v124, 1, v64);
            v128 = v194;
            if (v127 != 1)
            {
              sub_181F49A88(v124, &qword_1EA839D48);
            }
          }

          else
          {
            v126 = v167;
            sub_1822BABC4(v124, v167, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
            v128 = v194;
          }

          v152 = v126[2];

          result = sub_1822BAC2C(v126, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
          if (v152[2] < 2uLL)
          {
            __break(1u);
            return result;
          }

          v153 = v152[6];
          v154 = v152[7];
          sub_181F49B58(v153, v154);

          sub_181C1F2E4(v119, v120);
          v155 = v186;
          v156 = &v186[*(v187 + 6)];
          *v156 = v188;
          *(v156 + 1) = v123;
          v68 = v155;
          *(v156 + 2) = v153;
          *(v156 + 3) = v154 | 0x1000000000000000;
          v156[32] = 0;
          v71 = v184;
          v70 = v185;
          v69 = v128;
          goto LABEL_7;
        }

        sub_182168BA0();
        swift_allocError();
        *v151 = 0xD000000000000027;
        v151[1] = 0x8000000182BE4300;
        swift_willThrow();
        sub_181C1F2E4(v119, v120);
      }

      else
      {

        sub_182168BA0();
        swift_allocError();
        *v149 = 0xD000000000000013;
        v149[1] = 0x8000000182BE4330;
        swift_willThrow();
      }

      v68 = v186;
      v69 = v194;
LABEL_69:
      sub_181C1F2E4(v69, v80);
      sub_1822BAC2C(v161, type metadata accessor for NWActorSystemProtobuf_Reply);
      (*(v110 + 8))(v68, v158);
      return sub_181C1F2E4(*v159, v159[1]);
    }

    if (v82 == 4)
    {
      v101 = v170;
      sub_181AB5D28(&v73[v161], v170, &qword_1EA839D48);
      if (v78(v101, 1, v64) == 1)
      {
        v102 = v64;
        v103 = v68;
        v104 = v174;
        *v174 = 0;
        *(v104 + 8) = 1;
        v104[2] = MEMORY[0x1E69E7CC0];
        sub_182AD23B8();
        v105 = v78(v101, 1, v102);
        v69 = v194;
        if (v105 != 1)
        {
          sub_181F49A88(v101, &qword_1EA839D48);
        }
      }

      else
      {
        v103 = v68;
        v104 = v174;
        sub_1822BABC4(v101, v174, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
        v69 = v194;
      }

      v129 = v104[2];

      sub_1822BAC2C(v104, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
      if (!v129[2])
      {
        goto LABEL_57;
      }

      v130 = v129[4];
      v131 = v129[5];
      sub_181F49B58(v130, v131);

      sub_182AD2FD8();
      v132 = sub_182AD2FA8();
      if (!v133)
      {
LABEL_63:
        sub_182168BA0();
        swift_allocError();
        *v148 = 0xD000000000000027;
        v148[1] = 0x8000000182BE42B0;
        swift_willThrow();
        sub_181C1F2E4(v130, v131);
        goto LABEL_64;
      }

      v134 = v132;
      v135 = v133;
      sub_181C1F2E4(v130, v131);
      v136 = &v103[*(v187 + 6)];
      *v136 = v134;
      *(v136 + 1) = v135;
      v68 = v103;
      v137 = xmmword_182AF9680;
    }

    else
    {
      v115 = v171;
      sub_181AB5D28(&v73[v161], v171, &qword_1EA839D48);
      if (v78(v115, 1, v64) == 1)
      {
        v116 = v175;
        *v175 = 0;
        *(v116 + 8) = 1;
        v116[2] = MEMORY[0x1E69E7CC0];
        sub_182AD23B8();
        v117 = v78(v115, 1, v64);
        v69 = v194;
        if (v117 != 1)
        {
          sub_181F49A88(v115, &qword_1EA839D48);
        }
      }

      else
      {
        v116 = v175;
        sub_1822BABC4(v115, v175, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
        v69 = v194;
      }

      v144 = v116[2];

      sub_1822BAC2C(v116, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
      if (!v144[2])
      {

        sub_182168BA0();
        swift_allocError();
        *v150 = 0xD000000000000011;
        v150[1] = 0x8000000182BE4290;
        swift_willThrow();
        v110 = v188;
        goto LABEL_69;
      }

      v145 = v68;
      v146 = v144[4];
      v147 = v144[5];
      sub_181F49B58(v146, v147);

      v136 = &v145[*(v187 + 6)];
      *v136 = v146;
      *(v136 + 1) = v147;
      v68 = v145;
      v137 = xmmword_182B06750;
    }

    *(v136 + 1) = v137;
    goto LABEL_62;
  }

  v67 = &v58[*(v61 + 24)];
  *v67 = 0;
  *(v67 + 1) = 0;
  *(v67 + 2) = 0;
  *(v67 + 3) = 0x3000000000000000;
  v67[32] = -1;
  v68 = v58;
  v69 = v194;
  v71 = v184;
  v70 = v185;
LABEL_7:
  v72 = v164;
LABEL_19:
  v89 = *(v72 + 32);
  v90 = v161;
  sub_181AB5D28(v161 + v89, v71, &qword_1EA839D40);
  v91 = *(v181 + 48);
  v92 = v91(v71, 1, v70);
  if (v92 == 1)
  {
    sub_181C1F2E4(v69, v165);
    sub_181F49A88(v71, &qword_1EA839D40);
    v93 = 0;
    v94 = v90;
  }

  else
  {
    sub_181F49A88(v71, &qword_1EA839D40);
    v95 = v90;
    v96 = v90 + v89;
    v97 = v177;
    v98 = v185;
    sub_181AB5D28(v96, v177, &qword_1EA839D40);
    if (v91(v97, 1, v98) == 1)
    {
      v99 = v178;
      *v178 = 0;
      sub_182AD23B8();
      sub_181C1F2E4(v69, v165);
      if (v91(v97, 1, v98) != 1)
      {
        sub_181F49A88(v97, &qword_1EA839D40);
      }
    }

    else
    {
      sub_181C1F2E4(v69, v165);
      v99 = v178;
      sub_1822BABC4(v97, v178, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
    }

    v93 = *v99;
    sub_1822BAC2C(v99, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
    v94 = v95;
    v68 = v186;
  }

  result = sub_1822BAC2C(v94, type metadata accessor for NWActorSystemProtobuf_Reply);
  v100 = &v68[*(v187 + 7)];
  *v100 = v93;
  v100[8] = v92 == 1;
  return result;
}

uint64_t sub_1822B7724()
{
  v87 = sub_182AD3008();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NWActorSystemProtobuf_Reply.Error(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v82 - v6;
  v7 = type metadata accessor for NWActorSystemProtobuf_Reply.Metrics(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v82 - v11);
  v13 = type metadata accessor for NWActorSystemProtobuf_Reply(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 1) = xmmword_182AE7580;
  sub_182AD23B8();
  v16 = *(v3 + 56);
  v90 = *(v13 + 28);
  v95 = v2;
  v93 = v3 + 56;
  v91 = v16;
  v16(&v15[v90], 1, 1, v2);
  v96 = v13;
  v17 = *(v13 + 32);
  v88 = *(v8 + 56);
  v88(&v15[v17], 1, 1, v7);
  *v15 = sub_182AD2208();
  *(v15 + 1) = v18;
  v19 = type metadata accessor for ReplyEnvelope();
  v20 = (v0 + v19[5]);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v15 + 2);
  v24 = *(v15 + 3);
  *(v15 + 2) = *v20;
  *(v15 + 3) = v22;
  sub_181F49B58(v21, v22);
  sub_181C1F2E4(v23, v24);
  v25 = (v0 + v19[7]);
  if ((v25[1] & 1) == 0)
  {
    v26 = *v25;
    sub_182AD23B8();
    *v12 = v26;
    v27 = v12;
    v28 = v89;
    sub_1822BABC4(v27, v89, type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
    sub_181F49A88(&v15[v17], &qword_1EA839D40);
    sub_1822BABC4(v28, &v15[v17], type metadata accessor for NWActorSystemProtobuf_Reply.Metrics);
    v88(&v15[v17], 0, 1, v7);
  }

  v29 = v0 + v19[6];
  v30 = *v29;
  v31 = *(v29 + 8);
  v33 = *(v29 + 16);
  v32 = *(v29 + 24);
  v34 = *(v29 + 32);
  if ((~v32 & 0x3000000000000000) != 0 || v34 != 255)
  {
    v35 = v94;
    *(v94 + 2) = MEMORY[0x1E69E7CC0];
    v36 = v95;
    sub_1821609F4(v30, v31, v33, v32, v34 & 1);
    sub_182AD23B8();
    v37 = (v32 >> 60) & 3 | (4 * (v34 & 1));
    if (v37 <= 1)
    {
      v88 = v31;
      v89 = v30;
      if (v37)
      {
        *v35 = 3;
        *(v35 + 8) = 1;
        sub_181F49B58(v33, v32 & 0xCFFFFFFFFFFFFFFFLL);
        v84 = v33;
        v53 = v36;
        v54 = v85;
        sub_182AD2FD8();
        v55 = sub_182AD2F98();
        v83 = v56;
        v57 = v54;
        v36 = v53;
        v58 = v84;
        (v86[1])(v57, v87);
        v97[6] = v55;
        v98[0] = v83;
        v98[1] = v58;
        v98[2] = v32 & 0xCFFFFFFFFFFFFFFFLL;
        v87 = v32 & 0xCFFFFFFFFFFFFFFFLL;
        sub_181F49B58(v58, v32 & 0xCFFFFFFFFFFFFFFFLL);
        v59 = v98;
        v60 = 0;
        v43 = MEMORY[0x1E69E7CC0];
LABEL_17:
        v61 = &v59[2 * v60];
        while (++v60 != 3)
        {
          v62 = v61 + 2;
          v63 = *v61;
          v64 = *v61 >> 60;
          v61 += 2;
          if (v64 <= 0xE)
          {
            v86 = v59;
            v65 = *(v62 - 3);
            sub_181F49B58(v65, v63);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_181F59F7C(0, *(v43 + 2) + 1, 1, v43);
            }

            v67 = *(v43 + 2);
            v66 = *(v43 + 3);
            v59 = v86;
            if (v67 >= v66 >> 1)
            {
              v69 = sub_181F59F7C((v66 > 1), v67 + 1, 1, v43);
              v59 = v86;
              v43 = v69;
            }

            *(v43 + 2) = v67 + 1;
            v68 = &v43[16 * v67];
            *(v68 + 4) = v65;
            *(v68 + 5) = v63;
            v36 = v95;
            v35 = v94;
            goto LABEL_17;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FD0);
        swift_arrayDestroy();
        v70 = v84;
        sub_1821608A8(v89, v88, v84, v32, v34);
        sub_181C1F2E4(v70, v87);
        goto LABEL_39;
      }

      *v35 = 2;
      *(v35 + 8) = 1;
      v44 = v85;
      sub_182AD2FD8();
      v45 = sub_182AD2F98();
      v47 = v46;
      v48 = v44;
      v49 = v45;
      (v86[1])(v48, v87);
      v97[0] = v49;
      v97[1] = v47;
      if (v47 >> 60 == 15)
      {
        v43 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_181F49B58(v49, v47);
        v43 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_181F59F7C(0, *(v43 + 2) + 1, 1, v43);
        }

        v77 = *(v43 + 2);
        v76 = *(v43 + 3);
        if (v77 >= v76 >> 1)
        {
          v43 = sub_181F59F7C((v76 > 1), v77 + 1, 1, v43);
        }

        *(v43 + 2) = v77 + 1;
        v78 = &v43[16 * v77];
        *(v78 + 4) = v49;
        *(v78 + 5) = v47;
        v36 = v95;
        v35 = v94;
      }

      sub_181F49A88(v97, &qword_1EA838FD0);
      v74 = v89;
      v75 = v88;
    }

    else
    {
      if (v37 == 2)
      {
        *v35 = 5;
        *(v35 + 8) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3E0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_182AE9730;
        *(v50 + 32) = v30;
        *(v50 + 40) = v31;
        *(v35 + 16) = v50;
LABEL_40:
        v51 = v92;
        v52 = v91;
LABEL_41:
        sub_1822BAB5C(v35, v51, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
        v79 = v90;
        sub_181F49A88(&v15[v90], &qword_1EA839D48);
        sub_1822BABC4(v51, &v15[v79], type metadata accessor for NWActorSystemProtobuf_Reply.Error);
        v52(&v15[v79], 0, 1, v36);
        sub_1822BAC2C(v35, type metadata accessor for NWActorSystemProtobuf_Reply.Error);
        goto LABEL_42;
      }

      if (v37 != 3)
      {
        v51 = v92;
        v52 = v91;
        if (v33 | v31 | v30 | v32)
        {
          *v35 = 1;
        }

        else
        {
          *v35 = 0;
        }

        *(v35 + 8) = 1;
        goto LABEL_41;
      }

      *v35 = 4;
      *(v35 + 8) = 1;
      v38 = v85;
      sub_182AD2FD8();
      v89 = v30;
      v39 = v31;
      v40 = sub_182AD2F98();
      v42 = v41;
      (v86[1])(v38, v87);
      v99[0] = v40;
      v99[1] = v42;
      if (v42 >> 60 == 15)
      {
        v43 = MEMORY[0x1E69E7CC0];
        v36 = v95;
      }

      else
      {
        v87 = v40;
        sub_181F49B58(v40, v42);
        v43 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_181F59F7C(0, *(v43 + 2) + 1, 1, v43);
        }

        v72 = *(v43 + 2);
        v71 = *(v43 + 3);
        if (v72 >= v71 >> 1)
        {
          v43 = sub_181F59F7C((v71 > 1), v72 + 1, 1, v43);
        }

        *(v43 + 2) = v72 + 1;
        v73 = &v43[16 * v72];
        *(v73 + 4) = v87;
        *(v73 + 5) = v42;
        v36 = v95;
        v35 = v94;
      }

      sub_181F49A88(v99, &qword_1EA838FD0);
      v74 = v89;
      v75 = v39;
    }

    sub_1821608A8(v74, v75, v33, v32, v34);
LABEL_39:
    *(v35 + 16) = v43;
    goto LABEL_40;
  }

LABEL_42:
  sub_1822BAB14(&qword_1EA839CA8, type metadata accessor for NWActorSystemProtobuf_Reply);
  v80 = sub_182AD24C8();
  sub_1822BAC2C(v15, type metadata accessor for NWActorSystemProtobuf_Reply);
  return v80;
}

uint64_t sub_1822B8204(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE90);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE98);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BEA0);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BEA8);
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BEB0);
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BEB8);
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BEC0);
  v20 = *(v19 - 8);
  v63 = v19;
  v64 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822BA8C8();
  v62 = v22;
  sub_182AD4638();
  v24 = *v2;
  v23 = v2[1];
  v26 = v2[2];
  v25 = v2[3];
  if (v2[4])
  {
    v27 = 4;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 | (v25 >> 60) & 3;
  if (v28 <= 1)
  {
    v57 = *v2;
    v58 = v23;
    v34 = v11;
    v35 = v59;
    v36 = v60;
    v37 = v61;
    if (!v28)
    {
      LOBYTE(v66) = 2;
      sub_1822BAA18();
      v31 = v62;
      v30 = v63;
      sub_182AD4098();
      sub_182AD40E8();
      (*(v35 + 8))(v13, v34);
      return (*(v64 + 8))(v31, v30);
    }

    LOBYTE(v66) = 3;
    sub_1822BA9C4();
    v45 = v62;
    v44 = v63;
    sub_182AD4098();
    LOBYTE(v66) = 0;
    v46 = v65;
    sub_182AD40E8();
    if (!v46)
    {
      v66 = v26;
      v67 = v25 & 0xCFFFFFFFFFFFFFFFLL;
      v68 = 1;
      sub_181C675F8();
      sub_182AD4118();
    }

    (*(v36 + 8))(v10, v37);
    return (*(v64 + 8))(v45, v44);
  }

  else
  {
    if (v28 == 2)
    {
      LOBYTE(v66) = 4;
      v38 = v23;
      v39 = v24;
      sub_1822BA970();
      v29 = v53;
      v31 = v62;
      v30 = v63;
      sub_182AD4098();
      v66 = v39;
      v67 = v38;
      sub_181C675F8();
      v32 = v55;
      sub_182AD4118();
      v33 = v54;
      goto LABEL_11;
    }

    if (v28 == 3)
    {
      LOBYTE(v66) = 5;
      sub_1822BA91C();
      v29 = v56;
      v31 = v62;
      v30 = v63;
      sub_182AD4098();
      v32 = v58;
      sub_182AD40E8();
      v33 = v57;
LABEL_11:
      (*(v33 + 8))(v29, v32);
      return (*(v64 + 8))(v31, v30);
    }

    if (v26 | v23 | v24 | v25)
    {
      LOBYTE(v66) = 1;
      sub_1822BAA6C();
      v41 = v50;
      v43 = v62;
      v42 = v63;
      sub_182AD4098();
      (*(v51 + 8))(v41, v52);
    }

    else
    {
      LOBYTE(v66) = 0;
      sub_1822BAAC0();
      v43 = v62;
      v42 = v63;
      sub_182AD4098();
      (*(v48 + 8))(v18, v49);
    }

    return (*(v64 + 8))(v43, v42);
  }
}

uint64_t sub_1822B8988(uint64_t a1)
{
  v2 = sub_1822BAAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B89C4(uint64_t a1)
{
  v2 = sub_1822BAAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1822B8A00(uint64_t a1)
{
  v2 = sub_1822BA91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B8A3C(uint64_t a1)
{
  v2 = sub_1822BA91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1822B8A78()
{
  if (*v0)
  {
    return 0x566465646F636E65;
  }

  else
  {
    return 0x4E64656C676E616DLL;
  }
}

uint64_t sub_1822B8AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E64656C676E616DLL && a2 == 0xEB00000000656D61;
  if (v6 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x566465646F636E65 && a2 == 0xEC00000065756C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

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

uint64_t sub_1822B8BA8(uint64_t a1)
{
  v2 = sub_1822BA9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B8BE4(uint64_t a1)
{
  v2 = sub_1822BA9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1822B8C20()
{
  v1 = *v0;
  v2 = 0x6F5464656C696166;
  v3 = 0x43656C6261646F63;
  v4 = 0x726F727245736ELL;
  if (v1 != 4)
  {
    v4 = 0x746E65696C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x69796C7265646E75;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1822B8CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1822BB5B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1822B8D20(uint64_t a1)
{
  v2 = sub_1822BA8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B8D5C(uint64_t a1)
{
  v2 = sub_1822BA8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1822B8D98(uint64_t a1)
{
  v2 = sub_1822BAA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B8DD4(uint64_t a1)
{
  v2 = sub_1822BAA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1822B8E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465766968637261 && a2 == 0xEC00000061746144)
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

uint64_t sub_1822B8EBC(uint64_t a1)
{
  v2 = sub_1822BA970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B8EF8(uint64_t a1)
{
  v2 = sub_1822BA970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1822B8F34(uint64_t a1)
{
  v2 = sub_1822BAA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B8F70(uint64_t a1)
{
  v2 = sub_1822BAA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1822B8FAC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1822B9DC8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1822B900C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BDF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822B9C50();
  sub_182AD4638();
  LOBYTE(v21) = 0;
  sub_182AD2258();
  sub_1822BAB14(&unk_1EA839600, MEMORY[0x1E69695A8]);
  sub_182AD4118();
  if (!v2)
  {
    v9 = type metadata accessor for ReplyEnvelope();
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v21 = *v10;
    v22 = v11;
    v26 = 1;
    sub_181F49B58(v21, v11);
    sub_181C675F8();
    sub_182AD4118();
    sub_181C1F2E4(v21, v22);
    v12 = v3 + v9[6];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v21 = *v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = 2;
    sub_1822B9CF8(v21, v13, v14, v15, v16);
    sub_1822B9D20();
    sub_182AD40D8();
    sub_1821608A8(v21, v22, v23, v24, v25);
    v17 = v3 + v9[7];
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v21 = v18;
    LOBYTE(v22) = v17;
    v26 = 3;
    sub_1820ACF34();
    sub_182AD40D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1822B92AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_182AD2258();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BDE0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ReplyEnvelope();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822B9C50();
  v25 = v8;
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v21;
  LOBYTE(v26) = 0;
  sub_1822BAB14(&qword_1EA8395E8, MEMORY[0x1E69695A8]);
  v13 = v22;
  sub_182AD3FF8();
  (*(v12 + 32))(v11, v13, v4);
  v29 = 1;
  sub_181C67934();
  sub_182AD3FF8();
  *&v11[v9[5]] = v26;
  v29 = 2;
  sub_1822B9CA4();
  sub_182AD3FA8();
  v14 = v28;
  v15 = &v11[v9[6]];
  v16 = v27;
  *v15 = v26;
  *(v15 + 1) = v16;
  v15[32] = v14;
  v29 = 3;
  sub_1820ACEE0();
  sub_182AD3FA8();
  (*(v23 + 8))(v25, v24);
  v17 = BYTE8(v26);
  v18 = &v11[v9[7]];
  *v18 = v26;
  v18[8] = v17;
  sub_1822BAB5C(v11, v20, type metadata accessor for ReplyEnvelope);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1822BAC2C(v11, type metadata accessor for ReplyEnvelope);
}

uint64_t sub_1822B976C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000182BE4350 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_182AD4268();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1822B9800(uint64_t a1)
{
  v2 = sub_1822B9D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B983C(uint64_t a1)
{
  v2 = sub_1822B9D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1822B9878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822B9D74();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_182AD4028();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1822B99D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822B9D74();
  sub_182AD4638();
  sub_182AD4148();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1822B9B10()
{
  v1 = 0x44496C6C6163;
  v2 = 0x726F727265;
  if (*v0 != 2)
  {
    v2 = 0x7363697274656DLL;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_1822B9B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1822BB7D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1822B9BA8(uint64_t a1)
{
  v2 = sub_1822B9C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822B9BE4(uint64_t a1)
{
  v2 = sub_1822B9C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1822B9C50()
{
  result = qword_1EA83BDE8;
  if (!qword_1EA83BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BDE8);
  }

  return result;
}

unint64_t sub_1822B9CA4()
{
  result = qword_1EA83BDF0;
  if (!qword_1EA83BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BDF0);
  }

  return result;
}

uint64_t sub_1822B9CF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((~a4 & 0x3000000000000000) != 0 || ~a5 != 0)
  {
    return sub_1821609F4(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_1822B9D20()
{
  result = qword_1EA83BE00;
  if (!qword_1EA83BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE00);
  }

  return result;
}

unint64_t sub_1822B9D74()
{
  result = qword_1EA83BE10;
  if (!qword_1EA83BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE10);
  }

  return result;
}

uint64_t sub_1822B9DC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE20);
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v71 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE28);
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v54 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE30);
  v66 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v72 = &v54 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE38);
  v62 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v69 = &v54 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE40);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE48);
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BE50);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  v18 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1822BA8C8();
  v19 = v73;
  sub_182AD45E8();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v20 = v13;
  v54 = v11;
  v55 = v10;
  v21 = v69;
  v22 = v70;
  v23 = v71;
  v56 = 0;
  v73 = v15;
  v24 = v17;
  v25 = sub_182AD4078();
  v26 = (2 * *(v25 + 16)) | 1;
  v77 = v25;
  v78 = v25 + 32;
  v79 = 0;
  v80 = v26;
  v27 = sub_181F95208();
  if (v27 == 6 || v79 != v80 >> 1)
  {
    v35 = sub_182AD3C98();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
    *v37 = &type metadata for ReplyEnvelope.Error;
    sub_182AD3F78();
    sub_182AD3C88();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
LABEL_10:
    v30 = v73;
LABEL_11:
    (*(v30 + 8))(v24, v14);
LABEL_12:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  if (v27 <= 2u)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        LOBYTE(v75) = 1;
        sub_1822BAA6C();
        v28 = v55;
        v29 = v56;
        sub_182AD3F58();
        v30 = v73;
        if (!v29)
        {
          v56 = 0;
          (*(v59 + 8))(v28, v60);
          (*(v30 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 1;
LABEL_20:
          v43 = 1;
LABEL_21:
          v39 = v68;
          goto LABEL_22;
        }
      }

      else
      {
        LOBYTE(v75) = 2;
        sub_1822BAA18();
        v47 = v56;
        sub_182AD3F58();
        v30 = v73;
        if (!v47)
        {
          v48 = v57;
          v43 = 0;
          v34 = sub_182AD3FC8();
          v31 = v52;
          v56 = 0;
          (*(v62 + 8))(v21, v48);
          (*(v30 + 8))(v17, v14);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0;
          goto LABEL_21;
        }
      }

      goto LABEL_11;
    }

    LOBYTE(v75) = 0;
    sub_1822BAAC0();
    v44 = v56;
    sub_182AD3F58();
    if (!v44)
    {
      v56 = 0;
      (*(v58 + 8))(v20, v54);
      (*(v73 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v34 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (v27 == 3)
  {
    LOBYTE(v75) = 3;
    sub_1822BA9C4();
    v45 = v56;
    sub_182AD3F58();
    v39 = v68;
    v30 = v73;
    if (!v45)
    {
      LOBYTE(v75) = 0;
      v46 = v61;
      v34 = sub_182AD3FC8();
      v31 = v51;
      v81 = 1;
      sub_181C67934();
      sub_182AD3FF8();
      v43 = 0;
      v56 = 0;
      (*(v66 + 8))(v72, v46);
      (*(v30 + 8))(v24, v14);
      swift_unknownObjectRelease();
      v32 = v75;
      v33 = v76 | 0x1000000000000000;
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v39 = v68;
  v40 = v73;
  if (v27 != 4)
  {
    LOBYTE(v75) = 5;
    sub_1822BA91C();
    v49 = v56;
    sub_182AD3F58();
    if (!v49)
    {
      v50 = v63;
      v34 = sub_182AD3FC8();
      v43 = 0;
      v31 = v53;
      v56 = 0;
      (*(v67 + 8))(v23, v50);
      (*(v40 + 8))(v24, v14);
      swift_unknownObjectRelease();
      v32 = 0;
      v33 = 0x3000000000000000;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  LOBYTE(v75) = 4;
  sub_1822BA970();
  v41 = v56;
  sub_182AD3F58();
  if (v41)
  {
LABEL_29:
    (*(v40 + 8))(v24, v14);
    goto LABEL_12;
  }

  sub_181C67934();
  v42 = v64;
  sub_182AD3FF8();
  v43 = 0;
  v56 = 0;
  (*(v65 + 8))(v22, v42);
  (*(v40 + 8))(v24, v14);
  swift_unknownObjectRelease();
  v32 = 0;
  v34 = v75;
  v31 = v76;
  v33 = 0x2000000000000000;
LABEL_22:
  result = __swift_destroy_boxed_opaque_existential_1(v74);
  *v39 = v34;
  *(v39 + 8) = v31;
  *(v39 + 16) = v32;
  *(v39 + 24) = v33;
  *(v39 + 32) = v43;
  return result;
}

unint64_t sub_1822BA8C8()
{
  result = qword_1EA83BE58;
  if (!qword_1EA83BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE58);
  }

  return result;
}

unint64_t sub_1822BA91C()
{
  result = qword_1EA83BE60;
  if (!qword_1EA83BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE60);
  }

  return result;
}

unint64_t sub_1822BA970()
{
  result = qword_1EA83BE68;
  if (!qword_1EA83BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE68);
  }

  return result;
}

unint64_t sub_1822BA9C4()
{
  result = qword_1EA83BE70;
  if (!qword_1EA83BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE70);
  }

  return result;
}

unint64_t sub_1822BAA18()
{
  result = qword_1EA83BE78;
  if (!qword_1EA83BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE78);
  }

  return result;
}

unint64_t sub_1822BAA6C()
{
  result = qword_1EA83BE80;
  if (!qword_1EA83BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE80);
  }

  return result;
}

unint64_t sub_1822BAAC0()
{
  result = qword_1EA83BE88;
  if (!qword_1EA83BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BE88);
  }

  return result;
}

uint64_t sub_1822BAB14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1822BAB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1822BABC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1822BAC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1822BAD20()
{
  result = qword_1EA83BEC8;
  if (!qword_1EA83BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BEC8);
  }

  return result;
}

unint64_t sub_1822BAD78()
{
  result = qword_1EA83BED0;
  if (!qword_1EA83BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BED0);
  }

  return result;
}

unint64_t sub_1822BADD0()
{
  result = qword_1EA83BED8;
  if (!qword_1EA83BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BED8);
  }

  return result;
}

unint64_t sub_1822BAE28()
{
  result = qword_1EA83BEE0;
  if (!qword_1EA83BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BEE0);
  }

  return result;
}

unint64_t sub_1822BAE80()
{
  result = qword_1EA83BEE8;
  if (!qword_1EA83BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BEE8);
  }

  return result;
}

unint64_t sub_1822BAED8()
{
  result = qword_1EA83BEF0;
  if (!qword_1EA83BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BEF0);
  }

  return result;
}

unint64_t sub_1822BAF30()
{
  result = qword_1EA83BEF8;
  if (!qword_1EA83BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BEF8);
  }

  return result;
}

unint64_t sub_1822BAF88()
{
  result = qword_1EA83BF00;
  if (!qword_1EA83BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF00);
  }

  return result;
}

unint64_t sub_1822BAFE0()
{
  result = qword_1EA83BF08;
  if (!qword_1EA83BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF08);
  }

  return result;
}

unint64_t sub_1822BB038()
{
  result = qword_1EA83BF10;
  if (!qword_1EA83BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF10);
  }

  return result;
}

unint64_t sub_1822BB090()
{
  result = qword_1EA83BF18;
  if (!qword_1EA83BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF18);
  }

  return result;
}

unint64_t sub_1822BB0E8()
{
  result = qword_1EA83BF20;
  if (!qword_1EA83BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF20);
  }

  return result;
}

unint64_t sub_1822BB140()
{
  result = qword_1EA83BF28;
  if (!qword_1EA83BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF28);
  }

  return result;
}

unint64_t sub_1822BB198()
{
  result = qword_1EA83BF30;
  if (!qword_1EA83BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF30);
  }

  return result;
}

unint64_t sub_1822BB1F0()
{
  result = qword_1EA83BF38;
  if (!qword_1EA83BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF38);
  }

  return result;
}

unint64_t sub_1822BB248()
{
  result = qword_1EA83BF40;
  if (!qword_1EA83BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF40);
  }

  return result;
}

unint64_t sub_1822BB2A0()
{
  result = qword_1EA83BF48;
  if (!qword_1EA83BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF48);
  }

  return result;
}

unint64_t sub_1822BB2F8()
{
  result = qword_1EA83BF50;
  if (!qword_1EA83BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF50);
  }

  return result;
}

unint64_t sub_1822BB350()
{
  result = qword_1EA83BF58;
  if (!qword_1EA83BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF58);
  }

  return result;
}

unint64_t sub_1822BB3A8()
{
  result = qword_1EA83BF60;
  if (!qword_1EA83BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF60);
  }

  return result;
}

unint64_t sub_1822BB400()
{
  result = qword_1EA83BF68;
  if (!qword_1EA83BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF68);
  }

  return result;
}

unint64_t sub_1822BB458()
{
  result = qword_1EA83BF70;
  if (!qword_1EA83BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF70);
  }

  return result;
}

unint64_t sub_1822BB4B0()
{
  result = qword_1EA83BF78;
  if (!qword_1EA83BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF78);
  }

  return result;
}

unint64_t sub_1822BB508()
{
  result = qword_1EA83BF80;
  if (!qword_1EA83BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF80);
  }

  return result;
}

unint64_t sub_1822BB560()
{
  result = qword_1EA83BF88;
  if (!qword_1EA83BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF88);
  }

  return result;
}

uint64_t sub_1822BB5B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000182BE4370 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEF65747563657845 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x43656C6261646F63 && a2 == 0xED0000746E65696CLL || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727245736ELL && a2 == 0xE700000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_182AD4268();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1822BB7D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C6C6163 && a2 == 0xE600000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
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

_DWORD *sub_1822BB940@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1822BB964()
{
  result = qword_1EA83BF90;
  if (!qword_1EA83BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BF90);
  }

  return result;
}

uint64_t sub_1822BB9B8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1822BBA10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1822BBA68()
{
  if (qword_1EA837018 != -1)
  {
    result = swift_once();
  }

  if (qword_1EA8431F8 < 0)
  {
    __break(1u);
  }

  else if ((qword_1EA8431F8 * 600) >> 64 == (600 * qword_1EA8431F8) >> 63)
  {
    qword_1EA83BF98 = 600 * qword_1EA8431F8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1822BBB14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_1822C119C(a1);

  *a2 = v3;
  return result;
}

uint64_t PMTUD.deinit()
{
  v1 = *(v0 + 88);

  sub_181F8BA68(v1);

  return v0;
}

uint64_t PMTUD.__deallocating_deinit()
{
  v1 = *(v0 + 88);

  sub_181F8BA68(v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1822BBC3C()
{
  if ((*(v0 + 128) & 7) == 3)
  {
    v1 = *(v0 + 112);
    if (*(v1 + 1125))
    {
      if (*(v1 + 304) - 3 >= 2)
      {
        v41 = qword_1EA837250;

        if (v41 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
        {
          goto LABEL_35;
        }

        sub_182AD3BA8();

        v93 = 0xD00000000000001FLL;
        v94 = 0x8000000182BE43F0;
        v42 = *(v1 + 304);
        if (v42 <= 1)
        {
          if (*(v1 + 304))
          {
            v43 = 0xE900000000000065;
            v44 = 0x6B616873646E6168;
          }

          else
          {
            v43 = 0xE700000000000000;
            v44 = 0x6C616974696E69;
          }
        }

        else if (v42 == 2)
        {
          v43 = 0xE500000000000000;
          v44 = 0x7474722D30;
        }

        else if (v42 == 3)
        {
          v43 = 0xE300000000000000;
          v44 = 3174507;
        }

        else
        {
          v44 = 3240043;
          v43 = 0xE300000000000000;
        }

        MEMORY[0x1865D9CA0](v44, v43);

        MEMORY[0x1865D9CA0](29481, 0xE200000000000000);
        v57 = v93;
        v92 = v94;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v58 = sub_182AD2698();
        __swift_project_value_buffer(v58, qword_1EA843418);
        v59 = swift_allocObject();
        *(v59 + 16) = "canSendProbe()";
        *(v59 + 24) = 14;
        *(v59 + 32) = 2;
        v60 = swift_allocObject();
        *(v60 + 16) = sub_181F8C724;
        *(v60 + 24) = v59;
        v61 = swift_allocObject();
        *(v61 + 16) = 1564427099;
        *(v61 + 24) = 0xE400000000000000;
        v62 = swift_allocObject();
        *(v62 + 16) = v57;
        *(v62 + 24) = v92;

        v63 = sub_182AD2678();
        v64 = sub_182AD38A8();
        v77 = swift_allocObject();
        *(v77 + 16) = 32;
        v80 = swift_allocObject();
        *(v80 + 16) = 8;
        v65 = swift_allocObject();
        *(v65 + 16) = sub_181F8C71C;
        *(v65 + 24) = v60;
        v66 = swift_allocObject();
        *(v66 + 16) = sub_181F8C718;
        *(v66 + 24) = v65;
        v75 = swift_allocObject();
        *(v75 + 16) = 32;
        v83 = swift_allocObject();
        *(v83 + 16) = 8;
        v67 = swift_allocObject();
        *(v67 + 16) = sub_181F8C720;
        *(v67 + 24) = v61;
        v68 = swift_allocObject();
        *(v68 + 16) = sub_181F8C718;
        *(v68 + 24) = v67;
        v86 = swift_allocObject();
        *(v86 + 16) = 32;
        v89 = swift_allocObject();
        *(v89 + 16) = 8;
        v69 = swift_allocObject();
        *(v69 + 16) = sub_181F8C720;
        *(v69 + 24) = v62;
        v70 = swift_allocObject();
        *(v70 + 16) = sub_181F8C718;
        *(v70 + 24) = v69;
        v73 = v64;
        v37 = v63;
        if (!os_log_type_enabled(v63, v64))
        {

          goto LABEL_35;
        }

        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v95 = v72;
        v96 = 0;
        *v71 = 770;
        v97 = v71 + 2;
        v93 = sub_181F8C728;
        v94 = v77;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C728;
        v94 = v80;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C714;
        v94 = v66;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C728;
        v94 = v75;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C728;
        v94 = v83;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C714;
        v94 = v68;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C728;
        v94 = v86;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C728;
        v94 = v89;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        v93 = sub_181F8C714;
        v94 = v70;
        sub_181F73AE0(&v93, &v97, &v96, &v95);

        _os_log_impl(&dword_181A37000, v37, v73, "%s %s %s", v71, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v72, -1, -1);
        v40 = v71;
        goto LABEL_52;
      }

      if ((*(v0 + 128) & 0x10) != 0 || *(v0 + 48) == 1280)
      {
        return 1;
      }

      v45 = qword_1EA837250;

      if (v45 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
      {
        goto LABEL_35;
      }

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v46 = sub_182AD2698();
      __swift_project_value_buffer(v46, qword_1EA843418);
      v47 = swift_allocObject();
      *(v47 + 16) = "canSendProbe()";
      *(v47 + 24) = 14;
      *(v47 + 32) = 2;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_181F8C724;
      *(v48 + 24) = v47;
      v49 = swift_allocObject();
      *(v49 + 16) = 1564427099;
      *(v49 + 24) = 0xE400000000000000;
      v50 = swift_allocObject();
      *(v50 + 16) = 0xD000000000000016;
      *(v50 + 24) = 0x8000000182BE4410;
      v51 = sub_182AD2678();
      v52 = sub_182AD38A8();
      v76 = swift_allocObject();
      *(v76 + 16) = 32;
      v79 = swift_allocObject();
      *(v79 + 16) = 8;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_181F8C71C;
      *(v53 + 24) = v48;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_181F8C718;
      *(v30 + 24) = v53;
      v82 = swift_allocObject();
      *(v82 + 16) = 32;
      v85 = swift_allocObject();
      *(v85 + 16) = 8;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_181F8C720;
      *(v54 + 24) = v49;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_181F8C718;
      *(v32 + 24) = v54;
      v88 = swift_allocObject();
      *(v88 + 16) = 32;
      v91 = swift_allocObject();
      *(v91 + 16) = 8;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_181F8C720;
      *(v55 + 24) = v50;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_181F8C718;
      *(v34 + 24) = v55;
      v35 = v52;
      v56 = v52;
      v37 = v51;
      if (!os_log_type_enabled(v51, v56))
      {
LABEL_42:

LABEL_35:

        return 0;
      }
    }

    else
    {
      v21 = qword_1EA837250;

      if (v21 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
      {
        goto LABEL_35;
      }

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v22 = sub_182AD2698();
      __swift_project_value_buffer(v22, qword_1EA843418);
      v23 = swift_allocObject();
      *(v23 + 16) = "canSendProbe()";
      *(v23 + 24) = 14;
      *(v23 + 32) = 2;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_181F8C724;
      *(v24 + 24) = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = 1564427099;
      *(v25 + 24) = 0xE400000000000000;
      v26 = swift_allocObject();
      *(v26 + 16) = 0xD00000000000001BLL;
      *(v26 + 24) = 0x8000000182BE43D0;
      v27 = sub_182AD2678();
      v28 = sub_182AD38A8();
      v76 = swift_allocObject();
      *(v76 + 16) = 32;
      v79 = swift_allocObject();
      *(v79 + 16) = 8;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_181F8C71C;
      *(v29 + 24) = v24;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_181F8C718;
      *(v30 + 24) = v29;
      v82 = swift_allocObject();
      *(v82 + 16) = 32;
      v85 = swift_allocObject();
      *(v85 + 16) = 8;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_181F8C720;
      *(v31 + 24) = v25;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_181F8C718;
      *(v32 + 24) = v31;
      v88 = swift_allocObject();
      *(v88 + 16) = 32;
      v91 = swift_allocObject();
      *(v91 + 16) = 8;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_181F8C720;
      *(v33 + 24) = v26;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_181F8C718;
      *(v34 + 24) = v33;
      v35 = v28;
      v36 = v28;
      v37 = v27;
      if (!os_log_type_enabled(v27, v36))
      {
        goto LABEL_42;
      }
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v95 = v39;
    v96 = 0;
    *v38 = 770;
    v74 = v39;
    v97 = v38 + 2;
    v93 = sub_181F8C728;
    v94 = v76;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C728;
    v94 = v79;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C714;
    v94 = v30;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C728;
    v94 = v82;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C728;
    v94 = v85;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C714;
    v94 = v32;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C728;
    v94 = v88;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C728;
    v94 = v91;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    v93 = sub_181F8C714;
    v94 = v34;
    sub_181F73AE0(&v93, &v97, &v96, &v95);

    _os_log_impl(&dword_181A37000, v37, v35, "%s %s %s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v74, -1, -1);
    v40 = v38;
LABEL_52:
    MEMORY[0x1865DF520](v40, -1, -1);

    goto LABEL_35;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    result = __nwlog_is_datapath_logging_enabled();
    if (!result)
    {
      return result;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843418);
    v4 = swift_allocObject();
    *(v4 + 16) = "canSendProbe()";
    *(v4 + 24) = 14;
    *(v4 + 32) = 2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_181F8C258;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = 1564427099;
    *(v6 + 24) = 0xE400000000000000;
    v7 = swift_allocObject();
    *(v7 + 16) = 0xD000000000000021;
    *(v7 + 24) = 0x8000000182BE43A0;
    v8 = sub_182AD2678();
    v9 = sub_182AD38A8();
    v10 = swift_allocObject();
    *(v10 + 16) = 32;
    v78 = swift_allocObject();
    *(v78 + 16) = 8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181F8C264;
    *(v11 + 24) = v5;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C27C;
    *(v12 + 24) = v11;
    v81 = swift_allocObject();
    *(v81 + 16) = 32;
    v84 = swift_allocObject();
    *(v84 + 16) = 8;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C26C;
    *(v13 + 24) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C718;
    *(v14 + 24) = v13;
    v87 = swift_allocObject();
    *(v87 + 16) = 32;
    v90 = swift_allocObject();
    *(v90 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C26C;
    *(v15 + 24) = v7;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v17 = v9;
    v18 = v8;
    if (os_log_type_enabled(v8, v9))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v95 = v20;
      v96 = 0;
      *v19 = 770;
      v97 = v19 + 2;
      v93 = sub_181F8C274;
      v94 = v10;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C728;
      v94 = v78;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C284;
      v94 = v12;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C728;
      v94 = v81;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C728;
      v94 = v84;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C714;
      v94 = v14;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C728;
      v94 = v87;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C728;
      v94 = v90;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      v93 = sub_181F8C714;
      v94 = v16;
      sub_181F73AE0(&v93, &v97, &v96, &v95);

      _os_log_impl(&dword_181A37000, v18, v17, "%s %s %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v20, -1, -1);
      MEMORY[0x1865DF520](v19, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

void sub_1822BD770()
{
  if ((*(v0 + 128) & 0xA) != 0)
  {
    swift_beginAccess();
    if (*(v0 + 24) <= 1279)
    {
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000002CLL, 0x8000000182BE4450);
      v1 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v1);

      MEMORY[0x1865D9CA0](2112544, 0xE300000000000000);
      v2 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v2);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v3 = sub_182AD2698();
      __swift_project_value_buffer(v3, qword_1EA843418);

      v4 = sub_182AD2678();
      v5 = sub_182AD38C8();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v12[0] = v7;
        *v6 = 136315650;
        v8 = sub_182AD3BF8();
        v10 = sub_181C64FFC(v8, v9, v12);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2080;
        *(v6 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v12);
        *(v6 + 22) = 2080;
        v11 = sub_181C64FFC(0, 0xE000000000000000, v12);

        *(v6 + 24) = v11;
        _os_log_impl(&dword_181A37000, v4, v5, "%s %s %s", v6, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v7, -1, -1);
        MEMORY[0x1865DF520](v6, -1, -1);
      }

      else
      {
      }
    }

    sub_1822BFE84();
  }
}

uint64_t sub_1822BDA3C()
{
  v1 = *(v0 + 40);
  result = 1280 - v1;
  if (__OFSUB__(1280, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1822BDA54()
{
  if (v0[8] >= 1)
  {
    sub_1822C0494(0);
  }

  v2 = v0[5];
  v1 = v0[6];
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

void sub_1822BDA8C()
{
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 80) = v3;
    }
  }
}

void sub_1822BDAAC(uint64_t a1)
{
  if ((*(v1 + 128) & 2) != 0)
  {
    v2 = v1;
    sub_182AD3BA8();

    v65 = 0xD000000000000022;
    v66 = 0x8000000182BE44A0;
    v63 = a1;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD3898();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v65 = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, &v65);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v65);
      *(v8 + 22) = 2080;
      v13 = sub_181C64FFC(0xD000000000000022, 0x8000000182BE44A0, &v65);

      *(v8 + 24) = v13;
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    else
    {
    }

    if (a1 <= 1279)
    {
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_182AD3BA8();

      v65 = 0xD000000000000029;
      v66 = 0x8000000182BE45B0;
      v63 = 1280;
      v14 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v14);

      v16 = v65;
      v15 = v66;

      v17 = sub_182AD2678();
      v18 = sub_182AD3898();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v65 = v20;
        *v19 = 136315650;
        v21 = sub_182AD3BF8();
        v23 = sub_181C64FFC(v21, v22, &v65);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v65);
        *(v19 + 22) = 2080;
        v24 = &v65;
LABEL_10:
        v25 = sub_181C64FFC(v16, v15, v24);

        *(v19 + 24) = v25;
        _os_log_impl(&dword_181A37000, v17, v18, "%s %s %s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v20, -1, -1);
        MEMORY[0x1865DF520](v19, -1, -1);

        return;
      }

LABEL_17:

      return;
    }

    swift_beginAccess();
    v26 = v2[3];
    if (v26 == a1)
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000037, 0x8000000182BE4570);
      v27 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v27);

      v28 = sub_182AD2678();
      v29 = sub_182AD3898();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v63 = v31;
        *v30 = 136315650;
        v32 = sub_182AD3BF8();
        v34 = sub_181C64FFC(v32, v33, &v63);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v63);
        *(v30 + 22) = 2080;
        v35 = sub_181C64FFC(0, 0xE000000000000000, &v63);

        *(v30 + 24) = v35;
        _os_log_impl(&dword_181A37000, v28, v29, "%s %s %s", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v31, -1, -1);
        MEMORY[0x1865DF520](v30, -1, -1);
      }

      else
      {
      }

      sub_1822C01B0();
    }

    else
    {
      v36 = v2[7];
      if (v36 < a1)
      {
        sub_182AD3BA8();

        v63 = 0xD000000000000029;
        v64 = 0x8000000182BE4540;
        v37 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v37);

        v16 = 0xD000000000000029;
        v15 = 0x8000000182BE4540;

        v17 = sub_182AD2678();
        v18 = sub_182AD3898();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v63 = v20;
          *v19 = 136315650;
          v38 = sub_182AD3BF8();
          v40 = sub_181C64FFC(v38, v39, &v63);

          *(v19 + 4) = v40;
          *(v19 + 12) = 2080;
          *(v19 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v63);
          *(v19 + 22) = 2080;
          v24 = &v63;
          goto LABEL_10;
        }

        goto LABEL_17;
      }

      if (v26 <= a1)
      {
        if (v26 < a1 && v36 > a1)
        {
          v50 = sub_182AD2678();
          v51 = sub_182AD3898();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v63 = v53;
            *v52 = 136315650;
            v54 = sub_182AD3BF8();
            v56 = sub_181C64FFC(v54, v55, &v63);

            *(v52 + 4) = v56;
            *(v52 + 12) = 2080;
            *(v52 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v63);
            *(v52 + 22) = 2080;
            *(v52 + 24) = sub_181C64FFC(0xD000000000000037, 0x8000000182BE44D0, &v63);
            _os_log_impl(&dword_181A37000, v50, v51, "%s %s %s", v52, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v53, -1, -1);
            MEMORY[0x1865DF520](v52, -1, -1);
          }

          v57 = v2[8];
          if (v57 >= a1)
          {
            v58 = a1;
          }

          else
          {
            v58 = v2[8];
          }

          if (v57)
          {
            v59 = v58;
          }

          else
          {
            v59 = a1;
          }

          v2[8] = v59;
        }
      }

      else
      {
        sub_182AD3BA8();

        v63 = 0xD000000000000026;
        v64 = 0x8000000182BE4510;
        v41 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v41);

        v42 = sub_182AD2678();
        v43 = sub_182AD3898();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v63 = v45;
          *v44 = 136315650;
          v46 = sub_182AD3BF8();
          v48 = sub_181C64FFC(v46, v47, &v63);

          *(v44 + 4) = v48;
          *(v44 + 12) = 2080;
          *(v44 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v63);
          *(v44 + 22) = 2080;
          v49 = sub_181C64FFC(0xD000000000000026, 0x8000000182BE4510, &v63);

          *(v44 + 24) = v49;
          _os_log_impl(&dword_181A37000, v42, v43, "%s %s %s", v44, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v45, -1, -1);
          MEMORY[0x1865DF520](v44, -1, -1);
        }

        else
        {
        }

        v60 = v2[8];
        if (v60 >= a1)
        {
          v61 = a1;
        }

        else
        {
          v61 = v2[8];
        }

        if (v60)
        {
          v62 = v61;
        }

        else
        {
          v62 = a1;
        }

        v2[8] = v62;
        sub_1822BFE84();
      }
    }
  }
}

void sub_1822BE514(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) <= a2)
  {
    v17 = *(v2 + 40);
    v18 = a1 + v17;
    if (__OFADD__(a1, v17))
    {
      __break(1u);
      goto LABEL_32;
    }

    if ((*(v2 + 128) & 6) == 2 && v18 >= *(v2 + 56))
    {
      swift_beginAccess();
      if (v18 >= *(v2 + 24))
      {
        *(v2 + 72) = 0;
        *(v2 + 24) = v18;
        *(v2 + 56) = v18;
        sub_182AD3BA8();

        strcpy(v39, "probe for MTU ");
        HIBYTE(v39[1]) = -18;
        v19 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v19);

        MEMORY[0x1865D9CA0](0x6C776F6E6B636120, 0xED00006465676465);
        v21 = v39[0];
        v20 = v39[1];
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v22 = sub_182AD2698();
        __swift_project_value_buffer(v22, qword_1EA843418);

        v23 = sub_182AD2678();
        v24 = sub_182AD3898();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v39[0] = v26;
          *v25 = 136315650;
          v27 = sub_182AD3BF8();
          v29 = sub_181C64FFC(v27, v28, v39);

          *(v25 + 4) = v29;
          *(v25 + 12) = 2080;
          *(v25 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v39);
          *(v25 + 22) = 2080;
          v30 = sub_181C64FFC(v21, v20, v39);

          *(v25 + 24) = v30;
          _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v26, -1, -1);
          MEMORY[0x1865DF520](v25, -1, -1);
        }

        else
        {
        }

        if (*(v2 + 64) < v18)
        {
          *(v2 + 64) = 0;
        }

        if (v18 >= *(v2 + 32))
        {
          if (qword_1EA837250 != -1)
          {
            swift_once();
          }

          if (byte_1EA843430 == 1)
          {
            v31 = sub_182AD2678();
            v32 = sub_182AD38A8();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v39[0] = v34;
              *v33 = 136315650;
              v35 = sub_182AD3BF8();
              v37 = sub_181C64FFC(v35, v36, v39);

              *(v33 + 4) = v37;
              *(v33 + 12) = 2080;
              *(v33 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v39);
              *(v33 + 22) = 2080;
              *(v33 + 24) = sub_181C64FFC(0xD000000000000023, 0x8000000182BE4600, v39);
              _os_log_impl(&dword_181A37000, v31, v32, "%s %s %s", v33, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v34, -1, -1);
              MEMORY[0x1865DF520](v33, -1, -1);
            }
          }

          sub_1822C01B0();
        }

        else
        {
          sub_1822C0494(0);
        }
      }
    }
  }

  else
  {
    if (qword_1EA837250 != -1)
    {
      v38 = a2;
      swift_once();
      a2 = v38;
    }

    if (byte_1EA843430 == 1)
    {
      v5 = a2;
      sub_182AD3BA8();

      v40[0] = 0xD000000000000017;
      v40[1] = 0x8000000182BE4630;
      v39[0] = v5;
      v6 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v6);

      MEMORY[0x1865D9CA0](0x7472617473203C20, 0xEC000000206E7020);
      v39[0] = *(v2 + 16);
      v7 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v7);

      v4 = 0xD000000000000017;
      v3 = 0x8000000182BE4630;
      if (qword_1EA837248 == -1)
      {
LABEL_6:
        v8 = sub_182AD2698();
        __swift_project_value_buffer(v8, qword_1EA843418);

        v9 = sub_182AD2678();
        v10 = sub_182AD38A8();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v40[0] = v12;
          *v11 = 136315650;
          v13 = sub_182AD3BF8();
          v15 = sub_181C64FFC(v13, v14, v40);

          *(v11 + 4) = v15;
          *(v11 + 12) = 2080;
          *(v11 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v40);
          *(v11 + 22) = 2080;
          v16 = sub_181C64FFC(v4, v3, v40);

          *(v11 + 24) = v16;
          _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v12, -1, -1);
          MEMORY[0x1865DF520](v11, -1, -1);
        }

        else
        {
        }

        return;
      }

LABEL_32:
      swift_once();
      goto LABEL_6;
    }
  }
}

void sub_1822BEC2C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) > a2)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      sub_182AD3BA8();

      v40 = 0xD000000000000018;
      v41 = 0x8000000182BE46C0;
      v6 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v6);

      MEMORY[0x1865D9CA0](0x7472617473203C20, 0xEC000000206E7020);
      v7 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v7);

      v3 = 0xD000000000000018;
      v8 = 0x8000000182BE46C0;
      if (qword_1EA837248 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

    return;
  }

  v18 = *(v2 + 40);
  v8 = a1 + v18;
  if (__OFADD__(a1, v18))
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_6:
    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843418);

    v10 = sub_182AD2678();
    v11 = sub_182AD38A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = v13;
      *v12 = 136315650;
      v14 = sub_182AD3BF8();
      v16 = sub_181C64FFC(v14, v15, &v40);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v40);
      *(v12 + 22) = 2080;
      v17 = sub_181C64FFC(v3, v8, &v40);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_181A37000, v10, v11, "%s %s %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (*(v2 + 48) >= v8 && (*(v2 + 128) & 4) == 0)
  {
    v19 = *(v2 + 72);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v5 = 0xD000000000000013;
      *(v2 + 72) = v21;
      sub_182AD3BA8();

      v40 = 0xD000000000000013;
      v41 = 0x8000000182BE4670;
      v22 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v22);

      MEMORY[0x1865D9CA0](0x2065626F7270202CLL, 0xEE0020746E756F63);
      v23 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v23);

      v4 = 0xD000000000000013;
      v3 = 0x8000000182BE4670;
      if (qword_1EA837248 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
LABEL_13:
    v24 = sub_182AD2698();
    __swift_project_value_buffer(v24, qword_1EA843418);

    v25 = sub_182AD2678();
    v26 = sub_182AD3898();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315650;
      v29 = sub_182AD3BF8();
      v31 = sub_181C64FFC(v29, v30, &v40);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v40);
      *(v27 + 22) = 2080;
      v5 = 0xD000000000000013;
      v32 = sub_181C64FFC(v4, v3, &v40);

      *(v27 + 24) = v32;
      _os_log_impl(&dword_181A37000, v25, v26, "%s %s %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v28, -1, -1);
      MEMORY[0x1865DF520](v27, -1, -1);
    }

    else
    {
    }

    if (*(v2 + 72) == 3)
    {
      v33 = sub_182AD2678();
      v34 = sub_182AD3898();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v40 = v36;
        *v35 = 136315650;
        v37 = sub_182AD3BF8();
        v39 = sub_181C64FFC(v37, v38, &v40);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v40);
        *(v35 + 22) = 2080;
        *(v35 + 24) = sub_181C64FFC(v5 + 26, 0x8000000182BE4690, &v40);
        _os_log_impl(&dword_181A37000, v33, v34, "%s %s %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v36, -1, -1);
        MEMORY[0x1865DF520](v35, -1, -1);
      }

      sub_1822C01B0();
    }

    else
    {
      sub_1822C0494(0);
    }
  }
}

void sub_1822BF2FC()
{
  v1 = v0;
  sub_182AD3BA8();

  strcpy(v14, "probe for MTU ");
  HIBYTE(v14[1]) = -18;
  v2 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v2);

  MEMORY[0x1865D9CA0](0x746E657320, 0xE500000000000000);
  v4 = v14[0];
  v3 = v14[1];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v5 = sub_182AD2698();
  __swift_project_value_buffer(v5, qword_1EA843418);

  v6 = sub_182AD2678();
  v7 = sub_182AD3898();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315650;
    v10 = sub_182AD3BF8();
    v12 = sub_181C64FFC(v10, v11, v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v14);
    *(v8 + 22) = 2080;
    v13 = sub_181C64FFC(v4, v3, v14);

    *(v8 + 24) = v13;
    _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v9, -1, -1);
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  else
  {
  }

  if (*(v1 + 128))
  {
    *(v1 + 128) &= ~1u;
  }

  *(v1 + 56) = *(v1 + 48);
}

void sub_1822BF574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_13;
  }

  v9 = v5;
  if (*(*(v5 + 120) + 1072) == v8)
  {
    v12 = a3;
    v13 = a2;
    v15 = *(*(v5 + 112) + 320);
    v16 = *(v9 + 88);

    v17 = sub_181F8BDB8(v16);
    if (v18)
    {
      goto LABEL_9;
    }

    v19 = v17;
    swift_beginAccess();
    v20 = *(v15 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 64) = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
LABEL_6:
        if (v19 >= *(v20 + 2))
        {
          __break(1u);
          return;
        }

        *&v20[56 * v19 + 40] = 0;
        *(v15 + 64) = v20;
        swift_endAccess();
        if (*(v15 + 58) != 1)
        {
          sub_181F8A570();
        }

LABEL_9:

        *(v9 + 32) = a1;
        *(v9 + 40) = v12;
        swift_beginAccess();
        *(v9 + 24) = v13;
        v22 = *(v9 + 128);
        if (a5)
        {
          if ((*(v9 + 128) & 2) != 0)
          {
            goto LABEL_19;
          }

          v22 |= 2u;
        }

        else
        {
          if ((*(v9 + 128) & 2) == 0)
          {
            goto LABEL_19;
          }

          v22 &= ~2u;
        }

        *(v9 + 128) = v22;
LABEL_19:
        if ((v22 & 0xC) != 0)
        {
          *(v9 + 128) = v22 & 0xF3;
        }

        *(v9 + 16) = a4;
        *(v9 + 80) = 0;
        if (qword_1EA837250 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 != 1)
        {
          goto LABEL_35;
        }

        v48 = 0;
        v49 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0x204455544D50, 0xE600000000000000);
        if (a5)
        {
          v34 = 0x64656C62616E65;
        }

        else
        {
          v34 = 0x64656C6261736964;
        }

        if (a5)
        {
          v35 = 0xE700000000000000;
        }

        else
        {
          v35 = 0xE800000000000000;
        }

        MEMORY[0x1865D9CA0](v34, v35);

        MEMORY[0x1865D9CA0](0x4D502078616D202CLL, 0xEC000000203A5554);
        v36 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v36);

        MEMORY[0x1865D9CA0](0x726564616568202CLL, 0xEF203A657A697320);
        v37 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v37);

        MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BE4760);
        v38 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v38);

        v12 = v48;
        v13 = v49;
        if (qword_1EA837248 == -1)
        {
LABEL_31:
          v39 = sub_182AD2698();
          __swift_project_value_buffer(v39, qword_1EA843418);

          v40 = sub_182AD2678();
          v41 = sub_182AD38A8();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v48 = v43;
            *v42 = 136315650;
            v44 = sub_182AD3BF8();
            v46 = sub_181C64FFC(v44, v45, &v48);

            *(v42 + 4) = v46;
            *(v42 + 12) = 2080;
            *(v42 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v48);
            *(v42 + 22) = 2080;
            v47 = sub_181C64FFC(v12, v13, &v48);

            *(v42 + 24) = v47;
            _os_log_impl(&dword_181A37000, v40, v41, "%s %s %s", v42, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v43, -1, -1);
            MEMORY[0x1865DF520](v42, -1, -1);
          }

          else
          {
          }

LABEL_35:
          if (a5)
          {
            sub_1822C0494(1);
          }

          return;
        }

LABEL_42:
        swift_once();
        goto LABEL_31;
      }
    }

    else
    {
      v20 = sub_18208355C(v20);
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v50[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0x65686374616D6E75, 0xEF203A53534D2064);
  v23 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v23);

  MEMORY[0x1865D9CA0](0xD000000000000020, 0x8000000182BE4730);
  v48 = v8;
  v24 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v24);

  v7 = 0;
  v6 = 0xE000000000000000;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_39;
  }

LABEL_13:
  v25 = sub_182AD2698();
  __swift_project_value_buffer(v25, qword_1EA843418);

  v26 = sub_182AD2678();
  v27 = sub_182AD38C8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50[0] = v29;
    *v28 = 136315650;
    v30 = sub_182AD3BF8();
    v32 = sub_181C64FFC(v30, v31, v50);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v50);
    *(v28 + 22) = 2080;
    v33 = sub_181C64FFC(v7, v6, v50);

    *(v28 + 24) = v33;
    _os_log_impl(&dword_181A37000, v26, v27, "%s %s %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v29, -1, -1);
    MEMORY[0x1865DF520](v28, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1822BFC94()
{
  if ((*(v0 + 128) & 0x20) != 0)
  {
    *(v0 + 128) &= ~0x20u;
  }

  sub_1822BBC3C();
}

uint64_t sub_1822BFCFC()
{
  if ((*(v0 + 128) & 2) != 0)
  {
    *(v0 + 128) &= ~2u;
  }

  v1 = *(*(v0 + 112) + 320);
  v2 = *(v0 + 88);

  v3 = sub_181F8BDB8(v2);
  if (v4)
  {
  }

  v6 = v3;
  swift_beginAccess();
  v7 = *(v1 + 64);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 64) = v7;
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_18208355C(v7);
  v7 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v6 < *(v7 + 16))
  {
    *(v7 + 56 * v6 + 40) = 0;
    *(v1 + 64) = v7;
    swift_endAccess();
    if (*(v1 + 58) != 1)
    {
      sub_181F8A570();
    }
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1822BFE0C()
{
  if ((*(v0 + 128) & 0x20) != 0)
  {
    *(v0 + 128) &= ~0x20u;

    sub_1822BBC3C();
  }

  return result;
}

void sub_1822BFE84()
{
  if ((*(v0 + 128) & 2) != 0)
  {
    v1 = v0;
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000032, 0x8000000182BE4980);
    v2 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v2);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843418);

    v4 = sub_182AD2678();
    v5 = sub_182AD3898();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19[0] = v7;
      *v6 = 136315650;
      v8 = sub_182AD3BF8();
      v10 = sub_181C64FFC(v8, v9, v19);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v19);
      *(v6 + 22) = 2080;
      v11 = sub_181C64FFC(0, 0xE000000000000000, v19);

      *(v6 + 24) = v11;
      _os_log_impl(&dword_181A37000, v4, v5, "%s %s %s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v7, -1, -1);
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    *(v1 + 24) = 1280;
    if ((*(v1 + 128) & 4) != 0)
    {
      *(v1 + 128) &= ~4u;
    }

    *(v1 + 72) = 0;
    v12 = *(*(v1 + 112) + 320);
    v13 = *(v1 + 88);

    v14 = sub_181F8BDB8(v13);
    if (v15)
    {
      goto LABEL_15;
    }

    v16 = v14;
    swift_beginAccess();
    v17 = *(v12 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 64) = v17;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = sub_18208355C(v17);
      if ((v16 & 0x8000000000000000) == 0)
      {
LABEL_12:
        if (v16 < *(v17 + 2))
        {
          *&v17[56 * v16 + 40] = 0;
          *(v12 + 64) = v17;
          swift_endAccess();
          if (*(v12 + 58) != 1)
          {
            sub_181F8A570();
          }

LABEL_15:

          sub_1822C0494(1);
          return;
        }

LABEL_19:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1822C01B0()
{
  v3 = v0;
  v4 = *(v0 + 128);
  if (v4)
  {
    v4 &= ~1u;
    *(v0 + 128) = v4;
  }

  *(v0 + 72) = 0;
  if ((v4 & 0xC) != 4)
  {
    *(v0 + 128) = v4 & 0xF3 | 4;
  }

  if (qword_1EA8372B8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EA83BF98;
  if (qword_1EA83BF98 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 88);

    sub_181F8BE74(v6, v5);

    sub_182AD3BA8();

    v17[0] = 0xD00000000000001DLL;
    v17[1] = 0x8000000182BE4870;
    swift_beginAccess();
    v7 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v7);

    v2 = 0xD00000000000001DLL;
    v1 = 0x8000000182BE4870;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v8 = sub_182AD2698();
  __swift_project_value_buffer(v8, qword_1EA843418);

  v9 = sub_182AD2678();
  v10 = sub_182AD3898();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315650;
    v13 = sub_182AD3BF8();
    v15 = sub_181C64FFC(v13, v14, v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v17);
    *(v11 + 22) = 2080;
    v16 = sub_181C64FFC(v2, v1, v17);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v12, -1, -1);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  else
  {
  }
}

void sub_1822C0494(char a1)
{
  if ((*(v1 + 128) & 4) == 0)
  {
    v2 = v1;
    v4 = *(v1 + 64);
    if (v4 >= 1 && v4 < *(v1 + 56))
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BE48F0);
      v44[0] = *(v1 + 64);
      v5 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v5);

      MEMORY[0x1865D9CA0](0x7478656E20736120, 0xEE0065626F727020);
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v6 = sub_182AD2698();
      __swift_project_value_buffer(v6, qword_1EA843418);

      v7 = sub_182AD2678();
      v8 = sub_182AD3898();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v45 = v10;
        *v9 = 136315650;
        v11 = sub_182AD3BF8();
        v13 = sub_181C64FFC(v11, v12, &v45);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2080;
        *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v45);
        *(v9 + 22) = 2080;
        v14 = sub_181C64FFC(0, 0xE000000000000000, &v45);

        *(v9 + 24) = v14;
        _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v10, -1, -1);
        MEMORY[0x1865DF520](v9, -1, -1);
      }

      else
      {
      }

      *(v2 + 48) = *(v2 + 64);
      *(v2 + 64) = 0;
      v42 = *(v2 + 128);
      if (v42)
      {
        goto LABEL_30;
      }

LABEL_29:
      v42 |= 1u;
      *(v2 + 128) = v42;
LABEL_30:
      if (a1)
      {
        if ((v42 & 0x20) != 0)
        {
          *(v2 + 128) = v42 & 0xDF;
        }

        sub_1822BBC3C();
      }

      else if ((v42 & 0x20) == 0)
      {
        *(v2 + 128) = v42 | 0x20;
      }

      return;
    }

    if (*(v1 + 72) < 1)
    {
      swift_beginAccess();
      v34 = sub_1822C11D4(*(v1 + 24), 1);
      v35 = *(v1 + 32);
      if (v35 >= v34)
      {
        v35 = v34;
      }

      *(v1 + 48) = v35;
      sub_182AD3BA8();

      v44[0] = 0xD000000000000017;
      v44[1] = 0x8000000182BE48B0;
      v36 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v36);

      v24 = 0xD000000000000017;
      v23 = 0x8000000182BE48B0;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v37 = sub_182AD2698();
      __swift_project_value_buffer(v37, qword_1EA843418);

      v26 = sub_182AD2678();
      v27 = sub_182AD3898();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44[0] = v29;
        *v28 = 136315650;
        v38 = sub_182AD3BF8();
        v40 = sub_181C64FFC(v38, v39, v44);

        *(v28 + 4) = v40;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v44);
        *(v28 + 22) = 2080;
        v33 = v44;
        goto LABEL_26;
      }
    }

    else
    {
      sub_182AD3BA8();

      v45 = 0xD00000000000001CLL;
      v46 = 0x8000000182BE48D0;
      v44[0] = *(v1 + 48);
      v22 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v22);

      v24 = 0xD00000000000001CLL;
      v23 = 0x8000000182BE48D0;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v25 = sub_182AD2698();
      __swift_project_value_buffer(v25, qword_1EA843418);

      v26 = sub_182AD2678();
      v27 = sub_182AD3898();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v45 = v29;
        *v28 = 136315650;
        v30 = sub_182AD3BF8();
        v32 = sub_181C64FFC(v30, v31, &v45);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v45);
        *(v28 + 22) = 2080;
        v33 = &v45;
LABEL_26:
        v41 = sub_181C64FFC(v24, v23, v33);

        *(v28 + 24) = v41;
        _os_log_impl(&dword_181A37000, v26, v27, "%s %s %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v29, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);
        goto LABEL_28;
      }
    }

LABEL_28:

    v42 = *(v2 + 128);
    if (v42)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v15 = sub_182AD2698();
  __swift_project_value_buffer(v15, qword_1EA843418);
  oslog = sub_182AD2678();
  v16 = sub_182AD38C8();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45 = v18;
    *v17 = 136315650;
    v19 = sub_182AD3BF8();
    v21 = sub_181C64FFC(v19, v20, &v45);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v45);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_181C64FFC(0xD000000000000036, 0x8000000182BE4920, &v45);
    _os_log_impl(&dword_181A37000, oslog, v16, "%s %s %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v18, -1, -1);
    MEMORY[0x1865DF520](v17, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1822C0F98()
{
  result = qword_1EA83BFA0;
  if (!qword_1EA83BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFA0);
  }

  return result;
}

unint64_t sub_1822C0FF0()
{
  result = qword_1EA83BFA8;
  if (!qword_1EA83BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFA8);
  }

  return result;
}

unint64_t sub_1822C1048()
{
  result = qword_1EA83BFB0;
  if (!qword_1EA83BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFB0);
  }

  return result;
}

unint64_t sub_1822C10A0()
{
  result = qword_1EA83BFB8;
  if (!qword_1EA83BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BFB8);
  }

  return result;
}

uint64_t sub_1822C10F4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1822C112C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1822C1164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1822C119C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1822C11D4(uint64_t a1, char a2)
{
  result = qword_1EEF97C90;
  if (qword_1EEF97C90 <= a1)
  {
    if (a2)
    {
      return 0;
    }

    if (qword_1EEF97C90 >= a1)
    {
      v6 = &qword_1EEF97C90;
      return v6[1];
    }
  }

  else
  {
    result = qword_1EEF97C98;
    if (qword_1EEF97C98 <= a1)
    {
      v4 = 0;
      v5 = 1;
    }

    else
    {
      result = qword_1EEF97CA0;
      if (qword_1EEF97CA0 <= a1)
      {
        v4 = 0;
        v5 = 2;
      }

      else
      {
        result = qword_1EEF97CA8;
        if (qword_1EEF97CA8 <= a1)
        {
          v4 = 0;
          v5 = 3;
        }

        else
        {
          result = qword_1EEF97CB0;
          if (qword_1EEF97CB0 <= a1)
          {
            v4 = 0;
            v5 = 4;
          }

          else
          {
            result = qword_1EEF97CB8;
            if (qword_1EEF97CB8 <= a1)
            {
              v4 = 0;
              v5 = 5;
            }

            else
            {
              result = qword_1EEF97CC0;
              if (qword_1EEF97CC0 <= a1)
              {
                v4 = 0;
                v5 = 6;
              }

              else
              {
                result = qword_1EEF97CC8;
                if (qword_1EEF97CC8 <= a1)
                {
                  v4 = 0;
                  v5 = 7;
                }

                else
                {
                  result = qword_1EEF97CD0;
                  if (qword_1EEF97CD0 <= a1)
                  {
                    v4 = 0;
                    v5 = 8;
                  }

                  else
                  {
                    result = qword_1EEF97CD8;
                    if (qword_1EEF97CD8 <= a1)
                    {
                      v4 = 0;
                      v5 = 9;
                    }

                    else
                    {
                      result = qword_1EEF97CE0;
                      if (qword_1EEF97CE0 > a1)
                      {
                        if ((a2 & 1) == 0)
                        {
                          return 0;
                        }

                        return result;
                      }

                      v4 = 1;
                      v5 = 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v6 = (&unk_1EEF97C70 + 8 * v5 + 32);
    if (a2)
    {
      return *(v6 - 1);
    }

    if (result >= a1)
    {
      if (v4)
      {
        __break(1u);
        return result;
      }

      return v6[1];
    }
  }

  return result;
}

uint64_t sub_1822C1374(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_182AD3038();
}

uint64_t sub_1822C142C()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA8431B0);
  __swift_project_value_buffer(v0, qword_1EA8431B0);
  return sub_182AD2688();
}

uint64_t sub_1822C14AC()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA843470);
  __swift_project_value_buffer(v0, qword_1EA843470);
  return sub_182AD2688();
}

uint64_t sub_1822C152C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v125 = *MEMORY[0x1E69E9840];
  result = xpc_dictionary_get_string(a1, "application_service_name");
  if (!result || (result = xpc_dictionary_get_uuid(a1, "service_identifier")) == 0)
  {
    *a2 = 0;
    return result;
  }

  v91 = a2;
  v111 = 0;
  v112 = 0;
  uuid_copy(&v111, result);
  v104 = sub_182AD3158();
  v101 = BYTE3(v111);
  v102 = v111;
  v99 = BYTE1(v111);
  v100 = BYTE4(v111);
  v94 = BYTE5(v111);
  v95 = BYTE2(v111);
  v97 = HIBYTE(v111);
  v98 = BYTE6(v111);
  v96 = v112;
  v93 = BYTE1(v112);
  v109 = BYTE3(v112);
  v110 = BYTE2(v112);
  v107 = BYTE5(v112);
  v108 = BYTE4(v112);
  v105 = HIBYTE(v112);
  v106 = BYTE6(v112);
  *&v116 = v104;
  *(&v116 + 1) = v5;
  v103 = v5;

  v6 = MEMORY[0x1865D9CA0](47, 0xE100000000000000);
  v7 = *(&v116 + 1);
  v92 = v116;
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_182AD30D8();
  v10 = v9;
  *&v116 = v92;
  *(&v116 + 1) = v7;

  MEMORY[0x1865D9CA0](v8, v10);

  v11 = v116;
  type metadata accessor for ApplicationServiceEndpoint1.AppSVCBackingClass();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 48) = v104;
  *(v12 + 56) = v103;
  *(v12 + 64) = v102;
  *(v12 + 65) = v99;
  *(v12 + 66) = v95;
  *(v12 + 67) = v101;
  *(v12 + 68) = v100;
  *(v12 + 69) = v94;
  *(v12 + 70) = v98;
  *(v12 + 71) = v97;
  *(v12 + 72) = v96;
  *(v12 + 73) = v93;
  *(v12 + 74) = v110;
  *(v12 + 75) = v109;
  *(v12 + 76) = v108;
  *(v12 + 77) = v107;
  *(v12 + 78) = v106;
  *(v12 + 79) = v105;
  *(v12 + 128) = 0;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 132) = 3;
  *(v12 + 133) = v113;
  *(v12 + 135) = v114;
  *(v12 + 136) = xmmword_182AF5DF0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(v12 + 128);
    v122 = *(v12 + 112);
    v123 = v14;
    v124 = *(v12 + 144);
    v15 = *(v12 + 64);
    v118 = *(v12 + 48);
    v119 = v15;
    v16 = *(v12 + 96);
    v120 = *(v12 + 80);
    v121 = v16;
    v17 = *(v12 + 32);
    v116 = *v13;
    v117 = v17;
    v18 = swift_allocObject();
    v19 = *(v12 + 128);
    *(v18 + 112) = *(v12 + 112);
    *(v18 + 128) = v19;
    *(v18 + 144) = *(v12 + 144);
    v20 = *(v12 + 64);
    *(v18 + 48) = *(v12 + 48);
    *(v18 + 64) = v20;
    v21 = *(v12 + 96);
    *(v18 + 80) = *(v12 + 80);
    *(v18 + 96) = v21;
    v22 = *(v12 + 32);
    *(v18 + 16) = *v13;
    *(v18 + 32) = v22;
    sub_181E63A90(&v116, v115);

    v12 = v18;
  }

  *(v12 + 80) = 0;
  *(v12 + 88) = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = *(v12 + 128);
    v122 = *(v12 + 112);
    v123 = v23;
    v124 = *(v12 + 144);
    v24 = *(v12 + 64);
    v118 = *(v12 + 48);
    v119 = v24;
    v25 = *(v12 + 96);
    v120 = *(v12 + 80);
    v121 = v25;
    v26 = *(v12 + 32);
    v116 = *(v12 + 16);
    v117 = v26;
    v27 = swift_allocObject();
    v28 = *(v12 + 128);
    *(v27 + 112) = *(v12 + 112);
    *(v27 + 128) = v28;
    *(v27 + 144) = *(v12 + 144);
    v29 = *(v12 + 64);
    *(v27 + 48) = *(v12 + 48);
    *(v27 + 64) = v29;
    v30 = *(v12 + 96);
    *(v27 + 80) = *(v12 + 80);
    *(v27 + 96) = v30;
    v31 = *(v12 + 32);
    *(v27 + 16) = *(v12 + 16);
    *(v27 + 32) = v31;
    sub_181E63A90(&v116, v115);

    v12 = v27;
  }

  *(v12 + 96) = 0;
  *(v12 + 104) = 0;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = *(v12 + 128);
    v122 = *(v12 + 112);
    v123 = v32;
    v124 = *(v12 + 144);
    v33 = *(v12 + 64);
    v118 = *(v12 + 48);
    v119 = v33;
    v34 = *(v12 + 96);
    v120 = *(v12 + 80);
    v121 = v34;
    v35 = *(v12 + 32);
    v116 = *(v12 + 16);
    v117 = v35;
    v36 = swift_allocObject();
    memmove((v36 + 16), (v12 + 16), 0x88uLL);
    sub_181E63A90(&v116, v115);

    v12 = v36;
  }

  *(v12 + 112) = 0;
  *(v12 + 120) = 0;

  if (xpc_dictionary_get_string(a1, "application_service_alias"))
  {
    v37 = sub_182AD3158();
    v39 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v12 + 128);
      v122 = *(v12 + 112);
      v123 = v40;
      v124 = *(v12 + 144);
      v41 = *(v12 + 64);
      v118 = *(v12 + 48);
      v119 = v41;
      v42 = *(v12 + 96);
      v120 = *(v12 + 80);
      v121 = v42;
      v43 = *(v12 + 32);
      v116 = *(v12 + 16);
      v117 = v43;
      v44 = swift_allocObject();
      memmove((v44 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(&v116, v115);

      v12 = v44;
    }

    *(v12 + 136) = v37;
    *(v12 + 144) = v39;
  }

  if (xpc_dictionary_get_string(a1, "application_service_alias"))
  {
    v45 = sub_182AD3158();
    v47 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = *(v12 + 128);
      v122 = *(v12 + 112);
      v123 = v48;
      v124 = *(v12 + 144);
      v49 = *(v12 + 64);
      v118 = *(v12 + 48);
      v119 = v49;
      v50 = *(v12 + 96);
      v120 = *(v12 + 80);
      v121 = v50;
      v51 = *(v12 + 32);
      v116 = *(v12 + 16);
      v117 = v51;
      v52 = swift_allocObject();
      memmove((v52 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(&v116, v115);

      v12 = v52;
    }

    *(v12 + 136) = v45;
    *(v12 + 144) = v47;
  }

  if (xpc_dictionary_get_string(a1, "device_name"))
  {
    v53 = sub_182AD3158();
    v55 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = *(v12 + 128);
      v122 = *(v12 + 112);
      v123 = v56;
      v124 = *(v12 + 144);
      v57 = *(v12 + 64);
      v118 = *(v12 + 48);
      v119 = v57;
      v58 = *(v12 + 96);
      v120 = *(v12 + 80);
      v121 = v58;
      v59 = *(v12 + 32);
      v116 = *(v12 + 16);
      v117 = v59;
      v60 = swift_allocObject();
      memmove((v60 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(&v116, v115);

      v12 = v60;
    }

    *(v12 + 80) = v53;
    *(v12 + 88) = v55;
  }

  if (xpc_dictionary_get_string(a1, "device_model"))
  {
    v61 = sub_182AD3158();
    v63 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = *(v12 + 128);
      v122 = *(v12 + 112);
      v123 = v64;
      v124 = *(v12 + 144);
      v65 = *(v12 + 64);
      v118 = *(v12 + 48);
      v119 = v65;
      v66 = *(v12 + 96);
      v120 = *(v12 + 80);
      v121 = v66;
      v67 = *(v12 + 32);
      v116 = *(v12 + 16);
      v117 = v67;
      v68 = swift_allocObject();
      memmove((v68 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(&v116, v115);

      v12 = v68;
    }

    *(v12 + 96) = v61;
    *(v12 + 104) = v63;
  }

  if (xpc_dictionary_get_string(a1, "contact_id"))
  {
    v69 = sub_182AD3158();
    v71 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = *(v12 + 128);
      v122 = *(v12 + 112);
      v123 = v72;
      v124 = *(v12 + 144);
      v73 = *(v12 + 64);
      v118 = *(v12 + 48);
      v119 = v73;
      v74 = *(v12 + 96);
      v120 = *(v12 + 80);
      v121 = v74;
      v75 = *(v12 + 32);
      v116 = *(v12 + 16);
      v117 = v75;
      v76 = swift_allocObject();
      memmove((v76 + 16), (v12 + 16), 0x88uLL);
      sub_181E63A90(&v116, v115);

      v12 = v76;
    }

    *(v12 + 112) = v69;
    *(v12 + 120) = v71;
  }

  int64 = xpc_dictionary_get_int64(a1, "device_color");
  if ((int64 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v78 = int64;
  if (HIDWORD(int64))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v79 = *(v12 + 128);
    v122 = *(v12 + 112);
    v123 = v79;
    v124 = *(v12 + 144);
    v80 = *(v12 + 64);
    v118 = *(v12 + 48);
    v119 = v80;
    v81 = *(v12 + 96);
    v120 = *(v12 + 80);
    v121 = v81;
    v82 = *(v12 + 32);
    v116 = *(v12 + 16);
    v117 = v82;
    v83 = swift_allocObject();
    memmove((v83 + 16), (v12 + 16), 0x88uLL);
    sub_181E63A90(&v116, v115);

    v12 = v83;
  }

  *(v12 + 128) = v78;
  v84 = xpc_dictionary_get_int64(a1, "route");
  if ((v84 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (HIDWORD(v84))
  {
    goto LABEL_46;
  }

  if (v84 >= 4)
  {
    v85 = 3;
  }

  else
  {
    v85 = 0x2010003u >> (8 * v84);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v86 = *(v12 + 128);
    v122 = *(v12 + 112);
    v123 = v86;
    v124 = *(v12 + 144);
    v87 = *(v12 + 64);
    v118 = *(v12 + 48);
    v119 = v87;
    v88 = *(v12 + 96);
    v120 = *(v12 + 80);
    v121 = v88;
    v89 = *(v12 + 32);
    v116 = *(v12 + 16);
    v117 = v89;
    v90 = swift_allocObject();
    memmove((v90 + 16), (v12 + 16), 0x88uLL);
    sub_181E63A90(&v116, v115);

    v12 = v90;
  }

  *(v12 + 132) = v85;
  *v91 = v12;
  return result;
}

void sub_1822C1E64(void *a1@<X0>, void *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, "bonjour_name") && xpc_dictionary_get_string(a1, "bonjour_type") && xpc_dictionary_get_string(a1, "bonjour_domain"))
  {
    v4 = sub_182AD3158();
    v6 = v5;
    v7 = sub_182AD3158();
    v9 = v8;
    v11 = sub_182AD3158();

    sub_1821784FC(v4, v6, v7, v9, v11, v10, a2);
  }

  else
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v12 = sub_182AD2698();
    __swift_project_value_buffer(v12, qword_1ED411BA0);
    v13 = sub_182AD2678();
    v14 = sub_182AD38B8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_181A37000, v13, v14, "Failed to construct endpoint from dictionary", v15, 2u);
      MEMORY[0x1865DF520](v15, -1, -1);
    }

    *a2 = 0;
  }
}

double sub_1822C1FFC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, "srv_name"))
  {
    v3 = sub_182AD3158();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = v3;
    a2[3] = v5;
  }

  else
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1ED411BA0);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "Failed to construct endpoint from dictionary", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1822C2100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, "url"))
  {
    v3 = sub_182AD3158();

    return sub_182183834(v3, v4, a2);
  }

  else
  {
    if (qword_1ED40FE10 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1ED411BA0);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "Failed to construct endpoint from dictionary", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    v10 = type metadata accessor for URLEndpoint();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

uint64_t sub_1822C2260(int a1, id a2, char **a3)
{
  Class = object_getClass(a2);
  if (Class == sub_182AD26B8())
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a2);
    if (bytes_ptr)
    {
      v8 = bytes_ptr;
      length = xpc_data_get_length(a2);
      if (length >= 1)
      {
        v10 = sub_181E63D00(v8, length);
        v12 = v11;
        v13 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_181F59F7C(0, *(v13 + 2) + 1, 1, v13);
          *a3 = v13;
        }

        v15 = *(v13 + 2);
        v16 = *(v13 + 3);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v22 = v15 + 1;
          v19 = v13;
          v20 = *(v13 + 2);
          v21 = sub_181F59F7C((v16 > 1), v15 + 1, 1, v19);
          v15 = v20;
          v17 = v22;
          v13 = v21;
          *a3 = v21;
        }

        *(v13 + 2) = v17;
        v18 = &v13[16 * v15];
        *(v18 + 4) = v10;
        *(v18 + 5) = v12;
      }
    }
  }

  return 1;
}

void sub_1822C2370(uint64_t *a1, void **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_182AD3048();
  xpc_dictionary_set_string(v3, "application_service_name", (v4 + 32));

  *v10 = *(v2 + 64);
  xpc_dictionary_set_uuid(v3, "service_identifier", v10);
  xpc_dictionary_set_int64(v3, "device_color", *(v2 + 128));
  if (*(v2 + 144))
  {
    v5 = sub_182AD3048();
    xpc_dictionary_set_string(v3, "application_service_alias", (v5 + 32));
  }

  if (*(v2 + 88))
  {
    v6 = sub_182AD3048();
    xpc_dictionary_set_string(v3, "device_name", (v6 + 32));
  }

  if (*(v2 + 104))
  {
    v7 = sub_182AD3048();
    xpc_dictionary_set_string(v3, "device_model", (v7 + 32));
  }

  v8 = *(v2 + 132);
  if (v8 != 3)
  {
    xpc_dictionary_set_int64(v3, "route", v8 + 1);
  }

  if (*(v2 + 120))
  {
    v9 = sub_182AD3048();
    xpc_dictionary_set_string(v3, "contact_id", (v9 + 32));
  }
}

void sub_1822C2508(uint64_t a1, unint64_t a2, xpc_object_t *a3)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v5 = *a3;
      v4 = 0;
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
LABEL_7:
    sub_1822C2650(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    return;
  }

  if (v3)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  BYTE4(bytes[1]) = BYTE4(a2);
  v4 = BYTE6(a2);
  BYTE5(bytes[1]) = BYTE5(a2);
  v5 = *a3;
LABEL_9:
  xpc_dictionary_set_data(v5, "txt_record", bytes, v4);
}

void sub_1822C2650(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v7 = sub_182AD1D58();
  if (v7)
  {
    v8 = sub_182AD1D88();
    if (__OFSUB__(a1, v8))
    {
LABEL_12:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_182AD1D78();
  if (v7)
  {
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    xpc_dictionary_set_data(*a4, "txt_record", v7, v12);
  }
}

uint64_t sub_1822C26E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1822C275C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 24);
  if (v4)
  {
    v12 = MEMORY[0x1E69E7CC0];

    sub_182AD3D38();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (v5 < *(v3 + 24))
      {
        ++v5;
        swift_unknownObjectRetain();
        sub_182AD3D08();
        sub_182AD3D48();
        sub_182AD3D58();
        sub_182AD3D18();
        if (v4 == v5)
        {
          v6 = v12;
          v7 = *(v12 + 16);
          if (v7)
          {
            goto LABEL_7;
          }

LABEL_11:
          v8 = *sub_182AD2388();

          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386B8);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  v10 = v9 - 40;
  if (v9 < 40)
  {
    v10 = v9 - 33;
  }

  v8[2] = v10 >> 3;
  v8[3] = 0;
  v8[4] = 0;
  sub_181E0D8E0((v8 + 2), (v8 + 5), v7, v6);
LABEL_12:

  return v8;
}

uint64_t sub_1822C2958(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((sub_1822C3DC0(*a2, *a1) & 1) == 0 || (sub_1822C3DC0(v7, v2) & 1) == 0 || v3 != v8 || v4 != v9 || v6 != v11)
  {
    return 0;
  }

  return sub_18208108C(v5, v10);
}

void StatelessResetToken.init()(void *a1@<X8>)
{
  v2 = 16;
  v3 = sub_182AD3428();
  v3[2] = 16;
  v3[4] = 0;
  v3[5] = 0;

  v9 = MEMORY[0x1E69E7CC0];
  sub_181FB7730(0, 16, 0);
  v4 = v9;
  do
  {
    v8 = 0;
    arc4random_buf(&v8, 8uLL);
    v5 = v8;
    v9 = v4;
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_181FB7730((v6 > 1), v7 + 1, 1);
      v4 = v9;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + v7 + 32) = v5;
    --v2;
  }

  while (v2);
  *a1 = v4;
}

void StatelessResetToken.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_182AD3428();
  v4[2] = 16;
  v4[4] = 0;
  v4[5] = 0;
  if (a1[2] == 16)
  {
  }

  else
  {
    v5 = v4;

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);
    v7 = sub_182AD2678();
    v8 = sub_182AD38C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v14);
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_181C64FFC(0xD00000000000001DLL, 0x8000000182BE4B40, &v14);
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    a1 = v5;
  }

  *a2 = a1;
}

void __swiftcall StatelessResetToken.toC()(Swift::tuple_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8_UInt8 *__return_ptr retstr)
{
  v2 = *(*v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v2 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v2 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v2 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v2 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v2 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2 < 9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2 == 9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v2 < 0xB)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v2 == 11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v2 < 0xD)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v2 == 13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v2 < 0xF)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v2 == 15)
  {
LABEL_33:
    __break(1u);
  }
}

uint64_t StatelessResetToken.description.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    sub_1821DE584();
    do
    {
      ++v2;
      v3 = sub_182AD3218();
      v5 = v4;
      if (sub_182AD30F8() == 1)
      {
        MEMORY[0x1865D9CA0](v3, v5);

        v3 = 48;
        v5 = 0xE100000000000000;
      }

      MEMORY[0x1865D9CA0](v3, v5);

      --v1;
    }

    while (v1);
  }

  return 0;
}

void static StatelessResetToken.fromC(legacyStatelessResetToken:)(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_182AD3428();
    *(v5 + 16) = 16;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 32) = *a1;
    *(v5 + 33) = a1[1];
    *(v5 + 34) = a1[2];
    *(v5 + 35) = a1[3];
    *(v5 + 36) = a1[4];
    *(v5 + 37) = a1[5];
    *(v5 + 38) = a1[6];
    *(v5 + 39) = a1[7];
    *(v5 + 40) = a1[8];
    *(v5 + 41) = a1[9];
    *(v5 + 42) = a1[10];
    *(v5 + 43) = a1[11];
    *(v5 + 44) = a1[12];
    *(v5 + 45) = a1[13];
    *(v5 + 46) = a1[14];
    *(v5 + 47) = a1[15];
    a2 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  StatelessResetToken.init(_:)(v5, a2);
}

void sub_1822C3068(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 > 20 || *(a1 + 16) < a2)
  {

    sub_182AD3BA8();

    v18[0] = 0xD00000000000001CLL;
    v18[1] = 0x8000000182BE4B60;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD38C8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18[0] = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, v18);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v18);
      *(v8 + 22) = 2080;
      v13 = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BE4B60, v18);

      *(v8 + 24) = v13;
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    else
    {
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *a3 = v14;
    return;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v15 = (2 * a2) | 1;
    v17 = sub_1822D0CE4(a1, a1 + 32, 0, v15);
    if (!v17)
    {
      sub_1822D0918(a1, a1 + 32, 0, v15);
    }

    v14 = v17;

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1822C3318(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 >= 21)
  {
    sub_182AD3BA8();

    v19[0] = 0xD00000000000001CLL;
    v19[1] = 0x8000000182BE4B60;
    __buf = a1;
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843418);

    v11 = sub_182AD2678();
    v12 = sub_182AD38C8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315650;
      v15 = sub_182AD3BF8();
      v17 = sub_181C64FFC(v15, v16, v19);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v19);
      *(v13 + 22) = 2080;
      v18 = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BE4B60, v19);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v14, -1, -1);
      MEMORY[0x1865DF520](v13, -1, -1);
    }

    else
    {
    }

    v3 = 20;
  }

  else
  {
    if (a1 <= 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = a1;
    }

    if (!a1)
    {
      v4 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }
  }

  v19[0] = MEMORY[0x1E69E7CC0];
  sub_181FB7730(0, v3, 0);
  v4 = v19[0];
  do
  {
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    v5 = __buf;
    v19[0] = v4;
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_181FB7730((v6 > 1), v7 + 1, 1);
      v4 = v19[0];
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + v7 + 32) = v5;
    --v3;
  }

  while (v3);
LABEL_12:
  *a2 = v4;
}

uint64_t sub_1822C3618(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v5 = v4;
  v8 = *a2;
  v9 = *a3;
  v10 = *(v4 + 4);
  if (v10)
  {
    if (sub_1822C3DC0(v10, *a2))
    {
      v11 = *(v4 + 4);
      if (v11)
      {
        sub_18206A1F0(*(v4 + 3), v11);
        *(v4 + 3) = 0;
        *(v4 + 4) = 0;
        *(v4 + 48) = 0;
        *(v4 + 5) = 0;
      }
    }
  }

  v12 = v4[1];
  v49[0] = *v4;
  v49[1] = v12;
  v13 = v4[3];
  v15 = *v4;
  v14 = v4[1];
  v49[2] = v4[2];
  v49[3] = v13;
  v43 = v15;
  v44 = v14;
  v16 = v4[3];
  v45 = v4[2];
  v46 = v16;
  sub_1822C5718(a1, &v47);
  v50[0] = v43;
  v50[1] = v44;
  v50[2] = v45;
  v50[3] = v46;
  sub_18206AE38(v49, v42);
  sub_18206AE94(v50);
  v17 = v48;
  if (v48)
  {
    v18 = v47;
LABEL_9:
    sub_18206A1F0(v18, v17);
    return 0;
  }

  v19 = v4[1];
  v42[0] = *v4;
  v42[1] = v19;
  v20 = v4[3];
  v22 = *v4;
  v21 = v4[1];
  v42[2] = v4[2];
  v42[3] = v20;
  v36 = v22;
  v37 = v21;
  v23 = v4[3];
  v38 = v4[2];
  v39 = v23;
  v35 = v8;
  sub_1822C38F8(&v35, &v40);
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  sub_18206AE38(v42, v34);
  sub_18206AE94(&v43);
  v17 = v41;
  if (v41)
  {
    v18 = v40;
    goto LABEL_9;
  }

  v25 = a4 & 1;
  v26 = *&v42[0];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_181F59E18(0, *(v26 + 2) + 1, 1, v26);
  }

  v27 = *(v26 + 2);
  v28 = *(v26 + 3);
  v29 = v27 + 1;
  if (v27 >= v28 >> 1)
  {
    v31 = v26;
    v32 = *(v26 + 2);
    v33 = sub_181F59E18((v28 > 1), v27 + 1, 1, v31);
    v27 = v32;
    v26 = v33;
  }

  *(v26 + 2) = v29;
  v30 = &v26[32 * v27];
  *(v30 + 4) = a1;
  *(v30 + 5) = v8;
  *(v30 + 6) = v9;
  v30[56] = v25;
  *v5 = v26;
  return 1;
}

uint64_t sub_1822C3820(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(*v3 + 16) || (*(v3 + 17) & 1) != 0)
  {
    v9 = xmmword_182AE8BA0;
    v10 = 0x80;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 4;
  }

  else
  {
    v5 = *a2;

    StatelessResetToken.init()(&v9);
    v8 = v9;
    sub_18206A1F0(*(v3 + 24), *(v3 + 32));
    *(v3 + 24) = a1;
    *(v3 + 32) = v5;
    *(v3 + 40) = v8;
    *(v3 + 48) = a3 & 1;
    result = 1;
    *(v3 + 17) = 1;
  }

  return result;
}

uint64_t sub_1822C38F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  v6 = v2[4];
  if (v6 && (v7 = v2[3], v8 = v2[5], v9 = *(v2 + 48), result = sub_1822C3DC0(v2[4], v4), (result & 1) != 0))
  {
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;

    return sub_1822C5960(v7, v6);
  }

  else
  {
    v10 = (v5 + 56);
    v11 = -*(v5 + 16);
    v12 = -1;
    do
    {
      if (v11 + v12 == -1)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 24) = 0;
        *(a2 + 16) = 0;
        return result;
      }

      if (++v12 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = v10 + 32;
      v15 = *(v10 - 3);
      v14 = *(v10 - 2);
      v16 = *(v10 - 1);
      v17 = *v10;
      result = sub_1822C3DC0(v4, v14);
      v10 = v13;
    }

    while ((result & 1) == 0);
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
  }
}

uint64_t sub_1822C3A50@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16) >= 0x15uLL)
  {

    sub_182AD3BA8();

    v13[0] = 0xD00000000000001CLL;
    v13[1] = 0x8000000182BE4B60;
    v3 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v3);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843418);

    v5 = sub_182AD2678();
    v6 = sub_182AD38C8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v7 = 136315650;
      v9 = sub_182AD3BF8();
      v11 = sub_181C64FFC(v9, v10, v13);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v13);
      *(v7 + 22) = 2080;
      v12 = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BE4B60, v13);

      *(v7 + 24) = v12;
      _os_log_impl(&dword_181A37000, v5, v6, "%s %s %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v8, -1, -1);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    else
    {
    }

    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

uint64_t ConnectionID.description.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    sub_1821DE584();
    do
    {
      ++v2;
      v3 = sub_182AD3218();
      v5 = v4;
      if (sub_182AD30F8() == 1)
      {
        MEMORY[0x1865D9CA0](v3, v5);

        v3 = 48;
        v5 = 0xE100000000000000;
      }

      MEMORY[0x1865D9CA0](v3, v5);

      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t sub_1822C3DC0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    if (v3 == v4)
    {
      v7 = 0;
      v8 = *(a2 + 16);
      goto LABEL_7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v7 = *(a2 + 32 + v3);
LABEL_7:
    result = v2 == v5;
    if (v2 == v5)
    {
      v9 = 0;
      v10 = v5;
      if (v3 == v4)
      {
        return result;
      }
    }

    else
    {
      if (v2 >= v5)
      {
        goto LABEL_17;
      }

      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_19;
      }

      v9 = *(v6 + v2);
      if (v3 == v4)
      {
        return result;
      }
    }

    result = 0;
    if (v2 != v5)
    {
      v2 = v10;
      v3 = v8;
      if (v7 == v9)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1822C3E68(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2[4];
  v3 = a2[3] + v2;
  if (a2[2] < v3)
  {
    v3 = a2[2];
  }

  v18 = a2;
  v19 = v2;
  v20 = v3;
  v4 = a1[4];
  v5 = a1[3] + v4;
  if (a1[2] < v5)
  {
    v5 = a1[2];
  }

  v15 = a1;
  v16 = v4;
  v17 = v5;

  while (1)
  {
    v7 = v19;
    if (v19 != v20)
    {
      goto LABEL_9;
    }

    v6 = sub_181AC81FC(v6);
    if (v6)
    {
      v7 = v19;
LABEL_9:
      v8 = 0;
      v19 = v7 + 1;
      v9 = *&v18[2 * v7 + 5];
      goto LABEL_11;
    }

    v9 = 0uLL;
    v8 = 1;
LABEL_11:
    if (v4 != v17)
    {
      goto LABEL_14;
    }

    v12 = v9;
    if ((sub_181AC81FC(v6) & 1) == 0)
    {
      break;
    }

    v4 = v16;
    v9 = v12;
LABEL_14:
    v16 = v4 + 1;
    if (v8)
    {
      v10 = 0;
LABEL_20:

      goto LABEL_22;
    }

    *uu2 = *&v15[2 * v4 + 5];
    *uu1 = v9;
    v6 = uuid_compare(uu1, uu2);
    ++v4;
    if (v6)
    {
      goto LABEL_21;
    }
  }

  if (v8)
  {
    v10 = 1;
    goto LABEL_20;
  }

LABEL_21:

  v10 = 0;
LABEL_22:

  return v10;
}

uint64_t sub_1822C3FDC(void *a1, void *a2)
{
  v2 = a1;
  v3 = a2[4];
  if (a2[2] >= a2[3] + v3)
  {
    v4 = a2[3] + v3;
  }

  else
  {
    v4 = a2[2];
  }

  v30 = a2[4];
  v31 = v4;
  v5 = a1[4];
  v6 = a1[3] + v5;
  if (a1[2] < v6)
  {
    v6 = a1[2];
  }

  v27 = a1[4];
  v28 = v6;

  if (v3 == v4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v30 = v3 + 1;
  v9 = &a2[4 * v3];
  v10 = v9[5];
  v11 = v9[6];
  v12 = v9[7];
  v13 = v9[8];
  sub_181AA5C1C(v10, v11);
  v8 = sub_181ADC1E0(v12, v13);
  while (1)
  {
    if (v5 != v28)
    {
      goto LABEL_14;
    }

    v2 = a1;
    if ((sub_181AC81FC(v8) & 1) == 0)
    {
      break;
    }

    v5 = v27;
LABEL_14:
    v14 = v5 + 1;
    v27 = v5 + 1;
    v15 = &v2[4 * v5];
    v17 = v15[5];
    v16 = v15[6];
    v18 = v15[7];
    v19 = v15[8];
    sub_181AA5C1C(v17, v16);
    sub_181ADC1E0(v18, v19);
    if (v11 == 6)
    {
      goto LABEL_81;
    }

    if (v16 == 6)
    {
      goto LABEL_83;
    }

    if (v11 <= 2)
    {
      switch(v11)
      {
        case 0:
          if (v16)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = 0;
            goto LABEL_87;
          }

          goto LABEL_39;
        case 1:
          if (v16 != 1)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = 1;
            goto LABEL_87;
          }

          goto LABEL_39;
        case 2:
          if (v16 != 2)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = 2;
            goto LABEL_87;
          }

          goto LABEL_39;
      }

      goto LABEL_31;
    }

    if (v11 == 3)
    {
      if (v16 != 3)
      {
        sub_1822C59A4(v17, v16, v18, v19);
        v21 = v10;
        v22 = 3;
        goto LABEL_87;
      }

      goto LABEL_39;
    }

    if (v11 != 4)
    {
      if (v11 == 5)
      {
        if (v16 != 5)
        {
          sub_1822C59A4(v17, v16, v18, v19);
          v21 = v10;
          v22 = 5;
          goto LABEL_87;
        }

        goto LABEL_39;
      }

LABEL_31:
      if (v16 < 6 || (v10 != v17 || v11 != v16) && (sub_182AD4268() & 1) == 0)
      {
LABEL_85:
        sub_1822C59A4(v17, v16, v18, v19);
        v21 = v10;
        v22 = v11;
        goto LABEL_87;
      }

      goto LABEL_39;
    }

    if (v16 != 4)
    {
      sub_1822C59A4(v17, v16, v18, v19);
      v21 = v10;
      v22 = 4;
LABEL_87:
      v23 = v12;
      v24 = v13;
LABEL_88:
      sub_1822C59A4(v21, v22, v23, v24);
LABEL_89:

      return 0;
    }

LABEL_39:
    if (v13 > 4)
    {
      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          if (v19 != 5)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 5;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 5uLL);
          v13 = 5;
        }

        else
        {
          if (v19 != 6)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 6;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 6uLL);
          v13 = 6;
        }

        goto LABEL_74;
      }

      switch(v13)
      {
        case 7:
          if (v19 != 7)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 7;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 7uLL);
          v13 = 7;
          goto LABEL_74;
        case 8:
          if (v19 != 8)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 8;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 8uLL);
          v13 = 8;
          goto LABEL_74;
        case 9:
          if (v19 != 9)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 9;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 9uLL);
          v13 = 9;
          goto LABEL_74;
      }
    }

    else
    {
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          if (v19 != 2)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 2;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 2uLL);
          v13 = 2;
        }

        else if (v13 == 3)
        {
          if (v19 != 3)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 3;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 3uLL);
          v13 = 3;
        }

        else
        {
          if (v19 != 4)
          {
            sub_1822C59A4(v17, v16, v18, v19);
            v21 = v10;
            v22 = v11;
            v23 = v12;
            v24 = 4;
            goto LABEL_88;
          }

          sub_1822C59A4(v17, v16, v18, 4uLL);
          v13 = 4;
        }

        goto LABEL_74;
      }

      if (!v13)
      {
        if (v19)
        {
          sub_1822C59A4(v17, v16, v18, v19);
          v21 = v10;
          v22 = v11;
          v23 = v12;
          v24 = 0;
          goto LABEL_88;
        }

        sub_1822C59A4(v17, v16, v18, 0);
        v13 = 0;
        goto LABEL_74;
      }

      if (v13 == 1)
      {
        if (v19 != 1)
        {
          sub_1822C59A4(v17, v16, v18, v19);
          v21 = v10;
          v22 = v11;
          v23 = v12;
          v24 = 1;
          goto LABEL_88;
        }

        sub_1822C59A4(v17, v16, v18, 1uLL);
        v13 = 1;
        goto LABEL_74;
      }
    }

    if (v19 < 0xA)
    {
      goto LABEL_85;
    }

    if (v12 == v18 && v13 == v19)
    {
      sub_1822C59A4(v17, v16, v12, v13);
LABEL_74:
      v7 = sub_1822C59A4(v10, v11, v12, v13);
      goto LABEL_75;
    }

    v25 = sub_182AD4268();
    sub_1822C59A4(v17, v16, v18, v19);
    v7 = sub_1822C59A4(v10, v11, v12, v13);
    if ((v25 & 1) == 0)
    {
      goto LABEL_89;
    }

LABEL_75:
    v3 = v30;
    v5 = v14;
    if (v30 != v31)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = sub_181AC81FC(v7);
    if (v8)
    {
      v3 = v30;
      goto LABEL_9;
    }

    v10 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 6;
  }

  if (v11 != 6)
  {
LABEL_83:

    sub_1822C59A4(v10, v11, v12, v13);
    return 0;
  }

  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 6;
LABEL_81:

  if (v16 == 6)
  {
    return 1;
  }

  sub_1822C59A4(v17, v16, v18, v19);
  return 0;
}

uint64_t sub_1822C46C8(void *a1, void *a2)
{
  v2 = a1;
  v3 = a2[4];
  if (a2[2] >= a2[3] + v3)
  {
    v4 = a2[3] + v3;
  }

  else
  {
    v4 = a2[2];
  }

  v23 = a2[4];
  v24 = v4;
  v5 = a1[4];
  v6 = a1[3] + v5;
  if (a1[2] < v6)
  {
    v6 = a1[2];
  }

  v20 = a1[4];
  v21 = v6;

  if (v3 == v4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v23 = v3 + 1;
  v9 = a2[v3 + 5];

  while (1)
  {
    if (v5 != v21)
    {
      goto LABEL_14;
    }

    v2 = a1;
    if ((sub_181AC81FC(v8) & 1) == 0)
    {
      break;
    }

    v5 = v20;
LABEL_14:
    v20 = v5 + 1;
    v10 = v2[v5 + 5];

    if (!v9)
    {
      goto LABEL_48;
    }

    if (!v10)
    {
      goto LABEL_46;
    }

    v11 = *(v9 + 40) == *(v10 + 40) && *(v9 + 48) == *(v10 + 48);
    if (!v11 && (sub_182AD4268() & 1) == 0 || *(v9 + 16) != *(v10 + 16))
    {
LABEL_44:

      goto LABEL_49;
    }

    v12 = *(v10 + 184);
    if (v12 <= 1)
    {
      if (!*(v10 + 184))
      {
        goto LABEL_34;
      }

      v13 = 2;
      if (!*(v9 + 184))
      {
        goto LABEL_34;
      }
    }

    else if (v12 == 2)
    {
      v13 = 3;
      if (!*(v9 + 184))
      {
        goto LABEL_34;
      }
    }

    else if (v12 == 3)
    {
      v13 = 4;
      if (!*(v9 + 184))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 1;
      if (!*(v9 + 184))
      {
        goto LABEL_34;
      }
    }

    if (qword_182B07CD0[*(v9 + 184)] != v13)
    {
      goto LABEL_44;
    }

LABEL_34:
    v14 = *(v9 + 185);
    v15 = *(v10 + 185);
    if (qword_182B07CA8[v14] != qword_182B07CA8[v15] && v14 != 0 && v15 != 0)
    {
      goto LABEL_44;
    }

    v3 = v23;
    ++v5;
    if (v23 != v24)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = sub_181AC81FC(v7);
    if (v8)
    {
      v3 = v23;
      goto LABEL_9;
    }

    v9 = 0;
  }

  if (v9)
  {
LABEL_46:

    goto LABEL_49;
  }

  v10 = 0;
LABEL_48:

  if (v10)
  {
LABEL_49:

    return 0;
  }

  return 1;
}

BOOL sub_1822C492C(uint64_t a1, void *a2)
{
  v2 = a2[3] + a2[4];
  if (a2[2] < v2)
  {
    v2 = a2[2];
  }

  v15 = a2[4];
  v16 = v2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 24) + v3;
  if (*(a1 + 16) < v4)
  {
    v4 = *(a1 + 16);
  }

  v11 = a1;
  v12 = *(a1 + 32);
  v13 = v4;
  v5 = a1;
  while (1)
  {
    v6 = v15;
    if (v15 != v16)
    {
      goto LABEL_9;
    }

    a1 = sub_181AC81FC(a1);
    if (a1)
    {
      v6 = v15;
LABEL_9:
      v15 = v6 + 1;
      v7 = *(a2 + v6 + 40);
      goto LABEL_11;
    }

    v7 = 5;
LABEL_11:
    if (v3 == v13)
    {
      break;
    }

LABEL_14:
    v12 = v3 + 1;
    v8 = *(v5 + v3 + 40);
    v9 = v8 == 5;
    if (v7 == 5)
    {
      goto LABEL_20;
    }

    if (v8 != 5)
    {
      ++v3;
      if (qword_182B07CA8[v7] == qword_182B07CA8[v8])
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  a1 = sub_181AC81FC(a1);
  v5 = v11;
  if (a1)
  {
    v3 = v12;
    goto LABEL_14;
  }

  if (v7 == 5)
  {
    v9 = 1;
LABEL_20:

    goto LABEL_22;
  }

LABEL_21:

  v9 = 0;
LABEL_22:

  return v9;
}

uint64_t sub_1822C4AA0(void *a1, void *a2)
{
  v2 = a2[4];
  if (a2[2] >= a2[3] + v2)
  {
    v3 = a2[3] + v2;
  }

  else
  {
    v3 = a2[2];
  }

  v75 = a2;
  v76 = v2;
  v77 = v3;
  v4 = a1[4];
  v5 = a1[3] + v4;
  if (a1[2] < v5)
  {
    v5 = a1[2];
  }

  v72 = a1;
  v73 = v4;
  v74 = v5;

  while (1)
  {
    if (v2 != v3)
    {
      goto LABEL_10;
    }

    v7 = sub_181AC81FC(v6);
    if (v7)
    {
      v2 = v76;
LABEL_10:
      v76 = v2 + 1;
      v8 = &v75[7 * v2];
      v9 = *(v8 + 44);
      v10 = *(v8 + 9);
      v11 = *(v8 + 7);
      v68 = *(v8 + 5);
      v69 = v11;
      v70 = v10;
      v71 = v9;
      v12 = *(&v68 + 1);
      v62 = *(&v11 + 1);
      v13 = v11;
      v65 = v68;
      v64 = *(&v10 + 1);
      v66 = v10;
      v7 = sub_181B29D44(&v68, v67);
      goto LABEL_12;
    }

    v65 = 0;
    v66 = 0;
    v12 = 0;
    v13 = 0;
    v62 = 0;
    v64 = 0;
    v9 = 0;
LABEL_12:
    v14 = v73;
    if (v73 != v74)
    {
      goto LABEL_15;
    }

    if ((sub_181AC81FC(v7) & 1) == 0)
    {
      break;
    }

    v14 = v73;
LABEL_15:
    v73 = v14 + 1;
    v15 = &v72[7 * v14];
    v16 = *(v15 + 44);
    v17 = *(v15 + 9);
    v18 = *(v15 + 7);
    v68 = *(v15 + 5);
    v69 = v18;
    v70 = v17;
    v71 = v16;
    v61 = *(&v68 + 1);
    v63 = v68;
    v20 = *(&v18 + 1);
    v19 = v18;
    v22 = *(&v17 + 1);
    v21 = v17;
    sub_181B29D44(&v68, v67);
    if (!v66)
    {
      goto LABEL_71;
    }

    v60 = v21;
    if (!v21)
    {
      goto LABEL_66;
    }

    if (v65)
    {
      v23 = v20;
      if (!v63)
      {
        sub_1822C6360(0, v61, v19, v20, v60);
        v40 = v65;
        v42 = v12;
        v43 = v13;
        goto LABEL_60;
      }

      LOBYTE(v68) = 0;
      v24 = sub_181C59BE4(v63, &v68);
      v25 = v13;
      v26 = v61;
      if ((v24 & 1) == 0)
      {
        v46 = v63;
        v47 = v19;
        goto LABEL_56;
      }
    }

    else
    {
      v23 = v20;
      v25 = v13;
      v26 = v61;
      if (v63)
      {
        sub_1822C6360(v63, v61, v19, v23, v60);
        v40 = 0;
LABEL_57:
        v42 = v12;
        v43 = v25;
        goto LABEL_60;
      }
    }

    if ((v12 & 0x100000000) != 0)
    {
      if ((v26 & 0x100000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((v26 & 0x100000000) != 0 || v12 != v26)
    {
LABEL_55:
      v46 = v63;
      v47 = v19;
      goto LABEL_56;
    }

    v27 = v26 & 0xFF0000000000;
    if ((v12 & 0xFF0000000000) == 0x60000000000)
    {
      if (v27 != 0x60000000000)
      {
        goto LABEL_55;
      }
    }

    else if (v27 == 0x60000000000 || (0x656403020100uLL >> ((v12 >> 37) & 0xF8)) != (0x656403020100uLL >> ((v26 >> 37) & 0xF8)))
    {
      goto LABEL_55;
    }

    if (((v26 ^ v12) & 0xFF000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v25)
    {
      if (!v19)
      {
        v46 = v63;
        v47 = 0;
LABEL_56:
        sub_1822C6360(v46, v26, v47, v23, v60);
        v40 = v65;
        goto LABEL_57;
      }

      type metadata accessor for Endpoint(0);
      v58 = v22;
      v28 = v12;
      v29 = v19;
      v30 = v25;
      v31 = v9;
      v32 = v25;
      v33 = sub_182AD3978();

      v12 = v28;
      v22 = v58;

      v9 = v31;
      if ((v33 & 1) == 0)
      {
        v53 = v63;
        v55 = v60;
        v54 = v61;
        v56 = v19;
        v57 = v23;
        goto LABEL_59;
      }
    }

    else
    {
      v30 = 0;
      if (v19)
      {
        sub_1822C6360(v63, v61, v19, v23, v60);
        v40 = v65;
        v42 = v12;
        v43 = 0;
        goto LABEL_60;
      }
    }

    v34 = v60;
    if (v23 != v62 || (sub_182081178(v66, v60) & 1) == 0 || (v35 = *(v64 + 16), v35 != *(v22 + 16)))
    {
      v53 = v63;
      v54 = v61;
      v56 = v19;
      v57 = v23;
      v55 = v60;
LABEL_59:
      sub_1822C6360(v53, v54, v56, v57, v55);
      v40 = v65;
      v42 = v12;
      v43 = v30;
LABEL_60:
      v44 = v62;
      v41 = v66;
LABEL_61:
      sub_1822C6360(v40, v42, v43, v44, v41);
LABEL_62:

      return 0;
    }

    if (v35 && v64 != v22)
    {
      v36 = v12;
      v59 = v9;
      v37 = (v64 + 40);
      v38 = (v22 + 40);
      do
      {
        v39 = *(v37 - 1) == *(v38 - 1) && *v37 == *v38;
        if (!v39 && (sub_182AD4268() & 1) == 0)
        {
          sub_1822C6360(v63, v61, v19, v23, v60);
          v40 = v65;
          v41 = v66;
          v42 = v36;
          v43 = v30;
          v44 = v62;
          goto LABEL_61;
        }

        v37 += 2;
        v38 += 2;
        --v35;
      }

      while (v35);
      v9 = v59;
      v12 = v36;
      v34 = v60;
    }

    sub_1822C6360(v63, v61, v19, v23, v34);
    sub_1822C6360(v65, v12, v30, v62, v66);
    if (v9 != v16)
    {
      goto LABEL_62;
    }

    v2 = v76;
    v3 = v77;
  }

  if (v66)
  {
LABEL_66:

    v48 = v65;
    v49 = v66;
    v50 = v12;
    v51 = v13;
    v52 = v62;
LABEL_73:
    sub_1822C6360(v48, v50, v51, v52, v49);
    return 0;
  }

  v21 = 0;
  v20 = 0;
  v19 = 0;
  v61 = 0;
  v63 = 0;
LABEL_71:

  if (v21)
  {
    v48 = v63;
    v50 = v61;
    v51 = v19;
    v52 = v20;
    v49 = v21;
    goto LABEL_73;
  }

  return 1;
}

uint64_t sub_1822C5050(void *a1, void *a2)
{
  v2 = a2[4];
  if (a2[2] >= a2[3] + v2)
  {
    v3 = a2[3] + v2;
  }

  else
  {
    v3 = a2[2];
  }

  v146 = a2;
  v147 = v2;
  v148 = v3;
  v4 = a1[4];
  v5 = a1[3] + v4;
  if (a1[2] < v5)
  {
    v5 = a1[2];
  }

  v143 = a1;
  v144 = v4;
  v145 = v5;

  if (v2 == v3)
  {
    goto LABEL_7;
  }

LABEL_9:
  v147 = v2 + 1;
  v7 = &v146[26 * v2];
  v119 = *(v7 + 5);
  v8 = *(v7 + 9);
  v9 = *(v7 + 11);
  v10 = *(v7 + 7);
  v123 = *(v7 + 13);
  v122 = v9;
  v120 = v10;
  v121 = v8;
  v11 = *(v7 + 17);
  v12 = *(v7 + 19);
  v13 = *(v7 + 15);
  v127 = *(v7 + 21);
  v126 = v12;
  v124 = v13;
  v125 = v11;
  v14 = *(v7 + 25);
  v15 = *(v7 + 27);
  v16 = *(v7 + 23);
  *(v130 + 10) = *(v7 + 226);
  v130[0] = v15;
  v128 = v16;
  v129 = v14;
  memmove(&__dst, v7 + 5, 0xCAuLL);
  nullsub_41(&__dst);
  v17 = sub_181AFE6F4(&v119, &v107);
  v141 = v81;
  v142[0] = v82[0];
  *(v142 + 10) = *(v82 + 10);
  v137 = v77;
  v138 = v78;
  v140 = v80;
  v139 = v79;
  v133 = v73;
  v134 = v74;
  v136 = v76;
  v135 = v75;
  v132 = v72;
  for (i = __dst; ; sub_1822C631C(&i))
  {
    v18 = v144;
    if (v144 != v145)
    {
      goto LABEL_14;
    }

    if (sub_181AC81FC(v17))
    {
      v18 = v144;
LABEL_14:
      v144 = v18 + 1;
      v19 = &v143[26 * v18];
      v107 = *(v19 + 5);
      v20 = *(v19 + 9);
      v21 = *(v19 + 11);
      v22 = *(v19 + 7);
      v111 = *(v19 + 13);
      v110 = v21;
      v108 = v22;
      v109 = v20;
      v23 = *(v19 + 17);
      v24 = *(v19 + 19);
      v25 = *(v19 + 15);
      v115 = *(v19 + 21);
      v114 = v24;
      v112 = v25;
      v113 = v23;
      v26 = *(v19 + 25);
      v27 = *(v19 + 27);
      v28 = *(v19 + 23);
      *(v118 + 10) = *(v19 + 226);
      v118[0] = v27;
      v116 = v28;
      v117 = v26;
      memmove(&__dst, v19 + 5, 0xCAuLL);
      nullsub_41(&__dst);
      sub_181AFE6F4(&v107, &v95);
      v129 = v81;
      v130[0] = v82[0];
      *(v130 + 10) = *(v82 + 10);
      v125 = v77;
      v126 = v78;
      v128 = v80;
      v127 = v79;
      v121 = v73;
      v122 = v74;
      v124 = v76;
      v123 = v75;
      v120 = v72;
      v119 = __dst;
      goto LABEL_16;
    }

    sub_1822C631C(&v119);
LABEL_16:
    v81 = v141;
    v82[0] = v142[0];
    *(v82 + 10) = *(v142 + 10);
    v77 = v137;
    v78 = v138;
    v79 = v139;
    v80 = v140;
    v73 = v133;
    v74 = v134;
    v75 = v135;
    v76 = v136;
    __dst = i;
    v72 = v132;
    v93 = v129;
    v94[0] = v130[0];
    *(v94 + 10) = *(v130 + 10);
    v89 = v125;
    v90 = v126;
    v91 = v127;
    v92 = v128;
    v85 = v121;
    v86 = v122;
    v87 = v123;
    v88 = v124;
    v83 = v119;
    v84 = v120;
    v117 = v141;
    v118[0] = v142[0];
    *(v118 + 10) = *(v142 + 10);
    v113 = v137;
    v114 = v138;
    v116 = v140;
    v115 = v139;
    v109 = v133;
    v110 = v134;
    v112 = v136;
    v111 = v135;
    v108 = v132;
    v107 = i;
    if (sub_1822C6290(&v107) == 1)
    {

      v105 = v93;
      v106[0] = v94[0];
      *(v106 + 10) = *(v94 + 10);
      v101 = v89;
      v102 = v90;
      v104 = v92;
      v103 = v91;
      v97 = v85;
      v98 = v86;
      v100 = v88;
      v99 = v87;
      v96 = v84;
      v95 = v83;
      result = sub_1822C6290(&v95);
      if (result == 1)
      {
        return result;
      }

      v69 = v93;
      v70[0] = v94[0];
      *(v70 + 10) = *(v94 + 10);
      v65 = v89;
      v66 = v90;
      v67 = v91;
      v68 = v92;
      v61 = v85;
      v62 = v86;
      v63 = v87;
      v64 = v88;
      v32 = v83;
      v31 = v84;
      goto LABEL_24;
    }

    v105 = v93;
    v106[0] = v94[0];
    *(v106 + 10) = *(v94 + 10);
    v101 = v89;
    v102 = v90;
    v104 = v92;
    v103 = v91;
    v97 = v85;
    v98 = v86;
    v100 = v88;
    v99 = v87;
    v96 = v84;
    v95 = v83;
    if (sub_1822C6290(&v95) == 1)
    {

      v69 = v81;
      v70[0] = v82[0];
      *(v70 + 10) = *(v82 + 10);
      v65 = v77;
      v66 = v78;
      v67 = v79;
      v68 = v80;
      v61 = v73;
      v62 = v74;
      v63 = v75;
      v64 = v76;
      v32 = __dst;
      v31 = v72;
LABEL_24:
      v59 = v32;
      v60 = v31;
      sub_1822C62B4(&v59);
      return 0;
    }

    v55 = v81;
    v56[0] = v82[0];
    *(v56 + 10) = *(v82 + 10);
    v51 = v77;
    v52 = v78;
    v53 = v79;
    v54 = v80;
    v47 = v73;
    v48 = v74;
    v49 = v75;
    v50 = v76;
    v45 = __dst;
    v46 = v72;
    v43 = v93;
    v44[0] = v94[0];
    *(v44 + 10) = *(v94 + 10);
    v39 = v89;
    v40 = v90;
    v41 = v91;
    v42 = v92;
    v35 = v85;
    v36 = v86;
    v37 = v87;
    v38 = v88;
    v33 = v83;
    v34 = v84;
    v29 = _s7Network8PathFlowV2eeoiySbAC_ACtFZ_0(&v45, &v33);
    v57[10] = v43;
    v58[0] = v44[0];
    *(v58 + 10) = *(v44 + 10);
    v57[6] = v39;
    v57[7] = v40;
    v57[8] = v41;
    v57[9] = v42;
    v57[2] = v35;
    v57[3] = v36;
    v57[4] = v37;
    v57[5] = v38;
    v57[0] = v33;
    v57[1] = v34;
    sub_181AFE6A0(v57);
    v69 = v55;
    v70[0] = v56[0];
    *(v70 + 10) = *(v56 + 10);
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = v54;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v64 = v50;
    v59 = v45;
    v60 = v46;
    v6 = sub_181AFE6A0(&v59);
    if (!v29)
    {
      break;
    }

    v2 = v147;
    if (v147 != v148)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (sub_181AC81FC(v6))
    {
      v2 = v147;
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_7Network19ManagedConnectionIDVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1822C5718@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = *(v2 + 24) == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v10 = *(v2 + 48);
    v9 = *(v2 + 40);
LABEL_10:
    *a2 = result;
    *(a2 + 8) = v3;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  else
  {
    v5 = (*v2 + 32);
    v6 = *(*v2 + 16) + 1;
    while (--v6)
    {
      v7 = v5 + 4;
      v8 = *v5;
      v5 += 4;
      if (v8 == result)
      {
        v3 = *(v7 - 3);
        v9 = *(v7 - 2);
        v10 = *(v7 - 8);
        goto LABEL_10;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}