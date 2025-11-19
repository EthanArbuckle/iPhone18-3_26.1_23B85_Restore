uint64_t sub_195620058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1956200A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1956200F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t sub_195620144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_19562056C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1956205F8()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAECE0B8);
  __swift_project_value_buffer(v0, qword_1EAECE0B8);
  return sub_19565D0DC();
}

id static ContactPosterContainer.makeContainer(disableCloudKit:inMemory:customStorePath:)(int a1, int a2, uint64_t a3)
{
  v49 = a3;
  v56[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC30);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - v12;
  v14 = sub_19565CEFC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = objc_opt_self();
  v17 = [v54 currentManagedObjectModel];
  v18 = 0x1E695D688;
  v50 = a1;
  if (((a1 | a2) & 1) == 0)
  {
    v18 = 0x1E695D668;
  }

  v19 = objc_allocWithZone(*v18);
  v20 = v17;
  v21 = sub_19565D27C();
  v22 = [v19 initWithName:v21 managedObjectModel:v20];

  v55 = v20;
  v52 = a2;
  if (a2)
  {
    sub_19565CE8C();
    v23 = 1;
    (*(v15 + 56))(v13, 0, 1, v14);
  }

  else
  {
    v48 = v22;
    sub_1955EAD0C(v49, v11);
    v24 = *(v15 + 48);
    if (v24(v11, 1, v14) == 1)
    {
      v25 = [v54 defaultDatabaseFileURL];
      if (v25)
      {
        v26 = v25;
        sub_19565CEDC();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*(v15 + 56))(v8, v27, 1, v14);
      sub_195620DE4(v8, v13);
      if (v24(v11, 1, v14) != 1)
      {
        sub_1954C2698(v11, &qword_1EAECDC30);
      }
    }

    else
    {
      (*(v15 + 32))(v13, v11, v14);
      (*(v15 + 56))(v13, 0, 1, v14);
    }

    v28 = v24(v13, 1, v14);
    v22 = v48;
    v23 = v50;
    if (v28 == 1)
    {
      sub_1954C2698(v13, &qword_1EAECDC30);
      if (qword_1EAECD9A8 != -1)
      {
        swift_once();
      }

      v29 = sub_19565D0EC();
      __swift_project_value_buffer(v29, qword_1EAECE0B8);
      v30 = sub_19565D0CC();
      v31 = sub_19565D69C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1954A0000, v30, v31, "Failed to create a URL to the poster database", v32, 2u);
        MEMORY[0x19A8B5DB0](v32, -1, -1);
      }

      sub_195620E54();
      swift_allocError();
      swift_willThrow();

      return v22;
    }
  }

  v33 = v53;
  (*(v15 + 32))(v53, v13, v14);
  v34 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v35 = sub_19565CE9C();
  v36 = [v34 initWithURL_];

  sub_1954C3460(0, &qword_1EAECB930);
  v37 = sub_19565D72C();
  [v36 setOption:v37 forKey:*MEMORY[0x1E695D3C0]];

  v38 = sub_19565D72C();
  [v36 setOption:v38 forKey:*MEMORY[0x1E695D430]];

  if ((v23 & 1) == 0)
  {
    v39 = sub_19565D27C();
    [v36 setConfiguration_];

    v40 = [v54 _cloudKitOptionsWorkingAroundModuleFailures];
    [v36 setCloudKitContainerOptions_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_19567B7B0;
  *(v41 + 32) = v36;
  sub_1954C3460(0, &qword_1EAECB928);
  v42 = v36;
  v43 = sub_19565D3EC();

  [v22 setPersistentStoreDescriptions_];

  if ((v52 & 1) == 0)
  {
    v56[0] = 0;
    if (![v54 createStoreDirectoryIfNeededAtDefaultLocation_])
    {
      v46 = v56[0];
      sub_19565CE6C();

      swift_willThrow();
      (*(v15 + 8))(v33, v14);
      return v22;
    }

    v44 = v56[0];
  }

  v45 = v51;
  sub_195620F5C(v22);
  (*(v15 + 8))(v33, v14);
  if (v45)
  {
  }

  return v22;
}

uint64_t sub_195620DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_195620E54()
{
  result = qword_1EAECE0D0;
  if (!qword_1EAECE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE0D0);
  }

  return result;
}

uint64_t sub_195620EB0()
{
  sub_19565DBDC();
  MEMORY[0x19A8B3B30](0);
  return sub_19565DBFC();
}

uint64_t sub_195620F1C()
{
  sub_19565DBDC();
  MEMORY[0x19A8B3B30](0);
  return sub_19565DBFC();
}

uint64_t sub_195620F5C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v16[4] = sub_195601958;
  v16[5] = v2;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_19562056C;
  v16[3] = &block_descriptor_2;
  v4 = _Block_copy(v16);

  [a1 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;
  if (!*v3)
  {
  }

  v6 = v5;
  if (qword_1EAECD9A8 != -1)
  {
    swift_once();
  }

  v7 = sub_19565D0EC();
  __swift_project_value_buffer(v7, qword_1EAECE0B8);
  v8 = v5;
  v9 = sub_19565D0CC();
  v10 = sub_19565D69C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1954A0000, v9, v10, "Could not load container: %@", v11, 0xCu);
    sub_1954C2698(v12, &qword_1EAECDC58);
    MEMORY[0x19A8B5DB0](v12, -1, -1);
    MEMORY[0x19A8B5DB0](v11, -1, -1);
  }

  swift_willThrow();
}

uint64_t getEnumTagSinglePayload for CNContactProviderSupportExtensionPoint(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CNContactProviderSupportExtensionPoint(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1956212AC()
{
  result = qword_1EAECE0D8;
  if (!qword_1EAECE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE0D8);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_195621320(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_19562477C(*(a1 + 16), 0);
  v4 = sub_1956278D8(&v6, v3 + 4, v2, a1);
  sub_1954C55E4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1956213C8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1956178FC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1956214C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_19565D81C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_19565D81C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_195624888(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_195627E88(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1956215B0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_195617A0C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1956216CC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_19565D81C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_19565D81C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_195624888(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1956217C4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_195617A30(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1956218B8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x19A8B3850](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_19565D81C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1956219E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_195621A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_19565D0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1954C2698(a1, &qword_1EAECDEB8);
    sub_195625DD4(a2, a3, v9);

    return sub_1954C2698(v9, &qword_1EAECDEB8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_195626430(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_195621C64()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAED0930);
  __swift_project_value_buffer(v0, qword_1EAED0930);
  return sub_19565D0DC();
}

id sub_195621CE0()
{
  result = [objc_allocWithZone(type metadata accessor for CNContactProviderSupportCache()) init];
  qword_1EAECB7F0 = result;
  return result;
}

id static CNContactProviderSupportCache.sharedCache.getter()
{
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAECB7F0;

  return v1;
}

void *sub_195621DEC()
{
  v1 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityByBundleIdentifierCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_19562477C(*(v2 + 16), 0);
  v5 = sub_1956278D8(&v7, v4 + 4, v3, v2);

  sub_1954C55E4();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

_BYTE *sub_195621EC4()
{
  v1 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityByBundleIdentifierCache;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[v1] = sub_19562FE34(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityCache] = v2;
  v3 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_containerByBundleIdentifierCache;
  *&v0[v3] = sub_195630020(v2);
  *&v0[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_queryTask] = 0;
  v4 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE148);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_internalExtensionBundleIDs] = &unk_1F094B7F0;
  v0[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_isInternalExtensionsEnabled] = 0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CNContactProviderSupportCache();
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = sub_19565D27C();
  LODWORD(v3) = CFPreferencesGetAppBooleanValue(v7, *MEMORY[0x1E695E890], 0);

  v6[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_isInternalExtensionsEnabled] = v3 != 0;
  if (*&v6[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_queryTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
    sub_19565D57C();
  }

  v9 = *&v6[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock];
  v10 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  os_unfair_lock_lock(v9 + 4);
  sub_1956289F0(v11);
  os_unfair_lock_unlock(v9 + 4);
  sleep(1u);

  return v6;
}

uint64_t sub_195622100(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_queryTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
    sub_19565D57C();
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v2 + 4);
  sub_195627A4C(v4);
  os_unfair_lock_unlock(v2 + 4);
  return sleep(1u);
}

uint64_t sub_19562220C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_19562FE34(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityByBundleIdentifierCache;
  swift_beginAccess();
  *&a1[v7] = v6;

  v8 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityCache;
  swift_beginAccess();
  *&a1[v8] = v5;

  v9 = sub_195630020(v5);
  v10 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_containerByBundleIdentifierCache;
  swift_beginAccess();
  *&a1[v10] = v9;

  v11 = sub_19565D56C();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = a1;
  *&v13[OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_queryTask] = sub_19560A5BC(0, 0, v4, &unk_19567CAD8, v12);
}

uint64_t sub_195622420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_19565D53C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_19565D0BC();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_19565D00C();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_19565CFEC();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v9 = sub_19565D02C();
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_195622650, 0, 0);
}

uint64_t sub_195622650()
{
  sub_19565D58C();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_19565CFDC();
  sub_19565D01C();
  sub_19565CFFC();
  (*(v2 + 8))(v1, v3);
  v4 = sub_195628674(&unk_1EAECB800, MEMORY[0x1E6966C20]);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1956229E8;
  v6 = v0[16];

  return MEMORY[0x1EEE6D8C8](v0 + 4, v6, v4);
}

uint64_t sub_1956229E8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_195623004;
  }

  else
  {
    v2 = sub_195622AFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195622B20()
{
  v41 = v0;
  v1 = *(v0 + 192);
  if (!v1)
  {
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    (*(v16 + 8))(v15, v17);
    goto LABEL_7;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 184);
    (*(*(v0 + 88) + 16))(*(v0 + 96), v1 + ((*(*(v0 + 88) + 80) + 32) & ~*(*(v0 + 88) + 80)), *(v0 + 80));
    sub_19565D58C();
    if (v3)
    {
      v4 = *(v0 + 160);
      v5 = *(v0 + 144);
      v38 = *(v0 + 152);
      v39 = *(v0 + 168);
      v7 = *(v0 + 128);
      v6 = *(v0 + 136);
      v8 = *(v0 + 88);
      v9 = *(v0 + 96);
      v10 = *(v0 + 80);

      (*(v8 + 8))(v9, v10);
      (*(v6 + 8))(v5, v7);
      (*(v4 + 8))(v39, v38);
      *(v0 + 16) = v3;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      if (swift_dynamicCast())
      {
        v13 = *(v0 + 64);
        v12 = *(v0 + 72);
        v14 = *(v0 + 56);

        (*(v13 + 8))(v12, v14);
        goto LABEL_7;
      }

      if (qword_1EAECB7E0 == -1)
      {
LABEL_18:
        v28 = sub_19565D0EC();
        __swift_project_value_buffer(v28, qword_1EAED0930);
        v29 = v3;
        v30 = sub_19565D0CC();
        v31 = sub_19565D69C();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v40 = v33;
          *v32 = 136446210;
          *(v0 + 24) = v3;
          v34 = v3;
          v35 = sub_19565D2EC();
          v37 = sub_1955EA0F8(v35, v36, &v40);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_1954A0000, v30, v31, "Discovered extension error %{public}s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x19A8B5DB0](v33, -1, -1);
          MEMORY[0x19A8B5DB0](v32, -1, -1);
        }

        else
        {
        }

LABEL_7:

        v18 = *(v0 + 8);

        return v18();
      }

LABEL_22:
      swift_once();
      goto LABEL_18;
    }

    v20 = *(v0 + 88);
    v3 = *(v0 + 96);
    v21 = *(v0 + 80);
    sub_195623344(v3);
    (*(v20 + 8))(v3, v21);
    if (v2 != 1)
    {
      v22 = 1;
      while (v22 < *(v1 + 16))
      {
        (*(*(v0 + 88) + 16))(*(v0 + 96), v1 + ((*(*(v0 + 88) + 80) + 32) & ~*(*(v0 + 88) + 80)) + *(*(v0 + 88) + 72) * v22, *(v0 + 80));
        sub_19565D58C();
        v23 = *(v0 + 88);
        v3 = *(v0 + 96);
        v24 = *(v0 + 80);
        ++v22;
        sub_195623344(v3);
        (*(v23 + 8))(v3, v24);
        if (v2 == v22)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_14:

  v25 = sub_195628674(&unk_1EAECB800, MEMORY[0x1E6966C20]);
  v26 = swift_task_alloc();
  *(v0 + 176) = v26;
  *v26 = v0;
  v26[1] = sub_1956229E8;
  v27 = *(v0 + 128);

  return MEMORY[0x1EEE6D8C8](v0 + 32, v27, v25);
}

uint64_t sub_195623004()
{
  *(v0 + 40) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_195623098, 0, 0);
}

uint64_t sub_195623098()
{
  v23 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 184);
  *(v0 + 16) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 56);

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 16);
  }

  else
  {

    if (qword_1EAECB7E0 != -1)
    {
      swift_once();
    }

    v10 = sub_19565D0EC();
    __swift_project_value_buffer(v10, qword_1EAED0930);
    v11 = v4;
    v12 = sub_19565D0CC();
    v13 = sub_19565D69C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      *(v0 + 24) = v4;
      v16 = v4;
      v17 = sub_19565D2EC();
      v19 = sub_1955EA0F8(v17, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1954A0000, v12, v13, "Discovered extension error %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x19A8B5DB0](v15, -1, -1);
      MEMORY[0x19A8B5DB0](v14, -1, -1);

      goto LABEL_9;
    }

    v9 = v4;
  }

LABEL_9:

  v20 = *(v0 + 8);

  return v20();
}

void sub_195623344(uint64_t a1)
{
  v2 = v1;
  v4 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
  v6 = v5;
  v7 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v9 = v8;
  v10 = _AppExtensionIdentity.appDisplayName.getter();
  v12 = v11;
  if (*(v2 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_isInternalExtensionsEnabled))
  {
    goto LABEL_8;
  }

  v13 = v10;
  v28[0] = v4;
  v28[1] = v6;
  MEMORY[0x1EEE9AC00](v10);
  v26 = v28;
  if ((sub_1956219E0(sub_19562841C, v25, v14) & 1) == 0)
  {
    v10 = v13;
LABEL_8:
    v22 = *(v2 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
    v24 = MEMORY[0x1EEE9AC00](v10);
    v25[0] = v2;
    v25[1] = v7;
    v26 = v9;
    v27 = a1;
    MEMORY[0x1EEE9AC00](v24);
    os_unfair_lock_lock(v22 + 4);
    sub_1956289F0(v23);
    os_unfair_lock_unlock(v22 + 4);

    return;
  }

  if (qword_1EAECB7E0 != -1)
  {
    swift_once();
  }

  v15 = sub_19565D0EC();
  __swift_project_value_buffer(v15, qword_1EAED0930);

  v16 = sub_19565D0CC();
  v17 = sub_19565D6AC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136446466;
    v20 = sub_1955EA0F8(v4, v6, v28);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2082;
    v21 = sub_1955EA0F8(v13, v12, v28);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_1954A0000, v16, v17, "Skipping discovered internal extension %{public}s for %{public}s app", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v19, -1, -1);
    MEMORY[0x19A8B5DB0](v18, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_19562364C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v35 = a6;
  v36 = a7;
  v37 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  if (qword_1EAECB7E0 != -1)
  {
    swift_once();
  }

  v15 = sub_19565D0EC();
  __swift_project_value_buffer(v15, qword_1EAED0930);

  v16 = sub_19565D0CC();
  v17 = sub_19565D6AC();

  v18 = os_log_type_enabled(v16, v17);
  v32 = a1;
  v33 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = a1;
    v22 = a3;
    v23 = v20;
    v38[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1955EA0F8(v21, a2, v38);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1955EA0F8(v22, a4, v38);
    _os_log_impl(&dword_1954A0000, v16, v17, "Discovered extension %{public}s for %{public}s app", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v23, -1, -1);
    MEMORY[0x19A8B5DB0](v19, -1, -1);
  }

  v24 = sub_19565D0BC();
  v25 = *(v24 - 8);
  v31 = *(v25 + 16);
  v26 = v34;
  v31(v14, v34, v24);
  v27 = *(v25 + 56);
  v27(v14, 0, 1, v24);
  swift_beginAccess();
  v28 = v36;

  sub_195621A8C(v14, v35, v28);
  v31(v14, v26, v24);
  v27(v14, 0, 1, v24);
  v29 = v33;

  sub_195621A8C(v14, v32, v29);
  swift_endAccess();
  return sub_195623990(v26);
}

uint64_t sub_195623990(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE130);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v25 - v5;
  v6 = sub_19565D0BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityCache;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v28 = a1;

  v15 = sub_195623D30(sub_1956283A4, v27, v14);
  v17 = v16;

  if (v17)
  {
    (*(v7 + 16))(v10, a1, v6);
    v18 = *(v2 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v13) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_195617E58(0, v18[2] + 1, 1, v18);
      *(v2 + v13) = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_195617E58(v20 > 1, v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    result = (*(v7 + 32))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v10);
    *(v2 + v13) = v18;
  }

  else
  {
    swift_beginAccess();
    sub_195623E1C(v15, v12);
    result = (*(v7 + 8))(v12, v6);
    if (*(*(v2 + v13) + 16) < v15)
    {
      __break(1u);
    }

    else if ((v15 & 0x8000000000000000) == 0)
    {
      v23 = v6;
      v24 = v26;
      (*(v7 + 16))(v26, a1, v23);
      sub_195626F60(v15, v15, v24);
      return swift_endAccess();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_195623C94()
{
  v0 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
  v2 = v1;
  if (v0 == _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_19565DB1C();
  }

  return v4 & 1;
}

uint64_t sub_195623D30(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_19565D0BC() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_195623E1C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_195627234(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_19565D0BC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_195623F24()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_195627A4C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_195623FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityByBundleIdentifierCache;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_1954C2328(a2, a3);
    if (v11)
    {
      v12 = v10;
      v13 = *(v9 + 56);
      v14 = sub_19565D0BC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a4, v13 + *(v15 + 72) * v12, v14);

      return (*(v15 + 56))(a4, 0, 1, v14);
    }
  }

  v17 = sub_19565D0BC();
  return (*(*(v17 - 8) + 56))(a4, 1, 1, v17);
}

uint64_t sub_195624130()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1956134FC(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1956241A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityCache;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

uint64_t sub_19562420C()
{
  _AppExtensionIdentity.appBundleIdentifier.getter();
  v1 = *(v0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1956289F0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1956242A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_containerByBundleIdentifierCache;
  swift_beginAccess();

  v9 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1956265B0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v12;
  return swift_endAccess();
}

uint64_t sub_19562436C()
{
  _AppExtensionIdentity.appBundleIdentifier.getter();
  v1 = *(v0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1956289F0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_195624400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_containerByBundleIdentifierCache;
  swift_beginAccess();

  v7 = sub_1954C2328(a2, a3);
  v9 = v8;

  if (v9)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v6);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195626DF4();
    }

    sub_195626130(v7, v11);
    *(a1 + v6) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_1956244E8()
{
  _AppExtensionIdentity.appBundleIdentifier.getter();
  v1 = *(v0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_195611564(&v3);
  os_unfair_lock_unlock(v1 + 4);

  return v3;
}

uint64_t sub_195624584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_containerByBundleIdentifierCache;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_1954C2328(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      v14 = v13;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  return result;
}

id CNContactProviderSupportCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactProviderSupportCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_195624720(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void *sub_19562477C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC78);
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

void *sub_195624800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
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

uint64_t sub_195624888(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_19565D81C();
LABEL_9:
  result = sub_19565D91C();
  *v1 = result;
  return result;
}

uint64_t sub_195624928(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE1B8);
  v34 = a2;
  result = sub_19565DA5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_19565DBDC();
      sub_19565D30C();
      result = sub_19565DBFC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_195624C0C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_19565DA5C();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_19565D74C();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_195624E6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEF8);
  v33 = a2;
  result = sub_19565DA5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1955EBBA0(v24, v34);
      }

      else
      {
        sub_1954C2458(v24, v34);
      }

      sub_19565DBDC();
      sub_19565D30C();
      result = sub_19565DBFC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1955EBBA0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_195625124(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_19565D0BC();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE140);
  v42 = a2;
  result = sub_19565DA5C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_19565DBDC();
      sub_19565D30C();
      result = sub_19565DBFC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1956254A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE180);
  v35 = a2;
  result = sub_19565DA5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_19565DBDC();
      sub_19565D30C();
      result = sub_19565DBFC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_195625748(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE170);
  result = sub_19565DA5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_1955EC020(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_19565D85C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1956259F8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_19565CDCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE178);
  v39 = a2;
  result = sub_19565DA5C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_195628674(&qword_1EAECB920, MEMORY[0x1E6968A70]);
      result = sub_19565D1CC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_195625DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1954C2328(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195626B74();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_19565D0BC();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_195625F44(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_19565D0BC();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_195625F44(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19565D7EC() + 1) & ~v5;
    while (1)
    {
      sub_19565DBDC();

      sub_19565D30C();
      v9 = sub_19565DBFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_19565D0BC() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_195626130(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19565D7EC() + 1) & ~v5;
    do
    {
      sub_19565DBDC();

      sub_19565D30C();
      v9 = sub_19565DBFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1956262E0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1954C2328(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1956269D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_195624E6C(v16, a4 & 1);
    v11 = sub_1954C2328(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_19565DB5C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1955EBBA0(a1, v22);
  }

  else
  {
    sub_195626728(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_195626430(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1954C2328(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_195626B74();
      goto LABEL_7;
    }

    sub_195625124(v15, a4 & 1);
    v26 = sub_1954C2328(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_19565DB5C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_19565D0BC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_195626794(v12, a2, a3, a1, v18);
}

uint64_t sub_1956265B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1954C2328(a2, a3);
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
      sub_1956254A4(v16, a4 & 1);
      v11 = sub_1954C2328(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_19565DB5C();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_195626DF4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

_OWORD *sub_195626728(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1955EBBA0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_195626794(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_19565D0BC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_195626880(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_19565DA4C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1956269D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEF8);
  v2 = *v0;
  v3 = sub_19565DA4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1954C2458(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1955EBBA0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_195626B74()
{
  v1 = v0;
  v35 = sub_19565D0BC();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE140);
  v3 = *v0;
  v4 = sub_19565DA4C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_195626DF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE180);
  v2 = *v0;
  v3 = sub_19565DA4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_195626F60(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_195617E58(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_195627034(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_195627034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_19565D0BC();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1954C2698(v25, &unk_1EAECE130);
  }

  if (v18 < 1)
  {
    return sub_1954C2698(v25, &unk_1EAECE130);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1954C2698(v25, &unk_1EAECE130);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1956271D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_19565D81C();
  }

  return sub_19565D91C();
}

uint64_t sub_195627270(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, char a7)
{
  v7 = a6;
  v8 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v34 = a4;
  v35 = a5;
  v36 = a6;
  LOBYTE(v9) = a7 & 1;
  v37 = a7;
  if (!a2)
  {
LABEL_41:
    v10 = 0;
    goto LABEL_42;
  }

  v10 = a3;
  if (a3)
  {
    if (a3 < 0)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    v30 = a1;
    v12 = 0;
    v31 = a4;
    while (1)
    {
      if ((a7 & 1) == 0)
      {
        v33 = MEMORY[0x1E69E7CC0];
        v13 = swift_allocObject();
        *(v13 + 16) = &v33;
        v14 = swift_allocObject();
        v14[2] = sub_1956285C4;
        v14[3] = v13;
        aBlock[4] = sub_1956285CC;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_195624720;
        aBlock[3] = &block_descriptor_3;
        v15 = _Block_copy(aBlock);

        aBlock[0] = 0;
        v16 = [v31 enumerateContactsWithFetchRequest:v8 error:aBlock usingBlock:v15];
        _Block_release(v15);
        v17 = aBlock[0];
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_46;
        }

        if ((v16 & 1) == 0)
        {
          v19 = sub_19565CE6C();

          swift_willThrow();
        }

        sub_1956216CC(v20, sub_195627CE8);
        v37 = 1;

        v7 = v36;
      }

      v21 = v7 >> 62;
      if (v7 >> 62)
      {
        if (!sub_19565D81C())
        {
          goto LABEL_50;
        }

        if (!sub_19565D81C())
        {
          goto LABEL_51;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x19A8B3850](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v22 = *(v7 + 32);
      }

      v23 = v22;
      if (v21)
      {
        if (!sub_19565D81C())
        {
          goto LABEL_47;
        }

        if (sub_19565D81C() < 1)
        {
          goto LABEL_48;
        }

        v24 = sub_19565D81C();
      }

      else
      {
        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          goto LABEL_47;
        }
      }

      v25 = v24 - 1;
      if (__OFSUB__(v24, 1))
      {
        goto LABEL_45;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v21)
      {
        goto LABEL_27;
      }

      v26 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v25 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

LABEL_29:

      if (v7 >> 62)
      {
        v28 = sub_19565D81C();
        if (__OFSUB__(v28, 1))
        {
          goto LABEL_52;
        }

        memmove((v26 + 32), (v26 + 40), 8 * (v28 - 1));
        a1 = sub_19565D81C();
        v9 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
        v27 = *(v26 + 16);
        a1 = memmove((v26 + 32), (v26 + 40), 8 * v27 - 8);
        v9 = v27 - 1;
        if (__OFSUB__(v27, 1))
        {
          goto LABEL_40;
        }
      }

      *(v26 + 16) = v9;
      *(a2 + 8 * v12) = v23;
      v36 = v7;
      a7 = 1;
      if (v10 == ++v12)
      {
        a4 = v34;
        v8 = v35;
        LOBYTE(v9) = v37;
        a1 = v30;
        goto LABEL_42;
      }
    }

    if (v21)
    {
LABEL_27:
      sub_19565D81C();
    }

LABEL_28:
    v7 = sub_19565D91C();
    v26 = v7 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_29;
  }

LABEL_42:
  *a1 = a4;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  return v10;
}

uint64_t sub_1956276DC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_19565D9DC();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_19565DA1C())
      {
        goto LABEL_31;
      }

      sub_1954C3460(0, &qword_1EAECE190);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_1956278D8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_195627A68@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_appExtensionIdentityCache;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

id sub_195627ACC(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_19565D80C();
  sub_1954C3460(0, &qword_1EAECB830);
  sub_19562860C();
  result = sub_19565D5BC();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_19565D83C())
      {
        goto LABEL_30;
      }

      sub_1954C3460(0, &qword_1EAECB830);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_195627CE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19565D81C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_19565D81C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_195628980(&unk_1EAECE150, &qword_1EAECE0B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE0B0);
            v9 = sub_1955F5264(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1954C3460(0, &qword_1EAECB810);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_195627E88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19565D81C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_19565D81C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_195628980(&unk_1EAECE1D0, &qword_1EAECE1C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE1C8);
            v9 = sub_1955F52E4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_195628024(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_19565D81C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_19565D81C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_195628980(&qword_1EAECE3E0, &unk_1EAECDF80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
            v9 = sub_1955F5264(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1954C3460(0, &qword_1EAECB830);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1956283C4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_19565DB1C() & 1;
  }
}

uint64_t sub_19562841C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19565DB1C() & 1;
  }
}

uint64_t sub_19562849C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1954C3460(0, &qword_1EAECB810);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_19565D81C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_19565D81C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19562860C()
{
  result = qword_1EAECE160;
  if (!qword_1EAECE160)
  {
    sub_1954C3460(255, &qword_1EAECB830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE160);
  }

  return result;
}

uint64_t sub_195628674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1956286BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1954C37F4;

  return sub_195622420(a1, v4, v5, v6);
}

uint64_t sub_195628770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE1B0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_19565D81C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_19565D81C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_195628894(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    v12 = a3;
    if (!v7)
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_19565D81C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_19565D81C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_195624888(result);

  return v12(v5, v3, 0);
}

uint64_t sub_195628980(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_195628A08()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_19565D27C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_195628A74(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 posterData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_19565CF2C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_195628ADC(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_19565CF0C();
  }

  v4 = v3;
  [v2 setPosterData_];
}

id CNDuplicateSetContactPoster.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CNDuplicateSetContactPoster.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CNDuplicateSetContactPoster();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CNDuplicateSetContactPoster.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDuplicateSetContactPoster();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195628CC0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNDuplicateSetContactPoster();
  result = sub_19565D8EC();
  *a1 = result;
  return result;
}

void CNContact.id.getter()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    sub_19565D28C();
    v1 = sub_19565D27C();
  }

  v2 = [objc_opt_self() uuidFromContactIdentifier_];

  sub_19565CF8C();
}

unint64_t sub_195628DF0()
{
  result = qword_1EAECE1E0;
  if (!qword_1EAECE1E0)
  {
    sub_19565CFAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE1E0);
  }

  return result;
}

void sub_195628E48()
{
  v1 = [*v0 id];
  sub_19565CF8C();
}

void sub_195628EA8()
{
  v0 = sub_1954C218C();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  v2 = [v0 persistentStoreCoordinator];

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = [v2 persistentStores];
  sub_1954C22DC();
  v4 = sub_19565D3FC();

  if (v4 >> 62)
  {
    if (sub_19565D81C())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:

    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v7 = sub_19565D0EC();
    __swift_project_value_buffer(v7, qword_1EAED0948);
    oslog = sub_19565D0CC();
    v8 = sub_19565D69C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1954A0000, oslog, v8, "Missing persistent store when setting metadata for ManagedDuplicateStore", v9, 2u);
      MEMORY[0x19A8B5DB0](v9, -1, -1);
    }

    goto LABEL_15;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x19A8B3850](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  oslog = sub_19565D16C();

  [v2 setMetadata:oslog forPersistentStore:v6];

LABEL_15:
}

void sub_1956290CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1954C1D98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v2;
    sub_195629B68(a1, sub_1956299BC, 0, isUniquelyReferenced_nonNull_native, &v4);

    sub_195628EA8();
  }
}

void (*ManagedDuplicateStore.currentToken.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 176) = v1;
  *(v3 + 160) = sub_1954C1CA0(0);
  *(v4 + 168) = v5;
  return sub_195629214;
}

uint64_t sub_195629230(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567B7A0;
  *(inited + 32) = a5;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEC0000006E656B6FLL;
  *(inited + 48) = v7;
  *(inited + 56) = v6;

  v9 = sub_1956128FC(inited);
  swift_setDeallocating();
  sub_1954C2698(inited + 32, &unk_1EAECE400);
  sub_1956290CC(v9);
}

uint64_t sub_19562931C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567B7A0;
  *(inited + 32) = a3;
  v7 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xEC0000006E656B6FLL;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v8 = sub_1956128FC(inited);
  swift_setDeallocating();
  sub_1954C2698(v7, &unk_1EAECE400);
  if (*(v8 + 16))
  {
    v9 = sub_1954C1D98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v9;
    sub_195629B68(v8, sub_1956299BC, 0, isUniquelyReferenced_nonNull_native, &v12);

    sub_195628EA8();
  }
}

void (*ManagedDuplicateStore.pendingToken.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 176) = v1;
  *(v3 + 160) = sub_1954C1CA0(1);
  *(v4 + 168) = v5;
  return sub_1956294BC;
}

void sub_1956294D0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 160);
  v7 = *(*a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19567B7A0;
    *(inited + 32) = a3;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xEC0000006E656B6FLL;
    *(inited + 48) = v6;
    *(inited + 56) = v7;

    v9 = sub_1956128FC(inited);
    swift_setDeallocating();
    sub_1954C2698(inited + 32, &unk_1EAECE400);
    if (*(v9 + 16))
    {
      v10 = sub_1954C1D98();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = v10;
      sub_195629B68(v9, sub_1956299BC, 0, isUniquelyReferenced_nonNull_native, v17);

      sub_195628EA8();
    }
  }

  else
  {
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_19567B7A0;
    *(v12 + 32) = a3;
    v13 = v12 + 32;
    *(v12 + 72) = MEMORY[0x1E69E6158];
    *(v12 + 40) = 0xEC0000006E656B6FLL;
    *(v12 + 48) = v6;
    *(v12 + 56) = v7;
    v14 = sub_1956128FC(v12);
    swift_setDeallocating();
    sub_1954C2698(v13, &unk_1EAECE400);
    if (*(v14 + 16))
    {
      v15 = sub_1954C1D98();

      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = v15;
      sub_195629B68(v14, sub_1956299BC, 0, v16, v17);

      sub_195628EA8();
    }
  }

  free(v5);
}

Swift::Bool __swiftcall ManagedDuplicateStore.needsRefresh(token:)(Swift::String token)
{
  object = token._object;
  countAndFlagsBits = token._countAndFlagsBits;
  if (sub_1954C1CA0(0) != token._countAndFlagsBits || v3 != object)
  {
    v5 = sub_19565DB1C();

    v4 = 0;
    if (v5)
    {
      return v4 & 1;
    }

    if (sub_1954C1CA0(1) != countAndFlagsBits || v6 != object)
    {
      v7 = sub_19565DB1C();

      v4 = v7 ^ 1;
      return v4 & 1;
    }
  }

  v4 = 0;
  return v4 & 1;
}

Swift::Void __swiftcall ManagedDuplicateStore.didRefresh(token:success:)(Swift::String token, Swift::Bool success)
{
  object = token._object;
  countAndFlagsBits = token._countAndFlagsBits;
  if (sub_1954C1CA0(1) == token._countAndFlagsBits && v5 == object)
  {
  }

  else
  {
    v7 = sub_19565DB1C();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  if (success)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19567B7A0;
    strcpy((inited + 32), "currentToken");
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = countAndFlagsBits;
    *(inited + 56) = object;

    v9 = sub_1956128FC(inited);
    swift_setDeallocating();
    v10 = inited + 32;
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 32) = 0x54676E69646E6570;
    v12 = v11 + 32;
    v13 = MEMORY[0x1E69E6158];
    *(v11 + 16) = xmmword_19567B7A0;
    *(v11 + 72) = v13;
    *(v11 + 40) = 0xEC0000006E656B6FLL;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0xE000000000000000;
    v9 = sub_1956128FC(v11);
    swift_setDeallocating();
    v10 = v12;
  }

  sub_1954C2698(v10, &unk_1EAECE400);
  if (*(v9 + 16))
  {
    v14 = sub_1954C1D98();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v14;
    sub_195629B68(v9, sub_1956299BC, 0, isUniquelyReferenced_nonNull_native, &v16);

    sub_195628EA8();
  }
}

uint64_t sub_1956299BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1954C2458((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_195629A08@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1954C2458(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1955EBBA0(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1954C2698(v21, &qword_1EAECE1E8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_195629B68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_195629A08(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1955EBBA0(v44, v42);
  v14 = *a5;
  result = sub_1954C2328(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_195624E6C(v20, a4 & 1);
    result = sub_1954C2328(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_19565DB5C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1956269D0();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1955EBBA0(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1955EBBA0(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_195629A08(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1955EBBA0(v44, v42);
        v32 = *a5;
        result = sub_1954C2328(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_195624E6C(v36, 1);
          result = sub_1954C2328(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_1955EBBA0(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1955EBBA0(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_195629A08(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1954C55E4();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_195629E98(char *a1, uint64_t a2, void *a3, char a4)
{
  v5 = &a1[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event];
  v6 = *&a1[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event];
  *v5 = a3;
  v7 = v5[8];
  v5[8] = a4;
  v8 = a3;
  v9 = a1;
  sub_19562AD4C(v6, v7);
}

id sub_195629F68()
{
  v2.receiver = v0;
  v2.super_class = _s26FetchedChangeHistoryEventsV22EventVisitorTranslatorCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CNContactStore.FetchedChangeHistoryEvents.currentHistoryToken.getter()
{
  v1 = *(v0 + 8);
  sub_1955F79F4(v1, *(v0 + 16));
  return v1;
}

uint64_t CNContactStore.FetchedChangeHistoryEvents.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v2;

  return sub_1955F79F4(v3, v4);
}

void CNContactStore.FetchedChangeHistoryEvents.next()(uint64_t a1@<X8>)
{
  if ([*v1 nextObject])
  {
    sub_19565D7CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_19562A158(v9);
    goto LABEL_8;
  }

  sub_19562A1C0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    v5 = -1;
    goto LABEL_9;
  }

  v3 = [objc_allocWithZone(_s26FetchedChangeHistoryEventsV22EventVisitorTranslatorCMa()) init];
  [v6 acceptEventVisitor_];

  v4 = *&v3[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event];
  v5 = v3[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event + 8];
  sub_19562A230(v4, v5);

LABEL_9:
  *a1 = v4;
  *(a1 + 8) = v5;
}

uint64_t sub_19562A158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19562A1C0()
{
  result = qword_1EAECB938;
  if (!qword_1EAECB938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAECB938);
  }

  return result;
}

id sub_19562A230(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_19562A244@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v2;
  sub_1955F79F4(v3, v4);

  return sub_1954C1C4C(v3, v4);
}

uint64_t sub_19562A2B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_19562B210(v1, v2, v3);
  v5 = v4;

  sub_1954C1C4C(v2, v3);
  return v5;
}

void *sub_19562A318(void *result, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v8 = 0;
  if (!a2 || !a3)
  {
LABEL_15:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = a6;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v14 = a5;
    v15 = a6;
    v8 = 0;
    while (1)
    {
      if ([a4 nextObject])
      {
        sub_19565D7CC();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v19[0] = v17;
      v19[1] = v18;
      if (!*(&v18 + 1))
      {
        break;
      }

      sub_19562A1C0();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v11 = [objc_allocWithZone(_s26FetchedChangeHistoryEventsV22EventVisitorTranslatorCMa()) init];
      [v16 acceptEventVisitor_];

      v12 = *&v11[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event];
      v13 = v11[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event + 8];
      sub_19562A230(v12, v11[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event + 8]);

      if (v13 == 255)
      {
        goto LABEL_14;
      }

      ++v8;
      *v10 = v12;
      *(v10 + 8) = v13;
      v10 += 16;
      if (a3 == v8)
      {
        v8 = a3;
        goto LABEL_14;
      }
    }

    sub_19562A158(v19);
LABEL_14:
    a5 = v14;
    a6 = v15;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void CNContactStore.changeHistoryEvents(request:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v5 = [v3 executeFetchRequest:a1 error:v14];
  if (v5)
  {
    v6 = v5;
    v7 = v14[0];
    v8 = [objc_msgSend(v6 value)];
    swift_unknownObjectRelease();
    v9 = [v6 currentHistoryToken];
    v10 = sub_19565CF2C();
    v12 = v11;

    *a2 = v8;
    a2[1] = v10;
    a2[2] = v12;
  }

  else
  {
    v13 = v14[0];
    sub_19565CE6C();

    swift_willThrow();
  }
}

id CNContactStore.contacts(request:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *a2 = v2;
  v4 = v2;

  return a1;
}

void __swiftcall CNContactStore.FetchedContactsSequence.next()(CNContact_optional *__return_ptr retstr)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    sub_19562A68C();
  }

  sub_19562A888();
}

uint64_t sub_19562A68C()
{
  v1 = v0;
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = MEMORY[0x1E69E7CC0];
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v13;
  v5 = swift_allocObject();
  v5[2] = sub_19562B4B8;
  v5[3] = v4;
  aBlock[4] = sub_19562B4B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195624720;
  aBlock[3] = &block_descriptor_33;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v3 enumerateContactsWithFetchRequest:v2 error:aBlock usingBlock:v6];
  _Block_release(v6);
  v8 = aBlock[0];
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  if (!v7)
  {
    v9 = sub_19565CE6C();

    swift_willThrow();
  }

  sub_1956213B0(v10);
  *(v1 + 24) = 1;
}

void sub_19562A888()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_19565D81C())
  {
    if (sub_19565D81C())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x19A8B3850](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_19565D81C();
LABEL_13:
      if (v3)
      {
        sub_1956285AC(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_19562A960(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  MEMORY[0x19A8B3320]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_19565D42C();
  }

  return sub_19565D48C();
}

uint64_t CNContactStore.FetchedContactsSequence.first.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v9 = v1;
  v4 = v1;
  v5 = v2;

  if ((v3 & 1) == 0)
  {
    sub_19562A68C();
  }

  sub_19562A888();
  v7 = v6;

  return v7;
}

__n128 sub_19562AA5C@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_19562AA78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = sub_19562AD60(*v0, v2, *(v0 + 16), *(v0 + 24));

  return v3;
}

void sub_19562AAE0(void *a1@<X8>)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    sub_19562A68C();
  }

  sub_19562A888();
  *a1 = v3;
}

unint64_t sub_19562AB1C()
{
  result = qword_1EAECE208;
  if (!qword_1EAECE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE208);
  }

  return result;
}

unint64_t sub_19562AB74()
{
  result = qword_1EAECE210;
  if (!qword_1EAECE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE210);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_19562ABF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19562AC40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_19562ACB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_19562ACF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19562AD4C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_19562AD60(void *a1, void *a2, unint64_t a3, char a4)
{
  v40[1] = a1;
  v40[2] = a2;
  v41 = a3;
  v42 = a4;
  v38 = a1;
  v6 = a2;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = (MEMORY[0x1E69E7CC0] + 32);
  if (a4)
  {
    goto LABEL_6;
  }

  v40[0] = MEMORY[0x1E69E7CC0];
  v11 = swift_allocObject();
  *(v11 + 16) = v40;
  v12 = swift_allocObject();
  v12[2] = sub_1956285C4;
  v12[3] = v11;
  aBlock[4] = sub_19562B490;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195624720;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v14 = [v38 enumerateContactsWithFetchRequest:v6 error:aBlock usingBlock:v13];
  _Block_release(v13);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_55;
  }

  if ((v14 & 1) == 0)
  {
    v17 = sub_19565CE6C();

    swift_willThrow();
  }

  sub_1956213B0(v18);
  v42 = 1;

  while (1)
  {
LABEL_6:
    v19 = v41;
    v20 = v41 >> 62;
    if (v41 >> 62)
    {
      result = sub_19565D81C();
      if (!result)
      {
        goto LABEL_59;
      }

      result = sub_19565D81C();
      if (!result)
      {
        goto LABEL_60;
      }
    }

    else if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x19A8B3850](0, v19);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v21 = *(v19 + 32);
    }

    v22 = v21;
    if (v20)
    {
      result = sub_19565D81C();
      if (!result)
      {
        goto LABEL_56;
      }

      result = sub_19565D81C();
      if (result < 1)
      {
        goto LABEL_57;
      }

      result = sub_19565D81C();
      v23 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_56;
      }

      v23 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_53;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v20)
      {
        v24 = v19 & 0xFFFFFFFFFFFFFF8;
        if (v23 <= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_19565D81C();
      goto LABEL_25;
    }

    if (v20)
    {
      goto LABEL_24;
    }

LABEL_25:
    v19 = sub_19565D91C();
    v24 = v19 & 0xFFFFFFFFFFFFFF8;
LABEL_26:

    if (v19 >> 62)
    {
      break;
    }

    v25 = *(v24 + 16);
    result = memmove((v24 + 32), (v24 + 40), 8 * v25 - 8);
    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_50;
    }

LABEL_28:
    *(v24 + 16) = v26;
    v41 = v19;
    if (!v8)
    {
      v27 = v9[3];
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_58;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
      v30 = swift_allocObject();
      v31 = _swift_stdlib_malloc_size(v30);
      v32 = v31 - 32;
      if (v31 < 32)
      {
        v32 = v31 - 25;
      }

      v33 = v32 >> 3;
      v30[2] = v29;
      v30[3] = (2 * (v32 >> 3)) | 1;
      v34 = (v30 + 4);
      v35 = v9[3] >> 1;
      if (v9[2])
      {
        v36 = v9 + 4;
        if (v30 != v9 || v34 >= v36 + 8 * v35)
        {
          memmove(v30 + 4, v36, 8 * v35);
        }

        v9[2] = 0;
      }

      v10 = (v34 + 8 * v35);
      v8 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

      v9 = v30;
    }

    if (__OFSUB__(v8--, 1))
    {
      goto LABEL_54;
    }

    *v10++ = v22;
  }

  result = sub_19565D81C();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_61;
  }

  memmove((v24 + 32), (v24 + 40), 8 * (result - 1));
  result = sub_19565D81C();
  v26 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void sub_19562B210(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v29 = a2;
  v30 = a3;
  sub_1955F79F4(a2, a3);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0] + 32;
  v9 = &off_1E7419000;
  v31 = v5;
  while (1)
  {
    if ([v5 v9[310]])
    {
      sub_19565D7CC();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    if (!*(&v34 + 1))
    {
      break;
    }

    sub_19562A1C0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v10 = [objc_allocWithZone(_s26FetchedChangeHistoryEventsV22EventVisitorTranslatorCMa()) init];
    [v32 acceptEventVisitor_];

    v11 = *&v10[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event];
    v12 = v10[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event + 8];
    sub_19562A230(v11, v10[OBJC_IVAR____TtCVE8ContactsCSo14CNContactStore26FetchedChangeHistoryEvents22EventVisitorTranslator_event + 8]);

    if (v12 == 255)
    {
      goto LABEL_24;
    }

    if (!v6)
    {
      v13 = *(v7 + 3);
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_29;
      }

      v14 = v9;
      v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE288);
      v17 = swift_allocObject();
      v18 = _swift_stdlib_malloc_size(v17);
      v19 = v18 - 32;
      if (v18 < 32)
      {
        v19 = v18 - 17;
      }

      v20 = v19 >> 4;
      *(v17 + 2) = v16;
      *(v17 + 3) = 2 * (v19 >> 4);
      v21 = v17 + 32;
      v22 = *(v7 + 3) >> 1;
      v23 = 16 * v22;
      if (*(v7 + 2))
      {
        v24 = v7 + 32;
        if (v17 != v7 || v21 >= &v24[v23])
        {
          memmove(v17 + 32, v24, v23);
        }

        *(v7 + 2) = 0;
      }

      v8 = &v21[v23];
      v6 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;

      v7 = v17;
      v9 = v14;
      v5 = v31;
    }

    v25 = __OFSUB__(v6--, 1);
    if (v25)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    *v8 = v11;
    *(v8 + 8) = v12;
    v8 += 16;
  }

  sub_19562A158(v35);
LABEL_24:

  sub_1954C1C4C(v29, v30);
  v26 = *(v7 + 3);
  if (v26 < 2)
  {
    return;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v6);
  v28 = v27 - v6;
  if (!v25)
  {
    *(v7 + 2) = v28;
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static DuplicateCohortRanker.preferredCohort<A>(for:contactStore:)(uint64_t a1, void *a2)
{
  sub_19562B7C8(a2);
  sub_19565D4CC();
  swift_getWitnessTable();
  sub_19565D37C();

  result = v3;
  if (!v3)
  {
    swift_getWitnessTable();
    sub_19565D64C();
    return a1;
  }

  return result;
}

uint64_t sub_19562B5B4()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAECE290);
  __swift_project_value_buffer(v0, qword_1EAECE290);
  return sub_19565D0DC();
}

uint64_t sub_19562B638(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = sub_19565D28C();
  v6 = v5;

  v10[0] = v4;
  v10[1] = v6;
  v9[2] = v10;
  v7 = sub_1956219E0(sub_19561C1E4, v9, a2);

  return v7 & 1;
}

id DuplicateCohortRanker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DuplicateCohortRanker.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateCohortRanker();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DuplicateCohortRanker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateCohortRanker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19562B7C8(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v1 = [a1 meContactIdentifiers_];
  v2 = v18[0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_19565D3FC();
    v5 = v2;
  }

  else
  {
    v6 = v18[0];
    v7 = sub_19565CE6C();

    swift_willThrow();
    if (qword_1EAECD9B0 != -1)
    {
      swift_once();
    }

    v8 = sub_19565D0EC();
    __swift_project_value_buffer(v8, qword_1EAECE290);
    v9 = v7;
    v10 = sub_19565D0CC();
    v11 = sub_19565D68C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_19565DB8C();
      v16 = sub_1955EA0F8(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1954A0000, v10, v11, "Could not fetch Me contact from store: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x19A8B5DB0](v13, -1, -1);
      MEMORY[0x19A8B5DB0](v12, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

id sub_19562BA48()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_19565D27C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id CNDuplicateSetContactImage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CNDuplicateSetContactImage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CNDuplicateSetContactImage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id CNDuplicateSetContactImage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDuplicateSetContactImage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19562BC20@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNDuplicateSetContactImage();
  result = sub_19565D8EC();
  *a1 = result;
  return result;
}

uint64_t static DuplicateContactsModerator.combinePotentialDuplicatesWithCommonHandles<A>(potentialDuplicates:groupedBy:)()
{
  sub_19565D4CC();
  sub_19565D14C();
  sub_19565D4CC();
  swift_getWitnessTable();
  sub_19565D39C();
  return v1;
}

uint64_t static DuplicateContactsModerator.groupByCommonHandles<A>(contacts:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19565D49C();
  if (v4 < 2)
  {
    sub_19565D4CC();
    return sub_19565D46C();
  }

  else
  {
    v21 = a1;
    MEMORY[0x1EEE9AC00](v4);
    v18 = a2;
    v5 = sub_19565D4CC();
    v6 = type metadata accessor for DuplicateHandleSet();
    WitnessTable = swift_getWitnessTable();
    v9 = sub_1955EC3E8(sub_19562D88C, v17, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
    v10 = sub_19565D49C();
    if (v10)
    {
      do
      {
        v11 = sub_19565D49C();
        v20 = v9;
        v19 = sub_19565D14C();
        MEMORY[0x1EEE9AC00](v19);
        v18 = a2;
        sub_19565D4CC();
        swift_getWitnessTable();
        sub_19565D39C();

        v9 = v21;
        v10 = sub_19565D49C();
      }

      while (v11 != v10);
    }

    v21 = v9;
    MEMORY[0x1EEE9AC00](v10);
    v18 = a2;
    v12 = sub_19565D4CC();
    swift_getWitnessTable();
    v21 = sub_19565D93C();
    MEMORY[0x1EEE9AC00](v21);
    v18 = a2;
    v13 = swift_getWitnessTable();
    v15 = sub_1955EC3E8(sub_19562D97C, v17, v12, v5, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

    return v15;
  }
}

void DuplicateHandleSet.init(contact:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getWitnessTable();
  sub_19565D15C();
  sub_19562D99C(a2, a2);
  swift_allocObject();
  sub_19565D41C();
  *v6 = a1;
  sub_19565D4CC();
  v7 = a1;
  swift_getWitnessTable();
  v8 = sub_19565D5FC();

  *a3 = v8;
  v9 = v7;
  v10 = sub_19562D194();

  a3[1] = v10;
}

uint64_t sub_19562C1CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  type metadata accessor for DuplicateHandleSet();
  result = sub_19565D49C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v10[2] = a3;
    v10[3] = a1;
    v10[4] = v6;
    v10[5] = v5;
    result = sub_195631C04(sub_19562DB60, v10, 0, v8);
    if (v9)
    {
      v10[6] = v6;
      v10[7] = v5;
      sub_19565D4CC();

      return sub_19565D4BC();
    }
  }

  return result;
}

uint64_t sub_19562C2D0(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v7[0] = a3;
  v7[1] = a4;
  type metadata accessor for DuplicateHandleSet();
  sub_19565D4CC();
  sub_19565D45C();
  sub_19562DB0C(v5, *a2);
  return DuplicateHandleSet.add(_:)(v7) & 1;
}

uint64_t DuplicateHandleSet.add(_:)(uint64_t a1)
{
  if (!*(*(a1 + 8) + 16) || (sub_19562D56C(*(a1 + 8), *(v1 + 8)) & 1) != 0)
  {
    return 0;
  }

  swift_getWitnessTable();
  sub_19565D5EC();
  swift_getWitnessTable();
  sub_19565D5DC();

  sub_19562CE10(v3);
  return 1;
}

uint64_t sub_19562C49C@<X0>(uint64_t *a1@<X8>)
{

  swift_getWitnessTable();
  sub_19565D5EC();
  swift_getWitnessTable();
  result = sub_19565D4DC();
  *a1 = result;
  return result;
}

uint64_t sub_19562C548(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  result = sub_19565D49C();
  if (result >= 2)
  {
    v26 = result;
    v27 = a1;
    v30 = v9;
    MEMORY[0x1EEE9AC00](result);
    v22[0] = a5;
    v22[1] = a3;
    v23 = a4;
    v11 = sub_19565D4CC();

    WitnessTable = swift_getWitnessTable();
    v12 = sub_19565D1BC();
    if (sub_19565D18C() == 1)
    {
LABEL_3:

      v30 = v9;
      sub_19565D4CC();

      return sub_19565D4BC();
    }

    type metadata accessor for DuplicateContactsModerator();
    static DuplicateContactsModerator.groupByCommonHandles<A>(contacts:)(v9, a5);
    if (sub_19565D49C() == 1)
    {
      sub_19565D4EC();
      v13 = sub_19565D49C();

      if (v13 == v26)
      {

        goto LABEL_3;
      }
    }

    v14 = nullsub_1(v12, MEMORY[0x1E69E69B8], v11, MEMORY[0x1E69E69C0]);

    v30 = v14;
    MEMORY[0x1EEE9AC00](v15);
    v23 = a5;
    sub_19565D19C();
    swift_getWitnessTable();
    sub_19565D38C();
    v16 = sub_19565D44C();

    if (sub_19565D49C())
    {
      v29 = v9;
      swift_getWitnessTable();
      sub_19565D5EC();
      v28 = sub_19565D14C();
      MEMORY[0x1EEE9AC00](v28);
      v24 = v16;
      v17 = sub_19565D4CC();
      sub_19565D39C();

      MEMORY[0x1EEE9AC00](v18);
      v23 = a5;
      v19 = swift_getWitnessTable();
      v21 = sub_1955EC3E8(sub_19562D97C, v22, v17, v11, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);

      v30 = v21;
      sub_19565D4CC();
      swift_getWitnessTable();
      return sub_19565D4AC();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_19562CA00(uint64_t *a1)
{
  sub_19565D4CC();
  sub_19565D4CC();

  swift_getWitnessTable();
  sub_19565D93C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = sub_19565D3AC();

  swift_getWitnessTable();
  sub_19565D5FC();
  sub_19565D5EC();
  sub_19565D4CC();

  swift_getWitnessTable();
  sub_19565D63C();

  if (v4 == 1)
  {
    return sub_19565D4BC();
  }

  sub_19565D45C();
  sub_19562DB0C(v1, *a1);
  swift_getWitnessTable();
  return sub_19565D5DC();
}

uint64_t sub_19562CCB4()
{
  sub_19565D4CC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_19565D3CC() & 1;
}

uint64_t sub_19562CD5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9[5] = *a1;
  v9[2] = a2;
  v5 = sub_19565D4CC();
  WitnessTable = swift_getWitnessTable();
  result = sub_1955EC3E8(sub_19562DC80, v9, v5, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  *a3 = result;
  return result;
}

uint64_t sub_19562CE10(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_195635A20(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_19562CF14(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_19565D80C();
    sub_19561C134();
    sub_19562860C();
    sub_19565D5BC();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1954C55E4();
      return;
    }

    while (1)
    {
      sub_195635B70(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_19565D83C())
      {
        sub_19561C134();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t DuplicateHandleSet.contacts.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DuplicateHandleSet.handles.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_19562D194()
{
  v1 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE1B0);
  v2 = sub_19565D3FC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_19565D81C();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8B3850](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = [v6 value];
      v9 = [v8 unformattedInternationalStringValue];

      if (v9)
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = sub_19565D28C();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_195617A30(0, *(v35 + 2) + 1, 1, v35);
    }

    v14 = *(v35 + 2);
    v13 = *(v35 + 3);
    if (v14 >= v13 >> 1)
    {
      v35 = sub_195617A30((v13 > 1), v14 + 1, 1, v35);
    }

    *(v35 + 2) = v14 + 1;
    v15 = &v35[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
  }

  while (v4 != v3);
LABEL_23:

  v16 = [v33 emailAddresses];
  v17 = sub_19565D3FC();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_25;
    }

LABEL_44:
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

LABEL_43:
  v18 = sub_19565D81C();
  if (!v18)
  {
    goto LABEL_44;
  }

LABEL_25:
  v19 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  do
  {
    v20 = v19;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x19A8B3850](v20, v17);
      }

      else
      {
        if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v23 = [v21 value];
      v24 = [v23 _cn_stringByNormalizingCase];

      if (v24)
      {
        break;
      }

      ++v20;
      if (v19 == v18)
      {
        goto LABEL_45;
      }
    }

    v25 = sub_19565D28C();
    v27 = v26;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_195617A30(0, *(v34 + 2) + 1, 1, v34);
    }

    v29 = *(v34 + 2);
    v28 = *(v34 + 3);
    if (v29 >= v28 >> 1)
    {
      v34 = sub_195617A30((v28 > 1), v29 + 1, 1, v34);
    }

    *(v34 + 2) = v29 + 1;
    v30 = &v34[16 * v29];
    *(v30 + 4) = v25;
    *(v30 + 5) = v27;
  }

  while (v19 != v18);
LABEL_45:

  sub_1956217C4(v34);
  v31 = sub_195637F3C(v35);

  return v31;
}

uint64_t sub_19562D56C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_19565DBDC();

      sub_19565D30C();
      v19 = sub_19565DBFC();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_19565DB1C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t DuplicateHandleSet.debugDescription.getter()
{
  sub_19565D8DC();
  swift_getWitnessTable();
  sub_19565D5AC();
  v0 = sub_19565DAEC();

  MEMORY[0x19A8B3270](0x746361746E6F6320, 0xEF20687469772073);
  v1 = sub_19565DAEC();
  MEMORY[0x19A8B3270](v1);

  MEMORY[0x19A8B3270](0xD000000000000011, 0x800000019568D6B0);
  return v0;
}

BOOL sub_19562D908()
{
  type metadata accessor for DuplicateHandleSet();
  swift_getWitnessTable();
  return sub_19565D5AC() > 1;
}

uint64_t sub_19562D99C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_19562DA4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19562DA88(uint64_t *a1, int a2)
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

uint64_t sub_19562DAD0(uint64_t result, int a2, int a3)
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

uint64_t sub_19562DB0C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_19562DC80@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

unint64_t sub_19562DD04()
{
  result = qword_1EAECDED8;
  if (!qword_1EAECDED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAECDED8);
  }

  return result;
}

uint64_t CNContactProviderSupport.synchronizeDomain(using:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19562DD70, 0, 0);
}

uint64_t sub_19562DD70()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_19562DE90;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE328);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19562E00C;
  v0[13] = &block_descriptor_5;
  v0[14] = v3;
  [v1 synchronizeDomainUsingSession:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19562DE90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_19562DFA0;
  }

  else
  {
    v2 = sub_195607C14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19562DFA0()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19562E00C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_19562E124(SEL *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v1 = [objc_opt_self() *a1];
  sub_19562DD04();
  v2 = sub_19565D3FC();

  return v2;
}

unint64_t DuplicateSetProperties.dictionaryValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v6 = *(v0 + 3);
  v5 = *(v0 + 4);
  v7 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567D0D0;
  *(inited + 32) = 0x727574616E676973;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 72) = v9;
  *(inited + 80) = 0x616C696176417369;
  *(inited + 88) = 0xEB00000000656C62;
  v10 = MEMORY[0x1E69E6370];
  *(inited + 96) = v1;
  *(inited + 120) = v10;
  *(inited + 128) = 0x65726F6E67497369;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = v2;
  *(inited + 168) = v10;
  *(inited + 176) = 5294388599723750000;
  *(inited + 184) = 0xE900000000000044;
  *(inited + 192) = v6;
  *(inited + 200) = v5;
  *(inited + 216) = v9;
  *(inited + 224) = 0x7374726F686F63;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE330);
  *(inited + 240) = v7;

  v11 = sub_1956128FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE400);
  swift_arrayDestroy();
  return v11;
}

id static CNDuplicateSet.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_19565D27C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_19562E3F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7461446567616D69;
    }

    else
    {
      v5 = 0x6144726574736F70;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000061;
    }

    else
    {
      v6 = 0xEA00000000006174;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x74636552706F7263;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEE00676E69727453;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0x7461446567616D69;
  v8 = 0xE900000000000061;
  if (a2 != 2)
  {
    v7 = 0x6144726574736F70;
    v8 = 0xEA00000000006174;
  }

  if (a2)
  {
    v3 = 0x74636552706F7263;
    v2 = 0xEE00676E69727453;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19565DB1C();
  }

  return v11 & 1;
}

uint64_t sub_19562E560(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x626C696176417369;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65726F6E67497369;
    }

    else
    {
      v5 = 0x626C696176417369;
    }

    if (v4)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xEA0000000000656CLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x727574616E676973;
    v6 = 0xE900000000000065;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7374726F686F63;
    }

    else
    {
      v5 = 5294388599723750000;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0x727574616E676973;
  v8 = 0xE900000000000065;
  v9 = 0xE700000000000000;
  v10 = 0x7374726F686F63;
  if (a2 != 3)
  {
    v10 = 5294388599723750000;
    v9 = 0xE900000000000044;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x65726F6E67497369;
    v2 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_19565DB1C();
  }

  return v13 & 1;
}

uint64_t sub_19562E6E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNDuplicateSet();
  result = sub_19565D8EC();
  *a1 = result;
  return result;
}

id static CNDuplicateSet.newDuplicatesFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_19565D27C();
  v2 = [v0 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19567B7B0;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = sub_19565D27C();
  v6 = [v4 initWithKey:v5 ascending:1];

  *(v3 + 32) = v6;
  sub_1954C3460(0, &qword_1EAECE338);
  v7 = sub_19565D3EC();

  [v2 setSortDescriptors_];

  sub_1954C3460(0, &qword_1EAECB838);
  v8 = sub_19565D66C();
  [v2 setPredicate_];

  return v2;
}

id static CNDuplicateSet.ignoredDuplicatesFetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_19565D27C();
  v2 = [v0 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19567B7B0;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = sub_19565D27C();
  v6 = [v4 initWithKey:v5 ascending:1];

  *(v3 + 32) = v6;
  sub_1954C3460(0, &qword_1EAECE338);
  v7 = sub_19565D3EC();

  [v2 setSortDescriptors_];

  sub_1954C3460(0, &qword_1EAECB838);
  v8 = sub_19565D66C();
  [v2 setPredicate_];

  return v2;
}

uint64_t sub_19562EA84()
{
  sub_19565DBDC();
  sub_19565D30C();

  return sub_19565DBFC();
}

uint64_t sub_19562EB7C()
{
  sub_19565D30C();
}

uint64_t sub_19562EC60()
{
  sub_19565DBDC();
  sub_19565D30C();

  return sub_19565DBFC();
}

uint64_t sub_19562ED54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195630488();
  *a1 = result;
  return result;
}

void sub_19562ED84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656CLL;
  v4 = 0x626C696176417369;
  v5 = 0xE900000000000065;
  v6 = 0x727574616E676973;
  v7 = 0xE700000000000000;
  v8 = 0x7374726F686F63;
  if (v2 != 3)
  {
    v8 = 5294388599723750000;
    v7 = 0xE900000000000044;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65726F6E67497369;
    v3 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_19562EE38()
{
  v1 = *v0;
  v2 = 0x626C696176417369;
  v3 = 0x727574616E676973;
  v4 = 0x7374726F686F63;
  if (v1 != 3)
  {
    v4 = 5294388599723750000;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65726F6E67497369;
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

uint64_t sub_19562EEE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195630488();
  *a1 = result;
  return result;
}

uint64_t sub_19562EF1C(uint64_t a1)
{
  v2 = sub_19562FAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19562EF58(uint64_t a1)
{
  v2 = sub_19562FAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DuplicateSetProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE340);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19562FAA0();
  sub_19565DC0C();
  if (!v2)
  {
    v29 = 2;
    v9 = sub_19565DA9C();
    v11 = v10;
    v23 = v9;
    v28 = 4;
    v12 = sub_19565DA9C();
    v14 = v13;
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE330);
    v27 = 3;
    sub_19562FAF4();
    sub_19565DABC();
    v15 = v24;
    v26 = 0;
    v20 = sub_19565DAAC();
    v21 = v15;
    v25 = 1;
    v17 = sub_19565DAAC();
    (*(v6 + 8))(v8, v5);
    *a2 = v20 & 1;
    *(a2 + 1) = v17 & 1;
    v18 = v22;
    *(a2 + 8) = v23;
    *(a2 + 16) = v11;
    *(a2 + 24) = v18;
    *(a2 + 32) = v14;
    *(a2 + 40) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DuplicateSetProperties.init(from:contactStore:)(Contacts::DuplicateSetProperties *__return_ptr retstr, Swift::OpaquePointer from, CNContactStore contactStore)
{
  isa = contactStore.super.isa;
  v6 = sub_1956171C4(from._rawValue, contactStore.super.isa);
  if (v6)
  {
    v42 = retstr;
    v44 = isa;
    v7 = v6;
    v8 = [v6 identifier];

    v41 = sub_19565D28C();
    v43 = v9;

    if (from._rawValue >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19565D81C())
    {
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v45 = i;
      while (1)
      {
        if ((from._rawValue & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x19A8B3850](v11, from._rawValue);
        }

        else
        {
          if (v11 >= *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v13 = *(from._rawValue + v11 + 4);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = [v13 identifier];
        v50 = sub_19565D28C();
        v49 = v17;

        [v14 cropRect];
        v18 = NSStringFromRect(v51);
        v19 = sub_19565D28C();
        v47 = v20;
        v48 = v19;

        v21 = [v14 imageData];
        if (v21)
        {
          v22 = v21;
          v46 = sub_19565CF2C();
          v24 = v23;
        }

        else
        {
          v46 = 0;
          v24 = 0xC000000000000000;
        }

        v25 = [v14 wallpaper];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 posterArchiveData];

          v28 = sub_19565CF2C();
          v30 = v29;
        }

        else
        {

          v28 = 0;
          v30 = 0xC000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_195618030(0, *(v12 + 2) + 1, 1, v12);
        }

        v32 = *(v12 + 2);
        v31 = *(v12 + 3);
        if (v32 >= v31 >> 1)
        {
          v12 = sub_195618030((v31 > 1), v32 + 1, 1, v12);
        }

        *(v12 + 2) = v32 + 1;
        v33 = &v12[64 * v32];
        *(v33 + 4) = v50;
        *(v33 + 5) = v49;
        *(v33 + 6) = v48;
        *(v33 + 7) = v47;
        *(v33 + 8) = v46;
        *(v33 + 9) = v24;
        ++v11;
        *(v33 + 10) = v28;
        *(v33 + 11) = v30;
        if (v15 == v45)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v35 = _s8Contacts16ManagedDuplicateC012signatureForA0ySSSaySo16CNMutableContactCGFZ_0(from._rawValue);
    v37 = v36;
    v38 = *(v12 + 2);

    if (from._rawValue >> 62)
    {
      v39 = sub_19565D81C();
    }

    else
    {
      v39 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v38 == v39)
    {

      *&v42->isAvailable = 1;
      v42->signature._countAndFlagsBits = v35;
      v42->signature._object = v37;
      v42->primaryID._countAndFlagsBits = v41;
      v42->primaryID._object = v43;
      v42->cohorts._rawValue = v12;
      return;
    }

    sub_1955E4254();
    swift_allocError();
    *v40 = 0xD00000000000002CLL;
    *(v40 + 8) = 0x800000019568D740;
    *(v40 + 16) = 1;
    swift_willThrow();

    isa = v44;
  }

  else
  {

    sub_1955E4254();
    swift_allocError();
    *v34 = 0xD000000000000035;
    *(v34 + 8) = 0x800000019568D700;
    *(v34 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t DuplicateSetProperties.cohortIDs.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1955EA77C(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1955EA77C((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t sub_19562FAA0()
{
  result = qword_1EAECE348;
  if (!qword_1EAECE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE348);
  }

  return result;
}

unint64_t sub_19562FAF4()
{
  result = qword_1EAECE350;
  if (!qword_1EAECE350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAECE330);
    sub_19562FB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE350);
  }

  return result;
}

unint64_t sub_19562FB78()
{
  result = qword_1EAECE358;
  if (!qword_1EAECE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE358);
  }

  return result;
}

unint64_t sub_19562FBCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDCC0);
    v3 = sub_19565DA7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1955F7964(v4, v13, &qword_1EAECDCB8);
      result = sub_1955EBE38(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1955EBBA0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_19562FD44(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_19565DA7C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = sub_1955EBE7C(v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v8;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_19562FE34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE378);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE140);
    v7 = sub_19565DA7C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1955F7964(v9, v5, &qword_1EAECE378);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1954C2328(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_19565D0BC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_195630020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE180);
    v3 = sub_19565DA7C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1954C2328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_19563018C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1956301D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DuplicateSetProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DuplicateSetProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_195630384()
{
  result = qword_1EAECE360;
  if (!qword_1EAECE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE360);
  }

  return result;
}

unint64_t sub_1956303DC()
{
  result = qword_1EAECE368;
  if (!qword_1EAECE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE368);
  }

  return result;
}

unint64_t sub_195630434()
{
  result = qword_1EAECE370;
  if (!qword_1EAECE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE370);
  }

  return result;
}

uint64_t sub_195630488()
{
  v0 = sub_19565DA8C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1956304D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1955EAE0C(0, v1, 0);
  v2 = v24;
  v3 = a1 + 64;
  result = sub_19565D7DC();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v6 + 36);
    v11 = *(*(v6 + 56) + 8 * v5);
    v13 = *(v24 + 16);
    v12 = *(v24 + 24);

    if (v13 >= v12 >> 1)
    {
      result = sub_1955EAE0C((v12 > 1), v13 + 1, 1);
    }

    *(v24 + 16) = v13 + 1;
    *(v24 + 8 * v13 + 32) = v11;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v10);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 72 + 8 * v10);
      v9 = v22;
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_19563BAC8(v5, v23, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_19563BAC8(v5, v23, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
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
  return result;
}

uint64_t sub_195630708(uint64_t a1)
{
  v2 = v1;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {

    v7 = v2;
    v8 = sub_195632674(v6);
    if (v2)
    {

      return v4;
    }

    v9 = v8;

    v10 = v9 >> 62;
    if (v9 >> 62)
    {
      v11 = sub_19565D81C();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v4 >> 62;
    if (v4 >> 62)
    {
      v28 = sub_19565D81C();
      v14 = v28 + v11;
      if (__OFADD__(v28, v11))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v11;
    if (result)
    {
      if (!v12)
      {
        v15 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_19565D81C();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_19565D91C();
    v4 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v33)
    {
      goto LABEL_38;
    }

    v31 = v4;
    v20 = v15 + 8 * v16 + 32;
    v29 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_195601910(&qword_1EAECE3E0, &unk_1EAECDF80);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
        v22 = sub_1955F5264(v32, i, v9);
        v24 = *v23;
        (v22)(v32, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_1954C3460(0, &qword_1EAECB830);
      swift_arrayInitWithCopy();
    }

    v4 = v31;
    v2 = v7;
    if (v33 >= 1)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v33);
      v27 = v25 + v33;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v3 == v30)
    {
      return v4;
    }
  }

  v19 = v15;
  result = sub_19565D81C();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_195630A30(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = type metadata accessor for DuplicateContacts();
  v74 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19565D81C())
  {
    v5 = 0;
    v72 = v3;
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8B3850](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 downtimeWhitelist];
      if (!v9)
      {
        sub_19565D28C();
LABEL_19:

LABEL_20:
        sub_19565D94C();
        sub_19565D98C();
        sub_19565D99C();
        sub_19565D95C();
        goto LABEL_5;
      }

      v10 = v9;
      v11 = sub_19565D28C();
      v13 = v12;

      v14 = sub_19565D28C();
      if (!v13)
      {
        goto LABEL_19;
      }

      if (v11 == v14 && v13 == v15)
      {
      }

      else
      {
        v17 = sub_19565DB1C();

        if ((v17 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_5:
      ++v5;
      if (v8 == i)
      {
        v18 = v74;
        v3 = v72;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v19 = sub_195637654(v18);

  v20 = sub_1956349CC(v19, sub_1956351C4, sub_1956351C4);

  v21 = sub_1956349CC(v20, sub_195634E80, sub_195634E80);
  v22 = sub_1956304D4(v21);

  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  MEMORY[0x1EEE9AC00](v23);
  v73 = sub_195631320(v22, sub_19563BAC0);

  v24 = sub_1956349CC(v20, sub_195634B3C, sub_195634B3C);

  v25 = sub_1956304D4(v24);

  v26 = *(v25 + 16);
  if (!v26)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_46:

    sub_1956215B0(v28);
    v41 = v73;
    v69 = *(v73 + 16);
    if (!v69)
    {
      v44 = MEMORY[0x1E69E7CC0];
LABEL_89:

      *a2 = v44;
      return;
    }

    v42 = 0;
    v43 = *MEMORY[0x1E6996570];
    v44 = MEMORY[0x1E69E7CC0];
    v68 = *MEMORY[0x1E6996570];
    while (1)
    {
      v70 = v44;
LABEL_49:
      if (v42 >= *(v41 + 16))
      {
        goto LABEL_95;
      }

      v45 = *(v73 + 32 + 8 * v42);
      if (v45 >> 62)
      {
        v46 = sub_19565D81C();
        ++v42;
        if (!v46)
        {
LABEL_86:

          goto LABEL_80;
        }
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        ++v42;
        if (!v46)
        {
          goto LABEL_86;
        }
      }

      if ((v45 & 0xC000000000000001) != 0)
      {

        v48 = MEMORY[0x19A8B3850](0, v45);
      }

      else
      {
        if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_96;
        }

        v47 = *(v45 + 32);

        v48 = v47;
      }

      v49 = v48;
      v26 = [v48 linkIdentifier];

      if (v26)
      {
        v50 = sub_19565D28C();
        if (!v43)
        {
          goto LABEL_99;
        }

        v52 = v50;
        v53 = v51;
        v54 = (*(v43 + 16))(v43, v26);

        if (v54)
        {
          v55 = 0;
          v71 = v42;
          while (1)
          {
            if ((v45 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x19A8B3850](v55, v45);
            }

            else
            {
              if (v55 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v56 = *(v45 + 8 * v55 + 32);
            }

            v26 = v56;
            v57 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            v58 = [v56 linkIdentifier];
            if (!v58)
            {

              goto LABEL_79;
            }

            v59 = v58;
            v60 = sub_19565D28C();
            v62 = v61;

            if (v60 == v52 && v62 == v53)
            {
            }

            else
            {
              v64 = sub_19565DB1C();

              if ((v64 & 1) == 0)
              {

LABEL_79:
                v43 = v68;
                v41 = v73;
                v44 = v70;
                v42 = v71;
                goto LABEL_80;
              }
            }

            ++v55;
            if (v57 == v46)
            {

              v44 = v70;
              v42 = v71;
              v43 = v68;
              v41 = v73;
              if (v71 != v69)
              {
                goto LABEL_49;
              }

              goto LABEL_89;
            }
          }

          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v44 = v70;
      }

LABEL_80:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1955EAE0C(0, *(v44 + 16) + 1, 1);
      }

      v66 = *(v44 + 16);
      v65 = *(v44 + 24);
      v26 = (v66 + 1);
      if (v66 >= v65 >> 1)
      {
        sub_1955EAE0C((v65 > 1), v66 + 1, 1);
      }

      *(v44 + 16) = v26;
      *(v44 + 8 * v66 + 32) = v45;
      if (v42 == v69)
      {
        goto LABEL_89;
      }
    }
  }

  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v27 < *(v25 + 16))
  {

    v30 = sub_1956313D4(v29);
    v31 = *(v30 + 16);
    v32 = v28[2];
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      goto LABEL_93;
    }

    v34 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v36 = v28[3] >> 1, v36 >= v33))
    {
      if (!*(v34 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v37 = v32 + v31;
      }

      else
      {
        v37 = v32;
      }

      v28 = sub_195617A0C(isUniquelyReferenced_nonNull_native, v37, 1, v28);
      v36 = v28[3] >> 1;
      if (!*(v34 + 16))
      {
LABEL_29:

        if (v31)
        {
          goto LABEL_94;
        }

        goto LABEL_30;
      }
    }

    if (v36 - v28[2] < v31)
    {
      goto LABEL_97;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
    swift_arrayInitWithCopy();

    if (v31)
    {
      v38 = v28[2];
      v39 = __OFADD__(v38, v31);
      v40 = v38 + v31;
      if (v39)
      {
        goto LABEL_98;
      }

      v28[2] = v40;
    }

LABEL_30:
    ++v27;

    if (v26 == v27)
    {
      goto LABEL_46;
    }
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:

  __break(1u);
}