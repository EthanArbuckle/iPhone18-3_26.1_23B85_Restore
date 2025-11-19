uint64_t sub_18215C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  v7 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_resolvedActorIDContinuation;
  swift_beginAccess();
  sub_181AB5D28(a1 + v7, a2, &qword_1EA83AAE8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAC8);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  swift_beginAccess();
  sub_182160968(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_18215C3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteCallEnvelope(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_182AD3548();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_181D8E250(a2, v7, type metadata accessor for RemoteCallEnvelope);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_182160C44(v7, v14 + v12, type metadata accessor for RemoteCallEnvelope);
  *(v14 + v13) = a1;

  v15 = sub_181F774B4(0, 0, v10, &unk_182AF9928, v14);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + 96);
  *(a1 + 96) = 0x8000000000000000;
  sub_182259F28(v15, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 96) = v18;
  return swift_endAccess();
}

uint64_t sub_18215C618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = *a5;
  v6 = sub_182AD2298();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for ReplyEnvelope();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for RemoteCallEnvelope(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18215C7A8, 0, 0);
}

uint64_t sub_18215C7A8()
{
  v20 = v0;
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[14];
  v3 = sub_182AD2698();
  v0[30] = __swift_project_value_buffer(v3, qword_1EA836930);
  sub_181D8E250(v2, v1, type metadata accessor for RemoteCallEnvelope);
  v4 = sub_182AD2678();
  v5 = sub_182AD38D8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    sub_182AD2258();
    sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
    v10 = sub_182AD41B8();
    v12 = v11;
    sub_18215FB58(v7, type metadata accessor for RemoteCallEnvelope);
    v13 = sub_181C64FFC(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_181A37000, v4, v5, "Performing remote call for call ID %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1865DF520](v9, -1, -1);
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  else
  {

    sub_18215FB58(v7, type metadata accessor for RemoteCallEnvelope);
  }

  if (qword_1EA8371F0 != -1)
  {
    swift_once();
  }

  v14 = v0[15];
  v15 = v0[14];
  v0[5] = v0[16];
  v0[6] = &off_1EEFC30F0;
  v0[2] = v14;
  v16 = swift_task_alloc();
  v0[31] = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;

  v17 = swift_task_alloc();
  v0[32] = v17;
  *v17 = v0;
  v17[1] = sub_18215CAE8;
  v22 = 549;
  v23 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE98](v17, v0 + 2, &unk_182AF9938, v16, 0, 0, 0xD00000000000002BLL, 0x8000000182BDF080);
}

uint64_t sub_18215CAE8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_18215CF08;
  }

  else
  {
    sub_181F49A88(v2 + 16, &qword_1EA83AB88);
    v3 = sub_18215CC38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_18215CC38()
{
  if (sub_182AD3618())
  {
    sub_1821608A8(0, 0, 0, 0x3000000000000000uLL, 255);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18215CD24()
{

  return MEMORY[0x1EEE6DFA0](sub_18215CE20, 0, 0);
}

uint64_t sub_18215CE20()
{
  sub_18215FB58(*(v0 + 168), type metadata accessor for ReplyEnvelope);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18215CF08()
{
  v83 = v0;
  v1 = *(v0 + 264);
  sub_181F49A88(v0 + 16, &qword_1EA83AB88);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    if (v5 >> 60 == 11 && v3 == 4 && !v4 && v5 == 0xB000000000000000)
    {
      v7 = *(v0 + 216);
      v6 = *(v0 + 224);
      v8 = *(v0 + 112);

      sub_181D8E250(v8, v6, type metadata accessor for RemoteCallEnvelope);
      sub_181D8E250(v8, v7, type metadata accessor for RemoteCallEnvelope);
      v9 = sub_182AD2678();
      v10 = sub_182AD38D8();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);
      if (v11)
      {
        v80 = v10;
        v14 = *(v0 + 176);
        v78 = *(v0 + 216);
        v15 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v81 = v79;
        v82[0] = 0;
        *v15 = 136315394;
        v16 = (v13 + *(v14 + 20));
        sub_182AD3BA8();

        v82[0] = 0x49726F746341574ELL;
        v82[1] = 0xEA00000000002844;
        MEMORY[0x1865D9CA0](*v16, v16[1]);
        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        type metadata accessor for NWActorID();
        sub_182AD2258();
        sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
        v17 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v17);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        sub_18215FB58(v13, type metadata accessor for RemoteCallEnvelope);
        v18 = sub_181C64FFC(0x49726F746341574ELL, 0xEA00000000002844, &v81);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        v19 = sub_182AD41B8();
        v21 = v20;
        sub_18215FB58(v78, type metadata accessor for RemoteCallEnvelope);
        v22 = sub_181C64FFC(v19, v21, &v81);

        *(v15 + 14) = v22;
        _os_log_impl(&dword_181A37000, v9, v80, "Failed to resolve actor with ID %s for callID %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v79, -1, -1);
        MEMORY[0x1865DF520](v15, -1, -1);
      }

      else
      {

        sub_18215FB58(v12, type metadata accessor for RemoteCallEnvelope);
        sub_18215FB58(v13, type metadata accessor for RemoteCallEnvelope);
      }

      v64 = 0;
      v63 = 0;
      goto LABEL_23;
    }

    sub_18215FF54(v3, v4, v5);
  }

  v23 = *(v0 + 264);

  *(v0 + 88) = v23;
  v24 = v23;
  v25 = swift_dynamicCast();
  v26 = *(v0 + 264);
  if (!v25)
  {
    v46 = *(v0 + 184);
    v47 = *(v0 + 112);

    sub_181D8E250(v47, v46, type metadata accessor for RemoteCallEnvelope);
    v48 = v26;
    v49 = sub_182AD2678();
    v50 = sub_182AD38B8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 264);
      v52 = *(v0 + 184);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v82[0] = v54;
      *v53 = 136315394;
      *(v0 + 104) = v51;
      v55 = v51;
      v56 = sub_182AD3038();
      v58 = sub_181C64FFC(v56, v57, v82);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      sub_182AD2258();
      sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
      v59 = sub_182AD41B8();
      v61 = v60;
      sub_18215FB58(v52, type metadata accessor for RemoteCallEnvelope);
      v62 = sub_181C64FFC(v59, v61, v82);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_181A37000, v49, v50, "Failed to execute distributed target, underlying error: %s for callID %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v54, -1, -1);
      MEMORY[0x1865DF520](v53, -1, -1);
    }

    else
    {
      v65 = *(v0 + 184);

      sub_18215FB58(v65, type metadata accessor for RemoteCallEnvelope);
    }

    *(v0 + 96) = *(v0 + 264);
    v64 = sub_182AD3018();
    v63 = v66;
    v67 = 0;
    if (sub_182AD3618())
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v28 = *(v0 + 200);
  v27 = *(v0 + 208);
  v29 = *(v0 + 112);

  sub_181D8E250(v29, v27, type metadata accessor for RemoteCallEnvelope);
  sub_181D8E250(v29, v28, type metadata accessor for RemoteCallEnvelope);
  v30 = sub_182AD2678();
  v31 = sub_182AD38B8();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 200);
  v34 = *(v0 + 208);
  if (v32)
  {
    v35 = *(v0 + 192);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v82[0] = v37;
    *v36 = 136315394;
    sub_181D8E250(v34, v35, type metadata accessor for RemoteCallEnvelope);
    v38 = sub_182AD3038();
    v40 = v39;
    sub_18215FB58(v34, type metadata accessor for RemoteCallEnvelope);
    v41 = sub_181C64FFC(v38, v40, v82);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    sub_182AD2258();
    sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
    v42 = sub_182AD41B8();
    v44 = v43;
    sub_18215FB58(v33, type metadata accessor for RemoteCallEnvelope);
    v45 = sub_181C64FFC(v42, v44, v82);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_181A37000, v30, v31, "Failed to execute distributed target: %s for callID %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v37, -1, -1);
    MEMORY[0x1865DF520](v36, -1, -1);
  }

  else
  {

    sub_18215FB58(v33, type metadata accessor for RemoteCallEnvelope);
    sub_18215FB58(v34, type metadata accessor for RemoteCallEnvelope);
  }

  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v63 = 0;
  v64 = 1;
LABEL_23:
  v67 = 1;
  if (sub_182AD3618())
  {
LABEL_24:
    sub_1821608A8(v64, v63, 0, 0, v67);

    v77 = *(v0 + 8);

    return v77();
  }

LABEL_18:
  v69 = *(v0 + 160);
  v68 = *(v0 + 168);
  v70 = *(v0 + 112);
  v71 = sub_182AD2258();
  (*(*(v71 - 8) + 16))(v68, v70, v71);
  *(v68 + v69[5]) = xmmword_182AE7580;
  v72 = v68 + v69[6];
  *v72 = v64;
  *(v72 + 8) = v63;
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  *(v72 + 32) = v67;
  v73 = v68 + v69[7];
  *v73 = 0;
  *(v73 + 8) = 1;
  v74 = swift_task_alloc();
  *(v0 + 272) = v74;
  *v74 = v0;
  v74[1] = sub_18215CD24;
  v75 = *(v0 + 168);

  return sub_18215DD8C(v75);
}

uint64_t sub_18215D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  _s15ActorConnectionC20RemoteCallInvocationVMa(0);
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18215D9A0, 0, 0);
}

uint64_t sub_18215D9A0()
{
  v1 = v0[3];
  sub_181D8E250(v0[2], v0[4], type metadata accessor for RemoteCallEnvelope);
  v2 = *(v1 + 24);
  v0[5] = v2;
  if (v2)
  {
    v0[6] = *(v0[3] + 32);

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_18215DB34;
    v4 = v0[4];

    return v7(v4);
  }

  else
  {
    sub_18215FB58(v0[4], _s15ActorConnectionC20RemoteCallInvocationVMa);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_18215DB34()
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = v0;

  sub_181A554F4(v2);
  if (v0)
  {
    v3 = sub_18215DD08;
  }

  else
  {
    v3 = sub_18215DC84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_18215DC84()
{
  sub_18215FB58(*(v0 + 32), _s15ActorConnectionC20RemoteCallInvocationVMa);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18215DD08()
{
  sub_18215FB58(*(v0 + 32), _s15ActorConnectionC20RemoteCallInvocationVMa);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18215DD8C(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for ReplyEnvelope();
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_18215DE50;

  return sub_18215E448(a1);
}

uint64_t sub_18215DE50()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18215DF8C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18215DF8C()
{
  v23 = v0;
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_182AD2698();
  __swift_project_value_buffer(v4, qword_1EA836930);
  sub_181D8E250(v2, v3, type metadata accessor for ReplyEnvelope);
  v5 = v1;
  v6 = sub_182AD2678();
  v7 = sub_182AD38B8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[5];
  v10 = v0[3];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    sub_182AD2258();
    sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
    v14 = sub_182AD41B8();
    v16 = v15;
    sub_18215FB58(v10, type metadata accessor for ReplyEnvelope);
    v17 = sub_181C64FFC(v14, v16, &v22);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v12 = v19;
    _os_log_impl(&dword_181A37000, v6, v7, "Failed to send reply to %s: %@", v11, 0x16u);
    sub_181F49A88(v12, &unk_1EA83AA30);
    MEMORY[0x1865DF520](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1865DF520](v13, -1, -1);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  else
  {

    sub_18215FB58(v10, type metadata accessor for ReplyEnvelope);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_18215E254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = sub_18224F354(a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 88);
    *(a1 + 88) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182257714();
    }

    v11 = *(v10 + 48);
    v12 = sub_182AD2258();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v8, v12);
    v13 = *(v10 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10);
    v15 = *(v14 - 8);
    (*(v15 + 32))(a3, v13 + *(v15 + 72) * v8, v14);
    sub_181FAC2C4(v8, v10);
    *(a1 + 88) = v10;

    (*(v15 + 56))(a3, 0, 1, v14);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_18215E448(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for ReplyEnvelope();
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18215E4D8, 0, 0);
}

uint64_t sub_18215E4D8()
{
  v33 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + 80);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_182160D3C;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_181FCE618(&v31);
  os_unfair_lock_unlock(v3 + 4);
  v6 = v31;

  if (v6)
  {

    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v7 = v0[5];
    v8 = v0[3];
    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA836930);
    sub_181D8E250(v8, v7, type metadata accessor for ReplyEnvelope);

    v10 = sub_182AD2678();
    v11 = sub_182AD38D8();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[5];
    if (v12)
    {
      v14 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      v30 = v16;
      v31 = 67;
      v32 = 0xE100000000000000;
      v0[2] = nw_connection_get_id(*(*(v14 + 16) + 16));
      v17 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v17);

      v18 = sub_181C64FFC(v31, v32, &v30);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      sub_182AD2258();
      sub_18216065C(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
      v19 = sub_182AD41B8();
      v21 = v20;
      sub_18215FB58(v13, type metadata accessor for ReplyEnvelope);
      v22 = sub_181C64FFC(v19, v21, &v30);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_181A37000, v10, v11, "%s: Sending reply for %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v16, -1, -1);
      MEMORY[0x1865DF520](v15, -1, -1);
    }

    else
    {

      sub_18215FB58(v13, type metadata accessor for ReplyEnvelope);
    }

    v24 = sub_1822B7724();
    v0[6] = v24;
    v0[7] = v25;
    v27 = v24;
    v28 = v25;
    v29 = swift_task_alloc();
    v0[8] = v29;
    *v29 = v0;
    v29[1] = sub_18215E918;

    return sub_182156330(v27, v28, 4);
  }

  else
  {

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_18215E918()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18215EA5C, 0, 0);
  }

  else
  {
    sub_181C1F2E4(v2[6], v2[7]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_18215EA5C()
{
  sub_181C1F2E4(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_18215EAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = sub_18224F354(a2);
  v7 = 0;
  if (v8)
  {
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 96);
    *(a1 + 96) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182257A70();
    }

    v12 = *(v11 + 48);
    v13 = sub_182AD2258();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
    v7 = *(*(v11 + 56) + 8 * v9);
    sub_181FAC614(v9, v11);
    *(a1 + 96) = v11;
  }

  *a3 = v7;
  return swift_endAccess();
}

void sub_18215EBCC(void (*a1)(void))
{
  v3 = *(v1 + 80);
  os_unfair_lock_lock(v3 + 4);
  sub_18215F290(&v11);
  os_unfair_lock_unlock(v3 + 4);
  if (v11 == 1)
  {
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA836930);

    v5 = sub_182AD2678();
    v6 = sub_182AD38D8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v11 = 67;
      v12 = 0xE100000000000000;
      nw_connection_get_id(*(*(v1 + 16) + 16));
      v9 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v9);

      v10 = sub_181C64FFC(v11, v12, &v13);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_181A37000, v5, v6, "%s: Already disconnected, calling interruption handler", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1865DF520](v8, -1, -1);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    a1(0);
  }
}

uint64_t sub_18215EDD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_isDisconnected;
  if (*(result + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_isDisconnected))
  {
    v6 = 1;
  }

  else
  {
    v9 = result;
    if (qword_1EA836920 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA836930);

    v11 = sub_182AD2678();
    v12 = sub_182AD38D8();

    if (os_log_type_enabled(v11, v12))
    {
      v27 = a4;
      v13 = swift_slowAlloc();
      v26 = v5;
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      nw_connection_get_id(*(*(v9 + 16) + 16));
      v15 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v15);

      v16 = sub_181C64FFC(67, 0xE100000000000000, &v28);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_181A37000, v11, v12, "%s: Adding interruption handler", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v17 = v14;
      v5 = v26;
      MEMORY[0x1865DF520](v17, -1, -1);
      v18 = v13;
      a4 = v27;
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_interruptionHandlers;
    swift_beginAccess();
    v21 = *(v9 + v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_181F5AED0(0, v21[2] + 1, 1, v21);
      *(v9 + v20) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_181F5AED0((v23 > 1), v24 + 1, 1, v21);
    }

    v21[2] = v24 + 1;
    v25 = &v21[2 * v24];
    v25[4] = sub_18215F2A8;
    v25[5] = v19;
    *(v9 + v20) = v21;
    result = swift_endAccess();
    v6 = *(v9 + v5);
  }

  *a4 = v6;
  return result;
}

uint64_t sub_18215F0FC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection__associatedActorIDs;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

unint64_t sub_18215F15C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    result = (__buf * v1) >> 64;
    if (__buf * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > __buf * v1)
      {
        do
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
        }

        while (v2 > __buf * v1);
        return (__buf * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_18215F1E8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_18215F24C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_18215F2D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v34 = a4;
  v35 = a2;
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A568);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30[2] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30[0] = v30 - v8;
  v9 = sub_182AD2258();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30[1] = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v30 - v16;
  v18 = type metadata accessor for CancelRemoteCall(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181D8E250(a1, v20, type metadata accessor for CancelRemoteCall);
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  sub_18216065C(&unk_1EA83AB28, type metadata accessor for CancelRemoteCall);
  v21 = sub_182AD1C68();
  v23 = v22;
  v24 = v21;
  sub_18215FB58(v20, type metadata accessor for CancelRemoteCall);

  v25 = sub_182AD3548();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = swift_allocObject();
  swift_weakInit();
  sub_181AB5D28(v35, v14, &qword_1EA8394C0);
  v27 = (*(v31 + 80) + 57) & ~*(v31 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v26;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  *(v28 + 56) = v32;
  sub_18215FD84(v14, v28 + v27);
  sub_181F774B4(0, 0, v17, &unk_182AF98C8, v28);
}

uint64_t sub_18215F98C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v1 = sub_182AD2F58();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_182AD3AA8();

    swift_unknownObjectRelease();
    sub_181E7BFC4(&v6, v7);
  }

  else
  {

    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A4F0);
  v3 = swift_dynamicCast();
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_18215FAA8(unsigned int *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v1 + v5);

  return sub_182157974(a1, v6, v7, v1 + v4, v11, v9, v10);
}

uint64_t sub_18215FB58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18215FBB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_18215240C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_18215FCB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_182153C58(a1, v4, v5, v6);
}

uint64_t sub_18215FD84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18215FDF4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_181F5EB68;

  return sub_182155C14(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

void sub_18215FF54(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = a3 >> 60;
  if ((a3 >> 60) <= 6)
  {
    switch(v4)
    {
      case 2:
        sub_181C1F2E4(a1, a2);
        a1 = (a3 & 0xFFFFFFFFFFFFFFFLL);
        break;
      case 3:
        break;
      case 4:

        goto LABEL_7;
      default:
        return;
    }

    return;
  }

  if (v4 > 8)
  {
    if (v4 == 9 || v4 == 10)
    {

      goto LABEL_7;
    }
  }

  else if (v4 == 7 || v4 == 8)
  {

LABEL_7:
  }
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0) - 8);
  v2 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_181C1F2E4(*(v0 + 40), *(v0 + 48));
  v3 = sub_182AD2258();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_182160184(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_181F54964;

  return sub_182155C14(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1821602AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_182158110(a1, v4, v5, v6);
}

uint64_t sub_182160398()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_connectionEstablishedActivity) = *(v0 + 24);
}

void sub_1821603EC()
{
  if (qword_1EA836920 != -1)
  {
    swift_once();
  }

  v0 = sub_182AD2698();
  __swift_project_value_buffer(v0, qword_1EA836930);
  v1 = sub_182AD2678();
  v2 = sub_182AD38D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_181A37000, v1, v2, "Received terminate process message", v3, 2u);
    MEMORY[0x1865DF520](v3, -1, -1);
  }

  if (qword_1EA8371D0 != -1)
  {
    swift_once();
  }

  if (byte_1EA83AAB0 != 1)
  {
    oslog = sub_182AD2678();
    v7 = sub_182AD38B8();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Terminate process not supported";
    goto LABEL_14;
  }

  v4 = COERCE_DOUBLE(sub_18215F98C());
  v6 = v5;
  oslog = sub_182AD2678();
  if ((v6 & 1) == 0 && v4 > 0.0)
  {
    v10 = sub_182AD38D8();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, oslog, v10, "Terminating process", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    exit(1);
  }

  v7 = sub_182AD38B8();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Terminate process frequency not set";
LABEL_14:
    _os_log_impl(&dword_181A37000, oslog, v7, v9, v8, 2u);
    MEMORY[0x1865DF520](v8, -1, -1);
  }

LABEL_15:
}

uint64_t sub_18216065C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1821606DC(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteCallEnvelope(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_18215C618(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1821607FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F54964;

  return sub_18215D910(a1, v5, v4);
}

uint64_t sub_1821608A8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((~a4 & 0x3000000000000000) != 0 || ~a5 != 0)
  {
    return sub_1821608D0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1821608D0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_13:

      return sub_181C1F2E4(result, a2);
    }

    if (v7 != 3)
    {
      return result;
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      return result;
    }

    a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    result = a3;
    goto LABEL_13;
  }
}

uint64_t sub_182160968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AAE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1821609F4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_13:

      return sub_181F49B58(result, a2);
    }

    if (v7 != 3)
    {
      return result;
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      return result;
    }

    a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    result = a3;
    goto LABEL_13;
  }
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1Tm(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1865DF520);
  }

  return result;
}

void sub_182160B64(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_isDisconnected);
  *(v1 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_isDisconnected) = 1;
  *a1 = v2;
}

void *sub_182160B80@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_182160BC4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_interruptionHandlers;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = MEMORY[0x1E69E7CC0];
  *a1 = v5;
  return result;
}

void sub_182160C2C(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_connectionEstablishedActivity);
  *(v1 + OBJC_IVAR____TtCC7Network13NWActorSystem15ActorConnection_connectionEstablishedActivity) = 0;
  *a1 = v2;
}

uint64_t sub_182160C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_182160DD4()
{
  v0 = nw_protocol_copy_udp_definition();
  type metadata accessor for NWProtocolDefinition();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v3 = sub_182AD2F88();
  v5 = v4;

  v1[2] = v3;
  v1[3] = v5;
  qword_1EA83ABA0 = v1;
}

uint64_t static NWProtocolUDP.definition.getter()
{
  if (qword_1EA8371E0 != -1)
  {
    swift_once();
  }
}

void (*sub_182160EEC(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_udp_options_get_prefer_no_checksum(v3);
  return sub_182160F38;
}

uint64_t NWProtocolUDP.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_udp_create_options();
  return v0;
}

uint64_t NWProtocolUDP.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWProtocolUDP.Metadata.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_udp_create_metadata();
  return v0;
}

uint64_t sub_1821611F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1821611C0(a1, *(a2 + 16), a3);
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t NWDomainSequence.ScopedDomain.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NWDomainSequence.ScopedDomain.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_182AD30E8();
  if (!v1)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  v2 = *(v1 + 16);
  v3 = *(v1 + 184);
  v4 = *(v1 + 185);
  MEMORY[0x1865DB070](v2);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF9D10[v3]);
  return MEMORY[0x1865DB070](qword_182AF9D38[v4]);
}

uint64_t NWDomainSequence.ScopedDomain.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 184);
    v4 = *(v1 + 185);
    MEMORY[0x1865DB070](v2);
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AF9D10[v3]);
    MEMORY[0x1865DB070](qword_182AF9D38[v4]);
  }

  return sub_182AD4558();
}

uint64_t sub_18216144C()
{
  v1 = *(v0 + 16);
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 184);
    v4 = *(v1 + 185);
    MEMORY[0x1865DB070](v2);
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AF9D10[v3]);
    MEMORY[0x1865DB070](qword_182AF9D38[v4]);
  }

  return sub_182AD4558();
}

uint64_t NWDomainSequence.Event.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return sub_182162158();
}

void sub_182161544(uint64_t a1, DNSServiceFlags a2, uint64_t a3)
{
  sdRef[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83ABF8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(v21 - v8, a1, v6, v7);
  v10 = sub_182AD43E8();
  sdRef[0] = 0;
  if (!a3)
  {
    goto LABEL_5;
  }

  v11 = *(a3 + 16);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (HIDWORD(v11))
  {
    __break(1u);
LABEL_5:
    LODWORD(v11) = 0;
  }

  v12 = DNSServiceEnumerateDomains(sdRef, a2, v11, sub_18216175C, v10);
  v13 = sdRef[0];
  if (sdRef[0])
  {
    v14 = nw_context_copy_implicit_context();
    v15 = nw_context_copy_workloop(v14);
    swift_unknownObjectRelease();
    v16 = v15;
    DNSServiceSetDispatchQueue(v13, v16);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v13;
    v17[4] = v10;
    sub_182AD3688();
  }

  else
  {
    v18 = v12;
    swift_unknownObjectRelease();
    sub_181F4B3B8();
    v19 = swift_allocError();
    *v20 = v18;
    *(v20 + 4) = 1;
    v21[1] = v19;
    sub_182AD36B8();
  }
}

uint64_t sub_182161774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_182AD27A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_182AD27C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  aBlock[4] = sub_1821626C4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = &block_descriptor_26;
  v15 = _Block_copy(aBlock);
  sub_182AD27B8();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1821626FC(&qword_1ED40F4B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50);
  sub_181B7CFE4();
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v13, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

uint64_t NWDomainSequence.DomainIterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83ABA8);
  *v3 = v1;
  v3[1] = sub_181F54964;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t sub_182161ACC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83ABA8);
  *v3 = v1;
  v3[1] = sub_181F5EB68;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t sub_182161B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_182161C44;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_182161C44()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
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

    return MEMORY[0x1EEE6DFA0](sub_182161DB4, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_182161DB4()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t NWDomainSequence.makeAsyncIterator()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83ABB0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  (*(v2 + 16))(&v7 - v4, v0, v1, v3);
  sub_182AD35B8();
  sub_182162194(v0);
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_182161F5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83ABB0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  (*(v2 + 16))(&v7 - v4, v0, v1, v3);
  sub_182AD35B8();
  sub_182162194(v0);
  return (*(v2 + 8))(v5, v1);
}

BOOL _s7Network16NWDomainSequenceV12ScopedDomainV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_182AD4268(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        v8 = v3;
        v9 = v2;
        v7 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v9, &v8);
        swift_retain_n();

        return (v7 & 1) != 0;
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_182162158()
{
}

uint64_t sub_182162194(uint64_t a1)
{
  v2 = type metadata accessor for NWDomainSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_182162214()
{
  result = qword_1EA83ABB8;
  if (!qword_1EA83ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83ABB8);
  }

  return result;
}

uint64_t sub_182162324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_18216236C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1821623DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_182162424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_1821625C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, ValueMetadata *, uint64_t, void))
{
  sub_18216263C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18216263C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
    v7 = a3(a1, &type metadata for NWDomainSequence.Event, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1821626C4()
{
  DNSServiceRefDeallocate(*(v0 + 16));

  return swift_unknownObjectRelease();
}

uint64_t sub_1821626FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_182162744(char a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AC00);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83ABF8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if (a5)
  {
    v30[0] = a5;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    if (a3)
    {
      sub_181F4B3B8();
      v17 = swift_allocError();
      *v18 = a3;
      *(v18 + 4) = 1;
      v30[0] = v17;
      sub_182AD36B8();
    }

    else if (a4)
    {
      v19 = sub_182AD3158();
      v21 = v20;
      if (a2)
      {
        sub_181E378A4(a2, v30, v34);
        type metadata accessor for Interface.BackingClass();
        v22 = swift_allocObject();
        v23 = v35[0];
        v22[9] = v34[8];
        v22[10] = v23;
        *(v22 + 170) = *(v35 + 10);
        v24 = v34[5];
        v22[5] = v34[4];
        v22[6] = v24;
        v25 = v34[7];
        v22[7] = v34[6];
        v22[8] = v25;
        v26 = v34[1];
        v22[1] = v34[0];
        v22[2] = v26;
        v27 = v34[3];
        v22[3] = v34[2];
        v22[4] = v27;
      }

      else
      {
        v22 = 0;
      }

      v30[0] = v19;
      v30[1] = v21;
      v30[2] = v22;
      v31 = (a1 & 2) == 0;
      v32 = (a1 & 4) != 0;
      v33 = a1 & 1;

      sub_182162158();
      sub_182AD36A8();
      sub_182162A80();

      (*(v29 + 8))(v12, v10);
    }

    (*(v14 + 8))(v16, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_182162A80()
{
}

uint64_t sub_182162AE0()
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_182162B68()
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_182162BB4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_182163A40(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_182162BF8()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6F7250796C706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

void *sub_182162CA8()
{
  v0 = type metadata accessor for WireProtocol();
  type metadata accessor for NWProtocolFramer.Definition();
  swift_allocObject();
  result = NWProtocolFramer.Definition.init(implementation:)(v0, &off_1EEFC3580);
  qword_1EA8431A8 = result;
  return result;
}

uint64_t sub_182162D3C()
{

  return swift_allocObject();
}

uint64_t sub_182162D78(char a1, int a2)
{
  if (qword_1EA836BC8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA8431A8;
  type metadata accessor for NWProtocolFramer.Message();
  v5 = swift_allocObject();
  *(v5 + 16) = nw_framer_protocol_create_message(*(v4 + 32));
  v8 = &type metadata for WireMessageType;
  LOBYTE(v7[0]) = a1;

  sub_181BD0648(v7, 0xD000000000000011, 0x8000000182BDF000);
  v8 = &type metadata for WireMessageOptions;
  v7[0] = a2;
  sub_181BD0648(v7, 0xD000000000000014, 0x8000000182BDF020);

  return v5;
}

uint64_t sub_182162E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v31 = &v36;
  v2 = 12;
  while (1)
  {
    v40 = 0;
    v41 = 0;
    v42 = 1;
    MEMORY[0x1EEE9AC00](a1);
    v30[2] = 12;
    v30[3] = &v40;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_18216380C;
    *(v10 + 24) = v30;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181F14B98;
    *(v11 + 24) = v10;
    v38 = sub_181F14B54;
    v39 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v36 = sub_181F14AF8;
    v37 = &block_descriptor_27;
    v12 = _Block_copy(aBlock);

    v13 = nw_framer_parse_input(v1, 0xCuLL, 0xCuLL, 0, v12);
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      break;
    }

    if (!v13 || (v42 & 1) != 0)
    {
      return v2;
    }

    v15 = HIDWORD(v40);
    v32 = v41;
    if ((v40 - 5) >= 4)
    {
      v16 = 0;
    }

    else
    {
      v16 = v40 - 4;
    }

    if (qword_1EA836BC8 != -1)
    {
      swift_once();
    }

    v17 = v1;
    v18 = qword_1EA8431A8;
    type metadata accessor for NWProtocolFramer.Message();
    inited = swift_initStackObject();
    message = nw_framer_protocol_create_message(*(v18 + 32));
    *(inited + 16) = message;
    v37 = &type metadata for WireMessageType;
    LOBYTE(aBlock[0]) = v16;
    sub_181BCF834(aBlock, v33);
    v21 = v34;
    if (v34)
    {
      v22 = __swift_project_boxed_opaque_existential_1(v33, v34);
      v23 = *(v21 - 8);
      v24 = MEMORY[0x1EEE9AC00](v22);
      v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = sub_182AD4258();
      v28 = *(v23 + 8);

      v28(v26, v21);
      v2 = 12;
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {

      v27 = 0;
    }

    nw_framer_message_set_object_value(message, "NWActorSystemType", v27);
    swift_unknownObjectRelease();
    sub_1821637A4(aBlock);
    v37 = &type metadata for WireMessageOptions;
    LODWORD(aBlock[0]) = v15;
    sub_181BCF834(aBlock, v33);
    v29 = v34;
    if (v34)
    {
      v3 = __swift_project_boxed_opaque_existential_1(v33, v34);
      v4 = *(v29 - 8);
      v5 = MEMORY[0x1EEE9AC00](v3);
      v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v4 + 16))(v7, v5);
      v8 = sub_182AD4258();
      (*(v4 + 8))(v7, v29);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      v8 = 0;
    }

    nw_framer_message_set_object_value(message, "NWActorSystemOptions", v8);
    swift_unknownObjectRelease();
    sub_1821637A4(aBlock);

    v1 = v17;
    v9 = nw_framer_deliver_input_no_copy(v17, v32, *(inited + 16), 1);
    a1 = swift_unknownObjectRelease();
    if (!v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_182163378(uint64_t a1, uint64_t a2, size_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = sub_182AD3048();
  v7 = nw_framer_message_copy_object_value(v5, (v6 + 32));

  if (v7)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v38;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1821637A4(&v40);
  }

  v8 = 0;
LABEL_9:
  v9 = sub_182AD3048();
  v10 = nw_framer_message_copy_object_value(v5, (v9 + 32));

  if (v10)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (*(&v39 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v38;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1821637A4(&v40);
  }

  v11 = 0;
LABEL_17:
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (HIDWORD(a3))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_22:
    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA8431B0);
    v27 = a3;
    v28 = sub_182AD2678();
    v29 = sub_182AD38B8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v40 = v31;
      *v30 = 136315138;
      *&v38 = a3;
      v32 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
      v33 = sub_182AD3038();
      v35 = sub_181C64FFC(v33, v34, &v40);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_181A37000, v28, v29, "Hit error writing: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1865DF520](v31, -1, -1);
      MEMORY[0x1865DF520](v30, -1, -1);
    }

    else
    {
    }

    return;
  }

  v12 = dword_182AFA020[v8];
  v37 = v11;
  LODWORD(v38) = v12;
  v36 = a3;
  *&v40 = sub_181E63D00(&v38, 4);
  *(&v40 + 1) = v13;
  v14 = sub_181E63D00(&v37, 4);
  v16 = v15;
  sub_182AD2178();
  sub_181C1F2E4(v14, v16);
  v17 = sub_181E63D00(&v36, 4);
  v19 = v18;
  sub_182AD2178();
  sub_181C1F2E4(v17, v19);
  v20 = v40;
  v21 = *(a1 + 16);
  v22 = sub_182AD2138();
  v24 = NWCreateDispatchDataFromNSData(v22, v23);

  if (!v24)
  {
    __break(1u);
  }

  nw_framer_write_output_data(v21, v24);

  sub_181C1F2E4(v20, *(&v20 + 1));
  if (!nw_framer_write_output_no_copy(v21, a3))
  {
    sub_181F4B3B8();
    a3 = swift_allocError();
    *v25 = 22;
    *(v25 + 4) = 0;
    swift_willThrow();
    if (qword_1EA836BD0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }
}

uint64_t sub_1821637A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18216380C(uint64_t *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  result = *(v3 + 16);
  if (a1)
  {
    if (a2 - a1 >= result)
    {
      v6 = *(v3 + 24);
      v7 = *a1;
      v8 = *(a1 + 2);
      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 12) = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (result <= 0)
  {
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_18216388C()
{
  result = qword_1EA83AC08;
  if (!qword_1EA83AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC08);
  }

  return result;
}

unint64_t sub_1821638E4()
{
  result = qword_1EA83AC10;
  if (!qword_1EA83AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC10);
  }

  return result;
}

unint64_t sub_18216393C()
{
  result = qword_1EA83AC18;
  if (!qword_1EA83AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC18);
  }

  return result;
}

unint64_t sub_182163994()
{
  result = qword_1EA83AC20;
  if (!qword_1EA83AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC20);
  }

  return result;
}

unint64_t sub_1821639EC()
{
  result = qword_1EA83AC28;
  if (!qword_1EA83AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC28);
  }

  return result;
}

uint64_t sub_182163A40(unsigned int a1)
{
  if (a1 > 8)
  {
    return 5;
  }

  else
  {
    return byte_182AFA034[a1];
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_182163A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182163AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182163B40()
{
  if (qword_1EA837258 != -1)
  {
    swift_once();
  }

  if (*(qword_1EA843438 + 19))
  {
    return 333000;
  }

  if ((*(v0 + 100) & 4) == 0)
  {
    return 333000;
  }

  v3 = *(v0 + 88);
  if (!v3 || *(v0 + 92) >= v3)
  {
    return 333000;
  }

  v4 = 31 * *(v0 + 88);
  if ((v4 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_12;
  }

  if (v4 >= 0x514C8)
  {
    v2 = 333000;
  }

  else
  {
    v2 = 31 * *(v0 + 88);
  }

  if (qword_1EA837060 != -1)
  {
    goto LABEL_28;
  }

LABEL_12:
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v5 = byte_1EA843430;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v40 = v0;
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x206C616974696E69, 0xED0000203A545452);
    sub_182AD3748();
    MEMORY[0x1865D9CA0](7564576, 0xE300000000000000);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA843418);
    v27 = swift_allocObject();
    *(v27 + 16) = "cachedRTT";
    *(v27 + 24) = 9;
    *(v27 + 32) = 2;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C724;
    *(v28 + 24) = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = 1564427099;
    *(v29 + 24) = 0xE400000000000000;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0xE000000000000000;

    oslog = sub_182AD2678();
    v55 = sub_182AD38A8();
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C71C;
    *(v31 + 24) = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_181F8C718;
    *(v32 + 24) = v31;
    v47 = v32;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C720;
    *(v33 + 24) = v29;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C718;
    *(v34 + 24) = v33;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_181F8C720;
    *(v35 + 24) = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C718;
    *(v36 + 24) = v35;
    v57 = v36;
    v1 = oslog;
    if (os_log_type_enabled(oslog, v55))
    {
      v37 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = 0;
      v38 = v59;
      *v37 = 770;
      v61 = v37 + 2;
      v62 = sub_181F8C728;
      v63 = v44;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C728;
      v63 = v45;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C714;
      v63 = v47;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C728;
      v63 = v49;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C728;
      v63 = v51;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C714;
      v63 = v34;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C728;
      v63 = v53;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C728;
      v63 = v42;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      v62 = sub_181F8C714;
      v63 = v57;
      sub_181F73AE0(&v62, &v61, &v60, &v59);

      _os_log_impl(&dword_181A37000, oslog, v55, "%s %s %s", v37, 0x20u);
      v1 = v38;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v38, -1, -1);
      MEMORY[0x1865DF520](v37, -1, -1);

      goto LABEL_35;
    }

    goto LABEL_34;
  }

  for (; v4 < 0x514C8; v0 = v40)
  {
    v6 = *(v0 + 96);
    if (!v6)
    {
      break;
    }

    if (((62 * v6) & 0xFFFFFFFF00000000) == 0)
    {
      if (v5 && __nwlog_is_datapath_logging_enabled())
      {
        v62 = 0;
        v63 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDF1D0);
        sub_182AD3748();
        MEMORY[0x1865D9CA0](7564576, 0xE300000000000000);
        v7 = v62;
        v58 = v63;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v8 = sub_182AD2698();
        __swift_project_value_buffer(v8, qword_1EA843418);
        v9 = swift_allocObject();
        *(v9 + 16) = "cachedRTT";
        *(v9 + 24) = 9;
        *(v9 + 32) = 2;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_181F8C258;
        *(v10 + 24) = v9;
        v11 = swift_allocObject();
        *(v11 + 16) = 1564427099;
        *(v11 + 24) = 0xE400000000000000;
        v12 = swift_allocObject();
        *(v12 + 16) = v7;
        *(v12 + 24) = v58;

        v13 = sub_182AD2678();
        LOBYTE(v9) = sub_182AD38A8();
        v48 = swift_allocObject();
        *(v48 + 16) = 32;
        v50 = swift_allocObject();
        *(v50 + 16) = 8;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_181F8C264;
        *(v14 + 24) = v10;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_181F8C27C;
        *(v15 + 24) = v14;
        v46 = v15;
        v16 = swift_allocObject();
        *(v16 + 16) = 32;
        v52 = swift_allocObject();
        *(v52 + 16) = 8;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_181F8C26C;
        *(v17 + 24) = v11;
        v18 = swift_allocObject();
        *(v18 + 16) = sub_181F8C718;
        *(v18 + 24) = v17;
        v54 = swift_allocObject();
        *(v54 + 16) = 32;
        v56 = swift_allocObject();
        *(v56 + 16) = 8;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_181F8C26C;
        *(v19 + 24) = v12;
        v20 = swift_allocObject();
        *(v20 + 16) = sub_181F8C718;
        *(v20 + 24) = v19;
        v43 = v9;
        v21 = v9;
        v22 = v13;
        if (os_log_type_enabled(v13, v21))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v59 = v24;
          v60 = 0;
          *v23 = 770;
          v41 = v24;
          v61 = v23 + 2;
          v62 = sub_181F8C274;
          v63 = v48;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C728;
          v63 = v50;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C284;
          v63 = v46;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C728;
          v63 = v16;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C728;
          v63 = v52;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C714;
          v63 = v18;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C728;
          v63 = v54;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C728;
          v63 = v56;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          v62 = sub_181F8C714;
          v63 = v20;
          sub_181F73AE0(&v62, &v61, &v60, &v59);

          _os_log_impl(&dword_181A37000, v22, v43, "%s %s %s", v23, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v41, -1, -1);
          MEMORY[0x1865DF520](v23, -1, -1);
        }

        else
        {
        }
      }

      return v2;
    }

    __break(1u);
LABEL_34:

LABEL_35:
    ;
  }

  return v2;
}

void sub_182164AFC(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = v3;
  v7 = a2;
  v8 = sub_181F8C310(a1, a2);
  *v3 = v8;
  if (v8 > 0xFFFFFFFE)
  {
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_17;
  }

  v4 = 0;
  if (*(v3 + 104))
  {
    v9 = *(v3 + 32);
    if (v8 >= v9)
    {
      goto LABEL_11;
    }

    if (qword_1EA837060 != -1)
    {
      goto LABEL_77;
    }

    while (1)
    {
      if (qword_1EA837250 != -1)
      {
        v48 = v8;
        swift_once();
        v8 = v48;
      }

      if (byte_1EA843430 == 1)
      {
        v10 = v8;
        if (__nwlog_is_datapath_logging_enabled())
        {
          v159 = 0;
          v160 = 0xE000000000000000;
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0x206E696D2077656ELL, 0xED0000203A545452);
          sub_182AD3748();
          MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BDF310);
          sub_182AD3748();
          MEMORY[0x1865D9CA0](695430432, 0xE400000000000000);
          v84 = v160;
          oslogc = v159;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v85 = sub_182AD2698();
          __swift_project_value_buffer(v85, qword_1EA843418);
          v86 = swift_allocObject();
          *(v86 + 16) = "processNewSample(packetSentTime:packetAckedTime:ackDelay:)";
          *(v86 + 24) = 58;
          *(v86 + 32) = 2;
          v87 = swift_allocObject();
          *(v87 + 16) = sub_181F8C724;
          *(v87 + 24) = v86;
          v88 = swift_allocObject();
          *(v88 + 16) = 1564427099;
          *(v88 + 24) = 0xE400000000000000;
          v89 = swift_allocObject();
          *(v89 + 16) = oslogc;
          *(v89 + 24) = v84;

          v120 = sub_182AD2678();
          logb = sub_182AD38A8();
          v125 = swift_allocObject();
          *(v125 + 16) = 32;
          v130 = swift_allocObject();
          *(v130 + 16) = 8;
          v90 = swift_allocObject();
          *(v90 + 16) = sub_181F8C71C;
          *(v90 + 24) = v87;
          v91 = swift_allocObject();
          *(v91 + 16) = sub_181F8C718;
          *(v91 + 24) = v90;
          v135 = swift_allocObject();
          *(v135 + 16) = 32;
          v140 = swift_allocObject();
          *(v140 + 16) = 8;
          v92 = swift_allocObject();
          *(v92 + 16) = sub_181F8C720;
          *(v92 + 24) = v88;
          v93 = swift_allocObject();
          *(v93 + 16) = sub_181F8C718;
          *(v93 + 24) = v92;
          v144 = swift_allocObject();
          *(v144 + 16) = 32;
          oslogd = swift_allocObject();
          LOBYTE(oslogd[2].isa) = 8;
          v94 = swift_allocObject();
          *(v94 + 16) = sub_181F8C720;
          *(v94 + 24) = v89;
          v95 = swift_allocObject();
          *(v95 + 16) = sub_181F8C718;
          *(v95 + 24) = v94;
          if (os_log_type_enabled(v120, logb))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v156 = v97;
            v157 = 0;
            *v96 = 770;
            bufa = v97;
            v158 = v96 + 2;
            v159 = sub_181F8C728;
            v160 = v125;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C728;
            v160 = v130;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C714;
            v160 = v91;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C728;
            v160 = v135;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C728;
            v160 = v140;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C714;
            v160 = v93;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C728;
            v160 = v144;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C728;
            v160 = oslogd;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            v159 = sub_181F8C714;
            v160 = v95;
            sub_181F73AE0(&v159, &v158, &v157, &v156);

            _os_log_impl(&dword_181A37000, v120, logb, "%s %s %s", v96, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](bufa, -1, -1);
            MEMORY[0x1865DF520](v96, -1, -1);
          }

          else
          {
          }
        }

        v8 = v10;
      }

      v5[4] = v8;
      v9 = v8;
LABEL_11:
      v11 = v5[10];
      if (v11 < a3)
      {
        if (qword_1EA837060 != -1)
        {
          v98 = v8;
          swift_once();
          v8 = v98;
        }

        if (qword_1EA837250 != -1)
        {
          v99 = v8;
          swift_once();
          v8 = v99;
        }

        if (byte_1EA843430 == 1)
        {
          v38 = v8;
          if (__nwlog_is_datapath_logging_enabled())
          {
            v159 = 0;
            v160 = 0xE000000000000000;
            sub_182AD3BA8();
            MEMORY[0x1865D9CA0](0xD000000000000024, 0x8000000182BDF2C0);
            sub_182AD3748();
            MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BDF2F0);
            sub_182AD3748();
            MEMORY[0x1865D9CA0](695430432, 0xE400000000000000);
            v100 = v159;
            osloge = v160;
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v101 = sub_182AD2698();
            __swift_project_value_buffer(v101, qword_1EA843418);
            v102 = swift_allocObject();
            *(v102 + 16) = "processNewSample(packetSentTime:packetAckedTime:ackDelay:)";
            *(v102 + 24) = 58;
            *(v102 + 32) = 2;
            v103 = swift_allocObject();
            *(v103 + 16) = sub_181F8C724;
            *(v103 + 24) = v102;
            v104 = swift_allocObject();
            *(v104 + 16) = 1564427099;
            *(v104 + 24) = 0xE400000000000000;
            bufb = swift_allocObject();
            *(bufb + 2) = v100;
            *(bufb + 3) = osloge;

            logc = sub_182AD2678();
            v141 = sub_182AD38A8();
            v121 = swift_allocObject();
            LOBYTE(v121[2].isa) = 32;
            v123 = swift_allocObject();
            *(v123 + 16) = 8;
            v105 = swift_allocObject();
            *(v105 + 16) = sub_181F8C71C;
            *(v105 + 24) = v103;
            v106 = swift_allocObject();
            *(v106 + 16) = sub_181F8C718;
            *(v106 + 24) = v105;
            v126 = swift_allocObject();
            *(v126 + 16) = 32;
            v131 = swift_allocObject();
            *(v131 + 16) = 8;
            v107 = swift_allocObject();
            *(v107 + 16) = sub_181F8C720;
            *(v107 + 24) = v104;
            v108 = swift_allocObject();
            *(v108 + 16) = sub_181F8C718;
            *(v108 + 24) = v107;
            v136 = swift_allocObject();
            *(v136 + 16) = 32;
            v145 = swift_allocObject();
            *(v145 + 16) = 8;
            v109 = swift_allocObject();
            *(v109 + 16) = sub_181F8C720;
            *(v109 + 24) = bufb;
            v110 = swift_allocObject();
            *(v110 + 16) = sub_181F8C718;
            *(v110 + 24) = v109;
            if (os_log_type_enabled(logc, v141))
            {
              v111 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              v156 = v112;
              v157 = 0;
              bufc = v111;
              *v111 = 770;
              v113 = v111 + 2;
              v114 = v112;
              v158 = v113;
              v159 = sub_181F8C728;
              v160 = v121;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C728;
              v160 = v123;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C714;
              v160 = v106;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C728;
              v160 = v126;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C728;
              v160 = v131;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C714;
              v160 = v108;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C728;
              v160 = v136;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C728;
              v160 = v145;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              v159 = sub_181F8C714;
              v160 = v110;
              sub_181F73AE0(&v159, &v158, &v157, &v156);

              _os_log_impl(&dword_181A37000, logc, v141, "%s %s %s", bufc, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v114, -1, -1);
              MEMORY[0x1865DF520](bufc, -1, -1);
            }

            else
            {
            }
          }

          v8 = v38;
        }
      }

      else
      {
        v11 = a3;
      }

      v5[1] = v8;
      if (__CFADD__(v9, v11))
      {
        oslog = v8;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v39 = sub_182AD2698();
        __swift_project_value_buffer(v39, qword_1EA843418);
        v40 = sub_182AD2678();
        v41 = sub_182AD38B8();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v159 = v43;
          *v42 = 136315650;
          v44 = sub_182AD3BF8();
          v46 = sub_181C64FFC(v44, v45, &v159);

          *(v42 + 4) = v46;
          *(v42 + 12) = 2080;
          *(v42 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v159);
          *(v42 + 22) = 2080;
          *(v42 + 24) = sub_181C64FFC(0xD000000000000011, 0x8000000182BDF2A0, &v159);
          _os_log_impl(&dword_181A37000, v40, v41, "%s %s %s", v42, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v43, -1, -1);
          MEMORY[0x1865DF520](v42, -1, -1);
        }

        v12 = 0;
        v8 = oslog;
      }

      else if (v8 >= v9 + v11)
      {
        v30 = v8 >= v11;
        v8 -= v11;
        if (!v30)
        {
          __break(1u);
          goto LABEL_82;
        }

        v5[1] = v8;
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      sub_1821675BC(v8, v7);
      if (qword_1EA837060 != -1)
      {
        swift_once();
      }

      v31 = v12 == 0;
      if (v12)
      {
        a3 = 0x6E6964756C636E69;
      }

      else
      {
        a3 = 0x6C636E6920746F6ELL;
      }

      if (v31)
      {
        v7 = 0xED0000676E696475;
      }

      else
      {
        v7 = 0xE900000000000067;
      }

      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      v32 = byte_1EA843430;
      if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
      {
        v159 = 0;
        v160 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDF280);
        MEMORY[0x1865D9CA0](a3, v7);
        MEMORY[0x1865D9CA0](0x6C6564204B434120, 0xEB00000000207961);
        sub_182AD3748();
        MEMORY[0x1865D9CA0](0x203A29736D20, 0xE600000000000000);
        sub_182AD3748();
        MEMORY[0x1865D9CA0](7564576, 0xE300000000000000);
        v49 = v160;
        osloga = v159;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v50 = sub_182AD2698();
        __swift_project_value_buffer(v50, qword_1EA843418);
        v51 = swift_allocObject();
        *(v51 + 16) = "processNewSample(packetSentTime:packetAckedTime:ackDelay:)";
        *(v51 + 24) = 58;
        *(v51 + 32) = 2;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_181F8C724;
        *(v52 + 24) = v51;
        v53 = swift_allocObject();
        *(v53 + 16) = 1564427099;
        *(v53 + 24) = 0xE400000000000000;
        v54 = swift_allocObject();
        *(v54 + 16) = osloga;
        *(v54 + 24) = v49;

        oslogb = sub_182AD2678();
        v55 = sub_182AD38A8();
        v119 = swift_allocObject();
        LOBYTE(v119[2].isa) = 32;
        v122 = swift_allocObject();
        *(v122 + 16) = 8;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_181F8C71C;
        *(v56 + 24) = v52;
        a3 = swift_allocObject();
        *(a3 + 16) = sub_181F8C718;
        *(a3 + 24) = v56;
        v124 = swift_allocObject();
        *(v124 + 16) = 32;
        v128 = swift_allocObject();
        *(v128 + 16) = 8;
        v57 = swift_allocObject();
        *(v57 + 16) = sub_181F8C720;
        *(v57 + 24) = v53;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_181F8C718;
        *(v58 + 24) = v57;
        v133 = swift_allocObject();
        *(v133 + 16) = 32;
        v138 = swift_allocObject();
        *(v138 + 16) = 8;
        v59 = swift_allocObject();
        *(v59 + 16) = sub_181F8C720;
        *(v59 + 24) = v54;
        v60 = swift_allocObject();
        *(v60 + 16) = sub_181F8C718;
        *(v60 + 24) = v59;
        if (os_log_type_enabled(oslogb, v55))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v156 = v62;
          v157 = 0;
          *v61 = 770;
          buf = v62;
          v158 = v61 + 2;
          v159 = sub_181F8C728;
          v160 = v119;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v122;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C714;
          v160 = a3;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v124;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v128;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C714;
          v160 = v58;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v133;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          a3 = v138;
          v159 = sub_181F8C728;
          v160 = v138;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C714;
          v160 = v60;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          _os_log_impl(&dword_181A37000, oslogb, v55, "%s %s %s", v61, 0x20u);
          v7 = buf;
          swift_arrayDestroy();
          MEMORY[0x1865DF520](buf, -1, -1);
          MEMORY[0x1865DF520](v61, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v33 = v5[2];
      if ((v33 & 0x8000000000000000) != 0)
      {
        break;
      }

      v34 = v5[1];
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v35 = v33 - v34;
      if ((v33 - v34) < 0)
      {
        v35 = v34 - v33;
      }

      v36 = vcvtd_n_f64_u64(v35, 2uLL) + v5[3] * 0.75;
      if (COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_71;
      }

      if (v36 <= -1.0)
      {
        goto LABEL_72;
      }

      if (v36 >= 1.84467441e19)
      {
        goto LABEL_73;
      }

      v5[3] = v36;
      v37 = v33 * 0.875 + vcvtd_n_f64_u64(v34, 3uLL);
      if (COERCE__INT64(fabs(v37)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_74;
      }

      if (v37 <= -1.0)
      {
        goto LABEL_75;
      }

      if (v37 < 1.84467441e19)
      {
        v5[2] = v37;
        if (!v32 || !__nwlog_is_datapath_logging_enabled())
        {
          return;
        }

LABEL_82:
        v159 = 0;
        v160 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BDF260);
        sub_182AD3748();
        MEMORY[0x1865D9CA0](0x726176202C736D20, 0xEF203A65636E6169);
        sub_182AD3748();
        MEMORY[0x1865D9CA0](7564576, 0xE300000000000000);
        v63 = v159;
        v64 = v160;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v65 = sub_182AD2698();
        __swift_project_value_buffer(v65, qword_1EA843418);
        v66 = swift_allocObject();
        *(v66 + 16) = "processNewSample(packetSentTime:packetAckedTime:ackDelay:)";
        *(v66 + 24) = 58;
        *(v66 + 32) = 2;
        v67 = swift_allocObject();
        *(v67 + 16) = sub_181F8C724;
        *(v67 + 24) = v66;
        v68 = swift_allocObject();
        *(v68 + 16) = 1564427099;
        *(v68 + 24) = 0xE400000000000000;
        v69 = swift_allocObject();
        *(v69 + 16) = v63;
        *(v69 + 24) = v64;

        v70 = sub_182AD2678();
        v71 = sub_182AD38A8();
        v72 = swift_allocObject();
        *(v72 + 16) = 32;
        v129 = swift_allocObject();
        *(v129 + 16) = 8;
        v73 = swift_allocObject();
        *(v73 + 16) = sub_181F8C71C;
        *(v73 + 24) = v67;
        v74 = swift_allocObject();
        *(v74 + 16) = sub_181F8C718;
        *(v74 + 24) = v73;
        v134 = swift_allocObject();
        *(v134 + 16) = 32;
        v139 = swift_allocObject();
        *(v139 + 16) = 8;
        v75 = swift_allocObject();
        *(v75 + 16) = sub_181F8C720;
        *(v75 + 24) = v68;
        v76 = swift_allocObject();
        *(v76 + 16) = sub_181F8C718;
        *(v76 + 24) = v75;
        v143 = v76;
        v77 = swift_allocObject();
        *(v77 + 16) = 32;
        loga = swift_allocObject();
        LOBYTE(loga[2].isa) = 8;
        v78 = swift_allocObject();
        *(v78 + 16) = sub_181F8C720;
        *(v78 + 24) = v69;
        v79 = swift_allocObject();
        *(v79 + 16) = sub_181F8C718;
        *(v79 + 24) = v78;
        v80 = v71;
        v81 = v70;
        if (os_log_type_enabled(v70, v71))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v156 = v83;
          v157 = 0;
          *v82 = 770;
          v158 = v82 + 2;
          v159 = sub_181F8C728;
          v160 = v72;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v129;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C714;
          v160 = v74;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v134;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v139;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C714;
          v160 = v143;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = v77;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C728;
          v160 = loga;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          v159 = sub_181F8C714;
          v160 = v79;
          sub_181F73AE0(&v159, &v158, &v157, &v156);

          _os_log_impl(&dword_181A37000, v81, v80, "%s %s %s", v82, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v83, -1, -1);
          MEMORY[0x1865DF520](v82, -1, -1);

          return;
        }

LABEL_93:

        return;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      v47 = v8;
      swift_once();
      v8 = v47;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *(v3 + 16) = v8;
  *(v3 + 24) = v8 >> 1;
  *(v3 + 32) = v8;
  sub_1821675BC(v8, v7);
  *(v3 + 8) = *v3;
  *(v3 + 104) = 1;
  if (qword_1EA837060 != -1)
  {
    goto LABEL_56;
  }

LABEL_17:
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v159 = 0;
    v160 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BDF230);
    sub_182AD3748();
    MEMORY[0x1865D9CA0](0x726176202C736D20, 0xEE002065636E6169);
    sub_182AD3748();
    MEMORY[0x1865D9CA0](7564576, 0xE300000000000000);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843418);
    v14 = swift_allocObject();
    *(v14 + 16) = "processNewSample(packetSentTime:packetAckedTime:ackDelay:)";
    *(v14 + 24) = 58;
    *(v14 + 32) = 2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C724;
    *(v15 + 24) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = 1564427099;
    *(v16 + 24) = 0xE400000000000000;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0xE000000000000000;

    v18 = sub_182AD2678();
    v19 = sub_182AD38A8();
    v127 = swift_allocObject();
    *(v127 + 16) = 32;
    v132 = swift_allocObject();
    *(v132 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C71C;
    *(v20 + 24) = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C720;
    *(v23 + 24) = v16;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_181F8C718;
    *(v24 + 24) = v23;
    v142 = swift_allocObject();
    *(v142 + 16) = 32;
    log = swift_allocObject();
    LOBYTE(log[2].isa) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C720;
    *(v25 + 24) = v17;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C718;
    *(v26 + 24) = v25;
    v27 = v19;
    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_93;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v156 = v29;
    v157 = 0;
    *v28 = 770;
    v158 = v28 + 2;
    v159 = sub_181F8C728;
    v160 = v127;
    sub_181F73AE0(&v159, &v158, &v157, &v156);
    if (v4)
    {

      while (1)
      {

        __break(1u);
      }
    }

    v159 = sub_181F8C728;
    v160 = v132;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    v159 = sub_181F8C714;
    v160 = v21;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    v159 = sub_181F8C728;
    v160 = v22;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    v159 = sub_181F8C728;
    v160 = v137;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    v159 = sub_181F8C714;
    v160 = v24;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    v159 = sub_181F8C728;
    v160 = v142;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    v159 = sub_181F8C728;
    v160 = log;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    v159 = sub_181F8C714;
    v160 = v26;
    sub_181F73AE0(&v159, &v158, &v157, &v156);

    _os_log_impl(&dword_181A37000, v18, v27, "%s %s %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v29, -1, -1);
    MEMORY[0x1865DF520](v28, -1, -1);
  }
}

uint64_t sub_1821675BC(unint64_t a1, unint64_t a2)
{
  v6 = a2;
  v7 = a1;
  if ((*(v2 + 104) & 1) == 0)
  {
    *(v2 + 72) = 0;
    if (HIDWORD(a1))
    {
      goto LABEL_39;
    }

    v3 = *(v2 + 48);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_40;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_41;
    }

LABEL_24:
    *(v3 + 32) = v7;
    *(v2 + 64) = v7;
    *(v2 + 48) = v3;
    *(v2 + 56) = v6;
    return result;
  }

  v8 = *(v2 + 56);
  v9 = a2 >= v8;
  v10 = a2 - v8;
  if (v10 == 0 || !v9 || v10 < 0x3938701)
  {
    if (HIDWORD(a1))
    {
      goto LABEL_42;
    }

    v3 = *(v2 + 72);
    if (v3 < 0)
    {
      goto LABEL_43;
    }

    v6 = *(v2 + 48);
    if (v3 >= *(v6 + 16))
    {
      goto LABEL_44;
    }

    v18 = *(v6 + 4 * v3 + 32);
    if (v18 >= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v18;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  v11 = *(v2 + 72);
  v4 = v11 + v10 / 0x3938700;
  if (__OFADD__(v11, v10 / 0x3938700))
  {
    goto LABEL_47;
  }

  v5 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_48;
  }

  if (v5 >= v4)
  {
    goto LABEL_13;
  }

  v3 = *(v2 + 48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_54;
  }

  while (1)
  {
    do
    {
      v12 = v5 % 10;
      if (v5 % 10 < 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = sub_1820835D4(v3);
        v3 = result;
        if (*(result + 16))
        {
          goto LABEL_24;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = sub_1820835D4(v6);
        v6 = result;
LABEL_32:
        if (v3 < *(v6 + 16))
        {
          v19 = v6 + 4 * v3;
          *(v19 + 32) = v7;
          *(v2 + 48) = v6;
          v16 = *(v2 + 64);
          v15 = *(v19 + 32);
          goto LABEL_34;
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v12 >= *(v3 + 16))
      {
        goto LABEL_38;
      }

      ++v5;
      *(v3 + 32 + 4 * v12) = -1;
    }

    while (v5 < v4);
    *(v2 + 48) = v3;
LABEL_13:
    v4 %= 10;
    *(v2 + 72) = v4;
    if (HIDWORD(v7))
    {
      goto LABEL_49;
    }

    v3 = *(v2 + 48);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v4 < 0)
      {
        goto LABEL_51;
      }

      goto LABEL_16;
    }

LABEL_50:
    result = sub_1820835D4(v3);
    v3 = result;
    if (v4 < 0)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_16:
    v14 = *(v3 + 16);
    if (v4 >= v14)
    {
      goto LABEL_52;
    }

    *(v3 + 4 * v4 + 32) = v7;
    *(v2 + 48) = v3;
    *(v2 + 56) = v6;
    if (v14 >= 0xA)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    v3 = sub_1820835D4(v3);
  }

  v15 = *(v3 + 64);
  v16 = *(v3 + 68);
  v17 = vminvq_u32(vminq_u32(*(v3 + 32), *(v3 + 48)));
  if (v17 < v15)
  {
    v15 = v17;
  }

LABEL_34:
  if (v15 >= v16)
  {
    v15 = v16;
  }

  *(v2 + 64) = v15;
  return result;
}

uint64_t sub_182167834@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_getMetatypeMetadata();
  *a2 = sub_182AD3018();
  a2[1] = v4;
  v5 = *(type metadata accessor for NWActorID() + 20);
  v6 = sub_182AD2258();
  return (*(*(v6 - 8) + 32))(a2 + v5, a1, v6);
}

uint64_t sub_1821678CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AC60);
  swift_allocObject();
  result = sub_182AD46B8();
  qword_1EA843390 = result;
  return result;
}

uint64_t NWActorID.description.getter()
{
  sub_182AD3BA8();

  MEMORY[0x1865D9CA0](*v0, v0[1]);
  MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
  type metadata accessor for NWActorID();
  sub_182AD2258();
  sub_1821685C8(&qword_1EA8397A0, MEMORY[0x1E69695A8]);
  v1 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v1);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  return 0x49726F746341574ELL;
}

uint64_t type metadata accessor for NWActorID()
{
  result = qword_1EA836C48;
  if (!qword_1EA836C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static NWActorID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NWActorID();

  return sub_182AD2218();
}

uint64_t sub_182167B00()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x656D614E65707974;
  }
}

uint64_t sub_182167B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v6 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_182167C24(uint64_t a1)
{
  v2 = sub_182167E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_182167C60(uint64_t a1)
{
  v2 = sub_182167E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWActorID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AC30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182167E54();
  sub_182AD4638();
  v8[15] = 0;
  sub_182AD40E8();
  if (!v1)
  {
    type metadata accessor for NWActorID();
    v8[14] = 1;
    sub_182AD2258();
    sub_1821685C8(&unk_1EA839600, MEMORY[0x1E69695A8]);
    sub_182AD4118();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_182167E54()
{
  result = qword_1EA83AC38;
  if (!qword_1EA83AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC38);
  }

  return result;
}

uint64_t NWActorID.hash(into:)()
{
  sub_182AD30E8();
  type metadata accessor for NWActorID();
  sub_182AD2258();
  sub_1821685C8(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
  return sub_182AD2EB8();
}

uint64_t NWActorID.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD30E8();
  type metadata accessor for NWActorID();
  sub_182AD2258();
  sub_1821685C8(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t NWActorID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_182AD2258();
  v17 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AC40);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = v15 - v6;
  v8 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182167E54();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v8;
  v12 = v19;
  v11 = v20;
  v23 = 0;
  *v10 = sub_182AD3FC8();
  v10[1] = v13;
  v15[1] = v13;
  v22 = 1;
  sub_1821685C8(&qword_1EA8395E8, MEMORY[0x1E69695A8]);
  sub_182AD3FF8();
  (*(v12 + 8))(v7, v21);
  (*(v17 + 32))(v10 + *(v16 + 20), v5, v11);
  sub_18216851C(v10, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_182168BF4(v10, type metadata accessor for NWActorID);
}

uint64_t sub_182168344()
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD2258();
  sub_1821685C8(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_1821683EC()
{
  sub_182AD30E8();
  sub_182AD2258();
  sub_1821685C8(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
  return sub_182AD2EB8();
}

uint64_t sub_182168478()
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD2258();
  sub_1821685C8(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_18216851C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWActorID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1821685C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_182168614(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  return sub_182AD2218();
}

uint64_t sub_1821686C0()
{
  result = sub_182AD2258();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_182168750()
{
  result = qword_1EA83AC48;
  if (!qword_1EA83AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC48);
  }

  return result;
}

unint64_t sub_1821687A8()
{
  result = qword_1EA83AC50;
  if (!qword_1EA83AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC50);
  }

  return result;
}

unint64_t sub_182168800()
{
  result = qword_1EA83AC58;
  if (!qword_1EA83AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC58);
  }

  return result;
}

uint64_t sub_182168854@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_182AD2258();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  *a2 = *a1;
  a2[1] = v14;

  sub_182AD21F8();
  sub_182168AC8(v9, v6);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_182168B38(v6);
    sub_182168BA0();
    swift_allocError();
    *v15 = 0xD000000000000012;
    v15[1] = 0x8000000182BDF330;
    swift_willThrow();
    sub_182168B38(v9);
    sub_182168BF4(a1, type metadata accessor for NWActorSystemProtobuf_ActorID);
  }

  else
  {
    sub_182168B38(v9);
    v17 = *(v11 + 32);
    v17(v13, v6, v10);
    sub_182168BF4(a1, type metadata accessor for NWActorSystemProtobuf_ActorID);
    v18 = type metadata accessor for NWActorID();
    return (v17)(a2 + *(v18 + 20), v13, v10);
  }
}

uint64_t sub_182168AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_182168B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_182168BA0()
{
  result = qword_1EA83AC68;
  if (!qword_1EA83AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AC68);
  }

  return result;
}

uint64_t sub_182168BF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double DefaultManyToManyProtocol.init()()
{
  *(v0 + 16) = 0;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0x8000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 138) = 0;
  return result;
}

uint64_t DefaultManyToManyProtocol.MultiplexingPathIdentifier.debugDescription.getter()
{
  if (*(v0 + 8))
  {
    return 1701736270;
  }

  sub_181F7D8D8();
  return sub_182AD3A88();
}

BOOL static DefaultManyToManyProtocol.MultiplexingPathIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t DefaultManyToManyProtocol.MultiplexedFlowIdentifier.debugDescription.getter(uint64_t a1)
{
  if (a1)
  {
    return sub_182AD2F38();
  }

  else
  {
    return 0x776F6C46206C6C41;
  }
}

BOOL static DefaultManyToManyProtocol.MultiplexedFlowIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return a1 == a2;
    }

    return 0;
  }

  return !a2;
}

uint64_t DefaultManyToManyProtocol.deinit()
{

  swift_unknownObjectRelease();
  sub_181F74148(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t sub_182168DE4(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16))
  {
    result = sub_18224EEF0(a2);
    if (v7)
    {
      *(*(*(v6 + 56) + 8 * result) + 16) = a1;

      swift_unknownObjectRetain();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_182168E74(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 40) + 16) && (sub_18224EEF0(a1), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_182168EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a1;
  if (v6 > 3)
  {
    v7 = *(a1 + 8);
    if (v6 != 4)
    {
      v7 = *a1;
      if (v6 != 5)
      {
        v7 = 0;
      }
    }
  }

  swift_beginAccess();
  if (*(*(v2 + 40) + 16) && (result = sub_18224EEF0(v7), (v9 & 1) != 0))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    v15 = v4;
    v16 = v5;
    v17 = v6;
    type metadata accessor for DefaultManyToManyProtocol.MultiplexedFlow();
    swift_allocObject();

    sub_181F68EA8(v4, v5, v6);
    v10 = sub_182174A68(v2, &v15);

    v18[0] = v4;
    v18[1] = v5;
    v19 = v6;
    sub_1821721D4(v18, &v15);
    v12 = v15;
    v11 = v16;
    v13 = v17;
    if (v17 != 255)
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[0] = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      sub_182258674(v10, v7, isUniquelyReferenced_nonNull_native);
      *(v2 + 40) = v18[0];
      swift_endAccess();

      *a2 = v12;
      *(a2 + 8) = v11;
      *(a2 + 16) = v13;
      return result;
    }

    *a2 = v12;
    *(a2 + 8) = v11;
  }

  *(a2 + 16) = -1;
  return result;
}

uint64_t sub_182169080()
{
  v1 = v0;
  v17 = 0;
  v18 = 0;
  v19 = 6;
  type metadata accessor for DefaultManyToManyProtocol.MultiplexedFlow();
  swift_allocObject();

  v3 = sub_182174A68(v2, &v17);

  v4 = v0[15];
  v5 = v1[16];
  if (*(v3 + 104) == 6 && *(v3 + 88) == 0)
  {
    *(v3 + 88) = v3;
    *(v3 + 96) = &off_1EEFC4E60;
    *(v3 + 104) = 3;
    sub_18206A450(v4, v5);

    sub_181F68E5C(0, 0, 6u);
  }

  else
  {
    sub_18206A450(v1[15], v1[16]);
  }

  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      goto LABEL_10;
    }

    v17 = *(v3 + 88);
    v18 = v6;
    v19 = v8;
    sub_181F68EA8(v7, v6, v8);
    v9 = ListenerHarnessProtocol.handleNewFlow(_:)(&v17);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v17 = v7;
    v18 = v6;
    v19 = v8;
    v11 = *(v5 + 16);
    sub_181F68EA8(v7, v6, v8);
    v9 = v11(&v17, ObjectType, v5);
  }

  v12 = v9;
  sub_181F74148(v4, v5);
  sub_181F68E5C(v7, v6, v8);
  if (v12)
  {
    v13 = *(v3 + 112);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v1[5];
    v1[5] = 0x8000000000000000;
    sub_182258674(v3, v13, isUniquelyReferenced_nonNull_native);
    v1[5] = v16;
    swift_endAccess();

    return v13;
  }

LABEL_10:

  return 0;
}

uint64_t sub_18216928C(__int128 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v21 = *a1;
  v9 = *(v4 + 120);
  v8 = *(v4 + 128);
  v19 = v9;
  v20 = v8;
  v10 = _s7Network21NewFlowHandlerLinkageV2eeoiySbAC_ACtFZ_0(&v21, &v19);
  v11 = v19;
  v12 = v20;
  sub_18206A450(v9, v8);
  result = sub_181F74148(v11, v12);
  if (!v10)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843348);

    v15 = sub_182AD2678();
    v16 = sub_182AD38C8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_181C64FFC(a2, a3, &v21);
      _os_log_impl(&dword_181A37000, v15, v16, "Received '%s' from incorrect new flow linkage", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1865DF520](v18, -1, -1);
      MEMORY[0x1865DF520](v17, -1, -1);
    }

    *a4 = 2;
    LOBYTE(v21) = 2;
    sub_181FEADD0();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t *sub_182169458@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 128);
  if (v3 >> 62 == 2 && ((v4 = v2, v3 == 0x8000000000000000) ? (v5 = *(v2 + 120) == 0) : (v5 = 0), v5))
  {
    v8 = *result;
    v7 = result[1];
    *(v2 + 120) = *result;
    *(v2 + 128) = v7;
    sub_18206A450(v8, v7);
    sub_181F74148(0, 0x8000000000000000);
    v9 = *(v2 + 120);
    v10 = *(v4 + 128);
    if (v10 >> 62)
    {
      if (v10 >> 62 == 1)
      {
        sub_18206A450(*(v4 + 120), *(v4 + 128));
        sub_181FE8FDC(0xD00000000000001BLL, 0x8000000182BD5A10);
        memcpy(__dst, (v9 + 48), sizeof(__dst));
        sub_181F481DC(__dst, v33);
        sub_181F74148(v9, v10);
        memcpy(__src, __dst, sizeof(__src));
        nullsub_41(__src);
        memcpy(v33, __src, sizeof(v33));
      }

      else
      {
        sub_181F74038(v33);
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 8);
      v13 = *(v12 + 40);
      sub_18206A450(v9, v10);
      v13(v33, ObjectType, v12);
      sub_181F74148(v9, v10);
    }

    memcpy(__dst, v33, sizeof(__dst));
    memcpy(__src, v33, sizeof(__src));
    if (sub_182064A58(__src) != 1)
    {
      if (!*(v4 + 96))
      {
        *(v4 + 96) = __src[35];
      }

      v30[0] = v4;
      v30[1] = 0x60000001EEFC49F0uLL;

      v14 = sub_181F6433C(v30);
      v16 = v15;

      if (v14)
      {
        v17 = swift_getObjectType();
        v18 = (*(v16 + 144))(v17, v16);
        if (v19)
        {
          v20 = 0;
        }

        else
        {
          v20 = v18;
        }

        *(v4 + 72) = v20;
        v21 = (*(v16 + 168))(v17, v16);
        v23 = v22;
        swift_unknownObjectRelease();
        if (v23)
        {
          v24 = v21;
        }

        else
        {
          v24 = 0;
        }

        v25 = 0xE000000000000000;
        if (v23)
        {
          v25 = v23;
        }

        *(v4 + 80) = v24;
        *(v4 + 88) = v25;
      }

      if ((*(v4 + 136) & 1) == 0)
      {
        v26 = __src[15];
        *(v4 + 136) = 1;
        *(v4 + 137) = (v26 & 0x200) != 0;
        (*(*v4 + 944))();
      }

      sub_182174B58(__dst);
    }

    v27 = *(v4 + 104);
    v28 = a2;
    if (!v27)
    {
      *(v4 + 104) = v4;
      *(v4 + 112) = &protocol witness table for DefaultManyToManyProtocol;

      v28 = a2;
    }

    v29 = *(v4 + 112);
    *v28 = v27;
    v28[1] = v29;
    return swift_unknownObjectRetain();
  }

  else
  {
    *a2 = xmmword_182AE69F0;
  }

  return result;
}

uint64_t sub_182169750(__int128 *a1)
{
  v6 = *a1;
  sub_18216928C(&v6, 0xD000000000000018, 0x8000000182BDF350, &v5);
  v2 = v1[15];
  v3 = v1[16];
  *(v1 + 15) = xmmword_182AE3CA0;
  sub_181F74148(v2, v3);
  v1[13] = 0;
  v1[14] = 0;
  swift_unknownObjectRelease();
  sub_182169CD0();
  return 1;
}

uint64_t sub_1821697D4(__int128 *a1)
{
  v26 = *a1;
  sub_18216928C(&v26, 0x287463656E6E6F63, 0xEB00000000293A5FLL, &v23);
  if ((*(v1 + 16) & 0x100) != 0)
  {
    return 1;
  }

  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 64);
  v18 = v2 + 64;
  v19 = v2;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v6; result = )
  {
    v10 = i;
LABEL_10:
    v11 = *(*(v19 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
    v13 = *(v11 + 288);
    v6 &= v6 - 1;
    v14 = *(v11 + 296);
    v23 = *(v11 + 280);
    v12 = v23;
    v24 = v13;
    v25 = v14;
    v16 = *(v11 + 312);
    v17 = *(v11 + 320);
    v20 = *(v11 + 304);
    v15 = v20;
    v21 = v16;
    v22 = v17;

    sub_181F68EA8(v12, v13, v14);
    sub_181F68EA8(v15, v16, v17);
    OutputHandlerLinkage.invokeConnect(_:)(&v20);
    sub_181F68E5C(v20, v21, v22);
    sub_181F68E5C(v23, v24, v25);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return 1;
    }

    v6 = *(v18 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1821699A8(__int128 *a1)
{
  v5 = *a1;
  sub_18216928C(&v5, 0x656E6E6F63736964, 0xEE00293A5F287463, &v4);
  *&v5 = 0;
  BYTE8(v5) = 1;
  v4 = 2;
  result = (*(*v1 + 1000))(0, &v5, &v4);
  if (result)
  {
    v3 = v1[16];
    *&v5 = v1[15];
    *(&v5 + 1) = v3;
    sub_18206A450(v5, v3);
    NewFlowHandlerLinkage.invokeDisconnected()();
    return sub_181F74148(v5, *(&v5 + 1));
  }

  return result;
}

uint64_t sub_182169A7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for DefaultManyToManyProtocol.MultiplexingPath();
  v4 = swift_allocObject();

  sub_182173B78(v5);
  v13[0] = v2;
  v13[1] = v3;
  v6 = sub_1821739C0(v13);
  if (v6)
  {
    v7 = *(v4 + 264);
    v8 = *(v4 + 272);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 48);
    *(v1 + 48) = 0x8000000000000000;
    sub_182258920(v4, v7, v8, isUniquelyReferenced_nonNull_native);
    *(v1 + 48) = v12;
    swift_endAccess();
    if (*(v1 + 64) == 1)
    {
      v10 = *(v4 + 272);
      *(v1 + 56) = *(v4 + 264);
      *(v1 + 64) = v10;
    }

    LOBYTE(v13[0]) = 2;
    sub_18217374C(v13);
  }

  return v6 & 1;
}

__n128 sub_182169B90@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  type metadata accessor for DefaultManyToManyProtocol.MultiplexingPath();
  v7 = swift_allocObject();

  sub_182173B78(v8);
  v18[0] = v4;
  v18[1] = v5;
  v19 = v6;
  sub_182173AA0(v18, &v16);
  v15 = v16;
  v9 = v17;
  if (v17 != 255)
  {
    v10 = *(v7 + 264);
    v11 = *(v7 + 272);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    sub_182258920(v7, v10, v11, isUniquelyReferenced_nonNull_native);
    *(v2 + 48) = v18[0];
    swift_endAccess();
    if (*(v2 + 64) == 1)
    {
      v13 = *(v7 + 272);
      *(v2 + 56) = *(v7 + 264);
      *(v2 + 64) = v13;
    }

    v16.n128_u8[0] = 2;
    sub_18217374C(&v16);
  }

  result = v15;
  *a2 = v15;
  a2[1].n128_u8[0] = v9;
  return result;
}

uint64_t sub_182169CD0()
{
  result = swift_beginAccess();
  if (!*(v0[5] + 16))
  {
    v2 = v0[16];
    if (v2 >> 62 == 2 && v2 == 0x8000000000000000 && v0[15] == 0)
    {
      v14 = 0;
      v15 = 1;
      v16 = 2;
      (*(*v0 + 1000))(0, &v14, &v16);
      swift_beginAccess();
      v4 = v0[6];
      v7 = *(v4 + 64);
      v6 = v4 + 64;
      v5 = v7;
      v8 = 1 << *(v0[6] + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & v5;
      v11 = (v8 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v12 = 0;
      if (v10)
      {
        goto LABEL_16;
      }

      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v11)
        {
        }

        v10 = *(v6 + 8 * v13);
        ++v12;
        if (v10)
        {
          v12 = v13;
          do
          {
LABEL_16:
            v10 &= v10 - 1;

            sub_182173BE8();
          }

          while (v10);
          continue;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_182169E64(uint64_t a1, char a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_18224EEF0(a1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 40);
    v12 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_182255138();
      v10 = v12;
    }

    sub_181FAA514(v8, v10);
    *(v3 + 40) = v10;
  }

  result = swift_endAccess();
  if (a2)
  {
    return sub_182169CD0();
  }

  return result;
}

uint64_t sub_182169F20(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = sub_18224F070(v3, v4);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 48);
    v11 = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1822554CC();
      v9 = v11;
    }

    sub_181FAA8A8(v7, v9);
    *(v2 + 48) = v9;
  }

  return swift_endAccess();
}

void sub_182169FD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16) && (v7 = sub_18224EEF0(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = *(v9 + 72);
    v11 = *(v9 + 80);
    __src[0] = *(v9 + 64);
    __src[1] = v10;
    LOBYTE(__src[2]) = v11;
    sub_181F68EA8(__src[0], v10, v11);
    InputHandlerLinkage.invokeGetParameters()(a2);
    sub_181F68E5C(__src[0], __src[1], __src[2]);
  }

  else
  {
    v12 = *(v3 + 120);
    v13 = *(v3 + 128);
    if (v13 >> 62)
    {
      if (v13 >> 62 == 1)
      {
        sub_18206A450(v12, v13);
        sub_181FE8FDC(0xD00000000000001BLL, 0x8000000182BD5A10);
        memcpy(__dst, (v12 + 48), sizeof(__dst));
        sub_181F481DC(__dst, __src);
        sub_181F74148(v12, v13);
        memcpy(__src, __dst, sizeof(__src));
        nullsub_41(__src);
      }

      else
      {
        sub_181F74038(__src);
      }

      memcpy(a2, __src, 0x188uLL);
    }

    else
    {
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 8);
      v16 = *(v15 + 40);
      sub_18206A450(v12, v13);
      v16(ObjectType, v15);
      sub_181F74148(v12, v13);
    }
  }
}

uint64_t sub_18216A164(const void *a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(v4 + 40);
  if (*(v9 + 16) && (v10 = sub_18224EEF0(a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = *(v12 + 64);
    v14 = *(v12 + 72);
    v15 = *(v12 + 80);
    v23 = v13;
    memcpy(__dst, a1, sizeof(__dst));

    sub_181F68EA8(v13, v14, v15);
    v16 = sub_181F74074(__dst, v12, &off_1EEFC4E48, a4);
    sub_181F68E5C(v23, v14, v15);
    if (v16)
    {
    }

    else
    {
      v20 = *(v12 + 64);
      v21 = *(v12 + 72);
      v22 = *(v12 + 80);
      v25 = v20;
      memcpy(__dst, a1, sizeof(__dst));
      sub_181F68EA8(v20, v21, v22);
      v16 = sub_181F74074(__dst, v5, &protocol witness table for DefaultManyToManyProtocol, a4);

      sub_181F68E5C(v25, v21, v22);
    }
  }

  else
  {
    v17 = *(v5 + 120);
    v18 = *(v5 + 128);
    v24 = v17;
    memcpy(__dst, a1, sizeof(__dst));
    sub_18206A450(v17, v18);
    v16 = sub_181F74164(__dst, v5, &protocol witness table for DefaultManyToManyProtocol);
    sub_181F74148(v24, v18);
  }

  return v16;
}

uint64_t sub_18216A328(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(v2 + 40);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = v2;
  v6 = sub_18224EEF0(a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  v10 = *(v8 + 64);
  v9 = *(v8 + 72);
  v11 = *(v8 + 80);
  if (v11 != 4)
  {
    v21 = v8;
    v22 = 0x60000001EEFC4E48uLL;

    sub_181F68EA8(v10, v9, v11);
    v14 = sub_181F6433C(&v21);
    sub_181F68E5C(v10, v9, v11);
    if (v14)
    {

      return v14;
    }

    goto LABEL_10;
  }

  sub_181F68EA8(v10, v9, 4u);
  sub_181F636F0(v10, &v21);
  v12 = v21;
  if (!v21)
  {
    sub_181F68E5C(v10, v9, 4u);
LABEL_10:
    v15 = *(v8 + 64);
    v16 = *(v8 + 72);
    v17 = *(v8 + 80);
    if (v17 == 4)
    {
      sub_181F68EA8(*(v8 + 64), *(v8 + 72), 4u);
      sub_181F636F0(v15, &v21);
      v12 = v21;

      v18 = v15;
      v19 = v16;
      v20 = 4;
    }

    else
    {
      v21 = v5;
      v22 = 0x60000001EEFC49F0uLL;
      sub_181F68EA8(v15, v16, v17);

      v12 = sub_181F6433C(&v21);

      v18 = v15;
      v19 = v16;
      v20 = v17;
    }

    sub_181F68E5C(v18, v19, v20);
    return v12;
  }

  sub_181F68E5C(v10, v9, 4u);

  return v12;
}

uint64_t sub_18216A540(uint64_t result)
{
  if ((v1[136] & 1) == 0)
  {
    v1[136] = 1;
    v1[137] = result & 1;
    return (*(*v1 + 944))();
  }

  return result;
}

uint64_t sub_18216A588(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if ((v3 & 0x100) == 0)
  {
    *(v2 + 16) = v3 | 0x100;
  }

  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  v6 = *(v2 + 40);
  if ((v3 & 0x100) != 0 || *(v6 + 16))
  {
    v20 = v4;
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v10 = (v7 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v12 = 0;
    while (v9)
    {
LABEL_14:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = *(*(v6 + 56) + ((v12 << 9) | (8 * v14)));
      v16 = *(v15 + 56);
      if ((v16 & 0xC) == 4)
      {
        *(v15 + 56) = v16 | 8;
        v17 = *(v15 + 112);
        v21 = *(*v2 + 880);

        v21(v17, v16 & 1);
      }
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v4 = v20;
        goto LABEL_17;
      }

      v9 = *(v6 + 64 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    (*(*v2 + 880))(0, *(v2 + 137));
LABEL_17:
    result = swift_beginAccess();
    if (*(*(v2 + 48) + 16))
    {
      result = sub_18224F070(v4, v5);
      if (v18)
      {

        sub_18216EC24(v19);
      }
    }
  }

  return result;
}

uint64_t sub_18216A7C8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = swift_beginAccess();
  if (*(*(v1 + 48) + 16))
  {
    result = sub_18224F070(v2, v3);
    if (v5)
    {

      result = sub_182173BE8();
      v6 = 0;
      v7 = 0;
      v8 = *(v1 + 48);
      v9 = 1 << *(v8 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v8 + 64);
      v12 = (v9 + 63) >> 6;
      if (v11)
      {
        while (1)
        {
          v13 = v6;
LABEL_11:
          v14 = __clz(__rbit64(v11));
          v11 &= v11 - 1;
          v7 |= *(*(*(v8 + 56) + ((v13 << 9) | (8 * v14))) + 17) != 1;
          if (!v11)
          {
            goto LABEL_7;
          }
        }
      }

      while (1)
      {
LABEL_7:
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v13 >= v12)
        {
          break;
        }

        v11 = *(v8 + 64 + 8 * v13);
        ++v6;
        if (v11)
        {
          v6 = v13;
          goto LABEL_11;
        }
      }

      if (v7)
      {
      }

      v15 = *(v1 + 16);
      if ((v15 & 2) == 0)
      {
        *(v1 + 16) = v15 | 2;
      }

      swift_beginAccess();
      v16 = *(v1 + 40);
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 64);
      v20 = (v17 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v21 = 0;
      if (v19)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
        }

        v19 = *(v16 + 64 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          do
          {
LABEL_24:
            v23 = *(*(v16 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
            v24 = *(v23 + 64);
            v25 = *(v23 + 72);
            v26 = *(v23 + 80);
            v32 = v24;
            v33 = v25;
            v34 = v26;
            if (*(v23 + 104) == 6 && *(v23 + 88) == 0)
            {
              *(v23 + 88) = v23;
              *(v23 + 96) = &off_1EEFC4E60;
              *(v23 + 104) = 3;
              swift_retain_n();
              sub_181F68EA8(v24, v25, v26);
              sub_181F68E5C(0, 0, 6u);
            }

            else
            {

              sub_181F68EA8(v24, v25, v26);
            }

            v19 &= v19 - 1;
            v27 = *(v23 + 96);
            v28 = *(v23 + 104);
            v29 = *(v23 + 88);
            v30 = v27;
            v31 = v28;
            sub_181F68EA8(v29, v27, v28);
            InputHandlerLinkage.invokeDisconnected(_:)(&v29);
            sub_181F68E5C(v29, v30, v31);
            sub_181F68E5C(v32, v33, v34);
          }

          while (v19);
        }
      }

LABEL_33:
      __break(1u);
    }
  }

  return result;
}

void sub_18216AAA8(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v3 = v1[5];
    if (*(v3 + 16))
    {
      v4 = sub_18224EEF0(a1);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);
        v7 = *(v6 + 56);
        if ((v7 & 0x10) == 0)
        {
          *(v6 + 56) = v7 | 0x10;
          if ((v7 & 4) != 0)
          {
            v10 = *(v6 + 64);
            v11 = *(v6 + 72);
            v12 = *(v6 + 80);
            v18 = v10;
            v19 = v11;
            v20 = v12;
            if (*(v6 + 104) == 6 && *(v6 + 88) == 0)
            {
              *(v6 + 88) = v6;
              *(v6 + 96) = &off_1EEFC4E60;
              *(v6 + 104) = 3;
              swift_retain_n();
              sub_181F68EA8(v10, v11, v12);
              sub_181F68E5C(0, 0, 6u);
            }

            else
            {

              sub_181F68EA8(v10, v11, v12);
            }

            v13 = *(v6 + 96);
            v14 = *(v6 + 104);
            v15 = *(v6 + 88);
            v16 = v13;
            v17 = v14;
            sub_181F68EA8(v15, v13, v14);
            InputHandlerLinkage.invokeConnected(_:)(&v15);

            sub_181F68E5C(v15, v16, v17);
            sub_181F68E5C(v18, v19, v20);
          }

          else if ((v7 & 0x20) == 0)
          {
            *(v6 + 56) = v7 | 0x30;
          }
        }
      }
    }
  }

  else
  {
    v8 = v1[16];
    v21 = v1[15];
    v22 = v8;
    sub_18206A450(v21, v8);
    NewFlowHandlerLinkage.invokeConnected()();
    sub_181F74148(v21, v22);

    sub_182174CFC(v9, v1);
  }
}

uint64_t sub_18216AC50(uint64_t result, int *a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = *(a2 + 4);
  if (result)
  {
    v6 = result;
    result = swift_beginAccess();
    if (*(*(v2 + 40) + 16))
    {
      result = sub_18224EEF0(v6);
      if (v7)
      {
        v26 = v4;
        v27 = v5;

        sub_182173220(&v26);
      }
    }
  }

  else
  {
    v8 = *(v2 + 16);
    if ((v8 & 1) == 0)
    {
      *(v2 + 16) = v8 | 1;
      if ((v5 & 1) == 0)
      {
        v9 = *(v2 + 120);
        v10 = *(v3 + 128);
        if (v10 >> 62)
        {
          if (v10 >> 62 == 1)
          {
            sub_18206A450(*(v3 + 120), *(v3 + 128));
            sub_181FE8FDC(0x6465766965636552, 0xEE00726F72726520);
            sub_181F74148(v9, v10);
          }
        }

        else
        {
          ObjectType = swift_getObjectType();
          v28 = 0;
          v29 = 0;
          v30 = 6;
          v26 = v4;
          v27 = 0;
          v12 = *(v10 + 8);
          v13 = *(v12 + 32);
          sub_18206A450(v9, v10);
          v13(&v28, &v26, ObjectType, v12);
          sub_181F74148(v9, v10);
          sub_181F68E5C(v28, v29, v30);
        }
      }

      v14 = *(v3 + 128);
      v28 = *(v3 + 120);
      v29 = v14;
      sub_18206A450(v28, v14);
      NewFlowHandlerLinkage.invokeDisconnected()();
      sub_181F74148(v28, v29);
      swift_beginAccess();
      v15 = *(v3 + 40);
      v18 = *(v15 + 64);
      v17 = v15 + 64;
      v16 = v18;
      v19 = 1 << *(*(v3 + 40) + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & v16;
      v22 = (v19 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v23 = 0;
      if (v21)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          return result;
        }

        if (v24 >= v22)
        {
          break;
        }

        v21 = *(v17 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          do
          {
LABEL_19:
            v21 &= v21 - 1;
            v26 = v4;
            v27 = v5;

            sub_182173220(&v26);
          }

          while (v21);
          continue;
        }
      }

      v25 = *(v3 + 16);
      if (v25)
      {
        *(v3 + 16) = v25 & 0xFFFE;
      }
    }
  }

  return result;
}

void sub_18216AEE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(v5 + 40);
  if (!*(v12 + 16))
  {
    goto LABEL_33;
  }

  v13 = sub_18224EEF0(a1);
  if ((v14 & 1) == 0)
  {
    goto LABEL_33;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  if ((*(v15 + 56) & 2) == 0)
  {
    v16 = *(v6 + 16);
    if ((v16 & 4) == 0)
    {
      *(v6 + 16) = v16 | 4;
    }
  }

  v17 = (v15 + 120);
  swift_beginAccess();
  if (*(v15 + 344) == 1)
  {
    goto LABEL_33;
  }

  v136 = a3;
  swift_beginAccess();
  v18 = *(v15 + 336);
  if (*(v15 + 144) == 5)
  {
    v19 = *(v15 + 120);

    v6 = nw_frame_unclaimed_length(v19);
    v138 = (v15 + 120);
    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v20 = *(v15 + 192);
  if (!v20)
  {

    v6 = 0;
    v138 = (v15 + 120);
    if (!v18)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v21 = *(v15 + 176);
  v22 = *(v15 + 184);
  v93 = __OFADD__(v21, v22);
  v23 = v21 + v22;
  if (v93)
  {
    goto LABEL_121;
  }

  v6 = v20 - v23;
  if (__OFSUB__(v20, v23))
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    sub_181F68EF4(a2, v18, a5, v15);

    sub_181F68F3C(v17, a4, v6);
    __break(1u);
    goto LABEL_127;
  }

  v138 = (v15 + 120);
  if (v18)
  {
LABEL_16:
    v24 = a4;
    a4 = *(v18 + 32);
    v25 = *(v18 + 24) + a4;
    if (*(v18 + 16) < v25)
    {
      v25 = *(v18 + 16);
    }

    *&v154 = v18;
    *(&v154 + 1) = a4;
    *&v155 = v25;
    v26 = swift_retain_n();
    v17 = v18;
    while (1)
    {
      if (a4 == v155)
      {
        if ((sub_181AC81FC(v26) & 1) == 0)
        {

          v17 = v138;
          a4 = v24;
          break;
        }

        a4 = *(&v154 + 1);
        v17 = v154;
      }

      v28 = &v17[a4++];
      *(&v154 + 1) = a4;
      v29 = v28[5];
      swift_beginAccess();
      if (*(v29 + 40) == 5)
      {
        v27 = *(v29 + 2);

        a1 = nw_frame_unclaimed_length(v27);
      }

      else
      {
        v30 = *(v29 + 11);
        if (v30)
        {
          v31 = *(v29 + 9);
          v32 = *(v29 + 10);
          v93 = __OFADD__(v31, v32);
          v33 = v31 + v32;
          if (v93)
          {
            goto LABEL_110;
          }

          a1 = v30 - v33;
          if (__OFSUB__(v30, v33))
          {
            goto LABEL_111;
          }
        }

        else
        {

          a1 = 0;
        }
      }

      swift_endAccess();

      v93 = __OFADD__(v6, a1);
      v6 += a1;
      if (v93)
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }
  }

LABEL_31:
  swift_endAccess();
  if (v6 < a2)
  {

LABEL_33:
    sub_181F73CAC(&v169);
    goto LABEL_34;
  }

  swift_beginAccess();
  if (*(v15 + 344) == 1)
  {
    swift_endAccess();
    a1 = v136;
    if (a2 > 0 || v136 < 0 || a4 < 0)
    {
      goto LABEL_71;
    }

LABEL_70:
    swift_beginAccess();
    v58 = *(v17 + 13);
    v151 = *(v17 + 12);
    v152 = v58;
    v153 = *(v17 + 224);
    v59 = *(v17 + 9);
    v147 = *(v17 + 8);
    v148 = v59;
    v60 = *(v17 + 11);
    v149 = *(v17 + 10);
    v150 = v60;
    v61 = *(v17 + 5);
    v143 = *(v17 + 4);
    v144 = v61;
    v62 = *(v17 + 7);
    v145 = *(v17 + 6);
    v146 = v62;
    v63 = *(v17 + 1);
    v139 = *v17;
    v140 = v63;
    v64 = *(v17 + 3);
    v141 = *(v17 + 2);
    v142 = v64;
    FrameArray.init()(&v154);
    v65 = v167;
    *(v17 + 12) = v166;
    *(v17 + 13) = v65;
    *(v17 + 224) = v168;
    v66 = v163;
    *(v17 + 8) = v162;
    *(v17 + 9) = v66;
    v67 = v165;
    *(v17 + 10) = v164;
    *(v17 + 11) = v67;
    v68 = v159;
    *(v17 + 4) = v158;
    *(v17 + 5) = v68;
    v69 = v161;
    *(v17 + 6) = v160;
    *(v17 + 7) = v69;
    v70 = v155;
    *v17 = v154;
    *(v17 + 1) = v70;
    v71 = v157;
    *(v17 + 2) = v156;
    *(v17 + 3) = v71;
    swift_endAccess();

    v181 = v151;
    v182 = v152;
    v183 = v153;
    v177 = v147;
    v178 = v148;
    v179 = v149;
    v180 = v150;
    v173 = v143;
    v174 = v144;
    v175 = v145;
    v176 = v146;
    v169 = v139;
    v170 = v140;
    v171 = v141;
    v172 = v142;
    nullsub_41(&v169);
LABEL_34:
    v34 = v182;
    *(a5 + 192) = v181;
    *(a5 + 208) = v34;
    *(a5 + 224) = v183;
    v35 = v178;
    *(a5 + 128) = v177;
    *(a5 + 144) = v35;
    v36 = v180;
    *(a5 + 160) = v179;
    *(a5 + 176) = v36;
    v37 = v174;
    *(a5 + 64) = v173;
    *(a5 + 80) = v37;
    v38 = v176;
    *(a5 + 96) = v175;
    *(a5 + 112) = v38;
    v39 = v170;
    *a5 = v169;
    *(a5 + 16) = v39;
    v41 = v171;
    v40 = v172;
LABEL_35:
    *(a5 + 32) = v41;
    *(a5 + 48) = v40;
    return;
  }

  v18 = *(v15 + 336);
  if (*(v15 + 144) == 5)
  {
    v6 = nw_frame_unclaimed_length(*(v15 + 120));
    goto LABEL_49;
  }

  v42 = *(v15 + 192);
  if (!v42)
  {
    goto LABEL_48;
  }

  v43 = *(v15 + 176);
  v44 = *(v15 + 184);
  v93 = __OFADD__(v43, v44);
  v45 = v43 + v44;
  if (v93)
  {
    goto LABEL_125;
  }

  v6 = v42 - v45;
  if (__OFSUB__(v42, v45))
  {
    __break(1u);
LABEL_48:
    v6 = 0;
  }

LABEL_49:
  if (v18)
  {
    v46 = a4;
    a4 = *(v18 + 32);
    v47 = *(v18 + 24) + a4;
    if (*(v18 + 16) < v47)
    {
      v47 = *(v18 + 16);
    }

    *&v154 = v18;
    *(&v154 + 1) = a4;
    *&v155 = v47;
    v48 = swift_retain_n();
    v17 = v18;
    while (1)
    {
      if (a4 == v155)
      {
        if ((sub_181AC81FC(v48) & 1) == 0)
        {

          v56 = *(v18 + 24);
          v17 = v138;
          a4 = v46;
          goto LABEL_66;
        }

        a4 = *(&v154 + 1);
        v17 = v154;
      }

      v50 = &v17[a4++];
      *(&v154 + 1) = a4;
      v51 = v50[5];
      swift_beginAccess();
      if (*(v51 + 40) == 5)
      {
        v49 = *(v51 + 2);

        a1 = nw_frame_unclaimed_length(v49);
      }

      else
      {
        v52 = *(v51 + 11);
        if (v52)
        {
          v53 = *(v51 + 9);
          v54 = *(v51 + 10);
          v93 = __OFADD__(v53, v54);
          v55 = v53 + v54;
          if (v93)
          {
            goto LABEL_113;
          }

          a1 = v52 - v55;
          if (__OFSUB__(v52, v55))
          {
            goto LABEL_114;
          }
        }

        else
        {

          a1 = 0;
        }
      }

      swift_endAccess();

      v93 = __OFADD__(v6, a1);
      v6 += a1;
      if (v93)
      {
        goto LABEL_112;
      }
    }
  }

  v56 = 0;
LABEL_66:
  v57 = v56 + 1;
  a1 = v136;
  if (__OFADD__(v56, 1))
  {
    goto LABEL_123;
  }

  swift_endAccess();
  if (v6 >= a2 && v6 <= v136 && v57 <= a4)
  {
    goto LABEL_70;
  }

LABEL_71:
  FrameArray.init()(&v169);
  v72 = *(v15 + 344);
  v131 = v15;
  v132 = a5;
  if ((v72 & 1) != 0 || a4 < 1)
  {
    goto LABEL_128;
  }

  do
  {
    swift_beginAccess();
    if (*(v15 + 144) == 5)
    {
      v73 = nw_frame_unclaimed_length(*v17);
    }

    else
    {
      v74 = *(v15 + 192);
      if (!v74)
      {
        swift_endAccess();
        goto LABEL_79;
      }

      v75 = *(v15 + 176);
      v76 = *(v15 + 184);
      v93 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v93)
      {
        goto LABEL_118;
      }

      v73 = v74 - v77;
      if (__OFSUB__(v74, v77))
      {
        goto LABEL_119;
      }
    }

    swift_endAccess();
    if (v73)
    {
      goto LABEL_127;
    }

LABEL_79:
    swift_beginAccess();
    FrameArray.popFirst()(&v139);
    swift_endAccess();
    if (v183 == 1)
    {
      v134 = a4;
      v164 = v149;
      v165 = v150;
      v166 = v151;
      LOBYTE(v167) = v152;
      v160 = v145;
      v161 = v146;
      v162 = v147;
      v163 = v148;
      v156 = v141;
      v157 = v142;
      v158 = v143;
      v159 = v144;
      v154 = v139;
      v155 = v140;
      v18 = *(&v169 + 1);
      a2 = v169;
      a5 = v170;
      v15 = BYTE8(v170);
      a4 = *(&v171 + 1);
      v17 = v171;
      v6 = v172;
      a1 = v178;
      v78 = v179;

      if (v6 != 2 || __PAIR128__(a4, v17) != 0)
      {
        goto LABEL_126;
      }

      if (a1)
      {
        v79 = v78;
      }

      else
      {
        v79 = 1;
      }

      if ((v79 & 1) == 0)
      {
        MEMORY[0x1865DF520](a1, -1, -1);
      }

      sub_181F68EF4(a2, v18, a5, v15);

      v179 = v164;
      v180 = v165;
      v181 = v166;
      v175 = v160;
      v176 = v161;
      v177 = v162;
      v178 = v163;
      v171 = v156;
      v172 = v157;
      v173 = v158;
      v174 = v159;
      v169 = v154;
      v170 = v155;
      v182 = v167;
      v183 = 0;
      v15 = v131;
      a5 = v132;
      a1 = v136;
      v17 = v138;
      a4 = v134;
    }

    else
    {
      v80 = *(&v182 + 1);
      if (!*(&v182 + 1))
      {
        v80 = *sub_182AD2388();
        *(&v182 + 1) = v80;
      }

      type metadata accessor for FrameArrayEntry();
      a2 = swift_allocObject();
      swift_beginAccess();
      v81 = v144;
      *(a2 + 80) = v143;
      *(a2 + 96) = v81;
      v82 = v142;
      *(a2 + 48) = v141;
      *(a2 + 64) = v82;
      v83 = v148;
      *(a2 + 144) = v147;
      *(a2 + 160) = v83;
      v84 = v146;
      *(a2 + 112) = v145;
      *(a2 + 128) = v84;
      *(a2 + 224) = v152;
      v85 = v151;
      *(a2 + 192) = v150;
      *(a2 + 208) = v85;
      *(a2 + 176) = v149;
      v86 = v140;
      *(a2 + 16) = v139;
      *(a2 + 32) = v86;
      v87 = v80[3];
      v6 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_115;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v80[2] < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181F461F8(isUniquelyReferenced_nonNull_native, v6);
        v80 = *(&v182 + 1);
      }

      v89 = v80[3];
      v90 = v80[4];
      v93 = __OFADD__(v90, v89);
      v91 = v90 + v89;
      if (v93)
      {
        goto LABEL_116;
      }

      if (v89 < 0)
      {
        if (v91 < 0)
        {
          v95 = v80[2];
          v93 = __OFADD__(v91, v95);
          v91 += v95;
          if (v93)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        v92 = v80[2];
        v93 = __OFSUB__(v91, v92);
        v94 = v91 - v92;
        if (v94 < 0 == v93)
        {
          v91 = v94;
          if (v93)
          {
            goto LABEL_120;
          }
        }
      }

      v80[v91 + 5] = a2;
      v93 = __OFADD__(v89, 1);
      v96 = v89 + 1;
      if (v93)
      {
        goto LABEL_117;
      }

      v80[3] = v96;
    }

    v97 = a4 - 1;
    v72 = *(v15 + 344);
    if (v72)
    {
      break;
    }
  }

  while (a4-- >= 2);
  v99 = a1;
  a4 = v97;
  while (1)
  {
    if ((v72 & 1) != 0 || (v100 = a4 - 1, a4 < 1) || v99 < 1)
    {

      v166 = v181;
      v167 = v182;
      v168 = v183;
      v162 = v177;
      v163 = v178;
      v164 = v179;
      v165 = v180;
      v158 = v173;
      v159 = v174;
      v160 = v175;
      v161 = v176;
      v154 = v169;
      v155 = v170;
      v156 = v171;
      v157 = v172;
      nullsub_41(&v154);
      v125 = v167;
      *(a5 + 192) = v166;
      *(a5 + 208) = v125;
      *(a5 + 224) = v168;
      v126 = v163;
      *(a5 + 128) = v162;
      *(a5 + 144) = v126;
      v127 = v165;
      *(a5 + 160) = v164;
      *(a5 + 176) = v127;
      v128 = v159;
      *(a5 + 64) = v158;
      *(a5 + 80) = v128;
      v129 = v161;
      *(a5 + 96) = v160;
      *(a5 + 112) = v129;
      v130 = v155;
      *a5 = v154;
      *(a5 + 16) = v130;
      v41 = v156;
      v40 = v157;
      goto LABEL_35;
    }

    swift_beginAccess();
    if (*(v15 + 144) == 5)
    {
      v18 = nw_frame_unclaimed_length(*v17);
      goto LABEL_137;
    }

    v101 = *(v15 + 192);
    if (!v101)
    {
      break;
    }

    v102 = *(v15 + 176);
    v103 = *(v15 + 184);
    v93 = __OFADD__(v102, v103);
    v104 = v102 + v103;
    if (v93)
    {
      goto LABEL_169;
    }

    v18 = v101 - v104;
    if (__OFSUB__(v101, v104))
    {
      goto LABEL_170;
    }

LABEL_137:
    swift_endAccess();
    a1 = 0;
    if (v99 >= v18)
    {
      goto LABEL_140;
    }

LABEL_127:
    v72 = *(v15 + 344);
LABEL_128:
    v99 = a1;
  }

  swift_endAccess();
  v18 = 0;
LABEL_140:
  swift_beginAccess();
  FrameArray.popFirst()(&v139);
  swift_endAccess();
  if (v183 == 1)
  {
    v133 = v18;
    v135 = a4 - 1;
    v137 = v99;
    v164 = v149;
    v165 = v150;
    v166 = v151;
    LOBYTE(v167) = v152;
    v160 = v145;
    v161 = v146;
    v162 = v147;
    v163 = v148;
    v156 = v141;
    v157 = v142;
    v158 = v143;
    v159 = v144;
    v154 = v139;
    v155 = v140;
    v17 = *(&v169 + 1);
    a4 = v169;
    v100 = v170;
    LOBYTE(v18) = BYTE8(v170);
    a5 = *(&v171 + 1);
    v6 = v171;
    LODWORD(v15) = v172;
    v105 = v178;
    v106 = v179;

    if (v15 != 2 || __PAIR128__(a5, v6) != 0)
    {
      goto LABEL_175;
    }

    if (v105)
    {
      v107 = v106;
    }

    else
    {
      v107 = 1;
    }

    if ((v107 & 1) == 0)
    {
      MEMORY[0x1865DF520](v105, -1, -1);
    }

    sub_181F68EF4(a4, v17, v100, v18);

    v179 = v164;
    v180 = v165;
    v181 = v166;
    v175 = v160;
    v176 = v161;
    v177 = v162;
    v178 = v163;
    v171 = v156;
    v172 = v157;
    v173 = v158;
    v174 = v159;
    v169 = v154;
    v170 = v155;
    v182 = v167;
    v183 = 0;
    v15 = v131;
    a5 = v132;
    v99 = v137;
    v17 = v138;
    v18 = v133;
    v100 = v135;
    goto LABEL_165;
  }

  v108 = *(&v182 + 1);
  if (!*(&v182 + 1))
  {
    v108 = *sub_182AD2388();
    *(&v182 + 1) = v108;
  }

  type metadata accessor for FrameArrayEntry();
  a4 = swift_allocObject();
  swift_beginAccess();
  v109 = v144;
  *(a4 + 80) = v143;
  *(a4 + 96) = v109;
  v110 = v142;
  *(a4 + 48) = v141;
  *(a4 + 64) = v110;
  v111 = v148;
  *(a4 + 144) = v147;
  *(a4 + 160) = v111;
  v112 = v146;
  *(a4 + 112) = v145;
  *(a4 + 128) = v112;
  *(a4 + 224) = v152;
  v113 = v151;
  *(a4 + 192) = v150;
  *(a4 + 208) = v113;
  *(a4 + 176) = v149;
  v114 = v140;
  *(a4 + 16) = v139;
  *(a4 + 32) = v114;
  v115 = v108[3];
  v6 = v115 + 1;
  if (__OFADD__(v115, 1))
  {
    goto LABEL_171;
  }

  v116 = swift_isUniquelyReferenced_nonNull_native();
  if (v108[2] < v6 || (v116 & 1) == 0)
  {
    sub_181F461F8(v116, v6);
    v108 = *(&v182 + 1);
  }

  v117 = v108[3];
  v118 = v108[4];
  v93 = __OFADD__(v118, v117);
  v119 = v118 + v117;
  if (v93)
  {
    goto LABEL_172;
  }

  if (v117 < 0)
  {
LABEL_161:
    if (v119 < 0)
    {
      v123 = v108[2];
      v93 = __OFADD__(v119, v123);
      v119 += v123;
      if (v93)
      {
        goto LABEL_174;
      }
    }

    goto LABEL_163;
  }

  v120 = v108[2];
  v121 = __OFSUB__(v119, v120);
  v122 = v119 - v120;
  if (v122 < 0 == v121)
  {
    v119 = v122;
    if (v121)
    {
      __break(1u);
      goto LABEL_161;
    }
  }

LABEL_163:
  v108[v119 + 5] = a4;
  v93 = __OFADD__(v117, 1);
  v124 = v117 + 1;
  if (v93)
  {
    goto LABEL_173;
  }

  v108[3] = v124;
LABEL_165:
  a1 = v99 - v18;
  if (!__OFSUB__(v99, v18))
  {
    a4 = v100;
    goto LABEL_127;
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_181F68EF4(a4, v17, v100, v18);

  sub_181F68F3C(v6, a5, v15);
  __break(1u);
}

void sub_18216BBA0(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v421 = *a1;
  v422 = v2;
  (*(*v1 + 1216))(&v421);
  v3 = *(v1 + 16);
  if ((v3 & 0x80) != 0)
  {
    *(v1 + 16) = v3 & 0xFF7F;
  }

  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = *(v4 + 64);
  v413 = v4;
  v414 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = &off_1EEFC4E60;
  while (v8)
  {
LABEL_12:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = *(*(v413 + 56) + ((v10 << 9) | (8 * v13)));
    if ((*(v14 + 56) & 0x10) != 0)
    {
      swift_beginAccess();
      if (*(v14 + 344))
      {
      }

      else
      {
        v21 = *(v14 + 72);
        v412 = *(v14 + 64);
        v22 = *(v14 + 80);
        if (*(v14 + 104) == 6 && *(v14 + 88) == 0)
        {
          *(v14 + 88) = v14;
          *(v14 + 96) = v11;
          *(v14 + 104) = 3;
          swift_retain_n();
          sub_181F68EA8(v412, v21, v22);
          sub_181F68E5C(0, 0, 6u);
        }

        else
        {

          sub_181F68EA8(v412, v21, v22);
        }

        v23 = *(v14 + 88);
        v24 = *(v14 + 96);
        v25 = *(v14 + 104);
        if (v22 <= 2)
        {
          v406 = *(v14 + 104);
          v408 = *(v14 + 88);
          v410 = *(v14 + 96);
          v29 = v11;
          if (!v22)
          {
            v52 = *(v14 + 88);
            if ((sub_181F74A48(v23, v24, v25, *(v412 + 40), *(v412 + 48), *(v412 + 56)) & 1) == 0)
            {
              sub_181F68EA8(v52, v24, v25);
              if (qword_1EA8371A0 != -1)
              {
                swift_once();
              }

              v78 = sub_182AD2698();
              __swift_project_value_buffer(v78, qword_1EA843348);
              v79 = sub_182AD2678();
              v80 = sub_182AD38C8();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = v21;
                v82 = swift_slowAlloc();
                v83 = swift_slowAlloc();
                v418 = v83;
                *v82 = 136315138;
                *(v82 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                _os_log_impl(&dword_181A37000, v79, v80, "Received '%s' from incorrect output linkage", v82, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v83);
                v84 = v83;
                v11 = &off_1EEFC4E60;
                MEMORY[0x1865DF520](v84, -1, -1);
                v85 = v82;
                v21 = v81;
                MEMORY[0x1865DF520](v85, -1, -1);
              }

              else
              {
                v11 = v29;
              }

              LOBYTE(v418) = 1;
              sub_181FEADD0();
              swift_willThrowTypedImpl();
              v107 = v412;
              v108 = v21;
              v109 = 0;
              goto LABEL_90;
            }

            v53 = v25;
            v31 = *(v412 + 16);
            v379 = *(v412 + 24);
            v54 = *(v412 + 32);
            if (*(v412 + 128) == 6 && *(v412 + 112) == 0)
            {
              *(v412 + 112) = v412;
              *(v412 + 120) = 0;
              *(v412 + 128) = 0;
              sub_181F68EA8(v412, v21, 0);
              sub_181F68EA8(v408, v410, v53);
              sub_181F68EA8(v31, v379, v54);
              sub_181F68E5C(0, 0, 6u);
            }

            else
            {
              sub_181F68EA8(v408, v410, v53);
              sub_181F68EA8(v31, v379, v54);
            }

            v11 = v29;
            v56 = *(v412 + 112);
            v55 = *(v412 + 120);
            v57 = *(v412 + 128);
            if (v54 <= 2)
            {
              v366 = *(v412 + 112);
              v373 = *(v412 + 120);
              if (v54)
              {
                if (v54 == 1)
                {
                  v110 = *(v412 + 128);
                  v111 = *(v412 + 120);
                  if ((sub_181F74A48(*(v412 + 112), v55, v57, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                  {
                    v357 = v31;
                    sub_181F68EA8(v366, v111, v110);
                    if (qword_1EA8371A0 != -1)
                    {
                      swift_once();
                    }

                    v254 = sub_182AD2698();
                    __swift_project_value_buffer(v254, qword_1EA843348);
                    v255 = sub_182AD2678();
                    v256 = sub_182AD38C8();
                    if (os_log_type_enabled(v255, v256))
                    {
                      v391 = v21;
                      v257 = v11;
                      v258 = swift_slowAlloc();
                      v398 = v9;
                      v259 = v110;
                      v260 = swift_slowAlloc();
                      v418 = v260;
                      *v258 = 136315138;
                      *(v258 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                      _os_log_impl(&dword_181A37000, v255, v256, "Received '%s' from incorrect output linkage", v258, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v260);
                      v251 = v366;
                      v252 = v259;
                      v9 = v398;
                      MEMORY[0x1865DF520](v260, -1, -1);
                      v261 = v258;
                      v11 = v257;
                      v21 = v391;
                      MEMORY[0x1865DF520](v261, -1, -1);
                    }

                    else
                    {

                      v252 = v110;
                      v251 = v366;
                    }

                    LOBYTE(v418) = 1;
                    sub_181FEADD0();
                    swift_willThrowTypedImpl();
                    sub_181F68E5C(v408, v410, v406);
                    v333 = v357;
                    v334 = v379;
                    v335 = 1;
LABEL_235:
                    sub_181F68E5C(v333, v334, v335);
                    v336 = v412;
                    v337 = v21;
                    v338 = 0;
                    goto LABEL_250;
                  }

                  v360 = v110;
                  v384 = v21;
                  v112 = v31;
                  v113 = *(v31 + 16);
                  v114 = *(v31 + 24);
                  v115 = *(v112 + 32);
                  v418 = v113;
                  v419 = v114;
                  v420 = v115;
                  if (*(v112 + 128) == 6 && *(v112 + 112) == 0)
                  {
                    *(v112 + 112) = v112;
                    *(v112 + 120) = 0;
                    *(v112 + 128) = 1;
                    sub_181F68EA8(v112, v379, 1u);
                    v116 = v373;
                    v117 = v360;
                    sub_181F68EA8(v366, v373, v360);
                    sub_181F68EA8(v113, v114, v115);
                    sub_181F68E5C(0, 0, 6u);
                    if (*(v112 + 128) == 6 && *(v112 + 112) == 0)
                    {
                      *(v112 + 112) = v112;
                      *(v112 + 120) = 0;
                      *(v112 + 128) = 1;

                      sub_181F68E5C(0, 0, 6u);
                    }
                  }

                  else
                  {
                    v116 = v373;
                    v117 = v360;
                    sub_181F68EA8(v366, v373, v360);
                    sub_181F68EA8(v113, v114, v115);
                  }

                  v118 = *(v112 + 120);
                  v119 = *(v112 + 128);
                  v415 = *(v112 + 112);
                  v416 = v118;
                  v417 = v119;
                  sub_181F68EA8(v415, v118, v119);
                  InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                  sub_181F68E5C(v408, v410, v406);
                  sub_181F68E5C(v366, v116, v117);
                  v120 = v112;
                  v121 = v379;
                  v122 = 1;
                }

                else
                {
                  v187 = *(v412 + 128);
                  v188 = *(v412 + 120);
                  v354 = v31;
                  if ((sub_181F74A48(*(v412 + 112), v55, v57, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                  {
                    sub_181F68EA8(v366, v188, v187);
                    if (qword_1EA8371A0 != -1)
                    {
                      swift_once();
                    }

                    v262 = sub_182AD2698();
                    __swift_project_value_buffer(v262, qword_1EA843348);
                    v263 = sub_182AD2678();
                    v264 = sub_182AD38C8();
                    if (os_log_type_enabled(v263, v264))
                    {
                      v392 = v21;
                      v265 = v11;
                      v266 = swift_slowAlloc();
                      v399 = v9;
                      v267 = v187;
                      v268 = swift_slowAlloc();
                      v418 = v268;
                      *v266 = 136315138;
                      *(v266 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                      _os_log_impl(&dword_181A37000, v263, v264, "Received '%s' from incorrect output linkage", v266, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v268);
                      v251 = v366;
                      v252 = v267;
                      v9 = v399;
                      MEMORY[0x1865DF520](v268, -1, -1);
                      v269 = v266;
                      v11 = v265;
                      v21 = v392;
                      MEMORY[0x1865DF520](v269, -1, -1);
                    }

                    else
                    {

                      v252 = v187;
                      v251 = v366;
                    }

                    LOBYTE(v418) = 1;
                    sub_181FEADD0();
                    swift_willThrowTypedImpl();
                    sub_181F68E5C(v408, v410, v406);
                    v333 = v354;
                    v334 = v379;
                    v335 = 2;
                    goto LABEL_235;
                  }

                  v384 = v21;
                  v189 = v31;
                  v190 = *(v31 + 16);
                  v191 = *(v31 + 24);
                  v192 = *(v189 + 32);
                  v418 = v190;
                  v419 = v191;
                  v420 = v192;
                  if (*(v189 + 128) == 6 && *(v189 + 112) == 0)
                  {
                    *(v189 + 112) = v189;
                    *(v189 + 120) = 0;
                    *(v189 + 128) = 2;
                    sub_181F68EA8(v189, v379, 2u);
                    v193 = v366;
                    v194 = v187;
                    sub_181F68EA8(v366, v373, v187);
                    sub_181F68EA8(v190, v191, v192);
                    sub_181F68E5C(0, 0, 6u);
                  }

                  else
                  {
                    v193 = v366;
                    v194 = v187;
                    sub_181F68EA8(v366, v373, v187);
                    sub_181F68EA8(v190, v191, v192);
                  }

                  v195 = *(v354 + 120);
                  v196 = *(v354 + 128);
                  v415 = *(v354 + 112);
                  v416 = v195;
                  v417 = v196;
                  sub_181F68EA8(v415, v195, v196);
                  InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                  sub_181F68E5C(v408, v410, v406);
                  sub_181F68E5C(v193, v373, v194);
                  v120 = v354;
                  v121 = v379;
                  v122 = 2;
                }
              }

              else
              {
                v177 = *(v412 + 128);
                v178 = *(v412 + 120);
                v353 = v31;
                if ((sub_181F74A48(*(v412 + 112), v55, v57, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                {
                  sub_181F68EA8(v366, v178, v177);
                  if (qword_1EA8371A0 != -1)
                  {
                    swift_once();
                  }

                  v244 = sub_182AD2698();
                  __swift_project_value_buffer(v244, qword_1EA843348);
                  v245 = sub_182AD2678();
                  v246 = sub_182AD38C8();
                  if (os_log_type_enabled(v245, v246))
                  {
                    v390 = v21;
                    v247 = v11;
                    v248 = swift_slowAlloc();
                    v397 = v9;
                    v249 = v177;
                    v250 = swift_slowAlloc();
                    v418 = v250;
                    *v248 = 136315138;
                    *(v248 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                    _os_log_impl(&dword_181A37000, v245, v246, "Received '%s' from incorrect output linkage", v248, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v250);
                    v251 = v366;
                    v252 = v249;
                    v9 = v397;
                    MEMORY[0x1865DF520](v250, -1, -1);
                    v253 = v248;
                    v11 = v247;
                    v21 = v390;
                    MEMORY[0x1865DF520](v253, -1, -1);
                  }

                  else
                  {

                    v252 = v177;
                    v251 = v366;
                  }

                  LOBYTE(v418) = 1;
                  sub_181FEADD0();
                  swift_willThrowTypedImpl();
                  sub_181F68E5C(v408, v410, v406);
                  v333 = v353;
                  v334 = v379;
                  v335 = 0;
                  goto LABEL_235;
                }

                v384 = v21;
                v179 = v31;
                v180 = *(v31 + 16);
                v181 = *(v31 + 24);
                v182 = *(v179 + 32);
                v418 = v180;
                v419 = v181;
                v420 = v182;
                if (*(v179 + 128) == 6 && *(v179 + 112) == 0)
                {
                  *(v179 + 112) = v179;
                  *(v179 + 120) = 0;
                  *(v179 + 128) = 0;
                  sub_181F68EA8(v179, v379, 0);
                  v183 = v366;
                  v184 = v177;
                  sub_181F68EA8(v366, v373, v177);
                  sub_181F68EA8(v180, v181, v182);
                  sub_181F68E5C(0, 0, 6u);
                }

                else
                {
                  v183 = v366;
                  v184 = v177;
                  sub_181F68EA8(v366, v373, v177);
                  sub_181F68EA8(v180, v181, v182);
                }

                v185 = *(v353 + 120);
                v186 = *(v353 + 128);
                v415 = *(v353 + 112);
                v416 = v185;
                v417 = v186;
                sub_181F68EA8(v415, v185, v186);
                InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                sub_181F68E5C(v408, v410, v406);
                sub_181F68E5C(v183, v373, v184);
                v120 = v353;
                v121 = v379;
                v122 = 0;
              }

              sub_181F68E5C(v120, v121, v122);
              v197 = v412;
              v198 = v384;
              v199 = 0;
              goto LABEL_169;
            }

            if (v54 > 4)
            {
              if (v54 != 5)
              {
                sub_181F68E5C(v408, v410, v53);
                sub_181F68E5C(v412, v21, 0);
                goto LABEL_15;
              }

              v387 = v21;
              v348 = *(v31 + 864);
              v147 = v31;
              v148 = *(v31 + 872);
              v149 = *(v412 + 112);
              v375 = *(v412 + 120);
              v363 = *(v412 + 128);
              sub_181F68EA8(v149, v55, v57);
              if (qword_1EA8371A0 != -1)
              {
                swift_once();
              }

              v150 = sub_182AD2698();
              __swift_project_value_buffer(v150, qword_1EA843348);

              v151 = sub_182AD2678();
              v152 = sub_182AD38A8();
              v396 = v9;
              if (os_log_type_enabled(v151, v152))
              {
                v368 = v149;
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                v418 = v154;
                *v153 = 136315394;
                v155 = v151;
                v156 = sub_181C64FFC(v348, v148, &v418);

                *(v153 + 4) = v156;
                *(v153 + 12) = 2080;
                *(v153 + 14) = sub_181C64FFC(0xD000000000000018, 0x8000000182BD5890, &v418);
                _os_log_impl(&dword_181A37000, v155, v152, "%s %s", v153, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v154, -1, -1);
                v157 = v153;
                v149 = v368;
                MEMORY[0x1865DF520](v157, -1, -1);
              }

              else
              {
              }

              v11 = &off_1EEFC4E60;
              v289 = *(v147 + 848);
              if (v289)
              {
                v290 = (v147 + 848);

                v289(1);
                sub_181F68E5C(v408, v410, v406);
                sub_181F68E5C(v149, v375, v363);
                v291 = v412;
                v292 = v387;
                v293 = 0;
                goto LABEL_224;
              }

              sub_181F68E5C(v408, v410, v406);
              sub_181F68E5C(v149, v375, v363);
              sub_181F68E5C(v147, v379, 5u);
              v104 = v412;
              v105 = v387;
              v106 = 0;
              goto LABEL_83;
            }

            v372 = *(v412 + 120);
            if (v54 != 3)
            {
              v218 = *(v412 + 128);
              sub_181F68EA8(v56, v55, v57);
              input_handler = nw_protocol_swift_wrapper_get_input_handler(v31, v379);
              if (input_handler)
              {
                nw_protocol_input_available_quiet(input_handler, v31);
              }

              sub_181F68E5C(v408, v410, v53);
              sub_181F68E5C(v56, v372, v218);
              v220 = v412;
              v221 = v21;
              v222 = 0;
              goto LABEL_176;
            }

            v58 = *(v412 + 128);
            v59 = v31;
            ObjectType = swift_getObjectType();
            v418 = v56;
            v419 = v372;
            v420 = v58;
            v382 = v21;
            v60 = v379;
            v359 = v58;
            v61 = v11;
            v62 = v379[3];
            sub_181F68EA8(v56, v372, v58);
            v62(&v418, ObjectType, v379);
            v11 = v61;
            sub_181F68E5C(v408, v410, v406);
            v63 = v412;
            v64 = v382;
            v65 = 0;
LABEL_60:
            sub_181F68E5C(v63, v64, v65);
            sub_181F68E5C(v59, v60, 3u);
            sub_181F68E5C(v56, v372, v359);
            goto LABEL_15;
          }

          if (v22 != 1)
          {
            v66 = *(v14 + 88);
            if ((sub_181F74A48(v23, v24, v25, *(v412 + 40), *(v412 + 48), *(v412 + 56)) & 1) == 0)
            {
              sub_181F68EA8(v66, v24, v25);
              if (qword_1EA8371A0 != -1)
              {
                swift_once();
              }

              v94 = sub_182AD2698();
              __swift_project_value_buffer(v94, qword_1EA843348);
              v95 = sub_182AD2678();
              v96 = sub_182AD38C8();
              if (os_log_type_enabled(v95, v96))
              {
                v97 = v21;
                v98 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                v418 = v99;
                *v98 = 136315138;
                *(v98 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                _os_log_impl(&dword_181A37000, v95, v96, "Received '%s' from incorrect output linkage", v98, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v99);
                v100 = v99;
                v11 = &off_1EEFC4E60;
                MEMORY[0x1865DF520](v100, -1, -1);
                v101 = v98;
                v21 = v97;
                MEMORY[0x1865DF520](v101, -1, -1);
              }

              else
              {
                v11 = v29;
              }

              LOBYTE(v418) = 1;
              sub_181FEADD0();
              swift_willThrowTypedImpl();
              v107 = v412;
              v108 = v21;
              v109 = 2;
              goto LABEL_90;
            }

            v67 = v25;
            v31 = *(v412 + 16);
            v379 = *(v412 + 24);
            v68 = *(v412 + 32);
            if (*(v412 + 128) == 6 && *(v412 + 112) == 0)
            {
              *(v412 + 112) = v412;
              *(v412 + 120) = 0;
              *(v412 + 128) = 2;
              sub_181F68EA8(v412, v21, 2u);
              sub_181F68EA8(v408, v410, v67);
              sub_181F68EA8(v31, v379, v68);
              sub_181F68E5C(0, 0, 6u);
            }

            else
            {
              sub_181F68EA8(v408, v410, v67);
              sub_181F68EA8(v31, v379, v68);
            }

            v11 = v29;
            v56 = *(v412 + 112);
            v69 = *(v412 + 120);
            v70 = *(v412 + 128);
            if (v68 <= 2)
            {
              v367 = *(v412 + 112);
              v373 = *(v412 + 120);
              if (v68)
              {
                if (v68 == 1)
                {
                  v134 = *(v412 + 128);
                  v135 = *(v412 + 120);
                  if ((sub_181F74A48(*(v412 + 112), v69, v70, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                  {
                    v358 = v31;
                    sub_181F68EA8(v367, v135, v134);
                    if (qword_1EA8371A0 != -1)
                    {
                      swift_once();
                    }

                    v304 = sub_182AD2698();
                    __swift_project_value_buffer(v304, qword_1EA843348);
                    v305 = sub_182AD2678();
                    v306 = sub_182AD38C8();
                    if (os_log_type_enabled(v305, v306))
                    {
                      v394 = v21;
                      v307 = v11;
                      v308 = swift_slowAlloc();
                      v403 = v9;
                      v309 = v134;
                      v310 = swift_slowAlloc();
                      v418 = v310;
                      *v308 = 136315138;
                      *(v308 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                      _os_log_impl(&dword_181A37000, v305, v306, "Received '%s' from incorrect output linkage", v308, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v310);
                      v251 = v367;
                      v252 = v309;
                      v9 = v403;
                      MEMORY[0x1865DF520](v310, -1, -1);
                      v311 = v308;
                      v11 = v307;
                      v21 = v394;
                      MEMORY[0x1865DF520](v311, -1, -1);
                    }

                    else
                    {

                      v252 = v134;
                      v251 = v367;
                    }

                    LOBYTE(v418) = 1;
                    sub_181FEADD0();
                    swift_willThrowTypedImpl();
                    sub_181F68E5C(v408, v410, v406);
                    v342 = v358;
                    v343 = v379;
                    v344 = 1;
                    goto LABEL_249;
                  }

                  v362 = v134;
                  v386 = v21;
                  v136 = v31;
                  v137 = *(v31 + 16);
                  v138 = *(v31 + 24);
                  v139 = *(v136 + 32);
                  v418 = v137;
                  v419 = v138;
                  v420 = v139;
                  if (*(v136 + 128) == 6 && *(v136 + 112) == 0)
                  {
                    *(v136 + 112) = v136;
                    *(v136 + 120) = 0;
                    *(v136 + 128) = 1;
                    sub_181F68EA8(v136, v379, 1u);
                    v140 = v373;
                    v141 = v362;
                    sub_181F68EA8(v367, v373, v362);
                    sub_181F68EA8(v137, v138, v139);
                    sub_181F68E5C(0, 0, 6u);
                    if (*(v136 + 128) == 6 && *(v136 + 112) == 0)
                    {
                      *(v136 + 112) = v136;
                      *(v136 + 120) = 0;
                      *(v136 + 128) = 1;

                      sub_181F68E5C(0, 0, 6u);
                    }
                  }

                  else
                  {
                    v140 = v373;
                    v141 = v362;
                    sub_181F68EA8(v367, v373, v362);
                    sub_181F68EA8(v137, v138, v139);
                  }

                  v142 = *(v136 + 120);
                  v143 = *(v136 + 128);
                  v415 = *(v136 + 112);
                  v416 = v142;
                  v417 = v143;
                  sub_181F68EA8(v415, v142, v143);
                  InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                  sub_181F68E5C(v408, v410, v406);
                  sub_181F68E5C(v367, v140, v141);
                  v144 = v136;
                  v145 = v379;
                  v146 = 1;
                }

                else
                {
                  v230 = *(v412 + 128);
                  v231 = *(v412 + 120);
                  v356 = v31;
                  if ((sub_181F74A48(*(v412 + 112), v69, v70, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                  {
                    sub_181F68EA8(v367, v231, v230);
                    if (qword_1EA8371A0 != -1)
                    {
                      swift_once();
                    }

                    v322 = sub_182AD2698();
                    __swift_project_value_buffer(v322, qword_1EA843348);
                    v323 = sub_182AD2678();
                    v324 = sub_182AD38C8();
                    if (os_log_type_enabled(v323, v324))
                    {
                      v395 = v21;
                      v325 = v11;
                      v326 = swift_slowAlloc();
                      v405 = v9;
                      v327 = v230;
                      v328 = swift_slowAlloc();
                      v418 = v328;
                      *v326 = 136315138;
                      *(v326 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                      _os_log_impl(&dword_181A37000, v323, v324, "Received '%s' from incorrect output linkage", v326, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v328);
                      v251 = v367;
                      v252 = v327;
                      v9 = v405;
                      MEMORY[0x1865DF520](v328, -1, -1);
                      v329 = v326;
                      v11 = v325;
                      v21 = v395;
                      MEMORY[0x1865DF520](v329, -1, -1);
                    }

                    else
                    {

                      v252 = v230;
                      v251 = v367;
                    }

                    LOBYTE(v418) = 1;
                    sub_181FEADD0();
                    swift_willThrowTypedImpl();
                    sub_181F68E5C(v408, v410, v406);
                    v342 = v356;
                    v343 = v379;
                    v344 = 2;
                    goto LABEL_249;
                  }

                  v386 = v21;
                  v232 = v31;
                  v233 = *(v31 + 16);
                  v234 = *(v31 + 24);
                  v235 = *(v232 + 32);
                  v418 = v233;
                  v419 = v234;
                  v420 = v235;
                  if (*(v232 + 128) == 6 && *(v232 + 112) == 0)
                  {
                    *(v232 + 112) = v232;
                    *(v232 + 120) = 0;
                    *(v232 + 128) = 2;
                    sub_181F68EA8(v232, v379, 2u);
                    v236 = v367;
                    v237 = v230;
                    sub_181F68EA8(v367, v373, v230);
                    sub_181F68EA8(v233, v234, v235);
                    sub_181F68E5C(0, 0, 6u);
                  }

                  else
                  {
                    v236 = v367;
                    v237 = v230;
                    sub_181F68EA8(v367, v373, v230);
                    sub_181F68EA8(v233, v234, v235);
                  }

                  v238 = *(v356 + 120);
                  v239 = *(v356 + 128);
                  v415 = *(v356 + 112);
                  v416 = v238;
                  v417 = v239;
                  sub_181F68EA8(v415, v238, v239);
                  InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                  sub_181F68E5C(v408, v410, v406);
                  sub_181F68E5C(v236, v373, v237);
                  v144 = v356;
                  v145 = v379;
                  v146 = 2;
                }
              }

              else
              {
                v208 = *(v412 + 128);
                v209 = *(v412 + 120);
                v355 = v31;
                if ((sub_181F74A48(*(v412 + 112), v69, v70, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                {
                  sub_181F68EA8(v367, v209, v208);
                  if (qword_1EA8371A0 != -1)
                  {
                    swift_once();
                  }

                  v281 = sub_182AD2698();
                  __swift_project_value_buffer(v281, qword_1EA843348);
                  v282 = sub_182AD2678();
                  v283 = sub_182AD38C8();
                  if (os_log_type_enabled(v282, v283))
                  {
                    v393 = v21;
                    v284 = v11;
                    v285 = swift_slowAlloc();
                    v401 = v9;
                    v286 = v208;
                    v287 = swift_slowAlloc();
                    v418 = v287;
                    *v285 = 136315138;
                    *(v285 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                    _os_log_impl(&dword_181A37000, v282, v283, "Received '%s' from incorrect output linkage", v285, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v287);
                    v251 = v367;
                    v252 = v286;
                    v9 = v401;
                    MEMORY[0x1865DF520](v287, -1, -1);
                    v288 = v285;
                    v11 = v284;
                    v21 = v393;
                    MEMORY[0x1865DF520](v288, -1, -1);
                  }

                  else
                  {

                    v252 = v208;
                    v251 = v367;
                  }

                  LOBYTE(v418) = 1;
                  sub_181FEADD0();
                  swift_willThrowTypedImpl();
                  sub_181F68E5C(v408, v410, v406);
                  v342 = v355;
                  v343 = v379;
                  v344 = 0;
LABEL_249:
                  sub_181F68E5C(v342, v343, v344);
                  v336 = v412;
                  v337 = v21;
                  v338 = 2;
LABEL_250:
                  sub_181F68E5C(v336, v337, v338);
                  sub_181F68E5C(v251, v373, v252);
                  goto LABEL_15;
                }

                v386 = v21;
                v210 = v31;
                v211 = *(v31 + 16);
                v212 = *(v31 + 24);
                v213 = *(v210 + 32);
                v418 = v211;
                v419 = v212;
                v420 = v213;
                if (*(v210 + 128) == 6 && *(v210 + 112) == 0)
                {
                  *(v210 + 112) = v210;
                  *(v210 + 120) = 0;
                  *(v210 + 128) = 0;
                  sub_181F68EA8(v210, v379, 0);
                  v214 = v367;
                  v215 = v208;
                  sub_181F68EA8(v367, v373, v208);
                  sub_181F68EA8(v211, v212, v213);
                  sub_181F68E5C(0, 0, 6u);
                }

                else
                {
                  v214 = v367;
                  v215 = v208;
                  sub_181F68EA8(v367, v373, v208);
                  sub_181F68EA8(v211, v212, v213);
                }

                v216 = *(v355 + 120);
                v217 = *(v355 + 128);
                v415 = *(v355 + 112);
                v416 = v216;
                v417 = v217;
                sub_181F68EA8(v415, v216, v217);
                InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                sub_181F68E5C(v408, v410, v406);
                sub_181F68E5C(v214, v373, v215);
                v144 = v355;
                v145 = v379;
                v146 = 0;
              }

              sub_181F68E5C(v144, v145, v146);
              v197 = v412;
              v198 = v386;
              v199 = 2;
LABEL_169:
              sub_181F68E5C(v197, v198, v199);
              sub_181F68E5C(v415, v416, v417);
              sub_181F68E5C(v418, v419, v420);
              v11 = &off_1EEFC4E60;
              goto LABEL_15;
            }

            if (v68 > 4)
            {
              if (v68 != 5)
              {
                sub_181F68E5C(v408, v410, v67);
                sub_181F68E5C(v412, v21, 2u);
                goto LABEL_15;
              }

              v389 = v21;
              v349 = *(v31 + 864);
              v147 = v31;
              v167 = *(v31 + 872);
              v168 = *(v412 + 112);
              v377 = *(v412 + 120);
              v365 = *(v412 + 128);
              sub_181F68EA8(v168, v69, v70);
              if (qword_1EA8371A0 != -1)
              {
                swift_once();
              }

              v169 = sub_182AD2698();
              __swift_project_value_buffer(v169, qword_1EA843348);

              v170 = sub_182AD2678();
              v171 = sub_182AD38A8();
              v396 = v9;
              if (os_log_type_enabled(v170, v171))
              {
                v370 = v168;
                v172 = swift_slowAlloc();
                v173 = swift_slowAlloc();
                v418 = v173;
                *v172 = 136315394;
                v174 = v170;
                v175 = sub_181C64FFC(v349, v167, &v418);

                *(v172 + 4) = v175;
                *(v172 + 12) = 2080;
                *(v172 + 14) = sub_181C64FFC(0xD000000000000018, 0x8000000182BD5890, &v418);
                _os_log_impl(&dword_181A37000, v174, v171, "%s %s", v172, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v173, -1, -1);
                v176 = v172;
                v168 = v370;
                MEMORY[0x1865DF520](v176, -1, -1);
              }

              else
              {
              }

              v11 = &off_1EEFC4E60;
              v289 = *(v147 + 848);
              if (v289)
              {
                v290 = (v147 + 848);

                v289(1);
                sub_181F68E5C(v408, v410, v406);
                sub_181F68E5C(v168, v377, v365);
                v291 = v412;
                v292 = v389;
                v293 = 2;
LABEL_224:
                sub_181F68E5C(v291, v292, v293);
                v331 = v289;
LABEL_225:
                sub_181A554F4(v331);
                v332 = *(v147 + 848);
                *v290 = 0;
                v290[1] = 0;
                sub_181A554F4(v332);
                v104 = v147;
                v105 = v379;
LABEL_82:
                v106 = 5;
              }

              else
              {
                sub_181F68E5C(v408, v410, v406);
                sub_181F68E5C(v168, v377, v365);
                sub_181F68E5C(v147, v379, 5u);
                v104 = v412;
                v105 = v389;
                v106 = 2;
              }

LABEL_83:
              sub_181F68E5C(v104, v105, v106);
              v9 = v396;
              goto LABEL_15;
            }

            v372 = *(v412 + 120);
            if (v68 != 3)
            {
              v242 = *(v412 + 128);
              sub_181F68EA8(v56, v69, v70);
              v243 = nw_protocol_swift_wrapper_get_input_handler(v31, v379);
              if (v243)
              {
                nw_protocol_input_available_quiet(v243, v31);
              }

              sub_181F68E5C(v408, v410, v67);
              sub_181F68E5C(v56, v372, v242);
              v220 = v412;
              v221 = v21;
              v222 = 2;
              goto LABEL_176;
            }

            v71 = *(v412 + 128);
            v59 = v31;
            v347 = swift_getObjectType();
            v418 = v56;
            v419 = v372;
            v420 = v71;
            v383 = v21;
            v60 = v379;
            v359 = v71;
            v72 = v11;
            v73 = v379[3];
            sub_181F68EA8(v56, v372, v71);
            v73(&v418, v347, v379);
            v11 = v72;
            sub_181F68E5C(v408, v410, v406);
            v63 = v412;
            v64 = v383;
            v65 = 2;
            goto LABEL_60;
          }

          v30 = *(v14 + 88);
          if ((sub_181F74A48(v23, v24, v25, *(v412 + 40), *(v412 + 48), *(v412 + 56)) & 1) == 0)
          {
            sub_181F68EA8(v30, v24, v25);
            if (qword_1EA8371A0 != -1)
            {
              swift_once();
            }

            v86 = sub_182AD2698();
            __swift_project_value_buffer(v86, qword_1EA843348);
            v87 = sub_182AD2678();
            v88 = sub_182AD38C8();
            if (os_log_type_enabled(v87, v88))
            {
              v89 = v21;
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              v418 = v91;
              *v90 = 136315138;
              *(v90 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
              _os_log_impl(&dword_181A37000, v87, v88, "Received '%s' from incorrect output linkage", v90, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v91);
              v92 = v91;
              v11 = &off_1EEFC4E60;
              MEMORY[0x1865DF520](v92, -1, -1);
              v93 = v90;
              v21 = v89;
              MEMORY[0x1865DF520](v93, -1, -1);
            }

            else
            {
              v11 = v29;
            }

            LOBYTE(v418) = 1;
            sub_181FEADD0();
            swift_willThrowTypedImpl();
            v107 = v412;
            v108 = v21;
            v109 = 1;
LABEL_90:
            sub_181F68E5C(v107, v108, v109);
            sub_181F68E5C(v408, v410, v406);
            goto LABEL_15;
          }

          v31 = *(v412 + 16);
          v379 = *(v412 + 24);
          v32 = *(v412 + 32);
          if (*(v412 + 128) == 6 && *(v412 + 112) == 0)
          {
            *(v412 + 112) = v412;
            *(v412 + 120) = 0;
            *(v412 + 128) = 1;
            sub_181F68EA8(v412, v21, 1u);
            sub_181F68EA8(v408, v24, v406);
            sub_181F68EA8(v31, v379, v32);
            sub_181F68E5C(0, 0, 6u);
            v11 = v29;
            if (*(v412 + 128) == 6 && *(v412 + 112) == 0)
            {
              *(v412 + 112) = v412;
              *(v412 + 120) = 0;
              *(v412 + 128) = 1;
              sub_181F68EA8(v412, v21, 1u);
              sub_181F68E5C(0, 0, 6u);
            }
          }

          else
          {
            sub_181F68EA8(v408, v24, v406);
            sub_181F68EA8(v31, v379, v32);
            v11 = v29;
          }

          v34 = *(v412 + 112);
          v33 = *(v412 + 120);
          v35 = *(v412 + 128);
          if (v32 <= 2)
          {
            v385 = v21;
            v374 = *(v412 + 120);
            if (v32)
            {
              if (v32 == 1)
              {
                v123 = *(v412 + 120);
                if ((sub_181F74A48(v34, v33, v35, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                {
                  sub_181F68EA8(v34, v123, v35);
                  if (qword_1EA8371A0 != -1)
                  {
                    swift_once();
                  }

                  v294 = sub_182AD2698();
                  __swift_project_value_buffer(v294, qword_1EA843348);
                  v295 = sub_182AD2678();
                  v296 = sub_182AD38C8();
                  if (os_log_type_enabled(v295, v296))
                  {
                    v297 = swift_slowAlloc();
                    v402 = v9;
                    v298 = v35;
                    v299 = v34;
                    v300 = swift_slowAlloc();
                    v418 = v300;
                    *v297 = 136315138;
                    *(v297 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                    _os_log_impl(&dword_181A37000, v295, v296, "Received '%s' from incorrect output linkage", v297, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v300);
                    v301 = v300;
                    v34 = v299;
                    v278 = v298;
                    v9 = v402;
                    MEMORY[0x1865DF520](v301, -1, -1);
                    v302 = v297;
                    v11 = &off_1EEFC4E60;
                    v303 = v406;
                    MEMORY[0x1865DF520](v302, -1, -1);
                  }

                  else
                  {

                    v278 = v35;
                    v303 = v406;
                  }

                  LOBYTE(v418) = 1;
                  sub_181FEADD0();
                  swift_willThrowTypedImpl();
                  sub_181F68E5C(v408, v410, v303);
                  v339 = v31;
                  v340 = v379;
                  v341 = 1;
LABEL_246:
                  sub_181F68E5C(v339, v340, v341);
                  sub_181F68E5C(v412, v385, 1u);
                  sub_181F68E5C(v34, v374, v278);
                  goto LABEL_15;
                }

                v124 = *(v31 + 16);
                v125 = *(v31 + 24);
                v126 = *(v31 + 32);
                v418 = v124;
                v419 = v125;
                v420 = v126;
                v361 = v34;
                if (*(v31 + 128) == 6 && *(v31 + 112) == 0)
                {
                  *(v31 + 112) = v31;
                  *(v31 + 120) = 0;
                  *(v31 + 128) = 1;
                  sub_181F68EA8(v31, v379, 1u);
                  v345 = v34;
                  v128 = v35;
                  sub_181F68EA8(v345, v374, v35);
                  sub_181F68EA8(v124, v125, v126);
                  sub_181F68E5C(0, 0, 6u);
                  if (*(v31 + 128) == 6 && *(v31 + 112) == 0)
                  {
                    *(v31 + 112) = v31;
                    *(v31 + 120) = 0;
                    *(v31 + 128) = 1;

                    sub_181F68E5C(0, 0, 6u);
                  }
                }

                else
                {
                  v127 = v34;
                  v128 = v35;
                  sub_181F68EA8(v127, v374, v35);
                  sub_181F68EA8(v124, v125, v126);
                }

                v129 = *(v31 + 120);
                v130 = *(v31 + 128);
                v415 = *(v31 + 112);
                v416 = v129;
                v417 = v130;
                sub_181F68EA8(v415, v129, v130);
                InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                sub_181F68E5C(v408, v410, v406);
                sub_181F68E5C(v361, v374, v128);
                v131 = v31;
                v132 = v379;
                v133 = 1;
              }

              else
              {
                v223 = *(v412 + 120);
                if ((sub_181F74A48(v34, v33, v35, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
                {
                  sub_181F68EA8(v34, v223, v35);
                  if (qword_1EA8371A0 != -1)
                  {
                    swift_once();
                  }

                  v312 = sub_182AD2698();
                  __swift_project_value_buffer(v312, qword_1EA843348);
                  v313 = sub_182AD2678();
                  v314 = sub_182AD38C8();
                  if (os_log_type_enabled(v313, v314))
                  {
                    v315 = swift_slowAlloc();
                    v404 = v9;
                    v316 = v35;
                    v317 = v34;
                    v318 = swift_slowAlloc();
                    v418 = v318;
                    *v315 = 136315138;
                    *(v315 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                    _os_log_impl(&dword_181A37000, v313, v314, "Received '%s' from incorrect output linkage", v315, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v318);
                    v319 = v318;
                    v34 = v317;
                    v278 = v316;
                    v9 = v404;
                    MEMORY[0x1865DF520](v319, -1, -1);
                    v320 = v315;
                    v11 = &off_1EEFC4E60;
                    v321 = v406;
                    MEMORY[0x1865DF520](v320, -1, -1);
                  }

                  else
                  {

                    v278 = v35;
                    v321 = v406;
                  }

                  LOBYTE(v418) = 1;
                  sub_181FEADD0();
                  swift_willThrowTypedImpl();
                  sub_181F68E5C(v408, v410, v321);
                  v339 = v31;
                  v340 = v379;
                  v341 = 2;
                  goto LABEL_246;
                }

                v224 = *(v31 + 16);
                v225 = *(v31 + 24);
                v226 = *(v31 + 32);
                v418 = v224;
                v419 = v225;
                v420 = v226;
                v350 = v31;
                if (*(v31 + 128) == 6 && *(v31 + 112) == 0)
                {
                  *(v31 + 112) = v31;
                  *(v31 + 120) = 0;
                  *(v31 + 128) = 2;
                  sub_181F68EA8(v31, v379, 2u);
                  v227 = v35;
                  sub_181F68EA8(v34, v374, v35);
                  sub_181F68EA8(v224, v225, v226);
                  sub_181F68E5C(0, 0, 6u);
                }

                else
                {
                  v227 = v35;
                  sub_181F68EA8(v34, v374, v35);
                  sub_181F68EA8(v224, v225, v226);
                }

                v228 = *(v350 + 120);
                v229 = *(v350 + 128);
                v415 = *(v350 + 112);
                v416 = v228;
                v417 = v229;
                sub_181F68EA8(v415, v228, v229);
                InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
                sub_181F68E5C(v408, v410, v406);
                sub_181F68E5C(v34, v374, v227);
                v131 = v350;
                v132 = v379;
                v133 = 2;
              }
            }

            else
            {
              v200 = *(v412 + 120);
              if ((sub_181F74A48(v34, v33, v35, *(v31 + 40), *(v31 + 48), *(v31 + 56)) & 1) == 0)
              {
                sub_181F68EA8(v34, v200, v35);
                if (qword_1EA8371A0 != -1)
                {
                  swift_once();
                }

                v270 = sub_182AD2698();
                __swift_project_value_buffer(v270, qword_1EA843348);
                v271 = sub_182AD2678();
                v272 = sub_182AD38C8();
                if (os_log_type_enabled(v271, v272))
                {
                  v273 = swift_slowAlloc();
                  v400 = v9;
                  v274 = v35;
                  v275 = v34;
                  v276 = swift_slowAlloc();
                  v418 = v276;
                  *v273 = 136315138;
                  *(v273 + 4) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD58B0, &v418);
                  _os_log_impl(&dword_181A37000, v271, v272, "Received '%s' from incorrect output linkage", v273, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v276);
                  v277 = v276;
                  v34 = v275;
                  v278 = v274;
                  v9 = v400;
                  MEMORY[0x1865DF520](v277, -1, -1);
                  v279 = v273;
                  v11 = &off_1EEFC4E60;
                  v280 = v406;
                  MEMORY[0x1865DF520](v279, -1, -1);
                }

                else
                {

                  v278 = v35;
                  v280 = v406;
                }

                LOBYTE(v418) = 1;
                sub_181FEADD0();
                swift_willThrowTypedImpl();
                sub_181F68E5C(v408, v410, v280);
                v339 = v31;
                v340 = v379;
                v341 = 0;
                goto LABEL_246;
              }

              v371 = v35;
              v201 = *(v31 + 16);
              v202 = *(v31 + 24);
              v203 = *(v31 + 32);
              v418 = v201;
              v419 = v202;
              v420 = v203;
              if (*(v31 + 128) == 6 && *(v31 + 112) == 0)
              {
                *(v31 + 112) = v31;
                *(v31 + 120) = 0;
                *(v31 + 128) = 0;
                v204 = v31;
                sub_181F68EA8(v31, v379, 0);
                v205 = v371;
                sub_181F68EA8(v34, v374, v371);
                sub_181F68EA8(v201, v202, v203);
                sub_181F68E5C(0, 0, 6u);
              }

              else
              {
                v204 = v31;
                v205 = v371;
                sub_181F68EA8(v34, v374, v371);
                sub_181F68EA8(v201, v202, v203);
              }

              v206 = *(v204 + 120);
              v207 = *(v204 + 128);
              v415 = *(v204 + 112);
              v416 = v206;
              v417 = v207;
              sub_181F68EA8(v415, v206, v207);
              InputHandlerLinkage.invokeInputAvailable(_:)(&v415);
              sub_181F68E5C(v408, v410, v406);
              sub_181F68E5C(v34, v374, v205);
              v131 = v204;
              v132 = v379;
              v133 = 0;
            }

            sub_181F68E5C(v131, v132, v133);
            v197 = v412;
            v198 = v385;
            v199 = 1;
            goto LABEL_169;
          }

          if (v32 > 4)
          {
            if (v32 != 5)
            {
              sub_181F68E5C(v408, v410, v406);
              sub_181F68E5C(v412, v21, 1u);
              goto LABEL_15;
            }

            v388 = v21;
            v352 = *(v31 + 864);
            v147 = v31;
            v158 = *(v31 + 872);
            v376 = *(v412 + 120);
            v369 = *(v412 + 128);
            sub_181F68EA8(v34, v33, v369);
            if (qword_1EA8371A0 != -1)
            {
              swift_once();
            }

            v159 = sub_182AD2698();
            __swift_project_value_buffer(v159, qword_1EA843348);

            v160 = sub_182AD2678();
            v161 = sub_182AD38A8();
            v396 = v9;
            if (os_log_type_enabled(v160, v161))
            {
              v364 = v34;
              v162 = swift_slowAlloc();
              v163 = swift_slowAlloc();
              v418 = v163;
              *v162 = 136315394;
              v164 = v160;
              v165 = sub_181C64FFC(v352, v158, &v418);

              *(v162 + 4) = v165;
              *(v162 + 12) = 2080;
              *(v162 + 14) = sub_181C64FFC(0xD000000000000018, 0x8000000182BD5890, &v418);
              _os_log_impl(&dword_181A37000, v164, v161, "%s %s", v162, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v163, -1, -1);
              v166 = v162;
              v34 = v364;
              MEMORY[0x1865DF520](v166, -1, -1);
            }

            else
            {
            }

            v11 = &off_1EEFC4E60;
            v330 = *(v147 + 848);
            if (v330)
            {
              v290 = (v147 + 848);

              v330(1);
              sub_181F68E5C(v408, v410, v406);
              sub_181F68E5C(v34, v376, v369);
              sub_181F68E5C(v412, v388, 1u);
              v331 = v330;
              goto LABEL_225;
            }

            sub_181F68E5C(v408, v410, v406);
            sub_181F68E5C(v34, v376, v369);
            sub_181F68E5C(v147, v379, 5u);
            v104 = v412;
            v105 = v388;
            v106 = 1;
            goto LABEL_83;
          }

          if (v32 != 3)
          {
            v240 = *(v412 + 120);
            sub_181F68EA8(*(v412 + 112), v240, *(v412 + 128));
            v241 = nw_protocol_swift_wrapper_get_input_handler(v31, v379);
            if (v241)
            {
              nw_protocol_input_available_quiet(v241, v31);
            }

            sub_181F68E5C(v408, v410, v406);
            sub_181F68E5C(v34, v240, v35);
            v220 = v412;
            v221 = v21;
            v222 = 1;
LABEL_176:
            sub_181F68E5C(v220, v221, v222);
            sub_181F68E5C(v31, v379, 4u);
            goto LABEL_15;
          }

          v36 = *(v412 + 120);
          v380 = v21;
          v351 = swift_getObjectType();
          v418 = v34;
          v419 = v36;
          v420 = v35;
          v37 = v11;
          v38 = v379[3];
          sub_181F68EA8(v34, v36, v35);
          v38(&v418, v351, v379);
          v11 = v37;
          sub_181F68E5C(v408, v410, v406);
          sub_181F68E5C(v412, v380, 1u);
          sub_181F68E5C(v31, v379, 3u);
          sub_181F68E5C(v34, v36, v35);
        }

        else
        {
          if (v22 <= 4)
          {
            if (v22 == 3)
            {
              v26 = *(v14 + 104);
              v27 = *(v14 + 88);
              v378 = swift_getObjectType();
              v418 = v27;
              v419 = v24;
              v420 = v26;
              v28 = v21[3];
              sub_181F68EA8(v27, v24, v26);
              v28(&v418, v378, v21);
              v11 = &off_1EEFC4E60;
              sub_181F68E5C(v412, v21, 3u);
              sub_181F68E5C(v27, v24, v26);
            }

            else
            {
              v74 = v11;
              v75 = *(v14 + 96);
              v76 = *(v14 + 88);
              sub_181F68EA8(v76, v75, *(v14 + 104));
              v77 = nw_protocol_swift_wrapper_get_input_handler(v412, v21);
              if (v77)
              {
                nw_protocol_input_available_quiet(v77, v412);
                sub_181F68E5C(v76, v75, v25);
              }

              else
              {
                sub_181F68E5C(v76, v24, v25);
              }

              sub_181F68E5C(v412, v21, 4u);
              v11 = v74;
            }

            goto LABEL_15;
          }

          if (v22 == 5)
          {
            v381 = v21;
            v39 = *(v412 + 864);
            v40 = *(v412 + 872);
            v409 = *(v14 + 88);
            v411 = *(v14 + 96);
            v407 = *(v14 + 104);
            sub_181F68EA8(v23, v24, v407);
            if (qword_1EA8371A0 != -1)
            {
              swift_once();
            }

            v41 = sub_182AD2698();
            __swift_project_value_buffer(v41, qword_1EA843348);

            v42 = sub_182AD2678();
            v43 = sub_182AD38A8();
            v396 = v9;
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v418 = v45;
              *v44 = 136315394;
              v46 = sub_181C64FFC(v39, v40, &v418);

              *(v44 + 4) = v46;
              *(v44 + 12) = 2080;
              *(v44 + 14) = sub_181C64FFC(0xD000000000000018, 0x8000000182BD5890, &v418);
              _os_log_impl(&dword_181A37000, v42, v43, "%s %s", v44, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v45, -1, -1);
              MEMORY[0x1865DF520](v44, -1, -1);
            }

            else
            {
            }

            v102 = *(v412 + 848);
            v11 = &off_1EEFC4E60;
            if (v102)
            {

              v102(1);
              sub_181F68E5C(v409, v411, v407);
              sub_181A554F4(v102);
              v103 = *(v412 + 848);
              *(v412 + 848) = 0;
              *(v412 + 856) = 0;
              sub_181A554F4(v103);
            }

            else
            {
              sub_181F68E5C(v409, v411, v407);
            }

            v104 = v412;
            v105 = v381;
            goto LABEL_82;
          }
        }
      }

LABEL_15:
      v15 = *(v14 + 56);
      if ((v15 & 0x40) != 0)
      {
        *(v14 + 56) = v15 & 0xFFBF;
        v16 = *(v14 + 64);
        v17 = *(v14 + 72);
        v18 = *(v14 + 80);
        v418 = v16;
        v419 = v17;
        v420 = v18;
        if (*(v14 + 104) == 6 && *(v14 + 88) == 0)
        {
          *(v14 + 88) = v14;
          *(v14 + 96) = v11;
          *(v14 + 104) = 3;
          v47 = v16;
          v48 = v17;
          v49 = v9;
          v50 = v18;

          v51 = v50;
          v9 = v49;
          sub_181F68EA8(v47, v48, v51);
          sub_181F68E5C(0, 0, 6u);
        }

        else
        {
          sub_181F68EA8(v16, v17, v18);
        }

        v19 = *(v14 + 96);
        v20 = *(v14 + 104);
        v415 = *(v14 + 88);
        v416 = v19;
        v417 = v20;
        sub_181F68EA8(v415, v19, v20);
        sub_181F71CEC(&v415);

        sub_181F68E5C(v415, v416, v417);
        sub_181F68E5C(v418, v419, v420);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v414 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_18216EC24(uint64_t result)
{
  v70 = result;
  v179 = *MEMORY[0x1E69E9840];
  v2 = v1[8];
  if ((v2 & 0x80) == 0)
  {
    v3 = v1;
    v4 = &v167;
    v5 = *(*v1 + 1208);
    v66 = v5;
    do
    {
      if ((v2 & 0xC0) != 0x80)
      {
        v3[8] = ~v2 & 0x80 | v2 & 0xFFBF;
      }

      v6 = *(v70 + 272);
      v125 = *(v70 + 264);
      LOBYTE(v126) = v6;
      (v5)(&v125);
      v7 = *(v70 + 288);
      v8 = *(v70 + 296);
      v125 = *(v70 + 280);
      v126 = v7;
      LOBYTE(v127) = v8;
      v9 = *(v70 + 312);
      v10 = *(v70 + 320);
      v162 = *(v70 + 304);
      v11 = v162;
      v163 = v9;
      v164 = v10;
      sub_181F68EA8(v125, v7, v8);
      sub_181F68EA8(v11, v9, v10);
      LOBYTE(v11) = 1;
      OutputHandlerLinkage.invokeGetInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(&v162, 1uLL, 0x7FFFFFFFFFFFFFFFuLL, 0x7FFFFFFFFFFFFFFFuLL, v165);
      sub_181F68E5C(v162, v163, v164);
      sub_181F68E5C(v125, v126, v127);
      *&v176[16] = v165[12];
      v177 = v165[13];
      v178 = v166;
      v173 = v165[8];
      v174 = v165[9];
      v175 = v165[10];
      *v176 = v165[11];
      *&v170[16] = v165[4];
      *&v170[32] = v165[5];
      v171 = v165[6];
      v172 = v165[7];
      v167 = v165[0];
      v168 = v165[1];
      v169 = v165[2];
      *v170 = v165[3];
      v12 = sub_181F3D1E4(&v167);
      v13 = __OFSUB__(v12, 1);
      if (v12 == 1)
      {
        v14 = 0;
      }

      else
      {
        v15 = *(&v177 + 1);
        if (v178)
        {
          v16 = 0;
        }

        else if (*(&v177 + 1))
        {
          v17 = *(*(&v177 + 1) + 24);
          v13 = __OFADD__(v17, 1);
          v16 = v17 + 1;
          if (v13)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v16 = 1;
          if (__OFSUB__(v12, 1))
          {
            goto LABEL_66;
          }
        }

        v68 = v16;
        v18 = v174;
        v113 = v175;
        v19 = *(&v169 + 1);
        v20 = v169;
        v21 = *(&v167 + 1);
        v22 = v167;
        v23 = v168;
        v24 = BYTE8(v168);
        v67 = v178;
        if ((v178 & 1) == 0)
        {
          v105 = v170[0];
          v106 = v174;
          v114 = *(&v175 + 1);
          v14 = 0;
          v30 = *&v170[8];
          v31 = *&v170[24];
          LOBYTE(v11) = v170[40];
          v32 = WORD4(v173);
          v33 = v173;
          v35 = v171;
          v34 = v172;
          v36 = BYTE12(v173);
          v5 = WORD5(v173);
          v37 = *(&v174 + 1);
          v38 = v176[0];
          v39 = v176[17];
          v40 = *&v176[1];
          v41 = v176[18];
          v42 = v177;
          v43 = *&v176[24];
          while (1)
          {
            if (v15)
            {
              v45 = *(v15 + 24);
              v13 = __OFADD__(v45, 1);
              v46 = v45 + 1;
              if (v13)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v46 = 1;
              if (v13)
              {
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                sub_181F68EF4(v109, v110, v111, v112);

                sub_181F68F3C(v5, v4, v11);
                __break(1u);
              }
            }

            v112 = v24;
            v110 = v21;
            v111 = v23;
            v109 = v22;
            if (v46 < 1)
            {
              v5 = v20;
              v4 = v19;
              v18 = v106;
              LOBYTE(v11) = v105;
              goto LABEL_36;
            }

            v94 = v31;
            v95 = v30;
            v96 = v35;
            v97 = v34;
            v98 = v40;
            v99 = v32;
            v100 = v37;
            v101 = v43;
            v102 = v42;
            v103 = v20;
            v104 = v19;
            v117 = v36 & 1;
            v116 = v113 & 1;
            v115 = v39 & 1;
            if (v15 && (v125 = v15, *(v15 + 24)))
            {

              v47 = v15;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1820E5FD0();
                v47 = v125;
              }

              v48 = v47[4];
              v49 = v48 + 1;
              if (__OFADD__(v48, 1))
              {
                goto LABEL_64;
              }

              v50 = v47[v48 + 5];
              v51 = v47[3];
              if (v49 >= v47[2])
              {
                v49 = 0;
              }

              v47[4] = v49;
              if (__OFSUB__(v51, 1))
              {
                goto LABEL_65;
              }

              v47[3] = v51 - 1;
              LOBYTE(v162) = 1;
              LOBYTE(v159) = 1;
              v124[0] = 1;
              swift_beginAccess();
              v52 = v162;
              v53 = v159;
              v91 = *(v50 + 16);
              v90 = *(v50 + 24);
              v89 = *(v50 + 32);
              v108 = *(v50 + 40);
              v88 = *(v50 + 48);
              v87 = *(v50 + 56);
              v107 = *(v50 + 64);
              v84 = *(v50 + 104);
              v75 = *(v50 + 112);
              v76 = *(v50 + 72);
              v73 = *(v50 + 128);
              v74 = *(v50 + 88);
              v83 = *(v50 + 144);
              v72 = *(v50 + 152);
              v82 = *(v50 + 154);
              v86 = *(v50 + 160);
              v80 = *(v50 + 168);
              v85 = *(v50 + 184);
              v81 = *(v50 + 193);
              v78 = *(v50 + 216);
              v71 = *(v50 + 224);
              v77 = *(v50 + 210);
              v79 = *(v50 + 192);
              v113 = *(v50 + 176);
              v93 = *(v50 + 156);
              v92 = *(v50 + 209);
              *(v50 + 16) = 0;
              *(v50 + 24) = 0;
              *(v50 + 32) = 0;
              *(v50 + 40) = 6;
              *(v50 + 48) = 0;
              *(v50 + 56) = 0;
              *(v50 + 64) = 2;
              *(v50 + 72) = 0u;
              *(v50 + 88) = 0u;
              *(v50 + 104) = 0;
              *(v50 + 112) = 0u;
              *(v50 + 128) = 0u;
              *(v50 + 144) = 0;
              *(v50 + 152) = 2;
              *(v50 + 156) = v52;
              *(v50 + 160) = 0;
              *(v50 + 168) = 0;
              *(v50 + 176) = v53;
              *(v50 + 192) = 0;
              *(v50 + 200) = 0;
              *(v50 + 184) = 0;
              *(v50 + 208) = 0;
              *(v50 + 209) = 1;
              *(v50 + 210) = 0;
              *(v50 + 216) = 0;
              *(v50 + 224) = -1;

              v4 = 0;
              v15 = v47;
            }

            else
            {
              v4 = 1;
              LOBYTE(v125) = 1;
              LOBYTE(v162) = 1;
              LOBYTE(v159) = 1;

              v15 = 0;
              v90 = 0;
              v91 = 0;
              v88 = 0;
              v89 = 0;
              v86 = 0;
              v87 = 0;
              v84 = 0;
              v83 = 0;
              v82 = 0;
              v80 = 0;
              v85 = 0;
              v79 = 0;
              v77 = 0;
              v78 = 0;
              v113 = v162;
              v93 = v125;
              v92 = v159;
              v81 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v107 = 2;
              v108 = 6;
              v71 = -1;
              v72 = 2;
            }

            v125 = v109;
            v126 = v110;
            v127 = v111;
            v128 = v112;
            *v129 = v159;
            *&v129[3] = *(&v159 + 3);
            v130 = v103;
            v131 = v104;
            v132 = v105;
            *v133 = *v124;
            *&v133[3] = *&v124[3];
            v134 = v95;
            v135 = v94;
            v136 = v11;
            *v137 = *v123;
            *&v137[3] = *&v123[3];
            v138 = v96;
            v139 = v97;
            v140 = v33;
            v141 = v99;
            v142 = v5;
            v143 = v117;
            v144 = v121;
            v145 = v122;
            v146 = v106;
            v147 = v100;
            v148 = v116;
            *&v149[3] = *&v120[3];
            *v149 = *v120;
            v150 = v114;
            v151 = v38 & 1;
            v152 = v98;
            v153 = v115;
            v154 = v41 & 1;
            v156 = v119;
            v155 = v118;
            v157 = v101;
            v158 = v102;
            v44 = *(v70 + 272);
            v162 = *(v70 + 264);
            LOBYTE(v163) = v44;
            (*(*v69 + 1192))(&v125, &v162);
            v14 = 1;
            v42 = v71;
            v32 = v72;
            v43 = v78;
            v41 = v77;
            v38 = v79;
            v18 = v86;
            v114 = v85;
            v37 = v80;
            v106 = v86;
            v5 = v82;
            v33 = v83;
            LOBYTE(v11) = v84;
            v105 = v107;
            v29 = v87;
            v28 = v88;
            v19 = v87;
            v20 = v88;
            v24 = v108;
            v27 = v89;
            v26 = v90;
            v23 = v89;
            v21 = v90;
            v25 = v91;
            v22 = v91;
            v40 = v81;
            v35 = v75;
            v30 = v76;
            v34 = v73;
            v31 = v74;
            v36 = v93;
            v39 = v92;
            if (v4)
            {
              goto LABEL_16;
            }
          }
        }

        v26 = *(&v167 + 1);
        v25 = v167;
        v27 = v168;
        v108 = BYTE8(v168);
        v29 = *(&v169 + 1);
        v28 = v169;
        v107 = v170[0];
LABEL_16:
        v14 = v67 ^ 1;
        v109 = v25;
        v110 = v26;
        v111 = v27;
        v112 = v108;
        v5 = v28;
        v4 = v29;
        LOBYTE(v11) = v107;
LABEL_36:

        v3 = v69;
        if (v11 != 2 || v4 | v5)
        {
          goto LABEL_67;
        }

        if (!(v113 & 1 | (v18 == 0)))
        {
          MEMORY[0x1865DF520](v18, -1, -1);
        }

        sub_181F68EF4(v109, v110, v111, v112);

        LOBYTE(v11) = v68 == 0;
        v4 = &v167;
        v5 = v66;
      }

      v54 = *(v70 + 272);
      v125 = *(v70 + 264);
      LOBYTE(v126) = v54;
      sub_18216BBA0(&v125);
      sub_182170B00();
      v2 = v3[8];
      if ((v2 & 0x20) != 0)
      {
        break;
      }

      if (!(((v14 & 1) == 0) | ((v2 & 0x40) >> 6) & 1))
      {
        v3[8] = v2 | 0x20;
        break;
      }
    }

    while ((v11 & 1) == 0);
    swift_beginAccess();
    v11 = *(v3 + 5);
    v55 = 1 << *(v11 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v11 + 64);
    v5 = (v55 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v4 = 0;
    while (v57)
    {
LABEL_54:
      v59 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v60 = *(*(v11 + 56) + ((v4 << 9) | (8 * v59)));
      if ((*(v60 + 56) & 0x100) != 0)
      {
        *(v60 + 56) &= ~0x100u;
        v61 = *(v60 + 64);
        v62 = *(v60 + 72);
        v63 = *(v60 + 80);
        v162 = v61;
        v163 = v62;
        v164 = v63;
        if (*(v60 + 104) == 6 && *(v60 + 88) == 0)
        {
          *(v60 + 88) = v60;
          *(v60 + 96) = &off_1EEFC4E60;
          *(v60 + 104) = 3;
          swift_retain_n();
          sub_181F68EA8(v61, v62, v63);
          sub_181F68E5C(0, 0, 6u);
        }

        else
        {

          sub_181F68EA8(v61, v62, v63);
        }

        v64 = *(v60 + 96);
        v65 = *(v60 + 104);
        v159 = *(v60 + 88);
        v160 = v64;
        v161 = v65;
        sub_181F68EA8(v159, v64, v65);
        InputHandlerLinkage.invokeOutputAvailable(_:)(&v159);
        sub_181F68E5C(v159, v160, v161);
        sub_181F68E5C(v162, v163, v164);
      }
    }

    while (1)
    {
      v58 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_63;
      }

      if (v58 >= v5)
      {
        break;
      }

      v57 = *(v11 + 64 + 8 * v58);
      ++v4;
      if (v57)
      {
        v4 = v58;
        goto LABEL_54;
      }
    }
  }

  return result;
}

void sub_18216F64C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v155 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v12 = *(v5 + 40);
  if (!*(v12 + 16))
  {
    goto LABEL_14;
  }

  v13 = sub_18224EEF0(a1);
  if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = *(v15 + 56);
  if ((v16 & 0x200) != 0)
  {
    v19 = *(v15 + 64);
    v20 = *(v15 + 72);
    v21 = *(v15 + 80);
    *&v127 = v19;
    *(&v127 + 1) = v20;
    LOBYTE(v128) = v21;
    if (*(v15 + 104) == 6 && *(v15 + 88) == 0)
    {
      *(v15 + 88) = v15;
      *(v15 + 96) = &off_1EEFC4E60;
      *(v15 + 104) = 3;
      swift_retain_n();
      sub_181F68EA8(v19, v20, v21);
      sub_181F68E5C(0, 0, 6u);
    }

    else
    {

      sub_181F68EA8(v19, v20, v21);
    }

    v22 = *(v15 + 88);
    v23 = *(v15 + 96);
    v24 = *(v15 + 104);
    *&v140 = v22;
    *(&v140 + 1) = v23;
    LOBYTE(v141) = v24;
    v25 = 57;
LABEL_13:
    v111 = v25;
    v112 = 0;
    sub_181F68EA8(v22, v23, v24);
    InputHandlerLinkage.invokeError(_:error:)(&v140, &v111);

    sub_181F68E5C(v140, *(&v140 + 1), v141);
    sub_181F68E5C(v127, *(&v127 + 1), v128);
LABEL_14:
    sub_181F73CAC(&v140);
LABEL_15:
    v26 = v153;
    *(a5 + 192) = v152;
    *(a5 + 208) = v26;
    *(a5 + 224) = v154;
    v27 = v149;
    *(a5 + 128) = v148;
    *(a5 + 144) = v27;
    v28 = v151;
    *(a5 + 160) = v150;
    *(a5 + 176) = v28;
    v29 = v145;
    *(a5 + 64) = v144;
    *(a5 + 80) = v29;
    v30 = v147;
    *(a5 + 96) = v146;
    *(a5 + 112) = v30;
    v31 = v141;
    *a5 = v140;
    *(a5 + 16) = v31;
    v33 = v142;
    v32 = v143;
LABEL_16:
    *(a5 + 32) = v33;
    *(a5 + 48) = v32;
    return;
  }

  if ((v16 & 2) == 0)
  {
    v17 = *(v6 + 16);
    if ((v17 & 4) == 0)
    {
      *(v6 + 16) = v17 | 4;
    }
  }

  if ((v16 & 0x800) != 0)
  {
    v18 = *(v15 + 32);
    if (v18 < a2 && a4 == 1)
    {
      v35 = *(v15 + 40);
      if (v18 < 0 && !v35)
      {
        v35 = -v18;
        if (__OFSUB__(0, v18))
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        *(v15 + 40) = v35;
      }

      if (__OFADD__(v18, v35))
      {
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      if (v18 + v35 < 0)
      {
        v18 = -v35;
        if (__OFSUB__(0, v35))
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v36 = a3;
  v37 = v16;
  if ((*(v6 + 16) & 8) != 0)
  {
    v36 = *(v15 + 24);
    if (v36 < a2)
    {
      if ((v16 & 0x80) == 0)
      {
        *(v15 + 56) = v16 | 0x80;
      }

      goto LABEL_14;
    }

    v37 = v16;
    if ((v16 & 0x80) != 0)
    {
      v37 = v16 & 0xFD7F;
      *(v15 + 56) = v16 & 0xFD7F;
    }

    if (v36 >= a3)
    {
      v36 = a3;
    }
  }

  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v36))
  {
    goto LABEL_123;
  }

  v39 = *(v6 + 24);
  v38 = *(v6 + 32);
  if (__OFADD__(v39, v38))
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (0x7FFFFFFFFFFFFFFFLL - v36 >= v39 + v38)
  {
    v89 = __OFADD__(v36, v39);
    v40 = v36 + v39;
    if (v89)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v110 = v40 + v38;
    if (__OFADD__(v40, v38))
    {
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if ((v37 & 0x800) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v37 & 0x800) == 0)
    {
LABEL_41:
      if ((v37 & 0x400) != 0)
      {
        v140 = 0uLL;
        LOBYTE(v141) = 2;

        sub_1821441B4(v110, &v140, &v127);
      }

      else
      {

        memset(&v130[8], 0, 33);
        v131 = 0u;
        v132 = 0u;
        *&v133 = 0;
        DWORD2(v133) = 2;
        BYTE12(v133) = 1;
        v134 = 0uLL;
        LOBYTE(v135) = 1;
        v136 = 0uLL;
        *(&v135 + 1) = 0;
        LOWORD(v137) = 256;
        BYTE2(v137) = 0;
        *(&v137 + 1) = 0;
        LOBYTE(v138) = -1;
        *&v127 = swift_slowAlloc();
        *(&v127 + 1) = v110;
        *&v128 = 0;
        BYTE8(v128) = 0;
        v129 = xmmword_182AE69F0;
        v130[0] = 2;
        v150 = v135;
        v151 = 0uLL;
        v152 = v137;
        LOBYTE(v153) = -1;
        v146 = 0u;
        v147 = 0u;
        v148 = v133;
        v149 = 0uLL;
        v142 = xmmword_182AE69F0;
        v143 = *v130;
        v144 = *&v130[16];
        v145 = *&v130[32];
        v140 = v127;
        v141 = v128;
        *&v130[24] = Frame.bufferLength.getter();
      }

      v51 = *(v6 + 24);
      v52 = *(v6 + 32);
      if (v51 > 0 || v52 >= 1)
      {
        Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v51, v52, 1);
      }

      if ((*(v6 + 16) & 8) == 0)
      {
        goto LABEL_73;
      }

      v53 = *(v15 + 24);
      v89 = __OFSUB__(v53, v110);
      v54 = v53 - v110;
      if (!v89)
      {
        *(v15 + 24) = v54;
LABEL_73:

        v150 = v135;
        v151 = v136;
        v152 = v137;
        LOBYTE(v153) = v138;
        v146 = v131;
        v147 = v132;
        v148 = v133;
        v149 = v134;
        v142 = v129;
        v143 = *v130;
        v144 = *&v130[16];
        v145 = *&v130[32];
        v140 = v127;
        v141 = v128;
        *(&v153 + 1) = 0;
        v154 = 0;
        nullsub_41(&v140);
        goto LABEL_15;
      }

      goto LABEL_130;
    }
  }

  if ((v16 & 0x800) == 0)
  {
    goto LABEL_138;
  }

  v41 = 9216;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 9216;
  }

  else
  {
    v42 = v18;
  }

  if (v18)
  {
    v41 = v42;
  }

  if (v110 < v41)
  {
    v41 = v110;
  }

  v106 = v41;
  if ((v41 * a4) >> 64 != (v41 * a4) >> 63)
  {
    goto LABEL_127;
  }

  if (v41 * a4 < a2)
  {
    v43 = qword_1EA8371A0;

    if (v43 == -1)
    {
LABEL_57:
      v44 = sub_182AD2698();
      __swift_project_value_buffer(v44, qword_1EA843348);
      v45 = sub_182AD2678();
      v46 = sub_182AD38B8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134218752;
        *(v47 + 4) = v106;
        *(v47 + 12) = 2048;
        *(v47 + 14) = a2;
        *(v47 + 22) = 2048;
        *(v47 + 24) = a3;
        *(v47 + 32) = 2048;
        *(v47 + 34) = a4;
        _os_log_impl(&dword_181A37000, v45, v46, "Cannot return %ld/%ld/%ld bytes in %ld datagrams, returning 0 frames", v47, 0x2Au);
        MEMORY[0x1865DF520](v47, -1, -1);
      }

      if ((*(v15 + 56) & 0x1000) == 0)
      {
        *(v15 + 56) |= 0x1000u;
      }

      v48 = *(v15 + 64);
      v49 = *(v15 + 72);
      v50 = *(v15 + 80);
      *&v127 = v48;
      *(&v127 + 1) = v49;
      LOBYTE(v128) = v50;
      if (*(v15 + 104) == 6 && *(v15 + 88) == 0)
      {
        *(v15 + 88) = v15;
        *(v15 + 96) = &off_1EEFC4E60;
        *(v15 + 104) = 3;
        v101 = v48;
        v102 = v49;
        v103 = v50;

        sub_181F68EA8(v101, v102, v103);
        sub_181F68E5C(0, 0, 6u);
      }

      else
      {
        sub_181F68EA8(v48, v49, v50);
      }

      v22 = *(v15 + 88);
      v23 = *(v15 + 96);
      v24 = *(v15 + 104);
      *&v140 = v22;
      *(&v140 + 1) = v23;
      LOBYTE(v141) = v24;
      v25 = 40;
      goto LABEL_13;
    }

LABEL_131:
    swift_once();
    goto LABEL_57;
  }

  v104 = v41 * a4;

  FrameArray.init()(&v140);
  if (a4 < 0)
  {
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v55 = v106;
  a2 = 0;
  if (!a4)
  {
LABEL_112:
    if ((*(v15 + 56) & 0x1000) != 0)
    {
      *(v15 + 56) &= ~0x1000u;
    }

    if ((*(v6 + 16) & 8) == 0)
    {
      goto LABEL_117;
    }

    v93 = *(v15 + 24);
    v89 = __OFSUB__(v93, a2);
    v94 = v93 - a2;
    if (!v89)
    {
      *(v15 + 24) = v94;
LABEL_117:

      v137 = v152;
      v138 = v153;
      v139 = v154;
      v133 = v148;
      v134 = v149;
      v135 = v150;
      v136 = v151;
      *&v130[16] = v144;
      *&v130[32] = v145;
      v131 = v146;
      v132 = v147;
      v127 = v140;
      v128 = v141;
      v129 = v142;
      *v130 = v143;
      nullsub_41(&v127);
      v95 = v138;
      *(a5 + 192) = v137;
      *(a5 + 208) = v95;
      *(a5 + 224) = v139;
      v96 = v134;
      *(a5 + 128) = v133;
      *(a5 + 144) = v96;
      v97 = v136;
      *(a5 + 160) = v135;
      *(a5 + 176) = v97;
      v98 = *&v130[32];
      *(a5 + 64) = *&v130[16];
      *(a5 + 80) = v98;
      v99 = v132;
      *(a5 + 96) = v131;
      *(a5 + 112) = v99;
      v100 = v128;
      *a5 = v127;
      *(a5 + 16) = v100;
      v33 = v129;
      v32 = *v130;
      goto LABEL_16;
    }

LABEL_136:
    __break(1u);
  }

  v109 = v15;
  v105 = v6;
  while (1)
  {
    if (a2 >= v110)
    {
      goto LABEL_112;
    }

    if ((*(v15 + 56) & 0x400) != 0)
    {
      *&v118 = 0;
      BYTE8(v118) = 0;
      *(&v116 + 1) = 0;
      *&v117 = 0;
      v119 = 0u;
      v120 = 0u;
      *&v121 = 0;
      DWORD2(v121) = 2;
      BYTE12(v121) = 1;
      v122 = 0uLL;
      LOBYTE(v123) = 1;
      v124 = 0uLL;
      *(&v123 + 1) = 0;
      LOBYTE(v125) = 0;
      *(&v125 + 1) = 1;
      *(&v125 + 1) = 0;
      v126 = -1;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
      v58 = swift_allocBox();
      v59 = v55;
      v61 = v60;
      v62 = *(v57 + 48);
      sub_182AD2848();
      *(v61 + v62) = v59;
      v55 = v59;
      v113 = v58;
      *&v114 = 0;
      BYTE8(v114) = 2;
      v115 = 0uLL;
      LOBYTE(v116) = 2;
      v15 = v109;
      v56 = *(swift_projectBox() + *(v57 + 48));
    }

    else
    {
      *&v118 = 0;
      BYTE8(v118) = 0;
      *(&v116 + 1) = 0;
      *&v117 = 0;
      v119 = 0u;
      v120 = 0u;
      *&v121 = 0;
      DWORD2(v121) = 2;
      BYTE12(v121) = 1;
      v122 = 0uLL;
      LOBYTE(v123) = 1;
      v124 = 0uLL;
      *(&v123 + 1) = 0;
      LOBYTE(v125) = 0;
      *(&v125 + 1) = 1;
      *(&v125 + 1) = 0;
      v126 = -1;
      *&v113 = swift_slowAlloc();
      *(&v113 + 1) = v55;
      *&v114 = 0;
      BYTE8(v114) = 0;
      v115 = xmmword_182AE69F0;
      v56 = v55;
      LOBYTE(v116) = 2;
    }

    *(&v117 + 1) = v56;
    v63 = *(v6 + 24);
    v64 = *(v6 + 32);
    if (v63 > 0 || v64 >= 1)
    {
      Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v63, v64, 1);
    }

    if (v154 == 1)
    {
      break;
    }

    a3 = v55;
    v73 = a4;
    v74 = *(&v153 + 1);
    if (!*(&v153 + 1))
    {
      v74 = *sub_182AD2388();
      *(&v153 + 1) = v74;
    }

    type metadata accessor for FrameArrayEntry();
    a4 = swift_allocObject();
    swift_beginAccess();
    v75 = v118;
    *(a4 + 80) = v117;
    *(a4 + 96) = v75;
    v76 = v116;
    *(a4 + 48) = v115;
    *(a4 + 64) = v76;
    v77 = v120;
    v78 = v122;
    v79 = v123;
    *(a4 + 144) = v121;
    *(a4 + 160) = v78;
    *(a4 + 112) = v119;
    *(a4 + 128) = v77;
    v80 = v125;
    *(a4 + 192) = v124;
    *(a4 + 208) = v80;
    *(a4 + 224) = v126;
    *(a4 + 176) = v79;
    v81 = v114;
    *(a4 + 16) = v113;
    *(a4 + 32) = v81;
    v82 = v74[3];
    v83 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      goto LABEL_120;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v74[2] < v83 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F461F8(isUniquelyReferenced_nonNull_native, v83);
      v74 = *(&v153 + 1);
    }

    v85 = v74[3];
    v86 = v74[4];
    v89 = __OFADD__(v86, v85);
    v87 = v86 + v85;
    if (v89)
    {
      goto LABEL_121;
    }

    if (v85 < 0)
    {
      if (v87 < 0)
      {
        v91 = v74[2];
        v89 = __OFADD__(v87, v91);
        v87 += v91;
        if (v89)
        {
          goto LABEL_133;
        }
      }
    }

    else
    {
      v88 = v74[2];
      v89 = __OFSUB__(v87, v88);
      v90 = v87 - v88;
      if (v90 < 0 == v89)
      {
        v87 = v90;
        if (v89)
        {
          goto LABEL_128;
        }
      }
    }

    v74[v87 + 5] = a4;
    v89 = __OFADD__(v85, 1);
    v92 = v85 + 1;
    if (v89)
    {
      goto LABEL_122;
    }

    v74[3] = v92;
    a4 = v73;
    v55 = a3;
LABEL_109:
    if (__OFADD__(a2, v55))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    a2 += v55;
    if (!--a4)
    {
      a2 = v104;
      goto LABEL_112;
    }
  }

  v107 = a2;
  v108 = a4;
  v135 = v123;
  v136 = v124;
  v137 = v125;
  v131 = v119;
  v132 = v120;
  LOBYTE(v138) = v126;
  v133 = v121;
  v134 = v122;
  v129 = v115;
  *v130 = v116;
  *&v130[16] = v117;
  *&v130[32] = v118;
  v127 = v113;
  v128 = v114;
  a3 = *(&v140 + 1);
  v65 = v140;
  v66 = v141;
  v67 = BYTE8(v141);
  v68 = v142;
  v69 = v143;
  v70 = v149;
  v71 = v150;

  if (v69 == 2 && v68 == 0)
  {
    if (v70)
    {
      v72 = v71;
    }

    else
    {
      v72 = 1;
    }

    if ((v72 & 1) == 0)
    {
      MEMORY[0x1865DF520](v70, -1, -1);
    }

    sub_181F68EF4(v65, a3, v66, v67);

    v150 = v135;
    v151 = v136;
    v152 = v137;
    v146 = v131;
    v147 = v132;
    v148 = v133;
    v149 = v134;
    v142 = v129;
    v143 = *v130;
    v144 = *&v130[16];
    v145 = *&v130[32];
    v140 = v127;
    v141 = v128;
    v153 = v138;
    v154 = 0;
    v15 = v109;
    v6 = v105;
    a2 = v107;
    a4 = v108;
    v55 = v106;
    goto LABEL_109;
  }

  sub_181F68EF4(v65, a3, v66, v67);

  sub_181F68F3C(v68, *(&v68 + 1), v69);
  __break(1u);
LABEL_138:
  __break(1u);
}