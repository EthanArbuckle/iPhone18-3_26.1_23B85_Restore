uint64_t getEnumTagSinglePayload for ASCredentialUpdater.Options(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASCredentialUpdater.Options(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1CF157C()
{
  result = qword_1EB775088;
  if (!qword_1EB775088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775088);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B1CF1634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FA0, &unk_1B1D93690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ASCredentialUpdater.Options.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ASCredentialUpdater.Options.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1B1CF1788()
{
  result = qword_1EB7750A8;
  if (!qword_1EB7750A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750A8);
  }

  return result;
}

unint64_t sub_1B1CF17E0()
{
  result = qword_1EB7750B0;
  if (!qword_1EB7750B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750B0);
  }

  return result;
}

unint64_t sub_1B1CF1838()
{
  result = qword_1EB7750B8;
  if (!qword_1EB7750B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750B8);
  }

  return result;
}

uint64_t sub_1B1CF1A50(void *a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a2)
  {
    a2 = sub_1B1D7BE4C();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v5[5] = v10;
  v11 = sub_1B1D7BE4C();
  v13 = v12;
  v5[6] = v12;
  v14 = a1;
  a5;
  v15 = swift_task_alloc();
  v5[7] = v15;
  *v15 = v5;
  v15[1] = sub_1B1CF1B74;

  return sub_1B1CF3E94(v14, a2, v10, v11, v13);
}

uint64_t sub_1B1CF1B74()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  if (v0)
  {
    if (v7)
    {
      v11 = *(v3 + 32);
      v12 = sub_1B1D7B43C();

      v11[2](v11, 0, v12);
      v13 = v11;
LABEL_6:
      _Block_release(v13);

      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v14 = *(v3 + 32);
      v12 = sub_1B1D7BE1C();

      v14[2](v14, v12, 0);
      v13 = v14;
      goto LABEL_6;
    }
  }

LABEL_9:
  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_1B1CF1DAC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1B1CF5EB4();
  **(*(v1 + 64) + 40) = sub_1B1D7BEEC();

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1B1CF1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[36] = a6;
  v7[37] = v6;
  v7[34] = a4;
  v7[35] = a5;
  v7[32] = a2;
  v7[33] = a3;
  v7[31] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF1E4C, 0, 0);
}

uint64_t sub_1B1CF1E4C()
{
  v1 = [objc_opt_self() sharedManager];
  v0[38] = v1;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1B1CF1F8C;
  v2 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C0, &qword_1B1D861D0);
  v0[20] = MEMORY[0x1E69E9820];
  v0[21] = 1107296256;
  v0[22] = sub_1B1CF1DAC;
  v0[23] = &block_descriptor_1;
  v0[24] = v2;
  [v1 getAllExtensionsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CF1F8C()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CF206C, 0, 0);
}

uint64_t sub_1B1CF206C()
{
  v1 = *(v0 + 224);
  v16 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B1D7C1FC())
  {
    v3 = 0;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B273B2E0](v3, v1);
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([*(v0 + 304) extensionSupportsCredentialExchange_])
      {
        sub_1B1D7C2DC();
        v8 = *(v16 + 16);
        sub_1B1D7C30C();
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        v4 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        v9 = v16;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:
  *(v0 + 312) = v9;

  v10 = swift_task_alloc();
  *(v0 + 320) = v10;
  *v10 = v0;
  v10[1] = sub_1B1CF2250;
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);

  return sub_1B1CF27EC(v14, v13, v11);
}

uint64_t sub_1B1CF2250(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_1B1CF2784;
  }

  else
  {
    v5 = sub_1B1CF2364;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B1CF2364()
{
  v42 = v0;
  v1 = *(v0 + 336);
  sub_1B1CF4E18(*(v0 + 264), *(v0 + 272), *(v0 + 248), *(v0 + 256), *(v0 + 312), *(v0 + 304));
  v3 = v1;
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  if (v3)
  {
    v6 = *(v0 + 304);
    v7 = *(v0 + 328);

LABEL_13:
    v40 = *(v0 + 8);

    return v40();
  }

  v8 = v2;
  v9 = *(v0 + 312);

  v11 = sub_1B1D20C18(v10);

  v13 = sub_1B1D20C18(v12);

  v14 = sub_1B1CF37F4(v13, v11);

  sub_1B1CF3140(v14, v41);

  if (v41[0])
  {
    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 328);
    v16 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v16, qword_1EB782530);

    v17 = sub_1B1D7BD6C();
    v18 = sub_1B1D7C00C();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 328);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136446466;
      v23 = MEMORY[0x1B273AF50](v20, &type metadata for ASExportedCredentialData.FormatVersion);
      v25 = v24;

      v26 = sub_1B1D0D070(v23, v25, v41);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2082;
      v27 = MEMORY[0x1B273AF50](v8, &type metadata for ASExportedCredentialData.FormatVersion);
      v29 = v28;

      v30 = sub_1B1D0D070(v27, v29, v41);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_1B1C8D000, v17, v18, "Importer and exporter have no matching verisons. %{public}s vs %{public}s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273C4C0](v22, -1, -1);
      MEMORY[0x1B273C4C0](v21, -1, -1);
    }

    else
    {
    }

    v35 = *(v0 + 304);
    type metadata accessor for ASCAuthorizationError(0);
    *(v0 + 240) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v37 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v38;
    *(inited + 48) = 0xD00000000000003BLL;
    *(inited + 56) = 0x80000001B1D9B5D0;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    v39 = *(v0 + 232);
    swift_willThrow();

    goto LABEL_13;
  }

  v31 = *(v0 + 328);
  v32 = *(v0 + 304);

  v33 = *(v0 + 8);

  return v33(3157553, 0xE300000000000000);
}

uint64_t sub_1B1CF2784()
{
  v2 = v0[38];
  v1 = v0[39];

  v3 = v0[42];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B1CF27EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[43] = a1;
  v4[44] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF2810, 0, 0);
}

uint64_t sub_1B1CF2810()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = *MEMORY[0x1E69C8CC0];
  if (sub_1B1D7BE4C() == v2 && v4 == v1)
  {
  }

  else
  {
    v6 = v0[43];
    v7 = v0[44];
    v8 = sub_1B1D7C50C();

    if ((v8 & 1) == 0)
    {
      v9 = v0[45];
      v0[2] = v0;
      v0[7] = v0 + 38;
      v0[3] = sub_1B1CF29B8;
      v10 = swift_continuation_init();
      v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C0, &qword_1B1D861D0);
      v0[30] = MEMORY[0x1E69E9820];
      v0[31] = 1107296256;
      v0[32] = sub_1B1CF1DAC;
      v0[33] = &block_descriptor_16;
      v0[34] = v10;
      [v9 getAllExtensionsWithCompletion_];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  v11 = v0[1];

  return v11(&unk_1F28D8270);
}

uint64_t sub_1B1CF29B8()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CF2A98, 0, 0);
}

uint64_t sub_1B1CF2A98()
{
  v60 = v0;
  v1 = v0[38];
  if (v1 >> 62)
  {
LABEL_42:
    v2 = sub_1B1D7C1FC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_43:

    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v44 = v0[44];
    v45 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v45, qword_1EB782530);

    v46 = sub_1B1D7BD6C();
    v47 = sub_1B1D7C01C();

    if (os_log_type_enabled(v46, v47))
    {
      v49 = v0[43];
      v48 = v0[44];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_1B1D0D070(v49, v48, &v59);
      _os_log_impl(&dword_1B1C8D000, v46, v47, "Could not find importer extension with bundle ID %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1B273C4C0](v51, -1, -1);
      MEMORY[0x1B273C4C0](v50, -1, -1);
    }

    type metadata accessor for ASCAuthorizationError(0);
    v0[42] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v53 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v54;
    *(inited + 48) = 0xD000000000000025;
    *(inited + 56) = 0x80000001B1D9B7E0;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    v55 = v0[41];
    swift_willThrow();
    goto LABEL_48;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_43;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B273B2E0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v7 = [v4 sf_bundleIdentifierForContainingApp];
    if (!v7)
    {
      goto LABEL_4;
    }

    v58 = v5;
    v9 = v0[43];
    v8 = v0[44];
    v10 = v7;
    v11 = sub_1B1D7BE4C();
    v13 = v12;

    if (v11 == v9 && v13 == v8)
    {
      break;
    }

    v15 = v0[43];
    v16 = v0[44];
    v17 = sub_1B1D7C50C();

    v5 = v58;
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_4:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_43;
    }
  }

  v5 = v58;
LABEL_18:
  v18 = v0[45];

  v19 = [v18 extensionSupportedCredentialExchangeFormatVersions_];
  if (v19)
  {
    v57 = v0;
    v20 = v19;
    v21 = sub_1B1D7BEEC();

    v22 = 0;
    v23 = *(v21 + 16);
    v24 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v25 = (v21 + 40 + 16 * v22);
    while (v23 != v22)
    {
      if (v22 >= *(v21 + 16))
      {
        goto LABEL_41;
      }

      v0 = v25 + 2;
      ++v22;
      v27 = *(v25 - 1);
      v26 = *v25;

      v28 = sub_1B1D7C3AC();

      v25 = v0;
      if (!v28)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1B1D0C9C8(0, *(v24 + 2) + 1, 1, v24);
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v24 = sub_1B1D0C9C8((v29 > 1), v30 + 1, 1, v24);
        }

        *(v24 + 2) = v31;
        goto LABEL_20;
      }
    }

    if (*(v24 + 2))
    {

      v32 = v57[1];

      return v32(v24);
    }

    v0 = v57;
    v5 = v58;
  }

  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v34 = MEMORY[0x1E69E6158];
  v35 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v35, qword_1EB782530);
  v36 = sub_1B1D7BD6C();
  v37 = sub_1B1D7C00C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1B1C8D000, v36, v37, "Importer app has no valid format versions.", v38, 2u);
    MEMORY[0x1B273C4C0](v38, -1, -1);
  }

  v39 = v0[46];

  [v39 _showErrorAlert_];
  type metadata accessor for ASCAuthorizationError(0);
  v0[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1B1D85C40;
  v41 = *MEMORY[0x1E696A588];
  *(v40 + 32) = sub_1B1D7BE4C();
  *(v40 + 72) = v34;
  *(v40 + 40) = v42;
  *(v40 + 48) = 0xD00000000000001DLL;
  *(v40 + 56) = 0x80000001B1D9B7C0;
  sub_1B1D6FAB8(v40);
  swift_setDeallocating();
  sub_1B1CF1634(v40 + 32);
  sub_1B1CF5DF8();
  sub_1B1D7B42C();
  v43 = v0[39];
  swift_willThrow();

LABEL_48:
  v56 = v0[1];

  return v56();
}

uint64_t sub_1B1CF3140@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  if (v4)
  {
    v5 = 0;
    v6 = (v4 - 1) & v4;
    v7 = (v2 + 63) >> 6;
LABEL_10:
    while (v6)
    {
LABEL_9:
      v6 &= v6 - 1;
    }

    while (1)
    {
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        *a2 = 0;
        return result;
      }

      v6 = *(result + 56 + 8 * v9);
      ++v5;
      if (v6)
      {
        v5 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = (v2 + 63) >> 6;
    while (v7 - 1 != v4)
    {
      v5 = v4 + 1;
      v8 = *(result + 64 + 8 * v4++);
      if (v8)
      {
        v6 = (v8 - 1) & v8;
        goto LABEL_10;
      }
    }

    *a2 = 1;
  }

  return result;
}

uint64_t sub_1B1CF33A4(int a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = sub_1B1D7BE4C();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    a2 = sub_1B1D7BE4C();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5[5] = v12;
  v13 = sub_1B1D7BE4C();
  v15 = v14;
  v5[6] = v14;
  a5;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_1B1CF34D8;

  return sub_1B1CF1E20(v8, v10, a2, v12, v13, v15);
}

uint64_t sub_1B1CF34D8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  if (v0)
  {
    if (v8)
    {
      v11 = *(v3 + 24);
      v12 = sub_1B1D7B43C();

      v11[2](v11, 0, v12);
      v13 = v11;
LABEL_6:
      _Block_release(v13);

      goto LABEL_9;
    }
  }

  else
  {
    if (v8)
    {
      v14 = *(v3 + 24);
      v12 = sub_1B1D7BE1C();

      v14[2](v14, v12, 0);
      v13 = v14;
      goto LABEL_6;
    }
  }

LABEL_9:
  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_1B1CF3714()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1CF33A4(v2, v3, v4, v5, v6);
}

uint64_t sub_1B1CF37F4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1B1CF3A48(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_1B1CF39B8(v12, v6, a2, a1);

    MEMORY[0x1B273C4C0](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void *sub_1B1CF39B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1B1CF3A48(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B1CF3A48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v30 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_15:
    v31 = 0;
    v18 = 0;
    v19 = 1 << *(a3 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(a3 + 56);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_26:
      v26 = v23 | (v18 << 6);
      v27 = *(v4 + 40);
      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C();
      v28 = result & ~(-1 << *(v4 + 32));
      if ((*(v4 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        *(v30 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v17 = __OFADD__(v31++, 1);
        if (v17)
        {
          __break(1u);
          goto LABEL_30;
        }
      }
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        goto LABEL_30;
      }

      v25 = *(a3 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v31 = 0;
    v6 = 0;
    v4 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_6:
      v9 &= v9 - 1;
      v11 = *(a3 + 40);
      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C();
      v12 = result & ~(-1 << *(a3 + 32));
      v13 = v12 >> 6;
      v14 = *(a3 + 56 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if ((v15 & v14) != 0)
      {
        v30[v13] |= v15;
        v17 = __OFADD__(v31++, 1);
        if (v17)
        {
          __break(1u);
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v16 >= v10)
      {
LABEL_30:

        return sub_1B1CF3CB4(v30, a2, v31, a3);
      }

      v9 = *(v4 + 8 * v16);
      ++v6;
      if (v9)
      {
        v6 = v16;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1CF3CB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C8, &qword_1B1D861E0);
  result = sub_1B1D7C25C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
LABEL_15:
    v14 = *(v9 + 40);
    sub_1B1D7C5CC();
    sub_1B1D7BE7C();
    result = sub_1B1D7C61C();
    v15 = -1 << *(v9 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_30;
    }

    v10 &= v10 - 1;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v10 = a1[v13];
    ++v11;
    if (v10)
    {
      v11 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B1CF3E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[84] = v5;
  v6[83] = a5;
  v6[82] = a4;
  v6[81] = a3;
  v6[80] = a2;
  v6[79] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF3EC8, 0, 0);
}

uint64_t sub_1B1CF3EC8()
{
  v1 = *(v0 + 632);
  v2 = [objc_opt_self() sharedManager];
  *(v0 + 680) = v2;
  [v1 auditToken];
  *(v0 + 776) = v16;
  *(v0 + 792) = v17;
  v3 = WBSApplicationIdentifierFromAuditToken();
  *(v0 + 688) = v3;
  if (v3)
  {
    *(v0 + 696) = sub_1B1D7BE4C();
    *(v0 + 704) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 608;
    *(v0 + 24) = sub_1B1CF4208;
    v5 = swift_continuation_init();
    *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C0, &qword_1B1D861D0);
    *(v0 + 368) = MEMORY[0x1E69E9820];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_1B1CF1DAC;
    *(v0 + 392) = &block_descriptor_37;
    *(v0 + 400) = v5;
    [v2 getAllExtensionsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v6, qword_1EB782530);
    v7 = sub_1B1D7BD6C();
    v8 = sub_1B1D7C00C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B1C8D000, v7, v8, "Exporting app is missing application identifier.", v9, 2u);
      MEMORY[0x1B273C4C0](v9, -1, -1);
    }

    type metadata accessor for ASCAuthorizationError(0);
    *(v0 + 600) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v11 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000053;
    *(inited + 56) = 0x80000001B1D9B810;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    v13 = *(v0 + 592);
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1B1CF4208()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CF42E8, 0, 0);
}

uint64_t sub_1B1CF42E8()
{
  v1 = *(v0 + 608);
  v43 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B1D7C1FC())
  {
    v3 = 0;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B273B2E0](v3, v1);
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([*(v0 + 680) extensionSupportsCredentialExchange_])
      {
        sub_1B1D7C2DC();
        v8 = *(v43 + 16);
        sub_1B1D7C30C();
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        v4 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        v9 = v43;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);

  v12 = *MEMORY[0x1E69C8CB8];
  v13 = sub_1B1D7BE4C();
  v15 = *(v0 + 704);
  if (v11 == v13 && v10 == v14)
  {
    v32 = *(v0 + 704);

    goto LABEL_32;
  }

  v17 = *(v0 + 696);
  v18 = *(v0 + 704);
  v19 = sub_1B1D7C50C();

  if (v19)
  {
LABEL_32:
    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
      v33 = sub_1B1D7C1FC();
    }

    else
    {
      v33 = *(v9 + 16);
    }

    if (!v33)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

  if (([objc_opt_self() isPasswordsAppInstalled] & 1) == 0)
  {
LABEL_24:

    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v20 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v20, qword_1EB782530);
    v21 = sub_1B1D7BD6C();
    v22 = sub_1B1D7C00C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B1C8D000, v21, v22, "No apps available for import.", v23, 2u);
      MEMORY[0x1B273C4C0](v23, -1, -1);
    }

    v24 = *(v0 + 680);
    v25 = *(v0 + 672);

    [v25 _showErrorAlert_];
    type metadata accessor for ASCAuthorizationError(0);
    *(v0 + 624) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v27 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v28;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x80000001B1D9B7C0;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    v29 = *(v0 + 616);
    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }

LABEL_36:
  v34 = *(v0 + 672);
  v35 = *(v0 + 664);
  v36 = *(v0 + 656);
  v37 = *(v0 + 632);
  v38 = [objc_allocWithZone(MEMORY[0x1E698DFB8]) init];
  *(v0 + 712) = v38;
  [v38 setCredentialExchangeDelegate_];
  v39 = [objc_opt_self() processHandleForNSXPCConnection_];
  *(v0 + 720) = v39;
  v40 = sub_1B1D7BE1C();
  *(v0 + 728) = v40;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 560;
  *(v0 + 88) = sub_1B1CF4860;
  v41 = swift_continuation_init();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7750D8, &unk_1B1D93680);
  *(v0 + 736) = v42;
  *(v0 + 488) = v42;
  *(v0 + 432) = MEMORY[0x1E69E9820];
  *(v0 + 440) = 1107296256;
  *(v0 + 448) = sub_1B1D6D68C;
  *(v0 + 456) = &block_descriptor_41;
  *(v0 + 464) = v41;
  [v38 presentExportFlowForProcess:v39 windowSceneIdentifier:v40 completionHandler:v0 + 432];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1B1CF4860()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 744) = v3;
  if (v3)
  {

    v4 = sub_1B1CF4CE0;
  }

  else
  {
    v4 = sub_1B1CF4978;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B1CF4978()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 672);
  v3 = *(v0 + 648);
  v4 = *(v0 + 560);
  v5 = *(v0 + 568);

  v6 = sub_1B1D7BE1C();
  [v2 _setSelectedImporterBundleIdentifierForCurrentOperation_];

  if (v3)
  {
    v7 = *(v0 + 648);
    v8 = *(v0 + 640);
    v9 = sub_1B1D7BE1C();
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 752) = v9;
  v10 = *(v0 + 736);
  v11 = *(v0 + 688);
  v12 = *(v0 + 672);
  v13 = sub_1B1D7BE1C();
  *(v0 + 760) = v13;

  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 576;
  *(v0 + 152) = sub_1B1CF4B2C;
  v14 = swift_continuation_init();
  *(v0 + 552) = v10;
  *(v0 + 528) = v14;
  *(v0 + 496) = MEMORY[0x1E69E9820];
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_1B1D6D68C;
  *(v0 + 520) = &block_descriptor_44;
  [v12 _highestCommonVersionNumber_credentialProviderBundleIdentifier_importerBundleIdentifier_completionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1B1CF4B2C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 768) = v2;
  if (v2)
  {
    v3 = sub_1B1CF4D74;
  }

  else
  {
    v3 = sub_1B1CF4C3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1CF4C3C()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 712);
  v4 = *(v0 + 688);

  v5 = *(v0 + 576);
  v6 = *(v0 + 584);

  v7 = *(v0 + 8);

  return v7(v5, v6);
}

uint64_t sub_1B1CF4CE0()
{
  v1 = v0[93];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[85];
  swift_willThrow();

  v6 = v0[93];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B1CF4D74()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[89];
  v5 = v0[86];
  v6 = v0[85];
  swift_willThrow();

  v7 = v0[96];
  v8 = v0[1];

  return v8();
}

void sub_1B1CF4E18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v10 = *MEMORY[0x1E69C8CB8];
  if (sub_1B1D7BE4C() == a3 && v11 == a4)
  {

    return;
  }

  v129 = a3;
  v131 = a4;
  v13 = sub_1B1D7C50C();

  if (v13)
  {
    return;
  }

  v133 = MEMORY[0x1E69E7CC0];
  if (a5 >> 62)
  {
    goto LABEL_120;
  }

  v14 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v124 = a6;
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = 0;
    v17 = a5 & 0xC000000000000001;
    v18 = a5 & 0xFFFFFFFFFFFFFF8;
    v126 = a5;
    while (1)
    {
      if (v17)
      {
        v19 = MEMORY[0x1B273B2E0](v16, a5);
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_116;
        }

        v19 = *(a5 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
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
        v14 = sub_1B1D7C1FC();
        goto LABEL_8;
      }

      v22 = [v19 sf_applicationRecordForContainingApp];
      if (v22)
      {
        v23 = v22;
        a6 = [v22 applicationIdentifier];

        if (a6)
        {
          break;
        }
      }

LABEL_11:
      ++v16;
      if (v21 == v14)
      {
        v15 = v133;
        goto LABEL_31;
      }
    }

    v24 = v14;
    v25 = v18;
    v26 = v17;
    v27 = sub_1B1D7BE4C();
    v29 = v28;

    if (v27 == v129 && v29 == v131)
    {
    }

    else
    {
      v31 = sub_1B1D7C50C();

      if ((v31 & 1) == 0)
      {

LABEL_26:
        v17 = v26;
        v18 = v25;
        v14 = v24;
        a5 = v126;
        goto LABEL_11;
      }
    }

    sub_1B1D7C2DC();
    v32 = v133[2];
    sub_1B1D7C30C();
    sub_1B1D7C31C();
    sub_1B1D7C2EC();
    goto LABEL_26;
  }

LABEL_31:
  v33 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
  if (v33)
  {
    v34 = sub_1B1D7C1FC();
    if (v34)
    {
LABEL_36:
      v131 = v15;
      if (a2)
      {
        v35 = 0;
        a5 = v15 & 0xC000000000000001;
        while (1)
        {
          if (a5)
          {
            v36 = MEMORY[0x1B273B2E0](v35, v15);
          }

          else
          {
            if (v35 >= *(v15 + 16))
            {
              goto LABEL_119;
            }

            v36 = *(v15 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_118;
          }

          v39 = [v36 identifier];
          if (v39)
          {
            v40 = v39;
            a6 = sub_1B1D7BE4C();
            v42 = v41;

            if (a6 == a1 && v42 == a2)
            {

LABEL_72:
              if (qword_1EB7749B8 != -1)
              {
                swift_once();
              }

              v66 = sub_1B1D7BD8C();
              __swift_project_value_buffer(v66, qword_1EB782530);

              v67 = sub_1B1D7BD6C();
              v68 = sub_1B1D7BFEC();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                a6 = swift_slowAlloc();
                v133 = a6;
                *v69 = 136315138;
                *(v69 + 4) = sub_1B1D0D070(a1, a2, &v133);
                _os_log_impl(&dword_1B1C8D000, v67, v68, "Found matching extension for %s.", v69, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(a6);
                MEMORY[0x1B273C4C0](a6, -1, -1);
                MEMORY[0x1B273C4C0](v69, -1, -1);
              }

              goto LABEL_77;
            }

            v44 = sub_1B1D7C50C();

            v15 = v131;
            if (v44)
            {
              goto LABEL_72;
            }
          }

          ++v35;
          if (v38 == v34)
          {
            if (qword_1EB7749B8 != -1)
            {
              swift_once();
            }

            v55 = sub_1B1D7BD8C();
            __swift_project_value_buffer(v55, qword_1EB782530);

            v56 = sub_1B1D7BD6C();
            v57 = sub_1B1D7C00C();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v133 = v59;
              *v58 = 136315138;
              v60 = a1;
              *(v58 + 4) = sub_1B1D0D070(a1, a2, &v133);
              _os_log_impl(&dword_1B1C8D000, v56, v57, "App requested to export from %s but no such extension found.", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v59);
              MEMORY[0x1B273C4C0](v59, -1, -1);
              MEMORY[0x1B273C4C0](v58, -1, -1);
            }

            else
            {

              v60 = a1;
            }

            v135 = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1B1D85C40;
            v84 = *MEMORY[0x1E696A588];
            *(inited + 32) = sub_1B1D7BE4C();
            v127 = inited + 32;
            *(inited + 40) = v85;
            v133 = 0;
            v134 = 0xE000000000000000;
            sub_1B1D7C27C();
            MEMORY[0x1B273AEE0](0xD00000000000001DLL, 0x80000001B1D9B720);
            MEMORY[0x1B273AEE0](v60, a2);
            MEMORY[0x1B273AEE0](0xD000000000000024, 0x80000001B1D9B740);
            if (v33)
            {
              v86 = sub_1B1D7C1FC();
            }

            else
            {
              v86 = *(v15 + 16);
            }

            v130 = inited;
            if (!v86)
            {

              v88 = MEMORY[0x1E69E7CC0];
LABEL_114:
              type metadata accessor for ASCAuthorizationError(0);
              v132 = v88;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
              sub_1B1CF5E50();
              v114 = sub_1B1D7BDFC();
              v116 = v115;

              MEMORY[0x1B273AEE0](v114, v116);

              MEMORY[0x1B273AEE0](46, 0xE100000000000000);
              v117 = v133;
              v118 = v134;
              v130[9] = MEMORY[0x1E69E6158];
              v130[6] = v117;
              v130[7] = v118;
              sub_1B1D6FAB8(v130);
              swift_setDeallocating();
              sub_1B1CF1634(v127);
              sub_1B1CF5DF8();
              goto LABEL_128;
            }

            v132 = MEMORY[0x1E69E7CC0];
            v62 = &v132;
            sub_1B1D194F8(0, v86 & ~(v86 >> 63), 0);
            if (v86 < 0)
            {
              goto LABEL_131;
            }

            v87 = 0;
            v88 = v132;
            while (1)
            {
              v89 = a5 ? MEMORY[0x1B273B2E0](v87, v15) : *(v15 + 8 * v87 + 32);
              v62 = v89;
              v90 = [v62 identifier];
              if (!v90)
              {
                goto LABEL_132;
              }

              v91 = v90;
              v92 = sub_1B1D7BE4C();
              v94 = v93;

              if (!v94)
              {
                goto LABEL_133;
              }

              v132 = v88;
              v96 = *(v88 + 16);
              v95 = *(v88 + 24);
              if (v96 >= v95 >> 1)
              {
                sub_1B1D194F8((v95 > 1), v96 + 1, 1);
                v88 = v132;
              }

              ++v87;
              *(v88 + 16) = v96 + 1;
              v97 = v88 + 16 * v96;
              *(v97 + 32) = v92;
              *(v97 + 40) = v94;
              v15 = v131;
              if (v86 == v87)
              {

                goto LABEL_114;
              }
            }
          }
        }
      }

      if (v33)
      {
        if (sub_1B1D7C1FC() != 1)
        {
LABEL_53:

          if (qword_1EB7749B8 != -1)
          {
            swift_once();
          }

          v45 = sub_1B1D7BD8C();
          __swift_project_value_buffer(v45, qword_1EB782530);
          v46 = sub_1B1D7BD6C();
          v47 = sub_1B1D7C00C();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_1B1C8D000, v46, v47, "Exporting app has multiple credential provider extensions but none specified.", v48, 2u);
            MEMORY[0x1B273C4C0](v48, -1, -1);
          }

          type metadata accessor for ASCAuthorizationError(0);
          v135 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
          v49 = swift_initStackObject();
          *(v49 + 16) = xmmword_1B1D85C40;
          v50 = *MEMORY[0x1E696A588];
          *(v49 + 32) = sub_1B1D7BE4C();
          v52 = v49 + 32;
          v53 = 0x80000001B1D9B610;
          *(v49 + 72) = MEMORY[0x1E69E6158];
          v54 = 0xD000000000000064;
          goto LABEL_127;
        }
      }

      else if (*(v15 + 16) != 1)
      {
        goto LABEL_53;
      }

      if (qword_1EB7749B8 != -1)
      {
        swift_once();
      }

      v61 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v61, qword_1EB782530);
      v62 = sub_1B1D7BD6C();
      v63 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1B1C8D000, v62, v63, "Exporter has one extension.", v64, 2u);
        MEMORY[0x1B273C4C0](v64, -1, -1);
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x1B273B2E0](0, v15);
      }

      else
      {
        if (!*(v15 + 16))
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:

LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          return;
        }

        v65 = *(v15 + 32);
      }

      v37 = v65;
LABEL_77:
      v70 = [v124 extensionSupportedCredentialExchangeFormatVersions_];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1B1D7BEEC();

        a5 = 0;
        v73 = *(v72 + 16);
        v74 = v72 + 40;
        v75 = MEMORY[0x1E69E7CC0];
        v129 = v72 + 40;
LABEL_79:
        v76 = (v74 + 16 * a5);
        while (v73 != a5)
        {
          if (a5 >= *(v72 + 16))
          {
            goto LABEL_117;
          }

          ++a5;
          v77 = v76 + 2;
          v78 = *(v76 - 1);
          a6 = *v76;

          v79 = sub_1B1D7C3AC();

          v76 = v77;
          if (!v79)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_1B1D0C9C8(0, *(v75 + 2) + 1, 1, v75);
            }

            v80 = v75;
            v82 = *(v75 + 2);
            v81 = *(v75 + 3);
            a6 = (v82 + 1);
            if (v82 >= v81 >> 1)
            {
              v80 = sub_1B1D0C9C8((v81 > 1), v82 + 1, 1, v75);
            }

            v74 = v72 + 40;
            v75 = v80;
            *(v80 + 2) = a6;
            goto LABEL_79;
          }
        }

        if (*(v75 + 2))
        {

          return;
        }
      }

      if (qword_1EB7749B8 != -1)
      {
        swift_once();
      }

      v98 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v98, qword_1EB782530);
      v99 = sub_1B1D7BD6C();
      v100 = sub_1B1D7C00C();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_1B1C8D000, v99, v100, "No valid format versions in Info.plist.", v101, 2u);
        MEMORY[0x1B273C4C0](v101, -1, -1);
      }

      v135 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
      v102 = swift_initStackObject();
      *(v102 + 16) = xmmword_1B1D85C40;
      v103 = *MEMORY[0x1E696A588];
      *(v102 + 32) = sub_1B1D7BE4C();
      *(v102 + 40) = v104;
      v133 = 0;
      v134 = 0xE000000000000000;
      sub_1B1D7C27C();
      MEMORY[0x1B273AEE0](0xD000000000000023, 0x80000001B1D9B680);
      v105 = [v37 identifier];
      if (v105)
      {
        v106 = v105;

        type metadata accessor for ASCAuthorizationError(0);
        v107 = sub_1B1D7BE4C();
        v109 = v108;

        MEMORY[0x1B273AEE0](v107, v109);

        MEMORY[0x1B273AEE0](0xD000000000000011, 0x80000001B1D9B6B0);
        v110 = *MEMORY[0x1E69C8E60];
        v111 = sub_1B1D7BE4C();
        MEMORY[0x1B273AEE0](v111);

        MEMORY[0x1B273AEE0](0xD00000000000004BLL, 0x80000001B1D9B6D0);
        v112 = v133;
        v113 = v134;
        *(v102 + 72) = MEMORY[0x1E69E6158];
        *(v102 + 48) = v112;
        *(v102 + 56) = v113;
        sub_1B1D6FAB8(v102);
        swift_setDeallocating();
        sub_1B1CF1634(v102 + 32);
        sub_1B1CF5DF8();
        sub_1B1D7B42C();
        swift_willThrow();

        return;
      }

      goto LABEL_134;
    }
  }

  else
  {
    v34 = *(v15 + 16);
    if (v34)
    {
      goto LABEL_36;
    }
  }

  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v119 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v119, qword_1EB782530);
  v120 = sub_1B1D7BD6C();
  v121 = sub_1B1D7C00C();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_1B1C8D000, v120, v121, "Exporting app does not have a credential provider extension.", v122, 2u);
    MEMORY[0x1B273C4C0](v122, -1, -1);
  }

  type metadata accessor for ASCAuthorizationError(0);
  v135 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1B1D85C40;
  v123 = *MEMORY[0x1E696A588];
  *(v49 + 32) = sub_1B1D7BE4C();
  v52 = v49 + 32;
  v53 = 0x80000001B1D9B770;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  v54 = 0xD000000000000048;
LABEL_127:
  *(v49 + 40) = v51;
  *(v49 + 48) = v54;
  *(v49 + 56) = v53;
  sub_1B1D6FAB8(v49);
  swift_setDeallocating();
  sub_1B1CF1634(v52);
  sub_1B1CF5DF8();
LABEL_128:
  sub_1B1D7B42C();
  swift_willThrow();
}

unint64_t sub_1B1CF5DF8()
{
  result = qword_1EB774B90;
  if (!qword_1EB774B90)
  {
    type metadata accessor for ASCAuthorizationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774B90);
  }

  return result;
}

unint64_t sub_1B1CF5E50()
{
  result = qword_1EB7750D0;
  if (!qword_1EB7750D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7753F0, &qword_1B1D88DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750D0);
  }

  return result;
}

unint64_t sub_1B1CF5EB4()
{
  result = qword_1EB775450;
  if (!qword_1EB775450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB775450);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1CF5F58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1CF1A50(v2, v3, v4, v5, v6);
}

uint64_t sub_1B1CF6020()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1CE9AD0;

  return sub_1B1D223A4(v2, v3, v5);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1CF6120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B1CE99BC;

  return sub_1B1D2248C(a1, v4, v5, v7);
}

uint64_t sub_1B1CF620C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1B1D7C1CC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1B1CF9654(v3, *(a1 + 36), 0, a1);
  sub_1B1CF96A8(v5, v6);
  return v5;
}

uint64_t ASAuthorizationUIContext.passkeyLoginChoices.getter()
{
  v1 = *(v0 + 16);
  *v22 = *v0;
  v23 = v1;
  v24[0] = *(v0 + 32);
  *(v24 + 15) = *(v0 + 47);
  v2 = [v22[0] loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v3 = sub_1B1D7BEEC();

  v21 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v8 = 0x1E698D000uLL;
      v19 = v3 & 0xFFFFFFFFFFFFFF8;
      if ((v3 & 0xC000000000000001) != 0)
      {
        break;
      }

LABEL_4:
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v10 = v5 + 1;
        if (!__OFADD__(v5, 1))
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v4 = sub_1B1D7C1FC();
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      MEMORY[0x1B273B2E0](v5, v3);
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

LABEL_7:
      v11 = *(v8 + 4064);
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12 && (v20 = v12, (sub_1B1CF6F88(&v20, v22) & 1) != 0))
      {
        sub_1B1D7C2DC();
        v13 = v6;
        v14 = v3;
        v15 = v4;
        v16 = v8;
        v17 = *(v21 + 16);
        sub_1B1D7C30C();
        v8 = v16;
        v4 = v15;
        v3 = v14;
        v6 = v13;
        v7 = v19;
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        if (v10 == v4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (v10 == v4)
        {
          goto LABEL_19;
        }
      }

      ++v5;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_19:

  return v21;
}

uint64_t sub_1B1CF64A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *v65 = *v1;
  *&v65[16] = v3;
  *v66 = *(v1 + 32);
  *&v66[15] = *(v1 + 47);
  v4 = 0x1E698D000uLL;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    v67 = *(v1 + 8);
    v68 = *(v1 + 24);
    v8 = v68;
    *a1 = v67;
    *(a1 + 16) = v8;
    goto LABEL_6;
  }

  if (v66[9])
  {
    v6 = *(v1 + 8);
    v67 = v6;
    v7 = *(v1 + 24);
LABEL_4:
    v68 = v7;
    *a1 = v6;
    *(a1 + 16) = v7;
LABEL_6:
    type metadata accessor for ASAuthorizationUIContext.Message();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return sub_1B1CF95A4(&v67, v64);
  }

  v58 = v5;
  swift_unknownObjectRetain();
  v59 = *v65;
  v10 = [*v65 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v11 = sub_1B1D7BEEC();

  *&v67 = MEMORY[0x1E69E7CC0];
  v61 = a1;
  if (v11 >> 62)
  {
    goto LABEL_25;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v13 = 0;
      v14 = v11 & 0xC000000000000001;
      v15 = v11 & 0xFFFFFFFFFFFFFF8;
      v62 = v11 & 0xFFFFFFFFFFFFFF8;
      if ((v11 & 0xC000000000000001) != 0)
      {
        break;
      }

LABEL_11:
      if ((v13 & 0x8000000000000000) == 0)
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_24;
        }

        v16 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v17 = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_22;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v12 = sub_1B1D7C1FC();
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      MEMORY[0x1B273B2E0](v13, v11);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

LABEL_14:
      v18 = *(v4 + 4064);
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19 && (v64[0] = v19, (sub_1B1CF6F88(v64, v65) & 1) != 0))
      {
        sub_1B1D7C2DC();
        v20 = v14;
        v21 = v11;
        v22 = v12;
        v23 = v4;
        v24 = *(v67 + 16);
        sub_1B1D7C30C();
        v4 = v23;
        v12 = v22;
        v11 = v21;
        v14 = v20;
        v15 = v62;
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        if (v17 == v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (v17 == v12)
        {
          goto LABEL_26;
        }
      }

      ++v13;
      if (!v14)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_26:

  if ((v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
  {
    v25 = sub_1B1D7C1FC();
  }

  else
  {
    v25 = *(v67 + 16);
  }

  if (v25 >= 2)
  {
    v26 = [v59 isRegistrationRequest];
    swift_unknownObjectRelease();
    a1 = v61;
    if (v26)
    {
      v67 = *&v65[8];
      v27 = v65[24];
      v68 = v65[24];
      *v61 = *&v65[8];
      *(v61 + 16) = v27;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ASAuthorizationUIContext.Message();
      goto LABEL_7;
    }

    v6 = *&v65[8];
    v67 = *&v65[8];
    v7 = v65[24];
    goto LABEL_4;
  }

  v67 = *&v65[8];
  v68 = v65[24];
  sub_1B1CF95A4(&v67, v64);
  v28 = [v58 userVisibleName];
  v57 = sub_1B1D7BE4C();
  v30 = v29;

  v63 = [v59 isCABLEAuthenticatorRequest];
  v31 = objc_opt_self();
  v32 = [v31 sharedManager];
  v33 = [v32 numberOfAutoFillProvidersEnabled];

  v34 = v33 > 1;
  v35 = v67;
  v36 = v68;
  if ([v59 isRegistrationRequest])
  {
    if (v66[18])
    {
      sub_1B1CF8E9C();

      v37 = [v58 relyingPartyIdentifier];
      if (!v37)
      {
        swift_unknownObjectRelease();
        type metadata accessor for ASAuthorizationUIContext.Message();
        return swift_storeEnumTagMultiPayload();
      }

      v38 = v37;
      sub_1B1D7BE4C();

      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775150, &qword_1B1D863C0) + 48);
      *v61 = *v66;
      sub_1B1D7C09C();
      swift_unknownObjectRelease();
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
    }

    else
    {
      v40 = v34;
      v41 = [v58 localizedCredentialProviderName];
      v42 = sub_1B1D7BE4C();
      v44 = v43;

      v45 = [v58 isExternal];
      swift_unknownObjectRelease();
      LOBYTE(v64[0]) = v36 & 1;
      *v61 = v35;
      *(v61 + 16) = v36 & 1;
      *(v61 + 24) = v57;
      *(v61 + 32) = v30;
      *(v61 + 40) = v63;
      *(v61 + 41) = v40;
      *(v61 + 48) = v42;
      *(v61 + 56) = v44;
      *(v61 + 64) = v45;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
    }
  }

  else
  {
    if ((v66[18] & 1) == 0)
    {
      v46 = [v59 destinationSiteForCrossSiteAssertion];
      if (v46 || (v46 = [v59 proxiedOriginDeviceName]) != 0)
      {
        v47 = v46;
        v48 = sub_1B1D7BE4C();
        v50 = v49;

        [v58 isSharedCredential];
        swift_unknownObjectRelease();
        LOBYTE(v64[0]) = v36 & 1;
        *v61 = v35;
        *(v61 + 16) = v36 & 1;
        *(v61 + 24) = v57;
        *(v61 + 32) = v30;
        *(v61 + 40) = v63;
        *(v61 + 41) = v34;
        *(v61 + 48) = v48;
        *(v61 + 56) = v50;
        type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
        goto LABEL_49;
      }

      if (![v58 isSharedCredential])
      {
        v60 = v34;
        v51 = [v31 sharedManager];
        v52 = [v51 numberOfAutoFillProvidersEnabled];

        if (v52 < 2)
        {
          swift_unknownObjectRelease();
          v54 = 0;
          v56 = 0;
        }

        else
        {
          v53 = [v58 localizedCredentialProviderName];
          v54 = sub_1B1D7BE4C();
          v56 = v55;

          swift_unknownObjectRelease();
        }

        LOBYTE(v64[0]) = v36 & 1;
        *v61 = v35;
        *(v61 + 16) = v36 & 1;
        *(v61 + 24) = v57;
        *(v61 + 32) = v30;
        *(v61 + 40) = v63;
        *(v61 + 41) = v60;
        *(v61 + 48) = v54;
        *(v61 + 56) = v56;
        type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
        goto LABEL_49;
      }
    }

    swift_unknownObjectRelease();
    *v61 = v35;
    *(v61 + 16) = v36 & 1;
    *(v61 + 24) = v57;
    *(v61 + 32) = v30;
    *(v61 + 40) = v63;
    *(v61 + 41) = v34;
    type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
  }

LABEL_49:
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ASAuthorizationUIContext.Message();
  return swift_storeEnumTagMultiPayload();
}

void sub_1B1CF6D3C(uint64_t a1@<X8>)
{
  if (*(v1 + 41))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v3 = -4;
  }

  else
  {
    v4 = *v1;
    v5 = *(v1 + 42);
    v6 = *(v1 + 50);
    if ([*v1 isRegistrationRequest] && (v6 & 1) != 0)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v3 = 2;
    }

    else
    {
      v7 = sub_1B1D111FC();
      v9 = *(v1 + 8);
      v10 = *(v1 + 24);
      v11 = *(v1 + 40);
      sub_1B1D11EF8(v7, &v12);

      v8 = v12;
      if (v12 == 3)
      {
        if ([v4 isRegistrationRequest])
        {
          *a1 = 0xD000000000000015;
          *(a1 + 8) = 0x80000001B1D9AC20;
        }

        else
        {
          *a1 = xmmword_1B1D85E80;
        }

        *(a1 + 16) = 0;
        v3 = 64;
      }

      else
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = v8;
        v3 = -64;
      }
    }
  }

  *(a1 + 24) = v3;
}

BOOL static ASAuthorizationUIContext.PasskeyTitle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = *(a2 + 8);
      }

      return (v5 & 1) != 0;
    }

    if (v3 == 1)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 0;
    }

    return (v8 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v3 > 2)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  return (v9 & 1) != 0;
}

BOOL sub_1B1CF6F10(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = 0;
      }

      return v8 == 1;
    }

    v5 = v3 == 2;
  }

  else if (v2)
  {
    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

id sub_1B1CF6F88(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 externalCredentialProviderName];
  if (v4)
  {
  }

  else if (!*(a2 + 44) || (*(a2 + 42) & 1) == 0 && ([*a2 isRegistrationRequest] & 1) != 0 || (*(a2 + 45) & 1) == 0)
  {
    result = [v3 relyingPartyIdentifier];
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = sub_1B1D7BE4C();
    v9 = v8;

    if (v7 == 0x6F632E656C707061 && v9 == 0xE90000000000006DLL)
    {
    }

    else
    {
      v11 = sub_1B1D7C50C();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return ((*(a2 + 50) & 1) == 0 || ([v3 isExternal] & 1) == 0);
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.service.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1B1CEF6D4();
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.service.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 16);
  result = sub_1B1CF8E9C();
  *v1 = v2;
  v1[1] = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.username.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

__n128 ASAuthorizationUIContext.PasskeyMessageParameters.init(service:username:isCABLEAuthenticatorRequest:hasMultipleCredentialProvidersEnabled:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u8[0];
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u8[0] = v6;
  a6[1].n128_u64[1] = a2;
  a6[2].n128_u64[0] = a3;
  a6[2].n128_u8[8] = a4;
  a6[2].n128_u8[9] = a5;
  return result;
}

uint64_t sub_1B1CF725C@<X0>(uint64_t a1@<X8>)
{
  v3 = 65539;
  v4 = *v1;
  v23 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 44);
  v7 = *(v1 + 45);
  v24 = *(v1 + 49);
  v8 = *(v1 + 50);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v11 = 0;
    goto LABEL_27;
  }

  v10 = result;
  swift_unknownObjectRetain();
  if ([v4 isRegistrationRequest])
  {
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = 8;
    }

    v12 = 3;
  }

  else
  {
    v25 = *(v1 + 8);
    v26 = *(v1 + 24);
    v13 = ASAuthorizationUIContext.loginChoicesToShow.getter();
    if (v13 >> 62)
    {
      v14 = sub_1B1D7C1FC();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v14 > 1;
    v12 = 2;
  }

  if ([v10 isExternal])
  {
    result = swift_unknownObjectRelease();
    v3 = v12 | 0x10000;
    goto LABEL_27;
  }

  v15 = [v4 platformUserVerificationPreference];
  v16 = sub_1B1D7BE4C();
  v18 = v17;

  if (v16 != sub_1B1D7BE4C() || v18 != v19)
  {
    v21 = sub_1B1D7C50C();

    result = swift_unknownObjectRelease();
    if ((v21 | v24))
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_26:
    v3 = 0x20000;
    v11 = v6;
    goto LABEL_27;
  }

  result = swift_unknownObjectRelease();
  v22 = 256;
  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v6 == 1 || v23 != 1)
  {
    v3 = v22 | v12 | 0x10000;
  }

  else
  {
    v3 = v12 + 66304;
  }

LABEL_27:
  *a1 = v11;
  *(a1 + 8) = v3;
  *(a1 + 10) = BYTE2(v3);
  return result;
}

uint64_t sub_1B1CF74C8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 1);
  v4 = *v1;
  v5 = [*v1 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v6 = sub_1B1D7BEEC();

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B273B2E0](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v8 = *(v6 + 32);
        swift_unknownObjectRetain();
      }

      sub_1B1D7B99C();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_18;
      }

      v9 = sub_1B1D7B98C();
      v10 = sub_1B1D7B86C();

      v6 = *(v10 + 16);
      v11 = sub_1B1CF9600();
      v12 = MEMORY[0x1B273AFD0](v6, &type metadata for ASAuthorizationUIContext.CredentialProvider, v11);
      v27 = v12;
      v13 = *(v10 + 16);
      if (!v13)
      {
        break;
      }

      v23 = v4;
      v14 = 0;
      v4 = (v10 + 40);
      while (v14 < *(v10 + 16))
      {
        ++v14;
        v15 = *(v4 - 1);
        v16 = *v4;
        if (*v4)
        {
          v17 = *(v4 - 1);
        }

        else
        {
          v17 = 0;
        }

        v18 = *v4;

        v6 = &v27;
        sub_1B1D1E4E0(&v24, v17, v16);
        sub_1B1CED598(v24, v25);
        v4 += 2;
        if (v13 == v14)
        {
          v19 = v27;
          v4 = v23;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      result = sub_1B1D7C1FC();
      if (!result)
      {
        goto LABEL_22;
      }
    }

    v19 = v12;
LABEL_17:

    v24 = v4;
    v20 = v3[1];
    v25 = *v3;
    v26[0] = v20;
    *(v26 + 11) = *(v3 + 27);
    sub_1B1D11EF8(v19, &v27);

    v21 = v27;
    if (v27 == 3)
    {
LABEL_18:
      result = swift_unknownObjectRelease();
      goto LABEL_23;
    }

    result = swift_unknownObjectRelease();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v21;
    v22 = -64;
  }

  else
  {
LABEL_22:

LABEL_23:
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001B1D9AC20;
    *(a1 + 16) = 0;
    v22 = 64;
  }

  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_1B1CF7724@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v2[2];
  v7 = *(v2 + 24);
  v8 = v2[4];
  sub_1B1D7B99C();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for ASAuthorizationUIContext.Message();
LABEL_21:

    return swift_storeEnumTagMultiPayload();
  }

  v34 = v5;
  v35 = v8;
  v36 = v4;
  swift_unknownObjectRetain();
  v9 = sub_1B1D7B98C();
  v10 = sub_1B1D7B86C();

  v11 = *(v10 + 16);
  v12 = sub_1B1CF9600();
  result = MEMORY[0x1B273AFD0](v11, &type metadata for ASAuthorizationUIContext.CredentialProvider, v12);
  v45 = result;
  v14 = *(v10 + 16);
  v37 = v7;
  if (!v14)
  {
    v21 = result;
LABEL_12:

    v22 = v35;
    v38 = v34;
    v39 = v36;
    v40 = v6;
    v41 = v7;
    *v42 = *(v2 + 25);
    *&v42[3] = *(v2 + 7);
    v23 = v2[5];
    v43 = v35;
    v44[0] = v23;
    *(v44 + 7) = *(v2 + 47);
    sub_1B1D11EF8(v21, &v45);
    if (v45 == 3)
    {
      v22 = 0;
    }

    if (*(v21 + 16) == 1)
    {
      v24 = sub_1B1CF620C(v21);
      v26 = v25;

      v27 = sub_1B1D7B98C();
      v28 = sub_1B1D7B88C();
      v30 = v29;
      if (v26 >= 3)
      {
        sub_1B1CED588(v24, v26);
      }

      sub_1B1CEF6D4();
      v32 = sub_1B1D7B97C();
      swift_unknownObjectRelease();
      *a1 = v36;
      *(a1 + 8) = v6;
      *(a1 + 16) = v37 & 1;
      *(a1 + 24) = v28;
      *(a1 + 32) = v30;
      *(a1 + 40) = v22;
      *(a1 + 48) = v32;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
    }

    else
    {

      sub_1B1CEF6D4();
      v31 = sub_1B1D7B97C();
      swift_unknownObjectRelease();
      *a1 = v36;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7 & 1;
      *(a1 + 24) = v22;
      *(a1 + 32) = v31;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
    }

    swift_storeEnumTagMultiPayload();
    type metadata accessor for ASAuthorizationUIContext.Message();
    goto LABEL_21;
  }

  v33 = v6;
  v15 = 0;
  v16 = (v10 + 40);
  while (v15 < *(v10 + 16))
  {
    ++v15;
    v17 = *(v16 - 1);
    v18 = *v16;
    if (*v16)
    {
      v19 = *(v16 - 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = *v16;

    sub_1B1D1E4E0(&v38, v19, v18);
    result = sub_1B1CED598(v38, v39);
    v16 += 2;
    if (v14 == v15)
    {
      v21 = v45;
      v6 = v33;
      v7 = v37;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1B1CF7A18(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B273B2E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1B1CF7A98;
  }

  __break(1u);
  return result;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = *(a1 + 41);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 41);
  v19[0] = *a1;
  v19[1] = v2;
  v20 = v3;
  v17[0] = v7;
  v17[1] = v8;
  v18 = v9;
  sub_1B1CEF6D4();
  sub_1B1CEF6D4();
  LOBYTE(v7) = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(v19, v17);
  sub_1B1CF8E9C();
  sub_1B1CF8E9C();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (v4 == v10 && v5 == v11)
  {
    if (v6 != v12)
    {
      return 0;
    }

    return v16 ^ v13 ^ 1u;
  }

  v15 = sub_1B1D7C50C();
  result = 0;
  if ((v15 & 1) != 0 && ((v6 ^ v12) & 1) == 0)
  {
    return v16 ^ v13 ^ 1u;
  }

  return result;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV14PasskeyMessageO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v285 = a1;
  v286 = a2;
  v2 = sub_1B1D7C08C();
  v283 = *(v2 - 1);
  v284 = v2;
  v3 = *(v283 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v274 = &v274 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v275 = &v274 - v6;
  v7 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v282 = &v274 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v281 = &v274 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v279 = &v274 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v277 = &v274 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v280 = &v274 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v278 = &v274 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v276 = &v274 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v274 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v274 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v274 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v274 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v274 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v274 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v274 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775160, &qword_1B1D863C8);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v47 = &v274 - v46;
  v48 = &v274 + *(v45 + 56) - v46;
  sub_1B1CF96BC(v285, &v274 - v46);
  v285 = v48;
  sub_1B1CF96BC(v286, v48);
  v286 = v47;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v286;
      sub_1B1CF96BC(v286, v40);
      v60 = *v40;
      v59 = *(v40 + 1);
      v61 = v40[16];
      v62 = v285;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_35;
    case 2u:
      v57 = v286;
      sub_1B1CF96BC(v286, v37);
      v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775150, &qword_1B1D863C0) + 48);
      v125 = v285;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v283 + 8))(&v37[v124], v284);
        goto LABEL_66;
      }

      v126 = *v37;
      v127 = *v125;
      v129 = v283;
      v128 = v284;
      v130 = *(v283 + 32);
      v131 = &v37[v124];
      v132 = v275;
      v130(v275, v131, v284);
      v133 = v125 + v124;
      v134 = v274;
      v130(v274, v133, v128);
      if (v126 == v127)
      {
        sub_1B1CF9830();
        sub_1B1D7BEAC();
        sub_1B1D7BEAC();
        if (v294 == v287 && v295 == v288)
        {
          v135 = *(v129 + 8);
          v135(v134, v128);
          v135(v275, v128);

LABEL_85:
          v123 = v57;
LABEL_96:
          sub_1B1CF9788(v123);
          v66 = 1;
          return v66 & 1;
        }

        v268 = sub_1B1D7C50C();
        v269 = *(v129 + 8);
        v269(v134, v128);
        v269(v275, v128);

        if (v268)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v263 = *(v129 + 8);
        v263(v134, v128);
        v263(v132, v128);
      }

      v264 = v57;
      goto LABEL_98;
    case 3u:
      v57 = v286;
      sub_1B1CF96BC(v286, v34);
      v137 = *v34;
      v136 = *(v34 + 1);
      v138 = v34[16];
      v139 = *(v34 + 4);
      v141 = *(v34 + 6);
      v140 = *(v34 + 7);
      v142 = v285;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_65;
      }

      v283 = v141;
      v284 = v140;
      v143 = v34[41];
      v144 = v34[40];
      v145 = *(v34 + 3);
      v146 = *v142;
      v147 = v142[1];
      v148 = *(v142 + 16);
      v149 = v142[3];
      v150 = v142[4];
      v151 = *(v142 + 40);
      v152 = *(v142 + 41);
      v153 = v142[7];
      v282 = v142[6];
      v294 = v137;
      v295 = v136;
      v296 = v138;
      v297 = v145;
      v298 = v139;
      v299 = v144;
      v300 = v143;
      v287 = v146;
      v288 = v147;
      v289 = v148;
      v290 = v149;
      v291 = v150;
      v292 = v151;
      v293 = v152;
      v154 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();

      if ((v154 & 1) == 0)
      {
        goto LABEL_77;
      }

      v98 = v286;
      if (!v284)
      {
        if (!v153)
        {
          goto LABEL_95;
        }

LABEL_89:

        goto LABEL_97;
      }

      if (!v153)
      {
        goto LABEL_89;
      }

      if (v283 == v282 && v284 == v153)
      {
LABEL_54:

LABEL_95:
        v123 = v98;
        goto LABEL_96;
      }

LABEL_94:
      v272 = sub_1B1D7C50C();

      if (v272)
      {
        goto LABEL_95;
      }

LABEL_97:
      v264 = v98;
LABEL_98:
      sub_1B1CF9788(v264);
LABEL_99:
      v66 = 0;
      return v66 & 1;
    case 4u:
      v57 = v286;
      sub_1B1CF96BC(v286, v31);
      v67 = *v31;
      v68 = *(v31 + 1);
      v69 = v31[16];
      v70 = *(v31 + 4);
      v71 = v285;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_65;
      }

      v72 = v31[41];
      v73 = v31[40];
      v74 = *(v31 + 3);
      v75 = v70;
      v76 = *v71;
      v77 = v71[1];
      v78 = *(v71 + 16);
      v79 = v71[3];
      v80 = v71[4];
      v81 = *(v71 + 40);
      v82 = *(v71 + 41);
      v294 = v67;
      v295 = v68;
      v296 = v69;
      v297 = v74;
      v298 = v75;
      v299 = v73;
      v300 = v72;
      v287 = v76;
      v288 = v77;
      v289 = v78;
      v290 = v79;
      v291 = v80;
      v292 = v81;
      v293 = v82;
      v66 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();
      goto LABEL_32;
    case 5u:
      v57 = v286;
      sub_1B1CF96BC(v286, v28);
      v172 = *v28;
      v171 = *(v28 + 1);
      v173 = v28[16];
      v174 = *(v28 + 4);
      v176 = *(v28 + 6);
      v175 = *(v28 + 7);
      v177 = v285;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_64;
      }

      v284 = v176;
      v178 = v175;
      v179 = v28[41];
      v180 = v28[40];
      v181 = *(v28 + 3);
      v182 = v177;
      v183 = *v177;
      v184 = v177[1];
      v185 = *(v177 + 16);
      v186 = v177[3];
      v187 = v177[4];
      v188 = *(v182 + 40);
      v189 = *(v182 + 41);
      v191 = v182[6];
      v190 = v182[7];
      v283 = v191;
      v285 = v190;
      v294 = v172;
      v295 = v171;
      v296 = v173;
      v297 = v181;
      v298 = v174;
      v299 = v180;
      v300 = v179;
      v287 = v183;
      v288 = v184;
      v289 = v185;
      v290 = v186;
      v291 = v187;
      v292 = v188;
      v293 = v189;
      v192 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();

      if (v192)
      {
        goto LABEL_38;
      }

      goto LABEL_77;
    case 6u:
      v57 = v286;
      sub_1B1CF96BC(v286, v25);
      v206 = *v25;
      v205 = *(v25 + 1);
      v207 = v25[16];
      v208 = *(v25 + 4);
      v210 = *(v25 + 6);
      v209 = *(v25 + 7);
      v211 = v285;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_64;
      }

      v284 = v210;
      v178 = v209;
      v212 = v25[41];
      v213 = v25[40];
      v214 = *(v25 + 3);
      v215 = v211;
      v216 = *v211;
      v217 = v211[1];
      v218 = *(v211 + 16);
      v219 = v211[3];
      v220 = v211[4];
      v221 = *(v215 + 40);
      v222 = *(v215 + 41);
      v224 = v215[6];
      v223 = v215[7];
      v283 = v224;
      v285 = v223;
      v294 = v206;
      v295 = v205;
      v296 = v207;
      v297 = v214;
      v298 = v208;
      v299 = v213;
      v300 = v212;
      v287 = v216;
      v288 = v217;
      v289 = v218;
      v290 = v219;
      v291 = v220;
      v292 = v221;
      v293 = v222;
      v225 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();

      if ((v225 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_38:
      v98 = v286;
      if (v284 == v283 && v178 == v285)
      {
        goto LABEL_54;
      }

      goto LABEL_94;
    case 7u:
      v57 = v286;
      v155 = v276;
      sub_1B1CF96BC(v286, v276);
      v157 = *v155;
      v156 = *(v155 + 8);
      v158 = *(v155 + 16);
      v159 = *(v155 + 32);
      v160 = v285;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_65;
      }

      v161 = *(v155 + 41);
      v162 = *(v155 + 40);
      v163 = *(v155 + 24);
      v164 = *v160;
      v165 = v160[1];
      v166 = *(v160 + 16);
      v167 = v160[3];
      v168 = v160[4];
      v169 = *(v160 + 40);
      v170 = *(v160 + 41);
      v294 = v157;
      v295 = v156;
      v296 = v158;
      v297 = v163;
      v298 = v159;
      v299 = v162;
      v300 = v161;
      v287 = v164;
      v288 = v165;
      v289 = v166;
      v290 = v167;
      v291 = v168;
      v292 = v169;
      v293 = v170;
      v66 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();
LABEL_32:

      goto LABEL_33;
    case 8u:
      v57 = v286;
      v227 = v278;
      sub_1B1CF96BC(v286, v278);
      v229 = *v227;
      v228 = *(v227 + 8);
      v230 = *(v227 + 16);
      v231 = *(v227 + 32);
      v233 = *(v227 + 48);
      v232 = *(v227 + 56);
      v234 = v285;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_64;
      }

      v284 = v233;
      v235 = *(v227 + 41);
      v236 = *(v227 + 40);
      v237 = *(v227 + 24);
      v238 = v234;
      v239 = *v234;
      v240 = v234[1];
      v241 = *(v234 + 16);
      v242 = v234[3];
      v243 = v234[4];
      v244 = *(v238 + 40);
      v245 = *(v238 + 41);
      v247 = v238[6];
      v246 = v238[7];
      v283 = v247;
      v285 = v246;
      v294 = v229;
      v295 = v228;
      v296 = v230;
      v297 = v237;
      v298 = v231;
      v299 = v236;
      v300 = v235;
      v287 = v239;
      v288 = v240;
      v289 = v241;
      v290 = v242;
      v291 = v243;
      v292 = v244;
      v293 = v245;
      v248 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();

      if ((v248 & 1) == 0)
      {
        goto LABEL_77;
      }

      v98 = v286;
      if (v284 == v283 && v232 == v285)
      {
        goto LABEL_54;
      }

      goto LABEL_94;
    case 9u:
      v57 = v286;
      v101 = v280;
      sub_1B1CF96BC(v286, v280);
      v103 = *v101;
      v102 = *(v101 + 8);
      v104 = *(v101 + 16);
      v105 = *(v101 + 32);
      v107 = *(v101 + 48);
      v106 = *(v101 + 56);
      v108 = v285;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_64:

LABEL_65:
        sub_1B1CF8E9C();

        goto LABEL_66;
      }

      v284 = v107;
      v109 = v106;
      v110 = *(v101 + 41);
      v111 = *(v101 + 40);
      v112 = *(v101 + 24);
      v113 = *v108;
      v114 = v108[1];
      v115 = *(v108 + 16);
      v116 = v108[3];
      v117 = v108[4];
      v118 = *(v108 + 40);
      v119 = *(v108 + 41);
      v120 = v108[7];
      v283 = v108[6];
      v285 = v120;
      v294 = v103;
      v295 = v102;
      v296 = v104;
      v297 = v112;
      v298 = v105;
      v299 = v111;
      v300 = v110;
      v287 = v113;
      v288 = v114;
      v289 = v115;
      v290 = v116;
      v291 = v117;
      v292 = v118;
      v293 = v119;
      v121 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();

      if ((v121 & 1) == 0)
      {
        goto LABEL_77;
      }

      v122 = v286;
      if (v284 == v283 && v109 == v285)
      {

        v123 = v122;
        goto LABEL_96;
      }

      v267 = sub_1B1D7C50C();

      if (v267)
      {
        v123 = v122;
        goto LABEL_96;
      }

      v264 = v122;
      goto LABEL_98;
    case 0xAu:
      v57 = v286;
      v226 = v277;
      sub_1B1CF96BC(v286, v277);
      v60 = *v226;
      v59 = *(v226 + 8);
      v61 = *(v226 + 16);
      v62 = v285;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_35;
      }

      goto LABEL_5;
    case 0xBu:
      v57 = v286;
      v58 = v279;
      sub_1B1CF96BC(v286, v279);
      v60 = *v58;
      v59 = *(v58 + 8);
      v61 = *(v58 + 16);
      v62 = v285;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_35:
        sub_1B1CF8E9C();
        goto LABEL_66;
      }

LABEL_5:
      v63 = *v62;
      v64 = v62[1];
      v65 = *(v62 + 16);
      v294 = v60;
      v295 = v59;
      v296 = v61;
      v287 = v63;
      v288 = v64;
      v289 = v65;
      v66 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();
      sub_1B1CF8E9C();
LABEL_33:
      sub_1B1CF9788(v57);
      return v66 & 1;
    case 0xCu:
      v57 = v286;
      v83 = v281;
      sub_1B1CF96BC(v286, v281);
      v85 = *v83;
      v84 = *(v83 + 8);
      v86 = *(v83 + 16);
      v88 = *(v83 + 24);
      v87 = *(v83 + 32);
      v90 = *(v83 + 40);
      v89 = *(v83 + 48);
      v91 = v285;
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        sub_1B1CF8E9C();
        goto LABEL_66;
      }

      v282 = v90;
      v284 = v89;
      v93 = *v91;
      v92 = v91[1];
      v94 = *(v91 + 16);
      v95 = v91[3];
      v283 = v91[4];
      v96 = v91[6];
      v281 = v91[5];
      v285 = v96;
      v294 = v85;
      v295 = v84;
      v296 = v86;
      v287 = v93;
      v288 = v92;
      v289 = v94;
      v97 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();
      sub_1B1CF8E9C();
      if ((v97 & 1) == 0)
      {

        goto LABEL_78;
      }

      v99 = v285;
      v98 = v286;
      if (v88 == v95 && v87 == v283)
      {

        v100 = v282;
      }

      else
      {
        v265 = sub_1B1D7C50C();

        v100 = v282;
        if ((v265 & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      if (v100 == v281)
      {
        sub_1B1CF97E4();
        v266 = v284;
        v66 = sub_1B1D7C14C();

        sub_1B1CF9788(v98);
        return v66 & 1;
      }

LABEL_87:

      goto LABEL_97;
    case 0xDu:
      v193 = v282;
      sub_1B1CF96BC(v286, v282);
      v194 = *v193;
      v195 = *(v193 + 8);
      v196 = *(v193 + 16);
      v198 = *(v193 + 24);
      v197 = *(v193 + 32);
      v199 = v285;
      if (swift_getEnumCaseMultiPayload() != 13)
      {

        sub_1B1CF8E9C();
        goto LABEL_63;
      }

      v200 = *v199;
      v201 = v199[1];
      v202 = *(v199 + 16);
      v203 = v199[4];
      v284 = v199[3];
      v294 = v194;
      v295 = v195;
      v296 = v196;
      v287 = v200;
      v288 = v201;
      v289 = v202;
      v204 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();
      sub_1B1CF8E9C();
      if ((v204 & 1) != 0 && v198 == v284)
      {
        sub_1B1CF97E4();
        v66 = sub_1B1D7C14C();

        sub_1B1CF9788(v286);
        return v66 & 1;
      }

      goto LABEL_78;
    default:
      sub_1B1CF96BC(v286, v42);
      v50 = *v42;
      v49 = *(v42 + 1);
      v51 = v42[16];
      v52 = *(v42 + 4);
      v54 = *(v42 + 6);
      v53 = *(v42 + 7);
      v55 = v42[64];
      v56 = v285;
      if (swift_getEnumCaseMultiPayload())
      {

        sub_1B1CF8E9C();

LABEL_63:
        v57 = v286;
LABEL_66:
        sub_1B1CF9720(v57);
        goto LABEL_99;
      }

      v282 = v54;
      v249 = v53;
      LODWORD(v283) = v55;
      v250 = v42[41];
      v251 = v42[40];
      v252 = *(v42 + 3);
      v253 = *v56;
      v254 = v56[1];
      v255 = *(v56 + 16);
      v256 = v56[3];
      v257 = v56[4];
      v258 = *(v56 + 40);
      v259 = *(v56 + 41);
      v260 = v56[7];
      v281 = v56[6];
      v284 = v260;
      LODWORD(v285) = *(v56 + 64);
      v294 = v50;
      v295 = v49;
      v296 = v51;
      v297 = v252;
      v298 = v52;
      v299 = v251;
      v300 = v250;
      v287 = v253;
      v288 = v254;
      v289 = v255;
      v290 = v256;
      v291 = v257;
      v292 = v258;
      v293 = v259;
      v261 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v294, &v287);
      sub_1B1CF8E9C();

      sub_1B1CF8E9C();

      if ((v261 & 1) == 0)
      {
LABEL_77:

LABEL_78:
        v264 = v286;
        goto LABEL_98;
      }

      v98 = v286;
      if (v282 == v281 && v249 == v284)
      {

        v262 = v283;
      }

      else
      {
        v270 = sub_1B1D7C50C();

        v262 = v283;
        if ((v270 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      v271 = v262 ^ v285;
      sub_1B1CF9788(v98);
      v66 = v271 ^ 1;
      return v66 & 1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s12PasskeyTitleOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12PasskeyTitleOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B1CF8F08(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1CF8F24(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for ASAuthorizationUIContext.PasskeyMessage()
{
  result = qword_1EB7750E8;
  if (!qword_1EB7750E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1CF8FF0()
{
  sub_1B1CF912C();
  if (v0 <= 0x3F)
  {
    sub_1B1CF9198();
    if (v1 <= 0x3F)
    {
      sub_1B1CF920C();
      if (v2 <= 0x3F)
      {
        sub_1B1CF9284();
        if (v3 <= 0x3F)
        {
          sub_1B1CF92B4(319, &qword_1EB775120);
          if (v4 <= 0x3F)
          {
            sub_1B1CF92B4(319, &qword_1EB775128);
            if (v5 <= 0x3F)
            {
              sub_1B1CF9314();
              if (v6 <= 0x3F)
              {
                sub_1B1CF9344(319);
                if (v7 <= 0x3F)
                {
                  sub_1B1CF9464();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1B1CF912C()
{
  if (!qword_1EB7750F8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB7750F8);
    }
  }
}

void sub_1B1CF9198()
{
  if (!qword_1EB775100)
  {
    type metadata accessor for LABiometryType(255);
    sub_1B1D7C08C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB775100);
    }
  }
}

void sub_1B1CF920C()
{
  if (!qword_1EB775108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775110, &qword_1B1D862E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB775108);
    }
  }
}

ValueMetadata *sub_1B1CF9284()
{
  result = qword_1EB775118;
  if (!qword_1EB775118)
  {
    result = &type metadata for ASAuthorizationUIContext.PasskeyMessageParameters;
    atomic_store(&type metadata for ASAuthorizationUIContext.PasskeyMessageParameters, &qword_1EB775118);
  }

  return result;
}

void sub_1B1CF92B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1B1CF9314()
{
  result = qword_1EB775130;
  if (!qword_1EB775130)
  {
    result = &type metadata for ASAuthorizationUIContext.Service;
    atomic_store(&type metadata for ASAuthorizationUIContext.Service, &qword_1EB775130);
  }

  return result;
}

void sub_1B1CF9344(uint64_t a1)
{
  if (!qword_1EB775138)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for LABiometryType(255);
    sub_1B1D7B8FC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB775138);
    }
  }
}

void sub_1B1CF9464()
{
  if (!qword_1EB775140)
  {
    type metadata accessor for LABiometryType(255);
    sub_1B1D7B8FC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB775140);
    }
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1CF9500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1CF9548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1CF9600()
{
  result = qword_1EB775158;
  if (!qword_1EB775158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775158);
  }

  return result;
}

uint64_t sub_1B1CF9654(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1B1CF96A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B1CF96BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1CF9720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775160, &qword_1B1D863C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1CF9788(uint64_t a1)
{
  v2 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B1CF97E4()
{
  result = qword_1EB775168;
  if (!qword_1EB775168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB775168);
  }

  return result;
}

unint64_t sub_1B1CF9830()
{
  result = qword_1EB775170[0];
  if (!qword_1EB775170[0])
  {
    sub_1B1D7C08C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB775170);
  }

  return result;
}

uint64_t sub_1B1CF9888@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7B65C();
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v78 - v8;
  v11 = *v1;
  v10 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v89 = v13;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v79 = v3;
    v80 = v14;
    v84 = v11;
    v85 = v10;
    v82 = v10;
    v86 = v12;
    v87 = v13;
    *v88 = *(v1 + 25);
    *&v88[10] = *(v1 + 35);
    swift_unknownObjectRetain();
    v15 = ASAuthorizationUIContext.loginChoicesToShow.getter();
    v83 = v12;
    if (v15 >> 62)
    {
      v16 = sub_1B1D7C1FC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v11;
    if (v16 == 1)
    {
      v18 = [objc_opt_self() sharedManager];
      v19 = [v18 numberOfAutoFillProvidersEnabled];

      if (v19 < 2)
      {
        v25 = 0;
        v27 = 0;
        v35 = v82;
        v20 = v80;
      }

      else
      {
        v20 = v80;
        v21 = [v80 externalCredentialIdentity];
        if (v21 && (v22 = v21, v23 = [v21 owningExtensionState], v22, v23) && (v24 = objc_msgSend(v23, sel_localizedDisplayName), v23, v24))
        {
          v25 = sub_1B1D7BE4C();
          v27 = v26;
        }

        else
        {
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          v36 = sub_1B1D7B62C();
          v27 = v37;
          v38 = *(v81 + 8);
          v39 = v7;
          v25 = v36;
          v40 = v79;
          v38(v39, v79);
          v38(v9, v40);
        }

        v35 = v82;
      }

      v41 = [v17 proxiedOriginDeviceName];
      if (v41)
      {
        v42 = v41;
        v43 = sub_1B1D7BE4C();
        v45 = v44;

        if ([v20 isSharedCredential] && (v46 = objc_msgSend(v20, sel_groupName)) != 0)
        {
          v47 = v46;

          v48 = sub_1B1D7BE4C();
          v50 = v49;

          swift_unknownObjectRelease();
          LOBYTE(v47) = v89;
          LOBYTE(v84) = v89;
          v51 = v83;
          *a1 = v35;
          *(a1 + 8) = v51;
          *(a1 + 16) = v47;
          *(a1 + 23) = 0x80;
          *(a1 + 21) = 0;
          *(a1 + 17) = 0;
          *(a1 + 24) = v43;
          *(a1 + 32) = v45;
          *(a1 + 40) = v48;
          *(a1 + 48) = v50;
        }

        else
        {
          swift_unknownObjectRelease();
          v52 = v89;
          LOBYTE(v84) = v89 & 1;
          v53 = v83;
          *a1 = v35;
          *(a1 + 8) = v53;
          *(a1 + 16) = v52 & 1;
          *(a1 + 23) = 64;
          *(a1 + 21) = 0;
          *(a1 + 17) = 0;
          *(a1 + 24) = v43;
          *(a1 + 32) = v45;
          *(a1 + 40) = v25;
          *(a1 + 48) = v27;
        }

        type metadata accessor for ASAuthorizationUIContext.Message();
        swift_storeEnumTagMultiPayload();
        return sub_1B1CEF6D4();
      }

      else
      {
        if ([v20 isSharedCredential] && (v62 = objc_msgSend(v20, sel_groupName)) != 0)
        {
          v63 = v62;

          v64 = sub_1B1D7BE4C();
          v66 = v65;

          LOBYTE(v63) = v89;
          v67 = v83;
          sub_1B1CEF6D4();
          v68 = [v20 username];
          v69 = sub_1B1D7BE4C();
          v71 = v70;

          swift_unknownObjectRelease();
          LOBYTE(v84) = v63;
          *a1 = v35;
          *(a1 + 8) = v67;
          *(a1 + 16) = v63;
          *(a1 + 23) = 96;
          *(a1 + 21) = 0;
          *(a1 + 17) = 0;
          *(a1 + 24) = v69;
          *(a1 + 32) = v71;
          *(a1 + 40) = v64;
          *(a1 + 48) = v66;
        }

        else
        {
          v72 = v89;
          v73 = v83;
          sub_1B1CEF6D4();
          v74 = [v20 username];
          v75 = sub_1B1D7BE4C();
          v77 = v76;

          swift_unknownObjectRelease();
          LOBYTE(v84) = v72;
          *a1 = v35;
          *(a1 + 8) = v73;
          *(a1 + 16) = v72 & 1;
          *(a1 + 24) = v75;
          *(a1 + 32) = v77;
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = v25;
          *(a1 + 64) = v27;
        }

        type metadata accessor for ASAuthorizationUIContext.Message();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v29 = [v11 proxiedOriginDeviceName];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1B1D7BE4C();
        v33 = v32;
        swift_unknownObjectRelease();

        v34 = v83;
        *a1 = v82;
        *(a1 + 8) = v34;
        *(a1 + 16) = v13 & 1;
        *(a1 + 24) = v31;
        *(a1 + 32) = v33;
        type metadata accessor for ASAuthorizationUIContext.Message();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v54 = [v11 localAccountLoginChoices];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
        v55 = sub_1B1D7BEEC();

        v56 = v82;
        if (v55 >> 62)
        {
          sub_1B1D7C1FC();
        }

        else
        {
          v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v58 = [v11 loginChoices];
        v59 = sub_1B1D7BEEC();

        if (v59 >> 62)
        {
          sub_1B1D7C1FC();
        }

        else
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v61 = v83;

        swift_unknownObjectRelease();
        *a1 = v56;
        *(a1 + 8) = v61;
        *(a1 + 16) = v13 & 1;
        type metadata accessor for ASAuthorizationUIContext.Message();
        swift_storeEnumTagMultiPayload();
      }

      return sub_1B1CEF6D4();
    }
  }

  else
  {
    type metadata accessor for ASAuthorizationUIContext.Message();

    return swift_storeEnumTagMultiPayload();
  }
}

void sub_1B1CFA01C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 41);
  v5 = [*v1 proxiedIconData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B1D7B4EC();
    v9 = v8;

    v10 = [v3 proxiedIconScale];
    if (v10)
    {
      v11 = v10;
      [v10 doubleValue];
      v13 = v12;

      *a1 = v7;
      *(a1 + 8) = v9;
      *(a1 + 16) = v13;
      v14 = 1;
      goto LABEL_10;
    }

    sub_1B1CDEFDC(v7, v9);
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v14 = -4;
  }

  else
  {
    v15 = sub_1B1D111FC();
    v17 = *(v1 + 8);
    v18 = *(v1 + 24);
    v19 = *(v1 + 40);
    v20 = *(v1 + 42);
    v21 = *(v1 + 50);
    sub_1B1D11EF8(v15, &v22);

    v16 = v22;
    if (v22 == 3)
    {
      *a1 = xmmword_1B1D85E80;
      *(a1 + 16) = 0;
      v14 = 64;
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = v16;
      v14 = -64;
    }
  }

LABEL_10:
  *(a1 + 24) = v14;
}

uint64_t sub_1B1CFA18C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 10);
  v5 = *(v1 + 44);
  v6 = *(v1 + 48);
  v7 = *(v1 + 49);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v11 = 0;
    v10 = 0x20000;
    goto LABEL_13;
  }

  v9 = result;
  v10 = 65537;
  swift_unknownObjectRetain();
  if (([v9 isExternal] & 1) == 0)
  {
    if (v5 == 2 && v3 == 1)
    {
      result = swift_unknownObjectRelease();
      v11 = 0;
      v10 = 66307;
      goto LABEL_13;
    }

    if (v6)
    {
      v10 = 65793;
    }

    else
    {
      v10 = 65537;
    }
  }

  v14 = *v1;
  v15 = v1[1];
  v16 = *(v1 + 45);
  v17 = *(v1 + 47);
  v12 = ASAuthorizationUIContext.loginChoicesToShow.getter();
  if (v12 >> 62)
  {
    v13 = sub_1B1D7C1FC();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = swift_unknownObjectRelease();
  v11 = v13 > 1;
LABEL_13:
  *a1 = v11;
  *(a1 + 8) = v10;
  *(a1 + 10) = BYTE2(v10);
  return result;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV15PasswordMessageO2eeoiySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v36 = *(a1 + 32);
  v37 = v2;
  v4 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v4;
  v5 = a2[3];
  v6 = a2[1];
  v41 = a2[2];
  v42 = v5;
  v7 = a2[1];
  v39 = *a2;
  v40 = v7;
  v8 = *(a1 + 48);
  v44[2] = v36;
  v44[3] = v8;
  v44[0] = v35[0];
  v44[1] = v3;
  v46 = v39;
  v49 = a2[3];
  v48 = v41;
  v38 = *(a1 + 64);
  v43 = *(a2 + 8);
  v9 = *(a2 + 8);
  v45 = *(a1 + 64);
  v50 = v9;
  v47 = v6;
  v11 = *(&v4 + 1);
  v10 = v36;
  v12 = BYTE7(v4) >> 5;
  v14 = *(&v36 + 1);
  v13 = v37;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        if (((BYTE7(v40) << 48) & 0xE0000000000000) != 0x60000000000000)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      if (((BYTE7(v40) << 48) & 0xE0000000000000) == 0x80000000000000)
      {
LABEL_29:
        v22 = *(&v40 + 1);
        v24 = v41;
        v23 = v42;
        v32 = v35[0];
        v33 = v4 & 1;
        v30 = v39;
        v31 = v40 & 1;
        sub_1B1CFA830(&v39, v34);
        sub_1B1CFA830(v35, v34);
        if ((_s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v32, &v30) & 1) == 0 || (v11 != v22 || v10 != v24) && (sub_1B1D7C50C() & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v14 != *(&v24 + 1) || v13 != v23)
        {
          v25 = sub_1B1D7C50C();
          sub_1B1CFA868(v44);
          return v25 & 1;
        }

        goto LABEL_35;
      }

LABEL_37:
      sub_1B1CFA830(&v39, v34);
      sub_1B1CFA830(v35, v34);
      goto LABEL_38;
    }

    if (((BYTE7(v40) << 48) & 0xE0000000000000) != 0x40000000000000)
    {
      goto LABEL_37;
    }

    v20 = *(&v40 + 1);
    v21 = v41;
    v19 = v42;
    v32 = v35[0];
    v33 = v4 & 1;
    v30 = v39;
    v31 = v40 & 1;
    sub_1B1CFA830(&v39, v34);
    sub_1B1CFA830(v35, v34);
    if ((_s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v32, &v30) & 1) == 0 || (v11 != v20 || v10 != v21) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (v13)
    {
      if (!v19)
      {
LABEL_38:
        sub_1B1CFA868(v44);
LABEL_39:
        v25 = 0;
        return v25 & 1;
      }

      if (v14 != *(&v21 + 1) || v13 != v19)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    }

LABEL_49:

    sub_1B1CFA868(v44);
    if (v19)
    {

      goto LABEL_39;
    }

    goto LABEL_51;
  }

  if (v12)
  {
    if (((BYTE7(v40) << 48) & 0xE0000000000000) == 0x20000000000000)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (BYTE7(v40) >> 5)
  {
    goto LABEL_37;
  }

  v15 = v38;
  v29 = *(&v37 + 1);
  v16 = *(&v40 + 1);
  v18 = v41;
  v17 = v42;
  v19 = v43;
  v28 = *(&v42 + 1);
  v32 = v35[0];
  v33 = v4 & 1;
  v30 = v39;
  v31 = v40 & 1;
  sub_1B1CFA830(&v39, v34);
  sub_1B1CFA830(v35, v34);
  if ((_s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v32, &v30) & 1) == 0 || (v11 != v16 || v10 != v18) && (sub_1B1D7C50C() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v13)
  {
    if (!v17 || (v14 != *(&v18 + 1) || v13 != v17) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v17)
  {
    goto LABEL_38;
  }

  if (!v15)
  {
    goto LABEL_49;
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  if (v29 != v28 || v15 != v19)
  {
LABEL_47:
    v27 = sub_1B1D7C50C();
    sub_1B1CFA868(v44);
    if ((v27 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v25 = 1;
    return v25 & 1;
  }

LABEL_35:
  sub_1B1CFA868(v44);
  v25 = 1;
  return v25 & 1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B1CFA744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B1CFA794(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1CFA868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775188, &unk_1B1D866C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _ASCredentialUpdateError.failureReason.getter()
{
  result = 0xD000000000000015;
  v2 = v0[1];
  if (!v2)
  {
    return 0xD00000000000002BLL;
  }

  if (v2 == 1)
  {
    return 0xD000000000000020;
  }

  if (v2 != 2)
  {
    v3 = *v0;
    sub_1B1D7C27C();
    MEMORY[0x1B273AEE0](0xD000000000000038, 0x80000001B1D9BA60);
    MEMORY[0x1B273AEE0](v3, v2);
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices24_ASCredentialUpdateErrorO(uint64_t a1)
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

uint64_t sub_1B1CFA9FC(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1CFAA60(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B1CFAAB0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1B1CFAAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[39] = a6;
  v7[40] = v6;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[34] = a1;
  v8 = sub_1B1D7C08C();
  v7[41] = v8;
  v9 = *(v8 - 8);
  v7[42] = v9;
  v10 = *(v9 + 64) + 15;
  v7[43] = swift_task_alloc();
  v11 = sub_1B1D7B61C();
  v7[44] = v11;
  v12 = *(v11 - 8);
  v7[45] = v12;
  v13 = *(v12 + 64) + 15;
  v7[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1CFAC18, 0, 0);
}

uint64_t sub_1B1CFAC18()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options);
  *(v0 + 480) = v5;
  if (sub_1B1D03B20(v3, v4, v2, v5))
  {
    v6 = *(v0 + 320);
    *(v0 + 376) = sub_1B1CFBEDC();
    *(v0 + 384) = v7;
    if (v7)
    {
      v8 = *(*(v0 + 320) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore);
      *(v0 + 392) = v8;
      v9 = *(MEMORY[0x1E69C87D8] + 4);
      v8;
      v10 = swift_task_alloc();
      *(v0 + 400) = v10;
      *v10 = v0;
      v10[1] = sub_1B1CFAF40;
      v11 = *(v0 + 368);
      v12 = *(v0 + 304);
      v13 = *(v0 + 312);
      v14 = *(v0 + 288);
      v15 = *(v0 + 296);
      v16 = *(v0 + 272);
      v17 = *(v0 + 280);

      return MEMORY[0x1EEE33128](v11, v12, v13, v16, v17, v14, v15);
    }

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v28 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v28, qword_1EB782548);
    v29 = sub_1B1D7BD6C();
    v30 = sub_1B1D7C00C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B1C8D000, v29, v30, "Could not retrieve calling app name", v31, 2u);
      MEMORY[0x1B273C4C0](v31, -1, -1);
    }

    v32 = *(v0 + 368);
    v33 = *(v0 + 344);

    v27 = *(v0 + 8);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v18, qword_1EB782548);
    v19 = sub_1B1D7BD6C();
    v20 = sub_1B1D7C00C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1C8D000, v19, v20, "Connected process is not entitled to make this call.", v21, 2u);
      MEMORY[0x1B273C4C0](v21, -1, -1);
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 272);
    v25 = *(v0 + 280);

    sub_1B1CE955C();
    swift_allocError();
    *v26 = v24;
    v26[1] = v25;
    swift_willThrow();

    v27 = *(v0 + 8);
  }

  return v27();
}

uint64_t sub_1B1CFAF40()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  v2[51] = v0;

  v5 = v2[49];
  if (v0)
  {
    v6 = v2[48];

    v7 = sub_1B1CFBAAC;
  }

  else
  {

    v7 = sub_1B1CFB084;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1CFB084()
{
  if (*(v0 + 480) == 1)
  {
    v1 = *(v0 + 376);
    v2 = *(v0 + 384);
    v3 = *(v0 + 368);
    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    v6 = *(v0 + 304);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = *(v4 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_passwordsNotificationManager);
    *(v0 + 416) = v9;
    swift_unknownObjectRetain();
    v10 = sub_1B1D7BE1C();
    *(v0 + 424) = v10;

    v11 = sub_1B1D7BE1C();
    *(v0 + 432) = v11;
    v12 = sub_1B1D7BE1C();
    *(v0 + 440) = v12;
    v13 = sub_1B1D7B5AC();
    v15 = v14;
    v16 = sub_1B1D7B4DC();
    *(v0 + 448) = v16;
    sub_1B1CDEFDC(v13, v15);
    v17 = *(v4 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_isClientEntitledWebBrowser);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B1CFB530;
    v18 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1B1CFC258;
    *(v0 + 232) = &block_descriptor_50;
    *(v0 + 240) = v18;
    [v9 schedulePasskeyUpdatedNotificationForApp:v10 relyingPartyID:v11 userName:v12 credentialID:v16 shouldUseRelyingPartyForServiceName:v17 completionHandler:?];
    v19 = v0 + 80;
LABEL_3:

    return MEMORY[0x1EEE6DEC8](v19);
  }

  v20 = *(v0 + 384);
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

  v22 = *(v0 + 336);
  v21 = *(v0 + 344);
  v23 = *(v0 + 328);
  v25 = *(v0 + 272);
  v24 = *(v0 + 280);
  sub_1B1D7C06C();
  v26 = sub_1B1D7C03C();
  v28 = v27;
  (*(v22 + 8))(v21, v23);
  if (v26 == v25 && v28 == v24)
  {
  }

  else
  {
    v30 = *(v0 + 272);
    v31 = *(v0 + 280);
    v32 = sub_1B1D7C50C();

    if ((v32 & 1) == 0)
    {
      v33 = *(v0 + 312);
      v34 = *(v0 + 296);
      v35 = *(v0 + 304);
      v36 = *(v0 + 280);
      v37 = *(v0 + 288);
      v38 = *(v0 + 272);
      v39 = *(*(v0 + 320) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
      v40 = sub_1B1D7BE1C();
      *(v0 + 456) = v40;
      v41 = sub_1B1D7B4DC();
      *(v0 + 464) = v41;
      v42 = sub_1B1D7BE1C();
      *(v0 + 472) = v42;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1B1CFB948;
      v43 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1B1CFC258;
      *(v0 + 168) = &block_descriptor_47;
      *(v0 + 176) = v43;
      [v39 reportPublicKeyCredentialUpdateWithRelyingParty:v40 userHandle:v41 newName:v42 completionHandler:v0 + 144];
      v19 = v0 + 16;
      goto LABEL_3;
    }
  }

  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v44 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v44, qword_1EB782548);
  v45 = sub_1B1D7BD6C();
  v46 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1B1C8D000, v45, v46, "Updated Apple Account passkey.", v47, 2u);
    MEMORY[0x1B273C4C0](v47, -1, -1);
  }

  v48 = *(v0 + 368);
  v49 = *(v0 + 344);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1B1CFB530()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFB610, 0, 0);
}

uint64_t sub_1B1CFB610()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  (*(v0[45] + 8))(v0[46], v0[44]);
  swift_unknownObjectRelease();

  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[34];
  v9 = v0[35];
  sub_1B1D7C06C();
  v11 = sub_1B1D7C03C();
  v13 = v12;
  (*(v7 + 8))(v6, v8);
  if (v11 == v10 && v13 == v9)
  {

LABEL_5:
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v17, qword_1EB782548);
    v18 = sub_1B1D7BD6C();
    v19 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B1C8D000, v18, v19, "Updated Apple Account passkey.", v20, 2u);
      MEMORY[0x1B273C4C0](v20, -1, -1);
    }

    v21 = v0[46];
    v22 = v0[43];

    v23 = v0[1];

    return v23();
  }

  v14 = v0[34];
  v15 = v0[35];
  v16 = sub_1B1D7C50C();

  if (v16)
  {
    goto LABEL_5;
  }

  v25 = v0[39];
  v26 = v0[37];
  v27 = v0[38];
  v28 = v0[35];
  v29 = v0[36];
  v30 = v0[34];
  v31 = *(v0[40] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v32 = sub_1B1D7BE1C();
  v0[57] = v32;
  v33 = sub_1B1D7B4DC();
  v0[58] = v33;
  v34 = sub_1B1D7BE1C();
  v0[59] = v34;
  v0[2] = v0;
  v0[3] = sub_1B1CFB948;
  v35 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B1CFC258;
  v0[21] = &block_descriptor_47;
  v0[22] = v35;
  [v31 reportPublicKeyCredentialUpdateWithRelyingParty:v32 userHandle:v33 newName:v34 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CFB948()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFBA28, 0, 0);
}

uint64_t sub_1B1CFBA28()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);

  v3 = *(v0 + 368);
  v4 = *(v0 + 344);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B1CFBAAC()
{
  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v2, qword_1EB782548);
  v3 = v1;
  v4 = sub_1B1D7BD6C();
  v5 = sub_1B1D7BFEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[51];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B1C8D000, v4, v5, "Did not update any passkey in keychain. Error: %@", v8, 0xCu);
    sub_1B1CEE550(v9);
    MEMORY[0x1B273C4C0](v9, -1, -1);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[42];
  v12 = v0[43];
  v14 = v0[41];
  v16 = v0[34];
  v15 = v0[35];
  sub_1B1D7C06C();
  v17 = sub_1B1D7C03C();
  v19 = v18;
  (*(v13 + 8))(v12, v14);
  if (v17 == v16 && v19 == v15)
  {

LABEL_10:
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EB782548);
    v23 = sub_1B1D7BD6C();
    v24 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B1C8D000, v23, v24, "Updated Apple Account passkey.", v25, 2u);
      MEMORY[0x1B273C4C0](v25, -1, -1);
    }

    v26 = v0[46];
    v27 = v0[43];

    v28 = v0[1];

    return v28();
  }

  v20 = v0[34];
  v21 = v0[35];
  v22 = sub_1B1D7C50C();

  if (v22)
  {
    goto LABEL_10;
  }

  v30 = v0[39];
  v31 = v0[37];
  v32 = v0[38];
  v33 = v0[35];
  v34 = v0[36];
  v35 = v0[34];
  v36 = *(v0[40] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v37 = sub_1B1D7BE1C();
  v0[57] = v37;
  v38 = sub_1B1D7B4DC();
  v0[58] = v38;
  v39 = sub_1B1D7BE1C();
  v0[59] = v39;
  v0[2] = v0;
  v0[3] = sub_1B1CFB948;
  v40 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B1CFC258;
  v0[21] = &block_descriptor_47;
  v0[22] = v40;
  [v36 reportPublicKeyCredentialUpdateWithRelyingParty:v37 userHandle:v38 newName:v39 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CFBEDC()
{
  if (*(v0 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_test_overrideCallingAppName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_test_overrideCallingAppName);
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection) auditToken];
    v2 = WBSApplicationIdentifierFromAuditToken();
    if (v2)
    {
      v3 = v2;
      sub_1B1D7BE4C();

      sub_1B1CED540(0, &qword_1EB7751E8, 0x1E6963620);

      v8 = sub_1B1D123E0();

      v9 = [v8 localizedName];
      v1 = sub_1B1D7BE4C();
    }

    else
    {
      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v4 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v4, qword_1EB782548);
      v5 = sub_1B1D7BD6C();
      v6 = sub_1B1D7C00C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1B1C8D000, v5, v6, "Could not retrieve application identifier for calling process.", v7, 2u);
        MEMORY[0x1B273C4C0](v7, -1, -1);
      }

      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B1CFC258(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1B1CFC430(int a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = sub_1B1D7B4EC();
  v16 = v15;

  v5[5] = v14;
  v5[6] = v16;
  v17 = sub_1B1D7BE4C();
  v19 = v18;

  v5[7] = v19;
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_1B1CFC56C;

  return sub_1B1CFAAF0(v9, v11, v14, v16, v17, v19);
}

uint64_t sub_1B1CFC56C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *(*v1 + 16);
  v11 = *v1;

  sub_1B1CDEFDC(v8, v7);

  v12 = *(v3 + 24);
  if (v2)
  {
    v13 = sub_1B1D7B43C();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1B1CFC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_1B1D7C08C();
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = sub_1B1D7B5BC();
  v5[26] = v9;
  v10 = *(v9 - 8);
  v5[27] = v10;
  v11 = *(v10 + 64) + 15;
  v5[28] = swift_task_alloc();
  v12 = sub_1B1D7B5DC();
  v5[29] = v12;
  v13 = *(v12 - 8);
  v5[30] = v13;
  v14 = *(v13 + 64) + 15;
  v5[31] = swift_task_alloc();
  v15 = sub_1B1D7B49C();
  v5[32] = v15;
  v16 = *(v15 - 8);
  v5[33] = v16;
  v17 = *(v16 + 64) + 15;
  v5[34] = swift_task_alloc();
  v18 = sub_1B1D7B61C();
  v5[35] = v18;
  v19 = *(v18 - 8);
  v5[36] = v19;
  v20 = *(v19 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v21 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B1CFC9F4, 0, 0);
}

uint64_t sub_1B1CFC9F4()
{
  v25 = *MEMORY[0x1E69E9840];
  if (sub_1B1D03B20(v0[18], v0[19], *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection), *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options)))
  {
    v1 = *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore);
    v0[41] = v1;
    v2 = *(MEMORY[0x1E69C87F0] + 4);
    v1;
    v3 = swift_task_alloc();
    v0[42] = v3;
    *v3 = v0;
    v3[1] = sub_1B1CFCCC8;
    v5 = v0[18];
    v4 = v0[19];
    v6 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE33140](v5, v4);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v7, qword_1EB782548);
    v8 = sub_1B1D7BD6C();
    v9 = sub_1B1D7C00C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B1C8D000, v8, v9, "Connected process is not entitled to make this call.", v10, 2u);
      MEMORY[0x1B273C4C0](v10, -1, -1);
    }

    v12 = v0[39];
    v11 = v0[40];
    v14 = v0[37];
    v13 = v0[38];
    v15 = v0[34];
    v22 = v0[31];
    v23 = v0[28];
    v24 = v0[25];
    v17 = v0[18];
    v16 = v0[19];

    sub_1B1CE955C();
    swift_allocError();
    *v18 = v17;
    v18[1] = v16;
    swift_willThrow();

    v19 = v0[1];
    v20 = *MEMORY[0x1E69E9840];

    return v19();
  }
}

uint64_t sub_1B1CFCCC8(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 344) = a1;

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B1CFCE10, 0, 0);
}

uint64_t sub_1B1CFCE10()
{
  v137 = v0;
  v136 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 344);
  v131 = *(v1 + 16);
  if (v131)
  {
    v2 = 0;
    v117 = (v0 + 422);
    v3 = *(v0 + 288);
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v7 = v4 != 0xC000000000000000 || v5 != 0;
    v128 = v7;
    v8 = v4 >> 62;
    v127 = BYTE6(v4);
    v133 = (v3 + 32);
    v124 = *(v0 + 160);
    v9 = __OFSUB__(HIDWORD(v5), v5);
    v123 = v9;
    v122 = HIDWORD(v5) - v5;
    v10 = MEMORY[0x1E69E7CC0];
    v129 = *(v0 + 344);
    v130 = v4 >> 62;
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v12 = *(v3 + 72);
      (*(v3 + 16))(*(v0 + 320), *(v0 + 344) + v11 + v12 * v2, *(v0 + 280));
      v13 = sub_1B1D7B5AC();
      v15 = v14 >> 62;
      if (v14 >> 62 == 3)
      {
        break;
      }

      if (v15 > 1)
      {
        if (v15 != 2)
        {
          goto LABEL_39;
        }

        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (v22)
        {
          goto LABEL_101;
        }

        if (v8 <= 1)
        {
          goto LABEL_36;
        }
      }

      else if (v15)
      {
        LODWORD(v19) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_102;
        }

        v19 = v19;
        if (v8 <= 1)
        {
LABEL_36:
          v23 = v127;
          if (v8)
          {
            v23 = v122;
            if (v123)
            {
              goto LABEL_100;
            }
          }

          goto LABEL_42;
        }
      }

      else
      {
        v19 = BYTE6(v14);
        if (v8 <= 1)
        {
          goto LABEL_36;
        }
      }

LABEL_40:
      if (v8 != 2)
      {
        if (!v19)
        {
          goto LABEL_47;
        }

LABEL_13:
        sub_1B1CDEFDC(v13, v14);
        goto LABEL_14;
      }

      v25 = *(v124 + 16);
      v24 = *(v124 + 24);
      v22 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v22)
      {
        goto LABEL_99;
      }

LABEL_42:
      if (v19 != v23)
      {
        goto LABEL_13;
      }

      if (v19 < 1)
      {
        goto LABEL_47;
      }

      if (v15 <= 1)
      {
        if (v15)
        {
          v43 = v13;
          if (v13 >> 32 < v13)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
          }

          v121 = v13;
          v126 = v14;
          v44 = sub_1B1D7B34C();
          if (v44)
          {
            v45 = sub_1B1D7B36C();
            if (__OFSUB__(v43, v45))
            {
              goto LABEL_107;
            }

            v44 += v43 - v45;
          }

          v46 = *(v0 + 168);
          v119 = *(v0 + 160);
          sub_1B1D7B35C();
          sub_1B1D036A8(v44, v119, v46, v135);
          v1 = v129;
          v30 = v121;
          v31 = v126;
        }

        else
        {
          v26 = *(v0 + 160);
          v27 = *(v0 + 168);
          *(v0 + 408) = v13;
          v28 = v13;
          *(v0 + 416) = v14;
          *(v0 + 418) = BYTE2(v14);
          v29 = v14;
          *(v0 + 419) = BYTE3(v14);
          *(v0 + 420) = BYTE4(v14);
          *(v0 + 421) = BYTE5(v14);
          sub_1B1D036A8(v0 + 408, v26, v27, v135);
          v30 = v28;
          v31 = v29;
        }

        goto LABEL_68;
      }

      if (v15 != 2)
      {
        v47 = v13;
        v48 = v14;
        v49 = *(v0 + 160);
        v50 = *(v0 + 168);
        *v117 = 0;
        *(v0 + 428) = 0;
        sub_1B1D036A8(v117, v49, v50, v135);
        v30 = v47;
        v31 = v48;
LABEL_68:
        sub_1B1CDEFDC(v30, v31);
        v42 = v135[0];
        goto LABEL_69;
      }

      v37 = *(v13 + 16);
      v38 = *(v13 + 24);
      v120 = v13;
      v125 = v14;
      v39 = sub_1B1D7B34C();
      if (v39)
      {
        v40 = sub_1B1D7B36C();
        if (__OFSUB__(v37, v40))
        {
          goto LABEL_106;
        }

        v39 += v37 - v40;
      }

      if (__OFSUB__(v38, v37))
      {
        goto LABEL_105;
      }

      v41 = *(v0 + 160);
      v118 = *(v0 + 168);
      sub_1B1D7B35C();
      sub_1B1D036A8(v39, v41, v118, v135);
      sub_1B1CDEFDC(v120, v125);
      v42 = v135[0];
      v1 = v129;
LABEL_69:
      v8 = v130;
      if (v42)
      {
        goto LABEL_48;
      }

LABEL_14:
      (*(v3 + 8))(*(v0 + 320), *(v0 + 280));
LABEL_15:
      if (v131 == ++v2)
      {
        v51 = *(v0 + 344);
        goto LABEL_73;
      }
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14 == 0xC000000000000000;
    }

    v18 = !v16 || v8 < 3;
    if (((v18 | v128) & 1) == 0)
    {
      v13 = 0;
      v14 = 0xC000000000000000;
LABEL_47:
      sub_1B1CDEFDC(v13, v14);
LABEL_48:
      v32 = *v133;
      (*v133)(*(v0 + 312), *(v0 + 320), *(v0 + 280));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1D194B4(0, *(v10 + 16) + 1, 1);
      }

      v34 = *(v10 + 16);
      v33 = *(v10 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B1D194B4(v33 > 1, v34 + 1, 1);
      }

      v35 = *(v0 + 312);
      v36 = *(v0 + 280);
      *(v10 + 16) = v34 + 1;
      v32(v10 + v11 + v34 * v12, v35, v36);
      v1 = v129;
      v8 = v130;
      goto LABEL_15;
    }

LABEL_39:
    v19 = 0;
    if (v8 <= 1)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_73:

  if (qword_1EB7749C0 != -1)
  {
LABEL_103:
    swift_once();
  }

  v52 = sub_1B1D7BD8C();
  *(v0 + 352) = __swift_project_value_buffer(v52, qword_1EB782548);

  v53 = sub_1B1D7BD6C();
  v54 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = *(v10 + 16);

    _os_log_impl(&dword_1B1C8D000, v53, v54, "Found %ld passkey with matching credentialID in keychain.", v55, 0xCu);
    MEMORY[0x1B273C4C0](v55, -1, -1);
  }

  else
  {
  }

  v56 = *(v0 + 144);
  v57 = *(v0 + 152);
  v58 = sub_1B1D7BE1C();
  v59 = [v58 safari_bestURLForUserTypedString];

  if (!v59)
  {
    goto LABEL_84;
  }

  v60 = *(v0 + 272);
  sub_1B1D7B47C();

  if (!*(v10 + 16))
  {
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
LABEL_84:

    goto LABEL_85;
  }

  v62 = *(v0 + 296);
  v61 = *(v0 + 304);
  v63 = *(v0 + 280);
  v64 = *(v0 + 288);
  v66 = *(v0 + 240);
  v65 = *(v0 + 248);
  v67 = *(v0 + 224);
  v134 = *(v0 + 232);
  v68 = *(v0 + 216);
  v132 = *(v0 + 208);
  (*(v64 + 16))(v62, v10 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v63);

  (*(v64 + 32))(v61, v62, v63);
  sub_1B1D7B60C();
  (*(v68 + 104))(v67, *MEMORY[0x1E69C8770], v132);
  v69 = sub_1B1D7B5FC();
  v71 = v70;
  *(v0 + 360) = v70;
  (*(v68 + 8))(v67, v132);
  (*(v66 + 8))(v65, v134);
  if (v71)
  {
    v72 = sub_1B1D7B5AC();
    v74 = v73;
    *(v0 + 368) = v72;
    *(v0 + 376) = v73;
    v75 = swift_task_alloc();
    *(v0 + 384) = v75;
    *v75 = v0;
    v75[1] = sub_1B1CFD988;
    v76 = *(v0 + 272);
    v77 = *(v0 + 176);
    v78 = *MEMORY[0x1E69E9840];

    return sub_1B1CFE06C(v76, v69, v71, v72, v74);
  }

  v115 = *(v0 + 264);
  v114 = *(v0 + 272);
  v116 = *(v0 + 256);
  (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
  (*(v115 + 8))(v114, v116);
LABEL_85:
  v81 = *(v0 + 192);
  v80 = *(v0 + 200);
  v82 = *(v0 + 184);
  v84 = *(v0 + 144);
  v83 = *(v0 + 152);
  sub_1B1D7C06C();
  v85 = sub_1B1D7C03C();
  v87 = v86;
  (*(v81 + 8))(v80, v82);
  if (v85 == v84 && v87 == v83)
  {

LABEL_89:
    v91 = *(v0 + 352);
    v92 = sub_1B1D7BD6C();
    v93 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1B1C8D000, v92, v93, "Removed Apple Account passkey.", v94, 2u);
      MEMORY[0x1B273C4C0](v94, -1, -1);
    }

    v96 = *(v0 + 312);
    v95 = *(v0 + 320);
    v98 = *(v0 + 296);
    v97 = *(v0 + 304);
    v99 = *(v0 + 272);
    v100 = *(v0 + 248);
    v101 = *(v0 + 224);
    v102 = *(v0 + 200);

    v103 = *(v0 + 8);
    v104 = *MEMORY[0x1E69E9840];

    return v103();
  }

  v88 = *(v0 + 144);
  v89 = *(v0 + 152);
  v90 = sub_1B1D7C50C();

  if (v90)
  {
    goto LABEL_89;
  }

  v105 = *(v0 + 168);
  v106 = *(v0 + 152);
  v107 = *(v0 + 160);
  v108 = *(v0 + 144);
  v109 = *(*(v0 + 176) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v110 = sub_1B1D7BE1C();
  *(v0 + 392) = v110;
  v111 = sub_1B1D7B4DC();
  *(v0 + 400) = v111;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B1CFDE60;
  v112 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1CFC258;
  *(v0 + 104) = &block_descriptor_40;
  *(v0 + 112) = v112;
  [v109 reportUnknownPublicKeyCredentialWithRelyingParty:v110 credentialID:v111 completionHandler:v0 + 80];
  v113 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1CFD988()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v4 = *(*v0 + 360);
  v8 = *v0;

  sub_1B1CDEFDC(v3, v2);
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B1CFDB08, 0, 0);
}

uint64_t sub_1B1CFDB08()
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  (*(v0[36] + 8))(v0[38], v0[35]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v0[18];
  v7 = v0[19];
  sub_1B1D7C06C();
  v9 = sub_1B1D7C03C();
  v11 = v10;
  (*(v5 + 8))(v4, v6);
  if (v9 == v8 && v11 == v7)
  {

LABEL_5:
    v15 = v0[44];
    v16 = sub_1B1D7BD6C();
    v17 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B1C8D000, v16, v17, "Removed Apple Account passkey.", v18, 2u);
      MEMORY[0x1B273C4C0](v18, -1, -1);
    }

    v20 = v0[39];
    v19 = v0[40];
    v22 = v0[37];
    v21 = v0[38];
    v23 = v0[34];
    v24 = v0[31];
    v25 = v0[28];
    v26 = v0[25];

    v27 = v0[1];
    v28 = *MEMORY[0x1E69E9840];

    return v27();
  }

  v12 = v0[18];
  v13 = v0[19];
  v14 = sub_1B1D7C50C();

  if (v14)
  {
    goto LABEL_5;
  }

  v30 = v0[21];
  v31 = v0[19];
  v32 = v0[20];
  v33 = v0[18];
  v34 = *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v35 = sub_1B1D7BE1C();
  v0[49] = v35;
  v36 = sub_1B1D7B4DC();
  v0[50] = v36;
  v0[2] = v0;
  v0[3] = sub_1B1CFDE60;
  v37 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B1CFC258;
  v0[13] = &block_descriptor_40;
  v0[14] = v37;
  [v34 reportUnknownPublicKeyCredentialWithRelyingParty:v35 credentialID:v36 completionHandler:v0 + 10];
  v38 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CFDE60()
{
  v1 = *v0;
  v5 = *v0;
  v2 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B1CFDF6C, 0, 0);
}

uint64_t sub_1B1CFDF6C()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 392);

  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 224);
  v9 = *(v0 + 200);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10();
}

uint64_t sub_1B1CFE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[56] = a5;
  v6[57] = v5;
  v6[54] = a3;
  v6[55] = a4;
  v6[52] = a1;
  v6[53] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775220, &unk_1B1D86850) - 8) + 64) + 15;
  v6[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1CFE110, 0, 0);
}

uint64_t sub_1B1CFE110()
{
  v1 = v0[57];
  v0[59] = sub_1B1CFBEDC();
  v0[60] = v2;
  if (v2)
  {
    v3 = v0[58];
    v4 = v0[52];
    v5 = sub_1B1D7B49C();
    v6 = *(v5 - 8);
    (*(v6 + 16))(v3, v4, v5);
    (*(v6 + 56))(v3, 0, 1, v5);
    v7 = [objc_opt_self() queryThatMatchesEverything];
    v8 = 0;
    if ((*(v6 + 48))(v3, 1, v5) != 1)
    {
      v9 = v0[58];
      v8 = sub_1B1D7B46C();
      (*(v6 + 8))(v9, v5);
    }

    v10 = v0[56];
    v11 = v0[57];
    v12 = v0[55];
    v13 = objc_allocWithZone(MEMORY[0x1E69C8A30]);
    v14 = sub_1B1D7B4DC();
    v15 = [v13 initWithURL:v8 options:16 userNameQuery:v7 passkeyCredentialIdentifier:v14 associatedDomainsManager:0 webFrameIdentifier:0];
    v0[61] = v15;

    v16 = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
    v0[62] = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
    v17 = *(v11 + v16);
    v0[63] = v17;
    v0[2] = v0;
    v0[7] = v0 + 50;
    v0[3] = sub_1B1CFE4DC;
    v18 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751C8, &qword_1B1D86830);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1B1D030EC;
    v0[29] = &block_descriptor_30;
    v0[30] = v18;
    [v17 savedAccountsMatchingCriteria:v15 withCompletionHandler:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v19, qword_1EB782548);
    v20 = sub_1B1D7BD6C();
    v21 = sub_1B1D7C00C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1C8D000, v20, v21, "Could not retrieve calling app name", v22, 2u);
      MEMORY[0x1B273C4C0](v22, -1, -1);
    }

    v23 = v0[58];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1B1CFE4DC()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFE5BC, 0, 0);
}

uint64_t sub_1B1CFE5BC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v3 = *(v0 + 400);
  *(v0 + 512) = v3;

  if (!v3)
  {
    v17 = *(v0 + 480);

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v18, qword_1EB782548);
    v19 = sub_1B1D7BD6C();
    v20 = sub_1B1D7BFEC();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 488);
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B1C8D000, v19, v20, "No savedAccount found matching the username and credentialID.", v23, 2u);
      MEMORY[0x1B273C4C0](v23, -1, -1);
    }

LABEL_30:
    v32 = *(v0 + 464);

    v33 = *(v0 + 8);

    return v33();
  }

  v4 = [v3 exactMatches];
  sub_1B1CED540(0, &qword_1EB7751D8, 0x1E69C8A28);
  v5 = sub_1B1D7BEEC();
  *(v0 + 520) = v5;

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 528) = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

LABEL_27:
  v29 = sub_1B1D7C1FC();
  *(v0 + 528) = v29;
  if (!v29)
  {
LABEL_28:
    v30 = *(v0 + 480);
    v31 = *(v0 + 488);

LABEL_29:

    goto LABEL_30;
  }

LABEL_4:
  v7 = 0;
  while (1)
  {
    v9 = *(v0 + 520);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B273B2E0](v7);
    }

    else
    {
      if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v9 + 8 * v7 + 32);
    }

    v11 = v10;
    *(v0 + 536) = v10;
    v12 = v7 + 1;
    *(v0 + 544) = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = [v10 savedAccount];
    *(v0 + 552) = v13;
    if ([v13 canBeDeletedByServiceViaCredentialUpdater])
    {
      break;
    }

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v14, qword_1EB782548);
    v3 = sub_1B1D7BD6C();
    v15 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v3, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B1C8D000, v3, v15, "Passkey cannot be deleted by service.", v16, 2u);
      MEMORY[0x1B273C4C0](v16, -1, -1);
    }

    v8 = *(v0 + 528);

    ++v7;
    if (v12 == v8)
    {
      v26 = *(v0 + 520);

      v27 = *(v0 + 512);
      v28 = *(v0 + 480);

      goto LABEL_29;
    }
  }

  v24 = *(*(v0 + 456) + *(v0 + 496));
  *(v0 + 560) = v24;
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 408;
  *(v0 + 152) = sub_1B1CFEA3C;
  v25 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1B1D030EC;
  *(v0 + 360) = &block_descriptor_36;
  *(v0 + 368) = v25;
  [v24 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1B1CFEA3C()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFEB1C, 0, 0);
}

uint64_t sub_1B1CFEB1C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);

  if (v2 != v4)
  {
    v28 = *(v0 + 544);
    v5 = (v0 + 520);
    while (1)
    {
      v30 = *v5;
      if ((*v5 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1B273B2E0](v28);
      }

      else
      {
        if (v28 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v31 = *(v30 + 8 * v28 + 32);
      }

      v32 = v31;
      *(v0 + 536) = v31;
      v33 = v28 + 1;
      *(v0 + 544) = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v34 = [v31 savedAccount];
      *(v0 + 552) = v34;
      if ([v34 canBeDeletedByServiceViaCredentialUpdater])
      {
        v44 = *(*(v0 + 456) + *(v0 + 496));
        *(v0 + 560) = v44;
        *(v0 + 144) = v0;
        *(v0 + 184) = v0 + 408;
        *(v0 + 152) = sub_1B1CFEA3C;
        v45 = swift_continuation_init();
        *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
        *(v0 + 336) = MEMORY[0x1E69E9820];
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_1B1D030EC;
        *(v0 + 360) = &block_descriptor_36;
        *(v0 + 368) = v45;
        [v44 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
        v27 = v0 + 144;
        goto LABEL_26;
      }

      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v35 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v35, qword_1EB782548);
      v36 = sub_1B1D7BD6C();
      v37 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1B1C8D000, v36, v37, "Passkey cannot be deleted by service.", v38, 2u);
        MEMORY[0x1B273C4C0](v38, -1, -1);
      }

      v29 = *(v0 + 528);

      ++v28;
      if (v33 == v29)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = (v0 + 520);
LABEL_3:
  v6 = *v5;

  if (qword_1EB7749C0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v7 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v7, qword_1EB782548);
  v8 = sub_1B1D7BD6C();
  v9 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B1C8D000, v8, v9, "Successfully moved passkey to Recently Deleted.", v10, 2u);
    MEMORY[0x1B273C4C0](v10, -1, -1);
  }

  v11 = *(v0 + 416);

  sub_1B1D7B48C();
  if (!v12)
  {
    v13 = *(v0 + 416);
    sub_1B1D7B45C();
  }

  v14 = *(v0 + 456);
  if (*(v14 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options) == 1)
  {
    v15 = *(v0 + 472);
    v16 = *(v0 + 480);
    v17 = *(v0 + 440);
    v46 = *(v0 + 448);
    v18 = *(v0 + 424);
    v19 = *(v0 + 432);
    v20 = *(v14 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_passwordsNotificationManager);
    *(v0 + 568) = v20;
    swift_unknownObjectRetain();
    v21 = sub_1B1D7BE1C();
    *(v0 + 576) = v21;

    v22 = sub_1B1D7BE1C();
    *(v0 + 584) = v22;

    v23 = sub_1B1D7BE1C();
    *(v0 + 592) = v23;
    v24 = sub_1B1D7B4DC();
    *(v0 + 600) = v24;
    v25 = *(v14 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_isClientEntitledWebBrowser);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B1CFF0C0;
    v26 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1B1CFC258;
    *(v0 + 296) = &block_descriptor_33;
    *(v0 + 304) = v26;
    [v20 schedulePasskeyMovedToRecentlyDeletedNotificationForApp:v21 relyingPartyID:v22 userName:v23 credentialID:v24 shouldUseRelyingPartyForServiceName:v25 completionHandler:?];
    v27 = v0 + 80;
LABEL_26:

    return MEMORY[0x1EEE6DEC8](v27);
  }

  else
  {
    v39 = *(v0 + 512);
    v40 = *(v0 + 480);

    v41 = *(v0 + 464);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1B1CFF0C0()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFF1A0, 0, 0);
}

uint64_t sub_1B1CFF1A0()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  v6 = *(v0 + 512);

  swift_unknownObjectRelease();
  v7 = *(v0 + 464);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B1CFF3DC(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_1B1D7BE4C();
  v9 = v8;
  v4[4] = v8;
  v10 = a2;
  a4;
  v11 = sub_1B1D7B4EC();
  v13 = v12;

  v4[5] = v11;
  v4[6] = v13;
  v14 = swift_task_alloc();
  v4[7] = v14;
  *v14 = v4;
  v14[1] = sub_1B1CFF4E0;

  return sub_1B1CFC76C(v7, v9, v11, v13);
}

uint64_t sub_1B1CFF4E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 16);
  v10 = *v1;

  sub_1B1CDEFDC(v7, v6);

  v11 = *(v3 + 24);
  if (v2)
  {
    v12 = sub_1B1D7B43C();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1B1CFF6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = sub_1B1D7C08C();
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v9 = *(v8 + 64) + 15;
  v6[26] = swift_task_alloc();
  v10 = sub_1B1D7B5BC();
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v12 = *(v11 + 64) + 15;
  v6[29] = swift_task_alloc();
  v13 = sub_1B1D7B49C();
  v6[30] = v13;
  v14 = *(v13 - 8);
  v6[31] = v14;
  v15 = *(v14 + 64) + 15;
  v6[32] = swift_task_alloc();
  v16 = sub_1B1D7B5CC();
  v6[33] = v16;
  v17 = *(v16 - 8);
  v6[34] = v17;
  v18 = *(v17 + 64) + 15;
  v6[35] = swift_task_alloc();
  v19 = sub_1B1D7B5DC();
  v6[36] = v19;
  v20 = *(v19 - 8);
  v6[37] = v20;
  v21 = *(v20 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v22 = sub_1B1D7B61C();
  v6[40] = v22;
  v23 = *(v22 - 8);
  v6[41] = v23;
  v24 = *(v23 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1CFF98C, 0, 0);
}

uint64_t sub_1B1CFF98C()
{
  if (sub_1B1D03B20(v0[18], v0[19], *(v0[23] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection), *(v0[23] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options)))
  {
    v2 = v0[22];
    v1 = v0[23];

    v0[47] = sub_1B1D20B7C(v3);

    v4 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore);
    v0[48] = v4;
    v5 = *(MEMORY[0x1E69C87F0] + 4);
    v4;
    v6 = swift_task_alloc();
    v0[49] = v6;
    *v6 = v0;
    v6[1] = sub_1B1CFFC5C;
    v8 = v0[18];
    v7 = v0[19];

    return MEMORY[0x1EEE33140](v8, v7);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v9, qword_1EB782548);
    v10 = sub_1B1D7BD6C();
    v11 = sub_1B1D7C00C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B1C8D000, v10, v11, "Connected process is not entitled to make this call.", v12, 2u);
      MEMORY[0x1B273C4C0](v12, -1, -1);
    }

    v13 = v0[45];
    v14 = v0[46];
    v16 = v0[43];
    v15 = v0[44];
    v17 = v0[42];
    v23 = v0[39];
    v24 = v0[38];
    v25 = v0[35];
    v26 = v0[32];
    v27 = v0[29];
    v28 = v0[26];
    v19 = v0[18];
    v18 = v0[19];

    sub_1B1CE955C();
    swift_allocError();
    *v20 = v19;
    v20[1] = v18;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1B1CFFC5C(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFFD78, 0, 0);
}

uint64_t sub_1B1CFFD78()
{
  v1 = *(v0 + 400);
  v157 = *(v1 + 16);
  if (v157)
  {
    v2 = 0;
    v3 = *(v0 + 328);
    v4 = *(v0 + 272);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v153 = *MEMORY[0x1E69C8778];
    v151 = (v4 + 8);
    v152 = (v4 + 104);
    v150 = (*(v0 + 296) + 8);
    v8 = v5 != 0xC000000000000000 || v6 != 0;
    v145 = v8;
    v146 = v5 >> 62;
    v154 = *(v0 + 168);
    v144 = BYTE6(v5);
    v148 = (v3 + 8);
    v155 = *(v0 + 328);
    v149 = (v3 + 32);
    v143 = *(v0 + 160);
    v9 = __OFSUB__(HIDWORD(v6), v6);
    v142 = v9;
    v141 = HIDWORD(v6) - v6;
    v10 = MEMORY[0x1E69E7CC0];
    v147 = *(v0 + 400);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_111;
      }

      v15 = *(v0 + 312);
      v17 = *(v0 + 280);
      v16 = *(v0 + 288);
      v18 = *(v0 + 264);
      v160 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v159 = *(v155 + 72);
      (*(v155 + 16))(*(v0 + 368), *(v0 + 400) + v160 + v159 * v2, *(v0 + 320));
      sub_1B1D7B60C();
      (*v152)(v17, v153, v18);
      v19 = sub_1B1D7B5EC();
      v21 = v20;
      (*v151)(v17, v18);
      (*v150)(v15, v16);
      if (v21 >> 60 == 15)
      {
        break;
      }

      if (v154 >> 60 == 15)
      {
        goto LABEL_12;
      }

      v28 = v21 >> 62;
      if (v21 >> 62 == 3)
      {
        if (v19)
        {
          v29 = 0;
        }

        else
        {
          v29 = v21 == 0xC000000000000000;
        }

        v30 = v146;
        v32 = !v29 || v146 < 3;
        if (((v32 | v145) & 1) == 0)
        {
          sub_1B1CE111C(0, 0xC000000000000000);
          sub_1B1C91AE4(0, 0xC000000000000000);
          goto LABEL_20;
        }

        v33 = 0;
      }

      else
      {
        v30 = v146;
        if (v28)
        {
          if (v28 == 1)
          {
            LODWORD(v33) = HIDWORD(v19) - v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_114;
            }

            v33 = v33;
          }

          else
          {
            v35 = *(v19 + 16);
            v34 = *(v19 + 24);
            v36 = __OFSUB__(v34, v35);
            v33 = v34 - v35;
            if (v36)
            {
              goto LABEL_115;
            }
          }
        }

        else
        {
          v33 = BYTE6(v21);
        }
      }

      if (v30 > 1)
      {
        if (v30 != 2)
        {
          if (!v33)
          {
LABEL_58:
            v46 = *(v0 + 160);
            v45 = *(v0 + 168);
            sub_1B1CE111C(v46, v45);
            sub_1B1C91AE4(v46, v45);
            goto LABEL_20;
          }

LABEL_57:
          v44 = *(v0 + 160);
          v43 = *(v0 + 168);
          sub_1B1CE111C(v44, v43);
          sub_1B1C91AE4(v44, v43);
          v13 = v19;
          v14 = v21;
LABEL_13:
          sub_1B1C91AE4(v13, v14);
          goto LABEL_14;
        }

        v39 = *(v143 + 16);
        v38 = *(v143 + 24);
        v36 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (v36)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v37 = v144;
        if (v30)
        {
          v37 = v141;
          if (v142)
          {
            goto LABEL_113;
          }
        }
      }

      if (v33 != v37)
      {
        goto LABEL_57;
      }

      if (v33 < 1)
      {
        goto LABEL_58;
      }

      v41 = *(v0 + 160);
      v40 = *(v0 + 168);
      sub_1B1CE111C(v41, v40);
      sub_1B1C91B94(v41, v40);
      sub_1B1C91B94(v19, v21);
      v42 = sub_1B1D038D8(v19, v21, v41, v40);
      v1 = v147;
      sub_1B1C91AE4(v19, v21);
      sub_1B1C91AE4(v41, v40);
      sub_1B1C91AE4(v19, v21);
      if (v42)
      {
        goto LABEL_21;
      }

LABEL_14:
      (*v148)(*(v0 + 368), *(v0 + 320));
LABEL_15:
      if (v157 == ++v2)
      {
        v47 = *(v0 + 400);
        goto LABEL_61;
      }
    }

    if (v154 >> 60 == 15)
    {
      sub_1B1CE111C(*(v0 + 160), *(v0 + 168));
LABEL_20:
      sub_1B1C91AE4(v19, v21);
LABEL_21:
      v22 = *v149;
      (*v149)(*(v0 + 360), *(v0 + 368), *(v0 + 320));
      v163 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1D194B4(0, *(v10 + 16) + 1, 1);
      }

      v23 = v10;
      v24 = *(v10 + 16);
      v25 = *(v23 + 24);
      if (v24 >= v25 >> 1)
      {
        sub_1B1D194B4(v25 > 1, v24 + 1, 1);
        v23 = v163;
      }

      v26 = *(v0 + 360);
      v27 = *(v0 + 320);
      *(v23 + 16) = v24 + 1;
      v22(v23 + v160 + v24 * v159, v26, v27);
      v10 = v23;
      v1 = v147;
      goto LABEL_15;
    }

LABEL_12:
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    sub_1B1CE111C(v12, v11);
    sub_1B1C91AE4(v19, v21);
    v13 = v12;
    v14 = v11;
    goto LABEL_13;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_61:

  v161 = *(v10 + 16);
  if (v161)
  {
    v48 = 0;
    v49 = *(v0 + 328);
    v158 = (v49 + 32);
    v50 = MEMORY[0x1E69E7CC0];
    v156 = v10;
    while (v48 < *(v10 + 16))
    {
      v51 = *(v0 + 376);
      v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v53 = *(v49 + 72);
      (*(v49 + 16))(*(v0 + 352), v10 + v52 + v53 * v48, *(v0 + 320));
      v54 = sub_1B1D7B5AC();
      v56 = v55;
      LOBYTE(v51) = sub_1B1D0137C(v54, v55, v51);
      sub_1B1CDEFDC(v54, v56);
      v57 = *(v0 + 352);
      if (v51)
      {
        (*(v49 + 8))(*(v0 + 352), *(v0 + 320));
      }

      else
      {
        v58 = *v158;
        (*v158)(*(v0 + 344), *(v0 + 352), *(v0 + 320));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B1D194B4(0, *(v50 + 16) + 1, 1);
        }

        v60 = *(v50 + 16);
        v59 = *(v50 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1B1D194B4(v59 > 1, v60 + 1, 1);
        }

        v61 = *(v0 + 344);
        v62 = *(v0 + 320);
        *(v50 + 16) = v60 + 1;
        v58(v50 + v52 + v60 * v53, v61, v62);
        v10 = v156;
      }

      if (v161 == ++v48)
      {
        goto LABEL_73;
      }
    }

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
    goto LABEL_116;
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_73:
  *(v0 + 408) = v50;
  v63 = *(v0 + 376);

  if (!*(v50 + 16))
  {

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v68 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v68, qword_1EB782548);
    v69 = sub_1B1D7BD6C();
    v70 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1B1C8D000, v69, v70, "No invalid passkeys found in keychain.", v71, 2u);
      MEMORY[0x1B273C4C0](v71, -1, -1);
    }

    goto LABEL_97;
  }

  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v64 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v64, qword_1EB782548);

  v65 = sub_1B1D7BD6C();
  v66 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134217984;
    *(v67 + 4) = *(v50 + 16);

    _os_log_impl(&dword_1B1C8D000, v65, v66, "Found %ld invalid passkeys in keychain.", v67, 0xCu);
    MEMORY[0x1B273C4C0](v67, -1, -1);
  }

  else
  {
  }

  v72 = *(v0 + 144);
  v73 = *(v0 + 152);
  v74 = sub_1B1D7BE1C();
  v75 = [v74 safari_bestURLForUserTypedString];

  if (!v75)
  {

    goto LABEL_97;
  }

  v76 = *(v0 + 256);
  sub_1B1D7B47C();

  v77 = *(v50 + 16);
  *(v0 + 416) = v77;
  if (!v77)
  {

LABEL_96:
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
LABEL_97:
    v106 = *(v0 + 200);
    v105 = *(v0 + 208);
    v107 = *(v0 + 192);
    v109 = *(v0 + 144);
    v108 = *(v0 + 152);
    sub_1B1D7C06C();
    v110 = sub_1B1D7C03C();
    v112 = v111;
    (*(v106 + 8))(v105, v107);
    if (v110 == v109 && v112 == v108)
    {
    }

    else
    {
      v113 = *(v0 + 144);
      v114 = *(v0 + 152);
      v115 = sub_1B1D7C50C();

      if ((v115 & 1) == 0)
      {
        v131 = *(v0 + 176);
        v133 = *(v0 + 160);
        v132 = *(v0 + 168);
        v134 = *(v0 + 144);
        v135 = *(v0 + 152);
        v136 = *(*(v0 + 184) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
        v137 = sub_1B1D7BE1C();
        *(v0 + 480) = v137;
        v138 = sub_1B1D7B4DC();
        *(v0 + 488) = v138;
        v139 = sub_1B1D7BEDC();
        *(v0 + 496) = v139;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_1B1D01194;
        v140 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1B1CFC258;
        *(v0 + 104) = &block_descriptor_25;
        *(v0 + 112) = v140;
        [v136 reportAllAcceptedPublicKeyCredentialsWithRelyingParty:v137 userHandle:v138 acceptedCredentialIDs:v139 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    if (qword_1EB7749C0 == -1)
    {
LABEL_102:
      v116 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v116, qword_1EB782548);
      v117 = sub_1B1D7BD6C();
      v118 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_1B1C8D000, v117, v118, "Received accepted list for Apple Account passkey.", v119, 2u);
        MEMORY[0x1B273C4C0](v119, -1, -1);
      }

      v121 = *(v0 + 360);
      v120 = *(v0 + 368);
      v123 = *(v0 + 344);
      v122 = *(v0 + 352);
      v124 = *(v0 + 336);
      v126 = *(v0 + 304);
      v125 = *(v0 + 312);
      v127 = *(v0 + 280);
      v128 = *(v0 + 256);
      v129 = *(v0 + 232);
      v162 = *(v0 + 208);

      v130 = *(v0 + 8);

      return v130();
    }

LABEL_116:
    swift_once();
    goto LABEL_102;
  }

  v78 = 0;
  v79 = *(v0 + 328);
  v80 = *(v79 + 80);
  *(v0 + 504) = v80;
  v81 = *(v79 + 72);
  *(v0 + 424) = v81;
  v82 = *(v79 + 16);
  *(v0 + 432) = v82;
  v83 = *MEMORY[0x1E69C8770];
  *(v0 + 508) = v83;
  while (1)
  {
    *(v0 + 440) = v78;
    v84 = *(v0 + 296);
    v85 = *(v0 + 304);
    v86 = *(v0 + 288);
    v88 = *(v0 + 224);
    v87 = *(v0 + 232);
    v89 = *(v0 + 216);
    v82(*(v0 + 336), *(v0 + 408) + ((v80 + 32) & ~v80) + v81 * v78, *(v0 + 320));
    sub_1B1D7B60C();
    (*(v88 + 104))(v87, v83, v89);
    v90 = sub_1B1D7B5FC();
    v92 = v91;
    *(v0 + 448) = v91;
    (*(v88 + 8))(v87, v89);
    (*(v84 + 8))(v85, v86);
    if (v92)
    {
      break;
    }

    v93 = *(v0 + 416);
    v94 = *(v0 + 440) + 1;
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    if (v94 == v93)
    {
      v104 = *(v0 + 408);

      goto LABEL_96;
    }

    v82 = *(v0 + 432);
    v78 = *(v0 + 440) + 1;
    v83 = *(v0 + 508);
    v81 = *(v0 + 424);
    LOBYTE(v80) = *(v0 + 504);
    v95 = *(v0 + 328);
  }

  v96 = *(v0 + 336);
  v97 = sub_1B1D7B5AC();
  v99 = v98;
  *(v0 + 456) = v97;
  *(v0 + 464) = v98;
  v100 = swift_task_alloc();
  *(v0 + 472) = v100;
  *v100 = v0;
  v100[1] = sub_1B1D00B18;
  v101 = *(v0 + 256);
  v102 = *(v0 + 184);

  return sub_1B1CFE06C(v101, v90, v92, v97, v99);
}

uint64_t sub_1B1D00B18()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v4 = *(*v0 + 448);
  v6 = *v0;

  sub_1B1CDEFDC(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1B1D00C6C, 0, 0);
}

uint64_t sub_1B1D00C6C()
{
  while (1)
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 440) + 1;
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    if (v2 == v1)
    {
      break;
    }

    v3 = *(v0 + 432);
    v4 = *(v0 + 440) + 1;
    *(v0 + 440) = v4;
    v5 = *(v0 + 508);
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 288);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    v12 = *(v0 + 328) + 16;
    v3(*(v0 + 336), *(v0 + 408) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + *(v0 + 424) * v4, *(v0 + 320));
    sub_1B1D7B60C();
    (*(v10 + 104))(v9, v5, v11);
    v13 = sub_1B1D7B5FC();
    v15 = v14;
    *(v0 + 448) = v14;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    if (v15)
    {
      v16 = *(v0 + 336);
      v17 = sub_1B1D7B5AC();
      v19 = v18;
      *(v0 + 456) = v17;
      *(v0 + 464) = v18;
      v20 = swift_task_alloc();
      *(v0 + 472) = v20;
      *v20 = v0;
      v20[1] = sub_1B1D00B18;
      v21 = *(v0 + 256);
      v22 = *(v0 + 184);

      return sub_1B1CFE06C(v21, v13, v15, v17, v19);
    }
  }

  v24 = *(v0 + 408);

  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  v27 = *(v0 + 192);
  v29 = *(v0 + 144);
  v28 = *(v0 + 152);
  sub_1B1D7C06C();
  v30 = sub_1B1D7C03C();
  v32 = v31;
  (*(v26 + 8))(v25, v27);
  if (v30 == v29 && v32 == v28)
  {

LABEL_10:
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v36 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v36, qword_1EB782548);
    v37 = sub_1B1D7BD6C();
    v38 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B1C8D000, v37, v38, "Received accepted list for Apple Account passkey.", v39, 2u);
      MEMORY[0x1B273C4C0](v39, -1, -1);
    }

    v41 = *(v0 + 360);
    v40 = *(v0 + 368);
    v43 = *(v0 + 344);
    v42 = *(v0 + 352);
    v44 = *(v0 + 336);
    v46 = *(v0 + 304);
    v45 = *(v0 + 312);
    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 232);
    v61 = *(v0 + 208);

    v50 = *(v0 + 8);

    return v50();
  }

  v33 = *(v0 + 144);
  v34 = *(v0 + 152);
  v35 = sub_1B1D7C50C();

  if (v35)
  {
    goto LABEL_10;
  }

  v51 = *(v0 + 176);
  v53 = *(v0 + 160);
  v52 = *(v0 + 168);
  v54 = *(v0 + 144);
  v55 = *(v0 + 152);
  v56 = *(*(v0 + 184) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v57 = sub_1B1D7BE1C();
  *(v0 + 480) = v57;
  v58 = sub_1B1D7B4DC();
  *(v0 + 488) = v58;
  v59 = sub_1B1D7BEDC();
  *(v0 + 496) = v59;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B1D01194;
  v60 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1CFC258;
  *(v0 + 104) = &block_descriptor_25;
  *(v0 + 112) = v60;
  [v56 reportAllAcceptedPublicKeyCredentialsWithRelyingParty:v57 userHandle:v58 acceptedCredentialIDs:v59 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1D01194()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1D01274, 0, 0);
}

uint64_t sub_1B1D01274()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 480);

  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  v7 = *(v0 + 336);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v15 = *(v0 + 208);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B1D0137C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 16) || (v6 = *(a3 + 40), sub_1B1D7C5CC(), sub_1B1D7B4FC(), v7 = sub_1B1D7C61C(), v8 = a3 + 56, v9 = -1 << *(a3 + 32), v10 = v7 & ~v9, ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_64:
    result = 0;
    goto LABEL_65;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v44 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v41 = v15;
  v39 = a2;
  v40 = HIDWORD(a1) - a1;
  v42 = v11;
  v43 = BYTE6(a2);
  v38 = a1;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_68;
      }

      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_69;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_34:
        v27 = v43;
        if (v14)
        {
          v27 = v40;
          if (v41)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_63;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

LABEL_40:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_63;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          *v46 = v18;
          *&v46[8] = v17;
          v46[10] = BYTE2(v17);
          v46[11] = BYTE3(v17);
          v46[12] = BYTE4(v17);
          v46[13] = BYTE5(v17);
          sub_1B1CE111C(v18, v17);
          sub_1B1D036A8(v46, a1, a2, v45);
          sub_1B1CDEFDC(v18, v17);
          if (v45[0])
          {
            goto LABEL_63;
          }

LABEL_61:
          v11 = v42;
          goto LABEL_14;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_70;
        }

        sub_1B1CE111C(v18, v17);
        v32 = sub_1B1D7B34C();
        if (v32)
        {
          v34 = sub_1B1D7B36C();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_73;
          }

          v32 += v18 - v34;
        }

LABEL_59:
        sub_1B1D7B35C();
        v35 = v32;
        a1 = v38;
        a2 = v39;
        sub_1B1D036A8(v35, v38, v39, v46);
        sub_1B1CDEFDC(v18, v17);
        if (v46[0])
        {
          goto LABEL_63;
        }

        v8 = a3 + 56;
        goto LABEL_61;
      }

      if (v19 == 2)
      {
        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        sub_1B1CE111C(v18, v17);
        v32 = sub_1B1D7B34C();
        if (v32)
        {
          v33 = sub_1B1D7B36C();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_72;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      *&v46[6] = 0;
      *v46 = 0;
      sub_1B1CE111C(v18, v17);
      sub_1B1D036A8(v46, a1, a2, v45);
      sub_1B1CDEFDC(v18, v17);
      if (v45[0])
      {
        goto LABEL_63;
      }
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v44))
  {
LABEL_37:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_63:
  result = 1;
LABEL_65:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1D01944(int a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = sub_1B1D7B4EC();
  v16 = v15;

  v5[5] = v14;
  v5[6] = v16;
  v17 = sub_1B1D7BEEC();
  v5[7] = v17;

  v18 = swift_task_alloc();
  v5[8] = v18;
  *v18 = v5;
  v18[1] = sub_1B1D04264;

  return sub_1B1CFF6BC(v9, v11, v14, v16, v17);
}

uint64_t sub_1B1D01A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[72] = v4;
  v5[71] = a4;
  v5[70] = a3;
  v5[69] = a2;
  v5[68] = a1;
  v6 = sub_1B1D7B49C();
  v5[73] = v6;
  v7 = *(v6 - 8);
  v5[74] = v7;
  v8 = *(v7 + 64) + 15;
  v5[75] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1D01B50, 0, 0);
}

uint64_t sub_1B1D01B50()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 552);
  v3 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection);
  v4 = *(v0 + 544);
  v5 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options);
  *(v0 + 760) = v5;
  if (sub_1B1D03B20(v4, v2, v3, v5))
  {
    v6 = *(v0 + 576);
    *(v0 + 608) = sub_1B1CFBEDC();
    *(v0 + 616) = v7;
    if (!v7)
    {
      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v35 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v35, qword_1EB782548);
      v36 = sub_1B1D7BD6C();
      v37 = sub_1B1D7C00C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1B1C8D000, v36, v37, "Could not retrieve calling app name", v38, 2u);
        MEMORY[0x1B273C4C0](v38, -1, -1);
      }

      v39 = *(v0 + 600);

      v34 = *(v0 + 8);
      goto LABEL_18;
    }

    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    v10 = sub_1B1D7BE1C();
    v11 = [v10 safari_bestURLForUserTypedString];

    if (v11)
    {
      v12 = *(v0 + 600);
      v13 = *(v0 + 576);
      v14 = *(v0 + 568);
      v15 = *(v0 + 560);
      sub_1B1D7B47C();

      v16 = objc_allocWithZone(MEMORY[0x1E69C8A58]);
      v17 = sub_1B1D7BE1C();
      v18 = [v16 initWithString:v17 matchingType:1];
      *(v0 + 624) = v18;

      v19 = objc_allocWithZone(MEMORY[0x1E69C8A30]);
      v20 = v18;
      v21 = sub_1B1D7B46C();
      v22 = [v19 initWithURL:v21 options:17 userNameQuery:v20 associatedDomainsManager:0 webFrameIdentifier:0];
      *(v0 + 632) = v22;

      v23 = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
      *(v0 + 640) = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
      v24 = *(v13 + v23);
      *(v0 + 648) = v24;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 528;
      *(v0 + 24) = sub_1B1D02010;
      v25 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751C8, &qword_1B1D86830);
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1B1D030EC;
      *(v0 + 296) = &block_descriptor_2;
      *(v0 + 304) = v25;
      [v24 savedAccountsMatchingCriteria:v22 withCompletionHandler:v0 + 272];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    sub_1B1CE955C();
    swift_allocError();
    *v40 = xmmword_1B1D866D0;
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v26, qword_1EB782548);
    v27 = sub_1B1D7BD6C();
    v28 = sub_1B1D7C00C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B1C8D000, v27, v28, "Connected process is not entitled to make this call.", v29, 2u);
      MEMORY[0x1B273C4C0](v29, -1, -1);
    }

    v30 = *(v0 + 552);
    v31 = *(v0 + 544);

    sub_1B1CE955C();
    swift_allocError();
    *v32 = v31;
    v32[1] = v30;
  }

  v33 = *(v0 + 600);
  swift_willThrow();

  v34 = *(v0 + 8);
LABEL_18:

  return v34();
}

uint64_t sub_1B1D02010()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1D020F0, 0, 0);
}

uint64_t sub_1B1D020F0()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[66];
  v0[82] = v3;

  if (v3)
  {
    v4 = [v3 exactMatches];
    sub_1B1CED540(0, &qword_1EB7751D8, 0x1E69C8A28);
    v5 = sub_1B1D7BEEC();
    v0[83] = v5;

    if (v5 >> 62)
    {
      goto LABEL_25;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[84] = v6;
    if (v6)
    {
      do
      {
        v7 = 0;
        while (1)
        {
          v9 = v0[83];
          if ((v9 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1B273B2E0](v7);
          }

          else
          {
            if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v10 = *(v9 + 8 * v7 + 32);
          }

          v11 = v10;
          v0[85] = v10;
          v12 = v7 + 1;
          v0[86] = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v13 = [v10 savedAccount];
          v0[87] = v13;
          if ([v13 canBeDeletedByServiceViaCredentialUpdater])
          {
            v23 = v0 + 26;
            v24 = *(v0[72] + v0[80]);
            v0[88] = v24;
            v0[26] = v0;
            v0[31] = v0 + 67;
            v0[27] = sub_1B1D02608;
            v25 = swift_continuation_init();
            v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
            v0[58] = MEMORY[0x1E69E9820];
            v0[59] = 1107296256;
            v0[60] = sub_1B1D030EC;
            v0[61] = &block_descriptor_21;
            v0[62] = v25;
            [v24 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
            goto LABEL_29;
          }

          if (qword_1EB7749C0 != -1)
          {
            swift_once();
          }

          v14 = sub_1B1D7BD8C();
          __swift_project_value_buffer(v14, qword_1EB782548);
          v15 = sub_1B1D7BD6C();
          v16 = sub_1B1D7BFEC();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_1B1C8D000, v15, v16, "Password cannot be deleted by service.", v17, 2u);
            MEMORY[0x1B273C4C0](v17, -1, -1);
          }

          v8 = v0[84];

          ++v7;
          if (v12 == v8)
          {
            v26 = v0[83];

            v27 = v0[77];
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v28 = sub_1B1D7C1FC();
        v0[84] = v28;
      }

      while (v28);
    }

    v29 = v0[77];

LABEL_27:
  }

  else
  {
    v18 = v0[77];

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v19, qword_1EB782548);
    v20 = sub_1B1D7BD6C();
    v21 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1C8D000, v20, v21, "No savedAccount found matching the domain and username.", v22, 2u);
      MEMORY[0x1B273C4C0](v22, -1, -1);
    }
  }

  v23 = v0 + 10;
  v30 = v0[71];
  v31 = v0[70];
  v32 = v0[69];
  v33 = v0[68];
  v34 = *(v0[72] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v35 = sub_1B1D7BE1C();
  v0[93] = v35;
  v36 = sub_1B1D7BE1C();
  v0[94] = v36;
  v0[10] = v0;
  v0[11] = sub_1B1D02F44;
  v37 = swift_continuation_init();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[42] = MEMORY[0x1E69E9820];
  v0[43] = 1107296256;
  v0[44] = sub_1B1CFC258;
  v0[45] = &block_descriptor_15;
  v0[46] = v37;
  [v34 reportUnusedPasswordCredentialWithDomain:v35 username:v36 completionHandler:v0 + 42];
LABEL_29:

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_1B1D02608()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1D026E8, 0, 0);
}

uint64_t sub_1B1D026E8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  if (v2 == v4)
  {
    v5 = (v0 + 664);
LABEL_3:
    v6 = *v5;

    if (qword_1EB7749C0 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v49 = v0 + 536;
    v26 = *(v0 + 688);
    v5 = (v0 + 664);
    while (1)
    {
      v28 = *v5;
      if ((*v5 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1B273B2E0](v26);
      }

      else
      {
        if (v26 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v29 = *(v28 + 8 * v26 + 32);
      }

      v30 = v29;
      *(v0 + 680) = v29;
      v31 = v26 + 1;
      *(v0 + 688) = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v32 = [v29 savedAccount];
      *(v0 + 696) = v32;
      if ([v32 canBeDeletedByServiceViaCredentialUpdater])
      {
        v13 = v0 + 208;
        v46 = *(*(v0 + 576) + *(v0 + 640));
        *(v0 + 704) = v46;
        *(v0 + 208) = v0;
        *(v0 + 248) = v49;
        *(v0 + 216) = sub_1B1D02608;
        v47 = swift_continuation_init();
        *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
        *(v0 + 464) = MEMORY[0x1E69E9820];
        *(v0 + 472) = 1107296256;
        *(v0 + 480) = sub_1B1D030EC;
        *(v0 + 488) = &block_descriptor_21;
        *(v0 + 496) = v47;
        [v46 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
        goto LABEL_22;
      }

      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v33 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v33, qword_1EB782548);
      v34 = sub_1B1D7BD6C();
      v35 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1B1C8D000, v34, v35, "Password cannot be deleted by service.", v36, 2u);
        MEMORY[0x1B273C4C0](v36, -1, -1);
      }

      v27 = *(v0 + 672);

      ++v26;
      if (v31 == v27)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  swift_once();
LABEL_4:
  v7 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v7, qword_1EB782548);
  v8 = sub_1B1D7BD6C();
  v9 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B1C8D000, v8, v9, "Successfully moved password to Recently Deleted.", v10, 2u);
    MEMORY[0x1B273C4C0](v10, -1, -1);
  }

  v11 = *(v0 + 760);

  v12 = *(v0 + 616);
  if (v11 == 1)
  {
    v13 = v0 + 144;
    v14 = *(v0 + 608);
    v15 = *(v0 + 576);
    v16 = *(v0 + 568);
    v17 = *(v0 + 560);
    v18 = *(v0 + 552);
    v19 = *(v0 + 544);
    v20 = *(v15 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_passwordsNotificationManager);
    *(v0 + 712) = v20;
    swift_unknownObjectRetain();
    v21 = sub_1B1D7BE1C();
    *(v0 + 720) = v21;

    v22 = sub_1B1D7BE1C();
    *(v0 + 728) = v22;
    v23 = sub_1B1D7BE1C();
    *(v0 + 736) = v23;
    v24 = *(v15 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_isClientEntitledWebBrowser);
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_1B1D02CE4;
    v25 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1B1CFC258;
    *(v0 + 424) = &block_descriptor_18;
    *(v0 + 432) = v25;
    [v20 schedulePasswordMovedToRecentlyDeletedNotificationForApp:v21 domain:v22 userName:v23 shouldUseRelyingPartyForServiceName:v24 completionHandler:?];
  }

  else
  {
    v13 = v0 + 80;
    v37 = *(v0 + 616);

    v38 = *(v0 + 568);
    v39 = *(v0 + 560);
    v40 = *(v0 + 552);
    v41 = *(v0 + 544);
    v42 = *(*(v0 + 576) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
    v43 = sub_1B1D7BE1C();
    *(v0 + 744) = v43;
    v44 = sub_1B1D7BE1C();
    *(v0 + 752) = v44;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B1D02F44;
    v45 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1B1CFC258;
    *(v0 + 360) = &block_descriptor_15;
    *(v0 + 368) = v45;
    [v42 reportUnusedPasswordCredentialWithDomain:v43 username:v44 completionHandler:{v0 + 336, v49}];
  }

LABEL_22:

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t sub_1B1D02CE4()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1D02DC4, 0, 0);
}

uint64_t sub_1B1D02DC4()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  swift_unknownObjectRelease();

  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = *(v0[72] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v10 = sub_1B1D7BE1C();
  v0[93] = v10;
  v11 = sub_1B1D7BE1C();
  v0[94] = v11;
  v0[10] = v0;
  v0[11] = sub_1B1D02F44;
  v12 = swift_continuation_init();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[42] = MEMORY[0x1E69E9820];
  v0[43] = 1107296256;
  v0[44] = sub_1B1CFC258;
  v0[45] = &block_descriptor_15;
  v0[46] = v12;
  [v9 reportUnusedPasswordCredentialWithDomain:v10 username:v11 completionHandler:v0 + 42];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B1D02F44()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1D03024, 0, 0);
}

uint64_t sub_1B1D03024()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 600);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B1D030EC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1B1D032E0(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1B1D7BE4C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1B1D033DC;

  return sub_1B1D01A80(v6, v8, v9, v11);
}

uint64_t sub_1B1D033DC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = sub_1B1D7B43C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

id sub_1B1D035D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _ASCredentialUpdateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1D036A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B1D7B34C();
    if (v10)
    {
      v11 = sub_1B1D7B36C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B1D7B35C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B1D7B34C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B1D7B36C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B1D7B35C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B1D038D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B1D03A68(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B1CDEFDC(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1B1D036A8(v14, a3, a4, &v13);
  v10 = v4;
  sub_1B1CDEFDC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1B1D03A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B1D7B34C();
  v11 = result;
  if (result)
  {
    result = sub_1B1D7B36C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B1D7B35C();
  sub_1B1D036A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1B1D03B20(int a1, int a2, id a3, char a4)
{
  if ([a3 safari:*MEMORY[0x1E698DF58] BOOLForEntitlement:?] & 1) != 0 || (v6 = sub_1B1D7BE1C(), v7 = objc_msgSend(a3, sel_safari_BOOLForEntitlement_, v6), v6, (v7))
  {
    v8 = 1;
  }

  else
  {
    v8 = [a3 safari:*MEMORY[0x1E698DF68] BOOLForEntitlement:?];
  }

  v9 = sub_1B1D7BE1C();
  v10 = [a3 safari:v9 BOOLForEntitlement:?];

  if (a4 & 1) != 0 || (v10)
  {
    if ((v8 | v10))
    {
      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v16 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v16, qword_1EB782548);
      v12 = sub_1B1D7BD6C();
      v17 = sub_1B1D7BFFC();
      if (os_log_type_enabled(v12, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B1C8D000, v12, v17, "Calling process has browser or internal process entitlement. Skipping check for RP in associated domains…", v18, 2u);
        MEMORY[0x1B273C4C0](v18, -1, -1);
      }

      v15 = 1;
    }

    else
    {
      v12 = sub_1B1D7BE1C();
      v15 = [a3 safari:v12 hasApprovedWebCredentialsDomainAssociationForDomain:?];
    }
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v11, qword_1EB782548);
    v12 = sub_1B1D7BD6C();
    v13 = sub_1B1D7C00C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B1C8D000, v12, v13, "Non-internal process tried to suppress notifications. Rejecting.", v14, 2u);
      MEMORY[0x1B273C4C0](v14, -1, -1);
    }

    v15 = 0;
  }

  return v15;
}

uint64_t sub_1B1D03DE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1CE9AD0;

  return sub_1B1D032E0(v2, v3, v5, v4);
}

uint64_t sub_1B1D03EA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B1CE9AD0;

  return sub_1B1D2248C(a1, v4, v5, v7);
}

uint64_t sub_1B1D03F74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1D01944(v2, v3, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1D0408C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1CE9AD0;

  return sub_1B1CFF3DC(v2, v3, v5, v4);
}

uint64_t sub_1B1D0414C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE99BC;

  return sub_1B1CFC430(v2, v3, v4, v5, v6);
}

uint64_t ASCPasswordLoginChoice.externalCredentialProviderBundleID.getter()
{
  v1 = [v0 providerBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1D7BE4C();

  return v3;
}