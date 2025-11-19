uint64_t sub_1DD97E7E0()
{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  sub_1DD926314((v0 + 2));
  (*(v3 + 8))(v4, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DD97E8A0(uint64_t a1)
{
  v2[132] = v1;
  v2[131] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  v2[133] = swift_task_alloc();
  v4 = sub_1DDA136B0();
  v2[134] = v4;
  v5 = *(v4 - 8);
  v2[135] = v5;
  v6 = *(v5 + 64) + 15;
  v2[136] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10) - 8) + 64) + 15;
  v2[137] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97E9D4, 0, 0);
}

uint64_t sub_1DD97E9D4()
{
  v1 = v0[137];
  v2 = v0[131];
  sub_1DD929A28(v0[132] + 40, (v0 + 126));
  __swift_project_boxed_opaque_existential_1(v0 + 126, v0[129]);
  sub_1DD97F6F4(v2, v1);
  v3 = type metadata accessor for UserCredentials(0);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  v6 = v0[137];
  if (v5 == 1)
  {
    sub_1DD90D378(v0[137], &qword_1ECD82D00, &qword_1DDA18B10);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);

    sub_1DD97FC34(v6, type metadata accessor for UserCredentials);
  }

  v0[138] = v8;
  if (v4(v0[131], 1, v3) == 1)
  {
    v9 = v0[136];
    v10 = v0[135];
    v11 = v0[134];
    sub_1DDA136A0();
    v12 = sub_1DDA13690();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[139] = v14;
  v15 = swift_task_alloc();
  v0[140] = v15;
  *v15 = v0;
  v15[1] = sub_1DD97EBD0;

  return sub_1DD911340(v7, v8, v12, v14, 0, 0);
}

uint64_t sub_1DD97EBD0(uint64_t a1)
{
  v2 = *(*v1 + 1120);
  v3 = *(*v1 + 1112);
  v4 = *(*v1 + 1104);
  v6 = *v1;
  *(*v1 + 1128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD97ED0C, 0, 0);
}

uint64_t sub_1DD97ED0C()
{
  v1 = v0[133];
  v2 = v0[132];
  __swift_destroy_boxed_opaque_existential_1(v0 + 126);
  sub_1DD929A8C(v2 + 80, (v0 + 70));
  sub_1DDA134C0();
  v3 = sub_1DDA134E0();
  v0[142] = v3;
  v4 = *(v3 - 8);
  v0[143] = v4;
  result = (*(v4 + 48))(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[144] = v6;
    *v6 = v0;
    v6[1] = sub_1DD97EE5C;
    v7 = v0[141];
    v8 = v0[133];

    return sub_1DD950D48(v8, 0, 0xF000000000000000, 1, v7, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97EE5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1152);
  v7 = *v3;
  v5[145] = a1;
  v5[146] = a2;
  v5[147] = v2;

  v8 = v4[141];

  if (v2)
  {
    v9 = sub_1DD97F63C;
  }

  else
  {

    v9 = sub_1DD97EFB8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD97EFB8()
{
  v91 = v0;
  v1 = (v0 + 78);
  v2 = v0[147];
  v3 = v0[146];
  v4 = v0[145];
  v5 = v0[71];
  sub_1DD97F764();
  sub_1DDA13170();
  if (v2)
  {
    sub_1DD909D28(v0[145], v0[146]);
    v6 = v0[143];
    v7 = v0[142];
    v8 = v0[137];
    v9 = v0[136];
    v10 = v0[133];
    sub_1DD926314((v0 + 70));
    (*(v6 + 8))(v10, v7);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0 + 86;
    v14 = v0;
    if (qword_1ECD827B0 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v15 = v14 + 110;
      v16 = sub_1DDA14810();
      __swift_project_value_buffer(v16, qword_1ECDA20F8);
      v17 = *(v1 + 16);
      *v13 = *v1;
      v13[1] = v17;
      v13[2] = *(v1 + 32);
      *(v13 + 41) = *(v1 + 41);
      sub_1DD97F7B8(v13, (v14 + 94));
      sub_1DD97F7B8(v13, (v14 + 102));
      v18 = sub_1DDA147F0();
      v19 = sub_1DDA14ED0();
      sub_1DD97F814(v13);
      v20 = os_log_type_enabled(v18, v19);
      v21 = v14[146];
      v22 = v14[145];
      v72 = (v14 + 110);
      if (v20)
      {
        v23 = v14[146];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v90 = v25;
        *v24 = 136315138;
        v26 = v13[1];
        *(v14 + 59) = *v13;
        *(v14 + 60) = v26;
        *(v14 + 61) = v13[2];
        *(v14 + 985) = *(v13 + 41);
        v27 = sub_1DDA14B70();
        v13 = sub_1DD93FA54(v27, v28, &v90);

        *(v24 + 4) = v13;
        _os_log_impl(&dword_1DD8F8000, v18, v19, "Decoded response: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v29 = v25;
        v15 = v14 + 110;
        MEMORY[0x1E12B8CE0](v29, -1, -1);
        MEMORY[0x1E12B8CE0](v24, -1, -1);
      }

      else
      {
        sub_1DD97F814(v13);
      }

      sub_1DD909D28(v22, v21);

      v30 = v14[143];
      v31 = v14[142];
      v32 = v14[133];
      v33 = *(v1 + 16);
      *v15 = *v1;
      v15[1] = v33;
      v15[2] = *(v1 + 32);
      *(v15 + 41) = *(v1 + 41);
      sub_1DD926314((v14 + 70));
      (*(v30 + 8))(v32, v31);
      v34 = v14[112];
      v35 = *(v34 + 16);
      v36 = v14;
      if (!v35)
      {
        sub_1DD97F814(v15);
        v66 = MEMORY[0x1E69E7CC0];
        goto LABEL_28;
      }

      v86 = MEMORY[0x1E69E7CC0];
      v73 = v14;
      sub_1DD9AF19C(0, v35, 0);
      v36 = v14;
      if (*(v34 + 16))
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
    }

    v37 = 0;
    v74 = v34;
    v75 = v34 + 32;
    v38 = v86;
    v39 = 1;
    v76 = v35;
    while (1)
    {
      v40 = v75 + 136 * v37;
      *(v36 + 1) = *v40;
      v41 = *(v40 + 16);
      v42 = *(v40 + 32);
      v43 = *(v40 + 64);
      *(v36 + 4) = *(v40 + 48);
      *(v36 + 5) = v43;
      *(v36 + 2) = v41;
      *(v36 + 3) = v42;
      v44 = *(v40 + 80);
      v45 = *(v40 + 96);
      v46 = *(v40 + 112);
      *(v36 + 144) = *(v40 + 128);
      *(v36 + 7) = v45;
      *(v36 + 8) = v46;
      *(v36 + 6) = v44;
      v81 = *(v36 + 144);
      v47 = v36[17];
      v82 = v39;
      v83 = v38;
      if (v47)
      {
        v48 = *(v47 + 16);
        if (v48)
        {
          sub_1DD97F868((v36 + 2), (v36 + 36));
          v90 = MEMORY[0x1E69E7CC0];
          sub_1DD9AF1BC(0, v48, 0);
          v49 = 0;
          v1 = v90;
          v50 = *(v90 + 16);
          v84 = 24 * v50;
          do
          {
            v51 = v47;
            v52 = *(v47 + v49 + 32);
            v53 = *(v47 + v49 + 40);
            v54 = *(v47 + v49 + 48);
            v90 = v1;
            v55 = v50 + 1;
            v56 = *(v1 + 24);

            if (v50 >= v56 >> 1)
            {
              sub_1DD9AF1BC((v56 > 1), v55, 1);
              v1 = v90;
            }

            *(v1 + 16) = v55;
            v57 = v1 + v84 + v49;
            *(v57 + 32) = v52;
            *(v57 + 40) = v53;
            *(v57 + 48) = v54;
            v49 += 24;
            ++v50;
            --v48;
            v47 = v51;
          }

          while (v48);
          v36 = v73;
        }

        else
        {
          sub_1DD97F868((v36 + 2), (v36 + 53));
          v1 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        sub_1DD97F868((v36 + 2), (v36 + 19));
        v1 = 0;
      }

      v85 = *(v36 + 130);
      v80 = *(v36 + 129);
      v58 = *(v36 + 128);
      v78 = v36[14];
      v79 = v36[15];
      v13 = v36[12];
      v59 = v36[13];
      v60 = v36[8];
      v14 = v36[9];
      v61 = v36[7];
      v77 = v36[6];

      sub_1DD97F8C4((v36 + 2));
      LODWORD(v90) = *v87;
      *(&v90 + 3) = *&v87[3];
      v38 = v83;
      v63 = *(v83 + 16);
      v62 = *(v83 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1DD9AF19C((v62 > 1), v63 + 1, 1);
        v36 = v73;
        v38 = v83;
      }

      *(v38 + 16) = v63 + 1;
      v64 = v38 + 88 * v63;
      *(v64 + 32) = (v58 & 1) == 0;
      v65 = *(&v90 + 3);
      *(v64 + 33) = v90;
      *(v64 + 36) = v65;
      *(v64 + 40) = v13;
      *(v64 + 48) = v59;
      *(v64 + 56) = v60;
      *(v64 + 64) = v14;
      *(v64 + 72) = v77;
      *(v64 + 80) = v61;
      *(v64 + 88) = v78;
      *(v64 + 96) = v79;
      *(v64 + 104) = v80;
      *(v64 + 105) = v85;
      *(v64 + 106) = 0x3020001u >> (8 * v81);
      *(v64 + 107) = v88;
      *(v64 + 111) = v89;
      *(v64 + 112) = v1;
      v37 = v82;
      if (v82 == v76)
      {
        break;
      }

      v39 = v82 + 1;
      if (v82 >= *(v74 + 16))
      {
        goto LABEL_31;
      }
    }

    v66 = v38;
    sub_1DD97F814(v72);
LABEL_28:
    v67 = v36[137];
    v68 = v36;
    v69 = v36[136];
    v70 = v68[133];

    v71 = v68[1];

    return v71(v66);
  }
}

uint64_t sub_1DD97F63C()
{
  v1 = v0[147];
  v2 = v0[143];
  v3 = v0[142];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[133];
  sub_1DD926314((v0 + 70));
  (*(v2 + 8))(v6, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD97F6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD97F764()
{
  result = qword_1ECD835C8;
  if (!qword_1ECD835C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835C8);
  }

  return result;
}

unint64_t sub_1DD97F918()
{
  result = qword_1ECD835D0;
  if (!qword_1ECD835D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835D0);
  }

  return result;
}

unint64_t sub_1DD97F96C()
{
  result = qword_1ECD83570;
  if (!qword_1ECD83570)
  {
    type metadata accessor for ChatChunk.RateLimits(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83570);
  }

  return result;
}

uint64_t sub_1DD97F9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatChunk.RateLimits(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD97FA28()
{
  result = qword_1ECD835D8;
  if (!qword_1ECD835D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835D8);
  }

  return result;
}

unint64_t sub_1DD97FA7C()
{
  result = qword_1ECD835E0;
  if (!qword_1ECD835E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835E0);
  }

  return result;
}

unint64_t sub_1DD97FAD0()
{
  result = qword_1ECD835E8;
  if (!qword_1ECD835E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835E8);
  }

  return result;
}

unint64_t sub_1DD97FB24()
{
  result = qword_1ECD835F0;
  if (!qword_1ECD835F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835F0);
  }

  return result;
}

unint64_t sub_1DD97FB78()
{
  result = qword_1ECD835F8;
  if (!qword_1ECD835F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD835F8);
  }

  return result;
}

uint64_t sub_1DD97FBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD97FC34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DD97FC94()
{
  result = qword_1ECD83600;
  if (!qword_1ECD83600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83600);
  }

  return result;
}

uint64_t sub_1DD97FCE8()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v20 = 0u;
    v21 = 0u;
LABEL_15:
    sub_1DD90D378(&v20, &qword_1ECD83618, &qword_1DDA1AF98);
    v5 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v22 = *v0;
  v20 = *v0;
  sub_1DD90D2EC(&v22, &v18);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0x4449707061, 0xE500000000000000);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    goto LABEL_15;
  }

  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v18;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = *(&v18 + 1);
  }

  else
  {
    v6 = 0;
  }

LABEL_16:
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v10 = *(v0 + 4);
  v9 = *(v0 + 5);
  v16 = *(v0 + 7);
  v17 = *(v0 + 6);
  v12 = *(v0 + 8);
  v11 = *(v0 + 9);
  v13 = *(v0 + 80);
  v14 = sub_1DD980208();
  if (v13)
  {
    if (v14 <= 1u)
    {
      if (v14)
      {
        v12 = v10;
      }

      else
      {
        v12 = v7;
      }
    }

    else if (v14 != 3)
    {
      v12 = v17;
    }
  }

  if (!v6)
  {
    return v12;
  }

  return v5;
}

uint64_t sub_1DD97FF00(uint64_t a1, uint64_t a2)
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_12:
    sub_1DD90D378(&v11, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v13 = *v2;
  v11 = *v2;
  sub_1DD90D2EC(&v13, &v9);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](a1, a2);
  v6 = sub_1DDA14B00();

  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD980080()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0x6973726556697061, 0xEA00000000006E6FLL);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD980208()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1DD90D378(&v8, &qword_1ECD83618, &qword_1DDA1AF98);
    return 4;
  }

  v10 = *v0;
  v5 = *v0;
  sub_1DD90D2EC(&v10, v7);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0x6D6E6F7269766E65, 0xEB00000000746E65);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v8 = v5;
  v9 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return sub_1DD917508();
  }

  return 4;
}

uint64_t sub_1DD98038C()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000015, 0x80000001DDA28360);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD980518()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD00000000000001ALL, 0x80000001DDA28340);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD9806A0()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 2;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000011, 0x80000001DDA28320);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DD980824()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 2;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000018, 0x80000001DDA283A0);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1DD9809A8()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_12:
    sub_1DD90D378(&v7, &qword_1ECD83618, &qword_1DDA1AF98);
    return 0;
  }

  v9 = *v0;
  v7 = *v0;
  sub_1DD90D2EC(&v9, &v5);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD00000000000001CLL, 0x80000001DDA28300);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DD980B30()
{
  if (qword_1EE16F3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE16FAD0;
  if (!qword_1EE16FAD0)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1DD90D378(&v8, &qword_1ECD83618, &qword_1DDA1AF98);
    return sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v10 = *v0;
  v5 = *v0;
  sub_1DD90D2EC(&v10, v7);
  MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
  MEMORY[0x1E12B7AB0](0xD000000000000013, 0x80000001DDA28380);
  v2 = sub_1DDA14B00();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_1DDA14FB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v8 = v5;
  v9 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83620, &qword_1DDA1AFA0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  return sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
}

void sub_1DD980CC4()
{
  if (qword_1EE16F3E0 != -1)
  {
    swift_once();
  }

  if (byte_1EE16FAD8 == 1)
  {
    v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v1 = sub_1DDA14B00();
    v2 = [v0 initWithSuiteName_];
  }

  else
  {
    v2 = 0;
  }

  qword_1EE16FAD0 = v2;
}

void sub_1DD980D84()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    byte_1EE16FAD8 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD980DCC()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FCE8();
}

uint64_t sub_1DD980E18()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FF00(0x79654B697061, 0xE600000000000000);
}

uint64_t sub_1DD980E74()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FF00(0x6973726556697061, 0xEA00000000006E6FLL);
}

uint64_t sub_1DD980ED8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD980208();
}

uint64_t sub_1DD980F24()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD98038C();
}

uint64_t sub_1DD980F74()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD980518();
}

uint64_t sub_1DD980FC0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD9806A0();
}

uint64_t sub_1DD98100C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD980824();
}

uint64_t sub_1DD981058()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FF00(0x6C65646F6DLL, 0xE500000000000000);
}

uint64_t sub_1DD9810B4()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FF00(0x4C525565736162, 0xE700000000000000);
}

uint64_t sub_1DD981114()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD9809A8();
}

uint64_t sub_1DD981160()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FF00(0x6E65674172657375, 0xE900000000000074);
}

uint64_t sub_1DD9811C4()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FF00(0x6E696E6F73616572, 0xEE006C6576654C67);
}

unint64_t sub_1DD981230()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD980B30();
}

id sub_1DD98127C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if ((a3 & 1) == 0)
  {
    goto LABEL_4;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (!internalBuild)
    {
      return 0;
    }

LABEL_4:
    if (qword_1EE16F3D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE16FAD0;
    if (qword_1EE16FAD0)
    {
      v11 = v4[1];
      *&v25 = *v4;
      *(&v25 + 1) = v11;

      MEMORY[0x1E12B7AB0](46, 0xE100000000000000);
      MEMORY[0x1E12B7AB0](a1, a2);
      v12 = sub_1DDA14B00();

      v13 = [v10 valueForKey_];

      if (v13)
      {
        sub_1DDA14FB0();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25 = v23;
      v26 = v24;
      if (*(&v24 + 1))
      {
        v15 = swift_dynamicCast();
        if (v15)
        {
          v14 = v23;
        }

        else
        {
          v14 = 0;
        }

        if (v15)
        {
          v16 = *(&v23 + 1);
        }

        else
        {
          v16 = 0;
        }

LABEL_20:
        v17 = v4[11];
        if (*(v17 + 16) && (v18 = sub_1DD96AC38(a1, a2), (v19 & 1) != 0))
        {
          v20 = (*(v17 + 56) + 16 * v18);
          v22 = *v20;
          v21 = v20[1];

          if (!v16)
          {
            return v22;
          }
        }

        else
        {
          v22 = 0;
          if (!v16)
          {
            return v22;
          }
        }

        return v14;
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    sub_1DD90D378(&v25, &qword_1ECD83618, &qword_1DDA1AF98);
    v14 = 0;
    v16 = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD981484()
{
  v1 = MEMORY[0x1E69E7CC0];
  v50 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  sub_1DD981F8C(*(v0 + 88), sub_1DD981F84);

  if (qword_1EE16F3D8 != -1)
  {
    goto LABEL_35;
  }

  while (qword_1EE16FAD0)
  {
    v2 = qword_1EE16FAD0;
    v3 = [v2 dictionaryRepresentation];
    v4 = sub_1DDA14AA0();

    v5 = *(v4 + 16);
    if (!v5)
    {

      return v50;
    }

    v40 = v2;
    v49 = v1;
    sub_1DD9AF014(0, v5, 0);
    v1 = v49;
    v6 = v4 + 64;
    v7 = -1 << *(v4 + 32);
    v8 = sub_1DDA14FD0();
    v9 = 0;
    v42 = *(v4 + 36);
    v10 = v5;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_30;
      }

      if (v42 != *(v4 + 36))
      {
        goto LABEL_31;
      }

      v12 = (*(v4 + 48) + 16 * v8);
      v14 = *v12;
      v13 = v12[1];
      sub_1DD9410C8(*(v4 + 56) + 32 * v8, v48);
      v46[0] = v14;
      v46[1] = v13;
      sub_1DD940DE4(v48, v47);

      if (sub_1DDA14C50())
      {
        sub_1DD9410C8(v47, v45);
        if (swift_dynamicCast())
        {

          v15 = sub_1DDA14BD0();
          v16 = sub_1DD954D60(v15, v14, v13);
          v18 = v17;
          v20 = v19;
          v41 = v1;
          v22 = v21;

          v23 = MEMORY[0x1E12B7A50](v16, v18, v20, v22);
          v25 = v24;
          v1 = v41;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45[0] = v50;
          v27 = v23;
          v10 = v5;
          sub_1DD9CB364(v43, v44, v27, v25, isUniquelyReferenced_nonNull_native);

          v50 = v45[0];
        }
      }

      sub_1DD90D378(v46, &qword_1ECD83610, &qword_1DDA1AF90);
      v49 = v1;
      v29 = *(v1 + 16);
      v28 = *(v1 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1DD9AF014((v28 > 1), v29 + 1, 1);
        v1 = v49;
      }

      v31 = v1;
      *(v1 + 16) = v30;
      v1 = 1 << *(v4 + 32);
      if (v8 >= v1)
      {
        goto LABEL_32;
      }

      v6 = v4 + 64;
      v32 = *(v4 + 64 + 8 * v11);
      if ((v32 & (1 << v8)) == 0)
      {
        goto LABEL_33;
      }

      if (v42 != *(v4 + 36))
      {
        goto LABEL_34;
      }

      v33 = v32 & (-2 << (v8 & 0x3F));
      if (v33)
      {
        v1 = __clz(__rbit64(v33)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v11 << 6;
        v35 = v11 + 1;
        v36 = (v4 + 72 + 8 * v11);
        while (v35 < (v1 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_1DD982204(v8, v42, 0);
            v1 = __clz(__rbit64(v37)) + v34;
            goto LABEL_25;
          }
        }

        sub_1DD982204(v8, v42, 0);
LABEL_25:
        v10 = v5;
      }

      ++v9;
      v8 = v1;
      v1 = v31;
      if (v9 == v10)
      {

        return v50;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  return v50;
}

uint64_t sub_1DD9818F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  result = sub_1DDA14C50();
  if (result)
  {

    v11 = sub_1DDA14BD0();
    v12 = sub_1DD954D60(v11, a1, a2);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1E12B7A50](v12, v14, v16, v18);
    v21 = v20;

    v22 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a5;
    *a5 = 0x8000000000000000;
    sub_1DD9CB364(a3, a4, v19, v21, isUniquelyReferenced_nonNull_native);

    *a5 = v24;
  }

  return result;
}

uint64_t sub_1DD981A10()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD97FCE8();
}

id sub_1DD981A54()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD98127C(0x79654B697061, 0xE600000000000000, 1);
}

uint64_t sub_1DD981AAC()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD980080();
}

uint64_t sub_1DD981AF0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD980208();
}

uint64_t sub_1DD981B34()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD98038C();
}

uint64_t sub_1DD981B7C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD980518();
}

uint64_t sub_1DD981BC0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD9806A0();
}

id sub_1DD981C04()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD98127C(0x6C65646F6DLL, 0xE500000000000000, 0);
}

id sub_1DD981C5C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD98127C(0x4C525565736162, 0xE700000000000000, 1);
}

uint64_t sub_1DD981CB8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD9809A8();
}

id sub_1DD981CFC()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD98127C(0x6E65674172657375, 0xE900000000000074, 0);
}

id sub_1DD981D5C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1DD98127C(0x6E696E6F73616572, 0xEE006C6576654C67, 0);
}

void sub_1DD981DC8(uint64_t a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    internalBuild = MobileGestalt_get_internalBuild();

    *a1 = 0x776F506B63616C62;
    *(a1 + 8) = 0xEB00000000726564;
    *(a1 + 16) = 0xD00000000000001CLL;
    *(a1 + 24) = 0x80000001DDA28280;
    *(a1 + 32) = 0xD00000000000001CLL;
    *(a1 + 40) = 0x80000001DDA282A0;
    *(a1 + 48) = 0xD00000000000001CLL;
    *(a1 + 56) = 0x80000001DDA282C0;
    *(a1 + 64) = 0xD00000000000001CLL;
    *(a1 + 72) = 0x80000001DDA282E0;
    *(a1 + 80) = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD981EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1DD981F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD981F8C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1DD9AF014(0, v2, 0);
  v3 = v31;
  v5 = -1 << *(a1 + 32);
  v29 = a1 + 64;
  result = sub_1DDA14FD0();
  v7 = result;
  v8 = 0;
  v30 = *(a1 + 36);
  v27 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v29 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v13 = *v11;
    v12 = v11[1];
    v14 = (*(a1 + 56) + 16 * v7);
    v15 = *v14;
    v16 = v14[1];

    a2(v13, v12, v15, v16);

    v18 = *(v31 + 16);
    v17 = *(v31 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = sub_1DD9AF014((v17 > 1), v18 + 1, 1);
    }

    *(v31 + 16) = v19;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v20 = *(v29 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (a1 + 72 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1DD982204(v7, v30, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1DD982204(v7, v30, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v27)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DD982204(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DD982210@<X0>(void (*a1)(_OWORD *__return_ptr, char *, uint64_t *)@<X0>, _OWORD *a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_1DDA13F30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  sub_1DD90ADB4(v2, &v18 - v11, &qword_1ECD82FD0, &qword_1DDA189A8);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v18(v20, v8, &v22);
    if (v3)
    {
      return (*(v5 + 8))(v8, v4);
    }

    result = (*(v5 + 8))(v8, v4);
    v15 = v20[0];
    v16 = v20[1];
    v14 = v21;
  }

  v17 = v19;
  *v19 = v15;
  v17[1] = v16;
  *(v17 + 4) = v14;
  return result;
}

uint64_t sub_1DD982410(uint64_t a1)
{
  v37 = sub_1DDA14180();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF0BC(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1DDA14FD0();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_1DDA14160();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1DD9AF0BC((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1DD982204(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1DD982204(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

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

uint64_t sub_1DD982718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DD90ADB4(a3, v27 - v11, &qword_1ECD82D30, &qword_1DDA188D0);
  v13 = sub_1DDA14D60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DDA14CD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DDA14B80() + 32;
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

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
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

uint64_t sub_1DD982A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DD90ADB4(a3, v27 - v11, &qword_1ECD82D30, &qword_1DDA188D0);
  v13 = sub_1DDA14D60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DDA14CD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DDA14B80() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

      return v24;
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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DD982D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DD90ADB4(a3, v27 - v11, &qword_1ECD82D30, &qword_1DDA188D0);
  v13 = sub_1DDA14D60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DDA14CD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DDA14B80() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

      return v24;
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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DD983040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DD90ADB4(a3, v27 - v11, &qword_1ECD82D30, &qword_1DDA188D0);
  v13 = sub_1DDA14D60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DDA14CD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DDA14B80() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

      return v24;
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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DD983354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v7 = sub_1DDA13420();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1DDA134E0();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v30);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  if (a2)
  {
    v34 = 47;
    v35 = 0xE100000000000000;
    MEMORY[0x1E12B7AB0](a1, a2);
    v19 = v35;
    v29 = v34;
  }

  else
  {
    v29 = 0;
    v19 = 0xE000000000000000;
  }

  sub_1DD910E48(v16);
  v34 = 0x6E6F69737365732FLL;
  v35 = 0xE900000000000073;
  v28 = *MEMORY[0x1E6968F70];
  v27 = v8[13];
  v27(v11);
  v26 = sub_1DD9313D4();
  sub_1DDA134D0();
  v24 = v18;
  v20 = v8[1];
  v20(v11, v7);
  v25 = *(v12 + 8);
  v21 = v30;
  v25(v16, v30);
  v34 = v29;
  v35 = v19;

  MEMORY[0x1E12B7AB0](v31, v32);

  (v27)(v11, v28, v7);
  v22 = v24;
  sub_1DDA134D0();
  v20(v11, v7);

  return (v25)(v22, v21);
}

uint64_t sub_1DD983648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v29 = a5;
  v5 = sub_1DDA13420();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DDA134E0();
  v22 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  sub_1DD910E48(v15);
  v30 = 0x6E6F69737365732FLL;
  v31 = 0xE900000000000073;
  v24 = *MEMORY[0x1E6968F70];
  v23 = v6[13];
  v23(v9);
  v21[1] = sub_1DD9313D4();
  sub_1DDA134D0();
  v18 = v6[1];
  v18(v9, v5);
  v19 = *(v11 + 8);
  v19(v15, v10);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1DDA15070();

  v30 = 47;
  v31 = 0xE100000000000000;
  MEMORY[0x1E12B7AB0](v25, v26);
  MEMORY[0x1E12B7AB0](0x7364616F6C70752FLL, 0xE90000000000002FLL);
  MEMORY[0x1E12B7AB0](v27, v28);
  MEMORY[0x1E12B7AB0](0x74656C706D6F632FLL, 0xE900000000000065);
  (v23)(v9, v24, v5);
  sub_1DDA134D0();
  v18(v9, v5);

  return (v19)(v17, v22);
}

uint64_t sub_1DD983948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v29 = a5;
  v5 = sub_1DDA13420();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DDA134E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  sub_1DD910E48(v15);
  v30 = 0x6E6F69737365732FLL;
  v31 = 0xE900000000000073;
  v24 = *MEMORY[0x1E6968F70];
  v23 = v6[13];
  v23(v9);
  v22 = sub_1DD9313D4();
  sub_1DDA134D0();
  v18 = v6[1];
  v18(v9, v5);
  v21 = *(v11 + 8);
  v21(v15, v10);
  v30 = 47;
  v31 = 0xE100000000000000;
  MEMORY[0x1E12B7AB0](v25, v26);
  MEMORY[0x1E12B7AB0](0x2F73656C69662FLL, 0xE700000000000000);
  MEMORY[0x1E12B7AB0](v27, v28);
  (v23)(v9, v24, v5);
  sub_1DDA134D0();
  v18(v9, v5);

  return (v21)(v17, v10);
}

id sub_1DD983C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v674 = a8;
  v680 = a6;
  v657 = a4;
  v658 = a5;
  v650 = a9;
  v651 = a3;
  v648 = a1;
  v649 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v696 = &v597 - v17;
  v725 = sub_1DDA134E0();
  v676 = *(v725 - 1);
  v18 = *(v676 + 64);
  MEMORY[0x1EEE9AC00](v725);
  v724 = &v597 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v710 = type metadata accessor for MessageContent(0);
  v709 = *(v710 - 8);
  v20 = *(v709 + 64);
  v21 = MEMORY[0x1EEE9AC00](v710);
  v714 = &v597 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v699 = (&v597 - v23);
  v698 = sub_1DDA13DA0();
  v678 = *(v698 - 8);
  v24 = *(v678 + 64);
  v25 = MEMORY[0x1EEE9AC00](v698);
  v653 = &v597 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v697 = &v597 - v27;
  *&v716 = sub_1DDA13DC0();
  v28 = *(v716 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v716);
  *&v726 = &v597 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v721 = sub_1DDA13EB0();
  v31 = *(v721 - 1);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v721);
  v720 = &v597 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83710, &qword_1DDA1B2B8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v669 = &v597 - v36;
  v673 = sub_1DDA13D80();
  v37 = *(v673 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v673);
  v661 = &v597 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v706 = sub_1DDA13E70();
  v679 = *(v706 - 8);
  v40 = *(v679 + 64);
  v41 = MEMORY[0x1EEE9AC00](v706);
  v668 = &v597 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v705 = &v597 - v43;
  v723 = sub_1DDA13EC0();
  v708 = *(v723 - 8);
  v44 = *(v708 + 64);
  v45 = MEMORY[0x1EEE9AC00](v723);
  v667 = &v597 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v722 = &v597 - v47;
  v703 = sub_1DDA13DF0();
  v48 = *(v703 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v703);
  v670 = (&v597 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = MEMORY[0x1EEE9AC00](v50);
  v701 = &v597 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v702 = (&v597 - v54);
  *&v719 = sub_1DDA13E10();
  *&v718 = *(v719 - 8);
  v55 = *(v718 + 64);
  v56 = MEMORY[0x1EEE9AC00](v719);
  v664 = &v597 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v700 = &v597 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v652 = &v597 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v717 = (&v597 - v63);
  MEMORY[0x1EEE9AC00](v62);
  *&v727 = &v597 - v64;
  v685 = sub_1DDA13E40();
  v684 = *(v685 - 8);
  v65 = *(v684 + 64);
  v66 = MEMORY[0x1EEE9AC00](v685);
  v647 = &v597 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v711 = &v597 - v68;
  v689 = sub_1DDA14700();
  v666 = *(v689 - 8);
  v69 = *(v666 + 64);
  MEMORY[0x1EEE9AC00](v689);
  v692 = &v597 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v687 = sub_1DDA14660();
  v660 = *(v687 - 8);
  v71 = *(v660 + 64);
  MEMORY[0x1EEE9AC00](v687);
  v686 = &v597 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v712 = sub_1DDA146A0();
  isa = v712[-1].isa;
  v73 = *(isa + 8);
  v74 = MEMORY[0x1EEE9AC00](v712);
  v691 = &v597 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v693 = &v597 - v76;
  v656 = sub_1DDA13A80();
  v654 = *(v656 - 8);
  v77 = *(v654 + 64);
  MEMORY[0x1EEE9AC00](v656);
  v655 = &v597 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v663 = sub_1DDA14420();
  v662 = *(v663 - 8);
  v79 = *(v662 + 64);
  MEMORY[0x1EEE9AC00](v663);
  v694 = &v597 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v707 = &v597 - v83;
  v690 = sub_1DDA144B0();
  v681 = *(v690 - 8);
  v84 = *(v681 + 64);
  v85 = MEMORY[0x1EEE9AC00](v690);
  v688 = &v597 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v659 = (&v597 - v87);
  v682 = sub_1DDA144A0();
  v677 = *(v682 - 8);
  v88 = *(v677 + 64);
  MEMORY[0x1EEE9AC00](v682);
  v672 = &v597 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83718, &qword_1DDA1B2C0);
  v91 = *(*(v90 - 8) + 64);
  v92 = MEMORY[0x1EEE9AC00](v90 - 8);
  v671 = &v597 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v683 = &v597 - v94;
  v715 = sub_1DDA14720();
  v713 = *(v715 - 8);
  v95 = *(v713 + 64);
  v96 = MEMORY[0x1EEE9AC00](v715);
  v704 = &v597 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  v695 = &v597 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83720, &qword_1DDA1B2C8);
  v100 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99 - 8);
  v102 = &v597 - v101;
  v729 = sub_1DDA13840();
  v730 = *(v729 - 1);
  v103 = *(v730 + 64);
  MEMORY[0x1EEE9AC00](v729);
  v728 = (&v597 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  v732 = sub_1DDA13830();
  v765 = *(v732 - 8);
  v105 = *(v765 + 8);
  MEMORY[0x1EEE9AC00](v732);
  v731 = (&v597 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DDA139F0();
  if ((v107 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v124 = sub_1DDA14810();
    __swift_project_value_buffer(v124, qword_1ECDA20E0);
    v125 = sub_1DDA147F0();
    v126 = sub_1DDA14EE0();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v750[0] = v128;
      *v127 = 136315138;
      v741 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v129 = sub_1DDA14B70();
      v131 = sub_1DD93FA54(v129, v130, v750);

      *(v127 + 4) = v131;
      _os_log_impl(&dword_1DD8F8000, v125, v126, "%s does not support random seeds!", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      MEMORY[0x1E12B8CE0](v128, -1, -1);
      MEMORY[0x1E12B8CE0](v127, -1, -1);
    }

    v750[0] = 0;
    v750[1] = 0xE000000000000000;
    sub_1DDA15070();

    v750[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v750[0] = sub_1DDA14B70();
    v750[1] = v132;
    v133 = "t frequency penalty!";
    v134 = 0xD00000000000001FLL;
    goto LABEL_22;
  }

  sub_1DDA13A40();
  if ((v108 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v135 = sub_1DDA14810();
    __swift_project_value_buffer(v135, qword_1ECDA20E0);
    v136 = sub_1DDA147F0();
    v137 = sub_1DDA14EE0();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v750[0] = v139;
      *v138 = 136315138;
      v741 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v140 = sub_1DDA14B70();
      v142 = sub_1DD93FA54(v140, v141, v750);

      *(v138 + 4) = v142;
      _os_log_impl(&dword_1DD8F8000, v136, v137, "%s does not support frequency penalty!", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x1E12B8CE0](v139, -1, -1);
      MEMORY[0x1E12B8CE0](v138, -1, -1);
    }

    v750[0] = 0;
    v750[1] = 0xE000000000000000;
    sub_1DDA15070();

    v750[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v750[0] = sub_1DDA14B70();
    v750[1] = v143;
    v133 = "t length penalty!";
    v134 = 0xD000000000000024;
    goto LABEL_22;
  }

  sub_1DDA13A10();
  if ((v109 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v145 = sub_1DDA14810();
    __swift_project_value_buffer(v145, qword_1ECDA20E0);
    v146 = sub_1DDA147F0();
    v147 = sub_1DDA14EE0();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v750[0] = v149;
      *v148 = 136315138;
      v741 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v150 = sub_1DDA14B70();
      v152 = sub_1DD93FA54(v150, v151, v750);

      *(v148 + 4) = v152;
      _os_log_impl(&dword_1DD8F8000, v146, v147, "%s does not support length penalty!", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x1E12B8CE0](v149, -1, -1);
      MEMORY[0x1E12B8CE0](v148, -1, -1);
    }

    v750[0] = 0;
    v750[1] = 0xE000000000000000;
    sub_1DDA15070();

    v750[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v750[0] = sub_1DDA14B70();
    v750[1] = v153;
    v123 = " does not support length penalty!";
    goto LABEL_32;
  }

  sub_1DDA13A20();
  if ((v110 & 1) == 0)
  {
    if (qword_1ECD827A8 != -1)
    {
      goto LABEL_275;
    }

    goto LABEL_29;
  }

  sub_1DDA13A70();
  v111 = sub_1DDA139C0();
  v112 = (*(*(v111 - 8) + 48))(v102, 1, v111);
  sub_1DD90D378(v102, &qword_1ECD83720, &qword_1DDA1B2C8);
  if (v112 != 1)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v171 = sub_1DDA14810();
    __swift_project_value_buffer(v171, qword_1ECDA20E0);
    v172 = sub_1DDA147F0();
    v173 = sub_1DDA14EE0();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v750[0] = v175;
      *v174 = 136315138;
      v741 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v176 = sub_1DDA14B70();
      v178 = sub_1DD93FA54(v176, v177, v750);

      *(v174 + 4) = v178;
      _os_log_impl(&dword_1DD8F8000, v172, v173, "%s does not support sampling strategies!", v174, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v175);
      MEMORY[0x1E12B8CE0](v175, -1, -1);
      MEMORY[0x1E12B8CE0](v174, -1, -1);
    }

    v750[0] = 0;
    v750[1] = 0xE000000000000000;
    sub_1DDA15070();

    v750[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v750[0] = sub_1DDA14B70();
    v750[1] = v179;
    v133 = "Unknown tool call kind: ";
    v134 = 0xD000000000000026;
LABEL_22:
    v144 = v133 | 0x8000000000000000;
    goto LABEL_33;
  }

  v113 = *(sub_1DDA13A30() + 16);

  if (v113)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v114 = sub_1DDA14810();
    __swift_project_value_buffer(v114, qword_1ECDA20E0);
    v115 = sub_1DDA147F0();
    v116 = sub_1DDA14EE0();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v750[0] = v118;
      *v117 = 136315138;
      v741 = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v119 = sub_1DDA14B70();
      v121 = sub_1DD93FA54(v119, v120, v750);

      *(v117 + 4) = v121;
      _os_log_impl(&dword_1DD8F8000, v115, v116, "%s does not support stop sequences!", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x1E12B8CE0](v118, -1, -1);
      MEMORY[0x1E12B8CE0](v117, -1, -1);
    }

    v750[0] = 0;
    v750[1] = 0xE000000000000000;
    sub_1DDA15070();

    v750[0] = &type metadata for ChatGPTProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
    v750[0] = sub_1DDA14B70();
    v750[1] = v122;
    v123 = " does not support stop sequences!";
    goto LABEL_32;
  }

  v605 = a7;
  v180 = sub_1DD9C5CA4(v680);
  v609 = *(v180 + 16);
  v613 = v180;
  if (!v609)
  {
    v626 = 0;
    v630 = 0;
    v185 = MEMORY[0x1E69E7CC0];
    v612 = MEMORY[0x1E69E7CC0];
    v256 = v707;
    v285 = v681;
    v286 = v682;
    v287 = v683;
LABEL_115:
    v614 = v185;
    v288 = *(v674 + 16);
    v711 = v288;
    if (!v288)
    {
      v363 = MEMORY[0x1E69E7CC0];
      v765 = MEMORY[0x1E69E7CC0];
      v341 = v694;
      v364 = v677;
LABEL_154:
      v725 = v363;
      v732 = a12;
      if (*(a11 + 16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v765 = sub_1DD90889C(0, *(v765 + 2) + 1, 1, v765);
        }

        v365 = v765;
        v367 = *(v765 + 2);
        v366 = *(v765 + 3);
        if (v367 >= v366 >> 1)
        {
          v365 = sub_1DD90889C((v366 > 1), v367 + 1, 1, v765);
        }

        v765 = v365;
        *(v365 + 2) = v367 + 1;
        v368 = &v365[48 * v367];
        *(v368 + 4) = 1;
        *(v368 + 40) = 0u;
        *(v368 + 56) = 0u;
        v368[72] = 0x80;
        v341 = v694;
        v286 = v682;
        v364 = v677;
        v287 = v683;
      }

      if (*(v732 + 16))
      {
        (*(v364 + 16))(v287, v732 + ((*(v364 + 80) + 32) & ~*(v364 + 80)), v286);
        v287 = v683;
        v364 = v677;
        v286 = v682;
        v369 = 0;
      }

      else
      {
        v369 = 1;
      }

      v379 = v286;
      v380 = v287;
      (*(v364 + 56))(v287, v369, 1, v286);
      v381 = v671;
      sub_1DD90ADB4(v380, v671, &qword_1ECD83718, &qword_1DDA1B2C0);
      if ((*(v364 + 48))(v381, 1, v379) == 1)
      {
        sub_1DD90D378(v380, &qword_1ECD83718, &qword_1DDA1B2C0);
        v757 = 0u;
        v758 = 0u;
        memset(v759, 0, 25);
      }

      else
      {
        (*(v364 + 32))(v672, v381, v379);
        v382 = swift_allocObject();
        *(v382 + 16) = v732;
        v383 = v659;
        *v659 = v382;
        v384 = v681;
        v385 = v690;
        (*(v681 + 104))(v383, *MEMORY[0x1E69A0B70]);

        v386 = sub_1DD9C25C0(v383);
        if (v13)
        {

          (*(v384 + 8))(v383, v385);
          (*(v364 + 8))(v672, v379);
          sub_1DD90D378(v683, &qword_1ECD83718, &qword_1DDA1B2C0);
        }

        v410 = *(v384 + 8);
        v732 = v386;
        v410(v383, v385);
        v411 = v672;
        v412 = sub_1DDA14470();
        v414 = v413;
        (*(v364 + 8))(v411, v379);
        sub_1DD90D378(v683, &qword_1ECD83718, &qword_1DDA1B2C0);
        *&v757 = 0x6863735F6E6F736ALL;
        *(&v757 + 1) = 0xEB00000000616D65;
        *&v758 = 0x65736E6F70736572;
        *(&v758 + 1) = 0xE800000000000000;
        *&v759[0] = v732;
        *(&v759[0] + 1) = v412;
        *&v759[1] = v414;
        v341 = v694;
        BYTE8(v759[1]) = 1;
      }

      sub_1DD90ADB4(a10, v256, &qword_1ECD82FC0, &qword_1DDA18998);
      v415 = v662;
      v416 = v663;
      if ((*(v662 + 48))(v256, 1, v663) == 1)
      {
        v417 = 0;
        v418 = 3;
      }

      else
      {
        (*(v415 + 32))(v341, v256, v416);
        sub_1DD92BD18(v341, &v741, v750);
        if (v13)
        {
          (*(v415 + 8))(v341, v416);

          sub_1DD90D378(&v757, &qword_1ECD83748, &unk_1DDA227C0);
        }

        v13 = 0;
        (*(v415 + 8))(v341, v416);
        v417 = v750[0];
        v418 = v750[1];
      }

      v419 = v765;
      v732 = v417;
      if (v711)
      {
        sub_1DD9B3384(v417, v418);
        v420 = v418;
      }

      else
      {
        v417 = 0;
        v420 = 3;
      }

      v731 = v418;
      v765 = v419;
      v680 = v13;
      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        goto LABEL_286;
      }

      v421 = result;
      internalBuild = MobileGestalt_get_internalBuild();

      v750[0] = v417;
      v750[1] = v420;
      v751 = v417;
      v752 = v420;
      v753 = v417;
      v754 = v420;
      v423 = &v755 + 1;
      v755 = xmmword_1DDA1AFF0;
      v756 = internalBuild;
      v424 = v675[4].isa;
      v425 = v675[5].isa;
      __swift_project_boxed_opaque_existential_1(&v675[1].isa, v424);
      v426 = *(v425 + 4);
      sub_1DD9B3384(v417, v420);
      sub_1DD9B3384(v417, v420);
      v730 = v417;
      v729 = v420;
      sub_1DD9B3384(v417, v420);
      v427 = v426(v424, v425);
      if (v756 == 1)
      {
        v428 = v658;
        if (v427 <= 1u)
        {
          if (v427)
          {
            v423 = &v752;
            v429 = v751;
          }

          else
          {
            v423 = &v750[1];
            v429 = v750[0];
          }
        }

        else if (v427 == 3)
        {
          v429 = v755;
        }

        else
        {
          v423 = &v754;
          v429 = v753;
        }
      }

      else
      {
        v429 = v755;
        v428 = v658;
      }

      v430 = *v423;
      sub_1DD9B3384(v429, *v423);
      v31 = v675;
      v431 = v680;
      sub_1DD988FC4(&v760);
      v13 = v431;
      if (v431)
      {

        sub_1DD90D378(v750, &qword_1ECD83740, &qword_1DDA1B2D8);
        sub_1DD90D378(&v757, &qword_1ECD83748, &unk_1DDA227C0);

        sub_1DD9B33A8(v429, v430);
        sub_1DD9B33A8(v730, v729);
        sub_1DD9B33A8(v732, v731);
      }

      v728 = v429;
      v718 = v761;
      v719 = v760;
      v717 = v762;
      v432 = *(v31 + 32);
      v433 = *(v31 + 40);
      __swift_project_boxed_opaque_existential_1((v31 + 8), v432);
      v434 = (*(v433 + 7))(v432, v433);
      *&v727 = v430;
      if (v434 == 2 || (v434 & 1) == 0)
      {
        goto LABEL_203;
      }

      v435 = sub_1DDA13F30();
      if ((*(*(v435 - 8) + 48))(v428, 1, v435) == 1)
      {
        if (qword_1ECD827A8 != -1)
        {
          goto LABEL_284;
        }

        goto LABEL_198;
      }

LABEL_202:

      v626 = 0;
      v630 = 0;
      goto LABEL_203;
    }

    v732 = *(v713 + 16);
    v289 = v674 + ((*(v713 + 80) + 32) & ~*(v713 + 80));
    v730 = *(v713 + 72);
    v731 = (isa + 88);
    LODWORD(v727) = *MEMORY[0x1E69A0DD0];
    v713 += 16;
    v765 = (v713 - 8);
    v721 = (isa + 8);
    v724 = isa + 96;
    *&v718 = v666 + 32;
    *&v719 = v285 + 8;
    v720 = (v666 + 8);
    v725 = MEMORY[0x1E69E7CC0];
    v709 = v289;
    v290 = v715;
    v291 = v692;
    v292 = v691;
    v293 = v695;
    (v732)(v695, v289, v715);
    while (1)
    {
      sub_1DDA146B0();
      v294 = v712;
      v729 = *v731;
      v295 = v729(v292, v712);
      if (v295 == v727)
      {
        (*v724)(v292, v294);
        v296 = v689;
        (*v718)(v291, v292, v689);
        v297 = v291;
        v723 = sub_1DDA146F0();
        *&v726 = v298;
        v299 = sub_1DDA146E0();
        v301 = v300;
        v302 = v688;
        sub_1DDA146D0();
        v303 = sub_1DD9C25C0(v302);
        if (v13)
        {

          (*v719)(v302, v690);
          (*v720)(v297, v296);
          (*v765)(v695, v715);
        }

        v722 = v303;
        (*v719)(v302, v690);
        (*v720)(v297, v296);
        v728 = *v765;
        (v728)(v695, v715);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v680 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v725 = sub_1DD90889C(0, *(v725 + 2) + 1, 1, v725);
        }

        v305 = v726;
        v306 = v723;
        v307 = v725;
        v309 = *(v725 + 2);
        v308 = *(v725 + 3);
        if (v309 >= v308 >> 1)
        {
          v307 = sub_1DD90889C((v308 > 1), v309 + 1, 1, v725);
        }

        *(v307 + 2) = v309 + 1;
        v725 = v307;
        v310 = &v307[48 * v309];
        *(v310 + 4) = v306;
        *(v310 + 5) = v305;
        *(v310 + 6) = v299;
        *(v310 + 7) = v301;
        *(v310 + 8) = v722;
        v310[72] = 1;
        v13 = v680;
        v290 = v715;
        v291 = v692;
        v292 = v691;
        v293 = v695;
      }

      else
      {
        v728 = *v765;
        (v728)(v293, v290);
        (*v721)(v292, v294);
      }

      v289 += v730;
      if (!--v288)
      {
        break;
      }

      (v732)(v293, v289, v290);
    }

    v680 = v13;
    LODWORD(v723) = *MEMORY[0x1E69A0DB8];
    LODWORD(v720) = *MEMORY[0x1E69A0DB0];
    LODWORD(v717) = *MEMORY[0x1E69A0DC8];
    LODWORD(v714) = *MEMORY[0x1E69A0DC0];
    *&v719 = v660 + 32;
    *&v718 = v660 + 8;
    v339 = MEMORY[0x1E69E7CC0];
    v716 = xmmword_1DDA1AFE0;
    v710 = xmmword_1DDA1AFD0;
    v340 = v711;
    v341 = v694;
    v342 = v693;
    v343 = v704;
    v344 = v709;
    v345 = v715;
    while (1)
    {
      v346 = v344;
      v347 = v343;
      (v732)();
      sub_1DDA146B0();
      v348 = v712;
      v349 = v729(v342, v712);
      if (v349 == v723)
      {
        break;
      }

      if (v349 == v720)
      {
        (v728)(v704, v715);
        (*v721)(v342, v348);
        v353 = 0;
        v727 = 0u;
        v354 = 0x80;
        v726 = v716;
        v355 = v346;
        goto LABEL_145;
      }

      v355 = v346;
      if (v349 == v717)
      {
        (v728)(v704, v715);
        v353 = 0;
        v726 = 0u;
        v354 = 0x80;
        v727 = 0u;
        goto LABEL_145;
      }

      v356 = v349;
      (v728)(v704, v715);
      if (v356 == v714)
      {
        v353 = 0;
        v727 = 0u;
        v354 = 0x80;
        v726 = v710;
        goto LABEL_145;
      }

      (*v721)(v342, v712);
LABEL_150:
      v344 = v355 + v730;
      --v340;
      v343 = v704;
      if (!v340)
      {
        v765 = v339;
        v13 = v680;
        v363 = v725;
        v256 = v707;
        v286 = v682;
        v364 = v677;
        v287 = v683;
        goto LABEL_154;
      }
    }

    (*v724)(v342, v348);
    v350 = v342;
    v351 = v686;
    v352 = v687;
    (*v719)(v686, v350, v687);
    sub_1DD9FFEF4(v763);
    v727 = v763[1];
    v726 = v763[0];
    v353 = v764;
    (*v718)(v351, v352);
    (v728)(v347, v345);
    v354 = v722 & 1 | 0x40;
    LODWORD(v722) = v722 & 1 | 0x40;
    v355 = v346;
LABEL_145:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v339 = sub_1DD90889C(0, *(v339 + 2) + 1, 1, v339);
    }

    v357 = v339;
    v358 = *(v339 + 2);
    v359 = v357;
    v360 = *(v357 + 3);
    if (v358 >= v360 >> 1)
    {
      v359 = sub_1DD90889C((v360 > 1), v358 + 1, 1, v359);
    }

    *(v359 + 2) = v358 + 1;
    v361 = &v359[48 * v358];
    v339 = v359;
    v362 = v727;
    *(v361 + 2) = v726;
    *(v361 + 3) = v362;
    *(v361 + 8) = v353;
    v361[72] = v354;
    v341 = v694;
    v342 = v693;
    goto LABEL_150;
  }

  v626 = 0;
  v630 = 0;
  v181 = 0;
  v182 = v180 + ((*(v684 + 80) + 32) & ~*(v684 + 80));
  v642 = v718 + 88;
  v643 = v718 + 16;
  v641 = *MEMORY[0x1E69DA7E8];
  v625 = *MEMORY[0x1E69DA7F0];
  v639 = (v718 + 96);
  v624 = (v28 + 32);
  v623 = *MEMORY[0x1E69DA730];
  v619 = (v676 + 32);
  v620 = (v676 + 48);
  v617 = (v676 + 8);
  v618 = (v676 + 16);
  v616 = *MEMORY[0x1E69DA728];
  v621 = (v28 + 8);
  v627 = (v48 + 104);
  v628 = (v48 + 8);
  v629 = *MEMORY[0x1E69DA7A0];
  v632 = (v31 + 8);
  v633 = (v31 + 32);
  v601 = (v37 + 32);
  v599 = (v37 + 8);
  v603 = (v48 + 88);
  v604 = (v37 + 48);
  *(&v183 + 1) = 1;
  v602 = xmmword_1DDA18A90;
  *&v183 = 134217984;
  v615 = v183;
  v637 = *MEMORY[0x1E69DA808];
  v600 = *MEMORY[0x1E69DA7B8];
  v184 = *MEMORY[0x1E69DA7B0];
  v597 = *MEMORY[0x1E69DA7A8];
  v598 = v184;
  v622 = (v678 + 88);
  v640 = (v718 + 8);
  v638 = v708 + 16;
  v631 = (v679 + 96);
  v635 = (v708 + 8);
  v636 = (v679 + 88);
  v611 = (v684 + 8);
  v612 = MEMORY[0x1E69E7CC0];
  v185 = MEMORY[0x1E69E7CC0];
  v680 = v12;
  v186 = v711;
  v187 = v719;
  v607 = v182;
  v608 = v684 + 16;
  while (1)
  {
    v614 = v185;
    if (v181 >= *(v180 + 16))
    {
      __break(1u);
      goto LABEL_281;
    }

    v188 = *(v684 + 72);
    v610 = v181;
    v606 = *(v684 + 16);
    v606(v186, v182 + v188 * v181, v685);
    v189 = sub_1DDA13E20();
    v190 = v189;
    v676 = *(v189 + 16);
    if (v676)
    {
      break;
    }

    v192 = MEMORY[0x1E69E7CC0];
LABEL_75:
    v644 = v192;

    v234 = sub_1DDA13E30();
    v634 = *(v234 + 16);
    if (v634)
    {
      v235 = 0;
      v236 = MEMORY[0x1E69E7CC0];
      while (v235 < *(v234 + 16))
      {
        v237 = v234;
        v238 = v234 + ((*(v708 + 80) + 32) & ~*(v708 + 80)) + *(v708 + 72) * v235;
        v239 = *(v708 + 16);
        v240 = v722;
        v241 = v723;
        v239(v722, v238, v723);
        v242 = v705;
        sub_1DDA13E80();
        v243 = v706;
        v244 = (*v636)(v242, v706);
        if (v244 != v637)
        {

          if (qword_1ECD827A8 != -1)
          {
            swift_once();
          }

          v311 = sub_1DDA14810();
          __swift_project_value_buffer(v311, qword_1ECDA20E0);
          v312 = v667;
          v313 = v240;
          v239(v667, v240, v241);
          v314 = sub_1DDA147F0();
          v315 = sub_1DDA14EE0();
          if (os_log_type_enabled(v314, v315))
          {
            v316 = v312;
            v317 = swift_slowAlloc();
            v750[0] = swift_slowAlloc();
            v318 = v750[0];
            *v317 = 136315138;
            sub_1DDA13E80();
            v725 = sub_1DDA14B70();
            v320 = v319;
            v321 = *v635;
            *&v726 = v635 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            *&v727 = v321;
            v321(v316, v241);
            v322 = sub_1DD93FA54(v725, v320, v750);

            *(v317 + 4) = v322;
            _os_log_impl(&dword_1DD8F8000, v314, v315, "Unknown tool call kind: %s", v317, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v318);
            v323 = v318;
            v313 = v722;
            MEMORY[0x1E12B8CE0](v323, -1, -1);
            MEMORY[0x1E12B8CE0](v317, -1, -1);
          }

          else
          {

            v370 = *v635;
            *&v726 = v635 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            *&v727 = v370;
            v370(v312, v241);
          }

          v750[0] = 0;
          v750[1] = 0xE000000000000000;
          sub_1DDA15070();

          v750[0] = 0xD000000000000018;
          v750[1] = 0x80000001DDA28710;
          sub_1DDA13E80();
          v371 = sub_1DDA14B70();
          MEMORY[0x1E12B7AB0](v371);

          v372 = v731;
          sub_1DDA13800();
          v373 = v765;
          v374 = v728;
          v375 = v732;
          (*(v765 + 2))(v728, v372, v732);
          v376 = v730;
          v377 = v729;
          (*(v730 + 104))(v374, *MEMORY[0x1E69DA4C0], v729);
          sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
          swift_allocError();
          (*(v376 + 16))(v378, v374, v377);
          swift_willThrow();
          (*(v376 + 8))(v374, v377);
          (*(v373 + 1))(v372, v375);
          (v727)(v313, v723);
          (*v611)(v711, v685);
          return (*(v679 + 8))(v705, v706);
        }

        (*v631)(v242, v243);
        (v633->isa)(v720, v242, v721);
        v676 = sub_1DDA13E60();
        v646 = v245;
        v645 = sub_1DDA13E90();
        v247 = v246;
        v248 = sub_1DDA13EA0();
        v250 = v249;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v236 = sub_1DD908BE8(0, *(v236 + 2) + 1, 1, v236);
        }

        v252 = *(v236 + 2);
        v251 = *(v236 + 3);
        if (v252 >= v251 >> 1)
        {
          v236 = sub_1DD908BE8((v251 > 1), v252 + 1, 1, v236);
        }

        ++v235;
        (v632->isa)(v720, v721);
        (*v635)(v722, v723);
        *(v236 + 2) = v252 + 1;
        v253 = &v236[48 * v252];
        v254 = v645;
        v255 = v646;
        *(v253 + 4) = v676;
        *(v253 + 5) = v255;
        *(v253 + 6) = v254;
        *(v253 + 7) = v247;
        *(v253 + 8) = v248;
        *(v253 + 9) = v250;
        v13 = v680;
        v256 = v707;
        v234 = v237;
        if (v634 == v235)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_275:
      swift_once();
LABEL_29:
      v154 = sub_1DDA14810();
      __swift_project_value_buffer(v154, qword_1ECDA20E0);
      v155 = sub_1DDA147F0();
      v156 = sub_1DDA14EE0();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v750[0] = v158;
        *v157 = 136315138;
        v741 = &type metadata for ChatGPTProvider;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
        v159 = sub_1DDA14B70();
        v161 = sub_1DD93FA54(v159, v160, v750);

        *(v157 + 4) = v161;
        _os_log_impl(&dword_1DD8F8000, v155, v156, "%s does not support maximum tokens!", v157, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v158);
        MEMORY[0x1E12B8CE0](v158, -1, -1);
        MEMORY[0x1E12B8CE0](v157, -1, -1);
      }

      v750[0] = 0;
      v750[1] = 0xE000000000000000;
      sub_1DDA15070();

      v750[0] = &type metadata for ChatGPTProvider;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83728, &qword_1DDA1B2D0);
      v750[0] = sub_1DDA14B70();
      v750[1] = v162;
      v123 = " does not support maximum tokens!";
LABEL_32:
      v144 = (v123 - 32) | 0x8000000000000000;
      v134 = 0xD000000000000021;
LABEL_33:
      MEMORY[0x1E12B7AB0](v134, v144);
      v163 = v731;
      sub_1DDA13800();
      v164 = v765;
      v165 = v728;
      v166 = v732;
      (*(v765 + 2))(v728, v163, v732);
      v167 = v730;
      v168 = v729;
      (*(v730 + 104))(v165, *MEMORY[0x1E69DA4C0], v729);
      sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
      swift_allocError();
      (*(v167 + 16))(v169, v165, v168);
      swift_willThrow();
      (*(v167 + 8))(v165, v168);
      return (*(v164 + 1))(v163, v166);
    }

    v256 = v707;
LABEL_86:

    v257 = v702;
    sub_1DDA13E00();
    v258 = v701;
    v31 = v703;
    (*v627)(v701, v629, v703);
    sub_1DD9B48D0(&qword_1ECD83738, 255, MEMORY[0x1E69DA7C0]);
    v259 = sub_1DDA14AF0();
    v260 = *v628;
    (*v628)(v258, v31);
    v676 = v260;
    v260(v257, v31);
    if (v259)
    {
      v186 = v711;
      (*v611)(v711, v685);

      v180 = v613;
      v187 = v719;
    }

    else
    {
      v261 = v669;
      sub_1DDA13DD0();
      v262 = v673;
      v263 = (*v604)(v261, 1, v673);
      v187 = v719;
      if (v263 == 1)
      {
        sub_1DD90D378(v261, &qword_1ECD83710, &qword_1DDA1B2B8);
      }

      else
      {
        v264 = v661;
        (*v601)();
        v265 = sub_1DDA13D70();
        if (*(v265 + 16))
        {
          v266 = v718;
          v267 = v652;
          (*(v718 + 16))(v652, v265 + ((*(v266 + 80) + 32) & ~*(v266 + 80)), v187);

          v268 = (*(v266 + 88))(v267, v187);
          if (v268 == v641)
          {
            (*v639)(v267, v187);
            v269 = *v267;
            v270 = *(v267 + 1);
            v271 = sub_1DDA13D60();
            v273 = v272;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v614 = sub_1DD908ADC(0, *(v614 + 2) + 1, 1, v614);
            }

            v275 = *(v614 + 2);
            v274 = *(v614 + 3);
            if (v275 >= v274 >> 1)
            {
              v614 = sub_1DD908ADC((v274 > 1), v275 + 1, 1, v614);
            }

            (*v599)(v661, v673);
            v276 = v614;
            *(v614 + 2) = v275 + 1;
            v277 = &v276[32 * v275];
            *(v277 + 4) = v271;
            *(v277 + 5) = v273;
            *(v277 + 6) = v269;
            *(v277 + 7) = v270;
            v13 = v680;
            v187 = v719;
          }

          else
          {
            (*v599)(v264, v262);
            (*v640)(v267, v187);
          }
        }

        else
        {
          (*v599)(v264, v262);
        }
      }

      v31 = v670;
      sub_1DDA13E00();
      v278 = (*v603)(v31, v703);
      if (v278 == v629)
      {
        v31 = 0;
LABEL_105:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v612 = sub_1DD9089B8(0, *(v612 + 2) + 1, 1, v612);
        }

        v281 = *(v612 + 2);
        v280 = *(v612 + 3);
        if (v281 >= v280 >> 1)
        {
          v612 = sub_1DD9089B8((v280 > 1), v281 + 1, 1, v612);
        }

        v186 = v711;
        (*v611)(v711, v685);
        v282 = v612;
        v180 = v613;
        *(v612 + 2) = v281 + 1;
        v283 = &v282[56 * v281];
        v284 = v644;
        *(v283 + 4) = v31;
        *(v283 + 5) = v284;
        *(v283 + 3) = v602;
        *(v283 + 8) = 0;
        *(v283 + 9) = 0;
        v283[80] = 0;
        goto LABEL_110;
      }

      v279 = v613;
      if (v278 == v600)
      {
        v31 = 1;
        goto LABEL_105;
      }

      if (v278 == v598)
      {
        v31 = 2;
        goto LABEL_105;
      }

      if (v278 != v597)
      {

        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v577 = sub_1DDA14810();
        __swift_project_value_buffer(v577, qword_1ECDA20E0);
        v606(v647, v711, v685);
        v31 = sub_1DDA147F0();
        v578 = sub_1DDA14EE0();
        if (os_log_type_enabled(v31, v578))
        {
          v579 = swift_slowAlloc();
          v580 = swift_slowAlloc();
          v750[0] = v580;
          *v579 = 136315138;
          v581 = v647;
          sub_1DDA13E00();
          v582 = sub_1DDA14B70();
          v584 = v583;
          v585 = *v611;
          *&v727 = v611 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          *&v726 = v585;
          v585(v581, v685);
          v586 = sub_1DD93FA54(v582, v584, v750);

          *(v579 + 4) = v586;
          _os_log_impl(&dword_1DD8F8000, v31, v578, "Unknown role: %s", v579, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v580);
          MEMORY[0x1E12B8CE0](v580, -1, -1);
          MEMORY[0x1E12B8CE0](v579, -1, -1);

LABEL_282:
          v750[0] = 0;
          v750[1] = 0xE000000000000000;
          sub_1DDA15070();

          strcpy(v750, "Unknown role: ");
          HIBYTE(v750[1]) = -18;
          v588 = v711;
          sub_1DDA13E00();
          v589 = sub_1DDA14B70();
          MEMORY[0x1E12B7AB0](v589);

          v590 = v731;
          sub_1DDA13800();
          v591 = v765;
          v592 = v728;
          v593 = v732;
          (*(v765 + 2))(v728, v590, v732);
          v594 = v730;
          v595 = v729;
          (*(v730 + 104))(v592, *MEMORY[0x1E69DA4C0], v729);
          sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
          swift_allocError();
          (*(v594 + 16))(v596, v592, v595);
          swift_willThrow();
          (*(v594 + 8))(v592, v595);
          (*(v591 + 1))(v590, v593);
          (v726)(v588, v685);
          return (v676)(v670, v703);
        }

LABEL_281:

        v587 = *v611;
        *&v727 = v611 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        *&v726 = v587;
        v587(v647, v685);
        goto LABEL_282;
      }

      v186 = v711;
      (*v611)(v711, v685);

      v180 = v279;
    }

LABEL_110:
    v181 = v610 + 1;
    v185 = v614;
    v285 = v681;
    v286 = v682;
    v287 = v683;
    v182 = v607;
    if (v610 + 1 == v609)
    {
      goto LABEL_115;
    }
  }

  v191 = 0;
  v192 = MEMORY[0x1E69E7CC0];
  v646 = v189;
  while (1)
  {
    if (v191 >= *(v190 + 16))
    {
      __break(1u);
      goto LABEL_202;
    }

    v195 = v718;
    v196 = v190 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v718 + 72) * v191;
    v197 = *(v718 + 16);
    v198 = v727;
    v197(v727, v196, v187);
    v199 = v717;
    v197(v717, v198, v187);
    v200 = (*(v195 + 88))(v199, v187);
    if (v200 != v641)
    {
      break;
    }

    v644 = v192;
    (*v639)(v199, v187);
    v201 = *v199;
    v202 = v199[1];
    v645 = v201;
    v31 = v702;
    sub_1DDA13E00();
    v203 = v701;
    v204 = v703;
    (*v627)(v701, v629, v703);
    v205 = sub_1DDA13DE0();
    v206 = *v628;
    (*v628)(v203, v204);
    v206(v31, v204);
    if (v205)
    {
      v207 = v626;
      if (v630)
      {
        v208 = v630;
      }

      else
      {
        v207 = 0;
        v208 = 0xE000000000000000;
      }

      v750[0] = v207;
      v750[1] = v208;

      MEMORY[0x1E12B7AB0](v645, v202);

      v626 = v750[0];
      v630 = v750[1];
      v187 = v719;
      (*v640)(v727, v719);
      v13 = v680;
      v192 = v644;
      v190 = v646;
      goto LABEL_46;
    }

    v214 = v699;
    *v699 = v645;
    v214[1] = v202;
    swift_storeEnumTagMultiPayload();
    v192 = v644;
    v215 = swift_isUniquelyReferenced_nonNull_native();
    v190 = v646;
    if ((v215 & 1) == 0)
    {
      v192 = sub_1DD908D08(0, v192[2].isa + 1, 1, v192);
    }

    v13 = v680;
    v187 = v719;
    v217 = v192[2].isa;
    v216 = v192[3].isa;
    if (v217 >= v216 >> 1)
    {
      v192 = sub_1DD908D08(v216 > 1, v217 + 1, 1, v192);
    }

    (*v640)(v727, v187);
    v192[2].isa = (v217 + 1);
    v193 = v192 + ((*(v709 + 80) + 32) & ~*(v709 + 80)) + *(v709 + 72) * v217;
    v194 = v699;
LABEL_45:
    sub_1DD9B4978(v194, v193, type metadata accessor for MessageContent);
LABEL_46:
    if (v676 == ++v191)
    {
      goto LABEL_75;
    }
  }

  v209 = v700;
  if (v200 == v625)
  {
    (*v639)(v199, v187);
    (*v624)(v726, v199, v716);
    v210 = v697;
    sub_1DDA13DB0();
    v211 = (*v622)(v210, v698);
    if (v211 == v623)
    {
      v31 = v192;
      v212 = 0xE900000000000067;
      v213 = 0x6E702F6567616D69;
    }

    else
    {
      if (v211 != v616)
      {

        v750[0] = 0;
        v750[1] = 0xE000000000000000;
        sub_1DDA15070();

        v750[0] = 0xD00000000000001ALL;
        v750[1] = 0x80000001DDA286F0;
        v398 = v653;
        sub_1DDA13DB0();
        sub_1DD9B48D0(&qword_1ECD83730, 255, MEMORY[0x1E69DA738]);
        v399 = v698;
        v400 = sub_1DDA15400();
        v402 = v401;
        v725 = *(v678 + 8);
        (v725)(v398, v399);
        MEMORY[0x1E12B7AB0](v400, v402);

        v403 = v731;
        sub_1DDA13800();
        v404 = v765;
        v405 = v728;
        v406 = v732;
        (*(v765 + 2))(v728, v403, v732);
        v407 = v730;
        v408 = v729;
        (*(v730 + 104))(v405, *MEMORY[0x1E69DA4C0], v729);
        sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
        swift_allocError();
        (*(v407 + 16))(v409, v405, v408);
        swift_willThrow();
        (*(v407 + 8))(v405, v408);
        (*(v404 + 1))(v403, v406);
        (*v621)(v726, v716);
        (*v640)(v727, v719);
        (*v611)(v711, v685);
        return (v725)(v697, v698);
      }

      v31 = v192;
      v212 = 0xEA00000000006765;
      v213 = 0x706A2F6567616D69;
    }

    v218 = sub_1DDA13D90();
    v13 = v219;
    v220 = sub_1DDA13580();
    v222 = v221;
    sub_1DD909D28(v218, v13);
    v750[0] = 0;
    v750[1] = 0xE000000000000000;
    sub_1DDA15070();

    v750[0] = 0x3A61746164;
    v750[1] = 0xE500000000000000;
    MEMORY[0x1E12B7AB0](v213, v212);
    MEMORY[0x1E12B7AB0](0x2C3436657361623BLL, 0xE800000000000000);
    MEMORY[0x1E12B7AB0](v220, v222);
    v223 = v696;
    sub_1DDA134C0();

    v224 = v725;
    if ((*v620)(v223, 1, v725) == 1)
    {
      __break(1u);
LABEL_284:
      swift_once();
LABEL_198:
      v436 = sub_1DDA14810();
      __swift_project_value_buffer(v436, qword_1ECDA20E0);
      v437 = sub_1DDA147F0();
      v438 = sub_1DDA14F00();
      if (os_log_type_enabled(v437, v438))
      {
        v439 = swift_slowAlloc();
        *v439 = 0;
        _os_log_impl(&dword_1DD8F8000, v437, v438, "PromptTemplate not passed, keeping instructions.", v439, 2u);
        MEMORY[0x1E12B8CE0](v439, -1, -1);
      }

      v31 = v675;
LABEL_203:
      v440 = *(v31 + 32);
      v441 = *(v31 + 40);
      __swift_project_boxed_opaque_existential_1((v31 + 8), v440);
      v442 = (*(v441 + 8))(v440, v441);
      v680 = v13;
      if (v442 == 2 || (v442 & 1) == 0)
      {
        v444 = 0;
        v445 = 0;
      }

      else
      {

        v444 = v626;
        v445 = v443;
      }

      v446 = v675[4].isa;
      v447 = v675[5].isa;
      __swift_project_boxed_opaque_existential_1(&v675[1].isa, v446);
      v448 = (*(v447 + 8))(v446, v447);
      if (v448 == 2 || (v448 & 1) == 0)
      {
        v450 = 0;
        v449 = 0;
      }

      else
      {
        v449 = v630;

        v450 = v626;
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v451 = result;
        v452 = MobileGestalt_get_internalBuild();

        v741 = v626;
        v742 = v630;
        v743 = v626;
        v744 = v630;
        v745 = v444;
        v746 = v445;
        v453 = &v748;
        v747 = v450;
        v748 = v449;
        v749 = v452;
        v454 = v675;
        v455 = v675[4].isa;
        v456 = v675[5].isa;
        __swift_project_boxed_opaque_existential_1(&v675[1].isa, v455);
        v457 = *(v456 + 4);

        v458 = v457(v455, v456);
        if (v749 != 1)
        {
          goto LABEL_215;
        }

        if (v458 <= 1u)
        {
          if (v458)
          {
            v453 = &v744;
            v459 = v743;
          }

          else
          {
            v453 = &v742;
            v459 = v741;
          }
        }

        else if (v458 == 3)
        {
LABEL_215:
          v459 = v747;
        }

        else
        {
          v453 = &v746;
          v459 = v745;
        }

        v460 = *v453;

        result = MobileGestalt_get_current_device();
        if (result)
        {
          v461 = result;
          v462 = MobileGestalt_get_internalBuild();

          v463 = v454;
          v464 = v454[4].isa;
          v465 = v454[5].isa;
          __swift_project_boxed_opaque_existential_1(&v463[1].isa, v464);
          v466 = (*(v465 + 4))(v464, v465);
          v467 = 0;
          v468 = 1;
          v469 = v605;
          if (v462)
          {
            v470 = v675;
            if (v466 != 4)
            {
              if (v466 - 2 >= 2)
              {
                v468 = 0;
                v467 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v467 = 0;
              }
            }
          }

          else
          {
            v470 = v675;
          }

          *&v716 = v460;
          v740 = v467;
          result = MobileGestalt_get_current_device();
          if (result)
          {
            v471 = result;

            sub_1DD90D378(v750, &qword_1ECD83740, &qword_1DDA1B2D8);
            sub_1DD90D378(&v741, &qword_1ECD83750, &qword_1DDA1B2E0);
            sub_1DD9B33A8(v730, v729);
            sub_1DD9B33A8(v732, v731);
            v472 = MobileGestalt_get_internalBuild();

            v738[0] = xmmword_1DDA1B000;
            v738[1] = xmmword_1DDA1B000;
            memset(&v738[2], 0, 32);
            v739 = v472;
            v473 = v470;
            v474 = v470[4].isa;
            v475 = v470[5].isa;
            __swift_project_boxed_opaque_existential_1(&v473[1].isa, v474);
            v476 = (*(v475 + 4))(v474, v475);
            if (v472)
            {
              v477 = v675;
              if (v476 - 2 >= 3)
              {
                v480 = 0;
                v478 = 0x7463757274736E69;
                v479 = 0xEC000000736E6F69;
              }

              else
              {
                v478 = 0;
                v479 = 0;
                v480 = 1;
              }
            }

            else
            {
              v478 = 0;
              v479 = 0;
              v480 = 1;
              v477 = v675;
            }

            sub_1DD90D378(v738, &qword_1ECD83750, &qword_1DDA1B2E0);
            if ((v480 & 1) == 0)
            {
              if (v468)
              {
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v467 = sub_1DD908634(0, *(v467 + 2) + 1, 1, v467);
                }

                v482 = *(v467 + 2);
                v481 = *(v467 + 3);
                if (v482 >= v481 >> 1)
                {
                  v467 = sub_1DD908634((v481 > 1), v482 + 1, 1, v467);
                }

                *(v467 + 2) = v482 + 1;
                v483 = &v467[16 * v482];
                *(v483 + 4) = v478;
                *(v483 + 5) = v479;
                v740 = v467;
                v469 = v605;
              }
            }

            v484 = *(v614 + 2);
            v715 = v459;
            if (v484)
            {
            }

            else
            {
              v732 = 0;
            }

            v485 = v655;
            v486 = v656;
            v487 = v649;

            LODWORD(v729) = sub_1DD9FFD7C(v648, v487);
            v488 = sub_1DDA13A50();
            v723 = v489;
            v490 = v469;
            if (v489)
            {
              v491 = 0x746E65746E6F63;
            }

            else
            {
              v491 = 0;
            }

            v492 = 0xE700000000000000;
            if (!v489)
            {
              v492 = 0;
            }

            v721 = v492;
            v713 = v488;
            if (v489)
            {
              v493 = v488;
            }

            else
            {
              v493 = 0;
            }

            v720 = v493;
            v494 = v477;
            v495 = v477[4].isa;
            v496 = v477[5].isa;
            __swift_project_boxed_opaque_existential_1(&v494[1].isa, v495);
            v724 = (*(v496 + 10))(v495, v496);
            v731 = v497;
            v498 = v494[4].isa;
            v499 = v494[5].isa;
            __swift_project_boxed_opaque_existential_1(&v494[1].isa, v498);
            *&v726 = (*(v499 + 14))(v498, v499);
            v730 = v500;
            if (qword_1ECD827A8 != -1)
            {
              swift_once();
            }

            v501 = sub_1DDA14810();
            __swift_project_value_buffer(v501, qword_1ECDA20E0);
            (*(v654 + 16))(v485, v490, v486);
            v502 = v732;

            sub_1DD9B3384(v728, v727);

            v732 = v502;

            sub_1DD90ADB4(&v760, &v735, &qword_1ECD83758, &qword_1DDA1B2E8);

            v722 = v491;
            v503 = v491;
            v504 = v721;
            sub_1DD9B33CC(v503, v721);
            sub_1DD90ADB4(&v757, &v735, &qword_1ECD83748, &unk_1DDA227C0);

            v505 = sub_1DDA147F0();
            LODWORD(v502) = sub_1DDA14F00();

            sub_1DD90D378(&v760, &qword_1ECD83758, &qword_1DDA1B2E8);

            sub_1DD9B33A8(v728, v727);
            v506 = v722;
            sub_1DD9B3410(v722, v504);
            sub_1DD90D378(&v757, &qword_1ECD83748, &unk_1DDA227C0);

            LODWORD(v714) = v502;
            if (os_log_type_enabled(v505, v502))
            {
              v712 = v505;
              v507 = swift_slowAlloc();
              v711 = swift_slowAlloc();
              v734 = v711;
              *v507 = 136318210;
              *&v735 = v651;
              *(&v735 + 1) = v657;

              v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
              v509 = sub_1DDA14B70();
              v511 = sub_1DD93FA54(v509, v510, &v734);

              *(v507 + 4) = v511;
              *(v507 + 12) = 2080;
              v735 = v760;
              v736 = v761;
              *&v737[0] = v762;
              sub_1DD90ADB4(&v760, v733, &qword_1ECD83758, &qword_1DDA1B2E8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83758, &qword_1DDA1B2E8);
              v512 = sub_1DDA14B70();
              v514 = sub_1DD93FA54(v512, v513, &v734);

              *(v507 + 14) = v514;
              *(v507 + 22) = 2080;
              *&v735 = v724;
              *(&v735 + 1) = v731;

              *&v710 = v508;
              v515 = sub_1DDA14B70();
              v517 = sub_1DD93FA54(v515, v516, &v734);

              *(v507 + 24) = v517;
              *(v507 + 32) = 2080;
              LOBYTE(v735) = v729;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83760, &qword_1DDA1B2F0);
              v518 = sub_1DDA14B70();
              v520 = sub_1DD93FA54(v518, v519, &v734);

              *(v507 + 34) = v520;
              *(v507 + 42) = 2080;
              v521 = MEMORY[0x1E12B7B70](v725, &type metadata for ToolingDescription);
              v523 = sub_1DD93FA54(v521, v522, &v734);

              *(v507 + 44) = v523;
              *(v507 + 52) = 2080;
              v524 = MEMORY[0x1E12B7B70](v765, &type metadata for ToolingDescription);
              v526 = sub_1DD93FA54(v524, v525, &v734);

              *(v507 + 54) = v526;
              *(v507 + 62) = 2080;
              *&v735 = v728;
              *(&v735 + 1) = v727;
              sub_1DD9B3384(v728, v727);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83768, &qword_1DDA1B2F8);
              v527 = sub_1DDA14B70();
              v529 = sub_1DD93FA54(v527, v528, &v734);

              *(v507 + 64) = v529;
              *(v507 + 72) = 2048;
              if (v732)
              {
                v530 = *(v732 + 16);
              }

              else
              {
                v530 = 0;
              }

              v532 = v656;
              v533 = v654;
              *(v507 + 74) = v530;

              *(v507 + 82) = 2080;
              v534 = v655;
              *&v735 = sub_1DDA13A00();
              BYTE8(v735) = v535 & 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83770, &qword_1DDA1B920);
              v536 = sub_1DDA14B70();
              v538 = v537;
              (*(v533 + 8))(v534, v532);
              v539 = sub_1DD93FA54(v536, v538, &v734);

              *(v507 + 84) = v539;
              *(v507 + 92) = 2080;
              v540 = v723;
              if (v723)
              {

                v531 = v650;
                v541 = v713;
              }

              else
              {
                v541 = 0;
                v531 = v650;
              }

              *&v735 = v541;
              *(&v735 + 1) = v540;
              v542 = sub_1DDA14B70();
              v544 = v543;
              sub_1DD9B3410(v722, v721);
              v545 = sub_1DD93FA54(v542, v544, &v734);

              *(v507 + 94) = v545;
              *(v507 + 102) = 2080;
              v735 = v757;
              v736 = v758;
              v737[0] = v759[0];
              *(v737 + 9) = *(v759 + 9);
              sub_1DD90ADB4(&v757, v733, &qword_1ECD83748, &unk_1DDA227C0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83748, &unk_1DDA227C0);
              v546 = sub_1DDA14B70();
              v548 = sub_1DD93FA54(v546, v547, &v734);

              *(v507 + 104) = v548;
              *(v507 + 112) = 2080;
              swift_beginAccess();
              *&v735 = v740;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83778, &qword_1DDA1B300);
              v549 = sub_1DDA14B70();
              v551 = sub_1DD93FA54(v549, v550, &v734);

              *(v507 + 114) = v551;
              *(v507 + 122) = 2080;
              *&v735 = v726;
              *(&v735 + 1) = v730;

              v552 = sub_1DDA14B70();
              v554 = sub_1DD93FA54(v552, v553, &v734);

              *(v507 + 124) = v554;
              v555 = v712;
              _os_log_impl(&dword_1DD8F8000, v712, v714, "Preparing request:\n  previousChoiceID: %s\n  configuration: %s\n  model: %s\n  input: <private>\n  inputHint: %s\n  clientTools: %s\n  serverTools: %s\n  toolChoice: %s\n  toolCallOutputs: <count=%ld>\n  temperature: %s\n  prediction: %s\n  responseFormat: %s\n  include: %s\n  reasoning: %s", v507, 0x84u);
              v556 = v711;
              swift_arrayDestroy();
              MEMORY[0x1E12B8CE0](v556, -1, -1);
              MEMORY[0x1E12B8CE0](v507, -1, -1);
            }

            else
            {

              sub_1DD9B3410(v506, v504);

              (*(v654 + 8))(v655, v656);
              v531 = v650;
            }

            v557 = v612;

            v558 = COERCE_DOUBLE(sub_1DDA13A00());
            v559 = v558 * 0.5;
            v561 = v560 & 1;
            if (v560)
            {
              v559 = v558;
            }

            v723 = *&v559;
            v562 = sub_1DDA13A50();
            v564 = v563;

            v565 = v765;

            if (v564)
            {
              v566 = 0x746E65746E6F63;
            }

            else
            {
              v566 = 0;
            }

            if (v564)
            {
              v567 = 0xE700000000000000;
            }

            else
            {
              v567 = 0;
            }

            if (!v564)
            {
              v562 = 0;
            }

            swift_beginAccess();
            v568 = v740;
            LOBYTE(v734) = v561;
            v569 = v657;
            *v531 = v651;
            *(v531 + 8) = v569;
            v570 = v718;
            *(v531 + 16) = v719;
            *(v531 + 32) = v570;
            v571 = v724;
            *(v531 + 48) = v717;
            *(v531 + 56) = v571;
            v572 = v715;
            *(v531 + 64) = v731;
            *(v531 + 72) = v572;
            *(v531 + 80) = v716;
            *(v531 + 88) = v557;
            *(v531 + 96) = v729;
            *(v531 + 104) = v725;
            *(v531 + 112) = v565;
            v573 = v727;
            *(v531 + 120) = v728;
            *(v531 + 128) = v573;
            v574 = v723;
            *(v531 + 136) = v732;
            *(v531 + 144) = v574;
            *(v531 + 152) = v561;
            *(v531 + 160) = v566;
            *(v531 + 168) = v567;
            *(v531 + 176) = v562;
            *(v531 + 184) = v564;
            v575 = v758;
            *(v531 + 192) = v757;
            *(v531 + 208) = v575;
            *(v531 + 224) = v759[0];
            *(v531 + 233) = *(v759 + 9);
            *(v531 + 249) = 1;
            *(v531 + 256) = v568;
            v576 = v730;
            *(v531 + 264) = v726;
            *(v531 + 272) = v576;
          }

LABEL_288:
          __break(1u);
          return result;
        }

LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

LABEL_286:
      __break(1u);
      goto LABEL_287;
    }

    (*v619)(v724, v223, v224);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v225 = sub_1DDA14810();
    __swift_project_value_buffer(v225, qword_1ECDA20E0);

    v226 = sub_1DDA147F0();
    v227 = sub_1DDA14F00();
    v228 = os_log_type_enabled(v226, v227);
    v190 = v646;
    if (v228)
    {
      v229 = swift_slowAlloc();
      *v229 = v615;
      v230 = sub_1DDA14BD0();

      *(v229 + 4) = v230;

      _os_log_impl(&dword_1DD8F8000, v226, v227, "Attaching prompt image with size: %ld", v229, 0xCu);
      MEMORY[0x1E12B8CE0](v229, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v13 = v680;
    (*v618)(v714, v724, v725);
    swift_storeEnumTagMultiPayload();
    v192 = v31;
    v231 = swift_isUniquelyReferenced_nonNull_native();
    v187 = v719;
    if ((v231 & 1) == 0)
    {
      v192 = sub_1DD908D08(0, *(v31 + 16) + 1, 1, v31);
    }

    v233 = v192[2].isa;
    v232 = v192[3].isa;
    if (v233 >= v232 >> 1)
    {
      v192 = sub_1DD908D08(v232 > 1, v233 + 1, 1, v192);
    }

    (*v617)(v724, v725);
    (*v621)(v726, v716);
    (*v640)(v727, v187);
    v192[2].isa = (v233 + 1);
    v193 = v192 + ((*(v709 + 80) + 32) & ~*(v709 + 80)) + *(v709 + 72) * v233;
    v194 = v714;
    goto LABEL_45;
  }

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v324 = sub_1DDA14810();
  __swift_project_value_buffer(v324, qword_1ECDA20E0);
  v197(v209, v727, v187);
  v325 = sub_1DDA147F0();
  v326 = sub_1DDA14EE0();
  v327 = os_log_type_enabled(v325, v326);
  v328 = v664;
  if (v327)
  {
    v329 = swift_slowAlloc();
    v330 = swift_slowAlloc();
    v750[0] = v330;
    *v329 = 136315138;
    v197(v328, v209, v719);
    v331 = sub_1DDA14B70();
    v332 = v209;
    v333 = v331;
    v335 = v334;
    v336 = *v640;
    v725 = (v640 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    *&v726 = v336;
    v336(v332, v719);
    v337 = sub_1DD93FA54(v333, v335, v750);

    *(v329 + 4) = v337;
    _os_log_impl(&dword_1DD8F8000, v325, v326, "Unknown segment type. %s", v329, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v330);
    v338 = v330;
    v187 = v719;
    MEMORY[0x1E12B8CE0](v338, -1, -1);
    MEMORY[0x1E12B8CE0](v329, -1, -1);
  }

  else
  {

    v387 = *v640;
    v725 = (v640 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    *&v726 = v387;
    v387(v209, v187);
  }

  v750[0] = 0;
  v750[1] = 0xE000000000000000;
  sub_1DDA15070();

  v750[0] = 0xD000000000000016;
  v750[1] = 0x80000001DDA286D0;
  v197(v328, v727, v187);
  v388 = sub_1DDA14B70();
  MEMORY[0x1E12B7AB0](v388);

  v389 = v731;
  sub_1DDA13800();
  v390 = v765;
  v391 = v728;
  v392 = v732;
  (*(v765 + 2))(v728, v389, v732);
  v393 = v187;
  v394 = v730;
  v395 = v729;
  (*(v730 + 104))(v391, *MEMORY[0x1E69DA4C0], v729);
  sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8]);
  swift_allocError();
  (*(v394 + 16))(v396, v391, v395);
  swift_willThrow();
  (*(v394 + 8))(v391, v395);
  (*(v390 + 1))(v389, v392);
  v397 = v726;
  (v726)(v727, v393);
  (*v611)(v711, v685);
  return v397(v717, v393);
}

double sub_1DD988FC4@<D0>(_OWORD *a1@<X8>)
{
  v11 = a1;
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  [v3 operatingSystemVersion];

  v4 = [v2 processInfo];
  [v4 operatingSystemVersion];

  v5 = [v2 processInfo];
  [v5 operatingSystemVersion];

  sub_1DD982210(sub_1DD9B3454, v9);
  if (!v1)
  {
    result = *v9;
    v7 = v9[1];
    v8 = v11;
    *v11 = v9[0];
    v8[1] = v7;
    *(v8 + 4) = v10;
  }

  return result;
}

uint64_t sub_1DD9890F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1DD96AC38(0x745F656372756F73, 0xEB00000000657079), (v5 & 1) == 0))
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1ECDA20E0);
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_16;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Extended attributes for file were not provided";
    goto LABEL_15;
  }

  v6 = (*(a1 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *v6 == 0x65746973626577 && v8 == 0xE700000000000000;
  if (!v9 && (sub_1DDA15440() & 1) == 0)
  {
    v28 = v7 == 1701603686 && v8 == 0xE400000000000000;
    if (v28 || (sub_1DDA15440() & 1) != 0)
    {
      if (*(a1 + 16) && (v29 = sub_1DD96AC38(0x6D616E5F656C6966, 0xE900000000000065), (v30 & 1) != 0))
      {
        if (*(a1 + 16))
        {
          v31 = (*(a1 + 56) + 16 * v29);
          v14 = *v31;
          v13 = v31[1];

          v32 = sub_1DD96AC38(0x6D696D5F656C6966, 0xEE00657079745F65);
          if (v33)
          {
            v34 = (*(a1 + 56) + 16 * v32);
            v20 = *v34;
            v35 = v34[1];

            v22 = xmmword_1DDA1B010;
            v23 = 1;
            goto LABEL_23;
          }
        }

        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v38 = sub_1DDA14810();
        __swift_project_value_buffer(v38, qword_1ECDA20E0);
        v16 = sub_1DDA147F0();
        v17 = sub_1DDA14EE0();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_16;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Extended attributes were provided for file, but missing mime type attribute";
      }

      else
      {
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v36 = sub_1DDA14810();
        __swift_project_value_buffer(v36, qword_1ECDA20E0);
        v16 = sub_1DDA147F0();
        v17 = sub_1DDA14EE0();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_16;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Extended attributes were provided for file, but missing name attribute";
      }
    }

    else
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v37 = sub_1DDA14810();
      __swift_project_value_buffer(v37, qword_1ECDA20E0);
      v16 = sub_1DDA147F0();
      v17 = sub_1DDA14EE0();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Provided source type attribute is currently not supported. Not saving extended attribute information.";
    }

LABEL_15:
    _os_log_impl(&dword_1DD8F8000, v16, v17, v19, v18, 2u);
    MEMORY[0x1E12B8CE0](v18, -1, -1);
LABEL_16:

    v14 = 0;
    v13 = 0;
    v20 = 0;
    result = 0;
    v22 = 0uLL;
    v23 = -1;
    goto LABEL_23;
  }

  if (*(a1 + 16) && (v10 = sub_1DD96AC38(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    v12 = (*(a1 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DDA14810();
    __swift_project_value_buffer(v24, qword_1ECDA20E0);
    v25 = sub_1DDA147F0();
    v26 = sub_1DDA14EE0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DD8F8000, v25, v26, "Extended attributes were provided for website, but missing url attribute", v27, 2u);
      MEMORY[0x1E12B8CE0](v27, -1, -1);
    }

    v14 = 0;
    v13 = 0;
  }

  v20 = 0;
  result = 0;
  v23 = 0;
  v22 = xmmword_1DDA1B020;
LABEL_23:
  *a2 = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v20;
  *(a2 + 40) = result;
  *(a2 + 48) = v23;
  return result;
}

__n128 sub_1DD9895F8@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v5 = sub_1DDA14030();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83820, &qword_1DDA1B490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  sub_1DD9890F8(a2, &v26);
  v12 = v27;
  v21 = v29;
  v22 = v27;
  v13 = v30;
  v23 = v28;
  v24 = v26;
  if (v30 == 255 || (v30 & 1) == 0)
  {
    v12 = sub_1DDA13460();
    v14 = v15;
  }

  else
  {
    v14 = v28.n128_u64[0];
  }

  sub_1DDA13430();
  sub_1DDA14020();
  sub_1DDA14000();
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD83820, &qword_1DDA1B490);
LABEL_8:
    v18 = 0x80000001DDA28A70;
    v16 = 0xD000000000000018;
    goto LABEL_9;
  }

  v16 = sub_1DDA14010();
  v18 = v17;
  (*(v6 + 8))(v11, v5);
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v25;
  *(a3 + 24) = v16;
  *(a3 + 32) = v18;
  result = v23;
  *(a3 + 40) = v24;
  v20 = v21;
  *(a3 + 56) = v22;
  *(a3 + 64) = result;
  *(a3 + 80) = v20;
  *(a3 + 88) = v13;
  return result;
}

uint64_t sub_1DD989844@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v103 = a5;
  v104 = a6;
  v100 = a3;
  v101 = a4;
  v99 = a2;
  v7 = sub_1DDA136E0();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v98 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83798, &qword_1DDA1B320);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v102 = v97 - v12;
  v138 = sub_1DDA14580();
  v123 = *(v138 - 8);
  v13 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v151 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA14550();
  v136 = *(v15 - 8);
  v16 = *(v136 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v97 - v20;
  v22 = sub_1DDA145B0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v97 - v28;
  v30 = v137;
  result = sub_1DDA13F00();
  if (!v30)
  {
    v125 = v15;
    v126 = v29;
    v121 = v27;
    v122 = v23;
    v124 = v21;
    v118 = v19;
    v111 = v22;
    v97[1] = 0;
    v97[2] = a1;
    v120 = *(result + 16);
    if (v120)
    {
      v32 = 0;
      v33 = v122;
      v132 = v122 + 16;
      v115 = (v136 + 88);
      v116 = (v136 + 16);
      v114 = *MEMORY[0x1E69A0CE0];
      v110 = *MEMORY[0x1E69A0CD8];
      v107 = *MEMORY[0x1E69A0CD0];
      v113 = (v136 + 96);
      v34 = v123;
      v134 = (v123 + 8);
      v135 = v123 + 16;
      v117 = (v136 + 8);
      v133 = (v122 + 8);
      v35 = MEMORY[0x1E69E7CC0];
      v36 = v111;
      v119 = result;
      do
      {
        if (v32 >= *(result + 16))
        {
          __break(1u);
LABEL_42:
          result = sub_1DDA15180();
          __break(1u);
          return result;
        }

        v112 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v127 = *(v33 + 72);
        v37 = *(v33 + 16);
        v38 = v126;
        v130 = v32;
        v131 = v37;
        v37(v126, result + v112 + v127 * v32, v36);
        v39 = sub_1DDA14590();
        v128 = v40;
        v129 = v39;
        v41 = v124;
        sub_1DDA145A0();
        v42 = v118;
        v43 = v125;
        (*v116)(v118, v41, v125);
        v44 = (*v115)(v42, v43);
        if (v44 == v114)
        {
          (*v117)(v41, v43);
          (*v133)(v38, v36);
          (*v113)(v42, v43);
          v45 = 0;
          v46 = 0;
          v47 = *v42;
        }

        else
        {
          v48 = v138;
          if (v44 == v110)
          {
            (*v117)(v41, v43);
            (*v133)(v126, v36);
            (*v113)(v42, v43);
            v49 = v42;
            v47 = *v42;
            v45 = *(v49 + 1);
            v46 = 2;
          }

          else
          {
            if (v44 != v107)
            {
              goto LABEL_42;
            }

            (*v113)(v42, v43);
            v50 = *v42;
            v51 = *(*v42 + 16);
            if (v51)
            {
              v109 = v35;
              *&v144 = MEMORY[0x1E69E7CC0];
              v52 = v50;
              sub_1DD9AF0BC(0, v51, 0);
              v53 = v151;
              v47 = v144;
              v54 = (*(v34 + 80) + 32) & ~*(v34 + 80);
              v108 = v52;
              v55 = v52 + v54;
              v56 = *(v34 + 72);
              v136 = *(v34 + 16);
              v137 = v56;
              do
              {
                (v136)(v53, v55, v48);
                v57 = sub_1DDA14570();
                v53 = v151;
                v58 = v57;
                v60 = v59;
                (*v134)(v151, v48);
                *&v144 = v47;
                v62 = *(v47 + 16);
                v61 = *(v47 + 24);
                if (v62 >= v61 >> 1)
                {
                  sub_1DD9AF0BC((v61 > 1), v62 + 1, 1);
                  v53 = v151;
                  v47 = v144;
                }

                *(v47 + 16) = v62 + 1;
                v63 = v47 + 16 * v62;
                *(v63 + 32) = v58;
                *(v63 + 40) = v60;
                v48 = v138;
                v55 += v137;
                --v51;
              }

              while (v51);

              (*v117)(v124, v125);
              v36 = v111;
              (*v133)(v126, v111);
              v35 = v109;
            }

            else
            {

              (*v117)(v41, v43);
              v36 = v111;
              (*v133)(v126, v111);
              v47 = MEMORY[0x1E69E7CC0];
            }

            v45 = 0;
            v46 = 3;
          }
        }

        v64 = v130;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1DD908E54(0, *(v35 + 2) + 1, 1, v35);
        }

        v66 = *(v35 + 2);
        v65 = *(v35 + 3);
        result = v119;
        if (v66 >= v65 >> 1)
        {
          v35 = sub_1DD908E54((v65 > 1), v66 + 1, 1, v35);
          result = v119;
        }

        v32 = v64 + 1;
        *(v35 + 2) = v66 + 1;
        v67 = &v35[40 * v66];
        v68 = v128;
        *(v67 + 4) = v129;
        *(v67 + 5) = v68;
        *(v67 + 6) = v47;
        *(v67 + 7) = v45;
        v67[64] = v46;
        v33 = v122;
        v34 = v123;
      }

      while (v32 != v120);
      v69 = v121;
      v70 = v120 - 1;
      v71 = result + v112;
      v72 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v131(v69, v71, v36);
        sub_1DDA00814(v149);
        v146 = v149[2];
        v147 = v149[3];
        v148 = v150;
        v144 = v149[0];
        v145 = v149[1];
        (*v133)(v69, v36);
        if (*(&v149[0] + 1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_1DD908D30(0, *(v72 + 2) + 1, 1, v72);
          }

          v74 = *(v72 + 2);
          v73 = *(v72 + 3);
          if (v74 >= v73 >> 1)
          {
            v72 = sub_1DD908D30((v73 > 1), v74 + 1, 1, v72);
          }

          v143 = v148;
          v141 = v146;
          v142 = v147;
          v75 = v144;
          v139 = v144;
          v140 = v145;
          *(v72 + 2) = v74 + 1;
          v76 = &v72[72 * v74];
          *(v76 + 2) = v75;
          v77 = v140;
          v78 = v141;
          v79 = v142;
          *(v76 + 48) = v143;
          *(v76 + 4) = v78;
          *(v76 + 5) = v79;
          *(v76 + 3) = v77;
          v36 = v111;
        }

        v69 = v121;
        if (!v70)
        {
          break;
        }

        --v70;
        v71 += v127;
      }
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
      v72 = MEMORY[0x1E69E7CC0];
    }

    v80 = v99[4];
    v81 = v99[5];
    __swift_project_boxed_opaque_existential_1(v99 + 1, v80);
    v82 = (*(v81 + 48))(v80, v81);
    v109 = v35;
    if (v83)
    {
      v84 = v82;
    }

    else
    {
      v84 = sub_1DDA13F10();
    }

    v85 = v83;
    v86 = v106;
    v87 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837A0, &qword_1DDA1B328);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000010;
    *(inited + 16) = xmmword_1DDA1B030;
    v89 = v100;
    *(inited + 40) = 0x80000001DDA28880;
    *(inited + 48) = v89;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 0xD000000000000010;
    *(inited + 80) = 0x80000001DDA288A0;
    *(inited + 88) = v87;
    *(inited + 96) = 0;
    *(inited + 104) = 1;
    *(inited + 112) = 0xD000000000000010;
    *(inited + 120) = 0x80000001DDA288C0;
    v90 = v102;
    *(inited + 128) = v103;
    *(inited + 136) = 0;
    *(inited + 144) = 1;
    *(inited + 152) = 0x656C61636F6CLL;
    *(inited + 160) = 0xE600000000000000;
    sub_1DDA13F20();
    if ((*(v105 + 48))(v90, 1, v86) == 1)
    {
      sub_1DD90D378(v90, &qword_1ECD83798, &qword_1DDA1B320);
      v90 = v98;
      sub_1DDA136D0();
    }

    v91 = sub_1DDA136C0();
    v93 = v92;
    (*(v105 + 8))(v90, v106);
    *(inited + 168) = v91;
    *(inited + 176) = v93;
    *(inited + 184) = 2;
    *(inited + 192) = 0x6D726F6674616C70;
    *(inited + 200) = 0xE800000000000000;
    *(inited + 208) = xmmword_1DDA1B040;
    *(inited + 224) = 2;
    v94 = sub_1DD9405D8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837A8, &qword_1DDA1B330);
    result = swift_arrayDestroy();
    v95 = v104;
    *v104 = v84;
    v95[1] = v85;
    v96 = v109;
    v95[2] = v94;
    v95[3] = v96;
    v95[4] = v72;
  }

  return result;
}

uint64_t sub_1DD98A384(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DD96AE9C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  v7 = *v5;
  v6 = v5[1];

  return v7;
}

uint64_t sub_1DD98A3E8(uint64_t a1)
{
  v2 = v1;
  v39 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(a1 + 56) + 24 * v13);
      v15 = v14[1];
      v16 = v14[2];
      if (*v14 < 0)
      {
        v17 = *v14;
        v18 = v14[1];
        v19 = v14[2];
        sub_1DD940DF4();
      }

      else
      {
        v20 = (*(a1 + 48) + 16 * v13);
        v36 = v2;
        v37 = *v20;
        v38 = v20[1];
        v21 = *(v39 + 16);
        if (*(v39 + 24) <= v21)
        {
          sub_1DD940DF4();
          sub_1DD940DF4();

          sub_1DD9C838C(v21 + 1, 1);
          v22 = v40;
        }

        else
        {
          sub_1DD940DF4();
          sub_1DD940DF4();

          v22 = v39;
        }

        v39 = v22;
        v23 = *(v22 + 40);
        sub_1DDA15570();
        sub_1DDA14BC0();
        result = sub_1DDA155B0();
        v24 = v39 + 64;
        v25 = -1 << *(v39 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v39 + 64 + 8 * (v26 >> 6))) == 0)
        {
          v29 = 0;
          v30 = (63 - v25) >> 6;
          v2 = v36;
          while (++v27 != v30 || (v29 & 1) == 0)
          {
            v31 = v27 == v30;
            if (v27 == v30)
            {
              v27 = 0;
            }

            v29 |= v31;
            v32 = *(v24 + 8 * v27);
            if (v32 != -1)
            {
              v28 = __clz(__rbit64(~v32)) + (v27 << 6);
              goto LABEL_26;
            }
          }

LABEL_29:
          __break(1u);
          return result;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v39 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
        v2 = v36;
LABEL_26:
        *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v33 = 16 * v28;
        v34 = (*(v39 + 48) + v33);
        *v34 = v37;
        v34[1] = v38;
        v35 = (*(v39 + 56) + v33);
        *v35 = v15;
        v35[1] = v16;
        ++*(v39 + 16);
      }

      result = sub_1DD94A02C();
      v10 = v11;
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  return v39;
}

uint64_t sub_1DD98A6C0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 664) = v6;
  *(v7 + 425) = a6;
  *(v7 + 656) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a2;
  *(v7 + 632) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83658, &qword_1DDA1B1C8);
  *(v7 + 672) = v9;
  v10 = *(v9 - 8);
  *(v7 + 680) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 688) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C8, &qword_1DDA1B260) - 8) + 64) + 15;
  *(v7 + 696) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836D0, &qword_1DDA1B268);
  *(v7 + 704) = v13;
  v14 = *(v13 - 8);
  *(v7 + 712) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 720) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836D8, &qword_1DDA1B270);
  *(v7 + 728) = v16;
  v17 = *(v16 - 8);
  *(v7 + 736) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 744) = swift_task_alloc();
  *(v7 + 752) = swift_task_alloc();
  v19 = *(*(sub_1DDA14B60() - 8) + 64) + 15;
  *(v7 + 760) = swift_task_alloc();
  v20 = sub_1DDA134E0();
  *(v7 + 768) = v20;
  v21 = *(v20 - 8);
  *(v7 + 776) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 784) = swift_task_alloc();
  v23 = sub_1DDA13140();
  *(v7 + 792) = v23;
  v24 = *(v23 - 8);
  *(v7 + 800) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  memcpy((v7 + 16), a3, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DD98A9B8, 0, 0);
}

uint64_t sub_1DD98A9B8()
{
  v41 = v0;
  v1 = **(v0 + 664);
  sub_1DD9B31DC();
  v2 = sub_1DDA13210();
  v4 = v3;
  v5 = *(v0 + 808);
  (*(*(v0 + 776) + 16))(*(v0 + 784), *(v0 + 640), *(v0 + 768));
  sub_1DDA130F0();
  sub_1DD909CD4(v2, v4);
  sub_1DD909CD4(v2, v4);
  sub_1DDA13120();
  sub_1DDA13130();
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DDA14810();
  __swift_project_value_buffer(v6, qword_1ECDA20F8);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14ED0();
  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_7;
  }

  v39 = v2;
  v9 = *(v0 + 808);
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v40[0] = v11;
  *v10 = 136315138;
  swift_beginAccess();
  v12 = sub_1DDA13110();
  v14 = v13;
  result = swift_endAccess();
  if (v14 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = *(v0 + 760);
  sub_1DDA14B50();
  v17 = sub_1DDA14B30();
  v19 = v18;
  result = sub_1DD90D440(v12, v14);
  if (!v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v20 = sub_1DD93FA54(v17, v19, v40);

  *(v10 + 4) = v20;
  _os_log_impl(&dword_1DD8F8000, v7, v8, "Sending request: %s", v10, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v11);
  MEMORY[0x1E12B8CE0](v11, -1, -1);
  MEMORY[0x1E12B8CE0](v10, -1, -1);
  v2 = v39;
LABEL_7:
  sub_1DD909D28(v2, v4);

  if (*(v0 + 425))
  {
    v21 = *(v0 + 808);
    swift_beginAccess();
    sub_1DDA130B0();
    swift_endAccess();
  }

  else
  {
    v22 = *(v0 + 656);
  }

  v23 = *(v0 + 808);
  v24 = *(v0 + 664);
  swift_beginAccess();
  sub_1DDA130C0();
  sub_1DDA130A0();
  swift_endAccess();
  if (*(v24 + 56) == 1)
  {
    v25 = sub_1DD93FF08(&unk_1F58EC5A8);
    sub_1DD90D378(&unk_1F58EC5C8, &qword_1ECD829C8, &qword_1DDA1E380);
  }

  else
  {
    v25 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v26 = *(v0 + 648);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = v26;
  sub_1DD954E10(v25, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, v40);

  v28 = v40[0];
  v29 = *(v0 + 816);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);
  v32 = *(v0 + 792);
  v33 = *(v0 + 664);
  swift_beginAccess();
  sub_1DD9528C4(v30, v28);
  swift_endAccess();
  sub_1DD909D28(v2, v4);

  (*(v31 + 16))(v29, v30, v32);
  v34 = *(v31 + 8);
  *(v0 + 824) = v34;
  *(v0 + 832) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v30, v32);
  v35 = swift_task_alloc();
  *(v0 + 840) = v35;
  *v35 = v0;
  v35[1] = sub_1DD98AF6C;
  v36 = *(v0 + 816);
  v37 = *(v0 + 752);
  v38 = *(v0 + 664);

  return sub_1DD95223C(v37, v36, 1);
}

uint64_t sub_1DD98AF6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 840);
  v7 = *v2;
  *(v3 + 848) = a1;
  *(v3 + 856) = v1;

  if (v1)
  {
    v5 = sub_1DD98B6B4;
  }

  else
  {
    v5 = sub_1DD98B084;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD98B084()
{
  v59 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v50 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v53 = *(v0 + 688);
  v56 = *(v0 + 848);
  v8 = *(v0 + 664);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836E8, &qword_1DDA1B278);
  swift_allocBox();
  (*(v3 + 16))(v2, v1, v4);
  sub_1DD929A8C(v8, v0 + 368);
  v9 = swift_allocObject();
  v10 = *(v0 + 384);
  v9[1] = *(v0 + 368);
  v9[2] = v10;
  v9[3] = *(v0 + 400);
  *(v9 + 57) = *(v0 + 409);
  type metadata accessor for ChatChunk(0);
  sub_1DD90D2A4(&qword_1ECD836F0, &qword_1ECD836D8, &qword_1DDA1B270);
  sub_1DDA153F0();
  MEMORY[0x1E12B8260](v6);
  sub_1DDA14DC0();
  sub_1DDA153C0();
  (*(v50 + 8))(v5, v6);
  sub_1DDA153D0();

  sub_1DDA14E30();
  v11 = [v56 allHeaderFields];
  v12 = sub_1DDA14AA0();

  v13 = -1;
  v14 = -1 << *(v12 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v12 + 64);
  v16 = (63 - v14) >> 6;

  v18 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    while (1)
    {
LABEL_11:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v18 << 6);
      sub_1DD9550D8(*(v12 + 48) + 40 * v21, v0 + 296);
      sub_1DD9410C8(*(v12 + 56) + 32 * v21, v0 + 336);
      sub_1DD9550D8(v0 + 296, v0 + 432);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v22 = *(v0 + 600);
      v23 = *(v0 + 608);
      sub_1DD9410C8(v0 + 336, v0 + 472);
      if (swift_dynamicCast())
      {
        v51 = *(v0 + 624);
        v54 = *(v0 + 616);
        sub_1DD90D378(v0 + 296, &qword_1ECD83180, &qword_1DDA196E8);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DD908740(0, v57[2] + 1, 1, v57);
          v57 = result;
        }

        v25 = v57[2];
        v24 = v57[3];
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v46 = v57[2];
          v48 = v25 + 1;
          result = sub_1DD908740((v24 > 1), v25 + 1, 1, v57);
          v25 = v46;
          v26 = v48;
          v57 = result;
        }

        v57[2] = v26;
        v27 = &v57[4 * v25];
        v27[4] = v22;
        v27[5] = v23;
        v27[6] = v54;
        v27[7] = v51;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_6:
        result = sub_1DD90D378(v0 + 296, &qword_1ECD83180, &qword_1DDA196E8);
        if (!v15)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  if (v57[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
    v28 = sub_1DDA151C0();
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC8];
  }

  v29 = *(v0 + 856);
  v58 = v28;

  sub_1DD954678(v30, 1, &v58);
  if (v29)
  {

    return swift_unexpectedError();
  }

  else
  {
    v42 = *(v0 + 824);
    v43 = *(v0 + 832);
    v31 = *(v0 + 816);
    v41 = *(v0 + 792);
    v44 = *(v0 + 808);
    v45 = *(v0 + 784);
    v32 = *(v0 + 752);
    v47 = *(v0 + 760);
    v49 = *(v0 + 744);
    v33 = *(v0 + 736);
    v34 = *(v0 + 728);
    v52 = *(v0 + 720);
    v55 = *(v0 + 696);
    v35 = *(v0 + 688);
    v36 = *(v0 + 680);
    v37 = *(v0 + 672);
    v38 = *(v0 + 632);

    (*(v33 + 8))(v32, v34);
    v42(v31, v41);
    v39 = v58;
    (*(v36 + 32))(v38, v35, v37);

    v40 = *(v0 + 8);

    return v40(v39);
  }
}

uint64_t sub_1DD98B6B4()
{
  v1 = *(v0 + 832);
  (*(v0 + 824))(*(v0 + 816), *(v0 + 792));
  v2 = *(v0 + 856);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 784);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 720);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DD98B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1DDA14B60() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for ChatChunk(0);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD98B89C, 0, 0);
}

uint64_t sub_1DD98B89C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  v5 = *(v0[5] + 8);
  sub_1DD9B48D0(&qword_1ECD83708, 255, type metadata accessor for ChatChunk);
  sub_1DDA13170();
  sub_1DD9B4978(v0[9], v0[2], type metadata accessor for ChatChunk);
  v6 = v0[9];
  v7 = v0[6];
  (*(v0[8] + 56))(v0[2], 0, 1, v0[7]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DD98BBB4(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836F8, &qword_1DDA1B2A0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD98BC70, 0, 0);
}

uint64_t sub_1DD98BC70()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1DD98BD30;
  v3 = v0[9];
  v4 = v0[5];

  return sub_1DD98C0F0(v4);
}

uint64_t sub_1DD98BD30()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1DD98C078;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1DD98BE4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD98BE4C()
{
  v21 = v0;
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA20F8);
  sub_1DD90ADB4(v2, v1, &qword_1ECD836F8, &qword_1DDA1B2A0);
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14ED0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_1DD90ADB4(v7, v8, &qword_1ECD836F8, &qword_1DDA1B2A0);
    v12 = sub_1DDA14B70();
    v14 = v13;
    sub_1DD90D378(v7, &qword_1ECD836F8, &qword_1DDA1B2A0);
    v15 = sub_1DD93FA54(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Received streaming chunk response: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
  }

  else
  {

    sub_1DD90D378(v7, &qword_1ECD836F8, &qword_1DDA1B2A0);
  }

  v17 = v0[7];
  v16 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DD98C078()
{
  v1 = v0[7];
  v2 = v0[8];
  swift_endAccess();

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1DD98C0F0(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836F8, &qword_1DDA1B2A0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD98C18C, 0, 0);
}

uint64_t sub_1DD98C18C()
{
  v1 = v0[11];
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836E8, &qword_1DDA1B278);
  v0[14] = sub_1DDA153B0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C8, &qword_1DDA1B260);
  v3 = sub_1DD90D2A4(&qword_1ECD83700, &qword_1ECD836C8, &qword_1DDA1B260);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1DD98C2B0;

  return MEMORY[0x1EEE6D8C8](v0 + 8, v2, v3);
}

uint64_t sub_1DD98C2B0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1DD98C580;
  }

  else
  {
    (*(v2 + 112))();
    v4 = sub_1DD98C3DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD98C3DC()
{
  v1 = v0[9];
  if (v1 >> 60 == 15)
  {
    v2 = v0[10];
    sub_1DD90D440(v0[8], v1);
    v3 = type metadata accessor for ChatChunk(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = v0[12];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[13];
    v8 = v0[11];
    v0[6] = v0[8];
    v0[7] = v1;
    v9 = sub_1DDA153C0();
    v0[17] = v10;
    v14 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1DD98C600;
    v13 = v0[12];

    return (v14)(v13, v0 + 6);
  }
}

uint64_t sub_1DD98C580()
{
  v1 = *(v0 + 96);
  (*(v0 + 112))();

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_1DD98C600()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v5 = *v0;

  sub_1DD909D28(*(v1 + 48), *(v1 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DD98C750, 0, 0);
}

uint64_t sub_1DD98C750()
{
  v1 = v0[12];
  v2 = type metadata accessor for ChatChunk(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DD90D378(v1, &qword_1ECD836F8, &qword_1DDA1B2A0);
    v4 = v0[11];
    v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836E8, &qword_1DDA1B278);
    v0[14] = sub_1DDA153B0();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C8, &qword_1DDA1B260);
    v6 = sub_1DD90D2A4(&qword_1ECD83700, &qword_1ECD836C8, &qword_1DDA1B260);
    v7 = *(MEMORY[0x1E69E85A8] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1DD98C2B0;

    return MEMORY[0x1EEE6D8C8](v0 + 8, v5, v6);
  }

  else
  {
    v9 = v0[10];
    sub_1DD9B4978(v1, v9, type metadata accessor for ChatChunk);
    (*(v3 + 56))(v9, 0, 1, v2);
    v10 = v0[12];

    v11 = v0[1];

    return v11();
  }
}

void sub_1DD98C988(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v49 = a4;
  v52 = a7;
  v51 = a6;
  v50 = a5;
  v44 = a3;
  v45 = a1;
  v46 = sub_1DDA134E0();
  v9 = *(v46 - 8);
  v47 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v40 - v13;
  v14 = sub_1DDA13140();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[5];
  v20 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v19);
  (*(v15 + 16))(v18, v44, v14);
  v44 = (*(v20 + 32))(v18, v19, v20);
  (*(v15 + 8))(v18, v14);
  v21 = v41;
  v22 = v42;
  (*(v11 + 16))(v41, v45, v42);
  sub_1DD929A8C(a2, v54);
  v23 = v43;
  v24 = v46;
  (*(v9 + 16))(v43, v48, v46);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v9 + 80) + v26 + 57) & ~*(v9 + 80);
  v28 = swift_allocObject();
  (*(v11 + 32))(v28 + v25, v21, v22);
  v29 = (v28 + v26);
  v30 = v54[1];
  *v29 = v54[0];
  v29[1] = v30;
  v29[2] = v55[0];
  *(v29 + 41) = *(v55 + 9);
  (*(v9 + 32))(v28 + v27, v23, v24);
  v31 = type metadata accessor for DocumentRegistrationURLSessionDelegate();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_data] = xmmword_1DDA16330;
  v33 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_update];
  v35 = v50;
  *v34 = v49;
  *(v34 + 1) = v35;
  v36 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_completion];
  *v36 = sub_1DD9B4E78;
  v36[1] = v28;
  v37 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor];
  *v37 = v51;
  v37[4] = 0;
  *v33 = v52;
  v33[8] = 0;
  v53.receiver = v32;
  v53.super_class = v31;
  v38 = v44;

  v39 = objc_msgSendSuper2(&v53, sel_init);
  [v38 setDelegate_];

  [v38 resume];
}

uint64_t sub_1DD98CDE0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1DDA134E0();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  if (a4)
  {
    v11 = a4;
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DDA14810();
    __swift_project_value_buffer(v12, qword_1ECDA20F8);
    v13 = a4;
    v14 = sub_1DDA147F0();
    v15 = sub_1DDA14EE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a4;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DD8F8000, v14, v15, "Received error response: %@", v16, 0xCu);
      sub_1DD90D378(v17, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
      MEMORY[0x1E12B8CE0](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
    return sub_1DDA14CE0();
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      __break(1u);
    }

    else if (a3)
    {
      sub_1DD98D284(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
      return sub_1DDA14CF0();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DD98D284(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  if (sub_1DD9552D8(v6))
  {
    return swift_willThrow();
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v9)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  v10 = v2[1];
  result = sub_1DDA13170();
  if (!v3)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1DD98D3BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  if (sub_1DD9552D8(v8))
  {
    return swift_willThrow();
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    if (a1 == a1 >> 32)
    {
LABEL_13:
      v14 = type metadata accessor for UploadDocumentResponse(0);
      return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v12 = v3[1];
  v13 = type metadata accessor for UploadDocumentResponse(0);
  sub_1DD9B48D0(&qword_1ECD83818, 255, type metadata accessor for UploadDocumentResponse);
  result = sub_1DDA13170();
  if (!v4)
  {
    return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1DD98D59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 488) = v33;
  *(v9 + 496) = v8;
  *(v9 + 472) = v32;
  *(v9 + 456) = a7;
  *(v9 + 464) = a8;
  *(v9 + 244) = a6;
  *(v9 + 440) = a4;
  *(v9 + 448) = a5;
  *(v9 + 424) = a2;
  *(v9 + 432) = a3;
  *(v9 + 416) = a1;
  v10 = *(a3 + 16);
  *(v9 + 504) = *a3;
  *(v9 + 520) = v10;
  *(v9 + 536) = *(a3 + 32);
  *(v9 + 241) = *(a3 + 48);
  v11 = sub_1DDA14030();
  *(v9 + 552) = v11;
  v12 = *(v11 - 8);
  *(v9 + 560) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 568) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83820, &qword_1DDA1B490) - 8) + 64) + 15;
  *(v9 + 576) = swift_task_alloc();
  v15 = sub_1DDA14B60();
  *(v9 + 584) = v15;
  v16 = *(v15 - 8);
  *(v9 + 592) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 600) = swift_task_alloc();
  v18 = sub_1DDA13420();
  *(v9 + 608) = v18;
  v19 = *(v18 - 8);
  *(v9 + 616) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 624) = swift_task_alloc();
  v21 = sub_1DDA134E0();
  *(v9 + 632) = v21;
  v22 = *(v21 - 8);
  *(v9 + 640) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  v24 = sub_1DDA13140();
  *(v9 + 680) = v24;
  v25 = *(v24 - 8);
  *(v9 + 688) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 696) = swift_task_alloc();
  v27 = sub_1DDA136B0();
  *(v9 + 704) = v27;
  v28 = *(v27 - 8);
  *(v9 + 712) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 720) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD98D8C8, 0, 0);
}

uint64_t sub_1DD98D8C8()
{
  v160 = v0;
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[84];
  v6 = v0[80];
  v150 = v0[79];
  v151 = v0[62];
  v7 = v0[55];
  sub_1DDA136A0();
  v8 = sub_1DDA13690();
  v10 = v9;
  v148 = *(v2 + 8);
  v148(v1, v3);
  strcpy(v159, "Boundry-");
  BYTE1(v159[1]) = 0;
  WORD1(v159[1]) = 0;
  HIDWORD(v159[1]) = -402653184;
  MEMORY[0x1E12B7AB0](v8, v10);

  v11 = v159[0];
  v12 = v159[1];
  v13 = *(v6 + 16);
  v13(v5, v7, v150);
  sub_1DDA130F0();
  sub_1DDA130A0();
  sub_1DDA15070();

  v159[0] = 0xD00000000000001ELL;
  v159[1] = 0x80000001DDA28A20;
  v146 = v11;
  MEMORY[0x1E12B7AB0](v11, v12);
  sub_1DDA13130();

  if (*(v151 + 56) == 1)
  {
    v14 = sub_1DD93FF08(&unk_1F58EC5E8);
    sub_1DD90D378(&unk_1F58EC608, &qword_1ECD829C8, &qword_1DDA1E380);
  }

  else
  {
    v14 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v15 = *(v155 + 448);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = v15;
  sub_1DD954E10(v14, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, v159);

  v143 = v13;
  v144 = v12;
  v17 = *(v155 + 720);
  v135 = *(v155 + 704);
  v18 = *(v155 + 672);
  v152 = *(v155 + 664);
  v19 = *(v155 + 640);
  v20 = *(v155 + 624);
  v21 = *(v155 + 616);
  v137 = *(v155 + 608);
  v139 = *(v155 + 632);
  v141 = *(v155 + 600);
  v22 = *(v155 + 496);
  sub_1DD9528C4(*(v155 + 696), v159[0]);

  v23 = NSTemporaryDirectory();
  sub_1DDA14B10();

  sub_1DDA13450();

  sub_1DDA136A0();
  v24 = sub_1DDA13690();
  v26 = v25;
  v148(v17, v135);
  *(v155 + 304) = v24;
  *(v155 + 312) = v26;
  (*(v21 + 104))(v20, *MEMORY[0x1E6968F70], v137);
  sub_1DD9313D4();
  sub_1DDA134D0();
  (*(v21 + 8))(v20, v137);
  v149 = *(v19 + 8);
  v149(v18, v139);

  *(v155 + 320) = 0;
  *(v155 + 328) = 0xE000000000000000;
  sub_1DDA14B50();
  sub_1DDA14F90();
  v27 = *(v155 + 664);
  v28 = *(v155 + 656);
  v29 = *(v155 + 632);
  (*(*(v155 + 592) + 8))(*(v155 + 600), *(v155 + 584));
  sub_1DD9B45E4();
  v143(v28, v27, v29);
  v133 = sub_1DD98FD08(v28);
  v31 = *(v155 + 576);
  v32 = *(v155 + 568);
  v33 = *(v155 + 560);
  v153 = *(v155 + 552);
  v34 = *(v155 + 480);
  v35 = *(v155 + 488);
  v36 = *(v155 + 464);
  v130 = *(v155 + 472);
  v37 = *(v155 + 456);
  v132 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:*(v155 + 244) closeOnDealloc:0];
  v159[0] = 11565;
  v159[1] = 0xE200000000000000;
  MEMORY[0x1E12B7AB0](v146, v144);
  MEMORY[0x1E12B7AB0](2573, 0xE200000000000000);
  v140 = sub_1DD901910(v159[0], v159[1]);
  v142 = v38;
  v159[0] = 0;
  v159[1] = 0xE000000000000000;
  sub_1DDA15070();
  MEMORY[0x1E12B7AB0](0xD000000000000026, 0x80000001DDA28A40);
  MEMORY[0x1E12B7AB0](v34, v35);
  MEMORY[0x1E12B7AB0](0x6E656C6966203B22, 0xED0000223D656D61);
  MEMORY[0x1E12B7AB0](v37, v36);
  MEMORY[0x1E12B7AB0](658722, 0xE300000000000000);
  v136 = sub_1DD901910(v159[0], v159[1]);
  v138 = v39;
  v159[0] = 0;
  v159[1] = 0xE000000000000000;
  sub_1DDA15070();

  strcpy(v159, "Content-Type: ");
  HIBYTE(v159[1]) = -18;
  sub_1DDA13430();
  sub_1DDA14020();
  sub_1DDA14000();
  v40 = (*(v33 + 48))(v31, 1, v153);
  v41 = *(v155 + 576);
  if (v40 == 1)
  {
    sub_1DD90D378(*(v155 + 576), &qword_1ECD83820, &qword_1DDA1B490);
  }

  else
  {
    v42 = *(v155 + 560);
    v43 = *(v155 + 552);
    v44 = sub_1DDA14010();
    v46 = v45;
    (*(v42 + 8))(v41, v43);
    if (v46)
    {
      v47 = v44;
      goto LABEL_13;
    }
  }

  v46 = 0x80000001DDA28A70;
  v47 = 0xD000000000000018;
LABEL_13:
  v48 = v133;
  MEMORY[0x1E12B7AB0](v47, v46);

  MEMORY[0x1E12B7AB0](168626701, 0xE400000000000000);
  v49 = sub_1DD901910(v159[0], v159[1]);
  v51 = v50;
  *(v155 + 144) = v140;
  *(v155 + 152) = v142;
  *(v155 + 160) = v136;
  *(v155 + 168) = v138;
  *(v155 + 176) = v49;
  *(v155 + 184) = v50;
  sub_1DD909CD4(v140, v142);
  sub_1DD909CD4(v136, v138);
  v131 = v51;
  sub_1DD909CD4(v49, v51);
  v53 = *(v155 + 144);
  v52 = *(v155 + 152);
  *(v155 + 336) = v53;
  *(v155 + 344) = v52;
  sub_1DD909CD4(v53, v52);
  sub_1DD9B4630();
  sub_1DDA14E80();
  sub_1DD909D28(v53, v52);
  v55 = *(v155 + 160);
  v54 = *(v155 + 168);
  *(v155 + 336) = v55;
  *(v155 + 344) = v54;
  sub_1DD909CD4(v55, v54);
  sub_1DDA14E80();
  sub_1DD909D28(v55, v54);
  v57 = *(v155 + 176);
  v56 = *(v155 + 184);
  *(v155 + 336) = v57;
  *(v155 + 344) = v56;
  sub_1DD909CD4(v57, v56);
  sub_1DDA14E80();
  sub_1DD909D28(v57, v56);
  swift_arrayDestroy();
  v58 = sub_1DDA13370();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v158 = sub_1DDA13360() | 0x4000000000000000;
  v128 = v158;
  v61 = sub_1DDA14E70();
  v63 = v155;
  if (v62 >> 60 == 15)
  {
    goto LABEL_23;
  }

  v64 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v64 == 3)
    {
      goto LABEL_22;
    }

    v65 = *(v61 + 16);
    v66 = *(v61 + 24);
  }

  else
  {
    if (!v64)
    {
      if ((v62 & 0xFF000000000000) == 0)
      {
LABEL_17:
        sub_1DD90D440(v61, v62);
        v63 = v155;
        v48 = v133;
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v65 = v61;
    v66 = v61 >> 32;
  }

  if (v65 == v66)
  {
    goto LABEL_22;
  }

LABEL_25:
  v129 = v61;
  v81 = v62;
  sub_1DDA135A0();
  *(v155 + 400) = 0;
  *(v155 + 408) = v158;
  sub_1DD909CD4(0, v158);
  sub_1DDA14E80();
  sub_1DD90D440(v129, v81);
  sub_1DD909D28(*(v155 + 400), *(v155 + 408));
  sub_1DD909D28(0, v158);
  v157 = xmmword_1DDA16330;
  v61 = sub_1DDA14E70();
  v63 = v155;
  v87 = v86;
  while (1)
  {
    v62 = v87;
    if (v87 >> 60 == 15)
    {
      v128 = 0xC000000000000000;
      goto LABEL_23;
    }

    v88 = v87 >> 62;
    if ((v62 >> 62) > 1)
    {
      break;
    }

    if (v88)
    {
      v89 = v61;
      v90 = v61 >> 32;
      goto LABEL_34;
    }

    if ((v62 & 0xFF000000000000) == 0)
    {
      v128 = 0xC000000000000000;
      goto LABEL_17;
    }

LABEL_35:
    v91 = v61;
    v92 = v62;
    sub_1DDA135A0();
    *(v155 + 400) = v157;
    sub_1DD909CD4(v157, *(&v157 + 1));
    sub_1DDA14E80();
    sub_1DD90D440(v91, v92);
    sub_1DD909D28(*(v155 + 400), *(v155 + 408));
    sub_1DD909D28(v157, *(&v157 + 1));
    v157 = xmmword_1DDA16330;
    v61 = sub_1DDA14E70();
    v87 = v93;
    v63 = v155;
  }

  if (v88 != 2)
  {
    goto LABEL_37;
  }

  v89 = *(v61 + 16);
  v90 = *(v61 + 24);
LABEL_34:
  if (v89 != v90)
  {
    goto LABEL_35;
  }

LABEL_37:
  v128 = 0xC000000000000000;
  v63 = v155;
LABEL_22:
  sub_1DD90D440(v61, v62);
LABEL_23:
  v67 = sub_1DD901910(2573, 0xE200000000000000);
  v69 = v68;
  *(v63 + 352) = v67;
  *(v63 + 360) = v68;
  sub_1DDA14E80();
  v127 = v67;
  v70 = *(v63 + 432);
  if (*(v70 + 48) != 255)
  {
    v71 = *(v63 + 241);
    v72 = *(v63 + 520);
    *(v63 + 192) = *(v63 + 504);
    *(v63 + 208) = v72;
    *(v63 + 224) = *(v63 + 536);
    *(v63 + 240) = v71 & 1;
    v159[0] = 11565;
    v159[1] = 0xE200000000000000;
    sub_1DD90ADB4(v70, v63 + 248, &qword_1ECD83838, &qword_1DDA1B498);
    MEMORY[0x1E12B7AB0](v146, v144);
    MEMORY[0x1E12B7AB0](2573, 0xE200000000000000);
    v73 = sub_1DD901910(v159[0], v159[1]);
    v75 = v74;
    v123 = sub_1DD901910(0xD00000000000002FLL, 0x80000001DDA28A90);
    v125 = v76;
    v77 = sub_1DDA13230();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    sub_1DDA13220();
    sub_1DD9B4684();
    v80 = sub_1DDA13210();
    v83 = v82;
    v119 = v80;

    *(v63 + 48) = v73;
    *(v63 + 56) = v75;
    v117 = v73;
    *(v63 + 64) = v123;
    *(v63 + 72) = v125;
    *(v63 + 80) = v119;
    *(v63 + 88) = v83;
    *(v63 + 96) = v127;
    *(v63 + 104) = v69;
    sub_1DD909CD4(v73, v75);
    sub_1DD909CD4(v123, v125);
    v116 = v83;
    sub_1DD909CD4(v119, v83);
    sub_1DD909CD4(v127, v69);
    v84 = v73;
    *(v63 + 384) = v73;
    *(v63 + 392) = v75;
    v85 = v75;
    sub_1DD909CD4(v84, v75);
    sub_1DDA14E80();
    sub_1DD909D28(v84, v75);
    v94 = *(v155 + 64);
    v95 = *(v155 + 72);
    *(v155 + 384) = v94;
    *(v155 + 392) = v95;
    v96 = v94;
    sub_1DD909CD4(v94, v95);
    sub_1DDA14E80();
    sub_1DD909D28(v96, v95);
    v97 = *(v155 + 80);
    v98 = *(v155 + 88);
    *(v155 + 384) = v97;
    *(v155 + 392) = v98;
    v99 = v97;
    sub_1DD909CD4(v97, v98);
    sub_1DDA14E80();
    sub_1DD909D28(v99, v98);
    v100 = *(v155 + 96);
    v101 = *(v155 + 104);
    *(v155 + 384) = v100;
    *(v155 + 392) = v101;
    v102 = v100;
    sub_1DD909CD4(v100, v101);
    sub_1DDA14E80();
    v63 = v155;
    v103 = *(v155 + 432);
    sub_1DD909D28(v102, v101);
    sub_1DD909D28(v117, v85);
    sub_1DD909D28(v123, v125);
    sub_1DD909D28(v119, v116);
    sub_1DD90D378(v103, &qword_1ECD83838, &qword_1DDA1B498);
    swift_arrayDestroy();
    v48 = v133;
  }

  v121 = v69;
  v122 = v49;
  v159[0] = 11565;
  v159[1] = 0xE200000000000000;
  MEMORY[0x1E12B7AB0](v146, v144);

  MEMORY[0x1E12B7AB0](168635693, 0xE400000000000000);
  v104 = sub_1DD901910(v159[0], v159[1]);
  v106 = v105;
  *(v63 + 368) = v104;
  *(v63 + 376) = v105;
  sub_1DDA14E80();
  v107 = *(v63 + 696);
  v108 = *(v63 + 688);
  v109 = v63;
  v120 = *(v63 + 680);
  v124 = *(v63 + 720);
  v126 = *(v63 + 672);
  v110 = *(v63 + 664);
  v134 = *(v63 + 656);
  v111 = *(v63 + 632);
  v145 = *(v63 + 648);
  v147 = *(v63 + 624);
  v154 = *(v63 + 600);
  v156 = *(v63 + 576);
  v112 = *(v63 + 568);
  v114 = v63 + 416;
  v113 = *(v63 + 416);
  v118 = *(v114 + 8);
  sub_1DD909D28(0, v128);
  sub_1DD909D28(v140, v142);
  sub_1DD909D28(v136, v138);
  sub_1DD909D28(v122, v131);
  sub_1DD909D28(v127, v121);

  sub_1DD909D28(v104, v106);
  (*(v108 + 16))(v113, v107, v120);
  v143(v118, v110, v111);
  [v48 closeFile];

  v149(v110, v111);
  (*(v108 + 8))(v107, v120);

  v115 = *(v109 + 8);

  return v115();
}

void sub_1DD98F07C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v45 = a1;
  v47 = a5;
  v48 = a6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488);
  v42 = *(v50 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v40 - v10;
  v11 = sub_1DDA134E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = a2[5];
  v18 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v17);
  v46 = (*(v18 + 24))(a3, a4, v17, v18);
  v19 = *(v12 + 16);
  v19(v16, a4, v11);
  v19(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v11);
  v20 = v42;
  (*(v42 + 16))(v49, v45, v50);
  sub_1DD929A8C(a2, v52);
  v21 = *(v12 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = (v13 + v21 + v22) & ~v21;
  v24 = v20;
  v25 = (v13 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v26 = (v43 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = *(v12 + 32);
  v28(v27 + v22, v16, v11);
  v28(v27 + v23, v41, v11);
  (*(v24 + 32))(v27 + v25, v49, v50);
  v29 = (v27 + v26);
  v30 = v52[1];
  *v29 = v52[0];
  v29[1] = v30;
  v29[2] = v53[0];
  *(v29 + 41) = *(v53 + 9);
  v31 = type metadata accessor for DocumentRegistrationURLSessionDelegate();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_data] = xmmword_1DDA16330;
  v33 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_update];
  v35 = v48;
  *v34 = v47;
  *(v34 + 1) = v35;
  v36 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_completion];
  *v36 = sub_1DD9B44A0;
  v36[1] = v27;
  v37 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor];
  *v37 = 0;
  v37[4] = 1;
  *v33 = 0;
  v33[8] = 1;
  v51.receiver = v32;
  v51.super_class = v31;
  v38 = v46;

  v39 = objc_msgSendSuper2(&v51, sel_init);
  [v38 setDelegate_];

  [v38 resume];
}

void sub_1DD98F464(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a7;
  v66 = a3;
  v64 = a2;
  v62 = a1;
  v67[1] = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83800, &qword_1DDA1B438);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v56 - v15;
  v16 = sub_1DDA134E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_1DDA13470();
  v67[0] = 0;
  v24 = [v22 removeItemAtURL:v23 error:v67];

  if (v24)
  {
    v25 = v67[0];
    v26 = v66;
    if (a4)
    {
LABEL_3:
      v27 = a4;
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v28 = sub_1DDA14810();
      __swift_project_value_buffer(v28, qword_1ECDA20F8);
      v29 = a4;
      v30 = sub_1DDA147F0();
      v31 = sub_1DDA14EE0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = a4;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1DD8F8000, v30, v31, "Received error response: %@", v32, 0xCu);
        sub_1DD90D378(v33, &unk_1ECD83100, &unk_1DDA185C0);
        MEMORY[0x1E12B8CE0](v33, -1, -1);
        MEMORY[0x1E12B8CE0](v32, -1, -1);
      }

      v67[0] = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488);
      sub_1DDA14CE0();
      goto LABEL_8;
    }
  }

  else
  {
    v60 = a8;
    v37 = v67[0];
    v38 = sub_1DDA13410();

    swift_willThrow();
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v39 = sub_1DDA14810();
    __swift_project_value_buffer(v39, qword_1ECDA20F8);
    (*(v17 + 16))(v21, a6, v16);
    v40 = v38;
    v41 = sub_1DDA147F0();
    v42 = sub_1DDA14EE0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v59 = v17;
      v44 = v43;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67[0] = v58;
      *v44 = 136315394;
      sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0]);
      v56 = v41;
      v45 = sub_1DDA15400();
      v46 = v16;
      v48 = v47;
      (*(v59 + 8))(v21, v46);
      v49 = sub_1DD93FA54(v45, v48, v67);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2112;
      v50 = v38;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v51;
      v53 = v56;
      v52 = v57;
      *v57 = v51;
      _os_log_impl(&dword_1DD8F8000, v53, v42, "Unable to delete temporary client file for: %s with error %@", v44, 0x16u);
      sub_1DD90D378(v52, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v52, -1, -1);
      v54 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1E12B8CE0](v54, -1, -1);
      MEMORY[0x1E12B8CE0](v44, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v21, v16);
    }

    v26 = v66;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (v64 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v55 = v63;
    if (v26)
    {
      sub_1DD98D3BC(v62, v64, v63);
      sub_1DD90ADB4(v55, v61, &qword_1ECD83800, &qword_1DDA1B438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488);
      sub_1DDA14CF0();
      sub_1DD90D378(v55, &qword_1ECD83800, &qword_1DDA1B438);
LABEL_8:
      v36 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  __break(1u);
}

id sub_1DD98FD08(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DDA13470();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1DDA134E0();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1DDA13410();

    swift_willThrow();
    v9 = sub_1DDA134E0();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DD98FE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83648, &qword_1DDA1B1B8);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83670, &qword_1DDA1B1E8) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD98FF80, 0, 0);
}

uint64_t sub_1DD98FF80()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD83670, &qword_1DDA1B1E8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83678, &qword_1DDA1B1F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD83670, &qword_1DDA1B1E8);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_1DD90D2A4(&qword_1ECD83680, &qword_1ECD83648, &qword_1DDA1B1B8);
    sub_1DDA14DC0();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD83670, &qword_1DDA1B1E8);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = sub_1DD90D2A4(&qword_1ECD83688, &qword_1ECD83678, &qword_1DDA1B1F0);
    v16 = *(MEMORY[0x1E69E85A8] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_1DD990288;
    v18 = v0[18];
    v19 = v0[11];

    return MEMORY[0x1EEE6D8C8](v19, v3, v15);
  }
}

uint64_t sub_1DD990288()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD9B4F90, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[16];
    v4 = v3[17];
    v6 = v3[15];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1DD9903E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83388, &qword_1DDA1A298) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD990504, 0, 0);
}

uint64_t sub_1DD990504()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD83388, &qword_1DDA1A298);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83390, &qword_1DDA1A2A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD83388, &qword_1DDA1A298);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_1DD90D2A4(&qword_1ECD83860, &qword_1ECD83380, &qword_1DDA1A288);
    sub_1DDA14DC0();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD83388, &qword_1DDA1A298);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    v10 = sub_1DDA13BD0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = sub_1DD90D2A4(&qword_1ECD83868, &qword_1ECD83390, &qword_1DDA1A2A0);
    v17 = *(MEMORY[0x1E69E85A8] + 4);
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_1DD990840;
    v19 = v0[18];
    v20 = v0[11];

    return MEMORY[0x1EEE6D8C8](v20, v3, v16);
  }
}

uint64_t sub_1DD990840()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD99099C, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[16];
    v4 = v3[17];
    v6 = v3[15];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1DD99099C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  swift_endAccess();

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_1DD990A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = a8;
  v8[52] = v26;
  v8[49] = a6;
  v8[50] = a7;
  v8[47] = a4;
  v8[48] = a5;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8) + 64) + 15;
  v8[53] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  v8[54] = swift_task_alloc();
  v12 = sub_1DDA13420();
  v8[55] = v12;
  v13 = *(v12 - 8);
  v8[56] = v13;
  v14 = *(v13 + 64) + 15;
  v8[57] = swift_task_alloc();
  v15 = sub_1DDA134E0();
  v8[58] = v15;
  v16 = *(v15 - 8);
  v8[59] = v16;
  v17 = *(v16 + 64) + 15;
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v8[62] = SessionResponse;
  v19 = *(*(SessionResponse - 8) + 64) + 15;
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v8[68] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v8[69] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v8[70] = swift_task_alloc();
  v23 = *(*(sub_1DDA14B60() - 8) + 64) + 15;
  v8[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD990CD4, a4, 0);
}

uint64_t sub_1DD990CD4()
{
  v1 = v0[49];
  v2 = v0[47];
  v0[46] = MEMORY[0x1E69E7CC8];
  __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
  swift_beginAccess();
  sub_1DD928DF4((v2 + 27), (v0 + 2));
  v3 = v0[2];
  v4 = sub_1DD913FF8();
  v6 = v5;
  v0[72] = v5;
  sub_1DD9291B0((v0 + 2));
  v7 = v2[18];
  v0[73] = v7;
  v8 = v2[19];
  v0[74] = v8;
  v9 = swift_task_alloc();
  v0[75] = v9;
  *v9 = v0;
  v9[1] = sub_1DD990DFC;
  v10 = v0[48];

  return sub_1DD911340(v4, v6, v7, v8, v10, v1);
}

uint64_t sub_1DD990DFC(uint64_t a1)
{
  v2 = *(*v1 + 600);
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 376);
  v6 = *v1;
  *(*v1 + 608) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD990F30, v4, 0);
}

uint64_t sub_1DD990F30()
{
  v20 = v0;
  v1 = v0[76];
  v3 = v0[48];
  v2 = v0[49];
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v4;
  sub_1DD911E90(v1, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v19);

  v0[46] = v19;
  v0[37] = 0xD000000000000018;
  v0[38] = 0x80000001DDA262D0;
  v0[39] = v3;
  v0[40] = v2;
  v6 = sub_1DDA13230();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  sub_1DDA13220();
  sub_1DD9B2808();
  v9 = sub_1DDA13210();
  v11 = v10;

  v12 = v0[71];
  v13 = v0[49];
  v14 = v0[47];

  sub_1DDA14B50();
  v15 = sub_1DDA14B30();
  v17 = v16;
  sub_1DD909D28(v9, v11);
  sub_1DD9C70C8(v15, v17, 0xD000000000000022, 0x80000001DDA26990);
  v0[77] = v14[45];
  v0[78] = v14[14];
  v0[79] = v14[15];

  return MEMORY[0x1EEE6DFA0](sub_1DD991138, 0, 0);
}

uint64_t sub_1DD991138()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[68];
  v5 = sub_1DDA14D60();
  v0[80] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[81] = v7;
  v0[82] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v4, 1, 1, v5);
  v0[83] = sub_1DDA14D40();

  v8 = sub_1DDA14D30();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v3;
  v11 = sub_1DD982A18(0, 0, v4, &unk_1DDA1B3E8, v9);
  v0[84] = v11;
  v12 = *(MEMORY[0x1E69E86C0] + 4);
  v13 = swift_task_alloc();
  v0[85] = v13;
  *v13 = v0;
  v13[1] = sub_1DD9912CC;
  v14 = v0[70];
  v15 = v0[69];

  return MEMORY[0x1EEE6DA40](v14, v11, v15);
}

uint64_t sub_1DD9912CC()
{
  v1 = *(*v0 + 680);
  v2 = *(*v0 + 672);
  v3 = *(*v0 + 376);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD9913F8, v3, 0);
}

uint64_t sub_1DD9913F8()
{
  v1 = *(v0 + 560);
  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_1DD90D378(v1, &qword_1ECD82FA0, &qword_1DDA18948);
  if (v3 == 1)
  {
    v4 = *(v0 + 400);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v17 = *(v0 + 400);
      }

      if (sub_1DDA15190() >= 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_4:
      v5 = *(v0 + 480);
      v6 = *(v0 + 488);
      v7 = *(v0 + 464);
      v8 = *(v0 + 472);
      v10 = *(v0 + 448);
      v9 = *(v0 + 456);
      v11 = *(v0 + 440);
      __swift_project_boxed_opaque_existential_1((*(v0 + 376) + 176), *(*(v0 + 376) + 200));
      sub_1DD910E48(v5);
      *(v0 + 352) = 0x6E6F69737365732FLL;
      *(v0 + 360) = 0xE900000000000073;
      (*(v10 + 104))(v9, *MEMORY[0x1E6968F70], v11);
      sub_1DD9313D4();
      sub_1DDA134D0();
      (*(v10 + 8))(v9, v11);
      v12 = *(v8 + 8);
      *(v0 + 688) = v12;
      *(v0 + 696) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v12(v5, v7);
      v13 = *(v0 + 368);
      *(v0 + 704) = v13;
      v14 = swift_task_alloc();
      *(v0 + 712) = v14;
      *v14 = v0;
      v14[1] = sub_1DD991784;
      v15 = *(v0 + 488);

      return sub_1DD950D48(v15, 0, 0xF000000000000000, 0, v13, 0, 1, 0);
    }
  }

  v18 = *(v0 + 368);

  v20 = *(v0 + 408);
  v19 = *(v0 + 416);
  v21 = *(v0 + 400);
  v27 = *(v0 + 384);
  v28 = *(v0 + 584);
  v22 = *(v0 + 376);
  sub_1DD9B48D0(&qword_1ECD82F88, v23, type metadata accessor for Session);
  sub_1DD928DF4(v22 + 216, v0 + 96);
  v24 = swift_task_alloc();
  *(v0 + 752) = v24;
  *(v24 + 16) = v21;
  *(v24 + 24) = v19;
  *(v24 + 32) = v22;
  *(v24 + 40) = v0 + 96;
  *(v24 + 48) = v28;
  *(v24 + 64) = v27;
  *(v24 + 80) = v20;
  v25 = *(MEMORY[0x1E69E87D8] + 4);
  v26 = swift_task_alloc();
  *(v0 + 760) = v26;
  *v26 = v0;
  v26[1] = sub_1DD992264;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DD991784(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 712);
  v7 = *v3;
  v5[90] = a1;
  v5[91] = a2;
  v5[92] = v2;

  v8 = v4[88];

  if (v2)
  {
    v9 = sub_1DD991C3C;
  }

  else
  {

    v9 = sub_1DD9918E0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD9918E0()
{
  v36 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 520);
  v5 = *(v0 + 496);
  v6 = *(*(v0 + 376) + 304);
  sub_1DD9B48D0(&qword_1ECD837F8, 255, type metadata accessor for CreateSessionResponse);
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 720), *(v0 + 728));
    *(v0 + 744) = v1;
    v7 = *(v0 + 696);
    v8 = *(v0 + 376);
    (*(v0 + 688))(*(v0 + 488), *(v0 + 464));
    v9 = sub_1DD992154;
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 520);
    v11 = *(v0 + 512);
    v12 = sub_1DDA14810();
    __swift_project_value_buffer(v12, qword_1ECDA20F8);
    sub_1DD9B4C84(v10, v11, type metadata accessor for CreateSessionResponse);
    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14ED0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 728);
    v17 = *(v0 + 720);
    v18 = *(v0 + 696);
    v19 = *(v0 + 688);
    v20 = *(v0 + 512);
    if (v15)
    {
      v22 = *(v0 + 496);
      v21 = *(v0 + 504);
      v33 = *(v0 + 464);
      v34 = *(v0 + 488);
      v23 = swift_slowAlloc();
      v32 = v19;
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      sub_1DD9B4C84(v20, v21, type metadata accessor for CreateSessionResponse);
      v25 = sub_1DDA14B70();
      v27 = v26;
      sub_1DD9B4918(v20, type metadata accessor for CreateSessionResponse);
      v28 = sub_1DD93FA54(v25, v27, &v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DD8F8000, v13, v14, "Decoded response: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B8CE0](v24, -1, -1);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
      sub_1DD909D28(v17, v16);

      v32(v34, v33);
    }

    else
    {
      v29 = *(v0 + 488);
      v30 = *(v0 + 464);
      sub_1DD909D28(*(v0 + 720), *(v0 + 728));

      sub_1DD9B4918(v20, type metadata accessor for CreateSessionResponse);
      v19(v29, v30);
    }

    v8 = *(v0 + 376);
    sub_1DD9B4978(*(v0 + 520), *(v0 + 528), type metadata accessor for CreateSessionResponse);
    v9 = sub_1DD991CBC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1DD991C3C()
{
  *(v0 + 744) = *(v0 + 736);
  v1 = *(v0 + 696);
  v2 = *(v0 + 376);
  (*(v0 + 688))(*(v0 + 488), *(v0 + 464));

  return MEMORY[0x1EEE6DFA0](sub_1DD992154, v2, 0);
}

uint64_t sub_1DD991CBC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 432);
  v3 = *(v0 + 376);
  sub_1DD9B4978(*(v0 + 528), v1, type metadata accessor for CreateSessionResponse);
  v4 = *(v3 + 136);
  v49 = *(v3 + 128);
  v46 = v1[1];
  v47 = *v1;
  sub_1DD928DF4(v3 + 216, v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 256) = *(v0 + 176);
  *(v0 + 272) = v5;
  *(v0 + 285) = *(v0 + 205);
  sub_1DD9122F0(v2);
  sub_1DD9291B0(v0 + 176);
  v6 = type metadata accessor for Credentials(0);
  v7 = (*(*(v6 - 8) + 48))(v2, 1, v6);
  v8 = *(v0 + 432);
  if (v7 == 1)
  {
    sub_1DD90D378(*(v0 + 432), &qword_1ECD82D20, &qword_1DDA18CE0);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v9 = Credentials.credentialsID.getter();
    v44 = v10;
    v45 = v9;
    sub_1DD9B4918(v8, type metadata accessor for Credentials);
  }

  v11 = *(v0 + 424);
  sub_1DD90ADB4(*(v0 + 408), v11, &qword_1ECD82F60, &qword_1DDA18890);
  v12 = sub_1DDA13F50();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = *(v0 + 424);
  if (v14 == 1)
  {
    sub_1DD90D378(*(v0 + 424), &qword_1ECD82F60, &qword_1DDA18890);
    v42 = 0;
  }

  else
  {
    v42 = sub_1DDA13F40();
    (*(v13 + 8))(v15, v12);
  }

  v43 = *(v0 + 536);
  v16 = (v43 + *(*(v0 + 496) + 32));
  v17 = *v16;
  v18 = 0.0;
  if (v17 != 2)
  {
    v18 = v16[1];
  }

  v19 = *(v0 + 664);
  v20 = v17 == 2;
  v21 = *(v0 + 656);
  v40 = v14 == 1;
  v41 = v20;
  v22 = *(v0 + 632);
  v23 = *(v0 + 624);
  v24 = *(v0 + 616);
  v25 = *(v0 + 592);
  v26 = *(v0 + 584);
  v27 = *(v0 + 544);
  (*(v0 + 648))(v27, 1, 1, *(v0 + 640));

  v28 = sub_1DDA14D30();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  *(v29 + 32) = v49;
  *(v29 + 40) = v4;
  *(v29 + 48) = v47;
  *(v29 + 56) = v46;
  *(v29 + 64) = v23;
  *(v29 + 72) = v22;
  *(v29 + 80) = v24;
  *(v29 + 88) = v26;
  *(v29 + 96) = v25;
  *(v29 + 104) = v45;
  *(v29 + 112) = v44;
  *(v29 + 120) = v42;
  *(v29 + 124) = v40;
  *(v29 + 128) = v18;
  *(v29 + 136) = v41;
  sub_1DD982718(0, 0, v27, &unk_1DDA1B400, v29);

  sub_1DD9B4918(v43, type metadata accessor for CreateSessionResponse);
  v32 = *(v0 + 408);
  v31 = *(v0 + 416);
  v33 = *(v0 + 400);
  v48 = *(v0 + 384);
  v50 = *(v0 + 584);
  v34 = *(v0 + 376);
  sub_1DD9B48D0(&qword_1ECD82F88, v35, type metadata accessor for Session);
  sub_1DD928DF4(v34 + 216, v0 + 96);
  v36 = swift_task_alloc();
  *(v0 + 752) = v36;
  *(v36 + 16) = v33;
  *(v36 + 24) = v31;
  *(v36 + 32) = v34;
  *(v36 + 40) = v0 + 96;
  *(v36 + 48) = v50;
  *(v36 + 64) = v48;
  *(v36 + 80) = v32;
  v37 = *(MEMORY[0x1E69E87D8] + 4);
  v38 = swift_task_alloc();
  *(v0 + 760) = v38;
  *v38 = v0;
  v38[1] = sub_1DD992264;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DD992154()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v10 = v0[60];
  v9 = v0[61];
  v14 = v0[57];
  v15 = v0[54];
  v16 = v0[53];

  v11 = v0[1];
  v12 = v0[93];

  return v11();
}

uint64_t sub_1DD992264()
{
  v1 = *v0;
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);
  v4 = *(*v0 + 376);
  v6 = *v0;

  sub_1DD9291B0(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DD9923A0, v4, 0);
}

uint64_t sub_1DD9923A0()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v10 = v0[60];
  v9 = v0[61];
  v13 = v0[57];
  v14 = v0[54];
  v15 = v0[53];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DD9924B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v23;
  *(v8 + 384) = v22;
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 336) = a3;
  *(v8 + 344) = a4;
  *(v8 + 328) = a2;
  v10 = *(*(sub_1DDA14140() - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  *(v8 + 416) = v11;
  v12 = *(v11 - 8);
  *(v8 + 424) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 440) = v14;
  v15 = *(v14 - 8);
  *(v8 + 448) = v15;
  *(v8 + 456) = *(v15 + 64);
  *(v8 + 464) = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 472) = v16;
  *(v8 + 480) = *(v16 + 64);
  *(v8 + 488) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v18 = sub_1DDA134E0();
  *(v8 + 528) = v18;
  v19 = *(v18 - 8);
  *(v8 + 536) = v19;
  *(v8 + 544) = *(v19 + 64);
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD992780, a5, 0);
}

uint64_t sub_1DD992780()
{
  v177 = v0;
  v1 = *(v0 + 336);
  if (v1 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DDA15190())
  {
    v3 = 0;
    v4 = *(v0 + 536);
    v171 = v1 & 0xC000000000000001;
    v162 = v1 & 0xFFFFFFFFFFFFFF8;
    v161 = *(v0 + 336) + 32;
    v172 = (v4 + 16);
    v163 = *(v0 + 472);
    v167 = (*(v0 + 424) + 8);
    v170 = (v4 + 8);
    v165 = *(v0 + 352);
    v121 = *(v0 + 544) + 7;
    v164 = v4;
    v166 = *(v0 + 448);
    v169 = i;
    while (v171)
    {
      v11 = MEMORY[0x1E12B7F50](v3, *(v0 + 336));
      v12 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_61;
      }

LABEL_13:
      v13 = *v172;
      (*v172)(*(v0 + 568), v11 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, *(v0 + 528));
      v174 = v12;
      if ((*(v11 + 16) & 0x80000000) != 0)
      {
        if (qword_1ECD827B0 != -1)
        {
          swift_once();
        }

        v21 = *(v0 + 568);
        v22 = *(v0 + 552);
        v23 = *(v0 + 528);
        v24 = sub_1DDA14810();
        __swift_project_value_buffer(v24, qword_1ECDA20F8);
        v13(v22, v21, v23);
        v25 = sub_1DDA147F0();
        v26 = sub_1DDA14EE0();
        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 552);
        v29 = *(v0 + 528);
        if (v27)
        {
          v30 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v176 = v158;
          *v30 = 136315138;
          sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0]);
          v31 = v3;
          v32 = sub_1DDA15400();
          v34 = v33;
          v10 = *v170;
          (*v170)(v28, v29);
          v35 = v32;
          v3 = v31;
          v36 = sub_1DD93FA54(v35, v34, &v176);

          *(v30 + 4) = v36;
          _os_log_impl(&dword_1DD8F8000, v25, v26, "Invalid file descriptor provided: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v158);
          i = v169;
          MEMORY[0x1E12B8CE0](v158, -1, -1);
          MEMORY[0x1E12B8CE0](v30, -1, -1);
        }

        else
        {

          v10 = *v170;
          (*v170)(v28, v29);
        }

        v87 = *(v0 + 568);
        v88 = *(v0 + 432);
        v89 = *(v0 + 440);
        v91 = *(v0 + 408);
        v90 = *(v0 + 416);
        v1 = *(v0 + 344);
        sub_1DDA140F0();
        sub_1DDA14DF0();

        (*v167)(v88, v90);
        goto LABEL_5;
      }

      v14 = sub_1DD957CEC();
      if (v14 < 1)
      {
        v37 = v3;
        if (qword_1ECD827B0 != -1)
        {
          swift_once();
        }

        v38 = sub_1DDA14810();
        __swift_project_value_buffer(v38, qword_1ECDA20F8);
        v39 = sub_1DDA147F0();
        v40 = sub_1DDA14EE0();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1DD8F8000, v39, v40, "Unable to get file size.", v41, 2u);
          MEMORY[0x1E12B8CE0](v41, -1, -1);
        }

        v5 = *(v0 + 568);
        v7 = *(v0 + 432);
        v6 = *(v0 + 440);
        v9 = *(v0 + 408);
        v8 = *(v0 + 416);
        v1 = *(v0 + 344);

        sub_1DDA140F0();
        sub_1DDA14DF0();

        (*v167)(v7, v8);
        i = v169;
        v10 = *v170;
        v3 = v37;
LABEL_5:
        v10(*(v0 + 568), *(v0 + 528));
        goto LABEL_6;
      }

      v15 = v14;
      v173 = v11;
      v16 = __swift_project_boxed_opaque_existential_1((v165 + 176), *(v165 + 200));
      sub_1DD929A28((v16 + 1), v0 + 176);
      v17 = *(v0 + 200);
      v18 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v17);
      v19 = (*(v18 + 40))(v17, v18);
      if (v20)
      {
        v1 = *__swift_project_boxed_opaque_existential_1((v165 + 176), *(v165 + 200));
      }

      else
      {
        v1 = v19;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      v42 = v15 / 1000000.0;
      if (v42 == INFINITY)
      {
        goto LABEL_62;
      }

      if (v42 <= -9.22337204e18)
      {
        goto LABEL_63;
      }

      if (v42 >= 9.22337204e18)
      {
        goto LABEL_64;
      }

      v168 = v3;
      if (v1 <= v42)
      {
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v160 = v15;
        v62 = sub_1DDA14810();
        __swift_project_value_buffer(v62, qword_1ECDA20E0);
        v63 = sub_1DDA147F0();
        v64 = sub_1DDA14EC0();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1DD8F8000, v63, v64, "Using two phase upload", v65, 2u);
          MEMORY[0x1E12B8CE0](v65, -1, -1);
        }

        v66 = *(v0 + 560);
        v67 = *(v0 + 528);
        v130 = v67;
        v131 = v66;
        v68 = *(v0 + 520);
        v69 = *(v0 + 488);
        v140 = *(v0 + 480);
        v70 = *(v0 + 464);
        v136 = v70;
        v147 = v68;
        v71 = *(v0 + 440);
        v134 = v69;
        v124 = *(v0 + 568);
        v126 = *(v0 + 400);
        v155 = *(v0 + 392);
        v157 = *(v0 + 512);
        v151 = *(v0 + 376);
        v153 = *(v0 + 384);
        v149 = *(v0 + 368);
        v122 = *(v0 + 360);
        v72 = *(v0 + 352);
        v128 = *(v0 + 344);

        v143 = sub_1DDA14D60();
        v138 = *(v143 - 8);
        (*(v138 + 56))(v68, 1, 1, v143);
        v132 = swift_allocObject();
        swift_weakInit();
        v13(v66, v124, v67);
        sub_1DD928DF4(v122, v0 + 16);
        sub_1DD90ADB4(v126, v69, &qword_1ECD82F60, &qword_1DDA18890);
        (*(v166 + 16))(v70, v128, v71);
        v73 = (*(v164 + 80) + 40) & ~*(v164 + 80);
        v74 = (v121 + v73) & 0xFFFFFFFFFFFFFFF8;
        v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
        v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
        v77 = (v76 + 87) & 0xFFFFFFFFFFFFFFF8;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v79 = (*(v163 + 80) + v78 + 16) & ~*(v163 + 80);
        v141 = (v140 + *(v166 + 80) + v79) & ~*(v166 + 80);
        v80 = swift_allocObject();
        v80[2] = 0;
        v145 = v80 + 2;
        v80[3] = 0;
        v80[4] = v132;
        (*(v164 + 32))(v80 + v73, v131, v130);
        *(v80 + v74) = v160;
        *(v80 + v75) = v173;
        v81 = (v80 + v76);
        v82 = *(v0 + 64);
        v81[2] = *(v0 + 48);
        v81[3] = v82;
        v81[4] = *(v0 + 80);
        v83 = *(v0 + 32);
        *v81 = *(v0 + 16);
        v81[1] = v83;
        v84 = (v80 + v77);
        *v84 = v149;
        v84[1] = v151;
        v85 = (v80 + v78);
        *v85 = v153;
        v85[1] = v155;
        sub_1DD914958(v134, v80 + v79, &qword_1ECD82F60, &qword_1DDA18890);
        (*(v166 + 32))(v80 + v141, v136, v71);
        sub_1DD90ADB4(v147, v157, &qword_1ECD82D30, &qword_1DDA188D0);
        LODWORD(v74) = (*(v138 + 48))(v157, 1, v143);

        v86 = *(v0 + 512);
        if (v74 == 1)
        {
          sub_1DD90D378(*(v0 + 512), &qword_1ECD82D30, &qword_1DDA188D0);
        }

        else
        {
          sub_1DDA14D50();
          (*(v138 + 8))(v86, v143);
        }

        v3 = v168;
        if (*v145)
        {
          v97 = v80[3];
          v98 = *v145;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v99 = sub_1DDA14CD0();
          v101 = v100;
          swift_unknownObjectRelease();
        }

        else
        {
          v99 = 0;
          v101 = 0;
        }

        v102 = v170;
        v106 = **(v0 + 328);
        v107 = swift_allocObject();
        *(v107 + 16) = &unk_1DDA1B410;
        *(v107 + 24) = v80;

        if (v101 | v99)
        {
          v108 = v0 + 216;
          *(v0 + 216) = 0;
          *(v0 + 224) = 0;
          *(v0 + 232) = v99;
          *(v0 + 240) = v101;
        }

        else
        {
          v108 = 0;
        }

        i = v169;
        v1 = *(v0 + 520);
        *(v0 + 280) = 1;
        *(v0 + 288) = v108;
        *(v0 + 296) = v106;
        swift_task_create();
      }

      else
      {
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v43 = sub_1DDA14810();
        __swift_project_value_buffer(v43, qword_1ECDA20E0);
        v44 = sub_1DDA147F0();
        v45 = sub_1DDA14EC0();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1DD8F8000, v44, v45, "Using direct upload", v46, 2u);
          MEMORY[0x1E12B8CE0](v46, -1, -1);
        }

        v127 = *(v0 + 568);
        v47 = *(v0 + 560);
        v48 = *(v0 + 528);
        v49 = *(v0 + 504);
        v159 = *(v0 + 496);
        v50 = *(v0 + 488);
        v135 = v47;
        v139 = *(v0 + 544);
        v51 = *(v0 + 464);
        v133 = v51;
        v137 = *(v0 + 456);
        v52 = *(v0 + 440);
        v129 = *(v0 + 400);
        v154 = *(v0 + 392);
        v150 = v49;
        v152 = *(v0 + 384);
        v146 = *(v0 + 368);
        v148 = *(v0 + 376);
        v53 = *(v0 + 352);
        v123 = *(v0 + 360);
        v125 = *(v0 + 344);

        v144 = sub_1DDA14D60();
        v156 = *(v144 - 8);
        (*(v156 + 56))(v49, 1, 1, v144);
        v54 = swift_allocObject();
        swift_weakInit();
        sub_1DD928DF4(v123, v0 + 96);
        v13(v47, v127, v48);
        (*(v166 + 16))(v51, v125, v52);
        sub_1DD90ADB4(v129, v50, &qword_1ECD82F60, &qword_1DDA18890);
        v55 = (*(v164 + 80) + 160) & ~*(v164 + 80);
        v56 = (v139 + *(v166 + 80) + v55) & ~*(v166 + 80);
        v57 = (v137 + *(v163 + 80) + v56) & ~*(v163 + 80);
        v58 = swift_allocObject();
        v59 = *(v0 + 96);
        *(v58 + 56) = *(v0 + 112);
        v60 = *(v0 + 144);
        *(v58 + 72) = *(v0 + 128);
        *(v58 + 88) = v60;
        *(v58 + 104) = *(v0 + 160);
        *(v58 + 16) = 0;
        v142 = (v58 + 16);
        *(v58 + 24) = 0;
        *(v58 + 32) = v54;
        *(v58 + 40) = v59;
        *(v58 + 120) = v146;
        *(v58 + 128) = v148;
        *(v58 + 136) = v152;
        *(v58 + 144) = v154;
        *(v58 + 152) = v173;
        (*(v164 + 32))(v58 + v55, v135, v48);
        (*(v166 + 32))(v58 + v56, v133, v52);
        sub_1DD914958(v50, v58 + v57, &qword_1ECD82F60, &qword_1DDA18890);
        sub_1DD90ADB4(v150, v159, &qword_1ECD82D30, &qword_1DDA188D0);
        LODWORD(v56) = (*(v156 + 48))(v159, 1, v144);

        v61 = *(v0 + 496);
        if (v56 == 1)
        {
          sub_1DD90D378(*(v0 + 496), &qword_1ECD82D30, &qword_1DDA188D0);
        }

        else
        {
          sub_1DDA14D50();
          (*(v156 + 8))(v61, v144);
        }

        v3 = v168;
        if (*v142)
        {
          v92 = *(v58 + 24);
          v93 = *v142;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v94 = sub_1DDA14CD0();
          v96 = v95;
          swift_unknownObjectRelease();
        }

        else
        {
          v94 = 0;
          v96 = 0;
        }

        v102 = v170;
        v103 = **(v0 + 328);
        v104 = swift_allocObject();
        *(v104 + 16) = &unk_1DDA1B428;
        *(v104 + 24) = v58;

        if (v96 | v94)
        {
          v105 = v0 + 248;
          *(v0 + 248) = 0;
          *(v0 + 256) = 0;
          *(v0 + 264) = v94;
          *(v0 + 272) = v96;
        }

        else
        {
          v105 = 0;
        }

        i = v169;
        v1 = *(v0 + 504);
        *(v0 + 304) = 1;
        *(v0 + 312) = v105;
        *(v0 + 320) = v103;
        swift_task_create();
      }

      sub_1DD90D378(v1, &qword_1ECD82D30, &qword_1DDA188D0);
      (*v102)(*(v0 + 568), *(v0 + 528));
LABEL_6:
      ++v3;
      if (v174 == i)
      {
        goto LABEL_67;
      }
    }

    if (v3 >= *(v162 + 16))
    {
      goto LABEL_65;
    }

    v11 = *(v161 + 8 * v3);

    v12 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_13;
    }

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
    ;
  }

LABEL_67:
  v109 = *(v0 + 568);
  v110 = *(v0 + 560);
  v111 = *(v0 + 552);
  v112 = *(v0 + 520);
  v114 = *(v0 + 504);
  v113 = *(v0 + 512);
  v116 = *(v0 + 488);
  v115 = *(v0 + 496);
  v117 = *(v0 + 464);
  v118 = *(v0 + 432);
  v175 = *(v0 + 408);

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_1DD993834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 888) = v41;
  *(v8 + 880) = v40;
  *(v8 + 848) = v38;
  *(v8 + 864) = v39;
  *(v8 + 840) = a8;
  *(v8 + 832) = a7;
  *(v8 + 824) = a6;
  *(v8 + 816) = a5;
  *(v8 + 808) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8) - 8) + 64) + 15;
  *(v8 + 896) = swift_task_alloc();
  v10 = sub_1DDA13830();
  *(v8 + 904) = v10;
  v11 = *(v10 - 8);
  *(v8 + 912) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  v13 = *(*(sub_1DDA14140() - 8) + 64) + 15;
  *(v8 + 936) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  *(v8 + 944) = v14;
  v15 = *(v14 - 8);
  *(v8 + 952) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 960) = swift_task_alloc();
  v17 = sub_1DDA14180();
  *(v8 + 968) = v17;
  v18 = *(v17 - 8);
  *(v8 + 976) = v18;
  *(v8 + 984) = *(v18 + 64);
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  v19 = type metadata accessor for UploadDocumentResponse(0);
  *(v8 + 1008) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = swift_task_alloc();
  v21 = sub_1DDA13140();
  *(v8 + 1040) = v21;
  v22 = *(v21 - 8);
  *(v8 + 1048) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 1056) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 1064) = v24;
  v25 = *(v24 - 8);
  *(v8 + 1072) = v25;
  *(v8 + 1080) = *(v25 + 64);
  *(v8 + 1088) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  *(v8 + 1096) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8) + 64) + 15;
  *(v8 + 1104) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  *(v8 + 1112) = swift_task_alloc();
  v29 = sub_1DDA134E0();
  *(v8 + 1120) = v29;
  v30 = *(v29 - 8);
  *(v8 + 1128) = v30;
  *(v8 + 1136) = *(v30 + 64);
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  v31 = type metadata accessor for TwoPhaseUploadDocumentResponse(0);
  *(v8 + 1176) = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  *(v8 + 1184) = swift_task_alloc();
  *(v8 + 1192) = swift_task_alloc();
  *(v8 + 1200) = swift_task_alloc();
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  *(v8 + 1224) = swift_task_alloc();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  *(v8 + 1232) = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  *(v8 + 1240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD993D7C, 0, 0);
}

uint64_t sub_1DD993D7C()
{
  v1 = v0[101];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[156] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (*(__swift_project_boxed_opaque_existential_1((Strong + 176), *(Strong + 200)) + 48) == 1)
    {

      v0[87] = sub_1DD9403A4(MEMORY[0x1E69E7CC0]);
      v0[88] = &unk_1DDA1B4D0;
      v0[89] = v3;
      v4 = swift_task_alloc();
      v0[157] = v4;
      *v4 = v0;
      v4[1] = sub_1DD994228;

      return sub_1DD9424E4(&unk_1F58EC8A0);
    }

    else
    {
      v0[87] = 0;
      v0[88] = 0;
      v0[89] = 0;
      v17 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
      v18 = v0[156];
      v19 = v0[153];
      v20 = v0[104];
      v21 = v0[103];
      v22 = v0[102];
      v0[159] = sub_1DD98A3E8(v17);
      v0[160] = 0;

      __swift_project_boxed_opaque_existential_1(v18 + 22, v18[25]);
      sub_1DD9895F8(v21, *(v20 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata), (v0 + 2));
      v23 = v18[45];
      v0[161] = v23;
      v25 = v18[14];
      v24 = v18[15];
      v26 = sub_1DDA14D60();
      v0[162] = v26;
      v27 = *(v26 - 8);
      v28 = *(v27 + 56);
      v0[163] = v28;
      v0[164] = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;

      v28(v19, 1, 1, v26);
      v0[165] = sub_1DDA14D40();

      v29 = sub_1DDA14D30();
      v30 = swift_allocObject();
      v31 = MEMORY[0x1E69E85E0];
      v30[2] = v29;
      v30[3] = v31;
      v30[4] = v25;
      v30[5] = v24;
      v30[6] = v23;
      v32 = sub_1DD982A18(0, 0, v19, &unk_1DDA1B4A0, v30);
      v0[166] = v32;
      v33 = *(MEMORY[0x1E69E86C0] + 4);
      v34 = swift_task_alloc();
      v0[167] = v34;
      *v34 = v0;
      v34[1] = sub_1DD994530;
      v35 = v0[155];
      v36 = v0[154];

      return MEMORY[0x1EEE6DA40](v35, v32, v36);
    }
  }

  else
  {
    v6 = v0[155];
    v7 = v0[153];
    v8 = v0[152];
    v9 = v0[151];
    v10 = v0[150];
    v11 = v0[149];
    v12 = v0[148];
    v13 = v0[146];
    v14 = v0[145];
    v15 = v0[144];
    v37 = v0[143];
    v38 = v0[139];
    v39 = v0[138];
    v40 = v0[137];
    v41 = v0[136];
    v42 = v0[132];
    v43 = v0[129];
    v44 = v0[128];
    v45 = v0[127];
    v46 = v0[125];
    v47 = v0[124];
    v48 = v0[120];
    v49 = v0[117];
    v50 = v0[116];
    v51 = v0[115];
    v52 = v0[112];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1DD994228(uint64_t a1)
{
  v2 = *(*v1 + 1256);
  v4 = *v1;
  *(*v1 + 1264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD994328, 0, 0);
}

uint64_t sub_1DD994328()
{
  v1 = v0[156];
  v2 = v0[153];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v0[159] = sub_1DD98A3E8(v0[158]);
  v0[160] = 0;

  __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
  sub_1DD9895F8(v4, *(v3 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata), (v0 + 2));
  v6 = v1[45];
  v0[161] = v6;
  v8 = v1[14];
  v7 = v1[15];
  v9 = sub_1DDA14D60();
  v0[162] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v0[163] = v11;
  v0[164] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;

  v11(v2, 1, 1, v9);
  v0[165] = sub_1DDA14D40();

  v12 = sub_1DDA14D30();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v8;
  v13[5] = v7;
  v13[6] = v6;
  v15 = sub_1DD982A18(0, 0, v2, &unk_1DDA1B4A0, v13);
  v0[166] = v15;
  v16 = *(MEMORY[0x1E69E86C0] + 4);
  v17 = swift_task_alloc();
  v0[167] = v17;
  *v17 = v0;
  v17[1] = sub_1DD994530;
  v18 = v0[155];
  v19 = v0[154];

  return MEMORY[0x1EEE6DA40](v18, v15, v19);
}

uint64_t sub_1DD994530()
{
  v1 = *(*v0 + 1336);
  v2 = *(*v0 + 1328);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD994648, 0, 0);
}

uint64_t sub_1DD994648()
{
  v1 = v0[161];
  v2 = v0[155];

  v3 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = v0[155];
  if (v4 == 1)
  {
    sub_1DD90D378(v0[155], &qword_1ECD82FA0, &qword_1DDA18948);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);

    sub_1DD9B4918(v5, type metadata accessor for SessionRegistry.SessionInfo);
  }

  v0[169] = v7;
  v0[168] = v6;
  v8 = v0[109];
  v9 = v0[107];
  v10 = v0[105];
  __swift_project_boxed_opaque_existential_1((v0[156] + 176), *(v0[156] + 200));
  v0[170] = *v10;
  v11 = sub_1DD913FF8();
  v13 = v12;
  v0[171] = v12;
  v14 = swift_task_alloc();
  v0[172] = v14;
  *v14 = v0;
  v14[1] = sub_1DD9947E0;
  v15 = v0[108];
  v16 = v0[106];

  return sub_1DD911340(v11, v13, v16, v9, v15, v8);
}

uint64_t sub_1DD9947E0(uint64_t a1)
{
  v2 = *(*v1 + 1376);
  v3 = *(*v1 + 1368);
  v5 = *v1;
  *(*v1 + 1384) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD994900, 0, 0);
}

uint64_t sub_1DD994900()
{
  v21 = v0;
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1280);
  v3 = *(v0 + 1272);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v1;
  sub_1DD911E90(v3, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v20);

  v5 = v20;
  *(v0 + 1392) = v20;
  if (v2)
  {
  }

  else
  {
    v7 = *(v0 + 1352);
    v8 = *(v0 + 1344);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1168);
    __swift_project_boxed_opaque_existential_1(v9 + 22, v9[25]);
    sub_1DD983354(v8, v7, 0x7364616F6C70752FLL, 0xE800000000000000, v10);
    sub_1DD9B46D8(v0 + 16, v0 + 112);
    v11 = *(v0 + 64);
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 256) = v11;
    *(v0 + 272) = *(v0 + 80);
    *(v0 + 281) = *(v0 + 89);
    v12 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v12;
    v13 = v9[37];
    sub_1DD9B46D8(v0 + 16, v0 + 304);
    sub_1DD9B4734();
    v14 = sub_1DDA13210();
    *(v0 + 1400) = v14;
    *(v0 + 1408) = v15;
    v16 = v14;
    v17 = v15;
    sub_1DD9B4788(v0 + 16);
    v18 = swift_task_alloc();
    *(v0 + 1416) = v18;
    *v18 = v0;
    v18[1] = sub_1DD994B60;
    v19 = *(v0 + 1168);

    return sub_1DD950D48(v19, v16, v17, 0, v5, 0, 1, 0);
  }
}

uint64_t sub_1DD994B60(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1416);
  v12 = *v3;
  v4[178] = a1;
  v4[179] = a2;
  v4[180] = v2;

  if (v2)
  {
    v6 = v4[174];
    v7 = v4[173];
    v8 = v4[169];
    v9 = v4[159];
    sub_1DD9B4788((v4 + 2));

    v10 = sub_1DD995904;
  }

  else
  {

    v10 = sub_1DD994CD0;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DD994CD0()
{
  v143 = v0;
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 1176);
  v6 = *(*(v0 + 1248) + 304);
  sub_1DD9B48D0(&qword_1ECD83850, 255, type metadata accessor for TwoPhaseUploadDocumentResponse);
  sub_1DDA13170();
  if (v1)
  {
    v130 = *(v0 + 1432);
    v7 = *(v0 + 1424);
    v8 = *(v0 + 1408);
    v9 = *(v0 + 1400);
    v10 = *(v0 + 1392);
    v11 = *(v0 + 1384);
    v12 = *(v0 + 1352);
    v13 = *(v0 + 1272);
    v14 = *(v0 + 1128);
    v133 = *(v0 + 1120);
    v137 = *(v0 + 1168);
    sub_1DD9B4788(v0 + 16);

    sub_1DD909D28(v9, v8);
    sub_1DD909D28(v7, v130);
    sub_1DD9B4788(v0 + 16);
    (*(v14 + 8))(v137, v133);
    *(v0 + 1656) = v1;
    *(v0 + 784) = v1;
    v15 = v1;
    *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 408);
      v17 = *(v0 + 424);
      v19 = *(v0 + 440);
      v18 = *(v0 + 448);
      v21 = *(v0 + 456);
      v20 = *(v0 + 464);
      v22 = *(v0 + 480);
      if (v18)
      {
        v23 = *(v0 + 464);

        sub_1DD9B41AC(v18, v21, v20, MEMORY[0x1E69E7CF8]);
      }

      else
      {
        v49 = *(v0 + 408);

        sub_1DD9B41AC(0, v21, v20, MEMORY[0x1E69E7CF8]);
        v18 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 1672) = v18;

      v50 = *(v18 + 16);
      *(v0 + 1680) = v50;
      if (v50)
      {
        v51 = *(v0 + 696);
        *(v0 + 1688) = v51;
        if (v51)
        {
          *(v0 + 1696) = 0;
          v52 = *(v0 + 1672);
          v53 = *(v52 + 48);
          *(v0 + 1704) = v53;
          v54 = *(v52 + 40);
          v55 = *(v52 + 32);

          v56 = swift_task_alloc();
          *(v0 + 1712) = v56;
          *v56 = v0;
          v56[1] = sub_1DD998C98;

          return sub_1DD948CE8(v54, v53, v55, v51);
        }

        *(v0 + 1696) = v50 - 1;
        v57 = *(v0 + 1672);
      }
    }

    v58 = *(v0 + 1664);
    v59 = *(v0 + 896);
    *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
    v60 = sub_1DDA13840();
    v61 = swift_dynamicCast();
    v62 = *(*(v60 - 8) + 56);
    v63 = *(v0 + 896);
    if (v61)
    {
      v64 = *(v60 - 8);
      v62(*(v0 + 896), 0, 1, v60);
      if ((*(v64 + 88))(v63, v60) == *MEMORY[0x1E69DA4A0])
      {
        v65 = *(v0 + 928);
        v66 = *(v0 + 912);
        v67 = *(v0 + 904);
        v68 = *(v0 + 896);
        (*(v64 + 96))(v68, v60);
        (*(v66 + 32))(v65, v68, v67);
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 928);
        v70 = *(v0 + 920);
        v71 = *(v0 + 912);
        v72 = *(v0 + 904);
        v73 = sub_1DDA14810();
        __swift_project_value_buffer(v73, qword_1ECDA20E0);
        (*(v71 + 16))(v70, v69, v72);
        v74 = sub_1DDA147F0();
        v75 = sub_1DDA14EE0();
        v76 = os_log_type_enabled(v74, v75);
        v77 = *(v0 + 920);
        v78 = *(v0 + 912);
        v79 = *(v0 + 904);
        if (v76)
        {
          v80 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v142[0] = v139;
          *v80 = 136315138;
          v135 = sub_1DDA13810();
          v82 = v81;
          v83 = *(v78 + 8);
          v83(v77, v79);
          v84 = sub_1DD93FA54(v135, v82, v142);

          *(v80 + 4) = v84;
          _os_log_impl(&dword_1DD8F8000, v74, v75, "Attempted a two-phase document upload to an expired session! %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v139);
          v85 = v83;
          MEMORY[0x1E12B8CE0](v139, -1, -1);
          MEMORY[0x1E12B8CE0](v80, -1, -1);
        }

        else
        {

          v85 = *(v78 + 8);
          v85(v77, v79);
        }

        v86 = *(v0 + 1312);
        v87 = *(v0 + 1248);
        v88 = *(v0 + 1224);
        v89 = *(v0 + 928);
        v90 = *(v0 + 904);
        (*(v0 + 1304))(v88, 1, 1, *(v0 + 1296));
        v91 = swift_allocObject();
        v91[2] = 0;
        v91[3] = 0;
        v91[4] = v87;

        sub_1DD982718(0, 0, v88, &unk_1DDA1B4B0, v91);

        v85(v89, v90);
      }

      else
      {
        (*(v64 + 8))(*(v0 + 896), v60);
      }
    }

    else
    {
      v62(*(v0 + 896), 1, 1, v60);
      sub_1DD90D378(v63, &qword_1ECD82F78, &qword_1DDA188D8);
    }

    v92 = *(v0 + 1656);
    v93 = *(v0 + 1248);
    v94 = *(v0 + 1064);
    v95 = *(v0 + 960);
    v96 = *(v0 + 952);
    v140 = *(v0 + 944);
    v97 = *(v0 + 936);
    v98 = *(v0 + 888);
    v99 = *(v0 + 816);
    swift_getErrorValue();
    v100 = *(v0 + 720);
    v101 = *(v0 + 728);
    v102 = *(v0 + 736);
    sub_1DDA15510();
    sub_1DDA140F0();

    sub_1DDA14DF0();

    (*(v96 + 8))(v95, v140);
    sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);
    v103 = *(v0 + 1240);
    v104 = *(v0 + 1224);
    v105 = *(v0 + 1216);
    v106 = *(v0 + 1208);
    v107 = *(v0 + 1200);
    v108 = *(v0 + 1192);
    v109 = *(v0 + 1184);
    v110 = *(v0 + 1168);
    v111 = *(v0 + 1160);
    v112 = *(v0 + 1152);
    v115 = *(v0 + 1144);
    v116 = *(v0 + 1112);
    v117 = *(v0 + 1104);
    v118 = *(v0 + 1096);
    v119 = *(v0 + 1088);
    v120 = *(v0 + 1056);
    v121 = *(v0 + 1032);
    v122 = *(v0 + 1024);
    v123 = *(v0 + 1016);
    v124 = *(v0 + 1000);
    v125 = *(v0 + 992);
    v127 = *(v0 + 960);
    v129 = *(v0 + 936);
    v132 = *(v0 + 928);
    v136 = *(v0 + 920);
    v141 = *(v0 + 896);

    v113 = *(v0 + 8);

    return v113();
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 1200);
    v25 = *(v0 + 1192);
    v26 = sub_1DDA14810();
    *(v0 + 1448) = __swift_project_value_buffer(v26, qword_1ECDA20F8);
    sub_1DD9B4C84(v24, v25, type metadata accessor for TwoPhaseUploadDocumentResponse);
    v27 = sub_1DDA147F0();
    v28 = sub_1DDA14ED0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1432);
    v138 = *(v0 + 1424);
    v31 = *(v0 + 1408);
    v32 = *(v0 + 1400);
    v33 = *(v0 + 1192);
    if (v29)
    {
      v34 = *(v0 + 1184);
      v126 = *(v0 + 1432);
      v35 = *(v0 + 1176);
      v134 = *(v0 + 1168);
      v128 = *(v0 + 1128);
      v131 = *(v0 + 1120);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v142[0] = v37;
      *v36 = 136315138;
      sub_1DD9B4C84(v33, v34, type metadata accessor for TwoPhaseUploadDocumentResponse);
      v38 = sub_1DDA14B70();
      v40 = v39;
      sub_1DD9B4918(v33, type metadata accessor for TwoPhaseUploadDocumentResponse);
      v41 = sub_1DD93FA54(v38, v40, v142);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1DD8F8000, v27, v28, "Decoded response: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12B8CE0](v37, -1, -1);
      MEMORY[0x1E12B8CE0](v36, -1, -1);
      sub_1DD909D28(v32, v31);
      sub_1DD909D28(v138, v126);

      sub_1DD9B4788(v0 + 16);
      v42 = *(v128 + 8);
      v42(v134, v131);
    }

    else
    {
      v43 = *(v0 + 1168);
      v44 = *(v0 + 1128);
      v45 = *(v0 + 1120);
      sub_1DD909D28(*(v0 + 1400), *(v0 + 1408));
      sub_1DD909D28(v138, v30);

      sub_1DD9B4788(v0 + 16);
      sub_1DD9B4918(v33, type metadata accessor for TwoPhaseUploadDocumentResponse);
      v42 = *(v44 + 8);
      v42(v43, v45);
    }

    *(v0 + 1456) = v42;
    v46 = *(v0 + 1248);
    v47 = *(v0 + 1216);
    v48 = *(v0 + 1208);
    sub_1DD9B4978(*(v0 + 1200), v48, type metadata accessor for TwoPhaseUploadDocumentResponse);
    sub_1DD9B4978(v48, v47, type metadata accessor for TwoPhaseUploadDocumentResponse);
    *(v0 + 1464) = v46[45];
    *(v0 + 1472) = v46[14];
    *(v0 + 1480) = v46[15];
    *(v0 + 1488) = v46[16];
    *(v0 + 1496) = v46[17];
    *(v0 + 1504) = *(v47 + 112);
    *(v0 + 1512) = *(v47 + 120);

    return MEMORY[0x1EEE6DFA0](sub_1DD996138, v46, 0);
  }
}

uint64_t sub_1DD995904()
{
  v100 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  sub_1DD909D28(*(v0 + 1400), *(v0 + 1408));
  sub_1DD9B4788(v0 + 16);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1440);
  *(v0 + 1656) = v4;
  *(v0 + 784) = v4;
  v5 = v4;
  *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 424);
    v9 = *(v0 + 440);
    v8 = *(v0 + 448);
    v11 = *(v0 + 456);
    v10 = *(v0 + 464);
    v12 = *(v0 + 480);
    if (v8)
    {
      v13 = *(v0 + 464);

      sub_1DD9B41AC(v8, v11, v10, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v14 = *(v0 + 408);

      sub_1DD9B41AC(0, v11, v10, MEMORY[0x1E69E7CF8]);
      v8 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1672) = v8;

    v15 = *(v8 + 16);
    *(v0 + 1680) = v15;
    if (v15)
    {
      v16 = *(v0 + 696);
      *(v0 + 1688) = v16;
      if (v16)
      {
        *(v0 + 1696) = 0;
        v17 = *(v0 + 1672);
        v18 = *(v17 + 48);
        *(v0 + 1704) = v18;
        v19 = *(v17 + 40);
        v20 = *(v17 + 32);

        v21 = swift_task_alloc();
        *(v0 + 1712) = v21;
        *v21 = v0;
        v21[1] = sub_1DD998C98;

        return sub_1DD948CE8(v19, v18, v20, v16);
      }

      *(v0 + 1696) = v15 - 1;
      v23 = *(v0 + 1672);
    }
  }

  v24 = *(v0 + 1664);
  v25 = *(v0 + 896);
  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v26 = sub_1DDA13840();
  v27 = swift_dynamicCast();
  v28 = *(*(v26 - 8) + 56);
  v29 = *(v0 + 896);
  if (v27)
  {
    v30 = *(v26 - 8);
    v28(*(v0 + 896), 0, 1, v26);
    if ((*(v30 + 88))(v29, v26) == *MEMORY[0x1E69DA4A0])
    {
      v31 = *(v0 + 928);
      v32 = *(v0 + 912);
      v33 = *(v0 + 904);
      v34 = *(v0 + 896);
      (*(v30 + 96))(v34, v26);
      (*(v32 + 32))(v31, v34, v33);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v35 = *(v0 + 928);
      v36 = *(v0 + 920);
      v37 = *(v0 + 912);
      v38 = *(v0 + 904);
      v39 = sub_1DDA14810();
      __swift_project_value_buffer(v39, qword_1ECDA20E0);
      (*(v37 + 16))(v36, v35, v38);
      v40 = sub_1DDA147F0();
      v41 = sub_1DDA14EE0();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 920);
      v44 = *(v0 + 912);
      v45 = *(v0 + 904);
      if (v42)
      {
        v46 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v99 = v96;
        *v46 = 136315138;
        v94 = sub_1DDA13810();
        v48 = v47;
        v49 = *(v44 + 8);
        v49(v43, v45);
        v50 = sub_1DD93FA54(v94, v48, &v99);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1DD8F8000, v40, v41, "Attempted a two-phase document upload to an expired session! %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        v51 = v49;
        MEMORY[0x1E12B8CE0](v96, -1, -1);
        MEMORY[0x1E12B8CE0](v46, -1, -1);
      }

      else
      {

        v51 = *(v44 + 8);
        v51(v43, v45);
      }

      v52 = *(v0 + 1312);
      v53 = *(v0 + 1248);
      v54 = *(v0 + 1224);
      v55 = *(v0 + 928);
      v56 = *(v0 + 904);
      (*(v0 + 1304))(v54, 1, 1, *(v0 + 1296));
      v57 = swift_allocObject();
      v57[2] = 0;
      v57[3] = 0;
      v57[4] = v53;

      sub_1DD982718(0, 0, v54, &unk_1DDA1B4B0, v57);

      v51(v55, v56);
    }

    else
    {
      (*(v30 + 8))(*(v0 + 896), v26);
    }
  }

  else
  {
    v28(*(v0 + 896), 1, 1, v26);
    sub_1DD90D378(v29, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v58 = *(v0 + 1656);
  v59 = *(v0 + 1248);
  v60 = *(v0 + 1064);
  v61 = *(v0 + 960);
  v62 = *(v0 + 952);
  v97 = *(v0 + 944);
  v63 = *(v0 + 936);
  v64 = *(v0 + 888);
  v65 = *(v0 + 816);
  swift_getErrorValue();
  v66 = *(v0 + 720);
  v67 = *(v0 + 728);
  v68 = *(v0 + 736);
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v62 + 8))(v61, v97);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);
  v69 = *(v0 + 1240);
  v70 = *(v0 + 1224);
  v71 = *(v0 + 1216);
  v72 = *(v0 + 1208);
  v73 = *(v0 + 1200);
  v74 = *(v0 + 1192);
  v75 = *(v0 + 1184);
  v76 = *(v0 + 1168);
  v77 = *(v0 + 1160);
  v78 = *(v0 + 1152);
  v80 = *(v0 + 1144);
  v81 = *(v0 + 1112);
  v82 = *(v0 + 1104);
  v83 = *(v0 + 1096);
  v84 = *(v0 + 1088);
  v85 = *(v0 + 1056);
  v86 = *(v0 + 1032);
  v87 = *(v0 + 1024);
  v88 = *(v0 + 1016);
  v89 = *(v0 + 1000);
  v90 = *(v0 + 992);
  v91 = *(v0 + 960);
  v92 = *(v0 + 936);
  v93 = *(v0 + 928);
  v95 = *(v0 + 920);
  v98 = *(v0 + 896);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_1DD996138()
{
  v1 = *(v0 + 1248);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1DD9961BC, 0, 0);
}

uint64_t sub_1DD9961BC()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 504);
  *(v0 + 632) = *(v0 + 488);
  *(v0 + 648) = v2;
  *(v0 + 661) = *(v0 + 517);
  sub_1DD9122F0(v1);
  sub_1DD9291B0(v0 + 488);
  v3 = type metadata accessor for Credentials(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = *(v0 + 1112);
  if (v4 == 1)
  {
    sub_1DD90D378(*(v0 + 1112), &qword_1ECD82D20, &qword_1DDA18CE0);
    v97 = 0;
    v94 = 0;
  }

  else
  {
    v97 = Credentials.credentialsID.getter();
    v94 = v6;
    sub_1DD9B4918(v5, type metadata accessor for Credentials);
  }

  v96 = v0 + 568;
  v7 = *(v0 + 1104);
  sub_1DD90ADB4(*(v0 + 880), v7, &qword_1ECD82F60, &qword_1DDA18890);
  v8 = sub_1DDA13F50();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = *(v0 + 1104);
  if (v10 == 1)
  {
    sub_1DD90D378(*(v0 + 1104), &qword_1ECD82F60, &qword_1DDA18890);
    v92 = 0;
  }

  else
  {
    v92 = sub_1DDA13F40();
    (*(v9 + 8))(v11, v8);
  }

  v12 = *(v0 + 1216);
  v13 = *(*(v0 + 1176) + 52);
  v14 = (v12 + *(type metadata accessor for CreateSessionResponse(0) + 32) + v13);
  v15 = *v14;
  v16 = 0.0;
  if (v15 != 2)
  {
    v16 = v14[1];
  }

  v17 = *(v0 + 1512);
  v85 = v15 == 2;
  v83 = v10 == 1;
  v77 = *(v0 + 1488);
  v79 = *(v0 + 1480);
  v81 = *(v0 + 1504);
  v78 = *(v0 + 1472);
  v18 = *(v0 + 1464);
  v19 = *(v0 + 1320);
  v20 = *(v0 + 1312);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1224);
  v23 = *(v0 + 1128);
  v87 = v21;
  v90 = *(v0 + 1120);
  v24 = *(v0 + 1096);
  v25 = *(v0 + 856);
  v26 = *(v0 + 848);
  (*(v0 + 1304))(v22, 1, 1, *(v0 + 1296));

  v27 = sub_1DDA14D30();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  *(v28 + 32) = v77;
  *(v28 + 48) = v81;
  *(v28 + 56) = v17;
  *(v28 + 64) = v78;
  *(v28 + 72) = v79;
  *(v28 + 80) = v18;
  *(v28 + 88) = v26;
  *(v28 + 96) = v25;
  *(v28 + 104) = v97;
  *(v28 + 112) = v94;
  *(v28 + 120) = v92;
  *(v28 + 124) = v83;
  *(v28 + 128) = v16;
  *(v28 + 136) = v85;
  sub_1DD982718(0, 0, v22, &unk_1DDA1B4B8, v28);

  sub_1DD929A8C(v87 + 296, v96);
  v30 = *(v12 + 96);
  v31 = *(v12 + 104);
  sub_1DDA134C0();
  v32 = (*(v23 + 48))(v24, 1, v90);
  if (v32 == 1)
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v40 = *(v0 + 1392);
    v41 = *(v0 + 1384);
    v42 = *(v0 + 1352);
    v43 = *(v0 + 1272);
    v44 = *(v0 + 1128);
    v82 = *(v0 + 1120);
    v84 = *(v0 + 1160);
    v91 = *(v0 + 1096);
    v93 = *(v0 + 1152);
    v45 = *(v0 + 1088);
    v86 = *(v0 + 1080);
    v88 = *(v0 + 1136);
    v46 = *(v0 + 1072);
    v47 = *(v0 + 1064);
    v95 = *(v0 + 1056);
    v48 = *(v0 + 888);
    v49 = *(v0 + 832);
    v80 = *(v0 + 816);

    sub_1DD9B4788(v0 + 16);

    v98 = sub_1DD93FF08(&unk_1F58EC8C8);
    *(v0 + 1520) = v98;
    sub_1DD90D378(&unk_1F58EC8E8, &qword_1ECD829C8, &qword_1DDA1E380);
    v76 = *(v49 + 16);
    (*(v46 + 16))(v45, v48, v47);
    v50 = *(v44 + 16);
    *(v0 + 1528) = v50;
    *(v0 + 1536) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50(v84, v80, v82);
    v51 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v52 = (v86 + *(v44 + 80) + v51) & ~*(v44 + 80);
    v53 = swift_allocObject();
    *(v0 + 1544) = v53;
    (*(v46 + 32))(v53 + v51, v45, v47);
    v89 = v53;
    (*(v44 + 32))(v53 + v52, v84, v82);
    v50(v93, v91, v82);
    sub_1DDA130F0();
    sub_1DDA130A0();
    v54 = -1;
    v55 = -1 << *(v98 + 32);
    if (-v55 < 64)
    {
      v54 = ~(-1 << -v55);
    }

    v56 = v54 & *(v98 + 64);
    v57 = (63 - v55) >> 6;

    v58 = 0;
    if (v56)
    {
      while (1)
      {
        v59 = v58;
LABEL_18:
        v60 = *(v0 + 1056);
        v61 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
        v62 = (v59 << 10) | (16 * v61);
        v63 = (*(v98 + 48) + v62);
        v64 = *v63;
        v65 = v63[1];
        v66 = (*(v98 + 56) + v62);
        v67 = *v66;
        v68 = v66[1];

        sub_1DDA13100();

        if (!v56)
        {
          goto LABEL_14;
        }
      }
    }

    while (1)
    {
LABEL_14:
      v59 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v59 >= v57)
      {
        break;
      }

      v56 = *(v98 + 64 + 8 * v59);
      ++v58;
      if (v56)
      {
        v58 = v59;
        goto LABEL_18;
      }
    }

    v69 = *(v0 + 1056);
    v70 = *(v0 + 824);
    v71 = *(v0 + 816);

    v72 = swift_task_alloc();
    *(v0 + 1552) = v72;
    *(v72 + 16) = v96;
    *(v72 + 24) = v69;
    *(v72 + 32) = sub_1DD9B4FDC;
    *(v72 + 40) = v89;
    *(v72 + 48) = v76;
    *(v72 + 56) = v70;
    *(v72 + 64) = v71;
    v73 = *(MEMORY[0x1E69E8920] + 4);
    v74 = swift_task_alloc();
    *(v0 + 1560) = v74;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    *v74 = v0;
    v74[1] = sub_1DD99690C;
    v37 = sub_1DD9B4C70;
    v32 = v0 + 768;
    v36 = 0x80000001DDA28AC0;
    v33 = 0;
    v34 = 0;
    v35 = 0xD00000000000005ELL;
    v38 = v72;
  }

  return MEMORY[0x1EEE6DE38](v32, v33, v34, v35, v36, v37, v38, v39);
}