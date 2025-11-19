uint64_t SwiftTLSProtocol.SwiftTLSInstance.init()()
{
  *(v0 + 145) = 0;
  sub_182AD2AB8();
  *(v0 + 152) = sub_182AD2A38();
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  type metadata accessor for SwiftTLSProtocol.SwiftTLSInstance.EncryptionLevelHandler();
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0;
  *(v1 + 48) = -1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = -1;
  *(v1 + 16) = 0;
  *(v0 + 240) = v1;
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = -1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = -1;
  *(v2 + 16) = 1;
  *(v0 + 248) = v2;
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = -1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = -1;
  *(v3 + 16) = 2;
  *(v0 + 256) = v3;
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = -1;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = -1;
  *(v4 + 16) = 3;
  *(v0 + 264) = v4;
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
  return v0;
}

uint64_t sub_1820741BC()
{

  sub_18206A288(*(v0 + 168));
}

uint64_t SwiftTLSProtocol.SwiftTLSInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  sub_18206A288(*(v0 + 168));

  return v0;
}

uint64_t SwiftTLSProtocol.SwiftTLSInstance.__deallocating_deinit()
{
  SwiftTLSProtocol.SwiftTLSInstance.deinit();

  return swift_deallocClassInstance();
}

uint64_t SwiftTLSProtocol.newProtocolInstance()()
{
  type metadata accessor for SwiftTLSProtocol.SwiftTLSInstance();
  v0 = swift_allocObject();
  SwiftTLSProtocol.SwiftTLSInstance.init()();
  return v0;
}

double SwiftTLSProtocol.newPerProtocolOptions()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t SwiftTLSProtocol.newPerProtocolOptions(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return sub_1820752BC(v8, v7);
}

double SwiftTLSProtocol.newPerProtocolOptions(from:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t sub_1820743C8()
{
  word_1EA839E40 = 3;
  result = sub_181FB974C();
  v1 = result;
  if (result == 39)
  {
    v1 = 0x6C742D7466697773;
    v2 = 0xE900000000000073;
  }

  else
  {
    v2 = 0;
  }

  qword_1EA839E48 = v1;
  unk_1EA839E50 = v2;
  byte_1EA839E58 = result == 39;
  return result;
}

uint64_t static SwiftTLSProtocol.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA837158 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1EA839E48;
  v3 = unk_1EA839E50;
  v4 = byte_1EA839E58;
  *a1 = word_1EA839E40;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_181F49A24(v2, v3, v4);
}

uint64_t sub_1820744C8()
{
  if (qword_1EA837158 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA839E48;
  v2 = unk_1EA839E50;
  v3 = byte_1EA839E58;
  qword_1EA843310 = 0;
  word_1EA8432E0 = word_1EA839E40;
  qword_1EA8432E8 = qword_1EA839E48;
  unk_1EA8432F0 = unk_1EA839E50;
  byte_1EA8432F8 = byte_1EA839E58;
  unk_1EA843301 = 0;
  unk_1EA8432F9 = 0;
  byte_1EA843309 = 1;

  return sub_181F49A24(v1, v2, v3);
}

uint64_t sub_182074558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return sub_1820752BC(v8, v7);
}

double sub_1820745A4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t sub_1820745C4()
{
  type metadata accessor for SwiftTLSProtocol.SwiftTLSInstance();
  v0 = swift_allocObject();
  SwiftTLSProtocol.SwiftTLSInstance.init()();
  return v0;
}

uint64_t sub_1820745FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  LOBYTE(v52) = 1;
  *(&v52 + 1) = 0;
  v53 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = &v48;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_181F4D2B4;
  *(v6 + 24) = v5;
  *&v44 = sub_181B77468;
  *(&v44 + 1) = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_181B7749C;
  *(&v43 + 1) = &block_descriptor_14;
  v7 = _Block_copy(&aBlock);

  nw_sec_protocol_options_iterate_application_protocols(a1, 0, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(v48 + 16))
  {
    v9 = sub_182AD29C8();
    MEMORY[0x1EEE9AC00](v9 - 8);
    v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v43 = v50;
    aBlock = v49;

    sub_182070AB4();
    sub_182AD2968();
    sub_182070CF4(v11);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = &v49;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1820756DC;
  *(v13 + 24) = v12;
  v41 = v12;
  *&v44 = sub_1820757C8;
  *(&v44 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_181B7749C;
  *(&v43 + 1) = &block_descriptor_63;
  v14 = _Block_copy(&aBlock);

  nw_sec_protocol_options_access_server_name(a1, v14);
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    goto LABEL_15;
  }

  v47 = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = &v47;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1820756E4;
  *(v16 + 24) = v15;
  *&v44 = sub_181B80070;
  *(&v44 + 1) = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_182075088;
  *(&v43 + 1) = &block_descriptor_72_1;
  v17 = _Block_copy(&aBlock);

  nw_sec_protocol_options_iterate_server_raw_public_keys(a1, v17);
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v40 = v5;
  if (*(v47 + 16))
  {
    v18 = sub_182AD29C8();
    MEMORY[0x1EEE9AC00](v18 - 8);
    v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v43 = v50;
    aBlock = v49;

    sub_182070AB4();
    sub_182AD29A8();
    sub_182070CF4(v20);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = &v49;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1820756EC;
  *(v22 + 24) = v21;
  *&v44 = sub_1820757CC;
  *(&v44 + 1) = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_182075088;
  *(&v43 + 1) = &block_descriptor_82;
  v23 = _Block_copy(&aBlock);

  nw_sec_protocol_options_access_quic_transport_parameters(a1, v23);
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    goto LABEL_17;
  }

  v39 = a2;
  nw_sec_protocol_options_get_key_exchange_group(a1);
  v24 = sub_182AD2908();
  v38 = &v38;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839E88);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v38 - v29;
  sub_182AD28E8();
  v31 = *(v25 + 48);
  if (v31(v30, 1, v24) == 1)
  {
    (*(v25 + 104))(v27, *MEMORY[0x1E69D4F28], v24);
    if (v31(v30, 1, v24) != 1)
    {
      sub_181F49A88(v30, &qword_1EA839E88);
    }
  }

  else
  {
    (*(v25 + 32))(v27, v30, v24);
  }

  v32 = sub_182AD29C8();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v43 = v50;
  aBlock = v49;
  sub_182070AB4();
  sub_182AD2928();
  sub_182070CF4(v34);
  swift_unknownObjectRelease();

  v44 = v51;
  v45 = v52;
  v46 = v53;
  v43 = v50;
  aBlock = v49;

  v35 = v45;
  v36 = v39;
  *(v39 + 32) = v44;
  *(v36 + 48) = v35;
  *(v36 + 64) = v46;
  v37 = v43;
  *v36 = aBlock;
  *(v36 + 16) = v37;
  return result;
}

uint64_t sub_182074EC4(uint64_t a1, uint64_t a2)
{
  sub_182AD3158();
  v3 = sub_182AD29C8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v10 = *(a2 + 64);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  sub_182070AB4();
  sub_182AD28B8();
  sub_182070CF4(v5);
  return 1;
}

uint64_t sub_182074F90(void *a1, void **a2)
{
  v3 = NWCreateNSDataFromDispatchData(a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_182AD2158();
    v7 = v6;

    sub_181F49B58(v5, v7);
    v8 = sub_182084884(v5, v7);
    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_181F5A6A0(0, v9[2] + 1, 1, v9);
      *a2 = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      *a2 = sub_181F5A6A0((v11 > 1), v12 + 1, 1, v9);
    }

    sub_181C1F2E4(v5, v7);
    v13 = *a2;
    v13[2] = v12 + 1;
    v13[v12 + 4] = v8;
  }

  return 1;
}

uint64_t sub_182075088(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1820750CC(void *a1, uint64_t a2)
{
  v3 = NWCreateNSDataFromDispatchData(a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_182AD2158();
    v7 = v6;

    sub_181F49B58(v5, v7);
    sub_182084884(v5, v7);
    v8 = sub_182AD29C8();
    MEMORY[0x1EEE9AC00](v8 - 8);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(a2 + 48);
    v14[2] = *(a2 + 32);
    v14[3] = v11;
    v15 = *(a2 + 64);
    v12 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v12;
    sub_182070AB4();
    sub_182AD2988();
    sub_182070CF4(v10);
    sub_181C1F2E4(v5, v7);
  }

  return 1;
}

uint64_t _s7Network16SwiftTLSProtocolV7optionsAA15ProtocolOptionsCyACGyFZ_0()
{
  if (qword_1EA837160 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8432E8;
  v1 = unk_1EA8432F0;
  v2 = byte_1EA8432F8;
  memset(v5, 0, sizeof(v5));
  v6 = 1;
  v7 = 0;
  v8 = 0;
  v3 = word_1EA8432E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BD8);
  swift_allocObject();
  sub_181F49A24(v0, v1, v2);
  return sub_181FB4858(v3, v0, v1, v2, v5);
}

uint64_t sub_1820752F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1820753B0()
{
  result = qword_1EA839E60;
  if (!qword_1EA839E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E60);
  }

  return result;
}

unint64_t sub_182075404(uint64_t a1)
{
  result = sub_18207542C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18207542C()
{
  result = qword_1EA839E68;
  if (!qword_1EA839E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E68);
  }

  return result;
}

unint64_t sub_182075480(uint64_t a1)
{
  result = sub_1820754A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1820754A8()
{
  result = qword_1EA839E70;
  if (!qword_1EA839E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E70);
  }

  return result;
}

unint64_t sub_182075500()
{
  result = qword_1EA839E78;
  if (!qword_1EA839E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E78);
  }

  return result;
}

unint64_t sub_182075558()
{
  result = qword_1EA839E80;
  if (!qword_1EA839E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E80);
  }

  return result;
}

uint64_t sub_1820755BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_182075618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1820756AC(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0xF0) == 0x50)
  {
    return sub_1820756C4(result, a2, a3 & 0xF);
  }

  return result;
}

uint64_t sub_1820756C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_182075708()
{
  result = qword_1EA839E90;
  if (!qword_1EA839E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E90);
  }

  return result;
}

unint64_t sub_18207575C()
{
  result = qword_1EA839E98;
  if (!qword_1EA839E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839E98);
  }

  return result;
}

uint64_t static NWDiscoverableActor<>.discover(using:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v21 = type metadata accessor for NWBrowser.Descriptor(0);
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v11 = (v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 16))(a3, a4, v12);
  v15 = (*(a4 + 24))(a3, a4);
  v16 = (*(a4 + 32))(a3, a4);
  sub_1820759DC(a2, v14);
  v17 = v11[7];
  sub_182075A40(v9, &v14[v17]);
  (*(v7 + 56))(&v14[v17], 0, 1, v21);
  *&v14[v11[8]] = v15;
  *&v14[v11[9]] = v16;
  static DistributedActor<>.discover(_:using:)(v14, v22);
  v19 = v18;
  sub_182075AA4(v14);
  return v19;
}

uint64_t sub_1820759DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_182075A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWBrowser.Descriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_182075AA4(uint64_t a1)
{
  v2 = type metadata accessor for NWActorDiscoveryMechanism(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_182075B3C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      v5 = v3 == 1;
    }

    else
    {
      v5 = v3 == 0;
    }
  }

  else if (v2 == 2)
  {
    v5 = v3 == 2;
  }

  else
  {
    if (v2 != 3)
    {
      if (v3 <= 3)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    v5 = v3 == 3;
  }

  if (!v5)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

uint64_t sub_182075BC0(int a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v186 = *MEMORY[0x1E69E9840];
  v4 = a3 >> 62;
  v171 = HIDWORD(a2);
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2 && *(a2 + 16) != *(a2 + 24))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v4)
  {
    while (1)
    {
      if (a2 == a2 >> 32)
      {
        return 0;
      }

LABEL_7:
      if (v4 != 2)
      {
        break;
      }

      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    LODWORD(v5) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_526;
    }

    v5 = v5;
    goto LABEL_15;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  v5 = BYTE6(a3);
LABEL_15:
  if (v5 + 0x4000000000000000 < 0)
  {
    goto LABEL_523;
  }

  v178 = 0;
  v10 = 0;
  v184 = sub_182077738(2 * v5);
  v185 = v11;
  memset(&v183, 0, 32);
  v12 = __OFSUB__(v171, a2);
  v173 = v12;
  memset(&v183.avail_out, 0, 80);
  v174 = v4;
  v175 = BYTE6(v3);
  v172 = v3;
  while (1)
  {
    strm = v183;
    v13 = inflateInit2_(&strm, a1, "1.2.12", 112);
    if (v13)
    {
LABEL_350:
      v158 = sub_182077660(v13, strm.msg);
      v160 = v159;
      v162 = v161;
      v164 = v163;
      sub_1820777DC();
      swift_allocError();
      *v165 = v158;
      *(v165 + 8) = v160 & 1;
      *(v165 + 16) = v162;
      *(v165 + 24) = v164;
      swift_willThrow();
      return sub_181C1F2E4(v184, v185);
    }

    v177 = v10;
    do
    {
      v15 = v10 + strm.total_out;
      if (__CFADD__(v10, strm.total_out))
      {
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
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
LABEL_382:
        __break(1u);
LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
LABEL_386:
        __break(1u);
LABEL_387:
        __break(1u);
LABEL_388:
        __break(1u);
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
LABEL_391:
        __break(1u);
LABEL_392:
        __break(1u);
LABEL_393:
        __break(1u);
LABEL_394:
        __break(1u);
LABEL_395:
        __break(1u);
LABEL_396:
        __break(1u);
LABEL_397:
        __break(1u);
LABEL_398:
        __break(1u);
LABEL_399:
        __break(1u);
LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        __break(1u);
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
LABEL_409:
        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
LABEL_449:
        __break(1u);
LABEL_450:
        __break(1u);
LABEL_451:
        __break(1u);
LABEL_452:
        __break(1u);
LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:
        __break(1u);
LABEL_457:
        __break(1u);
LABEL_458:
        __break(1u);
LABEL_459:
        __break(1u);
LABEL_460:
        __break(1u);
LABEL_461:
        __break(1u);
LABEL_462:
        __break(1u);
LABEL_463:
        __break(1u);
LABEL_464:
        __break(1u);
LABEL_465:
        __break(1u);
LABEL_466:
        __break(1u);
LABEL_467:
        __break(1u);
LABEL_468:
        __break(1u);
LABEL_469:
        __break(1u);
LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
LABEL_472:
        __break(1u);
LABEL_473:
        __break(1u);
LABEL_474:
        __break(1u);
LABEL_475:
        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        __break(1u);
LABEL_479:
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
LABEL_485:
        __break(1u);
LABEL_486:
        __break(1u);
LABEL_487:
        __break(1u);
LABEL_488:
        __break(1u);
LABEL_489:
        __break(1u);
LABEL_490:
        __break(1u);
LABEL_491:
        __break(1u);
LABEL_492:
        __break(1u);
LABEL_493:
        __break(1u);
LABEL_494:
        __break(1u);
LABEL_495:
        __break(1u);
LABEL_496:
        __break(1u);
LABEL_497:
        __break(1u);
LABEL_498:
        __break(1u);
LABEL_499:
        __break(1u);
LABEL_500:
        __break(1u);
LABEL_501:
        __break(1u);
LABEL_502:
        __break(1u);
LABEL_503:
        __break(1u);
LABEL_504:
        __break(1u);
LABEL_505:
        __break(1u);
LABEL_506:
        __break(1u);
LABEL_507:
        __break(1u);
LABEL_508:
        __break(1u);
LABEL_509:
        __break(1u);
LABEL_510:
        __break(1u);
LABEL_511:
        __break(1u);
LABEL_512:
        __break(1u);
LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
LABEL_515:
        __break(1u);
LABEL_516:
        __break(1u);
LABEL_517:
        __break(1u);
LABEL_518:
        __break(1u);
LABEL_519:
        __break(1u);
LABEL_520:
        __break(1u);
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
        goto LABEL_524;
      }

      if (v15 < 0)
      {
        goto LABEL_352;
      }

      v16 = v185 >> 62;
      if ((v185 >> 62) > 1)
      {
        if (v16 == 2)
        {
          v18 = *(v184 + 16);
          v17 = *(v184 + 24);
          v8 = __OFSUB__(v17, v18);
          v19 = v17 - v18;
          if (v8)
          {
            goto LABEL_356;
          }

          if (v15 < v19)
          {
            goto LABEL_33;
          }
        }
      }

      else if (v16)
      {
        if (__OFSUB__(HIDWORD(v184), v184))
        {
          goto LABEL_355;
        }

        if (v15 < HIDWORD(v184) - v184)
        {
LABEL_33:
          if (v4 > 1)
          {
            goto LABEL_59;
          }

          goto LABEL_34;
        }
      }

      else if (v15 < BYTE6(v185))
      {
        goto LABEL_33;
      }

      if (v4 <= 1)
      {
        v21 = v175;
        if (v4)
        {
          v21 = v171 - a2;
          if (v173)
          {
            goto LABEL_387;
          }
        }

LABEL_45:
        if (v16 > 1)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      if (v4 == 2)
      {
        v23 = *(a2 + 16);
        v22 = *(a2 + 24);
        v8 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v8)
        {
          goto LABEL_388;
        }

        goto LABEL_45;
      }

      v21 = 0;
      if (v16 > 1)
      {
LABEL_49:
        if (v16 == 2)
        {
          v25 = *(v184 + 16);
          v26 = *(v184 + 24);
          v8 = __OFSUB__(v26, v25);
          v24 = v26 - v25;
          if (v8)
          {
            goto LABEL_389;
          }
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_56;
      }

LABEL_46:
      if (v16)
      {
        LODWORD(v24) = HIDWORD(v184) - v184;
        if (__OFSUB__(HIDWORD(v184), v184))
        {
          goto LABEL_390;
        }

        v24 = v24;
      }

      else
      {
        v24 = BYTE6(v185);
      }

LABEL_56:
      if (__OFADD__(v24, v21 / 2))
      {
        goto LABEL_353;
      }

      if (v24 + v21 / 2 < 0)
      {
        goto LABEL_354;
      }

      sub_182AD20F8();
      if (v4 > 1)
      {
LABEL_59:
        if (v4 == 2)
        {
          v28 = *(a2 + 16);
          v27 = *(a2 + 24);
          v20 = v27 - v28;
          if (__OFSUB__(v27, v28))
          {
            goto LABEL_357;
          }
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_64;
      }

LABEL_34:
      v20 = v175;
      if (v4)
      {
        v20 = v171 - a2;
        if (v173)
        {
          goto LABEL_358;
        }
      }

LABEL_64:
      v29 = v184;
      v30 = v185;
      v31 = v185 >> 62;
      if ((v185 >> 62) <= 1)
      {
        if (v31)
        {
          LODWORD(v32) = HIDWORD(v184) - v184;
          if (__OFSUB__(HIDWORD(v184), v184))
          {
            goto LABEL_359;
          }

          v32 = v32;
        }

        else
        {
          v32 = BYTE6(v185);
        }

        v179 = v32;
LABEL_74:
        if (v4 <= 1)
        {
          goto LABEL_75;
        }

        goto LABEL_94;
      }

      if (v31 == 2)
      {
        v34 = *(v184 + 16);
        v33 = *(v184 + 24);
        v179 = v33 - v34;
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_360;
        }

        goto LABEL_74;
      }

      v179 = 0;
      if (v4 <= 1)
      {
LABEL_75:
        if (!v4)
        {
          LODWORD(v180[0]) = a2;
          BYTE4(v180[0]) = v171;
          *(v180 + 5) = *(&a2 + 5);
          HIBYTE(v180[0]) = HIBYTE(a2);
          LOWORD(v180[1]) = v3;
          BYTE2(v180[1]) = BYTE2(v3);
          BYTE3(v180[1]) = BYTE3(v3);
          BYTE4(v180[1]) = BYTE4(v3);
          BYTE5(v180[1]) = BYTE5(v3);
          v35 = v178 + strm.total_in;
          if (__CFADD__(v178, strm.total_in))
          {
            goto LABEL_363;
          }

          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_366;
          }

          strm.next_in = v180 + v35;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_370;
          }

          if (HIDWORD(v20))
          {
            goto LABEL_373;
          }

          if (HIDWORD(v35))
          {
            goto LABEL_377;
          }

          v36 = v20 >= v35;
          v37 = v20 - v35;
          if (!v36)
          {
            goto LABEL_381;
          }

          strm.avail_in = v37;
          if (v31 <= 1)
          {
            if (!v31)
            {
              sub_181C1F2E4(v184, v185);
              v181[0] = v29;
              LOWORD(v181[1]) = v30;
              BYTE2(v181[1]) = BYTE2(v30);
              BYTE3(v181[1]) = BYTE3(v30);
              BYTE4(v181[1]) = BYTE4(v30);
              BYTE5(v181[1]) = BYTE5(v30);
              BYTE6(v181[1]) = BYTE6(v30);
              v10 = v177;
              v38 = v177 + strm.total_out;
              if (__CFADD__(v177, strm.total_out))
              {
                goto LABEL_395;
              }

              if ((v38 & 0x8000000000000000) != 0)
              {
                goto LABEL_401;
              }

              strm.next_out = v181 + v38;
              if ((v179 & 0x8000000000000000) != 0)
              {
                goto LABEL_413;
              }

              if (HIDWORD(v179))
              {
                goto LABEL_431;
              }

              if (HIDWORD(v38))
              {
                goto LABEL_445;
              }

              v36 = v179 >= v38;
              v39 = v179 - v38;
              if (!v36)
              {
                goto LABEL_464;
              }

              strm.avail_out = v39;
              v14 = inflate(&strm, 2);
              strm.next_out = 0;
              v40 = v169 & 0xF00000000000000 | LODWORD(v181[1]) | ((WORD2(v181[1]) | (BYTE6(v181[1]) << 16)) << 32);
              v184 = v181[0];
              v169 = v40;
LABEL_178:
              v185 = v40;
              v3 = v172;
              LODWORD(v4) = v174;
              goto LABEL_23;
            }

            v70 = v185 & 0x3FFFFFFFFFFFFFFFLL;

            sub_181C1F2E4(v29, v30);
            sub_181C1F2E4(0, 0xC000000000000000);
            v71 = v29 >> 32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              if (v71 < v29)
              {
                goto LABEL_505;
              }

              if (sub_182AD1D58() && __OFSUB__(v29, sub_182AD1D88()))
              {
                goto LABEL_517;
              }

              sub_182AD1DB8();
              swift_allocObject();
              v103 = sub_182AD1D38();

              v70 = v103;
            }

            if (v71 < v29)
            {
              goto LABEL_397;
            }

            v104 = sub_182AD1D58();
            if (!v104)
            {
              goto LABEL_532;
            }

            v105 = v104;
            v106 = sub_182AD1D88();
            v107 = v29 - v106;
            if (__OFSUB__(v29, v106))
            {
              goto LABEL_410;
            }

            sub_182AD1D78();
            v10 = v177;
            v108 = v177 + strm.total_out;
            if (__CFADD__(v177, strm.total_out))
            {
              goto LABEL_427;
            }

            if ((v108 & 0x8000000000000000) != 0)
            {
              goto LABEL_444;
            }

            strm.next_out = (v105 + v107 + v108);
            if ((v179 & 0x8000000000000000) != 0)
            {
              goto LABEL_459;
            }

            if (HIDWORD(v179))
            {
              goto LABEL_475;
            }

            if (HIDWORD(v108))
            {
              goto LABEL_487;
            }

            v36 = v179 >= v108;
            v109 = v179 - v108;
            if (!v36)
            {
              goto LABEL_496;
            }

            goto LABEL_335;
          }

          if (v31 != 2)
          {
            memset(v181, 0, 15);
            v10 = v177;
            v73 = v177 + strm.total_out;
            if (__CFADD__(v177, strm.total_out))
            {
              goto LABEL_393;
            }

            if ((v73 & 0x8000000000000000) != 0)
            {
              goto LABEL_404;
            }

            strm.next_out = v181 + v73;
            if ((v179 & 0x8000000000000000) != 0)
            {
              goto LABEL_414;
            }

            if (HIDWORD(v179))
            {
              goto LABEL_430;
            }

            if (HIDWORD(v73))
            {
              goto LABEL_446;
            }

            v36 = v179 >= v73;
            v74 = v179 - v73;
            if (!v36)
            {
              goto LABEL_461;
            }

LABEL_22:
            strm.avail_out = v74;
            v14 = inflate(&strm, 2);
            strm.next_out = 0;
            goto LABEL_23;
          }

          v57 = v185 & 0x3FFFFFFFFFFFFFFFLL;

          sub_181C1F2E4(v29, v30);
          sub_181C1F2E4(0, 0xC000000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = *(v29 + 16);
            v58 = *(v29 + 24);
            if (sub_182AD1D58())
            {
              if (__OFSUB__(v59, sub_182AD1D88()))
              {
                goto LABEL_516;
              }

              if (__OFSUB__(v58, v59))
              {
                goto LABEL_508;
              }
            }

            else if (__OFSUB__(v58, v59))
            {
              goto LABEL_508;
            }

            sub_182AD1DB8();
            swift_allocObject();
            v80 = sub_182AD1D38();

            v57 = v80;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = *(v29 + 16);
            v82 = *(v29 + 24);
            sub_182AD20C8();
            v83 = swift_allocObject();
            *(v83 + 16) = v81;
            *(v83 + 24) = v82;
            v3 = v172;

            v29 = v83;
          }

          v84 = *(v29 + 16);
          v85 = *(v29 + 24);
          v86 = sub_182AD1D58();
          v10 = v177;
          if (!v86)
          {
            goto LABEL_530;
          }

          v87 = v86;
          v88 = sub_182AD1D88();
          v89 = v84 - v88;
          if (__OFSUB__(v84, v88))
          {
            goto LABEL_400;
          }

          if (__OFSUB__(v85, v84))
          {
            goto LABEL_412;
          }

          sub_182AD1D78();
          v90 = v177 + strm.total_out;
          if (__CFADD__(v177, strm.total_out))
          {
            goto LABEL_428;
          }

          if ((v90 & 0x8000000000000000) != 0)
          {
            goto LABEL_441;
          }

          strm.next_out = (v87 + v89 + v90);
          if ((v179 & 0x8000000000000000) != 0)
          {
            goto LABEL_458;
          }

          if (HIDWORD(v179))
          {
            goto LABEL_476;
          }

          if (HIDWORD(v90))
          {
            goto LABEL_488;
          }

          v36 = v179 >= v90;
          v91 = v179 - v90;
          if (!v36)
          {
            goto LABEL_493;
          }

LABEL_312:
          strm.avail_out = v91;
          v14 = inflate(&strm, 2);
          strm.next_out = 0;
          v184 = v29;
          v185 = v57 | 0x8000000000000000;
          LODWORD(v4) = v174;
          goto LABEL_23;
        }

        if (a2 >> 32 < a2)
        {
          goto LABEL_361;
        }

        v49 = sub_182AD1D58();
        if (v49)
        {
          v50 = v49;
          v51 = sub_182AD1D88();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_392;
          }

          v52 = a2 - v51 + v50;
        }

        else
        {
          v52 = 0;
        }

        sub_182AD1D78();
        v64 = v178 + strm.total_in;
        if (__CFADD__(v178, strm.total_in))
        {
          goto LABEL_367;
        }

        if (!v52)
        {
          goto LABEL_528;
        }

        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_372;
        }

        strm.next_in = (v64 + v52);
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_375;
        }

        if (HIDWORD(v20))
        {
          goto LABEL_380;
        }

        if (HIDWORD(v64))
        {
          goto LABEL_384;
        }

        v36 = v20 >= v64;
        v65 = v20 - v64;
        if (!v36)
        {
          goto LABEL_386;
        }

        strm.avail_in = v65;
        if (v31 > 1)
        {
          if (v31 != 2)
          {
            memset(v181, 0, 15);
            v10 = v177;
            v79 = v177 + strm.total_out;
            if (__CFADD__(v177, strm.total_out))
            {
              goto LABEL_406;
            }

            if ((v79 & 0x8000000000000000) != 0)
            {
              goto LABEL_423;
            }

            strm.next_out = v181 + v79;
            if ((v179 & 0x8000000000000000) != 0)
            {
              goto LABEL_438;
            }

            if (HIDWORD(v179))
            {
              goto LABEL_456;
            }

            if (HIDWORD(v79))
            {
              goto LABEL_470;
            }

            v36 = v179 >= v79;
            v74 = v179 - v79;
            if (!v36)
            {
              goto LABEL_483;
            }

            goto LABEL_22;
          }

          v57 = v30 & 0x3FFFFFFFFFFFFFFFLL;

          sub_181C1F2E4(v29, v30);
          sub_181C1F2E4(0, 0xC000000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = *(v29 + 16);
            v68 = *(v29 + 24);
            if (sub_182AD1D58())
            {
              if (__OFSUB__(v69, sub_182AD1D88()))
              {
                goto LABEL_520;
              }

              if (__OFSUB__(v68, v69))
              {
                goto LABEL_512;
              }
            }

            else if (__OFSUB__(v68, v69))
            {
              goto LABEL_512;
            }

            sub_182AD1DB8();
            swift_allocObject();
            v127 = sub_182AD1D38();

            v57 = v127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = *(v29 + 16);
            v129 = *(v29 + 24);
            sub_182AD20C8();
            v130 = swift_allocObject();
            *(v130 + 16) = v128;
            *(v130 + 24) = v129;
            v3 = v172;

            v29 = v130;
          }

          v131 = *(v29 + 16);
          v132 = *(v29 + 24);
          v133 = sub_182AD1D58();
          v10 = v177;
          if (!v133)
          {
            goto LABEL_534;
          }

          v134 = v133;
          v135 = sub_182AD1D88();
          v136 = v131 - v135;
          if (__OFSUB__(v131, v135))
          {
            goto LABEL_420;
          }

          if (__OFSUB__(v132, v131))
          {
            goto LABEL_434;
          }

          sub_182AD1D78();
          v137 = v177 + strm.total_out;
          if (__CFADD__(v177, strm.total_out))
          {
            goto LABEL_450;
          }

          if ((v137 & 0x8000000000000000) != 0)
          {
            goto LABEL_467;
          }

          strm.next_out = (v134 + v136 + v137);
          if ((v179 & 0x8000000000000000) != 0)
          {
            goto LABEL_480;
          }

          if (HIDWORD(v179))
          {
            goto LABEL_490;
          }

          if (HIDWORD(v137))
          {
            goto LABEL_498;
          }

          v36 = v179 >= v137;
          v91 = v179 - v137;
          if (!v36)
          {
            goto LABEL_503;
          }

          goto LABEL_312;
        }

        if (!v31)
        {
          sub_181C1F2E4(v29, v30);
          v181[0] = v29;
          LOWORD(v181[1]) = v30;
          BYTE2(v181[1]) = BYTE2(v30);
          BYTE3(v181[1]) = BYTE3(v30);
          BYTE4(v181[1]) = BYTE4(v30);
          BYTE5(v181[1]) = BYTE5(v30);
          BYTE6(v181[1]) = BYTE6(v30);
          v10 = v177;
          v66 = v177 + strm.total_out;
          if (__CFADD__(v177, strm.total_out))
          {
            goto LABEL_405;
          }

          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_424;
          }

          strm.next_out = v181 + v66;
          if ((v179 & 0x8000000000000000) != 0)
          {
            goto LABEL_437;
          }

          if (HIDWORD(v179))
          {
            goto LABEL_454;
          }

          if (HIDWORD(v66))
          {
            goto LABEL_471;
          }

          v36 = v179 >= v66;
          v67 = v179 - v66;
          if (!v36)
          {
            goto LABEL_482;
          }

          strm.avail_out = v67;
          v14 = inflate(&strm, 2);
          strm.next_out = 0;
          v40 = v168 & 0xF00000000000000 | LODWORD(v181[1]) | ((WORD2(v181[1]) | (BYTE6(v181[1]) << 16)) << 32);
          v184 = v181[0];
          v168 = v40;
          goto LABEL_178;
        }

        v70 = v30 & 0x3FFFFFFFFFFFFFFFLL;

        sub_181C1F2E4(v29, v30);
        sub_181C1F2E4(0, 0xC000000000000000);
        v78 = v29 >> 32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v78 < v29)
          {
            goto LABEL_509;
          }

          if (sub_182AD1D58() && __OFSUB__(v29, sub_182AD1D88()))
          {
            goto LABEL_522;
          }

          sub_182AD1DB8();
          swift_allocObject();
          v144 = sub_182AD1D38();

          v70 = v144;
        }

        if (v78 < v29)
        {
          goto LABEL_417;
        }

        v145 = sub_182AD1D58();
        if (!v145)
        {
          goto LABEL_537;
        }

        v146 = v145;
        v147 = sub_182AD1D88();
        v148 = v29 - v147;
        if (__OFSUB__(v29, v147))
        {
          goto LABEL_435;
        }

        sub_182AD1D78();
        v10 = v177;
        v149 = v177 + strm.total_out;
        if (__CFADD__(v177, strm.total_out))
        {
          goto LABEL_451;
        }

        if ((v149 & 0x8000000000000000) != 0)
        {
          goto LABEL_468;
        }

        strm.next_out = (v146 + v148 + v149);
        if ((v179 & 0x8000000000000000) != 0)
        {
          goto LABEL_478;
        }

        if (HIDWORD(v179))
        {
          goto LABEL_492;
        }

        if (HIDWORD(v149))
        {
          goto LABEL_497;
        }

        v36 = v179 >= v149;
        v109 = v179 - v149;
        if (!v36)
        {
          goto LABEL_502;
        }

        goto LABEL_335;
      }

LABEL_94:
      if (v4 == 2)
      {
        v41 = *(a2 + 16);
        v42 = *(a2 + 24);
        v43 = sub_182AD1D58();
        if (v43)
        {
          v44 = sub_182AD1D88();
          if (__OFSUB__(v41, v44))
          {
            goto LABEL_391;
          }

          v43 += v41 - v44;
        }

        if (__OFSUB__(v42, v41))
        {
          goto LABEL_364;
        }

        sub_182AD1D78();
        v45 = v178 + strm.total_in;
        if (__CFADD__(v178, strm.total_in))
        {
          goto LABEL_368;
        }

        if (!v43)
        {
          goto LABEL_529;
        }

        LODWORD(v4) = v174;
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_371;
        }

        strm.next_in = (v45 + v43);
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_376;
        }

        if (HIDWORD(v20))
        {
          goto LABEL_379;
        }

        if (HIDWORD(v45))
        {
          goto LABEL_383;
        }

        v36 = v20 >= v45;
        v46 = v20 - v45;
        if (!v36)
        {
          goto LABEL_385;
        }

        strm.avail_in = v46;
        if (v31 <= 1)
        {
          if (!v31)
          {
            sub_181C1F2E4(v29, v30);
            v181[0] = v29;
            LOWORD(v181[1]) = v30;
            BYTE2(v181[1]) = BYTE2(v30);
            BYTE3(v181[1]) = BYTE3(v30);
            BYTE4(v181[1]) = BYTE4(v30);
            BYTE5(v181[1]) = BYTE5(v30);
            BYTE6(v181[1]) = BYTE6(v30);
            v10 = v177;
            v47 = v177 + strm.total_out;
            if (__CFADD__(v177, strm.total_out))
            {
              goto LABEL_408;
            }

            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_422;
            }

            strm.next_out = v181 + v47;
            if ((v179 & 0x8000000000000000) != 0)
            {
              goto LABEL_440;
            }

            if (HIDWORD(v179))
            {
              goto LABEL_453;
            }

            if (HIDWORD(v47))
            {
              goto LABEL_472;
            }

            v36 = v179 >= v47;
            v48 = v179 - v47;
            if (!v36)
            {
              goto LABEL_481;
            }

            strm.avail_out = v48;
            v14 = inflate(&strm, 2);
            strm.next_out = 0;
            v40 = v167 & 0xF00000000000000 | LODWORD(v181[1]) | ((WORD2(v181[1]) | (BYTE6(v181[1]) << 16)) << 32);
            v184 = v181[0];
            v167 = v40;
            goto LABEL_178;
          }

          v70 = v30 & 0x3FFFFFFFFFFFFFFFLL;

          sub_181C1F2E4(v29, v30);
          sub_181C1F2E4(0, 0xC000000000000000);
          v76 = v29 >> 32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v76 < v29)
            {
              goto LABEL_510;
            }

            if (sub_182AD1D58() && __OFSUB__(v29, sub_182AD1D88()))
            {
              goto LABEL_521;
            }

            sub_182AD1DB8();
            swift_allocObject();
            v138 = sub_182AD1D38();

            v70 = v138;
          }

          if (v76 < v29)
          {
            goto LABEL_418;
          }

          v139 = sub_182AD1D58();
          if (!v139)
          {
            goto LABEL_536;
          }

          v140 = v139;
          v141 = sub_182AD1D88();
          v142 = v29 - v141;
          if (__OFSUB__(v29, v141))
          {
            goto LABEL_433;
          }

          sub_182AD1D78();
          v10 = v177;
          v143 = v177 + strm.total_out;
          if (__CFADD__(v177, strm.total_out))
          {
            goto LABEL_452;
          }

          if ((v143 & 0x8000000000000000) != 0)
          {
            goto LABEL_465;
          }

          strm.next_out = (v140 + v142 + v143);
          if ((v179 & 0x8000000000000000) != 0)
          {
            goto LABEL_479;
          }

          if (HIDWORD(v179))
          {
            goto LABEL_489;
          }

          if (HIDWORD(v143))
          {
            goto LABEL_500;
          }

          v36 = v179 >= v143;
          v109 = v179 - v143;
          if (!v36)
          {
            goto LABEL_501;
          }

          goto LABEL_335;
        }

        if (v31 != 2)
        {
          memset(v181, 0, 15);
          v10 = v177;
          v77 = v177 + strm.total_out;
          if (__CFADD__(v177, strm.total_out))
          {
            goto LABEL_407;
          }

          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_421;
          }

          strm.next_out = v181 + v77;
          if ((v179 & 0x8000000000000000) != 0)
          {
            goto LABEL_439;
          }

          if (HIDWORD(v179))
          {
            goto LABEL_455;
          }

          if (HIDWORD(v77))
          {
            goto LABEL_469;
          }

          v36 = v179 >= v77;
          v74 = v179 - v77;
          if (!v36)
          {
            goto LABEL_484;
          }

          goto LABEL_22;
        }

        v57 = v30 & 0x3FFFFFFFFFFFFFFFLL;

        sub_181C1F2E4(v29, v30);
        sub_181C1F2E4(0, 0xC000000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = *(v29 + 16);
          v62 = *(v29 + 24);
          if (sub_182AD1D58())
          {
            if (__OFSUB__(v63, sub_182AD1D88()))
            {
              goto LABEL_519;
            }

            if (__OFSUB__(v62, v63))
            {
              goto LABEL_511;
            }
          }

          else if (__OFSUB__(v62, v63))
          {
            goto LABEL_511;
          }

          sub_182AD1DB8();
          swift_allocObject();
          v116 = sub_182AD1D38();

          v57 = v116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = *(v29 + 16);
          v118 = *(v29 + 24);
          sub_182AD20C8();
          v119 = swift_allocObject();
          *(v119 + 16) = v117;
          *(v119 + 24) = v118;
          v3 = v172;

          v29 = v119;
        }

        v120 = *(v29 + 16);
        v121 = *(v29 + 24);
        v122 = sub_182AD1D58();
        v10 = v177;
        if (!v122)
        {
          goto LABEL_535;
        }

        v123 = v122;
        v124 = sub_182AD1D88();
        v125 = v120 - v124;
        if (__OFSUB__(v120, v124))
        {
          goto LABEL_419;
        }

        if (__OFSUB__(v121, v120))
        {
          goto LABEL_436;
        }

        sub_182AD1D78();
        v126 = v177 + strm.total_out;
        if (__CFADD__(v177, strm.total_out))
        {
          goto LABEL_449;
        }

        if ((v126 & 0x8000000000000000) != 0)
        {
          goto LABEL_466;
        }

        strm.next_out = (v123 + v125 + v126);
        if ((v179 & 0x8000000000000000) != 0)
        {
          goto LABEL_477;
        }

        if (HIDWORD(v179))
        {
          goto LABEL_491;
        }

        if (HIDWORD(v126))
        {
          goto LABEL_499;
        }

        v36 = v179 >= v126;
        v91 = v179 - v126;
        if (!v36)
        {
          goto LABEL_504;
        }

        goto LABEL_312;
      }

      memset(v180, 0, 14);
      v53 = v178 + strm.total_in;
      if (__CFADD__(v178, strm.total_in))
      {
        goto LABEL_362;
      }

      if ((v53 & 0x8000000000000000) != 0)
      {
        goto LABEL_365;
      }

      strm.next_in = v180 + v53;
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_369;
      }

      if (HIDWORD(v20))
      {
        goto LABEL_374;
      }

      if (HIDWORD(v53))
      {
        goto LABEL_378;
      }

      v36 = v20 >= v53;
      v54 = v20 - v53;
      if (!v36)
      {
        goto LABEL_382;
      }

      strm.avail_in = v54;
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          memset(v181, 0, 15);
          v10 = v177;
          v75 = v177 + strm.total_out;
          if (__CFADD__(v177, strm.total_out))
          {
            goto LABEL_394;
          }

          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_402;
          }

          strm.next_out = v181 + v75;
          if ((v179 & 0x8000000000000000) != 0)
          {
            goto LABEL_416;
          }

          if (HIDWORD(v179))
          {
            goto LABEL_432;
          }

          if (HIDWORD(v75))
          {
            goto LABEL_447;
          }

          v36 = v179 >= v75;
          v74 = v179 - v75;
          if (!v36)
          {
            goto LABEL_462;
          }

          goto LABEL_22;
        }

        v57 = v185 & 0x3FFFFFFFFFFFFFFFLL;

        sub_181C1F2E4(v29, v30);
        sub_181C1F2E4(0, 0xC000000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = *(v29 + 16);
          v60 = *(v29 + 24);
          if (sub_182AD1D58())
          {
            if (__OFSUB__(v61, sub_182AD1D88()))
            {
              goto LABEL_515;
            }

            if (__OFSUB__(v60, v61))
            {
              goto LABEL_507;
            }
          }

          else if (__OFSUB__(v60, v61))
          {
            goto LABEL_507;
          }

          sub_182AD1DB8();
          swift_allocObject();
          v92 = sub_182AD1D38();

          v57 = v92;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = *(v29 + 16);
          v94 = *(v29 + 24);
          sub_182AD20C8();
          v95 = swift_allocObject();
          *(v95 + 16) = v93;
          *(v95 + 24) = v94;
          v3 = v172;

          v29 = v95;
        }

        v96 = *(v29 + 16);
        v97 = *(v29 + 24);
        v98 = sub_182AD1D58();
        v10 = v177;
        if (!v98)
        {
          goto LABEL_531;
        }

        v99 = v98;
        v100 = sub_182AD1D88();
        v101 = v96 - v100;
        if (__OFSUB__(v96, v100))
        {
          goto LABEL_399;
        }

        if (__OFSUB__(v97, v96))
        {
          goto LABEL_409;
        }

        sub_182AD1D78();
        v102 = v177 + strm.total_out;
        if (__CFADD__(v177, strm.total_out))
        {
          goto LABEL_426;
        }

        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_442;
        }

        strm.next_out = (v99 + v101 + v102);
        if ((v179 & 0x8000000000000000) != 0)
        {
          goto LABEL_457;
        }

        if (HIDWORD(v179))
        {
          goto LABEL_474;
        }

        if (HIDWORD(v102))
        {
          goto LABEL_486;
        }

        v36 = v179 >= v102;
        v91 = v179 - v102;
        if (!v36)
        {
          goto LABEL_494;
        }

        goto LABEL_312;
      }

      if (!v31)
      {
        sub_181C1F2E4(v184, v185);
        v181[0] = v29;
        LOWORD(v181[1]) = v30;
        BYTE2(v181[1]) = BYTE2(v30);
        BYTE3(v181[1]) = BYTE3(v30);
        BYTE4(v181[1]) = BYTE4(v30);
        BYTE5(v181[1]) = BYTE5(v30);
        BYTE6(v181[1]) = BYTE6(v30);
        v10 = v177;
        v55 = v177 + strm.total_out;
        if (__CFADD__(v177, strm.total_out))
        {
          goto LABEL_396;
        }

        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_403;
        }

        strm.next_out = v181 + v55;
        if ((v179 & 0x8000000000000000) != 0)
        {
          goto LABEL_415;
        }

        if (HIDWORD(v179))
        {
          goto LABEL_429;
        }

        if (HIDWORD(v55))
        {
          goto LABEL_448;
        }

        v36 = v179 >= v55;
        v56 = v179 - v55;
        if (!v36)
        {
          goto LABEL_463;
        }

        strm.avail_out = v56;
        v14 = inflate(&strm, 2);
        strm.next_out = 0;
        v40 = v170 & 0xF00000000000000 | LODWORD(v181[1]) | ((WORD2(v181[1]) | (BYTE6(v181[1]) << 16)) << 32);
        v184 = v181[0];
        v170 = v40;
        goto LABEL_178;
      }

      v70 = v185 & 0x3FFFFFFFFFFFFFFFLL;

      sub_181C1F2E4(v29, v30);
      sub_181C1F2E4(0, 0xC000000000000000);
      v72 = v29 >> 32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v72 < v29)
        {
          goto LABEL_506;
        }

        if (sub_182AD1D58() && __OFSUB__(v29, sub_182AD1D88()))
        {
          goto LABEL_518;
        }

        sub_182AD1DB8();
        swift_allocObject();
        v110 = sub_182AD1D38();

        v70 = v110;
      }

      if (v72 < v29)
      {
        goto LABEL_398;
      }

      v111 = sub_182AD1D58();
      if (!v111)
      {
        goto LABEL_533;
      }

      v112 = v111;
      v113 = sub_182AD1D88();
      v114 = v29 - v113;
      if (__OFSUB__(v29, v113))
      {
        goto LABEL_411;
      }

      sub_182AD1D78();
      v10 = v177;
      v115 = v177 + strm.total_out;
      if (__CFADD__(v177, strm.total_out))
      {
        goto LABEL_425;
      }

      if ((v115 & 0x8000000000000000) != 0)
      {
        goto LABEL_443;
      }

      strm.next_out = (v112 + v114 + v115);
      if ((v179 & 0x8000000000000000) != 0)
      {
        goto LABEL_460;
      }

      if (HIDWORD(v179))
      {
        goto LABEL_473;
      }

      if (HIDWORD(v115))
      {
        goto LABEL_485;
      }

      v36 = v179 >= v115;
      v109 = v179 - v115;
      if (!v36)
      {
        goto LABEL_495;
      }

LABEL_335:
      strm.avail_out = v109;
      v150 = inflate(&strm, 2);
      strm.next_out = 0;

      v14 = v150;
      v184 = v29;
      v185 = v70 | 0x4000000000000000;
LABEL_23:
      strm.next_in = 0;
    }

    while (!v14);
    v36 = __CFADD__(v178, strm.total_in);
    v178 += strm.total_in;
    if (v36)
    {
      goto LABEL_513;
    }

    v151 = v14;
    v152 = inflateEnd(&strm);
    v13 = v151;
    if (v151 != 1 || v152)
    {
      goto LABEL_350;
    }

    v36 = __CFADD__(v10, strm.total_out);
    v10 += strm.total_out;
    if (v36)
    {
      goto LABEL_514;
    }

    if (v4 > 1)
    {
      break;
    }

    v153 = v175;
    v3 = v172;
    if (v4)
    {
      v153 = v171 - a2;
      if (v173)
      {
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
LABEL_528:
        __break(1u);
LABEL_529:
        __break(1u);
LABEL_530:
        __break(1u);
LABEL_531:
        __break(1u);
LABEL_532:
        __break(1u);
LABEL_533:
        __break(1u);
LABEL_534:
        __break(1u);
LABEL_535:
        __break(1u);
LABEL_536:
        __break(1u);
LABEL_537:
        __break(1u);
      }
    }

LABEL_346:
    if (v153 < 1 || v178 >= v153)
    {
      goto LABEL_348;
    }
  }

  v3 = v172;
  if (v4 == 2)
  {
    v155 = *(a2 + 16);
    v154 = *(a2 + 24);
    v8 = __OFSUB__(v154, v155);
    v153 = v154 - v155;
    if (v8)
    {
      goto LABEL_525;
    }

    goto LABEL_346;
  }

LABEL_348:
  if (v10 < 0)
  {
    goto LABEL_527;
  }

  sub_182AD20F8();
  v156 = v184;
  v157 = v185;
  sub_181F49B58(v184, v185);
  sub_181C1F2E4(v156, v157);
  return v156;
}

uint64_t sub_182077660(int a1, uint64_t a2)
{
  if (!a2 || (MEMORY[0x1865D9BE0](a2), !v3))
  {

    if (a1 <= -5)
    {
      goto LABEL_4;
    }

LABEL_8:
    switch(a1)
    {
      case -4:
        return 2;
      case -3:
        return 1;
      case -2:
        return 0;
    }

    return a1;
  }

  if (a1 > -5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (a1 == -6)
  {
    return 4;
  }

  if (a1 == -5)
  {
    return 3;
  }

  return a1;
}

uint64_t sub_182077738(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_182AD1DB8();
      swift_allocObject();
      sub_182AD1D98();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_182AD20C8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1820777DC()
{
  result = qword_1EA839EA0;
  if (!qword_1EA839EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839EA0);
  }

  return result;
}

uint64_t sub_182077830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182077878(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t NWProtocolHTTP.Options.__allocating_init()()
{
  options = nw_http_messaging_create_options();
  result = swift_allocObject();
  *(result + 16) = options;
  return result;
}

uint64_t NWProtocolHTTP.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_182077A34(_OWORD *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  *(swift_allocObject() + 16) = *a1;
  v5 = a3();

  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

uint64_t NWProtocolHTTP.Metadata.trailerFields.getter@<X0>(void *a1@<X8>)
{
  result = nw_http_metadata_copy_trailer_fields(*(v1 + 16));
  if (result)
  {
    v4 = result;
    sub_181C9FCB4();

    swift_beginAccess();
    v5 = *(v4 + 16);

    result = swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

void sub_182077B60(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v4 = a2();
  type metadata accessor for NWProtocolDefinition();
  v5 = swift_allocObject();
  v5[4] = v4;
  v6 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v7 = sub_182AD2F88();
  v9 = v8;

  v5[2] = v7;
  v5[3] = v9;
  *a3 = v5;
}

uint64_t NWProtocolHTTPEncoding.Options.__allocating_init()()
{
  options = nw_http_encoding_create_options();
  result = swift_allocObject();
  *(result + 16) = options;
  return result;
}

uint64_t sub_182077D0C(_OWORD *a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AF1910;
  a2(0);
  *(swift_allocObject() + 16) = *a1;
  v12 = a3();

  type metadata accessor for NWProtocolHTTP.Metadata();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(inited + 32) = v13;
  return (*(v5 + 152))(a4, a5, 0, 0, 0, inited, 0.5);
}

uint64_t sub_182077E38@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  if (qword_1EA836508 != -1)
  {
    swift_once();
  }

  result = nw_content_context_copy_protocol_metadata(*(v2 + 16), *(off_1EA836510 + 4));
  if (result && (v6 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result), result = swift_unknownObjectRelease(), v6) && (type metadata accessor for NWProtocolHTTP.Metadata(), v7 = swift_dynamicCastClassUnconditional(), v8 = a1(*(v7 + 16)), result = , v8))
  {
    swift_beginAccess();
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);

    result = swift_unknownObjectRelease();
    *a2 = v9;
    a2[1] = v10;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t NWConnection.__allocating_init(obliviousHTTPConnection:gatewayKeyConfig:contextID:mediaType:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v45 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for NWEndpoint();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v38 - v17;
  v18 = *(a1 + 16);
  swift_unknownObjectRetain();
  v19 = nw_protocol_copy_oblivious_http_contexts_definition();
  v20 = nw_connection_copy_connected_parameters_with_protocol(v18, v19);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v20)
  {
    v39 = v15;
    v46 = a2;
    v21 = nw_parameters_copy_default_protocol_stack(v20);
    v48 = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = &v48;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_18207990C;
    *(v23 + 24) = v22;
    v44 = v22;
    aBlock[4] = sub_181EC63D8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181EC635C;
    aBlock[3] = &block_descriptor_15;
    v24 = _Block_copy(aBlock);

    v43 = v21;
    nw_protocol_stack_iterate_application_protocols(v21, v24);
    _Block_release(v24);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
      return result;
    }

    v26 = v48;
    if (v48)
    {
      swift_unknownObjectRetain_n();
      v27 = a3;
      sub_182079700(v46, a3, v26);
      nw_oblivious_http_set_context_id(v26, v45);
      if (a6)
      {
        v28 = sub_182AD3048();

        nw_oblivious_http_set_media_type(v26, v28 + 32);
        v27 = a3;
      }

      v29 = nw_connection_create_with_connection(*(a1 + 16), v20);
      v30 = v39;
      if (v29)
      {
        v31 = v29;
        v32 = nw_connection_copy_endpoint(v29);
        sub_181B80998(v32, v12);
        if ((*(v42 + 48))(v12, 1, v13) != 1)
        {
          v33 = v40;
          sub_181B81180(v12, v40);
          sub_181FE4EE0(v33, v30);
          type metadata accessor for NWParameters();
          v34 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
          v35 = swift_allocObject();
          *(v35 + 24) = 0;
          *(v35 + 16) = v20;
          *(v34 + 16) = v35;
          swift_allocObject();
          v36 = v27;
          swift_unknownObjectRetain();
          v37 = sub_181D4653C(v30, v34, v31);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          sub_181C1F2E4(v46, v36);
          swift_unknownObjectRelease();

          sub_181FDAD5C(v33);

          swift_unknownObjectRelease();
          return v37;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_181C1F2E4(v46, v27);

        sub_182079928(v12);
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_181C1F2E4(v46, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_181C1F2E4(v46, a3);
    }

LABEL_13:

    swift_unknownObjectRelease();
    return 0;
  }

  sub_181C1F2E4(a2, a3);

  return 0;
}

uint64_t NWConnection.__allocating_init<A>(obliviousHTTPConnection:standaloneAEADKey:contextID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v43 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v36 - v10;
  v12 = type metadata accessor for NWEndpoint();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  v17 = *(a1 + 16);
  swift_unknownObjectRetain();
  v18 = nw_protocol_copy_oblivious_http_contexts_definition();
  v19 = nw_connection_copy_connected_parameters_with_protocol(v17, v18);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v19)
  {
    v37 = v16;
    v44 = a2;
    v20 = nw_parameters_copy_default_protocol_stack(v19);
    v46 = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = &v46;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_182079BAC;
    *(v22 + 24) = v21;
    v41 = v21;
    aBlock[4] = sub_181EC63E0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181EC635C;
    aBlock[3] = &block_descriptor_13;
    v23 = _Block_copy(aBlock);

    v40 = v20;
    nw_protocol_stack_iterate_application_protocols(v20, v23);
    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      __break(1u);
      return result;
    }

    v25 = v46;
    if (v46)
    {
      v36[1] = v5;
      MEMORY[0x1EEE9AC00](result);
      v36[-2] = v25;
      swift_unknownObjectRetain();
      v26 = v44;
      sub_182AD1DC8();
      nw_oblivious_http_set_context_id(v25, v43);
      v27 = nw_connection_create_with_connection(*(a1 + 16), v19);
      if (v27)
      {
        v28 = v27;
        v29 = nw_connection_copy_endpoint(v27);
        sub_181B80998(v29, v11);
        if ((*(v39 + 48))(v11, 1, v12) != 1)
        {
          v30 = v11;
          v31 = v37;
          sub_181B81180(v30, v37);
          v32 = v38;
          sub_181FE4EE0(v31, v38);
          type metadata accessor for NWParameters();
          v33 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
          v34 = swift_allocObject();
          *(v34 + 24) = 0;
          *(v34 + 16) = v19;
          *(v33 + 16) = v34;
          swift_allocObject();
          swift_unknownObjectRetain();
          v35 = sub_181D4653C(v32, v33, v28);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(*(a4 - 8) + 8))(v44, a4);
          sub_181FDAD5C(v31);

          swift_unknownObjectRelease();
          return v35;
        }

        (*(*(a4 - 8) + 8))(v44, a4);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_182079928(v11);
        goto LABEL_11;
      }

      (*(*(a4 - 8) + 8))(v26, a4);

      swift_unknownObjectRelease();
    }

    else
    {
      (*(*(a4 - 8) + 8))(v44, a4);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_11:

    swift_unknownObjectRelease();
    return 0;
  }

  (*(*(a4 - 8) + 8))(a2, a4);

  return 0;
}

uint64_t NWConnection.__allocating_init<A, B>(obliviousHTTPConnection:receiveAEADNonce:receiveAEADKey:contextID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a7;
  v50 = a8;
  v51 = a4;
  v53 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v42 - v14;
  v16 = type metadata accessor for NWEndpoint();
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v44 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = v42 - v19;
  v20 = *(a1 + 16);
  swift_unknownObjectRetain();
  v21 = nw_protocol_copy_oblivious_http_contexts_definition();
  v22 = nw_connection_copy_connected_parameters_with_protocol(v20, v21);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v22)
  {
    (*(*(a6 - 8) + 8))(a3, a6);

    v35 = 0;
    v36 = 0;
    goto LABEL_13;
  }

  v42[1] = v8;
  v52 = a3;
  v23 = nw_parameters_copy_default_protocol_stack(v22);
  v55 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = &v55;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_182079BAC;
  *(v25 + 24) = v24;
  v48 = v24;
  aBlock[4] = sub_181EC63E0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181EC635C;
  aBlock[3] = &block_descriptor_23;
  v26 = _Block_copy(aBlock);

  v47 = v23;
  nw_protocol_stack_iterate_application_protocols(v23, v26);
  _Block_release(v26);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    v28 = v55;
    if (v55)
    {
      MEMORY[0x1EEE9AC00](result);
      v43 = v29;
      v42[-6] = v29;
      v42[-5] = a6;
      v30 = v50;
      v42[-4] = v49;
      v42[-3] = v30;
      v42[-2] = v53;
      v42[-1] = v28;
      swift_unknownObjectRetain();
      v31 = v52;
      sub_182AD1DC8();
      nw_oblivious_http_set_context_id(v28, v51);
      v32 = nw_connection_create_with_connection(*(a1 + 16), v22);
      if (v32)
      {
        v33 = v32;
        v34 = nw_connection_copy_endpoint(v32);
        sub_181B80998(v34, v15);
        if ((*(v46 + 48))(v15, 1, v16) != 1)
        {
          v37 = v15;
          v38 = v45;
          sub_181B81180(v37, v45);
          v39 = v44;
          sub_181FE4EE0(v38, v44);
          type metadata accessor for NWParameters();
          v40 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
          v41 = swift_allocObject();
          *(v41 + 24) = 0;
          *(v41 + 16) = v22;
          *(v40 + 16) = v41;
          swift_allocObject();
          swift_unknownObjectRetain();
          v35 = sub_181D4653C(v39, v40, v33);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(*(a6 - 8) + 8))(v52, a6);
          sub_181FDAD5C(v38);
          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        (*(*(a6 - 8) + 8))(v52, a6);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_182079928(v15);
      }

      else
      {
        (*(*(a6 - 8) + 8))(v31, a6);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      v35 = 0;
LABEL_12:
      v36 = sub_182079BAC;
      a5 = v43;
      goto LABEL_13;
    }

    (*(*(a6 - 8) + 8))(v52, a6);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v35 = 0;
    v36 = sub_182079BAC;
LABEL_13:
    (*(*(a5 - 8) + 8))(v53, a5);
    sub_181A554F4(v36);
    return v35;
  }

  __break(1u);
  return result;
}

uint64_t NWConnection.__allocating_init(obliviousHTTPConnection:contextIDForReceiveAEAD:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = *(a1 + 16);
  swift_unknownObjectRetain();
  v15 = nw_protocol_copy_oblivious_http_contexts_definition();
  v16 = nw_connection_copy_connected_parameters_with_protocol(v14, v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v16)
  {
    v31[0] = v13;
    v31[1] = v2;
    v17 = nw_parameters_copy_default_protocol_stack(v16);
    v34 = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = &v34;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_182079BAC;
    *(v19 + 24) = v18;
    v31[2] = v18;
    aBlock[4] = sub_181EC63E0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181EC635C;
    aBlock[3] = &block_descriptor_33;
    v20 = _Block_copy(aBlock);

    v31[3] = v17;
    nw_protocol_stack_iterate_application_protocols(v17, v20);
    _Block_release(v20);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
      return result;
    }

    v22 = v34;
    if (v34)
    {
      v23 = swift_unknownObjectRetain();
      nw_oblivious_http_set_receive_aead_key_and_nonce(v23, 0, 0, 0, 0);
      nw_oblivious_http_set_context_id(v22, v32);
      v24 = nw_connection_create_with_connection(*(a1 + 16), v16);
      if (v24)
      {
        v25 = v24;
        v26 = nw_connection_copy_endpoint(v24);
        sub_181B80998(v26, v6);
        if ((*(v8 + 48))(v6, 1, v7) != 1)
        {
          v27 = v31[0];
          sub_181B81180(v6, v31[0]);
          sub_181FE4EE0(v27, v10);
          type metadata accessor for NWParameters();
          v28 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
          v29 = swift_allocObject();
          *(v29 + 24) = 0;
          *(v29 + 16) = v16;
          *(v28 + 16) = v29;
          swift_allocObject();
          swift_unknownObjectRetain();
          v30 = sub_181D4653C(v10, v28, v25);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          sub_181FDAD5C(v27);

          swift_unknownObjectRelease();
          return v30;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_182079928(v6);
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_10:

    swift_unknownObjectRelease();
    return 0;
  }

  return 0;
}

void *sub_1820794F0(void *result, void *a2)
{
  if (!*a2)
  {
    v3 = result;
    result = nw_protocol_options_is_oblivious_http(result);
    if (result)
    {
      *a2 = v3;
      swift_unknownObjectRetain();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

BOOL NWConnection.updateObliviousHTTPConnection<A, B>(receiveAEADNonce:receiveAEADKey:)()
{
  v1 = *(v0 + 16);
  v2 = nw_protocol_copy_oblivious_http_contexts_definition();
  v3 = nw_connection_copy_protocol_metadata(v1, v2);
  v4 = swift_unknownObjectRelease();
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v4);
    sub_182AD1DC8();
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

uint64_t sub_182079650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = a4 - a3;
    if (a1)
    {
      v9 = a2 - a1;
      v10 = a1;
      v11 = a5;
    }

    else
    {
      v11 = a5;
      v10 = 0;
      v9 = 0;
    }

    v12 = a3;
  }

  else
  {
    if (a1)
    {
      v9 = a2 - a1;
      v10 = a1;
      v11 = a5;
    }

    else
    {
      v11 = a5;
      v10 = 0;
      v9 = 0;
    }

    v12 = 0;
    v8 = 0;
  }

  return a6(v11, v10, v9, v12, v8);
}

uint64_t sub_182079700(uint64_t a1, unint64_t a2, void *a3)
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
      nw_oblivious_http_set_config(v7, v11, v6);
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
  sub_182079868(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_182079868(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_182AD1D58();
  v8 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
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
    goto LABEL_13;
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

    v13 = a4;
    v14 = v8;
  }

  else
  {
    v13 = a4;
    v14 = 0;
    v12 = 0;
  }

  nw_oblivious_http_set_config(v13, v14, v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_182079928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_182079990(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return nw_oblivious_http_set_standalone_aead_key(*(v2 + 16), v4, v3);
}

uint64_t sub_182079BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18207A514();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_182079C08(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_182AD3A78();
  v12 = sub_182AD3A68();
  if (v11)
  {
    if (v12 > 64)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (sub_182AD3A58() <= 63)
    {
      return 1;
    }

    goto LABEL_7;
  }

  if (v12 <= 63)
  {
    goto LABEL_6;
  }

LABEL_3:
  v28 = 63;
  sub_182034764();
  sub_182AD3A48();
  v13 = sub_182AD2EE8();
  (*(v27 + 8))(v10, a1);
  if ((v13 & 1) == 0)
  {
    return 1;
  }

LABEL_7:
  v15 = sub_182AD3A78();
  v16 = sub_182AD3A68();
  if (v15)
  {
    if (v16 > 64)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (sub_182AD3A58() < 0x4000)
    {
      return 2;
    }

    goto LABEL_13;
  }

  if (v16 <= 63)
  {
    goto LABEL_12;
  }

LABEL_9:
  v28 = 0x3FFFLL;
  sub_182034764();
  sub_182AD3A48();
  v17 = sub_182AD2EE8();
  (*(v27 + 8))(v10, a1);
  if ((v17 & 1) == 0)
  {
    return 2;
  }

LABEL_13:
  v18 = sub_182AD3A78();
  v19 = sub_182AD3A68();
  if (v18)
  {
    if (v19 > 64)
    {
      goto LABEL_15;
    }

LABEL_18:
    if (sub_182AD3A58() <= 0x3FFFFFFF)
    {
      return 4;
    }

    goto LABEL_19;
  }

  if (v19 <= 63)
  {
    goto LABEL_18;
  }

LABEL_15:
  v28 = 0x3FFFFFFFLL;
  sub_182034764();
  sub_182AD3A48();
  v20 = sub_182AD2EE8();
  (*(v27 + 8))(v10, a1);
  if ((v20 & 1) == 0)
  {
    return 4;
  }

LABEL_19:
  (*(v27 + 16))(v7, v2, a1);
  if (sub_182AD3A78() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_182AD43D8(), sub_182AD4238(), v21 = sub_182AD2EF8(), result = (*(v27 + 8))(v10, a1), (v21))
  {
    if (sub_182AD3A68() > 63)
    {
      v28 = -1;
      v22 = sub_182AD3A78();
      v23 = sub_182AD3A68();
      if (v22)
      {
        if (v23 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          sub_182AD43D8();
          sub_182AD4238();
          v24 = sub_182AD2ED8();
          (*(v27 + 8))(v10, a1);
          if ((v24 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }

      else if (v23 < 65)
      {
LABEL_29:
        sub_182AD3A58();
        goto LABEL_30;
      }

      sub_181F7D8D8();
      sub_182AD3A48();
      v25 = sub_182AD2EE8();
      (*(v27 + 8))(v10, a1);
      if (v25)
      {
        __break(1u);
        goto LABEL_29;
      }
    }

LABEL_30:
    v26 = sub_182AD3A58();
    (*(v27 + 8))(v7, a1);
    return 8 * (v26 >> 62 == 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_18207A220(uint64_t a1)
{
  result = sub_182079C08(a1);
  if (v2)
  {
    result = sub_182AD3EA8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18207A290(uint64_t a1, unint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2 < 0x40)
  {
    LOBYTE(v4) = a2;
    v2 = &v4 + 1;
    return sub_1820D47C4(&v4, v2);
  }

  if (a2 < 0x4000)
  {
    LOWORD(v4) = bswap32(a2 | 0x4000) >> 16;
    v2 = &v4 + 2;
    return sub_1820D47C4(&v4, v2);
  }

  if (!(a2 >> 30))
  {
    LODWORD(v4) = bswap32(a2 | 0x80000000);
    v2 = &v4 + 4;
    return sub_1820D47C4(&v4, v2);
  }

  if (!(a2 >> 62))
  {
    v4 = bswap64(a2 | 0xC000000000000000);
    v2 = &v5;
    return sub_1820D47C4(&v4, v2);
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_18207A3BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 < 0x40)
  {
    if (a1)
    {
      *(a1 + a3) = a4;
    }

    return 1;
  }

  else if (a4 < 0x4000)
  {
    if (a1)
    {
      *(a1 + a3) = bswap32(a4 | 0x4000) >> 16;
    }

    return 2;
  }

  else if (a4 >> 30)
  {
    if (a4 >> 62)
    {
      result = sub_182AD3EA8();
      __break(1u);
    }

    else
    {
      if (a1)
      {
        *(a1 + a3) = bswap64(a4 | 0xC000000000000000);
      }

      return 8;
    }
  }

  else
  {
    if (a1)
    {
      *(a1 + a3) = bswap32(a4 | 0x80000000);
    }

    return 4;
  }

  return result;
}

unint64_t sub_18207A4C0()
{
  result = qword_1EA839EB0;
  if (!qword_1EA839EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839EB0);
  }

  return result;
}

unint64_t sub_18207A514()
{
  result = qword_1EA839EB8;
  if (!qword_1EA839EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839EB8);
  }

  return result;
}

uint64_t sub_18207A568(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_18224F288(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_182256260();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for NWActorID();
  sub_181B81280(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for NWActorID);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_181FAEB50(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_18207A62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_18224F3EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182257300();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610);
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_181FAC100(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t NWInterface.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

  result = swift_unknownObjectRelease();
  *a2 = v3;
  return result;
}

uint64_t NWInterface.nw.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for __NWInterface();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
  swift_retain_n();
  v5 = swift_slowAlloc();
  *&v3[v4] = v5;
  *&v3[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v3[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v1;
  *v5 = 0;
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return nw_interface_bridge(v6);
}

_OWORD *NWInterface.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_181C8DF10(a1, a2, &v10, v11);
  type metadata accessor for Interface.BackingClass();
  result = swift_allocObject();
  v5 = v12[0];
  result[9] = v11[8];
  result[10] = v5;
  *(result + 170) = *(v12 + 10);
  v6 = v11[5];
  result[5] = v11[4];
  result[6] = v6;
  v7 = v11[7];
  result[7] = v11[6];
  result[8] = v7;
  v8 = v11[1];
  result[1] = v11[0];
  result[2] = v8;
  v9 = v11[3];
  result[3] = v11[2];
  result[4] = v9;
  *a3 = result;
  return result;
}

_OWORD *NWInterface.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_181E378A4(a1, &v9, v10);
  type metadata accessor for Interface.BackingClass();
  result = swift_allocObject();
  v4 = v11[0];
  result[9] = v10[8];
  result[10] = v4;
  *(result + 170) = *(v11 + 10);
  v5 = v10[5];
  result[5] = v10[4];
  result[6] = v5;
  v6 = v10[7];
  result[7] = v10[6];
  result[8] = v6;
  v7 = v10[1];
  result[1] = v10[0];
  result[2] = v7;
  v8 = v10[3];
  result[3] = v10[2];
  result[4] = v8;
  *a2 = result;
  return result;
}

uint64_t NWInterface.RadioType.Cellular.NewRadio5GVariant.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t static NWInterface.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  v3 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v6, &v5);

  return v3 & 1;
}

uint64_t NWInterface.hash(into:)()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 185);
  MEMORY[0x1865DB070](*(*v0 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF2220[v1]);
  return MEMORY[0x1865DB070](qword_182AF2248[v2]);
}

uint64_t NWInterface.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF2220[v2]);
  MEMORY[0x1865DB070](qword_182AF2248[v3]);
  return sub_182AD4558();
}

uint64_t sub_18207AC54()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF2220[v2]);
  MEMORY[0x1865DB070](qword_182AF2248[v3]);
  return sub_182AD4558();
}

uint64_t sub_18207ACF0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 185);
  MEMORY[0x1865DB070](*(*v0 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF2220[v1]);
  return MEMORY[0x1865DB070](qword_182AF2248[v2]);
}

uint64_t sub_18207AD6C()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF2220[v2]);
  MEMORY[0x1865DB070](qword_182AF2248[v3]);
  return sub_182AD4558();
}

uint64_t sub_18207AE04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  v3 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v6, &v5);

  return v3 & 1;
}

Swift::Bool __swiftcall NWPath.usesInterfaceSubtype(_:)(Network::NWInterface::InterfaceSubtype a1)
{
  v2 = a1;
  v3 = *(v1 + *(type metadata accessor for NWPath(0) + 52));
  if (v3)
  {
    LOBYTE(v3) = nw_path_uses_interface_subtype(v3, dword_182AF2270[*v2]);
  }

  return v3;
}

uint64_t sub_18207AFB4(uint64_t (*a1)(void))
{
  result = *(v1 + *(type metadata accessor for NWPath(0) + 52));
  if (result)
  {
    return a1();
  }

  return result;
}

void *NWPath.linkQuality.getter@<X0>(char *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for NWPath(0) + 52));
  if (!result)
  {
    goto LABEL_6;
  }

  result = nw_path_get_link_quality(result);
  switch(result)
  {
    case 0x1E:
      v4 = 3;
      break;
    case 0x14:
      v4 = 2;
      break;
    case 0xA:
      v4 = 1;
      break;
    default:
LABEL_6:
      v4 = 0;
      break;
  }

  *a1 = v4;
  return result;
}

BOOL static NWPath.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NWPath(0) + 52);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  result = (v5 | v6) == 0;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return nw_path_is_equal(v5, v6);
  }

  return result;
}

BOOL sub_18207B0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 52);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    return nw_path_is_equal(v4, v5);
  }

  return result;
}

void sub_18207B124(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(*a1 + 16);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_181AB5D28(v7 + v8, v6, &qword_1EA839EC8);
  v10 = type metadata accessor for NWPath(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v6, 1, v10) == 1)
  {
    sub_181B7BDC0(0, a2);
    if (v11(v6, 1, v10) != 1)
    {
      sub_181F49A88(v6, &qword_1EA839EC8);
    }
  }

  else
  {
    sub_181AA38E8(v6, a2, type metadata accessor for NWPath);
  }

  os_unfair_lock_unlock((v7 + v9));
}

uint64_t sub_18207B2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_181B811E4(a1, v6, type metadata accessor for NWPath);
  v7 = *(*a2 + 16);
  v12 = v6;
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_18207E2DC(v7 + v8);
  os_unfair_lock_unlock((v7 + v9));
  return sub_181B81280(v6, type metadata accessor for NWPath);
}

uint64_t NWPathMonitor.currentPath.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_18207D7E4(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  return sub_181B81280(a1, type metadata accessor for NWPath);
}

uint64_t sub_18207B4C4(uint64_t a1, uint64_t a2)
{
  sub_181F49A88(a1, &qword_1EA839EC8);
  sub_181B811E4(a2, a1, type metadata accessor for NWPath);
  v4 = type metadata accessor for NWPath(0);
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

void (*NWPathMonitor.currentPath.modify(uint64_t *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *v5 = v7;
  v9 = type metadata accessor for NWPath(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 8) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 8) = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v5 + 16) = v12;
  v14 = *(v1 + 16);
  *(v5 + 24) = v14;
  v15 = *v14;
  v16 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
  *(v5 + 32) = v16;
  v17 = *(v15 + 48);
  *(v5 + 40) = v17;
  v18 = (v17 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v18));
  sub_181AB5D28(v14 + v16, v8, &qword_1EA839EC8);
  v19 = *(v10 + 48);
  if (v19(v8, 1, v9) == 1)
  {
    sub_181B7BDC0(0, v13);
    if (v19(v8, 1, v9) != 1)
    {
      sub_181F49A88(v8, &qword_1EA839EC8);
    }
  }

  else
  {
    sub_181AA38E8(v8, v13, type metadata accessor for NWPath);
  }

  os_unfair_lock_unlock((v14 + v18));
  return sub_18207B7C4;
}

void sub_18207B7C4(void ***a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  v8 = (*(*a1 + 10) + 3) & 0x1FFFFFFFCLL;
  if (a2)
  {
    v9 = sub_181B811E4((*a1)[2], v5, type metadata accessor for NWPath);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock(&v4[v8]);
    sub_18207E2DC(v3 + v4);
    os_unfair_lock_unlock(&v4[v8]);
    sub_181B81280(v5, type metadata accessor for NWPath);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(&v4[v8]);
    sub_18207E2DC(v3 + v4);
    os_unfair_lock_unlock(&v4[v8]);
  }

  sub_181B81280(v6, type metadata accessor for NWPath);
  free(v6);
  free(v5);
  free(v7);
  free(v2);
}

uint64_t (*NWPathMonitor.pathUpdateHandler.getter())()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = (v1 + *(type metadata accessor for NWPathMonitor.LockedState(0) + 20) + v2);
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_181C571A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_181AA39C0(v5);
  os_unfair_lock_unlock((v1 + v3));
  if (!v5)
  {
    return 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  return sub_181C4DBD0;
}

uint64_t sub_18207BA5C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NWPathMonitor.pathUpdateHandler.getter();
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

uint64_t sub_18207BAF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    a1[2] = v4;
    a1[3] = v3;
    v5 = sub_181F9DC70;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  sub_181AA39C0(v4);
  os_unfair_lock_lock((v6 + v8));
  sub_18207E31C(v6 + v7);
  os_unfair_lock_unlock((v6 + v8));
  return sub_181A554F4(v5);
}

void (*NWPathMonitor.pathUpdateHandler.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 16) = v5;
  v6 = *v5;
  v7 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  *(v3 + 24) = v7;
  v8 = *(v6 + 48);
  *(v3 + 32) = v8;
  v9 = (v8 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v9));
  v10 = (v5 + *(type metadata accessor for NWPathMonitor.LockedState(0) + 20) + v7);
  v11 = *v10;
  v12 = v10[1];
  if (*v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    v14 = sub_181F9DBE4;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  sub_181AA39C0(v11);
  os_unfair_lock_unlock((v5 + v9));
  if (v11)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v16 = sub_181F9DC70;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  *v4 = v16;
  v4[1] = v15;
  return sub_18207BDC4;
}

void sub_18207BDC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*(*a1 + 8) + 3) & 0x1FFFFFFFCLL;
  if (a2)
  {
    sub_181AA39C0(v3);
    os_unfair_lock_lock((v5 + v6));
    sub_18207E31C(v5 + v4);
    os_unfair_lock_unlock((v5 + v6));
    sub_181A554F4(v3);
    sub_181A554F4(*v2);
  }

  else
  {
    os_unfair_lock_lock((v5 + v6));
    sub_18207E31C(v5 + v4);
    os_unfair_lock_unlock((v5 + v6));
    sub_181A554F4(v3);
  }

  free(v2);
}

void *NWPathMonitor.queue.getter()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + *(type metadata accessor for NWPathMonitor.LockedState(0) + 28));
  v5 = v4;
  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

uint64_t NWPathMonitor.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NWPathMonitor.init(_:)(a1);
  return v2;
}

uint64_t NWPathMonitor.init(_:)(uint64_t a1)
{
  locked = type metadata accessor for NWPathMonitor.LockedState(0);
  v4 = (locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWPath(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = &v6[v4[7]];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v6[v4[8]] = 1;
  *&v6[v4[9]] = 0;
  *&v6[v4[10]] = MEMORY[0x1E69E7CC8];
  v6[v4[11]] = 0;
  v6[v4[12]] = 0;
  *&v6[v4[13]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED0);
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_181AA38E8(v6, v9 + *(*v9 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for NWPathMonitor.LockedState);
  *(v1 + 16) = v9;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t NWPathMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NWPathMonitor.init()();
  return v0;
}

uint64_t NWPathMonitor.deinit()
{
  nw_path_monitor_cancel(*(v0 + 24));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t static NWPathMonitor.ethernetChannel.getter()
{
  v0 = nw_path_monitor_create_for_ethernet_channel();
  v1 = swift_allocObject();
  NWPathMonitor.init(_:)(v0);
  return v1;
}

uint64_t NWPathMonitor.__allocating_init(requiredInterfaceType:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  NWPathMonitor.init(requiredInterfaceType:)(a1);
  return v2;
}

uint64_t NWPathMonitor.init(requiredInterfaceType:)(unsigned __int8 *a1)
{
  locked = type metadata accessor for NWPathMonitor.LockedState(0);
  v4 = (locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v7 = type metadata accessor for NWPath(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = &v6[v4[7]];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v6[v4[8]] = 1;
  *&v6[v4[9]] = 0;
  *&v6[v4[10]] = MEMORY[0x1E69E7CC8];
  v6[v4[11]] = 0;
  v6[v4[12]] = 0;
  *&v6[v4[13]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED0);
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_181AA38E8(v6, v9 + *(*v9 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for NWPathMonitor.LockedState);
  *(v1 + 16) = v9;
  *(v1 + 24) = nw_path_monitor_create_with_type(a1);
  return v1;
}

uint64_t NWPathMonitor.__allocating_init(prohibitedInterfaceTypes:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_18207D800(a1);

  return v2;
}

uint64_t NWPathMonitor.init(prohibitedInterfaceTypes:)(uint64_t a1)
{
  v1 = sub_18207D800(a1);

  return v1;
}

uint64_t NWPathMonitor.debugDescription.getter()
{
  v1 = [*(v0 + 24) description];
  v2 = sub_182AD2F88();

  return v2;
}

int *sub_18207C500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F40);
  v5 = MEMORY[0x1EEE9AC00](v4);
  *&v9[-v6] = 1;
  (*(v7 + 104))(&v9[-v6], *MEMORY[0x1E69E8640], v5);
  v10 = a1;
  v11 = a2;
  type metadata accessor for NWPath(0);
  sub_182AD35F8();
  result = type metadata accessor for NWPathMonitor.LockedState(0);
  if ((*(a1 + result[9]) & 1) == 0)
  {
    return sub_181AA3AB8(a1);
  }

  return result;
}

int *sub_18207C640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v5 = sub_182AD2698();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839F78);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = type metadata accessor for NWPath(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v41 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F80);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v41 - v20;
  result = type metadata accessor for NWPathMonitor.LockedState(0);
  if ((*(a2 + result[10]) & 1) == 0)
  {
    v33 = result[6];
    v34 = *(a2 + v33);
    if (!__OFADD__(v34, 1))
    {
      *(a2 + v33) = v34 + 1;
      v35 = swift_allocObject();
      *(v35 + 16) = a3;
      *(v35 + 24) = v34;

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610);
      v37 = v47;
      sub_182AD3568();
      v38 = *(v36 - 8);
      (*(v38 + 16))(v21, v37, v36);
      (*(v38 + 56))(v21, 0, 1, v36);
      sub_1820FA9D4(v21, v34);
      sub_181AB5D28(a2, v13, &qword_1EA839EC8);
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        return sub_181F49A88(v13, &qword_1EA839EC8);
      }

      v39 = v43;
      sub_181AA38E8(v13, v43, type metadata accessor for NWPath);
      sub_181B811E4(v39, v42, type metadata accessor for NWPath);
      v40 = v44;
      sub_182AD3588();
      (*(v45 + 8))(v40, v46);
      return sub_181B81280(v39, type metadata accessor for NWPath);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  result = __nwlog_path_log();
  if (!result)
  {
    goto LABEL_13;
  }

  sub_182AD26A8();

  v23 = sub_182AD2678();
  v24 = sub_182AD38B8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136315138;
    v27 = [*(a3 + 24) description];
    v28 = sub_182AD2F88();
    v29 = v5;
    v31 = v30;

    v32 = sub_181C64FFC(v28, v31, &v48);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_181A37000, v23, v24, "%s Attempted to fetch paths for cancelled monitor", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1865DF520](v26, -1, -1);
    MEMORY[0x1865DF520](v25, -1, -1);

    (*(v6 + 8))(v8, v29);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610);
  return sub_182AD3598();
}

void sub_18207CC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = *(a2 + 16);
  v9 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v9));
  type metadata accessor for NWPathMonitor.LockedState(0);
  sub_18207A62C(a3, v7);
  sub_181F49A88(v7, &unk_1EA839F80);
  os_unfair_lock_unlock((v8 + v9));
}

uint64_t NWPathMonitor.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED8);
  *v3 = v1;
  v3[1] = sub_181F54964;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_18207CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_18207CEB8;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_18207CEB8()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_182AD34A8();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_18207D048;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_182AD34A8();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_18207D048()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t NWPathMonitor.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EE0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *(v0 + 16);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_18207D9F4(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
  sub_182AD35B8();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_18207D258()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EE0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *(*v0 + 16);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_18207E2B0(v5 + v6);
  os_unfair_lock_unlock((v5 + v7));
  sub_182AD35B8();

  return (*(v2 + 8))(v4, v1);
}

uint64_t NWInterface.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45C8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v5 = sub_182AD42A8();
    v6 = nw_interface_create_with_index(v5);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

      swift_unknownObjectRelease();
      *a2 = v7;
    }

    else
    {
      v8 = sub_182AD3C98();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40);
      *v10 = &type metadata for NWInterface;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_182AD45A8();
      sub_182AD3C88();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NWInterface.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for __NWInterface();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v7 = swift_slowAlloc();
  *&v5[v6] = v7;
  *&v5[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v5[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v3;
  *v7 = 0;
  v16.receiver = v5;
  v16.super_class = v4;
  v8 = objc_msgSendSuper2(&v16, sel_init);
  v9 = nw_interface_bridge(v8);
  if (v9)
  {
    nw_interface_get_index(v9);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_182AD4618();
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    sub_182AD42D8();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v11 = sub_182AD3CB8();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839510);
    v13[3] = &type metadata for NWInterface;
    *v13 = v3;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    sub_182AD45F8();
    sub_182AD3C88();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
    return swift_willThrow();
  }
}

uint64_t sub_18207D800(uint64_t a1)
{
  locked = type metadata accessor for NWPathMonitor.LockedState(0);
  v4 = (locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWPath(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = &v6[v4[7]];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v6[v4[8]] = 1;
  *&v6[v4[9]] = 0;
  *&v6[v4[10]] = MEMORY[0x1E69E7CC8];
  v6[v4[11]] = 0;
  v6[v4[12]] = 0;
  *&v6[v4[13]] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839ED0);
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_181AA38E8(v6, v9 + *(*v9 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for NWPathMonitor.LockedState);
  *(v1 + 16) = v9;
  *(v1 + 24) = nw_path_monitor_create();
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      v12 = *v11++;
      nw_path_monitor_prohibit_interface_type(*(v1 + 24), v12);
      --v10;
    }

    while (v10);
  }

  return v1;
}

unint64_t sub_18207DA14()
{
  result = qword_1EA839EE8;
  if (!qword_1EA839EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839EE8);
  }

  return result;
}

unint64_t sub_18207DA6C()
{
  result = qword_1EA839EF0;
  if (!qword_1EA839EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839EF0);
  }

  return result;
}

unint64_t sub_18207DAC4()
{
  result = qword_1EA839EF8;
  if (!qword_1EA839EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839EF8);
  }

  return result;
}

unint64_t sub_18207DB1C()
{
  result = qword_1EA839F00;
  if (!qword_1EA839F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839F00);
  }

  return result;
}

unint64_t sub_18207DB74()
{
  result = qword_1EA839F08;
  if (!qword_1EA839F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839F08);
  }

  return result;
}

unint64_t sub_18207DBCC()
{
  result = qword_1EA839F10;
  if (!qword_1EA839F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839F10);
  }

  return result;
}

unint64_t sub_18207DC24()
{
  result = qword_1EA839F18;
  if (!qword_1EA839F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839F18);
  }

  return result;
}

unint64_t sub_18207DC7C()
{
  result = qword_1EA839F20;
  if (!qword_1EA839F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839F20);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t storeEnumTagSinglePayload for NWInterface.RadioType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 253 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 253) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 3)
  {
    v4 = 0;
  }

  if (a2 > 2)
  {
    v5 = ((a2 - 3) >> 8) + 1;
    *result = a2 - 3;
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
    *result = (16 * (a2 & 1)) | 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWInterface.RadioType.Cellular(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7C)
  {
    goto LABEL_17;
  }

  if (a2 + 132 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 132) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 132;
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

      return (*a1 | (v4 << 8)) - 132;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 132;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for NWInterface.RadioType.Cellular(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7C)
  {
    v4 = 0;
  }

  if (a2 > 0x7B)
  {
    v5 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_18207E060(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 | 0xFFFFFFFE) + 2 * (v1 >> 5);
  }
}

_BYTE *sub_18207E08C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = (a2 & 1 | (32 * (a2 >> 1))) + 32;
  }

  return result;
}

void sub_18207E180()
{
  sub_181AA2924(319, &unk_1EA836910, 255, type metadata accessor for NWPath, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18207E248(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_182AD39B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18207E34C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v6 = a1;
  LOBYTE(v7) = atomic_load_explicit(v5(), memory_order_acquire);
  if (v7)
  {
    should_abort = __nwlog_should_abort("cannot insert during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v9 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v10 = *&v6[v9];
  if (*(v10 + 24) < a3)
  {
    v10 = __nwlog_should_abort("array index out of range");

    if ((v10 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  swift_beginAccess();
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v11 = *(v10 + 24);
  if (v11 < a3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *&v6[v9];
  if (v14[2] >= v12 && (isUniquelyReferenced_nonNull_native & 1) != 0)
  {
    v15 = (v14 + 5);
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  sub_181ACC600(isUniquelyReferenced_nonNull_native, v12);
  v14 = *&v6[v9];
  v15 = (v14 + 5);
  if (!a3)
  {
LABEL_16:
    v16 = v14[4];
    if (v16)
    {
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        __break(1u);
LABEL_20:

        sub_1820800A8(v15, 1uLL, a3, v14 + 2, &v22);
        if (v22)
        {
          *v22 = a2;
LABEL_25:
          swift_unknownObjectRetain();
          goto LABEL_26;
        }

LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v14[2];
      v17 = __OFSUB__(v19, 1);
      v18 = v19 - 1;
      if (v17)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    *&v15[8 * v18] = a2;
    v14[4] = v18;
    v20 = v14[3];
    v17 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v17)
    {
      v14[3] = v21;

      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_13:
  if (v14[3] != a3)
  {
    goto LABEL_20;
  }

  sub_18207F348(a2, v14 + 2, v15);

LABEL_26:
  swift_endAccess();
}

uint64_t _nw_array_insert_object_at_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  a4(a1, a2, a3);

  return swift_unknownObjectRelease();
}

void sub_18207E5E0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v6 = a1;
  LOBYTE(v7) = atomic_load_explicit(v5(), memory_order_acquire);
  if (v7)
  {
    should_abort = __nwlog_should_abort("cannot set object during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v9 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  if (*(*&v6[v9] + 24) <= a3)
  {
    v13 = __nwlog_should_abort("array index out of range");

    if ((v13 & 1) == 0)
    {
      return;
    }

LABEL_14:
    __break(1u);
    return;
  }

  swift_beginAccess();
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_181D895A8();
  }

  v10 = *&v6[v9];
  v11 = *(v10 + 32) + a3;
  v12 = *(v10 + 16);
  if (v11 < v12)
  {
    v12 = 0;
  }

  *(v10 + 8 * (v11 - v12) + 40) = a2;
  swift_unknownObjectRetain();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_18207E74C(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v5 = a1;
  swift_beginAccess();
  v6 = *&a1[v4];
  if (*(v6 + 24) > a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      swift_unknownObjectRetain();

      return;
    }

    __break(1u);
    goto LABEL_7;
  }

  should_abort = __nwlog_should_abort("array index out of range");

  if (should_abort)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_18207E814(char *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7Network7NWArray_applyCount;
  v5 = *(**&a1[OBJC_IVAR____TtC7Network7NWArray_applyCount] + 136);
  v6 = a1;
  v7 = a2;
  if (__swp(0xFFFFFFFF, v5()))
  {
    should_abort = __nwlog_should_abort("cannot assign during apply");

    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v9 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v10 = *&v7[v9];
  v11 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  *&v6[v11] = v10;

  v13 = (*(**&a1[v4] + 136))(v12);
  __swp(v14, v13);
  if (v14 != 255)
  {
    v15 = __nwlog_should_abort("unexpected value for apply count");

    if ((v15 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_18207E98C(char *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7Network7NWArray_deque;
  v5 = a1;
  v6 = a2;
  swift_beginAccess();
  v7 = *&a1[v4];
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v9 = *&v6[v8];
  v10 = v7[3];
  if (v10 != v9[3])
  {

    return 0;
  }

  if (v10)
  {
    v11 = v7 == v9;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    return 1;
  }

  v13 = v7[4] + v10;
  if (v7[2] < v13)
  {
    v13 = v7[2];
  }

  v25 = v7[4];
  v26 = v13;
  v14 = v9[4];
  v15 = v14 + v10;
  if (v9[2] < v15)
  {
    v15 = v9[2];
  }

  v23 = v9[4];
  v24 = v15;
  swift_retain_n();
  v16 = swift_retain_n();
  v17 = v9;
  while (1)
  {
    v18 = v25;
    if (v25 != v26)
    {
      goto LABEL_17;
    }

    v19 = sub_181AC81FC(v16);
    if (v19)
    {
      v18 = v25;
LABEL_17:
      v25 = v18 + 1;
      v20 = v7[v18 + 5];
      v19 = swift_unknownObjectRetain();
      goto LABEL_19;
    }

    v20 = 0;
LABEL_19:
    if (v14 == v24)
    {
      break;
    }

LABEL_22:
    v23 = v14 + 1;
    v21 = v17[v14 + 5];
    swift_unknownObjectRetain();
    if (!v20)
    {
      goto LABEL_30;
    }

    if (!v21)
    {
      goto LABEL_27;
    }

    swift_unknownObjectRelease();
    v16 = swift_unknownObjectRelease();
    ++v14;
    if (v20 != v21)
    {

      goto LABEL_28;
    }
  }

  v17 = v9;
  if (sub_181AC81FC(v19))
  {
    v14 = v23;
    goto LABEL_22;
  }

  if (v20)
  {
LABEL_27:

    swift_unknownObjectRelease();
LABEL_28:

LABEL_32:
    v22 = 0;
    goto LABEL_33;
  }

  v21 = 0;
LABEL_30:

  if (v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v22 = 1;
LABEL_33:

  return v22;
}

uint64_t sub_18207EBD4(void *a1, void *a2)
{
  v4 = type metadata accessor for NWArray();
  v5 = a1;
  v6 = a2;
  v7 = [objc_allocWithZone(v4) init];
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v9 = *&v5[v8];
  v10 = OBJC_IVAR____TtC7Network7NWArray_deque;
  result = swift_beginAccess();
  v12 = *&v6[v10];
  v13 = (v12 + 2);
  v73 = v9;
  v14 = (v12 + 5);
  v15 = v12[3];
  v16 = v12[4];
  v17 = v15 + v16;
  v68 = v6;
  if (v12[2] >= v15 + v16)
  {
    v34 = v12[3];
    if (v17 < v16)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    if (__OFSUB__(v17, v16))
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v35 = v9[3];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    swift_retain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v9[2] < v36 || (v22 = v9, (isUniquelyReferenced_nonNull_native & 1) == 0))
    {
      sub_181ACC600(isUniquelyReferenced_nonNull_native, v36);
      v22 = v9;
    }

    sub_181B64750((v22 + 2), (v22 + 5), v14 + 8 * v16, v34, sub_181D8977C, sub_181F66038);

LABEL_97:
    v64 = OBJC_IVAR____TtC7Network7NWArray_deque;
    swift_beginAccess();
    *&v7[v64] = v22;

    return v7;
  }

  v18 = v9[3];
  v19 = v18 + v15;
  v20 = __OFADD__(v18, v15);
  swift_retain_n();

  if (v20)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v67 = v12;
  v65 = v5;
  v66 = v7;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  if (v9[2] < v19 || (v22 = v9, (v21 & 1) == 0))
  {
    sub_181ACC600(v21, v19);
    v22 = v9;
  }

  result = sub_18207F44C(v22 + 2, (v22 + 5), &v74);
  v24 = v76;
  v23 = v77;
  v25 = v78;
  v26 = v75;
  if ((v78 & 1) == 0)
  {
    v27 = v67[3];
    if (v75 < v27)
    {
      LOBYTE(v28) = 0;
      v13 = 0;
      v29 = v74;
      v30 = v67[4];
      v31 = v30 + v27;
      if (v67[2] < v31)
      {
        v31 = v67[2];
      }

      v79 = v67;
      v80 = v30;
      v81 = v31;
      v32 = v75;
      if (v75)
      {
        goto LABEL_19;
      }

LABEL_14:
      if (v28)
      {
        v13 = v32;
        goto LABEL_55;
      }

      if (v23 <= 0)
      {
        goto LABEL_56;
      }

      if (v30 == v81)
      {
        result = sub_181AC81FC(result);
        v13 = 0;
        if ((result & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v13 = 0;
      }

      LOBYTE(v28) = 1;
      v29 = v24;
      v32 = v23;
      while (1)
      {
        v33 = v80;
        v30 = ++v80;
        if (!v29)
        {
          goto LABEL_119;
        }

        result = v79[v33 + 5];
        *(v29 + 8 * v13) = result;
        v54 = __OFADD__(v13++, 1);
        if (v54)
        {
          goto LABEL_110;
        }

        result = swift_unknownObjectRetain();
        if (v13 == v32)
        {
          goto LABEL_14;
        }

LABEL_19:
        if (v30 == v81)
        {
          result = sub_181AC81FC(result);
          if ((result & 1) == 0)
          {
            goto LABEL_102;
          }
        }
      }
    }
  }

  result = sub_182080C10(v13, v14, v74, v75, v67, sub_1820E504C);
  v41 = result;
  v70 = result;
  v71 = v38;
  v72 = v39;
  if (v40 == v26)
  {
    v42 = v25;
  }

  else
  {
    v42 = 1;
  }

  if (v42)
  {
    v32 = v40;
    goto LABEL_53;
  }

  v28 = v23 - 1;
  if (v23 >= 1)
  {
    v43 = 0;
    if (v38 != v39)
    {
      goto LABEL_44;
    }

LABEL_42:
    result = sub_181AC81FC(result);
    if ((result & 1) == 0)
    {
      goto LABEL_99;
    }

    v41 = v70;
    v38 = v71;
LABEL_44:
    while (1)
    {
      v44 = v38 + 1;
      v71 = v38 + 1;
      if (!v24)
      {
        goto LABEL_120;
      }

      *(v24 + 8 * v43) = *(v41 + 8 * v38 + 40);
      if (v28 == v43)
      {
        result = swift_unknownObjectRetain();
        v32 = v26 + v23;
        if (__OFADD__(v26, v23))
        {
          goto LABEL_101;
        }

        goto LABEL_52;
      }

      ++v43;
      result = swift_unknownObjectRetain();
      v38 = v44;
      if (v44 == v72)
      {
        goto LABEL_42;
      }
    }
  }

  v32 = v26;
LABEL_52:
  while (2)
  {
    v41 = v70;
    v38 = v71;
    v39 = v72;
LABEL_53:
    v79 = v41;
    v80 = v38;
    v81 = v39;
LABEL_57:
    v45 = v22[3];
    v54 = __OFADD__(v45, v32);
    v46 = v45 + v32;
    if (v54)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v22[3] = v46;
    v47 = v80;
    v70 = v79;
    v71 = v80;
    v72 = v81;
    if (v80 != v81)
    {
      goto LABEL_61;
    }

LABEL_59:
    result = sub_181AC81FC(result);
    if ((result & 1) == 0)
    {

      v7 = v66;
      goto LABEL_97;
    }

    v47 = v71;
    v46 = v22[3];
    while (1)
    {
LABEL_61:
      v43 = v47 + 1;
      v71 = v47 + 1;
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v49 = *(v70 + 8 * v47 + 40);
      swift_unknownObjectRetain();
      v22 = v73;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v73[2] < v48 || (result & 1) == 0)
      {
        result = sub_181ACC600(result, v48);
        v22 = v73;
      }

      v50 = v22[3];
      v51 = v22[4];
      v54 = __OFADD__(v51, v50);
      v52 = v51 + v50;
      if (v54)
      {
        goto LABEL_105;
      }

      if (v50 < 0)
      {
        if (v52 < 0)
        {
          v56 = v22[2];
          v54 = __OFADD__(v52, v56);
          v52 += v56;
          if (v54)
          {
            goto LABEL_111;
          }
        }
      }

      else
      {
        v53 = v22[2];
        v54 = __OFSUB__(v52, v53);
        v55 = v52 - v53;
        if (v55 < 0 == v54)
        {
          v52 = v55;
          if (v54)
          {
            goto LABEL_109;
          }
        }
      }

      v22[v52 + 5] = v49;
      v54 = __OFADD__(v50, 1);
      v57 = v50 + 1;
      if (v54)
      {
        goto LABEL_106;
      }

      v22[3] = v57;
      result = sub_18207F44C(v22 + 2, (v22 + 5), &v79);
      v58 = 0;
      v59 = 0;
      v26 = v79;
      v13 = v80;
      v60 = v81;
      v28 = v82;
      v61 = v83 | (v82 < 1);
      v69 = v80;
      if (v80)
      {
        break;
      }

LABEL_75:
      if (v58)
      {
        v59 = v13;
        goto LABEL_90;
      }

      if ((v61 & 1) == 0)
      {
        if (v43 != v72)
        {
          v59 = 0;
LABEL_84:
          v58 = 1;
          v26 = v60;
          v13 = v28;
          goto LABEL_85;
        }

        result = sub_181AC81FC(result);
        v59 = 0;
        if (result)
        {
          goto LABEL_84;
        }

LABEL_90:
        v13 = v69 + v59;
        if (__OFADD__(v69, v59))
        {
          goto LABEL_108;
        }
      }

LABEL_91:
      v63 = v22[3];
      v54 = __OFADD__(v63, v13);
      v46 = v63 + v13;
      if (v54)
      {
        goto LABEL_107;
      }

      v22[3] = v46;
      v47 = v71;
      if (v71 == v72)
      {
        goto LABEL_59;
      }
    }

    while (1)
    {
      if (v43 == v72)
      {
        result = sub_181AC81FC(result);
        if ((result & 1) == 0)
        {
          v13 = v59;
          if (v58)
          {
            goto LABEL_90;
          }

          goto LABEL_91;
        }
      }

LABEL_85:
      v62 = v71;
      v43 = ++v71;
      if (!v26)
      {
        goto LABEL_112;
      }

      result = *(v70 + 8 * v62 + 40);
      *(v26 + 8 * v59) = result;
      v54 = __OFADD__(v59++, 1);
      if (v54)
      {
        break;
      }

      result = swift_unknownObjectRetain();
      if (v59 == v13)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_99:
    v54 = __OFADD__(v26, v43);
    v32 = v26 + v43;
    if (!v54)
    {
      continue;
    }

    break;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  if ((v28 & 1) == 0)
  {

    v32 = v13;
    goto LABEL_57;
  }

LABEL_55:
  v32 = v26 + v13;
  if (!__OFADD__(v26, v13))
  {
LABEL_56:

    goto LABEL_57;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
  return result;
}

uint64_t sub_18207F280(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[1];
  v5 = a3[2];
  v7 = __OFADD__(v5, v4);
  v6 = v5 + v4;
  if (!v7)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, *a3);
      if (v6 < *a3 || (v6 -= *a3, !v7))
      {
LABEL_9:
        v8 = (a4 + 16 * v6);
        *v8 = a1;
        v8[1] = a2;
        v7 = __OFADD__(v4, 1);
        v9 = v4 + 1;
        if (!v7)
        {
          a3[1] = v9;
          return sub_181B2C3E0(a1, a2);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 < 0)
    {
      v7 = __OFADD__(v6, *a3);
      v6 += *a3;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return a1;
}

uint64_t sub_18207F2DC(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4[1];
  v5 = a4[2];
  v8 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (!v8)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *a4);
      if (v7 < *a4 || (v7 -= *a4, !v8))
      {
LABEL_9:
        v9 = (a5 + 24 * v7);
        *v9 = result;
        v9[1] = a2;
        v9[2] = a3;
        v10 = a4[1];
        v8 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v8)
        {
          a4[1] = v11;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *a4);
      v7 += *a4;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_18207F348(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *a2);
      if (v5 < *a2 || (v5 -= *a2, !v6))
      {
LABEL_9:
        *(a3 + 8 * v5) = result;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          a2[1] = v7;
          return swift_unknownObjectRetain();
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *a2);
      v5 += *a2;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_18207F3A0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v7 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = *result;
  if (v5 < 0)
  {
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v4 >= v6)
  {
    goto LABEL_14;
  }

  if (v5 < v3)
  {
    v8 = v3 - v5;
    if (!__OFSUB__(v3, v5))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v8 = 0;
LABEL_15:
    v9 = 0;
    v3 = 0;
    v10 = 1;
LABEL_22:
    *a3 = a2 + 16 * v5;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v3;
    *(a3 + 32) = v10;
    return result;
  }

  v8 = v6 - v5;
  if (!__OFSUB__(v6, v5))
  {
    if ((v3 & 0x8000000000000000) == 0 && v6 >= v5)
    {
      v10 = v3 == 0;
      if (v3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_18207F44C@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v7 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = *result;
  if (v5 < 0)
  {
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v4 >= v6)
  {
    goto LABEL_14;
  }

  if (v5 < v3)
  {
    v8 = v3 - v5;
    if (!__OFSUB__(v3, v5))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v8 = 0;
LABEL_15:
    v9 = 0;
    v3 = 0;
    v10 = 1;
LABEL_22:
    *a3 = a2 + 8 * v5;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v3;
    *(a3 + 32) = v10;
    return result;
  }

  v8 = v6 - v5;
  if (!__OFSUB__(v6, v5))
  {
    if ((v3 & 0x8000000000000000) == 0 && v6 >= v5)
    {
      v10 = v3 == 0;
      if (v3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_18207F4F8@<X0>(char *__src@<X3>, unint64_t result@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X2>, uint64_t a5@<X8>)
{
  v9 = a4[1];
  v10 = v9 - a3;
  if (__OFSUB__(v9, a3))
  {
    __break(1u);
    goto LABEL_171;
  }

  v13 = result;
  v14 = a4[2];
  if (v10 <= a3)
  {
    goto LABEL_10;
  }

  v15 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = v14 - result;
  if (__OFADD__(v14, v15))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v15 < 0)
  {
LABEL_25:
    v9 = *a4;
    if (v6 < 0)
    {
      v16 = __OFADD__(v6, v9);
      v6 += v9;
      if (v16)
      {
        goto LABEL_190;
      }
    }

LABEL_27:
    v20 = v14 + a3;
    if (v14 + a3 >= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v10 = v20 - v5;
    v21 = v20 - v5 + v15;
    if (!__OFADD__(v20 - v5, v15))
    {
      if (v15 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v9);
      if (v21 < v9 || (v21 -= v9, !v22))
      {
LABEL_49:
        if (v10 <= 0)
        {
          v26 = v9;
        }

        else
        {
          v26 = v10;
        }

        if (v21 <= 0)
        {
          v27 = v9;
        }

        else
        {
          v27 = v21;
        }

        if (v26 >= v14)
        {
          if (v27 >= v6)
          {
            if (a3 > 0)
            {
              result = &__src[16 * v6];
              if (v6 < v14 || result >= &__src[16 * v14 + 16 * a3] || v6 != v14)
              {
                v33 = 16 * a3;
                v32 = &__src[16 * v14];
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          }

          v16 = __OFSUB__(v9, v6);
          v31 = v9 - v6;
          if (v16)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v31 <= 0)
          {
            goto LABEL_76;
          }

          result = &__src[16 * v6];
          v30 = &__src[16 * v14];
          if (v6 == v14 && result < &v30[16 * v31])
          {
            goto LABEL_76;
          }

          v29 = 16 * v31;
          goto LABEL_75;
        }

        v16 = __OFSUB__(v9, v14);
        v9 -= v14;
        LOBYTE(v5) = v16;
        if (v27 < v6)
        {
          if (v5)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 > 0)
          {
            result = &__src[16 * v6];
            v28 = &__src[16 * v14];
            if (v6 != v14 || result >= &v28[16 * v9])
            {
              result = memmove(result, v28, 16 * v9);
            }
          }

          if (v13 < 1 || (result = &__src[16 * *a4 + 16 * v15], result == __src) && result < &__src[16 * v13])
          {
LABEL_76:
            if (v21 >= 1)
            {
              v32 = &__src[16 * v13];
              if (v13 > 0 || &v32[16 * v21] <= __src || v13)
              {
                v33 = 16 * v21;
                result = __src;
LABEL_129:
                result = memmove(result, v32, v33);
                goto LABEL_130;
              }
            }

            goto LABEL_130;
          }

          v29 = 16 * v13;
          v30 = __src;
LABEL_75:
          result = memmove(result, v30, v29);
          goto LABEL_76;
        }

LABEL_114:
        if (v5)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v9 > 0)
        {
          result = &__src[16 * v6];
          v39 = &__src[16 * v14];
          if (v6 != v14 || result >= &v39[16 * v9])
          {
            result = memmove(result, v39, 16 * v9);
          }
        }

        if (v10 >= 1)
        {
          result = &__src[16 * *a4 + 16 * v15];
          if (result < __src || result >= &__src[16 * v10] || result != __src)
          {
            v33 = 16 * v10;
            v32 = __src;
            goto LABEL_129;
          }
        }

LABEL_130:
        a4[2] = v6;
        v40 = a4[1];
        v16 = __OFADD__(v40, v13);
        v41 = v40 + v13;
        if (!v16)
        {
          a4[1] = v41;
          v42 = *a4;
          if (v10 <= 0)
          {
            v43 = *a4;
          }

          else
          {
            v43 = v10;
          }

          if (v21 < v43)
          {
            v42 = v43 - v21;
            if (!__OFSUB__(v43, v21))
            {
              goto LABEL_164;
            }

            __break(1u);
          }

          v16 = __OFSUB__(v42, v21);
          v42 -= v21;
          if (!v16)
          {
LABEL_166:
            v50 = v43 == 0;
            if (v43)
            {
              v49 = __src;
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_169;
          }

          __break(1u);
LABEL_141:
          if (v15 > 0)
          {
            result = &__src[16 * v13];
            if (v13 < 0 || v15 <= v13 || v13)
            {
              result = memmove(result, __src, 16 * v15);
            }
          }

          v9 = *a4 - v21;
          if (__OFSUB__(*a4, v21))
          {
            goto LABEL_186;
          }

          goto LABEL_147;
        }

LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v9 = *a4;
  v16 = __OFSUB__(v6, *a4);
  if (v6 < *a4)
  {
    goto LABEL_27;
  }

  v6 -= *a4;
  if (!v16)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v15 = v14 + v9;
  if (__OFADD__(v14, v9))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v17 = __OFSUB__(v15, *a4);
    if (v15 < *a4)
    {
      goto LABEL_18;
    }

    v15 -= *a4;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v15 < 0)
  {
    v16 = __OFADD__(v15, *a4);
    v15 += *a4;
    if (v16)
    {
      goto LABEL_189;
    }
  }

LABEL_18:
  v16 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v16)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v7 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v9 = *a4;
    v19 = __OFSUB__(v7, *a4);
    if (v7 < *a4)
    {
      goto LABEL_38;
    }

    v7 -= *a4;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v9 = *a4;
  if (v7 < 0)
  {
    v16 = __OFADD__(v7, v9);
    v7 += v9;
    if (v16)
    {
      goto LABEL_191;
    }
  }

LABEL_38:
  v23 = v14 + a3;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v6 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_177;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v6, v9);
    v14 = v6 - v9;
    if (v6 < v9)
    {
      goto LABEL_83;
    }

    v6 -= v9;
    if (!v25)
    {
      goto LABEL_83;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v16 = __OFADD__(v21, v9);
      v21 += v9;
      if (v16)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_49;
  }

  if (v6 < 0)
  {
    v16 = __OFADD__(v6, v9);
    v6 += v9;
    if (v16)
    {
      goto LABEL_193;
    }
  }

LABEL_83:
  if (v15 <= 0)
  {
    v34 = v9;
  }

  else
  {
    v34 = v15;
  }

  if (v7 <= 0)
  {
    v35 = v9;
  }

  else
  {
    v35 = v7;
  }

  if (v34 >= v21)
  {
LABEL_105:
    if (v35 >= v6)
    {
      if (v10 > 0)
      {
        result = &__src[16 * v6];
        v44 = &__src[16 * v21];
        if (v6 < v21 || result >= &v44[16 * v10] || v6 != v21)
        {
          v45 = 16 * v10;
          goto LABEL_157;
        }
      }

LABEL_158:
      v46 = a4[1];
      v16 = __OFADD__(v46, v13);
      v47 = v46 + v13;
      if (!v16)
      {
        a4[1] = v47;
        v48 = *a4;
        if (v6 <= 0)
        {
          v43 = *a4;
        }

        else
        {
          v43 = v6;
        }

        if (v21 >= v43)
        {
          v16 = __OFSUB__(v48, v21);
          v42 = v48 - v21;
          if (!v16)
          {
            goto LABEL_166;
          }

          goto LABEL_181;
        }

        v42 = v43 - v21;
        if (!__OFSUB__(v43, v21))
        {
LABEL_164:
          v49 = 0;
          v43 = 0;
          v50 = 1;
LABEL_169:
          *a5 = &__src[16 * v21];
          *(a5 + 8) = v42;
          *(a5 + 16) = v49;
          *(a5 + 24) = v43;
          *(a5 + 32) = v50;
          return result;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v14 = -v13;
    if (__OFSUB__(0, v13))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v7 > 0)
    {
      v38 = &__src[16 * v9 + -16 * v13];
      if (v38 != __src || &v38[16 * v7] <= __src)
      {
        result = memmove(__src, v38, 16 * v7);
      }
    }

    v9 = v10 - v7;
    if (!__OFSUB__(v10, v7))
    {
LABEL_147:
      if (v9 >= 1)
      {
        result = &__src[16 * v6];
        v44 = &__src[16 * v21];
        if (v6 < v21 || result >= &v44[16 * v9] || v6 != v21)
        {
          v45 = 16 * v9;
LABEL_157:
          result = memmove(result, v44, v45);
          goto LABEL_158;
        }
      }

      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_114;
  }

  if (v35 >= v6)
  {
    goto LABEL_141;
  }

  if (v15 > 0)
  {
    result = &__src[16 * result];
    if ((v13 & 0x8000000000000000) == 0 && v15 > v13 && !v13)
    {
LABEL_101:
      v37 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v16 = __OFSUB__(v37, v15);
      v9 = v37 - v15;
      if (!v16)
      {
        goto LABEL_147;
      }

      __break(1u);
      goto LABEL_105;
    }

    result = memmove(result, __src, 16 * v15);
  }

  if (!__OFSUB__(0, v13))
  {
    if (v13 >= 1)
    {
      v35 = &__src[16 * *a4];
      v36 = &v35[-16 * v13];
      if (v36 != __src || v35 <= __src)
      {
        result = memmove(__src, v36, 16 * v13);
      }
    }

    goto LABEL_101;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
  return result;
}

unint64_t sub_18207FA9C@<X0>(char *__src@<X3>, unint64_t result@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X2>, uint64_t a5@<X8>)
{
  v9 = a4[1];
  v10 = v9 - a3;
  if (__OFSUB__(v9, a3))
  {
    __break(1u);
    goto LABEL_171;
  }

  v13 = result;
  v14 = a4[2];
  if (v10 <= a3)
  {
    goto LABEL_10;
  }

  v15 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = v14 - result;
  if (__OFADD__(v14, v15))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v15 < 0)
  {
LABEL_25:
    v9 = *a4;
    if (v6 < 0)
    {
      v16 = __OFADD__(v6, v9);
      v6 += v9;
      if (v16)
      {
        goto LABEL_190;
      }
    }

LABEL_27:
    v20 = v14 + a3;
    if (v14 + a3 >= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v10 = v20 - v5;
    v21 = v20 - v5 + v15;
    if (!__OFADD__(v20 - v5, v15))
    {
      if (v15 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v9);
      if (v21 < v9 || (v21 -= v9, !v22))
      {
LABEL_49:
        if (v10 <= 0)
        {
          v26 = v9;
        }

        else
        {
          v26 = v10;
        }

        if (v21 <= 0)
        {
          v27 = v9;
        }

        else
        {
          v27 = v21;
        }

        if (v26 >= v14)
        {
          if (v27 >= v6)
          {
            if (a3 > 0)
            {
              result = &__src[24 * v6];
              if (v6 < v14 || result >= &__src[24 * v14 + 24 * a3] || v6 != v14)
              {
                v33 = 24 * a3;
                v32 = &__src[24 * v14];
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          }

          v16 = __OFSUB__(v9, v6);
          v31 = v9 - v6;
          if (v16)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v31 <= 0)
          {
            goto LABEL_76;
          }

          result = &__src[24 * v6];
          v30 = &__src[24 * v14];
          if (v6 == v14 && result < &v30[24 * v31])
          {
            goto LABEL_76;
          }

          v29 = 24 * v31;
          goto LABEL_75;
        }

        v16 = __OFSUB__(v9, v14);
        v9 -= v14;
        LOBYTE(v5) = v16;
        if (v27 < v6)
        {
          if (v5)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 > 0)
          {
            result = &__src[24 * v6];
            v28 = &__src[24 * v14];
            if (v6 != v14 || result >= &v28[24 * v9])
            {
              result = memmove(result, v28, 24 * v9);
            }
          }

          if (v13 < 1 || (result = &__src[24 * *a4 + 24 * v15], result == __src) && result < &__src[24 * v13])
          {
LABEL_76:
            if (v21 >= 1)
            {
              v32 = &__src[24 * v13];
              if (v13 > 0 || &v32[24 * v21] <= __src || v13)
              {
                v33 = 24 * v21;
                result = __src;
LABEL_129:
                result = memmove(result, v32, v33);
                goto LABEL_130;
              }
            }

            goto LABEL_130;
          }

          v29 = 24 * v13;
          v30 = __src;
LABEL_75:
          result = memmove(result, v30, v29);
          goto LABEL_76;
        }

LABEL_114:
        if (v5)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v9 > 0)
        {
          result = &__src[24 * v6];
          v39 = &__src[24 * v14];
          if (v6 != v14 || result >= &v39[24 * v9])
          {
            result = memmove(result, v39, 24 * v9);
          }
        }

        if (v10 >= 1)
        {
          result = &__src[24 * *a4 + 24 * v15];
          if (result < __src || result >= &__src[24 * v10] || result != __src)
          {
            v33 = 24 * v10;
            v32 = __src;
            goto LABEL_129;
          }
        }

LABEL_130:
        a4[2] = v6;
        v40 = a4[1];
        v16 = __OFADD__(v40, v13);
        v41 = v40 + v13;
        if (!v16)
        {
          a4[1] = v41;
          v42 = *a4;
          if (v10 <= 0)
          {
            v43 = *a4;
          }

          else
          {
            v43 = v10;
          }

          if (v21 < v43)
          {
            v42 = v43 - v21;
            if (!__OFSUB__(v43, v21))
            {
              goto LABEL_164;
            }

            __break(1u);
          }

          v16 = __OFSUB__(v42, v21);
          v42 -= v21;
          if (!v16)
          {
LABEL_166:
            v50 = v43 == 0;
            if (v43)
            {
              v49 = __src;
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_169;
          }

          __break(1u);
LABEL_141:
          if (v15 > 0)
          {
            result = &__src[24 * v13];
            if (v13 < 0 || v15 <= v13 || v13)
            {
              result = memmove(result, __src, 24 * v15);
            }
          }

          v9 = *a4 - v21;
          if (__OFSUB__(*a4, v21))
          {
            goto LABEL_186;
          }

          goto LABEL_147;
        }

LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v9 = *a4;
  v16 = __OFSUB__(v6, *a4);
  if (v6 < *a4)
  {
    goto LABEL_27;
  }

  v6 -= *a4;
  if (!v16)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v15 = v14 + v9;
  if (__OFADD__(v14, v9))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v17 = __OFSUB__(v15, *a4);
    if (v15 < *a4)
    {
      goto LABEL_18;
    }

    v15 -= *a4;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v15 < 0)
  {
    v16 = __OFADD__(v15, *a4);
    v15 += *a4;
    if (v16)
    {
      goto LABEL_189;
    }
  }

LABEL_18:
  v16 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v16)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v7 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v9 = *a4;
    v19 = __OFSUB__(v7, *a4);
    if (v7 < *a4)
    {
      goto LABEL_38;
    }

    v7 -= *a4;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v9 = *a4;
  if (v7 < 0)
  {
    v16 = __OFADD__(v7, v9);
    v7 += v9;
    if (v16)
    {
      goto LABEL_191;
    }
  }

LABEL_38:
  v23 = v14 + a3;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v6 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_177;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v6, v9);
    v14 = v6 - v9;
    if (v6 < v9)
    {
      goto LABEL_83;
    }

    v6 -= v9;
    if (!v25)
    {
      goto LABEL_83;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v16 = __OFADD__(v21, v9);
      v21 += v9;
      if (v16)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_49;
  }

  if (v6 < 0)
  {
    v16 = __OFADD__(v6, v9);
    v6 += v9;
    if (v16)
    {
      goto LABEL_193;
    }
  }

LABEL_83:
  if (v15 <= 0)
  {
    v34 = v9;
  }

  else
  {
    v34 = v15;
  }

  if (v7 <= 0)
  {
    v35 = v9;
  }

  else
  {
    v35 = v7;
  }

  if (v34 >= v21)
  {
LABEL_105:
    if (v35 >= v6)
    {
      if (v10 > 0)
      {
        result = &__src[24 * v6];
        v44 = &__src[24 * v21];
        if (v6 < v21 || result >= &v44[24 * v10] || v6 != v21)
        {
          v45 = 3 * v10;
          goto LABEL_157;
        }
      }

LABEL_158:
      v46 = a4[1];
      v16 = __OFADD__(v46, v13);
      v47 = v46 + v13;
      if (!v16)
      {
        a4[1] = v47;
        v48 = *a4;
        if (v6 <= 0)
        {
          v43 = *a4;
        }

        else
        {
          v43 = v6;
        }

        if (v21 >= v43)
        {
          v16 = __OFSUB__(v48, v21);
          v42 = v48 - v21;
          if (!v16)
          {
            goto LABEL_166;
          }

          goto LABEL_181;
        }

        v42 = v43 - v21;
        if (!__OFSUB__(v43, v21))
        {
LABEL_164:
          v49 = 0;
          v43 = 0;
          v50 = 1;
LABEL_169:
          *a5 = &__src[24 * v21];
          *(a5 + 8) = v42;
          *(a5 + 16) = v49;
          *(a5 + 24) = v43;
          *(a5 + 32) = v50;
          return result;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v14 = -v13;
    if (__OFSUB__(0, v13))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v7 > 0)
    {
      v38 = &__src[24 * v9 + -24 * v13];
      if (v38 != __src || &v38[24 * v7] <= __src)
      {
        result = memmove(__src, v38, 24 * v7);
      }
    }

    v9 = v10 - v7;
    if (!__OFSUB__(v10, v7))
    {
LABEL_147:
      if (v9 >= 1)
      {
        result = &__src[24 * v6];
        v44 = &__src[24 * v21];
        if (v6 < v21 || result >= &v44[24 * v9] || v6 != v21)
        {
          v45 = 3 * v9;
LABEL_157:
          result = memmove(result, v44, 8 * v45);
          goto LABEL_158;
        }
      }

      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_114;
  }

  if (v35 >= v6)
  {
    goto LABEL_141;
  }

  if (v15 > 0)
  {
    result = &__src[24 * result];
    if ((v13 & 0x8000000000000000) == 0 && v15 > v13 && !v13)
    {
LABEL_101:
      v37 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v16 = __OFSUB__(v37, v15);
      v9 = v37 - v15;
      if (!v16)
      {
        goto LABEL_147;
      }

      __break(1u);
      goto LABEL_105;
    }

    result = memmove(result, __src, 24 * v15);
  }

  if (!__OFSUB__(0, v13))
  {
    if (v13 >= 1)
    {
      v35 = 24;
      v36 = &__src[24 * *a4 + -24 * v13];
      if (v36 != __src || &__src[24 * *a4] <= __src)
      {
        result = memmove(__src, v36, 24 * v13);
      }
    }

    goto LABEL_101;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
  return result;
}

unint64_t sub_1820800A8@<X0>(char *__src@<X3>, unint64_t result@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X2>, uint64_t a5@<X8>)
{
  v9 = a4[1];
  v10 = v9 - a3;
  if (__OFSUB__(v9, a3))
  {
    __break(1u);
    goto LABEL_171;
  }

  v13 = result;
  v14 = a4[2];
  if (v10 <= a3)
  {
    goto LABEL_10;
  }

  v15 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v6 = v14 - result;
  if (__OFADD__(v14, v15))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v15 < 0)
  {
LABEL_25:
    v9 = *a4;
    if (v6 < 0)
    {
      v16 = __OFADD__(v6, v9);
      v6 += v9;
      if (v16)
      {
        goto LABEL_190;
      }
    }

LABEL_27:
    v20 = v14 + a3;
    if (v14 + a3 >= v9)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    v10 = v20 - v5;
    v21 = v20 - v5 + v15;
    if (!__OFADD__(v20 - v5, v15))
    {
      if (v15 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v9);
      if (v21 < v9 || (v21 -= v9, !v22))
      {
LABEL_49:
        if (v10 <= 0)
        {
          v26 = v9;
        }

        else
        {
          v26 = v10;
        }

        if (v21 <= 0)
        {
          v27 = v9;
        }

        else
        {
          v27 = v21;
        }

        if (v26 >= v14)
        {
          if (v27 >= v6)
          {
            if (a3 > 0)
            {
              result = &__src[8 * v6];
              if (v6 < v14 || result >= &__src[8 * v14 + 8 * a3] || v6 != v14)
              {
                v33 = 8 * a3;
                v32 = &__src[8 * v14];
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          }

          v16 = __OFSUB__(v9, v6);
          v31 = v9 - v6;
          if (v16)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          if (v31 <= 0)
          {
            goto LABEL_76;
          }

          result = &__src[8 * v6];
          v30 = &__src[8 * v14];
          if (v6 == v14 && result < &v30[8 * v31])
          {
            goto LABEL_76;
          }

          v29 = 8 * v31;
          goto LABEL_75;
        }

        v16 = __OFSUB__(v9, v14);
        v9 -= v14;
        LOBYTE(v5) = v16;
        if (v27 < v6)
        {
          if (v5)
          {
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (v9 > 0)
          {
            result = &__src[8 * v6];
            v28 = &__src[8 * v14];
            if (v6 != v14 || result >= &v28[8 * v9])
            {
              result = memmove(result, v28, 8 * v9);
            }
          }

          if (v13 < 1 || (result = &__src[8 * *a4 + 8 * v15], result == __src) && result < &__src[8 * v13])
          {
LABEL_76:
            if (v21 >= 1)
            {
              v32 = &__src[8 * v13];
              if (v13 > 0 || &v32[8 * v21] <= __src || v13)
              {
                v33 = 8 * v21;
                result = __src;
LABEL_129:
                result = memmove(result, v32, v33);
                goto LABEL_130;
              }
            }

            goto LABEL_130;
          }

          v29 = 8 * v13;
          v30 = __src;
LABEL_75:
          result = memmove(result, v30, v29);
          goto LABEL_76;
        }

LABEL_114:
        if (v5)
        {
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

        if (v9 > 0)
        {
          result = &__src[8 * v6];
          v39 = &__src[8 * v14];
          if (v6 != v14 || result >= &v39[8 * v9])
          {
            result = memmove(result, v39, 8 * v9);
          }
        }

        if (v10 >= 1)
        {
          result = &__src[8 * *a4 + 8 * v15];
          if (result < __src || result >= &__src[8 * v10] || result != __src)
          {
            v33 = 8 * v10;
            v32 = __src;
            goto LABEL_129;
          }
        }

LABEL_130:
        a4[2] = v6;
        v40 = a4[1];
        v16 = __OFADD__(v40, v13);
        v41 = v40 + v13;
        if (!v16)
        {
          a4[1] = v41;
          v42 = *a4;
          if (v10 <= 0)
          {
            v43 = *a4;
          }

          else
          {
            v43 = v10;
          }

          if (v21 < v43)
          {
            v42 = v43 - v21;
            if (!__OFSUB__(v43, v21))
            {
              goto LABEL_164;
            }

            __break(1u);
          }

          v16 = __OFSUB__(v42, v21);
          v42 -= v21;
          if (!v16)
          {
LABEL_166:
            v50 = v43 == 0;
            if (v43)
            {
              v49 = __src;
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_169;
          }

          __break(1u);
LABEL_141:
          if (v15 > 0)
          {
            result = &__src[8 * v13];
            if (v13 < 0 || v15 <= v13 || v13)
            {
              result = memmove(result, __src, 8 * v15);
            }
          }

          v9 = *a4 - v21;
          if (__OFSUB__(*a4, v21))
          {
            goto LABEL_186;
          }

          goto LABEL_147;
        }

LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v9 = *a4;
  v16 = __OFSUB__(v6, *a4);
  if (v6 < *a4)
  {
    goto LABEL_27;
  }

  v6 -= *a4;
  if (!v16)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v15 = v14 + v9;
  if (__OFADD__(v14, v9))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v17 = __OFSUB__(v15, *a4);
    if (v15 < *a4)
    {
      goto LABEL_18;
    }

    v15 -= *a4;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v15 < 0)
  {
    v16 = __OFADD__(v15, *a4);
    v15 += *a4;
    if (v16)
    {
      goto LABEL_189;
    }
  }

LABEL_18:
  v16 = __OFADD__(v9, result);
  v18 = v9 + result;
  if (v16)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v7 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v9 = *a4;
    v19 = __OFSUB__(v7, *a4);
    if (v7 < *a4)
    {
      goto LABEL_38;
    }

    v7 -= *a4;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v9 = *a4;
  if (v7 < 0)
  {
    v16 = __OFADD__(v7, v9);
    v7 += v9;
    if (v16)
    {
      goto LABEL_191;
    }
  }

LABEL_38:
  v23 = v14 + a3;
  if (v23 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v6 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_177;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v6, v9);
    v14 = v6 - v9;
    if (v6 < v9)
    {
      goto LABEL_83;
    }

    v6 -= v9;
    if (!v25)
    {
      goto LABEL_83;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v16 = __OFADD__(v21, v9);
      v21 += v9;
      if (v16)
      {
        goto LABEL_192;
      }
    }

    goto LABEL_49;
  }

  if (v6 < 0)
  {
    v16 = __OFADD__(v6, v9);
    v6 += v9;
    if (v16)
    {
      goto LABEL_193;
    }
  }

LABEL_83:
  if (v15 <= 0)
  {
    v34 = v9;
  }

  else
  {
    v34 = v15;
  }

  if (v7 <= 0)
  {
    v35 = v9;
  }

  else
  {
    v35 = v7;
  }

  if (v34 >= v21)
  {
LABEL_105:
    if (v35 >= v6)
    {
      if (v10 > 0)
      {
        result = &__src[8 * v6];
        v44 = &__src[8 * v21];
        if (v6 < v21 || result >= &v44[8 * v10] || v6 != v21)
        {
          v45 = 8 * v10;
          goto LABEL_157;
        }
      }

LABEL_158:
      v46 = a4[1];
      v16 = __OFADD__(v46, v13);
      v47 = v46 + v13;
      if (!v16)
      {
        a4[1] = v47;
        v48 = *a4;
        if (v6 <= 0)
        {
          v43 = *a4;
        }

        else
        {
          v43 = v6;
        }

        if (v21 >= v43)
        {
          v16 = __OFSUB__(v48, v21);
          v42 = v48 - v21;
          if (!v16)
          {
            goto LABEL_166;
          }

          goto LABEL_181;
        }

        v42 = v43 - v21;
        if (!__OFSUB__(v43, v21))
        {
LABEL_164:
          v49 = 0;
          v43 = 0;
          v50 = 1;
LABEL_169:
          *a5 = &__src[8 * v21];
          *(a5 + 8) = v42;
          *(a5 + 16) = v49;
          *(a5 + 24) = v43;
          *(a5 + 32) = v50;
          return result;
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v14 = -v13;
    if (__OFSUB__(0, v13))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v7 > 0)
    {
      v38 = &__src[8 * v9 + -8 * v13];
      if (v38 != __src || &v38[8 * v7] <= __src)
      {
        result = memmove(__src, v38, 8 * v7);
      }
    }

    v9 = v10 - v7;
    if (!__OFSUB__(v10, v7))
    {
LABEL_147:
      if (v9 >= 1)
      {
        result = &__src[8 * v6];
        v44 = &__src[8 * v21];
        if (v6 < v21 || result >= &v44[8 * v9] || v6 != v21)
        {
          v45 = 8 * v9;
LABEL_157:
          result = memmove(result, v44, v45);
          goto LABEL_158;
        }
      }

      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_114;
  }

  if (v35 >= v6)
  {
    goto LABEL_141;
  }

  if (v15 > 0)
  {
    result = &__src[8 * result];
    if ((v13 & 0x8000000000000000) == 0 && v15 > v13 && !v13)
    {
LABEL_101:
      v37 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v16 = __OFSUB__(v37, v15);
      v9 = v37 - v15;
      if (!v16)
      {
        goto LABEL_147;
      }

      __break(1u);
      goto LABEL_105;
    }

    result = memmove(result, __src, 8 * v15);
  }

  if (!__OFSUB__(0, v13))
  {
    if (v13 >= 1)
    {
      v35 = &__src[8 * *a4];
      v36 = &v35[-8 * v13];
      if (v36 != __src || v35 <= __src)
      {
        result = memmove(__src, v36, 8 * v13);
      }
    }

    goto LABEL_101;
  }

LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
  return result;
}

void *sub_182080680(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  result = sub_1820E4FEC(a1, a2, &__src);
  v9 = v16;
  if (v16 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v16;
  }

  if (v10 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (__src)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    result = memcpy(a3, __src, 16 * v10);
  }

  if (v9 >= a4 || (v19 & 1) != 0)
  {
    sub_182080D9C((a5 + 16), v10, a5);
  }

  v12 = v18;
  if (a4 - v10 < v18)
  {
    v12 = a4 - v10;
  }

  v13 = v10 + v12;
  if (__OFADD__(v10, v12))
  {
    goto LABEL_27;
  }

  if (v13 < v10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    if (a3)
    {
      v14 = &a3[16 * v10];
    }

    else
    {
      v14 = 0;
    }

    if (v17)
    {
      if (v12)
      {
        memcpy(v14, v17, 16 * v12);
      }
    }

    sub_182080D9C((a5 + 16), v13, a5);
  }

LABEL_29:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1820807B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1820E4FEC(a1, a2, &v13);
  v8 = v14;
  if (v14 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v14;
  }

  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v13)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    result = swift_arrayInitWithCopy();
  }

  if (v8 >= a4 || (v17 & 1) != 0)
  {
    sub_182080D9C((a5 + 16), v9, a5);
  }

  if (a4 - v9 >= v16)
  {
    v11 = v16;
  }

  else
  {
    v11 = a4 - v9;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
    goto LABEL_25;
  }

  if (v12 < v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v15)
    {
      if (v11)
      {
        swift_arrayInitWithCopy();
      }
    }

    sub_182080D9C((a5 + 16), v12, a5);
  }

LABEL_27:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_182080930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1820E504C(a1, a2, &v13);
  v8 = v14;
  if (v14 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v14;
  }

  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v13)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
    result = swift_arrayInitWithCopy();
  }

  if (v8 >= a4 || (v17 & 1) != 0)
  {
    sub_182080D9C((a5 + 16), v9, a5);
  }

  if (a4 - v9 >= v16)
  {
    v11 = v16;
  }

  else
  {
    v11 = a4 - v9;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
    goto LABEL_25;
  }

  if (v12 < v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v15)
    {
      if (v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
        swift_arrayInitWithCopy();
      }
    }

    sub_182080D9C((a5 + 16), v12, a5);
  }

LABEL_27:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_182080AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1820E504C(a1, a2, &v13);
  v8 = v14;
  if (v14 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v14;
  }

  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v13)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    type metadata accessor for Endpoint(0);
    result = swift_arrayInitWithCopy();
  }

  if (v8 >= a4 || (v17 & 1) != 0)
  {
    sub_182080D9C((a5 + 16), v9, a5);
  }

  if (a4 - v9 >= v16)
  {
    v11 = v16;
  }

  else
  {
    v11 = a4 - v9;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
    goto LABEL_25;
  }

  if (v12 < v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v15)
    {
      if (v11)
      {
        type metadata accessor for Endpoint(0);
        swift_arrayInitWithCopy();
      }
    }

    sub_182080D9C((a5 + 16), v12, a5);
  }

LABEL_27:
  __break(1u);
  __break(1u);
  return result;
}

void *sub_182080C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *(*a6)(uint64_t *__return_ptr))
{
  result = a6(&v14);
  v9 = v15;
  if (v15 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v15;
  }

  if (v10 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    result = swift_arrayInitWithCopy();
  }

  if (v9 >= a4 || (v18 & 1) != 0)
  {
    sub_182080D9C((a5 + 16), v10, a5);
  }

  if (a4 - v10 >= v17)
  {
    v12 = v17;
  }

  else
  {
    v12 = a4 - v10;
  }

  v13 = v10 + v12;
  if (__OFADD__(v10, v12))
  {
    goto LABEL_25;
  }

  if (v13 < v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    if (v16)
    {
      if (v12)
      {
        swift_arrayInitWithCopy();
      }
    }

    sub_182080D9C((a5 + 16), v13, a5);
  }

LABEL_27:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t *sub_182080D9C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  if (v4 == a2)
  {
    return a3;
  }

  v6 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, v5);
      if (v6 < v5)
      {
        return a3;
      }

      v6 -= v5;
      if (!v7)
      {
        return a3;
      }

      __break(1u);
    }

    if ((v6 & 0x8000000000000000) == 0 || !__OFADD__(v6, v5))
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_182080E0C(uint64_t a1)
{
  v2 = sub_182AD3AD8();
  v3 = *(a1 + 36);
  v4 = 1 << *(a1 + 32);

  return sub_1822CE2F0(v2, v3, 0, v4, v3, 0, a1);
}

uint64_t sub_182080E7C()
{
  result = sub_182083D24();
  v2 = result;
  v3 = *(*v0 + 16);
  if (v3 < result)
  {
    v7 = *(*v0 + 16);
    v4 = -1;
    goto LABEL_6;
  }

  v7 = result;
  if (result != v3)
  {
    v4 = 1;
    v2 = v3;
LABEL_6:
    v6 = 0;
    while (1)
    {
      v5 = v6 + v4;
      if (__OFADD__(v6, v4))
      {
        break;
      }

      result = sub_182083DF8(&v7);
      v6 += v4;
      if (v7 == v2)
      {
        return v5;
      }
    }

    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_182080F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v7 = *v3;
      v8 = *v4;
      v9 = *(*v3 + 40) == *(*v4 + 40) && *(*v3 + 48) == *(*v4 + 48);
      if (!v9 && (sub_182AD4268() & 1) == 0 || *(v7 + 16) != *(v8 + 16))
      {
        return 0;
      }

      v10 = *(v8 + 184);
      if (v10 <= 1)
      {
        if (!*(v8 + 184))
        {
          goto LABEL_31;
        }

        v11 = 2;
      }

      else if (v10 == 2)
      {
        v11 = 3;
      }

      else if (v10 == 3)
      {
        v11 = 4;
      }

      else
      {
        v11 = 1;
      }

      if (*(v7 + 184))
      {
        v12 = qword_182AF2520[*(v7 + 184)] == v11;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        return 0;
      }

LABEL_31:
      v13 = *(v8 + 185);
      if (v13 <= 1)
      {
        if (!*(v8 + 185))
        {
          goto LABEL_11;
        }

        v5 = 3;
      }

      else if (v13 == 2)
      {
        v5 = 4;
      }

      else if (v13 == 3)
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }

      if (*(v7 + 185))
      {
        v6 = qword_182AF2548[*(v7 + 185)] == v5;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        return 0;
      }

LABEL_11:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_18208108C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1820810E8(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_182AD4268() & 1) == 0)
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

uint64_t sub_182081178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 32)
    {
      v7 = a1 + i;
      v8 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 33) != *(a2 + i + 33))
      {
        break;
      }

      v10 = *(v8 + 40);
      if (*(v7 + 56))
      {
        if (!*(v8 + 56))
        {
          return 0;
        }

        v11 = *(v7 + 40) == v10 && *(v7 + 48) == *(v8 + 48);
        if (!v11 && (sub_182AD4268() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(v7 + 40) == v10)
        {
          v6 = *(v8 + 56);
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}