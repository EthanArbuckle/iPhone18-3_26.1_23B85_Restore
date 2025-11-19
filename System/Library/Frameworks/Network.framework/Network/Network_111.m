uint64_t ConnectionProtocol.identifier.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (result)
  {
    id = nw_connection_get_id(*(result + 16));

    return id;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821AEC54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_18219FB28(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t ConnectionProtocol.start(queue:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(a3 + 40))(a2, a3);
  if (result)
  {
    NWConnection.start(queue:)(a1);

    v9 = *(*(a2 - 8) + 16);

    return v9(a4, v4, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();
  if (!v2)
  {
    return 0;
  }

  v3 = [*(v2 + 16) description];
  v4 = sub_182AD2F88();

  return v4;
}

uint64_t ConnectionProtocol.state.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 40))();
  if (result)
  {
    v4 = *(result + 24);
    os_unfair_lock_lock((v4 + 96));
    v5 = *(v4 + 88);
    *(a2 + 4) = *(v4 + 92);
    *a2 = v5;
    os_unfair_lock_unlock((v4 + 96));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.maximumDatagramSize.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (result)
  {
    maximum_datagram_size = nw_connection_get_maximum_datagram_size(*(result + 16));

    return maximum_datagram_size;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.currentPath.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 40))();
  if (result)
  {
    if (nw_connection_copy_current_path(*(result + 16)))
    {
      v4 = swift_unknownObjectRetain();
      sub_181B7BDC0(v4, a2);
      swift_unknownObjectRelease();
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = type metadata accessor for NWPath(0);
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, v5, 1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.localEndpoint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  result = (*(a2 + 40))(a1, a2, v7);
  if (result)
  {
    v11 = *(result + 16);
    swift_unknownObjectRetain();

    v12 = nw_connection_copy_connected_local_endpoint(v11);
    swift_unknownObjectRelease();
    sub_181B80998(v12, v9);
    v13 = type metadata accessor for NWEndpoint();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13))
    {
      sub_181F49A88(v9, &qword_1EA839360);
      v15 = 1;
    }

    else
    {
      sub_181D8DD58(v9, a3, type metadata accessor for NWEndpoint);
      v15 = 0;
    }

    return (*(v14 + 56))(a3, v15, 1, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.remoteEndpoint.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 40))();
  if (result)
  {
    sub_181D8E2B8(result + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, a2, type metadata accessor for NWEndpoint);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.parameters.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC7Network13_NWConnection_parameters);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.queue.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (result)
  {
    v3 = *(result + 24);
    os_unfair_lock_lock((v3 + 96));
    v4 = *(v3 + 80);
    v5 = v4;
    os_unfair_lock_unlock((v3 + 96));

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821AF368(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = (*(a2 + 40))();
  if (result)
  {
    a3(*(result + 16));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.metadata(definition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 40))(a2, a3);
  if (result)
  {
    v5 = nw_connection_copy_protocol_metadata(*(result + 16), *(a1 + 32));
    if (v5)
    {
      v6 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConnectionProtocol.establishmentReport()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821AF478, 0, 0);
}

uint64_t sub_1821AF478()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for NWConnection.EstablishmentReport(0);
  *v3 = v0;
  v3[1] = sub_1820A1348;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000015, 0x8000000182BDFC70, sub_1821E0038, v2, v4);
}

uint64_t sub_1821AF57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = *(a4 + 40);
  v28 = a2;
  result = v13(a3, a4, v10);
  if (result)
  {
    v15 = result;
    v25 = a3;
    v26 = a1;
    v27 = v8;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v16 = qword_1EA8433A8;
    v17 = *(v15 + 24);
    os_unfair_lock_lock((v17 + 96));
    v18 = *(v17 + 93);
    os_unfair_lock_unlock((v17 + 96));
    if ((v18 & 1) == 0)
    {
      NWConnection.start(queue:)(v16);
    }

    result = (v13)(v25, a4);
    v19 = v26;
    v20 = v27;
    if (result)
    {
      v21 = *(result + 16);
      swift_unknownObjectRetain();

      (*(v9 + 16))(v12, v19, v20);
      v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v23 = swift_allocObject();
      (*(v9 + 32))(v23 + v22, v12, v20);
      aBlock[4] = sub_1821EA38C;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181AA4EBC;
      aBlock[3] = &block_descriptor_1507;
      v24 = _Block_copy(aBlock);

      nw_connection_access_establishment_report(v21, v16, v24);
      _Block_release(v24);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1821AF814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B1C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - v3;
  if (a1)
  {
    v5 = swift_unknownObjectRetain();
    sub_181F1C508(v5, v4);
    v6 = type metadata accessor for NWConnection.EstablishmentReport(0);
    result = (*(*(v6 - 8) + 48))(v4, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);
      return sub_182AD34C8();
    }
  }

  else
  {
    sub_181F4B3B8();
    v8 = swift_allocError();
    *v9 = 96;
    *(v9 + 4) = 0;
    v10[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);
    return sub_182AD34B8();
  }

  return result;
}

uint64_t ConnectionProtocol.startDataTransferReport()(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (result)
  {
    new_data_transfer_report = nw_connection_create_new_data_transfer_report(*(result + 16));

    type metadata accessor for NWConnection.PendingDataTransferReport();
    result = swift_allocObject();
    *(result + 16) = new_data_transfer_report;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821AF9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821AFA04, 0, 0);
}

uint64_t sub_1821AFA04()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 72);
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v4;
  *(v3 + 48) = v9;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_18219BD94;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821EAF54, v3, v7);
}

uint64_t sub_1821AFB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a5;
  v30 = a1;
  v31 = a3;
  v32 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a9 + 48))(qword_1EA8433A8, a7, a9);
  result = (*(a9 + 40))(a7, a9);
  if (result)
  {
    v15 = result;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = *(AssociatedConformanceWitness + 8);
    v18 = swift_checkMetadataState();
    v19 = v17(v18, AssociatedConformanceWitness);
    (*(v11 + 16))(v13, v30, v10);
    v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v21 = swift_allocObject();
    (*(v11 + 32))(v21 + v20, v13, v10);
    v22 = *(v15 + 16);
    v23 = sub_182AD2138();
    v25 = NWCreateDispatchDataFromNSData(v23, v24);

    v26 = *(v19 + 16);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1821EC0D4;
    *(v27 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1713;
    v28 = _Block_copy(aBlock);

    nw_connection_send(v22, v25, v26, 1, v28);

    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DatagramProtocol.send<A, B>(connection:content:using:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821AFE98, 0, 0);
}

uint64_t sub_1821AFE98()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = *(v0 + 24);
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v1;
  *(v9 + 64) = v8;
  *(v9 + 72) = vextq_s8(v10, v10, 8uLL);
  *(v9 + 88) = v7;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v4;
  v11[5] = v3;
  v11[6] = v2;
  v11[7] = v1;
  v11[8] = v8;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1821AFFF0;
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v12, &unk_182AFC3C0, v9, sub_1821E0144, v11, 0, 0, v13);
}

uint64_t sub_1821AFFF0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_182186720;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B0114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821B0154, 0, 0);
}

uint64_t sub_1821B0154()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v1[1] = *(v0 + 56);
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1821B0260;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000028, 0x8000000182BDFE80, sub_1821EA34C, v1, v8);
}

uint64_t sub_1821B0260()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821B039C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1821B039C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B0400(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39[1] = a6;
  v39[2] = a5;
  v41 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a10 + 48))(qword_1EA8433A8, a7, a10);
  result = (*(a10 + 40))(a7, a10);
  if (result)
  {
    v19 = result;
    v20 = a3[3];
    v21 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v20);
    v39[0] = (*(v21 + 8))(a4, a8, a11, v20, v21);
    v23 = v22;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = *(AssociatedConformanceWitness + 8);
    v26 = swift_checkMetadataState();
    v27 = v25(v26, AssociatedConformanceWitness);
    v28 = v40;
    (*(v40 + 16))(v17, v41, v15);
    v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v17, v15);
    v31 = *(v19 + 16);
    v32 = v39[0];
    v33 = sub_182AD2138();
    v35 = NWCreateDispatchDataFromNSData(v33, v34);

    v36 = *(v27 + 16);
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1821EC0D4;
    *(v37 + 24) = v30;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1501;
    v38 = _Block_copy(aBlock);

    nw_connection_send(v31, v35, v36, 1, v38);

    sub_181C1F2E4(v32, v23);
    _Block_release(v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DatagramProtocol.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_getTupleTypeMetadata2();
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B08A8, 0, 0);
}

uint64_t sub_1821B08A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_task_alloc();
  v0[11] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v6[6] = v5;
  v7 = swift_task_alloc();
  v0[12] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;
  v7[5] = v1;
  v7[6] = v5;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1821B09D4;
  v10 = v0[9];
  v9 = v0[10];

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC3D8, v6, sub_1821EC228, v7, 0, 0, v10);
}

uint64_t sub_1821B09D4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1821B0BAC;
  }

  else
  {

    v2 = sub_1821B0AF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B0AF8()
{
  v1 = v0[10];
  v2 = *v1;
  v3 = *(v1 + 1);
  (*(*(v0[8] - 8) + 32))(v0[2], &v1[*(v0[9] + 48)]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1821B0BAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B0C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821B0C4C, 0, 0);
}

uint64_t sub_1821B0C4C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v4 = v0;
  v4[1] = sub_1821A6204;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821EA204, v2, TupleTypeMetadata2);
}

uint64_t sub_1821B0DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v10 = sub_182AD34D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a6 + 48))(qword_1EA8433A8, a4, a6);
  result = (*(a6 + 40))(a4, a6);
  if (result)
  {
    v15 = result;
    (*(v11 + 16))(v13, a1, v10);
    v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = a3;
    *(v17 + 3) = a4;
    *(v17 + 4) = v22;
    *(v17 + 5) = a6;
    (*(v11 + 32))(&v17[v16], v13, v10);
    v18 = *(v15 + 16);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1821EA21C;
    *(v19 + 24) = v17;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1489;
    v20 = _Block_copy(aBlock);

    nw_connection_receive_message(v18, v20);
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821B1090(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5, uint64_t a6)
{
  v35 = a3;
  v36 = a6;
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = (&v32 - v10);
  v11 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  if (*(a5 + 4) != 255)
  {
    v23 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v24 = v23;
    *(v24 + 4) = BYTE4(v23);
    goto LABEL_5;
  }

  v19 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v35, a4 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v13, v11);
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v22 = 22;
    *(v22 + 4) = 0;
LABEL_5:
    v37 = v21;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
    return sub_182AD34B8();
  }

  (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
  v27 = v33;
  v26 = v34;
  if (v34 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = v33;
  }

  v29 = 0xC000000000000000;
  if (v34 >> 60 != 15)
  {
    v29 = v34;
  }

  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v32;
  *v32 = v28;
  *(v31 + 1) = v29;
  (*(v14 + 16))(&v31[v30], v18, AssociatedTypeWitness);
  sub_181F49B44(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD34D8();
  sub_182AD34C8();
  return (*(v14 + 8))(v18, AssociatedTypeWitness);
}

uint64_t (*static NWParameters.template<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = swift_allocateMetadataPack();
  v11[5] = a6;
  v11[6] = swift_allocateWitnessTablePack();
  v11[7] = a1;
  v11[8] = a2;

  return sub_1821E0238;
}

uint64_t NWParametersBuilder.parameters.getter()
{
  sub_181F5B674();
}

uint64_t NWParametersBuilder.parameters.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static NWParametersBuilder.parameters(initialParameters:_:)@<X0>(void (*a1)(char *, __n128)@<X1>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{

  return sub_1821B1600(v8, a1, a2, a3, a4);
}

uint64_t sub_1821B1600@<X0>(uint64_t TupleTypeMetadata@<X0>, void (*a2)(char *, __n128)@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v8 = TupleTypeMetadata;
  if (!a3)
  {
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a4;
  v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
  if (v6 >= 6 && v11 - v13 + 8 >= 0x20)
  {
    v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = v11 + 3;
    v34 = (v13 + 16);
    v35 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v34;
      *(v33 - 1) = *(v34 - 1);
      *v33 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v14 == v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v6 - v14;
  v16 = 8 * v14;
  v17 = &v11[v14 + 1];
  v18 = (v13 + v16);
  do
  {
    v19 = *v18++;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_7:
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  a4 = TupleTypeMetadata;
LABEL_8:
  v20 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v27 = (a4 + 48);
    v28 = v26;
    do
    {
      v29 = *v27;
      v27 += 4;
      *v28++ = &v22[v29];
      --v6;
    }

    while (v6);
    v30 = *(a4 + 32);
  }

  else
  {
    v30 = 0;
  }

  a2(&v22[v30], v24);
  v31 = sub_182185B3C(v22, a4);
  result = (*(v20 + 8))(v22, a4);
  *a5 = v8;
  a5[1] = v31;
  return result;
}

uint64_t sub_1821B182C@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v6 = TupleTypeMetadata;
  if (!a2)
  {
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a3;
  v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
  if (v5 >= 6 && v9 - v11 + 8 >= 0x20)
  {
    v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = v9 + 3;
    v34 = (v11 + 16);
    v35 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v34;
      *(v33 - 1) = *(v34 - 1);
      *v33 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v12 == v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 - v12;
  v14 = 8 * v12;
  v15 = &v9[v12 + 1];
  v16 = (v11 + v14);
  do
  {
    v17 = *v16++;
    *v15++ = v17;
    --v13;
  }

  while (v13);
LABEL_7:
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  a3 = TupleTypeMetadata;
LABEL_8:
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v25 = (a3 + 48);
    v26 = v24;
    do
    {
      v27 = *v25;
      v25 += 4;
      *v26++ = &v20[v27];
      --v5;
    }

    while (v5);
    v28 = *(a3 + 32);
  }

  else
  {
    v28 = 0;
  }

  v6(&v20[v28], v22);
  v29 = sub_182185B3C(v20, a3);
  (*(v18 + 8))(v20, a3);
  type metadata accessor for NWParameters();
  v30 = swift_allocObject();
  v31 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v31;
  *(v30 + 16) = result;
  *a4 = v30;
  a4[1] = v29;
  return result;
}

uint64_t sub_1821B1AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v20 - v13);
  v16 = *v3;
  v15 = v3[1];
  sub_181D8E2B8(a1, &v20 - v13, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    if (nw_endpoint_get_type(*v14) == (nw_endpoint_type_url|nw_endpoint_type_host))
    {
      sub_181D8E2B8(a1, v11, type metadata accessor for NWEndpoint);
      v17 = sub_182AD2258();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      NWEndpoint.agentIdentifier.setter(v8);
      v20 = v16;
      v21 = v15;
      v18 = a3(1);
      swift_unknownObjectRelease();
      sub_181D8E3E8(v11, type metadata accessor for NWEndpoint);
      return v18;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_181D8E3E8(v14, type metadata accessor for NWEndpoint);
  }

  v20 = v16;
  v21 = v15;
  return a3(0);
}

uint64_t sub_1821B1CE8()
{
  sub_181F5B674();
}

uint64_t NWProtocolIP.Metadata.ecn(_:)(char *a1)
{
  nw_ip_metadata_set_ecn_flag(*(v1 + 16), dword_182AF2DD0[*a1]);
}

uint64_t NWProtocolIP.Metadata.serviceClass(_:)(unsigned __int8 *a1)
{
  nw_ip_metadata_set_service_class(*(v1 + 16), *a1);
}

uint64_t sub_1821B1D84@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NetworkConnection.LockedState();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

void sub_1821B1E4C()
{
  v1 = v0[4];
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
  v2 = v0[6];
  os_unfair_lock_lock(v2 + 20);
  v3 = sub_1821B1F84(&v2[4]);
  os_unfair_lock_unlock(v2 + 20);
  if ((v3 & 1) == 0)
  {
    v4 = v0[2];
    if (v4)
    {
      nw_connection_cancel(*(v4 + 16));
    }

    v5 = v0[3];
    if (v5)
    {
      v6 = *(v5 + 24);

      nw_connection_group_cancel(v6);
    }
  }
}

uint64_t sub_1821B1F84(uint64_t a1)
{
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *a1 = 0;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *(a1 + 8) = 0;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *(a1 + 16) = 0;
  if (*(a1 + 48))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *(a1 + 48) = 0;
  return *(a1 + 24);
}

void *sub_1821B20C0@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (*result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *v2 = 0;
  if (v2[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v2[1] = 0;
  if (v2[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v2[2] = 0;
  if (v2[6])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v2[6] = 0;
  *a2 = *(v2 + 24);
  return result;
}

uint64_t NetworkConnection.currentPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v3 + 16);

    if (nw_connection_copy_current_path(v4))
    {
      v5 = swift_unknownObjectRetain();
      sub_181B7BDC0(v5, a1);
      swift_unknownObjectRelease();

LABEL_6:
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = *(v1 + 24);
    if (v6)
    {
      v7 = *(v6 + 24);

      v8 = nw_connection_group_copy_peel_off_connection(v7);
      v9 = nw_connection_copy_current_path(v8);
      sub_181B7BDC0(v9, a1);

      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_9:
  v11 = type metadata accessor for NWPath(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t NetworkConnection.localEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = *(v9 + 16);

    v11 = nw_connection_copy_connected_local_endpoint(v10);
    sub_181B80998(v11, v8);

    v12 = type metadata accessor for NWEndpoint();
    v13 = (*(v12 - 8) + 48);
    v14 = (*v13)(v8, 1, v12);
    v15 = (v13 + 1);
    if (v14)
    {
      sub_181F49A88(v8, &qword_1EA839360);
      return (*v15)(a1, 1, 1, v12);
    }

    else
    {
      sub_181D8DD58(v8, a1, type metadata accessor for NWEndpoint);
      return (*v15)(a1, 0, 1, v12);
    }
  }

  else
  {
    v17 = *(v1 + 24);
    if (v17)
    {
      v18 = *(v17 + 24);

      v19 = nw_connection_group_copy_peel_off_connection(v18);
      v20 = nw_connection_copy_connected_local_endpoint(v19);
      sub_181B80998(v20, v5);

      swift_unknownObjectRelease();
      v21 = type metadata accessor for NWEndpoint();
      v22 = (*(v21 - 8) + 48);
      v23 = (*v22)(v5, 1, v21);
      v24 = (v22 + 1);
      if (v23)
      {
        sub_181F49A88(v5, &qword_1EA839360);
        return (*v24)(a1, 1, 1, v21);
      }

      else
      {
        sub_181D8DD58(v5, a1, type metadata accessor for NWEndpoint);
        return (*v24)(a1, 0, 1, v21);
      }
    }

    else
    {
      v25 = type metadata accessor for NWEndpoint();
      v26 = *(*(v25 - 8) + 56);

      return v26(a1, 1, 1, v25);
    }
  }
}

uint64_t NetworkConnection.remoteEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = *(v1 + 16);
  if (v6)
  {
    sub_181D8E2B8(v6 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, a1, type metadata accessor for NWEndpoint);
    v7 = type metadata accessor for NWEndpoint();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 0;
  }

  else
  {
    v13 = *(v1 + 24);
    if (v13)
    {
      v14 = *(v13 + 24);

      v15 = nw_connection_group_copy_peel_off_connection(v14);
      v16 = nw_connection_copy_connected_remote_endpoint(v15);
      sub_181B80998(v16, v5);

      swift_unknownObjectRelease();
      v17 = type metadata accessor for NWEndpoint();
      v18 = (*(v17 - 8) + 48);
      v19 = (*v18)(v5, 1, v17);
      v20 = (v18 + 1);
      if (v19)
      {
        sub_181F49A88(v5, &qword_1EA839360);
        return (*v20)(a1, 1, 1, v17);
      }

      else
      {
        sub_181D8DD58(v5, a1, type metadata accessor for NWEndpoint);
        return (*v20)(a1, 0, 1, v17);
      }
    }

    v21 = type metadata accessor for NWEndpoint();
    v8 = *(*(v21 - 8) + 56);
    v9 = v21;
    v10 = a1;
    v11 = 1;
  }

  return v8(v10, v11, 1, v9);
}

uint64_t sub_1821B2848(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v3 + 16);

    return v2(v4);
  }

  else
  {
    v5 = *(v1 + 24);
    if (v5)
    {
      v6 = *(v5 + 24);
      v7 = result;

      nw_connection_group_copy_peel_off_connection(v6);
      v7();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall NetworkConnection.restart()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    nw_connection_restart(*(v1 + 16));
  }
}

uint64_t sub_1821B2910(int *a1)
{
  *(v2 + 48) = v1;
  *(v2 + 56) = *v1;
  *(v2 + 64) = *v1;
  v3 = *a1;
  *(v2 + 76) = *(a1 + 4);
  *(v2 + 72) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1821B2990, 0, 0);
}

uint64_t sub_1821B2990()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(*(v0 + 48) + 48);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v1 + 288);
  *(v4 + 24) = *(v1 + 296);
  type metadata accessor for NetworkConnection.LockedState();
  *(v0 + 32) = v2;
  *(v0 + 40) = type metadata accessor for NetworkChannel.State();
  swift_getExtendedFunctionTypeMetadata();
  sub_182AD39B8();
  sub_181F50DA0(sub_1821E5FD8, v4, v3);

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  if (v5)
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 76);
    v9 = *(v6 + 16);
    *(v0 + 96) = v9;
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    *(v0 + 104) = v11;
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v5;
    v11[5] = v6;
    *(v0 + 20) = v8;
    *(v0 + 16) = v7;
    swift_unknownObjectRetain_n();
    sub_181AA39C0(v5);
    if (v9)
    {
      swift_getObjectType();
      v12 = sub_182AD34A8();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1821B2B9C, v12, v14);
  }

  else
  {
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1821B2B9C()
{
  v4 = v0;
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v1(&v3, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1821B2C18, 0, 0);
}

uint64_t sub_1821B2C18()
{
  v1 = *(v0 + 80);

  swift_unknownObjectRelease();
  sub_181A554F4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1821B2C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_181F5E000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return sub_181AA39C0(v5);
}

uint64_t _s7Network0A10ConnectionC13onStateUpdateyACyxGXDyAE_AA0A7ChannelC0D0Oyx_GtYbYAcF(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[6];
  v6[2] = *(*v2 + 288);
  v6[3] = *(v3 + 296);
  v6[4] = a1;
  v6[5] = a2;
  type metadata accessor for NetworkConnection.LockedState();
  sub_181F50DA0(sub_1821E02B0, v6, v4);
}

uint64_t sub_1821B2DF4(uint64_t a1)
{
  locked = type metadata accessor for NetworkConnection.LockedState();
  v4 = *(locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v6 = &v9 - v5;
  sub_1821B1D84(&v9 - v5);
  v7 = sub_1820C6414(v6, locked);
  (*(v4 + 8))(v6, locked);
  *(v1 + 48) = v7;
  sub_1821B2FAC(a1);
  return v1;
}

void *sub_1821B2F20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v4[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = MEMORY[0x1E69E7CC0];
  v4[5] = v8;
  v4[2] = a1;
  v4[3] = 0;
  return v4;
}

void *sub_1821B2FAC(uint64_t a1)
{
  v6 = 0;
  locked = type metadata accessor for NetworkChannel.NeworkChannelLockedState();
  v1[4] = sub_1820C6414(&v6, locked);
  type metadata accessor for NetworkChannel.ContinuationNotifier();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = MEMORY[0x1E69E7CC0];
  v1[5] = v4;
  v1[2] = a1;
  v1[3] = 0;
  return v1;
}

uint64_t NetworkConnection.deinit()
{
  NetworkChannel.deinit();

  return v0;
}

uint64_t NetworkChannel.deinit()
{
  (*(*v0 + 216))();

  return v0;
}

uint64_t NetworkConnection.__deallocating_deinit()
{
  NetworkChannel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1821B312C()
{
  sub_1821B3540();
  sub_182AD41B8();
  sub_182AD30E8();
}

uint64_t sub_1821B31D8(NSObject *a1)
{
  if (*(v1 + 16))
  {

    NWConnection.start(queue:)(a1);
  }

  else
  {
    if (!*(v1 + 24))
    {
      goto LABEL_6;
    }

    NWConnectionGroup.start(queue:)(a1);
  }

LABEL_6:
}

uint64_t sub_1821B3254()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 16;
  }

  else
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      return 0;
    }

    v2 = 24;
  }

  v3 = *(v1 + v2);

  v4 = [v3 description];
  v5 = sub_182AD2F88();

  return v5;
}

unsigned int *sub_1821B32E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v3 + 24);

    os_unfair_lock_lock((v4 + 96));
    v5 = *(v4 + 88);
    v6 = *(v4 + 92);
    os_unfair_lock_unlock((v4 + 96));

    v15 = v6;
    v14 = v5;
    v7 = &v14;
    return sub_1821B5508(v7, a1);
  }

  v8 = *(v1 + 24);
  if (v8)
  {
    v9 = *(v8 + 16);

    os_unfair_lock_lock((v9 + 72));
    v10 = *(v9 + 60);
    v11 = *(v9 + 56) | (*(v9 + 60) << 32);
    os_unfair_lock_unlock((v9 + 72));

    if (v10 >> 6)
    {
      if (v10 >> 6 == 1)
      {
        v11 = v11 & 0x3FFFFFFFFFLL | 0x4000000000;
      }

      else
      {
        v12 = 0x8000000002;
        if (v11 != 0x8000000001)
        {
          v12 = 0x8000000003;
        }

        if (v11 != 0x8000000000)
        {
          v11 = v12;
        }
      }
    }

    v16 = v11;
    v17 = BYTE4(v11);
    v7 = &v16;
    return sub_1821B5508(v7, a1);
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B344C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    LODWORD(result) = nw_connection_get_maximum_datagram_size(*(v1 + 16));
    return result;
  }

  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v3 + 24);

    v5 = nw_connection_group_copy_peel_off_connection(v4);
    maximum_datagram_size = nw_connection_get_maximum_datagram_size(v5);

    swift_unknownObjectRelease();
    LODWORD(result) = maximum_datagram_size;
    return result;
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B3518()
{
  sub_1821DEAF4();
}

uint64_t sub_1821B3540()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);

    return nw_connection_get_id(v2);
  }

  else
  {
    v4 = *(v0 + 24);
    if (v4)
    {
      v5 = *(v4 + 24);

      v6 = nw_connection_group_copy_peel_off_connection(v5);
      id = nw_connection_get_id(v6);

      swift_unknownObjectRelease();
      return id;
    }

    else
    {
      return 0;
    }
  }
}

void *sub_1821B35D4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 80;
    v3 = 96;
    v4 = 24;
  }

  else
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      return 0;
    }

    v2 = 64;
    v3 = 72;
    v4 = 16;
  }

  v5 = *(v1 + v4);

  os_unfair_lock_lock((v5 + v3));
  v6 = *(v5 + v2);
  v7 = v6;
  os_unfair_lock_unlock((v5 + v3));

  return v6;
}

uint64_t sub_1821B365C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = *(v1 + 24);
    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 24);
    v9 = *(a1 + 32);

    v5 = nw_connection_group_copy_protocol_metadata(v8, v9);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v3 = *(v2 + 16);
  v4 = *(a1 + 32);

  v5 = nw_connection_copy_protocol_metadata(v3, v4);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v5);
  swift_unknownObjectRelease();
LABEL_7:

  return v6;
}

uint64_t sub_1821B3708(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821B3728, 0, 0);
}

uint64_t sub_1821B3728()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1821B37F4;

  return sub_1821B4F78(v1);
}

uint64_t sub_1821B37F4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1821B3924, 0, 0);
  }
}

uint64_t sub_1821B3924()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[5] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[6] = v3;
    v4 = type metadata accessor for NWConnection.EstablishmentReport(0);
    *v3 = v0;
    v3[1] = sub_1821B3B5C;
    v5 = v0[2];
    v6 = sub_1821E0310;
    v7 = v2;
LABEL_5:

    return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000015, 0x8000000182BDFC70, v6, v7, v4);
  }

  v8 = *(v1 + 24);
  v0[8] = v8;
  if (v8)
  {
    v9 = *(v8 + 24);

    v10 = nw_connection_group_copy_peel_off_connection(v9);
    v0[9] = v10;
    v11 = swift_task_alloc();
    v0[10] = v11;
    *(v11 + 16) = v10;
    v12 = swift_task_alloc();
    v0[11] = v12;
    v4 = type metadata accessor for NWConnection.EstablishmentReport(0);
    *v12 = v0;
    v12[1] = sub_1821B3C70;
    v5 = v0[2];
    v6 = sub_1821E0308;
    v7 = v11;
    goto LABEL_5;
  }

  sub_181F4B3B8();
  swift_allocError();
  *v13 = 22;
  *(v13 + 4) = 0;
  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_1821B3B5C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1821EC0A8;
  }

  else
  {
    v2 = sub_1821EBE50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B3C70()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1821B3DF8;
  }

  else
  {

    v2 = sub_1821B3D8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B3D8C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B3DF8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B3E70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821B3E90, 0, 0);
}

uint64_t sub_1821B3E90()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1821B3F5C;

  return sub_1821B4F78(v1);
}

uint64_t sub_1821B3F5C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1821B408C, 0, 0);
  }
}

uint64_t sub_1821B408C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[5] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1821B4304;
    v4 = v0[2];
    v5 = sub_1821E0320;
LABEL_3:

    return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000014, 0x8000000182BDFCC0, v5, v2, &type metadata for NWConnection.DataTransferReport);
  }

  v6 = *(v1 + 24);
  v0[8] = v6;
  if (!v6)
  {
    return sub_182AD3EA8();
  }

  v7 = *(v6 + 24);

  v8 = nw_connection_group_copy_peel_off_connection(v7);
  v9 = _s7Network12NWConnectionCyACSgSo16OS_nw_connection_pcfC_0(v8);
  v0[9] = v9;
  if (v9)
  {
    v2 = v9;
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1821B447C;
    v4 = v0[2];
    v5 = sub_1821E0318;
    goto LABEL_3;
  }

  sub_181F4B3B8();
  swift_allocError();
  *v11 = 22;
  *(v11 + 4) = 0;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1821B4304()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1821B45FC;
  }

  else
  {
    v2 = sub_1821B4418;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B4418()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B447C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1821B4660;
  }

  else
  {
    v2 = sub_1821B4590;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B4590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B45FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B4660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821B46CC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    new_data_transfer_report = nw_connection_create_new_data_transfer_report(*(v1 + 16));
LABEL_5:
    type metadata accessor for NWConnection.PendingDataTransferReport();
    result = swift_allocObject();
    *(result + 16) = new_data_transfer_report;
    return result;
  }

  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v3 + 24);

    v5 = nw_connection_group_copy_peel_off_connection(v4);
    new_data_transfer_report = nw_connection_create_new_data_transfer_report(v5);

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

void sub_1821B47AC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3[3] = a1;
  type metadata accessor for NetworkChannel.NeworkChannelLockedState();
  sub_181F50DA0(sub_1821E0328, v3, v2);
}

uint64_t sub_1821B4868()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1821B493C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v1, &unk_182AFE048, v2, j___s7Network0A7ChannelC6cancelyyFTj, v2, 0, 0, v3);
}

uint64_t sub_1821B493C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_181FDF540;
  }

  else
  {
    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B4A50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821B4A70, 0, 0);
}

uint64_t sub_1821B4A70()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1821EC1A8((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1821B4BAC;
  v6 = v0[3];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_182AFE468, v6, j___s7Network0A7ChannelC6cancelyyFTj, v6, 0, 0, v7);
}

uint64_t sub_1821B4BAC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1820AC688;
  }

  else
  {
    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B4CC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821B4CE0, 0, 0);
}

uint64_t sub_1821B4CE0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1821E88FC((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1821B4BAC;
  v6 = v0[3];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_182AFE3E8, v6, j___s7Network0A7ChannelC6cancelyyFTj, v6, 0, 0, v7);
}

uint64_t sub_1821B4E1C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821B4E3C, 0, 0);
}

uint64_t sub_1821B4E3C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1821EC1C0((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1821B4BAC;
  v6 = v0[3];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_182AFE398, v6, j___s7Network0A7ChannelC6cancelyyFTj, v6, 0, 0, v7);
}

uint64_t sub_1821B4F78(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821B4F98, 0, 0);
}

uint64_t sub_1821B4F98()
{
  sub_1821B47AC(*(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1821B5030;

  return sub_1821B4848();
}

uint64_t sub_1821B5030()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t NetworkChannel.nw.getter()
{
  sub_181F3D244();
}

uint64_t sub_1821B5154(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  result = *(v1 + 112);
  if (result)
  {
    v8 = *(result + 16);
    if (!v8)
    {
      goto LABEL_9;
    }

    v15[1] = *(v1 + 112);
    v16 = v1;
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = result + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);

    do
    {
      v10(v6, v12, v3);
      if (a1)
      {
        v17 = a1;
        v14 = a1;
        sub_182AD34B8();
      }

      else
      {
        sub_182AD34C8();
      }

      (*(v9 - 8))(v6, v3);
      v12 += v13;
      --v8;
    }

    while (v8);

    v1 = v16;
    result = *(v16 + 112);
    if (!result)
    {
      __break(1u);
    }

    else
    {
LABEL_9:
      *(v1 + 112) = MEMORY[0x1E69E7CC0];

      *(v1 + 112) = 0;
    }
  }

  return result;
}

uint64_t sub_1821B52F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  if (!*(v1 + 112))
  {
    return sub_182AD34C8();
  }

  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_181F5A458(0, v8[2] + 1, 1, v8);
    *(v1 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_181F5A458(v10 > 1, v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v7, v3);
  *(v1 + 112) = v8;
  return result;
}

uint64_t sub_1821B5488()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1821B54C0()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  return v0;
}

unsigned int *sub_1821B5508@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result | (*(result + 4) << 32);
  if ((v2 & 0xC000000000) == 0x4000000000)
  {
    v2 = v2 & 0x3FFFFFFFFFLL | 0x4000000000;
  }

  *a2 = v2;
  *(a2 + 4) = BYTE4(v2);
  return result;
}

unsigned int *sub_1821B5538@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result | (*(result + 4) << 32);
  v3 = *(result + 4) >> 6;
  if (v3)
  {
    if (v3 == 1)
    {
      v2 = *result | (*(result + 4) << 32) & 0x3FFFFFFFFFLL | 0x4000000000;
    }

    else
    {
      v4 = 0x8000000002;
      if (v2 != 0x8000000001)
      {
        v4 = 0x8000000003;
      }

      if (v2 != 0x8000000000)
      {
        v2 = v4;
      }
    }
  }

  *a2 = v2;
  *(a2 + 4) = BYTE4(v2);
  return result;
}

uint64_t static NetworkChannel.State.== infix(_:_:)(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2 | (*(a2 + 4) << 32);
  v5 = v2 >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      if (((v4 >> 38) & 3) == 1)
      {
        v6 = HIDWORD(v4) & 0x3F;
        v7 = HIDWORD(v3) & 0x3F;
        if ((BYTE4(v3) & 0x3Fu) <= 1)
        {
          if (!v7)
          {
LABEL_6:
            if (v6)
            {
              return 0;
            }

            v8 = sub_182AD2768();
            return v8 == sub_182AD2768();
          }

          return v6 == 1 && v3 == *a2;
        }

        goto LABEL_20;
      }

      return 0;
    }

    if (v3 > 0x8000000001)
    {
      v10 = 0x8000000002;
      if (v3 != 0x8000000002)
      {
        v11 = v4 & 0xFFFFFFFFFFLL;
        v12 = 3;
        return v11 == (v12 & 0xFFFF0000FFFFFFFFLL | 0x8000000000);
      }
    }

    else
    {
      v10 = 0x8000000000;
      if (v3 != 0x8000000000)
      {
        v11 = v4 & 0xFFFFFFFFFFLL;
        v12 = 1;
        return v11 == (v12 & 0xFFFF0000FFFFFFFFLL | 0x8000000000);
      }
    }

    return (v4 & 0xFFFFFFFFFFLL) == v10;
  }

  if (((v4 >> 38) & 3) == 0)
  {
    v7 = HIDWORD(v3);
    LODWORD(v6) = BYTE4(v4);
    if (SHIDWORD(v3) <= 1)
    {
      if (!HIDWORD(v3))
      {
        goto LABEL_6;
      }

      return v6 == 1 && v3 == *a2;
    }

LABEL_20:
    if (v7 == 2)
    {
      if (v6 != 2 || v3 != *a2)
      {
        return 0;
      }
    }

    else if (v6 != 3 || v3 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t static NetworkChannel.== infix(_:_:)()
{
  sub_1821B3540();
  v0 = sub_182AD41B8();
  v2 = v1;
  sub_1821B3540();
  if (v0 == sub_182AD41B8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_182AD4268();
  }

  return v5 & 1;
}

void sub_1821B57B0()
{
  v1 = *v0;
  v2 = v0[4];
  v5[2] = *(*v0 + 80);
  v5[3] = *(v1 + 88);
  type metadata accessor for NetworkChannel.NeworkChannelLockedState();
  sub_181F50DA0(sub_1821EC178, v5, v2);
  v3 = v0[2];
  if (v3)
  {
    nw_connection_cancel(*(v3 + 16));
  }

  else
  {
    v4 = v0[3];
    if (v4)
    {
      nw_connection_group_cancel(*(v4 + 24));
    }
  }
}

void sub_1821B5874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EA8433A8;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_1821EC0E0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181AA4EBC;
  aBlock[3] = &block_descriptor_1469;
  v12 = _Block_copy(aBlock);

  nw_connection_access_establishment_report(v8, v9, v12);
  _Block_release(v12);
}

void sub_1821B5A5C(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v8 = qword_1EA8433A8;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1821EA190;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181AA4EBC;
  aBlock[3] = &block_descriptor_1475;
  v11 = _Block_copy(aBlock);

  nw_connection_access_establishment_report(a2, v8, v11);
  _Block_release(v11);
}

uint64_t sub_1821B5C40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B1C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = type metadata accessor for NWConnection.EstablishmentReport(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v10 = swift_unknownObjectRetain();
  sub_181F1C508(v10, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_181F49A88(v2, &unk_1EA83B1C0);
    sub_181F4B3B8();
    v11 = swift_allocError();
    *v12 = 96;
    *(v12 + 4) = 0;
    v14[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);
    return sub_182AD34B8();
  }

  else
  {
    sub_181D8DD58(v2, v9, type metadata accessor for NWConnection.EstablishmentReport);
    sub_181D8E2B8(v9, v6, type metadata accessor for NWConnection.EstablishmentReport);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B8);
    sub_182AD34C8();
    return sub_181D8E3E8(v9, type metadata accessor for NWConnection.EstablishmentReport);
  }
}

uint64_t sub_1821B5E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  new_data_transfer_report = nw_connection_create_new_data_transfer_report(*(a2 + 16));
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EA8433A8;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1821EC0DC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_181DFFAC8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7F17C;
  aBlock[3] = &block_descriptor_1453;
  v13 = _Block_copy(aBlock);

  nw_data_transfer_report_collect(new_data_transfer_report, v9, v13);
  _Block_release(v13);

  return swift_unknownObjectRelease();
}

uint64_t sub_1821B60A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  new_data_transfer_report = nw_connection_create_new_data_transfer_report(*(a2 + 16));
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EA8433A8;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1821EA11C;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1821EC210;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7F17C;
  aBlock[3] = &block_descriptor_1463;
  v13 = _Block_copy(aBlock);

  nw_data_transfer_report_collect(new_data_transfer_report, v9, v13);
  _Block_release(v13);

  return swift_unknownObjectRelease();
}

uint64_t sub_1821B62DC(_OWORD *a1)
{
  v1 = a1[5];
  v2 = a1[3];
  v15 = a1[4];
  v16 = v1;
  v3 = a1[5];
  v4 = a1[7];
  v17 = a1[6];
  v18 = v4;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v13 = a1[2];
  v14 = v6;
  v11[12] = v15;
  v11[13] = v3;
  v9 = a1[7];
  v11[14] = v17;
  v11[15] = v9;
  v11[8] = v8;
  v11[9] = v7;
  v11[10] = v13;
  v11[11] = v2;
  sub_1821EA0C0(v12, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1B0);
  return sub_182AD34C8();
}

void sub_1821B63C4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  if (!*a1)
  {
    v12 = sub_182AD3548();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    v14[5] = a3;
    v15 = a3;
    *a1 = sub_182271E84(0, 0, v11, a6, v14);
  }
}

void sub_1821B650C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  if (!*a1)
  {
    v9 = sub_182AD3548();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = *(v5 + 80);
    v11[5] = *(v5 + 88);
    v11[6] = v10;
    v11[7] = a3;
    v12 = a3;
    *a1 = sub_182271E84(0, 0, v8, &unk_182AFE578, v11);
  }
}

uint64_t sub_1821B6698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B120);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B128);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B67CC, 0, 0);
}

uint64_t sub_1821B67CC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B130);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_182AD3738();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + 16), , , v5))
  {
    NWConnection.start(queue:)(*(v0 + 72));
  }

  else
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (!v6)
    {
      return sub_182AD3EA8();
    }

    v7 = *(v6 + 24);

    if (!v7)
    {
      return sub_182AD3EA8();
    }

    NWConnectionGroup.start(queue:)(*(v0 + 72));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 64);

  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1821B6A34;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821B6A34()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1821B6BD8;
  }

  else
  {

    v2 = sub_1821B6B50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B6B50()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821B6BD8()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1821B6C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0A0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0A8);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B6DA8, 0, 0);
}

uint64_t sub_1821B6DA8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0B0);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_182AD3738();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + 16), , , v5))
  {
    NWConnection.start(queue:)(*(v0 + 72));
  }

  else
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (!v6)
    {
      return sub_182AD3EA8();
    }

    v7 = *(v6 + 24);

    if (!v7)
    {
      return sub_182AD3EA8();
    }

    NWConnectionGroup.start(queue:)(*(v0 + 72));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 64);

  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1821B7010;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821B7010()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1821EBEF4;
  }

  else
  {

    v2 = sub_1821EC1DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B008);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B010);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B7260, 0, 0);
}

uint64_t sub_1821B7260()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B018);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_182AD3738();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + 16), , , v5))
  {
    NWConnection.start(queue:)(*(v0 + 72));
  }

  else
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (!v6)
    {
      return sub_182AD3EA8();
    }

    v7 = *(v6 + 24);

    if (!v7)
    {
      return sub_182AD3EA8();
    }

    NWConnectionGroup.start(queue:)(*(v0 + 72));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 64);

  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1821B7010;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821B74C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B040);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B048);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B75FC, 0, 0);
}

uint64_t sub_1821B75FC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B050);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_182AD3738();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + 16), , , v5))
  {
    NWConnection.start(queue:)(*(v0 + 72));
  }

  else
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (!v6)
    {
      return sub_182AD3EA8();
    }

    v7 = *(v6 + 24);

    if (!v7)
    {
      return sub_182AD3EA8();
    }

    NWConnectionGroup.start(queue:)(*(v0 + 72));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 64);

  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1821B7010;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821B7864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC8);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFD0);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B7998, 0, 0);
}

uint64_t sub_1821B7998()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFD8);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_182AD3738();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + 16), , , v5))
  {
    NWConnection.start(queue:)(*(v0 + 72));
  }

  else
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (!v6)
    {
      return sub_182AD3EA8();
    }

    v7 = *(v6 + 24);

    if (!v7)
    {
      return sub_182AD3EA8();
    }

    NWConnectionGroup.start(queue:)(*(v0 + 72));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 64);

  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1821B7010;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821B7C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF88);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF90);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B7D34, 0, 0);
}

uint64_t sub_1821B7D34()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF98);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_182AD3738();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + 16), , , v5))
  {
    NWConnection.start(queue:)(*(v0 + 72));
  }

  else
  {
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (!v6)
    {
      return sub_182AD3EA8();
    }

    v7 = *(v6 + 24);

    if (!v7)
    {
      return sub_182AD3EA8();
    }

    NWConnectionGroup.start(queue:)(*(v0 + 72));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 64);

  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1821B7010;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821B7F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[12] = type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = sub_182AD3698();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_182AD3728();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821B8114, 0, 0);
}

uint64_t sub_1821B8114()
{
  v1 = *(v0 + 64);
  v12 = *(v0 + 80);
  (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x1E69E8790], *(v0 + 104));
  v2 = swift_task_alloc();
  *(v2 + 16) = v12;
  *(v2 + 32) = v1;
  sub_182AD3738();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v4 = *(Strong + 16), , , v4))
  {
    NWConnection.start(queue:)(*(v0 + 72));
  }

  else
  {
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (!v5)
    {
      return sub_182AD3EA8();
    }

    v6 = *(v5 + 24);

    if (!v6)
    {
      return sub_182AD3EA8();
    }

    NWConnectionGroup.start(queue:)(*(v0 + 72));
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 64);
  v13 = *(v0 + 80);

  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *(v9 + 16) = v13;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_1821B838C;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821B838C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1821B8530;
  }

  else
  {

    v2 = sub_1821B84A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821B84A8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821B8530()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1821B85CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19 = a1;
  if (Strong)
  {
    v8 = *(Strong + 16);

    if (v8)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v10 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v10 + v9, v6, v2);
      NWConnection.stateUpdateHandler.setter(sub_1821E8F18, v10);
LABEL_7:

      v20(v6, v19, v2);
      v15 = swift_allocObject();
      v11(v15 + v9, v6, v2);
      return sub_182AD3688();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 24);

    if (v13)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v14 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v14 + v9, v6, v2);
      NWConnectionGroup.stateUpdateHandler.setter(sub_1821E8DE4, v14);
      goto LABEL_7;
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B8908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19 = a1;
  if (Strong)
  {
    v8 = *(Strong + 16);

    if (v8)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v10 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v10 + v9, v6, v2);
      NWConnection.stateUpdateHandler.setter(sub_1821E8438, v10);
LABEL_7:

      v20(v6, v19, v2);
      v15 = swift_allocObject();
      v11(v15 + v9, v6, v2);
      return sub_182AD3688();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 24);

    if (v13)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v14 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v14 + v9, v6, v2);
      NWConnectionGroup.stateUpdateHandler.setter(sub_1821E8384, v14);
      goto LABEL_7;
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B8C44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B028);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19 = a1;
  if (Strong)
  {
    v8 = *(Strong + 16);

    if (v8)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v10 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v10 + v9, v6, v2);
      NWConnection.stateUpdateHandler.setter(sub_1821E7510, v10);
LABEL_7:

      v20(v6, v19, v2);
      v15 = swift_allocObject();
      v11(v15 + v9, v6, v2);
      return sub_182AD3688();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 24);

    if (v13)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v14 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v14 + v9, v6, v2);
      NWConnectionGroup.stateUpdateHandler.setter(sub_1821E745C, v14);
      goto LABEL_7;
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B8F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19 = a1;
  if (Strong)
  {
    v8 = *(Strong + 16);

    if (v8)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v10 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v10 + v9, v6, v2);
      NWConnection.stateUpdateHandler.setter(sub_1821E7A00, v10);
LABEL_7:

      v20(v6, v19, v2);
      v15 = swift_allocObject();
      v11(v15 + v9, v6, v2);
      return sub_182AD3688();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 24);

    if (v13)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v14 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v14 + v9, v6, v2);
      NWConnectionGroup.stateUpdateHandler.setter(sub_1821E794C, v14);
      goto LABEL_7;
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B92BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19 = a1;
  if (Strong)
  {
    v8 = *(Strong + 16);

    if (v8)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v10 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v10 + v9, v6, v2);
      NWConnection.stateUpdateHandler.setter(sub_1821E69DC, v10);
LABEL_7:

      v20(v6, v19, v2);
      v15 = swift_allocObject();
      v11(v15 + v9, v6, v2);
      return sub_182AD3688();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 24);

    if (v13)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v14 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v14 + v9, v6, v2);
      NWConnectionGroup.stateUpdateHandler.setter(sub_1821E6928, v14);
      goto LABEL_7;
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B95F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19 = a1;
  if (Strong)
  {
    v8 = *(Strong + 16);

    if (v8)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v10 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v10 + v9, v6, v2);
      NWConnection.stateUpdateHandler.setter(sub_1821E6478, v10);
LABEL_7:

      v20(v6, v19, v2);
      v15 = swift_allocObject();
      v11(v15 + v9, v6, v2);
      return sub_182AD3688();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 24);

    if (v13)
    {
      v20 = *(v3 + 16);
      v20(v6, a1, v2);
      v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v18 = v9 + v4;
      v14 = swift_allocObject();
      v11 = *(v3 + 32);
      v11(v14 + v9, v6, v2);
      NWConnectionGroup.stateUpdateHandler.setter(sub_1821E63C4, v14);
      goto LABEL_7;
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B9934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD36C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v32 = a3;
  v33 = a4;
  if (Strong)
  {
    v13 = *(Strong + 16);

    if (v13)
    {
      v14 = *(v8 + 16);
      v28 = a1;
      v31 = v14;
      v14(v11, a1, v7);
      v15 = *(v8 + 80);
      v16 = (v15 + 32) & ~v15;
      v29 = v15 | 7;
      v30 = v16 + v9;
      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;
      v18 = v28;
      v19 = *(v8 + 32);
      v19(v17 + v16, v11, v7);
      NWConnection.stateUpdateHandler.setter(sub_1821E9FD0, v17);
LABEL_7:

      v31(v11, v18, v7);
      v25 = swift_allocObject();
      v26 = v33;
      *(v25 + 16) = v32;
      *(v25 + 24) = v26;
      v19(v25 + v16, v11, v7);
      return sub_182AD3688();
    }
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = *(v20 + 24);

    if (v21)
    {
      v31 = *(v8 + 16);
      v31(v11, a1, v7);
      v22 = *(v8 + 80);
      v16 = (v22 + 32) & ~v22;
      v29 = v22 | 7;
      v30 = v16 + v9;
      v23 = swift_allocObject();
      v24 = v33;
      *(v23 + 16) = v32;
      *(v23 + 24) = v24;
      v18 = a1;
      v19 = *(v8 + 32);
      v19(v23 + v16, v11, v7);
      NWConnectionGroup.stateUpdateHandler.setter(sub_1821E9E38, v23);
      goto LABEL_7;
    }
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821B9CBC(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  if (((a1 >> 38) & 3) == 1)
  {
    a1 = a1 | ((HIDWORD(a1) & 0x3F) << 32) | 0x4000000000;
  }

  LODWORD(v14) = a1;
  BYTE4(v14) = BYTE4(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_182AD36A8();
  result = (*(v8 + 8))(v10, v7);
  v12 = (a1 >> 38) & 3;
  if (v12 == 1 || v12 == 2 && (a1 & 0xFFFFFFFFFFLL) == 0x8000000003)
  {
    v14 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_1821B9E18(unsigned int *a1)
{
  type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v2 = sub_182AD3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = *a1 | (*(a1 + 4) << 32);
  if ((v6 & 0xC000000000) == 0x4000000000)
  {
    v7 = v6 & 0x3FFFFFFFFFLL | 0x4000000000;
  }

  else
  {
    v7 = *a1 | (*(a1 + 4) << 32);
  }

  LODWORD(v11) = v7;
  BYTE4(v11) = BYTE4(v7);
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v3 + 8))(v5, v2);
  if (v7 >> 38 == 1 || (v7 >> 38 == 2 ? (v9 = v7 == 0x8000000003) : (v9 = 0), v9))
  {
    v11 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_1821B9FB4(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = (a1 >> 38) & 3;
  if (v11)
  {
    if (v11 == 1)
    {
      a1 = a1 | ((HIDWORD(a1) & 0x3F) << 32) | 0x4000000000;
    }

    else
    {
      v12 = 0x8000000002;
      if ((a1 & 0xFFFFFFFFFFLL) != 0x8000000001)
      {
        v12 = 0x8000000003;
      }

      if ((a1 & 0xFFFFFFFFFFLL) != 0x8000000000)
      {
        a1 = v12;
      }
    }
  }

  LODWORD(v16) = a1;
  BYTE4(v16) = BYTE4(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_182AD36A8();
  result = (*(v8 + 8))(v10, v7);
  v14 = (a1 >> 38) & 3;
  if (v14 == 1 || v14 == 2 && (a1 & 0xFFFFFFFFFFLL) == 0x8000000003)
  {
    v16 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_1821BA148(uint64_t a1)
{
  type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v2 = sub_182AD3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  LODWORD(v4) = *a1;
  v11 = *(a1 + 4);
  v10 = v4;
  sub_1821B5538(&v10, &v9);
  v6 = BYTE4(v9);
  v7 = v9;
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v3 + 8))(v5, v2);
  if (v6 >> 6 == 1 || v6 >> 6 == 2 && (v7 & 0xFFFFFF00FFFFFFFFLL | (v6 << 32)) == 0x8000000003)
  {
    v9 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_1821BA2EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_182AD34E8();
  sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_182AD2E38();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  return sub_182AD36B8();
}

uint64_t sub_1821BA3A4()
{
  sub_182AD34E8();
  sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_182AD2E38();
  type metadata accessor for NetworkChannel.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();
  return sub_182AD36B8();
}

uint64_t sub_1821BA48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[28] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B138);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821BA62C, 0, 0);
}

uint64_t sub_1821BA62C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B128);
  sub_182AD35B8();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1821BA754;
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v2, v0 + 192);
}

uint64_t sub_1821BA754()
{

  if (v0)
  {
    v1 = sub_1821BAE3C;
  }

  else
  {
    v1 = sub_1821BA864;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821BA864()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 412);
  *(v0 + 348) = v2;
  *(v0 + 344) = v1;
  if (v2 >> 2 > 0x3EuLL)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
  if (v5 >> 38 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);
      *(v0 + 368) = v7;

      sub_181F4B3B8();
      *(v0 + 376) = swift_allocError();
      *v10 = v5;
      *(v10 + 4) = BYTE4(v5) & 0x3F;
      v8 = sub_1821BB464;
      goto LABEL_15;
    }
  }

  else if (v5 >> 38 == 2)
  {
    if (v5 == 0x8000000002)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v7 = *(v11 + 40);
        *(v0 + 360) = v7;

        v8 = sub_1821BAFDC;
        goto LABEL_15;
      }
    }

    else if (v5 == 0x8000000003)
    {
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 40);
        *(v0 + 384) = v7;

        sub_182AD34E8();
        sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
        *(v0 + 392) = swift_allocError();
        sub_182AD2E38();
        v8 = sub_1821BB5F8;
LABEL_15:

        return MEMORY[0x1EEE6DFA0](v8, v7, 0);
      }
    }
  }

  v28 = *(v0 + 344);
  v12 = *(v0 + 348);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = sub_182AD3548();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 44) = v12;
  *(v18 + 40) = v28;
  sub_181AB5D28(v14, v13, &unk_1EA839850);
  LODWORD(v14) = (*(v16 + 48))(v13, 1, v15);

  v19 = *(v0 + 248);
  if (v14 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v16 + 8))(v19, v15);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_182AD34A8();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = **(v0 + 224);

  if (v21 | v20)
  {
    v24 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v24;
  *(v0 + 184) = v23;
  swift_task_create();

  sub_181F49A88(v25, &unk_1EA839850);

  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_1821BA754;
  v27 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v27, v0 + 192);
}

uint64_t sub_1821BAE3C()
{
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[24];
  v0[44] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);
    v0[50] = v3;

    v4 = v1;

    return MEMORY[0x1EEE6DFA0](sub_1821BB78C, v3, 0);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1821BAFDC()
{
  v1 = v0[45];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[34];
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = v0[38];
        v9 = v0[33];
        v10 = v0[34];
        v7(v8, v5, v9);
        sub_182AD34C8();
        (*(v10 + 8))(v8, v9);
        v5 += v6;
        --v3;
      }

      while (v3);

      if (!*(v1 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }
    }

    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v11 = sub_1821BB13C;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1821BB13C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 348);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = sub_182AD3548();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 44) = v2;
  *(v8 + 40) = v1;
  sub_181AB5D28(v4, v3, &unk_1EA839850);
  LODWORD(v4) = (*(v6 + 48))(v3, 1, v5);

  v9 = *(v0 + 248);
  if (v4 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v6 + 8))(v9, v5);
    if (*(v8 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_182AD34A8();
      v11 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v13 = **(v0 + 224);

  if (v11 | v10)
  {
    v14 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  swift_task_create();

  sub_181F49A88(v15, &unk_1EA839850);

  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_1821BA754;
  v17 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v17, v0 + 192);
}

uint64_t sub_1821BB464()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 368);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 376);
        v9 = *(v0 + 296);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 216) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 376);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCC0;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BB5F8()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 384);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 392);
        v9 = *(v0 + 288);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 208) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 392);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCC0;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BB78C()
{
  v1 = *(v0 + 400);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 400);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 352);
        v9 = *(v0 + 272);
        v10 = *(v0 + 280);
        v11 = *(v0 + 264);
        v7(v10, v5, v11);
        *(v0 + 200) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v9 + 8))(v10, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 352);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821BB920;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BB920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  sub_182AD4248();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821BBA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[28] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0B8);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821BBBB4, 0, 0);
}

uint64_t sub_1821BBBB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0A8);
  sub_182AD35B8();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1821BBCDC;
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v2, v0 + 192);
}

uint64_t sub_1821BBCDC()
{

  if (v0)
  {
    v1 = sub_1821BC3C4;
  }

  else
  {
    v1 = sub_1821BBDEC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821BBDEC()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 412);
  *(v0 + 348) = v2;
  *(v0 + 344) = v1;
  if (v2 >> 2 > 0x3EuLL)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
  if (v5 >> 38 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);
      *(v0 + 368) = v7;

      sub_181F4B3B8();
      *(v0 + 376) = swift_allocError();
      *v10 = v5;
      *(v10 + 4) = BYTE4(v5) & 0x3F;
      v8 = sub_1821BC9EC;
      goto LABEL_15;
    }
  }

  else if (v5 >> 38 == 2)
  {
    if (v5 == 0x8000000002)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v7 = *(v11 + 40);
        *(v0 + 360) = v7;

        v8 = sub_1821BC564;
        goto LABEL_15;
      }
    }

    else if (v5 == 0x8000000003)
    {
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 40);
        *(v0 + 384) = v7;

        sub_182AD34E8();
        sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
        *(v0 + 392) = swift_allocError();
        sub_182AD2E38();
        v8 = sub_1821BCB80;
LABEL_15:

        return MEMORY[0x1EEE6DFA0](v8, v7, 0);
      }
    }
  }

  v28 = *(v0 + 344);
  v12 = *(v0 + 348);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = sub_182AD3548();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 44) = v12;
  *(v18 + 40) = v28;
  sub_181AB5D28(v14, v13, &unk_1EA839850);
  LODWORD(v14) = (*(v16 + 48))(v13, 1, v15);

  v19 = *(v0 + 248);
  if (v14 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v16 + 8))(v19, v15);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_182AD34A8();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = **(v0 + 224);

  if (v21 | v20)
  {
    v24 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v24;
  *(v0 + 184) = v23;
  swift_task_create();

  sub_181F49A88(v25, &unk_1EA839850);

  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_1821BBCDC;
  v27 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v27, v0 + 192);
}

uint64_t sub_1821BC3C4()
{
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[24];
  v0[44] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);
    v0[50] = v3;

    v4 = v1;

    return MEMORY[0x1EEE6DFA0](sub_1821BCD14, v3, 0);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1821BC564()
{
  v1 = v0[45];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[34];
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = v0[38];
        v9 = v0[33];
        v10 = v0[34];
        v7(v8, v5, v9);
        sub_182AD34C8();
        (*(v10 + 8))(v8, v9);
        v5 += v6;
        --v3;
      }

      while (v3);

      if (!*(v1 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }
    }

    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v11 = sub_1821BC6C4;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1821BC6C4()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 348);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = sub_182AD3548();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 44) = v2;
  *(v8 + 40) = v1;
  sub_181AB5D28(v4, v3, &unk_1EA839850);
  LODWORD(v4) = (*(v6 + 48))(v3, 1, v5);

  v9 = *(v0 + 248);
  if (v4 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v6 + 8))(v9, v5);
    if (*(v8 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_182AD34A8();
      v11 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v13 = **(v0 + 224);

  if (v11 | v10)
  {
    v14 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  swift_task_create();

  sub_181F49A88(v15, &unk_1EA839850);

  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_1821BBCDC;
  v17 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v17, v0 + 192);
}

uint64_t sub_1821BC9EC()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 368);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 376);
        v9 = *(v0 + 296);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 216) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 376);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCC4;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BCB80()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 384);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 392);
        v9 = *(v0 + 288);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 208) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 392);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCC4;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BCD14()
{
  v1 = *(v0 + 400);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 400);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 352);
        v9 = *(v0 + 272);
        v10 = *(v0 + 280);
        v11 = *(v0 + 264);
        v7(v10, v5, v11);
        *(v0 + 200) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v9 + 8))(v10, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 352);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBEF0;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BCEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[28] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B020);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821BD048, 0, 0);
}

uint64_t sub_1821BD048()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B010);
  sub_182AD35B8();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1821BD170;
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v2, v0 + 192);
}

uint64_t sub_1821BD170()
{

  if (v0)
  {
    v1 = sub_1821BC3C4;
  }

  else
  {
    v1 = sub_1821BD280;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821BD280()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 412);
  *(v0 + 348) = v2;
  *(v0 + 344) = v1;
  if (v2 >> 2 > 0x3EuLL)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
  if (v5 >> 38 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);
      *(v0 + 368) = v7;

      sub_181F4B3B8();
      *(v0 + 376) = swift_allocError();
      *v10 = v5;
      *(v10 + 4) = BYTE4(v5) & 0x3F;
      v8 = sub_1821BDCE0;
      goto LABEL_15;
    }
  }

  else if (v5 >> 38 == 2)
  {
    if (v5 == 0x8000000002)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v7 = *(v11 + 40);
        *(v0 + 360) = v7;

        v8 = sub_1821BD858;
        goto LABEL_15;
      }
    }

    else if (v5 == 0x8000000003)
    {
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 40);
        *(v0 + 384) = v7;

        sub_182AD34E8();
        sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
        *(v0 + 392) = swift_allocError();
        sub_182AD2E38();
        v8 = sub_1821BDE74;
LABEL_15:

        return MEMORY[0x1EEE6DFA0](v8, v7, 0);
      }
    }
  }

  v28 = *(v0 + 344);
  v12 = *(v0 + 348);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = sub_182AD3548();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 44) = v12;
  *(v18 + 40) = v28;
  sub_181AB5D28(v14, v13, &unk_1EA839850);
  LODWORD(v14) = (*(v16 + 48))(v13, 1, v15);

  v19 = *(v0 + 248);
  if (v14 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v16 + 8))(v19, v15);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_182AD34A8();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = **(v0 + 224);

  if (v21 | v20)
  {
    v24 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v24;
  *(v0 + 184) = v23;
  swift_task_create();

  sub_181F49A88(v25, &unk_1EA839850);

  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_1821BD170;
  v27 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v27, v0 + 192);
}

uint64_t sub_1821BD858()
{
  v1 = v0[45];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[34];
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = v0[38];
        v9 = v0[33];
        v10 = v0[34];
        v7(v8, v5, v9);
        sub_182AD34C8();
        (*(v10 + 8))(v8, v9);
        v5 += v6;
        --v3;
      }

      while (v3);

      if (!*(v1 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }
    }

    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v11 = sub_1821BD9B8;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1821BD9B8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 348);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = sub_182AD3548();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 44) = v2;
  *(v8 + 40) = v1;
  sub_181AB5D28(v4, v3, &unk_1EA839850);
  LODWORD(v4) = (*(v6 + 48))(v3, 1, v5);

  v9 = *(v0 + 248);
  if (v4 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v6 + 8))(v9, v5);
    if (*(v8 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_182AD34A8();
      v11 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v13 = **(v0 + 224);

  if (v11 | v10)
  {
    v14 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  swift_task_create();

  sub_181F49A88(v15, &unk_1EA839850);

  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_1821BD170;
  v17 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v17, v0 + 192);
}

uint64_t sub_1821BDCE0()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 368);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 376);
        v9 = *(v0 + 296);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 216) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 376);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCC8;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BDE74()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 384);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 392);
        v9 = *(v0 + 288);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 208) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 392);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCC8;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BE008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[28] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B058);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821BE1A8, 0, 0);
}

uint64_t sub_1821BE1A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B048);
  sub_182AD35B8();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1821BE2D0;
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v2, v0 + 192);
}

uint64_t sub_1821BE2D0()
{

  if (v0)
  {
    v1 = sub_1821BC3C4;
  }

  else
  {
    v1 = sub_1821BE3E0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821BE3E0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 412);
  *(v0 + 348) = v2;
  *(v0 + 344) = v1;
  if (v2 >> 2 > 0x3EuLL)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
  if (v5 >> 38 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);
      *(v0 + 368) = v7;

      sub_181F4B3B8();
      *(v0 + 376) = swift_allocError();
      *v10 = v5;
      *(v10 + 4) = BYTE4(v5) & 0x3F;
      v8 = sub_1821BEE40;
      goto LABEL_15;
    }
  }

  else if (v5 >> 38 == 2)
  {
    if (v5 == 0x8000000002)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v7 = *(v11 + 40);
        *(v0 + 360) = v7;

        v8 = sub_1821BE9B8;
        goto LABEL_15;
      }
    }

    else if (v5 == 0x8000000003)
    {
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 40);
        *(v0 + 384) = v7;

        sub_182AD34E8();
        sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
        *(v0 + 392) = swift_allocError();
        sub_182AD2E38();
        v8 = sub_1821BEFD4;
LABEL_15:

        return MEMORY[0x1EEE6DFA0](v8, v7, 0);
      }
    }
  }

  v28 = *(v0 + 344);
  v12 = *(v0 + 348);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = sub_182AD3548();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 44) = v12;
  *(v18 + 40) = v28;
  sub_181AB5D28(v14, v13, &unk_1EA839850);
  LODWORD(v14) = (*(v16 + 48))(v13, 1, v15);

  v19 = *(v0 + 248);
  if (v14 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v16 + 8))(v19, v15);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_182AD34A8();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = **(v0 + 224);

  if (v21 | v20)
  {
    v24 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v24;
  *(v0 + 184) = v23;
  swift_task_create();

  sub_181F49A88(v25, &unk_1EA839850);

  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_1821BE2D0;
  v27 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v27, v0 + 192);
}

uint64_t sub_1821BE9B8()
{
  v1 = v0[45];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[34];
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = v0[38];
        v9 = v0[33];
        v10 = v0[34];
        v7(v8, v5, v9);
        sub_182AD34C8();
        (*(v10 + 8))(v8, v9);
        v5 += v6;
        --v3;
      }

      while (v3);

      if (!*(v1 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }
    }

    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v11 = sub_1821BEB18;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1821BEB18()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 348);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = sub_182AD3548();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 44) = v2;
  *(v8 + 40) = v1;
  sub_181AB5D28(v4, v3, &unk_1EA839850);
  LODWORD(v4) = (*(v6 + 48))(v3, 1, v5);

  v9 = *(v0 + 248);
  if (v4 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v6 + 8))(v9, v5);
    if (*(v8 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_182AD34A8();
      v11 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v13 = **(v0 + 224);

  if (v11 | v10)
  {
    v14 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  swift_task_create();

  sub_181F49A88(v15, &unk_1EA839850);

  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_1821BE2D0;
  v17 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v17, v0 + 192);
}

uint64_t sub_1821BEE40()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 368);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 376);
        v9 = *(v0 + 296);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 216) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 376);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCCC;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BEFD4()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 384);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 392);
        v9 = *(v0 + 288);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 208) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 392);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCCC;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821BF168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[28] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFE0);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821BF308, 0, 0);
}

uint64_t sub_1821BF308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFD0);
  sub_182AD35B8();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1821BF430;
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v2, v0 + 192);
}

uint64_t sub_1821BF430()
{

  if (v0)
  {
    v1 = sub_1821BC3C4;
  }

  else
  {
    v1 = sub_1821BF540;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821BF540()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 412);
  *(v0 + 348) = v2;
  *(v0 + 344) = v1;
  if (v2 >> 2 > 0x3EuLL)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
  if (v5 >> 38 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);
      *(v0 + 368) = v7;

      sub_181F4B3B8();
      *(v0 + 376) = swift_allocError();
      *v10 = v5;
      *(v10 + 4) = BYTE4(v5) & 0x3F;
      v8 = sub_1821BFFA0;
      goto LABEL_15;
    }
  }

  else if (v5 >> 38 == 2)
  {
    if (v5 == 0x8000000002)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v7 = *(v11 + 40);
        *(v0 + 360) = v7;

        v8 = sub_1821BFB18;
        goto LABEL_15;
      }
    }

    else if (v5 == 0x8000000003)
    {
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 40);
        *(v0 + 384) = v7;

        sub_182AD34E8();
        sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
        *(v0 + 392) = swift_allocError();
        sub_182AD2E38();
        v8 = sub_1821C0134;
LABEL_15:

        return MEMORY[0x1EEE6DFA0](v8, v7, 0);
      }
    }
  }

  v28 = *(v0 + 344);
  v12 = *(v0 + 348);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = sub_182AD3548();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 44) = v12;
  *(v18 + 40) = v28;
  sub_181AB5D28(v14, v13, &unk_1EA839850);
  LODWORD(v14) = (*(v16 + 48))(v13, 1, v15);

  v19 = *(v0 + 248);
  if (v14 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v16 + 8))(v19, v15);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_182AD34A8();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = **(v0 + 224);

  if (v21 | v20)
  {
    v24 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v24;
  *(v0 + 184) = v23;
  swift_task_create();

  sub_181F49A88(v25, &unk_1EA839850);

  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_1821BF430;
  v27 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v27, v0 + 192);
}

uint64_t sub_1821BFB18()
{
  v1 = v0[45];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[34];
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = v0[38];
        v9 = v0[33];
        v10 = v0[34];
        v7(v8, v5, v9);
        sub_182AD34C8();
        (*(v10 + 8))(v8, v9);
        v5 += v6;
        --v3;
      }

      while (v3);

      if (!*(v1 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }
    }

    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v11 = sub_1821BFC78;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1821BFC78()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 348);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = sub_182AD3548();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 44) = v2;
  *(v8 + 40) = v1;
  sub_181AB5D28(v4, v3, &unk_1EA839850);
  LODWORD(v4) = (*(v6 + 48))(v3, 1, v5);

  v9 = *(v0 + 248);
  if (v4 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v6 + 8))(v9, v5);
    if (*(v8 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_182AD34A8();
      v11 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v13 = **(v0 + 224);

  if (v11 | v10)
  {
    v14 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  swift_task_create();

  sub_181F49A88(v15, &unk_1EA839850);

  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_1821BF430;
  v17 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v17, v0 + 192);
}

uint64_t sub_1821BFFA0()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 368);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 376);
        v9 = *(v0 + 296);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 216) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 376);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCD0;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821C0134()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 384);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 392);
        v9 = *(v0 + 288);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 208) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 392);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCD0;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821C02C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[28] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AFA0);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C0468, 0, 0);
}

uint64_t sub_1821C0468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF90);
  sub_182AD35B8();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1821C0590;
  v2 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v2, v0 + 192);
}

uint64_t sub_1821C0590()
{

  if (v0)
  {
    v1 = sub_1821BC3C4;
  }

  else
  {
    v1 = sub_1821C06A0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821C06A0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 412);
  *(v0 + 348) = v2;
  *(v0 + 344) = v1;
  if (v2 >> 2 > 0x3EuLL)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
  if (v5 >> 38 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);
      *(v0 + 368) = v7;

      sub_181F4B3B8();
      *(v0 + 376) = swift_allocError();
      *v10 = v5;
      *(v10 + 4) = BYTE4(v5) & 0x3F;
      v8 = sub_1821C1100;
      goto LABEL_15;
    }
  }

  else if (v5 >> 38 == 2)
  {
    if (v5 == 0x8000000002)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v7 = *(v11 + 40);
        *(v0 + 360) = v7;

        v8 = sub_1821C0C78;
        goto LABEL_15;
      }
    }

    else if (v5 == 0x8000000003)
    {
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 40);
        *(v0 + 384) = v7;

        sub_182AD34E8();
        sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
        *(v0 + 392) = swift_allocError();
        sub_182AD2E38();
        v8 = sub_1821C1294;
LABEL_15:

        return MEMORY[0x1EEE6DFA0](v8, v7, 0);
      }
    }
  }

  v28 = *(v0 + 344);
  v12 = *(v0 + 348);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = sub_182AD3548();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 44) = v12;
  *(v18 + 40) = v28;
  sub_181AB5D28(v14, v13, &unk_1EA839850);
  LODWORD(v14) = (*(v16 + 48))(v13, 1, v15);

  v19 = *(v0 + 248);
  if (v14 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v16 + 8))(v19, v15);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_182AD34A8();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = **(v0 + 224);

  if (v21 | v20)
  {
    v24 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v24;
  *(v0 + 184) = v23;
  swift_task_create();

  sub_181F49A88(v25, &unk_1EA839850);

  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_1821C0590;
  v27 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v27, v0 + 192);
}

uint64_t sub_1821C0C78()
{
  v1 = v0[45];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[34];
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = v0[38];
        v9 = v0[33];
        v10 = v0[34];
        v7(v8, v5, v9);
        sub_182AD34C8();
        (*(v10 + 8))(v8, v9);
        v5 += v6;
        --v3;
      }

      while (v3);

      if (!*(v1 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v11, v12, v13);
      }
    }

    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v11 = sub_1821C0DD8;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1821C0DD8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 348);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = sub_182AD3548();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 44) = v2;
  *(v8 + 40) = v1;
  sub_181AB5D28(v4, v3, &unk_1EA839850);
  LODWORD(v4) = (*(v6 + 48))(v3, 1, v5);

  v9 = *(v0 + 248);
  if (v4 == 1)
  {
    sub_181F49A88(*(v0 + 248), &unk_1EA839850);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v6 + 8))(v9, v5);
    if (*(v8 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_182AD34A8();
      v11 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v13 = **(v0 + 224);

  if (v11 | v10)
  {
    v14 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 256);
  *(v0 + 168) = 1;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  swift_task_create();

  sub_181F49A88(v15, &unk_1EA839850);

  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_1821C0590;
  v17 = *(v0 + 312);

  return MEMORY[0x1EEE6DB90](v0 + 408, 0, 0, v17, v0 + 192);
}

uint64_t sub_1821C1100()
{
  v1 = *(v0 + 368);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 368);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 376);
        v9 = *(v0 + 296);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 216) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 376);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCD4;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821C1294()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v18 = *(v0 + 384);
      v4 = *(v0 + 272);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      v7 = *(v4 + 16);

      do
      {
        v8 = *(v0 + 392);
        v9 = *(v0 + 288);
        v11 = *(v0 + 264);
        v10 = *(v0 + 272);
        v7(v9, v5, v11);
        *(v0 + 208) = v8;
        v12 = v8;
        sub_182AD34B8();
        (*(v10 + 8))(v9, v11);
        v5 += v6;
        --v3;
      }

      while (v3);

      v1 = v18;
      if (!*(v18 + 112))
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v13, v14, v15);
      }
    }

    v16 = *(v0 + 392);
    *(v1 + 112) = MEMORY[0x1E69E7CC0];

    *(v1 + 112) = 0;
  }

  else
  {
  }

  v13 = sub_1821EBCD4;
  v14 = 0;
  v15 = 0;

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1821C1428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = type metadata accessor for NetworkChannel.State();
  v6[33] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD3708();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C1584, 0, 0);
}

uint64_t sub_1821C1584()
{
  sub_182AD3728();
  sub_182AD35B8();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_1821C16AC;
  v2 = *(v0 + 272);

  return MEMORY[0x1EEE6DB90](v0 + 368, 0, 0, v2, v0 + 192);
}

uint64_t sub_1821C16AC()
{

  if (v0)
  {
    v1 = sub_1821C2210;
  }

  else
  {
    v1 = sub_1821C17BC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821C17BC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 372);
  *(v0 + 308) = v2;
  *(v0 + 304) = v1;
  if (v2 >> 2 >= 0x3FuLL)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
  if (v5 >> 38 == 1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 40);
      *(v0 + 320) = v7;

      sub_181F4B3B8();
      *(v0 + 328) = swift_allocError();
      *v10 = v5;
      *(v10 + 4) = BYTE4(v5) & 0x3F;
      v8 = sub_1821C2118;
      goto LABEL_15;
    }
  }

  else if (v5 >> 38 == 2)
  {
    if (v5 == 0x8000000002)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v7 = *(v11 + 40);
        *(v0 + 312) = v7;

        v8 = sub_1821C1D68;
        goto LABEL_15;
      }
    }

    else if (v5 == 0x8000000003)
    {
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 40);
        *(v0 + 336) = v7;

        sub_182AD34E8();
        sub_1821EB618(&qword_1EA83AB20, MEMORY[0x1E69E8550]);
        *(v0 + 344) = swift_allocError();
        sub_182AD2E38();
        v8 = sub_1821C2194;
LABEL_15:

        return MEMORY[0x1EEE6DFA0](v8, v7, 0);
      }
    }
  }

  v29 = *(v0 + 304);
  v12 = *(v0 + 308);
  v13 = *(v0 + 240);
  v14 = *(v0 + 248);
  v15 = sub_182AD3548();
  v16 = *(v15 - 8);
  v28 = *(v0 + 224);
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v28;
  *(v18 + 48) = v17;
  *(v18 + 60) = v12;
  *(v18 + 56) = v29;
  sub_181AB5D28(v14, v13, &unk_1EA839850);
  LODWORD(v14) = (*(v16 + 48))(v13, 1, v15);

  v19 = *(v0 + 240);
  if (v14 == 1)
  {
    sub_181F49A88(*(v0 + 240), &unk_1EA839850);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v16 + 8))(v19, v15);
    if (*(v18 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_182AD34A8();
      v21 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }
  }

  v23 = **(v0 + 200);

  if (v21 | v20)
  {
    v24 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 248);
  *(v0 + 168) = 1;
  *(v0 + 176) = v24;
  *(v0 + 184) = v23;
  swift_task_create();

  sub_181F49A88(v25, &unk_1EA839850);

  v26 = swift_task_alloc();
  *(v0 + 296) = v26;
  *v26 = v0;
  v26[1] = sub_1821C16AC;
  v27 = *(v0 + 272);

  return MEMORY[0x1EEE6DB90](v0 + 368, 0, 0, v27, v0 + 192);
}

uint64_t sub_1821C1D68()
{
  sub_1821B5154(0);

  return MEMORY[0x1EEE6DFA0](sub_1821C1DDC, 0, 0);
}

uint64_t sub_1821C1DDC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 308);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = sub_182AD3548();
  v6 = *(v5 - 8);
  v19 = *(v0 + 224);
  (*(v6 + 56))(v4, 1, 1, v5);
  v7 = swift_allocObject();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v19;
  *(v8 + 48) = v7;
  *(v8 + 60) = v2;
  *(v8 + 56) = v1;
  sub_181AB5D28(v4, v3, &unk_1EA839850);
  LODWORD(v4) = (*(v6 + 48))(v3, 1, v5);

  v9 = *(v0 + 240);
  if (v4 == 1)
  {
    sub_181F49A88(*(v0 + 240), &unk_1EA839850);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    sub_182AD3538();
    (*(v6 + 8))(v9, v5);
    if (*(v8 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = sub_182AD34A8();
      v11 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v13 = **(v0 + 200);

  if (v11 | v10)
  {
    v14 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 248);
  *(v0 + 168) = 1;
  *(v0 + 176) = v14;
  *(v0 + 184) = v13;
  swift_task_create();

  sub_181F49A88(v15, &unk_1EA839850);

  v16 = swift_task_alloc();
  *(v0 + 296) = v16;
  *v16 = v0;
  v16[1] = sub_1821C16AC;
  v17 = *(v0 + 272);

  return MEMORY[0x1EEE6DB90](v0 + 368, 0, 0, v17, v0 + 192);
}

uint64_t sub_1821C2118()
{
  v1 = *(v0 + 328);
  sub_1821B5154(v1);

  return MEMORY[0x1EEE6DFA0](sub_1821EC21C, 0, 0);
}

uint64_t sub_1821C2194()
{
  v1 = *(v0 + 344);
  sub_1821B5154(v1);

  return MEMORY[0x1EEE6DFA0](sub_1821EC21C, 0, 0);
}

uint64_t sub_1821C2210()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[24];
  v0[44] = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);
    v0[45] = v3;

    v4 = v1;

    return MEMORY[0x1EEE6DFA0](sub_1821C2358, v3, 0);
  }

  else
  {

    sub_182AD4248();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1821C2358()
{
  v1 = *(v0 + 352);
  sub_1821B5154(v1);

  return MEMORY[0x1EEE6DFA0](sub_1821C23D4, 0, 0);
}

uint64_t sub_1821C23D4()
{
  sub_182AD4248();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821C2478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1821C2498, 0, 0);
}

uint64_t sub_1821C2498()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 48);
    *(v0 + 76) = BYTE4(v2);
    *(v0 + 72) = v2;
    v6 = (*(*Strong + 256) + **(*Strong + 256));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1821C2630;

    return v6(v0 + 72);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1821C2630()
{

  return MEMORY[0x1EEE6DFA0](sub_1821C272C, 0, 0);
}

uint64_t sub_1821C272C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821C2790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1821C27B0, 0, 0);
}

uint64_t sub_1821C27B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 48);
    *(v0 + 76) = BYTE4(v2);
    *(v0 + 72) = v2;
    v6 = (*(*Strong + 256) + **(*Strong + 256));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1821C2948;

    return v6(v0 + 72);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1821C2948()
{

  return MEMORY[0x1EEE6DFA0](sub_1821EC214, 0, 0);
}

uint64_t sub_1821C2A44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821C2A64, 0, 0);
}

uint64_t sub_1821C2A64()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1820A1C34;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0x6165526C69746E75, 0xEC00000029287964, sub_1821E89D8, v3, v4);
}

uint64_t sub_1821C2B40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821C2B60, 0, 0);
}

uint64_t sub_1821C2B60()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0x6165526C69746E75, 0xEC00000029287964, sub_1821E9078, v3, v4);
}

uint64_t sub_1821C2C3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821C2C5C, 0, 0);
}

uint64_t sub_1821C2C5C()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0x6165526C69746E75, 0xEC00000029287964, sub_1821E87A4, v3, v4);
}

uint64_t sub_1821C2D38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821C2D58, 0, 0);
}

uint64_t sub_1821C2D58()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0x6165526C69746E75, 0xEC00000029287964, sub_1821E5ECC, v3, v4);
}

uint64_t sub_1821C2E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_182AD3548();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v8 + 32))(&v16[v15], v10, v7);

  sub_181F774B4(0, 0, v13, a4, v16);
}

uint64_t sub_1821C301C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_182AD3548();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = *(v4 + 80);
  *(v14 + 5) = *(v4 + 88);
  *(v14 + 6) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);

  sub_181F774B4(0, 0, v11, &unk_182AFE060, v14);
}

uint64_t sub_1821C3240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1821C3260, 0, 0);
}

uint64_t sub_1821C3260()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821C3284, v1, 0);
}

uint64_t sub_1821C3284()
{
  sub_1821B52F4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821C32E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1821C3304, 0, 0);
}

uint64_t sub_1821C3304()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821EBE3C, v1, 0);
}

uint64_t NetworkChannel.__deallocating_deinit()
{
  NetworkChannel.deinit();

  return swift_deallocClassInstance();
}

uint64_t NetworkChannel.hashValue.getter()
{
  sub_182AD44E8();
  sub_1821B312C();
  return sub_182AD4558();
}

uint64_t sub_1821C33E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1821B3194();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1821C3470(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_182AD44E8();
  a4(v6);
  return sub_182AD4558();
}

uint64_t NetworkConnection<>.init(to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v5 + 288);
  v22 = v13;
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v14 = *(a4 + 8);
  NWParametersBuilder.init(auto:)(sub_1820C67F0, v21, 0, v13, v35);
  v15 = v33;
  v16 = v34;
  sub_181D8E2B8(a1, v12, type metadata accessor for NWEndpoint);
  v31 = v15;
  v32 = v16;
  v26 = 0;
  v27 = v13;
  v28 = v35;
  v29 = v14;
  v30 = v35;
  type metadata accessor for NWParametersBuilder();
  v18 = NWParametersBuilder.parametersNestedStack(for:)(a1, v17);
  v19 = sub_1821E035C(v12, v18);

  sub_181D8E3E8(a1, type metadata accessor for NWEndpoint);
  return v19;
}

{
  v9 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = *(v4 + 288);
  v30 = v15;
  v31 = a4;
  v28 = a4;
  v32 = a2;
  v33 = a3;
  v26 = *(a4 + 8);
  NWParametersBuilder.init(auto:)(sub_1820CA9BC, v29, 0, v15, v43);
  v16 = v41;
  v17 = v42;
  v18 = a1;
  v27 = a1;
  v19 = *(a1 + 24);
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v21 = *(v20 + 8);
  v21(v19, v20);
  v39 = v16;
  v40 = v17;
  v21(v19, v20);
  v34 = 0;
  v35 = v15;
  v36 = v43;
  v37 = v26;
  v38 = v43;
  type metadata accessor for NWParametersBuilder();
  v23 = NWParametersBuilder.parametersNestedStack(for:)(v11, v22);
  sub_181D8E3E8(v11, type metadata accessor for NWEndpoint);
  v24 = sub_1821E035C(v14, v23);

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v24;
}

uint64_t NetworkConnection<>.init(to:using:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = a2[1];
  sub_181D8E2B8(a1, v10, type metadata accessor for NWEndpoint);
  v19[5] = v11;
  v19[6] = v12;
  v13 = *(v4 + 288);
  v14 = *(a3 + 8);
  v19[0] = 0;
  v19[1] = v13;
  v19[2] = &v20;
  v19[3] = v14;
  v19[4] = &v20;
  type metadata accessor for NWParametersBuilder();
  v16 = NWParametersBuilder.parametersNestedStack(for:)(a1, v15);

  v17 = sub_1821E035C(v10, v16);

  sub_181D8E3E8(a1, type metadata accessor for NWEndpoint);
  return v17;
}

uint64_t NetworkConnection<>.init(to:using:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v22[0] = a3;
  v5 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = *a2;
  v12 = a2[1];
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = *(v13 + 8);
  v15(v14, v13);
  v22[7] = v11;
  v22[8] = v12;
  v15(v14, v13);
  v16 = *(v22[1] + 288);
  v17 = *(v22[0] + 8);
  v22[2] = 0;
  v22[3] = v16;
  v22[4] = &v23;
  v22[5] = v17;
  v22[6] = &v23;
  type metadata accessor for NWParametersBuilder();
  v19 = NWParametersBuilder.parametersNestedStack(for:)(v7, v18);
  sub_181D8E3E8(v7, type metadata accessor for NWEndpoint);

  v20 = sub_1821E035C(v10, v19);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

void *sub_1821C3B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NWEndpoint.nw.getter();
  if (v7)
  {
    v8 = v7;
    if (nw_endpoint_get_type(v7) == nw_endpoint_type_url)
    {
      v9 = *(a2 + 16);
      os_unfair_lock_lock((v9 + 24));
      v10 = *(v9 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v9 + 24));
      nw_parameters_set_url_endpoint(v10, v8);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_181D8E2B8(a1, v6, type metadata accessor for NWEndpoint);
  type metadata accessor for NWMultiplexGroup(0);
  v11 = swift_allocObject();
  sub_181D8E2B8(v6, v11 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint, type metadata accessor for NWEndpoint);
  v12 = NWEndpoint.nw.getter();
  if (v12)
  {
    multiplex = nw_group_descriptor_create_multiplex(v12);
    swift_unknownObjectRelease();
    sub_181D8E3E8(v6, type metadata accessor for NWEndpoint);
  }

  else
  {
    sub_181D8E3E8(v6, type metadata accessor for NWEndpoint);
    multiplex = 0;
  }

  *(v11 + OBJC_IVAR____TtC7Network16NWMultiplexGroup__nw) = multiplex;
  type metadata accessor for NWConnectionGroup();
  v14 = swift_allocObject();

  v15 = sub_1821E05EC(v11, a2, v14);

  swift_allocObject();
  v16 = sub_1821DE990(v15);

  sub_181D8E3E8(a1, type metadata accessor for NWEndpoint);
  return v16;
}

void *NetworkConnection<>.init(to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v5 + 288);
  v22 = v13;
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v14 = *(a4 + 8);
  NWParametersBuilder.init(auto:)(sub_1820CA9BC, v21, 0, v13, v35);
  v15 = v33;
  v16 = v34;
  sub_181D8E2B8(a1, v12, type metadata accessor for NWEndpoint);
  v31 = v15;
  v32 = v16;
  v26 = 0;
  v27 = v13;
  v28 = v35;
  v29 = v14;
  v30 = v35;
  type metadata accessor for NWParametersBuilder();
  v18 = NWParametersBuilder.parametersNestedStack(for:)(a1, v17);
  v19 = sub_1821C3B0C(v12, v18);

  sub_181D8E3E8(a1, type metadata accessor for NWEndpoint);
  return v19;
}

{
  v9 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = *(v4 + 288);
  v30 = v15;
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v27 = *(a4 + 8);
  NWParametersBuilder.init(auto:)(sub_1820CA9BC, v29, 0, v15, v43);
  v16 = v41;
  v17 = v42;
  v18 = a1;
  v28 = a1;
  v19 = *(a1 + 24);
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v21 = *(v20 + 8);
  v21(v19, v20);
  v39 = v16;
  v40 = v17;
  v21(v19, v20);
  v34 = 0;
  v35 = v15;
  v36 = v43;
  v37 = v27;
  v38 = v43;
  type metadata accessor for NWParametersBuilder();
  v23 = NWParametersBuilder.parametersNestedStack(for:)(v11, v22);
  sub_181D8E3E8(v11, type metadata accessor for NWEndpoint);
  v24 = sub_1821C3B0C(v14, v23);

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v24;
}

void *NetworkConnection<>.init(to:using:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  sub_181D8E2B8(a1, v10, type metadata accessor for NWEndpoint);
  v19[5] = v12;
  v19[6] = v11;
  v13 = *(v4 + 288);
  v14 = *(a3 + 8);
  v19[0] = 0;
  v19[1] = v13;
  v19[2] = &v20;
  v19[3] = v14;
  v19[4] = &v20;
  type metadata accessor for NWParametersBuilder();
  v16 = NWParametersBuilder.parametersNestedStack(for:)(a1, v15);

  v17 = sub_1821C3B0C(v10, v16);
  sub_181D8E3E8(a1, type metadata accessor for NWEndpoint);
  return v17;
}

void *NetworkConnection<>.init(to:using:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = *a2;
  v12 = a2[1];
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = *(v13 + 8);
  v15(v14, v13);
  v29 = v11;
  v30 = v12;
  v15(v14, v13);
  v16 = *(v22 + 288);
  v17 = *(v23 + 8);
  v24 = 0;
  v25 = v16;
  v26 = &v31;
  v27 = v17;
  v28 = &v31;
  type metadata accessor for NWParametersBuilder();
  v19 = NWParametersBuilder.parametersNestedStack(for:)(v7, v18);
  sub_181D8E3E8(v7, type metadata accessor for NWEndpoint);

  v20 = sub_1821C3B0C(v10, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t NetworkConnection<>.start()()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  sub_1821B47AC(qword_1EA8433A8);
}

uint64_t sub_1821C43B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v13 = sub_182AD3548();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;

  v15 = sub_182271E84(0, 0, v12, &unk_182AFE510, v14);

  *a1 = v15;
  return result;
}

uint64_t sub_1821C4540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A148);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B180);
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C4678, 0, 0);
}

uint64_t sub_1821C4678()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  type metadata accessor for NWPath(0);
  v11 = *(v0 + 16);
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8790], v4);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_182AD3738();

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  *(v8 + 32) = v11;
  *(v8 + 48) = v6;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_181F51570;

  return MEMORY[0x1EEE6DE40]();
}

void sub_1821C47FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_1821E9B48;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_181EC7B18(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821E9B48;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181ECAA3C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7F17C;
    aBlock[3] = &block_descriptor_1418;
    v16 = _Block_copy(aBlock);

    nw_connection_set_path_changed_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821C4A40(uint64_t a1)
{
  v2 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_181D8E2B8(a1, v4, type metadata accessor for NWPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150);
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1821C4B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[16] = *a6;
  v8 = type metadata accessor for NWPath(0);
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v7[19] = *(v9 + 64);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  v7[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B190);
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C4D74, 0, 0);
}

uint64_t sub_1821C4D74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B180);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1821C4E40;
  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 9);
}

uint64_t sub_1821C4E40()
{

  if (v0)
  {
    v1 = sub_1821C539C;
  }

  else
  {
    v1 = sub_1821C4F50;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821C4F50()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  if ((*(v2 + 48))(v1, 1, *(v0 + 136)) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v27 = *(v0 + 128);
  v28 = *(v0 + 120);
  v8 = *(v0 + 104);
  v29 = *(v0 + 112);
  v30 = *(v0 + 168);
  v25 = v5;
  v26 = *(v0 + 96);
  v9 = sub_182AD3548();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 1, 1, v9);
  sub_181D8DD58(v1, v7, type metadata accessor for NWPath);
  v11 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v13[2] = 0;
  v14 = v13 + 2;
  v13[3] = 0;
  v13[4] = *(v27 + 288);
  v13[5] = v28;
  v13[6] = v26;
  v13[7] = v8;
  sub_181D8DD58(v7, v13 + v11, type metadata accessor for NWPath);
  *(v13 + v12) = v29;
  sub_181AB5D28(v25, v30, &unk_1EA839850);
  LODWORD(v12) = (*(v10 + 48))(v30, 1, v9);

  v15 = *(v0 + 168);
  if (v12 != 1)
  {
    sub_182AD3538();
    (*(v10 + 8))(v15, v9);
    if (*v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v16 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  sub_181F49A88(*(v0 + 168), &unk_1EA839850);
  if (!*v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_182AD34A8();
  v18 = v17;
  swift_unknownObjectRelease();
LABEL_10:
  v19 = **(v0 + 80);

  if (v18 | v16)
  {
    v20 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v16;
    *(v0 + 40) = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 176);
  *(v0 + 48) = 1;
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  swift_task_create();

  sub_181F49A88(v21, &unk_1EA839850);
  v22 = swift_task_alloc();
  *(v0 + 216) = v22;
  *v22 = v0;
  v22[1] = sub_1821C4E40;
  v23 = *(v0 + 184);
  v24 = *(v0 + 192);

  return MEMORY[0x1EEE6DB90](v23, 0, 0, v24, v0 + 72);
}

uint64_t sub_1821C539C()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821C546C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v13 = sub_182AD3548();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;

  v15 = sub_182271E84(0, 0, v12, &unk_182AFE4E0, v14);

  *(a1 + 8) = v15;
  return result;
}

uint64_t sub_1821C55F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B150);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C572C, 0, 0);
}

uint64_t sub_1821C572C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x1E69E8790], *(v0 + 48));
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_182AD3738();

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v8;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1821C589C;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821C589C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1821EBEF8;
  }

  else
  {

    v2 = sub_1821EC1E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1821C59B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_1821E97F0;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_181E60818(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821E97F0;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181F1B704;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F1B6B0;
    aBlock[3] = &block_descriptor_1396;
    v16 = _Block_copy(aBlock);

    nw_connection_set_viability_changed_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821C5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B160);
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C5D14, 0, 0);
}

uint64_t sub_1821C5D14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1821C5DE4;
  v2 = *(v0 + 144);

  return MEMORY[0x1EEE6DB90](v0 + 176, 0, 0, v2, v0 + 72);
}

uint64_t sub_1821C5DE4()
{

  if (v0)
  {
    v1 = sub_1821C62BC;
  }

  else
  {
    v1 = sub_1821C5EF4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821C5EF4()
{
  v1 = *(v0 + 176);
  if (v1 == 2)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 104);
    v21 = *(v0 + 96);
    v22 = *(v0 + 120);
    v8 = sub_182AD3548();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v5, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0u;
    *(v10 + 32) = v22;
    *(v10 + 40) = v21;
    *(v10 + 48) = v7;
    *(v10 + 56) = v1 & 1;
    *(v10 + 64) = v6;
    sub_181AB5D28(v5, v4, &unk_1EA839850);
    LODWORD(v4) = (*(v9 + 48))(v4, 1, v8);

    v11 = *(v0 + 128);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 128), &unk_1EA839850);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v9 + 8))(v11, v8);
      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_182AD34A8();
        v13 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    v15 = **(v0 + 80);

    if (v13 | v12)
    {
      v16 = v0 + 176;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 176;
    }

    v18 = *(v0 + 136);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_1821C5DE4;
    v20 = *(v0 + 144);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 72);
  }
}

uint64_t sub_1821C62BC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821C6370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *(v4 + 48);
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  type metadata accessor for NetworkConnection.LockedState();
  sub_181F50DA0(a4, v8, v6);
}

uint64_t sub_1821C63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v13 = sub_182AD3548();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;

  v15 = sub_182271E84(0, 0, v12, &unk_182AFE488, v14);

  *(a1 + 16) = v15;
  return result;
}

uint64_t sub_1821C6580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B150);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C66B8, 0, 0);
}

uint64_t sub_1821C66B8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x1E69E8790], *(v0 + 48));
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_182AD3738();

  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v8;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1821C589C;

  return MEMORY[0x1EEE6DE40]();
}

void sub_1821C6828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_1821EC0D8;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_181E61CA4(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821EC0D8;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181F1B704;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F1B6B0;
    aBlock[3] = &block_descriptor_1374;
    v16 = _Block_copy(aBlock);

    nw_connection_set_better_path_available_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821C6A6C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v7[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140);
  sub_182AD36A8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1821C6B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B160);
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C6C80, 0, 0);
}

uint64_t sub_1821C6C80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1821C6D50;
  v2 = *(v0 + 144);

  return MEMORY[0x1EEE6DB90](v0 + 176, 0, 0, v2, v0 + 72);
}

uint64_t sub_1821C6D50()
{

  if (v0)
  {
    v1 = sub_1821EC1FC;
  }

  else
  {
    v1 = sub_1821C6E60;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821C6E60()
{
  v1 = *(v0 + 176);
  if (v1 == 2)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 104);
    v21 = *(v0 + 96);
    v22 = *(v0 + 120);
    v8 = sub_182AD3548();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v5, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0u;
    *(v10 + 32) = v22;
    *(v10 + 40) = v21;
    *(v10 + 48) = v7;
    *(v10 + 56) = v1 & 1;
    *(v10 + 64) = v6;
    sub_181AB5D28(v5, v4, &unk_1EA839850);
    LODWORD(v4) = (*(v9 + 48))(v4, 1, v8);

    v11 = *(v0 + 128);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 128), &unk_1EA839850);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v9 + 8))(v11, v8);
      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_182AD34A8();
        v13 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    v15 = **(v0 + 80);

    if (v13 | v12)
    {
      v16 = v0 + 176;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 176;
    }

    v18 = *(v0 + 136);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_1821C6D50;
    v20 = *(v0 + 144);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 72);
  }
}

uint64_t sub_1821C7228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v9 + 136) = a8;
  *(v9 + 144) = v8;
  *(v9 + 82) = a7;
  *(v9 + 81) = a6;
  *(v9 + 120) = a4;
  *(v9 + 128) = a5;
  *(v9 + 104) = a2;
  *(v9 + 112) = a3;
  *(v9 + 96) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821C725C, 0, 0);
}

void sub_1821C725C()
{
  v1 = *(v0 + 112);
  v2 = (*(v0 + 120))();
  *(v0 + 88) = v2;
  if (v1)
  {

    MEMORY[0x1865D9F10](v3);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v4 = *(v0 + 88);
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v0 + 82);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 152) = inited;
  v7 = nw_content_context_create("sendContext");
  *(inited + 16) = v7;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v7, 0.5);
  *(inited + 64) = v5;
  nw_content_context_set_is_final(v7, v5);
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v7, *(v10 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v7, *(*(v4 + v11) + 16));
      v11 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_15:

  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_1821C74AC;
  v13 = *(v0 + 136);
  v14 = *(v0 + 81);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);

  sub_1821C7638(v16, v15, inited, v14, v13);
}

uint64_t sub_1821C74AC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1821C75C0;
  }

  else
  {
    v2 = sub_1820A64C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821C75C0()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821C7638(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 88) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821C7664, 0, 0);
}

uint64_t sub_1821C7664()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  v10 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v10;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1821C7794;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_182AFE1A0, v5, sub_1821EBDCC, v6, 0, 0, v8);
}

uint64_t sub_1821C7794()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1821A9814;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821C78B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v11;
  *(v9 + 152) = v8;
  *(v9 + 128) = a7;
  *(v9 + 136) = a8;
  *(v9 + 82) = a6;
  *(v9 + 81) = a5;
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821C78F4, 0, 0);
}

void sub_1821C78F4()
{
  v1 = *(v0 + 104);
  v2 = (*(v0 + 112))();
  *(v0 + 88) = v2;
  if (v1)
  {

    MEMORY[0x1865D9F10](v3);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v4 = *(v0 + 88);
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v0 + 82);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  v7 = nw_content_context_create("sendContext");
  *(inited + 16) = v7;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v7, 0.5);
  *(inited + 64) = v5;
  nw_content_context_set_is_final(v7, v5);
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v7, *(v10 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v7, *(*(v4 + v11) + 16));
      v11 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_15:

  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_1821C7B48;
  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);
  v16 = *(v0 + 81);
  v17 = *(v0 + 96);

  sub_1821C7D4C(v17, inited, v16, v14, v15, v13);
}

uint64_t sub_1821C7B48()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1821C7CD4;
  }

  else
  {
    v2 = sub_1821C7C5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821C7C5C()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821C7CD4()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821C7D4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 256) = a3;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 80) = *(a4 - 8);
  *(v7 + 88) = swift_task_alloc();
  v8 = sub_182AD39B8();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  *(v7 + 136) = swift_task_alloc();
  v9 = sub_182AD2868();
  *(v7 + 144) = v9;
  *(v7 + 152) = *(v9 - 8);
  *(v7 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821C7F20, 0, 0);
}

uint64_t sub_1821C7F20()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 104) + 16);
  v4(v1, *(v0 + 32), *(v0 + 96));
  v5 = *(v2 + 48);
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  if (v6 == 1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
    (*(v8 + 56))(v9, 1, 1, v7);
    goto LABEL_4;
  }

  v10 = swift_dynamicCast();
  (*(v8 + 56))(v9, v10 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
LABEL_4:
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = *(v0 + 48);
    v14 = *(v0 + 32);
    sub_181F49A88(*(v0 + 136), &unk_1EA8394B0);
    v4(v11, v14, v12);
    if (v5(v11, 1, v13) == 1)
    {
      (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
    }

    else if (swift_dynamicCast())
    {
      v16 = *(v0 + 16);
      v15 = *(v0 + 24);
      *(v0 + 184) = v16;
      *(v0 + 192) = v15;
      sub_181F49B58(v16, v15);
      v17 = swift_task_alloc();
      *(v0 + 200) = v17;
      *v17 = v0;
      v18 = sub_1821C8540;
      goto LABEL_11;
    }

    v19 = *(v0 + 112);
    v20 = *(v0 + 48);
    v4(v19, *(v0 + 32), *(v0 + 96));
    if (v5(v19, 1, v20) == 1)
    {
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
      v21 = swift_task_alloc();
      *(v0 + 248) = v21;
      *v21 = v0;
      v21[1] = sub_1821C891C;
      v22 = *(v0 + 56);
      v23 = *(v0 + 256);
      v24 = *(v0 + 40);
      v25 = 0;
      v26 = 0xF000000000000000;
LABEL_12:

      return sub_1821C7638(v25, v26, v24, v23, v22);
    }

    v27 = *(v0 + 88);
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);
    (*(*(v0 + 80) + 32))(v27, *(v0 + 112), v29);
    v16 = sub_1820F93E0(v27, v29, *(*(*(*(v28 + 8) + 8) + 8) + 8));
    v15 = v30;
    *(v0 + 216) = v16;
    *(v0 + 224) = v30;
    v17 = swift_task_alloc();
    *(v0 + 232) = v17;
    *v17 = v0;
    v18 = sub_1821C870C;
LABEL_11:
    v17[1] = v18;
    v22 = *(v0 + 56);
    v23 = *(v0 + 256);
    v24 = *(v0 + 40);
    v25 = v16;
    v26 = v15;
    goto LABEL_12;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
  v32 = swift_task_alloc();
  *(v0 + 168) = v32;
  *v32 = v0;
  v32[1] = sub_1821C836C;
  v33 = *(v0 + 160);
  v34 = *(v0 + 56);
  v35 = *(v0 + 256);
  v36 = *(v0 + 40);

  return sub_1821C92A0(v33, v36, v35, v34);
}

uint64_t sub_1821C836C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1821C8AD0;
  }

  else
  {
    v2 = sub_1821C8480;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821C8480()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821C8540()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1821C8B90;
  }

  else
  {
    sub_181C1F2E4(*(v2 + 184), *(v2 + 192));
    v3 = sub_1821C865C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1821C865C()
{
  sub_181C1F2E4(v0[23], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821C870C()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  *(*v1 + 240) = v0;

  sub_181C1F2E4(v3, v2);
  if (v0)
  {
    v4 = sub_1821C8C54;
  }

  else
  {
    v4 = sub_1821C885C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1821C885C()
{
  (*(v0[10] + 8))(v0[11], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821C891C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1821C8AD0()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821C8B90()
{
  v1 = v0[23];
  v2 = v0[24];
  sub_181C1F2E4(v1, v2);
  sub_181C1F2E4(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1821C8C54()
{
  (*(v0[10] + 8))(v0[11], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821C8D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, char a6, char a7, uint64_t a8)
{
  v14 = a4();
  v27 = v14;
  if (a3)
  {

    MEMORY[0x1865D9F10](v15);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v16 = v27;
  }

  else
  {
    v16 = v14;
  }

  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v18 = nw_content_context_create("sendContext");
  *(inited + 16) = v18;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v19 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v19, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v18, 0.5);
  *(inited + 64) = a7 & 1;
  nw_content_context_set_is_final(v18, a7 & 1);
  result = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (!(v16 >> 62))
  {
    v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_15:

    v26[0] = a1;
    v26[1] = a2;
    v25 = sub_181F7D470();
    sub_1821C8F84(v26, inited, a6 & 1, MEMORY[0x1E6969080], a8, v25);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    return swift_deallocClassInstance();
  }

  result = sub_182AD3EB8();
  v21 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v21 >= 1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v21; ++i)
      {
        v23 = MEMORY[0x1865DA790](i, v16);
        nw_content_context_set_metadata_for_protocol(v18, *(v23 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v24 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v18, *(*(v16 + v24) + 16));
        v24 += 8;
        --v21;
      }

      while (v21);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1821C8F84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  sub_1821B47AC(qword_1EA8433A8);
  if (*(v6 + 16))
  {
    v12[0] = 0;
    v12[1] = 0;
    NWConnection.send<A>(content:contentContext:isComplete:completion:)(a1, a2, a3 & 1, v12, a4, a6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821C9034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a3();
  v26 = v15;
  if (a2)
  {

    MEMORY[0x1865D9F10](v16);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v17 = v26;
  }

  else
  {
    v17 = v15;
  }

  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v19 = nw_content_context_create("sendContext");
  *(inited + 16) = v19;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v20 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v20, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v19, 0.5);
  *(inited + 64) = a6 & 1;
  nw_content_context_set_is_final(v19, a6 & 1);
  result = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (!(v17 >> 62))
  {
    v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_15:

    sub_1821C8F84(a1, inited, a5 & 1, a7, a8, a9);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    return swift_deallocClassInstance();
  }

  result = sub_182AD3EB8();
  v22 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v22 >= 1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        v24 = MEMORY[0x1865DA790](i, v17);
        nw_content_context_set_metadata_for_protocol(v19, *(v24 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v25 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v19, *(*(v17 + v25) + 16));
        v25 += 8;
        --v22;
      }

      while (v22);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821C92A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 80) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821C92C8, 0, 0);
}

uint64_t sub_1821C92C8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1821C93E0;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_182AFE190, v4, sub_1821E6CF8, v6, 0, 0, v8);
}