uint64_t sub_19202A47C()
{
  type metadata accessor for WidgetCenter();
  v0 = swift_allocObject();
  result = sub_19202A4B8();
  qword_1ED749B30 = v0;
  return result;
}

uint64_t sub_19202A4B8()
{
  v1 = v0;
  v15 = sub_192228070();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192228050();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_192227790();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v14[0] = "urationRecommendations()";
  v14[1] = v10;
  sub_192227760();
  v16 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C5D8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_19202A880(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v15);
  *(v0 + 16) = sub_1922280A0();
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  *(v1 + 24) = v11;
  *(v1 + 32) = 0;
  return v1;
}

uint64_t static WidgetCenter.shared.getter()
{
  if (qword_1ED749B28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19202A7A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_19202A7F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19202A838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19202A880(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19202A98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_19202AB80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_19202ABC8()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_19202AE2C();
  inited = swift_initStackObject();
  *(inited + 32) = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(inited + 40) = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v1 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v4 = *(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  v2 = v1;
  sub_192227D50();

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19202AE2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EADF2BA0;
    v3 = &unk_1922474C8;
  }

  else
  {
    v2 = &unk_1EADEEBD8;
    v3 = &unk_19222CAF0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void sub_19202AEA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_19202AF90(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  a3(v3, a1, a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_19202B020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19202B38C();
  v22 = sub_192125B00;
  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1921BBB98;
  v21 = &block_descriptor_109;
  v6 = _Block_copy(&v18);
  v7 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v24, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v8 = v24[5];
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;

    v10 = sub_192227930();
    v22 = sub_19202AF1C;
    v23 = v9;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_19202AF14;
    v21 = &block_descriptor_115;
    v11 = _Block_copy(&v18);

    [v8 _reloadTimelinesOfKind_completion_];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    v13 = sub_192225890();
    v14 = sub_192227F90();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v18);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_19202B354()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id sub_19202B38C()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  v2 = *(v0 + 32);
  if (v2)
  {

    return v2;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1922258B0();
    __swift_project_value_buffer(v4, qword_1ED74CCC8);
    v5 = sub_192225890();
    v6 = sub_192227FB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_192028000, v5, v6, "Creating WidgetCenter connection.", v7, 2u);
      MEMORY[0x193B0C7F0](v7, -1, -1);
    }

    v8 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v9 = sub_192227930();
    v10 = [v8 initWithMachServiceName:v9 options:0];

    v11 = sub_19202ABC8();
    [v10 setRemoteObjectInterface_];

    v12 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setExportedInterface_];

    v13 = swift_allocObject();
    swift_weakInit();
    v23 = sub_19212AD48;
    v24 = v13;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_19202AB80;
    v22 = &block_descriptor_34;
    v14 = _Block_copy(&v19);

    [v10 setInterruptionHandler_];
    _Block_release(v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v23 = sub_19212AD6C;
    v24 = v15;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_19202AB80;
    v22 = &block_descriptor_38;
    v16 = _Block_copy(&v19);

    [v10 setInvalidationHandler_];
    _Block_release(v16);
    [v10 resume];
    v17 = *(v1 + 32);
    *(v1 + 32) = v10;
    v18 = v10;

    return v18;
  }
}

uint64_t sub_19202B6E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_19202B720(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1922258B0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1922258A0();
}

uint64_t static DataProtectionLevel.systemDefault.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ED74B5B8;
  return result;
}

uint64_t sub_19202B8CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19202B998(v11, 0, 0, 1, a1, a2);
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
    sub_19202A98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_19202B998(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_192078810(a5, a6);
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
    result = sub_1922284E0();
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

void sub_19202BAA4(NSObject *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1ED74CCC8);
    v8 = a1;

    v9 = sub_192225890();
    v10 = sub_192227F90();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v22);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_19202B8CC(a2, a3, &v22);
      *(v11 + 22) = 2114;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v15;
      *v12 = v15;
      _os_log_impl(&dword_192028000, v9, v10, "%{public}s - error reloading timelines of kind '%{public}s': %{public}@", v11, 0x20u);
      sub_192033970(v12, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v13, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);

      return;
    }

    v20 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1922258B0();
    __swift_project_value_buffer(v16, qword_1ED74CCC8);

    oslog = sub_192225890();
    v17 = sub_192227FB0();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v22);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_19202B8CC(a2, a3, &v22);
      _os_log_impl(&dword_192028000, oslog, v17, "%{public}s - reloaded timelines of kind '%{public}s'", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v19, -1, -1);
      MEMORY[0x193B0C7F0](v18, -1, -1);

      return;
    }

    v20 = oslog;
  }
}

unint64_t sub_19202BE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A20, &qword_192236238);
    v3 = sub_1922286C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1920440AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t static WidgetExtensionSessionFactory.makeSessionAsync(for:preferredLanguages:options:watchdogTimeoutProvider:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v145 = a6;
  v146 = a7;
  v144 = a3;
  v132 = a2;
  v142 = sub_192225670();
  v134 = *(v142 - 8);
  v11 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v136 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1922256D0();
  v14 = *(v13 - 8);
  v139 = v13;
  v140 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v130 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v121 - v19;
  v131 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v135 = &v121 - v22;
  v23 = sub_192227730();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1922251B0();
  v138 = *(v143 - 8);
  v28 = *(v138 + 64);
  v29 = MEMORY[0x1EEE9AC00](v143);
  v141 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v137 = &v121 - v31;
  if (a4)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = a4;
    *(v32 + 24) = a5;
    v33 = sub_1921C62A0;
  }

  else
  {
    v33 = sub_1920327C8;
    v32 = 0;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  v35 = v34;
  sub_19202CFFC(a1, &aBlock, &unk_1EADEF330, &unk_19222CD40);
  if (!*(&v148 + 1))
  {
    sub_19202D088(a4);
    sub_192033970(&aBlock, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_18;
  }

  sub_19202D088(a4);
  sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_19202CFFC(a1, &aBlock, &unk_1EADEF330, &unk_19222CD40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
    v72 = sub_192227990();
    v74 = v73;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v75 = sub_1922258B0();
    __swift_project_value_buffer(v75, qword_1EAE00728);

    v76 = sub_192225890();
    v77 = sub_192227FB0();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&aBlock = v79;
      *v78 = 136446210;
      v80 = sub_19202B8CC(v72, v74, &aBlock);

      *(v78 + 4) = v80;
      _os_log_impl(&dword_192028000, v76, v77, "Unable to create new WidgetExtensionSession: extension was not an _EXExtensionIdentity - %{public}s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x193B0C7F0](v79, -1, -1);
      MEMORY[0x193B0C7F0](v78, -1, -1);
    }

    else
    {
    }

    v145(0);
  }

  v126 = v35;
  v127 = v7;
  v36 = v151;
  v37 = [v151 bundleIdentifier];
  v129 = sub_192227960();
  v39 = v38;

  LODWORD(v128) = *v144;
  v40 = swift_allocObject();
  v40[2] = v36;
  v40[3] = 0x402E000000000000;
  v41 = v146;
  v40[4] = v145;
  v40[5] = v41;
  type metadata accessor for WidgetExtensionSessionWatchdog();
  v42 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v43 = swift_allocObject();
  v123 = v36;

  v44 = swift_slowAlloc();
  *v44 = 0;
  *(v43 + 16) = v44;
  v42[4] = v43;
  v45 = v137;
  sub_1922251A0();
  sub_192225160();
  v46 = *(v138 + 8);
  v125 = v138 + 8;
  v124 = v46;
  v46(v45, v143);
  v47 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v48 = sub_192227930();

  v49 = [v47 initWithIdentifier_];

  v42[5] = v49;
  v42[6] = sub_1921C6288;
  v42[7] = v40;
  v42[2] = v129;
  v42[3] = v39;
  v50 = MEMORY[0x1E69E7F98];
  if (v128 >= 3)
  {
    v50 = MEMORY[0x1E69E7F88];
  }

  (*(v24 + 104))(v27, *v50, v23);
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);

  v51 = sub_1922280B0();
  result = (*(v24 + 8))(v27, v23);
  v42[8] = v51;
  v53 = v42[5];
  if (v53)
  {
    v54 = v53;

    v55 = v42[8];
    *&v149 = sub_1921C6298;
    *(&v149 + 1) = v42;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v148 = sub_192037950;
    *(&v148 + 1) = &block_descriptor_6;
    v56 = _Block_copy(&aBlock);
    v57 = v55;

    [v54 scheduleWithFireInterval:v57 leewayInterval:v56 queue:15.0 handler:0.0];
    _Block_release(v56);

    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v58 = sub_1922258B0();
    v59 = __swift_project_value_buffer(v58, qword_1EAE00728);
    v60 = v123;
    v121 = v59;
    v61 = sub_192225890();
    v62 = sub_192227FB0();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&aBlock = v64;
      *v63 = 136446210;
      v65 = [v60 bundleIdentifier];
      v66 = sub_192227960();
      v68 = v67;

      v69 = sub_19202B8CC(v66, v68, &aBlock);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_192028000, v61, v62, "[%{public}s] Creating session...", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x193B0C7F0](v64, -1, -1);
      MEMORY[0x193B0C7F0](v63, -1, -1);
    }

    v70 = v144[48];
    v122 = v42;
    if (v70)
    {
      if (qword_1EADECBA8 != -1)
      {
        swift_once();
      }

      v71 = &qword_1EADECBB0;
    }

    else
    {
      if (qword_1EADECBC0 != -1)
      {
        swift_once();
      }

      v71 = &qword_1EADECBC8;
    }

    v81 = *v71;
    sub_1922251A0();
    v82 = v60;
    v83 = v135;
    v123 = v82;
    sub_1922256E0();
    v129 = swift_allocBox();
    v85 = v84;
    v86 = v139;
    v87 = v140;
    v88 = *(v140 + 16);
    v88(v20, v83, v139);
    sub_1922255F0();
    v128 = v81;
    sub_192225620();

    sub_192225630();
    sub_192225640();
    v89 = v144;
    v90 = *(v144 + 7);

    sub_192225660();
    v88(v20, v83, v86);
    v91 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v92 = swift_allocObject();
    (*(v87 + 32))(v92 + v91, v20, v86);
    sub_192225610();
    *(&v148 + 1) = &type metadata for FeatureFlags.Widgets;
    *&v149 = sub_19202DBA4();
    LOBYTE(aBlock) = 18;
    v93 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if (v93)
    {
      v94 = v130;
      v88(v130, v83, v86);
      v95 = sub_192225890();
      v96 = sub_192227FB0();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&aBlock = v98;
        *v97 = 136446210;
        v99 = sub_1922256C0();
        v101 = v100;
        (*(v140 + 8))(v94, v139);
        v102 = sub_19202B8CC(v99, v101, &aBlock);

        *(v97 + 4) = v102;
        _os_log_impl(&dword_192028000, v95, v96, "Overriding assertion attributes in launch case: %{public}s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        v103 = v98;
        v89 = v144;
        MEMORY[0x193B0C7F0](v103, -1, -1);
        MEMORY[0x193B0C7F0](v97, -1, -1);
      }

      else
      {

        (*(v140 + 8))(v94, v86);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_19222C680;
      LOBYTE(aBlock) = *v89;
      *(v104 + 32) = sub_1921C549C(&aBlock);
      sub_192225650();
    }

    v105 = v134;
    (*(v134 + 16))(v136, v85, v142);
    sub_19202D29C(v89, &aBlock);
    v106 = v137;
    v107 = v138;
    (*(v138 + 16))(v137, v141, v143);
    v108 = (*(v107 + 80) + 144) & ~*(v107 + 80);
    v109 = swift_allocObject();
    v110 = v123;
    v111 = v122;
    *(v109 + 16) = v123;
    *(v109 + 24) = v111;
    v112 = v146;
    *(v109 + 32) = v145;
    *(v109 + 40) = v112;
    v113 = v129;
    *(v109 + 48) = v127;
    *(v109 + 56) = v113;
    v114 = v148;
    *(v109 + 64) = aBlock;
    *(v109 + 80) = v114;
    v115 = v150;
    *(v109 + 96) = v149;
    *(v109 + 112) = v115;
    v116 = v126;
    *(v109 + 128) = sub_1920327F8;
    *(v109 + 136) = v116;
    v117 = v106;
    v118 = v143;
    (*(v107 + 32))(v109 + v108, v117, v143);
    v119 = v110;

    v120 = v136;
    sub_1922256A0();

    (*(v105 + 8))(v120, v142);
    (*(v140 + 8))(v135, v139);
    v124(v141, v118);
  }

  __break(1u);
  return result;
}

uint64_t sub_19202CE7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19202CEB4()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19202CEF4()
{
  v1 = sub_1922251B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 56);

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  v8 = *(v0 + 120);

  v9 = *(v0 + 136);

  (*(v2 + 8))(v0 + ((v3 + 144) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_19202CFFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_19202D088(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

const char *sub_19202D0B8(char a1)
{
  result = "BackgroundAbsentCheck";
  switch(a1)
  {
    case 1:
      result = "AnimatedTransition";
      break;
    case 2:
      result = "InteractiveWidgets";
      break;
    case 3:
      result = "PrefetchRemoteSnapshots2";
      break;
    case 4:
      result = "InteractiveSystemSmall";
      break;
    case 5:
      result = "FirstPartyContentMargins";
      break;
    case 6:
      result = "InteractiveWatchOS";
      break;
    case 7:
      result = "AnimatedTransitionWatchOS";
      break;
    case 8:
      result = "RelevanceDuringTimelineReload";
      break;
    case 9:
      result = "ContextualWidgets";
      break;
    case 10:
      result = "ControlsBuildAndRunHack";
      break;
    case 11:
      result = "IntelligentWidgets";
      break;
    case 12:
      result = "RemoteControls";
      break;
    case 13:
      result = "ReverseRemoteWidgetSource";
      break;
    case 14:
      result = "FFGatedWidgets";
      break;
    case 15:
      result = "CorrectDominoContentMargins";
      break;
    case 16:
      result = "ForceLayerSeparation";
      break;
    case 17:
      result = "GlassPrototype";
      break;
    case 18:
      result = "WidgetExtensionRunQOSUtility";
      break;
    case 19:
      result = "UIIntelligence";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit0A35ExtensionSessionSuspensionObserving_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_19202D2EC(uint64_t a1, void *a2, char *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v82 = a8;
  v77 = a7;
  v84 = a5;
  v85 = a4;
  v88 = a3;
  v83 = a2;
  v12 = sub_1922256D0();
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_192225670();
  v75 = *(v76 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1922251B0();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1922256B0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v87 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v75 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF0, &unk_192240600);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v75 - v30);
  sub_19202CFFC(a1, &v75 - v30, &qword_1EADF1BF0, &unk_192240600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v33 = sub_1922258B0();
    __swift_project_value_buffer(v33, qword_1EAE00728);
    v34 = v83;
    v35 = v32;
    v36 = sub_192225890();
    v37 = sub_192227FB0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v90[0] = v40;
      *v38 = 136446466;
      v41 = [v34 bundleIdentifier];
      v42 = sub_192227960();
      v44 = v43;

      v45 = sub_19202B8CC(v42, v44, v90);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2112;
      *(v38 + 14) = v35;
      *v39 = v35;
      v46 = v35;
      _os_log_impl(&dword_192028000, v36, v37, "[%{public}s] Failed to launch extension with error: %@.", v38, 0x16u);
      sub_192033970(v39, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x193B0C7F0](v40, -1, -1);
      MEMORY[0x193B0C7F0](v38, -1, -1);
    }

    v47 = v88;
    if (sub_19202DC80())
    {

      v48 = sub_192225890();
      v49 = sub_192227FB0();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v90[0] = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_19202B8CC(*(v47 + 2), *(v47 + 3), v90);
        _os_log_impl(&dword_192028000, v48, v49, "[%{public}s] Original request finally completed, but it had already watchdogged.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x193B0C7F0](v51, -1, -1);
        MEMORY[0x193B0C7F0](v50, -1, -1);
      }
    }

    else
    {
      v85(0);
    }
  }

  else
  {
    (*(v22 + 32))(v27, v31, v21);
    (*(v22 + 16))(v87, v27, v21);
    sub_19202D29C(v82, v90);
    v52 = v81;
    (*(v81 + 16))(v86, a11, v18);
    v53 = v88;
    v54 = v21;
    v55 = v22;
    v56 = v18;
    if (sub_19202DC80())
    {
      v57 = v53;
      if (qword_1EADECEC0 != -1)
      {
        swift_once();
      }

      v58 = sub_1922258B0();
      __swift_project_value_buffer(v58, qword_1EAE00728);

      v59 = sub_192225890();
      v60 = sub_192227FB0();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v89 = v62;
        *v61 = 136446210;
        *(v61 + 4) = sub_19202B8CC(*(v57 + 2), *(v57 + 3), &v89);
        _os_log_impl(&dword_192028000, v59, v60, "[%{public}s] Original request finally completed, but it had already watchdogged. Skipping session creation.", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        MEMORY[0x193B0C7F0](v62, -1, -1);
        MEMORY[0x193B0C7F0](v61, -1, -1);
      }

      (*(v52 + 8))(v86, v56);
      sub_1920313E8(v90);
      v63 = *(v55 + 8);
      v63(v87, v54);
      v63(v27, v54);
    }

    else
    {
      v64 = v52;
      v83 = a10;
      v88 = v27;
      v65 = swift_projectBox();
      swift_beginAccess();
      v66 = v54;
      v67 = v75;
      v68 = v56;
      v69 = v76;
      (*(v75 + 16))(v17, v65, v76);
      v70 = v78;
      sub_192225600();
      (*(v67 + 8))(v17, v69);
      v71 = v87;
      v72 = v86;
      v73 = sub_192032834(v70, v87, v90, a9, v83, v86);
      (*(v79 + 8))(v70, v80);
      v85(v73);
      swift_unknownObjectRelease();
      (*(v64 + 8))(v72, v68);
      sub_1920313E8(v90);
      v74 = *(v55 + 8);
      v74(v71, v66);
      v74(v88, v66);
    }
  }
}

unint64_t sub_19202DBA4()
{
  result = qword_1ED74A178;
  if (!qword_1ED74A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A178);
  }

  return result;
}

BOOL sub_19202DC80()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = v2;
    [v3 cancel];
    [v3 invalidate];

    v4 = *(v0 + 40);
    *(v0 + 40) = 0;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2 == 0;
}

uint64_t static ControlCenter.shared.getter()
{
  if (qword_1EADED188 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19202DD80()
{
  type metadata accessor for ControlCenterClient();
  v0 = swift_allocObject();
  result = sub_19202DF3C();
  qword_1EAE00778 = v0;
  return result;
}

uint64_t sub_19202DDBC()
{
  if (qword_1EADED118 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAE00778;
  v1 = type metadata accessor for ControlCenterClient();
  v11[3] = v1;
  v11[4] = &off_1F06B72C0;
  v11[0] = v0;
  type metadata accessor for ControlCenter();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v1);
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v2[5] = v1;
  v2[6] = &off_1F06B72C0;
  v2[2] = v8;

  result = __swift_destroy_boxed_opaque_existential_1(v11);
  qword_1EADED190 = v2;
  return result;
}

uint64_t sub_19202DF3C()
{
  v12 = sub_192228070();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_192228050();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_192227790();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v11[0] = "rviceConnectionContext>8";
  v11[1] = v9;
  sub_192227750();
  v13 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C5D8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_19202A880(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v12);
  *(v0 + 16) = sub_1922280A0();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_19202E1A0(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v110 = type metadata accessor for ViewableTimelineEntry();
  v106 = *(v110 - 8);
  v9 = *(v106 + 64);
  v10 = MEMORY[0x1EEE9AC00](v110);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v109 = &v95 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v95 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v95 - v18;
  v108 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1920C4474(a4);
    }

    v111 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v108)
      {
        v91 = *(result + 16 * a4);
        v92 = result;
        v93 = *(result + 16 * (a4 - 1) + 40);
        sub_19209B588(*v108 + *(v106 + 72) * v91, *v108 + *(v106 + 72) * *(result + 16 * (a4 - 1) + 32), *v108 + *(v106 + 72) * v93, v5);
        if (v6)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1920C4474(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_123;
        }

        v94 = &v92[16 * a4];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_19202F018(a4 - 1);
        result = v111;
        a4 = *(v111 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v97 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v101 = v22;
    if (v24 >= v20)
    {
      v30 = v24;
    }

    else
    {
      v25 = *(v106 + 72);
      v5 = *v108 + v25 * v24;
      v104 = *v108;
      v26 = v104;
      sub_19204E6EC(v104 + v25 * v24, v19, type metadata accessor for ViewableTimelineEntry);
      sub_19204E6EC(v26 + v25 * v23, v16, type metadata accessor for ViewableTimelineEntry);
      LODWORD(v105) = sub_192225100();
      sub_192046EE8(v16, type metadata accessor for ViewableTimelineEntry);
      result = sub_192046EE8(v19, type metadata accessor for ViewableTimelineEntry);
      v96 = v23;
      v27 = v23 + 2;
      v107 = v25;
      v28 = v104 + v25 * (v23 + 2);
      while (v20 != v27)
      {
        sub_19204E6EC(v28, v19, type metadata accessor for ViewableTimelineEntry);
        sub_19204E6EC(v5, v16, type metadata accessor for ViewableTimelineEntry);
        v29 = sub_192225100() & 1;
        sub_192046EE8(v16, type metadata accessor for ViewableTimelineEntry);
        result = sub_192046EE8(v19, type metadata accessor for ViewableTimelineEntry);
        ++v27;
        v28 += v107;
        v5 += v107;
        if ((v105 & 1) != v29)
        {
          v30 = v27 - 1;
          goto LABEL_11;
        }
      }

      v30 = v20;
LABEL_11:
      v23 = v96;
      a4 = v97;
      if (v105)
      {
        if (v30 < v96)
        {
          goto LABEL_126;
        }

        if (v96 < v30)
        {
          v95 = v6;
          v31 = v107 * (v30 - 1);
          v32 = v30 * v107;
          v105 = v30;
          v33 = v30;
          v34 = v96 * v107;
          do
          {
            if (v23 != --v33)
            {
              v35 = *v108;
              if (!*v108)
              {
                goto LABEL_132;
              }

              v5 = v35 + v34;
              sub_19203CFC0(v35 + v34, v100, type metadata accessor for ViewableTimelineEntry);
              if (v34 < v31 || v5 >= v35 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_19203CFC0(v100, v35 + v31, type metadata accessor for ViewableTimelineEntry);
            }

            ++v23;
            v31 -= v107;
            v32 -= v107;
            v34 += v107;
          }

          while (v23 < v33);
          v6 = v95;
          v23 = v96;
          a4 = v97;
          v30 = v105;
        }
      }
    }

    v36 = v108[1];
    if (v30 < v36)
    {
      if (__OFSUB__(v30, v23))
      {
        goto LABEL_125;
      }

      if (v30 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v36)
        {
          v37 = v108[1];
        }

        else
        {
          v37 = v23 + a4;
        }

        if (v37 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v30 != v37)
        {
          break;
        }
      }
    }

    v38 = v30;
    if (v30 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v101;
    }

    else
    {
      result = sub_1920C2D78(0, *(v101 + 2) + 1, 1, v101);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v39 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = sub_1920C2D78((v39 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v40 = &v22[16 * a4];
    *(v40 + 4) = v23;
    *(v40 + 5) = v38;
    v41 = *v98;
    if (!*v98)
    {
      goto LABEL_134;
    }

    v102 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v22 + 4);
          v44 = *(v22 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_54:
          if (v46)
          {
            goto LABEL_113;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_116;
          }

          v65 = &v22[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_120;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v69 = &v22[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_68:
        if (v64)
        {
          goto LABEL_115;
        }

        v72 = &v22[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
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
          goto LABEL_128;
        }

        if (!*v108)
        {
          goto LABEL_131;
        }

        v80 = v22;
        v81 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v42 + 40];
        sub_19209B588(*v108 + *(v106 + 72) * v81, *v108 + *(v106 + 72) * *&v22[16 * v42 + 32], *v108 + *(v106 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1920C4474(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_110;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v111 = v80;
        result = sub_19202F018(v42);
        v22 = v111;
        v5 = *(v111 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v22[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_111;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_112;
      }

      v54 = &v22[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_114;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_117;
      }

      if (v58 >= v50)
      {
        v76 = &v22[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_121;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v108[1];
    v21 = v102;
    a4 = v97;
    if (v102 >= v20)
    {
      goto LABEL_96;
    }
  }

  v95 = v6;
  v96 = v23;
  v83 = *v108;
  v84 = *(v106 + 72);
  v85 = *v108 + v84 * (v30 - 1);
  v86 = -v84;
  v87 = v23 - v30;
  v99 = v84;
  v5 = v83 + v30 * v84;
  v102 = v37;
LABEL_86:
  v104 = v87;
  v105 = v30;
  v103 = v5;
  v88 = v87;
  v107 = v85;
  while (1)
  {
    sub_19204E6EC(v5, v19, type metadata accessor for ViewableTimelineEntry);
    sub_19204E6EC(v85, v16, type metadata accessor for ViewableTimelineEntry);
    a4 = sub_192225100();
    sub_192046EE8(v16, type metadata accessor for ViewableTimelineEntry);
    result = sub_192046EE8(v19, type metadata accessor for ViewableTimelineEntry);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v30 = v105 + 1;
      v85 = v107 + v99;
      v87 = v104 - 1;
      v38 = v102;
      v5 = v103 + v99;
      if (v105 + 1 != v102)
      {
        goto LABEL_86;
      }

      v6 = v95;
      v23 = v96;
      if (v102 < v96)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v83)
    {
      break;
    }

    a4 = type metadata accessor for ViewableTimelineEntry;
    v89 = v109;
    sub_19203CFC0(v5, v109, type metadata accessor for ViewableTimelineEntry);
    swift_arrayInitWithTakeFrontToBack();
    sub_19203CFC0(v89, v85, type metadata accessor for ViewableTimelineEntry);
    v85 += v86;
    v5 += v86;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

void *sub_19202EAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC80, &qword_19222B070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v31 - v4;
  v5 = sub_192225A40();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = sub_192046E20(a1, off_1ED74BF08);
    v12 = swift_endAccess();
    if (!v11)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v42 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC88, &qword_19222B078);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v11 + 16) + 80))(v12);
    v15 = sub_1920702EC(v13, v14);

    if (!v15)
    {

      return 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v11;
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_192228340();
    v39 = v11;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a1 = 0;
    v37 = (v33 + 56);
    v38 = v15 & 0xC000000000000001;
    v35 = (v33 + 32);
    v36 = (v33 + 48);
    v40 = MEMORY[0x1E69E7CC0];
    v31 = v9;
    v34 = v17;
    while (v38)
    {
      v19 = MEMORY[0x193B0B410](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v21 = v15;
      (*(**(v39 + 16) + 120))(*(v19 + 24), v5, v5);
      v22 = v41;
      (*v37)(v41, 0, 1, v5);

      if ((*v36)(v22, 1, v5) == 1)
      {
        sub_192033970(v22, &qword_1EADEEC80, &qword_19222B070);
      }

      else
      {
        v23 = *v35;
        v24 = v22;
        v25 = v32;
        (*v35)(v32, v24, v5);
        v23(v9, v25, v5);
        v26 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1920C339C(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        v40 = v26;
        if (v28 >= v27 >> 1)
        {
          v40 = sub_1920C339C(v27 > 1, v28 + 1, 1, v40);
        }

        v29 = v40;
        v40[2] = v28 + 1;
        v9 = v31;
        v23(&v29[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28], v31, v5);
      }

      v15 = v21;
      ++v18;
      if (v20 == v34)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v19 = *(v15 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v40;
}

uint64_t sub_19202F018(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1920C4474(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetBackgroundStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetBackgroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t View.widgetAccentable(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v38 = a3;
  LODWORD(v34) = a1;
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v12 = sub_192225C70();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = sub_1922266F0();
  v36 = *(v20 - 8);
  v21 = *(v36 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v33 - v23;
  if (v34)
  {
    v34 = v20;
    v25 = v38;
    MEMORY[0x193B0A190](v22, a2, MEMORY[0x1E6980900], v38);
    v39 = v25;
    v40 = MEMORY[0x1E69808F8];
    WitnessTable = swift_getWitnessTable();
    v26 = v13[2];
    v26(v19, v17, v12);
    v27 = v13[1];
    v27(v17, v12);
    v26(v17, v19, v12);
    v20 = v34;
    sub_19202F62C(v17, v12);
    v27(v17, v12);
    v27(v19, v12);
  }

  else
  {
    v28 = v5[2];
    v28(v11, WitnessTable, a2);
    v28(v9, v11, a2);
    v45 = v38;
    v46 = MEMORY[0x1E69808F8];
    swift_getWitnessTable();
    sub_1921BAB5C(v9, v12, a2);
    v29 = v5[1];
    v29(v9, a2);
    v29(v11, a2);
  }

  v30 = v38;
  v43 = v38;
  v44 = MEMORY[0x1E69808F8];
  v41 = swift_getWitnessTable();
  v42 = v30;
  swift_getWitnessTable();
  v31 = v36;
  (*(v36 + 16))(v37, v24, v20);
  return (*(v31 + 8))(v24, v20);
}

uint64_t sub_19202F62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1922266D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1922266E0();
}

uint64_t sub_19202F724@<X0>(_BYTE *a1@<X8>)
{
  sub_19202F774();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19202F774()
{
  result = qword_1ED74B5C0;
  if (!qword_1ED74B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B5C0);
  }

  return result;
}

uint64_t EnvironmentValues.widgetRenderingMode.getter()
{
  sub_19202F774();

  return sub_1922261E0();
}

void sub_19202F84C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = a1;
    v5 = sub_192225890();
    v6 = sub_192227F90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &v18);
      *(v7 + 12) = 2114;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_192028000, v5, v6, "%{public}s - error reloading all timelines: %{public}@", v7, 0x16u);
      sub_192033970(v8, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    oslog = sub_192225890();
    v13 = sub_192227FB0();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &v18);
      _os_log_impl(&dword_192028000, oslog, v13, "%{public}s - reloaded all timelines", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);

      return;
    }

    v16 = oslog;
  }
}

uint64_t sub_19202FB90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v26 - v7;
  v9 = sub_19202B38C();
  aBlock[4] = sub_1921275BC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_63;
  v10 = _Block_copy(aBlock);
  v11 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v10);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(aBlock, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v12 = aBlock[7];
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1922258B0();
    __swift_project_value_buffer(v13, qword_1ED74CCC8);

    v14 = sub_192225890();
    v15 = sub_192227FB0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_19202B8CC(a2, a3, v26);
      _os_log_impl(&dword_192028000, v14, v15, "Invalidate widget relevances for %{public}s.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x193B0C7F0](v17, -1, -1);
      MEMORY[0x193B0C7F0](v16, -1, -1);
    }

    v18 = sub_192227CF0();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v12;
    v19[5] = a2;
    v19[6] = a3;

    swift_unknownObjectRetain();
    sub_19211CA04(0, 0, v8, &unk_192234AC0, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v20 = sub_1922258B0();
    __swift_project_value_buffer(v20, qword_1ED74CCC8);
    v21 = sub_192225890();
    v22 = sub_192227F90();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, v26);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x193B0C7F0](v24, -1, -1);
      MEMORY[0x193B0C7F0](v23, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1920300A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_192227710();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_192227790();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_19203040C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);

  sub_192227740();
  v20 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_192030384()
{
  result = sub_192030418();
  if (result)
  {
    v1 = result;
    v2 = sub_192227930();
    [v1 reloadControlsOfKind_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19203040C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_192030384();
}

uint64_t sub_192030418()
{
  v1 = *(v0 + 16);
  BSDispatchQueueAssert();
  sub_192030664();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    if ([v3 remoteTarget])
    {
      sub_1922282B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF22D8, &unk_192243A70);
      if (swift_dynamicCast())
      {

        return v12;
      }
    }

    else
    {
      sub_192030F04(v15);
    }

    if (qword_1EADED330 != -1)
    {
      swift_once();
    }

    v8 = sub_1922258B0();
    __swift_project_value_buffer(v8, qword_1EAE00788);
    v9 = sub_192225890();
    v10 = sub_192227FA0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_192028000, v9, v10, "Failed to cast connection to server interface protocol", v11, 2u);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EADED330 != -1)
    {
      swift_once();
    }

    v4 = sub_1922258B0();
    __swift_project_value_buffer(v4, qword_1EAE00788);
    v3 = sub_192225890();
    v5 = sub_192227FA0();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_192028000, v3, v5, "Failed to establish a connection", v6, 2u);
      MEMORY[0x193B0C7F0](v6, -1, -1);
    }
  }

  return 0;
}

void sub_192030664()
{
  v1 = *(v0 + 16);
  BSDispatchQueueAssert();
  sub_1920307C0();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    if ([v3 remoteTarget])
    {
      sub_1922282B0();
      swift_unknownObjectRelease();

      sub_192030F04(v8);
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      sub_192030F04(v8);
      if (qword_1EADED330 != -1)
      {
        swift_once();
      }

      v4 = sub_1922258B0();
      __swift_project_value_buffer(v4, qword_1EAE00788);
      v5 = sub_192225890();
      v6 = sub_192227FB0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_192028000, v5, v6, "Activating client connection.", v7, 2u);
        MEMORY[0x193B0C7F0](v7, -1, -1);
      }

      [v3 activate];
    }
  }
}

void sub_1920307C0()
{
  v1 = *(v0 + 16);
  BSDispatchQueueAssert();
  if (*(v0 + 24))
  {
    return;
  }

  v2 = "expirationHandler";
  v3 = sub_192227930();
  v4 = sub_192227930();
  v13 = [objc_opt_self() endpointForMachName:v3 service:v4 instance:0];

  if (!v13)
  {
    goto LABEL_7;
  }

  v5 = [objc_opt_self() connectionWithEndpoint_];
  if (v5)
  {
    v6 = *(v0 + 24);
    *(v0 + 24) = v5;
    v7 = v5;

    v8 = swift_allocObject();
    *(v8 + 16) = sub_192030B60;
    *(v8 + 24) = v0;
    aBlock[4] = sub_192030B68;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_192030B0C;
    aBlock[3] = &block_descriptor_25;
    v2 = _Block_copy(aBlock);

    [v7 configureConnection_];

    _Block_release(v2);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EADED330 != -1)
    {
      swift_once();
    }

    v9 = sub_1922258B0();
    __swift_project_value_buffer(v9, qword_1EAE00788);
    v13 = sub_192225890();
    v10 = sub_192227FA0();
    if (os_log_type_enabled(v13, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_19202B8CC(0xD00000000000001ELL, v2 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_192028000, v13, v10, "Unable to get endpoint for mach-service: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);

      return;
    }
  }
}

uint64_t sub_192030B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_192030B68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_192030B90(void *a1, uint64_t a2)
{
  v4 = sub_192227930();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EADED6C0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EADED6C8;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EADED6A8 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EADED690 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v17 = sub_1920311D0;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1921EC5C0;
  v16 = &block_descriptor_28;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1921EC628;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1921EC5C0;
  v16 = &block_descriptor_31;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1921EC634;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1921EC5C0;
  v16 = &block_descriptor_34_0;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

uint64_t sub_192030F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

id sub_192030FF0()
{
  result = [objc_opt_self() userInteractive];
  qword_1EADED698 = result;
  return result;
}

uint64_t sub_19203103C()
{
  v0 = sub_1922258B0();
  __swift_allocate_value_buffer(v0, qword_1EAE00788);
  __swift_project_value_buffer(v0, qword_1EAE00788);
  return sub_1922258A0();
}

id sub_1920310BC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_192031164(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1920311DC(uint64_t a1, const char *a2)
{
  if (qword_1EADED330 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE00788);
  oslog = sub_192225890();
  v4 = sub_192227FB0();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_192028000, oslog, v4, a2, v5, 2u);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

id sub_1920312CC(uint64_t a1, uint64_t a2, void *a3, void **a4)
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

unint64_t sub_192031330()
{
  result = qword_1EADECA98;
  if (!qword_1EADECA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA98);
  }

  return result;
}

unint64_t sub_192031384()
{
  result = qword_1EADECA30;
  if (!qword_1EADECA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1378, qword_19223AA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA30);
  }

  return result;
}

uint64_t sub_192031418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a4;
  v45 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B98, &unk_1922404F0);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - v12;
  v48 = *a1;
  v13 = *(a1 + 8);
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1922258B0();
  __swift_project_value_buffer(v14, qword_1EAE00728);

  v15 = sub_192225890();
  v16 = sub_192227FB0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = v13;
    v19 = swift_slowAlloc();
    v50[0] = v19;
    *v17 = 136446466;
    v20 = sub_19203418C();
    v22 = a2;
    v23 = sub_19202B8CC(v20, v21, v50);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    v51[1] = v48;
    v52 = v18;
    v24 = WidgetExtensionSessionOperation.description.getter();
    v26 = sub_19202B8CC(v24, v25, v50);

    *(v17 + 14) = v26;
    a2 = v22;
    swift_arrayDestroy();
    v27 = v19;
    v13 = v18;
    MEMORY[0x193B0C7F0](v27, -1, -1);
    MEMORY[0x193B0C7F0](v17, -1, -1);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  v30 = v48;
  *(v29 + 16) = v6;
  *(v29 + 24) = v30;
  *(v29 + 32) = v13;
  *(v29 + 40) = v28;
  *(v29 + 48) = a2;
  *(v29 + 56) = a3;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1920327B4;
  *(v31 + 24) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA0, &qword_192240500);
  sub_192031E74(&qword_1EADECEA0, &qword_1EADF1BA0, &qword_192240500);
  sub_192225920();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v28;
  *(v34 + 32) = v30;
  *(v34 + 40) = v13;
  v35 = v45;
  *(v34 + 48) = v44;
  *(v34 + 56) = v35;
  *(v34 + 64) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = v6;
  *(v36 + 24) = v30;
  *(v36 + 32) = v13;
  sub_192031E74(&qword_1EADECE98, &qword_1EADF1B98, &unk_1922404F0);

  v37 = v47;
  v38 = sub_192225970();

  swift_beginAccess();
  v39 = *(v32 + 16);
  *(v32 + 16) = v38;

  v40 = *(v6 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  os_unfair_lock_lock(*(v40 + 16));
  v41 = *(v32 + 16);
  if (v41)
  {
    swift_beginAccess();
    swift_retain_n();
    sub_192035074(v51, v41);
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v40 + 16));

  (*(v46 + 8))(v49, v37);
}

uint64_t sub_192031984()
{

  return swift_deallocObject();
}

uint64_t sub_1920319BC()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_192031A04()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_192031A3C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_192031A8C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

unint64_t WidgetExtensionSessionOperation.description.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      sub_192228400();

      v3 = 0xD000000000000010;
    }

    else
    {
      sub_192228400();

      v3 = 0xD000000000000014;
    }

    v6 = v3;
    goto LABEL_13;
  }

  if (v1 == 2)
  {
    sub_192228400();

    v2 = 0x6C656D6954746567;
    goto LABEL_8;
  }

  if (v1 == 3)
  {
    sub_192228400();

    v2 = 0x7669746341746567;
LABEL_8:
    v6 = v2;
LABEL_13:
    v5 = sub_192228910();
    MEMORY[0x193B0A990](v5);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    return v6;
  }

  result = 0x7263736544746567;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x72746E6F43746567;
      break;
    case 3:
      result = 0x72746E6F43746573;
      break;
    case 4:
      result = 0x546C6F72746E6F63;
      break;
    case 5:
      result = 0x6563616C50746567;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x6C656D6954746567;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 0xALL:
      result = 0x68737550646E6573;
      break;
    case 0xBLL:
      result = 0x754D656C646E6168;
      break;
    case 0xCLL:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192031E74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_192031EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA0, &qword_192240500);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  result = sub_192225910();
  *a3 = result;
  return result;
}

uint64_t sub_192031F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v81 = a8;
  v82 = a7;
  v78 = a6;
  v85 = a5;
  v84 = a4;
  v77 = sub_192225150();
  v76 = *(v77 - 8);
  v11 = *(v76 + 64);
  v12 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v73 - v14;
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v15 = sub_1922258B0();
  __swift_project_value_buffer(v15, qword_1EAE00728);

  v16 = sub_192225890();
  v17 = sub_192227FB0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v92[0] = v19;
    *v18 = 136446466;
    v20 = sub_19203418C();
    v22 = sub_19202B8CC(v20, v21, v92);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    aBlock = v84;
    LOBYTE(v87) = v85;
    v23 = WidgetExtensionSessionOperation.description.getter();
    v25 = sub_19202B8CC(v23, v24, v92);

    *(v18 + 14) = v25;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v19, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  v26 = swift_allocObject();
  v83 = a1;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v80 = a2;

  v79 = sub_192038344(sub_1921C8AB0, v26);

  v27 = sub_1922255D0();
  LODWORD(v26) = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = HIDWORD(v27);
  v35 = HIDWORD(v28);
  v36 = HIDWORD(v30);
  v37 = HIDWORD(v32);
  v38 = objc_allocWithZone(MEMORY[0x1E698E620]);
  aBlock = __PAIR64__(v34, v26);
  v87 = __PAIR64__(v35, v29);
  v88 = __PAIR64__(v36, v31);
  v89 = __PAIR64__(v37, v33);
  v39 = [v38 initWithAuditToken_];
  [v39 pid];

  if (BSPIDIsBeingDebugged())
  {

    v40 = sub_192225890();
    v41 = sub_192227FB0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v92[0] = v43;
      *v42 = 136446466;
      v44 = sub_19203418C();
      v46 = sub_19202B8CC(v44, v45, v92);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      aBlock = v84;
      LOBYTE(v87) = v85;
      v47 = WidgetExtensionSessionOperation.description.getter();
      v49 = sub_19202B8CC(v47, v48, v92);

      *(v42 + 14) = v49;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v43, -1, -1);
      MEMORY[0x193B0C7F0](v42, -1, -1);
    }

    v50 = v80;
  }

  else
  {
    v51 = *(a3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutProvider);
    v52 = *(a3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutProvider + 8);
    aBlock = v84;
    LOBYTE(v87) = v85;
    v51(&aBlock);
    v50 = v80;
    if ((v53 & 1) == 0)
    {
      v54 = qword_192240688[*(a3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_schedulingPriority)];
      aBlock = 0;
      v87 = 0xE000000000000000;
      sub_192228400();

      aBlock = 0x5B6E6F6973736553;
      v87 = 0xE800000000000000;
      sub_1922251B0();
      sub_192034F00(&qword_1EADED368, MEMORY[0x1E69695A8]);
      v55 = sub_192228910();
      MEMORY[0x193B0A990](v55);

      MEMORY[0x193B0A990](0xD000000000000010, 0x800000019224DC40);
      v56 = objc_allocWithZone(MEMORY[0x1E698E7A0]);
      v57 = sub_192227930();

      v58 = [v56 initWithIdentifier_];

      v59 = v78;
      swift_beginAccess();
      v60 = *(v59 + 16);
      *(v59 + 16) = v58;

      swift_beginAccess();
      v61 = *(v59 + 16);
      if (v61)
      {
        v62 = v61;
        v63 = v74;
        _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
        v64 = v75;
        sub_1922250E0();
        v65 = *(v76 + 8);
        v66 = v77;
        v65(v63, v77);
        v67 = sub_1922250F0();
        v65(v64, v66);
        v68 = *(a3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutQueue);
        v69 = swift_allocObject();
        v70 = v84;
        *(v69 + 16) = a3;
        *(v69 + 24) = v70;
        *(v69 + 32) = v85;
        *(v69 + 40) = v83;
        *(v69 + 48) = v50;
        v90 = sub_1921C8B20;
        v91 = v69;
        aBlock = MEMORY[0x1E69E9820];
        v87 = 1107296256;
        v88 = sub_192037950;
        v89 = &block_descriptor_143_0;
        v71 = _Block_copy(&aBlock);

        [v62 scheduleForDate:v67 leewayInterval:v68 queue:v71 handler:1.0];
        _Block_release(v71);
      }
    }
  }

  v82(v79, v83, v50);
  return swift_unknownObjectRelease();
}

uint64_t sub_19203271C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1, uint64_t a2, char a3), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_1920394B0, v6);
}

void sub_1920327C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1921BBD34(a1);
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1920327F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_192032834(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v125 = a6;
  v124 = a5;
  v123 = a4;
  v122 = a3;
  v134 = a1;
  v131 = sub_1922256B0();
  v130 = *(v131 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v132 = &v112[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1922251B0();
  v129 = *(v9 - 8);
  v10 = *(v129 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v112[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v112[-v14];
  v16 = sub_1922256D0();
  v133 = *(v16 - 8);
  v17 = *(v133 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v128 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v112[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v112[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v112[-v25];
  v26 = a2;
  v27 = sub_192225690();
  v114 = v24;
  v115 = v15;
  v117 = v26;
  v126 = v21;
  v120 = v13;
  v128 = v9;
  v118 = [type metadata accessor for _WidgetExtensionBaseContext() _extensionAuxiliaryVendorProtocol];
  [v27 setRemoteObjectInterface_];
  [v27 resume];
  v28 = v133;
  v29 = v133 + 16;
  v127 = *(v133 + 16);
  v30 = v121;
  v127(v121, v134, v16);
  v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = v27;
  v33 = swift_allocObject();
  v116 = *(v28 + 32);
  v116(v33 + v31, v30, v16);
  v144 = sub_1921C9388;
  v145 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v141 = 1107296256;
  v142 = sub_19202AB80;
  v143 = &block_descriptor_457;
  v34 = _Block_copy(&aBlock);

  [v32 setInterruptionHandler_];
  _Block_release(v34);
  v119 = v29;
  v127(v30, v134, v16);
  v35 = v16;
  v36 = swift_allocObject();
  v116(v36 + v31, v30, v16);
  v37 = v130;
  v144 = sub_19203A8B4;
  v145 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v141 = 1107296256;
  v38 = v132;
  v142 = sub_19202AB80;
  v143 = &block_descriptor_463;
  v39 = _Block_copy(&aBlock);

  v121 = v32;
  [v32 setInvalidationHandler_];
  _Block_release(v39);
  v40 = v122;
  v41 = v131;
  v42 = v129;
  v43 = v125;
  if (*v122 >= 3u)
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v44 = sub_1922258B0();
    __swift_project_value_buffer(v44, qword_1EAE00728);
    v45 = v114;
    v127(v114, v134, v16);
    v46 = v115;
    v47 = v128;
    (*(v42 + 16))(v115, v43, v128);
    v48 = sub_192225890();
    v49 = sub_192227FB0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      aBlock = v116;
      *v50 = 136446466;
      v113 = v49;
      v51 = sub_1922256C0();
      v52 = v40;
      v54 = v53;
      (*(v133 + 8))(v45, v35);
      v55 = sub_19202B8CC(v51, v54, &aBlock);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2082;
      sub_192034F00(&qword_1EADED368, MEMORY[0x1E69695A8]);
      v56 = sub_192228910();
      v58 = v57;
      (*(v129 + 8))(v46, v47);
      v59 = sub_19202B8CC(v56, v58, &aBlock);
      v40 = v52;
      v43 = v125;

      *(v50 + 14) = v59;
      _os_log_impl(&dword_192028000, v48, v113, "[%{public}s-%{public}s] Created a new WidgetExtensionSession at user interactive priority.", v50, 0x16u);
      v60 = v116;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v60, -1, -1);
      v61 = v50;
      v42 = v129;
      MEMORY[0x193B0C7F0](v61, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v46, v47);
      (*(v133 + 8))(v45, v35);
    }

    v37 = v130;
    v38 = v132;
  }

  v127(v126, v134, v35);
  v62 = *(v37 + 16);
  v62(v38, v117, v41);
  v63 = *(v42 + 16);
  v63(v120, v43, v128);
  if (qword_1EADECB90 != -1)
  {
    swift_once();
  }

  v64 = v35;
  v122 = qword_1EADECB98;
  if (qword_1EADECAD0 != -1)
  {
    swift_once();
  }

  v65 = qword_1EAE006B0;
  sub_19202CFFC((v40 + 8), &aBlock, &qword_1EADF1B88, qword_192240150);
  LODWORD(v116) = v40[49];
  LODWORD(v117) = *v40;
  v66 = type metadata accessor for _RunningBoardInterface();
  v139[3] = v66;
  v139[4] = &off_1F06B4A90;
  v139[0] = v65;
  v67 = type metadata accessor for _WidgetExtensionSession();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v139, v66);
  v134 = v112;
  v72 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v112[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v75 + 16))(v74);
  v76 = *v74;
  v138[3] = v66;
  v138[4] = &off_1F06B4A90;
  v138[0] = v76;
  v77 = (v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  *v77 = 0;
  v77[1] = 0;
  v78 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock;
  type metadata accessor for UnfairLock();
  v79 = swift_allocObject();
  v125 = v65;
  swift_retain_n();
  v80 = swift_slowAlloc();
  *v80 = 0;
  *(v79 + 16) = v80;
  *(v70 + v78) = v79;
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_subscriptions) = MEMORY[0x1E69E7CD0];
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion) = 0;
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion) = 0;
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority) = 0;
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated) = 0;
  v81 = v64;
  v127((v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionIdentity), v126, v64);
  v62((v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionProcess), v132, v131);
  v82 = v120;
  v63((v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_sessionUUID), v120, v128);
  v83 = v121;
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_connection) = v121;
  v84 = v122;
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutQueue) = v122;
  v85 = (v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutProvider);
  v86 = v124;
  *v85 = v123;
  v85[1] = v86;
  sub_192033A64(v138, v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_rbsInterface);
  sub_19202CFFC(&aBlock, v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_suspensionObserver, &qword_1EADF1B88, qword_192240150);
  v87 = v116;
  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_shouldTakeExtensionAssertion) = v116;
  v136 = &type metadata for FeatureFlags.Widgets;
  v88 = sub_19202DBA4();
  v137 = v88;
  LOBYTE(v135[0]) = 18;
  v89 = v83;
  v90 = v84;

  LOBYTE(v86) = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(v135);
  v91 = (v86 & 1) == 0;
  v92 = v117;
  if (v91)
  {
    v93 = 2;
  }

  else
  {
    v93 = v117;
  }

  *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_schedulingPriority) = v93;
  if (v87 == 1)
  {
    v136 = &type metadata for FeatureFlags.Widgets;
    v137 = v88;
    LOBYTE(v135[0]) = 18;
    v94 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(v135);
    if (v94)
    {
      if (v92 < 2)
      {
        v97 = "WidgetExtensionRun-QOS-Utility";
        goto LABEL_22;
      }

      if (v92 - 3 < 2)
      {
        v95 = "WaitForWidgetSuspension";
        v96 = 0xD000000000000024;
        goto LABEL_23;
      }
    }

    v97 = "WidgetExtensionRun-QOS-Default";
LABEL_22:
    v95 = v97 - 32;
    v96 = 0xD00000000000001ELL;
LABEL_23:
    v98 = sub_192033AC8(v96, v95 | 0x8000000000000000);

    v82 = v120;
    if (v98)
    {
      v99 = *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion);
      *(v70 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion) = v98;
      swift_unknownObjectRelease();
    }
  }

  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v100 = sub_1922258B0();
  __swift_project_value_buffer(v100, qword_1EAE00728);

  v101 = sub_192225890();
  v102 = sub_192227FB0();

  v103 = os_log_type_enabled(v101, v102);
  v104 = v132;
  if (v103)
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v135[0] = v106;
    *v105 = 136446210;
    v107 = sub_19203418C();
    v109 = sub_19202B8CC(v107, v108, v135);
    v127 = v81;
    v110 = v109;

    *(v105 + 4) = v110;
    _os_log_impl(&dword_192028000, v101, v102, "%{public}s Session initialized", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x193B0C7F0](v106, -1, -1);
    MEMORY[0x193B0C7F0](v105, -1, -1);

    sub_192033970(&aBlock, &qword_1EADF1B88, qword_192240150);
    (*(v129 + 8))(v82, v128);
    (*(v130 + 8))(v104, v131);
    (*(v133 + 8))(v126, v127);
  }

  else
  {

    sub_192033970(&aBlock, &qword_1EADF1B88, qword_192240150);
    (*(v129 + 8))(v82, v128);
    (*(v130 + 8))(v104, v131);
    (*(v133 + 8))(v126, v81);
  }

  __swift_destroy_boxed_opaque_existential_1(v138);
  __swift_destroy_boxed_opaque_existential_1(v139);
  return v70;
}

uint64_t sub_192033970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for _WidgetExtensionSession()
{
  result = qword_1EADECCB0;
  if (!qword_1EADECCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192033A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_192033AC8(uint64_t a1, unint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v70 = sub_1922255D0();
  v71 = v4;
  v72 = v5;
  v73 = v6;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x1E698E620]) initWithAuditToken_];
  v11 = [v10 pid];

  if (v11 < 1)
  {
LABEL_13:
    v37 = 0;
    goto LABEL_14;
  }

  v64 = v3;
  v12 = sub_1922255D0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = HIDWORD(v12);
  v21 = HIDWORD(v14);
  v22 = HIDWORD(v16);
  v23 = HIDWORD(v18);
  v24 = objc_allocWithZone(MEMORY[0x1E698E620]);
  v70 = __PAIR64__(v20, v13);
  v71 = v15;
  v72 = v21;
  v73 = v17;
  v74 = v22;
  v75 = v19;
  v76 = v23;
  v25 = [v24 initWithAuditToken_];
  v26 = [v25 pid];

  v27 = [objc_opt_self() targetWithPid_];
  v28 = sub_192227930();
  v29 = sub_192227930();
  v30 = [objc_opt_self() attributeWithDomain:v28 name:v29];

  sub_19203418C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_19222C680;
  *(v31 + 32) = v30;
  v32 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v33 = v27;
  v34 = v30;
  v35 = sub_192227930();

  sub_19202A7A8(0, &qword_1ED748560, 0x1E69C7550);
  v36 = sub_192227B60();

  v37 = [v32 initWithExplanation:v35 target:v33 attributes:v36];

  v70 = 0;
  if (![v37 acquireWithError_])
  {
    v68 = v34;
    v48 = v70;
    v49 = sub_192224F90();

    swift_willThrow();
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v50 = sub_1922258B0();
    __swift_project_value_buffer(v50, qword_1EAE00728);

    v51 = v49;
    v52 = sub_192225890();
    v53 = sub_192227F90();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v66 = v33;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70 = v56;
      *v54 = 136446722;
      v57 = *(v3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
      v58 = *(v3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8);

      v59 = sub_19202B8CC(v57, v58, &v70);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_19202B8CC(a1, a2, &v70);
      *(v54 + 22) = 2114;
      v60 = v49;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 24) = v61;
      *v55 = v61;
      _os_log_impl(&dword_192028000, v52, v53, "%{public}s unable to acquire %{public}s error: %{public}@", v54, 0x20u);
      sub_192033970(v55, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v55, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v56, -1, -1);
      MEMORY[0x193B0C7F0](v54, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v38 = qword_1EADECEC0;
  v39 = v70;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = sub_1922258B0();
  __swift_project_value_buffer(v40, qword_1EAE00728);

  v41 = sub_192225890();
  v42 = sub_192227FB0();

  if (os_log_type_enabled(v41, v42))
  {
    v65 = v33;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v70 = v44;
    *v43 = 136446466;
    v45 = *(v64 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
    v46 = *(v64 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8);

    v47 = sub_19202B8CC(v45, v46, &v70);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    *(v43 + 14) = sub_19202B8CC(a1, a2, &v70);
    _os_log_impl(&dword_192028000, v41, v42, "%{public}s acquired %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v44, -1, -1);
    MEMORY[0x193B0C7F0](v43, -1, -1);
  }

  else
  {
  }

LABEL_14:
  v62 = *MEMORY[0x1E69E9840];
  return v37;
}

uint64_t sub_19203418C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = (v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  if (*(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8))
  {
    v8 = *v7;
  }

  else
  {
    v9 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_sessionUUID;
    sub_1922256C0();
    sub_192225500();
    v8 = static WidgetExtensionSession.makeLoggingIdentifier(sessionIdentifier:extensionBundleIdentifier:deviceIdentifier:)(v0 + v9, v6, 0, 0);
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    v12 = v7[1];
    *v7 = v8;
    v7[1] = v11;
  }

  return v8;
}

uint64_t static WidgetExtensionSession.makeLoggingIdentifier(sessionIdentifier:extensionBundleIdentifier:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_192034664();
    *(sub_192227E10() + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1378, qword_19223AA30);
    sub_192031384();
    sub_192031330();
    v16 = sub_192227AF0();
    v5 = v4;
  }

  else
  {
    v16 = 0;
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  sub_192034664();
  v6 = sub_192227E10();

  *(v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1378, qword_19223AA30);
  sub_192031384();
  sub_192031330();
  v7 = sub_192227AF0();
  v9 = v8;

  sub_192225160();
  v10 = sub_192227E10();

  *(v10 + 16);
  v11 = sub_192227AF0();
  v13 = v12;

  if (v5)
  {
    MEMORY[0x193B0A990](45, 0xE100000000000000);
    v14 = v16;
  }

  else
  {
    v14 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x193B0A990](v14, v5);

  MEMORY[0x193B0A990](v7, v9);

  MEMORY[0x193B0A990](45, 0xE100000000000000);
  MEMORY[0x193B0A990](v11, v13);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_192034664()
{
  result = qword_1EADECAB8;
  if (!qword_1EADECAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECAB8);
  }

  return result;
}

uint64_t sub_1920346B8()
{
  sub_19202DC80();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_192034714()
{
  MEMORY[0x193B0C7F0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_19203476C(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

void sub_1920347E0(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  _Block_copy(a2);
  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &v30);
  v9 = v31;
  v10 = v32;
  __swift_project_boxed_opaque_existential_1(&v30, v31);
  v11 = (*(v10 + 8))(v7, v9, v10);
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(&v30);
  if (v11)
  {
    v23 = sub_192034C60();
    *&v30 = 1;
    BYTE8(v30) = 4;
    v24 = swift_allocObject();
    v24[2] = v11;
    v24[3] = v23;
    v24[4] = sub_1920396F0;
    v24[5] = v8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1920396F0;
    *(v25 + 24) = v8;
    swift_retain_n();
    v26 = v11;
    v27 = v23;
    sub_192031418(&v30, sub_192034F48, v24, sub_1921C9410, v25);
  }

  else
  {
    v12 = *MEMORY[0x1E69941E8];
    v13 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v14 = *MEMORY[0x1E696A278];
    v15 = sub_192227960();
    v17 = v16;
    v31 = MEMORY[0x1E69E6158];
    *&v30 = 0xD000000000000011;
    *(&v30 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[1] = v13;
    sub_19213DB28(v29, v15, v17, isUniquelyReferenced_nonNull_native);

    v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v20 = sub_192227830();

    v21 = [v19 initWithDomain:v12 code:1300 userInfo:v20];

    v22 = sub_192224F80();
    (a2)[2](a2, 0, v22);
  }
}

uint64_t sub_192034C1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_192034C60()
{
  v1 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  swift_endAccess();
  v2 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  result = sub_192034E34();
  if (!v0 && !result)
  {
    v4 = *MEMORY[0x1E69941E8];
    v5 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v6 = *MEMORY[0x1E696A278];
    v7 = sub_192227960();
    v9 = v8;
    v15 = MEMORY[0x1E69E6158];
    *&v14 = 0xD000000000000011;
    *(&v14 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v5;
    sub_19213DB28(v13, v7, v9, isUniquelyReferenced_nonNull_native);

    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_192227830();

    [v11 initWithDomain:v4 code:1300 userInfo:v12];

    swift_willThrow();
    return 0;
  }

  return result;
}

id sub_192034E34()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_192227930();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_192224F90();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_192034F00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_192034F54(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a6;
  v14[7] = a7;
  v18[4] = sub_192037A3C;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_192037950;
  v18[3] = &block_descriptor_416;
  v15 = _Block_copy(v18);
  v16 = a4;
  v17 = a5;

  [a1 getAllCurrentDescriptorsWithCompletion_];
  _Block_release(v15);
}

uint64_t sub_192035074(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_192228350();

    if (v8)
    {

      sub_1922258F0();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_192228340();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1921C2580(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_1921C2EB0(v19 + 1);
    }

    sub_1921C34DC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1922258F0();
  v10 = *(v6 + 40);
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);
  v11 = sub_192227880();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_192035314(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10]);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_192227910())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_192035314(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C2EB0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1921C3CDC(&qword_1EADF1BA8, &qword_192240508);
      goto LABEL_12;
    }

    sub_19203550C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);
  result = sub_192227880();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10]);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_192227910();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_192228A30();
  __break(1u);
  return result;
}

uint64_t sub_19203550C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA8, &qword_192240508);
  result = sub_1922283C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1922258F0();
      sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);

      result = sub_192227880();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id sub_192035854(void *a1)
{
  v16 = sub_192228070();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192228050();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_192227790();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_previewAgent] = 0;
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_urlHandlers] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_xpcConnection] = a1;
  v11 = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v15[0] = "ptors(completion:)";
  v15[1] = v11;
  v12 = a1;
  sub_192227770();
  v18 = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C5D8, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_19202A880(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8098], v16);
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject__queue] = sub_1922280A0();
  v13 = type metadata accessor for WidgetExtensionXPCServer.ExportedObject();
  v17.receiver = v1;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_192035B0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_192035B88()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_192035BC4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_192035C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_192227790();
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1922252A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1922258B0();
  __swift_project_value_buffer(v15, qword_1ED74CCC8);
  v16 = sub_192225890();
  v17 = sub_192227FB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = a2;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_19202B8CC(0xD000000000000025, 0x80000001922492F0, aBlock);
    *(v18 + 12) = 2082;
    sub_192225240();
    sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770]);
    v21 = sub_192228910();
    v22 = v11;
    v23 = v9;
    v24 = a1;
    v26 = v25;
    (*(v22 + 8))(v14, v10);
    v27 = sub_19202B8CC(v21, v26, aBlock);
    a1 = v24;
    v9 = v23;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_192028000, v16, v17, "=+= %{public}s - locale: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v28 = v20;
    a2 = v35;
    MEMORY[0x193B0C7F0](v28, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v29 = sub_192228080();
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  aBlock[4] = sub_192036270;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_220;
  v31 = _Block_copy(aBlock);

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v32 = v37;
  v33 = v40;
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v9, v32, v31);
  _Block_release(v31);

  (*(v39 + 8))(v32, v33);
  return (*(v36 + 8))(v9, v38);
}

uint64_t sub_192036194()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1920361CC(void (*a1)(void))
{
  if (xmmword_1ED74CC80)
  {
    v2 = (*(qword_1ED74CC90 + 32))(*xmmword_1ED74CC80);
    a1();
  }

  else
  {
    __break(1u);
  }
}

id sub_192036278()
{
  v1 = *v0;
  sub_192036354();
  v3 = v2;
  sub_19203850C();
  v5 = v4;
  sub_192036A80();
  v7 = v6;
  v8 = type metadata accessor for DescriptorFetchResult();
  v9 = objc_allocWithZone(v8);
  v10 = sub_192036D98(v3);

  *&v9[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v10;
  *&v9[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v7;
  *&v9[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v5;
  v12.receiver = v9;
  v12.super_class = v8;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_192036354()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = sub_192227960();
    v14 = v13;

    v15 = sub_192036694();
    v16 = *(v15 + 16);
    if (v16)
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_192228520();
      v17 = sub_19202A7A8(0, &qword_1ED749A50, 0x1E6994310);
      v18 = *(v1 + 24);
      v30 = *(v1 + 16);
      v31 = v17;
      v19 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v20 = *(v3 + 72);
      v28 = v15;
      v29 = v20;
      do
      {
        sub_192036754(v19, v9, type metadata accessor for WidgetDescriptor);
        sub_192036754(v9, v7, type metadata accessor for WidgetDescriptor);

        v21 = v30;
        sub_1920367C8(v30, v18);
        v22 = sub_1921ADC0C(v7, v12, v14, v21, v18);
        [v22 copy];
        sub_1922282B0();

        swift_unknownObjectRelease();
        sub_192036A20(v9, type metadata accessor for WidgetDescriptor);
        sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
        swift_dynamicCast();
        sub_1922284F0();
        v23 = v9;
        v24 = v14;
        v25 = v7;
        v26 = v12;
        v27 = *(v32 + 16);
        sub_192228530();
        v12 = v26;
        v7 = v25;
        v14 = v24;
        v9 = v23;
        sub_192228540();
        sub_192228500();
        v19 += v29;
        --v16;
      }

      while (v16);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19203665C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192036694()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_192081CBC(v0);
    v2 = *(v0 + 40);
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_1920366F4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_1921ABC08(v0);
    v2 = *(v0 + 56);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_192036754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920367C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_19203683C@<D0>(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ViewSource(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_192038FB8(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = v7[3];
      a1[2] = v7[2];
      a1[3] = v14;
      a1[4] = v7[4];
      *(a1 + 73) = *(v7 + 73);
      v13 = *v7;
      v15 = v7[1];
      *a1 = *v7;
      a1[1] = v15;
      return *&v13;
    }

LABEL_6:
    sub_19207D1F8(v7, type metadata accessor for ViewSource);
    *&v13 = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    *(a1 + 73) = 0u;
    return *&v13;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
  v10 = *(v9 + 1);
  v11 = *(v9 + 3);

  v12 = sub_1922253B0();
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *(a1 + 73) = 0u;
  (*(*(v12 - 8) + 8))(v7, v12);
  return *&v13;
}

uint64_t sub_1920369C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192036A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_192036A80()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = sub_192227960();
    v14 = v13;

    v15 = sub_192039194();
    v16 = *(v15 + 16);
    if (v16)
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_192228520();
      v17 = sub_19202A7A8(0, qword_1EADEE810, 0x1E6994308);
      v18 = *(v1 + 24);
      v30 = *(v1 + 16);
      v31 = v17;
      v19 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v20 = *(v3 + 72);
      v28 = v15;
      v29 = v20;
      do
      {
        sub_192036754(v19, v9, type metadata accessor for WidgetDescriptor);
        sub_192036754(v9, v7, type metadata accessor for WidgetDescriptor);

        v21 = v30;
        sub_1920367C8(v30, v18);
        v22 = sub_1921AF35C(v7, v12, v14, v21, v18);
        sub_192039140(v21, v18);
        [v22 copy];
        sub_1922282B0();

        swift_unknownObjectRelease();
        sub_192036A20(v9, type metadata accessor for WidgetDescriptor);
        sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
        swift_dynamicCast();
        sub_1922284F0();
        v23 = v9;
        v24 = v14;
        v25 = v7;
        v26 = v12;
        v27 = *(v32 + 16);
        sub_192228530();
        v12 = v26;
        v7 = v25;
        v14 = v24;
        v9 = v23;
        sub_192228540();
        sub_192228500();
        v19 += v29;
        --v16;
      }

      while (v16);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192036D98(unint64_t a1)
{
  v1 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_192228340())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &property descriptor for StorageBackedControlArchive.state;
    v31 = i;
    v32 = v1;
    v30 = v1 & 0xC000000000000001;
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x193B0B410](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v7 v6[392]])
      {
        sub_1922284F0();
        v10 = *(v35 + 16);
        sub_192228530();
        sub_192228540();
        sub_192228500();
      }

      else
      {
        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v11 = sub_1922258B0();
        __swift_project_value_buffer(v11, qword_1ED74CCC8);
        v12 = v8;
        v13 = sub_192225890();
        v14 = sub_192227FB0();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v34 = v16;
          *v15 = 136315394;
          v17 = [v12 kind];
          v18 = sub_192227960();
          v20 = v19;

          v21 = sub_19202B8CC(v18, v20, &v34);

          *(v15 + 4) = v21;
          *(v15 + 12) = 2082;
          v22 = [v12 extensionBundleIdentifier];
          v23 = sub_192227960();
          v25 = v24;

          v26 = v23;
          v1 = v32;
          v27 = sub_19202B8CC(v26, v25, &v34);
          i = v31;

          *(v15 + 14) = v27;
          _os_log_impl(&dword_192028000, v13, v14, "Descriptor for %s from %{public}s has no supportedFamilies", v15, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x193B0C7F0](v16, -1, -1);
          v28 = v15;
          v4 = v30;
          MEMORY[0x193B0C7F0](v28, -1, -1);
        }

        v5 = v33;
        v6 = &property descriptor for StorageBackedControlArchive.state;
      }

      ++v3;
      if (v9 == i)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_192037168(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1920B3B44;

  return sub_192037220(a1, v5);
}

uint64_t sub_192037220(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_192120F00;

  return v7(a1);
}

uint64_t sub_192037318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920373E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1920373E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_192037404, 0, 0);
}

uint64_t sub_192037404()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_192227930();
  v0[21] = v4;
  v0[2] = v0;
  v0[3] = sub_192127778;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0548, &qword_192234AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_192127CAC;
  v0[13] = &block_descriptor_70;
  v0[14] = v5;
  [v3 invalidateRelevancesOfKind:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id DescriptorFetchResult.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEFAE0, &unk_19222FF10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19222B490;
  v3 = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(v2 + 32) = v3;
  *(v2 + 40) = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  sub_192228150();

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF0420, &qword_192233BB0);
    if (swift_dynamicCast())
    {
      v4 = v16;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_192030F04(v18);
    v4 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19222B490;
  *(v5 + 32) = v3;
  *(v5 + 40) = sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
  sub_192228150();

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0418, &qword_192233BA8);
    if (swift_dynamicCast())
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_192030F04(v18);
    v6 = 0;
  }

  v7 = sub_192227930();
  v8 = [a1 containsValueForKey_];

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_19222B490;
    *(v9 + 32) = v3;
    *(v9 + 40) = sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
    sub_192228150();

    if (!v19)
    {

      sub_192030F04(v18);
      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0410, &qword_192233BA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v10 = v16;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
LABEL_15:

      goto LABEL_22;
    }
  }

  if (v4)
  {
    v11 = type metadata accessor for DescriptorFetchResult();
    v12 = objc_allocWithZone(v11);
    v13 = sub_192036D98(v4);

    *&v12[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v13;
    *&v12[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v10;
    *&v12[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v6;
    v17.receiver = v12;
    v17.super_class = v11;
    v14 = objc_msgSendSuper2(&v17, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v14;
  }

LABEL_22:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19203795C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t (*)(), void *, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_192037A54(a2, a3);
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a7;
  v11[4] = v10;

  v12 = v10;
  a4(sub_1920396BC, v11, 0);
}

id sub_192037A54(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v31 = *(v2 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors);
    }

    v7 = sub_192228340();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v35 = MEMORY[0x1E69E7CC0];
    result = sub_192228520();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    v10 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193B0B410](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      sub_1921BD21C(a1, a2);

      sub_1922284F0();
      v13 = *(v35 + 16);
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v7 != v10);
    v8 = v35;
  }

  v33 = v8;
  v14 = *(v3 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors);
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v32 = *(v3 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors);
    }

    v15 = sub_192228340();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    goto LABEL_21;
  }

  v35 = MEMORY[0x1E69E7CC0];
  result = sub_192228520();
  if (v15 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v17 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x193B0B410](v17, v14);
    }

    else
    {
      v18 = *(v14 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    sub_192037DC4(a1, a2);

    sub_1922284F0();
    v20 = *(v35 + 16);
    sub_192228530();
    sub_192228540();
    sub_192228500();
  }

  while (v15 != v17);
  v16 = v35;
LABEL_21:
  v21 = *(v3 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);
  if (v21 >> 62)
  {
    v22 = sub_192228340();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_31:
    v28 = type metadata accessor for DescriptorFetchResult();
    v29 = objc_allocWithZone(v28);
    v30 = sub_192036D98(v33);

    *&v29[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v30;
    *&v29[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v23;
    *&v29[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v16;
    v34.receiver = v29;
    v34.super_class = v28;
    return objc_msgSendSuper2(&v34, sel_init);
  }

  v35 = MEMORY[0x1E69E7CC0];
  result = sub_192228520();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193B0B410](v24, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      sub_1921C18FC(a1, a2);

      sub_1922284F0();
      v27 = *(v35 + 16);
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v22 != v24);
    v23 = v35;
    goto LABEL_31;
  }

LABEL_41:
  __break(1u);
  return result;
}

id sub_192037DC4(uint64_t a1, void *a2)
{
  [v2 mutableCopy];
  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A7A8(0, qword_1ED7491A8, 0x1E69942E0);
  swift_dynamicCast();
  v5 = v28[0];
  [v28[0] setExtensionIdentity_];
  v6 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v8 = *(*(v7 - 8) + 48);
  v9 = &property descriptor for StorageBackedControlArchive.state;
  if (v8(a1 + v6, 1, v7))
  {
    swift_endAccess();
    v10 = 0;
LABEL_5:
    [v28[0] setHiddenControl_];
    [v28[0] setSupportsForwardingToRemoteDevices_];
    goto LABEL_6;
  }

  v11 = sub_192225510();
  v13 = v12;
  swift_endAccess();
  sub_19202A7A8(0, &qword_1EADECA88, 0x1E6963620);
  v14 = sub_1920393C8(v11, v13, 1);
  v10 = v14;
  if (!v14)
  {
    v9 = &property descriptor for StorageBackedControlArchive.state;
    goto LABEL_5;
  }

  v9 = &property descriptor for StorageBackedControlArchive.state;
  if ([v14 developerType] != 1)
  {
    goto LABEL_5;
  }

  v26 = [a2 infoDictionary];
  v23 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v24 = [v26 objectForKey:v23 ofClass:swift_getObjCClassFromMetadata()];

  if (v24)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    *v28 = 0u;
    v29 = 0u;
  }

  v30 = *v28;
  v31 = v29;
  v9 = &property descriptor for StorageBackedControlArchive.state;
  if (*(&v29 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_192033970(&v30, &unk_1EADEF330, &unk_19222CD40);
  }

  swift_beginAccess();
  if (!v8(a1 + v6, 1, v7))
  {
    sub_192225510();
    swift_endAccess();
LABEL_34:
    v25 = sub_192227930();

    v9 = &property descriptor for StorageBackedControlArchive.state;
    goto LABEL_35;
  }

  swift_endAccess();
  v25 = 0;
LABEL_35:
  [v5 setNativeContainerBundleIdentifier_];

LABEL_6:
  v15 = [a2 entitlements];
  v16 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v17 = [v15 v9[452]];

  if (v17)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    *v28 = 0u;
    v29 = 0u;
  }

  v30 = *v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    sub_192033970(&v30, &unk_1EADEF330, &unk_19222CD40);
LABEL_20:
    v18 = 0;
    v21 = 2;
    goto LABEL_21;
  }

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0 || !v27)
  {
    goto LABEL_20;
  }

  v18 = v27;
  DataProtectionLevel.init(_:)(v18);
  v19 = 2;
  v20 = 3;
  if (v30 != 3)
  {
    v20 = 2;
  }

  if (v30 != 2)
  {
    v19 = v20;
  }

  if (v30 <= 1u)
  {
    v21 = v30 != 0;
  }

  else
  {
    v21 = v19;
  }

LABEL_21:
  [v5 setRequestedDataProtection_];
  [v5 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
  swift_dynamicCast();
  return v28[0];
}

uint64_t sub_19203831C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19203832C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_192038344(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_connection);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  aBlock[4] = sub_1921C8B30;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_150;
  v9 = _Block_copy(aBlock);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_1922282B0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BB8, &qword_192240520);
  swift_dynamicCast();
  return v12;
}

uint64_t sub_1920384BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_19203850C()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = sub_192227960();
    v14 = v13;

    v15 = sub_1920366F4();
    v16 = *(v15 + 16);
    if (v16)
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_192228520();
      v17 = sub_19202A7A8(0, qword_1ED7491A8, 0x1E69942E0);
      v18 = *(v1 + 24);
      v30 = *(v1 + 16);
      v31 = v17;
      v19 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v20 = *(v3 + 72);
      v28 = v15;
      v29 = v20;
      do
      {
        sub_192036754(v19, v9, type metadata accessor for WidgetDescriptor);
        sub_192036754(v9, v7, type metadata accessor for WidgetDescriptor);

        v21 = v30;
        sub_1920367C8(v30, v18);
        v22 = sub_192038824(v7, v12, v14, v21, v18);
        sub_192039140(v21, v18);
        [v22 copy];
        sub_1922282B0();

        swift_unknownObjectRelease();
        sub_192036A20(v9, type metadata accessor for WidgetDescriptor);
        sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
        swift_dynamicCast();
        sub_1922284F0();
        v23 = v9;
        v24 = v14;
        v25 = v7;
        v26 = v12;
        v27 = *(v32 + 16);
        sub_192228530();
        v12 = v26;
        v7 = v25;
        v14 = v24;
        v9 = v23;
        sub_192228540();
        sub_192228500();
        v19 += v29;
        --v16;
      }

      while (v16);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192038824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51[1] = a5;
  v6 = type metadata accessor for ViewSource(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_19203683C(v52);
  if (!*(&v52[0] + 1))
  {
    sub_192033970(v52, &qword_1EADF1990, &qword_192243230);
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_192228400();

    *&v54 = 0xD00000000000002BLL;
    *(&v54 + 1) = 0x800000019224D510;
    sub_192036754(a1, v9, type metadata accessor for ViewSource);
    v50 = sub_192227990();
    MEMORY[0x193B0A990](v50);

    result = sub_192228620();
    __break(1u);
    return result;
  }

  v56 = v52[2];
  v57 = v52[3];
  v58[0] = v53[0];
  *(v58 + 9) = *(v53 + 9);
  v54 = v52[0];
  v55 = v52[1];
  sub_192228100();
  sub_192225500();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = sub_1922280F0();
  v18 = sub_192227930();
  v19 = *(&v55 + 1);
  v20 = v56;
  if (*(&v55 + 1))
  {
    swift_bridgeObjectRetain_n();
    v21 = sub_192227930();
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExtensionIdentity:v17 kind:v18 controlType:v20 intentType:v21];

  v23 = type metadata accessor for WidgetDescriptor(0);
  v24 = *(a1 + v23[11]);
  v25 = v22;
  [v25 setEnablement_];
  v26 = (a1 + v23[5]);
  if (v26[1])
  {
    v27 = *v26;
    v28 = sub_192227930();
  }

  else
  {
    v28 = 0;
  }

  [v25 setDisplayName_];

  v29 = (a1 + v23[6]);
  if (v29[1])
  {
    v30 = *v29;
    v31 = sub_192227930();
  }

  else
  {
    v31 = 0;
  }

  [v25 setWidgetDescription_];

  v32 = (a1 + v23[14]);
  if (v32[1])
  {
    v33 = *v32;
    v34 = sub_192227930();
  }

  else
  {
    v34 = 0;
  }

  [v25 setEventMachServiceName_];

  v35 = sub_192225050();
  [v25 setLocaleToken_];

  v36 = (a1 + v23[27]);
  v37 = *v36;
  v38 = v36[1];
  v39 = sub_192227930();
  [v25 setSdkVersion_];

  [v25 setHiddenBySensitiveUI_];
  [v25 setActionMetadata_];
  [v25 setDisfavoredLocations_];

  if (*(a1 + v23[32]) == 1)
  {
    v40 = *(a1 + v23[33]) ^ 1;
  }

  else if (*(a1 + v23[30]) == 1)
  {
    v40 = *(a1 + v23[31]);
  }

  else
  {
    v40 = 1;
  }

  [v25 setHiddenControl_];
  if (*(a1 + v23[34]) == 1)
  {
    v41 = *(a1 + v23[35]);
  }

  else
  {
    v41 = 0;
  }

  v42 = v25;
  [v42 setSupportsForwardingToRemoteDevices_];
  [v42 setDisablesControlStateCaching_];
  [v42 setShowsContextualMenu_];
  [v42 setPreferredControlSize_];
  if (v19)
  {

    v43 = *(a1 + v23[23]);
  }

  else
  {
    v43 = 0;
  }

  [v42 setPromptsForUserConfiguration_];
  [v42 setSupportsPush_];

  v44 = *(a1 + v23[41]);
  if (!v44)
  {
    v45 = 0;
    goto LABEL_29;
  }

  if (sub_1921AEF0C(v44))
  {
    sub_19202A7A8(0, &qword_1EADF19A0, 0x1E6994298);
    v45 = sub_192227B60();

LABEL_29:
    [v42 setRequiredFeatureFlags_];
  }

  v46 = [objc_opt_self() mainBundle];
  v47 = [v46 bundlePath];

  sub_192227960();
  LOBYTE(v46) = sub_192227A10();

  [v42 setVisibility_];
  if (qword_1EADEE920 != -1)
  {
    swift_once();
  }

  v48 = qword_1EAE00888;
  [v42 setConfigurationBackgroundColor_];
  [v42 setConfigurationAccentColor_];

  sub_1920390EC(&v54);
  sub_192036A20(a1, type metadata accessor for WidgetDescriptor);
  return v42;
}

uint64_t sub_192038FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19203901C(uint64_t a1)
{
  v2 = sub_1920369B8(0, a1);
  if (sub_1920369B8(1, a1))
  {
    v3 = v2 & 1 | 2;
  }

  else
  {
    v3 = v2 & 1;
  }

  if (sub_1920369B8(2, a1))
  {
    v3 |= 4uLL;
  }

  if (sub_1920369B8(3, a1))
  {
    v3 |= 8uLL;
  }

  if (sub_1920369B8(6, a1))
  {
    v3 |= 0x40uLL;
  }

  if (sub_1920369B8(4, a1))
  {
    v3 |= 0x10uLL;
  }

  if (sub_1920369B8(5, a1))
  {
    return v3 | 0x20;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_192039140(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_192039194()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = sub_1921AB8BC(v0);
    v2 = *(v0 + 48);
    *(v0 + 48) = v1;
  }

  return v1;
}

void sub_19203922C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors);
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v4 = sub_192227B60();
  v5 = sub_192227930();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors);
  sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
  v7 = sub_192227B60();
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);
  sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
  v10 = sub_192227B60();
  v11 = sub_192227930();
  [a1 encodeObject:v10 forKey:v11];
}

id sub_1920393C8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_192227930();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_192224F90();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1920394B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_1920394F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1920394FC(a1);
}

uint64_t sub_1920394FC(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE00728);

  v4 = sub_192225890();
  v5 = sub_192227FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_19203418C();
    v10 = sub_19202B8CC(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = WidgetExtensionSessionOperation.description.getter();
    v13 = sub_19202B8CC(v11, v12, &v15);

    *(v6 + 14) = v13;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  return v2();
}

void sub_19203970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_192224F80();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_19203977C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_19203988C(v0, v5);
  os_unfair_lock_unlock(*(v1 + 16));
  if (v5[0])
  {
    v2 = *(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_connection);
    v3 = [v2 remoteObjectProxy];
    sub_1922282B0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BB8, &qword_192240520);
    if (swift_dynamicCast())
    {
      [v4 invalidate];
      swift_unknownObjectRelease();
    }

    [v2 invalidate];
  }
}

void sub_19203988C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated;
  if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated))
  {
    v4 = 0;
  }

  else
  {
    sub_19202CFFC(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_suspensionObserver, &v51, &qword_1EADF1B88, qword_192240150);
    if (v52)
    {
      sub_19203832C(&v51, v54);
      v6 = sub_192033AC8(0xD000000000000017, 0x800000019224DCB0);
      if (v6)
      {
        v7 = v6;
        v8 = v55;
        v9 = v56;
        __swift_project_boxed_opaque_existential_1(v54, v55);
        v52 = sub_19202A7A8(0, &qword_1EADECA90, 0x1E69C7548);
        v53 = &protocol witness table for RBSAssertion;
        *&v51 = v7;
        v10 = v7;
        v11 = sub_1922256C0();
        (*(v9 + 8))(&v51, v11, v12, v8, v9);

        __swift_destroy_boxed_opaque_existential_1(&v51);
      }

      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    else
    {
      sub_192033970(&v51, &qword_1EADF1B88, qword_192240150);
    }

    if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion))
    {
      v13 = *(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion);
      swift_unknownObjectRetain();
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        if (qword_1EADECEC0 != -1)
        {
          swift_once();
        }

        v16 = sub_1922258B0();
        __swift_project_value_buffer(v16, qword_1EAE00728);

        v17 = sub_192225890();
        v18 = sub_192227FB0();

        if (os_log_type_enabled(v17, v18))
        {
          v49 = v3;
          v19 = swift_slowAlloc();
          v47 = a2;
          v20 = swift_slowAlloc();
          v54[0] = v20;
          *v19 = 136446210;
          v21 = sub_19203418C();
          v23 = sub_19202B8CC(v21, v22, v54);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_192028000, v17, v18, "%{public}s WidgetExtensionAssertion invalidated", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          v24 = v20;
          a2 = v47;
          MEMORY[0x193B0C7F0](v24, -1, -1);
          v25 = v19;
          v3 = v49;
          MEMORY[0x193B0C7F0](v25, -1, -1);
        }

        [v15 invalidate];
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion))
    {
      v26 = *(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion);
      swift_unknownObjectRetain();
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        if (qword_1EADECEC0 != -1)
        {
          swift_once();
        }

        v29 = sub_1922258B0();
        __swift_project_value_buffer(v29, qword_1EAE00728);

        v30 = sub_192225890();
        v31 = sub_192227FB0();

        if (os_log_type_enabled(v30, v31))
        {
          v50 = v3;
          v32 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v54[0] = v48;
          *v32 = 136446210;
          v33 = sub_19203418C();
          v35 = v28;
          v36 = a2;
          v37 = sub_19202B8CC(v33, v34, v54);

          *(v32 + 4) = v37;
          a2 = v36;
          v28 = v35;
          _os_log_impl(&dword_192028000, v30, v31, "%{public}s Foreground boost assertion invalidated", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x193B0C7F0](v48, -1, -1);
          v38 = v32;
          v3 = v50;
          MEMORY[0x193B0C7F0](v38, -1, -1);
        }

        [v28 invalidate];
      }

      swift_unknownObjectRelease();
    }

    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v39 = sub_1922258B0();
    __swift_project_value_buffer(v39, qword_1EAE00728);

    v40 = sub_192225890();
    v41 = sub_192227FB0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54[0] = v43;
      *v42 = 136446210;
      v44 = sub_19203418C();
      v46 = sub_19202B8CC(v44, v45, v54);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_192028000, v40, v41, "%{public}s Session invalidated", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x193B0C7F0](v43, -1, -1);
      MEMORY[0x193B0C7F0](v42, -1, -1);
    }

    v4 = 1;
    *(a1 + v3) = 1;
  }

  *a2 = v4;
}

id DescriptorFetchResult.__allocating_init(widgetDescriptors:activityDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_192036D98(a1);

  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v8;
  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = a2;
  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_192039F54(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  swift_beginAccess();
  v17 = *(a3 + 16);
  if (v17)
  {
    [v17 cancel];
  }

  swift_beginAccess();
  v18 = *(a3 + 16);
  if (v18)
  {
    [v18 invalidate];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BB0, &unk_192240510);
  if (v14)
  {
    v55 = a4;
    v58 = v14;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
    sub_19202A7A8(0, &qword_1ED74C6A8, 0x1E696ABC0);
    if (!swift_dynamicCast())
    {
      result = sub_192228990();
      __break(1u);
      return result;
    }

    v56 = a5;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v20 = sub_1922258B0();
    __swift_project_value_buffer(v20, qword_1EAE00728);

    v21 = v61;
    v22 = sub_192225890();
    v23 = sub_192227FB0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v54 = a7;
      v25 = swift_slowAlloc();
      v53 = a6;
      v26 = swift_slowAlloc();
      v57 = v26;
      *v24 = 136446722;
      v27 = sub_19203418C();
      v29 = sub_19202B8CC(v27, v28, &v57);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      v59 = v55;
      v60 = v56;
      v30 = WidgetExtensionSessionOperation.description.getter();
      v32 = sub_19202B8CC(v30, v31, &v57);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2114;
      *(v24 + 24) = v21;
      *v25 = v21;
      v33 = v21;
      sub_192033970(v25, &qword_1EADEEDF0, &qword_1922319C0);
      v34 = v25;
      a7 = v54;
      MEMORY[0x193B0C7F0](v34, -1, -1);
      swift_arrayDestroy();
      v35 = v26;
      a6 = v53;
      MEMORY[0x193B0C7F0](v35, -1, -1);
      MEMORY[0x193B0C7F0](v24, -1, -1);
    }

    v36 = [v21 domain];
    v37 = sub_192227960();
    v39 = v38;

    v40 = *MEMORY[0x1E69941E8];
    if (v37 == sub_192227960() && v39 == v41)
    {
    }

    else
    {
      v42 = sub_1922289A0();

      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ([v21 code] == 1001)
    {
      v59 = v55;
      v60 = v56;
      v43 = WidgetExtensionSessionOperation.description.getter();
      v45 = v44;
      v46 = swift_allocObject();
      v46[2] = a6;
      v46[3] = a7;
      v46[4] = v21;
      v47 = v21;

      sub_1921C02D0(v43, v45, sub_19212AE98, v46);

LABEL_19:
      goto LABEL_20;
    }

LABEL_18:
    v48 = v21;
    a6(v21);

    goto LABEL_19;
  }

LABEL_20:
  v49 = *(v16 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  v50 = *(v49 + 16);

  os_unfair_lock_lock(v50);
  swift_beginAccess();
  if (*(a8 + 16))
  {
    v51 = *(a8 + 16);

    sub_1922258E0();
    swift_beginAccess();
    sub_19203A4B8();
    swift_endAccess();
  }

  swift_beginAccess();
  v52 = *(a8 + 16);
  *(a8 + 16) = 0;

  os_unfair_lock_unlock(*(v49 + 16));
}

uint64_t sub_19203A4B8()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_192228370();

    if (v4)
    {
      v5 = sub_1921C4C50();

      return v5;
    }

    return 0;
  }

  sub_1922258F0();
  v7 = *(v1 + 40);
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);
  v8 = sub_192227880();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10]);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_192227910())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1921C3CDC(&qword_1EADF1BA8, &qword_192240508);
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_19203A6C8(v10);
  result = v15;
  *v0 = v17;
  return result;
}

unint64_t sub_19203A6C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_192228310();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_1922258F0();
      sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10]);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_192227880() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_19203A924(uint64_t a1, const char *a2)
{
  v4 = sub_1922256D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1922258B0();
  __swift_project_value_buffer(v9, qword_1EAE00728);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_192225890();
  v11 = sub_192227FB0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    v14 = sub_1922256C0();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_19202B8CC(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_192028000, v10, v11, a2, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x193B0C7F0](v13, -1, -1);
    MEMORY[0x193B0C7F0](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for ActivityConfiguration() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = sub_1922253B0();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v3[11] + 8);

  v8 = *(v5 + v3[12] + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = sub_1922256D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19203ACFC()
{
  sub_19203AD54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_19203AD54()
{
  v1 = v0;
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1EAE00728);

  v3 = sub_192225890();
  v4 = sub_192227FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    v7 = sub_19203418C();
    v9 = sub_19202B8CC(v7, v8, &v26);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_192028000, v3, v4, "%{public}s Session deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock;
  v11 = *(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  os_unfair_lock_unlock(*(v11 + 16));

  v13 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionIdentity;
  v14 = sub_1922256D0();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionProcess;
  v16 = sub_1922256B0();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_sessionUUID;
  v18 = sub_1922251B0();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v19 = *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8);

  v20 = *(v1 + v10);

  v21 = *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_subscriptions);

  v22 = *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutProvider + 8);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_rbsInterface));
  sub_192033970(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_suspensionObserver, &qword_1EADF1B88, qword_192240150);
  v23 = *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion);
  swift_unknownObjectRelease();
  v24 = *(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t getEnumTagSinglePayload for DataProtectionLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataProtectionLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_19203B234()
{
  result = qword_1ED74AA28;
  if (!qword_1ED74AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA28);
  }

  return result;
}

uint64_t type metadata accessor for WidgetViewMetadata()
{
  result = qword_1ED74A348;
  if (!qword_1ED74A348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_19203B300@<X0>(_BYTE *a1@<X8>)
{
  sub_19203B36C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19203B36C()
{
  result = qword_1ED74BC30;
  if (!qword_1ED74BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC30);
  }

  return result;
}

unint64_t sub_19203B3CC()
{
  result = qword_1ED74BC00;
  if (!qword_1ED74BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalWidgetFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_19203B4B0@<X0>(void *a1@<X8>)
{
  sub_19203B3CC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

id sub_19203B500@<X0>(void *a1@<X8>)
{
  if (qword_1ED74BB90 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED74CBF0;
  *a1 = qword_1ED74CBF0;

  return v2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for ArchiveURLAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchiveURLAttributes(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_19203B718(void *a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (a1[3])
  {
    v3 = a1[4];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (!v4)
    {
      a1[4] = v5;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19222C680;
  v8 = a1[6];
  *(v7 + 32) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v10 = v8;
  v11 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED748560, 0x1E69C7550);
  v12 = sub_192227B60();

  v13 = [v9 initWithExplanation:v11 target:v6 attributes:v12];

  v33[0] = 0;
  v14 = [v13 acquireWithError_];
  v15 = v33[0];
  if (v14)
  {
    v16 = a1[3];
    a1[3] = v13;
    v17 = v15;
    v1 = v13;

    a1[4] = 1;
    if (qword_1ED749B40 == -1)
    {
LABEL_6:
      v18 = sub_1922258B0();
      __swift_project_value_buffer(v18, qword_1ED74C788);
      v19 = sub_192225890();
      v20 = sub_192227FB0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_192028000, v19, v20, "Acquired runtime assertion for WidgetArchiver.unarchive", v21, 2u);
        MEMORY[0x193B0C7F0](v21, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  v22 = v33[0];
  v23 = sub_192224F90();

  swift_willThrow();
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v24 = sub_1922258B0();
  __swift_project_value_buffer(v24, qword_1ED74C788);
  v25 = v23;
  v26 = sub_192225890();
  v27 = sub_192227F90();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    v30 = v23;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_192028000, v26, v27, "Unable to acquire runtime assertion for WidgetArchiver.unarchive - error: %{public}@", v28, 0xCu);
    sub_1920FB918(v29);
    MEMORY[0x193B0C7F0](v29, -1, -1);
    MEMORY[0x193B0C7F0](v28, -1, -1);
  }

  else
  {
  }

LABEL_14:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t static WidgetArchiver.unarchive(from:validationOptions:)(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v8[0] = *a2;
  v8[1] = v3;
  if (qword_1EADED258 != -1)
  {
    swift_once();
  }

  v4 = qword_1EAE00780;
  v7[3] = type metadata accessor for WidgetArchiverAssertionTracker();
  v7[4] = &off_1F06B3350;
  v7[0] = v4;

  v5 = sub_19203BB68(a1, v8, v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_19203BB68(uint64_t a1, __int128 *a2, void *a3)
{
  v32 = a1;
  v5 = sub_192225020();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1922266C0();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v28 = a2[1];
  v29 = v14;
  v15 = a3[3];
  v27 = a3;
  v16 = __swift_project_boxed_opaque_existential_1(a3, v15);
  v17 = *v16;
  v18 = *(*v16 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_19203B5A8;
  *(v19 + 24) = v17;
  v36 = sub_19203BE8C;
  v37 = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_19203B6F0;
  *(&v35 + 1) = &block_descriptor_5;
  v20 = _Block_copy(&aBlock);
  v21 = v37;
  v22 = v18;

  dispatch_sync(v22, v20);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v9, v32, v5);
    v24 = v33;
    sub_192226640();
    if (!v24)
    {
      aBlock = v29;
      v35 = v28;
      v38 = 3;
      v21 = sub_19203BEEC(v13, &v38, &aBlock);
      v25 = *__swift_project_boxed_opaque_existential_1(v27, v27[3]);
      sub_192055808();
      (*(v30 + 8))(v13, v31);
    }

    return v21;
  }

  return result;
}

uint64_t sub_19203BE8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

_OWORD *sub_19203BEDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *sub_19203BEEC(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v46 - v8;
  v9 = type metadata accessor for WidgetArchivableMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v46 - v13;
  v14 = sub_1922285D0();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a2;
  v19 = *a3;
  v50 = *(a3 + 1);
  v20 = a3[3];
  v46 = a1;
  v52 = sub_192226660();
  if (v21 >> 60 == 15)
  {
    v22 = sub_1922284A0();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
    *v24 = v9;
    sub_192228480();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B08], v22);
    swift_willThrow();
  }

  else
  {
    v26 = v21;
    v27 = sub_192224F30();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_192224F20();
    if (qword_1ED7485C8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v14, qword_1ED74C6B8);
    (*(v15 + 16))(v18, v30, v14);
    v54[3] = &type metadata for WidgetArchiver.ValidationOptions;
    v31 = swift_allocObject();
    v54[0] = v31;
    *(v31 + 16) = v19;
    *(v31 + 24) = v50;
    *(v31 + 40) = v20;

    v14 = v53;
    v32 = sub_192224F10();
    sub_19203C888(v54, v18);
    v32(v53, 0);
    sub_19203D21C();
    v33 = v55;
    v35 = v51;
    v34 = v52;
    sub_192224F00();
    if (v35)
    {

      sub_192046ED4(v34, v26);
    }

    else
    {
      sub_1920557A4(v33, v49);
      v36 = sub_1922266C0();
      v37 = *(v36 - 8);
      v38 = v48;
      (*(v37 + 16))(v48, v46, v36);
      v51 = *(v37 + 56);
      v51(v38, 0, 1, v36);
      v39 = type metadata accessor for _TimelineArchivedViewCollection();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      v14 = swift_allocObject();
      swift_beginAccess();
      v14[16] = byte_1ED74B5B8;

      sub_192046ED4(v34, v26);
      sub_192055674(v55, type metadata accessor for WidgetArchivableMetadata);
      v42 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
      v43 = sub_192224E00();
      (*(*(v43 - 8) + 56))(&v14[v42], 1, 1, v43);
      v44 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
      v51(&v14[OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates], 1, 1, v36);
      sub_19205573C(v49, &v14[OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata], type metadata accessor for WidgetArchivableMetadata);
      swift_beginAccess();
      sub_19214D94C(v38, &v14[v44]);
      swift_endAccess();
      sub_192033970(v38, &qword_1EADF0CD8, &unk_192237800);
      swift_beginAccess();
      v14[16] = v47;
      *(v14 + 3) = MEMORY[0x1E69E7CD0];
    }
  }

  return v14;
}

uint64_t sub_19203C4A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_19203C4E8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1922285D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A28, &qword_192236240);
  v43 = a2;
  result = sub_1922286A0();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_19203BEDC((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_19202A98C(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_192227880();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_19203BEDC(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_19203C888(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_19203BEDC(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_19203C9A4(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_1922285D0();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_192033970(a1, &qword_1EADEF478, &qword_19222D868);
    sub_1921E0D38(a2, v10);
    v8 = sub_1922285D0();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_192033970(v10, &qword_1EADEF478, &qword_19222D868);
  }

  return result;
}

_OWORD *sub_19203C9A4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1922285D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_19203CB7C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_19213FBB0();
      goto LABEL_7;
    }

    sub_19203C4E8(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_19203CB7C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_19203CD78(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_192228A40();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_19203BEDC(a1, v22);
}

unint64_t sub_19203CB7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1922285D0();
  v5 = sub_192227880();

  return sub_19203CBE0(a1, v5);
}

unint64_t sub_19203CBE0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1922285D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_192227910();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

_OWORD *sub_19203CD78(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1922285D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_19203BEDC(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_19203CEF8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_19203CF50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19203CFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19203D1C8()
{
  result = qword_1ED74BB28;
  if (!qword_1ED74BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB28);
  }

  return result;
}

unint64_t sub_19203D21C()
{
  result = qword_1ED7485D0;
  if (!qword_1ED7485D0)
  {
    type metadata accessor for WidgetArchivableMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7485D0);
  }

  return result;
}

unint64_t sub_19203D274()
{
  result = qword_1ED74B090;
  if (!qword_1ED74B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B090);
  }

  return result;
}

void BundleStub.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF16B8, &qword_19223CA30);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v27 = type metadata accessor for BundleStub();
  v12 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_192225020();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203EE38();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_192033970(v14, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v17 = v25;
    v31 = 0;
    sub_19203D6FC(qword_1ED7488E8, MEMORY[0x1E6968FB0]);
    sub_192228750();
    sub_19203CF50(v7, v14);
    sub_192228100();
    v30 = 1;
    sub_19203D6FC(&qword_1ED748700, MEMORY[0x1E69941C0]);
    sub_1922287C0();
    v18 = v27;
    *&v14[*(v27 + 20)] = v28;
    v29 = 2;
    v19 = sub_192228760();
    v21 = v20;
    (*(v17 + 8))(v11, v26);
    v22 = &v14[*(v18 + 24)];
    *v22 = v19;
    v22[1] = v21;
    sub_19203D744(v14, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_19203D7A8(v14);
  }
}

uint64_t sub_19203D6B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19203D6FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19203D744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleStub();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19203D7A8(uint64_t a1)
{
  v2 = type metadata accessor for BundleStub();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19203D804(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F697461657263;
    v6 = 0x746567646977;
    if (a1 != 2)
    {
      v6 = 0x74654D7972746E65;
    }

    if (a1)
    {
      v5 = 0x6D6E6F7269766E65;
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
    v1 = 0x5665766968637261;
    v2 = 0x6F69736E65747865;
    if (a1 != 7)
    {
      v2 = 0x65566D6574737973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6174654D77656976;
    if (a1 != 4)
    {
      v3 = 0x6F5064616F6C6572;
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

uint64_t storeEnumTagSinglePayload for WidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for BundleStub()
{
  result = qword_1ED74BB50;
  if (!qword_1ED74BB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19203DA88(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v127 = sub_192228490();
  v122 = *(v127 - 8);
  v3 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v121 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TimelineReloadPolicy();
  v5 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_192225150();
  v120 = *(v119 - 8);
  v7 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for BundleStub();
  v9 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1922285D0();
  v12 = *(v11 - 8);
  v125 = v11;
  v126 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9F0, &qword_19222F588);
  v17 = *(v16 - 8);
  v128 = v16;
  v129 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v109 - v19;
  v21 = type metadata accessor for WidgetArchivableMetadata(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = sub_19203D274();
  v27 = v130;
  sub_192228B70();
  if (v27)
  {
    v28 = a1;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v28);
    return;
  }

  v112 = v15;
  v29 = v125;
  v109 = v26;
  v130 = 0;
  v114 = v20;
  v110 = v24;
  v111 = v21;
  v30 = a1[3];
  v31 = a1[4];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = sub_192228B60();
  if (qword_1ED7485C8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v29, qword_1ED74C6B8);
  v34 = v126;
  v35 = v112;
  (*(v126 + 16))(v112, v33, v29);
  v36 = v127;
  v37 = v128;
  v38 = v114;
  if (*(v32 + 16) && (v39 = sub_19203CB7C(v35), (v40 & 1) != 0))
  {
    sub_19202A98C(*(v32 + 56) + 32 * v39, v137);
    (*(v34 + 8))(v35, v29);

    if (swift_dynamicCast())
    {
      v42 = v131;
      v41 = v132;
      v44 = v133;
      v43 = v134;
      goto LABEL_13;
    }
  }

  else
  {

    (*(v34 + 8))(v35, v29);
  }

  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = *(&xmmword_1EADF1B10 + 1);
  v42 = xmmword_1EADF1B10;
  v44 = qword_1EADF1B20;
  v43 = qword_1EADF1B28;

LABEL_13:
  LOBYTE(v131) = 6;
  v45 = v130;
  v46 = sub_1922287A0();
  if (v45)
  {
    (*(v129 + 8))(v38, v37);

LABEL_15:
    v28 = v113;
    goto LABEL_16;
  }

  v126 = v43;
  if (v46 < 1)
  {
    v131 = 0;
    v132 = 0xE000000000000000;
    v48 = v46;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000024, 0x800000019224A0D0);
    v135[0] = v48;
    v49 = sub_192228910();
    v125 = v41;
    MEMORY[0x193B0A990](v49);

    MEMORY[0x193B0A990](0x746365707865202CLL, 0xEB00000000206465);
    v135[0] = 1;
    v50 = sub_192228910();
    MEMORY[0x193B0A990](v50);

    MEMORY[0x193B0A990](46, 0xE100000000000000);
    v51 = v121;
    sub_192228480();
    v52 = sub_1922284A0();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
    *v54 = v111;
    v56 = v122;
    (*(v122 + 16))(v54 + v55, v51, v36);
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();

    (*(v56 + 8))(v51, v36);
    (*(v129 + 8))(v38, v37);
    goto LABEL_15;
  }

  LOBYTE(v131) = 7;
  sub_19203EDF0(qword_1ED748740, type metadata accessor for BundleStub);
  v47 = v123;
  sub_1922287C0();
  v57 = v47;
  v58 = v110;
  v59 = v110 + v111[6];
  sub_19203D090(v57, v59, type metadata accessor for BundleStub);
  LOBYTE(v135[0]) = 8;
  sub_19203EE8C();
  sub_1922287C0();
  v125 = v41;
  v130 = 0;
  *v58 = v131;
  v60 = *(v59 + *(v124 + 20)) + *MEMORY[0x1E69941A8];
  swift_beginAccess();
  v61 = *(v60 + 8);
  v62 = v120;
  if (!v61)
  {
    v135[0] = *v110;
    v63 = v42(v135);
    if (v64)
    {
      v135[0] = v63 | 0x8000000000000000;
      sub_192050F58();
      swift_willThrowTypedImpl();
      v65 = v135[0];
      swift_allocError();
      *v66 = v65;

LABEL_25:

      (*(v129 + 8))(v38, v37);
      v71 = v113;
      v72 = v111;
      v73 = v110;
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v71);
      sub_192046FA8(&v73[v72[6]], type metadata accessor for BundleStub);
      return;
    }
  }

  v67 = v44(v59);
  if (v68)
  {
    v135[0] = v67;
    sub_192050F58();
    swift_willThrowTypedImpl();
    v69 = v135[0];
    swift_allocError();
    *v70 = v69;

    goto LABEL_25;
  }

  v74 = v62;
  LOBYTE(v135[0]) = 0;
  sub_19203EDF0(qword_1ED748810, MEMORY[0x1E6969530]);
  v75 = v118;
  v76 = v119;
  v77 = v130;
  sub_1922287C0();
  v72 = v111;
  v73 = v110;
  if (v77)
  {
    (*(v129 + 8))(v38, v37);

    v71 = v113;
    goto LABEL_28;
  }

  (*(v74 + 32))(v110 + v111[5], v75, v76);
  v136 = 1;
  sub_192044634();
  sub_1922287C0();
  v135[0] = v138;
  WidgetEnvironment.filterForArchiving()();
  *&v73[v72[7]] = v135[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9F8, &qword_19222F590);
  LOBYTE(v138) = 3;
  sub_19204D670(&qword_1ED748568, qword_1ED7485D8);
  sub_1922287C0();
  v130 = 0;
  *&v73[v72[9]] = v135[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA00, &qword_19222F598);
  LOBYTE(v138) = 4;
  sub_19204D760(&qword_1ED748570, &qword_1ED748698);
  v78 = v130;
  sub_1922287C0();
  v130 = v78;
  if (v78)
  {
    (*(v129 + 8))(v38, v37);

    v79 = 0;
    v80 = 0;
  }

  else
  {
    *&v73[v72[10]] = v135[0];
    LOBYTE(v135[0]) = 5;
    sub_19203EDF0(&qword_1ED7485B8, type metadata accessor for TimelineReloadPolicy);
    v81 = v117;
    v82 = v130;
    sub_1922287C0();
    v130 = v82;
    if (v82)
    {
      (*(v129 + 8))(v38, v37);

      v80 = 0;
      v79 = 1;
    }

    else
    {
      sub_19203D090(v81, &v73[v72[11]], type metadata accessor for TimelineReloadPolicy);
      LOBYTE(v138) = 2;
      sub_192047340();
      v83 = v130;
      sub_1922287C0();
      v130 = v83;
      if (v83)
      {
        (*(v129 + 8))(v114, v128);
      }

      else
      {
        v84 = v135[0];
        v85 = v135[1];
        sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
        v86 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
        v127 = v84;
        v124 = v85;
        v87 = v130;
        v88 = sub_192228010();
        if (v87)
        {
          v89 = *MEMORY[0x1E69E6B08];
          v90 = v87;
        }

        else
        {
          v101 = v88;
          if (v88)
          {
            (*(v129 + 8))(v114, v128);
            sub_192039140(v127, v124);

            v102 = v110;
            *(v110 + v111[8]) = v101;
            sub_19204CC18(v102, v115, type metadata accessor for WidgetArchivableMetadata);
            __swift_destroy_boxed_opaque_existential_1(v113);
            sub_192046FA8(v102, type metadata accessor for WidgetArchivableMetadata);
            return;
          }

          v103 = sub_1922284A0();
          v90 = swift_allocError();
          v105 = v104;
          v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
          *v105 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_19222B480;
          v108 = v109;
          *(v107 + 56) = &type metadata for WidgetArchivableMetadata.CodingKeys;
          *(v107 + 64) = v108;
          *(v107 + 32) = 2;
          sub_192228480();
          v89 = *MEMORY[0x1E69E6B08];
          (*(*(v103 - 8) + 104))(v105, v89, v103);
          swift_willThrow();
        }

        v91 = sub_1922284A0();
        v92 = swift_allocError();
        v94 = v93;
        v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
        *v94 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_19222B480;
        v97 = v109;
        *(v96 + 56) = &type metadata for WidgetArchivableMetadata.CodingKeys;
        *(v96 + 64) = v97;
        *(v96 + 32) = 2;
        v98 = v90;
        sub_192228480();
        (*(*(v91 - 8) + 104))(v94, v89, v91);
        v130 = v92;
        swift_willThrow();

        sub_192039140(v127, v124);

        (*(v129 + 8))(v114, v128);
      }

      v79 = 1;
      v80 = 1;
      v72 = v111;
      v73 = v110;
      v76 = v119;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v113);
  (*(v120 + 8))(&v73[v72[5]], v76);
  sub_192046FA8(&v73[v72[6]], type metadata accessor for BundleStub);

  v99 = *&v73[v72[9]];

  if ((v79 & 1) == 0)
  {
    if (!v80)
    {
      return;
    }

    goto LABEL_41;
  }

  v100 = *&v73[v72[10]];

  if (v80)
  {
LABEL_41:
    sub_192046FA8(&v73[v72[11]], type metadata accessor for TimelineReloadPolicy);
  }
}

uint64_t type metadata accessor for TimelineReloadPolicy()
{
  result = qword_1ED74B7C8;
  if (!qword_1ED74B7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19203EDF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19203EE38()
{
  result = qword_1ED74AB68;
  if (!qword_1ED74AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB68);
  }

  return result;
}

unint64_t sub_19203EE8C()
{
  result = qword_1ED748738;
  if (!qword_1ED748738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748738);
  }

  return result;
}

uint64_t SystemVersion.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF200, &qword_19222C270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203D1C8();
  sub_192228B70();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1922287E0();
    v15 = 1;
    v12 = sub_1922287E0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_19203F080()
{
  if (*v0)
  {
    result = 7038067;
  }

  else
  {
    result = 0x6D726F6674616C70;
  }

  *v0;
  return result;
}

uint64_t sub_19203F0B4(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  sub_1921BAABC();
  result = swift_allocError();
  *v3 = 0xD00000000000001FLL;
  v3[1] = 0x800000019224D7F0;
  return result;
}

id BundleStub.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BundleStub() + 20));

  return v1;
}

unint64_t sub_19203F180()
{
  result = qword_1ED74A1B0;
  if (!qword_1ED74A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1B0);
  }

  return result;
}

unint64_t sub_19203F1D8()
{
  result = qword_1ED74A1C0;
  if (!qword_1ED74A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1850, &qword_19223D498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1C0);
  }

  return result;
}

unint64_t sub_19203F23C()
{
  result = qword_1EADED260;
  if (!qword_1EADED260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED260);
  }

  return result;
}

uint64_t sub_19203F290@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F2E0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19203F2E0()
{
  result = qword_1EADED268;
  if (!qword_1EADED268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED268);
  }

  return result;
}

uint64_t sub_19203F334@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1240;
  return result;
}

void sub_19203F380()
{
  sub_192102390();
  if (v0 <= 0x3F)
  {
    sub_19202A7A8(319, &qword_1ED74BB40, 0x1E6994370);
    if (v1 <= 0x3F)
    {
      sub_19202A7A8(319, &qword_1ED74BD10, 0x1E69943F0);
      if (v2 <= 0x3F)
      {
        sub_19203F454();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19203F454()
{
  if (!qword_1ED74B560)
  {
    sub_1922261D0();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74B560);
    }
  }
}

unint64_t sub_19203F4DC()
{
  result = qword_1ED74A1C8;
  if (!qword_1ED74A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1858, qword_19223D5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1850, &qword_19223D498);
    sub_19203F1D8();
    sub_19203F180();
    swift_getOpaqueTypeConformance2();
    sub_192225D60();
    sub_19203F6FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1C8);
  }

  return result;
}

uint64_t type metadata accessor for CommonServerEnvironmentModifier()
{
  result = qword_1EADECF60;
  if (!qword_1EADECF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for InternalWidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19203F6FC()
{
  result = qword_1ED74B850;
  if (!qword_1ED74B850)
  {
    sub_192225D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B850);
  }

  return result;
}

uint64_t sub_19203F754@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1248;
  return result;
}

uint64_t sub_19203F7A0(char *a1)
{
  v2 = *a1;
  sub_19203F2E0();
  return sub_1922261F0();
}

void sub_19203F7F4()
{
  if (!qword_1ED74C4C0)
  {
    sub_192225020();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74C4C0);
    }
  }
}

uint64_t sub_19203F924(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19203F9A0()
{
  sub_19203F7F4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_19203FA0C()
{
  result = qword_1ED74A190;
  if (!qword_1ED74A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A190);
  }

  return result;
}

uint64_t static WidgetKitRenderer.inWidgetRenderer.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADED1A0 = a1;
  return result;
}

unint64_t sub_19203FACC()
{
  result = qword_1ED74A198;
  if (!qword_1ED74A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A198);
  }

  return result;
}

unint64_t sub_19203FB24()
{
  result = qword_1ED74A1A8;
  if (!qword_1ED74A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1A8);
  }

  return result;
}

void sub_19203FB78()
{
  sub_19203FF1C(319, &qword_1EADEDFB8, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_19203FEB8(319, &qword_1EADEDE88, &qword_1EADF0EE0, &qword_192238430, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_19203FEB8(319, &unk_1EADEDFC0, &qword_1EADEED10, &unk_19222B0F0, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_19203FEB8(319, &unk_1EADEDEA0, &qword_1EADEECD0, &qword_1922363D0, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_19203FEB8(319, &qword_1EADEDE80, &qword_1EADF0838, &qword_192235400, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_19203FEB8(319, &qword_1EADEDE90, &qword_1EADF0F98, &qword_1922385E0, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_19203FF6C(319, &qword_1ED748800, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_19203FEB8(319, &qword_1EADEDCD0, &qword_1EADEECD0, &qword_1922363D0, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_19203FF1C(319, &qword_1EADEDCC8, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_19203FEB8(319, &qword_1EADF0FA0, &qword_1EADF0FA8, &qword_1922385E8, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for DatePublisher(319);
                      if (v10 <= 0x3F)
                      {
                        sub_192225300();
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_19203FEB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_19203FF1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_19203FF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_192225150();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_19203FFCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1920400EC()
{
  result = qword_1EADEDF18;
  if (!qword_1EADEDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF18);
  }

  return result;
}

unint64_t sub_192040140()
{
  result = qword_1EADEDF20;
  if (!qword_1EADEDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF20);
  }

  return result;
}

unint64_t sub_192040194()
{
  result = qword_1EADED078;
  if (!qword_1EADED078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED078);
  }

  return result;
}

unint64_t sub_1920401E8()
{
  result = qword_1EADED088;
  if (!qword_1EADED088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED088);
  }

  return result;
}

uint64_t sub_19204023C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t storeEnumTagSinglePayload for WidgetRenderScheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t WidgetRenderScheme.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000023, 0x800000019224C140);
  v3 = 0xE800000000000000;
  v4 = 0x6465746E65636361;
  if (v1 != 1)
  {
    v4 = 0x746E6172626976;
    v3 = 0xE700000000000000;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F6C6F436C6C7566;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  MEMORY[0x193B0A990](v5, v6);

  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224C170);
  v7 = NSStringFromCHSWidgetBackgroundViewPolicy();
  v8 = sub_192227960();
  v10 = v9;

  MEMORY[0x193B0A990](v8, v10);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for ViewableTimelineEntry()
{
  result = qword_1ED74B7E8;
  if (!qword_1ED74B7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19204048C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE60, &unk_192246DC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_1920405C0()
{
  result = qword_1ED74A570;
  if (!qword_1ED74A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A570);
  }

  return result;
}

uint64_t EnvironmentValues._preferredSystemWidgetBackgroundStyle.setter(char *a1)
{
  v2 = *a1;
  sub_1920405C0();
  return sub_1922261F0();
}

uint64_t EnvironmentValues._preferredSystemWidgetBackgroundStyle.getter()
{
  sub_1920405C0();

  return sub_1922261E0();
}

void sub_19204069C()
{
  sub_192225150();
  if (v0 <= 0x3F)
  {
    sub_192040778(319, qword_1ED74A3B8);
    if (v1 <= 0x3F)
    {
      sub_192040814();
      if (v2 <= 0x3F)
      {
        sub_192040778(319, &qword_1ED74A2D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_192040778(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_192228240();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1920407C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_192040814()
{
  if (!qword_1ED74A340)
  {
    type metadata accessor for WidgetViewMetadata();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74A340);
    }
  }
}