uint64_t AppLibrary.App.installedMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E638();

  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return sub_1D9658438(v3, v4, v5);
}

uint64_t sub_1D965BCD0(void *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(a2 + 16);
  *(a1 + 3) = *a2;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  *(a1 + 5) = v4;
  *(a1 + 7) = *(a2 + 32);
  a1[9] = *(a2 + 48);
  sub_1D95FEFC8(a2, v11, &qword_1ECB22C38, &qword_1D967D5D0);
  return sub_1D96583CC(v2, v3, v5);
}

uint64_t type metadata accessor for AppLibrary.App()
{
  result = qword_1ECB22C78;
  if (!qword_1ECB22C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D965BDCC(void *a1, _OWORD *a2)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a2[1];
  *(a1 + 5) = *a2;
  *(a1 + 6) = v10;
  v11 = a2[3];
  *(a1 + 7) = a2[2];
  *(a1 + 8) = v11;
  sub_1D95FEFC8(a2, &v13, &qword_1ECB21DB8, &unk_1D9676870);
  return sub_1D965DF18(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t AppLibrary.App.installationError.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E638();

  v3 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  swift_beginAccess();
  return sub_1D95FEFC8(v5 + v3, a1, &qword_1ECB21DA8, &qword_1D967D6C0);
}

uint64_t sub_1D965BF54(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  swift_beginAccess();
  sub_1D965ED7C(a2, a1 + v4);
  return swift_endAccess();
}

BOOL AppLibrary.App.isUpdating.getter()
{
  swift_getKeyPath();
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E638();

  if (!*(v0 + 40))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D966E638();

  return *(v0 + 96) != 0;
}

uint64_t sub_1D965C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a2;
  v5 = sub_1D966E808();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966EAB8();
  v27 = sub_1D966EAA8();
  sub_1D966EA78();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v9, a1, v5);
  v26 = sub_1D966E7D8();
  v10 = sub_1D966E7F8();
  v24 = v11;
  v25 = v10;
  v12 = sub_1D966E7C8();
  v14 = v13;
  v15 = sub_1D966E7E8();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v18 = sub_1D966E788();
  v19 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());
  v20 = sub_1D965D1EC(v18);

  v22 = v25;
  *a3 = v26;
  a3[1] = v22;
  a3[2] = v24;
  a3[3] = v12;
  a3[4] = v14;
  a3[5] = v15;
  a3[6] = v17;
  a3[7] = v20;
  return result;
}

void sub_1D965C28C()
{
  sub_1D966E878();
  v0 = sub_1D966E868();
  sub_1D966E828();
}

id sub_1D965C314(double a1)
{
  v2 = v1;
  v4 = sub_1D966E8E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - v11;
  v13 = fmin(a1, 1.0) * 4.50359963e15;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v14 = v13;
  if (a1 == -1.0 || [v2 completedUnitCount] <= v14)
  {
    result = [v2 setCompletedUnitCount_];
    if (a1 >= 0.6)
    {
      result = [v2 isPausable];
      if (result)
      {
        sub_1D966E8A8();
        v18 = v2;
        v19 = sub_1D966E8C8();
        v20 = sub_1D966EB88();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          *(v21 + 4) = *(v18 + OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_id);

          _os_log_impl(&dword_1D95E0000, v19, v20, "[%llu] No longer pausable nor cancelable", v21, 0xCu);
          MEMORY[0x1DA734680](v21, -1, -1);
        }

        else
        {

          v19 = v18;
        }

        (*(v5 + 8))(v12, v4);
        [v18 setPausable:0];
        return [v18 setCancellable:0];
      }
    }
  }

  else
  {
    sub_1D966E8B8();
    v15 = sub_1D966E8C8();
    v16 = sub_1D966EBA8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D95E0000, v15, v16, "Received progress update out of order", v17, 2u);
      MEMORY[0x1DA734680](v17, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void sub_1D965C628(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  LODWORD(v5) = a1;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v34 - v9;
  v10 = sub_1D966E8E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966E8A8();
  v15 = sub_1D966E8C8();
  v16 = sub_1D966EB88();
  if (os_log_type_enabled(v15, v16))
  {
    v34 = v4;
    v36 = ObjectType;
    v17 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v38 = v4;
    *v17 = 136315394;
    v35 = v5;
    if (v5)
    {
      if (v5 == 1)
      {
        v18 = 0x646573756170;
      }

      else
      {
        v18 = 0x64656C65636E6163;
      }

      if (v5 == 1)
      {
        v5 = 0xE600000000000000;
      }

      else
      {
        v5 = 0xE800000000000000;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v18 = 0x676E696E6E7572;
    }

    v19 = sub_1D9606634(v18, v5, &v38);

    *(v17 + 4) = v19;
    *(v17 + 12) = 1024;
    v20 = v34;
    *(v17 + 14) = v34 & 1;
    _os_log_impl(&dword_1D95E0000, v15, v16, "setState %s, sendingToDaemon: %{BOOL}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v21 = v4;
    LOBYTE(v4) = v20;
    MEMORY[0x1DA734680](v21, -1, -1);
    MEMORY[0x1DA734680](v17, -1, -1);

    (*(v11 + 8))(v14, v10);
    ObjectType = v36;
    LOBYTE(v5) = v35;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v22 = *&v3[OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock];
  os_unfair_lock_lock((v22 + 32));
  if (!*(v22 + 16))
  {
    if (v5)
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v4 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (*(v22 + 16) != 1 || v5 == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  *(v22 + 16) = v5;
  if (v4)
  {
    v24 = swift_allocObject();
    v25 = v5;
    *(v24 + 16) = v5;
    v26 = *&v3[OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_id];
    v27 = *(v22 + 24);
    if (v27)
    {
      v28 = *(v22 + 24);
      sub_1D966EB38();
    }

    v29 = sub_1D966EAE8();
    v30 = v37;
    (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v27;
    v5[5] = v26;
    v5[6] = sub_1D965E328;
    v5[7] = v24;
    v5[8] = v3;

    v31 = v3;
    *(v22 + 24) = sub_1D9664FDC(0, 0, v30, &unk_1D967D960, v5);

    LOBYTE(v5) = v25;
  }

LABEL_25:
  if (v5)
  {
    if (v5 == 1)
    {
      v40 = v3;
      v32 = &selRef_pause;
      v33 = &v40;
    }

    else
    {
      v41.receiver = v3;
      v32 = &selRef_cancel;
      v33 = &v41;
    }
  }

  else
  {
    v39 = v3;
    v32 = &selRef_resume;
    v33 = &v39;
  }

  v33->super_class = ObjectType;
  objc_msgSendSuper2(v33, *v32);
LABEL_31:
  os_unfair_lock_unlock((v22 + 32));
}

uint64_t AppLibrary.App.presentAgeExceptionApproveInPersonSheet()()
{
  v1[2] = v0;
  sub_1D966EAB8();
  v1[3] = sub_1D966EAA8();
  v3 = sub_1D966EA78();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D965CB54, v3, v2);
}

uint64_t sub_1D965CB54()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D965CC54;

  return (sub_1D95F26D4)(v1, sub_1D965CE58, 0);
}

uint64_t sub_1D965CC54()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1D965CDF4;
  }

  else
  {
    v7 = sub_1D965CD90;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D965CD90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D965CDF4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1D965CE58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_43;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheet:v8 reply:v9];
  _Block_release(v9);
}

uint64_t AppLibrary.App.deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_1D96583CC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_1D965DF18(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_1D95EA898(v0 + OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError, &qword_1ECB21DA8, &qword_1D967D6C0);
  v5 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App___observationRegistrar;
  v6 = sub_1D966E658();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AppLibrary.App.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_1D96583CC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_1D965DF18(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_1D95EA898(v0 + OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError, &qword_1ECB21DA8, &qword_1D967D6C0);
  v5 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App___observationRegistrar;
  v6 = sub_1D966E658();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v7, v8);
}

uint64_t AppLibrary.App.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(v0 + 16));
  return sub_1D966F0C8();
}

uint64_t sub_1D965D114()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(v1 + 16));
  return sub_1D966F0C8();
}

uint64_t sub_1D965D18C()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733FA0](*(v1 + 16));
  return sub_1D966F0C8();
}

id sub_1D965D1EC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CD0, &qword_1D967D998);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_id] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithParent_userInfo_, 0, 0);
  [v6 setTotalUnitCount_];
  [v6 setPausable_];
  [v6 setCancellable_];
  sub_1D965C314(-1.0);

  return v6;
}

void sub_1D965D3D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1D966E5D8();
  if (a6)
  {
    if (a6 == 1)
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1D96587B0;
      v16 = &block_descriptor_40;
      v11 = _Block_copy(&v13);

      v12 = &selRef_pauseInstall_reply_;
    }

    else
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_1D96587B0;
      v16 = &block_descriptor_12;
      v11 = _Block_copy(&v13);

      v12 = &selRef_cancelInstall_reply_;
    }
  }

  else
  {
    v17 = a4;
    v18 = a5;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1D96587B0;
    v16 = &block_descriptor_37;
    v11 = _Block_copy(&v13);

    v12 = &selRef_resumeInstall_reply_;
  }

  [a1 *v12];
  _Block_release(v11);
}

uint64_t sub_1D965D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1D966E8E8();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D965D678, 0, 0);
}

uint64_t sub_1D965D678()
{
  if (v0[2])
  {
    v1 = *(MEMORY[0x1E69E86C0] + 4);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1D965D81C;

    return MEMORY[0x1EEE6DA40]();
  }

  else if (sub_1D966EB58())
  {
    v3 = v0[9];

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1D965DA3C;
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];

    return sub_1D95F26D4(v8, v6, v7);
  }
}

uint64_t sub_1D965D81C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D965D918, 0, 0);
}

uint64_t sub_1D965D918()
{
  if (sub_1D966EB58())
  {
    v1 = v0[9];

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1D965DA3C;
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[3];

    return sub_1D95F26D4(v7, v5, v6);
  }
}

uint64_t sub_1D965DA3C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D965DBE4;
  }

  else
  {
    v3 = sub_1D965DB50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D965DB50()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock);
  os_unfair_lock_lock((v1 + 32));
  if ((sub_1D966EB58() & 1) == 0)
  {
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
  }

  os_unfair_lock_unlock((v1 + 32));
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D965DBE4()
{
  v1 = v0[12];
  v2 = v0[9];
  sub_1D966E8A8();
  v3 = v1;
  v4 = sub_1D966E8C8();
  v5 = sub_1D966EBB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D95E0000, v4, v5, "Error updating progress: %{public}@", v8, 0xCu);
    sub_1D95EA898(v9, &qword_1ECB20BA0, &qword_1D9670DD0);
    MEMORY[0x1DA734680](v9, -1, -1);
    MEMORY[0x1DA734680](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v12 = *(v0[6] + OBJC_IVAR____TtC14MarketplaceKit22InstallationNSProgress_lock);
  os_unfair_lock_lock((v12 + 32));
  if ((sub_1D966EB58() & 1) == 0)
  {
    v13 = *(v12 + 24);
    *(v12 + 24) = 0;
  }

  os_unfair_lock_unlock((v12 + 32));
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

id sub_1D965DDD0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s14MarketplaceKit10AppLibraryC0C0C8MetadataV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (sub_1D966EFB8()) && (v2 == v6 && v4 == v7 || (sub_1D966EFB8()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_1D966EFB8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D965DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D965DFD4()
{
  sub_1D965E0DC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D966E658();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D965E0DC()
{
  if (!qword_1ECB22C88)
  {
    type metadata accessor for MarketplaceKitError();
    v0 = sub_1D966EC18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB22C88);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D965E150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D965E198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D965E1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D965E23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D965E2D4()
{
  result = qword_1ECB22CA0;
  if (!qword_1ECB22CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CA0);
  }

  return result;
}

uint64_t sub_1D965E330(uint64_t a1)
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
  v11[1] = sub_1D95EAF50;

  return sub_1D965D5B0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D965E424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v55 - v4;
  v5 = sub_1D966E808();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CA8, &unk_1D967D970);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v55 - v25;
  v66 = sub_1D966E788();
  v68 = a1;
  sub_1D966E7A8();
  sub_1D95FEFC8(v26, v24, &qword_1ECB22CA8, &unk_1D967D970);
  v27 = *(v6 + 48);
  v28 = v27(v24, 1, v5);
  v58 = v6;
  if (v28 == 1)
  {
    sub_1D95EA898(v26, &qword_1ECB22CA8, &unk_1D967D970);
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v59 = 0;
  }

  else
  {
    v55 = v27;
    (*(v6 + 32))(v14, v24, v5);
    sub_1D966EAB8();
    sub_1D966EAA8();
    sub_1D966EA78();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v29 = v58;
    (*(v58 + 16))(v12, v14, v5);
    v65 = sub_1D966E7D8();
    v64 = sub_1D966E7F8();
    v63 = v30;
    v62 = sub_1D966E7C8();
    v61 = v31;
    v60 = sub_1D966E7E8();
    v59 = v32;
    v33 = *(v29 + 8);
    v33(v12, v5);
    v33(v14, v5);
    sub_1D95EA898(v26, &qword_1ECB22CA8, &unk_1D967D970);

    v27 = v55;
  }

  v34 = v68;
  sub_1D966E7B8();
  v35 = v57;
  sub_1D95FEFC8(v21, v57, &qword_1ECB22CA8, &unk_1D967D970);
  if (v27(v35, 1, v5) == 1)
  {
    sub_1D95EA898(v21, &qword_1ECB22CA8, &unk_1D967D970);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
  }

  else
  {
    v36 = v58;
    v37 = v56;
    (*(v58 + 32))(v56, v35, v5);
    sub_1D965C0B4(v37, v34, &v75);
    (*(v36 + 8))(v37, v5);
    sub_1D95EA898(v21, &qword_1ECB22CA8, &unk_1D967D970);
  }

  v79[0] = v75;
  v79[1] = v76;
  v79[2] = v77;
  v79[3] = v78;
  v38 = sub_1D966E798();
  v40 = v67;
  if (v39 >> 60 == 15)
  {
    v41 = type metadata accessor for MarketplaceKitError();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  }

  else
  {
    v42 = v38;
    v43 = v39;
    v44 = sub_1D966E578();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    sub_1D966E568();
    v41 = type metadata accessor for MarketplaceKitError();
    sub_1D965ED14(&qword_1ECB21700, type metadata accessor for MarketplaceKitError);
    sub_1D966E558();
    sub_1D9621CEC(v42, v43);

    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  v47 = type metadata accessor for AppLibrary.App();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  *(v50 + 24) = 0u;
  *(v50 + 40) = 0u;
  *(v50 + 56) = 0u;
  *(v50 + 72) = 0u;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0;
  v51 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  type metadata accessor for MarketplaceKitError();
  (*(*(v41 - 8) + 56))(v50 + v51, 1, 1, v41);
  sub_1D966E648();
  *(v50 + 16) = v66;
  *&v69 = v65;
  *(&v69 + 1) = v64;
  v70 = v63;
  v71 = v62;
  v72 = v61;
  v73 = v60;
  v74 = v59;
  sub_1D965A1BC(&v69);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v55 - 2) = v50;
  *(&v55 - 1) = v79;
  *&v69 = v50;
  sub_1D965ED14(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App);
  sub_1D966E628();
  sub_1D95EA898(v79, &qword_1ECB21DB8, &unk_1D9676870);

  v53 = sub_1D966E818();
  (*(*(v53 - 8) + 8))(v34, v53);
  sub_1D95EA898(v40, &qword_1ECB21DA8, &qword_1D967D6C0);
  return v50;
}

uint64_t sub_1D965ED14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D965ED5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D965ED6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1D965C28C();
}

uint64_t sub_1D965ED7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.distributorID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(distributorID:appleItemID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PresentAgeExceptionApprovalSheetRequest.run()()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D965EE74, 0, 0);
}

uint64_t sub_1D965EE74()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1D965EF70;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1D95F28D8(v4, v2, v3, sub_1D965F078, 0);
}

uint64_t sub_1D965EF70(char a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

void sub_1D965F078(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheetForDistributor:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D965F154()
{
  if (*v0)
  {
    result = 0x657449656C707061;
  }

  else
  {
    result = 0x7562697274736964;
  }

  *v0;
  return result;
}

uint64_t sub_1D965F1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D965F28C(uint64_t a1)
{
  v2 = sub_1D965F6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D965F2C8(uint64_t a1)
{
  v2 = sub_1D965F6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentAgeExceptionApprovalSheetRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CD8, &qword_1D967D9A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D965F6A4();
  sub_1D966F118();
  v15 = 0;
  v11 = v13[1];
  sub_1D966EF38();
  if (!v11)
  {
    v14 = 1;
    sub_1D966EF88();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PresentAgeExceptionApprovalSheetRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22CE8, &qword_1D967D9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D965F6A4();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_1D966EEA8();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D965F6A4()
{
  result = qword_1ECB22CE0;
  if (!qword_1ECB22CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CE0);
  }

  return result;
}

unint64_t sub_1D965F71C()
{
  result = qword_1ECB22CF0;
  if (!qword_1ECB22CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CF0);
  }

  return result;
}

unint64_t sub_1D965F774()
{
  result = qword_1ECB22CF8;
  if (!qword_1ECB22CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22CF8);
  }

  return result;
}

unint64_t sub_1D965F7CC()
{
  result = qword_1ECB22D00;
  if (!qword_1ECB22D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D00);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D965F84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LicenseResolutionRequest.run()()
{
  *(v1 + 32) = v0;
  v2 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D965F940, 0, 0);
}

uint64_t sub_1D965F940()
{
  sub_1D9619050(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D965FA00;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_1D965FA00()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1D965FB90;
  }

  else
  {
    sub_1D9604030(*(v2 + 16), *(v2 + 24));
    v4 = sub_1D965FB20;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D965FB20()
{
  sub_1D9611758(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D965FB90()
{
  sub_1D9611758(v0[5]);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t type metadata accessor for LicenseResolutionRequest()
{
  result = qword_1ECB22D08;
  if (!qword_1ECB22D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D965FC74()
{
  result = type metadata accessor for LicenseResolutionContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PollForUpdatesRequest.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

MarketplaceKit::PollForUpdatesRequest __swiftcall PollForUpdatesRequest.init(domain:shouldStartUpdates:)(MarketplaceKit::PollForUpdatesRequest domain, Swift::Bool shouldStartUpdates)
{
  *v2 = domain.field1D968AC04;
  *(v2 + 16) = shouldStartUpdates;
  domain.field1D968AC10 = shouldStartUpdates;
  return domain;
}

uint64_t PollForUpdatesRequest.run()()
{
  *(v1 + 16) = *v0;
  *(v1 + 40) = *(v0 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D965FD50, 0, 0);
}

uint64_t sub_1D965FD50()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D9619CB0;
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1D95F2CEC(v4, v3, v2, sub_1D965FE4C, 0);
}

void sub_1D965FE4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);

  [a1 requestUpdatesPoll:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_1D965FF28()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_1D965FF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9681E00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9660044(uint64_t a1)
{
  v2 = sub_1D9660444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660080(uint64_t a1)
{
  v2 = sub_1D9660444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PollForUpdatesRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D18, &qword_1D967DBA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9660444();
  sub_1D966F118();
  v16 = 0;
  v11 = v13[1];
  sub_1D966EEE8();
  if (!v11)
  {
    v15 = 1;
    sub_1D966EF48();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PollForUpdatesRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D28, &qword_1D967DBB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9660444();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1D966EE08();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_1D966EE68();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9660444()
{
  result = qword_1ECB22D20;
  if (!qword_1ECB22D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D20);
  }

  return result;
}

unint64_t sub_1D96604BC()
{
  result = qword_1ECB22D30;
  if (!qword_1ECB22D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D30);
  }

  return result;
}

unint64_t sub_1D9660514()
{
  result = qword_1ECB22D38;
  if (!qword_1ECB22D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D38);
  }

  return result;
}

unint64_t sub_1D966056C()
{
  result = qword_1ECB22D40;
  if (!qword_1ECB22D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D40);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SecureButtonActionRequest.Action.stringValue.getter()
{
  if (((v0[1] >> 60) & 3) > 1)
  {
    return 0x6867696C66657250;
  }

  if (((v0[1] >> 60) & 3) != 0)
  {
    v1 = 0x68636E75614CLL;
  }

  else
  {
    v1 = 0x6574656C6544;
  }

  v5 = v1 & 0xFFFFFFFFFFFFLL | 0x2D20000000000000;
  v4 = *v0;
  v3 = sub_1D966EFA8();
  MEMORY[0x1DA7338E0](v3);

  return v5;
}

uint64_t sub_1D96606A8()
{
  v1 = 0x6574656C6564;
  *v0;
  if (*v0)
  {
    v1 = 0x68636E75616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6867696C66657270;
  }
}

uint64_t sub_1D966072C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9664D30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9660754(uint64_t a1)
{
  v2 = sub_1D9660ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660790(uint64_t a1)
{
  v2 = sub_1D9660ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96607CC(uint64_t a1)
{
  v2 = sub_1D9661028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660808(uint64_t a1)
{
  v2 = sub_1D9661028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9660844(uint64_t a1)
{
  v2 = sub_1D9660FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660880(uint64_t a1)
{
  v2 = sub_1D9660FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96608BC(uint64_t a1)
{
  v2 = sub_1D9660F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96608F8(uint64_t a1)
{
  v2 = sub_1D9660F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9660934(uint64_t a1)
{
  v2 = sub_1D9660F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9660970(uint64_t a1)
{
  v2 = sub_1D9660F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionRequest.Action.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D48, &qword_1D967DD60);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D50, &qword_1D967DD68);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D58, &qword_1D967DD70);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D60, &qword_1D967DD78);
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D68, &qword_1D967DD80);
  v41 = *(v18 - 8);
  v42 = v18;
  v19 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v22 = v2[1];
  v40 = *v2;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9660ED8();
  sub_1D966F118();
  v24 = (v22 >> 60) & 3;
  if (((v22 >> 60) & 3) > 1)
  {
    if (v24 == 2)
    {
      LOBYTE(v43) = 2;
      sub_1D9660F80();
      v27 = v34;
      v28 = v42;
      sub_1D966EED8();
      v43 = v40;
      v44 = v22 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1D9621C98();
      v29 = v36;
      sub_1D966EF68();
      v30 = v35;
    }

    else
    {
      LOBYTE(v43) = 3;
      sub_1D9660F2C();
      v27 = v37;
      v28 = v42;
      sub_1D966EED8();
      v43 = v40;
      v44 = v22 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1D9621C98();
      v29 = v39;
      sub_1D966EF68();
      v30 = v38;
    }

    (*(v30 + 8))(v27, v29);
  }

  else
  {
    if (!v24)
    {
      LOBYTE(v43) = 0;
      sub_1D9661028();
      v25 = v42;
      sub_1D966EED8();
      sub_1D966EF88();
      (*(v32 + 8))(v17, v14);
      return (*(v41 + 8))(v21, v25);
    }

    LOBYTE(v43) = 1;
    sub_1D9660FD4();
    v28 = v42;
    sub_1D966EED8();
    sub_1D966EF88();
    (*(v33 + 8))(v13, v10);
  }

  return (*(v41 + 8))(v21, v28);
}

unint64_t sub_1D9660ED8()
{
  result = qword_1ECB22D70;
  if (!qword_1ECB22D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D70);
  }

  return result;
}

unint64_t sub_1D9660F2C()
{
  result = qword_1ECB22D78;
  if (!qword_1ECB22D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D78);
  }

  return result;
}

unint64_t sub_1D9660F80()
{
  result = qword_1ECB22D80;
  if (!qword_1ECB22D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D80);
  }

  return result;
}

unint64_t sub_1D9660FD4()
{
  result = qword_1ECB22D88;
  if (!qword_1ECB22D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D88);
  }

  return result;
}

unint64_t sub_1D9661028()
{
  result = qword_1ECB22D90;
  if (!qword_1ECB22D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22D90);
  }

  return result;
}

uint64_t SecureButtonActionRequest.Action.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22D98, &qword_1D967DD88);
  v57 = *(v60 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v49 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DA0, &qword_1D967DD90);
  v56 = *(v54 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v49 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DA8, &qword_1D967DD98);
  v55 = *(v53 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DB0, &qword_1D967DDA0);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DB8, &unk_1D967DDA8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D9660ED8();
  v21 = v62;
  sub_1D966F0F8();
  if (!v21)
  {
    v22 = v13;
    v50 = v10;
    v51 = 0;
    v23 = v9;
    v24 = v58;
    v25 = v59;
    v62 = v15;
    v27 = v60;
    v26 = v61;
    v28 = sub_1D966EEB8();
    v29 = (2 * *(v28 + 16)) | 1;
    v65 = v28;
    v66 = v28 + 32;
    v67 = 0;
    v68 = v29;
    v30 = sub_1D96020C0();
    if (v30 == 4 || v67 != v68 >> 1)
    {
      v35 = sub_1D966ED58();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v37 = &type metadata for SecureButtonActionRequest.Action;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
    }

    else if (v30 > 1u)
    {
      if (v30 == 2)
      {
        LOBYTE(v63) = 2;
        sub_1D9660F80();
        v40 = v24;
        v41 = v51;
        sub_1D966EDE8();
        v42 = v62;
        if (!v41)
        {
          v43 = v26;
          sub_1D9621D48();
          v44 = v54;
          sub_1D966EE88();
          (*(v56 + 8))(v40, v44);
          (*(v42 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = v63;
          v34 = v64 | 0x2000000000000000;
          v26 = v43;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v63) = 3;
        sub_1D9660F2C();
        v47 = v51;
        sub_1D966EDE8();
        v48 = v62;
        if (!v47)
        {
          sub_1D9621D48();
          sub_1D966EE88();
          (*(v57 + 8))(v25, v27);
          (*(v48 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = v63;
          v34 = v64 | 0x3000000000000000;
          v26 = v61;
          goto LABEL_19;
        }
      }
    }

    else if (v30)
    {
      LOBYTE(v63) = 1;
      sub_1D9660FD4();
      v45 = v51;
      sub_1D966EDE8();
      if (!v45)
      {
        v46 = v53;
        v33 = sub_1D966EEA8();
        (*(v55 + 8))(v23, v46);
        (*(v62 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v34 = 0x1000000000000000;
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v63) = 0;
      sub_1D9661028();
      v31 = v51;
      sub_1D966EDE8();
      if (!v31)
      {
        v32 = v50;
        v33 = sub_1D966EEA8();
        (*(v52 + 8))(v22, v32);
        (*(v62 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v34 = 0;
LABEL_19:
        *v26 = v33;
        v26[1] = v34;
        return __swift_destroy_boxed_opaque_existential_1(v69);
      }
    }

    (*(v62 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t SecureButtonActionRequest.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1D96618D4(v2, v3);
}

uint64_t sub_1D96618D4(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_1D95EA68C(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

__n128 SecureButtonActionRequest.init(action:authenticationMessage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t SecureButtonActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D966192C, 0, 0);
}

uint64_t sub_1D966192C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D964B8B4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_1D95F3108(v4, v5, v2, v3, sub_1D9661A28, 0);
}

void sub_1D9661A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);

  [a1 handleSecureButtonActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_1D9661B04()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1D9661B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9681E60 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9661C20(uint64_t a1)
{
  v2 = sub_1D9663B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9661C5C(uint64_t a1)
{
  v2 = sub_1D9663B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionRequest.encode(to:)(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DC0, &qword_1D967DDC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v21[0] = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96618D4(v8, v9);
  sub_1D9663B68();
  sub_1D966F118();
  v23 = v8;
  v24 = v9;
  v22 = 0;
  sub_1D9663BBC();
  v11 = v21[1];
  sub_1D966EF68();
  sub_1D9663C10(v23, v24);
  if (!v11)
  {
    v13 = objc_opt_self();
    v23 = 0;
    v14 = [v13 archivedDataWithRootObject:v21[0] requiringSecureCoding:1 error:&v23];
    v15 = v23;
    if (v14)
    {
      v16 = sub_1D966E5E8();
      v18 = v17;

      v23 = v16;
      v24 = v18;
      v22 = 1;
      sub_1D9621C98();
      sub_1D966EF68();
      (*(v4 + 8))(v7, v3);
      result = sub_1D95EA55C(v16, v18);
      goto LABEL_5;
    }

    v20 = v15;
    sub_1D966E598();

    swift_willThrow();
  }

  result = (*(v4 + 8))(v7, v3);
LABEL_5:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void SecureButtonActionRequest.init(from:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22DD8, &qword_1D967DDC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663B68();
  sub_1D966F0F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    sub_1D9663C20();
    sub_1D966EE88();
    v12 = v22;
    v11 = v23;
    v24 = 1;
    sub_1D9621D48();
    sub_1D966EE88();
    v20 = v12;
    v21 = v11;
    v13 = v22;
    v14 = v23;
    sub_1D9663C74(0, &qword_1ECB22DE8, 0x1E696ACD0);
    sub_1D9663C74(0, &qword_1ECB22DF0, 0x1E698E390);
    v15 = sub_1D966EBC8();
    if (v15)
    {
      v16 = v15;
      (*(v6 + 8))(v9, v5);
      sub_1D95EA55C(v13, v14);
      v18 = v20;
      v17 = v21;
      *a2 = v20;
      a2[1] = v17;
      a2[2] = v16;
      sub_1D96618D4(v18, v17);
      v19 = v16;
      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_1D9663C10(v18, v17);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SecureButtonActionResponse.ResponseType.stringValue.getter()
{
  v1 = v0;
  v2 = sub_1D966E618();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9663CDC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1701736270;
    }

    (*(v3 + 32))(v6, v10, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1D966ED28();

    v12 = 0x80000001D9681E20;
    v13 = 0xD000000000000018;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1D966ED28();

    v12 = 0x80000001D9681E40;
    v13 = 0xD000000000000012;
  }

  v17 = v13;
  v18 = v12;
  sub_1D9663DE8(&qword_1ECB22DF8, MEMORY[0x1E69695A8]);
  v14 = sub_1D966EFA8();
  MEMORY[0x1DA7338E0](v14);

  v15 = v17;
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t sub_1D9662470()
{
  v1 = 0x496D7269666E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D96624D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9664E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D96624FC(uint64_t a1)
{
  v2 = sub_1D9663D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9662538(uint64_t a1)
{
  v2 = sub_1D9663D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9662574(uint64_t a1)
{
  v2 = sub_1D9663D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96625B0(uint64_t a1)
{
  v2 = sub_1D9663D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96625EC(uint64_t a1)
{
  v2 = sub_1D9663E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9662628(uint64_t a1)
{
  v2 = sub_1D9663E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9662664(uint64_t a1)
{
  v2 = sub_1D9663E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96626A0(uint64_t a1)
{
  v2 = sub_1D9663E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionResponse.ResponseType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E00, &qword_1D967DDD0);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v41 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E08, &qword_1D967DDD8);
  v42 = *(v45 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v41 - v6;
  v7 = sub_1D966E618();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E10, &qword_1D967DDE0);
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E18, &qword_1D967DDE8);
  v52 = *(v21 - 8);
  v53 = v21;
  v22 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v41 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663D40();
  sub_1D966F118();
  sub_1D9663CDC(v51, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v42;
    v27 = v49;
    v36 = v20;
    v30 = v50;
    (*(v49 + 32))(v12, v36, v50);
    v56 = 1;
    sub_1D9663E30();
    v37 = v44;
    v32 = v53;
    sub_1D966EED8();
    sub_1D9663DE8(&qword_1ECB221A8, MEMORY[0x1E69695A8]);
    v38 = v45;
    sub_1D966EF68();
    (*(v35 + 8))(v37, v38);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = v49;
    v28 = v43;
    v29 = v20;
    v30 = v50;
    (*(v49 + 32))(v43, v29, v50);
    v57 = 2;
    sub_1D9663D94();
    v31 = v46;
    v32 = v53;
    sub_1D966EED8();
    sub_1D9663DE8(&qword_1ECB221A8, MEMORY[0x1E69695A8]);
    v33 = v48;
    v34 = v54;
    sub_1D966EF68();
    if (!v34)
    {
      (*(v47 + 8))(v31, v33);
      (*(v27 + 8))(v28, v30);
      return (*(v52 + 8))(v24, v32);
    }

    (*(v47 + 8))(v31, v33);
    v12 = v28;
LABEL_6:
    (*(v27 + 8))(v12, v30);
    return (*(v52 + 8))(v24, v32);
  }

  v55 = 0;
  sub_1D9663E84();
  v40 = v53;
  sub_1D966EED8();
  (*(v41 + 8))(v16, v13);
  return (*(v52 + 8))(v24, v40);
}

uint64_t SecureButtonActionResponse.ResponseType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E40, &qword_1D967DDF0);
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v46 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E48, &qword_1D967DDF8);
  v52 = *(v58 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E50, &qword_1D967DE00);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E58, &qword_1D967DE08);
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v15 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D9663D40();
  v27 = v61;
  sub_1D966F0F8();
  if (!v27)
  {
    v47 = v22;
    v48 = v19;
    v29 = v56;
    v28 = v57;
    v61 = v24;
    v49 = v15;
    v31 = v58;
    v30 = v59;
    v32 = sub_1D966EEB8();
    v33 = (2 * *(v32 + 16)) | 1;
    v63 = v32;
    v64 = v32 + 32;
    v65 = 0;
    v66 = v33;
    v34 = sub_1D9605E2C();
    if (v34 == 3 || v65 != v66 >> 1)
    {
      v38 = sub_1D966ED58();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v40 = v49;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v60 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        if (v34 == 1)
        {
          v67 = 1;
          sub_1D9663E30();
          v35 = v28;
          sub_1D966EDE8();
          v36 = v60;
          sub_1D966E618();
          sub_1D9663DE8(&qword_1ECB22218, MEMORY[0x1E69695A8]);
          v37 = v47;
          sub_1D966EE88();
          (*(v52 + 8))(v35, v31);
        }

        else
        {
          v67 = 2;
          sub_1D9663D94();
          sub_1D966EDE8();
          v36 = v60;
          sub_1D966E618();
          sub_1D9663DE8(&qword_1ECB22218, MEMORY[0x1E69695A8]);
          v37 = v48;
          v45 = v54;
          v44 = v55;
          sub_1D966EE88();
          (*(v53 + 8))(v44, v45);
        }

        (*(v36 + 8))(v14, v11);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v61;
        sub_1D9663F4C(v37, v61, type metadata accessor for SecureButtonActionResponse.ResponseType);
      }

      else
      {
        v67 = 0;
        sub_1D9663E84();
        sub_1D966EDE8();
        (*(v50 + 8))(v29, v51);
        (*(v60 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v43 = v61;
        swift_storeEnumTagMultiPayload();
      }

      sub_1D9663F4C(v43, v30, type metadata accessor for SecureButtonActionResponse.ResponseType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_1D96634EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9663574(uint64_t a1)
{
  v2 = sub_1D9663ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96635B0(uint64_t a1)
{
  v2 = sub_1D9663ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E60, &qword_1D967DE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663ED8();
  sub_1D966F118();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_1D9663DE8(&qword_1ECB22E70, type metadata accessor for SecureButtonActionResponse.ResponseType);
  sub_1D966EF68();
  return (*(v3 + 8))(v6, v2);
}

uint64_t SecureButtonActionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E78, &qword_1D967DE18);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SecureButtonActionResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663ED8();
  sub_1D966F0F8();
  if (!v2)
  {
    v16 = v19;
    sub_1D9663DE8(&qword_1ECB22E80, type metadata accessor for SecureButtonActionResponse.ResponseType);
    v17 = v21;
    sub_1D966EE88();
    (*(v20 + 8))(v10, v7);
    sub_1D9663F4C(v17, v14, type metadata accessor for SecureButtonActionResponse.ResponseType);
    sub_1D9663F4C(v14, v16, type metadata accessor for SecureButtonActionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D96639F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E60, &qword_1D967DE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663ED8();
  sub_1D966F118();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_1D9663DE8(&qword_1ECB22E70, type metadata accessor for SecureButtonActionResponse.ResponseType);
  sub_1D966EF68();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1D9663B68()
{
  result = qword_1ECB22DC8;
  if (!qword_1ECB22DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22DC8);
  }

  return result;
}

unint64_t sub_1D9663BBC()
{
  result = qword_1ECB22DD0;
  if (!qword_1ECB22DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22DD0);
  }

  return result;
}

uint64_t sub_1D9663C10(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_1D95EA55C(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

unint64_t sub_1D9663C20()
{
  result = qword_1ECB22DE0;
  if (!qword_1ECB22DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22DE0);
  }

  return result;
}

uint64_t sub_1D9663C74(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D9663CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9663D40()
{
  result = qword_1ECB22E20;
  if (!qword_1ECB22E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E20);
  }

  return result;
}

unint64_t sub_1D9663D94()
{
  result = qword_1ECB22E28;
  if (!qword_1ECB22E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E28);
  }

  return result;
}

uint64_t sub_1D9663DE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9663E30()
{
  result = qword_1ECB22E30;
  if (!qword_1ECB22E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E30);
  }

  return result;
}

unint64_t sub_1D9663E84()
{
  result = qword_1ECB22E38;
  if (!qword_1ECB22E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E38);
  }

  return result;
}

unint64_t sub_1D9663ED8()
{
  result = qword_1ECB22E68;
  if (!qword_1ECB22E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E68);
  }

  return result;
}

uint64_t sub_1D9663F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9663FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D9664008(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D96640B4()
{
  result = type metadata accessor for SecureButtonActionResponse.ResponseType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9664120()
{
  result = sub_1D966E618();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9664234()
{
  result = qword_1ECB22EA8;
  if (!qword_1ECB22EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EA8);
  }

  return result;
}

unint64_t sub_1D966428C()
{
  result = qword_1ECB22EB0;
  if (!qword_1ECB22EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EB0);
  }

  return result;
}

unint64_t sub_1D96642E4()
{
  result = qword_1ECB22EB8;
  if (!qword_1ECB22EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EB8);
  }

  return result;
}

unint64_t sub_1D966433C()
{
  result = qword_1ECB22EC0;
  if (!qword_1ECB22EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EC0);
  }

  return result;
}

unint64_t sub_1D9664394()
{
  result = qword_1ECB22EC8;
  if (!qword_1ECB22EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EC8);
  }

  return result;
}

unint64_t sub_1D96643EC()
{
  result = qword_1ECB22ED0;
  if (!qword_1ECB22ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22ED0);
  }

  return result;
}

unint64_t sub_1D9664444()
{
  result = qword_1ECB22ED8;
  if (!qword_1ECB22ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22ED8);
  }

  return result;
}

unint64_t sub_1D966449C()
{
  result = qword_1ECB22EE0;
  if (!qword_1ECB22EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EE0);
  }

  return result;
}

unint64_t sub_1D96644F4()
{
  result = qword_1ECB22EE8;
  if (!qword_1ECB22EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EE8);
  }

  return result;
}

unint64_t sub_1D966454C()
{
  result = qword_1ECB22EF0;
  if (!qword_1ECB22EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EF0);
  }

  return result;
}

unint64_t sub_1D96645A4()
{
  result = qword_1ECB22EF8;
  if (!qword_1ECB22EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EF8);
  }

  return result;
}

unint64_t sub_1D96645FC()
{
  result = qword_1ECB22F00;
  if (!qword_1ECB22F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F00);
  }

  return result;
}

unint64_t sub_1D9664654()
{
  result = qword_1ECB22F08;
  if (!qword_1ECB22F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F08);
  }

  return result;
}

unint64_t sub_1D96646AC()
{
  result = qword_1ECB22F10;
  if (!qword_1ECB22F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F10);
  }

  return result;
}

unint64_t sub_1D9664704()
{
  result = qword_1ECB22F18;
  if (!qword_1ECB22F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F18);
  }

  return result;
}

unint64_t sub_1D966475C()
{
  result = qword_1ECB22F20;
  if (!qword_1ECB22F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F20);
  }

  return result;
}

unint64_t sub_1D96647B4()
{
  result = qword_1ECB22F28;
  if (!qword_1ECB22F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F28);
  }

  return result;
}

unint64_t sub_1D966480C()
{
  result = qword_1ECB22F30;
  if (!qword_1ECB22F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F30);
  }

  return result;
}

unint64_t sub_1D9664864()
{
  result = qword_1ECB22F38;
  if (!qword_1ECB22F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F38);
  }

  return result;
}

unint64_t sub_1D96648BC()
{
  result = qword_1ECB22F40;
  if (!qword_1ECB22F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F40);
  }

  return result;
}

unint64_t sub_1D9664914()
{
  result = qword_1ECB22F48;
  if (!qword_1ECB22F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F48);
  }

  return result;
}

unint64_t sub_1D966496C()
{
  result = qword_1ECB22F50;
  if (!qword_1ECB22F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F50);
  }

  return result;
}

unint64_t sub_1D96649C4()
{
  result = qword_1ECB22F58;
  if (!qword_1ECB22F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F58);
  }

  return result;
}

unint64_t sub_1D9664A1C()
{
  result = qword_1ECB22F60;
  if (!qword_1ECB22F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F60);
  }

  return result;
}

unint64_t sub_1D9664A74()
{
  result = qword_1ECB22F68;
  if (!qword_1ECB22F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F68);
  }

  return result;
}

unint64_t sub_1D9664ACC()
{
  result = qword_1ECB22F70;
  if (!qword_1ECB22F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F70);
  }

  return result;
}

unint64_t sub_1D9664B24()
{
  result = qword_1ECB22F78;
  if (!qword_1ECB22F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F78);
  }

  return result;
}

unint64_t sub_1D9664B7C()
{
  result = qword_1ECB22F80;
  if (!qword_1ECB22F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F80);
  }

  return result;
}

unint64_t sub_1D9664BD4()
{
  result = qword_1ECB22F88;
  if (!qword_1ECB22F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F88);
  }

  return result;
}

unint64_t sub_1D9664C2C()
{
  result = qword_1ECB22F90;
  if (!qword_1ECB22F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F90);
  }

  return result;
}

unint64_t sub_1D9664C84()
{
  result = qword_1ECB22F98;
  if (!qword_1ECB22F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F98);
  }

  return result;
}

unint64_t sub_1D9664CDC()
{
  result = qword_1ECB22FA0;
  if (!qword_1ECB22FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FA0);
  }

  return result;
}

uint64_t sub_1D9664D30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E75616CLL && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xE900000000000074 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEE00686374614274)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D9664E9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D7269666E6F63 && a2 == 0xEE006C6C6174736ELL || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9681E80 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9664FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_1D963F460(a3, v26 - v10);
  v12 = sub_1D966EAE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D963F4D0(v11);
  }

  else
  {
    sub_1D966EAD8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D966EA78();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D966E9C8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1D963F4D0(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D963F4D0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t static LicenseRepair.requestLicenseRepair(_:status:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_1D966EAE8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;

  sub_1D9664FDC(0, 0, v9, &unk_1D967EE90, v11);
}

uint64_t sub_1D96653BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_1D966E8E8();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9665480, 0, 0);
}

uint64_t sub_1D9665480()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = qword_1EDCF6860;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1D9665598;
  v5 = *(v0 + 48);

  return sub_1D95F1900(sub_1D95F1900, v5, v2, v1, 0, sub_1D964C90C, 0);
}

uint64_t sub_1D9665598()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1D9665714;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D96656B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D96656B4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D9665714()
{
  v30 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  sub_1D966E888();

  v4 = v1;
  v5 = sub_1D966E8C8();
  v6 = sub_1D966EBA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v28 = *(v0 + 80);
    v9 = *(v0 + 56);
    v26 = v7;
    v27 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1D9606634(v10, v9, &v29);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v14 = *(*(v0 + 24) - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = sub_1D966E9B8();
    v18 = v17;

    v19 = sub_1D9606634(v16, v18, &v29);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1D95E0000, v5, v6, "Error requesting license repair for app at path: %{public}s, %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA734680](v12, -1, -1);
    MEMORY[0x1DA734680](v11, -1, -1);

    (*(v8 + 8))(v28, v27);
  }

  else
  {
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 64);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 80);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D96659BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D95EAF50;

  return sub_1D96653BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9665AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9665B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSheetRequest.run()()
{
  *(v1 + 32) = v0;
  v2 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9665C00, 0, 0);
}

uint64_t sub_1D9665C00()
{
  sub_1D9665AA0(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D9665CC0;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_1D9665CC0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D96116E4;
  }

  else
  {
    v3 = sub_1D9665DD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9665DD4()
{
  sub_1D9611758(*(v0 + 40));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 != 2)
  {
    sub_1D9604030(*(v0 + 16), v2);
    LOBYTE(v1) = 0;
  }

  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4(v1 & 1);
}

uint64_t type metadata accessor for ConfirmationSheetRequest()
{
  result = qword_1ECB22FA8;
  if (!qword_1ECB22FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9665ED4()
{
  result = type metadata accessor for ConfirmationSheetContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 PerformActionRequest.init(request:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t PerformActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 48) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D9665F84, 0, 0);
}

uint64_t sub_1D9665F84()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1D966608C;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_1D95F234C(v5, v3, v4, v1, sub_1D9666D24, 0);
}

uint64_t sub_1D966608C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1D9666180()
{
  if (*v0)
  {
    result = 0x63694C77656E6572;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1D96661CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D9681EC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63694C77656E6572 && a2 == 0xED00007365736E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D966EFB8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D96662BC(uint64_t a1)
{
  v2 = sub_1D9667F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96662F8(uint64_t a1)
{
  v2 = sub_1D9667F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9666334(uint64_t a1)
{
  v2 = sub_1D9667FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9666370(uint64_t a1)
{
  v2 = sub_1D9667FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96663AC(uint64_t a1)
{
  v2 = sub_1D9667F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96663E8(uint64_t a1)
{
  v2 = sub_1D9667F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FB8, &qword_1D967EEF8);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v23 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FC0, &qword_1D967EF00);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FC8, &unk_1D967EF08);
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v13 = v21 - v12;
  v14 = v1[1];
  v26 = *v1;
  v21[1] = v14;
  v15 = *(v1 + 16);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9667F38();
  sub_1D966F118();
  if (v15)
  {
    v30 = 1;
    sub_1D9667F8C();
    v17 = v23;
    v18 = v27;
    sub_1D966EED8();
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
    sub_1D9618324(&qword_1ECB21810);
    v19 = v25;
    sub_1D966EF68();
    (*(v24 + 8))(v17, v19);
  }

  else
  {
    v29 = 0;
    sub_1D9667FE0();
    v18 = v27;
    sub_1D966EED8();
    sub_1D966EF38();
    (*(v22 + 8))(v9, v6);
  }

  return (*(v10 + 8))(v13, v18);
}

uint64_t PerformActionRequest.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FE8, &qword_1D967EF18);
  v40 = *(v38 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v35[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FF0, &qword_1D967EF20);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FF8, &qword_1D967EF28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35[-v13];
  v16 = a1[3];
  v15 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9667F38();
  v17 = v42;
  sub_1D966F0F8();
  if (!v17)
  {
    v37 = v6;
    v42 = v11;
    v18 = v41;
    v19 = sub_1D966EEB8();
    v20 = (2 * *(v19 + 16)) | 1;
    v44 = v19;
    v45 = v19 + 32;
    v46 = 0;
    v47 = v20;
    v21 = sub_1D9605E20();
    v22 = v10;
    if (v21 == 2 || v46 != v47 >> 1)
    {
      v24 = sub_1D966ED58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
      *v26 = &type metadata for PerformActionRequest.Request;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v42 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v21;
      if (v21)
      {
        LOBYTE(v48) = 1;
        sub_1D9667F8C();
        sub_1D966EDE8();
        v23 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
        sub_1D9618324(&qword_1ECB21820);
        v29 = v5;
        v30 = v38;
        sub_1D966EE88();
        (*(v40 + 8))(v29, v30);
        (*(v23 + 8))(v14, v22);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = v48;
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_1D9667FE0();
        sub_1D966EDE8();
        v33 = v37;
        v32 = sub_1D966EE58();
        v31 = v34;
        (*(v39 + 8))(v9, v33);
        (*(v42 + 8))(v14, v10);
        swift_unknownObjectRelease();
      }

      *v18 = v32;
      *(v18 + 8) = v31;
      *(v18 + 16) = v36 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t PerformActionRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1D9668034();
}

void sub_1D9666D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_16;
  v9 = _Block_copy(v10);

  [a1 performActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t PerformActionRequest.stringValue.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    sub_1D966ED28();

    v20 = 0xD000000000000014;
    v2 = *(v1 + 16);
    if (v2)
    {
      v18 = MEMORY[0x1E69E7CC0];
      sub_1D95FE0C4(0, v2, 0);
      v3 = v18;
      v4 = (v1 + 32);
      do
      {
        v5 = *v4++;
        v6 = sub_1D966EFA8();
        v19 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          v11 = v6;
          v12 = v7;
          sub_1D95FE0C4((v8 > 1), v9 + 1, 1);
          v7 = v12;
          v6 = v11;
          v3 = v19;
        }

        *(v3 + 16) = v9 + 1;
        v10 = v3 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v7;
        --v2;
      }

      while (v2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
    sub_1D964DE88();
    v14 = sub_1D966E968();
    v16 = v15;

    MEMORY[0x1DA7338E0](v14, v16);
  }

  else
  {
    v13 = v0[1];
    sub_1D966ED28();

    v20 = 0xD00000000000001BLL;
    MEMORY[0x1DA7338E0](v1, v13);
  }

  return v20;
}

uint64_t sub_1D9666FF0(uint64_t a1)
{
  v2 = sub_1D9668040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D966702C(uint64_t a1)
{
  v2 = sub_1D9668040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionRequest.encode(to:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23000, &qword_1D967EF30);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668034();
  sub_1D9668040();
  sub_1D966F118();
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;
  sub_1D9668094();
  v11 = v13[0];
  sub_1D966EF68();
  sub_1D96680E8();
  return (*(v3 + 8))(v6, v11);
}

uint64_t PerformActionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23018, &qword_1D967EF38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668040();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D96680F4();
    sub_1D966EE88();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9667390(uint64_t a1)
{
  v2 = sub_1D9668148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96673CC(uint64_t a1)
{
  v2 = sub_1D9668148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9667408(uint64_t a1)
{
  v2 = sub_1D966819C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9667444(uint64_t a1)
{
  v2 = sub_1D966819C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionResponse.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23028, &qword_1D967EF40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23030, &qword_1D967EF48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668148();
  sub_1D966F118();
  sub_1D966819C();
  sub_1D966EED8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t PerformActionResponse.Response.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

uint64_t PerformActionResponse.Response.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23048, &qword_1D967EF50);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23050, &qword_1D967EF58);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668148();
  sub_1D966F0F8();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1D966EEB8();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1D9605E30() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1D966ED58();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020) + 48);
    *v19 = &type metadata for PerformActionResponse.Response;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1D966819C();
  sub_1D966EDE8();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D9667A28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23028, &qword_1D967EF40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23030, &qword_1D967EF48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668148();
  sub_1D966F118();
  sub_1D966819C();
  sub_1D966EED8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D9667C08(uint64_t a1)
{
  v2 = sub_1D96681F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9667C44(uint64_t a1)
{
  v2 = sub_1D96681F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23058, &qword_1D967EF60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96681F0();
  sub_1D966F118();
  sub_1D9668244();
  sub_1D966EF68();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PerformActionResponse.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23070, &qword_1D967EF68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96681F0();
  sub_1D966F0F8();
  if (!v1)
  {
    sub_1D9668298();
    sub_1D966EE88();
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9667F38()
{
  result = qword_1ECB22FD0;
  if (!qword_1ECB22FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FD0);
  }

  return result;
}

unint64_t sub_1D9667F8C()
{
  result = qword_1ECB22FD8;
  if (!qword_1ECB22FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FD8);
  }

  return result;
}

unint64_t sub_1D9667FE0()
{
  result = qword_1ECB22FE0;
  if (!qword_1ECB22FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FE0);
  }

  return result;
}

unint64_t sub_1D9668040()
{
  result = qword_1ECB23008;
  if (!qword_1ECB23008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23008);
  }

  return result;
}

unint64_t sub_1D9668094()
{
  result = qword_1ECB23010;
  if (!qword_1ECB23010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23010);
  }

  return result;
}

unint64_t sub_1D96680F4()
{
  result = qword_1ECB23020;
  if (!qword_1ECB23020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23020);
  }

  return result;
}

unint64_t sub_1D9668148()
{
  result = qword_1ECB23038;
  if (!qword_1ECB23038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23038);
  }

  return result;
}

unint64_t sub_1D966819C()
{
  result = qword_1ECB23040;
  if (!qword_1ECB23040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23040);
  }

  return result;
}

unint64_t sub_1D96681F0()
{
  result = qword_1ECB23060;
  if (!qword_1ECB23060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23060);
  }

  return result;
}

unint64_t sub_1D9668244()
{
  result = qword_1ECB23068;
  if (!qword_1ECB23068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23068);
  }

  return result;
}

unint64_t sub_1D9668298()
{
  result = qword_1ECB23078;
  if (!qword_1ECB23078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23078);
  }

  return result;
}

unint64_t sub_1D96682F0()
{
  result = qword_1ECB23080;
  if (!qword_1ECB23080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23080);
  }

  return result;
}

uint64_t sub_1D9668360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D96683A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D966849C()
{
  result = qword_1ECB23088;
  if (!qword_1ECB23088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23088);
  }

  return result;
}

unint64_t sub_1D96684F4()
{
  result = qword_1ECB23090;
  if (!qword_1ECB23090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23090);
  }

  return result;
}

unint64_t sub_1D966854C()
{
  result = qword_1ECB23098;
  if (!qword_1ECB23098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23098);
  }

  return result;
}

unint64_t sub_1D96685A4()
{
  result = qword_1ECB230A0;
  if (!qword_1ECB230A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230A0);
  }

  return result;
}

unint64_t sub_1D96685FC()
{
  result = qword_1ECB230A8;
  if (!qword_1ECB230A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230A8);
  }

  return result;
}

unint64_t sub_1D9668654()
{
  result = qword_1ECB230B0;
  if (!qword_1ECB230B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230B0);
  }

  return result;
}

unint64_t sub_1D96686AC()
{
  result = qword_1ECB230B8;
  if (!qword_1ECB230B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230B8);
  }

  return result;
}

unint64_t sub_1D9668704()
{
  result = qword_1ECB230C0;
  if (!qword_1ECB230C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230C0);
  }

  return result;
}

unint64_t sub_1D966875C()
{
  result = qword_1ECB230C8;
  if (!qword_1ECB230C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230C8);
  }

  return result;
}

unint64_t sub_1D96687B4()
{
  result = qword_1ECB230D0;
  if (!qword_1ECB230D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230D0);
  }

  return result;
}

unint64_t sub_1D966880C()
{
  result = qword_1ECB230D8;
  if (!qword_1ECB230D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230D8);
  }

  return result;
}

unint64_t sub_1D9668864()
{
  result = qword_1ECB230E0;
  if (!qword_1ECB230E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230E0);
  }

  return result;
}

unint64_t sub_1D96688BC()
{
  result = qword_1ECB230E8;
  if (!qword_1ECB230E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230E8);
  }

  return result;
}

unint64_t sub_1D9668914()
{
  result = qword_1ECB230F0;
  if (!qword_1ECB230F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230F0);
  }

  return result;
}

unint64_t sub_1D966896C()
{
  result = qword_1ECB230F8;
  if (!qword_1ECB230F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230F8);
  }

  return result;
}

unint64_t sub_1D96689C4()
{
  result = qword_1ECB23100;
  if (!qword_1ECB23100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23100);
  }

  return result;
}

unint64_t sub_1D9668A1C()
{
  result = qword_1ECB23108;
  if (!qword_1ECB23108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23108);
  }

  return result;
}

unint64_t sub_1D9668A74()
{
  result = qword_1ECB23110;
  if (!qword_1ECB23110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23110);
  }

  return result;
}

unint64_t sub_1D9668ACC()
{
  result = qword_1ECB23118;
  if (!qword_1ECB23118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23118);
  }

  return result;
}

unint64_t sub_1D9668B24()
{
  result = qword_1ECB23120;
  if (!qword_1ECB23120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23120);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OAuthAuthorizationContext.logKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OAuthAuthorizationContext.requestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OAuthAuthorizationContext() + 20);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OAuthAuthorizationContext()
{
  result = qword_1ECB23140;
  if (!qword_1ECB23140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(logKey:requestURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for OAuthAuthorizationContext() + 20);
  v7 = sub_1D966E5B8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1D9668D14()
{
  if (*v0)
  {
    result = 0x5574736575716572;
  }

  else
  {
    result = 0x79654B676F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D9668D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5574736575716572 && a2 == 0xEA00000000004C52)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9668E30(uint64_t a1)
{
  v2 = sub_1D966904C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9668E6C(uint64_t a1)
{
  v2 = sub_1D966904C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OAuthAuthorizationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23128, &qword_1D967F9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966904C();
  sub_1D966F118();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v13 = *(type metadata accessor for OAuthAuthorizationContext() + 20);
    v15[14] = 1;
    sub_1D966E5B8();
    sub_1D95E63E8(&qword_1ECB20860);
    sub_1D966EF68();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D966904C()
{
  result = qword_1ECB23130;
  if (!qword_1ECB23130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23130);
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1D966E5B8();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23138, &qword_1D967F9B8);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for OAuthAuthorizationContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966904C();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_1D966EE58();
  v13[1] = v17;
  v25 = 1;
  sub_1D95E63E8(&qword_1ECB20870);
  sub_1D966EE88();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1D96693B0(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9669414(v13);
}

uint64_t sub_1D96693B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9669414(uint64_t a1)
{
  v2 = type metadata accessor for OAuthAuthorizationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D96694DC()
{
  result = qword_1ECB23150;
  if (!qword_1ECB23150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23150);
  }

  return result;
}

unint64_t sub_1D9669534()
{
  result = qword_1ECB23158;
  if (!qword_1ECB23158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23158);
  }

  return result;
}

unint64_t sub_1D966958C()
{
  result = qword_1ECB23160;
  if (!qword_1ECB23160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23160);
  }

  return result;
}

uint64_t sub_1D96695E0()
{
  sub_1D966E768();
  v0 = sub_1D966E758();
  type metadata accessor for ServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EDCF9970 = result;
  return result;
}

uint64_t sub_1D966962C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1D966E8E8();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9669748, 0, 0);
}

uint64_t sub_1D9669748()
{
  v1 = MKBGetDeviceLockState();
  if (v1 != 3 && v1)
  {
    sub_1D9669EC0();
    swift_allocError();
    *v14 = 1;
LABEL_12:
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = sub_1D966B070();
  *(v0 + 104) = v2;
  if (!v2)
  {
LABEL_9:
    v15 = *(v0 + 96);
    sub_1D966E888();
    v16 = sub_1D966E8C8();
    v17 = sub_1D966EBA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D95E0000, v16, v17, "Unexpected connection type", v18, 2u);
      MEMORY[0x1DA734680](v18, -1, -1);
    }

    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 80);

    (*(v20 + 8))(v19, v21);
    sub_1D9669EC0();
    swift_allocError();
    *v22 = 0;
    goto LABEL_12;
  }

  v3 = v2;
  *(v0 + 48) = &unk_1F54FF040;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = v4;
  v6 = v3;
  v7 = sub_1D966E988();
  v8 = sub_1D966E988();
  v9 = [objc_opt_self() attributeWithDomain:v7 name:v8];
  *(v0 + 112) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB231D0, qword_1D967FB98);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D967FB80;
  *(v10 + 32) = v9;
  sub_1D966B218();
  v11 = v9;
  v12 = sub_1D966EA28();

  v13 = [v5 remoteTargetWithLaunchingAssertionAttributes_];

  if (v13)
  {
    sub_1D966EC28();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  *(v0 + 16) = v37;
  *(v0 + 32) = v38;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB231E0, &qword_1D967FBB0);
    if (swift_dynamicCast())
    {
      v23 = *(v0 + 72);
      v24 = *(v0 + 56);
      *(v0 + 120) = v24;
      type metadata accessor for LaunchAngelXPCRequest(0);
      sub_1D966B3E4(&qword_1ECB231E8, type metadata accessor for LaunchAngelXPCRequest);
      sub_1D966B3E4(&qword_1ECB231F0, type metadata accessor for LaunchAngelXPCRequest);
      v25 = sub_1D966E738();
      *(v0 + 128) = v25;
      *(v0 + 136) = v26;
      v31 = v25;
      v32 = v26;
      v33 = swift_task_alloc();
      *(v0 + 144) = v33;
      v33[2] = v24;
      v33[3] = v31;
      v33[4] = v32;
      v34 = *(MEMORY[0x1E69E8920] + 4);
      v35 = swift_task_alloc();
      *(v0 + 152) = v35;
      *v35 = v0;
      v35[1] = sub_1D9669C5C;
      v36 = *(v0 + 64);

      return MEMORY[0x1EEE6DE38](v36, 0, 0, 0xD00000000000001CLL, 0x80000001D9681F50, sub_1D966B264, v33, &type metadata for LaunchAngelXPCResponse);
    }
  }

  else
  {
    sub_1D9626248(v0 + 16);
  }

  sub_1D9669EC0();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();

  [v6 invalidate];
LABEL_19:
  v28 = *(v0 + 96);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1D9669C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1D9669E18;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1D9669D78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9669D78()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_1D95EA55C(v0[16], v0[17]);
  swift_unknownObjectRelease();

  [v3 invalidate];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D9669E18()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  sub_1D95EA55C(v0[16], v0[17]);
  swift_unknownObjectRelease();

  [v3 invalidate];

  v5 = v0[20];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

unint64_t sub_1D9669EC0()
{
  result = qword_1ECB23168;
  if (!qword_1ECB23168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23168);
  }

  return result;
}

uint64_t LaunchAngelConnectionUtilities.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

void sub_1D9669FA0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = sub_1D966E5D8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1D966B2E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D966AAD8;
  aBlock[3] = &block_descriptor_17;
  v12 = _Block_copy(aBlock);

  [a2 handleXPCRequest:v9 reply:v12];
  _Block_release(v12);
}

uint64_t sub_1D966A170(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a4;
  v43[2] = a2;
  v49 = *MEMORY[0x1E69E9840];
  v5 = sub_1D966E6E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D966E8E8();
  v44 = *(v45 - 8);
  v10 = *(v44 + 64);
  v11 = MEMORY[0x1EEE9AC00](v45);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23208, &qword_1D967FCA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v23 = v43 - v22;
  if (a3)
  {
    v24 = a3;
    sub_1D966E888();
    v25 = v24;
    v26 = sub_1D966E8C8();
    v27 = sub_1D966EBA8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136315138;
      v30 = v25;
      v31 = [v30 description];
      v32 = sub_1D966E9A8();
      v34 = v33;

      v35 = sub_1D9606634(v32, v34, &v47);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1D95E0000, v26, v27, "Error in reply: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1DA734680](v29, -1, -1);
      MEMORY[0x1DA734680](v28, -1, -1);
    }

    (*(v44 + 8))(v15, v45);
    v47 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
    result = sub_1D966EA88();
    goto LABEL_9;
  }

  v37 = v21;
  v43[0] = v13;
  sub_1D966B394(&qword_1ECB23210);
  sub_1D966B394(&qword_1ECB23218);
  sub_1D966E728();
  v43[1] = 0;
  (*(v37 + 16))(v20, v23, v16);
  v38 = (*(v37 + 88))(v20, v16);
  if (v38 == *MEMORY[0x1E696F050])
  {
    (*(v37 + 96))(v20, v16);
    v39 = v20[8];
    v47 = *v20;
    v48 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
    sub_1D966EA98();
    result = (*(v37 + 8))(v23, v16);
LABEL_9:
    v42 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v38 == *MEMORY[0x1E696F048])
  {
    (*(v37 + 96))(v20, v16);
    (*(v6 + 32))(v9, v20, v5);
    sub_1D966B3E4(&qword_1ECB20B80, MEMORY[0x1E696F038]);
    v40 = swift_allocError();
    (*(v6 + 16))(v41, v9, v5);
    v47 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
    sub_1D966EA88();
    (*(v6 + 8))(v9, v5);
    result = (*(v37 + 8))(v23, v16);
    goto LABEL_9;
  }

  result = sub_1D966ED88();
  __break(1u);
  return result;
}

uint64_t sub_1D966AAD8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = sub_1D966E5E8();
  v10 = v9;

  v11 = a3;
  v6(v8, v10, a3);

  sub_1D95EA55C(v8, v10);
}

void sub_1D966AB80(void *a1)
{
  v2 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  v3 = sub_1D966E988();
  v4 = [objc_opt_self() interfaceWithIdentifier_];

  v14 = sub_1D966AE18;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1D966AE24;
  v13 = &block_descriptor_17;
  v5 = _Block_copy(&v10);
  v6 = &unk_1F54FEC18;

  v7 = [objc_opt_self() protocolForProtocol:v6 interpreter:v5];
  _Block_release(v5);

  [v4 setServer_];
  [a1 setInterface_];
  v14 = sub_1D966AE78;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1D966AF14;
  v13 = &block_descriptor_20;
  v8 = _Block_copy(&v10);
  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v14 = sub_1D966AF7C;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1D966AF14;
  v13 = &block_descriptor_23;
  v9 = _Block_copy(&v10);
  [a1 setInvalidationHandler_];
  _Block_release(v9);
}

id sub_1D966AE24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1D966AE78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23220, &qword_1D967FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9674770;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000001D9682110;
  sub_1D966F058();
}

void sub_1D966AF14(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D966AF7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23220, &qword_1D967FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9674770;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000001D96820F0;
  sub_1D966F058();
}

uint64_t sub_1D966B01C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D966B070()
{
  v0 = sub_1D966E988();
  v1 = sub_1D966E988();
  v2 = [objc_opt_self() endpointForSystemMachName:v0 service:v1 instance:0];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() connectionWithEndpoint_];
  if (!v3)
  {
LABEL_5:

    return v3;
  }

  v6[4] = sub_1D966B018;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D966B01C;
  v6[3] = &block_descriptor_14;
  v4 = _Block_copy(v6);

  [v3 configureConnection_];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    [v3 activate];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D966B218()
{
  result = qword_1ECB231D8;
  if (!qword_1ECB231D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB231D8);
  }

  return result;
}

void sub_1D966B264(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1D9669FA0(a1, *(v1 + 16));
}

unint64_t sub_1D966B274()
{
  result = qword_1ECB231F8;
  if (!qword_1ECB231F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB231F8);
  }

  return result;
}

uint64_t sub_1D966B2E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1D966A170(a1, a2, a3, v8);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D966B394(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB23208, &qword_1D967FCA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D966B3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FeatureFlag.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

uint64_t isFeatureEnabled(_:)()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_1D966B560();
  v0 = sub_1D966E678();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_1D966B560()
{
  result = qword_1ECB23228;
  if (!qword_1ECB23228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23228);
  }

  return result;
}

unint64_t sub_1D966B5B8()
{
  result = qword_1ECB23230;
  if (!qword_1ECB23230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23230);
  }

  return result;
}

MarketplaceKit::AppDistributorResult __swiftcall AppDistributorResult.init(distributorID:requestingBundleID:)(Swift::String distributorID, Swift::String requestingBundleID)
{
  *v2 = distributorID;
  v2[1] = requestingBundleID;
  result.field1D968B0B4 = requestingBundleID;
  result.field1D968B0A8 = distributorID;
  return result;
}

unint64_t sub_1D966B628()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x7562697274736964;
  }

  *v0;
  return result;
}

uint64_t sub_1D966B674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9682190 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D966B760(uint64_t a1)
{
  v2 = sub_1D966B96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D966B79C(uint64_t a1)
{
  v2 = sub_1D966B96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppDistributorResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23238, &qword_1D967FD80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966B96C();
  sub_1D966F118();
  v16 = 0;
  v12 = v14[3];
  sub_1D966EF38();
  if (!v12)
  {
    v15 = 1;
    sub_1D966EF38();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D966B96C()
{
  result = qword_1EDCF6690;
  if (!qword_1EDCF6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6690);
  }

  return result;
}

uint64_t AppDistributorResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23240, &qword_1D967FD88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966B96C();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D966EE58();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D966EE58();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D966BC10()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = sub_1D966E958();
  if (*(v3 + 16) && (v4 = sub_1D9654B30(0xD00000000000001BLL, 0x80000001D9682150), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(v0 + 56) = v7;

  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1D966BDD8;

  return sub_1D95F3308(v0 + 16, v8, v7, sub_1D966BF90, 0);
}

uint64_t sub_1D966BDD8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1D966BF78;
  }

  else
  {
    v4 = sub_1D966BF08;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D966BF08()
{
  v6 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  AppDistributor.init(result:)(v5, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t *AppDistributor.init(result:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    v4 = *result;
    v6 = result[2];
    v5 = result[3];
    if (*result == 0xD000000000000012 && v3 == 0x80000001D9680290)
    {
      v9 = 0xD000000000000012;
      goto LABEL_10;
    }

    v8 = *result;
    if (sub_1D966EFB8())
    {
      v9 = v4;
LABEL_10:
      result = sub_1D9607A04(v9, v3);
      v4 = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if (v4 == 0xD000000000000014 && v3 == 0x80000001D9682170)
    {
      v10 = 0xD000000000000014;
LABEL_17:
      result = sub_1D9607A04(v10, v3);
      v4 = 0;
      v3 = 1;
      goto LABEL_11;
    }

    if (sub_1D966EFB8())
    {
      v10 = v4;
      goto LABEL_17;
    }

    if (v4 == v6 && v3 == v5)
    {
      v11 = v4;
      v12 = v3;
    }

    else
    {
      if ((sub_1D966EFB8() & 1) == 0)
      {

        result = sub_1D9607A04(v4, v3);
        goto LABEL_11;
      }

      v11 = v4;
      v12 = v3;
    }

    result = sub_1D9607A04(v11, v12);
    v4 = 0;
    v3 = 2;
  }

  else
  {
    v4 = 0;
    v3 = 3;
  }

LABEL_11:
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D966C15C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D95EAF50;
  v2 = *(v0 + 24);

  return sub_1D95F36F4(v2, sub_1D966C254, 0);
}

uint64_t get_enum_tag_for_layout_string_14MarketplaceKit14AppDistributorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D966C290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D966C2E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1D966C364()
{
  result = qword_1ECB23248;
  if (!qword_1ECB23248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23248);
  }

  return result;
}

unint64_t sub_1D966C3BC()
{
  result = qword_1EDCF6680;
  if (!qword_1EDCF6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6680);
  }

  return result;
}

unint64_t sub_1D966C414()
{
  result = qword_1EDCF6688;
  if (!qword_1EDCF6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6688);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for LinkMetadata()
{
  result = qword_1ECB23250;
  if (!qword_1ECB23250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D966C4FC()
{
  sub_1D966E5B8();
  if (v0 <= 0x3F)
  {
    sub_1D96127EC();
    if (v1 <= 0x3F)
    {
      sub_1D95E9634();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D966C5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23260, "v~");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v61 - v13;
  v15 = sub_1D966E4F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D966E5B8();
  v68 = *(v20 - 8);
  v21 = *(v68 + 16);
  v21(a3, a2, v20);
  v67 = type metadata accessor for LinkMetadata();
  v22 = *(v67 + 20);
  v69 = a3;
  v70 = a1;
  v21(a3 + v22, a1, v20);
  v23 = v16;
  v24 = a2;
  sub_1D966E4C8();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D966CBC0(v14);
LABEL_15:
    v50 = v68;
    v51 = *(v68 + 8);
    v51(a2, v20);
    v51(v70, v20);
    v52 = v67;
    v53 = v69;
    v54 = (v69 + *(v67 + 24));
    *v54 = 0;
    v54[1] = 0xE000000000000000;
    v55 = (v53 + v52[7]);
    *v55 = 0;
    v55[1] = 0;
    v56 = (v53 + v52[8]);
    *v56 = 0;
    v56[1] = 0;
    v57 = (v53 + v52[9]);
    *v57 = 0;
    v57[1] = 0;
    v58 = *(v50 + 56);
    v58(v53 + v52[10], 1, 1, v20);
    return (v58)(v53 + v52[11], 1, 1, v20);
  }

  (*(v16 + 32))(v19, v14, v15);
  v25 = sub_1D966E4B8();
  if (!v25)
  {
    (*(v16 + 8))(v19, v15);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = sub_1D966E4D8();
  v29 = v68;
  v62 = v19;
  v63 = v23;
  if (!v28)
  {
    v27 = sub_1D966E4E8();
  }

  v30 = v69;
  v31 = v65;
  v32 = v67;
  v33 = (v69 + *(v67 + 24));
  *v33 = v27;
  v33[1] = v28;
  v34 = sub_1D966CC28(0x6E656B6F74, 0xE500000000000000, v26);
  v35 = (v30 + v32[7]);
  *v35 = v34;
  v35[1] = v36;
  v37 = sub_1D966CC28(0xD000000000000018, 0x80000001D9680510, v26);
  v64 = v24;
  if (!v38)
  {
    v37 = sub_1D966CC28(0x44664F666F6F7270, 0xEF64616F6C6E776FLL, v26);
  }

  v39 = (v30 + v32[8]);
  *v39 = v37;
  v39[1] = v38;
  v40 = sub_1D966CC28(0x746E756F636361, 0xE700000000000000, v26);
  v41 = (v30 + v32[9]);
  *v41 = v40;
  v41[1] = v42;
  sub_1D966CC28(0xD00000000000001ELL, 0x80000001D96804F0, v26);
  if (v43 || (sub_1D966CC28(7365729, 0xE300000000000000, v26), v44) || (sub_1D966CC28(7365733, 0xE300000000000000, v26), v45))
  {

    sub_1D966E5A8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v29 + 56))(v31, 1, 1, v20);
  }

  sub_1D961B690(v31, v30 + v32[10]);
  sub_1D966CC28(0x6572616853707061, 0xEB000000004C5255, v26);
  v47 = v46;

  if (v47)
  {

    v48 = v66;
    sub_1D966E5A8();

    v49 = *(v29 + 8);
    v49(v64, v20);
    v49(v70, v20);
    (*(v63 + 8))(v62, v15);
  }

  else
  {
    v60 = *(v29 + 8);
    v60(v64, v20);
    v60(v70, v20);
    (*(v63 + 8))(v62, v15);
    v48 = v66;
    (*(v29 + 56))(v66, 1, 1, v20);
  }

  return sub_1D961B690(v48, v30 + v32[11]);
}

uint64_t sub_1D966CBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23260, "v~");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D966CC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D966E4A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v17 = v7 + 16;
  v18 = a3;
  v12 = (v7 + 8);
  for (i = v11 - 1; i != -1; --i)
  {
    (*(v7 + 16))(v10, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * i, v6);
    if (sub_1D966E488() == a1 && v15 == a2)
    {

      (*v12)(v10, v6);
      return sub_1D966E498();
    }

    v14 = sub_1D966EFB8();

    (*v12)(v10, v6);
    if (v14)
    {
      return sub_1D966E498();
    }
  }

  return 0;
}

uint64_t AppLibrary.ExceptionRequest.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.distributorID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLibrary.ExceptionRequest() + 40);
  v4 = sub_1D966E5F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppLibrary.ExceptionRequest()
{
  result = qword_1ECB232A8;
  if (!qword_1ECB232A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(id:appleItemID:bundleIdentifier:distributorID:status:exceptedRatingValue:timestamp:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a8;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *a9 = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 8) = v13;
  *(a9 + 64) = a10;
  v14 = type metadata accessor for AppLibrary.ExceptionRequest();
  v15 = *(v14 + 40);
  v16 = sub_1D966E5F8();
  (*(*(v16 - 8) + 32))(a9 + v15, a11, v16);
  v17 = a9 + *(v14 + 44);

  return sub_1D966D054(a12, v17);
}

uint64_t sub_1D966D054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExceptionRequestMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t AppLibrary.ExceptionRequest.Status.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D966D18C()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x7562697274736964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
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

uint64_t sub_1D966D29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D966E0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D966D2C4(uint64_t a1)
{
  v2 = sub_1D966D64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D966D300(uint64_t a1)
{
  v2 = sub_1D966D64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLibrary.ExceptionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23268, "v~");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966D64C();
  sub_1D966F118();
  v11 = *v3;
  v23[15] = 0;
  sub_1D966EF88();
  if (!v2)
  {
    v23[14] = *(v3 + 8);
    v23[13] = 1;
    sub_1D966D6A0();
    sub_1D966EF68();
    v12 = v3[2];
    v13 = v3[3];
    v23[12] = 2;
    sub_1D966EF38();
    v14 = v3[4];
    v15 = v3[5];
    v23[11] = 3;
    sub_1D966EEE8();
    v16 = v3[6];
    v17 = v3[7];
    v23[10] = 4;
    sub_1D966EEE8();
    v18 = v3[8];
    v23[9] = 5;
    sub_1D966EF58();
    v19 = type metadata accessor for AppLibrary.ExceptionRequest();
    v20 = *(v19 + 40);
    v23[8] = 6;
    sub_1D966E5F8();
    sub_1D966DD00(&qword_1ECB23280, MEMORY[0x1E6969530]);
    sub_1D966EF68();
    v21 = *(v19 + 44);
    v23[7] = 7;
    type metadata accessor for ExceptionRequestMetadata();
    sub_1D966DD00(&qword_1ECB229D8, type metadata accessor for ExceptionRequestMetadata);
    sub_1D966EF68();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D966D64C()
{
  result = qword_1ECB23270;
  if (!qword_1ECB23270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23270);
  }

  return result;
}

unint64_t sub_1D966D6A0()
{
  result = qword_1ECB23278;
  if (!qword_1ECB23278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23278);
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = type metadata accessor for ExceptionRequestMetadata();
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D966E5F8();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23288, &qword_1D967FFD8);
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AppLibrary.ExceptionRequest();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D966D64C();
  v18 = v48;
  sub_1D966F0F8();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v19 = v8;
  v48 = v12;
  v20 = v45;
  v21 = v46;
  v58 = 0;
  v22 = v47;
  *v15 = sub_1D966EEA8();
  v56 = 1;
  sub_1D966DCAC();
  sub_1D966EE88();
  v15[8] = v57;
  v55 = 2;
  *(v15 + 2) = sub_1D966EE58();
  *(v15 + 3) = v24;
  v54 = 3;
  *(v15 + 4) = sub_1D966EE08();
  *(v15 + 5) = v25;
  v53 = 4;
  *(v15 + 6) = sub_1D966EE08();
  *(v15 + 7) = v26;
  v52 = 5;
  v27 = sub_1D966EE78();
  v41 = 0;
  v40 = 0;
  *(v15 + 8) = v27;
  v51 = 6;
  sub_1D966DD00(&qword_1ECB23298, MEMORY[0x1E6969530]);
  v28 = v41;
  sub_1D966EE88();
  v41 = v28;
  if (v28)
  {
    (*(v20 + 8))(v11, v22);
    v29 = v40;
    __swift_destroy_boxed_opaque_existential_1(v49);
    v30 = *(v15 + 3);

    if (!v29)
    {
      v32 = *(v15 + 5);
    }

    v31 = *(v15 + 7);
  }

  else
  {
    v33 = v48;
    (*(v21 + 32))(&v15[*(v48 + 40)], v19, v5);
    v50 = 7;
    sub_1D966DD00(&qword_1ECB229E0, type metadata accessor for ExceptionRequestMetadata);
    v34 = v44;
    v35 = v41;
    sub_1D966EE88();
    (*(v20 + 8))(v11, v22);
    if (v35)
    {
      __swift_destroy_boxed_opaque_existential_1(v49);
      v36 = *(v15 + 3);

      v37 = *(v15 + 5);

      v38 = *(v15 + 7);

      return (*(v21 + 8))(&v15[*(v33 + 40)], v5);
    }

    else
    {
      sub_1D966D054(v34, &v15[*(v33 + 44)]);
      sub_1D966DD48(v15, v42, type metadata accessor for AppLibrary.ExceptionRequest);
      __swift_destroy_boxed_opaque_existential_1(v49);
      return sub_1D966DDB0(v15);
    }
  }
}

unint64_t sub_1D966DCAC()
{
  result = qword_1ECB23290;
  if (!qword_1ECB23290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23290);
  }

  return result;
}

uint64_t sub_1D966DD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D966DD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D966DDB0(uint64_t a1)
{
  v2 = type metadata accessor for AppLibrary.ExceptionRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D966DE10()
{
  result = qword_1ECB232A0;
  if (!qword_1ECB232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232A0);
  }

  return result;
}

void sub_1D966DEBC()
{
  sub_1D96127EC();
  if (v0 <= 0x3F)
  {
    sub_1D966E5F8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ExceptionRequestMetadata();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D966DFB4()
{
  result = qword_1ECB232B8;
  if (!qword_1ECB232B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232B8);
  }

  return result;
}

unint64_t sub_1D966E00C()
{
  result = qword_1ECB232C0;
  if (!qword_1ECB232C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232C0);
  }

  return result;
}

unint64_t sub_1D966E064()
{
  result = qword_1ECB232C8;
  if (!qword_1ECB232C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232C8);
  }

  return result;
}

uint64_t sub_1D966E0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96821B0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D96821D0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1D966E360()
{
  result = qword_1ECB232D0;
  if (!qword_1ECB232D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232D0);
  }

  return result;
}