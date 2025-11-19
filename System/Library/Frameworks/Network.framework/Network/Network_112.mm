uint64_t sub_1821C93E0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1820BEE3C;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821C9504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821C9530, 0, 0);
}

uint64_t sub_1821C9530()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_1821E6F2C, v4, v7);
}

uint64_t sub_1821C964C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821C9678, 0, 0);
}

uint64_t sub_1821C9678()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v10 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = v10;
  *(v5 + 48) = v3;
  *(v5 + 56) = v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_181FC1030;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_1821E6DE8, v5, v8);
}

void sub_1821C97A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, int a6)
{
  v28 = a6;
  v26 = a4;
  v27 = a5;
  v25[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - v11;
  if (qword_1EA837208 != -1)
  {
    v10 = swift_once();
  }

  v13 = *(a2 + 32);
  MEMORY[0x1EEE9AC00](v10);
  v25[-2] = a2;
  v25[-1] = v14;
  os_unfair_lock_lock((v13 + 24));
  sub_1821EC190((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));
  v15 = *(a2 + 16);
  if (v15)
  {
    (*(v9 + 16))(v12, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v12, v8);
    v18 = *(v15 + 16);
    v19 = v26;
    if (v26 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_182AD2138();
    }

    v21 = NWCreateDispatchDataFromNSData(v20, v19);

    v22 = *(v27 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1821EC0D4;
    *(v23 + 24) = v17;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1106;
    v24 = _Block_copy(aBlock);

    nw_connection_send(v18, v21, v22, v28 & 1, v24);

    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }
}

void sub_1821C9A80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v25 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  sub_1821B47AC(qword_1EA8433A8);
  v14 = *(a2 + 16);
  if (v14)
  {
    (*(v11 + 16))(v13, a1, v10);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    (*(v11 + 32))(v16 + v15, v13, v10);
    v18 = *(v14 + 16);
    if (a4 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_182AD2138();
    }

    v20 = NWCreateDispatchDataFromNSData(v19, v17);

    v21 = *(a5 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1821EC0D4;
    *(v22 + 24) = v16;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1080;
    v23 = _Block_copy(aBlock);

    nw_connection_send(v18, v20, v21, v25 & 1, v23);

    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821C9D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821C9D40, 0, 0);
}

uint64_t sub_1821C9D40()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_18209F728;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000002ELL, 0x8000000182BDFDF0, sub_1821E6CFC, v4, v8);
}

void sub_1821C9E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v21 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-v13];
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  sub_1821B47AC(qword_1EA8433A8);
  if (*(a2 + 16))
  {
    v15 = sub_182AD2868();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v14, a3, v15);
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v9 + 16))(v11, a1, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v11, v8);
    sub_1821CA100(v14, v21, v20 & 1, sub_1821E6D0C, v18);

    sub_181F49A88(v14, &unk_1EA8394B0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1821CA100(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v64 = a4;
  v63 = a5;
  v67 = a3;
  v66 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v12 = sub_182AD2868();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = a1;
  sub_181AB5D28(a1, v11, &unk_1EA8394B0);
  v25 = *(v13 + 48);
  if (v25(v11, 1, v12) == 1)
  {
    v26 = v13;
    sub_181F49A88(v11, &unk_1EA8394B0);
    sub_181AB5D28(v24, v8, &unk_1EA8394B0);
    if (v25(v8, 1, v12) == 1)
    {
      sub_181F49A88(v8, &unk_1EA8394B0);
      v28 = v64;
      if (v64)
      {
        v29 = *(v65 + 16);
        v30 = NWCreateDispatchDataFromNSData(0, v27);
        v31 = *(v66 + 16);
        v32 = swift_allocObject();
        v33 = v63;
        *(v32 + 16) = v28;
        *(v32 + 24) = v33;
        v72 = sub_181FE5014;
        v73 = v32;
        aBlock = MEMORY[0x1E69E9820];
        v69 = 1107296256;
        v70 = sub_181AA4EBC;
        v71 = &block_descriptor_1052;
        v34 = _Block_copy(&aBlock);

        nw_connection_send(v29, v30, v31, v67 & 1, v34);
        _Block_release(v34);
      }

      else
      {
        v57 = *(v65 + 16);
        v58 = NWCreateDispatchDataFromNSData(0, v27);
        nw_connection_send_idempotent(v57, v58, *(v66 + 16), v67 & 1);
      }
    }

    else
    {
      v44 = v62;
      (*(v13 + 32))(v62, v8, v12);
      (*(v13 + 16))(v15, v44, v12);
      v45 = sub_181F76674(v15);
      v47 = v46;
      v48 = v64;
      if (v64)
      {
        v49 = *(v65 + 16);
        v50 = sub_182AD2138();
        v52 = NWCreateDispatchDataFromNSData(v50, v51);

        v53 = *(v66 + 16);
        v54 = swift_allocObject();
        v55 = v63;
        *(v54 + 16) = v48;
        *(v54 + 24) = v55;
        v72 = sub_181FE5014;
        v73 = v54;
        aBlock = MEMORY[0x1E69E9820];
        v69 = 1107296256;
        v70 = sub_181AA4EBC;
        v71 = &block_descriptor_1059;
        v56 = _Block_copy(&aBlock);

        nw_connection_send(v49, v52, v53, v67 & 1, v56);
        _Block_release(v56);
      }

      else
      {
        v59 = *(v65 + 16);
        v60 = sub_182AD2138();
        v52 = NWCreateDispatchDataFromNSData(v60, v61);

        nw_connection_send_idempotent(v59, v52, *(v66 + 16), v67 & 1);
      }

      sub_181C1F2E4(v45, v47);
      (*(v26 + 8))(v62, v12);
    }
  }

  else
  {
    v35 = *(v13 + 32);
    v35(v20, v11, v12);
    v35(v23, v20, v12);
    v36 = v13;
    v37 = v64;
    v38 = *(v65 + 16);
    if (v64)
    {
      v39 = sub_182AD2808();
      v40 = *(v66 + 16);
      v41 = swift_allocObject();
      v42 = v63;
      *(v41 + 16) = v37;
      *(v41 + 24) = v42;
      v72 = sub_181BEBE54;
      v73 = v41;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_181AA4EBC;
      v71 = &block_descriptor_1065;
      v43 = _Block_copy(&aBlock);

      nw_connection_send(v38, v39, v40, v67 & 1, v43);
      _Block_release(v43);
    }

    else
    {
      v39 = sub_182AD2808();
      nw_connection_send_idempotent(v38, v39, *(v66 + 16), v67 & 1);
    }

    (*(v36 + 8))(v23, v12);
  }
}

uint64_t sub_1821CA798@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for QUIC.Stream.LockedState();
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

Swift::Void __swiftcall QUIC.Stream.cancel()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[6];
  v4 = *(*v0 + 288);
  v22 = v4;
  v5 = *(v2 + 296);
  v23 = v5;
  type metadata accessor for QUIC.Stream.LockedState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AED8);
  sub_181F50DA0(sub_1821E0534, v21, v3);
  v7 = v24;
  if ((v24 & 1) == 0)
  {
    if (v25)
    {
      v6 = sub_1821CAA74();
      if (v6)
      {
        if ((QUIC.Stream.streamID.getter() & 2) == 0)
        {
          v8 = NetworkConnection<>.localMaxStreamsBidirectional.getter();
          v9 = __OFADD__(v8, 1);
          v10 = (&v8->isa + 1);
          if (!v9)
          {
            v6 = NetworkConnection<>.localMaxStreamsBidirectional.setter(v10);
            goto LABEL_9;
          }

          __break(1u);
LABEL_16:
          __break(1u);
          return;
        }

        v11 = NetworkConnection<>.localMaxStreamsUnidirectional.getter();
        v9 = __OFADD__(v11, 1);
        v12 = (&v11->isa + 1);
        if (v9)
        {
          goto LABEL_16;
        }

        v6 = NetworkConnection<>.localMaxStreamsUnidirectional.setter(v12);
      }
    }
  }

LABEL_9:
  v13 = v0[4];
  MEMORY[0x1EEE9AC00](v6);
  v20 = v7;
  v18 = v4;
  v19 = v5;
  type metadata accessor for NetworkChannel.NeworkChannelLockedState();
  sub_181F50DA0(sub_1821EC178, v17, v13);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v4;
  v19 = v5;
  sub_181F50DA0(sub_1821E0560, v17, v3);
  if ((v20 & 1) == 0)
  {
    v15 = v1[2];
    if (v15)
    {
      nw_connection_cancel(*(v15 + 16));
    }

    v16 = v1[3];
    if (v16)
    {
      nw_connection_group_cancel(*(v16 + 24));
    }
  }
}

uint64_t sub_1821CAA74()
{
  v0 = *(sub_1821DEAF4() + 16);

  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 24));

  server_mode = nw_parameters_get_server_mode(v1);
  swift_unknownObjectRelease();
  return (server_mode ^ QUIC.Stream.streamID.getter()) & 1;
}

uint64_t QUIC.Stream.directionality.getter@<X0>(BOOL *a1@<X8>)
{
  result = QUIC.Stream.streamID.getter();
  *a1 = (result & 2) == 0;
  return result;
}

nw_protocol_metadata_t sub_1821CAB7C(nw_protocol_metadata_t result, void (*a2)(Class, nw_protocol_metadata_t))
{
  v3 = *(v2 + 24);
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = result;
  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  result = nw_connection_group_copy_protocol_metadata(*(v3 + 24), *(off_1EA839710 + 4));
  if (!result || (v6 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result), result = swift_unknownObjectRelease(), !v6))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();
  result = swift_dynamicCastClassUnconditional();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  a2(result[2].isa, v5);
}

uint64_t sub_1821CAC6C(uint64_t result)
{
  v1 = result;
  if (*(result + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_1821CACEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1821CB898(a1, a2, type metadata accessor for QUIC.Stream.LockedState, sub_1821CA798);
  return v4;
}

void *sub_1821CAD64(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  *(v2 + 48) = v5;
  *(v2 + 56) = a2;
  return sub_1821B2F20(a1, &qword_1EA83B0E8, &unk_182AFE360, &unk_1EA83B0F0);
}

uint64_t QUIC.Stream.prependProtocols<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = a3;
  v8 = *v4;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  v14 = sub_182185B3C(v12, v7);
  result = (*(v9 + 8))(v12, v7);
  v16 = v4[2];
  if (v16)
  {
    v17 = v14[2];
    if (v17)
    {
      v28 = v4;
      v29 = v8;
      v30 = v7;
      v31 = a4;
      v18 = (v14 + 4);

      do
      {
        sub_181F75240(v18, v32);
        v20 = v33;
        v19 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v21 = *(v19 + 72);
        v22 = swift_unknownObjectRetain();
        v21(v22, v20, v19);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v32);
        v18 += 40;
        --v17;
      }

      while (v17);

      v7 = v30;
      a4 = v31;
      v5 = v28;
      v8 = v29;
    }

    else
    {
    }

    type metadata accessor for QUIC.Stream();
    v23 = v5[7];
    v24 = swift_allocObject();

    v25 = sub_1821CB898(v16, v23, type metadata accessor for QUIC.Stream.LockedState, sub_1821CA798);
    v26 = v5[6];
    MEMORY[0x1EEE9AC00](v25);
    v27 = *(v8 + 296);
    *(&v28 - 4) = *(v8 + 288);
    *(&v28 - 3) = v7;
    *(&v28 - 2) = v27;
    *(&v28 - 1) = a4;
    type metadata accessor for QUIC.Stream.LockedState();
    sub_181F50DA0(sub_1821E0594, (&v28 - 6), v26);

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821CB0A0(int *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *v1;
  v3 = *a1;
  *(v2 + 36) = *(a1 + 4);
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1821CB0F8, 0, 0);
}

uint64_t sub_1821CB0F8()
{
  v13 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v10 = *(v0 + 36);
  v9 = v1;
  v12 = 0x80;
  v11 = 2;
  v4 = *(v2 + 288);
  v3 = *(v2 + 296);
  if (static NetworkChannel.State.== infix(_:_:)(&v9, &v11))
  {
    v5 = *(*(v0 + 16) + 48);
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    type metadata accessor for QUIC.Stream.LockedState();
    sub_181F50DA0(sub_1821E5E24, v6, v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_1821CB1FC()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  v2 = nw_connection_copy_protocol_metadata(*(v1 + 16), *(off_1EA839710 + 4));
  if (!v2 || (v3 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v2), swift_unknownObjectRelease(), !v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();

  swift_dynamicCastClassUnconditional();
}

uint64_t QUIC.Stream.initiator.getter@<X0>(_BYTE *a1@<X8>)
{
  result = QUIC.Stream.streamID.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1821CB310(uint64_t (*a1)(void))
{
  sub_1821CB1FC();
  v3 = a1(*(v2 + 16));

  return v3;
}

uint64_t QUIC.Stream.streamApplicationErrorCode.setter(uint64_t a1)
{
  sub_1821CB1FC();
  nw_quic_set_stream_application_error(*(v2 + 16), a1);
}

uint64_t (*QUIC.Stream.streamApplicationErrorCode.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = QUIC.Stream.streamApplicationErrorCode.getter();
  return sub_1821CB3E4;
}

uint64_t QUIC.Stream.__deallocating_deinit()
{
  QUIC.Stream.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1821CB444@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for QUIC.Datagrams.LockedState();
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

void sub_1821CB544(void (*a1)(uint64_t), void (*a2)(void, uint64_t, uint64_t), void (*a3)(uint64_t))
{
  v7 = *v3;
  v8 = v3[4];
  v16 = *(*v3 + 288);
  v9 = v16;
  v17 = *(v7 + 296);
  v10 = v17;
  type metadata accessor for NetworkChannel.NeworkChannelLockedState();
  sub_181F50DA0(a1, v15, v8);
  v11 = v3[6];
  v14[2] = v9;
  v14[3] = v10;
  a2(0, v9, v10);
  sub_181F50DA0(a3, v14, v11);
  if ((v18 & 1) == 0)
  {
    v12 = v3[2];
    if (v12)
    {
      nw_connection_cancel(*(v12 + 16));
    }

    v13 = v3[3];
    if (v13)
    {
      nw_connection_group_cancel(*(v13 + 24));
    }
  }
}

void *sub_1821CB65C(void *result)
{
  v1 = result;
  if (*result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *v1 = 0;
  return result;
}

uint64_t sub_1821CB6D4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (*(result + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *(v2 + 24) = 0;
  *a2 = *v2;
  return result;
}

uint64_t sub_1821CB758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 288);
  v11 = a3;
  v12 = a4;
  NWParametersBuilder.init(auto:)(sub_1821E928C, &v9, 0, v10, v13);

  v7 = swift_allocObject();
  sub_1821CB898(a1, a2, type metadata accessor for QUIC.Datagrams.LockedState, sub_1821CB444);
  return v7;
}

uint64_t sub_1821CB820(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1821CB898(a1, a2, type metadata accessor for QUIC.Datagrams.LockedState, sub_1821CB444);
  return v4;
}

void *sub_1821CB898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, double))
{
  v8 = *(*v4 + 288);
  v9 = *(*v4 + 296);
  v10 = a3(0, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  a4(v8, v9, v12);
  v15 = sub_1820C6414(v14, v10);
  (*(v11 + 8))(v14, v10);
  v4[6] = v15;
  v4[7] = a2;
  sub_1821B2FAC(a1);
  return v4;
}

uint64_t QUIC.Datagrams.prependProtocols<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v9 = *v4;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v14;
  v14(v11);
  v15 = sub_182185B3C(v13, v7);
  result = (*(v10 + 8))(v13, v7);
  v17 = v4[2];
  if (v17)
  {
    v18 = v15[2];
    if (v18)
    {
      v28 = a2;
      v29 = v4;
      v30 = v9;
      v31 = v7;
      v32 = a4;
      v19 = (v15 + 4);

      do
      {
        sub_181F75240(v19, v34);
        v20 = v35;
        v21 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v22 = *(v21 + 72);
        v23 = swift_unknownObjectRetain();
        v22(v23, v20, v21);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v34);
        v19 += 40;
        --v18;
      }

      while (v18);

      v7 = v31;
      a4 = v32;
      v5 = v29;
      v9 = v30;
      a2 = v28;
    }

    else
    {
    }

    type metadata accessor for QUIC.Datagrams();
    v24 = v5[7];

    v25 = sub_1821CB758(v17, v24, v33, a2);
    v26 = v5[6];
    MEMORY[0x1EEE9AC00](v25);
    v27 = *(v9 + 296);
    *(&v28 - 4) = *(v9 + 288);
    *(&v28 - 3) = v7;
    *(&v28 - 2) = v27;
    *(&v28 - 1) = a4;
    type metadata accessor for QUIC.Datagrams.LockedState();
    sub_181F50DA0(sub_1821EC1E4, (&v28 - 6), v26);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821CBC7C()
{
}

uint64_t _s7Network4QUICV6StreamCfd_0()
{
  NetworkChannel.deinit();

  return v0;
}

void NetworkConnection<>.securityProtocolMetadata.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    if (qword_1EA8370D0 != -1)
    {
      swift_once();
    }

    v2 = nw_connection_group_copy_protocol_metadata(*(v1 + 24), *(off_1EA839710 + 4));
    if (v2)
    {
      v3 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v2);
      swift_unknownObjectRelease();
      if (v3)
      {
        type metadata accessor for NWProtocolQUIC.Metadata();
        v4 = swift_dynamicCastClassUnconditional();
        nw_quic_copy_sec_protocol_metadata(*(v4 + 16));

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void NetworkConnection<>.negotiatedALPN.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_11;
  }

  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  v2 = nw_connection_group_copy_protocol_metadata(*(v1 + 24), *(off_1EA839710 + 4));
  if (!v2 || (v3 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v2), swift_unknownObjectRelease(), !v3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = nw_quic_copy_sec_protocol_metadata(*(v4 + 16));
  negotiated_protocol = sec_protocol_metadata_get_negotiated_protocol(v5);
  swift_unknownObjectRelease();
  if (negotiated_protocol)
  {
    sub_182AD3158();
  }
}

void NetworkConnection<>.applicationError.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  v4 = nw_connection_group_copy_protocol_metadata(*(v2 + 24), *(off_1EA839710 + 4));
  if (!v4 || (v5 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v4), swift_unknownObjectRelease(), !v5))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();
  v6 = swift_dynamicCastClassUnconditional();
  application_error = nw_quic_get_application_error(*(v6 + 16));
  if (nw_quic_get_application_error_reason(*(v6 + 16)))
  {
    v8 = sub_182AD3158();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *a1 = application_error;
  a1[1] = v8;
  a1[2] = v10;
}

nw_protocol_metadata_t NetworkConnection<>.applicationError.setter(nw_protocol_metadata_t result)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    goto LABEL_13;
  }

  isa = result->isa;
  v4 = result[2].isa;
  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  result = nw_connection_group_copy_protocol_metadata(*(v2 + 24), *(off_1EA839710 + 4));
  if (!result || (v5 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result), result = swift_unknownObjectRelease(), !v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();
  v6 = *(swift_dynamicCastClassUnconditional() + 16);
  if (v4)
  {
    v7 = (sub_182AD3048() + 32);
  }

  else
  {
    v7 = 0;
  }

  nw_quic_set_application_error(v6, isa, v7);

  return swift_unknownObjectRelease();
}

nw_protocol_metadata_t (*NetworkConnection<>.applicationError.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[3] = v1;
  NetworkConnection<>.applicationError.getter(a1);
  return sub_1821CC148;
}

nw_protocol_metadata_t sub_1821CC148(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v5.isa = *a1;
    v6 = v2;
    v7 = v3;

    NetworkConnection<>.applicationError.setter(&v5);
  }

  else
  {
    v5.isa = *a1;
    v6 = v2;
    v7 = v3;
    return NetworkConnection<>.applicationError.setter(&v5);
  }
}

nw_protocol_metadata_t (*NetworkConnection<>.localMaxStreamsUnidirectional.modify(NSObject **a1))(NSObject **a1)
{
  a1[1] = v1;
  *a1 = NetworkConnection<>.localMaxStreamsUnidirectional.getter();
  return sub_1821CC20C;
}

nw_protocol_metadata_t (*NetworkConnection<>.localMaxStreamsBidirectional.modify(NSObject **a1))(NSObject **a1)
{
  a1[1] = v1;
  *a1 = NetworkConnection<>.localMaxStreamsBidirectional.getter();
  return sub_1821CC278;
}

NSObject *sub_1821CC2CC(NSObject *result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = result;
    if (qword_1EA8370D0 != -1)
    {
      swift_once();
    }

    result = nw_connection_group_copy_protocol_metadata(*(v2 + 24), *(off_1EA839710 + 4));
    if (result)
    {
      v4 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result);
      result = swift_unknownObjectRelease();
      if (v4)
      {
        type metadata accessor for NWProtocolQUIC.Metadata();
        v5 = swift_dynamicCastClassUnconditional();
        v6 = (v3)(*(v5 + 16));

        if ((v6 & 0x8000000000000000) == 0)
        {
          return v6;
        }

        __break(1u);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void NetworkConnection<>.usableDatagramFrameSize.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    if (qword_1EA8370D0 != -1)
    {
      swift_once();
    }

    v2 = nw_connection_group_copy_protocol_metadata(*(v1 + 24), *(off_1EA839710 + 4));
    if (v2)
    {
      v3 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v2);
      swift_unknownObjectRelease();
      if (v3)
      {
        type metadata accessor for NWProtocolQUIC.Metadata();
        v4 = swift_dynamicCastClassUnconditional();
        nw_quic_get_stream_usable_datagram_frame_size(*(v4 + 16));

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*NetworkConnection<>.keepAlive.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  NetworkConnection<>.keepAlive.getter();
  return sub_1821CC4CC;
}

void _s7Network0A10ConnectionCA2A4QUICVRszrlE9keepAliveAA010NWProtocolC0C8MetadataC04KeepE8BehaviorOvg_0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    if (qword_1EA8370D0 != -1)
    {
      swift_once();
    }

    v4 = nw_connection_group_copy_protocol_metadata(*(v2 + 24), *(off_1EA839710 + 4));
    if (v4)
    {
      v5 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v4);
      swift_unknownObjectRelease();
      if (v5)
      {
        type metadata accessor for NWProtocolQUIC.Metadata();
        v6 = swift_dynamicCastClassUnconditional();
        keepalive_interval = nw_quic_get_keepalive_interval(*(v6 + 16));

        if (keepalive_interval == 0xFFFF)
        {
          v8 = 0;
        }

        else
        {
          if (keepalive_interval)
          {
            v9 = 0;
            v8 = keepalive_interval;
            goto LABEL_12;
          }

          v8 = 1;
        }

        v9 = 1;
LABEL_12:
        *a1 = v8;
        *(a1 + 8) = v9;
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

nw_protocol_metadata_t _s7Network0A10ConnectionCA2A4QUICVRszrlE9keepAliveAA010NWProtocolC0C8MetadataC04KeepE8BehaviorOvs_0(nw_protocol_metadata_t result)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    goto LABEL_19;
  }

  isa = result->isa;
  isa_low = LOBYTE(result[1].isa);
  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  result = nw_connection_group_copy_protocol_metadata(*(v2 + 24), *(off_1EA839710 + 4));
  if (!result || (v5 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result), result = swift_unknownObjectRelease(), !v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();
  result = swift_dynamicCastClassUnconditional();
  if (!isa_low)
  {
    if (isa >= 0xFFFF)
    {
      v6 = result[2].isa;
      v7 = -2;
      goto LABEL_14;
    }

    if ((isa & 0x8000000000000000) == 0)
    {
      v6 = result[2].isa;
      v7 = isa;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_18;
  }

  v6 = result[2].isa;
  if (isa)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

LABEL_14:
  nw_quic_set_keepalive_interval(v6, v7);
}

uint64_t (*NetworkConnection<>.keepalive.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  NetworkConnection<>.keepAlive.getter();
  return sub_1821CC754;
}

uint64_t sub_1821CC76C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return a3(&v5);
}

void sub_1821CC7B0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = *(v0 + 48);
  os_unfair_lock_lock((v8 + 80));
  v9 = *(v8 + 72);

  os_unfair_lock_unlock((v8 + 80));
  if (!v9)
  {
    v10 = *(v0 + 24);
    if (v10)
    {
      v11 = type metadata accessor for NWEndpoint();
      v12 = *(v11 - 8);
      (*(v12 + 56))(v7, 1, 1, v11);
      v13 = *(v10 + 24);
      sub_181AB5D28(v7, v4, &qword_1EA839360);
      if ((*(v12 + 48))(v4, 1, v11) == 1)
      {
        sub_181F49A88(v4, &qword_1EA839360);
        v14 = 0;
      }

      else
      {
        v14 = NWEndpoint.nw.getter();
        sub_181D8E3E8(v4, type metadata accessor for NWEndpoint);
      }

      connection = nw_connection_group_extract_connection(v13, v14, 0);
      swift_unknownObjectRelease();
      if (connection)
      {
        v16 = _s7Network12NWConnectionCyACSgSo16OS_nw_connection_pcfC_0(connection);
        sub_181F49A88(v7, &qword_1EA839360);
        if (v16)
        {
          v17 = *(*(v16 + OBJC_IVAR____TtC7Network13_NWConnection_parameters) + 16);

          os_unfair_lock_lock((v17 + 24));
          v18 = nw_parameters_copy_default_protocol_stack(*(v17 + 16));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780);
          inited = swift_initStackObject();
          *(inited + 24) = 0;
          v20 = (inited + 24);
          *(inited + 16) = v18;
          os_unfair_lock_unlock((v17 + 24));
          os_unfair_lock_lock(v20);
          v21 = nw_protocol_stack_copy_transport_protocol(v18);
          os_unfair_lock_unlock(v20);
          if (v21)
          {
            v22 = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(v21);

            v23 = swift_unknownObjectRelease();
            if (v22)
            {
              type metadata accessor for NWProtocolQUIC.Options();
              v23 = swift_dynamicCastClass();
              if (v23)
              {
                nw_quic_set_stream_is_datagram(*(v23 + 16), 1);
              }
            }
          }

          else
          {
          }

          MEMORY[0x1EEE9AC00](v23);
          v25[-2] = v16;
          v25[-1] = v0;
          os_unfair_lock_lock((v8 + 80));
          sub_1821E88E0(v8 + 16, &v26);
          if (!v1)
          {
            os_unfair_lock_unlock((v8 + 80));

            return;
          }

LABEL_19:
          os_unfair_lock_unlock((v8 + 80));
          __break(1u);
          return;
        }
      }

      else
      {
        sub_181F49A88(v7, &qword_1EA839360);
      }

      sub_181F4B3B8();
      swift_allocError();
      *v24 = 57;
      *(v24 + 4) = 0;
      swift_willThrow();
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1821CCB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B100);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B108);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 24) = 0;
  *(v9 + 48) = 0;
  *(v8 + 48) = v9;
  *(v8 + 56) = a3;

  v10 = sub_1821B2F20(a2, &qword_1EA83B110, &unk_182AFE3D0, &qword_1EA83B118);

  *(a1 + 56) = v10;
  *a4 = v10;
  return result;
}

uint64_t NetworkConnection<>.openStream(bidirectional:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821CCCAC, 0, 0);
}

uint64_t sub_1821CCCAC()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  *(v0 + 24) = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1821CCD94;

  return sub_1821B4A50(v1);
}

uint64_t sub_1821CCD94()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1821CCEC8, 0, 0);
  }
}

uint64_t sub_1821CCEC8()
{
  v9 = v0;
  v1 = *(v0 + 40);
  v8[0] = *(v0 + 72);
  sub_1821E0714(v8);
  *(v0 + 48) = v2;
  if (v1)
  {

    sub_181F4B3B8();
    swift_allocError();
    *v3 = 57;
    *(v3 + 4) = 0;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {

    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_1821CD018;
    v7 = *(v0 + 24);

    return sub_1821B4CC0(v7);
  }
}

uint64_t sub_1821CD018()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1821CD194;
  }

  else
  {
    v2 = sub_1821CD12C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821CD12C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1821CD194()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NetworkConnection<>.openStream(directionality:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1821CD224, 0, 0);
}

uint64_t sub_1821CD224()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  *(v0 + 24) = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1821CD30C;

  return sub_1821B4A50(v1);
}

uint64_t sub_1821CD30C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1821CD440, 0, 0);
  }
}

uint64_t sub_1821CD440()
{
  v9 = v0;
  v1 = *(v0 + 40);
  v8[0] = *(v0 + 72);
  sub_1821E0714(v8);
  *(v0 + 48) = v2;
  if (v1)
  {

    sub_181F4B3B8();
    swift_allocError();
    *v3 = 57;
    *(v3 + 4) = 0;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {

    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_1821CD590;
    v7 = *(v0 + 24);

    return sub_1821B4CC0(v7);
  }
}

uint64_t sub_1821CD590()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1821EBE5C;
  }

  else
  {
    v2 = sub_1821EBE68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t NetworkConnection<>.openStream<A>(directionality:_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 104) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1821CD6D4, 0, 0);
}

uint64_t sub_1821CD6D4()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  *(v0 + 56) = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1821CD7BC;

  return sub_1821B4A50(v1);
}

uint64_t sub_1821CD7BC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1821CD8F0, 0, 0);
  }
}

uint64_t sub_1821CD8F0()
{
  v8 = v0;
  v1 = *(v0 + 72);
  v7[0] = *(v0 + 104);
  sub_1821E0714(v7);
  if (v1)
  {

    sub_181F4B3B8();
    swift_allocError();
    *v2 = 57;
    *(v2 + 4) = 0;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 80) = QUIC.Stream.prependProtocols<A>(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1821CDA3C;
    v6 = *(v0 + 56);

    return sub_1821B4F78(v6);
  }
}

uint64_t sub_1821CDA3C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821CDB74, 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[10];

    return v3(v4);
  }
}

uint64_t sub_1821CDB74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821CDBF8()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  *(v0 + 24) = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1821CDCE0;

  return sub_1821B4A50(v1);
}

uint64_t sub_1821CDCE0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1821CDE14, 0, 0);
  }
}

uint64_t sub_1821CDE14()
{
  v1 = v0[5];
  sub_1821CC7B0();
  v0[6] = v2;
  if (v1)
  {

    sub_181F4B3B8();
    swift_allocError();
    *v3 = 57;
    *(v3 + 4) = 0;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {

    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1821CD590;
    v7 = v0[3];

    return sub_1821B4E1C(v7);
  }
}

uint64_t _s7Network0A10ConnectionCA2A4QUICVRszrlE14inboundStreamsyyyAE6StreamCy_AA10QUICStreamVGYaYbKYAcYaKF(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821CDF7C, 0, 0);
}

uint64_t sub_1821CDF7C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_181F510FC;
  v5 = *(v0 + 32);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v4, &unk_182AFC448, v2, sub_1821E0B38, v5, 0, 0, v6);
}

uint64_t sub_1821CE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B078);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B080);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821CE1A8, 0, 0);
}

uint64_t sub_1821CE1A8()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_1821E7E04();
  v8 = *(v0 + 24);
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8790], v4);
  sub_182AD3738();
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v8;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_18209BBF8;

  return MEMORY[0x1EEE6DE40]();
}

void sub_1821CE310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;

  sub_182AD3688();
  v9 = *(a2 + 24);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    v13 = (*(v5 + 32))(v12 + v10, v8, v4);
    *(v12 + v11) = a2;
    v14 = *(v9 + 16);
    MEMORY[0x1EEE9AC00](v13);
    *(&v21 - 2) = sub_1821E8660;
    *(&v21 - 1) = v12;

    os_unfair_lock_lock(v14 + 18);
    sub_181F5EB94(&v14[4]);
    os_unfair_lock_unlock(v14 + 18);
    v15 = *(v9 + 24);
    v16 = swift_allocObject();
    v16[2] = v9;
    v16[3] = sub_1821E8660;
    v16[4] = v12;
    aBlock[4] = sub_1821EBEE0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D8BD0C;
    aBlock[3] = &block_descriptor_1296;
    v17 = _Block_copy(aBlock);

    nw_connection_group_set_new_connection_handler(v15, v17);
    _Block_release(v17);

    if (qword_1EA837208 != -1)
    {
      v18 = swift_once();
    }

    v19 = *(a2 + 32);
    MEMORY[0x1EEE9AC00](v18);
    *(&v21 - 2) = a2;
    *(&v21 - 1) = v20;
    os_unfair_lock_lock((v19 + 24));
    sub_1821EC1A8((v19 + 16));
    os_unfair_lock_unlock((v19 + 24));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821CE620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0D8);
  swift_allocObject();

  v10[1] = sub_1821CAD64(a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098);
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1821CE770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B090);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821CE884, 0, 0);
}

uint64_t sub_1821CE884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B080);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1821CE954;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_1821CE954()
{

  if (v0)
  {
    v1 = sub_1821CEE14;
  }

  else
  {
    v1 = sub_1821CEA64;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821CEA64()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v2, 1, 1, v6);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = v4;
    v8[6] = v5;
    sub_181AB5D28(v2, v3, &unk_1EA839850);
    LODWORD(v2) = (*(v7 + 48))(v3, 1, v6);

    v9 = *(v0 + 120);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 120), &unk_1EA839850);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (v8[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_1821CE954;
    v20 = *(v0 + 136);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1821CEE14()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821CEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1821CEED4, 0, 0);
}

uint64_t sub_1821CEED4()
{
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1821CEFB8;

  return sub_1821B4CC0(v1);
}

uint64_t sub_1821CEFB8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[3] + *v2[3]);
    v6 = swift_task_alloc();
    v2[6] = v6;
    *v6 = v3;
    v6[1] = sub_1821CF18C;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_1821CF18C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s7Network0A10ConnectionCA2A4QUICVRszrlE14inboundStreams10prepending_yqd__AA10QUICStreamVc_yAE6StreamCy_qd__GYaYbKYActYaKAA05OneToI8ProtocolRd__lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821CF2AC, 0, 0);
}

uint64_t sub_1821CF2AC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1821CF3D4;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_182AFC460, v4, sub_1821E0C18, v7, 0, 0, v9);
}

uint64_t sub_1821CF3D4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1821CF4F8;
  }

  else
  {

    v2 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821CF4F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821CF564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B078);
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B080);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821CF6A4, 0, 0);
}

uint64_t sub_1821CF6A4()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);
  sub_1821E7E04();
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8790], v4);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  sub_182AD3738();

  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v1;
  *(v9 + 40) = v13;
  *(v9 + 56) = v12;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_1821CF840;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1821CF840()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1821CF9E4;
  }

  else
  {

    v2 = sub_1821CF95C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821CF95C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821CF9E4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1821CFA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B098);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock[-1] - v11;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;

  sub_182AD3688();
  v14 = *(a2 + 24);
  if (v14)
  {
    (*(v9 + 16))(v12, a1, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    v18 = (*(v9 + 32))(v17 + v15, v12, v8);
    *(v17 + v16) = a2;
    v19 = *(v14 + 16);
    MEMORY[0x1EEE9AC00](v18);
    *(&v26 - 2) = sub_1821E8048;
    *(&v26 - 1) = v17;

    os_unfair_lock_lock(v19 + 18);
    sub_181F5DD84(&v19[4]);
    os_unfair_lock_unlock(v19 + 18);
    v20 = *(v14 + 24);
    v21 = swift_allocObject();
    v21[2] = v14;
    v21[3] = sub_1821E8048;
    v21[4] = v17;
    aBlock[4] = sub_1821E8104;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D8BD0C;
    aBlock[3] = &block_descriptor_1247;
    v22 = _Block_copy(aBlock);

    nw_connection_group_set_new_connection_handler(v20, v22);
    _Block_release(v22);

    if (qword_1EA837208 != -1)
    {
      v23 = swift_once();
    }

    v24 = *(a2 + 32);
    MEMORY[0x1EEE9AC00](v23);
    *(&v26 - 2) = a2;
    *(&v26 - 1) = v25;
    os_unfair_lock_lock((v24 + 24));
    sub_1821E8110((v24 + 16));
    os_unfair_lock_unlock((v24 + 24));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821CFDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v12;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[11] = a2;
  v8[12] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B090);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821CFEE8, 0, 0);
}

uint64_t sub_1821CFEE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B080);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1821CFFB8;
  v2 = *(v0 + 168);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_1821CFFB8()
{

  if (v0)
  {
    v1 = sub_1821D04AC;
  }

  else
  {
    v1 = sub_1821D00C8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1821D00C8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    v21 = *(v0 + 136);
    v22 = *(v0 + 112);
    (*(v7 + 56))(v3, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v21;
    *(v8 + 48) = v1;
    *(v8 + 56) = v5;
    *(v8 + 64) = v22;
    *(v8 + 80) = v4;
    sub_181AB5D28(v3, v2, &unk_1EA839850);
    LODWORD(v2) = (*(v7 + 48))(v2, 1, v6);

    v9 = *(v0 + 152);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 152), &unk_1EA839850);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 160);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    *v19 = v0;
    v19[1] = sub_1821CFFB8;
    v20 = *(v0 + 168);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1821D04AC()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821D0548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1821D057C, 0, 0);
}

uint64_t sub_1821D057C()
{
  *(v0 + 72) = QUIC.Stream.prependProtocols<A>(_:)(*(v0 + 24), *(v0 + 32), *(v0 + 56), *(v0 + 64));
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8433A8;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1821D065C;

  return sub_1821B4F78(v1);
}

uint64_t sub_1821D065C()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821D09AC, 0, 0);
  }

  else
  {
    v6 = (v2[5] + *v2[5]);
    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_1821D0834;
    v4 = v2[9];

    return v6(v4);
  }
}

uint64_t sub_1821D0834()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1821D0A10;
  }

  else
  {
    v2 = sub_1821D0948;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D0948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821D09AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821D0A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821D0A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D0A98, 0, 0);
}

uint64_t sub_1821D0A98()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v3 = v0;
  v3[1] = sub_1820A1348;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001FLL, 0x8000000182BDD0B0, sub_1821E6680, v2, v4);
}

void sub_1821D0BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  if (qword_1EA837208 != -1)
  {
    v8 = swift_once();
  }

  v11 = *(a2 + 32);
  MEMORY[0x1EEE9AC00](v8);
  *(&v19 - 2) = a2;
  *(&v19 - 1) = v12;
  os_unfair_lock_lock((v11 + 24));
  sub_1821E668C((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  v13 = *(a2 + 16);
  if (v13)
  {
    (*(v7 + 16))(v10, a1, v6);
    v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v15 = swift_allocObject();
    (*(v7 + 32))(v15 + v14, v10, v6);
    v16 = *(v13 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1821E66CC;
    *(v17 + 24) = v15;
    aBlock[4] = sub_181D47AA0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_977;
    v18 = _Block_copy(aBlock);

    nw_connection_receive(v16, v20, v21, v18);
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821D0E38(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  if ((~a5 & 0xFF00000000) != 0)
  {
    v19 = HIDWORD(a5);
    v20 = a5;
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v22 = v20;
    *(v22 + 4) = v19;
LABEL_18:
    aBlock = v21;
    goto LABEL_19;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v25 = 22;
    *(v25 + 4) = 0;
    goto LABEL_18;
  }

  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = a2;
  }

  v8 = qword_1EA837040;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(a3 + 16);
  v10 = nw_content_context_copy_protocol_metadata(v9, *(off_1EA838800 + 4));
  if (v10)
  {
    v11 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v10);
    swift_unknownObjectRelease();
    if (v11)
    {
      type metadata accessor for NWProtocolWebSocket.Metadata();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v29 = *(v12 + 24);
        v13 = v12;
        swift_beginAccess();
        v26 = *(v13 + 42);
        v27 = *(a3 + 64);
        v28 = *(v13 + 40);
        v14 = swift_allocObject();
        *(v14 + 16) = MEMORY[0x1E69E7CC0];
        v15 = (v14 + 16);
        v35 = sub_181FE5010;
        v36 = v14;
        aBlock = MEMORY[0x1E69E9820];
        v32 = 1107296256;
        v33 = sub_181F25CD0;
        v34 = &block_descriptor_982;
        v16 = _Block_copy(&aBlock);
        sub_181F49B58(v6, v7);

        nw_content_context_foreach_protocol_metadata(v9, v16);

        _Block_release(v16);

        swift_beginAccess();
        v17 = *v15;

        aBlock = v6;
        v32 = v7;
        LOBYTE(v33) = v29;
        BYTE4(v33) = v26;
        WORD1(v33) = v28;
        BYTE5(v33) = a4 & 1;
        BYTE6(v33) = v27;
        v34 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
        sub_182AD34C8();
      }
    }
  }

  sub_181F4B3B8();
  v23 = swift_allocError();
  *v24 = 22;
  *(v24 + 4) = 0;
  swift_willThrow();

  aBlock = v23;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  return sub_182AD34B8();
}

uint64_t sub_1821D11A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getAssociatedTypeWitness();
  v3[6] = swift_getTupleTypeMetadata2();
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D1288, 0, 0);
}

uint64_t sub_1821D1288()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1821D138C;
  v7 = v0[6];
  v6 = v0[7];

  return MEMORY[0x1EEE6DE18](v6, &unk_182AFE2A0, v3, sub_1821EBDCC, v4, 0, 0, v7);
}

uint64_t sub_1821D138C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1821D1564;
  }

  else
  {

    v2 = sub_1821D14B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D14B0()
{
  v1 = v0[7];
  v2 = *v1;
  v3 = *(v1 + 1);
  (*(*(v0[5] - 8) + 32))(v0[2], &v1[*(v0[6] + 48)]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1821D1564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821D15DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D15FC, 0, 0);
}

uint64_t sub_1821D15FC()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A118);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1821E75B0, v4, v2);
}

uint64_t sub_1821D16E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D1700, 0, 0);
}

uint64_t sub_1821D1700()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEB8);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1821E6F3C, v4, v2);
}

uint64_t sub_1821D17E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D1804, 0, 0);
}

uint64_t sub_1821D1804()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1821E6A7C, v4, v2);
}

uint64_t sub_1821D18E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D1908, 0, 0);
}

uint64_t sub_1821D1908()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1821E6120, v4, v2);
}

uint64_t sub_1821D19EC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D1A38, 0, 0);
}

uint64_t sub_1821D1A38()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v4 = v0;
  v4[1] = sub_1821D1B7C;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1821E7B90, v3, TupleTypeMetadata2);
}

uint64_t sub_1821D1B7C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FE3368, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1821D1CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A128);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  if (qword_1EA837208 != -1)
  {
    v6 = swift_once();
  }

  v9 = *(a2 + 32);
  MEMORY[0x1EEE9AC00](v6);
  *(&v17 - 2) = a2;
  *(&v17 - 1) = v10;
  os_unfair_lock_lock((v9 + 24));
  sub_1821E75B8((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  v11 = *(a2 + 16);
  if (v11)
  {
    (*(v5 + 16))(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v8, v4);
    v14 = *(v11 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821E75F8;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1161;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1821D1F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B000);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  if (qword_1EA837208 != -1)
  {
    v6 = swift_once();
  }

  v9 = *(a2 + 32);
  MEMORY[0x1EEE9AC00](v6);
  *(&v17 - 2) = a2;
  *(&v17 - 1) = v10;
  os_unfair_lock_lock((v9 + 24));
  sub_1821E6F44((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  v11 = *(a2 + 16);
  if (v11)
  {
    (*(v5 + 16))(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v8, v4);
    v14 = *(v11 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821E6F84;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1118;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1821D21B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  if (qword_1EA837208 != -1)
  {
    v6 = swift_once();
  }

  v9 = *(a2 + 32);
  MEMORY[0x1EEE9AC00](v6);
  *(&v17 - 2) = a2;
  *(&v17 - 1) = v10;
  os_unfair_lock_lock((v9 + 24));
  sub_1821EC190((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  v11 = *(a2 + 16);
  if (v11)
  {
    (*(v5 + 16))(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v8, v4);
    v14 = *(v11 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821E6A84;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1021;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1821D2438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  if (qword_1EA837208 != -1)
  {
    v6 = swift_once();
  }

  v9 = *(a2 + 32);
  MEMORY[0x1EEE9AC00](v6);
  *(&v17 - 2) = a2;
  *(&v17 - 1) = v10;
  os_unfair_lock_lock((v9 + 24));
  sub_1821E6128((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  v11 = *(a2 + 16);
  if (v11)
  {
    (*(v5 + 16))(v8, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v8, v4);
    v14 = *(v11 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821E6168;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_934;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1821D26B8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD34D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  sub_1821B47AC(qword_1EA8433A8);
  v11 = a2[2];
  if (v11)
  {
    (*(v8 + 16))(v10, a1, v7);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v6;
    *(v13 + 24) = a3;
    (*(v8 + 32))(v13 + v12, v10, v7);
    v14 = *(v11 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1821E7B98;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1207;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821D296C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  if ((~a5 & 0xFF00000000) != 0)
  {
    v6 = HIDWORD(a5);
    v7 = a5;
    sub_181F4B3B8();
    v8 = swift_allocError();
    *v9 = v7;
    *(v9 + 4) = v6;
LABEL_7:
    aBlock = v8;
    goto LABEL_16;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v8 = swift_allocError();
    *v10 = 22;
    *(v10 + 4) = 0;
    goto LABEL_7;
  }

  if (a2 >> 60 == 15)
  {
    swift_retain_n();
  }

  else
  {
    v13 = qword_1EA837040;
    swift_retain_n();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = *(a3 + 16);
    v15 = nw_content_context_copy_protocol_metadata(v14, *(off_1EA838800 + 4));
    if (v15)
    {
      v16 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v15);
      swift_unknownObjectRelease();
      if (v16)
      {
        type metadata accessor for NWProtocolWebSocket.Metadata();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v29 = *(v17 + 24);
          v18 = v17;
          swift_beginAccess();
          v26 = *(v18 + 42);
          v27 = *(a3 + 64);
          v28 = *(v18 + 40);
          v19 = swift_allocObject();
          *(v19 + 16) = MEMORY[0x1E69E7CC0];
          v20 = (v19 + 16);
          v35 = sub_181FE5010;
          v36 = v19;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_181F25CD0;
          v34 = &block_descriptor_1026;
          v21 = _Block_copy(&aBlock);
          sub_181F49B44(a1, a2);

          nw_content_context_foreach_protocol_metadata(v14, v21);

          _Block_release(v21);

          swift_beginAccess();
          v22 = *v20;

          aBlock = a1;
          v32 = a2;
          LOBYTE(v33) = v29;
          BYTE4(v33) = v26;
          WORD1(v33) = v28;
          BYTE5(v33) = a4 & 1;
          BYTE6(v33) = v27;
          v34 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
          sub_182AD34C8();
        }
      }
    }
  }

  sub_181F4B3B8();
  v24 = swift_allocError();
  *v25 = 22;
  *(v25 + 4) = 0;
  swift_willThrow();

  aBlock = v24;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  return sub_182AD34B8();
}

uint64_t sub_1821D2CE4(uint64_t a1, void (*a2)(__int128 *, char *, void *, uint64_t, void, void, uint64_t, uint64_t), uint64_t a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a4;
  v29 = a1;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = v28 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  if (*(a5 + 4) == 255)
  {
    v28[1] = a6;
    if (a3)
    {
      v32[0] = v29;
      v32[1] = v30;
      v30 = *(a8 + 48);

      v30(&v33, v20, v32, a3, v31 & 1, MEMORY[0x1E6969080], a7, a8);
      v26 = *(TupleTypeMetadata2 + 48);
      *v16 = v33;
      (*(v17 + 32))(&v16[v26], v20, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      sub_182AD34C8();
    }

    else
    {
      sub_181F4B3B8();
      v24 = swift_allocError();
      *v25 = 22;
      *(v25 + 4) = 0;
      *&v33 = v24;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      return sub_182AD34B8();
    }
  }

  else
  {
    v21 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v22 = swift_allocError();
    *v23 = v21;
    *(v23 + 4) = BYTE4(v21);
    *&v33 = v22;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
    return sub_182AD34B8();
  }
}

uint64_t NetworkChannel<>.send<A>(_:endOfStream:metadata:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 112) = a2;
  *(v8 + 16) = a1;
  v9 = sub_182AD39B8();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D30D8, 0, 0);
}

{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 128) = a2;
  *(v8 + 16) = a1;
  v9 = *(a5 - 8);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 + 64);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D34BC, 0, 0);
}

uint64_t sub_1821D30D8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v1, *(v0 + 16), v2);
  (*(v4 + 56))(v1, 0, 1, v2);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v3 + 8);
  *v5 = v0;
  v5[1] = sub_1821D3220;
  v7 = *(v0 + 88);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 24);
  v11 = *(v0 + 112);

  return sub_1821C78B8(v7, 0, v10, v8, 1, v11, v9, v6);
}

uint64_t sub_1821D3220()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(v5 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18218BFD4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1821D34BC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  sub_182AD3E88();
  v4 = sub_181E63D00(v1, v2);
  v6 = v5;
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  v8 = *(v3 + 8);
  *v7 = v0;
  v7[1] = sub_1821D35D8;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 128);

  return sub_1821C7228(v4, v6, 0, v9, v10, 1, v11, v8);
}

uint64_t sub_1821D35D8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1821D37DC;
  }

  else
  {
    v2 = sub_1821D3718;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D3718()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  sub_181C1F2E4(v0[12], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1821D37DC()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  sub_181C1F2E4(v0[12], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t NetworkChannel<>.sendIdempotent<A>(_:endOfStream:metadata:)(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a2;
  v13 = sub_182AD39B8();
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-v16];
  v18 = *(a5 - 8);
  (*(v18 + 16))(&v20[-v16], a1, a5, v15);
  (*(v18 + 56))(v17, 0, 1, a5);
  sub_1821C9034(v17, 0, a3, a4, 1, v21, a5, *(a6 + 8), a7);
  return (*(v14 + 8))(v17, v13);
}

uint64_t NetworkChannel<>.sendIdempotent<A>(_:endOfStream:metadata:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182AD3E88();
  v14 = sub_181E63D00(v13, v12);
  v16 = v15;
  sub_1821C8D14(v14, v15, 0, a3, a4, 1, a2, *(a6 + 8));
  sub_181C1F2E4(v14, v16);
  return (*(v11 + 8))(v13, a5);
}

uint64_t NetworkChannel<>.receive(atLeast:atMost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = swift_getAssociatedTypeWitness();
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D3C74, 0, 0);
}

uint64_t sub_1821D3C74()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1820A31C4;
  v9 = v0[8];
  v8 = v0[9];

  return MEMORY[0x1EEE6DE18](v8, &unk_182AFC498, v5, sub_1821EBDCC, v6, 0, 0, v9);
}

uint64_t sub_1821D3D88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D3DD8, 0, 0);
}

uint64_t sub_1821D3DD8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v8 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v4 = v0;
  v4[1] = sub_1821A6204;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000018, 0x8000000182BDD0D0, sub_1821E7BB0, v3, TupleTypeMetadata2);
}

void sub_1821D3F30(uint64_t a1, void *a2, uint32_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v9 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v10 = sub_182AD34D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  sub_1821B47AC(qword_1EA8433A8);
  v14 = a2[2];
  if (v14)
  {
    (*(v11 + 16))(v13, a1, v10);
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    *(v16 + 24) = a5;
    (*(v11 + 32))(v16 + v15, v13, v10);
    v17 = *(v14 + 16);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1821E7CB0;
    *(v18 + 24) = v16;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1219;
    v19 = _Block_copy(aBlock);

    nw_connection_receive(v17, a3, v21, v19);
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821D41F4(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5, uint64_t a6)
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

uint64_t NetworkChannel<>.receiveWithMetadata(atLeast:atMost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1821D4680;

  return NetworkChannel<>.receive(atLeast:atMost:)(a1, a2, a3, a4);
}

uint64_t sub_1821D4680(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t NetworkChannel<>.receive(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(*v3 + 80);
  *(v7 + 16) = v3;
  v14 = (*(a3 + 32) + **(a3 + 32));
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  v11 = type metadata accessor for NetworkChannel();
  WitnessTable = swift_getWitnessTable();
  *v10 = v7;
  v10[1] = sub_1821D4930;

  return v14(a1, v7 + 16, a2, a2, v11, WitnessTable, v9, a3);
}

uint64_t sub_1821D4930(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 32) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EBE60, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t NetworkChannel<>.receiveWithMetadata(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(*v3 + 80);
  *(v7 + 16) = v3;
  v14 = (*(a3 + 32) + **(a3 + 32));
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  v11 = type metadata accessor for NetworkChannel();
  WitnessTable = swift_getWitnessTable();
  *v10 = v7;
  v10[1] = sub_1821D4930;

  return v14(a1, v7 + 16, a2, a2, v11, WitnessTable, v9, a3);
}

uint64_t NetworkChannel<>.receive<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v9 = *v6;
  v10 = *(*(a4 - 8) + 64);
  v7[9] = swift_task_alloc();
  v11 = *(v9 + 80);
  v7[10] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[11] = AssociatedTypeWitness;
  v7[12] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v7[13] = v13;
  v7[2] = v6;
  v18 = (*(a5 + 32) + **(a5 + 32));
  v14 = swift_task_alloc();
  v7[14] = v14;
  v15 = type metadata accessor for NetworkChannel();
  WitnessTable = swift_getWitnessTable();
  *v14 = v7;
  v14[1] = sub_1821D4E64;

  return v18(v13, v7 + 2, v10, v10, v15, WitnessTable, v11, a5);
}

uint64_t sub_1821D4E64(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = sub_1821D50D8;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v7 = sub_1821D4F98;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1821D4F98()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v9 = *(v0 + 48);
  (*(*(v0 + 96) + 32))(*(v0 + 32), *(v0 + 104), *(v0 + 88));
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v9;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  sub_182AD2128();

  sub_182AD3E98();
  sub_181C1F2E4(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1821D50D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NetworkChannel<>.send<A>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_182AD39B8();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D5218, 0, 0);
}

uint64_t sub_1821D5218()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 - 8);
  (*(v4 + 16))(v1, v0[2], v2);
  (*(v4 + 56))(v1, 0, 1, v2);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = *(*(v3 + 8) + 8);
  *v5 = v0;
  v5[1] = sub_1821D5364;
  v7 = v0[11];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_1821C78B8(v7, 0, v10, v8, 1, 0, v9, v6);
}

uint64_t sub_1821D5364()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(v5 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EBEE8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t NetworkChannel<>.receive()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a2 + 8);
  *v5 = v2;
  v5[1] = sub_1821EBEE4;

  return sub_1821D11A0(a1, v6);
}

uint64_t NetworkChannel<>.receiveWithMetadata()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a2 + 8);
  *v5 = v2;
  v5[1] = sub_1821EBEE4;

  return sub_1821D11A0(a1, v6);
}

uint64_t NetworkChannel<>.send<A>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_182AD39B8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D5728, 0, 0);
}

{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_182AD39B8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D5CF8, 0, 0);
}

{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_182AD39B8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D669C, 0, 0);
}

uint64_t sub_1821D5728()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = *(v2 - 8);
  (*(v3 + 16))(v1, v0[2], v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1821D5874;
  v5 = v0[10];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return sub_1821C78B8(v5, 0, v8, v6, 1, 0, v7, &protocol witness table for Datagram);
}

uint64_t sub_1821D5874()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EBEEC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t NetworkChannel<>.receive()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D5A3C, 0, 0);
}

{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D600C, 0, 0);
}

{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D8BB8, 0, 0);
}

{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D98A4, 0, 0);
}

uint64_t sub_1821D5A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A118);
  *v1 = v0;
  v1[1] = sub_1820A4CA0;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC4F8, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t NetworkChannel<>.receiveWithMetadata()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D5B44, 0, 0);
}

{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D6114, 0, 0);
}

{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D8CC0, 0, 0);
}

{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821D9AC0, 0, 0);
}

uint64_t sub_1821D5B44()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A118);
  *v1 = v0;
  v1[1] = sub_1820A4CA0;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC508, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t sub_1821D5CF8()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = *(v2 - 8);
  (*(v3 + 16))(v1, v0[2], v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1821D5E44;
  v5 = v0[10];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return sub_1821C78B8(v5, 0, v8, v6, 1, 0, v7, &protocol witness table for QUICDatagram);
}

uint64_t sub_1821D5E44()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181F5759C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1821D600C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEB8);
  *v1 = v0;
  v1[1] = sub_1820A4CA0;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC528, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t sub_1821D6114()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEB8);
  *v1 = v0;
  v1[1] = sub_1820A46BC;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC538, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t NetworkChannel<>.send(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821D6224, 0, 0);
}

uint64_t sub_1821D6224()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];

  v4 = sub_181F76154(v3, v2);
  v6 = v5;
  v0[17] = v4;
  v0[18] = v5;
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v7 = swift_allocObject();
  v0[19] = v7;
  *(v7 + 24) = 1;
  *(v7 + 40) = 4;
  *(v7 + 42) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = nw_ws_create_metadata(nw_ws_opcode_text);
  v0[11] = v1();

  MEMORY[0x1865D9F10](v8);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v9 = v0[11];
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v0[20] = inited;
  v11 = nw_content_context_create("sendContext");
  *(inited + 16) = v11;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v12 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v12, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v11, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v11, 0);
  v13 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v9 >> 62)
  {
    v13 = sub_182AD3EB8();
    v21 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v21 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_12;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v13, v14, v15, v16, v17, v18, v19, v20);
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v21; ++i)
    {
      v23 = MEMORY[0x1865DA790](i, v9);
      nw_content_context_set_metadata_for_protocol(v11, *(v23 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v24 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v11, *(*(v9 + v24) + 16));
      v24 += 8;
      --v21;
    }

    while (v21);
  }

LABEL_12:

  v25 = v0[16];
  v26 = swift_task_alloc();
  v0[21] = v26;
  *(v26 + 16) = v25;
  *(v26 + 24) = v4;
  *(v26 + 32) = v6;
  *(v26 + 40) = inited;
  *(v26 + 48) = 1;
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_1820A517C;
  v17 = v0[16];
  v14 = &unk_182AFC550;
  v16 = j___s7Network0A7ChannelC6cancelyyFTj;
  v20 = MEMORY[0x1E69E7CA8] + 8;
  v15 = v26;
  v18 = 0;
  v19 = 0;

  return MEMORY[0x1EEE6DE18](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t NetworkChannel<>.sendIdempotent(_:metadata:)(uint64_t a1, unint64_t a2, void (*a3)(void))
{

  v7 = sub_181F76154(a1, a2);
  v9 = v8;
  a3();
  sub_1820A53CC(v3);
  sub_181C1F2E4(v7, v9);
}

uint64_t sub_1821D669C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = *(v2 - 8);
  (*(v3 + 16))(v1, v0[2], v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 24) = 2;
  *(v4 + 40) = 4;
  *(v4 + 42) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = nw_ws_create_metadata(nw_ws_opcode_binary);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1821D6828;
  v6 = v0[10];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_1821C78B8(v6, v4, v9, v7, 1, 0, v8, &protocol witness table for WebSocket);
}

uint64_t sub_1821D6828()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821D6A00, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1821D6A00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NetworkChannel<>.sendIdempotent<A>(_:metadata:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_182AD39B8();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = *(a4 - 8);
  (*(v15 + 16))(&v18 - v13, a1, a4, v12);
  (*(v15 + 56))(v14, 0, 1, a4);
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v16 = swift_allocObject();
  *(v16 + 24) = 2;
  *(v16 + 40) = 4;
  *(v16 + 42) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = nw_ws_create_metadata(nw_ws_opcode_binary);
  sub_1821C9034(v14, v16, a2, a3, 1, 0, a4, &protocol witness table for WebSocket, a5);

  return (*(v11 + 8))(v14, v10);
}

uint64_t NetworkChannel<>.startSend(_:metadata:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821D6C50, 0, 0);
}

uint64_t sub_1821D6C50()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  *(v4 + 56) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1820A5C58;
  v7 = *(v0 + 64);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AFC570, v4, j___s7Network0A7ChannelC6cancelyyFTj, v7, 0, 0, v8);
}

uint64_t sub_1821D6D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D6D84, 0, 0);
}

uint64_t sub_1821D6D84()
{
  *(v0 + 88) = (*(v0 + 96))();
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  *(v1 + 24) = 1;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_text);
  MEMORY[0x1865D9F10]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v2 = *(v0 + 88);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 152) = inited;
  v4 = nw_content_context_create("WebSocket");
  *(inited + 16) = v4;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v4, 0);
  *(inited + 56) = 0;
  if (v2 >> 62)
  {
    v5 = sub_182AD3EB8();
    v13 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = MEMORY[0x1865DA790](i, v2);
      nw_content_context_set_metadata_for_protocol(v4, *(v15 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v4, *(*(v2 + v16) + 16));
      v16 += 8;
      --v13;
    }

    while (v13);
  }

LABEL_12:

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);

  v20 = sub_181F76154(v18, v17);
  v22 = v21;
  *(v0 + 160) = v20;
  *(v0 + 168) = v21;
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = inited;
  *(v23 + 48) = 0;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_1821D7064;
  v9 = *(v0 + 112);
  v6 = &unk_182AFE1A8;
  v8 = j___s7Network0A7ChannelC6cancelyyFTj;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v7 = v23;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1821D7064()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1820A6450;
  }

  else
  {

    v2 = sub_1821D7180;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D7180()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  sub_181C1F2E4(v0[20], v0[21]);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1821D72B4;

  return v7(&unk_182AFE1B8, v4);
}

uint64_t sub_1821D72B4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1820A6540;
  }

  else
  {

    v2 = sub_1821EBDD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D73D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D73F8, 0, 0);
}

uint64_t sub_1821D73F8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  v6 = sub_181F76154(v4, v5);
  v8 = v7;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v6;
  *(v9 + 32) = v8;
  *(v9 + 40) = v1;
  *(v9 + 48) = v3;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1820A6704;
  v11 = *(v0 + 32);
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v10, &unk_182AFE1C0, v9, j___s7Network0A7ChannelC6cancelyyFTj, v11, 0, 0, v12);
}

uint64_t NetworkChannel<>.startSend<A>(_:metadata:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D7550, 0, 0);
}

uint64_t sub_1821D7550()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  *(v5 + 64) = v7;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v1;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1821D7680;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC588, v5, sub_1821E1118, v8, 0, 0, v10);
}

uint64_t sub_1821D7680()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_182186DC4;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D77A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v12;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a2;
  v8[13] = a3;
  v9 = sub_182AD39B8();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D787C, 0, 0);
}

void sub_1821D787C()
{
  *(v0 + 88) = (*(v0 + 96))();
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  *(v1 + 24) = 2;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_binary);
  MEMORY[0x1865D9F10]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v2 = *(v0 + 88);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 184) = inited;
  v4 = nw_content_context_create("WebSocket");
  *(inited + 16) = v4;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v4, 0);
  *(inited + 56) = 0;
  if (v2 >> 62)
  {
    v5 = sub_182AD3EB8();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = MEMORY[0x1865DA790](i, v2);
      nw_content_context_set_metadata_for_protocol(v4, *(v7 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v4, *(*(v2 + v8) + 16));
      v8 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_12:

  v9 = *(v0 + 176);
  v10 = *(v0 + 144);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, *(v0 + 120), v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_1821D7B78;
  v13 = *(v0 + 176);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);

  sub_1821C7D4C(v13, inited, 0, v14, &protocol witness table for WebSocket, v15);
}

uint64_t sub_1821D7B78()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1821D7FB8;
  }

  else
  {
    v5 = sub_1821D7CE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1821D7CE8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *(v4 + 16) = *(v0 + 144);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  *(v0 + 216) = v5;
  *v5 = v0;
  v5[1] = sub_1821D7E1C;

  return v7(&unk_182AFE168, v4);
}

uint64_t sub_1821D7E1C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1821D8038;
  }

  else
  {

    v2 = sub_1821D7F38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D7F38()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821D7FB8()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821D8038()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821D80C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 96) = a2;
  *(v6 + 16) = a1;
  v7 = sub_182AD39B8();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D8194, 0, 0);
}

uint64_t sub_1821D8194()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v2 - 8);
  (*(v3 + 16))(v1, *(v0 + 16), v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1821D82CC;
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 96);

  return sub_1821C7D4C(v5, v8, v9, v6, &protocol witness table for WebSocket, v7);
}

uint64_t sub_1821D82CC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820A5D74, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t NetworkChannel<>.ping<A>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D849C, 0, 0);
}

uint64_t sub_1821D849C()
{
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  v0[8] = v1;
  *(v1 + 24) = 4;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_ping);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_181F546BC;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1821C78B8(v6, v1, v5, v3, 1, 0, v4, &protocol witness table for WebSocket);
}

uint64_t NetworkChannel<>.pong<A>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D85B8, 0, 0);
}

uint64_t sub_1821D85B8()
{
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  v0[8] = v1;
  *(v1 + 24) = 5;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_pong);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1821D86B0;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1821C78B8(v6, v1, v5, v3, 1, 0, v4, &protocol witness table for WebSocket);
}

uint64_t sub_1821D86B0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EC168, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t NetworkChannel<>.close(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = v5;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 120) = a2;
  *(v6 + 82) = *a1;
  *(v6 + 81) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_1821D8824, 0, 0);
}

uint64_t sub_1821D8824()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 82);
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v3 = swift_allocObject();
  *(v0 + 160) = v3;
  *(v3 + 24) = 3;
  *(v3 + 40) = 4;
  *(v3 + 42) = 0;
  *(v3 + 32) = 0;
  metadata = nw_ws_create_metadata(nw_ws_opcode_close);
  *(v3 + 16) = metadata;
  swift_beginAccess();
  *(v3 + 40) = v2;
  *(v3 + 42) = v1;
  v5 = *(v0 + 82);
  if (!v1)
  {
    v5 = word_182AFE6EC[v5];
  }

  v6 = *(v0 + 128);
  nw_ws_metadata_set_close_code(metadata, v5);
  if (v6)
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);

    v6 = sub_181F76154(v7, v8);
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  *(v0 + 168) = v6;
  *(v0 + 176) = v10;
  v11 = *(v0 + 136);

  *(v0 + 112) = v11(v12);

  MEMORY[0x1865D9F10](v13);
  if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v14 = *(v0 + 112);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 184) = inited;
  v16 = nw_content_context_create("sendContext");
  *(inited + 16) = v16;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v17 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v17, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v16, 0.5);
  *(inited + 64) = 1;
  nw_content_context_set_is_final(v16, 1);
  v18 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v14 >> 62)
  {
    v18 = sub_182AD3EB8();
    v26 = v18;
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v18, v19, v20, v21, v22, v23, v24, v25);
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v26; ++i)
    {
      v28 = MEMORY[0x1865DA790](i, v14);
      nw_content_context_set_metadata_for_protocol(v16, *(v28 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v29 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v16, *(*(v14 + v29) + 16));
      v29 += 8;
      --v26;
    }

    while (v26);
  }

LABEL_17:

  v30 = *(v0 + 152);
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v6;
  *(v31 + 32) = v10;
  *(v31 + 40) = inited;
  *(v31 + 48) = 1;
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_1820A7E84;
  v22 = *(v0 + 152);
  v19 = &unk_182AFC5A8;
  v21 = j___s7Network0A7ChannelC6cancelyyFTj;
  v25 = MEMORY[0x1E69E7CA8] + 8;
  v20 = v31;
  v23 = 0;
  v24 = 0;

  return MEMORY[0x1EEE6DE18](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1821D8BB8()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v1 = v0;
  v1[1] = sub_1821ADF20;
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC5C0, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t sub_1821D8CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v1 = v0;
  v1[1] = sub_1820A81F0;
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC5D0, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t NetworkChannel<>.startReceive(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821D8DCC, 0, 0);
}

uint64_t sub_1821D8DCC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1821D8EC0;
  v4 = *(v0 + 32);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v3, &unk_182AFC5E8, v2, j___s7Network0A7ChannelC6cancelyyFTj, v4, 0, 0, v5);
}

uint64_t sub_1821D8EC0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1821EC16C;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D8FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D9000, 0, 0);
}

uint64_t sub_1821D9000()
{
  v4 = (v0[2] + *v0[2]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1820A865C;
  v2 = v0[4];

  return v4(&unk_182AFE0D8, v2);
}

uint64_t sub_1821D9100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821D9124, 0, 0);
}

uint64_t sub_1821D9124()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v5 = v0;
  v5[1] = sub_1820A88DC;
  v7 = v0[9];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_182AFE0E8, v4, j___s7Network0A7ChannelC6cancelyyFTj, v7, 0, 0, v6);
}

uint64_t NetworkChannel<>.send<A>(_:type:lastMessage:metadata:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 120) = a3;
  *(v8 + 16) = a1;
  v9 = sub_182AD39B8();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D9308, 0, 0);
}

uint64_t sub_1821D9308()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v1, *(v0 + 16), v2);
  (*(v4 + 56))(v1, 0, 1, v2);
  v5 = sub_182AD37D8();
  v6 = _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(v3, v5);
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1821D948C;
  v8 = *(v0 + 88);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = *(v0 + 120);

  return sub_1821C78B8(v8, v6, v11, v9, 1, v12, v10, &protocol witness table for TLV);
}

uint64_t sub_1821D948C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821D9664, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1821D9664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NetworkChannel<>.sendIdempotent<A>(_:type:lastMessage:metadata:)(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a3;
  v13 = sub_182AD39B8();
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22[-v16];
  v18 = *(a6 - 8);
  (*(v18 + 16))(&v22[-v16], a1, a6, v15);
  (*(v18 + 56))(v17, 0, 1, a6);
  v19 = sub_182AD37D8();
  v20 = _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(a2, v19);
  sub_1821C9034(v17, v20, a4, a5, 1, v23, a6, &protocol witness table for TLV, a7);

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1821D98A4()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v1 = v0;
  v1[1] = sub_1821D998C;
  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC608, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t sub_1821D998C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_18209075C;
  }

  else
  {
    v2 = sub_1821EBE44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821D9AC0()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v1 = v0;
  v1[1] = sub_1820A939C;
  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AFC618, v3, j___s7Network0A7ChannelC6cancelyyFTj, v3, 0, 0, v2);
}

uint64_t NetworkChannel.send<A, B, C>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*v3 + 80);
  v4[6] = v5;
  v6 = *(v5 + 32);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v5 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[11] = AssociatedTypeWitness;
  v4[12] = *(AssociatedTypeWitness - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821D9CF8, 0, 0);
}

uint64_t sub_1821D9CF8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v23 = v0[2];
  (*(v3 + 40))(v7, v3);
  (*(v3 + 48))(v7, v3);
  (*(v6 + 8))(v5, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 8))(v23, *(v8 + 16), *(v8 + 40), v4, AssociatedConformanceWitness);
  v12 = v11;
  v0[14] = v10;
  v0[15] = v11;
  result = (*(v2 + 8))(v1, v4);
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      return result;
    }

    v15 = HIDWORD(v10) - v10;
LABEL_10:
    sub_181F49B58(v10, v12);
    goto LABEL_12;
  }

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = BYTE6(v12);
LABEL_12:
  v18 = _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(0, v15);
  v0[16] = v18;
  v19 = swift_task_alloc();
  v0[17] = v19;
  WitnessTable = swift_getWitnessTable();
  *v19 = v0;
  v19[1] = sub_1821D9F98;
  v21 = v0[4];
  v22 = v0[3];

  return sub_1821C7228(v10, v12, v18, v22, v21, 1, 0, WitnessTable);
}

uint64_t sub_1821D9F98()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1821DA140;
  }

  else
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 112);

    sub_181C1F2E4(v5, v4);
    v3 = sub_1821DA0C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1821DA0C4()
{
  sub_181C1F2E4(v0[14], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1821DA140()
{
  v1 = v0[15];
  v2 = v0[14];

  sub_181C1F2E4(v2, v1);
  sub_181C1F2E4(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t NetworkChannel.receive<A, B, C>()(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = v2;
  *(v3 + 64) = a1;
  v4 = *(*v2 + 80);
  v5 = *(v4 + 24);
  *(v3 + 88) = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  *(v3 + 16) = *(v4 + 16);
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  type metadata accessor for Coder.Metadata();
  *(v3 + 96) = swift_getTupleTypeMetadata2();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821DA2BC, 0, 0);
}

uint64_t sub_1821DA2BC()
{
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1821DA38C;
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];

  return MEMORY[0x1EEE6DE18](v2, &unk_182AFC638, v4, j___s7Network0A7ChannelC6cancelyyFTj, v4, 0, 0, v3);
}

uint64_t sub_1821DA38C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1821B039C;
  }

  else
  {
    v2 = sub_1821DA4A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821DA4A0()
{
  v1 = v0[9];
  v2 = (v0[13] + *(v0[12] + 48));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 1);
  (*(*(v0[11] - 8) + 32))(v0[8], v0[13]);
  *v1 = v3;
  *(v1 + 1) = v4;
  *(v1 + 8) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1821DA56C(uint64_t a1, void *a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v2[10] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1821DA5B4, 0, 0);
}

uint64_t sub_1821DA5B4()
{
  v1 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = *(v1 + 80);
  v4 = *(v3 + 56);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 24) = v5;
  *(v0 + 40) = v6;
  *(v0 + 56) = v4;
  type metadata accessor for Coder.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v2 = v0;
  v2[1] = sub_1821DA6E4;
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0x2865766965636572, 0xE900000000000029, sub_1821E5FF4, v9, TupleTypeMetadata2);
}

uint64_t sub_1821DA6E4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821DA818, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1821DA830(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 80);
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  aBlock = v6;
  v27 = v5;
  v24 = v8;
  v25 = v7;
  v28 = v7;
  v29 = v8;
  v23 = v9;
  v30 = v9;
  v31 = v10;
  type metadata accessor for Coder.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v11 = sub_182AD34D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  sub_1821B47AC(qword_1EA8433A8);
  v15 = a2[2];
  if (v15)
  {
    (*(v12 + 16))(v14, a1, v11);
    v16 = (*(v12 + 80) + 64) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v6;
    *(v17 + 3) = v5;
    v18 = v24;
    *(v17 + 4) = v25;
    *(v17 + 5) = v18;
    *(v17 + 6) = v23;
    *(v17 + 7) = v10;
    (*(v12 + 32))(&v17[v16], v14, v11);
    v19 = *(v15 + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1821E5FFC;
    *(v20 + 24) = v17;
    v30 = sub_181D47AA0;
    v31 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_181D478F8;
    v29 = &block_descriptor_922;
    v21 = _Block_copy(&aBlock);

    nw_connection_receive_message(v19, v21);
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821DAAF4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v70 = a2;
  v71 = a6;
  v66 = a4;
  v72 = a7;
  v73 = a8;
  v74 = a9;
  v75 = a10;
  v68 = a11;
  v69 = a1;
  v76 = a11;
  v77 = a12;
  type metadata accessor for Coder.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = &v54 - v16;
  v17 = sub_182AD39B8();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v67 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  if (*(a5 + 4) == 255)
  {
    v61 = v19;
    v62 = TupleTypeMetadata2;
    if (a3 && v70 >> 60 != 15)
    {
      v58 = v31;
      v55 = v30;
      v56 = v29;
      v57 = *(a12 + 40);
      v59 = &v54 - v28;

      v37 = v69;
      sub_181F49B44(v69, v70);
      v60 = a3;
      v57(a9, a12);
      (*(a12 + 56))(a9, a12);
      v38 = v22;
      v39 = v37;
      (*(v67 + 8))(v38, a9);
      v40 = v70;
      v41 = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 8))(a8, v39, v40, a8, v68, AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v58 + 8))(v25, AssociatedTypeWitness);
      v43 = v56;
      v44 = v61;
      (*(v56 + 16))(v61, v41, a8);
      (*(v43 + 56))(v44, 0, 1, a8);
      v45 = v60;

      v46 = v55;
      static Coder.makeIncomingMessage<A>(content:context:isComplete:)(v55, &v72, v44, v45, v66 & 1, v47, v48, v49, a8);
      v50 = v62;
      (*(v64 + 8))(v44, v65);

      LOBYTE(v39) = v72;
      LOBYTE(v45) = BYTE1(v72);
      v51 = v73;
      v52 = &v63[*(v50 + 48)];
      (*(v43 + 32))(v63, v46, a8);
      *v52 = v39;
      v52[1] = v45;
      *(v52 + 1) = v51;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      sub_182AD34C8();
      sub_181D9D680(v69, v40);

      return (*(v43 + 8))(v59, a8);
    }

    sub_181F4B3B8();
    v32 = swift_allocError();
    *v33 = 22;
    *(v33 + 4) = 0;
    v72 = v32;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
  }

  else
  {
    v34 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v35 = swift_allocError();
    *v36 = v34;
    *(v36 + 4) = BYTE4(v34);
    v72 = v35;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
  }

  return sub_182AD34B8();
}

uint64_t NetworkChannel.receiveWithMetadata<A, B, C>()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_181F54964;

  return NetworkChannel.receive<A, B, C>()(a1, a2);
}

uint64_t NetworkChannel.send<A>(_:lastMessage:metadata:other:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 120) = a3;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  *(v7 + 96) = *v6;
  return MEMORY[0x1EEE6DFA0](sub_1821DB304, 0, 0);
}

uint64_t sub_1821DB304()
{
  *(v0 + 40) = *(v0 + 88);
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    (*(*(*(*(v0 + 96) + 80) + 24) + 8))();
    type metadata accessor for NWProtocolFramer.Message();
    v1 = swift_allocObject();
    v2 = swift_unknownObjectRetain();
    message = nw_framer_protocol_create_message(v2);

    swift_unknownObjectRelease();
    *(v1 + 16) = message;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 120);

  v8 = v5(v7);
  v9 = *(v4 + 80);
  v10 = MEMORY[0x1E69E7CC0];
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v8)
  {
    v10 = v8;
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = 1;
  *(v0 + 25) = v6;
  *(v0 + 32) = v10;
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  swift_getWitnessTable();
  v14 = type metadata accessor for NetworkChannel();
  WitnessTable = swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_1821DB4E4;
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  return static Framer.send<A>(connection:content:metadata:)(v0 + 40, v16, v17, (v0 + 16), v12, v14, v11, WitnessTable);
}

uint64_t sub_1821DB4E4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821DB64C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t NetworkChannel.receive<A>()(uint64_t a1)
{
  v4 = *v1;
  *(v2 + 16) = v1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = *(v4 + 80);
  v7 = *(v6 + 16);
  swift_getWitnessTable();
  v8 = type metadata accessor for NetworkChannel();
  v9 = *(v6 + 24);
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_1820A3FE4;

  return static Framer.receive<A>(connection:)(a1, v2 + 16, v7, v8, v9, WitnessTable);
}

uint64_t sub_1821DB7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  v3[8] = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v3[9] = swift_getTupleTypeMetadata2();
  v5 = sub_182AD39B8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821DB90C, 0, 0);
}

uint64_t sub_1821DB90C()
{
  v1 = v0[12];
  v2 = v0[9];
  v14 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v2 - 8);
  v6 = *(v5 + 56);
  v0[13] = v6;
  v0[14] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 1, 1, v2);
  v7 = *(v2 + 48);
  v0[2] = v4;
  v13 = (*(v14 + 40) + **(v14 + 40));
  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = type metadata accessor for NetworkChannel();
  WitnessTable = swift_getWitnessTable();
  *v8 = v0;
  v8[1] = sub_1821DBAD4;
  v11 = v0[12];

  return v13(v11, v1 + v7, v0 + 2, v9, WitnessTable);
}

uint64_t sub_1821DBAD4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1821DBCC0;
  }

  else
  {
    v2 = sub_1821DBBE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821DBBE8()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[4];
  (*(v3 + 8))(v6, v4);
  v1(v2, 0, 1, v5);
  (*(v3 + 32))(v6, v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1821DBCC0()
{
  v1 = *(v0 + 128);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  if (!swift_dynamicCast() || *(v0 + 140))
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 32);

    swift_willThrow();
    (*(v4 + 8))(v5, v3);
LABEL_4:

    v6 = *(v0 + 8);
    goto LABEL_5;
  }

  v8 = *(v0 + 136);

  v9 = sub_182AD2768();
  if (v9 != sub_182AD2768())
  {
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v0 + 32);
    sub_181F4B3B8();
    swift_allocError();
    *v13 = v8;
    *(v13 + 4) = 0;
    swift_willThrow();
    (*(v11 + 8))(v12, v10);

    goto LABEL_4;
  }

  v6 = *(v0 + 8);
LABEL_5:

  return v6();
}

uint64_t sub_1821DBE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x1EEE6DBA8](a3, v6, TupleTypeMetadata2);
}

uint64_t sub_1821DBF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v6[3] = a1;
  v8 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 + 48);
  v6[2] = a2;
  v15 = (*(a3 + 40) + **(a3 + 40));
  v11 = swift_task_alloc();
  v6[5] = v11;
  v12 = type metadata accessor for NetworkChannel();
  WitnessTable = swift_getWitnessTable();
  *v11 = v6;
  v11[1] = sub_1820A980C;

  return v15(a1, a1 + v10, v6 + 2, v12, WitnessTable, v8, a3);
}

uint64_t NetworkChannel<>.streamApplicationErrorCode.setter(uint64_t result)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = result;
  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  result = nw_connection_copy_protocol_metadata(*(v2 + 16), *(off_1EA839710 + 4));
  if (!result || (v4 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result), result = swift_unknownObjectRelease(), !v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();
  v5 = swift_dynamicCastClassUnconditional();
  nw_quic_set_stream_application_error(*(v5 + 16), v3);
}

uint64_t (*NetworkChannel<>.streamApplicationErrorCode.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NetworkChannel<>.streamApplicationErrorCode.getter();
  return sub_1821DC2CC;
}

uint64_t withNetworkConnection<A>(to:using:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  type metadata accessor for NWEndpoint();
  v8[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_182AD34A8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v8[12] = v10;
  v8[13] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1821DC3C8, v10, v12);
}

{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  type metadata accessor for NWEndpoint();
  v8[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_182AD34A8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v8[12] = v10;
  v8[13] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1821DD1D8, v10, v12);
}

uint64_t sub_1821DC3C8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  type metadata accessor for NetworkConnection();
  v14 = *(v0 + 56);
  sub_181D8E2B8(v5, v2, type metadata accessor for NWEndpoint);
  v6 = NetworkConnection<>.init(to:using:)(v2, v4, v3, v1);
  *(v0 + 112) = v6;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v14;
  *(v7 + 40) = v6;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_1821DC54C;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC688, v7, sub_1821EBF84, v8, v10, v11, v12);
}

uint64_t sub_1821DC54C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1821DC6E0;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1821DC670;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1821DC670()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821DC6E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821DC76C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1821DC868;

  return v8(a4);
}

uint64_t sub_1821DC868()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1821EBCDC;
  }

  else
  {
    v2 = sub_1821EC218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t withNetworkConnection<A>(to:using:_:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  type metadata accessor for NWEndpoint();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = *a4;
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_182AD34A8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v8 + 112) = v11;
  *(v8 + 120) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1821DCA5C, v11, v13);
}

{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  type metadata accessor for NWEndpoint();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = *a4;
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_182AD34A8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v8 + 112) = v11;
  *(v8 + 120) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1821DD560, v11, v13);
}

uint64_t sub_1821DCA5C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  type metadata accessor for NetworkConnection();
  v14 = *(v0 + 56);
  sub_181D8E2B8(v5, v4, type metadata accessor for NWEndpoint);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  v6 = NetworkConnection<>.init(to:using:)(v4, (v0 + 16), v3);
  *(v0 + 128) = v6;
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v14;
  *(v7 + 40) = v6;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_1821DCBF8;
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC6A0, v7, sub_1821E16D4, v8, v10, v11, v12);
}

uint64_t sub_1821DCBF8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1821DCD8C;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1821DCD1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1821DCD1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821DCD8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821DCE18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1821DCF14;

  return v8(a4);
}

uint64_t sub_1821DCF14()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1821DD08C;
  }

  else
  {
    v2 = sub_1821DD028;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821DD028()
{
  NetworkConnection.cancel()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821DD08C()
{
  NetworkConnection.cancel()();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821DD1D8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  type metadata accessor for NetworkConnection();
  v14 = *(v0 + 56);
  sub_181D8E2B8(v5, v2, type metadata accessor for NWEndpoint);
  v6 = NetworkConnection<>.init(to:using:)(v2, v4, v3, v1);
  *(v0 + 112) = v6;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v14;
  *(v7 + 40) = v6;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_1821DD35C;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC6B8, v7, sub_1821EBF84, v8, v10, v11, v12);
}

uint64_t sub_1821DD35C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1821EBE58;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1821EBB2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1821DD560()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  type metadata accessor for NetworkConnection();
  v14 = *(v0 + 56);
  sub_181D8E2B8(v5, v4, type metadata accessor for NWEndpoint);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;

  v6 = NetworkConnection<>.init(to:using:)(v4, (v0 + 16), v3);
  *(v0 + 128) = v6;
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v14;
  *(v7 + 40) = v6;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_1821DD6FC;
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AFC6D0, v7, sub_1821EBF84, v8, v10, v11, v12);
}

uint64_t sub_1821DD6FC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1821EBE6C;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1821EBD6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

double sub_1821DD820@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_181AB5D28(a1, &v4, &qword_1EA83B210);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(uint64_t a1, uint64_t a2)
{
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Message();
  v5 = swift_allocObject();
  *(v5 + 16) = nw_framer_protocol_create_message(*(v4 + 32));
  v6 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E6530];
  v8[0] = a1;

  sub_181BD0648(v8, 1701869908, 0xE400000000000000);
  v9 = v6;
  v8[0] = a2;
  sub_181BD0648(v8, 0x6874676E654CLL, 0xE600000000000000);

  return v5;
}

uint64_t sub_1821DD9AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 60);
  v11 = *(v1 + 58);
  v12 = *(v1 + 61);
  v13 = *(v1 + 62);
  v14 = *(v1 + 64);
  v15 = (v11 << 16) | (v10 << 32);
  v16 = 0x10000000000;
  if (!v12)
  {
    v16 = 0;
  }

  v17 = v15 | v9 | v16;
  if (v13)
  {
    v18 = 0x1000000000000;
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_task_alloc();
  *(v2 + 16) = v19;
  *v19 = v2;
  v19[1] = sub_181F5EB68;

  return sub_1821A3B40(a1, v6, v7, v8, v17 | v18, v14, v5, v4);
}

uint64_t sub_1821DDAD8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v12 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  if (*(v1 + 57))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_18219BC1C(a1, v12, v3, v4, v6 | v5, v7, v8, v9);
}

uint64_t sub_1821DDC00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_18219C284(a1, v6, v4, v5);
}

uint64_t sub_1821DDCCC(uint64_t a1)
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
  v10[1] = sub_181F5EB68;

  return sub_1821A02CC(a1, v8, v4, v5, v6, v7, v9);
}

uint64_t sub_1821DDDA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1821A40E4(a1, v6, v4, v5);
}

void sub_1821DDE54(uint64_t *a1, uint64_t a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v26 - v4;
  v5 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v7 = *a1;
  v8 = *(*a1 + 16);
  if (!v8)
  {
LABEL_17:
    sub_181D8E3E8(v30, type metadata accessor for NWEndpoint);
    return;
  }

  v9 = 0;
  v10 = v7 + 32;
  v11 = v7 + 32;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    sub_181F75240(v11, v34);
    sub_181F3CF20(v34, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v9;
    v11 += 40;
    if (v8 == v9)
    {
      goto LABEL_17;
    }
  }

  if (v9 == 1)
  {
    v16 = *(v7 + 16);
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = 0;
    while (v17 < *(v7 + 16))
    {
      sub_181F75240(v10, v37);
      sub_181F3CF20(v37, v36);
      if (swift_dynamicCast())
      {
        v32[10] = v34[10];
        v32[11] = v34[11];
        *v33 = *v35;
        *&v33[15] = *&v35[15];
        v32[6] = v34[6];
        v32[7] = v34[7];
        v32[8] = v34[8];
        v32[9] = v34[9];
        v32[2] = v34[2];
        v32[3] = v34[3];
        v32[4] = v34[4];
        v32[5] = v34[5];
        v32[0] = v34[0];
        v32[1] = v34[1];
        sub_1821DE500(v32);
        if (v17)
        {
          goto LABEL_17;
        }

        sub_182023480(1uLL, v31);
        __swift_destroy_boxed_opaque_existential_1(v31);
        sub_182023480(0, v31);
        __swift_destroy_boxed_opaque_existential_1(v31);
        application_service_quic = nw_parameters_create_application_service_quic();
        if (application_service_quic)
        {
          v19 = nw_parameters_copy(application_service_quic);
          type metadata accessor for NWParameters();
          v20 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
          v21 = swift_allocObject();
          *(v21 + 24) = 0;
          *(v21 + 16) = v19;
          swift_unknownObjectRelease();
          *(v20 + 16) = v21;

          NWParameters.preferredNetworkAgents.setter();
          v22 = v30;
          v23 = v27;
          sub_181D8E2B8(v30, v27, type metadata accessor for NWEndpoint);
          v24 = sub_182AD2258();
          v25 = v28;
          (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
          NWEndpoint.agentIdentifier.setter(v25);
          sub_181D8E3E8(v22, type metadata accessor for NWEndpoint);
          sub_181D8E3E8(v23, type metadata accessor for NWEndpoint);

          return;
        }

        goto LABEL_23;
      }

      ++v17;
      v10 += 40;
      if (v16 == v17)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_22;
  }

  if (v9)
  {
    goto LABEL_17;
  }

  sub_182023480(0, v34);
  __swift_destroy_boxed_opaque_existential_1(v34);
  application_service = nw_parameters_create_application_service();
  v13 = nw_parameters_copy(application_service);
  type metadata accessor for NWParameters();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v13;
  swift_unknownObjectRelease();
  *(v14 + 16) = v15;
  sub_181D8E3E8(v30, type metadata accessor for NWEndpoint);
}

uint64_t sub_1821DE308(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1E69E7CD0];
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

  sub_181AA39C0(sub_1821EC0E4);
  NWConnection.stateUpdateHandler.setter(sub_1821EC0E4, v5);

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

unint64_t sub_1821DE530()
{
  result = qword_1EA83AE58;
  if (!qword_1EA83AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AE58);
  }

  return result;
}

unint64_t sub_1821DE584()
{
  result = qword_1EA83AE60;
  if (!qword_1EA83AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AE60);
  }

  return result;
}

uint64_t sub_1821DE5E4(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = v1 + 32;
  for (i = v1 + 32; ; i += 40)
  {
    if (v3 >= *(v1 + 16))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    sub_181F75240(i, v14);
    sub_181F3CF20(v14, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
    result = swift_dynamicCast();
    if (result)
    {
      break;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  if (v3 == 1)
  {
    v9 = *(v1 + 16);
    if (!v9)
    {
      return 0;
    }

    v10 = 0;
    while (v10 < *(v1 + 16))
    {
      sub_181F75240(v4, v17);
      sub_181F3CF20(v17, v16);
      result = swift_dynamicCast();
      if (result)
      {
        v12[10] = v14[10];
        v12[11] = v14[11];
        *v13 = *v15;
        *&v13[15] = *&v15[15];
        v12[6] = v14[6];
        v12[7] = v14[7];
        v12[8] = v14[8];
        v12[9] = v14[9];
        v12[2] = v14[2];
        v12[3] = v14[3];
        v12[4] = v14[4];
        v12[5] = v14[5];
        v12[0] = v14[0];
        v12[1] = v14[1];
        sub_1821DE500(v12);
        if (v10)
        {
          return 0;
        }

        sub_182023480(1uLL, &v11);
        __swift_destroy_boxed_opaque_existential_1(&v11);
        sub_182023480(0, &v11);
        __swift_destroy_boxed_opaque_existential_1(&v11);
        result = nw_parameters_create_application_service_quic();
        if (!result)
        {
          __break(1u);
          goto LABEL_22;
        }

        goto LABEL_10;
      }

      ++v10;
      v4 += 40;
      if (v9 == v10)
      {
        return 0;
      }
    }

    goto LABEL_23;
  }

  if (v3)
  {
    return 0;
  }

  sub_182023480(0, v14);
  __swift_destroy_boxed_opaque_existential_1(v14);
  result = nw_parameters_create_application_service();
LABEL_10:
  v6 = nw_parameters_copy(result);
  type metadata accessor for NWParameters();
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v6;
  swift_unknownObjectRelease();
  result = v7;
  *(v7 + 16) = v8;
  return result;
}

void *sub_1821DE88C(uint64_t a1)
{
  v2 = v1;
  v7 = 0;
  locked = type metadata accessor for NetworkChannel.NeworkChannelLockedState();
  v2[4] = sub_1820C6414(&v7, locked);
  type metadata accessor for NetworkChannel.ContinuationNotifier();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = MEMORY[0x1E69E7CC0];
  v2[5] = v5;
  v2[3] = a1;
  swift_retain_n();
  sub_181AA39C0(nullsub_41);
  NWConnectionGroup.newConnectionHandler.setter(nullsub_41, 0);

  v2[2] = 0;
  return v2;
}

void *sub_1821DE990(uint64_t a1)
{
  locked = type metadata accessor for NetworkConnection.LockedState();
  v4 = *(locked - 8);
  MEMORY[0x1EEE9AC00](locked);
  v6 = &v9 - v5;
  sub_1821B1D84(&v9 - v5);
  v7 = sub_1820C6414(v6, locked);
  (*(v4 + 8))(v6, locked);
  *(v1 + 48) = v7;
  return sub_1821DE88C(a1);
}

uint64_t sub_1821DEAF4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC7Network13_NWConnection_parameters;
    return *v2;
  }

  v3 = *(v0 + 24);
  if (v3)
  {
    v2 = v3 + 48;
    return *v2;
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1821DEB88(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = *(*(a2 - 8) + 64);
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  return result;
}

void _s7Network9TLVFramerC12handleOutput6framer7message0F6Length10isCompleteyAA16NWProtocolFramerC8InstanceC_AJ7MessageCSiSbtF_0(uint64_t a1, uint64_t a2, size_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  v9 = __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v10 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v14 = sub_182AD3048();
  v15 = nw_framer_message_copy_object_value(v13, (v14 + 32));

  if (v15)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    if (swift_dynamicCast())
    {
      v16 = v30;
      goto LABEL_9;
    }
  }

  else
  {
    sub_181F49A88(v32, &unk_1EA83A4F0);
  }

  v16 = 0;
LABEL_9:
  (*(v8 + 48))(v16, a3, v7, v8);
  v17 = (*(v8 + 72))(v7, v8);
  v18 = sub_181F7C4EC(v17);
  v20 = v19;
  v21 = *(a1 + 16);
  v22 = sub_182AD2138();
  v24 = NWCreateDispatchDataFromNSData(v22, v23);

  if (v24)
  {

    (*(v10 + 8))(v12, v7);
    nw_framer_write_output_data(v21, v24);

    sub_181C1F2E4(v18, v20);
    if (!nw_framer_write_output_no_copy(v21, a3))
    {
      sub_181F4B3B8();
      v25 = swift_allocError();
      *v26 = 22;
      *(v26 + 4) = 0;
      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B200);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_182AE9730;
      *&v32[0] = 0;
      *(&v32[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x727720726F727245, 0xEE0020676E697469);
      *&v30 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
      sub_182AD3E18();
      v28 = v32[0];
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 32) = v28;
      sub_182AD44C8();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821DEF18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_18218BD40(a1, v7, v8, v10, v9, v4, v5, v6);
}

uint64_t sub_1821DF02C(uint64_t a1)
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

  return sub_18218C388(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t sub_1821DF180(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(v2 + 16);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 24));
  sub_181AB5D28(a1, v6, &qword_1EA839360);
  v9 = type metadata accessor for NWEndpoint();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_181F49A88(v6, &qword_1EA839360);
    v10 = 0;
  }

  else
  {
    v10 = NWEndpoint.nw.getter();
    sub_181D8E3E8(v6, type metadata accessor for NWEndpoint);
  }

  nw_parameters_set_local_endpoint(v8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1821DF2F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18218E49C;
  v9[3] = &block_descriptor_893;
  v7 = _Block_copy(v9);

  nw_parameters_set_endpoint_resolution_preference_handler(v6, v7);
  _Block_release(v7);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1821DF434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2[3] = MEMORY[0x1E69E7CD0];
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

  sub_181D8E2B8(a1, v9, type metadata accessor for NWEndpoint);
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

  sub_181AA39C0(sub_1821EB278);
  NWConnection.stateUpdateHandler.setter(sub_1821EB278, v17);

  if (v3[2])
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    NWConnection.start(queue:)(qword_1EA8433A8);
    sub_181D8E3E8(a1, type metadata accessor for NWEndpoint);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821DF790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_1821AF9CC(a1, v7, v8, v10, v9, v4, v5, v6);
}

uint64_t sub_1821DF93C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_18219E274(a1, v9, v12, v4, v5, v6, v7, v8);
}

uint64_t sub_1821DFA58(uint64_t a1)
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

  return sub_1821A1648(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_1821DFB98(uint64_t a1)
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
  v10[1] = sub_181F5EB68;

  return sub_1821A224C(a1, v8, v4, v5, v6, v7, v9);
}

uint64_t sub_1821DFCA4(uint64_t a1)
{
  v15 = *(v1 + 16);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 81);
  v10 = *(v1 + 88);
  if (v9)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_181F5EB68;

  return sub_1821A58E8(a1, v4, v5, v6, v7, v11 | v8, v10, v15);
}

uint64_t sub_1821DFDBC(uint64_t a1)
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

  return sub_1821A60A4(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1821DFEA4()
{
  v1 = qword_1EA83AEA0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF50);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + qword_1EA83AEB0);
  v4 = MEMORY[0x1E69E7CC0];
  *v3 = MEMORY[0x1E69E7CC0];
  v3[1] = v4;
  v3[2] = v4;
  v3[3] = v4;
  v3[4] = v4;
  v3[5] = v4;
  v5 = v0 + qword_1EA83AF40;
  *(v5 + 4) = 0x80;
  *v5 = 0;
  return v0;
}

uint64_t sub_1821DFF50()
{
  type metadata accessor for SendProgress();
  swift_allocObject();
  return sub_1821DFEA4();
}

uint64_t sub_1821E0044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_1821B0114(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_1821E0170(uint64_t a1)
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

  return sub_1821B0C24(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1821E02B0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(a1 + 32);

  result = sub_181A554F4(v5);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1821E035C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  type metadata accessor for NWConnection(0);
  swift_allocObject();

  v11 = sub_181E60914(v6, a2);

  v12 = swift_allocObject();
  sub_1821B2DF4(v11);
  sub_181D8E3E8(a1, type metadata accessor for NWEndpoint);
  return v12;
}

_BYTE *sub_1821E0534@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[1] = result[1];
  return result;
}

uint64_t sub_1821E05EC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1A8);
  result = swift_allocObject();
  *(result + 72) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 60) = 0x80;
  *(result + 56) = 0;
  *(result + 64) = 0;
  a3[2] = result;
  a3[4] = a1;
  a3[5] = &protocol witness table for NWMultiplexGroup;
  a3[6] = a2;
  v7 = *(a1 + OBJC_IVAR____TtC7Network16NWMultiplexGroup__nw);
  if (v7)
  {
    v8 = *(a2 + 16);

    swift_unknownObjectRetain();
    os_unfair_lock_lock((v8 + 24));
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v8 + 24));
    v10 = nw_connection_group_create(v7, v9);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    a3[3] = v10;
    sub_181AA39C0(0);
    NWConnectionGroup.stateUpdateHandler.setter(0, 0);
    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1821E0714(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v10 = *(v2 + 24);
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = *a1;
  v12 = type metadata accessor for NWEndpoint();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, 1, 1, v12);
  v14 = *(v10 + 24);
  sub_181AB5D28(v9, v6, &qword_1EA839360);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_181F49A88(v6, &qword_1EA839360);
    v15 = 0;
  }

  else
  {
    v15 = NWEndpoint.nw.getter();
    sub_181D8E3E8(v6, type metadata accessor for NWEndpoint);
  }

  connection = nw_connection_group_extract_connection(v14, v15, 0);
  swift_unknownObjectRelease();
  if (!connection)
  {
    sub_181F49A88(v9, &qword_1EA839360);
    goto LABEL_12;
  }

  v17 = _s7Network12NWConnectionCyACSgSo16OS_nw_connection_pcfC_0(connection);
  sub_181F49A88(v9, &qword_1EA839360);
  if (!v17)
  {
LABEL_12:
    sub_181F4B3B8();
    swift_allocError();
    *v23 = 57;
    *(v23 + 4) = 0;
    swift_willThrow();
    return;
  }

  v18 = *(*(v17 + OBJC_IVAR____TtC7Network13_NWConnection_parameters) + 16);

  os_unfair_lock_lock((v18 + 24));
  v19 = nw_parameters_copy_default_protocol_stack(*(v18 + 16));
  v26._os_unfair_lock_opaque = 0;
  v25 = v19;
  os_unfair_lock_unlock((v18 + 24));
  os_unfair_lock_lock(&v26);
  v20 = nw_protocol_stack_copy_transport_protocol(v19);
  os_unfair_lock_unlock(&v26);
  if (v20)
  {
    v21 = _s7Network17NWProtocolOptionsC6fromNWyACSgSo22OS_nw_protocol_options_pFZ_0(v20);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v21)
    {
      type metadata accessor for NWProtocolQUIC.Options();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        nw_quic_set_stream_is_unidirectional(*(v22 + 16), v11 != 1);
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B0D8);
  swift_allocObject();

  sub_1821CAD64(v17, v2);
}

uint64_t sub_1821E0A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1821CE070(a1, v4, v5, v6);
}

uint64_t sub_1821E0B3C(uint64_t a1)
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

  return sub_1821CF564(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_1821E0C3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1821D3D88(a1, v5, v7, v6, v4);
}

uint64_t sub_1821E0D50(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821D15DC(a1, v1);
}

uint64_t sub_1821E0DEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821D16E0(a1, v1);
}

uint64_t sub_1821E0E88(uint64_t a1)
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

  return sub_1821C9504(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1821E0F50(uint64_t a1)
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

  return sub_1821D6D58(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1821E102C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_1821D77A4(a1, v5, v6, v7, v8, v10, v9, v4);
}

uint64_t sub_1821E115C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821D17E4(a1, v1);
}

uint64_t sub_1821E11F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1821D8FDC(a1, v4, v5, v6);
}

uint64_t sub_1821E12AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821D18E8(a1, v1);
}

uint64_t sub_1821E1348(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1821DA56C(a1, v1);
}

uint64_t sub_1821E13E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_1821DB7B4(a1, v4, v5);
}

uint64_t sub_1821E1490(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_1821DBF74(a1, v4, v5);
}

uint64_t sub_1821E1554(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1821DC76C(a1, v4, v6, v5);
}

uint64_t sub_1821E1614(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F54964;

  return sub_1821DCE18(a1, v4, v6, v5);
}

uint64_t sub_1821E16F8(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1821DC76C(a1, v4, v6, v5);
}

uint64_t sub_1821E17B8(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1821DC76C(a1, v4, v6, v5);
}

unint64_t sub_1821E1878(uint64_t a1)
{
  result = sub_1821E18A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E18A0()
{
  result = qword_1EA83AEE0;
  if (!qword_1EA83AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AEE0);
  }

  return result;
}

unint64_t sub_1821E18F4(uint64_t a1)
{
  result = sub_1821E191C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E191C()
{
  result = qword_1EA83AEE8;
  if (!qword_1EA83AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AEE8);
  }

  return result;
}

unint64_t sub_1821E1970(uint64_t a1)
{
  result = sub_1821E1998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E1998()
{
  result = qword_1EA83AEF0;
  if (!qword_1EA83AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AEF0);
  }

  return result;
}

unint64_t sub_1821E19EC(uint64_t a1)
{
  result = sub_1821E1A14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E1A14()
{
  result = qword_1EA83AEF8;
  if (!qword_1EA83AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AEF8);
  }

  return result;
}

unint64_t sub_1821E1A68(uint64_t a1)
{
  result = sub_1821E1A90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E1A90()
{
  result = qword_1EA83AF00;
  if (!qword_1EA83AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AF00);
  }

  return result;
}

unint64_t sub_1821E1AE4(uint64_t a1)
{
  result = sub_1821E1B0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E1B0C()
{
  result = qword_1EA83AF08;
  if (!qword_1EA83AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AF08);
  }

  return result;
}

unint64_t sub_1821E1B60(uint64_t a1)
{
  result = sub_1821E1B88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E1B88()
{
  result = qword_1EA83AF10;
  if (!qword_1EA83AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AF10);
  }

  return result;
}

unint64_t sub_1821E1BDC(uint64_t a1)
{
  result = sub_1821E1C04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1821E1C04()
{
  result = qword_1EA83AF18;
  if (!qword_1EA83AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AF18);
  }

  return result;
}

unint64_t sub_1821E1D0C()
{
  result = qword_1EA83AF28;
  if (!qword_1EA83AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AF28);
  }

  return result;
}

unint64_t sub_1821E1D94()
{
  result = qword_1EA83AF30;
  if (!qword_1EA83AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AF30);
  }

  return result;
}

unint64_t sub_1821E1DEC()
{
  result = qword_1EA83AF38;
  if (!qword_1EA83AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AF38);
  }

  return result;
}

uint64_t sub_1821E1E88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E1EC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E1F0C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E1F48(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E1F90(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E1FCC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E2020(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E205C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1821E2124(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void *keypath_get_460Tm@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t keypath_set_461Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t dispatch thunk of static StreamProtocol.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_181F5EB68;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of static StreamProtocol.receive<A>(connection:atLeast:atMost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1821EC0AC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of static MessageProtocol.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_181F5EB68;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of static MessageProtocol.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 40) + **(a7 + 40));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_181F5EB68;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1821E32C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1821E3318()
{
  result = sub_182AD35D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1821E34A4()
{
  sub_18207E248(319, &qword_1EA83AF48, &qword_1EA83AF50);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t dispatch thunk of SendProgress.done.getter()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_181F5EB68;

  return v4();
}

uint64_t get_enum_tag_for_layout_string_So24OS_sec_protocol_metadata_pSo0a1_B6_trust_pSbIeAghHggd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1821E37EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 137))
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

uint64_t sub_1821E3848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy69_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1821E3914(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[69])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1821E3974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 69) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 69) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy211_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 207) = *(a2 + 207);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1821E3A64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 211))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1821E3AAC(uint64_t result, int a2, int a3)
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
    *(result + 210) = 0;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 211) = 1;
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

    *(result + 211) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UDP(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[9])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UDP(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IP(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 8))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 3);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for IP(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1821E3D7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1821E3DD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1821E3E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1821E3E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821E3F0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1821E3F48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1821E3F90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1821E3FF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1821E4030(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1821E4078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821E40B8()
{
  sub_182AD35A8();
  result = sub_182AD39B8();
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

uint64_t sub_1821E4228()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of NetworkChannel.establishmentReport()(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return v6(a1);
}

uint64_t dispatch thunk of NetworkChannel.dataTransferReport()(uint64_t a1)
{
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return v6(a1);
}

void sub_1821E4810()
{
  sub_18207E248(319, qword_1ED40FBF0, &unk_1EA8397F0);
  if (v0 <= 0x3F)
  {
    sub_18207E248(319, &qword_1EA83AF58, &unk_1EA83AF60);
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1821E4900(unint64_t a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v8 + 32) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v6 > 0x7FFFFFFE)
      {
        v18 = *(v5 + 48);

        return v18((((v16 + 31) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      }

      else
      {
        v17 = *(v16 + 8);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        if ((v17 + 1) >= 2)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1821E4AF0(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 32) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_46:
              if (v11 == 2)
              {
                *(a1 + v10) = v13;
              }

              else
              {
                *(a1 + v10) = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v16;
        *(a1 + 2) = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v11)
    {
      *(a1 + v10) = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v11)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v17 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0x7FFFFFFE)
  {
    v18 = *(v6 + 56);

    v18((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 8) = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(v17 + 8) = a2;
  }
}

void sub_1821E4D84()
{
  sub_18207E248(319, qword_1ED40FBF0, &unk_1EA8397F0);
  if (v0 <= 0x3F)
  {
    sub_18207E248(319, &qword_1EA83AF58, &unk_1EA83AF60);
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1821E4E74(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v8 + 32) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v18 = *(v5 + 48);

        return v18((((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      }

      else
      {
        v17 = *v16;
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        if ((v17 + 1) >= 2)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1821E5068(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 32) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_46:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v17 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if (v7 > 0x7FFFFFFE)
  {
    v18 = *(v6 + 56);

    v18((((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v17 = 0;
    v17[1] = 0;
    *v17 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v17 = a2;
  }
}