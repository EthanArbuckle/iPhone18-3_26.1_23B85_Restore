void sub_19560DAE4()
{
  v70[1] = *MEMORY[0x1E69E9840];
  v1 = sub_19565D0EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EAED0998);
  v67 = v2;
  v68 = v4;
  (*(v2 + 16))(v4, v5, v1);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAECB7F0;
  v7 = _AppExtensionIdentity.appDisplayName.getter();
  v9 = v8;
  v10 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v12 = v11;
  v65 = v10;
  v66 = v7;
  v13 = sub_19560E798(v10, v11, v7, v9);
  if (!v13)
  {

    (*(v67 + 8))(v68, v1);
    return;
  }

  v14 = v13;
  v64 = v1;
  v15 = [objc_allocWithZone(CNSaveRequest) init];
  [v15 deleteContainer_];
  [v15 setIgnoresContactProviderRestrictions_];
  v16 = sub_1956019F0();
  v70[0] = 0;
  v17 = [v16 executeSaveRequest:v15 error:v70];

  if (!v17)
  {
    v39 = v70[0];
    v20 = sub_19565CE6C();

    swift_willThrow();
    v40 = v14;

    v41 = v20;
    v42 = v68;
    v43 = sub_19565D0CC();
    v44 = sub_19565D69C();
    if (os_log_type_enabled(v43, v44))
    {
      LODWORD(v62) = v44;
      v63 = v43;
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70[0] = v61;
      *v45 = 136446978;
      v46 = [v40 identifier];
      if (!v46)
      {

        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v47 = v46;

      v48 = sub_19565D28C();
      v50 = v49;

      v51 = sub_1955EA0F8(v48, v50, v70);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2082;
      v52 = sub_1955EA0F8(v65, v12, v70);

      *(v45 + 14) = v52;
      *(v45 + 22) = 2082;
      v53 = sub_1955EA0F8(v66, v9, v70);

      *(v45 + 24) = v53;
      *(v45 + 32) = 2082;
      v69 = v20;
      v54 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v55 = sub_19565D2EC();
      v57 = sub_1955EA0F8(v55, v56, v70);

      *(v45 + 34) = v57;
      v58 = v63;
      _os_log_impl(&dword_1954A0000, v63, v62, "deleteProviderContainer() failed to delete container with identifier %{public}s and provider identifier %{public}s for %{public}s app, error = %{public}s", v45, 0x2Au);
      v59 = v61;
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v59, -1, -1);
      MEMORY[0x19A8B5DB0](v45, -1, -1);

      v42 = v68;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    swift_willThrow();

    v38 = *(v67 + 8);
    v37 = v42;
    goto LABEL_17;
  }

  v18 = v70[0];
  v19 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v63 = &v60;
  v20 = *(v6 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v21 = MEMORY[0x1EEE9AC00](v19);
  *(&v60 - 4) = v6;
  *(&v60 - 3) = v21;
  *(&v60 - 2) = v22;
  MEMORY[0x1EEE9AC00](v21);
  *(&v60 - 2) = sub_195612858;
  *(&v60 - 1) = v23;
  os_unfair_lock_lock(v20 + 4);
  sub_195610A10();
  if (!v0)
  {
    os_unfair_lock_unlock(v20 + 4);

    v20 = v14;

    v24 = v68;
    v25 = sub_19565D0CC();
    v26 = sub_19565D6AC();
    if (!os_log_type_enabled(v25, v26))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      (*(v67 + 8))(v24, v64);
      return;
    }

    LODWORD(v61) = v26;
    v62 = v25;
    v27 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v70[0] = v60;
    *v27 = 136446722;
    v28 = [(os_unfair_lock_s *)v20 identifier];
    v63 = v20;

    if (v28)
    {
      v29 = sub_19565D28C();
      v31 = v30;

      v32 = sub_1955EA0F8(v29, v31, v70);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      v33 = sub_1955EA0F8(v65, v12, v70);

      *(v27 + 14) = v33;
      *(v27 + 22) = 2082;
      v34 = sub_1955EA0F8(v66, v9, v70);

      *(v27 + 24) = v34;
      v35 = v62;
      _os_log_impl(&dword_1954A0000, v62, v61, "deleteProviderContainer() deleted container with identifier %{public}s and provider identifier %{public}s for %{public}s app", v27, 0x20u);
      v36 = v60;
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v36, -1, -1);
      MEMORY[0x19A8B5DB0](v27, -1, -1);

      v37 = v68;
      v38 = *(v67 + 8);
LABEL_17:
      v38(v37, v64);
      return;
    }

    goto LABEL_20;
  }

LABEL_21:
  os_unfair_lock_unlock(v20 + 4);
  __break(1u);
}

uint64_t sub_19560E29C(uint64_t a1)
{
  v2 = sub_19565D0EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EAED0998);
  v56 = v3;
  v57 = v2;
  v7 = *(v3 + 16);
  v58 = v5;
  v7(v5, v6, v2);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAECB7F0;
  v54 = _AppExtensionIdentity.appDisplayName.getter();
  v10 = v9;
  v52 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v12 = v11;
  v13 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v14 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock;
  v15 = *(v8 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v16 = MEMORY[0x1EEE9AC00](v13);
  *(&v45 - 4) = v8;
  *(&v45 - 3) = v16;
  *(&v45 - 2) = v17;
  MEMORY[0x1EEE9AC00](v16);
  *(&v45 - 2) = sub_1956134DC;
  *(&v45 - 1) = v18;
  os_unfair_lock_lock(v15 + 4);
  sub_1956134FC(&v59);
  os_unfair_lock_unlock(v15 + 4);

  v19 = v59;
  if (v59)
  {
    v55 = v12;
    v20 = v59;
    v21 = v57;
LABEL_14:
    v43 = v19;
    goto LABEL_15;
  }

  v48 = a1;
  v49 = 0;
  v50 = v14;
  v51 = v8;
  v22 = v52;
  v23 = sub_19560E798(v52, v12, v54, v10);
  v20 = v23;
  v24 = v12;
  if (!v23)
  {
    v21 = v57;
LABEL_15:
    v44 = v56;

    (*(v44 + 8))(v58, v21);

    return v20;
  }

  v25 = v22;
  v19 = v23;

  v26 = sub_19565D0CC();
  v27 = sub_19565D6AC();
  v28 = os_log_type_enabled(v26, v27);
  v55 = v24;
  if (!v28)
  {

    v21 = v57;
    v33 = v51;
    goto LABEL_13;
  }

  LODWORD(v53) = v27;
  v29 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v59 = v47;
  *v29 = 136446722;
  v30 = v24;
  v31 = [v19 identifier];

  v33 = v51;
  if (v31)
  {
    v46 = sub_19565D28C();
    v35 = v34;

    v36 = sub_1955EA0F8(v46, v35, &v59);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1955EA0F8(v25, v30, &v59);
    *(v29 + 22) = 2082;
    *(v29 + 24) = sub_1955EA0F8(v54, v10, &v59);
    _os_log_impl(&dword_1954A0000, v26, v53, "providerContainer() fetched container with identifier %{public}s and provider identifier %{public}s for %{public}s app", v29, 0x20u);
    v37 = v47;
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v37, -1, -1);
    MEMORY[0x19A8B5DB0](v29, -1, -1);

    v21 = v57;
LABEL_13:
    v38 = _AppExtensionIdentity.appBundleIdentifier.getter();
    v39 = *(v33 + v50);
    v40 = MEMORY[0x1EEE9AC00](v38);
    *(&v45 - 4) = v33;
    *(&v45 - 3) = v40;
    *(&v45 - 2) = v41;
    *(&v45 - 1) = v19;
    MEMORY[0x1EEE9AC00](v40);
    *(&v45 - 2) = sub_195613528;
    *(&v45 - 1) = v42;
    os_unfair_lock_lock(v39 + 4);
    sub_195613588();
    os_unfair_lock_unlock(v39 + 4);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_19560E798(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v37 = a3;
  v39[4] = *MEMORY[0x1E69E9840];
  v7 = sub_19565D0EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_1EAED0998);
  (*(v8 + 16))(v10, v11, v7);
  v12 = objc_opt_self();
  v13 = sub_19565D27C();
  v14 = [v12 predicateForContainerWithProviderIdentifier_];

  v15 = sub_1956019F0();
  v39[0] = 0;
  v16 = [v15 containersMatchingPredicate:v14 error:v39];

  v17 = v39[0];
  if (!v16)
  {
    v23 = v39[0];
    v24 = a4;
    v25 = sub_19565CE6C();

    swift_willThrow();

    v26 = v25;
    v27 = sub_19565D0CC();
    v28 = sub_19565D69C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v29 = 136446722;
      *(v29 + 4) = sub_1955EA0F8(a1, a2, v39);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_1955EA0F8(v37, v24, v39);
      *(v29 + 22) = 2082;
      v38 = v25;
      v30 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v31 = sub_19565D2EC();
      v33 = sub_1955EA0F8(v31, v32, v39);

      *(v29 + 24) = v33;
      _os_log_impl(&dword_1954A0000, v27, v28, "fetchProviderContainer() failed to find container with provider identifier %{public}s for %{public}s app, error = %{public}s", v29, 0x20u);
      v34 = v36;
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v34, -1, -1);
      MEMORY[0x19A8B5DB0](v29, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  sub_1954C3460(0, &unk_1EAECB840);
  v18 = sub_19565D3FC();
  v19 = v17;

  if (v18 >> 62)
  {
    if (sub_19565D81C())
    {
      if (sub_19565D81C())
      {
        goto LABEL_6;
      }

      (*(v8 + 8))(v10, v7);

      return 0;
    }

LABEL_19:
    (*(v8 + 8))(v10, v7);

    return 0;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x19A8B3850](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  [v21 mutableCopy];

  sub_19565D7CC();
  swift_unknownObjectRelease();

  (*(v8 + 8))(v10, v7);
  sub_1954C3460(0, &qword_1EAECDED0);
  if (swift_dynamicCast())
  {
    return v38;
  }

  else
  {
    return 0;
  }
}

void sub_19560ECB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v25 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = sub_19565D0EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v8 + 80) + v16 + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v15, v14, v11);
  v19 = (v18 + v16);
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  (*(v8 + 32))(v18 + v17, v10, v7);
  aBlock[4] = sub_195612DC0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19560F08C;
  aBlock[3] = &block_descriptor_187;
  v21 = _Block_copy(aBlock);

  [v25 monitorForDeath_];
  _Block_release(v21);
}

uint64_t sub_19560EF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  v7 = sub_19565D0CC();
  v8 = sub_19565D6AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1955EA0F8(a4, a5, &v12);
    _os_log_impl(&dword_1954A0000, v7, v8, "terminateExtension() did terminate extension %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x19A8B5DB0](v10, -1, -1);
    MEMORY[0x19A8B5DB0](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF00);
  return sub_19565D52C();
}

void sub_19560F08C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_19560F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_19565D07C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_19565D0EC();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19560F234, 0, 0);
}

uint64_t sub_19560F234()
{
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_19565D27C();
  v6 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  sub_1954C3460(0, &qword_1EAECDEE0);
  v7 = sub_195610B2C(v6);

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_19560F4A4;
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[4];

  return sub_19560C4B0(v9, v11, v10);
}

uint64_t sub_19560F4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  v6[17] = a4;
  v6[18] = v4;

  if (v4)
  {
    v7 = sub_19560FC48;
  }

  else
  {
    v7 = sub_19560F5C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_19560F5C0()
{
  v1 = *(v0 + 144);
  v2 = sub_19565D06C();
  *(v0 + 152) = v2;
  if (v1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 32);
    v15 = *(v0 + 16);
    v16 = *(v0 + 120);
    v12 = [objc_opt_self() interfaceWithProtocol_];
    [v5 setRemoteObjectInterface_];

    [v5 resume];
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = v8;
    *(v13 + 32) = v7;
    *(v13 + 40) = v16;
    *(v13 + 56) = v6;
    *(v13 + 64) = v15;
    *(v13 + 80) = v10;
    *(v13 + 88) = v11;
    *(v13 + 96) = v9;
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_19560F814;

    return MEMORY[0x1EEE6DE38]();
  }
}

uint64_t sub_19560F814()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_19560FCD8;
  }

  else
  {
    v2 = sub_19560F964;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19560F964()
{
  v0[23] = 0;
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_19560F9FC;
  v3 = v0[14];
  v2 = v0[15];

  return sub_195610BF0(v3, v2);
}

uint64_t sub_19560F9FC()
{

  return MEMORY[0x1EEE6DFA0](sub_19560FB14, 0, 0);
}

uint64_t sub_19560FB14()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 152);
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    swift_willThrow();

    (*(v3 + 8))(v2, v4);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);

    (*(v7 + 8))(v6, v8);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19560FC48()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19560FCD8()
{
  v0[23] = v0[22];
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_19560F9FC;
  v3 = v0[14];
  v2 = v0[15];

  return sub_195610BF0(v3, v2);
}

void sub_19560FD74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  v87 = a8;
  v94 = a7;
  v97 = a4;
  v98 = a6;
  v96 = a5;
  v91 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
  v90 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v71 - v17;
  v95 = &v71 - v17;
  v19 = sub_19565D0EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 16);
  v92 = a3;
  v85 = v20 + 16;
  v84 = v23;
  v23(v22, a3, v19);
  v24 = *(v15 + 16);
  v93 = a1;
  v83 = v15 + 16;
  v82 = v24;
  v24(v18, a1, v14);
  v25 = *(v20 + 80);
  v26 = (v25 + 16) & ~v25;
  v79 = v21 + 7;
  v27 = (v21 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v15 + 80);
  v77 = (v29 + 16);
  v30 = (v29 + 16 + v28) & ~v29;
  v81 = v25;
  v76 = v29;
  v88 = v16;
  v78 = v25 | v29;
  v31 = swift_allocObject();
  v32 = *(v20 + 32);
  v74 = v22;
  v75 = v19;
  v86 = v20 + 32;
  v80 = v32;
  v32((v31 + v26), v22, v19);
  v33 = (v31 + v27);
  v34 = v96;
  *v33 = v97;
  v33[1] = v34;
  v35 = v90;
  v36 = (v31 + v28);
  v38 = v94;
  v37 = v95;
  *v36 = v98;
  v36[1] = v38;
  v39 = *(v15 + 32);
  v40 = v31 + v30;
  v41 = v38;
  v42 = v35;
  v89 = v15 + 32;
  v39(v40, v37);
  v104 = sub_1956128D8;
  v105 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v101 = 1107296256;
  v102 = sub_195603620;
  v103 = &block_descriptor_1;
  v43 = _Block_copy(&aBlock);

  v44 = [v91 remoteObjectProxyWithErrorHandler_];
  _Block_release(v43);
  sub_19565D7CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEF0);
  if (swift_dynamicCast())
  {
    v91 = a12;
    v72 = a11;
    v71 = a10;
    v73 = v39;
    v45 = v81;
    v46 = ~v76;
    v76 = v99;
    swift_unknownObjectRetain();
    v87 = sub_19565D27C();
    v47 = v74;
    v48 = v75;
    v84(v74, v92, v75);
    v49 = v95;
    v50 = v42;
    v82(v95, v93, v42);
    v51 = (v45 + 40) & ~v45;
    v52 = (v79 + v51) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
    v54 = &v77[v53] & v46;
    v55 = swift_allocObject();
    v56 = v72;
    *(v55 + 2) = a10;
    *(v55 + 3) = v56;
    *(v55 + 4) = v91;
    v80(&v55[v51], v47, v48);
    v57 = &v55[v52];
    v58 = v96;
    *v57 = v97;
    v57[1] = v58;
    v59 = &v55[v53];
    v60 = v94;
    *v59 = v98;
    v59[1] = v60;
    v73(&v55[v54], v49, v50);
    v104 = sub_195612A84;
    v105 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v101 = 1107296256;
    v102 = sub_195603994;
    v103 = &block_descriptor_176;
    v61 = _Block_copy(&aBlock);

    v62 = v71;

    v63 = v87;
    [v76 invalidateFor:v87 reply:v61];
    _Block_release(v61);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v65 = v97;
    v64 = v98;
    v66 = v96;

    v67 = sub_19565D0CC();
    v68 = sub_19565D69C();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock = v70;
      *v69 = 136446466;
      *(v69 + 4) = sub_1955EA0F8(v65, v66, &aBlock);
      *(v69 + 12) = 2082;
      *(v69 + 14) = sub_1955EA0F8(v64, v41, &aBlock);
      _os_log_impl(&dword_1954A0000, v67, v68, "invalidateExtensionImpl() failed due to some XPC connection error with extension %{public}s for %{public}s app, extension proxy might not conform to CNContactProviderExtensionXPCProtocol.", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v70, -1, -1);
      MEMORY[0x19A8B5DB0](v69, -1, -1);
    }

    type metadata accessor for CNError(0);
    v99 = 1;
    sub_1956128FC(MEMORY[0x1E69E7CC0]);
    sub_195612A2C();
    sub_19565CE4C();
    v99 = aBlock;
    sub_19565D51C();
  }
}

uint64_t sub_1956104F4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, const char *a8)
{

  v14 = a1;
  v15 = sub_19565D0CC();
  v16 = sub_19565D69C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_1955EA0F8(a3, a4, &v25);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_1955EA0F8(a5, a6, &v25);
    *(v17 + 22) = 2082;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
    v20 = sub_19565D2EC();
    v22 = sub_1955EA0F8(v20, v21, &v25);

    *(v17 + 24) = v22;
    _os_log_impl(&dword_1954A0000, v15, v16, a8, v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v18, -1, -1);
    MEMORY[0x19A8B5DB0](v17, -1, -1);
  }

  v25 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
  return sub_19565D51C();
}

uint64_t sub_1956106E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  sub_195612A9C(a3, a4);
  if (a1)
  {
    v13 = a1;

    v14 = sub_19565D0CC();
    v15 = sub_19565D69C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446722;
      *(v16 + 4) = sub_1955EA0F8(a6, a7, &v23);
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1955EA0F8(a8, a9, &v23);
      *(v16 + 22) = 2082;
      v18 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v19 = sub_19565D2EC();
      v21 = sub_1955EA0F8(v19, v20, &v23);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1954A0000, v14, v15, "invalidateExtensionImpl() failed to invalidate extension %{public}s for %{public}s app, error = %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v17, -1, -1);
      MEMORY[0x19A8B5DB0](v16, -1, -1);
    }

    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
    return sub_19565D51C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
    return sub_19565D52C();
  }
}

id CNContactProviderSupportHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNContactProviderSupportHost.init()()
{
  *&v0[OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost____lazy_storage___contactStore] = 0;
  v1 = &v0[OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost_ContactProviderErrorDomain];
  *v1 = 0xD000000000000024;
  *(v1 + 1) = 0x800000019568CD30;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CNContactProviderSupportHost();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CNContactProviderSupportHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactProviderSupportHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195610A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_195610AE8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id sub_195610B2C(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_19565CE6C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_195610BF0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_19565D0EC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_195610CDC, 0, 0);
}

uint64_t sub_195610CDC()
{
  v43 = v0;
  v42[1] = *MEMORY[0x1E69E9840];
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_19565D0CC();
  v6 = sub_19565D6AC();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1955EA0F8(v8, v7, v42);
    _os_log_impl(&dword_1954A0000, v5, v6, "terminateExtension() will terminate extension %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x19A8B5DB0](v10, -1, -1);
    MEMORY[0x19A8B5DB0](v9, -1, -1);
  }

  v11 = sub_19565D27C();
  v12 = [objc_opt_self() predicateMatchingBundleIdentifier_];
  v0[9] = v12;

  sub_1954C3460(0, &qword_1EAECDEE0);
  v13 = v12;
  v14 = sub_195610B2C(v13);
  v0[10] = v14;

  v15 = objc_allocWithZone(MEMORY[0x1E69C7650]);
  v16 = sub_19565D27C();
  v17 = [v15 initWithExplanation_];
  v0[11] = v17;

  v18 = [objc_allocWithZone(MEMORY[0x1E69C7660]) initWithPredicate:v13 context:v17];
  v0[12] = v18;
  v0[3] = 0;
  v19 = [v18 execute_];
  v20 = v0[3];
  if (v19)
  {
    v21 = v0[8];
    v23 = v0[4];
    v22 = v0[5];
    v24 = swift_task_alloc();
    v0[13] = v24;
    v24[2] = v14;
    v24[3] = v21;
    v24[4] = v23;
    v24[5] = v22;
    v25 = v20;
    v26 = swift_task_alloc();
    v0[14] = v26;
    *v26 = v0;
    v26[1] = sub_195611260;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v27 = v20;
    v28 = sub_19565CE6C();

    swift_willThrow();

    v29 = v28;
    v30 = sub_19565D0CC();
    v31 = sub_19565D69C();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = v0[4];
      v32 = v0[5];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v34 = 136446466;
      *(v34 + 4) = sub_1955EA0F8(v33, v32, v42);
      *(v34 + 12) = 2082;
      v0[2] = v28;
      v36 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v37 = sub_19565D2EC();
      v39 = sub_1955EA0F8(v37, v38, v42);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_1954A0000, v30, v31, "terminateExtension() failed to terminate extension %{public}s, error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v35, -1, -1);
      MEMORY[0x19A8B5DB0](v34, -1, -1);
    }

    else
    {
    }

    (*(v0[7] + 8))(v0[8], v0[6]);

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_195611260()
{

  return MEMORY[0x1EEE6DFA0](sub_1956113A4, 0, 0);
}

uint64_t sub_1956113A4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19561146C(uint64_t a1)
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
  v11[1] = sub_1954C393C;

  return sub_19560A1B8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_195611564@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t dispatch thunk of CNContactProviderSupportHost.synchronize(using:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1954C37F4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CNContactProviderSupportHost.invalidateExtension(for:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1954C393C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CNContactProviderSupportHost.resetEnumeration(for:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x90);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1954C393C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CNContactProviderSupportHost.addDomain(_:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1954C393C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CNContactProviderSupportHost.removeDomain(for:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1954C393C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CNContactProviderSupportHost.registeredDomains(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_195611DE0;

  return v9(a1, a2);
}

uint64_t sub_195611DE0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CNContactProviderSupportHost.enableDomain(for:bundleIdentifier:showPrompt:shouldSynchronize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xC0);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1954C393C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CNContactProviderSupportHost.disableDomain(for:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xC8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1954C393C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1956121FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1954C393C;

  return sub_19560BCA4(v2, v3, v5, v4);
}

uint64_t sub_1956122BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1954C393C;

  return sub_19560AA10(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_195612394()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1954C393C;

  return sub_195608758(v2, v3, v4);
}

uint64_t sub_195612448()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1954C393C;

  return sub_195607DBC(v2, v3, v4);
}

uint64_t sub_195612508()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1954C393C;

  return sub_195607B28(v2, v3, v5, v4);
}

uint64_t sub_1956125C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1954C393C;

  return sub_195606198(v2, v3, v5, v4);
}

uint64_t sub_195612688()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1954C393C;

  return sub_195604DC8(v2, v3, v5, v4);
}

uint64_t objectdestroy_44Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_195612798()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1954C37F4;

  return sub_195603C80(v2, v3, v5, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1956128FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEF8);
    v3 = sub_19565DA7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1955F7964(v4, &v13, &unk_1EAECE400);
      v5 = v13;
      v6 = v14;
      result = sub_1954C2328(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1955EBBA0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_195612A2C()
{
  result = qword_1EAECDA78;
  if (!qword_1EAECDA78)
  {
    type metadata accessor for CNError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECDA78);
  }

  return result;
}

uint64_t sub_195612A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - v8;
  v10 = sub_19565D0BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v26[0] = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECB7E8 != -1)
  {
    v12 = swift_once();
  }

  v14 = qword_1EAECB7F0;
  v15 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock;
  v16 = *(qword_1EAECB7F0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v26[-4] = v14;
  v26[-3] = a1;
  v26[-2] = a2;
  MEMORY[0x1EEE9AC00](v17);
  v26[-2] = sub_195613548;
  v26[-1] = v18;
  os_unfair_lock_lock(v16 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v16 + 4);
  sub_195610A38(v7, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1954C2698(v9, &qword_1EAECDEB8);
  }

  v20 = v26[0];
  (*(v11 + 32))(v26[0], v9, v10);
  v21 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v22 = *(v14 + v15);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v26[-4] = v14;
  v26[-3] = v23;
  v26[-2] = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26[-2] = sub_195613560;
  v26[-1] = v25;
  os_unfair_lock_lock(v22 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v22 + 4);

  return (*(v11 + 8))(v20, v10);
}

uint64_t sub_195612DC0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_19565D0EC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF00);
  v8 = *(v2 + v7);
  v9 = *(v2 + v7 + 8);

  return sub_19560EF5C(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_169Tm()
{
  v1 = sub_19565D0EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_195613060(void *a1, const char *a2)
{
  v5 = *(sub_19565D0EC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8) - 8);
  return sub_1956104F4(a1, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 16) & ~*(v8 + 80)), a2);
}

uint64_t objectdestroy_172Tm()
{
  v1 = sub_19565D0EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_195613320(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, char *, void, void, void, void, char *))
{
  v5 = *(sub_19565D0EC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8) - 8);
  return a2(a1, *(v2 + 2), *(v2 + 3), *(v2 + 4), &v2[v6], *&v2[v7], *&v2[v7 + 8], *&v2[(v7 + 23) & 0xFFFFFFFFFFFFFFF8], *&v2[((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8], &v2[(((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 16) & ~*(v8 + 80)]);
}

void sub_19561343C()
{
  v1 = *(sub_19565D0EC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  sub_19560D220(v0 + v2, v6, v7, v8, v9);
}

id ManagedDuplicate.__allocating_init(duplicateSet:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_19561921C(a1);

  return v4;
}

uint64_t sub_1956135E0()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAECDF10);
  __swift_project_value_buffer(v0, qword_1EAECDF10);
  return sub_19565D0DC();
}

uint64_t sub_1956136D8()
{
  v1 = OBJC_IVAR___CNManagedDuplicate_isAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19561371C(char a1)
{
  v3 = OBJC_IVAR___CNManagedDuplicate_isAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1956137D0()
{
  v1 = OBJC_IVAR___CNManagedDuplicate_isIgnored;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_195613814(char a1)
{
  v3 = OBJC_IVAR___CNManagedDuplicate_isIgnored;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1956138C4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_195613938(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_195613998(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_195613A54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_195613B04(uint64_t a1)
{
  v3 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_195613BBC@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[2];
  v16[1] = v3[1];
  v16[2] = v5;
  v16[0] = v4;
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v16[5] = v3[5];
  v16[6] = v8;
  v16[3] = v6;
  v16[4] = v7;
  v9 = v3[1];
  *a2 = *v3;
  a2[1] = v9;
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[6];
  a2[5] = v3[5];
  a2[6] = v12;
  v13 = v3[4];
  a2[3] = v11;
  a2[4] = v13;
  a2[2] = v10;
  return sub_1955F7964(v16, v15, &qword_1EAECDD98);
}

uint64_t sub_195613C70(__int128 *a1, void *a2)
{
  v2 = a1[5];
  v22 = a1[4];
  v23 = v2;
  v24 = a1[6];
  v3 = a1[1];
  v18 = *a1;
  v19 = v3;
  v4 = a1[3];
  v5 = (*a2 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage);
  v20 = a1[2];
  v21 = v4;
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[2];
  v25[1] = v5[1];
  v25[2] = v7;
  v25[0] = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[6];
  v25[5] = v5[5];
  v25[6] = v10;
  v25[3] = v8;
  v25[4] = v9;
  v11 = v24;
  v13 = v21;
  v12 = v22;
  v5[5] = v23;
  v5[6] = v11;
  v5[3] = v13;
  v5[4] = v12;
  v14 = v18;
  v15 = v20;
  v5[1] = v19;
  v5[2] = v15;
  *v5 = v14;
  sub_1955F7964(&v18, v17, &qword_1EAECDD98);
  return sub_1954C2698(v25, &qword_1EAECDD98);
}

uint64_t sub_195613D58@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage);
  swift_beginAccess();
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16 = v5;
  v17 = v3[6];
  v6 = v17;
  v7 = v3[1];
  v12[0] = *v3;
  v12[1] = v7;
  v8 = v3[3];
  v13 = v3[2];
  v9 = v13;
  v14 = v8;
  *a1 = v12[0];
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v8;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  return sub_1955F7964(v12, v11, &qword_1EAECDD98);
}

uint64_t sub_195613DF8(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage);
  swift_beginAccess();
  v4 = v3[5];
  v11[4] = v3[4];
  v11[5] = v4;
  v11[6] = v3[6];
  v5 = v3[1];
  v11[0] = *v3;
  v11[1] = v5;
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  v8 = a1[6];
  v3[5] = a1[5];
  v3[6] = v8;
  v9 = a1[4];
  v3[3] = a1[3];
  v3[4] = v9;
  v3[2] = a1[2];
  return sub_1954C2698(v11, &qword_1EAECDD98);
}

uint64_t sub_195613EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1955F79CC(v4, v5);
}

uint64_t sub_195613F50(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1955F79CC(v2, v3);
  return sub_1955F7A48(v5, v6);
}

uint64_t sub_195613FCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1955F79CC(v4, v5);
}

uint64_t sub_195614020(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1955F7A48(v5, v6);
}

char *sub_1956140DC()
{
  v1 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_19565D81C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x19A8B3850](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = &v5[OBJC_IVAR___CNManagedCohort_identifier];
    swift_beginAccess();
    v9 = *v8;
    v10 = *(v8 + 1);

    ++v4;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_195617A30(0, *(v15 + 2) + 1, 1, v15);
      }

      v12 = *(v15 + 2);
      v11 = *(v15 + 3);
      if (v12 >= v11 >> 1)
      {
        v15 = sub_195617A30((v11 > 1), v12 + 1, 1, v15);
      }

      *(v15 + 2) = v12 + 1;
      v13 = &v15[16 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      v4 = v7;
    }
  }

  return v15;
}

id ManagedDuplicate.__allocating_init(contacts:contactStore:)(unint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_19561A064(a1, a2);

  return v6;
}

id ManagedDuplicate.init(contacts:contactStore:)(unint64_t a1, void *a2)
{
  v3 = sub_19561A064(a1, a2);

  return v3;
}

uint64_t static ManagedDuplicate.preferredPrimaryIDFor(_:contactStore:)(unint64_t a1, void *a2)
{
  v2 = sub_1956171C4(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 identifier];

  v5 = sub_19565D28C();
  return v5;
}

id ManagedDuplicate.init(duplicateSetProperties:)(char *a1)
{
  v42 = *a1;
  v44 = a1[1];
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = *(a1 + 4);
  v46 = *(a1 + 3);
  v5 = *(a1 + 5);
  v6 = &v1[OBJC_IVAR___CNManagedDuplicate_signature];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR___CNManagedDuplicate_isAvailable;
  v1[OBJC_IVAR___CNManagedDuplicate_isAvailable] = 1;
  v8 = OBJC_IVAR___CNManagedDuplicate_isIgnored;
  v1[OBJC_IVAR___CNManagedDuplicate_isIgnored] = 0;
  v9 = &v1[OBJC_IVAR___CNManagedDuplicate_primaryID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v38 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  *&v1[OBJC_IVAR___CNManagedDuplicate_managedCohorts] = MEMORY[0x1E69E7CC0];
  v11 = &v1[OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage];
  *v11 = xmmword_19567B970;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *&v1[OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster] = xmmword_19567BF40;
  *&v1[OBJC_IVAR___CNManagedDuplicate__contactStore] = 0;
  *&v1[OBJC_IVAR___CNManagedDuplicate__privateContacts] = v10;
  *&v1[OBJC_IVAR___CNManagedDuplicate__privateMergedContact] = 0;
  v12 = OBJC_IVAR___CNManagedDuplicate__mergedNameComponents;
  v13 = sub_19565CDCC();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 1) = v2;
  v14 = v5;
  swift_beginAccess();
  v1[v7] = v42;
  swift_beginAccess();
  v39 = v1;
  v1[v8] = v44;
  swift_beginAccess();
  *v9 = v46;
  *(v9 + 1) = v4;
  v15 = *(v5 + 16);
  if (v15)
  {
    v48 = MEMORY[0x1E69E7CC0];

    sub_19565D97C();
    v45 = type metadata accessor for ManagedCohort();
    v16 = (v14 + 48);
    do
    {
      v17 = *(v16 - 1);
      v43 = v15;
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v40 = *(v16 - 2);
      v41 = v16[5];
      v21 = objc_allocWithZone(v45);
      v22 = &v21[OBJC_IVAR___CNManagedCohort_identifier];
      *v22 = 0;
      *(v22 + 1) = 0;
      v23 = &v21[OBJC_IVAR___CNManagedCohort_imageData];
      *&v21[OBJC_IVAR___CNManagedCohort_imageData] = xmmword_19567BF50;
      v24 = &v21[OBJC_IVAR___CNManagedCohort_posterData];
      *&v21[OBJC_IVAR___CNManagedCohort_posterData] = xmmword_19567BF50;
      *&v21[OBJC_IVAR___CNManagedCohort_internalStore] = 0;
      v25 = &v21[OBJC_IVAR___CNManagedCohort_cropRect];
      *v25 = 0u;
      *(v25 + 1) = 0u;
      *&v21[OBJC_IVAR___CNManagedCohort__privateContact] = 0;
      v26 = &v21[OBJC_IVAR___CNManagedCohort__privateContainerName];
      *v26 = 0;
      *(v26 + 1) = 0;
      swift_beginAccess();
      *v22 = v40;
      *(v22 + 1) = v17;

      sub_1955F79F4(v18, v19);
      sub_1955F79F4(v20, v41);

      v27 = sub_19565D27C();
      v50 = NSRectFromString(v27);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;

      *v25 = x;
      *(v25 + 1) = y;
      *(v25 + 2) = width;
      *(v25 + 3) = height;
      swift_beginAccess();
      v33 = *v23;
      v32 = v23[1];
      *v23 = v18;
      v23[1] = v19;
      sub_1955F79F4(v18, v19);
      sub_1955F7A5C(v33, v32);
      sub_1955F79F4(v20, v41);

      sub_1954C1C4C(v18, v19);
      sub_1954C1C4C(v20, v41);
      swift_beginAccess();
      v34 = *v24;
      v35 = v24[1];
      *v24 = v20;
      v24[1] = v41;
      sub_1955F7A5C(v34, v35);
      v49.receiver = v21;
      v49.super_class = v45;
      objc_msgSendSuper2(&v49, sel_init);
      sub_19565D94C();
      sub_19565D98C();
      sub_19565D99C();
      sub_19565D95C();
      v16 += 8;
      v15 = v43 - 1;
    }

    while (v43 != 1);

    v36 = v48;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  *&v39[v38] = v36;

  v47.receiver = v39;
  v47.super_class = type metadata accessor for ManagedDuplicate();
  return objc_msgSendSuper2(&v47, sel_init);
}

id ManagedDuplicate.init(duplicateSet:)(void *a1)
{
  v2 = sub_19561921C(a1);

  return v2;
}

void sub_1956148BC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 selectedContactImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 cropRectString];
    if (v6)
    {
      v7 = v6;
      v8 = sub_19565D28C();
      v45 = v9;
      v46 = v8;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v10 = [v5 fullscreenImageData];
    if (v10)
    {
      v11 = v10;
      v12 = sub_19565CF2C();
      v43 = v13;
      v44 = v12;
    }

    else
    {
      v43 = 0xF000000000000000;
      v44 = 0;
    }

    v14 = [v5 imageData];
    if (v14)
    {
      v15 = v14;
      v16 = sub_19565CF2C();
      v41 = v17;
      v42 = v16;
    }

    else
    {
      v41 = 0xF000000000000000;
      v42 = 0;
    }

    v18 = [v5 imageHash];
    if (v18)
    {
      v19 = v18;
      v20 = sub_19565CF2C();
      v37 = v21;
      v39 = v20;
    }

    else
    {
      v37 = 0xF000000000000000;
      v39 = 0;
    }

    v22 = [v5 imageType];
    if (v22)
    {
      v23 = v22;
      v24 = sub_19565D28C();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = [v5 memojiMetadata];
    if (v27)
    {
      v28 = v27;
      v29 = sub_19565CF2C();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xF000000000000000;
    }

    v32 = [v5 thumbnailImageData];
    if (v32)
    {
      v33 = v32;
      v34 = sub_19565CF2C();
      v36 = v35;
    }

    else
    {

      v34 = 0;
      v36 = 0xF000000000000000;
    }

    *a2 = v46;
    a2[1] = v45;
    a2[2] = v44;
    a2[3] = v43;
    a2[4] = v42;
    a2[5] = v41;
    a2[6] = v40;
    a2[7] = v38;
    a2[8] = v24;
    a2[9] = v26;
    a2[10] = v29;
    a2[11] = v31;
    a2[12] = v34;
    a2[13] = v36;
  }

  else
  {

    *a2 = xmmword_19567B970;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
  }
}

uint64_t sub_195614B10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (sub_19561577C())
  {
    sub_1956165B4();
  }

  *a2 = *(v3 + OBJC_IVAR___CNManagedDuplicate__privateContacts);
}

uint64_t sub_195614B60()
{
  if (sub_19561577C())
  {
    sub_1956165B4();
  }
}

uint64_t sub_195614B9C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CNManagedDuplicate__privateContacts;
  *(v2 + OBJC_IVAR___CNManagedDuplicate__privateContacts) = a1;

  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_19565D81C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_11:
    v12 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
    swift_beginAccess();
    *(v2 + v12) = v6;
  }

  v13 = MEMORY[0x1E69E7CC0];

  result = sub_19565D97C();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x19A8B3850](v8, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = objc_allocWithZone(type metadata accessor for ManagedCohort());
      sub_19561FE20(v10);

      sub_19565D94C();
      sub_19565D98C();
      sub_19565D99C();
      sub_19565D95C();
    }

    while (v5 != v8);

    v6 = v13;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_195614D10(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (sub_19561577C())
  {
    sub_1956165B4();
  }

  *a1 = *(v1 + OBJC_IVAR___CNManagedDuplicate__privateContacts);

  return sub_195614D74;
}

uint64_t sub_195614D74(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_195614B9C(*a1);
  }

  sub_195614B9C(v2);
}

uint64_t sub_195614DCC()
{
  if (sub_19561577C())
  {
    sub_1956165B4();
  }

  v1 = *&v0[OBJC_IVAR___CNManagedDuplicate__privateContacts];
  swift_bridgeObjectRetain_n();
  v2 = v0;
  v4 = sub_195618EA0(v1);
  sub_19561B3E8(&v4, v2);

  return v4;
}

void *sub_195614E6C()
{
  if (sub_19561577C())
  {
    sub_1956165B4();
  }

  v1 = *(v0 + OBJC_IVAR___CNManagedDuplicate__privateContacts);
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v3 = (v0 + OBJC_IVAR___CNManagedDuplicate_primaryID);

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x19A8B3850](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = sub_19565D28C();
      v0 = v10;

      v11 = v3[1];
      if (v11)
      {
        if (v9 == *v3 && v11 == v0)
        {

LABEL_23:

          return v6;
        }

        v13 = sub_19565DB1C();

        if (v13)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_21:

  return 0;
}

id sub_195615020()
{
  v1 = OBJC_IVAR___CNManagedDuplicate__privateMergedContact;
  v2 = *&v0[OBJC_IVAR___CNManagedDuplicate__privateMergedContact];
  if (v2)
  {
    goto LABEL_13;
  }

  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567B7A0;
  if (sub_19561577C())
  {
    sub_1956165B4();
  }

  p_name = &OBJC_PROTOCOL___NSItemProviderReading.name;
  v6 = *&v0[OBJC_IVAR___CNManagedDuplicate__privateContacts];
  swift_bridgeObjectRetain_n();
  v7 = v3;
  v22 = sub_195618EA0(v6);
  sub_19561B3E8(&v22, v7);

  type metadata accessor for DuplicateContacts();
  *(inited + 32) = v22;
  v8 = [objc_allocWithZone(CNContactStore) init];
  sub_1955EF3A8(inited, v8, &v22);

  swift_setDeallocating();
  sub_1954C2698(inited + 32, &unk_1EAECDF80);
  v9 = v23;
  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  if (!sub_19565D81C())
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = *(v9 + 32); ; i = MEMORY[0x19A8B3850](0, v9))
  {
    v11 = i;

LABEL_12:
    v12 = *(v3 + v1);
    *(v3 + v1) = v11;

    v2 = *(v3 + v1);
    if (v2)
    {
      break;
    }

    if (sub_19561577C())
    {
      sub_1956165B4();
    }

    v3 = *&p_name[494][v7];
    if (v3 >> 62)
    {
LABEL_44:
      v14 = sub_19565D81C();
    }

    else
    {
      v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v7 + OBJC_IVAR___CNManagedDuplicate_primaryID;

    swift_beginAccess();
    if (!v14)
    {
LABEL_36:

      return [objc_allocWithZone(CNMutableContact) init];
    }

    v7 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x19A8B3850](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v15 = *(v3 + 8 * v7 + 32);
      }

      v16 = v15;
      v17 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      p_name = [v15 identifier];
      v1 = sub_19565D28C();
      v19 = v18;

      v20 = *(v9 + 8);
      if (v20)
      {
        if (v1 == *v9 && v20 == v19)
        {

LABEL_38:

          return v16;
        }

        v1 = sub_19565DB1C();

        if (v1)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }

      ++v7;
      if (v17 == v14)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_13:

  return v2;
}

uint64_t sub_1956153E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAECDCF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR___CNManagedDuplicate__mergedNameComponents;
  swift_beginAccess();
  sub_1955F7964(v2 + v10, v9, qword_1EAECDCF0);
  v11 = sub_19565CDCC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1954C2698(v9, qword_1EAECDCF0);
  if (sub_19561577C())
  {
    sub_1956165B4();
  }

  type metadata accessor for DuplicateContacts();

  sub_1955F3010(v13);

  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_19561B488(v7, v2 + v10);
  return swift_endAccess();
}

char *sub_195615614()
{
  v1 = *(v0 + OBJC_IVAR___CNManagedDuplicate__privateContacts);
  if (v1 >> 62)
  {
    v2 = sub_19565D81C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];

  result = sub_1955EA77C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8B3850](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 identifier];
      v9 = sub_19565D28C();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1955EA77C((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_19561577C()
{
  v1 = *(v0 + OBJC_IVAR___CNManagedDuplicate__privateContacts);
  if (v1 >> 62)
  {
LABEL_41:
    v35 = sub_19565D81C();
  }

  else
  {
    v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  swift_beginAccess();
  v33 = v2;
  v34 = v0;
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    v4 = sub_19565D81C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x19A8B3850](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v0 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v8 = &v6[OBJC_IVAR___CNManagedCohort_identifier];
    swift_beginAccess();
    v9 = *v8;
    v10 = *(v8 + 1);

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_195617A30(0, *(v36 + 2) + 1, 1, v36);
      }

      v12 = *(v36 + 2);
      v11 = *(v36 + 3);
      if (v12 >= v11 >> 1)
      {
        v36 = sub_195617A30((v11 > 1), v12 + 1, 1, v36);
      }

      *(v36 + 2) = v12 + 1;
      v13 = &v36[16 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      v5 = v0;
    }
  }

  v14 = *(v36 + 2);

  if (v35 == v14)
  {
    v15 = *(v34 + v33);
    if (v15 >> 62)
    {
      v16 = sub_19565D81C();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v15 & 0xC000000000000001;

    v17 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    while (v16 != v17)
    {
      if (v0)
      {
        v18 = MEMORY[0x19A8B3850](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_39;
      }

      v21 = &v18[OBJC_IVAR___CNManagedCohort_identifier];
      swift_beginAccess();
      v22 = *v21;
      v23 = *(v21 + 1);

      ++v17;
      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_195617A30(0, *(v37 + 2) + 1, 1, v37);
        }

        v25 = *(v37 + 2);
        v24 = *(v37 + 3);
        if (v25 >= v24 >> 1)
        {
          v37 = sub_195617A30((v24 > 1), v25 + 1, 1, v37);
        }

        *(v37 + 2) = v25 + 1;
        v26 = &v37[16 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v23;
        v17 = v20;
      }
    }

    v28 = sub_195637F3C(v37);

    v29 = sub_195615614();
    v30 = sub_195637F3C(v29);

    v31 = sub_195634518(v28, v30);

    v27 = v31 ^ 1;
  }

  else
  {
    v27 = 1;
  }

  return v27 & 1;
}

uint64_t sub_195615B20()
{
  v1 = (v0 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage);
  swift_beginAccess();
  v2 = *(v1 + 1);
  v3 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  if (v2 != 1)
  {
    swift_beginAccess();
    v0 = *(v0 + v3);
    if (v0 >> 62)
    {
      v14 = sub_19565D81C();
    }

    else
    {
      v14 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      v15 = 0;
      v58 = MEMORY[0x1E69E7CC0];
      v4 = &OBJC_IVAR___CNManagedCohort_imageData;
      do
      {
        v16 = v15;
        while (1)
        {
          if ((v0 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x19A8B3850](v16, v0);
          }

          else
          {
            if (v16 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }

            v17 = *(v0 + 8 * v16 + 32);
          }

          v18 = v17;
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v19 = &v17[OBJC_IVAR___CNManagedCohort_imageData];
          swift_beginAccess();
          v20 = *(v19 + 1);
          if (v20 >> 60 != 15)
          {
            break;
          }

          ++v16;
          if (v15 == v14)
          {
            goto LABEL_62;
          }
        }

        v21 = *v19;
        v22 = *&v18[OBJC_IVAR___CNManagedCohort_cropRect];
        v23 = *&v18[OBJC_IVAR___CNManagedCohort_cropRect + 8];
        v24 = *&v18[OBJC_IVAR___CNManagedCohort_cropRect + 16];
        v25 = *&v18[OBJC_IVAR___CNManagedCohort_cropRect + 24];
        sub_1955F79F4(*v19, *(v19 + 1));
        v61.origin.x = v22;
        v61.origin.y = v23;
        v61.size.width = v24;
        v61.size.height = v25;
        v26 = NSStringFromRect(v61);
        v27 = sub_19565D28C();
        v55 = v28;
        v56 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_195617C40(0, *(v58 + 2) + 1, 1, v58);
        }

        v30 = *(v58 + 2);
        v29 = *(v58 + 3);
        if (v30 >= v29 >> 1)
        {
          v58 = sub_195617C40((v29 > 1), v30 + 1, 1, v58);
        }

        *(v58 + 2) = v30 + 1;
        v31 = &v58[32 * v30];
        *(v31 + 4) = v21;
        *(v31 + 5) = v20;
        *(v31 + 6) = v56;
        *(v31 + 7) = v55;
      }

      while (v15 != v14);
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

LABEL_62:

    v33 = v58;
    goto LABEL_74;
  }

  swift_beginAccess();
  v4 = *(v0 + v3);
  v60 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v6 = (v0 + OBJC_IVAR___CNManagedDuplicate_primaryID);

    swift_beginAccess();
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x19A8B3850](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_64;
        }

        v0 = &v8[OBJC_IVAR___CNManagedCohort_identifier];
        swift_beginAccess();
        v11 = *(v0 + 8);
        v12 = v6[1];
        if (v11)
        {
          if (v12)
          {
            v13 = *v0 == *v6 && v11 == v12;
            if (v13 || (sub_19565DB1C() & 1) != 0)
            {
LABEL_20:

              goto LABEL_8;
            }
          }
        }

        else if (!v12)
        {
          goto LABEL_20;
        }

        sub_19565D94C();
        sub_19565D98C();
        sub_19565D99C();
        v0 = &v60;
        sub_19565D95C();
LABEL_8:
        ++v7;
        if (v10 == i)
        {
          v0 = v60;
          goto LABEL_43;
        }
      }
    }

    v0 = MEMORY[0x1E69E7CC0];
LABEL_43:

    v32 = *(v0 + 16);
    if (!v32)
    {
      goto LABEL_72;
    }

LABEL_46:
    v33 = MEMORY[0x1E69E7CC0];
    v34 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x19A8B3850](v34, v0);
      }

      else
      {
        if (v34 >= *(v0 + 16))
        {
          goto LABEL_68;
        }

        v35 = *(v0 + 8 * v34 + 32);
      }

      v36 = v35;
      v4 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = &v35[OBJC_IVAR___CNManagedCohort_imageData];
      swift_beginAccess();
      v38 = *(v37 + 1);
      if (v38 >> 60 == 15)
      {

        ++v34;
        if (v4 == v32)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v39 = *v37;
        v40 = *&v36[OBJC_IVAR___CNManagedCohort_cropRect];
        v41 = *&v36[OBJC_IVAR___CNManagedCohort_cropRect + 8];
        v42 = *&v36[OBJC_IVAR___CNManagedCohort_cropRect + 16];
        v43 = *&v36[OBJC_IVAR___CNManagedCohort_cropRect + 24];
        sub_1955F79F4(*v37, *(v37 + 1));
        v62.origin.x = v40;
        v62.origin.y = v41;
        v62.size.width = v42;
        v62.size.height = v43;
        v44 = v33;
        v45 = NSStringFromRect(v62);
        v46 = sub_19565D28C();
        v57 = v47;
        v59 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_195617C40(0, *(v44 + 2) + 1, 1, v44);
        }

        v49 = *(v44 + 2);
        v48 = *(v44 + 3);
        v50 = v44;
        if (v49 >= v48 >> 1)
        {
          v50 = sub_195617C40((v48 > 1), v49 + 1, 1, v44);
        }

        *(v50 + 2) = v49 + 1;
        v51 = &v50[32 * v49];
        v33 = v50;
        *(v51 + 4) = v39;
        *(v51 + 5) = v38;
        *(v51 + 6) = v59;
        *(v51 + 7) = v57;
        if (v4 == v32)
        {
          goto LABEL_73;
        }

        v34 = v4;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v32 = sub_19565D81C();
  if (v32)
  {
    goto LABEL_46;
  }

LABEL_72:
  v33 = MEMORY[0x1E69E7CC0];
LABEL_73:

LABEL_74:
  if (*(v33 + 16) >= 8uLL)
  {
    sub_1955F4C14(v33, v33 + 32, 0, 0xFuLL);
    v53 = v52;

    return v53;
  }

  return v33;
}

unint64_t sub_1956160DC()
{
  v1 = (v0 + OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster);
  swift_beginAccess();
  v2 = *(v1 + 1);
  v3 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  if (v2 >> 60 == 11)
  {
    swift_beginAccess();
    v3 = *(v0 + v3);
    v40 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_66;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  swift_beginAccess();
  v0 = *(v0 + v3);
  if (v0 >> 62)
  {
    v13 = sub_19565D81C();
  }

  else
  {
    v13 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v14)
    {

      v3 = v39;
      goto LABEL_57;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x19A8B3850](v14, v0);
    }

    else
    {
      if (v14 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v15 = *(v0 + 8 * v14 + 32);
    }

    v16 = v15;
    v3 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v17 = &v15[OBJC_IVAR___CNManagedCohort_posterData];
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    sub_1955F79E0(v18, v19);

    ++v14;
    if (v19 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_195617D4C(0, *(v39 + 2) + 1, 1, v39);
      }

      v21 = *(v39 + 2);
      v20 = *(v39 + 3);
      if (v21 >= v20 >> 1)
      {
        v39 = sub_195617D4C((v20 > 1), v21 + 1, 1, v39);
      }

      *(v39 + 2) = v21 + 1;
      v22 = &v39[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v14 = v3;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  v4 = sub_19565D81C();
LABEL_4:
  v5 = (v0 + OBJC_IVAR___CNManagedDuplicate_primaryID);

  swift_beginAccess();
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A8B3850](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_64;
      }

      v0 = &v7[OBJC_IVAR___CNManagedCohort_identifier];
      swift_beginAccess();
      v10 = *(v0 + 8);
      v11 = v5[1];
      if (v10)
      {
        if (v11)
        {
          v12 = *v0 == *v5 && v10 == v11;
          if (v12 || (sub_19565DB1C() & 1) != 0)
          {
LABEL_20:

            goto LABEL_8;
          }
        }
      }

      else if (!v11)
      {
        goto LABEL_20;
      }

      sub_19565D94C();
      sub_19565D98C();
      sub_19565D99C();
      v0 = &v40;
      sub_19565D95C();
LABEL_8:
      ++v6;
      if (v9 == v4)
      {
        v0 = v40;
        goto LABEL_40;
      }
    }
  }

  v0 = MEMORY[0x1E69E7CC0];
LABEL_40:

  if ((v0 & 0x8000000000000000) != 0 || (v0 & 0x4000000000000000) != 0)
  {
    v23 = sub_19565D81C();
  }

  else
  {
    v23 = *(v0 + 16);
  }

  v24 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (v23 != v24)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x19A8B3850](v24, v0);
    }

    else
    {
      if (v24 >= *(v0 + 16))
      {
        goto LABEL_63;
      }

      v25 = *(v0 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_62;
    }

    v28 = &v25[OBJC_IVAR___CNManagedCohort_posterData];
    swift_beginAccess();
    v29 = *v28;
    v30 = v28[1];
    sub_1955F79E0(v29, v30);

    ++v24;
    if (v30 >> 60 != 15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_195617D4C(0, *(v3 + 16) + 1, 1, v3);
      }

      v31 = v3;
      v32 = *(v3 + 16);
      v33 = v31;
      v34 = *(v31 + 24);
      if (v32 >= v34 >> 1)
      {
        v33 = sub_195617D4C((v34 > 1), v32 + 1, 1, v33);
      }

      *(v33 + 2) = v32 + 1;
      v35 = &v33[16 * v32];
      v3 = v33;
      *(v35 + 4) = v29;
      *(v35 + 5) = v30;
      v24 = v27;
    }
  }

LABEL_57:
  if (*(v3 + 16) >= 4uLL)
  {
    sub_1955F4CEC(v3, v3 + 32, 0, 7uLL);
    v37 = v36;

    return v37;
  }

  return v3;
}

void sub_1956165B4()
{
  v101[7] = *MEMORY[0x1E69E9840];
  if (qword_1EAECB8E0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v1 = objc_allocWithZone(CNContactFetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFD0);
  v2 = sub_19565D3EC();
  v94 = [v1 initWithKeysToFetch_];

  [v94 setUnifyResults_];
  [v94 setMutableObjects_];
  v3 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  swift_beginAccess();
  v91 = v3;
  v92 = v0;
  v4 = *(v0 + v3);
  v0 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v5 = sub_19565D81C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8B3850](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v10 = &v7[OBJC_IVAR___CNManagedCohort_identifier];
    swift_beginAccess();
    v11 = *v10;
    v12 = *(v10 + 1);

    ++v6;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_195617A30(0, *(v95 + 2) + 1, 1, v95);
      }

      v14 = *(v95 + 2);
      v13 = *(v95 + 3);
      if (v14 >= v13 >> 1)
      {
        v95 = sub_195617A30((v13 > 1), v14 + 1, 1, v95);
      }

      *(v95 + 2) = v14 + 1;
      v15 = &v95[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      v6 = v9;
    }
  }

  v16 = objc_opt_self();
  v17 = sub_19565D3EC();

  v18 = [v16 predicateForContactsWithIdentifiers_];

  v19 = v94;
  [v94 setPredicate_];

  v20 = OBJC_IVAR___CNManagedDuplicate__contactStore;
  v21 = v92;
  v22 = *(&v92->isa + OBJC_IVAR___CNManagedDuplicate__contactStore);
  if (v22)
  {
    v23 = *(&v92->isa + OBJC_IVAR___CNManagedDuplicate__contactStore);
  }

  else
  {
    v24 = [objc_allocWithZone(CNContactStore) init];
    v25 = *(&v92->isa + v20);
    *(&v92->isa + v20) = v24;
    v23 = v24;

    v22 = 0;
  }

  v100[0] = 0;
  v26 = v22;
  v27 = [(objc_class *)v23 executeFetchRequest:v94 error:v100];

  v28 = v100[0];
  if (v27)
  {
    v29 = v100[0];
    v101[0] = [v27 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE0B0);
    swift_dynamicCast();
    if (v99 >> 62)
    {
      v30 = sub_19565D81C();
      v96 = v27;
      if (v30)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v30 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v96 = v27;
      if (v30)
      {
LABEL_23:
        v98 = MEMORY[0x1E69E7CC0];
        sub_19565D97C();
        if ((v30 & 0x8000000000000000) == 0)
        {
          v31 = 0;
          do
          {
            if ((v99 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x19A8B3850](v31);
            }

            else
            {
              v32 = *(v99 + 8 * v31 + 32);
            }

            v33 = v32;
            ++v31;
            [v32 mutableCopy];
            sub_19565D7CC();
            swift_unknownObjectRelease();

            sub_19561C134();
            swift_dynamicCast();
            sub_19565D94C();
            sub_19565D98C();
            sub_19565D99C();
            sub_19565D95C();
          }

          while (v30 != v31);

          v34 = v98;
          v21 = v92;
          v19 = v94;
          goto LABEL_58;
        }

        __break(1u);
        goto LABEL_83;
      }
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v61 = OBJC_IVAR___CNManagedDuplicate__privateContacts;
    *(&v21->isa + OBJC_IVAR___CNManagedDuplicate__privateContacts) = v34;

    if (qword_1EAECD998 != -1)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v62 = sub_19565D0EC();
      __swift_project_value_buffer(v62, qword_1EAECDF10);
      v63 = v21;
      v64 = sub_19565D0CC();
      v65 = sub_19565D68C();
      v93 = v64;
      if (!os_log_type_enabled(v64, v65))
      {
        break;
      }

      v66 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v101[0] = v86;
      *v66 = 134218242;
      v67 = *(&v21->isa + v61);
      if (v67 >> 62)
      {
        v68 = sub_19565D81C();
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v66 + 4) = v68;

      loga = v66;
      *(v66 + 12) = 2080;
      v19 = *(&v21->isa + v91);
      v88 = v65;
      if (v19 >> 62)
      {
        v69 = sub_19565D81C();
      }

      else
      {
        v69 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v61 = v19 & 0xC000000000000001;

      v70 = 0;
      v71 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v69 == v70)
        {

          v80 = MEMORY[0x19A8B3380](v71, MEMORY[0x1E69E6158]);
          v82 = v81;

          v83 = sub_1955EA0F8(v80, v82, v101);

          *(&loga[1].isa + 6) = v83;
          _os_log_impl(&dword_1954A0000, v93, v88, "Fetched %ld contacts for cohorts %s", loga, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x19A8B5DB0](v86, -1, -1);
          MEMORY[0x19A8B5DB0](loga, -1, -1);

          return;
        }

        if (v61)
        {
          v72 = MEMORY[0x19A8B3850](v70, v19);
        }

        else
        {
          if (v70 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_80;
          }

          v72 = *(v19 + 8 * v70 + 32);
        }

        v73 = v72;
        v74 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        v75 = &v72[OBJC_IVAR___CNManagedCohort_identifier];
        swift_beginAccess();
        v76 = *v75;
        v21 = *(v75 + 1);

        ++v70;
        if (v21)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_195617A30(0, *(v71 + 2) + 1, 1, v71);
          }

          v78 = *(v71 + 2);
          v77 = *(v71 + 3);
          if (v78 >= v77 >> 1)
          {
            v71 = sub_195617A30((v77 > 1), v78 + 1, 1, v71);
          }

          *(v71 + 2) = v78 + 1;
          v79 = &v71[16 * v78];
          *(v79 + 4) = v76;
          *(v79 + 5) = v21;
          v70 = v74;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
    }

    return;
  }

  v35 = v100[0];
  v28 = sub_19565CE6C();

  swift_willThrow();
  if (qword_1EAECD998 != -1)
  {
LABEL_83:
    swift_once();
  }

  v36 = sub_19565D0EC();
  __swift_project_value_buffer(v36, qword_1EAECDF10);
  v37 = v92;
  v38 = v28;
  v39 = sub_19565D0CC();
  v40 = sub_19565D69C();

  if (os_log_type_enabled(v39, v40))
  {
    v87 = v40;
    log = v39;
    v97 = v28;
    v41 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v101[0] = v84;
    v85 = v41;
    *v41 = 136315394;
    v0 = *(&v92->isa + v91);
    if (v0 >> 62)
    {
      v42 = sub_19565D81C();
    }

    else
    {
      v42 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    while (v42 != v43)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x19A8B3850](v43, v0);
      }

      else
      {
        if (v43 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v45 = *(v0 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_52;
      }

      v48 = &v45[OBJC_IVAR___CNManagedCohort_identifier];
      swift_beginAccess();
      v49 = *v48;
      v50 = *(v48 + 1);

      ++v43;
      if (v50)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_195617A30(0, *(v44 + 2) + 1, 1, v44);
        }

        v52 = *(v44 + 2);
        v51 = *(v44 + 3);
        if (v52 >= v51 >> 1)
        {
          v44 = sub_195617A30((v51 > 1), v52 + 1, 1, v44);
        }

        *(v44 + 2) = v52 + 1;
        v53 = &v44[16 * v52];
        *(v53 + 4) = v49;
        *(v53 + 5) = v50;
        v43 = v47;
      }
    }

    v54 = MEMORY[0x19A8B3380](v44, MEMORY[0x1E69E6158]);
    v56 = v55;

    v57 = sub_1955EA0F8(v54, v56, v101);

    *(v85 + 1) = v57;
    *(v85 + 6) = 2080;
    swift_getErrorValue();
    v58 = sub_19565DB8C();
    v60 = sub_1955EA0F8(v58, v59, v101);

    *(v85 + 14) = v60;
    _os_log_impl(&dword_1954A0000, log, v87, "Could not fetch contacts for cohorts %s: %s", v85, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v84, -1, -1);
    MEMORY[0x19A8B5DB0](v85, -1, -1);
  }

  else
  {
  }

  *(&v37->isa + OBJC_IVAR___CNManagedDuplicate__privateContacts) = MEMORY[0x1E69E7CC0];
}

uint64_t static ManagedDuplicate.signatureForContact(_:)(void *a1)
{
  v2 = [a1 externalURI];
  if (!v2)
  {
    v2 = [a1 externalIdentifier];
    if (!v2)
    {
      v2 = [a1 identifier];
    }
  }

  v3 = v2;
  v4 = sub_19565D28C();

  return v4;
}

id sub_1956171C4(unint64_t a1, void *a2)
{
  v18 = sub_19562B7C8(a2);
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_19565D81C();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  v17 = a1 & 0xC000000000000001;
  do
  {
    if (v17)
    {
      v5 = MEMORY[0x19A8B3850](v4, a1);
    }

    else
    {
      if (v4 >= *(v16 + 16))
      {
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = [v5 identifier];
    v9 = sub_19565D28C();
    v11 = v10;

    v19[0] = v9;
    v19[1] = v11;
    MEMORY[0x1EEE9AC00](v12);
    v15[2] = v19;
    LOBYTE(v8) = sub_1956219E0(sub_19561C1E4, v15, v18);

    if (v8)
    {

      return v6;
    }

    ++v4;
  }

  while (v7 != v3);

  if (v17)
  {
    return MEMORY[0x19A8B3850](0, a1);
  }

  if (*(v16 + 16))
  {
    return *(a1 + 32);
  }

  __break(1u);
  return result;
}

id ManagedDuplicate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManagedDuplicate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedDuplicate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19561755C(uint64_t a1)
{
  v2 = sub_19565D13C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19561C204(&qword_1EAECE008, MEMORY[0x1E69666B0]);
  v6 = sub_19565D35C();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1955EA77C(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_19565D34C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_19567B7A0;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x1E69E7508];
        *(v13 + 64) = MEMORY[0x1E69E7558];
        *(v13 + 32) = v12;
        result = sub_19565D2AC();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_1955EA77C((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_19567B7A0;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = MEMORY[0x1E69E7508];
        *(v22 + 64) = MEMORY[0x1E69E7558];
        *(v22 + 32) = v21;
        result = sub_19565D2AC();
        v34 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_1955EA77C((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = result;
        *(v26 + 40) = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1956178FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195617A30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC78);
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

char *sub_195617B3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDFC8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_195617C40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDD78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_195617D4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDFC0);
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

size_t sub_195617E58(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF90);
  v10 = *(sub_19565D0BC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_19565D0BC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_195618030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDFB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19561813C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC68);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDFA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_195618294(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1956183C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1956191F4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_195618434(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_195618434(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19565DADC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_19565D47C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1956185FC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_19561852C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19561852C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_19565DB1C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1956185FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_195618E8C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_195618BD8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_19565DB1C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_19565DB1C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_195617B3C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_195617B3C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_195618BD8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_195618E8C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_195618E00(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_19565DB1C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_195618BD8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_19565DB1C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_19565DB1C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_195618E00(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_195618E8C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_195618EA0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_19565D81C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1956289EC(v3, 0);
  sub_195628024(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195618F34(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_19565D12C();
      sub_19561C204(&qword_1EAECE000, MEMORY[0x1E6966688]);
      return sub_19565D0FC();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_195619114(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_195619114(v4, v5);
  }

  sub_19565D12C();
  sub_19561C204(&qword_1EAECE000, MEMORY[0x1E6966688]);
  return sub_19565D0FC();
}

uint64_t sub_195619114(uint64_t a1, uint64_t a2)
{
  result = sub_19565CC4C();
  if (!result || (result = sub_19565CC6C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_19565CC5C();
      sub_19565D12C();
      sub_19561C204(&qword_1EAECE000, MEMORY[0x1E6966688]);
      return sub_19565D0FC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19561921C(void *a1)
{
  v2 = v1;
  v4 = sub_19565CE7C();
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR___CNManagedDuplicate_signature];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR___CNManagedDuplicate_isAvailable;
  v1[OBJC_IVAR___CNManagedDuplicate_isAvailable] = 1;
  v57 = v8;
  v58 = OBJC_IVAR___CNManagedDuplicate_isIgnored;
  v1[OBJC_IVAR___CNManagedDuplicate_isIgnored] = 0;
  v9 = &v1[OBJC_IVAR___CNManagedDuplicate_primaryID];
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v59 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  *&v2[OBJC_IVAR___CNManagedDuplicate_managedCohorts] = MEMORY[0x1E69E7CC0];
  v11 = &v2[OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage];
  *v11 = xmmword_19567B970;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[6] = 0u;
  v60 = &v2[OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster];
  *&v2[OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster] = xmmword_19567BF40;
  *&v2[OBJC_IVAR___CNManagedDuplicate__contactStore] = 0;
  *&v2[OBJC_IVAR___CNManagedDuplicate__privateContacts] = v10;
  *&v2[OBJC_IVAR___CNManagedDuplicate__privateMergedContact] = 0;
  v12 = OBJC_IVAR___CNManagedDuplicate__mergedNameComponents;
  v13 = sub_19565CDCC();
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  v61 = a1;
  v14 = [a1 signature];
  if (v14)
  {
    v15 = v14;
    v16 = sub_19565D28C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  swift_beginAccess();
  *v7 = v16;
  v7[1] = v18;

  v19 = v61;
  v20 = [v61 isAvailable];
  v21 = v57;
  swift_beginAccess();
  v2[v21] = v20;
  v22 = [v19 isIgnored];
  v23 = v58;
  swift_beginAccess();
  v2[v23] = v22;
  v24 = [v19 primaryID];
  if (v24)
  {
    v25 = v24;
    v26 = sub_19565D28C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  swift_beginAccess();
  *v9 = v26;
  v9[1] = v28;

  v29 = [v19 cohorts];
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v31 = v29;
    v65 = MEMORY[0x1E69E7CC0];
    sub_19565D71C();
    sub_19561C204(&qword_1EAECDC98, MEMORY[0x1E6968EB0]);
    sub_19565D78C();
    if (*(&v68 + 1))
    {
      v58 = v31;
      do
      {
        sub_1955EBBA0(&v67, v66);
        sub_1954C2458(v66, &v62);
        type metadata accessor for CNDuplicateCohort();
        swift_dynamicCast();
        v32 = v64;
        v33 = objc_allocWithZone(type metadata accessor for ManagedCohort());
        sub_19561FBAC(v32);

        v34 = __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x19A8B3320](v34);
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19565D42C();
        }

        sub_19565D48C();
        v30 = v65;
        sub_19565D78C();
      }

      while (*(&v68 + 1));
      v31 = v58;
    }

    (*(v56 + 8))(v6, v4);
    v19 = v61;
  }

  v35 = v59;
  swift_beginAccess();
  *&v2[v35] = v30;

  v36 = v19;
  sub_1956148BC(v36, v66);
  swift_beginAccess();
  v37 = v11[5];
  v71 = v11[4];
  v72 = v37;
  v73 = v11[6];
  v38 = v11[1];
  v67 = *v11;
  v68 = v38;
  v39 = v11[3];
  v69 = v11[2];
  v70 = v39;
  v40 = v66[1];
  *v11 = v66[0];
  v11[1] = v40;
  v41 = v66[6];
  v11[5] = v66[5];
  v11[6] = v41;
  v42 = v66[4];
  v11[3] = v66[3];
  v11[4] = v42;
  v11[2] = v66[2];
  sub_1954C2698(&v67, &qword_1EAECDD98);
  v43 = v36;
  v44 = [v43 selectedContactPoster];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 posterData];
    if (v46)
    {
      v47 = v46;
      v48 = sub_19565CF2C();
      v50 = v49;
    }

    else
    {

      v48 = 0;
      v50 = 0xF000000000000000;
    }
  }

  else
  {

    v48 = 0;
    v50 = 0xB000000000000000;
  }

  v51 = v60;
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = v48;
  v51[1] = v50;
  sub_1955F7A48(v52, v53);
  v54 = type metadata accessor for ManagedDuplicate();
  v63.receiver = v2;
  v63.super_class = v54;
  return objc_msgSendSuper2(&v63, sel_init);
}

id sub_1956197F8(id a1)
{
  v21 = v1[3];
  v3 = v1[7];
  v4 = v1[9];
  v20 = v1[6];
  v5 = v1[11];
  v6 = v1[13];
  if (v1[5] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_19565CF0C();
  }

  [a1 setImageData_];

  if (v6 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_19565CF0C();
  }

  [a1 setThumbnailImageData_];

  v9 = sub_19565D27C();

  v22 = NSRectFromString(v9);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;

  [a1 setCropRect_];
  if (v4)
  {
    v14 = sub_19565D27C();
  }

  else
  {
    v14 = 0;
  }

  [a1 setImageType_];

  if (v3 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_19565CF0C();
  }

  [a1 setImageHash_];

  if (v4)
  {
    v16 = sub_19565D27C();
  }

  else
  {
    v16 = 0;
  }

  [a1 setImageType_];

  if (v5 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_19565CF0C();
  }

  [a1 setMemojiMetadata_];

  if (v21 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_19565CF0C();
  }

  [a1 setFullscreenImageData_];

  return a1;
}

uint64_t _s8Contacts16ManagedDuplicateC012signatureForA0ySSSaySo16CNMutableContactCGFZ_0(unint64_t a1)
{
  v2 = sub_19565D12C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19565D13C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19565D2CC();
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v43 - v13;
  if (a1 >> 62)
  {
    v14 = sub_19565D81C();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v52 = v7;
  v53 = v6;
  v50 = v9;
  v51 = v2;
  v48 = v5;
  v49 = v3;
  if (v14)
  {
    v54[0] = MEMORY[0x1E69E7CC0];
    sub_1955EA77C(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v44 = v10;
    v16 = 0;
    v15 = v54[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x19A8B3850](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 externalURI];
      if (v19 || (v19 = [v18 externalIdentifier]) != 0)
      {
        v20 = v18;
        v18 = v19;
      }

      else
      {
        v20 = [v18 identifier];
      }

      v21 = sub_19565D28C();
      v23 = v22;

      v54[0] = v15;
      v25 = *(v15 + 2);
      v24 = *(v15 + 3);
      if (v25 >= v24 >> 1)
      {
        sub_1955EA77C((v24 > 1), v25 + 1, 1);
        v15 = v54[0];
      }

      ++v16;
      *(v15 + 2) = v25 + 1;
      v26 = &v15[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
    }

    while (v14 != v16);
    v10 = v44;
  }

  v54[0] = v15;

  sub_1956183C8(v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
  sub_19561C180();
  v27 = sub_19565D1EC();
  v29 = v28;
  v44 = v28;

  v54[0] = v27;
  v54[1] = v29;
  v30 = v45;
  sub_19565CFBC();
  v31 = sub_19565CFCC();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_1955F7844();
  sub_19565D7BC();
  sub_1954C2698(v30, &unk_1EAECDFE0);
  v32 = v46;
  sub_19565D2BC();
  v33 = sub_19565D29C();
  v35 = v34;

  (*(v47 + 8))(v32, v10);
  if (v35 >> 60 == 15)
  {
    v36 = 0;
  }

  else
  {
    v36 = v33;
  }

  if (v35 >> 60 == 15)
  {
    v37 = 0xC000000000000000;
  }

  else
  {
    v37 = v35;
  }

  sub_19561C204(&qword_1EAECE000, MEMORY[0x1E6966688]);
  v38 = v48;
  v39 = v51;
  sub_19565D11C();
  sub_1955F79F4(v36, v37);
  sub_195618F34(v36, v37);
  sub_1954C1C4C(v36, v37);
  v40 = v50;
  sub_19565D10C();
  (*(v49 + 8))(v38, v39);
  v54[0] = sub_19561755C(v40);
  v41 = sub_19565D1EC();
  sub_1954C1C4C(v36, v37);

  (*(v52 + 8))(v40, v53);

  return v41;
}

id sub_19561A064(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR___CNManagedDuplicate_signature];
  *v6 = 0;
  v6[1] = 0;
  v2[OBJC_IVAR___CNManagedDuplicate_isAvailable] = 1;
  v2[OBJC_IVAR___CNManagedDuplicate_isIgnored] = 0;
  v7 = &v2[OBJC_IVAR___CNManagedDuplicate_primaryID];
  *v7 = 0;
  v7[1] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  *&v3[OBJC_IVAR___CNManagedDuplicate_managedCohorts] = MEMORY[0x1E69E7CC0];
  v10 = &v3[OBJC_IVAR___CNManagedDuplicate_userSelectedContactImage];
  *v10 = xmmword_19567B970;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *&v3[OBJC_IVAR___CNManagedDuplicate_userSelectedContactPoster] = xmmword_19567BF40;
  v11 = OBJC_IVAR___CNManagedDuplicate__contactStore;
  *&v3[OBJC_IVAR___CNManagedDuplicate__contactStore] = 0;
  v12 = OBJC_IVAR___CNManagedDuplicate__privateContacts;
  *&v3[OBJC_IVAR___CNManagedDuplicate__privateContacts] = v8;
  *&v3[OBJC_IVAR___CNManagedDuplicate__privateMergedContact] = 0;
  v13 = OBJC_IVAR___CNManagedDuplicate__mergedNameComponents;
  v14 = sub_19565CDCC();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  *&v3[v11] = a2;
  *&v3[v12] = a1;
  if (a1 >> 62)
  {
    v15 = sub_19565D81C();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_11:
    v22 = a2;

    goto LABEL_12;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_3:
  v34 = v8;
  v16 = a2;

  result = sub_19565D97C();
  if (v15 < 0)
  {
    __break(1u);
    return result;
  }

  v32 = v6;
  v18 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x19A8B3850](v18, a1);
    }

    else
    {
      v19 = *(a1 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = objc_allocWithZone(type metadata accessor for ManagedCohort());
    sub_19561FE20(v20);

    sub_19565D94C();
    sub_19565D98C();
    sub_19565D99C();
    sub_19565D95C();
  }

  while (v15 != v18);
  v8 = v34;
  v6 = v32;
LABEL_12:
  swift_beginAccess();
  *&v3[v9] = v8;

  v23 = sub_1956171C4(a1, a2);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 identifier];

    v26 = sub_19565D28C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  swift_beginAccess();
  *v7 = v26;
  v7[1] = v28;

  v29 = _s8Contacts16ManagedDuplicateC012signatureForA0ySSSaySo16CNMutableContactCGFZ_0(a1);
  v31 = v30;

  swift_beginAccess();
  *v6 = v29;
  v6[1] = v31;

  v33.receiver = v3;
  v33.super_class = type metadata accessor for ManagedDuplicate();
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t type metadata accessor for ManagedDuplicate()
{
  result = qword_1EAECB888;
  if (!qword_1EAECB888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19561A3E0(void **__src, id *a2, id *a3, id *__dst, uint64_t a5)
{
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    v31 = a2;
    if (__dst != a2 || &a2[v13] <= __dst)
    {
      v33 = __dst;
      memmove(__dst, a2, 8 * v13);
      __dst = v33;
      v31 = a2;
    }

    __srcb = __dst;
    v16 = &__dst[v13];
    v34 = (a5 + OBJC_IVAR___CNManagedDuplicate_primaryID);
    swift_beginAccess();
    if (v11 < 8)
    {
      v15 = __srcb;
    }

    else
    {
      v15 = __srcb;
      if (v31 > v7)
      {
        v49 = v34;
LABEL_34:
        v54 = v31;
        v35 = v31 - 1;
        --v6;
        v36 = v16;
        v50 = v31 - 1;
        do
        {
          v37 = *--v36;
          v38 = *v35;
          v39 = v37;
          v40 = v38;
          v41 = [v39 identifier];
          v42 = sub_19565D28C();
          v44 = v43;

          v45 = v49[1];
          if (v45)
          {
            if (v42 == *v49 && v45 == v44)
            {

LABEL_47:
              if (v6 + 1 != v54)
              {
                *v6 = *v50;
              }

              v15 = __srcb;
              if (v16 <= __srcb || (v31 = v50, v50 <= v7))
              {
                v31 = v50;
                goto LABEL_55;
              }

              goto LABEL_34;
            }

            v47 = sub_19565DB1C();

            if (v47)
            {
              goto LABEL_47;
            }
          }

          else
          {
          }

          if (v6 + 1 != v16)
          {
            *v6 = *v36;
          }

          --v6;
          v16 = v36;
          v35 = v50;
        }

        while (v36 > __srcb);
        v16 = v36;
        v15 = __srcb;
        v31 = v54;
      }
    }
  }

  else
  {
    v15 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v16 = &v15[v10];
    v17 = (a5 + OBJC_IVAR___CNManagedDuplicate_primaryID);
    swift_beginAccess();
    if (v8 >= 8 && a2 < v6)
    {
      v18 = a2;
      __srca = v16;
      while (1)
      {
        v53 = v18;
        v19 = *v15;
        v20 = *v18;
        v21 = v19;
        v22 = v17;
        v23 = [v20 identifier];
        v24 = sub_19565D28C();
        v26 = v25;

        v17 = v22;
        v27 = v22[1];
        if (!v27)
        {
          break;
        }

        v28 = v24 == *v22 && v27 == v26;
        if (v28)
        {
        }

        else
        {
          v29 = sub_19565DB1C();

          if ((v29 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v30 = v53;
        v18 = v53 + 1;
        if (v7 != v53)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v7;
        v16 = __srca;
        if (v15 >= __srca || v18 >= v6)
        {
          goto LABEL_52;
        }
      }

LABEL_20:
      v30 = v15;
      v28 = v7 == v15++;
      v18 = v53;
      if (v28)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v7 = *v30;
      goto LABEL_22;
    }

LABEL_52:
    v31 = v7;
  }

LABEL_55:
  if (v31 != v15 || v31 >= (v15 + ((v16 - v15 + (v16 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v15, 8 * ((v16 - v15) / 8));
  }

  return 1;
}

void sub_19561A7D8(char **a1, id *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_195618E8C(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_19561A3E0(__src, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_19561A978(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v5 = a3[1];
  v133 = MEMORY[0x1E69E7CC0];
  if (v5 >= 1)
  {
    v6 = &a5[OBJC_IVAR___CNManagedDuplicate_primaryID];
    v119 = a5;
    v132 = v6;
    swift_beginAccess();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 >= v5)
      {
        v21 = a4;
      }

      else
      {
        v124 = v8;
        v10 = *a3;
        v11 = v9;
        v12 = *(*a3 + 8 * v9);
        v13 = *(*a3 + 8 * v7);
        v14 = v12;
        v15 = [v13 identifier];
        v16 = sub_19565D28C();
        v18 = v17;

        v19 = *(v132 + 1);
        if (v19)
        {
          if (v16 == *v132 && v19 == v18)
          {
            v129 = 1;
          }

          else
          {
            v129 = sub_19565DB1C();
          }
        }

        else
        {
          v129 = 0;
        }

        v9 = v11;
        v7 = v11 + 2;
        if (v11 + 2 < v5)
        {
          v22 = (v10 + 8 * v11 + 16);
          while (1)
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v25 = v23;
            v26 = [v24 identifier];
            v27 = sub_19565D28C();
            v29 = v28;

            v30 = *(v132 + 1);
            if (v30)
            {
              if (v27 == *v132 && v30 == v29)
              {

                if ((v129 & 1) == 0)
                {
                  v21 = a4;
                  v8 = v124;
                  v9 = v11;
                  goto LABEL_37;
                }
              }

              else
              {
                v32 = sub_19565DB1C();

                if ((v129 ^ v32))
                {
                  goto LABEL_28;
                }
              }
            }

            else
            {

              if (v129)
              {
                v21 = a4;
                v8 = v124;
                v9 = v11;
                if (v7 < v11)
                {
                  goto LABEL_142;
                }

                goto LABEL_31;
              }
            }

            ++v7;
            ++v22;
            if (v5 == v7)
            {
              v7 = v5;
LABEL_28:
              v9 = v11;
              break;
            }
          }
        }

        v21 = a4;
        v8 = v124;
        if (v129)
        {
          if (v7 < v9)
          {
            goto LABEL_142;
          }

LABEL_31:
          if (v9 < v7)
          {
            v33 = 8 * v7 - 8;
            v34 = 8 * v9;
            v35 = v7;
            v36 = v9;
            do
            {
              if (v36 != --v35)
              {
                v37 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v38 = *(v37 + v34);
                *(v37 + v34) = *(v37 + v33);
                *(v37 + v33) = v38;
              }

              ++v36;
              v33 -= 8;
              v34 += 8;
            }

            while (v36 < v35);
          }
        }
      }

LABEL_37:
      v39 = a3[1];
      if (v7 < v39)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_141;
        }

        if (v7 - v9 < v21)
        {
          v40 = v9 + v21;
          if (__OFADD__(v9, v21))
          {
            goto LABEL_143;
          }

          if (v40 >= v39)
          {
            v40 = a3[1];
          }

          if (v40 < v9)
          {
LABEL_144:
            __break(1u);
LABEL_145:

            __break(1u);
LABEL_146:

            __break(1u);
LABEL_147:

            __break(1u);
LABEL_148:

            __break(1u);
            goto LABEL_149;
          }

          if (v7 != v40)
          {
            v125 = v8;
            v41 = *a3;
            v42 = *a3 + 8 * v7 - 8;
            v115 = v9;
            v43 = v9 - v7;
            v120 = v40;
            do
            {
              v130 = v7;
              v44 = *(v41 + 8 * v7);
              v45 = v43;
              __dst = v42;
              while (1)
              {
                v46 = *v42;
                v47 = v44;
                v48 = v46;
                v49 = [v47 identifier];
                v50 = sub_19565D28C();
                v52 = v51;

                v53 = *(v132 + 1);
                if (!v53)
                {
                  break;
                }

                if (v50 == *v132 && v53 == v52)
                {
                }

                else
                {
                  v55 = sub_19565DB1C();

                  if ((v55 & 1) == 0)
                  {
                    goto LABEL_47;
                  }
                }

                if (!v41)
                {
                  goto LABEL_145;
                }

                v56 = *v42;
                v44 = *(v42 + 8);
                *v42 = v44;
                *(v42 + 8) = v56;
                v42 -= 8;
                if (__CFADD__(v45++, 1))
                {
                  goto LABEL_47;
                }
              }

LABEL_47:
              v7 = v130 + 1;
              v42 = __dst + 8;
              --v43;
            }

            while (v130 + 1 != v120);
            v7 = v120;
            v8 = v125;
            v9 = v115;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_140;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_195617B3C(0, *(v8 + 2) + 1, 1, v8);
      }

      v59 = *(v8 + 2);
      v58 = *(v8 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v8 = sub_195617B3C((v58 > 1), v59 + 1, 1, v8);
      }

      *(v8 + 2) = v60;
      v61 = v8 + 32;
      v62 = &v8[16 * v59 + 32];
      *v62 = v9;
      *(v62 + 1) = v7;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      if (v59)
      {
        v131 = v7;
        v121 = v8 + 32;
        v126 = v8;
        while (1)
        {
          v63 = v60 - 1;
          if (v60 >= 4)
          {
            break;
          }

          if (v60 == 3)
          {
            v64 = *(v8 + 4);
            v65 = *(v8 + 5);
            v74 = __OFSUB__(v65, v64);
            v66 = v65 - v64;
            v67 = v74;
LABEL_83:
            if (v67)
            {
              goto LABEL_130;
            }

            v80 = &v8[16 * v60];
            v82 = *v80;
            v81 = *(v80 + 1);
            v83 = __OFSUB__(v81, v82);
            v84 = v81 - v82;
            v85 = v83;
            if (v83)
            {
              goto LABEL_132;
            }

            v86 = &v61[16 * v63];
            v88 = *v86;
            v87 = *(v86 + 1);
            v74 = __OFSUB__(v87, v88);
            v89 = v87 - v88;
            if (v74)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v84, v89))
            {
              goto LABEL_137;
            }

            if (v84 + v89 >= v66)
            {
              if (v66 < v89)
              {
                v63 = v60 - 2;
              }

              goto LABEL_105;
            }

            goto LABEL_98;
          }

          if (v60 < 2)
          {
            goto LABEL_138;
          }

          v90 = &v8[16 * v60];
          v92 = *v90;
          v91 = *(v90 + 1);
          v74 = __OFSUB__(v91, v92);
          v84 = v91 - v92;
          v85 = v74;
LABEL_98:
          if (v85)
          {
            goto LABEL_134;
          }

          v93 = &v61[16 * v63];
          v95 = *v93;
          v94 = *(v93 + 1);
          v74 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v74)
          {
            goto LABEL_136;
          }

          if (v96 < v84)
          {
            goto LABEL_3;
          }

LABEL_105:
          if (v63 - 1 >= v60)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
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
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          v101 = *a3;
          if (!*a3)
          {
            goto LABEL_146;
          }

          v102 = &v61[16 * v63 - 16];
          v103 = *v102;
          v104 = v63;
          v105 = &v61[16 * v63];
          v106 = *(v105 + 1);
          v107 = (v101 + 8 * *v102);
          v108 = (v101 + 8 * *v105);
          v109 = (v101 + 8 * v106);
          v110 = v119;
          sub_19561A3E0(v107, v108, v109, __dsta, v110);
          if (v128)
          {

            v133 = v126;
            goto LABEL_120;
          }

          if (v106 < v103)
          {
            goto LABEL_125;
          }

          v8 = v126;
          v111 = *(v126 + 2);
          if (v104 > v111)
          {
            goto LABEL_126;
          }

          *v102 = v103;
          *(v102 + 1) = v106;
          if (v104 >= v111)
          {
            goto LABEL_127;
          }

          v128 = 0;
          v60 = v111 - 1;
          memmove(v105, v105 + 16, 16 * (v111 - 1 - v104));
          *(v126 + 2) = v111 - 1;
          v7 = v131;
          v61 = v121;
          if (v111 <= 2)
          {
            goto LABEL_3;
          }
        }

        v68 = &v61[16 * v60];
        v69 = *(v68 - 8);
        v70 = *(v68 - 7);
        v74 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        if (v74)
        {
          goto LABEL_128;
        }

        v73 = *(v68 - 6);
        v72 = *(v68 - 5);
        v74 = __OFSUB__(v72, v73);
        v66 = v72 - v73;
        v67 = v74;
        if (v74)
        {
          goto LABEL_129;
        }

        v75 = &v8[16 * v60];
        v77 = *v75;
        v76 = *(v75 + 1);
        v74 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v74)
        {
          goto LABEL_131;
        }

        v74 = __OFADD__(v66, v78);
        v79 = v66 + v78;
        if (v74)
        {
          goto LABEL_133;
        }

        if (v79 >= v71)
        {
          v97 = &v61[16 * v63];
          v99 = *v97;
          v98 = *(v97 + 1);
          v74 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v74)
          {
            goto LABEL_139;
          }

          if (v66 < v100)
          {
            v63 = v60 - 2;
          }

          goto LABEL_105;
        }

        goto LABEL_83;
      }

LABEL_3:
      v5 = a3[1];
      if (v7 >= v5)
      {
        v133 = v8;
        goto LABEL_117;
      }
    }
  }

  v112 = a5;
LABEL_117:
  v113 = *a1;
  if (*a1)
  {
    v114 = a5;
    sub_19561A7D8(&v133, v113, a3, v114);
    if (v128)
    {

LABEL_120:
    }

    else
    {
    }
  }

  else
  {
LABEL_149:

    __break(1u);
  }
}

void sub_19561B170(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_19565DADC();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_19561C134();
        v8 = sub_19565D47C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v34[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v34[1] = v7;
      v9 = v4;
      sub_19561A978(v34, v35, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v3 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  if (v3 > 1)
  {
    v10 = *a1;
    v11 = &v4[OBJC_IVAR___CNManagedDuplicate_primaryID];
    v29 = v4;
    v12 = -1;
    v13 = 1;
    v14 = v10;
    v30 = v3;
    do
    {
      swift_beginAccess();
      v32 = v13;
      v33 = v12;
      v15 = *(v10 + 8 * v13);
      v31 = v14;
      v16 = v14;
      while (1)
      {
        v17 = *v16;
        v18 = v15;
        v19 = v17;
        v20 = [v18 identifier];
        v21 = sub_19565D28C();
        v23 = v22;

        v24 = *(v11 + 1);
        if (!v24)
        {
          break;
        }

        if (v21 == *v11 && v24 == v23)
        {
        }

        else
        {
          v26 = sub_19565DB1C();

          if ((v26 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (!v10)
        {
          goto LABEL_29;
        }

        v27 = *v16;
        v15 = *(v16 + 8);
        *v16 = v15;
        *(v16 + 8) = v27;
        v16 -= 8;
        if (__CFADD__(v12++, 1))
        {
          goto LABEL_12;
        }
      }

LABEL_12:
      v13 = v32 + 1;
      v14 = v31 + 8;
      v12 = v33 - 1;
    }

    while (v32 + 1 != v30);
  }

  else
  {
  }
}

void sub_19561B3E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_195619208(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_19561B170(v8, v7);

  sub_19565D95C();
}

uint64_t sub_19561B488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAECDCF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_4Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void sub_19561B5F8()
{
  sub_19561BE10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19561BE10()
{
  if (!qword_1EAECB908)
  {
    sub_19565CDCC();
    v0 = sub_19565D77C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAECB908);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_19561BED0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_19561BF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19561BFAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19561C008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void sub_19561C064(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14)
{
  if (a2 != 1)
  {

    sub_1955F7A5C(a3, a4);
    sub_1955F7A5C(a5, a6);
    sub_1955F7A5C(a7, a8);

    sub_1955F7A5C(a11, a12);

    sub_1955F7A5C(a13, a14);
  }
}

unint64_t sub_19561C134()
{
  result = qword_1EAECB830;
  if (!qword_1EAECB830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAECB830);
  }

  return result;
}

unint64_t sub_19561C180()
{
  result = qword_1EAECDFF0;
  if (!qword_1EAECDFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAECDC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECDFF0);
  }

  return result;
}

uint64_t sub_19561C204(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_19561C250(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a1 + OBJC_IVAR___CNManagedDuplicate_signature;
  swift_beginAccess();
  if (*(v6 + 8))
  {

    v7 = sub_19565D27C();
  }

  else
  {
    v7 = 0;
  }

  [v3 setSignature_];

  v8 = a1 + OBJC_IVAR___CNManagedDuplicate_primaryID;
  swift_beginAccess();
  if (*(v8 + 8))
  {

    v9 = sub_19565D27C();
  }

  else
  {
    v9 = 0;
  }

  [v3 setPrimaryID_];

  v10 = OBJC_IVAR___CNManagedDuplicate_isIgnored;
  swift_beginAccess();
  [v3 setIsIgnored_];
  v11 = OBJC_IVAR___CNManagedDuplicate_isAvailable;
  swift_beginAccess();
  [v3 setIsAvailable_];
  v12 = [objc_allocWithZone(MEMORY[0x1E695DFD8]) init];
  [v3 setCohorts_];

  v13 = OBJC_IVAR___CNManagedDuplicate_managedCohorts;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (v14 >> 62)
  {
    v15 = sub_19565D81C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
LABEL_17:
    sub_19561C5D4(v16);

    v20 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
    v21 = sub_19565D3EC();

    v22 = [v20 initWithArray_];

    [v3 addCohorts_];
    [v3 setSelectedContactImage_];
    return [v3 setSelectedContactPoster_];
  }

  v23 = MEMORY[0x1E69E7CC0];

  result = sub_19565D97C();
  if ((v15 & 0x8000000000000000) == 0)
  {
    type metadata accessor for CNDuplicateCohort();
    v18 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x19A8B3850](v18, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
      }

      ++v18;
      CNDuplicateCohort.__allocating_init(managedCohort:context:)(v19, a2);
      sub_19565D94C();
      sub_19565D98C();
      sub_19565D99C();
      sub_19565D95C();
    }

    while (v15 != v18);

    v16 = v23;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

char *sub_19561C5D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_19565D81C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1955EA75C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x19A8B3850](i, a1);
        type metadata accessor for CNDuplicateCohort();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1955EA75C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1955EBBA0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CNDuplicateCohort();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1955EA75C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1955EBBA0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id CNDuplicateSet.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CNDuplicateSet.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CNDuplicateSet();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CNDuplicateSet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDuplicateSet();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CNDuplicateCohort.__allocating_init(managedCohort:context:)(char *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(v3) initWithContext_];
  v7 = &a1[OBJC_IVAR___CNManagedCohort_identifier];
  swift_beginAccess();
  if (*(v7 + 1))
  {
    v8 = v6;

    v9 = sub_19565D27C();
  }

  else
  {
    v10 = v6;
    v9 = 0;
  }

  [v6 setIdentifier_];

  v11 = NSStringFromRect(*&a1[OBJC_IVAR___CNManagedCohort_cropRect]);
  if (!v11)
  {
    sub_19565D28C();
    v11 = sub_19565D27C();
  }

  [v6 setCropRectString_];

  v12 = &a1[OBJC_IVAR___CNManagedCohort_imageData];
  swift_beginAccess();
  v13 = 0;
  v14 = v12[1];
  if (v14 >> 60 != 15)
  {
    v15 = *v12;
    sub_1955F79F4(v15, v14);
    v13 = sub_19565CF0C();
    sub_1955F7A5C(v15, v14);
  }

  [v6 setImageData_];

  v16 = &a1[OBJC_IVAR___CNManagedCohort_posterData];
  swift_beginAccess();
  v17 = 0;
  v18 = v16[1];
  if (v18 >> 60 != 15)
  {
    v19 = *v16;
    sub_1955F79F4(v19, v18);
    v17 = sub_19565CF0C();
    sub_1955F7A5C(v19, v18);
  }

  [v6 setPosterData_];

  return v6;
}

id sub_19561CB90()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_19565D27C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_19561CC04(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19565D28C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_19561CC68(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_19565D27C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_19561CCD8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19565CF2C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_19561CD3C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_19565CF0C();
  }

  v8 = v7;
  [v6 *a5];
}

id CNDuplicateCohort.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CNDuplicateCohort.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CNDuplicateCohort();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CNDuplicateCohort.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDuplicateCohort();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19561CF04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNDuplicateCohort();
  result = sub_19565D8EC();
  *a1 = result;
  return result;
}

uint64_t sub_19561CF50()
{
  sub_19565DBDC();
  sub_19565D30C();

  return sub_19565DBFC();
}

uint64_t sub_19561D02C()
{
  sub_19565D30C();
}

uint64_t sub_19561D0F4()
{
  sub_19565DBDC();
  sub_19565D30C();

  return sub_19565DBFC();
}

uint64_t sub_19561D1CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19561DF3C();
  *a1 = result;
  return result;
}

void sub_19561D1FC(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE900000000000061;
  v5 = 0x7461446567616D69;
  if (*v1 != 2)
  {
    v5 = 0x6144726574736F70;
    v4 = 0xEA00000000006174;
  }

  if (*v1)
  {
    v3 = 0x74636552706F7263;
    v2 = 0xEE00676E69727453;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_19561D294()
{
  v1 = 0x696669746E656469;
  v2 = 0x7461446567616D69;
  if (*v0 != 2)
  {
    v2 = 0x6144726574736F70;
  }

  if (*v0)
  {
    v1 = 0x74636552706F7263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19561D328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19561DF3C();
  *a1 = result;
  return result;
}

uint64_t sub_19561D368(uint64_t a1)
{
  v2 = sub_19561DB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19561D3A4(uint64_t a1)
{
  v2 = sub_19561DB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DuplicateCohortProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE028);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19561DB04();
  sub_19565DC0C();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    v9 = sub_19565DA9C();
    v11 = v10;
    v24 = v6;
    LOBYTE(v25) = 1;
    v12 = sub_19565DA9C();
    v22 = v13;
    v23 = v12;
    v27 = 2;
    sub_19561DB58();
    sub_19565DABC();
    v21 = v25;
    v20 = v26;
    v27 = 3;
    sub_19565DABC();
    v14 = v25;
    v15 = v26;
    (*(v24 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    v16 = v22;
    a2[2] = v23;
    a2[3] = v16;
    v17 = v20;
    a2[4] = v21;
    a2[5] = v17;
    a2[6] = v14;
    a2[7] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void DuplicateCohortProperties.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_19565D28C();
  v7 = v6;

  [a1 cropRect];
  v8 = NSStringFromRect(v23);
  v9 = sub_19565D28C();
  v11 = v10;

  v12 = [a1 imageData];
  if (v12)
  {
    v13 = v12;
    v22 = sub_19565CF2C();
    v21 = v14;
  }

  else
  {
    v22 = 0;
    v21 = 0xC000000000000000;
  }

  v15 = [a1 wallpaper];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 posterArchiveData];

    v18 = sub_19565CF2C();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0xC000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v22;
  a2[5] = v21;
  a2[6] = v18;
  a2[7] = v20;
}

unint64_t DuplicateCohortProperties.dictionaryValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v13 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567C490;
  *(inited + 32) = 0x696669746E656469;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v9;
  strcpy((inited + 80), "cropRectString");
  *(inited + 95) = -18;
  *(inited + 96) = v13;
  *(inited + 104) = v3;
  *(inited + 120) = v9;
  *(inited + 128) = 0x7461446567616D69;
  v10 = MEMORY[0x1E6969080];
  *(inited + 136) = 0xE900000000000061;
  *(inited + 144) = v4;
  *(inited + 152) = v5;
  *(inited + 168) = v10;
  *(inited + 176) = 0x6144726574736F70;
  *(inited + 216) = v10;
  *(inited + 184) = 0xEA00000000006174;
  *(inited + 192) = v7;
  *(inited + 200) = v6;

  sub_1955F79F4(v4, v5);
  sub_1955F79F4(v7, v6);
  v11 = sub_1956128FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE400);
  swift_arrayDestroy();
  return v11;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_19561DB04()
{
  result = qword_1EAECE030;
  if (!qword_1EAECE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE030);
  }

  return result;
}

unint64_t sub_19561DB58()
{
  result = qword_1EAECE038;
  if (!qword_1EAECE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE038);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19561DC34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_19561DC7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DuplicateCohortProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DuplicateCohortProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19561DE38()
{
  result = qword_1EAECE048;
  if (!qword_1EAECE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE048);
  }

  return result;
}

unint64_t sub_19561DE90()
{
  result = qword_1EAECE050;
  if (!qword_1EAECE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE050);
  }

  return result;
}

unint64_t sub_19561DEE8()
{
  result = qword_1EAECE058;
  if (!qword_1EAECE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE058);
  }

  return result;
}

uint64_t sub_19561DF3C()
{
  v0 = sub_19565DA8C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id ManagedCohort.__allocating_init(duplicateCohort:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_19561FBAC(a1);

  return v4;
}

id ManagedCohort.__allocating_init(contact:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_19561FE20(a1);

  return v4;
}

uint64_t CohortImage.imageData.getter()
{
  v1 = *v0;
  sub_1955F79F4(*v0, *(v0 + 8));
  return v1;
}

uint64_t CohortImage.cropRectString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CohortPoster.posterData.getter()
{
  v1 = *v0;
  sub_1955F79F4(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_19561E0D4()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAECE060);
  __swift_project_value_buffer(v0, qword_1EAECE060);
  return sub_19565D0DC();
}

uint64_t sub_19561E158(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CNManagedCohort_identifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_19561E1C4()
{
  v1 = (v0 + OBJC_IVAR___CNManagedCohort_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_19561E21C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CNManagedCohort_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_19561E354@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a3 = *v4;
  a3[1] = v6;
  return sub_1955F79E0(v5, v6);
}

uint64_t sub_19561E3A8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v5;
  v7[1] = v6;
  sub_1955F79E0(v5, v6);
  return sub_1955F7A5C(v8, v9);
}

uint64_t sub_19561E42C(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_1955F79E0(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_19561E490(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1955F7A5C(v7, v8);
}

id sub_19561E54C()
{
  v1 = OBJC_IVAR___CNManagedCohort_internalStore;
  v2 = *(v0 + OBJC_IVAR___CNManagedCohort_internalStore);
  if (v2 || (v3 = [objc_allocWithZone(CNContactStore) init], v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (v2 = *(v0 + v1)) != 0))
  {
    v5 = v2;
  }

  else
  {
    v5 = [objc_allocWithZone(CNContactStore) init];
    v2 = 0;
  }

  v6 = v2;
  return v5;
}

uint64_t sub_19561E5D4()
{
  v1 = OBJC_IVAR___CNManagedCohort__privateContact;
  v2 = *(v0 + OBJC_IVAR___CNManagedCohort__privateContact);
  if (v2)
  {
    v3 = [v2 identifier];
    v4 = sub_19565D28C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v0 + OBJC_IVAR___CNManagedCohort_identifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;

  v8 = *(v0 + v1);
  if (v8 && (v9 = [v8 imageData]) != 0)
  {
    v10 = v9;
    v11 = sub_19565CF2C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = (v0 + OBJC_IVAR___CNManagedCohort_imageData);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = v11;
  v14[1] = v13;
  sub_1955F7A5C(v15, v16);
  v17 = *(v0 + v1);
  if (v17)
  {
    [v17 cropRect];
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  v22 = (v0 + OBJC_IVAR___CNManagedCohort_cropRect);
  *v22 = v18;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  v23 = *(v0 + v1);
  if (v23 && (v24 = [v23 wallpaper]) != 0)
  {
    v25 = v24;
    v26 = [v24 posterArchiveData];

    v27 = sub_19565CF2C();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xF000000000000000;
  }

  v30 = (v0 + OBJC_IVAR___CNManagedCohort_posterData);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  *v30 = v27;
  v30[1] = v29;
  return sub_1955F7A5C(v31, v32);
}

id sub_19561E7AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CNManagedCohort__privateContact;
  v5 = *(*a1 + OBJC_IVAR___CNManagedCohort__privateContact);
  if (!v5)
  {
    sub_19561EC58();
    v5 = *(v3 + v4);
  }

  *a2 = v5;

  return v5;
}

uint64_t sub_19561E804(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR___CNManagedCohort__privateContact);
  *(*a2 + OBJC_IVAR___CNManagedCohort__privateContact) = *a1;
  v4 = v2;

  return sub_19561E5D4();
}

void *sub_19561E844()
{
  v1 = OBJC_IVAR___CNManagedCohort__privateContact;
  v2 = *(v0 + OBJC_IVAR___CNManagedCohort__privateContact);
  if (!v2)
  {
    sub_19561EC58();
    v2 = *(v0 + v1);
  }

  v3 = v2;
  return v2;
}

void sub_19561E888(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CNManagedCohort__privateContact);
  *(v1 + OBJC_IVAR___CNManagedCohort__privateContact) = a1;
  v3 = a1;

  sub_19561E5D4();
}

void (*sub_19561E8E0(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR___CNManagedCohort__privateContact;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    sub_19561EC58();
    v4 = *(v1 + v3);
  }

  *a1 = v4;
  v5 = v4;
  return sub_19561E94C;
}

void sub_19561E94C(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = *(v4 + v3);
  *(v4 + v3) = *a1;
  v7 = v5;
  v9 = v7;
  if (a2)
  {
    v8 = v7;

    sub_19561E5D4();
  }

  else
  {

    sub_19561E5D4();
  }
}

uint64_t sub_19561E9CC()
{
  v1 = (v0 + OBJC_IVAR___CNManagedCohort__privateContainerName);
  if (!*(v0 + OBJC_IVAR___CNManagedCohort__privateContainerName + 8))
  {
    sub_19561F30C();
  }

  v2 = *v1;

  return v2;
}

id ManagedCohort.init(contact:)(void *a1)
{
  v2 = sub_19561FE20(a1);

  return v2;
}

id ManagedCohort.init(duplicateCohortProperties:)(uint64_t *a1)
{
  v2 = a1[1];
  v22 = *a1;
  v3 = &v1[OBJC_IVAR___CNManagedCohort_identifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR___CNManagedCohort_imageData];
  *&v1[OBJC_IVAR___CNManagedCohort_imageData] = xmmword_19567BF50;
  v5 = &v1[OBJC_IVAR___CNManagedCohort_posterData];
  *&v1[OBJC_IVAR___CNManagedCohort_posterData] = xmmword_19567BF50;
  *&v1[OBJC_IVAR___CNManagedCohort_internalStore] = 0;
  v6 = a1[4];
  v7 = a1[5];
  v8 = &v1[OBJC_IVAR___CNManagedCohort_cropRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *&v1[OBJC_IVAR___CNManagedCohort__privateContact] = 0;
  v9 = a1[6];
  v10 = a1[7];
  v11 = &v1[OBJC_IVAR___CNManagedCohort__privateContainerName];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_beginAccess();
  *v3 = v22;
  *(v3 + 1) = v2;

  v12 = sub_19565D27C();
  v24 = NSRectFromString(v12);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;

  *v8 = x;
  *(v8 + 1) = y;
  *(v8 + 2) = width;
  *(v8 + 3) = height;
  swift_beginAccess();
  v17 = *v4;
  v18 = v4[1];
  *v4 = v6;
  v4[1] = v7;
  sub_1955F79F4(v6, v7);
  sub_1955F7A5C(v17, v18);
  sub_1955F79F4(v9, v10);

  sub_1954C1C4C(v6, v7);
  sub_1954C1C4C(v9, v10);
  swift_beginAccess();
  v19 = *v5;
  v20 = v5[1];
  *v5 = v9;
  v5[1] = v10;
  sub_1955F7A5C(v19, v20);
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ManagedCohort();
  return objc_msgSendSuper2(&v23, sel_init);
}

id ManagedCohort.init(duplicateCohort:)(void *a1)
{
  v2 = sub_19561FBAC(a1);

  return v2;
}

void sub_19561EC58()
{
  v44[7] = *MEMORY[0x1E69E9840];
  v1 = (v0 + OBJC_IVAR___CNManagedCohort_identifier);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    v22 = *(v0 + OBJC_IVAR___CNManagedCohort__privateContact);
    *(v0 + OBJC_IVAR___CNManagedCohort__privateContact) = 0;

    sub_19561E5D4();
    return;
  }

  v3 = *v1;
  v4 = qword_1EAECB8E0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(CNContactFetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFD0);
  v6 = sub_19565D3EC();
  v7 = [v5 initWithKeysToFetch_];

  [v7 setUnifyResults_];
  [v7 setMutableObjects_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19567B7A0;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;

  v10 = sub_19565D3EC();

  v11 = [v8 predicateForContactsWithIdentifiers_];

  [v7 setPredicate_];
  v12 = v0;
  v13 = sub_19561E54C();
  v44[0] = 0;
  v14 = [v13 executeFetchRequest:v7 error:v44];

  if (!v14)
  {
    v23 = v44[0];
    v16 = sub_19565CE6C();

    swift_willThrow();
    if (qword_1EAECD9A0 == -1)
    {
LABEL_15:
      v24 = sub_19565D0EC();
      __swift_project_value_buffer(v24, qword_1EAECE060);

      v25 = v16;
      v26 = sub_19565D0CC();
      v27 = sub_19565D69C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44[0] = v29;
        *v28 = 136315394;
        v30 = sub_1955EA0F8(v3, v2, v44);

        *(v28 + 4) = v30;
        *(v28 + 12) = 2080;
        swift_getErrorValue();
        v31 = sub_19565DB8C();
        v33 = sub_1955EA0F8(v31, v32, v44);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_1954A0000, v26, v27, "Could not fetch contact for cohort %s: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A8B5DB0](v29, -1, -1);
        MEMORY[0x19A8B5DB0](v28, -1, -1);
      }

      else
      {
      }

      v34 = *(v12 + OBJC_IVAR___CNManagedCohort__privateContact);
      *(v12 + OBJC_IVAR___CNManagedCohort__privateContact) = 0;

      sub_19561E5D4();
      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_15;
  }

  v15 = v44[0];
  v44[0] = [v14 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE0B0);
  swift_dynamicCast();
  v16 = v43;
  if (v43 >> 62)
  {
    v17 = v12;
    if (sub_19565D81C())
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = v12;
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v43 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x19A8B3850](0);
LABEL_10:
        v19 = v18;

        [v19 mutableCopy];

        sub_19565D7CC();
        swift_unknownObjectRelease();
        sub_1954C3460(0, &qword_1EAECB830);
        v20 = swift_dynamicCast();
        v21 = v43;
        if (!v20)
        {
          v21 = 0;
        }

        goto LABEL_21;
      }

      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(v43 + 32);
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  v21 = 0;
LABEL_21:
  v35 = *(v17 + OBJC_IVAR___CNManagedCohort__privateContact);
  *(v17 + OBJC_IVAR___CNManagedCohort__privateContact) = v21;
  v36 = v21;

  sub_19561E5D4();
  if (qword_1EAECD9A0 != -1)
  {
    swift_once();
  }

  v37 = sub_19565D0EC();
  __swift_project_value_buffer(v37, qword_1EAECE060);

  v38 = sub_19565D0CC();
  v39 = sub_19565D68C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44[0] = v41;
    *v40 = 136315138;
    v42 = sub_1955EA0F8(v3, v2, v44);

    *(v40 + 4) = v42;
    _os_log_impl(&dword_1954A0000, v38, v39, "Fetched contact for cohort %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x19A8B5DB0](v41, -1, -1);
    MEMORY[0x19A8B5DB0](v40, -1, -1);
  }

  else
  {
  }
}

void sub_19561F30C()
{
  v39[4] = *MEMORY[0x1E69E9840];
  v1 = (v0 + OBJC_IVAR___CNManagedCohort_identifier);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    return;
  }

  v3 = *v1;
  v4 = objc_opt_self();

  v5 = sub_19565D27C();
  v6 = [v4 predicateForContainerOfContactWithIdentifier_];

  v7 = sub_19561E54C();
  v39[0] = 0;
  v8 = [v7 containersMatchingPredicate:v6 error:v39];

  v9 = v39[0];
  if (!v8)
  {
    v21 = v39[0];
    v8 = sub_19565CE6C();

    swift_willThrow();
    *(v0 + OBJC_IVAR___CNManagedCohort__privateContainerName) = xmmword_19567C7C0;

    if (qword_1EAECD9A0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

  sub_1954C3460(0, &unk_1EAECB840);
  v10 = sub_19565D3FC();
  v11 = v9;

  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_16:

    v20 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E55;
    goto LABEL_17;
  }

  v12 = sub_19565D81C();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_5:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v15 = MEMORY[0x19A8B3850](v14, v10);
    goto LABEL_10;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_12:
    v22 = sub_19565D0EC();
    __swift_project_value_buffer(v22, qword_1EAECE060);

    v23 = v8;
    v24 = sub_19565D0CC();
    v25 = sub_19565D69C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39[0] = v27;
      *v26 = 136315394;
      v28 = sub_1955EA0F8(v3, v2, v39);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v29 = sub_19565DB8C();
      v31 = sub_1955EA0F8(v29, v30, v39);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_1954A0000, v24, v25, "Failed to fetch container for cohort %s. %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v27, -1, -1);
      MEMORY[0x19A8B5DB0](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

  v15 = *(v10 + 8 * v14 + 32);
LABEL_10:
  v16 = v15;

  v17 = [v16 name];

  v18 = sub_19565D28C();
  v20 = v19;

LABEL_17:
  v32 = (v0 + OBJC_IVAR___CNManagedCohort__privateContainerName);
  *v32 = v18;
  v32[1] = v20;

  if (qword_1EAECD9A0 != -1)
  {
    swift_once();
  }

  v33 = sub_19565D0EC();
  __swift_project_value_buffer(v33, qword_1EAECE060);

  v34 = sub_19565D0CC();
  v35 = sub_19565D68C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39[0] = v37;
    *v36 = 136315138;
    v38 = sub_1955EA0F8(v3, v2, v39);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_1954A0000, v34, v35, "Fetched container for cohort %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x19A8B5DB0](v37, -1, -1);
    MEMORY[0x19A8B5DB0](v36, -1, -1);
  }

  else
  {
  }
}

void sub_19561F850(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___CNManagedCohort_imageData;
  swift_beginAccess();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(v3 + 8);
  if (v8 >> 60 != 15)
  {
    v4 = *v3;
    v9 = *(v1 + OBJC_IVAR___CNManagedCohort_cropRect);
    v10 = *(v1 + OBJC_IVAR___CNManagedCohort_cropRect + 8);
    v11 = *(v1 + OBJC_IVAR___CNManagedCohort_cropRect + 16);
    v12 = *(v1 + OBJC_IVAR___CNManagedCohort_cropRect + 24);
    sub_1955F79F4(*v3, *(v3 + 8));
    v15.origin.x = v9;
    v15.origin.y = v10;
    v15.size.width = v11;
    v15.size.height = v12;
    v13 = NSStringFromRect(v15);
    v6 = sub_19565D28C();
    v7 = v14;

    v5 = v8;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
}

uint64_t sub_19561F940()
{
  v1 = NSStringFromRect(*(v0 + OBJC_IVAR___CNManagedCohort_cropRect));
  v2 = sub_19565D28C();

  return v2;
}

uint64_t sub_19561F9A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CNManagedCohort_posterData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xF000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v3[1];
  }

  *a1 = v6;
  a1[1] = v7;
  return sub_1955F79E0(v4, v5);
}

id ManagedCohort.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManagedCohort.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedCohort();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19561FB6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManagedCohort();
  result = sub_19565D8EC();
  *a1 = result;
  return result;
}

id sub_19561FBAC(void *a1)
{
  v3 = &v1[OBJC_IVAR___CNManagedCohort_identifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR___CNManagedCohort_imageData];
  *&v1[OBJC_IVAR___CNManagedCohort_imageData] = xmmword_19567BF50;
  v5 = &v1[OBJC_IVAR___CNManagedCohort_posterData];
  *&v1[OBJC_IVAR___CNManagedCohort_posterData] = xmmword_19567BF50;
  *&v1[OBJC_IVAR___CNManagedCohort_internalStore] = 0;
  v6 = &v1[OBJC_IVAR___CNManagedCohort_cropRect];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR___CNManagedCohort__privateContact] = 0;
  v7 = &v1[OBJC_IVAR___CNManagedCohort__privateContainerName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = [a1 identifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_19565D28C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_beginAccess();
  *v3 = v10;
  v3[1] = v12;

  v13 = [a1 cropRectString];
  if (v13)
  {
    v14 = v13;
    sub_19565D28C();

    v15 = sub_19565D27C();

    v36 = NSRectFromString(v15);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  else
  {
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
  }

  *v6 = x;
  *(v6 + 1) = y;
  *(v6 + 2) = width;
  *(v6 + 3) = height;
  v20 = [a1 imageData];
  if (v20)
  {
    v21 = v20;
    v22 = sub_19565CF2C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  swift_beginAccess();
  v25 = *v4;
  v26 = v4[1];
  *v4 = v22;
  v4[1] = v24;
  sub_1955F7A5C(v25, v26);
  v27 = [a1 posterData];
  if (v27)
  {
    v28 = v27;
    v29 = sub_19565CF2C();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xF000000000000000;
  }

  swift_beginAccess();
  v32 = *v5;
  v33 = v5[1];
  *v5 = v29;
  v5[1] = v31;
  sub_1955F7A5C(v32, v33);
  v35.receiver = v1;
  v35.super_class = type metadata accessor for ManagedCohort();
  return objc_msgSendSuper2(&v35, sel_init);
}

id sub_19561FE20(void *a1)
{
  v2 = &v1[OBJC_IVAR___CNManagedCohort_identifier];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR___CNManagedCohort_imageData];
  *&v1[OBJC_IVAR___CNManagedCohort_imageData] = xmmword_19567BF50;
  v4 = &v1[OBJC_IVAR___CNManagedCohort_posterData];
  *&v1[OBJC_IVAR___CNManagedCohort_posterData] = xmmword_19567BF50;
  *&v1[OBJC_IVAR___CNManagedCohort_internalStore] = 0;
  v5 = &v1[OBJC_IVAR___CNManagedCohort_cropRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR___CNManagedCohort__privateContact;
  *&v1[OBJC_IVAR___CNManagedCohort__privateContact] = 0;
  v7 = &v1[OBJC_IVAR___CNManagedCohort__privateContainerName];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v1[v6] = a1;
  v8 = a1;
  v9 = [v8 identifier];
  v10 = sub_19565D28C();
  v12 = v11;

  swift_beginAccess();
  *v2 = v10;
  v2[1] = v12;

  [v8 cropRect];
  *v5 = v13;
  *(v5 + 1) = v14;
  *(v5 + 2) = v15;
  *(v5 + 3) = v16;
  v17 = [v8 imageData];
  if (v17)
  {
    v18 = v17;
    v19 = sub_19565CF2C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  swift_beginAccess();
  v22 = *v3;
  v23 = v3[1];
  *v3 = v19;
  v3[1] = v21;
  sub_1955F7A5C(v22, v23);
  v24 = [v8 wallpaper];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 posterArchiveData];

    v27 = sub_19565CF2C();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xF000000000000000;
  }

  swift_beginAccess();
  v30 = *v4;
  v31 = v4[1];
  *v4 = v27;
  v4[1] = v29;
  sub_1955F7A5C(v30, v31);
  v33.receiver = v1;
  v33.super_class = type metadata accessor for ManagedCohort();
  return objc_msgSendSuper2(&v33, sel_init);
}