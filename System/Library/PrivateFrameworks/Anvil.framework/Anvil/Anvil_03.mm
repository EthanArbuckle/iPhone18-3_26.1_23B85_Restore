uint64_t sub_1DD9424E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DD942504, 0, 0);
}

uint64_t sub_1DD942504()
{
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1DDA14810();
  v0[4] = v2;
  v3 = __swift_project_value_buffer(v2, qword_1ECDA2110);
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1DD942628;
  v6 = v0[2];
  v5 = v0[3];

  return sub_1DD977D78("FetchRateLimitingTokens", 23, 2, v3, v5, v6);
}

void sub_1DD942628(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 16);
  v6 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1DD942770, 0, 0);
  }
}

uint64_t sub_1DD942770()
{
  v11 = v0;
  v1 = v0[7];
  v2 = v0[8];

  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3;
  sub_1DD947FF8(v1, sub_1DD947F98, 0, isUniquelyReferenced_nonNull_native, &v10);

  v0[9] = v10;

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1DD94289C;
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[3];

  return sub_1DD9787D8("FetchRateLimitingTokenRefunds", 29, 2, v7, v8, v6);
}

void sub_1DD94289C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
  }

  else
  {
    *(v4 + 96) = a1;

    MEMORY[0x1EEE6DFA0](sub_1DD942A04, 0, 0);
  }
}

uint64_t sub_1DD942A04()
{
  v15 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v3;
  sub_1DD947FF8(v1, sub_1DD947F98, 0, isUniquelyReferenced_nonNull_native, &v14);
  swift_bridgeObjectRelease_n();

  v0[13] = v14;
  v7 = *(v5 + 16);
  v8 = (v5 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (!v9)
    {
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1DD942B84;
      v11 = v0[5];

      return sub_1DD9767D4("FetchDowngradeToken", 19, 2, v11);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DD942B84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_1DD942D54;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_1DD942CAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD942CAC()
{
  v9 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v3;
  sub_1DD947FF8(v1, sub_1DD947F98, 0, isUniquelyReferenced_nonNull_native, &v8);

  v5 = v8;
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1DD942D54()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  __swift_project_value_buffer(v0[4], qword_1ECDA20E0);
  v2 = v1;
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed to fetch downgrade signal %@.", v7, 0xCu);
    sub_1DD90D378(v8, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[13];
  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1DD942EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD942F1C, 0, 0);
}

uint64_t sub_1DD942F1C()
{
  v1 = v0[4];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[4] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v29 = v0[4];

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v31 = v0;
LABEL_4:
  v30 = v11;
  v0[5] = v11;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v29 + 48) + 16 * v14 + 8);
    v16 = (*(v29 + 56) + 24 * v14);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    if (*v16 < 0)
    {

      sub_1DD940DF4();

      result = sub_1DD94A02C();
    }

    else
    {

      sub_1DD940DF4();

      result = sub_1DD94A02C();
      if (BYTE1(v17) >> 6 != 2)
      {
        if (BYTE1(v17) >> 6)
        {
          v20 = BYTE1(v17) & 0x3F;
        }

        else
        {
          v20 = BYTE1(v17);
        }

        v21 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DD909064(0, *(v30 + 16) + 1, 1, v30);
          v21 = result;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        v24 = v21;
        if (v23 >= v22 >> 1)
        {
          result = sub_1DD909064((v22 > 1), v23 + 1, 1, v21);
          v24 = result;
        }

        v11 = v24;
        *(v24 + 16) = v23 + 1;
        v25 = v24 + 2 * v23;
        *(v25 + 32) = v17;
        *(v25 + 33) = v20;
        v0 = v31;
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  v26 = v31[4];

  v27 = swift_task_alloc();
  v31[6] = v27;
  *v27 = v31;
  v27[1] = sub_1DD943190;
  v28 = v31[3];

  return sub_1DD9432D4(v30);
}

uint64_t sub_1DD943190(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9432B0, 0, 0);
}

uint64_t sub_1DD9432D4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_1DDA13250();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD943394, 0, 0);
}

uint64_t sub_1DD943394()
{
  v1 = v0[17];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *(v3 + 16) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83150, &unk_1DDA19120);
  v5 = *(MEMORY[0x1E69E87D8] + 4);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_1DD9434B0;

  return MEMORY[0x1EEE6DBF8](v0 + 16, v2, v4, 0, 0, &unk_1DDA19118, v3, v2);
}

uint64_t sub_1DD9434B0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD9435C8, 0, 0);
}

void sub_1DD9435C8()
{
  v94 = v0;
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v81 = (v0[20] + 8);
    v4 = MEMORY[0x1E69E7CC8];
    v5 = (v1 + 40);
    v82 = *(v1 + 16);
    v83 = v0[16];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

      v10 = *(v5 - 1);
      if ((v10 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CFCLL)
      {
        v11 = *v5;
        v12 = v5[1];
        v13 = v5[2];
        v14 = v5[3];
        v15 = v5[4];
        v90 = v4;
        v91 = v14;
        v92 = v13;
        v89 = *(v5 - 1);
        v16 = *v5;
        if (v10 < 0)
        {
          sub_1DD94A21C(v10, v16, v12, v13, v14, v15);
          v45 = qword_1ECD827A8;

          if (v45 != -1)
          {
            swift_once();
          }

          v46 = sub_1DDA14810();
          __swift_project_value_buffer(v46, qword_1ECDA20E0);

          v47 = sub_1DDA147F0();
          v48 = sub_1DDA14EE0();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v88 = v15;
            v50 = v14;
            v51 = swift_slowAlloc();
            v93 = v51;
            *v49 = 136315394;
            *(v49 + 4) = sub_1DD93FA54(v11, v12, &v93);
            *(v49 + 12) = 2080;
            v52 = v50;
            v15 = v88;
            *(v49 + 14) = sub_1DD93FA54(v92, v52, &v93);
            _os_log_impl(&dword_1DD8F8000, v47, v48, "Failed to fetch refund token: %s, UUID: %s", v49, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12B8CE0](v51, -1, -1);
            MEMORY[0x1E12B8CE0](v49, -1, -1);
          }

          v4 = v90;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v90;
          v54 = sub_1DD96AC38(v11, v12);
          v56 = *(v90 + 16);
          v57 = (v55 & 1) == 0;
          v39 = __OFADD__(v56, v57);
          v58 = v56 + v57;
          if (v39)
          {
            goto LABEL_46;
          }

          v59 = v55;
          if (*(v90 + 24) >= v58)
          {
            v62 = v91;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v77 = v54;
              sub_1DD9CA574();
              v54 = v77;
              v4 = v93;
            }
          }

          else
          {
            sub_1DD9C9248(v58, isUniquelyReferenced_nonNull_native);
            v60 = v93;
            v54 = sub_1DD96AC38(v11, v12);
            if ((v59 & 1) != (v61 & 1))
            {
LABEL_41:

              sub_1DDA15500();
              return;
            }

            v4 = v60;
            v62 = v91;
          }

          v67 = v89 & 0x800000000000FFFFLL;
          if (v59)
          {
            v68 = (v4[7] + 24 * v54);
            v69 = *v68;
            v70 = v68[1];
            v71 = v68[2];
            *v68 = v67;
            v68[1] = v92;
            v68[2] = v62;
            sub_1DD94A02C();
            sub_1DD94A16C(v89, v11, v12, v92, v62, v15);
          }

          else
          {
            v4[(v54 >> 6) + 8] |= 1 << v54;
            v72 = (v4[6] + 16 * v54);
            *v72 = v11;
            v72[1] = v12;
            v73 = (v4[7] + 24 * v54);
            *v73 = v67;
            v73[1] = v92;
            v73[2] = v62;

            sub_1DD94A16C(v89, v11, v12, v92, v62, v15);
            v74 = v4[2];
            v39 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (v39)
            {
              goto LABEL_48;
            }

            v4[2] = v75;
          }

          v2 = v82;
          v1 = v83;
        }

        else
        {
          sub_1DD94A0E4(v10, v16, v12, v13, v14, v15);
          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v17 = sub_1DDA14810();
          __swift_project_value_buffer(v17, qword_1ECDA20E0);

          v18 = sub_1DDA147F0();
          v19 = sub_1DDA14EC0();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v93 = v21;
            *v20 = 136315138;
            *(v20 + 4) = sub_1DD93FA54(v11, v12, &v93);
            _os_log_impl(&dword_1DD8F8000, v18, v19, "Fetched request for refund token: %s from attester.", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            MEMORY[0x1E12B8CE0](v21, -1, -1);
            MEMORY[0x1E12B8CE0](v20, -1, -1);
          }

          v22 = v0[21];
          v23 = v0[18];
          v86 = v0[19];
          v24 = v15;

          v87 = v15;
          sub_1DD9C73C0(v15, v11, v12);
          v85 = v12;
          v0[2] = sub_1DDA13580();
          v0[3] = v25;
          v0[4] = 43;
          v0[5] = 0xE100000000000000;
          v0[6] = 45;
          v0[7] = 0xE100000000000000;
          sub_1DD9313D4();
          v26 = sub_1DDA14F80();
          v28 = v27;

          v0[8] = v26;
          v0[9] = v28;
          v0[10] = 47;
          v0[11] = 0xE100000000000000;
          v0[12] = 95;
          v0[13] = 0xE100000000000000;
          v29 = sub_1DDA14F80();
          v31 = v30;

          v0[14] = v29;
          v0[15] = v31;
          sub_1DDA13240();
          v32 = sub_1DDA14F70();
          v84 = v33;
          (*v81)(v22, v86);

          v4 = v90;
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v93 = v90;
          v35 = sub_1DD96AC38(v11, v85);
          v37 = *(v90 + 16);
          v38 = (v36 & 1) == 0;
          v39 = __OFADD__(v37, v38);
          v40 = v37 + v38;
          if (v39)
          {
            goto LABEL_45;
          }

          v41 = v36;
          if (*(v90 + 24) >= v40)
          {
            v44 = v92;
            if ((v34 & 1) == 0)
            {
              v76 = v35;
              sub_1DD9CA574();
              v35 = v76;
              v4 = v93;
            }
          }

          else
          {
            sub_1DD9C9248(v40, v34);
            v42 = v93;
            v35 = sub_1DD96AC38(v11, v85);
            v44 = v92;
            if ((v41 & 1) != (v43 & 1))
            {
              goto LABEL_41;
            }

            v4 = v42;
          }

          if (v41)
          {
            v6 = (v4[7] + 24 * v35);
            v7 = *v6;
            v8 = v6[1];
            v9 = v6[2];
            *v6 = v89;
            v6[1] = v32;
            v6[2] = v84;
            sub_1DD94A02C();
          }

          else
          {
            v4[(v35 >> 6) + 8] |= 1 << v35;
            v63 = (v4[6] + 16 * v35);
            *v63 = v11;
            v63[1] = v85;
            v64 = (v4[7] + 24 * v35);
            *v64 = v89;
            v64[1] = v32;
            v64[2] = v84;
            v65 = v4[2];
            v39 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v39)
            {
              goto LABEL_47;
            }

            v4[2] = v66;
          }

          sub_1DD94A16C(v89, v11, v85, v44, v91, v87);
          v2 = v82;
          v1 = v83;
        }
      }

      ++v3;
      v5 += 6;
      if (v2 == v3)
      {
        goto LABEL_38;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_38:
  v78 = v4;
  v79 = v0[21];

  v80 = v0[1];

  v80(v78);
}

uint64_t sub_1DD943E14(uint64_t a1)
{
  v1[43] = a1;
  v2 = sub_1DDA13250();
  v1[44] = v2;
  v3 = *(v2 - 8);
  v1[45] = v3;
  v4 = *(v3 + 64) + 15;
  v1[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD943ED4, 0, 0);
}

uint64_t sub_1DD943ED4()
{
  v1 = objc_opt_self();
  v2 = sub_1DDA14B00();
  v0[47] = v2;
  v3 = sub_1DDA14B00();
  v0[48] = v3;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1DD944058;
  v4 = swift_continuation_init();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  v0[19] = MEMORY[0x1E69E9820];
  v0[20] = 1107296256;
  v0[21] = sub_1DD9445FC;
  v0[22] = &block_descriptor_16;
  v0[23] = v4;
  [v1 fetchAuxiliaryAuthenticationDataFromCacheForType:1 label:v2 cacheKey:v3 completionHandler:v0 + 19];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD944058()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_1DD944574;
  }

  else
  {
    v3 = sub_1DD944168;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD944168()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);

  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    if (v2 == v2 >> 32)
    {
LABEL_13:
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v25 = sub_1DDA14810();
      __swift_project_value_buffer(v25, qword_1ECDA20E0);
      v26 = sub_1DDA147F0();
      v27 = sub_1DDA14EE0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DD8F8000, v26, v27, "Returned downgrade signal from networking layer is unexpectedly empty", v28, 2u);
        MEMORY[0x1E12B8CE0](v28, -1, -1);
      }

      v23 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
      v24 = v2;
      goto LABEL_18;
    }
  }

  else if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v32 = *(v0 + 352);
  *(v0 + 232) = sub_1DDA13580();
  *(v0 + 240) = v7;
  *(v0 + 248) = 43;
  *(v0 + 256) = 0xE100000000000000;
  *(v0 + 264) = 45;
  *(v0 + 272) = 0xE100000000000000;
  sub_1DD9313D4();
  v8 = sub_1DDA14F80();
  v10 = v9;

  *(v0 + 280) = v8;
  *(v0 + 288) = v10;
  *(v0 + 296) = 47;
  *(v0 + 304) = 0xE100000000000000;
  *(v0 + 312) = 95;
  *(v0 + 320) = 0xE100000000000000;
  v11 = sub_1DDA14F80();
  v13 = v12;

  *(v0 + 328) = v11;
  *(v0 + 336) = v13;
  sub_1DDA13240();
  v14 = sub_1DDA14F70();
  v16 = v15;
  (*(v6 + 8))(v5, v32);

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1DDA14810();
  __swift_project_value_buffer(v17, qword_1ECDA20E0);
  v18 = sub_1DDA147F0();
  v19 = sub_1DDA14EC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DD8F8000, v18, v19, "Successfully retrieved the downgrade signal", v20, 2u);
    MEMORY[0x1E12B8CE0](v20, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83140, &qword_1DDA190E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA16320;
  *(inited + 32) = 0xD000000000000010;
  v22 = inited + 32;
  *(inited + 40) = 0x80000001DDA27960;
  *(inited + 48) = 0x8000;
  *(inited + 56) = v14;
  *(inited + 64) = v16;
  v23 = sub_1DD9404B4(inited);
  swift_setDeallocating();
  sub_1DD90D378(v22, &qword_1ECD83148, &qword_1DDA190F0);
  v24 = v2;
LABEL_18:
  sub_1DD909D28(v24, v3);
  v29 = *(v0 + 368);
  **(v0 + 344) = v23;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1DD944574()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[49];

  return v5();
}

uint64_t sub_1DD9445FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_1DDA13590();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1DD9446E4(uint64_t a1, char a2)
{
  *(v2 + 208) = a2;
  *(v2 + 160) = a1;
  v3 = sub_1DDA14850();
  *(v2 + 168) = v3;
  v4 = *(v3 - 8);
  *(v2 + 176) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9447A8, 0, 0);
}

uint64_t sub_1DD9447A8()
{
  if (!*(v0 + 208))
  {
    v1 = *(v0 + 160);
    v2 = sub_1DDA14B00();
    [v1 setAuxiliaryAuthenticationCacheKey_];
  }

  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  sub_1DD949FC8();
  (*(v4 + 104))(v3, *MEMORY[0x1E69E7F88], v6);
  v7 = sub_1DDA14F10();
  *(v0 + 192) = v7;
  (*(v4 + 8))(v3, v6);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1DD944978;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DD9445FC;
  *(v0 + 104) = &block_descriptor_59;
  *(v0 + 112) = v8;
  [v5 fetchTokenWithQueue:v7 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DD944978()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1DD944B08;
  }

  else
  {
    v3 = sub_1DD944A88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD944A88()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1DD944B08()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_1DD944B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  v5 = sub_1DDA13250();
  v4[38] = v5;
  v6 = *(v5 - 8);
  v4[39] = v6;
  v7 = *(v6 + 64) + 15;
  v4[40] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83158, &qword_1DDA19130);
  v4[41] = v8;
  v9 = *(v8 - 8);
  v4[42] = v9;
  v10 = *(v9 + 64) + 15;
  v4[43] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD944D08, 0, 0);
}

uint64_t sub_1DD944D08()
{
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  if (v2)
  {
    v30 = **(v0 + 280);
    v3 = (v1 + 32);
    v4 = sub_1DDA14D60();
    v5 = *(v4 - 8);
    v29 = *(v5 + 56);
    v28 = (v5 + 48);
    v27 = (v5 + 8);
    do
    {
      v8 = *(v0 + 352);
      v7 = *(v0 + 360);
      v9 = *(v0 + 296);
      v10 = *v3++;
      v29(v7, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v10;
      *(v11 + 40) = v9;
      sub_1DD94A2F0(v7, v8);
      LODWORD(v8) = (*v28)(v8, 1, v4);

      v13 = *(v0 + 352);
      if (v8 == 1)
      {
        sub_1DD90D378(*(v0 + 352), &qword_1ECD82D30, &qword_1DDA188D0);
        if (*v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1DDA14D50();
        (*v27)(v13, v4);
        if (*v12)
        {
LABEL_8:
          v16 = *(v11 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1DDA14CD0();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_9:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_1DDA19188;
      *(v18 + 24) = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
      v19 = v15 | v14;
      if (v15 | v14)
      {
        v19 = v0 + 64;
        *(v0 + 64) = 0;
        *(v0 + 72) = 0;
        *(v0 + 80) = v14;
        *(v0 + 88) = v15;
      }

      v6 = *(v0 + 360);
      *(v0 + 96) = 1;
      *(v0 + 104) = v19;
      *(v0 + 112) = v30;
      swift_task_create();

      sub_1DD90D378(v6, &qword_1ECD82D30, &qword_1DDA188D0);
      --v2;
    }

    while (v2);
  }

  v20 = *(v0 + 344);
  v21 = **(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  sub_1DDA14D00();
  *(v0 + 376) = MEMORY[0x1E69E7CC8];
  v22 = *(MEMORY[0x1E69E8588] + 4);
  v23 = swift_task_alloc();
  *(v0 + 368) = v23;
  *v23 = v0;
  v23[1] = sub_1DD945070;
  v24 = *(v0 + 344);
  v25 = *(v0 + 328);

  return MEMORY[0x1EEE6D8A8](v0 + 16, 0, 0, v25);
}

uint64_t sub_1DD945070()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD94516C, 0, 0);
}

uint64_t sub_1DD94516C()
{
  v79 = v0;
  v1 = v0[2];
  if ((v1 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CF8)
  {
    if ((v1 & 0xFFFFFFFFFFFF3CFCLL) == 0x3FFFFF3CFCLL)
    {
      goto LABEL_9;
    }

    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v77 = v0[6];
    v76 = v0[7];
    if ((v1 & 0x8000000000000000) == 0)
    {
      v5 = v0[5];
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v6 = v2;
      v7 = sub_1DDA14810();
      __swift_project_value_buffer(v7, qword_1ECDA20E0);

      v8 = sub_1DDA147F0();
      v9 = sub_1DDA14EC0();

      v75 = v2;
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v78 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_1DD93FA54(v6, v3, &v78);
        _os_log_impl(&dword_1DD8F8000, v8, v9, "Fetched rate limiting token: %s from attester.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1E12B8CE0](v11, -1, -1);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
      }

      v13 = v0[39];
      v12 = v0[40];
      v72 = v0[38];
      v73 = v0[47];
      v74 = v5;
      v0[15] = sub_1DDA13580();
      v0[16] = v14;
      v0[17] = 43;
      v0[18] = 0xE100000000000000;
      v0[19] = 45;
      v0[20] = 0xE100000000000000;
      sub_1DD9313D4();
      v15 = sub_1DDA14F80();
      v17 = v16;

      v0[21] = v15;
      v0[22] = v17;
      v0[23] = 47;
      v0[24] = 0xE100000000000000;
      v0[25] = 95;
      v0[26] = 0xE100000000000000;
      v18 = sub_1DDA14F80();
      v20 = v19;

      v0[27] = v18;
      v0[28] = v20;
      sub_1DDA13240();
      v21 = sub_1DDA14F70();
      v23 = v22;
      (*(v13 + 8))(v12, v72);

      v0[31] = 0;
      v0[32] = 0xE000000000000000;
      sub_1DDA15070();
      v24 = v0[32];

      v0[29] = 0xD000000000000013;
      v0[30] = 0x80000001DDA27AD0;
      MEMORY[0x1E12B7AB0](v21, v23);

      v25 = v0[29];
      v26 = v0[30];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v73;
      sub_1DD9CB9DC(v1, v25, v26, v75, v3, isUniquelyReferenced_nonNull_native);
      sub_1DD94B500(v1, v75, v3, v74, v77, v76);
      v0[47] = v78;
      goto LABEL_9;
    }

    v42 = qword_1ECD827A8;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = sub_1DDA14810();
    __swift_project_value_buffer(v43, qword_1ECDA20E0);

    v44 = sub_1DDA147F0();
    v45 = sub_1DDA14EE0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v4;
      v48 = v2;
      v49 = swift_slowAlloc();
      v78 = v49;
      *v46 = 136315394;
      *(v46 + 4) = sub_1DD93FA54(v48, v3, &v78);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1DD93FA54(v47, v77, &v78);
      _os_log_impl(&dword_1DD8F8000, v44, v45, "Failed to fetch rate limiting token: %s, token fetch request UUID: %s", v46, 0x16u);
      swift_arrayDestroy();
      v50 = v49;
      v2 = v48;
      v4 = v47;
      MEMORY[0x1E12B8CE0](v50, -1, -1);
      MEMORY[0x1E12B8CE0](v46, -1, -1);
    }

    v51 = v0[47];
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v0[33] = v51;
    v53 = sub_1DD96AC38(v2, v3);
    v55 = *(v51 + 16);
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      __break(1u);
    }

    else
    {
      v45 = v54;
      if (*(v0[47] + 24) < v58)
      {
        sub_1DD9C9248(v58, v52);
        v59 = v0[33];
        v53 = sub_1DD96AC38(v2, v3);
        if ((v45 & 1) != (v60 & 1))
        {

          return sub_1DDA15500();
        }

        goto LABEL_26;
      }

      if (v52)
      {
LABEL_26:
        v61 = v1 & 0x800000000000FFFFLL;
        v62 = v0[33];
        if (v45)
        {
          v63 = (v62[7] + 24 * v53);
          v64 = *v63;
          v65 = v63[1];
          v66 = v63[2];
          *v63 = v61;
          v63[1] = v4;
          v63[2] = v77;
          sub_1DD94A02C();
          sub_1DD94B500(v1, v2, v3, v4, v77, v76);
          v0[47] = v62;
        }

        else
        {
          v62[(v53 >> 6) + 8] |= 1 << v53;
          v67 = (v62[6] + 16 * v53);
          *v67 = v2;
          v67[1] = v3;
          v68 = (v62[7] + 24 * v53);
          *v68 = v61;
          v68[1] = v4;
          v68[2] = v77;

          sub_1DD94B500(v1, v2, v3, v4, v77, v76);
          v69 = v62[2];
          v57 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v57)
          {
            __break(1u);
            return MEMORY[0x1EEE6D8A8](v32, v33, v34, v31);
          }

          v62[2] = v70;
          v0[47] = v62;
        }

LABEL_9:
        v28 = *(MEMORY[0x1E69E8588] + 4);
        v29 = swift_task_alloc();
        v0[46] = v29;
        *v29 = v0;
        v29[1] = sub_1DD945070;
        v30 = v0[43];
        v31 = v0[41];
        v32 = v0 + 2;
        v33 = 0;
        v34 = 0;

        return MEMORY[0x1EEE6D8A8](v32, v33, v34, v31);
      }
    }

    v71 = v53;
    sub_1DD9CA574();
    v53 = v71;
    goto LABEL_26;
  }

  v35 = v0[47];
  v36 = v0[44];
  v37 = v0[45];
  v38 = v0[40];
  v39 = v0[34];
  (*(v0[42] + 8))(v0[43], v0[41]);
  *v39 = v35;

  v40 = v0[1];

  return v40();
}

uint64_t sub_1DD945914(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 232) = a4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD945938, 0, 0);
}

void sub_1DD945938()
{
  if (qword_1ECD82788 != -1)
  {
    swift_once();
  }

  v1 = off_1ECD83110;
  if (!*(off_1ECD83110 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = sub_1DD96AE30(*(v0 + 232));
  if ((v3 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = (v1[7] + 48 * v2);
  *(v0 + 112) = *v4;
  *(v0 + 120) = v4[1];
  v6 = v4[2];
  v5 = v4[3];
  *(v0 + 128) = v5;
  *(v0 + 136) = v4[4];
  *(v0 + 144) = v4[5];

  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1DD945A78;
  v8 = *(v0 + 232);

  sub_1DD94A418(v6, v5, v8);
}

uint64_t sub_1DD945A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 152);
  v12 = *v4;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;

  if (v3)
  {
    v7 = v5[16];

    v8 = sub_1DD945C60;
  }

  else
  {
    v9 = v5[18];
    v10 = v5[16];

    v8 = sub_1DD945BAC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD945BAC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 232);
  v7 = *(v0 + 96);
  v8 = v2;
  sub_1DD909CD4(v3, v1);
  sub_1DD909D28(v3, v1);

  *v7 = v6;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD945C60()
{
  v1 = *(v0 + 176);
  v10 = *(v0 + 160);
  *(v0 + 184) = sub_1DD94B2A8();
  v2 = swift_allocError();
  *(v0 + 192) = v2;
  *v3 = v10;
  *(v3 + 16) = v1;
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1DD945D38;
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 232);

  return sub_1DD94A418(v7, v6, v8);
}

uint64_t sub_1DD945D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 200);
  v8 = *v4;
  v6[26] = a1;
  v6[27] = a2;
  v6[28] = a3;

  v9 = v5[18];

  if (v3)
  {
    v10 = sub_1DD945F44;
  }

  else
  {
    v10 = sub_1DD945E78;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DD945E78()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);

  v3 = v1;
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 232);
  v10 = *(v0 + 96);
  sub_1DD909CD4(v6, v4);
  sub_1DD909D28(v6, v4);

  *v10 = v9 | 0x100;
  v10[1] = v8;
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v4;
  v10[5] = v5;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DD945F44()
{
  v60 = v0;
  v1 = *(v0 + 224);
  v57 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = swift_allocError();
  *v4 = v57;
  *(v4 + 16) = v1;
  v5 = v3;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 120);
  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1ECDA20E0);

  v8 = sub_1DDA147F0();
  v9 = sub_1DDA14EE0();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v59[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1DD93FA54(v11, v10, v59);
    _os_log_impl(&dword_1DD8F8000, v8, v9, "Unable to fetch rate limiting token %s from attester. High chance of inference failure.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
  }

  v14 = *(v0 + 192);
  swift_willThrow();

  *(v0 + 88) = v14;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 120);
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    v19 = *(v0 + 32);

    sub_1DD94B2FC(v18);
    v20 = sub_1DDA147F0();
    v21 = sub_1DDA14EE0();

    sub_1DD94B340(v18);
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 192);
    if (v22)
    {
      v24 = *(v0 + 184);
      v55 = *(v0 + 112);
      v56 = *(v0 + 120);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59[0] = v58;
      *v25 = 136315394;
      *(v25 + 4) = sub_1DD93FA54(v55, v56, v59);
      *(v25 + 12) = 2112;
      swift_allocError();
      *v27 = v18;
      v27[1] = v17;
      v27[2] = v19;
      sub_1DD94B2FC(v18);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v28;
      *v26 = v28;

      _os_log_impl(&dword_1DD8F8000, v20, v21, "Fetching rate limiting token %s threw error %@", v25, 0x16u);
      sub_1DD90D378(v26, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1E12B8CE0](v58, -1, -1);
      MEMORY[0x1E12B8CE0](v25, -1, -1);
    }

    else
    {
    }

    v44 = *(v0 + 104);
    swift_beginAccess();
    *(v44 + 16) = 1;
    v45 = *(v0 + 120);
    if (v18 >= 2)
    {
      v50 = *(v0 + 112);
      v51 = *(v0 + 232);
      v52 = *(v0 + 96);

      sub_1DD94B340(v18);
      *v52 = v51 | 0x8000000000000200;
      v52[1] = v50;
      v52[2] = v45;
      v52[3] = v17;
      v52[4] = v19;
      v52[5] = 0;
    }

    else
    {
      v46 = *(v0 + 96);
      v47 = *(v0 + 120);

      *v46 = 0x3FFFFF3CFCLL;
      *(v46 + 8) = 0u;
      *(v46 + 24) = 0u;
      *(v46 + 40) = 0;
    }
  }

  else
  {
    v29 = *(v0 + 192);
    v30 = *(v0 + 120);

    v31 = v29;
    v32 = sub_1DDA147F0();
    v33 = sub_1DDA14EE0();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 192);
    v36 = *(v0 + 120);
    if (v34)
    {
      v37 = *(v0 + 112);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59[0] = v40;
      *v38 = 136315394;
      v41 = sub_1DD93FA54(v37, v36, v59);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2112;
      v42 = v35;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v43;
      *v39 = v43;
      _os_log_impl(&dword_1DD8F8000, v32, v33, "Fetching rate limiting token %s threw unknown error %@", v38, 0x16u);
      sub_1DD90D378(v39, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1E12B8CE0](v40, -1, -1);
      MEMORY[0x1E12B8CE0](v38, -1, -1);
    }

    else
    {
    }

    v48 = *(v0 + 96);
    v49 = *(v0 + 104);
    swift_beginAccess();
    *(v49 + 16) = 1;
    *v48 = 0x3FFFFF3CFCLL;
    *(v48 + 8) = 0u;
    *(v48 + 24) = 0u;
    *(v48 + 40) = 0;
  }

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1DD946554(uint64_t a1, char a2)
{
  *(v2 + 208) = a2;
  *(v2 + 160) = a1;
  v3 = sub_1DDA14850();
  *(v2 + 168) = v3;
  v4 = *(v3 - 8);
  *(v2 + 176) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD946618, 0, 0);
}

uint64_t sub_1DD946618()
{
  if (!*(v0 + 208))
  {
    v1 = *(v0 + 160);
    v2 = sub_1DDA14B00();
    [v1 setAuxiliaryAuthenticationCacheKey_];
  }

  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  sub_1DD949FC8();
  (*(v4 + 104))(v3, *MEMORY[0x1E69E7F88], v6);
  v7 = sub_1DDA14F10();
  *(v0 + 192) = v7;
  (*(v4 + 8))(v3, v6);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1DD9467E8;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DD9445FC;
  *(v0 + 104) = &block_descriptor_51;
  *(v0 + 112) = v8;
  [v5 fetchTokenWithQueue:v7 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DD9467E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1DD94BC60;
  }

  else
  {
    v3 = sub_1DD94BC48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9468F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83158, &qword_1DDA19130);
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD946A0C, 0, 0);
}

uint64_t sub_1DD946A0C()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 33);
    while (1)
    {
      v5 = *v3;
      if (v5 < 2)
      {
        break;
      }

LABEL_4:
      v3 += 2;
      if (!--v2)
      {
        goto LABEL_13;
      }
    }

    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v28 = *(v3 - 1);
    v8 = sub_1DDA14D60();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v7, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v11 = (v10 + 16);
    *(v10 + 24) = 0;
    *(v10 + 32) = v28;
    *(v10 + 33) = v5;
    sub_1DD94A2F0(v7, v6);
    v12 = (*(v9 + 48))(v6, 1, v8);
    v13 = *(v0 + 144);
    if (v12 == 1)
    {
      sub_1DD90D378(*(v0 + 144), &qword_1ECD82D30, &qword_1DDA188D0);
      if (!*v11)
      {
LABEL_8:
        v14 = 0;
        v15 = 0;
LABEL_11:
        v18 = **(v0 + 128);
        v19 = swift_allocObject();
        *(v19 + 16) = &unk_1DDA19140;
        *(v19 + 24) = v10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
        v20 = v15 | v14;
        if (v15 | v14)
        {
          v20 = v0 + 64;
          *(v0 + 64) = 0;
          *(v0 + 72) = 0;
          *(v0 + 80) = v14;
          *(v0 + 88) = v15;
        }

        v4 = *(v0 + 152);
        *(v0 + 96) = 1;
        *(v0 + 104) = v20;
        *(v0 + 112) = v18;
        swift_task_create();

        sub_1DD90D378(v4, &qword_1ECD82D30, &qword_1DDA188D0);
        goto LABEL_4;
      }
    }

    else
    {
      sub_1DDA14D50();
      (*(v9 + 8))(v13, v8);
      if (!*v11)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v10 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1DDA14CD0();
    v15 = v17;
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_13:
  v21 = *(v0 + 176);
  v22 = **(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  sub_1DDA14D00();
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  v23 = *(MEMORY[0x1E69E8588] + 4);
  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *v24 = v0;
  v24[1] = sub_1DD946D70;
  v25 = *(v0 + 176);
  v26 = *(v0 + 160);

  return MEMORY[0x1EEE6D8A8](v0 + 16, 0, 0, v26);
}

uint64_t sub_1DD946D70()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD946E6C, 0, 0);
}

uint64_t sub_1DD946E6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 184);
  if ((*(v0 + 16) & 0xFFFFFFFFFFFF3CFCLL) == 0x3FFFFF3CF8)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    *v5 = v2;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v21 = *(v0 + 16);
    v19 = *(v0 + 48);
    v20 = *(v0 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 184);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1DD909160(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    v12 = v21;
    if (v11 >= v10 >> 1)
    {
      v18 = sub_1DD909160((v10 > 1), v11 + 1, 1, v9);
      v12 = v21;
      v9 = v18;
    }

    v9[2] = v11 + 1;
    v13 = &v9[6 * v11];
    v13[2] = v12;
    v13[3] = v20;
    v13[4] = v19;
    *(v0 + 184) = v9;
    v14 = *(MEMORY[0x1E69E8588] + 4);
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    v15[1] = sub_1DD946D70;
    v16 = *(v0 + 176);
    v17 = *(v0 + 160);

    return MEMORY[0x1EEE6D8A8](v0 + 16, 0, 0, v17);
  }
}

uint64_t sub_1DD94704C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 112) = a4;
  *(v4 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD947070, 0, 0);
}

void sub_1DD947070()
{
  if (qword_1ECD82790 != -1)
  {
    swift_once();
  }

  v1 = off_1ECD83118;
  if (!*(off_1ECD83118 + 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = sub_1DD96AE30(*(v0 + 112));
  if ((v3 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = *(v0 + 112);
  v5 = (v1[7] + 48 * v2);
  *(v0 + 56) = *v5;
  *(v0 + 64) = v5[1];
  v6 = v4 >= 0x100;
  v7 = 5;
  if (!v6)
  {
    v7 = 3;
  }

  v8 = v5[v7];
  if (v6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  *(v0 + 72) = v8;
  v10 = v5[v9];

  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1DD9471B8;

  sub_1DD94AFE8(v10, v8);
}

uint64_t sub_1DD9471B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = *v4;
  v6[11] = a1;
  v6[12] = a2;
  v6[13] = a3;

  v9 = v5[9];

  if (v3)
  {
    v10 = sub_1DD9473B0;
  }

  else
  {
    v10 = sub_1DD9472F8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DD9472F8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 112);
  v7 = *(v0 + 48);
  v8 = v2;
  sub_1DD909CD4(v3, v1);
  sub_1DD909D28(v3, v1);

  *v7 = v6 | 0x4000;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v1;
  v7[5] = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD9473B0()
{
  v52 = v0;
  v1 = *(v0 + 104);
  v49 = *(v0 + 88);
  sub_1DD94B2A8();
  v2 = swift_allocError();
  *v3 = v49;
  *(v3 + 16) = v1;
  v4 = v2;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 64);
  v6 = sub_1DDA14810();
  __swift_project_value_buffer(v6, qword_1ECDA20E0);

  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14EE0();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1DD93FA54(v10, v9, v51);
    _os_log_impl(&dword_1DD8F8000, v7, v8, "Unable to fetch request for refund token: %s from attester. High chance of inference failure.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  swift_willThrow();
  *(v0 + 40) = v2;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  v14 = swift_dynamicCast();
  v15 = *(v0 + 64);
  if (v14)
  {
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = *(v0 + 64);

    sub_1DD94B2FC(v17);
    v20 = sub_1DDA147F0();
    v21 = sub_1DDA14EE0();

    sub_1DD94B340(v17);
    if (os_log_type_enabled(v20, v21))
    {
      v47 = *(v0 + 56);
      v48 = *(v0 + 64);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51[0] = v50;
      *v22 = 136315394;
      *(v22 + 4) = sub_1DD93FA54(v47, v48, v51);
      *(v22 + 12) = 2112;
      swift_allocError();
      *v24 = v17;
      v24[1] = v16;
      v24[2] = v18;
      sub_1DD94B2FC(v17);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;

      _os_log_impl(&dword_1DD8F8000, v20, v21, "Fetching refund token %s threw error %@", v22, 0x16u);
      sub_1DD90D378(v23, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1E12B8CE0](v50, -1, -1);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
    }

    else
    {
    }

    v38 = *(v0 + 64);
    if (v17 >= 2)
    {
      v42 = *(v0 + 112);
      v44 = *(v0 + 48);
      v43 = *(v0 + 56);

      sub_1DD94B340(v17);
      *v44 = v42 | 0x8000000000004200;
      v44[1] = v43;
      v44[2] = v38;
      v44[3] = v16;
      v44[4] = v18;
      v44[5] = 0;
    }

    else
    {
      v39 = *(v0 + 48);
      v40 = *(v0 + 64);

      *v39 = 0x3FFFFF3CFCLL;
      *(v39 + 8) = 0u;
      *(v39 + 24) = 0u;
      *(v39 + 40) = 0;
    }
  }

  else
  {

    v26 = v2;
    v27 = sub_1DDA147F0();
    v28 = sub_1DDA14EE0();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 64);
    if (v29)
    {
      v31 = *(v0 + 56);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51[0] = v34;
      *v32 = 136315394;
      v35 = sub_1DD93FA54(v31, v30, v51);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2112;
      v36 = v2;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v37;
      *v33 = v37;
      _os_log_impl(&dword_1DD8F8000, v27, v28, "Fetching refund token %s threw unknown error %@", v32, 0x16u);
      sub_1DD90D378(v33, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1E12B8CE0](v34, -1, -1);
      MEMORY[0x1E12B8CE0](v32, -1, -1);
    }

    else
    {
    }

    v41 = *(v0 + 48);
    *v41 = 0x3FFFFF3CFCLL;
    *(v41 + 8) = 0u;
    *(v41 + 24) = 0u;
    *(v41 + 40) = 0;
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1DD947960(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_1DDA14850();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD947A20, 0, 0);
}

uint64_t sub_1DD947A20()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  sub_1DD949FC8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E7F88], v4);
  v5 = sub_1DDA14F10();
  v0[24] = v5;
  (*(v2 + 8))(v1, v4);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD9467E8;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DD9445FC;
  v0[13] = &block_descriptor_33;
  v0[14] = v6;
  [v3 generateTokenRequestWithQueue:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

unint64_t sub_1DD947BE4()
{
  result = qword_1ECD83120;
  if (!qword_1ECD83120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83120);
  }

  return result;
}

unint64_t sub_1DD947C3C()
{
  result = qword_1ECD83128;
  if (!qword_1ECD83128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83128);
  }

  return result;
}

uint64_t sub_1DD947CB0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD947DA8;

  return v7(a1);
}

uint64_t sub_1DD947DA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DD947EA0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD94BC54;

  return v7(a1);
}

uint64_t sub_1DD947F98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  a2[2] = a1[2];
  a2[3] = v4;
  a2[4] = v5;
  *a2 = v3;
  a2[1] = v2;

  return sub_1DD940DF4();
}

uint64_t sub_1DD947FF8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v48 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  v50 = v5;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = (*(a1 + 56) + 24 * v18);
    v23 = *v21;
    v22 = v21[1];
    v24 = v21[2];
    v55[0] = *v19;
    v55[1] = v20;
    v55[2] = v23;
    v55[3] = v22;
    v55[4] = v24;

    sub_1DD940DF4();
    a2(&v56, v55);

    sub_1DD94A02C();
    v25 = v57;
    if (!v57)
    {
LABEL_22:
      sub_1DD912130();
    }

    v26 = v56;
    v27 = v58;
    v28 = v59;
    v53 = v60;
    v29 = *v61;
    v31 = sub_1DD96AC38(v56, v57);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_24;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_1DD9CA574();
      }
    }

    else
    {
      v36 = v61;
      sub_1DD9C9248(v34, a4 & 1);
      v37 = *v36;
      v38 = sub_1DD96AC38(v26, v25);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_26;
      }

      v31 = v38;
    }

    v40 = (v15 - 1) & v15;
    v41 = *v61;
    if (v35)
    {

      v11 = (v41[7] + 24 * v31);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      *v11 = v27;
      v11[1] = v28;
      v11[2] = v53;
      sub_1DD94A02C();
    }

    else
    {
      v41[(v31 >> 6) + 8] |= 1 << v31;
      v42 = (v41[6] + 16 * v31);
      *v42 = v26;
      v42[1] = v25;
      v43 = (v41[7] + 24 * v31);
      *v43 = v27;
      v43[1] = v28;
      v43[2] = v53;
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_25;
      }

      v41[2] = v46;
    }

    a4 = 1;
    v10 = v16;
    v9 = v49;
    v5 = v50;
    v8 = v40;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1DDA15500();
  __break(1u);
  return result;
}

uint64_t sub_1DD9482DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 216) = a3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD948300, 0, 0);
}

uint64_t sub_1DD948300()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = objc_allocWithZone(MEMORY[0x1E69B37C0]);
  v4 = sub_1DDA14B00();
  v5 = [v3 initRSABlindSignatureChallengeWithIssuerName:v4 redemptionNonce:0 originNames:0];
  *(v0 + 152) = v5;

  v6 = [v5 challengeData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DDA13590();
    v10 = v9;

    *(v0 + 160) = v8;
    *(v0 + 168) = v10;
    v11 = objc_allocWithZone(MEMORY[0x1E69B37C8]);
    sub_1DD909CD4(v8, v10);
    v12 = sub_1DDA13570();
    v13 = [v11 initForKnownIssuerWithChallenge_];
    *(v0 + 176) = v13;

    sub_1DD909D28(v8, v10);
    [v13 setSystemClient_];
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_1DD9485A4;
    v15 = *(v0 + 216);

    return sub_1DD9446E4(v13, v15);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1DDA14810();
    __swift_project_value_buffer(v17, qword_1ECDA20F8);
    v18 = sub_1DDA147F0();
    v19 = sub_1DDA14EE0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DD8F8000, v18, v19, "Privacy pass challenge data was empty. This is unexpected.", v20, 2u);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
    }

    sub_1DD94B2A8();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 48) = 0;
    swift_willThrowTypedImpl();

    v21 = *(v0 + 8);

    return v21(0, 0, 0);
  }
}

uint64_t sub_1DD9485A4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 184);
  v8 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = sub_1DD94BC6C;
  }

  else
  {
    v6 = sub_1DD94BC4C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD9486BC(_BYTE *a1, char a2)
{
  *(v2 + 64) = a2;
  *(v2 + 65) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD9486E4, 0, 0);
}

void sub_1DD9486E4()
{
  if (qword_1ECD82788 != -1)
  {
    swift_once();
  }

  v1 = off_1ECD83110;
  if (!*(off_1ECD83110 + 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = sub_1DD96AE30(*(v0 + 65));
  if ((v3 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = v1[7] + 48 * v2;
  v5 = 24;
  if (*(v0 + 64))
  {
    v5 = 40;
  }

  v6 = *(v4 + v5);
  if (*(v0 + 64))
  {
    v7 = 32;
  }

  else
  {
    v7 = 16;
  }

  *(v0 + 16) = v6;
  v8 = *(v4 + v7);

  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_1DD94881C;
  v10 = *(v0 + 65);

  sub_1DD9482DC(v8, v6, v10);
}

uint64_t sub_1DD94881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 24);
  v7 = *(*v4 + 16);
  v10 = *v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = v3;

  if (v3)
  {
    v8 = sub_1DD948AD8;
  }

  else
  {
    v8 = sub_1DD948954;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD948954()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14EC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Anonymous user is not rate limited.", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  sub_1DD909CD4(v7, v5);
  v8 = v6;
  v9 = sub_1DDA13570();
  [v8 saveTokenToCache_];
  sub_1DD909D28(v7, v5);

  sub_1DD909D28(v7, v5);
  v10 = v0[1];
  v11 = v0[7] != 0;

  return v10(v11);
}

uint64_t sub_1DD948AD8()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_1DDA14810();
  __swift_project_value_buffer(v4, qword_1ECDA20E0);
  sub_1DD94B2FC(v3);
  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14EC0();
  sub_1DD94B340(v3);
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_1DD94B2A8();
    swift_allocError();
    *v13 = v10;
    v13[1] = v9;
    v13[2] = v8;
    sub_1DD94B2FC(v10);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Failed to fetch token from network proxy with error %@, assuming anonymous user is rate limited.", v11, 0xCu);
    sub_1DD90D378(v12, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    sub_1DD94B340(v10);
  }

  else
  {

    sub_1DD94B340(v10);
  }

  v15 = v0[1];
  v16 = v0[7] != 0;

  return v15(v16);
}

uint64_t sub_1DD948CE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 264) = a2;
  *(v4 + 272) = a4;
  *(v4 + 352) = a3;
  *(v4 + 256) = a1;
  v5 = sub_1DDA14850();
  *(v4 + 280) = v5;
  v6 = *(v5 - 8);
  *(v4 + 288) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD948DB0, 0, 0);
}

uint64_t sub_1DD948DB0()
{
  v60 = v0;
  v1 = 0xD00000000000001ELL;
  v2 = "Token-Request-File-Upload";
  if (*(v0 + 352) != 2)
  {
    v1 = 0xD000000000000019;
    v2 = "Token-Request-Image-Generator";
  }

  v3 = "init(url:)";
  v4 = 0xD00000000000001ELL;
  if (*(v0 + 352))
  {
    v4 = 0xD00000000000001DLL;
    v3 = "v24@?0@NSData8@NSError16";
  }

  if (*(v0 + 352) <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v1;
  }

  if (*(v0 + 352) <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (!*(*(v0 + 272) + 16))
  {

    goto LABEL_22;
  }

  v7 = sub_1DD96AC38(v5, v6 | 0x8000000000000000);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_22:
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v25 = sub_1DDA14810();
    __swift_project_value_buffer(v25, qword_1ECDA20E0);
    v22 = sub_1DDA147F0();
    v26 = sub_1DDA14EF0();
    if (os_log_type_enabled(v22, v26))
    {
      v27 = *(v0 + 352);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59 = v29;
      *v28 = 136315138;
      v30 = 0xEF726F746172656ELL;
      v31 = 0x80000001DDA26910;
      v32 = 0x6C70755F656C6966;
      if (v27 == 2)
      {
        v32 = 0xD000000000000010;
      }

      else
      {
        v31 = 0xEB0000000064616FLL;
      }

      if (v27)
      {
        v33 = 0x65675F6567616D69;
      }

      else
      {
        v33 = 0xD000000000000010;
      }

      if (!v27)
      {
        v30 = 0x80000001DDA268E0;
      }

      if (v27 <= 1)
      {
        v34 = v33;
      }

      else
      {
        v34 = v32;
      }

      if (v27 <= 1)
      {
        v35 = v30;
      }

      else
      {
        v35 = v31;
      }

      v36 = sub_1DD93FA54(v34, v35, &v59);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_1DD8F8000, v22, v26, "Unable to obtain original issuer for: %s. Redemption will fail. This should never happen. Please file a radar. Future inference will most likely fail.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B8CE0](v29, -1, -1);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
    }

    goto LABEL_60;
  }

  v10 = *(*(*(v0 + 272) + 56) + 8 * v7);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  *(v0 + 304) = v10;
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v37 = qword_1ECD827A8;
    v15 = v10;
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = sub_1DDA14810();
    __swift_project_value_buffer(v38, qword_1ECDA20E0);
    v22 = sub_1DDA147F0();
    v39 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v22, v39))
    {
      goto LABEL_59;
    }

    v40 = *(v0 + 352);
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59 = v41;
    *v24 = 136315138;
    v42 = 0xEF726F746172656ELL;
    v43 = 0x80000001DDA26910;
    v44 = 0x6C70755F656C6966;
    if (v40 == 2)
    {
      v44 = 0xD000000000000010;
    }

    else
    {
      v43 = 0xEB0000000064616FLL;
    }

    if (v40)
    {
      v45 = 0x65675F6567616D69;
    }

    else
    {
      v45 = 0xD000000000000010;
    }

    if (!v40)
    {
      v42 = 0x80000001DDA268E0;
    }

    if (v40 <= 1)
    {
      v46 = v45;
    }

    else
    {
      v46 = v44;
    }

    if (v40 <= 1)
    {
      v47 = v42;
    }

    else
    {
      v47 = v43;
    }

    v48 = sub_1DD93FA54(v46, v47, &v59);

    *(v24 + 4) = v48;
    _os_log_impl(&dword_1DD8F8000, v22, v39, "Origin unexpectedly returned empty refund for key: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E12B8CE0](v41, -1, -1);
    goto LABEL_58;
  }

  *(v0 + 144) = v12;
  *(v0 + 152) = v11;
  *(v0 + 160) = 45;
  *(v0 + 168) = 0xE100000000000000;
  *(v0 + 176) = 43;
  *(v0 + 184) = 0xE100000000000000;
  v14 = sub_1DD9313D4();
  v15 = v10;
  v16 = MEMORY[0x1E69E6158];
  *(v0 + 192) = sub_1DDA14F80();
  *(v0 + 200) = v17;
  *(v0 + 208) = 95;
  *(v0 + 216) = 0xE100000000000000;
  *(v0 + 224) = 47;
  *(v0 + 232) = 0xE100000000000000;
  v58 = v16;
  sub_1DDA14F80();

  v18 = sub_1DDA13520();
  v20 = v19;

  *(v0 + 312) = v18;
  *(v0 + 320) = v20;
  if (v20 >> 60 == 15)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1DDA14810();
    __swift_project_value_buffer(v21, qword_1ECDA20E0);
    v22 = sub_1DDA147F0();
    v23 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_59;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DD8F8000, v22, v23, "Unable to get base64 data from OAI response. Refund tickets from OAI seem malformed. Future inference likely to fail.", v24, 2u);
LABEL_58:
    MEMORY[0x1E12B8CE0](v24, -1, -1);
LABEL_59:

LABEL_60:
    v49 = *(v0 + 296);

    v50 = *(v0 + 8);

    return v50();
  }

  v53 = *(v0 + 288);
  v52 = *(v0 + 296);
  v54 = *(v0 + 280);
  v55 = sub_1DDA13570();
  *(v0 + 328) = v55;
  sub_1DD949FC8();
  (*(v53 + 104))(v52, *MEMORY[0x1E69E7F88], v54);
  v56 = sub_1DDA14F10();
  *(v0 + 336) = v56;
  (*(v53 + 8))(v52, v54);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1DD949514;
  v57 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DD9445FC;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v57;
  [v15 handleTokenResponse:v55 withQueue:v56 completionHandler:{v0 + 80, v58, v14, v14, v14}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DD949514()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_1DD9498C4;
  }

  else
  {
    v3 = sub_1DD949624;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD949624()
{
  v27 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = sub_1DDA13570();
  [v2 saveTokenToCache_];

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1DDA14810();
  __swift_project_value_buffer(v6, qword_1ECDA20E0);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14EC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 352);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    v12 = 0xEF726F746172656ELL;
    v13 = 0x65675F6567616D69;
    v14 = 0xD000000000000010;
    v15 = 0x80000001DDA26910;
    if (v9 != 2)
    {
      v14 = 0x6C70755F656C6966;
      v15 = 0xEB0000000064616FLL;
    }

    if (!v9)
    {
      v13 = 0xD000000000000010;
      v12 = 0x80000001DDA268E0;
    }

    if (v9 <= 1)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v9 <= 1)
    {
      v17 = v12;
    }

    else
    {
      v17 = v15;
    }

    v18 = *(v0 + 312);
    v24 = *(v0 + 320);
    v25 = *(v0 + 304);
    v19 = sub_1DD93FA54(v16, v17, &v26);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_1DD8F8000, v7, v8, "Successfully saved refund to cache for key: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
    sub_1DD90D440(v18, v24);
    sub_1DD909D28(v4, v3);
  }

  else
  {
    v20 = *(v0 + 304);
    sub_1DD90D440(*(v0 + 312), *(v0 + 320));
    sub_1DD909D28(v4, v3);
  }

  v21 = *(v0 + 296);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DD9498C4()
{
  v31 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  swift_willThrow();
  sub_1DD90D440(v5, v3);

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 344);
  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1ECDA20E0);
  v8 = v6;
  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14EE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 352);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136315394;
    v15 = 0xEF726F746172656ELL;
    v16 = 0x65675F6567616D69;
    v17 = 0xD000000000000010;
    v18 = 0x80000001DDA26910;
    if (v11 != 2)
    {
      v17 = 0x6C70755F656C6966;
      v18 = 0xEB0000000064616FLL;
    }

    if (!v11)
    {
      v16 = 0xD000000000000010;
      v15 = 0x80000001DDA268E0;
    }

    if (v11 <= 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    if (v11 <= 1)
    {
      v20 = v15;
    }

    else
    {
      v20 = v18;
    }

    v21 = *(v0 + 344);
    v22 = *(v0 + 304);
    v23 = sub_1DD93FA54(v19, v20, &v30);

    *(v12 + 4) = v23;
    *(v12 + 12) = 2112;
    v24 = v21;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v25;
    *v13 = v25;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Unable to save refund to cache for key: %s with error: %@", v12, 0x16u);
    sub_1DD90D378(v13, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
  }

  else
  {
    v26 = *(v0 + 344);
  }

  v27 = *(v0 + 296);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1DD949B9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD949BBC, 0, 0);
}

uint64_t sub_1DD949BBC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v0[2] = v2;
    v0[3] = v1;
    v0[4] = 45;
    v0[5] = 0xE100000000000000;
    v0[6] = 43;
    v0[7] = 0xE100000000000000;
    v4 = sub_1DD9313D4();
    v5 = MEMORY[0x1E69E6158];
    v0[2] = sub_1DDA14F80();
    v0[3] = v6;
    v0[4] = 95;
    v0[5] = 0xE100000000000000;
    v0[6] = 47;
    v0[7] = 0xE100000000000000;
    v27 = v4;
    v28 = v4;
    v25 = v5;
    v26 = v4;
    sub_1DDA14F80();

    v7 = sub_1DDA13520();
    v9 = v8;

    if (v9 >> 60 == 15)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DDA14810();
      __swift_project_value_buffer(v10, qword_1ECDA20E0);
      v11 = sub_1DDA147F0();
      v12 = sub_1DDA14EE0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = "Unable to get base64 data from OAI response. Reputation signal from OAI seems malformed. Future inference likely to fail.";
LABEL_13:
        _os_log_impl(&dword_1DD8F8000, v11, v12, v14, v13, 2u);
        MEMORY[0x1E12B8CE0](v13, -1, -1);
      }
    }

    else
    {
      v16 = objc_opt_self();
      v17 = sub_1DDA13570();
      v18 = sub_1DDA14B00();
      v19 = sub_1DDA14B00();
      [v16 saveAuxiliaryAuthenticationDataToCache:v17 type:1 forLabel:v18 cacheKey:{v19, v25, v26, v27, v28}];

      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v20 = sub_1DDA14810();
      __swift_project_value_buffer(v20, qword_1ECDA20E0);
      v11 = sub_1DDA147F0();
      v21 = sub_1DDA14EC0();
      if (os_log_type_enabled(v11, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DD8F8000, v11, v21, "Successfully stored the reputation signal.", v22, 2u);
        MEMORY[0x1E12B8CE0](v22, -1, -1);
      }

      sub_1DD90D440(v7, v9);
    }
  }

  else
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1ECDA20E0);
    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14EE0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Origin returned empty reputation signal";
      goto LABEL_13;
    }
  }

  v23 = v0[1];

  return v23();
}

unint64_t sub_1DD949FC8()
{
  result = qword_1ECD83130;
  if (!qword_1ECD83130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD83130);
  }

  return result;
}

uint64_t sub_1DD94A034(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9468F8(a1, a2, v6);
}

id sub_1DD94A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if (a1 < 0)
  {
  }

  else
  {

    sub_1DD909CD4(a4, a5);

    return a6;
  }
}

void sub_1DD94A16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((a1 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CFCLL)
  {
    sub_1DD94A18C(a1, a2, a3, a4, a5, a6);
  }
}

void sub_1DD94A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{

  if (a1 < 0)
  {
  }

  else
  {
    sub_1DD909D28(a4, a5);
  }
}

uint64_t sub_1DD94A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((a1 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CFCLL)
  {
    return sub_1DD94A0E4(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1DD94A23C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD94704C(a1, v4, v5, v6);
}

uint64_t sub_1DD94A2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD94A360(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD947CB0(a1, v5);
}

uint64_t sub_1DD94A418(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 216) = a3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD94A43C, 0, 0);
}

uint64_t sub_1DD94A43C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = objc_allocWithZone(MEMORY[0x1E69B37C0]);
  v4 = sub_1DDA14B00();
  v5 = [v3 initRSABlindSignatureChallengeWithIssuerName:v4 redemptionNonce:0 originNames:0];
  *(v0 + 152) = v5;

  v6 = [v5 challengeData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DDA13590();
    v10 = v9;

    *(v0 + 160) = v8;
    *(v0 + 168) = v10;
    v11 = objc_allocWithZone(MEMORY[0x1E69B37C8]);
    sub_1DD909CD4(v8, v10);
    v12 = sub_1DDA13570();
    v13 = [v11 initForKnownIssuerWithChallenge_];
    *(v0 + 176) = v13;

    sub_1DD909D28(v8, v10);
    [v13 setSystemClient_];
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_1DD94A6E0;
    v15 = *(v0 + 216);

    return sub_1DD946554(v13, v15);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1DDA14810();
    __swift_project_value_buffer(v17, qword_1ECDA20F8);
    v18 = sub_1DDA147F0();
    v19 = sub_1DDA14EE0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DD8F8000, v18, v19, "Privacy pass challenge data was empty. This is unexpected.", v20, 2u);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
    }

    sub_1DD94B2A8();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 48) = 0;
    swift_willThrowTypedImpl();

    v21 = *(v0 + 8);

    return v21(0, 0, 0);
  }
}

uint64_t sub_1DD94A6E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 184);
  v8 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = sub_1DD94ACFC;
  }

  else
  {
    v6 = sub_1DD94A7F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD94A7F8()
{
  v1 = v0[25];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2 || *(v0[24] + 16) == *(v0[24] + 24))
    {
LABEL_13:
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DDA14810();
      __swift_project_value_buffer(v13, qword_1ECDA20F8);
      v14 = sub_1DDA147F0();
      v15 = sub_1DDA14EE0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DD8F8000, v14, v15, "Attester returned empty data value, treating it as if attester returned nothing.", v16, 2u);
        MEMORY[0x1E12B8CE0](v16, -1, -1);
      }

      v18 = v0[24];
      v17 = v0[25];

      sub_1DD94B2A8();
      v19 = swift_allocError();
      v20[1] = 0;
      v20[2] = 0;
      *v20 = 1;
      swift_willThrow();
      sub_1DD909D28(v18, v17);
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v13, qword_1ECDA20F8);
      v21 = v19;
      v22 = sub_1DDA147F0();
      v23 = sub_1DDA14EE0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1DD8F8000, v22, v23, "Failed to fetch privacy pass token! %@", v24, 0xCu);
        sub_1DD90D378(v25, &unk_1ECD83100, &unk_1DDA185C0);
        MEMORY[0x1E12B8CE0](v25, -1, -1);
        MEMORY[0x1E12B8CE0](v24, -1, -1);
      }

      v28 = 0xD00000000000001FLL;

      v29 = sub_1DDA13400();
      v30 = [v29 userInfo];
      v31 = sub_1DDA14AA0();

      if (*(v31 + 16) && (v32 = sub_1DD96AC38(0xD000000000000019, 0x80000001DDA27980), (v33 & 1) != 0))
      {
        sub_1DD9410C8(*(v31 + 56) + 32 * v32, (v0 + 2));

        if (swift_dynamicCast())
        {
          v34 = v0[21];
          v35 = v0[22];
          v37 = v0[19];
          v36 = v0[20];
          v28 = v0[15];
          v38 = v0[16];
          v0[12] = v19;
          v0[13] = v28;
          v0[14] = v38;
          v39 = v19;
LABEL_27:
          swift_willThrowTypedImpl();

          sub_1DD909D28(v36, v34);
          v9 = v0[1];
          v10 = v19;
          v11 = v28;
          v12 = v38;
          goto LABEL_28;
        }
      }

      else
      {
      }

      v34 = v0[21];
      v35 = v0[22];
      v37 = v0[19];
      v36 = v0[20];
      v38 = 0x80000001DDA279A0;
      v0[9] = v19;
      v0[10] = 0xD00000000000001FLL;
      v0[11] = 0x80000001DDA279A0;
      v40 = v19;
      goto LABEL_27;
    }
  }

  else if (v2)
  {
    if (v0[24] == v0[24] >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA20F8);
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Successfully retrieved privacy pass token", v6, 2u);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v7 = v0[22];
  v8 = v0[19];
  sub_1DD909D28(v0[20], v0[21]);

  v9 = v0[1];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v7;
LABEL_28:

  return v9(v10, v11, v12);
}

uint64_t sub_1DD94ACFC()
{
  v1 = v0[26];
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA20F8);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed to fetch privacy pass token! %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v10 = 0xD00000000000001FLL;

  v11 = sub_1DDA13400();
  v12 = [v11 userInfo];
  v13 = sub_1DDA14AA0();

  if (*(v13 + 16) && (v14 = sub_1DD96AC38(0xD000000000000019, 0x80000001DDA27980), (v15 & 1) != 0))
  {
    sub_1DD9410C8(*(v13 + 56) + 32 * v14, (v0 + 2));

    if (swift_dynamicCast())
    {
      v16 = v0[21];
      v17 = v0[22];
      v19 = v0[19];
      v18 = v0[20];
      v10 = v0[15];
      v20 = v0[16];
      v0[12] = v1;
      v0[13] = v10;
      v0[14] = v20;
      v21 = v1;
      sub_1DD94B2A8();
      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = v0[21];
  v17 = v0[22];
  v19 = v0[19];
  v18 = v0[20];
  v20 = 0x80000001DDA279A0;
  v0[9] = v1;
  v0[10] = 0xD00000000000001FLL;
  v0[11] = 0x80000001DDA279A0;
  v22 = v1;
  sub_1DD94B2A8();
LABEL_11:
  swift_willThrowTypedImpl();

  sub_1DD909D28(v18, v16);
  v23 = v0[1];

  return v23(v1, v10, v20);
}

uint64_t sub_1DD94AFE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD94B008, 0, 0);
}

uint64_t sub_1DD94B008()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = objc_allocWithZone(MEMORY[0x1E69B37C0]);
  v4 = sub_1DDA14B00();
  v5 = [v3 initRSABlindSignatureChallengeWithIssuerName:v4 redemptionNonce:0 originNames:0];
  v0[19] = v5;

  v6 = [v5 challengeData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DDA13590();
    v10 = v9;

    v0[20] = v8;
    v0[21] = v10;
    v11 = objc_allocWithZone(MEMORY[0x1E69B37C8]);
    sub_1DD909CD4(v8, v10);
    v12 = sub_1DDA13570();
    v13 = [v11 initForKnownIssuerWithChallenge_];
    v0[22] = v13;

    sub_1DD909D28(v8, v10);
    [v13 setSystemClient_];
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_1DD9485A4;

    return sub_1DD947960(v13);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DDA14810();
    __swift_project_value_buffer(v16, qword_1ECDA20F8);
    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14EE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DD8F8000, v17, v18, "Privacy pass challenge data was empty. This is unexpected.", v19, 2u);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
    }

    sub_1DD94B2A8();
    v0[7] = 0;
    v0[8] = 0;
    v0[6] = 0;
    swift_willThrowTypedImpl();

    v20 = v0[1];

    return v20(0, 0, 0);
  }
}

unint64_t sub_1DD94B2A8()
{
  result = qword_1ECD83160;
  if (!qword_1ECD83160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83160);
  }

  return result;
}

void *sub_1DD94B2FC(void *result)
{
  if (result >= 2)
  {
    v2 = result;
  }

  return result;
}

void *sub_1DD94B340(void *result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1DD94B384(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD9165BC;

  return sub_1DD945914(a1, v4, v5, v7, v6);
}

uint64_t sub_1DD94B448(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD9165BC;

  return sub_1DD947CB0(a1, v5);
}

void sub_1DD94B500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((a1 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CF8)
  {
    sub_1DD94A16C(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t get_enum_tag_for_layout_string_5Anvil14FraudTicketingV0bC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD94B55C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD94B5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1DD94B610(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
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

uint64_t sub_1DD94B65C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 4) & 0x3C0 | (*a1 >> 2) | (*a1 >> 6) & 0xFFFFFC00;
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

double sub_1DD94B6C0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      *a1 = (16 * -a2) & 0x3C00 | (4 * (-a2 & 0x3FLL)) & 0xFFFFFFC00000FFFFLL | ((-a2 >> 10) << 16);
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD94B740(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DD94B788(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DD94B7D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 4) & 0x3C0 | (*a1 >> 2) | (*a1 >> 6) & 0xFFFFFC00;
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

uint64_t sub_1DD94B83C(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (16 * -a2) & 0x3C00 | (4 * (-a2 & 0x3FLL)) & 0xFFFFFFC00000FFFFLL | ((-a2 >> 10) << 16);
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

unint64_t sub_1DD94B8A8()
{
  result = qword_1ECD83178;
  if (!qword_1ECD83178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83178);
  }

  return result;
}

uint64_t sub_1DD94B90C(uint64_t a1, int a2)
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

uint64_t sub_1DD94B954(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD94B9C0(uint64_t a1, int a2)
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

uint64_t sub_1DD94BA08(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FraudTicketing.TicketingSubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FraudTicketing.TicketingSubType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DD94BBB0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1DD94BBDC(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

void sub_1DD94BC74(int a1@<W0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1DDA136E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() ephemeralSessionConfiguration];
  [v8 set:a1 & 1 usesNWLoader:?];
  HIDWORD(v20) = a1;
  if (a1)
  {
    v9 = sub_1DDA14B00();
    [v8 set:v9 sourceApplicationBundleIdentifier:?];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83208, &qword_1DDA19778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA18F80;
  *&v22 = 0x747065636341;
  *(&v22 + 1) = 0xE600000000000000;
  v11 = MEMORY[0x1E69E6158];
  sub_1DDA15020();
  *(inited + 96) = v11;
  *(inited + 72) = 0xD000000000000011;
  *(inited + 80) = 0x80000001DDA27BC0;
  strcpy(&v22, "Cache-Control");
  HIWORD(v22) = -4864;
  sub_1DDA15020();
  *(inited + 168) = v11;
  *(inited + 144) = 0x65686361632D6F6ELL;
  *(inited + 152) = 0xE800000000000000;
  *&v22 = 0x4C2D747065636341;
  *(&v22 + 1) = 0xEF65676175676E61;
  sub_1DDA15020();
  sub_1DDA136D0();
  v12 = sub_1DDA136C0();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  *(inited + 240) = v11;
  *(inited + 216) = v12;
  *(inited + 224) = v14;
  strcpy(&v22, "User-Agent");
  BYTE11(v22) = 0;
  HIDWORD(v22) = -369098752;
  sub_1DDA15020();
  v15 = sub_1DD9C6CFC(0, 0);
  *(inited + 312) = v11;
  *(inited + 288) = v15;
  *(inited + 296) = v16;
  sub_1DD940164(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830A8, &qword_1DDA19780);
  swift_arrayDestroy();
  v17 = sub_1DDA14A90();

  [v8 setHTTPAdditionalHeaders_];

  v18 = [objc_opt_self() sessionWithConfiguration_];
  v23 = sub_1DD9565A8(0, &unk_1EE16F390, 0x1E696AF78);
  v24 = &off_1F58F0718;
  *&v22 = v18;
  v19 = v18;
  sub_1DD95098C(&v22, BYTE4(v20) & 1, v21);
}

uint64_t sub_1DD94C028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = sub_1DDA13140();
  v4[33] = v5;
  v6 = *(v5 - 8);
  v4[34] = v6;
  v7 = *(v6 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD94C0EC, 0, 0);
}

uint64_t sub_1DD94C0EC()
{
  v11 = v0[31];
  v1 = v0[29];
  v0[36] = sub_1DD94C98C(v0[35]);
  v2 = *(v11 + 8);
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1DD94C214;
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[30];

  return v10(v5, v8, v6);
}

uint64_t sub_1DD94C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 296);
  v10 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {
    v7 = v5[36];

    v8 = sub_1DD94C90C;
  }

  else
  {
    v8 = sub_1DD94C334;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD94C334()
{
  v30 = v0;
  if (qword_1ECD827C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA2128);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14F00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136446210;
    v9 = [v6 allHeaderFields];
    v10 = sub_1DDA14AA0();

    strcpy((v0 + 200), "x-request-id");
    *(v0 + 213) = 0;
    *(v0 + 214) = -5120;
    sub_1DDA15020();
    if (*(v10 + 16) && (v11 = sub_1DD96ADEC(v0 + 112), (v12 & 1) != 0))
    {
      sub_1DD9410C8(*(v10 + 56) + 32 * v11, v0 + 152);
      sub_1DD955FA0(v0 + 112);

      if (swift_dynamicCast())
      {
        v14 = *(v0 + 216);
        v13 = *(v0 + 224);
LABEL_10:
        v15 = sub_1DD93FA54(v14, v13, &v29);

        *(v7 + 4) = v15;
        _os_log_impl(&dword_1DD8F8000, v4, v5, "x-request-id: %{public}s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x1E12B8CE0](v8, -1, -1);
        MEMORY[0x1E12B8CE0](v7, -1, -1);
        goto LABEL_11;
      }

      v14 = 0x3E6C696E3CLL;
    }

    else
    {
      v14 = 0x3E6C696E3CLL;

      sub_1DD955FA0(v0 + 112);
    }

    v13 = 0xE500000000000000;
    goto LABEL_10;
  }

LABEL_11:

  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v18 = *(v0 + 288);
  v19 = *(v0 + 320);
  sub_1DD909CD4(v17, v16);
  sub_1DD9C1AE0(v18, v19, v17, v16, (v0 + 64));
  v20 = *(v0 + 64);
  if (v20)
  {
    *(v0 + 16) = v20;
    *(v0 + 24) = *(v0 + 72);
    *(v0 + 40) = *(v0 + 88);
    *(v0 + 56) = *(v0 + 104);
    sub_1DD94CB80(v0 + 16);

    *(v0 + 184) = *(v0 + 48);
    sub_1DD9311E4(v0 + 184);
  }

  v22 = *(v0 + 304);
  v21 = *(v0 + 312);
  v23 = swift_task_alloc();
  *(v0 + 336) = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v24 = swift_task_alloc();
  *(v0 + 344) = v24;
  *v24 = v0;
  v24[1] = sub_1DD94C6D0;
  v25 = *(v0 + 320);
  v26 = *(v0 + 240);
  v27 = *(v0 + 248);

  return sub_1DD955C58(v25, &unk_1DDA19708, v23, v26, v27);
}

uint64_t sub_1DD94C6D0(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD94C7F0, 0, 0);
}

uint64_t sub_1DD94C7F0()
{
  if (v0[44])
  {
    v1 = v0[39];
    v2 = v0[40];
    v3 = v0[38];
    v4 = v0[44];
    swift_willThrow();
    sub_1DD909D28(v3, v1);

    (*(v0[34] + 8))(v0[35], v0[33]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[34] + 8))(v0[35], v0[33]);

    v7 = v0[1];
    v8 = v0[39];
    v9 = v0[40];
    v10 = v0[38];

    return v7(v10, v8, v9);
  }
}

uint64_t sub_1DD94C90C()
{
  v1 = v0[41];
  (*(v0[34] + 8))(v0[35], v0[33]);

  v2 = v0[1];

  return v2();
}

unint64_t sub_1DD94C98C(uint64_t a1)
{
  v4 = sub_1DDA13140();
  (*(*(v4 - 8) + 16))(a1, v1, v4);
  v5 = sub_1DDA130E0();
  v6 = MEMORY[0x1E69E7CC8];
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_1DD96AC38(0xD000000000000022, 0x80000001DDA26990);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = (*(v7 + 56) + 16 * v8);
  v12 = *v10;
  v11 = v10[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v6;
  result = sub_1DD96D708();
  v16 = v6[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v15;
  if (v6[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v23 = result;
    sub_1DD9CA290();
    result = v23;
    v6 = v27;
    if (v2)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_1DD9C8CDC(v19, isUniquelyReferenced_nonNull_native);
  result = sub_1DD96D708();
  if ((v2 & 1) != (v20 & 1))
  {
    sub_1DDA15500();
    __break(1u);
LABEL_8:

    return v6;
  }

LABEL_10:
  if (v2)
  {
LABEL_11:
    v21 = (v6[7] + 16 * result);
    v22 = v21[1];
    *v21 = v12;
    v21[1] = v11;

LABEL_16:
    sub_1DDA13130();
    return v6;
  }

LABEL_14:
  v6[(result >> 6) + 8] |= 1 << result;
  v24 = (v6[7] + 16 * result);
  *v24 = v12;
  v24[1] = v11;
  v25 = v6[2];
  v18 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v18)
  {
    v6[2] = v26;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD94CB80(uint64_t a1)
{
  v42 = sub_1DDA155E0();
  v41 = *(v42 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v50 + 1) = &type metadata for Telemetry.HTTPStatusEvent;
  v5 = swift_allocObject();
  *&v49 = v5;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v39[1] = *(a1 + 32);
  v11 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v11;
  v5[3] = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v39[0] = v10;

  sub_1DDA155C0();
  v16 = sub_1DD94001C(MEMORY[0x1E69E7CC0]);
  v40 = v4;
  sub_1DDA155D0();
  sub_1DDA15150();

  sub_1DDA151D0();
  if (!v51)
  {
LABEL_24:

    v36 = sub_1DDA14B00();
    sub_1DD9565A8(0, &qword_1ECD831A0, 0x1E69E58C0);
    v37 = sub_1DDA14A90();

    AnalyticsSendEvent();

    return (*(v41 + 8))(v40, v42);
  }

  while (1)
  {
    v47 = v49;
    sub_1DD940DE4(&v50, &v48);
    sub_1DD955FF4(&v47, &v44);
    v17 = v45;
    if (!v45)
    {
      sub_1DD90D378(&v47, &qword_1ECD831A8, &qword_1DDA19718);
      __swift_destroy_boxed_opaque_existential_1(v46);
      goto LABEL_4;
    }

    v18 = v44;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v19 = v18 == 0x6D614E746E657665 && v17 == 0xE900000000000065;
    if (v19 || (sub_1DDA15440() & 1) != 0 || (sub_1DD955FF4(&v47, &v44), , sub_1DD9565A8(0, &qword_1ECD831A0, 0x1E69E58C0), (swift_dynamicCast() & 1) == 0))
    {
      sub_1DD90D378(&v47, &qword_1ECD831A8, &qword_1DDA19718);

      goto LABEL_4;
    }

    v20 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v16;
    v23 = sub_1DD96AC38(v18, v17);
    v24 = v16[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v16[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v22)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1DD9CA3EC();
        if (v27)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1DD9C8F80(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_1DD96AC38(v18, v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
      if (v27)
      {
LABEL_20:

        v16 = v44;
        v30 = v44[7];
        v31 = *(v30 + 8 * v23);
        *(v30 + 8 * v23) = v20;

        sub_1DD90D378(&v47, &qword_1ECD831A8, &qword_1DDA19718);
        goto LABEL_4;
      }
    }

    v16 = v44;
    v44[(v23 >> 6) + 8] |= 1 << v23;
    v32 = (v16[6] + 16 * v23);
    *v32 = v18;
    v32[1] = v17;
    *(v16[7] + 8 * v23) = v20;

    sub_1DD90D378(&v47, &qword_1ECD831A8, &qword_1DDA19718);
    v33 = v16[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_26;
    }

    v16[2] = v35;
LABEL_4:
    sub_1DDA151D0();
    if (!v51)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DDA15500();
  __break(1u);
  return result;
}

uint64_t sub_1DD94D048(uint64_t a1, unint64_t a2)
{
  sub_1DD909CD4(a1, a2);
  v5 = *(v2 + 8);

  return v5(a1, a2);
}

uint64_t sub_1DD94D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831C0, &qword_1DDA19730);
  v5[57] = v6;
  v7 = *(v6 - 8);
  v5[58] = v7;
  v8 = *(v7 + 64) + 15;
  v5[59] = swift_task_alloc();
  v9 = sub_1DDA14B60();
  v5[60] = v9;
  v10 = *(v9 - 8);
  v5[61] = v10;
  v11 = *(v10 + 64) + 15;
  v5[62] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831C8, &qword_1DDA19738);
  v5[63] = v12;
  v13 = *(v12 - 8);
  v5[64] = v13;
  v14 = *(v13 + 64) + 15;
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v15 = sub_1DDA13140();
  v5[67] = v15;
  v16 = *(v15 - 8);
  v5[68] = v16;
  v17 = *(v16 + 64) + 15;
  v5[69] = swift_task_alloc();
  v18 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DD94D2E4, 0, 0);
}

uint64_t sub_1DD94D2E4()
{
  v1 = v0;
  v14 = *MEMORY[0x1E69E9840];
  v13 = v0[55];
  v2 = v0[53];
  v0[70] = sub_1DD94C98C(v0[69]);
  v12 = (*(v13 + 16) + **(v13 + 16));
  v3 = *(*(v13 + 16) + 4);
  v4 = swift_task_alloc();
  v1[71] = v4;
  *v4 = v1;
  v4[1] = sub_1DD94D440;
  v5 = v1[69];
  v6 = v1[66];
  v7 = v1[55];
  v8 = v1[56];
  v9 = v1[54];
  v10 = *MEMORY[0x1E69E9840];

  return v12(v6, v5, v9, v7);
}

uint64_t sub_1DD94D440(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 568);
  v10 = *v2;
  v3[72] = a1;
  v3[73] = v1;

  if (v1)
  {
    v5 = v3[70];

    v6 = sub_1DD94E3B8;
  }

  else
  {
    v6 = sub_1DD94D594;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD94D594()
{
  v61 = v0;
  v60[1] = *MEMORY[0x1E69E9840];
  if (qword_1ECD827C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA2128);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14F00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 576);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v60[0] = v8;
    *v7 = 136446210;
    v9 = [v6 allHeaderFields];
    v10 = sub_1DDA14AA0();

    strcpy((v0 + 384), "x-request-id");
    *(v0 + 397) = 0;
    *(v0 + 398) = -5120;
    sub_1DDA15020();
    if (*(v10 + 16) && (v11 = sub_1DD96ADEC(v0 + 248), (v12 & 1) != 0))
    {
      sub_1DD9410C8(*(v10 + 56) + 32 * v11, v0 + 288);
      sub_1DD955FA0(v0 + 248);

      if (swift_dynamicCast())
      {
        v14 = *(v0 + 400);
        v13 = *(v0 + 408);
LABEL_10:
        v15 = sub_1DD93FA54(v14, v13, v60);

        *(v7 + 4) = v15;
        _os_log_impl(&dword_1DD8F8000, v4, v5, "[Workflow] x-request-id: %{public}s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x1E12B8CE0](v8, -1, -1);
        MEMORY[0x1E12B8CE0](v7, -1, -1);
        goto LABEL_11;
      }

      v14 = 0x3E6C696E3CLL;
    }

    else
    {
      v14 = 0x3E6C696E3CLL;

      sub_1DD955FA0(v0 + 248);
    }

    v13 = 0xE500000000000000;
    goto LABEL_10;
  }

LABEL_11:

  v16 = *(v0 + 576);
  if (sub_1DD94E4B0() != 2)
  {
    v48 = *(v0 + 472);
    (*(*(v0 + 512) + 16))(*(v0 + 520), *(v0 + 528), *(v0 + 504));
    sub_1DD90D2A4(&qword_1ECD831D0, &qword_1ECD831C8, &qword_1DDA19738);
    sub_1DDA14DC0();
    *(v0 + 592) = xmmword_1DDA16330;
    v49 = sub_1DD90D2A4(&qword_1ECD831D8, &qword_1ECD831C0, &qword_1DDA19730);
    v50 = *(MEMORY[0x1E69E85A8] + 4);
    v51 = swift_task_alloc();
    *(v0 + 608) = v51;
    *v51 = v0;
    v51[1] = sub_1DD94DC4C;
    v52 = *(v0 + 472);
    v29 = *(v0 + 456);
    v53 = *MEMORY[0x1E69E9840];
    v28 = v0 + 352;
    v30 = v49;

    return MEMORY[0x1EEE6D8C8](v28, v29, v30);
  }

  v17 = *(v0 + 560);
  v18 = *(v0 + 576);

  sub_1DD9C1AE0(v19, v18, 0, 0xF000000000000000, (v0 + 160));
  v20 = *(v0 + 160);
  if (v20)
  {
    *(v0 + 64) = v20;
    *(v0 + 72) = *(v0 + 168);
    *(v0 + 88) = *(v0 + 184);
    *(v0 + 104) = *(v0 + 200);
    sub_1DD94CB80(v0 + 64);

    *(v0 + 320) = *(v0 + 96);
    sub_1DD9311E4(v0 + 320);
  }

  v22 = *(v0 + 488);
  v21 = *(v0 + 496);
  v23 = *(v0 + 480);
  sub_1DDA14B50();
  v24 = sub_1DDA14B20();
  v26 = v25;
  v27 = *(v22 + 8);
  v28 = v27(v21, v23);
  if (v26 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_24;
  }

  v58 = v26;
  v59 = v24;
  v31 = *(v0 + 496);
  v32 = *(v0 + 480);
  sub_1DDA14B50();
  v57 = sub_1DDA14B20();
  v34 = v33;
  v28 = v27(v31, v32);
  if (v34 >> 60 == 15)
  {
LABEL_24:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v28, v29, v30);
  }

  v35 = *(v0 + 560);
  v36 = *(v0 + 552);
  v37 = *(v0 + 544);
  v38 = *(v0 + 528);
  v39 = *(v0 + 520);
  v41 = *(v0 + 504);
  v40 = *(v0 + 512);
  v54 = *(v0 + 536);
  v55 = *(v0 + 496);
  v56 = *(v0 + 472);
  v42 = *(v0 + 416);

  (*(v40 + 16))(v39, v38, v41);
  v43 = swift_allocObject();
  v43[2] = v57;
  v43[3] = v34;
  v43[4] = v59;
  v43[5] = v58;
  sub_1DD90D2A4(&qword_1ECD831D0, &qword_1ECD831C8, &qword_1DDA19738);
  sub_1DDA153F0();
  (*(v40 + 8))(v38, v41);
  (*(v37 + 8))(v36, v54);

  v44 = *(v0 + 8);
  v45 = *(v0 + 576);
  v46 = *MEMORY[0x1E69E9840];

  return v44(v45);
}

uint64_t sub_1DD94DC4C()
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 608);
  v11 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v4 = v2[75];
    v5 = v2[74];
    v6 = v2[70];
    (*(v2[58] + 8))(v2[59], v2[57]);

    sub_1DD909D28(v5, v4);
    v7 = sub_1DD94E298;
  }

  else
  {
    v7 = sub_1DD94DDD4;
  }

  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD94DDD4()
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 360);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  if (v1 >> 60 != 15)
  {
    v29 = *(v0 + 352);
    *(v0 + 368) = v3;
    *(v0 + 376) = v2;
    v30 = MEMORY[0x1E6969080];
    v31 = MEMORY[0x1E6969078];
    *(v0 + 232) = MEMORY[0x1E6969080];
    *(v0 + 240) = v31;
    *(v0 + 208) = v29;
    *(v0 + 216) = v1;
    v32 = __swift_project_boxed_opaque_existential_1((v0 + 208), v30);
    v33 = *v32;
    v34 = v32[1];
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        *(v0 + 644) = 0;
        *(v0 + 638) = 0;
        goto LABEL_22;
      }

      v36 = *(v33 + 16);
      v37 = *(v33 + 24);
      sub_1DD909CD4(*(v0 + 592), *(v0 + 600));
      if (sub_1DDA13320())
      {
        v38 = sub_1DDA13350();
        v33 = v36 - v38;
        if (__OFSUB__(v36, v38))
        {
          goto LABEL_27;
        }
      }

      if (!__OFSUB__(v37, v36))
      {
LABEL_20:
        v40 = *(v0 + 600);
        v41 = *(v0 + 592);
        sub_1DDA13340();
        sub_1DDA13550();
        sub_1DD909D28(v41, v40);
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v35)
    {
      *(v0 + 624) = v33;
      *(v0 + 632) = v34;
      *(v0 + 634) = BYTE2(v34);
      *(v0 + 635) = BYTE3(v34);
      *(v0 + 636) = BYTE4(v34);
      *(v0 + 637) = BYTE5(v34);
LABEL_22:
      sub_1DDA13550();
LABEL_23:
      __swift_destroy_boxed_opaque_existential_1((v0 + 208));
      *(v0 + 592) = *(v0 + 368);
      v42 = sub_1DD90D2A4(&qword_1ECD831D8, &qword_1ECD831C0, &qword_1DDA19730);
      v43 = *(MEMORY[0x1E69E85A8] + 4);
      v44 = swift_task_alloc();
      *(v0 + 608) = v44;
      *v44 = v0;
      v44[1] = sub_1DD94DC4C;
      v45 = *(v0 + 472);
      v13 = *(v0 + 456);
      v46 = *MEMORY[0x1E69E9840];
      v12 = v0 + 352;
      v14 = v42;

      return MEMORY[0x1EEE6D8C8](v12, v13, v14);
    }

    v39 = v33;
    if (v33 >> 32 >= v33)
    {
      sub_1DD909CD4(*(v0 + 592), *(v0 + 600));
      if (!sub_1DDA13320() || !__OFSUB__(v39, sub_1DDA13350()))
      {
        goto LABEL_20;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = *(v0 + 576);
  v5 = *(v0 + 560);
  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
  sub_1DD90D440(*(v0 + 352), *(v0 + 360));
  v6 = v4;

  sub_1DD909CD4(v3, v2);
  sub_1DD9C1AE0(v5, v6, v3, v2, (v0 + 112));
  v7 = *(v0 + 112);
  if (v7)
  {
    *(v0 + 16) = v7;
    *(v0 + 24) = *(v0 + 120);
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 56) = *(v0 + 152);
    sub_1DD94CB80(v0 + 16);

    *(v0 + 336) = *(v0 + 48);
    sub_1DD9311E4(v0 + 336);
  }

  v8 = *(v0 + 600);
  v9 = *(v0 + 592);
  v10 = *(v0 + 432);
  v11 = *(v0 + 440);
  v12 = sub_1DD9552D8(*(v0 + 576));
  if (!v12)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v12, v13, v14);
  }

  v15 = *(v0 + 600);
  v16 = *(v0 + 592);
  v17 = *(v0 + 576);
  v18 = *(v0 + 560);
  v19 = *(v0 + 528);
  v20 = *(v0 + 504);
  v21 = *(v0 + 512);

  swift_willThrow();
  sub_1DD909D28(v16, v15);

  (*(v21 + 8))(v19, v20);
  v22 = *(v0 + 528);
  v23 = *(v0 + 520);
  v24 = *(v0 + 496);
  v25 = *(v0 + 472);
  (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));

  v26 = *(v0 + 8);
  v27 = *MEMORY[0x1E69E9840];

  return v26();
}

uint64_t sub_1DD94E298()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 616);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 496);
  v8 = *(v0 + 472);
  (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_1DD94E3B8()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[73];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[62];
  v5 = v0[59];
  (*(v0[68] + 8))(v0[69], v0[67]);

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1DD94E4B0()
{
  v1 = [v0 statusCode];
  if ((v1 - 100) < 0x64)
  {
    return 1;
  }

  if ((v1 - 200) < 0x64)
  {
    return 2;
  }

  if ((v1 - 300) < 0x64)
  {
    return 3;
  }

  if ((v1 - 400) < 0x64)
  {
    return 4;
  }

  if ((v1 - 500) >= 0x64)
  {
    return 0;
  }

  return 5;
}

uint64_t sub_1DD94E544(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD94E574, 0, 0);
}

uint64_t sub_1DD94E574()
{
  v16 = v0;
  if ((sub_1DD954BF8(*(v0 + 56), *(v0 + 64), *(v0 + 24), *(v0 + 32)) & 1) == 0)
  {
    result = sub_1DD94E694(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
    if (result)
    {
      v2 = *(v0 + 48);
      v3 = v2 >> 62;
      if ((v2 >> 62) > 1)
      {
        if (v3 != 2)
        {
          v4 = 0;
          goto LABEL_14;
        }

        v5 = *(*(v0 + 40) + 16);
        v6 = *(*(v0 + 40) + 24);
        v4 = v6 - v5;
        if (!__OFSUB__(v6, v5))
        {
          goto LABEL_14;
        }

        __break(1u);
      }

      else if (!v3)
      {
        v4 = BYTE6(v2);
LABEL_14:
        v12 = *(v0 + 56);
        v11 = *(v0 + 64);
        v13 = *(v0 + 16);
        sub_1DD909CD4(v12, v11);
        sub_1DD94E944(v4, v12, v11, &v15);
        *v13 = v15;
        goto LABEL_15;
      }

      v7 = *(v0 + 40);
      v8 = *(v0 + 44);
      v9 = __OFSUB__(v8, v7);
      v10 = v8 - v7;
      if (v9)
      {
        __break(1u);
        return result;
      }

      v4 = v10;
      goto LABEL_14;
    }
  }

  **(v0 + 16) = xmmword_1DDA195F0;
LABEL_15:
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DD94E694(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1DDA135B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23[-v14];
  if (a2 >> 62 == 2)
  {
    v16 = *(a1 + 16);
  }

  sub_1DD909CD4(a1, a2);
  sub_1DDA135C0();
  if (a4 >> 62 == 2)
  {
    v17 = *(a3 + 16);
  }

  sub_1DD909CD4(a3, a4);
  sub_1DDA135C0();
  sub_1DD9565F0(&qword_1ECD831E0, MEMORY[0x1E6969050]);
  while (1)
  {
    sub_1DDA14F60();
    if (v23[15])
    {
      v21 = *(v9 + 8);
      v21(v13, v8);
      sub_1DDA14F60();
      v21(v15, v8);
      return v23[13];
    }

    v18 = v23[14];
    sub_1DDA14F60();
    if (v23[11])
    {
      break;
    }

    if (v18 != v23[10])
    {
      v19 = *(v9 + 8);
      v19(v13, v8);
      v19(v15, v8);
      return 0;
    }
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v15, v8);
  return 1;
}

uint64_t sub_1DD94E944@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1DD954A28(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_1DD954ADC(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_1DDA13560();
    v17 = v16;
    result = sub_1DD909D28(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t sub_1DD94EA94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831F0, &qword_1DDA19758);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = sub_1DDA14E90();
  v2[6] = v7;
  v8 = *(v7 - 8);
  v2[7] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v2[8] = v10;
  v11 = *(MEMORY[0x1E6969ED0] + 4);
  v12 = swift_task_alloc();
  v2[9] = v12;
  *v12 = v2;
  v12[1] = sub_1DD94EC0C;

  return MEMORY[0x1EEDC6270](v10, a2, 0);
}

uint64_t sub_1DD94EC0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1DD94EEE4;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_1DD94ED34;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD94ED34()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v10 = v0[2];
  v11 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831F8, &qword_1DDA19760);
  swift_allocBox();
  sub_1DD9565F0(&qword_1ECD83200, MEMORY[0x1E6969EA0]);
  sub_1DDA14DB0();
  sub_1DDA13390();
  (*(v6 + 8))(v3, v5);

  sub_1DDA14E30();
  (*(v2 + 8))(v1, v4);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1DD94EEE4()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1DD94EF54(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_1DDA14B60();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831F8, &qword_1DDA19760);
  v1[14] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD94F03C, 0, 0);
}

uint64_t sub_1DD94F03C()
{
  v1 = v0[14];
  swift_beginAccess();
  v2 = *(MEMORY[0x1E6968878] + 4);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1DD94F0E8;
  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x1EEDC3248](v4);
}

uint64_t sub_1DD94F0E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v8 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v6 = sub_1DD94F2F4;
  }

  else
  {
    swift_endAccess();
    v6 = sub_1DD94F208;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD94F208()
{
  if (v0[17])
  {
    v1 = v0[16];
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[10];
    sub_1DDA14B50();
    v5 = sub_1DDA14B20();
    v7 = v6;

    (*(v3 + 8))(v2, v4);
    if (v7 >> 60 != 15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = 0;
  v7 = 0xF000000000000000;
LABEL_5:
  v8 = v0[12];
  v9 = v0[9];
  *v9 = v5;
  v9[1] = v7;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD94F2F4()
{
  v1 = v0[18];
  swift_endAccess();
  swift_getErrorValue();
  v2 = v0[5];
  v3 = sub_1DD94F4C8(v0[6], v0[7]);
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DDA14810();
  __swift_project_value_buffer(v4, qword_1ECDA20F8);
  v5 = v3;
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14EE0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Received error during streaming: %@", v8, 0xCu);
    sub_1DD90D378(v9, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  v12 = v0[18];
  v13 = v0[12];

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DD94F4C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v109 = sub_1DDA13740();
  v111 = *(v109 - 8);
  v5 = *(v111 + 64);
  v6 = MEMORY[0x1EEE9AC00](v109);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83188, &qword_1DDA196F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v102 - v12;
  v14 = *(a1 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v104 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v107 = &v102 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v106 = &v102 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v105 = &v102 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v102 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v103 = &v102 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v102 = &v102 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v108 = &v102 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v102 - v33;
  v35 = sub_1DDA13750();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v14;
  v40 = *(v14 + 16);
  v40(v34, v3, a1);
  v41 = v35;
  v42 = v36;
  v43 = swift_dynamicCast();
  v44 = *(v36 + 56);
  v113 = v40;
  if (v43)
  {
    v105 = v3;
    v44(v13, 0, 1, v41);
    (*(v36 + 32))(v39, v13, v41);
    sub_1DD9565F0(&qword_1ECD83190, MEMORY[0x1E6969C20]);
    v45 = v110;
    v106 = v39;
    v107 = v41;
    sub_1DDA133F0();
    v46 = v112;
    sub_1DDA13730();
    sub_1DD9565F0(&qword_1ECD83198, MEMORY[0x1E6969BF8]);
    v47 = v109;
    v48 = sub_1DDA14AF0();
    v49 = *(v111 + 8);
    v49(v46, v47);
    if (v48)
    {
      v49(v45, v47);
      v50 = sub_1DDA13840();
      sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      v51 = swift_allocError();
      v53 = v52;
      v54 = v108;
      v113(v108, v105, a1);
      if (sub_1DDA15430())
      {
        (*(v115 + 8))(v54, a1);
      }

      else
      {
        swift_allocError();
        (*(v115 + 32))(v89, v54, a1);
      }

      v91 = v106;
      v90 = v107;
      sub_1DDA13800();
      (*(*(v50 - 8) + 104))(v53, *MEMORY[0x1E69DA4E0], v50);
      (*(v42 + 8))(v91, v90);
    }

    else
    {
      v60 = v112;
      sub_1DDA13720();
      v61 = sub_1DDA14AF0();
      v49(v60, v47);
      v49(v45, v47);
      v62 = sub_1DDA13840();
      sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      v51 = swift_allocError();
      v64 = v63;
      if (v61)
      {
        v65 = v102;
        v113(v102, v105, a1);
        v66 = sub_1DDA15430();
        v67 = v115;
        if (v66)
        {
          (*(v115 + 8))(v65, a1);
        }

        else
        {
          swift_allocError();
          (*(v67 + 32))(v96, v65, a1);
        }

        v97 = v106;
        sub_1DDA13800();
        v98 = MEMORY[0x1E69DA4D8];
      }

      else
      {
        v85 = v103;
        v113(v103, v105, a1);
        v86 = sub_1DDA15430();
        v87 = v115;
        if (v86)
        {
          (*(v115 + 8))(v85, a1);
        }

        else
        {
          swift_allocError();
          (*(v87 + 32))(v99, v85, a1);
        }

        v97 = v106;
        sub_1DDA13800();
        v98 = MEMORY[0x1E69DA498];
      }

      (*(*(v62 - 8) + 104))(v64, *v98, v62);
      (*(v42 + 8))(v97, v107);
    }
  }

  else
  {
    v44(v13, 1, 1, v41);
    sub_1DD90D378(v13, &qword_1ECD83188, &qword_1DDA196F8);
    v55 = v26;
    v40(v26, v3, a1);
    v56 = sub_1DDA15430();
    v57 = v3;
    if (v56)
    {
      v58 = v56;
      v59 = v115;
      (*(v115 + 8))(v55, a1);
    }

    else
    {
      v58 = swift_allocError();
      v59 = v115;
      (*(v115 + 32))(v68, v55, a1);
    }

    v69 = sub_1DDA13400();

    v70 = [v69 domain];
    v71 = sub_1DDA14B10();
    v73 = v72;

    v74 = *MEMORY[0x1E696A978];
    if (v71 == sub_1DDA14B10() && v73 == v75)
    {
    }

    else
    {
      v76 = sub_1DDA15440();

      if ((v76 & 1) == 0)
      {

        v83 = v104;
        v113(v104, v57, a1);
        v84 = sub_1DDA15430();
        if (v84)
        {
          v51 = v84;
          (*(v59 + 8))(v83, a1);
        }

        else
        {
          v51 = swift_allocError();
          (*(v59 + 32))(v95, v83, a1);
        }

        return v51;
      }
    }

    v77 = [v69 code];
    v78 = sub_1DDA13840();
    sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    v51 = swift_allocError();
    v80 = v79;
    if (v77 == -1001)
    {
      v82 = v106;
      v113(v106, v57, a1);
      if (sub_1DDA15430())
      {
        (*(v59 + 8))(v82, a1);
      }

      else
      {
        swift_allocError();
        (*(v59 + 32))(v94, v82, a1);
      }

      sub_1DDA13800();
      v93 = MEMORY[0x1E69DA4D8];
    }

    else if (v77 == -999)
    {
      v81 = v105;
      v113(v105, v57, a1);
      if (sub_1DDA15430())
      {
        (*(v59 + 8))(v81, a1);
      }

      else
      {
        swift_allocError();
        (*(v59 + 32))(v92, v81, a1);
      }

      sub_1DDA13800();
      v93 = MEMORY[0x1E69DA4E0];
    }

    else
    {
      v88 = v107;
      v113(v107, v57, a1);
      if (sub_1DDA15430())
      {
        (*(v59 + 8))(v88, a1);
      }

      else
      {
        swift_allocError();
        (*(v59 + 32))(v100, v88, a1);
      }

      sub_1DDA13800();
      v93 = MEMORY[0x1E69DA498];
    }

    (*(*(v78 - 8) + 104))(v80, *v93, v78);
  }

  return v51;
}

uint64_t sub_1DD95027C(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E6969EC0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD95031C;

  return MEMORY[0x1EEDC6260](a1, 0);
}

uint64_t sub_1DD95031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v10 + 8);

    return v11();
  }

  else
  {
    v8[3] = a3;
    v8[4] = a2;
    v8[5] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DD950480, 0, 0);
  }
}

uint64_t sub_1DD950480()
{
  v1 = v0[3];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = v0[1];
  v5 = v0[4];
  v4 = v0[5];

  return v3(v4, v5, v2);
}

uint64_t sub_1DD95050C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD9505B8;

  return sub_1DD94EA94(a1, a2);
}

uint64_t sub_1DD9505B8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id sub_1DD9506B8()
{
  v1 = *v0;
  v2 = sub_1DDA130D0();
  v3 = sub_1DDA13470();
  v4 = [v1 uploadTaskWithRequest:v2 fromFile:v3];

  return v4;
}

id sub_1DD95072C()
{
  v1 = *v0;
  v2 = sub_1DDA130D0();
  v3 = [v1 uploadTaskWithStreamedRequest_];

  return v3;
}

uint64_t sub_1DD950780(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DD950908;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);

  [v3 getAllTasksWithCompletionHandler_];
  _Block_release(v4);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD950860(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DD9508A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD950908(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1DD9565A8(0, &qword_1ECD831E8, 0x1E696AF98);
  v3 = sub_1DDA14CA0();

  v2(v3);
}

uint64_t sub_1DD95098C@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a1;
  v4 = sub_1DDA13150();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DDA131D0();
  v26 = *(v7 - 8);
  v8 = v26;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = sub_1DDA131F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA13230();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *a3 = sub_1DDA13220();
  (*(v11 + 104))(v14, *MEMORY[0x1E6967FA8], v10);

  sub_1DDA13200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83210, &qword_1DDA19788);
  v18 = *(v8 + 72);
  v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DDA184A0;
  sub_1DDA131A0();
  sub_1DDA131B0();
  sub_1DDA131C0();
  v32 = v20;
  sub_1DD9565F0(&qword_1EE16F8F8, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83218, &qword_1DDA19790);
  sub_1DD90D2A4(&unk_1EE16F3A8, &qword_1ECD83218, &qword_1DDA19790);
  sub_1DDA14FC0();
  sub_1DDA131E0();

  v21 = sub_1DDA13190();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(a3 + 8) = sub_1DDA13180();
  (*(v28 + 104))(v27, *MEMORY[0x1E6967F10], v29);

  sub_1DDA13160();

  *(a3 + 56) = v30;
  return sub_1DD92BD14(v31, a3 + 16);
}

uint64_t sub_1DD950D48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 458) = a8;
  *(v9 + 457) = a7;
  *(v9 + 320) = a6;
  *(v9 + 328) = v8;
  *(v9 + 456) = a4;
  *(v9 + 304) = a3;
  *(v9 + 312) = a5;
  *(v9 + 288) = a1;
  *(v9 + 296) = a2;
  v10 = *(*(sub_1DDA14B60() - 8) + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  v11 = sub_1DDA134E0();
  *(v9 + 344) = v11;
  v12 = *(v11 - 8);
  *(v9 + 352) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 360) = swift_task_alloc();
  v14 = sub_1DDA13140();
  *(v9 + 368) = v14;
  v15 = *(v14 - 8);
  *(v9 + 376) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD950EB0, 0, 0);
}

uint64_t sub_1DD950EB0()
{
  v49 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 304);
  (*(*(v0 + 352) + 16))(*(v0 + 360), *(v0 + 288), *(v0 + 344));
  sub_1DDA130F0();
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 458);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    sub_1DD909CD4(v6, v5);
    sub_1DD909CD4(v6, v5);
    sub_1DDA13120();
    v7 = *(v0 + 384);
    sub_1DDA13130();

    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DDA14810();
    __swift_project_value_buffer(v8, qword_1ECDA20F8);
    v9 = sub_1DDA147F0();
    v10 = sub_1DDA14ED0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 384);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315138;
      swift_beginAccess();
      v14 = sub_1DDA13110();
      v16 = v15;
      result = swift_endAccess();
      if (v16 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        v18 = *(v0 + 336);
        sub_1DDA14B50();
        v19 = sub_1DDA14B30();
        v21 = v20;
        result = sub_1DD90D440(v14, v16);
        if (v21)
        {
          v23 = *(v0 + 296);
          v22 = *(v0 + 304);
          v24 = sub_1DD93FA54(v19, v21, &v48);

          *(v12 + 4) = v24;
          _os_log_impl(&dword_1DD8F8000, v9, v10, "Sending request: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x1E12B8CE0](v13, -1, -1);
          MEMORY[0x1E12B8CE0](v12, -1, -1);
          v25 = v23;
          v26 = v22;
LABEL_9:
          sub_1DD90D440(v25, v26);

          goto LABEL_10;
        }
      }

      __break(1u);
      return result;
    }

    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    goto LABEL_9;
  }

LABEL_10:
  if (*(v0 + 457))
  {
    v27 = *(v0 + 384);
    swift_beginAccess();
    sub_1DDA130B0();
    swift_endAccess();
  }

  else
  {
    v28 = *(v0 + 320);
  }

  v29 = *(v0 + 384);
  v30 = *(v0 + 456);
  swift_beginAccess();
  sub_1DDA130C0();
  v31 = *&aPost[8 * v30];
  v32 = qword_1DDA1A090[v30];
  v33 = *(v0 + 384);
  v34 = *(v0 + 328);
  sub_1DDA130A0();
  swift_endAccess();
  if (*(v34 + 56) == 1)
  {
    v35 = sub_1DD93FF08(&unk_1F58EBFF8);
    sub_1DD90D378(&unk_1F58EC018, &qword_1ECD829C8, &qword_1DDA1E380);
  }

  else
  {
    v35 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v36 = *(v0 + 312);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v36;
  sub_1DD954E10(v35, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v48);

  v38 = v48;
  v40 = *(v0 + 384);
  v39 = *(v0 + 392);
  v41 = *(v0 + 368);
  v42 = *(v0 + 376);
  v43 = *(v0 + 328);
  swift_beginAccess();
  sub_1DD9528C4(v40, v38);
  swift_endAccess();

  (*(v42 + 16))(v39, v40, v41);
  v44 = *(v42 + 8);
  *(v0 + 400) = v44;
  *(v0 + 408) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v40, v41);
  v45 = swift_task_alloc();
  *(v0 + 416) = v45;
  *v45 = v0;
  v45[1] = sub_1DD9513D8;
  v46 = *(v0 + 392);
  v47 = *(v0 + 328);

  return sub_1DD951BB4(v46, 1);
}

uint64_t sub_1DD9513D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 416);
  v9 = *v4;
  v5[53] = a1;
  v5[54] = a2;
  v5[55] = a3;
  v5[56] = v3;

  if (v3)
  {
    v7 = sub_1DD951B18;
  }

  else
  {
    v7 = sub_1DD9514F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD9514F0()
{
  v70 = v0;
  v1 = [*(v0 + 440) allHeaderFields];
  v2 = MEMORY[0x1E69E69B8];
  v3 = sub_1DDA14AA0();

  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v67 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    while (1)
    {
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v8 << 6);
      sub_1DD9550D8(*(v3 + 48) + 40 * v11, v0 + 16);
      sub_1DD9410C8(*(v3 + 56) + 32 * v11, v0 + 56);
      sub_1DD9550D8(v0 + 16, v0 + 88);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v12 = v2;
      v13 = *(v0 + 256);
      v14 = *(v0 + 264);
      sub_1DD9410C8(v0 + 56, v0 + 128);
      if (swift_dynamicCast())
      {
        v64 = *(v0 + 280);
        v65 = *(v0 + 272);
        sub_1DD90D378(v0 + 16, &qword_1ECD83180, &qword_1DDA196E8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1DD908740(0, v67[2] + 1, 1, v67);
        }

        v16 = v67[2];
        v15 = v67[3];
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v62 = v67[2];
          v63 = v16 + 1;
          v19 = sub_1DD908740((v15 > 1), v16 + 1, 1, v67);
          v16 = v62;
          v17 = v63;
          v67 = v19;
        }

        v67[2] = v17;
        v18 = &v67[4 * v16];
        v18[4] = v13;
        v18[5] = v14;
        v18[6] = v65;
        v18[7] = v64;
        v2 = v12;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v2 = v12;
LABEL_6:
        sub_1DD90D378(v0 + 16, &qword_1ECD83180, &qword_1DDA196E8);
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_47:
      swift_once();
      goto LABEL_27;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  if (v67[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
    v20 = sub_1DDA151C0();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v21 = *(v0 + 448);
  v69[0] = v20;

  sub_1DD954678(v22, 1, v69);
  if (v21)
  {

    return swift_unexpectedError();
  }

  v7 = v69[0];
  if (qword_1ECD827B0 != -1)
  {
    goto LABEL_47;
  }

LABEL_27:
  v25 = *(v0 + 424);
  v24 = *(v0 + 432);
  v26 = sub_1DDA14810();
  __swift_project_value_buffer(v26, qword_1ECDA20F8);
  sub_1DD909CD4(v25, v24);
  v27 = sub_1DDA147F0();
  v28 = sub_1DDA14ED0();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 432);
  if (v29)
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 == 2)
      {
        v33 = *(*(v0 + 424) + 16);
        v34 = *(*(v0 + 424) + 24);
        v35 = __OFSUB__(v34, v33);
        v32 = v34 - v33;
        if (v35)
        {
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      if (!v31)
      {
        v32 = *(v0 + 438);
        goto LABEL_39;
      }

LABEL_36:
      v36 = *(v0 + 424);
      v37 = *(v0 + 428);
      v35 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v35)
      {
        __break(1u);
        return result;
      }

      v32 = v38;
    }

LABEL_39:
    v40 = *(v0 + 424);
    v39 = *(v0 + 432);
    *(result + 4) = v32;
    v41 = result;
    sub_1DD909D28(v40, v39);
    _os_log_impl(&dword_1DD8F8000, v27, v28, "Received response: %ld bytes", v41, 0xCu);
    MEMORY[0x1E12B8CE0](v41, -1, -1);
  }

  else
  {
    sub_1DD909D28(*(v0 + 424), *(v0 + 432));
  }

  v42 = sub_1DDA147F0();
  v43 = sub_1DDA14ED0();

  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 440);
  v47 = *(v0 + 400);
  v46 = *(v0 + 408);
  v48 = *(v0 + 392);
  v49 = *(v0 + 368);
  if (v44)
  {
    v68 = *(v0 + 400);
    v50 = swift_slowAlloc();
    v66 = v48;
    v51 = swift_slowAlloc();
    v69[0] = v51;
    *v50 = 136315138;
    v52 = sub_1DDA14AB0();
    v54 = sub_1DD93FA54(v52, v53, v69);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_1DD8F8000, v42, v43, "Response headers: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1E12B8CE0](v51, -1, -1);
    MEMORY[0x1E12B8CE0](v50, -1, -1);

    v68(v66, v49);
  }

  else
  {

    v47(v48, v49);
  }

  v56 = *(v0 + 384);
  v55 = *(v0 + 392);
  v57 = *(v0 + 360);
  v58 = *(v0 + 336);

  v59 = *(v0 + 8);
  v60 = *(v0 + 424);
  v61 = *(v0 + 432);

  return v59(v60, v61, v7);
}

uint64_t sub_1DD951B18()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 336);
  (*(v0 + 400))(*(v0 + 392), *(v0 + 368));

  v5 = *(v0 + 8);
  v6 = *(v0 + 448);

  return v5();
}

uint64_t sub_1DD951BB4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = sub_1DDA13840();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD951CBC, 0, 0);
}

uint64_t sub_1DD951CBC()
{
  v1 = *(v0 + 72);
  *(v0 + 176) = *MEMORY[0x1E69DA498];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1DD951D90;
  v5 = *(v0 + 56);

  return sub_1DD94C028(v5, v3, v2);
}

uint64_t sub_1DD951D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 136);
  v10 = *v4;
  *(*v4 + 144) = v3;

  if (v3)
  {
    v11 = sub_1DD951F60;
  }

  else
  {
    v8[19] = a3;
    v8[20] = a2;
    v8[21] = a1;
    v11 = sub_1DD951ECC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DD951ECC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);

  return v4(v5, v6, v7);
}

uint64_t sub_1DD951F60()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v6 = sub_1DD94F4C8(*(v0 + 24), *(v0 + 32));

  *(v0 + 48) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 176);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    (*(v12 + 56))(v13, 0, 1, v11);
    v14 = *(v12 + 32);
    v14(v9, v13, v11);
    v14(v10, v9, v11);
    if ((*(v12 + 88))(v10, v11) == v8)
    {
      v15 = *(v0 + 128);
      v16 = *(v0 + 64);
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      if (v15 != v16)
      {
        v17 = *(v0 + 128);

        *(v0 + 120) = v6;
        *(v0 + 128) = v17 + 1;
        v18 = *(v0 + 72);
        v20 = v18[5];
        v19 = v18[6];
        __swift_project_boxed_opaque_existential_1(v18 + 2, v20);
        v21 = swift_task_alloc();
        *(v0 + 136) = v21;
        *v21 = v0;
        v21[1] = sub_1DD951D90;
        v22 = *(v0 + 56);

        return sub_1DD94C028(v22, v20, v19);
      }
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    }
  }

  else
  {
    v24 = *(v0 + 80);
    (*(*(v0 + 96) + 56))(v24, 1, 1, *(v0 + 88));
    sub_1DD90D378(v24, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v25 = *(v0 + 144);
  v27 = *(v0 + 104);
  v26 = *(v0 + 112);
  v28 = *(v0 + 80);
  swift_willThrow();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1DD95223C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_1DDA13840();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD952344, 0, 0);
}

uint64_t sub_1DD952344()
{
  v1 = *(v0 + 80);
  *(v0 + 168) = *MEMORY[0x1E69DA498];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1DD952418;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  return sub_1DD94D0B8(v5, v6, v3, v2);
}

uint64_t sub_1DD952418(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_1DD9525D0;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_1DD952540;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD952540()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);
  v5 = *(v0 + 160);

  return v4(v5);
}

uint64_t sub_1DD9525D0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v6 = sub_1DD94F4C8(*(v0 + 24), *(v0 + 32));

  *(v0 + 48) = v6;
  v7 = v6;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (!swift_dynamicCast())
  {
    v26 = *(v0 + 88);
    (*(*(v0 + 104) + 56))(v26, 1, 1, *(v0 + 96));
    sub_1DD90D378(v26, &qword_1ECD82F78, &qword_1DDA188D8);
LABEL_9:

    goto LABEL_10;
  }

  v9 = *(v0 + 168);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  (*(v13 + 56))(v14, 0, 1, v12);
  v15 = *(v13 + 32);
  v15(v10, v14, v12);
  v15(v11, v10, v12);
  if ((*(v13 + 88))(v11, v12) != v9)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    goto LABEL_9;
  }

  v16 = *(v0 + 136);
  v17 = *(v0 + 72);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  if (v16 != v17)
  {
    v18 = *(v0 + 136);

    *(v0 + 128) = v6;
    *(v0 + 136) = v18 + 1;
    v19 = *(v0 + 80);
    v21 = v19[5];
    v20 = v19[6];
    __swift_project_boxed_opaque_existential_1(v19 + 2, v21);
    v22 = swift_task_alloc();
    *(v0 + 144) = v22;
    *v22 = v0;
    v22[1] = sub_1DD952418;
    v23 = *(v0 + 56);
    v24 = *(v0 + 64);

    return sub_1DD94D0B8(v23, v24, v21, v20);
  }

LABEL_10:
  v27 = *(v0 + 152);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 88);
  swift_willThrow();

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1DD9528C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DDA13680();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA13670();
  sub_1DDA13640();
  v9 = v8 * 1000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82810, &unk_1DDA16340);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E63B0];
  *(v10 + 16) = xmmword_1DDA16320;
  v12 = MEMORY[0x1E69E6438];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v9;
  v13 = sub_1DDA14B40();
  v15 = v14;
  (*(v4 + 8))(v7, v3);
  if (qword_1ECD827B0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v16 = sub_1DDA14810();
  __swift_project_value_buffer(v16, qword_1ECDA20F8);

  v17 = sub_1DDA147F0();
  v18 = sub_1DDA14ED0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1DD93FA54(v13, v15, &v35);
    _os_log_impl(&dword_1DD8F8000, v17, v18, "Setting x-request-client-start header timestamp: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12B8CE0](v20, -1, -1);
    MEMORY[0x1E12B8CE0](v19, -1, -1);
  }

  sub_1DDA13130();

  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_12:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = (v26 << 10) | (16 * v27);
      v29 = (*(a2 + 48) + v28);
      v30 = *v29;
      v15 = v29[1];
      v31 = (*(a2 + 56) + v28);
      v13 = *v31;
      v32 = v31[1];

      sub_1DDA13100();

      if (!v23)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v26 >= v24)
    {
    }

    v23 = *(a2 + 64 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1DD952C4C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD952D24()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD952DE8()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD952EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD956774();
  *a2 = result;
  return result;
}

void sub_1DD952EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6567617373656DLL;
  v5 = 0xE400000000000000;
  v6 = 1701080931;
  v7 = 0xD000000000000020;
  v8 = 0x80000001DDA26870;
  if (v2 != 3)
  {
    v7 = 0xD000000000000023;
    v8 = 0x80000001DDA268A0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
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

uint64_t sub_1DD952F80()
{
  v1 = *v0;
  v2 = 0x6567617373656DLL;
  v3 = 1701080931;
  v4 = 0xD000000000000020;
  if (v1 != 3)
  {
    v4 = 0xD000000000000023;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_1DD953010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD956774();
  *a1 = result;
  return result;
}

uint64_t sub_1DD953038(uint64_t a1)
{
  v2 = sub_1DD957254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD953074(uint64_t a1)
{
  v2 = sub_1DD957254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9530B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD9567C0(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DD953120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9531A4(uint64_t a1)
{
  v2 = sub_1DD9571AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9531E0(uint64_t a1)
{
  v2 = sub_1DD9571AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD95321C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD956C98(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DD953278()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD95337C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x745F6C616E676973;
  }

  else
  {
    v4 = 0x745F646E75666572;
  }

  if (v3)
  {
    v5 = 0xED0000736E656B6FLL;
  }

  else
  {
    v5 = 0xEC0000006E656B6FLL;
  }

  if (*a2)
  {
    v6 = 0x745F6C616E676973;
  }

  else
  {
    v6 = 0x745F646E75666572;
  }

  if (*a2)
  {
    v7 = 0xEC0000006E656B6FLL;
  }

  else
  {
    v7 = 0xED0000736E656B6FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

uint64_t sub_1DD953438()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9534D0()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD953554()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9535E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DDA151E0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DD953648(uint64_t *a1@<X8>)
{
  v2 = 0x745F646E75666572;
  if (*v1)
  {
    v2 = 0x745F6C616E676973;
  }

  v3 = 0xED0000736E656B6FLL;
  if (*v1)
  {
    v3 = 0xEC0000006E656B6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD95369C()
{
  if (*v0)
  {
    result = 0x745F6C616E676973;
  }

  else
  {
    result = 0x745F646E75666572;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9536EC@<X0>(char *a1@<X8>)
{
  v2 = sub_1DDA151E0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DD953750(uint64_t a1)
{
  v2 = sub_1DD957080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD95378C(uint64_t a1)
{
  v2 = sub_1DD957080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9537C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD956E7C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9537F8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1DDA15570();
  sub_1DD96C2BC(v5, v2);
  sub_1DDA15590();
  if (v3)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD953878(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  sub_1DD96C2BC(a1, *v1);
  if (!v3)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9538F4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1DDA15570();
  sub_1DD96C2BC(v5, v2);
  sub_1DDA15590();
  if (v3)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD953970(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1DD969360(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_1DDA15440() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9539F8()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1DD953A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD953B00(uint64_t a1)
{
  v2 = sub_1DD957A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD953B3C(uint64_t a1)
{
  v2 = sub_1DD957A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD953B78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD957854(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DD953BA8()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  return sub_1DD953278();
}

uint64_t sub_1DD953BB4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD953CA0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1DDA15570();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD953D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1DD965130(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t sub_1DD953E2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD957C94();
  *a2 = result;
  return result;
}

void sub_1DD953E5C(unint64_t *a1@<X8>)
{
  v2 = 0xEF726F746172656ELL;
  v3 = 0x65675F6567616D69;
  v4 = 0x80000001DDA26910;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x6C70755F656C6966;
    v4 = 0xEB0000000064616FLL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001DDA268E0;
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

uint64_t sub_1DD953F58()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD954038()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD954104()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unsigned __int8 *sub_1DD9541E0(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DD908F70(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA256(v6, v8, v11 + 32);
}

uint64_t sub_1DD9542B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1DDA13320();
    if (v10)
    {
      v11 = sub_1DDA13350();
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
      result = sub_1DDA13340();
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
  v10 = sub_1DDA13320();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1DDA13350();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1DDA13340();
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

uint64_t sub_1DD9544E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1DD954B40(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1DD909D28(a3, a4);
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
  sub_1DD9542B8(v14, a3, a4, &v13);
  v10 = v4;
  sub_1DD909D28(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void sub_1DD954678(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1DD96AC38(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1DD9C838C(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_1DD96AC38(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1DDA15500();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1DD9C9D00();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DDA15070();
    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA27C50);
    sub_1DDA15160();
    MEMORY[0x1E12B7AB0](39, 0xE100000000000000);
    sub_1DDA15180();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = sub_1DD96AC38(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_1DD9C838C(v33, 1);
        v34 = *a3;
        v29 = sub_1DD96AC38(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1DD954A28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD954ADC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1DD954B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1DDA13320();
  v11 = result;
  if (result)
  {
    result = sub_1DDA13350();
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

  sub_1DDA13340();
  sub_1DD9542B8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1DD954BF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1DD909CD4(a3, a4);
          return sub_1DD9544E8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD954D60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE69100]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_1DDA14BE0();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1DD954E10(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v48 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v50 = a5;
  v51 = v7;
  v49 = v11;
  while (v10)
  {
    v60 = a4;
    v19 = v12;
LABEL_14:
    v21 = (v19 << 10) | (16 * __clz(__rbit64(v10)));
    v22 = (*(a1 + 48) + v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(a1 + 56) + v21);
    v26 = *v25;
    v27 = v25[1];
    v59[0] = v23;
    v59[1] = v24;
    v59[2] = v26;
    v59[3] = v27;

    a2(&v55, v59);

    v29 = v55;
    v28 = v56;
    v30 = v58;
    v54 = v57;
    v31 = *a5;
    v33 = sub_1DD96AC38(v55, v56);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_25;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((v60 & 1) == 0)
      {
        sub_1DD9C9D00();
      }
    }

    else
    {
      sub_1DD9C838C(v36, v60 & 1);
      v38 = *a5;
      v39 = sub_1DD96AC38(v29, v28);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_27;
      }

      v33 = v39;
    }

    v10 &= v10 - 1;
    v41 = *a5;
    if (v37)
    {
      v13 = 16 * v33;
      v14 = (v41[7] + 16 * v33);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v41[7] + v13);
      v18 = v17[1];
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v41[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v29;
      v42[1] = v28;
      v43 = (v41[7] + 16 * v33);
      *v43 = v54;
      v43[1] = v30;
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_26;
      }

      v41[2] = v46;
    }

    a4 = 1;
    v12 = v19;
    a5 = v50;
    v7 = v51;
    v11 = v49;
  }

  v20 = v12;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v11)
    {
      sub_1DD912130();
    }

    v10 = *(v7 + 8 * v19);
    ++v20;
    if (v10)
    {
      v60 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DDA15500();
  __break(1u);
  return result;
}

uint64_t sub_1DD955134()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD9551CC;

  return sub_1DD94D048(v2, v3);
}

uint64_t sub_1DD9551CC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1DD9552D8(void *a1)
{
  v2 = sub_1DDA14B60();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1DDA13840();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DDA13830();
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  if (sub_1DD94E4B0() != 2)
  {
    if ([a1 statusCode] == 429)
    {
      sub_1DDA13800();
      v13 = [a1 allHeaderFields];
      v14 = sub_1DDA14AA0();

      strcpy(v56, "x-request-id");
      BYTE5(v56[1]) = 0;
      HIWORD(v56[1]) = -5120;
      sub_1DDA15020();
      if (*(v14 + 16) && (v15 = sub_1DD96ADEC(v63), (v16 & 1) != 0))
      {
        sub_1DD9410C8(*(v14 + 56) + 32 * v15, &v57);
        sub_1DD955FA0(v63);

        if (swift_dynamicCast())
        {
          v17 = v56[0];
          v52 = v56[1];
          v53 = sub_1DDA13820();
          v19 = v18;
          v20 = *v18;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v57 = *v19;
          *v19 = 0x8000000000000000;
          sub_1DD9CB364(v17, v52, 0xD000000000000010, 0x80000001DDA27CE0, isUniquelyReferenced_nonNull_native);
          *v19 = v57;
          v53(v63, 0);
        }
      }

      else
      {

        sub_1DD955FA0(v63);
      }

      v27 = v54;
      (*(v55 + 16))(v7, v11, v8);
      (*(v27 + 104))(v7, *MEMORY[0x1E69DA4A8], v4);
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v28 = sub_1DDA14810();
      __swift_project_value_buffer(v28, qword_1ECDA20F8);
      v29 = sub_1DDA147F0();
      v30 = sub_1DDA14EE0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DD8F8000, v29, v30, "Rate limited!", v31, 2u);
        MEMORY[0x1E12B8CE0](v31, -1, -1);
      }

      sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      v12 = swift_allocError();
      (*(v27 + 32))(v32, v7, v4);
      (*(v55 + 8))(v11, v8);
    }

    else
    {
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v22 = sub_1DDA14810();
      __swift_project_value_buffer(v22, qword_1ECDA20F8);
      v23 = a1;
      v24 = sub_1DDA147F0();
      v25 = sub_1DDA14F00();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = [v23 statusCode];

        _os_log_impl(&dword_1DD8F8000, v24, v25, "Received http status code: %ld", v26, 0xCu);
        MEMORY[0x1E12B8CE0](v26, -1, -1);
      }

      else
      {

        v24 = v23;
      }

      v33 = sub_1DDA13190();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_1DDA13180();
      sub_1DD956064();
      sub_1DDA13170();

      v60 = v63[3];
      v61 = v63[4];
      v62 = v64;
      v57 = v63[0];
      v58 = v63[1];
      v59 = v63[2];
      sub_1DD9560B8(&v57, v56);
      v36 = sub_1DDA147F0();
      v37 = sub_1DDA14EE0();
      sub_1DD9560F0(&v57);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v56[0] = v39;
        *v38 = 136446466;
        v40 = v58;

        v41 = sub_1DD93FA54(v40, *(&v40 + 1), v56);

        *(v38 + 4) = v41;
        *(v38 + 12) = 2082;
        if (*(&v59 + 1))
        {
          v42 = v59;
        }

        else
        {
          v42 = 7104878;
        }

        if (*(&v59 + 1))
        {
          v43 = *(&v59 + 1);
        }

        else
        {
          v43 = 0xE300000000000000;
        }

        v44 = sub_1DD93FA54(v42, v43, v56);

        *(v38 + 14) = v44;
        _os_log_impl(&dword_1DD8F8000, v36, v37, "Received error response with type: %{public}s, code: %{public}s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B8CE0](v39, -1, -1);
        MEMORY[0x1E12B8CE0](v38, -1, -1);
      }

      sub_1DD956120();
      v12 = swift_allocError();
      v45 = v58;
      *v46 = v57;
      *(v46 + 16) = v45;
      v47 = v60;
      v48 = v61;
      v49 = v59;
      *(v46 + 80) = v62;
      *(v46 + 48) = v47;
      *(v46 + 64) = v48;
      *(v46 + 32) = v49;
    }
  }

  return v12;
}

uint64_t sub_1DD955C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD955C80, 0, 0);
}

uint64_t sub_1DD955C80()
{
  v1 = v0[2];
  if (sub_1DD94E4B0() == 2)
  {
    v2 = v0[1];

    return v2(0);
  }

  else
  {
    v7 = (v0[3] + *v0[3]);
    v4 = *(v0[3] + 4);
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1DD955DB4;
    v6 = v0[4];

    return v7();
  }
}

uint64_t sub_1DD955DB4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9(v2);
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DD955F14, 0, 0);
  }
}

uint64_t sub_1DD955F14()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_1DD9552D8(*(v0 + 16));
  sub_1DD909D28(v2, v1);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1DD955FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831A8, &qword_1DDA19718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD956064()
{
  result = qword_1ECD831B0;
  if (!qword_1ECD831B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD831B0);
  }

  return result;
}

unint64_t sub_1DD956120()
{
  result = qword_1ECD831B8;
  if (!qword_1ECD831B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD831B8);
  }

  return result;
}

uint64_t sub_1DD956174(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DD9165BC;

  return sub_1DD94E544(a1, a2, v6, v7, v9, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD956254(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD9165BC;

  return sub_1DD94EF54(a1);
}

uint64_t sub_1DD9562F0(int64_t a1)
{
  v2 = sub_1DDA13250();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v24 = result;
    v8 = sub_1DDA14CC0();
    *(v8 + 16) = a1;
    bzero((v8 + 32), a1);
    SecRandomCopyBytes(*MEMORY[0x1E697B308], a1, (v8 + 32));
    v9 = sub_1DD90D1C8(v8);
    v11 = v10;

    v29 = sub_1DDA13580();
    v30 = v12;
    v27 = 43;
    v28 = 0xE100000000000000;
    v25 = 45;
    v26 = 0xE100000000000000;
    sub_1DD9313D4();
    v13 = sub_1DDA14F80();
    v15 = v14;

    v29 = v13;
    v30 = v15;
    v27 = 47;
    v28 = 0xE100000000000000;
    v25 = 95;
    v26 = 0xE100000000000000;
    v16 = sub_1DDA14F80();
    v18 = v17;

    v29 = v16;
    v30 = v18;
    sub_1DDA13240();
    v19 = sub_1DDA14F70();
    v21 = v20;
    (*(v3 + 8))(v7, v24);

    v29 = v19;
    v30 = v21;
    v27 = 61;
    v28 = 0xE100000000000000;
    v25 = 0;
    v26 = 0xE000000000000000;
    v22 = sub_1DDA14F80();

    sub_1DD909D28(v9, v11);
    return v22;
  }

  return result;
}

uint64_t sub_1DD9565A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD9565F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_5Anvil10HTTPClientV29PrivacyPassRedemptionResponseVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD956660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DD9566A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD956720()
{
  result = qword_1ECD83220;
  if (!qword_1ECD83220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83220);
  }

  return result;
}

uint64_t sub_1DD956774()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD9567C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83268, &qword_1DDA19A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD957254();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44) = 0;
  v12 = sub_1DDA15280();
  v55 = v13;
  LOBYTE(v44) = 1;
  *&v37 = sub_1DDA15280();
  *(&v37 + 1) = v14;
  LOBYTE(v38) = 3;
  sub_1DD9572A8();
  sub_1DDA15260();
  v36 = v44;
  v35 = v45;
  v34 = v46;
  LOBYTE(v44) = 4;
  v32 = sub_1DDA15220();
  v33 = v15;
  LOBYTE(v44) = 2;
  v16 = sub_1DDA15250();
  if (v17)
  {
    LOBYTE(v44) = 2;
    v18 = sub_1DDA15220();
  }

  else
  {
    v44 = v16;
    v18 = sub_1DDA15400();
  }

  v20 = v18;
  v21 = v9;
  v22 = v19;
  (*(v6 + 8))(v21, v5);
  v30 = v20;
  v31 = v22;
  *&v38 = v12;
  v23 = v55;
  *(&v38 + 1) = v55;
  v39 = v37;
  v24 = *(&v37 + 1);
  *&v40 = v20;
  *(&v40 + 1) = v22;
  v25 = v36;
  v26 = v35;
  *&v41 = v36;
  *(&v41 + 1) = v35;
  v27 = v34;
  *&v42 = v34;
  *(&v42 + 1) = v32;
  v43 = v33;
  sub_1DD9572FC(&v38, &v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44 = v12;
  v45 = v23;
  v46 = v37;
  v47 = v24;
  v48 = v30;
  v49 = v31;
  v50 = v25;
  v51 = v26;
  v52 = v27;
  v53 = v32;
  v54 = v33;
  result = sub_1DD957334(&v44);
  v28 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v28;
  *(a2 + 64) = v42;
  *(a2 + 80) = v43;
  v29 = v39;
  *a2 = v38;
  *(a2 + 16) = v29;
  return result;
}

uint64_t sub_1DD956C98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83250, &qword_1DDA19A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9571AC();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DD957200();
  sub_1DDA152C0();
  (*(v6 + 8))(v9, v5);
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v14 = v20;
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v12;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  v13 = v15;
  *a2 = v14;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_1DD956E7C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83228, &qword_1DDA199F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DD957080();
  sub_1DDA15620();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83238, &qword_1DDA199F8);
    v10[7] = 0;
    sub_1DD9570D4();
    sub_1DDA152C0();
    v8 = v11;
    v10[6] = 1;
    sub_1DDA15220();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DD957080()
{
  result = qword_1ECD83230;
  if (!qword_1ECD83230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83230);
  }

  return result;
}