uint64_t sub_1DD926D3C()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  swift_endAccess();

  v8 = v0[1];
  v9 = v0[37];

  return v8();
}

uint64_t sub_1DD926E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 216) = a5;
  *(v8 + 224) = a8;
  *(v8 + 336) = a7;
  *(v8 + 200) = a3;
  *(v8 + 208) = a4;
  *(v8 + 192) = a1;
  v9 = sub_1DDA147A0();
  *(v8 + 232) = v9;
  v10 = *(v9 - 8);
  *(v8 + 240) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v12 = sub_1DDA14760();
  *(v8 + 256) = v12;
  v13 = *(v12 - 8);
  *(v8 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD926F94, 0, 0);
}

uint64_t sub_1DD926F94()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  if (v1 == 1)
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 208);
    sub_1DDA14750();
    v8 = sub_1DDA14780();
    v9 = sub_1DDA14F30();
    v10 = sub_1DDA14F40();
    if ((v10 & 1) == 0)
    {
LABEL_11:
      v36 = *(v0 + 312);
      v37 = v5;
      v17 = *(v0 + 288);
      v16 = *(v0 + 296);
      v18 = *(v0 + 280);
      v19 = v8;
      v20 = v4;
      v22 = *(v0 + 256);
      v21 = *(v0 + 264);
      v35 = *(v0 + 224);
      v23 = *(v0 + 200);

      (*(v21 + 16))(v18, v17, v22);
      v24 = sub_1DDA147D0();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1DDA147C0();
      v28 = v17;
      v5 = v37;
      (*(v21 + 8))(v28, v22);
      swift_beginAccess();
      v29 = *(v23 + 16);
      *(v23 + 16) = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
      sub_1DDA14E10();
      (*(v20 + 56))(v16, 0, 1, v3);
      swift_beginAccess();
      sub_1DD90AE1C(v16, v36, &qword_1ECD82FE8, &qword_1DDA189D0);
      goto LABEL_12;
    }

    v12 = *(v0 + 216);
    if ((*(v0 + 336) & 1) == 0)
    {
      if (v12)
      {
LABEL_10:
        v13 = *(v0 + 288);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v8, v9, v15, v12, "", v14, 2u);
        MEMORY[0x1E12B8CE0](v14, -1, -1);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v12 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v12 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v12 >> 16 <= 0x10)
      {
        v12 = (v0 + 184);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v30 = *(v0 + 312);
  swift_beginAccess();
  v10 = v5(v30, 1, v3);
  if (v10 == 1)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v10, v11);
  }

  v31 = *(MEMORY[0x1E69E87B0] + 4);
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_1DD927338;
  v33 = *(v0 + 312);
  v10 = v0 + 16;
  v11 = v3;

  return MEMORY[0x1EEE6DB98](v10, v11);
}

uint64_t sub_1DD927338()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1DD9276E0;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1DD927454;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD927454()
{
  if (!*(v0 + 40))
  {
    v1 = *(v0 + 200);
    sub_1DD90D378(v0 + 16, &qword_1ECD82FF8, &qword_1DDA18A18);
    result = swift_beginAccess();
    if (!*(v1 + 16))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v3 = *(v0 + 272);
    v4 = *(v0 + 208);

    v5 = sub_1DDA14780();
    sub_1DDA147B0();
    v6 = sub_1DDA14F20();
    result = sub_1DDA14F40();
    if ((result & 1) == 0)
    {
LABEL_16:
      v16 = *(v0 + 264);
      v15 = *(v0 + 272);
      v17 = *(v0 + 256);
      v18 = *(v0 + 192);

      (*(v16 + 8))(v15, v17);
      *(v18 + 32) = 0;
      *v18 = 0u;
      *(v18 + 16) = 0u;
      goto LABEL_17;
    }

    v7 = *(v0 + 216);
    if ((*(v0 + 336) & 1) == 0)
    {
      if (v7)
      {
LABEL_12:
        v9 = *(v0 + 240);
        v8 = *(v0 + 248);
        v10 = *(v0 + 232);

        sub_1DDA147E0();

        if ((*(v9 + 88))(v8, v10) == *MEMORY[0x1E69E93E8])
        {
          v11 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
          v11 = "";
        }

        v12 = *(v0 + 272);
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v5, v6, v14, v7, v11, v13, 2u);
        MEMORY[0x1E12B8CE0](v13, -1, -1);
        goto LABEL_16;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 176);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_1DD8FEEB0((v0 + 16), *(v0 + 192));
LABEL_17:
  v20 = *(v0 + 296);
  v19 = *(v0 + 304);
  v22 = *(v0 + 280);
  v21 = *(v0 + 288);
  v23 = *(v0 + 272);
  v24 = *(v0 + 248);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1DD9276E0()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];
  swift_endAccess();

  v7 = v0[1];
  v8 = v0[41];

  return v7();
}

uint64_t sub_1DD927794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DD90ADB4(a3, v24 - v10, &qword_1ECD82D30, &qword_1DDA188D0);
  v12 = sub_1DDA14D60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DDA14CD0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DDA14B80() + 32;

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

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DD927A40(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (a2 >> 62)
  {
    v11 = a1;
    v12 = a2;
    v13 = sub_1DDA15190();
    a2 = v12;
    v4 = v13;
    a1 = v11;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < v3)
  {
    v3 = v4;
  }

  if (v3)
  {
    v5 = a1;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F90, &qword_1DDA18930);
    v7 = sub_1DDA151C0();
    a2 = v6;
    v8 = v7;
    a1 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v14 = v8;
  sub_1DD927B3C(a1, a2, 1, &v14);
  v9 = v14;
  if (v2)
  {
  }

  return v9;
}

uint64_t sub_1DD927B3C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v59 = a4;
  v7 = sub_1DDA134E0();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F98, &unk_1DDA18938);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v44 - v15;
  v16 = *(a1 + 16);

  v54 = a2;

  v51 = v16;
  if (v16)
  {
    v17 = 0;
    v18 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v54 < 0)
    {
      v19 = v54;
    }

    else
    {
      v19 = v54 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = v19;
    v47 = a1;
    v48 = v54 & 0xC000000000000001;
    v56 = (v53 + 32);
    v45 = (v53 + 8);
    v46 = v54 & 0xFFFFFFFFFFFFFF8;
    v49 = v54 >> 62;
    v50 = v53 + 16;
    while (v17 < *(a1 + 16))
    {
      v22 = *(v53 + 72);
      (*(v53 + 16))(v12, a1 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v22 * v17, v7);
      if (v49)
      {
        if (v17 == sub_1DDA15190())
        {
LABEL_27:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          return (*v45)(v12, v7);
        }
      }

      else if (v17 == *(v18 + 16))
      {
        goto LABEL_27;
      }

      v55 = v22;
      if (v48)
      {
        v57 = MEMORY[0x1E12B7F50](v17, v54);
      }

      else
      {
        if (v17 >= *(v18 + 16))
        {
          goto LABEL_30;
        }

        v57 = *(v54 + 8 * v17 + 32);
      }

      v23 = *v56;
      v24 = v52;
      v25 = v12;
      (*v56)(v52, v12, v7);
      v26 = v58;
      v27 = v7;
      v23(v58, v24, v7);
      v28 = *v59;
      v30 = sub_1DD96AD50(v26);
      v31 = *(v28 + 16);
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_29;
      }

      v34 = v29;
      if (*(v28 + 24) >= v33)
      {
        if ((a3 & 1) == 0)
        {
          sub_1DD9CA010();
        }
      }

      else
      {
        v35 = v59;
        sub_1DD9C8930(v33, a3 & 1);
        v36 = *v35;
        v37 = sub_1DD96AD50(v58);
        if ((v34 & 1) != (v38 & 1))
        {
          goto LABEL_32;
        }

        v30 = v37;
      }

      v39 = *v59;
      if (v34)
      {
        v7 = v27;
        (*v45)(v58, v27);
        v20 = v39[7];
        v21 = *(v20 + 8 * v30);
        *(v20 + 8 * v30) = v57;
      }

      else
      {
        v39[(v30 >> 6) + 8] |= 1 << v30;
        v7 = v27;
        v23((v39[6] + v30 * v55), v58, v27);
        *(v39[7] + 8 * v30) = v57;
        v40 = v39[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_31;
        }

        v39[2] = v42;
      }

      ++v17;
      a3 = 1;
      v18 = v46;
      a1 = v47;
      v12 = v25;
      if (v51 == v17)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1DDA15500();
    __break(1u);
  }

  else
  {
LABEL_26:
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_1DD927F9C()
{
  v9 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DD93FA54(0x5F286E4964616F6CLL, 0xEA0000000000293ALL, &v8);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "%s: no-op", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DD928114()
{
  *(v1 + 40) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9281B0, 0, 0);
}

uint64_t sub_1DD9281B0()
{
  v9 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DD93FA54(0x2874754F64616F6CLL, 0xEB00000000293A5FLL, &v8);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "%s: clearing sessions", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v6 = *(*(v0 + 40) + 120);
  *(v0 + 56) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DD928338, v6, 0);
}

uint64_t sub_1DD928338()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x1E69E7CD0];

  return MEMORY[0x1EEE6DFA0](sub_1DD9283C4, 0, 0);
}

uint64_t sub_1DD9283C4()
{
  v1 = v0[6];
  v2 = *(v0[5] + 128);
  v3 = sub_1DDA14D60();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  v5 = sub_1DD982718(0, 0, v1, &unk_1DDA18A70, v4);
  v0[8] = v5;
  v6 = *(MEMORY[0x1E69E86C0] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1DD92850C;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v7, v5, v8);
}

uint64_t sub_1DD92850C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD928624, 0, 0);
}

uint64_t sub_1DD928624()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DD928688(uint64_t a1)
{
  v3 = sub_1DDA13EE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DDA14810();
  __swift_project_value_buffer(v8, qword_1ECDA20E0);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v1;
    v12 = v11;
    v26 = swift_slowAlloc();
    v27 = a1;
    v29 = v26;
    *v12 = 136315394;
    *(v12 + 4) = sub_1DD93FA54(0xD000000000000014, 0x80000001DDA275D0, &v29);
    *(v12 + 12) = 2080;
    sub_1DD92BC10(&qword_1ECD83028, MEMORY[0x1E69DA850]);
    v13 = sub_1DDA15400();
    v15 = v14;
    (*(v4 + 8))(v7, v3);
    v16 = sub_1DD93FA54(v13, v15, &v29);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "%s\n  prompt:%s", v12, 0x16u);
    v17 = v26;
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v17, -1, -1);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_1DDA13D50();
  v18 = sub_1DDA14BD0();

  v20 = v18 / 3.5;
  if (COERCE_INT(fabs(v20)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v20 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v20 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v21 = v20;
  v22 = sub_1DDA147F0();
  v23 = sub_1DDA14F00();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v21;
    _os_log_impl(&dword_1DD8F8000, v22, v23, "Estimated %ld tokens", v24, 0xCu);
    MEMORY[0x1E12B8CE0](v24, -1, -1);
  }

  return v21;
}

uint64_t sub_1DD928A40()
{
  v1 = sub_1DDA13840();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_1DDA13830();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD928B58, 0, 0);
}

uint64_t sub_1DD928B58()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14EE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Counting tokens for a prompt template is not supported.", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  sub_1DDA13800();
  (*(v6 + 16))(v7, v5, v8);
  (*(v10 + 104))(v7, *MEMORY[0x1E69DA4C0], v9);
  sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
  swift_allocError();
  (*(v10 + 16))(v11, v7, v9);
  swift_willThrow();
  (*(v10 + 8))(v7, v9);
  (*(v6 + 8))(v5, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD928DB4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1DD928DC0(a1, a2);
  }
}

uint64_t sub_1DD928DC0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1DD928DD4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1DD928DE0(a1, a2);
  }
}

uint64_t sub_1DD928DE0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1DD928E50(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1DDA136B0() - 8);
  v5 = ((*(v4 + 80) + 176) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v7 = (*(v6 + 64) + ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v1 + 16);
  v19 = *(v1 + 104);
  v18 = *(v1 + 112);
  v8 = *(v1 + 128);
  v17 = *(v1 + 120);
  v9 = *(v1 + 136);
  v16 = *(v1 + 144);
  v11 = *(v1 + 160);
  v10 = *(v1 + 168);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DD92BD10;

  return sub_1DD918E10(a1, v20, v1 + 24, v19, v18, v17, v8, v9);
}

uint64_t sub_1DD929044(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = (v1 + v7);
  v12 = *(v1 + v8);
  v13 = *v11;
  v14 = v11[1];
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1DD92BD10;

  return sub_1DD9210E0(a1, v10, v1 + v6, v13, v14, v12, v15, v16);
}

uint64_t sub_1DD929204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9BB3E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD9292CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14790() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600) - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DD92BD10;

  return sub_1DD926378(a1, v10, v11, v1 + v6, v13, v14, v15, v1 + v9);
}

uint64_t sub_1DD92945C(uint64_t a1)
{
  v3 = *(sub_1DDA136B0() - 8);
  v4 = ((*(v3 + 80) + 176) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  v6 = *(v1 + 40);
  v15 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 152);
  v10 = *(v1 + 168);
  v11 = *(v1 + ((*(v5 + 64) + ((v4 + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DD9165BC;

  return sub_1DD919EA8(a1, v17, v16, v15, v6, v7, v8, v9);
}

uint64_t sub_1DD92963C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9B8A6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD929704(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270) - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1DD92BD10;

  return sub_1DD990A28(a1, v7, v8, v9, v10, v11, v12, v1 + v4);
}

uint64_t sub_1DD9298A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1DD92BD10;

  return sub_1DD920D30(v2, v3, v4, v5, v6);
}

uint64_t sub_1DD929960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD9165BC;

  return sub_1DD9BB8B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD929A28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1DD929B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionRegistry.SessionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD929B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD929BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionRegistry.SessionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1DD929C60(uint64_t a1)
{
  v79 = a1;
  v2 = sub_1DDA13840();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1DDA13830();
  v72 = *(v74 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DDA144A0();
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1DDA144B0();
  v75 = *(v81 - 1);
  v11 = *(v75 + 64);
  v12 = MEMORY[0x1EEE9AC00](v81);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v69 - v20;
  v22 = sub_1DDA13850();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  v30 = v29;
  v32 = v31;
  sub_1DD90ADB4(v79, v21, &qword_1ECD83008, &qword_1DDA1A280);
  if ((*(v32 + 48))(v21, 1, v30) == 1)
  {
    sub_1DD90D378(v21, &qword_1ECD83008, &qword_1DDA1A280);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v32 + 32))(v28, v21, v30);
  (*(v32 + 16))(v26, v28, v30);
  v34 = (*(v32 + 88))(v26, v30);
  v35 = *MEMORY[0x1E69DA4F8];
  v69 = v28;
  if (v34 != v35)
  {
    v81 = *(v32 + 8);
    v81(v26, v30);
    if (qword_1ECD827A8 == -1)
    {
LABEL_12:
      v43 = sub_1DDA14810();
      __swift_project_value_buffer(v43, qword_1ECDA20E0);
      v44 = sub_1DDA147F0();
      v45 = sub_1DDA14EE0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1DD8F8000, v44, v45, "Grammars are not supported", v46, 2u);
        MEMORY[0x1E12B8CE0](v46, -1, -1);
      }

      v33 = v71;
      sub_1DDA13800();
      v48 = v72;
      v47 = v73;
      v49 = v74;
      (*(v72 + 16))(v73, v33, v74);
      v51 = v76;
      v50 = v77;
      (*(v76 + 104))(v47, *MEMORY[0x1E69DA4B0], v77);
      sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      swift_allocError();
      (*(v51 + 16))(v52, v47, v50);
      swift_willThrow();
      (*(v51 + 8))(v47, v50);
      (*(v48 + 8))(v33, v49);
      v81(v69, v30);
      return v33;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  (*(v32 + 96))(v26, v30);
  v36 = v26;
  v37 = v75;
  v33 = v81;
  (*(v75 + 32))(v78, v36, v81);
  v38 = v70;
  (*(v37 + 16))();
  if ((*(v37 + 88))(v38, v33) == *MEMORY[0x1E69A0B70])
  {
    v76 = v32;
    (*(v37 + 96))(v38, v33);
    v33 = *(*v38 + 16);

    v79 = *(v33 + 2);
    if (v79)
    {
      v74 = v30;
      v39 = 0;
      v77 = v7 + 16;
      v30 = v7 + 8;
      v40 = v37 + 8;
      v75 = v40 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (v39 < *(v33 + 2))
      {
        v41 = v80;
        (*(v7 + 16))(v10, &v33[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v39], v80);
        sub_1DDA14480();
        (*(v7 + 8))(v10, v41);
        sub_1DD924F88(v14);
        if (v1)
        {

          v67 = *v40;
          v68 = v81;
          (*v40)(v14, v81);
          v67(v78, v68);
          (*(v76 + 8))(v69, v74);
          return v33;
        }

        ++v39;
        v42 = *v40;
        (*v40)(v14, v81);
        if (v79 == v39)
        {
          v30 = v74;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v42 = *(v37 + 8);
LABEL_22:
    v66 = v69;
    v42(v78, v81);
    (*(v76 + 8))(v66, v30);
  }

  else
  {
    v53 = v69;
    v54 = v38;
    v55 = *(v37 + 8);
    v55(v54, v33);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v56 = sub_1DDA14810();
    __swift_project_value_buffer(v56, qword_1ECDA20E0);
    v57 = sub_1DDA147F0();
    v58 = sub_1DDA14EE0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v32;
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DD8F8000, v57, v58, "Only top level object schemas are supported", v60, 2u);
      v61 = v60;
      v32 = v59;
      v33 = v81;
      MEMORY[0x1E12B8CE0](v61, -1, -1);
    }

    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    v62 = v77;
    swift_allocError();
    v64 = v63;
    sub_1DDA13800();
    (*(v76 + 104))(v64, *MEMORY[0x1E69DA4B0], v62);
    swift_willThrow();
    v55(v78, v33);
    (*(v32 + 8))(v53, v30);
  }

  return v33;
}

uint64_t sub_1DD92A6AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD923700(a1, v4);
}

uint64_t sub_1DD92A74C(uint64_t a1)
{
  v2 = *(sub_1DDA136B0() - 8);
  v3 = ((*(v2 + 80) + 176) & ~*(v2 + 80)) + *(v2 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1DDA13A80() - 8);
  v14 = (*(v13 + 64) + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  v16 = (*(v15 + 64) + ((v14 + *(v15 + 80) + 8) & ~*(v15 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(sub_1DDA13680() - 8);
  v20 = (*(v19 + 80) + v18 + 8) & ~*(v19 + 80);
  v35 = *(v1 + 104);
  v36 = *(v1 + 16);
  v33 = *(v1 + 120);
  v34 = *(v1 + 112);
  v31 = *(v1 + 136);
  v32 = *(v1 + 128);
  v30 = *(v1 + 144);
  v28 = *(v1 + 168);
  v29 = *(v1 + 160);
  v21 = *(v1 + v14);
  v22 = *(v1 + v16);
  v23 = *(v1 + v17);
  v24 = *(v1 + v18);
  v25 = *(v1 + ((*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = swift_task_alloc();
  *(v37 + 16) = v26;
  *v26 = v37;
  v26[1] = sub_1DD92BD10;

  return sub_1DD91E628(a1, v36, v1 + 24, v35, v34, v33, v32, v31);
}

uint64_t sub_1DD92AB90(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = (v1 + v7);
  v12 = *(v1 + v8);
  v13 = *v11;
  v14 = v11[1];
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1DD92BD10;

  return sub_1DD921B04(a1, v10, v1 + v6, v13, v14, v12, v15, v16);
}

uint64_t objectdestroy_29Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DDA14790();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v12 + 17) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  v16 = *(v2 + 16);

  v17 = *(v2 + 24);

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x1EEE6BDD0](v2, v13 + v14, v15 | 7);
}

uint64_t sub_1DD92AE6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14790() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0) - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DD92BD10;

  return sub_1DD926E00(a1, v10, v11, v1 + v6, v13, v14, v15, v1 + v9);
}

uint64_t sub_1DD92AFFC(uint64_t a1)
{
  v2 = *(sub_1DDA136B0() - 8);
  v3 = ((*(v2 + 80) + 168) & ~*(v2 + 80)) + *(v2 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1DDA13A80() - 8);
  v14 = (*(v13 + 64) + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  v16 = (*(v15 + 64) + ((v14 + *(v15 + 80) + 8) & ~*(v15 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = v1[2];
  v30 = v1[4];
  v31 = v1[3];
  v28 = v1[6];
  v29 = v1[5];
  v26 = v1[8];
  v27 = v1[7];
  v25 = v1[19];
  v24 = v1[20];
  v18 = *(v1 + v14);
  v19 = *(v1 + v16);
  v20 = *(v1 + v17);
  v21 = *(v1 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = swift_task_alloc();
  *(v33 + 16) = v22;
  *v22 = v33;
  v22[1] = sub_1DD92BD10;

  return sub_1DD920538(a1, v32, v31, v30, v29, v28, v27, v26);
}

unint64_t sub_1DD92B3B4()
{
  result = qword_1ECD83000;
  if (!qword_1ECD83000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83000);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_103Tm()
{
  v1 = sub_1DDA136B0();
  v2 = *(v1 - 8);
  v61 = *(v2 + 80);
  v3 = (v61 + 176) & ~v61;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v60 = *(v5 + 80);
  v6 = (v4 + v60) & ~v60;
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  v59 = *(v8 + 80);
  v9 = (v6 + v7 + v59) & ~v59;
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  v58 = *(v11 + 80);
  v12 = (v9 + v10 + v58) & ~v58;
  v13 = *(v11 + 64);
  v53 = sub_1DDA13A80();
  v14 = *(v53 - 8);
  v57 = *(v14 + 80);
  v50 = (v12 + v13 + v57) & ~v57;
  v51 = v12;
  v15 = (*(v14 + 64) + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  v55 = *(v16 + 80);
  v49 = v15;
  v17 = v15 + v55;
  v54 = *(v16 + 64);
  v56 = sub_1DDA13680();
  v18 = *(v56 - 8);
  v19 = *(v18 + 80);
  v52 = *(v18 + 64);
  v20 = v0[2];

  v21 = v0[3];

  v22 = v0[4];

  v23 = v0[5];

  v24 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v25 = v0[13];

  v26 = v0[15];

  v27 = v0[17];

  v28 = v0[19];

  v29 = v0[21];

  (*(v2 + 8))(v0 + v3, v1);
  v30 = sub_1DDA13F50();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(v0 + v6, 1, v30))
  {
    (*(v31 + 8))(v0 + v6, v30);
  }

  v32 = v17 + 8;
  v33 = sub_1DDA13F30();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v0 + v9, 1, v33))
  {
    (*(v34 + 8))(v0 + v9, v33);
  }

  v35 = v32 & ~v55;
  v36 = sub_1DDA13EE0();
  v37 = *(v36 - 8);
  if (!(*(v37 + 48))(v0 + v51, 1, v36))
  {
    (*(v37 + 8))(v0 + v51, v36);
  }

  (*(v14 + 8))(v0 + v50, v53);
  v38 = *(v0 + v49);

  v39 = sub_1DDA14420();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v0 + v35, 1, v39))
  {
    (*(v40 + 8))(v0 + v35, v39);
  }

  v41 = (v54 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v19 + v43 + 8) & ~v19;
  v45 = *(v0 + v41);

  v46 = *(v0 + v42);

  v47 = *(v0 + v43);

  (*(v18 + 8))(v0 + v44, v56);

  return MEMORY[0x1EEE6BDD0](v0, ((v52 + v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v61 | v60 | v59 | v58 | v57 | v55 | v19 | 7);
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);
  v11 = *(v2 + v7 + 8);

  v12 = *(v2 + v8);

  v13 = *(v2 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v2, v9 + 16, v5 | 7);
}

unint64_t sub_1DD92BBAC()
{
  result = qword_1ECD83020;
  if (!qword_1ECD83020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82FD8, &qword_1DDA189B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83020);
  }

  return result;
}

uint64_t sub_1DD92BC10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD92BC58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9BC948(a1, v4, v5, v6);
}

uint64_t sub_1DD92BD18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v5 = sub_1DDA13840();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1DDA13830();
  v58 = *(v66 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DDA14420();
  v56 = *(v64 - 8);
  v10 = *(v56 + 64);
  v11 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = sub_1DDA143F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DDA14400();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_1DDA14410();
  result = (*(v21 + 88))(v24, v20);
  if (result == *MEMORY[0x1E69A0B20])
  {
    (*(v21 + 96))(v24, v20);
    (*(v16 + 32))(v19, v24, v15);
    v26 = sub_1DDA143E0();
    v28 = v27;
    result = (*(v16 + 8))(v19, v15);
    *a3 = v26;
    a3[1] = v28;
    return result;
  }

  if (result == *MEMORY[0x1E69A0B18])
  {
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69A0B30])
  {
    v29 = xmmword_1DDA18A90;
LABEL_9:
    *a3 = v29;
    return result;
  }

  if (result == *MEMORY[0x1E69A0B28])
  {
    v29 = xmmword_1DDA18A80;
    goto LABEL_9;
  }

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v30 = sub_1DDA14810();
  __swift_project_value_buffer(v30, qword_1ECDA20E0);
  v31 = v56;
  v32 = v64;
  v69 = *(v56 + 16);
  v69(v14, v65, v64);
  v33 = sub_1DDA147F0();
  v54 = sub_1DDA14EE0();
  v55 = v33;
  v34 = os_log_type_enabled(v33, v54);
  v35 = v63;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v67 = v53;
    *v36 = 136315138;
    v69(v35, v14, v32);
    v37 = sub_1DDA14B70();
    v39 = v38;
    (*(v31 + 8))(v14, v64);
    v40 = v37;
    v35 = v63;
    v41 = sub_1DD93FA54(v40, v39, &v67);
    v32 = v64;

    v42 = v36;
    *(v36 + 4) = v41;
    v43 = v55;
    _os_log_impl(&dword_1DD8F8000, v55, v54, "Unknown tool choice: %s", v42, 0xCu);
    v44 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1E12B8CE0](v44, -1, -1);
    MEMORY[0x1E12B8CE0](v42, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v14, v32);
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1DDA15070();

  v67 = 0xD000000000000015;
  v68 = 0x80000001DDA275F0;
  v69(v35, v65, v32);
  v45 = sub_1DDA14B70();
  MEMORY[0x1E12B7AB0](v45);

  v46 = v57;
  sub_1DDA13800();
  v48 = v58;
  v47 = v59;
  (*(v58 + 16))(v59, v46, v66);
  v50 = v60;
  v49 = v61;
  (*(v60 + 104))(v47, *MEMORY[0x1E69DA4C0], v61);
  sub_1DD92C41C();
  v51 = swift_allocError();
  (*(v50 + 16))(v52, v47, v49);
  swift_willThrow();
  (*(v50 + 8))(v47, v49);
  (*(v48 + 8))(v46, v66);
  result = (*(v21 + 8))(v24, v20);
  *v62 = v51;
  return result;
}

unint64_t sub_1DD92C41C()
{
  result = qword_1ECD82F58;
  if (!qword_1ECD82F58)
  {
    sub_1DDA13840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82F58);
  }

  return result;
}

void sub_1DD92C474(uint64_t *a1@<X8>)
{
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[3];
  v36 = v1[2];
  v8 = (*(v4 + 8))(v5, v6);
  if (v2)
  {

    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1DD93FA54(v5, v6, &v37);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1DD93FA54(v36, v7, &v37);
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Failed to get %s.%s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v13, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v32 = a1;
    if (v9 >> 60 == 15)
    {
      v29 = v5;
      v28 = v6;
      v30 = v9;
      v31 = v8;
      v34 = 0;
      v35 = 0;
      v33 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v17 = v1[13];
      v16 = v1[14];
      v18 = v8;
      v19 = v9;
      sub_1DD909CD4(v8, v9);
      v17(&v37, v18, v19);
      v29 = v5;
      v28 = v6;
      v30 = v19;
      sub_1DD90D440(v18, v19);
      v34 = v38;
      v35 = v37;
      v14 = v40;
      v33 = v39;
      v15 = v41;
      v31 = v18;
    }

    sub_1DD931428(v35, v34, v33);
    sub_1DD931428(v35, v34, v33);

    v20 = sub_1DDA147F0();
    v21 = sub_1DDA14ED0();

    v22 = v20;
    sub_1DD93146C(v35, v34, v33);
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315651;
      *(v23 + 4) = sub_1DD93FA54(v29, v28, &v42);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1DD93FA54(v36, v7, &v42);
      *(v23 + 22) = 2081;
      v37 = v35;
      v38 = v34;
      v39 = v33;
      v40 = v14;
      v41 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83058, &qword_1DDA18B90);
      v25 = sub_1DDA14B70();
      v27 = sub_1DD93FA54(v25, v26, &v42);

      *(v23 + 24) = v27;
      _os_log_impl(&dword_1DD8F8000, v22, v21, "Getting %s.%s as: %{private}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v24, -1, -1);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
    }

    else
    {
      sub_1DD93146C(v35, v34, v33);
    }

    sub_1DD90D440(v31, v30);

    *v32 = v35;
    v32[1] = v34;
    v32[2] = v33;
    v32[3] = v14;
    v32[4] = v15;
  }
}

uint64_t sub_1DD92C900()
{
  v2 = v0;
  v3 = v0[9];
  v4 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v3);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  v9 = (*(v4 + 8))(v2[4], v2[5], v2[2], v2[3], v3, v4);
  if (v1)
  {

    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14EE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1DD93FA54(v5, v6, &v30);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1DD93FA54(v7, v8, &v30);
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Failed to get %s.%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v14, -1, -1);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v16 = v10;
    if (v10 >> 60 == 15)
    {
      v27 = v9;
      v28 = 2;
    }

    else
    {
      v17 = v0[14];
      v18 = v9;
      v29 = v2[13];
      sub_1DD909CD4(v9, v10);
      v29(&v30, v18, v16);
      sub_1DD90D440(v18, v16);
      v28 = v30;
      v27 = v18;
    }

    v19 = sub_1DDA147F0();
    v20 = sub_1DDA14ED0();

    log = v19;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315651;
      *(v21 + 4) = sub_1DD93FA54(v5, v6, &v30);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1DD93FA54(v7, v8, &v30);
      *(v21 + 22) = 2081;
      v5 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83048, &unk_1DDA18B80);
      v23 = sub_1DDA14B70();
      v25 = sub_1DD93FA54(v23, v24, &v30);

      *(v21 + 24) = v25;
      _os_log_impl(&dword_1DD8F8000, log, v20, "Getting %s.%s as: %{private}s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v22, -1, -1);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
      sub_1DD90D440(v27, v16);
    }

    else
    {
      sub_1DD90D440(v27, v16);

      return v28;
    }
  }

  return v5;
}

void sub_1DD92CCE8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - v12;
  v14 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
  v15 = v4[4];
  v16 = v4[2];
  v17 = v4[3];
  v18 = *(v14 + 8);
  v53 = v4[5];
  v54 = v15;
  v55 = v17;
  v56 = v16;
  v19 = v57;
  v20 = v18();
  if (!v19)
  {
    v57 = 0;
    v49 = v11;
    v26 = a2;
    if (v21 >> 60 == 15)
    {
      v50 = v20;
      v27 = v21;
      v28 = 1;
      v29 = v13;
    }

    else
    {
      v31 = v4[13];
      v30 = v4[14];
      v32 = v21;
      v33 = v20;
      sub_1DD909CD4(v20, v21);
      v34 = v57;
      v31(v33, v32);
      v57 = v34;
      if (v34)
      {
        sub_1DD90D440(v33, v32);
        sub_1DD90D440(v33, v32);
        goto LABEL_2;
      }

      v29 = v13;
      v50 = v33;
      sub_1DD90D440(v33, v32);
      v28 = 0;
      v27 = v32;
    }

    v35 = v51(0);
    v36 = v52;
    (*(*(v35 - 8) + 56))(v52, v28, 1, v35);
    sub_1DD90ADB4(v36, v29, a1, v26);

    v37 = sub_1DDA147F0();
    LODWORD(v36) = sub_1DDA14ED0();

    LODWORD(v52) = v36;
    v38 = os_log_type_enabled(v37, v36);
    v39 = a1;
    v40 = v26;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315651;
      *(v41 + 4) = sub_1DD93FA54(v54, v53, &v58);
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_1DD93FA54(v56, v55, &v58);
      *(v41 + 22) = 2081;
      sub_1DD90ADB4(v29, v49, a1, v40);
      v43 = sub_1DDA14B70();
      v44 = v27;
      v46 = v45;
      sub_1DD90D378(v29, v39, v40);
      v47 = sub_1DD93FA54(v43, v46, &v58);

      *(v41 + 24) = v47;
      _os_log_impl(&dword_1DD8F8000, v37, v52, "Getting %s.%s as: %{private}s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v42, -1, -1);
      MEMORY[0x1E12B8CE0](v41, -1, -1);
      sub_1DD90D440(v50, v44);
    }

    else
    {
      sub_1DD90D440(v50, v27);

      sub_1DD90D378(v29, a1, v26);
    }

    return;
  }

LABEL_2:

  v22 = sub_1DDA147F0();
  v23 = sub_1DDA14EE0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v58 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1DD93FA54(v54, v53, &v58);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1DD93FA54(v56, v55, &v58);
    _os_log_impl(&dword_1DD8F8000, v22, v23, "Failed to get %s.%s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v25, -1, -1);
    MEMORY[0x1E12B8CE0](v24, -1, -1);
  }

  swift_willThrow();
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.authorizationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DDA134E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  v8 = __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  v9 = type metadata accessor for OpenAIAuthenticationService();
  (*(v4 + 16))(v7, &v8[*(v9 + 40)], v3);
  v10 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v10;
  v12[2] = *(v1 + 32);
  sub_1DD97A2B8(v7, v12, a1);
  return (*(v4 + 8))(v7, v3);
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.partnerBundleID.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v2 = v1[18];
  v3 = v1[19];

  return v2;
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.partnerTeamID.getter()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v2 = v1[20];
  v3 = v1[21];

  return v2;
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.redirectURLScheme.getter()
{
  v1 = sub_1DDA134E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v7 = type metadata accessor for OpenAIAuthenticationService();
  (*(v2 + 16))(v5, &v6[*(v7 + 40)], v1);
  v8 = sub_1DDA134B0();
  v10 = v9;
  result = (*(v2 + 8))(v5, v1);
  if (v10)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.exchangeCredentialedURLForCredentials(url:)(uint64_t a1, uint64_t a2)
{
  v3[253] = v2;
  v3[247] = a2;
  v3[241] = a1;
  v4 = type metadata accessor for UserCredentials(0);
  v3[259] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[265] = swift_task_alloc();
  v6 = sub_1DDA134E0();
  v3[271] = v6;
  v7 = *(v6 - 8);
  v3[277] = v7;
  v8 = *(v7 + 64) + 15;
  v3[283] = swift_task_alloc();
  v9 = type metadata accessor for UserTokens(0);
  v3[289] = v9;
  v10 = *(v9 - 8);
  v3[295] = v10;
  v3[301] = *(v10 + 64);
  v3[307] = swift_task_alloc();
  v3[313] = swift_task_alloc();
  v3[319] = swift_task_alloc();
  v3[320] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD92D5E8, 0, 0);
}

uint64_t sub_1DD92D5E8()
{
  v1 = sub_1DD92EE40(v0[247]);
  v0[321] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[283];
  v6 = v0[277];
  v7 = v0[271];
  v8 = v0[253];

  __swift_project_boxed_opaque_existential_1(v8 + 6, v8[9]);
  v9 = __swift_project_boxed_opaque_existential_1(v8 + 6, v8[9]);
  v10 = type metadata accessor for OpenAIAuthenticationService();
  (*(v6 + 16))(v5, &v9[*(v10 + 40)], v7);
  v11 = sub_1DDA13440();
  v13 = v12;
  v0[322] = v12;
  (*(v6 + 8))(v5, v7);
  v14 = v8[4];
  v15 = v8[5];
  v16 = swift_task_alloc();
  v0[323] = v16;
  *v16 = v0;
  v16[1] = sub_1DD92D7F0;
  v17 = v0[320];

  return sub_1DD97A780(v17, v3, v4, v11, v13, v14, v15, v0 + 1817);
}

uint64_t sub_1DD92D7F0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 2584);
  v5 = *v1;

  v6 = *(v2 + 2576);
  v7 = *(v2 + 2568);

  if (v0)
  {
    *(v3 + 1818) = *(v3 + 1817);
    v8 = sub_1DD92DB94;
  }

  else
  {
    v8 = sub_1DD92D944;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD92D944()
{
  v1 = *(v0 + 2560);
  v2 = *(v0 + 2552);
  v17 = *(v0 + 2504);
  v3 = *(v0 + 2408);
  v4 = *(v0 + 2360);
  v5 = *(v0 + 2024);
  sub_1DD930D90(v5, v0 + 1336);
  sub_1DD930DC8(v1, v2);
  v6 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 2592) = v7;
  v8 = *(v0 + 1416);
  *(v7 + 80) = *(v0 + 1400);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v0 + 1432);
  v9 = *(v0 + 1352);
  *(v7 + 16) = *(v0 + 1336);
  *(v7 + 32) = v9;
  v10 = *(v0 + 1384);
  *(v7 + 48) = *(v0 + 1368);
  *(v7 + 64) = v10;
  sub_1DD93135C(v2, v7 + v6, type metadata accessor for UserTokens);
  swift_asyncLet_begin();
  sub_1DD930D90(v5, v0 + 1480);
  sub_1DD930DC8(v1, v17);
  v11 = swift_allocObject();
  v12 = *(v0 + 1560);
  *(v11 + 80) = *(v0 + 1544);
  *(v11 + 96) = v12;
  *(v11 + 112) = *(v0 + 1576);
  v13 = *(v0 + 1496);
  *(v11 + 16) = *(v0 + 1480);
  *(v11 + 32) = v13;
  v14 = *(v0 + 1528);
  *(v11 + 48) = *(v0 + 1512);
  *(v11 + 64) = v14;
  sub_1DD93135C(v17, v11 + v6, type metadata accessor for UserTokens);
  v15 = swift_allocObject();
  *(v0 + 2600) = v15;
  *(v15 + 16) = &unk_1DDA18AF0;
  *(v15 + 24) = v11;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1784, sub_1DD92DB60, v0 + 1744);
}

uint64_t sub_1DD92DB60()
{
  *(v1 + 2608) = v0;
  if (v0)
  {
    v2 = sub_1DD92E4B8;
  }

  else
  {
    v2 = sub_1DD92DC68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92DB94()
{
  v1 = *(v0 + 1818);
  sub_1DD930D3C();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2552);
  v5 = *(v0 + 2504);
  v6 = *(v0 + 2456);
  v7 = *(v0 + 2264);
  v8 = *(v0 + 2120);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD92DC68()
{
  v1 = v0[307];
  v2 = v0[289];
  v3 = v0[265];
  v4 = v0[259];
  v27 = v0[253];
  v5 = v0[223];
  v6 = v0[224];
  v7 = v0[225];
  v8 = v0[226];
  sub_1DD930DC8(v0[320], v1);
  v9 = &v3[v4[9]];
  v25 = &v3[v4[10]];
  v26 = &v3[v4[11]];
  *v3 = v5;
  *(v3 + 1) = v6;
  *(v3 + 2) = v7;
  *(v3 + 3) = v8;
  v10 = *(v1 + 1);
  *(v3 + 4) = *v1;
  *(v3 + 5) = v10;
  v11 = *(v1 + 3);
  *(v3 + 6) = *(v1 + 2);
  *(v3 + 7) = v11;
  v12 = v2[6];
  v13 = v4[8];
  v14 = sub_1DDA13680();
  v0[327] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v0[328] = v16;
  v0[329] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(&v3[v13], &v1[v12], v14);
  v17 = &v1[v2[7]];
  v18 = *v17;
  LOBYTE(v17) = v17[8];
  *v9 = v18;
  v9[8] = v17;
  v19 = &v1[v2[8]];
  v20 = *(v19 + 1);
  *v25 = *v19;
  *(v25 + 1) = v20;
  v21 = &v1[v2[9]];
  v22 = *v21;
  v23 = v21[1];

  sub_1DD93128C(v1, type metadata accessor for UserTokens);
  *v26 = v22;
  *(v26 + 1) = v23;
  v0[330] = *(v27 + 88);
  v0[331] = *(v27 + 96);

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 203, sub_1DD92DE4C, v0 + 248);
}

uint64_t sub_1DD92DE4C()
{
  *(v1 + 2656) = v0;
  if (v0)
  {
    v2 = sub_1DD92E614;
  }

  else
  {
    v2 = sub_1DD92DE80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92DE80()
{
  v1 = *(v0 + 2656);
  v2 = *(v0 + 2648);
  v3 = *(v0 + 2640);
  v4 = *(v0 + 2120);
  *(v0 + 1736) = *(v0 + 1656);
  v5 = *(v0 + 1640);
  *(v0 + 1704) = *(v0 + 1624);
  *(v0 + 1720) = v5;
  *(v0 + 1896) = *(v0 + 1632);
  *(v0 + 1912) = *(v0 + 1648);
  sub_1DD90D2EC(v0 + 1896, v0 + 1880);
  sub_1DD90D2EC(v0 + 1912, v0 + 1864);
  v3(v4, v0 + 1704);
  *(v0 + 2664) = v1;
  if (v1)
  {
    sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);
    sub_1DD9311E4(v0 + 1896);
    sub_1DD9311E4(v0 + 1912);

    return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E7D0, v0 + 2224);
  }

  else
  {
    sub_1DD9311E4(v0 + 1896);
    sub_1DD9311E4(v0 + 1912);

    return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1784, sub_1DD92DFFC, v0 + 2320);
  }
}

uint64_t sub_1DD92DFFC()
{
  *(v1 + 2672) = v0;
  if (v0)
  {
    v2 = sub_1DD92E90C;
  }

  else
  {
    v2 = sub_1DD92E030;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD92E030()
{
  v0[335] = v0[223];
  v0[336] = v0[224];

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 223, sub_1DD92E0A8, v0 + 308);
}

uint64_t sub_1DD92E0A8()
{
  *(v1 + 2696) = v0;
  if (v0)
  {
    v2 = *(v1 + 2688);

    v3 = sub_1DD92EAC8;
  }

  else
  {
    v3 = sub_1DD92E128;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD92E128()
{
  v0[338] = v0[225];
  v0[339] = v0[226];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 203, sub_1DD92E1A0, v0 + 272);
}

uint64_t sub_1DD92E1A0()
{
  v1[340] = v0;
  if (v0)
  {
    v2 = v1[339];
    v3 = v1[336];

    v4 = sub_1DD92EC84;
  }

  else
  {
    v4 = sub_1DD92E22C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD92E22C()
{
  v17 = *(v0 + 2704);
  v18 = *(v0 + 2712);
  v16 = *(v0 + 2680);
  v14 = *(v0 + 2624);
  v15 = *(v0 + 2632);
  v1 = *(v0 + 2616);
  v2 = *(v0 + 2560);
  v3 = *(v0 + 2312);
  v4 = *(v0 + 2120);
  v5 = *(v0 + 1928);
  v6 = *(v0 + 1624);
  v7 = *(v0 + 1632);
  v8 = *(v0 + 1640);
  v13 = *(v0 + 1648);
  v9 = *(v0 + 1656);

  sub_1DD93128C(v4, type metadata accessor for UserCredentials);
  v10 = *(v3 + 24);
  v11 = type metadata accessor for Credentials(0);
  v14(v5 + *(v11 + 28), v2 + v10, v1);
  *v5 = v16;
  *(v5 + 16) = v17;
  *(v5 + 24) = v18;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  *(v5 + 48) = v8;
  *(v5 + 56) = v13;
  *(v5 + 64) = v9;

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E370, v0 + 1584);
}

uint64_t sub_1DD92E3C8()
{
  v1 = v0[325];
  v2 = v0[324];
  v3 = v0[319];
  v4 = v0[313];
  v5 = v0[307];
  v6 = v0[283];
  v7 = v0[265];
  sub_1DD93128C(v0[320], type metadata accessor for UserTokens);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DD92E530()
{
  v1 = v0[325];
  v2 = v0[324];
  sub_1DD93128C(v0[320], type metadata accessor for UserTokens);

  v3 = v0[326];
  v4 = v0[320];
  v5 = v0[319];
  v6 = v0[313];
  v7 = v0[307];
  v8 = v0[283];
  v9 = v0[265];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD92E614()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E694, v0 + 2032);
}

uint64_t sub_1DD92E6EC()
{
  v1 = v0[325];
  v2 = v0[324];
  sub_1DD93128C(v0[320], type metadata accessor for UserTokens);

  v3 = v0[332];
  v4 = v0[320];
  v5 = v0[319];
  v6 = v0[313];
  v7 = v0[307];
  v8 = v0[283];
  v9 = v0[265];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD92E828()
{
  v1 = v0[325];
  v2 = v0[324];
  sub_1DD93128C(v0[320], type metadata accessor for UserTokens);

  v3 = v0[333];
  v4 = v0[320];
  v5 = v0[319];
  v6 = v0[313];
  v7 = v0[307];
  v8 = v0[283];
  v9 = v0[265];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD92E90C()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92E98C, v0 + 2368);
}

uint64_t sub_1DD92E9E4()
{
  v1 = v0[325];
  v2 = v0[324];
  sub_1DD93128C(v0[320], type metadata accessor for UserTokens);

  v3 = v0[334];
  v4 = v0[320];
  v5 = v0[319];
  v6 = v0[313];
  v7 = v0[307];
  v8 = v0[283];
  v9 = v0[265];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD92EAC8()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92EB48, v0 + 2512);
}

uint64_t sub_1DD92EBA0()
{
  v1 = v0[325];
  v2 = v0[324];
  sub_1DD93128C(v0[320], type metadata accessor for UserTokens);

  v3 = v0[337];
  v4 = v0[320];
  v5 = v0[319];
  v6 = v0[313];
  v7 = v0[307];
  v8 = v0[283];
  v9 = v0[265];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD92EC84()
{
  sub_1DD93128C(*(v0 + 2120), type metadata accessor for UserCredentials);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1624, sub_1DD92ED04, v0 + 2128);
}

uint64_t sub_1DD92ED5C()
{
  v1 = v0[325];
  v2 = v0[324];
  sub_1DD93128C(v0[320], type metadata accessor for UserTokens);

  v3 = v0[340];
  v4 = v0[320];
  v5 = v0[319];
  v6 = v0[313];
  v7 = v0[307];
  v8 = v0[283];
  v9 = v0[265];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD92EE40(uint64_t a1)
{
  v2 = sub_1DDA134E0();
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = *(v101 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v104 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v98 = &v90 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v90 - v8;
  v9 = sub_1DDA13290();
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = *(v105 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v90 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v90 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83050, &qword_1DDA1AE90);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v90 - v21;
  v23 = sub_1DDA132F0();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE16F0F0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v28 = sub_1DDA14810();
  v29 = __swift_project_value_buffer(v28, qword_1EE16FA80);
  v30 = sub_1DDA147F0();
  v31 = sub_1DDA14F00();
  v32 = os_log_type_enabled(v30, v31);
  v100 = v29;
  if (v32)
  {
    v33 = a1;
    v34 = v27;
    v35 = v24;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1DD8F8000, v30, v31, "extractCodeAndState(from:)", v36, 2u);
    v37 = v36;
    v24 = v35;
    v27 = v34;
    a1 = v33;
    MEMORY[0x1E12B8CE0](v37, -1, -1);
  }

  sub_1DDA13440();
  sub_1DDA132E0();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1DD90D378(v22, &qword_1ECD83050, &qword_1DDA1AE90);
    v38 = v101;
    v39 = v104;
    v40 = a1;
    a1 = v102;
    (*(v101 + 16))(v104, v40, v102);
    v41 = sub_1DDA147F0();
    v42 = sub_1DDA14EE0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v107 = v44;
      *v43 = 136380675;
      sub_1DD911DE4();
      v45 = sub_1DDA15400();
      v46 = v39;
      v48 = v47;
      (*(v38 + 8))(v46, a1);
      v49 = sub_1DD93FA54(v45, v48, &v107);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_1DD8F8000, v41, v42, "Received malformed URL: %{private}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1E12B8CE0](v44, -1, -1);
      MEMORY[0x1E12B8CE0](v43, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v39, a1);
    }

    sub_1DD962448();
    sub_1DD930D3C();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
    return a1;
  }

  v92 = a1;
  v93 = v24;
  v50 = *(v24 + 32);
  v94 = v23;
  v50(v27, v22, v23);
  v51 = sub_1DDA132A0();
  v52 = v102;
  if (!v51)
  {
    goto LABEL_29;
  }

  a1 = v51;
  v91 = v27;
  v27 = *(v51 + 16);
  if (!v27)
  {
LABEL_15:

    v52 = v102;
    v27 = v91;
LABEL_29:
    v68 = v101;
    v69 = v98;
    (*(v101 + 16))(v98, v92, v52);
    v70 = sub_1DDA147F0();
    v71 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v70, v71))
    {
LABEL_37:

      (*(v68 + 8))(v69, v52);
      goto LABEL_38;
    }

    a1 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v107 = v72;
    *a1 = 136380675;
    sub_1DD911DE4();
    v73 = sub_1DDA15400();
    v74 = v52;
    v76 = v75;
    (*(v68 + 8))(v69, v74);
    v77 = sub_1DD93FA54(v73, v76, &v107);

    *(a1 + 4) = v77;
    v78 = "Received URL did not contain a code parameter: %{private}s";
LABEL_31:
    _os_log_impl(&dword_1DD8F8000, v70, v71, v78, a1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x1E12B8CE0](v72, -1, -1);
    MEMORY[0x1E12B8CE0](a1, -1, -1);

LABEL_38:
    v88 = v93;
    sub_1DD962448();
    sub_1DD930D3C();
    swift_allocError();
    *v89 = 0;
    swift_willThrow();
    (*(v88 + 8))(v27, v94);
    return a1;
  }

  v53 = 0;
  v103 = (v105 + 8);
  v104 = (v105 + 16);
  while (1)
  {
    if (v53 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v24 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v54 = *(v105 + 72);
    v23 = *(v105 + 16);
    (v23)(v17, a1 + v24 + v54 * v53, v106);
    if (sub_1DDA13270() == 1701080931 && v55 == 0xE400000000000000)
    {
      break;
    }

    v22 = sub_1DDA15440();

    if (v22)
    {
      goto LABEL_19;
    }

    ++v53;
    (*v103)(v17, v106);
    if (v27 == v53)
    {
      goto LABEL_15;
    }
  }

LABEL_19:

  v57 = v106;
  v58 = v105 + 32;
  v59 = v97;
  v90 = *(v105 + 32);
  v90(v97, v17, v106);
  a1 = sub_1DDA13280();
  v61 = v60;
  v105 = v58;
  v97 = *(v58 - 24);
  (v97)(v59, v57);
  v52 = v102;
  v27 = v91;
  if (!v61)
  {
    goto LABEL_29;
  }

  result = sub_1DDA132A0();
  if (!result)
  {
    goto LABEL_35;
  }

  v63 = result;
  v98 = *(result + 16);
  if (!v98)
  {
LABEL_28:

    v52 = v102;
    v27 = v91;
LABEL_35:

    v68 = v101;
    v69 = v96;
    (*(v101 + 16))(v96, v92, v52);
    v70 = sub_1DDA147F0();
    v71 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_37;
    }

    a1 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v107 = v72;
    *a1 = 136380675;
    sub_1DD911DE4();
    v83 = sub_1DDA15400();
    v84 = v52;
    v86 = v85;
    (*(v68 + 8))(v69, v84);
    v87 = sub_1DD93FA54(v83, v86, &v107);

    *(a1 + 4) = v87;
    v78 = "Received URL did not contain a state parameter: %{private}s";
    goto LABEL_31;
  }

  v64 = 0;
  v65 = result + v24;
  while (1)
  {
    if (v64 >= *(v63 + 16))
    {
      __break(1u);
      return result;
    }

    (v23)(v99, v65, v106);
    if (sub_1DDA13270() == 0x6574617473 && v66 == 0xE500000000000000)
    {
      break;
    }

    v67 = sub_1DDA15440();

    if (v67)
    {
      goto LABEL_33;
    }

    ++v64;
    result = (v97)(v99, v106);
    v65 += v54;
    if (v98 == v64)
    {
      goto LABEL_28;
    }
  }

LABEL_33:

  v79 = v95;
  v80 = v106;
  v90(v95, v99, v106);
  sub_1DDA13280();
  v82 = v81;
  (v97)(v79, v80);
  v52 = v102;
  v27 = v91;
  if (!v82)
  {
    goto LABEL_35;
  }

  (*(v93 + 8))(v91, v94);
  return a1;
}

uint64_t sub_1DD92F960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD92F984, 0, 0);
}

uint64_t sub_1DD92F984()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 48), *(v0[3] + 72));
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1DD92FA44;
  v5 = v0[2];

  return sub_1DD97B45C(v5, v2, v3, (v0 + 6));
}

uint64_t sub_1DD92FA44()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 49) = *(v2 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1DD92FB7C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1DD92FB7C()
{
  v1 = *(v0 + 49);
  sub_1DD930D3C();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DD92FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD92FC20, 0, 0);
}

uint64_t sub_1DD92FC20()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[8] + 48), *(v0[8] + 72));
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1DD92FCE0;

  return sub_1DD97BFC4((v0 + 2), v2, v3, (v0 + 11));
}

uint64_t sub_1DD92FCE0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 89) = *(v2 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1DD92FE28, 0, 0);
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 56);
    *(v7 + 32) = *(v2 + 48);
    *v7 = v5;
    *(v7 + 16) = v6;
    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_1DD92FE28()
{
  v1 = *(v0 + 89);
  sub_1DD930D3C();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DD92FEA8(uint64_t a1, int *a2)
{
  *(v2 + 56) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1DD92FF9C;

  return v6(v2 + 16);
}

uint64_t sub_1DD92FF9C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 56);
    *(v7 + 32) = *(v2 + 48);
    *v7 = v5;
    *(v7 + 16) = v6;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t ExternalPartnerAuthenticator.AuthenticationSession.transferCredentialFromAnotherAuthenticator(sourceAuthenticator:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for UserCredentials(0);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = *(*(type metadata accessor for Credentials(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9301F8, 0, 0);
}

uint64_t sub_1DD9301F8()
{
  v1 = *(v0 + 80);
  *(v0 + 88) = **(v0 + 16);
  sub_1DD92CCE8(&qword_1ECD82D00, &qword_1DDA18B10, type metadata accessor for UserCredentials, v1);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1DD90ADB4(*(v0 + 80), v2, &qword_1ECD82D00, &qword_1DDA18B10);
  v5 = *(v4 + 48);
  *(v0 + 96) = v5;
  *(v0 + 104) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  LODWORD(v3) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82D00, &qword_1DDA18B10);
  if (v3 == 1)
  {
LABEL_2:
    sub_1DD931238();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    v8 = *(v0 + 72);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_1DD90D378(*(v0 + 80), &qword_1ECD82D00, &qword_1DDA18B10);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 24);
  if (!v5(v15, 1, v16) && *(v15 + *(v16 + 40) + 8))
  {
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = *(v0 + 56);
    sub_1DD90ADB4(v15, v22, &qword_1ECD82D00, &qword_1DDA18B10);
    v23 = v21(v22, 1, v16);
    v24 = *(v0 + 56);
    if (v23 == 1)
    {
      sub_1DD90D378(v24, &qword_1ECD82D00, &qword_1DDA18B10);
    }

    else
    {
      v25 = *(v0 + 40);
      v26 = *(v0 + 24);
      sub_1DD93135C(v24, v25, type metadata accessor for UserCredentials);
      if (*(v25 + *(v26 + 40) + 8))
      {
        return sub_1DDA15180();
      }

      sub_1DD93128C(*(v0 + 40), type metadata accessor for UserCredentials);
    }

    v6 = 0;
    goto LABEL_2;
  }

  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_1DD930590;
  v18 = *(v0 + 48);
  v19 = *(v0 + 16);

  return sub_1DD93658C(v18);
}

uint64_t sub_1DD930590()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1DD930938;
  }

  else
  {
    sub_1DD93128C(*(v2 + 48), type metadata accessor for Credentials);
    v4 = sub_1DD9306C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD9306C0()
{
  v1 = v0[15];
  v2 = v0[11];
  sub_1DD92CCE8(&qword_1ECD82D00, &qword_1DDA18B10, type metadata accessor for UserCredentials, v0[8]);
  if (v1)
  {
    v3 = v0[8];
    v4 = v0[3];
    v5 = v0[4];

    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1DD9312EC(v0[8], v0[10]);
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[7];
  v9 = v0[3];
  sub_1DD90ADB4(v0[10], v8, &qword_1ECD82D00, &qword_1DDA18B10);
  v10 = v7(v8, 1, v9);
  v11 = v0[7];
  if (v10 == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD82D00, &qword_1DDA18B10);
  }

  else
  {
    v12 = v0[5];
    v13 = v0[3];
    sub_1DD93135C(v11, v12, type metadata accessor for UserCredentials);
    if (*(v12 + *(v13 + 40) + 8))
    {
      return sub_1DDA15180();
    }

    sub_1DD93128C(v0[5], type metadata accessor for UserCredentials);
  }

  sub_1DD931238();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();
  v16 = v0[9];
  v18 = v0[7];
  v17 = v0[8];
  v20 = v0[5];
  v19 = v0[6];
  sub_1DD90D378(v0[10], &qword_1ECD82D00, &qword_1DDA18B10);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1DD930938()
{
  v1 = v0[15];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  sub_1DD90D378(v0[10], &qword_1ECD82D00, &qword_1DDA18B10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD930A00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v5 = sub_1DDA13250();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD9562F0(32);
  v42 = v10;
  v43 = v9;
  v11 = v10;
  v12 = sub_1DD9562F0(32);
  v44 = v13;
  v45 = v12;
  v14 = sub_1DDA14CC0();
  *(v14 + 16) = 32;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  v55 = v14;

  v15 = sub_1DD901910(v9, v11);
  v17 = v16;
  sub_1DD909CD4(v15, v16);
  sub_1DD974B4C(v15, v17, v15, v17, &v55);

  v19 = sub_1DD90D1C8(v18);
  v38 = v20;
  v39 = v19;

  v53 = sub_1DDA13580();
  v54 = v21;
  v51 = 43;
  v52 = 0xE100000000000000;
  v49 = 45;
  v50 = 0xE100000000000000;
  sub_1DD9313D4();
  v22 = sub_1DDA14F80();
  v24 = v23;

  v53 = v22;
  v54 = v24;
  v51 = 47;
  v52 = 0xE100000000000000;
  v49 = 95;
  v50 = 0xE100000000000000;
  v25 = sub_1DDA14F80();
  v27 = v26;

  v53 = v25;
  v54 = v27;
  sub_1DDA13240();
  v28 = sub_1DDA14F70();
  v30 = v29;
  (*(v40 + 8))(v8, v41);

  v53 = v28;
  v54 = v30;
  v51 = 61;
  v52 = 0xE100000000000000;
  v49 = 0;
  v50 = 0xE000000000000000;
  v31 = sub_1DDA14F80();
  v33 = v32;

  sub_1DD909D28(v39, v38);
  sub_1DD909D28(v15, v17);

  v34 = v44;
  *a4 = v45;
  a4[1] = v34;
  a4[2] = v31;
  a4[3] = v33;
  v35 = v42;
  a4[4] = v43;
  a4[5] = v35;
  result = sub_1DD8FEEB0(v46, (a4 + 6));
  v37 = v48;
  a4[11] = v47;
  a4[12] = v37;
  return result;
}

unint64_t sub_1DD930D3C()
{
  result = qword_1ECD83030;
  if (!qword_1ECD83030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83030);
  }

  return result;
}

uint64_t sub_1DD930DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserTokens(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD930E2C(uint64_t a1)
{
  v4 = *(type metadata accessor for UserTokens(0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD92F960(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for UserTokens(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 120) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0[3];

  v6 = v0[5];

  v7 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v8 = v0[14];

  v9 = *(v0 + v3 + 8);

  v10 = *(v0 + v3 + 24);

  v11 = v1[8];
  v12 = sub_1DDA13680();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = *(v0 + v3 + v1[10] + 8);

  v14 = *(v0 + v3 + v1[11] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD93104C(uint64_t a1)
{
  v4 = *(type metadata accessor for UserTokens(0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD92FBFC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1DD93112C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD9165BC;

  return sub_1DD92FEA8(a1, v5);
}

unint64_t sub_1DD931238()
{
  result = qword_1ECD83038;
  if (!qword_1ECD83038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83038);
  }

  return result;
}

uint64_t sub_1DD93128C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD9312EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD93135C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DD9313D4()
{
  result = qword_1ECD83040;
  if (!qword_1ECD83040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83040);
  }

  return result;
}

uint64_t sub_1DD931428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD93146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD9314B0(char a1)
{
  v3 = v1;

  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14ED0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315651;
    *(v7 + 4) = sub_1DD93FA54(v3[4], v3[5], &v20);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DD93FA54(v3[2], v3[3], &v20);
    *(v7 + 22) = 2081;
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83048, &unk_1DDA18B80);
    v9 = sub_1DDA14B70();
    v11 = sub_1DD93FA54(v9, v10, &v20);

    *(v7 + 24) = v11;
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Setting %s.%s to: %{private}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  if (a1 == 2)
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v14 = v3[11];
    v15 = v3[12];
    v22 = a1 & 1;
    result = v14(&v22);
    if (v2)
    {
      return result;
    }

    v12 = result;
    v13 = v17;
  }

  v18 = v3[9];
  v19 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v18);
  (*(v19 + 16))(v3[4], v3[5], v3[2], v3[3], v12, v13, v18, v19);
  return sub_1DD90D440(v12, v13);
}

uint64_t sub_1DD9316D8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ChatChunk.RateLimits(0);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v10 = *(*(v41 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v45 = a1;
  sub_1DD90ADB4(a1, &v38 - v16, &qword_1ECD82CF8, &unk_1DDA1AD50);

  v18 = sub_1DDA147F0();
  v19 = sub_1DDA14ED0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v9;
    v21 = v20;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v21 = 136315651;
    *(v21 + 4) = sub_1DD93FA54(v4[4], v4[5], &v46);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1DD93FA54(v4[2], v4[3], &v46);
    *(v21 + 22) = 2081;
    sub_1DD90ADB4(v17, v15, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v22 = sub_1DDA14B70();
    v24 = v23;
    sub_1DD90D378(v17, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v25 = sub_1DD93FA54(v22, v24, &v46);
    v3 = v2;

    *(v21 + 24) = v25;
    _os_log_impl(&dword_1DD8F8000, v18, v19, "Setting %s.%s to: %{private}s", v21, 0x20u);
    v26 = v39;
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v26, -1, -1);
    v27 = v21;
    v9 = v40;
    MEMORY[0x1E12B8CE0](v27, -1, -1);
  }

  else
  {

    sub_1DD90D378(v17, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }

  v28 = v4[11];
  v29 = v4[12];
  v30 = v42;
  sub_1DD90ADB4(v45, v42, &qword_1ECD82CF8, &unk_1DDA1AD50);
  if ((*(v43 + 48))(v30, 1, v44) == 1)
  {
    v31 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    sub_1DD941124(v30, v9, type metadata accessor for ChatChunk.RateLimits);
    v33 = v28(v9);
    if (v3)
    {
      return sub_1DD940F10(v9, type metadata accessor for ChatChunk.RateLimits);
    }

    v31 = v33;
    v32 = v34;
    sub_1DD940F10(v9, type metadata accessor for ChatChunk.RateLimits);
  }

  v36 = v4[9];
  v37 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v36);
  (*(v37 + 16))(v4[4], v4[5], v4[2], v4[3], v31, v32, v36, v37);
  return sub_1DD90D440(v31, v32);
}

uint64_t sub_1DD931B18(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for UserCredentials(0);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v10 = *(*(v41 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v45 = a1;
  sub_1DD90ADB4(a1, &v38 - v16, &qword_1ECD82D00, &qword_1DDA18B10);

  v18 = sub_1DDA147F0();
  v19 = sub_1DDA14ED0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v9;
    v21 = v20;
    v39 = swift_slowAlloc();
    v46 = v39;
    *v21 = 136315651;
    *(v21 + 4) = sub_1DD93FA54(v4[4], v4[5], &v46);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1DD93FA54(v4[2], v4[3], &v46);
    *(v21 + 22) = 2081;
    sub_1DD90ADB4(v17, v15, &qword_1ECD82D00, &qword_1DDA18B10);
    v22 = sub_1DDA14B70();
    v24 = v23;
    sub_1DD90D378(v17, &qword_1ECD82D00, &qword_1DDA18B10);
    v25 = sub_1DD93FA54(v22, v24, &v46);
    v3 = v2;

    *(v21 + 24) = v25;
    _os_log_impl(&dword_1DD8F8000, v18, v19, "Setting %s.%s to: %{private}s", v21, 0x20u);
    v26 = v39;
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v26, -1, -1);
    v27 = v21;
    v9 = v40;
    MEMORY[0x1E12B8CE0](v27, -1, -1);
  }

  else
  {

    sub_1DD90D378(v17, &qword_1ECD82D00, &qword_1DDA18B10);
  }

  v28 = v4[11];
  v29 = v4[12];
  v30 = v42;
  sub_1DD90ADB4(v45, v42, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v43 + 48))(v30, 1, v44) == 1)
  {
    v31 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    sub_1DD941124(v30, v9, type metadata accessor for UserCredentials);
    v33 = v28(v9);
    if (v3)
    {
      return sub_1DD940F10(v9, type metadata accessor for UserCredentials);
    }

    v31 = v33;
    v32 = v34;
    sub_1DD940F10(v9, type metadata accessor for UserCredentials);
  }

  v36 = v4[9];
  v37 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v36);
  (*(v37 + 16))(v4[4], v4[5], v4[2], v4[3], v31, v32, v36, v37);
  return sub_1DD90D440(v31, v32);
}

uint64_t sub_1DD931F58(void *a1)
{
  v3 = v1;
  v5 = a1[2];
  v23 = *a1;
  v24 = a1[3];
  v25 = a1[1];
  v26 = a1[4];

  sub_1DD90ADB4(a1, &v28, &qword_1ECD83058, &qword_1DDA18B90);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14ED0();

  sub_1DD90D378(a1, &qword_1ECD83058, &qword_1DDA18B90);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v8 = 136315651;
    *(v8 + 4) = sub_1DD93FA54(v3[4], v3[5], &v31);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1DD93FA54(v3[2], v3[3], &v31);
    *(v8 + 22) = 2081;
    v9 = *(a1 + 1);
    v28 = *a1;
    v29 = v9;
    v30 = a1[4];
    v10 = v5;
    sub_1DD90ADB4(a1, v27, &qword_1ECD83058, &qword_1DDA18B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83058, &qword_1DDA18B90);
    v11 = sub_1DDA14B70();
    v13 = sub_1DD93FA54(v11, v12, &v31);

    *(v8 + 24) = v13;
    v5 = v10;
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Setting %s.%s to: %{private}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v22, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
  }

  if (a1[2])
  {
    v15 = v3[11];
    v14 = v3[12];
    LOBYTE(v28) = v23 & 1;
    *(&v28 + 1) = v25;
    *&v29 = v5;
    *(&v29 + 1) = v24;
    v30 = v26;

    v16 = v15(&v28);
    v18 = v17;

    if (v2)
    {
      return result;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v20 = v3[9];
  v21 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v20);
  (*(v21 + 16))(v3[4], v3[5], v3[2], v3[3], v16, v18, v20, v21);
  return sub_1DD90D440(v16, v18);
}

uint64_t ExternalPartnerAuthenticator.credentials.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[13] = *(v1 + 29);
  return sub_1DD9122F0(a1);
}

uint64_t sub_1DD932268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[36] = a3;
  v4[37] = a4;
  v4[34] = a1;
  v4[35] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[40] = v7;
  *v7 = v4;
  v7[1] = sub_1DD932370;

  return sub_1DD935A68();
}

uint64_t sub_1DD932370()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 288);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 328) = v6;
  *v6 = v4;
  v6[1] = sub_1DD932528;
  v7 = *(v1 + 296);

  return v9(v1 + 224);
}

uint64_t sub_1DD932528()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1DD932794;
  }

  else
  {
    v3 = sub_1DD93263C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD93263C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = sub_1DDA14D60();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD928DF4(v2, v0 + 104);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = *(v0 + 120);
  v6 = *(v0 + 152);
  *(v4 + 64) = *(v0 + 136);
  *(v4 + 80) = v6;
  *(v4 + 96) = *(v0 + 168);
  *(v4 + 32) = *(v0 + 104);
  *(v4 + 48) = v5;
  sub_1DD982718(0, 0, v1, &unk_1DDA18D50, v4);

  LOBYTE(v2) = *(v0 + 224);
  v14 = *(v0 + 232);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);

  *v11 = v2;
  *(v11 + 8) = v14;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DD932794()
{
  v1 = *(v0 + 336);
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 96);
    if (*(v0 + 56))
    {
      v9 = *(v0 + 48);
      v10 = *(v0 + 56);

      v11 = sub_1DD9FFD28();

      sub_1DD940E20(v5);

      if (v11 != 39)
      {
        if (sub_1DD9CEEC4(v11) == 0x78655F6E656B6F74 && v12 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v21 = sub_1DDA14810();
          __swift_project_value_buffer(v21, qword_1ECDA20E0);
          v22 = sub_1DDA147F0();
          v23 = sub_1DDA14F00();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&dword_1DD8F8000, v22, v23, "Access token expired. Attempting refresh+retry.", v24, 2u);
            MEMORY[0x1E12B8CE0](v24, -1, -1);
          }

          v25 = swift_task_alloc();
          *(v0 + 344) = v25;
          *v25 = v0;
          v25[1] = sub_1DD932AB4;
          v26 = *(v0 + 304);
          v27 = *(v0 + 280);

          return sub_1DD93658C(v26);
        }

        v20 = sub_1DDA15440();

        if (v20)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v13 = *(v0 + 24);

      sub_1DD940E20(v5);
    }
  }

  v14 = *(v0 + 336);

  swift_willThrow();
  v15 = *(v0 + 336);
  v17 = *(v0 + 304);
  v16 = *(v0 + 312);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DD932AB4()
{
  v2 = *(*v1 + 344);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1DD932D20;
  }

  else
  {
    v3 = sub_1DD932BCC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD932BCC()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_1DD932E74;
  v6 = v0[37];

  return v8(v0 + 23);
}

uint64_t sub_1DD932D20()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_1DD932E74;
  v6 = v0[37];

  return v8(v0 + 23);
}

uint64_t sub_1DD932E74()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1DD933030;
  }

  else
  {
    v3 = sub_1DD932F88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD932F88()
{
  v1 = *(v0 + 184);
  v9 = *(v0 + 192);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 272);

  *v6 = v1;
  *(v6 + 8) = v9;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DD933030()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD9330A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[31] = v8;
  *v8 = v4;
  v8[1] = sub_1DD9331E4;

  return sub_1DD935A68();
}

uint64_t sub_1DD9331E4()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 208);
  v4 = *v0;

  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[32] = v6;
  *v6 = v4;
  v6[1] = sub_1DD9333AC;
  v7 = v1[30];
  v8 = v1[27];

  return v10(v7);
}

uint64_t sub_1DD9333AC()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1DD933614;
  }

  else
  {
    v3 = sub_1DD9334C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9334C0()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1DD928DF4(v4, v0 + 104);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(v0 + 120);
  v8 = *(v0 + 152);
  *(v6 + 64) = *(v0 + 136);
  *(v6 + 80) = v8;
  *(v6 + 96) = *(v0 + 168);
  *(v6 + 32) = *(v0 + 104);
  *(v6 + 48) = v7;
  sub_1DD982718(0, 0, v2, &unk_1DDA18D08, v6);

  sub_1DD914958(v1, v3, &qword_1ECD82D58, &unk_1DDA18640);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 224);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DD933614()
{
  v1 = *(v0 + 264);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 96);
    if (*(v0 + 56))
    {
      v9 = *(v0 + 48);
      v10 = *(v0 + 56);

      v11 = sub_1DD9FFD28();

      sub_1DD940E20(v5);

      if (v11 != 39)
      {
        if (sub_1DD9CEEC4(v11) == 0x78655F6E656B6F74 && v12 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v22 = sub_1DDA14810();
          __swift_project_value_buffer(v22, qword_1ECDA20E0);
          v23 = sub_1DDA147F0();
          v24 = sub_1DDA14F00();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_1DD8F8000, v23, v24, "Access token expired. Attempting refresh+retry.", v25, 2u);
            MEMORY[0x1E12B8CE0](v25, -1, -1);
          }

          v26 = swift_task_alloc();
          *(v0 + 272) = v26;
          *v26 = v0;
          v26[1] = sub_1DD933948;
          v27 = *(v0 + 224);
          v28 = *(v0 + 200);

          return sub_1DD93658C(v27);
        }

        v21 = sub_1DDA15440();

        if (v21)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v13 = *(v0 + 24);

      sub_1DD940E20(v5);
    }
  }

  v14 = *(v0 + 264);

  swift_willThrow();
  v15 = *(v0 + 264);
  v17 = *(v0 + 232);
  v16 = *(v0 + 240);
  v18 = *(v0 + 224);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1DD933948()
{
  v2 = *(*v1 + 272);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1DD933BB4;
  }

  else
  {
    v3 = sub_1DD933A60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD933A60()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1DD933D08;
  v6 = v0[27];
  v7 = v0[24];

  return v9(v7);
}

uint64_t sub_1DD933BB4()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1DD933D08;
  v6 = v0[27];
  v7 = v0[24];

  return v9(v7);
}

uint64_t sub_1DD933D08()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1DD933E9C;
  }

  else
  {
    v3 = sub_1DD933E1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD933E1C()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD933E9C()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DD933F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[30] = v7;
  *v7 = v4;
  v7[1] = sub_1DD93402C;

  return sub_1DD935A68();
}

uint64_t sub_1DD93402C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 208);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 248) = v6;
  *v6 = v4;
  v6[1] = sub_1DD9341DC;
  v7 = *(v1 + 216);

  return v9();
}

uint64_t sub_1DD9341DC()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1DD934414;
  }

  else
  {
    v3 = sub_1DD9342F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9342F0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = sub_1DDA14D60();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD928DF4(v2, v0 + 104);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = *(v0 + 120);
  v6 = *(v0 + 152);
  *(v4 + 64) = *(v0 + 136);
  *(v4 + 80) = v6;
  *(v4 + 96) = *(v0 + 168);
  *(v4 + 32) = *(v0 + 104);
  *(v4 + 48) = v5;
  sub_1DD982718(0, 0, v1, &unk_1DDA18D18, v4);

  v8 = *(v0 + 224);
  v7 = *(v0 + 232);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DD934414()
{
  v1 = *(v0 + 256);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 96);
    if (*(v0 + 56))
    {
      v9 = *(v0 + 48);
      v10 = *(v0 + 56);

      v11 = sub_1DD9FFD28();

      sub_1DD940E20(v5);

      if (v11 != 39)
      {
        if (sub_1DD9CEEC4(v11) == 0x78655F6E656B6F74 && v12 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v21 = sub_1DDA14810();
          __swift_project_value_buffer(v21, qword_1ECDA20E0);
          v22 = sub_1DDA147F0();
          v23 = sub_1DDA14F00();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&dword_1DD8F8000, v22, v23, "Access token expired. Attempting refresh+retry.", v24, 2u);
            MEMORY[0x1E12B8CE0](v24, -1, -1);
          }

          v25 = swift_task_alloc();
          *(v0 + 264) = v25;
          *v25 = v0;
          v25[1] = sub_1DD93473C;
          v26 = *(v0 + 224);
          v27 = *(v0 + 200);

          return sub_1DD93658C(v26);
        }

        v20 = sub_1DDA15440();

        if (v20)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v13 = *(v0 + 24);

      sub_1DD940E20(v5);
    }
  }

  v14 = *(v0 + 256);

  swift_willThrow();
  v15 = *(v0 + 256);
  v17 = *(v0 + 224);
  v16 = *(v0 + 232);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DD93473C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1DD9349A8;
  }

  else
  {
    v3 = sub_1DD934854;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD934854()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_1DD934AFC;
  v6 = v0[27];
  v7 = v0[24];

  return v9(v7);
}

uint64_t sub_1DD9349A8()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_1DD934AFC;
  v6 = v0[27];
  v7 = v0[24];

  return v9(v7);
}

uint64_t sub_1DD934AFC()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1DD934C84;
  }

  else
  {
    v3 = sub_1DD934C10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD934C10()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DD934C84()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD934CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v7 = *(*(type metadata accessor for ChatChunk.RateLimits(0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[31] = v8;
  *v8 = v4;
  v8[1] = sub_1DD934E2C;

  return sub_1DD935A68();
}

uint64_t sub_1DD934E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 208);
  v4 = *v0;

  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[32] = v6;
  *v6 = v4;
  v6[1] = sub_1DD934FF4;
  v7 = v1[30];
  v8 = v1[27];

  return v10(v7);
}

uint64_t sub_1DD934FF4()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1DD935260;
  }

  else
  {
    v3 = sub_1DD935108;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD935108()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1DD928DF4(v4, v0 + 104);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(v0 + 120);
  v8 = *(v0 + 152);
  *(v6 + 64) = *(v0 + 136);
  *(v6 + 80) = v8;
  *(v6 + 96) = *(v0 + 168);
  *(v6 + 32) = *(v0 + 104);
  *(v6 + 48) = v7;
  sub_1DD982718(0, 0, v2, &unk_1DDA18D40, v6);

  sub_1DD941124(v1, v3, type metadata accessor for ChatChunk.RateLimits);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 224);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DD935260()
{
  v1 = *(v0 + 264);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 96);
    if (*(v0 + 56))
    {
      v9 = *(v0 + 48);
      v10 = *(v0 + 56);

      v11 = sub_1DD9FFD28();

      sub_1DD940E20(v5);

      if (v11 != 39)
      {
        if (sub_1DD9CEEC4(v11) == 0x78655F6E656B6F74 && v12 == 0xED00006465726970)
        {

LABEL_12:

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v22 = sub_1DDA14810();
          __swift_project_value_buffer(v22, qword_1ECDA20E0);
          v23 = sub_1DDA147F0();
          v24 = sub_1DDA14F00();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_1DD8F8000, v23, v24, "Access token expired. Attempting refresh+retry.", v25, 2u);
            MEMORY[0x1E12B8CE0](v25, -1, -1);
          }

          v26 = swift_task_alloc();
          *(v0 + 272) = v26;
          *v26 = v0;
          v26[1] = sub_1DD935594;
          v27 = *(v0 + 224);
          v28 = *(v0 + 200);

          return sub_1DD93658C(v27);
        }

        v21 = sub_1DDA15440();

        if (v21)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v13 = *(v0 + 24);

      sub_1DD940E20(v5);
    }
  }

  v14 = *(v0 + 264);

  swift_willThrow();
  v15 = *(v0 + 264);
  v17 = *(v0 + 232);
  v16 = *(v0 + 240);
  v18 = *(v0 + 224);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1DD935594()
{
  v2 = *(*v1 + 272);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1DD935800;
  }

  else
  {
    v3 = sub_1DD9356AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9356AC()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1DD935954;
  v6 = v0[27];
  v7 = v0[24];

  return v9(v7);
}

uint64_t sub_1DD935800()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = type metadata accessor for Credentials(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82D20, &qword_1DDA18CE0);
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1DD935954;
  v6 = v0[27];
  v7 = v0[24];

  return v9(v7);
}

uint64_t sub_1DD935954()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1DD94119C;
  }

  else
  {
    v3 = sub_1DD941198;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD935A68()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for Credentials(0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1DDA13680();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = type metadata accessor for UserCredentials(0);
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD935BF4, 0, 0);
}

uint64_t sub_1DD935BF4()
{
  v42 = v0;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[12] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "refreshCredentialsIfExpired()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[7];
  v6 = v0[2];

  v7 = *v6;
  sub_1DD92C8C4(v5);
  v8 = v0[8];
  v9 = v0[7];
  if ((*(v0[9] + 48))(v9, 1, v8) == 1)
  {
    sub_1DD90D378(v9, &qword_1ECD82D00, &qword_1DDA18B10);
    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14ED0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DD8F8000, v10, v11, "User not logged in. No need to refresh credentials.", v12, 2u);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    goto LABEL_9;
  }

  v21 = v0[5];
  v20 = v0[6];
  v22 = v0[4];
  sub_1DD941124(v9, v0[11], type metadata accessor for UserCredentials);
  sub_1DDA13670();
  v23 = *(v8 + 32);
  v24 = sub_1DDA13600();
  (*(v21 + 8))(v20, v22);
  if ((v24 & 1) == 0)
  {
    sub_1DD940BD4(v0[11], v0[10], type metadata accessor for UserCredentials);
    v28 = sub_1DDA147F0();
    v29 = sub_1DDA14ED0();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[10];
    v31 = v0[11];
    if (v30)
    {
      v33 = v0[4];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      v36 = *(v8 + 32);
      sub_1DD940F70(&qword_1ECD82FB8, MEMORY[0x1E6969530]);
      v37 = sub_1DDA15400();
      v39 = v38;
      sub_1DD940F10(v32, type metadata accessor for UserCredentials);
      v40 = sub_1DD93FA54(v37, v39, &v41);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1DD8F8000, v28, v29, "Credential is not expired. Expiration date: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E12B8CE0](v35, -1, -1);
      MEMORY[0x1E12B8CE0](v34, -1, -1);

      sub_1DD940F10(v31, type metadata accessor for UserCredentials);
    }

    else
    {

      sub_1DD940F10(v32, type metadata accessor for UserCredentials);
      sub_1DD940F10(v31, type metadata accessor for UserCredentials);
    }

LABEL_9:
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[3];

    v18 = v0[1];

    return v18();
  }

  v25 = swift_task_alloc();
  v0[13] = v25;
  *v25 = v0;
  v25[1] = sub_1DD936194;
  v27 = v0[2];
  v26 = v0[3];

  return sub_1DD93658C(v26);
}

uint64_t sub_1DD936194()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1DD9363E4;
  }

  else
  {
    sub_1DD940F10(*(v2 + 24), type metadata accessor for Credentials);
    v4 = sub_1DD9362C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD9362C4()
{
  v1 = v0[12];
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Successfully refreshed credentials", v6, 2u);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  sub_1DD940F10(v5, type metadata accessor for UserCredentials);
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[3];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD9363E4()
{
  sub_1DD940F10(v0[11], type metadata accessor for UserCredentials);
  v1 = v0[14];
  v2 = v0[12];
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
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed to refresh credentials: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[3];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DD93658C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UserCredentials(0);
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9366F8, 0, 0);
}

uint64_t sub_1DD9366F8()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[20] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "refreshCredentials()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[18];
  v6 = v0[9];

  v0[21] = *v6;
  sub_1DD92C8C4(v5);
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[11];
  v10 = v0[12];
  sub_1DD914958(v0[18], v7, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD90ADB4(v7, v8, &qword_1ECD82D00, &qword_1DDA18B10);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[17];
  if (v11 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14EE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DD8F8000, v13, v14, "Could not refresh credentials because none are present.", v15, 2u);
      MEMORY[0x1E12B8CE0](v15, -1, -1);
    }

    v16 = v0[19];

    sub_1DD962448();
    v17 = sub_1DDA13840();
    sub_1DD940F70(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    v19 = v18;
    sub_1DDA13800();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69DA4C8], v17);
    swift_willThrow();
    sub_1DD90D378(v16, &qword_1ECD82D00, &qword_1DDA18B10);
    v21 = v0[18];
    v20 = v0[19];
    v23 = v0[16];
    v22 = v0[17];
    v25 = v0[14];
    v24 = v0[15];
    v26 = v0[13];
    v27 = v0[10];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[9];
    sub_1DD941124(v12, v0[15], type metadata accessor for UserCredentials);
    __swift_project_boxed_opaque_existential_1((v30 + 40), *(v30 + 64));
    v31 = swift_task_alloc();
    v0[22] = v31;
    *v31 = v0;
    v31[1] = sub_1DD936CDC;
    v32 = v0[15];
    v33 = v0[13];

    return sub_1DD97D304(v33, v32);
  }
}

uint64_t sub_1DD936CDC()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1DD937180;
  }

  else
  {
    v3 = sub_1DD936DF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD936DF0()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  sub_1DD941124(v0[13], v4, type metadata accessor for UserCredentials);
  sub_1DD940BD4(v4, v3, type metadata accessor for UserCredentials);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_1DD931B18(v3);
  if (v1)
  {
    v7 = v1;
    sub_1DD90D378(v0[16], &qword_1ECD82D00, &qword_1DDA18B10);
    v8 = v0[20];
    v9 = sub_1DDA147F0();
    v10 = sub_1DDA14EE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DD8F8000, v9, v10, "Failed to write to keychain", v11, 2u);
      MEMORY[0x1E12B8CE0](v11, -1, -1);
    }

    v12 = v0[19];
    v14 = v0[14];
    v13 = v0[15];

    sub_1DD962448();
    v15 = sub_1DDA13840();
    sub_1DD940F70(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    v17 = v16;
    v18 = v7;
    sub_1DDA13800();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69DA4C8], v15);
    swift_willThrow();

    sub_1DD940F10(v14, type metadata accessor for UserCredentials);
    sub_1DD940F10(v13, type metadata accessor for UserCredentials);
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    v20 = v0[18];
    v19 = v0[19];
    v22 = v0[16];
    v21 = v0[17];
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    v26 = v0[10];

    v27 = v0[1];

    return v27();
  }

  else
  {
    sub_1DD90D378(v0[16], &qword_1ECD82D00, &qword_1DDA18B10);
    v29 = swift_task_alloc();
    v0[24] = v29;
    *v29 = v0;
    v29[1] = sub_1DD9375FC;
    v30 = v0[9];

    return ExternalPartnerAuthenticator.retrieveLatestBillingPlan()((v0 + 2));
  }
}

uint64_t sub_1DD937180()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed refresh credentials request: %@", v7, 0xCu);
    sub_1DD90D378(v8, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v11 = v0[23];
  v12 = v0[10];

  v13 = sub_1DD9C4E98(v11);
  v0[26] = v13;
  v0[7] = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  v15 = sub_1DDA13840();
  v16 = swift_dynamicCast();
  v17 = *(*(v15 - 8) + 56);
  v18 = v0[10];
  if (v16)
  {
    v19 = *(v15 - 8);
    v17(v0[10], 0, 1, v15);
    v20 = (*(v19 + 88))(v18, v15);
    v21 = *MEMORY[0x1E69DA4C8];
    (*(v19 + 8))(v18, v15);
    if (v20 == v21)
    {
      v22 = v0[20];
      v23 = v13;
      v24 = sub_1DDA147F0();
      v25 = sub_1DDA14F00();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v13;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1DD8F8000, v24, v25, "RefreshToken invalid: %@, sign out the user.", v26, 0xCu);
        sub_1DD90D378(v27, &unk_1ECD83100, &unk_1DDA185C0);
        MEMORY[0x1E12B8CE0](v27, -1, -1);
        MEMORY[0x1E12B8CE0](v26, -1, -1);
      }

      v30 = swift_task_alloc();
      v0[27] = v30;
      *v30 = v0;
      v30[1] = sub_1DD9378D0;
      v31 = v0[9];

      return ExternalPartnerAuthenticator.signOut()();
    }
  }

  else
  {
    v17(v0[10], 1, 1, v15);
    sub_1DD90D378(v18, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v33 = v0[26];
  v34 = v0[23];
  v35 = v0[19];
  v36 = v0[15];
  swift_willThrow();

  sub_1DD940F10(v36, type metadata accessor for UserCredentials);
  sub_1DD90D378(v35, &qword_1ECD82D00, &qword_1DDA18B10);
  v37 = v0[26];
  v39 = v0[18];
  v38 = v0[19];
  v41 = v0[16];
  v40 = v0[17];
  v43 = v0[14];
  v42 = v0[15];
  v44 = v0[13];
  v45 = v0[10];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1DD9375FC()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1DD937B04;
  }

  else
  {
    v3 = sub_1DD937710;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD937710()
{
  v1 = *(v0 + 152);
  v18 = *(v0 + 144);
  v19 = *(v0 + 136);
  v2 = *(v0 + 112);
  v20 = *(v0 + 128);
  v21 = *(v0 + 104);
  v3 = *(v0 + 88);
  v22 = *(v0 + 80);
  v4 = *(v0 + 64);
  sub_1DD940F10(*(v0 + 120), type metadata accessor for UserCredentials);
  sub_1DD90D378(v1, &qword_1ECD82D00, &qword_1DDA18B10);
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v14 = *(v0 + 48);
  v15 = *(v0 + 40);
  v6 = *v2;
  v5 = *(v2 + 1);
  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  v9 = *(v3 + 32);
  v10 = *(type metadata accessor for Credentials(0) + 28);
  v11 = sub_1DDA13680();
  (*(*(v11 - 8) + 16))(v4 + v10, &v2[v9], v11);

  sub_1DD940F10(v2, type metadata accessor for UserCredentials);
  *v4 = v6;
  *(v4 + 8) = v5;
  *(v4 + 16) = v8;
  *(v4 + 24) = v7;
  *(v4 + 32) = v17;
  *(v4 + 40) = v16;
  *(v4 + 56) = v15;
  *(v4 + 64) = v14;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DD9378D0()
{
  v2 = *(*v1 + 216);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1DD9411B8;
  }

  else
  {
    v3 = sub_1DD9379E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9379E8()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[15];
  swift_willThrow();

  sub_1DD940F10(v4, type metadata accessor for UserCredentials);
  sub_1DD90D378(v3, &qword_1ECD82D00, &qword_1DDA18B10);
  v5 = v0[26];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DD937B04()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14EE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Failed to write to keychain", v5, 2u);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
  }

  v6 = v0[19];
  v8 = v0[14];
  v7 = v0[15];

  sub_1DD962448();
  v9 = sub_1DDA13840();
  sub_1DD940F70(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
  swift_allocError();
  v11 = v10;
  v12 = v1;
  sub_1DDA13800();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69DA4C8], v9);
  swift_willThrow();

  sub_1DD940F10(v8, type metadata accessor for UserCredentials);
  sub_1DD940F10(v7, type metadata accessor for UserCredentials);
  sub_1DD90D378(v6, &qword_1ECD82D00, &qword_1DDA18B10);
  v14 = v0[18];
  v13 = v0[19];
  v16 = v0[16];
  v15 = v0[17];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[13];
  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t ExternalPartnerAuthenticator.lastRateLimitBudgets.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[13] = *(v1 + 29);
  return sub_1DD912800(a1);
}

uint64_t ExternalPartnerAuthenticator.startSignInSession(redirectURI:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD929A28(v1 + 40, v8);
  sub_1DD928DF4(v1, v7);
  v3 = swift_allocObject();
  v4 = v7[3];
  v3[3] = v7[2];
  v3[4] = v4;
  v3[5] = v7[4];
  v5 = v7[1];
  v3[1] = v7[0];
  v3[2] = v5;
  return sub_1DD930A00(v8, sub_1DD938284, v3, a1);
}

uint64_t ExternalPartnerAuthenticator.startSignInSession()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DD929A28(v1 + 40, v8);
  sub_1DD928DF4(v1, v7);
  v3 = swift_allocObject();
  v4 = v7[3];
  v3[3] = v7[2];
  v3[4] = v4;
  v3[5] = v7[4];
  v5 = v7[1];
  v3[1] = v7[0];
  v3[2] = v5;
  return sub_1DD930A00(v8, sub_1DD9411A0, v3, a1);
}

void sub_1DD937ED4(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v34 = *(a2 + 1);
  v8 = *(a2 + 3);
  v32 = *(a2 + 4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33[-1] - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33[-1] - v15;
  v17 = *a3;
  sub_1DD940BD4(a1, &v33[-1] - v15, type metadata accessor for UserCredentials);
  v18 = type metadata accessor for UserCredentials(0);
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  sub_1DD931B18(v16);
  if (v3)
  {
    sub_1DD90D378(v16, &qword_1ECD82D00, &qword_1DDA18B10);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DDA14810();
    __swift_project_value_buffer(v23, qword_1EE16FA80);
    v24 = v3;
    v25 = sub_1DDA147F0();
    v26 = sub_1DDA14EE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v3;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1DD8F8000, v25, v26, "Failed store tokens: %@", v27, 0xCu);
      sub_1DD90D378(v28, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
      MEMORY[0x1E12B8CE0](v27, -1, -1);
    }

    sub_1DD930D3C();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
  }

  else
  {
    sub_1DD90D378(v16, &qword_1ECD82D00, &qword_1DDA18B10);
    v19 = a3[1];
    v33[0] = v6 & 1;
    v33[1] = v34;
    v33[2] = v7;
    v33[3] = v8;
    v33[4] = v32;
    sub_1DD931F58(v33);
    v20 = a3[2];
    sub_1DD9314B0(2);
    v21 = a3[3];
    v22 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    sub_1DD9316D8(v12);
    sub_1DD90D378(v12, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t ExternalPartnerAuthenticator.signOut()()
{
  v1[7] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for UserCredentials(0);
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD938434, 0, 0);
}

uint64_t sub_1DD938434()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "signOut()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  *(v0 + 120) = *v6;
  sub_1DD92C8C4(v5);
  v8 = *(v0 + 80);
  v9 = (*(*(v0 + 96) + 48))(v8, 1, *(v0 + 88));
  if (v9 == 1)
  {
    sub_1DD90D378(v8, &qword_1ECD82D00, &qword_1DDA18B10);
    v10 = *(v0 + 120);
    v11 = *(v0 + 72);
    (*(*(v0 + 96) + 56))(v11, 1, 1, *(v0 + 88));
    sub_1DD931B18(v11);
    v15 = *(v0 + 56);
    sub_1DD90D378(*(v0 + 72), &qword_1ECD82D00, &qword_1DDA18B10);
    v16 = *(v15 + 8);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    sub_1DD931F58((v0 + 16));
    v17 = *(*(v0 + 56) + 16);
    sub_1DD9314B0(2);
    v18 = *(v0 + 64);
    v19 = *(*(v0 + 56) + 24);
    v20 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    sub_1DD9316D8(v18);
    v21 = *(v0 + 104);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    sub_1DD90D378(*(v0 + 64), &qword_1ECD82CF8, &unk_1DDA1AD50);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v12 = *(v0 + 56);
    sub_1DD941124(v8, *(v0 + 104), type metadata accessor for UserCredentials);
    __swift_project_boxed_opaque_existential_1((v12 + 40), *(v12 + 64));
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_1DD938900;
    v14 = *(v0 + 104);

    return sub_1DD97CAFC(v14);
  }
}

uint64_t sub_1DD938900()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DD938D84;
  }

  else
  {
    v3 = sub_1DD938A14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD938A14()
{
  v1 = *(v0 + 112);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Successfully signed out", v6, 2u);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  sub_1DD940F10(v5, type metadata accessor for UserCredentials);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = *(v0 + 72);
  (*(*(v0 + 96) + 56))(v9, 1, 1, *(v0 + 88));
  sub_1DD931B18(v9);
  v10 = *(v0 + 72);
  if (v7)
  {
    sub_1DD90D378(v10, &qword_1ECD82D00, &qword_1DDA18B10);
    v14 = *(v0 + 112);
    v15 = v7;
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14EF0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v7;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1DD8F8000, v16, v17, "Failed to delete credentials, user not signed out! %@", v18, 0xCu);
      sub_1DD90D378(v19, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v19, -1, -1);
      MEMORY[0x1E12B8CE0](v18, -1, -1);
    }

    v22 = *(v0 + 104);
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v25 = *(v0 + 64);

    sub_1DD962448();
    swift_willThrow();

    v33 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 56);
    sub_1DD90D378(v10, &qword_1ECD82D00, &qword_1DDA18B10);
    v12 = *(v11 + 8);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    sub_1DD931F58((v0 + 16));
    v13 = *(*(v0 + 56) + 16);
    sub_1DD9314B0(2);
    v27 = *(v0 + 64);
    v28 = *(*(v0 + 56) + 24);
    v29 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    sub_1DD9316D8(v27);
    v30 = *(v0 + 104);
    v32 = *(v0 + 72);
    v31 = *(v0 + 80);
    sub_1DD90D378(*(v0 + 64), &qword_1ECD82CF8, &unk_1DDA1AD50);

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t sub_1DD938D84()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EF0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed to revoke access token while logging out! %@", v7, 0xCu);
    sub_1DD90D378(v8, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v11 = *(v0 + 112);

  v12 = sub_1DDA147F0();
  v13 = sub_1DDA14EE0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DD8F8000, v12, v13, "Credentials will be deleted from keychain even though the revocation failed.", v14, 2u);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 104);

  sub_1DD962448();
  sub_1DD940F10(v16, type metadata accessor for UserCredentials);
  v17 = *(v0 + 120);
  v18 = *(v0 + 72);
  (*(*(v0 + 96) + 56))(v18, 1, 1, *(v0 + 88));
  sub_1DD931B18(v18);
  v19 = *(v0 + 56);
  sub_1DD90D378(*(v0 + 72), &qword_1ECD82D00, &qword_1DDA18B10);
  v20 = *(v19 + 8);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  sub_1DD931F58((v0 + 16));
  v21 = *(*(v0 + 56) + 16);
  sub_1DD9314B0(2);
  v23 = *(v0 + 64);
  v24 = *(*(v0 + 56) + 24);
  v25 = type metadata accessor for ChatChunk.RateLimits(0);
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  sub_1DD9316D8(v23);
  v26 = *(v0 + 104);
  v28 = *(v0 + 72);
  v27 = *(v0 + 80);
  sub_1DD90D378(*(v0 + 64), &qword_1ECD82CF8, &unk_1DDA1AD50);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t ExternalPartnerAuthenticator.retrieveLatestBillingPlan()(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = type metadata accessor for UserCredentials(0);
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v2[34] = *(v4 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93930C, 0, 0);
}

uint64_t sub_1DD93930C()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  *(v0 + 320) = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "retrieveLatestBillingPlan()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 248);

  v7 = *v6;
  sub_1DD92C8C4(v5);
  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  sub_1DD914958(*(v0 + 304), v8, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD90ADB4(v8, v9, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DD90D378(*(v0 + 296), &qword_1ECD82D00, &qword_1DDA18B10);
    v12 = sub_1DDA147F0();
    v13 = sub_1DDA14EE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DD8F8000, v12, v13, "Could not refresh billing plan because credentials are not present.", v14, 2u);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
    }

    v15 = *(v0 + 312);

    sub_1DD962448();
    sub_1DD940030();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    sub_1DD90D378(v15, &qword_1ECD82D00, &qword_1DDA18B10);
    v18 = *(v0 + 304);
    v17 = *(v0 + 312);
    v20 = *(v0 + 288);
    v19 = *(v0 + 296);
    v21 = *(v0 + 280);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 288);
    v26 = *(v0 + 272);
    v25 = *(v0 + 280);
    v27 = *(v0 + 264);
    v28 = *(v0 + 248);
    sub_1DD941124(*(v0 + 296), v24, type metadata accessor for UserCredentials);
    sub_1DD928DF4(v28, v0 + 16);
    sub_1DD940BD4(v24, v25, type metadata accessor for UserCredentials);
    v29 = (*(v27 + 80) + 96) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v0 + 328) = v30;
    v31 = *(v0 + 64);
    v30[3] = *(v0 + 48);
    v30[4] = v31;
    v30[5] = *(v0 + 80);
    v32 = *(v0 + 32);
    v30[1] = *(v0 + 16);
    v30[2] = v32;
    sub_1DD941124(v25, v30 + v29, type metadata accessor for UserCredentials);
    v33 = swift_task_alloc();
    *(v0 + 336) = v33;
    *v33 = v0;
    v33[1] = sub_1DD939834;
    v34 = *(v0 + 248);

    return sub_1DD932268(v0 + 136, v34, &unk_1DDA18BD0, v30);
  }
}

uint64_t sub_1DD939834()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  v4 = *(v2 + 328);
  if (v0)
  {

    v5 = sub_1DD939C10;
  }

  else
  {
    *(v2 + 384) = *(v2 + 136);
    *(v2 + 352) = *(v2 + 144);
    *(v2 + 360) = *(v2 + 152);
    *(v2 + 376) = *(v2 + 168);

    v5 = sub_1DD93997C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD93997C()
{
  v1 = *(*(v0 + 248) + 8);
  *(v0 + 96) = *(v0 + 384);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 352);
  v5 = *(v0 + 344);
  v6 = *(v0 + 160);
  *(v0 + 176) = *(v0 + 144);
  *(v0 + 192) = v6;
  *(v0 + 104) = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = v2;
  sub_1DD90D2EC(v0 + 176, v0 + 208);
  sub_1DD90D2EC(v0 + 192, v0 + 224);
  sub_1DD931F58((v0 + 96));
  v7 = v5;
  sub_1DD9311E4(v0 + 176);
  sub_1DD9311E4(v0 + 192);
  if (v5)
  {
    v8 = *(v0 + 320);
    sub_1DD9311E4(v0 + 176);
    sub_1DD9311E4(v0 + 192);
    v9 = sub_1DDA147F0();
    v10 = sub_1DDA14EE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DD8F8000, v9, v10, "Failed to persist billing plan to keychain", v11, 2u);
      MEMORY[0x1E12B8CE0](v11, -1, -1);
    }

    v12 = *(v0 + 312);
    v13 = *(v0 + 288);

    sub_1DD962448();
    sub_1DD940030();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    sub_1DD940F10(v13, type metadata accessor for UserCredentials);
    sub_1DD90D378(v12, &qword_1ECD82D00, &qword_1DDA18B10);
    v16 = *(v0 + 304);
    v15 = *(v0 + 312);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 280);

    v20 = *(v0 + 8);
  }

  else
  {
    v21 = *(v0 + 304);
    v22 = *(v0 + 312);
    v23 = *(v0 + 296);
    v24 = *(v0 + 280);
    v25 = *(v0 + 240);
    sub_1DD940F10(*(v0 + 288), type metadata accessor for UserCredentials);
    sub_1DD90D378(v22, &qword_1ECD82D00, &qword_1DDA18B10);
    v26 = *(v0 + 176);
    v27 = *(v0 + 192);
    v28 = *(v0 + 200);
    *v25 = *(v0 + 136);
    *(v25 + 8) = v26;
    *(v25 + 24) = v27;
    *(v25 + 32) = v28;

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_1DD939C10()
{
  v1 = v0[39];
  sub_1DD940F10(v0[36], type metadata accessor for UserCredentials);
  sub_1DD90D378(v1, &qword_1ECD82D00, &qword_1DDA18B10);
  v2 = v0[43];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DD939CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD939D08, 0, 0);
}

uint64_t sub_1DD939D08()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[8] + 40), *(v0[8] + 64));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1DD939DC8;

  return sub_1DD97BFC4((v0 + 2), v2, v3, (v0 + 11));
}

uint64_t sub_1DD939DC8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;

  if (v0)
  {
    *(v2 + 89) = *(v2 + 88);
    v4 = sub_1DD92FE28;
  }

  else
  {
    v4 = sub_1DD939EE0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD939EE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v1;
  *(v3 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t ExternalPartnerAuthenticator.retrieveLatestRateLimitBudgets()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for RateLimitBudgets(0);
  v2[21] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for ChatChunk.RateLimits(0);
  v2[28] = v11;
  v12 = *(v11 - 8);
  v2[29] = v12;
  v13 = *(v12 + 64) + 15;
  v2[30] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v15 = type metadata accessor for UserCredentials(0);
  v2[32] = v15;
  v16 = *(v15 - 8);
  v2[33] = v16;
  v2[34] = *(v16 + 64);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93A1EC, 0, 0);
}

uint64_t sub_1DD93A1EC()
{
  v1 = *(v0 + 104);
  if (*(__swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64)) + 176) != 1)
  {
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DDA14810();
    __swift_project_value_buffer(v3, qword_1EE16FA80);
    v4 = sub_1DDA147F0();
    v5 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "This provider does not enable rate limiting";
    goto LABEL_7;
  }

  v2 = **(v0 + 104);
  sub_1DD92C8C4(*(v0 + 248));
  v28 = *(v0 + 264);
  v29 = *(v0 + 248);
  v30 = (*(v28 + 48))(v29, 1, *(v0 + 256));
  if (v30 == 1)
  {
    sub_1DD90D378(v29, &qword_1ECD82D00, &qword_1DDA18B10);
    v31 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v32 = *(v31 + *(type metadata accessor for OpenAIAuthenticationService() + 44));
    if (v32 == 4)
    {
      if (qword_1EE16F0F0 != -1)
      {
        swift_once();
      }

      v33 = sub_1DDA14810();
      __swift_project_value_buffer(v33, qword_1EE16FA80);
      v4 = sub_1DDA147F0();
      v5 = sub_1DDA14EE0();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_8;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "This partner does not support anonymous rate limiting";
LABEL_7:
      _os_log_impl(&dword_1DD8F8000, v4, v5, v7, v6, 2u);
      MEMORY[0x1E12B8CE0](v6, -1, -1);
LABEL_8:
      v8 = *(v0 + 168);
      v9 = *(v0 + 96);

      v10 = v8[5];
      v11 = type metadata accessor for RateLimitBudgets.Limits(0);
      v12 = *(*(v11 - 8) + 56);
      v12(&v9[v10], 1, 1, v11);
      v13 = v8[6];
      v12(&v9[v13], 1, 1, v11);
      v14 = v8[7];
      v12(&v9[v14], 1, 1, v11);
      v15 = v8[8];
      v12(&v9[v15], 1, 1, v11);
      *v9 = 0;
      sub_1DD90D378(&v9[v10], &qword_1ECD82830, &unk_1DDA16350);
      v12(&v9[v10], 1, 1, v11);
      sub_1DD90D378(&v9[v13], &qword_1ECD82830, &unk_1DDA16350);
      v12(&v9[v13], 1, 1, v11);
      sub_1DD90D378(&v9[v14], &qword_1ECD82830, &unk_1DDA16350);
      v12(&v9[v14], 1, 1, v11);
      sub_1DD90D378(&v9[v15], &qword_1ECD82830, &unk_1DDA16350);
      v12(&v9[v15], 1, 1, v11);
      v17 = *(v0 + 280);
      v16 = *(v0 + 288);
      v19 = *(v0 + 240);
      v18 = *(v0 + 248);
      v21 = *(v0 + 208);
      v20 = *(v0 + 216);
      v23 = *(v0 + 192);
      v22 = *(v0 + 200);
      v25 = *(v0 + 176);
      v24 = *(v0 + 184);
      v46 = *(v0 + 160);
      v47 = *(v0 + 152);
      v48 = *(v0 + 144);
      v49 = *(v0 + 136);
      v50 = *(v0 + 128);

      v26 = *(v0 + 8);

      return v26();
    }

    *(v0 + 320) = sub_1DD9403B8(MEMORY[0x1E69E7CC0], &qword_1ECD830B8, &qword_1DDA18D48);
    *(v0 + 336) = v32;
    v45 = swift_task_alloc();
    *(v0 + 328) = v45;
    *v45 = v0;
    v45[1] = sub_1DD93B464;

    return sub_1DD9486BC((v0 + 336), 0);
  }

  else
  {
    v35 = *(v0 + 280);
    v34 = *(v0 + 288);
    v36 = *(v0 + 272);
    v37 = *(v0 + 104);
    sub_1DD941124(v29, v34, type metadata accessor for UserCredentials);
    sub_1DD928DF4(v37, v0 + 16);
    sub_1DD940BD4(v34, v35, type metadata accessor for UserCredentials);
    v38 = (*(v28 + 80) + 96) & ~*(v28 + 80);
    v39 = swift_allocObject();
    *(v0 + 296) = v39;
    v40 = *(v0 + 64);
    v39[3] = *(v0 + 48);
    v39[4] = v40;
    v39[5] = *(v0 + 80);
    v41 = *(v0 + 32);
    v39[1] = *(v0 + 16);
    v39[2] = v41;
    sub_1DD941124(v35, v39 + v38, type metadata accessor for UserCredentials);
    v42 = swift_task_alloc();
    *(v0 + 304) = v42;
    *v42 = v0;
    v42[1] = sub_1DD93AA6C;
    v43 = *(v0 + 240);
    v44 = *(v0 + 104);

    return sub_1DD934CF8(v43, v44, &unk_1DDA18BF0, v39);
  }
}

uint64_t sub_1DD93AA6C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);

  if (v0)
  {
    v6 = sub_1DD93B900;
  }

  else
  {
    v6 = sub_1DD93ABA0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD93ABA0()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[28];
  v5 = *(v0[13] + 24);
  sub_1DD940BD4(v0[30], v3, type metadata accessor for ChatChunk.RateLimits);
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_1DD9316D8(v3);
  v6 = v0[36];
  v7 = v0[30];
  if (v1)
  {
    v8 = v1;
    sub_1DD90D378(v0[27], &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v7, type metadata accessor for ChatChunk.RateLimits);
    sub_1DD940F10(v6, type metadata accessor for UserCredentials);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DDA14810();
    __swift_project_value_buffer(v9, qword_1EE16FA80);
    v10 = v1;
    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14EE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Failed get rate limits request: %@", v13, 0xCu);
      sub_1DD90D378(v14, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
    }

    v18 = v0[35];
    v17 = v0[36];
    v20 = v0[30];
    v19 = v0[31];
    v22 = v0[26];
    v21 = v0[27];
    v23 = v11;
    v24 = v0[25];
    v91 = v0[24];
    v92 = v0[23];
    v93 = v0[22];
    v95 = v0[20];
    v98 = v0[19];
    v101 = v0[18];
    v104 = v0[17];
    v108 = v0[16];

    sub_1DD962448();
    swift_willThrow();

    v25 = v0[1];
  }

  else
  {
    v26 = v0[28];
    v27 = v0[25];
    v28 = v0[26];
    v29 = v0[24];
    v30 = v0[21];
    v94 = v0[22];
    v96 = v28;
    v31 = v0[15];
    v105 = v0[23];
    v109 = v0[14];
    sub_1DD90D378(v0[27], &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v6, type metadata accessor for UserCredentials);
    sub_1DD914958(v7, v28, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v7 + v26[5], v27, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v7 + v26[6], v29, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v7 + v26[7], v105, &qword_1ECD82D10, &qword_1DDA185E0);
    v32 = v30[5];
    v33 = type metadata accessor for RateLimitBudgets.Limits(0);
    v34 = *(*(v33 - 1) + 56);
    v34(&v94[v32], 1, 1, v33);
    v99 = v30[6];
    v34(&v94[v99], 1, 1, v33);
    v106 = v30[7];
    v34(&v94[v106], 1, 1, v33);
    v102 = v30[8];
    v34(&v94[v102], 1, 1, v33);
    *v94 = 0;
    v35 = *(v31 + 48);
    v36 = v35(v96, 1, v109);
    v110 = v35;
    if (v36 == 1)
    {
      v37 = v0[20];
      v38 = 1;
    }

    else
    {
      v39 = v0[20];
      v40 = v0[16];
      v41 = v0[14];
      sub_1DD941124(v0[26], v40, type metadata accessor for ChatChunk.RateLimits.Limits);
      v42 = *(v41 + 20);
      v43 = *(v40 + *(v41 + 24));
      v44 = *v40;
      sub_1DD914958(v40 + v42, v39 + v33[6], &qword_1ECD82838, &unk_1DDA185F0);
      v45 = v43 >= v44;
      *v39 = v43;
      v39[1] = v44;
      v35 = v110;
      *(v39 + v33[7]) = v45;
      *(v39 + v33[8]) = 0;
      v37 = v39;
      v38 = 0;
    }

    v34(v37, v38, 1, v33);
    v46 = v0[25];
    v47 = v0[14];
    sub_1DD9148E8(v0[20], &v94[v32]);
    if (v35(v46, 1, v47) == 1)
    {
      v48 = v0[19];
      v49 = 1;
    }

    else
    {
      v50 = v0[19];
      v51 = v0[16];
      v52 = v0[14];
      sub_1DD941124(v0[25], v51, type metadata accessor for ChatChunk.RateLimits.Limits);
      v53 = *(v52 + 20);
      v54 = *(v51 + *(v52 + 24));
      v55 = *v51;
      sub_1DD914958(v51 + v53, v50 + v33[6], &qword_1ECD82838, &unk_1DDA185F0);
      v56 = v54 >= v55;
      *v50 = v54;
      v50[1] = v55;
      v35 = v110;
      *(v50 + v33[7]) = v56;
      *(v50 + v33[8]) = 0;
      v48 = v50;
      v49 = 0;
    }

    v34(v48, v49, 1, v33);
    v57 = v0[23];
    v58 = v0[14];
    sub_1DD9148E8(v0[19], &v94[v99]);
    if (v35(v57, 1, v58) == 1)
    {
      v59 = v0[18];
      v60 = 1;
    }

    else
    {
      v61 = v0[18];
      v62 = v0[16];
      v63 = v0[14];
      sub_1DD941124(v0[23], v62, type metadata accessor for ChatChunk.RateLimits.Limits);
      v64 = *(v63 + 20);
      v65 = *(v62 + *(v63 + 24));
      v66 = *v62;
      sub_1DD914958(v62 + v64, v61 + v33[6], &qword_1ECD82838, &unk_1DDA185F0);
      v67 = v65 >= v66;
      *v61 = v65;
      v61[1] = v66;
      v35 = v110;
      *(v61 + v33[7]) = 0;
      *(v61 + v33[8]) = v67;
      v59 = v61;
      v60 = 0;
    }

    v34(v59, v60, 1, v33);
    v68 = v0[24];
    v69 = v0[14];
    sub_1DD9148E8(v0[18], &v94[v102]);
    if (v35(v68, 1, v69) == 1)
    {
      v70 = v0[17];
      v71 = 1;
    }

    else
    {
      v73 = v0[16];
      v72 = v0[17];
      v74 = v0[14];
      sub_1DD941124(v0[24], v73, type metadata accessor for ChatChunk.RateLimits.Limits);
      v75 = *(v74 + 20);
      v76 = *(v73 + *(v74 + 24));
      v77 = *v73;
      sub_1DD914958(v73 + v75, v72 + v33[6], &qword_1ECD82838, &unk_1DDA185F0);
      *v72 = v76;
      v72[1] = v77;
      *(v72 + v33[7]) = v76 >= v77;
      *(v72 + v33[8]) = 0;
      v70 = v72;
      v71 = 0;
    }

    v34(v70, v71, 1, v33);
    v78 = v0[22];
    v79 = v0[12];
    sub_1DD9148E8(v0[17], &v94[v106]);
    sub_1DD941124(v78, v79, type metadata accessor for RateLimitBudgets);
    v81 = v0[35];
    v80 = v0[36];
    v83 = v0[30];
    v82 = v0[31];
    v85 = v0[26];
    v84 = v0[27];
    v87 = v0[24];
    v86 = v0[25];
    v89 = v0[22];
    v88 = v0[23];
    v97 = v0[20];
    v100 = v0[19];
    v103 = v0[18];
    v107 = v0[17];
    v111 = v0[16];

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_1DD93B464(char a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 337) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD93B584, 0, 0);
}

uint64_t sub_1DD93B584()
{
  v1 = *(*(v0 + 104) + 16);
  sub_1DD914294(*(v0 + 337));
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14F00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 337);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Anonymous user rate limited: %{BOOL}d", v6, 8u);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v31 = *(v0 + 337);
  v7 = *(v0 + 168);
  v8 = *(v0 + 96);

  v9 = v7[5];
  v10 = type metadata accessor for RateLimitBudgets.Limits(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v8[v9], 1, 1, v10);
  v12 = v7[6];
  v11(&v8[v12], 1, 1, v10);
  v13 = v7[7];
  v11(&v8[v13], 1, 1, v10);
  v14 = v7[8];
  v11(&v8[v14], 1, 1, v10);
  *v8 = v31;
  sub_1DD90D378(&v8[v9], &qword_1ECD82830, &unk_1DDA16350);
  v11(&v8[v9], 1, 1, v10);
  sub_1DD90D378(&v8[v12], &qword_1ECD82830, &unk_1DDA16350);
  v11(&v8[v12], 1, 1, v10);
  sub_1DD90D378(&v8[v13], &qword_1ECD82830, &unk_1DDA16350);
  v11(&v8[v13], 1, 1, v10);
  sub_1DD90D378(&v8[v14], &qword_1ECD82830, &unk_1DDA16350);
  v11(&v8[v14], 1, 1, v10);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v18 = *(v0 + 240);
  v17 = *(v0 + 248);
  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v27 = *(v0 + 160);
  v28 = *(v0 + 152);
  v29 = *(v0 + 144);
  v30 = *(v0 + 136);
  v32 = *(v0 + 128);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1DD93B900()
{
  sub_1DD940F10(v0[36], type metadata accessor for UserCredentials);
  v1 = v0[39];
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
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
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed get rate limits request: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v10 = v0[35];
  v11 = v0[36];
  v13 = v0[30];
  v12 = v0[31];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];

  sub_1DD962448();
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DD93BB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD93BB94, 0, 0);
}

uint64_t sub_1DD93BB94()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DD941194;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1DD97DEC8(v3, v2);
}

uint64_t ExternalPartnerAuthenticator.retrieveLatestRateLimitBudget(for:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  *(v3 + 112) = v5;
  v6 = *(v5 - 8);
  *(v3 + 120) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350) - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0) - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v10 = type metadata accessor for RateLimitBudgets(0);
  *(v3 + 200) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50) - 8) + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v13 = type metadata accessor for ChatChunk.RateLimits(0);
  *(v3 + 232) = v13;
  v14 = *(v13 - 8);
  *(v3 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v17 = type metadata accessor for UserCredentials(0);
  *(v3 + 264) = v17;
  v18 = *(v17 - 8);
  *(v3 + 272) = v18;
  *(v3 + 280) = *(v18 + 64);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 362) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1DD93BF3C, 0, 0);
}

uint64_t sub_1DD93BF3C()
{
  v1 = *(v0 + 104);
  if (*(__swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64)) + 176) != 1)
  {
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DDA14810();
    __swift_project_value_buffer(v3, qword_1EE16FA80);
    v4 = sub_1DDA147F0();
    v5 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "This provider does not enable rate limiting";
    goto LABEL_7;
  }

  v2 = **(v0 + 104);
  sub_1DD92C8C4(*(v0 + 256));
  v22 = *(v0 + 272);
  v23 = *(v0 + 256);
  v24 = (*(v22 + 48))(v23, 1, *(v0 + 264));
  if (v24 == 1)
  {
    sub_1DD90D378(v23, &qword_1ECD82D00, &qword_1DDA18B10);
    v25 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    if (*(v25 + *(type metadata accessor for OpenAIAuthenticationService() + 44)) == 4)
    {
      if (qword_1EE16F0F0 != -1)
      {
        swift_once();
      }

      v26 = sub_1DDA14810();
      __swift_project_value_buffer(v26, qword_1EE16FA80);
      v4 = sub_1DDA147F0();
      v5 = sub_1DDA14EE0();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_8;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "This partner does not support anonymous rate limiting";
LABEL_7:
      _os_log_impl(&dword_1DD8F8000, v4, v5, v7, v6, 2u);
      MEMORY[0x1E12B8CE0](v6, -1, -1);
LABEL_8:
      v8 = *(v0 + 96);

      v9 = type metadata accessor for RateLimitBudgets.Limits(0);
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      v11 = *(v0 + 288);
      v10 = *(v0 + 296);
      v13 = *(v0 + 248);
      v12 = *(v0 + 256);
      v15 = *(v0 + 216);
      v14 = *(v0 + 224);
      v16 = *(v0 + 208);
      v17 = *(v0 + 184);
      v18 = *(v0 + 192);
      v19 = *(v0 + 176);
      v40 = *(v0 + 168);
      v41 = *(v0 + 160);
      v42 = *(v0 + 152);
      v43 = *(v0 + 144);
      v44 = *(v0 + 136);
      v45 = *(v0 + 128);

      v20 = *(v0 + 8);

      return v20();
    }

    v38 = *(v0 + 362);
    *(v0 + 328) = sub_1DD9403B8(MEMORY[0x1E69E7CC0], &qword_1ECD830B8, &qword_1DDA18D48);
    *(v0 + 360) = v38;
    v39 = swift_task_alloc();
    *(v0 + 336) = v39;
    *v39 = v0;
    v39[1] = sub_1DD93D138;

    return sub_1DD9486BC((v0 + 360), 0);
  }

  else
  {
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v29 = *(v0 + 280);
    v30 = *(v0 + 104);
    sub_1DD941124(v23, v27, type metadata accessor for UserCredentials);
    sub_1DD928DF4(v30, v0 + 16);
    sub_1DD940BD4(v27, v28, type metadata accessor for UserCredentials);
    v31 = (*(v22 + 80) + 96) & ~*(v22 + 80);
    v32 = swift_allocObject();
    *(v0 + 304) = v32;
    v33 = *(v0 + 64);
    v32[3] = *(v0 + 48);
    v32[4] = v33;
    v32[5] = *(v0 + 80);
    v34 = *(v0 + 32);
    v32[1] = *(v0 + 16);
    v32[2] = v34;
    sub_1DD941124(v28, v32 + v31, type metadata accessor for UserCredentials);
    v35 = swift_task_alloc();
    *(v0 + 312) = v35;
    *v35 = v0;
    v35[1] = sub_1DD93C69C;
    v36 = *(v0 + 248);
    v37 = *(v0 + 104);

    return sub_1DD934CF8(v36, v37, &unk_1DDA18C18, v32);
  }
}

uint64_t sub_1DD93C69C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 304);

  if (v0)
  {
    v6 = sub_1DD93DB64;
  }

  else
  {
    v6 = sub_1DD93C7D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD93C7D0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(*(v0 + 104) + 24);
  sub_1DD940BD4(*(v0 + 248), v3, type metadata accessor for ChatChunk.RateLimits);
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_1DD9316D8(v3);
  v6 = *(v0 + 296);
  v7 = *(v0 + 248);
  if (v1)
  {
    v8 = v1;
    sub_1DD90D378(*(v0 + 224), &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v7, type metadata accessor for ChatChunk.RateLimits);
    sub_1DD940F10(v6, type metadata accessor for UserCredentials);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DDA14810();
    __swift_project_value_buffer(v9, qword_1EE16FA80);
    v10 = v1;
    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14EE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Failed get rate limits request: %@", v13, 0xCu);
      sub_1DD90D378(v14, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
    }

    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v23 = v11;
    v24 = *(v0 + 208);
    v99 = *(v0 + 192);
    v101 = *(v0 + 184);
    v103 = *(v0 + 176);
    v105 = *(v0 + 168);
    v108 = *(v0 + 160);
    v111 = *(v0 + 152);
    v115 = *(v0 + 144);
    v119 = *(v0 + 136);
    v123 = *(v0 + 128);

    sub_1DD962448();
    swift_willThrow();

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 232);
    v27 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);
    v30 = *(v0 + 192);
    v112 = *(v0 + 176);
    v116 = *(v0 + 168);
    v120 = v30;
    v31 = *(v0 + 120);
    v124 = *(v0 + 112);
    sub_1DD90D378(*(v0 + 224), &qword_1ECD82CF8, &unk_1DDA1AD50);
    sub_1DD940F10(v6, type metadata accessor for UserCredentials);
    sub_1DD914958(v7, v30, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v7 + v26[5], v29, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v7 + v26[6], v112, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD914958(v7 + v26[7], v116, &qword_1ECD82D10, &qword_1DDA185E0);
    v33 = v27 + 5;
    v32 = v27[5];
    v34 = type metadata accessor for RateLimitBudgets.Limits(0);
    v35 = *(*(v34 - 1) + 56);
    v98 = v32;
    v35(&v28[v32], 1, 1, v34);
    v113 = v27 + 6;
    v100 = v27[6];
    v35(&v28[v100], 1, 1, v34);
    v109 = v27 + 7;
    v104 = v27[7];
    v35(&v28[v104], 1, 1, v34);
    v117 = v27 + 8;
    v102 = v27[8];
    v35(&v28[v102], 1, 1, v34);
    v106 = v28;
    *v28 = 0;
    v36 = *(v31 + 48);
    v37 = v36(v120, 1, v124);
    v121 = v36;
    if (v37 == 1)
    {
      v38 = *(v0 + 160);
      v39 = 1;
    }

    else
    {
      v40 = *(v0 + 160);
      v41 = *(v0 + 128);
      v97 = v33;
      v42 = *(v0 + 112);
      sub_1DD941124(*(v0 + 192), v41, type metadata accessor for ChatChunk.RateLimits.Limits);
      v43 = *(v42 + 20);
      v44 = *(v41 + *(v42 + 24));
      v45 = *v41;
      sub_1DD914958(v41 + v43, v40 + v34[6], &qword_1ECD82838, &unk_1DDA185F0);
      v46 = v44 >= v45;
      *v40 = v44;
      v40[1] = v45;
      v33 = v97;
      v36 = v121;
      *(v40 + v34[7]) = v46;
      *(v40 + v34[8]) = 0;
      v38 = v40;
      v39 = 0;
    }

    v35(v38, v39, 1, v34);
    v47 = v35;
    v48 = *(v0 + 184);
    v49 = *(v0 + 112);
    sub_1DD9148E8(*(v0 + 160), &v106[v98]);
    if (v36(v48, 1, v49) == 1)
    {
      v50 = *(v0 + 152);
      v51 = 1;
    }

    else
    {
      v52 = *(v0 + 152);
      v53 = *(v0 + 128);
      v54 = *(v0 + 112);
      sub_1DD941124(*(v0 + 184), v53, type metadata accessor for ChatChunk.RateLimits.Limits);
      v55 = *(v54 + 20);
      v56 = *(v53 + *(v54 + 24));
      v57 = *v53;
      sub_1DD914958(v53 + v55, v52 + v34[6], &qword_1ECD82838, &unk_1DDA185F0);
      v58 = v56 >= v57;
      *v52 = v56;
      v52[1] = v57;
      v36 = v121;
      *(v52 + v34[7]) = v58;
      *(v52 + v34[8]) = 0;
      v50 = v52;
      v51 = 0;
    }

    v47(v50, v51, 1, v34);
    v59 = *(v0 + 168);
    v60 = *(v0 + 112);
    sub_1DD9148E8(*(v0 + 152), &v106[v100]);
    if (v36(v59, 1, v60) == 1)
    {
      v61 = *(v0 + 144);
      v62 = 1;
    }

    else
    {
      v63 = *(v0 + 144);
      v64 = *(v0 + 128);
      v65 = *(v0 + 112);
      sub_1DD941124(*(v0 + 168), v64, type metadata accessor for ChatChunk.RateLimits.Limits);
      v66 = *(v65 + 20);
      v67 = *(v64 + *(v65 + 24));
      v68 = *v64;
      sub_1DD914958(v64 + v66, v63 + v34[6], &qword_1ECD82838, &unk_1DDA185F0);
      v69 = v67 >= v68;
      *v63 = v67;
      v63[1] = v68;
      v36 = v121;
      *(v63 + v34[7]) = 0;
      *(v63 + v34[8]) = v69;
      v61 = v63;
      v62 = 0;
    }

    v47(v61, v62, 1, v34);
    v70 = *(v0 + 176);
    v71 = *(v0 + 112);
    sub_1DD9148E8(*(v0 + 144), &v106[v102]);
    if (v36(v70, 1, v71) == 1)
    {
      v72 = *(v0 + 136);
      v73 = 1;
    }

    else
    {
      v75 = *(v0 + 128);
      v74 = *(v0 + 136);
      v76 = *(v0 + 112);
      sub_1DD941124(*(v0 + 176), v75, type metadata accessor for ChatChunk.RateLimits.Limits);
      v77 = *(v76 + 20);
      v78 = *(v75 + *(v76 + 24));
      v79 = *v75;
      sub_1DD914958(v75 + v77, v74 + v34[6], &qword_1ECD82838, &unk_1DDA185F0);
      *v74 = v78;
      v74[1] = v79;
      *(v74 + v34[7]) = v78 >= v79;
      *(v74 + v34[8]) = 0;
      v72 = v74;
      v73 = 0;
    }

    v47(v72, v73, 1, v34);
    v80 = *(v0 + 362);
    v81 = *(v0 + 208);
    v82 = *(v0 + 216);
    sub_1DD9148E8(*(v0 + 136), &v106[v104]);
    sub_1DD941124(v81, v82, type metadata accessor for RateLimitBudgets);
    v83 = *(v0 + 216);
    v84 = v113;
    v85 = v117;
    if (v80 == 2)
    {
      v84 = v33;
    }

    if (v80)
    {
      v85 = v109;
    }

    if (v80 <= 1)
    {
      v84 = v85;
    }

    sub_1DD90ADB4(v83 + *v84, *(v0 + 96), &qword_1ECD82830, &unk_1DDA16350);
    sub_1DD940F10(v83, type metadata accessor for RateLimitBudgets);
    v87 = *(v0 + 288);
    v86 = *(v0 + 296);
    v89 = *(v0 + 248);
    v88 = *(v0 + 256);
    v91 = *(v0 + 216);
    v90 = *(v0 + 224);
    v92 = *(v0 + 208);
    v93 = *(v0 + 184);
    v94 = *(v0 + 192);
    v95 = *(v0 + 176);
    v107 = *(v0 + 168);
    v110 = *(v0 + 160);
    v114 = *(v0 + 152);
    v118 = *(v0 + 144);
    v122 = *(v0 + 136);
    v125 = *(v0 + 128);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_1DD93D138(char a1)
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 363) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD93D258, 0, 0);
}

uint64_t sub_1DD93D258()
{
  v41 = v0;
  if (*(v0 + 363) == 1)
  {
    v1 = *(v0 + 362);
    *(v0 + 344) = sub_1DD9403B8(MEMORY[0x1E69E7CC0], &qword_1ECD830B8, &qword_1DDA18D48);
    *(v0 + 361) = v1;
    v2 = swift_task_alloc();
    *(v0 + 352) = v2;
    *v2 = v0;
    v2[1] = sub_1DD93D6B0;

    return sub_1DD9486BC((v0 + 361), 1);
  }

  else
  {
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DDA14810();
    __swift_project_value_buffer(v4, qword_1EE16FA80);
    v5 = sub_1DDA147F0();
    v6 = sub_1DDA14F00();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 363);
      v8 = *(v0 + 362);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v40 = v10;
      v11 = 0xEF65736E6F707365;
      *v9 = 67109634;
      *(v9 + 4) = v7;
      *(v9 + 8) = 1024;
      *(v9 + 10) = 0;
      *(v9 + 14) = 2080;
      v12 = 0x526E6F6973736573;
      v13 = 0xEF72657465727072;
      v14 = 0x65746E4965646F63;
      if (v8 != 2)
      {
        v14 = 0x6F6C7055656C6966;
        v13 = 0xEA00000000006461;
      }

      if (v8)
      {
        v12 = 0x6E65476567616D69;
        v11 = 0xEE00726F74617265;
      }

      if (v8 <= 1)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      if (v8 <= 1)
      {
        v16 = v11;
      }

      else
      {
        v16 = v13;
      }

      v17 = sub_1DD93FA54(v15, v16, &v40);

      *(v9 + 16) = v17;
      _os_log_impl(&dword_1DD8F8000, v5, v6, "Anonymous user soft limit is reached: %{BOOL}d, hard limit is reached: %{BOOL}d, for type: %s", v9, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12B8CE0](v10, -1, -1);
      MEMORY[0x1E12B8CE0](v9, -1, -1);
    }

    v18 = *(v0 + 363);
    v19 = *(v0 + 96);
    v20 = type metadata accessor for RateLimitBudgets.Limits(0);
    v21 = v20[6];
    v22 = sub_1DDA13680();
    (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
    *v19 = -1;
    *(v19 + 1) = -1;
    v19[v20[7]] = 0;
    v19[v20[8]] = v18;
    (*(*(v20 - 1) + 56))(v19, 0, 1, v20);
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
    v26 = *(v0 + 248);
    v25 = *(v0 + 256);
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v31 = *(v0 + 192);
    v32 = *(v0 + 176);
    v34 = *(v0 + 168);
    v35 = *(v0 + 160);
    v36 = *(v0 + 152);
    v37 = *(v0 + 144);
    v38 = *(v0 + 136);
    v39 = *(v0 + 128);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1DD93D6B0(char a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 364) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD93D7D0, 0, 0);
}

uint64_t sub_1DD93D7D0()
{
  v40 = v0;
  v1 = *(v0 + 364);
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14F00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 363);
    v6 = *(v0 + 362);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    v9 = 0xEF65736E6F707365;
    *v7 = 67109634;
    *(v7 + 4) = v5;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v1;
    *(v7 + 14) = 2080;
    v10 = 0x526E6F6973736573;
    v11 = 0xEF72657465727072;
    v12 = 0x65746E4965646F63;
    if (v6 != 2)
    {
      v12 = 0x6F6C7055656C6966;
      v11 = 0xEA00000000006461;
    }

    if (v6)
    {
      v10 = 0x6E65476567616D69;
      v9 = 0xEE00726F74617265;
    }

    if (v6 <= 1)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (v6 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_1DD93FA54(v13, v14, &v39);

    *(v7 + 16) = v15;
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Anonymous user soft limit is reached: %{BOOL}d, hard limit is reached: %{BOOL}d, for type: %s", v7, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v16 = *(v0 + 363);
  v17 = *(v0 + 96);
  v18 = type metadata accessor for RateLimitBudgets.Limits(0);
  v19 = v18[6];
  v20 = sub_1DDA13680();
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  *v17 = -1;
  *(v17 + 1) = -1;
  v17[v18[7]] = v1;
  v17[v18[8]] = v16;
  (*(*(v18 - 1) + 56))(v17, 0, 1, v18);
  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v26 = *(v0 + 216);
  v25 = *(v0 + 224);
  v27 = *(v0 + 208);
  v28 = *(v0 + 184);
  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  v33 = *(v0 + 168);
  v34 = *(v0 + 160);
  v35 = *(v0 + 152);
  v36 = *(v0 + 144);
  v37 = *(v0 + 136);
  v38 = *(v0 + 128);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1DD93DB64()
{
  sub_1DD940F10(v0[37], type metadata accessor for UserCredentials);
  v1 = v0[40];
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1EE16FA80);
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
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed get rate limits request: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v11 = v0[36];
  v10 = v0[37];
  v13 = v0[31];
  v12 = v0[32];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[26];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[21];
  v23 = v0[20];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[16];

  sub_1DD962448();
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DD93DDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD93DE08, 0, 0);
}

uint64_t sub_1DD93DE08()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DD93DEB4;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1DD97DEC8(v3, v2);
}

uint64_t sub_1DD93DEB4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ExternalPartnerAuthenticator.retrieveUserInfo()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UserCredentials(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93E0B8, 0, 0);
}

uint64_t sub_1DD93E0B8()
{
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[15] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "retrieveUserInfo()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[13];
  v6 = v0[8];

  v7 = *v6;
  sub_1DD92C8C4(v5);
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  sub_1DD914958(v0[13], v8, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD90ADB4(v8, v9, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DD90D378(v0[12], &qword_1ECD82D00, &qword_1DDA18B10);
    v12 = sub_1DDA147F0();
    v13 = sub_1DDA14EE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DD8F8000, v12, v13, "Could not retrieve user info because credentials are not present.", v14, 2u);
      MEMORY[0x1E12B8CE0](v14, -1, -1);
    }

    v15 = v0[14];

    sub_1DD962448();
    sub_1DD940030();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    sub_1DD90D378(v15, &qword_1ECD82D00, &qword_1DDA18B10);
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[11];
    v19 = v0[12];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[11];
    v24 = v0[8];
    sub_1DD941124(v0[12], v23, type metadata accessor for UserCredentials);
    __swift_project_boxed_opaque_existential_1((v24 + 40), *(v24 + 64));
    v26 = *(v23 + 32);
    v25 = *(v23 + 40);
    v27 = swift_task_alloc();
    v0[16] = v27;
    *v27 = v0;
    v27[1] = sub_1DD93E5D8;

    return sub_1DD97B45C((v0 + 2), v26, v25, v0 + 49);
  }
}

uint64_t sub_1DD93E5D8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v6 = *v1;

  if (v0)
  {
    *(v2 + 50) = *(v2 + 49);
    v4 = sub_1DD93E7D4;
  }

  else
  {
    v4 = sub_1DD93E6F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD93E6F0()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 56);
  sub_1DD90D378(*(v0 + 112), &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD940F10(v3, type metadata accessor for UserCredentials);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  *v4 = *(v0 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DD93E7D4()
{
  v1 = *(v0 + 120);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14EE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 50);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_1DD930D3C();
    swift_allocError();
    *v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Failed get user info request: %@", v5, 0xCu);
    sub_1DD90D378(v6, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
  }

  v9 = *(v0 + 50);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);

  sub_1DD962448();
  sub_1DD930D3C();
  swift_allocError();
  *v12 = v9;
  swift_willThrow();
  sub_1DD90D378(v10, &qword_1ECD82D00, &qword_1DDA18B10);
  sub_1DD940F10(v11, type metadata accessor for UserCredentials);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t ExternalPartnerAuthenticator.models()()
{
  *(v1 + 56) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93EA50, 0, 0);
}

uint64_t sub_1DD93EA50()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1DD929A28((v1 + 5), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *v1;
  sub_1DD92C8C4(v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1DD93EB70;
  v5 = v0[8];

  return sub_1DD97E8A0(v5);
}

uint64_t sub_1DD93EB70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[8];
  if (v1)
  {
    sub_1DD90D378(v7, &qword_1ECD82D00, &qword_1DDA18B10);
    v8 = sub_1DD93ED4C;
  }

  else
  {
    v4[11] = a1;
    sub_1DD90D378(v7, &qword_1ECD82D00, &qword_1DDA18B10);
    v8 = sub_1DD93ECD8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD93ECD8()
{
  v1 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_1DD93ED4C()
{
  v1 = v0[10];
  v2 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DD93EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for Credentials(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_1DDA13680();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v10 = type metadata accessor for UserCredentials(0);
  v4[8] = v10;
  v11 = *(v10 - 8);
  v4[9] = v11;
  v12 = *(v11 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD93EF48, 0, 0);
}

uint64_t sub_1DD93EF48()
{
  v47 = v0;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  v0[12] = __swift_project_value_buffer(v1, qword_1EE16FA80);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14ED0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "refreshCredentialsIfCloseToExpiring()", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[7];
  v6 = v0[2];

  v7 = *v6;
  sub_1DD92C8C4(v5);
  v8 = v0[8];
  v9 = v0[7];
  if ((*(v0[9] + 48))(v9, 1, v8) == 1)
  {
    sub_1DD90D378(v9, &qword_1ECD82D00, &qword_1DDA18B10);
    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14ED0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DD8F8000, v10, v11, "User not logged in. No need to refresh credentials.", v12, 2u);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    goto LABEL_9;
  }

  v20 = v0[11];
  sub_1DD941124(v9, v20, type metadata accessor for UserCredentials);
  v21 = v20 + *(v8 + 36);
  if ((*(v21 + 8) & 1) == 0)
  {
    v22 = v0[8];
    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[4];
    v26 = *v21 * 0.2;
    v27 = v0[11] + *(v22 + 32);
    sub_1DDA13620();
    sub_1DDA13630();
    v29 = v28;
    (*(v24 + 8))(v23, v25);
    if (v29 >= 0.0)
    {
      sub_1DD940BD4(v0[11], v0[10], type metadata accessor for UserCredentials);
      v33 = sub_1DDA147F0();
      v34 = sub_1DDA14ED0();
      v35 = os_log_type_enabled(v33, v34);
      v37 = v0[10];
      v36 = v0[11];
      if (v35)
      {
        v38 = v0[4];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v46 = v40;
        *v39 = 136315138;
        v41 = *(v22 + 32);
        sub_1DD940F70(&qword_1ECD82FB8, MEMORY[0x1E6969530]);
        v42 = sub_1DDA15400();
        v44 = v43;
        sub_1DD940F10(v37, type metadata accessor for UserCredentials);
        v45 = sub_1DD93FA54(v42, v44, &v46);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_1DD8F8000, v33, v34, "No need to refresh yet. Expiration date: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1E12B8CE0](v40, -1, -1);
        MEMORY[0x1E12B8CE0](v39, -1, -1);
      }

      else
      {

        sub_1DD940F10(v37, type metadata accessor for UserCredentials);
      }

      sub_1DD940F10(v36, type metadata accessor for UserCredentials);
LABEL_9:
      v14 = v0[10];
      v13 = v0[11];
      v16 = v0[6];
      v15 = v0[7];
      v17 = v0[3];

      v18 = v0[1];

      return v18();
    }
  }

  v30 = swift_task_alloc();
  v0[13] = v30;
  *v30 = v0;
  v30[1] = sub_1DD93F51C;
  v32 = v0[2];
  v31 = v0[3];

  return sub_1DD93658C(v31);
}

uint64_t sub_1DD93F51C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1DD941190;
  }

  else
  {
    sub_1DD940F10(*(v2 + 24), type metadata accessor for Credentials);
    v4 = sub_1DD94118C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t static ExternalPartnerAuthenticator.sharedAuthenticator(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1DDA13870();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  result = sub_1DD917948(v7);
  if (result)
  {
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    if (qword_1EE16F640 != -1)
    {
      swift_once();
    }

    return sub_1DD928DF4(&xmmword_1EE16FAE0, a2);
  }

  return result;
}

double sub_1DD93F76C()
{
  LOBYTE(v2[0]) = 1;
  sub_1DD913A48(0, 0x100000000uLL, &v3);
  sub_1DD94BC74(1, v2);
  qword_1EE16FB20 = type metadata accessor for OpenAIAuthenticationService();
  unk_1EE16FB28 = &off_1F58F1458;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(qword_1EE16FB08);
  sub_1DD979F04(v2, 0x69746E6568747561, 0xED0000726F746163, 0, boxed_opaque_existential_1);
  result = *&v3;
  xmmword_1EE16FAE0 = v3;
  unk_1EE16FAF0 = *v4;
  unk_1EE16FAFD = *&v4[13];
  return result;
}

uint64_t static ExternalPartnerAuthenticator.makeAuthenticator(modelBundle:useCaseID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DDA13870();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  v14 = sub_1DD9C13D0(a2, a3, v13);
  v16 = v15;
  v18 = v17;
  (*(v9 + 16))(v12, a1, v8);
  v19 = sub_1DD917948(v12);
  if (v18)
  {
    if (v19)
    {
      v20 = v14;
      v21 = v16;
      v22 = 1;
LABEL_6:
      result = sub_1DD928DD4(v20, v21, v22);
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      return result;
    }

    LOBYTE(v27[0]) = 1;
    sub_1DD913A48(1, 0x100000000uLL, &v28);

    sub_1DD94BC74(1, v27);
    *(a4 + 64) = type metadata accessor for OpenAIAuthenticationService();
    *(a4 + 72) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 40));
    sub_1DD979F04(v27, v14, v16, 1, boxed_opaque_existential_1);
    result = sub_1DD928DD4(v14, v16, 1);
    v25 = *v29;
    *a4 = v28;
    *(a4 + 16) = v25;
    *(a4 + 29) = *&v29[13];
  }

  else
  {
    if (v19)
    {
      v20 = v14;
      v21 = v16;
      v22 = 0;
      goto LABEL_6;
    }

    if (qword_1EE16F640 != -1)
    {
      swift_once();
    }

    sub_1DD928DF4(&xmmword_1EE16FAE0, a4);
    return sub_1DD928DD4(v14, v16, 0);
  }

  return result;
}

uint64_t sub_1DD93FA54(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DD93FB20(v11, 0, 0, 1, a1, a2);
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
    sub_1DD9410C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DD93FB20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DD93FC2C(a5, a6);
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
    result = sub_1DDA150E0();
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

uint64_t sub_1DD93FC2C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DD93FC78(a1, a2);
  sub_1DD93FDA8(&unk_1F58EBEA8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DD93FC78(uint64_t a1, unint64_t a2)
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

  v6 = sub_1DD93FE94(v5, 0);
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

  result = sub_1DDA150E0();
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
        v10 = sub_1DDA14C00();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DD93FE94(v10, 0);
        result = sub_1DDA15060();
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

uint64_t sub_1DD93FDA8(uint64_t result)
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

  result = sub_1DD908F70(result, v12, 1, v3);
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

void *sub_1DD93FE94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A40, &qword_1DDA16E58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1DD93FF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DD96AC38(v5, v6);
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

unint64_t sub_1DD940030()
{
  result = qword_1ECD83060;
  if (!qword_1ECD83060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83060);
  }

  return result;
}

uint64_t sub_1DD940084(uint64_t a1)
{
  v4 = *(type metadata accessor for UserCredentials(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD9165BC;

  return sub_1DD939CE4(a1, v1 + 16, v1 + v5);
}

unint64_t sub_1DD940164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830A0, &unk_1DDA18D20);
    v3 = sub_1DDA151C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DD90ADB4(v4, v13, &qword_1ECD830A8, &qword_1DDA19780);
      result = sub_1DD96ADEC(v13);
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
      result = sub_1DD940DE4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1DD9402A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83090, &qword_1DDA1C120);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DD96AC38(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DD9403B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DDA151C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1DD96AC38(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1DD9404B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83080, &unk_1DDA1C150);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1DD940DF4();
      result = sub_1DD96AC38(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1DD9405D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83098, &qword_1DDA18CD0);
    v3 = sub_1DDA151C0();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1DD940DFC(v7, v8, v9);
      result = sub_1DD96AC38(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

void *sub_1DD9406FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83088, &unk_1DDA18CC0);
  v3 = sub_1DDA151C0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v11 = sub_1DD96AE30(v4);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v11;
  result = v6;
  v15 = (a1 + 136);
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v3[6] + v13) = v4;
    v16 = (v3[7] + 48 * v13);
    *v16 = v5;
    v16[1] = result;
    v16[2] = v8;
    v16[3] = v7;
    v16[4] = v10;
    v16[5] = v9;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v4 = *(v15 - 48);
    v20 = *(v15 - 5);
    v25 = *(v15 - 4);
    v26 = v15 + 7;
    v21 = *(v15 - 3);
    v22 = *(v15 - 2);
    v10 = *(v15 - 1);
    v23 = *v15;

    v13 = sub_1DD96AE30(v4);
    result = v25;
    v15 = v26;
    v9 = v23;
    v5 = v20;
    v7 = v22;
    v8 = v21;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD940874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83070, &unk_1DDA1C140);
    v3 = sub_1DDA151C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DD90ADB4(v4, &v13, &qword_1ECD83078, &unk_1DDA18CB0);
      v5 = v13;
      v6 = v14;
      result = sub_1DD96AC38(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DD940DE4(&v15, (v3[7] + 32 * result));
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

uint64_t objectdestroy_8Tm()
{
  v1 = (type metadata accessor for UserCredentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0[2];

  v6 = v0[3];

  v7 = v0[4];

  v8 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v9 = *(v0 + v3 + 8);

  v10 = *(v0 + v3 + 24);

  v11 = *(v0 + v3 + 40);

  v12 = *(v0 + v3 + 56);

  v13 = v1[10];
  v14 = sub_1DDA13680();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = *(v0 + v3 + v1[12] + 8);

  v16 = *(v0 + v3 + v1[13] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD940AF4(uint64_t a1)
{
  v4 = *(type metadata accessor for UserCredentials(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD93BB70(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1DD940BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD940C3C(uint64_t a1)
{
  v4 = *(type metadata accessor for UserCredentials(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD93DDE4(a1, v1 + 16, v1 + v5);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DD940D38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DD940D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_1DD940DE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD940DFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1DD940E20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD940E60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD92BD10;

  return sub_1DD93EDBC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DD940F10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD940F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_38Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DD941018(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD9165BC;

  return sub_1DD93EDBC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DD9410C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DD941124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ExternalPartnerModel.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t ExternalPartnerModel.ReleaseLabel.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t ExternalPartnerModel.ReasoningLevel.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ExternalPartnerModel.ReasoningLevel.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExternalPartnerModel.Metadata.reasoningLevels.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ExternalPartnerModel.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ExternalPartnerModel.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExternalPartnerModel.displayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ExternalPartnerModel.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ExternalPartnerModel.modelName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ExternalPartnerModel.modelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ExternalPartnerModel.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 73);
  v4 = *(v1 + 74);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 17) = v3;
  *(a1 + 18) = v4;
  *(a1 + 24) = v5;
}

uint64_t ExternalPartnerModel.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = a1[3];
  v8 = *(v1 + 80);

  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 73) = v5;
  *(v1 + 74) = v6;
  *(v1 + 80) = v7;
  return result;
}

unint64_t sub_1DD941758()
{
  result = qword_1ECD830C0;
  if (!qword_1ECD830C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD830C0);
  }

  return result;
}

unint64_t sub_1DD9417B0()
{
  result = qword_1ECD830C8;
  if (!qword_1ECD830C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD830C8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DD941828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DD941870(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD941908(uint64_t a1, int a2)
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

uint64_t sub_1DD941950(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD9419AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DD941A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

id sub_1DD941A6C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_err] = 0;
  swift_unknownObjectWeakInit();
  lseek(a1, 0, 0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:a1 closeOnDealloc:0];
  *&v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_fileHandle] = v4;
  *&v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_status] = 0;
  v1[OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_eof] = 0;
  v5 = sub_1DDA13570();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithData_, v5);

  return v6;
}

uint64_t sub_1DD941C0C()
{
  v1 = OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_status;
  if (*(v0 + OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_status) != 2)
  {
    return -1;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_fileHandle);
  result = sub_1DDA14E70();
  if (v5 >> 60 == 15)
  {
    result = 0;
    *(v2 + OBJC_IVAR____TtC5Anvil25FileDescriptorInputStream_eof) = 1;
    *(v2 + v1) = 5;
    return result;
  }

  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v5);
      v8 = result;
      v9 = v5;
LABEL_16:
      sub_1DDA135D0();
      sub_1DD90D440(v8, v9);
      return v7;
    }

    goto LABEL_14;
  }

  if (v6 != 2)
  {
    v14 = result;
    v15 = v5;
    sub_1DDA135D0();
    sub_1DD90D440(v14, v15);
    return 0;
  }

  v10 = v5;
  if (__OFSUB__(*(result + 24), *(result + 16)))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v11 = result;
  sub_1DDA135D0();
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  sub_1DD90D440(v11, v10);
  result = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_14:
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v9 = v5;
      v8 = result;
      v7 = HIDWORD(result) - result;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1DD9420B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD83100, &unk_1DDA185C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD942144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83168, &qword_1DDA19168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA18F80;
  *(inited + 40) = 0xD000000000000022;
  *(inited + 48) = 0x80000001DDA27AF0;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x80000001DDA279C0;
  *(inited + 72) = 0xD000000000000025;
  *(inited + 80) = 0x80000001DDA279E0;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000021;
  *(inited + 104) = 0x80000001DDA27B20;
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001DDA27A10;
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x80000001DDA27A30;
  *(inited + 144) = 2;
  *(inited + 152) = 0xD000000000000022;
  *(inited + 160) = 0x80000001DDA27B50;
  *(inited + 168) = 0xD000000000000010;
  *(inited + 176) = 0x80000001DDA27A50;
  *(inited + 184) = 0xD000000000000019;
  *(inited + 192) = 0x80000001DDA27A70;
  *(inited + 200) = 3;
  *(inited + 208) = 0xD00000000000001DLL;
  *(inited + 216) = 0x80000001DDA27B80;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000001DDA27A90;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001DDA27AB0;
  *(inited + 32) = 0;
  v1 = sub_1DD9406FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83170, &qword_1DDA19170);
  result = swift_arrayDestroy();
  off_1ECD83110 = v1;
  return result;
}

uint64_t sub_1DD94231C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83168, &qword_1DDA19168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA18F80;
  *(inited + 40) = 0xD00000000000001ELL;
  *(inited + 48) = 0x80000001DDA27860;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x80000001DDA279C0;
  *(inited + 72) = 0xD000000000000025;
  *(inited + 80) = 0x80000001DDA279E0;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD00000000000001DLL;
  *(inited + 104) = 0x80000001DDA278A0;
  *(inited + 112) = 0xD000000000000011;
  *(inited + 120) = 0x80000001DDA27A10;
  *(inited + 128) = 0xD00000000000001ALL;
  *(inited + 136) = 0x80000001DDA27A30;
  *(inited + 144) = 2;
  *(inited + 152) = 0xD00000000000001ELL;
  *(inited + 160) = 0x80000001DDA278E0;
  *(inited + 168) = 0xD000000000000010;
  *(inited + 176) = 0x80000001DDA27A50;
  *(inited + 184) = 0xD000000000000019;
  *(inited + 192) = 0x80000001DDA27A70;
  *(inited + 200) = 3;
  *(inited + 208) = 0xD000000000000019;
  *(inited + 216) = 0x80000001DDA278C0;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000001DDA27A90;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001DDA27AB0;
  *(inited + 32) = 0;
  v1 = sub_1DD9406FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83170, &qword_1DDA19170);
  result = swift_arrayDestroy();
  off_1ECD83118 = v1;
  return result;
}