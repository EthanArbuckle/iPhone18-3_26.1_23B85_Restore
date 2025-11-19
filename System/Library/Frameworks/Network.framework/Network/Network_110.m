double IP.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 2) = 1;
  *&result = 50463234;
  *(a1 + 3) = 50463234;
  *(a1 + 7) = 2;
  return result;
}

double TCP.init(_:)@<D0>(void (*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v19 = 1;
  v18 = 1;
  v17 = 1;
  v16 = 1;
  v15 = 1;
  v14 = 1;
  v13 = 1;
  a1(&v12);
  v3 = v12;
  v4 = v19;
  v5 = v18;
  v6 = v17;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  v10 = v13;
  *&result = 33686018;
  *a2 = 33686018;
  *(a2 + 8) = v4;
  *(a2 + 12) = 0;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  *(a2 + 24) = v6;
  *(a2 + 28) = 0;
  *(a2 + 32) = v7;
  *(a2 + 36) = 0;
  *(a2 + 40) = v8;
  *(a2 + 44) = 0;
  *(a2 + 48) = v9;
  *(a2 + 52) = 0;
  *(a2 + 56) = v10;
  *(a2 + 57) = 33686018;
  *(a2 + 61) = v3;
  return result;
}

__n128 TCP.noDelay(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 17) = *(v2 + 17);
  *(a2 + 33) = *(v2 + 33);
  *(a2 + 49) = *(v2 + 49);
  *(a2 + 65) = *(v2 + 65);
  result = *(v2 + 1);
  *(a2 + 1) = result;
  return result;
}

__n128 TCP.noPush(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 1) = a1;
  *(a2 + 18) = *(v2 + 18);
  *(a2 + 34) = *(v2 + 34);
  *(a2 + 50) = *(v2 + 50);
  *(a2 + 65) = *(v2 + 65);
  result = *(v2 + 2);
  *(a2 + 2) = result;
  return result;
}

__n128 TCP.noOptions(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 2) = a1;
  *(a2 + 19) = *(v2 + 19);
  *(a2 + 35) = *(v2 + 35);
  *(a2 + 51) = *(v2 + 51);
  *(a2 + 67) = *(v2 + 67);
  result = *(v2 + 3);
  *(a2 + 3) = result;
  return result;
}

__n128 TCP.enableKeepalive(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 2) = *(v2 + 2);
  *(a2 + 3) = a1;
  *(a2 + 20) = *(v2 + 20);
  *(a2 + 36) = *(v2 + 36);
  *(a2 + 52) = *(v2 + 52);
  *(a2 + 68) = *(v2 + 68);
  result = *(v2 + 4);
  *(a2 + 4) = result;
  return result;
}

__n128 sub_182197628@<Q0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *v4;
  *(a4 + 2) = *(v4 + 2);
  *(a4 + 3) = 1;
  *(a4 + 4) = a1;
  *(a4 + 8) = 0;
  *(a4 + 9) = *(v4 + 9);
  *(a4 + 11) = *(v4 + 11);
  *(a4 + 12) = a3;
  *(a4 + 16) = 0;
  v5 = *(v4 + 17);
  *(a4 + 19) = *(v4 + 19);
  *(a4 + 17) = v5;
  *(a4 + 20) = a2;
  *(a4 + 24) = 0;
  result = *(v4 + 25);
  v7 = *(v4 + 41);
  *(a4 + 53) = *(v4 + 53);
  *(a4 + 41) = v7;
  *(a4 + 25) = result;
  return result;
}

__n128 TCP.keepaliveCount(_:)@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 20) = a1;
  *(a2 + 24) = 0;
  *(a2 + 25) = *(v2 + 25);
  *(a2 + 41) = *(v2 + 41);
  result = *(v2 + 53);
  *(a2 + 53) = result;
  return result;
}

__n128 TCP.keepaliveIdle(_:)@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 4) = a1;
  *(a2 + 8) = 0;
  *(a2 + 9) = *(v2 + 9);
  *(a2 + 25) = *(v2 + 25);
  *(a2 + 41) = *(v2 + 41);
  result = *(v2 + 53);
  *(a2 + 53) = result;
  return result;
}

__n128 TCP.keepaliveInterval(_:)@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 8) = *(v2 + 8);
  *(a2 + 12) = a1;
  *(a2 + 16) = 0;
  *(a2 + 17) = *(v2 + 17);
  *(a2 + 33) = *(v2 + 33);
  result = *(v2 + 49);
  *(a2 + 49) = result;
  *(a2 + 65) = *(v2 + 65);
  return result;
}

__n128 TCP.maximumSegmentSize(_:)@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 12) = *(v2 + 12);
  *(a2 + 28) = a1;
  *(a2 + 32) = 0;
  *(a2 + 33) = *(v2 + 33);
  result = *(v2 + 49);
  *(a2 + 49) = result;
  *(a2 + 65) = *(v2 + 65);
  return result;
}

__n128 TCP.connectionTimeout(_:)@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 36) = a1;
  *(a2 + 40) = 0;
  *(a2 + 41) = *(v2 + 41);
  result = *(v2 + 53);
  *(a2 + 53) = result;
  return result;
}

__n128 TCP.persistTimeout(_:)@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 28) = *(v2 + 28);
  *(a2 + 44) = a1;
  *(a2 + 48) = 0;
  result = *(v2 + 49);
  *(a2 + 49) = result;
  *(a2 + 65) = *(v2 + 65);
  return result;
}

__n128 TCP.retransmitConnectionDropTime(_:)@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  result = *(v2 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(v2 + 48);
  *(a2 + 52) = a1;
  *(a2 + 56) = 0;
  *(a2 + 57) = *(v2 + 57);
  *(a2 + 65) = *(v2 + 65);
  return result;
}

__n128 TCP.retransmitFinDrop(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  result = *(v2 + 41);
  *(a2 + 41) = result;
  *(a2 + 57) = a1;
  *(a2 + 58) = *(v2 + 58);
  *(a2 + 65) = *(v2 + 65);
  return result;
}

__n128 TCP.ackStretchingDisabled(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a2 + 42) = result;
  *(a2 + 58) = a1;
  *(a2 + 59) = *(v2 + 59);
  *(a2 + 67) = *(v2 + 67);
  return result;
}

__n128 TCP.ecnDisabled(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  result = *(v2 + 43);
  *(a2 + 43) = result;
  *(a2 + 59) = a1;
  *(a2 + 60) = *(v2 + 60);
  *(a2 + 68) = *(v2 + 68);
  return result;
}

__n128 TCP.enableFastOpen(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 61);
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 32);
  result = *(v2 + 44);
  *(a2 + 44) = result;
  *(a2 + 60) = a1;
  *(a2 + 61) = v3;
  return result;
}

uint64_t TCP.configure(parameters:)(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = sub_182197210();
  nw_protocol_stack_set_transport_protocol(v1, v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_182197968(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = sub_182197210();
  nw_protocol_stack_set_transport_protocol(v1, v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_182197B30()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v24 = *(v0 + 24);
  initial_max_data = *(v0 + 40);
  v5 = *(v0 + 56);
  v39 = *(v0 + 64);
  v40 = *(v0 + 48);
  v42 = *(v0 + 72);
  initial_max_stream_data_unidirectional = *(v0 + 88);
  v37 = *(v0 + 96);
  v38 = *(v0 + 80);
  v44 = *(v0 + 104);
  v45 = *(v0 + 120);
  v35 = *(v0 + 128);
  v36 = *(v0 + 112);
  v41 = *(v0 + 136);
  v6 = *(v0 + 160);
  identity = *(v0 + 152);
  v7 = *(v0 + 168);
  v27 = *(v0 + 176);
  v28 = *(v0 + 177);
  v29 = *(v0 + 178);
  v30 = *(v0 + 184);
  v31 = *(v0 + 192);
  v32 = *(v0 + 200);
  v33 = *(v0 + 201);
  v34 = *(v0 + 144);
  type metadata accessor for NWProtocolQUIC.Options();
  v8 = swift_allocObject();

  options = nw_quic_create_options();
  *(v8 + 16) = options;
  v10 = nw_quic_copy_sec_protocol_options(options);
  sub_181FBC07C(v1);

  nw_quic_set_setup_placeholder(options, 1);
  if ((v3 & 1) == 0)
  {
    v11 = 0xFFFFFFFFLL;
    if (v2 < 0xFFFFFFFFLL)
    {
      v11 = v2;
    }

    nw_quic_set_idle_timeout(options, v11 & ~(v11 >> 63));
  }

  if ((v4 & 1) == 0)
  {
    v12 = 0xFFFFLL;
    if (v24 < 0xFFFF)
    {
      v12 = v24;
    }

    nw_quic_set_max_udp_payload_size(options, v12 & ~(v12 >> 63));
  }

  v13 = v5;
  if ((v40 & 1) == 0)
  {
    if ((initial_max_data & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    nw_quic_set_initial_max_data(options, initial_max_data);
    v13 = v5;
  }

  if (v39)
  {
    goto LABEL_15;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  nw_quic_set_initial_max_stream_data_bidirectional_remote(options, v13);
LABEL_15:
  if (v38)
  {
    goto LABEL_18;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  nw_quic_set_initial_max_stream_data_bidirectional_local(options, v42);
LABEL_18:
  if (v37)
  {
    goto LABEL_21;
  }

  if ((initial_max_stream_data_unidirectional & 0x8000000000000000) != 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  nw_quic_set_initial_max_stream_data_unidirectional(options, initial_max_stream_data_unidirectional);
LABEL_21:
  if (v36)
  {
    goto LABEL_24;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  nw_quic_set_initial_max_streams_bidirectional(options, v44);
LABEL_24:
  if (v35)
  {
    goto LABEL_27;
  }

  if ((v45 & 0x8000000000000000) != 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  nw_quic_set_initial_max_streams_unidirectional(options, v45);
LABEL_27:
  if (v34)
  {
    goto LABEL_31;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  if (v41 >> 16)
  {
LABEL_70:
    __break(1u);
    return;
  }

  nw_quic_set_max_datagram_frame_size(options, v41);
LABEL_31:
  if (identity)
  {
    sec_protocol_options_set_local_identity(v10, identity);
  }

  if (v6)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v7;
    aBlock[4] = sub_1821EB49C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18218793C;
    aBlock[3] = &block_descriptor_1821;
    v15 = _Block_copy(aBlock);
    sub_181AA39C0(v6);

    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    sec_protocol_options_set_verify_block(v10, v15, qword_1EA8433A8);
    _Block_release(v15);
    sub_181A554F4(v6);
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      if (v28 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v16 = v10;
    v17 = 1;
LABEL_48:
    sec_protocol_options_set_peer_authentication_required(v16, v17);
    if (v28 != 2)
    {
      goto LABEL_49;
    }

LABEL_42:
    if (v29 != 2)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (v30)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  if (!v27)
  {
    sec_protocol_options_set_peer_authentication_optional(v10, 0);
    v16 = v10;
    v17 = 0;
    goto LABEL_48;
  }

  sec_protocol_options_set_peer_authentication_optional(v10, 1);
  if (v28 == 2)
  {
    goto LABEL_42;
  }

LABEL_49:
  sec_protocol_options_set_peer_authentication_optional(v10, v28 & 1);
  if (v29 == 2)
  {
    goto LABEL_43;
  }

LABEL_50:
  sec_protocol_options_set_peer_authentication_required(v10, v29 & 1);
  if (v30)
  {
LABEL_51:
    v18 = *(v30 + 16);
    if (v18)
    {
      v19 = (v30 + 32);
      do
      {
        v20 = *v19++;
        sec_protocol_options_append_tls_ciphersuite(v10, v20);
        --v18;
      }

      while (v18);
    }
  }

LABEL_54:
  if (v31)
  {
    v21 = *(v31 + 16);
    if (v21)
    {
      v22 = (v31 + 32);
      do
      {
        v23 = *v22++;
        sec_protocol_options_append_tls_ciphersuite_group(v10, v23);
        --v21;
      }

      while (v21);
    }
  }

  if (v32 != 2)
  {
    sec_protocol_options_set_tls_early_data_enabled();
  }

  if (v33 != 2)
  {
    sec_protocol_options_set_tls_tickets_enabled(v10, v33 & 1);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_182197FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v21 - v16;
  v18 = sub_182AD3548();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a1;
  v19[9] = a2;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v17, a8, v19);
}

uint64_t sub_182198104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v12 = (a6 + *a6);
  v10 = swift_task_alloc();
  v8[4] = v10;
  *v10 = v8;
  v10[1] = sub_182198210;

  return v12(a8);
}

uint64_t sub_182198210(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1821EC200, 0, 0);
}

double QUIC.init(alpn:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0;
  *(a2 + 176) = 515;
  *(a2 + 178) = 2;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *a2 = a1;
  *(a2 + 8) = 0;
  *&result = 50463234;
  *(a2 + 200) = 50463234;
  *(a2 + 204) = 256;
  *(a2 + 206) = 50463234;
  *(a2 + 210) = 2;
  return result;
}

double UDP.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 16777986;
  *&result = 50463234;
  *(a1 + 4) = 50463234;
  *(a1 + 8) = 2;
  return result;
}

void *QUIC.init(alpn:_:)@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = 0;
  *(a3 + 144) = 1;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 152) = 0;
  *(a3 + 176) = 515;
  *(a3 + 178) = 2;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 514;
  *a3 = a1;
  *(a3 + 8) = 0;
  result = a2(&v5);
  *(a3 + 202) = v5;
  *(a3 + 210) = v6;
  return result;
}

double QUIC.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 515;
  *(a1 + 178) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *a1 = &unk_1EEF975B0;
  *(a1 + 8) = 0;
  *&result = 50463234;
  *(a1 + 200) = 50463234;
  *(a1 + 204) = 256;
  *(a1 + 206) = 50463234;
  *(a1 + 210) = 2;
  return result;
}

uint64_t QUIC.configure(parameters:)(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  sub_182197B30();
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();

  nw_protocol_stack_set_transport_protocol(v1, v3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t QUIC.configureNestedStack(parameters:)(NSObject *a1)
{
  v3 = *(v1 + 202);
  v4 = nw_parameters_copy_default_protocol_stack(a1);
  sub_18219AFE0();
  nw_protocol_stack_set_internet_protocol(v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = nw_parameters_copy_default_protocol_stack(a1);
  options = nw_udp_create_options();
  v7 = options;
  if (v3 != 2)
  {
    nw_udp_options_set_prefer_no_checksum(options, v3 & 1);
  }

  nw_protocol_stack_set_transport_protocol(v5, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v8 = nw_parameters_copy_default_protocol_stack(a1);
  sub_182197B30();
  v10 = *(v9 + 16);
  swift_unknownObjectRetain();

  nw_protocol_stack_set_transport_protocol(v8, v10);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t UDP.configureNestedStack(parameters:)(NSObject *a1)
{
  v3 = *v1;
  v4 = nw_parameters_copy_default_protocol_stack(a1);
  sub_18219AFE0();
  nw_protocol_stack_set_internet_protocol(v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = nw_parameters_copy_default_protocol_stack(a1);
  options = nw_udp_create_options();
  v7 = options;
  if (v3 != 2)
  {
    nw_udp_options_set_prefer_no_checksum(options, v3 & 1);
  }

  nw_protocol_stack_set_transport_protocol(v5, v7);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t QUIC.idleTimeout(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.maxUDPPayloadSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.initialMaxData(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 40) = a1;
  *(a2 + 48) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.initialMaxStreamDataBidirectionalRemote(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 56) = a1;
  *(a2 + 64) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.initialMaxStreamDataBidirectionalLocal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 72) = a1;
  *(a2 + 80) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.initialMaxStreamDataUnidirectional(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 88) = a1;
  *(a2 + 96) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t sub_182198C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 104) = a1;
  *(a2 + 112) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t sub_182198CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 120) = a1;
  *(a2 + 128) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.maxDatagramFrameSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 136) = a1;
  *(a2 + 144) = 0;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.tls.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 144);
  v30 = *(v1 + 160);
  v31 = v2;
  v4 = *(v1 + 176);
  v32[0] = *(v1 + 192);
  v5 = *(v1 + 112);
  v7 = *(v1 + 80);
  v26 = *(v1 + 96);
  v6 = v26;
  v27 = v5;
  v8 = *(v1 + 112);
  v9 = *(v1 + 144);
  v28 = *(v1 + 128);
  v10 = v28;
  v29 = v9;
  v11 = *(v1 + 48);
  v13 = *(v1 + 16);
  v22 = *(v1 + 32);
  v12 = v22;
  v23 = v11;
  v14 = *(v1 + 48);
  v15 = *(v1 + 80);
  v24 = *(v1 + 64);
  v16 = v24;
  v25 = v15;
  v17 = *(v1 + 16);
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  *(a1 + 160) = v30;
  *(a1 + 176) = v4;
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 96) = v6;
  *(a1 + 112) = v8;
  *(a1 + 128) = v10;
  *(a1 + 144) = v3;
  *(a1 + 32) = v12;
  *(a1 + 48) = v14;
  *(a1 + 64) = v16;
  *(a1 + 80) = v7;
  *(v32 + 15) = *(v1 + 207);
  *(a1 + 207) = *(v1 + 207);
  *a1 = v18;
  *(a1 + 16) = v13;
  return sub_1821DF8EC(v21, v20);
}

uint64_t QUIC.TLS.localIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 176);
  v6 = *(v2 + 144);
  v33 = *(v2 + 160);
  v34 = v5;
  v7 = *(v2 + 176);
  v35[0] = *(v2 + 192);
  v8 = *(v2 + 112);
  v10 = *(v2 + 80);
  v29 = *(v2 + 96);
  v9 = v29;
  v30 = v8;
  v11 = *(v2 + 112);
  v12 = *(v2 + 144);
  v31 = *(v2 + 128);
  v13 = v31;
  v32 = v12;
  v14 = *(v2 + 48);
  v16 = *(v2 + 16);
  v25 = *(v2 + 32);
  v15 = v25;
  v26 = v14;
  v17 = *(v2 + 48);
  v18 = *(v2 + 80);
  v27 = *(v2 + 64);
  v19 = v27;
  v28 = v18;
  v20 = *(v2 + 16);
  v24[0] = *v2;
  v21 = v24[0];
  v24[1] = v20;
  *(a2 + 160) = v33;
  *(a2 + 176) = v7;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v9;
  *(a2 + 112) = v11;
  *(a2 + 128) = v13;
  *(a2 + 144) = v6;
  *(a2 + 32) = v15;
  *(a2 + 48) = v17;
  *(a2 + 64) = v19;
  *(a2 + 80) = v10;
  *(v35 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v21;
  *(a2 + 16) = v16;
  sub_1821DF8EC(v24, v23);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 152) = a1;
  return result;
}

uint64_t sub_182198FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 176);
  v8 = *(v3 + 144);
  v36 = *(v3 + 160);
  v37 = v7;
  v9 = *(v3 + 176);
  v38[0] = *(v3 + 192);
  v10 = *(v3 + 112);
  v12 = *(v3 + 80);
  v32 = *(v3 + 96);
  v11 = v32;
  v33 = v10;
  v13 = *(v3 + 112);
  v14 = *(v3 + 144);
  v34 = *(v3 + 128);
  v15 = v34;
  v35 = v14;
  v16 = *(v3 + 48);
  v18 = *(v3 + 16);
  v28 = *(v3 + 32);
  v17 = v28;
  v29 = v16;
  v19 = *(v3 + 48);
  v20 = *(v3 + 80);
  v30 = *(v3 + 64);
  v21 = v30;
  v31 = v20;
  v22 = *(v3 + 16);
  v27[0] = *v3;
  v23 = v27[0];
  v27[1] = v22;
  *(a3 + 160) = v36;
  *(a3 + 176) = v9;
  *(a3 + 192) = *(v3 + 192);
  *(a3 + 96) = v11;
  *(a3 + 112) = v13;
  *(a3 + 128) = v15;
  *(a3 + 144) = v8;
  *(a3 + 32) = v17;
  *(a3 + 48) = v19;
  *(a3 + 64) = v21;
  *(a3 + 80) = v12;
  *(v38 + 15) = *(v3 + 207);
  v24 = v36;
  *(a3 + 207) = *(v3 + 207);
  *a3 = v23;
  *(a3 + 16) = v18;
  sub_1821DF8EC(v27, v26);

  result = sub_181A554F4(v24);
  *(a3 + 160) = a1;
  *(a3 + 168) = a2;
  return result;
}

uint64_t QUIC.TLS.peerAuthentication(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v32 = *(v2 + 160);
  v33 = v3;
  v5 = *(v2 + 176);
  v34[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v28 = *(v2 + 96);
  v7 = v28;
  v29 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v30 = *(v2 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v24 = *(v2 + 32);
  v13 = v24;
  v25 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v26 = *(v2 + 64);
  v17 = v26;
  v27 = v16;
  v18 = *(v2 + 16);
  v23[0] = *v2;
  v19 = v23[0];
  v23[1] = v18;
  *(a2 + 160) = v32;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  v20 = *a1;
  *(v34 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 176) = v20;
  return sub_1821DF8EC(v23, v22);
}

uint64_t QUIC.TLS.peerAuthenticationOptional(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 177) = a1;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.TLS.peerAuthenticationRequired(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 178) = a1;
  return sub_1821DF8EC(v22, v21);
}

double QUIC.TLS.appendCipherSuite(_:)@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = v2[11];
  v30 = v2[10];
  v31 = v5;
  v32[0] = v2[12];
  *(v32 + 15) = *(v2 + 207);
  v6 = v2[7];
  v26 = v2[6];
  v27 = v6;
  v7 = v2[9];
  v28 = v2[8];
  v29 = v7;
  v8 = v2[3];
  v22 = v2[2];
  v23 = v8;
  v9 = v2[5];
  v24 = v2[4];
  v25 = v9;
  v10 = v2[1];
  v20 = *v2;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AEC8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_182AE9730;
  *(v11 + 32) = a1;
  sub_1821DF8EC(&v20, v19);

  v12 = v31;
  *(a2 + 160) = v30;
  *(a2 + 176) = v12;
  *(a2 + 192) = v32[0];
  *(a2 + 207) = *(v32 + 15);
  v13 = v27;
  *(a2 + 96) = v26;
  *(a2 + 112) = v13;
  v14 = v29;
  *(a2 + 128) = v28;
  *(a2 + 144) = v14;
  v15 = v23;
  *(a2 + 32) = v22;
  *(a2 + 48) = v15;
  v16 = v25;
  *(a2 + 64) = v24;
  *(a2 + 80) = v16;
  result = *&v20;
  v18 = v21;
  *a2 = v20;
  *(a2 + 16) = v18;
  *(a2 + 184) = v11;
  return result;
}

uint64_t QUIC.TLS.cipherSuites(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 176);
  v6 = *(v2 + 144);
  v33 = *(v2 + 160);
  v34 = v5;
  v7 = *(v2 + 176);
  v35[0] = *(v2 + 192);
  v8 = *(v2 + 112);
  v10 = *(v2 + 80);
  v29 = *(v2 + 96);
  v9 = v29;
  v30 = v8;
  v11 = *(v2 + 112);
  v12 = *(v2 + 144);
  v31 = *(v2 + 128);
  v13 = v31;
  v32 = v12;
  v14 = *(v2 + 48);
  v16 = *(v2 + 16);
  v25 = *(v2 + 32);
  v15 = v25;
  v26 = v14;
  v17 = *(v2 + 48);
  v18 = *(v2 + 80);
  v27 = *(v2 + 64);
  v19 = v27;
  v28 = v18;
  v20 = *(v2 + 16);
  v24[0] = *v2;
  v21 = v24[0];
  v24[1] = v20;
  *(a2 + 160) = v33;
  *(a2 + 176) = v7;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v9;
  *(a2 + 112) = v11;
  *(a2 + 128) = v13;
  *(a2 + 144) = v6;
  *(a2 + 32) = v15;
  *(a2 + 48) = v17;
  *(a2 + 64) = v19;
  *(a2 + 80) = v10;
  *(v35 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v21;
  *(a2 + 16) = v16;
  sub_1821DF8EC(v24, v23);

  *(a2 + 184) = a1;
  return result;
}

uint64_t QUIC.TLS.ciphersuiteGroups(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 176);
  v6 = *(v2 + 144);
  v33 = *(v2 + 160);
  v34 = v5;
  v7 = *(v2 + 176);
  v35[0] = *(v2 + 192);
  v8 = *(v2 + 112);
  v10 = *(v2 + 80);
  v29 = *(v2 + 96);
  v9 = v29;
  v30 = v8;
  v11 = *(v2 + 112);
  v12 = *(v2 + 144);
  v31 = *(v2 + 128);
  v13 = v31;
  v32 = v12;
  v14 = *(v2 + 48);
  v16 = *(v2 + 16);
  v25 = *(v2 + 32);
  v15 = v25;
  v26 = v14;
  v17 = *(v2 + 48);
  v18 = *(v2 + 80);
  v27 = *(v2 + 64);
  v19 = v27;
  v28 = v18;
  v20 = *(v2 + 16);
  v24[0] = *v2;
  v21 = v24[0];
  v24[1] = v20;
  *(a2 + 160) = v33;
  *(a2 + 176) = v7;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v9;
  *(a2 + 112) = v11;
  *(a2 + 128) = v13;
  *(a2 + 144) = v6;
  *(a2 + 32) = v15;
  *(a2 + 48) = v17;
  *(a2 + 64) = v19;
  *(a2 + 80) = v10;
  *(v35 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v21;
  *(a2 + 16) = v16;
  sub_1821DF8EC(v24, v23);

  *(a2 + 192) = a1;
  return result;
}

uint64_t QUIC.TLS.earlyDataEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 200) = a1;
  return sub_1821DF8EC(v22, v21);
}

uint64_t QUIC.TLS.ticketsEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 176);
  v4 = *(v2 + 144);
  v31 = *(v2 + 160);
  v32 = v3;
  v5 = *(v2 + 176);
  v33[0] = *(v2 + 192);
  v6 = *(v2 + 112);
  v8 = *(v2 + 80);
  v27 = *(v2 + 96);
  v7 = v27;
  v28 = v6;
  v9 = *(v2 + 112);
  v10 = *(v2 + 144);
  v29 = *(v2 + 128);
  v11 = v29;
  v30 = v10;
  v12 = *(v2 + 48);
  v14 = *(v2 + 16);
  v23 = *(v2 + 32);
  v13 = v23;
  v24 = v12;
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v17 = v25;
  v26 = v16;
  v18 = *(v2 + 16);
  v22[0] = *v2;
  v19 = v22[0];
  v22[1] = v18;
  *(a2 + 160) = v31;
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 96) = v7;
  *(a2 + 112) = v9;
  *(a2 + 128) = v11;
  *(a2 + 144) = v4;
  *(a2 + 32) = v13;
  *(a2 + 48) = v15;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  *(v33 + 15) = *(v2 + 207);
  *(a2 + 207) = *(v2 + 207);
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 201) = a1;
  return sub_1821DF8EC(v22, v21);
}

uint64_t sub_18219975C(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  sub_182197B30();
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();

  nw_protocol_stack_set_transport_protocol(v1, v3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_182199804(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  type metadata accessor for NWConnection.ContentContext();
  v8 = swift_allocObject();
  v9 = nw_content_context_create(a1);
  *(v8 + 16) = v9;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = 0;
  v10 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v10, 0);
  *(v8 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v9, 0.5);
  *(v8 + 64) = 1;
  nw_content_context_set_is_final(v9, 1);
  result = swift_unknownObjectRelease();
  *(v8 + 56) = 0;
  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

    return v8;
  }

  result = sub_182AD3EB8();
  v12 = result;
  if (!result)
  {
    return v8;
  }

LABEL_3:
  if (v12 >= 1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v14 = MEMORY[0x1865DA790](i, v7);
        nw_content_context_set_metadata_for_protocol(v9, *(v14 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v15 = (v7 + 32);
      do
      {
        v16 = *v15++;
        nw_content_context_set_metadata_for_protocol(v9, *(v16 + 16));
        --v12;
      }

      while (v12);
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_182199968@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result;
  if (result)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    v11 = (v10 + 16);
    v12 = *(v5 + 16);
    v15[4] = a3;
    v15[5] = v10;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_181F25CD0;
    v15[3] = a4;
    v13 = _Block_copy(v15);

    nw_content_context_foreach_protocol_metadata(v12, v13);
    _Block_release(v13);

    swift_beginAccess();
    v5 = *v11;

    v14 = a2 & 1;
  }

  else
  {
    v14 = 0;
  }

  *a5 = v14;
  a5[1] = v5;
  return result;
}

uint64_t static QUICStream.createMetadata(endOfStream:other:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v3 = a2;
  }

  *a3 = a1;
  *(a3 + 8) = v3;
}

uint64_t sub_182199B28(uint64_t a1, unint64_t a2)
{
  sub_181F49B58(a1, a2);
  sub_181F49B58(a1, a2);

  sub_181C1F2E4(a1, a2);
  return a1;
}

uint64_t UDP.Metadata.toContentContext()()
{
  v1 = *v0;
  type metadata accessor for NWConnection.ContentContext();
  v2 = swift_allocObject();
  v3 = nw_content_context_create("UDP");
  *(v2 + 16) = v3;
  *(v2 + 24) = 5260373;
  *(v2 + 32) = 0xE300000000000000;
  *(v2 + 40) = 0;
  v4 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(v2 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v3, 0.5);
  *(v2 + 64) = 0;
  nw_content_context_set_is_final(v3, 0);
  result = swift_unknownObjectRelease();
  *(v2 + 56) = 0;
  if (!(v1 >> 62))
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return v2;
  }

  result = sub_182AD3EB8();
  v6 = result;
  if (!result)
  {
    return v2;
  }

LABEL_3:
  if (v6 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = MEMORY[0x1865DA790](i, v1);
        nw_content_context_set_metadata_for_protocol(v3, *(v8 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = (v1 + 32);
      do
      {
        v10 = *v9++;
        nw_content_context_set_metadata_for_protocol(v3, *(v10 + 16));
        --v6;
      }

      while (v6);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_182199CF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v4 = result;
  if (result)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    v9 = (v8 + 16);
    v10 = *(v4 + 16);
    v12[4] = a2;
    v12[5] = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_181F25CD0;
    v12[3] = a3;
    v11 = _Block_copy(v12);

    nw_content_context_foreach_protocol_metadata(v10, v11);
    _Block_release(v11);

    swift_beginAccess();
    v4 = *v9;
  }

  *a4 = v4;
  return result;
}

void *UDP.init(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v5;
  *a2 = 2;
  *(a2 + 1) = v4;
  return result;
}

uint64_t UDP.preferNoChecksum(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 1);
  *a2 = result;
  *(a2 + 1) = v3;
  return result;
}

uint64_t UDP.configure(parameters:)(NSObject *a1)
{
  v2 = *v1;
  v3 = nw_parameters_copy_default_protocol_stack(a1);
  options = nw_udp_create_options();
  v5 = options;
  if (v2 != 2)
  {
    nw_udp_options_set_prefer_no_checksum(options, v2 & 1);
  }

  nw_protocol_stack_set_transport_protocol(v3, v5);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_182199F04(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a4;
  v37 = a5;
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v33 - v11;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v12 = *(a7 + 48);
  v38 = a6;
  v12(qword_1EA8433A8, a6, a7);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v14 = nw_content_context_create("sendContext");
  *(inited + 16) = v14;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v15 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v15, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v14, 0.5);
  *(inited + 64) = 1;
  nw_content_context_set_is_final(v14, 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (a3)
  {
    if (a3 >> 62)
    {
      v16 = sub_182AD3EB8();
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = MEMORY[0x1865DA790](i, a3);
        nw_content_context_set_metadata_for_protocol(v14, *(v18 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v19 = (a3 + 32);
      do
      {
        v20 = *v19++;
        nw_content_context_set_metadata_for_protocol(v14, *(v20 + 16));
        --v16;
      }

      while (v16);
    }
  }

LABEL_13:
  v21 = (*(a7 + 40))(v38, a7);
  if (v21)
  {
    v22 = v21;
    v23 = v33;
    v24 = v35;
    (*(v10 + 16))(v33, v34, v35);
    v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v26 = swift_allocObject();
    (*(v10 + 32))(v26 + v25, v23, v24);
    v27 = *(v22 + 16);
    v28 = sub_182AD2138();
    v30 = NWCreateDispatchDataFromNSData(v28, v29);

    v31 = swift_allocObject();
    *(v31 + 16) = sub_1821EC0D4;
    *(v31 + 24) = v26;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1929;
    v32 = _Block_copy(aBlock);

    nw_connection_send(v27, v30, v14, 1, v32);

    _Block_release(v32);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_18219A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A130);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a4 + 48))(qword_1EA8433A8, a3, a4);
  result = (*(a4 + 40))(a3, a4);
  if (result)
  {
    v12 = result;
    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    (*(v8 + 32))(v14 + v13, v10, v7);
    v15 = *(v12 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1821EB9EC;
    *(v16 + 24) = v14;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1889;
    v17 = _Block_copy(aBlock);

    nw_connection_receive_message(v15, v17);
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18219A56C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a2 >> 60 == 15 || a3 == 0)
  {
    v10 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    swift_allocError();
    if (HIDWORD(v10) <= 0xFE)
    {
      *v11 = v10;
      *(v11 + 4) = BYTE4(v10);
    }

    else
    {
      *v11 = 22;
      *(v11 + 4) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a9);
    return sub_182AD34B8();
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = MEMORY[0x1E69E7CC0];
    v18 = *(a3 + 16);
    aBlock[4] = a7;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F25CD0;
    aBlock[3] = a8;
    v19 = _Block_copy(aBlock);
    sub_181F49B44(a1, a2);
    sub_181F49B44(a1, a2);

    nw_content_context_foreach_protocol_metadata(v18, v19);
    _Block_release(v19);
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(a9);
    sub_182AD34C8();
    sub_181D9D680(a1, a2);
  }
}

uint64_t sub_18219A7C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v32 = a2;
  v28 = a1;
  v11 = sub_182AD39B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = *(a6 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11, v17);
  if ((*(v15 + 48))(v14, 1, a6) == 1)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v15 + 32))(v19, v14, a6);
    if (a4)
    {
      (*(v15 + 16))(v28, v19, a6);
      v20 = swift_allocObject();
      *(v20 + 16) = MEMORY[0x1E69E7CC0];
      v21 = (v20 + 16);
      v22 = *(a4 + 16);
      aBlock[4] = v29;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181F25CD0;
      aBlock[3] = v30;
      v23 = _Block_copy(aBlock);

      nw_content_context_foreach_protocol_metadata(v22, v23);
      _Block_release(v23);
      (*(v15 + 8))(v19, a6);

      swift_beginAccess();
      v24 = *v21;

      *v32 = v24;
      return result;
    }

    (*(v15 + 8))(v19, a6);
  }

  sub_181F4B3B8();
  swift_allocError();
  *v26 = 22;
  *(v26 + 4) = 0;
  return swift_willThrow();
}

uint64_t sub_18219AB1C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  *a1 = *a4;
  sub_181F49B58(a2, a3);

  return a2;
}

uint64_t sub_18219AB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_181F5EB68;

  return static DatagramProtocol.send<A>(connection:content:metadata:)(a1, a2, a3, a4, a7, a5, &protocol witness table for UDP, a6);
}

uint64_t sub_18219AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1821EBD14;

  return static UDP.receive<A>(connection:)(a2, a3, a4, a5);
}

uint64_t sub_18219AD30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  sub_181F49B58(*a1, v5);
  sub_181F49B58(v4, v5);

  result = sub_181C1F2E4(v4, v5);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t sub_18219ADA4(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  *a2 = *a5;
  *a1 = a3;
  a1[1] = a4;
  sub_181F49B58(a3, a4);
}

uint64_t sub_18219ADF4(NSObject *a1)
{
  v2 = *v1;
  v3 = nw_parameters_copy_default_protocol_stack(a1);
  options = nw_udp_create_options();
  v5 = options;
  if (v2 != 2)
  {
    nw_udp_options_set_prefer_no_checksum(options, v2 & 1);
  }

  nw_protocol_stack_set_transport_protocol(v3, v5);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

NSObject *sub_18219AFE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  options = nw_ip_create_options();
  v10 = options;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if ((v3 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_7:
      if (v4 != 2)
      {
        goto LABEL_15;
      }

LABEL_8:
      if (v5 != 2)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v6 != 2)
      {
        goto LABEL_17;
      }

LABEL_10:
      if (v7 > nw_ip_local_address_preference_temporary)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v11 = nw_ip_version_6;
  }

  else if (v1)
  {
    v11 = nw_ip_version_4;
  }

  else
  {
    v11 = nw_ip_version_any;
  }

  nw_ip_options_set_version(options, v11);
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_14:
  nw_ip_options_set_hop_limit(v10, v2);
  if (v4 == 2)
  {
    goto LABEL_8;
  }

LABEL_15:
  nw_ip_options_set_use_minimum_mtu(v10, v4 & 1);
  if (v5 == 2)
  {
    goto LABEL_9;
  }

LABEL_16:
  nw_ip_options_set_disable_fragmentation(v10, v5 & 1);
  if (v6 == 2)
  {
    goto LABEL_10;
  }

LABEL_17:
  nw_ip_options_set_calculate_receive_time(v10, v6 & 1);
  if (v7 > nw_ip_local_address_preference_temporary)
  {
LABEL_18:
    if (v7 != nw_ip_local_address_preference_stable)
    {
      goto LABEL_20;
    }
  }

LABEL_19:
  nw_ip_options_set_local_address_preference(v10, v7);
LABEL_20:
  if (v8 != 2)
  {
    nw_ip_options_set_disable_multicast_loopback(v10, v8 & 1);
  }

  return v10;
}

_BYTE *IP.version(_:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 1) = *(v2 + 1);
  *(a2 + 4) = *(v2 + 4);
  return result;
}

uint64_t IP.hopLimit(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 1) = result;
  *(a2 + 2) = 0;
  *(a2 + 3) = *(v2 + 3);
  *(a2 + 7) = *(v2 + 7);
  return result;
}

uint64_t IP.minimumMTU(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 4);
  *a2 = *v2;
  *(a2 + 2) = *(v2 + 2);
  *(a2 + 3) = result;
  *(a2 + 4) = v3;
  return result;
}

uint64_t IP.disableFragmentation(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 4) = result;
  *(a2 + 5) = *(v2 + 5);
  *(a2 + 7) = *(v2 + 7);
  return result;
}

uint64_t IP.calculateReceiveTime(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 6);
  *a2 = *v2;
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 5) = result;
  *(a2 + 6) = v3;
  return result;
}

char *IP.localAddressPreference(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(v2 + 7);
  *a2 = *v2;
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 6) = v3;
  *(a2 + 7) = v4;
  return result;
}

uint64_t IP.disableMulticastLoopback(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 3) = *(v2 + 3);
  *(a2 + 7) = result;
  return result;
}

uint64_t _s7Network2IPV20configureNestedStack10parametersySo06OS_nw_F0_p_tF_0(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  sub_18219AFE0();
  nw_protocol_stack_set_internet_protocol(v1);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t ApplicationService.Metadata.toContentContext()()
{
  v1 = *v0;
  type metadata accessor for NWConnection.ContentContext();
  v2 = swift_allocObject();
  v3 = nw_content_context_create("ApplicationService");
  *(v2 + 16) = v3;
  *(v2 + 24) = 0xD000000000000012;
  *(v2 + 32) = 0x8000000182AFC260;
  *(v2 + 40) = 0;
  v4 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(v2 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v3, 0.5);
  *(v2 + 64) = 1;
  nw_content_context_set_is_final(v3, 1);
  result = swift_unknownObjectRelease();
  *(v2 + 56) = 0;
  if (!v1)
  {
    return v2;
  }

  if (!(v1 >> 62))
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

    return v2;
  }

  result = sub_182AD3EB8();
  v6 = result;
  if (!result)
  {
    return v2;
  }

LABEL_4:
  if (v6 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = MEMORY[0x1865DA790](i, v1);
        nw_content_context_set_metadata_for_protocol(v3, *(v8 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = (v1 + 32);
      do
      {
        v10 = *v9++;
        nw_content_context_set_metadata_for_protocol(v3, *(v10 + 16));
        --v6;
      }

      while (v6);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ApplicationServiceQUIC.Metadata.toContentContext()()
{
  v1 = *v0;
  type metadata accessor for NWConnection.ContentContext();
  v2 = swift_allocObject();
  v3 = nw_content_context_create("ApplicationServiceQUIC");
  *(v2 + 16) = v3;
  *(v2 + 24) = 0xD000000000000016;
  *(v2 + 32) = 0x8000000182AFC280;
  *(v2 + 40) = 0;
  v4 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(v2 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v3, 0.5);
  *(v2 + 64) = 1;
  nw_content_context_set_is_final(v3, 1);
  result = swift_unknownObjectRelease();
  *(v2 + 56) = 0;
  if (!v1)
  {
    return v2;
  }

  if (!(v1 >> 62))
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

    return v2;
  }

  result = sub_182AD3EB8();
  v6 = result;
  if (!result)
  {
    return v2;
  }

LABEL_4:
  if (v6 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = MEMORY[0x1865DA790](i, v1);
        nw_content_context_set_metadata_for_protocol(v3, *(v8 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = (v1 + 32);
      do
      {
        v10 = *v9++;
        nw_content_context_set_metadata_for_protocol(v3, *(v10 + 16));
        --v6;
      }

      while (v6);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_18219B568@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    v9 = (v8 + 16);
    v10 = *(v7 + 16);
    v13[4] = a2;
    v13[5] = v8;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_181F25CD0;
    v13[3] = a3;
    v11 = _Block_copy(v13);

    nw_content_context_foreach_protocol_metadata(v10, v11);
    _Block_release(v11);

    swift_beginAccess();
    v12 = *v9;
  }

  else
  {
    v12 = 1;
  }

  *a4 = v12;
  return result;
}

uint64_t TLV.Metadata.toContentContext()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 17);
  v12 = *(v0 + 24);

  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(v1, v2);
  MEMORY[0x1865D9F10]();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  type metadata accessor for NWConnection.ContentContext();
  v4 = swift_allocObject();
  v5 = nw_content_context_create("TLV");
  *(v4 + 16) = v5;
  *(v4 + 24) = 5655636;
  *(v4 + 32) = 0xE300000000000000;
  *(v4 + 40) = 0;
  v6 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v6, 0);
  *(v4 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v5, 0.5);
  *(v4 + 64) = v3;
  nw_content_context_set_is_final(v5, v3);
  result = swift_unknownObjectRelease();
  *(v4 + 56) = 0;
  if (!(v12 >> 62))
  {
    v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_12:

    return v4;
  }

  result = sub_182AD3EB8();
  v8 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v8 >= 1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = MEMORY[0x1865DA790](i, v12);
        nw_content_context_set_metadata_for_protocol(v5, *(v10 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v11 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v5, *(*(v12 + v11) + 16));
        v11 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static TLV.Metadata.fromContentContext(context:isComplete:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = result;
  v4 = qword_1EA837200;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(v3 + 16);
  v6 = nw_content_context_copy_protocol_metadata(v5, *(qword_1EA8433A0 + 32));
  if (!v6 || (v7 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v6), swift_unknownObjectRelease(), !v7))
  {
LABEL_10:

LABEL_11:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  type metadata accessor for NWProtocolFramer.Message();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  v10 = *(v8 + 16);
  v11 = sub_182AD3048();
  v12 = nw_framer_message_copy_object_value(v10, (v11 + 32));

  if (v12)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  aBlock = v28;
  v25 = v29;
  if (*(&v29 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    sub_181F49A88(&aBlock, &unk_1EA83A4F0);
  }

  v23 = 0;
LABEL_18:
  v13 = *(v9 + 16);
  v14 = sub_182AD3048();
  v15 = nw_framer_message_copy_object_value(v13, (v14 + 32));

  if (v15)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  aBlock = v28;
  v25 = v29;
  if (!*(&v29 + 1))
  {
    sub_181F49A88(&aBlock, &unk_1EA83A4F0);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v16 = v28;
LABEL_26:
  v17 = *(v3 + 64);
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v19 = (v18 + 16);
  v26 = sub_181FE5010;
  v27 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v25 = sub_181F25CD0;
  *(&v25 + 1) = &block_descriptor_128;
  v20 = _Block_copy(&aBlock);

  nw_content_context_foreach_protocol_metadata(v5, v20);

  _Block_release(v20);

  swift_beginAccess();
  v21 = *v19;

  v22 = 257;
  if (!v17)
  {
    v22 = 1;
  }

  *a2 = v23;
  *(a2 + 8) = v16;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_18219BC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v10;
  *(v8 + 80) = v11;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  *(v8 + 112) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18219BC58, 0, 0);
}

uint64_t sub_18219BC58()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = *(v0 + 72);
  *(v4 + 32) = v9;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2 & 1;
  *(v4 + 57) = HIBYTE(v2) & 1;
  *(v4 + 64) = v10;
  *(v4 + 80) = v1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_18219BD94;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821EB99C, v4, v7);
}

uint64_t sub_18219BD94()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EBEE8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18219BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a5;
  v35 = a4;
  v41 = a3;
  v37 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v18 = *(a10 + 48);
  v40 = a2;
  result = v18(qword_1EA8433A8, a9, a10);
  v48 = a6;
  v20 = a8 >> 62;
  v38 = a7;
  v39 = a8;
  if ((a8 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(a8);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_13;
  }

  v23 = *(a7 + 16);
  v22 = *(a7 + 24);
  v21 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a7), a7))
    {
      __break(1u);
      goto LABEL_18;
    }

    v21 = HIDWORD(a7) - a7;
  }

LABEL_13:

  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(v41, v21);
  MEMORY[0x1865D9F10]();
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  result = (*(a10 + 40))(a9, a10);
  if (result)
  {
    v24 = result;

    aBlock = v41;
    v43 = v35;
    LOWORD(v44) = v36 & 0x101;
    v45 = a6;
    v25 = TLV.Metadata.toContentContext()();
    (*(v15 + 16))(v17, v37, v14);
    v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v27 = swift_allocObject();
    (*(v15 + 32))(v27 + v26, v17, v14);
    v28 = *(v24 + 16);
    v29 = sub_182AD2138();
    v31 = NWCreateDispatchDataFromNSData(v29, v30);

    v32 = *(v25 + 16);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1821EC0D4;
    *(v33 + 24) = v27;
    v46 = sub_181FE5014;
    v47 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_181AA4EBC;
    v45 = &block_descriptor_1879;
    v34 = _Block_copy(&aBlock);

    nw_connection_send(v28, v31, v32, 1, v34);

    _Block_release(v34);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18219C284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18219C2A8, 0, 0);
}

uint64_t sub_18219C2A8()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v3 = v0;
  v3[1] = sub_1820A1348;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821EB978, v2, v4);
}

uint64_t sub_18219C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a4 + 48))(qword_1EA8433A8, a3, a4);
  result = (*(a4 + 40))(a3, a4);
  if (result)
  {
    v12 = result;
    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    (*(v8 + 32))(v14 + v13, v10, v7);
    v15 = *(v12 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1821EB984;
    *(v16 + 24) = v14;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1862;
    v17 = _Block_copy(aBlock);

    nw_connection_receive_message(v15, v17);
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18219C62C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *(a5 + 4);
  v6 = *a5;
  if (!a3)
  {
LABEL_16:
    v20 = v6 | (v5 << 32);
    sub_181F4B3B8();
    v21 = swift_allocError();
    if (HIDWORD(v20) <= 0xFE)
    {
      *v22 = v6;
      *(v22 + 4) = BYTE4(v20);
    }

    else
    {
      *v22 = 22;
      *(v22 + 4) = 0;
    }

    *&aBlock = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
    return sub_182AD34B8();
  }

  v10 = qword_1EA837200;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *(a3 + 16);
  v12 = nw_content_context_copy_protocol_metadata(v11, *(qword_1EA8433A0 + 32));
  if (!v12 || (v13 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v12), swift_unknownObjectRelease(), !v13))
  {
LABEL_15:

    goto LABEL_16;
  }

  type metadata accessor for NWProtocolFramer.Message();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    goto LABEL_15;
  }

  if (a2 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = a1;
  }

  v16 = 0xC000000000000000;
  if (a2 >> 60 != 15)
  {
    v16 = a2;
  }

  v34 = v16;
  v35 = v15;
  v17 = *(v14 + 16);
  v18 = sub_182AD3048();
  sub_181F49B44(a1, a2);
  v19 = nw_framer_message_copy_object_value(v17, (v18 + 32));

  if (v19)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  aBlock = v40;
  v37 = v41;
  if (!*(&v41 + 1))
  {
    result = sub_181F49A88(&aBlock, &unk_1EA83A4F0);
LABEL_26:
    v33 = 0;
    if (a2 >> 60 != 15)
    {
      goto LABEL_27;
    }

LABEL_34:
    v25 = 0;
    goto LABEL_35;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

  v33 = v40;
  if (a2 >> 60 == 15)
  {
    goto LABEL_34;
  }

LABEL_27:
  v24 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v24 == 2)
    {
      v27 = *(a1 + 16);
      v26 = *(a1 + 24);
      v25 = v26 - v27;
      if (!__OFSUB__(v26, v27))
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    goto LABEL_34;
  }

  if (!v24)
  {
    v25 = BYTE6(a2);
LABEL_35:
    v28 = *(a3 + 64);
    v29 = swift_allocObject();
    *(v29 + 16) = MEMORY[0x1E69E7CC0];
    v30 = (v29 + 16);
    v38 = sub_181FE5010;
    v39 = v29;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v37 = sub_181F25CD0;
    *(&v37 + 1) = &block_descriptor_1867;
    v31 = _Block_copy(&aBlock);

    nw_content_context_foreach_protocol_metadata(v11, v31);
    _Block_release(v31);
    swift_beginAccess();
    v32 = *v30;

    *&aBlock = v35;
    *(&aBlock + 1) = v34;
    *&v37 = v33;
    *(&v37 + 1) = v25;
    LOBYTE(v38) = 1;
    BYTE1(v38) = v28;
    v39 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
    sub_182AD34C8();
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v25 = HIDWORD(a1) - a1;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_18219CA10@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for NWProtocolFramer.Options();
  *a5 = sub_18218AF38(v10, v11, a2, a3, a4);

  return sub_181F3CF20(a1, (a5 + 1));
}

uint64_t sub_18219CA90@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[4] = a2;
  a4[5] = *(*(a3 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(a4 + 1);
  a1();
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v6 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Options();
  v7 = swift_allocObject();
  *(v7 + 16) = nw_framer_create_options(*(v6 + 32));
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AE70);
  v9[0] = 0;

  sub_181EC55F0(v9, 0x726564616548, 0xE600000000000000);

  *a4 = v7;
  return result;
}

uint64_t TLV.init<A, B, C>(type:length:_:)@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8)
{
  return sub_18219CB9C(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return TLV.init<A, B, C>(type:length:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_18219CB9C@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v15 = a4;
  v16 = *(*(a8 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(&v14);
  a1();
  return sub_18219CA10(&v14, a2, a3, a5, a6);
}

uint64_t TLV.configure(parameters:)(NSObject *a1)
{
  v2 = nw_parameters_copy_default_protocol_stack(a1);
  nw_protocol_stack_prepend_application_protocol(v2, *(*v1 + 16));

  return swift_unknownObjectRelease();
}

uint64_t TLV.configureNestedStack(parameters:)(NSObject *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  (*(v4 + 64))(a1, v3, v4);
  v5 = nw_parameters_copy_default_protocol_stack(a1);
  nw_protocol_stack_prepend_application_protocol(v5, *(*v1 + 16));

  return swift_unknownObjectRelease();
}

void TLV.reconfigureNestedStack(connection:)(void *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  (*(v4 + 72))(a1, v3, v4);
  v5 = *(*v1 + 16);

  nw_connection_prepend_application_protocol(a1, v5);
}

uint64_t static TLV.makeIncomingMessage<A>(content:context:isComplete:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v47 = a5;
  v48 = a2;
  v46 = a1;
  v9 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = *(a6 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v50 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v19;
  v20 = *(v19 + 16);
  v58 = v21;
  v20(v11, a3, v17);
  v22 = *(v15 + 48);
  v23 = v22(v11, 1, a6);
  v49 = v15;
  if (v23 == 1)
  {
    aBlock = xmmword_182AE7580;
    v24 = swift_dynamicCast();
    (*(v15 + 56))(v14, v24 ^ 1u, 1, a6);
    if (v22(v11, 1, a6) != 1)
    {
      (*(v51 + 8))(v11, v58);
    }
  }

  else
  {
    v45 = a4;
    (*(v15 + 32))(v14, v11, a6);
    a4 = v45;
    (*(v15 + 56))(v14, 0, 1, a6);
  }

  if (v22(v14, 1, a6) == 1)
  {
    (*(v51 + 8))(v14, v58);
LABEL_18:
    sub_181F4B3B8();
    swift_allocError();
    *v36 = 22;
    *(v36 + 4) = 0;
    return swift_willThrow();
  }

  v26 = v49;
  v25 = v50;
  (*(v49 + 32))(v50, v14, a6);
  if (!a4)
  {
LABEL_17:
    (*(v26 + 8))(v25, a6);
    goto LABEL_18;
  }

  v27 = qword_1EA837200;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = *(a4 + 16);
  v29 = nw_content_context_copy_protocol_metadata(v28, *(qword_1EA8433A0 + 32));
  if (!v29 || (v30 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v29), swift_unknownObjectRelease(), !v30))
  {
LABEL_16:

    goto LABEL_17;
  }

  type metadata accessor for NWProtocolFramer.Message();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {

    goto LABEL_16;
  }

  v32 = v31;
  v58 = v30;
  (*(v26 + 16))(v46, v25, a6);
  v33 = *(v32 + 16);
  v34 = sub_182AD3048();
  v35 = nw_framer_message_copy_object_value(v33, (v34 + 32));

  if (v35)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  aBlock = v56;
  v53 = v57;
  if (!*(&v57 + 1))
  {
    sub_181F49A88(&aBlock, &unk_1EA83A4F0);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v51 = 0;
    goto LABEL_25;
  }

  v51 = v56;
LABEL_25:
  v38 = *(a4 + 64);
  v39 = swift_allocObject();
  *(v39 + 16) = MEMORY[0x1E69E7CC0];
  v40 = (v39 + 16);
  v54 = sub_181FE5010;
  v55 = v39;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_181F25CD0;
  *(&v53 + 1) = &block_descriptor_133;
  v41 = _Block_copy(&aBlock);

  nw_content_context_foreach_protocol_metadata(v28, v41);
  _Block_release(v41);

  (*(v26 + 8))(v50, a6);

  swift_beginAccess();
  v42 = *v40;

  v43 = v48;
  *v48 = v51;
  v43[1] = 0;
  *(v43 + 16) = v47 & 1;
  *(v43 + 17) = v38;
  v43[3] = v42;
  return result;
}

uint64_t static TLV.map(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(a4 + 17);
  v7 = *(a4 + 24);
  *a1 = *a4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  sub_181F49B58(a2, a3);

  return a2;
}

uint64_t sub_18219D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_181F5EB68;

  return static TLV.send<A>(connection:content:metadata:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18219D4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1821EBD14;

  return static TLV.receive<A>(connection:)(a2, a3, a4, a5);
}

uint64_t sub_18219D584@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(a2 + 17);
  v8 = a2[3];
  sub_181F49B58(*a1, v5);
  sub_181F49B58(v4, v5);

  result = sub_181C1F2E4(v4, v5);
  *a3 = v6;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v8;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_18219D60C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = *(a5 + 17);
  v7 = *(a5 + 24);
  *a2 = *a5;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *a1 = a3;
  a1[1] = a4;
  sub_181F49B58(a3, a4);
}

uint64_t sub_18219D674(NSObject *a1)
{
  v2 = nw_parameters_copy_default_protocol_stack(a1);
  nw_protocol_stack_prepend_application_protocol(v2, *(*v1 + 16));

  return swift_unknownObjectRelease();
}

uint64_t _s7Network5CoderV20configureNestedStack10parametersySo06OS_nw_F0_p_tF_0(NSObject *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  (*(v4 + 64))(a1, v3, v4);
  v5 = nw_parameters_copy_default_protocol_stack(a1);
  nw_protocol_stack_prepend_application_protocol(v5, *(*v1 + 16));

  return swift_unknownObjectRelease();
}

void _s7Network5CoderV22reconfigureNestedStack10connectionySo06OS_nw_F0_p_tF_0(void *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  (*(v4 + 72))(a1, v3, v4);
  v5 = *(*v1 + 16);

  nw_connection_prepend_application_protocol(a1, v5);
}

uint64_t Coder.Metadata.toContentContext()()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  type metadata accessor for NWConnection.ContentContext();
  v3 = swift_allocObject();
  v4 = nw_content_context_create("Coder");
  *(v3 + 16) = v4;
  *(v3 + 24) = 0x7265646F43;
  *(v3 + 32) = 0xE500000000000000;
  *(v3 + 40) = 0;
  v5 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v5, 0);
  *(v3 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(v3 + 64) = v1;
  nw_content_context_set_is_final(v4, v1);
  result = swift_unknownObjectRelease();
  *(v3 + 56) = 0;
  if (!(v2 >> 62))
  {
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v3;
  }

  result = sub_182AD3EB8();
  v7 = result;
  if (!result)
  {
    return v3;
  }

LABEL_3:
  if (v7 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = MEMORY[0x1865DA790](i, v2);
        nw_content_context_set_metadata_for_protocol(v4, *(v9 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = (v2 + 32);
      do
      {
        v11 = *v10++;
        nw_content_context_set_metadata_for_protocol(v4, *(v11 + 16));
        --v7;
      }

      while (v7);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static Coder.Metadata.fromContentContext(context:isComplete:)@<X0>(uint64_t result@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  if (result)
  {
    v5 = *(result + 64);
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = MEMORY[0x1E69E7CC0];
    v8 = (v7 + 16);
    v9 = *(v6 + 16);
    v14[4] = sub_181FE5010;
    v14[5] = v7;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_181F25CD0;
    v14[3] = &block_descriptor_138_0;
    v10 = _Block_copy(v14);

    nw_content_context_foreach_protocol_metadata(v9, v10);
    _Block_release(v10);

    swift_beginAccess();
    v11 = *v8;

    v12 = 256;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFELL | a2 & 1;
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  *a3 = v13;
  a3[1] = v11;
  return result;
}

uint64_t Coder.init<A>(sending:receiving:using:_:)@<X0>(uint64_t a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_18219DAE4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return sub_18219DBFC(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_18219DAE4@<X0>(uint64_t a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Options();
  v14 = swift_allocObject();
  *(v14 + 16) = nw_framer_create_options(*(v13 + 32));
  *a4 = v14;
  a4[4] = a5;
  a4[5] = *(*(a9 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(a4 + 1);
  a2();
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

uint64_t sub_18219DBFC@<X0>(uint64_t a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Options();
  v14 = swift_allocObject();
  *(v14 + 16) = nw_framer_create_options(*(v13 + 32));
  *a4 = v14;
  a4[4] = a5;
  a4[5] = *(*(*(a9 + 8) + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(a4 + 1);
  a2();
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

uint64_t sub_18219DD38()
{
  sub_181F4B3B8();
  swift_allocError();
  *v1 = 22;
  *(v1 + 4) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static Coder.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v12;
  v8[18] = v13;
  v8[15] = a8;
  v8[16] = v11;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a8;
  v8[6] = v11;
  v8[7] = v12;
  v8[8] = a1;
  type metadata accessor for Coder.Metadata();
  v8[19] = swift_getTupleTypeMetadata2();
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18219DEB0, 0, 0);
}

uint64_t sub_18219DEB0()
{
  v2 = v0[17];
  v1 = v0[18];
  v15 = v1;
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v16 = v0[10];
  v9 = swift_task_alloc();
  v0[21] = v9;
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v3;
  v9[7] = v4;
  v9[8] = v2;
  v9[9] = v1;
  v9[10] = v16;
  v10 = swift_task_alloc();
  v0[22] = v10;
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v6;
  v10[5] = v5;
  v10[6] = v3;
  v10[7] = v4;
  v10[8] = v2;
  v10[9] = v15;
  v10[10] = v16;
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_18219E00C;
  v13 = v0[19];
  v12 = v0[20];

  return MEMORY[0x1EEE6DE18](v12, &unk_182AFC2E0, v9, sub_1821DFA30, v10, 0, 0, v13);
}

uint64_t sub_18219E00C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_18219E1FC;
  }

  else
  {

    v2 = sub_18219E130;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18219E130()
{
  v1 = v0[9];
  v2 = (v0[20] + *(v0[19] + 48));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 1);
  (*(*(v0[12] - 8) + 32))(v0[8], v0[20]);
  *v1 = v3;
  *(v1 + 1) = v4;
  *(v1 + 8) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_18219E1FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18219E274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v10;
  v8[17] = v11;
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18219E2AC, 0, 0);
}

uint64_t sub_18219E2AC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  v11 = *(v0 + 96);
  v12 = *(v0 + 128);
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v11;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1;
  *(v6 + 64) = v12;
  *(v6 + 80) = v5;
  v7 = swift_task_alloc();
  *(v0 + 16) = v4;
  *(v0 + 152) = v7;
  *(v0 + 24) = v3;
  *(v0 + 32) = v11;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v12;
  type metadata accessor for Coder.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v7 = v0;
  v7[1] = sub_18219E414;
  v9 = *(v0 + 64);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821EACF4, v6, TupleTypeMetadata2);
}

uint64_t sub_18219E414()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FC4930, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18219E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5), uint64_t a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  aBlock = a3;
  v32 = a4;
  v28 = a5;
  v29 = a7;
  v33 = a5;
  v34 = a7;
  v30 = a8;
  v35 = a8;
  v36 = a9;
  v27 = a9;
  type metadata accessor for Coder.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v14 = sub_182AD34D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a10 + 48))(qword_1EA8433A8, a6, a10);
  result = (*(a10 + 40))(a6, a10);
  if (result)
  {
    v19 = result;
    (*(v15 + 16))(v17, a1, v14);
    v20 = (*(v15 + 80) + 80) & ~*(v15 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = a3;
    *(v21 + 3) = a4;
    v22 = v29;
    *(v21 + 4) = v28;
    *(v21 + 5) = a6;
    v23 = v30;
    *(v21 + 6) = v22;
    *(v21 + 7) = v23;
    *(v21 + 8) = v27;
    *(v21 + 9) = a10;
    (*(v15 + 32))(&v21[v20], v17, v14);
    v24 = *(v19 + 16);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1821EAD2C;
    *(v25 + 24) = v21;
    v35 = sub_181FE4FD0;
    v36 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_181D478F8;
    v34 = &block_descriptor_1693;
    v26 = _Block_copy(&aBlock);

    nw_connection_receive_message(v24, v26);
    _Block_release(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18219E84C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  v62 = a6;
  v57 = a4;
  v63 = a7;
  v64 = a8;
  v65 = a9;
  v66 = a11;
  v60 = a12;
  v67 = a12;
  v68 = a13;
  type metadata accessor for Coder.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v56 = &v49 - v18;
  v58 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v49 - v23;
  v25 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  if (a3 && a2 >> 60 != 15)
  {
    v49 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v30;
    v51 = v29;
    v52 = v27;
    v53 = *(a13 + 40);
    v54 = v31;
    v55 = a3;

    sub_181F49B44(a1, a2);
    v53(a9, a13);
    (*(a13 + 56))(a9, a13);
    (*(v58 + 8))(v21, a9);
    v37 = v54;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(a8, a1, a2, a8, v60, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v59 + 8))(v24, AssociatedTypeWitness);
    v39 = v50;
    (*(v50 + 56))(v37, 0, 1, a8);
    v40 = v55;

    v41 = v49;
    static Coder.makeIncomingMessage<A>(content:context:isComplete:)(v49, &v63, v37, v40, v57 & 1, v42, v43, v44, a8);
    (*(v51 + 8))(v37, v52);

    v59 = a1;
    v60 = a2;
    v45 = v63;
    LODWORD(v58) = BYTE1(v63);
    v46 = v64;
    v47 = &v56[*(TupleTypeMetadata2 + 48)];
    (*(v39 + 32))(v56, v41, a8);
    *v47 = v45;
    v47[1] = v58;
    *(v47 + 1) = v46;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
    sub_182AD34C8();

    return sub_181D9D680(v59, v60);
  }

  else
  {
    v32 = *a5 | (*(a5 + 4) << 32);
    if (HIDWORD(v32) <= 0xFE)
    {
      sub_181F4B3B8();
      v33 = swift_allocError();
      *v36 = v32;
      *(v36 + 4) = BYTE4(v32);
    }

    else
    {
      sub_181F4B3B8();
      v33 = swift_allocError();
      if (a2 >> 60 == 15)
      {
        v35 = 96;
      }

      else
      {
        v35 = 22;
      }

      *v34 = v35;
      *(v34 + 4) = 0;
    }

    v63 = v33;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
    return sub_182AD34B8();
  }
}

uint64_t static Coder.makeIncomingMessage<A>(content:context:isComplete:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a5;
  v31 = a2;
  v28 = a1;
  v11 = sub_182AD39B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *(a9 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11, v17);
  if ((*(v15 + 48))(v14, 1, a9) == 1)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v15 + 32))(v19, v14, a9);
    if (a4)
    {
      (*(v15 + 16))(v28, v19, a9);
      LODWORD(v28) = *(a4 + 64);
      v20 = swift_allocObject();
      *(v20 + 16) = MEMORY[0x1E69E7CC0];
      v21 = (v20 + 16);
      v22 = *(a4 + 16);
      aBlock[4] = sub_181FE5010;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_181F25CD0;
      aBlock[3] = &block_descriptor_146;
      v23 = _Block_copy(aBlock);

      nw_content_context_foreach_protocol_metadata(v22, v23);
      _Block_release(v23);
      (*(v15 + 8))(v19, a9);

      swift_beginAccess();
      v24 = *v21;

      v26 = v31;
      *v31 = v29 & 1;
      v26[1] = v28;
      *(v26 + 1) = v24;
      return result;
    }

    (*(v15 + 8))(v19, a9);
  }

  sub_181F4B3B8();
  swift_allocError();
  *v27 = 22;
  *(v27 + 4) = 0;
  return swift_willThrow();
}

uint64_t Coder.configure(parameters:)(NSObject *a1)
{
  v2 = nw_parameters_copy_default_protocol_stack(a1);
  nw_protocol_stack_prepend_application_protocol(v2, *(*v1 + 16));

  return swift_unknownObjectRelease();
}

uint64_t static Coder.mapLegacy(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v24[4] = a8;
  v24[5] = a9;
  type metadata accessor for Coder.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = v24 - v15;
  v17 = *a3;
  v18 = *(a3 + 1);
  v19 = *(a3 + 8);
  (*(*(a5 - 8) + 16))(v24 - v15, a2, a5, v14);
  v20 = &v16[*(TupleTypeMetadata2 + 48)];
  *v20 = v17;
  v20[1] = v18;
  *(v20 + 1) = v19;
  sub_181F4B3B8();
  swift_allocError();
  *v21 = 22;
  *(v21 + 4) = 0;
  swift_willThrow();
  v22 = *(v13 + 8);

  return v22(v16, TupleTypeMetadata2);
}

uint64_t static Coder.map(_:)(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a1;
  v40 = a7;
  v36 = a4;
  v37 = a3;
  v35 = a2;
  v13 = *(a8 - 8);
  v38 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v32 - v20;
  v22 = *a5;
  v33 = a5[1];
  v34 = v22;
  v32 = *(a5 + 1);
  (*(a11 + 40))(a8, a11, v19);
  (*(a11 + 56))(a8, a11);
  v23 = v16;
  v24 = v36;
  (*(v13 + 8))(v23, a8);
  v25 = v37;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v41;
  (*(AssociatedConformanceWitness + 8))(v40, v25, v24, v40, v38, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v27)
  {
    return (*(v18 + 8))(v21, AssociatedTypeWitness);
  }

  (*(v18 + 8))(v21, AssociatedTypeWitness);
  sub_181F49B58(v25, v24);
  v29 = v32;

  result = sub_181C1F2E4(v25, v24);
  v30 = v35;
  v31 = v33;
  *v35 = v34;
  v30[1] = v31;
  *(v30 + 1) = v29;
  return result;
}

uint64_t sub_18219F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = a6[2];
  v14 = a6[3];
  v15 = a6[4];
  v16 = a6[5];
  *v12 = v6;
  v12[1] = sub_181F5EB68;

  return static Coder.receive<A>(connection:)(a1, a2, a3, v13, v14, v15, a4, v16);
}

uint64_t sub_18219F7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = static Coder.mapLegacy(_:)(a1, a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7]);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83AF70);
    result = swift_getTupleTypeMetadata3();
    *(a4 + *(result + 64)) = 0;
  }

  return result;
}

uint64_t Coder<>.init<A>(_:using:_:)@<X0>(uint64_t a1@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Options();
  v14 = swift_allocObject();
  *(v14 + 16) = nw_framer_create_options(*(v13 + 32));
  *a5 = v14;
  a5[4] = a4;
  a5[5] = *(*(a8 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(a5 + 1);
  a2();
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

{
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Options();
  v14 = swift_allocObject();
  *(v14 + 16) = nw_framer_create_options(*(v13 + 32));
  *a5 = v14;
  a5[4] = a4;
  a5[5] = *(*(*(a8 + 8) + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(a5 + 1);
  a2();
  v15 = *(*(a3 - 8) + 8);

  return v15(a1, a3);
}

uint64_t sub_18219FB28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 120) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18219FB6C, 0, 0);
}

uint64_t sub_18219FB6C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v11 = *(v0 + 32);
  v3 = *(v0 + 120);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 72);
  *(v5 + 16) = *(v0 + 56);
  *(v5 + 32) = v6;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  *(v5 + 64) = v3;
  *(v5 + 72) = v11;
  *(v5 + 88) = v2;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_18219FCA8;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821EBA90, v5, v9);
}

uint64_t sub_18219FCA8()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EC164, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_18219FDE4(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v48 - v19;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v20 = *(a11 + 48);
  v53 = a2;
  v20(qword_1EA8433A8, a8, a11);
  v21 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v21 = a4;
  }

  v56 = v21;
  v22 = a6 >> 62;
  v52 = a6;
  if ((a6 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(a6);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_15;
  }

  v25 = *(a5 + 16);
  v24 = *(a5 + 24);
  v23 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v23 = HIDWORD(a5) - a5;
  }

LABEL_15:
  v49 = v17;

  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(0, v23);
  MEMORY[0x1865D9F10]();
  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  v50 = a8;
  v48 = a1;
  sub_182AD3448();
  v26 = v56;
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v28 = nw_content_context_create("JSON");
  *(inited + 16) = v28;
  *(inited + 24) = 1313821514;
  *(inited + 32) = 0xE400000000000000;
  *(inited + 40) = 0;
  v29 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v29, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v28, 0.5);
  v30 = v54 & 1;
  *(inited + 64) = v54 & 1;
  nw_content_context_set_is_final(v28, v30);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v26 >> 62)
  {
    v31 = sub_182AD3EB8();
    if (!v31)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_26;
    }
  }

  if (v31 < 1)
  {
    __break(1u);
    goto LABEL_31;
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

LABEL_26:
  v36 = (*(a11 + 40))(v50, a11);
  if (v36)
  {
    v37 = v36;

    v38 = v51;
    v39 = v49;
    (*(v18 + 16))(v51, v48, v49);
    v40 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v41 = swift_allocObject();
    (*(v18 + 32))(v41 + v40, v38, v39);
    v42 = *(v37 + 16);
    v43 = sub_182AD2138();
    v45 = NWCreateDispatchDataFromNSData(v43, v44);

    v46 = swift_allocObject();
    *(v46 + 16) = sub_1821EC0D4;
    *(v46 + 24) = v41;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1919;
    v47 = _Block_copy(aBlock);

    nw_connection_send(v42, v45, v28, 1, v47);

    _Block_release(v47);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();

    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1821A02CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821A02F8, 0, 0);
}

uint64_t sub_1821A02F8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for JSON.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v5 = v0;
  v5[1] = sub_1821A044C;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821EB70C, v3, TupleTypeMetadata2);
}

uint64_t sub_1821A044C()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EBD74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1821A0588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a5;
  v24 = a6;
  type metadata accessor for JSON.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v11 = sub_182AD34D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a7 + 48))(qword_1EA8433A8, a4, a7);
  result = (*(a7 + 40))(a4, a7);
  if (result)
  {
    v16 = result;
    (*(v12 + 16))(v14, a1, v11);
    v17 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
    v19 = v24;
    *(v18 + 4) = v23;
    *(v18 + 5) = v19;
    *(v18 + 6) = a7;
    (*(v12 + 32))(&v18[v17], v14, v11);
    v20 = *(v16 + 16);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1821EB824;
    *(v21 + 24) = v18;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1850;
    v22 = _Block_copy(aBlock);

    nw_connection_receive_message(v20, v22);
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821A0868(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  type metadata accessor for JSON.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v30 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a5 + 4) == 255)
  {
    static JSON.Metadata.fromContentContext(context:isComplete:)(a3, &v32);
    v19 = v33;
    v20 = a6;
    if (v33 != 1)
    {
      if (a2 >> 60 != 15)
      {
        v27 = a2;
        v30[0] = v32;
        v30[1] = v20;
        sub_182AD1C48();
        swift_allocObject();
        v28 = v31;
        sub_181F49B58(v31, v27);
        sub_182AD1C38();
        sub_182AD1C18();

        v29 = &v14[*(TupleTypeMetadata2 + 48)];
        (*(v15 + 32))(v14, v18, a7);
        *v29 = v30[0] & 1;
        *(v29 + 1) = v19;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
        sub_182AD34D8();
        sub_182AD34C8();
        return sub_181D9D680(v28, v27);
      }

      sub_181F37710(v32, v33);
    }

    sub_181F4B3B8();
    v21 = swift_allocError();
    *v22 = 96;
    *(v22 + 4) = 0;
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
  }

  else
  {
    v23 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v24 = swift_allocError();
    *v25 = v23;
    *(v25 + 4) = BYTE4(v23);
    v32 = v24;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
  }

  return sub_182AD34B8();
}

uint64_t sub_1821A0D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = a7[2];
  v16 = a7[3];
  v17 = a7[4];
  *v14 = v7;
  v14[1] = sub_181F5EB68;

  return static JSON.send<A>(connection:content:metadata:)(a1, a2, a3, a4, v15, a5, v16, v17);
}

uint64_t sub_1821A0DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = a6[2];
  v15 = a6[3];
  v16 = a6[4];
  *v13 = v6;
  v13[1] = sub_181F5EB68;

  return static JSON.receive<A>(connection:)(a1, a2, a3, v14, a4, v15, v16, a5);
}

uint64_t sub_1821A0FC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 1);
  type metadata accessor for NWConnection.ContentContext();
  v10 = swift_allocObject();
  v11 = nw_content_context_create(a2);
  *(v10 + 16) = v11;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = 0;
  v12 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v12, 0);
  *(v10 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v11, 0.5);
  *(v10 + 64) = v8;
  nw_content_context_set_is_final(v11, v8);
  result = swift_unknownObjectRelease();
  *(v10 + 56) = 0;
  if (!v9)
  {
    return v10;
  }

  if (!(v9 >> 62))
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

    return v10;
  }

  result = sub_182AD3EB8();
  v14 = result;
  if (!result)
  {
    return v10;
  }

LABEL_4:
  if (v14 >= 1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = MEMORY[0x1865DA790](i, v9);
        nw_content_context_set_metadata_for_protocol(v11, *(v16 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = (v9 + 32);
      do
      {
        v18 = *v17++;
        nw_content_context_set_metadata_for_protocol(v11, *(v18 + 16));
        --v14;
      }

      while (v14);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821A1128@<X0>(uint64_t result@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, void *a4@<X8>)
{
  if (result)
  {
    v7 = *(result + 64);
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = MEMORY[0x1E69E7CC0];
    v10 = (v9 + 16);
    v11 = *(v8 + 16);
    v14[4] = a2;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_181F25CD0;
    v14[3] = a3;
    v12 = _Block_copy(v14);

    nw_content_context_foreach_protocol_metadata(v11, v12);
    _Block_release(v12);

    swift_beginAccess();
    v13 = *v10;
  }

  else
  {
    v7 = 0;
    v13 = 1;
  }

  *a4 = v7;
  a4[1] = v13;
  return result;
}

uint64_t sub_1821A1268@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

nw_protocol_options_t _s7Network13PropertyList3VyACyxGxmcfC_0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EA837200 != -1)
  {
    swift_once();
  }

  v2 = qword_1EA8433A0;
  type metadata accessor for NWProtocolFramer.Options();
  v3 = swift_allocObject();
  result = nw_framer_create_options(*(v2 + 32));
  *(v3 + 16) = result;
  *a1 = v3;
  return result;
}

uint64_t static PropertyList3.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v10;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 120) = *a4;
  *(v8 + 80) = *(a4 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1821A1358, 0, 0);
}

uint64_t sub_1821A1358()
{
  v1 = *(v0 + 72);
  v15 = *(v0 + 80);
  v14 = *(v0 + 120);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  *(v9 + 48) = v1;
  *(v9 + 56) = v8;
  *(v9 + 64) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v3;
  v10[5] = v2;
  v10[6] = v1;
  v10[7] = v8;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_1821A14B8;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v11, &unk_182AFC300, v9, sub_1821DFB58, v10, 0, 0, v12);
}

uint64_t sub_1821A14B8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1821A15DC;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821A15DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821A1648(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 120) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821A168C, 0, 0);
}

uint64_t sub_1821A168C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v11 = *(v0 + 32);
  v3 = *(v0 + 120);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 72);
  *(v5 + 16) = *(v0 + 56);
  *(v5 + 32) = v6;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  *(v5 + 64) = v3;
  *(v5 + 72) = v11;
  *(v5 + 88) = v2;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1821A17C8;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821EACDC, v5, v9);
}

uint64_t sub_1821A17C8()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FDDC30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1821A1904(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v48 - v19;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v20 = *(a11 + 48);
  v53 = a2;
  v20(qword_1EA8433A8, a8, a11);
  v21 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v21 = a4;
  }

  v56 = v21;
  v22 = a6 >> 62;
  v52 = a6;
  if ((a6 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(a6);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_15;
  }

  v25 = *(a5 + 16);
  v24 = *(a5 + 24);
  v23 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v23 = HIDWORD(a5) - a5;
  }

LABEL_15:
  v49 = v17;

  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(0, v23);
  MEMORY[0x1865D9F10]();
  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  v50 = a8;
  v48 = a1;
  sub_182AD3448();
  v26 = v56;
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v28 = nw_content_context_create("PropertyList");
  *(inited + 16) = v28;
  strcpy((inited + 24), "PropertyList");
  *(inited + 37) = 0;
  *(inited + 38) = -5120;
  *(inited + 40) = 0;
  v29 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v29, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v28, 0.5);
  v30 = v54 & 1;
  *(inited + 64) = v54 & 1;
  nw_content_context_set_is_final(v28, v30);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v26 >> 62)
  {
    v31 = sub_182AD3EB8();
    if (!v31)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_26;
    }
  }

  if (v31 < 1)
  {
    __break(1u);
    goto LABEL_31;
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

LABEL_26:
  v36 = (*(a11 + 40))(v50, a11);
  if (v36)
  {
    v37 = v36;

    v38 = v51;
    v39 = v49;
    (*(v18 + 16))(v51, v48, v49);
    v40 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v41 = swift_allocObject();
    (*(v18 + 32))(v41 + v40, v38, v39);
    v42 = *(v37 + 16);
    v43 = sub_182AD2138();
    v45 = NWCreateDispatchDataFromNSData(v43, v44);

    v46 = swift_allocObject();
    *(v46 + 16) = sub_1821EC0D4;
    *(v46 + 24) = v41;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_1681;
    v47 = _Block_copy(aBlock);

    nw_connection_send(v42, v45, v28, 1, v47);

    _Block_release(v47);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();

    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t static PropertyList3.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  type metadata accessor for PropertyList3.Metadata();
  v8[10] = swift_getTupleTypeMetadata2();
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821A1EC8, 0, 0);
}

uint64_t sub_1821A1EC8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v0[12] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v1;
  v7[7] = v6;
  v8 = swift_task_alloc();
  v0[13] = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;
  v8[6] = v1;
  v8[7] = v6;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1821A1FF4;
  v11 = v0[10];
  v10 = v0[11];

  return MEMORY[0x1EEE6DE18](v10, &unk_182AFC318, v7, sub_1821EC224, v8, 0, 0, v11);
}

uint64_t sub_1821A1FF4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1821A21D4;
  }

  else
  {

    v2 = sub_1821A2118;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821A2118()
{
  v1 = v0[3];
  v2 = (v0[11] + *(v0[10] + 48));
  v3 = *v2;
  v4 = *(v2 + 1);
  (*(*(v0[5] - 8) + 32))(v0[2], v0[11]);
  *v1 = v3;
  *(v1 + 8) = v4;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1821A21D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821A224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821A2278, 0, 0);
}

uint64_t sub_1821A2278()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  type metadata accessor for PropertyList3.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v5 = v0;
  v5[1] = sub_1821A044C;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821EAC98, v3, TupleTypeMetadata2);
}

uint64_t sub_1821A23CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a5;
  v24 = a6;
  type metadata accessor for PropertyList3.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v11 = sub_182AD34D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a7 + 48))(qword_1EA8433A8, a4, a7);
  result = (*(a7 + 40))(a4, a7);
  if (result)
  {
    v16 = result;
    (*(v12 + 16))(v14, a1, v11);
    v17 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
    v19 = v24;
    *(v18 + 4) = v23;
    *(v18 + 5) = v19;
    *(v18 + 6) = a7;
    (*(v12 + 32))(&v18[v17], v14, v11);
    v20 = *(v16 + 16);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1821EACB0;
    *(v21 + 24) = v18;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1669;
    v22 = _Block_copy(aBlock);

    nw_connection_receive_message(v20, v22);
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821A26AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  type metadata accessor for PropertyList3.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v30 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a5 + 4) == 255)
  {
    static PropertyList3.Metadata.fromContentContext(context:isComplete:)(a3, &v32);
    v19 = v33;
    v20 = a6;
    if (v33 != 1)
    {
      if (a2 >> 60 != 15)
      {
        v27 = a2;
        v30[0] = v32;
        v30[1] = v20;
        sub_182AD1E28();
        swift_allocObject();
        v28 = v31;
        sub_181F49B58(v31, v27);
        sub_182AD1E18();
        sub_182AD1E08();

        v29 = &v14[*(TupleTypeMetadata2 + 48)];
        (*(v15 + 32))(v14, v18, a7);
        *v29 = v30[0] & 1;
        *(v29 + 1) = v19;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
        sub_182AD34D8();
        sub_182AD34C8();
        return sub_181D9D680(v28, v27);
      }

      sub_181F37710(v32, v33);
    }

    sub_181F4B3B8();
    v21 = swift_allocError();
    *v22 = 96;
    *(v22 + 4) = 0;
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
  }

  else
  {
    v23 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v24 = swift_allocError();
    *v25 = v23;
    *(v25 + 4) = BYTE4(v23);
    v32 = v24;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
  }

  return sub_182AD34B8();
}

uint64_t sub_1821A2A5C(NSObject *a1)
{
  v2 = *v1;
  v3 = nw_parameters_copy_default_protocol_stack(a1);
  nw_protocol_stack_prepend_application_protocol(v3, *(v2 + 16));

  return swift_unknownObjectRelease();
}

uint64_t sub_1821A2B34(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t *__return_ptr, uint64_t, void))
{
  v32 = a2;
  v29 = a1;
  v13 = sub_182AD39B8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = *(a7 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a3, v13, v19);
  if ((*(v17 + 48))(v16, 1, a7) == 1)
  {
    (*(v14 + 8))(v16, v13);
LABEL_5:
    sub_181F4B3B8();
    swift_allocError();
    *v24 = 22;
    *(v24 + 4) = 0;
    return swift_willThrow();
  }

  v22 = *(v17 + 32);
  v22(v21, v16, a7);
  a10(&v30, a4, 0);
  v23 = v31;
  if (v31 == 1)
  {
    (*(v17 + 8))(v21, a7);
    goto LABEL_5;
  }

  v26 = v30;
  result = (v22)(v29, v21, a7);
  v27 = v32;
  *v32 = v26 & 1;
  *(v27 + 1) = v23;
  return result;
}

uint64_t sub_1821A2DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v36 = a1;
  a7(255, a4, a5, a6);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  v22 = *a3;
  v23 = *(a3 + 8);
  v24 = *(a4 - 8);
  (*(v24 + 16))(&v33 - v20, a2, a4, v19);
  v25 = &v21[*(TupleTypeMetadata2 + 48)];
  *v25 = v22;
  *(v25 + 1) = v23;
  v26 = *(v11 + 16);
  v26(v17, v21, TupleTypeMetadata2);

  (*(v24 + 32))(v36, v17, a4);
  v27 = v34;
  v26(v34, v21, TupleTypeMetadata2);
  v28 = v27;
  v29 = *&v27[*(TupleTypeMetadata2 + 48) + 8];
  v30 = v35;
  (*(v11 + 32))(v35, v21, TupleTypeMetadata2);

  v31 = *(v24 + 8);
  v31(v30, a4);
  v31(v28, a4);
  return v29;
}

uint64_t sub_1821A30E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void), void (*a10)(void), void (*a11)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v18 = *a5;
  v17 = *(a5 + 1);
  a9(0);
  swift_allocObject();
  a10();
  a11(a6, a3, a4, a6, a7);

  if (!v11)
  {
    sub_181F49B58(a3, a4);

    result = sub_181C1F2E4(a3, a4);
    *a2 = v18;
    *(a2 + 8) = v17;
  }

  return result;
}

uint64_t sub_1821A31E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = a7[2];
  v16 = a7[3];
  v17 = a7[4];
  *v14 = v7;
  v14[1] = sub_181F5EB68;

  return static PropertyList3.send<A>(connection:content:metadata:)(a1, a2, a3, a4, v15, a5, v16, v17);
}

uint64_t sub_1821A32CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = a6[2];
  v15 = a6[3];
  v16 = a6[4];
  *v13 = v6;
  v13[1] = sub_181F5EB68;

  return static PropertyList3.receive<A>(connection:)(a1, a2, a3, v14, a4, v15, v16, a5);
}

uint64_t sub_1821A33F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, void, void)@<X4>, uint64_t a5@<X8>)
{
  result = a4(a5, a1, a2, a3[2], a3[3], a3[4]);
  if (!v5)
  {
    v9 = result;
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83AF70);
    result = swift_getTupleTypeMetadata3();
    v11 = *(result + 64);
    *(a5 + *(result + 48)) = v9;
    *(a5 + v11) = v10 & 1;
  }

  return result;
}

void WebSocket.Metadata.closeCode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  *(a1 + 2) = *(v1 + 4);
  *a1 = v2;
}

uint64_t WebSocket.Metadata.toContentContext()()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *(v0 + 1);
  v4 = v0[6];
  v21 = *(v0 + 1);
  v20[0] = v1;
  type metadata accessor for NWProtocolWebSocket.Metadata();
  swift_allocObject();

  v5 = NWProtocolWebSocket.Metadata.init(opcode:)(v20);
  if (v1 == 3)
  {
    v6 = (v3 | (v2 << 16)) >> 16;
    if (v6 <= 0xFE)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v6 <= 0xFE)
    {
      v8 = (v3 | (v2 << 16)) >> 16;
    }

    else
    {
      v8 = 0;
    }

    swift_beginAccess();
    *(v5 + 40) = v7;
    *(v5 + 42) = v8;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = dword_182AFE6BC[v7];
    }

    nw_ws_metadata_set_close_code(*(v5 + 16), v9);
  }

  MEMORY[0x1865D9F10](v10);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v11 = v21;
  type metadata accessor for NWConnection.ContentContext();
  v12 = swift_allocObject();
  v13 = nw_content_context_create("WebSocket");
  *(v12 + 16) = v13;
  *(v12 + 24) = 0x656B636F53626557;
  *(v12 + 32) = 0xE900000000000074;
  *(v12 + 40) = 0;
  v14 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v14, 0);
  *(v12 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v13, 0.5);
  *(v12 + 64) = v4;
  nw_content_context_set_is_final(v13, v4);
  result = swift_unknownObjectRelease();
  *(v12 + 56) = 0;
  if (!(v11 >> 62))
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_23:

    return v12;
  }

  result = sub_182AD3EB8();
  v16 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v16 >= 1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = MEMORY[0x1865DA790](i, v11);
        nw_content_context_set_metadata_for_protocol(v13, *(v18 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v19 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v13, *(*(v11 + v19) + 16));
        v19 += 8;
        --v16;
      }

      while (v16);
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t static WebSocket.Metadata.fromContentContext(context:isComplete:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v3 = result;
  v4 = qword_1EA837040;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(v3 + 16);
  v6 = nw_content_context_copy_protocol_metadata(v5, *(off_1EA838800 + 4));
  if (!v6 || (v7 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v6), swift_unknownObjectRelease(), !v7))
  {
LABEL_11:

LABEL_12:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  type metadata accessor for NWProtocolWebSocket.Metadata();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_11;
  }

  v18 = *(v8 + 24);
  v9 = v8;
  swift_beginAccess();
  v17 = *(v9 + 40);
  v10 = *(v9 + 42);
  v11 = *(v3 + 64);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = (v12 + 16);
  aBlock[4] = sub_181FE5010;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181F25CD0;
  aBlock[3] = &block_descriptor_167;
  v14 = _Block_copy(aBlock);

  nw_content_context_foreach_protocol_metadata(v5, v14);

  _Block_release(v14);

  swift_beginAccess();
  v15 = *v13;

  v16 = 0x1000000000000;
  if (!v11)
  {
    v16 = 0;
  }

  *a2 = v18 | (v17 << 16) | (v10 << 32) | v16 | 0x10000000000;
  a2[1] = v15;
  return result;
}

NSObject *sub_1821A3A0C()
{
  options = nw_ws_create_options(nw_ws_version_13);
  v2 = *v0;
  if (*v0)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 56;
      do
      {
        v5 = sub_182AD3048();
        v6 = sub_182AD3048();
        nw_ws_options_add_additional_header(options, (v5 + 32), (v6 + 32));

        v4 += 32;
        --v3;
      }

      while (v3);
    }
  }

  v7 = v0[1];
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 40;
      do
      {
        v10 = sub_182AD3048();
        nw_ws_options_add_subprotocol(options, (v10 + 32));

        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  v11 = *(v0 + 16);
  if (v11 != 2)
  {
    nw_ws_options_set_auto_reply_ping(options, v11 & 1);
  }

  v12 = *(v0 + 17);
  if (v12 != 2)
  {
    nw_ws_options_set_skip_handshake(options, v12 & 1);
  }

  if ((v0[4] & 1) == 0)
  {
    nw_ws_options_set_maximum_message_size(options, v0[3]);
  }

  return options;
}

uint64_t sub_1821A3B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821A3B6C, 0, 0);
}

uint64_t sub_1821A3B6C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = *(v0 + 64);
  *(v4 + 32) = v9;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 60) = BYTE4(v2);
  *(v4 + 58) = WORD1(v2);
  *(v4 + 61) = BYTE5(v2) & 1;
  *(v4 + 62) = BYTE6(v2) & 1;
  *(v4 + 64) = v1;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1821A3CB8;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821EBA3C, v4, v7);
}

uint64_t sub_1821A3CB8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EBEEC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1821A3DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a3;
  v29[1] = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - v15;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a8 + 48))(qword_1EA8433A8, a7, a8);
  result = (*(a8 + 40))(a7, a8);
  if (result)
  {
    v18 = result;
    LOBYTE(aBlock) = a5;
    WORD1(aBlock) = WORD1(a5);
    BYTE4(aBlock) = BYTE4(a5);
    BYTE5(aBlock) = BYTE5(a5) & 1;
    BYTE6(aBlock) = BYTE6(a5) & 1;
    v31 = a6;
    v19 = WebSocket.Metadata.toContentContext()();
    (*(v14 + 16))(v16, a1, v13);
    v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v21 = swift_allocObject();
    (*(v14 + 32))(v21 + v20, v16, v13);
    v22 = *(v18 + 16);
    v23 = sub_182AD2138();
    v25 = NWCreateDispatchDataFromNSData(v23, v24);

    v26 = *(v19 + 16);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1821EC0D4;
    *(v27 + 24) = v21;
    v34 = sub_181FE5014;
    v35 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_181AA4EBC;
    v33 = &block_descriptor_1907;
    v28 = _Block_copy(&aBlock);

    nw_connection_send(v22, v25, v26, 1, v28);

    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821A40E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821A4108, 0, 0);
}

uint64_t sub_1821A4108()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v3 = v0;
  v3[1] = sub_1820A1348;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821EB660, v2, v4);
}

uint64_t sub_1821A4218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a4 + 48))(qword_1EA8433A8, a3, a4);
  result = (*(a4 + 40))(a3, a4);
  if (result)
  {
    v12 = result;
    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    (*(v8 + 32))(v14 + v13, v10, v7);
    v15 = *(v12 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1821EBEA0;
    *(v16 + 24) = v14;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1838;
    v17 = _Block_copy(aBlock);

    nw_connection_receive_message(v15, v17);
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1821A4490@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 514;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *(a4 + 64) = a2;
  *(a4 + 72) = *(*(a3 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm((a4 + 40));
  return a1();
}

uint64_t sub_1821A44F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1821DFC6C(v2, a2);
  if (*a2)
  {
    v7 = *a2;

    result = sub_1820D5528(v5);
    a1 = v7;
  }

  else
  {
  }

  *a2 = a1;
  return result;
}

uint64_t sub_1821A4568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1821DFC6C(v2, a2);

  *(a2 + 8) = a1;
  return result;
}

uint64_t WebSocket.autoReplyPing(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1821DFC6C(v2, a2);
  *(a2 + 16) = a1;
  return result;
}

uint64_t WebSocket.skipHandshake(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1821DFC6C(v2, a2);
  *(a2 + 17) = a1;
  return result;
}

uint64_t WebSocket.maximumMessageSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1821DFC6C(v2, a2);
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  return result;
}

uint64_t WebSocket.configure(parameters:)(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = sub_1821A3A0C();
  nw_protocol_stack_prepend_application_protocol(v1, v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t WebSocket.configureNestedStack(parameters:)(NSObject *a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  (*(v4 + 64))(a1, v3, v4);
  v5 = nw_parameters_copy_default_protocol_stack(a1);
  v6 = sub_1821A3A0C();
  nw_protocol_stack_prepend_application_protocol(v5, v6);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t WebSocket.reconfigureNestedStack(connection:)(void *a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  (*(v4 + 72))(a1, v3, v4);
  v5 = sub_1821A3A0C();
  nw_connection_prepend_application_protocol(a1, v5);

  return swift_unknownObjectRelease();
}

uint64_t static WebSocket.makeIncomingMessage<A>(content:context:isComplete:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v38 = a5;
  v40 = a2;
  v37 = a1;
  v9 = sub_182AD39B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = *(a6 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a3, v9, v15);
  if ((*(v13 + 48))(v12, 1, a6) == 1)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v13 + 32))(v17, v12, a6);
    if (a4)
    {
      v18 = qword_1EA837040;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = *(a4 + 16);
      v20 = nw_content_context_copy_protocol_metadata(v19, *(off_1EA838800 + 4));
      if (v20)
      {
        v21 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v20);
        swift_unknownObjectRelease();
        if (v21)
        {
          type metadata accessor for NWProtocolWebSocket.Metadata();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = v22;
            (*(v13 + 16))(v37, v17, a6);
            LODWORD(v37) = *(v23 + 24);
            swift_beginAccess();
            v24 = *(v23 + 40);
            v34 = *(v23 + 42);
            v35 = v24;
            v36 = *(a4 + 64);
            v25 = swift_allocObject();
            *(v25 + 16) = MEMORY[0x1E69E7CC0];
            v33 = (v25 + 16);
            aBlock[4] = sub_181FE5010;
            aBlock[5] = v25;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_181F25CD0;
            aBlock[3] = &block_descriptor_172;
            v26 = _Block_copy(aBlock);

            nw_content_context_foreach_protocol_metadata(v19, v26);
            _Block_release(v26);

            (*(v13 + 8))(v17, a6);

            v27 = v33;
            swift_beginAccess();
            v28 = *v27;

            v30 = v40;
            *v40 = v37;
            v31 = v35;
            v30[4] = v34;
            *(v30 + 1) = v31;
            v30[5] = v38 & 1;
            v30[6] = v36;
            *(v30 + 1) = v28;
            return result;
          }
        }
      }
    }

    (*(v13 + 8))(v17, a6);
  }

  sub_181F4B3B8();
  swift_allocError();
  *v32 = 22;
  *(v32 + 4) = 0;
  return swift_willThrow();
}

uint64_t static WebSocket.map(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 2);
  v6 = *(a4 + 4);
  v7 = *(a4 + 5);
  v8 = *(a4 + 6);
  v9 = *(a4 + 8);
  *a1 = *a4;
  *(a1 + 4) = v6;
  *(a1 + 2) = v5;
  *(a1 + 5) = v7;
  *(a1 + 6) = v8;
  *(a1 + 8) = v9;
  sub_181F49B58(a2, a3);

  return a2;
}

uint64_t sub_1821A4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_181F5EB68;

  return static WebSocket.send<A>(connection:content:metadata:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1821A4D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1821EBD14;

  return static WebSocket.receive<A>(connection:)(a2, a3, a4, a5);
}

uint64_t sub_1821A4E68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 6);
  v7 = *(a2 + 8);
  *a3 = *a2;
  sub_181F49B58(v4, v5);
  sub_181F49B58(v4, v5);

  result = sub_181C1F2E4(v4, v5);
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;
  *(a3 + 32) = v6;
  return result;
}

uint64_t sub_1821A4EEC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 2);
  v6 = *(a5 + 4);
  v7 = *(a5 + 5);
  v8 = *(a5 + 6);
  v9 = *(a5 + 8);
  *a2 = *a5;
  *(a2 + 4) = v6;
  *(a2 + 2) = v5;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  *(a2 + 8) = v9;
  *a1 = a3;
  a1[1] = a4;
  sub_181F49B58(a3, a4);
}

uint64_t sub_1821A4F64(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  v2 = sub_1821A3A0C();
  nw_protocol_stack_prepend_application_protocol(v1, v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1821A4FB8(NSObject *a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  (*(v4 + 64))(a1, v3, v4);
  v5 = nw_parameters_copy_default_protocol_stack(a1);
  v6 = sub_1821A3A0C();
  nw_protocol_stack_prepend_application_protocol(v5, v6);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1821A5060(void *a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  (*(v4 + 72))(a1, v3, v4);
  v5 = sub_1821A3A0C();
  nw_connection_prepend_application_protocol(a1, v5);

  return swift_unknownObjectRelease();
}

uint64_t Framer.Metadata.init(framer:isComplete:lastMessage:other:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = MEMORY[0x1E69E7CC0];
  *a5 = result;
  *(a5 + 8) = a2;
  if (a4)
  {
    v5 = a4;
  }

  *(a5 + 9) = a3;
  *(a5 + 16) = v5;
  return result;
}

uint64_t Framer.Metadata.toContentContext()()
{
  v1 = *(v0 + 9);
  v11 = *(v0 + 16);

  MEMORY[0x1865D9F10](v2);
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  type metadata accessor for NWConnection.ContentContext();
  v3 = swift_allocObject();
  v4 = nw_content_context_create("Framer");
  *(v3 + 16) = v4;
  *(v3 + 24) = 0x72656D617246;
  *(v3 + 32) = 0xE600000000000000;
  *(v3 + 40) = 0;
  v5 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v5, 0);
  *(v3 + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(v3 + 64) = v1;
  nw_content_context_set_is_final(v4, v1);
  result = swift_unknownObjectRelease();
  *(v3 + 56) = 0;
  if (!(v11 >> 62))
  {
    v7 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:

    return v3;
  }

  result = sub_182AD3EB8();
  v7 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v7 >= 1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = MEMORY[0x1865DA790](i, v11);
        nw_content_context_set_metadata_for_protocol(v4, *(v9 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v4, *(*(v11 + v10) + 16));
        v10 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static Framer.Metadata.fromContentContext(context:isComplete:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  v9 = *(a4 + 8);

  v11 = v9(a3, a4);
  v12 = *(v8 + 16);
  v13 = nw_content_context_copy_protocol_metadata(v12, *(v11 + 32));
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v13);

  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_11:

LABEL_12:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  type metadata accessor for NWProtocolFramer.Message();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
LABEL_10:

    goto LABEL_11;
  }

  v16 = v15;
  v17 = *(v8 + 64);
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v19 = (v18 + 16);
  v24[4] = sub_181FE5010;
  v24[5] = v18;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_181F25CD0;
  v24[3] = &block_descriptor_177;
  v20 = _Block_copy(v24);

  nw_content_context_foreach_protocol_metadata(v12, v20);
  _Block_release(v20);
  swift_beginAccess();
  v21 = *v19;

  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v22 = v21;
  }

  v23 = 256;
  if (!v17)
  {
    v23 = 0;
  }

  *a5 = v16;
  a5[1] = v23 & 0xFFFFFFFFFFFFFFFELL | a2 & 1;
  a5[2] = v22;
  return result;
}

uint64_t Framer.options.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1821A5570@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  (*(a4 + 8))(a2, a4);
  type metadata accessor for NWProtocolFramer.Options();
  v10 = swift_allocObject();
  v11 = swift_unknownObjectRetain();
  options = nw_framer_create_options(v11);
  swift_unknownObjectRelease();

  *(v10 + 16) = options;
  *a6 = v10;
  a6[4] = a3;
  a6[5] = *(*(a5 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(a6 + 1);
  return a1();
}

uint64_t sub_1821A5654@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  (*(a4 + 8))(a2, a4);
  type metadata accessor for NWProtocolFramer.Options();
  v10 = swift_allocObject();
  v11 = swift_unknownObjectRetain();
  options = nw_framer_create_options(v11);
  swift_unknownObjectRelease();

  *(v10 + 16) = options;
  *a6 = v10;
  a6[4] = a3;
  a6[5] = *(*(a5 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_0Tm(a6 + 1);
  return a1();
}

uint64_t static Framer.send<A>(connection:content:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *a4;
  *(v8 + 64) = a8;
  *(v8 + 72) = v9;
  *(v8 + 120) = *(a4 + 8);
  *(v8 + 121) = *(a4 + 9);
  *(v8 + 80) = a4[2];
  return MEMORY[0x1EEE6DFA0](sub_1821A577C, 0, 0);
}

uint64_t sub_1821A577C()
{
  v15 = *(v0 + 121);
  v1 = *(v0 + 120);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v14 = *(v0 + 24);
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  *(v9 + 48) = v8;
  *(v9 + 56) = v14;
  *(v9 + 72) = v3;
  *(v9 + 80) = v1;
  *(v9 + 81) = v15;
  *(v9 + 88) = v2;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = v8;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_182185648;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v11, &unk_182AFC348, v9, sub_1821EC228, v10, 0, 0, v12);
}

uint64_t sub_1821A58E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 120) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1821A592C, 0, 0);
}

uint64_t sub_1821A592C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 120);
  v4 = *(v0 + 40);
  v11 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = *(v0 + 80);
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v6;
  *(v5 + 48) = v11;
  *(v5 + 64) = v4;
  *(v5 + 72) = v2;
  *(v5 + 80) = v3 & 1;
  *(v5 + 81) = HIBYTE(v3) & 1;
  *(v5 + 88) = v1;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_18219FCA8;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000022, 0x8000000182BDFAC0, sub_1821EAC40, v5, v9);
}

uint64_t sub_1821A5A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t (*a7)(uint64_t a1), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a3;
  v33 = a4;
  v31 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  (*(a11 + 48))(qword_1EA8433A8, a9, a11);
  result = (*(a11 + 40))(a9, a11);
  if (result)
  {
    v19 = result;
    aBlock = a5;
    LOWORD(v35) = a6 & 0x101;
    v36 = a7;
    v20 = Framer.Metadata.toContentContext()();
    (*(v15 + 16))(v17, v31, v14);
    v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v22 = swift_allocObject();
    (*(v15 + 32))(v22 + v21, v17, v14);
    v23 = *(v19 + 16);
    v24 = sub_182AD2138();
    v26 = NWCreateDispatchDataFromNSData(v24, v25);

    v27 = *(v20 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1821EC0D4;
    *(v28 + 24) = v22;
    v38 = sub_181FE5014;
    v39 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_181AA4EBC;
    v37 = &block_descriptor_1657;
    v29 = _Block_copy(&aBlock);

    nw_connection_send(v23, v26, v27, 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Framer.receive<A>(connection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821A5D78, 0, 0);
}

uint64_t sub_1821A5D78()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = v2;
  v6[6] = v5;
  v7 = swift_task_alloc();
  v0[14] = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v2;
  v7[6] = v5;
  v8 = swift_task_alloc();
  v0[15] = v8;
  type metadata accessor for Framer.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v8 = v0;
  v8[1] = sub_1821A5ED8;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_182AFC360, v6, sub_1821EC228, v7, 0, 0, TupleTypeMetadata2);
}

uint64_t sub_1821A5ED8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1821A6038;
  }

  else
  {

    v2 = sub_1821A5FFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821A5FFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  *v5 = *(v0 + 32);
  *(v5 + 8) = v3;
  *(v5 + 9) = v4;
  *(v5 + 16) = v6;
  return (*(v0 + 8))(v1, v2);
}

uint64_t sub_1821A6038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1821A60A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1821A60CC, 0, 0);
}

uint64_t sub_1821A60CC()
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
  type metadata accessor for Framer.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v4 = v0;
  v4[1] = sub_1821A6204;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x8000000182BDFAF0, sub_1821EAA78, v2, TupleTypeMetadata2);
}

uint64_t sub_1821A6204()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EC160, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1821A6340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  type metadata accessor for Framer.Metadata();
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
    *(v19 + 16) = sub_1821EAAA8;
    *(v19 + 24) = v17;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1645;
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

uint64_t sub_1821A661C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a5 | (*(a5 + 4) << 32);
  if (a3)
  {

    static Framer.Metadata.fromContentContext(context:isComplete:)(v14, a4 & 1, a7, a9, &v25);
    v15 = v25;
    if (v25)
    {
      v17 = v26;
      v16 = v27;
      if (a2 >> 60 == 15)
      {
        v18 = 0;
      }

      else
      {
        v18 = a1;
      }

      v19 = 0xC000000000000000;
      if (a2 >> 60 != 15)
      {
        v19 = a2;
      }

      v25 = v18;
      v26 = v19;
      v27 = v15;
      v28 = v17 & 0x101;
      v29 = v16;
      sub_181F49B44(a1, a2);
      sub_1821EABC0(v15);
      type metadata accessor for Framer.Metadata();
      swift_getTupleTypeMetadata2();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      sub_182AD34C8();

      return sub_1821EAC00(v15);
    }

    else
    {
      sub_181F4B3B8();
      v23 = swift_allocError();
      if (HIDWORD(v10) <= 0xFE)
      {
        *v24 = v10;
        *(v24 + 4) = BYTE4(v10);
      }

      else
      {
        *v24 = 22;
        *(v24 + 4) = 0;
      }

      v25 = v23;
      type metadata accessor for Framer.Metadata();
      swift_getTupleTypeMetadata2();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      sub_182AD34B8();
    }
  }

  else
  {
    sub_181F4B3B8();
    v21 = swift_allocError();
    if (HIDWORD(v10) <= 0xFE)
    {
      *v22 = v10;
      *(v22 + 4) = BYTE4(v10);
    }

    else
    {
      *v22 = 22;
      *(v22 + 4) = 0;
    }

    v25 = v21;
    type metadata accessor for Framer.Metadata();
    swift_getTupleTypeMetadata2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
    return sub_182AD34B8();
  }
}

uint64_t static Framer.makeIncomingMessage<A>(content:context:isComplete:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v32 = a6;
  v31 = a5;
  v29 = a1;
  v30 = a2;
  v11 = sub_182AD39B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *(a7 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11, v17);
  if ((*(v15 + 48))(v14, 1, a7) == 1)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v20 = *(v15 + 32);
    v20(v19, v14, a7);
    if (a4)
    {

      static Framer.Metadata.fromContentContext(context:isComplete:)(v21, v31 & 1, v32, v36, &v33);

      v22 = v33;
      if (v33)
      {
        v23 = v35;
        v24 = v34;
        result = (v20)(v29, v19, a7);
        v26 = v30;
        *v30 = v22;
        *(v26 + 8) = v24 & 1;
        *(v26 + 9) = HIBYTE(v24) & 1;
        v26[2] = v23;
        return result;
      }
    }

    (*(v15 + 8))(v19, a7);
  }

  sub_181F4B3B8();
  swift_allocError();
  *v27 = 22;
  *(v27 + 4) = 0;
  return swift_willThrow();
}

uint64_t static Framer.map(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v6 = *(a4 + 9);
  v7 = *(a4 + 16);
  *a1 = *a4;
  *(a1 + 8) = v5;
  *(a1 + 9) = v6;
  *(a1 + 16) = v7;
  sub_181F49B58(a2, a3);

  return a2;
}

uint64_t sub_1821A6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = *(a7 + 16);
  v17 = *(a7 + 24);
  *v15 = v7;
  v15[1] = sub_181F5EB68;

  return static Framer.send<A>(connection:content:metadata:)(a1, a2, a3, a4, v16, a5, v17, a6);
}

uint64_t sub_1821A6DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  v13 = *(a6 + 16);
  v14 = *(a6 + 24);
  *v12 = v6;
  v12[1] = sub_1821EBD14;

  return static Framer.receive<A>(connection:)(a2, a3, v13, a4, v14, a5);
}

uint64_t sub_1821A6ED0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  result = static Framer.map(_:)(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_1821A6F68(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 136);
  v6 = sub_182AD35A8();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = (v2 + *(*v2 + 144));
  *v7 = a1;
  v7[1] = a2;
  return v2;
}

uint64_t sub_1821A7020()
{
  v1 = *(v0 + *(*v0 + 144));

  v1(sub_1821EAA08, v0);
}

uint64_t sub_1821A70A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[1] = a2;
  v36 = a1;
  v4 = *(*a3 + 96);
  v5 = sub_182AD35A8();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32[0] = v32 - v6;
  v34 = sub_182AD3558();
  v35 = sub_182AD39B8();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = v32 - v7;
  v9 = sub_182AD39B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - v11;
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v32 - v19;
  (*(v10 + 16))(v12, v36, v9, v18);
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v21 = *(*a3 + 136);
    v22 = v37;
    v23 = (v37 + 48);
    swift_beginAccess();
    result = (*v23)(a3 + v21, 1, v5);
    if (!result)
    {
      v25 = a3 + v21;
      v26 = v32[0];
      (*(v22 + 16))(v32[0], v25, v5);
      sub_182AD3598();
      return (*(v22 + 8))(v26, v5);
    }
  }

  else
  {
    (*(v13 + 32))(v20, v12, v4);
    v27 = *(*a3 + 136);
    swift_beginAccess();
    v28 = v37;
    v29 = 1;
    if (!(*(v37 + 48))(a3 + v27, 1, v5))
    {
      v30 = v32[0];
      (*(v28 + 16))(v32[0], a3 + v27, v5);
      (*(v13 + 16))(v16, v20, v4);
      sub_182AD3588();
      (*(v28 + 8))(v30, v5);
      v29 = 0;
    }

    (*(*(v34 - 8) + 56))(v8, v29, 1);
    v31 = (*(v33 + 8))(v8, v35);
    sub_1821A7020(v31);
    return (*(v13 + 8))(v20, v4);
  }

  return result;
}

uint64_t AsyncSequenceReceive.makeAsyncIterator()()
{
  v0 = sub_182AD3578();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - v2;
  v4 = sub_182AD35E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0, v6);
  sub_182AD35F8();
  sub_1821A7020();
  sub_182AD35B8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1821A7724(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *a2;
  v6 = sub_182AD27A8();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_182AD27C8();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[12];
  v12 = sub_182AD35A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v22[1] = qword_1EA8433A8;
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v5[10];
  *(v17 + 3) = v5[11];
  *(v17 + 4) = v11;
  *(v17 + 5) = v5[13];
  *(v17 + 6) = swift_allocateMetadataPack();
  *(v17 + 7) = v5[15];
  *(v17 + 8) = swift_allocateWitnessTablePack();
  *(v17 + 9) = a2;
  (*(v13 + 32))(&v17[v16], v15, v12);
  aBlock[4] = sub_1821EAA10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_1633;
  v18 = _Block_copy(aBlock);

  sub_182AD27B8();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1821EB618(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181AB3DCC(&qword_1ED40F4A0, &unk_1EA839F50);
  v19 = v25;
  v20 = v27;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v10, v19, v18);
  _Block_release(v18);
  (*(v26 + 8))(v19, v20);
  (*(v23 + 8))(v10, v24);
}

uint64_t sub_1821A7B78(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_182AD35A8();
  v6 = sub_182AD39B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v13 = *(v4 + 136);
  swift_beginAccess();
  (*(v7 + 16))(v12, &a1[v13], v6);
  v14 = *(v5 - 8);
  LODWORD(v4) = (*(v14 + 48))(v12, 1, v5);
  (*(v7 + 8))(v12, v6);
  if (v4 != 1)
  {
    return sub_182AD3598();
  }

  (*(v14 + 16))(v9, a2, v5);
  (*(v14 + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(&a1[v13], v9, v6);
  return swift_endAccess();
}

uint64_t AsyncSequenceReceive.deinit()
{
  v1 = *(*v0 + 136);
  sub_182AD35A8();
  v2 = sub_182AD39B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AsyncSequenceReceive.__deallocating_deinit()
{
  AsyncSequenceReceive.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1821A7ECC()
{
  AsyncSequenceReceive.makeAsyncIterator()();
}

void Connection1<>.send(_:metadata:isComplete:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v9 = sub_1821DFF50();
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v11 = nw_content_context_create("sendContext");
  *(inited + 16) = v11;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v12 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v12, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v11, 0.5);
  *(inited + 64) = a4;
  nw_content_context_set_is_final(v11, a4 & 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (a3)
  {
    if (a3 >> 62)
    {
      v13 = sub_182AD3EB8();
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    if (v13 < 1)
    {
      __break(1u);
      goto LABEL_16;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = MEMORY[0x1865DA790](i, a3);
        nw_content_context_set_metadata_for_protocol(v11, *(v15 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16 = (a3 + 32);
      do
      {
        v17 = *v16++;
        nw_content_context_set_metadata_for_protocol(v11, *(v17 + 16));
        --v13;
      }

      while (v13);
    }
  }

LABEL_11:
  v18 = *(v5 + 16);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = v9;
    v20 = *(v18 + 16);

    v21 = sub_182AD2138();
    v23 = NWCreateDispatchDataFromNSData(v21, v22);

    v24 = swift_allocObject();
    *(v24 + 16) = sub_1821DFFA8;
    *(v24 + 24) = v19;
    aBlock[4] = sub_181BEBE54;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_192;
    v25 = _Block_copy(aBlock);

    nw_connection_send(v20, v23, v11, 1, v25);

    _Block_release(v25);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t Connection1<>.send(_:metadata:isComplete:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5)
{

  v10 = sub_181F76154(a1, a2);
  v12 = v11;
  Connection1<>.send(_:metadata:isComplete:)(v10, v11, a3, a4, a5);
  v14 = v13;
  sub_181C1F2E4(v10, v12);
  return v14;
}

uint64_t Connection1<>.receive(minimumLength:maximumLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Connection1<>.receive(exactly:)(uint64_t a1, uint64_t a2)
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

uint64_t Connection1<>.receive()(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83AED0);
  type metadata accessor for AsyncSequenceReceive();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  sub_1821A6F68(sub_1821DFFDC, v4);

  return v5;
}

{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for AsyncSequenceReceive();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  sub_1821A6F68(sub_1821DFFEC, v4);

  return v5;
}

uint64_t sub_1821A884C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  v10 = a3[2];
  if (v10)
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = *(v8 + 80);
    v12[3] = *(v8 + 88);
    v12[4] = swift_allocateMetadataPack();
    v12[5] = a4;
    v12[6] = swift_allocateWitnessTablePack();
    v12[7] = sub_1821EA970;
    v12[8] = v11;
    v13 = *(v10 + 16);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1821EA9B0;
    *(v14 + 24) = v12;
    v16[4] = sub_181FE4FD0;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_181D478F8;
    v16[3] = &block_descriptor_1627;
    v15 = _Block_copy(v16);

    nw_connection_receive(v13, 1u, 0xFFFFFFFF, v15);
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1821A8A14(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a7;
  v39 = a6;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  if (*(a5 + 4) == 255)
  {
    v22 = v19;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(v37, a4 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v22 + 8))(v16, v14);
      sub_181F4B3B8();
      v24 = swift_allocError();
      *v25 = 22;
      *(v25 + 4) = 0;
      (v39)(0, 0, 0, 1, v24);
    }

    else
    {
      (*(v17 + 32))(v21, v16, AssociatedTypeWitness);
      if (v36 >> 60 == 15)
      {
        v29 = 0;
      }

      else
      {
        v29 = v35;
      }

      if (v36 >> 60 == 15)
      {
        v30 = 0xC000000000000000;
      }

      else
      {
        v30 = v36;
      }

      v31 = (*(a11 + 48))(v29, v30, v21, a9, a11);
      v33 = v32;
      v39();
      sub_181C1F2E4(v31, v33);

      (*(v17 + 8))(v21, AssociatedTypeWitness);
    }
  }

  else
  {
    v26 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v27 = swift_allocError();
    *v28 = v26;
    *(v28 + 4) = BYTE4(v26);
    (v39)(0, 0, 0, 1, v27);
  }
}

uint64_t sub_1821A8F54(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_1821A8FF4@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  a1(0);
  swift_allocObject();
  result = a2();
  *a3 = result;
  return result;
}

void Connection1<>.send(_:metadata:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1821DFF50();
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v9 = nw_content_context_create("sendContext");
  *(inited + 16) = v9;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v10 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v10, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v9, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v9, 0);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (a3)
  {
    if (a3 >> 62)
    {
      v11 = sub_182AD3EB8();
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    if (v11 < 1)
    {
      __break(1u);
      goto LABEL_16;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = MEMORY[0x1865DA790](i, a3);
        nw_content_context_set_metadata_for_protocol(v9, *(v13 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v14 = (a3 + 32);
      do
      {
        v15 = *v14++;
        nw_content_context_set_metadata_for_protocol(v9, *(v15 + 16));
        --v11;
      }

      while (v11);
    }
  }

LABEL_11:
  v16 = *(v4 + 16);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = v7;
    v18 = *(v16 + 16);

    v19 = sub_182AD2138();
    v21 = NWCreateDispatchDataFromNSData(v19, v20);

    v22 = swift_allocObject();
    *(v22 + 16) = sub_1821EC20C;
    *(v22 + 24) = v17;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_209;
    v23 = _Block_copy(aBlock);

    nw_connection_send(v18, v21, v9, 1, v23);

    _Block_release(v23);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1821A9384(unsigned int *a1)
{
  if (*(a1 + 4) == 255)
  {
    v7 = 0x80;
    v6 = 3;
    v1 = &v6;
  }

  else
  {
    v2 = *a1 | (*(a1 + 4) << 32);
    v4 = *a1;
    v5 = (v2 | 0x4000000000) >> 32;
    v1 = &v4;
  }

  return sub_182191B88(v1);
}

uint64_t Connection1<>.send(_:metadata:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{

  v8 = sub_181F76154(a1, a2);
  v10 = v9;
  Connection1<>.send(_:metadata:)(v8, v9, a3, a4);
  v12 = v11;
  sub_181C1F2E4(v8, v10);
  return v12;
}

uint64_t Connection1<>.receiveOnce()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getAssociatedTypeWitness();
  v3[6] = swift_getTupleTypeMetadata2();
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821A9554, 0, 0);
}

uint64_t sub_1821A9554()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1821A9644;
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x4F65766965636572, 0xED0000292865636ELL, sub_1821DFFE4, v1, v4);
}

uint64_t sub_1821A9644()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1821A9814;
  }

  else
  {
    v2 = sub_1821A9758;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821A9758()
{
  v1 = v0[7];
  v2 = *v1;
  v3 = *(v1 + 1);
  (*(*(v0[5] - 8) + 32))(v0[2], &v1[*(v0[6] + 48)]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1821A9814()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1821A9880(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a2;
  v22 = a3;
  v7 = *(v5 + 88);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = sub_182AD34D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = a2[2];
  if (v13)
  {
    (*(v9 + 16))(v12, a1, v8, v10);
    v14 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = *(v6 + 80);
    *(v15 + 3) = v7;
    MetadataPack = swift_allocateMetadataPack();
    v17 = v22;
    *(v15 + 4) = MetadataPack;
    *(v15 + 5) = v17;
    *(v15 + 6) = swift_allocateWitnessTablePack();
    (*(v9 + 32))(&v15[v14], v12, v8);
    v18 = *(v13 + 16);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1821EA838;
    *(v19 + 24) = v15;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1614;
    v20 = _Block_copy(aBlock);

    nw_connection_receive_message(v18, v20);
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821A9B50(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5, uint64_t a6)
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

uint64_t sub_1821AA080(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[2];
  if (v4)
  {
    v7 = result;
    v8 = *a3;
    v9 = swift_allocObject();
    v9[2] = *(v8 + 80);
    v9[3] = *(v8 + 88);
    v9[4] = swift_allocateMetadataPack();
    v9[5] = a4;
    v9[6] = swift_allocateWitnessTablePack();
    v9[7] = v7;
    v9[8] = a2;
    v10 = *(v4 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1821EA820;
    *(v11 + 24) = v9;
    v13[4] = sub_181FE4FD0;
    v13[5] = v11;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_181D478F8;
    v13[3] = &block_descriptor_1604;
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

uint64_t sub_1821AA210(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(char *, void *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a7;
  v47 = a6;
  v43 = a4;
  v44 = a3;
  v40 = a1;
  v41 = a2;
  v42 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_182AD39B8();
  v11 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v38 - v25;
  if (*(v22 + 4) == 255)
  {
    v38 = v23;
    v39 = v11;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(v44, v43 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
    {
      (*(v38 + 8))(v19, v17);
      (*(*(TupleTypeMetadata2 - 8) + 56))(v16, 1, 1, TupleTypeMetadata2);
      sub_181F4B3B8();
      v28 = swift_allocError();
      *v29 = 22;
      *(v29 + 4) = 0;
      v47(v16, v28);

      return (*(v39 + 8))(v16, v45);
    }

    else
    {
      (*(v20 + 32))(v26, v19, AssociatedTypeWitness);
      v35 = v40;
      v34 = v41;
      if (v41 >> 60 == 15)
      {
        v36 = 0;
      }

      else
      {
        v36 = v40;
      }

      v37 = 0xC000000000000000;
      if (v41 >> 60 != 15)
      {
        v37 = v41;
      }

      *v13 = v36;
      *(v13 + 1) = v37;
      (*(v20 + 16))(&v13[*(TupleTypeMetadata2 + 48)], v26, AssociatedTypeWitness);
      (*(*(TupleTypeMetadata2 - 8) + 56))(v13, 0, 1, TupleTypeMetadata2);
      sub_181F49B44(v35, v34);
      v47(v13, 0);
      (*(v39 + 8))(v13, v45);
      return (*(v20 + 8))(v26, AssociatedTypeWitness);
    }
  }

  else
  {
    v31 = *v22 | (*(v22 + 4) << 32);
    (*(*(TupleTypeMetadata2 - 8) + 56))(v16, 1, 1, TupleTypeMetadata2, v24);
    sub_181F4B3B8();
    v32 = swift_allocError();
    *v33 = v31;
    *(v33 + 4) = BYTE4(v31);
    v47(v16, v32);

    return (*(v11 + 8))(v16, v45);
  }
}

void Connection1.send<>(type:_:metadata:isFinal:)(unsigned int a1, void *a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1821DFF50();
  v35 = a3;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_182AD1C98();
  swift_allocObject();

  sub_182AD1C88();
  v11 = sub_182AD1C68();
  v13 = v12;

  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(v13);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v14 != 2)
  {
    v15 = 0;
    goto LABEL_11;
  }

  v17 = *(v11 + 16);
  v16 = *(v11 + 24);
  v15 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v11), v11))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v15 = HIDWORD(v11) - v11;
  }

LABEL_11:
  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(a1, v15);
  MEMORY[0x1865D9F10]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v18 = v35;
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v20 = nw_content_context_create("TLV");
  *(inited + 16) = v20;
  *(inited + 24) = 5655636;
  *(inited + 32) = 0xE300000000000000;
  *(inited + 40) = 0;
  v21 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v21, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v20, 0.5);
  *(inited + 64) = a4 & 1;
  nw_content_context_set_is_final(v20, a4 & 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v18 >> 62)
  {
    v22 = sub_182AD3EB8();
    if (!v22)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_22;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v22; ++i)
    {
      v24 = MEMORY[0x1865DA790](i, v18);
      nw_content_context_set_metadata_for_protocol(v20, *(v24 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v25 = (v18 + 32);
    do
    {
      v26 = *v25++;
      nw_content_context_set_metadata_for_protocol(v20, *(v26 + 16));
      --v22;
    }

    while (v22);
  }

LABEL_22:
  v27 = *(v5 + 16);
  if (v27)
  {

    v28 = *(v27 + 16);
    sub_181F49B58(v11, v13);

    v29 = sub_182AD2138();
    v31 = NWCreateDispatchDataFromNSData(v29, v30);

    v32 = swift_allocObject();
    *(v32 + 16) = sub_1821EC0D0;
    *(v32 + 24) = v10;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_221;
    v33 = _Block_copy(aBlock);

    nw_connection_send(v28, v31, v20, 1, v33);

    sub_181C1F2E4(v11, v13);
    sub_181C1F2E4(v11, v13);
    _Block_release(v33);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t Connection1.receiveOnce<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a1;
  v5[9] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1821AABA8, 0, 0);
}

uint64_t sub_1821AABA8()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = *(v0 + 72);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v3 = v0;
  v3[1] = sub_1821AACB8;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x4F65766965636572, 0xEF293A5F2865636ELL, sub_1821DFFF4, v2, v4);
}

uint64_t sub_1821AACB8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_181FDDC30;
  }

  else
  {
    v2 = sub_1821AADCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821AADCC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  *v5 = *(v0 + 32);
  *(v5 + 16) = v3;
  *(v5 + 17) = v4;
  *(v5 + 24) = v6;

  v7 = *(v0 + 8);

  return v7(v2, v1);
}

void sub_1821AAE5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v8, v4);
    v12 = *(v9 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1821EA748;
    *(v13 + 24) = v11;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1594;
    v14 = _Block_copy(aBlock);

    nw_connection_receive_message(v12, v14);
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821AB050(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *(a5 + 4);
  v6 = *a5;
  if (a3)
  {

    static TLV.Metadata.fromContentContext(context:isComplete:)(v9, &v19);
    v10 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v11 = v20;
      if (a2 >> 60 == 15)
      {
        v12 = 0;
      }

      else
      {
        v12 = a1;
      }

      v13 = v19;
      v14 = 0xC000000000000000;
      if (a2 >> 60 != 15)
      {
        v14 = a2;
      }

      *&v19 = v12;
      *(&v19 + 1) = v14;
      v20 = v13;
      v21 = v11 & 0x101;
      v22 = v10;
      sub_181F49B44(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
      sub_182AD34C8();
    }
  }

  v16 = v6 | (v5 << 32);
  sub_181F4B3B8();
  v17 = swift_allocError();
  if (HIDWORD(v16) <= 0xFE)
  {
    *v18 = v16;
    *(v18 + 4) = BYTE4(v16);
  }

  else
  {
    *v18 = 22;
    *(v18 + 4) = 0;
  }

  *&v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
  return sub_182AD34B8();
}

uint64_t Connection1.receive<>()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A120);
  type metadata accessor for AsyncSequenceReceive();
  v2 = swift_allocObject();
  sub_1821A6F68(sub_1821E0000, v1);

  return v2;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83AE40);
  type metadata accessor for AsyncSequenceReceive();
  v2 = swift_allocObject();
  sub_1821A6F68(sub_1821E0030, v1);

  return v2;
}

uint64_t sub_1821AB2C8(uint64_t result, uint64_t a2, uint64_t a3)
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
    *(v8 + 16) = sub_1821EA700;
    *(v8 + 24) = v6;
    v10[4] = sub_181FE4FD0;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_181D478F8;
    v10[3] = &block_descriptor_1584;
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

void sub_1821AB3F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void (*a6)(__int128 *, void *))
{
  v7 = *(a5 + 4);
  v8 = *a5;
  if (a3)
  {

    static TLV.Metadata.fromContentContext(context:isComplete:)(v11, &v20);
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      if (a2 >> 60 == 15)
      {
        v13 = 0;
      }

      else
      {
        v13 = a1;
      }

      v14 = 0xC000000000000000;
      if (a2 >> 60 != 15)
      {
        v14 = a2;
      }

      v15 = v20;
      v16 = v21 & 0x101;
      *&v20 = v13;
      *(&v20 + 1) = v14;
      v21 = v15;
      *&v22 = v16;
      *(&v22 + 1) = v12;
      sub_181F49B44(a1, a2);
      a6(&v20, 0);

      sub_1821EA708(v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1));
      return;
    }
  }

  v17 = v8 | (v7 << 32);
  sub_181F4B3B8();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = swift_allocError();
  if (HIDWORD(v17) <= 0xFE)
  {
    *v18 = v17;
    *(v18 + 4) = BYTE4(v17);
  }

  else
  {
    *v18 = 22;
    *(v18 + 4) = 0;
  }

  a6(&v20, v19);
}

void Connection1.send<A>(_:metadata:isFinal:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  swift_getWitnessTable();
  v7 = sub_1821DFF50();
  v32 = a2;
  sub_182AD1C98();
  swift_allocObject();

  sub_182AD1C88();
  v8 = sub_182AD1C68();
  v10 = v9;

  v11 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v10);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  v12 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v12 = HIDWORD(v8) - v8;
  }

LABEL_11:
  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(0, v12);
  MEMORY[0x1865D9F10]();
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v15 = v32;
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v17 = nw_content_context_create("JSON");
  *(inited + 16) = v17;
  *(inited + 24) = 1313821514;
  *(inited + 32) = 0xE400000000000000;
  *(inited + 40) = 0;
  v18 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v18, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v17, 0.5);
  *(inited + 64) = a3 & 1;
  nw_content_context_set_is_final(v17, a3 & 1);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v15 >> 62)
  {
    v19 = sub_182AD3EB8();
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v19; ++i)
    {
      v21 = MEMORY[0x1865DA790](i, v15);
      nw_content_context_set_metadata_for_protocol(v17, *(v21 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v22 = (v15 + 32);
    do
    {
      v23 = *v22++;
      nw_content_context_set_metadata_for_protocol(v17, *(v23 + 16));
      --v19;
    }

    while (v19);
  }

LABEL_22:
  v24 = *(v4 + 16);
  if (v24)
  {

    v25 = *(v24 + 16);
    sub_181F49B58(v8, v10);

    v26 = sub_182AD2138();
    v28 = NWCreateDispatchDataFromNSData(v26, v27);

    v29 = swift_allocObject();
    *(v29 + 16) = sub_1821EC0D0;
    *(v29 + 24) = v7;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_230;
    v30 = _Block_copy(aBlock);

    nw_connection_send(v25, v28, v17, 1, v30);

    sub_181C1F2E4(v8, v10);
    sub_181C1F2E4(v8, v10);
    _Block_release(v30);
    swift_setDeallocating();
    NWConnection.ContentContext.deinit();
    swift_deallocClassInstance();
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t Connection1.receiveOnce<A>()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1821ABA40, 0, 0);
}

uint64_t sub_1821ABA40()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(*(v1 + 88) + 16);
  *v2 = v0;
  v2[1] = sub_1821ABB20;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x4F65766965636572, 0xED0000292865636ELL, sub_1821E0008, v5, v3);
}

uint64_t sub_1821ABB20()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1821EC0B4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1821ABC54(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v6 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD34D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - v10;
  v12 = a2[2];
  if (v12)
  {
    (*(v8 + 16))(v11, a1, v7, v9);
    v13 = (*(v8 + 80) + 64) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = *(v4 + 80);
    *(v14 + 3) = swift_allocateMetadataPack();
    *(v14 + 4) = v6;
    *(v14 + 5) = swift_allocateWitnessTablePack();
    *(v14 + 6) = v5[3];
    *(v14 + 7) = v5[4];
    (*(v8 + 32))(&v14[v13], v11, v7);
    v15 = *(v12 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1821EA604;
    *(v16 + 24) = v14;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1574;
    v17 = _Block_copy(aBlock);

    nw_connection_receive_message(v15, v17);
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821ABEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = *(v4 + 4);
  v6 = *v4;
  if (v7)
  {
    v8 = qword_1EA837200;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = nw_content_context_copy_protocol_metadata(*(a3 + 16), *(qword_1EA8433A0 + 32));
    if (v9)
    {
      v10 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v9);
      swift_unknownObjectRelease();
      if (v10)
      {
        type metadata accessor for NWProtocolFramer.Message();
        if (swift_dynamicCastClass())
        {

          sub_182AD1C48();
          swift_allocObject();
          sub_182AD1C38();
          sub_182AD1C18();

          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
          sub_182AD34D8();
          sub_182AD34C8();
        }
      }
    }
  }

  v11 = v6 | (v5 << 32);
  sub_181F4B3B8();
  swift_allocError();
  if (HIDWORD(v11) <= 0xFE)
  {
    *v12 = v6;
    *(v12 + 4) = BYTE4(v11);
  }

  else
  {
    *v12 = 22;
    *(v12 + 4) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD34D8();
  return sub_182AD34B8();
}

uint64_t Connection1.receiveMessageOnce<A>()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(*(*v2 + 88) + 16);
  type metadata accessor for JSON.Metadata();
  v3[6] = swift_getTupleTypeMetadata2();
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1821AC2B8, 0, 0);
}

uint64_t sub_1821AC2B8()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1821AC388;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD000000000000014, 0x8000000182BDFC50, sub_1821E0010, v4, v3);
}

uint64_t sub_1821AC388()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_18209F864;
  }

  else
  {
    v2 = sub_1821AC49C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1821AC49C()
{
  v1 = v0[3];
  v2 = (v0[7] + *(v0[6] + 48));
  v3 = *v2;
  v4 = *(v2 + 1);
  (*(*(v0[5] - 8) + 32))(v0[2], v0[7]);
  *v1 = v3;
  *(v1 + 8) = v4;

  v5 = v0[1];

  return v5();
}

void sub_1821AC558(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  v7 = v5[2];
  v6 = v5[3];
  v22 = v5[4];
  v23 = v6;
  type metadata accessor for JSON.Metadata();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = sub_182AD34D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = a2[2];
  if (v13)
  {
    (*(v9 + 16))(v12, a1, v8, v10);
    v14 = (*(v9 + 80) + 64) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = *(v4 + 80);
    *(v15 + 3) = swift_allocateMetadataPack();
    *(v15 + 4) = v7;
    WitnessTablePack = swift_allocateWitnessTablePack();
    v17 = v22;
    v18 = v23;
    *(v15 + 5) = WitnessTablePack;
    *(v15 + 6) = v18;
    *(v15 + 7) = v17;
    (*(v9 + 32))(&v15[v14], v12, v8);
    v19 = *(v13 + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1821EA4E4;
    *(v20 + 24) = v15;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1564;
    v21 = _Block_copy(aBlock);

    nw_connection_receive_message(v19, v21);
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821AC814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[2] = a1;
  type metadata accessor for JSON.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v28 - v13;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a5 + 4) == 255)
  {
    v28[1] = a6;
    static JSON.Metadata.fromContentContext(context:isComplete:)(a3, &v29);
    v19 = v30;
    if (v30 == 1)
    {
      sub_181F4B3B8();
      v20 = swift_allocError();
      *v21 = 22;
      *(v21 + 4) = 0;
      v29 = v20;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      return sub_182AD34B8();
    }

    else
    {
      v26 = v29;
      sub_182AD1C48();
      swift_allocObject();
      sub_182AD1C38();
      sub_182AD1C18();

      v27 = &v14[*(TupleTypeMetadata2 + 48)];
      (*(v15 + 32))(v14, v18, a9);
      *v27 = v26 & 1;
      *(v27 + 1) = v19;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      return sub_182AD34C8();
    }
  }

  else
  {
    v23 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v24 = swift_allocError();
    *v25 = v23;
    *(v25 + 4) = BYTE4(v23);
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    sub_182AD34D8();
    return sub_182AD34B8();
  }
}

uint64_t Connection1.receive<A>()()
{
  v1 = v0;
  swift_getWitnessTable();
  type metadata accessor for AsyncSequenceReceive();
  v2 = swift_allocObject();
  sub_1821A6F68(sub_1821E0018, v1);

  return v2;
}

uint64_t sub_1821ACCB8(uint64_t result, uint64_t a2, uint64_t *a3)
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
    *(v10 + 16) = sub_1821EA488;
    *(v10 + 24) = v7;
    v12[4] = sub_181FE4FD0;
    v12[5] = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_181D478F8;
    v12[3] = &block_descriptor_1554;
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

uint64_t sub_1821ACE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void (*a6)(char *, void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a7;
  v32 = a6;
  v29[1] = a1;
  v12 = sub_182AD39B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = v29 - v18;
  v20 = *(a5 + 4);
  v21 = *a5;
  if (a3)
  {
    v30 = v12;
    v22 = qword_1EA837200;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = nw_content_context_copy_protocol_metadata(*(a3 + 16), *(qword_1EA8433A0 + 32));
    if (v23)
    {
      v24 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v23);
      swift_unknownObjectRelease();
      if (v24)
      {
        type metadata accessor for NWProtocolFramer.Message();
        if (swift_dynamicCastClass())
        {

          sub_182AD1C48();
          swift_allocObject();
          sub_182AD1C38();
          sub_182AD1C18();

          (*(*(a10 - 8) + 56))(v19, 0, 1, a10);
          v32(v19, 0);

          v12 = v30;
          return (*(v13 + 8))(v19, v12);
        }
      }
    }

    v12 = v30;
  }

  v25 = v21 | (v20 << 32);
  (*(*(a10 - 8) + 56))(v15, 1, 1, a10, v17);
  sub_181F4B3B8();
  v27 = swift_allocError();
  if (HIDWORD(v25) <= 0xFE)
  {
    *v26 = v21;
    *(v26 + 4) = BYTE4(v25);
  }

  else
  {
    *v26 = 22;
    *(v26 + 4) = 0;
  }

  v32(v15, v27);

  v19 = v15;
  return (*(v13 + 8))(v19, v12);
}

uint64_t Connection1.receiveMessage<A>()()
{
  v1 = v0;
  type metadata accessor for JSON.Metadata();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  type metadata accessor for AsyncSequenceReceive();
  v2 = swift_allocObject();
  sub_1821A6F68(sub_1821E0020, v1);

  return v2;
}

uint64_t sub_1821AD3A8(uint64_t result, uint64_t a2, uint64_t *a3)
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
    *(v10 + 16) = sub_1821EA470;
    *(v10 + 24) = v7;
    v12[4] = sub_181FE4FD0;
    v12[5] = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_181D478F8;
    v12[3] = &block_descriptor_1544;
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

uint64_t sub_1821AD548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void (*a6)(char *, void *), uint64_t a7)
{
  v29[2] = a1;
  v29[3] = a2;
  type metadata accessor for JSON.Metadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = sub_182AD39B8();
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - v16;
  if (*(a5 + 4) == 255)
  {
    v29[1] = a7;
    static JSON.Metadata.fromContentContext(context:isComplete:)(a3, &v31);
    v19 = v32;
    if (v32 != 1)
    {
      v27 = v31;
      sub_182AD1C48();
      swift_allocObject();
      sub_182AD1C38();
      sub_182AD1C18();

      v28 = &v14[*(TupleTypeMetadata2 + 48)];
      *v28 = v27 & 1;
      *(v28 + 1) = v19;
      (*(*(TupleTypeMetadata2 - 8) + 56))(v14, 0, 1, TupleTypeMetadata2);
      a6(v14, 0);
      v18 = v14;
      return (*(v12 + 8))(v18, v30);
    }

    (*(*(TupleTypeMetadata2 - 8) + 56))(v18, 1, 1, TupleTypeMetadata2);
    sub_181F4B3B8();
    v20 = swift_allocError();
    *v21 = 22;
    *(v21 + 4) = 0;
    v22 = v18;
    v23 = v20;
  }

  else
  {
    v24 = *a5 | (*(a5 + 4) << 32);
    (*(*(TupleTypeMetadata2 - 8) + 56))(v29 - v16, 1, 1, TupleTypeMetadata2, v17);
    sub_181F4B3B8();
    v20 = swift_allocError();
    *v25 = v24;
    *(v25 + 4) = BYTE4(v24);
    v22 = v18;
    v23 = v20;
  }

  a6(v22, v23);

  return (*(v12 + 8))(v18, v30);
}

void sub_1821AD918(char *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = *a1;
  v9 = sub_1821DFF50();
  v28 = a4;
  LOBYTE(v27[0]) = v8;
  type metadata accessor for NWProtocolWebSocket.Metadata();
  swift_allocObject();

  v10 = NWProtocolWebSocket.Metadata.init(opcode:)(v27);
  MEMORY[0x1865D9F10](v10);
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v11 = v28;
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v13 = nw_content_context_create("sendContext");
  *(inited + 16) = v13;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v14 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v14, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v13, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v13, 0);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v11 >> 62)
  {
    v15 = sub_182AD3EB8();
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = MEMORY[0x1865DA790](i, v11);
      nw_content_context_set_metadata_for_protocol(v13, *(v17 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v18 = (v11 + 32);
    do
    {
      v19 = *v18++;
      nw_content_context_set_metadata_for_protocol(v13, *(v19 + 16));
      --v15;
    }

    while (v15);
  }

LABEL_12:
  v20 = *(v5 + 16);
  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = *(v20 + 16);

  if (a3 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_182AD2138();
  }

  v24 = NWCreateDispatchDataFromNSData(v23, v22);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_1821EA454;
  *(v25 + 24) = v9;
  v27[4] = sub_181FE5014;
  v27[5] = v25;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_181AA4EBC;
  v27[3] = &block_descriptor_1534;
  v26 = _Block_copy(v27);

  nw_connection_send(v21, v24, v13, 1, v26);

  _Block_release(v26);
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
}

uint64_t Connection1.send<>(_:metadata:)(void *a1, unint64_t a2)
{
  v9 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  v3 = sub_182AD1C68();
  v5 = v4;

  sub_1821AD918(&v9, v3, v5, a2);
  v7 = v6;
  sub_181C1F2E4(v3, v5);
  return v7;
}

uint64_t Connection1.receiveOnce<>()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1821ADE30, 0, 0);
}

uint64_t sub_1821ADE30()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v1 = v0;
  v1[1] = sub_1821ADF20;
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x4F65766965636572, 0xED0000292865636ELL, sub_1821E0028, v3, v2);
}

uint64_t sub_1821ADF20()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1821EBE64;
  }

  else
  {
    v2 = sub_1820AC634;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1821AE034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v8, v4);
    v12 = *(v9 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1821EA450;
    *(v13 + 24) = v11;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_1527;
    v14 = _Block_copy(aBlock);

    nw_connection_receive_message(v12, v14);
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1821AE228(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (*(a5 + 4) != 255)
  {
    v12 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v13 = swift_allocError();
    *v14 = v12;
    *(v14 + 4) = BYTE4(v12);
LABEL_11:
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
    return sub_182AD34B8();
  }

  static WebSocket.Metadata.fromContentContext(context:isComplete:)(a3, &v16);
  v7 = v17;
  if (!v17)
  {
    sub_181F4B3B8();
    v13 = swift_allocError();
    *v15 = 22;
    *(v15 + 4) = 0;
    goto LABEL_11;
  }

  v8 = v16;
  if (a2 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  v10 = 0xC000000000000000;
  if (a2 >> 60 != 15)
  {
    v10 = a2;
  }

  v16 = v9;
  v17 = v10;
  v18 = v8;
  v19 = WORD1(v8);
  v20 = BYTE4(v8);
  v21 = BYTE5(v8) & 1;
  v22 = BYTE6(v8) & 1;
  v23 = v7;
  sub_181F49B44(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  return sub_182AD34C8();
}

uint64_t sub_1821AE48C(uint64_t result, uint64_t a2, uint64_t a3)
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
    *(v8 + 16) = sub_1821EA408;
    *(v8 + 24) = v6;
    v10[4] = sub_181FE4FD0;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_181D478F8;
    v10[3] = &block_descriptor_1517;
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

void sub_1821AE5B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, void (*a6)(__int128 *, void *))
{
  if (*(a5 + 4) != 255)
  {
    v13 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v17 = 0u;
    v18 = 0u;
    v14 = swift_allocError();
    *v15 = v13;
    *(v15 + 4) = BYTE4(v13);
LABEL_11:
    a6(&v17, v14);

    return;
  }

  static WebSocket.Metadata.fromContentContext(context:isComplete:)(a3, &v17);
  v9 = *(&v17 + 1);
  if (!*(&v17 + 1))
  {
    sub_181F4B3B8();
    v17 = 0u;
    v18 = 0u;
    v14 = swift_allocError();
    *v16 = 22;
    *(v16 + 4) = 0;
    goto LABEL_11;
  }

  v10 = v17;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  v12 = 0xC000000000000000;
  if (a2 >> 60 != 15)
  {
    v12 = a2;
  }

  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v10 & 0x101FFFFFF00FFLL;
  *(&v18 + 1) = v9;
  sub_181F49B44(a1, a2);
  a6(&v17, 0);
  sub_1821EA410(v17, *(&v17 + 1), v18, *(&v18 + 1));
}

void Connection1.close<>(code:reason:metadata:)(unsigned __int16 *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = sub_1821DFF50();
  v36 = a4;
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v12 = swift_allocObject();
  *(v12 + 24) = 3;
  *(v12 + 40) = 4;
  *(v12 + 42) = 0;
  *(v12 + 32) = 0;

  metadata = nw_ws_create_metadata(nw_ws_opcode_close);
  *(v12 + 16) = metadata;
  swift_beginAccess();
  *(v12 + 40) = v9;
  *(v12 + 42) = v10;
  if (!v10)
  {
    v9 = word_182AFE6EC[v9];
  }

  nw_ws_metadata_set_close_code(metadata, v9);

  MEMORY[0x1865D9F10](v14);
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v15 = v36;
  if (a3)
  {

    a3 = sub_181F76154(a2, a3);
    v34 = v16;
  }

  else
  {
    v34 = 0xF000000000000000;
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
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v18, 0);
  swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v15 >> 62)
  {
    v20 = sub_182AD3EB8();
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v20; ++i)
    {
      v22 = MEMORY[0x1865DA790](i, v15);
      nw_content_context_set_metadata_for_protocol(v18, *(v22 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = (v15 + 32);
    do
    {
      v24 = *v23++;
      nw_content_context_set_metadata_for_protocol(v18, *(v24 + 16));
      --v20;
    }

    while (v20);
  }

LABEL_17:
  v25 = *(v5 + 16);
  if (!v25)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v26 = *(v25 + 16);

  v28 = a3;
  if (v34 >> 60 == 15)
  {
    v29 = 0;
    v30 = v34;
  }

  else
  {
    v30 = v34;
    v29 = sub_182AD2138();
  }

  v31 = NWCreateDispatchDataFromNSData(v29, v27);

  v32 = swift_allocObject();
  *(v32 + 16) = sub_1821EC0D0;
  *(v32 + 24) = v11;
  aBlock[4] = sub_181FE5014;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181AA4EBC;
  aBlock[3] = &block_descriptor_243;
  v33 = _Block_copy(aBlock);

  nw_connection_send(v26, v31, v18, 1, v33);

  sub_181D9D680(v28, v30);

  _Block_release(v33);
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
}