uint64_t sub_1BBBEAEE4(uint64_t a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = sub_1BBBE9868();
  if (!v6)
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v18 = 3;
    *(v18 + 8) = 0;
    result = swift_willThrow();
LABEL_8:
    v21 = *MEMORY[0x1E69E9840];
    return result;
  }

  v7 = v6;
  v22[0] = a2;
  v22[1] = a3;
  v8 = sub_1BBBF51D4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB34();
  v11 = sub_1BBBF51B4();
  if (!v3)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_1BBBF5224();
    sub_1BBBBBE78(v13, v14);

    v22[0] = 0;
    v16 = [v7 removeWithParameters:v15 error:v22];

    if (v16)
    {
      v17 = v22[0];
    }

    else
    {
      v20 = v22[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    result = swift_unknownObjectRelease();
    goto LABEL_8;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BBBEB088(uint64_t a1, void *a2, void *a3, char a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = sub_1BBBE9868();
  if (!v8)
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 0;
    result = swift_willThrow();
LABEL_8:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = v8;
  v23[0] = a2;
  v23[1] = a3;
  v24 = a4;
  v10 = sub_1BBBF51D4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  sub_1BBBF51C4();
  sub_1BBBEDB98();
  v13 = sub_1BBBF51B4();
  if (!v4)
  {
    v15 = v13;
    v16 = v14;

    v17 = sub_1BBBF5224();
    sub_1BBBBBE78(v15, v16);

    v23[0] = 0;
    LOBYTE(v15) = [v9 setStateWithParameters:v17 error:v23];

    if (v15)
    {
      v18 = v23[0];
    }

    else
    {
      v21 = v23[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }

    result = swift_unknownObjectRelease();
    goto LABEL_8;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1BBBEB24C(void *a1@<X1>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v7 = sub_1BBBE9868();
  if (!v7)
  {
    sub_1BBBEDAE0();
    swift_allocError();
    *v27 = 3;
    *(v27 + 8) = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v8 = v7;
  v32[0] = a1;
  v32[1] = a2;
  v9 = sub_1BBBF51D4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB34();
  v12 = sub_1BBBF51B4();
  if (!v3)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_1BBBF5224();
    sub_1BBBBBE78(v14, v15);

    v32[0] = 0;
    v17 = [v8 supportsAlarmKitWithParameters:v16 error:v32];

    v18 = v32[0];
    if (!v17)
    {
      v28 = v32[0];
      sub_1BBBF51F4();

      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v19 = sub_1BBBF51A4();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = v18;
    sub_1BBBF5194();
    v23 = sub_1BBBF5234();
    v25 = v24;
    sub_1BBBED968();
    sub_1BBBF5184();
    sub_1BBBBBE78(v23, v25);

    v26 = v32[0];
    if (LOBYTE(v32[0]) != 2)
    {
      swift_unknownObjectRelease();

      *a3 = v26 & 1;
LABEL_9:
      v29 = *MEMORY[0x1E69E9840];
      return;
    }

    __break(1u);
  }

  v30 = swift_unexpectedError();
  __break(1u);
  sub_1BBBBBE78(v30, v31);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1BBBEB4C4(uint64_t a1, int a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADD0, "P\x1B");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v49 - v6;
  v7 = sub_1BBBF5284();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADD8, &qword_1BBBF9EE8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v61 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v49 - v17;
  v18 = *(a1 + 64);
  v49 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v52 = v8 + 16;
  v60 = (v8 + 32);
  v63 = (v4 + 48);
  v64 = (v4 + 56);
  v54 = v8;
  v55 = a1;
  v57 = (v8 + 8);
  v23 = v16;

  v25 = 0;
  v62 = v23;
  v51 = v3;
  if (v21)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v30 = v29 | (v26 << 6);
      v32 = v54;
      v31 = v55;
      v33 = v53;
      (*(v54 + 16))(v53, *(v55 + 48) + *(v54 + 72) * v30, v7);
      v34 = *(v3 + 48);
      v35 = *(v32 + 32);
      v65 = *(*(v31 + 56) + 16 * v30);
      v23 = v62;
      v35(v62, v33, v7);
      *(v23 + v34) = v65;
      v36 = *v64;
      (*v64)(v23, 0, 1, v3);

      v28 = v26;
LABEL_13:
      v37 = *v63;
      v38 = 1;
      if ((*v63)(v23, 1, v3) != 1)
      {
        *&v65 = v28;
        v39 = *(v3 + 48);
        v56 = v36;
        v40 = *v60;
        (*v60)(v50, v23, v7);
        v41 = swift_allocObject();
        *(v41 + 16) = *(v62 + v39);
        v42 = &v61[*(v3 + 48)];
        v40();
        v36 = v56;
        v38 = 0;
        *v42 = sub_1BBBED8EC;
        v42[1] = v41;
        v28 = v65;
        v23 = v62;
        v3 = v51;
      }

      v43 = v61;
      v36(v61, v38, 1, v3);
      v44 = v43;
      v45 = v59;
      sub_1BBBDDB80(v44, v59, &qword_1EBC9ADD8, &qword_1BBBF9EE8);
      if (v37(v45, 1, v3) == 1)
      {
      }

      v46 = v45 + *(v3 + 48);
      v47 = *v46;
      v48 = *(v46 + 8);
      v66[0] = v58;
      v47(v66);

      result = (*v57)(v45, v7);
      v25 = v28;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v22 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v22;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v22)
      {
        v36 = *v64;
        (*v64)(v23, 1, 1, v3);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v49 + 8 * v26);
      ++v25;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BBBEBA54()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1BBBF53A4();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection])
  {
    v9 = sub_1BBBF1AB8();
    if (v9)
    {
      v10 = *&v0[v8];
      *&v0[v8] = v9;
      v11 = v9;

      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1BBBEDB88;
      *(v13 + 24) = v12;
      aBlock[4] = sub_1BBBDD794;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BBBF1F18;
      aBlock[3] = &block_descriptor_29_0;
      v14 = _Block_copy(aBlock);
      v15 = v0;

      [v11 configureConnection_];
      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if ((v14 & 1) == 0)
      {
        sub_1BBBEC160();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1BBBEBCC4(void *a1, uint64_t a2)
{
  v4 = sub_1BBBF53E4();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v19 = sub_1BBBE8500;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBE8578;
  v18 = &block_descriptor_38_0;
  v8 = _Block_copy(&v15);
  v9 = &unk_1F3ABBBB0;

  v10 = [v6 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v5 setServer_];
  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1BBBEC04C;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_41_0;
  v12 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v12);
  v19 = sub_1BBBEC058;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_44_0;
  v13 = _Block_copy(&v15);
  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v19 = sub_1BBBEC064;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1BBBF1E88;
  v18 = &block_descriptor_47_0;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

void sub_1BBBEC070(uint64_t a1, const char *a2)
{
  if (qword_1EBC9A558 != -1)
  {
    swift_once();
  }

  v3 = sub_1BBBF5324();
  __swift_project_value_buffer(v3, qword_1EBCA4730);
  oslog = sub_1BBBF5304();
  v4 = sub_1BBBF54C4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBBB7000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFB18360](v5, -1, -1);
  }
}

void sub_1BBBEC160()
{
  v1 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_serverStartupToken;
  swift_beginAccess();
  if (*(v0 + v1) == -1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BBBEDB90;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BBBE85CC;
    aBlock[3] = &block_descriptor_35_0;
    v4 = _Block_copy(aBlock);

    v5 = sub_1BBBF5404();
    swift_beginAccess();
    LODWORD(v2) = notify_register_dispatch((v5 + 32), (v0 + v1), v2, v4);
    swift_endAccess();
    _Block_release(v4);

    if (v2)
    {
      if (qword_1EBC9A558 != -1)
      {
        swift_once();
      }

      v6 = sub_1BBBF5324();
      __swift_project_value_buffer(v6, qword_1EBCA4730);
      v7 = sub_1BBBF5304();
      v8 = sub_1BBBF54D4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBBB7000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
        MEMORY[0x1BFB18360](v9, -1, -1);
      }
    }
  }
}

void sub_1BBBEC374()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1BBBF53A4();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1BBBEBA54();
  v8 = *(v0 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_connection);
  if (!v8)
  {
    return;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1BBBF5584();
    swift_unknownObjectRelease();

    sub_1BBBC22E0(v13, &qword_1EBC9B280, &qword_1BBBF9730);
    return;
  }

  memset(v13, 0, sizeof(v13));
  sub_1BBBC22E0(v13, &qword_1EBC9B280, &qword_1BBBF9730);
  [v1 activate];
  if (qword_1EBC9A558 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = sub_1BBBF5324();
  __swift_project_value_buffer(v9, qword_1EBCA4730);
  v10 = sub_1BBBF5304();
  v11 = sub_1BBBF54F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BBBB7000, v10, v11, "Activated connection", v12, 2u);
    MEMORY[0x1BFB18360](v12, -1, -1);
  }
}

void sub_1BBBEC5D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EBC9A558 != -1)
    {
      swift_once();
    }

    v2 = sub_1BBBF5324();
    __swift_project_value_buffer(v2, qword_1EBCA4730);
    v3 = sub_1BBBF5304();
    v4 = sub_1BBBF54F4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBBB7000, v3, v4, "Server has restarted", v5, 2u);
      MEMORY[0x1BFB18360](v5, -1, -1);
    }

    sub_1BBBEC374();
    v6 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges;
    if (v1[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_isSubscribedToStateChanges] == 1)
    {
      v7 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_stateObservers;
      swift_beginAccess();
      if (*(*&v1[v7] + 16))
      {
        sub_1BBBE95B8(&v8);
        v1[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_observedState] = v8;
      }

      else
      {
        v1[v6] = 0;
        v1[OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_observedState] = 0;
      }
    }
  }
}

uint64_t sub_1BBBEC8A8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_1BBBEC908(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1BBBEC918(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1BBBEC98C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1BBBF5284();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v46 = a2;
  result = sub_1BBBF5604();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v14;
    v51 = v10;
    v42 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v43 = (v11 + 16);
    v44 = v11;
    v47 = (v11 + 32);
    v25 = result + 64;
    v45 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v49 = *(v11 + 72);
      v32 = v31 + v49 * v30;
      if (v46)
      {
        (*v47)(v50, v32, v51);
        v48 = *(*(v15 + 56) + 16 * v30);
      }

      else
      {
        (*v43)(v50, v32, v51);
        v48 = *(*(v15 + 56) + 16 * v30);
      }

      v33 = *(v18 + 40);
      sub_1BBBEDD5C(&qword_1EBC9B310, MEMORY[0x1E69695A8]);
      result = sub_1BBBF53B4();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v11 = v44;
        v15 = v45;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v11 = v44;
      v15 = v45;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v47)(*(v18 + 48) + v49 * v26, v50, v51);
      *(*(v18 + 56) + 16 * v26) = v48;
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v7 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v42;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

unint64_t sub_1BBBECD64(int64_t a1, uint64_t a2)
{
  v43 = sub_1BBBF5284();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1BBBF55A4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1BBBEDD5C(&qword_1EBC9B310, MEMORY[0x1E69695A8]);
      v26 = sub_1BBBF53B4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1BBBED098(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v33 = a5;
  v34 = a6;
  v7 = v6;
  v35 = a1;
  v11 = sub_1BBBF5284();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1BBBE46B8(a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_1BBBED340(v33, v34);
      goto LABEL_9;
    }

    sub_1BBBEC98C(v21, a4 & 1, v33, v34);
    v24 = *v7;
    v25 = sub_1BBBE46B8(a3);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1BBBF57C4();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = v35;
  v28 = *v7;
  if (v22)
  {
    v29 = (v28[7] + 16 * v18);
    v30 = v29[1];
    *v29 = v35;
    v29[1] = a2;
  }

  else
  {
    (*(v12 + 16))(v15, a3, v11);
    return sub_1BBBED280(v18, v15, v27, a2, v28);
  }
}

uint64_t sub_1BBBED280(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1BBBF5284();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_1BBBED340(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1BBBF5284();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1BBBF55F4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v5;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v23 *= 16;
        v28 = v37;
        v29 = *(v37 + 48);
        v30 = *(v24 + 32);
        v39 = *(*(v8 + 56) + v23);
        v30(v29 + v25, v26, v27);
        *(*(v28 + 56) + v23) = v39;

        v18 = v40;
      }

      while (v40);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v32;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

uint64_t sub_1BBBED5C0(char *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = sub_1BBBF5354();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BBBF5384();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue_stateObservers;
  swift_beginAccess();
  v15 = *(a2 + v14);
  v16 = *(a2 + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_calloutQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v13;
  aBlock[4] = sub_1BBBED8C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBE6AD0;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);

  sub_1BBBF5364();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1BBBEDD5C(&qword_1EBC9ADB8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBDD6AC(&qword_1EBC9ADC8, &qword_1EBC9ADC0, &qword_1BBBF9EE0);
  sub_1BBBF5594();
  MEMORY[0x1BFB17A50](0, v12, v8, v18);
  _Block_release(v18);
  (*(v22 + 8))(v8, v5);
  (*(v9 + 8))(v12, v21);

  return (*(v23 + 16))(v23, 0);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BBBED8EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1BBBED914()
{
  result = qword_1EBC9B200;
  if (!qword_1EBC9B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B200);
  }

  return result;
}

unint64_t sub_1BBBED968()
{
  result = qword_1EBC9B210;
  if (!qword_1EBC9B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B210);
  }

  return result;
}

unint64_t sub_1BBBED9BC()
{
  result = qword_1EBC9B218;
  if (!qword_1EBC9B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B218);
  }

  return result;
}

unint64_t sub_1BBBEDA10()
{
  result = qword_1EBC9B220;
  if (!qword_1EBC9B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B220);
  }

  return result;
}

uint64_t sub_1BBBEDA64(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1BBBEDA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBEDAE0()
{
  result = qword_1EBC9B270;
  if (!qword_1EBC9B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B270);
  }

  return result;
}

unint64_t sub_1BBBEDB34()
{
  result = qword_1EBC9B278;
  if (!qword_1EBC9B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B278);
  }

  return result;
}

unint64_t sub_1BBBEDB98()
{
  result = qword_1EBC9B2F8;
  if (!qword_1EBC9B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B2F8);
  }

  return result;
}

uint64_t sub_1BBBEDBEC(_BYTE *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B300, &qword_1BBBFB188) - 8) + 80);

  return sub_1BBBE8C58(a1);
}

void sub_1BBBEDC88(uint64_t a1)
{
  v3 = *(sub_1BBBF5284() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BBBE8D58(a1, v4);
}

uint64_t sub_1BBBEDCF8()
{
  v1 = *(sub_1BBBF5284() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BBBEA1AC(v2, v3);
}

uint64_t sub_1BBBEDD5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBBEDDA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BBBEDDCC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  return v2(&v4);
}

void sub_1BBBEDE30(id a1, char a2)
{
  if (a2)
  {
  }
}

BOOL sub_1BBBEDE94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B260, &qword_1BBBFB0C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  sub_1BBBC22E0(a2, &unk_1EBC9B260, &qword_1BBBFB0C0);
  v10 = sub_1BBBF51A4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v13 = type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm(0);
  v14 = sub_1BBBF5234();
  v16 = v15;
  sub_1BBBF1830(&qword_1EBC9B038, type metadata accessor for AlarmXPCServiceParameters.ScheduleAlarm);
  sub_1BBBF5184();

  sub_1BBBBBE78(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1BBBDDB80(v9, a2, &unk_1EBC9B260, &qword_1BBBFB0C0);
  sub_1BBBC16A4(a2, v7, &unk_1EBC9B260, &qword_1BBBFB0C0);
  v18 = (*(v17 + 48))(v7, 1, v13) != 1;
  sub_1BBBC22E0(v7, &unk_1EBC9B260, &qword_1BBBFB0C0);
  return v18;
}

BOOL sub_1BBBEE0D0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B250, &unk_1BBBFB160);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  sub_1BBBC22E0(a2, &unk_1EBC9B250, &unk_1BBBFB160);
  v10 = sub_1BBBF51A4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v13 = type metadata accessor for AlarmXPCServiceParameters.AlarmID(0);
  v14 = sub_1BBBF5234();
  v16 = v15;
  sub_1BBBF1830(&qword_1EBC9B048, type metadata accessor for AlarmXPCServiceParameters.AlarmID);
  sub_1BBBF5184();

  sub_1BBBBBE78(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1BBBDDB80(v9, a2, &unk_1EBC9B250, &unk_1BBBFB160);
  sub_1BBBC16A4(a2, v7, &unk_1EBC9B250, &unk_1BBBFB160);
  v18 = (*(v17 + 48))(v7, 1, v13) != 1;
  sub_1BBBC22E0(v7, &unk_1EBC9B250, &unk_1BBBFB160);
  return v18;
}

BOOL sub_1BBBEE30C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B240, &unk_1BBBFB0B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  sub_1BBBC22E0(a2, &unk_1EBC9B240, &unk_1BBBFB0B0);
  v10 = sub_1BBBF51A4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v13 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID(0);
  v14 = sub_1BBBF5234();
  v16 = v15;
  sub_1BBBF1830(&qword_1EBC9B058, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerID);
  sub_1BBBF5184();

  sub_1BBBBBE78(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1BBBDDB80(v9, a2, &unk_1EBC9B240, &unk_1BBBFB0B0);
  sub_1BBBC16A4(a2, v7, &unk_1EBC9B240, &unk_1BBBFB0B0);
  v18 = (*(v17 + 48))(v7, 1, v13) != 1;
  sub_1BBBC22E0(v7, &unk_1EBC9B240, &unk_1BBBFB0B0);
  return v18;
}

BOOL sub_1BBBEE548(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B230, &unk_1BBBFB150);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  sub_1BBBC22E0(a2, &unk_1EBC9B230, &unk_1BBBFB150);
  v10 = sub_1BBBF51A4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v13 = type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType(0);
  v14 = sub_1BBBF5234();
  v16 = v15;
  sub_1BBBF1830(&qword_1EBC9B068, type metadata accessor for AlarmXPCServiceParameters.AlarmIDOwnerIDActionType);
  sub_1BBBF5184();

  sub_1BBBBBE78(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1BBBDDB80(v9, a2, &unk_1EBC9B230, &unk_1BBBFB150);
  sub_1BBBC16A4(a2, v7, &unk_1EBC9B230, &unk_1BBBFB150);
  v18 = (*(v17 + 48))(v7, 1, v13) != 1;
  sub_1BBBC22E0(v7, &unk_1EBC9B230, &unk_1BBBFB150);
  return v18;
}

BOOL sub_1BBBEE784(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  sub_1BBBC22E0(a2, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  v10 = sub_1BBBF51A4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v13 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  v14 = sub_1BBBF5234();
  v16 = v15;
  sub_1BBBF1830(&qword_1EBC9B078, type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm);
  sub_1BBBF5184();

  sub_1BBBBBE78(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1BBBDDB80(v9, a2, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  sub_1BBBC16A4(a2, v7, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  v18 = (*(v17 + 48))(v7, 1, v13) != 1;
  sub_1BBBC22E0(v7, &unk_1EBC9AE50, &unk_1BBBFB0A0);
  return v18;
}

BOOL sub_1BBBEEA00(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = *a2;

  v6 = sub_1BBBF51A4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v9 = sub_1BBBF5234();
  v11 = v10;
  a3();
  sub_1BBBF5184();

  sub_1BBBBBE78(v9, v11);
  *a2 = v13;
  return v13 != 0;
}

BOOL sub_1BBBEEAF0(uint64_t a1, uint64_t *a2)
{
  sub_1BBBEDA64(*a2, a2[1]);
  v3 = sub_1BBBF51A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v6 = sub_1BBBF5234();
  v8 = v7;
  sub_1BBBEDA10();
  sub_1BBBF5184();

  sub_1BBBBBE78(v6, v8);
  *a2 = v10;
  a2[1] = v11;
  return v11 != 1;
}

BOOL sub_1BBBEEBDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);

  v4 = sub_1BBBF51A4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v7 = sub_1BBBF5234();
  v9 = v8;
  sub_1BBBED9BC();
  sub_1BBBF5184();

  sub_1BBBBBE78(v7, v9);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  return v12 != 0;
}

BOOL sub_1BBBEECD4(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1BBBF51A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v6 = sub_1BBBF5234();
  v8 = v7;
  sub_1BBBED914();
  sub_1BBBF5184();

  sub_1BBBBBE78(v6, v8);
  *a2 = v10;
  return v10 != 3;
}

BOOL sub_1BBBEEDB4(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1BBBF51A4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v6 = sub_1BBBF5234();
  v8 = v7;
  sub_1BBBED968();
  sub_1BBBF5184();

  sub_1BBBBBE78(v6, v8);
  *a2 = v10;
  return v10 != 2;
}

_BYTE *AuthorizationServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

AlarmKit::AuthorizationXPCServiceParameter::BundleID __swiftcall AuthorizationXPCServiceParameter.BundleID.init(bundleID:)(Swift::String_optional bundleID)
{
  object = bundleID.value._object;
  countAndFlagsBits = bundleID.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.bundleID.value._object = v6;
  result.bundleID.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1BBBEEEF0()
{
  if (qword_1EDD45590 != -1)
  {
    swift_once();
  }

  qword_1EDD45548 = qword_1EDD45598;
  unk_1EDD45550 = unk_1EDD455A0;
  qword_1EDD45558 = qword_1EDD455A8;
  unk_1EDD45560 = unk_1EDD455B0;
}

uint64_t static AuthorizationServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45540 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD45550;
  v2 = qword_1EDD45558;
  v3 = unk_1EDD45560;
  *a1 = qword_1EDD45548;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BBBEF014@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45540 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD45550;
  v2 = qword_1EDD45558;
  v3 = unk_1EDD45560;
  *a1 = qword_1EDD45548;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

AlarmKit::AuthorizationServiceError::Code_optional __swiftcall AuthorizationServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t AuthorizationServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    v2 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v3;
    swift_getErrorValue();
    *(inited + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0);
    v5 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBC22E0(inited + 32, &qword_1EBC9AF30, &qword_1BBBFA128);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v7);
  }
}

uint64_t sub_1BBBEF240(uint64_t a1)
{
  v2 = sub_1BBBF17DC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BBBEF27C(uint64_t a1)
{
  v2 = sub_1BBBF17DC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t AuthorizationXPCServiceParameter.BundleID.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AuthorizationXPCServiceParameter.BundleID.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BBBEF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBEF3E0(uint64_t a1)
{
  v2 = sub_1BBBF0C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBEF41C(uint64_t a1)
{
  v2 = sub_1BBBF0C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceParameter.BundleID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B330, &qword_1BBBFB1B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C10();
  sub_1BBBF58A4();
  sub_1BBBF5704();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AuthorizationXPCServiceParameter.BundleID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B340, &qword_1BBBFB1B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C10();
  sub_1BBBF5894();
  if (!v2)
  {
    v11 = sub_1BBBF5654();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBEF720(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B330, &qword_1BBBFB1B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C10();
  sub_1BBBF58A4();
  sub_1BBBF5704();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BBBEF85C()
{
  v9 = *v0;
  v1 = sub_1BBBF51D4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB34();
  v4 = sub_1BBBF51B4();
  v6 = v5;
  v7 = sub_1BBBF5224();
  sub_1BBBBBE78(v4, v6);

  return v7;
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BBBEF9E4()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x4449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBEFA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBEFAF4(uint64_t a1)
{
  v2 = sub_1BBBF0C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBEFB30(uint64_t a1)
{
  v2 = sub_1BBBF0C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B348, &qword_1BBBFB1C0);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C64();
  sub_1BBBF58A4();
  v17 = 0;
  sub_1BBBF5734();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_1BBBF0CB8();
    sub_1BBBF5774();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t AuthorizationXPCServiceParameter.BundleIDState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B360, &qword_1BBBFB1C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0C64();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1BBBF5684();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1BBBF0D0C();
  sub_1BBBF56C4();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBEFF24()
{
  v9 = *v0;
  v10 = v0[1];
  v11 = *(v0 + 16);
  v1 = sub_1BBBF51D4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBEDB98();
  v4 = sub_1BBBF51B4();
  v6 = v5;
  v7 = sub_1BBBF5224();
  sub_1BBBBBE78(v4, v6);

  return v7;
}

uint64_t sub_1BBBF004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBF00D0(uint64_t a1)
{
  v2 = sub_1BBBF0D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBF010C(uint64_t a1)
{
  v2 = sub_1BBBF0D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceResponse.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B370, &qword_1BBBFB1D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0D60();
  sub_1BBBF58A4();
  v12 = v8;
  sub_1BBBF0CB8();
  sub_1BBBF5774();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AuthorizationXPCServiceResponse.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B380, &qword_1BBBFB1D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0D60();
  sub_1BBBF5894();
  if (!v2)
  {
    sub_1BBBF0D0C();
    sub_1BBBF56C4();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBF0430()
{
  v9 = *v0;
  v1 = sub_1BBBF51D4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBF0FCC();
  v4 = sub_1BBBF51B4();
  v6 = v5;
  v7 = sub_1BBBF5224();
  sub_1BBBBBE78(v4, v6);

  return v7;
}

uint64_t sub_1BBBF0560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001BBC013B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BBBF57A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BBBF05F4(uint64_t a1)
{
  v2 = sub_1BBBF0DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBF0630(uint64_t a1)
{
  v2 = sub_1BBBF0DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationXPCServiceResponse.SupportsAlarmKit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B388, &qword_1BBBFB1E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0DB4();
  sub_1BBBF58A4();
  sub_1BBBF5744();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AuthorizationXPCServiceResponse.SupportsAlarmKit.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B398, &qword_1BBBFB1E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0DB4();
  sub_1BBBF5894();
  if (!v2)
  {
    v11 = sub_1BBBF5694();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBF0914(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B388, &qword_1BBBFB1E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBF0DB4();
  sub_1BBBF58A4();
  sub_1BBBF5744();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BBBF0A4C()
{
  v9 = *v0;
  v1 = sub_1BBBF51D4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1BBBF51C4();
  sub_1BBBF1108();
  v4 = sub_1BBBF51B4();
  v6 = v5;
  v7 = sub_1BBBF5224();
  sub_1BBBBBE78(v4, v6);

  return v7;
}

uint64_t sub_1BBBF0B20(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_1BBBF51A4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v10 = sub_1BBBF5234();
  v12 = v11;
  a5();
  sub_1BBBF5184();
  sub_1BBBBBE78(v10, v12);

  *a2 = v14;
  return result;
}

unint64_t sub_1BBBF0C10()
{
  result = qword_1EBC9B338;
  if (!qword_1EBC9B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B338);
  }

  return result;
}

unint64_t sub_1BBBF0C64()
{
  result = qword_1EBC9B350;
  if (!qword_1EBC9B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B350);
  }

  return result;
}

unint64_t sub_1BBBF0CB8()
{
  result = qword_1EBC9B358;
  if (!qword_1EBC9B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B358);
  }

  return result;
}

unint64_t sub_1BBBF0D0C()
{
  result = qword_1EBC9B368;
  if (!qword_1EBC9B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B368);
  }

  return result;
}

unint64_t sub_1BBBF0D60()
{
  result = qword_1EBC9B378;
  if (!qword_1EBC9B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B378);
  }

  return result;
}

unint64_t sub_1BBBF0DB4()
{
  result = qword_1EBC9B390;
  if (!qword_1EBC9B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B390);
  }

  return result;
}

unint64_t sub_1BBBF0E0C()
{
  result = qword_1EBC9B3A0;
  if (!qword_1EBC9B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3A0);
  }

  return result;
}

unint64_t sub_1BBBF0EA4()
{
  result = qword_1EBC9B3A8;
  if (!qword_1EBC9B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3A8);
  }

  return result;
}

unint64_t sub_1BBBF0F38()
{
  result = qword_1EBC9B3B0;
  if (!qword_1EBC9B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3B0);
  }

  return result;
}

unint64_t sub_1BBBF0FCC()
{
  result = qword_1EBC9B3B8;
  if (!qword_1EBC9B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3B8);
  }

  return result;
}

unint64_t sub_1BBBF1020()
{
  result = qword_1EBC9B3C0;
  if (!qword_1EBC9B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3C0);
  }

  return result;
}

uint64_t sub_1BBBF10B4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1BBBF1108()
{
  result = qword_1EBC9B3C8;
  if (!qword_1EBC9B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3C8);
  }

  return result;
}

unint64_t sub_1BBBF115C()
{
  result = qword_1EBC9B3D0;
  if (!qword_1EBC9B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3D0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BBBF1214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BBBF125C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationXPCServiceResponse.SupportsAlarmKit(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1BBBF13C0()
{
  result = qword_1EBC9B3D8;
  if (!qword_1EBC9B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3D8);
  }

  return result;
}

unint64_t sub_1BBBF1418()
{
  result = qword_1EBC9B3E0;
  if (!qword_1EBC9B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3E0);
  }

  return result;
}

unint64_t sub_1BBBF1470()
{
  result = qword_1EBC9B3E8;
  if (!qword_1EBC9B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3E8);
  }

  return result;
}

unint64_t sub_1BBBF14C8()
{
  result = qword_1EBC9B3F0;
  if (!qword_1EBC9B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3F0);
  }

  return result;
}

unint64_t sub_1BBBF1520()
{
  result = qword_1EBC9B3F8;
  if (!qword_1EBC9B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B3F8);
  }

  return result;
}

unint64_t sub_1BBBF1578()
{
  result = qword_1EBC9B400;
  if (!qword_1EBC9B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B400);
  }

  return result;
}

unint64_t sub_1BBBF15D0()
{
  result = qword_1EBC9B408;
  if (!qword_1EBC9B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B408);
  }

  return result;
}

unint64_t sub_1BBBF1628()
{
  result = qword_1EBC9B410;
  if (!qword_1EBC9B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B410);
  }

  return result;
}

unint64_t sub_1BBBF1680()
{
  result = qword_1EBC9B418;
  if (!qword_1EBC9B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B418);
  }

  return result;
}

unint64_t sub_1BBBF16D8()
{
  result = qword_1EBC9B420;
  if (!qword_1EBC9B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B420);
  }

  return result;
}

unint64_t sub_1BBBF1730()
{
  result = qword_1EBC9B428;
  if (!qword_1EBC9B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B428);
  }

  return result;
}

unint64_t sub_1BBBF1788()
{
  result = qword_1EBC9B430;
  if (!qword_1EBC9B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B430);
  }

  return result;
}

unint64_t sub_1BBBF17DC()
{
  result = qword_1EBC9B438;
  if (!qword_1EBC9B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B438);
  }

  return result;
}

uint64_t sub_1BBBF1830(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BBBF18D0()
{

  v0 = objc_opt_self();
  if (qword_1EDD455C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD455D8;
  v2 = unk_1EDD455E0;
  v3 = sub_1BBBF53E4();
  v4 = sub_1BBBF53E4();
  v5 = [v0 endpointForMachName:v3 service:v4 instance:0];

  if (v5)
  {

    v6 = [objc_opt_self() connectionWithEndpoint_];
    if (v6)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BBBFA110;
    sub_1BBBF55B4();

    MEMORY[0x1BFB17930](v1, v2);
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 32) = 0xD000000000000025;
    *(v7 + 40) = 0x80000001BBC01480;
    sub_1BBBF5834();

    return 0;
  }

  return v6;
}

id sub_1BBBF1AB8()
{

  v0 = objc_opt_self();
  if (qword_1EDD45540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD45558;
  v2 = unk_1EDD45560;
  v3 = sub_1BBBF53E4();
  v4 = sub_1BBBF53E4();
  v5 = [v0 endpointForMachName:v3 service:v4 instance:0];

  if (v5)
  {

    v6 = [objc_opt_self() connectionWithEndpoint_];
    if (v6)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BBBFA110;
    sub_1BBBF55B4();

    MEMORY[0x1BFB17930](v1, v2);
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 32) = 0xD000000000000025;
    *(v7 + 40) = 0x80000001BBC01480;
    sub_1BBBF5834();

    return 0;
  }

  return v6;
}

id sub_1BBBF1CA0()
{

  v0 = objc_opt_self();
  if (qword_1EDD45568 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD45580;
  v2 = unk_1EDD45588;
  v3 = sub_1BBBF53E4();
  v4 = sub_1BBBF53E4();
  v5 = [v0 endpointForMachName:v3 service:v4 instance:0];

  if (v5)
  {

    v6 = [objc_opt_self() connectionWithEndpoint_];
    if (v6)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BBBFA110;
    sub_1BBBF55B4();

    MEMORY[0x1BFB17930](v1, v2);
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 32) = 0xD000000000000025;
    *(v7 + 40) = 0x80000001BBC01480;
    sub_1BBBF5834();

    return 0;
  }

  return v6;
}

void sub_1BBBF1E88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1BBBF1F18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BBBF1F6C()
{
  v0 = sub_1BBBF5324();
  __swift_allocate_value_buffer(v0, qword_1EBC9B440);
  __swift_project_value_buffer(v0, qword_1EBC9B440);
  return sub_1BBBF5314();
}

id StateCaptureClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t StateCaptureClient.init()()
{
  v22 = sub_1BBBF5524();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BBBF5514();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1BBBF5384();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection;
  *&v0[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection] = 0;
  v21 = OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue;
  v20[1] = sub_1BBBDD660();
  sub_1BBBF5374();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BBBF23A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9ADE0, &unk_1BBBFB140);
  sub_1BBBF2400();
  sub_1BBBF5594();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v22);
  *&v0[v21] = sub_1BBBF5554();
  v10 = *&v0[v9];
  *&v0[v9] = 0;

  v11 = type metadata accessor for StateCaptureClient();
  v24.receiver = v0;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BBBF2488;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1BBBF24AC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBBF18A8;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BBBF23A8()
{
  result = qword_1EDD456F0;
  if (!qword_1EDD456F0)
  {
    sub_1BBBF5514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD456F0);
  }

  return result;
}

unint64_t sub_1BBBF2400()
{
  result = qword_1EDD45700;
  if (!qword_1EDD45700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC9ADE0, &unk_1BBBFB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45700);
  }

  return result;
}

uint64_t sub_1BBBF24AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1BBBF2510()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1BBBF53A4();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection;
  if (!*&v0[OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection])
  {
    result = sub_1BBBF1CA0();
    if (result)
    {
      v10 = *&v0[v9];
      *&v0[v9] = result;
      v11 = result;

      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1BBBF33A8;
      *(v13 + 24) = v12;
      aBlock[4] = sub_1BBBF33B0;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BBBF1F18;
      aBlock[3] = &block_descriptor_16;
      v14 = _Block_copy(aBlock);
      v15 = v0;

      [v11 configureConnection_];

      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void sub_1BBBF2778(void *a1, uint64_t a2)
{
  v4 = sub_1BBBF53E4();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1BBBF2A70;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BBBF1E88;
  v16 = &block_descriptor_19;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1BBBF2A7C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BBBF1E88;
  v16 = &block_descriptor_22;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1BBBF2A88;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BBBF1E88;
  v16 = &block_descriptor_25;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1BBBF2A94(uint64_t a1, const char *a2)
{
  if (qword_1EBC9A550 != -1)
  {
    swift_once();
  }

  v3 = sub_1BBBF5324();
  __swift_project_value_buffer(v3, qword_1EBC9B440);
  oslog = sub_1BBBF5304();
  v4 = sub_1BBBF54C4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBBB7000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFB18360](v5, -1, -1);
  }
}

void sub_1BBBF2B84()
{
  v1 = sub_1BBBF5394();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1BBBF53A4();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1BBBF2510();
    v8 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1BBBF5584();
        swift_unknownObjectRelease();

        sub_1BBBF32DC(v10);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1BBBF32DC(v10);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BBBF2D14()
{
  v1 = sub_1BBBF5394();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1BBBF53A4();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1BBBF2B84();
  v8 = *(v0 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_connection);
  if (!v8)
  {
    if (qword_1EBC9A550 != -1)
    {
      swift_once();
    }

    v9 = sub_1BBBF5324();
    __swift_project_value_buffer(v9, qword_1EBC9B440);
    v1 = sub_1BBBF5304();
    v10 = sub_1BBBF54E4();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BBBB7000, v1, v10, "Failed to establish a connection", v11, 2u);
      MEMORY[0x1BFB18360](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1BBBF5584();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B468, qword_1BBBFBC38);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1BBBF32DC(v20);
  }

  if (qword_1EBC9A550 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1BBBF5324();
  __swift_project_value_buffer(v13, qword_1EBC9B440);
  v14 = sub_1BBBF5304();
  v15 = sub_1BBBF54E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BBBB7000, v14, v15, "Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1BFB18360](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

id StateCaptureClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StateCaptureClient.state(identifier:)(Swift::String_optional identifier)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AlarmKit18StateCaptureClient_queue);
  v4 = sub_1BBBF5534();
  if (!v2)
  {
    v4 = v7;
    v5 = v8;
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void sub_1BBBF3138(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BBBF2D14();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      a1 = sub_1BBBF53E4();
    }

    v14[0] = 0;
    v6 = [v5 stateFor:a1 error:v14];
    swift_unknownObjectRelease();

    v7 = v14[0];
    if (v6)
    {
      v8 = sub_1BBBF53F4();
      v10 = v9;
      v11 = v7;

      *a2 = v8;
      a2[1] = v10;
    }

    else
    {
      v12 = v14[0];
      sub_1BBBF51F4();

      swift_willThrow();
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BBBF3258(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1BBBF3138(*(v1 + 32), a1);
}

uint64_t sub_1BBBF3290(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1BBBF32DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B280, &qword_1BBBF9730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1BBBF33B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BBBF33F8()
{
  if (qword_1EDD45590 != -1)
  {
    swift_once();
  }

  qword_1EDD45570 = qword_1EDD45598;
  *algn_1EDD45578 = unk_1EDD455A0;
  qword_1EDD45580 = qword_1EDD455A8;
  unk_1EDD45588 = unk_1EDD455B0;
}

uint64_t static StateCaptureServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45568 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EDD45578;
  v2 = qword_1EDD45580;
  v3 = unk_1EDD45588;
  *a1 = qword_1EDD45570;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BBBF351C@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45568 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EDD45578;
  v2 = qword_1EDD45580;
  v3 = unk_1EDD45588;
  *a1 = qword_1EDD45570;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

AlarmKit::StateCaptureServiceError::Code_optional __swiftcall StateCaptureServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *StateCaptureServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t StateCaptureServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    v2 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v3;
    swift_getErrorValue();
    *(inited + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0);
    v5 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBF38D8(inited + 32);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v7);
  }
}

unint64_t sub_1BBBF3748()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF28, &qword_1BBBFA120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBBFA110;
    v2 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1BBBF53F4();
    *(inited + 40) = v3;
    swift_getErrorValue();
    *(inited + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0);
    v5 = sub_1BBBE4A40(inited);
    swift_setDeallocating();
    sub_1BBBF38D8(inited + 32);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1BBBE4A40(v7);
  }
}

uint64_t sub_1BBBF3860(uint64_t a1)
{
  v2 = sub_1BBBF3A20();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BBBF389C(uint64_t a1)
{
  v2 = sub_1BBBF3A20();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BBBF38D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AF30, &qword_1BBBFA128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBBF3944()
{
  result = qword_1EBC9B480;
  if (!qword_1EBC9B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B480);
  }

  return result;
}

unint64_t sub_1BBBF399C()
{
  result = qword_1EBC9B488;
  if (!qword_1EBC9B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B488);
  }

  return result;
}

unint64_t sub_1BBBF3A20()
{
  result = qword_1EBC9B490;
  if (!qword_1EBC9B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B490);
  }

  return result;
}

uint64_t OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BBBF51D4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1BBBF51C4();
  v6 = *(a2 + 16);
  v7 = sub_1BBBF51B4();
  v9 = v8;
  v10 = sub_1BBBF5224();
  sub_1BBBBBE78(v7, v9);

  return v10;
}

uint64_t static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BBBF5574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = *(a2 - 8);
  result = (*(v16 + 56))(&v19 - v14, 1, 1, a2);
  if (a1)
  {
    v18 = *(a3 + 24);
    sub_1BBBF5624();
    (*(v9 + 16))(v13, v15, v8);
    result = (*(v16 + 48))(v13, 1, a2);
    if (result != 1)
    {
      (*(v9 + 8))(v15, v8);
      return (*(v16 + 32))(a4, v13, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BBBF5574();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = sub_1BBBF51A4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v15 = sub_1BBBF5234();
  v17 = v16;
  v18 = *(a4 + 8);
  sub_1BBBF5184();
  (*(v8 + 8))(a2, v7);
  sub_1BBBBBE78(v15, v17);

  (*(*(a3 - 8) + 56))(v11, 0, 1, a3);
  return (*(v8 + 32))(a2, v11, v7);
}

BOOL static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BBBF5574();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v27 = *(v8 + 8);
  v28 = a2;
  v27(a2, v7);
  v15 = sub_1BBBF51A4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1BBBF5194();
  v18 = sub_1BBBF5234();
  v20 = v19;
  v21 = *(a4 + 8);
  sub_1BBBF5184();

  sub_1BBBBBE78(v18, v20);
  v22 = *(a3 - 8);
  (*(v22 + 56))(v14, 0, 1, a3);
  v23 = v28;
  (*(v8 + 32))(v28, v14, v7);
  (*(v8 + 16))(v12, v23, v7);
  v24 = (*(v22 + 48))(v12, 1, a3) != 1;
  v27(v12, v7);
  return v24;
}

id BSServiceConnection.init<A>(endpointedDefinedBy:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1BBBF42B8();
  v8 = BSServiceConnectionEndpoint.init<A>(definition:instance:)(a1, 0, 0, a4, a5);
  if (v8)
  {
    v9 = v8;
    v10 = [swift_getObjCClassFromMetadata() connectionWithEndpoint_];

    if (v10)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9B470, &qword_1BBBFBE40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BBBFA110;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1BBBF55B4();

    v18 = 0xD000000000000025;
    v19 = 0x80000001BBC01480;
    (*(a5 + 24))(v17, a4, a5);
    v12 = v17[2];
    v13 = v17[3];

    MEMORY[0x1BFB17930](v12, v13);

    v14 = v18;
    v15 = v19;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_1BBBF5834();

    return 0;
  }

  return v10;
}

unint64_t sub_1BBBF42B8()
{
  result = qword_1EBC9B498;
  if (!qword_1EBC9B498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC9B498);
  }

  return result;
}

uint64_t XPCInterfaceDomain.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCInterfaceDomain.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t XPCInterfaceDomain.machName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t XPCInterfaceDomain.machName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

AlarmKit::XPCInterfaceDomain __swiftcall XPCInterfaceDomain.init(domain:machName:)(Swift::String domain, Swift::String machName)
{
  *v2 = domain;
  v2[1] = machName;
  result.machName = machName;
  result.domain = domain;
  return result;
}

void sub_1BBBF4420()
{
  qword_1EDD45598 = 0xD000000000000012;
  unk_1EDD455A0 = 0x80000001BBC014F0;
  qword_1EDD455A8 = 0xD00000000000001ALL;
  unk_1EDD455B0 = 0x80000001BBC01510;
}

uint64_t static XPCInterfaceDomain.alarmKit.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDD45590 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDD455A0;
  v2 = qword_1EDD455A8;
  v3 = unk_1EDD455B0;
  *a1 = qword_1EDD45598;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

id BSServiceConnectionEndpoint.init<A>(definition:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(&v13, a4, a5);

  v8 = sub_1BBBF53E4();

  (*(a5 + 32))(a4, a5);
  v9 = sub_1BBBF53E4();

  if (a3)
  {
    v10 = sub_1BBBF53E4();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() endpointForMachName:v8 service:v9 instance:v10];

  return v11;
}

Swift::Void __swiftcall BSServiceConnectionListenerConfiguring.setDomain(_:)(AlarmKit::XPCInterfaceDomain a1)
{
  v3 = *a1.domain._countAndFlagsBits;
  v2 = *(a1.domain._countAndFlagsBits + 8);
  v4 = sub_1BBBF53E4();
  [v1 setDomain_];
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBBF466C(uint64_t a1, int a2)
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

uint64_t sub_1BBBF46B4(uint64_t result, int a2, int a3)
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

id AlarmAuthorization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlarmAuthorization.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for AuthorizationClient();
  v2 = swift_allocObject();
  if (qword_1EDD45718 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v3 = qword_1EDD45720;
  *(v2 + 16) = qword_1EDD45720;
  *&v0[OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client] = v2;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v4 = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlarmAuthorization.set(state:bundleID:)(NSNumber state, Swift::String bundleID)
{
  AlarmManager.AuthorizationState.init(rawValue:)([(objc_class *)state.super.super.isa longLongValue]);
  v3 = *(*(*(v2 + OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client) + 16) + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  sub_1BBBF5534();
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlarmAuthorization.state(bundleID:)(Swift::String bundleID)
{
  v3 = *(*(*(v1 + OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client) + 16) + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  result.super.super.isa = sub_1BBBF5534();
  if (!v2)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  }

  return result;
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AlarmAuthorization.supportsAlarmKit(bundleID:)(Swift::String bundleID)
{
  v3 = *(*(*(v1 + OBJC_IVAR____TtC8AlarmKit18AlarmAuthorization_client) + 16) + OBJC_IVAR____TtC8AlarmKitP33_5624AB39E48C05673B65736F2442C9F09Singleton_queue);
  result.super.super.isa = sub_1BBBF5534();
  if (!v2)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  return result;
}

id AlarmAuthorization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Color.init(from:)(uint64_t a1, unint64_t a2)
{
  sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);
  v5 = sub_1BBBF5504();
  if (v2)
  {
    return sub_1BBBBBE78(a1, a2);
  }

  if (!v5)
  {
    sub_1BBBBBECC();
    swift_allocError();
    swift_willThrow();
    return sub_1BBBBBE78(a1, a2);
  }

  v7 = sub_1BBBF5334();
  sub_1BBBBBE78(a1, a2);
  return v7;
}

void *Color.encoded()()
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);

  v0 = sub_1BBBF5564();
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:0 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_1BBBF5234();
  }

  else
  {
    v3 = v2;
    sub_1BBBF51F4();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

unint64_t sub_1BBBF5004()
{
  result = qword_1EBC9B4A8;
  if (!qword_1EBC9B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9B4A8);
  }

  return result;
}

uint64_t sub_1BBBF50A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BBBF5324();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1BBBF5314();
}