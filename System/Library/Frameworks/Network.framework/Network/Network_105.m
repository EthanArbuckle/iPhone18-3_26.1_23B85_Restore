uint64_t sub_182127FA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  type metadata accessor for NetworkStorage(0);
  sub_1821277FC(v2);
  result = sub_18213B688(v2);
  qword_1EA8431D0 = result;
  return result;
}

uint64_t sub_182128038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  *(a1 + 8) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (*(a1 + 16) == 1)
  {
    v10 = *a1;
  }

  else
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181AB5D28(a2 + OBJC_IVAR____TtC7Network14NetworkStorage_url, v9, &unk_1EA838BB0);
    v10 = sub_18212822C(v9, 0);
    *a1 = v10;

    *(a1 + 16) = 1;
    if (v10)
    {
      v11 = sub_182AD3548();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = a2;

      sub_182271E84(0, 0, v6, &unk_182AF86E8, v12);
    }
  }

  return v10;
}

uint64_t sub_18212822C(uint64_t a1, int a2)
{
  v110 = a2;
  v121 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v101 = v92 - v4;
  v105 = sub_182AD1F68();
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = v92 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v111 = v92 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v92 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v92 - v16;
  v18 = sub_182AD2058();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v104 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v103 = v92 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v106 = v92 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v113 = v92 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v92 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v92 - v31;
  sub_182AD2E18();
  sub_18213E1F8();
  v33 = sub_182AD2DA8();
  v34 = sub_182AD2D58();
  v114 = *(v34 - 8);
  v115 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v116 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v92 - v37;
  v118 = a1;
  sub_181AB5D28(a1, v17, &unk_1EA838BB0);
  v39 = *(v19 + 48);
  v112 = v19 + 48;
  v117 = v39;
  if (v39(v17, 1, v18) == 1)
  {
    sub_181F49A88(v17, &unk_1EA838BB0);
    v40 = sub_182AD2D28();
    MEMORY[0x1EEE9AC00](v40 - 8);

    sub_182AD2D18();
    v41 = sub_182AD2D48();
    MEMORY[0x1EEE9AC00](v41 - 8);
    sub_182AD2D18();
    sub_182AD2D68();
  }

  else
  {
    (*(v19 + 32))(v32, v17, v18);
    (*(v19 + 16))(v29, v32, v18);
    v42 = sub_182AD2D48();
    MEMORY[0x1EEE9AC00](v42 - 8);

    sub_182AD2D18();
    sub_182AD2D78();
    (*(v19 + 8))(v32, v18);
  }

  v44 = v114;
  v43 = v115;
  v45 = v116;
  (*(v114 + 32))(v116, v38, v115);
  sub_181AB5D28(v118, v14, &unk_1EA838BB0);
  v46 = v117(v14, 1, v18);
  v47 = v113;
  v109 = v19;
  if (v46 == 1)
  {
    sub_181F49A88(v14, &unk_1EA838BB0);
  }

  else
  {
    (*(v19 + 32))(v113, v14, v18);
    if (v110)
    {
      v98 = objc_opt_self();
      v48 = [v98 defaultManager];
      v49 = sub_182AD1F98();
      v119 = 0;
      v50 = [v48 removeItemAtURL:v49 error:&v119];

      v108 = v33;
      if (v50)
      {
        v51 = v119;
      }

      else
      {
        v52 = v119;
        v53 = sub_182AD1F08();

        swift_willThrow();
      }

      sub_182AD1FA8();
      v97 = sub_182AD1F88();
      v119 = v97;
      v120 = v54;
      v96 = v54;

      MEMORY[0x1865D9CA0](1818326829, 0xE400000000000000);
      v55 = v107;
      v56 = *(v107 + 104);
      v57 = v102;
      v95 = *MEMORY[0x1E6968F68];
      v58 = v105;
      v94 = v107 + 104;
      v93 = v56;
      v56(v102);
      v92[1] = sub_181AC2364();
      sub_182AD2048();
      v59 = *(v55 + 8);
      v107 = v55 + 8;
      v92[0] = v59;
      v59(v57, v58);

      v60 = v98;
      v61 = [v98 defaultManager];
      v62 = sub_182AD1F98();
      v119 = 0;
      LODWORD(v58) = [v61 removeItemAtURL:v62 error:&v119];

      if (v58)
      {
        v63 = v119;
      }

      else
      {
        v64 = v119;
        v65 = sub_182AD1F08();

        swift_willThrow();
      }

      v43 = v115;
      v119 = v97;
      v120 = v96;
      MEMORY[0x1865D9CA0](1835561773, 0xE400000000000000);
      v66 = v102;
      v67 = v105;
      v93(v102, v95, v105);
      sub_182AD2048();
      (v92[0])(v66, v67);

      v68 = [v60 defaultManager];
      v69 = sub_182AD1F98();
      v119 = 0;
      v70 = [v68 removeItemAtURL:v69 error:&v119];

      if (v70)
      {
        v71 = v119;
      }

      else
      {
        v72 = v119;
        v73 = sub_182AD1F08();

        swift_willThrow();
      }

      v44 = v114;
      v74 = *(v19 + 8);
      v74(v104, v18);
      v74(v103, v18);
      v74(v106, v18);
      v74(v113, v18);
      v45 = v116;
    }

    else
    {
      (*(v19 + 8))(v47, v18);
    }
  }

  sub_182AD2C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A790);
  v75 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_182AE9730;
  (*(v44 + 16))(v76 + v75, v45, v43);

  v77 = sub_182AD2C78();
  type metadata accessor for NetworkStorage.InternalStorage(0);
  v78 = swift_allocObject();
  *(v78 + 16) = 0;

  sub_182AD3DA8();
  sub_182AD2C58();
  swift_allocObject();

  sub_182AD2C68();
  sub_182AD2D98();
  swift_allocObject();
  v79 = sub_182AD2D88();
  v80 = sub_18213E24C(&unk_1EA836410, MEMORY[0x1EEE7B268]);
  v81 = (v78 + OBJC_IVAR____TtCC7Network14NetworkStorageP33_6FEE2748074394A1FD56B79DFE5A066E15InternalStorage_modelExecutor);
  *v81 = v79;
  v81[1] = v80;
  *(v78 + OBJC_IVAR____TtCC7Network14NetworkStorageP33_6FEE2748074394A1FD56B79DFE5A066E15InternalStorage_modelContainer) = v77;
  v82 = qword_1EA8364A0;

  if (v82 != -1)
  {
    swift_once();
  }

  v83 = sub_182AD2698();
  __swift_project_value_buffer(v83, qword_1EA8364A8);
  v84 = sub_182AD2678();
  v85 = sub_182AD38A8();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_181A37000, v84, v85, "created storage", v86, 2u);
    v87 = v86;
    v45 = v116;
    MEMORY[0x1865DF520](v87, -1, -1);
  }

  v88 = v101;
  sub_182AD3528();
  v89 = sub_182AD3548();
  (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
  v90 = swift_allocObject();
  v90[2] = 0;
  v90[3] = 0;
  v90[4] = v78;
  sub_181F774B4(0, 0, v88, &unk_182AF8700, v90);

  (*(v44 + 8))(v45, v43);
  sub_181F49A88(v118, &unk_1EA838BB0);
  return v78;
}

uint64_t sub_182129438()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage;
  v0[3] = OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage;
  v3 = v1 + v2;
  os_unfair_lock_lock((v1 + v2));
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  v5 = *(v3 + 16);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA60](v4);
  }

  v8 = v0[2] + v0[3];
  if (v7 < 0xA7A358200)
  {
    v12 = 60000000000 - v7;
    os_unfair_lock_unlock(v8);
    v13 = swift_task_alloc();
    v0[4] = v13;
    *v13 = v0;
    v13[1] = sub_182129584;
    v4 = v12;

    return MEMORY[0x1EEE6DA60](v4);
  }

  *(v8 + 8) = 0;
  v9 = v8;

  *(v9 + 24) = 0;
  os_unfair_lock_unlock(v9);
  v10 = v0[1];

  return v10();
}

uint64_t sub_182129584()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1821296B4, 0, 0);
  }
}

uint64_t sub_1821296B4()
{
  v1 = v0[2] + v0[3];
  os_unfair_lock_lock(v1);
  v2 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  v3 = *(v1 + 16);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA60](v2);
  }

  v6 = v0[2] + v0[3];
  if (v5 < 0xA7A358200)
  {
    v10 = 60000000000 - v5;
    os_unfair_lock_unlock(v6);
    v11 = swift_task_alloc();
    v0[4] = v11;
    *v11 = v0;
    v11[1] = sub_182129584;
    v2 = v10;

    return MEMORY[0x1EEE6DA60](v2);
  }

  *(v6 + 8) = 0;
  v7 = v6;

  *(v7 + 24) = 0;
  os_unfair_lock_unlock(v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1821297F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A8F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_182AE8B90;
  v1 = type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  v2 = sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  v4 = sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  v6 = sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t sub_182129934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
  v6 = sub_182AD34A8();

  return MEMORY[0x1EEE6DFA0](sub_1821299F0, v6, v5);
}

uint64_t sub_1821299F0()
{
  sub_18212B8C4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_182129A50()
{
  v1 = v0;
  if (qword_1EA8364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_182AD2698();
  __swift_project_value_buffer(v2, qword_1EA8364A8);
  v3 = sub_182AD2678();
  v4 = sub_182AD38A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_181A37000, v3, v4, "destroyed storage", v5, 2u);
    MEMORY[0x1865DF520](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtCC7Network14NetworkStorageP33_6FEE2748074394A1FD56B79DFE5A066E15InternalStorage_lastSave;
  v7 = sub_182AD3DC8();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_182129B98()
{
  sub_182129A50();

  return swift_deallocClassInstance();
}

uint64_t sub_182129BEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A670);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A678);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A680);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7];
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_182AD2C08();

  sub_182AD2BD8();
  type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A688);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2C28();
  sub_181F49A88(v8, &qword_1EA83A680);

  sub_182AD2BD8();
  type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A690);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2C28();
  sub_181F49A88(v5, &qword_1EA83A678);

  sub_182AD2BD8();
  type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A698);
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2C28();
  sub_181F49A88(v2, &qword_1EA83A670);
}

uint64_t sub_18212A158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A680);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v15 = a1;
  v16 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v7 = sub_182AD3238();
  v9 = v8;
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_182AD2C08();

  sub_182AD2BD8();
  v10 = type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  MEMORY[0x1EEE9AC00](v10);
  *&v14[-16] = v7;
  *&v14[-8] = v9;
  v15 = v11;
  sub_182AD2288();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A688);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2C28();
  sub_181F49A88(v6, &qword_1EA83A680);
}

uint64_t sub_18212A558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A678);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v15 = a1;
  v16 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v7 = sub_182AD3238();
  v9 = v8;
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_182AD2C08();

  sub_182AD2BD8();
  v10 = type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  MEMORY[0x1EEE9AC00](v10);
  *&v14[-16] = v7;
  *&v14[-8] = v9;
  v15 = v11;
  sub_182AD2288();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A690);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2C28();
  sub_181F49A88(v6, &qword_1EA83A678);
}

uint64_t sub_18212A958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v15 = a1;
  v16 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v7 = sub_182AD3238();
  v9 = v8;
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_182AD2C08();

  sub_182AD2BD8();
  v10 = type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  MEMORY[0x1EEE9AC00](v10);
  *&v14[-16] = v7;
  *&v14[-8] = v9;
  v15 = v11;
  sub_182AD2288();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A698);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2C28();
  sub_181F49A88(v6, &qword_1EA83A670);
}

uint64_t sub_18212AD58()
{
  v1 = sub_182AD3DC8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  *(v0 + 16) = 0;

  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_182AD2C08();

  sub_182AD3DA8();
  v8 = OBJC_IVAR____TtCC7Network14NetworkStorageP33_6FEE2748074394A1FD56B79DFE5A066E15InternalStorage_lastSave;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v8, v1);
  sub_182AD3DB8();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  result = sub_182AD4678();
  if (result)
  {
    sub_182AD3DA8();
    swift_beginAccess();
    (*(v2 + 40))(v0 + v8, v7, v1);
    swift_endAccess();
    return sub_18212B8C4();
  }

  return result;
}

void sub_18212B0D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  if (!*(v0 + 16))
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
    sub_182AD2BD8();
    v5 = sub_182AD2BF8();

    if (v5)
    {
      sub_182AD3528();
      v6 = sub_182AD3548();
      (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v1;

      v8 = sub_18212B658(0, 0, v4, &unk_182AF8678, v7);
      sub_181F49A88(v4, &unk_1EA839850);
      *(v1 + 16) = v8;
    }
  }
}

uint64_t sub_18212B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_182AD3DD8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18212B340, 0, 0);
}

uint64_t sub_18212B340()
{
  sub_182AD4438();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_18212B40C;

  return sub_18213ACC4(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_18212B40C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_181F51218;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_18213A88C(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v8 = sub_182AD34A8();
    v10 = v9;
    v5 = sub_18212B5E8;
    v6 = v8;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18212B5E8()
{
  sub_18212AD58();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18212B658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_181AB5D28(a3, v22 - v9, &unk_1EA839850);
  v11 = sub_182AD3548();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_181F49A88(v10, &unk_1EA839850);
  }

  else
  {
    sub_182AD3538();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_182AD34A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_182AD3048() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_18212B8C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A670);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A678);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A680);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v23 = sub_182AD21E8();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182AD21C8();
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  v12 = type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  v24 = v11;
  v27 = v12;
  sub_182AD2288();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A688);
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2C28();
  v22 = v2;
  sub_181F49A88(v8, &qword_1EA83A680);

  sub_182AD2BD8();
  v14 = type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  MEMORY[0x1EEE9AC00](v14);
  *(&v22 - 2) = v11;
  v26 = v15;
  sub_182AD2288();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A690);
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2C28();
  sub_181F49A88(v5, &qword_1EA83A678);

  sub_182AD2BD8();
  v17 = type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  MEMORY[0x1EEE9AC00](v17);
  *(&v22 - 2) = v11;
  v25 = v18;
  v19 = v22;
  sub_182AD2288();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A698);
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2C28();
  sub_181F49A88(v19, &qword_1EA83A670);

  return (*(v9 + 8))(v11, v23);
}

uint64_t sub_18212BFD8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_182AD1EC8();
  v22[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  sub_181AB3DCC(&qword_1EA8366B8, &qword_1EA83A6D8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  (*(v9 + 8))(v11, v8);
  sub_182AD21E8();
  sub_182AD1ED8();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, *MEMORY[0x1E6968C40], v23);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6E8);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_18213DAC4();
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_181AB3DCC(&qword_1EA836708, &qword_1EA83A6E0);
  sub_181AB3DCC(&qword_1EA836748, &qword_1EA83A6A0);
  sub_18213A88C(&qword_1EA836680, MEMORY[0x1E6969530]);
  v20 = v25;
  sub_182AD1E98();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_18212C440()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  sub_182AD2CF8();
}

uint64_t sub_18212C578()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  sub_182AD2CF8();
}

uint64_t sub_18212C6B0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_182AD21E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2318();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_18212C838@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_182AD1EC8();
  v22[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6C8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  sub_181AB3DCC(&qword_1EA8366A8, &qword_1EA83A6C0);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  (*(v9 + 8))(v11, v8);
  sub_182AD21E8();
  sub_182AD1ED8();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, *MEMORY[0x1E6968C40], v23);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6D0);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_18213D988();
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_181AB3DCC(&qword_1EA8366D8, &qword_1EA83A6C8);
  sub_181AB3DCC(&qword_1EA836748, &qword_1EA83A6A0);
  sub_18213A88C(&qword_1EA836680, MEMORY[0x1E6969530]);
  v20 = v25;
  sub_182AD1E98();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_18212CCA0()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  sub_182AD2CF8();
}

uint64_t sub_18212CDD8()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  sub_182AD2CF8();
}

uint64_t sub_18212CF10(uint64_t a1, uint64_t *a2)
{
  v4 = sub_182AD21E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2318();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_18212D098@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_182AD1EC8();
  v22[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6B0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  sub_181AB3DCC(&qword_1EA8366C8, &qword_1EA83A6A8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  (*(v9 + 8))(v11, v8);
  sub_182AD21E8();
  sub_182AD1ED8();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, *MEMORY[0x1E6968C40], v23);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6B8);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_18213D764();
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_181AB3DCC(&qword_1EA836718, &qword_1EA83A6B0);
  sub_181AB3DCC(&qword_1EA836748, &qword_1EA83A6A0);
  sub_18213A88C(&qword_1EA836680, MEMORY[0x1E6969530]);
  v20 = v25;
  sub_182AD1E98();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_18212D500()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  sub_182AD2CF8();
}

uint64_t sub_18212D638()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  sub_182AD2CF8();
}

uint64_t sub_18212D770(uint64_t a1, uint64_t *a2)
{
  v4 = sub_182AD21E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2318();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_18212D8F8()
{
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  return sub_182AD2BE8();
}

uint64_t sub_18212D960()
{
  sub_181F49A88(v0 + OBJC_IVAR____TtC7Network14NetworkStorage_url, &unk_1EA838BB0);
  sub_181F49A88(v0 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage + 8, &qword_1EA83A6F0);

  return swift_deallocClassInstance();
}

void sub_18212DA20()
{
  sub_18212DAB8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18212DAB8()
{
  if (!qword_1EA836D68)
  {
    sub_182AD2058();
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA836D68);
    }
  }
}

uint64_t sub_18212DB38()
{
  result = sub_182AD3DC8();
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

uint64_t sub_18212DBEC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A8D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18213EFA4();
  sub_182AD4638();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_18213EFF8(&v16, v11);
  sub_181C675F8();
  sub_182AD4118();
  sub_181C1F2E4(v13, *(&v13 + 1));
  if (!v2)
  {
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_18213EFF8(&v15, v11);
    sub_182AD4118();
    sub_181C1F2E4(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_18213EFF8(&v14, v11);
    sub_182AD4118();
    sub_181C1F2E4(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18212DE0C()
{
  v1 = 1667855729;
  if (*v0 != 1)
  {
    v1 = 7564404;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x3370747468;
  }
}

uint64_t sub_18212DE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18213BBB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18212DE7C(uint64_t a1)
{
  v2 = sub_18213EFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18212DEB8(uint64_t a1)
{
  v2 = sub_18213EFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18212DEF4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18213B3BC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_18212DF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, __int128 *a6@<X8>)
{
  v57 = a6;
  v56 = sub_182AD21E8();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A680);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A688);
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v52 - v18;
  *&v65 = a1;
  *(&v65 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v20 = sub_182AD3238();
  v22 = v21;
  *&v65 = a3;
  *(&v65 + 1) = a4;

  v23 = sub_182AD3238();
  v60 = v20;
  v61 = v22;
  v62 = v23;
  v63 = v24;
  v64 = a5;
  v25 = type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  v68 = v25;
  sub_182AD2288();

  v26 = type metadata accessor for NetworkStorage.InternalStorage(0);
  v27 = sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  v52[3] = v26;
  v52[2] = v27;
  sub_182AD2BD8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A818);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v52 - v31;
  v33 = v59;
  v34 = *(v59 + 16);
  v58 = v19;
  v34(v16, v19, v17, v30);
  v35 = v17;
  (*(v33 + 56))(v16, 0, 1, v17);
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CA8();
  v36 = sub_182AD2C18();
  v52[1] = v25;
  v37 = v58;
  v38 = v59;
  (*(v29 + 8))(v32, v28);

  if (!(v36 >> 62))
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v38;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    (*(v40 + 8))(v37, v35);

    goto LABEL_11;
  }

  result = sub_182AD3EB8();
  v40 = v38;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v52[0] = v35;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x1865DA790](0, v36);
    goto LABEL_6;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v36 + 32);

LABEL_6:

    sub_182AD2BD8();
    sub_182AD2C38();

    sub_18212B0D8();
    *&v65 = v41;
    swift_getKeyPath();
    sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
    sub_182AD2328();

    swift_getKeyPath();
    sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
    v42 = v53;
    sub_182AD2CF8();

    v43 = v54;
    sub_182AD21C8();
    v44 = sub_182AD21B8();
    v45 = *(v55 + 8);
    v46 = v43;
    v47 = v56;
    v45(v46, v56);
    v45(v42, v47);
    if ((v44 & 1) == 0)
    {
      *&v65 = v41;
      swift_getKeyPath();
      sub_182AD2328();

      swift_getKeyPath();
      sub_18213C190();
      sub_182AD2CF8();

      result = (*(v40 + 8))(v58, v52[0]);
      v48 = v65;
      v49 = v66;
      v50 = v67;
LABEL_12:
      v51 = v57;
      *v57 = v48;
      v51[1] = v49;
      v51[2] = v50;
      return result;
    }

    (*(v40 + 8))(v58, v52[0]);

LABEL_11:
    v48 = xmmword_182AE8230;
    v49 = 0uLL;
    v50 = 0uLL;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_18212E85C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A680);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v38 - v1;
  v3 = sub_182AD21E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182AD21C8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A818);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v48 = v6;
  v51 = type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  sub_182AD2288();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A688);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_182AF7A30;
  *(v13 + 32) = swift_getKeyPath();
  *(v13 + 40) = swift_getKeyPath();
  sub_182AD2C98();
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  v14 = sub_182AD2C18();

  if (v14 >> 62)
  {
    v15 = sub_182AD3EB8();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {

    (*(v8 + 8))(v10, v7);
    v17 = MEMORY[0x1E69E7CC0];
LABEL_17:
    (*(v4 + 8))(v6, v3);
    return v17;
  }

  v50 = MEMORY[0x1E69E7CC0];
  result = sub_181FB7750(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v44 = v14;
    v45 = v12;
    v38 = v10;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = v4;
    v43 = v3;
    v17 = v50;
    v18 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      v47 = v15;
      do
      {
        v20 = MEMORY[0x1865DA790](v19, v18);
        v49 = v20;
        swift_getKeyPath();
        sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
        sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
        v46 = sub_182AD3238();
        v22 = v21;
        v49 = v20;
        swift_getKeyPath();
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        swift_unknownObjectRelease();
        v23 = v49;
        v50 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_181FB7750((v24 > 1), v25 + 1, 1);
          v17 = v50;
        }

        ++v19;
        *(v17 + 16) = v25 + 1;
        v26 = v17 + 24 * v25;
        v27 = v47;
        *(v26 + 32) = v46;
        *(v26 + 40) = v22;
        *(v26 + 48) = v23;
        v18 = v44;
      }

      while (v27 != v19);
    }

    else
    {
      v28 = 32;
      do
      {
        v47 = v15;
        v49 = *(v18 + v28);
        v29 = v49;
        swift_getKeyPath();
        sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);

        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
        sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
        v30 = sub_182AD3238();
        v46 = v31;
        v49 = v29;
        swift_getKeyPath();
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        v32 = v49;
        v50 = v17;
        v34 = *(v17 + 16);
        v33 = *(v17 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_181FB7750((v33 > 1), v34 + 1, 1);
          v17 = v50;
        }

        *(v17 + 16) = v34 + 1;
        v35 = v17 + 24 * v34;
        v36 = v46;
        v37 = v47;
        *(v35 + 32) = v30;
        *(v35 + 40) = v36;
        *(v35 + 48) = v32;
        v28 += 8;
        v15 = v37 - 1;
        v18 = v44;
      }

      while (v15);
    }

    (*(v39 + 8))(v38, v40);
    v4 = v42;
    v3 = v43;
    v6 = v41;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_18212F1D8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v33 = a1;
  v32 = a6;
  v10 = sub_182AD21E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  *&v34 = a2;
  *(&v34 + 1) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v17 = sub_182AD3238();
  v27 = v18;
  v28 = v17;
  *&v34 = a4;
  *(&v34 + 1) = a5;

  v19 = sub_182AD3238();
  v29 = v20;
  v30 = v19;
  v21 = type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  v22 = swift_allocObject();
  v22[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5F0);
  v23 = sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  *&v34 = v21;
  *(&v34 + 1) = v21;
  *&v35 = v23;
  *(&v35 + 1) = v23;
  v22[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v22 + 2);
  v31 = v23;
  sub_182AD2CB8();
  sub_182AD2338();
  sub_182AD21C8();
  sub_182AD21D8();
  v24 = *(v11 + 8);
  v24(v13, v10);
  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836688, MEMORY[0x1E6969530]);
  sub_182AD2BC8();

  v24(v16, v10);
  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  swift_getKeyPath();
  *&v34 = v28;
  *(&v34 + 1) = v27;
  sub_182AD2BC8();

  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  swift_getKeyPath();
  *&v34 = v30;
  *(&v34 + 1) = v29;
  sub_182AD2BC8();

  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  swift_getKeyPath();
  LOWORD(v34) = v32;
  sub_182AD2BC8();

  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  swift_getKeyPath();
  v25 = v33[1];
  v34 = *v33;
  v35 = v25;
  v36 = v33[2];
  sub_18213C13C();
  sub_182AD2BC8();

  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_182AD2C48();

  sub_18212B0D8();
}

uint64_t sub_18212F6D4()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CF8();

  return v0;
}

uint64_t sub_18212F7D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CF8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_18212F8E4()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2318();
}

uint64_t sub_18212F9BC()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CF8();

  return v0;
}

uint64_t sub_18212FAC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CF8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_18212FBCC()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2318();
}

uint64_t sub_18212FCA4()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CF8();

  return v1;
}

uint64_t sub_18212FDA8@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2CF8();

  *a1 = v3;
  return result;
}

uint64_t sub_18212FEB4()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2318();
}

double sub_18212FF84@<D0>(_OWORD *a1@<X8>)
{
  *&v4 = v1;
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_18213C190();
  sub_182AD2CF8();

  result = v1;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

double sub_18213009C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_18213C190();
  sub_182AD2CF8();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1821301B4()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E0, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_182AD2318();
}

uint64_t sub_182130290()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  sub_18213C13C();
  sub_182AD2D08();
}

uint64_t sub_18213037C()
{
  result = sub_182AD2348();
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

uint64_t sub_18213042C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v65 = a6;
  v59 = a4;
  v60 = a5;
  v56 = a3;
  v55 = a2;
  v71 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6F8);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v63 = v49 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A820);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A828);
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v62 = v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A710);
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6D8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A830);
  v76 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v49 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A838);
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v50 = v49 - v27;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A840);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = v49 - v28;
  v75 = *a1;
  v72 = sub_181AB3DCC(&qword_1EA8366B8, &qword_1EA83A6D8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v29 = *(v19 + 8);
  v73 = v19 + 8;
  v74 = v29;
  v29(v21, v18);
  v78 = v55;
  v79 = v56;
  sub_182AD1ED8();
  v56 = MEMORY[0x1E6968D58];
  v49[2] = sub_181AB3DCC(&qword_1EA8366F8, &qword_1EA83A830);
  v55 = MEMORY[0x1E6968D20];
  v49[1] = sub_181AB3DCC(&qword_1EA836738, &qword_1EA83A710);
  v30 = v22;
  sub_182AD1E68();
  v31 = *(v77 + 8);
  v77 += 8;
  v31(v17, v15);
  v32 = *(v76 + 8);
  v76 += 8;
  v32(v24, v30);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v74(v21, v18);
  v78 = v59;
  v79 = v60;
  sub_182AD1ED8();
  v33 = v51;
  sub_182AD1E68();
  v31(v17, v15);
  v32(v24, v30);
  sub_181AB3DCC(&qword_1EA836768, &qword_1EA83A838);
  v34 = v52;
  v35 = v50;
  v36 = v53;
  sub_182AD1EA8();
  v37 = *(v54 + 8);
  v37(v33, v36);
  v37(v35, v36);
  sub_182AD1EE8();
  swift_getKeyPath();
  v38 = v61;
  sub_182AD1E88();

  v74(v21, v18);
  LOWORD(v78) = v65;
  v39 = v63;
  sub_182AD1ED8();
  sub_181AB3DCC(&qword_1EA8366E8, &qword_1EA83A820);
  sub_181AB3DCC(&qword_1EA836728, &qword_1EA83A6F8);
  v40 = v62;
  v41 = v39;
  v42 = v64;
  v43 = v67;
  sub_182AD1E68();
  (*(v68 + 8))(v41, v43);
  (*(v66 + 8))(v38, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A848);
  v45 = v71;
  v71[3] = v44;
  v45[4] = sub_18213E6A8();
  __swift_allocate_boxed_opaque_existential_0Tm(v45);
  sub_181AB3DCC(&qword_1EA836780, &qword_1EA83A840);
  sub_181AB3DCC(&qword_1EA836758, &qword_1EA83A828);
  v46 = v57;
  v47 = v69;
  sub_182AD1EA8();
  (*(v70 + 8))(v40, v47);
  return (*(v58 + 8))(v34, v46);
}

uint64_t sub_182130E54@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_182AD1EC8();
  v22[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  sub_181AB3DCC(&qword_1EA8366B8, &qword_1EA83A6D8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  (*(v9 + 8))(v11, v8);
  sub_182AD21E8();
  sub_182AD1ED8();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, *MEMORY[0x1E6968C38], v23);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6E8);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_18213DAC4();
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_181AB3DCC(&qword_1EA836708, &qword_1EA83A6E0);
  sub_181AB3DCC(&qword_1EA836748, &qword_1EA83A6A0);
  sub_18213A88C(&qword_1EA836680, MEMORY[0x1E6969530]);
  v20 = v25;
  sub_182AD1E98();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1821312BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v43 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A710);
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6D8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A830);
  v44 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A888);
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v39 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v36 = *a1;
  v37 = v32 - v19;
  sub_181AB3DCC(&qword_1EA8366B8, &qword_1EA83A6D8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v20 = *(v10 + 8);
  v32[2] = v10 + 8;
  v35 = v20;
  v20(v12, v9);
  v46 = a2;
  v47 = a3;
  sub_182AD1ED8();
  v32[1] = sub_181AB3DCC(&qword_1EA8366F8, &qword_1EA83A830);
  v32[0] = sub_181AB3DCC(&qword_1EA836738, &qword_1EA83A710);
  v21 = v38;
  v22 = v40;
  sub_182AD1E78();
  v23 = *(v45 + 8);
  v45 += 8;
  v23(v8, v22);
  v24 = *(v44 + 8);
  v44 += 8;
  v24(v14, v21);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v35(v12, v9);
  v46 = v33;
  v47 = v34;
  sub_182AD1ED8();
  v25 = v39;
  sub_182AD1E78();
  v23(v8, v22);
  v24(v14, v21);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A890);
  v27 = v43;
  v43[3] = v26;
  v27[4] = sub_18213EBE4();
  __swift_allocate_boxed_opaque_existential_0Tm(v27);
  sub_181AB3DCC(&qword_1EA83A8A8, &qword_1EA83A888);
  v28 = v37;
  v29 = v41;
  sub_182AD1EB8();
  v30 = *(v42 + 8);
  v30(v25, v29);
  return (v30)(v28, v29);
}

uint64_t sub_182131880(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v15 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A8E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18213F054();
  sub_182AD4638();
  v13 = a2;
  v14 = a3;
  v16 = 0;
  sub_181F49B58(a2, a3);
  sub_181C675F8();
  sub_182AD4118();
  if (v4)
  {
    sub_181C1F2E4(v13, v14);
  }

  else
  {
    sub_181C1F2E4(v13, v14);
    LOBYTE(v13) = 1;
    sub_182AD4168();
    LOBYTE(v13) = 2;
    sub_182AD4168();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_182131A54()
{
  v1 = 1953656688;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28777;
  }
}

uint64_t sub_182131A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18213C460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_182131AC4(uint64_t a1)
{
  v2 = sub_18213F054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_182131B00(uint64_t a1)
{
  v2 = sub_18213F054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_182131B3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18213B17C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_182131B94(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = sub_182AD21E8();
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v49 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A678);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A690);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v43 - v17;
  v57 = a1;
  v58 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v53 = sub_182AD3238();
  v54 = v19;
  v55 = a3;
  v20 = type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  v57 = v20;
  sub_182AD2288();

  v21 = type metadata accessor for NetworkStorage.InternalStorage(0);
  v45 = sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  v46 = v21;
  v47 = v3;
  sub_182AD2BD8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7A0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v43 - v25;
  (*(v16 + 16))(v14, v18, v15, v24);
  v52 = v16;
  v27 = *(v16 + 56);
  v28 = v15;
  v27(v14, 0, 1, v15);
  v29 = sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2CA8();
  v30 = sub_182AD2C18();
  v43[1] = v20;
  v43[2] = v29;
  v31 = v51;
  v32 = v52;
  v44 = v28;
  (*(v23 + 8))(v26, v22);

  if (v30 >> 62)
  {
    result = sub_182AD3EB8();
  }

  else
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v44;
  v35 = v31;
  if (result)
  {
    v43[0] = v18;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1865DA790](0, v30);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v36 = *(v30 + 32);
    }

    v56 = v36;
    swift_getKeyPath();
    sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
    sub_182AD2328();

    swift_getKeyPath();
    sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
    v37 = v48;
    sub_182AD2CF8();

    v38 = v49;
    sub_182AD21C8();
    v39 = sub_182AD21B8();
    v40 = *(v35 + 8);
    v41 = v38;
    v42 = v50;
    v40(v41, v50);
    v40(v37, v42);
    if ((v39 & 1) == 0)
    {
      v56 = v36;
      swift_getKeyPath();
      sub_182AD2328();

      swift_getKeyPath();
      sub_18213C9DC(&qword_1EA83A620, sub_18213CA54);
      sub_182AD2CF8();

      (*(v32 + 8))(v43[0], v44);
      return v56;
    }

    sub_182AD2BD8();
    sub_182AD2C38();

    sub_18212B0D8();

    (*(v32 + 8))(v43[0], v44);
  }

  else
  {

    (*(v32 + 8))(v18, v34);
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_182132400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A678);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v38 - v1;
  v3 = sub_182AD21E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182AD21C8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v48 = v6;
  v51 = type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  sub_182AD2288();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A690);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_182AF7A30;
  *(v13 + 32) = swift_getKeyPath();
  *(v13 + 40) = swift_getKeyPath();
  sub_182AD2C98();
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  v14 = sub_182AD2C18();

  if (v14 >> 62)
  {
    v15 = sub_182AD3EB8();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {

    (*(v8 + 8))(v10, v7);
    v17 = MEMORY[0x1E69E7CC0];
LABEL_17:
    (*(v4 + 8))(v6, v3);
    return v17;
  }

  v50 = MEMORY[0x1E69E7CC0];
  result = sub_181FB7750(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v44 = v14;
    v45 = v12;
    v38 = v10;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = v4;
    v43 = v3;
    v17 = v50;
    v18 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      v47 = v15;
      do
      {
        v20 = MEMORY[0x1865DA790](v19, v18);
        v49 = v20;
        swift_getKeyPath();
        sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
        sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
        v46 = sub_182AD3238();
        v22 = v21;
        v49 = v20;
        swift_getKeyPath();
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        swift_unknownObjectRelease();
        v23 = v49;
        v50 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_181FB7750((v24 > 1), v25 + 1, 1);
          v17 = v50;
        }

        ++v19;
        *(v17 + 16) = v25 + 1;
        v26 = v17 + 24 * v25;
        v27 = v47;
        *(v26 + 32) = v46;
        *(v26 + 40) = v22;
        *(v26 + 48) = v23;
        v18 = v44;
      }

      while (v27 != v19);
    }

    else
    {
      v28 = 32;
      do
      {
        v47 = v15;
        v49 = *(v18 + v28);
        v29 = v49;
        swift_getKeyPath();
        sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);

        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
        sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
        v30 = sub_182AD3238();
        v46 = v31;
        v49 = v29;
        swift_getKeyPath();
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        v32 = v49;
        v50 = v17;
        v34 = *(v17 + 16);
        v33 = *(v17 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_181FB7750((v33 > 1), v34 + 1, 1);
          v17 = v50;
        }

        *(v17 + 16) = v34 + 1;
        v35 = v17 + 24 * v34;
        v36 = v46;
        v37 = v47;
        *(v35 + 32) = v30;
        *(v35 + 40) = v36;
        *(v35 + 48) = v32;
        v28 += 8;
        v15 = v37 - 1;
        v18 = v44;
      }

      while (v15);
    }

    (*(v39 + 8))(v38, v40);
    v4 = v42;
    v3 = v43;
    v6 = v41;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_182132D7C()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2CF8();

  return v0;
}

uint64_t sub_182132E80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2CF8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_182132F8C()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2318();
}

uint64_t sub_182133064()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2CF8();

  return v1;
}

uint64_t sub_182133168@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2CF8();

  *a1 = v3;
  return result;
}

uint64_t sub_182133274()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2318();
}

uint64_t sub_182133344()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_18213C9DC(&qword_1EA83A620, sub_18213CA54);
  sub_182AD2CF8();

  return v0;
}

uint64_t sub_18213347C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_18213C9DC(&qword_1EA83A620, sub_18213CA54);
  sub_182AD2CF8();

  *a2 = v4;
  return result;
}

uint64_t sub_1821335BC()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365C0, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_182AD2318();
}

uint64_t sub_182133688()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  sub_18213C9DC(&qword_1EA83A608, sub_18213C988);
  sub_182AD2D08();
}

uint64_t sub_182133770(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  v3 = *a1;
  v4 = sub_182AD2348();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_18213383C()
{
  result = sub_182AD2348();
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

uint64_t sub_1821338EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v57 = a4;
  v44 = a3;
  v50 = a1;
  v63 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6F8);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v55 = v42 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7A8);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7B0);
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v54 = v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A710);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6C0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7B8);
  v22 = *(v21 - 8);
  v45 = v21;
  v46 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v42 - v23;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7C0);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = v42 - v25;
  v50 = *v50;
  sub_181AB3DCC(&qword_1EA8366A8, &qword_1EA83A6C0);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v26 = *(v18 + 8);
  v42[1] = v18 + 8;
  v43 = v26;
  v26(v20, v17);
  v64 = a2;
  v65 = v44;
  sub_182AD1ED8();
  sub_181AB3DCC(&qword_1EA83A7C8, &qword_1EA83A7B8);
  sub_181AB3DCC(&qword_1EA836738, &qword_1EA83A710);
  v27 = v45;
  v28 = v48;
  sub_182AD1E68();
  (*(v49 + 8))(v16, v28);
  (*(v46 + 8))(v24, v27);
  sub_182AD1EE8();
  swift_getKeyPath();
  v29 = v52;
  sub_182AD1E88();

  v43(v20, v17);
  LOWORD(v64) = v57;
  v30 = v55;
  sub_182AD1ED8();
  sub_181AB3DCC(&qword_1EA83A7D0, &qword_1EA83A7A8);
  sub_181AB3DCC(&qword_1EA836728, &qword_1EA83A6F8);
  v31 = v54;
  v32 = v30;
  v33 = v56;
  v34 = v59;
  sub_182AD1E68();
  (*(v60 + 8))(v32, v34);
  (*(v58 + 8))(v29, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7D8);
  v36 = v63;
  v63[3] = v35;
  v36[4] = sub_18213E38C();
  __swift_allocate_boxed_opaque_existential_0Tm(v36);
  sub_181AB3DCC(&qword_1EA83A808, &qword_1EA83A7C0);
  sub_181AB3DCC(&qword_1EA83A810, &qword_1EA83A7B0);
  v37 = v47;
  v38 = v31;
  v39 = v51;
  v40 = v61;
  sub_182AD1EA8();
  (*(v62 + 8))(v38, v40);
  return (*(v53 + 8))(v37, v39);
}

uint64_t sub_182134098@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_182AD1EC8();
  v22[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6C8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  sub_181AB3DCC(&qword_1EA8366A8, &qword_1EA83A6C0);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  (*(v9 + 8))(v11, v8);
  sub_182AD21E8();
  sub_182AD1ED8();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, *MEMORY[0x1E6968C38], v23);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6D0);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_18213D988();
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_181AB3DCC(&qword_1EA8366D8, &qword_1EA83A6C8);
  sub_181AB3DCC(&qword_1EA836748, &qword_1EA83A6A0);
  sub_18213A88C(&qword_1EA836680, MEMORY[0x1E6969530]);
  v20 = v25;
  sub_182AD1E98();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_182134500@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A710);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A7B8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  sub_181AB3DCC(&qword_1EA8366A8, &qword_1EA83A6C0);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  sub_182AD1ED8();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A878);
  a3[4] = sub_18213EB50();
  __swift_allocate_boxed_opaque_existential_0Tm(a3);
  sub_181AB3DCC(&qword_1EA83A7C8, &qword_1EA83A7B8);
  sub_181AB3DCC(&qword_1EA836738, &qword_1EA83A710);
  v16 = v20;
  sub_182AD1E78();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_182134880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  sub_182AD2CF8();

  swift_getKeyPath();
  sub_182AD2328();

  swift_getKeyPath();
  sub_182AD2CF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v4 = sub_182AD3238();
  v6 = v5;
  v7 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  v8 = (a2 + v7[5]);
  *v8 = v4;
  v8[1] = v6;
  swift_getKeyPath();
  sub_182AD2328();

  swift_getKeyPath();
  sub_182AD2CF8();

  *(a2 + v7[6]) = a1;
  swift_getKeyPath();
  sub_182AD2328();

  swift_getKeyPath();
  sub_182AD2CF8();

  v9 = sub_182AD3238();
  v10 = (a2 + v7[7]);
  *v10 = v9;
  v10[1] = v11;
  swift_getKeyPath();
  sub_182AD2328();

  swift_getKeyPath();
  sub_182AD2CF8();

  *(a2 + v7[8]) = a1;
  swift_getKeyPath();
  sub_182AD2328();

  swift_getKeyPath();
  sub_182AD2CF8();

  v12 = (a2 + v7[9]);
  *v12 = a1;
  v12[1] = v14;
  swift_getKeyPath();
  sub_182AD2328();

  swift_getKeyPath();
  sub_182AD2CF8();

  *(a2 + v7[10]) = a1;
  return result;
}

uint64_t sub_182134CF8()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  return v0;
}

uint64_t sub_182134DFC()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  return v1;
}

uint64_t sub_182134F00()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  return v0;
}

uint64_t sub_182135004()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  return v1;
}

uint64_t sub_182135108()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  return v0;
}

uint64_t sub_18213520C()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  return v1;
}

uint64_t sub_182135310(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A668);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18213D6F8();
  sub_182AD4638();
  v8[15] = 0;
  sub_182AD21E8();
  sub_18213A88C(&qword_1EA836688, MEMORY[0x1E6969530]);
  sub_182AD4118();
  if (!v1)
  {
    type metadata accessor for NetworkStorage.AltSvcEntry(0);
    v8[14] = 1;
    sub_182AD40E8();
    v8[13] = 2;
    sub_182AD4128();
    v8[12] = 3;
    sub_182AD40E8();
    v8[11] = 4;
    sub_182AD4168();
    v8[10] = 5;
    sub_182AD40E8();
    v8[9] = 6;
    sub_182AD4168();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1821355B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_182AD21E8();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A658);
  v27 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18213D6F8();
  v30 = v7;
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v13 = v27;
  v12 = v28;
  v38 = 0;
  sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
  v14 = v29;
  sub_182AD3FF8();
  (*(v12 + 32))(v11, v14, v4);
  v37 = 1;
  v15 = sub_182AD3FC8();
  v16 = (v11 + v8[5]);
  *v16 = v15;
  v16[1] = v17;
  v36 = 2;
  v29 = 0;
  *(v11 + v8[6]) = sub_182AD4008();
  v35 = 3;
  v18 = sub_182AD3FC8();
  v19 = (v11 + v8[7]);
  *v19 = v18;
  v19[1] = v20;
  v34 = 4;
  *(v11 + v8[8]) = sub_182AD4048();
  v33 = 5;
  v21 = sub_182AD3FC8();
  v22 = (v11 + v8[9]);
  *v22 = v21;
  v22[1] = v23;
  v32 = 6;
  v24 = sub_182AD4048();
  (*(v13 + 8))(v30, v31);
  *(v11 + v8[10]) = v24;
  sub_181F7CFF0(v11, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_181F7D1B0(v11);
}

uint64_t sub_182135A68()
{
  v1 = *v0;
  v2 = 0x6974617269707865;
  v3 = 0x74736F48746C61;
  if (v1 != 5)
  {
    v3 = 0x74726F50746C61;
  }

  v4 = 1953722216;
  if (v1 != 3)
  {
    v4 = 1953656688;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F69746974726170;
  if (v1 != 1)
  {
    v5 = 1701869940;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_182135B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18213CBAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_182135B60(uint64_t a1)
{
  v2 = sub_18213D6F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_182135B9C(uint64_t a1)
{
  v2 = sub_18213D6F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_182135C08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v83) = a5;
  v80 = a3;
  v10 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  v81 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_182AD21E8();
  v77 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A670);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v67[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A698);
  v74 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67[-v20];
  v92 = a1;
  v93 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v22 = sub_182AD3238();
  v24 = v23;
  v92 = v80;
  v93 = a4;

  v25 = sub_182AD3238();
  v86 = v22;
  v87 = v24;
  v26 = v19;
  v88 = v25;
  v89 = v27;
  v90 = v83;
  v72 = type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  v92 = v72;
  sub_182AD2288();

  v28 = type metadata accessor for NetworkStorage.InternalStorage(0);
  v29 = sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  v71 = v28;
  v70 = v29;
  v83 = v6;
  sub_182AD2BD8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A798);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v67[-v33];
  v35 = v74;
  v36 = *(v74 + 16);
  v73 = v21;
  v36(v18, v21, v26, v32);
  (*(v35 + 56))(v18, 0, 1, v26);
  v37 = sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CA8();
  v38 = sub_182AD2C18();
  v48 = v77;
  v79 = v37;
  v69 = v26;
  v49 = *(v31 + 8);
  v80 = v38;
  v49(v34, v30);

  v50 = v80;
  if (v80 >> 62)
  {
    v66 = sub_182AD3EB8();
    v50 = v80;
    v51 = v66;
  }

  else
  {
    v51 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v74;
  v53 = v84;
  v54 = v73;
  if (!v51)
  {

    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v68 = 0;
  v55 = 0;
  v78 = v50 & 0xC000000000000001;
  v75 = v50 & 0xFFFFFFFFFFFFFF8;
  v77 = v48 + 8;
  v47 = MEMORY[0x1E69E7CC0];
  v76 = v51;
  while (v78)
  {
    v56 = MEMORY[0x1865DA790](v55, v50);
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_29;
    }

LABEL_15:
    v91 = v56;
    swift_getKeyPath();
    sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
    sub_182AD2328();

    swift_getKeyPath();
    sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
    sub_182AD2CF8();

    sub_182AD21C8();
    v58 = sub_182AD21B8();
    v48 = v77;
    v59 = *v77;
    v60 = v53;
    v61 = v82;
    (*v77)(v60, v82);
    v59(v15, v61);
    if (v58)
    {
      sub_182AD2BD8();
      sub_182AD2C38();

      v68 = 1;
      v55 = v57;
      v53 = v84;
      v50 = v80;
      if (v57 == v76)
      {

        v52 = v74;
        v54 = v73;
LABEL_25:
        sub_18212B0D8();
        goto LABEL_27;
      }
    }

    else
    {

      sub_182134880(v62, v85);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_181F5A2CC(0, v47[2] + 1, 1, v47);
      }

      v53 = v84;
      v64 = v47[2];
      v63 = v47[3];
      if (v64 >= v63 >> 1)
      {
        v47 = sub_181F5A2CC(v63 > 1, v64 + 1, 1, v47);
      }

      v47[2] = v64 + 1;
      sub_181F7D054(v85, v47 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v64);
      ++v55;
      v50 = v80;
      if (v57 == v76)
      {

        v52 = v74;
        v54 = v73;
        if (v68)
        {
          goto LABEL_25;
        }

LABEL_27:
        (*(v52 + 8))(v54, v69);
        return v47;
      }
    }
  }

  if (v55 >= *(v75 + 16))
  {
    goto LABEL_30;
  }

  v56 = *(v50 + 8 * v55 + 32);

  v57 = v55 + 1;
  if (!__OFADD__(v55, 1))
  {
    goto LABEL_15;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  swift_once();
  v39 = sub_182AD2698();
  __swift_project_value_buffer(v39, qword_1EA8364A8);
  v40 = v48;
  v41 = sub_182AD2678();
  v42 = sub_182AD38B8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    v45 = v48;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 4) = v46;
    *v44 = v46;
    _os_log_impl(&dword_181A37000, v41, v42, "failed to fetch: %@", v43, 0xCu);
    sub_181F49A88(v44, &unk_1EA83AA30);
    MEMORY[0x1865DF520](v44, -1, -1);
    MEMORY[0x1865DF520](v43, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_18213662C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A670);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v38 - v1;
  v3 = sub_182AD21E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_182AD21C8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A798);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v48 = v6;
  v51 = type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  sub_182AD2288();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A698);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_182AF7A30;
  *(v13 + 32) = swift_getKeyPath();
  *(v13 + 40) = swift_getKeyPath();
  sub_182AD2C98();
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  v14 = sub_182AD2C18();

  if (v14 >> 62)
  {
    v15 = sub_182AD3EB8();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {

    (*(v8 + 8))(v10, v7);
    v17 = MEMORY[0x1E69E7CC0];
LABEL_17:
    (*(v4 + 8))(v6, v3);
    return v17;
  }

  v50 = MEMORY[0x1E69E7CC0];
  result = sub_181FB7750(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v44 = v14;
    v45 = v12;
    v38 = v10;
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = v4;
    v43 = v3;
    v17 = v50;
    v18 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      v47 = v15;
      do
      {
        v20 = MEMORY[0x1865DA790](v19, v18);
        v49 = v20;
        swift_getKeyPath();
        sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
        sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
        v46 = sub_182AD3238();
        v22 = v21;
        v49 = v20;
        swift_getKeyPath();
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        swift_unknownObjectRelease();
        v23 = v49;
        v50 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_181FB7750((v24 > 1), v25 + 1, 1);
          v17 = v50;
        }

        ++v19;
        *(v17 + 16) = v25 + 1;
        v26 = v17 + 24 * v25;
        v27 = v47;
        *(v26 + 32) = v46;
        *(v26 + 40) = v22;
        *(v26 + 48) = v23;
        v18 = v44;
      }

      while (v27 != v19);
    }

    else
    {
      v28 = 32;
      do
      {
        v47 = v15;
        v49 = *(v18 + v28);
        v29 = v49;
        swift_getKeyPath();
        sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);

        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
        sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
        v30 = sub_182AD3238();
        v46 = v31;
        v49 = v29;
        swift_getKeyPath();
        sub_182AD2328();

        swift_getKeyPath();
        sub_182AD2CF8();

        v32 = v49;
        v50 = v17;
        v34 = *(v17 + 16);
        v33 = *(v17 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_181FB7750((v33 > 1), v34 + 1, 1);
          v17 = v50;
        }

        *(v17 + 16) = v34 + 1;
        v35 = v17 + 24 * v34;
        v36 = v46;
        v37 = v47;
        *(v35 + 32) = v30;
        *(v35 + 40) = v36;
        *(v35 + 48) = v32;
        v28 += 8;
        v15 = v37 - 1;
        v18 = v44;
      }

      while (v15);
    }

    (*(v39 + 8))(v38, v40);
    v4 = v42;
    v3 = v43;
    v6 = v41;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_182136FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A670);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-v10];
  v24 = a1;
  v25 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v12 = sub_182AD3238();
  v14 = v13;
  v24 = a3;
  v25 = a4;

  v15 = sub_182AD3238();
  v17 = v16;
  type metadata accessor for NetworkStorage.InternalStorage(0);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_182AD2C08();

  sub_182AD2BD8();
  v18 = type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  MEMORY[0x1EEE9AC00](v18);
  *&v22[-48] = v12;
  *&v22[-40] = v14;
  *&v22[-32] = v15;
  *&v22[-24] = v17;
  *&v22[-16] = v23;
  v24 = v19;
  sub_182AD2288();

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A698);
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2C28();
  sub_181F49A88(v11, &qword_1EA83A670);
}

uint64_t sub_182137400(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_18213A88C(a4, a5);
  sub_18213A88C(&qword_1EA836688, MEMORY[0x1E6969530]);
  sub_182AD2D08();
}

uint64_t sub_1821374C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1821375D0()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2318();
}

uint64_t sub_1821376A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  *a1 = v3;
  return result;
}

uint64_t sub_1821377B4()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2318();
}

uint64_t sub_182137884()
{
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2D08();
}

uint64_t sub_18213792C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_182137A38()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2318();
}

uint64_t sub_182137B10@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  *a1 = v3;
  return result;
}

uint64_t sub_182137C1C()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2318();
}

uint64_t sub_182137CEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_182137DF8()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2318();
}

uint64_t sub_182137ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_18213A88C(a5, a6);
  sub_182AD2D08();
}

uint64_t sub_182137F70@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2328();

  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2CF8();

  *a1 = v3;
  return result;
}

uint64_t sub_18213807C()
{
  swift_getKeyPath();
  sub_18213A88C(&unk_1EA836610, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2318();
}

uint64_t sub_18213814C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_18213A88C(a4, a5);
  sub_182AD2D08();
}

uint64_t *sub_1821381E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_182AD21E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A650);
  v9 = sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  v33 = v4;
  v34 = v4;
  v35 = v9;
  v36 = v9;
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 2);
  sub_182AD2CB8();
  sub_182AD2338();
  v10 = *(v6 + 16);
  v32 = a1;
  v10(v8, a1, v5);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836688, MEMORY[0x1E6969530]);
  sub_182AD2BC8();

  (*(v6 + 8))(v8, v5);
  v11 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  v12 = (a1 + v11[5]);
  v13 = v12[1];
  v33 = *v12;
  v34 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0);
  v14 = sub_182AD3238();
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  v33 = v14;
  v34 = v16;
  sub_182AD2BC8();

  v17 = v32;
  LOBYTE(v16) = *(v32 + v11[6]);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  LOBYTE(v33) = v16;
  sub_182AD2BC8();

  v18 = v11;
  v19 = (v17 + v11[7]);
  v20 = v17;
  v21 = v19[1];
  v33 = *v19;
  v34 = v21;

  v22 = sub_182AD3238();
  v24 = v23;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  v33 = v22;
  v34 = v24;
  sub_182AD2BC8();

  LOWORD(a1) = *(v17 + v18[8]);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  LOWORD(v33) = a1;
  sub_182AD2BC8();

  v25 = v18;
  v26 = (v17 + v18[9]);
  v27 = *v26;
  v28 = v26[1];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  v33 = v27;
  v34 = v28;
  sub_182AD2BC8();

  v29 = *(v20 + v25[10]);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  swift_getKeyPath();
  LOWORD(v33) = v29;
  sub_182AD2BC8();

  sub_181F7D1B0(v20);
  return v2;
}

uint64_t *sub_182138714(__int128 *a1)
{
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A650);
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v1 + 2);
  sub_182AD2CB8();
  sub_182AD2338();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 2));
  sub_181F3CF20(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_182138878()
{
  result = sub_182AD2348();
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

uint64_t sub_1821389A4()
{
  result = sub_182AD21E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_182138A3C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22[1] = a1;
  v24 = a2;
  v23 = sub_182AD1EC8();
  v22[0] = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6B0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - v14;
  sub_181AB3DCC(&qword_1EA8366C8, &qword_1EA83A6A8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  (*(v9 + 8))(v11, v8);
  sub_182AD21E8();
  sub_182AD1ED8();
  v16 = v22[0];
  v17 = v23;
  (*(v22[0] + 104))(v3, *MEMORY[0x1E6968C38], v23);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6B8);
  v19 = v24;
  v24[3] = v18;
  v19[4] = sub_18213D764();
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_181AB3DCC(&qword_1EA836718, &qword_1EA83A6B0);
  sub_181AB3DCC(&qword_1EA836748, &qword_1EA83A6A0);
  sub_18213A88C(&qword_1EA836680, MEMORY[0x1E6969530]);
  v20 = v25;
  sub_182AD1E98();
  (*(v16 + 8))(v3, v17);
  (*(v26 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_182138EA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v65 = a6;
  v59 = a4;
  v60 = a5;
  v56 = a3;
  v55 = a2;
  v71 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6F8);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v63 = v49 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A700);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A708);
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v62 = v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A710);
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A718);
  v76 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v49 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A720);
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v50 = v49 - v27;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A728);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = v49 - v28;
  v75 = *a1;
  v72 = sub_181AB3DCC(&qword_1EA8366C8, &qword_1EA83A6A8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v29 = *(v19 + 8);
  v73 = v19 + 8;
  v74 = v29;
  v29(v21, v18);
  v78 = v55;
  v79 = v56;
  sub_182AD1ED8();
  v56 = MEMORY[0x1E6968D58];
  v49[2] = sub_181AB3DCC(&qword_1EA83A730, &qword_1EA83A718);
  v55 = MEMORY[0x1E6968D20];
  v49[1] = sub_181AB3DCC(&qword_1EA836738, &qword_1EA83A710);
  v30 = v22;
  sub_182AD1E68();
  v31 = *(v77 + 8);
  v77 += 8;
  v31(v17, v15);
  v32 = *(v76 + 8);
  v76 += 8;
  v32(v24, v30);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v74(v21, v18);
  v78 = v59;
  v79 = v60;
  sub_182AD1ED8();
  v33 = v51;
  sub_182AD1E68();
  v31(v17, v15);
  v32(v24, v30);
  sub_181AB3DCC(&qword_1EA83A738, &qword_1EA83A720);
  v34 = v52;
  v35 = v50;
  v36 = v53;
  sub_182AD1EA8();
  v37 = *(v54 + 8);
  v37(v33, v36);
  v37(v35, v36);
  sub_182AD1EE8();
  swift_getKeyPath();
  v38 = v61;
  sub_182AD1E88();

  v74(v21, v18);
  LOWORD(v78) = v65;
  v39 = v63;
  sub_182AD1ED8();
  sub_181AB3DCC(&qword_1EA83A740, &qword_1EA83A700);
  sub_181AB3DCC(&qword_1EA836728, &qword_1EA83A6F8);
  v40 = v62;
  v41 = v39;
  v42 = v64;
  v43 = v67;
  sub_182AD1E68();
  (*(v68 + 8))(v41, v43);
  (*(v66 + 8))(v38, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A748);
  v45 = v71;
  v71[3] = v44;
  v45[4] = sub_18213DCB4();
  __swift_allocate_boxed_opaque_existential_0Tm(v45);
  sub_181AB3DCC(&qword_1EA83A780, &qword_1EA83A728);
  sub_181AB3DCC(&qword_1EA83A788, &qword_1EA83A708);
  v46 = v57;
  v47 = v69;
  sub_182AD1EA8();
  (*(v70 + 8))(v40, v47);
  return (*(v58 + 8))(v34, v46);
}

uint64_t sub_1821398CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v43 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A710);
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A6A8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A718);
  v44 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A850);
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v39 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v36 = *a1;
  v37 = v32 - v19;
  sub_181AB3DCC(&qword_1EA8366C8, &qword_1EA83A6A8);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v20 = *(v10 + 8);
  v32[2] = v10 + 8;
  v35 = v20;
  v20(v12, v9);
  v46 = a2;
  v47 = a3;
  sub_182AD1ED8();
  v32[1] = sub_181AB3DCC(&qword_1EA83A730, &qword_1EA83A718);
  v32[0] = sub_181AB3DCC(&qword_1EA836738, &qword_1EA83A710);
  v21 = v38;
  v22 = v40;
  sub_182AD1E78();
  v23 = *(v45 + 8);
  v45 += 8;
  v23(v8, v22);
  v24 = *(v44 + 8);
  v44 += 8;
  v24(v14, v21);
  sub_182AD1EE8();
  swift_getKeyPath();
  sub_182AD1E88();

  v35(v12, v9);
  v46 = v33;
  v47 = v34;
  sub_182AD1ED8();
  v25 = v39;
  sub_182AD1E78();
  v23(v8, v22);
  v24(v14, v21);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A858);
  v27 = v43;
  v43[3] = v26;
  v27[4] = sub_18213EA38();
  __swift_allocate_boxed_opaque_existential_0Tm(v27);
  sub_181AB3DCC(&qword_1EA83A870, &qword_1EA83A850);
  v28 = v37;
  v29 = v41;
  sub_182AD1EB8();
  v30 = *(v42 + 8);
  v30(v25, v29);
  return (v30)(v28, v29);
}

void (*sub_182139EF0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_181F75240(v1 + 16, v4);
  return sub_182139F80;
}

uint64_t *sub_18213A0FC(__int128 *a1)
{
  v2 = swift_allocObject();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A630);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 2);
  sub_182AD2CB8();
  sub_182AD2338();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 2));
  sub_181F3CF20(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_18213A1E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4 + 16);
  a4(a1, v4 + 16);
  return swift_endAccess();
}

void (*sub_18213A248(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_181F75240(v1 + 16, v4);
  return sub_182139F80;
}

void sub_18213A2D8(uint64_t *a1, char a2, void (*a3)(char *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_181F75240(*a1, (v4 + 40));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v5 + 16);
    a3(v4 + 40, v5 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1(v5 + 16);
    a3(v4, v5 + 16);
    swift_endAccess();
  }

  free(v4);
}

void (*sub_18213A544(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_181F75240(v1 + 16, v4);
  return sub_182139F80;
}

uint64_t sub_18213A5D8()
{
  sub_182AD44E8();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_18213A6B0()
{
  sub_182AD44E8();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_18213A88C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18213ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_182AD3DC8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_18213ADC4, 0, 0);
}

uint64_t sub_18213ADC4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_182AD3DD8();
  v5 = sub_18213A88C(&qword_1EA8363D8, MEMORY[0x1E69E8820]);
  sub_182AD4418();
  sub_18213A88C(&qword_1EA8363E0, MEMORY[0x1E69E87E8]);
  sub_182AD3DE8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_18213AF54;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_18213AF54()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18213B110, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_18213B110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18213B17C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A8F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_18213F054();
  sub_182AD45E8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
    sub_181C67934();
    sub_182AD3FF8();
    v7 = v10[0];
    v9 = v10[1];
    LOBYTE(v10[0]) = 1;
    sub_182AD4048();
    LOBYTE(v10[0]) = 2;
    sub_182AD4048();
    (*(v4 + 8))(v6, v3);
    sub_181F49B58(v7, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_181C1F2E4(v7, v9);
  }

  return v7;
}

uint64_t sub_18213B3BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A8D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18213EFA4();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_181C67934();
  sub_182AD3FF8();
  v9 = v23;
  v21 = a2;
  v22 = v24;
  v25 = 1;
  sub_182AD3FF8();
  v19 = v23;
  v20 = v24;
  v25 = 2;
  sub_182AD3FF8();
  (*(v6 + 8))(v8, v5);
  v10 = v23;
  v11 = v24;
  v12 = v9;
  v13 = v9;
  v14 = v22;
  sub_181F49B58(v13, v22);
  v16 = v19;
  v15 = v20;
  sub_181F49B58(v19, v20);
  sub_181F49B58(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_181C1F2E4(v12, v14);
  sub_181C1F2E4(v16, v15);
  result = sub_181C1F2E4(v10, v11);
  v18 = v21;
  *v21 = v12;
  v18[1] = v14;
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v10;
  v18[5] = v11;
  return result;
}

uint64_t sub_18213B688(uint64_t a1)
{
  type metadata accessor for NetworkStorage(0);
  v2 = swift_allocObject();
  if (MEMORY[0x1E697BBE0])
  {
    v3 = MEMORY[0x1E697BBF0] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || MEMORY[0x1E697BBC8] == 0 || MEMORY[0x1E697BBE8] == 0 || MEMORY[0x1E697BBD0] == 0 || MEMORY[0x1E697BBD8] == 0 || MEMORY[0x1E69E8310] == 0 || MEMORY[0x1E69E8308] == 0)
  {
    sub_181F49A88(a1, &unk_1EA838BB0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v10 = v2;
    sub_181AB5D28(a1, v2 + OBJC_IVAR____TtC7Network14NetworkStorage_url, &unk_1EA838BB0);
    sub_181F49A88(a1, &unk_1EA838BB0);
    result = v10;
    v12 = v10 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
  }

  return result;
}

uint64_t *sub_18213B7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v20 = a3;
  v19 = a1;
  v7 = *v4;
  v8 = sub_182AD21E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A630);
  v15 = sub_18213A88C(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal);
  v22 = v7;
  v23 = v7;
  v24 = v15;
  v25 = v15;
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v5 + 2);
  sub_182AD2CB8();
  sub_182AD2338();
  sub_182AD21C8();
  sub_182AD21D8();
  v16 = *(v9 + 8);
  v16(v11, v8);
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  swift_getKeyPath();
  sub_18213A88C(&qword_1EA836688, MEMORY[0x1E6969530]);
  sub_182AD2BC8();

  v16(v14, v8);
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  swift_getKeyPath();
  v22 = v19;
  v23 = a2;
  sub_182AD2BC8();

  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  swift_getKeyPath();
  LOWORD(v22) = v20;
  sub_182AD2BC8();

  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  swift_getKeyPath();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A610);
  sub_18213C9DC(&qword_1EA83A608, sub_18213C988);
  sub_182AD2BC8();

  return v5;
}

uint64_t sub_18213BBB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3370747468 && a2 == 0xE500000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1667855729 && a2 == 0xE400000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_182AD4268();

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

uint64_t sub_18213BCC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838888);
  v19 = sub_182AD2DD8();
  v0 = *(v19 - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_182AF7A40;
  v17 = v2;
  v18 = v3;
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v4 = sub_182AD2DC8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_182AE9730;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_182AF7A50;
  *(v8 + 32) = swift_getKeyPath();
  *(v8 + 40) = swift_getKeyPath();
  *(v8 + 48) = swift_getKeyPath();
  *(v7 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5E8);
  swift_allocObject();
  v10 = sub_182AD2DF8();
  *(&v21 + 1) = v9;
  v22 = sub_181AB3DCC(&qword_1EA8363F0, &qword_1EA83A5E8);
  *&v20 = v10;
  sub_182AD2DC8();
  v11 = sub_181F5AD7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_181F5AD7C(v12 > 1, v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = v11;
  (*(v0 + 32))(&v11[v17 + v13 * v1], v6, v19);
  *&v20 = v18;
  sub_1820D5164(v14);
  return v20;
}

unint64_t sub_18213C13C()
{
  result = qword_1EA836558;
  if (!qword_1EA836558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836558);
  }

  return result;
}

unint64_t sub_18213C190()
{
  result = qword_1EA836550;
  if (!qword_1EA836550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836550);
  }

  return result;
}

uint64_t *sub_18213C340(__int128 *a1)
{
  type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal(0);
  v2 = swift_allocObject();
  v2[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5F0);
  sub_18213A88C(&qword_1EA8365E8, type metadata accessor for NetworkStorage.InternalStorage.HTTPEarlyDataStateInternal);
  v2[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0Tm(v2 + 2);
  sub_182AD2CB8();
  sub_182AD2338();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 2));
  sub_181F3CF20(a1, (v2 + 2));
  swift_endAccess();
  return v2;
}

uint64_t sub_18213C460(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28777 && a2 == 0xE200000000000000;
  if (v3 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_182AD4268();

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

uint64_t sub_18213C570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838888);
  v19 = sub_182AD2DD8();
  v0 = *(v19 - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_182AF06E0;
  v17 = v2;
  v18 = v3;
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v4 = sub_182AD2DC8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23 = 0u;
  v24 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5F8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_182AE9730;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_182AF7A30;
  *(v8 + 32) = swift_getKeyPath();
  *(v8 + 40) = swift_getKeyPath();
  *(v7 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A600);
  swift_allocObject();
  v10 = sub_182AD2DF8();
  *(&v21 + 1) = v9;
  v22 = sub_181AB3DCC(&qword_1EA8363F8, &qword_1EA83A600);
  *&v20 = v10;
  sub_182AD2DC8();
  v11 = sub_181F5AD7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_181F5AD7C(v12 > 1, v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = v11;
  (*(v0 + 32))(&v11[v17 + v13 * v1], v6, v19);
  *&v20 = v18;
  sub_1820D5164(v14);
  return v20;
}

unint64_t sub_18213C988()
{
  result = qword_1EA83A618;
  if (!qword_1EA83A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A618);
  }

  return result;
}

uint64_t sub_18213C9DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A610);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18213CA54()
{
  result = qword_1EA83A628;
  if (!qword_1EA83A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A628);
  }

  return result;
}

uint64_t sub_18213CBAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746974726170 && a2 == 0xE90000000000006ELL || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74736F48746C61 && a2 == 0xE700000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74726F50746C61 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_18213CE04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838888);
  v30 = sub_182AD2DD8();
  v0 = *(v30 - 8);
  v1 = *(v0 + 72);
  v31 = v0;
  v2 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_182AF7A60;
  v28 = v3;
  v29 = v2;
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  sub_182AD2DC8();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v4 = sub_182AD2DC8();
  v5 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (&v24 - v27);
  v25 = "SwiftData.Schema.Unique";
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A638);
  v7 = swift_allocObject();
  v26 = xmmword_182AE9730;
  *(v7 + 16) = xmmword_182AE9730;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_182AF7A50;
  *(v8 + 32) = swift_getKeyPath();
  *(v8 + 40) = swift_getKeyPath();
  *(v8 + 48) = swift_getKeyPath();
  *(v7 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A640);
  swift_allocObject();
  v10 = sub_182AD2DE8();
  *(&v33 + 1) = v9;
  v34 = sub_181AB3DCC(&qword_1EA836408, &qword_1EA83A640);
  *&v32 = v10;
  sub_182AD2DC8();
  v11 = sub_181F5AD7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_181F5AD7C(v12 > 1, v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = *(v31 + 32);
  v31 += 32;
  v15 = v14(&v11[v29 + v13 * v1], v6, v30);
  v25 = &v24;
  MEMORY[0x1EEE9AC00](v15);
  v16 = (&v24 - v27);
  v27 = "reversedPartition";
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_182AF7A70;
  *(v18 + 32) = swift_getKeyPath();
  *(v18 + 40) = swift_getKeyPath();
  *(v18 + 48) = swift_getKeyPath();
  *(v18 + 56) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A648);
  swift_allocObject();
  v20 = sub_182AD2DF8();
  *(&v33 + 1) = v19;
  v34 = sub_181AB3DCC(&qword_1EA836400, &qword_1EA83A648);
  *&v32 = v20;
  sub_182AD2DC8();
  v22 = *(v11 + 2);
  v21 = *(v11 + 3);
  if (v22 >= v21 >> 1)
  {
    v11 = sub_181F5AD7C(v21 > 1, v22 + 1, 1, v11);
  }

  *(v11 + 2) = v22 + 1;
  v14(&v11[v29 + v22 * v1], v16, v30);
  *&v32 = v28;
  sub_1820D5164(v11);
  return v32;
}

unint64_t sub_18213D6F8()
{
  result = qword_1EA83A660;
  if (!qword_1EA83A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A660);
  }

  return result;
}

unint64_t sub_18213D764()
{
  result = qword_1EA8367A0;
  if (!qword_1EA8367A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6B8);
    sub_18213D7F0();
    sub_18213D8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367A0);
  }

  return result;
}

unint64_t sub_18213D7F0()
{
  result = qword_1EA836720;
  if (!qword_1EA836720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6B0);
    sub_181AB3DCC(&qword_1EA8366D0, &qword_1EA83A6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836720);
  }

  return result;
}

unint64_t sub_18213D8A0()
{
  result = qword_1EA836750;
  if (!qword_1EA836750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6A0);
    v1 = MEMORY[0x1E6969530];
    sub_18213A88C(&qword_1EA836678, MEMORY[0x1E6969530]);
    sub_18213A88C(&qword_1EA836688, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836750);
  }

  return result;
}

unint64_t sub_18213D988()
{
  result = qword_1EA836790;
  if (!qword_1EA836790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6D0);
    sub_18213DA14();
    sub_18213D8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836790);
  }

  return result;
}

unint64_t sub_18213DA14()
{
  result = qword_1EA8366E0;
  if (!qword_1EA8366E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6C8);
    sub_181AB3DCC(&qword_1EA8366B0, &qword_1EA83A6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8366E0);
  }

  return result;
}

unint64_t sub_18213DAC4()
{
  result = qword_1EA836798;
  if (!qword_1EA836798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6E8);
    sub_18213DB50();
    sub_18213D8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836798);
  }

  return result;
}

unint64_t sub_18213DB50()
{
  result = qword_1EA836710;
  if (!qword_1EA836710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6E0);
    sub_181AB3DCC(&qword_1EA8366C0, &qword_1EA83A6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836710);
  }

  return result;
}

uint64_t sub_18213DC00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_18212B280(a1, v4, v5, v6);
}

unint64_t sub_18213DCB4()
{
  result = qword_1EA83A750;
  if (!qword_1EA83A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A748);
    sub_18213DD40();
    sub_18213DF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A750);
  }

  return result;
}

unint64_t sub_18213DD40()
{
  result = qword_1EA83A758;
  if (!qword_1EA83A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A728);
    sub_18213DDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A758);
  }

  return result;
}

unint64_t sub_18213DDC4()
{
  result = qword_1EA83A760;
  if (!qword_1EA83A760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A720);
    sub_18213DE50();
    sub_18213DF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A760);
  }

  return result;
}

unint64_t sub_18213DE50()
{
  result = qword_1EA83A768;
  if (!qword_1EA83A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A718);
    sub_181AB3DCC(&qword_1EA8366D0, &qword_1EA83A6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A768);
  }

  return result;
}

unint64_t sub_18213DF00()
{
  result = qword_1EA836740;
  if (!qword_1EA836740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836740);
  }

  return result;
}

unint64_t sub_18213DF84()
{
  result = qword_1EA83A770;
  if (!qword_1EA83A770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A708);
    sub_18213E010();
    sub_18213E0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A770);
  }

  return result;
}

unint64_t sub_18213E010()
{
  result = qword_1EA83A778;
  if (!qword_1EA83A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A700);
    sub_181AB3DCC(&qword_1EA8366D0, &qword_1EA83A6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A778);
  }

  return result;
}

unint64_t sub_18213E0C0()
{
  result = qword_1EA836730;
  if (!qword_1EA836730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836730);
  }

  return result;
}

uint64_t sub_18213E144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F54964;

  return sub_182129418(a1, v4, v5, v6);
}

unint64_t sub_18213E1F8()
{
  result = qword_1EA836598;
  if (!qword_1EA836598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836598);
  }

  return result;
}

uint64_t sub_18213E24C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18213E294(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F54964;

  return sub_182129934(a1, v4, v5, v6);
}

unint64_t sub_18213E38C()
{
  result = qword_1EA83A7E0;
  if (!qword_1EA83A7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A7D8);
    sub_18213E418();
    sub_18213E554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A7E0);
  }

  return result;
}

unint64_t sub_18213E418()
{
  result = qword_1EA83A7E8;
  if (!qword_1EA83A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A7C0);
    sub_18213E4A4();
    sub_18213DF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A7E8);
  }

  return result;
}

unint64_t sub_18213E4A4()
{
  result = qword_1EA83A7F0;
  if (!qword_1EA83A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A7B8);
    sub_181AB3DCC(&qword_1EA8366B0, &qword_1EA83A6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A7F0);
  }

  return result;
}

unint64_t sub_18213E554()
{
  result = qword_1EA83A7F8;
  if (!qword_1EA83A7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A7B0);
    sub_18213E5E0();
    sub_18213E0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A7F8);
  }

  return result;
}

unint64_t sub_18213E5E0()
{
  result = qword_1EA83A800;
  if (!qword_1EA83A800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A7A8);
    sub_181AB3DCC(&qword_1EA8366B0, &qword_1EA83A6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A800);
  }

  return result;
}

unint64_t sub_18213E6A8()
{
  result = qword_1EA836778;
  if (!qword_1EA836778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A848);
    sub_18213E734();
    sub_18213E8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836778);
  }

  return result;
}

unint64_t sub_18213E734()
{
  result = qword_1EA836788;
  if (!qword_1EA836788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A840);
    sub_18213E7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836788);
  }

  return result;
}

unint64_t sub_18213E7B8()
{
  result = qword_1EA836770;
  if (!qword_1EA836770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A838);
    sub_18213E844();
    sub_18213DF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836770);
  }

  return result;
}

unint64_t sub_18213E844()
{
  result = qword_1EA836700;
  if (!qword_1EA836700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A830);
    sub_181AB3DCC(&qword_1EA8366C0, &qword_1EA83A6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836700);
  }

  return result;
}

unint64_t sub_18213E8F4()
{
  result = qword_1EA836760;
  if (!qword_1EA836760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A828);
    sub_18213E980();
    sub_18213E0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836760);
  }

  return result;
}

unint64_t sub_18213E980()
{
  result = qword_1EA8366F0;
  if (!qword_1EA8366F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A820);
    sub_181AB3DCC(&qword_1EA8366C0, &qword_1EA83A6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8366F0);
  }

  return result;
}

unint64_t sub_18213EA38()
{
  result = qword_1EA83A860;
  if (!qword_1EA83A860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A858);
    sub_18213EABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A860);
  }

  return result;
}

unint64_t sub_18213EABC()
{
  result = qword_1EA83A868;
  if (!qword_1EA83A868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A850);
    sub_18213DE50();
    sub_18213DF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A868);
  }

  return result;
}

unint64_t sub_18213EB50()
{
  result = qword_1EA83A880;
  if (!qword_1EA83A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A878);
    sub_18213E4A4();
    sub_18213DF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A880);
  }

  return result;
}

unint64_t sub_18213EBE4()
{
  result = qword_1EA83A898;
  if (!qword_1EA83A898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A890);
    sub_18213EC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A898);
  }

  return result;
}

unint64_t sub_18213EC68()
{
  result = qword_1EA83A8A0;
  if (!qword_1EA83A8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A888);
    sub_18213E844();
    sub_18213DF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A8A0);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_18213ED28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 20))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18213ED7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_18213EDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18213EE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_18213EEA0()
{
  result = qword_1EA83A8B8;
  if (!qword_1EA83A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A8B8);
  }

  return result;
}

unint64_t sub_18213EEF8()
{
  result = qword_1EA83A8C0;
  if (!qword_1EA83A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A8C0);
  }

  return result;
}

unint64_t sub_18213EF50()
{
  result = qword_1EA83A8C8;
  if (!qword_1EA83A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A8C8);
  }

  return result;
}

unint64_t sub_18213EFA4()
{
  result = qword_1EA836570;
  if (!qword_1EA836570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836570);
  }

  return result;
}

unint64_t sub_18213F054()
{
  result = qword_1EA83A8E8;
  if (!qword_1EA83A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A8E8);
  }

  return result;
}

unint64_t sub_18213F0CC()
{
  result = qword_1EA83A900;
  if (!qword_1EA83A900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A900);
  }

  return result;
}

unint64_t sub_18213F124()
{
  result = qword_1EA83A908;
  if (!qword_1EA83A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A908);
  }

  return result;
}

unint64_t sub_18213F17C()
{
  result = qword_1EA83A910;
  if (!qword_1EA83A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A910);
  }

  return result;
}

unint64_t sub_18213F1D4()
{
  result = qword_1EA83A918;
  if (!qword_1EA83A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A918);
  }

  return result;
}

unint64_t sub_18213F22C()
{
  result = qword_1EA836560;
  if (!qword_1EA836560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836560);
  }

  return result;
}

unint64_t sub_18213F284()
{
  result = qword_1EA836568;
  if (!qword_1EA836568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836568);
  }

  return result;
}

unint64_t sub_18213F2F0(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v8 = a3;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    v9 = sub_182AD3EB8();
LABEL_6:
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v9 == v10)
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1865DA790](v10, a4);
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_20;
        }
      }

      *(v4 + 8 * v10) = v12;
      if (v11 == v8)
      {
        goto LABEL_18;
      }

      ++v10;
      if (v11 >= v8)
      {
        goto LABEL_21;
      }
    }

    v8 = v9;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

void *sub_18213F3EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v11 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v11;
    return v6;
  }

  if (!a3)
  {
    v11 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a4 + 40 * v6 - 8;
      while (v6 + v9 <= *(a4 + 16))
      {
        sub_181F75240(v10, v8);
        if (a3 + v9 == 1)
        {
          v11 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += 40;
        --v9;
        v10 -= 40;
        v11 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v11 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_18213F4CC(unint64_t a1, uint64_t a2, uint64_t *a3, int64_t a4, char a5, uint64_t a6)
{
  v63 = *a2;
  v10 = *a3;
  v11 = *v6;
  v12 = *v6 >> 62;
  v60 = *(a2 + 8);
  v61 = v12;
  v13 = *v6 & 0xFFFFFFFFFFFFFF8;
  if (v60 != 1)
  {
LABEL_14:
    if (v12)
    {
      v18 = sub_182AD3EB8();
      if (!v18)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v18 = *(v13 + 16);
      if (!v18)
      {
        goto LABEL_42;
      }
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      while (1)
      {
        v20 = MEMORY[0x1865DA790](v19, v11);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_37;
        }

        v16 = v20;
        if ((*(v20 + 32) & 1) == 0 && *(v20 + 24) == v63)
        {
          goto LABEL_29;
        }

        swift_unknownObjectRelease();
        ++v19;
        if (v21 == v18)
        {
          goto LABEL_42;
        }
      }
    }

    v22 = (v11 + 32);
    v23 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v23)
      {
        goto LABEL_38;
      }

      v16 = *v22;
      if ((*(*v22 + 32) & 1) == 0 && *(v16 + 24) == v63)
      {
        break;
      }

      --v23;
      ++v22;
      if (!--v18)
      {
        goto LABEL_42;
      }
    }

LABEL_29:
    v7 = *(a1 + 80);
    a4 = *(a1 + 88);
    v24 = qword_1EA837250;

    if (v24 == -1)
    {
LABEL_30:
      if (byte_1EA843430 == 1)
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_182AD3BA8();

        v67 = 0x65766F2068746170;
        v68 = 0xEA00000000002072;
        MEMORY[0x1865D9CA0](*(v16 + 56), *(v16 + 64));
        MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BDEB70);
        v25 = v67;
        a1 = v68;
        if (qword_1EA837248 != -1)
        {
          goto LABEL_83;
        }

        goto LABEL_32;
      }

      goto LABEL_73;
    }

LABEL_81:
    swift_once();
    goto LABEL_30;
  }

  if (v12)
  {
    goto LABEL_39;
  }

  v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v15 = 0;
      v7 = v11 & 0xFFFFFFFFFFFFFF8;
      while ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1865DA790](v15, v11);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_8:
        if (*(v16 + 1088))
        {
          goto LABEL_29;
        }

        ++v15;
        if (v17 == v14)
        {
          goto LABEL_42;
        }
      }

      if (v15 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v14 = sub_182AD3EB8();
      if (!v14)
      {
        goto LABEL_42;
      }
    }

    v16 = *(v11 + 8 * v15 + 32);

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

LABEL_42:
  v67 = v63;
  LOBYTE(v68) = v60;
  v65 = v10;
  type metadata accessor for QUICPath();
  v16 = swift_allocObject();

  sub_182141154(v35, &v67, &v65, a4, a5 & 1, a6);
  if (!a4)
  {
    if (!v61 || (sub_182AD3EB8() & 0x8000000000000000) == 0)
    {

      v41 = 0;
      v42 = 0;
      v43 = v16;
LABEL_64:
      sub_181FCCC00(v41, v42, v43);

LABEL_65:
      v37 = *(a1 + 80);
      a1 = *(a1 + 88);
      v45 = qword_1EA837250;

      if (v45 != -1)
      {
LABEL_77:
        swift_once();
      }

      if (byte_1EA843430 != 1)
      {
        goto LABEL_73;
      }

      v67 = 0;
      v68 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x656E206465646461, 0xEF20687461702077);
      v65 = a6;
      v46 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v46);

      MEMORY[0x1865D9CA0](10272, 0xE200000000000000);
      v65 = a4;
      v47 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v47);

      MEMORY[0x1865D9CA0](0x5F776E206E6F2029, 0xED00002068746170);
      v65 = v63;
      v66 = v60;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
      MEMORY[0x1865D9CA0](*(v16 + 56), *(v16 + 64));
      v49 = v67;
      v48 = v68;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v50 = sub_182AD2698();
      __swift_project_value_buffer(v50, qword_1EA843418);

      v27 = sub_182AD2678();
      v28 = sub_182AD38A8();

      if (!os_log_type_enabled(v27, v28))
      {

        goto LABEL_73;
      }

      v29 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = v64;
      *v29 = 136315650;
      v51 = sub_182AD3BF8();
      v53 = v37;
      v54 = sub_181C64FFC(v51, v52, &v67);

      *(v29 + 4) = v54;
      *(v29 + 12) = 2080;
      v55 = sub_181C64FFC(v53, a1, &v67);

      *(v29 + 14) = v55;
      *(v29 + 22) = 2080;
      v56 = sub_181C64FFC(v49, v48, &v67);

      *(v29 + 24) = v56;
LABEL_71:
      _os_log_impl(&dword_181A37000, v27, v28, "%s %s %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v64, -1, -1);
      MEMORY[0x1865DF520](v29, -1, -1);

      return v16;
    }

    __break(1u);
    goto LABEL_81;
  }

  v25 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v61)
  {
    v36 = sub_182AD3EB8();
  }

  else
  {
    v36 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = 0;
  v7 = v11 & 0xC000000000000001;
  while (1)
  {
    if (v36 == v37)
    {

      MEMORY[0x1865D9F10](v44);
      if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_182AD3408();
      }

      sub_182AD3448();
      goto LABEL_65;
    }

    if (v7)
    {
      break;
    }

    if (v37 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (*(*(v11 + 8 * v37 + 32) + 40) > a4)
    {
      goto LABEL_54;
    }

LABEL_50:
    if (__OFADD__(v37++, 1))
    {
      goto LABEL_76;
    }
  }

  v39 = *(MEMORY[0x1865DA790](v37, v11) + 40);
  swift_unknownObjectRelease();
  if (v39 <= a4)
  {
    goto LABEL_50;
  }

LABEL_54:
  if (v61)
  {
    v40 = sub_182AD3EB8();
  }

  else
  {
    v40 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v40 >= v37)
  {

    v41 = v37;
    v42 = v37;
    v43 = v16;
    goto LABEL_64;
  }

  __break(1u);
LABEL_83:
  swift_once();
LABEL_32:
  v26 = sub_182AD2698();
  __swift_project_value_buffer(v26, qword_1EA843418);

  v27 = sub_182AD2678();
  v28 = sub_182AD38A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67 = v64;
    *v29 = 136315650;
    v30 = sub_182AD3BF8();
    v32 = sub_181C64FFC(v30, v31, &v67);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = sub_181C64FFC(v7, a4, &v67);

    *(v29 + 14) = v33;
    *(v29 + 22) = 2080;
    v34 = sub_181C64FFC(v25, a1, &v67);

    *(v29 + 24) = v34;
    goto LABEL_71;
  }

LABEL_73:

  return v16;
}

void sub_18213FDA4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  *(v2 + 80) = *a1;

  v6 = *(a2 + 168);
  v47[0] = *(a2 + 152);
  v47[1] = v6;
  v7 = *(a2 + 200);
  v47[2] = *(a2 + 184);
  v47[3] = v7;
  v8 = *(a2 + 168);
  v41 = *(a2 + 152);
  v42 = v8;
  v9 = *(a2 + 200);
  v43 = *(a2 + 184);
  v44 = v9;
  v40 = v5;
  sub_1822C38F8(&v40, &v45);
  v48[0] = v41;
  v48[1] = v42;
  v48[2] = v43;
  v48[3] = v44;
  sub_18206AE38(v47, v39);
  sub_18206AE94(v48);
  if (v46)
  {
    v10 = v45;
    sub_18206A1F0(v45, v46);
  }

  else
  {
    v10 = 0;
  }

  *(v3 + 104) = v10;
  *(v3 + 112) = 0;
  v12 = *(a2 + 80);
  v11 = *(a2 + 88);
  v13 = qword_1EA837250;

  if (v13 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
    goto LABEL_8;
  }

  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v41 = 0x6E696E6769737361;
  *(&v41 + 1) = 0xEF20444943532067;
  v39[0] = v5;
  v14 = ConnectionID.description.getter();
  MEMORY[0x1865D9CA0](v14);

  MEMORY[0x1865D9CA0](0x68746170206F7420, 0xEC00000020444920);
  v39[0] = *(v3 + 16);
  v15 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v15);

  v16 = v41;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v17 = sub_182AD2698();
  __swift_project_value_buffer(v17, qword_1EA843418);
  v18 = swift_allocObject();
  *(v18 + 16) = "setSCID(_:connection:)";
  *(v18 + 24) = 22;
  *(v18 + 32) = 2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_181F8C724;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = v11;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;

  oslog = sub_182AD2678();
  v37 = sub_182AD38A8();
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_181F8C71C;
  *(v22 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_181F8C718;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_181F8C720;
  *(v26 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_181F8C718;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_181F8C720;
  *(v30 + 24) = v21;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_181F8C718;
  *(v31 + 24) = v30;
  if (!os_log_type_enabled(oslog, v37))
  {

LABEL_8:

    return;
  }

  v34 = v29;
  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v45 = 0;
  *v32 = 770;
  v39[0] = v32 + 2;
  v40 = v33;
  *&v41 = sub_181F8C728;
  *(&v41 + 1) = v36;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C728;
  *(&v41 + 1) = v35;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C714;
  *(&v41 + 1) = v23;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C728;
  *(&v41 + 1) = v24;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C728;
  *(&v41 + 1) = v25;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C714;
  *(&v41 + 1) = v27;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C728;
  *(&v41 + 1) = v28;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C728;
  *(&v41 + 1) = v34;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  *&v41 = sub_181F8C714;
  *(&v41 + 1) = v31;
  sub_181F73AE0(&v41, v39, &v45, &v40);

  _os_log_impl(&dword_181A37000, oslog, v37, "%s %s %s", v32, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v33, -1, -1);
  MEMORY[0x1865DF520](v32, -1, -1);
}

void sub_1821406C0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  *(v2 + 72) = *a1;

  if (*(v5 + 16) && (swift_beginAccess(), v6 = *(a2 + 232), v47[0] = *(a2 + 216), v47[1] = v6, v7 = *(a2 + 264), v47[2] = *(a2 + 248), v47[3] = v7, v8 = *(a2 + 232), v41 = *(a2 + 216), v42 = v8, v9 = *(a2 + 264), v43 = *(a2 + 248), v44 = v9, v40 = v5, sub_1822C38F8(&v40, &v45), v48[0] = v41, v48[1] = v42, v48[2] = v43, v48[3] = v44, sub_18206AE38(v47, v39), sub_18206AE94(v48), v46))
  {
    v10 = v45;
    sub_18206A1F0(v45, v46);
    *(v3 + 88) = v10;
  }

  else
  {
    *(v2 + 88) = 0;
  }

  *(v3 + 96) = 0;
  v12 = *(a2 + 80);
  v11 = *(a2 + 88);
  v13 = qword_1EA837250;

  if (v13 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
    goto LABEL_9;
  }

  *&v48[0] = 0;
  *(&v48[0] + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v48[0] = 0x6E696E6769737361;
  *(&v48[0] + 1) = 0xEF20444943442067;
  *&v47[0] = v5;
  v14 = ConnectionID.description.getter();
  MEMORY[0x1865D9CA0](v14);

  MEMORY[0x1865D9CA0](0x68746170206F7420, 0xEC00000020444920);
  *&v47[0] = *(v3 + 16);
  v15 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v15);

  v16 = v48[0];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v17 = sub_182AD2698();
  __swift_project_value_buffer(v17, qword_1EA843418);
  v18 = swift_allocObject();
  *(v18 + 16) = "assignDCID(_:connection:)";
  *(v18 + 24) = 25;
  *(v18 + 32) = 2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_181F8C258;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = v11;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;

  oslog = sub_182AD2678();
  v37 = sub_182AD38A8();
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_181F8C264;
  *(v22 + 24) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_181F8C27C;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_181F8C26C;
  *(v26 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_181F8C718;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_181F8C26C;
  *(v30 + 24) = v21;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_181F8C718;
  *(v31 + 24) = v30;
  if (!os_log_type_enabled(oslog, v37))
  {

LABEL_9:

    return;
  }

  v34 = v29;
  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  *&v41 = 0;
  *v32 = 770;
  v39[0] = v33;
  *&v47[0] = v32 + 2;
  *&v48[0] = sub_181F8C274;
  *(&v48[0] + 1) = v36;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C728;
  *(&v48[0] + 1) = v35;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C284;
  *(&v48[0] + 1) = v23;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C728;
  *(&v48[0] + 1) = v24;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C728;
  *(&v48[0] + 1) = v25;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C714;
  *(&v48[0] + 1) = v27;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C728;
  *(&v48[0] + 1) = v28;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C728;
  *(&v48[0] + 1) = v34;
  sub_181F73AE0(v48, v47, &v41, v39);

  *&v48[0] = sub_181F8C714;
  *(&v48[0] + 1) = v31;
  sub_181F73AE0(v48, v47, &v41, v39);

  _os_log_impl(&dword_181A37000, oslog, v37, "%s %s %s", v32, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v33, -1, -1);
  MEMORY[0x1865DF520](v32, -1, -1);
}

uint64_t sub_182140FFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x64696C61766E69;
    v6 = 0x616C696176616E75;
    if (a1 != 2)
    {
      v6 = 0x676E69736F6C63;
    }

    if (a1)
    {
      v5 = 0x6168636165726E75;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x697373615F646963;
    v2 = 0x676E69626F7270;
    if (a1 != 7)
    {
      v2 = 0x65746164696C6176;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C62616C69617661;
    if (a1 != 4)
    {
      v3 = 0x73696C6261747365;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_182141154(void *a1, uint64_t *a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *a3;
  *(v7 + 33) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 72) = 0;
  *(v7 + 96) = 1;
  *(v7 + 104) = 0;
  *(v7 + 112) = 1;
  v15 = MEMORY[0x1E69E7CC0];
  *(v7 + 120) = sub_181F59760(0, 12, 0, MEMORY[0x1E69E7CC0]);
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 144) = v15;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0;
  sub_182141CDC(&v69);
  v16 = v80;
  v18 = v78;
  v17 = v79;
  v19 = v79;
  *(v7 + 464) = v79;
  *(v7 + 480) = v16;
  v20 = v81;
  *(v7 + 496) = v81;
  v21 = v76;
  v23 = v74;
  v22 = v75;
  v24 = v75;
  *(v7 + 400) = v75;
  *(v7 + 416) = v21;
  v25 = v77;
  v26 = v77;
  *(v7 + 432) = v77;
  *(v7 + 448) = v18;
  v27 = v72;
  v29 = v70;
  v28 = v71;
  v30 = v71;
  *(v7 + 336) = v71;
  *(v7 + 352) = v27;
  v31 = v73;
  v32 = v73;
  *(v7 + 368) = v73;
  *(v7 + 384) = v23;
  v33 = v69;
  v34 = v69;
  *(v7 + 304) = v69;
  *(v7 + 320) = v29;
  v35 = v80;
  v36 = v80;
  *(v7 + 680) = v17;
  *(v7 + 696) = v35;
  *(v7 + 712) = v20;
  v37 = v76;
  v38 = v76;
  *(v7 + 616) = v22;
  *(v7 + 632) = v37;
  v39 = v78;
  v40 = v78;
  *(v7 + 648) = v25;
  *(v7 + 664) = v39;
  v41 = v72;
  v42 = v72;
  *(v7 + 552) = v28;
  *(v7 + 568) = v41;
  v43 = v74;
  v44 = v74;
  *(v7 + 584) = v31;
  *(v7 + 600) = v43;
  v45 = v70;
  v46 = v70;
  *(v7 + 520) = v33;
  *(v7 + 536) = v45;
  *(v7 + 896) = v19;
  *(v7 + 912) = v36;
  *(v7 + 928) = v81;
  *(v7 + 832) = v24;
  *(v7 + 848) = v38;
  *(v7 + 864) = v26;
  *(v7 + 880) = v40;
  *(v7 + 768) = v30;
  *(v7 + 784) = v42;
  *(v7 + 800) = v32;
  *(v7 + 816) = v44;
  *(v7 + 512) = v82;
  *(v7 + 728) = v82;
  *(v7 + 944) = v82;
  *(v7 + 736) = v34;
  *(v7 + 752) = v46;
  *(v7 + 945) = 0;
  *(v7 + 952) = 0;
  *(v7 + 968) = 0;
  *(v7 + 960) = 0;
  *(v7 + 976) = 1;
  *(v7 + 984) = 0u;
  *(v7 + 1000) = 0u;
  *(v7 + 1016) = 1;
  *(v7 + 1024) = 1;
  *(v7 + 1032) = 0;
  *(v7 + 1048) = 0;
  *(v7 + 1040) = 0;
  *(v7 + 1056) = 0;
  *(v7 + 1064) = 0;
  *(v7 + 1080) = 0;
  *(v7 + 1072) = 0;
  *(v7 + 1089) = 0;
  *(v7 + 1097) = 0;
  v47 = a1[9];
  v48 = sub_1822D0834(10, 0xFFFFFFFF);
  *(v7 + 152) = xmmword_182AF8BE0;
  *(v7 + 168) = xmmword_182AF8BF0;
  *(v7 + 184) = 0xFFFFFFFFLL;
  *(v7 + 192) = v47;
  *(v7 + 200) = v48;
  *(v7 + 208) = 0;
  *(v7 + 216) = -1;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0u;
  *(v7 + 256) = 0;
  *(v7 + 1088) = a5;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  *(v7 + 40) = a4;
  if (v14)
  {
    v49 = v14[6];
    *(v7 + 56) = v14[5];
    *(v7 + 64) = v49;
    v50 = v14[2];
  }

  else
  {
    v50 = 0;
    *(v7 + 56) = 0x6C616974696E693CLL;
    *(v7 + 64) = 0xE90000000000003ELL;
  }

  *(v7 + 48) = v50;
  *(v7 + 16) = a6;
  sub_182141738(a1);
  v52 = a1[10];
  v51 = a1[11];
  v53 = qword_1EA837250;

  if (v53 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
    goto LABEL_12;
  }

  v67 = v52;
  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0x656E206465646461, 0xEF20687461702077);
  v54 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v54);

  MEMORY[0x1865D9CA0](10272, 0xE200000000000000);
  v55 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v55);

  MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BDEBC0);
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
  MEMORY[0x1865D9CA0](*(v7 + 56), *(v7 + 64));
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v56 = sub_182AD2698();
  __swift_project_value_buffer(v56, qword_1EA843418);

  v57 = sub_182AD2678();
  v58 = sub_182AD38A8();

  if (!os_log_type_enabled(v57, v58))
  {

LABEL_12:

    return v7;
  }

  v59 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v68[0] = v66;
  *v59 = 136315650;
  v60 = sub_182AD3BF8();
  v62 = sub_181C64FFC(v60, v61, v68);

  *(v59 + 4) = v62;
  *(v59 + 12) = 2080;
  v63 = sub_181C64FFC(v67, v51, v68);

  *(v59 + 14) = v63;
  *(v59 + 22) = 2080;
  v64 = sub_181C64FFC(0, 0xE000000000000000, v68);

  *(v59 + 24) = v64;
  _os_log_impl(&dword_181A37000, v57, v58, "%s %s %s", v59, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v66, -1, -1);
  MEMORY[0x1865DF520](v59, -1, -1);

  return v7;
}

uint64_t sub_182141738(uint64_t a1)
{
  v3 = *(a1 + 968);
  *(v1 + 1064) = v3;
  *(v1 + 1080) = 9168;
  v4 = *(v1 + 1088);
  if (*(v1 + 1088))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 1072) = v5;
  sub_182283F70(*(v1 + 976), v3, v43);
  sub_18201A508(v43);
  v55 = v43[10];
  v56 = v43[11];
  v57 = v43[12];
  v58 = v44;
  v51 = v43[6];
  v52 = v43[7];
  v53 = v43[8];
  v54 = v43[9];
  v47 = v43[2];
  v48 = v43[3];
  v49 = v43[4];
  v50 = v43[5];
  v45 = v43[0];
  v46 = v43[1];
  nullsub_41(&v45);
  v6 = *(v1 + 480);
  v59[10] = *(v1 + 464);
  v59[11] = v6;
  v59[12] = *(v1 + 496);
  v60 = *(v1 + 512);
  v7 = *(v1 + 416);
  v59[6] = *(v1 + 400);
  v59[7] = v7;
  v8 = *(v1 + 448);
  v59[8] = *(v1 + 432);
  v59[9] = v8;
  v9 = *(v1 + 352);
  v59[2] = *(v1 + 336);
  v59[3] = v9;
  v10 = *(v1 + 384);
  v59[4] = *(v1 + 368);
  v59[5] = v10;
  v11 = *(v1 + 320);
  v59[0] = *(v1 + 304);
  v59[1] = v11;
  v12 = v56;
  *(v1 + 464) = v55;
  *(v1 + 480) = v12;
  *(v1 + 496) = v57;
  *(v1 + 512) = v58;
  v13 = v52;
  *(v1 + 400) = v51;
  *(v1 + 416) = v13;
  v14 = v54;
  *(v1 + 432) = v53;
  *(v1 + 448) = v14;
  v15 = v48;
  *(v1 + 336) = v47;
  *(v1 + 352) = v15;
  v16 = v50;
  *(v1 + 368) = v49;
  *(v1 + 384) = v16;
  v17 = v46;
  *(v1 + 304) = v45;
  *(v1 + 320) = v17;
  sub_182015DF0(v59);
  v18 = *(v1 + 480);
  v19 = *(v1 + 448);
  v70 = *(v1 + 464);
  v71 = v18;
  v20 = *(v1 + 480);
  v72 = *(v1 + 496);
  v22 = *(v1 + 416);
  v23 = *(v1 + 384);
  v66 = *(v1 + 400);
  v21 = v66;
  v67 = v22;
  v24 = *(v1 + 416);
  v25 = *(v1 + 448);
  v68 = *(v1 + 432);
  v26 = v68;
  v69 = v25;
  v27 = *(v1 + 352);
  v29 = *(v1 + 320);
  v62 = *(v1 + 336);
  v28 = v62;
  v63 = v27;
  v30 = *(v1 + 352);
  v31 = *(v1 + 384);
  v64 = *(v1 + 368);
  v32 = v64;
  v65 = v31;
  v33 = *(v1 + 320);
  v61[0] = *(v1 + 304);
  v34 = v61[0];
  v61[1] = v33;
  v35 = *(v1 + 912);
  v74[10] = *(v1 + 896);
  v74[11] = v35;
  v74[12] = *(v1 + 928);
  v36 = *(v1 + 848);
  v74[6] = *(v1 + 832);
  v74[7] = v36;
  v37 = *(v1 + 880);
  v74[8] = *(v1 + 864);
  v74[9] = v37;
  v38 = *(v1 + 784);
  v74[2] = *(v1 + 768);
  v74[3] = v38;
  v39 = *(v1 + 816);
  v74[4] = *(v1 + 800);
  v74[5] = v39;
  v40 = *(v1 + 752);
  v74[0] = *(v1 + 736);
  v74[1] = v40;
  *(v1 + 896) = v70;
  *(v1 + 912) = v20;
  *(v1 + 928) = *(v1 + 496);
  *(v1 + 832) = v21;
  *(v1 + 848) = v24;
  *(v1 + 864) = v26;
  *(v1 + 880) = v19;
  *(v1 + 768) = v28;
  *(v1 + 784) = v30;
  *(v1 + 800) = v32;
  *(v1 + 816) = v23;
  *(v1 + 945) = 1;
  v73 = *(v1 + 512);
  v75 = *(v1 + 944);
  *(v1 + 944) = *(v1 + 512);
  *(v1 + 736) = v34;
  *(v1 + 752) = v29;
  sub_18201A394(v61, &v42);
  result = sub_182015DF0(v74);
  if (v4 == 1)
  {
    *(v1 + 1016) = 0;
    *(v1 + 1008) = 0;
    *(v1 + 992) = 0u;
  }

  *(v1 + 1091) = *(a1 + 1036);
  return result;
}

uint64_t sub_182141994()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 232);
  v23[4] = *(v0 + 216);
  v24[0] = v2;
  *(v24 + 9) = *(v0 + 241);
  v3 = *(v0 + 168);
  v23[0] = *(v0 + 152);
  v23[1] = v3;
  v23[2] = *(v0 + 184);
  v23[3] = v1;
  sub_18201A460(v23);
  v4 = *(v0 + 480);
  v25[10] = *(v0 + 464);
  v25[11] = v4;
  v25[12] = *(v0 + 496);
  v26 = *(v0 + 512);
  v5 = *(v0 + 416);
  v25[6] = *(v0 + 400);
  v25[7] = v5;
  v6 = *(v0 + 448);
  v25[8] = *(v0 + 432);
  v25[9] = v6;
  v7 = *(v0 + 352);
  v25[2] = *(v0 + 336);
  v25[3] = v7;
  v8 = *(v0 + 384);
  v25[4] = *(v0 + 368);
  v25[5] = v8;
  v9 = *(v0 + 320);
  v25[0] = *(v0 + 304);
  v25[1] = v9;
  sub_182015DF0(v25);
  v10 = *(v0 + 696);
  v27[10] = *(v0 + 680);
  v27[11] = v10;
  v27[12] = *(v0 + 712);
  v28 = *(v0 + 728);
  v11 = *(v0 + 632);
  v27[6] = *(v0 + 616);
  v27[7] = v11;
  v12 = *(v0 + 664);
  v27[8] = *(v0 + 648);
  v27[9] = v12;
  v13 = *(v0 + 568);
  v27[2] = *(v0 + 552);
  v27[3] = v13;
  v14 = *(v0 + 600);
  v27[4] = *(v0 + 584);
  v27[5] = v14;
  v15 = *(v0 + 536);
  v27[0] = *(v0 + 520);
  v27[1] = v15;
  sub_182015DF0(v27);
  v16 = *(v0 + 912);
  v29[10] = *(v0 + 896);
  v29[11] = v16;
  v29[12] = *(v0 + 928);
  v30 = *(v0 + 944);
  v17 = *(v0 + 848);
  v29[6] = *(v0 + 832);
  v29[7] = v17;
  v18 = *(v0 + 880);
  v29[8] = *(v0 + 864);
  v29[9] = v18;
  v19 = *(v0 + 784);
  v29[2] = *(v0 + 768);
  v29[3] = v19;
  v20 = *(v0 + 816);
  v29[4] = *(v0 + 800);
  v29[5] = v20;
  v21 = *(v0 + 752);
  v29[0] = *(v0 + 736);
  v29[1] = v21;
  sub_182015DF0(v29);

  sub_182141CCC(*(v0 + 1024));
  return v0;
}

uint64_t sub_182141B14()
{
  sub_182141994();

  return swift_deallocClassInstance();
}

unint64_t sub_182141BF0()
{
  v1 = sub_18208AB70(*v0);

  return v1;
}

unint64_t sub_182141C78()
{
  result = qword_1EA83A940;
  if (!qword_1EA83A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A940);
  }

  return result;
}

uint64_t sub_182141CCC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double sub_182141CDC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = -1;
  return result;
}

void Frame.unclaimedLength.getter()
{
  if (*(v0 + 24) == 5)
  {
    nw_frame_unclaimed_length(*v0);
    return;
  }

  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = __OFADD__(v2, v3);
    v5 = v2 + v3;
    if (v4)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v1, v5))
    {
      return;
    }

    __break(1u);
  }
}

Swift::Bool __swiftcall Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(Swift::Int fromStart, Swift::Int fromEnd, Swift::Bool adjustSingleIPAggregate)
{
  if (*(v3 + 24) != 5)
  {
    if (adjustSingleIPAggregate && (*(v3 + 88) & 1) != 0)
    {
      if (fromEnd)
      {
        if (qword_1EA8371A0 != -1)
        {
          swift_once();
        }

        v8 = sub_182AD2698();
        __swift_project_value_buffer(v8, qword_1EA843348);
        v9 = sub_182AD2678();
        v10 = sub_182AD38C8();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 134217984;
          *(v11 + 4) = fromEnd;
          _os_log_impl(&dword_181A37000, v9, v10, "Trying to claim at the end %ld bytes from a single-IP aggregate", v11, 0xCu);
          MEMORY[0x1865DF520](v11, -1, -1);
        }

        goto LABEL_24;
      }

      v12 = *(v3 + 80);
      v13 = __OFSUB__(v12, fromStart);
      v14 = v12 - fromStart;
      if (v13)
      {
        __break(1u);
        return fromStart;
      }

      *(v3 + 80) = v14;
    }

    v15 = *(v3 + 56);
    v5 = v15 + fromStart;
    if (!__OFADD__(v15, fromStart))
    {
      v16 = *(v3 + 64);
      v4 = v16 + fromEnd;
      if (!__OFADD__(v16, fromEnd))
      {
        v6 = *(v3 + 72);
        if (!__OFSUB__(v6, v4))
        {
          if (v6 - v4 >= v5)
          {
            *(v3 + 56) = v5;
            *(v3 + 64) = v4;
            LOBYTE(fromStart) = 1;
            return fromStart;
          }

          if (qword_1EA8371A0 == -1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
LABEL_21:
        v17 = sub_182AD2698();
        __swift_project_value_buffer(v17, qword_1EA843348);
        v18 = sub_182AD2678();
        v19 = sub_182AD38B8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134218496;
          *(v20 + 4) = v5;
          *(v20 + 12) = 2048;
          *(v20 + 14) = v6;
          *(v20 + 22) = 2048;
          *(v20 + 24) = v4;
          _os_log_impl(&dword_181A37000, v18, v19, "Claiming bytes failed because start (%ld) is beyond end (%ld - %ld)", v20, 0x20u);
          MEMORY[0x1865DF520](v20, -1, -1);
        }

LABEL_24:
        LOBYTE(fromStart) = 0;
        return fromStart;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (fromStart > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((fromEnd | fromStart) < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (fromEnd > 0xFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(fromStart) = nw_frame_claim(*v3, 0, fromStart, fromEnd);
  return fromStart;
}

Swift::Bool __swiftcall Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(Swift::Int fromStart, Swift::Int fromEnd, Swift::Bool adjustSingleIPAggregate)
{
  v6 = fromStart;
  if (*(v3 + 24) != 5)
  {
    if (adjustSingleIPAggregate && (*(v3 + 88) & 1) != 0)
    {
      if (fromEnd)
      {
        if (qword_1EA8371A0 == -1)
        {
LABEL_10:
          v7 = sub_182AD2698();
          __swift_project_value_buffer(v7, qword_1EA843348);
          v8 = sub_182AD2678();
          v9 = sub_182AD38C8();
          if (!os_log_type_enabled(v8, v9))
          {
LABEL_25:

LABEL_26:
            LOBYTE(fromStart) = 0;
            return fromStart;
          }

          v10 = swift_slowAlloc();
          *v10 = 134217984;
          *(v10 + 4) = fromEnd;
          v11 = "Trying to unclaim at the end %ld bytes from a single-IP aggregate";
          v12 = v9;
          v13 = v8;
          v14 = v10;
          v15 = 12;
LABEL_24:
          _os_log_impl(&dword_181A37000, v13, v12, v11, v14, v15);
          MEMORY[0x1865DF520](v10, -1, -1);
          goto LABEL_25;
        }

LABEL_36:
        swift_once();
        goto LABEL_10;
      }

      v16 = *(v3 + 80);
      v17 = __OFADD__(v16, fromStart);
      v18 = v16 + fromStart;
      if (v17)
      {
        __break(1u);
        return fromStart;
      }

      *(v3 + 80) = v18;
    }

    v4 = *(v3 + 56);
    if (v4 < fromStart)
    {
      if (qword_1EA8371A0 == -1)
      {
LABEL_16:
        v19 = sub_182AD2698();
        __swift_project_value_buffer(v19, qword_1EA843348);
        v20 = sub_182AD2678();
        v21 = sub_182AD38B8();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 134218240;
          *(v22 + 4) = v6;
          *(v22 + 12) = 2048;
          *(v22 + 14) = v4;
          _os_log_impl(&dword_181A37000, v20, v21, "Frame cannot unclaim %ld start bytes (has %ld left)", v22, 0x16u);
          MEMORY[0x1865DF520](v22, -1, -1);
        }

        goto LABEL_26;
      }

LABEL_33:
      swift_once();
      goto LABEL_16;
    }

    v23 = *(v3 + 64);
    if (v23 < fromEnd)
    {
      if (qword_1EA8371A0 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1EA843348);
      v8 = sub_182AD2678();
      v25 = sub_182AD38B8();
      if (!os_log_type_enabled(v8, v25))
      {
        goto LABEL_25;
      }

      v10 = swift_slowAlloc();
      *v10 = 134218240;
      *(v10 + 4) = fromEnd;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v23;
      v11 = "Frame cannot unclaim %ld end bytes (has %ld left)";
      v12 = v25;
      v13 = v8;
      v14 = v10;
      v15 = 22;
      goto LABEL_24;
    }

    if (__OFSUB__(v4, fromStart))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 56) = v4 - fromStart;
      if (!__OFSUB__(v23, fromEnd))
      {
        *(v3 + 64) = v23 - fromEnd;
        LOBYTE(fromStart) = 1;
        return fromStart;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (fromStart > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((fromEnd | fromStart) < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (fromEnd > 0xFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  LOBYTE(fromStart) = nw_frame_unclaim(*v3, 0, fromStart, fromEnd);
  return fromStart;
}

Swift::Void __swiftcall Frame.finalize(success:)(Swift::Bool success)
{
  v2 = v1;
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = (v2 + 32);
  v7 = *(v2 + 48);
  sub_18214429C(v4, v5, *(v2 + 48));
  sub_181F68F3C(v4, v5, v7);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 2;
  if (!v7)
  {
    (v4)(v2, success);
    v18 = Frame.bufferLength.getter();
    sub_181F68F3C(v4, v5, 0);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 6;
    *v6 = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 2;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = v18;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0;
    *(v2 + 136) = 2;
    *(v2 + 140) = 1;
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 1;
    *(v2 + 176) = 0;
    *(v2 + 184) = 0;
    *(v2 + 168) = 0;
    *(v2 + 192) = 0;
    *(v2 + 193) = 1;
    *(v2 + 200) = 0;
    *(v2 + 208) = -1;
    return;
  }

  if (v7 == 1)
  {
    v8 = Frame.bufferLength.getter();
    v9 = *v2;
    v10 = *(v2 + 8);
    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    v13 = *(v2 + 32);
    v14 = *(v2 + 40);
    v15 = *(v2 + 48);
    if (v15 == 2 && !(v14 | v13))
    {
      v16 = v8;
      v17 = *(v2 + 144);
      if ((*(v2 + 160) & 1) == 0)
      {
        if (v17)
        {
          MEMORY[0x1865DF520](v17, -1, -1);
        }
      }

      sub_181F68EF4(v9, v10, v11, v12);

      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *(v2 + 24) = 6;
      *(v2 + 25) = 0;
      *(v2 + 28) = 0;
      *v6 = 0;
      *(v2 + 40) = 0;
      *(v2 + 48) = 2;
      *(v2 + 49) = *v51;
      *(v2 + 52) = *&v51[3];
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      *(v2 + 72) = v16;
      *(v2 + 80) = 0;
      *(v2 + 88) = 0;
      *(v2 + 89) = *v50;
      *(v2 + 92) = *&v50[3];
      *(v2 + 96) = 0u;
      *(v2 + 112) = 0u;
      *(v2 + 128) = 0;
      *(v2 + 136) = 2;
      *(v2 + 140) = 1;
      *(v2 + 141) = v48;
      *(v2 + 143) = v49;
      *(v2 + 144) = 0;
      *(v2 + 152) = 0;
      *(v2 + 160) = 1;
      *(v2 + 164) = *&v47[3];
      *(v2 + 161) = *v47;
      *(v2 + 192) = 0;
      *(v2 + 176) = 0;
      *(v2 + 184) = 0;
      *(v2 + 168) = 0;
      *(v2 + 193) = 1;
LABEL_23:
      *(v2 + 194) = 0;
      *(v2 + 199) = v46;
      *(v2 + 195) = v45;
      *(v2 + 200) = 0;
      *(v2 + 208) = -1;
      return;
    }

    goto LABEL_29;
  }

  if (v4 <= 1)
  {
    if (!(v4 | v5))
    {
      return;
    }

    sub_182143F84();
    v19 = Frame.bufferLength.getter();
    v20 = *v2;
    v10 = *(v2 + 8);
    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    v21 = *(v2 + 40);
    v22 = *(v2 + 48);
    v23 = v2 + 168;
    v4 = *(v2 + 168);
    if (v22 == 2 && *(v2 + 32) == 0)
    {
LABEL_18:
      v29 = v19;
      goto LABEL_19;
    }

    v2 = *(v2 + 32);
    v24 = v20;
    v25 = v21;
    v5 = v22;
    sub_181F68EF4(v24, v10, v11, v12);

    sub_181F68F3C(v2, v25, v5);
    __break(1u);
  }

  if (!(v4 ^ 2 | v5))
  {
    sub_181F68EF4(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 6;
    v19 = Frame.bufferLength.getter();
    v20 = *v2;
    v10 = *(v2 + 8);
    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    v26 = *(v2 + 32);
    v27 = *(v2 + 40);
    v28 = *(v2 + 48);
    v23 = v2 + 168;
    if (v28 != 2 || v27 | v26)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (*(v2 + 24) == 5)
  {
    v32 = *(v2 + 8);
    v31 = *(v2 + 16);
    v33 = *v2;
    v34 = swift_unknownObjectRetain();
    nw_frame_finalize(v34);
    v29 = Frame.bufferLength.getter();
    sub_181F68EF4(v33, v32, v31, 5u);
    v20 = *v2;
    v10 = *(v2 + 8);
    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    v35 = *(v2 + 40);
    v36 = *(v2 + 48);
    v23 = v2 + 168;
    if (v36 != 2 || *(v2 + 32) != 0)
    {
      v37 = *(v2 + 32);
      v38 = v20;
      v14 = v35;
      v9 = v36;
      sub_181F68EF4(v38, v10, v11, v12);

      sub_181F68F3C(v37, v14, v9);
      __break(1u);
LABEL_29:
      v39 = v13;
      v40 = v9;
      v20 = v15;
      sub_181F68EF4(v40, v10, v11, v12);

      sub_181F68F3C(v39, v14, v20);
      __break(1u);
LABEL_30:
      v41 = v26;
      v42 = v20;
      v43 = v27;
      v44 = v28;
      sub_181F68EF4(v42, v10, v11, v12);

      sub_181F68F3C(v41, v43, v44);
      __break(1u);
      return;
    }

LABEL_19:
    v30 = *(v2 + 144);
    if ((*(v2 + 160) & 1) == 0 && v30)
    {
      MEMORY[0x1865DF520](v30, -1, -1);
    }

    sub_181F68EF4(v20, v10, v11, v12);

    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 6;
    *(v2 + 25) = 0;
    *(v2 + 28) = 0;
    *v6 = 0;
    v6[1] = 0;
    *(v2 + 48) = 2;
    *(v2 + 49) = *v51;
    *(v2 + 52) = *&v51[3];
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = v29;
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;
    *(v2 + 89) = *v50;
    *(v2 + 92) = *&v50[3];
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0;
    *(v2 + 136) = 2;
    *(v2 + 140) = 1;
    *(v2 + 141) = v48;
    *(v2 + 143) = v49;
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 1;
    *(v2 + 164) = *&v47[3];
    *(v2 + 161) = *v47;
    *(v23 + 24) = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 0;
    *(v2 + 193) = 1;
    goto LABEL_23;
  }
}

uint64_t Frame.unclaimedBytes.getter()
{
  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *(v0 + 24);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (v3 <= 2)
  {
    if (*(v0 + 24))
    {
      if (v3 != 1)
      {
        return result;
      }

      if (!v6)
      {
        return v2 + v4;
      }

      v7 = __OFADD__(v4, v5);
      v5 += v4;
      if (v7)
      {
        goto LABEL_28;
      }

      v7 = __OFSUB__(v6, v5);
      v6 -= v5;
      if (!v7)
      {
        return v2 + v4;
      }

      __break(1u);
    }

LABEL_15:
    if (!v6)
    {
      return v2 + v4;
    }

    v7 = __OFADD__(v4, v5);
    v5 += v4;
    if (!v7)
    {
      v7 = __OFSUB__(v6, v5);
      v6 -= v5;
      if (!v7)
      {
        return v2 + v4;
      }

      __break(1u);
LABEL_20:
      if (!v2)
      {
        __break(1u);
        return result;
      }

      if (!v6)
      {
        return v2 + v4;
      }

      v7 = __OFADD__(v4, v5);
      v8 = v4 + v5;
      if (!v7)
      {
        if (!__OFSUB__(v6, v8))
        {
          return v2 + v4;
        }

LABEL_30:
        __break(1u);
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  switch(v3)
  {
    case 3u:
      goto LABEL_20;
    case 4u:
      goto LABEL_15;
    case 5u:
      v9 = 0;
      result = nw_frame_unclaimed_bytes(v2, &v9);
      if (!result || !v9)
      {
        return 0;
      }

      break;
  }

  return result;
}

Swift::Void __swiftcall Frame.collapse()()
{
  LODWORD(v1) = *(v0 + 24);
  if (v1 != 5)
  {
    v3 = *(v0 + 72);
    if (!v3)
    {
      return;
    }

    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = v5 + v4;
    if (__OFADD__(v5, v4))
    {
      __break(1u);
    }

    else
    {
      v7 = v3 - v6;
      if (!__OFSUB__(v3, v6))
      {
        if (v7 <= 0)
        {
          return;
        }

        v8 = *v0;
        if (*(v0 + 24) <= 2u)
        {
          if (!*(v0 + 24))
          {
            goto LABEL_18;
          }

          if (v1 != 1 || v4 <= 0)
          {
LABEL_26:
            if (!__OFSUB__(v3, v7))
            {
              *(v0 + 72) = v3 - v7;
              if ((*(v0 + 88) & 1) == 0)
              {
                return;
              }

              v9 = *(v0 + 80);
              v10 = __OFSUB__(v9, v7);
              v11 = v9 - v7;
              if (!v10)
              {
                *(v0 + 80) = v11 & ~(v11 >> 63);
                return;
              }

              goto LABEL_34;
            }

LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v1 = v5 + v7;
          if (!__OFADD__(v5, v7))
          {
LABEL_25:
            memmove((v8 + v5), (v8 + v1), v4);
            goto LABEL_26;
          }

          __break(1u);
        }

        if (v1 == 3)
        {
          goto LABEL_22;
        }

        if (v1 != 4)
        {
          goto LABEL_26;
        }

LABEL_18:
        if (v4 < 1)
        {
          goto LABEL_26;
        }

        v1 = v5 + v7;
        if (!__OFADD__(v5, v7))
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_22:
        if (v4 < 1)
        {
          goto LABEL_26;
        }

        if (!v8)
        {
LABEL_36:
          __break(1u);
          return;
        }

        v1 = v5 + v7;
        if (__OFADD__(v5, v7))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v2 = *v0;

  nw_frame_collapse(v2);
}

void *Frame.init(capacity:)@<X0>(size_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_slowAlloc();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a1)
    {
      bzero(result, a1);
    }

    result = Frame.bufferLength.getter();
    *a2 = v5;
    *(a2 + 8) = a1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = xmmword_182AE69F0;
    *(a2 + 48) = 2;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = result;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0;
    *(a2 + 136) = 2;
    *(a2 + 140) = 1;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 192) = 0;
    *(a2 + 184) = 0;
    *(a2 + 193) = 1;
    *(a2 + 194) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = -1;
  }

  return result;
}

uint64_t Frame.extractBufferToFreeExternally()()
{
  v1 = 0;
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 24);
  if (v4 <= 2)
  {
    if (*(v0 + 24) && v4 != 1)
    {
      return v1;
    }
  }

  else
  {
    if (v4 == 3)
    {
      v1 = *v0;
      goto LABEL_12;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        return v1;
      }

      v7 = 0;
      buffer = nw_frame_get_buffer(v2, &v7);
      if (!buffer || !v7)
      {
        return 0;
      }

      v1 = buffer;
      v2 = *v0;
      v3 = *(v0 + 8);
      LOBYTE(v4) = *(v0 + 24);
      goto LABEL_12;
    }
  }

  v1 = *v0;
LABEL_12:
  sub_181F68EF4(v2, v3, *(v0 + 16), v4);
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 6;
  if (*(v0 + 48) == 2 && !*(v0 + 40) && *(v0 + 32) == 1)
  {
    sub_181F68F3C(1, 0, 2);
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 2;
  }

  return v1;
}

double Frame.init(copyBuffer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_slowAlloc();
  memcpy(v5, (a1 + 32), *(a1 + 16));

  v6 = Frame.bufferLength.getter();
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = xmmword_182AE69F0;
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v6;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  result = 0.0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) = 2;
  *(a2 + 140) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 192) = 0;
  *(a2 + 184) = 0;
  *(a2 + 193) = 1;
  *(a2 + 194) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = -1;
  return result;
}

uint64_t Frame.init(buffer:finalizer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 136) = 2;
  *(a3 + 140) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 192) = 0;
  *(a3 + 184) = 0;
  *(a3 + 193) = 1;
  *(a3 + 200) = 0;
  *(a3 + 208) = -1;
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = *a2;
  *(a3 + 48) = v6;
  result = Frame.bufferLength.getter();
  *(a3 + 72) = result;
  return result;
}

Swift::Bool __swiftcall Frame.collapse(to:)(Swift::Int to)
{
  if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(to, 0, 1))
  {
    return 0;
  }

  Frame.collapse()();

  return Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(to, 0, 1);
}

void Frame.setMetadata(metadata:isInput:isComplete:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = a4;
  v62 = *MEMORY[0x1E69E9840];
  if (*(v4 + 24) == 5)
  {
    v6 = *v4;
    v7 = a3 & 1;
    v8 = a4 & 1;

    nw_frame_set_metadata(v6, 0, v7, v8);
    return;
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A950);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      v13 = *(v12 + 72);
      if (HIBYTE(v13) != 2)
      {
        if (*(v4 + 136) == 2)
        {
          *(v4 + 96) = 0x200000000000000;
          *(v4 + 104) = 0u;
          *(v4 + 120) = 0u;
          *(v4 + 136) = 0;
        }

        *(v4 + 100) = BYTE1(v13);
        sub_182143C1C(BYTE4(v13));
        sub_182144178(v13 >> 16);
        if (*(v4 + 136) == 2)
        {
          *(v4 + 96) = 0x200000000000000;
          *(v4 + 104) = 0u;
          *(v4 + 120) = 0u;
          *(v4 + 136) = 0;
        }

        *(v4 + 103) = BYTE3(v13);
      }
    }
  }

  v14 = (v4 + 168);
  v15 = *(v4 + 168);
  if (v15 && !v15[3])
  {
    *(v4 + 176) = v5 & 1;
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  ObjectType = swift_getObjectType();
  v17 = *(a2 + 40);
  swift_unknownObjectRetain();
  v17(&v54, ObjectType, a2);
  if (!v15)
  {
    *v14 = *sub_182AD2388();

    goto LABEL_32;
  }

  v45 = (v4 + 168);
  v46 = v5;
  v18 = v15[4];
  if (v15[2] >= v15[3] + v18)
  {
    v19 = v15[3] + v18;
  }

  else
  {
    v19 = v15[2];
  }

  v51 = v15;
  v52 = v18;
  v53 = v19;
  v20 = swift_retain_n();
  while (v18 != v19)
  {
LABEL_21:
    v21 = v18 + 1;
    v52 = v18 + 1;
    v22 = &v15[5 * v18];
    v23 = *(v22 + 7);
    v24 = *(v22 + 72);
    v25 = *(v22 + 5);
    v57 = v24;
    v55 = v25;
    v56 = v23;
    v48 = v23;
    *uu1 = v25;
    *uu2 = v54;
    v50 = v25;
    sub_181F49AE8(&v55, v60);
    if (!uuid_compare(uu1, uu2))
    {
      v26 = *(&v56 + 1);
      v27 = swift_getObjectType();
      (*(a2 + 56))(v60, ObjectType, a2);
      *uu1 = *v60;
      *&uu1[8] = *&v60[8];
      v59 = v60[24];
      v28 = (*(v26 + 48))(uu1, v27, v26);
      sub_181F48350(*&uu1[8], *&uu1[16], v59);
      if (v28)
      {

        sub_18206A19C(&v55);
        *v60 = v50;
        *&v60[16] = a1;
        *&v60[24] = a2;
        v61 = v46 & 1;
        v29 = v60;
        goto LABEL_47;
      }
    }

    *v60 = v50;
    *&v60[16] = v48;
    v61 = v24;
    v20 = sub_18206A19C(v60);
    v19 = v53;
    v18 = v21;
  }

  if (sub_181AC81FC(v20))
  {
    v15 = v51;
    v18 = v52;
    goto LABEL_21;
  }

  v5 = v46;
  v14 = v45;
LABEL_32:
  v55 = v54;
  *&v56 = a1;
  *(&v56 + 1) = a2;
  v57 = v5 & 1;
  v30 = *(*v14 + 24);
  if ((a3 & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v14;
  if (*(*v14 + 16) < v31 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181F463C8(isUniquelyReferenced_nonNull_native, v31);
    v30 = *v14;
  }

  v33 = *(v30 + 32);
  if (!v33)
  {
    v39 = *(v30 + 16);
    v34 = __OFSUB__(v39, 1);
    v35 = v39 - 1;
    if (!v34)
    {
      goto LABEL_49;
    }

    goto LABEL_56;
  }

  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (!v34)
  {
LABEL_49:
    v40 = (v30 + 40 * v35);
    v41 = v55;
    v42 = v56;
    *(v40 + 72) = v57;
    *(v40 + 7) = v42;
    *(v40 + 5) = v41;
    *(v30 + 32) = v35;
    v43 = *(v30 + 24);
    v34 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (!v34)
    {
      *(v30 + 24) = v44;
      swift_unknownObjectRelease();
      return;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  v36 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  swift_unknownObjectRetain();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v14;
  if (*(*v14 + 16) < v36 || (v37 & 1) == 0)
  {
    sub_181F463C8(v37, v36);
    v38 = *v14;
  }

  sub_181F46B3C((v38 + 16), v38 + 40, &v55);
  swift_unknownObjectRelease();
  v29 = &v55;
LABEL_47:
  sub_18206A19C(v29);
}

uint64_t sub_1821437AC(uint64_t result)
{
  if (result > 499)
  {
    if (result <= 699)
    {
      if (result != 500)
      {
        if (result == 600)
        {
          v2 = 3146000;
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v2 = 2621728;
    }

    else
    {
      switch(result)
      {
        case 0x2BC:
          v2 = 3670272;
          break;
        case 0x320:
          v2 = 4194688;
          break;
        case 0x384:
          v2 = 4718992;
          break;
        default:
          goto LABEL_17;
      }
    }
  }

  else
  {
    if (result <= 199)
    {
      if (result == 100)
      {
        v2 = 524432;
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    switch(result)
    {
      case 0xC8:
        v2 = 1048704;
        break;
      case 0x12C:
        v2 = 1572880;
        break;
      case 0x190:
        v2 = 2097184;
        break;
      default:
LABEL_17:
        v2 = 0;
        break;
    }
  }

LABEL_23:
  if (*(v1 + 136) == 2)
  {
    *(v1 + 96) = 0x200000000000000;
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0;
  }

  *(v1 + 96) = v2;
  return result;
}

id sub_1821438A8@<X0>(char *a1@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = sub_182AD2868();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = *v1;
  v11 = *(v1 + 24);
  if (v11 == 2)
  {
    v18 = *(v1 + 56);
    v29 = *(v1 + 64);
    v19 = *(v1 + 72);
    v20 = swift_projectBox();
    v10 = v4 + 16;
    v21 = *(v4 + 16);
    v21(v6, v20, v3);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
    v22 = *(v12 + 48);
    v21(a1, v6, v3);
    *&a1[v22] = v18;
    (*(v4 + 8))(v6, v3);
    if (v19)
    {
      v23 = v18 + v29;
      if (__OFADD__(v18, v29))
      {
        __break(1u);
      }

      v24 = __OFSUB__(v19, v23);
      v25 = v19 - v23;
      if (v24)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      v25 = 0;
    }

    *&a1[*(v12 + 64)] = v25;
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  if (v11 != 5)
  {
LABEL_12:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
    v27 = *(*(v26 - 8) + 56);

    return v27(a1, 1, 1, v26);
  }

  v6 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = swift_unknownObjectRetain();
  if (!nw_frame_uses_external_data(v13))
  {
LABEL_11:
    sub_181F68EF4(v10, v6, v12, 5u);
    goto LABEL_12;
  }

  v30[0] = 0;
  result = nw_frame_get_external_data(v10, v30 + 1, v30);
  if (result)
  {
    v15 = result;
    sub_182AD2818();
    sub_181F68EF4(v10, v6, v12, 5u);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
    v16 = *(v12 + 48);
    v17 = *(v12 + 64);
    (*(v4 + 32))(a1, v9, v3);
    *&a1[v16] = HIDWORD(v30[0]);
    *&a1[v17] = LODWORD(v30[0]);
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  __break(1u);
  return result;
}

void sub_182143C1C(uint8_t a1)
{
  if (a1 > 3u)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843348);
    oslog = sub_182AD2678();
    v4 = sub_182AD38C8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 16777472;
      v5[4] = a1;
      _os_log_impl(&dword_181A37000, oslog, v4, "Cannot set DSCP value of %hhu", v5, 5u);
      MEMORY[0x1865DF520](v5, -1, -1);
    }
  }

  else
  {
    if (*(v1 + 136) == 2)
    {
      *(v1 + 96) = 0x200000000000000;
      *(v1 + 104) = 0u;
      *(v1 + 120) = 0u;
      *(v1 + 136) = 0;
    }

    *(v1 + 101) = a1;
  }
}

uint64_t Frame.deinit()
{
  if (*(v0 + 48) == 2 && (v2 = *(v0 + 32), v1 = *(v0 + 40), *(v0 + 32) == 0))
  {
    if ((*(v0 + 160) & 1) == 0)
    {
      v3 = *(v0 + 144);
      if (v3)
      {
        MEMORY[0x1865DF520](v3, -1, -1);
      }
    }

    sub_181F68EF4(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
    sub_181F68F3C(v2, v1, 2);
  }

  else
  {
    v5 = *(v0 + 48);
    sub_181F68EF4(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));

    result = sub_181F68F3C(*(v0 + 32), *(v0 + 40), v5);
    __break(1u);
  }

  return result;
}

uint64_t Frame.bufferLength.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  result = *(v0 + 8);
  v3 = *(v0 + 24);
  if (v3 > 3)
  {
    if (v3 != 4)
    {
      if (v3 == 5)
      {
        v5 = 0;
        nw_frame_get_buffer(v2, &v5);
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  else if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
      return *(swift_projectBox() + *(v4 + 48));
    }

    else if (v2)
    {
      result -= v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Frame.init(customBuffer:owner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 88) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 2;
  *(a4 + 140) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  *(a4 + 168) = 0;
  *(a4 + 192) = 256;
  *(a4 + 194) = 0;
  *(a4 + 200) = 0;
  *(a4 + 208) = -1;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 3;
  *(a4 + 32) = xmmword_182AED510;
  *(a4 + 48) = 2;
  result = Frame.bufferLength.getter();
  *(a4 + 72) = result;
  return result;
}

void sub_182143F84()
{
  if (*(v0 + 24))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v1 = sub_182AD2698();
    __swift_project_value_buffer(v1, qword_1EA843348);
    oslog = sub_182AD2678();
    v2 = sub_182AD38C8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_181A37000, oslog, v2, "Cannot free buffer on frame that didn't use malloc", v3, 2u);
      MEMORY[0x1865DF520](v3, -1, -1);
    }
  }

  else
  {
    MEMORY[0x1865DF520](*v0, -1, -1);
    sub_181F68EF4(*v0, v0[1], v0[2], *(v0 + 24));
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    *(v0 + 24) = 6;
    v0[9] = 0;
    v0[10] = 0;
  }
}

uint64_t sub_1821440B8()
{
  v4 = *MEMORY[0x1E69E9840];
  result = *v0;
  v2 = *(v0 + 24);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3u:
        return result;
      case 4u:
        return result;
      case 5u:
        v3 = 0;
        result = nw_frame_get_buffer(result, &v3);
        if (result)
        {
          if (v3)
          {
            return result;
          }
        }

        break;
    }

    return 0;
  }

  if (*(v0 + 24) && v2 != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_182144178(uint64_t result)
{
  v2 = dword_182AF9444[result];
  if (*(v1 + 136) == 2)
  {
    *(v1 + 96) = 0x200000000000000;
    *(v1 + 104) = 0u;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0;
  }

  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1821441B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 136) = 2;
  *(a3 + 140) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 192) = 0;
  *(a3 + 184) = 0;
  *(a3 + 193) = 1;
  *(a3 + 200) = 0;
  *(a3 + 208) = -1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  sub_182AD2848();
  *(v11 + v12) = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v9;
  *(a3 + 24) = 2;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  result = Frame.bufferLength.getter();
  *(a3 + 72) = result;
  return result;
}

uint64_t sub_18214429C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for Frame(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_181F68EF4(v6, v7, v8, v9);
  v10 = *(a2 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v13 = *(a1 + 48);
  *(a1 + 48) = v10;
  sub_181F68F3C(v11, v12, v13);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v14 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v14;
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

uint64_t getEnumTagSinglePayload for Frame(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 209))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168);
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

uint64_t storeEnumTagSinglePayload for Frame(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network5FrameV6BufferO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 5)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_18214455C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 25))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 24);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1821445A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1821445EC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network5FrameV9FinalizerO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_18214466C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1821446C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_182144730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182144778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1821447D0()
{
  result = qword_1EA83A960;
  if (!qword_1EA83A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A960);
  }

  return result;
}

unint64_t sub_182144828()
{
  result = qword_1EA83A968;
  if (!qword_1EA83A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A968);
  }

  return result;
}

unint64_t sub_182144880()
{
  result = qword_1EA83A970;
  if (!qword_1EA83A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A970);
  }

  return result;
}

unint64_t sub_1821448D8()
{
  result = qword_1EA83A978;
  if (!qword_1EA83A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A978);
  }

  return result;
}

__n128 MigrationController.identifier.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

void MigrationController.state.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v4 = v3 + *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = *(v4 + 8);
  *(a1 + 4) = *(v4 + 12);
  *a1 = v6;

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t MigrationController.availableInterfaces.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = v1 + *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + 16);

  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

uint64_t MigrationController.preferredInterfaceSets.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = v1 + *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = *(v2 + 24);

  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

void sub_182144B44(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v4 = v3 + *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = *(v4 + 24);

  os_unfair_lock_unlock((v3 + v5));
  *a2 = v6;
}

void sub_182144BE4(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_18214F188(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t MigrationController.preferredInterfaceSets.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_18214D85C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_182144D40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  if (v5 == *(v4 + 16))
  {
    if (v5)
    {
      v6 = v4 == a2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = (a2 + 32);
      v8 = (v4 + 32);
      while (v5)
      {
        v9 = *v7;
        v10 = *v8;

        v11 = sub_18214D4B0(v9, v10);

        if ((v11 & 1) == 0)
        {
          goto LABEL_11;
        }

        ++v7;
        ++v8;
        if (!--v5)
        {
          return;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_11:

    *(a1 + 24) = a2;
    sub_182144E30(a1);
  }
}

void sub_182144E30(uint64_t a1)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v64 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC7Network19MigrationController_lock);
  v76 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  v77 = v9;
  os_unfair_lock_assert_owner((v9 + v76));
  locked = type metadata accessor for MigrationController.LockedState(0);
  v65 = *(locked + 80);
  v11 = *(a1 + v65);
  v12 = *(a1 + 24);
  v69 = *(v12 + 16);
  v66 = v11;
  if (!v69)
  {
    v13 = *(a1 + *(locked + 76));
    v85 = v13;

    goto LABEL_82;
  }

  v13 = MEMORY[0x1E69E7CC0];
  v85 = MEMORY[0x1E69E7CC0];
  v70 = v12 + 32;

  v14 = 0;
  v80 = 100;
  v74 = a1;
  v75 = locked;
  v67 = v12;
  v68 = v8;
  do
  {
    if (v14 >= *(v12 + 16))
    {
      goto LABEL_103;
    }

    v72 = v14;
    v73 = v13;
    v15 = *(v70 + 8 * v14);
    v71 = v14 + 1;
    v16 = v15 + 56;
    v17 = 1 << *(v15 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v13 = v18 & *(v15 + 56);
    v19 = (v17 + 63) >> 6;
    v81 = v15;

    v20 = 0;
    v78 = v16;
    v79 = v19;
LABEL_8:
    v21 = v20;
    if (!v13)
    {
      goto LABEL_10;
    }

    do
    {
      v20 = v21;
LABEL_13:
      v22 = *(*(v81 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v13)))));

      os_unfair_lock_assert_owner((v77 + v76));
      v86[0] = MEMORY[0x1E69E7CC0];
      locked = *(a1 + *(locked + 76));
      if (locked >> 62)
      {
        v84 = locked & 0xFFFFFFFFFFFFFF8;
        v23 = sub_182AD3EB8();
        if (!v23)
        {
LABEL_62:
          v82 = MEMORY[0x1E69E7CC0];
          goto LABEL_63;
        }
      }

      else
      {
        v84 = locked & 0xFFFFFFFFFFFFFF8;
        v23 = *((locked & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_62;
        }
      }

      a1 = 0;
      v83 = locked & 0xC000000000000001;
      v82 = MEMORY[0x1E69E7CC0];
      do
      {
        v24 = a1;
        while (1)
        {
          if (v83)
          {
            v27 = MEMORY[0x1865DA790](v24, locked);
            a1 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_88;
            }
          }

          else
          {
            if (v24 >= *(v84 + 16))
            {
              goto LABEL_89;
            }

            v27 = *(locked + 8 * v24 + 32);
            swift_unknownObjectRetain();
            a1 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }
          }

          v28 = swift_unknownObjectRetain();
          v29 = nw_interface_option_details_copy_interface(v28);
          if (!v29)
          {
            goto LABEL_105;
          }

          v2 = *&v29[OBJC_IVAR____TtC7Network13__NWInterface_interface];

          swift_unknownObjectRelease();
          v30 = *(v2 + 40) == *(v22 + 40) && *(v2 + 48) == *(v22 + 48);
          if (v30 || (sub_182AD4268()) && *(v2 + 16) == *(v22 + 16))
          {
            break;
          }

LABEL_22:
          swift_unknownObjectRelease_n();

          ++v24;
          if (a1 == v23)
          {
            goto LABEL_63;
          }
        }

        v31 = *(v22 + 184);
        if (v31 <= 1)
        {
          if (!*(v22 + 184))
          {
            goto LABEL_46;
          }

          v32 = 2;
        }

        else if (v31 == 2)
        {
          v32 = 3;
        }

        else if (v31 == 3)
        {
          v32 = 4;
        }

        else
        {
          v32 = 1;
        }

        if (*(v2 + 184))
        {
          v33 = qword_182AF95F0[*(v2 + 184)] == v32;
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          goto LABEL_22;
        }

LABEL_46:
        v34 = *(v22 + 185);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            v25 = 6;
          }

          else
          {
            v25 = 7;
          }
        }

        else if (v34 == 1)
        {
          v25 = 3;
        }

        else
        {
          if (v34 != 2)
          {
            goto LABEL_56;
          }

          v25 = 4;
        }

        if (*(v2 + 185))
        {
          v26 = qword_182AF9618[*(v2 + 185)] == v25;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          goto LABEL_22;
        }

LABEL_56:
        v35 = nw_interface_option_details_copy(v27);
        v36 = swift_unknownObjectRelease();
        if (!v35)
        {
          goto LABEL_111;
        }

        MEMORY[0x1865D9F10](v36);
        if (*((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v82 = *((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_182AD3408();
        }

        sub_182AD3448();
        swift_unknownObjectRelease();

        v82 = v86[0];
      }

      while (a1 != v23);
LABEL_63:
      v37 = v82;
      if (v82 >> 62)
      {
        v2 = sub_182AD3EB8();
      }

      else
      {
        v2 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = v74;
      locked = v75;
      v19 = v79;
      v13 &= v13 - 1;
      if (v2)
      {
        if (v2 >= 1)
        {
          v38 = 0;
          v39 = v37 & 0xC000000000000001;
          do
          {
            if (v39)
            {
              MEMORY[0x1865DA790](v38, v37);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            v40 = swift_unknownObjectRetain();
            nw_interface_option_details_set_priority(v40, v80);
            MEMORY[0x1865D9F10]();
            if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_182AD3408();
              locked = v75;
            }

            ++v38;
            sub_182AD3448();
            swift_unknownObjectRelease();
            v37 = v82;
          }

          while (v2 != v38);
          v73 = v85;

          v16 = v78;
          v19 = v79;
          goto LABEL_8;
        }

LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v21 = v20;
      v16 = v78;
    }

    while (v13);
    while (1)
    {
LABEL_10:
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (v20 >= v19)
      {
        break;
      }

      v13 = *(v16 + 8 * v20);
      ++v21;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    if (v72 == 228)
    {
      goto LABEL_104;
    }

    --v80;
    v14 = v71;
    v8 = v68;
    v13 = v73;
    v12 = v67;
  }

  while (v71 != v69);
LABEL_82:

  v2 = v66;
  v41 = sub_18214DA6C(v66, v13);

  if ((v41 & 1) == 0)
  {
    goto LABEL_85;
  }

  sub_181AB5D28(a1 + *(locked + 56), v8, &unk_1EA8394B0);
  v42 = sub_182AD2868();
  if ((*(*(v42 - 8) + 48))(v8, 1, v42) != 1)
  {

    sub_181F49A88(v8, &unk_1EA8394B0);

    return;
  }

  sub_181F49A88(v8, &unk_1EA8394B0);
LABEL_85:

  *(a1 + v65) = v13;
  if (qword_1EA8371B8 != -1)
  {
LABEL_107:
    swift_once();
  }

  v43 = sub_182AD2698();
  __swift_project_value_buffer(v43, qword_1EA843378);

  v22 = sub_182AD2678();
  v44 = sub_182AD38D8();

  if (os_log_type_enabled(v22, v44))
  {
    v45 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v86[0] = v84;
    *v45 = 136315394;

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA20);
    v47 = MEMORY[0x1865D9F40](v13, v46);
    v49 = v48;

    v50 = sub_181C64FFC(v47, v49, v86);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    v51 = MEMORY[0x1865D9F40](v2, v46);
    v53 = v52;

    v54 = sub_181C64FFC(v51, v53, v86);

    *(v45 + 14) = v54;
    _os_log_impl(&dword_181A37000, v22, v44, "Preferred interface options changed: %s, was %s", v45, 0x16u);
    v55 = v84;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v55, -1, -1);
    MEMORY[0x1865DF520](v45, -1, -1);
    goto LABEL_91;
  }

LABEL_90:

LABEL_91:

  v56 = nw_migration_policy_create();
  nw_migration_policy_set_exclusive(v56, 1);
  if (v13 >> 62)
  {
    v57 = sub_182AD3EB8();
    if (!v57)
    {
      goto LABEL_100;
    }

LABEL_93:
    if (v57 >= 1)
    {

      for (i = 0; i != v57; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x1865DA790](i, v13);
        }

        else
        {
          v59 = *(v13 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        nw_migration_policy_add_interface_option(v56, v59);
        swift_unknownObjectRelease();
      }

      goto LABEL_100;
    }

    __break(1u);
LABEL_111:
    __break(1u);
  }

  v57 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    goto LABEL_93;
  }

LABEL_100:
  v60 = nw_migration_policy_copy_data(v56);
  v61 = v63;
  sub_182AD2818();
  v62 = sub_182AD2868();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  sub_181B38538(v61, a1 + *(locked + 56));
  sub_18214A448(a1);

  swift_unknownObjectRelease();
}