uint64_t sub_185B261EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 24);

    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a6;
    v15[7] = a7;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_185B26EDC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_185AE7934;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185AD94F4;
    aBlock[3] = &block_descriptor_31;
    v17 = _Block_copy(aBlock);

    v18 = a2;
    swift_unknownObjectRetain();
    v19 = a7;

    dispatch_sync(v14, v17);

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_185B263C4(uint64_t a1, void *a2, uint64_t (*a3)(void, void))
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);

  v7 = a2;
  v8 = sub_185B67B6C();
  v9 = sub_185B680AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136446466;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC838, &unk_185B6B2B0);
    v14 = sub_185B67EBC();
    v16 = sub_185ACB2C4(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    if (a2)
    {
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v18;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    a3 = v10;
    *(v11 + 14) = v18;
    *v12 = v19;
    _os_log_impl(&dword_185AC1000, v8, v9, "Authentication result: %{public}s err: %{public}@", v11, 0x16u);
    sub_185AC3F6C(v12);
    MEMORY[0x1865FE2F0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865FE2F0](v13, -1, -1);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  else
  {
  }

  return a3(a1 != 0, a2);
}

uint64_t sub_185B265F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_185B67D8C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_185B2669C(void (*a1)(void, void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(0, v5);
}

uint64_t sub_185B26708()
{
  v1 = sub_185B67C9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67CDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v13 = sub_185B680FC();
  aBlock[4] = sub_185B26CC4;
  v17 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);

  sub_185B67CBC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_185B26D00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185B26D58();
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v12, v6, v14);
  _Block_release(v14);

  (*(v2 + 8))(v6, v1);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_185B26988()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_185B26AB4()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696EE80]) initWithDomain:0 authenticationContext:0];
  v12[0] = 0;
  v1 = [v0 numberForKey:14 error:v12];
  v2 = v12[0];
  v12[0] = 0;
  v3 = v2;
  v4 = [v0 numberForKey:21 error:v12];
  v5 = v4;
  v6 = v12[0];
  if (v1)
  {
    v7 = v12[0];
    [v1 doubleValue];
    if (v5)
    {
      [v5 doubleValue];

      goto LABEL_8;
    }

LABEL_7:
    goto LABEL_8;
  }

  if (v4)
  {
    v8 = v12[0];
    [v5 doubleValue];

    goto LABEL_7;
  }

  if (v3)
  {
    v10 = v12[0];
  }

  else if (v12[0])
  {
    v11 = v12[0];
  }

  else
  {
    sub_185B21B1C(2, 0xD000000000000018, 0x8000000185B77350, 53, 0xD000000000000013, 0x8000000185B77370);
  }

  swift_willThrow();

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
}

void sub_185B26CC4()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

unint64_t sub_185B26D00()
{
  result = qword_1ED6F45B0;
  if (!qword_1ED6F45B0)
  {
    sub_185B67C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F45B0);
  }

  return result;
}

unint64_t sub_185B26D58()
{
  result = qword_1ED6F45A0;
  if (!qword_1ED6F45A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CCF50, &unk_185B6C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F45A0);
  }

  return result;
}

void sub_185B26DBC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    sub_185B26DD0(a1, a2, a3, a4, a5);
  }
}

void sub_185B26DD0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }
}

id sub_185B26DF8(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

id sub_185B26EBC(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    return result;
  }

  return result;
}

id sub_185B26EC8(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_185B26EBC(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_185B26EDC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return sub_185B263C4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

id sub_185B26F04()
{
  type metadata accessor for APDaemonPersistentContainer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EA8CB960 = result;
  return result;
}

uint64_t sub_185B26F58()
{
  v0 = sub_185B6795C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B67A0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v22 - v15;
  __swift_allocate_value_buffer(v14, qword_1EA8CB938);
  v24 = __swift_project_value_buffer(v6, qword_1EA8CB938);
  if (qword_1EA8CBC08 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_1EA8CBC10);
  (*(v7 + 16))(v12, v17, v6);
  strcpy(v25, "Library");
  v25[1] = 0xE700000000000000;
  v18 = *MEMORY[0x1E6968F58];
  v23 = v1[13];
  v23(v5, v18, v0);
  v22[1] = sub_185B1CC8C();
  sub_185B679FC();
  v19 = v1[1];
  v19(v5, v0);
  v20 = *(v7 + 8);
  v20(v12, v6);
  strcpy(v25, "store.sqlite3");
  HIWORD(v25[1]) = -4864;
  v23(v5, *MEMORY[0x1E6968F68], v0);
  sub_185B679FC();
  v19(v5, v0);
  return (v20)(v16, v6);
}

void *sub_185B27254()
{
  result = sub_185B27274();
  off_1EA8CD3B8 = result;
  return result;
}

uint64_t sub_185B27274()
{
  v0 = sub_185B67A0C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD3C8, &unk_185B6E268);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v22 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_185B6E230;
  if (qword_1EA8CB930 != -1)
  {
    v21 = v9;
    swift_once();
    v9 = v21;
  }

  v23 = v9;
  v10 = v9 + v8;
  v11 = __swift_project_value_buffer(v0, qword_1EA8CB938);
  v12 = *(v2 + 16);
  v12(v10, v11, v0);
  v12(v6, v11, v0);
  v13 = sub_185B679CC();
  v15 = v14;
  v16 = *(v2 + 8);
  v16(v6, v0);
  v24 = v13;
  v25 = v15;

  MEMORY[0x1865FCF60](1818326829, 0xE400000000000000);

  sub_185B6797C();

  v12(v6, v11, v0);
  v17 = sub_185B679DC();
  v19 = v18;
  v16(v6, v0);
  v24 = v17;
  v25 = v19;

  MEMORY[0x1865FCF60](1835561773, 0xE400000000000000);

  sub_185B6797C();

  return v23;
}

uint64_t sub_185B27508(uint64_t a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = sub_185B67A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v109 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v109 - v17;
  if (qword_1EA8CB718 != -1)
  {
    v108 = v16;
    swift_once();
    v16 = v108;
  }

  v120 = v14;
  v121 = v16;
  v19 = sub_185B67B8C();
  v122 = __swift_project_value_buffer(v19, qword_1EA8D2278);
  v20 = sub_185B67B6C();
  v21 = sub_185B680AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_185AC1000, v20, v21, "creating container for daemon", v22, 2u);
    MEMORY[0x1865FE2F0](v22, -1, -1);
  }

  v23 = [objc_allocWithZone(type metadata accessor for APDaemonPersistentContainer()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_185B6C470;
  v25 = v23;
  *(v24 + 32) = sub_185B28628();
  sub_185B28C9C();
  v26 = sub_185B67F5C();

  [v25 setPersistentStoreDescriptions_];

  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = (v27 + 16);
  aBlock[4] = sub_185B28CE8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185B28470;
  aBlock[3] = &block_descriptor_15;
  v29 = _Block_copy(aBlock);

  [v25 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v29);
  swift_beginAccess();
  if (!*(v27 + 16))
  {
    goto LABEL_38;
  }

  v118 = v10;
  v114 = v27;

  v30 = sub_185B67B6C();
  v31 = sub_185B6809C();
  v32 = os_log_type_enabled(v30, v31);
  if (a1 <= 0)
  {
    if (v32)
    {
      v112 = v25;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v132 = v54;
      *v53 = 136315138;
      if (!*v28)
      {
        goto LABEL_40;
      }

      ErrorValue = swift_getErrorValue();
      v127 = &v109;
      v56 = v131;
      v57 = *(v131 - 8);
      v58 = *(v57 + 64);
      MEMORY[0x1EEE9AC00](ErrorValue, v130);
      v60 = &v109 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v57 + 16))(v60);

      v61 = sub_185B685EC();
      v63 = v62;
      (*(v57 + 8))(v60, v56);
      v64 = sub_185ACB2C4(v61, v63, &v132);

      *(v53 + 4) = v64;
      _os_log_impl(&dword_185AC1000, v30, v31, "Couldn't load persistent store after all retries: %s, marking container as unavailable. Disk is likely full.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x1865FE2F0](v54, -1, -1);
      MEMORY[0x1865FE2F0](v53, -1, -1);

      v25 = v112;
    }

    else
    {
    }

    *(v25 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) = 0;
LABEL_38:

    v106 = *MEMORY[0x1E69E9840];
    return v25;
  }

  v33 = &unk_185B6B000;
  v112 = v25;
  v111 = v2;
  v110 = a1;
  if (!v32)
  {

    v52 = v120;
LABEL_17:
    if (qword_1EA8CC3E8 != -1)
    {
      swift_once();
    }

    v65 = off_1EA8CD3B8;
    v66 = *(off_1EA8CD3B8 + 2);
    v67 = v121;
    if (v66)
    {
      v68 = objc_opt_self();
      v71 = *(v5 + 16);
      v70 = v5 + 16;
      v69 = v71;
      v72 = &v65[(*(v70 + 64) + 32) & ~*(v70 + 64)];
      v127 = *(v70 + 56);
      v123 = *MEMORY[0x1E696A250];
      v126 = (v70 - 8);
      v109 = v65;

      *&v73 = v33[361];
      v113 = v73;
      v119 = v70;
      v124 = v68;
      v125 = v71;
      while (1)
      {
        v69(v52, v72, v67);
        v76 = [v68 defaultManager];
        v77 = sub_185B6799C();
        v132 = 0;
        v78 = [v76 removeItemAtURL:v77 error:&v132];

        if (v78)
        {
          v74 = *v126;
          v75 = v132;
          v74(v52, v67);
        }

        else
        {
          v79 = v132;
          v80 = sub_185B6792C();

          swift_willThrow();
          v81 = sub_185B6791C();
          v82 = [v81 domain];
          v83 = sub_185B67E4C();
          v85 = v84;

          if (v83 == sub_185B67E4C() && v85 == v86)
          {
          }

          else
          {
            v87 = sub_185B6859C();

            if ((v87 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if ([v81 code] != 4)
          {
LABEL_30:
            v88 = v118;
            v69 = v125;
            v125(v118, v52, v67);
            v89 = v80;
            v90 = sub_185B67B6C();
            v91 = sub_185B6809C();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v115 = v91;
              v94 = v88;
              v116 = v93;
              v132 = v93;
              *v92 = v113;
              sub_185B28CF0();
              v95 = sub_185B6856C();
              v97 = v96;
              v98 = *v126;
              v117 = v81;
              v98(v94, v121);
              v99 = sub_185ACB2C4(v95, v97, &v132);

              *(v92 + 4) = v99;
              *(v92 + 12) = 2080;
              swift_getErrorValue();
              v100 = sub_185B685EC();
              v102 = sub_185ACB2C4(v100, v101, &v132);

              *(v92 + 14) = v102;
              v67 = v121;
              _os_log_impl(&dword_185AC1000, v90, v115, "Could not remove store file %s: %s", v92, 0x16u);
              v103 = v116;
              swift_arrayDestroy();
              MEMORY[0x1865FE2F0](v103, -1, -1);
              v104 = v92;
              v69 = v125;
              MEMORY[0x1865FE2F0](v104, -1, -1);

              v52 = v120;
              v98(v120, v67);
            }

            else
            {

              v105 = *v126;
              (*v126)(v88, v67);
              v52 = v120;
              v105(v120, v67);
            }

            v68 = v124;
            goto LABEL_22;
          }

          (*v126)(v52, v67);

          v68 = v124;
          v69 = v125;
        }

LABEL_22:
        v72 += v127;
        if (!--v66)
        {

          break;
        }
      }
    }

    v25 = sub_185B27508(v110 - 1);

    goto LABEL_38;
  }

  v119 = v5;
  v34 = swift_slowAlloc();
  v127 = swift_slowAlloc();
  v132 = v127;
  *v34 = 136315394;
  if (*v28)
  {
    v35 = swift_getErrorValue();
    v36 = v129;
    v37 = *(v129 - 8);
    v38 = *(v37 + 64);
    MEMORY[0x1EEE9AC00](v35, v128);
    v40 = &v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40);

    v41 = sub_185B685EC();
    v43 = v42;
    (*(v37 + 8))(v40, v36);
    v44 = sub_185ACB2C4(v41, v43, &v132);

    *(v34 + 4) = v44;
    *(v34 + 12) = 2080;
    if (qword_1EA8CB930 != -1)
    {
      swift_once();
    }

    v45 = v121;
    v46 = __swift_project_value_buffer(v121, qword_1EA8CB938);
    v5 = v119;
    (*(v119 + 16))(v18, v46, v45);
    sub_185B28CF0();
    v47 = sub_185B6856C();
    v49 = v48;
    (*(v5 + 8))(v18, v45);
    v50 = sub_185ACB2C4(v47, v49, &v132);

    *(v34 + 14) = v50;
    _os_log_impl(&dword_185AC1000, v30, v31, "Couldn't load persistent store: %s, deleting %s and retrying", v34, 0x16u);
    v51 = v127;
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v51, -1, -1);
    MEMORY[0x1865FE2F0](v34, -1, -1);

    v52 = v120;
    v33 = &unk_185B6B000;
    goto LABEL_17;
  }

  __break(1u);
LABEL_40:

  __break(1u);
  return result;
}

void sub_185B2829C(void *a1, void *a2, uint64_t a3)
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = a1;
  v8 = a2;
  v9 = sub_185B67B6C();
  v10 = sub_185B680AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2112;
    v13 = v7;
    if (a2)
    {
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v11 + 14) = v15;
    v12[1] = v16;
    _os_log_impl(&dword_185AC1000, v9, v10, "container description %@ load error %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v12, -1, -1);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  swift_beginAccess();
  v17 = *(a3 + 16);
  *(a3 + 16) = a2;
  v18 = a2;
}

void sub_185B28470(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id sub_185B285CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APDaemonPersistentContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_185B28628()
{
  v0 = sub_185B67A0C();
  v1 = *(v0 - 1);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
LABEL_20:
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = sub_185B67B6C();
  v8 = sub_185B680AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    if (qword_1EA8CB930 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v0, qword_1EA8CB938);
    (v1[2])(v5, v11, v0);
    sub_185B28CF0();
    v12 = sub_185B6856C();
    v14 = v13;
    (v1[1])(v5, v0);
    v15 = sub_185ACB2C4(v12, v14, &v38);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_185AC1000, v7, v8, "creating store description for store at %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1865FE2F0](v10, -1, -1);
    MEMORY[0x1865FE2F0](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD3D0, &qword_185B6E278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB70;
  v17 = *MEMORY[0x1E695D3F8];
  *(inited + 32) = sub_185B67E4C();
  v18 = *MEMORY[0x1E696A3A8];
  *(inited + 40) = v19;
  *(inited + 48) = v18;
  v20 = v18;
  v21 = sub_185B52D3C(inited);
  swift_setDeallocating();
  sub_185B28D48(inited + 32);
  if (qword_1EA8CB930 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v0, qword_1EA8CB938);
  (v1[2])(v5, v22, v0);
  v23 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v24 = sub_185B6799C();
  v25 = [v23 initWithURL_];

  (v1[1])(v5, v0);
  v26 = 0;
  v27 = 1 << *(v21 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v21 + 64);
  v30 = (v27 + 63) >> 6;
  v1 = &off_1E6EE9000;
  if (v29)
  {
    while (1)
    {
      v31 = v26;
LABEL_16:
      v32 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v33 = v32 | (v31 << 6);
      v34 = (*(v21 + 48) + 16 * v33);
      v35 = *v34;
      v5 = v34[1];
      v36 = *(*(v21 + 56) + 8 * v33);

      v0 = sub_185B67E1C();

      [v25 setOption:v36 forKey:v0];

      if (!v29)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v31 >= v30)
    {
      break;
    }

    v29 = *(v21 + 64 + 8 * v31);
    ++v26;
    if (v29)
    {
      v26 = v31;
      goto LABEL_16;
    }
  }

  return v25;
}

void sub_185B28A90()
{
  v0 = sub_185B67A0C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  if (qword_1EA8CB958 != -1)
  {
    swift_once();
  }

  v10 = qword_1EA8CB960;
  v11 = sub_185B67E1C();
  v12 = sub_185B67E1C();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_185B679BC();

    (*(v1 + 32))(v9, v6, v0);
    v14 = objc_allocWithZone(MEMORY[0x1E695D638]);
    v15 = sub_185B6799C();
    v16 = [v14 initWithContentsOfURL_];

    if (v16)
    {
      (*(v1 + 8))(v9, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_185B28C9C()
{
  result = qword_1EA8CB628;
  if (!qword_1EA8CB628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CB628);
  }

  return result;
}

unint64_t sub_185B28CF0()
{
  result = qword_1EA8CBFF0;
  if (!qword_1EA8CBFF0)
  {
    sub_185B67A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CBFF0);
  }

  return result;
}

uint64_t sub_185B28D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD3D8, &unk_185B6E280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B28DB0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

void sub_185B28E50(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_185B28F08()
{
  v1 = *(*(*v0 + 88) + 16);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t sub_185B28F7C()
{
  v1 = *(*(*v0 + 88) + 24);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t sub_185B28FF0()
{
  v1 = *(*(*v0 + 88) + 32);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

void sub_185B29064(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + *(*v1 + 104));
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  v7 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v8));
  sub_185B29860(v4 + v7, v27);
  os_unfair_lock_unlock((v4 + v8));
  v9 = LOBYTE(v27[0]);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1EA8D2278);
  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136446210;
    v15 = v9 == 0;
    if (v9)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2125678;
    }

    v26 = v9;
    v17 = v6;
    v18 = v5;
    v19 = a1;
    if (v15)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = sub_185ACB2C4(v16, v20, v27);
    a1 = v19;
    v5 = v18;
    v6 = v17;
    v9 = v26;

    *(v13 + 4) = v21;
    _os_log_impl(&dword_185AC1000, v11, v12, "%{public}sneed to kick off authentication for queued provider.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865FE2F0](v14, -1, -1);
    MEMORY[0x1865FE2F0](v13, -1, -1);
  }

  if (v9)
  {
    v22 = *(*v2 + 96);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v5;
    v24[3] = v6;
    v24[4] = v23;
    v25 = *(v6 + 40);

    v25(a1, sub_185B29880, v24, v5, v6);
  }
}

uint64_t sub_185B2935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_185B3CF3C(0, v9[2] + 1, 1, v9);
    v9 = result;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    result = sub_185B3CF3C((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = sub_185B298A8;
  v13[5] = v8;
  *(a1 + 8) = v9;
  LOBYTE(v13) = *a1;
  *a1 = 1;
  *a4 = (v13 & 1) == 0;
  return result;
}

uint64_t sub_185B29460(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + *(*result + 104));
    MEMORY[0x1EEE9AC00](result, v5);
    v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v6 + v8));
    sub_185B2988C(v6 + v7, &v15);
    os_unfair_lock_unlock((v6 + v8));

    v9 = *(v15 + 16);
    if (v9)
    {
      v10 = a1 & 1;
      v11 = (v15 + 40);
      do
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        v14[0] = v10;
        v15 = a2;

        v13(v14, &v15);

        v11 += 2;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_185B295E8()
{
  v1 = *(*(*v0 + 88) + 8);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t sub_185B2965C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_185B296E8()
{
  sub_185B2965C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_185B29758()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_185B29860@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_185B2935C(a1, v2[4], v2[5], a2);
}

uint64_t sub_185B29880(char a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_185B29460(a1, a2);
}

uint64_t sub_185B2988C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  *(result + 8) = MEMORY[0x1E69E7CC0];
  *result = 0;
  return result;
}

uint64_t sub_185B298A8(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

void sub_185B298D8(uint64_t a1)
{
  v50 = a1;
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v44 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v44 - v16;
  v49 = v1;
  v18 = *(**&v1[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  explicit = atomic_load_explicit(v18(v19), memory_order_acquire);

  if (explicit)
  {
    v34 = v50;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v35 = sub_185B67B8C();
    __swift_project_value_buffer(v35, qword_1ED6F5130);
    (*(v3 + 16))(v17, v34, v2);
    v36 = sub_185B67B6C();
    v37 = sub_185B6809C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v51 = v39;
      *v38 = 136315138;
      sub_185AE9C80();
      v40 = sub_185B6856C();
      v42 = v41;
      (*(v3 + 8))(v17, v2);
      v43 = sub_185ACB2C4(v40, v42, &v51);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_185AC1000, v36, v37, "invalidating already invalidated assertion with uuid: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x1865FE2F0](v39, -1, -1);
      MEMORY[0x1865FE2F0](v38, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v17, v2);
    }
  }

  else
  {
    v21 = *(v3 + 16);
    v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = v50;
    v21(v14, v50, v2);
    v21(v10, v14, v2);
    v47 = v10;
    v48 = v3;
    v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v24 = v23 + v4;
    v46 = swift_allocObject();
    v25 = v3;
    v26 = v2;
    v27 = *(v25 + 32);
    v27(v46 + v23, v14, v2);
    v28 = v45;
    v21(v45, v22, v2);
    v29 = swift_allocObject();
    v27(v29 + v23, v28, v2);
    v30 = v49;
    *(v29 + ((v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = sub_185B2B930;
    v31[4] = v46;
    v31[5] = sub_185B2B9B0;
    v31[6] = v29;
    v32 = v30;

    v33 = v47;
    sub_185B29D68(v47, sub_185AE8710, v31);

    (*(v48 + 8))(v33, v26);
  }
}

void sub_185B29D68(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v14 = sub_185B0FA08;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B6657C;
  v13 = &block_descriptor_16;
  v6 = _Block_copy(&v10);

  v7 = APGetAsyncGuardProxy(v6);
  _Block_release(v6);
  v8 = sub_185B67ABC();
  v14 = a2;
  v15 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B2AF84;
  v13 = &block_descriptor_13_0;
  v9 = _Block_copy(&v10);

  [v7 endAuthTimeoutExtensionTransactionWithUUID:v8 completion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_185B29EF0(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v47 - v14);
  if (!a1)
  {
    if (qword_1ED6F4CB0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v16 = a1;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v17 = sub_185B67B8C();
  __swift_project_value_buffer(v17, qword_1ED6F5130);
  (*(v7 + 16))(v12, a2, v6);
  v18 = a1;
  v15 = sub_185B67B6C();
  v19 = sub_185B6808C();

  if (os_log_type_enabled(v15, v19))
  {
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50[0] = v49;
    *v20 = 136315394;
    sub_185AE9C80();
    v21 = sub_185B6856C();
    v23 = v22;
    v24 = *(v7 + 8);
    v7 += 8;
    v24(v12, v6);
    v25 = sub_185ACB2C4(v21, v23, v50);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    v26 = a1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v27;
    v28 = v48;
    *v48 = v27;
    _os_log_impl(&dword_185AC1000, v15, v19, "could not invalidate auth assertion %s: %@", v20, 0x16u);
    sub_185AC3F6C(v28);
    MEMORY[0x1865FE2F0](v28, -1, -1);
    v29 = v49;
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x1865FE2F0](v29, -1, -1);
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  else
  {

    v40 = *(v7 + 8);
    v7 += 8;
    v40(v12, v6);
  }

  while (1)
  {
    v42 = OBJC_IVAR___APAuthAssertion_observers;
    result = swift_beginAccess();
    a2 = *(a3 + v42);
    if (a2 >> 62)
    {
      break;
    }

    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }

LABEL_13:
    if (v6 >= 1)
    {

      v44 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1865FD3E0](v44, a2);
          if (!a1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v46 = *(a2 + 8 * v44 + 32);
          swift_unknownObjectRetain();
          if (!a1)
          {
LABEL_21:
            v45 = 0;
            goto LABEL_16;
          }
        }

        v45 = sub_185B6791C();
LABEL_16:
        ++v44;
        [v46 assertion:a3 didInvalidateWithError:v45];
        swift_unknownObjectRelease();

        if (v6 == v44)
        {
        }
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_7:
    v30 = sub_185B67B8C();
    __swift_project_value_buffer(v30, qword_1ED6F5130);
    (*(v7 + 16))(v15, a2, v6);
    v31 = sub_185B67B6C();
    v32 = sub_185B680AC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50[0] = v49;
      *v33 = 136315138;
      sub_185AE9C80();
      v34 = sub_185B6856C();
      v36 = v35;
      v37 = *(v7 + 8);
      v7 += 8;
      v37(v15, v6);
      v38 = sub_185ACB2C4(v34, v36, v50);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_185AC1000, v31, v32, "invalidated auth assertion %s", v33, 0xCu);
      v39 = v49;
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x1865FE2F0](v39, -1, -1);
      MEMORY[0x1865FE2F0](v33, -1, -1);
    }

    else
    {

      v41 = *(v7 + 8);
      v7 += 8;
      v41(v15, v6);
    }
  }

  result = sub_185B6844C();
  v6 = result;
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_185B2A4EC(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v61 = sub_185B67AFC();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v61, v12);
  v14 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v56 - v16;
  if (a1)
  {
    v18 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v19 = sub_185B67B8C();
    __swift_project_value_buffer(v19, qword_1ED6F5130);
    v20 = v61;
    (*(v10 + 16))(v17, a2, v61);
    v21 = a1;
    v22 = sub_185B67B6C();
    v23 = sub_185B6808C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v60 = a3;
      v58 = v25;
      aBlock = v25;
      *v24 = 136315394;
      sub_185AE9C80();
      v26 = sub_185B6856C();
      v28 = v27;
      (*(v10 + 8))(v17, v20);
      v29 = sub_185ACB2C4(v26, v28, &aBlock);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v31;
      v32 = v57;
      *v57 = v31;
      _os_log_impl(&dword_185AC1000, v22, v23, "failed to acquire auth assertion %s: %@", v24, 0x16u);
      sub_185AC3F6C(v32);
      MEMORY[0x1865FE2F0](v32, -1, -1);
      v33 = v58;
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      a3 = v60;
      MEMORY[0x1865FE2F0](v33, -1, -1);
      MEMORY[0x1865FE2F0](v24, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v17, v20);
    }

    v55 = a1;
    a3(0, a1);
  }

  else
  {
    v34 = sub_185B67ABC();
    v35 = [objc_allocWithZone(APAuthAssertion) initWithSubject:a5 uuid:v34];

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v36 = sub_185B67B8C();
    __swift_project_value_buffer(v36, qword_1ED6F5130);
    v37 = v35;
    v38 = sub_185B67B6C();
    v39 = sub_185B680AC();

    v40 = os_log_type_enabled(v38, v39);
    v59 = a4;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v37;
      *v42 = v37;
      v43 = v37;
      _os_log_impl(&dword_185AC1000, v38, v39, "acquired auth assertion %@", v41, 0xCu);
      sub_185AC3F6C(v42);
      MEMORY[0x1865FE2F0](v42, -1, -1);
      v44 = v41;
      a4 = v59;
      MEMORY[0x1865FE2F0](v44, -1, -1);
    }

    v45 = swift_allocObject();
    *(v45 + 16) = a3;
    *(v45 + 24) = a4;
    v66 = sub_185B06F74;
    v67 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v60 = a3;
    v64 = sub_185B6657C;
    v65 = &block_descriptor_34_0;
    v46 = _Block_copy(&aBlock);

    v58 = APGetAsyncGuardProxy(v46);
    _Block_release(v46);
    v47 = sub_185B67ABC();
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = v37;
    v50 = v61;
    (*(v10 + 16))(v14, a2, v61);
    v51 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v48;
    (*(v10 + 32))(v52 + v51, v14, v50);
    *(v52 + ((v11 + v51 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
    v66 = sub_185B2C068;
    v67 = v52;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_185B2AF84;
    v65 = &block_descriptor_43_0;
    v53 = _Block_copy(&aBlock);
    v54 = v49;

    [v58 monitorTransactionWithUUID:v47 invalidationBlock:v53];
    _Block_release(v53);
    swift_unknownObjectRelease();

    v60(v49, 0);
  }
}

void sub_185B2AB5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v15 = sub_185B67B8C();
  __swift_project_value_buffer(v15, qword_1ED6F5130);
  (*(v8 + 16))(v12, a3, v7);
  v16 = a1;
  v17 = sub_185B67B6C();
  v18 = sub_185B680AC();

  if (os_log_type_enabled(v17, v18))
  {
    v41 = v18;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v19 = 136315394;
    sub_185AE9C80();
    v20 = sub_185B6856C();
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    v23 = sub_185ACB2C4(v20, v22, &v42);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2112;
    if (a1)
    {
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v27 = v41;
    *(v19 + 14) = v25;
    v28 = v39;
    *v39 = v26;
    _os_log_impl(&dword_185AC1000, v17, v27, "auth assertion: %s was invalidated with error: %@", v19, 0x16u);
    sub_185AC3F6C(v28);
    MEMORY[0x1865FE2F0](v28, -1, -1);
    v29 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x1865FE2F0](v29, -1, -1);
    MEMORY[0x1865FE2F0](v19, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v30 = *(**&v14[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  atomic_store(1u, v30(v31));

  v32 = OBJC_IVAR___APAuthAssertion_observers;
  swift_beginAccess();
  v33 = *&v14[v32];
  if (v33 >> 62)
  {
    v34 = sub_185B6844C();
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_23:

    return;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v34 >= 1)
  {

    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1865FD3E0](v35, v33);
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v37 = *(v33 + 8 * v35 + 32);
        swift_unknownObjectRetain();
        if (!a4)
        {
LABEL_20:
          v36 = 0;
          goto LABEL_15;
        }
      }

      v36 = sub_185B6791C();
LABEL_15:
      ++v35;
      [v37 assertion:v14 didInvalidateWithError:v36];
      swift_unknownObjectRelease();

      if (v34 == v35)
      {

        return;
      }
    }
  }

  __break(1u);
}

void sub_185B2AF84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_185B2B07C()
{
  v1 = v0;
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(**&v0[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  LOBYTE(v8) = atomic_load_explicit(v8(v9), memory_order_acquire);

  if ((v8 & 1) == 0)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v10 = sub_185B67B8C();
    __swift_project_value_buffer(v10, qword_1ED6F5130);
    v11 = v0;
    v12 = sub_185B67B6C();
    v13 = sub_185B6809C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_185AC1000, v12, v13, "deallocating valid auth assertion %@!", v14, 0xCu);
      sub_185AC3F6C(v15);
      MEMORY[0x1865FE2F0](v15, -1, -1);
      MEMORY[0x1865FE2F0](v14, -1, -1);
    }

    v17 = *&v11[OBJC_IVAR___APAuthAssertion_uuid];
    sub_185B67ADC();
    sub_185B298D8(v7);
    (*(v3 + 8))(v7, v2);
  }

  v19.receiver = v1;
  v19.super_class = APAuthAssertion;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

unint64_t APAuthAssertion.description.getter()
{
  v1 = v0;
  sub_185B6836C();

  v2 = [*(v0 + OBJC_IVAR___APAuthAssertion_subject) description];
  v3 = sub_185B67E4C();
  v5 = v4;

  MEMORY[0x1865FCF60](v3, v5);

  MEMORY[0x1865FCF60](0x203A6469757520, 0xE700000000000000);
  v6 = [*(v1 + OBJC_IVAR___APAuthAssertion_uuid) description];
  v7 = sub_185B67E4C();
  v9 = v8;

  MEMORY[0x1865FCF60](v7, v9);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_185B2B504()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v7 = sub_185B67B8C();
  __swift_project_value_buffer(v7, qword_1ED6F5130);
  v8 = v0;
  v9 = sub_185B67B6C();
  v10 = sub_185B680AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_185AC1000, v9, v10, "invalidating %@", v11, 0xCu);
    sub_185AC3F6C(v12);
    MEMORY[0x1865FE2F0](v12, -1, -1);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  v14 = *&v8[OBJC_IVAR___APAuthAssertion_uuid];
  sub_185B67ADC();
  sub_185B298D8(v6);
  (*(v2 + 8))(v6, v1);
  v15 = *(**&v8[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  atomic_store(1u, v15(v16));
}

void __swiftcall APAuthAssertion.init()(APAuthAssertion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for APAuthAssertion()
{
  result = qword_1EA8CD400;
  if (!qword_1EA8CD400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CD400);
  }

  return result;
}

void sub_185B2B930(uint64_t (*a1)(), uint64_t a2)
{
  v5 = *(sub_185B67AFC() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_185B29D68(v6, a1, a2);
}

uint64_t sub_185B2B9B0(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_185B29EF0(a1, v1 + v4, v5);
}

uint64_t sub_185B2BA4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v52 - v14;
  v59 = v16;
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = &v52 - v18;
  sub_185B67AEC();
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v20 = sub_185B67B8C();
  __swift_project_value_buffer(v20, qword_1ED6F5130);
  v56 = v7[2];
  v57 = v7 + 2;
  v56(v15, v19, v6);
  v21 = a1;
  v22 = sub_185B67B6C();
  v23 = sub_185B680AC();

  v24 = os_log_type_enabled(v22, v23);
  v61 = v19;
  v62 = v7;
  v63 = a2;
  v64 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v6;
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v25 = 138412546;
    *(v25 + 4) = v21;
    *v26 = v21;
    *(v25 + 12) = 2080;
    sub_185AE9C80();
    v29 = v21;
    v55 = v21;
    v30 = sub_185B6856C();
    v32 = v31;
    v58 = v7[1];
    v58(v15, v27);
    v33 = sub_185ACB2C4(v30, v32, &aBlock);
    v34 = v55;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_185AC1000, v22, v23, "Acquiring auth assertion for %@ uuid %s", v25, 0x16u);
    sub_185AC3F6C(v26);
    MEMORY[0x1865FE2F0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v35 = v28;
    v6 = v27;
    a2 = v63;
    MEMORY[0x1865FE2F0](v35, -1, -1);
    v36 = v25;
    a3 = v64;
    MEMORY[0x1865FE2F0](v36, -1, -1);
  }

  else
  {

    v58 = v7[1];
    v58(v15, v6);
    v34 = v21;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  *(v37 + 24) = a3;
  v69 = sub_185B126F8;
  v70 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v54 = &v67;
  v67 = sub_185B6657C;
  v68 = &block_descriptor_22_2;
  v38 = _Block_copy(&aBlock);

  v55 = APGetAsyncGuardProxy(v38);
  _Block_release(v38);
  v39 = [v34 effectiveBundleIdentifier];
  if (!v39)
  {
    sub_185B67E4C();
    v39 = sub_185B67E1C();
  }

  v40 = v61;
  v53 = sub_185B67ABC();
  v41 = v60;
  v56(v60, v40, v6);
  v42 = v62;
  v43 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v44 = (v59 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (v42[4])(v45 + v43, v41, v6);
  v46 = (v45 + v44);
  v47 = v64;
  *v46 = v63;
  v46[1] = v47;
  *(v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v69 = sub_185B2BFBC;
  v70 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_185B2AF84;
  v68 = &block_descriptor_28_2;
  v48 = _Block_copy(&aBlock);
  v49 = v34;

  v50 = v53;
  [v55 beginAuthTimeoutExtensionTransactionForBundle:v39 transactionUUID:v53 completion:v48];
  _Block_release(v48);
  swift_unknownObjectRelease();

  return (v58)(v40, v6);
}

void sub_185B2BFBC(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_185B2A4EC(a1, v1 + v4, v9, v10, v8);
}

void sub_185B2C068(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_185B2AB5C(a1, v5, v1 + v4, v6);
}

uint64_t sub_185B2C170(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_185B6829C();
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

uint64_t *sub_185B2C228()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  v5 = sub_185B6829C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  return v0;
}

uint64_t sub_185B2C2C4()
{
  sub_185B2C228();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_185B2C334(void *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = sub_185B67C9C();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_185B67CDC();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_185B6815C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD410, &qword_185B6E468);
  v21 = swift_allocObject();
  *(v21 + 28) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v3 + v20) = v21;
  sub_185B2CD3C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_185B2CD88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD418, &unk_185B6E470);
  sub_185B2CDE0();
  sub_185B682CC();
  v22 = sub_185B6818C();
  (*(v15 + 8))(v19, v14);
  *(v3 + 16) = v22;
  v23 = OBJC_IVAR____TtC13AppProtection15SaturatingTimer_duration;
  v24 = sub_185B67C8C();
  v25 = *(v24 - 8);
  v26 = v32;
  (*(v25 + 16))(v3 + v23, v32, v24);
  ObjectType = swift_getObjectType();
  v28 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_185B2CE44;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_17;
  v29 = _Block_copy(aBlock);

  sub_185AF8638();
  sub_185AF863C(ObjectType);
  sub_185B681AC();
  _Block_release(v29);

  (*(v25 + 8))(v26, v24);
  (*(v35 + 8))(v8, v36);
  (*(v33 + 8))(v13, v34);

  return v3;
}

void sub_185B2C740()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state);
    os_unfair_lock_lock((v1 + 28));
    *(v1 + 24) = 0;
    v2 = *(v1 + 16);
    _Block_copy(v2);
    os_unfair_lock_unlock((v1 + 28));
    if (v2)
    {
      v2[2](v2);

      _Block_release(v2);
    }

    else
    {
    }
  }
}

void sub_185B2C7F0(const void **a1, void *aBlock)
{
  v4 = *a1;
  _Block_copy(aBlock);
  _Block_release(v4);
  *a1 = aBlock;
}

uint64_t sub_185B2C83C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_185B67C8C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v27 - v11;
  v13 = sub_185B67CFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = v27 - v22;
  v29 = a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    v24 = v28;
    v27[1] = *(v28 + 16);
    v27[0] = swift_getObjectType();
    sub_185B67CEC();
    MEMORY[0x1865FCDA0](v19, v24 + OBJC_IVAR____TtC13AppProtection15SaturatingTimer_duration);
    v28 = *(v14 + 8);
    (v28)(v19, v13);
    v25 = v4[13];
    v25(v12, *MEMORY[0x1E69E7F40], v3);
    *v9 = 0;
    v25(v9, *MEMORY[0x1E69E7F28], v3);
    MEMORY[0x1865FD280](v23, v12, v9, v27[0]);
    v26 = v4[1];
    v26(v9, v3);
    v26(v12, v3);
    result = (v28)(v23, v13);
    *(v29 + 8) = 1;
  }

  return result;
}

uint64_t sub_185B2CACC()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13AppProtection15SaturatingTimer_duration;
  v3 = sub_185B67C8C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t type metadata accessor for SaturatingTimer()
{
  result = qword_1EA8CC058;
  if (!qword_1EA8CC058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_185B2CBD4()
{
  result = sub_185B67C8C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_185B2CC7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t sub_185B2CCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_185B2CD3C()
{
  result = qword_1EA8CB640;
  if (!qword_1EA8CB640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CB640);
  }

  return result;
}

unint64_t sub_185B2CD88()
{
  result = qword_1EA8CB650;
  if (!qword_1EA8CB650)
  {
    sub_185B6815C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB650);
  }

  return result;
}

unint64_t sub_185B2CDE0()
{
  result = qword_1EA8CB6A0[0];
  if (!qword_1EA8CB6A0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD418, &unk_185B6E470);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA8CB6A0);
  }

  return result;
}

void sub_185B2CE74(void *a1, const char *a2)
{
  if (a1)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1ED6F5130);
    v5 = a1;
    oslog = sub_185B67B6C();
    v6 = sub_185B6808C();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_185AC1000, oslog, v6, a2, v7, 0xCu);
      sub_185AC3F6C(v8);
      MEMORY[0x1865FE2F0](v8, -1, -1);
      MEMORY[0x1865FE2F0](v7, -1, -1);
    }
  }
}

void *sub_185B2D0B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_185B2D134(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_185B2D1BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_185B2D310(void *result, void *a2, uint64_t a3, uint64_t a4)
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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_185B2D468(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 16);
    if (v11)
    {
      v16 = a2;
      aBlock[7] = v4;
      v12 = sub_185B2D0B0(v11, 0);
      v13 = sub_185B2D310(aBlock, v12 + 4, v11, a1);

      sub_185AF36FC();
      if (v13 != v11)
      {
        __break(1u);
        return;
      }

      a2 = v16;
    }

    v14 = sub_185B67F5C();

    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185B2AF84;
    aBlock[3] = a3;
    v15 = _Block_copy(aBlock);
    [v10 *a4];
    _Block_release(v15);
  }
}

void sub_185B2D604(uint64_t a1, uint64_t a2, char a3, const char *a4, void (*a5)(void *, BOOL))
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v8 = sub_185B67B8C();
  __swift_project_value_buffer(v8, qword_1ED6F5130);
  v9 = sub_185B67B6C();
  v10 = sub_185B6807C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a3 & 1;
    _os_log_impl(&dword_185AC1000, v9, v10, a4, v11, 8u);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  v12 = sub_185B67E1C();
  a5(v12, (a3 & 1) == 0);
}

uint64_t sub_185B2D748(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD420, &unk_185B6E520);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = (v6 + 24);
  *(v6 + 16) = 0;
  v8 = (v6 + 16);
  *(v3 + 16) = a1;
  *(v3 + 24) = v6;

  v9 = a1;
  os_unfair_lock_lock(v7);
  sub_185B2D9AC(v8);
  os_unfair_lock_unlock(v7);

  return v3;
}

void sub_185B2D80C(id *a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = type metadata accessor for NotificationReceiverObjCShim();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v8 = sub_185B2D9C8;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  *a1 = v9;
  v10 = sub_185B67E1C();
  [a3 addObserver:v9 selector:sel_receivedNotification_ name:v10 object:0];
}

uint64_t sub_185B2D918(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B2D9D0(a1);
  }

  return result;
}

void sub_185B2D9D0(uint64_t a1)
{
  v2 = sub_185B6781C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_185B677FC();
  v9 = sub_185B67E1C();
  v10 = sub_185B67E4C();
  v12 = v11;
  v13 = sub_185B67E4C();
  v15 = v14;

  if (v10 == v13 && v12 == v15)
  {
  }

  else
  {
    v17 = sub_185B6859C();

    if ((v17 & 1) == 0)
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v19 = sub_185B67B8C();
      __swift_project_value_buffer(v19, qword_1EA8D2278);
      (*(v3 + 16))(v7, a1, v2);
      v20 = sub_185B67B6C();
      v21 = sub_185B680AC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136315138;
        sub_185B2DCE0();
        v24 = sub_185B6856C();
        v26 = v25;
        (*(v3 + 8))(v7, v2);
        v27 = sub_185ACB2C4(v24, v26, &v29);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_185AC1000, v20, v21, "LanguageChangeManager: unknown notification: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x1865FE2F0](v23, -1, -1);
        MEMORY[0x1865FE2F0](v22, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v7, v2);
      }

      return;
    }
  }

  MEMORY[0x1EEE75030](v18);
}

unint64_t sub_185B2DCE0()
{
  result = qword_1EA8CC000;
  if (!qword_1EA8CC000)
  {
    sub_185B6781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CC000);
  }

  return result;
}

void *sub_185B2DD48(void *a1)
{
  v22 = a1;
  v2 = sub_185B680EC();
  v20 = *(v2 - 8);
  v21 = v2;
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B680DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = sub_185B67CDC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCC28, &qword_185B6BBC8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v1[3] = sub_185B67C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD428, &unk_185B6E680);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  v1[4] = v15;
  sub_185AC7294();
  sub_185B67CBC();
  v25 = MEMORY[0x1E69E7CC0];
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC7370(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v20 + 104))(v19, *MEMORY[0x1E69E8090], v21);
  v1[2] = sub_185B6813C();
  v16 = v1[4];
  v17 = v22;
  v23 = v1;
  v24 = v22;

  os_unfair_lock_lock((v16 + 24));
  sub_185B2E544((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));

  return v1;
}

void sub_185B2E024(id *a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = type metadata accessor for NotificationReceiverObjCShim();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v8 = sub_185B2E560;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  *a1 = v9;
  v10 = sub_185B67E1C();
  [a3 addObserver:v9 selector:sel_receivedNotification_ name:v10 object:0];
}

uint64_t sub_185B2E130()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B2E188();
  }

  return result;
}

uint64_t sub_185B2E188()
{
  v1 = v0;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1EA8D2278);
  v3 = sub_185B67B6C();
  v4 = sub_185B680AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_185AC1000, v3, v4, "received accountsd event", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_185B2E504;
  *(v7 + 24) = v1;
  v10[4] = sub_185AE7934;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_185AD94F4;
  v10[3] = &block_descriptor_19;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B2E374()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for AccountsEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_185B2E504()
{
  v1 = *(v0 + 24);
  sub_185AD06D8();
  return sub_185B67C2C();
}

uint64_t sub_185B2E568(void *a1)
{
  v2 = a1[10];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v23 = *(result - 8) + 64;
    v5 = a1[11];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v24 = *(result - 8) + 64;
      v7 = a1[12];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v25 = *(result - 8) + 64;
        v9 = a1[13];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v26 = *(result - 8) + 64;
          v11 = a1[14];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v27 = *(result - 8) + 64;
            v13 = a1[15];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v28 = *(result - 8) + 64;
              v15 = a1[16];
              result = swift_checkMetadataState();
              if (v16 <= 0x3F)
              {
                v29 = *(result - 8) + 64;
                v17 = a1[17];
                result = swift_checkMetadataState();
                if (v18 <= 0x3F)
                {
                  v30 = *(result - 8) + 64;
                  v19 = a1[19];
                  result = swift_checkMetadataState();
                  if (v20 <= 0x3F)
                  {
                    v31 = *(result - 8) + 64;
                    v21 = a1[18];
                    result = sub_185B6829C();
                    if (v22 <= 0x3F)
                    {
                      v32 = *(result - 8) + 64;
                      return swift_initClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_185B2E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_185B52078(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_185AC9F40(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_185B50F84();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_185B3D81C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_185B2E978(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD498, &qword_185B6E820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AuthAssertion();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_185ACF5CC(a1, &unk_1EA8CD498, &qword_185B6E820);
    sub_185B3E24C(a2, v9);
    v16 = sub_185B67AFC();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_185ACF5CC(v9, &unk_1EA8CD498, &qword_185B6E820);
  }

  else
  {
    sub_185B40E60(a1, v14, type metadata accessor for AuthAssertion);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_185B524DC(v14, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_185B67AFC();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

unint64_t sub_185B2EB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_185B528A0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_185AF6F20(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_185B51940();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_185B3E030(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

id sub_185B2EC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v9 error:v10];
  if (v4)
  {
    v5 = v10[0];
  }

  else
  {
    v6 = v10[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_185B2ED60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_185AF6E20(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_185B516C0();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = sub_185B67AFC();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_185B3DD10(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_185B2EE3C(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_185B3C668, v5);
}

uint64_t sub_185B2EED0(uint64_t a1, void (*a2)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    a2();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = *(*v9 + 112);
    swift_beginAccess();
    sub_185B40A44(v7, v9 + v11);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_185B2F014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_185B67D3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 24);
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v9);
  v16 = v15;
  LOBYTE(v15) = sub_185B67D5C();
  result = (*(v10 + 8))(v14, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v2 + 32))
  {
LABEL_5:
    v19 = *(*v2 + 112);
    swift_beginAccess();
    sub_185B40B80(v2 + v19, v8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
    result = (*(*(v20 - 8) + 48))(v8, 1, v20);
    if (result != 1)
    {
      return sub_185B40C1C(v8, a1, &unk_1EA8CD2D8, &qword_185B6D8C0);
    }

    goto LABEL_8;
  }

  if (*(v2 + 16))
  {
    v18 = *(v2 + 16);

    sub_185B67D0C();

    *(v2 + 32) = 1;
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_185B2F250()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7542746567726174;
  }
}

uint64_t sub_185B2F2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_185B4127C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_185B2F2F8(uint64_t a1)
{
  v2 = sub_185B3C248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B2F334(uint64_t a1)
{
  v2 = sub_185B3C248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B2F370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_185B67A8C();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD438, &qword_185B6E7E0);
  v28 = *(v30 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for AuthAssertion();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B3C248();
  sub_185B686EC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = a1;
  v18 = v16;
  v20 = v28;
  v19 = v29;
  v33 = 0;
  v21 = v30;
  *v18 = sub_185B6849C();
  *(v18 + 8) = v22;
  v24[1] = v22;
  v32 = 1;
  *(v18 + 16) = sub_185B684DC();
  v31 = 2;
  sub_185B41234(&unk_1EA8CD448, MEMORY[0x1E6969530]);
  sub_185B684BC();
  (*(v20 + 8))(v11, v21);
  (*(v26 + 32))(v18 + *(v12 + 24), v7, v19);
  sub_185B40B18(v18, v27, type metadata accessor for AuthAssertion);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return sub_185B40AB8(v18, type metadata accessor for AuthAssertion);
}

uint64_t sub_185B2F6DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD4C0, &qword_185B6E840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B3C248();
  sub_185B686FC();
  v12 = *v3;
  v13 = v3[1];
  v17[15] = 0;
  sub_185B684EC();
  if (!v2)
  {
    v15 = *(v3 + 4);
    v17[14] = 1;
    sub_185B6853C();
    v16 = *(type metadata accessor for AuthAssertion() + 24);
    v17[13] = 2;
    sub_185B67A8C();
    sub_185B41234(&qword_1EA8CD9C0, MEMORY[0x1E6969530]);
    sub_185B6851C();
  }

  return (*(v6 + 8))(v10, v5);
}

double sub_185B2F928()
{
  has_internal_content = os_variant_has_internal_content();
  v2 = 3.0;
  if (has_internal_content)
  {
    if (qword_1EA8CBFD0 != -1)
    {
      has_internal_content = swift_once();
    }

    v3 = *(*(qword_1EA8D2330 + 16) + 104);
    MEMORY[0x1EEE9AC00](has_internal_content, v1);

    os_unfair_lock_lock(v3 + 4);
    sub_185B40FE4(&v5);
    os_unfair_lock_unlock(v3 + 4);

    v2 = v5;
  }

  return v2;
}

uint64_t sub_185B2FA38@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 336));
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD4B0, &qword_185B6BF08);
  a1[4] = sub_185AC7370(&unk_1EA8CB700, &unk_1EA8CD4B0, &qword_185B6BF08);
  *a1 = v3;
}

id sub_185B2FADC(void *a1, uint64_t a2)
{
  result = [a1 raw_accessor_type];
  if (result == 1)
  {
    result = [a1 accessed_bundle_id];
    if (result)
    {
      v5 = result;
      v6 = sub_185B67E4C();
      v8 = v7;

      v9 = sub_185AC3A7C(v6, v8, a2);

      if (v9)
      {
        result = [a1 accessor_bundle_id];
        if (result)
        {
          v10 = result;
          v11 = sub_185B67E4C();
          v13 = v12;

          sub_185AC407C(&v14, v11, v13);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_185B2FBCC(void *a1, uint64_t a2)
{
  result = [a1 raw_accessor_type];
  if (result == 2)
  {
    result = [a1 accessed_bundle_id];
    if (result)
    {
      v5 = result;
      v6 = sub_185B67E4C();
      v8 = v7;

      v9 = sub_185AC3A7C(v6, v8, a2);

      if (v9)
      {
        result = [a1 accessor_bundle_id];
        if (result)
        {
          v10 = result;
          v11 = sub_185B67E4C();
          v13 = v12;

          sub_185AC407C(&v14, v11, v13);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_185B2FCBC(uint64_t a1, uint64_t a2, int a3)
{
  *&v102 = a2;
  v4 = v3;
  v100 = a3;
  v108 = a1;
  v99 = *v3;
  v5 = v99;
  v6 = v99[10];
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v95 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v96 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v88 - v15;
  sub_185B308C8();
  v18 = v7 + 2;
  v17 = v7[2];
  v97 = *(*v3 + 256);
  v98 = v17;
  v17(v16, &v3[v97], v6);
  v19 = v5[20];
  v20 = v101;
  LODWORD(v101) = (*(v19 + 8))(v108, v102, v6, v19);
  v23 = v7[1];
  v22 = v7 + 1;
  v21 = v23;
  v23(v16, v6);
  if (v20)
  {
    return;
  }

  v89 = v21;
  v90 = v19;
  v91 = v18;
  v92 = v22;
  v93 = v6;
  v94 = 0;
  v24 = *(*v3 + 328);
  v25 = v101;
  v26 = v100 & 1;
  v27 = v108;
  v28 = v102;
  if ((*(v99[29] + 40))(v100 & 1, v108, v102, v101 & 0x10101, v99[19]))
  {
LABEL_19:
    swift_willThrow();
    return;
  }

  if ((v25 & 0x100) != 0)
  {
    sub_185AD0148(3uLL, 0xD000000000000026, 0x8000000185B77BF0, 215, 0xD000000000000021, 0x8000000185B77C20);
    goto LABEL_19;
  }

  LODWORD(v101) = v26;
  v29 = v96;
  v30 = v93;
  v98(v96, &v3[v97], v93);
  v31 = v27;
  v32 = *(v90 + 16);
  v33 = v94;
  v34 = v32(v31, v28, v100 & 1, v30);
  v35 = v29;
  v36 = v89;
  v89(v35, v30);
  v94 = v33;
  if (v33)
  {
    return;
  }

  v96 = v4;
  if ((v34 & 1) == 0)
  {
    return;
  }

  v37 = v108;
  v38 = sub_185B67E1C();
  v39 = _AXSClarityBundleIdentifierForStandardBundleIdentifier();

  if (!v39)
  {
    goto LABEL_10;
  }

  v42 = sub_185B67E4C();
  v44 = v43;

  if (v42 == v37 && v44 == v102)
  {

LABEL_10:
    LOBYTE(v45) = v100;
LABEL_11:
    v46 = v94;
    goto LABEL_12;
  }

  v75 = sub_185B6859C();
  LOBYTE(v45) = v100;
  if (v75)
  {

    goto LABEL_11;
  }

  v76 = v95;
  v77 = v93;
  v98(v95, &v96[v97], v93);
  v98 = v44;
  v78 = v94;
  (v32)(v42, v44, v45 & 1, v77, v90);
  v46 = v78;
  if (v78)
  {
    v36(v76, v77);

    v48 = v102;
    if (qword_1ED6F4CB0 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  v36(v76, v77);

  while (1)
  {
LABEL_12:
    if (v45)
    {
      v47 = v102;
      if (qword_1EA8CBFD0 != -1)
      {
        v40 = swift_once();
      }

      v48 = &v88;
      v45 = *(qword_1EA8D2330 + 48);
      v49 = *(v45 + 104);
      MEMORY[0x1EEE9AC00](v40, v41);
      *(&v88 - 2) = sub_185B42CBC;
      *(&v88 - 1) = v45;

      os_unfair_lock_lock(v49 + 4);
      sub_185B42CD4(v107);
      if (v46)
      {
        goto LABEL_44;
      }

      os_unfair_lock_unlock(v49 + 4);
      v50 = *&v107[0];

      v53 = v50 + 1;
      if (!__OFADD__(v50, 1))
      {
        break;
      }

      __break(1u);
      goto LABEL_42;
    }

    v47 = v102;
    if (qword_1EA8CBFD0 != -1)
    {
      v40 = swift_once();
    }

    v48 = &v88;
    v45 = *(qword_1EA8D2330 + 64);
    v49 = *(v45 + 104);
    MEMORY[0x1EEE9AC00](v40, v41);
    *(&v88 - 2) = sub_185B42CBC;
    *(&v88 - 1) = v45;

    os_unfair_lock_lock(v49 + 4);
    sub_185B42CD4(v107);
    if (v46)
    {
LABEL_44:
      os_unfair_lock_unlock(v49 + 4);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock(v49 + 4);
    v54 = *&v107[0];

    v53 = v54 + 1;
    if (!__OFADD__(v54, 1))
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_36:
    v79 = sub_185B67B8C();
    __swift_project_value_buffer(v79, qword_1ED6F5130);

    v80 = v46;
    v81 = sub_185B67B6C();
    v82 = sub_185B680AC();

    if (os_log_type_enabled(v81, v82))
    {
      v45 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v107[0] = v84;
      *v45 = 136315394;
      *(v45 + 4) = sub_185ACB2C4(v108, v48, v107);
      *(v45 + 12) = 2112;
      v85 = v46;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v86;
      *v83 = v86;
      _os_log_impl(&dword_185AC1000, v81, v82, "Could not set clarity version of %s error: %@", v45, 0x16u);
      sub_185ACF5CC(v83, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v83, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      MEMORY[0x1865FE2F0](v84, -1, -1);
      v87 = v45;
      LOBYTE(v45) = v100;
      MEMORY[0x1865FE2F0](v87, -1, -1);
    }

    else
    {
    }

    v46 = 0;
  }

  *&v107[0] = v53;
  v55 = *(v45 + 104);
  v56 = MEMORY[0x1EEE9AC00](v51, v52);
  *(&v88 - 2) = v45;
  *(&v88 - 1) = v107;
  MEMORY[0x1EEE9AC00](v56, v57);
  *(&v88 - 2) = sub_185B42D34;
  *(&v88 - 1) = v58;

  os_unfair_lock_lock(v55 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v55 + 4);

  v59 = *&v96[*(*v96 + 336)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
  inited = swift_initStackObject();
  v102 = xmmword_185B6BB70;
  *(inited + 16) = xmmword_185B6BB70;
  v61 = v108;
  *(inited + 32) = v108;
  *(inited + 40) = v47;

  v62 = sub_185AD0524(inited);
  swift_setDeallocating();
  sub_185ADF744(inited + 32);
  if (v100)
  {
    v63 = swift_initStackObject();
    *(v63 + 16) = v102;
    *(v63 + 32) = v61;
    *(v63 + 40) = v47;

    v64 = sub_185AD0524(v63);
    swift_setDeallocating();
    sub_185ADF744(v63 + 32);
    v65 = 0;
  }

  else
  {
    v66 = swift_initStackObject();
    *(v66 + 16) = v102;
    *(v66 + 32) = v61;
    *(v66 + 40) = v47;

    v65 = sub_185AD0524(v66);
    swift_setDeallocating();
    sub_185ADF744(v66 + 32);
    v64 = 0;
  }

  LODWORD(v103) = 2;
  *(&v103 + 1) = v62;
  v104 = 0uLL;
  *&v105 = v64;
  v106 = 0uLL;
  *(&v105 + 1) = v65;
  sub_185B67C2C();
  v107[0] = v103;
  v107[1] = v104;
  v107[2] = v105;
  v107[3] = v106;
  sub_185ADF798(v107);
  if (v100)
  {
    v67 = &v96[*(*v96 + 280)];
    (*(*(*v96 + 184) + 8))(v108, v47, 1, nullsub_1, 0, *(*v96 + 104));
  }

  v68 = v96;
  v69 = *(*v96 + 312);
  v70 = v99;
  (*(v99[27] + 8))(v99[17]);
  v71 = *(*v68 + 264);
  (*(v70[21] + 32))(v70[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD18, &unk_185B6E830);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_185B6BB60;
  *(v72 + 32) = sub_185B42D4C;
  *(v72 + 40) = v68;
  v73 = swift_allocObject();
  v74 = v108;
  *(v73 + 16) = v68;
  *(v73 + 24) = v74;
  *(v73 + 32) = v47;
  *(v73 + 40) = v101;
  *(v72 + 48) = sub_185B41144;
  *(v72 + 56) = v73;
  swift_retain_n();

  sub_185B21D18(v72);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD20, &unk_185B6BF20);
  swift_arrayDestroy();
}

uint64_t sub_185B308C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for Backup(0);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v64 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v64 - v17;
  v19 = sub_185B67D3C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + 3);
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v19);
  v26 = v25;
  v27 = sub_185B67D5C();
  (*(v20 + 8))(v24, v19);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v25 = 0x1EA8CB000;
  if (!*(v1 + 2))
  {
    goto LABEL_13;
  }

  v28 = qword_1EA8CB718;
  v29 = *(v1 + 2);

  if (v28 != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v30 = sub_185B67B8C();
  __swift_project_value_buffer(v30, qword_1EA8D2278);
  v31 = sub_185B67B6C();
  v32 = sub_185B680AC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v25;
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_185AC1000, v31, v32, "Waiting for remote backup info.", v34, 2u);
    v35 = v34;
    v25 = v33;
    MEMORY[0x1865FE2F0](v35, -1, -1);
  }

  sub_185B2F014(v10);
  if ((*(v66 + 48))(v10, 1, v67) == 1)
  {
    sub_185ACF5CC(v10, &unk_1EA8CD2D8, &qword_185B6D8C0);
    v36 = sub_185B67B6C();
    v37 = sub_185B680AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_185AC1000, v36, v37, "Waited for remote backup info but there was none.", v38, 2u);
      MEMORY[0x1865FE2F0](v38, -1, -1);
    }
  }

  else
  {
    sub_185B40E60(v10, v18, type metadata accessor for Backup);
    sub_185B38D38(v18, v39);
    v40 = *(*v1 + 312);
    (*(v2[27] + 40))(v2[17]);
    v41 = sub_185B67B6C();
    v42 = sub_185B680AC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v25;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_185AC1000, v41, v42, "removed current backup info.", v44, 2u);
      v45 = v44;
      v25 = v43;
      MEMORY[0x1865FE2F0](v45, -1, -1);
    }

    sub_185B40AB8(v18, type metadata accessor for Backup);
  }

LABEL_13:
  v46 = *(v1 + 2);
  *(v1 + 2) = 0;

  v47 = *(*v1 + 312);
  v48 = v2[27];
  v49 = v2[17];
  result = (*(v48 + 24))(v49, v48);
  if ((result & 1) == 0)
  {
    if (v25[227] != -1)
    {
      swift_once();
    }

    v51 = sub_185B67B8C();
    __swift_project_value_buffer(v51, qword_1EA8D2278);
    v52 = sub_185B67B6C();
    v53 = sub_185B680AC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_185AC1000, v52, v53, "Backup does not exist on disk, writing one out now", v54, 2u);
      MEMORY[0x1865FE2F0](v54, -1, -1);
    }

    v55 = *(*v1 + 256);
    v57 = v2[20];
    v69 = v2[10];
    v56 = v69;
    v70 = v57;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_1, &v1[v55], v56);
    v59 = v65;
    sub_185B1A874(v68, v65);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    if ((*(v66 + 48))(v59, 1, v67) == 1)
    {
      return sub_185ACF5CC(v59, &unk_1EA8CD2D8, &qword_185B6D8C0);
    }

    else
    {
      v60 = v64;
      sub_185B40E60(v59, v64, type metadata accessor for Backup);
      (*(v48 + 32))(v60, v49, v48);
      v61 = sub_185B67B6C();
      v62 = sub_185B680AC();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_185AC1000, v61, v62, "Successfully wrote backup.", v63, 2u);
        MEMORY[0x1865FE2F0](v63, -1, -1);
      }

      return sub_185B40AB8(v60, type metadata accessor for Backup);
    }
  }

  return result;
}

uint64_t sub_185B31258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(*v5 + 184) + 8);
  v7 = *(*v5 + 104);
  v8 = v5 + *(*v5 + 280);
  return v6(a1, a2, a3, a4, a5, v7);
}

void sub_185B312CC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v68 = a3;
  v77 = a2;
  v69 = *v3;
  v6 = v69;
  v7 = v69[10];
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  *&v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v61 - v13;
  sub_185B308C8();
  v15 = v8[2];
  v65 = *(*v3 + 256);
  v66 = v15;
  v15(v14, v3 + v65, v7);
  v16 = v6[20];
  v17 = *(v16 + 8);
  v70 = a1;
  v18 = v71;
  v19 = v17(a1, v77, v7, v16);
  v21 = v8[1];
  v20 = v8 + 1;
  v22 = v14;
  v23 = v21;
  v21(v22, v7);
  if (!v18)
  {
    v62 = v23;
    v63 = v7;
    v64 = v20;
    v71 = 0;
    v24 = *(*v4 + 328);
    v25 = v68;
    v26 = v77;
    if ((*(v69[29] + 40))(v68 & 1 | 0x40u, v70, v77, v19 & 0x10101, v69[19]))
    {
      swift_willThrow();
      return;
    }

    v27 = v67;
    v28 = v63;
    v66(v67, v4 + v65, v63);
    v29 = (v25 & 1) != 0 ? 256 : 0;
    v30 = v71;
    v31 = (*(v16 + 16))(v70, v26, v29 | v25 & 1u, v28, v16);
    v32 = v62(v27, v28);
    if (!v30)
    {
      v34 = v25;
      if ((v31 & 1) == 0)
      {
        v71 = 0;
LABEL_23:
        v55 = v69;
        v56 = *(*v4 + 312);
        (*(v69[27] + 8))(v69[17]);
        v57 = *(*v4 + 264);
        (*(v55[21] + 32))(v55[11]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD18, &unk_185B6E830);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_185B6E230;
        *(inited + 32) = sub_185B41028;
        *(inited + 40) = v4;
        *(inited + 48) = sub_185B41044;
        *(inited + 56) = v4;
        v59 = swift_allocObject();
        v60 = v70;
        *(v59 + 16) = v4;
        *(v59 + 24) = v60;
        *(v59 + 32) = v77;
        *(v59 + 40) = v34 & 1;
        *(inited + 64) = sub_185B41060;
        *(inited + 72) = v59;
        swift_retain_n();

        sub_185B21D18(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD20, &unk_185B6BF20);
        swift_arrayDestroy();
        return;
      }

      if (v25)
      {
        if (qword_1EA8CBFD0 != -1)
        {
          v32 = swift_once();
        }

        v35 = *(qword_1EA8D2330 + 40);
        v36 = *(v35 + 104);
        MEMORY[0x1EEE9AC00](v32, v33);
        *(&v61 - 2) = sub_185B42CBC;
        *(&v61 - 1) = v35;

        os_unfair_lock_lock(v36 + 4);
        sub_185B42CD4(v76);
        os_unfair_lock_unlock(v36 + 4);
        v37 = *&v76[0];

        if (!__OFADD__(v37, 1))
        {
LABEL_18:
          *&v76[0] = v37 + 1;
          v40 = *(v35 + 104);
          v41 = MEMORY[0x1EEE9AC00](v38, v39);
          *(&v61 - 2) = v35;
          *(&v61 - 1) = v76;
          MEMORY[0x1EEE9AC00](v41, v42);
          *(&v61 - 2) = sub_185B42D34;
          *(&v61 - 1) = v43;

          os_unfair_lock_lock(v40 + 4);
          sub_185B42D64();
          v71 = 0;
          os_unfair_lock_unlock(v40 + 4);

          v44 = v4;
          v45 = *(v4 + *(*v4 + 336));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
          v46 = swift_initStackObject();
          v67 = xmmword_185B6BB70;
          *(v46 + 16) = xmmword_185B6BB70;
          v47 = v70;
          *(v46 + 32) = v70;
          v48 = v77;
          *(v46 + 40) = v77;

          v49 = sub_185AD0524(v46);
          swift_setDeallocating();
          sub_185ADF744(v46 + 32);
          if (v68)
          {
            v50 = swift_initStackObject();
            *(v50 + 16) = v67;
            *(v50 + 32) = v47;
            *(v50 + 40) = v48;

            v51 = sub_185AD0524(v50);
            swift_setDeallocating();
            sub_185ADF744(v50 + 32);
            v52 = 0;
          }

          else
          {
            v53 = swift_initStackObject();
            *(v53 + 16) = v67;
            *(v53 + 32) = v47;
            *(v53 + 40) = v48;

            v52 = sub_185AD0524(v53);
            swift_setDeallocating();
            sub_185ADF744(v53 + 32);
            v51 = 0;
          }

          LODWORD(v72) = 3;
          *(&v72 + 1) = v49;
          *&v73 = v51;
          *(&v73 + 1) = v52;
          v74 = 0u;
          v75 = 0u;
          sub_185B67C2C();
          v76[0] = v72;
          v76[1] = v73;
          v76[2] = v74;
          v76[3] = v75;
          sub_185ADF798(v76);
          v4 = v44;
          v34 = v68;
          if (v68)
          {
            v54 = v44 + *(*v44 + 280);
            (*(*(*v44 + 184) + 8))(v70, v77, 1, nullsub_1, 0, *(*v44 + 104));
          }

          goto LABEL_23;
        }

        __break(1u);
      }

      else
      {
        if (qword_1EA8CBFD0 != -1)
        {
          v32 = swift_once();
        }

        v35 = *(qword_1EA8D2330 + 56);
        v36 = *(v35 + 104);
        MEMORY[0x1EEE9AC00](v32, v33);
        *(&v61 - 2) = sub_185B42CBC;
        *(&v61 - 1) = v35;

        os_unfair_lock_lock(v36 + 4);
        sub_185B42CD4(v76);
        os_unfair_lock_unlock(v36 + 4);
        v37 = *&v76[0];

        if (!__OFADD__(v37, 1))
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      os_unfair_lock_unlock(v36 + 4);
      __break(1u);
    }
  }
}

uint64_t sub_185B31BBC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 304);
  sub_185ACAF9C(a1, a2);
  v4 = *(v2 + 128);
  (*(*(v2 + 208) + 16))();
}

uint64_t sub_185B31C64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 304);
  sub_185ACAA28(a1, a2);
  v4 = *(v2 + 128);
  (*(*(v2 + 208) + 8))();
}

BOOL sub_185B31D0C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 368);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16) || (v9 = sub_185AC9F40(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
LABEL_10:
    v17 = *(*v3 + 264);
    v18 = *(v6 + 168);
    v19 = *(v6 + 88);
    (*(v18 + 16))(v19, v18);
    v21 = v20;
    if (v20 >= sub_185B2F928())
    {
      return 0;
    }

    (*(v18 + 24))(v19, v18);
    return v21 < v23;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  if (v11 <= 0)
  {
    goto LABEL_10;
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v12 = sub_185B67B8C();
  __swift_project_value_buffer(v12, qword_1EA8D2278);

  v13 = sub_185B67B6C();
  v14 = sub_185B6807C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_185ACB2C4(a1, a2, &v24);
    _os_log_impl(&dword_185AC1000, v13, v14, "Have active auth assertion for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x1865FE2F0](v16, -1, -1);
    MEMORY[0x1865FE2F0](v15, -1, -1);
  }

  return 1;
}

uint64_t sub_185B320C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*v3 + 168) + 40);
  v5 = *(*v3 + 88);
  v6 = v3 + *(*v3 + 264);
  return v4(a1, a2, a3, v5);
}

uint64_t sub_185B32138()
{
  v1 = *(*(*v0 + 168) + 8);
  v2 = *(*v0 + 88);
  v3 = v0 + *(*v0 + 264);
  return v1(v2);
}

uint64_t sub_185B321AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = *(*v8 + 288);
  v15 = swift_allocObject();
  v15[2] = v8;
  v15[3] = a7;
  v15[4] = a8;
  v16 = *(v13 + 192);
  v17 = *(v16 + 8);
  v18 = *(v13 + 112);

  v17(a1, a2, a3, a4, a5, a6, sub_185B40F70, v15, v18, v16);
}

uint64_t sub_185B322D0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_185B67D3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a3 + 24);
  *v15 = v16;
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8018], v10);
  v17 = v16;
  v18 = sub_185B67D5C();
  result = (*(v11 + 8))(v15, v10);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_185B40F80;
  *(v21 + 24) = v20;
  aBlock[4] = sub_185AE7C88;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AD94F4;
  aBlock[3] = &block_descriptor_75_0;
  v22 = _Block_copy(aBlock);

  sub_185B06F30(a1, a2 & 1);

  dispatch_sync(v17, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

BOOL sub_185B32534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(*v6 + 192) + 16);
  v8 = *(*v6 + 112);
  v9 = v6 + *(*v6 + 288);
  return (v7(a1, a2, a3, a4, a5, a6, v8) & 1) == 0;
}

uint64_t sub_185B325B0(void (*a1)(void), uint64_t a2)
{
  v4 = v2;
  v6 = sub_185ACC3B8(sub_185ADF860, a2);
  v8 = sub_185ACC3B8(sub_185B40F28, v7);
  a1();
  if (v3)
  {
  }

  v11 = sub_185ACC3B8(sub_185ADF860, v9);
  v13 = sub_185ACC3B8(sub_185B40F28, v12);
  *&v46[0] = v6;

  sub_185B4042C(v14);
  if ((sub_185B3C6B8(v6, v11) & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = sub_185B3C6B8(v8, v13);

  if ((v15 & 1) == 0)
  {
LABEL_7:
    v17 = *(v4 + *(*v4 + 336));
    LODWORD(v44) = 4;
    *(&v44 + 1) = v6;
    v45 = sub_185ACC3B8(sub_185B40F28, v16);
    sub_185B67C2C();
    v46[0] = v44;
    memset(&v46[1], 0, 32);
    v46[3] = v45;
    sub_185ADF798(v46);
    goto LABEL_8;
  }

LABEL_8:
  v43 = v4;
  if (*(v11 + 16) <= *(v6 + 16) >> 3)
  {
    *&v46[0] = v6;
    sub_185ACC0B0(v11);

    result = *&v46[0];
  }

  else
  {
    v18 = sub_185B3FA60(v11, v6);

    result = v18;
  }

  v19 = 0;
  v20 = result + 56;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(result + 56);
  v24 = (v21 + 63) >> 6;
  v41 = result + 56;
  v42 = result;
  v40 = v24;
  while (v23)
  {
LABEL_20:
    v31 = (*(result + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v23)))));
    v32 = *v31;
    v33 = v31[1];
    v34 = qword_1ED6F4CB0;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = sub_185B67B8C();
    __swift_project_value_buffer(v35, qword_1ED6F5130);

    v36 = sub_185B67B6C();
    v37 = sub_185B680AC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v46[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_185ACB2C4(v32, v33, v46);
      _os_log_impl(&dword_185AC1000, v36, v37, "trying to unshield %s as it is no longer effectively locked", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x1865FE2F0](v39, -1, -1);
      MEMORY[0x1865FE2F0](v38, -1, -1);
    }

    v23 &= v23 - 1;
    v25 = swift_allocObject();
    *(v25 + 16) = v32;
    *(v25 + 24) = v33;
    v26 = *v43;
    v27 = *(*v43 + 280);
    v28 = *(*v43 + 184);
    v47 = *(v28 + 8);
    v29 = *(v26 + 104);

    v47(v32, v33, 0, sub_185B40EE4, v25, v29, v28);

    v20 = v41;
    result = v42;
    v24 = v40;
  }

  while (1)
  {
    v30 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
    }

    v23 = *(v20 + 8 * v30);
    ++v19;
    if (v23)
    {
      v19 = v30;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B32A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13)
{
  v46 = a7;
  v47 = a8;
  v44 = a5;
  v45 = a6;
  v42 = a3;
  v43 = a4;
  v40 = a13;
  v41 = a2;
  v38 = *a1;
  v14 = v38;
  v15 = v38[10];
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](a1, a2);
  v20 = &v35 - v19;
  (*(v16 + 16))(&v35 - v19, v18 + v38[32], v15);
  v21 = *(v14[20] + 64);
  v34 = v14[20];
  v39 = a10;
  v22 = v47;
  v47 = a9;
  v23 = v49;
  v21(v41, v42, v43, v44, v45, v46, v22, a9, a10, a11, a12, v40, v15, v34);
  if (v23)
  {
    return (*(v16 + 8))(v20, v15);
  }

  v36 = a11;
  v37 = a12;
  v45 = HIDWORD(a11);
  v46 = HIDWORD(a12);
  v25 = HIDWORD(v39);
  v26 = v39;
  v27 = v47;
  v28 = HIDWORD(v47);
  (*(v16 + 8))(v20, v15);
  v49 = *(*a1 + 272);
  atoken.val[0] = v27;
  atoken.val[1] = v28;
  atoken.val[2] = v26;
  atoken.val[3] = v25;
  v29 = v36;
  v30 = v37;
  v31 = v45;
  v32 = v46;
  atoken.val[4] = v36;
  atoken.val[5] = v45;
  atoken.val[6] = v37;
  atoken.val[7] = v46;
  LODWORD(v44) = audit_token_to_pid(&atoken);
  atoken.val[0] = v27;
  atoken.val[1] = v28;
  atoken.val[2] = v39;
  atoken.val[3] = v25;
  atoken.val[4] = v29;
  atoken.val[5] = v31;
  atoken.val[6] = v30;
  atoken.val[7] = v32;
  v33 = audit_token_to_pidversion(&atoken);
  return (*(v38[22] + 24))(v44 | (v33 << 32), v38[12]);
}

uint64_t sub_185B32D00(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = *(v1 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 20) = v4;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_185B41210;
  *(v7 + 24) = v6;
  v10[4] = sub_185AE7C88;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_185AD94F4;
  v10[3] = &block_descriptor_107;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B32E60(int a1, uint64_t a2)
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1EA8D2278);
  v5 = sub_185B67B6C();
  v6 = sub_185B680AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_185AF7AB4();
    v11 = sub_185ACB2C4(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_185AC1000, v5, v6, "removing accesses matching %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v12, v13);
  v16[2] = a2;
  v17 = a1;
  v18 = v14;
  return sub_185B325B0(sub_185B41218, v16);
}

void sub_185B32FFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v23 - v9;
  (*(v6 + 16))(&v23 - v9, v8 + *(v4 + 256), v5);
  (*(*(v4 + 160) + 96))(a2, v5);
  if (v2)
  {
    (*(v6 + 8))(v10, v5);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v11 = sub_185B67B8C();
    __swift_project_value_buffer(v11, qword_1EA8D2278);
    v12 = v2;
    v13 = sub_185B67B6C();
    v14 = sub_185B6808C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 136315394;
      v18 = sub_185AF7AB4();
      v20 = sub_185ACB2C4(v18, v19, &v24);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v22;
      *v16 = v22;
      _os_log_impl(&dword_185AC1000, v13, v14, "Could not remove access record matching %s: %@", v15, 0x16u);
      sub_185ACF5CC(v16, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      MEMORY[0x1865FE2F0](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_185B33338(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00]();
  v9 = v11 - v8;
  (*(v5 + 16))(v11 - v8, v7 + *(v3 + 256), v4);
  (*(*(v3 + 160) + 88))(a2, v4);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_185B33488(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v13[-v9];
  (*(v7 + 16))(&v13[-v9], v4 + *(v5 + 256), v6);
  (*(*(v5 + 160) + 80))(v6);
  if (v3)
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 8))(v10, v6);
  v12 = *(v4 + *(*v4 + 336));
  *v13 = 4;
  memset(&v13[8], 0, 56);
  sub_185B67C2C();
  v14[0] = *v13;
  v14[1] = *&v13[16];
  v14[2] = *&v13[32];
  v14[3] = *&v13[48];
  return sub_185ADF798(v14);
}

uint64_t sub_185B3363C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10[-v7];
  v12 = MEMORY[0x1E69E7CC0];
  (*(v5 + 16))(&v10[-v7], v2 + *(v3 + 256), v4);
  v11 = &v12;
  (*(*(v3 + 160) + 72))(sub_185B40E58, v10, v4);
  (*(v5 + 8))(v8, v4);
  return v12;
}

uint64_t sub_185B337A4(void *a1, void **a2)
{
  v4 = type metadata accessor for DataAccessRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185AE314C(a1, v9);
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_185B3D0C8(0, v10[2] + 1, 1, v10, &qword_1EA8CD4A8, &qword_185B6E828, type metadata accessor for DataAccessRecord);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_185B3D0C8(v12 > 1, v13 + 1, 1, v10, &qword_1EA8CD4A8, &qword_185B6E828, type metadata accessor for DataAccessRecord);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  return sub_185B40E60(v9, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for DataAccessRecord);
}

uint64_t sub_185B33944()
{
  v1 = *(*(*v0 + 232) + 56);
  v2 = *(*v0 + 152);
  v3 = v0 + *(*v0 + 328);
  return v1(v2);
}

uint64_t sub_185B339B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v2 + *(v3 + 256), v4);
  (*(*(v3 + 160) + 72))(sub_185B40C14, v2, v4);
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_185B33AFC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = sub_185B4A660();
  if ((v5 & 1) == 0)
  {
    v6 = *(*a2 + 272);
    return (*(*(v3 + 176) + 24))(result, *(v3 + 96));
  }

  return result;
}

void sub_185B33B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v7 = v6;
  v50 = a6;
  v51 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD498, &qword_185B6E820);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v50 - v15;
  v17 = sub_185B67AFC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a4, v17);
  v23 = type metadata accessor for AuthAssertion();
  v24 = &v16[*(v23 + 24)];
  sub_185B67A7C();
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 4) = a3;
  (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
  v25 = *(*v7 + 360);
  swift_beginAccess();

  sub_185B2E978(v16, v21);
  swift_endAccess();
  v26 = *(*v7 + 368);
  swift_beginAccess();
  v27 = *(v7 + v26);
  if (*(v27 + 16) && (v28 = sub_185AC9F40(a1, a2), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
  }

  else
  {
    v30 = 0;
  }

  swift_endAccess();
  if (__OFADD__(v30, 1))
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  swift_beginAccess();
  v31 = *(v7 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v7 + v26);
  *(v7 + v26) = 0x8000000000000000;
  sub_185B52378(v30 + 1, a1, a2, isUniquelyReferenced_nonNull_native);
  v33 = v52;
  *(v7 + v26) = v52;
  swift_endAccess();
  if (*(*(v7 + v25) + 16) == *(v33 + 16))
  {
    v51(0);
    return;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v34 = sub_185B67B8C();
  __swift_project_value_buffer(v34, qword_1EA8D2278);
  swift_retain_n();
  v35 = sub_185B67B6C();
  v36 = sub_185B6809C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53[0] = v38;
    *v37 = 136315394;
    v39 = *(v7 + v25);
    sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8]);

    v40 = sub_185B67D9C();
    v42 = v41;

    v43 = sub_185ACB2C4(v40, v42, v53);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    v44 = *(v7 + v26);

    v45 = sub_185B67D9C();
    v47 = v46;

    v48 = sub_185ACB2C4(v45, v47, v53);

    *(v37 + 14) = v48;
    _os_log_impl(&dword_185AC1000, v35, v36, "Assertion count is off %s %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v38, -1, -1);
    MEMORY[0x1865FE2F0](v37, -1, -1);
  }

  else
  {
  }

  v49 = sub_185AD0148(0xFuLL, 0xD000000000000016, 0x8000000185B77B70, 461, 0xD00000000000005DLL, 0x8000000185B77B90);
  v51(v49);
}

void sub_185B340AC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v95 = a3;
  v96 = a2;
  v6 = sub_185B67AFC();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD498, &qword_185B6E820);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v91 - v14;
  v16 = type metadata accessor for AuthAssertion();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = (&v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = (&v91 - v24);
  v26 = *(*v3 + 360);
  swift_beginAccess();
  v92 = v26;
  sub_185B3E24C(a1, v15);
  swift_endAccess();
  v27 = *(v17 + 48);
  v91 = v16;
  if (v27(v15, 1, v16) != 1)
  {
    sub_185B40E60(v15, v25, type metadata accessor for AuthAssertion);
    v41 = *v25;
    v40 = v25[1];
    v42 = *(*v4 + 368);
    swift_beginAccess();
    v43 = *(v4 + v42);
    v44 = v25;
    if (*(v43 + 16) && (v45 = sub_185AC9F40(v41, v40), (v46 & 1) != 0))
    {
      v47 = *(*(v43 + 56) + 8 * v45);
      swift_endAccess();
      if (v47 > 0)
      {
        if (v47 == 1)
        {
          swift_beginAccess();
          sub_185B3E1A0(v41, v40);
          goto LABEL_29;
        }

        swift_beginAccess();
        v59 = *(v4 + v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v4 + v42);
        v61 = v97;
        *(v4 + v42) = 0x8000000000000000;
        v62 = sub_185AC9F40(v41, v40);
        v64 = *(v61 + 16);
        v65 = (v63 & 1) == 0;
        v66 = __OFADD__(v64, v65);
        v67 = v64 + v65;
        if (v66)
        {
          __break(1u);
          goto LABEL_37;
        }

        v68 = v63;
        if (*(v61 + 24) < v67)
        {
          sub_185B4F8E8(v67, isUniquelyReferenced_nonNull_native);
          v62 = sub_185AC9F40(v41, v40);
          if ((v68 & 1) == (v69 & 1))
          {
LABEL_26:
            if ((v68 & 1) == 0)
            {
LABEL_40:
              __break(1u);
              return;
            }

            while (1)
            {
              v70 = v97;
              v71 = *(v97 + 56);
              v72 = *(v71 + 8 * v62);
              v66 = __OFSUB__(v72, 1);
              v73 = v72 - 1;
              if (!v66)
              {
                break;
              }

              __break(1u);
LABEL_39:
              v90 = v62;
              sub_185B51254();
              v62 = v90;
              if ((v68 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            *(v71 + 8 * v62) = v73;
            *(v4 + v42) = v70;
LABEL_29:
            swift_endAccess();
            isUniquelyReferenced_nonNull_native = v92;
            if (*(*(v4 + v92) + 16) == *(*(v4 + v42) + 16))
            {
              (v96)(0);
LABEL_20:
              sub_185B40AB8(v44, type metadata accessor for AuthAssertion);
              return;
            }

            if (qword_1EA8CB718 == -1)
            {
LABEL_32:
              v74 = sub_185B67B8C();
              __swift_project_value_buffer(v74, qword_1EA8D2278);
              swift_retain_n();
              v75 = sub_185B67B6C();
              v76 = sub_185B6809C();
              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v93 = swift_slowAlloc();
                v98 = v93;
                *v77 = 136315394;
                v78 = *(v4 + isUniquelyReferenced_nonNull_native);
                sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8]);

                v79 = sub_185B67D9C();
                v81 = v80;

                v82 = sub_185ACB2C4(v79, v81, &v98);

                *(v77 + 4) = v82;
                *(v77 + 12) = 2080;
                v83 = *(v4 + v42);

                v84 = sub_185B67D9C();
                v86 = v85;

                v87 = sub_185ACB2C4(v84, v86, &v98);

                *(v77 + 14) = v87;
                _os_log_impl(&dword_185AC1000, v75, v76, "Assertion count is off %s %s", v77, 0x16u);
                v88 = v93;
                swift_arrayDestroy();
                MEMORY[0x1865FE2F0](v88, -1, -1);
                MEMORY[0x1865FE2F0](v77, -1, -1);
              }

              else
              {
              }

              v89 = sub_185AD0148(0xFuLL, 0xD000000000000016, 0x8000000185B77B70, 487, 0xD000000000000034, 0x8000000185B77B00);
              v96();

              goto LABEL_20;
            }

LABEL_37:
            swift_once();
            goto LABEL_32;
          }

          v62 = sub_185B685DC();
          __break(1u);
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }
    }

    else
    {
      swift_endAccess();
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v48 = sub_185B67B8C();
    __swift_project_value_buffer(v48, qword_1EA8D2278);
    sub_185B40B18(v25, v22, type metadata accessor for AuthAssertion);
    v49 = sub_185B67B6C();
    v50 = sub_185B6809C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v98 = v52;
      *v51 = 136315138;
      v54 = *v22;
      v53 = v22[1];

      sub_185B40AB8(v22, type metadata accessor for AuthAssertion);
      v55 = sub_185ACB2C4(v54, v53, &v98);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_185AC1000, v49, v50, "Assertion count for %s should not be zero while outstanding assertions are active", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x1865FE2F0](v52, -1, -1);
      MEMORY[0x1865FE2F0](v51, -1, -1);
    }

    else
    {

      sub_185B40AB8(v22, type metadata accessor for AuthAssertion);
    }

    v98 = 0;
    v99 = 0xE000000000000000;
    sub_185B6836C();

    v98 = 0xD000000000000026;
    v99 = 0x8000000185B77B40;
    MEMORY[0x1865FCF60](v41, v40);
    v58 = sub_185AD0148(0xFuLL, v98, v99, 476, 0xD000000000000034, 0x8000000185B77B00);

    (v96)(v58);

    goto LABEL_20;
  }

  sub_185ACF5CC(v15, &unk_1EA8CD498, &qword_185B6E820);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v28 = sub_185B67B8C();
  __swift_project_value_buffer(v28, qword_1EA8D2278);
  v29 = v93;
  v30 = v94;
  (*(v93 + 16))(v10, a1, v94);
  v31 = sub_185B67B6C();
  v32 = sub_185B680AC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v29;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v98 = v35;
    *v34 = 136315138;
    sub_185B41234(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
    v36 = sub_185B6856C();
    v38 = v37;
    (*(v33 + 8))(v10, v30);
    v39 = sub_185ACB2C4(v36, v38, &v98);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_185AC1000, v31, v32, "Could not find assertion with uuid: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x1865FE2F0](v35, -1, -1);
    MEMORY[0x1865FE2F0](v34, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v10, v30);
  }

  v98 = 0;
  v99 = 0xE000000000000000;
  sub_185B6836C();

  v98 = 0xD00000000000001ALL;
  v99 = 0x8000000185B77AE0;
  sub_185B41234(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
  v56 = sub_185B6856C();
  MEMORY[0x1865FCF60](v56);

  MEMORY[0x1865FCF60](0x756F6620746F6E20, 0xEA0000000000646ELL);
  v57 = sub_185AD0148(0xFuLL, v98, v99, 471, 0xD000000000000034, 0x8000000185B77B00);

  (v96)(v57);
}

uint64_t sub_185B34BEC(int a1)
{
  v3 = *(*v1 + 360);
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_185B3E3E8(v5, a1);

  v7 = *(v1 + v3);
  *(v1 + v3) = v6;
}

uint64_t sub_185B34C7C(uint64_t a1)
{
  v3 = *(*v1 + 360);
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {

    sub_185AF6E20(a1);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_185B34D08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v37[2] = *(a1 + 32);
  v37[3] = a2;
  v43 = a2;
  v37[4] = a3;

  sub_185B4B0C4(sub_185B41AC8, v37);
  if (v3)
  {

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1EA8D2278);

    v14 = v3;
    v15 = sub_185B67B6C();
    v16 = sub_185B6808C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v42[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_185ACB2C4(v43, a3, v42);
      *(v17 + 12) = 2112;
      v20 = v3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_185AC1000, v15, v16, "Couldn't handle app %s no longer lockable: %@", v17, 0x16u);
      sub_185ACF5CC(v18, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      MEMORY[0x1865FE2F0](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v7 = v6;

    v10 = (v7 >> 8) & 1;
    if (v7 == 2)
    {
      v10 = 0;
    }

    LODWORD(v36) = v10;
    v11 = *(a1 + 32);
    MEMORY[0x1EEE9AC00](v8, v9);
    v35[2] = v11;
    v35[3] = v43;
    v35[4] = a3;

    v12 = sub_185B4B524(sub_185ADF724, v35);
    v22 = v12;

    if (v22)
    {
      v23 = v36;
      if (v36)
      {
        v24 = sub_185ADB68C();
        sub_185B2D00C(v24);

        v25 = sub_185ADB840(a1);
        v26 = sub_185ADB68C();
        v27 = sub_185ACB848(v26, v25);
        sub_185B2CFD0(v27);

        v23 = v36;
      }

      if (v7 != 2 && ((v7 | ((v7 & 0x100) >> 8)) & 1) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
        inited = swift_initStackObject();
        v36 = xmmword_185B6BB70;
        *(inited + 16) = xmmword_185B6BB70;
        *(inited + 32) = v43;
        *(inited + 40) = a3;

        v29 = v23;
        v30 = sub_185AD0524(inited);
        swift_setDeallocating();
        sub_185ADF744(inited + 32);
        if (v29)
        {
          v31 = swift_initStackObject();
          *(v31 + 16) = v36;
          *(v31 + 32) = v43;
          *(v31 + 40) = a3;

          v32 = sub_185AD0524(v31);
          swift_setDeallocating();
          sub_185ADF744(v31 + 32);
          v33 = 3;
        }

        else
        {
          v32 = MEMORY[0x1E69E7CD0];
          v33 = 2;
        }

        v34 = *(a1 + 136);
        LODWORD(v38) = v33;
        *(&v38 + 1) = v30;
        *&v39 = 0;
        *(&v39 + 1) = v32;
        *&v40 = 0;
        v41 = 0uLL;
        *(&v40 + 1) = v30;

        sub_185B67C2C();
        v42[0] = v38;
        v42[1] = v39;
        v42[2] = v40;
        v42[3] = v41;
        sub_185ADF798(v42);
      }
    }
  }
}

void sub_185B3518C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = *(a1 + 32);
  v35 = a2;
  v36 = a3;

  sub_185B4B0C4(sub_185B42CEC, v33);
  if (v3)
  {

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v8 = sub_185B67B8C();
    __swift_project_value_buffer(v8, qword_1EA8D2278);

    v9 = v3;
    v10 = sub_185B67B6C();
    v11 = sub_185B6808C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v41[0] = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_185ACB2C4(a2, a3, v41);
      *(v12 + 12) = 2112;
      v15 = v3;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_185AC1000, v10, v11, "Couldn't handle app %s no longer hideable: %@", v12, 0x16u);
      sub_185ACF5CC(v13, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1865FE2F0](v14, -1, -1);
      MEMORY[0x1865FE2F0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v17 = v7;

    v20 = v17 != 2;
    if (v17 != 2 && (v17 & 0x100) != 0)
    {
      v22 = *(a1 + 32);
      v23 = v20 & v17;
      if ((v20 & v17) != 0)
      {
        v24 = *(a1 + 32);

        sub_185B4BA2C(a2, a3, v17 & 0x10000 | 1);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v18, v19);
        v32[2] = v22;
        v32[3] = a2;
        v32[4] = a3;

        sub_185B4B524(sub_185B42D04, v32);
      }

      v25 = sub_185ADB68C();
      sub_185B2D00C(v25);

      if (v23)
      {
        v26 = sub_185ADB840(a1);
        v27 = sub_185ADB68C();
        v28 = sub_185ACB848(v27, v26);
        sub_185B2CFD0(v28);
      }

      v29 = *(a1 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_185B6BB70;
      *(inited + 32) = a2;
      *(inited + 40) = a3;

      v31 = sub_185AD0524(inited);
      swift_setDeallocating();
      sub_185ADF744(inited + 32);
      LODWORD(v37) = 3;
      *&v38 = 0;
      *(&v38 + 1) = v31;
      *(&v37 + 1) = 0;
      v39 = 0u;
      v40 = 0u;
      sub_185B67C2C();
      v41[0] = v37;
      v41[1] = v38;
      v41[2] = v39;
      v41[3] = v40;
      sub_185ADF798(v41);
    }
  }
}

void sub_185B355C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v14 = a2;
  v12[2] = sub_185B4290C;
  v12[3] = &v13;

  sub_185ACCE00(sub_185B42920, v12);
  if (v2)
  {

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1EA8D2278);
    v5 = v2;
    v6 = sub_185B67B6C();
    v7 = sub_185B6808C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_185AC1000, v6, v7, "could not clear preferences for non hideable apps! %@", v8, 0xCu);
      sub_185ACF5CC(v9, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v9, -1, -1);
      MEMORY[0x1865FE2F0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_185B3578C(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 0x100) == 0)
  {
    return a3 & 0x10001;
  }

  v8[6] = v3;
  v8[7] = v4;

  sub_185AC407C(v8, a1, a2);

  return 2;
}

void sub_185B35824(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, const char *a6)
{
  if (a1)
  {
    v12 = a1;
    if (*a4 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, a5);
    v14 = a1;

    v15 = sub_185B67B6C();
    v16 = sub_185B6808C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_185ACB2C4(a2, a3, &v22);
      *(v17 + 12) = 2112;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_185AC1000, v15, v16, a6, v17, 0x16u);
      sub_185ACF5CC(v18, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      MEMORY[0x1865FE2F0](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_185B35A24(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v78 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v70 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v70 - v15;
  v17 = MEMORY[0x1E69E7CD0];
  v100 = MEMORY[0x1E69E7CD0];
  v101 = MEMORY[0x1E69E7CD0];
  v98 = MEMORY[0x1E69E7CD0];
  v99 = MEMORY[0x1E69E7CD0];
  v18 = v6[2];
  v82 = *(v3 + 256);
  v81 = v6 + 2;
  v80 = v18;
  v18(v70 - v15, v2 + v82, v5);
  v87 = v2;
  v88 = &v101;
  v89 = &v99;
  v90 = &v100;
  v91 = &v98;
  v84 = v2;
  v19 = *(*(v3 + 160) + 56);
  v85 = *(v3 + 160);
  v19(sub_185B40BF0, v86, v5);
  v79 = v5;
  v29 = v6[1];
  v30 = (v6 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v16, v5);
LABEL_6:
  v97 = v17;
  v31 = v84;
  v32 = v80(v13, v84 + v82, v5);
  MEMORY[0x1EEE9AC00](v32, v33);
  v70[-2] = &v97;
  (*(v85 + 72))(sub_185B40C0C);
  v83 = v30;
  v29(v13, v5);
  v34 = *(*v31 + 296);
  v35 = *(v4 + 200);
  v36 = *(v35 + 24);
  v13 = *(v4 + 120);
  v37 = v97;

  v38 = v36(v37, v13, v35);
  v39 = *(v38 + 16);
  v40 = *(v37 + 16);
  v77 = v29;
  v70[1] = v37;
  if (v39 > v40 >> 3)
  {
    v41 = sub_185B3FA60(v38, v37);
  }

  else
  {
    *&v96[0] = v37;
    sub_185ACC0B0(v38);

    v41 = *&v96[0];
  }

  v42 = v41 + 56;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v17 = v44 & *(v41 + 56);
  v45 = (v43 + 63) >> 6;
  v73 = v85 + 104;

  v46 = 0;
  *&v47 = 136315138;
  v72 = v47;
  *&v47 = 136315394;
  v71 = v47;
  v5 = v79;
  v75 = v41 + 56;
  v74 = v45;
  v76 = v41;
  while (v17)
  {
    v4 = v46;
LABEL_17:
    v48 = (*(v41 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v17)))));
    v49 = *v48;
    v29 = v48[1];
    v50 = qword_1EA8CB718;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = sub_185B67B8C();
    v13 = __swift_project_value_buffer(v51, qword_1EA8D2278);

    v52 = sub_185B67B6C();
    v53 = sub_185B680AC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v96[0] = v55;
      *v54 = v72;
      *(v54 + 4) = sub_185ACB2C4(v49, v29, v96);
      _os_log_impl(&dword_185AC1000, v52, v53, "removing access for uninstalled application %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x1865FE2F0](v55, -1, -1);
      v56 = v54;
      v5 = v79;
      MEMORY[0x1865FE2F0](v56, -1, -1);
    }

    v57 = v78;
    v17 &= v17 - 1;
    v80(v78, v84 + v82, v5);
    (*(v85 + 104))(v49, v29, v5);
    v77(v57, v5);

    v46 = v4;
    v41 = v76;
    v42 = v75;
    v45 = v74;
  }

  while (1)
  {
    v4 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      swift_once();
      v20 = sub_185B67B8C();
      __swift_project_value_buffer(v20, qword_1EA8D2278);
      v21 = 0;
      v22 = sub_185B67B6C();
      v23 = sub_185B6808C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = 0;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_185AC1000, v22, v23, "Could not map preferences! %@", v24, 0xCu);
        sub_185ACF5CC(v25, &unk_1EA8CC820, &unk_185B6B2A0);
        v28 = v25;
        v5 = v79;
        MEMORY[0x1865FE2F0](v28, -1, -1);
        MEMORY[0x1865FE2F0](v24, -1, -1);
      }

      else
      {
      }

      v30 = v83;
      goto LABEL_6;
    }

    if (v4 >= v45)
    {
      break;
    }

    v17 = *(v42 + 8 * v4);
    ++v46;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  v58 = v101;
  if (*(v101 + 16) || (v59 = *(v99 + 16)) != 0)
  {
    LODWORD(v59) = 2;
  }

  v60 = v100;
  if (*(v100 + 16) || *(v98 + 16))
  {
    LODWORD(v59) = v59 | 1;
  }

  if (*(v41 + 16))
  {
    v61 = v59 | 4;
  }

  else
  {
    v61 = v59;
  }

  if (v61)
  {
    swift_bridgeObjectRetain_n();
    v62 = sub_185ACB848(v58, v41);
    v63 = v99;
    swift_bridgeObjectRetain_n();
    v64 = sub_185ACB848(v63, v62);
    swift_bridgeObjectRetain_n();
    v65 = sub_185ACB848(v60, v64);
    v66 = v98;
    swift_bridgeObjectRetain_n();
    v67 = sub_185ACB848(v66, v65);
    v68 = *(v84 + *(*v84 + 336));
    LODWORD(v92) = v61;
    *(&v92 + 1) = v67;
    *&v93 = v60;
    *(&v93 + 1) = v66;
    *&v94 = v58;
    *(&v94 + 1) = v63;
    v95 = 0uLL;
    sub_185B67C2C();
    v96[0] = v92;
    v96[1] = v93;
    v96[2] = v94;
    v96[3] = v95;
    sub_185ADF798(v96);
  }

  else
  {
  }
}

uint64_t sub_185B364E4(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a3 & 0x10101;
  v7 = a4 + *(*a4 + 328);
  v8 = (*(*(*a4 + 232) + 48))(a1, a2, a3 & 0x10101, *(*a4 + 152));
  v65 = *(v8 + 16);
  if (!v65)
  {
LABEL_66:

    return v6 & 0xFFFFFF;
  }

  v9 = 0;
  v63 = v4 & 0x100;
  v64 = v4;
  v69 = v8 + 32;
  v10 = 2;
  v67 = 2;
  v68 = v5;
  v11 = *(v8 + 16);
  do
  {
    v13 = *(v69 + v9);
    v14 = v9 + 1;
    v15 = v13 >> 6;
    if (v13 >> 6 > 1)
    {
      if (v15 == 2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v15)
      {
        goto LABEL_43;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v16 = sub_185B67B8C();
      __swift_project_value_buffer(v16, qword_1EA8D2278);

      v17 = sub_185B67B6C();
      v18 = sub_185B680AC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v10;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v70 = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_185ACB2C4(a1, v68, &v70);
        *(v20 + 12) = 1024;
        *(v20 + 14) = v13 & 1;
        _os_log_impl(&dword_185AC1000, v17, v18, "Setting %s locked: %{BOOL}d", v20, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        v22 = v21;
        v11 = v65;
        MEMORY[0x1865FE2F0](v22, -1, -1);
        v23 = v20;
        v10 = v19;
        v5 = v68;
        MEMORY[0x1865FE2F0](v23, -1, -1);
      }

      if (v6 != 2)
      {
        goto LABEL_26;
      }

      if ((v13 & 1) == 0)
      {

        v39 = sub_185B67B6C();
        v40 = sub_185B680AC();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v70 = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_185ACB2C4(a1, v5, &v70);
          v43 = v40;
          v44 = v39;
          v45 = "not setting locked to false for deleted preference for %s";
          goto LABEL_53;
        }

LABEL_54:

        goto LABEL_9;
      }

      if (v14 == v11)
      {

        v6 = 1;
        goto LABEL_63;
      }

      v13 = *(v69 + v14);
      v24 = v13 >> 6;
      if (v13 >> 6 <= 1)
      {
        if (!v24)
        {
          if (qword_1EA8CB718 != -1)
          {
            swift_once();
          }

          v25 = sub_185B67B8C();
          __swift_project_value_buffer(v25, qword_1EA8D2278);

          v26 = sub_185B67B6C();
          v27 = sub_185B680AC();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v70 = v29;
            *v28 = 136315394;
            *(v28 + 4) = sub_185ACB2C4(a1, v5, &v70);
            *(v28 + 12) = 1024;
            *(v28 + 14) = v13 & 1;
            _os_log_impl(&dword_185AC1000, v26, v27, "Setting %s locked: %{BOOL}d", v28, 0x12u);
            __swift_destroy_boxed_opaque_existential_0Tm(v29);
            MEMORY[0x1865FE2F0](v29, -1, -1);
            v30 = v28;
            v11 = v65;
            MEMORY[0x1865FE2F0](v30, -1, -1);
          }

          v14 = v9 + 2;
          v6 = 1;
LABEL_26:
          v6 = v6 & 0x10100 | v13 & 1;
          v67 = (v13 & 1) == 0;
          goto LABEL_9;
        }

        v67 = 0;
        v14 = v9 + 2;
        v6 = 1;
LABEL_43:
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v47 = sub_185B67B8C();
        __swift_project_value_buffer(v47, qword_1EA8D2278);

        v48 = sub_185B67B6C();
        v49 = sub_185B680AC();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = v10;
          v52 = swift_slowAlloc();
          v70 = v52;
          *v50 = 136315394;
          *(v50 + 4) = sub_185ACB2C4(a1, v68, &v70);
          *(v50 + 12) = 1024;
          *(v50 + 14) = v13 & 1;
          _os_log_impl(&dword_185AC1000, v48, v49, "Setting %s hidden: %{BOOL}d", v50, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v52);
          v53 = v52;
          v10 = v51;
          v5 = v68;
          MEMORY[0x1865FE2F0](v53, -1, -1);
          v54 = v50;
          v11 = v65;
          MEMORY[0x1865FE2F0](v54, -1, -1);
        }

        if (v6 != 2)
        {
          v6 = v6 & 0x10001 | ((v13 & 1) << 8);
          v10 = (v13 & 1) == 0;
          goto LABEL_9;
        }

        if (v13)
        {
          v10 = 0;
          v6 = 256;
          goto LABEL_9;
        }

        v39 = sub_185B67B6C();
        v55 = sub_185B680AC();

        if (!os_log_type_enabled(v39, v55))
        {
          goto LABEL_54;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v70 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_185ACB2C4(a1, v5, &v70);
        v43 = v55;
        v44 = v39;
        v45 = "not setting hidden to false for deleted preference for %s";
        goto LABEL_53;
      }

      if (v24 == 2)
      {
        v67 = 0;
        v14 = v9 + 2;
        v6 = 1;
LABEL_28:
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v31 = sub_185B67B8C();
        __swift_project_value_buffer(v31, qword_1EA8D2278);

        v32 = sub_185B67B6C();
        v33 = sub_185B680AC();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = v10;
          v36 = swift_slowAlloc();
          v70 = v36;
          *v34 = 136315394;
          *(v34 + 4) = sub_185ACB2C4(a1, v68, &v70);
          *(v34 + 12) = 1024;
          *(v34 + 14) = v13 & 1;
          _os_log_impl(&dword_185AC1000, v32, v33, "Setting %s provisional: %{BOOL}d", v34, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
          v37 = v36;
          v10 = v35;
          v5 = v68;
          MEMORY[0x1865FE2F0](v37, -1, -1);
          v38 = v34;
          v11 = v65;
          MEMORY[0x1865FE2F0](v38, -1, -1);
        }

        if (v6 != 2)
        {
          v6 = v6 & 0x101 | ((v13 & 1) << 16);
          goto LABEL_9;
        }

        if (v13)
        {
          v6 = 0x10000;
          goto LABEL_9;
        }

        v39 = sub_185B67B6C();
        v46 = sub_185B680AC();

        if (!os_log_type_enabled(v39, v46))
        {
          goto LABEL_54;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v70 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_185ACB2C4(a1, v5, &v70);
        v43 = v46;
        v44 = v39;
        v45 = "not setting provisional to false for deleted preference for %s";
LABEL_53:
        _os_log_impl(&dword_185AC1000, v44, v43, v45, v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x1865FE2F0](v42, -1, -1);
        v56 = v41;
        v11 = v65;
        MEMORY[0x1865FE2F0](v56, -1, -1);
        goto LABEL_54;
      }

      v67 = 0;
      v14 = v9 + 2;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v57 = sub_185B67B8C();
    __swift_project_value_buffer(v57, qword_1EA8D2278);

    v58 = sub_185B67B6C();
    v59 = sub_185B680AC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_185ACB2C4(a1, v5, &v70);
      _os_log_impl(&dword_185AC1000, v58, v59, "removing preference for %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x1865FE2F0](v61, -1, -1);
      MEMORY[0x1865FE2F0](v60, -1, -1);
    }

    v12 = v67;
    if (v64)
    {
      v12 = 1;
    }

    v67 = v12;
    if (v63)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v6 = 2;
LABEL_9:
    v9 = v14;
  }

  while (v14 != v11);

  if (v67 == 2)
  {
    goto LABEL_64;
  }

LABEL_63:

  sub_185AC407C(&v70, a1, v5);

LABEL_64:
  if (v10 != 2)
  {

    sub_185AC407C(&v70, a1, v5);
    goto LABEL_66;
  }

  return v6 & 0xFFFFFF;
}

id sub_185B36F78(void *a1)
{
  v2 = [a1 accessed_bundle_id];
  if (v2)
  {
    v3 = v2;
    v4 = sub_185B67E4C();
    v6 = v5;

    sub_185AC407C(&v12, v4, v6);
  }

  result = [a1 accessor_bundle_id];
  if (result)
  {
    v8 = result;
    v9 = sub_185B67E4C();
    v11 = v10;

    sub_185AC407C(&v12, v9, v11);
  }

  return result;
}

void sub_185B37040()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + *(*v0 + 320)), *(v0 + *(*v0 + 320) + 24)) + 16);

  v2 = sub_185B67E1C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_185B3C638;
  *(v3 + 24) = v0;
  v5[4] = sub_185B3C640;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_185B2EE3C;
  v5[3] = &block_descriptor_20;
  v4 = _Block_copy(v5);

  [v1 registerWeeklyActivityWithName:v2 work:v4];
  _Block_release(v4);
}

uint64_t sub_185B37190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = sub_185B67B6C();
  v8 = sub_185B680AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_185AC1000, v7, v8, "Sending appprotection analytics", v9, 2u);
    MEMORY[0x1865FE2F0](v9, -1, -1);
  }

  v10 = *(a3 + 24);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_185B3C678;
  *(v12 + 24) = v11;
  v16[4] = sub_185AE7934;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_185AD94F4;
  v16[3] = &block_descriptor_19;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_185B373A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v106 = *v2;
  v108 = *(v106 + 80);
  v4 = *&v108[-2]._os_unfair_lock_opaque;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v104 - v8;
  if (qword_1EA8CBFD0 != -1)
  {
    v6 = swift_once();
  }

  v107 = v4;
  v10 = qword_1EA8D2330;
  v11 = *(qword_1EA8D2330 + 40);
  v12 = *(v11 + 104);
  MEMORY[0x1EEE9AC00](v6, v7);
  *(&v104 - 2) = sub_185B40614;
  *(&v104 - 1) = v11;

  os_unfair_lock_lock(v12 + 4);
  sub_185B4064C(aBlock);
  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_185B6803C();
  v14 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v14;
  v105 = 0xD00000000000001ALL;
  v16 = sub_185B52B40(v13, 0xD00000000000001ALL, 0x8000000185B77980, isUniquelyReferenced_nonNull_native);
  v17 = aBlock[0];
  v18 = v10[6];
  v19 = *(v18 + 104);
  MEMORY[0x1EEE9AC00](v16, v20);
  *(&v104 - 2) = sub_185B42CBC;
  *(&v104 - 1) = v18;

  os_unfair_lock_lock(v19 + 4);
  sub_185B42CD4(aBlock);
  os_unfair_lock_unlock(v19 + 4);

  v21 = sub_185B6803C();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v17;
  v23 = sub_185B52B40(v21, 0xD00000000000001CLL, 0x8000000185B779A0, v22);
  v24 = aBlock[0];
  v25 = v10[7];
  v26 = *(v25 + 104);
  MEMORY[0x1EEE9AC00](v23, v27);
  *(&v104 - 2) = sub_185B42CBC;
  *(&v104 - 1) = v25;

  os_unfair_lock_lock(v26 + 4);
  sub_185B42CD4(aBlock);
  os_unfair_lock_unlock(v26 + 4);

  v28 = sub_185B6803C();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v24;
  v30 = sub_185B52B40(v28, 0xD00000000000001CLL, 0x8000000185B779C0, v29);
  v31 = aBlock[0];
  v32 = v10[8];
  v33 = *(v32 + 104);
  MEMORY[0x1EEE9AC00](v30, v34);
  *(&v104 - 2) = sub_185B42CBC;
  *(&v104 - 1) = v32;

  os_unfair_lock_lock(v33 + 4);
  sub_185B42CD4(aBlock);
  os_unfair_lock_unlock(v33 + 4);

  v35 = sub_185B6803C();
  v36 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v31;
  v37 = sub_185B52B40(v35, 0xD00000000000001CLL, 0x8000000185B779E0, v36);
  v38 = aBlock[0];
  v39 = v10[5];
  aBlock[0] = 0;
  v40 = *(v39 + 104);
  v42 = MEMORY[0x1EEE9AC00](v37, v41);
  *(&v104 - 2) = v39;
  *(&v104 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v104 - 2) = sub_185B40664;
  *(&v104 - 1) = v44;

  os_unfair_lock_lock(v40 + 4);
  sub_185B4068C();
  os_unfair_lock_unlock(v40 + 4);

  v46 = v10[6];
  aBlock[0] = 0;
  v47 = *(v46 + 104);
  v49 = MEMORY[0x1EEE9AC00](v45, v48);
  *(&v104 - 2) = v46;
  *(&v104 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v49, v50);
  *(&v104 - 2) = sub_185B42D34;
  *(&v104 - 1) = v51;

  os_unfair_lock_lock(v47 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v47 + 4);

  v53 = v10[7];
  aBlock[0] = 0;
  v54 = *(v53 + 104);
  v56 = MEMORY[0x1EEE9AC00](v52, v55);
  *(&v104 - 2) = v53;
  *(&v104 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v56, v57);
  *(&v104 - 2) = sub_185B42D34;
  *(&v104 - 1) = v58;

  os_unfair_lock_lock(v54 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v54 + 4);

  v60 = v10[8];
  aBlock[0] = 0;
  v61 = *(v60 + 104);
  v63 = MEMORY[0x1EEE9AC00](v59, v62);
  *(&v104 - 2) = v60;
  *(&v104 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v104 - 2) = sub_185B42D34;
  *(&v104 - 1) = v65;

  os_unfair_lock_lock(v61 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v61 + 4);

  v110 = 0;
  v111 = 0;
  v67 = v107;
  v66 = v108;
  (*(v107 + 16))(v9, v3 + *(*v3 + 256), v108);
  v68 = sub_185B4A790(v66, *(v106 + 160));
  (*(v67 + 8))(v9, v66);
  v69 = [objc_opt_self() enumeratorWithOptions_];
  v70 = swift_allocObject();
  v70[2] = v68;
  v70[3] = v3;
  v70[4] = &v111;
  v70[5] = &v110;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_185B40988;
  *(v71 + 24) = v70;
  aBlock[4] = sub_185B40994;
  aBlock[5] = v71;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AD7364;
  aBlock[3] = &block_descriptor_40_0;
  v72 = _Block_copy(aBlock);

  [(os_unfair_lock_s *)v69 swift_forEach:v72];
  _Block_release(v72);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    os_unfair_lock_unlock((isEscapingClosureAtFileLocation + 16));
    __break(1u);
    os_unfair_lock_unlock(v69 + 4);
    __break(1u);
  }

  else
  {
    v74 = sub_185B6803C();
    v75 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v38;
    sub_185B52B40(v74, 0xD000000000000012, 0x8000000185B77A00, v75);
    v76 = aBlock[0];
    v108 = v69;
    v77 = sub_185B6803C();
    v78 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v76;
    sub_185B52B40(v77, 0xD000000000000012, 0x8000000185B77A20, v78);
    v79 = aBlock[0];

    v81 = sub_185B3E554(v80, sub_185B3ED14, sub_185B3ED14);

    v82 = *(v81 + 16);

    v83 = sub_185B6803C();
    v84 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v79;
    sub_185B52B40(v83, 0xD000000000000013, 0x8000000185B77A40, v84);
    v85 = aBlock[0];

    v87 = sub_185B3E554(v86, sub_185B3EC18, sub_185B3EC18);

    v88 = *(v87 + 16);

    v89 = sub_185B6803C();
    v90 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v85;
    sub_185B52B40(v89, 0xD000000000000013, 0x8000000185B77A60, v90);
    v91 = aBlock[0];

    v92 = sub_185B3E6C4(sub_185B4099C, v3, v68);

    v93 = *(v92 + 16);

    v94 = sub_185B6803C();
    v95 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v91;
    sub_185B52B40(v94, 0xD00000000000001ELL, 0x8000000185B77A80, v95);
    v96 = aBlock[0];
    v97 = sub_185B3E6C4(sub_185B409BC, v3, v68);

    v98 = *(v97 + 16);

    v99 = sub_185B6803C();
    v100 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v96;
    sub_185B52B40(v99, v105, 0x8000000185B77AA0, v100);
    v101 = aBlock[0];
    v102 = sub_185B67E1C();
    sub_185B38490(v101);

    sub_185ADF590(0, &qword_1EA8CB620, 0x1E69E58C0);
    v103 = sub_185B67D7C();

    AnalyticsSendEvent();
  }
}

void sub_185B37FD4(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v8 = *a3;
  v9 = [a1 bundleIdentifier];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = sub_185B67E4C();
  v13 = v12;

  v14 = *(a2 + 16);
  v27 = a5;
  v29 = v11;
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = sub_185AC9F40(v11, v13);
  if ((v16 & 1) == 0)
  {
    LODWORD(v14) = 0;
LABEL_11:
    v19 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  v17 = (*(a2 + 56) + 3 * v15);
  LODWORD(v14) = *v17;
  if (v17[2])
  {
    v18 = 0x10000;
  }

  else
  {
    v18 = 0;
  }

  if (v17[1])
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

LABEL_12:
  v20 = *(*a3 + 328);
  v21 = *(v8 + 232);
  v22 = *(v21 + 40);
  v23 = *(v8 + 152);
  v24 = v19 | v14;
  v25 = v22(1, v29, v13, v19 | v14 | v18, v23, v21);
  if (v25)
  {
  }

  else
  {
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    ++*a4;
  }

  v26 = v22(65, v29, v13, v24 | v18, v23, v21);

  if (!v26)
  {
    if (!__OFADD__(*v27, 1))
    {
      ++*v27;
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }
}

uint64_t sub_185B381D4(uint64_t *a1, _BYTE *a2)
{
  if (*a2 != 1)
  {
    v7 = 0;
    return v7 & 1;
  }

  v4 = *a1;
  v3 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v6 = sub_185AD006C(v4, v3, 0);
  if (v2)
  {

LABEL_4:
    v7 = 1;
    return v7 & 1;
  }

  if (!v6)
  {
    goto LABEL_4;
  }

  v9 = v6;
  v10 = [v6 typeForInstallMachinery];
  if (!v10)
  {
    v20 = *MEMORY[0x1E69635A8];
    sub_185B67E4C();
    goto LABEL_16;
  }

  v11 = v10;
  v12 = sub_185B67E4C();
  v14 = v13;

  v15 = *MEMORY[0x1E69635A8];
  v16 = sub_185B67E4C();
  if (!v14)
  {
LABEL_16:

    v7 = 1;
    return v7 & 1;
  }

  if (v12 == v16 && v14 == v17)
  {

    v7 = 0;
  }

  else
  {
    v19 = sub_185B6859C();

    v7 = v19 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_185B38338(uint64_t *a1, _BYTE *a2)
{
  if (*a2 != 1)
  {
    goto LABEL_12;
  }

  v4 = *a1;
  v3 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v6 = sub_185AD006C(v4, v3, 0);
  if (v2)
  {

    v7 = 0;
    return v7 & 1;
  }

  if (!v6)
  {
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  v8 = v6;
  v9 = [v6 typeForInstallMachinery];
  if (!v9)
  {
    v19 = *MEMORY[0x1E69635A8];
    sub_185B67E4C();
    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_185B67E4C();
  v13 = v12;

  v14 = *MEMORY[0x1E69635A8];
  v15 = sub_185B67E4C();
  if (!v13)
  {
LABEL_15:

    v7 = 0;
    return v7 & 1;
  }

  if (v11 == v15 && v13 == v16)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_185B6859C();
  }

  return v7 & 1;
}

void sub_185B38490(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD458, &qword_185B6E7E8);
    v2 = sub_185B6847C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_185AC9F40(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_185B38670()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = sub_185B67CAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  (*(v5 + 104))(v9, *MEMORY[0x1E69E7F88], v4);
  v10 = sub_185B6814C();
  (*(v5 + 8))(v9, v4);
  v11 = v0[3];
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v3[5];
  *(v13 + 32) = v2[12];
  *(v13 + 40) = *(v3 + 104);
  *(v13 + 56) = v2[15];
  *(v13 + 64) = v3[8];
  *(v13 + 80) = v2[18];
  *(v13 + 88) = v2[19];
  *(v13 + 96) = v2[20];
  *(v13 + 104) = v2[21];
  *(v13 + 112) = v2[22];
  *(v13 + 120) = v2[23];
  *(v13 + 128) = v2[24];
  *(v13 + 136) = v2[25];
  *(v13 + 144) = v2[26];
  *(v13 + 152) = v2[27];
  *(v13 + 160) = v2[28];
  *(v13 + 168) = v2[29];
  *(v13 + 176) = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD470, &qword_185B6E800);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = v11;
  v18 = sub_185B406B4(v10, v17, sub_185B409DC, v13);

  v19 = v1[2];
  v1[2] = v18;
}

uint64_t sub_185B389D0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = sub_185B67C9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_185B67CDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong + *(*Strong + 312);
    v27 = Strong;
    (*(a12 + 16))(a2);
    v33 = *(v27 + 24);
    aBlock[4] = sub_185B40AB4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_58_2;
    v32 = _Block_copy(aBlock);

    sub_185B67CBC();
    v34 = MEMORY[0x1E69E7CC0];
    sub_185B41234(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    v31 = v19;
    sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    v28 = v32;
    MEMORY[0x1865FD170](0, v24, v18, v32);
    _Block_release(v28);
    (*(v14 + 8))(v18, v13);
    (*(v20 + 8))(v24, v31);
  }

  else
  {
    v30 = type metadata accessor for Backup(0);
    return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
  }
}

uint64_t sub_185B38D38(uint64_t a1, uint64_t a2)
{
  v189 = *v2;
  v191 = v2;
  v4 = v189[10];
  v185 = *(v4 - 8);
  v5 = *(v185 + 64);
  v6 = MEMORY[0x1EEE9AC00](0, a2);
  v8 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v179 = &v171 - v11;
  v182 = 0;
  v192 = type metadata accessor for Backup(v10);
  v12 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192, v13);
  v15 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_141;
  }

LABEL_2:
  v16 = sub_185B67B8C();
  v17 = __swift_project_value_buffer(v16, qword_1EA8D2278);
  sub_185B40B18(a1, v15, type metadata accessor for Backup);
  v187 = v17;
  v18 = sub_185B67B6C();
  v19 = sub_185B680AC();
  v20 = os_log_type_enabled(v18, v19);
  v188 = v4;
  v175 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v198[0] = v22;
    *v21 = 136315138;
    v23 = sub_185B1A6D8();
    v25 = v24;
    sub_185B40AB8(v15, type metadata accessor for Backup);
    v26 = sub_185ACB2C4(v23, v25, v198);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_185AC1000, v18, v19, "processing backup: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x1865FE2F0](v22, -1, -1);
    MEMORY[0x1865FE2F0](v21, -1, -1);
  }

  else
  {

    sub_185B40AB8(v15, type metadata accessor for Backup);
  }

  v27 = *(v192 + 24);
  v186 = a1;
  v28 = *(a1 + v27);
  v4 = v28 + 56;
  v8 = 1;
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v15 = v30 & *(v28 + 56);
  v31 = (v29 + 63) >> 6;

  v32 = 0;
  v33 = MEMORY[0x1E69E7CC8];
  v190 = v28;
  for (i = v28 + 56; ; v4 = i)
  {
    if (!v15)
    {
      while (1)
      {
        a1 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (a1 >= v31)
        {
          break;
        }

        v15 = *(v4 + 8 * a1);
        ++v32;
        if (v15)
        {
          goto LABEL_15;
        }
      }

      v52 = *(v186 + *(v192 + 20));
      a1 = v52 + 56;
      v53 = 1 << *(v52 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v15 = v54 & *(v52 + 56);
      v55 = (v53 + 63) >> 6;
      v56 = *(v186 + *(v192 + 20));

      v57 = 0;
      v183 = v52;
      v192 = v52 + 56;
      while (v15)
      {
        v59 = v57;
LABEL_34:
        v60 = (*(v52 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v15)))));
        a1 = *v60;
        v61 = v60[1];
        v4 = v33[2];

        if (v4 && (v62 = sub_185AC9F40(a1, v61), (v63 & 1) != 0))
        {
          v8 = *(v33[7] + 3 * v62 + 1);
        }

        else
        {
          v8 = 0;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v198[0] = v33;
        v65 = sub_185AC9F40(a1, v61);
        v67 = v33[2];
        v68 = (v66 & 1) == 0;
        v44 = __OFADD__(v67, v68);
        v69 = v67 + v68;
        if (v44)
        {
          goto LABEL_134;
        }

        v4 = v66;
        if (v33[3] >= v69)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = v65;
            sub_185B51C20();
            v65 = v76;
          }
        }

        else
        {
          sub_185B5060C(v69, isUniquelyReferenced_nonNull_native);
          v65 = sub_185AC9F40(a1, v61);
          if ((v4 & 1) != (v70 & 1))
          {
            goto LABEL_142;
          }
        }

        v52 = v183;
        v15 &= v15 - 1;
        v71 = 3 * v65;
        if (v4)
        {

          v33 = *&v198[0];
          v58 = (*(*&v198[0] + 56) + v71);
          *v58 = 1;
          v58[1] = v8;
          v58[2] = 1;
        }

        else
        {
          v33 = *&v198[0];
          *(*&v198[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
          v72 = (v33[6] + 16 * v65);
          *v72 = a1;
          v72[1] = v61;
          v73 = (v33[7] + v71);
          *v73 = 1;
          v73[1] = v8;
          v73[2] = 1;
          v74 = v33[2];
          v44 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v44)
          {
            goto LABEL_140;
          }

          v33[2] = v75;
        }

        v57 = v59;
        a1 = v192;
      }

      while (1)
      {
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_130;
        }

        if (v59 >= v55)
        {
          break;
        }

        v15 = *(a1 + 8 * v59);
        ++v57;
        if (v15)
        {
          goto LABEL_34;
        }
      }

      v77 = *(*v191 + 296);

      sub_185B4A814(v78);
      v79 = v189[15];
      v80 = (*(v189[25] + 24))();

      v82 = sub_185B4A814(v81);
      if (*(v80 + 16) <= *(v82 + 16) >> 3)
      {
        *&v198[0] = v82;
        sub_185ACC0B0(v80);
        v180 = *&v198[0];
      }

      else
      {
        v180 = sub_185B3FA60(v80, v82);
      }

      v8 = v182;
      v83 = v185;
      v4 = v80 + 56;
      v84 = 1 << *(v80 + 32);
      v85 = -1;
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      v86 = v85 & *(v80 + 56);
      v185 = *(*v191 + 256);
      v87 = (v84 + 63) >> 6;
      v184 = (v83 + 16);
      v186 = (v83 + 8);

      v88 = 0;
      *&v89 = 136315394;
      v176 = v89;
      v181 = v80;
      v178 = v80 + 56;
      v177 = v87;
      while (v86)
      {
        v90 = v88;
LABEL_61:
        if (!v33[2])
        {
          goto LABEL_135;
        }

        v91 = (*(v80 + 48) + ((v90 << 10) | (16 * __clz(__rbit64(v86)))));
        a1 = *v91;
        v92 = v91[1];

        v93 = sub_185AC9F40(a1, v92);
        if ((v94 & 1) == 0)
        {
          goto LABEL_136;
        }

        v86 &= v86 - 1;
        v95 = (v33[7] + 3 * v93);
        v96 = *v95;
        v97 = v95[1];
        v173 = v95[2];
        v98 = v179;
        v15 = v188;
        (*v184)(v179, &v191[v185], v188);
        if (v97)
        {
          v99 = 256;
        }

        else
        {
          v99 = 0;
        }

        (*(v189[20] + 16))(a1, v92, v99 | v96, v15);
        if (v8)
        {
          (*v186)(v98, v15);

          v100 = v8;
          v101 = sub_185B67B6C();
          v102 = sub_185B6808C();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v182 = v101;
            v104 = v103;
            v105 = swift_slowAlloc();
            v15 = v8;
            v106 = swift_slowAlloc();
            *&v198[0] = v106;
            *v104 = v176;
            v107 = sub_185ACB2C4(a1, v92, v198);

            *(v104 + 4) = v107;
            *(v104 + 12) = 2112;
            v108 = v15;
            v109 = _swift_stdlib_bridgeErrorToNSError();
            *(v104 + 14) = v109;
            *v105 = v109;
            v110 = v182;
            _os_log_impl(&dword_185AC1000, v182, v102, "could not set recover preferences for %s: %@", v104, 0x16u);
            sub_185ACF5CC(v105, &unk_1EA8CC820, &unk_185B6B2A0);
            MEMORY[0x1865FE2F0](v105, -1, -1);
            __swift_destroy_boxed_opaque_existential_0Tm(v106);
            MEMORY[0x1865FE2F0](v106, -1, -1);
            MEMORY[0x1865FE2F0](v104, -1, -1);
          }

          else
          {
          }

          v8 = 0;
          v88 = v90;
        }

        else
        {
          v172 = v96;
          v182 = 0;
          (*v186)(v98, v15);

          v15 = sub_185B67B6C();
          v111 = sub_185B680AC();

          if (os_log_type_enabled(v15, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            *&v198[0] = v113;
            *v112 = v176;
            v114 = sub_185ACB2C4(a1, v92, v198);

            *(v112 + 4) = v114;
            *(v112 + 12) = 2080;
            if (v173)
            {
              v115 = 0x10000;
            }

            else
            {
              v115 = 0;
            }

            v116 = sub_185B4AE78(v115 | v172 | v99);
            v118 = sub_185ACB2C4(v116, v117, v198);

            *(v112 + 14) = v118;
            _os_log_impl(&dword_185AC1000, v15, v111, "Recovered preferences for %s: %s", v112, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865FE2F0](v113, -1, -1);
            MEMORY[0x1865FE2F0](v112, -1, -1);
          }

          else
          {
          }

          v88 = v90;
          v8 = v182;
        }

        a1 = v192;
        v80 = v181;
        v4 = v178;
        v87 = v177;
      }

      while (1)
      {
        v90 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_131;
        }

        if (v90 >= v87)
        {
          break;
        }

        v86 = *(v4 + 8 * v90);
        ++v88;
        if (v86)
        {
          goto LABEL_61;
        }
      }

      v199 = MEMORY[0x1E69E7CD0];
      v200 = MEMORY[0x1E69E7CD0];
      v4 = v180;
      v119 = (v180 + 56);
      v120 = 1 << *(v180 + 32);
      if (v120 < 64)
      {
        v121 = ~(-1 << v120);
      }

      else
      {
        v121 = -1;
      }

      v15 = v121 & *(v180 + 56);
      v122 = (v120 + 63) >> 6;

      v123 = 0;
      v124 = v190;
      v179 = v119;
      v178 = v122;
      for (j = v33; ; v33 = j)
      {
        if (!v15)
        {
          while (1)
          {
            v125 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              break;
            }

            if (v125 >= v122)
            {

              if (*(v4 + 16))
              {
                v169 = *&v191[*(*v191 + 336)];
                LODWORD(v194) = 3;
                *(&v194 + 1) = v4;
                *&v195 = 0;
                *(&v195 + 1) = v200;
                *&v196 = 0;
                v197 = 0uLL;
                *(&v196 + 1) = v199;
                sub_185B67C2C();
                v198[0] = v194;
                v198[1] = v195;
                v198[2] = v196;
                v198[3] = v197;
                sub_185ADF798(v198);
              }

              else
              {
              }
            }

            v15 = *&v119[8 * v125];
            ++v123;
            if (v15)
            {
              goto LABEL_88;
            }
          }

LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          swift_once();
          goto LABEL_2;
        }

        v125 = v123;
LABEL_88:
        v126 = (*(v4 + 48) + ((v125 << 10) | (16 * __clz(__rbit64(v15)))));
        v127 = *v126;
        v128 = v126[1];
        if (*(v124 + 16))
        {
          v129 = *(v124 + 40);
          sub_185B6866C();

          sub_185B67EEC();
          v130 = sub_185B686AC();
          v131 = -1 << *(v124 + 32);
          v4 = v130 & ~v131;
          if ((*(i + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
          {
            v132 = ~v131;
            do
            {
              v133 = (*(v124 + 48) + 16 * v4);
              v134 = *v133 == v127 && v133[1] == v128;
              if (v134 || (sub_185B6859C() & 1) != 0)
              {
                goto LABEL_109;
              }

              v4 = (v4 + 1) & v132;
            }

            while (((*(i + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
          }
        }

        else
        {
        }

        v135 = v183;
        if (*(v183 + 16))
        {
          v136 = *(v183 + 40);
          sub_185B6866C();
          sub_185B67EEC();
          v137 = sub_185B686AC();
          v138 = -1 << *(v135 + 32);
          v4 = v137 & ~v138;
          if ((*(a1 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
          {
            v139 = ~v138;
            while (1)
            {
              v140 = (*(v135 + 48) + 16 * v4);
              v141 = *v140 == v127 && v140[1] == v128;
              if (v141 || (sub_185B6859C() & 1) != 0)
              {
                break;
              }

              v4 = (v4 + 1) & v139;
              if (((*(a1 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
              {
                goto LABEL_110;
              }
            }

LABEL_109:

            sub_185AC407C(v198, v127, v128);
          }
        }

LABEL_110:
        if (!v33[2])
        {
          goto LABEL_137;
        }

        v142 = sub_185AC9F40(v127, v128);
        if ((v143 & 1) == 0)
        {
          goto LABEL_138;
        }

        v15 &= v15 - 1;
        v144 = (v33[7] + 3 * v142);
        v145 = *v144;
        v146 = v144[1];
        LODWORD(v177) = v144[2];
        v147 = v175;
        v148 = v188;
        (*v184)(v175, &v191[v185], v188);
        if (v146)
        {
          v149 = 256;
        }

        else
        {
          v149 = 0;
        }

        (*(v189[20] + 16))(v127, v128, v149 | v145 | 0x10000u, v148);
        if (v8)
        {
          (*v186)(v147, v148);

          v150 = v8;
          v151 = sub_185B67B6C();
          v152 = sub_185B6808C();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v155 = v8;
            v156 = swift_slowAlloc();
            *&v198[0] = v156;
            *v153 = v176;
            v157 = sub_185ACB2C4(v127, v128, v198);

            *(v153 + 4) = v157;
            *(v153 + 12) = 2112;
            v158 = v155;
            v159 = _swift_stdlib_bridgeErrorToNSError();
            *(v153 + 14) = v159;
            *v154 = v159;
            _os_log_impl(&dword_185AC1000, v151, v152, "could not set provisional preferences for %s: %@", v153, 0x16u);
            sub_185ACF5CC(v154, &unk_1EA8CC820, &unk_185B6B2A0);
            MEMORY[0x1865FE2F0](v154, -1, -1);
            __swift_destroy_boxed_opaque_existential_0Tm(v156);
            MEMORY[0x1865FE2F0](v156, -1, -1);
            MEMORY[0x1865FE2F0](v153, -1, -1);
          }

          else
          {
          }

          v8 = 0;
          v123 = v125;
        }

        else
        {
          v172 = v149;
          v173 = v145;
          v182 = 0;
          (*v186)(v147, v148);

          v160 = sub_185B67B6C();
          v161 = sub_185B680AC();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            *&v198[0] = v163;
            *v162 = v176;
            v164 = sub_185ACB2C4(v127, v128, v198);

            *(v162 + 4) = v164;
            *(v162 + 12) = 2080;
            if (v177)
            {
              v165 = 0x10000;
            }

            else
            {
              v165 = 0;
            }

            v166 = sub_185B4AE78(v165 | v173 | v172);
            v168 = sub_185ACB2C4(v166, v167, v198);

            *(v162 + 14) = v168;
            _os_log_impl(&dword_185AC1000, v160, v161, "Set provisional preferences for %s to %s", v162, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865FE2F0](v163, -1, -1);
            MEMORY[0x1865FE2F0](v162, -1, -1);
          }

          else
          {
          }

          v123 = v125;
          v8 = v182;
        }

        v124 = v190;
        a1 = v192;
        v4 = v180;
        v119 = v179;
        v122 = v178;
      }
    }

    a1 = v32;
LABEL_15:
    v36 = (*(v28 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v15)))));
    v37 = *v36;
    v38 = v36[1];

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v198[0] = v33;
    v40 = sub_185AC9F40(v37, v38);
    v42 = v33[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_133;
    }

    v4 = v41;
    if (v33[3] < v45)
    {
      break;
    }

    if ((v39 & 1) == 0)
    {
      v51 = v40;
      sub_185B51C20();
      v40 = v51;
    }

LABEL_21:
    v28 = v190;
    v15 &= v15 - 1;
    if (v4)
    {
      v34 = v40;

      v33 = *&v198[0];
      v35 = *(*&v198[0] + 56) + 3 * v34;
      *v35 = 256;
      *(v35 + 2) = 1;
    }

    else
    {
      v33 = *&v198[0];
      *(*&v198[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v47 = (v33[6] + 16 * v40);
      *v47 = v37;
      v47[1] = v38;
      v48 = v33[7] + 3 * v40;
      *v48 = 256;
      *(v48 + 2) = 1;
      v49 = v33[2];
      v44 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v44)
      {
        goto LABEL_139;
      }

      v33[2] = v50;
    }

    v32 = a1;
  }

  sub_185B5060C(v45, v39);
  v40 = sub_185AC9F40(v37, v38);
  if ((v4 & 1) == (v46 & 1))
  {
    goto LABEL_21;
  }

LABEL_142:
  result = sub_185B685DC();
  __break(1u);
  return result;
}

uint64_t sub_185B3A170()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 144);
  v49 = sub_185B6829C();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v49, v6);
  v9 = &v48 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v48 = &v48 - v13;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v14 = sub_185B67B8C();
  __swift_project_value_buffer(v14, qword_1EA8D2278);
  v15 = sub_185B67B6C();
  v16 = sub_185B680AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_185AC1000, v15, v16, "start monitoring interesting pids", v17, 2u);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  sub_185B339B8(v18, v19);
  v20 = sub_185B67B6C();
  v21 = sub_185B680AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_185AC1000, v20, v21, "resuming shield state manager", v22, 2u);
    MEMORY[0x1865FE2F0](v22, -1, -1);
  }

  v23 = *(*v1 + 280);
  (*(v2[23] + 24))(v2[13]);
  v24 = DMIsMigrationNeeded();
  v25 = sub_185B67B6C();
  v26 = sub_185B680AC();
  v27 = os_log_type_enabled(v25, v26);
  if (v24)
  {
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_185AC1000, v25, v26, "skipping required settings actions check because migration is in flight", v28, 2u);
      MEMORY[0x1865FE2F0](v28, -1, -1);
    }
  }

  else
  {
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_185AC1000, v25, v26, "checking for required settings actions and pruning irrelevant access records", v29, 2u);
      MEMORY[0x1865FE2F0](v29, -1, -1);
    }

    sub_185B35A24(v30, v31);
  }

  v32 = sub_185B67B6C();
  v33 = sub_185B680AC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_185AC1000, v32, v33, "kicking off backup load", v34, 2u);
    MEMORY[0x1865FE2F0](v34, -1, -1);
  }

  sub_185B38670();
  v35 = sub_185B67B6C();
  v36 = sub_185B680AC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_185AC1000, v35, v36, "registering analytics background task", v37, 2u);
    MEMORY[0x1865FE2F0](v37, -1, -1);
  }

  sub_185B37040();
  v38 = v49;
  (*(v4 + 16))(v9, v1 + *(*v1 + 344), v49);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v38);
  }

  else
  {
    v39 = v48;
    (*(v10 + 32))(v48, v9, v3);
    v40 = sub_185B67B6C();
    v41 = sub_185B680AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_185AC1000, v40, v41, "setting up change event service", v42, 2u);
      MEMORY[0x1865FE2F0](v42, -1, -1);
    }

    (*(v2[28] + 32))(v3);
    (*(v10 + 8))(v39, v3);
  }

  v43 = sub_185B67B6C();
  v44 = sub_185B680AC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_185AC1000, v43, v44, "Asking settings authority to generate startup events", v45, 2u);
    MEMORY[0x1865FE2F0](v45, -1, -1);
  }

  v46 = *(*v1 + 328);
  return (*(v2[29] + 32))(v2[19]);
}

uint64_t sub_185B3A7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(*v5 + 184) + 16);
  v7 = *(*v5 + 104);
  v8 = v5 + *(*v5 + 280);
  return v6(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_185B3A868()
{
  v1 = *v0;
  v2 = *(v0 + 16);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 256));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 264));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 272));
  (*(*(v1[13] - 8) + 8))(v0 + *(*v0 + 280));
  (*(*(v1[14] - 8) + 8))(v0 + *(*v0 + 288));
  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 296));
  (*(*(v1[16] - 8) + 8))(v0 + *(*v0 + 304));
  (*(*(v1[17] - 8) + 8))(v0 + *(*v0 + 312));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 320)));
  (*(*(v1[19] - 8) + 8))(v0 + *(*v0 + 328));
  v3 = *(v0 + *(*v0 + 336));

  v4 = *(*v0 + 344);
  v5 = v1[18];
  v6 = sub_185B6829C();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  v7 = *(v0 + *(*v0 + 352));

  v8 = *(v0 + *(*v0 + 360));

  v9 = *(v0 + *(*v0 + 368));

  return v0;
}

uint64_t sub_185B3AC84()
{
  sub_185B3A868();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for AuthAssertion()
{
  result = qword_1EA8CBDD8;
  if (!qword_1EA8CBDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_185B3AD68()
{
  result = sub_185B67A8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_185B3ADF4(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v15 = a1[8];
              result = swift_checkMetadataState();
              if (v16 <= 0x3F)
              {
                v17 = a1[9];
                result = swift_checkMetadataState();
                if (v18 <= 0x3F)
                {
                  v19 = a1[10];
                  result = sub_185B6829C();
                  if (v20 <= 0x3F)
                  {
                    result = sub_185B3BE78();
                    if (v21 <= 0x3F)
                    {
                      v22 = a1[11];
                      result = swift_checkMetadataState();
                      if (v23 <= 0x3F)
                      {
                        result = sub_185ADF590(319, &qword_1ED6F48B0, 0x1E69E9610);
                        if (v24 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                          return 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_185B3AFA0(_DWORD *a1, unsigned int a2, void *a3)
{
  v71 = a3[2];
  v70 = *(v71 - 8);
  v3 = *(a3[3] - 8);
  v4 = *(v3 + 84);
  v69 = v4;
  v73 = *(v70 + 84);
  if (v4 <= v73)
  {
    v4 = *(v70 + 84);
  }

  v5 = a3[5];
  v67 = a3[4];
  v6 = *(v67 - 8);
  v68 = *(v6 + 84);
  if (v68 > v4)
  {
    v4 = *(v6 + 84);
  }

  v65 = a3[5];
  v7 = *(v5 - 8);
  v66 = *(v7 + 84);
  if (v66 > v4)
  {
    v4 = *(v7 + 84);
  }

  v8 = a3[7];
  v9 = *(a3[6] - 8);
  if (*(v9 + 84) > v4)
  {
    v4 = *(v9 + 84);
  }

  v63 = a3[7];
  v10 = *(v8 - 8);
  v64 = *(v10 + 84);
  if (v64 > v4)
  {
    v4 = *(v10 + 84);
  }

  v74 = a3[8];
  v11 = *(v74 - 8);
  v12 = *(a3[9] - 8);
  v62 = *(v11 + 84);
  if (v62 > v4)
  {
    v4 = *(v11 + 84);
  }

  v61 = *(v12 + 84);
  if (v61 <= v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = a3[10];
  v15 = a3[11];
  v59 = v14;
  v16 = *(*(v14 - 8) + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v15 - 8);
  v60 = v17;
  if (v17 > v13)
  {
    v13 = v17;
  }

  v19 = *(v3 + 80);
  v79 = *(*(a3[3] - 8) + 64);
  v80 = *(v6 + 80);
  v72 = *(*(v67 - 8) + 64);
  v78 = *(v7 + 80);
  v77 = *(a3[6] - 8);
  v20 = *(v9 + 80);
  v76 = *(v8 - 8);
  v21 = *(v10 + 80);
  v22 = *(v11 + 80);
  v23 = *(v12 + 80);
  v24 = *(v12 + 64);
  v25 = *(v14 - 8);
  v26 = *(v25 + 80);
  v27 = *(v25 + 64);
  v58 = *(v15 - 8);
  v28 = *(v18 + 80);
  v29 = *(v18 + 64);
  if (v13 <= *(v18 + 84))
  {
    v30 = *(v18 + 84);
  }

  else
  {
    v30 = v13;
  }

  if (v30 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v30;
  }

  if (!v16)
  {
    ++v27;
  }

  if (!a2)
  {
    return 0;
  }

  v32 = a1;
  v33 = *(*(v71 - 8) + 64) + v19;
  v34 = *(*(v5 - 8) + 64) + v20;
  v35 = *(*(a3[6] - 8) + 64) + v21;
  v36 = *(v76 + 64) + v22;
  v37 = *(*(v74 - 8) + 64) + v23;
  v38 = v24 + v26;
  v39 = v27 + 7;
  v40 = v28 + 40;
  if (v31 < a2)
  {
    v41 = ((v29 + ((v40 + ((v39 + ((v38 + ((v37 + ((v36 + ((v35 + ((v34 + ((v72 + v78 + ((v79 + v80 + (v33 & ~v19)) & ~v80)) & ~v78)) & ~v20)) & ~v21)) & ~v22)) & ~v23)) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v42 = v41 & 0xFFFFFFF8;
    if ((v41 & 0xFFFFFFF8) != 0)
    {
      v43 = 2;
    }

    else
    {
      v43 = a2 - v31 + 1;
    }

    if (v43 >= 0x10000)
    {
      v44 = 4;
    }

    else
    {
      v44 = 2;
    }

    if (v43 < 0x100)
    {
      v44 = 1;
    }

    if (v43 < 2)
    {
      v44 = 0;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v45 = *(a1 + v41);
        if (v45)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v45 = *(a1 + v41);
        if (v45)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v44)
    {
      v45 = *(a1 + v41);
      if (v45)
      {
LABEL_44:
        v46 = v45 - 1;
        if (v42)
        {
          v46 = 0;
          v47 = *a1;
        }

        else
        {
          v47 = 0;
        }

        return v31 + (v47 | v46) + 1;
      }
    }
  }

  if (v73 == v31)
  {
    v48 = *(v70 + 48);
LABEL_59:

    return v48(v32);
  }

  v49 = (a1 + v33) & ~v19;
  if (v69 == v31)
  {
    v50 = *(a3[3] - 8);
LABEL_58:
    v48 = *(v50 + 48);
    v32 = v49;
    goto LABEL_59;
  }

  v49 = (v49 + v79 + v80) & ~v80;
  if (v68 == v31)
  {
    v50 = *(v67 - 8);
    goto LABEL_58;
  }

  v49 = (v49 + v72 + v78) & ~v78;
  if (v66 == v31)
  {
    v50 = *(v5 - 8);
    goto LABEL_58;
  }

  v52 = ((v34 + v49) & ~v20);
  if (*(v9 + 84) == v31)
  {
    v48 = *(v9 + 48);
    v32 = v52;
    goto LABEL_59;
  }

  v53 = ((v52 + v35) & ~v21);
  if (v64 == v31)
  {
    v48 = *(v76 + 48);
    v32 = v53;
    goto LABEL_59;
  }

  v49 = (v53 + v36) & ~v22;
  if (v62 == v31)
  {
    v50 = *(v74 - 8);
    goto LABEL_58;
  }

  if (v61 == v31)
  {
    v48 = *(*(a3[9] - 8) + 48);
    v32 = ((v37 + v49) & ~v23);
    goto LABEL_59;
  }

  v54 = (v38 + ((v37 + v49) & ~v23)) & ~v26;
  if (v60 == v31)
  {
    if (v16 >= 2)
    {
      v57 = (*(v25 + 48))(v54, v16, v59);
      if (v57 >= 2)
      {
        return v57 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v55 = (v39 + v54) & 0xFFFFFFFFFFFFFFF8;
  if ((v30 & 0x80000000) != 0)
  {
    v48 = *(v58 + 48);
    v32 = ((v40 + v55) & ~v28);
    goto LABEL_59;
  }

  v56 = *(v55 + 24);
  if (v56 >= 0xFFFFFFFF)
  {
    LODWORD(v56) = -1;
  }

  return (v56 + 1);
}

void sub_185B3B6E4(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v82 = 0;
  v5 = *(a4[2] - 8);
  v72 = v5;
  v78 = *(a4[3] - 8);
  v6 = *(v78 + 84);
  v71 = v6;
  v73 = *(v5 + 84);
  if (v6 <= v73)
  {
    v6 = *(v5 + 84);
  }

  v76 = *(a4[4] - 8);
  v7 = *(a4[5] - 8);
  v75 = v7;
  v70 = *(v76 + 84);
  if (v70 > v6)
  {
    v6 = *(v76 + 84);
  }

  v8 = *(a4[5] - 8);
  v68 = *(v7 + 84);
  if (v68 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = a4[7];
  v74 = *(a4[6] - 8);
  v66 = *(v74 + 84);
  if (v66 > v6)
  {
    v6 = *(v74 + 84);
  }

  v64 = a4[7];
  v10 = *(v9 - 8);
  v65 = *(v10 + 84);
  if (v65 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = a4[9];
  v13 = *(a4[8] - 8);
  v14 = *(v13 + 84);
  v63 = v14;
  if (v14 <= v11)
  {
    v14 = v11;
  }

  v60 = a4[9];
  v15 = *(v12 - 8);
  v61 = *(v15 + 84);
  if (v61 > v14)
  {
    v14 = *(v15 + 84);
  }

  v16 = *(a4[10] - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  v58 = v18;
  if (v18 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v56 = a4[11];
  v20 = *(v56 - 8);
  v21 = *(v5 + 64);
  v22 = *(v78 + 80);
  v69 = v76;
  v23 = *(v76 + 64);
  v67 = v8;
  v24 = *(v75 + 64);
  v25 = *(v74 + 80);
  v26 = *(v10 + 80);
  v27 = *(*(v9 - 8) + 64);
  v62 = v13;
  v28 = *(v13 + 80);
  v29 = *(v13 + 64);
  v59 = *(v12 - 8);
  v30 = *(v15 + 80);
  v31 = *(v8 + 80);
  v32 = *(v59 + 64);
  v57 = *(a4[10] - 8);
  v33 = *(v16 + 80);
  v34 = *(v76 + 80);
  v35 = *(v20 + 80);
  v36 = v21 + v22;
  v77 = *(v78 + 64);
  v37 = v23 + v31 + ((v77 + v34 + ((v21 + v22) & ~v22)) & ~v34);
  if (v19 <= *(v20 + 84))
  {
    v38 = *(v20 + 84);
  }

  else
  {
    v38 = v19;
  }

  if (v38 <= 0x7FFFFFFF)
  {
    v39 = 0x7FFFFFFF;
  }

  else
  {
    v39 = v38;
  }

  v40 = v24 + v25;
  v41 = *(v74 + 64) + v26;
  v42 = v27 + v28;
  v43 = v29 + v30;
  v44 = (v32 + v33 + ((v29 + v30 + ((v27 + v28 + ((v41 + ((v24 + v25 + (v37 & ~v31)) & ~v25)) & ~v26)) & ~v28)) & ~v30)) & ~v33;
  if (v17)
  {
    v45 = *(*(a4[10] - 8) + 64);
  }

  else
  {
    v45 = *(*(a4[10] - 8) + 64) + 1;
  }

  v46 = ((*(*(v56 - 8) + 64) + ((v35 + 40 + ((v45 + 7 + v44) & 0xFFFFFFFFFFFFFFF8)) & ~v35) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v39 < a3)
  {
    if (((*(*(v56 - 8) + 64) + ((v35 + 40 + ((v45 + 7 + v44) & 0xFFFFFFF8)) & ~v35) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v47 = a3 - v39 + 1;
    }

    else
    {
      v47 = 2;
    }

    if (v47 >= 0x10000)
    {
      v48 = 4;
    }

    else
    {
      v48 = 2;
    }

    if (v47 < 0x100)
    {
      v48 = 1;
    }

    if (v47 >= 2)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v82 = v49;
  }

  v50 = a2;
  if (a2 > v39)
  {
    if (v46)
    {
      v51 = 1;
    }

    else
    {
      v51 = a2 - v39;
    }

    if (v46)
    {
      v52 = ~v39 + a2;
      bzero(a1, v46);
      *a1 = v52;
    }

    if (v82 > 1)
    {
      if (v82 == 2)
      {
        *(a1 + v46) = v51;
      }

      else
      {
        *(a1 + v46) = v51;
      }
    }

    else if (v82)
    {
      *(a1 + v46) = v51;
    }

    return;
  }

  if (v82 > 1)
  {
    if (v82 != 2)
    {
      *(a1 + v46) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_61;
    }

    *(a1 + v46) = 0;
    goto LABEL_60;
  }

  if (!v82)
  {
LABEL_60:
    if (!a2)
    {
      return;
    }

    goto LABEL_61;
  }

  *(a1 + v46) = 0;
  if (!a2)
  {
    return;
  }

LABEL_61:
  if (v73 == v39)
  {
    v53 = *(v72 + 56);
    v54 = a1;
  }

  else
  {
    v54 = (a1 + v36) & ~v22;
    if (v71 == v39)
    {
      v53 = *(v78 + 56);
    }

    else if (v70 == v39)
    {
      v53 = *(v69 + 56);
      v54 = (v54 + v77 + v34) & ~v34;
    }

    else
    {
      v54 = (((v54 + v77 + v34) & ~v34) + v23 + v31) & ~v31;
      if (v68 == v39)
      {
        v53 = *(v67 + 56);
      }

      else
      {
        v54 = (v40 + v54) & ~v25;
        if (v66 == v39)
        {
          v53 = *(v74 + 56);
        }

        else
        {
          v54 = (v41 + v54) & ~v26;
          if (v65 == v39)
          {
            v53 = *(v10 + 56);
          }

          else
          {
            v54 = (v42 + v54) & ~v28;
            if (v63 == v39)
            {
              v53 = *(v62 + 56);
            }

            else
            {
              v54 = (v43 + v54) & ~v30;
              if (v61 == v39)
              {
                v53 = *(v59 + 56);
              }

              else
              {
                v54 = (v32 + v33 + v54) & ~v33;
                if (v58 == v39)
                {
                  v53 = *(v57 + 56);
                  v50 = a2 + 1;
                }

                else
                {
                  v55 = (v45 + 7 + v54) & 0xFFFFFFFFFFFFFFF8;
                  if ((v38 & 0x80000000) == 0)
                  {
                    if ((a2 & 0x80000000) != 0)
                    {
                      *(v55 + 8) = 0u;
                      *(v55 + 24) = 0u;
                      *v55 = a2 & 0x7FFFFFFF;
                    }

                    else
                    {
                      *(v55 + 24) = a2 - 1;
                    }

                    return;
                  }

                  v53 = *(v20 + 56);
                  v54 = (v35 + 40 + v55) & ~v35;
                }
              }
            }
          }
        }
      }
    }
  }

  v53(v54, v50);
}

unint64_t sub_185B3BE78()
{
  result = qword_1EA8CBBF8;
  if (!qword_1EA8CBBF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA8CBBF8);
  }

  return result;
}

__n128 sub_185B3C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  sub_185B40C84(a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12);
  return result;
}

uint64_t sub_185B3C1A0()
{
  v1 = *v0;
  sub_185B40E08();
}

unint64_t sub_185B3C248()
{
  result = qword_1EA8CD440;
  if (!qword_1EA8CD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD440);
  }

  return result;
}

uint64_t sub_185B3C2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if (*(a1 + 72) == 1)
  {
    result = sub_185B3C500();
    if (result != a2)
    {
      v13[3] = a3;
      v13[0] = a2;
      v7 = *(a1 + 16);
      v13[8] = *__swift_project_boxed_opaque_existential_1(v13, a3);
      v8 = v7;
      v9 = sub_185B685BC();
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);

      v12 = sub_185B67E1C();

      [v8 setObject:v9 forKey:v12];

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }
  }

  return result;
}

double sub_185B3C3CC()
{
  swift_beginAccess();
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  v4 = sub_185B67E1C();

  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
    sub_185AD093C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  v7 = &v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = (v0 + 56);
    swift_beginAccess();
  }

  return *v7;
}

uint64_t sub_185B3C500()
{
  swift_beginAccess();
  if (*(v0 + 72) != 1)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  v4 = sub_185B67E1C();

  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
    sub_185AD093C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  v7 = &v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = (v0 + 56);
    swift_beginAccess();
  }

  return *v7;
}

uint64_t sub_185B3C640()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_185B3C678(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[2];
  sub_185B373A4(a1, a2);
  return v3();
}

uint64_t sub_185B3C6B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_185B6866C();

    sub_185B67EEC();
    v17 = sub_185B686AC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_185B6859C() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

char *sub_185B3C8D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_185B3C9E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD570, &qword_185B6E8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_185B3CB5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD210, &qword_185B6E8A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

void *sub_185B3CC98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 < a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v12 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_185B3CE08(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4D8, &qword_185B6E858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4E0, &unk_185B6E860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_185B3CF60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4D0, &unk_185B6E848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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