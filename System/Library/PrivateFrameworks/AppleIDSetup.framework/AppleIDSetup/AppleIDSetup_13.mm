uint64_t MessageSessionTransport.incomingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 52);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t MessageSessionTransport.outgoingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 56);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t sub_2406AF850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a7;
  v53 = a4;
  v49 = a6;
  v50 = a3;
  v51 = a2;
  v55 = type metadata accessor for MessagePacker();
  v12 = *(v55 - 8);
  v45 = *(v12 + 64);
  MEMORY[0x28223BE20](v55);
  v14 = &v44 - v13;
  v47 = a9;
  v48 = a10;
  v46 = type metadata accessor for MessageUnpacker();
  v15 = *(v46 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v46);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v54 = &v44 - v21;
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4BE2A0);
  v23 = sub_240759AC4();
  v24 = sub_24075A5D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = a5;
    v26 = a8;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_240579000, v23, v24, "Finished registering the message session. Ready for sending/receiving messages!", v27, 2u);
    v28 = v27;
    a8 = v26;
    a5 = v25;
    MEMORY[0x245CC76B0](v28, -1, -1);
  }

  v29 = sub_24075A3D4();
  (*(*(v29 - 8) + 56))(v54, 1, 1, v29);
  v30 = v46;
  (*(v15 + 16))(v18, a5, v46);
  (*(v12 + 16))(v14, a8, v55);
  v31 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v32 = (v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v12 + 80) + v33 + 16) & ~*(v12 + 80);
  v35 = &v45[v34 + 7];
  v45 = v14;
  v36 = v35 & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = v48;
  *(v37 + 4) = v47;
  *(v37 + 5) = v38;
  (*(v15 + 32))(&v37[v31], v18, v30);
  v39 = v52;
  *&v37[v32] = v51;
  v40 = &v37[v33];
  *v40 = v49;
  *(v40 + 1) = v39;
  (*(v12 + 32))(&v37[v34], v45, v55);
  v41 = &v37[v36];
  v42 = v53;
  *v41 = v50;
  *(v41 + 1) = v42;

  sub_240602F08(0, 0, v54, &unk_240774EE8, v37);
}

uint64_t sub_2406AFC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = v15;
  v8[31] = v16;
  v8[28] = v13;
  v8[29] = v14;
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  v9 = *(v15 - 8);
  v8[32] = v9;
  v10 = *(v9 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406AFD40, 0, 0);
}

uint64_t sub_2406AFD40()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[23];
  v4 = v0[24];
  v6 = type metadata accessor for MessageUnpacker();
  MessageUnpacker.unpack(_:)(v4, v6, v1);
  v7 = v0[25];
  (*(v0[32] + 16))(v0[33], v0[35], v0[30]);
  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_2406B0310;
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[26];

  return v14(v10, v11);
}

uint64_t sub_2406B0310()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2406B0930;
  }

  else
  {
    v3 = sub_2406B0424;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2406B0424()
{
  v51 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 216);
  v6 = type metadata accessor for MessagePacker();
  v7 = MessagePacker.pack(_:)(v2, v6);
  v8 = *(v0 + 280);
  v9 = *(v0 + 240);
  v10 = *(*(v0 + 256) + 8);
  v10(*(v0 + 272), v9);
  v10(v8, v9);
  if (v1)
  {
    if (qword_27E4B5FA0 != -1)
    {
      swift_once();
    }

    v11 = sub_240759AE4();
    __swift_project_value_buffer(v11, qword_27E4BE2A0);
    v12 = v1;
    v13 = sub_240759AC4();
    v14 = sub_24075A5E4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_240579000, v13, v14, "Failed to handle incoming request with error: %@", v15, 0xCu);
      sub_2405B8A50(v16, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v16, -1, -1);
      MEMORY[0x245CC76B0](v15, -1, -1);
    }

    v19 = sub_2407595C4();
    v20 = NSErrorToOSStatus();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240765570;
    *(v0 + 144) = 0x726F727265;
    *(v0 + 152) = 0xE500000000000000;
    v22 = MEMORY[0x277D837D0];
    sub_24075A814();
    swift_getErrorValue();
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 136);
    v26 = sub_24075AE14();
    *(inited + 96) = v22;
    *(inited + 72) = v26;
    *(inited + 80) = v27;
    v7 = sub_2405BD674(inited);
    swift_setDeallocating();
    sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
  }

  else
  {
    v20 = 0;
  }

  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 192);
  v29 = sub_240759AE4();
  __swift_project_value_buffer(v29, qword_27E4BE2A0);

  v30 = sub_240759AC4();
  v31 = sub_24075A5D4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 192);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50[0] = v34;
    *v33 = 136315906;
    v35 = sub_240759F84();
    v37 = sub_2405BBA7C(v35, v36, v50);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    *(v0 + 168) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v38 = sub_24075A0E4();
    v40 = sub_2405BBA7C(v38, v39, v50);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2080;
    *(v0 + 176) = 0;
    v41 = sub_24075A0E4();
    v43 = sub_2405BBA7C(v41, v42, v50);

    *(v33 + 24) = v43;
    *(v33 + 32) = 1024;
    *(v33 + 34) = v20;
    _os_log_impl(&dword_240579000, v30, v31, "Responding to inRequest: %s with outResponse: %s, outOptions: %s, outStatus: %d", v33, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v34, -1, -1);
    MEMORY[0x245CC76B0](v33, -1, -1);
  }

  else
  {
  }

  v45 = *(v0 + 272);
  v44 = *(v0 + 280);
  v46 = *(v0 + 264);
  v47 = *(v0 + 232);
  (*(v0 + 224))(v20, 0, v7);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_2406B0930()
{
  v44 = v0;
  (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 240));
  v1 = *(v0 + 296);
  if (qword_27E4B5FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BE2A0);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to handle incoming request with error: %@", v6, 0xCu);
    sub_2405B8A50(v7, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v10 = sub_2407595C4();
  v42 = NSErrorToOSStatus();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  *(v0 + 144) = 0x726F727265;
  *(v0 + 152) = 0xE500000000000000;
  v12 = MEMORY[0x277D837D0];
  sub_24075A814();
  swift_getErrorValue();
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 136);
  v16 = sub_24075AE14();
  *(inited + 96) = v12;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  v18 = sub_2405BD674(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);

  v19 = qword_27E4B5FA0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 192);
  __swift_project_value_buffer(v2, qword_27E4BE2A0);

  v21 = sub_240759AC4();
  v22 = sub_24075A5D4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 192);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315906;
    v26 = sub_240759F84();
    v28 = sub_2405BBA7C(v26, v27, &v43);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    *(v0 + 168) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v29 = sub_24075A0E4();
    v31 = sub_2405BBA7C(v29, v30, &v43);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2080;
    *(v0 + 176) = 0;
    v32 = sub_24075A0E4();
    v34 = sub_2405BBA7C(v32, v33, &v43);

    *(v24 + 24) = v34;
    *(v24 + 32) = 1024;
    v35 = v42;
    *(v24 + 34) = v42;
    _os_log_impl(&dword_240579000, v21, v22, "Responding to inRequest: %s with outResponse: %s, outOptions: %s, outStatus: %d", v24, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v25, -1, -1);
    MEMORY[0x245CC76B0](v24, -1, -1);
  }

  else
  {

    v35 = v42;
  }

  v37 = *(v0 + 272);
  v36 = *(v0 + 280);
  v38 = *(v0 + 264);
  v39 = *(v0 + 232);
  (*(v0 + 224))(v35, 0, v18);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2406B0DF8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    v7 = sub_240759F74();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_240759F74();
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v6(v7, v8, sub_240672430, v10);
}

uint64_t sub_2406B0F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ActivatedMessageSessionTransport();
  v9 = a4 + v8[11];
  sub_2407597A4();
  *(a4 + v8[12]) = 0;
  v10 = type metadata accessor for MessageSessionTransport();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = v8[9];
  v12 = type metadata accessor for MessagePacker();
  (*(*(v12 - 8) + 32))(a4 + v11, a2, v12);
  v13 = v8[10];
  v14 = type metadata accessor for MessageUnpacker();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a3, v14);
}

Swift::Void __swiftcall ActivatedMessageSessionTransport.invalidate()()
{
  v2 = v0;
  *(v1 + *(v0 + 48)) = 1;
  [*(v1 + 8) invalidate];
  v3 = *(*(v2 - 8) + 8);

  v3(v1, v2);
}

uint64_t sub_2406B10F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_2406B111C, 0, 0);
}

uint64_t sub_2406B111C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = *(v1 + 36);
  v0[23] = *(v1 + 16);
  v0[24] = *(v1 + 24);
  v5 = type metadata accessor for MessagePacker();
  v6 = MessagePacker.pack(_:)(v3, v5);
  v0[25] = v6;
  v7 = v6;
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_2406B1238;
  v9 = v0[21];
  v10 = v0[22];

  return sub_2406B1768(v7, v9);
}

uint64_t sub_2406B1238(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v8 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = sub_2406B1704;
  }

  else
  {
    v6 = v3[25];

    v5 = sub_2406B1354;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2406B1354()
{
  v41 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[19];
  v7 = *(v0[21] + 40);
  v8 = type metadata accessor for MessageUnpacker();
  MessageUnpacker.unpack(_:)(v1, v8, v6);
  if (v2)
  {
    v9 = v2;
    v0[14] = 0x726F727265;
    v10 = v0[27];
    v0[15] = 0xE500000000000000;
    sub_24075A814();
    if (*(v10 + 16) && (v11 = v0[27], v12 = sub_2405BB338((v0 + 2)), (v13 & 1) != 0))
    {
      sub_2405BD1CC(*(v0[27] + 56) + 32 * v12, (v0 + 7));
      sub_2405BD160((v0 + 2));

      v14 = swift_dynamicCast();
      if (v14)
      {
        v15 = v0[16];
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v16 = v0[17];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v17 = v0[27];

      sub_2405BD160((v0 + 2));
      v15 = 0;
      v16 = 0;
    }

    if (qword_27E4B5FA0 != -1)
    {
      swift_once();
    }

    v18 = sub_240759AE4();
    __swift_project_value_buffer(v18, qword_27E4BE2A0);
    v19 = v2;

    v20 = sub_240759AC4();
    v21 = sub_24075A5E4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v22 = 138412546;
      v24 = v2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      *(v22 + 12) = 2080;
      if (v16)
      {
        v26 = v15;
      }

      else
      {
        v26 = 0x3E6C6C756E3CLL;
      }

      if (v16)
      {
        v27 = v16;
      }

      else
      {
        v27 = 0xE600000000000000;
      }

      v28 = sub_2405BBA7C(v26, v27, &v40);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_240579000, v20, v21, "Failed to unpack inResponse with error: %@ and inError: %s", v22, 0x16u);
      sub_2405B8A50(v23, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x245CC76B0](v39, -1, -1);
      MEMORY[0x245CC76B0](v22, -1, -1);
    }

    if (!v16)
    {
      swift_getErrorValue();
      v30 = v0[11];
      v29 = v0[12];
      v31 = v0[13];
      v15 = sub_24075AE14();
      v16 = v32;
    }

    v33 = v0[23];
    v34 = v0[24];
    type metadata accessor for ActivatedMessageSessionTransport.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v35 = v15;
    v35[1] = v16;
    swift_willThrow();

    v36 = v0[1];
  }

  else
  {
    v37 = v0[27];

    v36 = v0[1];
  }

  return v36();
}

uint64_t sub_2406B1704()
{
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2406B1768(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2406B178C, 0, 0);
}

uint64_t sub_2406B178C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v2 + 16);
  v4[3] = *(v2 + 24);
  v4[4] = v1;
  v4[5] = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD88, &qword_2407705E0);
  *v6 = v0;
  v6[1] = sub_240670EFC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x5374736163696E75, 0xEF293A5F28646E65, sub_2406B2464, v4, v7);
}

void sub_2406B18B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v12 = v3[1];
  v11 = v3[2];
  v13 = v3[3];
  v14 = sub_24075A084();
  v15 = sub_240759F54();
  (*(v7 + 16))(v10, a2, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a3 + 16);
  (*(v7 + 32))(v17 + v16, v10, v6);
  aBlock[4] = sub_2406B24B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2406AE9F0;
  aBlock[3] = &block_descriptor_39_0;
  v18 = _Block_copy(aBlock);

  [v12 sendRequestID:v14 options:0 request:v15 responseHandler:v18];
  _Block_release(v18);
}

uint64_t sub_2406B1AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A364();
  }

  else
  {
    type metadata accessor for ActivatedMessageSessionTransport.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = xmmword_24075D8E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0);
    return sub_24075A354();
  }
}

void *ActivatedMessageSessionTransport.messageSessionTemplate.getter()
{
  v0 = sub_2406B2060();
  v1 = v0;
  return v0;
}

uint64_t ActivatedMessageSessionTransport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2406B1BE0, 0, 0);
}

uint64_t sub_2406B1BE0()
{
  v1 = v0[4];
  if (*(v0[5] + *(v1 + 48)))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    type metadata accessor for ActivatedMessageSessionTransport.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v4 = xmmword_240762440;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_2405D3110;
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[2];
    v11 = v0[3];

    return sub_2406B10F8(v10, v11, v8);
  }
}

void *sub_2406B1D1C()
{
  v0 = sub_2406B2060();
  v1 = v0;
  return v0;
}

uint64_t sub_2406B1D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405CE450;

  return ActivatedMessageSessionTransport.send(_:)(a1, a2, a3);
}

void sub_2406B1DF8(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  ActivatedMessageSessionTransport.invalidate()();
}

uint64_t sub_2406B1EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for MessageUnpacker() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(type metadata accessor for MessagePacker() - 8);
  return sub_2406AF850(a1, a2, a3, a4, v4 + v12, *(v4 + v13), *(v4 + v13 + 8), v4 + ((v13 + *(v14 + 80) + 16) & ~*(v14 + 80)), v9, v10);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2406B1FF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MessageSessionTransport();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v6 + 48);
  if (v7)
  {
    v8 = *(v6 + 56);
    return v7();
  }

  return result;
}

uint64_t sub_2406B209C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_2406B20D8()
{
  sub_2406B21DC();
  if (v0 <= 0x3F)
  {
    sub_240671AA8(319, &qword_27E4B6CC0, &qword_27E4B6CC8, &qword_24075EC18);
    if (v1 <= 0x3F)
    {
      sub_240671AA8(319, qword_27E4B7280, &qword_27E4B71D0, &unk_240770200);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2406B21DC()
{
  result = qword_27E4BBA68[0];
  if (!qword_27E4BBA68[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27E4BBA68);
  }

  return result;
}

uint64_t sub_2406B2228(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for MessageSessionTransport();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MessagePacker();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for MessageUnpacker();
      if (v6 <= 0x3F)
      {
        result = sub_2407597B4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2406B2348()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup32ActivatedMessageSessionTransportV7FailureOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2406B239C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2406B23F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void sub_2406B2464(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for ActivatedMessageSessionTransport();
  sub_2406B18B0(v5, a1, v7);
}

uint64_t sub_2406B24B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAD90, &unk_240774ED0) - 8) + 80);

  return sub_2406B1AC0(a1, a2, a3);
}

uint64_t sub_2406B2558(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for MessageUnpacker() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for MessagePacker() - 8);
  v11 = (v9 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = v1[3];
  v22 = v1[2];
  v20 = *(v1 + v8);
  v12 = v1 + v9;
  v13 = *(v1 + v9);
  v14 = *(v12 + 1);
  v15 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_2405CE450;

  return sub_2406AFC58(a1, v22, v21, v1 + v7, v20, v13, v14, v1 + v11);
}

char static AISDeviceClass.current.getter@<W0>(_BYTE *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    LOBYTE(v2) = AISDeviceClass.init(rawValue:)(deviceClassNumber);
    v5 = v7;
    if (v7 == 8)
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

unint64_t AISDeviceClass.deviceName.getter()
{
  v1 = *v0;
  v2 = 0x656369766544;
  v3 = 0x615720656C707041;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 6512973;
  if (v1 != 4)
  {
    v4 = 0x565420656C707041;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 2)
  {
    v5 = 0x646F50656D6F48;
  }

  if (*v0)
  {
    v2 = 0x656E6F685069;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t AISDeviceClass.localizableKeySuffix.getter()
{
  *v0;
  *v0;
  *v0;
  *v0;
  *v0;
  sub_2405F9728();
  sub_24075A744();

  sub_24075A744();

  v1 = sub_24075A0F4();

  return v1;
}

AppleIDSetup::AISDeviceClass_optional __swiftcall AISDeviceClass.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (rawValue > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return rawValue;
  }

  if ((rawValue - 1) > 0xA)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_240775092[(rawValue - 1)];
  }

  return rawValue;
}

AppleIDSetup::AISDeviceClass __swiftcall AISDeviceClass.init(value:)(Swift::Int value)
{
  if (value < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (value > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return value;
  }

  if ((value - 1) > 0xA)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_240775092[(value - 1)];
  }

  return value;
}

AppleIDSetup::AISDeviceClass __swiftcall AISDeviceClass.init(deviceModel:)(Swift::String deviceModel)
{
  v2 = v1;
  v3 = sub_24075A084();

  v4 = GestaltProductTypeStringToDeviceClass();

  if (v4 == 100)
  {
    v6 = 4;
  }

  else
  {
    result = AISDeviceClass.init(rawValue:)(v4).value;
    v6 = v7;
    if (v7 == 8)
    {
      v6 = 0;
    }
  }

  *v2 = v6;
  return result;
}

AppleIDSetup::AISDeviceClass __swiftcall AISDeviceClass.init(deviceClass:)(AppleIDSetup::AISDeviceClass deviceClass)
{
  if ((deviceClass - 1) > 0xAu)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_240775092[(deviceClass - 1)];
  }

  return deviceClass;
}

uint64_t sub_2406B2C30()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407750A0[v1]);
  return sub_24075AED4();
}

uint64_t sub_2406B2CB8()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407750A0[v1]);
  return sub_24075AED4();
}

Swift::String __swiftcall hardwareGeneralName(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v3 = 0x565420656C707041;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BBBF0, &qword_240774EF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BBBF8, &qword_240774EF8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_240759A04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object)
  {
    goto LABEL_10;
  }

  v17 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v17 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = sub_2407599D4();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);

  sub_2407599E4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2406B3064(v11);
LABEL_10:
    v23 = 0xE800000000000000;
    goto LABEL_11;
  }

  (*(v13 + 32))(v16, v11, v12);
  v19 = sub_2407599F4();
  if (!v20)
  {
    (*(v13 + 8))(v16, v12);
    goto LABEL_10;
  }

  v21 = v19;
  v22 = v20;
  (*(v13 + 8))(v16, v12);
  v23 = v22;
  v3 = v21;
LABEL_11:
  v24 = v3;
  result._object = v23;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_2406B3064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BBBF8, &qword_240774EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall getDeviceOSVersion()()
{
  v0 = *MEMORY[0x277CBEC70];
  v1 = _CFCopySystemVersionDictionaryValue();
  if (v1)
  {
    v3 = v1;
    v4 = sub_24075A0B4();
    v6 = v5;

    v7 = [objc_opt_self() processInfo];
    [v7 operatingSystemVersion];

    v11 = sub_24075AC34();
    v12 = v8;
    MEMORY[0x245CC5E60](46, 0xE100000000000000);
    v9 = sub_24075AC34();
    MEMORY[0x245CC5E60](v9);

    MEMORY[0x245CC5E60](58, 0xE100000000000000);
    MEMORY[0x245CC5E60](v4, v6);

    v1 = v11;
    v2 = v12;
  }

  else
  {
    __break(1u);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_2406B31F8()
{
  result = qword_27E4BBC00;
  if (!qword_27E4BBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBC00);
  }

  return result;
}

unint64_t sub_2406B324C(void *a1)
{
  a1[1] = sub_240684C80();
  a1[2] = sub_240684ADC();
  result = sub_2406B3284();
  a1[3] = result;
  return result;
}

unint64_t sub_2406B3284()
{
  result = qword_27E4BBC08;
  if (!qword_27E4BBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBC08);
  }

  return result;
}

unint64_t sub_2406B32DC()
{
  result = qword_27E4BBC10;
  if (!qword_27E4BBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BBC18, &qword_240774FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBC10);
  }

  return result;
}

unint64_t sub_2406B3350()
{
  result = qword_27E4BBC20[0];
  if (!qword_27E4BBC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4BBC20);
  }

  return result;
}

uint64_t ValueIntercept.__allocating_init(dropBehavior:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ValueIntercept.init(dropBehavior:)(a1);
  return v5;
}

uint64_t sub_2406B3450@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  v6 = sub_24075A714();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_2406B352C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  v6 = sub_24075A714();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

BOOL sub_2406B3610()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075A374();
  v3 = sub_24075A714();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_2406B3450(&v10 - v6);
  v8 = (*(*(v2 - 8) + 48))(v7, 1, v2) != 1;
  (*(v4 + 8))(v7, v3);
  return v8;
}

_BYTE *ValueIntercept.init(dropBehavior:)(char *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_defaultActor_initialize();
  v4 = *(*v1 + 104);
  v5 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v6 = sub_24075A374();
  (*(*(v6 - 8) + 56))(&v1[v4], 1, 1, v6);
  v1[112] = v3;
  return v1;
}

uint64_t sub_2406B3824(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2406B386C, v1, 0);
}

uint64_t sub_2406B386C()
{
  v1 = v0[3];
  sub_2406B3F30();
  v2 = v0[3];
  v3 = *(v0[4] + 80);
  type metadata accessor for ValueIntercept();
  WitnessTable = swift_getWitnessTable();
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2406B39CC;
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x2822008A0](v7, v2, WitnessTable, 0xD000000000000012, 0x80000002407863C0, sub_2406B4264, v8, v3);
}

uint64_t sub_2406B39CC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_2406B3B00, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2406B3B18(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v4 = sub_24075A374();
  v5 = sub_24075A714();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = *(v4 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v4);
  (*(v9 + 56))(v8, 0, 1, v4);
  return sub_2406B352C(v8);
}

uint64_t sub_2406B3C48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v4 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v5 = sub_24075A374();
  v6 = sub_24075A714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(v5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v21 - v17;
  sub_2406B3450(v14);
  if ((*(v15 + 48))(v14, 1, v5) == 1)
  {
    (*(*(v4 - 8) + 8))(a1, v4);
    result = (*(v7 + 8))(v14, v6);
    v20 = 1;
  }

  else
  {
    (*(v15 + 32))(v18, v14, v5);
    (*(v15 + 56))(v11, 1, 1, v5);
    sub_2406B352C(v11);
    sub_24075A364();
    result = (*(v15 + 8))(v18, v5);
    v20 = 0;
  }

  *v22 = v20;
  return result;
}

uint64_t sub_2406B3F30()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v17[0] = v1;
  v2 = sub_24075A374();
  v3 = sub_24075A714();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v17 - v10;
  v12 = *(v2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = v17 - v14;
  sub_2406B3450(v11);
  if ((*(v12 + 48))(v11, 1, v2) == 1)
  {
    return (*(v4 + 8))(v11, v3);
  }

  (*(v12 + 32))(v15, v11, v2);
  if (v0[112])
  {
    type metadata accessor for ValueIntercept.DroppedPending();
    swift_getWitnessTable();
    v17[3] = swift_allocError();
    sub_24075A354();
    (*(v12 + 56))(v8, 1, 1, v2);
    sub_2406B352C(v8);
  }

  else
  {
    type metadata accessor for ValueIntercept.DroppedNew();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  return (*(v12 + 8))(v15, v2);
}

uint64_t ValueIntercept.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  v3 = sub_24075A714();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ValueIntercept.__deallocating_deinit()
{
  ValueIntercept.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2406B43B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

uint64_t sub_2406B4430(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  result = sub_24075A714();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ValueIntercept.waitForIntercept()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405CE450;

  return v8(a1);
}

void *_objcCodable.wrappedValue.getter()
{
  v0 = sub_2406B2060();
  v1 = v0;
  return v0;
}

BOOL static _objcCodable.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v3;
    v7 = v2;
    v8 = sub_24075A6D4();

    return v8 & 1;
  }

  return result;
}

uint64_t static _objcCodableDictionary<>.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v5 = *a2;
      swift_unknownObjectRetain();
      v3 = sub_24075A054();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = v2 == 0;
  }

  return v3 & 1;
}

uint64_t NSObject<>.into()@<X0>(void *a1@<X8>)
{
  type metadata accessor for DefaultObjcArchiver();
  result = type metadata accessor for DefaultObjcUnarchiver();
  *a1 = v1;
  return result;
}

id _customObjcCodable.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_2406B4928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DefaultObjcArchiver();
  result = type metadata accessor for DefaultObjcUnarchiver();
  *a2 = a1;
  return result;
}

id sub_2406B4960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v8 = *a1;
  type metadata accessor for _objcCodable();
  v6 = sub_2406B2060();
  *a4 = v6;

  return v6;
}

void sub_2406B49BC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  _objcCodable.wrappedValue.setter(v1);
}

uint64_t _objcCodable.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DefaultObjcArchiver();
  result = type metadata accessor for DefaultObjcUnarchiver();
  *a2 = a1;
  return result;
}

uint64_t sub_2406B4A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406B4A78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t _objcCodable.encode(to:)(void *a1, uint64_t a2)
{
  v12 = *(a2 + 16);
  type metadata accessor for _objcCodable.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_24075AC24();
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v2;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v8;
  sub_24075AF74();
  v15 = v8;
  type metadata accessor for DefaultObjcArchiver();
  type metadata accessor for DefaultObjcUnarchiver();
  type metadata accessor for _customObjcCodable();
  v14 = &protocol witness table for DefaultObjcArchiver;
  swift_getWitnessTable();
  sub_24075ABE4();

  return (*(v13 + 8))(v7, v4);
}

uint64_t _objcCodable.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for _objcCodable.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_24075AB44();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = &v13 - v6;
  type metadata accessor for DefaultObjcArchiver();
  type metadata accessor for DefaultObjcUnarchiver();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF34();
  if (!v2)
  {
    v9 = v4;
    v10 = v14;
    type metadata accessor for DefaultObjcArchiver();
    type metadata accessor for DefaultObjcUnarchiver();
    type metadata accessor for _customObjcCodable();
    v16 = &protocol witness table for DefaultObjcUnarchiver;
    swift_getWitnessTable();
    v11 = v15;
    sub_24075AAF4();
    (*(v9 + 8))(v7, v11);
    *v10 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _customObjcCodable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v8;
  sub_24075AF54();
  if (v8)
  {
    v11 = *(a2 + 24);
    v12 = (*(a3 + 16))(v10, a1, *(a2 + 16));
    if (v4)
    {
    }

    else
    {
      v14 = v12;
      v15 = v13;
      __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      sub_240618E74();
      sub_24075AD24();

      sub_2405BCD98(v14, v15);
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    sub_24075AD34();
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t _customObjcCodable<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v27 = a4;
  v28 = a3;
  v32 = a2;
  v8 = sub_24075A8C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF14();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25[1] = v12;
  v26 = a1;
  v14 = v32;
  v25[0] = v9;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_240618EC8();
  sub_24075AD04();
  v15 = v29;
  v16 = v30;
  v17 = static ObjcUnarchiver.unarchivedObject<A>(assumingType:from:backing:)(v14, v29, v30, v26, v28, v14, v27);
  v20 = v17;
  if (!v17)
  {
    swift_allocError();
    v23 = v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v23 = v14;
    sub_24075A8A4();
    (*(v25[0] + 104))(v23, *MEMORY[0x277D84170], v8);
    swift_willThrow();
    sub_2405BCD98(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v31);
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v17;
  sub_2405BCD98(v15, v16);

  v18 = v26;
  __swift_destroy_boxed_opaque_existential_1(v31);
  *a5 = v20;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t static _objcCodable<>.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a1;
  return sub_24075A014() & 1;
}

uint64_t sub_2406B54C8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static _objcCodable<>.< infix(_:_:)(a1, a2);
}

uint64_t _objcCodable.description.getter()
{
  if (!*v0)
  {
    return 7104878;
  }

  v1 = [*v0 description];
  v2 = sub_24075A0B4();

  return v2;
}

uint64_t _objcCodable.debugDescription.getter(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_24075A714();
  return sub_24075A704();
}

uint64_t _objcCodable.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v3 = *(a2 + 16);
  sub_24075A714();
  swift_getWitnessTable();
  return sub_24075A724();
}

uint64_t _objcCodable.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_24075AE64();
  _objcCodable.hash(into:)(v4, a1);
  return sub_24075AED4();
}

uint64_t sub_2406B5674(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  _objcCodable.hash(into:)(v4, a2);
  return sub_24075AED4();
}

uint64_t _objcCodableDictionary.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t _objcCodableDictionary.encode(to:)(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_24075AF54();
  if (v2)
  {
    v12[0] = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v12];
    v5 = v12[0];
    if (v4)
    {
      v6 = sub_2407596C4();
      v8 = v7;

      v12[0] = v6;
      v12[1] = v8;
      __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      sub_240618E74();
      sub_24075AD24();
      swift_unknownObjectRelease();
      sub_2405BCD98(v6, v8);
    }

    else
    {
      v9 = v5;
      sub_2407595D4();

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    sub_24075AD34();
  }

  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _objcCodableDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a2;
  v6 = sub_24075A8C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF14();
  if (!v3)
  {
    v24[1] = v10;
    v25 = a1;
    v24[0] = v7;
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_240618EC8();
    sub_24075AD04();
    v12 = v27[0];
    v13 = v27[1];
    sub_2405FD8E0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240775370;
    *(inited + 32) = sub_240590794(0, &unk_27E4B8900, 0x277CBEAC0);
    *(inited + 40) = sub_240590794(0, &qword_27E4BDF20, 0x277CCACA8);
    *(inited + 48) = sub_240590794(0, &qword_27E4B8910, 0x277CCABB0);
    *(inited + 56) = sub_240590794(0, &unk_27E4B8920, 0x277CBEA60);
    *(inited + 64) = sub_240590794(0, &unk_27E4BBE40, 0x277CBEAA8);
    *(inited + 72) = sub_240590794(0, &unk_27E4B8930, 0x277CBEA90);
    *(inited + 80) = sub_240590794(0, &qword_27E4BBE50, 0x277CBEB98);
    *(inited + 88) = sub_240590794(0, &qword_27E4BBE58, 0x277CBEB70);
    *(inited + 96) = sub_240590794(0, &unk_27E4BBE60, 0x277CBEB68);
    *(inited + 104) = sub_240590794(0, &qword_27E4B8918, 0x277CBEBC0);
    sub_240590794(0, qword_27E4BBE70, 0x277CCAAC8);
    sub_2406B5EA4(inited);

    sub_24075A614();
    v17 = v13;
    v18 = v12;

    if (v27[3])
    {
      v19 = v26;
      if (swift_dynamicCast())
      {
        v20 = v28[7];
        swift_unknownObjectRetain();
        sub_2405BCD98(v18, v17);
        swift_unknownObjectRelease();
        v15 = v25;
        __swift_destroy_boxed_opaque_existential_1(v28);
        *a3 = v20;
        return __swift_destroy_boxed_opaque_existential_1(v15);
      }
    }

    else
    {
      sub_24065CE64(v27);
      v19 = v26;
    }

    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v22 = v19;
    sub_24075A8A4();
    (*(v24[0] + 104))(v22, *MEMORY[0x277D84170], v6);
    swift_willThrow();
    sub_2405BCD98(v18, v17);
    __swift_destroy_boxed_opaque_existential_1(v28);
    a1 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406B5EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2406B81AC(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8940, &qword_240767DC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC088, &unk_2407758C0);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2406B81AC((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2406B5FEC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static _objcCodableDictionary<>.== infix(_:_:)(a1, a2);
}

uint64_t _objcCodableDictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v3 = *(a2 + 16);
  sub_24075A714();
  return sub_24075A724();
}

uint64_t _objcCodableDictionary<>.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_24075AE64();
  v4 = *(a1 + 16);
  sub_24075A714();
  sub_24075A724();
  return sub_24075AED4();
}

uint64_t sub_2406B60D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_24075AE64();
  _objcCodableDictionary<>.hash(into:)(v6, a2);
  return sub_24075AED4();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2406B6208()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2406B6244()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2406B6280()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id static AISAppleIDSetupError.createError(code:message:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC090, &qword_2407758D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240762420;
  v7 = *MEMORY[0x277CCA460];
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v8;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v9 = *MEMORY[0x277CCA068];
  *(inited + 64) = sub_24075A0B4();
  *(inited + 72) = v10;
  *(inited + 80) = a2;
  *(inited + 88) = a3;
  swift_bridgeObjectRetain_n();
  v11 = sub_2405BD358(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC098, &qword_2407758D8);
  swift_arrayDestroy();
  v12 = qword_2407759D0[v5];
  sub_2405BA110(v11);

  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v14 = sub_24075A084();
  v15 = sub_240759F54();

  v16 = [v13 initWithDomain:v14 code:v12 userInfo:v15];

  return v16;
}

uint64_t static AISAppleIDSetupError.reason(_:)(void *a1)
{
  v2 = [a1 userInfo];
  v3 = sub_240759F74();

  v4 = *MEMORY[0x277CCA068];
  v5 = sub_24075A0B4();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v7 = sub_2405BB37C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_2405BD1CC(*(v3 + 56) + 32 * v7, v22);

  if (swift_dynamicCast())
  {
    return v21;
  }

LABEL_7:
  v10 = [a1 userInfo];
  v11 = sub_240759F74();

  v12 = *MEMORY[0x277CCA460];
  v13 = sub_24075A0B4();
  if (!*(v11 + 16))
  {

    goto LABEL_12;
  }

  v15 = sub_2405BB37C(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_2405BD1CC(*(v11 + 56) + 32 * v15, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v19 = [a1 debugDescription];
    v18 = sub_24075A0B4();

    return v18;
  }

  return v21;
}

AppleIDSetup::AISAppleIDSetupError_optional __swiftcall AISAppleIDSetupError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= -1003)
  {
    if (rawValue == -1101)
    {
      *v1 = 4;
      return rawValue;
    }

    if (rawValue == -1100)
    {
      *v1 = 3;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == -1000)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue == -1001)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != -1002)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_2406B6780()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407759D0[v1]);
  return sub_24075AED4();
}

uint64_t sub_2406B6808()
{
  v1 = *v0;
  sub_24075AE64();
  MEMORY[0x245CC6BA0](qword_2407759D0[v1]);
  return sub_24075AED4();
}

unint64_t sub_2406B6878()
{
  result = qword_27E4BC0A0;
  if (!qword_27E4BC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0A0);
  }

  return result;
}

uint64_t static SymptomReport.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  return sub_2406B7F50(v2, v3);
}

AISSymptomReport __swiftcall SymptomReport.into()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v4 + 16);
  if (v5)
  {
    v25 = v0[2];
    v26 = v0[1];
    v27 = *v0;
    v28 = MEMORY[0x277D84F90];
    v6 = sub_24075A934();
    v10 = 0;
    v11 = (v4 + 120);
    while (v10 < *(v4 + 16))
    {
      v19 = *(v11 - 1);
      if (v19 <= 4)
      {
        v12 = qword_240775CD0[v19];
      }

      else
      {
        v12 = 0;
      }

      ++v10;
      v13 = *(v11 - 11);
      v14 = *(v11 - 10);
      v15 = *v11;
      v11 += 96;
      v16 = objc_allocWithZone(AISSymptom);
      v17 = sub_24075A084();
      [v16 initWithAltDSID:v17 priority:v15 problemFlag:v12 errorInfo:sub_24075AD74()];
      swift_unknownObjectRelease();

      sub_24075A914();
      v18 = *(v28 + 16);
      sub_24075A944();
      sub_24075A954();
      v6 = sub_24075A924();
      if (v5 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v20 = SymptomReport.combinedLegacyProblemFlags.getter();
    v21 = objc_allocWithZone(AISSymptomReport);
    v22 = sub_24075A084();
    sub_240642600();
    v23 = sub_24075A2B4();

    v24 = [v21 initWithAltDSID:v22 symptoms:v23 combinedProblemFlags:v20];

    v6 = v24;
  }

  result._combinedProblemFlags = v9;
  result._symptoms = v8;
  result._altDSID = v7;
  result.super.isa = v6;
  return result;
}

uint64_t SymptomReport.altDSID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SymptomReport.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
}

uint64_t SymptomReport.unorderedSymptoms.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = sub_24061CAF0(v3);

  return v4;
}

unint64_t SymptomReport.allSymptomKinds.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = sub_2406B8B48();

  result = MEMORY[0x245CC6270](v3, &type metadata for Symptom.Kind, v4);
  v12 = result;
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v2 + 112);
    while (v7 < *(v2 + 16))
    {
      ++v7;
      v9 = *v8;
      v8 += 12;
      sub_240669184(v9);
      sub_240666068(&v11, v9);
      result = sub_240669194(v11);
      if (v6 == v7)
      {
        v10 = v12;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = result;
LABEL_7:

    return v10;
  }

  return result;
}

uint64_t SymptomReport.combinedLegacyProblemFlags.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = sub_2406B8B48();

  result = MEMORY[0x245CC6270](v3, &type metadata for Symptom.Kind, v4);
  v20 = result;
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v2 + 112);
    while (v7 < *(v2 + 16))
    {
      ++v7;
      v9 = *v8;
      v8 += 12;
      sub_240669184(v9);
      sub_240666068(&v19, v9);
      result = sub_240669194(v19);
      if (v6 == v7)
      {
        v10 = v20;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v10 = result;
LABEL_7:

    v11 = 0;
    v12 = 0;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v10 + 56);
    while (v15)
    {
LABEL_17:
      v18 = *(*(v10 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v15)))));
      if (v18 <= 4)
      {
        v16 = qword_240775CD0[v18];
      }

      else
      {
        v16 = 0;
      }

      v15 &= v15 - 1;
      v12 |= v16;
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= ((v13 + 63) >> 6))
      {

        return v12;
      }

      v15 = *(v10 + 56 + 8 * v17);
      ++v11;
      if (v15)
      {
        v11 = v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SymptomReport.init(altDSID:symptoms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_2406B6ED4(a3);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = result;
  a4[3] = v8;
  return result;
}

uint64_t sub_2406B6ED4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_2406B7EC0(*(a1 + 16), 0);
    v4 = sub_2406B8908(&v9, v3 + 32, v2, a1);

    sub_24066B6F8();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v5 = sub_2406B8640();
  v6 = sub_2406B8648(v3, 0, 1, v5);
  v7 = *(v3 + 2);

  if (v7 <= 0xF)
  {

    return 0;
  }

  return v6;
}

double SymptomReport.combine(with:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  v7 = *v2;
  v6 = v2[1];
  v8 = v7 == *a1 && v6 == a1[1];
  if (v8 || (sub_24075ACF4() & 1) != 0)
  {
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v5;
    a2[3] = v4;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

unint64_t sub_2406B7074()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x44495344746C61;
  }

  *v0;
  return result;
}

uint64_t sub_2406B70B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44495344746C61 && a2 == 0xE700000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789140 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2406B7198(uint64_t a1)
{
  v2 = sub_2406B8B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406B71D4(uint64_t a1)
{
  v2 = sub_2406B8B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymptomReport.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0B0, &qword_2407759F8);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406B8B9C();
  sub_24075AF74();
  LOBYTE(v17) = 0;
  sub_24075ABB4();
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0C0, &qword_240775A00);
    sub_2406B8BF0(&qword_27E4BC0C8, sub_2405F5858);
    sub_24075ABE4();
  }

  return (*(v16 + 8))(v7, v4);
}

uint64_t SymptomReport.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  sub_24075A114();

  return sub_2405ED470(a1, v5);
}

uint64_t SymptomReport.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ED470(v5, v3);
  return sub_24075AED4();
}

uint64_t SymptomReport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0D0, &qword_240775A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406B8B9C();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC0C0, &qword_240775A00);
  v19 = 1;
  sub_2406B8BF0(&qword_27E4BC0D8, sub_2405F5900);
  sub_24075AAF4();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406B7724(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  return sub_2406B7F50(v2, v3);
}

uint64_t sub_2406B779C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ED470(v5, v3);
  return sub_24075AED4();
}

uint64_t sub_2406B7800(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  sub_24075A114();

  return sub_2405ED470(a1, v5);
}

uint64_t sub_2406B7844()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ED470(v5, v3);
  return sub_24075AED4();
}

unint64_t SymptomReport.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  strcpy(v24, "SymptomReport(");
  HIBYTE(v24[1]) = -18;
  *&v25[0] = v2;
  *(&v25[0] + 1) = v1;
  memset(&v25[1], 0, 64);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v25[0];
  v20 = 0u;

  v5 = IdMSAccount.ID.description.getter();
  v7 = v6;
  sub_240618468(v25);
  MEMORY[0x245CC5E60](v5, v7);

  MEMORY[0x245CC5E60](44, 0xE100000000000000);
  v8 = *(v4 + 16);
  v9 = sub_2406B8B48();

  result = MEMORY[0x245CC6270](v8, &type metadata for Symptom.Kind, v9);
  *&v19 = result;
  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v4 + 112);
    while (v12 < *(v4 + 16))
    {
      ++v12;
      v14 = *v13;
      v13 += 12;
      sub_240669184(v14);
      sub_240666068(&v18, v14);
      result = sub_240669194(v18);
      if (v11 == v12)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v15 = sub_24075A544();
    v17 = v16;

    MEMORY[0x245CC5E60](v15, v17);

    MEMORY[0x245CC5E60](41, 0xE100000000000000);
    return v24[0];
  }

  return result;
}

unint64_t SymptomReport.debugDescription.getter()
{
  v1 = *(v0 + 3);
  v7 = *v0;
  v8 = *(v0 + 2);
  v2 = SymptomReport.description.getter();
  v3 = sub_2406B8C68(v1);
  v5 = v4;

  MEMORY[0x245CC5E60](v3, v5);

  return v2;
}

unint64_t sub_2406B7B08()
{
  v1 = *(v0 + 3);
  v7 = *v0;
  v8 = *(v0 + 2);
  v2 = SymptomReport.description.getter();
  v3 = sub_2406B8C68(v1);
  v5 = v4;

  MEMORY[0x245CC5E60](v3, v5);

  return v2;
}

uint64_t sub_2406B7BCC(uint64_t a1, uint64_t (*a2)(unint64_t *))
{
  v4 = a1;
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];

    sub_2406B81CC(0, v6, 0);
    v8 = 112;
    v7 = v15;
    do
    {
      v9 = *(v5 + v8);
      sub_240669184(v9);
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2406B81CC((v10 > 1), v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v9;
      v8 += 96;
      --v6;
    }

    while (v6);
  }

  v15 = v4;
  MEMORY[0x28223BE20](a1);
  v14[2] = &v15;
  v12 = sub_2406B7E20(a2, v14, v7);

  return v12 & 1;
}

BOOL SymptomReport.requiresMissingServicesRepair.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];

    sub_2406B81CC(0, v2, 0);
    v4 = 112;
    v3 = v15;
    do
    {
      v5 = *(v1 + v4);
      sub_240669184(v5);
      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2406B81CC((v6 > 1), v7 + 1, 1);
      }

      *(v15 + 16) = v7 + 1;
      *(v15 + 8 * v7 + 32) = v5;
      v4 += 96;
      --v2;
    }

    while (v2);
  }

  v8 = *(v3 + 16);
  v9 = 32;
  do
  {
    v10 = v8;
    if (v8-- == 0)
    {
      break;
    }

    v12 = *(v3 + v9);
    v9 += 8;
  }

  while (v12 < 5);
  v13 = v10 != 0;

  return v13;
}

uint64_t sub_2406B7E20(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_240669184(v9);
      v10 = a1(&v12);
      sub_240669194(v12);
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

void *sub_2406B7EC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC120, &qword_240775CB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_2406B7F50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v20 = v2;
  v21 = v3;
  v5 = (a1 + 32);
  v6 = v4 - 1;
  for (i = (a2 + 120); ; i += 96)
  {
    v8 = v5[3];
    v18[2] = v5[2];
    v18[3] = v8;
    *v19 = v5[4];
    *&v19[9] = *(v5 + 73);
    v9 = v5[1];
    v18[0] = *v5;
    v18[1] = v9;
    v10 = *(i - 1);
    v11 = *i;
    if (v18[0] != *(i - 88) && (sub_24075ACF4() & 1) == 0)
    {
      break;
    }

    v12 = *&v19[16];
    if (*&v19[16] <= 1)
    {
      if (!*&v19[16])
      {
        if (v10)
        {
          sub_240669184(v10);
          v16 = 0;
          goto LABEL_34;
        }

LABEL_22:
        sub_2405F1048(v18, v17);
        sub_240669194(v12);
        sub_240669194(v12);
        goto LABEL_23;
      }

      if (*&v19[16] == 1)
      {
        if (v10 != 1)
        {
          sub_240669184(v10);
          v16 = 1;
          goto LABEL_34;
        }

        goto LABEL_22;
      }
    }

    else
    {
      switch(*&v19[16])
      {
        case 2:
          if (v10 != 2)
          {
            sub_240669184(v10);
            v16 = 2;
            goto LABEL_34;
          }

          goto LABEL_22;
        case 3:
          if (v10 != 3)
          {
            sub_240669184(v10);
            v16 = 3;
            goto LABEL_34;
          }

          goto LABEL_22;
        case 4:
          if (v10 != 4)
          {
            sub_240669184(v10);
            v16 = 4;
LABEL_34:
            sub_240669194(v16);
            sub_240669194(v10);
            return 0;
          }

          goto LABEL_22;
      }
    }

    if (v10 < 5)
    {
      sub_240669184(v10);
      sub_240669184(v12);
      v16 = v12;
      goto LABEL_34;
    }

    sub_2405F1048(v18, v17);
    sub_240669184(v10);
    sub_240669184(v12);
    v14 = sub_240753B98(v12, v10);
    sub_240669194(v12);
    sub_240669194(v10);
    if ((v14 & 1) == 0)
    {
      sub_2405F10A4(v18);
      return 0;
    }

LABEL_23:
    v13 = v19[24];
    sub_2405F10A4(v18);
    if (v13 != v11)
    {
      return 0;
    }

    if (!v6)
    {
      return 1;
    }

    --v6;
    v5 += 6;
  }

  return 0;
}

char *sub_2406B818C(char *a1, int64_t a2, char a3)
{
  result = sub_2406B820C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B81AC(char *a1, int64_t a2, char a3)
{
  result = sub_2406B8310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B81CC(char *a1, int64_t a2, char a3)
{
  result = sub_2406B8414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B81EC(char *a1, int64_t a2, char a3)
{
  result = sub_2406B8520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2406B820C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC130, &qword_240775CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2406B8310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC128, &qword_240775CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2406B8414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC110, &qword_240775CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2406B8520(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC108, &qword_240775CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2406B8648(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x245CC56D0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x245CC56E0](v8, a4);
    sub_2406B86C8(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_2406B8718(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v33 = result;
  if (!a2)
  {
    return result;
  }

  if (a2 < 0)
  {
    goto LABEL_24;
  }

  v7 = 0;
  while (1)
  {
    v8 = (v33 + 96 * v7);
    v9 = v8[1];
    v31[0] = *v8;
    v31[1] = v9;
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    *&v32[9] = *(v8 + 73);
    v31[3] = v11;
    *v32 = v12;
    v31[2] = v10;
    v13 = *a3;
    sub_24075AE64();
    v14 = *&v32[16];
    sub_2405F1048(v31, v25);
    sub_24075A114();
    if (v14 <= 1)
    {
      if (!v14)
      {
        v15 = 0;
        goto LABEL_16;
      }

      if (v14 == 1)
      {
        v15 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          v15 = 2;
          goto LABEL_16;
        case 3:
          v15 = 3;
          goto LABEL_16;
        case 4:
          v15 = 5;
LABEL_16:
          MEMORY[0x245CC6BA0](v15);
          goto LABEL_17;
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C(v30, v14);
LABEL_17:
    sub_24075AE94();
    result = sub_24075AED4();
    v16 = 1 << *a3;
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v17)
    {
      break;
    }

    v19 = v18 & result;
    v20 = sub_240759984();
    v22 = v21;
    v24 = v23;
    sub_2405F10A4(v31);
    v25[0] = a3;
    v25[1] = a4;
    v25[2] = v19;
    v26 = v20;
    v27 = v22;
    v28 = v24;
    v29 = 0;
    while (v26)
    {
      sub_2407599A4();
    }

    result = sub_240759994();
    if (++v7 == a2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_2406B8908(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 96 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v26[0] = *v18;
      v26[1] = v19;
      v21 = v18[3];
      v20 = v18[4];
      v22 = v18[2];
      *&v27[9] = *(v18 + 73);
      v26[3] = v21;
      *v27 = v20;
      v26[2] = v22;
      memmove(v11, v18, 0x59uLL);
      if (v14 == v10)
      {
        sub_2405F1048(v26, v25);
        goto LABEL_24;
      }

      v11 += 96;
      sub_2405F1048(v26, v25);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2406B8A9C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  return sub_240753B98() & 1;
}

unint64_t sub_2406B8B48()
{
  result = qword_27E4BC0A8;
  if (!qword_27E4BC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0A8);
  }

  return result;
}

unint64_t sub_2406B8B9C()
{
  result = qword_27E4BC0B8;
  if (!qword_27E4BC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0B8);
  }

  return result;
}

uint64_t sub_2406B8BF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BC0C0, &qword_240775A00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2406B8C68(uint64_t a1)
{
  v25 = 91;
  v26 = 0xE100000000000000;
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 80);
    v22 = *(a1 + 64);
    v23 = v3;
    v24[0] = *(a1 + 96);
    *(v24 + 9) = *(a1 + 105);
    v4 = *(a1 + 48);
    v20 = *(a1 + 32);
    v21 = v4;
    sub_2405F1048(&v20, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC118, &qword_240775CB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240765570;
    *(v5 + 56) = &type metadata for Symptom;
    v6 = swift_allocObject();
    *(v5 + 32) = v6;
    v7 = v23;
    v6[3] = v22;
    v6[4] = v7;
    v6[5] = v24[0];
    *(v6 + 89) = *(v24 + 9);
    v8 = v21;
    v6[1] = v20;
    v6[2] = v8;
    sub_2405F1048(&v20, v19);
    sub_24075A7E4();
    sub_2405F10A4(&v20);

    v9 = v1 - 1;
    if (v1 != 1)
    {
      v10 = (a1 + 128);
      do
      {
        v11 = v10[3];
        v22 = v10[2];
        v23 = v11;
        v24[0] = v10[4];
        *(v24 + 9) = *(v10 + 73);
        v12 = *v10;
        v13 = v10[1];
        v10 += 6;
        v20 = v12;
        v21 = v13;
        sub_2405F1048(&v20, v19);
        MEMORY[0x245CC5E60](8236, 0xE200000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC118, &qword_240775CB0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_240765570;
        *(v14 + 56) = &type metadata for Symptom;
        v15 = swift_allocObject();
        *(v14 + 32) = v15;
        v16 = v23;
        v15[3] = v22;
        v15[4] = v16;
        v15[5] = v24[0];
        *(v15 + 89) = *(v24 + 9);
        v17 = v21;
        v15[1] = v20;
        v15[2] = v17;
        sub_2405F1048(&v20, v19);
        sub_24075A7E4();
        sub_2405F10A4(&v20);

        --v9;
      }

      while (v9);
    }
  }

  MEMORY[0x245CC5E60](93, 0xE100000000000000);
  return v25;
}

unint64_t sub_2406B8EFC(void *a1)
{
  a1[1] = sub_2405EEDE4();
  a1[2] = sub_2405EE9C8();
  result = sub_2406B8F34();
  a1[3] = result;
  return result;
}

unint64_t sub_2406B8F34()
{
  result = qword_27E4BC0E0;
  if (!qword_27E4BC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0E0);
  }

  return result;
}

unint64_t sub_2406B8F8C()
{
  result = qword_27E4BC0E8;
  if (!qword_27E4BC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0E8);
  }

  return result;
}

uint64_t sub_2406B8FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2406B9028(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2406B908C()
{
  result = qword_27E4BC0F0;
  if (!qword_27E4BC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0F0);
  }

  return result;
}

unint64_t sub_2406B90E4()
{
  result = qword_27E4BC0F8;
  if (!qword_27E4BC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC0F8);
  }

  return result;
}

unint64_t sub_2406B913C()
{
  result = qword_27E4BC100;
  if (!qword_27E4BC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC100);
  }

  return result;
}

uint64_t CUPasswordType.into(withPassword:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v5 = 1;
        result = 4;
        goto LABEL_22;
      case 2:
        v5 = 1;
        result = 6;
        goto LABEL_22;
      case 3:
        v5 = 1;
        result = 8;
        goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v5 = 2;
      result = 1;
      goto LABEL_22;
    }

    if (a2 == 8)
    {
      result = 2;
LABEL_17:
      v5 = 2;
      goto LABEL_22;
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  if (a2 == 4)
  {
    v5 = 0;
    result = 4;
    goto LABEL_22;
  }

  if (a2 != 5)
  {
    goto LABEL_16;
  }

  if (a1)
  {
    v3 = a3;
    result = sub_24075A124();
    a3 = v3;
  }

  else
  {
    result = 0;
  }

  v5 = 0;
LABEL_22:
  *a3 = result;
  *(a3 + 8) = v5;
  return result;
}

uint64_t *DiscoveryModel.CodeType.replacingUnknown(with:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 >= 2 && v3 == 0)
  {
    LOBYTE(v4) = *(result + 8);
    v3 = *result;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t DiscoveryModel.CodeType.into()()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v1 -= 4;
    if (v1 < 5)
    {
      v2 = &unk_240775D04;
      return v2[v1];
    }

    return 5;
  }

  if (*(v0 + 8) != 1)
  {
    v2 = &unk_240775CF8;
    return v2[v1];
  }

  v1 -= 4;
  if (v1 >= 5)
  {
    return 5;
  }

  v2 = &unk_240775D18;
  return v2[v1];
}

id AISChildSetupFlowResult.__allocating_init(authResponse:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISChildSetupFlowResult_authResponse] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISChildSetupFlowResult.init(authResponse:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AISChildSetupFlowResult_authResponse] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISChildSetupFlowResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISChildSetupFlowResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CBDevice.into()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24075A0B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v2 proximityServicePSM];
  v10 = [v2 nearbyActionType];
  v11 = [v2 nearbyActionFlags];
  AISDeviceClass.init(deviceClass:)([v2 nearbyActionDeviceClass]);
  result = [v2 nearbyActionExtraData];
  if (!result || (v13 = result, v14 = sub_2407596C4(), v16 = v15, v13, v17 = sub_240665E94(v14, v16), result = sub_2405BCD98(v14, v16), (v17 & 0x100) != 0))
  {
    LOBYTE(v17) = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 20) = v10;
  *(a1 + 24) = v11;
  *(a1 + 28) = v18;
  *(a1 + 29) = 0;
  *(a1 + 30) = v17;
  return result;
}

uint64_t BLEDevice.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BLEDevice.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void BLEDevice.nearbyActionPayload.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  v4 = *(v1 + 30);
  *a1 = *(v1 + 20);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 10) = v4;
}

uint64_t BLEDevice.nearbyActionPayload.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 8);
  v4 = *(result + 10);
  *(v1 + 20) = *result;
  *(v1 + 24) = v2;
  *(v1 + 28) = v3;
  *(v1 + 30) = v4;
  return result;
}

uint64_t BLEDevice.init(identifier:proximityServicePSM:nearbyActionPayload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 1);
  v7 = *(a4 + 4);
  v8 = a4[10];
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 20) = v5;
  *(a5 + 24) = v6;
  *(a5 + 28) = v7;
  *(a5 + 30) = v8;
  return result;
}

uint64_t sub_2406B97B4()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2406B981C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406BAF9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406B9844(uint64_t a1)
{
  v2 = sub_2406BA8F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406B9880(uint64_t a1)
{
  v2 = sub_2406BA8F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BLEDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC140, &qword_240775D80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v30 = *(v1 + 8);
  v10 = *(v1 + 20);
  v22 = *(v1 + 6);
  v23 = v10;
  v11 = *(v1 + 28);
  v20 = *(v1 + 29);
  v21 = v11;
  HIDWORD(v19) = *(v1 + 30);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BA8F4();
  sub_24075AF74();
  v33 = 0;
  v13 = v24;
  sub_24075AB64();
  if (!v13)
  {
    v16 = v20;
    v15 = v21;
    v18 = v22;
    v17 = v23;
    v32 = 1;
    sub_24075AC04();
    v25 = v17;
    v26 = v18;
    v27 = v15;
    v28 = v16;
    v29 = BYTE4(v19);
    v31 = 2;
    sub_2406BA948();
    sub_24075ABE4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t BLEDevice.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 20);
  v3 = *(v0 + 6);
  v4 = *(v0 + 28);
  v5 = *(v0 + 29);
  v6 = *(v0 + 30);
  if (v0[1])
  {
    v7 = *v0;
    sub_24075AE94();
    sub_24075A114();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075AEA4();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v4]);
  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t BLEDevice.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  v5 = *(v0 + 6);
  v6 = *(v0 + 28);
  v7 = *(v0 + 29);
  v8 = *(v0 + 30);
  sub_24075AE64();
  sub_24075AE94();
  if (v2)
  {
    sub_24075A114();
  }

  sub_24075AEA4();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v6]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t BLEDevice.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC158, &qword_240775D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BA8F4();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v24[0]) = 0;
    v11 = sub_24075AA74();
    v13 = v12;
    v14 = v11;
    LOBYTE(v24[0]) = 1;
    v36 = sub_24075AB14();
    v37 = 2;
    sub_2406BA99C();
    sub_24075AAF4();
    (*(v6 + 8))(v9, v5);
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v21 = v35;
    v22 = v31;
    *v23 = v14;
    *&v23[8] = v13;
    v18 = v36;
    *&v23[16] = v36;
    v23[20] = v31;
    *&v23[24] = v32;
    v23[28] = v33;
    v23[29] = v34;
    v23[30] = v35;
    *a2 = *v23;
    *(a2 + 15) = *&v23[15];
    sub_240607D50(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v24[0] = v14;
    v24[1] = v13;
    v25 = v18;
    v26 = v22;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v21;
    return sub_2406BA9F0(v24);
  }
}

uint64_t sub_2406B9F5C()
{
  sub_24075AE64();
  BLEDevice.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2406B9FA0()
{
  sub_24075AE64();
  BLEDevice.hash(into:)();
  return sub_24075AED4();
}

uint64_t BLEDevice.NearbyActionPayload.init(type:flags:deviceClass:problemFlags:advertisementFlags:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *a5;
  *a6 = result;
  *(a6 + 4) = a2;
  *(a6 + 8) = v6;
  *(a6 + 9) = a4;
  *(a6 + 10) = v7;
  return result;
}

uint64_t BLEDevice.NearbyActionPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF04();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v6 = sub_24075AC64();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v7 = sub_24075AC74();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_240684C80();
    sub_24075AC54();
    v8 = v14;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v13 = sub_24075AC64();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_2406403B0();
    sub_24075AC54();
    v10 = v14;
    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v6;
    *(a2 + 4) = v7;
    *(a2 + 8) = v8;
    *(a2 + 9) = v13;
    *(a2 + 10) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BLEDevice.NearbyActionPayload.encode(to:)(void *a1)
{
  v3 = *(v1 + 1);
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = *v1;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF44();
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_24075AC94();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_24075ACA4();
    v12 = v4;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_240684ADC();
    sub_24075AC84();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_24075AC94();
    v12 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_240640404();
    sub_24075AC84();
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t BLEDevice.NearbyActionPayload.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = v0[8];
  v3 = *v0;
  v4 = v0[9];
  v5 = v0[10];
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t BLEDevice.NearbyActionPayload.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = v0[8];
  v3 = *v0;
  v4 = v0[9];
  v5 = v0[10];
  sub_24075AE64();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_2406BA5B4()
{
  v1 = *(v0 + 1);
  v2 = v0[8];
  v3 = *v0;
  v4 = v0[9];
  v5 = v0[10];
  sub_24075AE64();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_2406BA654()
{
  v1 = *(v0 + 1);
  v2 = v0[8];
  v3 = *v0;
  v4 = v0[9];
  v5 = v0[10];
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t sub_2406BA6C8()
{
  v1 = *(v0 + 1);
  v2 = v0[8];
  v3 = *v0;
  v4 = v0[9];
  v5 = v0[10];
  sub_24075AE64();
  sub_24075AE94();
  sub_24075AEB4();
  MEMORY[0x245CC6BA0](qword_2407760E0[v2]);
  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup9BLEDeviceV19NearbyActionPayloadV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  return qword_2407760E0[a1[8]] == qword_2407760E0[a2[8]] && a1[9] == a2[9] && a1[10] == a2[10];
}

BOOL _s12AppleIDSetup9BLEDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 29);
  v9 = *(a1 + 30);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 29);
  v16 = *(a2 + 30);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v10)
    {
      if (v4 != v11)
      {
        return 0;
      }

LABEL_12:
      v27[0] = v5;
      v28 = v6;
      v29 = v7;
      v30 = v8;
      v31 = v9;
      v22[0] = v12;
      v23 = v13;
      v24 = v14;
      v25 = v15;
      v26 = v16;
      return _s12AppleIDSetup9BLEDeviceV19NearbyActionPayloadV2eeoiySbAE_AEtFZ_0(v27, v22);
    }

    v20 = *(a1 + 24);
    v21 = *(a1 + 20);
    v18 = sub_24075ACF4();
    v17 = 0;
    if (v18)
    {
      v6 = v20;
      v5 = v21;
      if (v4 == v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v17 = 0;
    if (!v10 && v4 == v11)
    {
      goto LABEL_12;
    }
  }

  return v17;
}

unint64_t sub_2406BA8F4()
{
  result = qword_27E4BC148;
  if (!qword_27E4BC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC148);
  }

  return result;
}

unint64_t sub_2406BA948()
{
  result = qword_27E4BC150;
  if (!qword_27E4BC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC150);
  }

  return result;
}

unint64_t sub_2406BA99C()
{
  result = qword_27E4BC160;
  if (!qword_27E4BC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC160);
  }

  return result;
}

unint64_t sub_2406BAA60()
{
  result = qword_27E4BC168;
  if (!qword_27E4BC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC168);
  }

  return result;
}

unint64_t sub_2406BAAB4()
{
  result = qword_27E4BC170;
  if (!qword_27E4BC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC170);
  }

  return result;
}

unint64_t sub_2406BAB08()
{
  result = qword_27E4BC178;
  if (!qword_27E4BC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC178);
  }

  return result;
}

unint64_t sub_2406BAB60()
{
  result = qword_27E4BC180;
  if (!qword_27E4BC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC180);
  }

  return result;
}

uint64_t sub_2406BABF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406BAC48()
{
  result = qword_27E4BC188;
  if (!qword_27E4BC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC188);
  }

  return result;
}

unint64_t sub_2406BACA0()
{
  result = qword_27E4BC190;
  if (!qword_27E4BC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC190);
  }

  return result;
}

__n128 __swift_memcpy31_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_2406BAD08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 31))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2406BAD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BLEDevice.NearbyActionPayload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 11))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BLEDevice.NearbyActionPayload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_2406BAE98()
{
  result = qword_27E4BC198;
  if (!qword_27E4BC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC198);
  }

  return result;
}

unint64_t sub_2406BAEF0()
{
  result = qword_27E4BC1A0;
  if (!qword_27E4BC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC1A0);
  }

  return result;
}

unint64_t sub_2406BAF48()
{
  result = qword_27E4BC1A8;
  if (!qword_27E4BC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC1A8);
  }

  return result;
}

uint64_t sub_2406BAF9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789210 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789230 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id SimpleAgeMigrationModelExchange.modelUpdateQueue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SimpleAgeMigrationModelExchange.init(modelUpdateQueue:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SimpleAgeMigrationModelExchange.receiveModelUpdate(_:sender:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return v1();
}

uint64_t sub_2406BB160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2405DA4B0;

  return XPCSession.send<A, B>(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t XPCSession.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2406BB268, 0, 0);
}

uint64_t sub_2406BB268()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  *(v3 + 56) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2406BB364;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406BB84C, v3, v7);
}

uint64_t sub_2406BB364()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405C2BB4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2406BB4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405CE450;

  return XPCSession.send<A>(_:)(a1, a2, a3, a4);
}

uint64_t XPCSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2406BB58C, 0, 0);
}

uint64_t sub_2406BB58C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_240759C44();
  *v5 = v0;
  v5[1] = sub_2406588D4;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406BBA50, v3, v6);
}

uint64_t sub_2406BB690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = a3;
  v20[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v12 = sub_24075A374();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  (*(v13 + 16))(v20 - v15, a1, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = a6;
  *(v18 + 5) = a7;
  (*(v13 + 32))(&v18[v17], v16, v12);
  sub_240759B94();
}

uint64_t sub_2406BB85C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075A374();
  return sub_240658A74(a1, v2);
}

uint64_t sub_2406BB8C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_240759B84();
}

uint64_t sub_2406BBA50(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_2406BB8C4(a1);
}

uint64_t sub_2406BBA5C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_240759BF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240759C44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B0, &qword_2407761E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  sub_2405B044C(v21, &v20 - v14, &qword_27E4BC1B0, &qword_2407761E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v3 + 32);
    v16(v6, v15, v2);
    sub_2406BC080();
    v17 = swift_allocError();
    v16(v18, v6, v2);
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
    return sub_24075A354();
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
    return sub_24075A364();
  }
}

uint64_t XPCSession.send(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2406BBCF8, 0, 0);
}

uint64_t sub_2406BBCF8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_240759C04();
  *v3 = v0;
  v3[1] = sub_2406BBDEC;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406BC078, v1, v4);
}

uint64_t sub_2406BBDEC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405C234C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2406BBF28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1C0, &qword_2407761F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_240759B74();
}

uint64_t sub_2406BC078(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2406BBF28(a1);
}

unint64_t sub_2406BC080()
{
  result = qword_27E4B9BA0;
  if (!qword_27E4B9BA0)
  {
    sub_240759BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9BA0);
  }

  return result;
}

uint64_t sub_2406BC0D8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_240759BF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240759C04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BC1C8, &unk_240776200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  sub_2405B044C(v21, &v20 - v14, qword_27E4BC1C8, &unk_240776200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v3 + 32);
    v16(v6, v15, v2);
    sub_2406BC080();
    v17 = swift_allocError();
    v16(v18, v6, v2);
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1C0, &qword_2407761F8);
    return sub_24075A354();
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1C0, &qword_2407761F8);
    return sub_24075A364();
  }
}

uint64_t sub_2406BC3A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_2406BC428(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v7 = *(*(sub_24075A374() - 8) + 80);

  return sub_2406BB85C(a1);
}

uint64_t AppleIDSetupBaseConfig.peerDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = v1 + 32;
  v5 = *(v3 - 24);
  v6 = *(v3 - 16);
  v7 = *(v3 - 8);
  v8 = *(v3 + 6);
  v9 = *(v3 + 4);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;
  *(a1 + 30) = v8;
  *(a1 + 28) = v9;

  return sub_2406BC580(v5, v6);
}

uint64_t sub_2406BC580(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 AppleIDSetupBaseConfig.peerDevice.setter(__n128 *a1)
{
  v13 = *a1;
  v2 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u32[2];
  v3 = &a1[1].n128_i8[8];
  v4 = v5;
  v6 = *(v3 + 2);
  v8 = *(v1 + 32);
  v7 = v1 + 32;
  v9 = *(v7 - 8);
  v10 = v8 | ((*(v7 + 4) | (*(v7 + 6) << 16)) << 32);
  v11 = v3[6];
  sub_240609C84(*(v7 - 24), *(v7 - 16));
  result = v13;
  *(v7 - 24) = v13;
  *(v7 - 8) = v2;
  *(v7 + 6) = v11;
  *(v7 + 4) = v6;
  *v7 = v4;
  return result;
}

uint64_t AppleIDSetupBaseConfig.fixedPin.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AppleIDSetupBaseConfig.fixedPin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AppleIDSetupBaseConfig.targetAuthTag.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AppleIDSetupBaseConfig.targetAuthTag.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void AppleIDSetupBaseConfig.pinType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t AppleIDSetupBaseConfig.pinType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_2406BC82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a1 + 104);
  v6 = *(a1 + 112);
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = sub_2406BCC00;
  a4[1] = v8;
}

uint64_t sub_2406BC8A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  v9 = *(a2 + 112);

  *(a2 + 104) = sub_2406BCBD8;
  *(a2 + 112) = v8;
  return result;
}

uint64_t AppleIDSetupBaseConfig.stateHandler.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t AppleIDSetupBaseConfig.stateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

__n128 AppleIDSetupBaseConfig.init(queue:peerDevice:persistentPairing:reversePairing:fixedPin:targetAuthTag:advertisementFlags:pinType:stateHandler:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v25 = *a2;
  v16 = a2[1].n128_u64[0];
  v18 = a2[1].n128_u32[2];
  v17 = &a2[1].n128_i8[8];
  v19 = *(v17 + 2);
  v20 = *a10;
  v21 = *a11;
  v22 = *(a11 + 8);
  *a9 = a1;
  v23 = v17[6];
  sub_240609C84(0, 1);
  result = v25;
  *(a9 + 8) = v25;
  *(a9 + 24) = v16;
  *(a9 + 38) = v23;
  *(a9 + 36) = v19;
  *(a9 + 32) = v18;
  *(a9 + 39) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = v20;
  *(a9 + 88) = v21;
  *(a9 + 96) = v22;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t sub_2406BCAA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup9BLEDeviceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2406BCB08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2406BCB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2406BCBD8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_2406BCC00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t HandshakeCommand.Request.deviceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = v3;
  v11 = *(v1 + 72);
  v4 = v11;
  v8[0] = *(v1 + 8);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_2405B044C(v8, v7, &qword_27E4B8B08, &qword_240768590);
}

__n128 HandshakeCommand.Request.deviceInfo.setter(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  v8[2] = *(v1 + 40);
  v8[3] = v4;
  v9 = *(v1 + 72);
  v8[0] = *(v1 + 8);
  v8[1] = v3;
  sub_2405B8A50(v8, &qword_27E4B8B08, &qword_240768590);
  v5 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v7;
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 8) = v5;
  return result;
}

uint64_t HandshakeCommand.Request.selfAccountId.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405B044C(v8, &v7, &qword_27E4B6420, &qword_240768F00);
}

__n128 HandshakeCommand.Request.selfAccountId.setter(uint64_t a1)
{
  v3 = v1[8];
  v7[2] = v1[7];
  v7[3] = v3;
  v7[4] = v1[9];
  v4 = v1[6];
  v7[0] = v1[5];
  v7[1] = v4;
  sub_2405B8A50(v7, &qword_27E4B6420, &qword_240768F00);
  v5 = *(a1 + 48);
  v1[7] = *(a1 + 32);
  v1[8] = v5;
  v1[9] = *(a1 + 64);
  result = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = result;
  return result;
}

__n128 HandshakeCommand.Request.init(isKeepAlive:minSupportedVersion:maxSupportedVersion:deviceInfo:selfAccountId:accountIDsByService:)@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  sub_2405B8A50(v15, &qword_27E4B8B08, &qword_240768590);
  v11 = *a4;
  *(a7 + 24) = a4[1];
  v12 = a4[3];
  *(a7 + 40) = a4[2];
  *(a7 + 56) = v12;
  *(a7 + 72) = *(a4 + 64);
  *(a7 + 8) = v11;
  memset(v17, 0, sizeof(v17));
  sub_2405B8A50(v17, &qword_27E4B6420, &qword_240768F00);
  v13 = *(a5 + 48);
  *(a7 + 112) = *(a5 + 32);
  *(a7 + 128) = v13;
  *(a7 + 144) = *(a5 + 64);
  result = *(a5 + 16);
  *(a7 + 80) = *a5;
  *(a7 + 96) = result;
  *(a7 + 160) = a6;
  return result;
}

void HandshakeCommand.Request.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload || (type metadata accessor for V1Command.Request(0), v6 = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Request, v6))
  {
    sub_2405F5954(a1, v5);
    LOBYTE(v46) = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    sub_2405B8A50(&v42, &qword_27E4B8B08, &qword_240768590);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    sub_2405B8A50(&v53, &qword_27E4B6420, &qword_240768F00);
    sub_2406BD300(&v64);
    v7 = v73;
    *(a2 + 128) = v72;
    *(a2 + 144) = v7;
    *(a2 + 160) = v74;
    v8 = v69;
    *(a2 + 64) = v68;
    *(a2 + 80) = v8;
    v9 = v71;
    *(a2 + 96) = v70;
    *(a2 + 112) = v9;
    v10 = v65;
    *a2 = v64;
    *(a2 + 16) = v10;
    v11 = v67;
    *(a2 + 32) = v66;
    *(a2 + 48) = v11;
  }

  else
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    v30 = *a1;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v29 = *(a1 + 40);
    v17 = *(a1 + 48);
    v27 = *(a1 + 64);
    v28 = *(a1 + 56);
    v26 = *(a1 + 72);
    v75[0] = *(a1 + 73);
    *(v75 + 3) = *(a1 + 76);
    v24 = *(a1 + 88);
    v25 = *(a1 + 80);
    v23 = *(a1 + 96);
    v37 = *(a1 + 112);
    v38 = *(a1 + 104);
    v35 = *(a1 + 128);
    v36 = *(a1 + 120);
    v33 = *(a1 + 144);
    v34 = *(a1 + 136);
    v31 = *(a1 + 160);
    v32 = *(a1 + 152);
    memset(v40, 0, 65);
    sub_2405B8A50(v40, &qword_27E4B8B08, &qword_240768590);
    memset(v41, 0, sizeof(v41));
    sub_2405B8A50(v41, &qword_27E4B6420, &qword_240768F00);
    *&v42 = v12;
    *(&v42 + 1) = v13;
    *&v43 = v14;
    *(&v43 + 1) = v15;
    *&v44 = v16;
    *(&v44 + 1) = v29;
    *&v45 = v17;
    *(&v45 + 1) = v28;
    *&v46 = v27;
    BYTE8(v46) = v26;
    HIDWORD(v46) = *(v75 + 3);
    *(&v46 + 9) = v75[0];
    *&v47 = v25;
    *(&v47 + 1) = v24;
    *&v48 = v23;
    *(&v48 + 1) = v38;
    *&v49 = v37;
    *(&v49 + 1) = v36;
    *&v50 = v35;
    *(&v50 + 1) = v34;
    *&v51 = v33;
    *(&v51 + 1) = v32;
    v52 = v31;
    v57 = v46;
    v58 = v47;
    v63 = v31;
    v61 = v50;
    v62 = v51;
    v59 = v48;
    v60 = v49;
    v55 = v44;
    v56 = v45;
    v53 = v42;
    v54 = v43;
    nullsub_3(&v53);
    v18 = v62;
    *(a2 + 128) = v61;
    *(a2 + 144) = v18;
    *(a2 + 160) = v63;
    v19 = v58;
    *(a2 + 64) = v57;
    *(a2 + 80) = v19;
    v20 = v60;
    *(a2 + 96) = v59;
    *(a2 + 112) = v20;
    v21 = v54;
    *a2 = v53;
    *(a2 + 16) = v21;
    v22 = v56;
    *(a2 + 32) = v55;
    *(a2 + 48) = v22;
    *&v64 = v30;
    *(&v64 + 1) = v13;
    *&v65 = v14;
    *(&v65 + 1) = v15;
    *&v66 = v16;
    *(&v66 + 1) = v29;
    *&v67 = v17;
    *(&v67 + 1) = v28;
    *&v68 = v27;
    BYTE8(v68) = v26;
    *(&v68 + 9) = v75[0];
    HIDWORD(v68) = *(v75 + 3);
    *&v69 = v25;
    *(&v69 + 1) = v24;
    *&v70 = v23;
    *(&v70 + 1) = v38;
    *&v71 = v37;
    *(&v71 + 1) = v36;
    *&v72 = v35;
    *(&v72 + 1) = v34;
    *&v73 = v33;
    *(&v73 + 1) = v32;
    v74 = v31;
    sub_2406BD338(&v42, v39);
    sub_2406BD370(&v64);
  }
}

double sub_2406BD300(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t HandshakeCommand.Request.into()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v6;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2406BD430()
{
  v1 = *v0;
  v2 = 0x6C417065654B7369;
  v3 = 0x6E49656369766564;
  v4 = 0x6F636341666C6573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2406BD510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406C0A0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406BD538(uint64_t a1)
{
  v2 = sub_2406BF870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406BD574(uint64_t a1)
{
  v2 = sub_2406BF870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC250, &qword_240776320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v19 = v1[2];
  v20 = v9;
  v10 = *(v1 + 24);
  v11 = *(v1 + 56);
  v40 = *(v1 + 40);
  v41 = v11;
  v42 = v1[72];
  v38 = *(v1 + 8);
  v39 = v10;
  v12 = *(v1 + 9);
  v46 = *(v1 + 8);
  v47 = v12;
  v13 = *(v1 + 7);
  v44 = *(v1 + 6);
  v45 = v13;
  v43 = *(v1 + 5);
  v18 = *(v1 + 20);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BF870();
  sub_24075AF74();
  LOBYTE(v25) = 0;
  v15 = v48;
  sub_24075ABC4();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = v18;
  LOBYTE(v25) = 1;
  sub_24075ABF4();
  LOBYTE(v25) = 2;
  sub_24075ABF4();
  v35 = v40;
  v36 = v41;
  v37 = v42;
  v33 = v38;
  v34 = v39;
  v32 = 3;
  sub_2405B044C(&v38, &v25, &qword_27E4B8B08, &qword_240768590);
  sub_240602058();
  sub_24075AB94();
  v30[2] = v35;
  v30[3] = v36;
  v31 = v37;
  v30[0] = v33;
  v30[1] = v34;
  sub_2405B8A50(v30, &qword_27E4B8B08, &qword_240768590);
  v27 = v45;
  v28 = v46;
  v29 = v47;
  v25 = v43;
  v26 = v44;
  v24 = 4;
  sub_2405B044C(&v43, v23, &qword_27E4B6420, &qword_240768F00);
  sub_2406185FC();
  sub_24075AB94();
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[0] = v25;
  v23[1] = v26;
  sub_2405B8A50(v23, &qword_27E4B6420, &qword_240768F00);
  v22 = v17;
  v21 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC260, &qword_240776328);
  sub_2406BF8C4();
  sub_24075AB94();
  return MEMORY[8](v7, v3);
}

uint64_t HandshakeCommand.Request.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v12 = *(v1 + 40);
  v13 = *(v1 + 56);
  v14 = v1[72];
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v4 = *(v1 + 10);
  v5 = *(v1 + 11);
  v6 = *(v1 + 20);
  v7 = v1[1];
  v8 = v1[2];
  sub_24075AE94();
  sub_24075AE94();
  sub_24075AE94();
  sub_240601BC0();
  if (!v5)
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v6)
  {
    return sub_24075AE94();
  }

LABEL_3:
  sub_24075AE94();

  return sub_240620B44(a1, v6);
}

uint64_t HandshakeCommand.Request.hashValue.getter()
{
  sub_24075AE64();
  HandshakeCommand.Request.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t HandshakeCommand.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC270, &qword_240776330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2406BF870();
  sub_24075AF34();
  if (v2)
  {
    v67 = v2;
LABEL_5:
    v65 = 0;
    v66 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v55 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v56);
    *&v68 = v16;
    *(&v68 + 1) = v15;
    *&v69 = v14;
    *(&v69 + 1) = v13;
    *&v70 = v12;
    *(&v70 + 1) = v66;
    *&v71 = v17;
    *(&v71 + 1) = v18;
    LOBYTE(v72) = v19;
    sub_2405B8A50(&v68, &qword_27E4B8B08, &qword_240768590);
    v79 = v55;
    v80 = v65;
    v81 = v64;
    v82 = v63;
    *&v83 = v62;
    *(&v83 + 1) = v61;
    v84 = v60;
    v85 = v59;
    v86 = v58;
    v87 = v57;
    return sub_2405B8A50(&v79, &qword_27E4B6420, &qword_240768F00);
  }

  LOBYTE(v79) = 0;
  v121 = sub_24075AAD4();
  LOBYTE(v79) = 1;
  v54 = sub_24075AB04();
  LOBYTE(v79) = 2;
  v21 = sub_24075AB04();
  v67 = 0;
  v53 = v21;
  v124 = 3;
  sub_2406020F4();
  v22 = v67;
  sub_24075AAA4();
  v67 = v22;
  if (v22)
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_5;
  }

  v23 = v114;
  v49 = a2;
  v50 = v115;
  v51 = v113;
  v52 = v116;
  v66 = v117;
  v17 = v118;
  v18 = v119;
  v24 = v120;
  memset(v111, 0, sizeof(v111));
  v112 = 0;
  sub_2405B8A50(v111, &qword_27E4B8B08, &qword_240768590);
  v123 = 4;
  sub_2406186F8();
  v25 = v67;
  sub_24075AAA4();
  v67 = v25;
  if (v25)
  {
    (*(v6 + 8))(v9, v5);
    v55 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v12 = *(&v52 + 1);
    v13 = v52;
    v15 = v23;
    v19 = v24;
    v14 = v50;
    v16 = v51;
    goto LABEL_6;
  }

  v47 = v17;
  v48 = v23;
  v16 = v51;
  HIDWORD(v45) = v24;
  v46 = v18;
  v55 = v101;
  v64 = v103;
  v65 = v102;
  v62 = v105;
  v63 = v104;
  v60 = v107;
  v61 = v106;
  v58 = v109;
  v59 = v108;
  v57 = v110;
  memset(v100, 0, sizeof(v100));
  sub_2405B8A50(v100, &qword_27E4B6420, &qword_240768F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC260, &qword_240776328);
  v122 = 5;
  sub_2406BF96C();
  v26 = v67;
  sub_24075AAA4();
  v67 = v26;
  if (v26)
  {
    (*(v6 + 8))(v9, v5);
    v12 = *(&v52 + 1);
    v13 = v52;
    v17 = v47;
    v15 = v48;
    v14 = v50;
    v18 = v46;
    v19 = BYTE4(v45);
    goto LABEL_6;
  }

  v121 &= 1u;
  v27 = v121;
  (*(v6 + 8))(v9, v5);
  v28 = v99;
  LOBYTE(v68) = v27;
  v30 = v53;
  v29 = v54;
  BYTE1(v68) = v54;
  BYTE2(v68) = v53;
  v31 = v47;
  *(&v68 + 1) = v16;
  *&v69 = v48;
  v32 = v50;
  *(&v69 + 1) = v50;
  v70 = v52;
  *&v71 = v66;
  v33 = v46;
  *(&v71 + 1) = v47;
  *&v72 = v46;
  v34 = BYTE4(v45);
  BYTE8(v72) = BYTE4(v45);
  v35 = v55;
  *&v73 = v55;
  *(&v73 + 1) = v65;
  *&v74 = v64;
  *(&v74 + 1) = v63;
  *&v75 = v62;
  *(&v75 + 1) = v61;
  *&v76 = v60;
  *(&v76 + 1) = v59;
  *&v77 = v58;
  *(&v77 + 1) = v57;
  v78 = v99;
  v36 = v73;
  v37 = v49;
  *(v49 + 64) = v72;
  *(v37 + 80) = v36;
  v38 = v74;
  v39 = v75;
  v40 = v76;
  v41 = v77;
  *(v37 + 160) = v28;
  *(v37 + 128) = v40;
  *(v37 + 144) = v41;
  *(v37 + 96) = v38;
  *(v37 + 112) = v39;
  v42 = v68;
  v43 = v69;
  v44 = v71;
  *(v37 + 32) = v70;
  *(v37 + 48) = v44;
  *v37 = v42;
  *(v37 + 16) = v43;
  sub_2406BD338(&v68, &v79);
  __swift_destroy_boxed_opaque_existential_1(v56);
  LOBYTE(v79) = v121;
  BYTE1(v79) = v29;
  BYTE2(v79) = v30;
  v80 = v51;
  v81 = v48;
  v82 = v32;
  v83 = v52;
  v84 = v66;
  v85 = v31;
  v86 = v33;
  LOBYTE(v87) = v34;
  v88 = v35;
  v89 = v65;
  v90 = v64;
  v91 = v63;
  v92 = v62;
  v93 = v61;
  v94 = v60;
  v95 = v59;
  v96 = v58;
  v97 = v57;
  v98 = v28;
  return sub_2406BD370(&v79);
}

uint64_t sub_2406BE0EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v2;
  *(a1 + 160) = *(v1 + 160);
  v3 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v3;
  v4 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v4;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v6;
  type metadata accessor for V1Command.Request(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2406BE1B0()
{
  sub_24075AE64();
  HandshakeCommand.Request.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_2406BE1F4()
{
  sub_24075AE64();
  HandshakeCommand.Request.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t HandshakeCommand.Response.rejectionReason.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t HandshakeCommand.Response.rejectionReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HandshakeCommand.Response.selectedVersion.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 25) = BYTE1(result) & 1;
  return result;
}

uint64_t HandshakeCommand.Response.deviceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_2405B044C(v8, v7, &qword_27E4B8B08, &qword_240768590);
}

__n128 HandshakeCommand.Response.deviceInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v7[2] = *(v1 + 64);
  v7[3] = v3;
  v8 = *(v1 + 96);
  v4 = *(v1 + 48);
  v7[0] = *(v1 + 32);
  v7[1] = v4;
  sub_2405B8A50(v7, &qword_27E4B8B08, &qword_240768590);
  v5 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v5;
  *(v1 + 96) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  return result;
}

__n128 HandshakeCommand.Response.init(isKeepAlive:isAccepted:rejectionReason:selectedVersion:deviceInfo:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 25) = HIBYTE(a5) & 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  sub_2405B8A50(v11, &qword_27E4B8B08, &qword_240768590);
  v9 = *(a6 + 48);
  *(a7 + 64) = *(a6 + 32);
  *(a7 + 80) = v9;
  *(a7 + 96) = *(a6 + 64);
  result = *(a6 + 16);
  *(a7 + 32) = *a6;
  *(a7 + 48) = result;
  return result;
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for V1Command;
  if (EnumCaseMultiPayload == 1 && (type metadata accessor for V1Command.Response(0), v6 = swift_getEnumCaseMultiPayload(), v5 = type metadata accessor for V1Command.Response, !v6))
  {
    v8 = *(a1 + 16);
    v41 = *a1;
    v42 = v8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v22 = *(a1 + 88);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    v16 = *(a1 + 96);
    sub_2405B8A50(v24, &qword_27E4B8B08, &qword_240768590);
    v17 = v42;
    v18 = v41;
    v26[0] = v41;
    v26[1] = v42;
    *&v27 = v9;
    *(&v27 + 1) = v10;
    *&v28 = v11;
    *(&v28 + 1) = v12;
    *&v29 = v13;
    *(&v29 + 1) = v14;
    *&v30 = v15;
    *(&v30 + 1) = v22;
    v31 = v16;
    *a2 = v41;
    *(a2 + 16) = v17;
    v19 = v30;
    *(a2 + 64) = v29;
    *(a2 + 80) = v19;
    v20 = v27;
    v21 = v28;
    *(a2 + 96) = v16;
    *(a2 + 32) = v20;
    *(a2 + 48) = v21;
    v32 = v18;
    v33 = v42;
    *&v34 = v9;
    *(&v34 + 1) = v10;
    *&v35 = v11;
    *(&v35 + 1) = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
    v39 = v22;
    v40 = v16;
    sub_2406BFA58(v26, v23);
    return sub_2406BFA90(&v32);
  }

  else
  {
    sub_2405F5954(a1, v5);
    LOBYTE(v36) = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    result = sub_2405B8A50(&v32, &qword_27E4B8B08, &qword_240768590);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 81) = 0u;
  }

  return result;
}

uint64_t HandshakeCommand.Response.into()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v4;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2406BE704()
{
  v1 = *v0;
  v2 = 0x6C417065654B7369;
  v3 = 0x6F697463656A6572;
  v4 = 0x64657463656C6573;
  if (v1 != 3)
  {
    v4 = 0x6E49656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7470656363417369;
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

uint64_t sub_2406BE7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406C0C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406BE7F4(uint64_t a1)
{
  v2 = sub_2406BFE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406BE830(uint64_t a1)
{
  v2 = sub_2406BFE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Response.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC280, &qword_240776338);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v30 = v1[1];
  v10 = *(v1 + 2);
  v17 = *(v1 + 1);
  v16 = v10;
  v15[3] = v1[24];
  v15[2] = v1[25];
  v11 = *(v1 + 5);
  v27 = *(v1 + 4);
  v28 = v11;
  v29 = v1[96];
  v12 = *(v1 + 3);
  v25 = *(v1 + 2);
  v26 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406BFE84();
  sub_24075AF74();
  LOBYTE(v20) = 0;
  sub_24075ABC4();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    sub_24075ABC4();
    LOBYTE(v20) = 2;
    sub_24075AB64();
    LOBYTE(v20) = 3;
    sub_24075ABA4();
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v20 = v25;
    v21 = v26;
    v31 = 4;
    sub_2405B044C(&v25, v18, &qword_27E4B8B08, &qword_240768590);
    sub_240602058();
    sub_24075AB94();
    v18[2] = v22;
    v18[3] = v23;
    v19 = v24;
    v18[1] = v21;
    v18[0] = v20;
    sub_2405B8A50(v18, &qword_27E4B8B08, &qword_240768590);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t HandshakeCommand.Response.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v0[24];
  v6 = v0[25];
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = v0[96];
  v8 = *(v0 + 2);
  v9 = *(v0 + 3);
  sub_24075AE94();
  sub_24075AE94();
  if (v4)
  {
    sub_24075AE94();
    sub_24075A114();
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_6;
    }
  }

  sub_24075AE94();
LABEL_6:
  sub_24075AE94();
  return sub_240601BC0();
}

uint64_t HandshakeCommand.Response.hashValue.getter()
{
  sub_24075AE64();
  HandshakeCommand.Response.hash(into:)();
  return sub_24075AED4();
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC290, &qword_240776340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2406BFE84();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v69);

    LOBYTE(v53) = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    return sub_2405B8A50(&v49, &qword_27E4B8B08, &qword_240768590);
  }

  else
  {
    v12 = v6;
    LOBYTE(v49) = 0;
    v13 = v5;
    LODWORD(v40) = sub_24075AAD4();
    LOBYTE(v49) = 1;
    LODWORD(v39) = sub_24075AAD4();
    LOBYTE(v49) = 2;
    v14 = sub_24075AA74();
    v16 = v15;
    v38 = v14;
    LOBYTE(v49) = 3;
    v37 = sub_24075AAB4();
    v68 = BYTE1(v37) & 1;
    v58 = 4;
    sub_2406020F4();
    sub_24075AAA4();
    v17 = v39 & 1;
    v35 = v39 & 1;
    v36 = v40 & 1;
    (*(v12 + 8))(v9, v13);
    v18 = v59;
    v19 = v62;
    v20 = v63;
    v39 = v64;
    v40 = v61;
    v21 = v65;
    v33 = v65;
    v34 = v59;
    v30 = v66;
    v31 = v60;
    memset(v41, 0, 65);
    v29 = v67;
    sub_2405B8A50(v41, &qword_27E4B8B08, &qword_240768590);
    LOBYTE(v42) = v36;
    BYTE1(v42) = v17;
    *(&v42 + 1) = v38;
    *&v43 = v16;
    BYTE8(v43) = v37;
    v32 = v68;
    BYTE9(v43) = v68;
    v22 = v31;
    *&v44 = v18;
    *(&v44 + 1) = v31;
    *&v45 = v40;
    *(&v45 + 1) = v19;
    *&v46 = v20;
    *(&v46 + 1) = v39;
    v23 = v30;
    *&v47 = v21;
    *(&v47 + 1) = v30;
    LOBYTE(v21) = v29;
    v48 = v29;
    *(a2 + 96) = v29;
    v24 = v47;
    *(a2 + 64) = v46;
    *(a2 + 80) = v24;
    v25 = v45;
    *(a2 + 32) = v44;
    *(a2 + 48) = v25;
    v26 = v43;
    *a2 = v42;
    *(a2 + 16) = v26;
    sub_2406BFA58(&v42, &v49);
    __swift_destroy_boxed_opaque_existential_1(v69);
    LOBYTE(v49) = v36;
    BYTE1(v49) = v35;
    *(&v49 + 1) = v38;
    *&v50 = v16;
    BYTE8(v50) = v37;
    BYTE9(v50) = v32;
    *&v51 = v34;
    *(&v51 + 1) = v22;
    *&v52 = v40;
    *(&v52 + 1) = v19;
    v53 = v20;
    v54 = v39;
    v55 = v33;
    v56 = v23;
    v57 = v21;
    return sub_2406BFA90(&v49);
  }
}

uint64_t sub_2406BF054@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  v4 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v4;
  type metadata accessor for V1Command.Response(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for V1Command(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2406BF108()
{
  sub_24075AE64();
  HandshakeCommand.Response.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2406BF14C()
{
  sub_24075AE64();
  HandshakeCommand.Response.hash(into:)();
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup16HandshakeCommandO7RequestV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *(a1 + 56);
  v63[2] = *(a1 + 40);
  v63[3] = v8;
  v64 = a1[72];
  v63[0] = *(a1 + 8);
  v63[1] = v7;
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = *(a1 + 9);
  v68 = *(a1 + 8);
  v69 = v11;
  v12 = *(a1 + 7);
  v66 = v10;
  v67 = v12;
  v65 = v9;
  v13 = *(a1 + 20);
  v14 = *a2;
  v15 = a2[1];
  v71 = a2[72];
  v16 = a2[2];
  v17 = *(a2 + 24);
  v18 = *(a2 + 56);
  v70[2] = *(a2 + 40);
  v70[3] = v18;
  v70[0] = *(a2 + 8);
  v70[1] = v17;
  v19 = *(a2 + 9);
  v75 = *(a2 + 8);
  v76 = v19;
  v20 = *(a2 + 7);
  v73 = *(a2 + 6);
  v74 = v20;
  v72 = *(a2 + 5);
  if (((v4 ^ v14) & 1) == 0 && v5 == v15 && v6 == v16)
  {
    v21 = *(a2 + 20);
    v22 = v63[0];
    v23 = v70[0];
    if (*(&v63[0] + 1))
    {
      v57 = v63[0];
      v24 = *(a1 + 40);
      v58 = *(a1 + 24);
      v59 = v24;
      v60 = *(a1 + 56);
      v61[0] = a1[72];
      v54 = v24;
      v55 = v60;
      LOBYTE(v56) = v61[0];
      v52 = v63[0];
      v53 = v58;
      if (*(&v70[0] + 1))
      {
        v25 = *(a2 + 40);
        v48 = *(a2 + 24);
        v49 = v25;
        v50 = *(a2 + 56);
        LOBYTE(v51) = a2[72];
        v47 = v70[0];
        sub_2405B044C(v63, &v42, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v70, &v42, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(&v57, &v42, &qword_27E4B8B08, &qword_240768590);
        v26 = _s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(&v52, &v47);
        v39 = v49;
        v40 = v50;
        v41 = v51;
        v37 = v47;
        v38 = v48;
        sub_240602EAC(&v37);
        v44 = v54;
        v45 = v55;
        v46 = v56;
        v42 = v52;
        v43 = v53;
        sub_240602EAC(&v42);
        v47 = v22;
        v27 = *(a1 + 40);
        v48 = *(a1 + 24);
        v49 = v27;
        v50 = *(a1 + 56);
        LOBYTE(v51) = a1[72];
        sub_2405B8A50(&v47, &qword_27E4B8B08, &qword_240768590);
        if ((v26 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_13;
      }

      v28 = a2;
      v49 = v59;
      v50 = v60;
      LOBYTE(v51) = v61[0];
      v47 = v57;
      v48 = v58;
      sub_2405B044C(v63, &v42, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v70, &v42, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(&v57, &v42, &qword_27E4B8B08, &qword_240768590);
      sub_240602EAC(&v47);
    }

    else
    {
      if (!*(&v70[0] + 1))
      {
        v57 = *&v63[0];
        v32 = *(a1 + 40);
        v58 = *(a1 + 24);
        v59 = v32;
        v60 = *(a1 + 56);
        v61[0] = a1[72];
        sub_2405B044C(v63, &v52, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v70, &v52, &qword_27E4B8B08, &qword_240768590);
        sub_2405B8A50(&v57, &qword_27E4B8B08, &qword_240768590);
LABEL_13:
        v33 = v65;
        v42 = v66;
        v43 = v67;
        v44 = v68;
        v45 = v69;
        v34 = v72;
        v39 = v75;
        v40 = v76;
        v37 = v73;
        v38 = v74;
        if (*(&v65 + 1))
        {
          v57 = v65;
          v58 = v66;
          v59 = v67;
          v60 = v68;
          *v61 = v69;
          if (*(&v72 + 1))
          {
            v52 = v72;
            v53 = v73;
            v54 = v74;
            v55 = v75;
            v56 = v76;
            if (v65 == v72)
            {
              sub_2405B044C(&v65, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v72, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v57, &v47, &qword_27E4B6420, &qword_240768F00);
              v35 = 1;
            }

            else
            {
              v35 = sub_24075ACF4();
              sub_2405B044C(&v65, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v72, &v47, &qword_27E4B6420, &qword_240768F00);
              sub_2405B044C(&v57, &v47, &qword_27E4B6420, &qword_240768F00);
            }

            sub_2405B8A50(&v52, &qword_27E4B6420, &qword_240768F00);

            v47 = v33;
            v48 = v42;
            v49 = v43;
            v50 = v44;
            v51 = v45;
            sub_2405B8A50(&v47, &qword_27E4B6420, &qword_240768F00);
            if ((v35 & 1) == 0)
            {
              return 0;
            }

            if (v13)
            {
LABEL_27:
              if (!v21)
              {
                return 0;
              }

              v36 = sub_24061F8BC(v13, v21);

              return (v36 & 1) != 0;
            }

            return !v21;
          }

          sub_2405B044C(&v65, &v52, &qword_27E4B6420, &qword_240768F00);
          sub_2405B044C(&v72, &v52, &qword_27E4B6420, &qword_240768F00);
          sub_2405B044C(&v57, &v52, &qword_27E4B6420, &qword_240768F00);
        }

        else
        {
          if (!*(&v72 + 1))
          {
            v57 = v65;
            v58 = v66;
            v59 = v67;
            v60 = v68;
            *v61 = v69;
            sub_2405B044C(&v65, &v52, &qword_27E4B6420, &qword_240768F00);
            sub_2405B044C(&v72, &v52, &qword_27E4B6420, &qword_240768F00);
            sub_2405B8A50(&v57, &qword_27E4B6420, &qword_240768F00);
            if (v13)
            {
              goto LABEL_27;
            }

            return !v21;
          }

          sub_2405B044C(&v65, &v57, &qword_27E4B6420, &qword_240768F00);
          sub_2405B044C(&v72, &v57, &qword_27E4B6420, &qword_240768F00);
        }

        v57 = v33;
        v58 = v42;
        v59 = v43;
        v60 = v44;
        *v61 = v45;
        *&v61[16] = v34;
        *&v61[32] = v37;
        *&v61[48] = v38;
        *&v61[64] = v39;
        v62 = v40;
        v30 = &unk_27E4BC348;
        v31 = &unk_240776988;
LABEL_21:
        sub_2405B8A50(&v57, v30, v31);
        return 0;
      }

      v28 = a2;
      sub_2405B044C(v63, &v57, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v70, &v57, &qword_27E4B8B08, &qword_240768590);
    }

    v57 = v22;
    v29 = *(a1 + 40);
    v58 = *(a1 + 24);
    v59 = v29;
    v60 = *(a1 + 56);
    v61[0] = a1[72];
    *&v61[8] = v23;
    *&v61[24] = *(v28 + 24);
    *&v61[40] = *(v28 + 40);
    *&v61[56] = *(v28 + 56);
    v61[72] = v28[72];
    v30 = &qword_27E4B8C88;
    v31 = &unk_240768A80;
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_2406BF870()
{
  result = qword_27E4BC258;
  if (!qword_27E4BC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC258);
  }

  return result;
}

unint64_t sub_2406BF8C4()
{
  result = qword_27E4BC268;
  if (!qword_27E4BC268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BC260, &qword_240776328);
    sub_2406BFA14(&qword_27E4B6470);
    sub_2406185FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC268);
  }

  return result;
}

unint64_t sub_2406BF96C()
{
  result = qword_27E4BC278;
  if (!qword_27E4BC278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BC260, &qword_240776328);
    sub_2406BFA14(&qword_27E4B64A0);
    sub_2406186F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC278);
  }

  return result;
}

uint64_t sub_2406BFA14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s12AppleIDSetup16HandshakeCommandO8ResponseV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = a1[25];
  v9 = *(a1 + 5);
  v59[2] = *(a1 + 4);
  v59[3] = v9;
  v60 = a1[96];
  v10 = *(a1 + 3);
  v59[0] = *(a1 + 2);
  v59[1] = v10;
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  v15 = a2[24];
  v62 = a2[96];
  v16 = a2[25];
  v17 = *(a2 + 5);
  v61[2] = *(a2 + 4);
  v61[3] = v17;
  v18 = *(a2 + 3);
  v61[0] = *(a2 + 2);
  v61[1] = v18;
  if (v3 == v11 && ((v4 ^ v12) & 1) == 0)
  {
    if (v6)
    {
      if (!v14)
      {
        goto LABEL_12;
      }

      if (v5 != v13 || v6 != v14)
      {
        v19 = a1;
        v20 = a2;
        v21 = sub_24075ACF4();
        a2 = v20;
        v22 = v21;
        a1 = v19;
        if ((v22 & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    else if (v14)
    {
LABEL_12:
      v2 = 0;
      return v2 & 1;
    }

    if (v8)
    {
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v7 == v15)
      {
        v24 = v16;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        goto LABEL_12;
      }
    }

    v25 = v59[0];
    v26 = v61[0];
    if (*(&v59[0] + 1))
    {
      v49 = v59[0];
      v27 = *(a1 + 4);
      v50 = *(a1 + 3);
      v51 = v27;
      v52 = *(a1 + 5);
      v28 = a1;
      v53 = a1[96];
      v46 = v27;
      v47 = v52;
      v48 = v53;
      v44 = v59[0];
      v45 = v50;
      if (*(&v61[0] + 1))
      {
        v29 = *(a2 + 4);
        v40 = *(a2 + 3);
        v41 = v29;
        v42 = *(a2 + 5);
        v43 = a2[96];
        v39 = v61[0];
        sub_2405B044C(v59, v37, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v61, v37, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(&v49, v37, &qword_27E4B8B08, &qword_240768590);
        v2 = _s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(&v44, &v39);
        v35[2] = v41;
        v35[3] = v42;
        v36 = v43;
        v35[0] = v39;
        v35[1] = v40;
        sub_240602EAC(v35);
        v37[2] = v46;
        v37[3] = v47;
        v38 = v48;
        v37[0] = v44;
        v37[1] = v45;
        sub_240602EAC(v37);
        v39 = v25;
        v30 = *(v28 + 4);
        v40 = *(v28 + 3);
        v41 = v30;
        v42 = *(v28 + 5);
        v43 = v28[96];
        sub_2405B8A50(&v39, &qword_27E4B8B08, &qword_240768590);
        return v2 & 1;
      }

      v31 = a2;
      v41 = v51;
      v42 = v52;
      v43 = v53;
      v39 = v49;
      v40 = v50;
      sub_2405B044C(v59, v37, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v61, v37, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(&v49, v37, &qword_27E4B8B08, &qword_240768590);
      sub_240602EAC(&v39);
    }

    else
    {
      if (!*(&v61[0] + 1))
      {
        v49 = *&v59[0];
        v34 = *(a1 + 4);
        v50 = *(a1 + 3);
        v51 = v34;
        v52 = *(a1 + 5);
        v53 = a1[96];
        sub_2405B044C(v59, &v44, &qword_27E4B8B08, &qword_240768590);
        sub_2405B044C(v61, &v44, &qword_27E4B8B08, &qword_240768590);
        sub_2405B8A50(&v49, &qword_27E4B8B08, &qword_240768590);
        v2 = 1;
        return v2 & 1;
      }

      v31 = a2;
      v28 = a1;
      sub_2405B044C(v59, &v49, &qword_27E4B8B08, &qword_240768590);
      sub_2405B044C(v61, &v49, &qword_27E4B8B08, &qword_240768590);
    }

    v32 = *(v28 + 4);
    v50 = *(v28 + 3);
    v51 = v32;
    v52 = *(v28 + 5);
    v33 = *(v31 + 4);
    v55 = *(v31 + 3);
    v49 = v25;
    v53 = v28[96];
    v54 = v26;
    v56 = v33;
    v57 = *(v31 + 5);
    v58 = v31[96];
    sub_2405B8A50(&v49, &qword_27E4B8C88, &unk_240768A80);
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_2406BFE84()
{
  result = qword_27E4BC288;
  if (!qword_27E4BC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC288);
  }

  return result;
}

unint64_t sub_2406BFED8()
{
  result = qword_27E4BC298;
  if (!qword_27E4BC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC298);
  }

  return result;
}

unint64_t sub_2406BFF2C(uint64_t a1)
{
  result = sub_2406BFF54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406BFF54()
{
  result = qword_27E4BC2A0;
  if (!qword_27E4BC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2A0);
  }

  return result;
}

unint64_t sub_2406BFFA8()
{
  result = qword_27E4BC2A8;
  if (!qword_27E4BC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2A8);
  }

  return result;
}

unint64_t sub_2406BFFFC(uint64_t a1)
{
  result = sub_2406C0024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406C0024()
{
  result = qword_27E4BC2B0;
  if (!qword_27E4BC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2B0);
  }

  return result;
}

unint64_t sub_2406C00B8()
{
  result = qword_27E4BC2B8;
  if (!qword_27E4BC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2B8);
  }

  return result;
}

unint64_t sub_2406C010C()
{
  result = qword_27E4BC2C0;
  if (!qword_27E4BC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2C0);
  }

  return result;
}

unint64_t sub_2406C0160()
{
  result = qword_27E4BC2C8;
  if (!qword_27E4BC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2C8);
  }

  return result;
}

unint64_t sub_2406C01B8()
{
  result = qword_27E4BC2D0;
  if (!qword_27E4BC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2D0);
  }

  return result;
}

unint64_t sub_2406C020C(uint64_t a1)
{
  result = sub_2406C0234();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406C0234()
{
  result = qword_27E4BC2D8;
  if (!qword_27E4BC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2D8);
  }

  return result;
}

unint64_t sub_2406C0288(uint64_t a1)
{
  result = sub_2406C02B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2406C02B0()
{
  result = qword_27E4BC2E0;
  if (!qword_27E4BC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2E0);
  }

  return result;
}

uint64_t sub_2406C0344(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406C0398()
{
  result = qword_27E4BC2E8;
  if (!qword_27E4BC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2E8);
  }

  return result;
}

unint64_t sub_2406C03EC()
{
  result = qword_27E4BC2F0;
  if (!qword_27E4BC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2F0);
  }

  return result;
}

unint64_t sub_2406C0440()
{
  result = qword_27E4BC2F8;
  if (!qword_27E4BC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC2F8);
  }

  return result;
}

unint64_t sub_2406C0498()
{
  result = qword_27E4BC300;
  if (!qword_27E4BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC300);
  }

  return result;
}

unint64_t sub_2406C04F0()
{
  result = qword_27E4BC308;
  if (!qword_27E4BC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC308);
  }

  return result;
}

unint64_t sub_2406C0548()
{
  result = qword_27E4BC310;
  if (!qword_27E4BC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC310);
  }

  return result;
}

unint64_t sub_2406C059C(uint64_t a1)
{
  result = sub_2406BFFA8();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2406C0618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2406C0674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2406C0700(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2406C075C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2406C0800()
{
  result = qword_27E4BC318;
  if (!qword_27E4BC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC318);
  }

  return result;
}

unint64_t sub_2406C0858()
{
  result = qword_27E4BC320;
  if (!qword_27E4BC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC320);
  }

  return result;
}

unint64_t sub_2406C08B0()
{
  result = qword_27E4BC328;
  if (!qword_27E4BC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC328);
  }

  return result;
}

unint64_t sub_2406C0908()
{
  result = qword_27E4BC330;
  if (!qword_27E4BC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC330);
  }

  return result;
}

unint64_t sub_2406C0960()
{
  result = qword_27E4BC338;
  if (!qword_27E4BC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC338);
  }

  return result;
}

unint64_t sub_2406C09B8()
{
  result = qword_27E4BC340;
  if (!qword_27E4BC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC340);
  }

  return result;
}

uint64_t sub_2406C0A0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789250 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789270 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F636341666C6573 && a2 == 0xED00006449746E75 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240789290 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2406C0C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470656363417369 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F697463656A6572 && a2 == 0xEF6E6F736165526ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF6E6F6973726556 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2406C0E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  type metadata accessor for MachSetupMessage();
  sub_2406CCB20(&qword_27E4BB880, type metadata accessor for MachSetupMessage);
  sub_240759B84();
}

uint64_t sub_2406C1010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  type metadata accessor for MachRepairMessage();
  sub_2406CCB20(&qword_27E4B8308, type metadata accessor for MachRepairMessage);
  sub_240759B84();
}

uint64_t sub_2406C11C8()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BC350);
  v1 = __swift_project_value_buffer(v0, qword_27E4BC350);
  if (qword_27E4B5EC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8530);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2406C1298(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = qword_27E4B5F70;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_240759AE4();
    __swift_project_value_buffer(v4, qword_27E4BC350);

    v5 = sub_240759AC4();
    v6 = sub_24075A5D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315394;
      sub_240759BD4();

      v9 = sub_24075A0E4();
      v11 = sub_2405BBA7C(v9, v10, &v16);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v15 = *(v2 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB8B0, &qword_2407749F0);
      v12 = sub_24075A0E4();
      v14 = sub_2405BBA7C(v12, v13, &v16);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_240579000, v5, v6, "Repair controller session changed from %s to %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v8, -1, -1);
      MEMORY[0x245CC76B0](v7, -1, -1);
    }

    sub_240759BA4();
  }

  return result;
}

uint64_t RepairController.__allocating_init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_2406CAE2C(a1, a2, a3);

  return v9;
}

uint64_t RepairController.init(queue:endpoint:inactiveSession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2406CAE2C(a1, a2, a3);

  return v3;
}

uint64_t RepairController.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_240759BE4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = type metadata accessor for RepairController();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_2406CAE2C(0, v3, 0);
}

uint64_t sub_2406C1624()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4BC350);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_240579000, v7, v8, "Invalidating setup controller", v9, 2u);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_24060351C(0, 0, v5, &unk_240776998, v11);
}

uint64_t sub_2406C17EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2406C180C, a4, 0);
}

uint64_t sub_2406C180C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession);

  return MEMORY[0x2822009F8](sub_24069F77C, 0, 0);
}

uint64_t RepairController.deinit()
{
  v1 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BC350);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    type metadata accessor for RepairController();

    v7 = sub_24075A0E4();
    v9 = sub_2405BBA7C(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_240579000, v3, v4, "RepairController deinitialized: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  if (*(v1 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession))
  {
    v11 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession);

    sub_240759BA4();
  }

  sub_2405B8A50(v1 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  v12 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession);

  v13 = *(v1 + v10);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t RepairController.__deallocating_deinit()
{
  RepairController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2406C1AB0(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  v4 = type metadata accessor for MachRepairMessage();
  v3[65] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v6 = type metadata accessor for RepairContext();
  v3[71] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C1BB4, v2, 0);
}

uint64_t sub_2406C1BB4()
{
  v26 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = v0[73];
  v2 = v0[63];
  v3 = sub_240759AE4();
  v0[74] = __swift_project_value_buffer(v3, qword_27E4BC350);
  sub_2406CB400(v2, v1, type metadata accessor for RepairContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[73];
  if (v6)
  {
    v8 = v0[72];
    v9 = v0[71];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    sub_2406CB400(v7, v8, type metadata accessor for RepairContext);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
    v15 = sub_2405BBA7C(v12, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "Performing Apple ID Repair with context: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
  }

  v16 = v0[64];
  v17 = sub_2406C4EA0(v0[63]);
  v0[75] = v17;
  v18 = v0[69];
  v19 = v0[65];
  v21 = v0[63];
  v20 = v0[64];
  v22 = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v0[76] = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v23 = *(v20 + v22);
  *(v20 + v22) = v17;
  swift_retain_n();
  sub_2406C1298(v23);

  sub_2406CB400(v21, v18, type metadata accessor for RepairModel);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_2406C1EFC, 0, 0);
}

uint64_t sub_2406C1EFC()
{
  v1 = v0[75];
  v2 = v0[69];
  v3 = swift_task_alloc();
  v0[77] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[78] = v5;
  *v5 = v0;
  v5[1] = sub_2406C1FF0;
  v6 = v0[70];
  v7 = v0[65];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406CB398, v3, v7);
}

uint64_t sub_2406C1FF0()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v10 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = sub_2406C281C;
    v5 = 0;
  }

  else
  {
    v6 = v2[77];
    v7 = v2[69];
    v8 = v2[64];

    sub_2406CB3A0(v7, type metadata accessor for MachRepairMessage);
    v4 = sub_2406C2138;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2406C2138()
{
  v86 = v0;
  v1 = *(v0 + 520);
  sub_2406CB400(*(v0 + 560), *(v0 + 544), type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v41 = *(v0 + 592);
    v42 = *(v0 + 544);
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    v46 = *(v42 + 24);
    v47 = *(v42 + 32);
    v48 = *(v42 + 40);
    sub_2405EF2E8(*v42, v44, v45, v46, v47, v48);
    v49 = sub_240759AC4();
    v50 = sub_24075A5E4();
    sub_2405EE680(v43, v44, v45, v46, v47, v48);
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v51 = 138412290;
      sub_2405EF554();
      swift_allocError();
      *v52 = v43;
      *(v52 + 8) = v44;
      *(v52 + 16) = v45;
      *(v52 + 24) = v46;
      *(v52 + 32) = v47;
      *(v52 + 40) = v48;
      sub_2405EF2E8(v43, v44, v45, v46, v47, v48);
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v84 = v53;
      _os_log_impl(&dword_240579000, v49, v50, "Failed to perform repair with error: %@", v51, 0xCu);
      sub_2405B8A50(v84, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v84, -1, -1);
      MEMORY[0x245CC76B0](v51, -1, -1);
    }

    v54 = *(v0 + 560);

    sub_2405EF554();
    swift_allocError();
    *v55 = v43;
    *(v55 + 8) = v44;
    *(v55 + 16) = v45;
    *(v55 + 24) = v46;
    *(v55 + 32) = v47;
    *(v55 + 40) = v48;
    swift_willThrow();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v56 = *(v0 + 592);
    sub_2406CB400(*(v0 + 560), *(v0 + 536), type metadata accessor for MachRepairMessage);
    v57 = sub_240759AC4();
    v58 = sub_24075A5E4();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 536);
    if (v59)
    {
      v61 = *(v0 + 528);
      v62 = *(v0 + 520);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v85[0] = v64;
      *v63 = 136315138;
      sub_2406CB400(v60, v61, type metadata accessor for MachRepairMessage);
      v65 = sub_24075A0E4();
      v67 = v66;
      sub_2406CB3A0(v60, type metadata accessor for MachRepairMessage);
      v68 = sub_2405BBA7C(v65, v67, v85);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_240579000, v57, v58, "Received unexpected response: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x245CC76B0](v64, -1, -1);
      MEMORY[0x245CC76B0](v63, -1, -1);
    }

    else
    {

      sub_2406CB3A0(v60, type metadata accessor for MachRepairMessage);
    }

    v69 = *(v0 + 560);
    v54 = *(v0 + 544);
    sub_2405EF554();
    swift_allocError();
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0;
    *(v70 + 40) = 4;
    swift_willThrow();
    sub_2406CB3A0(v69, type metadata accessor for MachRepairMessage);
LABEL_13:
    sub_2406CB3A0(v54, type metadata accessor for MachRepairMessage);
    v71 = *(v0 + 608);
    v72 = *(v0 + 600);
    v73 = *(v0 + 512);
    v74 = *(v73 + v71);
    *(v73 + v71) = 0;
    sub_2406C1298(v74);

    v75 = *(v0 + 584);
    v76 = *(v0 + 576);
    v77 = *(v0 + 560);
    v78 = *(v0 + 552);
    v79 = *(v0 + 544);
    v80 = *(v0 + 536);
    v81 = *(v0 + 528);

    v40 = *(v0 + 8);
    goto LABEL_14;
  }

  v3 = *(v0 + 592);
  v4 = *(v0 + 544);
  v5 = v4[3];
  v7 = *v4;
  v6 = v4[1];
  *(v0 + 48) = v4[2];
  *(v0 + 64) = v5;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v9 = v4[5];
  v8 = v4[6];
  v10 = v4[4];
  *(v0 + 128) = *(v4 + 14);
  *(v0 + 96) = v9;
  *(v0 + 112) = v8;
  *(v0 + 80) = v10;
  sub_2406425C8(v0 + 16, v0 + 136);
  v11 = sub_240759AC4();
  v12 = sub_24075A5C4();
  sub_2405EEB18(v0 + 16);
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 560);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v85[0] = v16;
    *v15 = 136315138;
    v17 = *(v0 + 96);
    *(v0 + 320) = *(v0 + 80);
    *(v0 + 336) = v17;
    *(v0 + 352) = *(v0 + 112);
    *(v0 + 368) = *(v0 + 128);
    v18 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v18;
    v19 = *(v0 + 64);
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = v19;
    sub_2406425C8(v0 + 16, v0 + 376);
    v20 = sub_24075A0E4();
    v22 = sub_2405BBA7C(v20, v21, v85);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_240579000, v11, v12, "Finished Apple ID Repair with report: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x245CC76B0](v16, -1, -1);
    MEMORY[0x245CC76B0](v15, -1, -1);
  }

  sub_2406CB3A0(v14, type metadata accessor for MachRepairMessage);
  v23 = *(v0 + 608);
  v24 = *(v0 + 600);
  v25 = *(v0 + 584);
  v26 = *(v0 + 576);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v29 = *(v0 + 544);
  v30 = *(v0 + 536);
  v83 = *(v0 + 528);
  v31 = *(v0 + 512);
  v32 = *(v0 + 496);
  v34 = *(v0 + 96);
  v33 = *(v0 + 112);
  v35 = *(v0 + 80);
  *(v32 + 112) = *(v0 + 128);
  *(v32 + 80) = v34;
  *(v32 + 96) = v33;
  *(v32 + 64) = v35;
  v36 = *(v0 + 16);
  v37 = *(v0 + 32);
  v38 = *(v0 + 64);
  *(v32 + 32) = *(v0 + 48);
  *(v32 + 48) = v38;
  *v32 = v36;
  *(v32 + 16) = v37;
  v39 = *(v31 + v23);
  *(v31 + v23) = 0;
  sub_2406C1298(v39);

  v40 = *(v0 + 8);
LABEL_14:

  return v40();
}

uint64_t sub_2406C281C()
{
  v1 = v0[77];
  v2 = v0[69];
  v3 = v0[64];

  sub_2406CB3A0(v2, type metadata accessor for MachRepairMessage);

  return MEMORY[0x2822009F8](sub_2406C28A8, v3, 0);
}

uint64_t sub_2406C28A8()
{
  v1 = v0[79];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[64];
  v5 = *(v4 + v2);
  *(v4 + v2) = 0;
  sub_2406C1298(v5);

  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[67];
  v12 = v0[66];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2406C299C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MachRepairMessage();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for RepairContext();
  v3[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C2A88, v2, 0);
}

uint64_t sub_2406C2A88()
{
  v26 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[3];
  v3 = sub_240759AE4();
  v0[12] = __swift_project_value_buffer(v3, qword_27E4BC350);
  sub_2406CB400(v2, v1, type metadata accessor for RepairContext);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    sub_2406CB400(v7, v8, type metadata accessor for RepairContext);
    v12 = sub_24075A0E4();
    v14 = v13;
    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
    v15 = sub_2405BBA7C(v12, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v4, v5, "Generating symptom report with context: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v7, type metadata accessor for RepairContext);
  }

  v16 = v0[4];
  v17 = sub_2406C4EA0(v0[3]);
  v0[13] = v17;
  v18 = v0[7];
  v19 = v0[4];
  v20 = v0[5];
  v21 = v0[3];
  v22 = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v0[14] = OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession;
  v23 = *(v19 + v22);
  *(v19 + v22) = v17;
  swift_retain_n();
  sub_2406C1298(v23);

  sub_2406CB400(v21, v18, type metadata accessor for RepairModel);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_2406C2DAC, 0, 0);
}

uint64_t sub_2406C2DAC()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2406C2EA0;
  v6 = v0[8];
  v7 = v0[5];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406CCB94, v3, v7);
}

uint64_t sub_2406C2EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_2406C3548;
    v5 = 0;
  }

  else
  {
    v6 = v2[15];
    v7 = v2[7];
    v8 = v2[4];

    sub_2406CB3A0(v7, type metadata accessor for MachRepairMessage);
    v4 = sub_2406C2FE8;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2406C2FE8()
{
  v63 = v0;
  v1 = v0[5];
  sub_2406CB400(v0[8], v0[6], type metadata accessor for MachRepairMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v20 = v0[12];
    v21 = v0[6];
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = *(v21 + 32);
    v27 = *(v21 + 40);
    sub_2405EF2E8(*v21, v23, v24, v25, v26, v27);
    v28 = sub_240759AC4();
    v29 = sub_24075A5E4();
    sub_2405EE680(v22, v23, v24, v25, v26, v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v30 = 138412290;
      sub_2405EF554();
      swift_allocError();
      *v31 = v22;
      *(v31 + 8) = v23;
      *(v31 + 16) = v24;
      *(v31 + 24) = v25;
      *(v31 + 32) = v26;
      *(v31 + 40) = v27;
      sub_2405EF2E8(v22, v23, v24, v25, v26, v27);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v61 = v32;
      _os_log_impl(&dword_240579000, v28, v29, "Failed to generate symptom report with error: %@", v30, 0xCu);
      sub_2405B8A50(v61, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v61, -1, -1);
      MEMORY[0x245CC76B0](v30, -1, -1);
    }

    v33 = v0[8];

    sub_2405EF554();
    swift_allocError();
    *v34 = v22;
    *(v34 + 8) = v23;
    *(v34 + 16) = v24;
    *(v34 + 24) = v25;
    *(v34 + 32) = v26;
    *(v34 + 40) = v27;
    swift_willThrow();
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v3 = v0[12];
      v4 = v0[6];
      v6 = *v4;
      v5 = v4[1];
      v7 = v4[2];
      v8 = v4[3];

      v9 = sub_240759AC4();
      v10 = sub_24075A5C4();

      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[8];
      if (v11)
      {
        v13 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62[0] = v59;
        v62[1] = v6;
        *v13 = 136315138;
        v62[2] = v5;
        v62[3] = v7;
        v62[4] = v8;

        v60 = v12;
        v14 = SymptomReport.description.getter();
        v58 = v6;
        v16 = v15;

        v17 = sub_2405BBA7C(v14, v16, v62);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_240579000, v9, v10, "Generated Apple ID symptom report: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x245CC76B0](v59, -1, -1);
        MEMORY[0x245CC76B0](v13, -1, -1);

        sub_2406CB3A0(v60, type metadata accessor for MachRepairMessage);
        v18 = v58;
        v19 = v5;
      }

      else
      {

        sub_2406CB3A0(v12, type metadata accessor for MachRepairMessage);
        v19 = v5;
        v18 = v6;
      }

      v48 = v0[13];
      v47 = v0[14];
      v50 = v0[10];
      v49 = v0[11];
      v52 = v0[7];
      v51 = v0[8];
      v53 = v0[6];
      v54 = v0[4];
      v55 = v0[2];
      *v55 = v18;
      v55[1] = v19;
      v55[2] = v7;
      v55[3] = v8;
      v56 = *(v54 + v47);
      *(v54 + v47) = 0;
      sub_2406C1298(v56);

      v46 = v0[1];
      goto LABEL_12;
    }

    v35 = v0[8];
    v33 = v0[6];
    sub_2405EF554();
    swift_allocError();
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0;
    *(v36 + 40) = 4;
    swift_willThrow();
    sub_2406CB3A0(v35, type metadata accessor for MachRepairMessage);
  }

  sub_2406CB3A0(v33, type metadata accessor for MachRepairMessage);
  v38 = v0[13];
  v37 = v0[14];
  v39 = v0[4];
  v40 = *(v39 + v37);
  *(v39 + v37) = 0;
  sub_2406C1298(v40);

  v42 = v0[10];
  v41 = v0[11];
  v44 = v0[7];
  v43 = v0[8];
  v45 = v0[6];

  v46 = v0[1];
LABEL_12:

  return v46();
}

uint64_t sub_2406C3548()
{
  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[4];

  sub_2406CB3A0(v2, type metadata accessor for MachRepairMessage);

  return MEMORY[0x2822009F8](sub_2406C35D4, v3, 0);
}

uint64_t sub_2406C35D4()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[4];
  v5 = *(v4 + v2);
  *(v4 + v2) = 0;
  sub_2406C1298(v5);

  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2406C369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = v56 - v6;
  v65 = type metadata accessor for MachRepairMessage();
  v7 = *(*(v65 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v65);
  v63 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v60 = v56 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v62 = v56 - v16;
  MEMORY[0x28223BE20](v15);
  v64 = v56 - v17;
  v18 = sub_240759C44();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v56 - v24;
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_240759AE4();
  v27 = __swift_project_value_buffer(v26, qword_27E4B8500);
  v28 = *(v19 + 16);
  v28(v25, a1, v18);
  v61 = v27;
  v29 = sub_240759AC4();
  v30 = sub_24075A5D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56[1] = a1;
    v32 = v31;
    v33 = swift_slowAlloc();
    v56[0] = v12;
    v34 = v33;
    *&v66 = v33;
    *v32 = 136315138;
    v28(v23, v25, v18);
    v35 = sub_24075A0E4();
    v37 = v36;
    (*(v19 + 8))(v25, v18);
    v38 = sub_2405BBA7C(v35, v37, &v66);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_240579000, v29, v30, "Received XPC message: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v39 = v34;
    v12 = v56[0];
    MEMORY[0x245CC76B0](v39, -1, -1);
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v25, v18);
  }

  sub_2406CCB20(&qword_27E4B8300, type metadata accessor for MachRepairMessage);
  v40 = v62;
  sub_240759C34();
  v41 = v63;
  v42 = v64;
  sub_2406CC580(v40, v64, type metadata accessor for MachRepairMessage);
  v43 = v60;
  sub_2406CB400(v42, v60, type metadata accessor for MachRepairMessage);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v44 = v59;
    sub_2405E150C(v43, v59, &qword_27E4B8000, &unk_240776AD0);
    sub_2406C3F78(v44, v57, v58);
    swift_storeEnumTagMultiPayload();
    sub_2406CCB20(&qword_27E4B8308, type metadata accessor for MachRepairMessage);
    sub_240759C24();
    sub_2406CB3A0(v12, type metadata accessor for MachRepairMessage);
    sub_2405B8A50(v44, &qword_27E4B8000, &unk_240776AD0);
    v45 = v42;
  }

  else
  {
    sub_2406CB400(v42, v41, type metadata accessor for MachRepairMessage);
    v46 = sub_240759AC4();
    v47 = sub_24075A5D4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v66 = v49;
      *v48 = 136315138;
      sub_2406CB400(v41, v12, type metadata accessor for MachRepairMessage);
      v50 = v12;
      v51 = sub_24075A0E4();
      v53 = v52;
      sub_2406CB3A0(v41, type metadata accessor for MachRepairMessage);
      v54 = sub_2405BBA7C(v51, v53, &v66);

      *(v48 + 4) = v54;
      v12 = v50;
      _os_log_impl(&dword_240579000, v46, v47, "Received unexpected mach repair message: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x245CC76B0](v49, -1, -1);
      MEMORY[0x245CC76B0](v48, -1, -1);
    }

    else
    {

      sub_2406CB3A0(v41, type metadata accessor for MachRepairMessage);
    }

    *(v12 + 4) = 0;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v12[40] = 4;
    swift_storeEnumTagMultiPayload();
    sub_2406CCB20(&qword_27E4B8308, type metadata accessor for MachRepairMessage);
    sub_240759C24();
    sub_2406CB3A0(v12, type metadata accessor for MachRepairMessage);
    sub_2406CB3A0(v42, type metadata accessor for MachRepairMessage);
    v45 = v60;
  }

  return sub_2406CB3A0(v45, type metadata accessor for MachRepairMessage);
}

void sub_2406C3F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v64 = a2;
  v4 = type metadata accessor for RepairContext();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v63 = *(v11 - 8);
  v60 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v18 = sub_240759AE4();
  __swift_project_value_buffer(v18, qword_27E506810);
  v62 = a1;
  sub_2405B044C(a1, v17, &qword_27E4B8000, &unk_240776AD0);
  v19 = sub_240759AC4();
  v20 = sub_24075A5D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v55 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v56 = v10;
    v24 = v23;
    *&aBlock = v23;
    *v22 = 136315138;
    v54 = v18;
    v25 = v14;
    sub_2405B044C(v17, v65, &qword_27E4B8000, &unk_240776AD0);
    v26 = sub_24075A0E4();
    v27 = v8;
    v29 = v28;
    sub_2405B8A50(v17, &qword_27E4B8000, &unk_240776AD0);
    v30 = sub_2405BBA7C(v26, v29, &aBlock);
    v8 = v27;
    v14 = v25;
    v18 = v54;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_240579000, v19, v20, "Received coordinated model update: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v10 = v56;
    MEMORY[0x245CC76B0](v31, -1, -1);
    v32 = v22;
    v4 = v55;
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  else
  {

    sub_2405B8A50(v17, &qword_27E4B8000, &unk_240776AD0);
  }

  isEscapingClosureAtFileLocation = v64;
  sub_2405B044C(v64 + *(v4 + 20), &aBlock, &qword_27E4B8CB8, &qword_240768F08);
  if (v68)
  {
    sub_24058C9C0(&aBlock, v72);
    v34 = v73;
    v35 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v36 = (*(v35 + 8))(v34, v35);
    if (!v36)
    {
      v36 = *(v57 + 112);
    }

    v37 = v36;
    sub_2405F7830(v72, v71);
    v10 = v65;
    sub_2405B044C(v62, v65, &qword_27E4B8000, &unk_240776AD0);
    v38 = v63;
    v39 = v61;
    (*(v63 + 16))(v61, v59, v11);
    v8 = ((*(v58 + 80) + 56) & ~*(v58 + 80));
    v40 = &v8[v14 + *(v38 + 80)] & ~*(v38 + 80);
    v41 = swift_allocObject();
    sub_24058C9C0(v71, v41 + 16);
    sub_2405E150C(v10, &v8[v41], &qword_27E4B8000, &unk_240776AD0);
    v42 = *(v38 + 32);
    v18 = v38 + 32;
    v42(v41 + v40, v39, v11);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_2406CC384;
    *(v43 + 24) = v41;
    v69 = sub_2406CC46C;
    v70 = v43;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v67 = sub_2406C0E30;
    v68 = &block_descriptor_54;
    v44 = _Block_copy(&aBlock);

    dispatch_async_and_wait(v37, v44);

    _Block_release(v44);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v72);

      return;
    }

    __break(1u);
  }

  else
  {
    sub_2405B8A50(&aBlock, &qword_27E4B8CB8, &qword_240768F08);
    if (qword_27E4B5EB0 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  __swift_project_value_buffer(v18, qword_27E4B8500);
  sub_2406CB400(isEscapingClosureAtFileLocation, v10, type metadata accessor for RepairContext);
  v45 = sub_240759AC4();
  v46 = sub_24075A5E4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&aBlock = v48;
    *v47 = 136315138;
    sub_2406CB400(v10, v8, type metadata accessor for RepairContext);
    v49 = sub_24075A0E4();
    v51 = v50;
    sub_2406CB3A0(v10, type metadata accessor for RepairContext);
    v52 = sub_2405BBA7C(v49, v51, &aBlock);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_240579000, v45, v46, "Unable to use exchange from context: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x245CC76B0](v48, -1, -1);
    MEMORY[0x245CC76B0](v47, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v10, type metadata accessor for RepairContext);
  }
}

uint64_t sub_2406C4768(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v21[0] = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v21 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v21[1] = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2405B044C(a2, v13, &qword_27E4B8000, &unk_240776AD0);
  v16 = v22;
  (*(v5 + 16))(v8, v23, v22);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_2405E150C(v13, v19 + v17, &qword_27E4B8000, &unk_240776AD0);
  (*(v5 + 32))(v19 + v18, v8, v16);
  (*(v15 + 16))(v21[0], sub_2406CC494, v19, v14, v15);
}

uint64_t sub_2406C49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for MachRepairMessage();
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC388, &unk_240776AE0);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B80E8, &qword_240765598);
  v12 = *(*(v43 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v24 = sub_240759AE4();
  __swift_project_value_buffer(v24, qword_27E506810);
  sub_2405B044C(a2, v23, &qword_27E4B8000, &unk_240776AD0);
  v46 = a1;
  sub_2405B044C(a1, v16, &qword_27E4B80E8, &qword_240765598);
  v25 = sub_240759AC4();
  v26 = sub_24075A5D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v8;
    v48 = v39;
    *v27 = 136315394;
    v41 = a3;
    sub_2405B044C(v23, v21, &qword_27E4B8000, &unk_240776AD0);
    v28 = sub_24075A0E4();
    v30 = v29;
    sub_2405B8A50(v23, &qword_27E4B8000, &unk_240776AD0);
    v31 = sub_2405BBA7C(v28, v30, &v48);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    sub_2405B044C(v16, v42, &qword_27E4B80E8, &qword_240765598);
    v32 = sub_24075A0E4();
    v34 = v33;
    sub_2405B8A50(v16, &qword_27E4B80E8, &qword_240765598);
    v35 = sub_2405BBA7C(v32, v34, &v48);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_240579000, v25, v26, "Responding to model update (%s) with response: %s", v27, 0x16u);
    v36 = v39;
    swift_arrayDestroy();
    v8 = v40;
    MEMORY[0x245CC76B0](v36, -1, -1);
    MEMORY[0x245CC76B0](v27, -1, -1);
  }

  else
  {

    sub_2405B8A50(v16, &qword_27E4B80E8, &qword_240765598);
    sub_2405B8A50(v23, &qword_27E4B8000, &unk_240776AD0);
  }

  sub_2405B044C(v46, v8, &qword_27E4B80E8, &qword_240765598);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v37 = v44;
  sub_24075A414();
  return (*(v45 + 8))(v37, v9);
}

uint64_t sub_2406C4EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10);
  v69 = *(v5 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = v8;
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A8, &qword_240776B18);
  v65 = *(v67 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = v17;
  v63 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v62 - v18;
  v19 = type metadata accessor for RepairContext();
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v68 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v73 = v10;
  v27 = sub_240759AE4();
  __swift_project_value_buffer(v27, qword_27E4BC350);
  v72 = a1;
  sub_2406CB400(a1, v26, type metadata accessor for RepairContext);
  v28 = sub_240759AC4();
  v29 = sub_24075A5D4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77 = v5;
    v32 = v31;
    v79 = v31;
    *v30 = 136315138;
    sub_2406CB400(v26, v24, type metadata accessor for RepairContext);
    v33 = sub_24075A0E4();
    v35 = v34;
    sub_2406CB3A0(v26, type metadata accessor for RepairContext);
    v36 = sub_2405BBA7C(v33, v35, &v79);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_240579000, v28, v29, "Creating new XPC session for context: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x245CC76B0](v32, -1, -1);
    MEMORY[0x245CC76B0](v30, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v26, type metadata accessor for RepairContext);
  }

  v77 = swift_allocBox();
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v40 = (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  MEMORY[0x28223BE20](v40);
  *(&v62 - 2) = v38;
  type metadata accessor for MachRepairMessage();
  (*(v65 + 104))(v13, *MEMORY[0x277D85778], v67);
  sub_24075A484();
  v41 = v73;
  sub_2405B044C(v38, v73, &qword_27E4BC3A0, &qword_240776B10);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v71;
  sub_2405B044C(v41, v71, &qword_27E4BC3A0, &qword_240776B10);
  v44 = v68;
  sub_2406CB400(v72, v68, type metadata accessor for RepairContext);
  v45 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v46 = (v70 + *(v66 + 80) + v45) & ~*(v66 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  v48 = v47 + v45;
  v49 = v77;
  sub_2405E150C(v43, v48, &qword_27E4BC3A0, &qword_240776B10);
  sub_2406CC580(v44, v47 + v46, type metadata accessor for RepairContext);

  v50 = v74;
  v51 = sub_2406C7610(sub_2406CC614, v47, sub_2406CC708, v49);
  if (v50)
  {

    sub_2405B8A50(v41, &qword_27E4BC3A0, &qword_240776B10);
    (*(v75 + 8))(v78, v76);
  }

  else
  {
    sub_2405B8A50(v41, &qword_27E4BC3A0, &qword_240776B10);

    v52 = sub_24075A3D4();
    v53 = v64;
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    v55 = v75;
    v54 = v76;
    v56 = v63;
    (*(v75 + 16))(v63, v78, v76);
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v58 = v51;
    v59 = (v62 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    (*(v55 + 32))(v60 + v57, v56, v54);
    *(v60 + v59) = v58;
    v51 = v58;

    sub_240656510(0, 0, v53, &unk_240776B30, v60);

    sub_2405B8A50(v53, &unk_27E4B9BF0, &qword_240762710);
    (*(v55 + 8))(v78, v54);
  }

  return v51;
}

uint64_t sub_2406C5784(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4BC3A0, &qword_240776B10);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

double sub_2406C5860@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v52 = a3;
  v55 = a2;
  v59 = a1;
  v61 = a4;
  v4 = type metadata accessor for RepairContext();
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v6;
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_240759C44();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v60);
  v10 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_2405B044C(v55, v18, &qword_27E4BC3A0, &qword_240776B10);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      v39 = v25;
      v51 = v25;
      v40 = v7;
      v50 = *(v20 + 32);
      v55 = v20 + 32;
      v50(v39, v18, v19);
      v41 = sub_24075A3D4();
      (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
      v42 = *(v7 + 16);
      v43 = v60;
      v42(v58, v59, v60);
      sub_2406CB400(v52, v57, type metadata accessor for RepairContext);
      (*(v20 + 16))(v23, v51, v19);
      v44 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v45 = (v8 + *(v53 + 80) + v44) & ~*(v53 + 80);
      v46 = (v54 + *(v20 + 80) + v45) & ~*(v20 + 80);
      v47 = swift_allocObject();
      *(v47 + 2) = 0;
      *(v47 + 3) = 0;
      *(v47 + 4) = v27;
      (*(v40 + 32))(&v47[v44], v58, v43);
      sub_2406CC580(v57, &v47[v45], type metadata accessor for RepairContext);
      v50(&v47[v46], v23, v19);

      sub_240602F08(0, 0, v56, &unk_240776B58, v47);

      (*(v20 + 8))(v51, v19);
      goto LABEL_10;
    }

    sub_2405B8A50(v18, &qword_27E4BC3A0, &qword_240776B10);
  }

  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v28 = sub_240759AE4();
  __swift_project_value_buffer(v28, qword_27E4BC350);
  v29 = *(v7 + 16);
  v30 = v60;
  v29(v10, v59, v60);
  v31 = sub_240759AC4();
  v32 = sub_24075A5E4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62 = v34;
    *v33 = 136315138;
    v29(v58, v10, v30);
    v35 = sub_24075A0E4();
    v37 = v36;
    (*(v7 + 8))(v10, v30);
    v38 = sub_2405BBA7C(v35, v37, &v62);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_240579000, v31, v32, "Received a new XPC message but lost self: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x245CC76B0](v34, -1, -1);
    MEMORY[0x245CC76B0](v33, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v30);
  }

LABEL_10:
  v48 = v61;
  *(v61 + 32) = 0;
  result = 0.0;
  *v48 = 0u;
  v48[1] = 0u;
  return result;
}

uint64_t sub_2406C5F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2406C5F3C, a4, 0);
}

uint64_t sub_2406C5F3C()
{
  v1 = v0[2];
  sub_2406C369C(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2406C5FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_240759BF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  if (qword_27E4B5EB0 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  __swift_project_value_buffer(v12, qword_27E4B8500);
  v13 = *(v7 + 16);
  v13(v10, a1, v6);
  v14 = sub_240759AC4();
  v15 = sub_24075A5E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v5;
    *v16 = 138412290;
    sub_2406CCB20(&qword_27E4B9BA0, MEMORY[0x277D855E8]);
    swift_allocError();
    v17 = v11;
    v13(v18, v10, v6);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v7 + 8))(v10, v6);
    *(v16 + 4) = v19;
    v20 = v25;
    *v25 = v19;
    v11 = v17;
    _os_log_impl(&dword_240579000, v14, v15, "XPC session cancelled: %@", v16, 0xCu);
    sub_2405B8A50(v20, &qword_27E4B92A0, &qword_240762400);
    v5 = v26;
    MEMORY[0x245CC76B0](v20, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  sub_2405B044C(v11, v5, &qword_27E4BC3A0, &qword_240776B10);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8);
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v5, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24075A424();
    return (*(v22 + 8))(v5, v21);
  }

  return result;
}