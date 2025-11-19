uint64_t sub_1B771394C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  type metadata accessor for Transaction.Insight.XPC(0);
  sub_1B7800728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C8);
  return sub_1B7800D08();
}

uint64_t FinancialInsightsService.financialInsights()()
{
  v1[14] = v0;
  v2 = sub_1B77FFA18();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2B8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7713ADC, 0, 0);
}

unint64_t sub_1B7713ADC()
{
  v28 = v0;
  v1 = *(v0 + 112);
  result = sub_1B720281C(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  *(v0 + 168) = v3;
  if (v3 >> 62)
  {
    v22 = result;
    v23 = sub_1B7801958();
    result = v22;
    *(v0 + 176) = v23;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_22:
    v24 = result;

    v25 = *(v0 + 8);

    return v25(v24);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 176) = v4;
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  *(v0 + 192) = 0;
  *(v0 + 200) = result;
  *(v0 + 184) = result;
  v5 = *(v0 + 168);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B8CA5DC0](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v5 + 32);
  }

  *(v0 + 208) = v6;
  *(v0 + 216) = 1;
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), v7);
  [*(v6 + 16) auditToken];
  (*(v8 + 8))(&v26, *(v0 + 60), *(v0 + 68), *(v0 + 76), *(v0 + 84), v7, v8);
  *(v0 + 41) = *&v27[9];
  v9 = *v27;
  *(v0 + 16) = v26;
  *(v0 + 32) = v9;
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);

  sub_1B71B4F10(v0 + 16);
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1280070990;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (qword_1EDAF6568 != -1)
  {
    swift_once();
  }

  v14 = sub_1B78000B8();
  __swift_project_value_buffer(v14, qword_1EDAF6570);

  v15 = sub_1B7800098();
  v16 = sub_1B78011B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v26 = v18;
    *v17 = 136315138;
    v19 = sub_1B71A3EF8(v12, v13, &v26);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_1B7198000, v15, v16, "Extension (%s) found.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
    MEMORY[0x1B8CA7A40](v17, -1, -1);
  }

  else
  {
  }

  *(v0 + 96) = v6;
  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  v20[2] = v0 + 96;
  v20[3] = &unk_1B7860C40;
  v20[4] = 0;
  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = sub_1B7713EAC;

  return sub_1B72B98D8(&unk_1B7860C48);
}

uint64_t sub_1B7713EAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_1B7714884;
  }

  else
  {

    v4 = sub_1B7713FC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7713FC8()
{
  v83 = v0;
  v1 = v0;
  v2 = 0;
  v3 = v0[30];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v75 = v0[30];
  v7 = -1;
  v8 = -1 << *(v75 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];
  v80 = v1;
  v76 = v10;
  for (i = v5; ; v5 = i)
  {
    v78 = v11;
    if (!v9)
    {
      if (v10 <= (v2 + 1))
      {
        v18 = v2 + 1;
      }

      else
      {
        v18 = v10;
      }

      v19 = v18 - 1;
      while (1)
      {
        v17 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v17 >= v10)
        {
          v55 = v1[19];
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C0);
          (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
          v9 = 0;
          v2 = v19;
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v17);
        ++v2;
        if (v9)
        {
          v79 = v12;
          v2 = v17;
          goto LABEL_16;
        }
      }

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
      goto LABEL_74;
    }

    v79 = v12;
    v17 = v2;
LABEL_16:
    v21 = v1[18];
    v20 = v1[19];
    v23 = v1[15];
    v22 = v1[16];
    v24 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v25 = v24 | (v17 << 6);
    (*(v22 + 16))(v21, *(v75 + 48) + *(v22 + 72) * v25, v23);
    v26 = *(*(v75 + 56) + 8 * v25);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C0);
    v28 = *(v27 + 48);
    (*(v22 + 32))(v20, v21, v23);
    *(v20 + v28) = v26;
    (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
    v1 = v80;

    v12 = v79;
LABEL_17:
    v29 = v1[20];
    sub_1B7715B78(v1[19], v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C0);
    if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
    {
      break;
    }

    v19 = v1[17];
    v31 = *(v1[20] + *(v30 + 48));
    (*(v1[16] + 32))(v19);
    sub_1B71F4844(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[13] = v13;
    v34 = sub_1B72454E8(v19);
    v35 = v13[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_68;
    }

    v38 = v33;
    if (v13[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v1[13];
        if (v33)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1B725CBFC();
        v13 = v1[13];
        if (v38)
        {
          goto LABEL_27;
        }
      }

LABEL_25:
      v42 = v1[16];
      v41 = v1[17];
      v43 = v1[15];
      v13[(v34 >> 6) + 8] |= 1 << v34;
      (*(v42 + 16))(v13[6] + *(v42 + 72) * v34, v41, v43);
      *(v13[7] + 8 * v34) = MEMORY[0x1E69E7CC0];
      v44 = v13[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_72;
      }

      v13[2] = v46;
      goto LABEL_27;
    }

    v19 = v1[17];
    sub_1B7249A68(v37, isUniquelyReferenced_nonNull_native);
    v39 = sub_1B72454E8(v19);
    if ((v38 & 1) != (v40 & 1))
    {

      return sub_1B78021C8();
    }

    v34 = v39;
    v13 = v1[13];
    if ((v38 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    v19 = v13[7];
    v47 = *(v31 + 16);
    v48 = *(v19 + 8 * v34);
    v1 = v48[2];
    v49 = v1 + v47;
    if (__OFADD__(v1, v47))
    {
      goto LABEL_69;
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 8 * v34) = v48;
    if (!v50 || v49 > v48[3] >> 1)
    {
      if (v1 <= v49)
      {
        v51 = v1 + v47;
      }

      else
      {
        v51 = v1;
      }

      v48 = sub_1B723F29C(v50, v51, 1, v48);
      *(v19 + 8 * v34) = v48;
    }

    v1 = v80;
    if (*(v31 + 16))
    {
      v1 = v48[2];
      v52 = (v48[3] >> 1) - v1;
      type metadata accessor for Transaction.Insight(0);
      if (v52 < v47)
      {
        goto LABEL_71;
      }

      swift_arrayInitWithCopy();

      v1 = v80;
      if (v47)
      {
        v53 = v48[2];
        v45 = __OFADD__(v53, v47);
        v54 = v53 + v47;
        if (v45)
        {
          goto LABEL_73;
        }

        v48[2] = v54;
      }
    }

    else
    {

      if (v47)
      {
        goto LABEL_70;
      }
    }

    v15 = v1[16];
    v14 = v1[17];
    v16 = v1[15];
    *(v19 + 8 * v34) = v48;
    (*(v15 + 8))(v14, v16);
    v12 = sub_1B74EACF4;
    v11 = v13;
    v10 = v76;
  }

  v57 = v1[27];
  v58 = v1[22];

  if (v57 != v58)
  {
    v2 = v1[27];
    v1[24] = v12;
    v1[25] = v78;
    v1[23] = v13;
    v61 = v1[21];
    if ((v61 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1B8CA5DC0](v2);
    }

    else
    {
      if (v2 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v19 = *(v61 + 8 * v2 + 32);
    }

    v1[26] = v19;
    v1[27] = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      v62 = *(v19 + 48);
      v63 = *(v19 + 56);
      __swift_project_boxed_opaque_existential_1((v19 + 24), v62);
      [*(v19 + 16) auditToken];
      (*(v63 + 8))(&v81, *(v1 + 60), *(v1 + 68), *(v1 + 76), *(v1 + 84), v62, v63);
      *(v1 + 41) = *&v82[9];
      v64 = *v82;
      *(v1 + 1) = v81;
      *(v1 + 2) = v64;
      v66 = v1[3];
      v65 = v1[4];

      sub_1B71B4F10((v1 + 2));
      if (v65)
      {
        v9 = v66;
      }

      else
      {
        v9 = 1280070990;
      }

      if (v65)
      {
        v2 = v65;
      }

      else
      {
        v2 = 0xE400000000000000;
      }

      if (qword_1EDAF6568 == -1)
      {
        goto LABEL_61;
      }

      goto LABEL_75;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
LABEL_61:
    v67 = sub_1B78000B8();
    __swift_project_value_buffer(v67, qword_1EDAF6570);

    v68 = sub_1B7800098();
    v69 = sub_1B78011B8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v81 = v71;
      *v70 = 136315138;
      v72 = sub_1B71A3EF8(v9, v2, &v81);

      *(v70 + 4) = v72;
      _os_log_impl(&dword_1B7198000, v68, v69, "Extension (%s) found.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x1B8CA7A40](v71, -1, -1);
      MEMORY[0x1B8CA7A40](v70, -1, -1);
    }

    else
    {
    }

    v1[12] = v19;
    v73 = swift_task_alloc();
    v1[28] = v73;
    v73[2] = v1 + 12;
    v73[3] = &unk_1B7860C40;
    v73[4] = 0;
    v74 = swift_task_alloc();
    v1[29] = v74;
    *v74 = v1;
    v74[1] = sub_1B7713EAC;

    return sub_1B72B98D8(&unk_1B7860C48);
  }

  sub_1B71F4844(v12);

  v60 = v1[1];

  return v60(v78);
}

uint64_t sub_1B7714884()
{
  v1 = *(v0 + 192);

  sub_1B71F4844(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B771494C(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v2[20] = swift_task_alloc();
  v4 = sub_1B77FFA18();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2C8);
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v2[27] = v6;
  v2[28] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B7714AC0, 0, 0);
}

uint64_t sub_1B7714AC0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[27];
  v6 = v0[28];
  v10 = v0 + 25;
  v8 = v0[25];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1B7714C70;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2D0);
  sub_1B7800CE8();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B771394C;
  v1[13] = &block_descriptor_25;
  [v6 cachedFinancialInsightsWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B7714C70()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7714D50, 0, 0);
}

uint64_t sub_1B7714D50()
{
  v1 = v0[22];
  v2 = v0[18];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[18] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v57 = (v1 + 48);
  v54 = (v1 + 32);
  v55 = (v1 + 16);
  v52 = v0[22];
  v53 = (v1 + 8);
  v58 = v0[18];

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  v56 = v4;
LABEL_4:
  v12 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v12;
LABEL_9:
    v14 = v0[20];
    v13 = v0[21];
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = *(*(v58 + 56) + 8 * (v15 | (v10 << 6)));

    v17 = v16;
    sub_1B77FF998();
    if ((*v57)(v14, 1, v13) != 1)
    {
      v19 = v0[23];
      v20 = v0[24];
      v21 = v0[21];
      v50 = v0;
      (*v54)(v20, v0[20], v21);
      v22 = *v55;
      (*v55)(v19, v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9900B8);
      v23 = *(type metadata accessor for Transaction.Insight(0) - 8);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1B7807CD0;
      v49 = v25;
      sub_1B7716054(v17 + OBJC_IVAR___XPCTransactionInsight_value, v25 + v24, type metadata accessor for Transaction.Insight);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = sub_1B72454E8(v19);
      v29 = v11[2];
      v30 = (v27 & 1) == 0;
      result = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        __break(1u);
      }

      else
      {
        v32 = v27;
        v48 = v22;
        if (v11[3] >= result)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B725CBFC();
          }
        }

        else
        {
          v33 = v50[23];
          sub_1B7249A68(result, isUniquelyReferenced_nonNull_native);
          v34 = sub_1B72454E8(v33);
          if ((v32 & 1) != (v35 & 1))
          {
LABEL_26:

            return sub_1B78021C8();
          }

          v28 = v34;
        }

        v0 = v50;
        v36 = v50[23];
        v51 = v50[24];
        v37 = v0[21];
        if (v32)
        {
          *(v11[7] + 8 * v28) = v49;
          v38 = v37;
          v39 = v36;

          v40 = *v53;
          (*v53)(v39, v38);
          v40(v51, v38);
          v4 = v56;
          goto LABEL_4;
        }

        v11[(v28 >> 6) + 8] |= 1 << v28;
        v41 = v36;
        v48(v11[6] + *(v52 + 72) * v28, v36, v37);
        *(v11[7] + 8 * v28) = v49;

        v42 = *(v52 + 8);
        v42(v41, v37);
        result = (v42)(v51, v37);
        v43 = v11[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (!v44)
        {
          v11[2] = v45;
          v4 = v56;
          goto LABEL_4;
        }
      }

      __break(1u);
      return result;
    }

    v18 = v0[20];

    sub_1B7205418(v18, &unk_1EB993A10);
    v12 = v10;
    v4 = v56;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v12;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v46 = v0[19];

  *v46 = v11;

  v47 = v0[1];

  return v47();
}

uint64_t sub_1B7715264(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B721E658;

  return FinancialInsightsService.financialInsights(for:)(a1);
}

uint64_t sub_1B77152FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B72201C8;

  return FinancialInsightsService.financialInsights()();
}

uint64_t sub_1B771538C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B723838C;

  return sub_1B7710ADC(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_1B771546C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B723838C;

  return sub_1B7710DEC(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_1B771554C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B723838C;

  return sub_1B7711114(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_1B771562C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B7201BB0;

  return sub_1B77114DC(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_1B771570C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B723838C;

  return sub_1B7711814(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_1B77157EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = *a2;
  v4[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7715814, 0, 0);
}

uint64_t sub_1B7715814()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = v0 + 24;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993170);
  *v3 = v0;
  v3[1] = sub_1B74BC120;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B7715EF8, v1, v4);
}

uint64_t sub_1B7715920(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B723838C;

  return sub_1B7711B3C(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_1B7715A00(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return sub_1B7712E4C(a1, a2, v6);
}

uint64_t sub_1B7715AB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B77157EC(a1, v4, v5, v6);
}

uint64_t sub_1B7715B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7715BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B77157EC(a1, v4, v5, v6);
}

uint64_t dispatch thunk of FinancialTransactionInsightsProviding.financialInsights(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FDB8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FinancialTransactionInsightsProviding.financialInsights()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B769AC80;

  return v7(a1, a2);
}

uint64_t sub_1B7715F34(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2D8) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B723838C;

  return sub_1B7715920(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t sub_1B7716054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7716150(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998280) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B723838C;

  return sub_1B771570C(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

void sub_1B7716270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7808C50;
  v1 = type metadata accessor for InternalTransaction.XPC(0);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2E8);
  *(v0 + 32) = v1;
  v2 = sub_1B7205540(0, &qword_1EDAF93B8);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F50);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1B7800C18();

  [v3 initWithArray_];

  sub_1B7800F88();
  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t sub_1B77166BC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C2F8) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7201BB0;

  return sub_1B771562C(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t sub_1B77167F0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C308) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B723838C;

  return sub_1B771554C(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t sub_1B7716910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7716994(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C310) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B723838C;

  return sub_1B771546C(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

uint64_t objectdestroy_18Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_24Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1B7716C1C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C318) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B723838C;

  return sub_1B771538C(a1, v6, v7, v8, v9, v1 + 6, v1 + v5);
}

id ManagedNetworkRequestEvent.__allocating_init(_:context:)(uint64_t a1, void *a2)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B78008E8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B77FFA18();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_1B77FF4F8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_1B77FE818();
  v20 = v16;
  v21 = v17;
  if ((*(v17 + 48))(v15, 1, v20) == 1)
  {
    v22 = sub_1B77FE858();
    (*(*(v22 - 8) + 8))(v60, v22);

    sub_1B7205418(v15, &unk_1EB994C70);
    return 0;
  }

  else
  {
    v24 = *(v17 + 32);
    v55 = v20;
    v24(v19, v15, v20);
    v25 = objc_allocWithZone(v57);
    v57 = a2;
    v23 = [v25 initWithContext_];
    sub_1B77FF938();
    v26 = sub_1B77FF8B8();
    (*(v10 + 8))(v12, v9);
    [v23 setEventDate_];

    sub_1B77FFA08();
    v27 = sub_1B77FF9B8();
    (*(v58 + 8))(v8, v59);
    [v23 setTraceID_];

    v28 = sub_1B77FF3F8();
    [v23 setEventURL_];

    v29 = v60;
    v30 = sub_1B77FE838();
    v32 = v29;
    if (v31 >> 60 == 15)
    {
      v33 = 0;
    }

    else
    {
      v34 = v30;
      v35 = v31;
      v33 = sub_1B77FF598();
      sub_1B72380B8(v34, v35);
    }

    [v23 setRequestBody_];

    v36 = sub_1B77FE7C8();
    v37 = v57;
    if (v36)
    {
      v38 = v21;
      v39 = objc_opt_self();
      v40 = sub_1B7800708();

      v61[0] = 0;
      v41 = [v39 dataWithJSONObject:v40 options:0 error:v61];

      v42 = v61[0];
      if (v41)
      {
        v43 = sub_1B77FF5B8();
        v45 = v44;

        sub_1B78008C8();
        sub_1B7800888();
        if (v46)
        {
          v47 = sub_1B7800838();
        }

        else
        {
          v47 = 0;
        }

        v21 = v38;
        [v23 setRequestHeaders_];

        sub_1B720A388(v43, v45);
      }

      else
      {
        v48 = v42;
        v49 = sub_1B77FF318();

        swift_willThrow();
        v21 = v38;
      }
    }

    sub_1B77FE768();
    if (v50)
    {
      v51 = sub_1B7800838();
    }

    else
    {
      v51 = 0;
    }

    [v23 setRequestMethod_];

    v52 = sub_1B77FE858();
    (*(*(v52 - 8) + 8))(v32, v52);
    (*(v21 + 8))(v19, v55);
  }

  return v23;
}

void sub_1B771738C(id *a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void))
{
  v6 = [*a1 *a4];
  a5();
}

void sub_1B77173F0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 requestBody];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B77FF5B8();
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

void sub_1B7717458(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B77FF598();
  }

  v4 = v3;
  [v2 setRequestBody_];
}

uint64_t ManagedNetworkRequestEvent.queryParameters.getter()
{
  v1 = v0;
  v2 = sub_1B77FF4F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C328);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1B77FEB48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 eventURL];
  sub_1B77FF478();

  sub_1B77FEB28();
  (*(v3 + 8))(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7205418(v8, &qword_1EB99C328);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = sub_1B77FEAF8();
    (*(v10 + 8))(v12, v9);
    return v15;
  }
}

id static ManagedNetworkRequestEvent.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedNetworkRequestEvent;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

unint64_t static ManagedNetworkRequestEvent.existingRequest(withTraceID:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedNetworkRequestEvent;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

id ManagedNetworkRequestEvent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedNetworkRequestEvent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedNetworkRequestEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void keypath_setTm_10(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  v8 = a5();
  [v7 *a6];
}

uint64_t StoreError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B7717C04()
{
  result = qword_1EB99C330[0];
  if (!qword_1EB99C330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB99C330);
  }

  return result;
}

uint64_t Transaction.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - v5;
  v7 = sub_1B77FF988();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FFA18();
  v90 = *(v9 - 8);
  v91 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v71 - v13;
  v15 = [a1 id];
  v88 = v14;
  sub_1B77FF9E8();

  v16 = [a1 accountId];
  v89 = v12;
  sub_1B77FF9E8();

  v17 = [a1 amount];
  [v17 decimalValue];
  LODWORD(v12) = v100;
  v18 = v99;

  v19 = [a1 currency];
  v20 = sub_1B7800868();
  v22 = v21;

  CurrencyAmount.init(_:currencyCode:)(v18, *(&v18 + 1), v12, v20, v22, &v99);
  v23 = [a1 foreignAmount];
  if (v23)
  {
    v84 = v6;
    v24 = v23;
    [v23 decimalValue];
    v25 = v95;
    v26 = WORD2(v95);
    v27 = WORD3(v95);
    v28 = *(&v95 + 1);
    v29 = v96;

    v30 = [a1 foreignCurrency];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1B7800868();
      v34 = v33;

      CurrencyAmount.init(_:currencyCode:)(v25 | (v26 << 32) | (v27 << 48), v28, v29, v32, v34, &v95);
      v85 = v96;
      v86 = v95;
      v87 = v97;
    }

    else
    {
      v87 = 0;
      v86 = 0u;
      v85 = 0u;
    }

    v6 = v84;
  }

  else
  {
    v87 = 0;
    v86 = 0u;
    v85 = 0u;
  }

  v35 = [a1 foreignCurrencyExchangeRate];
  v36 = v35;
  if (v35)
  {
    [v35 decimalValue];
    v83 = *(&v95 + 1);
    v84 = v95;
    v82 = v96;
  }

  else
  {
    v84 = 0;
    v83 = 0;
    v82 = 0;
  }

  ManagedTransaction.creditDebitIndicator.getter(&v95);
  v81 = v95;
  v80 = ManagedTransaction.displayDescription.getter();
  v79 = v37;
  v38 = [a1 originalTransactionDescription];
  v78 = sub_1B7800868();
  v77 = v39;

  v40 = [a1 merchantCategoryCodeValue];
  if (v40 < 0)
  {
    v76 = 0;
  }

  else
  {
    v76 = [a1 merchantCategoryCodeValue];
  }

  v41 = [a1 merchantName];
  if (v41)
  {
    v42 = v41;
    v75 = sub_1B7800868();
    v74 = v43;
  }

  else
  {
    v75 = 0;
    v74 = 0;
  }

  TransactionType.init(rawValue:)([a1 transactionTypeValue]);
  v44 = v98;
  ManagedTransaction.status.getter(&v98);
  v73 = v98;
  v45 = [a1 transactionDate];
  sub_1B77FF928();

  v46 = [a1 postedDate];
  if (v46)
  {
    v47 = v46;
    sub_1B77FF928();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v72 = v40 < 0;
  v49 = v36 == 0;

  v51 = v92;
  v50 = v93;
  v52 = v6;
  (*(v92 + 56))(v6, v48, 1, v93);
  if (v44 == 17)
  {
    v53 = 0;
  }

  else
  {
    v53 = v44;
  }

  v54 = v91;
  v55 = *(v90 + 32);
  v55(a2, v88, v91);
  v56 = type metadata accessor for Transaction();
  v55(a2 + v56[5], v89, v54);
  v57 = a2 + v56[6];
  v58 = v100;
  *v57 = v99;
  *(v57 + 16) = v58;
  *(v57 + 32) = v101;
  v59 = a2 + v56[7];
  v60 = v85;
  *v59 = v86;
  *(v59 + 16) = v60;
  *(v59 + 32) = v87;
  v61 = a2 + v56[8];
  v62 = v83;
  *v61 = v84;
  *(v61 + 8) = v62;
  *(v61 + 16) = v82;
  *(v61 + 20) = v49;
  *(a2 + v56[9]) = v81;
  v63 = (a2 + v56[10]);
  v64 = v79;
  *v63 = v80;
  v63[1] = v64;
  v65 = (a2 + v56[11]);
  v66 = v77;
  *v65 = v78;
  v65[1] = v66;
  v67 = a2 + v56[12];
  *v67 = v76;
  *(v67 + 2) = v72;
  v68 = (a2 + v56[13]);
  v69 = v74;
  *v68 = v75;
  v68[1] = v69;
  *(a2 + v56[14]) = v53;
  *(a2 + v56[15]) = v73;
  (*(v51 + 32))(a2 + v56[16], v94, v50);
  return sub_1B7205340(v52, a2 + v56[17]);
}

void ManagedTransaction.transactionAmount.setter(__int128 *a1)
{
  v4 = *a1;
  LODWORD(v5) = *(a1 + 4);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v1 setAmount_];

  v3 = sub_1B7800838();

  [v1 setCurrency_];
}

void ManagedTransaction.foreignCurrencyAmount.setter(void *a1)
{
  if (a1[4])
  {
    v2 = a1[2];
    v3 = a1[1];
    v4 = HIDWORD(*a1);
    v5 = HIWORD(*a1);
    v8 = *a1;
    v9 = v4;
    v10 = v5;
    v11 = v3;
    v12 = v2;
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
    [v1 setForeignAmount_];

    v7 = sub_1B7800838();
  }

  else
  {
    [v1 setForeignAmount_];
    v7 = 0;
  }

  [v1 setForeignCurrency_];
}

id ManagedTransaction.merchantCategoryCode.setter(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1;
  }

  return [v1 setMerchantCategoryCodeValue_];
}

id ManagedTransaction.status.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 statusValue];
  if (result > 4)
  {
    sub_1B7801A78();

    [v2 statusValue];
    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

FinanceKit::TransactionType_optional ManagedTransaction.transactionType.getter@<W0>(_BYTE *a1@<X8>)
{
  result.value = TransactionType.init(rawValue:)([v1 transactionTypeValue]).value;
  v4 = v5;
  if (v5 == 17)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void ManagedTransaction.transactionAmount.getter(uint64_t a1@<X8>)
{
  v3 = [v1 amount];
  [v3 decimalValue];

  v4 = [v1 currency];
  v5 = sub_1B7800868();
  v7 = v6;

  CurrencyAmount.init(_:currencyCode:)(v8, v9, v10, v5, v7, a1);
}

void sub_1B77187D8(id *a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void))
{
  v6 = [*a1 *a4];
  a5();
}

uint64_t sub_1B771883C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 postedDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B77188E0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setPostedDate_];
}

id ManagedTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedTransaction.__allocating_init(_:for:context:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1B771A0EC(a1, a2, a3);

  return v5;
}

{
  v5 = sub_1B7719F1C(a1, a2, a3);

  return v5;
}

double ManagedTransaction.foreignCurrencyAmount.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 foreignAmount];
  if (v4 && (v5 = v4, [v4 decimalValue], v6 = v19, v7 = WORD2(v19), v8 = WORD3(v19), v9 = *(&v19 + 1), v10 = v20, v5, (v11 = objc_msgSend(v2, sel_foreignCurrency)) != 0))
  {
    v12 = v11;
    v13 = sub_1B7800868();
    v15 = v14;

    CurrencyAmount.init(_:currencyCode:)(v6 | (v7 << 32) | (v8 << 48), v9, v10, v13, v15, &v19);
    v16 = v21;
    result = *&v19;
    v18 = v20;
    *a1 = v19;
    *(a1 + 16) = v18;
    *(a1 + 32) = v16;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id ManagedTransaction.creditDebitIndicator.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 creditDebitIndicatorValue];
  if (!result)
  {
    v5 = 0;
LABEL_4:
    *a1 = v5;
    return result;
  }

  v5 = result;
  if (result == 1)
  {
    goto LABEL_4;
  }

  sub_1B7801A78();

  [v2 creditDebitIndicatorValue];
  v6 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v6);

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t ManagedTransaction.merchantCategoryCode.getter()
{
  v1 = [v0 merchantCategoryCodeValue];
  if (v1 < 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v0 merchantCategoryCodeValue];
  }

  return v2 | ((v1 < 0) << 16);
}

double sub_1B7718E58@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 amount];
  [v4 decimalValue];
  v5 = v14;
  v6 = v13;

  v7 = [v3 currency];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v6, *(&v6 + 1), v5, v8, v10, &v13);
  result = *&v13;
  v12 = v14;
  *a2 = v13;
  *(a2 + 16) = v12;
  *(a2 + 32) = v15;
  return result;
}

void (*ManagedTransaction.transactionAmount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 160) = v2;
  v6 = [v2 amount];
  [v6 decimalValue];

  v7 = [v2 currency];
  v8 = sub_1B7800868();
  v10 = v9;

  CurrencyAmount.init(_:currencyCode:)(v12, v13, v14, v8, v10, v5);
  return sub_1B74D7B40;
}

void sub_1B7719040(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;

  ManagedTransaction.foreignCurrencyAmount.setter(v3);
}

void (*ManagedTransaction.foreignCurrencyAmount.modify(uint64_t *a1))(char **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v2;
  v6 = [v2 foreignAmount];
  if (v6 && (v7 = v6, [v6 decimalValue], v8 = v21, v9 = WORD2(v21), v10 = WORD3(v21), v11 = *(&v21 + 1), v12 = v22, v7, (v13 = objc_msgSend(v2, sel_foreignCurrency)) != 0))
  {
    v14 = v13;
    v15 = sub_1B7800868();
    v17 = v16;

    CurrencyAmount.init(_:currencyCode:)(v8 | (v9 << 32) | (v10 << 48), v11, v12, v15, v17, &v21);
    v18 = v23;
    v19 = v22;
    *v5 = v21;
    *(v5 + 16) = v19;
    *(v5 + 32) = v18;
  }

  else
  {
    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
  }

  return sub_1B77191D4;
}

void sub_1B77191D4(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 15);
  if (a2)
  {
    if (v3)
    {
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      v8 = *v2;
      v7 = *(v2 + 1);
      v9 = HIDWORD(*v2);
      v10 = HIWORD(*v2);
      v21 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      *(v2 + 5) = v8;
      *(v2 + 6) = v7;
      *(v2 + 7) = v6;
      *(v2 + 8) = v5;
      *(v2 + 9) = v3;
      sub_1B7215720((v2 + 40), (v2 + 80));
      *(v2 + 20) = v8;
      *(v2 + 42) = v9;
      *(v2 + 43) = v10;
      *(v2 + 11) = v7;
      *(v2 + 24) = v6;
      v11 = [v21 initWithDecimal_];
      [v4 setForeignAmount_];

      v12 = sub_1B7800838();
    }

    else
    {
      [*(*a1 + 15) setForeignAmount_];
      v12 = 0;
    }

    [*(v2 + 15) setForeignCurrency_];
  }

  else
  {
    if (v3)
    {
      v13 = *(v2 + 2);
      v15 = *v2;
      v14 = *(v2 + 1);
      v16 = HIDWORD(*v2);
      v17 = HIWORD(*v2);
      v18 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      *(v2 + 10) = v15;
      *(v2 + 22) = v16;
      *(v2 + 23) = v17;
      *(v2 + 6) = v14;
      *(v2 + 14) = v13;
      v19 = [v18 initWithDecimal_];
      [v4 setForeignAmount_];

      v20 = sub_1B7800838();
    }

    else
    {
      [*(*a1 + 15) setForeignAmount_];
      v20 = 0;
    }

    [*(v2 + 15) setForeignCurrency_];
  }

  free(v2);
}

id (*ManagedTransaction.creditDebitIndicator.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedTransaction.creditDebitIndicator.getter((a1 + 8));
  return sub_1B74D7198;
}

id (*ManagedTransaction.merchantCategoryCode.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 merchantCategoryCodeValue];
  if (v4 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 merchantCategoryCodeValue];
  }

  *(a1 + 8) = v5;
  *(a1 + 10) = v4 < 0;
  return sub_1B7719500;
}

id sub_1B7719500(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 10))
  {
    v1 = -1;
  }

  return [*a1 setMerchantCategoryCodeValue_];
}

id (*ManagedTransaction.status.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedTransaction.status.getter((a1 + 8));
  return sub_1B74C4A2C;
}

id (*ManagedTransaction.transactionType.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  TransactionType.init(rawValue:)([v1 transactionTypeValue]);
  v3 = v5;
  if (v5 == 17)
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_1B77195EC;
}

Swift::Void __swiftcall ManagedTransaction.setNeedsSpotlightReindexing()()
{
  v1 = ([v0 spotlightGeneration] + 1);

  [v0 setSpotlightGeneration_];
}

void _s10FinanceKit18ManagedTransactionC6update_07withRawD0yAC_AA0G15BankConnectDataO0D0VtFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v74 - v5;
  v6 = type metadata accessor for RawBankConnectData.Transaction(0);
  v7 = a2 + v6[14];
  v8 = *(v7 + 16);
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  v12 = *v7;
  v11 = *(v7 + 8);

  CurrencyAmount.init(_:currencyCode:)(v12, v11, v8, v9, v10, v80);
  v89 = *v80;
  v90 = *&v80[16];
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [a1 setAmount_];

  v14 = sub_1B7800838();

  [a1 setCurrency_];

  v15 = v6[15];
  v78 = a2;
  v16 = a2 + v15;
  v17 = *(v16 + 56);
  if (v17)
  {
    v18 = *(v16 + 48);
    v19 = *(v16 + 16);
    v21 = *v16;
    v20 = *(v16 + 8);

    CurrencyAmount.init(_:currencyCode:)(v21, v20, v19, v18, v17, v80);
    LODWORD(v20) = *v80;
    v22 = v81;
    v76 = *&v80[4];
    v23 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *v80 = v20;
    *&v80[4] = v76;
    v24 = [v23 initWithDecimal_];
  }

  else
  {
    v24 = 0;
    v22 = 0;
  }

  [a1 setForeignAmount_];

  if (v22)
  {
    v25 = sub_1B7800838();
  }

  else
  {
    v25 = 0;
  }

  [a1 setForeignCurrency_];

  v26 = v78;
  v27 = sub_1B7800838();
  [a1 setTransactionDescription_];

  if (!*(v26 + v6[9] + 8))
  {
  }

  v28 = sub_1B7800838();

  [a1 setOriginalTransactionDescription_];

  if (v17)
  {
    if (*(v16 + 44))
    {
      v17 = 0;
    }

    else
    {
      v29 = *(v16 + 24);
      v30 = *(v16 + 32);
      v31 = *(v16 + 40);
      v75 = v6;
      *&v76 = a1;
      v32 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      *v80 = v29;
      *&v80[8] = v30;
      v6 = v75;
      *&v80[16] = v31;
      a1 = v76;
      v17 = [v32 initWithDecimal_];
    }
  }

  [a1 setForeignCurrencyExchangeRate_];

  v33 = v78;
  [a1 setCreditDebitIndicatorValue_];
  v34 = (v33 + v6[16]);
  v35 = v34[7];
  v85 = v34[6];
  v86 = v35;
  v36 = v34[9];
  v87 = v34[8];
  v88 = v36;
  v37 = v34[3];
  v81 = v34[2];
  v82 = v37;
  v38 = v34[5];
  v83 = v34[4];
  v84 = v38;
  v39 = v34[1];
  *v80 = *v34;
  *&v80[16] = v39;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v80) == 1)
  {
    goto LABEL_77;
  }

  v40 = *&v80[8];
  if (!*&v80[8])
  {
    goto LABEL_77;
  }

  v41 = *v80;
  v42 = HIBYTE(*&v80[8]) & 0xFLL;
  v43 = *v80 & 0xFFFFFFFFFFFFLL;
  if (!((*&v80[8] & 0x2000000000000000) != 0 ? HIBYTE(*&v80[8]) & 0xFLL : *v80 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_77;
  }

  if ((*&v80[8] & 0x1000000000000000) != 0)
  {

    v47 = sub_1B75D589C(v41, v40, 10);

    if ((v47 & 0x10000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if ((*&v80[8] & 0x2000000000000000) != 0)
  {
    *&v89 = *v80;
    *(&v89 + 1) = *&v80[8] & 0xFFFFFFFFFFFFFFLL;
    if (v80[0] == 43)
    {
      if (v42)
      {
        if (--v42)
        {
          LOWORD(v47) = 0;
          v57 = &v89 + 1;
          while (1)
          {
            v58 = *v57 - 48;
            if (v58 > 9)
            {
              break;
            }

            v59 = (10 * v47);
            if (v59 != 10 * v47)
            {
              break;
            }

            v47 = v59 + v58;
            if ((v59 + v58) != v47)
            {
              break;
            }

            ++v57;
            if (!--v42)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_90:
      __break(1u);
      return;
    }

    if (v80[0] != 45)
    {
      if (v42)
      {
        LOWORD(v47) = 0;
        v62 = &v89;
        while (1)
        {
          v63 = *v62 - 48;
          if (v63 > 9)
          {
            break;
          }

          v64 = (10 * v47);
          if (v64 != 10 * v47)
          {
            break;
          }

          v47 = v64 + v63;
          if ((v64 + v63) != v47)
          {
            break;
          }

          ++v62;
          if (!--v42)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v42)
    {
      if (--v42)
      {
        LOWORD(v47) = 0;
        v51 = &v89 + 1;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          v53 = (10 * v47);
          if (v53 != 10 * v47)
          {
            break;
          }

          v47 = v53 - v52;
          if ((v53 - v52) != v47)
          {
            break;
          }

          ++v51;
          if (!--v42)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_88;
  }

  if ((*v80 & 0x1000000000000000) != 0)
  {
    v45 = ((*&v80[8] & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v45 = sub_1B7801B48();
  }

  v46 = *v45;
  if (v46 == 43)
  {
    if (v43 >= 1)
    {
      v42 = v43 - 1;
      if (v43 != 1)
      {
        LOWORD(v47) = 0;
        if (v45)
        {
          v54 = v45 + 1;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              goto LABEL_75;
            }

            v56 = (10 * v47);
            if (v56 != 10 * v47)
            {
              goto LABEL_75;
            }

            v47 = v56 + v55;
            if ((v56 + v55) != v47)
            {
              goto LABEL_75;
            }

            ++v54;
            if (!--v42)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_67;
      }

      goto LABEL_75;
    }

    goto LABEL_89;
  }

  if (v46 == 45)
  {
    if (v43 >= 1)
    {
      v42 = v43 - 1;
      if (v43 != 1)
      {
        LOWORD(v47) = 0;
        if (v45)
        {
          v48 = v45 + 1;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              goto LABEL_75;
            }

            v50 = (10 * v47);
            if (v50 != 10 * v47)
            {
              goto LABEL_75;
            }

            v47 = v50 - v49;
            if ((v50 - v49) != v47)
            {
              goto LABEL_75;
            }

            ++v48;
            if (!--v42)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_67:
        LOBYTE(v42) = 0;
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v43)
  {
    LOWORD(v47) = 0;
    if (v45)
    {
      while (1)
      {
        v60 = *v45 - 48;
        if (v60 > 9)
        {
          goto LABEL_75;
        }

        v61 = (10 * v47);
        if (v61 != 10 * v47)
        {
          goto LABEL_75;
        }

        v47 = v61 + v60;
        if ((v61 + v60) != v47)
        {
          goto LABEL_75;
        }

        ++v45;
        if (!--v43)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_75:
  LOWORD(v47) = 0;
  LOBYTE(v42) = 1;
LABEL_76:
  v79[0] = v42;
  if (v42)
  {
LABEL_77:
    LOWORD(v47) = -1;
  }

LABEL_78:
  [a1 setMerchantCategoryCodeValue_];
  if (*(v78 + v6[13]) == 16)
  {
    v65 = 0;
  }

  else
  {
    v79[0] = *(v78 + v6[13]);
    TransactionType.init(_:)(v79, &v89);
    v65 = v89;
  }

  [a1 setTransactionTypeValue_];
  v66 = v78;
  [a1 setStatusValue_];
  v67 = sub_1B77FF8B8();
  [a1 setTransactionDate_];

  v68 = v66 + v6[6];
  v69 = v77;
  sub_1B7280900(v68, v77);
  v70 = sub_1B77FF988();
  v71 = *(v70 - 8);
  v72 = 0;
  if ((*(v71 + 48))(v69, 1, v70) != 1)
  {
    v73 = v77;
    v72 = sub_1B77FF8B8();
    (*(v71 + 8))(v73, v70);
  }

  [a1 setPostedDate_];
}

id sub_1B7719F1C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(v4) initWithContext_];
  sub_1B77FFA08();
  v13 = sub_1B77FF9B8();
  v14 = *(v9 + 8);
  v14(v11, v8);
  [v12 setId_];

  v15 = [a2 publicAccountObject];
  v16 = [v15 id];

  sub_1B77FF9E8();
  v17 = sub_1B77FF9B8();
  v14(v11, v8);
  [v12 setAccountId_];

  _s10FinanceKit18ManagedTransactionC6update_07withRawD0yAC_AA0G15BankConnectDataO0D0VtFZ_0(v12, a1);
  sub_1B771A7DC(a1, type metadata accessor for RawBankConnectData.Transaction);
  return v12;
}

id sub_1B771A0EC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v53 - v9;
  v10 = sub_1B77FFA18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(v4) initWithContext_];
  v15 = sub_1B77FF9B8();
  [v14 setId_];

  v16 = [a2 publicAccountObject];
  v17 = [v16 id];

  sub_1B77FF9E8();
  v18 = sub_1B77FF9B8();
  (*(v11 + 8))(v13, v10);
  [v14 setAccountId_];

  v19 = type metadata accessor for InternalTransaction(0);
  v20 = a1 + v19[8];
  v61 = *v20;
  v62 = *(v20 + 16);
  v21 = objc_allocWithZone(MEMORY[0x1E696AB90]);
  v59 = v61;
  v60 = v62;
  v22 = [v21 initWithDecimal_];
  [v14 setAmount_];

  v23 = sub_1B7800838();
  [v14 setCurrency_];

  v24 = (a1 + v19[9]);
  v25 = v24[4];
  v58 = a1;
  if (v25)
  {
    v27 = v24[2];
    v26 = v24[3];
    v28 = *v24;
    v29 = v24[1];
    v30 = HIDWORD(*v24);
    v31 = HIWORD(*v24);
    v54 = HIWORD(v29);
    v55 = v27 >> 16;
    v56 = v26;
    v32 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    LODWORD(v59) = v28;
    WORD2(v59) = v30;
    WORD3(v59) = v31;
    DWORD2(v59) = v29;
    WORD6(v59) = WORD2(v29);
    a1 = v58;
    HIWORD(v59) = v54;
    LOWORD(v60) = v27;
    HIWORD(v60) = v55;
    v33 = [v32 initWithDecimal_];
    [v14 setForeignAmount_];

    v25 = sub_1B7800838();
  }

  else
  {
    [v14 setForeignAmount_];
  }

  [v14 setForeignCurrency_];

  v34 = a1 + v19[10];
  if (*(v34 + 20))
  {
    v35 = 0;
  }

  else
  {
    v36 = *(v34 + 16);
    v38 = *v34;
    v37 = *(v34 + 8);
    v39 = HIDWORD(*v34);
    v40 = HIWORD(*v34);
    LODWORD(v56) = HIWORD(v36);
    v41 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    LODWORD(v59) = v38;
    WORD2(v59) = v39;
    WORD3(v59) = v40;
    *(&v59 + 1) = v37;
    LOWORD(v60) = v36;
    a1 = v58;
    HIWORD(v60) = v56;
    v35 = [v41 initWithDecimal_];
  }

  v42 = v57;
  [v14 setForeignCurrencyExchangeRate_];

  [v14 setCreditDebitIndicatorValue_];
  v43 = a1 + v19[12];
  if (*(v43 + 2))
  {
    v44 = -1;
  }

  else
  {
    v44 = *v43;
  }

  [v14 setMerchantCategoryCodeValue_];
  if (*(a1 + v19[13] + 8))
  {
    v45 = sub_1B7800838();
  }

  else
  {
    v45 = 0;
  }

  [v14 setMerchantName_];

  [v14 setTransactionTypeValue_];
  [v14 setStatusValue_];
  v46 = sub_1B7800838();
  [v14 setTransactionDescription_];

  v47 = sub_1B7800838();
  [v14 setOriginalTransactionDescription_];

  v48 = sub_1B77FF8B8();
  [v14 setTransactionDate_];

  sub_1B7280900(a1 + v19[20], v42);
  v49 = sub_1B77FF988();
  v50 = *(v49 - 8);
  v51 = 0;
  if ((*(v50 + 48))(v42, 1, v49) != 1)
  {
    v51 = sub_1B77FF8B8();
    (*(v50 + 8))(v42, v49);
  }

  [v14 setPostedDate_];

  sub_1B771A7DC(a1, type metadata accessor for InternalTransaction);
  return v14;
}

void keypath_setTm_11(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  v8 = a5();
  [v7 *a6];
}

uint64_t sub_1B771A7DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CodableWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023A8();
  if (!v3)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    sub_1B727A53C();
    sub_1B7802098();
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_1B720ABEC(v13, v14);
    v8 = sub_1B77EEC00();
    sub_1B720A388(v13, v14);
    [v8 setRequiresSecureCoding_];
    sub_1B7800868();
    v10 = sub_1B78014F8();

    if (v10)
    {
      sub_1B720A388(v13, v14);

      __swift_destroy_boxed_opaque_existential_1(v15);
      *a3 = v10;
    }

    else
    {
      v17 = sub_1B7801B18();
      swift_allocError();
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v12 = a2;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B7802398();
      sub_1B7801AE8();
      (*(*(v17 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8]);
      swift_willThrow();

      sub_1B720A388(v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableWrapper.encode(to:)(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023D8();
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1B77FF5B8();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_1B727A60C();
    sub_1B78020B8();
    sub_1B720A388(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_1B77FF318();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void CodableWrapper.hash(into:)()
{
  v1 = *v0;
  sub_1B7801568();
}

uint64_t CodableWrapper.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  v2 = v1;
  sub_1B7801568();

  return sub_1B7802368();
}

uint64_t sub_1B771AD90()
{
  sub_1B78022F8();
  CodableWrapper.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B771ADE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FinanceStore.foundInViewModelsForTransaction(withID:primaryAccountIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B771AE64, 0, 0);
}

uint64_t sub_1B771AE64()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1B7227A08;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_1B771AF08(v6, v4, v5, v2, v3);
}

uint64_t sub_1B771AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1B7801478();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B771AFD0, 0, 0);
}

uint64_t sub_1B771AFD0()
{
  v1 = *(v0[7] + 16);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_1B73ADA9C();
    *(v1 + 16) = v2;
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  os_unfair_lock_unlock((v1 + 24));
  v10 = [*(v2 + 2) newBackgroundContext];
  v0[11] = v10;

  v11 = swift_allocObject();
  v0[12] = v11;
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v10;
  v11[5] = v9;
  v11[6] = v8;
  (*(v4 + 104))(v3, *MEMORY[0x1E695D2B8], v5);

  v10;

  v12 = swift_task_alloc();
  v0[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C3E8);
  *v12 = v0;
  v12[1] = sub_1B771B198;
  v14 = v0[10];
  v15 = v0[2];

  return MEMORY[0x1EEDB6538](v15, v14, sub_1B771D0E4, v11, v13);
}

uint64_t sub_1B771B198()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1B771B398;
  }

  else
  {
    v5 = sub_1B771B32C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B771B32C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B771B398()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1B771B404(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  type metadata accessor for ManagedInternalAccount();
  if (qword_1EDAF9AA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Institution(0);
  v11 = __swift_project_value_buffer(v10, qword_1EDAF9AB0);
  v13 = *v11;
  v12 = v11[1];
  *&v54 = a1;
  *(&v54 + 1) = a2;
  v55 = v13;
  v56 = v12;

  v14 = static ManagedInternalAccount.existingAccount(with:in:)(&v54);

  if (!v5)
  {
    if (v14 || (v14 = static ManagedInternalAccount.existingAccount(withExternalAccountID:in:)(a1, a2)) != 0 || (*&v54 = a1, *(&v54 + 1) = a2, v55 = 0xD000000000000021, v56 = 0x80000001B787E620, , v14 = static ManagedInternalAccount.existingAccount(with:in:)(&v54), , , v14))
    {
      v15 = a4;
      v16 = a3;
      v17 = v14;
      v18 = [v17 accountId];
      v19 = sub_1B7800868();
      v21 = v20;

      v22 = [v17 institutionId];
      v23 = sub_1B7800868();
      v25 = v24;

      type metadata accessor for ManagedInternalTransaction();
      *&v54 = v16;
      *(&v54 + 1) = v15;
      v55 = v19;
      v56 = v21;
      v57 = v23;
      v58 = v25;

      v26 = static ManagedInternalTransaction.existingTransaction(with:in:)(&v54);
      v32 = v15;
      v33 = v25;
      v34 = v21;
      if (v26)
      {
        v35 = v26;

        v36 = v35;
        v37 = [v35 insightsObject];
        if (v37 && (v38 = v37, v39 = [v37 foundInInsightObject], v38, v39))
        {
          sub_1B771BB18(v39, &v54);

          *a5 = v54;
        }

        else
        {
          if (qword_1EDAF6588 != -1)
          {
            swift_once();
          }

          v40 = sub_1B78000B8();
          __swift_project_value_buffer(v40, qword_1EDAF6590);
          v41 = sub_1B7800098();
          v42 = sub_1B78011F8();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&dword_1B7198000, v41, v42, "Transaction has no FoundIn insight", v43, 2u);
            MEMORY[0x1B8CA7A40](v43, -1, -1);
          }

          *a5 = 0;
        }
      }

      else
      {
        v44 = v32;
        if (qword_1EDAF6588 != -1)
        {
          swift_once();
        }

        v45 = sub_1B78000B8();
        __swift_project_value_buffer(v45, qword_1EDAF6590);

        v46 = v33;

        v47 = sub_1B7800098();
        v48 = sub_1B78011D8();

        if (os_log_type_enabled(v47, v48))
        {
          buf = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v59 = v52;
          *buf = 136315138;
          *&v54 = 0;
          *(&v54 + 1) = 0xE000000000000000;
          v50 = v48;
          sub_1B7801A78();
          MEMORY[0x1B8CA4D30](0xD000000000000033, 0x80000001B788B860);
          MEMORY[0x1B8CA4D30](v16, v44);
          MEMORY[0x1B8CA4D30](0xD000000000000023, 0x80000001B788B8A0);
          sub_1B7760FE4(v19, v34, v23, v46);
          MEMORY[0x1B8CA4D30](2695212, 0xE300000000000000);

          v49 = sub_1B71A3EF8(v54, *(&v54 + 1), &v59);

          *(buf + 4) = v49;
          _os_log_impl(&dword_1B7198000, v47, v50, "Transaction %s not found", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x1B8CA7A40](v52, -1, -1);
          MEMORY[0x1B8CA7A40](buf, -1, -1);
        }

        else
        {
        }

        *a5 = 0;
      }
    }

    else
    {
      if (qword_1EDAF6588 != -1)
      {
        swift_once();
      }

      v27 = sub_1B78000B8();
      __swift_project_value_buffer(v27, qword_1EDAF6590);

      v28 = sub_1B7800098();
      v29 = sub_1B78011D8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v54 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_1B71A3EF8(a1, a2, &v54);
        _os_log_impl(&dword_1B7198000, v28, v29, "Failed to find account for account identifier: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1B8CA7A40](v31, -1, -1);
        MEMORY[0x1B8CA7A40](v30, -1, -1);
      }

      *a5 = 0;
    }
  }
}

uint64_t sub_1B771BB18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C3F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v25 - v4);
  v31 = type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow();
  v28 = *(v31 - 8);
  v6 = MEMORY[0x1EEE9AC00](v31);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v25 - v8;
  v25 = a1;
  v9 = ManagedFoundInTransactionInsight.mailItems.getter();
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v12 = 0;
    v29 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = v10 & 0xC000000000000001;
    v13 = (v28 + 56);
    v14 = (v28 + 48);
    v15 = MEMORY[0x1E69E7CC0];
    while (v30)
    {
      v16 = MEMORY[0x1B8CA5DC0](v12, v10);
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v18 = i;
      v19 = v16;
      sub_1B771BE8C(v19, v5);
      v20 = v31;
      (*v13)(v5, 0, 1, v31);

      if ((*v14)(v5, 1, v20) == 1)
      {
        sub_1B771D108(v5);
      }

      else
      {
        v21 = v27;
        sub_1B771D170(v5, v27);
        sub_1B771D170(v21, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1B723FC10(0, v15[2] + 1, 1, v15);
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          v15 = sub_1B723FC10(v22 > 1, v23 + 1, 1, v15);
        }

        v15[2] = v23 + 1;
        sub_1B771D170(v32, v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23);
      }

      ++v12;
      i = v18;
      if (v17 == v18)
      {
        goto LABEL_21;
      }
    }

    if (v12 >= *(v29 + 16))
    {
      goto LABEL_18;
    }

    v16 = *(v10 + 8 * v12 + 32);
    v17 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_21:

  *v26 = v15;
  return result;
}

uint64_t WalletFoundInRowViewModel.mailItemRows.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B771BE8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow();
  v8 = v7[9];
  v9 = sub_1B77FF4F8();
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = [a1 messageID];
  v11 = sub_1B7800868();
  v13 = v12;

  *a2 = v11;
  a2[1] = v13;
  v14 = [a1 fromEmailAddress];
  v15 = sub_1B7800868();
  v17 = v16;

  a2[2] = v15;
  a2[3] = v17;
  v18 = [a1 dateSent];
  sub_1B77FF928();

  v19 = [a1 fromDisplayName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B7800868();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = (a2 + v7[7]);
  *v24 = v21;
  v24[1] = v23;
  v25 = [a1 subject];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1B7800868();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = (a2 + v7[8]);
  v31 = v7[10];
  *v30 = v27;
  v30[1] = v29;
  ManagedFoundInMailItem.deeplinkURL.getter(v6);
  sub_1B727CBBC(v6, a2 + v8);
  v32 = ManagedFoundInMailItem.orderDetails.getter();
  sub_1B75ECCB4(sub_1B771CC94, 0, v32);
  v34 = v33;

  v35 = sub_1B723BE38(v34);

  *(a2 + v31) = v35;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.merchantDisplayName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.merchantDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.orderNumber.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.orderNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.shippingDetailsTrackingNumber.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.shippingDetailsTrackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.shippingDetailsCarrierName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.shippingDetailsCarrierName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void sub_1B771C384(void *a1@<X0>, uint64_t a2@<X8>)
{
  FoundInMailItem.OrderDetails.EmailType.init(rawValue:)([a1 emailTypeValue]);
  v4 = [a1 merchantDisplayName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7800868();
    v26 = v7;
    v27 = v6;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v8 = [a1 orderNumber];
  if (v8)
  {
    v9 = v8;
    v24 = sub_1B7800868();
    v11 = v10;
  }

  else
  {
    v24 = 0;
    v11 = 0;
  }

  FoundInMailItem.OrderDetails.ShippingDetails.Status.init(rawValue:)([a1 shippingStatusValue]);
  v12 = [a1 shippingDetailsCarrierName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 shippingDetailsTrackingNumber];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B7800868();
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 0;
  }

  if (v28 == 10)
  {
    v22 = 0;
  }

  else
  {
    v22 = v28;
  }

  if (v29 == 9)
  {
    v23 = 0;
  }

  else
  {
    v23 = v29;
  }

  *a2 = v23;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v25;
  *(a2 + 32) = v11;
  *(a2 + 40) = v22;
  *(a2 + 48) = v19;
  *(a2 + 56) = v21;
  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[7];
  v4 = v0[9];
  sub_1B7802328();
  if (v1)
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v2)
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_1B7802318();
LABEL_6:
  sub_1B7802328();
  if (!v3)
  {
    sub_1B7802318();
    if (v4)
    {
      goto LABEL_8;
    }

    return sub_1B7802318();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v4)
  {
    return sub_1B7802318();
  }

LABEL_8:
  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.hashValue.getter()
{
  sub_1B78022F8();
  WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B771C694()
{
  sub_1B78022F8();
  WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B771C6D8()
{
  sub_1B78022F8();
  WalletFoundInRowViewModel.FoundInMailItemOrderDetailsRow.hash(into:)();
  return sub_1B7802368();
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.messageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.messageID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.fromEmailAddress.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.fromEmailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.dateSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.dateSent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.fromDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 28));

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.fromDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 32));

  return v1;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.deeplinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 36);

  return sub_1B7228664(v3, a1);
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.deeplinkURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 36);

  return sub_1B727CBBC(a1, v3);
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.orderDetails.getter()
{
  type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow();
}

uint64_t WalletFoundInRowViewModel.FoundInMailItemRow.orderDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow() + 40);

  *(v1 + v3) = a1;
  return result;
}

BOOL _s10FinanceKit25WalletFoundInRowViewModelV0de20MailItemOrderDetailsF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = a1[40];
  v7 = *(a1 + 6);
  v8 = *(a1 + 7);
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  v14 = a2[40];
  v16 = *(a2 + 6);
  v15 = *(a2 + 7);
  v17 = *(a2 + 8);
  v18 = *(a2 + 9);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v3 != v11)
    {
      v33 = *(a1 + 7);
      v35 = *(a1 + 6);
      v30 = *(a2 + 9);
      v31 = *(a2 + 8);
      v19 = *(a1 + 9);
      v20 = *(a1 + 8);
      v21 = *(a2 + 6);
      v22 = *(a2 + 7);
      v23 = a1[40];
      v24 = *(a1 + 3);
      v25 = sub_1B78020F8();
      v4 = v24;
      v6 = v23;
      v15 = v22;
      v16 = v21;
      v9 = v20;
      v10 = v19;
      v18 = v30;
      v17 = v31;
      v8 = v33;
      v7 = v35;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v5)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 == v12 && v5 == v13)
    {
      if (v6 != v14)
      {
        return 0;
      }

      goto LABEL_21;
    }

    v32 = v6;
    v34 = v15;
    v36 = v9;
    v27 = sub_1B78020F8();
    result = 0;
    if (v27)
    {
      v15 = v34;
      v9 = v36;
      if (v32 == v14)
      {
LABEL_21:
        if (v8)
        {
          if (!v15)
          {
            return 0;
          }

          if (v7 != v16 || v8 != v15)
          {
            v28 = v9;
            v29 = sub_1B78020F8();
            v9 = v28;
            if ((v29 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v15)
        {
          return 0;
        }

        if (v10)
        {
          return v18 && (v9 == v17 && v10 == v18 || (sub_1B78020F8() & 1) != 0);
        }

        return !v18;
      }
    }
  }

  else
  {
    result = 0;
    if (!v13 && v6 == v14)
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow()
{
  result = qword_1EB99C3C8;
  if (!qword_1EB99C3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B771CF20()
{
  result = qword_1EB99C3C0;
  if (!qword_1EB99C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C3C0);
  }

  return result;
}

void sub_1B771CFBC()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      sub_1B7325908();
      if (v2 <= 0x3F)
      {
        sub_1B771D080();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B771D080()
{
  if (!qword_1EB99C3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99C3E0);
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99C3D8);
    }
  }
}

uint64_t sub_1B771D108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B771D170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletFoundInRowViewModel.FoundInMailItemRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RawOrderPaymentMethod.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawOrderPaymentMethod.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static RawOrderPaymentMethod.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8();
  }
}

uint64_t sub_1B771D294(uint64_t a1)
{
  v2 = sub_1B771D448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B771D2D0(uint64_t a1)
{
  v2 = sub_1B771D448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderPaymentMethod.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C3F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B771D448();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B771D448()
{
  result = qword_1EB99C400;
  if (!qword_1EB99C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C400);
  }

  return result;
}

uint64_t RawOrderPaymentMethod.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C408);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B771D448();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801DF8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B771D628(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C3F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B771D448();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B771D788()
{
  result = qword_1EB99C410;
  if (!qword_1EB99C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C410);
  }

  return result;
}

unint64_t sub_1B771D7E0()
{
  result = qword_1EB99C418;
  if (!qword_1EB99C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C418);
  }

  return result;
}

unint64_t sub_1B771D838()
{
  result = qword_1EB99C420;
  if (!qword_1EB99C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C420);
  }

  return result;
}

id ManagedAccountPreferences.__allocating_init(_:context:)(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithContext_];
  [v5 setUserSuppressedNotifications_];

  return v5;
}

id ManagedAccountPreferences.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAccountPreferences.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAccountPreferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FinanceStore.authorizationStatus()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for FinanceStore.Message();
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B771DB08, 0, 0);
}

void sub_1B771DB08()
{
  v5 = v0;
  static DeviceInfo.deviceType.getter(&v4);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_1B771DBDC;
    v2 = v0[6];
    v3 = v0[3];

    sub_1B7276D04(v3, v2);
  }
}

uint64_t sub_1B771DBDC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1B72A820C(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B771DD40, 0, 0);
}

uint64_t sub_1B771DD40()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B771DE58(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for FinanceStore.Message();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B771DEEC, 0, 0);
}

uint64_t sub_1B771DEEC()
{
  *(v0 + 112) = *(*(v0 + 88) + 24);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B771DF64, 0, 0);
}

uint64_t sub_1B771DF64()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_1B771E010;
  v2 = swift_continuation_init();
  sub_1B722F134(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B771E010()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 120) = v3;
  if (!v3)
  {
    v4 = *(v1 + 104);
    **(v1 + 80) = *(v1 + 128);
    sub_1B72A820C(v4);

    v5 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B745AED4, 0, 0);
}

uint64_t FinanceStore.requestAuthorization()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B771E198, 0, 0);
}

void sub_1B771E198()
{
  v4 = v0;
  static DeviceInfo.deviceType.getter(&v3);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_1B771E240;
    v2 = *(v0 + 24);

    sub_1B771DE58(v2);
  }
}

uint64_t sub_1B771E240()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B771E374, 0, 0);
}

uint64_t sub_1B771E374()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

unint64_t static ManagedInstitution.existingInstitution(forConsentID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t static ManagedInstitution.existingInstitution(withInstitutionID:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v6 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v3 = v10;

    return v3;
  }

  __break(1u);
  return result;
}

id static ManagedInstitution.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedInstitution.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

uint64_t static ManagedInstitution.predicateForInstitution(withInstitutionID:)(uint64_t a1, uint64_t a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

uint64_t static ManagedInstitution.predicateForInstitution(forConsentID:)(uint64_t a1, uint64_t a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return sub_1B78010E8();
}

void static ManagedInstitution.deleteInstitution(withInstitutionID:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v16.receiver = swift_getObjCClassFromMetadata();
  v16.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedInstitution;
  v7 = objc_msgSendSuper2(&v16, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B721FF04();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1B78010E8();
  [v7 setPredicate_];

  [v7 setIncludesPropertyValues_];
  v10 = sub_1B7801498();
  if (v3)
  {
    goto LABEL_12;
  }

  if (v10 >> 62)
  {
    v14 = v10;
    if (sub_1B7801958() > 1)
    {
      goto LABEL_15;
    }

    v15 = sub_1B7801958();
    v10 = v14;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 > 1)
  {
    goto LABEL_15;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_8:
    v13 = v12;

    [a3 deleteObject_];

    v7 = v13;
LABEL_12:

    return;
  }

  __break(1u);
LABEL_15:
  sub_1B7801C88();
  __break(1u);
}

id _s10FinanceKit18ManagedInstitutionC39predicateForRefreshReminderInstitutionsSo11NSPredicateCyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B781E650;
  sub_1B729D790();
  *(v0 + 32) = sub_1B78010E8();
  *(v0 + 40) = sub_1B78010E8();
  *(v0 + 48) = sub_1B78010E8();
  v1 = sub_1B7800C18();

  v2 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v2;
}

uint64_t _s10FinanceKit18ManagedInstitutionC032predicateForExcludingPlaceholderD0So11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7808C50;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1B721FF04();
  *(v0 + 32) = 25705;
  *(v0 + 40) = 0xE200000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B71FDB50(0, 2, 0);
  v1 = v10;
  v3 = *(v10 + 16);
  v2 = *(v10 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    sub_1B71FDB50((v2 > 1), v3 + 1, 1);
    v1 = v10;
    v2 = *(v10 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  v6 = v1 + 16 * v3;
  *(v6 + 32) = 0xD000000000000021;
  *(v6 + 40) = 0x80000001B787E620;
  v7 = v3 + 2;
  if (v4 < v7)
  {
    sub_1B71FDB50((v2 > 1), v7, 1);
    v1 = v10;
  }

  sub_1B729D790();
  *(v1 + 16) = v7;
  v8 = v1 + 16 * v5;
  *(v8 + 32) = 0xD000000000000015;
  *(v8 + 40) = 0x80000001B7875C90;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v0 + 104) = sub_1B7220068();
  *(v0 + 72) = v1;
  return sub_1B78010E8();
}

id ManagedOrderDashboardItemMonth.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderDashboardItemMonth.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderDashboardItemMonth.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedOrderDashboardItemMonth.addToDashboardItems(_:)(uint64_t a1)
{
  v3 = [v1 dashboardItems];
  v4 = [v3 setByAddingObject_];

  if (v4)
  {
    [v1 setDashboardItems_];
  }

  else
  {
    __break(1u);
  }
}

id static ManagedOrderDashboardItemMonth.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit30ManagedOrderDashboardItemMonth;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedOrderDashboardItemMonth.predicateForObject(year:month:)(__int16 a1, __int16 a2)
{
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7808C50;
  v5 = MEMORY[0x1E69E7290];
  v6 = MEMORY[0x1E69E72E8];
  *(v4 + 56) = MEMORY[0x1E69E7290];
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = a2;
  return sub_1B78010E8();
}

unint64_t static ManagedOrderDashboardItemMonth.getOrCreate(year:month:in:)(__int16 a1, __int16 a2, uint64_t a3)
{
  result = sub_1B771F3C0(a1, a2);
  if (!v3 && !result)
  {
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    [v8 setYear_];
    [v8 setMonth_];
    return v8;
  }

  return result;
}

unint64_t sub_1B771F3C0(__int16 a1, __int16 a2)
{
  v3 = v2;
  type metadata accessor for ManagedOrderDashboardItemMonth();
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit30ManagedOrderDashboardItemMonth;
  v6 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7808C50;
  v8 = MEMORY[0x1E69E7290];
  v9 = MEMORY[0x1E69E72E8];
  *(v7 + 56) = MEMORY[0x1E69E7290];
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = a2;
  v10 = sub_1B78010E8();
  [v6 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v3;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v13 = result;
  v14 = sub_1B7801958();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v3 = v12;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static BankConnectService.shared.getter()
{
  if (qword_1EDAF9CD8 != -1)
  {
    swift_once();
  }
}

FinanceKit::BankConnectServiceError::Code_optional __swiftcall BankConnectServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t BankConnectServiceError.errorCode.getter()
{
  result = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (result == 1)
    {
      return 2;
    }

    else if (*v0 == 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

unint64_t BankConnectServiceError.errorUserInfo.getter()
{
  if (*(v0 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7808C50;
    *(inited + 32) = sub_1B7800868();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1);
    *(inited + 80) = sub_1B7800868();
    *(inited + 88) = v4;
    v5 = BankConnectServiceError.errorDescription.getter();
    *(inited + 120) = MEMORY[0x1E69E6158];
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = 0xE000000000000000;
    if (v6)
    {
      v8 = v6;
    }

    *(inited + 96) = v7;
    *(inited + 104) = v8;
    v9 = sub_1B72018E0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
    swift_arrayDestroy();
    return v9;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];

    return sub_1B72018E0(v11);
  }
}

unint64_t BankConnectServiceError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    sub_1B7801A78();

    swift_getErrorValue();
    v2 = sub_1B7802228();
    MEMORY[0x1B8CA4D30](v2);

    return 0xD000000000000014;
  }

  else if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1B771F914(uint64_t a1)
{
  v2 = sub_1B7730490();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B771F950(uint64_t a1)
{
  v2 = sub_1B7730490();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B771F9A8()
{
  result = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (result == 1)
    {
      return 2;
    }

    else if (*v0 == 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1B771F9E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - v4;
  *(&v9 - v4) = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for BankConnectService();
  v6 = swift_allocObject();
  sub_1B77304E4(v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99CC50);
  swift_allocObject();
  v7 = sub_1B762774C(v3);
  result = sub_1B7730554(v5);
  *(v6 + 16) = v7;
  off_1EDAF9CE0 = v6;
  return result;
}

uint64_t BankConnectService.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = 0xD00000000000001ELL;
  v3[4] = 0x80000001B788BBE0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B772ABB8;
  *(v4 + 24) = v3;
  v7[4] = sub_1B720493C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B737BA64;
  v7[3] = &block_descriptor_26;
  v5 = _Block_copy(v7);
  swift_retain_n();

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

uint64_t BankConnectService.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = 0xD00000000000001ELL;
  v3[4] = 0x80000001B788BBE0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B77305C8;
  *(v4 + 24) = v3;
  v7[4] = sub_1B73BA454;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B737BA64;
  v7[3] = &block_descriptor_14_0;
  v5 = _Block_copy(v7);
  swift_retain_n();

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {

    return swift_deallocClassInstance();
  }

  return result;
}

unint64_t sub_1B771FE24(char a1)
{
  result = 0x6F63634164616F6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x417463656E6E6F63;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x65736E6F43746567;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
    case 26:
      result = 0xD000000000000029;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
    case 17:
      result = 0xD000000000000014;
      break;
    case 13:
    case 38:
      result = 0xD00000000000001ALL;
      break;
    case 14:
    case 31:
    case 36:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    case 19:
    case 27:
      result = 0xD00000000000001ELL;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD00000000000002ALL;
      break;
    case 23:
      result = 0x6D79615064616F6CLL;
      break;
    case 24:
    case 35:
      result = 0xD000000000000030;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    case 28:
      result = 0xD00000000000002BLL;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0xD000000000000011;
      break;
    case 33:
      result = 0xD000000000000023;
      break;
    case 34:
    case 39:
      result = 0xD00000000000002CLL;
      break;
    case 37:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000026;
      break;
  }

  return result;
}

uint64_t sub_1B7720248()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B772027C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788C380 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B7720358(uint64_t a1)
{
  v2 = sub_1B772AF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720394(uint64_t a1)
{
  v2 = sub_1B772AF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77203D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B772F2BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B772040C(uint64_t a1)
{
  v2 = sub_1B772AC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720448(uint64_t a1)
{
  v2 = sub_1B772AC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7720484()
{
  v1 = 0x6E6F6973736573;
  v2 = 0x7373416475617266;
  if (*v0 != 2)
  {
    v2 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1B772051C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B772FEC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7720544(uint64_t a1)
{
  v2 = sub_1B772B840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720580(uint64_t a1)
{
  v2 = sub_1B772B840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B77205BC()
{
  v1 = *v0;
  v2 = 0x7475746974736E69;
  v3 = 0xD00000000000001ELL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000018;
  if (*v0)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B772066C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B773003C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7720694(uint64_t a1)
{
  v2 = sub_1B772BA44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77206D0(uint64_t a1)
{
  v2 = sub_1B772BA44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B772070C(uint64_t a1)
{
  v2 = sub_1B772B9F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720748(uint64_t a1)
{
  v2 = sub_1B772B9F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720784(uint64_t a1)
{
  v2 = sub_1B772B798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77207C0(uint64_t a1)
{
  v2 = sub_1B772B798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77207FC(uint64_t a1)
{
  v2 = sub_1B772B060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720838(uint64_t a1)
{
  v2 = sub_1B772B060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720874(uint64_t a1)
{
  v2 = sub_1B772AD78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77208B0(uint64_t a1)
{
  v2 = sub_1B772AD78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77208EC(uint64_t a1)
{
  v2 = sub_1B772B7EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720928(uint64_t a1)
{
  v2 = sub_1B772B7EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720964(uint64_t a1)
{
  v2 = sub_1B772B99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77209A0(uint64_t a1)
{
  v2 = sub_1B772B99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B77209DC()
{
  v1 = 0x7475746974736E69;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x44496E617066;
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

uint64_t sub_1B7720A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B77301F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7720A90(uint64_t a1)
{
  v2 = sub_1B772B4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720ACC(uint64_t a1)
{
  v2 = sub_1B772B4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720B08(uint64_t a1)
{
  v2 = sub_1B772ADCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720B44(uint64_t a1)
{
  v2 = sub_1B772ADCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720B80(uint64_t a1)
{
  v2 = sub_1B772B5F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720BBC(uint64_t a1)
{
  v2 = sub_1B772B5F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720BF8(uint64_t a1)
{
  v2 = sub_1B772B5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720C34(uint64_t a1)
{
  v2 = sub_1B772B5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720C70(uint64_t a1)
{
  v2 = sub_1B772BA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720CAC(uint64_t a1)
{
  v2 = sub_1B772BA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720CE8(uint64_t a1)
{
  v2 = sub_1B772BAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720D24(uint64_t a1)
{
  v2 = sub_1B772BAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720D60(uint64_t a1)
{
  v2 = sub_1B772B744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720D9C(uint64_t a1)
{
  v2 = sub_1B772B744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720DD8(uint64_t a1)
{
  v2 = sub_1B772B2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720E14(uint64_t a1)
{
  v2 = sub_1B772B2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720E50(uint64_t a1)
{
  v2 = sub_1B772B300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720E8C(uint64_t a1)
{
  v2 = sub_1B772B300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720EC8(uint64_t a1)
{
  v2 = sub_1B772B204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720F04(uint64_t a1)
{
  v2 = sub_1B772B204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720F40(uint64_t a1)
{
  v2 = sub_1B772B258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720F7C(uint64_t a1)
{
  v2 = sub_1B772B258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7720FB8(uint64_t a1)
{
  v2 = sub_1B772B0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7720FF4(uint64_t a1)
{
  v2 = sub_1B772B0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721030(uint64_t a1)
{
  v2 = sub_1B772B108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B772106C(uint64_t a1)
{
  v2 = sub_1B772B108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77210A8(uint64_t a1)
{
  v2 = sub_1B772B69C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77210E4(uint64_t a1)
{
  v2 = sub_1B772B69C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721120(uint64_t a1)
{
  v2 = sub_1B772B4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B772115C(uint64_t a1)
{
  v2 = sub_1B772B4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721198(uint64_t a1)
{
  v2 = sub_1B772B450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77211D4(uint64_t a1)
{
  v2 = sub_1B772B450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721210(uint64_t a1)
{
  v2 = sub_1B772B3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B772124C(uint64_t a1)
{
  v2 = sub_1B772B3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721288(uint64_t a1)
{
  v2 = sub_1B772B354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77212C4(uint64_t a1)
{
  v2 = sub_1B772B354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721300(uint64_t a1)
{
  v2 = sub_1B772B8F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B772133C(uint64_t a1)
{
  v2 = sub_1B772B8F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721378(uint64_t a1)
{
  v2 = sub_1B772B648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77213B4(uint64_t a1)
{
  v2 = sub_1B772B648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77213F0(uint64_t a1)
{
  v2 = sub_1B772B1B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B772142C(uint64_t a1)
{
  v2 = sub_1B772B1B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721468(uint64_t a1)
{
  v2 = sub_1B772B15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77214A4(uint64_t a1)
{
  v2 = sub_1B772B15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77214E0(uint64_t a1)
{
  v2 = sub_1B772B6F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B772151C(uint64_t a1)
{
  v2 = sub_1B772B6F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721558(uint64_t a1)
{
  v2 = sub_1B772B3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7721594(uint64_t a1)
{
  v2 = sub_1B772B3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77215D0(uint64_t a1)
{
  v2 = sub_1B772AD24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B772160C(uint64_t a1)
{
  v2 = sub_1B772AD24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721648(uint64_t a1)
{
  v2 = sub_1B772AE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7721684(uint64_t a1)
{
  v2 = sub_1B772AE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77216C0(uint64_t a1)
{
  v2 = sub_1B772AEC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B77216FC(uint64_t a1)
{
  v2 = sub_1B772AEC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7721738()
{
  v1 = 0x6665725072657375;
  if (*v0 != 1)
  {
    v1 = 1716482913;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_1B772179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7730364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B77217C4(uint64_t a1)
{
  v2 = sub_1B772ACD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7721800(uint64_t a1)
{
  v2 = sub_1B772ACD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B772183C(uint64_t a1)
{
  v2 = sub_1B772B948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7721878(uint64_t a1)
{
  v2 = sub_1B772B948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B77218B4()
{
  if (*v0)
  {
    return 0x6465776569766572;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B77218E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465776569766572 && a2 == 0xEA00000000007441)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B77219C4(uint64_t a1)
{
  v2 = sub_1B772AE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7721A00(uint64_t a1)
{
  v2 = sub_1B772AE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7721A3C(uint64_t a1)
{
  v2 = sub_1B772B00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7721A78(uint64_t a1)
{
  v2 = sub_1B772B00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BankConnectService.Message.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C428);
  v332 = *(v2 - 8);
  v333 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v331 = &v212 - v3;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C430);
  v329 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v326 = &v212 - v4;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C438);
  v319 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v318 = &v212 - v5;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C440);
  v323 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v320 = &v212 - v6;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C448);
  v327 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  v325 = &v212 - v7;
  v8 = sub_1B77FF988();
  v339 = *(v8 - 8);
  v340 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v338 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v322 = &v212 - v11;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C450);
  v316[1] = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v314 = &v212 - v12;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C458);
  v311 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v310 = &v212 - v13;
  v316[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C460);
  v315 = *(v316[0] - 8);
  MEMORY[0x1EEE9AC00](v316[0]);
  v313 = &v212 - v14;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C468);
  v308 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v307 = &v212 - v15;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C470);
  v305 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v304 = &v212 - v16;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C478);
  v302 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v301 = &v212 - v17;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C480);
  v299 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v298 = &v212 - v18;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C488);
  v296 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v295 = &v212 - v19;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C490);
  v293[1] = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v293[0] = &v212 - v20;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C498);
  v291 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v290 = &v212 - v21;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4A0);
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v287 = &v212 - v22;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4A8);
  v285 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v284 = &v212 - v23;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4B0);
  v280[1] = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v278 = &v212 - v24;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4B8);
  v281 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v280[0] = &v212 - v25;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4C0);
  v274 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v271 = &v212 - v26;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4C8);
  v272 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v270 = &v212 - v27;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4D0);
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v267 = &v212 - v28;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4D8);
  v265 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v264 = &v212 - v29;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4E0);
  v277 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v276 = &v212 - v30;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4E8);
  v262[1] = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v260 = &v212 - v31;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4F0);
  v259 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v257 = &v212 - v32;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C4F8);
  v252 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v251 = &v212 - v33;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C500);
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v212 - v34;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C508);
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v245 = &v212 - v35;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C510);
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v242 = &v212 - v36;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C518);
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v238 = &v212 - v37;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C520);
  v237 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v236 = &v212 - v38;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C528);
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v253 = &v212 - v39;
  v213 = type metadata accessor for BankConnectAuthorizationConfiguration();
  v40 = MEMORY[0x1EEE9AC00](v213);
  v337 = &v212 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v334 = &v212 - v42;
  v214 = type metadata accessor for BankConnectAuthorizationPayload(0);
  MEMORY[0x1EEE9AC00](v214);
  v258 = &v212 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for BankConnectAuthorizationSession();
  MEMORY[0x1EEE9AC00](v233);
  v262[0] = &v212 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C530);
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v229 = &v212 - v45;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C538);
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v226 = &v212 - v46;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C540);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v212 - v47;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C548);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v220 = &v212 - v48;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C550);
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v232 = &v212 - v49;
  v341 = type metadata accessor for Institution(0);
  v50 = MEMORY[0x1EEE9AC00](v341);
  v219 = &v212 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v336 = &v212 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v218 = &v212 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v335 = &v212 - v56;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C558);
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v58 = &v212 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C560);
  v215 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v212 - v60;
  v62 = type metadata accessor for BankConnectService.Message();
  MEMORY[0x1EEE9AC00](v62);
  v64 = (&v212 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C568);
  v342 = *(v346 - 8);
  MEMORY[0x1EEE9AC00](v346);
  v66 = &v212 - v65;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B772AC18();
  v345 = v66;
  sub_1B78023F8();
  sub_1B772AC6C(v344, v64);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v159 = *v64;
      v158 = v64[1];
      v161 = v64[2];
      v160 = v64[3];
      LOBYTE(v347) = 1;
      sub_1B772BA98();
      v162 = v345;
      v163 = v346;
      sub_1B7801ED8();
      v347 = v159;
      v348 = v158;
      v349 = v161;
      v350 = v160;
      sub_1B7214EA0();
      v164 = v217;
      sub_1B7801FC8();
      (*(v216 + 8))(v58, v164);
      (*(v342 + 8))(v162, v163);

      return;
    case 2u:
      v135 = v64[3];
      v344 = v64[2];
      v136 = v64[5];
      v339 = v64[4];
      v340 = v136;
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BB08);
      v138 = v137[16];
      LODWORD(v338) = *(v64 + v137[20]);
      LODWORD(v337) = *(v64 + v137[24]);
      v139 = v335;
      sub_1B772BBB8(v64 + v138, v335, type metadata accessor for Institution);
      LOBYTE(v347) = 2;
      sub_1B772BA44();
      v140 = v232;
      v141 = v345;
      v142 = v346;
      sub_1B7801ED8();
      LOBYTE(v347) = 0;
      v143 = v235;
      v144 = v343;
      sub_1B7801F78();
      if (!v144)
      {

        v347 = v344;
        v348 = v135;
        v349 = v339;
        v350 = v340;
        v351 = 1;
        sub_1B7214EA0();
        sub_1B7801F38();
        sub_1B74204FC(v344, v135);
        LOBYTE(v347) = 2;
        sub_1B71A7340(&qword_1EB992F88, type metadata accessor for Institution);
        v208 = v335;
        sub_1B7801FC8();
        v209 = v143;
        v113 = v345;
        LOBYTE(v347) = 3;
        sub_1B7801F88();
        LOBYTE(v347) = 4;
        sub_1B7801F88();
        v112 = v346;
        (*(v234 + 8))(v140, v209);
        v145 = v208;
        goto LABEL_24;
      }

      sub_1B74204FC(v344, v135);
      (*(v234 + 8))(v140, v143);
      sub_1B772B894(v139, type metadata accessor for Institution);
      (*(v342 + 8))(v141, v142);
      return;
    case 3u:
      v110 = v218;
      sub_1B772BBB8(v64, v218, type metadata accessor for Institution);
      LOBYTE(v347) = 3;
      sub_1B772B9F0();
      v111 = v220;
      v113 = v345;
      v112 = v346;
      sub_1B7801ED8();
      sub_1B71A7340(&qword_1EB992F88, type metadata accessor for Institution);
      v114 = v222;
      sub_1B7801FC8();
      v115 = &v253;
      goto LABEL_23;
    case 4u:
      v121 = *v64;
      v120 = v64[1];
      v123 = v64[2];
      v122 = v64[3];
      LOBYTE(v347) = 4;
      sub_1B772B99C();
      v85 = v223;
      v87 = v345;
      v86 = v346;
      sub_1B7801ED8();
      v347 = v121;
      v348 = v120;
      v349 = v123;
      v350 = v122;
      sub_1B7214EA0();
      v88 = v225;
      sub_1B7801FC8();
      v89 = &v256;
      goto LABEL_55;
    case 5u:
      LOBYTE(v347) = 5;
      sub_1B772B948();
      v124 = v226;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v228;
      sub_1B7801F78();

      v128 = &v259;
      goto LABEL_47;
    case 6u:
      LOBYTE(v347) = 6;
      sub_1B772B8F4();
      v124 = v229;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v231;
      sub_1B7801F78();

      v128 = v262;
      goto LABEL_47;
    case 7u:
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B0);
      v147 = v146[12];
      v344 = *(v64 + v146[16]);
      v148 = v146[20];
      v149 = v262[0];
      sub_1B772BBB8(v64, v262[0], type metadata accessor for BankConnectAuthorizationSession);
      v150 = v258;
      sub_1B772BBB8(v64 + v147, v258, type metadata accessor for BankConnectAuthorizationPayload);
      v151 = v64 + v148;
      v152 = v334;
      sub_1B772BBB8(v151, v334, type metadata accessor for BankConnectAuthorizationConfiguration);
      LOBYTE(v347) = 7;
      sub_1B772B840();
      v153 = v253;
      v155 = v345;
      v154 = v346;
      sub_1B7801ED8();
      LOBYTE(v347) = 0;
      sub_1B71A7340(&qword_1EB99C6B0, type metadata accessor for BankConnectAuthorizationSession);
      v156 = v256;
      v157 = v343;
      sub_1B7801FC8();
      if (v157)
      {

        (*(v255 + 8))(v153, v156);
        sub_1B772B894(v152, type metadata accessor for BankConnectAuthorizationConfiguration);
        sub_1B772B894(v150, type metadata accessor for BankConnectAuthorizationPayload);
        sub_1B772B894(v149, type metadata accessor for BankConnectAuthorizationSession);
        (*(v342 + 8))(v155, v154);
      }

      else
      {
        LOBYTE(v347) = 1;
        sub_1B71A7340(&qword_1EB99C6B8, type metadata accessor for BankConnectAuthorizationPayload);
        sub_1B7801FC8();
        v347 = v344;
        v351 = 2;
        type metadata accessor for FraudAssessmentResult();
        sub_1B71A7340(&qword_1EB99C6C0, type metadata accessor for FraudAssessmentResult);
        sub_1B7801FC8();
        v210 = v345;
        LOBYTE(v347) = 3;
        sub_1B71A7340(&qword_1EB99C648, type metadata accessor for BankConnectAuthorizationConfiguration);
        v211 = v334;
        sub_1B7801FC8();

        (*(v255 + 8))(v153, v156);
        sub_1B772B894(v211, type metadata accessor for BankConnectAuthorizationConfiguration);
        sub_1B772B894(v150, type metadata accessor for BankConnectAuthorizationPayload);
        sub_1B772B894(v149, type metadata accessor for BankConnectAuthorizationSession);
        (*(v342 + 8))(v210, v346);
      }

      return;
    case 8u:
      v172 = *v64;
      LOBYTE(v347) = 8;
      sub_1B772B7EC();
      v173 = v236;
      v175 = v345;
      v174 = v346;
      sub_1B7801ED8();
      v347 = v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997038);
      sub_1B772BCC4(&qword_1EB9970C0, sub_1B7550C68);
      v176 = v239;
      sub_1B7801FC8();
      (*(v237 + 8))(v173, v176);
      (*(v342 + 8))(v175, v174);

      return;
    case 9u:
      v130 = *v64;
      v129 = v64[1];
      LOBYTE(v347) = 9;
      sub_1B772B798();
      v131 = v238;
      v133 = v345;
      v132 = v346;
      sub_1B7801ED8();
      v347 = v130;
      v348 = v129;
      sub_1B727A60C();
      v134 = v241;
      sub_1B7801FC8();
      (*(v240 + 8))(v131, v134);
      (*(v342 + 8))(v133, v132);
      sub_1B720A388(v130, v129);
      return;
    case 0xAu:
      LOBYTE(v347) = 10;
      sub_1B772B744();
      v124 = v242;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v244;
      sub_1B7801F78();

      v128 = &v274;
      goto LABEL_47;
    case 0xBu:
      v117 = *v64;
      v116 = v64[1];
      v119 = v64[2];
      v118 = v64[3];
      LOBYTE(v347) = 11;
      sub_1B772B6F0();
      v85 = v245;
      v87 = v345;
      v86 = v346;
      sub_1B7801ED8();
      v347 = v117;
      v348 = v116;
      v349 = v119;
      v350 = v118;
      sub_1B7214EA0();
      v88 = v247;
      sub_1B7801FC8();
      v89 = &v277;
      goto LABEL_55;
    case 0xCu:
      LOBYTE(v347) = 12;
      sub_1B772B69C();
      v124 = v248;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v250;
      sub_1B7801F78();

      v128 = v280;
      goto LABEL_47;
    case 0xDu:
      LOBYTE(v347) = 13;
      sub_1B772B648();
      v124 = v251;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v254;
      sub_1B7801F78();

      v128 = &v282;
      goto LABEL_47;
    case 0xEu:
      v105 = *v64;
      LOBYTE(v347) = 14;
      sub_1B772B5F4();
      v106 = v257;
      v108 = v345;
      v107 = v346;
      sub_1B7801ED8();
      v347 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C668);
      sub_1B772BC74(&qword_1EB99C670);
      v109 = v261;
      sub_1B7801FC8();
      (*(v259 + 8))(v106, v109);
      (*(v342 + 8))(v108, v107);

      return;
    case 0xFu:
      LOBYTE(v347) = 15;
      sub_1B772B5A0();
      v124 = v260;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v263;
      sub_1B7801F78();

      v128 = v293;
      goto LABEL_47;
    case 0x10u:
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998310);
      v344 = *(v64 + v95[12]);
      v96 = v95[16];
      LODWORD(v340) = *(v64 + v95[20]);
      v97 = v336;
      sub_1B772BBB8(v64, v336, type metadata accessor for Institution);
      v98 = v337;
      sub_1B772BBB8(v64 + v96, v337, type metadata accessor for BankConnectAuthorizationConfiguration);
      LOBYTE(v347) = 16;
      sub_1B772B4F8();
      v99 = v276;
      v100 = v345;
      v101 = v346;
      sub_1B7801ED8();
      LOBYTE(v347) = 0;
      sub_1B71A7340(&qword_1EB992F88, type metadata accessor for Institution);
      v102 = v279;
      v103 = v343;
      sub_1B7801FC8();
      if (v103)
      {

        (*(v277 + 8))(v99, v102);
        sub_1B772B894(v98, type metadata accessor for BankConnectAuthorizationConfiguration);
        v104 = v97;
      }

      else
      {
        v203 = v340;
        LOBYTE(v347) = 1;
        sub_1B7801EF8();

        LOBYTE(v347) = 2;
        sub_1B71A7340(&qword_1EB99C648, type metadata accessor for BankConnectAuthorizationConfiguration);
        v206 = v337;
        sub_1B7801FC8();
        v207 = v336;
        LOWORD(v347) = v203;
        v351 = 3;
        sub_1B772B54C();
        sub_1B7801FC8();
        (*(v277 + 8))(v99, v102);
        sub_1B772B894(v206, type metadata accessor for BankConnectAuthorizationConfiguration);
        v104 = v207;
      }

      sub_1B772B894(v104, type metadata accessor for Institution);
      (*(v342 + 8))(v100, v101);
      return;
    case 0x11u:
      LOBYTE(v347) = 19;
      sub_1B772B3FC();
      v90 = v270;
      v92 = v345;
      v91 = v346;
      sub_1B7801ED8();
      v93 = v273;
      sub_1B7801F88();
      v94 = &v302;
      goto LABEL_30;
    case 0x12u:
      LOBYTE(v347) = 21;
      sub_1B772B354();
      v169 = v280[0];
      v68 = v345;
      v67 = v346;
      sub_1B7801ED8();
      LOBYTE(v347) = 0;
      v170 = v283;
      v171 = v343;
      sub_1B7801F78();

      if (!v171)
      {
        LOBYTE(v347) = 1;
        sub_1B7801F88();
      }

      (*(v281 + 8))(v169, v170);
      goto LABEL_65;
    case 0x13u:
      LOBYTE(v347) = 22;
      sub_1B772B300();
      v124 = v278;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v282;
      sub_1B7801F78();

      v128 = &v311;
      goto LABEL_47;
    case 0x14u:
      v166 = *v64;
      v165 = v64[1];
      v168 = v64[2];
      v167 = v64[3];
      LOBYTE(v347) = 23;
      sub_1B772B2AC();
      v85 = v284;
      v87 = v345;
      v86 = v346;
      sub_1B7801ED8();
      v347 = v166;
      v348 = v165;
      v349 = v168;
      v350 = v167;
      sub_1B7214EA0();
      v88 = v286;
      sub_1B7801FC8();
      v89 = v316;
      goto LABEL_55;
    case 0x15u:
      LOBYTE(v347) = 24;
      sub_1B772B258();
      v124 = v287;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v289;
      sub_1B7801F78();

      v128 = &v318;
      goto LABEL_47;
    case 0x16u:
      v185 = *v64;
      v184 = v64[1];
      v187 = v64[2];
      v186 = v64[3];
      LOBYTE(v347) = 25;
      sub_1B772B204();
      v85 = v290;
      v87 = v345;
      v86 = v346;
      sub_1B7801ED8();
      v347 = v185;
      v348 = v184;
      v349 = v187;
      v350 = v186;
      sub_1B7214EA0();
      v88 = v292;
      sub_1B7801FC8();
      v89 = &v321;
      goto LABEL_55;
    case 0x17u:
      LOBYTE(v347) = 26;
      sub_1B772B1B0();
      v124 = v293[0];
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v294;
      sub_1B7801F78();

      v128 = &v324;
      goto LABEL_47;
    case 0x18u:
      LOBYTE(v347) = 27;
      sub_1B772B15C();
      v124 = v295;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v297;
      sub_1B7801F78();

      v128 = &v327;
      goto LABEL_47;
    case 0x19u:
      LOBYTE(v347) = 28;
      sub_1B772B108();
      v124 = v298;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v300;
      sub_1B7801F78();

      v128 = &v330;
      goto LABEL_47;
    case 0x1Au:
      v199 = *v64;
      v198 = v64[1];
      v201 = v64[2];
      v200 = v64[3];
      LOBYTE(v347) = 29;
      sub_1B772B0B4();
      v85 = v301;
      v87 = v345;
      v86 = v346;
      sub_1B7801ED8();
      v347 = v199;
      v348 = v198;
      v349 = v201;
      v350 = v200;
      sub_1B7214EA0();
      v88 = v303;
      sub_1B7801FC8();
      v89 = &v333;
      goto LABEL_55;
    case 0x1Bu:
      v82 = *v64;
      v81 = v64[1];
      v84 = v64[2];
      v83 = v64[3];
      LOBYTE(v347) = 30;
      sub_1B772B060();
      v85 = v304;
      v87 = v345;
      v86 = v346;
      sub_1B7801ED8();
      v347 = v82;
      v348 = v81;
      v349 = v84;
      v350 = v83;
      sub_1B7214EA0();
      v88 = v306;
      sub_1B7801FC8();
      v89 = &v336;
      goto LABEL_55;
    case 0x1Cu:
      v190 = *v64;
      v189 = v64[1];
      v192 = v64[2];
      v191 = v64[3];
      LOBYTE(v347) = 31;
      sub_1B772B00C();
      v85 = v307;
      v87 = v345;
      v86 = v346;
      sub_1B7801ED8();
      v347 = v190;
      v348 = v189;
      v349 = v192;
      v350 = v191;
      sub_1B7214EA0();
      v88 = v309;
      sub_1B7801FC8();
      v89 = &v339;
LABEL_55:
      (*(*(v89 - 32) + 8))(v85, v88);
      (*(v342 + 8))(v87, v86);

      goto LABEL_56;
    case 0x1Du:
      v193 = *v64;
      LOBYTE(v347) = 32;
      sub_1B772AF1C();
      v194 = v313;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v347 = v193;
      v351 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
      sub_1B772AF70(&qword_1EB98F710, &qword_1EB98F718);
      v195 = v316[0];
      v196 = v343;
      sub_1B7801FC8();
      if (v196)
      {
        (*(v315 + 8))(v194, v195);
        (*(v342 + 8))(v126, v125);
LABEL_56:
      }

      else
      {

        LOBYTE(v347) = 1;
        sub_1B7801F88();
        (*(v315 + 8))(v194, v195);
LABEL_48:
        (*(v342 + 8))(v126, v125);
      }

      return;
    case 0x1Eu:
      LOBYTE(v347) = 33;
      sub_1B772AEC8();
      v124 = v310;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v312;
      sub_1B7801F78();

      v128 = &v342;
      goto LABEL_47;
    case 0x1Fu:
      LOBYTE(v347) = 34;
      sub_1B772AE74();
      v124 = v314;
      v126 = v345;
      v125 = v346;
      sub_1B7801ED8();
      v127 = v317;
      sub_1B7801F78();

      v128 = &v348;
LABEL_47:
      (*(*(v128 - 32) + 8))(v124, v127);
      goto LABEL_48;
    case 0x20u:
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990938);
      v178 = v339;
      v179 = v64 + *(v177 + 48);
      v180 = v322;
      (*(v339 + 32))(v322, v179, v340);
      LOBYTE(v347) = 35;
      sub_1B772AE20();
      v181 = v325;
      v68 = v345;
      v67 = v346;
      sub_1B7801ED8();
      LOBYTE(v347) = 0;
      v182 = v328;
      v183 = v343;
      sub_1B7801F78();
      if (v183)
      {

        (*(v327 + 8))(v181, v182);
        (*(v178 + 8))(v180, v340);
        goto LABEL_65;
      }

      LOBYTE(v347) = 1;
      sub_1B71A7340(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
      v204 = v340;
      sub_1B7801FC8();
      (*(v327 + 8))(v181, v182);
      (*(v178 + 8))(v180, v204);
      (*(v342 + 8))(v345, v346);
      break;
    case 0x21u:
      v110 = v219;
      sub_1B772BBB8(v64, v219, type metadata accessor for Institution);
      LOBYTE(v347) = 36;
      sub_1B772ADCC();
      v111 = v320;
      v113 = v345;
      v112 = v346;
      sub_1B7801ED8();
      sub_1B71A7340(&qword_1EB992F88, type metadata accessor for Institution);
      v114 = v324;
      sub_1B7801FC8();
      v115 = &v352;
LABEL_23:
      (*(*(v115 - 32) + 1))(v111, v114);
      v145 = v110;
LABEL_24:
      sub_1B772B894(v145, type metadata accessor for Institution);
      (*(v342 + 8))(v113, v112);
      return;
    case 0x22u:
      LOBYTE(v347) = 38;
      sub_1B772AD24();
      v90 = v326;
      v92 = v345;
      v91 = v346;
      sub_1B7801ED8();
      v93 = v330;
      sub_1B7801F88();
      v94 = &v353;
LABEL_30:
      (*(*(v94 - 32) + 8))(v90, v93);
      (*(v342 + 8))(v92, v91);
      return;
    case 0x23u:
      v72 = *v64;
      LODWORD(v341) = *(v64 + 8);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990568);
      v74 = v338;
      v75 = v339;
      v76 = v340;
      (*(v339 + 32))(v338, v64 + *(v73 + 64), v340);
      LOBYTE(v347) = 39;
      sub_1B772ACD0();
      v77 = v331;
      v68 = v345;
      v67 = v346;
      sub_1B7801ED8();
      v344 = v72;
      v347 = v72;
      v351 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C580);
      sub_1B772BB40(&qword_1EB99C588, sub_1B7214EA0);
      v78 = v333;
      v79 = v343;
      sub_1B7801FC8();
      if (v79)
      {
        (*(v332 + 8))(v77, v78);
        (*(v75 + 8))(v74, v76);
        (*(v342 + 8))(v68, v67);
      }

      else
      {
        v202 = v76;

        LOBYTE(v347) = v341;
        v351 = 1;
        sub_1B7214FF0();
        sub_1B7801FC8();
        LOBYTE(v347) = 2;
        sub_1B71A7340(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
        v205 = v338;
        sub_1B7801FC8();
        (*(v332 + 8))(v77, v78);
        (*(v75 + 8))(v205, v202);
LABEL_65:
        (*(v342 + 8))(v68, v67);
      }

      break;
    case 0x24u:
      LOBYTE(v347) = 17;
      sub_1B772B4A4();
      v80 = v264;
      v71 = v345;
      v70 = v346;
      sub_1B7801ED8();
      (*(v265 + 8))(v80, v266);
      goto LABEL_53;
    case 0x25u:
      LOBYTE(v347) = 18;
      sub_1B772B450();
      v69 = v267;
      v71 = v345;
      v70 = v346;
      sub_1B7801ED8();
      (*(v268 + 8))(v69, v269);
      goto LABEL_53;
    case 0x26u:
      LOBYTE(v347) = 20;
      sub_1B772B3A8();
      v197 = v271;
      v71 = v345;
      v70 = v346;
      sub_1B7801ED8();
      (*(v274 + 8))(v197, v275);
      goto LABEL_53;
    case 0x27u:
      LOBYTE(v347) = 37;
      sub_1B772AD78();
      v188 = v318;
      v71 = v345;
      v70 = v346;
      sub_1B7801ED8();
      (*(v319 + 8))(v188, v321);
LABEL_53:
      (*(v342 + 8))(v71, v70);
      return;
    default:
      LOBYTE(v347) = 0;
      sub_1B772BAEC();
      v68 = v345;
      v67 = v346;
      sub_1B7801ED8();
      sub_1B7801F78();

      (*(v215 + 8))(v61, v59);
      goto LABEL_65;
  }
}

uint64_t BankConnectService.Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v564 = a2;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C700);
  v520 = *(v519 - 8);
  MEMORY[0x1EEE9AC00](v519);
  v563 = &v411 - v3;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C708);
  v518 = *(v515 - 8);
  MEMORY[0x1EEE9AC00](v515);
  v569 = &v411 - v4;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C710);
  v512 = *(v513 - 8);
  MEMORY[0x1EEE9AC00](v513);
  v558 = &v411 - v5;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C718);
  v514 = *(v516 - 8);
  MEMORY[0x1EEE9AC00](v516);
  v559 = &v411 - v6;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C720);
  v565 = *(v517 - 8);
  MEMORY[0x1EEE9AC00](v517);
  v568 = &v411 - v7;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C728);
  v508 = *(v509 - 8);
  MEMORY[0x1EEE9AC00](v509);
  v556 = &v411 - v8;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C730);
  v506 = *(v507 - 8);
  MEMORY[0x1EEE9AC00](v507);
  v555 = &v411 - v9;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C738);
  v510 = *(v511 - 8);
  MEMORY[0x1EEE9AC00](v511);
  v557 = &v411 - v10;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C740);
  v504 = *(v505 - 8);
  MEMORY[0x1EEE9AC00](v505);
  v554 = &v411 - v11;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C748);
  v502 = *(v503 - 8);
  MEMORY[0x1EEE9AC00](v503);
  v553 = &v411 - v12;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C750);
  v500 = *(v501 - 8);
  MEMORY[0x1EEE9AC00](v501);
  v552 = &v411 - v13;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C758);
  v498 = *(v499 - 8);
  MEMORY[0x1EEE9AC00](v499);
  v551 = &v411 - v14;
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C760);
  v496 = *(v497 - 8);
  MEMORY[0x1EEE9AC00](v497);
  v550 = &v411 - v15;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C768);
  v494 = *(v495 - 8);
  MEMORY[0x1EEE9AC00](v495);
  v549 = &v411 - v16;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C770);
  v492 = *(v493 - 8);
  MEMORY[0x1EEE9AC00](v493);
  v548 = &v411 - v17;
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C778);
  v490 = *(v491 - 8);
  MEMORY[0x1EEE9AC00](v491);
  v547 = &v411 - v18;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C780);
  v488 = *(v489 - 8);
  MEMORY[0x1EEE9AC00](v489);
  v546 = &v411 - v19;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C788);
  v484 = *(v485 - 8);
  MEMORY[0x1EEE9AC00](v485);
  v544 = &v411 - v20;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C790);
  v486 = *(v487 - 8);
  MEMORY[0x1EEE9AC00](v487);
  v545 = &v411 - v21;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C798);
  v481 = *(v482 - 8);
  MEMORY[0x1EEE9AC00](v482);
  v543 = &v411 - v22;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7A0);
  v479 = *(v480 - 8);
  MEMORY[0x1EEE9AC00](v480);
  v542 = &v411 - v23;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7A8);
  v477 = *(v478 - 8);
  MEMORY[0x1EEE9AC00](v478);
  v541 = &v411 - v24;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7B0);
  v475 = *(v476 - 8);
  MEMORY[0x1EEE9AC00](v476);
  v540 = &v411 - v25;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7B8);
  v483 = *(v523 - 8);
  MEMORY[0x1EEE9AC00](v523);
  v561 = &v411 - v26;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7C0);
  v473 = *(v474 - 8);
  MEMORY[0x1EEE9AC00](v474);
  v539 = &v411 - v27;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7C8);
  v471 = *(v472 - 8);
  MEMORY[0x1EEE9AC00](v472);
  v538 = &v411 - v28;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7D0);
  v468 = *(v469 - 8);
  MEMORY[0x1EEE9AC00](v469);
  v537 = &v411 - v29;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7D8);
  v466 = *(v467 - 8);
  MEMORY[0x1EEE9AC00](v467);
  v536 = &v411 - v30;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7E0);
  v464 = *(v465 - 8);
  MEMORY[0x1EEE9AC00](v465);
  v535 = &v411 - v31;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7E8);
  v462 = *(v463 - 8);
  MEMORY[0x1EEE9AC00](v463);
  v534 = &v411 - v32;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7F0);
  v460 = *(v461 - 8);
  MEMORY[0x1EEE9AC00](v461);
  v533 = &v411 - v33;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C7F8);
  v458 = *(v459 - 8);
  MEMORY[0x1EEE9AC00](v459);
  v532 = &v411 - v34;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C800);
  v470 = *(v522 - 8);
  MEMORY[0x1EEE9AC00](v522);
  v560 = &v411 - v35;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C808);
  v567 = *(v456 - 8);
  MEMORY[0x1EEE9AC00](v456);
  v531 = &v411 - v36;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C810);
  v454 = *(v455 - 8);
  MEMORY[0x1EEE9AC00](v455);
  v530 = &v411 - v37;
  v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C818);
  v452 = *(v453 - 8);
  MEMORY[0x1EEE9AC00](v453);
  v529 = &v411 - v38;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C820);
  v449 = *(v450 - 8);
  MEMORY[0x1EEE9AC00](v450);
  v528 = &v411 - v39;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C828);
  v457 = *(v524 - 8);
  MEMORY[0x1EEE9AC00](v524);
  v562 = &v411 - v40;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C830);
  v447 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v527 = &v411 - v41;
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C838);
  v445 = *(v446 - 8);
  MEMORY[0x1EEE9AC00](v446);
  v526 = &v411 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C840);
  v570 = *(v43 - 8);
  v571 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v574 = &v411 - v44;
  v566 = type metadata accessor for BankConnectService.Message();
  v45 = MEMORY[0x1EEE9AC00](v566);
  v451 = &v411 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v442 = (&v411 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v444 = &v411 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v443 = (&v411 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v441 = (&v411 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v440 = (&v411 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v418 = (&v411 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v439 = (&v411 - v60);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v438 = (&v411 - v62);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v437 = (&v411 - v64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v436 = (&v411 - v66);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v435 = (&v411 - v68);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v433 = (&v411 - v70);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v434 = (&v411 - v72);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v431 = (&v411 - v74);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v432 = (&v411 - v76);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v430 = (&v411 - v78);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v417 = (&v411 - v80);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v428 = (&v411 - v82);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v525 = &v411 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v427 = (&v411 - v86);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v429 = (&v411 - v88);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v426 = (&v411 - v90);
  v91 = MEMORY[0x1EEE9AC00](v89);
  v424 = (&v411 - v92);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v425 = (&v411 - v94);
  v95 = MEMORY[0x1EEE9AC00](v93);
  v422 = (&v411 - v96);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v421 = (&v411 - v98);
  v99 = MEMORY[0x1EEE9AC00](v97);
  v423 = (&v411 - v100);
  v101 = MEMORY[0x1EEE9AC00](v99);
  v521 = &v411 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v420 = (&v411 - v104);
  v105 = MEMORY[0x1EEE9AC00](v103);
  v419 = (&v411 - v106);
  v107 = MEMORY[0x1EEE9AC00](v105);
  v109 = &v411 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107);
  v112 = &v411 - v111;
  v113 = MEMORY[0x1EEE9AC00](v110);
  v115 = (&v411 - v114);
  v116 = MEMORY[0x1EEE9AC00](v113);
  v118 = &v411 - v117;
  v119 = MEMORY[0x1EEE9AC00](v116);
  v121 = (&v411 - v120);
  MEMORY[0x1EEE9AC00](v119);
  v123 = &v411 - v122;
  v124 = a1[3];
  v573 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v124);
  sub_1B772AC18();
  v125 = v572;
  sub_1B78023C8();
  if (v125)
  {
LABEL_8:
    v153 = v573;
    return __swift_destroy_boxed_opaque_existential_1(v153);
  }

  v411 = v121;
  v412 = v118;
  v413 = v109;
  v415 = v112;
  v414 = v115;
  v126 = v567;
  v127 = v568;
  v128 = v569;
  v572 = 0;
  v129 = v566;
  v416 = v123;
  v130 = v574;
  v131 = sub_1B7801E98();
  v132 = (2 * *(v131 + 16)) | 1;
  v578 = v131;
  v579 = v131 + 32;
  v580 = 0;
  v581 = v132;
  v133 = sub_1B721A308();
  if (v580 != v581 >> 1)
  {
LABEL_6:
    v138 = sub_1B7801B18();
    swift_allocError();
    v140 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v140 = v129;
    v141 = v130;
    v142 = v571;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v138 - 8) + 104))(v140, *MEMORY[0x1E69E6AF8], v138);
    swift_willThrow();
    (*(v570 + 8))(v141, v142);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v133)
  {
    case 0:
      LOBYTE(v575) = 0;
      sub_1B772BAEC();
      v134 = v526;
      v135 = v130;
      v137 = v571;
      v136 = v572;
      sub_1B7801D38();
      if (v136)
      {
        (*(v570 + 8))(v135, v137);
        swift_unknownObjectRelease();
        v153 = v573;
        return __swift_destroy_boxed_opaque_existential_1(v153);
      }

      v298 = v135;
      v299 = v446;
      v348 = sub_1B7801DF8();
      v349 = v134;
      v351 = v350;
      (*(v445 + 8))(v349, v299);
      (*(v570 + 8))(v298, v137);
      swift_unknownObjectRelease();
      v323 = v411;
      *v411 = v348;
      v323[1] = v351;
      goto LABEL_99;
    case 1:
      LOBYTE(v575) = 1;
      sub_1B772BA98();
      v220 = v527;
      v156 = v571;
      v221 = v572;
      sub_1B7801D38();
      if (v221)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v222 = v448;
      sub_1B7801E48();
      v223 = v570;
      (*(v447 + 8))(v220, v222);
      (*(v223 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v346 = v576;
      v347 = v577;
      v323 = v412;
      *v412 = v575;
      v323[2] = v346;
      v323[3] = v347;
      goto LABEL_99;
    case 2:
      LOBYTE(v575) = 2;
      sub_1B772BA44();
      v209 = v571;
      v208 = v572;
      sub_1B7801D38();
      if (v208)
      {
        (*(v570 + 8))(v130, v209);
        goto LABEL_58;
      }

      LOBYTE(v575) = 0;
      v297 = sub_1B7801DF8();
      v339 = v414;
      *v414 = v297;
      v339[1] = v340;
      v572 = v340;
      LOBYTE(v575) = 1;
      sub_1B72151E8();
      sub_1B7801DB8();
      v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BB08);
      type metadata accessor for Institution(0);
      LOBYTE(v575) = 2;
      sub_1B71A7340(&qword_1EB992F98, type metadata accessor for Institution);
      sub_1B7801E48();
      LOBYTE(v575) = 3;
      *(v414 + *(v398 + 80)) = sub_1B7801E08() & 1;
      LOBYTE(v575) = 4;
      v407 = sub_1B7801E08();
      v408 = *(v398 + 96);
      (*(v457 + 8))(v562, v524);
      (*(v570 + 8))(v574, v571);
      swift_unknownObjectRelease();
      v409 = v407 & 1;
      v410 = v414;
      *(v414 + v408) = v409;
      swift_storeEnumTagMultiPayload();
      v406 = v410;
LABEL_104:
      v147 = v416;
      sub_1B772BBB8(v406, v416, type metadata accessor for BankConnectService.Message);
      v404 = v573;
      goto LABEL_103;
    case 3:
      LOBYTE(v575) = 3;
      sub_1B772B9F0();
      v215 = v528;
      v156 = v571;
      v216 = v572;
      sub_1B7801D38();
      if (v216)
      {
        goto LABEL_84;
      }

      type metadata accessor for Institution(0);
      sub_1B71A7340(&qword_1EB992F98, type metadata accessor for Institution);
      v157 = v415;
      v217 = v450;
      sub_1B7801E48();
      v218 = v570;
      (*(v449 + 8))(v215, v217);
      (*(v218 + 8))(v130, v156);
      swift_unknownObjectRelease();
      goto LABEL_98;
    case 4:
      LOBYTE(v575) = 4;
      sub_1B772B99C();
      v186 = v529;
      v156 = v571;
      v187 = v572;
      sub_1B7801D38();
      if (v187)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v188 = v453;
      sub_1B7801E48();
      v189 = v570;
      (*(v452 + 8))(v186, v188);
      (*(v189 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v329 = v576;
      v330 = v577;
      v323 = v413;
      *v413 = v575;
      v323[2] = v329;
      v323[3] = v330;
      goto LABEL_99;
    case 5:
      LOBYTE(v575) = 5;
      sub_1B772B948();
      v232 = v530;
      v145 = v571;
      v233 = v572;
      sub_1B7801D38();
      if (v233)
      {
        goto LABEL_64;
      }

      v234 = v455;
      v235 = sub_1B7801DF8();
      v236 = v570;
      v354 = v235;
      v356 = v355;
      (*(v454 + 8))(v232, v234);
      (*(v236 + 8))(v130, v571);
      swift_unknownObjectRelease();
      v318 = v419;
      *v419 = v354;
      v318[1] = v356;
      goto LABEL_100;
    case 6:
      LOBYTE(v575) = 6;
      sub_1B772B8F4();
      v244 = v531;
      v162 = v571;
      v245 = v572;
      sub_1B7801D38();
      if (v245)
      {
        goto LABEL_88;
      }

      v246 = v456;
      v247 = sub_1B7801DF8();
      v248 = v570;
      v362 = v244;
      v363 = v247;
      v365 = v364;
      (*(v126 + 8))(v362, v246);
      (*(v248 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v420;
      *v420 = v363;
      v318[1] = v365;
      goto LABEL_100;
    case 7:
      LOBYTE(v575) = 7;
      sub_1B772B840();
      v172 = v571;
      v219 = v572;
      sub_1B7801D38();
      if (v219)
      {
        goto LABEL_90;
      }

      type metadata accessor for BankConnectAuthorizationSession();
      LOBYTE(v575) = 0;
      sub_1B71A7340(&qword_1EB99C868, type metadata accessor for BankConnectAuthorizationSession);
      sub_1B7801E48();
      v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9998B0);
      v345 = *(v344 + 48);
      type metadata accessor for BankConnectAuthorizationPayload(0);
      LOBYTE(v575) = 1;
      sub_1B71A7340(&qword_1EB99C870, type metadata accessor for BankConnectAuthorizationPayload);
      sub_1B7801E48();
      v572 = v345;
      v399 = *(v344 + 64);
      type metadata accessor for FraudAssessmentResult();
      LOBYTE(v575) = 2;
      sub_1B71A7340(&qword_1EB99C878, type metadata accessor for FraudAssessmentResult);
      v569 = v399;
      sub_1B7801E48();
      type metadata accessor for BankConnectAuthorizationConfiguration();
      LOBYTE(v575) = 3;
      sub_1B71A7340(&qword_1EB99C850, type metadata accessor for BankConnectAuthorizationConfiguration);
      sub_1B7801E48();
      (*(v470 + 8))(v560, v522);
      (*(v570 + 8))(v574, v571);
      swift_unknownObjectRelease();
      v405 = v521;
      swift_storeEnumTagMultiPayload();
      v406 = v405;
      goto LABEL_104;
    case 8:
      LOBYTE(v575) = 8;
      sub_1B772B7EC();
      v256 = v532;
      v156 = v571;
      v257 = v572;
      sub_1B7801D38();
      if (v257)
      {
        goto LABEL_84;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997038);
      sub_1B772BCC4(&qword_1EB997040, sub_1B754FFF4);
      v258 = v459;
      sub_1B7801E48();
      v259 = v570;
      (*(v458 + 8))(v256, v258);
      (*(v259 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v323 = v423;
      *v423 = v575;
      goto LABEL_99;
    case 9:
      LOBYTE(v575) = 9;
      sub_1B772B798();
      v195 = v533;
      v156 = v571;
      v196 = v572;
      sub_1B7801D38();
      if (v196)
      {
        goto LABEL_84;
      }

      sub_1B727A53C();
      v197 = v461;
      sub_1B7801E48();
      v198 = v570;
      (*(v460 + 8))(v195, v197);
      (*(v198 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v323 = v421;
      *v421 = v575;
      goto LABEL_99;
    case 10:
      LOBYTE(v575) = 10;
      sub_1B772B744();
      v251 = v534;
      v162 = v571;
      v252 = v572;
      sub_1B7801D38();
      if (v252)
      {
        goto LABEL_88;
      }

      v253 = v463;
      v254 = sub_1B7801DF8();
      v255 = v570;
      v366 = v254;
      v368 = v367;
      (*(v462 + 8))(v251, v253);
      (*(v255 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v422;
      *v422 = v366;
      v318[1] = v368;
      goto LABEL_100;
    case 11:
      LOBYTE(v575) = 11;
      sub_1B772B6F0();
      v182 = v535;
      v156 = v571;
      v183 = v572;
      sub_1B7801D38();
      if (v183)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v184 = v465;
      sub_1B7801E48();
      v185 = v570;
      (*(v464 + 8))(v182, v184);
      (*(v185 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v327 = v576;
      v328 = v577;
      v323 = v425;
      *v425 = v575;
      v323[2] = v327;
      v323[3] = v328;
      goto LABEL_99;
    case 12:
      LOBYTE(v575) = 12;
      sub_1B772B69C();
      v190 = v536;
      v162 = v571;
      v191 = v572;
      sub_1B7801D38();
      if (v191)
      {
        goto LABEL_88;
      }

      v192 = v467;
      v193 = sub_1B7801DF8();
      v194 = v570;
      v331 = v193;
      v333 = v332;
      (*(v466 + 8))(v190, v192);
      (*(v194 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v424;
      *v424 = v331;
      v318[1] = v333;
      goto LABEL_100;
    case 13:
      LOBYTE(v575) = 13;
      sub_1B772B648();
      v239 = v537;
      v162 = v571;
      v240 = v572;
      sub_1B7801D38();
      if (v240)
      {
        goto LABEL_88;
      }

      v241 = v469;
      v242 = sub_1B7801DF8();
      v243 = v570;
      v359 = v242;
      v361 = v360;
      (*(v468 + 8))(v239, v241);
      (*(v243 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v426;
      *v426 = v359;
      v318[1] = v361;
      goto LABEL_100;
    case 14:
      LOBYTE(v575) = 14;
      sub_1B772B5F4();
      v173 = v538;
      v156 = v571;
      v174 = v572;
      sub_1B7801D38();
      if (v174)
      {
        goto LABEL_84;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C668);
      sub_1B772BC74(&qword_1EB99C860);
      v175 = v472;
      sub_1B7801E48();
      v176 = v570;
      (*(v471 + 8))(v173, v175);
      (*(v176 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v323 = v429;
      *v429 = v575;
      goto LABEL_99;
    case 15:
      LOBYTE(v575) = 15;
      sub_1B772B5A0();
      v210 = v539;
      v162 = v571;
      v211 = v572;
      sub_1B7801D38();
      if (v211)
      {
        goto LABEL_88;
      }

      v212 = v474;
      v213 = sub_1B7801DF8();
      v214 = v570;
      v341 = v213;
      v343 = v342;
      (*(v473 + 8))(v210, v212);
      (*(v214 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v427;
      *v427 = v341;
      v318[1] = v343;
      goto LABEL_100;
    case 16:
      LOBYTE(v575) = 16;
      sub_1B772B4F8();
      v172 = v571;
      v171 = v572;
      sub_1B7801D38();
      if (!v171)
      {
        type metadata accessor for Institution(0);
        LOBYTE(v575) = 0;
        sub_1B71A7340(&qword_1EB992F98, type metadata accessor for Institution);
        sub_1B7801E48();
        LOBYTE(v575) = 1;
        v322 = sub_1B7801D78();
        v393 = v392;
        v394 = v322;
        v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998310);
        v396 = &v525[*(v395 + 48)];
        v397 = *(v395 + 64);
        *v396 = v394;
        *(v396 + 1) = v393;
        v572 = v393;
        type metadata accessor for BankConnectAuthorizationConfiguration();
        LOBYTE(v575) = 2;
        sub_1B71A7340(&qword_1EB99C850, type metadata accessor for BankConnectAuthorizationConfiguration);
        v569 = v397;
        sub_1B7801E48();
        LOBYTE(v575) = 3;
        sub_1B772BC20();
        sub_1B7801E48();
        (*(v483 + 8))(v561, v523);
        (*(v570 + 8))(v574, v571);
        swift_unknownObjectRelease();
        v403 = v525;
        swift_storeEnumTagMultiPayload();
        v147 = v416;
        sub_1B772BBB8(v403, v416, type metadata accessor for BankConnectService.Message);
        v404 = v573;
        goto LABEL_103;
      }

LABEL_90:
      (*(v570 + 8))(v130, v172);
      swift_unknownObjectRelease();
      v153 = v573;
      return __swift_destroy_boxed_opaque_existential_1(v153);
    case 17:
      LOBYTE(v575) = 17;
      sub_1B772B4A4();
      v228 = v540;
      v145 = v571;
      v229 = v572;
      sub_1B7801D38();
      if (v229)
      {
        goto LABEL_64;
      }

      (*(v475 + 8))(v228, v476);
      (*(v570 + 8))(v130, v145);
      swift_unknownObjectRelease();
      v147 = v416;
      goto LABEL_94;
    case 18:
      LOBYTE(v575) = 18;
      sub_1B772B450();
      v249 = v541;
      v145 = v571;
      v250 = v572;
      sub_1B7801D38();
      if (v250)
      {
        goto LABEL_64;
      }

      (*(v477 + 8))(v249, v478);
      (*(v570 + 8))(v130, v145);
      swift_unknownObjectRelease();
      v147 = v416;
      goto LABEL_94;
    case 19:
      LOBYTE(v575) = 19;
      sub_1B772B3FC();
      v277 = v542;
      v156 = v571;
      v278 = v572;
      sub_1B7801D38();
      if (v278)
      {
        goto LABEL_84;
      }

      v279 = v480;
      v280 = sub_1B7801E08();
      v281 = v570;
      v377 = v280;
      (*(v479 + 8))(v277, v279);
      (*(v281 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v378 = v377 & 1;
      v323 = v428;
      *v428 = v378;
      goto LABEL_99;
    case 20:
      LOBYTE(v575) = 20;
      sub_1B772B3A8();
      v230 = v543;
      v145 = v571;
      v231 = v572;
      sub_1B7801D38();
      if (v231)
      {
        goto LABEL_64;
      }

      (*(v481 + 8))(v230, v482);
      (*(v570 + 8))(v130, v145);
      swift_unknownObjectRelease();
      v147 = v416;
      goto LABEL_94;
    case 21:
      LOBYTE(v575) = 21;
      sub_1B772B354();
      v237 = v545;
      v148 = v130;
      v150 = v571;
      v238 = v572;
      sub_1B7801D38();
      if (v238)
      {
        goto LABEL_57;
      }

      v300 = v148;
      LOBYTE(v575) = 0;
      v301 = v487;
      v302 = sub_1B7801DF8();
      v358 = v357;
      v572 = v302;
      LOBYTE(v575) = 1;
      v400 = sub_1B7801E08();
      (*(v486 + 8))(v237, v301);
      (*(v570 + 8))(v300, v150);
      swift_unknownObjectRelease();
      v318 = v417;
      *v417 = v572;
      v318[1] = v358;
      *(v318 + 16) = v400 & 1;
      goto LABEL_100;
    case 22:
      LOBYTE(v575) = 22;
      sub_1B772B300();
      v268 = v544;
      v162 = v571;
      v269 = v572;
      sub_1B7801D38();
      if (v269)
      {
        goto LABEL_88;
      }

      v270 = v485;
      v271 = sub_1B7801DF8();
      v272 = v570;
      v373 = v271;
      v375 = v374;
      (*(v484 + 8))(v268, v270);
      (*(v272 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v430;
      *v430 = v373;
      v318[1] = v375;
      goto LABEL_100;
    case 23:
      LOBYTE(v575) = 23;
      sub_1B772B2AC();
      v282 = v546;
      v156 = v571;
      v283 = v572;
      sub_1B7801D38();
      if (v283)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v284 = v489;
      sub_1B7801E48();
      v285 = v570;
      (*(v488 + 8))(v282, v284);
      (*(v285 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v379 = v576;
      v380 = v577;
      v323 = v432;
      *v432 = v575;
      v323[2] = v379;
      v323[3] = v380;
      goto LABEL_99;
    case 24:
      LOBYTE(v575) = 24;
      sub_1B772B258();
      v203 = v547;
      v162 = v571;
      v204 = v572;
      sub_1B7801D38();
      if (v204)
      {
        goto LABEL_88;
      }

      v205 = v491;
      v206 = sub_1B7801DF8();
      v207 = v570;
      v336 = v206;
      v338 = v337;
      (*(v490 + 8))(v203, v205);
      (*(v207 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v431;
      *v431 = v336;
      v318[1] = v338;
      goto LABEL_100;
    case 25:
      LOBYTE(v575) = 25;
      sub_1B772B204();
      v199 = v548;
      v156 = v571;
      v200 = v572;
      sub_1B7801D38();
      if (v200)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v201 = v493;
      sub_1B7801E48();
      v202 = v570;
      (*(v492 + 8))(v199, v201);
      (*(v202 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v334 = v576;
      v335 = v577;
      v323 = v434;
      *v434 = v575;
      v323[2] = v334;
      v323[3] = v335;
      goto LABEL_99;
    case 26:
      LOBYTE(v575) = 26;
      sub_1B772B1B0();
      v295 = v549;
      v162 = v571;
      v296 = v572;
      sub_1B7801D38();
      if (v296)
      {
        goto LABEL_88;
      }

      v308 = v495;
      v309 = sub_1B7801DF8();
      v310 = v570;
      v388 = v309;
      v390 = v389;
      (*(v494 + 8))(v295, v308);
      (*(v310 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v433;
      *v433 = v388;
      v318[1] = v390;
      goto LABEL_100;
    case 27:
      LOBYTE(v575) = 27;
      sub_1B772B15C();
      v160 = v550;
      v162 = v571;
      v161 = v572;
      sub_1B7801D38();
      if (v161)
      {
        goto LABEL_88;
      }

      v163 = v497;
      v164 = sub_1B7801DF8();
      v165 = v570;
      v315 = v164;
      v317 = v316;
      (*(v496 + 8))(v160, v163);
      (*(v165 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v435;
      *v435 = v315;
      v318[1] = v317;
      goto LABEL_100;
    case 28:
      LOBYTE(v575) = 28;
      sub_1B772B108();
      v286 = v551;
      v162 = v571;
      v287 = v572;
      sub_1B7801D38();
      if (v287)
      {
        goto LABEL_88;
      }

      v288 = v499;
      v289 = sub_1B7801DF8();
      v290 = v570;
      v381 = v289;
      v383 = v382;
      (*(v498 + 8))(v286, v288);
      (*(v290 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v436;
      *v436 = v381;
      v318[1] = v383;
      goto LABEL_100;
    case 29:
      LOBYTE(v575) = 29;
      sub_1B772B0B4();
      v291 = v552;
      v156 = v571;
      v292 = v572;
      sub_1B7801D38();
      if (v292)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v303 = v501;
      sub_1B7801E48();
      v304 = v570;
      (*(v500 + 8))(v291, v303);
      (*(v304 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v384 = v576;
      v385 = v577;
      v323 = v437;
      *v437 = v575;
      v323[2] = v384;
      v323[3] = v385;
      goto LABEL_99;
    case 30:
      LOBYTE(v575) = 30;
      sub_1B772B060();
      v260 = v553;
      v156 = v571;
      v261 = v572;
      sub_1B7801D38();
      if (v261)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v262 = v503;
      sub_1B7801E48();
      v263 = v570;
      (*(v502 + 8))(v260, v262);
      (*(v263 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v369 = v576;
      v370 = v577;
      v323 = v438;
      *v438 = v575;
      v323[2] = v369;
      v323[3] = v370;
      goto LABEL_99;
    case 31:
      LOBYTE(v575) = 31;
      sub_1B772B00C();
      v224 = v554;
      v156 = v571;
      v225 = v572;
      sub_1B7801D38();
      if (v225)
      {
        goto LABEL_84;
      }

      sub_1B72151E8();
      v226 = v505;
      sub_1B7801E48();
      v227 = v570;
      (*(v504 + 8))(v224, v226);
      (*(v227 + 8))(v130, v156);
      swift_unknownObjectRelease();
      v352 = v576;
      v353 = v577;
      v323 = v439;
      *v439 = v575;
      v323[2] = v352;
      v323[3] = v353;
      goto LABEL_99;
    case 32:
      LOBYTE(v575) = 32;
      sub_1B772AF1C();
      v264 = v557;
      v162 = v571;
      v265 = v572;
      sub_1B7801D38();
      if (v265)
      {
        goto LABEL_88;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F708);
      v582 = 0;
      sub_1B772AF70(&qword_1EB98F738, &qword_1EB98F740);
      v266 = v511;
      sub_1B7801E48();
      v267 = v570;
      v371 = v575;
      v582 = 1;
      v372 = sub_1B7801E08();
      v401 = *(v510 + 8);
      LODWORD(v572) = v372;
      v401(v264, v266);
      (*(v267 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v402 = v418;
      *v418 = v371;
      *(v402 + 8) = v572 & 1;
      swift_storeEnumTagMultiPayload();
      v391 = v402;
      goto LABEL_101;
    case 33:
      LOBYTE(v575) = 33;
      sub_1B772AEC8();
      v177 = v555;
      v162 = v571;
      v178 = v572;
      sub_1B7801D38();
      if (v178)
      {
        goto LABEL_88;
      }

      v179 = v507;
      v180 = sub_1B7801DF8();
      v181 = v570;
      v324 = v180;
      v326 = v325;
      (*(v506 + 8))(v177, v179);
      (*(v181 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v440;
      *v440 = v324;
      v318[1] = v326;
      goto LABEL_100;
    case 34:
      LOBYTE(v575) = 34;
      sub_1B772AE74();
      v166 = v556;
      v162 = v571;
      v167 = v572;
      sub_1B7801D38();
      if (v167)
      {
        goto LABEL_88;
      }

      v168 = v509;
      v169 = sub_1B7801DF8();
      v170 = v570;
      v319 = v169;
      v321 = v320;
      (*(v508 + 8))(v166, v168);
      (*(v170 + 8))(v130, v162);
      swift_unknownObjectRelease();
      v318 = v441;
      *v441 = v319;
      v318[1] = v321;
LABEL_100:
      swift_storeEnumTagMultiPayload();
      v391 = v318;
      goto LABEL_101;
    case 35:
      LOBYTE(v575) = 35;
      sub_1B772AE20();
      v148 = v130;
      v150 = v571;
      v149 = v572;
      sub_1B7801D38();
      if (!v149)
      {
        v151 = v148;
        LOBYTE(v575) = 0;
        v152 = v517;
        v311 = sub_1B7801DF8();
        v313 = v312;
        v572 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990938) + 48);
        v314 = v443;
        *v443 = v311;
        v314[1] = v313;
        sub_1B77FF988();
        LOBYTE(v575) = 1;
        sub_1B71A7340(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
        sub_1B7801E48();
        (*(v565 + 8))(v127, v152);
        (*(v570 + 8))(v151, v150);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v391 = v314;
        goto LABEL_101;
      }

LABEL_57:
      (*(v570 + 8))(v148, v150);
LABEL_58:
      swift_unknownObjectRelease();
      v153 = v573;
      return __swift_destroy_boxed_opaque_existential_1(v153);
    case 36:
      LOBYTE(v575) = 36;
      sub_1B772ADCC();
      v154 = v559;
      v156 = v571;
      v155 = v572;
      sub_1B7801D38();
      if (v155)
      {
LABEL_84:
        (*(v570 + 8))(v130, v156);
        goto LABEL_7;
      }

      type metadata accessor for Institution(0);
      sub_1B71A7340(&qword_1EB992F98, type metadata accessor for Institution);
      v157 = v444;
      v158 = v516;
      sub_1B7801E48();
      v159 = v570;
      (*(v514 + 8))(v154, v158);
      (*(v159 + 8))(v130, v156);
      swift_unknownObjectRelease();
LABEL_98:
      swift_storeEnumTagMultiPayload();
      v391 = v157;
      goto LABEL_101;
    case 37:
      LOBYTE(v575) = 37;
      sub_1B772AD78();
      v144 = v558;
      v145 = v571;
      v146 = v572;
      sub_1B7801D38();
      if (v146)
      {
LABEL_64:
        (*(v570 + 8))(v130, v145);
        goto LABEL_7;
      }

      (*(v512 + 8))(v144, v513);
      (*(v570 + 8))(v130, v145);
      swift_unknownObjectRelease();
      v147 = v416;
LABEL_94:
      swift_storeEnumTagMultiPayload();
      goto LABEL_102;
    case 38:
      LOBYTE(v575) = 38;
      sub_1B772AD24();
      v294 = v571;
      v293 = v572;
      sub_1B7801D38();
      if (v293)
      {
        (*(v570 + 8))(v130, v294);
        goto LABEL_7;
      }

      v305 = v515;
      v306 = sub_1B7801E08();
      v307 = v570;
      v386 = v306;
      (*(v518 + 8))(v128, v305);
      (*(v307 + 8))(v130, v294);
      swift_unknownObjectRelease();
      v387 = v386 & 1;
      v323 = v442;
      *v442 = v387;
LABEL_99:
      swift_storeEnumTagMultiPayload();
      v391 = v323;
      goto LABEL_101;
    case 39:
      LOBYTE(v575) = 39;
      sub_1B772ACD0();
      v162 = v571;
      v273 = v572;
      sub_1B7801D38();
      if (v273)
      {
LABEL_88:
        (*(v570 + 8))(v130, v162);
        goto LABEL_7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C580);
      LOBYTE(v575) = 0;
      sub_1B772BB40(&qword_1EB99C848, sub_1B72151E8);
      v274 = v451;
      v275 = v519;
      sub_1B7801E48();
      v276 = v570;
      LOBYTE(v575) = 1;
      sub_1B72153A4();
      sub_1B7801E48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990568);
      sub_1B77FF988();
      LOBYTE(v575) = 2;
      sub_1B71A7340(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
      v376 = v563;
      sub_1B7801E48();
      (*(v520 + 8))(v376, v275);
      (*(v276 + 8))(v130, v162);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v391 = v274;
LABEL_101:
      v147 = v416;
      sub_1B772BBB8(v391, v416, type metadata accessor for BankConnectService.Message);
LABEL_102:
      v404 = v573;
LABEL_103:
      sub_1B772BBB8(v147, v564, type metadata accessor for BankConnectService.Message);
      result = __swift_destroy_boxed_opaque_existential_1(v404);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t type metadata accessor for BankConnectService.Message()
{
  result = qword_1EDAF9CC0;
  if (!qword_1EDAF9CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B772AC18()
{
  result = qword_1EB99C570;
  if (!qword_1EB99C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C570);
  }

  return result;
}

uint64_t sub_1B772AC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectService.Message();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B772ACD0()
{
  result = qword_1EB99C578;
  if (!qword_1EB99C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C578);
  }

  return result;
}

unint64_t sub_1B772AD24()
{
  result = qword_1EB99C590;
  if (!qword_1EB99C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C590);
  }

  return result;
}

unint64_t sub_1B772AD78()
{
  result = qword_1EB99C598;
  if (!qword_1EB99C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C598);
  }

  return result;
}

unint64_t sub_1B772ADCC()
{
  result = qword_1EB99C5A0;
  if (!qword_1EB99C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5A0);
  }

  return result;
}

unint64_t sub_1B772AE20()
{
  result = qword_1EB99C5A8;
  if (!qword_1EB99C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5A8);
  }

  return result;
}

unint64_t sub_1B772AE74()
{
  result = qword_1EB99C5B0;
  if (!qword_1EB99C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5B0);
  }

  return result;
}

unint64_t sub_1B772AEC8()
{
  result = qword_1EB99C5B8;
  if (!qword_1EB99C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5B8);
  }

  return result;
}

unint64_t sub_1B772AF1C()
{
  result = qword_1EB99C5C0;
  if (!qword_1EB99C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5C0);
  }

  return result;
}

uint64_t sub_1B772AF70(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F708);
    sub_1B71A7340(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B772B00C()
{
  result = qword_1EB99C5C8;
  if (!qword_1EB99C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5C8);
  }

  return result;
}

unint64_t sub_1B772B060()
{
  result = qword_1EB99C5D0;
  if (!qword_1EB99C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5D0);
  }

  return result;
}

unint64_t sub_1B772B0B4()
{
  result = qword_1EB99C5D8;
  if (!qword_1EB99C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5D8);
  }

  return result;
}

unint64_t sub_1B772B108()
{
  result = qword_1EB99C5E0;
  if (!qword_1EB99C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5E0);
  }

  return result;
}

unint64_t sub_1B772B15C()
{
  result = qword_1EB99C5E8;
  if (!qword_1EB99C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5E8);
  }

  return result;
}

unint64_t sub_1B772B1B0()
{
  result = qword_1EB99C5F0;
  if (!qword_1EB99C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5F0);
  }

  return result;
}

unint64_t sub_1B772B204()
{
  result = qword_1EB99C5F8;
  if (!qword_1EB99C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C5F8);
  }

  return result;
}

unint64_t sub_1B772B258()
{
  result = qword_1EB99C600;
  if (!qword_1EB99C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C600);
  }

  return result;
}

unint64_t sub_1B772B2AC()
{
  result = qword_1EB99C608;
  if (!qword_1EB99C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C608);
  }

  return result;
}

unint64_t sub_1B772B300()
{
  result = qword_1EB99C610;
  if (!qword_1EB99C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C610);
  }

  return result;
}

unint64_t sub_1B772B354()
{
  result = qword_1EB99C618;
  if (!qword_1EB99C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C618);
  }

  return result;
}

unint64_t sub_1B772B3A8()
{
  result = qword_1EB99C620;
  if (!qword_1EB99C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C620);
  }

  return result;
}

unint64_t sub_1B772B3FC()
{
  result = qword_1EB99C628;
  if (!qword_1EB99C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C628);
  }

  return result;
}

unint64_t sub_1B772B450()
{
  result = qword_1EB99C630;
  if (!qword_1EB99C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C630);
  }

  return result;
}

unint64_t sub_1B772B4A4()
{
  result = qword_1EB99C638;
  if (!qword_1EB99C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C638);
  }

  return result;
}

unint64_t sub_1B772B4F8()
{
  result = qword_1EB99C640;
  if (!qword_1EB99C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C640);
  }

  return result;
}

unint64_t sub_1B772B54C()
{
  result = qword_1EB99C650;
  if (!qword_1EB99C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C650);
  }

  return result;
}

unint64_t sub_1B772B5A0()
{
  result = qword_1EB99C658;
  if (!qword_1EB99C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C658);
  }

  return result;
}

unint64_t sub_1B772B5F4()
{
  result = qword_1EB99C660;
  if (!qword_1EB99C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C660);
  }

  return result;
}

unint64_t sub_1B772B648()
{
  result = qword_1EB99C678;
  if (!qword_1EB99C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C678);
  }

  return result;
}

unint64_t sub_1B772B69C()
{
  result = qword_1EB99C680;
  if (!qword_1EB99C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C680);
  }

  return result;
}

unint64_t sub_1B772B6F0()
{
  result = qword_1EB99C688;
  if (!qword_1EB99C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C688);
  }

  return result;
}

unint64_t sub_1B772B744()
{
  result = qword_1EB99C690;
  if (!qword_1EB99C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C690);
  }

  return result;
}

unint64_t sub_1B772B798()
{
  result = qword_1EB99C698;
  if (!qword_1EB99C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C698);
  }

  return result;
}

unint64_t sub_1B772B7EC()
{
  result = qword_1EB99C6A0;
  if (!qword_1EB99C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6A0);
  }

  return result;
}

unint64_t sub_1B772B840()
{
  result = qword_1EB99C6A8;
  if (!qword_1EB99C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6A8);
  }

  return result;
}

uint64_t sub_1B772B894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B772B8F4()
{
  result = qword_1EB99C6C8;
  if (!qword_1EB99C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6C8);
  }

  return result;
}

unint64_t sub_1B772B948()
{
  result = qword_1EB99C6D0;
  if (!qword_1EB99C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6D0);
  }

  return result;
}

unint64_t sub_1B772B99C()
{
  result = qword_1EB99C6D8;
  if (!qword_1EB99C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6D8);
  }

  return result;
}

unint64_t sub_1B772B9F0()
{
  result = qword_1EB99C6E0;
  if (!qword_1EB99C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6E0);
  }

  return result;
}

unint64_t sub_1B772BA44()
{
  result = qword_1EB99C6E8;
  if (!qword_1EB99C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6E8);
  }

  return result;
}

unint64_t sub_1B772BA98()
{
  result = qword_1EB99C6F0;
  if (!qword_1EB99C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6F0);
  }

  return result;
}

unint64_t sub_1B772BAEC()
{
  result = qword_1EB99C6F8;
  if (!qword_1EB99C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C6F8);
  }

  return result;
}

uint64_t sub_1B772BB40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99C580);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B772BBB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B772BC20()
{
  result = qword_1EB99C858;
  if (!qword_1EB99C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C858);
  }

  return result;
}

uint64_t sub_1B772BC74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99C668);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B772BCC4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB997038);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B772BD40()
{
  result = qword_1EB99C880;
  if (!qword_1EB99C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C880);
  }

  return result;
}

unint64_t sub_1B772BD94()
{
  result = qword_1EB99C888;
  if (!qword_1EB99C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C888);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit23BankConnectServiceErrorO(uint64_t a1)
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

void sub_1B772BE3C()
{
  sub_1B772BFB0(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Institution(319);
    if (v1 <= 0x3F)
    {
      sub_1B772C0F0(319);
      if (v2 <= 0x3F)
      {
        sub_1B772C210();
        if (v3 <= 0x3F)
        {
          sub_1B772C260();
          if (v4 <= 0x3F)
          {
            sub_1B772C304(319);
            if (v5 <= 0x3F)
            {
              sub_1B772C438();
              if (v6 <= 0x3F)
              {
                sub_1B772C498();
                if (v7 <= 0x3F)
                {
                  sub_1B772C510();
                  if (v8 <= 0x3F)
                  {
                    sub_1B772C57C();
                    if (v9 <= 0x3F)
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
}

void sub_1B772BFB0(uint64_t a1)
{
  if (!qword_1EDAF6520)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9964E8);
    type metadata accessor for Institution(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDAF6520);
    }
  }
}

void sub_1B772C0F0(uint64_t a1)
{
  if (!qword_1EDAF9710[0])
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for BankConnectAuthorizationSession();
    type metadata accessor for BankConnectAuthorizationPayload(255);
    type metadata accessor for FraudAssessmentResult();
    type metadata accessor for BankConnectAuthorizationConfiguration();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, qword_1EDAF9710);
    }
  }
}

void sub_1B772C210()
{
  if (!qword_1EDAF9420)
  {
    v0 = sub_1B7800CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAF9420);
    }
  }
}

void sub_1B772C260()
{
  if (!qword_1EDAF97C0)
  {
    sub_1B772C2B8();
    v0 = type metadata accessor for XPCSecureCodingCodableWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAF97C0);
    }
  }
}

unint64_t sub_1B772C2B8()
{
  result = qword_1EDAF9400;
  if (!qword_1EDAF9400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAF9400);
  }

  return result;
}

void sub_1B772C304(uint64_t a1)
{
  if (!qword_1EDAF9E48)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Institution(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992D98);
    type metadata accessor for BankConnectAuthorizationConfiguration();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDAF9E48);
    }
  }
}

void sub_1B772C438()
{
  if (!qword_1EDAF9428)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDAF9428);
    }
  }
}

void sub_1B772C498()
{
  if (!qword_1EDAF9410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98F708);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDAF9410);
    }
  }
}

void sub_1B772C510()
{
  if (!qword_1EDAF9430)
  {
    sub_1B77FF988();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDAF9430);
    }
  }
}

void sub_1B772C57C()
{
  if (!qword_1EDAF9418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99C580);
    sub_1B77FF988();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDAF9418);
    }
  }
}

uint64_t getEnumTagSinglePayload for BankConnectService.Message.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BankConnectService.Message.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B772C9D8()
{
  result = qword_1EB99C890;
  if (!qword_1EB99C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C890);
  }

  return result;
}

unint64_t sub_1B772CA30()
{
  result = qword_1EB99C898;
  if (!qword_1EB99C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C898);
  }

  return result;
}

unint64_t sub_1B772CA88()
{
  result = qword_1EB99C8A0;
  if (!qword_1EB99C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8A0);
  }

  return result;
}

unint64_t sub_1B772CAE0()
{
  result = qword_1EB99C8A8;
  if (!qword_1EB99C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8A8);
  }

  return result;
}

unint64_t sub_1B772CB38()
{
  result = qword_1EB99C8B0;
  if (!qword_1EB99C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8B0);
  }

  return result;
}

unint64_t sub_1B772CB90()
{
  result = qword_1EB99C8B8;
  if (!qword_1EB99C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8B8);
  }

  return result;
}

unint64_t sub_1B772CBE8()
{
  result = qword_1EB99C8C0;
  if (!qword_1EB99C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8C0);
  }

  return result;
}

unint64_t sub_1B772CC40()
{
  result = qword_1EB99C8C8;
  if (!qword_1EB99C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8C8);
  }

  return result;
}

unint64_t sub_1B772CC98()
{
  result = qword_1EB99C8D0;
  if (!qword_1EB99C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8D0);
  }

  return result;
}

unint64_t sub_1B772CCF0()
{
  result = qword_1EB99C8D8;
  if (!qword_1EB99C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8D8);
  }

  return result;
}

unint64_t sub_1B772CD48()
{
  result = qword_1EB99C8E0;
  if (!qword_1EB99C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8E0);
  }

  return result;
}

unint64_t sub_1B772CDA0()
{
  result = qword_1EB99C8E8;
  if (!qword_1EB99C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8E8);
  }

  return result;
}

unint64_t sub_1B772CDF8()
{
  result = qword_1EB99C8F0;
  if (!qword_1EB99C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8F0);
  }

  return result;
}

unint64_t sub_1B772CE50()
{
  result = qword_1EB99C8F8;
  if (!qword_1EB99C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C8F8);
  }

  return result;
}

unint64_t sub_1B772CEA8()
{
  result = qword_1EB99C900;
  if (!qword_1EB99C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C900);
  }

  return result;
}

unint64_t sub_1B772CF00()
{
  result = qword_1EB99C908;
  if (!qword_1EB99C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C908);
  }

  return result;
}

unint64_t sub_1B772CF58()
{
  result = qword_1EB99C910;
  if (!qword_1EB99C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C910);
  }

  return result;
}

unint64_t sub_1B772CFB0()
{
  result = qword_1EB99C918;
  if (!qword_1EB99C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C918);
  }

  return result;
}

unint64_t sub_1B772D008()
{
  result = qword_1EB99C920;
  if (!qword_1EB99C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C920);
  }

  return result;
}

unint64_t sub_1B772D060()
{
  result = qword_1EB99C928;
  if (!qword_1EB99C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C928);
  }

  return result;
}

unint64_t sub_1B772D0B8()
{
  result = qword_1EB99C930;
  if (!qword_1EB99C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C930);
  }

  return result;
}

unint64_t sub_1B772D110()
{
  result = qword_1EB99C938;
  if (!qword_1EB99C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C938);
  }

  return result;
}

unint64_t sub_1B772D168()
{
  result = qword_1EB99C940;
  if (!qword_1EB99C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C940);
  }

  return result;
}

unint64_t sub_1B772D1C0()
{
  result = qword_1EB99C948;
  if (!qword_1EB99C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C948);
  }

  return result;
}

unint64_t sub_1B772D218()
{
  result = qword_1EB99C950;
  if (!qword_1EB99C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C950);
  }

  return result;
}

unint64_t sub_1B772D270()
{
  result = qword_1EB99C958;
  if (!qword_1EB99C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C958);
  }

  return result;
}

unint64_t sub_1B772D2C8()
{
  result = qword_1EB99C960;
  if (!qword_1EB99C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C960);
  }

  return result;
}

unint64_t sub_1B772D320()
{
  result = qword_1EB99C968;
  if (!qword_1EB99C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C968);
  }

  return result;
}

unint64_t sub_1B772D378()
{
  result = qword_1EB99C970;
  if (!qword_1EB99C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C970);
  }

  return result;
}

unint64_t sub_1B772D3D0()
{
  result = qword_1EB99C978;
  if (!qword_1EB99C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C978);
  }

  return result;
}

unint64_t sub_1B772D428()
{
  result = qword_1EB99C980;
  if (!qword_1EB99C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C980);
  }

  return result;
}

unint64_t sub_1B772D480()
{
  result = qword_1EB99C988;
  if (!qword_1EB99C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C988);
  }

  return result;
}

unint64_t sub_1B772D4D8()
{
  result = qword_1EB99C990;
  if (!qword_1EB99C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C990);
  }

  return result;
}

unint64_t sub_1B772D530()
{
  result = qword_1EB99C998;
  if (!qword_1EB99C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C998);
  }

  return result;
}

unint64_t sub_1B772D588()
{
  result = qword_1EB99C9A0;
  if (!qword_1EB99C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9A0);
  }

  return result;
}

unint64_t sub_1B772D5E0()
{
  result = qword_1EB99C9A8;
  if (!qword_1EB99C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9A8);
  }

  return result;
}

unint64_t sub_1B772D638()
{
  result = qword_1EB99C9B0;
  if (!qword_1EB99C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9B0);
  }

  return result;
}

unint64_t sub_1B772D690()
{
  result = qword_1EB99C9B8;
  if (!qword_1EB99C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9B8);
  }

  return result;
}

unint64_t sub_1B772D6E8()
{
  result = qword_1EB99C9C0;
  if (!qword_1EB99C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9C0);
  }

  return result;
}

unint64_t sub_1B772D740()
{
  result = qword_1EB99C9C8;
  if (!qword_1EB99C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9C8);
  }

  return result;
}

unint64_t sub_1B772D798()
{
  result = qword_1EB99C9D0;
  if (!qword_1EB99C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9D0);
  }

  return result;
}

unint64_t sub_1B772D7F0()
{
  result = qword_1EB99C9D8;
  if (!qword_1EB99C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9D8);
  }

  return result;
}

unint64_t sub_1B772D848()
{
  result = qword_1EB99C9E0;
  if (!qword_1EB99C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9E0);
  }

  return result;
}

unint64_t sub_1B772D8A0()
{
  result = qword_1EB99C9E8;
  if (!qword_1EB99C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99C9E8);
  }

  return result;
}