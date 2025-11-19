uint64_t sub_1921E9D08()
{
  v0 = sub_192228700();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_1921E9D54(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF21C8, &qword_1922437B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v54 - v6;
  v8 = a1[3];
  v9 = a1[4];
  v64 = a1;
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = sub_1921EA4FC();
  sub_192228B70();
  if (!v1)
  {
    v63 = v4;
    v67 = 1;
    sub_192044634();
    v12 = v7;
    sub_1922287C0();
    v13 = v65;
    v67 = 0;
    sub_192047340();
    sub_1922287C0();
    v61 = v3;
    v62 = v12;
    v16 = v65;
    v15 = v66;
    sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
    v17 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    v59 = v16;
    v60 = v15;
    v18 = sub_192228010();
    if (v18)
    {
      v24 = v18;
      v67 = 2;
      v25 = v61;
      sub_1922287C0();
      v33 = v65;
      v34 = v66;
      v35 = sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
      v57 = v34;
      v58 = v33;
      v36 = v35;
      v37 = sub_192228010();
      if (v37)
      {
        v65 = v13;
        v43 = v37;
        v44 = objc_allocWithZone(type metadata accessor for TimelineRequest());
        v45 = v43;
        v10 = sub_192077DB8(v24, &v65, v45);

        sub_192039140(v58, v57);
        sub_192039140(v59, v60);

        (*(v63 + 8))(v62, v25);
        __swift_destroy_boxed_opaque_existential_1(v64);
        return v10;
      }

      v46 = v24;
      v55 = v13;
      v47 = sub_1922284A0();
      v48 = swift_allocError();
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v50 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_19222B480;
      *(v52 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v52 + 64) = v11;
      *(v52 + 32) = 2;
      sub_192228480();
      v53 = *MEMORY[0x1E69E6B08];
      (*(*(v47 - 8) + 104))(v50, v53, v47);
      v56 = v48;
      swift_willThrow();
      v38 = sub_1922284A0();
      swift_allocError();
      v10 = v39;
      v54[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v10 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_19222B480;
      *(v40 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v40 + 64) = v11;
      *(v40 + 32) = 2;
      v41 = v56;
      v42 = v56;
      sub_192228480();
      (*(*(v38 - 8) + 104))(v10, v53, v38);
      swift_willThrow();
      sub_192039140(v58, v57);
      sub_192039140(v59, v60);

      v23 = v41;
    }

    else
    {
      v26 = sub_1922284A0();
      v27 = swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v29 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_19222B480;
      *(v31 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v31 + 64) = v11;
      *(v31 + 32) = 0;
      sub_192228480();
      v32 = *MEMORY[0x1E69E6B08];
      (*(*(v26 - 8) + 104))(v29);
      swift_willThrow();
      v19 = sub_1922284A0();
      swift_allocError();
      v10 = v20;
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v10 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_19222B480;
      *(v21 + 56) = &type metadata for TimelineRequest.CodingKeys;
      *(v21 + 64) = v11;
      *(v21 + 32) = 0;
      v22 = v27;
      sub_192228480();
      (*(*(v19 - 8) + 104))(v10, v32, v19);
      swift_willThrow();
      sub_192039140(v59, v60);

      v23 = v27;
    }

    (*(v63 + 8))(v62, v61);
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  return v10;
}

unint64_t sub_1921EA4FC()
{
  result = qword_1EADF21A0;
  if (!qword_1EADF21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21A0);
  }

  return result;
}

unint64_t sub_1921EA65C()
{
  result = qword_1EADF21B0;
  if (!qword_1EADF21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21B0);
  }

  return result;
}

unint64_t sub_1921EA6B4()
{
  result = qword_1EADF21B8;
  if (!qword_1EADF21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21B8);
  }

  return result;
}

unint64_t sub_1921EA70C()
{
  result = qword_1EADF21C0;
  if (!qword_1EADF21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF21C0);
  }

  return result;
}

uint64_t sub_1921EA760()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921EA7D8()
{
  *v0;
  sub_1922279B0();
}

uint64_t sub_1921EA83C()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921EA8B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1802658148;
  }

  else
  {
    v4 = 0x746867696CLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1802658148;
  }

  else
  {
    v6 = 0x746867696CLL;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_1921EA94C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (*a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (v2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1921EA9FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1802658148;
  }

  else
  {
    v4 = 0x746867696CLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1802658148;
  }

  else
  {
    v6 = 0x746867696CLL;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1921EAAAC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (*a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (v2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1921EAB48(uint64_t a1, uint64_t a2)
{
  v5 = sub_192227710();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_192227790();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 16);
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1921ECA10;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_40;
  v15 = _Block_copy(aBlock);

  sub_192227740();
  v19 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_1921EAE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_192030418();
  if (result)
  {
    v5 = result;
    if (a3)
    {
      v6 = sub_192227930();
    }

    else
    {
      v6 = 0;
    }

    [v5 reloadAllControlsForBundleIdentifier_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1921EAEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_192227790();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v22 - v16;
  v22[1] = *(a2 + 16);
  (*(v13 + 16))(v22 - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v13 + 32))(v19 + v18, v17, v12);
  aBlock[4] = sub_1921EC754;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_8;
  v20 = _Block_copy(aBlock);

  sub_192227740();
  v26 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v11, v7, v20);
  _Block_release(v20);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

uint64_t sub_1921EB238(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = sub_192030418();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 16))(v7, a2, v3);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    (*(v4 + 32))(v11 + v10, v7, v3);
    v28 = sub_1921EC7C4;
    v29 = v11;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v26 = sub_1921EC514;
    v27 = &block_descriptor_14;
    v12 = _Block_copy(&aBlock);

    [v9 currentConfigurations_];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = *MEMORY[0x1E69941E8];
    v15 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v16 = *MEMORY[0x1E696A278];
    v17 = sub_192227960();
    v19 = v18;
    v27 = MEMORY[0x1E69E6158];
    *&aBlock = 0xD000000000000014;
    *(&aBlock + 1) = 0x800000019224B870;
    sub_19203BEDC(&aBlock, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v15;
    sub_19213DB28(v31, v17, v19, isUniquelyReferenced_nonNull_native);

    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v22 = sub_192227830();

    v23 = [v21 initWithDomain:v14 code:1102 userInfo:v22];

    *&aBlock = v23;
    return sub_192227C80();
  }
}

void sub_1921EB518(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
LABEL_3:
      v29 = a3;
      v17 = a3;
      sub_192227C80();
      return;
    }
  }

  else
  {
    v28 = v9;
    v18 = sub_192224F30();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_1920367C8(a1, a2);
    sub_192224F20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2260, &qword_192243A40);
    sub_1921EC858();
    sub_192224F00();

    v21 = v29;
    if (v29)
    {
      v22 = sub_192227CF0();
      (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
      v23 = v28;
      (*(v28 + 16))(v12, a4, v8);
      v24 = (*(v23 + 80) + 40) & ~*(v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      *(v25 + 4) = v21;
      (*(v23 + 32))(&v25[v24], v12, v8);
      v26 = v21;
      sub_19211CA04(0, 0, v16, &unk_192243A50, v25);
      sub_192046ED4(a1, a2);

      return;
    }

    sub_192046ED4(a1, a2);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_192227C90();
}

uint64_t sub_1921EB830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  *(v5 + 264) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1921EB850, 0, 0);
}

uint64_t sub_1921EB850(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 256) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls);
  *(v2 + 272) = v3;
  if (v3 >> 62)
  {
    v4 = sub_192228340();
    *(v2 + 280) = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_29:
    v6 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v39 = *(v2 + 264);
    *(v2 + 248) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
    sub_192227C90();
    v40 = *(v2 + 8);

    return v40();
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v2 + 280) = v4;
  if (!v4)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEDB29B0](v4, a2);
  }

  v5 = 0;
  *(v2 + 288) = *(*(v2 + 256) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v2 + 296) = v5;
    *(v2 + 304) = v6;
    v7 = *(v2 + 272);
    v8 = (v7 & 0xC000000000000001) != 0 ? MEMORY[0x193B0B410]() : *(v7 + 8 * v5 + 32);
    v9 = v8;
    *(v2 + 312) = v8;
    if (*(*(v2 + 288) + 16) && (v10 = sub_1920B7194(v8), (v11 & 1) != 0))
    {
      v12 = (*(*(v2 + 288) + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      sub_1920367C8(*v12, v13);
    }

    else
    {
      v14 = 0;
      v13 = 0xF000000000000000;
    }

    *(v2 + 320) = v14;
    *(v2 + 328) = v13;
    v15 = v9;
    sub_19206A874(v14, v13);
    *(v2 + 32) = xmmword_19222A790;
    *(v2 + 48) = v15;
    v16 = v15;
    v17 = [v16 kind];
    v18 = sub_192227960();
    v20 = v19;

    *(v2 + 16) = v18;
    *(v2 + 24) = v20;
    sub_192046ED4(*(v2 + 32), *(v2 + 40));
    *(v2 + 32) = v14;
    *(v2 + 40) = v13;
    v21 = [v16 intentReference];

    if (v21)
    {
      v22 = [v21 intent];
      *(v2 + 336) = v22;

      if (v22)
      {
        break;
      }
    }

LABEL_16:
    *(v2 + 88) = 0;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    v24 = *(v2 + 304);
    sub_1920B2CF4(v2 + 16, v2 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v2 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1920C301C(0, *(v6 + 2) + 1, 1, *(v2 + 304));
    }

    v27 = *(v6 + 2);
    v26 = *(v6 + 3);
    if (v27 >= v26 >> 1)
    {
      v6 = sub_1920C301C((v26 > 1), v27 + 1, 1, v6);
    }

    v28 = *(v2 + 312);
    v29 = *(v2 + 280);
    v30 = *(v2 + 296) + 1;
    sub_192046ED4(*(v2 + 320), *(v2 + 328));

    sub_1920B2D50(v2 + 16);
    *(v6 + 2) = v27 + 1;
    v31 = &v6[80 * v27];
    *(v31 + 2) = *(v2 + 96);
    v32 = *(v2 + 160);
    v34 = *(v2 + 112);
    v33 = *(v2 + 128);
    *(v31 + 5) = *(v2 + 144);
    *(v31 + 6) = v32;
    *(v31 + 3) = v34;
    *(v31 + 4) = v33;
    if (v30 == v29)
    {
      goto LABEL_30;
    }

    v5 = *(v2 + 296) + 1;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

    goto LABEL_16;
  }

  v35 = [v23 linkAction];
  if (v35)
  {
    v36 = v35;
    *(v2 + 240) = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
    *(v2 + 216) = v36;
  }

  else
  {
    *(v2 + 232) = 0u;
    *(v2 + 216) = 0u;
  }

  v37 = *(MEMORY[0x1E6959D08] + 4);
  v38 = swift_task_alloc();
  *(v2 + 344) = v38;
  *v38 = v2;
  v38[1] = sub_1921EBC68;
  v4 = v2 + 176;
  a2 = v2 + 216;

  return MEMORY[0x1EEDB29B0](v4, a2);
}

uint64_t sub_1921EBC68()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_1921EC14C;
  }

  else
  {
    sub_192030F04(v2 + 216);
    v5 = sub_1921EBD94;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921EBD94()
{
  v1 = *(v0 + 192);
  *(v0 + 56) = *(v0 + 176);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 208);
  while (1)
  {
    v2 = *(v0 + 304);
    sub_1920B2CF4(v0 + 16, v0 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1920C301C(0, *(v4 + 2) + 1, 1, *(v0 + 304));
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1920C301C((v5 > 1), v6 + 1, 1, v4);
    }

    v7 = *(v0 + 312);
    v8 = *(v0 + 280);
    v9 = *(v0 + 296) + 1;
    sub_192046ED4(*(v0 + 320), *(v0 + 328));

    sub_1920B2D50(v0 + 16);
    *(v4 + 2) = v6 + 1;
    v10 = &v4[80 * v6];
    *(v10 + 2) = *(v0 + 96);
    v11 = *(v0 + 160);
    v13 = *(v0 + 112);
    v12 = *(v0 + 128);
    *(v10 + 5) = *(v0 + 144);
    *(v10 + 6) = v11;
    *(v10 + 3) = v13;
    *(v10 + 4) = v12;
    if (v9 == v8)
    {
      break;
    }

    v14 = *(v0 + 296) + 1;
    *(v0 + 296) = v14;
    *(v0 + 304) = v4;
    v15 = *(v0 + 272);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x193B0B410]();
    }

    else
    {
      v16 = *(v15 + 8 * v14 + 32);
    }

    v17 = v16;
    *(v0 + 312) = v16;
    if (*(*(v0 + 288) + 16) && (v18 = sub_1920B7194(v16), (v19 & 1) != 0))
    {
      v20 = (*(*(v0 + 288) + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      sub_1920367C8(*v20, v21);
    }

    else
    {
      v22 = 0;
      v21 = 0xF000000000000000;
    }

    *(v0 + 320) = v22;
    *(v0 + 328) = v21;
    v23 = v17;
    sub_19206A874(v22, v21);
    *(v0 + 32) = xmmword_19222A790;
    *(v0 + 48) = v23;
    v24 = v23;
    v25 = [v24 kind];
    v26 = sub_192227960();
    v28 = v27;

    *(v0 + 16) = v26;
    *(v0 + 24) = v28;
    sub_192046ED4(*(v0 + 32), *(v0 + 40));
    *(v0 + 32) = v22;
    *(v0 + 40) = v21;
    v29 = [v24 intentReference];

    if (v29)
    {
      v30 = [v29 intent];
      *(v0 + 336) = v30;

      if (v30)
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v35 = [v31 linkAction];
          if (v35)
          {
            v36 = v35;
            *(v0 + 240) = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
            *(v0 + 216) = v36;
          }

          else
          {
            *(v0 + 232) = 0u;
            *(v0 + 216) = 0u;
          }

          v37 = *(MEMORY[0x1E6959D08] + 4);
          v38 = swift_task_alloc();
          *(v0 + 344) = v38;
          *v38 = v0;
          v38[1] = sub_1921EBC68;

          return MEMORY[0x1EEDB29B0](v0 + 176, v0 + 216);
        }
      }
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  v32 = *(v0 + 264);
  *(v0 + 248) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  sub_192227C90();
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1921EC14C()
{
  sub_192030F04(v0 + 216);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  while (1)
  {
    v1 = *(v0 + 304);
    sub_1920B2CF4(v0 + 16, v0 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 304);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1920C301C(0, *(v3 + 2) + 1, 1, *(v0 + 304));
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1920C301C((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = *(v0 + 312);
    v7 = *(v0 + 280);
    v8 = *(v0 + 296) + 1;
    sub_192046ED4(*(v0 + 320), *(v0 + 328));

    sub_1920B2D50(v0 + 16);
    *(v3 + 2) = v5 + 1;
    v9 = &v3[80 * v5];
    *(v9 + 2) = *(v0 + 96);
    v10 = *(v0 + 128);
    v11 = *(v0 + 160);
    v12 = *(v0 + 112);
    *(v9 + 5) = *(v0 + 144);
    *(v9 + 6) = v11;
    *(v9 + 3) = v12;
    *(v9 + 4) = v10;
    if (v8 == v7)
    {
      break;
    }

    v13 = *(v0 + 296) + 1;
    *(v0 + 296) = v13;
    *(v0 + 304) = v3;
    v14 = *(v0 + 272);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x193B0B410]();
    }

    else
    {
      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v0 + 312) = v15;
    if (*(*(v0 + 288) + 16) && (v17 = sub_1920B7194(v15), (v18 & 1) != 0))
    {
      v19 = (*(*(v0 + 288) + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      sub_1920367C8(*v19, v21);
    }

    else
    {
      v20 = 0;
      v21 = 0xF000000000000000;
    }

    *(v0 + 320) = v20;
    *(v0 + 328) = v21;
    v22 = v16;
    sub_19206A874(v20, v21);
    *(v0 + 32) = xmmword_19222A790;
    *(v0 + 48) = v22;
    v23 = v22;
    v24 = [v23 kind];
    v25 = sub_192227960();
    v27 = v26;

    *(v0 + 16) = v25;
    *(v0 + 24) = v27;
    sub_192046ED4(*(v0 + 32), *(v0 + 40));
    *(v0 + 32) = v20;
    *(v0 + 40) = v21;
    v28 = [v23 intentReference];

    if (v28)
    {
      v29 = [v28 intent];
      *(v0 + 336) = v29;

      if (v29)
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v34 = [v30 linkAction];
          if (v34)
          {
            v35 = v34;
            *(v0 + 240) = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
            *(v0 + 216) = v35;
          }

          else
          {
            *(v0 + 232) = 0u;
            *(v0 + 216) = 0u;
          }

          v36 = *(MEMORY[0x1E6959D08] + 4);
          v37 = swift_task_alloc();
          *(v0 + 344) = v37;
          *v37 = v0;
          v37[1] = sub_1921EBC68;

          return MEMORY[0x1EEDB29B0](v0 + 176, v0 + 216);
        }
      }
    }

    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  v31 = *(v0 + 264);
  *(v0 + 248) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38);
  sub_192227C90();
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1921EC514(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_192225080();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_192046ED4(v4, v9);
}

void sub_1921EC5C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1921EC664()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2250, &qword_192243A30);
  *v2 = v0;
  v2[1] = sub_192123A24;
  v4 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000017, 0x800000019224B1E0, sub_1921EC74C, v4, v3);
}

uint64_t sub_1921EC754()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1921EB238(v2, v3);
}

void sub_1921EC7C4(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1921EB518(a1, a2, a3, v8);
}

unint64_t sub_1921EC858()
{
  result = qword_1EADF2268;
  if (!qword_1EADF2268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2260, &qword_192243A40);
    sub_19202A838(&qword_1EADF2270, type metadata accessor for ControlsConfigurationXPCContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2268);
  }

  return result;
}

uint64_t sub_1921EC90C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2258, &qword_192243A38) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920A59A8;

  return sub_1921EB830(a1, v6, v7, v8, v1 + v5);
}

__n128 sub_1921ECA38@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t sub_1921ECA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v7 = *(*(type metadata accessor for ControlTemplateToggle.Option(0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v10 = type metadata accessor for ExtractedControlMetadata(0);
  v4[33] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v12 = *(a3 + 16);
  v4[35] = v12;
  v13 = *(v12 - 8);
  v4[36] = v13;
  v14 = *(v13 + 64) + 15;
  v4[37] = swift_task_alloc();
  v15 = sub_192225C70();
  v4[38] = v15;
  v16 = *(v15 - 8);
  v4[39] = v16;
  v17 = *(v16 + 64) + 15;
  v4[40] = swift_task_alloc();
  sub_192227CC0();
  v4[41] = sub_192227CB0();
  v19 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921ECCD4, v19, v18);
}

uint64_t sub_1921ECCD4()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 296);
  v70 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v75 = *(v0 + 272);
  v78 = *(v0 + 264);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  v72 = *(v0 + 192);

  v88 = *v7;
  v80 = *(v7 + 8);
  v8 = *(v7 + 17);
  v9 = *(v7 + 18);
  v10 = *(v7 + 16);
  *(v0 + 350) = *(v7 + 32);
  *(v0 + 336) = v9;
  v86 = *(v7 + 40);
  v87 = v8;
  v12 = *(v7 + 64);
  v11 = *(v7 + 72);
  v91 = swift_allocObject();
  *(v91 + 16) = 0;
  v82 = (v91 + 16);
  v12();
  v13 = *(v6 + 32);
  v84 = v10;
  sub_1921E6550(v10 & 1, v5, v13);
  (*(v4 + 8))(v3, v5);
  v14 = *(v7 + 16);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v14;
  v15 = *(v7 + 32);
  v16 = *(v7 + 48);
  v17 = *(v7 + 80);
  *(v0 + 80) = *(v7 + 64);
  *(v0 + 96) = v17;
  *(v0 + 48) = v15;
  *(v0 + 64) = v16;
  swift_getWitnessTable();
  v18 = sub_1920FCC2C();
  v19 = v13;
  *(v0 + 152) = v13;
  *(v0 + 160) = v18;
  swift_getWitnessTable();
  sub_1921E67A4(v2, v72, v70, v75);
  if (*(v75 + *(v78 + 20)) == 1)
  {
    *v82 = 1;
  }

  v20 = *(v0 + 272);
  v21 = *(v0 + 256);
  v22 = v88(*(v0 + 192));
  v73 = v23;
  v76 = v22;
  v89 = v24;
  sub_192226A40();
  v25 = sub_192226A90();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v21, 1, v25);
  v29 = *(v0 + 256);
  if (v28 == 1)
  {
    sub_192033970(*(v0 + 256), &qword_1EADEFEC0, &unk_192231BD0);
    v79 = 0;
    v81 = 0;
  }

  else
  {
    v30 = sub_192226A80();
    (*(v26 + 8))(v29, v25);
    v31 = [v30 string];

    v32 = sub_192227960();
    v79 = v33;
    v81 = v32;
  }

  v34 = *(v0 + 272);
  v35 = *(v0 + 248);
  sub_192226A50();
  v36 = v27(v35, 1, v25);
  v37 = *(v0 + 248);
  if (v36 == 1)
  {
    sub_192033970(*(v0 + 248), &qword_1EADEFEC0, &unk_192231BD0);
    v69 = 0;
    v71 = 0;
  }

  else
  {
    v38 = sub_192226A80();
    (*(v26 + 8))(v37, v25);
    v39 = [v38 string];

    v40 = sub_192227960();
    v69 = v41;
    v71 = v40;
  }

  v65 = *(v0 + 304);
  v67 = *(v0 + 320);
  v42 = *(v0 + 272);
  v43 = *(v0 + 280);
  v63 = v42;
  v64 = *(v0 + 312);
  v44 = *(v0 + 240);
  v61 = *(v0 + 232);
  v62 = *(v0 + 224);
  v45 = *(v0 + 200);
  v46 = *(v0 + 208);
  v47 = *(v0 + 192);
  sub_192226B80();
  v48 = *(v45 + 24);
  v49 = *(v45 + 40);
  LOBYTE(v42) = v89 & 1;
  v90 = 1;
  sub_1921ED324(1, v46, v84 & 1, v47, v44, v91, v76, v73, v61, v42, v43, v48, v19, v49);
  sub_1921ED324(0, v46, v84 & 1, v47, v44, v91, v76, v73, v62, v42, v43, v48, v19, v49);
  sub_192033970(v44, &qword_1EADEF720, &unk_19222E2F0);
  sub_1921EDD48(v63, type metadata accessor for ExtractedControlMetadata);
  (*(v64 + 8))(v67, v65);
  if ((v84 & 1) == 0)
  {
    swift_beginAccess();
    v90 = *v82;
  }

  v66 = *(v0 + 320);
  v68 = *(v0 + 296);
  v74 = *(v0 + 272);
  v77 = *(v0 + 256);
  v50 = *(v0 + 232);
  v83 = *(v0 + 248);
  v85 = *(v0 + 240);
  v51 = *(v0 + 216);
  v52 = *(v0 + 224);
  v53 = *(v0 + 184);
  v54 = sub_192225020();
  v55 = *(*(v54 - 8) + 56);
  v55(v51, 1, 1, v54);
  *(v0 + 136) = *(v0 + 342);
  v56 = type metadata accessor for ControlTemplateToggle(0);
  v57 = v56[8];
  v55(v53 + v57, 1, 1, v54);
  v58 = v56[11];
  *v53 = v81;
  v53[1] = v79;
  v53[2] = v71;
  v53[3] = v69;
  sub_19212F420(v50, v53 + v56[6]);
  sub_19212F420(v52, v53 + v56[7]);
  sub_19202CFFC(v0 + 136, v0 + 168, qword_1EADEF800, &unk_192231C10);
  sub_19204193C(v51, v53 + v57, &qword_1EADEEE10, &unk_19222B630);

  *(v53 + v56[9]) = v90;
  *(v53 + v56[10]) = v87;
  *(v53 + v58) = *(v0 + 136);
  *(v53 + v56[12]) = v86;

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1921ED324@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14)
{
  v110 = a8;
  v109 = a7;
  v89 = a6;
  v88 = a5;
  v96 = a4;
  v94 = a3;
  v108 = a9;
  v100 = a13;
  v95 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v107 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v88 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v93 = &v88 - v27;
  v104 = type metadata accessor for ExtractedControlValueMetadata(0);
  v28 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v92 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a12 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
  v35 = sub_192225C70();
  v91 = *(v35 - 8);
  v36 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v88 - v37;
  v111 = sub_192225C70();
  v101 = *(v111 - 8);
  v39 = *(v101 + 64);
  v40 = MEMORY[0x1EEE9AC00](v111);
  v42 = &v88 - v41;
  v97 = *(a2 + 40);
  v43 = *(a2 + 6);
  v44 = *(a2 + 7);
  v45 = *(a2 + 11);
  v99 = *(a2 + 10);
  v98 = v45;
  v106 = a1;
  v43(a1, v40);
  swift_getKeyPath();
  LOBYTE(v115) = 1;
  v90 = a12;
  sub_192227040();

  (*(v30 + 8))(v34, a12);
  v46 = sub_1920FCBC8();
  v121 = a14;
  v122 = v46;
  WitnessTable = swift_getWitnessTable();
  sub_1921E6550(v94, v35, WitnessTable);
  (*(v91 + 8))(v38, v35);
  v48 = a2[3];
  v117 = a2[2];
  v118 = v48;
  v49 = a2[5];
  v119 = a2[4];
  v120 = v49;
  v50 = *a2;
  v51 = a2[1];
  v52 = v92;
  v115 = v50;
  v116 = v51;
  v114[0] = v95;
  v114[1] = v90;
  v114[2] = v100;
  v114[3] = a14;
  type metadata accessor for ControlWidgetToggleParser();
  swift_getWitnessTable();
  v53 = sub_1920FCC2C();
  v112 = WitnessTable;
  v113 = v53;
  v54 = v93;
  v55 = v111;
  swift_getWitnessTable();
  v100 = v42;
  sub_1921E6584(v42, v96, v55, v52);
  sub_192226A40();
  v56 = sub_192226A90();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v54, 1, v56) == 1)
  {
    sub_192033970(v54, &qword_1EADEFEC0, &unk_192231BD0);
    v96 = 0;
    v95 = 0;
  }

  else
  {
    v58 = sub_192226A80();
    (*(v57 + 8))(v54, v56);
    v59 = [v58 string];

    v96 = sub_192227960();
    v95 = v60;
  }

  v61 = v102;
  sub_192226B80();
  v62 = sub_192226B70();
  v63 = *(v62 - 8);
  v64 = *(v63 + 48);
  v65 = v64(v61, 1, v62);
  v66 = v107;
  v67 = v105;
  v68 = v104;
  v69 = v103;
  if (v65 == 1)
  {
    sub_19202CFFC(v88, v105, &qword_1EADEF720, &unk_19222E2F0);
    if (v64(v61, 1, v62) != 1)
    {
      sub_192033970(v61, &qword_1EADEF720, &unk_19222E2F0);
    }
  }

  else
  {
    (*(v63 + 32))(v105, v61, v62);
    (*(v63 + 56))(v67, 0, 1, v62);
  }

  if (*(v52 + *(v68 + 24)))
  {
    v70 = v89;
    swift_beginAccess();
    *(v70 + 16) = 1;
  }

  if (v97)
  {
    v71 = 1;
  }

  else
  {
    sub_19202CFFC(v67, v69, &qword_1EADEF720, &unk_19222E2F0);
    if (v64(v69, 1, v62) == 1)
    {
      sub_192033970(v69, &qword_1EADEF720, &unk_19222E2F0);
      v71 = 0;
    }

    else
    {
      v71 = sub_192226B60();
      (*(v63 + 8))(v69, v62);
    }
  }

  LODWORD(v103) = a10;
  v99(v114, v106 & 1);
  (*(v101 + 8))(v100, v111);
  v111 = v114[0];
  if (v71)
  {
    sub_1920FD8E0(v67, v66);
  }

  else
  {
    sub_192033970(v67, &qword_1EADEF720, &unk_19222E2F0);
    (*(v63 + 56))(v66, 1, 1, v62);
  }

  v72 = v66;
  v73 = (v52 + *(v68 + 20));
  v74 = v52;
  v76 = *v73;
  v75 = v73[1];
  v78 = v73[2];
  v77 = v73[3];

  sub_1921EDD48(v74, type metadata accessor for ExtractedControlValueMetadata);
  v79 = type metadata accessor for ControlTemplateToggle.Option(0);
  v80 = v79[6];
  v81 = v108;
  (*(v63 + 56))(v108 + v80, 1, 1, v62);
  v82 = v81 + v79[7];
  v83 = (v81 + v79[8]);
  v84 = (v81 + v79[9]);
  v85 = v95;
  *v81 = v96;
  v81[1] = v85;
  v81[2] = v111;
  result = sub_19204193C(v72, v81 + v80, &qword_1EADEF720, &unk_19222E2F0);
  v87 = v110;
  *v82 = v109;
  *(v82 + 1) = v87;
  v82[16] = v103 & 1;
  *v83 = v76;
  v83[1] = v75;
  *v84 = v78;
  v84[1] = v77;
  return result;
}

uint64_t sub_1921EDD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1921EDDA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EDDE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1921EDE2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1921EDE84@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 6);
  *a1 = sub_1920EF8DC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 41) = v2;
  *(a1 + 48) = v3;
  v5 = *(v1 + 2);
  *(a1 + 56) = *(v1 + 1);
  *(a1 + 72) = v5;
  *(a1 + 88) = v4;
}

__n128 sub_1921EDF18@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 17);
  v11 = *(a1 + 40);
  *a9 = *a1;
  *(a9 + 16) = v9 & 1;
  *(a9 + 17) = v10 & 1;
  result = *(a1 + 24);
  *(a9 + 24) = result;
  *(a9 + 40) = v11 & 1;
  *(a9 + 41) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

uint64_t ControlWidgetToggle.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v2 + 6);
  *&v24[7] = 0;
  *&v24[3] = 0;
  v25 = 0;
  v16 = *(v2 + 1);

  v15 = *(v2 + 2);

  *&v26 = sub_1920EF8DC;
  *(&v26 + 1) = 0;
  *v27 = 0;
  *&v27[2] = *v24;
  *&v27[17] = 0;
  v27[25] = v5;
  *&v28[8] = v16;
  *&v28[24] = v15;
  *v28 = v6;
  *&v28[40] = v7;
  v8 = *(a1 + 40);
  v29 = *(a1 + 16);
  v30 = v8;
  v9 = type metadata accessor for ControlWidgetToggleTemplateProvider();
  swift_getWitnessTable();
  sub_192145D24(&v26, v9, &v29);
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v17 = v29;
  v18 = v30;
  v10 = type metadata accessor for TemplateDescriptorPreference();
  swift_getWitnessTable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v23, &v17, v10);
  *&v27[16] = v19;
  *v28 = v20;
  *&v28[16] = v21;
  *&v28[32] = v22;
  v26 = v17;
  *v27 = v18;
  v13 = *(v11 + 8);
  v13(&v26, v10);
  v19 = v23[2];
  v20 = v23[3];
  v21 = v23[4];
  v22 = v23[5];
  v17 = v23[0];
  v18 = v23[1];
  v12(a2, &v17, v10);
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v29 = v17;
  v30 = v18;
  return (v13)(&v29, v10);
}

uint64_t sub_1921EE1FC(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  return static ControlWidgetToggle._controlType.getter();
}

uint64_t ControlWidgetToggle.init<>(isOn:action:label:valueLabel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  *a9 = a1;
  v17 = *(a10 - 8);
  v18 = *(v17 + 64);
  v19 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  *(v20 + 32) = a10;
  *(v20 + 40) = a11;
  *(v20 + 56) = a12;
  result = (*(v17 + 32))(v20 + v19, a2, a10);
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v20;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6;
  return result;
}

uint64_t sub_1921EE344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X7>, void *a4@<X8>)
{
  v6 = a1;
  v8 = *(*(a2 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v15 = v6;
  return ControlAction.init<A, B>(_:value:)(v11, &v15, MEMORY[0x1E69E6370], a2, a3, a4);
}

uint64_t sub_1921EE430@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[6];
  v7 = *(*(v2[4] - 8) + 80);
  return sub_1921EE344(a1, v2[4], v2[7], a2);
}

uint64_t ControlWidgetToggle.init<>(isOn:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a8;
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = sub_1921EE614();
  v19 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a5;
  *(v20 + 3) = &type metadata for ControlWidgetToggleDefaultLabel;
  *(v20 + 4) = a6;
  *(v20 + 5) = a7;
  v21 = v24;
  *(v20 + 6) = v18;
  *(v20 + 7) = v21;
  (*(v14 + 32))(&v20[v19], v17, a6);
  result = (*(v14 + 8))(a2, a6);
  *a9 = v25;
  *(a9 + 8) = nullsub_1;
  *(a9 + 16) = 0;
  v23 = v27;
  *(a9 + 24) = v26;
  *(a9 + 32) = v23;
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v20;
  return result;
}

unint64_t sub_1921EE614()
{
  result = qword_1EADF23D0[0];
  if (!qword_1EADF23D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF23D0);
  }

  return result;
}

uint64_t ControlWidgetToggle<>.init<>(_:isOn:action:valueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a7;
  v38 = a8;
  v36 = a5;
  v32 = a4;
  v35 = a10;
  v18 = *(a11 - 8);
  v19 = *(v18 + 64);
  v33 = a12;
  v34 = a13;
  v20 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v22, a11, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  *(v23 + 40) = v32;
  v24 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v25 = swift_allocObject();
  v26 = v35;
  *(v25 + 2) = MEMORY[0x1E6981148];
  *(v25 + 3) = v26;
  v27 = MEMORY[0x1E6981138];
  *(v25 + 4) = a11;
  *(v25 + 5) = v27;
  v28 = v34;
  *(v25 + 6) = v33;
  *(v25 + 7) = v28;
  (*(v18 + 32))(&v25[v24], v21, a11);
  result = (*(v18 + 8))(a6, a11);
  *a9 = v36;
  v30 = v38;
  *(a9 + 8) = v37;
  *(a9 + 16) = v30;
  *(a9 + 24) = sub_1921D1100;
  *(a9 + 32) = v23;
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v25;
  return result;
}

uint64_t ControlWidgetToggle<>.init<A>(_:isOn:action:valueLabel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a4;
  v44 = a5;
  v39 = a1;
  v40 = a3;
  v42 = a2;
  v41 = a12;
  v17 = *(a8 - 8);
  v18 = *(v17 + 64);
  v37 = a11;
  v45 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v38 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24);
  (*(v17 + 16))(v19, a1, a8);
  v25 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = a6;
  *(v26 + 3) = a7;
  v27 = a8;
  v36 = a8;
  v28 = v45;
  *(v26 + 4) = a8;
  *(v26 + 5) = v28;
  v29 = v37;
  v30 = v41;
  *(v26 + 6) = v37;
  *(v26 + 7) = v30;
  (*(v17 + 32))(&v26[v25], v19, v27);
  v31 = (*(v21 + 80) + 64) & ~*(v21 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = MEMORY[0x1E6981148];
  *(v32 + 3) = a6;
  v33 = MEMORY[0x1E6981138];
  *(v32 + 4) = a7;
  *(v32 + 5) = v33;
  *(v32 + 6) = v45;
  *(v32 + 7) = v29;
  (*(v21 + 32))(&v32[v31], v38, a7);
  (*(v21 + 8))(v40, a7);
  result = (*(v17 + 8))(v39, v36);
  *a9 = v42;
  v35 = v44;
  *(a9 + 8) = v43;
  *(a9 + 16) = v35;
  *(a9 + 24) = sub_1921EEBE4;
  *(a9 + 32) = v26;
  *(a9 + 40) = sub_1921EE430;
  *(a9 + 48) = v32;
  return result;
}

uint64_t sub_1921EEB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_192226FD0();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_1921EEBE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_1921EEB08(v1 + ((*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80)), v1[4], a1);
}

uint64_t sub_1921EEC28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1921EEC90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EECCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1921EED14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1921EED70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EEDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  sub_192227CC0();
  v4[34] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[35] = v6;
  v4[36] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1921EEE68, v6, v5);
}

uint64_t sub_1921EEE68()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = sub_1921ECA38(v2, (v0 + 16));
  (*(*(v1 - 1) + 16))(v0 + 112, v2, v1, v7);
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  *(v0 + 224) = v5;
  *(v0 + 232) = v6;
  v9 = type metadata accessor for ControlWidgetToggleParser();
  *(v0 + 304) = v9;
  *v8 = v0;
  v8[1] = sub_1921EEF8C;
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);

  return sub_1921ECA54(v10, v11, v9);
}

uint64_t sub_1921EEF8C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[36];
    v6 = sub_1921EF134;
  }

  else
  {
    (*(*(v2[38] - 8) + 8))(v2 + 2);
    v4 = v2[35];
    v5 = v2[36];
    v6 = sub_1921EF0D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1921EF0D0()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1921EF134()
{
  v1 = v0[34];
  (*(*(v0[38] - 8) + 8))(v0 + 2);

  v2 = v0[1];
  v3 = v0[39];

  return v2();
}

uint64_t sub_1921EF1CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 sub_1921EF228(uint64_t a1)
{
  v3 = *(v1 + 8);

  v4 = *(v1 + 32);

  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  result = *(a1 + 25);
  *(v1 + 25) = result;
  return result;
}

uint64_t sub_1921EF268()
{
  v2 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v2;
  v3 = v0[5];
  *(v1 + 80) = v0[4];
  *(v1 + 96) = v3;
  v4 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v4;
  v5 = swift_task_alloc();
  *(v1 + 112) = v5;
  *v5 = v1;
  v5[1] = sub_1921EF310;

  return sub_1921EEDAC();
}

uint64_t sub_1921EF310(uint64_t a1)
{
  v4 = *(*v2 + 112);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1921EF410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v8;
  v9 = v3[5];
  *(v4 + 80) = v3[4];
  *(v4 + 96) = v9;
  v10 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_1921EF4DC;

  return sub_1921EEDCC(a1, a2, a3);
}

uint64_t sub_1921EF4DC()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t IntentRecommendation.init<A>(intent:description:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v23 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  *a4 = v11;
  (*(v7 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = a1;
  v13 = sub_192226FD0();
  v15 = v14;
  v17 = v16;
  v18 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0);
  v20 = v19;
  sub_19207A338(v13, v15, v17 & 1);

  result = (*(v7 + 8))(v23, a3);
  a4[1] = v18;
  a4[2] = v20;
  return result;
}

uint64_t IntentRecommendation.init(intent:description:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = a1;
  v10 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0);
  v12 = v11;
  sub_19207A338(a2, a3, a4 & 1);

  a5[1] = v10;
  a5[2] = v12;
  return result;
}

uint64_t sub_1921EF7F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1920D0604((v0 + 5));
}

uint64_t IntentRecommendation.init(intent:description:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  v4 = sub_192226FC0();
  v6 = v5;
  v8 = v7;
  v9 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0);
  v11 = v10;

  sub_19207A338(v4, v6, v8 & 1);

  a2[1] = v9;
  a2[2] = v11;
  return result;
}

uint64_t sub_1921EF8F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1921EF944()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EF9AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921EFA00()
{
  v1 = *v0;
  v2 = (*v0 + 88);
  v3 = (*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 80);
  v6 = v0 + *(*v0 + 120);
  v7 = (*(*(v1 + 96) + 32))(*(v1 + 80), *(v1 + 96));
  *&v8 = v5;
  *(&v8 + 1) = *v2;
  v17 = v7;
  *&v9 = v4;
  *(&v9 + 1) = *v3;
  v16[1] = v8;
  v16[2] = v9;
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentRecommendation();
  v10 = sub_192227C40();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7F8, &unk_19222E9E0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_19204301C(sub_1921F5BEC, v16, v10, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  return v14;
}

uint64_t sub_1921EFBA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v15 = *(a1 + 8);
  *a2 = *a1;
  sub_1920D89F4();
  v5 = v3;

  v6 = sub_192226FD0();
  v8 = v7;
  v10 = v9;
  v11 = sub_192079D80(0xD000000000000014, 0x8000000192243EA0);
  v13 = v12;
  sub_19207A338(v6, v8, v10 & 1);

  a2[1] = v11;
  a2[2] = v13;
  return result;
}

uint64_t sub_1921EFC94(void *a1, id *a2)
{
  v3 = v2;
  v129 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v143 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v145 = &v122 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v122 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v146 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v122 - v20;
  v21 = type metadata accessor for ViewableTimelineEntry();
  v137 = *(v21 - 8);
  v140 = v21 - 8;
  v150 = v137;
  v22 = v137[8];
  MEMORY[0x1EEE9AC00](v21);
  v141 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v142 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v134 = &v122 - v27;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v28 = *(*(v149 - 8) + 64);
  MEMORY[0x1EEE9AC00](v149);
  v148 = (&v122 - v29);
  v144 = sub_192225150();
  v147 = *(v144 - 8);
  v30 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v139 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for BundleStub();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v138 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for TimelineReloadPolicy();
  v35 = *(*(v136 - 1) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v128 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = *(v5 + 88);
  v127 = *(v135 - 8);
  v37 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v126 = &v122 - v39;
  v40 = v5;
  v41 = *(v5 + 96);
  v132 = v40;
  v42 = *(v40 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  v43 = *(v124 + 64);
  v44 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v122 - v45;
  v47 = v2 + *(v40 + 120);
  (*(v41 + 40))(a2, v42, v41, v44);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v49 = *(v150 + 80);
  v50 = (v49 + 32) & ~v49;
  v140 = v137[9];
  v130 = v49;
  v131 = v48;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_19222B480;
  v52 = v3 + *(*v3 + 128);
  v53 = *v52;
  v54 = *(v52 + 1);
  v55 = v126;
  v123 = v46;
  v53(v46);
  v56 = *(v132 + 104);
  v132 = v50;
  v57 = v135;
  sub_19221A9D4(v55, v135, v56);
  (*(v127 + 8))(v55, v57);
  v58 = qword_1ED74B558;
  v126 = *a2;
  if (v58 != -1)
  {
LABEL_50:
    swift_once();
  }

  v59 = __swift_project_value_buffer(v136, qword_1ED74B570);
  sub_192055544(v59, v128, type metadata accessor for TimelineReloadPolicy);
  v60 = type metadata accessor for WidgetViewCollection();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  v63 = swift_allocObject();
  v64 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v65 = sub_192224E00();
  (*(*(v65 - 8) + 56))(v63 + v64, 1, 1, v65);
  v66 = [v129 extensionIdentity];
  v67 = v138;
  BundleStub.init(_:)(v66, v138);
  sub_1920E07FC(v67, v63 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v68 = v139;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v69 = *(v147 + 32);
  v127 = v63;
  v69(v63 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v68, v144);
  v151 = v51;

  sub_19209B0C4(&v151);

  v70 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v70;
  *(inited + 24) = 0;
  v72 = v132;
  v137 = MEMORY[0x1E69E7CC0];
  v136 = (MEMORY[0x1E69E7CC0] + v132);
  v74 = v150 + 7;
  v73 = v150[7];
  v75 = v148;
  v147 = *(v149 + 32);
  v149 = v73;
  v73(v148 + v147, 1, 1, v21);
  *v75 = inited;
  v75[1] = sub_1920DA3A8;
  v75[2] = 0;
  v144 = v70;
  v138 = v70 + v72;
  v139 = inited;
  v150 = v74;
  v51 = (v74 - 1);

  v135 = 0;
  v76 = 0;
  v77 = v143;
  while (2)
  {
    (v149)(v18, 1, 1, v21);
    while (1)
    {
      v78 = *(v144 + 16);
      if (v76 == v78)
      {
        v79 = 1;
        v81 = v145;
        v80 = v146;
      }

      else
      {
        v81 = v145;
        v80 = v146;
        if (v76 >= v78)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(v138 + v76 * v140, v146, type metadata accessor for ViewableTimelineEntry);
        v79 = 0;
        *(v139 + 3) = ++v76;
      }

      (v149)(v80, v79, 1, v21);
      v82 = &unk_19222A7D0;
      sub_192033970(v18, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v80, v18);
      sub_1920D86C4(v18, v13);
      v83 = *v51;
      if ((*v51)(v13, 1, v21) == 1)
      {
        v86 = v13;
        goto LABEL_16;
      }

      sub_192033970(v13, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D86C4(v18, v81);
      if ((v83)(v81, 1, v21) == 1)
      {
        v86 = v81;
        goto LABEL_16;
      }

      v82 = v142;
      sub_1920E07FC(v81, v142, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v148 + v147, v77);
      if ((v83)(v77, 1, v21) == 1)
      {
        break;
      }

      v84 = v141;
      sub_1920E07FC(v77, v141, type metadata accessor for ViewableTimelineEntry);
      v85 = sub_192225120();
      sub_192046F48(v84, type metadata accessor for ViewableTimelineEntry);
      v77 = v143;
      sub_192046F48(v82, type metadata accessor for ViewableTimelineEntry);
      if ((v85 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v82, type metadata accessor for ViewableTimelineEntry);
    v86 = v77;
LABEL_16:
    sub_192033970(v86, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v18, v148 + v147);
    v87 = v133;
    sub_1920D8654(v18, v133);
    if ((v83)(v87, 1, v21) != 1)
    {
      sub_1920E07FC(v87, v134, type metadata accessor for ViewableTimelineEntry);
      v88 = v140;
      if (v135)
      {
        v89 = v137;
        v90 = v135 - 1;
        if (__OFSUB__(v135, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v91 = v137[3];
      if (((v91 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v92 = v91 & 0xFFFFFFFFFFFFFFFELL;
      if (v92 <= 1)
      {
        v93 = 1;
      }

      else
      {
        v93 = v92;
      }

      v94 = v132;
      v89 = swift_allocObject();
      v95 = _swift_stdlib_malloc_size(v89);
      if (!v88)
      {
        goto LABEL_48;
      }

      if (v95 - v94 == 0x8000000000000000 && v88 == -1)
      {
        goto LABEL_49;
      }

      v97 = v88;
      v98 = (v95 - v94) / v88;
      v89[2] = v93;
      v89[3] = 2 * v98;
      v99 = v89 + v94;
      v100 = v137;
      v101 = v137[3] >> 1;
      v102 = v101 * v97;
      if (!v137[2])
      {
LABEL_39:
        v136 = &v99[v102];
        v103 = (v98 & 0x7FFFFFFFFFFFFFFFLL) - v101;

        v104 = v103;
        v77 = v143;
        v88 = v140;
        v105 = __OFSUB__(v104, 1);
        v90 = v104 - 1;
        if (v105)
        {
          goto LABEL_46;
        }

LABEL_40:
        v135 = v90;
        v106 = v136;
        sub_1920E07FC(v134, v136, type metadata accessor for ViewableTimelineEntry);
        v136 = (v106 + v88);
        v137 = v89;
        continue;
      }

      if (v89 < v137 || v99 >= v137 + v94 + v102)
      {
        v136 = (v137[3] >> 1);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v89 == v137)
        {
LABEL_38:
          v100[2] = 0;
          goto LABEL_39;
        }

        v136 = (v137[3] >> 1);
        swift_arrayInitWithTakeBackToFront();
      }

      v101 = v136;
      v100 = v137;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v148, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v87, &qword_1EADEE9F8, &unk_19222A7D0);
  v107 = v137;
  v108 = v137[3];
  v109 = v129;
  v110 = v128;
  if (v108 < 2)
  {
    goto LABEL_44;
  }

  v111 = v108 >> 1;
  v105 = __OFSUB__(v111, v135);
  v112 = v111 - v135;
  if (!v105)
  {
    v137[2] = v112;
LABEL_44:
    v113 = v139;
    v114 = v107;
    swift_setDeallocating();
    v115 = *(v113 + 2);

    v116 = v127;
    *(v127 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v114;
    *(v116 + 16) = v126;
    *(v116 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v109;
    sub_192055544(v110, v116 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v113) = byte_1ED74B5B8;
    v117 = v109;
    sub_192046F48(v110, type metadata accessor for TimelineReloadPolicy);
    (*(v124 + 8))(v123, AssociatedTypeWitness);
    *(v116 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v113;
    *(v116 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    return v116;
  }

  __break(1u);

  v119 = v127;
  sub_192046F48(v82 + v127, type metadata accessor for BundleStub);
  sub_192033970(v119 + *(v83 + 1848), &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v147 + 8))(v119 + *v76, &qword_1EADEE9F8);
  v120 = *(*v119 + 48);
  v121 = *(*v119 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1921F0B9C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v53 = a2;
  v9 = *v4;
  v10 = sub_192227710();
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_192227790();
  v56 = *(v58 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TimelineProviderContext();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  *&v18 = MEMORY[0x1EEE9AC00](v15 - 8).n128_u64[0];
  v19 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v20 = [a1 intentReference];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 _typedIntent];

    if (v22)
    {
      v51 = v10;
      v52 = a3;
      v23 = v9[12];
      v24 = v9[10];
      swift_getAssociatedTypeWitness();
      v25 = swift_dynamicCastUnknownClass();
      if (v25)
      {
        v26 = v25;
        sub_19218B088();
        v49 = v23;
        v50 = sub_192228080();
        sub_192055544(v53, &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
        v27 = (*(v16 + 80) + 64) & ~*(v16 + 80);
        v28 = (v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v53 = a4;
        v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        v30[2] = v24;
        v31 = v49;
        v30[3] = v9[11];
        v30[4] = v31;
        v30[5] = v9[13];
        v30[6] = v5;
        v30[7] = v26;
        sub_1920E07FC(v19, v30 + v27, type metadata accessor for TimelineProviderContext);
        v32 = (v30 + v28);
        v33 = v53;
        *v32 = v52;
        v32[1] = v33;
        v34 = v54;
        *(v30 + v29) = v54;
        aBlock[4] = sub_1921F5948;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_19202AB80;
        aBlock[3] = &block_descriptor_9;
        v35 = _Block_copy(aBlock);

        v36 = v22;

        v37 = v34;

        v38 = v55;
        sub_192227740();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1921F59E8(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
        sub_19218B12C();
        v39 = v57;
        v40 = v51;
        sub_1922282F0();
        v41 = v50;
        MEMORY[0x193B0B040](0, v38, v39, v35);
        _Block_release(v35);

        (*(v59 + 8))(v39, v40);
        return (*(v56 + 8))(v38, v58);
      }

      a3 = v52;
    }
  }

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v43 = sub_1922258B0();
  __swift_project_value_buffer(v43, qword_1ED74CCC8);
  v44 = sub_192225890();
  v45 = sub_192227F90();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_19202B8CC(0xD00000000000001ELL, 0x800000019224E970, aBlock);
    _os_log_impl(&dword_192028000, v44, v45, "No intent in %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x193B0C7F0](v47, -1, -1);
    MEMORY[0x193B0C7F0](v46, -1, -1);
  }

  return a3(0);
}

uint64_t sub_1921F1174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = a4;
  v25 = a2;
  v10 = *a1;
  v11 = type metadata accessor for TimelineProviderContext();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v10[15];
  sub_192055544(a3, v14, type metadata accessor for TimelineProviderContext);
  v15 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v10[10];
  v16[2] = v17;
  v16[3] = v10[11];
  v18 = v10[12];
  v16[4] = v18;
  v16[5] = v10[13];
  v16[6] = a1;
  v16[7] = v23;
  v16[8] = a5;
  v16[9] = a6;
  sub_1920E07FC(v14, v16 + v15, type metadata accessor for TimelineProviderContext);
  v19 = *(v18 + 48);

  v20 = a6;
  v19(v25, a3, sub_1921F5A30, v16, v17, v18);
}

uint64_t sub_1921F1388(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v49 = a4;
  v50 = a5;
  v48 = a3;
  v9 = *a2;
  v53 = sub_192227710();
  v56 = *(v53 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192227790();
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TimelineProviderContext();
  v46 = *(v15 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v9;
  v45 = a2;
  v43 = *(v9 + 96);
  v42 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v40 - v20;
  sub_19218B088();
  v47 = sub_192228080();
  (*(v18 + 16))(v21, a1, AssociatedTypeWitness);
  sub_192055544(a6, &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v22 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v46 + 80) + v25 + 8) & ~*(v46 + 80);
  v27 = swift_allocObject();
  v28 = v44;
  v29 = v45;
  *(v27 + 2) = v42;
  *(v27 + 3) = *(v28 + 88);
  *(v27 + 4) = v43;
  *(v27 + 5) = *(v28 + 104);
  (*(v18 + 32))(&v27[v22], v21, AssociatedTypeWitness);
  *&v27[v23] = v29;
  v30 = &v27[v24];
  v31 = v49;
  *v30 = v48;
  *(v30 + 1) = v31;
  v32 = v50;
  *&v27[v25] = v50;
  sub_1920E07FC(v41, &v27[v26], type metadata accessor for TimelineProviderContext);
  aBlock[4] = sub_1921F5AD4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_49;
  v33 = _Block_copy(aBlock);

  v34 = v32;

  v35 = v51;
  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1921F59E8(&qword_1ED74C620, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19218B12C();
  v37 = v52;
  v36 = v53;
  sub_1922282F0();
  v38 = v47;
  MEMORY[0x193B0B040](0, v35, v37, v33);
  _Block_release(v33);

  (*(v56 + 8))(v37, v36);
  return (*(v54 + 8))(v35, v55);
}

uint64_t sub_1921F18C0(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, id *a6)
{
  v143 = a6;
  v134 = a5;
  v127[1] = a4;
  v128 = a3;
  v142 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v147 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v148 = v127 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v127 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v150 = v127 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v127 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v138 = v127 - v22;
  v23 = type metadata accessor for ViewableTimelineEntry();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v146 = v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v127 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v140 = v127 - v31;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v32 = *(*(v151 - 8) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v152 = (v127 - v33);
  v34 = type metadata accessor for BundleStub();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v144 = v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for TimelineReloadPolicy();
  v37 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v133 = v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v7[11];
  v39 = (*(*(v132 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v131 = v127 - v41;
  v153 = sub_192225150();
  v149 = *(v153 - 1);
  v42 = v149[8];
  MEMORY[0x1EEE9AC00](v153);
  v44 = v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
  v46 = *(v24 + 72);
  v154 = v24;
  v47 = *(v24 + 80);
  v48 = (v47 + 32) & ~v47;
  v145 = v46;
  v135 = v47;
  v136 = v45;
  v49 = swift_allocObject();
  v129 = v7;
  *(v49 + 16) = xmmword_19222B480;
  v137 = v48;
  v141 = v49;
  v130 = v49 + v48;
  v50 = v7[12];
  v51 = v7[10];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = *(AssociatedConformanceWitness + 8);
  v54 = swift_checkMetadataState();
  v55 = v142;
  v53(v54, AssociatedConformanceWitness);
  v56 = a2 + *(*a2 + 128);
  v57 = *(v56 + 8);
  (*v56)(v55);
  v58 = v129[13];
  v59 = sub_192227570();
  v60 = v23[7];
  v61 = type metadata accessor for WidgetViewMetadata();
  v62 = v130;
  (*(*(v61 - 8) + 56))(v130 + v60, 1, 1, v61);
  v63 = v149[4];
  v142 = v44;
  (v63)(v62, v44, v153);
  *(v62 + v23[5]) = v59;
  v64 = v62 + v23[6];
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 16) = 1;
  *(v62 + v23[8]) = xmmword_19222A790;
  v65 = qword_1ED74B558;
  v131 = *v143;
  if (v65 != -1)
  {
LABEL_50:
    swift_once();
  }

  v66 = __swift_project_value_buffer(v139, qword_1ED74B570);
  sub_192055544(v66, v133, type metadata accessor for TimelineReloadPolicy);
  v67 = type metadata accessor for WidgetViewCollection();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  v71 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v72 = sub_192224E00();
  (*(*(v72 - 8) + 56))(v70 + v71, 1, 1, v72);
  v73 = [v134 extensionIdentity];
  v74 = v144;
  BundleStub.init(_:)(v73, v144);
  sub_1920E07FC(v74, v70 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v75 = v142;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v132 = v70;
  (v63)(v70 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v75, v153);
  v155 = v141;

  sub_19209B0C4(&v155);

  v76 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v76;
  *(inited + 24) = 0;
  v78 = v137;
  v142 = MEMORY[0x1E69E7CC0];
  v139 = MEMORY[0x1E69E7CC0] + v137;
  v79 = v152;
  v81 = v154 + 56;
  v80 = *(v154 + 56);
  v151 = *(v151 + 32);
  v153 = v80;
  v80(v152 + v151, 1, 1, v23);
  *v79 = inited;
  v79[1] = sub_1920DA3A8;
  v79[2] = 0;
  v149 = v76;
  v143 = (v76 + v78);
  v144 = inited;
  v154 = v81;
  v63 = (v81 - 8);

  v141 = 0;
  v82 = 0;
  v83 = v147;
  while (2)
  {
    v153(v20, 1, 1, v23);
    while (1)
    {
      v84 = v149[2];
      if (v82 == v84)
      {
        v85 = 1;
        v86 = v150;
      }

      else
      {
        v86 = v150;
        if (v82 >= v84)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        sub_192055544(v143 + v82 * v145, v150, type metadata accessor for ViewableTimelineEntry);
        v85 = 0;
        *(v144 + 24) = ++v82;
      }

      v153(v86, v85, 1, v23);
      sub_192033970(v20, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v86, v20);
      sub_1920D86C4(v20, v15);
      v87 = *v63;
      if ((*v63)(v15, 1, v23) == 1)
      {
        v91 = v15;
        goto LABEL_16;
      }

      sub_192033970(v15, &qword_1EADEE9F8, &unk_19222A7D0);
      v88 = v148;
      sub_1920D86C4(v20, v148);
      if (v87(v88, 1, v23) == 1)
      {
        v91 = v88;
        goto LABEL_16;
      }

      sub_1920E07FC(v88, v29, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v152 + v151, v83);
      if (v87(v83, 1, v23) == 1)
      {
        break;
      }

      v89 = v146;
      sub_1920E07FC(v83, v146, type metadata accessor for ViewableTimelineEntry);
      v90 = sub_192225120();
      sub_192046F48(v89, type metadata accessor for ViewableTimelineEntry);
      v83 = v147;
      sub_192046F48(v29, type metadata accessor for ViewableTimelineEntry);
      if ((v90 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_192046F48(v29, type metadata accessor for ViewableTimelineEntry);
    v91 = v83;
LABEL_16:
    sub_192033970(v91, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v20, v152 + v151);
    v92 = v138;
    sub_1920D8654(v20, v138);
    if (v87(v92, 1, v23) != 1)
    {
      sub_1920E07FC(v92, v140, type metadata accessor for ViewableTimelineEntry);
      v93 = v139;
      if (v141)
      {
        v94 = v142;
        v95 = (v141 - 1);
        if (__OFSUB__(v141, 1))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v96 = v142[3];
      if (((v96 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v97 = v96 & 0xFFFFFFFFFFFFFFFELL;
      if (v97 <= 1)
      {
        v98 = 1;
      }

      else
      {
        v98 = v97;
      }

      v99 = v145;
      v100 = v137;
      v94 = swift_allocObject();
      v101 = _swift_stdlib_malloc_size(v94);
      if (!v99)
      {
        goto LABEL_48;
      }

      if (v101 - v100 == 0x8000000000000000 && v99 == -1)
      {
        goto LABEL_49;
      }

      v103 = v99;
      v104 = (v101 - v100) / v99;
      v94[2] = v98;
      v94[3] = 2 * v104;
      v105 = v94 + v100;
      v106 = v142;
      v107 = (v142[3] >> 1);
      v108 = v107 * v103;
      if (!v142[2])
      {
LABEL_39:
        v93 = v105 + v108;
        v109 = (v104 & 0x7FFFFFFFFFFFFFFFLL) - v107;

        v110 = v109;
        v83 = v147;
        v111 = __OFSUB__(v110, 1);
        v95 = (v110 - 1);
        if (v111)
        {
          goto LABEL_46;
        }

LABEL_40:
        v141 = v95;
        sub_1920E07FC(v140, v93, type metadata accessor for ViewableTimelineEntry);
        v139 = v93 + v145;
        v142 = v94;
        continue;
      }

      if (v94 < v142 || v105 >= v142 + v100 + v108)
      {
        v141 = (v142[3] >> 1);
        v139 = v94 + v100;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v94 == v142)
        {
LABEL_38:
          v106[2] = 0;
          goto LABEL_39;
        }

        v141 = (v142[3] >> 1);
        v139 = v94 + v100;
        swift_arrayInitWithTakeBackToFront();
      }

      v107 = v141;
      v105 = v139;
      v106 = v142;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v152, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v92, &qword_1EADEE9F8, &unk_19222A7D0);
  v112 = v142;
  v113 = v142[3];
  v114 = v134;
  v115 = v133;
  if (v113 < 2)
  {
    goto LABEL_44;
  }

  v116 = v113 >> 1;
  v111 = __OFSUB__(v116, v141);
  v117 = v116 - v141;
  if (!v111)
  {
    v142[2] = v117;
LABEL_44:
    v118 = v144;
    v119 = v112;
    swift_setDeallocating();
    v120 = *(v118 + 16);

    v121 = v132;
    *(v132 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v119;
    *(v121 + 16) = v131;
    *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v114;
    sub_192055544(v115, v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v118) = byte_1ED74B5B8;
    v122 = v114;
    sub_192046F48(v115, type metadata accessor for TimelineReloadPolicy);
    *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v118;
    *(v121 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v128(v121);
  }

  __break(1u);

  v124 = v132;
  sub_192046F48(v132 + v82, type metadata accessor for BundleStub);
  sub_192033970(v124 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (v149[1])(v124 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, &qword_1EADEE9F8);
  v125 = *(*v124 + 48);
  v126 = *(*v124 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1921F27C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v9 = *a2;
  v10 = type metadata accessor for TimelineProviderContext();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v9;
  v31 = *(v9 + 96);
  v30 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Timeline();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  (*(v13 + 16))(&v29 - v15, a1, v12);
  sub_192055544(a6, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v33 + 80) + v20 + 8) & ~*(v33 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 2) = v30;
  *(v22 + 3) = *(v23 + 88);
  *(v22 + 4) = v31;
  *(v22 + 5) = *(v23 + 104);
  (*(v13 + 32))(&v22[v17], v16, v12);
  *&v22[v18] = a2;
  v24 = &v22[v19];
  v25 = v35;
  *v24 = v34;
  *(v24 + 1) = v25;
  v26 = v36;
  *&v22[v20] = v36;
  sub_1920E07FC(v29, &v22[v21], type metadata accessor for TimelineProviderContext);

  v27 = v26;
  sub_1920873B4(sub_1921F57D8, v22);
}

uint64_t sub_1921F2AF0(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void **a6)
{
  v139 = a6;
  v121 = a5;
  v118 = a4;
  v119 = a3;
  v138 = a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v134 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v141 = &v114 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v114 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v136 = (&v114 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v114 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v124 = (&v114 - v22);
  v23 = type metadata accessor for ViewableTimelineEntry();
  v131 = *(v23 - 8);
  v24 = *(v131 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v132 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v140 = (&v114 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v114 - v29;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  v30 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v120 = &v114 - v31;
  v137 = sub_192225150();
  v135 = *(v137 - 8);
  v32 = v135[8];
  MEMORY[0x1EEE9AC00](v137);
  v133 = (&v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for BundleStub();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v130 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TimelineReloadPolicy();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a2;
  v41 = *(v7 + 96);
  v42 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Timeline();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = (&v114 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  v50 = v49 - 8;
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = (&v114 - v52);
  (*(v45 + 16))(v48, v138, v44);
  sub_192203450(v48, sub_1921F592C, v129, v23, AssociatedTypeWitness, &protocol witness table for ViewableTimelineEntry, AssociatedConformanceWitness, v53);
  v138 = 0;
  v54 = *v139;
  v55 = *v53;
  v56 = *(v50 + 44);
  v116 = v53;
  v117 = v40;
  sub_192055544(v53 + v56, v40, type metadata accessor for TimelineReloadPolicy);
  v57 = type metadata accessor for WidgetViewCollection();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v139 = v57;
  v60 = swift_allocObject();
  v61 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v62 = sub_192224E00();
  (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
  v114 = v54;
  v63 = [v121 extensionIdentity];
  v64 = v130;
  BundleStub.init(_:)(v63, v130);
  v65 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle;
  sub_1920E07FC(v64, v60 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v66 = v133;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v67 = &OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v68 = v135;
  v69 = v135[4];
  v115 = v60;
  v70 = v137;
  v69(v60 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v66, v137);
  v143 = v55;

  v71 = v138;
  sub_19209B0C4(&v143);
  if (v71)
  {
    goto LABEL_51;
  }

  v72 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v72;
  *(inited + 24) = 0;
  v65 = v131 + 56;
  v74 = *(v131 + 56);
  v123 = *(v131 + 80);
  v75 = (v123 + 32) & ~v123;
  AssociatedConformanceWitness = MEMORY[0x1E69E7CC0];
  v127 = MEMORY[0x1E69E7CC0] + v75;
  v137 = *(v142 + 32);
  v67 = v120;
  v138 = v74;
  (v74)(&v120[v137], 1, 1, v23);
  *v67 = inited;
  *(v67 + 8) = sub_1920DA3A8;
  *(v67 + 16) = 0;
  v135 = v72;
  v122 = v75;
  v129 = (v72 + v75);
  v139 = v65;
  v76 = (v65 - 8);
  v130 = inited;

  v126 = 0;
  v142 = 0;
  v68 = v134;
  v77 = v67;
  v133 = (v65 - 8);
  while (2)
  {
    (v138)(v21, 1, 1, v23);
    while (1)
    {
      v78 = v135[2];
      if (v142 == v78)
      {
        v79 = 1;
        v71 = v136;
      }

      else
      {
        v71 = v136;
        if (v142 >= v78)
        {
          __break(1u);
          goto LABEL_46;
        }

        v80 = v142;
        sub_192055544(v129 + *(v131 + 72) * v142, v136, type metadata accessor for ViewableTimelineEntry);
        v79 = 0;
        v142 = v80 + 1;
        *(v130 + 24) = v80 + 1;
      }

      (v138)(v71, v79, 1, v23);
      v70 = &qword_1EADEE9F8;
      v67 = &unk_19222A7D0;
      sub_192033970(v21, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_1920D8654(v71, v21);
      sub_1920D86C4(v21, v16);
      v65 = *v76;
      if ((*v76)(v16, 1, v23) == 1)
      {
        break;
      }

      sub_192033970(v16, &qword_1EADEE9F8, &unk_19222A7D0);
      v81 = v141;
      sub_1920D86C4(v21, v141);
      if ((v65)(v81, 1, v23) == 1)
      {
        v83 = v141;
        goto LABEL_16;
      }

      sub_1920E07FC(v141, v140, type metadata accessor for ViewableTimelineEntry);
      sub_1920D86C4(v77 + v137, v68);
      if ((v65)(v68, 1, v23) == 1)
      {
        sub_192046F48(v140, type metadata accessor for ViewableTimelineEntry);
        v83 = v68;
        goto LABEL_16;
      }

      v70 = v140;
      v67 = v132;
      sub_1920E07FC(v68, v132, type metadata accessor for ViewableTimelineEntry);
      v82 = sub_192225120();
      v76 = v133;
      sub_192046F48(v67, type metadata accessor for ViewableTimelineEntry);
      v68 = v134;
      sub_192046F48(v70, type metadata accessor for ViewableTimelineEntry);
      if ((v82 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v83 = v16;
LABEL_16:
    sub_192033970(v83, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_17:
    sub_19209B16C(v21, v77 + v137);
    v71 = v124;
    sub_1920D8654(v21, v124);
    if ((v65)(v71, 1, v23) != 1)
    {
      sub_1920E07FC(v71, v125, type metadata accessor for ViewableTimelineEntry);
      v65 = v131;
      if (v126)
      {
        v71 = AssociatedConformanceWitness;
        v84 = v126 - 1;
        if (!__OFSUB__(v126, 1))
        {
          goto LABEL_40;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v85 = *(AssociatedConformanceWitness + 24);
      if (((v85 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v86 = v85 & 0xFFFFFFFFFFFFFFFELL;
      if (v86 <= 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = v86;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
      v65 = *(v65 + 72);
      v87 = v122;
      v71 = swift_allocObject();
      v88 = _swift_stdlib_malloc_size(v71);
      if (!v65)
      {
        goto LABEL_48;
      }

      v89 = v88 - v87;
      if (v88 - v87 == 0x8000000000000000 && v65 == -1)
      {
        goto LABEL_49;
      }

      v91 = v87;
      v67 = v89 / v65;
      v71[2] = v68;
      v71[3] = 2 * (v89 / v65);
      v70 = (v71 + v87);
      v92 = AssociatedConformanceWitness;
      v93 = *(AssociatedConformanceWitness + 24) >> 1;
      v94 = v93 * v65;
      v76 = v133;
      v68 = v134;
      if (!*(AssociatedConformanceWitness + 16))
      {
LABEL_39:
        v127 = v70 + v94;
        v95 = (v67 & 0x7FFFFFFFFFFFFFFFLL) - v93;

        v96 = v95;
        v65 = v131;
        v97 = __OFSUB__(v96, 1);
        v84 = v96 - 1;
        if (!v97)
        {
LABEL_40:
          v126 = v84;
          v98 = v127;
          sub_1920E07FC(v125, v127, type metadata accessor for ViewableTimelineEntry);
          v67 = v98 + *(v65 + 72);
          v127 = v67;
          AssociatedConformanceWitness = v71;
          continue;
        }

        goto LABEL_46;
      }

      if (v71 < AssociatedConformanceWitness || v70 >= AssociatedConformanceWitness + v91 + v94)
      {
        v127 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v71 == AssociatedConformanceWitness)
        {
LABEL_38:
          *(v92 + 16) = 0;
          goto LABEL_39;
        }

        v127 = *(AssociatedConformanceWitness + 24) >> 1;
        swift_arrayInitWithTakeBackToFront();
      }

      v93 = v127;
      v92 = AssociatedConformanceWitness;
      goto LABEL_38;
    }

    break;
  }

  sub_192033970(v77, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v71, &qword_1EADEE9F8, &unk_19222A7D0);
  v99 = AssociatedConformanceWitness;
  v100 = *(AssociatedConformanceWitness + 24);
  if (v100 < 2)
  {
LABEL_44:
    v103 = v130;
    v104 = v99;
    swift_setDeallocating();
    v105 = *(v103 + 16);

    v106 = v115;
    *(v115 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v104;
    *(v106 + 16) = v114;
    v107 = v121;
    *(v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v121;
    v108 = v117;
    sub_192055544(v117, v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
    swift_beginAccess();
    LOBYTE(v103) = byte_1ED74B5B8;
    v109 = v107;
    sub_192046F48(v108, type metadata accessor for TimelineReloadPolicy);
    *(v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v103;
    *(v106 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
    v119(v106);

    return sub_192033970(v116, &qword_1EADEF7E8, &qword_19222E9C0);
  }

  v101 = v100 >> 1;
  v97 = __OFSUB__(v101, v126);
  v102 = v101 - v126;
  if (!v97)
  {
    *(AssociatedConformanceWitness + 16) = v102;
    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
LABEL_51:

  v111 = v115;
  sub_192046F48(v115 + v65, type metadata accessor for BundleStub);
  sub_192033970(v111 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  (*(v68 + 8))(v111 + *v67, v70);
  v112 = *(*v111 + 48);
  v113 = *(*v111 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1921F3934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v43 = a7;
  v44 = a4;
  v35 = a5;
  v38 = a3;
  v39 = a2;
  v40 = a1;
  v10 = *v7;
  v11 = type metadata accessor for TimelineProviderContext();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a6;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - v18;
  v42 = &v33 - v18;
  v20 = sub_192227CF0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v38, a6);
  sub_192055544(v39, &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineProviderContext);
  sub_192227CC0();

  v40 = v40;

  v21 = sub_192227CB0();
  v22 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v41 + 80) + v24 + 8) & ~*(v41 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  *(v27 + 2) = v21;
  *(v27 + 3) = v28;
  *(v27 + 4) = v10[10];
  v29 = v34;
  *(v27 + 5) = v10[11];
  *(v27 + 6) = v29;
  *(v27 + 7) = v10[12];
  *(v27 + 8) = v10[13];
  *(v27 + 9) = v43;
  (*(v13 + 32))(&v27[v22], v36);
  *&v27[v23] = v8;
  *&v27[v24] = v40;
  sub_1920E07FC(v37, &v27[v25], type metadata accessor for TimelineProviderContext);
  v30 = &v27[v26];
  v31 = v35;
  *v30 = v44;
  *(v30 + 1) = v31;
  sub_19211CA04(0, 0, v42, &unk_192244028, v27);
}

uint64_t sub_1921F3CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v15;
  v8[44] = v16;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[45] = *a5;
  v9 = *(v16 - 8);
  v8[46] = v9;
  v10 = *(v9 + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_192227CC0();
  v8[49] = sub_192227CB0();
  v12 = sub_192227C70();
  v8[50] = v12;
  v8[51] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1921F3E04, v12, v11);
}

uint64_t sub_1921F3E04()
{
  v1 = *(*(v0 + 368) + 16);
  v1(*(v0 + 384), *(v0 + 304), *(v0 + 352));
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    *(v0 + 416) = v3;
    *(v0 + 424) = v6;
    *(v0 + 232) = v2;
    *(v0 + 240) = v3;
    *(v0 + 248) = v4;
    *(v0 + 256) = v5;
    *(v0 + 264) = v6;
    v7 = swift_task_alloc();
    *(v0 + 432) = v7;
    *v7 = v0;
    v7[1] = sub_1920D58D8;
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);

    return sub_1921F4108(v9, v8, v0 + 232);
  }

  else
  {
    v1(*(v0 + 376), *(v0 + 304), *(v0 + 352));
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v12;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v13 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v13;
      v14 = swift_task_alloc();
      *(v0 + 456) = v14;
      *v14 = v0;
      v14[1] = sub_1920D5ABC;
      v16 = *(v0 + 320);
      v15 = *(v0 + 328);
      v17 = *(v0 + 312);

      return sub_1921F4BC0(v16, v15, v0 + 16);
    }

    else
    {
      v18 = *(v0 + 392);
      v19 = *(v0 + 360);

      *(v0 + 184) = 0;
      *(v0 + 168) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      sub_192033970(v0 + 104, &qword_1EADEF7F0, &unk_19222F0D0);
      v20 = *(v19 + 96);
      *(v0 + 272) = *(v19 + 80);
      *(v0 + 288) = v20;
      type metadata accessor for IntentTimelineEntryProvider.Errors();
      swift_getWitnessTable();
      v21 = swift_allocError();
      swift_willThrow();
      v23 = *(v0 + 336);
      v22 = *(v0 + 344);
      v24 = v21;
      v23(v21, 1);

      v26 = *(v0 + 376);
      v25 = *(v0 + 384);

      v27 = *(v0 + 8);

      return v27();
    }
  }
}

uint64_t sub_1921F4108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7E8, &qword_19222E9C0);
  *(v4 + 104) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v9 = type metadata accessor for TimelineReloadPolicy();
  *(v4 + 120) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v11 = *(v6 + 96);
  v12 = *(v6 + 80);
  *(v4 + 136) = swift_getAssociatedTypeWitness();
  *(v4 + 144) = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Timeline();
  *(v4 + 152) = v13;
  v14 = *(v13 - 8);
  *(v4 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = *a3;
  *(v4 + 272) = *(a3 + 16);
  *(v4 + 200) = *(a3 + 24);
  sub_192227CC0();
  *(v4 + 216) = sub_192227CB0();
  v17 = sub_192227C70();
  *(v4 + 224) = v17;
  *(v4 + 232) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1921F4324, v17, v16);
}

uint64_t sub_1921F4324()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview entries request being handled by IntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = *(v0 + 272);
  v10 = *(v0 + 184);
  v11 = *(v0 + 200);

  *(v0 + 16) = v10;
  *(v0 + 32) = v5;
  *(v0 + 40) = v11;
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1921F44A0;
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return TimelineEntryPreviewSource.unwrapTimeline<A>(for:)(v7, v7, v8);
}

uint64_t sub_1921F44A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v9 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v5 = v3[28];
  v6 = v3[29];
  if (v1)
  {
    v7 = sub_1920D66BC;
  }

  else
  {
    v7 = sub_1921F45B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1921F45B4()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];

  v4 = sub_192225890();
  v5 = sub_192227FB0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  if (v6)
  {
    v8 = v0[17];
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = sub_192227C10();

    _os_log_impl(&dword_192028000, v4, v5, "IntentConfiguration resolved entry source to have %{public}ld entries", v9, 0xCu);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  else
  {
    v10 = v0[32];
  }

  if (qword_1ED74B558 != -1)
  {
    swift_once();
  }

  v11 = v0[32];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];
  v40 = v15;
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[14];
  v37 = v0[13];
  v38 = v0[33];
  v35 = v0[12];
  v36 = v0[11];
  v39 = v0[10];
  v20 = __swift_project_value_buffer(v0[15], qword_1ED74B570);
  sub_192055544(v20, v18, type metadata accessor for TimelineReloadPolicy);
  Timeline.init(entries:policy:)(v11, v18, v13);
  (*(v15 + 16))(v12, v13, v14);
  v21 = type metadata accessor for ViewableTimelineEntry();
  sub_192203450(v12, sub_1921F5C30, v35, v21, v16, &protocol witness table for ViewableTimelineEntry, v17, v19);
  v22 = *v36;
  v23 = *v19;
  sub_192055544(v19 + *(v37 + 36), v18, type metadata accessor for TimelineReloadPolicy);
  v24 = type metadata accessor for WidgetViewCollection();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v29 = sub_192224E00();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = v22;

  v31 = [v39 extensionIdentity];
  BundleStub.init(_:)(v31, v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v23;
  *(v27 + 16) = v30;
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v39;
  sub_192055544(v18, v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  LOBYTE(v30) = byte_1ED74B5B8;
  v32 = v39;
  sub_192046F48(v18, type metadata accessor for TimelineReloadPolicy);
  sub_192033970(v19, &qword_1EADEF7E8, &qword_19222E9C0);
  (*(v40 + 8))(v13, v14);
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v30;
  *(v27 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];

  v33 = v0[1];

  return v33(v27);
}

double sub_1921F49CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = *a2;
  v21 = *(*a2 + 88);
  v6 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - v7;
  v9 = v5[12];
  v10 = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v21 - v13;
  (*(v15 + 16))(&v21 - v13, a1, AssociatedTypeWitness);
  v16 = a2 + *(*a2 + 128);
  v17 = *(v16 + 8);
  (*v16)(a1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = v5[13];
  return sub_19221A6E4(v14, v8, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v22);
}

uint64_t sub_1921F4BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[7] = *v3;
  v6 = *(v5 + 80);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = sub_192227CC0();
  v4[12] = sub_192227CB0();
  v10 = sub_192227C70();
  v4[13] = v10;
  v4[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1921F4CF4, v10, v9);
}

uint64_t sub_1921F4CF4()
{
  if (qword_1ED74AF20 != -1)
  {
    swift_once();
  }

  v1 = sub_1922258B0();
  __swift_project_value_buffer(v1, qword_1ED74CBA8);
  v2 = sub_192225890();
  v3 = sub_192227FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_192028000, v2, v3, "Preview provider request being handled by IntentConfiguration", v4, 2u);
    MEMORY[0x193B0C7F0](v4, -1, -1);
  }

  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];

  v9 = *(v7 + 96);
  v10 = TimelineProviderPreviewSource.unwrapContent<A>(for:)(v5, v6, v6);
  v0[15] = v10;
  v11 = v10;
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];
  v17 = sub_192227CB0();
  v0[16] = v17;
  v18 = swift_task_alloc();
  v0[17] = v18;
  v18[2] = v14;
  v18[3] = v16;
  v18[4] = v13;
  v18[5] = v15;
  v18[6] = v11;
  v19 = *(MEMORY[0x1E69E88D0] + 4);
  v20 = swift_task_alloc();
  v0[18] = v20;
  v21 = type metadata accessor for WidgetViewCollection();
  *v20 = v0;
  v20[1] = sub_1921F4F64;
  v22 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v17, v22, 0xD000000000000029, 0x8000000192249FF0, sub_1921F55C8, v18, v21);
}

uint64_t sub_1921F4F64()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1921F50C4, v6, v5);
}

uint64_t sub_1921F50C4()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 16);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1921F516C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v20 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF938, &qword_19222F0B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - v14;
  (*(v11 + 16))(&v19 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v10);
  sub_192086E5C(a3, a4, a5, v20, sub_1920E0410, v17);
}

uint64_t sub_1921F5370()
{
  swift_getWitnessTable();

  return sub_192141600();
}

uint64_t sub_1921F53C4(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 96);
  v6 = *(v5 + 72);
  v7 = *(*v1 + 80);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920A59A8;

  return v11(a1, v7, v5);
}

uint64_t sub_1921F552C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920B3B44;

  return sub_1921F53C4(a1);
}

uint64_t sub_1921F55D8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[6];
  v19 = v1[9];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v18 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1920A59A8;

  return sub_1921F3CD4(a1, v11, v12, v1 + v5, v18, v10, v1 + v9, v15);
}

uint64_t sub_1921F57D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(type metadata accessor for Timeline() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = *(v0 + v7);
  v13 = (v0 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80)));

  return sub_1921F2AF0((v0 + v4), v9, v10, v11, v12, v13);
}

uint64_t sub_1921F5948()
{
  v1 = *(type metadata accessor for TimelineProviderContext() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);

  return sub_1921F1174(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t sub_1921F59E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1921F5A48(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TimelineProviderContext() - 8);
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = v2[9];
  v9 = v2 + ((*(v4 + 80) + 80) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1921F5AD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = *(v0 + v7);
  v13 = (v0 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80)));

  return sub_1921F18C0((v0 + v4), v9, v10, v11, v12, v13);
}

uint64_t sub_1921F5BEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1921EFBA0(a1, a2);
}

uint64_t sub_1921F5C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, v10);
  v13 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = v7;
  *(v14 + 4) = a4;
  *(v14 + 5) = a1;
  (*(v8 + 32))(&v14[v13], v12, v7);

  sub_1921F6160(sub_1921F6978, v14);
}

uint64_t sub_1921F5DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192224FB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v7 + 16))(v10, a1, v6);
  v14[0] = sub_192227980();
  v14[1] = v12;
  sub_1921F5C58(KeyPath, v14, a2, a3);
}

uint64_t ControlWidgetConfiguration.promptsForUserConfiguration()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 1;
  sub_1921F5C58(KeyPath, &v6, a1, a2);
}

uint64_t ControlWidgetConfiguration.pushHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1;
  v10[1] = a2;
  sub_1921F5C58(KeyPath, v10, a3, a4);
}

uint64_t ControlWidgetConfiguration.enabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = 1;
  if ((a1 & 1) == 0)
  {
    v7 = 2;
  }

  v9 = v7;
  sub_1921F5C58(KeyPath, &v9, a2, a3);
}

uint64_t ControlWidgetConfiguration.showsContextualMenu(_:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  sub_1921F6160(sub_1921F612C, v2);
}

uint64_t sub_1921F612C(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 148)) = v3;
  return result;
}

uint64_t sub_1921F6160(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1920791AC();

  sub_192226A00();
}

uint64_t sub_1921F6268(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 140)) = 1;
  *(a1 + *(result + 136)) = 1;
  return result;
}

uint64_t sub_1921F62C8(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 132)) = 1;
  *(a1 + *(result + 128)) = 1;
  return result;
}

uint64_t ControlWidgetConfiguration.preferredControlSize(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  sub_1921F5C58(KeyPath, &v8, a2, a3);
}

uint64_t ControlWidgetConfiguration.requiresFeatureFlag(domain:featureName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  sub_1921F6160(sub_1921F659C, v8);
}

double sub_1921F643C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E6994298]);
  v3 = sub_192227930();
  v4 = sub_192227930();
  v5 = [v2 initWithDomain:v3 featureName:v4];

  v6 = *(type metadata accessor for WidgetDescriptor(0) + 164);
  if (*(a1 + v6))
  {
    v11 = *(a1 + v6);

    v7 = v5;
    MEMORY[0x193B0AB00]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_192227BB0();
    }

    sub_192227C00();

    *(a1 + v6) = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
    v9 = swift_allocObject();
    *&result = 1;
    *(v9 + 16) = xmmword_19222C680;
    *(v9 + 32) = v5;
    *(a1 + v6) = v9;
  }

  return result;
}

double sub_1921F659C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1921F643C(a1);
}

uint64_t ControlWidgetConfiguration.requiresFeatureFlag(_:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225430();
  v3 = sub_192228430();
  v5 = v4;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225440();
  v7 = sub_192228430();
  ControlWidgetConfiguration.requiresFeatureFlag(domain:featureName:)(v3, v5, v7, v8);
}

uint64_t static ControlWidgetSize.medium(vertical:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 1;
  if ((result & 1) == 0)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1921F66D0()
{
  sub_1920791AC();

  return sub_192226A00();
}

uint64_t sub_1921F6748(uint64_t a1, void *a2)
{
  v2 = *(*(*(*a2 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - v5, v6, v3);
  return swift_setAtWritableKeyPath();
}

uint64_t ControlWidgetConfiguration.disfavoredLocations(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_1921F6160(sub_1921F694C, v2);
}

uint64_t sub_1921F68E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(type metadata accessor for WidgetDescriptor(0) + 40);
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_1921C2028(&v8, v6);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1921F6978(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(*(*(v1 + 24) - 8) + 80);
  return sub_1921F6748(a1, *(v1 + 40));
}

uint64_t sub_1921F69B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  *a1 = sub_1920EF8DC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
  *(a1 + 64) = *(v1 + 16);
  *(a1 + 80) = v4;
  v5 = v2;
}

__n128 sub_1921F6A3C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v8;
  result = *(a1 + 25);
  *(a7 + 25) = result;
  *(a7 + 48) = v7;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5;
  *(a7 + 80) = a6;
  return result;
}

uint64_t ControlWidgetButton.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 32);
  v21 = 0;
  *&v20[6] = 0;
  v22 = 0;
  v6 = v3;
  v13 = *(v1 + 16);

  *&v29 = sub_1920EF8DC;
  *(&v29 + 1) = 0;
  *v30 = 0;
  *&v30[2] = *v20;
  *&v30[17] = 0;
  *&v31 = v3;
  *(&v31 + 1) = v4;
  v32 = v13;
  v33 = v5;
  v7 = *(a1 + 40);
  v34 = *(a1 + 16);
  v35 = v7;
  v8 = type metadata accessor for ControlWidgetButtonTemplateProvider();
  swift_getWitnessTable();
  sub_192145D24(&v29, v8, &v34);
  v16 = v36;
  v17 = v37;
  v18 = v38;
  v19 = v39;
  v14 = v34;
  v15 = v35;
  v9 = type metadata accessor for TemplateDescriptorPreference();
  WitnessTable = swift_getWitnessTable();
  sub_1921BB14C(&v14, v9, WitnessTable);
  *&v30[16] = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v29 = v14;
  *v30 = v15;
  v11 = *(*(v9 - 8) + 8);
  v11(&v29, v9);
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v14 = v23;
  v15 = v24;
  sub_1921BB14C(&v14, v9, WitnessTable);
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v34 = v14;
  v35 = v15;
  return (v11)(&v34, v9);
}

uint64_t sub_1921F6CE8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  return static ControlWidgetButton._controlType.getter();
}

uint64_t ControlWidgetButton.init<>(action:label:actionLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, v19, v16);
  ControlAction.init<A>(_:)(v18, a6, &v22);
  result = (*(v14 + 8))(a1, a6);
  *a7 = v22;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t ControlWidgetButton.init<>(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v15, v12);
  ControlAction.init<A>(_:)(v14, a4, &v18);
  result = (*(v10 + 8))(a1, a4);
  *a5 = v18;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = nullsub_1;
  a5[4] = 0;
  return result;
}

uint64_t ControlWidgetButton.init<>(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v17, v14);
  v18 = *(*(a5 + 8) + 8);
  ControlAction.init<A>(_:)(v16, a4, &v21);
  result = (*(v12 + 8))(a1, a4);
  *a6 = v21;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = nullsub_1;
  a6[4] = 0;
  return result;
}

__n128 ControlWidgetButton<>.init<>(_:action:actionLabel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v24 = a6;
  v25 = a7;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v20, a9, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  ControlWidgetButton.init<>(action:label:actionLabel:)(v19, sub_1921D1100, v21, v24, v25, a9, &v26);
  (*(v15 + 8))(a5, a9);
  *a8 = v26;
  result = v28;
  *(a8 + 8) = v27;
  *(a8 + 24) = result;
  return result;
}

__n128 ControlWidgetButton<>.init<A>(_:action:actionLabel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a5;
  v34 = a8;
  v35 = a3;
  v36 = a4;
  v30 = a1;
  v31 = a2;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  v32 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v24, v22);
  (*(v15 + 16))(v17, a1, a7);
  v25 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 2) = v33;
  *(v26 + 3) = a6;
  *(v26 + 4) = a7;
  *(v26 + 5) = v27;
  v28 = v32;
  *(v26 + 6) = a10;
  *(v26 + 7) = v28;
  (*(v15 + 32))(&v26[v25], v17, a7);
  ControlWidgetButton.init<>(action:label:actionLabel:)(v24, sub_1921F7528, v26, v35, v36, a6, &v37);
  (*(v19 + 8))(v31, a6);
  (*(v15 + 8))(v30, a7);
  *a9 = v37;
  result = v39;
  *(a9 + 8) = v38;
  *(a9 + 24) = result;
  return result;
}

uint64_t sub_1921F744C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_192226FD0();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_1921F7528@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_1921F744C(v1 + ((*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80)), v1[4], a1);
}

uint64_t sub_1921F7570(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1921F75D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921F7614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1921F765C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1921F76B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1921F76F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 496) = a2;
  *(v4 + 504) = a3;
  *(v4 + 488) = a1;
  v5 = *(v3 + 48);
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v3 + 64);
  *(v4 + 96) = *(v3 + 80);
  v6 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v6;
  sub_192227CC0();
  *(v4 + 512) = sub_192227CB0();
  v8 = sub_192227C70();
  *(v4 + 520) = v8;
  *(v4 + 528) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1921F77B0, v8, v7);
}

uint64_t sub_1921F77B0()
{
  v16 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v2;
  v14[4] = *(v0 + 80);
  v15 = *(v0 + 96);
  v3 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v3;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = sub_1920FC228(v14, v0 + 104);
  (*(*(v1 - 1) + 16))(v0 + 192, v0 + 16, v1, v8);
  v9 = swift_task_alloc();
  *(v0 + 536) = v9;
  *(v0 + 456) = v4;
  *(v0 + 464) = v5;
  *(v0 + 472) = v6;
  *(v0 + 480) = v7;
  v10 = type metadata accessor for ControlWidgetButtonParser();
  *(v0 + 544) = v10;
  *v9 = v0;
  v9[1] = sub_1921F78F8;
  v11 = *(v0 + 488);
  v12 = *(v0 + 496);

  return sub_1920FC24C(v11, v12, v10);
}

uint64_t sub_1921F78F8()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  v18 = *v1;
  *(v2 + 552) = v0;

  v5 = v3 - 8;
  v6 = *(v2 + 544);
  v7 = *(v2 + 120);
  if (v0)
  {
    *(v2 + 280) = *(v2 + 104);
    *(v2 + 296) = v7;
    v8 = *(v2 + 136);
    v9 = *(v2 + 152);
    v10 = *(v2 + 168);
    *(v2 + 360) = *(v2 + 184);
    *(v2 + 328) = v9;
    *(v2 + 344) = v10;
    *(v2 + 312) = v8;
    (*(*v5 + 8))();
    v11 = *(v2 + 528);
    v12 = *(v2 + 520);
    v13 = sub_1921F7B3C;
  }

  else
  {
    *(v2 + 368) = *(v2 + 104);
    *(v2 + 384) = v7;
    v14 = *(v2 + 136);
    v15 = *(v2 + 152);
    v16 = *(v2 + 168);
    *(v2 + 448) = *(v2 + 184);
    *(v2 + 416) = v15;
    *(v2 + 432) = v16;
    *(v2 + 400) = v14;
    (*(*v5 + 8))(v2 + 368, v6);
    v11 = *(v2 + 528);
    v12 = *(v2 + 520);
    v13 = sub_1921F7AD8;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1921F7AD8()
{
  v1 = *(v0 + 512);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1921F7B3C()
{
  v1 = v0[64];

  v2 = v0[1];
  v3 = v0[69];

  return v2();
}

uint64_t sub_1921F7BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return sub_1921F76F0(a1, a2, a3);
}

uint64_t ViewStatesArchiver.archiveToData()(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for _MapStates();
  swift_getWitnessTable();
  return sub_1922263C0();
}

uint64_t ViewStatesArchiver.deploymentVersion.setter(uint64_t a1)
{
  v3 = sub_192226690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = *(v1 + 8);
  (*(v4 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  sub_192226430();
  return (*(v4 + 8))(a1, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewStatesArchiver.archive(to:)(NSFileHandle to)
{
  v3 = *(v2 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for _MapStates();
  swift_getWitnessTable();
  sub_1922263B0();
}

uint64_t sub_1921F7EBC@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = ViewStatesArchiver.encodesPreciseTextLayout.getter();
  *a2 = result & 1;
  return result;
}

uint64_t (*ViewStatesArchiver.encodesPreciseTextLayout.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = sub_192226460() & 1;
  return sub_1921F7F4C;
}

uint64_t sub_1921F7F4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  return sub_192226470();
}

uint64_t sub_1921F7FA0@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = ViewStatesArchiver.encodesCustomFontsAsURLs.getter();
  *a2 = result & 1;
  return result;
}

uint64_t (*ViewStatesArchiver.encodesCustomFontsAsURLs.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 8);
  *(a1 + 8) = sub_192226440() & 1;
  return sub_1921F8030;
}

uint64_t sub_1921F8030(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  return sub_192226450();
}

uint64_t sub_1921F80B4(uint64_t a1)
{
  v2 = sub_192226690();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return ViewStatesArchiver.deploymentVersion.setter(v6);
}

void (*ViewStatesArchiver.deploymentVersion.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_192226690();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v12 = *(v2 + 8);
  sub_192226420();
  return sub_1921F828C;
}

void sub_1921F828C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    ViewStatesArchiver.deploymentVersion.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[1];
    ViewStatesArchiver.deploymentVersion.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1921F8340()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1921F8394()
{
  sub_1921F8514();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

id sub_1921F843C(void *a1)
{
  if (!swift_weakLoadStrong())
  {
    return a1;
  }

  v2 = sub_1921F8C30(a1);

  return v2;
}

uint64_t sub_1921F84AC()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  sub_1921F905C(v0 + qword_1EADEDA08);
  return v0;
}

void sub_1921F8514()
{
  if (!qword_1ED74B270)
  {
    sub_192225790();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74B270);
    }
  }
}

uint64_t sub_1921F856C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1921F8634(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = (*(*(v2 + 88) + 48))(v3);
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_1921F8780(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v9 = v4[13];
  v10 = *(v2 + v9);

  sub_1922264C0();
  sub_1922264D0();

  v11 = *(v2 + v9);
  v12 = *(*v2 + 96);
  swift_beginAccess();
  v13 = *(v5 + 64);
  v14 = type metadata accessor for _SimpleDelegate();

  WitnessTable = swift_getWitnessTable();
  v13(a1, v11, v14, WitnessTable, v6, v5);
  swift_endAccess();
}

uint64_t sub_1921F893C()
{
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v20 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = *(v2 + 96);
  swift_beginAccess();
  (*(v9 + 16))(v13, v0 + v14, v4);
  v15 = sub_192224DB0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_192224DA0();
  v18 = v13;
  (*(v3 + 56))(v4, v3);
  if (v1)
  {
    (*(v9 + 8))(v13, v4);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v18 = sub_192224D90();

    (*(v21 + 8))(v8, AssociatedTypeWitness);
    (*(v9 + 8))(v13, v4);
  }

  return v18;
}

uint64_t sub_1921F8C30(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v9 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  v10 = (*(*(v3 + 88) + 72))(a1, v4);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1921F8D9C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1921F8E40(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1921F8F04()
{
  if (qword_1EADEDEB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1922258B0();
  __swift_project_value_buffer(v0, qword_1EAE007D8);
  oslog = sub_192225890();
  v1 = sub_192227F90();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = sub_192228BD0();
    v6 = sub_19202B8CC(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_192028000, oslog, v1, "Failed to encode %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x193B0C7F0](v3, -1, -1);
    MEMORY[0x193B0C7F0](v2, -1, -1);
  }
}

uint64_t sub_1921F905C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13E8, &qword_19223AEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.activityBackgroundTint(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _ActivityBackgroundTintModifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v9 + *(v6 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  *v9 = a1;

  MEMORY[0x193B0A190](v9, a2, v6, a3);
  return sub_1921F926C(v9);
}

uint64_t type metadata accessor for _ActivityBackgroundTintModifier()
{
  result = qword_1EADEDF00;
  if (!qword_1EADEDF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1921F926C(uint64_t a1)
{
  v2 = type metadata accessor for _ActivityBackgroundTintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921F92C8()
{
  result = qword_1EADEDF10;
  if (!qword_1EADEDF10)
  {
    type metadata accessor for _ActivityBackgroundTintModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF10);
  }

  return result;
}

void sub_1921F9348()
{
  sub_1921F93CC();
  if (v0 <= 0x3F)
  {
    sub_192110C60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1921F93CC()
{
  if (!qword_1EADEE4A8)
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEE4A8);
    }
  }
}

uint64_t sub_1921F9438@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for _ActivityBackgroundTintModifier();
  sub_1921112F0(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v4 + 32))(a1, v11, v3);
  }

  v14 = *v11;
  sub_192227FA0();
  v15 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1921F9608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v25 - v9;
  v11 = *v2;
  if (*v2)
  {
    sub_1921F9438(&v25 - v9);
    sub_192227270();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    (*(v6 + 8))(v10, v5);
    v20 = v13 | (v15 << 32);
    v21 = v17 | (v19 << 32);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2570, &qword_1922446F0);
  (*(*(v22 - 8) + 16))(a2, a1, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2578, &qword_1922446F8);
  v24 = a2 + *(result + 36);
  *v24 = v20;
  *(v24 + 8) = v21;
  *(v24 + 16) = v11 == 0;
  return result;
}

unint64_t sub_1921F97BC()
{
  result = qword_1EADECE78;
  if (!qword_1EADECE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2578, &qword_1922446F8);
    sub_192031E74(&qword_1EADECD48, &qword_1EADF2570, &qword_1922446F0);
    sub_192031E74(&unk_1EADEDFA0, &qword_1EADF2580, &qword_192244728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE78);
  }

  return result;
}

double sub_1921F98A0(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1921F98E8(uint64_t a1)
{
  v2 = sub_1921F997C();

  return MEMORY[0x1EEDE0700](a1, v2);
}

unint64_t sub_1921F9928()
{
  result = qword_1EADED3D0;
  if (!qword_1EADED3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3D0);
  }

  return result;
}

unint64_t sub_1921F997C()
{
  result = qword_1EADED3D8;
  if (!qword_1EADED3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3D8);
  }

  return result;
}

void sub_1921F9A18()
{
  sub_1922251B0();
  if (v0 <= 0x3F)
  {
    sub_1921F9AC4();
    if (v1 <= 0x3F)
    {
      sub_19217F1C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1921F9AC4()
{
  if (!qword_1EADEDFF0)
  {
    v0 = sub_192227C40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADEDFF0);
    }
  }
}

void sub_1921F9B5C()
{
  type metadata accessor for ActivityMetricsDefinition();
  if (v0 <= 0x3F)
  {
    sub_1921F9C88();
    if (v1 <= 0x3F)
    {
      sub_19217F1C8();
      if (v2 <= 0x3F)
      {
        sub_1921F9DC0(319, &qword_1EADEE3A8, type metadata accessor for MetricsRequest);
        if (v3 <= 0x3F)
        {
          sub_1921F9DC0(319, &qword_1ED74B560, MEMORY[0x1E697F228]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1921F9C88()
{
  if (!qword_1EADEE030[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2588, &unk_1922447D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1638, &unk_192240A20);
    sub_1921F9D6C(&qword_1EADEE000, &qword_1EADF2588, &unk_1922447D8);
    sub_1921F9D6C(&qword_1EADEE008, &qword_1EADF1638, &unk_192240A20);
    v0 = type metadata accessor for Cartesian2ProductCollection();
    if (!v1)
    {
      atomic_store(v0, qword_1EADEE030);
    }
  }
}

uint64_t sub_1921F9D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1921F9DC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1921F9E14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a2 / v4;
  if (a2 / v4 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= *(a3 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2 % v4;
  if (((a2 % v4) & 0x8000000000000000) == 0)
  {
    v8 = result;
    v9 = *(a3 + v5 + 32);
    v10 = sub_1922261D0();
    (*(*(v10 - 8) + 16))(v8, a4 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v6, v10);
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1921F9ED0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = a2 / v4;
  if (a2 / v4 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= *(a3 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = a2 % v4;
  if (a2 % v4 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(a3 + 8 * v5 + 32);
  v10 = sub_1922261D0();
  (*(*(v10 - 8) + 16))(v8, a4 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v6, v10);
}

uint64_t sub_1921F9F9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = a3 / v5;
  if (a3 / v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6 >= *(a4 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = a3 % v5;
  v12 = *(type metadata accessor for ViewableTimelineEntry() - 8);
  result = sub_1921FCF60(a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v6, v10, type metadata accessor for ViewableTimelineEntry);
  if (v11 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = sub_1922261D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = a5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11;

  return v15(a2, v16, v13);
}

uint64_t sub_1921FA0E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25B8, &qword_192244898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921FCEB8();
  sub_192228B90();
  LOBYTE(v16) = 0;
  sub_1922251B0();
  sub_1921FABAC(&qword_1EADEDEE0, MEMORY[0x1E69695A8]);
  sub_1922288C0();
  if (!v2)
  {
    v11 = type metadata accessor for ActivityViewStates.Metadata(0);
    v16 = *(v3 + v11[5]);
    v12 = v16;
    HIBYTE(v15) = 1;
    sub_1920E2830();
    v13 = v12;
    sub_1922288C0();

    v16 = *(v3 + v11[6]);
    HIBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05B0, &qword_192234B78);
    sub_1921FD028(&qword_1EADED3A0, sub_1921FD0A0);
    sub_1922288C0();
    v16 = *(v3 + v11[7]);
    HIBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    sub_192183950(&qword_1EADED3A8, sub_1921839D4);
    sub_1922288C0();
    LOBYTE(v16) = *(v3 + v11[8]);
    HIBYTE(v15) = 4;
    sub_19214E86C();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1921FA420(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1922251B0();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25B0, &unk_192244880);
  v21 = *(v25 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ActivityViewStates.Metadata(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921FCEB8();
  v24 = v9;
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v13;
    v17 = v21;
    v16 = v22;
    LOBYTE(v27) = 0;
    sub_1921FABAC(&qword_1EADED370, MEMORY[0x1E69695A8]);
    v18 = v23;
    sub_1922287C0();
    (*(v16 + 32))(v15, v18, v4);
    v26 = 1;
    sub_192044634();
    sub_1922287C0();
    *(v15 + v10[5]) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF05B0, &qword_192234B78);
    v26 = 2;
    sub_1921FD028(&qword_1EADECF38, sub_1921FCF0C);
    v23 = 0;
    sub_1922287C0();
    *(v15 + v10[6]) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1670, &qword_192244890);
    v26 = 3;
    sub_192183950(&qword_1EADECF40, sub_192183894);
    sub_1922287C0();
    *(v15 + v10[7]) = v27;
    v26 = 4;
    sub_19214E968();
    sub_1922287C0();
    (*(v17 + 8))(v24, v25);
    *(v15 + v10[8]) = v27;
    sub_1921FCF60(v15, v20, type metadata accessor for ActivityViewStates.Metadata);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1921FCFC8(v15, type metadata accessor for ActivityViewStates.Metadata);
  }
}

uint64_t sub_1921FA9A4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7367615477656976;
  v4 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v4 = 0x6465766968637261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6E6F7269766E65;
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

uint64_t sub_1921FAA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1921FD22C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921FAA74(uint64_t a1)
{
  v2 = sub_1921FCEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921FAAB0(uint64_t a1)
{
  v2 = sub_1921FCEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921FABAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1921FABF4(uint64_t a1, uint64_t a2)
{
  v152 = a2;
  v162 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEECA0, &qword_19222B090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  *&v153 = &v135 - v4;
  v155 = sub_1922259F0();
  v157 = *(v155 - 8);
  v5 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v139 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v135 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2598, &unk_192244860);
  v9 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v138 = &v135 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  *&v151 = &v135 - v15;
  v16 = sub_192225E00();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v150 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25A0, &unk_192244870);
  v19 = *(*(v149 - 8) + 64);
  MEMORY[0x1EEE9AC00](v149);
  v148 = (&v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v164 = (&v135 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v143 = &v135 - v25;
  v26 = sub_1922265A0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v135 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v135 - v35;
  MEMORY[0x1EEE9AC00](v37);
  *&v158 = &v135 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v135 - v40;
  *&v168.f64[0] = type metadata accessor for MetricsRequest();
  v145 = *(*&v168.f64[0] - 8);
  v42 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](*&v168.f64[0]);
  *&v147 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v146 = &v135 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v135 - v47);
  v161 = sub_1922261D0();
  v160 = *(v161 - 8);
  v49 = v160[8];
  MEMORY[0x1EEE9AC00](v161);
  v156 = &v135 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v159 = &v135 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v135 - v54;
  v163 = &v135 - v54;
  v56 = type metadata accessor for ActivityViewStates(0);
  v57 = *(v56 + 28);
  v166 = v56;
  v144 = sub_1921F9ED0(v55, v162, *(v167 + v57), *(v167 + v57 + 8));
  v140 = *(v56 + 24);
  v142 = v41;
  sub_192225EC0();
  v58 = *(v27 + 104);
  v58(v36, *MEMORY[0x1E697F680], v26);
  v58(v30, *MEMORY[0x1E697F648], v26);
  sub_1920E4394(v41, v30, v33);
  v59 = *(v27 + 8);
  v59(v30, v26);
  v60 = v158;
  sub_1920E2E24(v36, v33, v158);
  v59(v33, v26);
  v59(v36, v26);
  v141 = type metadata accessor for MetricsRequest;
  v61 = v167;
  v165 = v48;
  sub_1921FCF60(v167 + v140, v48, type metadata accessor for MetricsRequest);
  v62 = v48[3];
  v63 = v48[4];
  LODWORD(v140) = *(v48 + 40);
  v64 = v143;
  (*(v27 + 16))(v143, v60, v26);
  (*(v27 + 56))(v64, 0, 1, v26);
  v65 = v61;
  v66 = sub_192228110();
  v67 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v68 = [objc_opt_self() defaultMetrics];
  if (!v140)
  {
    v63 = v62;
  }

  v69 = v67;
  [v68 scaledValueForValue:v69 compatibleWithTraitCollection:v63];
  v71 = v70;

  v59(v158, v26);
  v59(v142, v26);
  v72 = v161;
  v73 = v164;
  v74 = v165;
  v165[3] = v62;
  *(v74 + 32) = v71;
  *(v74 + 40) = 1;
  v75 = v166;
  v76 = v166[10];
  sub_192033970(v65 + v76, &qword_1EADF1640, &qword_19223C560);
  v77 = v141;
  sub_1921FCF60(v74, v65 + v76, v141);
  (*(v145 + 56))(v65 + v76, 0, 1, *&v168.f64[0]);
  v78 = v75[11];
  sub_192033970(v65 + v78, &qword_1EADEF250, &qword_19222C6C0);
  v79 = v160;
  v80 = v160 + 2;
  v81 = v160[2];
  v82 = v163;
  v81(v65 + v78, v163, v72);
  (v79[7])(v65 + v78, 0, 1, v72);
  LOBYTE(v171) = 4;
  v83 = v165;
  v84 = v146;
  sub_1921FCF60(v165, v146, v77);
  sub_1920F7ADC(&v171, v84, v73 + *(v149 + 36));
  *v73 = v144;
  sub_19202CFFC(v73, v148, &qword_1EADF25A0, &unk_192244870);
  sub_1921FCD1C();
  *&v171 = sub_192227570();
  sub_1922264D0();
  v85 = v159;
  v81(v159, v82, v72);
  sub_192225DE0();
  sub_192225FF0();
  v149 = v80;
  v148 = v81;
  v81(v156, v85, v72);
  sub_192226360();
  v86 = v147;
  sub_1921FCF60(v83, v147, v77);
  v87 = v86;
  v88 = *v86;
  LOBYTE(v86) = *(v86 + 16);
  v89 = *(v87 + 24);
  LOBYTE(v85) = *(v87 + 40);
  sub_1921FCFC8(v87, type metadata accessor for MetricsRequest);
  v90 = v83;
  LOBYTE(v171) = v86;
  LOBYTE(v169) = v85;
  sub_192226370();
  v92 = v91;
  v94 = v93;
  v95 = v83 + *(*&v168.f64[0] + 40);
  v96 = v151;
  sub_19202CFFC(v95, v151, &qword_1EADEFD38, &qword_1922316A0);
  v97 = sub_192226600();
  LODWORD(v86) = (*(*(v97 - 8) + 48))(v96, 1, v97);
  sub_192033970(v96, &qword_1EADEFD38, &qword_1922316A0);
  if (v86 != 1)
  {
    *&v99 = *(v90 + 24);
LABEL_11:
    v103 = v157;
    v104 = v153;
    v105 = v164;
    v106 = v167;
    goto LABEL_12;
  }

  v101 = *(v90 + 24);
  if ((*(v90 + 40) & 1) == 0)
  {
    *&v99 = *(v90 + 24);
    goto LABEL_11;
  }

  v102 = *(v90 + 32);
  *&v99 = *(v90 + 24);
  if (v102 >= v94)
  {
    v102 = v94;
  }

  v103 = v157;
  v104 = v153;
  v105 = v164;
  v106 = v167;
  if (v102 > *&v99)
  {
    *&v99 = v102;
  }

LABEL_12:
  if (*(v90 + 16))
  {
    v107 = *(v90 + 8);
    *&v100 = *v90;
    if (v107 >= v92)
    {
      v107 = v92;
    }

    if (v107 > *v90)
    {
      *&v100 = v107;
    }
  }

  else
  {
    *&v100 = *v90;
  }

  v108 = *(v90 + 48);
  *&v98 = *(v90 + 104);
  *&v109.f64[0] = v100;
  *&v109.f64[1] = v99;
  v168 = v109;
  v158 = v98;
  if (*&v98 != 1.0)
  {
    v153 = v99;
    v151 = v100;
    sub_192225EA0();
    v111 = v110;
    v112 = v138;
    sub_19202CFFC(v105, v138, &qword_1EADF25A0, &unk_192244870);
    v113 = v112 + *(v137 + 36);
    v114 = v153;
    *v113 = v151;
    *(v113 + 8) = v114;
    v115 = v158;
    *(v113 + 16) = v108;
    *(v113 + 24) = v115;
    *(v113 + 32) = v111;
    sub_19202CFFC(v112, v136, &qword_1EADF2598, &unk_192244860);
    sub_1921FCDD8();
    *&v171 = sub_192227570();
    sub_1922264D0();
    sub_192225EA0();
    v168 = vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vmulq_n_f64(v168, *&v158), vdupq_lane_s64(COERCE__INT64(1.0 / v116 * 0.5), 0)), vdupq_lane_s64(COERCE__INT64(1.0 / v116), 0))), 1.0 / v116);
    v103 = v157;
    sub_192033970(v112, &qword_1EADF2598, &unk_192244860);
  }

  sub_1921F997C();
  sub_1922263F0();
  *&v151 = *(&v171 + 1);
  *&v153 = v171;
  LODWORD(v150) = LOBYTE(v172.f64[0]);
  sub_1921FCE64();
  sub_1922263F0();
  v117 = v171;
  v118 = LOBYTE(v172.f64[0]);
  v119 = v166[12];
  if (*(v106 + v119))
  {
    v120 = 1;
    v121 = v161;
    v122 = v159;
  }

  else
  {
    LODWORD(v146) = LOBYTE(v172.f64[0]);
    v147 = v171;
    sub_192226940();
    sub_1922263F0();
    v123 = *(v103 + 48);
    v124 = v103;
    v125 = v155;
    if (v123(v104, 1, v155) == 1)
    {
      (*(v124 + 104))(v154, *MEMORY[0x1E697DBA8], v125);
      if (v123(v104, 1, v125) != 1)
      {
        sub_192033970(v104, &unk_1EADEECA0, &qword_19222B090);
      }
    }

    else
    {
      (*(v124 + 32))(v154, v104, v125);
    }

    v122 = v159;
    v126 = sub_192225FB0();
    v106 = v167;
    v127 = v157;
    if (v126)
    {
      v128 = v155;
      (*(v157 + 104))(v139, *MEMORY[0x1E697DBA8], v155);
      v129 = v154;
    }

    else
    {
      v129 = v154;
      v128 = v155;
      (*(v157 + 16))(v139, v154, v155);
    }

    sub_192225E60();
    v121 = v161;
    v148(v156, v122, v161);
    sub_192226360();
    (*(v127 + 8))(v129, v128);
    v120 = *(v106 + v119);
    v105 = v164;
    v90 = v165;
    v117 = v147;
    v118 = v146;
  }

  LOBYTE(v169) = 0;
  v170 = 0;
  v171 = 0uLL;
  v172 = v168;
  v173 = v108 * *&v158;
  v174 = 0;
  v175 = v153;
  v176 = v151;
  v177 = v150;
  v178 = v117;
  v179 = v118;
  v180 = 0;
  v181 = v120;
  v130 = v166[9];
  v131 = *(v106 + v130);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v169 = *(v106 + v130);
  sub_19213DC78(&v171, v162, isUniquelyReferenced_nonNull_native);
  *(v106 + v130) = v169;
  sub_1922264A0();
  v133 = v160[1];
  v133(v122, v121);
  sub_192033970(v105, &qword_1EADF25A0, &unk_192244870);
  sub_1921FCFC8(v90, type metadata accessor for MetricsRequest);
  return (v133)(v163, v121);
}

uint64_t *sub_1921FBD48(CGImage *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = &v80 - v4;
  v5 = sub_1922261D0();
  v88 = *(v5 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1640, &qword_19223C560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v80 - v10);
  v12 = type metadata accessor for MetricsRequest();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = 91;
  v90 = 0xE100000000000000;
  LODWORD(Width) = CGImageGetIdentifier();
  v16 = sub_192228910();
  MEMORY[0x193B0A990](v16);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  Width = CGImageGetWidth(a1);
  v17 = sub_192228910();
  MEMORY[0x193B0A990](v17);

  MEMORY[0x193B0A990](120, 0xE100000000000000);
  v83 = a1;
  Width = CGImageGetHeight(a1);
  v18 = sub_192228910();
  MEMORY[0x193B0A990](v18);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v20 = v89;
  v19 = v90;
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v21 = sub_1922258B0();
  __swift_project_value_buffer(v21, qword_1ED74C788);

  v22 = sub_192225890();
  v23 = sub_192227FB0();

  v24 = os_log_type_enabled(v22, v23);
  v81 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v80 = v5;
    v26 = v25;
    v27 = v15;
    v28 = swift_slowAlloc();
    v89 = v28;
    *v26 = 136446210;
    v29 = v20;
    v30 = v19;
    *(v26 + 4) = sub_19202B8CC(v29, v19, &v89);
    _os_log_impl(&dword_192028000, v22, v23, "%{public}s Filtering image", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v31 = v28;
    v15 = v27;
    MEMORY[0x193B0C7F0](v31, -1, -1);
    v32 = v26;
    v5 = v80;
    MEMORY[0x193B0C7F0](v32, -1, -1);
  }

  else
  {
    v30 = v19;
  }

  v33 = type metadata accessor for ActivityViewStates(0);
  v34 = v87;
  sub_19202CFFC(v87 + *(v33 + 40), v11, &qword_1EADF1640, &qword_19223C560);
  if ((*(v85 + 48))(v11, 1, v86) == 1)
  {

    sub_192033970(v11, &qword_1EADF1640, &qword_19223C560);
    sub_1921FC8CC();
    swift_allocError();
    *v35 = xmmword_19223C490;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    swift_willThrow();
    return v11;
  }

  sub_1920F8D30(v11, v15);
  v36 = v34 + *(v33 + 44);
  v37 = v84;
  sub_19202CFFC(v36, v84, &qword_1EADEF250, &qword_19222C6C0);
  v38 = v30;
  if ((*(v88 + 48))(v37, 1, v5) == 1)
  {

    sub_192033970(v37, &qword_1EADEF250, &qword_19222C6C0);
    sub_1921FC8CC();
    swift_allocError();
    *v39 = 0xD000000000000013;
    *(v39 + 8) = 0x800000019224CB80;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    swift_willThrow();
LABEL_27:
    sub_1921FCFC8(v15, type metadata accessor for MetricsRequest);
    return v11;
  }

  v40 = v82;
  (*(v88 + 32))(v82, v37, v5);
  sub_192225EA0();
  v42 = v15 + 1;
  if (!*(v15 + 16))
  {
    v42 = v15;
  }

  v43 = fmax(v41 * *v42 * 1.2, 80.0);
  v44 = v15 + 3;
  if (*(v15 + 40))
  {
    v44 = v15 + 4;
  }

  v45 = fmax(v41 * *v44 * 1.2, 80.0);
  v46 = v83;
  if (v43 <= CGImageGetWidth(v83) || v45 <= CGImageGetHeight(v46))
  {
    v56 = sub_1921FC980(v43, v45);
    if (!v56)
    {

      v67 = sub_192225890();
      v68 = sub_192227FA0();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v89 = v11;
        *v69 = 136446722;
        v70 = sub_19202B8CC(v81, v38, &v89);
        v71 = v5;
        v72 = v70;

        *(v69 + 4) = v72;
        v5 = v71;
        *(v69 + 12) = 2050;
        *(v69 + 14) = v43;
        *(v69 + 22) = 2050;
        *(v69 + 24) = v45;
        _os_log_impl(&dword_192028000, v67, v68, "%{public}s Max size exceeded: %{public}fx%{public}f; unable to create placeholder image", v69, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x193B0C7F0](v11, -1, -1);
        v73 = v69;
        v46 = v83;
        MEMORY[0x193B0C7F0](v73, -1, -1);
      }

      else
      {
      }

      v74 = CGImageGetWidth(v46);
      v75 = v46;
      v76 = v74;
      Height = CGImageGetHeight(v75);
      sub_1921FC8CC();
      swift_allocError();
      *v78 = v76;
      *(v78 + 8) = Height;
      *(v78 + 16) = v43;
      *(v78 + 24) = v45;
      *(v78 + 32) = 1;
      swift_willThrow();
      (*(v88 + 8))(v40, v5);
      goto LABEL_27;
    }

    v11 = v56;

    v57 = sub_192225890();
    v58 = sub_192227FA0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v80 = v5;
      v61 = v60;
      v89 = v60;
      *v59 = 136446722;
      v62 = sub_19202B8CC(v81, v38, &v89);
      v63 = v88;
      v64 = v15;
      v65 = v62;

      *(v59 + 4) = v65;
      *(v59 + 12) = 2050;
      *(v59 + 14) = v43;
      *(v59 + 22) = 2050;
      *(v59 + 24) = v45;
      _os_log_impl(&dword_192028000, v57, v58, "%{public}s Max size exceeded: %{public}fx%{public}f; using placeholder image", v59, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x193B0C7F0](v61, -1, -1);
      MEMORY[0x193B0C7F0](v59, -1, -1);

      (*(v63 + 8))(v40, v80);
      v66 = v64;
    }

    else
    {

      (*(v88 + 8))(v40, v5);
      v66 = v15;
    }

    sub_1921FCFC8(v66, type metadata accessor for MetricsRequest);
  }

  else
  {

    v47 = sub_192225890();
    v48 = sub_192227FB0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v89 = v50;
      *v49 = 136446210;
      v51 = sub_19202B8CC(v81, v38, &v89);
      v52 = v88;
      v53 = v5;
      v54 = v51;

      *(v49 + 4) = v54;
      _os_log_impl(&dword_192028000, v47, v48, "%{public}s Image permitted", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x193B0C7F0](v50, -1, -1);
      v55 = v49;
      v46 = v83;
      MEMORY[0x193B0C7F0](v55, -1, -1);

      (*(v52 + 8))(v40, v53);
    }

    else
    {

      (*(v88 + 8))(v40, v5);
    }

    sub_1921FCFC8(v15, type metadata accessor for MetricsRequest);
    return v46;
  }

  return v11;
}

uint64_t sub_1921FC7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_1922251A0();
  v10 = *(v2 + 8);
  v6 = v10;
  WidgetEnvironment.filterForArchiving()();
  v7 = *(v2 + *(a1 + 36));
  LOBYTE(a1) = *(v4 + *(a1 + 48));
  v8 = type metadata accessor for ActivityViewStates.Metadata(0);
  *(a2 + v8[5]) = v10;
  *(a2 + v8[6]) = &unk_1F06A77D8;
  *(a2 + v8[7]) = v7;
  *(a2 + v8[8]) = a1;
}

unint64_t sub_1921FC8CC()
{
  result = qword_1EADF2590;
  if (!qword_1EADF2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2590);
  }

  return result;
}

void sub_1921FC948(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1921FC980(double a1, double a2)
{
  v4 = sub_192225400();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a1 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = __CGBitmapContextCreate(a1, a2, 4 * a1, DeviceRGB);

  if (!v11)
  {
    return 0;
  }

  v12 = CGRectMake();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v11;
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  CGRectGetMinX(v23);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  v22[1] = CGRectGetMidX(v24);
  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  CGRectGetMaxX(v25);
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  CGRectGetMinY(v26);
  v27.origin.x = v12;
  v27.origin.y = v14;
  v27.size.width = v16;
  v27.size.height = v18;
  CGRectGetMidY(v27);
  v28.origin.x = v12;
  v28.origin.y = v14;
  v28.size.width = v16;
  v28.size.height = v18;
  CGRectGetMaxY(v28);
  GenericRGB = CGColorCreateGenericRGB(0.25, 0.25, 0.25, 1.0);
  CGContextSetFillColorWithColor(v19, GenericRGB);

  sub_192227F10();
  sub_192227F20();
  sub_192227F20();
  sub_192227F20();
  sub_192227F20();
  CGContextClosePath(v19);
  (*(v5 + 104))(v9, *MEMORY[0x1E695EEB8], v4);
  sub_192227F30();
  (*(v5 + 8))(v9, v4);
  Image = CGBitmapContextCreateImage(v19);

  return Image;
}

unint64_t sub_1921FCD1C()
{
  result = qword_1EADEDE00;
  if (!qword_1EADEDE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF25A0, &unk_192244870);
    sub_1921FABAC(&qword_1EADED408, type metadata accessor for CommonActivityArchivingModifiers);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE00);
  }

  return result;
}

unint64_t sub_1921FCDD8()
{
  result = qword_1EADF25A8;
  if (!qword_1EADF25A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2598, &unk_192244860);
    sub_1921FCD1C();
    sub_1921C9904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25A8);
  }

  return result;
}

unint64_t sub_1921FCE64()
{
  result = qword_1EADED3C8;
  if (!qword_1EADED3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3C8);
  }

  return result;
}

unint64_t sub_1921FCEB8()
{
  result = qword_1EADEE288;
  if (!qword_1EADEE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE288);
  }

  return result;
}

unint64_t sub_1921FCF0C()
{
  result = qword_1EADED160;
  if (!qword_1EADED160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED160);
  }

  return result;
}

uint64_t sub_1921FCF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1921FCFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1921FD028(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF05B0, &qword_192234B78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1921FD0A0()
{
  result = qword_1EADEDA18;
  if (!qword_1EADEDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDA18);
  }

  return result;
}

unint64_t sub_1921FD128()
{
  result = qword_1EADF25C0;
  if (!qword_1EADF25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25C0);
  }

  return result;
}

unint64_t sub_1921FD180()
{
  result = qword_1EADEE278;
  if (!qword_1EADEE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE278);
  }

  return result;
}

unint64_t sub_1921FD1D8()
{
  result = qword_1EADEE280;
  if (!qword_1EADEE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE280);
  }

  return result;
}

uint64_t sub_1921FD22C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7367615477656976 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019224CBD0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEE00796C696D6146)
  {

    return 4;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ControlTemplateToggle.Option.init(value:action:icon:tint:status:actionHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a3;
  v17 = type metadata accessor for ControlTemplateToggle.Option(0);
  v18 = v17[6];
  v19 = sub_192226B70();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = v16;
  result = sub_19204193C(a4, &a9[v18], &qword_1EADEF720, &unk_19222E2F0);
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7 & 1;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v22 = a11;
  *(v22 + 1) = a12;
  return result;
}

uint64_t ControlTemplateToggle.init(title:subtitle:on:off:associatedURL:privacySensitive:disabled:accessibilityIdentifier:rasterizedImagesAllowed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v20 = type metadata accessor for ControlTemplateToggle(0);
  v21 = v20[8];
  v22 = sub_192225020();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = &a9[v20[11]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  sub_19212F420(a5, &a9[v20[6]]);
  sub_19212F420(a6, &a9[v20[7]]);
  result = sub_19204193C(a7, &a9[v21], &qword_1EADEEE10, &unk_19222B630);
  a9[v20[9]] = a8;
  a9[v20[10]] = a10;
  *v23 = a11;
  *(v23 + 1) = a12;
  a9[v20[12]] = a13;
  return result;
}

uint64_t ControlTemplateToggle.asPlaceholder()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v49 - v9;
  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v59 = qword_1EADECB30;
  v60 = *algn_1EADECB38;
  v11 = qword_1EADECB10;

  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v57 = qword_1EADECB18;
  v58 = qword_1EADECB20;
  v12 = qword_1EADEE988;

  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = *algn_1EADF1AC8;
  v54 = qword_1EADF1AC0;
  v14 = type metadata accessor for ControlTemplateToggle(0);
  v15 = v2 + v14[7];
  v53 = *(v15 + 16);
  v16 = type metadata accessor for ControlTemplateToggle.Option(0);
  v56 = v2;
  v17 = v16;
  v55 = *(v16 + 24);
  sub_19202CFFC(v15 + v55, v10, &qword_1EADEF720, &unk_19222E2F0);
  v19 = v17[6];
  v18 = v17[7];
  v49 = v19;
  v20 = (v15 + v18);
  v21 = *v20;
  v63 = v20[1];
  v64 = v21;
  v62 = *(v20 + 16);
  v22 = (a1 + v14[6]);
  v51 = sub_192226B70();
  v23 = *(v51 - 8);
  v50 = *(v23 + 56);
  v52 = v23 + 56;
  v50(v22 + v19, 1, 1, v51);
  v24 = v22 + v17[7];
  v25 = (v22 + v17[8]);
  v26 = (v22 + v17[9]);
  v27 = v53;
  *v22 = v54;
  v22[1] = v13;
  v22[2] = v27;
  v28 = v27;

  v29 = v22 + v49;
  v30 = v10;
  sub_19204193C(v10, v29, &qword_1EADEF720, &unk_19222E2F0);
  v31 = v63;
  *v24 = v64;
  *(v24 + 1) = v31;
  v24[16] = v62;
  *v25 = 0;
  v25[1] = 0;
  *v26 = 0;
  v26[1] = 0;
  v32 = *algn_1EADF1AC8;
  v54 = qword_1EADF1AC0;
  v33 = *(v15 + 16);
  sub_19202CFFC(v15 + v55, v10, &qword_1EADEF720, &unk_19222E2F0);
  v34 = (a1 + v14[7]);
  v35 = v17[6];
  v50(v34 + v35, 1, 1, v51);
  v36 = v34 + v17[7];
  v37 = (v34 + v17[8]);
  v38 = (v34 + v17[9]);
  *v34 = v54;
  v34[1] = v32;
  v34[2] = v33;
  v39 = v33;

  sub_19204193C(v30, v34 + v35, &qword_1EADEF720, &unk_19222E2F0);
  v40 = v63;
  *v36 = v64;
  *(v36 + 1) = v40;
  v36[16] = v62;
  *v37 = 0;
  v37[1] = 0;
  v41 = sub_192225020();
  *v38 = 0;
  v38[1] = 0;
  v42 = *(*(v41 - 8) + 56);
  v43 = v61;
  v42(v61, 1, 1, v41);
  v44 = v14[8];
  LOBYTE(v36) = *(v56 + v14[9]);
  LOBYTE(v33) = *(v56 + v14[10]);
  LOBYTE(v35) = *(v56 + v14[12]);
  v42(a1 + v44, 1, 1, v41);
  v45 = (a1 + v14[11]);
  v46 = v60;
  *a1 = v59;
  a1[1] = v46;
  v47 = v58;
  a1[2] = v57;
  a1[3] = v47;
  result = sub_19204193C(v43, a1 + v44, &qword_1EADEEE10, &unk_19222B630);
  *(a1 + v14[9]) = v36;
  *(a1 + v14[10]) = v33;
  *v45 = 0;
  v45[1] = 0;
  *(a1 + v14[12]) = v35;
  return result;
}

uint64_t ControlTemplateToggle.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v138 = a2;
  v141 = a1;
  v151 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v152 = &v133 - v6;
  v143 = sub_192226B50();
  v140 = *(v143 - 8);
  v7 = *(v140 + 64);
  v8 = MEMORY[0x1EEE9AC00](v143);
  v147 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v133 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v148 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v145 = &v133 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v142 = &v133 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v139 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v133 - v21;
  v23 = sub_192226B70();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v146 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v137 = &v133 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v153 = &v133 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v144 = &v133 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v135 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v133 - v36;
  v38 = type metadata accessor for ControlTemplateToggle.Option(0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v158 = (&v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v133 - v42);
  v44 = *v3;
  v45 = v3[1];
  v46 = v3[3];
  v149 = v3[2];
  v150 = v44;
  v163 = type metadata accessor for ControlTemplateToggle(0);
  v47 = v163[6];
  v154 = v3;
  v155 = v38;
  v48 = v3 + v47;
  sub_19202CFFC(v3 + v47 + *(v38 + 24), v22, &qword_1EADEF720, &unk_19222E2F0);
  v49 = *(v24 + 48);
  v160 = v23;
  v161 = v49;
  v162 = v24 + 48;
  v50 = v49(v22, 1, v23);
  v51 = MEMORY[0x1E697CB08];
  v156 = v46;
  v157 = v45;
  v159 = v43;
  if (v50 == 1)
  {

    sub_192033970(v22, &qword_1EADEF720, &unk_19222E2F0);
    sub_192201E90(v48, v43, type metadata accessor for ControlTemplateToggle.Option);
    v53 = v147;
    v52 = v148;
    v54 = v24;
    v56 = v153;
    v55 = v154;
    v57 = v146;
    v58 = v160;
    v59 = v158;
  }

  else
  {
    v60 = *(v24 + 32);
    v61 = v160;
    v134 = v24 + 32;
    v133 = v60;
    v60(v37, v22, v160);
    v62 = v144;
    (*(v24 + 16))(v144, v37, v61);
    v54 = v24;
    if ((*(v24 + 88))(v62, v61) == *v51)
    {
      v63 = v144;
      (*(v24 + 96))(v144, v61);
      v64 = v140;
      v65 = v136;
      v66 = v143;
      (*(v140 + 32))(v136, v63, v143);

      v67 = sub_192226AF0();
      v69 = sub_1921B01A8(v67, v68, v141);

      v70 = v139;
      if (v69)
      {
        sub_192226AA0();
        (*(v64 + 8))(v65, v66);
        v61 = v160;
        (*(v24 + 8))(v37, v160);
      }

      else
      {
        (*(v64 + 8))(v65, v66);
        v61 = v160;
        (*(v24 + 8))(v37, v160);
        (*(v24 + 56))(v70, 1, 1, v61);
      }
    }

    else
    {
      v71 = *(v24 + 8);

      v71(v37, v61);
      v70 = v139;
      (*(v24 + 56))(v139, 1, 1, v61);
      v71(v144, v61);
    }

    v72 = v161(v70, 1, v61);
    v73 = v48;
    if (v72 == 1)
    {
      sub_192033970(v70, &qword_1EADEF720, &unk_19222E2F0);
      sub_192201E90(v48, v159, type metadata accessor for ControlTemplateToggle.Option);
      v59 = v158;
      v53 = v147;
      v52 = v148;
      v56 = v153;
      v55 = v154;
      v57 = v146;
      v58 = v160;
    }

    else
    {
      v74 = v135;
      v75 = v70;
      v58 = v160;
      v76 = v133;
      v133(v135, v75, v160);
      v77 = v73[1];
      v144 = *v73;
      v139 = v77;
      v78 = v73[2];
      v79 = v142;
      v76(v142, v74, v58);
      v80 = *(v24 + 56);
      v80(v79, 0, 1, v58);
      v81 = v155;
      v82 = v155[6];
      v83 = (v73 + v155[7]);
      v84 = v83[1];
      v136 = *v83;
      v135 = v84;
      LODWORD(v134) = *(v83 + 16);
      v85 = v159;
      v80(v159 + v82, 1, 1, v58);
      v86 = v85 + v81[7];
      v87 = (v85 + v81[8]);
      v88 = (v85 + v81[9]);
      v89 = v139;
      *v85 = v144;
      v85[1] = v89;
      v85[2] = v78;
      v90 = v78;

      sub_19204193C(v79, v85 + v82, &qword_1EADEF720, &unk_19222E2F0);
      v91 = v135;
      *v86 = v136;
      *(v86 + 1) = v91;
      v86[16] = v134;
      *v87 = 0;
      v87[1] = 0;
      *v88 = 0;
      v88[1] = 0;
      v59 = v158;
      v53 = v147;
      v52 = v148;
      v56 = v153;
      v55 = v154;
      v57 = v146;
    }
  }

  v92 = (v55 + v163[7]);
  v93 = v145;
  sub_19202CFFC(v92 + v155[6], v145, &qword_1EADEF720, &unk_19222E2F0);
  if (v161(v93, 1, v58) == 1)
  {
    sub_192033970(v93, &qword_1EADEF720, &unk_19222E2F0);
    sub_192201E90(v92, v59, type metadata accessor for ControlTemplateToggle.Option);
    v94 = v59;
  }

  else
  {
    v160 = *(v54 + 32);
    v160(v56, v93, v58);
    (*(v54 + 16))(v57, v56, v58);
    if ((*(v54 + 88))(v57, v58) == *MEMORY[0x1E697CB08])
    {
      (*(v54 + 96))(v57, v58);
      v95 = v140;
      (*(v140 + 32))(v53, v57, v143);
      v96 = v53;
      v97 = sub_192226AF0();
      v99 = sub_1921B01A8(v97, v98, v141);

      if (v99)
      {
        v100 = v153;
        sub_192226AA0();
        (*(v95 + 8))(v96, v143);
        (*(v54 + 8))(v100, v58);
      }

      else
      {
        (*(v95 + 8))(v53, v143);
        (*(v54 + 8))(v153, v58);
        (*(v54 + 56))(v52, 1, 1, v58);
      }
    }

    else
    {
      v101 = v57;
      v102 = *(v54 + 8);
      v102(v56, v58);
      (*(v54 + 56))(v52, 1, 1, v58);
      v102(v101, v58);
    }

    if (v161(v52, 1, v58) == 1)
    {
      sub_192033970(v52, &qword_1EADEF720, &unk_19222E2F0);
      v94 = v158;
      sub_192201E90(v92, v158, type metadata accessor for ControlTemplateToggle.Option);
    }

    else
    {
      v103 = v137;
      v104 = v160;
      v160(v137, v52, v58);
      v105 = v92[1];
      v162 = *v92;
      v106 = v92[2];
      v107 = v142;
      v104(v142, v103, v58);
      v108 = *(v54 + 56);
      v108(v107, 0, 1, v58);
      v109 = v155;
      v110 = v155[6];
      v111 = v92 + v155[7];
      v112 = *v111;
      v161 = *(v111 + 1);
      LODWORD(v160) = v111[16];
      v94 = v158;
      v108(v158 + v110, 1, 1, v58);
      v113 = v94 + v109[7];
      v114 = (v94 + v109[8]);
      v115 = v109[9];
      v55 = v154;
      v116 = (v94 + v115);
      *v94 = v162;
      v94[1] = v105;
      v94[2] = v106;
      v117 = v106;

      sub_19204193C(v107, v94 + v110, &qword_1EADEF720, &unk_19222E2F0);
      v118 = v161;
      *v113 = v112;
      *(v113 + 1) = v118;
      v113[16] = v160;
      *v114 = 0;
      v114[1] = 0;
      *v116 = 0;
      v116[1] = 0;
    }
  }

  v119 = v163;
  v120 = v152;
  sub_19202CFFC(v55 + v163[8], v152, &qword_1EADEEE10, &unk_19222B630);
  v121 = v119[8];
  LODWORD(v162) = *(v55 + v119[9]);
  v122 = v119[11];
  v123 = *(v55 + v119[10]);
  v125 = *(v55 + v122);
  v124 = *(v55 + v122 + 8);
  v126 = *(v55 + v119[12]);
  v127 = sub_192225020();
  v128 = v151;
  (*(*(v127 - 8) + 56))(v151 + v121, 1, 1, v127);
  v129 = (v128 + v119[11]);
  v130 = v157;
  *v128 = v150;
  v128[1] = v130;
  v131 = v156;
  v128[2] = v149;
  v128[3] = v131;
  sub_19212F420(v159, v128 + v119[6]);
  sub_19212F420(v94, v128 + v119[7]);

  result = sub_19204193C(v120, v128 + v121, &qword_1EADEEE10, &unk_19222B630);
  *(v128 + v119[9]) = v162;
  *(v128 + v119[10]) = v123;
  *v129 = v125;
  v129[1] = v124;
  *(v128 + v119[12]) = v126;
  return result;
}

uint64_t ControlTemplateToggle.vectorGlyphAssetLibraryDatas.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v36 - v3;
  v5 = sub_192226B70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplateToggle.Option(0);
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25C8, &qword_192244AC0);
  v15 = *(v10 + 72);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v41 = swift_allocObject();
  v17 = v41 + v16;
  v18 = type metadata accessor for ControlTemplateToggle(0);
  sub_192201E90(v0 + *(v18 + 24), v17, type metadata accessor for ControlTemplateToggle.Option);
  v19 = *(v18 + 28);
  v20 = v5;
  v44 = v0;
  sub_192201E90(v0 + v19, v17 + v15, type metadata accessor for ControlTemplateToggle.Option);
  v43 = v9;
  v21 = *(v9 + 24);
  sub_192201E90(v17, v14, type metadata accessor for ControlTemplateToggle.Option);
  v40 = v21;
  sub_19202CFFC(&v14[v21], v4, &qword_1EADEF720, &unk_19222E2F0);
  sub_192201F5C(v14, type metadata accessor for ControlTemplateToggle.Option);
  v22 = (v6 + 32);
  v42 = v6;
  v23 = *(v6 + 48);
  v24 = v23(v4, 1, v20);
  v45 = (v6 + 32);
  if (v24 == 1)
  {
    sub_192033970(v4, &qword_1EADEF720, &unk_19222E2F0);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = v39;
  }

  else
  {
    v26 = v39;
    v37 = *v22;
    v38 = v20;
    v37(v39, v4, v20);
    v25 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1920C2FCC(0, *(v25 + 2) + 1, 1, v25);
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1920C2FCC(v27 > 1, v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    v29 = &v25[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28];
    v20 = v38;
    v37(v29, v26, v38);
  }

  sub_192201E90(v17 + v15, v14, type metadata accessor for ControlTemplateToggle.Option);
  sub_19202CFFC(&v14[v40], v4, &qword_1EADEF720, &unk_19222E2F0);
  sub_192201F5C(v14, type metadata accessor for ControlTemplateToggle.Option);
  if (v23(v4, 1, v20) == 1)
  {
    sub_192033970(v4, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v30 = *v45;
    (*v45)(v26, v4, v20);
    v31 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1920C2FCC(0, *(v25 + 2) + 1, 1, v25);
    }

    v33 = *(v25 + 2);
    v32 = *(v25 + 3);
    if (v33 >= v32 >> 1)
    {
      v25 = sub_1920C2FCC(v32 > 1, v33 + 1, 1, v25);
    }

    *(v25 + 2) = v33 + 1;
    v30(&v25[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33], v26, v31);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = sub_1920E9964(v25);

  return v34;
}

uint64_t ControlTemplateToggle.validateIcon(_:)(void (*a1)(char *), uint64_t a2)
{
  v29 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = sub_192226B70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = type metadata accessor for ControlTemplateToggle(0);
  v17 = *(v16 + 24);
  v27 = v2;
  v18 = v2 + v17;
  v19 = type metadata accessor for ControlTemplateToggle.Option(0);
  sub_19202CFFC(v18 + *(v19 + 24), v8, &qword_1EADEF720, &unk_19222E2F0);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_192033970(v8, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v21 = v30;
    v29(v15);
    if (v21)
    {
      return (*(v10 + 8))(v15, v9);
    }

    (*(v10 + 8))(v15, v9);
  }

  v22 = *(v16 + 28);
  v23 = v28;
  sub_19202CFFC(v27 + v22 + *(v19 + 24), v28, &qword_1EADEF720, &unk_19222E2F0);
  if (v20(v23, 1, v9) == 1)
  {
    return sub_192033970(v23, &qword_1EADEF720, &unk_19222E2F0);
  }

  v15 = v26;
  (*(v10 + 32))(v26, v23, v9);
  v29(v15);
  return (*(v10 + 8))(v15, v9);
}

uint64_t ControlTemplateToggle.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - v5;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000022, 0x800000019224E9B0);
  if (v0[1])
  {
    v7 = *v0;
    v8 = v0[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x193B0A990](v7, v8);

  MEMORY[0x193B0A990](0x627573202020200ALL, 0xEF203A656C746974);
  if (v0[3])
  {
    v9 = v0[2];
    v10 = v0[3];
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x193B0A990](v9, v10);

  MEMORY[0x193B0A990](0x736964202020200ALL, 0xEF203A64656C6261);
  v11 = type metadata accessor for ControlTemplateToggle(0);
  if (*(v0 + v11[10]))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + v11[10]))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v12, v13);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x800000019224A1C0);
  v14 = (v0 + v11[11]);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x193B0A990](v15, v16);

  MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224E9E0);
  v17 = v11[6];
  v18 = (v0 + v17);
  if (*(v0 + v17 + 8))
  {
    v19 = *v18;
    v20 = *(v0 + v17 + 8);
  }

  else
  {
    v20 = 0xE300000000000000;
    v19 = 7104878;
  }

  MEMORY[0x193B0A990](v19, v20);

  v53 = "\n    on:\n        value: ";
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224EA00);
  v55 = v18[2];
  v21 = ControlAction.description.getter();
  MEMORY[0x193B0A990](v21);

  v52 = "\n        action: ";
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224EA20);
  v22 = type metadata accessor for ControlTemplateToggle.Option(0);
  v23 = (v18 + v22[8]);
  if (v23[1])
  {
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v25 = 0xE300000000000000;
    v24 = 7104878;
  }

  MEMORY[0x193B0A990](v24, v25);

  v51 = "\n        status: ";
  MEMORY[0x193B0A990](0xD000000000000015, 0x800000019224EA40);
  v26 = (v18 + v22[9]);
  if (v26[1])
  {
    v27 = *v26;
    v28 = v26[1];
  }

  else
  {
    v28 = 0xE300000000000000;
    v27 = 7104878;
  }

  MEMORY[0x193B0A990](v27, v28);

  MEMORY[0x193B0A990](0x202020202020200ALL, 0xEF203A6E6F636920);
  sub_19202CFFC(v18 + v22[6], v6, &qword_1EADEF720, &unk_19222E2F0);
  v29 = sub_192226B70();
  v30 = *(v29 - 8);
  v50 = *(v30 + 48);
  if (v50(v6, 1, v29) == 1)
  {
    sub_192033970(v6, &qword_1EADEF720, &unk_19222E2F0);
    v31 = 0xE300000000000000;
    v32 = 7104878;
  }

  else
  {
    v32 = sub_192226AB0();
    v31 = v33;
    (*(v30 + 8))(v6, v29);
  }

  MEMORY[0x193B0A990](v32, v31);

  MEMORY[0x193B0A990](0xD000000000000019, 0x800000019224EA60);
  v34 = (v0 + v11[7]);
  if (v34[1])
  {
    v35 = *v34;
    v36 = v34[1];
  }

  else
  {
    v36 = 0xE300000000000000;
    v35 = 7104878;
  }

  MEMORY[0x193B0A990](v35, v36);

  MEMORY[0x193B0A990](0xD000000000000011, v53 | 0x8000000000000000);
  v55 = v34[2];
  v37 = ControlAction.description.getter();
  MEMORY[0x193B0A990](v37);

  MEMORY[0x193B0A990](0xD000000000000011, v52 | 0x8000000000000000);
  v38 = (v34 + v22[8]);
  if (v38[1])
  {
    v39 = *v38;
    v40 = v38[1];
  }

  else
  {
    v40 = 0xE300000000000000;
    v39 = 7104878;
  }

  MEMORY[0x193B0A990](v39, v40);

  MEMORY[0x193B0A990](0xD000000000000015, v51 | 0x8000000000000000);
  v41 = (v34 + v22[9]);
  if (v41[1])
  {
    v42 = *v41;
    v43 = v41[1];
  }

  else
  {
    v43 = 0xE300000000000000;
    v42 = 7104878;
  }

  MEMORY[0x193B0A990](v42, v43);

  MEMORY[0x193B0A990](0x202020202020200ALL, 0xEF203A6E6F636920);
  v44 = v54;
  sub_19202CFFC(v34 + v22[6], v54, &qword_1EADEF720, &unk_19222E2F0);
  if (v50(v44, 1, v29) == 1)
  {
    sub_192033970(v44, &qword_1EADEF720, &unk_19222E2F0);
    v45 = 0xE300000000000000;
    v46 = 7104878;
  }

  else
  {
    v47 = sub_192226AB0();
    v45 = v48;
    (*(v30 + 8))(v44, v29);
    v46 = v47;
  }

  MEMORY[0x193B0A990](v46, v45);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return v56;
}

uint64_t sub_1921FF84C()
{
  v0 = type metadata accessor for ControlTemplateToggle(0);
  __swift_allocate_value_buffer(v0, qword_1EADECAE8);
  v1 = __swift_project_value_buffer(v0, qword_1EADECAE8);
  return sub_1921FF898(v1);
}

uint64_t sub_1921FF898@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v38 = &v37 - v6;
  v8 = type metadata accessor for ControlTemplateToggle.Option(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_192226B70();
  v17 = *(*(v16 - 8) + 56);
  v17(v7, 1, 1, v16);
  v18 = v9[8];
  v17(&v15[v18], 1, 1, v16);
  v19 = &v15[v9[9]];
  v20 = &v15[v9[10]];
  v21 = &v15[v9[11]];
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = 0;
  v22 = &v15[v18];
  v23 = v38;
  sub_19204193C(v38, v22, &qword_1EADEF720, &unk_19222E2F0);
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *v20 = 0;
  *(v20 + 1) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  v24 = v23;
  v17(v23, 1, 1, v16);
  v25 = v9[8];
  v17(&v12[v25], 1, 1, v16);
  v26 = &v12[v9[9]];
  v27 = &v12[v9[10]];
  v28 = &v12[v9[11]];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 0;
  sub_19204193C(v24, &v12[v25], &qword_1EADEF720, &unk_19222E2F0);
  *v26 = 0;
  *(v26 + 1) = 0;
  v26[16] = 1;
  *v27 = 0;
  *(v27 + 1) = 0;
  v29 = type metadata accessor for ControlTemplateToggle(0);
  *v28 = 0;
  *(v28 + 1) = 0;
  v30 = v39;
  sub_192201E90(v12, &v39[v29[6]], type metadata accessor for ControlTemplateToggle.Option);
  sub_192201E90(v15, &v30[v29[7]], type metadata accessor for ControlTemplateToggle.Option);
  v31 = sub_192225020();
  v32 = *(*(v31 - 8) + 56);
  v33 = v40;
  v32(v40, 1, 1, v31);
  v34 = v29[8];
  v32(&v30[v34], 1, 1, v31);
  v35 = &v30[v29[11]];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  sub_19204193C(v33, &v30[v34], &qword_1EADEEE10, &unk_19222B630);
  v30[v29[9]] = 0;
  v30[v29[10]] = 0;
  *v35 = 0;
  *(v35 + 1) = 0;
  v30[v29[12]] = 0;
  sub_192201F5C(v12, type metadata accessor for ControlTemplateToggle.Option);
  return sub_192201F5C(v15, type metadata accessor for ControlTemplateToggle.Option);
}

uint64_t static ControlTemplateToggle.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  return sub_192201E90(v3, a1, type metadata accessor for ControlTemplateToggle);
}

uint64_t static ControlTemplateToggle.empty.setter(uint64_t a1)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  sub_192201EF8(a1, v3);
  swift_endAccess();
  return sub_192201F5C(a1, type metadata accessor for ControlTemplateToggle);
}

uint64_t (*static ControlTemplateToggle.empty.modify())()
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ControlTemplateToggle(0);
  __swift_project_value_buffer(v0, qword_1EADECAE8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921FFE20@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  return sub_192201E90(v3, a1, type metadata accessor for ControlTemplateToggle);
}

uint64_t sub_1921FFEC0(uint64_t a1)
{
  if (qword_1EADECAE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateToggle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADECAE8);
  swift_beginAccess();
  sub_192201EF8(a1, v3);
  return swift_endAccess();
}

id ControlTemplateToggle.Option.action.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void ControlTemplateToggle.Option.action.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

uint64_t ControlTemplateToggle.Option.tint.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t ControlTemplateToggle.Option.tint.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ControlTemplateToggle.Option(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t ControlTemplateToggle.Option.status.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplateToggle.Option.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplateToggle.Option.actionHint.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplateToggle.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateToggle.Option(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_192200308()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 1953393012;
  v4 = 0x737574617473;
  if (v1 != 4)
  {
    v4 = 0x69486E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F69746361;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1922003AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192202F68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1922003D4(uint64_t a1)
{
  v2 = sub_19220291C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192200410(uint64_t a1)
{
  v2 = sub_19220291C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateToggle.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25D0, &qword_192244AC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220291C();
  sub_192228B90();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  sub_192228830();
  if (!v2)
  {
    *&v26 = v3[2];
    v13 = v26;
    v28 = 1;
    sub_1920ECE4C();
    v14 = v13;
    sub_1922288C0();

    v15 = type metadata accessor for ControlTemplateToggle.Option(0);
    v16 = v15[6];
    LOBYTE(v26) = 2;
    sub_192226B70();
    sub_192202970(&qword_1EADEE4B0, MEMORY[0x1E697CB10]);
    sub_192228850();
    v17 = v3 + v15[7];
    v18 = v17[16];
    v26 = *v17;
    v27 = v18;
    v28 = 3;
    sub_1920CF350();
    sub_192228850();
    v19 = (v3 + v15[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v26) = 4;
    sub_192228830();
    v22 = (v3 + v15[9]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v26) = 5;
    sub_192228830();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ControlTemplateToggle.Option.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25D8, &qword_192244AD0);
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for ControlTemplateToggle.Option(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v15 + 24);
  v17 = sub_192226B70();
  v18 = *(*(v17 - 8) + 56);
  v47 = v16;
  v19 = v14;
  v18(v14 + v16, 1, 1, v17);
  v20 = a1[3];
  v21 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_19220291C();
  v45 = v10;
  v22 = v46;
  sub_192228B70();
  if (v22)
  {
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_1(v48);

    sub_192033970(v19 + v25, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v46 = v6;
    v41 = v11;
    v24 = v43;
    v23 = v44;
    LOBYTE(v49) = 0;
    *v19 = sub_192228730();
    v19[1] = v26;
    v51 = 1;
    sub_1920ECEA0();
    sub_1922287C0();
    v27 = v47;
    v19[2] = v49;
    LOBYTE(v49) = 2;
    sub_192202970(&qword_1EADEDCE8, MEMORY[0x1E697CB10]);
    v28 = v46;
    sub_192228750();
    sub_19204193C(v28, v19 + v27, &qword_1EADEF720, &unk_19222E2F0);
    v51 = 3;
    sub_1920CF44C();
    sub_192228750();
    v29 = v41;
    v30 = v19 + *(v41 + 28);
    v31 = v50;
    *v30 = v49;
    v30[16] = v31;
    LOBYTE(v49) = 4;
    v32 = sub_192228730();
    v33 = (v19 + *(v29 + 32));
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v49) = 5;
    v35 = sub_192228730();
    v36 = v29;
    v38 = v37;
    v39 = (v19 + *(v36 + 36));
    (*(v24 + 8))(v45, v23);
    *v39 = v35;
    v39[1] = v38;
    sub_192201E90(v19, v42, type metadata accessor for ControlTemplateToggle.Option);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_192201F5C(v19, type metadata accessor for ControlTemplateToggle.Option);
  }
}

uint64_t ControlTemplateToggle.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ControlTemplateToggle.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlTemplateToggle.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ControlTemplateToggle.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ControlTemplateToggle.on.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlTemplateToggle(0) + 24);

  return sub_1922029B8(a1, v3);
}

uint64_t ControlTemplateToggle.off.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlTemplateToggle(0) + 28);

  return sub_1922029B8(a1, v3);
}

uint64_t ControlTemplateToggle.privacySensitive.setter(char a1)
{
  result = type metadata accessor for ControlTemplateToggle(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlTemplateToggle.disabled.setter(char a1)
{
  result = type metadata accessor for ControlTemplateToggle(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ControlTemplateToggle.accessibilityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlTemplateToggle(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlTemplateToggle.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateToggle(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplateToggle.rasterizedImagesAllowed.setter(char a1)
{
  result = type metadata accessor for ControlTemplateToggle(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

unint64_t sub_192201270(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x656C746974;
    v5 = 28271;
    if (a1 != 2)
    {
      v5 = 6710895;
    }

    if (a1)
    {
      v4 = 0x656C746974627573;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64656C6261736964;
    if (a1 != 6)
    {
      v1 = 0xD000000000000017;
    }

    v2 = 0x746169636F737361;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_192201390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192203160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1922013B8(uint64_t a1)
{
  v2 = sub_192202A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1922013F4(uint64_t a1)
{
  v2 = sub_192202A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateToggle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25E0, &qword_192244AD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192202A1C();
  sub_192228B90();
  v11 = *v3;
  v12 = v3[1];
  v26[31] = 0;
  sub_192228830();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v26[30] = 1;
    sub_192228830();
    v16 = type metadata accessor for ControlTemplateToggle(0);
    v17 = v16[6];
    v26[29] = 2;
    type metadata accessor for ControlTemplateToggle.Option(0);
    sub_192202970(&qword_1EADECAD8, type metadata accessor for ControlTemplateToggle.Option);
    sub_1922288C0();
    v18 = v16[7];
    v26[28] = 3;
    sub_1922288C0();
    v19 = v16[8];
    v26[27] = 4;
    sub_192225020();
    sub_192202970(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
    sub_192228850();
    v20 = *(v3 + v16[9]);
    v26[26] = 5;
    sub_192228870();
    v21 = *(v3 + v16[10]);
    v26[25] = 6;
    sub_192228870();
    v22 = (v3 + v16[11]);
    v23 = *v22;
    v24 = v22[1];
    v26[24] = 7;
    sub_192228830();
    v25 = *(v3 + v16[12]);
    v26[15] = 8;
    sub_192228870();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ControlTemplateToggle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v49 - v5;
  v6 = type metadata accessor for ControlTemplateToggle.Option(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF25E8, &qword_192244AE0);
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v15 = &v49 - v14;
  v16 = type metadata accessor for ControlTemplateToggle(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v20;
  v21 = v20[8];
  v22 = sub_192225020();
  v23 = *(*(v22 - 8) + 56);
  v59 = v21;
  v24 = v19;
  v23(v19 + v21, 1, 1, v22);
  v25 = a1[3];
  v26 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_192202A1C();
  v56 = v15;
  v27 = v61;
  sub_192228B70();
  if (v27)
  {
    v61 = v27;
    v28 = 0;
    v29 = 0;
    v31 = v58;
    v30 = v59;
  }

  else
  {
    v51 = v22;
    v52 = v12;
    v70 = 0;
    *v24 = sub_192228730();
    v24[1] = v33;
    v69 = 1;
    v34 = sub_192228730();
    v61 = 0;
    v31 = v58;
    v24[2] = v34;
    v24[3] = v35;
    v68 = 2;
    v36 = sub_192202970(&unk_1EADED048, type metadata accessor for ControlTemplateToggle.Option);
    v50 = v24;
    v37 = v52;
    v49 = v36;
    v38 = v61;
    sub_1922287C0();
    v61 = v38;
    v30 = v59;
    if (v38)
    {
      (*(v55 + 8))(v56, v57);
      v28 = 0;
      v29 = 0;
      v24 = v50;
    }

    else
    {
      sub_19212F420(v37, v50 + v31[6]);
      v67 = 3;
      v39 = v61;
      sub_1922287C0();
      v61 = v39;
      if (v39)
      {
        (*(v55 + 8))(v56, v57);
        v29 = 0;
        v28 = 1;
        v24 = v50;
      }

      else
      {
        v24 = v50;
        sub_19212F420(v9, v50 + v31[7]);
        v66 = 4;
        sub_192202970(qword_1ED7488E8, MEMORY[0x1E6968FB0]);
        v40 = v54;
        v41 = v61;
        sub_192228750();
        v61 = v41;
        if (!v41)
        {
          sub_19204193C(v40, v24 + v30, &qword_1EADEEE10, &unk_19222B630);
          v65 = 5;
          v42 = v61;
          v43 = sub_192228770();
          if (!v42)
          {
            *(v24 + v31[9]) = v43 & 1;
            v64 = 6;
            *(v24 + v31[10]) = sub_192228770() & 1;
            v63 = 7;
            v44 = sub_192228730();
            v45 = (v24 + v31[11]);
            *v45 = v44;
            v45[1] = v46;
            v62 = 8;
            v47 = sub_192228770();
            v61 = 0;
            v48 = v47;
            (*(v55 + 8))(v56, v57);
            *(v24 + v31[12]) = v48 & 1;
            sub_192201E90(v24, v53, type metadata accessor for ControlTemplateToggle);
            __swift_destroy_boxed_opaque_existential_1(v60);
            return sub_192201F5C(v24, type metadata accessor for ControlTemplateToggle);
          }

          v61 = v42;
        }

        (*(v55 + 8))(v56, v57);
        v28 = 1;
        v29 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v60);

  if (v28)
  {
    sub_192201F5C(v24 + v31[6], type metadata accessor for ControlTemplateToggle.Option);
  }

  if (v29)
  {
    sub_192201F5C(v24 + v31[7], type metadata accessor for ControlTemplateToggle.Option);
  }

  sub_192033970(v24 + v30, &qword_1EADEEE10, &unk_19222B630);
}

uint64_t sub_192201E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192201EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateToggle(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_192201F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WidgetKit21ControlTemplateToggleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v18)
  {
    goto LABEL_26;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v20)
  {
    goto LABEL_26;
  }

  v21 = type metadata accessor for ControlTemplateToggle(0);
  if (!_s9WidgetKit21ControlTemplateToggleV6OptionV2eeoiySbAE_AEtFZ_0((a1 + v21[6]), (a2 + v21[6])) || !_s9WidgetKit21ControlTemplateToggleV6OptionV2eeoiySbAE_AEtFZ_0((a1 + v21[7]), (a2 + v21[7])))
  {
    goto LABEL_26;
  }

  v22 = v21[8];
  v23 = *(v13 + 48);
  sub_19202CFFC(a1 + v22, v16, &qword_1EADEEE10, &unk_19222B630);
  v35 = v23;
  sub_19202CFFC(a2 + v22, &v16[v23], &qword_1EADEEE10, &unk_19222B630);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) != 1)
  {
    sub_19202CFFC(v16, v12, &qword_1EADEEE10, &unk_19222B630);
    if (v24(&v16[v35], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v35], v4);
      sub_192202970(&qword_1EADECF08, MEMORY[0x1E6968FB0]);
      v25 = sub_192227910();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      sub_192033970(v16, &qword_1EADEEE10, &unk_19222B630);
      if ((v25 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    (*(v5 + 8))(v12, v4);
LABEL_22:
    sub_192033970(v16, &qword_1EADEF7D0, &qword_19222E728);
    goto LABEL_26;
  }

  if (v24(&v16[v35], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  sub_192033970(v16, &qword_1EADEEE10, &unk_19222B630);
LABEL_24:
  if (*(a1 + v21[9]) != *(a2 + v21[9]) || *(a1 + v21[10]) != *(a2 + v21[10]))
  {
    goto LABEL_26;
  }

  v29 = v21[11];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_35:
    v27 = *(a1 + v21[12]) ^ *(a2 + v21[12]) ^ 1;
    return v27 & 1;
  }

  if (!v33)
  {
    goto LABEL_35;
  }

LABEL_26:
  v27 = 0;
  return v27 & 1;
}

BOOL _s9WidgetKit21ControlTemplateToggleV6OptionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v54 = v5;
  v19 = a1[2];
  v20 = a2[2];
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    sub_1920EDA18();
    v21 = v20;
    v22 = v19;
    v23 = v21;
    v24 = v22;
    v25 = sub_1922281D0();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v53 = type metadata accessor for ControlTemplateToggle.Option(0);
  v26 = *(v53 + 24);
  v27 = *(v13 + 48);
  sub_19202CFFC(a1 + v26, v16, &qword_1EADEF720, &unk_19222E2F0);
  sub_19202CFFC(a2 + v26, &v16[v27], &qword_1EADEF720, &unk_19222E2F0);
  v28 = v54;
  v29 = *(v54 + 48);
  if (v29(v16, 1, v4) != 1)
  {
    sub_19202CFFC(v16, v12, &qword_1EADEF720, &unk_19222E2F0);
    if (v29(&v16[v27], 1, v4) != 1)
    {
      (*(v28 + 32))(v8, &v16[v27], v4);
      sub_192202970(&qword_1EADEF7E0, MEMORY[0x1E697CB10]);
      v31 = sub_192227910();
      v32 = *(v28 + 8);
      v32(v8, v4);
      v32(v12, v4);
      sub_192033970(v16, &qword_1EADEF720, &unk_19222E2F0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }

    (*(v28 + 8))(v12, v4);
LABEL_18:
    sub_192033970(v16, &qword_1EADEF7D8, qword_19222E730);
    return 0;
  }

  if (v29(&v16[v27], 1, v4) != 1)
  {
    goto LABEL_18;
  }

  sub_192033970(v16, &qword_1EADEF720, &unk_19222E2F0);
LABEL_22:
  v33 = v53;
  v34 = *(v53 + 28);
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 16);
  v37 = a2 + v34;
  v38 = v37[16];
  if (v36)
  {
    if ((v37[16] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v37[16])
    {
      return 0;
    }

    v40 = *v35;
    v39 = v35[1];
    v42 = *v37;
    v41 = *(v37 + 1);
    if ((sub_192227290() & 1) == 0)
    {
      return 0;
    }
  }

  v43 = *(v33 + 32);
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v48 = *(v33 + 36);
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (v50)
  {
    return v52 && (*v49 == *v51 && v50 == v52 || (sub_1922289A0() & 1) != 0);
  }

  return !v52;
}

unint64_t sub_19220291C()
{
  result = qword_1EADED860;
  if (!qword_1EADED860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED860);
  }

  return result;
}

uint64_t sub_192202970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1922029B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateToggle.Option(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_192202A1C()
{
  result = qword_1EADED878;
  if (!qword_1EADED878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED878);
  }

  return result;
}

uint64_t sub_192202A70(void *a1)
{
  a1[1] = sub_192202970(&qword_1EADED848, type metadata accessor for ControlTemplateToggle);
  a1[2] = sub_192202970(&qword_1EADED040, type metadata accessor for ControlTemplateToggle);
  result = sub_192202970(&qword_1EADED038, type metadata accessor for ControlTemplateToggle);
  a1[3] = result;
  return result;
}

void sub_192202B44()
{
  sub_192040778(319, &qword_1ED74B590);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ControlTemplateToggle.Option(319);
    if (v1 <= 0x3F)
    {
      sub_192040A00(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_192202C4C()
{
  sub_192040778(319, &qword_1ED74B590);
  if (v0 <= 0x3F)
  {
    sub_192040A00(319, &qword_1ED74B540, MEMORY[0x1E697CB10]);
    if (v1 <= 0x3F)
    {
      sub_192040778(319, &qword_1EADEE808);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_192202D5C()
{
  result = qword_1EADF25F0;
  if (!qword_1EADF25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25F0);
  }

  return result;
}

unint64_t sub_192202DB4()
{
  result = qword_1EADF25F8;
  if (!qword_1EADF25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF25F8);
  }

  return result;
}

unint64_t sub_192202E0C()
{
  result = qword_1EADED868;
  if (!qword_1EADED868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED868);
  }

  return result;
}

unint64_t sub_192202E64()
{
  result = qword_1EADED870;
  if (!qword_1EADED870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED870);
  }

  return result;
}

unint64_t sub_192202EBC()
{
  result = qword_1EADED850;
  if (!qword_1EADED850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED850);
  }

  return result;
}

unint64_t sub_192202F14()
{
  result = qword_1EADED858;
  if (!qword_1EADED858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED858);
  }

  return result;
}

uint64_t sub_192202F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69486E6F69746361 && a2 == 0xEA0000000000746ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_192203160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004C52556465 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000192249E50 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E70 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E90 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_192203450@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v31 = a8;
  v15 = type metadata accessor for TimelineReloadPolicy();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[2] = *a1;
  v34 = a4;
  v35 = a5;
  v30[1] = a6;
  v36 = a6;
  v37 = a7;
  v38 = a2;
  v39 = a3;
  v19 = sub_192227C40();

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  WitnessTable = swift_getWitnessTable();
  v22 = v32;
  v23 = sub_19204301C(sub_192203774, v33, v19, a4, v20, WitnessTable, MEMORY[0x1E69E7288], v40);
  if (v22)
  {
    v24 = type metadata accessor for Timeline();
    (*(*(v24 - 8) + 8))(a1, v24);
  }

  else
  {
    v26 = v23;

    v27 = type metadata accessor for Timeline();
    sub_192054E84(a1 + *(v27 + 36), v18);
    (*(*(v27 - 8) + 8))(a1, v27);
    v28 = v31;
    *v31 = v26;
    v29 = type metadata accessor for Timeline();
    return sub_1922036D0(v18, v28 + *(v29 + 36));
  }
}

uint64_t Timeline.init(entries:policy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for Timeline() + 36);

  return sub_1922036D0(a2, v4);
}

uint64_t sub_1922036D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineReloadPolicy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_192203774(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t WidgetRelevanceEntry<A>.init(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192224CC0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WidgetRelevanceEntry<A>.init(group:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_192203894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for WidgetRelevanceEntry() + 28);
  v7 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:group:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = (a4 + *(type metadata accessor for WidgetRelevanceEntry() + 28));
  *v9 = v7;
  v9[1] = v8;
  type metadata accessor for WidgetRelevanceEntry.Attribute();
  swift_storeEnumTagMultiPayload();
  v10 = *(*(a3 - 8) + 32);

  return v10(a4, a1, a3);
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:group:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = (a3 + *(type metadata accessor for WidgetRelevanceEntry() + 28));
  *v7 = v5;
  v7[1] = v6;
  type metadata accessor for WidgetRelevanceEntry.Attribute();
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  return result;
}

uint64_t WidgetRelevanceEntry.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, v2 + *(a1 + 28), v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    v12 = sub_192224CC0();
    return (*(*(v12 - 8) + 32))(a2, v10, v12);
  }

  return result;
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for WidgetRelevanceEntry() + 28);
  v9 = sub_192224CC0();
  (*(*(v9 - 8) + 32))(a4 + v8, a2, v9);
  type metadata accessor for WidgetRelevanceEntry.Attribute();
  swift_storeEnumTagMultiPayload();
  v10 = *(*(a3 - 8) + 32);

  return v10(a4, a1, a3);
}

uint64_t WidgetRelevanceEntry<A>.init(configuration:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for WidgetRelevanceEntry() + 28);
  v7 = sub_192224CC0();
  (*(*(v7 - 8) + 32))(&a3[v6], a2, v7);
  type metadata accessor for WidgetRelevanceEntry.Attribute();
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  return result;
}

uint64_t sub_192203DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for WidgetRelevanceEntry.Attribute();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_192203E54()
{
  result = sub_192224CC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for _ActivitySystemActionForegroundColorModifier()
{
  result = qword_1EADECF48;
  if (!qword_1EADECF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192203F10(uint64_t a1)
{
  v2 = type metadata accessor for _ActivitySystemActionForegroundColorModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI4ViewP9WidgetKitE23activityForegroundColoryQrAA0H0VSgF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _ActivitySystemActionForegroundColorModifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v6 + 20)) = a1;

  MEMORY[0x193B0A190](v9, a2, v6, a3);
  return sub_192203F10(v9);
}

unint64_t sub_192204064()
{
  result = qword_1EADECF58;
  if (!qword_1EADECF58)
  {
    type metadata accessor for _ActivitySystemActionForegroundColorModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECF58);
  }

  return result;
}

void sub_1922040E4()
{
  sub_192110C60();
  if (v0 <= 0x3F)
  {
    sub_1921F93CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_192204184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1922261D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  sub_1921112F0(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v12, v4);
  }

  v14 = *v12;
  sub_192227FA0();
  v15 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_19220434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1922261D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + *(a2 + 20));
  if (v12)
  {
    sub_192204184(v11);
    sub_192227270();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    (*(v8 + 8))(v11, v7);
    v21 = v14 | (v16 << 32);
    v22 = v18 | (v20 << 32);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2600, &qword_192245030);
  (*(*(v23 - 8) + 16))(a3, a1, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2608, &qword_192245038);
  v25 = a3 + *(result + 36);
  *v25 = v21;
  *(v25 + 8) = v22;
  *(v25 + 16) = v12 == 0;
  return result;
}

unint64_t sub_192204508()
{
  result = qword_1EADECE70;
  if (!qword_1EADECE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2608, &qword_192245038);
    sub_192031E74(&qword_1EADECD40, &qword_1EADF2600, &qword_192245030);
    sub_192031E74(&qword_1EADECD20, &qword_1EADF2610, &qword_192245078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECE70);
  }

  return result;
}

uint64_t sub_1922045EC(uint64_t a1)
{
  v2 = sub_1921FCE64();

  return MEMORY[0x1EEDE0700](a1, v2);
}

unint64_t sub_19220462C()
{
  result = qword_1EADED3C0;
  if (!qword_1EADED3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED3C0);
  }

  return result;
}

uint64_t sub_1922046A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 112)) = v3;
  return result;
}

uint64_t WidgetConfiguration.requiresFeatureFlag(domain:featureName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  sub_1920797E8(sub_1921F659C, v8);
}

uint64_t WidgetConfiguration.requiresFeatureFlag(_:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225430();
  v3 = sub_192228430();
  v5 = v4;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192225440();
  v7 = sub_192228430();
  WidgetConfiguration.requiresFeatureFlag(domain:featureName:)(v3, v5, v7, v8);
}

uint64_t sub_1922048C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1920797E8(a5, v7);
}