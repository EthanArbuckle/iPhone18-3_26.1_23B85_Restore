uint64_t sub_192123340()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1921236BC;
  }

  else
  {
    v3 = sub_192123454;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192123454()
{
  v1 = v0[8];
  v2 = v0[18];
  v3 = v0[15];
  v15 = v0[17];
  v16 = v0[16];
  v12 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v11 = v0[20] != 0;
  v13 = *(v0[10] + 16);
  v14 = v0[14];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v11;

  v0[6] = sub_19212B420;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_19202AB80;
  v0[5] = &block_descriptor_163;
  v7 = _Block_copy(v0 + 2);

  sub_192227740();
  v0[9] = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v2, v3, v7);
  _Block_release(v7);
  sub_19212B414(v1, v11);
  (*(v14 + 8))(v3, v12);
  (*(v15 + 8))(v2, v16);
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1921236BC()
{
  v1 = v0[20];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  v15 = v0[17];
  v16 = v0[16];
  v12 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v13 = *(v0[10] + 16);
  v14 = v0[14];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v2 != 0;
  v0[6] = sub_19212B420;
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_19202AB80;
  v0[5] = &block_descriptor_163;
  v8 = _Block_copy(v0 + 2);

  sub_192227740();
  v0[9] = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v3, v4, v8);
  _Block_release(v8);
  sub_19212B414(v2, v2 != 0);
  (*(v14 + 8))(v4, v12);
  (*(v15 + 8))(v3, v16);
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_19212393C()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0520, &qword_1922349E0);
  *v2 = v0;
  v2[1] = sub_192123A24;
  v4 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000017, 0x800000019224B1E0, sub_19212AA84, v4, v3);
}

uint64_t sub_192123A24()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_192123B54;
  }

  else
  {
    v3 = sub_192123B38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_192123B6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  sub_192123BE8(a2, a1);
  v5 = *(v4 + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_192123BE8(uint64_t a1, uint64_t a2)
{
  v60 = sub_192227710();
  v59 = *(v60 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_192227790();
  v56 = *(v58 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v61 = sub_19202B38C();
  v13 = *(v9 + 16);
  v64 = a2;
  v62 = v13;
  v13(v12, a2, v8);
  v14 = *(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = *(v9 + 32);
  v54 = (v14 + 24) & ~v14;
  v63 = v16;
  v16(v15 + v54, v12, v8);
  v71 = sub_19212AF08;
  v72 = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v69 = sub_1921BBB98;
  v70 = &block_descriptor_121;
  v17 = _Block_copy(&aBlock);
  v65 = a1;

  v18 = v61;
  v19 = [v61 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v73, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v20 = *&v67[0];
    v62(v12, v64, v8);
    v21 = v54;
    v22 = swift_allocObject();
    *(v22 + 16) = v65;
    v63(v22 + v21, v12, v8);
    v71 = sub_19212B070;
    v72 = v22;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v69 = sub_192125A50;
    v70 = &block_descriptor_133;
    v23 = _Block_copy(&aBlock);

    [v20 _loadCurrentConfigurations_];
    _Block_release(v23);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    v53 = v9 + 16;
    v61 = v14;
    v51 = v10;
    v54 = v8;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v52 = ~v61;
    v25 = sub_1922258B0();
    __swift_project_value_buffer(v25, qword_1ED74CCC8);
    v26 = sub_192225890();
    v27 = sub_192227F90();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&aBlock = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_19202B8CC(0xD000000000000017, 0x800000019224B1E0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x193B0C7F0](v29, -1, -1);
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224B1E0);
    MEMORY[0x193B0A990](0xD000000000000047, 0x800000019224B3E0);
    v30 = aBlock;
    v31 = *MEMORY[0x1E69941E8];
    v32 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v33 = *MEMORY[0x1E696A278];
    v34 = sub_192227960();
    v36 = v35;
    v70 = MEMORY[0x1E69E6158];
    aBlock = v30;
    sub_19203BEDC(&aBlock, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v32;
    sub_19213DB28(v67, v34, v36, isUniquelyReferenced_nonNull_native);

    v38 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v39 = sub_192227830();

    v40 = [v38 initWithDomain:v31 code:1200 userInfo:v39];

    v41 = *(v65 + 16);
    v42 = v54;
    v62(v12, v64, v54);
    v43 = (v61 + 16) & v52;
    v44 = (v51 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v63(v45 + v43, v12, v42);
    *(v45 + v44) = v40;
    v71 = sub_19212AF88;
    v72 = v45;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v69 = sub_19202AB80;
    v70 = &block_descriptor_127;
    v46 = _Block_copy(&aBlock);
    v47 = v40;
    v48 = v55;
    sub_192227740();
    *&v67[0] = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v49 = v57;
    v50 = v60;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v48, v49, v46);
    _Block_release(v46);

    (*(v59 + 8))(v49, v50);
    (*(v56 + 8))(v48, v58);
    __swift_destroy_boxed_opaque_existential_1(v73);
  }
}

uint64_t sub_192124524(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192227710();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_192227790();
  v42 = *(v44 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v16 = sub_1922258B0();
  __swift_project_value_buffer(v16, qword_1ED74CCC8);
  v17 = a1;
  v18 = sub_192225890();
  v19 = sub_192227F90();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = a3;
    v24 = v23;
    aBlock[0] = v23;
    *v20 = 136446466;
    *(v20 + 4) = sub_19202B8CC(0xD000000000000017, 0x800000019224B1E0, aBlock);
    *(v20 + 12) = 2114;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v22 = v26;
    _os_log_impl(&dword_192028000, v18, v19, "%{public}s - remoteObjectProxy error: %{public}@", v20, 0x16u);
    sub_192033970(v22, &qword_1EADEEDF0, &qword_1922319C0);
    v27 = v22;
    a2 = v39;
    MEMORY[0x193B0C7F0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    a3 = v40;
    MEMORY[0x193B0C7F0](v28, -1, -1);
    MEMORY[0x193B0C7F0](v20, -1, -1);
  }

  v29 = *(a2 + 16);
  (*(v12 + 16))(v15, a3, v11);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = swift_allocObject();
  (*(v12 + 32))(v31 + v30, v15, v11);
  *(v31 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_19212B4CC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_156;
  v32 = _Block_copy(aBlock);
  v33 = a1;
  v34 = v41;
  sub_192227740();
  v47 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v35 = v43;
  v36 = v46;
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v34, v35, v32);
  _Block_release(v32);
  (*(v45 + 8))(v35, v36);
  (*(v42 + 8))(v34, v44);
}

uint64_t sub_192124A5C(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  return sub_192227C80();
}

uint64_t sub_192124AAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v32 = a1;
  v6 = sub_192227710();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192227790();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v32 - v21;
  if (a2)
  {
    v32 = *(a3 + 16);
    (*(v15 + 16))(v18, v36, v14);
    v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v24 = swift_allocObject();
    (*(v15 + 32))(v24 + v23, v18, v14);
    *(v24 + ((v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_19212B210;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_143;
    v25 = _Block_copy(aBlock);
    v26 = a2;
    v27 = a2;
    sub_192227740();
    v37 = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v13, v9, v25);
    _Block_release(v25);

    (*(v35 + 8))(v9, v6);
    (*(v33 + 8))(v13, v34);
  }

  else
  {
    v28 = sub_192227CF0();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    (*(v15 + 16))(v18, v36, v14);
    v29 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = v32;
    *(v30 + 5) = a3;
    (*(v15 + 32))(&v30[v29], v18, v14);

    sub_19211CA04(0, 0, v22, &unk_192234AE0, v30);
  }
}

uint64_t sub_192124F98(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  return sub_192227C80();
}

uint64_t sub_192124FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_192227710();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = sub_192227790();
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v12 = *(v11 + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v6[31] = v13;
  v14 = *(v13 - 8);
  v6[32] = v14;
  v6[33] = *(v14 + 64);
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19212517C, 0, 0);
}

uint64_t sub_19212517C()
{
  v1 = v0[22];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[22];
    }

    result = sub_192228340();
    v0[35] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[35] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[22];
        v4 = MEMORY[0x1E69E7CC0];
        v0[36] = 0;
        v0[37] = v4;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x193B0B410](0);
        }

        else
        {
          v5 = *(v3 + 32);
        }

        v0[38] = v5;
        v6 = v5;
        v7 = swift_task_alloc();
        v0[39] = v7;
        *v7 = v0;
        v7[1] = sub_192125504;

        return sub_1920D8C04((v0 + 2), v6);
      }

      return result;
    }
  }

  v9 = v0[33];
  v10 = v0[34];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[30];
  v14 = v0[27];
  v24 = v0[29];
  v25 = v0[28];
  v21 = v0[25];
  v22 = *(v0[23] + 16);
  v23 = v0[26];
  (*(v11 + 16))(v10, v0[24], v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v10, v12);
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = MEMORY[0x1E69E7CC0];
  v0[19] = sub_19212B2A0;
  v0[20] = v16;
  v0[15] = MEMORY[0x1E69E9820];
  v0[16] = 1107296256;
  v0[17] = sub_19202AB80;
  v0[18] = &block_descriptor_149;
  v18 = _Block_copy(v0 + 15);
  sub_192227740();
  v0[21] = v17;
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v13, v14, v18);
  _Block_release(v18);
  (*(v23 + 8))(v14, v21);
  (*(v24 + 8))(v13, v25);
  v19 = v0[20];

  v20 = v0[1];

  return v20();
}

uint64_t sub_192125504()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_192125600, 0, 0);
}

uint64_t sub_192125600()
{
  v1 = *(v0 + 296);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 296);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1920C3150(0, *(v3 + 2) + 1, 1, *(v0 + 296));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1920C3150((v4 > 1), v5 + 1, 1, v3);
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);

  *(v3 + 2) = v5 + 1;
  v8 = &v3[104 * v5];
  v9 = *(v0 + 16);
  v10 = *(v0 + 48);
  *(v8 + 3) = *(v0 + 32);
  *(v8 + 4) = v10;
  *(v8 + 2) = v9;
  v11 = *(v0 + 64);
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);
  *(v8 + 16) = *(v0 + 112);
  *(v8 + 6) = v12;
  *(v8 + 7) = v13;
  *(v8 + 5) = v11;
  if (v6 + 1 == v7)
  {
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 240);
    v34 = *(v0 + 232);
    v35 = *(v0 + 224);
    v30 = *(v0 + 216);
    v31 = *(v0 + 200);
    v32 = *(*(v0 + 184) + 16);
    v33 = *(v0 + 208);
    (*(v16 + 16))(v14, *(v0 + 192), v17);
    v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v20 = swift_allocObject();
    (*(v16 + 32))(v20 + v19, v14, v17);
    *(v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    *(v0 + 152) = sub_19212B2A0;
    *(v0 + 160) = v20;
    *(v0 + 120) = MEMORY[0x1E69E9820];
    *(v0 + 128) = 1107296256;
    *(v0 + 136) = sub_19202AB80;
    *(v0 + 144) = &block_descriptor_149;
    v21 = _Block_copy((v0 + 120));
    sub_192227740();
    *(v0 + 168) = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v18, v30, v21);
    _Block_release(v21);
    (*(v33 + 8))(v30, v31);
    (*(v34 + 8))(v18, v35);
    v22 = *(v0 + 160);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 288) + 1;
    *(v0 + 288) = v25;
    *(v0 + 296) = v3;
    v26 = *(v0 + 176);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x193B0B410]();
    }

    else
    {
      v27 = *(v26 + 8 * v25 + 32);
    }

    *(v0 + 304) = v27;
    v28 = v27;
    v29 = swift_task_alloc();
    *(v0 + 312) = v29;
    *v29 = v0;
    v29[1] = sub_192125504;

    return sub_1920D8C04(v0 + 16, v28);
  }
}

uint64_t sub_1921259FC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  return sub_192227C90();
}

void sub_192125A50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v6 = sub_192227B70();

  v7 = a3;
  v5(v6, a3);
}

void sub_192125B00(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_192125CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 24);
  os_unfair_lock_lock(*(v13 + 16));
  sub_192125D6C(v6, a5, a6, a1, a2, a3, a4);
  v14 = *(v13 + 16);

  os_unfair_lock_unlock(v14);
}

uint64_t sub_192125D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v12 = sub_192227710();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_192227790();
  v52 = *(v54 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19202B38C();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v62 = sub_19212AE7C;
  v63 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v60 = sub_1921BBB98;
  v61 = &block_descriptor_82;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v64, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v21 = *&v58[0];
    v22 = sub_192227930();
    v23 = sub_192227930();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = a3;
    v24[5] = a4;
    v24[6] = a5;
    v62 = sub_19212AE88;
    v63 = v24;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v60 = sub_19202AF14;
    v61 = &block_descriptor_94;
    v25 = _Block_copy(&aBlock);

    [v21 _reloadTimelinesOfKind_inBundle_completion_];
    _Block_release(v25);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    v50 = a2;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1922258B0();
    __swift_project_value_buffer(v27, qword_1ED74CCC8);
    v28 = sub_192225890();
    v29 = sub_192227F90();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&aBlock = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x193B0C7F0](v31, -1, -1);
      MEMORY[0x193B0C7F0](v30, -1, -1);
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000002CLL, 0x800000019224B3B0);
    MEMORY[0x193B0A990](0xD000000000000047, 0x800000019224B3E0);
    v32 = aBlock;
    v33 = *MEMORY[0x1E69941E8];
    v34 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v35 = *MEMORY[0x1E696A278];
    v36 = sub_192227960();
    v38 = v37;
    v61 = MEMORY[0x1E69E6158];
    aBlock = v32;
    sub_19203BEDC(&aBlock, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v34;
    sub_19213DB28(v58, v36, v38, isUniquelyReferenced_nonNull_native);

    v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v41 = sub_192227830();

    v42 = [v40 initWithDomain:v33 code:1200 userInfo:v41];

    v43 = *(a1 + 16);
    v44 = swift_allocObject();
    v44[2] = v50;
    v44[3] = a3;
    v44[4] = v42;
    v62 = sub_19212B4C0;
    v63 = v44;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v60 = sub_19202AB80;
    v61 = &block_descriptor_88;
    v45 = _Block_copy(&aBlock);

    v46 = v42;
    v47 = v51;
    sub_192227740();
    *&v58[0] = MEMORY[0x1E69E7CC0];
    sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v48 = v53;
    v49 = v56;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v47, v48, v45);
    _Block_release(v45);

    (*(v55 + 8))(v48, v49);
    (*(v52 + 8))(v47, v54);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }
}

uint64_t sub_192126528(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192227710();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_192227790();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v17 = sub_1922258B0();
  __swift_project_value_buffer(v17, qword_1ED74CCC8);
  v18 = a1;
  v19 = sub_192225890();
  v20 = sub_192227F90();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v39 = a4;
    v24 = a3;
    v25 = v23;
    v26 = swift_slowAlloc();
    v38 = a2;
    v27 = v26;
    aBlock[0] = v26;
    *v22 = 136446466;
    *(v22 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, aBlock);
    *(v22 + 12) = 2114;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v29;
    *v25 = v29;
    _os_log_impl(&dword_192028000, v19, v20, "%{public}s - remoteObjectProxy error: %{public}@", v22, 0x16u);
    sub_192033970(v25, &qword_1EADEEDF0, &qword_1922319C0);
    v30 = v25;
    a3 = v24;
    a4 = v39;
    MEMORY[0x193B0C7F0](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v31 = v27;
    a2 = v38;
    MEMORY[0x193B0C7F0](v31, -1, -1);
    v32 = v22;
    v9 = v40;
    MEMORY[0x193B0C7F0](v32, -1, -1);
  }

  v33 = *(a2 + 16);
  v34 = swift_allocObject();
  v34[2] = a3;
  v34[3] = a4;
  v34[4] = a1;
  aBlock[4] = sub_19212AE98;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_106;
  v35 = _Block_copy(aBlock);
  v36 = a1;

  sub_192227740();
  v43 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v16, v12, v35);
  _Block_release(v35);
  (*(v9 + 8))(v12, v8);
  (*(v41 + 8))(v16, v42);
}

uint64_t sub_192126988(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    v11 = a1;
    v12 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1922258B0();
    __swift_project_value_buffer(v13, qword_1ED74CCC8);
    v14 = v11;

    v15 = sub_192225890();
    v16 = sub_192227F90();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = a2;
      v32 = swift_slowAlloc();
      v19 = a3;
      v20 = a4;
      v21 = v32;
      *v17 = 136446722;
      *(v17 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, &v32);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_19202B8CC(a5, a6, &v32);
      *(v17 + 22) = 2114;
      v22 = v11;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v23;
      *v18 = v23;
      _os_log_impl(&dword_192028000, v15, v16, "%{public}s - error reloading timelines of kind '%{public}s': %{public}@", v17, 0x20u);
      sub_192033970(v18, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v18, -1, -1);
      swift_arrayDestroy();
      v24 = v21;
      a4 = v20;
      a3 = v19;
      a2 = v31;
      MEMORY[0x193B0C7F0](v24, -1, -1);
      MEMORY[0x193B0C7F0](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v25 = sub_1922258B0();
    __swift_project_value_buffer(v25, qword_1ED74CCC8);

    v26 = sub_192225890();
    v27 = sub_192227FB0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_19202B8CC(0xD00000000000002CLL, 0x800000019224B3B0, &v32);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_19202B8CC(a5, a6, &v32);
      _os_log_impl(&dword_192028000, v26, v27, "%{public}s - reloaded timelines of kind '%{public}s'", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v29, -1, -1);
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }

    v11 = 0;
  }

  return sub_192126D38(a2, a3, a4, v11);
}

uint64_t sub_192126D38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_192227710();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_192227790();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  aBlock[4] = sub_19212AE98;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_100;
  v18 = _Block_copy(aBlock);

  v19 = a4;
  sub_192227740();
  v24 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

void sub_192127024(void (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  a1(v1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_19212709C()
{
  v0 = sub_19202B38C();
  v15 = sub_192127370;
  v16 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1921BBB98;
  v14 = &block_descriptor_73;
  v1 = _Block_copy(&aBlock);
  v2 = [v0 remoteObjectProxyWithErrorHandler_];
  _Block_release(v1);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v17, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v15 = sub_19202F84C;
    v16 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_19202AF14;
    v14 = &block_descriptor_76;
    v3 = _Block_copy(&aBlock);
    [v10 _reloadAllTimelines_];
    _Block_release(v3);
    swift_unknownObjectRelease();
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
    v6 = sub_192227F90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_192127370(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t WidgetCenter.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t WidgetCenter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1921275BC(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t sub_192127778()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_192127A50;
  }

  else
  {
    v3 = sub_192127888;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192127888()
{
  v12 = v0;

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);

  v3 = sub_192225890();
  v4 = sub_192227FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, &v11);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_19202B8CC(v6, v5, &v11);
    _os_log_impl(&dword_192028000, v3, v4, "%{public}s - invalidated relevances for widget of kind '%{public}s'", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_192127A50()
{
  v21 = v0;
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = v0[20];
  v5 = sub_1922258B0();
  __swift_project_value_buffer(v5, qword_1ED74CCC8);

  v6 = v3;
  v7 = sub_192225890();
  v8 = sub_192227F90();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  if (v9)
  {
    v12 = v0[19];
    v11 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v13 = 136446722;
    *(v13 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, v20);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_19202B8CC(v12, v11, v20);
    *(v13 + 22) = 2114;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v17;
    *v14 = v17;
    _os_log_impl(&dword_192028000, v7, v8, "%{public}s - error invalidating relevances for widget of kind '%{public}s': %{public}@", v13, 0x20u);
    sub_192033970(v14, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v15, -1, -1);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_192127CAC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
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

void WidgetCenter.invalidateRelevances(ofKind:inBundle:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  os_unfair_lock_lock(*(v9 + 16));
  sub_192127DF0(v4, a1, a2, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_192127DF0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_19202B38C();
  aBlock[4] = sub_192128280;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_53;
  v14 = _Block_copy(aBlock);
  v15 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v16 = aBlock[7];
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v17 = sub_1922258B0();
    __swift_project_value_buffer(v17, qword_1ED74CCC8);

    v18 = sub_192225890();
    v19 = sub_192227FB0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = a4;
      v33 = a5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_19202B8CC(a2, a3, v34);
      _os_log_impl(&dword_192028000, v18, v19, "Invalidate widget relevances for %{public}s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x193B0C7F0](v22, -1, -1);
      v23 = v21;
      a4 = v32;
      a5 = v33;
      MEMORY[0x193B0C7F0](v23, -1, -1);
    }

    v24 = sub_192227CF0();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v16;
    v25[5] = a2;
    v25[6] = a3;
    v25[7] = a4;
    v25[8] = a5;

    swift_unknownObjectRetain();

    sub_19211CA04(0, 0, v12, &unk_192234AA8, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v26 = sub_1922258B0();
    __swift_project_value_buffer(v26, qword_1ED74CCC8);
    v27 = sub_192225890();
    v28 = sub_192227F90();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, v34);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x193B0C7F0](v30, -1, -1);
      MEMORY[0x193B0C7F0](v29, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

void sub_192128280(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t sub_19212843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_192128464, 0, 0);
}

uint64_t sub_192128464()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = sub_192227930();
  v0[23] = v6;
  v7 = sub_192227930();
  v0[24] = v7;
  v0[2] = v0;
  v0[3] = sub_1921285B0;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0548, &qword_192234AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_192127CAC;
  v0[13] = &block_descriptor_60;
  v0[14] = v8;
  [v5 invalidateRelevancesOfKind:v6 inBundle:v7 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1921285B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_19212888C;
  }

  else
  {
    v3 = sub_1921286C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921286C0()
{
  v13 = v0;
  v1 = *(v0 + 184);

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74CCC8);

  v4 = sub_192225890();
  v5 = sub_192227FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, &v12);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_19202B8CC(v7, v6, &v12);
    _os_log_impl(&dword_192028000, v4, v5, "%{public}s - invalidated relevances for widget of kind '%{public}s'", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v9, -1, -1);
    MEMORY[0x193B0C7F0](v8, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_19212888C()
{
  v22 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v4 = v0[25];
  v5 = v0[20];
  v6 = sub_1922258B0();
  __swift_project_value_buffer(v6, qword_1ED74CCC8);

  v7 = v4;
  v8 = sub_192225890();
  v9 = sub_192227F90();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[25];
  if (v10)
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v14 = 136446722;
    *(v14 + 4) = sub_19202B8CC(0xD000000000000031, 0x800000019224B330, v21);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_19202B8CC(v13, v12, v21);
    *(v14 + 22) = 2114;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v18;
    *v15 = v18;
    _os_log_impl(&dword_192028000, v8, v9, "%{public}s - error invalidating relevances for widget of kind '%{public}s': %{public}@", v14, 0x20u);
    sub_192033970(v15, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v16, -1, -1);
    MEMORY[0x193B0C7F0](v14, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

void WidgetCenter.setRelevances<A>(_:kind:inBundle:completion:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v19 = *a1;
  type metadata accessor for WidgetRelevances();
  v13 = sub_192222BC8();
  Result = type metadata accessor for WidgetRelevanceFetchResult();
  v15 = objc_allocWithZone(Result);
  v15[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
  v16 = sub_19218BD8C(v13);

  *&v15[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v16;
  v18.receiver = v15;
  v18.super_class = Result;
  v17 = objc_msgSendSuper2(&v18, sel_init);
  sub_192128BF4(v17, a2, a3, a4, a5, a6, a7);
}

void sub_192128BF4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
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
    aBlock = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_19202B8CC(a2, a3, &aBlock);
    _os_log_impl(&dword_192028000, v14, v15, "Request to set widget relevances for %{public}s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193B0C7F0](v17, -1, -1);
    MEMORY[0x193B0C7F0](v16, -1, -1);
  }

  v18 = *(v8 + 24);
  os_unfair_lock_lock(*(v18 + 16));
  v19 = sub_19202B38C();
  v37 = sub_192129698;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1921BBB98;
  v36 = &block_descriptor_44;
  v20 = _Block_copy(&aBlock);
  v21 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v39, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v22 = sub_192227930();
    if (a5)
    {
      a5 = sub_192227930();
    }

    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a6;
    v23[5] = a7;
    v23[6] = a1;
    v37 = sub_19212AD90;
    v38 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_192129E4C;
    v36 = &block_descriptor_50;
    v24 = _Block_copy(&aBlock);

    v25 = a1;

    [v32 withWidgetRelevanceArchiveHandleForKind:v22 inBundle:a5 handler:v24];
    _Block_release(v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = sub_192225890();
    v27 = sub_192227F90();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_19202B8CC(0xD00000000000003ALL, 0x800000019224B2A0, &aBlock);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x193B0C7F0](v29, -1, -1);
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  os_unfair_lock_unlock(*(v18 + 16));
}

uint64_t WidgetCenter.setRelevanceResult(_:kind:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_192227710();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_192227730();
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_192227790();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0528, &qword_1922349E8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v61 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v60 - v26;
  v67 = sub_192227CF0();
  v27 = *(v67 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  v31[2] = v6;
  v31[3] = a1;
  v70 = a2;
  v31[4] = a2;
  v31[5] = a3;
  v68 = a4;
  v31[6] = a4;
  v31[7] = a5;
  v32 = objc_opt_self();
  v69 = a5;

  v71 = a3;

  v33 = a1;

  if (![v32 isMainThread] || (v34 = qos_class_self(), sub_192227D00(), v35 = sub_192227CE0(), v36 = *(v27 + 8), v36(v30, v67), v34 == v35))
  {
    sub_192128BF4(v33, v70, v71, 0, 0, v68, v69);
  }

  else
  {
    v38 = v21;
    sub_192227D00();
    sub_192227CE0();
    v36(v30, v67);
    v39 = v65;
    sub_192227720();
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v40 = sub_1922258B0();
    __swift_project_value_buffer(v40, qword_1ED74CCC8);
    v41 = v71;

    v42 = sub_192225890();
    v43 = sub_192227F80();

    v44 = os_log_type_enabled(v42, v43);
    v46 = v61;
    v45 = v62;
    if (v44)
    {
      v47 = swift_slowAlloc();
      v69 = v38;
      v48 = v39;
      v49 = v41;
      v50 = v47;
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136446210;
      v52 = v49;
      v39 = v48;
      *(v50 + 4) = sub_19202B8CC(v70, v52, aBlock);
      _os_log_impl(&dword_192028000, v42, v43, "Performing priority inversion workaround applying widget relevances for %{public}s.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x193B0C7F0](v51, -1, -1);
      MEMORY[0x193B0C7F0](v50, -1, -1);
    }

    v54 = v63;
    v53 = v64;
    sub_19212AAC4(v39, v46);
    v55 = *(v45 + 48);
    if (v55(v46, 1, v54) == 1)
    {
      (*(v45 + 104))(v53, *MEMORY[0x1E69E7F98], v54);
      if (v55(v46, 1, v54) != 1)
      {
        sub_192033970(v46, &qword_1EADF0528, &qword_1922349E8);
      }
    }

    else
    {
      (*(v45 + 32))(v53, v46, v54);
    }

    sub_192227780();
    sub_192227700();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_19212AA8C;
    *(v56 + 24) = v31;
    aBlock[4] = sub_19203BE8C;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_0;
    _Block_copy(aBlock);
    v57 = sub_1922277E0();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();

    sub_1922277C0();

    sub_1922277D0();

    return sub_192033970(v39, &qword_1EADF0528, &qword_1922349E8);
  }
}

void sub_192129698(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0xD00000000000003ALL, 0x800000019224B2A0, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

void sub_192129854(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1922258B0();
  __swift_project_value_buffer(v14, qword_1ED74CCC8);

  v15 = sub_192225890();
  v16 = sub_192227FB0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = a2;
    v19 = a8;
    v20 = a6;
    v21 = a3;
    v22 = swift_slowAlloc();
    *&v41 = v22;
    *v17 = 136446210;
    *(v17 + 4) = sub_19202B8CC(a4, a5, &v41);
    _os_log_impl(&dword_192028000, v15, v16, "Received widget relevances file handle for %{public}s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v23 = v22;
    a3 = v21;
    a6 = v20;
    a8 = v19;
    a2 = v18;
    MEMORY[0x193B0C7F0](v23, -1, -1);
    MEMORY[0x193B0C7F0](v17, -1, -1);
  }

  if (a1)
  {
    v24 = a1;
    a6(a1);
  }

  else
  {
    if (!a2)
    {
      v26 = *MEMORY[0x1E69941E8];
      sub_19214036C(MEMORY[0x1E69E7CC0]);
      v27 = *MEMORY[0x1E696A278];
      v28 = sub_192227960();
      v30 = v29;
      v42 = MEMORY[0x1E69E6158];
      *&v41 = 0xD00000000000001ELL;
      *(&v41 + 1) = 0x800000019224B310;
      sub_19203BEDC(&v41, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_19213DB28(v40, v28, v30, isUniquelyReferenced_nonNull_native);

      v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v33 = sub_192227830();

      v34 = [v32 initWithDomain:v26 code:1200 userInfo:v33];

      a6(v34);
      sub_192129CB4(a3, a4, a5);
      return;
    }

    v25 = a2;
    sub_1921626C0(a8, v25);

    v35 = sub_192225890();
    v36 = sub_192227FB0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v41 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_19202B8CC(a4, a5, &v41);
      _os_log_impl(&dword_192028000, v35, v36, "Wrote widget relevances for %{public}s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x193B0C7F0](v38, -1, -1);
      MEMORY[0x193B0C7F0](v37, -1, -1);
    }

    a6(0);
  }

  sub_192129CB4(a3, a4, a5);
}

void sub_192129CB4(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v10 = a1;
    [v10 invalidate];
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v5 = sub_1922258B0();
    __swift_project_value_buffer(v5, qword_1ED74CCC8);

    v6 = sub_192225890();
    v7 = sub_192227FB0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_19202B8CC(a2, a3, &v11);
      _os_log_impl(&dword_192028000, v6, v7, "Called completion action %{public}s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_192129E4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v11 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t WidgetCenter.currentPushInfo.getter(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_192129F14, 0, 0);
}

uint64_t sub_192129F14()
{
  v7 = v0;
  v1 = *(v0[21] + 24);
  os_unfair_lock_lock(*(v1 + 16));
  sub_19212A320(&v6);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v6;
  v0[22] = v6;
  if (v2)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_19212A0E8;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0530, &qword_1922349F8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19212A74C;
    v0[13] = &block_descriptor_12;
    v0[14] = v3;
    [swift_unknownObjectRetain() widgetPushTokenWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    *v0[20] = xmmword_19222A790;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_19212A0E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_19212A28C;
  }

  else
  {
    v3 = sub_19212A1F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19212A1F8()
{
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v0[18];
  v3 = v0[19];
  swift_unknownObjectRelease();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = 0xF000000000000000;
  if (v3 >> 60 != 15)
  {
    v5 = v3;
  }

  v6 = v0[20];
  *v6 = v4;
  v6[1] = v5;
  v7 = v0[1];

  return v7();
}

uint64_t sub_19212A28C()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *v0[20] = xmmword_19222A790;
  v3 = v0[1];

  return v3();
}

uint64_t sub_19212A320@<X0>(void *a1@<X8>)
{
  v2 = sub_19202B38C();
  aBlock[4] = sub_19212A588;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_41;
  v3 = _Block_copy(aBlock);
  v4 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(aBlock, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(aBlock);
    v6 = v12;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1ED74CCC8);
    v8 = sub_192225890();
    v9 = sub_192227F90();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_19202B8CC(0x50746E6572727563, 0xEF6F666E49687375, v13);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193B0C7F0](v11, -1, -1);
      MEMORY[0x193B0C7F0](v10, -1, -1);
    }

    result = __swift_destroy_boxed_opaque_existential_1(aBlock);
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

void sub_19212A588(void *a1)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1ED74CCC8);
  v3 = a1;
  oslog = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_19202B8CC(0x50746E6572727563, 0xEF6F666E49687375, &v11);
    *(v5 + 12) = 2114;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_192028000, oslog, v4, "%{public}s - remoteObjectProxy error: %{public}@", v5, 0x16u);
    sub_192033970(v6, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

uint64_t sub_19212A74C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_192225080();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_19212A86C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_19202B8CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_19212A8C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0540, &qword_192234A98);
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

uint64_t sub_19212A9BC(uint64_t a1)
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

  return sub_192123138(a1, v4, v5, v6, v7, v8);
}

void sub_19212AA8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  sub_192128BF4(v1, v2, v3, 0, 0, v4, v5);
}

uint64_t sub_19212AAC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0528, &qword_1922349E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of WidgetCenter.currentConfigurations()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF2F4;

  return v6();
}

uint64_t sub_19212ADA0(uint64_t a1)
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
  v11[1] = sub_1920A59A8;

  return sub_19212843C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_96Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_19212AF08(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_192124524(a1, v4, v5);
}

uint64_t objectdestroy_117Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_19212B070(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_192124AAC(a1, a2, v6, v7);
}

uint64_t sub_19212B100(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920B3B44;

  return sub_192124FEC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_19212B214()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_192124F98(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_19212B2B8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t objectdestroy_139Tm(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0550, &qword_192234AD0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v1 + v5, v3);
  a1(*(v1 + v6));

  return swift_deallocObject();
}

void sub_19212B414(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t ActivityViewTag.description.getter()
{
  v1 = *v0;
  if (v1 == 4)
  {
    return 0x6D6574497473696CLL;
  }

  v3 = 0xE800000000000000;
  v4 = 0x6465646E61707865;
  v5 = 0xEF676E696C696172;
  v6 = 0x54746361706D6F63;
  if (v1 != 2)
  {
    v6 = 0x4D746361706D6F63;
    v5 = 0xEE006C616D696E69;
  }

  if (*v0)
  {
    v4 = 0x4C746361706D6F63;
    v3 = 0xEE00676E69646165;
  }

  if (*v0 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x193B0A990](v7, v8);

  return 0x2D6F646E696ALL;
}

uint64_t ActivityViewTag.defaultViewAlignment.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (!*v0)
    {
      return sub_1922275E0();
    }

    return sub_192227600();
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      return sub_1922275F0();
    }

    return sub_192227600();
  }

  return sub_192227610();
}

BOOL static ActivityViewTag.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_19212B6D4()
{
  if (*v0)
  {
    result = 0x6F646E696ALL;
  }

  else
  {
    result = 0x6D6574497473696CLL;
  }

  *v0;
  return result;
}

uint64_t sub_19212B70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574497473696CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F646E696ALL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_19212B7E4(uint64_t a1)
{
  v2 = sub_19212C5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19212B820(uint64_t a1)
{
  v2 = sub_19212C5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19212B868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19212B8E8(uint64_t a1)
{
  v2 = sub_19212C610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19212B924(uint64_t a1)
{
  v2 = sub_19212C610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19212B960(uint64_t a1)
{
  v2 = sub_19212C6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19212B99C(uint64_t a1)
{
  v2 = sub_19212C6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityViewTag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0558, &qword_192234B00);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0560, &qword_192234B08);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0568, &qword_192234B10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19212C5BC();
  sub_192228B90();
  if (v15 == 4)
  {
    v25 = 0;
    sub_19212C6B8();
    sub_192228820();
    (*(v20 + 8))(v9, v21);
  }

  else
  {
    v27 = 1;
    sub_19212C610();
    v18 = v22;
    sub_192228820();
    v26 = v15;
    sub_19212C664();
    v19 = v24;
    sub_1922288C0();
    (*(v23 + 8))(v18, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t ActivityViewTag.hash(into:)()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x193B0BA90](1);
  }

  return MEMORY[0x193B0BA90](v1);
}

uint64_t ActivityViewTag.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = 0;
  if (v1 != 4)
  {
    MEMORY[0x193B0BA90](1);
    v2 = v1;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t ActivityViewTag.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0580, &qword_192234B18);
  v29 = *(v27 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0588, &qword_192234B20);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0590, &unk_192234B28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_19212C5BC();
  v17 = v31;
  sub_192228B70();
  if (!v17)
  {
    v31 = v6;
    v18 = v11;
    v19 = v30;
    v20 = sub_1922287F0();
    if (*(v20 + 16) == 1)
    {
      if (*(v20 + 32))
      {
        v35 = 1;
        sub_19212C610();
        sub_192228710();
        sub_19212C70C();
        v26 = v27;
        sub_1922287C0();
        (*(v29 + 8))(v5, v26);
        (*(v18 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = v34;
      }

      else
      {
        v33 = 0;
        sub_19212C6B8();
        sub_192228710();
        (*(v28 + 8))(v9, v31);
        (*(v11 + 8))(v14, v10);
        swift_unknownObjectRelease();
        *v19 = 4;
      }
    }

    else
    {
      v21 = sub_1922284A0();
      swift_allocError();
      v23 = v22;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v23 = &type metadata for ActivityViewTag;
      sub_192228720();
      sub_192228480();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v18 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_19212C244()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19212C278()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19212C2AC()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = 0;
  if (v1 != 4)
  {
    MEMORY[0x193B0BA90](1);
    v2 = v1;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_19212C30C()
{
  v1 = *v0;
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x193B0BA90](1);
  }

  return MEMORY[0x193B0BA90](v1);
}

uint64_t sub_19212C354()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1 == 4)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x193B0BA90](1);
  }

  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

void *sub_19212C3B4@<X0>(void *a1@<X8>)
{
  result = _s9WidgetKit15ActivityViewTagO8allCasesSayACGvgZ_0();
  *a1 = result;
  return result;
}

BOOL sub_19212C410(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

void *_s9WidgetKit15ActivityViewTagO8allCasesSayACGvgZ_0()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_19209ADB0(0, 4, 0);
  v0 = v10;
  v2 = *(v10 + 16);
  v1 = *(v10 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_19209ADB0((v1 > 1), v2 + 1, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_19209ADB0((v1 > 1), v2 + 2, 1);
    v0 = v10;
    v1 = *(v10 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_19209ADB0((v1 > 1), v2 + 3, 1);
  }

  v7 = v10;
  *(v10 + 16) = v6;
  *(v10 + v5 + 32) = 2;
  v8 = *(v10 + 24);
  if ((v2 + 4) > (v8 >> 1))
  {
    sub_19209ADB0((v8 > 1), v2 + 4, 1);
    v7 = v10;
  }

  *(v7 + 16) = v2 + 4;
  *(v7 + v6 + 32) = 3;
  sub_192167B04(v7);
  return &unk_1F06A7B08;
}

unint64_t sub_19212C5BC()
{
  result = qword_1EADEE3A0;
  if (!qword_1EADEE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3A0);
  }

  return result;
}

unint64_t sub_19212C610()
{
  result = qword_1EADF0570;
  if (!qword_1EADF0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0570);
  }

  return result;
}

unint64_t sub_19212C664()
{
  result = qword_1EADF0578;
  if (!qword_1EADF0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0578);
  }

  return result;
}

unint64_t sub_19212C6B8()
{
  result = qword_1EADEE378;
  if (!qword_1EADEE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE378);
  }

  return result;
}

unint64_t sub_19212C70C()
{
  result = qword_1EADF0598;
  if (!qword_1EADF0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0598);
  }

  return result;
}

unint64_t sub_19212C764()
{
  result = qword_1EADF05A0;
  if (!qword_1EADF05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05A0);
  }

  return result;
}

unint64_t sub_19212C7BC()
{
  result = qword_1EADF05A8;
  if (!qword_1EADF05A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05B0, &qword_192234B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityViewTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityViewTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_19212C974(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_19212C988(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_19212C9DC()
{
  result = qword_1EADF05B8;
  if (!qword_1EADF05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05B8);
  }

  return result;
}

unint64_t sub_19212CA34()
{
  result = qword_1EADF05C0;
  if (!qword_1EADF05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05C0);
  }

  return result;
}

unint64_t sub_19212CA8C()
{
  result = qword_1EADEE368;
  if (!qword_1EADEE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE368);
  }

  return result;
}

unint64_t sub_19212CAE4()
{
  result = qword_1EADEE370;
  if (!qword_1EADEE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE370);
  }

  return result;
}

unint64_t sub_19212CB3C()
{
  result = qword_1EADEE380;
  if (!qword_1EADEE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE380);
  }

  return result;
}

unint64_t sub_19212CB94()
{
  result = qword_1EADEE388;
  if (!qword_1EADEE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE388);
  }

  return result;
}

unint64_t sub_19212CBEC()
{
  result = qword_1EADEE390;
  if (!qword_1EADEE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE390);
  }

  return result;
}

unint64_t sub_19212CC44()
{
  result = qword_1EADEE398;
  if (!qword_1EADEE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE398);
  }

  return result;
}

uint64_t sub_19212CC98(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(type metadata accessor for ControlTemplateToggle.Option(0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = sub_192227CC0();
  v3[17] = sub_192227CB0();
  v8 = swift_task_alloc();
  v3[18] = v8;
  *v8 = v3;
  v8[1] = sub_19212CDCC;

  return sub_19212EA78(v4, a2);
}

uint64_t sub_19212CDCC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[18];
  v7 = *v3;
  v5[19] = a2;
  v5[20] = v2;

  if (v2)
  {
    v8 = v5[16];
    v9 = v5[17];
    v11 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19212D814, v11, v10);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[21] = v12;
    *v12 = v7;
    v12[1] = sub_19212CF5C;
    v13 = v5[11];
    v14 = v5[12];

    return sub_19212F0D4(v14, v13);
  }
}

uint64_t sub_19212CF5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[6] = v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;
  v6 = v4[21];
  v7 = *v3;
  v5[22] = a2;
  v5[23] = v2;

  if (v2)
  {
    v8 = v5[16];
    v9 = v5[17];
    v11 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19212D89C, v11, v10);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[24] = v12;
    *v12 = v7;
    v12[1] = sub_19212D0F4;
    v13 = v5[15];
    v15 = v5[11];
    v14 = v5[12];

    return sub_19212DA40(v13, 1, v14, v15);
  }
}

uint64_t sub_19212D0F4()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {
    v4 = v3[22];
    v5 = v3[19];
    v6 = v3[16];
    v7 = v3[17];

    v9 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_192112A8C, v9, v8);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[26] = v10;
    *v10 = v3;
    v10[1] = sub_19212D2A8;
    v11 = v3[14];
    v13 = v3[11];
    v12 = v3[12];

    return sub_19212DA40(v11, 0, v12, v13);
  }
}

uint64_t sub_19212D2A8()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  *(v3 + 216) = v0;

  if (v0)
  {
    v4 = *(v3 + 176);
    v5 = *(v3 + 152);
    v7 = *(v3 + 128);
    v6 = *(v3 + 136);
    sub_19212F3C4(*(v3 + 120));

    v9 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19212D930, v9, v8);
  }

  else
  {
    v10 = *(v3 + 96);
    *(v3 + 256) = *(v10 + 32);
    v11 = *(v10 + 160);
    v12 = *(v10 + 168);
    v17 = (*(v10 + 152) + **(v10 + 152));
    v13 = *(*(v10 + 152) + 4);
    v14 = swift_task_alloc();
    *(v3 + 224) = v14;
    *v14 = v3;
    v14[1] = sub_19212D4DC;
    v15 = *(v3 + 104);

    return v17(v15, v12);
  }
}

uint64_t sub_19212D4DC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 224);
  v5 = *v1;
  v3[29] = v0;

  v6 = v3[17];
  v7 = v3[16];
  if (v2)
  {
    v8 = v3[22];
    v9 = v3[19];
    v12 = v3 + 14;
    v10 = v3[14];
    v11 = v12[1];

    sub_19212F3C4(v10);
    sub_19212F3C4(v11);
    v13 = sub_192227C70();
    v15 = v14;
    v16 = sub_19212D9B8;
  }

  else
  {
    v17 = v3[3];
    v3[30] = v3[7];
    v3[31] = v17;
    v13 = sub_192227C70();
    v15 = v18;
    v16 = sub_19212D690;
  }

  return MEMORY[0x1EEE6DFA0](v16, v13, v15);
}

uint64_t sub_19212D690()
{
  v1 = *(v0 + 248);
  v16 = *(v0 + 256);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v14 = *(v0 + 240);
  v15 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = type metadata accessor for ControlTemplateToggle(0);
  v9 = v8[8];
  v10 = sub_192225020();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  v11 = &v7[v8[11]];
  *v7 = v1;
  *(v7 + 1) = v3;
  *(v7 + 2) = v14;
  *(v7 + 3) = v2;
  sub_19212F420(v6, &v7[v8[6]]);
  sub_19212F420(v5, &v7[v8[7]]);
  sub_19204193C(v15, &v7[v9], &qword_1EADEEE10, &unk_19222B630);
  v7[v8[9]] = 0;
  v7[v8[10]] = v16;
  *v11 = 0;
  *(v11 + 1) = 0;
  v7[v8[12]] = 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_19212D814()
{
  v1 = v0[17];

  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_19212D89C()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[23];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_19212D930()
{
  v1 = v0[17];

  v2 = v0[27];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_19212D9B8()
{
  v1 = v0[17];

  v2 = v0[29];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_19212DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 241) = a2;
  *(v4 + 264) = a1;
  *(v4 + 272) = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0) - 8) + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  v9 = sub_1922261D0();
  *(v4 + 320) = v9;
  v10 = *(v9 - 8);
  *(v4 + 328) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 336) = swift_task_alloc();
  v12 = sub_192226BA0();
  *(v4 + 344) = v12;
  v13 = *(v12 - 8);
  *(v4 + 352) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = sub_192227CC0();
  *(v4 + 392) = sub_192227CB0();
  v15 = *(a3 + 88);
  v16 = *(a3 + 96);
  *(v4 + 400) = *(a3 + 104);
  v17 = *(a3 + 168);
  *(v4 + 416) = v17;
  v21 = (v15 + *v15);
  v18 = v15[1];
  v19 = swift_task_alloc();
  *(v4 + 424) = v19;
  *v19 = v4;
  v19[1] = sub_19212DCD4;

  return v21(v17, a2);
}

uint64_t sub_19212DCD4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *(*v2 + 392);
  v7 = *(*v2 + 384);
  v12 = *v2;
  v4[54] = a1;
  v4[55] = v3;

  v9 = sub_192227C70();
  v4[56] = v9;
  v4[57] = v8;
  if (v3)
  {
    v10 = sub_19212E8A0;
  }

  else
  {
    v10 = sub_19212DE38;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_19212DE38()
{
  v1 = *(v0 + 400);
  *(v0 + 464) = swift_getKeyPath();
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 472) = v3;
  *v3 = v0;
  v3[1] = sub_19212DF40;
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 241);

  return v8(v0 + 16, v4, v6);
}

uint64_t sub_19212DF40()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v8 = *v1;
  *(*v1 + 480) = v0;

  v4 = *(v2 + 448);
  v5 = *(v2 + 456);
  if (v0)
  {
    v6 = sub_19212E980;
  }

  else
  {
    v6 = sub_19212E054;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_19212E054()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v111 = *(v0 + 320);
  v8 = *(v0 + 272);

  *(v0 + 224) = v2;
  v9 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v10;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v9;
  *(v0 + 232) = v1;
  *(v0 + 240) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  sub_192226760();
  v107 = *(v6 + 16);
  v107(v5, v8, v111);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v14 = sub_192226A90();
  v15 = *(v14 - 8);
  v104 = *(v15 + 48);
  v16 = v104(v7, 1, v14);
  v17 = *(v0 + 312);
  v98 = v15;
  if (v16 == 1)
  {
    sub_192033970(v17, &qword_1EADEFEC0, &unk_192231BD0);
    v103 = 0;
    v102 = 0;
  }

  else
  {
    v18 = sub_192226A80();
    (*(v15 + 8))(v17, v14);
    v19 = [v18 string];

    v103 = sub_192227960();
    v102 = v20;
  }

  v21 = *(v0 + 376);
  v22 = *(v0 + 280);
  sub_192226B80();
  v23 = sub_192226B70();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v22, 1, v23);
  v26 = *(v0 + 280);
  if (v25 == 1)
  {
    sub_192033970(*(v0 + 280), &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v27 = sub_192226B60();
    (*(v24 + 8))(v26, v23);
    if (v27)
    {
      v28 = *(v0 + 376);
      v29 = *(v0 + 288);
      sub_192226B80();
      goto LABEL_9;
    }
  }

  (*(v24 + 56))(*(v0 + 288), 1, 1, v23);
LABEL_9:
  v30 = *(v0 + 272);
  v100 = v24;
  v101 = v23;
  v109 = v14;
  if (*(v0 + 88))
  {
    sub_192227270();
    v97 = 0;
    v33.i64[0] = v31;
    v33.i64[1] = v32;
    v35.i32[1] = v34;
    v96 = vorrq_s8(vshll_n_s32(v35, 0x20uLL), v33);
  }

  else
  {
    sub_1920B3090();
    sub_1922261E0();
    v96 = *(v0 + 244);
    v97 = *(v0 + 260);
  }

  v94 = v0 + 88;
  v36 = *(v0 + 368);
  v37 = *(v0 + 352);
  v38 = *(v0 + 336);
  v90 = *(v0 + 304);
  v92 = *(v0 + 344);
  v86 = *(v0 + 272);
  v88 = *(v0 + 320);
  v39 = *(v0 + 96);
  v40 = *(v0 + 104);
  v41 = *(v0 + 112);
  v42 = *(v0 + 120);
  *(v0 + 160) = v39;
  *(v0 + 168) = v40;
  *(v0 + 176) = v41;
  *(v0 + 184) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03A0, &unk_192234FD0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_192114BA4(v39, v40, v41, v42);
  sub_192114BA4(v39, v40, v41, v42);
  sub_192226760();
  v107(v38, v86, v88);
  sub_192226700();
  sub_192226730();

  sub_19212F484(v39, v40, v41, v42);
  sub_192226A40();
  v46 = *(v37 + 8);
  v46(v36, v92);
  v47 = v104(v90, 1, v109);
  v48 = *(v0 + 304);
  v89 = v46;
  if (v47 == 1)
  {
    sub_192033970(v48, &qword_1EADEFEC0, &unk_192231BD0);
    v91 = 0;
    v93 = 0;
  }

  else
  {
    v49 = sub_192226A80();
    (*(v98 + 8))(v48, v109);
    v50 = [v49 string];

    v51 = sub_192227960();
    v91 = v52;
    v93 = v51;
  }

  v53 = *(v0 + 360);
  v54 = *(v0 + 336);
  v84 = *(v0 + 320);
  v85 = *(v0 + 296);
  v87 = *(v0 + 344);
  v55 = *(v0 + 272);
  v56 = *(v0 + 128);
  v57 = *(v0 + 136);
  v58 = *(v0 + 144);
  v59 = *(v0 + 152);
  *(v0 + 192) = v56;
  *(v0 + 200) = v57;
  *(v0 + 208) = v58;
  *(v0 + 216) = v59;
  v60 = *(v43 + 48);
  v61 = *(v43 + 52);
  swift_allocObject();
  sub_192114BA4(v56, v57, v58, v59);
  sub_192114BA4(v56, v57, v58, v59);
  sub_192226760();
  v107(v54, v55, v84);
  sub_192226700();
  sub_192226730();

  sub_19212F484(v56, v57, v58, v59);
  sub_192226A40();
  v89(v53, v87);
  v62 = v104(v85, 1, v109);
  v63 = *(v0 + 464);
  v64 = *(v0 + 432);
  v65 = *(v0 + 376);
  v66 = *(v0 + 344);
  v67 = *(v0 + 296);
  if (v62 == 1)
  {
    sub_19212F4C8(v94);

    v89(v65, v66);
    sub_192033970(v67, &qword_1EADEFEC0, &unk_192231BD0);
    v110 = 0;
    v112 = 0;
  }

  else
  {
    v68 = sub_192226A80();
    (*(v98 + 8))(v67, v109);
    v69 = [v68 string];

    v70 = sub_192227960();
    v110 = v71;
    v112 = v70;

    sub_19212F4C8(v94);

    v89(v65, v66);
  }

  v72 = *(v0 + 368);
  v73 = *(v0 + 376);
  v74 = *(v0 + 360);
  v95 = *(v0 + 336);
  v99 = *(v0 + 312);
  v75 = *(v0 + 288);
  v105 = *(v0 + 304);
  v106 = *(v0 + 296);
  v108 = *(v0 + 280);
  v76 = *(v0 + 264);
  v77 = type metadata accessor for ControlTemplateToggle.Option(0);
  v78 = v77[6];
  (*(v100 + 56))(v76 + v78, 1, 1, v101);
  v79 = (v76 + v77[7]);
  v80 = (v76 + v77[8]);
  v81 = (v76 + v77[9]);
  *v76 = v103;
  v76[1] = v102;
  v76[2] = 0;
  sub_19204193C(v75, v76 + v78, &qword_1EADEF720, &unk_19222E2F0);
  *v79 = v96;
  v79[1].i8[0] = v97;
  *v80 = v93;
  v80[1] = v91;
  *v81 = v112;
  v81[1] = v110;

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_19212E8A0()
{
  v1 = v0[49];

  v2 = v0[55];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  v6 = v0[42];
  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[36];
  v9 = v0[37];
  v11 = v0[35];

  v12 = v0[1];

  return v12();
}

uint64_t sub_19212E980()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[49];

  v4 = v0[60];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v8 = v0[42];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];

  v14 = v0[1];

  return v14();
}

uint64_t sub_19212EA78(void *a1, uint64_t a2)
{
  v2[3] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v5 = sub_1922261D0();
  v2[5] = v5;
  v6 = *(v5 - 8);
  v2[6] = v6;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v8 = sub_192226BA0();
  v2[8] = v8;
  v9 = *(v8 - 8);
  v2[9] = v9;
  v10 = *(v9 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_192227CC0();
  v2[12] = sub_192227CB0();
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[21];
  v17 = (v11 + *v11);
  v14 = v11[1];
  v15 = swift_task_alloc();
  v2[13] = v15;
  *v15 = v2;
  v15[1] = sub_19212EC7C;

  return v17(v13);
}

uint64_t sub_19212EC7C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 88);
  v12 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v3;

  v9 = sub_192227C70();
  if (v3)
  {
    v10 = sub_19212F044;
  }

  else
  {
    v10 = sub_19212EDDC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_19212EDDC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  v0[2] = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  sub_192226760();
  (*(v5 + 16))(v4, v8, v7);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v12 = sub_192226A90();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[4];
  if (v14 == 1)
  {
    (*(v18 + 8))(v0[10], v17);

    sub_192033970(v19, &qword_1EADEFEC0, &unk_192231BD0);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = sub_192226A80();
    (*(v13 + 8))(v19, v12);
    v23 = [v22 string];

    v20 = sub_192227960();
    v21 = v24;

    (*(v18 + 8))(v16, v17);
  }

  v25 = v0[10];
  v26 = v0[7];
  v27 = v0[4];

  v28 = v0[1];

  return v28(v20, v21);
}

uint64_t sub_19212F044()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_19212F0D4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_1922261D0();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_192226BA0();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  sub_192227CC0();
  v2[12] = sub_192227CB0();
  v11 = sub_192227C70();
  v2[13] = v11;
  v2[14] = v10;

  return MEMORY[0x1EEE6DFA0](sub_19212F25C, v11, v10);
}

uint64_t sub_19212F25C()
{
  v1 = v0[3];
  v2 = v1[9];
  if (v2)
  {
    v3 = v1[10];
    v4 = v1[21];
    v5 = v1[9];
    v14 = (v2 + *v2);
    v6 = v2[1];
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_19211417C;

    return v14(v4);
  }

  else
  {
    v9 = v0[12];

    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[5];

    v13 = v0[1];

    return v13(0, 0);
  }
}

uint64_t sub_19212F3C4(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplateToggle.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19212F420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateToggle.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19212F484(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_19207A338(result, a2, a3 & 1);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_19212F550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_19212F598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19212F624()
{
  result = qword_1EADED030;
  if (!qword_1EADED030)
  {
    type metadata accessor for ControlTemplateToggle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED030);
  }

  return result;
}

uint64_t sub_19212F67C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_192227670();
}

uint64_t sub_19212F850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1922265C0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF07B0, &qword_1922352E8);
  return sub_19212F8B0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_19212F8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0700, &qword_192235250);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_192226C00();
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v8 + 32))(v15 + v14, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF07B8, &qword_1922352F0);
  sub_192132634();
  sub_1921326E8();
  v16 = v23;
  sub_192227350();
  v17 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0808, &unk_192235310) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF18, &qword_192231E70) + 28);
  v19 = *MEMORY[0x1E69816C8];
  v20 = sub_192227400();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  result = swift_getKeyPath();
  *v17 = result;
  return result;
}

uint64_t sub_19212FB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v49 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0800, &qword_192235308);
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v40 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0810, &qword_192235350);
  v6 = *(*(v40 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v40 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0818, &qword_192235358);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v40 - v11;
  v12 = sub_192226ED0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF07E0, &unk_1922352F8);
  v17 = *(*(v45 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v45);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  v23 = sub_192226570();
  sub_19213290C(&qword_1EADEFF38, MEMORY[0x1E697F4E0]);
  sub_192227E00();
  sub_192227E60();
  v24 = v50;
  v25 = v51;
  sub_192226C30();
  if (v25 == v24)
  {
    sub_192226D80();
    (*(v13 + 104))(v16, *MEMORY[0x1E6980EA8], v12);
    v26 = sub_192226EE0();

    (*(v13 + 8))(v16, v12);
    KeyPath = swift_getKeyPath();
    v28 = &v22[*(v45 + 36)];
    *v28 = KeyPath;
    v28[1] = v26;
    sub_19202CFFC(v22, v47, &qword_1EADF07E0, &unk_1922352F8);
    swift_storeEnumTagMultiPayload();
    sub_1921327A0();
    sub_192031E74(&qword_1EADF07F8, &qword_1EADF0800, &qword_192235308);
    sub_1922266E0();
  }

  else
  {
    v29 = sub_192226EF0();
    v30 = swift_getKeyPath();
    v31 = &v22[*(v45 + 36)];
    *v31 = v30;
    v31[1] = v29;
    v32 = sub_192226E70();
    v33 = swift_getKeyPath();
    v34 = v42;
    (*(*(v23 - 8) + 16))(v42, a1, v23);
    v35 = (v34 + *(v40 + 36));
    *v35 = v33;
    v35[1] = v32;
    sub_19202CFFC(v22, v20, &qword_1EADF07E0, &unk_1922352F8);
    v36 = v41;
    sub_19202CFFC(v34, v41, &qword_1EADF0810, &qword_192235350);
    v37 = v43;
    sub_19202CFFC(v20, v43, &qword_1EADF07E0, &unk_1922352F8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0820, &qword_192235390);
    sub_19202CFFC(v36, v37 + *(v38 + 48), &qword_1EADF0810, &qword_192235350);
    sub_192033970(v36, &qword_1EADF0810, &qword_192235350);
    sub_192033970(v20, &qword_1EADF07E0, &unk_1922352F8);
    sub_19202CFFC(v37, v47, &qword_1EADF0800, &qword_192235308);
    swift_storeEnumTagMultiPayload();
    sub_1921327A0();
    sub_192031E74(&qword_1EADF07F8, &qword_1EADF0800, &qword_192235308);
    sub_1922266E0();
    sub_192033970(v37, &qword_1EADF0800, &qword_192235308);
    sub_192033970(v34, &qword_1EADF0810, &qword_192235350);
  }

  return sub_192033970(v22, &qword_1EADF07E0, &unk_1922352F8);
}

uint64_t sub_192130100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226C60();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_192130170(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06B8, &qword_192235228);
  sub_192225C70();
  swift_getTupleTypeMetadata3();
  sub_192227660();
  swift_getWitnessTable();
  v4 = sub_192227520();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-v10];
  sub_192226340();
  v16 = v2;
  v17 = v3;
  v18 = v1;
  sub_192227510();
  WitnessTable = swift_getWitnessTable();
  sub_1921BB14C(v9, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v9, v4);
  sub_1921BB14C(v11, v4, WitnessTable);
  return (v13)(v11, v4);
}

uint64_t sub_192130394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a2;
  v48 = a3;
  v47 = sub_192225DC0();
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF06B8, &qword_192235228);
  v43 = sub_192225C70();
  v46 = *(v43 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - v10;
  v11 = sub_192226C60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle();
  v37 = *(v16 - 8);
  v17 = v37;
  v18 = *(v37 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v35 - v22;
  (*(v12 + 16))(v15, a1, v11);
  (*(v12 + 32))(v21, v15, v11);
  WitnessTable = swift_getWitnessTable();
  sub_1921BB14C(v21, v16, WitnessTable);
  v41 = *(v17 + 8);
  v42 = v17 + 8;
  v41(v21, v16);
  v23 = v36;
  LODWORD(v15) = *(type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle() + 36);
  sub_192225DB0();
  v24 = v40;
  sub_1922270E0();
  (*(v45 + 8))(v6, v47);
  v25 = sub_192031E74(&qword_1EADF06C0, &qword_1EADF06B8, &qword_192235228);
  v55[3] = v23;
  v55[4] = v25;
  v26 = v43;
  v27 = swift_getWitnessTable();
  v28 = v44;
  v29 = v24;
  sub_1921BB14C(v24, v26, v27);
  v30 = v46;
  v31 = *(v46 + 8);
  v31(v29, v26);
  v32 = v38;
  (*(v37 + 16))(v21, v38, v16);
  v53 = 0;
  v54 = 1;
  v55[0] = v21;
  v55[1] = &v53;
  (*(v30 + 16))(v29, v28, v26);
  v55[2] = v29;
  v52[0] = v16;
  v52[1] = MEMORY[0x1E6981840];
  v52[2] = v26;
  v49 = WitnessTable;
  v50 = MEMORY[0x1E6981838];
  v51 = v27;
  sub_19212F67C(v55, 3uLL, v52);
  v31(v28, v26);
  v33 = v41;
  v41(v32, v16);
  v31(v29, v26);
  return v33(v21, v16);
}

uint64_t sub_1921308D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_192226930();
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_192226C60();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06F0, &qword_192235240);
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06F8, &qword_192235248);
  v58 = *(v60 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](v60);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v51 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0700, &qword_192235250);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v51 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0708, &qword_192235258);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v51 - v32;
  v55 = &v51 - v32;
  sub_192226C30();
  v53 = v26;
  sub_192226C00();
  (*(v8 + 16))(v11, a1, v56);
  v34 = sub_192226C20();
  v35 = v31;
  (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  sub_192226C40();
  v36 = sub_192226BF0();
  v37 = v24;
  (*(*(v36 - 8) + 56))(v24, 1, 1, v36);
  v52 = v24;
  sub_192226C10();
  sub_192225A50();
  sub_192226920();
  sub_192031E74(&qword_1EADF0710, &qword_1EADF06F0, &qword_192235240);
  sub_19213290C(&qword_1EADF0718, MEMORY[0x1E697C8B8]);
  v38 = v64;
  v39 = v61;
  sub_192227000();
  (*(v62 + 8))(v7, v39);
  (*(v59 + 8))(v15, v12);
  v54 = v35;
  sub_19202CFFC(v33, v35, &qword_1EADF0708, &qword_192235258);
  sub_19202CFFC(v26, v37, &qword_1EADF0700, &qword_192235250);
  v41 = v57;
  v40 = v58;
  v42 = *(v58 + 16);
  v43 = v38;
  v44 = v60;
  v42(v57, v43, v60);
  v45 = v35;
  v46 = v63;
  sub_19202CFFC(v45, v63, &qword_1EADF0708, &qword_192235258);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0720, &qword_192235260);
  v48 = v52;
  sub_19202CFFC(v52, v46 + *(v47 + 48), &qword_1EADF0700, &qword_192235250);
  v42((v46 + *(v47 + 64)), v41, v44);
  v49 = *(v40 + 8);
  v49(v64, v44);
  sub_192033970(v53, &qword_1EADF0700, &qword_192235250);
  sub_192033970(v55, &qword_1EADF0708, &qword_192235258);
  v49(v41, v44);
  sub_192033970(v48, &qword_1EADF0700, &qword_192235250);
  return sub_192033970(v54, &qword_1EADF0708, &qword_192235258);
}

uint64_t sub_192130F24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06C8, &qword_192235230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7[-v4];
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF06D0, &qword_192235238);
  sub_192031E74(&qword_1EADF06D8, &qword_1EADF06D0, &qword_192235238);
  sub_192227430();
  sub_192031E74(&qword_1EADF06E0, &qword_1EADF06C8, &qword_192235230);
  sub_1921322BC();
  sub_192227020();
  return (*(v2 + 8))(v5, v1);
}

uint64_t AccessoryRectangularProgressViewStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_192226C60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05C8, &qword_1922350C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_192226C50();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05D0, &qword_1922350C8);
  sub_192131758();
  sub_19213180C();
  return sub_192227350();
}

uint64_t sub_1921312CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05F8, &qword_1922350D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0728, &qword_192235268);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v27 = type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle();
  v10 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB8, &qword_192235270);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - v15;
  v17 = sub_1922275A0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19217CA0C(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_192033970(v16, &qword_1EADEFFB8, &qword_192235270);
    v22 = sub_192226C60();
    (*(*(v22 - 8) + 16))(v12, v26, v22);
    sub_192132390(v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_192031E74(&qword_1EADF05F0, &qword_1EADF05F8, &qword_1922350D0);
    sub_19213290C(&qword_1EADF0600, type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle);
    sub_1922266E0();
    return sub_1921323F4(v12);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v24 = sub_192226C60();
    (*(*(v24 - 8) + 16))(v5, v26, v24);
    (*(v18 + 16))(&v5[*(v2 + 36)], v21, v17);
    sub_19202CFFC(v5, v9, &qword_1EADF05F8, &qword_1922350D0);
    swift_storeEnumTagMultiPayload();
    sub_192031E74(&qword_1EADF05F0, &qword_1EADF05F8, &qword_1922350D0);
    sub_19213290C(&qword_1EADF0600, type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle);
    sub_1922266E0();
    sub_192033970(v5, &qword_1EADF05F8, &qword_1922350D0);
    return (*(v18 + 8))(v21, v17);
  }
}

unint64_t sub_192131758()
{
  result = qword_1EADF05D8;
  if (!qword_1EADF05D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05C8, &qword_1922350C0);
    sub_19213290C(&qword_1EADF05E0, MEMORY[0x1E697CBD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05D8);
  }

  return result;
}

unint64_t sub_19213180C()
{
  result = qword_1EADF05E8;
  if (!qword_1EADF05E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05D0, &qword_1922350C8);
    sub_192031E74(&qword_1EADF05F0, &qword_1EADF05F8, &qword_1922350D0);
    sub_19213290C(&qword_1EADF0600, type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF05E8);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle()
{
  result = qword_1EADF0628;
  if (!qword_1EADF0628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19213195C(uint64_t a1)
{
  v2 = sub_192226C60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05C8, &qword_1922350C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_192226C50();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05D0, &qword_1922350C8);
  sub_192131758();
  sub_19213180C();
  return sub_192227350();
}

unint64_t sub_192131B40()
{
  result = qword_1EADF0608;
  if (!qword_1EADF0608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0610, &qword_192235148);
    sub_192031E74(&qword_1EADF0618, &qword_1EADF0620, &qword_192235150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0608);
  }

  return result;
}

uint64_t sub_192131C18()
{
  result = sub_192226C60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_192131C84(uint64_t a1)
{
  result = sub_192226C60();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_192131D0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_192226C60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_192131F4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_192226C60() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t sub_1921322BC()
{
  result = qword_1EADF06E8;
  if (!qword_1EADF06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF06E8);
  }

  return result;
}

uint64_t sub_192132310@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_192226C60() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1921312CC(v4, a1);
}

uint64_t sub_192132390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921323F4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryRectangularProgressViewStyle.StandaloneStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192132450()
{
  result = sub_192226C60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226C60();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_192132598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AccessoryRectangularProgressViewStyle.ActionStyle.LabelStyle() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_19212FB24(a1, v8, a2);
}

unint64_t sub_192132634()
{
  result = qword_1EADF07C0;
  if (!qword_1EADF07C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0700, &qword_192235250);
    sub_19213290C(&qword_1EADF07C8, MEMORY[0x1E697CBB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07C0);
  }

  return result;
}

unint64_t sub_1921326E8()
{
  result = qword_1EADF07D0;
  if (!qword_1EADF07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF07B8, &qword_1922352F0);
    sub_1921327A0();
    sub_192031E74(&qword_1EADF07F8, &qword_1EADF0800, &qword_192235308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07D0);
  }

  return result;
}

unint64_t sub_1921327A0()
{
  result = qword_1EADF07D8;
  if (!qword_1EADF07D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF07E0, &unk_1922352F8);
    sub_192132858();
    sub_192031E74(&qword_1EADEFF70, &qword_1EADEFF78, &qword_192231FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07D8);
  }

  return result;
}

unint64_t sub_192132858()
{
  result = qword_1EADF07E8;
  if (!qword_1EADF07E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0708, &qword_192235258);
    sub_19213290C(&qword_1EADF07F0, MEMORY[0x1E697CBC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF07E8);
  }

  return result;
}

uint64_t sub_19213290C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentValues.widget.getter()
{
  sub_192050FFC();
  sub_1922261E0();
  return v1;
}

void (*EnvironmentValues.widget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_192050FFC();
  sub_1922261E0();
  return sub_192132A30;
}

void sub_192132A30(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_1922261F0();
    v7 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

uint64_t sub_192132ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_192132B64(uint64_t a1)
{
  v2 = sub_19206A320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192132BA0(uint64_t a1)
{
  v2 = sub_19206A320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetURLModifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0848, &qword_192235410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206A320();
  sub_192228B90();
  sub_192225020();
  sub_19203F924(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
  sub_192228850();
  return (*(v3 + 8))(v6, v2);
}

uint64_t WidgetURLModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0850, &qword_192235418);
  sub_192051870(v2, a2 + *(v5 + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0858, &qword_192235420);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t sub_192132DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19203F924(&qword_1ED74AB88, type metadata accessor for WidgetURLModifier);

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_192132F30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0848, &qword_192235410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19206A320();
  sub_192228B90();
  sub_192225020();
  sub_19203F924(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
  sub_192228850();
  return (*(v3 + 8))(v6, v2);
}

uint64_t static WidgetURLPreferenceKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3 = __swift_project_value_buffer(v2, qword_1ED748A78);
  swift_beginAccess();
  return sub_192051870(v3, a1);
}

uint64_t static WidgetURLPreferenceKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3 = __swift_project_value_buffer(v2, qword_1ED748A78);
  swift_beginAccess();
  sub_192100974(a1, v3);
  swift_endAccess();
  return sub_1921331E8(a1);
}

uint64_t sub_1921331E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static WidgetURLPreferenceKey.defaultValue.modify())()
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  __swift_project_value_buffer(v0, qword_1ED748A78);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921332F0(uint64_t a1)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3 = __swift_project_value_buffer(v2, qword_1ED748A78);
  swift_beginAccess();
  sub_192100974(a1, v3);
  return swift_endAccess();
}

uint64_t static WidgetURLPreferenceKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_19205EC64(a1, v8);
  v11 = sub_192225020();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v8, 1, v11) == 1)
  {
    a2();
    if (v13(v8, 1, v11) != 1)
    {
      sub_1921331E8(v8);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v8, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  return sub_19205EC64(v10, a1);
}

uint64_t sub_192133538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0870, &qword_192235740);
  sub_192051870(v2, a2 + *(v5 + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0878, &qword_192235748);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0880, &qword_192235750) + 36);

  return sub_192051870(v2, v7);
}

uint64_t View.widgetURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v22[0] = type metadata accessor for WidgetURLMetadataModifier(0);
  v7 = *(*(v22[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v22[0]);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WidgetURLModifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_192225C70();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  sub_192051870(a1, v13);
  MEMORY[0x193B0A190](v13, a2, v10, a3);
  sub_192133878(v13, type metadata accessor for WidgetURLModifier);
  sub_192051870(a1, v9);
  v19 = sub_19203F924(&qword_1ED74AE00, type metadata accessor for WidgetURLModifier);
  v22[2] = a3;
  v22[3] = v19;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193B0A190](v9, v14, v22[0], WitnessTable);
  sub_192133878(v9, type metadata accessor for WidgetURLMetadataModifier);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_192133878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.hiddenWidgetURL(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetURLModifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192051870(a1, v9);
  MEMORY[0x193B0A190](v9, a2, v6, a3);
  return sub_192133878(v9, type metadata accessor for WidgetURLModifier);
}

uint64_t sub_1921339AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_192225020();
  __swift_allocate_value_buffer(v4, qword_1EADECC08);
  v5 = __swift_project_value_buffer(v4, qword_1EADECC08);
  sub_192225010();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t IgnoredWidgetURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECC00 != -1)
  {
    swift_once();
  }

  v2 = sub_192225020();
  v3 = __swift_project_value_buffer(v2, qword_1EADECC08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_192133C48()
{
  result = qword_1EADF0868;
  if (!qword_1EADF0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0868);
  }

  return result;
}

unint64_t sub_192133CB8()
{
  result = qword_1ED749B88;
  if (!qword_1ED749B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0880, &qword_192235750);
    sub_192133D70();
    sub_192031E74(qword_1ED749BA0, &qword_1EADF0860, &qword_1922355B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749B88);
  }

  return result;
}

unint64_t sub_192133D70()
{
  result = qword_1ED749B90;
  if (!qword_1ED749B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0870, &qword_192235740);
    sub_192031E74(&unk_1ED749B70, &qword_1EADF0878, &qword_192235748);
    sub_192031E74(&qword_1ED749B98, &qword_1EADF0888, &qword_192235758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749B90);
  }

  return result;
}

id sub_192133E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF08A0, &qword_1922358A0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF08A8, &qword_1922358A8) + 36)) = v7;

  return v7;
}

uint64_t static WidgetLightingImagePreferenceKey.reduce(value:nextValue:)(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_192133F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_192031E74(&qword_1EADF08B8, &qword_1EADF08C0, &qword_1922358B0);

  return MEMORY[0x1EEDDE438](a1, a2, v4);
}

void *sub_192133FC0(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_192134008(uint64_t a1)
{
  v2 = sub_1921341DC();

  return MEMORY[0x1EEDE0700](a1, v2);
}

void View.widgetLightingImage(image:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = a1;
    if (CGImageGetWidth(v6) < 33)
    {
    }

    else
    {
      Height = CGImageGetHeight(v6);

      if (Height > 32)
      {
        v4 = 0;
LABEL_7:
        a2 = v5;
        goto LABEL_8;
      }
    }

    v8 = v6;
    goto LABEL_7;
  }

LABEL_8:
  v9 = v4;
  MEMORY[0x193B0A190](&v9, a2, &type metadata for WidgetLightingImageModifier, a3);
}

unint64_t sub_1921340F8()
{
  result = qword_1EADF0890;
  if (!qword_1EADF0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0890);
  }

  return result;
}

unint64_t sub_19213415C()
{
  result = qword_1EADF0898;
  if (!qword_1EADF0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0898);
  }

  return result;
}

unint64_t sub_1921341DC()
{
  result = qword_1EADF08B0;
  if (!qword_1EADF08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF08B0);
  }

  return result;
}

unint64_t sub_192134230()
{
  result = qword_1EADF08C8;
  if (!qword_1EADF08C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF08A8, &qword_1922358A8);
    sub_192031E74(&qword_1EADF08D0, &qword_1EADF08A0, &qword_1922358A0);
    sub_192031E74(&qword_1EADF08D8, &qword_1EADF08E0, &qword_1922358B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF08C8);
  }

  return result;
}

uint64_t sub_19213431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192134340, 0, 0);
}

uint64_t sub_192134340()
{
  v1 = *(v0 + 56);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 56);
    v5 = [v3 linkAction];
    *(v0 + 80) = v5;
    if (v5)
    {
      v6 = v5;
      *(v0 + 40) = sub_192134788();
      *(v0 + 16) = v6;
      v7 = *(MEMORY[0x1E6959EB0] + 4);
      v8 = v6;
      v9 = swift_task_alloc();
      *(v0 + 88) = v9;
      *v9 = v0;
      v9[1] = sub_192134508;
      v10 = *(v0 + 64);
      v11 = *(v0 + 72);
      v12 = *(v0 + 48);

      return MEMORY[0x1EEDB2DA8](v12, v0 + 16);
    }

    v14 = *(v0 + 56);
    sub_192134734();
    swift_allocError();
    *v15 = xmmword_1922358C0;
    *(v15 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    sub_192134734();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_192134508()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_192134688;
  }

  else
  {
    v3 = sub_19213461C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19213461C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_192134688()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  sub_192134734();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

unint64_t sub_192134734()
{
  result = qword_1EADF08E8;
  if (!qword_1EADF08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF08E8);
  }

  return result;
}

unint64_t sub_192134788()
{
  result = qword_1EADEE500;
  if (!qword_1EADEE500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADEE500);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit11ChronoErrorO9AppIntentO(uint64_t a1)
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

uint64_t sub_1921347F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_192134838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_19213487C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1921348A8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_192228400();

    v7 = 0xD000000000000027;
    swift_getErrorValue();
    v5 = sub_192228A70();
    MEMORY[0x193B0A990](v5);

    return v7;
  }

  if (a3 == 1)
  {
    v7 = 0;
    sub_192228400();
    MEMORY[0x193B0A990](0x65646E6920656854, 0xEC00000027203A78);
    v3 = sub_192228910();
    MEMORY[0x193B0A990](v3);

    MEMORY[0x193B0A990](0xD000000000000064, 0x800000019224B5C0);
    v4 = sub_192228910();
    MEMORY[0x193B0A990](v4);

    MEMORY[0x193B0A990](0x746E656D656C6520, 0xE900000000000073);
    return v7;
  }

  if (a1 | a2)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

void __swiftcall LiveSceneWidgetConfiguration.init(_:)(WidgetKit::LiveSceneWidgetConfiguration *__return_ptr retstr, Swift::String a2)
{
  retstr->configuration.kind._countAndFlagsBits = 0x6E6563536576694CLL;
  retstr->configuration.kind._object = 0xEF74656764695765;
  retstr->configuration.intentType.value._countAndFlagsBits = 0;
  retstr->configuration.intentType.value._object = 0;
  retstr->_targetApplicationBundleIdentifier.value = a2;
}

uint64_t LiveSceneWidgetConfiguration.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 40);
  *v6 = *v1;
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  v11 = *(v1 + 24);
  *(v6 + 24) = v11;
  *(v6 + 6) = 0;
  *(v6 + 7) = 0;
  *(v6 + 5) = v9;
  swift_storeEnumTagMultiPayload();

  return sub_19207ED1C(v6, a1);
}

uint64_t sub_192134BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 40);
  *v6 = *v1;
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  v11 = *(v1 + 24);
  *(v6 + 24) = v11;
  *(v6 + 6) = 0;
  *(v6 + 7) = 0;
  *(v6 + 5) = v9;
  swift_storeEnumTagMultiPayload();

  return sub_19207ED1C(v6, a1);
}

uint64_t LiveSceneWidgetConfiguration.init<A>(kind:intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  a5[4] = 0;
  a5[5] = 0;
  result = sub_1920FDC30(a3, a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

uint64_t sub_192134CF8()
{
  v1 = v0;
  v148 = sub_192225840();
  v156 = *(v148 - 8);
  v2 = *(v156 + 64);
  v3 = MEMORY[0x1EEE9AC00](v148);
  v145 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v134 = &v130 - v5;
  v139 = sub_192226690();
  v138 = *(v139 - 8);
  v6 = *(v138 + 64);
  v7 = MEMORY[0x1EEE9AC00](v139);
  v137 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v130 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v136 = &v130 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = &v130 - v15;
  v16 = type metadata accessor for ActivityViewCollection();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v130 - v21;
  *&v158 = sub_192225360();
  v153 = *(v158 - 8);
  v23 = *(v153 + 64);
  v24 = MEMORY[0x1EEE9AC00](v158);
  v152 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v130 - v26;
  v163 = sub_192225800();
  v27 = *(v163 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x1EEE9AC00](v163);
  v149 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v135 = &v130 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v150 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v151 = &v130 - v35;
  v154 = type metadata accessor for ActivityArchiver(0);
  v36 = *(*(v154 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v154);
  v157 = (&v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v130 - v39);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v41 = sub_1922258B0();
  __swift_project_value_buffer(v41, qword_1ED74CCC8);
  sub_192137CD8(v0, v40, type metadata accessor for ActivityArchiver);
  v42 = sub_192225890();
  v43 = sub_192227F80();
  v44 = os_log_type_enabled(v42, v43);
  v144 = v22;
  v159 = v27;
  v140 = v11;
  v143 = v20;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v160[0] = v46;
    *v45 = 136315138;
    v47 = *(*v40 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
    v161 = 0xD000000000000012;
    *&v162 = 0x80000001922488B0;
    v48 = [v47 debugDescription];
    v49 = sub_192227960();
    v50 = v1;
    v52 = v51;

    MEMORY[0x193B0A990](v49, v52);
    v1 = v50;

    v53 = v161;
    v54 = v162;
    sub_192137C78(v40, type metadata accessor for ActivityArchiver);
    v55 = sub_19202B8CC(v53, v54, v160);
    v27 = v159;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_192028000, v42, v43, "Environment for archiving: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x193B0C7F0](v46, -1, -1);
    MEMORY[0x193B0C7F0](v45, -1, -1);
  }

  else
  {

    sub_192137C78(v40, type metadata accessor for ActivityArchiver);
  }

  v56 = *(v154 + 24);
  v57 = v27[2];
  v58 = v151;
  v57(v151, v1 + *(v154 + 28), v163);
  v59 = v157;
  sub_192137CD8(v1, v157, type metadata accessor for ActivityArchiver);
  v154 = v56;
  v60 = sub_192225820();
  v146 = sub_1922280E0();
  if (sub_192228200())
  {
    v61 = swift_slowAlloc();
    v131 = v61;
    v132 = swift_slowAlloc();
    v161 = v132;
    *v61 = 136315138;
    v62 = *v59;
    v63 = v153;
    v64 = v147;
    v65 = v58;
    v66 = v158;
    (*(v153 + 16))(v147, v62 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor, v158);
    v67 = sub_192225350();
    v133 = v57;
    v68 = v67;
    v141 = v1;
    v70 = v69;
    v71 = v66;
    v58 = v65;
    (*(v63 + 8))(v64, v71);
    sub_192137C78(v157, type metadata accessor for ActivityArchiver);
    v72 = v68;
    v57 = v133;
    v73 = sub_19202B8CC(v72, v70, &v161);
    v27 = v159;
    v1 = v141;

    v74 = v131;
    *(v131 + 1) = v73;
    v75 = sub_1922257F0();
    _os_signpost_emit_with_name_impl(&dword_192028000, v60, v146, v75, "GetSessionPlatter", "<session-id>=%s", v74, 0xCu);
    v76 = v132;
    __swift_destroy_boxed_opaque_existential_1(v132);
    MEMORY[0x193B0C7F0](v76, -1, -1);
    MEMORY[0x193B0C7F0](v74, -1, -1);
  }

  else
  {

    sub_192137C78(v59, type metadata accessor for ActivityArchiver);
    v63 = v153;
  }

  v77 = v163;
  v57(v150, v58, v163);
  v78 = sub_192225870();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();
  v153 = sub_192225860();
  v81 = v27[1];
  v159 = v27 + 1;
  v157 = v81;
  (v81)(v58, v77);
  v82 = v1[4];
  v83 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v82);
  v84 = *v1;
  v85 = v152;
  v86 = v158;
  (*(v63 + 16))(v152, *v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor, v158);
  v87 = v155;
  (*(v83 + 48))(&v161, v85, v82, v83);
  if (v87)
  {
    (*(v63 + 8))(v85, v86);
    v91 = v156;
    v92 = sub_192225820();
    v93 = v149;
    sub_192225850();
    v94 = sub_1922280D0();
    if (sub_192228200())
    {

      v95 = v145;
      sub_192225880();

      v96 = v148;
      if ((*(v91 + 88))(v95, v148) == *MEMORY[0x1E69E93E8])
      {
        v97 = "[Error] Interval already ended";
      }

      else
      {
        (*(v91 + 8))(v95, v96);
        v97 = "<error.present>=true)";
      }

      v98 = swift_slowAlloc();
      *v98 = 0;
      v99 = sub_1922257F0();
      _os_signpost_emit_with_name_impl(&dword_192028000, v92, v94, v99, "GetSessionPlatter", v97, v98, 2u);
      MEMORY[0x193B0C7F0](v98, -1, -1);
    }

    (v157)(v93, v163);
    swift_willThrow();
  }

  (*(v63 + 8))(v85, v86);
  v158 = v162;
  v88 = v144;
  sub_192135DD8(&v161, v144);
  v89 = v143;
  sub_192137CD8(v88, v143, type metadata accessor for ActivityViewCollection);
  v90 = v142;
  sub_1920B97C8(v142);
  v141 = v1;
  sub_1921068B0(v90, v160);
  sub_192137C78(v89, type metadata accessor for ActivityViewCollection);
  v161 = v160[0];
  *&v162 = v160[1];
  v101 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment;
  v102 = *(v84 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  KeyPath = swift_getKeyPath();
  v104 = v102;
  v105 = sub_1920668D0(KeyPath);

  if (v105)
  {
    if (*(v105 + 16))
    {
      v106 = *(v105 + 32);
    }
  }

  sub_192226450();
  v107 = *(v84 + v101);
  v108 = swift_getKeyPath();
  v109 = v107;
  v110 = sub_1920668D0(v108);

  v111 = v144;
  v112 = v140;
  if (v110)
  {
    if (*(v110 + 16))
    {
      v113 = *(v110 + 32);

      sub_192226470();
    }

    else
    {
    }
  }

  if (*(v84 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion) - 1 < 2)
  {
    v114 = v84;
    sub_192226680();
LABEL_31:
    v115 = v138;
    v116 = v136;
    v117 = v112;
    v118 = v139;
    (*(v138 + 32))(v136, v117, v139);
    (*(v115 + 16))(v137, v116, v118);
    sub_192226430();
    (*(v115 + 8))(v116, v118);
    v84 = v114;
    v111 = v144;
    goto LABEL_32;
  }

  if (!*(v84 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion))
  {
    v114 = v84;
    sub_192226670();
    goto LABEL_31;
  }

LABEL_32:
  v119 = *(v84 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
  sub_192106D18();
  sub_1922263B0();

  sub_192137C78(v111, type metadata accessor for ActivityViewCollection);

  v120 = sub_192225820();
  v121 = v135;
  sub_192225850();
  v122 = sub_1922280D0();
  v123 = sub_192228200();
  v124 = v156;
  if (v123)
  {

    v125 = v134;
    sub_192225880();

    v126 = v148;
    if ((*(v124 + 88))(v125, v148) == *MEMORY[0x1E69E93E8])
    {
      v127 = "[Error] Interval already ended";
    }

    else
    {
      (*(v124 + 8))(v125, v126);
      v127 = "<error.present>=false)";
    }

    v128 = swift_slowAlloc();
    *v128 = 0;
    v129 = sub_1922257F0();
    _os_signpost_emit_with_name_impl(&dword_192028000, v120, v122, v129, "GetSessionPlatter", v127, v128, 2u);
    MEMORY[0x193B0C7F0](v128, -1, -1);
  }

  return (v157)(v121, v163);
}

uint64_t ActivityArchiver.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityArchiver(0) + 24);
  v4 = sub_192225830();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_192135DD8@<X0>(uint64_t (**a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = type metadata accessor for ActivityViewSourceContext();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = *v2;
  v14 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v15 = sub_192225360();
  (*(*(v15 - 8) + 16))(v8, v13 + v14, v15);
  v16 = *(v13 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
  v17 = *(v13 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
  v18 = (v13 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata);
  v19 = *(v13 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v20 = &v8[*(v5 + 28)];
  *v20 = v16;
  v20[1] = v17;
  v8[*(v5 + 32)] = v19;
  v53 = v9;
  v54 = v9;
  v52 = v10;
  v55 = v10;
  v56 = v12;
  v49 = v11;
  v50 = v12;
  v57 = v11;
  sub_1920367C8(v16, v17);
  v51 = v2;
  v21 = sub_192137D40();
  v22 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment;
  v23 = *(v13 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  KeyPath = swift_getKeyPath();
  v25 = v23;
  v26 = sub_19209A170(KeyPath);

  if (v26)
  {
    if (*(v26 + 16))
    {
      v27 = *(v26 + 32);

      if ((sub_19206CB1C(v27, v21) & 1) == 0 && (v27 & 1) == 0)
      {
        v28 = MEMORY[0x193B0BDE0]("_makeViewCollection(source:)");
        v47 = v21;
        if (v28)
        {
          v54 = sub_1922273D0();
        }

        v30 = sub_192227570();
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v29 = v58;
  v30 = v53(v8);
  if (v29)
  {
    sub_192137C78(v8, type metadata accessor for ActivityViewSourceContext);
  }

  v47 = v21;
  v58 = 0;
LABEL_12:
  v46 = v30;
  v32 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics;
  v33 = type metadata accessor for ActivityViewCollection();
  v34 = v48;
  sub_192137CD8(v13 + v32, v48 + v33[7], type metadata accessor for ActivityMetricsDefinition);
  v35 = *(v13 + v22);
  v36 = *v18;
  v37 = v18[1];
  v38 = *(v18 + 16);
  v39 = *(v18 + 17);
  v45 = *(v18 + 18);
  v40 = type metadata accessor for JindoViewCollection();
  (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
  *(v34 + v33[6]) = v46;
  *(v34 + v33[5]) = v35;
  v41 = v34 + v33[9];
  *v41 = v36;
  *(v41 + 8) = v37;
  *(v41 + 16) = v38;
  *(v41 + 17) = v39;
  *(v41 + 18) = v45;
  *(v34 + v33[8]) = v47;
  v54 = v53;
  v55 = v52;
  v56 = v50;
  v57 = v49;

  v42 = v35;

  v43 = v58;
  sub_192138474(&v54, v34);
  if (v43)
  {

    sub_192137C78(v34, type metadata accessor for ActivityViewCollection);
    return sub_192137C78(v8, type metadata accessor for ActivityViewSourceContext);
  }

  else
  {
    sub_192137C78(v8, type metadata accessor for ActivityViewSourceContext);
  }
}

uint64_t (*static ActivityArchiver.makeMockArchivedViewCollection(attributesType:attributesData:contentStatePayload:isStale:metricsDefinition:environment:payloadID:supportedFamilies:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, void **a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v112 = a8;
  v101 = a7;
  LODWORD(v110) = a6;
  v108 = a4;
  v109 = a5;
  v107 = a3;
  v105 = a2;
  v113 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v95 = &v93 - v13;
  v100 = type metadata accessor for JindoViewCollection();
  v102 = *(v100 - 8);
  v14 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v93 = (&v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v93 - v18;
  v97 = type metadata accessor for ActivityViewCollection();
  v19 = *(*(v97 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v97);
  v94 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v93 - v22;
  v23 = type metadata accessor for ActivityViewSourceContext();
  v24 = *(v23 - 8);
  v106 = v23 - 8;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v104 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_192225150();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v111 = sub_1922253B0();
  v29 = *(v111 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_192225360();
  v114 = *(v33 - 8);
  v115 = v33;
  v34 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v116 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1922253E0();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v103 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v93 - v40;
  v42 = sub_1922253D0();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = (&v93 - v48);
  v96 = *v112;
  sub_1922253C0();
  sub_1922253F0();
  swift_storeEnumTagMultiPayload();
  (*(v29 + 16))(v32, v113, v111);
  v113 = v41;
  v50 = v104;
  sub_192137CD8(v41, v103, MEMORY[0x1E6959C58]);
  v51 = *(v43 + 16);
  v111 = v42;
  v112 = v49;
  v51(v47, v49, v42);
  sub_1920367C8(v105, v107);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v52 = v114;
  v53 = v116;
  v54 = v115;
  sub_192225340();
  (*(v52 + 16))(v50, v53, v54);
  v55 = v106;
  v56 = (v50 + *(v106 + 28));
  v57 = v108;
  v58 = v109;
  *v56 = v108;
  v56[1] = v58;
  v59 = v110;
  *(v50 + *(v55 + 32)) = v110;
  sub_1920367C8(v57, v58);
  v60 = sub_192136E48();
  if (!v119)
  {
    v61 = v60;
    v109 = v43;
    v62 = v59 & 1;
    v63 = v97;
    v64 = v98;
    v65 = v101;
    sub_192137CD8(v101, &v98[*(v97 + 28)], type metadata accessor for ActivityMetricsDefinition);
    v66 = *(v102 + 56);
    v102 += 56;
    v110 = v66;
    v66(v64, 1, 1, v100);
    *(v64 + v63[6]) = v61;
    v67 = v96;
    *(v64 + v63[5]) = v96;
    v68 = v64 + v63[9];
    *v68 = a9;
    *(v68 + 8) = a10;
    *(v68 + 16) = v62;
    *(v68 + 17) = 0;
    *(v64 + v63[8]) = a11;
    v69 = v65 + *(type metadata accessor for ActivityMetricsDefinition() + 20);
    v70 = v99;
    sub_19202CFFC(v69, v99, &qword_1EADEFA58, &unk_19222F820);
    v71 = type metadata accessor for JindoMetricsDefinition();
    v72 = v50;
    v73 = (*(*(v71 - 8) + 48))(v70, 1, v71);

    v54 = v67;

    sub_192033970(v70, &qword_1EADEFA58, &unk_19222F820);
    v74 = v116;
    if (v73 != 1)
    {
      sub_192136EC4(v117);
      v75 = v113;
      if (v119)
      {
        sub_192137C78(v72, type metadata accessor for ActivityViewSourceContext);
        (*(v114 + 8))(v74, v115);
        sub_192137C78(v75, MEMORY[0x1E6959C58]);
        (*(v109 + 8))(v112, v111);
        goto LABEL_20;
      }

      v76 = v93;
      sub_19203832C(v117, (v93 + 1));
      v77 = v100;
      sub_192137CD8(v101, v76 + *(v100 + 24), type metadata accessor for ActivityMetricsDefinition);
      *v76 = v54;
      v78 = v54;
      sub_192033970(v64, &qword_1EADEF1B0, qword_19222C1D0);
      sub_192138C7C(v76, v64, type metadata accessor for JindoViewCollection);
      v110(v64, 0, 1, v77);
    }

    v79 = v94;
    sub_192137CD8(v64, v94, type metadata accessor for ActivityViewCollection);
    v80 = v95;
    v81 = v119;
    sub_1920B97C8(v95);
    v119 = v81;
    if (v81)
    {
      v54 = type metadata accessor for ActivityViewCollection;
      sub_192137C78(v79, type metadata accessor for ActivityViewCollection);
      sub_192137C78(v72, type metadata accessor for ActivityViewSourceContext);
      (*(v114 + 8))(v74, v115);
      sub_192137C78(v113, MEMORY[0x1E6959C58]);
      (*(v109 + 8))(v112, v111);
      v82 = v64;
LABEL_21:
      sub_192137C78(v82, type metadata accessor for ActivityViewCollection);
      return v54;
    }

    sub_1921068B0(v80, &v118);
    sub_192137C78(v79, type metadata accessor for ActivityViewCollection);
    v117[0] = v118;
    KeyPath = swift_getKeyPath();
    v84 = sub_1920668D0(KeyPath);

    v85 = v112;
    if (v84)
    {
      if (*(v84 + 16))
      {
        v86 = *(v84 + 32);
      }
    }

    sub_192226450();
    v87 = swift_getKeyPath();
    v88 = sub_1920668D0(v87);

    if (v88)
    {
      if (*(v88 + 16))
      {
        v89 = *(v88 + 32);

        sub_192226470();
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
    sub_192106D18();
    v90 = v119;
    v91 = sub_1922263C0();
    v119 = v90;
    if (!v90)
    {
      v54 = v91;
      sub_192137C78(v72, type metadata accessor for ActivityViewSourceContext);
      (*(v114 + 8))(v116, v115);
      sub_192137C78(v113, MEMORY[0x1E6959C58]);
      (*(v109 + 8))(v85, v111);

      sub_192137C78(v64, type metadata accessor for ActivityViewCollection);
      return v54;
    }

    sub_192137C78(v72, type metadata accessor for ActivityViewSourceContext);
    (*(v114 + 8))(v116, v115);
    sub_192137C78(v113, MEMORY[0x1E6959C58]);
    (*(v109 + 8))(v85, v111);
    v54 = *&v117[0];

LABEL_20:
    v82 = v64;
    goto LABEL_21;
  }

  sub_192137C78(v50, type metadata accessor for ActivityViewSourceContext);
  (*(v52 + 8))(v53, v54);
  sub_192137C78(v113, MEMORY[0x1E6959C58]);
  (*(v43 + 8))(v112, v111);
  return v54;
}

uint64_t sub_192136E48()
{
  sub_192226540();
  sub_192226FC0();
  return sub_192227570();
}

uint64_t sub_192136EC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for JindoViewProviderMock(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC9WidgetKit21JindoViewProviderMock_widgetURL;
  v7 = sub_192225020();
  result = (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  a1[3] = v2;
  a1[4] = &off_1F06AF440;
  *a1 = v5;
  return result;
}

void *static ActivityArchiver.makeArchivedViewCollection(attributesType:attributesData:contentStatePayload:isStale:viewSource:metricsDefinition:environment:payloadID:supportedFamilies:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v116 = a8;
  LODWORD(v130) = a6;
  v128 = a4;
  v129 = a5;
  v126 = a2;
  v127 = a3;
  v132 = a9;
  v133 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = &v106 - v15;
  v117 = type metadata accessor for JindoViewCollection();
  v118 = *(v117 - 8);
  v16 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v107 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v115 = &v106 - v20;
  v113 = type metadata accessor for ActivityViewCollection();
  v21 = *(*(v113 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v113);
  v110 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v106 - v24;
  v25 = type metadata accessor for ActivityViewSourceContext();
  v26 = *(v25 - 8);
  v125 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v140 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_192225150();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v124 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1922253B0();
  v32 = *(v123 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_192225360();
  v135 = *(v36 - 8);
  v136 = v36;
  v37 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v137 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1922253E0();
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v120 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v106 - v43;
  v45 = sub_1922253D0();
  v46 = *(v45 - 8);
  v47 = v46[8];
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v106 - v51;
  v53 = *(a7 + 8);
  v122 = *a7;
  v121 = v53;
  v54 = *(a7 + 24);
  v109 = *(a7 + 16);
  v108 = v54;
  v112 = *v132;
  sub_1922253C0();
  sub_1922253F0();
  swift_storeEnumTagMultiPayload();
  v119 = "ed";
  (*(v32 + 16))(v35, v133, v123);
  v55 = v135;
  v133 = v44;
  sub_192137CD8(v44, v120, MEMORY[0x1E6959C58]);
  v56 = v46[2];
  v134 = v52;
  v132 = v45;
  v56(v50, v52, v45);
  sub_1920367C8(v126, v127);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v57 = v140;
  v58 = v137;
  v59 = v136;
  sub_192225340();
  (*(v55 + 16))(v57, v58, v59);
  v60 = v125;
  v61 = (v57 + *(v125 + 28));
  v62 = v128;
  v63 = v129;
  *v61 = v128;
  v61[1] = v63;
  v64 = v130;
  *(v57 + *(v60 + 32)) = v130;
  sub_1920367C8(v62, v63);
  v65 = v131;
  v66 = v122(v57);
  v131 = v65;
  if (v65)
  {
    sub_192137C78(v57, type metadata accessor for ActivityViewSourceContext);
    (*(v55 + 8))(v58, v59);
    sub_192137C78(v133, MEMORY[0x1E6959C58]);
    v68 = v46[1];
    v67 = v46 + 1;
    v68(v134, v132);
    return v67;
  }

  v69 = v66;
  v129 = v46;
  v70 = v64 & 1;
  v71 = v113;
  v72 = v114;
  v73 = v116;
  sub_192137CD8(v116, &v114[*(v113 + 28)], type metadata accessor for ActivityMetricsDefinition);
  v74 = *(v118 + 56);
  v118 += 56;
  v130 = v74;
  v74(v72, 1, 1, v117);
  *&v72[v71[6]] = v69;
  v75 = v112;
  *&v72[v71[5]] = v112;
  v76 = &v72[v71[9]];
  *v76 = a10;
  *(v76 + 1) = a11;
  v76[16] = v70;
  *(v76 + 17) = 0;
  *&v72[v71[8]] = a12;
  v77 = type metadata accessor for ActivityMetricsDefinition();
  v78 = v115;
  sub_19202CFFC(v73 + *(v77 + 20), v115, &qword_1EADEFA58, &unk_19222F820);
  v79 = type metadata accessor for JindoMetricsDefinition();
  v80 = (*(*(v79 - 8) + 48))(v78, 1, v79);

  v81 = v75;

  sub_192033970(v78, &qword_1EADEFA58, &unk_19222F820);
  v82 = v80 == 1;
  v83 = v72;
  if (v82)
  {
    v86 = v140;
    v84 = v133;
    v85 = v131;
  }

  else
  {
    v86 = v140;
    v87 = v131;
    v109(&v138, v140);
    v85 = v87;
    v84 = v133;
    v67 = v137;
    if (v87)
    {
      sub_192137C78(v86, type metadata accessor for ActivityViewSourceContext);
      (*(v135 + 8))(v67, v136);
      sub_192137C78(v84, MEMORY[0x1E6959C58]);
      (v129[1])(v134, v132);
      v104 = v83;
LABEL_21:
      sub_192137C78(v104, type metadata accessor for ActivityViewCollection);
      return v67;
    }

    v88 = v83;
    v89 = v107;
    sub_19203832C(&v138, (v107 + 8));
    v90 = v117;
    sub_192137CD8(v73, v89 + *(v117 + 24), type metadata accessor for ActivityMetricsDefinition);
    *v89 = v81;
    v91 = v81;
    sub_192033970(v88, &qword_1EADEF1B0, qword_19222C1D0);
    v92 = v89;
    v83 = v88;
    sub_192138C7C(v92, v88, type metadata accessor for JindoViewCollection);
    v130(v88, 0, 1, v90);
  }

  v93 = v110;
  sub_192137CD8(v83, v110, type metadata accessor for ActivityViewCollection);
  v94 = v111;
  sub_1920B97C8(v111);
  v95 = v135;
  if (v85)
  {
    v96 = v134;
    v67 = type metadata accessor for ActivityViewCollection;
    sub_192137C78(v93, type metadata accessor for ActivityViewCollection);
    sub_192137C78(v86, type metadata accessor for ActivityViewSourceContext);
    (*(v95 + 8))(v137, v136);
    sub_192137C78(v84, MEMORY[0x1E6959C58]);
    (v129[1])(v96, v132);
    v104 = v83;
    goto LABEL_21;
  }

  sub_1921068B0(v94, &v139);
  sub_192137C78(v93, type metadata accessor for ActivityViewCollection);
  v138 = v139;
  KeyPath = swift_getKeyPath();
  v98 = sub_1920668D0(KeyPath);

  if (v98)
  {
    if (*(v98 + 16))
    {
      v99 = *(v98 + 32);
    }
  }

  sub_192226450();
  v100 = swift_getKeyPath();
  v101 = sub_1920668D0(v100);

  v102 = v140;
  if (v101)
  {
    if (*(v101 + 16))
    {
      v103 = *(v101 + 32);

      sub_192226470();
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
  sub_192106D18();
  v67 = sub_1922263C0();
  sub_192137C78(v102, type metadata accessor for ActivityViewSourceContext);
  (*(v95 + 8))(v137, v136);
  sub_192137C78(v133, MEMORY[0x1E6959C58]);
  (v129[1])(v134, v132);

  sub_192137C78(v83, type metadata accessor for ActivityViewCollection);
  return v67;
}

uint64_t sub_192137C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192137CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192137D40()
{
  v62 = type metadata accessor for ViewSource(0);
  v1 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0900, &unk_192235BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v50 - v6;
  v53 = type metadata accessor for WidgetDescriptor(0);
  v63 = *(v53 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v50 - v15;
  v16 = sub_1922253B0();
  v54 = *(v16 - 8);
  v17 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_192225360();
  v19 = *(v61 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0[4];
  v23 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v24);
  v25 = (*(v23 + 64))(v24, v23);
  v26 = v61;
  (*(v19 + 16))(v22, *v0 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor, v61);
  v27 = v60;
  sub_192225320();
  (*(v19 + 8))(v22, v26);
  v28 = sub_192225370();
  v29 = v54;
  v61 = v28;
  v58 = v30;
  v56 = *(v54 + 8);
  v57 = v54 + 8;
  result = v56(v27, v16);
  v32 = v25;
  v60 = *(v25 + 16);
  if (v60)
  {
    v33 = 0;
    v59 = v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v34 = (v29 + 56);
    v55 = (v29 + 32);
    v35 = (v29 + 48);
    do
    {
      if (v33 >= *(v32 + 16))
      {
        __break(1u);
        return result;
      }

      sub_192137CD8(v59 + *(v63 + 72) * v33, v10, type metadata accessor for WidgetDescriptor);
      sub_192137CD8(v10, v3, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          (*v34)(v7, 1, 1, v16);
          sub_192137C78(v3, type metadata accessor for ViewSource);
          goto LABEL_12;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v37 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
        v38 = *(v37 + 1);
        v39 = *(v37 + 3);

        (*v55)(v7, v3, v16);
        (*v34)(v7, 0, 1, v16);
        goto LABEL_12;
      }

      sub_192137C78(v3, type metadata accessor for ViewSource);
      (*v34)(v7, 1, 1, v16);
LABEL_12:
      if ((*v35)(v7, 1, v16) == 1)
      {
        sub_192033970(v7, &qword_1EADF0900, &unk_192235BA0);
      }

      else
      {
        v40 = sub_192225370();
        v42 = v41;
        v56(v7, v16);
        if (v40 == v61 && v42 == v58)
        {

          goto LABEL_19;
        }

        v43 = sub_1922289A0();

        if (v43)
        {

LABEL_19:

          v46 = v52;
          sub_192138C7C(v10, v52, type metadata accessor for WidgetDescriptor);
          v44 = 0;
          v45 = v53;
          goto LABEL_20;
        }
      }

      ++v33;
      result = sub_192137C78(v10, type metadata accessor for WidgetDescriptor);
    }

    while (v60 != v33);
  }

  v44 = 1;
  v46 = v52;
  v45 = v53;
LABEL_20:
  v47 = v51;
  v48 = v63;
  (*(v63 + 56))(v46, v44, 1, v45);
  sub_19202CFFC(v46, v47, &qword_1EADEEE20, &qword_19222B670);
  if ((*(v48 + 48))(v47, 1, v45) == 1)
  {
    sub_192033970(v47, &qword_1EADEEE20, &qword_19222B670);
    v49 = &unk_1F06A7788;
  }

  else
  {
    v49 = *(v47 + *(v45 + 32));

    sub_192137C78(v47, type metadata accessor for WidgetDescriptor);
  }

  sub_192033970(v46, &qword_1EADEEE20, &qword_19222B670);
  return v49;
}

void sub_192138474(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v40 = a2;
  v6 = type metadata accessor for JindoViewCollection();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ActivityViewSourceContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v35 - v16;
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = *v4;
  v21 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v22 = *(v20 + v21);
  if (v22)
  {
    v36 = v19;
    v23 = v20 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics;
    v24 = *(type metadata accessor for ActivityMetricsDefinition() + 20);
    v35 = v23;
    sub_19202CFFC(v23 + v24, v17, &qword_1EADEFA58, &unk_19222F820);
    v25 = type metadata accessor for JindoMetricsDefinition();
    if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
    {
      sub_192033970(v17, &qword_1EADEFA58, &unk_19222F820);
    }

    else
    {
      v26 = v22;
      sub_192033970(v17, &qword_1EADEFA58, &unk_19222F820);
      v27 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
      v28 = sub_192225360();
      (*(*(v28 - 8) + 16))(v13, v20 + v27, v28);
      v29 = *(v20 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
      v30 = *(v20 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8);
      v31 = *(v20 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
      v32 = &v13[*(v10 + 20)];
      *v32 = v29;
      v32[1] = v30;
      v13[*(v10 + 24)] = v31;
      sub_1920367C8(v29, v30);
      v36(v39, v13);
      sub_192137C78(v13, type metadata accessor for ActivityViewSourceContext);
      if (v3)
      {
      }

      else
      {
        sub_19203832C(v39, (v9 + 1));
        v33 = v38;
        sub_192137CD8(v35, v9 + *(v38 + 24), type metadata accessor for ActivityMetricsDefinition);
        *v9 = v26;
        v34 = v40;
        sub_192033970(v40, &qword_1EADEF1B0, qword_19222C1D0);
        sub_192138C7C(v9, v34, type metadata accessor for JindoViewCollection);
        (*(v37 + 56))(v34, 0, 1, v33);
      }
    }
  }
}

uint64_t sub_19213882C()
{
  v1 = v0[2];

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit21JindoViewProviderMock_widgetURL, &qword_1EADEEE10, &unk_19222B630);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_19213891C()
{
  result = type metadata accessor for ActivityWidgetRequest(319);
  if (v1 <= 0x3F)
  {
    result = sub_1921389D0();
    if (v2 <= 0x3F)
    {
      result = sub_192225830();
      if (v3 <= 0x3F)
      {
        result = sub_192225800();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1921389D0()
{
  result = qword_1EADEDB90;
  if (!qword_1EADEDB90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADEDB90);
  }

  return result;
}

void sub_192138A5C()
{
  sub_19203F7F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_192138AF8()
{
  v0 = sub_192226530();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_192226520();
  sub_192226510();
  sub_192227990();
  sub_192226500();

  sub_192226510();
  JindoMetricsDefinition.hashValue.getter();
  sub_1922264F0();
  sub_192226510();
  sub_192226550();
  sub_192226FC0();
  return sub_192227570();
}

uint64_t sub_192138C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AccessoryRectangularGaugeStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0908, &qword_192235BB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8[-v5];
  v10 = a1;
  v9 = a1;
  sub_1922268C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0910, &qword_192235BB8);
  sub_1921391A0();
  sub_1921391F8();
  sub_192225C40();
  sub_19213925C();
  sub_1921392E8();
  sub_192227140();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_192138E70@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0938, &qword_192235C30);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0940, &qword_192235C38);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0948, &qword_192235C40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  sub_192226890();
  sub_1922268A0();
  sub_1922268B0();
  sub_19202CFFC(v21, v19, &qword_1EADF0948, &qword_192235C40);
  sub_19202CFFC(v14, v12, &qword_1EADF0940, &qword_192235C38);
  v22 = v5;
  sub_19202CFFC(v7, v5, &qword_1EADF0938, &qword_192235C30);
  v23 = v27;
  sub_19202CFFC(v19, v27, &qword_1EADF0948, &qword_192235C40);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0950, &qword_192235C48);
  sub_19202CFFC(v12, v23 + *(v24 + 48), &qword_1EADF0940, &qword_192235C38);
  sub_19202CFFC(v22, v23 + *(v24 + 64), &qword_1EADF0938, &qword_192235C30);
  sub_192033970(v7, &qword_1EADF0938, &qword_192235C30);
  sub_192033970(v14, &qword_1EADF0940, &qword_192235C38);
  sub_192033970(v21, &qword_1EADF0948, &qword_192235C40);
  sub_192033970(v22, &qword_1EADF0938, &qword_192235C30);
  sub_192033970(v12, &qword_1EADF0940, &qword_192235C38);
  return sub_192033970(v19, &qword_1EADF0948, &qword_192235C40);
}

unint64_t sub_1921391A0()
{
  result = qword_1EADF0918;
  if (!qword_1EADF0918)
  {
    sub_1922268C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0918);
  }

  return result;
}

unint64_t sub_1921391F8()
{
  result = qword_1EADF0920;
  if (!qword_1EADF0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0910, &qword_192235BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0920);
  }

  return result;
}

unint64_t sub_19213925C()
{
  result = qword_1EADF0928;
  if (!qword_1EADF0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0908, &qword_192235BB0);
    sub_1921391A0();
    sub_1921391F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0928);
  }

  return result;
}

unint64_t sub_1921392E8()
{
  result = qword_1EADF0930;
  if (!qword_1EADF0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0930);
  }

  return result;
}

uint64_t sub_192139358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0908, &qword_192235BB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8[-v5];
  v10 = a1;
  v9 = a1;
  sub_1922268C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0910, &qword_192235BB8);
  sub_1921391A0();
  sub_1921391F8();
  sub_192225C40();
  sub_19213925C();
  sub_1921392E8();
  sub_192227140();
  return (*(v3 + 8))(v6, v2);
}

uint64_t View.applyCommonEnvironment(widget:metrics:overrideFamily:)(void *a1, void *a2, id a3, char a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();
  v26 = 0;
  v13 = swift_getKeyPath();
  v25 = 0;
  v14 = swift_getKeyPath();
  v24 = 0;
  v15 = a1;
  v16 = a2;
  if (a4)
  {
    a3 = [v15 family];
  }

  *&v18 = v15;
  *(&v18 + 1) = v16;
  *&v19 = a3;
  *(&v19 + 1) = KeyPath;
  LOBYTE(v20) = v26;
  *(&v20 + 1) = v13;
  *v21 = 0;
  v21[8] = v25;
  *&v21[16] = v14;
  v21[24] = v24;
  MEMORY[0x193B0A190](&v18, a5, &type metadata for CommonArchivingWidgetEnvironmentModifier, a6);
  v22[2] = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v22[0] = v18;
  v22[1] = v19;
  return sub_1921396D4(v22);
}

uint64_t sub_192139628@<X0>(void *a1@<X8>)
{
  sub_192101EC4();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192139678(void **a1)
{
  v1 = *a1;
  sub_192101EC4();
  v2 = v1;
  return sub_1922261F0();
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_192139734(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_19213977C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1921397D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a1;
  v212 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0958, &qword_192235E80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v193 = &v168 - v5;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0960, &qword_192235E88);
  v6 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v188 = &v168 - v7;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0968, &qword_192235E90);
  v8 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v186 = &v168 - v9;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0970, &qword_192235E98);
  v10 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185);
  v190 = &v168 - v11;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0978, &qword_192235EA0);
  v12 = *(*(v189 - 8) + 64);
  MEMORY[0x1EEE9AC00](v189);
  v192 = &v168 - v13;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0980, &qword_192235EA8);
  v14 = *(*(v191 - 8) + 64);
  MEMORY[0x1EEE9AC00](v191);
  v195 = &v168 - v15;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0988, &qword_192235EB0);
  v16 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v200 = &v168 - v17;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0990, &qword_192235EB8);
  v18 = *(*(v197 - 8) + 64);
  MEMORY[0x1EEE9AC00](v197);
  v205 = &v168 - v19;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0998, &qword_192235EC0);
  v20 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v204 = &v168 - v21;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09A0, &qword_192235EC8);
  v22 = *(*(v201 - 8) + 64);
  MEMORY[0x1EEE9AC00](v201);
  v203 = &v168 - v23;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09A8, &qword_192235ED0);
  v24 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v168 - v25;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09B0, &qword_192235ED8);
  v26 = *(*(v196 - 8) + 64);
  MEMORY[0x1EEE9AC00](v196);
  v207 = &v168 - v27;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09B8, &qword_192235EE0);
  v28 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v206 = &v168 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09C0, &unk_192235EE8);
  v210 = *(v30 - 8);
  v211 = v30;
  v31 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v208 = &v168 - v32;
  v181 = sub_1922261D0();
  v180 = *(v181 - 8);
  v33 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v213 = &v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for ViewSource(0);
  v35 = *(*(v215 - 8) + 64);
  MEMORY[0x1EEE9AC00](v215);
  v37 = (&v168 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v179 = type metadata accessor for WidgetDescriptor(0);
  v217 = *(v179 - 8);
  v38 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v40 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v178 = &v168 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v43);
  v187 = (&v168 - v46);
  if (xmmword_1ED74CC80)
  {
    v47 = *(v2 + 8);
    v216 = *v2;
    v177 = v47;
    v48 = *(v2 + 24);
    v175 = *(v2 + 16);
    v173 = v48;
    v172 = *(v2 + 32);
    v49 = *(v2 + 48);
    v169 = *(v2 + 40);
    v171 = v49;
    v170 = *(v2 + 56);
    v176 = *(v2 + 64);
    v174 = *(v2 + 72);
    v50 = *xmmword_1ED74CC80;
    v218 = xmmword_1ED74CC80;
    v51 = (*(qword_1ED74CC90 + 24))(v50);
    v52 = v51;
    v53 = *(v51 + 16);
    if (v53)
    {
      v54 = 0;
      v214 = v51 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
      do
      {
        if (v54 >= *(v52 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        sub_19207C0C0(v214 + *(v217 + 72) * v54, v40, type metadata accessor for WidgetDescriptor);
        sub_19207C0C0(v40, v37, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_19207D1F8(v37, type metadata accessor for ViewSource);
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v57 = *v37;
            v56 = v37[1];
            v58 = v37[3];
            v59 = v37[4];
            v60 = v37[5];
            v61 = v37[7];

            sub_19207C280(v59, v60);

            goto LABEL_13;
          }

          v62 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
          v63 = *(v62 + 1);
          v64 = *(v62 + 3);

          v65 = sub_1922253B0();
          (*(*(v65 - 8) + 8))(v37, v65);
        }

        v57 = 0;
        v56 = 0;
LABEL_13:
        v66 = [v216 kind];
        v67 = sub_192227960();
        v69 = v68;

        if (v56)
        {
          if (v57 == v67 && v56 == v69)
          {

LABEL_20:

            v37 = v187;
            sub_19207C284(v40, v187);
            v71 = 0;
            v72 = v193;
            v73 = v188;
            goto LABEL_21;
          }

          v70 = sub_1922289A0();

          if (v70)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

        ++v54;
        sub_19207D1F8(v40, type metadata accessor for WidgetDescriptor);
      }

      while (v53 != v54);
    }

    v71 = 1;
    v72 = v193;
    v73 = v188;
    v37 = v187;
LABEL_21:
    v74 = v179;
    v75 = v178;
    v76 = v217;
    (*(v217 + 56))(v37, v71, 1, v179);
    sub_19202CFFC(v37, v75, &qword_1EADEEE20, &qword_19222B670);
    v77 = (*(v76 + 48))(v75, 1, v74);
    v40 = v207;
    if (v77 == 1)
    {
      sub_192033970(v75, &qword_1EADEEE20, &qword_19222B670);
      v78 = 0;
    }

    else
    {
      v79 = *(v75 + *(v74 + 60));
      sub_19207D1F8(v75, type metadata accessor for WidgetDescriptor);
      v78 = v79 == 2;
    }

    v80 = v181;
    v81 = v180;
    if (v172)
    {
      v82 = v173;
    }

    else
    {
      v83 = v173;

      sub_192227FA0();
      v84 = sub_192226D00();
      sub_1922257A0();

      v85 = v213;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192049898(v83, 0);
      (*(v81 + 8))(v85, v80);
      v82 = v218;
    }

    v86 = v82 == 2 || v78;
    if (v86 == 1)
    {
      v87 = v175;
      if (v170)
      {
        v88 = v171;
      }

      else
      {
        v90 = v175;
        v91 = v169;

        sub_192227FA0();
        v92 = sub_192226D00();
        sub_1922257A0();

        v93 = v213;
        _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
        swift_getAtKeyPath();
        sub_19213AE5C(v91, v171, 0);
        (*(v81 + 8))(v93, v80);
        v87 = v90;
        v88 = v219;
      }

      v89 = (v88 - 3) < 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v89 = 0;
      v87 = v175;
    }

    InternalWidgetFamily.init(_:)(v87, &v220);
    v94 = v220;
    if (v174)
    {
      v218 = v176;
      v95 = v176;
    }

    else
    {
      LODWORD(v217) = v89;
      v96 = v80;
      v97 = v73;
      v98 = v72;
      v99 = v40;
      v100 = v37;
      v101 = v176;

      sub_192227FA0();
      v102 = sub_192226D00();
      sub_1922257A0();

      v103 = v213;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v104 = v101;
      v37 = v100;
      v40 = v99;
      v72 = v98;
      v73 = v97;
      sub_19209561C(v104, 0);
      v105 = v96;
      v89 = v217;
      (*(v81 + 8))(v103, v105);
      v95 = v218;
    }

    v106 = v177;

    LOBYTE(v218) = v94;
    v107 = sub_19206B9B0(v106, &v218);
    v109 = v108;
    KeyPath = swift_getKeyPath();
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09C8, &qword_192235F28);
    (*(*(v111 - 8) + 16))(v73, v183, v111);
    v112 = (v73 + *(v182 + 36));
    *v112 = KeyPath;
    v112[1] = v107;
    v112[2] = v109;
    v113 = swift_getKeyPath();
    if (v89)
    {
      if (qword_1ED748A70 != -1)
      {
        swift_once();
      }

      v114 = sub_1922275D0();
      v115 = __swift_project_value_buffer(v114, qword_1ED74C6D0);
      v116 = *(v114 - 8);
      (*(v116 + 16))(v72, v115, v114);
      (*(v116 + 56))(v72, 0, 1, v114);
    }

    else
    {
      v117 = sub_1922275D0();
      (*(*(v117 - 8) + 56))(v72, 1, 1, v117);
    }

    v118 = v186;
    v119 = &v186[*(v184 + 36)];
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09D0, &qword_192235F60);
    sub_19204E300(v72, v119 + *(v120 + 28), &qword_1EADF0958, &qword_192235E80);
    *v119 = v113;
    sub_19204E300(v73, v118, &qword_1EADF0960, &qword_192235E88);
    v121 = swift_getKeyPath();
    v122 = v190;
    sub_19204E300(v118, v190, &qword_1EADF0968, &qword_192235E90);
    v123 = v122 + *(v185 + 36);
    *v123 = v121;
    *(v123 + 8) = 0;
    v124 = swift_getKeyPath();
    v125 = swift_getKeyPath();
    v126 = swift_getKeyPath();
    v127 = v122;
    v128 = v192;
    sub_19204E300(v127, v192, &qword_1EADF0970, &qword_192235E98);
    v129 = v128 + *(v189 + 36);
    *v129 = v124;
    *(v129 + 8) = 0;
    *(v129 + 16) = v125;
    *(v129 + 24) = 0;
    *(v129 + 32) = v126;
    *(v129 + 40) = 0;
    v130 = swift_getKeyPath();
    v131 = swift_getKeyPath();
    v132 = v195;
    sub_19204E300(v128, v195, &qword_1EADF0978, &qword_192235EA0);
    v133 = v132 + *(v191 + 36);
    *v133 = v130;
    *(v133 + 8) = 0;
    *(v133 + 16) = v131;
    *(v133 + 24) = 0;
    *(v133 + 32) = 0;
    v134 = swift_getKeyPath();
    v135 = swift_getKeyPath();
    v136 = v132;
    v137 = v200;
    sub_19204E300(v136, v200, &qword_1EADF0980, &qword_192235EA8);
    v138 = v137 + *(v194 + 36);
    *v138 = v134;
    *(v138 + 8) = 0;
    *(v138 + 16) = v135;
    *(v138 + 24) = 0;
    *(v138 + 32) = 0;
    *(v138 + 40) = 1;
    v139 = swift_getKeyPath();
    v140 = swift_getKeyPath();
    v141 = v137;
    v142 = v205;
    sub_19204E300(v141, v205, &qword_1EADF0988, &qword_192235EB0);
    v143 = v142 + *(v197 + 36);
    *v143 = v139;
    *(v143 + 8) = 0;
    *(v143 + 16) = v140;
    *(v143 + 24) = 0;
    v144 = swift_getKeyPath();
    v145 = swift_getKeyPath();
    v146 = v204;
    sub_19204E300(v142, v204, &qword_1EADF0990, &qword_192235EB8);
    v147 = v146 + *(v202 + 36);
    *v147 = v144;
    *(v147 + 8) = 0;
    *(v147 + 16) = v145;
    *(v147 + 24) = 0;
    v148 = swift_getKeyPath();
    v149 = v203;
    sub_19204E300(v146, v203, &qword_1EADF0998, &qword_192235EC0);
    v150 = v149 + *(v201 + 36);
    *v150 = v148;
    *(v150 + 8) = 0;
    v151 = swift_getKeyPath();
    v152 = v199;
    sub_19204E300(v149, v199, &qword_1EADF09A0, &qword_192235EC8);
    v153 = v152 + *(v198 + 36);
    *v153 = v151;
    *(v153 + 8) = 0;
    v154 = swift_getKeyPath();
    sub_19204E300(v152, v40, &qword_1EADF09A8, &qword_192235ED0);
    v155 = &v40[*(v196 + 36)];
    v156 = v216;
    *v155 = v154;
    v155[1] = v156;
    v52 = swift_getKeyPath();
    v157 = qword_1ED74A150;
    v158 = v156;
    if (v157 != -1)
    {
LABEL_47:
      swift_once();
    }

    v159 = sub_192225B10();
    v160 = __swift_project_value_buffer(v159, qword_1ED74C7B8);
    v161 = v209;
    v162 = v206;
    v163 = &v206[*(v209 + 36)];
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09D8, &qword_1922360B8);
    (*(*(v159 - 8) + 16))(v163 + *(v164 + 28), v160, v159);
    *v163 = v52;
    sub_19204E300(v40, v162, &qword_1EADF09B0, &qword_192235ED8);
    v165 = sub_19207A51C();
    v166 = v208;
    sub_192227150();
    sub_192033970(v162, &qword_1EADF09B8, &qword_192235EE0);
    v218 = v161;
    v219 = v165;
    swift_getOpaqueTypeConformance2();
    v167 = v211;
    sub_192227180();
    (*(v210 + 8))(v166, v167);
    return sub_192033970(v37, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19213AC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0958, &qword_192235E80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19202CFFC(a1, &v6 - v4, &qword_1EADF0958, &qword_192235E80);
  return sub_192225FA0();
}

uint64_t sub_19213AD04(uint64_t a1)
{
  v2 = sub_192225B10();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_192226110();
}

unint64_t sub_19213ADD0()
{
  result = qword_1ED749F88;
  if (!qword_1ED749F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF09A8, &qword_192235ED0);
    sub_19207A5D4();
    sub_19206ABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F88);
  }

  return result;
}

uint64_t sub_19213AE5C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

id NSError.init(code:underlyingError:debugDescription:__file:__line:)(_BYTE *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    LOBYTE(v29) = *a1;
    a3 = CKCErrorCode.debugDescription.getter();
    v6 = v8;
  }

  v9 = qword_1922362B0[v5];
  v10 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v11 = *MEMORY[0x1E696A278];
  v12 = sub_192227960();
  v14 = v13;
  v30 = MEMORY[0x1E69E6158];
  *&v29 = a3;
  *(&v29 + 1) = v6;
  sub_19203BEDC(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v28, v12, v14, isUniquelyReferenced_nonNull_native);

  if (a2)
  {
    v16 = *MEMORY[0x1E696AA08];
    v17 = sub_192227960();
    v19 = v18;
    swift_getErrorValue();
    v30 = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1);
    sub_19203BEDC(&v29, v28);
    v21 = a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v28, v17, v19, v22);
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_192227830();

  v25 = [v23 initWithDomain:v10 code:v9 userInfo:v24];

  return v25;
}

unint64_t CKCErrorCode.debugDescription.getter()
{
  result = 0x676F646863746157;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000023;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 9:
    case 0x14:
      result = 0xD000000000000015;
      break;
    case 4:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x656972746E456F6ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD00000000000001ALL;
      break;
    case 0xB:
      result = 0xD00000000000002ALL;
      break;
    case 0xC:
      result = 0xD00000000000002CLL;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
    case 0x12:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0xD000000000000021;
      break;
    case 0x11:
      result = 0x4E65766968637261;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

WidgetKit::CKCErrorCode_optional __swiftcall CKCErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 1199)
  {
    if (rawValue > 1399)
    {
      if (rawValue > 1500)
      {
        if (rawValue == 1501)
        {
          *v1 = 19;
          return rawValue;
        }

        if (rawValue == 1600)
        {
          *v1 = 20;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 1400)
        {
          *v1 = 17;
          return rawValue;
        }

        if (rawValue == 1500)
        {
          *v1 = 18;
          return rawValue;
        }
      }
    }

    else if (rawValue > 1300)
    {
      if (rawValue == 1301)
      {
        *v1 = 15;
        return rawValue;
      }

      if (rawValue == 1302)
      {
        *v1 = 16;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 1200)
      {
        *v1 = 13;
        return rawValue;
      }

      if (rawValue == 1300)
      {
        *v1 = 14;
        return rawValue;
      }
    }

LABEL_35:
    *v1 = 21;
    return rawValue;
  }

  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 1001:
      goto LABEL_28;
    case 1002:
      v2 = 1;
      goto LABEL_28;
    case 1050:
      v2 = 2;
LABEL_28:
      v3 = v2;
      goto LABEL_29;
    case 1051:
LABEL_29:
      *v1 = v3;
      break;
    case 1052:
      *v1 = 4;
      break;
    case 1100:
      *v1 = 5;
      break;
    case 1101:
      *v1 = 6;
      break;
    case 1102:
      *v1 = 7;
      break;
    case 1103:
      *v1 = 8;
      break;
    case 1104:
      *v1 = 9;
      break;
    case 1105:
      *v1 = 10;
      break;
    case 1106:
      *v1 = 11;
      break;
    case 1107:
      *v1 = 12;
      break;
    default:
      goto LABEL_35;
  }

  return rawValue;
}

uint64_t sub_19213B4A8()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_1922362B0[v1]);
  return sub_192228B30();
}

uint64_t sub_19213B530()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_1922362B0[v1]);
  return sub_192228B30();
}

id NSError.init(domain:code:underlyingError:debugDescription:__file:__line:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  if (a6)
  {
    v10 = *MEMORY[0x1E696A278];
    v11 = sub_192227960();
    v13 = v12;
    v33 = MEMORY[0x1E69E6158];
    *&v32 = a5;
    *(&v32 + 1) = a6;
    sub_19203BEDC(&v32, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v29, v11, v13, isUniquelyReferenced_nonNull_native);
  }

  if (a4)
  {
    v15 = *MEMORY[0x1E696AA08];
    v16 = sub_192227960();
    v18 = v17;
    swift_getErrorValue();
    v19 = v30;
    v20 = v31;
    v33 = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v19, v20);
    sub_19203BEDC(&v32, v29);
    v22 = a4;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v29, v16, v18, v23);
  }

  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = sub_192227930();

  v26 = sub_192227830();

  v27 = [v24 initWithDomain:v25 code:a3 userInfo:v26];

  return v27;
}

uint64_t sub_19213B7BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A80, &qword_192236290);
  v36 = a2;
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_19203BEDC(v25, v37);
      }

      else
      {
        sub_19202A98C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_192228AD0();
      sub_1922279B0();
      result = sub_192228B30();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_19203BEDC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_19213BA74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A10, &qword_192236228);
  result = sub_1922286A0();
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

        sub_1920367C8(v32, *(&v32 + 1));
      }

      v22 = *(v8 + 40);
      sub_192228AD0();
      sub_192140210(v33, v21);
      result = sub_192228B30();
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

uint64_t sub_19213BD10(uint64_t a1, int a2)
{
  v3 = v2;
  v61 = sub_192225020();
  v6 = *(v61 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_192226B30();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolLookupKey(0);
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v17 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A30, &qword_192236248);
  v70 = a2;
  v18 = sub_1922286A0();
  v19 = v16;
  if (*(v16 + 16))
  {
    v56 = v3;
    v20 = 0;
    v21 = (v19 + 64);
    v22 = 1 << *(v19 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v19 + 64);
    v25 = (v22 + 63) >> 6;
    v66 = (v9 + 16);
    v65 = (v9 + 88);
    v64 = *MEMORY[0x1E697CAF0];
    v59 = *MEMORY[0x1E697CAF8];
    v63 = (v9 + 96);
    v58 = (v6 + 32);
    v57 = (v6 + 8);
    v26 = v18 + 64;
    v27 = v62;
    v67 = v19;
    while (v24)
    {
      v29 = v12;
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v33 = v30 | (v20 << 6);
      v34 = *(v19 + 48);
      v35 = v19;
      v72 = *(v68 + 72);
      v36 = v34 + v72 * v33;
      if (v70)
      {
        sub_192140B10(v36, v27, type metadata accessor for SymbolLookupKey);
        v71 = *(*(v35 + 56) + 8 * v33);
      }

      else
      {
        sub_1920B7F00(v36, v27, type metadata accessor for SymbolLookupKey);
        v71 = *(*(v35 + 56) + 8 * v33);
      }

      v37 = *(v18 + 40);
      sub_192228AD0();
      v12 = v29;
      v38 = v29;
      v39 = v69;
      (*v66)(v38, v27, v69);
      v40 = (*v65)(v12, v39);
      if (v40 == v64)
      {
        (*v63)(v12, v39);
        v41 = v60;
        v42 = v61;
        (*v58)(v60, v12, v61);
        sub_192076BC8(&qword_1EADF0A38, MEMORY[0x1E6968FB0]);
        sub_192227890();
        v43 = v42;
        v27 = v62;
        (*v57)(v41, v43);
      }

      else
      {
        if (v40 != v59)
        {
          goto LABEL_43;
        }

        (*v63)(v12, v39);
        v44 = *v12;
        sub_192228AF0();
      }

      v45 = sub_192228B30();
      v46 = -1 << *(v18 + 32);
      v47 = v45 & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v26 + 8 * (v47 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        while (++v48 != v50 || (v49 & 1) == 0)
        {
          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v26 + 8 * v48);
          if (v52 != -1)
          {
            v28 = __clz(__rbit64(~v52)) + (v48 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        v73 = 0;
        v74 = 0xE000000000000000;
        sub_192228400();
        MEMORY[0x193B0A990](0xD00000000000004BLL, 0x800000019224B9D0);
        sub_1922285A0();
        result = sub_192228620();
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v47) & ~*(v26 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      sub_192140B10(v27, *(v18 + 48) + v72 * v28, type metadata accessor for SymbolLookupKey);
      *(*(v18 + 56) + 8 * v28) = v71;
      ++*(v18 + 16);
      v19 = v67;
    }

    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v20 >= v25)
      {
        break;
      }

      v32 = v21[v20];
      ++v31;
      if (v32)
      {
        v29 = v12;
        v30 = __clz(__rbit64(v32));
        v24 = (v32 - 1) & v32;
        goto LABEL_17;
      }
    }

    if ((v70 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_40;
    }

    v53 = 1 << *(v19 + 32);
    v3 = v56;
    if (v53 >= 64)
    {
      bzero(v21, ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v19 = v67;
    }

    else
    {
      *v21 = -1 << v53;
    }

    *(v19 + 16) = 0;
  }

LABEL_40:
  *v3 = v18;
  return result;
}

uint64_t sub_19213C3E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09F8, &qword_192236210);
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 88 * v21;
      v36 = *(v23 + 32);
      v37 = *(v23 + 48);
      *v38 = *(v23 + 64);
      *&v38[15] = *(v23 + 79);
      v34 = *v23;
      v35 = *(v23 + 16);
      v24 = *(v8 + 40);
      result = sub_192228AC0();
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

LABEL_34:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 88 * v16;
      *(v17 + 32) = v36;
      *(v17 + 48) = v37;
      *(v17 + 64) = *v38;
      *(v17 + 79) = *&v38[15];
      *v17 = v34;
      *(v17 + 16) = v35;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v33)
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
  }

  *v3 = v8;
  return result;
}

uint64_t sub_19213C690(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A60, &qword_192236270);
  v38 = a2;
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_192228AD0();
      sub_1922279B0();
      result = sub_192228B30();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_19213C938(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A48, &qword_192236258);
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v25 = *(v23 + 8);
      v24 = *(v23 + 16);
      v26 = *v23;
      v27 = *(v8 + 40);
      sub_192228AD0();
      MEMORY[0x193B0BA90](v22);
      result = sub_192228B30();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v26;
      *(v17 + 8) = v25;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_19213CBD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A50, &qword_192236260);
  v39 = a2;
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_192228AD0();
      sub_1922279B0();
      result = sub_192228B30();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_19213CE7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A40, &qword_192236250);
  v37 = a2;
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = *(v23 + 1);
      v38 = *(*(v5 + 56) + v22);
      if ((v37 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_192228AD0();
      MEMORY[0x193B0BA90](v24);
      sub_1922281E0();
      result = sub_192228B30();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v24;
      *(v18 + 8) = v25;
      *(*(v8 + 56) + v17) = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}