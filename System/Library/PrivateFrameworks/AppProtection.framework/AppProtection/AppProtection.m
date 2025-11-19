id sub_185AC2F94(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

BOOL sub_185AC302C()
{
  sub_185ADF8F0(v0 + OBJC_IVAR___APSubject_clientArenaStorage, v8);
  v1 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_185ADF8F0((v1 + 1), v7);
  v2 = *(*__swift_project_boxed_opaque_existential_1(v7, v7[3]) + 16);

  os_unfair_lock_lock((v2 + 48));
  sub_185AC3484((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 48));
  v3 = v6;

  v4 = *(v3 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v4 != 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_185AC3138(id *a1@<X0>, SEL *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_185AC31B8(a1);
  v6 = [*a1 *a2];
  v7 = sub_185B67FDC();

  *a3 = v7;
}

uint64_t sub_185AC31B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  result = sub_185AC3308();
  v5 = result;
  if ((result & 1) != 0 || v2)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v6 = sub_185B67B8C();
    __swift_project_value_buffer(v6, qword_1ED6F5130);
    v7 = sub_185B67B6C();
    v8 = sub_185B680AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109376;
      *(v9 + 4) = v5 & 1;
      *(v9 + 8) = 1024;
      *(v9 + 10) = v2;
      _os_log_impl(&dword_185AC1000, v7, v8, "rechecking state, needed: %{BOOL}d forced: %{BOOL}d", v9, 0xEu);
      MEMORY[0x1865FE2F0](v9, -1, -1);
    }

    return sub_185AC7AC4(a1);
  }

  return result;
}

BOOL sub_185AC3308()
{
  v9 = *MEMORY[0x1E69E9840];
  check = 0;
  v1 = notify_check(*(v0 + 32), &check);
  if (v1)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v2 = sub_185B67B8C();
    __swift_project_value_buffer(v2, qword_1ED6F5130);
    v3 = sub_185B67B6C();
    v4 = sub_185B6809C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_185AC1000, v3, v4, "Could not check: %u", v5, 8u);
      MEMORY[0x1865FE2F0](v5, -1, -1);
    }
  }

  result = (check | v1) != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_185AC3648()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v2 = v0[8];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);

  return swift_deallocObject();
}

void sub_185AC3724(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = sub_185B67E1C();
  v11 = [v9 objectForKey_];

  if (!v11)
  {
    sub_185ADF8F0(a4, v21);
    v12 = v22;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v14 = *(*(v12 - 8) + 64);
    MEMORY[0x1EEE9AC00](v13, v13);
    v16 = (&v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);

    v18 = sub_185AC4834(a2, a3, v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v11 = v18;
    v19 = sub_185B67E1C();
    [v9 setObject:v11 forKey:v19];
  }

  *a5 = v11;
}

uint64_t APApplication.isHidden.getter()
{
  sub_185ADF8F0(v0 + OBJC_IVAR___APSubject_clientArenaStorage, v13);
  v1 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_185ADF8F0((v1 + 1), v12);
  v2 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v3 = [v0 bundleIdentifier];
  v4 = sub_185B67E4C();
  v6 = v5;

  v7 = *(*v2 + 16);

  os_unfair_lock_lock((v7 + 48));
  sub_185AC3468((v7 + 16), &v11);
  os_unfair_lock_unlock((v7 + 48));
  v8 = v11;

  v9 = sub_185AC3A7C(v4, v6, v8);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v9 & 1;
}

id sub_185AC3A20(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_185B67E1C();

  return v6;
}

uint64_t sub_185AC3A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_185B6866C();
  sub_185B67EEC();
  v7 = sub_185B686AC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_185B6859C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_185AC3BDC(void *a1)
{
  v2 = v1;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1ED6F5130);
  v5 = a1;
  v6 = sub_185B67B6C();
  v7 = sub_185B680AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_185AC1000, v6, v7, "scene will become FG visible for %{public}@", v8, 0xCu);
    sub_185AC3F6C(v9);
    MEMORY[0x1865FE2F0](v9, -1, -1);
    MEMORY[0x1865FE2F0](v8, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR___APSystemAppOutlet_state);
  MEMORY[0x1EEE9AC00](v12, v13);
  os_unfair_lock_lock(v11 + 8);
  sub_185AC3FD4(v11 + 16);
  os_unfair_lock_unlock(v11 + 8);
  v14 = [objc_opt_self() sharedGuard];
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  aBlock[4] = sub_185AC5464;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AC53EC;
  aBlock[3] = &block_descriptor_21;
  v16 = _Block_copy(aBlock);
  v17 = v5;

  [v14 authenticateForShieldDismissalForSubject:v17 completion:v16];
  _Block_release(v16);
}

uint64_t sub_185AC3E40()
{

  return swift_deallocObject();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_185AC3F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185AC3FF0(int a1, id a2)
{
  v2 = [a2 bundleIdentifier];
  v3 = sub_185B67E4C();
  v5 = v4;

  sub_185AC407C(&v7, v3, v5);
}

uint64_t sub_185AC407C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_185B6866C();
  sub_185B67EEC();
  v9 = sub_185B686AC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_185B6859C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_185AC4B84(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
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

uint64_t sub_185AC421C()
{
  qword_1ED6F5160 = &type metadata for ServerBackedClientArena;
  unk_1ED6F5168 = &off_1EF46CD08;
  qword_1ED6F5148 = swift_allocObject();
  return sub_185AC42D4((qword_1ED6F5148 + 16));
}

uint64_t sub_185AC4274()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v2 = v0[8];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);

  return swift_deallocObject();
}

uint64_t sub_185AC42D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() strongToWeakObjectsMapTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB40, &qword_185B6FCF0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  *a1 = v3;
  if (qword_1ED6F48D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6F5170;
  v5 = *algn_1ED6F5178;
  type metadata accessor for ServerNotificationHandle();
  swift_allocObject();

  sub_185AC6D60(v4, v5);
  v6 = type metadata accessor for ServerBackedClientPolicyStore();
  swift_allocObject();

  a1[1] = sub_185AC6F3C(v7, sub_185ACDA70, 0);
  v8 = a1 + 1;
  v8[3] = v6;
  v8[4] = &off_1EF469FD0;
  sub_185ADF8F0(v8, v40);
  v9 = v41;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v38 = v6;
  v39 = &off_1EF469FD0;
  v37[0] = v15;
  v16 = objc_allocWithZone(type metadata accessor for DefaultSubjectMonitorRegistry());
  v17 = v38;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v18);
  v21 = (v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_185AC78EC(*v21, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  v8[5] = v23;
  v24 = type metadata accessor for ServerBackedSystemAppOutletRegistry();
  v25 = swift_allocObject();
  v26 = sub_185AC86F0();
  v28 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB48, &qword_185B6FCF8);
  v31 = swift_allocObject();
  *(v31 + 40) = 0;
  *(v31 + 16) = v26;
  *(v31 + 24) = v28;
  *(v31 + 32) = v30;
  *(v25 + 16) = v31;
  v8[9] = v24;
  v8[10] = &off_1EF469658;
  v8[6] = v25;
  v32 = type metadata accessor for ServerBackedExtensionMonitorRegistry();
  swift_allocObject();
  v33 = sub_185AC9248();
  v8[14] = v32;
  v8[15] = &off_1EF468478;
  v8[11] = v33;
  v34 = type metadata accessor for ServerBackedViewSubjectMonitorRegistry();
  swift_allocObject();
  v35 = sub_185AC89F4();
  v8[19] = v34;
  v8[20] = &off_1EF466960;

  v8[16] = v35;
  return result;
}

uint64_t APApplication.isLocked.getter()
{
  sub_185ADF8F0(v0 + OBJC_IVAR___APSubject_clientArenaStorage, v13);
  v1 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_185ADF8F0((v1 + 1), v12);
  v2 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v3 = [v0 bundleIdentifier];
  v4 = sub_185B67E4C();
  v6 = v5;

  v7 = *(*v2 + 16);

  os_unfair_lock_lock((v7 + 48));
  sub_185AC46A4((v7 + 16), &v11);
  os_unfair_lock_unlock((v7 + 48));
  v8 = v11;

  v9 = sub_185AC3A7C(v4, v6, v8);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v9 & 1;
}

id sub_185AC4834(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v48[3] = &type metadata for ServerBackedClientArena;
  v48[4] = &off_1EF46CD08;
  v4 = swift_allocObject();
  v48[0] = v4;
  v5 = a3[9];
  v4[9] = a3[8];
  v4[10] = v5;
  v4[11] = a3[10];
  v6 = a3[5];
  v4[5] = a3[4];
  v4[6] = v6;
  v7 = a3[7];
  v4[7] = a3[6];
  v4[8] = v7;
  v8 = a3[1];
  v4[1] = *a3;
  v4[2] = v8;
  v9 = a3[3];
  v4[3] = a3[2];
  v4[4] = v9;
  v10 = objc_allocWithZone(APApplication);
  v11 = sub_185B67E1C();

  sub_185ADF8F0(v48, v46);
  v12 = v47;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v44 = &type metadata for ServerBackedClientArena;
  v45 = &off_1EF46CD08;
  v18 = swift_allocObject();
  v43[0] = v18;
  v19 = v16[9];
  v18[9] = v16[8];
  v18[10] = v19;
  v18[11] = v16[10];
  v20 = v16[5];
  v18[5] = v16[4];
  v18[6] = v20;
  v21 = v16[7];
  v18[7] = v16[6];
  v18[8] = v21;
  v22 = v16[1];
  v18[1] = *v16;
  v18[2] = v22;
  v23 = v16[3];
  v18[3] = v16[2];
  v18[4] = v23;
  v24 = type metadata accessor for ClientArenaWrapper();
  v25 = objc_allocWithZone(v24);
  v26 = v44;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  v28 = *(v26[-1].Description + 8);
  MEMORY[0x1EEE9AC00](v27, v27);
  v30 = (&v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v42[3] = &type metadata for ServerBackedClientArena;
  v42[4] = &off_1EF46CD08;
  v32 = swift_allocObject();
  v42[0] = v32;
  v33 = v30[9];
  v32[9] = v30[8];
  v32[10] = v33;
  v32[11] = v30[10];
  v34 = v30[5];
  v32[5] = v30[4];
  v32[6] = v34;
  v35 = v30[7];
  v32[7] = v30[6];
  v32[8] = v35;
  v36 = v30[1];
  v32[1] = *v30;
  v32[2] = v36;
  v37 = v30[3];
  v32[3] = v30[2];
  v32[4] = v37;
  sub_185ADF8F0(v42, v25 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
  v41.receiver = v25;
  v41.super_class = v24;
  v38 = objc_msgSendSuper2(&v41, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  v39 = [v10 initFileprivWithBundleID:v11 arena:v38];

  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  return v39;
}

uint64_t sub_185AC4B84(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_185B4DD44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_185B4E2E8();
      goto LABEL_16;
    }

    sub_185B4E584(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_185B6866C();
  sub_185B67EEC();
  result = sub_185B686AC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_185B6859C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_185B685CC();
  __break(1u);
  return result;
}

void sub_185AC4D64(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_185AC4FCC(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if ([a1 isEffectivelyLocked])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_185ACA0F0;
    *(v5 + 24) = v4;
    v15 = sub_185B126F4;
    v16 = v5;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_185B6657C;
    v14 = &block_descriptor_153;
    v6 = _Block_copy(&v11);

    v7 = APGetAsyncGuardProxy(v6);
    _Block_release(v6);
    v8 = [a1 effectiveBundleIdentifier];
    if (!v8)
    {
      sub_185B67E4C();
      v8 = sub_185B67E1C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = sub_185ACA0F0;
    *(v9 + 24) = v4;
    v15 = sub_185B12714;
    v16 = v9;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_185B2AF84;
    v14 = &block_descriptor_159;
    v10 = _Block_copy(&v11);

    [v7 authenticateForShieldUnlockOfBundle:v8 completion:v10];
    _Block_release(v10);

    swift_unknownObjectRelease();
  }

  else
  {
    a2[2](a2, 1, 0);
  }
}

uint64_t APApplication.isEffectivelyLocked.getter()
{
  sub_185ADF8F0(v0 + OBJC_IVAR___APSubject_clientArenaStorage, v13);
  v1 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_185ADF8F0((v1 + 1), v12);
  v2 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v3 = [v0 bundleIdentifier];
  v4 = sub_185B67E4C();
  v6 = v5;

  v7 = *(*v2 + 16);

  os_unfair_lock_lock((v7 + 48));
  sub_185AC53A4((v7 + 16), &v11);
  os_unfair_lock_unlock((v7 + 48));
  v8 = v11;

  v9 = sub_185AC3A7C(v4, v6, v8);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v9 & 1;
}

void sub_185AC53EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_185AC546C(char a1, void *a2, void *a3)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1ED6F5130);
  v7 = a3;
  v8 = a2;
  oslog = sub_185B67B6C();
  v9 = sub_185B680AC();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543874;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2114;
    v12 = v7;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v10 + 20) = v14;
    v11[1] = v15;
    _os_log_impl(&dword_185AC1000, oslog, v9, "auth result for %{public}@: %{BOOL}d %{public}@", v10, 0x1Cu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v11, -1, -1);
    MEMORY[0x1865FE2F0](v10, -1, -1);
  }
}

void sub_185AC5630(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6, void *a7)
{
  v62 = a6;
  v73 = *MEMORY[0x1E69E9840];
  v13 = sub_185B67C9C();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_185B67CDC();
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  _Block_copy(a7);
  if ([a1 shieldable])
  {
    v58 = v23;
    if ([a1 isLocked])
    {
      v24 = a2;
      v25 = HIDWORD(a2);
      v26 = HIDWORD(a4);
      v27 = HIDWORD(a5);
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v60 = v25;
      v61 = HIDWORD(a3);
      v28 = sub_185B67B8C();
      __swift_project_value_buffer(v28, qword_1ED6F5130);
      v29 = a1;
      v30 = sub_185B67B6C();
      v31 = sub_185B680AC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v59 = HIDWORD(a4);
        v34 = v33;
        *v32 = 67109378;
        atoken.val[0] = v24;
        atoken.val[1] = v60;
        atoken.val[2] = a3;
        atoken.val[3] = v61;
        atoken.val[4] = a4;
        atoken.val[5] = v59;
        *&atoken.val[6] = a5;
        *(v32 + 4) = audit_token_to_pid(&atoken);
        *(v32 + 8) = 2112;
        *(v32 + 10) = v29;
        *v34 = v29;
        v35 = v29;
        _os_log_impl(&dword_185AC1000, v30, v31, "notifying server %d is accessing %@", v32, 0x12u);
        sub_185AC3F6C(v34);
        v36 = v34;
        v27 = HIDWORD(a5);
        LODWORD(v26) = v59;
        MEMORY[0x1865FE2F0](v36, -1, -1);
        MEMORY[0x1865FE2F0](v32, -1, -1);

        v38 = v60;
        v37 = v61;
        v39 = v58;
      }

      else
      {

        v39 = v58;
        v38 = v60;
        v37 = v61;
      }

      v63 = __PAIR64__(v38, v24);
      v64 = a3;
      v65 = v37;
      v66 = a4;
      v67 = v26;
      v68 = a5;
      v69 = v27;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_185ACA0F0;
      *(v48 + 24) = v39;
      v71 = sub_185B126F4;
      v72 = v48;
      v59 = a5;
      *atoken.val = MEMORY[0x1E69E9820];
      *&atoken.val[2] = 1107296256;
      *&atoken.val[4] = sub_185B6657C;
      *&atoken.val[6] = &block_descriptor_219;
      v49 = _Block_copy(&atoken);

      v50 = APGetAsyncGuardProxy(v49);
      _Block_release(v49);
      v51 = [v29 effectiveBundleIdentifier];
      if (!v51)
      {
        sub_185B67E4C();
        v51 = sub_185B67E1C();
        v39 = v58;
      }

      v52 = swift_allocObject();
      v54 = v60;
      v53 = v61;
      *(v52 + 16) = v24;
      *(v52 + 20) = v54;
      *(v52 + 24) = a3;
      *(v52 + 28) = v53;
      *(v52 + 32) = a4;
      *(v52 + 36) = v26;
      *(v52 + 40) = v59;
      *(v52 + 44) = v27;
      *(v52 + 48) = v29;
      *(v52 + 56) = sub_185ACA0F0;
      *(v52 + 64) = v39;
      v71 = sub_185B125B4;
      v72 = v52;
      *atoken.val = MEMORY[0x1E69E9820];
      *&atoken.val[2] = 1107296256;
      *&atoken.val[4] = sub_185B2AF84;
      *&atoken.val[6] = &block_descriptor_225;
      v55 = _Block_copy(&atoken);
      v56 = v29;

      [v50 initiateAuthenticationWithShieldingForBundle:v51 onBehalfOfProcessWithAuditToken:&v63 accessGrantReason:v62 completion:v55];
      _Block_release(v55);

      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v58;
      if (qword_1EA8CC098 != -1)
      {
        swift_once();
      }

      v46 = swift_allocObject();
      *(v46 + 16) = sub_185ACA0F0;
      *(v46 + 24) = v45;
      v71 = sub_185ACA070;
      v72 = v46;
      *atoken.val = MEMORY[0x1E69E9820];
      *&atoken.val[2] = 1107296256;
      *&atoken.val[4] = sub_185ACA0E8;
      *&atoken.val[6] = &block_descriptor_213;
      v47 = _Block_copy(&atoken);

      sub_185B67CBC();
      v63 = MEMORY[0x1E69E7CC0];
      sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
      sub_185B682CC();
      MEMORY[0x1865FD170](0, v22, v17, v47);
      _Block_release(v47);
      (*(v61 + 8))(v17, v13);
      (*(v59 + 8))(v22, v60);
    }

    v57 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v40 = sub_185AD0148(1uLL, 0, 0, 102, 0xD000000000000051, 0x8000000185B76460);
    v41 = sub_185B6791C();
    v42 = a7[2];
    v62 = v41;
    v42(a7, 0);

    v43 = *MEMORY[0x1E69E9840];
    v44 = v62;
  }
}

uint64_t sub_185AC5DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AC5E30()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AC5E68()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

id sub_185AC6148(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = type metadata accessor for DefaultSubjectMonitorToken();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_subjectMask] = a2;
  v10 = &v9[OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_invalidationHandler];
  *v10 = sub_185ACF568;
  v10[1] = v7;
  v29.receiver = v9;
  v29.super_class = v8;
  v11 = v3;
  v12 = objc_msgSendSuper2(&v29, sel_init);
  v13 = *&v11[OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_mutableState];

  os_unfair_lock_lock(v13 + 6);
  if (a3)
  {
    swift_unknownObjectWeakInit();
    v31 = &type metadata for WeakMonitorReference;
    v32 = &off_1EF469C30;
    v30[0] = swift_allocObject();
    sub_185ACF448(v27, v30[0] + 16);
    sub_185ADF8F0(v30, v28);
    sub_185AC64DC(v28, v12);
    sub_185ACF3F4(v27);
  }

  else
  {
    v31 = &type metadata for StrongMonitorReference;
    v32 = &off_1EF469CB8;
    v30[0] = a1;
    sub_185ADF8F0(v30, v28);
    v14 = v12;
    swift_unknownObjectRetain();
    sub_185AC64DC(v28, v14);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  if ((a3 & 2) != 0)
  {
    if (qword_1ED6F4CA8 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED6F5160;
    v16 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
    v17 = *(v15 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](v16, v16);
    v20 = &v27[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v17 + 16))(v20);
    sub_185ADF8F0((v20 + 8), v28);
    (*(v17 + 8))(v20, v15);
    v21 = *__swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v22 = sub_185B203B4();
    v23 = [objc_allocWithZone(APClientState) init];
    sub_185ACD278(v23, v30);

    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v24 = sub_185B1919C();
    sub_185B198D0(v30, v24);

    sub_185ACC058(v30);
  }

  os_unfair_lock_unlock(v13 + 6);

  return v12;
}

uint64_t sub_185AC646C()
{

  return swift_deallocObject();
}

uint64_t sub_185AC64A4()
{
  MEMORY[0x1865FE380](v0 + 16);

  return swift_deallocObject();
}

void sub_185AC64DC(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_185AC66F8(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_185AC65B4(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_185ACF5CC(a1, &unk_1EA8CD518, &qword_185B6E898);
    sub_185ACF62C(a2, v7);

    sub_185ACF5CC(v7, &unk_1EA8CD518, &qword_185B6E898);
  }
}

id sub_185AC65B4(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_185AC6710(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_185B51A9C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_185AC8CC0(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_185AC6710(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for DefaultSubjectMonitorToken();
      result = sub_185B685DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 40 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_185AC66F8(a1, v20);
  }

  else
  {
    sub_185AC681C(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_185AC66F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_185AC6710(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_185B6827C();

  return sub_185AC6754(a1, v5);
}

unint64_t sub_185AC6754(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for DefaultSubjectMonitorToken();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_185B6828C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_185AC681C(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_185AC66F8(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_185AC68EC()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 12);
  sub_185AC69BC(&v1[4]);
  os_unfair_lock_unlock(v1 + 12);

  type metadata accessor for ClientPolicyObservationToken();
  v2 = swift_allocObject();
  v3 = *(v0 + 16);

  os_unfair_lock_lock(v3 + 12);
  sub_185AC7AA4(&v3[4]);
  os_unfair_lock_unlock(v3 + 12);

  return v2;
}

void sub_185AC69D8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 24) + 40);
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  os_unfair_lock_lock(v3 + 8);
  sub_185AC7A64(&v3[4]);
  os_unfair_lock_unlock(v3 + 8);
  if (v2)
  {
    __break(1u);
  }
}

void sub_185AC6A50(int *a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 == -1)
  {
    out_token = -1;
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = swift_allocObject();
    swift_weakInit();
    v16[4] = sub_185B20660;
    v16[5] = v7;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_185ACEA8C;
    v16[3] = &block_descriptor_12;
    v8 = _Block_copy(v16);

    v9 = sub_185B67ECC();
    v10 = notify_register_dispatch((v9 + 32), &out_token, a3, v8);

    _Block_release(v8);
    if (v10)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v11 = sub_185B67B8C();
      __swift_project_value_buffer(v11, qword_1ED6F5130);
      v12 = sub_185B67B6C();
      v13 = sub_185B6809C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = v10;
        _os_log_impl(&dword_185AC1000, v12, v13, "could not register for notification: %u", v14, 8u);
        MEMORY[0x1865FE2F0](v14, -1, -1);
      }
    }

    else
    {
      *a1 = out_token;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_185AC6C70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_185AC6CC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_185AC6D0C()
{
  result = sub_185B67E4C();
  qword_1ED6F5170 = result;
  *algn_1ED6F5178 = v1;
  return result;
}

uint64_t sub_185AC6D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD318, &unk_185B6DCD0);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = -1;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  out_token = -1;
  v8 = sub_185B67ECC();
  v9 = notify_register_check((v8 + 32), &out_token);

  *(v3 + 32) = out_token;
  if (v9)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v10 = sub_185B67B8C();
    __swift_project_value_buffer(v10, qword_1ED6F5130);
    v11 = sub_185B67B6C();
    v12 = sub_185B6809C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v9;
      _os_log_impl(&dword_185AC1000, v11, v12, "could not register for changes: %u", v13, 8u);
      MEMORY[0x1865FE2F0](v13, -1, -1);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void *sub_185AC6F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v22 = sub_185B680EC();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_185B680DC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = *(*(sub_185B67CDC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v11 = sub_185AC7294();
  v21[0] = "pper";
  v21[1] = v11;
  sub_185B67CBC();
  v28 = MEMORY[0x1E69E7CC0];
  sub_185AC72E0(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v22);
  v3[3] = sub_185B6813C();
  v12 = objc_allocWithZone(APClientState);
  v13 = v23;

  v14 = [v12 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD310, &qword_185B6DCC8);
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 16) = v14;
  v16 = MEMORY[0x1E69E7CC8];
  *(v15 + 24) = 0;
  *(v15 + 32) = v16;
  *(v15 + 40) = v13;
  v4[2] = v15;
  v17 = v25;
  v4[4] = v24;
  v4[5] = v17;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v13 + 40);
  v26 = sub_185B205E4;
  v27 = v18;

  os_unfair_lock_lock(v19 + 8);
  sub_185AC741C(&v19[4]);
  os_unfair_lock_unlock(v19 + 8);

  return v4;
}

unint64_t sub_185AC7294()
{
  result = qword_1ED6F48B0;
  if (!qword_1ED6F48B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6F48B0);
  }

  return result;
}

uint64_t sub_185AC72E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_185AC7328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_185AC7370(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185AC73B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_185AC7438(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_185AC756C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_185AC7688(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_185AC7688((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_185ADF2C8;
  v11[5] = v6;
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_185AC7650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AC7818(void *a1)
{
  v2 = *v1;
  v3 = [a1 bundleIdentifier];
  sub_185B67E4C();

  if (os_unfair_lock_trylock((v2 + 24)))
  {
    sub_185ACA178((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  else
  {
  }
}

char *sub_185AC78EC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for ServerBackedClientPolicyStore();
  v15[3] = v4;
  v15[4] = &off_1EF469FD0;
  v15[0] = a1;
  *&a2[OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_observationToken] = 0;
  v5 = OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_mutableState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CDB50, &unk_185B6FD00);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  *&a2[v5] = v6;
  v14.receiver = a2;
  v14.super_class = type metadata accessor for DefaultSubjectMonitorRegistry();
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = __swift_project_boxed_opaque_existential_1(v15, v4);
  *(swift_allocObject() + 16) = v7;
  v9 = *v8;
  v10 = v7;
  v11 = sub_185AC68EC();

  v12 = *&v10[OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_observationToken];
  *&v10[OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_observationToken] = v11;

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v10;
}

uint64_t sub_185AC7A2C()
{

  return swift_deallocObject();
}

uint64_t sub_185AC7AC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_185B67C9C();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_185B67CDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;

  v14 = v13;
  sub_185ACC254(v2, a1);
  v23 = v8;
  v24 = v9;
  *(a1 + 8) = 0;
  v15 = *a1;
  sub_185ACD278(v14, v28);
  if (sub_185ACC1DC())
  {

    return sub_185ACC058(v28);
  }

  else
  {
    v17 = *(a1 + 16);
    v22 = *(v2 + 24);
    v18 = swift_allocObject();
    v19 = v28[1];
    *(v18 + 16) = v28[0];
    *(v18 + 32) = v19;
    *(v18 + 48) = v28[2];
    *(v18 + 64) = v29;
    *(v18 + 72) = v17;
    aBlock[4] = sub_185B206B8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_57;
    v20 = _Block_copy(aBlock);

    sub_185B67CBC();
    v26 = MEMORY[0x1E69E7CC0];
    sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    v21 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v12, v7, v20);
    _Block_release(v20);

    (*(v21 + 8))(v7, v4);
    (*(v24 + 8))(v12, v23);
  }
}

uint64_t sub_185AC7F38()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[9];

  return swift_deallocObject();
}

id sub_185AC7FA0(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_getObjCClassMetadata();
  v4 = [objc_opt_self() *a3];
  v5 = sub_185B67FDC();

  sub_185AC9820(v5);

  type metadata accessor for APApplication(v6);
  v7 = sub_185B67F5C();

  return v7;
}

id sub_185AC8060(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_185B67FCC();

  return v3;
}

uint64_t sub_185AC80BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_185B67B8C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_185B67B7C();
}

uint64_t sub_185AC817C()
{
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6F5160;
  v1 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  sub_185ADF8F0((v5 + 8), v11);
  (*(v2 + 8))(v5, v0);
  v6 = *(*__swift_project_boxed_opaque_existential_1(v11, v11[3]) + 16);

  os_unfair_lock_lock((v6 + 48));
  sub_185AC3484((v6 + 16), &v10);
  os_unfair_lock_unlock((v6 + 48));
  v7 = v10;

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
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

unint64_t sub_185AC83C4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_185B6866C();
  MEMORY[0x1865FD6D0](a1);
  v4 = sub_185B686AC();

  return sub_185AC9178(a1, v4);
}

uint64_t sub_185AC8430(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6A0, &qword_185B6EEC8);
  result = sub_185B6846C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_185B6866C();
      MEMORY[0x1865FD6D0](v21);
      result = sub_185B686AC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_185AC86F0()
{
  v8 = sub_185B680EC();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_185B680DC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = *(*(sub_185B67CDC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v7[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v9 = MEMORY[0x1E69E7CC0];
  sub_185AC72E0(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v8);
  return sub_185B6813C();
}

void *sub_185AC89F4()
{
  v12 = sub_185B680EC();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_185B680DC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = *(*(sub_185B67CDC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v0[2] = [objc_allocWithZone(type metadata accessor for ServerBackedViewSubjectMonitorRegistry.MonitorClientExport()) init];
  v7 = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v11[0] = "v40@0:8@16@24@?32";
  v11[1] = v7;
  sub_185B67CBC();
  v13 = MEMORY[0x1E69E7CC0];
  sub_185AC7328(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  v0[3] = sub_185B6813C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE50, &unk_185B6C570);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = 0;
  v0[4] = v8;
  v9 = v0[2];
  swift_weakAssign();
  return v0;
}

uint64_t sub_185AC8CC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4E8, &qword_185B6EED0);
  result = sub_185B6846C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_185AC66F8(v22, v34);
      }

      else
      {
        sub_185ADF8F0(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_185B6827C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_185AC66F8(v34, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_185AC8F40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_185AC83C4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_185AC8430(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_185AC83C4(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        type metadata accessor for ClientPolicyObservationToken();
        result = sub_185B685DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_185B51DA4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  *(v22[6] + 8 * v11) = a3;
  v26 = (v22[7] + 16 * v11);
  *v26 = a1;
  v26[1] = a2;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_185AC90B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  sub_185AC8F40(sub_185B20614, v8, a2, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v12;
  return result;
}

unint64_t sub_185AC9178(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_185AC91F4()
{
  result = qword_1ED6F4838;
  if (!qword_1ED6F4838)
  {
    type metadata accessor for ClientPolicyObservationToken();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F4838);
  }

  return result;
}

void *sub_185AC9248()
{
  v12 = sub_185B680EC();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_185B680DC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = *(*(sub_185B67CDC() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v0[2] = [objc_allocWithZone(type metadata accessor for ServerBackedExtensionMonitorRegistry.MonitorClientExport()) init];
  v7 = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v11[0] = "";
  v11[1] = v7;
  sub_185B67CBC();
  v13 = MEMORY[0x1E69E7CC0];
  sub_185AC7328(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  v0[3] = sub_185B6813C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE50, &unk_185B6C570);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = 0;
  v0[4] = v8;
  v9 = v0[2];
  swift_weakAssign();
  return v0;
}

uint64_t sub_185AC95D4()
{
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6F5160;
  v1 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  sub_185ADF8F0((v5 + 8), v11);
  (*(v2 + 8))(v5, v0);
  v6 = *(*__swift_project_boxed_opaque_existential_1(v11, v11[3]) + 16);

  os_unfair_lock_lock((v6 + 48));
  sub_185AC9760((v6 + 16), &v10);
  os_unfair_lock_unlock((v6 + 48));
  v7 = v10;

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t sub_185AC9820(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_185B683DC();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    v6 = sub_185B682DC();
    v7 = *(v1 + 36);
    result = swift_getObjCClassFromMetadata();
    v8 = 0;
    v24 = v1 + 64;
    v25 = result;
    v26 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v27 = v8;
      v11 = (*(v1 + 48) + 16 * v6);
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_185B67E1C();
      v15 = [v25 applicationWithBundleIdentifier_];

      sub_185B683BC();
      v16 = *(v28 + 16);
      sub_185B683EC();
      v1 = v26;
      sub_185B683FC();
      result = sub_185B683CC();
      v9 = 1 << *(v26 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v17 = *(v4 + 8 * v10);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v26 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v24 + 8 * v10);
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_185B19C34(v6, v7, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_185B19C34(v6, v7, 0);
      }

LABEL_4:
      v8 = v27 + 1;
      v6 = v9;
      if (v27 + 1 == v2)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_185AC9A98()
{
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0 || (sub_185AC9DE4() & 1) == 0 || !sub_185AD06D8())
  {
    return 0;
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isLockingAppsAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppProtectionFeatures.enabled.getter()
{
  v1 = *v0;
  if (qword_1ED6F4C98 != -1)
  {
    swift_once();
  }

  v2 = off_1ED6F4840;

  os_unfair_lock_lock(v2 + 6);
  v3 = *&v2[4]._os_unfair_lock_opaque;
  if (*(v3 + 16) && (v4 = sub_185AF6C74(v1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = 2;
  }

  os_unfair_lock_unlock(v2 + 6);

  if (v6 == 2)
  {
    v8[3] = &type metadata for AppProtectionFeatures;
    v8[4] = sub_185AC9C14();
    LOBYTE(v8[0]) = v1;
    LOBYTE(v6) = sub_185B67B2C();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  return v6 & 1;
}

unint64_t sub_185AC9C14()
{
  result = qword_1ED6F4850;
  if (!qword_1ED6F4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F4850);
  }

  return result;
}

const char *sub_185AC9DB0()
{
  if (*v0)
  {
    return "no_passcode_fallback";
  }

  else
  {
    return "protected_apps";
  }
}

uint64_t sub_185AC9DE4()
{
  if (qword_1EA8CC048 != -1)
  {
    swift_once();
  }

  if (byte_1EA8D22E0)
  {
    LOBYTE(v0) = 1;
  }

  else
  {
    v1 = MKBGetDeviceLockState();
    v2 = MKBGetDeviceLockState();
    if (v2 >= 4)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v3 = sub_185B67B8C();
      __swift_project_value_buffer(v3, qword_1ED6F5130);
      v4 = sub_185B67B6C();
      v5 = sub_185B6808C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v1;
        _os_log_impl(&dword_185AC1000, v4, v5, "unknown return %d from MKBGetDeviceLockState", v6, 8u);
        MEMORY[0x1865FE2F0](v6, -1, -1);
      }

      LOBYTE(v0) = 0;
    }

    else
    {
      v0 = 7u >> (v2 & 0xF);
    }
  }

  return v0 & 1;
}

unint64_t sub_185AC9F40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_185B6866C();
  sub_185B67EEC();
  v6 = sub_185B686AC();

  return sub_185AC9FB8(a1, a2, v6);
}

unint64_t sub_185AC9FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_185B6859C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_185ACA074(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_185ACA0B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1, 0);
}

void sub_185ACA0FC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_185B6791C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_185ACA178(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_185ACA194(a1);
}

void sub_185ACA194(void **a1)
{
  v1 = *a1;
  v2 = sub_185B67E1C();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    v3 = sub_185B67E1C();
    [v1 removeObjectForKey_];
  }
}

uint64_t sub_185ACA328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_185B67AFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185ACA36C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_185ACA3B4(uint64_t a1, uint64_t a2)
{
  LOBYTE(v33[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = OBJC_IVAR____TtC13AppProtection13APReadService_policy;
      v5 = Strong;
      sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection13APReadService_policy, v33);
      v6 = v34;
      v7 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      (*(v7 + 24))(v6, v7);
      sub_185ADF8F0(v5 + v4, v30);
      v8 = v31;
      v9 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v9 + 16))(v8, v9);
      sub_185ADF8F0(v5 + v4, v27);
      v10 = v28;
      v11 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v11 + 32))(v10, v11);
      v12 = objc_allocWithZone(APClientState);
      v13 = sub_185B67FCC();

      v14 = sub_185B67FCC();

      v15 = sub_185B67FCC();

      v16 = [v12 initWithLockedAppBundleIdentifiers:v13 hiddenAppBundleIdentifiers:v14 effectivelyLockedBundleIdentifiers:v15];

      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      (*(a2 + 16))(a2, v16, 0);
      swift_unknownObjectRelease();

      return;
    }

    v25 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    v26 = sub_185B6791C();
    (*(a2 + 16))(a2, 0, v26);
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1EA8D2278);
    v18 = sub_185B67B6C();
    v19 = sub_185B680AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_185AC1000, v18, v19, "asked for configuration when feature flag is off, which is strange", v20, 2u);
      MEMORY[0x1865FE2F0](v20, -1, -1);
    }

    v21 = objc_allocWithZone(APClientState);
    v22 = sub_185B67FCC();
    v23 = sub_185B67FCC();
    v24 = sub_185B67FCC();
    v26 = [v21 initWithLockedAppBundleIdentifiers:v22 hiddenAppBundleIdentifiers:v23 effectivelyLockedBundleIdentifiers:v24];

    (*(a2 + 16))(a2, v26, 0);
  }
}

void sub_185ACA7B8(void (*a1)(void *))
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = sub_185B6794C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = sub_185B67E1C();
  v11 = [v9 initWithEntityName_];

  v23[0] = 0;
  v12 = [v11 execute_];
  if (v12)
  {
    v13 = v12;
    v19 = v4;
    v20 = v3;
    v21 = v1;
    v14 = v23[0];
    sub_185B6823C();
    sub_185B6793C();
    if (v24)
    {
      type metadata accessor for DataAccess();
      do
      {
        if (swift_dynamicCast())
        {
          v15 = v22;
          a1(v22);
        }

        sub_185B6793C();
      }

      while (v24);
    }

    (*(v19 + 8))(v8, v20);
  }

  else
  {
    v16 = v23[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_185ACAA28(uint64_t a1, uint64_t a2)
{
  v3 = sub_185ACC97C(v2, a2);
  v5 = sub_185ACAF9C(v3, v4);

  return sub_185ACB848(v5, v3);
}

uint64_t sub_185ACAA68@<X0>(SEL *a1@<X1>, uint64_t *a2@<X8>)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v3 = sub_185B67E1C();
  v4 = [v2 initWithEntityName_];

  v44[0] = 0;
  v5 = [v4 execute_];

  v6 = v44[0];
  if (!v5)
  {
    v25 = v44[0];
    sub_185B6792C();

    result = swift_willThrow();
    goto LABEL_45;
  }

  v7 = type metadata accessor for PreferenceSetting();
  v8 = sub_185B67F6C();
  v9 = v6;

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v10 = sub_185B67B8C();
    __swift_project_value_buffer(v10, qword_1EA8D2278);

    v11 = sub_185B67B6C();
    v12 = sub_185B680AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44[0] = v14;
      *v13 = 136315138;
      v15 = MEMORY[0x1865FCFD0](v8, v7);
      v17 = sub_185ACB2C4(v15, v16, v44);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_185AC1000, v11, v12, "fetching all bundles: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1865FE2F0](v14, -1, -1);
      MEMORY[0x1865FE2F0](v13, -1, -1);
    }

    v44[0] = MEMORY[0x1E69E7CC0];
    if (v8 >> 62)
    {
      v7 = sub_185B6844C();
    }

    else
    {
      v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v19 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1865FD3E0](v19, v8);
        }

        else
        {
          if (v19 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v20 = *(v8 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if ([v20 *a1])
        {
          sub_185B683BC();
          v23 = *(v44[0] + 2);
          sub_185B683EC();
          sub_185B683FC();
          sub_185B683CC();
        }

        else
        {
        }

        ++v19;
        if (v22 == v7)
        {
          v24 = v44[0];
          v18 = MEMORY[0x1E69E7CC0];
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_21:

    if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
    {
      v27 = *(v24 + 16);
      if (!v27)
      {
        break;
      }

      goto LABEL_24;
    }

    v27 = sub_185B6844C();
    if (!v27)
    {
      break;
    }

LABEL_24:
    v44[0] = v18;
    sub_185B4E9AC(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
    }

    v7 = 0;
    v28 = v44[0];
    a1 = (v24 & 0xC000000000000001);
    v29 = v27;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (a1)
      {
        v30 = MEMORY[0x1865FD3E0](v7, v24);
      }

      else
      {
        if (v7 >= *(v24 + 16))
        {
          goto LABEL_39;
        }

        v30 = *(v24 + 8 * v7 + 32);
      }

      v31 = v30;
      v32 = [v30 bundleid];
      if (!v32)
      {
        goto LABEL_47;
      }

      v33 = v32;
      v34 = sub_185B67E4C();
      v36 = v35;

      v44[0] = v28;
      v38 = v28[2];
      v37 = v28[3];
      if (v38 >= v37 >> 1)
      {
        sub_185B4E9AC((v37 > 1), v38 + 1, 1);
        v28 = v44[0];
      }

      v28[2] = v38 + 1;
      v39 = &v28[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
      ++v7;
      if (v8 == v29)
      {

        goto LABEL_44;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v40 = sub_185ACB94C(v28);

  *a2 = v40;
LABEL_45:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185ACAF24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_185ACAA68(&selRef_locked, a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185ACAF9C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11[-v7];
  (*(v5 + 16))(&v11[-v7], v2 + *(v3 + 256), v4);
  v9 = (*(*(v3 + 160) + 48))(v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_185ACB234@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_185ACAA68(&selRef_hidden, a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185ACB2C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_185ACB6BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_185ACB7C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t sub_185ACB3E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_185B4DB70(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_185ACB4CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_185ACB58C(a1, a2);
  sub_185ACB3E0(&unk_1EF465D30);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_185ACB518(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD630, &qword_185B6EE48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_185ACB58C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_185ACB518(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_185B683AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_185B67F2C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_185ACB518(v10, 0);
        result = sub_185B6835C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_185ACB6BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_185ACB4CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_185B683AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_185ACB7C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_185ACB848(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_185AC407C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185ACB94C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1865FD050](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_185AC407C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_185ACBA10(uint64_t a1, void **a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  LOBYTE(aBlock[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);

    v10 = v9(sub_185B20720, v4);

    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v6;
    aBlock[4] = sub_185ACBA08;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185B0E6C8;
    aBlock[3] = &block_descriptor_69;
    v12 = _Block_copy(aBlock);

    [v10 getConfiguration_];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [objc_allocWithZone(APClientState) init];
    v14 = *v7;
    *v7 = v13;
  }

  swift_beginAccess();
  v15 = *v5;
  if (*v5)
  {
    v16 = *v5;
    swift_willThrow();
    v17 = v15;

    return;
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_185B67B8C();
  __swift_project_value_buffer(v18, qword_1ED6F5130);
  swift_retain_n();
  v19 = sub_185B67B6C();
  v20 = sub_185B680AC();
  if (!os_log_type_enabled(v19, v20))
  {

    goto LABEL_14;
  }

  v46 = v20;
  v47 = a2;
  v21 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v49[0] = v45;
  *v21 = 136315650;
  swift_beginAccess();
  if (!*v7)
  {
LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  v22 = *v7;

  v23 = [v22 hiddenAppBundleIdentifiers];

  sub_185B67FDC();
  v24 = sub_185B67FEC();
  v26 = v25;

  v27 = sub_185ACB2C4(v24, v26, v49);

  *(v21 + 4) = v27;
  *(v21 + 12) = 2080;
  v28 = *(v6 + 16);
  if (!v28)
  {
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;

  v30 = [v29 lockedAppBundleIdentifiers];

  sub_185B67FDC();
  v31 = sub_185B67FEC();
  v33 = v32;

  v34 = sub_185ACB2C4(v31, v33, v49);

  *(v21 + 14) = v34;
  *(v21 + 22) = 2080;
  v35 = *(v6 + 16);
  if (v35)
  {
    v36 = v35;

    v37 = [v36 effectivelyLockedAppBundleIdentifiers];

    sub_185B67FDC();
    v38 = sub_185B67FEC();
    v40 = v39;

    v41 = sub_185ACB2C4(v38, v40, v49);

    *(v21 + 24) = v41;
    _os_log_impl(&dword_185AC1000, v19, v46, "hidden: %s, locked: %s effectivelyLocked: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v45, -1, -1);
    MEMORY[0x1865FE2F0](v21, -1, -1);

    a2 = v47;
LABEL_14:
    swift_beginAccess();
    v42 = *v7;
    if (*v7)
    {
      v43 = *a2;
      *a2 = v42;
      v44 = v42;

      return;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:

  __break(1u);
}

uint64_t sub_185ACBFA8()
{

  return swift_deallocObject();
}

uint64_t sub_185ACBFE0()
{

  return swift_deallocObject();
}

uint64_t sub_185ACC018()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185ACC0B0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_185B3D2A4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

BOOL sub_185ACC1DC()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 0;
  }

  if (*(v0[2] + 16))
  {
    return 0;
  }

  if (*(v0[3] + 16))
  {
    return 0;
  }

  if (*(v0[4] + 16))
  {
    return 0;
  }

  return *(v0[5] + 16) == 0;
}

uint64_t sub_185ACC254(uint64_t a1, void **a2)
{
  sub_185ACBA10(a1, a2);
  if (v2)
  {
    v4 = *MEMORY[0x1E696A250];
    v5 = sub_185B6791C();
    v6 = [v5 domain];
    v7 = sub_185B67E4C();
    v9 = v8;

    if (v7 == sub_185B67E4C() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_185B6859C();

      if ((v12 & 1) == 0)
      {

LABEL_11:
        swift_willThrow();
      }
    }

    v13 = [v5 code];

    if (v13 != 4097)
    {
      goto LABEL_11;
    }

    sub_185ACBA10(a1, a2);
  }
}

uint64_t sub_185ACC3B8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v14[-v9];
  v17 = MEMORY[0x1E69E7CD0];
  v12 = sub_185ACAA28(v8, v11);
  (*(v6 + 16))(v10, v2 + *(*v2 + 256), v5);
  v15 = v12;
  v16 = &v17;
  (*(*(v4 + 160) + 72))(a1, v14, v5);

  (*(v6 + 8))(v10, v5);
  return v17;
}

void sub_185ACC524(uint64_t a1, uint64_t a2)
{
  v5 = sub_185B67D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 24);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_185B67D5C();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v13 = *(v2 + 16);
  if (*(v13 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) == 1)
  {
    v14 = [v13 newBackgroundContext];
    v16 = MEMORY[0x1EEE9AC00](v14, v15);
    v34[-4] = a1;
    v34[-3] = a2;
    v34[-2] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
    sub_185B6821C();

    return;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = sub_185B67B8C();
  __swift_project_value_buffer(v17, qword_1EA8D2278);
  v18 = sub_185B67B6C();
  v19 = sub_185B6809C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_185AC1000, v18, v19, "Persistent container is unavailable, cannot execute context operation", v20, 2u);
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  v21 = *MEMORY[0x1E696A250];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v23 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 220;
  v24 = MEMORY[0x1E69E6158];
  *(inited + 72) = v23;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v24;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000185B78260;
  v25 = v21;
  v26 = sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v27 = *MEMORY[0x1E696A278];
  v28 = sub_185B67E4C();
  v30 = v29;
  v37 = v24;
  *&v36 = 0xD00000000000001FLL;
  *(&v36 + 1) = 0x8000000185B78240;
  sub_185AD093C(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[1] = v26;
  sub_185ACFF1C(v35, v28, v30, isUniquelyReferenced_nonNull_native);

  v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v33 = sub_185B67D7C();

  [v32 initWithDomain:v25 code:132010 userInfo:v33];

  swift_willThrow();
}

uint64_t sub_185ACC97C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11[-v7];
  (*(v4 + 16))(&v11[-v7], v6 + *(v2 + 256), v3);
  v9 = (*(*(v2 + 160) + 40))(v3);
  (*(v4 + 8))(v8, v3);
  return v9;
}

uint64_t sub_185ACCC14(uint64_t a1, uint64_t a2)
{
  v2 = sub_185ACAA28(a1, a2);
  v4 = sub_185ACC3B8(sub_185ADF860, v3);

  return sub_185ACB848(v4, v2);
}

void sub_185ACCC64(uint64_t a1, void (*a2)(void *))
{
  sub_185ACA7B8(a2);
  if (v2)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v3 = sub_185B67B8C();
    __swift_project_value_buffer(v3, qword_1EA8D2278);
    v4 = v2;
    v5 = sub_185B67B6C();
    v6 = sub_185B6808C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_185AC1000, v5, v6, "error enumerating DataAccess records: %@", v7, 0xCu);
      sub_185ACF5CC(v8, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v8, -1, -1);
      MEMORY[0x1865FE2F0](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_185ACCE00(uint64_t a1, uint64_t a2)
{
  v5 = sub_185B67D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 24);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_185B67D5C();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v13 = *(v2 + 16);
  if (*(v13 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) == 1)
  {
    v14 = [v13 newBackgroundContext];
    v16 = MEMORY[0x1EEE9AC00](v14, v15);
    *(&v34 - 4) = a1;
    *(&v34 - 3) = a2;
    *(&v34 - 2) = v16;
    sub_185B6821C();

    return;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = sub_185B67B8C();
  __swift_project_value_buffer(v17, qword_1EA8D2278);
  v18 = sub_185B67B6C();
  v19 = sub_185B6809C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_185AC1000, v18, v19, "Persistent container is unavailable, cannot execute context operation", v20, 2u);
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  v21 = *MEMORY[0x1E696A250];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v23 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 220;
  v24 = MEMORY[0x1E69E6158];
  *(inited + 72) = v23;
  *(inited + 80) = 0x636E75465041;
  *(inited + 120) = v24;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0xD000000000000016;
  *(inited + 104) = 0x8000000185B78260;
  v25 = v21;
  v26 = sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  v27 = *MEMORY[0x1E696A278];
  v28 = sub_185B67E4C();
  v30 = v29;
  v37 = v24;
  *&v36 = 0xD00000000000001FLL;
  *(&v36 + 1) = 0x8000000185B78240;
  sub_185AD093C(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v26;
  sub_185ACFF1C(v35, v28, v30, isUniquelyReferenced_nonNull_native);

  v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v33 = sub_185B67D7C();

  [v32 initWithDomain:v25 code:132010 userInfo:v33];

  swift_willThrow();
}

uint64_t sub_185ACD278@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v2 hiddenAppBundleIdentifiers];
  v7 = sub_185B67FDC();

  v8 = [a1 hiddenAppBundleIdentifiers];
  v9 = sub_185B67FDC();

  if (*(v9 + 16) <= *(v7 + 16) >> 3)
  {
    sub_185ACC0B0(v9);

    v49 = v7;
  }

  else
  {
    v49 = sub_185B3FA60(v9, v7);
  }

  v10 = [a1 hiddenAppBundleIdentifiers];
  v11 = sub_185B67FDC();

  v12 = [v3 hiddenAppBundleIdentifiers];
  v13 = sub_185B67FDC();

  if (*(v13 + 16) <= *(v11 + 16) >> 3)
  {
    sub_185ACC0B0(v13);

    v48 = v11;
  }

  else
  {
    v48 = sub_185B3FA60(v13, v11);
  }

  v14 = [v3 lockedAppBundleIdentifiers];
  v15 = sub_185B67FDC();

  v16 = [a1 lockedAppBundleIdentifiers];
  v17 = sub_185B67FDC();

  if (*(v17 + 16) <= *(v15 + 16) >> 3)
  {
    sub_185ACC0B0(v17);

    v47 = v15;
  }

  else
  {
    v47 = sub_185B3FA60(v17, v15);
  }

  v18 = [a1 lockedAppBundleIdentifiers];
  v19 = sub_185B67FDC();

  v20 = [v3 lockedAppBundleIdentifiers];
  v21 = sub_185B67FDC();

  if (*(v21 + 16) <= *(v19 + 16) >> 3)
  {
    sub_185ACC0B0(v21);

    v46 = v19;
  }

  else
  {
    v46 = sub_185B3FA60(v21, v19);
  }

  v22 = [v3 effectivelyLockedAppBundleIdentifiers];
  v23 = sub_185B67FDC();

  v24 = [a1 effectivelyLockedAppBundleIdentifiers];
  v25 = sub_185B67FDC();

  if (*(v25 + 16) <= *(v23 + 16) >> 3)
  {
    sub_185ACC0B0(v25);

    v44 = v23;
  }

  else
  {
    v44 = sub_185B3FA60(v25, v23);
  }

  v26 = [a1 effectivelyLockedAppBundleIdentifiers];
  v27 = sub_185B67FDC();

  v28 = [v3 effectivelyLockedAppBundleIdentifiers];
  v29 = sub_185B67FDC();

  if (*(v29 + 16) <= *(v27 + 16) >> 3)
  {
    sub_185ACC0B0(v29);
  }

  else
  {
    v27 = sub_185B3FA60(v29, v27);
  }

  v30 = [a1 lockedAppBundleIdentifiers];
  v31 = sub_185B67FDC();

  v32 = *(v31 + 16);

  v33 = v32 != 0;
  v34 = [v3 lockedAppBundleIdentifiers];
  v35 = sub_185B67FDC();

  v36 = *(v35 + 16);

  LOBYTE(v35) = v36 != 0;
  v37 = [a1 hiddenAppBundleIdentifiers];
  v38 = sub_185B67FDC();

  v39 = *(v38 + 16);

  LOBYTE(v38) = v39 != 0;
  v40 = [v3 hiddenAppBundleIdentifiers];
  v41 = sub_185B67FDC();

  v42 = *(v41 + 16);

  *a2 = v49;
  *(a2 + 8) = v48;
  *(a2 + 16) = v47;
  *(a2 + 24) = v46;
  *(a2 + 32) = v45;
  *(a2 + 40) = v27;
  *(a2 + 48) = v33;
  *(a2 + 49) = v35;
  *(a2 + 50) = v38;
  *(a2 + 51) = v42 != 0;
  return result;
}

void sub_185ACD838(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  v9 = a2;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a1;
  v11 = a1;
}

uint64_t sub_185ACD8CC()
{
  v0 = sub_185ACD928(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD010, &unk_185B6CB10);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1ED6F4840 = result;
  return result;
}

unint64_t sub_185ACD928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6F8, &qword_185B6EF30);
    v3 = sub_185B6847C();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_185AF6C74(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_185ACDA1C()
{
  result = qword_1ED6F4848;
  if (!qword_1ED6F4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F4848);
  }

  return result;
}

id sub_185ACDA70(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_185B6657C;
  v5[3] = &block_descriptor_26;
  v2 = _Block_copy(v5);

  v3 = APGetSyncReadProxy(v2);
  _Block_release(v2);
  return v3;
}

id APGetSyncReadProxy(void *a1)
{
  v1 = a1;
  v2 = APGetReadConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetReadConnection()
{
  v0 = APGetReadServiceInterface();
  v1 = APGetConnectionWithNameAndActiveCacheWithLock(@"com.apple.appprotectiond.read", v0, &APGetReadConnection_cachedConnection, &APGetReadConnection_lock);

  return v1;
}

id APGetReadServiceInterface()
{
  if (APGetReadServiceInterface_onceToken != -1)
  {
    APGetReadServiceInterface_cold_1();
  }

  v1 = APGetReadServiceInterface_interface;

  return v1;
}

uint64_t __APGetReadServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF4742A8];
  v1 = APGetReadServiceInterface_interface;
  APGetReadServiceInterface_interface = v0;

  [APGetReadServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getConfiguration_ argumentIndex:0 ofReply:1];
  [APGetReadServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getConfiguration_ argumentIndex:1 ofReply:1];
  [APGetReadServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getPerAppManagedProtectability_ argumentIndex:0 ofReply:1];
  v2 = APGetReadServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_getPerAppManagedProtectability_ argumentIndex:1 ofReply:1];
}

id APGetConnectionWithNameAndActiveCacheWithLock(void *a1, void *a2, id *a3, os_unfair_lock_s *a4)
{
  v7 = a1;
  v8 = a2;
  os_unfair_lock_lock(a4);
  if (*a3)
  {
    v9 = *a3;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v7 options:0];
    [v10 setRemoteObjectInterface:v8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke;
    v20[3] = &unk_1E6EE8948;
    v11 = v7;
    v21 = v11;
    [v10 setInterruptionHandler:v20];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_152;
    v16 = &unk_1E6EE8970;
    v17 = v11;
    v18 = a4;
    v19 = a3;
    [v10 setInvalidationHandler:&v13];
    objc_storeStrong(a3, v10);
    v9 = v10;
    [v9 resume];
  }

  os_unfair_lock_unlock(a4);

  return v9;
}

uint64_t sub_185ACDEEC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_185ACDF4C(v7);

  return v9 & 1;
}

uint64_t sub_185ACDF4C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v7 = *(v6 + 24);
  v8 = v7(v5, v6);
  if (qword_1EA8CC048 != -1)
  {
    v28 = v8;
    swift_once();
    v8 = v28;
  }

  if ((byte_1EA8D22E0 & 1) == 0 && (v8 <= 2u || v8 - 4 >= 4) && (sub_185ACE550() & 1) == 0)
  {
    return 0;
  }

  [a1 _setQueue_];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  [a1 setExportedInterface_];

  v29 = v7;
  v12 = *((*v4 & *v2) + 0x60);
  (*(v6 + 40))(a1, v5, v6);
  v13 = (*(v6 + 56))(a1, v5, v6);
  v14 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_unknownObjectRetain();
  v15 = a1;
  [v15 setExportedObject_];
  swift_unknownObjectRelease();
  v36 = v13;
  v37 = v15;
  v16 = *((*v4 & *v2) + 0x80);
  swift_beginAccess();
  type metadata accessor for ConnectionClientPair();
  swift_unknownObjectRetain();
  v17 = v15;
  swift_getWitnessTable();
  sub_185B6802C();
  sub_185B6800C();
  swift_endAccess();
  swift_unknownObjectRelease();

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v6;
  v19[4] = v18;
  v19[5] = v13;
  v19[6] = v17;
  v19[7] = v13;
  v34 = sub_185ADF580;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_185ACA0E8;
  v33 = &block_descriptor_22;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain_n();
  v21 = v17;

  [v21 setInvalidationHandler_];
  _Block_release(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCCB0, &qword_185B6BEA8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_185B6BB70;
  aBlock = 0;
  v31 = 0xE000000000000000;
  sub_185B6836C();

  aBlock = 0xD000000000000018;
  v31 = 0x8000000185B74760;
  v23 = v29(v5, v6);
  v24 = sub_185ACE8FC(v23);
  MEMORY[0x1865FCF60](v24);

  v25 = aBlock;
  v26 = v31;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 32) = v25;
  *(v22 + 40) = v26;
  sub_185B6864C();

  [v21 resume];

  swift_unknownObjectRelease_n();
  return 1;
}

uint64_t sub_185ACE4C0()
{
  MEMORY[0x1865FE380](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185ACE4F8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_185ACE550()
{
  v1 = sub_185B67E1C();
  v2 = [v0 valueForEntitlement_];

  if (v2)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_185ACF5CC(v8, &qword_1EA8CC830, &unk_185B6BEB0);
  }

  return 0;
}

id sub_185ACE65C()
{
  if (qword_1EA8CBEC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2328;

  return v0;
}

id sub_185ACE6B8()
{
  v1 = *v0;
  v2 = type metadata accessor for APReadClient();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13AppProtection12APReadClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF469530;
  swift_unknownObjectWeakAssign();
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_185ACE7C4(uint64_t a1, uint64_t a2)
{
  sub_185B6866C();
  sub_185ACE80C(v5, *v2, v2[1], *(a2 + 16), *(a2 + 24));
  return sub_185B686AC();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_185ACE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 + 8) + 8);
  if (sub_185B67DEC())
  {
    sub_185ADF590(0, &qword_1EA8CB620, 0x1E69E58C0);
    v7 = sub_185B6828C();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_185ACE8FC(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        ServiceName = APGetViewSubjectMonitorServiceName();
      }

      else
      {
        ServiceName = APGetViewSubjectInfoServiceName();
      }
    }

    else if (a1 == 4)
    {
      ServiceName = APGetExtensionMonitorServiceName();
    }

    else
    {
      ServiceName = APGetExtensionInfoServiceName();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      ServiceName = APGetGuardServiceName();
    }

    else
    {
      ServiceName = APGetMaintenanceServiceName();
    }
  }

  else if (a1)
  {
    ServiceName = APGetWriteServiceName();
  }

  else
  {
    ServiceName = APGetReadServiceName();
  }

  v2 = ServiceName;
  v3 = sub_185B67E4C();

  return v3;
}

void sub_185ACE9DC(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_185ACEA8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_185ACEAE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = sub_185ACEC10(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = type metadata accessor for APDeviceKeyBagManager();
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      ObjectType = swift_getObjectType();
      v13[3] = v6;
      v13[4] = &off_1EF4675F8;
      v13[0] = a2;
      v11 = *(v9 + 8);
      swift_unknownObjectRetain();

      v11(v13, ObjectType, v9);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

uint64_t sub_185ACEC50(uint64_t a1, void (*a2)(uint64_t, void *), void (*a3)(void *), uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = a1 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  a2(a1 + 32, v16);
  while (1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = v16[1];
    a3(v16);
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = a4(0, *(v9 + 16) + 1, 1, v9);
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        v9 = a4(v13 > 1, v14 + 1, 1, v9);
      }

      *(v9 + 16) = v14 + 1;
      v10 = v9 + 16 * v14;
      *(v10 + 32) = Strong;
      *(v10 + 40) = v12;
    }

    v8 += 16;
    if (!--v4)
    {
      break;
    }

    a2(v8, v16);
  }

  return v9;
}

uint64_t sub_185ACEE6C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_185B67C9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_185B67CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[23];
  v16 = (*(v2[15] + 8))(v2[11]);
  v17 = MEMORY[0x1E69E7CC0];
  v28 = v9;
  if ((v16 & 1) == 0)
  {
    v27 = v4;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v26 = v10;
    v18 = sub_185B67B8C();
    __swift_project_value_buffer(v18, qword_1EA8D2278);
    v19 = sub_185B67B6C();
    v20 = sub_185B680AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_185AC1000, v19, v20, "Device has no passcode!", v21, 2u);
      MEMORY[0x1865FE2F0](v21, -1, -1);
    }

    v25[1] = v1[3];
    v34 = sub_185ADF978;
    v35 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_185ACA0E8;
    v33 = &block_descriptor_22_4;
    v22 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v29 = v17;
    sub_185B26D00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    v17 = MEMORY[0x1E69E7CC0];
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v14, v8, v22);
    _Block_release(v22);
    v4 = v27;
    (*(v27 + 8))(v8, v3);
    v10 = v26;
    (*(v26 + 8))(v14, v28);
  }

  v27 = v1[3];
  v34 = sub_185B66348;
  v35 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_185ACA0E8;
  v33 = &block_descriptor_25;
  v23 = _Block_copy(&aBlock);

  sub_185B67CBC();
  v29 = v17;
  sub_185B26D00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v14, v8, v23);
  _Block_release(v23);
  (*(v4 + 8))(v8, v3);
  (*(v10 + 8))(v14, v28);
}

uint64_t sub_185ACF4FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_mutableState);

  os_unfair_lock_lock(v2 + 6);
  sub_185ACF570();
  os_unfair_lock_unlock(v2 + 6);
}

void sub_185ACF570()
{
  v1 = *(v0 + 16);
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  sub_185AC64DC(v2, v1);
}

uint64_t sub_185ACF5CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_185ACF62C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_185AC6710(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_185B51A9C();
      v11 = v13;
    }

    sub_185AC66F8((*(v11 + 56) + 40 * v8), a2);
    sub_185ACF6D4(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_185ACF6D4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_185B682EC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_185B6827C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

id sub_185ACF880(void *a1, void *a2)
{
  if ([a1 developerType] == 1)
  {
    if (qword_1EA8CB7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_1EA8D22B0;
    result = [a1 bundleIdentifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = sub_185B67E4C();
    v9 = v8;

    v10 = sub_185AC3A7C(v7, v9, v4);

    if (v10)
    {
      v11 = 6;
      v12 = 0;
      v13 = 0;
      v14 = 107;
      return sub_185AD0148(v11, v12, v13, v14, 0xD000000000000018, 0x8000000185B744F0);
    }

    v15 = [a1 infoDictionary];
    v16 = sub_185B67E1C();
    sub_185AD0C64();
    v17 = [v15 objectForKey:v16 ofClass:swift_getObjCClassFromMetadata()];

    if (v17)
    {
      sub_185B682AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      if (swift_dynamicCast())
      {
        if ([v19 BOOLValue])
        {
          v18 = sub_185AD0148(6uLL, 0, 0, 113, 0xD000000000000018, 0x8000000185B744F0);

          return v18;
        }
      }
    }

    else
    {
      sub_185ACF5CC(v22, &qword_1EA8CC830, &unk_185B6BEB0);
    }
  }

  if ([a2 applicationRequiresPreflight_])
  {
    v12 = 0xD000000000000034;
    v13 = 0x8000000185B744B0;
    v11 = 14;
    v14 = 118;
    return sub_185AD0148(v11, v12, v13, v14, 0xD000000000000018, 0x8000000185B744F0);
  }

  return 0;
}

id APGetPrivacyDisclosureInterface()
{
  if (APGetPrivacyDisclosureInterface_onceToken != -1)
  {
    APGetPrivacyDisclosureInterface_cold_1();
  }

  v1 = APGetPrivacyDisclosureInterface_adapter;

  return v1;
}

NSObject *sub_185ACFB68(NSObject *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 bundleIdentifier];
    v7 = sub_185B67E4C();
    v9 = v8;

    v10 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    v11 = sub_185AD006C(v7, v9, 1);
    if (v1)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v12 = sub_185B67B8C();
      __swift_project_value_buffer(v12, qword_1ED6F5130);
      v13 = v5;
      v14 = v1;
      a1 = sub_185B67B6C();
      v15 = sub_185B680AC();

      if (os_log_type_enabled(a1, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412546;
        *(v16 + 4) = v13;
        *v17 = v13;
        *(v16 + 12) = 2112;
        v18 = v13;
        v19 = v1;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v20;
        v17[1] = v20;
        _os_log_impl(&dword_185AC1000, a1, v15, "Couldn't find app record for %@: %@", v16, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v17, -1, -1);
        MEMORY[0x1865FE2F0](v16, -1, -1);
      }

      sub_185AD0148(5uLL, 0, 0, 251, 0xD000000000000029, 0x8000000185B78050);
      swift_willThrow();
    }

    else
    {
      a1 = v11;
    }
  }

  else
  {
    sub_185AD0148(1uLL, 0, 0, 244, 0xD000000000000029, 0x8000000185B78050);
    swift_willThrow();
  }

  return a1;
}

_OWORD *sub_185ACFEB0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_185AD093C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_185ACFF1C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_185AC9F40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_185B50DB8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_185B4F0B4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_185AC9F40(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_185B685DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_185AD093C(a1, v23);
  }

  else
  {
    sub_185ACFEB0(v11, a2, a3, a1, v22);
  }
}

id sub_185AD006C(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_185B67E1C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

id sub_185AD0148(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = @"APRErrorDomain";
  v13 = a3;
  if (!a3)
  {
    v14 = _APRErrorCodeDescription(a1);
    if (v14)
    {
      v15 = v14;
      a2 = sub_185B67E4C();
      v13 = v16;
    }

    else
    {
      a2 = 0;
      v13 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v18 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a4;
  *(inited + 72) = v18;
  *(inited + 80) = 0x636E75465041;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = a5;
  *(inited + 104) = a6;

  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  if (v13)
  {
    v20 = *MEMORY[0x1E696A278];
    v21 = sub_185B67E4C();
    v23 = v22;
    v31 = v19;
    *&v30 = a2;
    *(&v30 + 1) = v13;
    sub_185AD093C(&v30, v29);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_185ACFF1C(v29, v21, v23, isUniquelyReferenced_nonNull_native);
  }

  v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v26 = sub_185B67D7C();

  v27 = [v25 initWithDomain:v12 code:a1 userInfo:v26];

  return v27;
}

unint64_t sub_185AD038C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD620, &unk_185B6EE30);
    v3 = sub_185B6847C();
    v4 = a1 + 32;

    while (1)
    {
      sub_185AD04BC(v4, &v13, &qword_1EA8CD230, &unk_185B6C980);
      v5 = v13;
      v6 = v14;
      result = sub_185AC9F40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_185AD093C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_185AD04BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_185AD0524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD380, &qword_185B6E0F0);
    v3 = sub_185B6834C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_185B6866C();

      sub_185B67EEC();
      result = sub_185B686AC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_185B6859C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_185AD068C()
{
  v0 = sub_185AD0524(&unk_1EF465C70);
  result = swift_arrayDestroy();
  qword_1EA8D22B0 = v0;
  return result;
}

unint64_t sub_185AD06D8()
{
  v0 = xpc_copy_entitlement_for_self();
  if (!v0 || !xpc_BOOL_get_value(v0))
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v1 = sub_185B67B8C();
    __swift_project_value_buffer(v1, qword_1ED6F5130);
    v2 = sub_185B67B6C();
    v3 = sub_185B6808C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_185AC1000, v2, v3, "Client is missing com.apple.private.accounts.allaccounts entitlement", v4, 2u);
      MEMORY[0x1865FE2F0](v4, -1, -1);
    }
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v6 = result;
    v7 = [result aa_primaryAppleAccount];

    if (v7)
    {
      v8 = v7;
      v9 = [v8 aa_ageCategory];

      swift_unknownObjectRelease();
      if (v9 < 8)
      {
        return 0x101000000000202uLL >> (8 * v9);
      }
    }

    else
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v11 = sub_185B67B8C();
      __swift_project_value_buffer(v11, qword_1ED6F5130);
      v12 = sub_185B67B6C();
      v13 = sub_185B680AC();
      if (os_log_type_enabled(v12, v13))
      {
        v10 = 2;
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_185AC1000, v12, v13, "primary account is nil", v14, 2u);
        MEMORY[0x1865FE2F0](v14, -1, -1);

        swift_unknownObjectRelease();
        return v10;
      }

      swift_unknownObjectRelease();
    }

    return 2;
  }

  __break(1u);
  return result;
}

_OWORD *sub_185AD093C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void __APGetPrivacyDisclosureInterface_block_invoke(double a1)
{
  gotLoadHelper_x21__OBJC_CLASS___PDCPreflightManager(a1);
  v2 = *(v1 + 2656);
  if (objc_opt_class())
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appprotection.disclosure", v3);

    v7 = [objc_alloc(*(v1 + 2656)) initWithTargetQueue:v4];
  }

  else
  {
    v7 = 0;
  }

  v5 = [[APPrivacyDisclosureAdapter alloc] initWithPreflightManger:v7];
  v6 = APGetPrivacyDisclosureInterface_adapter;
  APGetPrivacyDisclosureInterface_adapter = v5;
}

__CFString *_APRErrorCodeDescription(unint64_t a1)
{
  if (a1 >= 0x13)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AppProtection error code %lld", a1];
  }

  else
  {
    v2 = off_1E6EE8AA8[a1];
  }

  return v2;
}

id sub_185AD0A7C(void *a1, void *a2)
{
  v4 = [a1 entitlements];
  v5 = sub_185B67E1C();
  sub_185AD0C64();
  v6 = [v4 objectForKey:v5 ofClass:swift_getObjCClassFromMetadata()];

  if (v6)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_185ACF5CC(v16, &qword_1EA8CC830, &unk_185B6BEB0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = [v13 BOOLValue];

LABEL_9:
  if ([a1 developerType] == 1 && (v7 & 1) == 0)
  {
    v8 = 7;
    v9 = 0;
    v10 = 0;
    v11 = 94;
    return sub_185AD0148(v8, v9, v10, v11, 0xD000000000000017, 0x8000000185B74590);
  }

  if ([a2 applicationRequiresPreflight_])
  {
    v9 = 0xD000000000000034;
    v10 = 0x8000000185B74550;
    v8 = 14;
    v11 = 98;
    return sub_185AD0148(v8, v9, v10, v11, 0xD000000000000017, 0x8000000185B74590);
  }

  return 0;
}

unint64_t sub_185AD0C64()
{
  result = qword_1EA8CC020;
  if (!qword_1EA8CC020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CC020);
  }

  return result;
}

id sub_185AD0CB0()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isLockingAppsAllowed];

    if (v2)
    {
      if (qword_1EA8CB968 != -1)
      {
        v3 = swift_once();
      }

      v5 = *(qword_1EA8D22C8 + 16);
      MEMORY[0x1EEE9AC00](v3, v4);
      os_unfair_lock_lock((v5 + 40));
      sub_185AD0DC4((v5 + 16), &v6);
      os_unfair_lock_unlock((v5 + 40));
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_185AD0DC4(void **a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_185AD0DE8(a1, &selRef_isLockable, a2);
}

void sub_185AD0DE8(void **a1@<X0>, SEL *a2@<X3>, unsigned __int8 *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = sub_185B67E1C();
    v7 = [v4 protectabilityForBundleIdentifier_];

    if (v7)
    {
      v8 = [v7 *a2];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  *a3 = v8;
}

uint64_t sub_185AD0E98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_185B67E4C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

BOOL sub_185AD0EE0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_185AD0F60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_185AD0FB0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD0FF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD104C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD1094()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD10CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD1128()
{
  MEMORY[0x1865FE380](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD1160()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_185AD11D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_185AD128C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_185AD134C()
{

  return swift_deallocObject();
}

uint64_t sub_185AD1394()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AD13CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD1404()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD143C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD147C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD14BC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_185AD1518()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD1564()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD159C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_185AD15DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AD1614()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD164C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_185AD1698()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_185AD1720()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD1758()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD179C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AD17D4()
{
  MEMORY[0x1865FE380](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD180C()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_185AD18EC()
{
  v1 = sub_185B67B5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_185AD19A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD1A88()
{

  return swift_deallocObject();
}

uint64_t sub_185AD1AD0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AD1B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD1B40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD1B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD1BB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD1C04()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_185AD1CB4()
{

  return swift_deallocObject();
}

uint64_t sub_185AD1CEC()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_185AD1DB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_185AD1DE8()
{

  return swift_deallocObject();
}

uint64_t sub_185AD1E20()
{

  return swift_deallocObject();
}

uint64_t sub_185AD1E78()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_185AD1EC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD1EF8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD1F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_185AD2008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_185B67AFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_185AD20D0()
{

  return swift_deallocObject();
}

uint64_t sub_185AD2108()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_185AD2148()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD2180()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_185AD21D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_185AD2238()
{

  return swift_deallocObject();
}

uint64_t sub_185AD2270()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD22A8()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_185AD22E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD2318()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_185AD23A0()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_185AD243C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_185AD247C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AD24B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD24EC()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_185AD259C()
{
  MEMORY[0x1865FE380](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD25D4()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_185AD26B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD26EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD2734()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD276C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_185B67A8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_185AD2818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_185B67A8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_185AD28BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD28F4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AD292C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD2964()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD29A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD29DC()
{
  v1 = *(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_185AD2A30()
{
  v1 = *(v0 + 24);

  sub_185B06F3C(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_185AD2AA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD2B00()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v2 = (type metadata accessor for SelfCachingAuthProvider() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  (*(*(v8 - 8) + 8))(v5 + v2[15]);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_185AD2C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_185B67AFC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_185AD2CEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_185B67AFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_185AD2D90()
{
  MEMORY[0x1865FE380](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD2DC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_185AD2E08()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_185AD2E40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD2E78()
{

  return swift_deallocObject();
}

uint64_t sub_185AD2EB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_185AD2EE8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD2F20()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD2F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_185B67AFC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_185AD303C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_185B67AFC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_185AD30E4()
{
  MEMORY[0x1865FE380](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_185AD311C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_185AD315C()
{

  return swift_deallocObject();
}

uint64_t sub_185AD3194()
{

  return swift_deallocObject();
}

uint64_t sub_185AD31CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD3278()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185AD32B0()
{

  return swift_deallocObject();
}

uint64_t sub_185AD32E8()
{

  return swift_deallocObject();
}

__n128 sub_185AD3384(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_185AD3394()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

id sub_185AD3460@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 raw_accessor_type];
  *a2 = result;
  return result;
}

id sub_185AD34C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hidden];
  *a2 = result;
  return result;
}

id sub_185AD3508@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 locked];
  *a2 = result;
  return result;
}

id sub_185AD3550@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 provisional];
  *a2 = result;
  return result;
}

void APDoFirstRunWork(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = sem_open([v3 UTF8String], 2560, 256, 0);
  if (v5 == -1)
  {
    v8 = *__error();
    if (v8 != 17)
    {
      v9 = APDefaultFrameworkLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        APDoFirstRunWork_cold_1(v8, v9);
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = APDefaultFrameworkLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_185AC1000, v7, OS_LOG_TYPE_DEFAULT, "Doing first boot work for key %@", buf, 0xCu);
    }

    v4[2](v4);
    sem_close(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

id APGetWriteServiceInterface()
{
  if (APGetWriteServiceInterface_onceToken != -1)
  {
    APGetWriteServiceInterface_cold_1();
  }

  v1 = APGetWriteServiceInterface_interface;

  return v1;
}

uint64_t __APGetWriteServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF474200];
  v1 = APGetWriteServiceInterface_interface;
  APGetWriteServiceInterface_interface = v0;

  [APGetWriteServiceInterface_interface setClass:objc_opt_class() forSelector:sel_setBundleIdentifier_hidden_completion_ argumentIndex:0 ofReply:0];
  [APGetWriteServiceInterface_interface setClass:objc_opt_class() forSelector:sel_setBundleIdentifier_hidden_completion_ argumentIndex:0 ofReply:1];
  [APGetWriteServiceInterface_interface setClass:objc_opt_class() forSelector:sel_setBundleIdentifier_locked_completion_ argumentIndex:0 ofReply:0];
  v2 = APGetWriteServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_setBundleIdentifier_locked_completion_ argumentIndex:0 ofReply:1];
}

id APGetGuardServiceInterface()
{
  if (APGetGuardServiceInterface_onceToken != -1)
  {
    APGetGuardServiceInterface_cold_1();
  }

  v1 = APGetGuardServiceInterface_interface;

  return v1;
}

uint64_t __APGetGuardServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF474140];
  v1 = APGetGuardServiceInterface_interface;
  APGetGuardServiceInterface_interface = v0;

  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_initiateAuthenticationWithShieldingForBundle_completion_ argumentIndex:1 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_initiateAuthenticationWithShieldingForBundle_completion_ argumentIndex:0 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForBundle_completion_ argumentIndex:1 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForBundle_completion_ argumentIndex:0 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_initiateAuthenticationWithShieldingForBundle_onBehalfOfProcessWithAuditToken_accessGrantReason_completion_ argumentIndex:1 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_initiateAuthenticationWithShieldingForBundle_onBehalfOfProcessWithAuditToken_accessGrantReason_completion_ argumentIndex:0 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_beginTransactionForAccessOfBundle_onBehalfOfProcessWithAuditToken_accessGrantReason_transactionUUID_completion_ argumentIndex:0 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_beginTransactionForAccessOfBundle_onBehalfOfProcessWithAuditToken_accessGrantReason_transactionUUID_completion_ argumentIndex:3 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_initiateAuthenticationWithShieldingForBundle_onBehalfOfProcessWithAuditToken_accessGrantReason_completion_ argumentIndex:0 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_endTransactionWithUUID_completion_ argumentIndex:0 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_endTransactionWithUUID_completion_ argumentIndex:0 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getIsChallengeCurrentlyRequiredForBundle_completion_ argumentIndex:0 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getIsChallengeCurrentlyRequiredForBundle_completion_ argumentIndex:0 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getIsChallengeCurrentlyRequiredForBundle_completion_ argumentIndex:1 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateUnconditionallyWithReason_completion_ argumentIndex:0 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateUnconditionallyWithReason_completion_ argumentIndex:1 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForShieldUnlockOfBundle_completion_ argumentIndex:0 ofReply:1];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForBundle_interfacePresentationTarget_completion_ argumentIndex:0 ofReply:0];
  [APGetGuardServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForBundle_interfacePresentationTarget_completion_ argumentIndex:0 ofReply:1];
  v2 = APGetGuardServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_abortOngoingAuthWithCompletion_ argumentIndex:0 ofReply:1];
}

id APGetMaintenanceServiceInterface()
{
  if (APGetMaintenanceServiceInterface_onceToken != -1)
  {
    APGetMaintenanceServiceInterface_cold_1();
  }

  v1 = APGetMaintenanceServiceInterface_interface;

  return v1;
}

uint64_t __APGetMaintenanceServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF473D18];
  v1 = APGetMaintenanceServiceInterface_interface;
  APGetMaintenanceServiceInterface_interface = v0;

  [APGetMaintenanceServiceInterface_interface setClass:objc_opt_class() forSelector:sel_clearAccessTableWithCompletion_ argumentIndex:0 ofReply:1];
  [APGetMaintenanceServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getStateDumpWithCompletion_ argumentIndex:0 ofReply:1];
  v2 = APGetMaintenanceServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_getStateDumpWithCompletion_ argumentIndex:1 ofReply:1];
}

id APGetClientExtensionMonitorInterface()
{
  if (APGetClientExtensionMonitorInterface_onceToken != -1)
  {
    APGetClientExtensionMonitorInterface_cold_1();
  }

  v1 = APGetClientExtensionMonitorInterface_interface;

  return v1;
}

uint64_t __APGetClientExtensionMonitorInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF474650];
  v1 = APGetClientExtensionMonitorInterface_interface;
  APGetClientExtensionMonitorInterface_interface = v0;

  v2 = APGetClientExtensionMonitorInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_extensionMonitorWithUUID_lockedStatusUpdate_ argumentIndex:0 ofReply:0];
}

id APGetExtensionMonitorServiceInterface()
{
  if (APGetExtensionMonitorServiceInterface_onceToken != -1)
  {
    APGetExtensionMonitorServiceInterface_cold_1();
  }

  v1 = APGetExtensionMonitorServiceInterface_interface;

  return v1;
}

uint64_t __APGetExtensionMonitorServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF473C68];
  v1 = APGetExtensionMonitorServiceInterface_interface;
  APGetExtensionMonitorServiceInterface_interface = v0;

  [APGetExtensionMonitorServiceInterface_interface setClass:objc_opt_class() forSelector:sel_beginMonitoringForExtensionUUID_monitorUUID_ argumentIndex:0 ofReply:0];
  [APGetExtensionMonitorServiceInterface_interface setClass:objc_opt_class() forSelector:sel_beginMonitoringForExtensionUUID_monitorUUID_ argumentIndex:1 ofReply:0];
  v2 = APGetExtensionMonitorServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_endMonitoringForMonitorUUID_ argumentIndex:0 ofReply:0];
}

id APGetExtensionInfoServiceInterface()
{
  if (APGetExtensionInfoServiceInterface_onceToken != -1)
  {
    APGetExtensionInfoServiceInterface_cold_1();
  }

  v1 = APGetExtensionInfoServiceInterface_interface;

  return v1;
}

uint64_t __APGetExtensionInfoServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF473BA8];
  v1 = APGetExtensionInfoServiceInterface_interface;
  APGetExtensionInfoServiceInterface_interface = v0;

  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getExtensionIsLockedForUUID_completion_ argumentIndex:0 ofReply:0];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getExtensionIsLockedForUUID_completion_ argumentIndex:0 ofReply:1];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getExtensionIsLockedForUUID_completion_ argumentIndex:1 ofReply:1];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getExtensionIsFirstPartyForUUID_completion_ argumentIndex:0 ofReply:0];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getExtensionIsFirstPartyForUUID_completion_ argumentIndex:0 ofReply:1];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getExtensionIsFirstPartyForUUID_completion_ argumentIndex:1 ofReply:1];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForExtensionWithUUID_reasonDescription_completion_ argumentIndex:0 ofReply:0];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForExtensionWithUUID_reasonDescription_completion_ argumentIndex:1 ofReply:0];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForExtensionWithUUID_reasonDescription_completion_ argumentIndex:1 ofReply:1];
  [APGetExtensionInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_extensionRequiresAuthentication_completion_ argumentIndex:0 ofReply:0];
  v2 = APGetExtensionInfoServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_extensionRequiresAuthentication_completion_ argumentIndex:1 ofReply:1];
}

id APGetClientViewSubjectMonitorInterface()
{
  if (APGetClientViewSubjectMonitorInterface_onceToken != -1)
  {
    APGetClientViewSubjectMonitorInterface_cold_1();
  }

  v1 = APGetClientViewSubjectMonitorInterface_interface;

  return v1;
}

uint64_t __APGetClientViewSubjectMonitorInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF473628];
  v1 = APGetClientViewSubjectMonitorInterface_interface;
  APGetClientViewSubjectMonitorInterface_interface = v0;

  v2 = APGetClientViewSubjectMonitorInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_viewSubjectMonitorWithUUID_lockedStatusUpdate_ argumentIndex:0 ofReply:0];
}

id APGetViewSubjectMonitorServiceInterface()
{
  if (APGetViewSubjectMonitorServiceInterface_onceToken != -1)
  {
    APGetViewSubjectMonitorServiceInterface_cold_1();
  }

  v1 = APGetViewSubjectMonitorServiceInterface_interface;

  return v1;
}

uint64_t __APGetViewSubjectMonitorServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF475808];
  v1 = APGetViewSubjectMonitorServiceInterface_interface;
  APGetViewSubjectMonitorServiceInterface_interface = v0;

  [APGetViewSubjectMonitorServiceInterface_interface setClass:objc_opt_class() forSelector:sel_beginMonitoringForViewSubjectBundleID_monitorUUID_ argumentIndex:0 ofReply:0];
  [APGetViewSubjectMonitorServiceInterface_interface setClass:objc_opt_class() forSelector:sel_beginMonitoringForViewSubjectBundleID_monitorUUID_ argumentIndex:1 ofReply:0];
  v2 = APGetViewSubjectMonitorServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_endMonitoringForMonitorUUID_ argumentIndex:0 ofReply:0];
}

id APGetViewSubjectInfoServiceInterface()
{
  if (APGetViewSubjectInfoServiceInterface_onceToken != -1)
  {
    APGetViewSubjectInfoServiceInterface_cold_1();
  }

  v1 = APGetViewSubjectInfoServiceInterface_interface;

  return v1;
}

uint64_t __APGetViewSubjectInfoServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF474580];
  v1 = APGetViewSubjectInfoServiceInterface_interface;
  APGetViewSubjectInfoServiceInterface_interface = v0;

  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getViewSubjectIsLockedForBundleID_completion_ argumentIndex:0 ofReply:0];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getViewSubjectIsLockedForBundleID_completion_ argumentIndex:0 ofReply:1];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_getViewSubjectIsLockedForBundleID_completion_ argumentIndex:1 ofReply:1];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForViewSubjectWithBundleID_reasonDescription_completion_ argumentIndex:0 ofReply:0];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForViewSubjectWithBundleID_reasonDescription_completion_ argumentIndex:1 ofReply:0];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_authenticateForViewSubjectWithBundleID_reasonDescription_completion_ argumentIndex:1 ofReply:1];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_viewSubjectRequiresAuthentication_completion_ argumentIndex:0 ofReply:0];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_viewSubjectRequiresAuthentication_completion_ argumentIndex:1 ofReply:1];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_effectiveContainerLocalizedNameFor_completion_ argumentIndex:0 ofReply:0];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_effectiveContainerLocalizedNameFor_completion_ argumentIndex:0 ofReply:1];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_effectiveContainerLocalizedNameFor_completion_ argumentIndex:1 ofReply:1];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_effectiveContainerFor_completion_ argumentIndex:0 ofReply:0];
  [APGetViewSubjectInfoServiceInterface_interface setClass:objc_opt_class() forSelector:sel_effectiveContainerFor_completion_ argumentIndex:0 ofReply:1];
  v2 = APGetViewSubjectInfoServiceInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_effectiveContainerFor_completion_ argumentIndex:1 ofReply:1];
}

id APGetWriteConnection()
{
  v0 = APGetWriteServiceInterface();
  v1 = APGetConnectionWithNameAndActiveCacheWithLock(@"com.apple.appprotectiond.write", v0, &APGetWriteConnection_cachedConnection, &APGetWriteConnection_lock);

  return v1;
}

id APGetGuardConnection()
{
  v0 = APGetGuardServiceInterface();
  v1 = APGetConnectionWithNameAndActiveCacheWithLock(@"com.apple.appprotectiond.guard", v0, APGetGuardConnection_cachedConnection, &APGetGuardConnection_lock);

  return v1;
}

id APGetMaintenanceConnection()
{
  v0 = APGetMaintenanceServiceInterface();
  v1 = APGetConnectionWithNameAndActiveCacheWithLock(@"com.apple.appprotectiond.maintenance", v0, &APGetMaintenanceConnection_cachedConnection, &APGetMaintenanceConnection_lock);

  return v1;
}

id APGetExtensionInfoConnection()
{
  v0 = APGetExtensionInfoServiceInterface();
  v1 = APGetConnectionWithNameAndActiveCacheWithLock(@"com.apple.appprotectiond.extensioninfo", v0, &APGetExtensionInfoConnection_cachedConnection, &APGetExtensionInfoConnection_lock);

  return v1;
}

id APGetViewSubjectInfoConnection()
{
  v0 = APGetViewSubjectInfoServiceInterface();
  v1 = APGetConnectionWithNameAndActiveCacheWithLock(@"com.apple.appprotectiond.viewsubjectinfo", v0, &APGetViewSubjectInfoConnection_cachedConnection, &APGetViewSubjectInfoConnection_lock);

  return v1;
}

id APGetAsyncReadProxy(void *a1)
{
  v1 = a1;
  v2 = APGetReadConnection();
  v3 = [v2 remoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetSyncWriteProxy(void *a1)
{
  v1 = a1;
  v2 = APGetWriteConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetAsyncWriteProxy(void *a1)
{
  v1 = a1;
  v2 = APGetWriteConnection();
  v3 = [v2 remoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetSyncGuardProxy(void *a1)
{
  v1 = a1;
  v2 = APGetGuardConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetAsyncGuardProxy(void *a1)
{
  v1 = a1;
  v2 = APGetGuardConnection();
  v3 = [v2 remoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetSyncMaintenanceProxy(void *a1)
{
  v1 = a1;
  v2 = APGetMaintenanceConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetSyncExtensionInfoProxy(void *a1)
{
  v1 = a1;
  v2 = APGetExtensionInfoConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetAsyncExtensionInfoProxy(void *a1)
{
  v1 = a1;
  v2 = APGetExtensionInfoConnection();
  v3 = [v2 remoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetSyncViewSubjectInfoProxy(void *a1)
{
  v1 = a1;
  v2 = APGetViewSubjectInfoConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v1];

  return v3;
}

id APGetAsyncViewSubjectInfoProxy(void *a1)
{
  v1 = a1;
  v2 = APGetViewSubjectInfoConnection();
  v3 = [v2 remoteObjectProxyWithErrorHandler:v1];

  return v3;
}

void __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke(uint64_t a1)
{
  v2 = APDefaultFrameworkLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_cold_1(a1, v2);
  }
}

void __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_152(uint64_t a1)
{
  v2 = APDefaultFrameworkLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_152_cold_1(a1, v2);
  }

  os_unfair_lock_lock(*(a1 + 40));
  v3 = *(a1 + 48);
  v4 = *v3;
  *v3 = 0;

  os_unfair_lock_unlock(*(a1 + 40));
}

uint64_t APGetAuditTokenForSelf()
{
  if (APGetAuditTokenForSelf_once != -1)
  {
    APGetAuditTokenForSelf_cold_1();
  }

  return APGetAuditTokenForSelf_result;
}

void __APGetAuditTokenForSelf_block_invoke()
{
  task_info_outCnt = 8;
  v0 = task_info(*MEMORY[0x1E69E9A60], 0xFu, APGetAuditTokenForSelf_sOurAuditToken, &task_info_outCnt);
  if (v0)
  {
    v1 = v0;
    v2 = APDefaultFrameworkLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __APGetAuditTokenForSelf_block_invoke_cold_1(v1, v2);
    }
  }

  else
  {
    APGetAuditTokenForSelf_result = APGetAuditTokenForSelf_sOurAuditToken;
  }
}

void sub_185AD51C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL APAuditTokenFromData(void *a1, _OWORD *a2, void *a3)
{
  v5 = a1;
  if ([v5 length] == 32)
  {
    if (a2)
    {
      v6 = [v5 bytes];
      v7 = 0;
      v8 = v6[1];
      *a2 = *v6;
      a2[1] = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = _APMakeNSError(*MEMORY[0x1E696A250], 259, "APAuditTokenFromData", 20, 0);
    if (a3 && v7)
    {
      v7 = v7;
      *a3 = v7;
    }
  }

  v9 = v7 == 0;

  return v9;
}

id APDefaultFrameworkLog()
{
  if (APDefaultFrameworkLog_onceToken != -1)
  {
    APDefaultFrameworkLog_cold_1();
  }

  v1 = APDefaultFrameworkLog_log;

  return v1;
}

uint64_t __APDefaultFrameworkLog_block_invoke()
{
  APDefaultFrameworkLog_log = os_log_create("com.apple.appprotection", "framework");

  return MEMORY[0x1EEE66BB8]();
}

id APDefaultAuthenticationLog()
{
  if (APDefaultAuthenticationLog_onceToken != -1)
  {
    APDefaultAuthenticationLog_cold_1();
  }

  v1 = APDefaultAuthenticationLog_log;

  return v1;
}

uint64_t __APDefaultAuthenticationLog_block_invoke()
{
  APDefaultAuthenticationLog_log = os_log_create("com.apple.appprotection", "authentication");

  return MEMORY[0x1EEE66BB8]();
}

id _APMakeNSError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v19[0] = @"APLine";
  v10 = MEMORY[0x1E696AD98];
  v11 = a1;
  v12 = [v10 numberWithInt:a4];
  v19[1] = @"APFunc";
  v20[0] = v12;
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v20[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  if (v9)
  {
    v15 = [v14 mutableCopy];
    [v15 addEntriesFromDictionary:v9];

    v14 = v15;
  }

  v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v11 code:a2 userInfo:v14];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t sub_185AD60C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC818, &qword_185B6E0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v22 - v5;
  if (![v0 isWebBrowser])
  {
    goto LABEL_17;
  }

  sub_185B679EC();
  v7 = sub_185B67A0C();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E6963630]);
    v10 = sub_185AD76F4(v6);
    v11 = [v10 bundleRecord];
    v12 = [v11 bundleIdentifier];

    if (v12)
    {
      v13 = sub_185B67E4C();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = [v1 bundleIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = sub_185B67E4C();
      v20 = v19;

      if (!v15)
      {

        if (!v20)
        {
          v21 = 1;
          return v21 & 1;
        }

        goto LABEL_16;
      }

      if (v20)
      {
        if (v13 != v18 || v15 != v20)
        {
          v21 = sub_185B6859C();

          return v21 & 1;
        }

        goto LABEL_14;
      }
    }

    else if (!v15)
    {
LABEL_14:

      v21 = 1;
      return v21 & 1;
    }

LABEL_16:

LABEL_17:
    v21 = 0;
    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_185AD6440()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC818, &qword_185B6E0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v22 - v5;
  if (![v0 isMailClient])
  {
    goto LABEL_17;
  }

  sub_185B679EC();
  v7 = sub_185B67A0C();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E6963630]);
    v10 = sub_185AD76F4(v6);
    v11 = [v10 bundleRecord];
    v12 = [v11 bundleIdentifier];

    if (v12)
    {
      v13 = sub_185B67E4C();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = [v1 bundleIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = sub_185B67E4C();
      v20 = v19;

      if (!v15)
      {

        if (!v20)
        {
          v21 = 1;
          return v21 & 1;
        }

        goto LABEL_16;
      }

      if (v20)
      {
        if (v13 != v18 || v15 != v20)
        {
          v21 = sub_185B6859C();

          return v21 & 1;
        }

        goto LABEL_14;
      }
    }

    else if (!v15)
    {
LABEL_14:

      v21 = 1;
      return v21 & 1;
    }

LABEL_16:

LABEL_17:
    v21 = 0;
    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_185AD67BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = type metadata accessor for NotificationReceiverObjCShim();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v8 = sub_185AD8514;
  v8[1] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v9 = objc_msgSendSuper2(&v12, sel_init);

  *(a1 + 8) = v9;
  v10 = sub_185B67E1C();
  [a3 addObserver:v9 selector:sel_receivedNotification_ name:v10 object:0];

  v11 = sub_185B67E1C();
  [a3 addObserver:v9 selector:sel_receivedNotification_ name:v11 object:0];
}

uint64_t sub_185AD6910(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185AD6970(a1);
  }

  return result;
}

void sub_185AD6970(uint64_t a1)
{
  v2 = sub_185B6781C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v58 - v9;
  v11 = sub_185B677FC();
  v12 = sub_185B67E1C();
  v13 = sub_185B67E4C();
  v15 = v14;
  v16 = sub_185B67E4C();
  v18 = v17;

  if (v13 == v16 && v15 == v18)
  {
    goto LABEL_8;
  }

  v20 = sub_185B6859C();

  v21 = v2;
  if (v20)
  {
LABEL_9:
    v29 = sub_185B6780C();
    if (v29)
    {
      v30 = v29;
      v61 = 0x4449656C646E7562;
      v62 = 0xE900000000000073;
      sub_185B6831C();
      if (*(v30 + 16) && (v31 = sub_185AF6B9C(v63), (v32 & 1) != 0))
      {
        sub_185ACB7C8(*(v30 + 56) + 32 * v31, v64);
        sub_185AD851C(v63);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC840, &qword_185B6F1F0);
        if (swift_dynamicCast())
        {
          v33 = v61;
          v34 = *(v60 + 16);
          os_unfair_lock_lock((v34 + 32));
          v35 = sub_185AF7420(*(v34 + 16));
          os_unfair_lock_unlock((v34 + 32));
          v36 = sub_185B677FC();
          sub_185AD6FB8(v35, v33);

          return;
        }
      }

      else
      {

        sub_185AD851C(v63);
      }
    }

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v37 = sub_185B67B8C();
    __swift_project_value_buffer(v37, qword_1ED6F5130);
    (*(v3 + 16))(v10, a1, v21);
    v38 = sub_185B67B6C();
    v39 = sub_185B6808C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v63[0] = v41;
      *v40 = 136315138;
      v64[0] = sub_185B6780C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC838, &unk_185B6B2B0);
      v42 = sub_185B67EBC();
      v44 = v43;
      (*(v3 + 8))(v10, v21);
      v45 = sub_185ACB2C4(v42, v44, v63);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_185AC1000, v38, v39, "could not extract bundle identifiers from user info %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x1865FE2F0](v41, -1, -1);
      v46 = v40;
LABEL_19:
      MEMORY[0x1865FE2F0](v46, -1, -1);

      return;
    }

    (*(v3 + 8))(v10, v21);
    return;
  }

  v11 = sub_185B677FC();
  v22 = sub_185B67E1C();
  v23 = sub_185B67E4C();
  v25 = v24;
  v26 = sub_185B67E4C();
  v28 = v27;

  if (v23 == v26 && v25 == v28)
  {
LABEL_8:
    v21 = v2;

    goto LABEL_9;
  }

  v47 = sub_185B6859C();

  v21 = v2;
  if (v47)
  {
    goto LABEL_9;
  }

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v48 = sub_185B67B8C();
  __swift_project_value_buffer(v48, qword_1ED6F5130);
  v49 = v59;
  (*(v3 + 16))(v59, a1, v21);
  v38 = sub_185B67B6C();
  v50 = sub_185B680AC();
  if (os_log_type_enabled(v38, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v51 = 136315138;
    v53 = sub_185B677FC();
    v54 = sub_185B67E4C();
    v56 = v55;

    (*(v3 + 8))(v49, v21);
    v57 = sub_185ACB2C4(v54, v56, v63);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_185AC1000, v38, v50, "unknown notification %s in APAppInstallationManager", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x1865FE2F0](v52, -1, -1);
    v46 = v51;
    goto LABEL_19;
  }

  (*(v3 + 8))(v49, v21);
}

uint64_t sub_185AD6FB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_185B67E1C();
  v8 = sub_185B67E4C();
  v10 = v9;
  v11 = sub_185B67E4C();
  v13 = v12;

  v14 = v8 == v11 && v10 == v13;
  v15 = v6;
  if (v14)
  {
  }

  else
  {
    v16 = sub_185B6859C();

    if ((v16 & 1) == 0)
    {
      v18 = *(a1 + 16);
      if (v18)
      {
        v19 = (a1 + 40);
        do
        {
          v20 = *(v19 - 1);
          v21 = *v19;
          ObjectType = swift_getObjectType();
          v31 = v6;
          v32 = &off_1EF465F20;
          v30[0] = v3;
          v23 = *(v21 + 8);

          swift_unknownObjectRetain();
          v23(v30, a2, ObjectType, v21);
          v6 = v15;
          swift_unknownObjectRelease();
          result = __swift_destroy_boxed_opaque_existential_0Tm(v30);
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      return result;
    }
  }

  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (a1 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = swift_getObjectType();
      v31 = v6;
      v32 = &off_1EF465F20;
      v30[0] = v3;
      v29 = *(v27 + 16);
      swift_unknownObjectRetain();

      v29(v30, a2, v28, v27);
      v6 = v15;
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0Tm(v30);
      v25 += 2;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t sub_185AD7200(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_185B682DC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_185AD81DC(v3, *(a1 + 36), 0, a1);

  return v5;
}

id sub_185AD727C(void *a1, uint64_t a2)
{
  result = [a1 bundleIdentifier];
  if (result)
  {
    v4 = result;
    v5 = sub_185B67E4C();
    v7 = v6;

    if (sub_185AC3A7C(v5, v7, a2))
    {
      sub_185AC407C(&v8, v5, v7);
    }

    else
    {
    }
  }

  return result;
}

void sub_185AD7364(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_185AD73B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v8 = sub_185AD006C(a1, a2, 1);
  if (!v3)
  {
    v9 = v8;

    [v9 developerType];
    sub_185AD6440();
    sub_185AD60C4();

    [v9 detach];
    v10 = v9;
    v11 = APGetPrivacyDisclosureInterface();
    a3[3] = &type metadata for AppRecordProtectabilityInfo;
    a3[4] = &off_1EF466208;

    *a3 = v10;
    a3[1] = v11;
  }
}

uint64_t sub_185AD74EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_185AD757C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_185AD759C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_185AD75F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_185AD7618(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

id sub_185AD7650()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_185B67E1C();
    v3 = [v1 applicationIsInstalled_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_185AD76F4(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_185B6799C();
  v14[0] = 0;
  v5 = [v2 initWithURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_185B67A0C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_185B6792C();

    swift_willThrow();
    v11 = sub_185B67A0C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_185AD7868@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_185AD7894@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_185AD7930(uint64_t a1, id *a2)
{
  result = sub_185B67E2C();
  *a2 = 0;
  return result;
}

uint64_t sub_185AD79A8(uint64_t a1, id *a2)
{
  v3 = sub_185B67E3C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_185AD7A28@<X0>(uint64_t *a1@<X8>)
{
  sub_185B67E4C();
  v2 = sub_185B67E1C();

  *a1 = v2;
  return result;
}

uint64_t sub_185AD7A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_185AD84DC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_185AD7B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_185AD7C5C(uint64_t a1)
{
  v2 = sub_185AD7B3C(&qword_1EA8CCA38, type metadata accessor for FileProtectionType);
  v3 = sub_185AD7B3C(&qword_1EA8CCA40, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_185AD7D18(uint64_t a1)
{
  v2 = sub_185AD7B3C(&qword_1EA8CCA28, type metadata accessor for URLFileProtection);
  v3 = sub_185AD7B3C(&qword_1EA8CCA30, type metadata accessor for URLFileProtection);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_185AD7DD4(uint64_t a1)
{
  v2 = sub_185AD7B3C(&qword_1EA8CCA58, type metadata accessor for URLResourceKey);
  v3 = sub_185AD7B3C(&unk_1EA8CCA60, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_185AD7E90(uint64_t a1)
{
  v2 = sub_185AD7B3C(&qword_1EA8CCA48, type metadata accessor for FileAttributeKey);
  v3 = sub_185AD7B3C(&qword_1EA8CCA50, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_185AD7F4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_185B67E1C();

  *a2 = v5;
  return result;
}

uint64_t sub_185AD7F94(uint64_t a1)
{
  v2 = sub_185AD7B3C(&qword_1EA8CCA18, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_185AD7B3C(&qword_1EA8CCA20, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_185AD8050()
{
  v1 = *v0;
  v2 = sub_185B67E4C();
  v3 = MEMORY[0x1865FCF90](v2);

  return v3;
}

uint64_t sub_185AD808C()
{
  v1 = *v0;
  sub_185B67E4C();
  sub_185B67EEC();
}

uint64_t sub_185AD80E0()
{
  v1 = *v0;
  sub_185B67E4C();
  sub_185B6866C();
  sub_185B67EEC();
  v2 = sub_185B686AC();

  return v2;
}

uint64_t sub_185AD8154(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_185B67E4C();
  v6 = v5;
  if (v4 == sub_185B67E4C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_185B6859C();
  }

  return v9 & 1;
}

uint64_t sub_185AD81DC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_185AD8230(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = a1;
  if (v1 != 1)
  {
    v14 = MEMORY[0x1E69E7CD0];
    v7 = [objc_opt_self() enumeratorWithOptions_];
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = &v14;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_185AD8474;
    *(v9 + 24) = v8;
    aBlock[4] = sub_185AD847C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185AD7364;
    aBlock[3] = &block_descriptor;
    v10 = _Block_copy(aBlock);

    [v7 swift:v10 forEach:?];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = v14;

    return v2;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v4 = result;
    sub_185AD7200(v2);
    if (v5)
    {
      v6 = sub_185B67E1C();
    }

    else
    {
      v6 = 0;
    }

    v12 = [v4 applicationIsInstalled_];

    if (!v12)
    {
      return MEMORY[0x1E69E7CD0];
    }

    return v2;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_185AD847C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_185AD84A4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_185AD84DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_185AD85FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_185AD8644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_185AD8690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_185AD86DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_185AD8C10(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_185AD8C40@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_185AD8C6C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_185AD8D2C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_185AD8D5C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_185AD84A4(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_185AD8D9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 < 0)
  {
    sub_185B6836C();

    v14 = [v1 description];
    v15 = sub_185B67E4C();
    v17 = v16;

    MEMORY[0x1865FCF60](v15, v17);

    MEMORY[0x1865FCF60](0x3A6E656464696820, 0xE800000000000000);
    if (v2)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v2)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x1865FCF60](v18, v19);

    MEMORY[0x1865FCF60](41, 0xE100000000000000);
    return 0xD00000000000001ELL;
  }

  else
  {
    v5 = *(v0 + 9);
    v4 = v0 + 9;
    v6 = *(v4 + 15);
    v7 = *(v4 + 7);
    v8 = *(v4 + 4);
    v9 = *(v4 + 6);
    sub_185B6836C();

    type metadata accessor for audit_token_t(0);
    v10 = sub_185B67EBC();
    MEMORY[0x1865FCF60](v10);

    MEMORY[0x1865FCF60](0x3A6E656464696820, 0xE800000000000000);
    if (v3)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v3)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x1865FCF60](v11, v12);

    return 0xD000000000000021;
  }
}

uint64_t sub_185AD8FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_185B6866C();
  v5 = *(a4 + 8);
  sub_185B67DBC();
  return sub_185B686AC();
}

uint64_t sub_185AD904C()
{
  v1 = *(v0 + 80);
  v2 = (*(*(v0 + 88) + 24))();

  return sub_185ACE8FC(v2);
}

id sub_185AD9094(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x80);
    v6 = Strong;
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for ConnectionClientPair();
    swift_getWitnessTable();
    sub_185B6802C();
    sub_185B6801C();
    swift_endAccess();

    sub_185ADF5D8(v11, v12);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  }

  v8 = *(AssociatedConformanceWitness + 32);
  v9 = swift_checkMetadataState();
  v8(v9, AssociatedConformanceWitness);
  [a3 setExportedObject_];
  return [a3 setInvalidationHandler_];
}

void sub_185AD92C8(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_185ADF170();
}

id sub_185AD9308()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_185AD9340(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  __swift_destroy_boxed_opaque_existential_0Tm(&a1[*((*v2 & *a1) + 0x78)]);
  v3 = *&a1[*((*v2 & *a1) + 0x80)];
}

void sub_185AD9460(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v8 = sub_185ADF114(a1, a2, a3, a4);

  *a5 = v8;
}

uint64_t sub_185AD951C()
{
  result = sub_185B67E4C();
  qword_1EA8D22A0 = result;
  *algn_1EA8D22A8 = v1;
  return result;
}

uint64_t sub_185AD954C()
{
  result = sub_185B67E4C();
  qword_1EA8D2290 = result;
  *algn_1EA8D2298 = v1;
  return result;
}

uint64_t sub_185AD957C()
{
  v13 = sub_185B680EC();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B680DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_185B67CDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v14 = MEMORY[0x1E69E7CC0];
  sub_185AC72E0(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC7370(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  result = sub_185B6813C();
  qword_1EA8CB760 = result;
  return result;
}

uint64_t *APServer.__allocating_init(serviceQueue:platformExpert:)(void *a1, uint64_t *a2)
{
  v99 = a2;
  v97 = a1;
  v90 = sub_185B680EC();
  v89 = *(v90 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90, v3);
  v88 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_185B680DC();
  v5 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86, v6);
  v87 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_185B67CDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v85[1] = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB750 != -1)
  {
    swift_once();
  }

  v12 = qword_1EA8CB760;
  v95 = type metadata accessor for APPersistentStore();
  v13 = swift_allocObject();
  type metadata accessor for APDaemonPersistentContainer();
  v14 = v12;
  *(v13 + 16) = sub_185B27508(3);
  *(v13 + 24) = v14;
  v98 = v13;
  type metadata accessor for LocalAuthenticationAuthProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCBF8, &qword_185B6BB90);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC00, &qword_185B6BB98);
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 24) = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v96 = v16;
  type metadata accessor for DispatchDeathMonitor();
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC08, &qword_185B6BBA0);
  v20 = swift_allocObject();
  *(v20 + 32) = 0;
  v21 = MEMORY[0x1E69E7CC8];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  *(v19 + 16) = v14;
  *(v19 + 24) = v20;
  v94 = v19;
  type metadata accessor for APSystemAppXPCEventStreamServer();
  swift_allocObject();
  v22 = v14;
  v93 = sub_185B16524(v22);

  if (qword_1EA8CB7D0 != -1)
  {
    swift_once();
  }

  v23 = *(qword_1EA8D22B8 + 16);
  type metadata accessor for APAppInstallationManager();
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC10, &qword_185B6BBA8);
  v25 = swift_allocObject();
  *(v25 + 32) = 0;
  v26 = (v25 + 32);
  *(v25 + 16) = v18;
  v27 = v25 + 16;
  *(v25 + 24) = 0;
  *(v24 + 16) = v25;
  MEMORY[0x1EEE9AC00](v25, v28);
  v85[-2] = v24;
  v85[-1] = v23;
  v29 = v23;

  os_unfair_lock_lock(v26);
  sub_185ADF1A0(v27);
  os_unfair_lock_unlock(v26);

  if (qword_1EA8CB7F0 != -1)
  {
    swift_once();
  }

  v30 = *(qword_1EA8D22C0 + 16);
  type metadata accessor for ServerAccountsManager();
  swift_allocObject();
  v31 = sub_185B2DD48(v30);
  v32 = qword_1EA8CBB30;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_1EA8D2300;
  v34 = v99[3];
  v35 = v99[4];
  __swift_project_boxed_opaque_existential_1(v99, v34);
  v36 = *(v35 + 8);

  v36(v101, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC18, &unk_185B6BBB0);
  v37 = swift_allocObject();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC20, qword_185B6FAD0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = v22;

  v42 = v98;

  v37[2] = sub_185B67C4C();
  v37[4] = 0;
  v37[5] = 0;
  v92 = v24;
  v37[6] = v24;
  v37[7] = v33;
  sub_185ADF8F0(v101, (v37 + 8));
  v91 = v31;
  v37[13] = v31;
  v37[14] = v42;
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  v85[0] = v41;
  sub_185B67CBC();
  v100[0] = MEMORY[0x1E69E7CC0];
  sub_185AC72E0(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC7370(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v89 + 104))(v88, *MEMORY[0x1E69E8090], v90);
  v43 = sub_185B6813C();
  v37[3] = v43;
  v44 = *(v37[6] + 16);
  MEMORY[0x1EEE9AC00](v43, v45);
  v85[-2] = v37;
  v85[-1] = &off_1EF46C8D8;

  os_unfair_lock_lock(v44 + 8);
  sub_185ADF204(&v44[4]);
  os_unfair_lock_unlock(v44 + 8);

  v47 = *(v37[7] + 16);
  MEMORY[0x1EEE9AC00](v46, v48);
  v85[-2] = v37;
  v85[-1] = &off_1EF46C8C8;

  os_unfair_lock_lock(v47 + 6);
  sub_185ADF220(&v47[4]);
  os_unfair_lock_unlock(v47 + 6);

  v49 = v37[11];
  v50 = v37[12];
  __swift_project_boxed_opaque_existential_1(v37 + 8, v49);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v54);
  v56 = v85 - v55;
  (*(v50 + 32))(v49, v50);
  swift_allocObject();
  swift_weakInit();
  swift_getAssociatedConformanceWitness();

  v57 = sub_185B67C7C();

  v58 = v56;
  v59 = v85[0];
  (*(v52 + 8))(v58, AssociatedTypeWitness);
  v60 = v37[4];
  v37[4] = v57;

  v100[0] = *(v37[13] + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCC28, &qword_185B6BBC8);
  sub_185AC7370(&qword_1EA8CB710, &unk_1EA8CCC28, &qword_185B6BBC8);
  v61 = sub_185B67C7C();

  __swift_destroy_boxed_opaque_existential_0Tm(v101);

  v62 = v37[5];
  v37[5] = v61;

  if (qword_1EA8CBBF0 != -1)
  {
    swift_once();
  }

  v63 = qword_1EA8D2318;
  v64 = v95;
  v102 = v95;
  v103 = &off_1EF46BDF0;
  v65 = v98;
  v101[0] = v98;
  v66 = type metadata accessor for ContainerBasedBackupManager(0);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v101, v64);
  v71 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70, v70);
  v73 = (v85 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v73;
  swift_unknownObjectRetain();

  v76 = sub_185ADDF20(v75, v59, v69);
  __swift_destroy_boxed_opaque_existential_0Tm(v101);
  if (qword_1EA8CBBC8 != -1)
  {
    swift_once();
  }

  v77 = qword_1EA8D2308;
  v78 = type metadata accessor for ServerActivityScheduler();
  v79 = swift_allocObject();
  v80 = objc_allocWithZone(APServerActivityScheduler);
  v81 = v77;
  *(v79 + 16) = [v80 init];
  v108 = v78;
  v109 = &off_1EF46AAC8;
  v106 = v77;
  v107 = v79;
  v101[0] = v65;
  v101[1] = v96;
  v101[2] = v94;
  v102 = v93;
  v103 = v63;
  v104 = v92;
  v105 = v76;
  v110 = v37;
  v111 = v59;
  sub_185ADF250(v101, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC40, qword_185B6BBD8);
  swift_allocObject();
  v82 = sub_185ADAF68(v100);
  v83 = sub_185ADE4DC(v82);

  sub_185ACF5CC(v101, &qword_1EA8CCC38, &qword_185B6BBD0);
  __swift_destroy_boxed_opaque_existential_0Tm(v99);
  return v83;
}

uint64_t sub_185ADA46C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  if (qword_1EA8CB750 != -1)
  {
    swift_once();
  }

  v9 = *(v8 + 16);
  v10 = qword_1EA8CB760;
  v9(v7, v8);
  v11 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v12 = sub_185B67E1C();

  v13 = [v11 initWithMachServiceName_];

  sub_185ADF8F0(a2, v17);
  sub_185ADF8F0(a3, v16);
  v14 = *(v8 + 8);
  a4[3] = v7;
  a4[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return v14(v10, v13, v17, v16, v7, v8);
}

uint64_t sub_185ADA5C4(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_185B4E9CC(0, v5, 0);
  v6 = v15;
  for (i = (a3 + 32); ; ++i)
  {
    v13 = *i;
    a1(v14, &v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v15 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_185B4E9CC((v10 > 1), v11 + 1, 1);
      v6 = v15;
    }

    *(v6 + 16) = v11 + 1;
    sub_185AC66F8(v14, v6 + 40 * v11 + 32);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185ADA6E0(void *a1)
{
  v2 = sub_185B67E1C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_185ADF618;
  *(v3 + 24) = a1;
  v34 = sub_185ADFC6C;
  v35 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AD94F4;
  v33 = &block_descriptor_29;
  v4 = _Block_copy(aBlock);

  APDoFirstRunWork(v2, v4);

  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  result = (*(v7 + 208))(v6, v7);
  v8 = a1[13];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 32;
    v12 = 0x1EA8CB000uLL;
    v13 = qword_1EA8D2278;
    v28 = *(v8 + 16);
    v29 = v8;
    while (v10 < *(v8 + 16))
    {
      sub_185ADF8F0(v11, aBlock);
      if (*(v12 + 1816) != -1)
      {
        swift_once();
      }

      v16 = sub_185B67B8C();
      __swift_project_value_buffer(v16, v13);
      sub_185ADF8F0(aBlock, v31);
      v17 = sub_185B67B6C();
      v18 = sub_185B680AC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = v12;
        v21 = swift_slowAlloc();
        v30 = v21;
        *v19 = 136315138;
        v22 = v13;
        __swift_project_boxed_opaque_existential_1(v31, v31[3]);
        swift_getDynamicType();
        v23 = sub_185B6872C();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        v26 = sub_185ACB2C4(v23, v25, &v30);

        *(v19 + 4) = v26;
        v13 = v22;
        _os_log_impl(&dword_185AC1000, v17, v18, "resuming service %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        v27 = v21;
        v12 = v20;
        v9 = v28;
        v8 = v29;
        MEMORY[0x1865FE2F0](v27, -1, -1);
        MEMORY[0x1865FE2F0](v19, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v31);
      }

      ++v10;
      v14 = v33;
      v15 = v34;
      __swift_project_boxed_opaque_existential_1(aBlock, v33);
      (*(v15 + 3))(v14, v15);
      result = __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
      v11 += 40;
      if (v9 == v10)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_185ADAA60(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  v3 = (*(v2 + 120))(v1, v2);

  return sub_185B43CBC(v3, v4);
}

void sub_185ADAC10()
{
  if (qword_1EA8CB7D0 != -1)
  {
    swift_once();
  }

  sub_185B0BB58();
  if (qword_1EA8CB818 != -1)
  {
    swift_once();
  }

  sub_185AE7EB0();
  if (qword_1EA8CB7F0 != -1)
  {
    swift_once();
  }

  sub_185B215E4();
  if (qword_1EA8CB750 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA8CB760;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_185ADF2C0;
  *(v2 + 24) = v0;
  v8[4] = sub_185ADF2C8;
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185AD94F4;
  v8[3] = &block_descriptor_0;
  v3 = _Block_copy(v8);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else if (qword_1EA8CB718 == -1)
  {
    goto LABEL_11;
  }

  swift_once();
LABEL_11:
  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1EA8D2278);
  v5 = sub_185B67B6C();
  v6 = sub_185B680AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_185AC1000, v5, v6, "appprotectiond main loop turn on.", v7, 2u);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

  dispatch_main();
}

uint64_t *APServer.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  return v0;
}

uint64_t APServer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_185ADAF68(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD4B0, &qword_185B6BF08);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v26 = sub_185B67C4C();
  *(v1 + 136) = v26;
  *(v1 + 144) = 0;
  v7 = MEMORY[0x1E69E7CC8];
  *(v1 + 152) = 0;
  *(v1 + 160) = v7;
  *(v1 + 168) = v7;
  *(v1 + 176) = 0;
  v8 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 40) = v8;
  v9 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 56) = v9;
  v10 = a1[5];
  *(v1 + 64) = a1[4];
  *(v1 + 72) = v10;
  *(v1 + 80) = a1[6];
  sub_185ADF8F0((a1 + 8), v1 + 88);
  v12 = a1[13];
  v11 = a1[14];
  *(v1 + 128) = v12;
  v25 = v11;
  *(v1 + 24) = v11;
  v13 = a1[7];
  *(v1 + 144) = v13;
  if (v13)
  {
    v28 = v4;
    v29 = sub_185AC7370(&unk_1EA8CB700, &unk_1EA8CD4B0, &qword_185B6BF08);
    *&v27 = v26;
    v14 = &v13[OBJC_IVAR____TtC13AppProtection20APChangeEventManager_changeEventsPublisher];
    swift_beginAccess();
    v24 = v14[3];

    v15 = v25;
    swift_unknownObjectRetain();
    v16 = v13;

    if (v24)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    sub_185AC66F8(&v27, v14);
    swift_endAccess();
    v12 = *(v1 + 128);
  }

  else
  {
    swift_unknownObjectRetain();

    v17 = v25;
  }

  *&v27 = *(v12 + 16);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCC20, qword_185B6FAD0);
  sub_185AC7370(&qword_1EA8CB6F8, &qword_1EA8CCC20, qword_185B6FAD0);
  v18 = sub_185B67C7C();

  v19 = *(v2 + 152);
  *(v2 + 152) = v18;

  v21 = *(*(v2 + 48) + 24);
  MEMORY[0x1EEE9AC00](v20, v22);

  os_unfair_lock_lock(v21 + 8);
  sub_185ADF6BC(&v21[4]);
  os_unfair_lock_unlock(v21 + 8);

  sub_185ACF5CC(a1, &qword_1EA8CCC38, &qword_185B6BBD0);
  return v2;
}

uint64_t sub_185ADB2C4(unint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_185B67D3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v14 = sub_185B67B8C();
    __swift_project_value_buffer(v14, qword_1EA8D2278);
    sub_185ADF6D8(a1, a2, a3);
    v15 = sub_185B67B6C();
    v16 = sub_185B680AC();
    sub_185ADF6F0(a1, a2, a3);
    v17 = os_log_type_enabled(v15, v16);
    v35 = a3;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v33 = v7;
      v19 = v18;
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      v21 = sub_185B63E70(a1, a2, a3);
      v34 = v6;
      v23 = a1;
      v24 = sub_185ACB2C4(v21, v22, &v36);
      v6 = v34;

      *(v19 + 4) = v24;
      a1 = v23;
      _os_log_impl(&dword_185AC1000, v15, v16, "processing settings authority event: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      v25 = v19;
      v7 = v33;
      MEMORY[0x1865FE2F0](v25, -1, -1);
    }

    v26 = *(v13 + 24);
    *v11 = v26;
    (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6);
    v27 = v26;
    LOBYTE(v26) = sub_185B67D5C();
    result = (*(v7 + 8))(v11, v6);
    if ((v26 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (v35 <= 1u)
    {
      if (v35)
      {
        sub_185ADC850(a1, a2);
      }

      else
      {
        sub_185ADC400(a1, a2);
      }
    }

    if (v35 == 2)
    {
      sub_185ADF6D8(a1, a2, 2u);

      sub_185B413A8(v32, v13, a1, a2);
      v29 = a1;
      v30 = a2;
      v31 = 2;
    }

    else
    {
      if (v35 != 3)
      {
        if (a1 > 1)
        {
          if (a1 ^ 2 | a2)
          {
            sub_185ADBC88();
          }

          else
          {
            sub_185ADCD10();
          }
        }

        else
        {
          sub_185ADCFB8();
        }
      }

      sub_185ADF6D8(a1, a2, 3u);

      sub_185B41AE8(v28, v13, a1, a2);
      v29 = a1;
      v30 = a2;
      v31 = 3;
    }

    sub_185ADF6F0(v29, v30, v31);
  }

  return result;
}

uint64_t sub_185ADB68C()
{
  v1 = *(v0 + 32);

  sub_185ACC524(sub_185ACB234, 0);
  v3 = v2;

  return v3;
}

uint64_t sub_185ADB840(uint64_t a1)
{
  v1 = *(a1 + 32);

  sub_185ACC524(sub_185ACAF24, 0);
  v3 = v2;

  return v3;
}

uint64_t sub_185ADB9F4()
{
  v2 = v0;
  v3 = sub_185ADB68C();
  v4 = sub_185ADB840(v0);
  v5 = sub_185ADB68C();
  v6 = sub_185ACB848(v5, v4);
  v7 = *(v0 + 32);

  sub_185ACCE00(sub_185B4CB5C, 0);
  if (v1)
  {
  }

  else
  {

    v9 = *(v2 + 136);
    LODWORD(v11) = 3;
    *&v12 = 0;
    *(&v12 + 1) = v3;
    *&v13 = 0;
    *(&v13 + 1) = v6;
    sub_185B67C2C();
    v14[0] = v11;
    v14[1] = v12;
    v14[2] = v13;
    v14[3] = 0uLL;
    sub_185ADF798(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD18, &unk_185B6E830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = sub_185ADF870;
    *(inited + 40) = v2;
    *(inited + 48) = sub_185ADF8B0;
    *(inited + 56) = v2;
    swift_retain_n();
    sub_185B21D18(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD20, &unk_185B6BF20);
    return swift_arrayDestroy();
  }
}

void sub_185ADBB90(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v9 = sub_185B67F5C();
    v11[4] = a2;
    v11[5] = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_185B2AF84;
    v11[3] = a3;
    v10 = _Block_copy(v11);
    [v8 *a4];
    _Block_release(v10);
  }
}

void sub_185ADBC88()
{
  v2 = v0;
  v69 = *MEMORY[0x1E69E9840];
  if (MKBDeviceUnlockedSinceBoot() && (*(v0 + 176) & 1) == 0)
  {
    v8 = *(v0 + 32);
    v9 = *(v2 + 32);

    sub_185ACC524(sub_185ACAF24, 0);
    v11 = v10;

    if (v1)
    {
LABEL_40:
      v57 = *MEMORY[0x1E69E9840];
      return;
    }

    v12 = v11 + 56;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 56);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v60 = MEMORY[0x1E69E7CC0];
    v62 = v2;
    v63 = v16;
    v64 = v11 + 56;
    while (v15)
    {
      v18 = v17;
LABEL_18:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = (*(v11 + 48) + ((v18 << 10) | (16 * v19)));
      v21 = *v20;
      v22 = v20[1];
      v23 = objc_allocWithZone(MEMORY[0x1E69635F8]);

      v65 = v21;
      v24 = sub_185B67E1C();
      *&v68[0] = 0;
      v25 = [v23 initWithBundleIdentifier:v24 allowPlaceholder:1 error:v68];

      if (v25)
      {
        v26 = *&v68[0];
        v27 = [APGetPrivacyDisclosureInterface() applicationRequiresPreflight_];
        swift_unknownObjectRelease();
        if (v27)
        {
          if (qword_1EA8CB718 != -1)
          {
            swift_once();
          }

          v28 = sub_185B67B8C();
          __swift_project_value_buffer(v28, qword_1EA8D2278);

          v29 = v25;
          v30 = sub_185B67B6C();
          v31 = sub_185B680AC();
          v61 = v29;

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v59 = v11;
            v33 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            *&v68[0] = v58;
            *v32 = 136446466;
            v34 = v65;
            *(v32 + 4) = sub_185ACB2C4(v65, v22, v68);
            *(v32 + 12) = 2112;
            *(v32 + 14) = v61;
            *v33 = v25;
            v35 = v61;
            v36 = v61;
            _os_log_impl(&dword_185AC1000, v30, v31, "Setting %{public}s for %@ to unlocked due to unaccepted privacy disclosure", v32, 0x16u);
            sub_185ACF5CC(v33, &unk_1EA8CC820, &unk_185B6B2A0);
            v37 = v33;
            v11 = v59;
            MEMORY[0x1865FE2F0](v37, -1, -1);
            __swift_destroy_boxed_opaque_existential_0Tm(v58);
            MEMORY[0x1865FE2F0](v58, -1, -1);
            v38 = v32;
            v2 = v62;
            MEMORY[0x1865FE2F0](v38, -1, -1);
          }

          else
          {

            v34 = v65;
            v36 = v61;
          }

          v41 = *(v2 + 32);

          sub_185B4BA2C(v34, v22, 0);

          v42 = sub_185ADB840(v2);
          v43 = sub_185ADB68C();
          v44 = sub_185ACB848(v43, v42);
          sub_185B2CFD0(v44);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_185B3C8D8(0, *(v60 + 2) + 1, 1, v60);
          }

          v54 = *(v60 + 2);
          v53 = *(v60 + 3);
          if (v54 >= v53 >> 1)
          {
            v60 = sub_185B3C8D8((v53 > 1), v54 + 1, 1, v60);
          }

          *(v60 + 2) = v54 + 1;
          v55 = &v60[16 * v54];
          *(v55 + 4) = v34;
          *(v55 + 5) = v22;
        }

        else
        {
        }

        v17 = v18;
      }

      else
      {
        v39 = *&v68[0];
        v40 = sub_185B6792C();

        v66 = v40;
        swift_willThrow();
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v45 = sub_185B67B8C();
        __swift_project_value_buffer(v45, qword_1EA8D2278);

        v46 = sub_185B67B6C();
        v47 = sub_185B6808C();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v68[0] = v49;
          *v48 = 136315138;
          v50 = v11;
          v51 = sub_185ACB2C4(v65, v22, v68);

          *(v48 + 4) = v51;
          v11 = v50;
          _os_log_impl(&dword_185AC1000, v46, v47, "Error checking whether %s needs to be unlocked due to unaccepted privacy diclosure", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          v52 = v49;
          v2 = v62;
          MEMORY[0x1865FE2F0](v52, -1, -1);
          MEMORY[0x1865FE2F0](v48, -1, -1);
        }

        else
        {
        }

        v17 = v18;
      }

      v16 = v63;
      v12 = v64;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        v56 = *(v2 + 136);
        *v67 = 2;
        memset(&v67[8], 0, 32);
        *&v67[40] = v11;
        sub_185B67C2C();
        v68[0] = *v67;
        v68[1] = *&v67[16];
        v68[2] = *&v67[32];
        v68[3] = 0uLL;
        sub_185ADF798(v68);
        *(v2 + 176) = 1;
        goto LABEL_40;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  if (qword_1EA8CB718 != -1)
  {
LABEL_42:
    swift_once();
  }

  v3 = sub_185B67B8C();
  __swift_project_value_buffer(v3, qword_1EA8D2278);
  v4 = sub_185B67B6C();
  v5 = sub_185B6808C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_185AC1000, v4, v5, "Checked unlockUnacceptedPrivacyDisclosureApps before first unlock", v6, 2u);
    MEMORY[0x1865FE2F0](v6, -1, -1);
  }

  v7 = *MEMORY[0x1E69E9840];
}