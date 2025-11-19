uint64_t sub_19D500DD8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19D500E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19D500EE4()
{
  result = sub_19D51E10C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LaunchAssertionInvalidator();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19D501124()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D50116C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_19D5011CC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D5047B8;

  return v7(a1);
}

uint64_t sub_19D5012C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_19D5041BC;

  return sub_19D5013B0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_19D5013B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v18;
  v13 = *(*(type metadata accessor for WebContentProcess(0) - 8) + 64) + 15;
  v8[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[7] = v14;

  v15 = swift_task_alloc();
  v8[8] = v15;
  *v15 = v8;
  v15[1] = sub_19D503788;

  return WebContentProcess.init(bundleIdentifier:onInterruption:)(v14, a4, a5, a6, a7);
}

uint64_t sub_19D5014D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19D5041BC;

  return sub_19D5011CC(a1, v5);
}

uint64_t sub_19D501588()
{
  v142 = v0;
  sub_19D5024C0(0, &qword_1ED6578F8, 0x1E69635F8);
  v1 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 applicationExtensionRecords];

      sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
      sub_19D502508();
      v5 = sub_19D51E38C();

      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = v0[18];
  if (!v6)
  {
    if (v5)
    {
      v131 = v0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_19D51E43C();
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        sub_19D502508();
        sub_19D51E39C();
        v13 = v0[2];
        v12 = v0[3];
        v14 = v0[4];
        v15 = v0[5];
        v16 = v0[6];
      }

      else
      {
        v59 = -1 << *(v5 + 32);
        v12 = (v5 + 56);
        v60 = ~v59;
        v61 = -v59;
        if (v61 < 64)
        {
          v62 = ~(-1 << v61);
        }

        else
        {
          v62 = -1;
        }

        v16 = v62 & *(v5 + 56);

        v14 = v60;
        v15 = 0;
        v13 = v5;
      }

      v0 = ((v14 + 64) >> 6);
      v63 = 0x800000019D522030;
      v135 = v12;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_56:
      v64 = sub_19D51E44C();
      if (v64)
      {
        v131[13] = v64;
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        swift_dynamicCast();
        v31 = v131[12];
        i = v15;
        v6 = v16;
        if (v31)
        {
          while (1)
          {
            v68 = v63;
            v69 = [v31 extensionPointRecord];
            v70 = [v69 identifier];

            v71 = sub_19D51E28C();
            v73 = v72;

            if (v71 == 0xD000000000000024 && 0x800000019D522000 == v73)
            {
              break;
            }

            v75 = sub_19D51E4BC();

            if (v75)
            {
              goto LABEL_90;
            }

            v76 = [v31 extensionPointRecord];
            v77 = [v76 identifier];

            v78 = sub_19D51E28C();
            v80 = v79;

            if (v78 == 0xD000000000000027 && v68 == v80)
            {
              break;
            }

            v63 = v68;
            v82 = sub_19D51E4BC();

            if (v82)
            {
              goto LABEL_90;
            }

            v15 = i;
            v16 = v6;
            v12 = v135;
            if (v13 < 0)
            {
              goto LABEL_56;
            }

LABEL_59:
            v66 = v15;
            v67 = v16;
            for (i = v15; !v67; ++v66)
            {
              i = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_101;
              }

              if (i >= v0)
              {
                goto LABEL_76;
              }

              v67 = *(v12 + i);
            }

            v6 = (v67 - 1) & v67;
            v31 = *(*(v13 + 48) + ((i << 9) | (8 * __clz(__rbit64(v67)))));
            if (!v31)
            {
              goto LABEL_76;
            }
          }

LABEL_90:
          sub_19D502570();
          v0 = v131;
LABEL_91:
          v106 = v0[18];

          v20 = v31;
LABEL_92:

          v0[42] = v20;
          if (qword_1ED658138 != -1)
          {
            swift_once();
          }

          v107 = sub_19D51E1BC();
          __swift_project_value_buffer(v107, qword_1ED658160);
          v108 = v20;
          v109 = sub_19D51E19C();
          v110 = sub_19D51E3AC();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *v111 = 138412290;
            *(v111 + 4) = v108;
            *v112 = v108;
            v113 = v108;
            _os_log_impl(&dword_19D4FF000, v109, v110, "WebContentProcess: Found matching appex record %@", v111, 0xCu);
            sub_19D50116C(v112, &qword_1EB0159E8, &qword_19D520C10);
            MEMORY[0x19EAFD8D0](v112, -1, -1);
            MEMORY[0x19EAFD8D0](v111, -1, -1);
          }

          v115 = v0[40];
          v114 = v0[41];
          v116 = v0[39];
          v117 = v0[37];
          v129 = v0[38];
          v130 = v0[36];
          v118 = v0[35];
          v119 = v0[33];
          v120 = v0[31];
          v137 = v0[30];
          v140 = v0[32];
          v136 = v0[29];
          v121 = v109;
          v122 = v0[20];
          v132 = v0[34];
          v133 = v0[19];

          [objc_allocWithZone(MEMORY[0x1E6966CB0]) initWithApplicationExtensionRecord_];
          sub_19D51E14C();
          (*(v116 + 16))(v115, v114, v129);
          sub_19D51E12C();
          (*(v118 + 16))(v130, v117, v132);

          sub_19D51E06C();
          sub_19D51E0BC();
          sub_19D51E08C();
          (*(v120 + 16))(v140, v119, v137);
          v123 = *(MEMORY[0x1E6966BD0] + 4);
          v124 = swift_task_alloc();
          v0[43] = v124;
          *v124 = v0;
          v124[1] = sub_19D5028BC;
          v125 = v0[32];
          v126 = v0[28];

          return MEMORY[0x1EEDC0888](v126, v125);
        }
      }

LABEL_76:
      sub_19D502570();

      v0 = v131;
      v6 = 0;
    }

LABEL_77:
    if (qword_1ED658138 != -1)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (!v5)
  {
    v17 = v0[17];
    objc_allocWithZone(MEMORY[0x1E69635D0]);
    swift_bridgeObjectRetain_n();
    v18 = sub_19D502578();
LABEL_14:
    v19 = v18;

    if (sub_19D502644())
    {
      v20 = v19;
      goto LABEL_92;
    }

    goto LABEL_77;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_19D51E43C();
    sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
    sub_19D502508();
    sub_19D51E39C();
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[11];
  }

  else
  {
    v21 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v22 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v11 = v24 & *(v5 + 56);

    v9 = v22;
    v10 = 0;
    v8 = v5;
  }

  v127 = v9;
  v25 = (v9 + 64) >> 6;
  v128 = v25;
  while (v8 < 0)
  {
    v32 = sub_19D51E44C();
    if (!v32 || (v0[15] = v32, sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0), swift_dynamicCast(), v31 = v0[14], v29 = v10, v30 = v11, !v31))
    {
LABEL_49:
      v58 = v0[17];
      sub_19D502570();

      objc_allocWithZone(MEMORY[0x1E69635D0]);

      v18 = sub_19D502578();
      goto LABEL_14;
    }

LABEL_32:
    v138 = v30;
    v33 = [v31 bundleIdentifier];
    if (!v33)
    {
      goto LABEL_22;
    }

    v134 = v31;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v38 = v0[17];
    v37 = v0[18];
    v39 = v33;
    v40 = sub_19D51E28C();
    v42 = v41;

    if (v40 == v38 && v37 == v42)
    {

      v6 = v36;
      v7 = v35;
      v8 = v34;
      v31 = v134;
      v25 = v128;
    }

    else
    {
      v44 = v0[17];
      v6 = v36;
      v45 = sub_19D51E4BC();

      v7 = v35;
      v8 = v34;
      v31 = v134;
      v25 = v128;
      if ((v45 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v46 = [v31 extensionPointRecord];
    v47 = [v46 identifier];

    v48 = sub_19D51E28C();
    v50 = v49;

    if (v48 == 0xD000000000000024 && 0x800000019D522000 == v50)
    {
      goto LABEL_47;
    }

    v52 = sub_19D51E4BC();

    if (v52)
    {
      goto LABEL_48;
    }

    v53 = [v31 extensionPointRecord];
    v54 = [v53 identifier];

    v55 = sub_19D51E28C();
    v57 = v56;

    if (v55 == 0xD000000000000027 && 0x800000019D522030 == v57)
    {
LABEL_47:

LABEL_48:
      sub_19D502570();

      goto LABEL_91;
    }

    v26 = sub_19D51E4BC();

    if (v26)
    {
      goto LABEL_48;
    }

LABEL_22:

    v10 = v29;
    v11 = v138;
  }

  v27 = v10;
  v28 = v11;
  v29 = v10;
  if (v11)
  {
LABEL_28:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v8 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      goto LABEL_49;
    }

    v28 = *(v7 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  swift_once();
LABEL_78:
  v83 = v0[18];
  v84 = sub_19D51E1BC();
  __swift_project_value_buffer(v84, qword_1ED658160);

  v85 = sub_19D51E19C();
  v86 = sub_19D51E3CC();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = v0[17];
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v141 = v89;
    *v88 = 136315138;
    if (v6)
    {
      v90 = v87;
    }

    else
    {
      v90 = 7104878;
    }

    if (!v6)
    {
      v83 = 0xE300000000000000;
    }

    v91 = sub_19D514768(v90, v83, &v141);

    *(v88 + 4) = v91;
    _os_log_impl(&dword_19D4FF000, v85, v86, "WebContentProcess: Could not find matching appex record for bundleIdentifier %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x19EAFD8D0](v89, -1, -1);
    MEMORY[0x19EAFD8D0](v88, -1, -1);
  }

  else
  {
  }

  v92 = v0[20];
  v93 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v94 = sub_19D51E27C();
  [v93 initWithDomain:v94 code:1 userInfo:0];

  swift_willThrow();

  v96 = v0[40];
  v95 = v0[41];
  v98 = v0[36];
  v97 = v0[37];
  v100 = v0[32];
  v99 = v0[33];
  v102 = v0[28];
  v101 = v0[29];
  v103 = v0[27];
  v139 = v0[23];

  v104 = v0[1];

  return v104();
}

uint64_t sub_19D5024C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_19D502508()
{
  result = qword_1ED657870;
  if (!qword_1ED657870)
  {
    sub_19D5024C0(255, &unk_1ED657878, 0x1E69635D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED657870);
  }

  return result;
}

id sub_19D502578()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_19D51E27C();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_19D51DEAC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_19D502644()
{
  v1 = [v0 extensionPointRecord];
  v2 = [v1 identifier];

  v3 = sub_19D51E28C();
  v5 = v4;

  if (v3 == 0xD000000000000024 && 0x800000019D522000 == v5)
  {
    goto LABEL_9;
  }

  v7 = sub_19D51E4BC();

  if ((v7 & 1) == 0)
  {
    v9 = [v0 extensionPointRecord];
    v10 = [v9 identifier];

    v11 = sub_19D51E28C();
    v13 = v12;

    if (v11 != 0xD000000000000027 || 0x800000019D522030 != v13)
    {
      v8 = sub_19D51E4BC();
      goto LABEL_10;
    }

LABEL_9:
    v8 = 1;
LABEL_10:

    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_19D5027A8()
{
  v0 = sub_19D51E1BC();
  __swift_allocate_value_buffer(v0, qword_1ED658160);
  __swift_project_value_buffer(v0, qword_1ED658160);
  return sub_19D51E1AC();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19D5028BC()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_19D519690;
  }

  else
  {
    v3 = sub_19D5029D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D5029D0()
{
  v17 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v24 = v0[37];
  v29 = v0[36];
  v23 = v0[34];
  v20 = v0[33];
  v21 = v0[35];
  v30 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v31 = v0[29];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v15 = v7;
  v16 = v0[20];
  v22 = v0[16];
  v9 = *(v3 + 16);
  v9();
  (v9)(v1, v2, v6);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v1, v6);
  *v5 = 1;
  (*(v8 + 104))(v5, *MEMORY[0x1E69E7F48], v15);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v12 = sub_19D502C88(sub_19D5196E8, v11, v5);

  (*(v3 + 8))(v2, v6);
  (*(v18 + 8))(v20, v19);
  (*(v21 + 8))(v24, v23);
  (*(v25 + 8))(v27, v26);
  *(v22 + *(type metadata accessor for WebContentProcess(0) + 20)) = v12;

  v13 = v0[1];

  return v13();
}

void *sub_19D502C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v8 = *(*(sub_19D51E20C() - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v9 = sub_19D51E22C();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x1EEE9AC00])();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v4[2] = 0;
  v4[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v4[3] = a2;
  v4[4] = v17;
  v4[2] = a1;
  sub_19D5024C0(0, &qword_1ED657C10, 0x1E69E9610);

  v18 = sub_19D51E3FC();
  sub_19D51E21C();
  MEMORY[0x19EAFCDB0](v14, a3);
  v19 = *(v10 + 8);
  v19(v14, v9);
  aBlock[4] = sub_19D51962C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D516DA4;
  aBlock[3] = &block_descriptor_0;
  _Block_copy(aBlock);
  v28 = MEMORY[0x1E69E7CC0];
  sub_19D5032BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A90, &unk_19D5210C0);
  sub_19D503314();
  sub_19D51E42C();
  v20 = sub_19D51E24C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_19D51E23C();

  sub_19D51E3EC();

  v23 = sub_19D51E1FC();
  (*(*(v23 - 8) + 8))(v27, v23);
  v19(v16, v26);
  return v4;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ED657C18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED657C18);
    }
  }
}

uint64_t WebContentProcess.init(bundleIdentifier:onInterruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_19D51E1FC();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = sub_19D51E10C();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v5[26] = *(v10 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v11 = *(*(sub_19D51E0CC() - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v12 = sub_19D51E09C();
  v5[30] = v12;
  v13 = *(v12 - 8);
  v5[31] = v13;
  v14 = *(v13 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v15 = sub_19D51E11C();
  v5[34] = v15;
  v16 = *(v15 - 8);
  v5[35] = v16;
  v17 = *(v16 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v18 = sub_19D51E13C();
  v5[38] = v18;
  v19 = *(v18 - 8);
  v5[39] = v19;
  v20 = *(v19 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D501588, 0, 0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19D5032BC()
{
  result = qword_1ED657C48[0];
  if (!qword_1ED657C48[0])
  {
    sub_19D51E20C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED657C48);
  }

  return result;
}

unint64_t sub_19D503314()
{
  result = qword_1ED657C30;
  if (!qword_1ED657C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB015A90, &unk_19D5210C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED657C30);
  }

  return result;
}

uint64_t sub_19D503378()
{
  receiver = v0[3].receiver;
  super_class = v0[3].super_class;
  v4 = v0[2].receiver;
  v3 = v0[2].super_class;
  sub_19D503498(super_class, receiver, type metadata accessor for WebContentProcess);
  v5 = type metadata accessor for __BEWebContentProcess(0);
  v6 = objc_allocWithZone(v5);
  sub_19D503498(receiver, v6 + OBJC_IVAR___BEWebContentProcess_inner, type metadata accessor for WebContentProcess);
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_19D503568(receiver, type metadata accessor for WebContentProcess);
  v4(v7, 0);

  sub_19D503568(super_class, type metadata accessor for WebContentProcess);
  v9 = v0[3].receiver;
  v8 = v0[3].super_class;

  v10 = v0->super_class;

  return v10();
}

uint64_t sub_19D503498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19D503500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19D503568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19D503618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_19D5036CC()
{
  sub_19D503740();
  if (v0 <= 0x3F)
  {
    sub_19D503920();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_19D503740()
{
  if (!qword_1ED658148)
  {
    v0 = type metadata accessor for MediaEnvironment(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1ED658148);
    }
  }
}

uint64_t sub_19D503788()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_19D519680;
  }

  else
  {
    v3 = sub_19D503378;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D5038A4()
{
  result = sub_19D51DF6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_19D503920()
{
  if (!qword_1ED657C40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED657C40);
    }
  }
}

uint64_t sub_19D5039A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19D503A64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v7 = type metadata accessor for ProcessCapability.MediaPlaybackCapability(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MediaEnvironment(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ProcessCapability(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v43 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  sub_19D503500(v4, &v43 - v23, type metadata accessor for ProcessCapability);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_19D503500(v4, v22, type metadata accessor for ProcessCapability);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v22;
      v26 = v22[1];
      v27 = v22[3];
    }

    else
    {
      sub_19D5041C0(v22, type metadata accessor for ProcessCapability);
    }

    sub_19D503500(v4, v19, type metadata accessor for ProcessCapability);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v31 = v19[1];
        v32 = v19[2];
        v33 = v19[3];
      }

      else
      {
        sub_19D5041C0(v19, type metadata accessor for MediaEnvironment);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015B90, &unk_19D521560);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_19D5213A0;
    v35 = sub_19D51E27C();

    v36 = sub_19D51E27C();

    v37 = [objc_opt_self() attributeWithDomain:v35 name:v36];

    *(v34 + 32) = v37;
    v38 = v45;
    v39 = sub_19D503EDC(a1, 0, 0);

    if (!v38)
    {
      v41 = v43;
      v40 = v44;
      sub_19D504C18(v43);
      sub_19D504C30(v39, v41, v40, a4);
    }

    v28 = type metadata accessor for ProcessCapability;
    v29 = v24;
  }

  else
  {
    sub_19D51C494(v24, v14);
    sub_19D503500(v14, v10, type metadata accessor for MediaEnvironment);
    sub_19D51BE00(a1, a4);
    sub_19D5041C0(v10, type metadata accessor for ProcessCapability.MediaPlaybackCapability);
    v28 = type metadata accessor for MediaEnvironment;
    v29 = v14;
  }

  return sub_19D5041C0(v29, v28);
}

id sub_19D503EDC(void *a1, uint64_t a2, uint64_t a3)
{
  v24[2] = *MEMORY[0x1E69E9840];
  sub_19D51E46C();

  v24[0] = 0xD00000000000002ELL;
  v24[1] = 0x800000019D522530;
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  v7 = *(v5 + 8);
  v7(v6, v5);
  v8 = sub_19D51E4AC();
  MEMORY[0x19EAFCE50](v8);

  if (a3)
  {
    v9 = (v7)(v6, v5);
    v10 = sub_19D51E27C();
    v11 = [objc_opt_self() targetWithPid:v9 environmentIdentifier:v10];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
  }

  v23 = (v7)(v6, v5);
  v11 = [objc_opt_self() targetWithPid_];
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  v12 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v13 = v11;
  v14 = sub_19D51E27C();

  sub_19D5024C0(0, &qword_1ED657C28, 0x1E69C7550);
  v15 = sub_19D51E32C();
  v16 = [v12 initWithExplanation:v14 target:v13 attributes:v15];

  v24[0] = 0;
  if ([v16 acquireWithError_])
  {
    v17 = v24[0];
  }

  else
  {
    v18 = v24[0];
    v19 = sub_19D51DEAC();

    swift_willThrow();
    [v16 invalidate];
    v20 = sub_19D51DE9C();
    sub_19D51C738(v20);

    swift_willThrow();
  }

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_19D5041C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19D504380()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t WebContentExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_19D50465C;
  a3[1] = v10;
  return result;
}

uint64_t sub_19D5044F4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_19D50458C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a1;
  v6 = sub_19D51E0DC();

  return v6;
}

uint64_t sub_19D504634()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_19D5046C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_19D5047B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_18Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19D504938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  v13 = *a4;
  v18[3] = a5(0);
  v18[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_19D503500(v7 + v13, boxed_opaque_existential_1, a7);
  sub_19D503A64(v18, a2, a3, v19);
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  if (!v8)
  {
    v16 = v19[0];
    v17 = v19[1];
    type metadata accessor for _BEProcessCapabilityGrant();
    result = swift_allocObject();
    *(result + 16) = v16;
    *(result + 24) = v17;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t _s16BrowserEngineKit16RenderingProcessV17processIdentifiers5Int32Vvg_0()
{
  *v7.val = sub_19D51E05C();
  v7.val[2] = v0;
  v7.val[3] = v1;
  v7.val[4] = v2;
  v7.val[5] = v3;
  v7.val[6] = v4;
  v7.val[7] = v5;
  return audit_token_to_pid(&v7);
}

id sub_19D504B0C()
{
  v0 = type metadata accessor for ProcessCapability(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BEProcessCapability(0);
  v5 = objc_allocWithZone(v4);
  sub_19D503500(v3, v5 + OBJC_IVAR___BEProcessCapability_inner, type metadata accessor for ProcessCapability);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_19D5041C0(v3, type metadata accessor for ProcessCapability);

  return v6;
}

uint64_t sub_19D504C18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19D504C30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result;
  if (a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = type metadata accessor for ProcessCapability.AssertionObserver();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate];
    *v11 = 0;
    v11[1] = 0;
    v12 = OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver_invalidationLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *&v10[v12] = v13;
    *v11 = sub_19D50511C;
    v11[1] = v8;
    v14 = v4;
    sub_19D504C18(a2);
    v17.receiver = v10;
    v17.super_class = v9;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    v16 = v15;
    [v14 addObserver_];

    result = sub_19D504D74(a2);
  }

  else
  {
    v15 = 0;
  }

  *a4 = v4;
  a4[1] = v15;
  return result;
}

uint64_t sub_19D504D74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19D504D84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D504E24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    [v3 removeObserver_];
    [v3 invalidate];
    v5 = v4;
    sub_19D504F00(v3);
  }

  else
  {
    v5 = v1;
    [v5 invalidate];
  }

  return 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_19D504F00(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver_invalidationLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = (v1 + OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate);
  v5 = *(v1 + OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate);
  if (v5)
  {
    v6 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v5(a1);
    sub_19D504D74(v5);
  }

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_19D50511C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_19D505370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_19D5041BC;

  return sub_19D5054F0(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_19D50545C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_19D5054F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v18;
  v13 = *(*(type metadata accessor for NetworkingProcess(0) - 8) + 64) + 15;
  v8[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[7] = v14;

  v15 = swift_task_alloc();
  v8[8] = v15;
  *v15 = v8;
  v15[1] = sub_19D506CDC;

  return NetworkingProcess.init(bundleIdentifier:onInterruption:)(v14, a4, a5, a6, a7);
}

uint64_t NetworkingProcess.init(bundleIdentifier:onInterruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_19D51E1FC();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = sub_19D51E10C();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v5[26] = *(v10 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v11 = *(*(sub_19D51E0CC() - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v12 = sub_19D51E09C();
  v5[30] = v12;
  v13 = *(v12 - 8);
  v5[31] = v13;
  v14 = *(v13 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v15 = sub_19D51E11C();
  v5[34] = v15;
  v16 = *(v15 - 8);
  v5[35] = v16;
  v17 = *(v16 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v18 = sub_19D51E13C();
  v5[38] = v18;
  v19 = *(v18 - 8);
  v5[39] = v19;
  v20 = *(v19 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D5058AC, 0, 0);
}

uint64_t sub_19D5058AC()
{
  v134 = v0;
  sub_19D5024C0(0, &qword_1ED6578F8, 0x1E69635F8);
  v1 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    v7 = v0[18];
    if (!v7)
    {
LABEL_4:
      if (v6)
      {
        v122 = v7;
        if ((v6 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_19D51E43C();
          sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
          sub_19D502508();
          sub_19D51E39C();
          v8 = v0[2];
          v9 = v0[3];
          v10 = v0[4];
          v11 = v0[5];
          v12 = v0[6];
        }

        else
        {
          v58 = -1 << *(v6 + 32);
          v9 = v6 + 56;
          v10 = ~v58;
          v59 = -v58;
          if (v59 < 64)
          {
            v60 = ~(-1 << v59);
          }

          else
          {
            v60 = -1;
          }

          v12 = v60 & *(v6 + 56);
          v8 = v6;

          v11 = 0;
        }

        v7 = (v10 + 64) >> 6;
        v130 = v0;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_55:
        v61 = sub_19D51E44C();
        if (v61)
        {
          v0[13] = v61;
          sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
          swift_dynamicCast();
          v18 = v0[12];
          v62 = v11;
          v63 = v12;
          if (v18)
          {
            while (1)
            {
              v66 = v8;
              v67 = [v18 extensionPointRecord];
              v68 = [v67 identifier];

              v69 = sub_19D51E28C();
              v71 = v70;

              if (v69 == 0xD000000000000027 && 0x800000019D521FD0 == v71)
              {

LABEL_85:
                sub_19D502570();

                v0 = v130;
                goto LABEL_89;
              }

              v73 = sub_19D51E4BC();

              v8 = v66;
              if (v73)
              {
                goto LABEL_85;
              }

              v11 = v62;
              v12 = v63;
              v0 = v130;
              if (v8 < 0)
              {
                goto LABEL_55;
              }

LABEL_58:
              v64 = v11;
              v65 = v12;
              v62 = v11;
              if (!v12)
              {
                break;
              }

LABEL_62:
              v63 = (v65 - 1) & v65;
              v18 = *(*(v8 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v65)))));
              if (!v18)
              {
                goto LABEL_70;
              }
            }

            while (1)
            {
              v62 = v64 + 1;
              if (__OFADD__(v64, 1))
              {
                goto LABEL_97;
              }

              if (v62 >= v7)
              {
                break;
              }

              v65 = *(v9 + 8 * v62);
              ++v64;
              if (v65)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_70:
          v0 = v130;
        }

        sub_19D502570();

        v7 = v122;
      }

LABEL_72:
      if (qword_1ED658138 != -1)
      {
        goto LABEL_98;
      }

      goto LABEL_73;
    }

    goto LABEL_9;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    goto LABEL_8;
  }

  v4 = [v3 applicationExtensionRecords];

  sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
  sub_19D502508();
  v5 = sub_19D51E38C();

  v6 = v5;
  v7 = v0[18];
  if (!v7)
  {
    goto LABEL_4;
  }

LABEL_9:
  if (!v6)
  {
    v17 = v0[17];
    objc_allocWithZone(MEMORY[0x1E69635D0]);
    swift_bridgeObjectRetain_n();
    v18 = sub_19D502578();

    v19 = 0x800000019D521FD0;
LABEL_43:
    v51 = [v18 extensionPointRecord];
    v52 = [v51 identifier];

    v53 = sub_19D51E28C();
    v55 = v54;

    if (v53 == 0xD000000000000027 && v19 == v55)
    {
LABEL_88:
    }

    else
    {
      v57 = sub_19D51E4BC();

      if ((v57 & 1) == 0)
      {

        goto LABEL_72;
      }
    }

LABEL_89:
    v0[42] = v18;
    v97 = v0[18];
    v98 = v18;

    if (qword_1ED658138 != -1)
    {
      swift_once();
    }

    v99 = sub_19D51E1BC();
    __swift_project_value_buffer(v99, qword_1ED658160);
    v100 = v98;
    v101 = sub_19D51E19C();
    v102 = sub_19D51E3AC();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 138412290;
      *(v103 + 4) = v100;
      *v104 = v100;
      v105 = v100;
      _os_log_impl(&dword_19D4FF000, v101, v102, "NetworkingProcess: Found matching appex record %@", v103, 0xCu);
      sub_19D50116C(v104, &qword_1EB0159E8, &qword_19D520C10);
      MEMORY[0x19EAFD8D0](v104, -1, -1);
      MEMORY[0x19EAFD8D0](v103, -1, -1);
    }

    v107 = v0[40];
    v106 = v0[41];
    v108 = v0[39];
    v109 = v0[37];
    v119 = v0[38];
    v121 = v0[36];
    v110 = v0[35];
    v111 = v0[33];
    v112 = v0[31];
    v128 = v0[30];
    v132 = v0[32];
    v126 = v0[29];
    v113 = v101;
    v114 = v0[20];
    v124 = v0[34];
    v125 = v0[19];

    [objc_allocWithZone(MEMORY[0x1E6966CB0]) initWithApplicationExtensionRecord_];
    sub_19D51E14C();
    (*(v108 + 16))(v107, v106, v119);
    sub_19D51E12C();
    (*(v110 + 16))(v121, v109, v124);

    sub_19D51E07C();
    sub_19D51E0BC();
    sub_19D51E08C();
    (*(v112 + 16))(v132, v111, v128);
    v115 = *(MEMORY[0x1E6966BD0] + 4);
    v116 = swift_task_alloc();
    v0[43] = v116;
    *v116 = v0;
    v116[1] = sub_19D506910;
    v117 = v0[32];
    v118 = v0[28];

    return MEMORY[0x1EEDC0888](v118, v117);
  }

  v123 = v7;
  if ((v6 & 0xC000000000000001) != 0)
  {

    sub_19D51E43C();
    sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
    sub_19D502508();
    sub_19D51E39C();
    v7 = v0[7];
    v13 = v0[8];
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[11];
  }

  else
  {
    v20 = -1 << *(v6 + 32);
    v13 = v6 + 56;
    v15 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v16 = v22 & *(v6 + 56);
    v23 = v6;

    v14 = 0;
    v7 = v23;
  }

  v24 = (v15 + 64) >> 6;
  v19 = 0x800000019D521FD0;
  v120 = v7;
  v127 = v24;
  while (v7 < 0)
  {
    v29 = sub_19D51E44C();
    if (!v29 || (v0[15] = v29, sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0), swift_dynamicCast(), v18 = v0[14], v27 = v14, v28 = v16, !v18))
    {
LABEL_42:
      v50 = v0[17];
      sub_19D502570();

      objc_allocWithZone(MEMORY[0x1E69635D0]);
      v7 = v123;

      v18 = sub_19D502578();

      goto LABEL_43;
    }

LABEL_28:
    v129 = v28;
    v30 = [v18 bundleIdentifier];
    if (!v30)
    {
      goto LABEL_18;
    }

    v31 = v30;
    v32 = v18;
    v33 = v13;
    v34 = v19;
    v36 = v0[17];
    v35 = v0[18];
    v37 = sub_19D51E28C();
    v39 = v38;

    if (v37 == v36 && v35 == v39)
    {

      v19 = v34;
      v13 = v33;
      v18 = v32;
      v7 = v120;
    }

    else
    {
      v41 = v0[17];
      v42 = sub_19D51E4BC();

      v19 = v34;
      v13 = v33;
      v18 = v32;
      v7 = v120;
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v43 = [v18 extensionPointRecord];
    v44 = [v43 identifier];

    v45 = sub_19D51E28C();
    v47 = v46;

    if (v45 == 0xD000000000000027 && v19 == v47)
    {

LABEL_87:
      sub_19D502570();

      goto LABEL_88;
    }

    v49 = sub_19D51E4BC();

    if (v49)
    {
      goto LABEL_87;
    }

LABEL_18:

    v14 = v27;
    v24 = v127;
    v16 = v129;
  }

  v25 = v14;
  v26 = v16;
  v27 = v14;
  if (v16)
  {
LABEL_24:
    v28 = (v26 - 1) & v26;
    v18 = *(*(v7 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      goto LABEL_42;
    }

    v26 = *(v13 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  swift_once();
LABEL_73:
  v74 = v0[18];
  v75 = sub_19D51E1BC();
  __swift_project_value_buffer(v75, qword_1ED658160);

  v76 = sub_19D51E19C();
  v77 = sub_19D51E3CC();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = v0[17];
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v133 = v80;
    *v79 = 136315138;
    if (v7)
    {
      v81 = v78;
    }

    else
    {
      v81 = 7104878;
    }

    if (!v7)
    {
      v74 = 0xE300000000000000;
    }

    v82 = sub_19D514768(v81, v74, &v133);

    *(v79 + 4) = v82;
    _os_log_impl(&dword_19D4FF000, v76, v77, "NetworkingProcess: Could not find matching appex record for bundleIdentifier %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x19EAFD8D0](v80, -1, -1);
    MEMORY[0x19EAFD8D0](v79, -1, -1);
  }

  else
  {
  }

  v83 = v0[20];
  v84 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v85 = sub_19D51E27C();
  [v84 initWithDomain:v85 code:1 userInfo:0];

  swift_willThrow();

  v87 = v0[40];
  v86 = v0[41];
  v89 = v0[36];
  v88 = v0[37];
  v91 = v0[32];
  v90 = v0[33];
  v93 = v0[28];
  v92 = v0[29];
  v94 = v0[27];
  v131 = v0[23];

  v95 = v0[1];

  return v95();
}

uint64_t NetworkingExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_19D51CB74;
  a3[1] = v10;
  return result;
}

uint64_t sub_19D506890()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19D506910()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_19D519690;
  }

  else
  {
    v3 = sub_19D506A24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D506A24()
{
  v17 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v24 = v0[37];
  v29 = v0[36];
  v23 = v0[34];
  v20 = v0[33];
  v21 = v0[35];
  v30 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v31 = v0[29];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v15 = v7;
  v16 = v0[20];
  v22 = v0[16];
  v9 = *(v3 + 16);
  v9();
  (v9)(v1, v2, v6);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v1, v6);
  *v5 = 1;
  (*(v8 + 104))(v5, *MEMORY[0x1E69E7F48], v15);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v12 = sub_19D502C88(sub_19D5196E8, v11, v5);

  (*(v3 + 8))(v2, v6);
  (*(v18 + 8))(v20, v19);
  (*(v21 + 8))(v24, v23);
  (*(v25 + 8))(v27, v26);
  *(v22 + *(type metadata accessor for NetworkingProcess(0) + 20)) = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_19D506CDC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_19D519680;
  }

  else
  {
    v3 = sub_19D506DF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D506DF0()
{
  receiver = v0[3].receiver;
  super_class = v0[3].super_class;
  v4 = v0[2].receiver;
  v3 = v0[2].super_class;
  sub_19D503498(super_class, receiver, type metadata accessor for NetworkingProcess);
  v5 = type metadata accessor for __BENetworkingProcess(0);
  v6 = objc_allocWithZone(v5);
  sub_19D503498(receiver, v6 + OBJC_IVAR___BENetworkingProcess_inner, type metadata accessor for NetworkingProcess);
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_19D503568(receiver, type metadata accessor for NetworkingProcess);
  v4(v7, 0);

  sub_19D503568(super_class, type metadata accessor for NetworkingProcess);
  v9 = v0[3].receiver;
  v8 = v0[3].super_class;

  v10 = v0->super_class;

  return v10();
}

uint64_t sub_19D50729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v18;
  v13 = *(*(type metadata accessor for RenderingProcess(0) - 8) + 64) + 15;
  v8[6] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[7] = v14;

  v15 = swift_task_alloc();
  v8[8] = v15;
  *v15 = v8;
  v15[1] = sub_19D508CB8;

  return RenderingProcess.init(bundleIdentifier:onInterruption:)(v14, a4, a5, a6, a7);
}

uint64_t RenderingProcess.init(bundleIdentifier:onInterruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_19D51E1FC();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = sub_19D51E10C();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v5[26] = *(v10 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v11 = *(*(sub_19D51E0CC() - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v12 = sub_19D51E09C();
  v5[30] = v12;
  v13 = *(v12 - 8);
  v5[31] = v13;
  v14 = *(v13 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v15 = sub_19D51E11C();
  v5[34] = v15;
  v16 = *(v15 - 8);
  v5[35] = v16;
  v17 = *(v16 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v18 = sub_19D51E13C();
  v5[38] = v18;
  v19 = *(v18 - 8);
  v5[39] = v19;
  v20 = *(v19 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D507658, 0, 0);
}

uint64_t sub_19D507658()
{
  v142 = v0;
  sub_19D5024C0(0, &qword_1ED6578F8, 0x1E69635F8);
  v1 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 applicationExtensionRecords];

      sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
      sub_19D502508();
      v5 = sub_19D51E38C();

      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = v0[18];
  if (!v6)
  {
    if (v5)
    {
      v131 = v0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_19D51E43C();
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        sub_19D502508();
        sub_19D51E39C();
        v13 = v0[2];
        v12 = v0[3];
        v14 = v0[4];
        v15 = v0[5];
        v16 = v0[6];
      }

      else
      {
        v59 = -1 << *(v5 + 32);
        v12 = (v5 + 56);
        v60 = ~v59;
        v61 = -v59;
        if (v61 < 64)
        {
          v62 = ~(-1 << v61);
        }

        else
        {
          v62 = -1;
        }

        v16 = v62 & *(v5 + 56);

        v14 = v60;
        v15 = 0;
        v13 = v5;
      }

      v0 = ((v14 + 64) >> 6);
      v63 = 0x800000019D5220B0;
      v135 = v12;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_56:
      v64 = sub_19D51E44C();
      if (v64)
      {
        v131[13] = v64;
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        swift_dynamicCast();
        v31 = v131[12];
        i = v15;
        v6 = v16;
        if (v31)
        {
          while (1)
          {
            v68 = v63;
            v69 = [v31 extensionPointRecord];
            v70 = [v69 identifier];

            v71 = sub_19D51E28C();
            v73 = v72;

            if (v71 == 0xD000000000000026 && 0x800000019D522080 == v73)
            {
              break;
            }

            v75 = sub_19D51E4BC();

            if (v75)
            {
              goto LABEL_90;
            }

            v76 = [v31 extensionPointRecord];
            v77 = [v76 identifier];

            v78 = sub_19D51E28C();
            v80 = v79;

            if (v78 == 0xD000000000000020 && v68 == v80)
            {
              break;
            }

            v63 = v68;
            v82 = sub_19D51E4BC();

            if (v82)
            {
              goto LABEL_90;
            }

            v15 = i;
            v16 = v6;
            v12 = v135;
            if (v13 < 0)
            {
              goto LABEL_56;
            }

LABEL_59:
            v66 = v15;
            v67 = v16;
            for (i = v15; !v67; ++v66)
            {
              i = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_101;
              }

              if (i >= v0)
              {
                goto LABEL_76;
              }

              v67 = *(v12 + i);
            }

            v6 = (v67 - 1) & v67;
            v31 = *(*(v13 + 48) + ((i << 9) | (8 * __clz(__rbit64(v67)))));
            if (!v31)
            {
              goto LABEL_76;
            }
          }

LABEL_90:
          sub_19D502570();
          v0 = v131;
LABEL_91:
          v106 = v0[18];

          v20 = v31;
LABEL_92:

          v0[42] = v20;
          if (qword_1ED658138 != -1)
          {
            swift_once();
          }

          v107 = sub_19D51E1BC();
          __swift_project_value_buffer(v107, qword_1ED658160);
          v108 = v20;
          v109 = sub_19D51E19C();
          v110 = sub_19D51E3AC();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *v111 = 138412290;
            *(v111 + 4) = v108;
            *v112 = v108;
            v113 = v108;
            _os_log_impl(&dword_19D4FF000, v109, v110, "RenderingProcess: Found matching appex record %@", v111, 0xCu);
            sub_19D50116C(v112, &qword_1EB0159E8, &qword_19D520C10);
            MEMORY[0x19EAFD8D0](v112, -1, -1);
            MEMORY[0x19EAFD8D0](v111, -1, -1);
          }

          v115 = v0[40];
          v114 = v0[41];
          v116 = v0[39];
          v117 = v0[37];
          v129 = v0[38];
          v130 = v0[36];
          v118 = v0[35];
          v119 = v0[33];
          v120 = v0[31];
          v137 = v0[30];
          v140 = v0[32];
          v136 = v0[29];
          v121 = v109;
          v122 = v0[20];
          v132 = v0[34];
          v133 = v0[19];

          [objc_allocWithZone(MEMORY[0x1E6966CB0]) initWithApplicationExtensionRecord_];
          sub_19D51E14C();
          (*(v116 + 16))(v115, v114, v129);
          sub_19D51E12C();
          (*(v118 + 16))(v130, v117, v132);

          sub_19D51E07C();
          sub_19D51E0BC();
          sub_19D51E08C();
          (*(v120 + 16))(v140, v119, v137);
          v123 = *(MEMORY[0x1E6966BD0] + 4);
          v124 = swift_task_alloc();
          v0[43] = v124;
          *v124 = v0;
          v124[1] = sub_19D5088EC;
          v125 = v0[32];
          v126 = v0[28];

          return MEMORY[0x1EEDC0888](v126, v125);
        }
      }

LABEL_76:
      sub_19D502570();

      v0 = v131;
      v6 = 0;
    }

LABEL_77:
    if (qword_1ED658138 != -1)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (!v5)
  {
    v17 = v0[17];
    objc_allocWithZone(MEMORY[0x1E69635D0]);
    swift_bridgeObjectRetain_n();
    v18 = sub_19D502578();
LABEL_14:
    v19 = v18;

    if (sub_19D508590())
    {
      v20 = v19;
      goto LABEL_92;
    }

    goto LABEL_77;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_19D51E43C();
    sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
    sub_19D502508();
    sub_19D51E39C();
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[11];
  }

  else
  {
    v21 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v22 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v11 = v24 & *(v5 + 56);

    v9 = v22;
    v10 = 0;
    v8 = v5;
  }

  v127 = v9;
  v25 = (v9 + 64) >> 6;
  v128 = v25;
  while (v8 < 0)
  {
    v32 = sub_19D51E44C();
    if (!v32 || (v0[15] = v32, sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0), swift_dynamicCast(), v31 = v0[14], v29 = v10, v30 = v11, !v31))
    {
LABEL_49:
      v58 = v0[17];
      sub_19D502570();

      objc_allocWithZone(MEMORY[0x1E69635D0]);

      v18 = sub_19D502578();
      goto LABEL_14;
    }

LABEL_32:
    v138 = v30;
    v33 = [v31 bundleIdentifier];
    if (!v33)
    {
      goto LABEL_22;
    }

    v134 = v31;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v38 = v0[17];
    v37 = v0[18];
    v39 = v33;
    v40 = sub_19D51E28C();
    v42 = v41;

    if (v40 == v38 && v37 == v42)
    {

      v6 = v36;
      v7 = v35;
      v8 = v34;
      v31 = v134;
      v25 = v128;
    }

    else
    {
      v44 = v0[17];
      v6 = v36;
      v45 = sub_19D51E4BC();

      v7 = v35;
      v8 = v34;
      v31 = v134;
      v25 = v128;
      if ((v45 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v46 = [v31 extensionPointRecord];
    v47 = [v46 identifier];

    v48 = sub_19D51E28C();
    v50 = v49;

    if (v48 == 0xD000000000000026 && 0x800000019D522080 == v50)
    {
      goto LABEL_47;
    }

    v52 = sub_19D51E4BC();

    if (v52)
    {
      goto LABEL_48;
    }

    v53 = [v31 extensionPointRecord];
    v54 = [v53 identifier];

    v55 = sub_19D51E28C();
    v57 = v56;

    if (v55 == 0xD000000000000020 && 0x800000019D5220B0 == v57)
    {
LABEL_47:

LABEL_48:
      sub_19D502570();

      goto LABEL_91;
    }

    v26 = sub_19D51E4BC();

    if (v26)
    {
      goto LABEL_48;
    }

LABEL_22:

    v10 = v29;
    v11 = v138;
  }

  v27 = v10;
  v28 = v11;
  v29 = v10;
  if (v11)
  {
LABEL_28:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v8 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      goto LABEL_49;
    }

    v28 = *(v7 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  swift_once();
LABEL_78:
  v83 = v0[18];
  v84 = sub_19D51E1BC();
  __swift_project_value_buffer(v84, qword_1ED658160);

  v85 = sub_19D51E19C();
  v86 = sub_19D51E3CC();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = v0[17];
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v141 = v89;
    *v88 = 136315138;
    if (v6)
    {
      v90 = v87;
    }

    else
    {
      v90 = 7104878;
    }

    if (!v6)
    {
      v83 = 0xE300000000000000;
    }

    v91 = sub_19D514768(v90, v83, &v141);

    *(v88 + 4) = v91;
    _os_log_impl(&dword_19D4FF000, v85, v86, "RenderingProcess: Could not find matching appex record for bundleIdentifier %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x19EAFD8D0](v89, -1, -1);
    MEMORY[0x19EAFD8D0](v88, -1, -1);
  }

  else
  {
  }

  v92 = v0[20];
  v93 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v94 = sub_19D51E27C();
  [v93 initWithDomain:v94 code:1 userInfo:0];

  swift_willThrow();

  v96 = v0[40];
  v95 = v0[41];
  v98 = v0[36];
  v97 = v0[37];
  v100 = v0[32];
  v99 = v0[33];
  v102 = v0[28];
  v101 = v0[29];
  v103 = v0[27];
  v139 = v0[23];

  v104 = v0[1];

  return v104();
}

uint64_t sub_19D508590()
{
  v1 = [v0 extensionPointRecord];
  v2 = [v1 identifier];

  v3 = sub_19D51E28C();
  v5 = v4;

  if (v3 == 0xD000000000000026 && 0x800000019D522080 == v5)
  {
    goto LABEL_9;
  }

  v7 = sub_19D51E4BC();

  if ((v7 & 1) == 0)
  {
    v9 = [v0 extensionPointRecord];
    v10 = [v9 identifier];

    v11 = sub_19D51E28C();
    v13 = v12;

    if (v11 != 0xD000000000000020 || 0x800000019D5220B0 != v13)
    {
      v8 = sub_19D51E4BC();
      goto LABEL_10;
    }

LABEL_9:
    v8 = 1;
LABEL_10:

    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_19D5088EC()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_19D517170;
  }

  else
  {
    v3 = sub_19D508A00;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D508A00()
{
  v17 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v24 = v0[37];
  v29 = v0[36];
  v23 = v0[34];
  v20 = v0[33];
  v21 = v0[35];
  v30 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v31 = v0[29];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v15 = v7;
  v16 = v0[20];
  v22 = v0[16];
  v9 = *(v3 + 16);
  v9();
  (v9)(v1, v2, v6);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v1, v6);
  *v5 = 1;
  (*(v8 + 104))(v5, *MEMORY[0x1E69E7F48], v15);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v12 = sub_19D502C88(sub_19D518BD0, v11, v5);

  (*(v3 + 8))(v2, v6);
  (*(v18 + 8))(v20, v19);
  (*(v21 + 8))(v24, v23);
  (*(v25 + 8))(v27, v26);
  *(v22 + *(type metadata accessor for RenderingProcess(0) + 20)) = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_19D508CB8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_19D51812C;
  }

  else
  {
    v3 = sub_19D508DCC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D508DCC()
{
  receiver = v0[3].receiver;
  super_class = v0[3].super_class;
  v4 = v0[2].receiver;
  v3 = v0[2].super_class;
  sub_19D503498(super_class, receiver, type metadata accessor for RenderingProcess);
  v5 = type metadata accessor for __BERenderingProcess(0);
  v6 = objc_allocWithZone(v5);
  sub_19D503498(receiver, v6 + OBJC_IVAR___BERenderingProcess_inner, type metadata accessor for RenderingProcess);
  v0[1].receiver = v6;
  v0[1].super_class = v5;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_19D503568(receiver, type metadata accessor for RenderingProcess);
  v4(v7, 0);

  sub_19D503568(super_class, type metadata accessor for RenderingProcess);
  v9 = v0[3].receiver;
  v8 = v0[3].super_class;

  v10 = v0->super_class;

  return v10();
}

uint64_t RenderingExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_19D5169F0;
  a3[1] = v10;
  return result;
}

uint64_t sub_19D5091A0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19D509268()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19D5092B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D5092F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_19D50932C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_19D509360()
{
  MEMORY[0x19EAFD970](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D509398()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_19D5093D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

id sub_19D509404@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_19D509438()
{
  v1 = sub_19D51DF6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_19D509524()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D50955C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D509594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19D50967C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D509704(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_19D51DF6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19D5097B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_19D51DF6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

uint64_t WebContentExtensionConfiguration.handleConnection(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_19D50D450(uint64_t *a1, int a2)
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

uint64_t sub_19D50D498(uint64_t result, int a2, int a3)
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

BOOL sub_19D50D4F0(void *a1, uint64_t *a2)
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

uint64_t sub_19D50D564(uint64_t a1, int a2)
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

uint64_t sub_19D50D584(uint64_t result, int a2, int a3)
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

uint64_t sub_19D50D5AC()
{
  v0 = sub_19D51E1BC();
  __swift_allocate_value_buffer(v0, qword_1EB016580);
  __swift_project_value_buffer(v0, qword_1EB016580);
  return sub_19D51E1AC();
}

uint64_t BEDownloadMonitor.Location.bookmarkData.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData);
  sub_19D50D728(v1, *(v0 + OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData + 8));
  return v1;
}

uint64_t sub_19D50D728(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id BEDownloadMonitor.Location.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BEDownloadMonitor.Location.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BEDownloadMonitor.Location(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BEDownloadMonitor.__allocating_init(sourceURL:destinationURL:observedProgress:liveActivityAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = objc_allocWithZone(v6);
  sub_19D51DFCC();
  v9[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] = 0;
  v10 = &v9[OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler];
  *v10 = 0;
  v10[1] = 0;
  sub_19D51E17C();
  *&v9[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData] = xmmword_19D520910;
  v11 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *&v9[v11] = v12;
  *&v9[OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation] = 0;
  v9[OBJC_IVAR___BEDownloadMonitor_didBegin] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_lastSavedProgress] = -1082130432;
  *&v9[OBJC_IVAR___BEDownloadMonitor_backgroundTask] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle] = 0;
  v13 = OBJC_IVAR___BEDownloadMonitor_sourceURL;
  v14 = sub_19D51DF6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = &v9[v13];
  v18 = a1;
  v16(v17, a1, v14);
  v16(&v9[OBJC_IVAR___BEDownloadMonitor_destinationURL], a2, v14);
  [v12 setCancellable_];
  [*&v9[v11] setKind_];
  [*&v9[v11] setFileOperationKind_];
  v19 = *&v9[v11];
  v20 = sub_19D51DF0C();
  [v19 setFileURL_];

  *&v9[OBJC_IVAR___BEDownloadMonitor_observedProgress] = a3;
  v21 = &v9[OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken];
  *v21 = a4;
  v21[1] = a5;
  v29.receiver = v9;
  v29.super_class = v26;
  v22 = objc_msgSendSuper2(&v29, sel_init);
  v23 = *(v15 + 8);
  v23(a2, v14);
  v23(v18, v14);
  return v22;
}

id BEDownloadMonitor.init(sourceURL:destinationURL:observedProgress:liveActivityAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_19D51DFCC();
  v6[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] = 0;
  v9 = &v6[OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler];
  *v9 = 0;
  v9[1] = 0;
  sub_19D51E17C();
  *&v6[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData] = xmmword_19D520910;
  v10 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *&v6[v10] = v11;
  *&v6[OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation] = 0;
  v6[OBJC_IVAR___BEDownloadMonitor_didBegin] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_lastSavedProgress] = -1082130432;
  *&v6[OBJC_IVAR___BEDownloadMonitor_backgroundTask] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle] = 0;
  v12 = OBJC_IVAR___BEDownloadMonitor_sourceURL;
  v13 = sub_19D51DF6C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(&v6[v12], a1, v13);
  v15(&v6[OBJC_IVAR___BEDownloadMonitor_destinationURL], a2, v13);
  [v11 setCancellable_];
  [*&v6[v10] setKind_];
  [*&v6[v10] setFileOperationKind_];
  v16 = *&v6[v10];
  v17 = sub_19D51DF0C();
  [v16 setFileURL_];

  *&v6[OBJC_IVAR___BEDownloadMonitor_observedProgress] = a3;
  v18 = &v6[OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken];
  *v18 = a4;
  v18[1] = a5;
  v25.receiver = v6;
  v25.super_class = type metadata accessor for BEDownloadMonitor(0);
  v19 = objc_msgSendSuper2(&v25, sel_init);
  v20 = *(v14 + 8);
  v20(a2, v13);
  v20(a1, v13);
  return v19;
}

uint64_t sub_19D50DF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015980, &qword_19D520970);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = sub_19D51E18C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v25 = &v37 - v24;
  if (*(v4 + OBJC_IVAR___BEDownloadMonitor_didBegin))
  {
    __break(1u);
  }

  else
  {
    v38 = v12;
    v39 = v23;
    *(v4 + OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder) = 1;
    v26 = (v4 + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler);
    v27 = a1;
    v28 = a2;
    v29 = *(v4 + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler);
    v30 = *(v4 + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler + 8);
    *v26 = v28;
    v26[1] = a3;

    sub_19D504D74(v29);
    sub_19D516124(v27, v14, &qword_1EB015980, &qword_19D520970);
    v31 = *(v16 + 48);
    if (v31(v14, 1, v15) == 1)
    {
      sub_19D50116C(v14, &qword_1EB015980, &qword_19D520970);
      sub_19D51DEDC();
      sub_19D51E17C();
      v32 = v38;
      sub_19D51E15C();
      if (v31(v32, 1, v15) == 1)
      {
        v33 = v39;
        sub_19D51E17C();
        if (v31(v32, 1, v15) != 1)
        {
          sub_19D50116C(v32, &qword_1EB015980, &qword_19D520970);
        }
      }

      else
      {
        v33 = v39;
        (*(v16 + 32))(v39, v32, v15);
      }

      v36 = OBJC_IVAR___BEDownloadMonitor_placeholderType;
      swift_beginAccess();
      (*(v16 + 40))(v4 + v36, v33, v15);
    }

    else
    {
      v34 = *(v16 + 32);
      v34(v25, v14, v15);
      v34(v21, v25, v15);
      v35 = OBJC_IVAR___BEDownloadMonitor_placeholderType;
      swift_beginAccess();
      (*(v16 + 40))(v4 + v35, v21, v15);
    }

    return swift_endAccess();
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

uint64_t sub_19D50E4F0()
{
  v1[22] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015AD0, &qword_19D520980) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_19D51DF6C();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D50E60C, 0, 0);
}

uint64_t sub_19D50E60C()
{
  v1 = v0[22];
  if (*(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin))
  {
    v3 = v0[28];
    v2 = v0[29];
    v5 = v0[26];
    v4 = v0[27];
    v6 = v0[23];

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    *(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin) = 1;
    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = sub_19D50E730;
    v10 = v0[22];

    return sub_19D514D20(v10);
  }
}

uint64_t sub_19D50E730()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v5 = v3[28];
    v4 = v3[29];
    v7 = v3[26];
    v6 = v3[27];
    v8 = v3[23];

    v9 = v3[1];

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19D50E8AC, 0, 0);
  }
}

uint64_t sub_19D50E8AC()
{
  v57 = v0;
  receiver = v0[11].receiver;
  v2 = OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder;
  v0[16].receiver = OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder;
  if ((receiver[v2] & 1) == 0)
  {
    super_class = v0[15].super_class;
LABEL_11:
    v20 = sub_19D51DF4C();
    v21 = *&receiver[OBJC_IVAR___BEDownloadMonitor_innerProgress];
    v22 = sub_19D51DF0C();
    [v21 setFileURL_];

    [v21 publish];
    if (v20)
    {
      sub_19D51DF2C();
    }

    goto LABEL_14;
  }

  v3 = sub_19D515354();
  v0[16].super_class = v3;
  if (v3)
  {
    v4 = v3;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v5 = v0[11].receiver;
    v6 = sub_19D51E1BC();
    v0[17].receiver = __swift_project_value_buffer(v6, qword_1EB016580);
    v7 = v5;
    v8 = sub_19D51E19C();
    v9 = sub_19D51E3AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[11].receiver;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v56 = v12;
      *v11 = 136315138;
      v13 = sub_19D51DEFC();
      v15 = sub_19D514768(v13, v14, &v56);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_19D4FF000, v8, v9, "proxy.createPlaceholder to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x19EAFD8D0](v12, -1, -1);
      MEMORY[0x19EAFD8D0](v11, -1, -1);
    }

    v16 = v0[11].receiver + OBJC_IVAR___BEDownloadMonitor_destinationURL;
    sub_19D51DEFC();
    v17 = sub_19D51E27C();
    v0[17].super_class = v17;

    v0[1].receiver = v0;
    v0[3].super_class = &v0[10];
    v0[1].super_class = sub_19D50EE28;
    v18 = swift_continuation_init();
    v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015988, &qword_19D520990);
    v0[5].receiver = MEMORY[0x1E69E9820];
    v0[5].super_class = 1107296256;
    v0[6].receiver = sub_19D50F644;
    v0[6].super_class = &block_descriptor;
    v0[7].receiver = v18;
    [v4 createPlaceholderWithFilename:v17 completionHandler:&v0[5]];

    return MEMORY[0x1EEE6DEC8](&v0[1]);
  }

  super_class = v0[15].super_class;
  receiver = v0[11].receiver;
  if ((receiver[v0[16].receiver] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = v0[11].receiver;
  sub_19D5104DC();
  if (super_class)
  {
    v25 = v0[14].receiver;
    v24 = v0[14].super_class;
    v27 = v0[13].receiver;
    v26 = v0[13].super_class;
    v28 = v0[11].super_class;

    v29 = v0->super_class;

    return v29();
  }

  v30 = v0[11].receiver;
  v31 = *&v30[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper];
  if (v31)
  {
    v32 = v0[13].receiver;
    v33 = v0[13].super_class;
    v34 = v0[12].receiver;
    v35 = v0[12].super_class;
    v36 = [v31 url];
    sub_19D51DF3C();

    (*(v35 + 4))(v33, v32, v34);
    v37 = *&v30[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData + 8];
    if (v37 >> 60 != 15)
    {
      v39 = v0[14].super_class;
      v55 = v0[13].super_class;
      v40 = v0[12].receiver;
      v41 = v0[12].super_class;
      v42 = *&v30[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData];
      v43 = *(v41 + 2);
      v43(v39);
      v44 = type metadata accessor for BEDownloadMonitor.Location(0);
      v45 = objc_allocWithZone(v44);
      (v43)(&v45[OBJC_IVAR___BEDownloadMonitorLocation_url], v39, v40);
      v46 = &v45[OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData];
      *v46 = v42;
      v46[1] = v37;
      sub_19D50D728(v42, v37);
      v0[9].receiver = v45;
      v0[9].super_class = v44;
      v38 = objc_msgSendSuper2(v0 + 9, sel_init);
      v47 = *(v41 + 1);
      v47(v39, v40);
      v47(v55, v40);
      goto LABEL_23;
    }

    (*(v0[12].super_class + 1))(v0[13].super_class, v0[12].receiver);
  }

  v38 = 0;
LABEL_23:
  v49 = v0[14].receiver;
  v48 = v0[14].super_class;
  v51 = v0[13].receiver;
  v50 = v0[13].super_class;
  v52 = v0[11].super_class;

  v53 = v0->super_class;

  return v53(v38);
}

uint64_t sub_19D50EE28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_19D50F590;
  }

  else
  {
    v3 = sub_19D50EF38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D50EF38()
{
  v86 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 160);

  v3 = v2;
  v4 = sub_19D51E19C();
  v5 = sub_19D51E3AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v85 = v7;
    *v6 = 136315138;
    *(v0 + 168) = v2;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015990, &qword_19D520998);
    v9 = sub_19D51E2CC();
    v11 = sub_19D514768(v9, v10, &v85);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_19D4FF000, v4, v5, "proxy.createPlaceholder returned %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x19EAFD8D0](v7, -1, -1);
    MEMORY[0x19EAFD8D0](v6, -1, -1);
  }

  v12 = 0x1E762C000;
  if (v2)
  {
    v82 = *(v0 + 248);
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 192);
    v16 = *(v0 + 200);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v17 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper);
    *(v17 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper) = v2;
    v20 = v3;

    v21 = [v20 url];
    sub_19D51DF3C();

    v83 = sub_19D51DF4C();
    v22 = *(v16 + 8);
    v22(v13, v15);
    v23 = [v20 url];
    sub_19D51DF3C();

    (*(v16 + 56))(v18, 1, 1, v15);
    v24 = sub_19D51DECC();
    if (v82)
    {
      v26 = v20;

      v27 = 0;
      v28 = 0xF000000000000000;
    }

    else
    {
      v27 = v24;
      v28 = v25;
      v26 = v20;
    }

    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 192);
    v35 = *(v0 + 176);
    sub_19D50116C(*(v0 + 184), &qword_1EB015AD0, &qword_19D520980);
    v22(v33, v34);
    v36 = (v35 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData);
    v37 = *(v35 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData);
    v38 = *(v35 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData + 8);
    *v36 = v27;
    v36[1] = v28;
    sub_19D5155C4(v37, v38);
    v39 = *(v35 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
    v40 = [v26 url];
    sub_19D51DF3C();

    v41 = sub_19D51DF0C();
    v22(v32, v34);
    v31 = 0x1E762C000uLL;
    [v39 setFileURL_];

    v12 = 0x1E762C000uLL;
    [v39 publish];
    v42 = *(v0 + 264);
    if (v83)
    {
      v43 = *(v0 + 232);
      v44 = *(v0 + 192);
      v45 = [v26 url];
      sub_19D51DF3C();

      sub_19D51DF2C();
      swift_unknownObjectRelease();

      v22(v43, v44);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v30 = 0;
  }

  else
  {
    v29 = *(v0 + 264);
    swift_unknownObjectRelease();
    v30 = *(v0 + 248);
    v31 = 0x1E762C000;
  }

  v46 = *(v0 + 176);
  if ((*(v46 + *(v0 + 256)) & 1) == 0)
  {
    v47 = sub_19D51DF4C();
    v48 = *(v46 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
    v49 = sub_19D51DF0C();
    [v48 *(v31 + 2096)];

    [v48 *(v12 + 2104)];
    if (v47)
    {
      sub_19D51DF2C();
    }
  }

  v50 = *(v0 + 176);
  sub_19D5104DC();
  if (v30)
  {
    v52 = *(v0 + 224);
    v51 = *(v0 + 232);
    v54 = *(v0 + 208);
    v53 = *(v0 + 216);
    v55 = *(v0 + 184);

    v56 = *(v0 + 8);

    return v56();
  }

  v58 = *(v0 + 176);
  v59 = *(v58 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper);
  if (v59)
  {
    v60 = *(v0 + 208);
    v61 = *(v0 + 216);
    v62 = *(v0 + 192);
    v63 = *(v0 + 200);
    v64 = [v59 url];
    sub_19D51DF3C();

    (*(v63 + 32))(v61, v60, v62);
    v65 = *(v58 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData + 8);
    if (v65 >> 60 != 15)
    {
      v67 = *(v0 + 232);
      v84 = *(v0 + 216);
      v68 = *(v0 + 192);
      v69 = *(v0 + 200);
      v70 = *(v58 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData);
      v71 = *(v69 + 16);
      v71(v67);
      v72 = type metadata accessor for BEDownloadMonitor.Location(0);
      v73 = objc_allocWithZone(v72);
      (v71)(&v73[OBJC_IVAR___BEDownloadMonitorLocation_url], v67, v68);
      v74 = &v73[OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData];
      *v74 = v70;
      v74[1] = v65;
      sub_19D50D728(v70, v65);
      *(v0 + 144) = v73;
      *(v0 + 152) = v72;
      v66 = objc_msgSendSuper2((v0 + 144), sel_init);
      v75 = *(v69 + 8);
      v75(v67, v68);
      v75(v84, v68);
      goto LABEL_24;
    }

    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  }

  v66 = 0;
LABEL_24:
  v77 = *(v0 + 224);
  v76 = *(v0 + 232);
  v79 = *(v0 + 208);
  v78 = *(v0 + 216);
  v80 = *(v0 + 184);

  v81 = *(v0 + 8);

  return v81(v66);
}

uint64_t sub_19D50F590()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[36];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_19D50F644(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159D0, &unk_19D520B48);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_19D50F888(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_19D50F930;

  return sub_19D50E4F0();
}

uint64_t sub_19D50F930(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_19D51DE9C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_19D50FAD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_19D51DF6C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D50FB90, 0, 0);
}

uint64_t sub_19D50FB90()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin))
  {
    v2 = v0[6];

    v3 = v0[1];

    return v3();
  }

  else
  {
    *(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin) = 1;
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_19D50FC7C;
    v6 = v0[3];

    return sub_19D514D20(v6);
  }
}

uint64_t sub_19D50FC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19D50FDC8, 0, 0);
  }
}

uint64_t sub_19D50FDC8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = objc_allocWithZone(MEMORY[0x1E696AE98]);
  v7 = sub_19D51DF0C();
  v8 = [v6 initWithURL_];

  v9 = *(v3 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper);
  *(v3 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper) = v8;
  v10 = v8;

  v11 = [v10 url];
  sub_19D51DF3C();

  v22 = sub_19D51DF4C();
  v12 = *(v2 + 8);
  v12(v1, v4);
  v13 = *(v3 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
  v14 = [v10 url];
  sub_19D51DF3C();

  v15 = sub_19D51DF0C();
  v12(v1, v4);
  [v13 setFileURL_];

  [v13 publish];
  sub_19D5104DC();
  if (v22)
  {
    v16 = v0[6];
    v17 = v0[4];
    v18 = [v10 url];
    sub_19D51DF3C();

    sub_19D51DF2C();
    v12(v16, v17);
  }

  else
  {
  }

  v19 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_19D510158(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_19D51DF6C();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_19D51DF3C();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_19D510284;

  return sub_19D50FAD0(v9);
}

uint64_t sub_19D510284()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = sub_19D51DE9C();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

void sub_19D5104DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___BEDownloadMonitor_observedProgress;
  v4 = *(v0 + OBJC_IVAR___BEDownloadMonitor_observedProgress);
  swift_getKeyPath();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = v4;
  v8 = sub_19D51DEBC();

  v9 = *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation) = v8;

  v10 = *(v1 + v3);
  swift_getKeyPath();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  v13 = v10;
  v14 = sub_19D51DEBC();

  v15 = *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation) = v14;

  v16 = *(v1 + v3);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v16;
  v18 = sub_19D51DEBC();

  v19 = *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation) = v18;

  v20 = *(v1 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v20;
  v22 = sub_19D51DEBC();

  v23 = *(v1 + OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation) = v22;
}

void sub_19D5107E8(void **a1)
{
  v2 = sub_19D51DF6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v13 = sub_19D51E1BC();
    __swift_project_value_buffer(v13, qword_1EB016580);
    v14 = v10;
    v15 = sub_19D51E19C();
    v16 = sub_19D51E3BC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_19D4FF000, v15, v16, "Progress: %@", v17, 0xCu);
      sub_19D50116C(v18, &qword_1EB0159E8, &qword_19D520C10);
      MEMORY[0x19EAFD8D0](v18, -1, -1);
      MEMORY[0x19EAFD8D0](v17, -1, -1);
    }

    v20 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
    v21 = *&v12[OBJC_IVAR___BEDownloadMonitor_innerProgress];
    [v21 setTotalUnitCount_];

    v22 = *&v12[v20];
    [v22 setCompletedUnitCount_];

    v23 = -1.0;
    if (([v14 isIndeterminate] & 1) == 0)
    {
      [v14 fractionCompleted];
      v23 = v24;
    }

    v25 = OBJC_IVAR___BEDownloadMonitor_lastSavedProgress;
    v26 = *&v12[OBJC_IVAR___BEDownloadMonitor_lastSavedProgress];
    if (vabds_f32(v23, v26) >= 0.01 || v26 < 0.0 || [v14 isFinished])
    {
      v44 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159F8, &qword_19D520C38);
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E6448];
      *(v27 + 16) = xmmword_19D520920;
      v29 = MEMORY[0x1E69E64A8];
      *(v27 + 56) = v28;
      *(v27 + 64) = v29;
      *(v27 + 32) = v23;
      v30 = sub_19D51E29C();
      v32 = v31;
      v33 = *&v12[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper];
      if (v33)
      {
        v43 = v25;
        v34 = [v33 url];
        sub_19D51DF3C();

        (*(v3 + 32))(v9, v7, v44);
        v35 = sub_19D51DF4C();
        v36 = v35;
        MEMORY[0x1EEE9AC00](v35);
        *(&v43 - 4) = v30;
        *(&v43 - 3) = v32;
        *(&v43 - 2) = v9;
        sub_19D51DF1C();
        if (v36)
        {
          sub_19D51DF2C();
        }

        (*(v3 + 8))(v9, v44);
        v25 = v43;
      }

      v37 = *&v12[OBJC_IVAR___BEDownloadMonitor_backgroundTask];
      if (v37)
      {
        v38 = *&v12[v20];
        v39 = v37;
        if ([v38 isFinished])
        {

          [v39 setTaskCompletedWithSuccess_];
        }

        else
        {
          [v39 updateProgress_];
          v40 = [v39 title];
          if (!v40)
          {
            sub_19D51E28C();
            v40 = sub_19D51E27C();
          }

          v41 = [*&v12[v20] localizedAdditionalDescription];
          if (!v41)
          {
            __break(1u);
            return;
          }

          v42 = v41;

          [v39 updateTitle:v40 withReason:v42];
        }
      }

      else
      {
      }

      *&v12[v25] = v23;
    }
  }
}

void sub_19D510D38(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v45 = a4;
  v7 = sub_19D51DF6C();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = sub_19D51E2BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = a2;
  v48[1] = a3;
  sub_19D51E2AC();
  sub_19D5165F0();
  v19 = sub_19D51E40C();
  (*(v15 + 8))(v18, v14);
  v44 = a2;
  v20 = sub_19D51E2DC();
  LODWORD(v19) = setxattr(a1, "com.apple.progress.fractionCompleted", (v20 + 32), v19, 0, 0);

  if ((v19 & 0x80000000) != 0)
  {
    v32 = v13;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v33 = sub_19D51E1BC();
    __swift_project_value_buffer(v33, qword_1EB016580);
    v34 = v46;
    v35 = v47;
    (*(v46 + 16))(v32, v45, v47);

    v36 = sub_19D51E19C();
    v37 = sub_19D51E3CC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48[0] = v39;
      *v38 = 136315650;
      *(v38 + 4) = sub_19D514768(v44, a3, v48);
      *(v38 + 12) = 1024;
      *(v38 + 14) = MEMORY[0x19EAFCD30]();
      *(v38 + 18) = 2080;
      sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0]);
      v40 = sub_19D51E4AC();
      v42 = v41;
      (*(v34 + 8))(v32, v35);
      v43 = sub_19D514768(v40, v42, v48);

      *(v38 + 20) = v43;
      _os_log_impl(&dword_19D4FF000, v36, v37, "Failed to set xattr %s: %{darwin.errno}d on %s", v38, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x19EAFD8D0](v39, -1, -1);
      MEMORY[0x19EAFD8D0](v38, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v32, v35);
    }
  }

  else
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v21 = sub_19D51E1BC();
    __swift_project_value_buffer(v21, qword_1EB016580);
    v22 = v46;
    v23 = v47;
    (*(v46 + 16))(v11, v45, v47);

    v24 = sub_19D51E19C();
    v25 = sub_19D51E3BC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_19D514768(v44, a3, v48);
      *(v26 + 12) = 2080;
      sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0]);
      v28 = sub_19D51E4AC();
      v30 = v29;
      (*(v22 + 8))(v11, v23);
      v31 = sub_19D514768(v28, v30, v48);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_19D4FF000, v24, v25, "set xattr %s: on %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19EAFD8D0](v27, -1, -1);
      MEMORY[0x19EAFD8D0](v26, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v11, v23);
    }
  }
}

void sub_19D511300(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v54 - v8;
  v10 = sub_19D51DF6C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v19 = *a1;
  if ([v19 isFinished])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v60 = v10;
      v62 = v9;
      v58 = a4;
      if (qword_1EB015890 != -1)
      {
        swift_once();
      }

      v22 = sub_19D51E1BC();
      v23 = __swift_project_value_buffer(v22, qword_1EB016580);
      v24 = v19;
      v25 = v21;
      v59 = v23;
      v26 = sub_19D51E19C();
      v27 = sub_19D51E3AC();
      v61 = v25;

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v57 = v11;
        v29 = v28;
        v30 = swift_slowAlloc();
        v55 = v30;
        v56 = swift_slowAlloc();
        v64 = v56;
        *v29 = 138412802;
        *(v29 + 4) = v24;
        *v30 = v24;
        *(v29 + 12) = 1024;
        *(v29 + 14) = [v24 isFinished];
        *(v29 + 18) = 2080;
        sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0]);
        v32 = v60;
        v31 = v61;
        v33 = sub_19D51E4AC();
        v35 = sub_19D514768(v33, v34, &v64);

        *(v29 + 20) = v35;
        _os_log_impl(&dword_19D4FF000, v26, v27, "Finished observer: %@ finished: %{BOOL}d with destinationURL %s", v29, 0x1Cu);
        v36 = v55;
        sub_19D50116C(v55, &qword_1EB0159E8, &qword_19D520C10);
        v37 = v36;
        v38 = v32;
        MEMORY[0x19EAFD8D0](v37, -1, -1);
        v39 = v56;
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x19EAFD8D0](v39, -1, -1);
        v40 = v29;
        v11 = v57;
        MEMORY[0x19EAFD8D0](v40, -1, -1);
      }

      else
      {

        v38 = v60;
        v31 = v61;
      }

      v41 = *&v31[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper];
      v42 = v62;
      if (v41)
      {
        v43 = [v41 url];
        sub_19D51DF3C();

        v44 = *(v11 + 32);
        v44(v18, v16, v38);
        if (v31[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] == 1)
        {
          v60 = v44;
          LODWORD(v61) = sub_19D51DF4C();
          v45 = sub_19D51E37C();
          (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
          v46 = v63;
          (*(v11 + 16))(v63, v18, v38);
          v47 = (*(v11 + 80) + 32) & ~*(v11 + 80);
          v48 = swift_allocObject();
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          v60(v48 + v47, v46, v38);
          v49 = v48 + ((v47 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v49 = v31;
          *(v49 + 8) = v61 & 1;
          *(v48 + ((v47 + v12 + 23) & 0xFFFFFFFFFFFFFFF8)) = v58;
          v50 = v31;
          sub_19D512DBC(0, 0, v62, &unk_19D520C08, v48);

          (*(v11 + 8))(v18, v38);
          return;
        }

        (*(v11 + 8))(v18, v38);
      }

      if (v31[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] == 1)
      {
        v51 = sub_19D51E19C();
        v52 = sub_19D51E3CC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_19D4FF000, v51, v52, "Finished, but placeholderURL is nil", v53, 2u);
          MEMORY[0x19EAFD8D0](v53, -1, -1);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_19D5118F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v17 = *MEMORY[0x1E69E9840];
  *(v6 + 320) = a6;
  *(v6 + 184) = a4;
  *(v6 + 192) = a5;
  v7 = sub_19D51DE5C();
  *(v6 + 200) = v7;
  v8 = *(v7 - 8);
  *(v6 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0) - 8) + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015AD0, &qword_19D520980) - 8) + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v12 = sub_19D51DF6C();
  *(v6 + 240) = v12;
  v13 = *(v12 - 8);
  *(v6 + 248) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_19D511ABC, 0, 0);
}

uint64_t sub_19D511ABC()
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = v0[23];
  v2 = v0[24];
  v3 = objc_allocWithZone(MEMORY[0x1E696AE98]);
  v4 = sub_19D51DF0C();
  v5 = [v3 initWithURL_];
  v0[34] = v5;

  v0[35] = OBJC_IVAR___BEDownloadMonitor_destinationURL;
  v6 = objc_allocWithZone(MEMORY[0x1E696AE98]);
  v7 = sub_19D51DF0C();
  v8 = [v6 initWithURL_];
  v0[36] = v8;

  v9 = sub_19D515354();
  v0[37] = v9;
  if (v9)
  {
    v10 = v9;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v11 = sub_19D51E1BC();
    v0[38] = __swift_project_value_buffer(v11, qword_1EB016580);
    v12 = v5;
    v13 = v8;
    v14 = sub_19D51E19C();
    v15 = sub_19D51E3AC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      *(v16 + 4) = v12;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v13;
      *v17 = v12;
      v17[1] = v13;
      v18 = v12;
      v19 = v13;
      _os_log_impl(&dword_19D4FF000, v14, v15, "proxy.replacePlaceholder %@ to %@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159E8, &qword_19D520C10);
      swift_arrayDestroy();
      MEMORY[0x19EAFD8D0](v17, -1, -1);
      MEMORY[0x19EAFD8D0](v16, -1, -1);
    }

    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_19D511F14;
    v20 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015988, &qword_19D520990);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19D50F644;
    v0[13] = &block_descriptor_124;
    v0[14] = v20;
    [v10 replacePlaceholderWithPlaceholderFileWrapper:v12 downloadedFileWrapper:v13 completionHandler:v0 + 10];
    v21 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v22 = sub_19D51E1BC();
    __swift_project_value_buffer(v22, qword_1EB016580);
    v23 = sub_19D51E19C();
    v24 = sub_19D51E3CC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_19D4FF000, v23, v24, "Failed to get intermediary proxy", v25, 2u);
      MEMORY[0x19EAFD8D0](v25, -1, -1);
    }

    v27 = v0[32];
    v26 = v0[33];
    v29 = v0[28];
    v28 = v0[29];
    v30 = v0[27];

    v31 = v0[1];
    v32 = *MEMORY[0x1E69E9840];

    return v31();
  }
}

uint64_t sub_19D511F14()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_19D51296C;
  }

  else
  {
    v3 = sub_19D512050;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D512050()
{
  v104 = v0;
  v103[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 304);
  v2 = *(v0 + 160);
  v3 = v2;
  v4 = sub_19D51E19C();
  v5 = sub_19D51E3AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v103[0] = v7;
    *v6 = 136315138;
    *(v0 + 176) = v2;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015990, &qword_19D520998);
    v9 = sub_19D51E2CC();
    v11 = sub_19D514768(v9, v10, v103);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_19D4FF000, v4, v5, "proxy.replacePlaceholder returned %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x19EAFD8D0](v7, -1, -1);
    MEMORY[0x19EAFD8D0](v6, -1, -1);
  }

  if (v2)
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 192);
    v14 = [objc_opt_self() defaultManager];
    v15 = sub_19D51DF0C();
    *(v0 + 168) = 0;
    v16 = [v14 removeItemAtURL:v15 error:v0 + 168];

    v17 = *(v0 + 168);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v35 = *(v0 + 208);
      v36 = *(v0 + 216);
      v37 = *(v0 + 200);
      v38 = v17;
      v39 = sub_19D51DEAC();

      swift_willThrow();
      v40 = v39;
      sub_19D51DE4C();
      sub_19D5164D4(&qword_1EB0159F0, MEMORY[0x1E6967E70]);
      v41 = sub_19D51DE8C();

      (*(v35 + 8))(v36, v37);
      if (v41)
      {
      }

      else
      {
        v42 = *(v0 + 304);
        v43 = *(v0 + 192);
        v44 = sub_19D51E19C();
        v45 = sub_19D51E3CC();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = *(v0 + 280);
          v47 = *(v0 + 240);
          v48 = *(v0 + 192);
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v103[0] = v50;
          *v49 = 136315138;
          sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0]);
          v51 = sub_19D51E4AC();
          v53 = sub_19D514768(v51, v52, v103);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_19D4FF000, v44, v45, "FAILED to delete local file %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          MEMORY[0x19EAFD8D0](v50, -1, -1);
          MEMORY[0x19EAFD8D0](v49, -1, -1);
        }
      }
    }

    v54 = *(v0 + 192) + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler;
    if (*v54)
    {
      v56 = *(v0 + 256);
      v55 = *(v0 + 264);
      v57 = v3;
      v58 = *(v0 + 240);
      v59 = *(v0 + 248);
      v60 = *(v0 + 232);
      v100 = *(v54 + 8);
      v101 = *v54;

      v61 = [v57 url];
      sub_19D51DF3C();

      v99 = sub_19D51DF4C();
      v62 = *(v59 + 8);
      v62(v55, v58);
      v63 = [v57 &selRef_title];
      sub_19D51DF3C();

      (*(v59 + 56))(v60, 1, 1, v58);
      v64 = sub_19D51DECC();
      v69 = *(v0 + 256);
      v68 = *(v0 + 264);
      v71 = *(v0 + 240);
      v70 = *(v0 + 248);
      v98 = v64;
      v73 = v72;
      sub_19D50116C(*(v0 + 232), &qword_1EB015AD0, &qword_19D520980);
      v62(v69, v71);
      v74 = [v57 &selRef_title];
      sub_19D51DF3C();

      v75 = type metadata accessor for BEDownloadMonitor.Location(0);
      v76 = objc_allocWithZone(v75);
      (*(v70 + 16))(&v76[OBJC_IVAR___BEDownloadMonitorLocation_url], v68, v71);
      v77 = &v76[OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData];
      *v77 = v98;
      v77[1] = v73;
      sub_19D50D728(v98, v73);
      *(v0 + 144) = v76;
      *(v0 + 152) = v75;
      v78 = objc_msgSendSuper2((v0 + 144), sel_init);
      v62(v68, v71);
      v79 = v78;
      v101(v78);

      sub_19D5155D8(v98, v73);
      if (v99)
      {
        v65 = *(v0 + 264);
        v66 = *(v0 + 240);
        v3 = v57;
        v67 = [v57 url];
        sub_19D51DF3C();

        sub_19D51DF2C();
        sub_19D504D74(v101);
        v62(v65, v66);
      }

      else
      {
        sub_19D504D74(v101);
        v3 = v57;
      }
    }

    v80 = *(v0 + 224);
    v81 = *(v0 + 320);
    v82 = *(v0 + 192);
    v83 = sub_19D51E37C();
    (*(*(v83 - 8) + 56))(v80, 1, 1, v83);
    v84 = swift_allocObject();
    v84[2] = 0;
    v84[3] = 0;
    v84[4] = v82;
    v85 = v82;
    sub_19D512AFC(0, 0, v80, &unk_19D520C20, v84);

    sub_19D50116C(v80, &qword_1EB0159C0, &qword_19D520AD0);
    v87 = *(v0 + 288);
    v86 = *(v0 + 296);
    v88 = *(v0 + 272);
    if (v81 == 1)
    {
      v89 = *(v0 + 184);
      sub_19D51DF2C();
    }
  }

  else
  {
    v19 = *(v0 + 304);
    v20 = *(v0 + 192);
    v21 = sub_19D51E19C();
    v22 = sub_19D51E3CC();

    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 288);
    v24 = *(v0 + 296);
    if (v23)
    {
      v26 = *(v0 + 280);
      v102 = *(v0 + 272);
      v27 = *(v0 + 240);
      v28 = *(v0 + 192);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v103[0] = v30;
      *v29 = 136315138;
      sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0]);
      v31 = sub_19D51E4AC();
      v33 = sub_19D514768(v31, v32, v103);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_19D4FF000, v21, v22, "FAILED to finish download. Left %s in place.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x19EAFD8D0](v30, -1, -1);
      MEMORY[0x19EAFD8D0](v29, -1, -1);
      v34 = v102;
    }

    else
    {
      v34 = *(v0 + 272);
    }
  }

  swift_unknownObjectRelease();
  v91 = *(v0 + 256);
  v90 = *(v0 + 264);
  v93 = *(v0 + 224);
  v92 = *(v0 + 232);
  v94 = *(v0 + 216);

  v95 = *(v0 + 8);
  v96 = *MEMORY[0x1E69E9840];

  return v95();
}

uint64_t sub_19D51296C()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  swift_willThrow();

  swift_unknownObjectRelease();

  v10 = v0[1];
  v11 = v0[39];
  v12 = *MEMORY[0x1E69E9840];

  return v10();
}

uint64_t sub_19D512A88()
{
  [*(*(v0 + 16) + OBJC_IVAR___BEDownloadMonitor_innerProgress) unpublish];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19D512AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_19D516124(a3, v27 - v11, &qword_1EB0159C0, &qword_19D520AD0);
  v13 = sub_19D51E37C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_19D50116C(v12, &qword_1EB0159C0, &qword_19D520AD0);
  }

  else
  {
    sub_19D51E36C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_19D51E33C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_19D51E2DC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_19D512DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_19D516124(a3, v24 - v10, &qword_1EB0159C0, &qword_19D520AD0);
  v12 = sub_19D51E37C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19D50116C(v11, &qword_1EB0159C0, &qword_19D520AD0);
  }

  else
  {
    sub_19D51E36C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_19D51E33C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_19D51E2DC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);

      return v22;
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

  sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_19D513068(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([v1 isCancelled])
    {
      if (qword_1EB015890 != -1)
      {
        swift_once();
      }

      v4 = sub_19D51E1BC();
      __swift_project_value_buffer(v4, qword_1EB016580);
      v5 = sub_19D51E19C();
      v6 = sub_19D51E3AC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_19D4FF000, v5, v6, "Client progress cancelled", v7, 2u);
        MEMORY[0x19EAFD8D0](v7, -1, -1);
      }

      v8 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
      if (([*&v3[OBJC_IVAR___BEDownloadMonitor_innerProgress] isCancelled] & 1) == 0)
      {
        [*&v3[v8] cancel];
      }

      [*&v3[v8] unpublish];
    }
  }
}

void sub_19D5131CC(id *a1)
{
  if ([*a1 isCancelled])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if (qword_1EB015890 != -1)
      {
        swift_once();
      }

      v3 = sub_19D51E1BC();
      __swift_project_value_buffer(v3, qword_1EB016580);
      v4 = sub_19D51E19C();
      v5 = sub_19D51E3AC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_19D4FF000, v4, v5, "Inner progress cancelled", v6, 2u);
        MEMORY[0x19EAFD8D0](v6, -1, -1);
      }

      v7 = OBJC_IVAR___BEDownloadMonitor_backgroundTask;
      v8 = *&v2[OBJC_IVAR___BEDownloadMonitor_backgroundTask];
      if (v8)
      {
        [v8 setTaskCompletedWithSuccess_];
        v9 = *&v2[v7];
      }

      else
      {
        v9 = 0;
      }

      *&v2[v7] = 0;

      v10 = OBJC_IVAR___BEDownloadMonitor_observedProgress;
      if (([*&v2[OBJC_IVAR___BEDownloadMonitor_observedProgress] isCancelled] & 1) == 0)
      {
        [*&v2[v10] cancel];
      }

      [*&v2[OBJC_IVAR___BEDownloadMonitor_innerProgress] unpublish];
    }
  }
}

uint64_t sub_19D513368(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_19D51E37C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v8 = a1;
  sub_19D516AB4(0, 0, v5, &unk_19D520C48, v7);
}

uint64_t sub_19D513490()
{
  if (qword_1EB015890 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_19D51E1BC();
  __swift_project_value_buffer(v2, qword_1EB016580);
  v3 = v1;
  v4 = sub_19D51E19C();
  v5 = sub_19D51E3DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR___BEDownloadMonitor_backgroundTask);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&dword_19D4FF000, v4, v5, "Task expired: %@", v7, 0xCu);
    sub_19D50116C(v8, &qword_1EB0159E8, &qword_19D520C10);
    MEMORY[0x19EAFD8D0](v8, -1, -1);
    MEMORY[0x19EAFD8D0](v7, -1, -1);
  }

  v11 = *(v0 + 16);

  [*(v11 + OBJC_IVAR___BEDownloadMonitor_innerProgress) cancel];
  v12 = *(v0 + 8);

  return v12();
}

void sub_19D513634(uint64_t a1, uint64_t a2)
{
  v3 = sandbox_extension_consume();
  *(a2 + OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle) = v3;
  if (v3 == -1)
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v4 = sub_19D51E1BC();
    __swift_project_value_buffer(v4, qword_1EB016580);
    v5 = sub_19D51E19C();
    v6 = sub_19D51E3CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19D4FF000, v5, v6, "Failed to consume sandbox extension for Live Activity", v7, 2u);
      MEMORY[0x19EAFD8D0](v7, -1, -1);
    }
  }
}

id BEDownloadMonitor.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle];
  sandbox_extension_release();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BEDownloadMonitor(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19D513A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = (*(v9 + 16))(&v16 - v11, a1 + *a4, v8);
  v14 = a5(v13);
  (*(v9 + 8))(v12, v8);

  return v14;
}

uint64_t sub_19D513BBC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_19D513C94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___BEDownloadMonitor_id;
  v5 = sub_19D51DFDC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19D513D18()
{
  sub_19D51E51C();
  MEMORY[0x19EAFD080](0);
  return sub_19D51E53C();
}

uint64_t sub_19D513D84()
{
  sub_19D51E51C();
  MEMORY[0x19EAFD080](0);
  return sub_19D51E53C();
}

id sub_19D513DD4(uint64_t a1, void *a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedScheduler];
  v11 = [a2 identifier];
  if (!v11)
  {
    sub_19D51E28C();
    v11 = sub_19D51E27C();
  }

  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(&v13[v12], v8, v4);
  aBlock[4] = sub_19D5167C8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D514164;
  aBlock[3] = &block_descriptor_156;
  v14 = _Block_copy(aBlock);

  LODWORD(v13) = [v10 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v14];
  _Block_release(v14);

  if (!v13)
  {
    sub_19D516844();
    v20 = swift_allocError();
LABEL_10:
    swift_willThrow();
    aBlock[0] = v20;
    result = sub_19D51E34C();
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

  v15 = [v9 sharedScheduler];
  aBlock[0] = 0;
  v16 = [v15 submitTaskRequest:a2 error:aBlock];

  v17 = aBlock[0];
  if (!v16)
  {
    v23[1] = aBlock[0];
    v21 = aBlock[0];
    v20 = sub_19D51DEAC();

    goto LABEL_10;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t sub_19D514114(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50);
  return sub_19D51E35C();
}

void sub_19D514164(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_19D5141CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_19D514218(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_19D5041BC;

  return v7();
}

uint64_t sub_19D514300(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_19D5046C4;

  return v8();
}

uint64_t sub_19D5143E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_19D516124(a3, v25 - v11, &qword_1EB0159C0, &qword_19D520AD0);
  v13 = sub_19D51E37C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_19D50116C(v12, &qword_1EB0159C0, &qword_19D520AD0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_19D51E36C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_19D51E33C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_19D51E2DC() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);

    return v23;
  }

LABEL_8:
  sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19D51470C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_19D514768(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_19D514768(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19D514834(v11, 0, 0, 1, a1, a2);
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
    sub_19D515560(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_19D514834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_19D514940(a5, a6);
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
    result = sub_19D51E47C();
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

uint64_t sub_19D514940(uint64_t a1, unint64_t a2)
{
  v4 = sub_19D51498C(a1, a2);
  sub_19D514ABC(&unk_1F10D1F90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_19D51498C(uint64_t a1, unint64_t a2)
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

  v6 = sub_19D514BA8(v5, 0);
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

  result = sub_19D51E47C();
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
        v10 = sub_19D51E31C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19D514BA8(v10, 0);
        result = sub_19D51E45C();
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

uint64_t sub_19D514ABC(uint64_t result)
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

  result = sub_19D514C1C(result, v12, 1, v3);
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

void *sub_19D514BA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C8, &qword_19D520B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19D514C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C8, &qword_19D520B40);
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

_BYTE **sub_19D514D10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_19D514D40()
{
  v1 = v0[9] + OBJC_IVAR___BEDownloadMonitor_id;
  sub_19D51DFBC();
  if (qword_1EB015890 != -1)
  {
    swift_once();
  }

  v2 = sub_19D51E1BC();
  __swift_project_value_buffer(v2, qword_1EB016580);
  v3 = sub_19D51E19C();
  v4 = sub_19D51E3AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19D4FF000, v3, v4, "submitBackgroundTask", v5, 2u);
    MEMORY[0x19EAFD8D0](v5, -1, -1);
  }

  v6 = v0[9];

  v7 = *(v6 + OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken);
  v8 = *(v6 + OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken + 8);
  *(swift_task_alloc() + 16) = v6;
  sub_19D50D728(v7, v8);
  sub_19D51DF8C();
  sub_19D5155D8(v7, v8);

  v9 = objc_allocWithZone(MEMORY[0x1E695A9F8]);
  v10 = sub_19D51E27C();
  v11 = [v9 initWithIdentifier_];
  v0[10] = v11;

  v12 = *(v6 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
  v13 = [v12 localizedDescription];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v13;
  [v11 setTitle_];

  v13 = [v12 localizedAdditionalDescription];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v22 = v13;

  [v11 setReason_];

  v23 = swift_task_alloc();
  v0[11] = v23;
  *(v23 + 16) = v11;
  v24 = *(MEMORY[0x1E69E8920] + 4);
  v25 = swift_task_alloc();
  v0[12] = v25;
  v20 = sub_19D516668();
  *v25 = v0;
  v25[1] = sub_19D515064;
  v18 = sub_19D516660;
  v13 = v0 + 8;
  v17 = 0x800000019D521F70;
  v14 = 0;
  v15 = 0;
  v16 = 0xD000000000000013;
  v19 = v23;

  return MEMORY[0x1EEE6DE38](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_19D515064()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_19D5152EC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_19D515180;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19D515180()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v0[6] = sub_19D5166B4;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_19D516DA4;
  v0[5] = &block_descriptor_145;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v3;
  v9 = v1;

  [v4 setExpirationHandler_];

  _Block_release(v6);
  v10 = *&v9[OBJC_IVAR___BEDownloadMonitor_backgroundTask];
  *&v9[OBJC_IVAR___BEDownloadMonitor_backgroundTask] = v4;

  v11 = v0[1];

  return v11();
}

uint64_t sub_19D5152EC()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_19D515354()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v1 = sub_19D51E27C();
  v2 = [v0 initWithServiceName_];

  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  [v2 resume];
  v4 = [v2 remoteObjectProxy];
  sub_19D51E41C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159D8, qword_19D520B58);
  if (swift_dynamicCast())
  {

    return v10;
  }

  else
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v6 = sub_19D51E1BC();
    __swift_project_value_buffer(v6, qword_1EB016580);
    v7 = sub_19D51E19C();
    v8 = sub_19D51E3CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19D4FF000, v7, v8, "Failed to get intermediary proxy", v9, 2u);
      MEMORY[0x19EAFD8D0](v9, -1, -1);
    }

    [v2 invalidate];
    return 0;
  }
}

uint64_t sub_19D515560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19D5155C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19D5155D8(a1, a2);
  }

  return a1;
}

uint64_t sub_19D5155D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19D51562C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19D5156E4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_19D51562C(a1, &a1[a2]);
  }

  v3 = sub_19D51DE7C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_19D51DE6C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_19D51DF7C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t _s16BrowserEngineKit17BEDownloadMonitorC17createAccessToken10Foundation4DataVSgyFZ_0()
{
  v0 = sandbox_extension_issue_mach();
  if (v0)
  {
    v1 = v0;
    v2 = strlen(v0);
    if (!__OFADD__(v2, 1))
    {
      return sub_19D5156E4(v1, v2 + 1);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_1EB015890 != -1)
  {
LABEL_9:
    swift_once();
  }

  v4 = sub_19D51E1BC();
  __swift_project_value_buffer(v4, qword_1EB016580);
  v5 = sub_19D51E19C();
  v6 = sub_19D51E3CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19D4FF000, v5, v6, "Unable to get live activity access token", v7, 2u);
    MEMORY[0x19EAFD8D0](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_19D515900()
{
  result = sub_19D51DFDC();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_19D51DF6C();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_19D51E18C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of BEDownloadMonitor.beginMonitoring()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19D515BF8;

  return v6();
}

uint64_t sub_19D515BF8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of BEDownloadMonitor.resumeMonitoring(placeholderURL:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19D5041BC;

  return v8(a1);
}

uint64_t sub_19D515E34()
{
  result = sub_19D51DF6C();
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

uint64_t sub_19D515EE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19D5041BC;

  return sub_19D510158(v2, v3, v4);
}

uint64_t sub_19D515F98()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_19D5041BC;

  return sub_19D514218(v2, v3, v5);
}

uint64_t sub_19D516058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19D5041BC;

  return sub_19D514300(a1, v4, v5, v7);
}

uint64_t sub_19D516124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_19D51618C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19D5041BC;

  return sub_19D5011CC(a1, v5);
}

uint64_t sub_19D516244()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19D5041BC;

  return sub_19D50F888(v2, v3);
}

uint64_t objectdestroy_62Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_19D516354(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_19D5107E8(a1);
}

uint64_t sub_19D51638C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_19D51DF6C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_19D5046C4;

  return sub_19D5118F4(a1, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_19D5164D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19D51651C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D5046C4;

  return sub_19D512A68(a1, v4, v5, v6);
}

unint64_t sub_19D5165F0()
{
  result = qword_1EB015A00;
  if (!qword_1EB015A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A00);
  }

  return result;
}

unint64_t sub_19D516668()
{
  result = qword_1EB015A08;
  if (!qword_1EB015A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB015A08);
  }

  return result;
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_127Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19D516714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D5041BC;

  return sub_19D513470(a1, v4, v5, v6);
}

uint64_t sub_19D5167C8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50) - 8) + 80);

  return sub_19D514114(a1);
}

unint64_t sub_19D516844()
{
  result = qword_1EB015A18;
  if (!qword_1EB015A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRegistrationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TaskRegistrationError(_WORD *result, int a2, int a3)
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

unint64_t sub_19D516980()
{
  result = qword_1EB015A20;
  if (!qword_1EB015A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A20);
  }

  return result;
}

uint64_t RenderingExtensionConfiguration.handleConnection(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_19D516AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_19D519504(a3, v26 - v10);
  v12 = sub_19D51E37C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19D50116C(v11, &qword_1EB0159C0, &qword_19D520AD0);
  }

  else
  {
    sub_19D51E36C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_19D51E33C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_19D51E2DC() + 32;
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

      sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);

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

  sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);
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

uint64_t sub_19D516DA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id WebContentProcess.createVisibilityPropagationInteraction()()
{
  v0 = sub_19D51E02C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D51E05C();
  sub_19D51E03C();
  v5 = sub_19D51DFFC();
  (*(v1 + 8))(v4, v0);
  v6 = sub_19D51E27C();
  v7 = [objc_opt_self() interactionWithPID:v5 environmentIdentifier:v6];

  return v7;
}

uint64_t sub_19D5170F0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  v3 = v2[4];
  os_unfair_lock_lock(v3 + 4);
  v4 = v2[2];
  if (v4)
  {
    v5 = v2[3];
    v2[2] = 0;
    v2[3] = 0;
    sub_19D504D74(v4);
  }

  os_unfair_lock_unlock(v3 + 4);
  sub_19D51E04C();

  return sub_19D516DE8();
}

uint64_t sub_19D517170()
{
  v1 = v0[42];
  v23 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[20];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v23, v2);
  v24 = v0[44];
  v12 = v0[40];
  v11 = v0[41];
  v14 = v0[36];
  v13 = v0[37];
  v16 = v0[32];
  v15 = v0[33];
  v18 = v0[28];
  v17 = v0[29];
  v19 = v0[27];
  v20 = v0[23];

  v21 = v0[1];

  return v21();
}

id RenderingProcess.createVisibilityPropagationInteraction()()
{
  v0 = sub_19D51E02C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D51E05C();
  sub_19D51E03C();
  v5 = sub_19D51DFFC();
  (*(v1 + 8))(v4, v0);
  v6 = sub_19D51E27C();
  v7 = [objc_opt_self() interactionWithPID:v5 environmentIdentifier:v6];

  return v7;
}

uint64_t _s16BrowserEngineKit16RenderingProcessV10auditToken0aB4Core05AuditG0Vvg_0()
{
  sub_19D51E05C();

  return sub_19D51E03C();
}

uint64_t sub_19D517480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v10 = *(*(type metadata accessor for WebContentProcess(0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[7] = v11;

  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_19D517580;

  return WebContentProcess.init(bundleIdentifier:onInterruption:)(v11, 0, 0, a4, a5);
}

uint64_t sub_19D517580()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_19D519680;
  }

  else
  {
    v3 = sub_19D519694;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D517968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v10 = *(*(type metadata accessor for RenderingProcess(0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[7] = v11;

  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_19D517A68;

  return RenderingProcess.init(bundleIdentifier:onInterruption:)(v11, 0, 0, a4, a5);
}

uint64_t sub_19D517A68()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_19D519680;
  }

  else
  {
    v3 = sub_19D519698;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D517D14(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 20));
  v5 = v4[4];
  os_unfair_lock_lock(v5 + 4);
  v6 = v4[2];
  if (v6)
  {
    v7 = v4[3];
    v4[2] = 0;
    v4[3] = 0;
    sub_19D504D74(v6);
  }

  os_unfair_lock_unlock(v5 + 4);
  sub_19D51E04C();

  return sub_19D516DE8();
}

void sub_19D517DB8(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = &a1[*a3];
  v6 = *&v5[*(a4(0) + 20)];
  v7 = v6[4];
  v10 = a1;
  os_unfair_lock_lock(v7 + 4);
  v8 = v6[2];
  if (v8)
  {
    v9 = v6[3];
    v6[2] = 0;
    v6[3] = 0;
    sub_19D504D74(v8);
  }

  os_unfair_lock_unlock(v7 + 4);
  sub_19D51E04C();
  sub_19D516DE8();
}

id __BERenderingProcess.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_19D518094(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19D51812C()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_19D51DE9C();
  v3(0, v4);

  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_19D5181EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  v15 = sub_19D51E37C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;

  sub_19D516AB4(0, 0, v14, a6, v16);
}

uint64_t sub_19D518314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v10 = *(*(type metadata accessor for NetworkingProcess(0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[7] = v11;

  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_19D518414;

  return NetworkingProcess.init(bundleIdentifier:onInterruption:)(v11, 0, 0, a4, a5);
}

uint64_t sub_19D518414()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_19D519680;
  }

  else
  {
    v3 = sub_19D51969C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19D5187E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - v17;
  v19 = sub_19D51E37C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = a6;

  sub_19D516AB4(0, 0, v18, a8, v20);
}

void sub_19D51892C()
{
  v1 = sub_19D51E10C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[4];
  os_unfair_lock_lock(v6 + 4);
  v7 = v0[2];
  if (v7)
  {
    v8 = v0[3];

    v7(v9);
    sub_19D51E0EC();
    sub_19D504D74(v7);
    (*(v2 + 8))(v5, v1);
    v10 = v0[2];
    v11 = v0[3];
    v0[2] = 0;
    v0[3] = 0;
    sub_19D504D74(v10);
  }

  os_unfair_lock_unlock(v6 + 4);
}

uint64_t sub_19D518A5C()
{
  v1 = v0[3];
  sub_19D504D74(v0[2]);
  v2 = v0[4];

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_19D518A9C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_19D518AD4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t objectdestroyTm()
{
  v1 = sub_19D51E10C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19D518BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19D51E10C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_19D518C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19D5041BC;

  return sub_19D517480(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19D518D1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19D5041BC;

  return sub_19D517968(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19D518DF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_19D5041BC;

  return sub_19D50729C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_19D518EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19D5041BC;

  return sub_19D518314(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19D51E10C();
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19D51E10C();
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

uint64_t sub_19D5193D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_19D5046C4;

  return sub_19D50729C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19D519504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D519574(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19D5046C4;

  return sub_19D5011CC(a1, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t static RestrictedSandboxRevision.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_19D51E4BC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t RestrictedSandboxRevision.hashValue.getter()
{
  v1 = *v0;
  sub_19D51E51C();
  MEMORY[0x19EAFD080](v1);
  return sub_19D51E53C();
}

uint64_t sub_19D519818()
{
  v1 = *v0;
  sub_19D51E51C();
  MEMORY[0x19EAFD080](v1);
  return sub_19D51E53C();
}

uint64_t sub_19D51988C()
{
  v1 = *v0;
  sub_19D51E51C();
  MEMORY[0x19EAFD080](v1);
  return sub_19D51E53C();
}

uint64_t sub_19D5198E0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_19D51E4BC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_19D519950(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2)
  {
    v4 = 3157554;
  }

  else
  {
    v4 = 3157553;
  }

  if (v3 == v4)
  {
    swift_bridgeObjectRelease_n();
    v5 = 1;
  }

  else
  {
    v6 = sub_19D51E4BC();
    swift_bridgeObjectRelease_n();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_19D5199D0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

  else
  {
    v5 = sub_19D51E4BC();
    swift_bridgeObjectRelease_n();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_19D519A50(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2)
  {
    v4 = 3157554;
  }

  else
  {
    v4 = 3157553;
  }

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_19D51E4BC();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_19D519B28()
{
  if (*v0)
  {
    v1 = 3157554;
  }

  else
  {
    v1 = 3157553;
  }

  if (byte_1F10D2028)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (v1 == v2)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = sub_19D51E4BC();
    swift_bridgeObjectRelease_n();
    if (v3)
    {
      goto LABEL_11;
    }
  }

  sub_19D51E46C();

  MEMORY[0x19EAFCE50](v2, 0xE300000000000000);

  sub_19D51E2DC();

  sandbox_enable_local_state_flag();

LABEL_11:
  if (byte_1F10D2029)
  {
    v4 = 3157554;
  }

  else
  {
    v4 = 3157553;
  }

  if (v1 == v4)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_19D51E4BC();
    result = swift_bridgeObjectRelease_n();
    if (v5)
    {
      return result;
    }
  }

  sub_19D51E46C();

  MEMORY[0x19EAFCE50](v4, 0xE300000000000000);

  sub_19D51E2DC();

  sandbox_enable_local_state_flag();
}

uint64_t RestrictedSandboxAppliable<>.applyRestrictedSandbox(revision:)(char *a1)
{
  v2 = *a1;
  sub_19D519B28();

  return sandbox_enable_local_state_flag();
}

uint64_t _LockdownVersion.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_19D51E49C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_19D519DDC()
{
  sub_19D51E51C();
  sub_19D51E2EC();
  return sub_19D51E53C();
}

uint64_t sub_19D519E38()
{
  sub_19D51E51C();
  sub_19D51E2EC();
  return sub_19D51E53C();
}

uint64_t sub_19D519E80@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19D51E49C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_19D519EF8()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

uint64_t _WebContentExtension._lockdown(version:)()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

unint64_t sub_19D519F68()
{
  result = qword_1EB015A98;
  if (!qword_1EB015A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A98);
  }

  return result;
}

unint64_t sub_19D519FEC()
{
  result = qword_1EB015AB0;
  if (!qword_1EB015AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015AB0);
  }

  return result;
}

uint64_t sub_19D51A070(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for RestrictedSandboxRevision(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RestrictedSandboxRevision(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Void __swiftcall ProcessCapability.Grant.invalidate()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {
    v3 = *v0;
    [v1 removeObserver_];
    [v3 invalidate];
    v4 = v2;
    sub_19D504F00(v3);
  }

  else
  {

    [v1 invalidate];
  }
}

uint64_t sub_19D51A34C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED6578E0 = result;
  return result;
}

uint64_t MediaEnvironment.init(webPage:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for MediaEnvironment(0) + 20);
  v5 = sub_19D51DF6C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2 + v4, a1, v5);
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = sub_19D51E28C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  getpid();
  if (qword_1ED6578D0 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED6578E0;

  os_unfair_lock_lock(v12 + 4);

  if (__OFADD__(qword_1ED6578E8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1ED6578E8;
    v17 = sub_19D51E4AC();
    v18 = v14;
    MEMORY[0x19EAFCE50](45, 0xE100000000000000);
    v15 = sub_19D51E4AC();
    MEMORY[0x19EAFCE50](v15);

    MEMORY[0x19EAFCE50](45, 0xE100000000000000);
    MEMORY[0x19EAFCE50](v9, v11);

    v16 = qword_1ED6578E0;

    os_unfair_lock_unlock(v16 + 4);
    (*(v6 + 8))(a1, v5);

    *a2 = v17;
    a2[1] = v18;
  }

  return result;
}

uint64_t MediaEnvironment.init(xpcRepresentation:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015AD0, &qword_19D520980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v18 - v6;
  v8 = sub_19D51DF6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x19EAFD9F0](a1);
  if (v13 != sub_19D51E1CC() || !xpc_dictionary_get_string(a1, "identifier"))
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  *a2 = sub_19D51E30C();
  a2[1] = v15;
  if (!xpc_dictionary_get_string(a1, "url"))
  {
LABEL_8:
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  sub_19D51E30C();
  sub_19D51DF5C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19D50116C(v7, &qword_1EB015AD0, &qword_19D520980);
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v16 = *(v9 + 32);
  v16(v12, v7, v8);
  v17 = type metadata accessor for MediaEnvironment(0);
  return (v16)(a2 + *(v17 + 20), v12, v8);
}

xpc_object_t MediaEnvironment.createXPCRepresentation()()
{
  empty = xpc_dictionary_create_empty();
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_19D51E2DC();
  xpc_dictionary_set_string(empty, "identifier", (v4 + 32));

  v5 = v0 + *(type metadata accessor for MediaEnvironment(0) + 20);
  sub_19D51DEEC();
  v6 = sub_19D51E2DC();

  xpc_dictionary_set_string(empty, "url", (v6 + 32));

  return empty;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaEnvironment.activate()()
{
  v1 = [objc_opt_self() sharedAVSystemController];
  if (v1)
  {
    v2 = v1;
    v3 = *v0;
    v4 = v0[1];
    v5 = sub_19D51E27C();
    v6 = [v2 grantMediaEndowmentWithEnvironmentID:v5 endowmentPayload:0];

    if (v6 != sub_19D51E1EC())
    {
      [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v6 userInfo:0];
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaEnvironment.suspend()()
{
  v1 = [objc_opt_self() sharedAVSystemController];
  if (v1)
  {
    v2 = v1;
    v3 = *v0;
    v4 = v0[1];
    v5 = sub_19D51E27C();
    v6 = [v2 revokeMediaEndowmentWithEnvironmentID_];

    if (v6 != sub_19D51E1EC())
    {
      [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v6 userInfo:0];
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

AVCaptureSession __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaEnvironment.makeCaptureSession()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = objc_allocWithZone(MEMORY[0x1E6987110]);
  v4 = sub_19D51E27C();
  v5 = [v3 initWithMediaEnvironment_];

  v7 = v5;
  result._internal = v6;
  result.super.isa = v7;
  return result;
}

void sub_19D51ACF8(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v27 = a5;
  v11 = v6;
  v14 = type metadata accessor for ProcessCapability(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = a2(0);
  v25[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_19D503500(v11, boxed_opaque_existential_1, a4);
  sub_19D503A64(v25, 0, 0, v26);
  __swift_destroy_boxed_opaque_existential_0(v25);
  if (!v7)
  {
    v19 = a6;
    v20 = v27;
    v21 = v26[0];
    v22 = v26[1];
    sub_19D503500(a1, v17, type metadata accessor for ProcessCapability);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v23 = *(v11 + *(v20(0) + 20));
      sub_19D51892C();
    }

    else
    {
      sub_19D5041C0(v17, type metadata accessor for ProcessCapability);
    }

    *v19 = v21;
    v19[1] = v22;
  }
}

void sub_19D51AED4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, void *a8@<X8>)
{
  v27 = a8;
  v28 = a7;
  v13 = v8;
  v31 = type metadata accessor for ProcessCapability(0);
  v17 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = a4(0);
  v29[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  sub_19D503500(v13, boxed_opaque_existential_1, a6);
  sub_19D503A64(v29, a2, a3, v30);
  __swift_destroy_boxed_opaque_existential_0(v29);
  if (!v9)
  {
    v21 = v27;
    v22 = v28;
    v24 = v30[0];
    v23 = v30[1];
    sub_19D503500(a1, v19, type metadata accessor for ProcessCapability);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = *(v13 + *(v22(0) + 20));
      sub_19D51892C();
    }

    else
    {
      sub_19D5041C0(v19, type metadata accessor for ProcessCapability);
    }

    *v21 = v24;
    v21[1] = v23;
  }
}

uint64_t sub_19D51B058@<X0>(void *a1@<X8>)
{
  v2[3] = &type metadata for Process;
  sub_19D503A64(v2, 0, 0, a1);
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_19D51B4C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

id BEMediaEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_19D51B974(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19D51BB1C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t (*a8)(void))
{
  v13 = a3;
  v14 = a1;
  v15 = sub_19D51BCA8(v13, a5, a6, a7, a8);

  return v15;
}

uint64_t sub_19D51BCA8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v9 = *a2;
  v14[3] = a3(0);
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_19D503500(v5 + v9, boxed_opaque_existential_1, a5);
  sub_19D503A64(v14, 0, 0, v15);
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  if (!v6)
  {
    v12 = v15[0];
    v13 = v15[1];
    type metadata accessor for _BEProcessCapabilityGrant();
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 24) = v13;
  }

  return result;
}

void sub_19D51BE00(void *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015B90, &unk_19D521560);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19D5213A0;
  *(v5 + 32) = [objc_opt_self() attributeWithCompletionPolicy_];
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19D5213A0;
  v7 = *v2;
  v8 = v2[1];
  v9 = sub_19D51E27C();
  v10 = sub_19D51E27C();
  sub_19D5024C0(0, &qword_1ED657C28, 0x1E69C7550);
  v11 = sub_19D51E32C();

  v12 = [objc_opt_self() grantWithNamespace:v9 sourceEnvironment:v10 attributes:v11];

  *(v6 + 32) = v12;
  v13 = sub_19D503EDC(a1, v7, v8);

  if (!v3)
  {
    v14 = type metadata accessor for ProcessCapability.AssertionObserver();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver_invalidationLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *&v15[v17] = v18;
    *v16 = nullsub_1;
    *(v16 + 1) = 0;
    v23.receiver = v15;
    v23.super_class = v14;
    v19 = v13;
    v20 = objc_msgSendSuper2(&v23, sel_init);
    v21 = v20;
    [v19 addObserver_];

    v22 = v24;
    *v24 = v19;
    v22[1] = v20;
  }
}

uint64_t __swift_get_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_49Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_19D51C3C8()
{
  v0 = sub_19D51E02C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D51E01C();
  v5 = sub_19D51DFFC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_19D51C494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEnvironment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19D51C4F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_19D51E51C();
  sub_19D51E2EC();
  v6 = sub_19D51E53C();

  return sub_19D51C570(a1, a2, v6);
}

unint64_t sub_19D51C570(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_19D51E4BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19D51C628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015BC0, &unk_19D521580);
    v3 = sub_19D51E48C();
    v4 = a1 + 32;

    while (1)
    {
      sub_19D51C8DC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_19D51C4F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19D51C94C(&v15, (v3[7] + 32 * result));
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

id sub_19D51C738(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015BA8, &qword_19D521570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19D5213B0;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_19D51E28C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000019D522590;
  v5 = *MEMORY[0x1E696AA08];
  *(inited + 80) = sub_19D51E28C();
  *(inited + 88) = v6;
  *(inited + 120) = sub_19D5024C0(0, &qword_1ED6578F0, 0x1E696ABC0);
  *(inited + 96) = a1;
  v7 = a1;
  sub_19D51C628(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BB8, &qword_19D521578);
  swift_arrayDestroy();
  v8 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v9 = sub_19D51E27C();
  v10 = sub_19D51E26C();

  v11 = [v8 initWithDomain:v9 code:2 userInfo:v10];

  return v11;
}

uint64_t sub_19D51C8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BB8, &qword_19D521578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_19D51C94C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Bool __swiftcall BrowserEngineEntitlement.check(auditToken:)(audit_token_t_optional *auditToken)
{
  v2 = *auditToken->value.val;
  v3 = *&auditToken->value.val[2];
  v4 = *&auditToken->value.val[4];
  v5 = *&auditToken->value.val[6];
  v6 = sub_19D51E02C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (auditToken->is_nil)
  {
    sub_19D51E01C();
    sub_19D51E00C();
    (*(v7 + 8))(v10, v6);
  }

  sub_19D51E03C();
  v11 = sub_19D51DFEC();
  (*(v7 + 8))(v10, v6);
  return v11 & 1;
}

uint64_t NetworkingExtensionConfiguration.handleConnection(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t _NetworkingExtension._request(capability:)@<X0>(void *a1@<X8>)
{
  v2[3] = &type metadata for Process;
  v2[4] = &off_1F10D2E00;
  sub_19D503A64(v2, 0, 0, a1);
  return __swift_destroy_boxed_opaque_existential_0(v2);
}