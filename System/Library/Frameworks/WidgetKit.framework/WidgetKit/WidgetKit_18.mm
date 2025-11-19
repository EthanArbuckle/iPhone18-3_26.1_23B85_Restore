unint64_t sub_1921D237C()
{
  result = qword_1ED748D10[0];
  if (!qword_1ED748D10[0])
  {
    type metadata accessor for ControlDescriptorConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED748D10);
  }

  return result;
}

uint64_t sub_1921D23EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a2;
  v4[24] = v3;
  v4[22] = a1;
  v4[25] = *(a3 + 24);
  v4[26] = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[27] = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921D24D0, 0, 0);
}

uint64_t sub_1921D24D0()
{
  v1 = v0[23];
  if (v1 == 1)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_1922258B0();
    __swift_project_value_buffer(v14, qword_1EAE00810);
    v15 = sub_192225890();
    v16 = sub_192227FB0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_192028000, v15, v16, "Fetching preview value", v17, 2u);
      MEMORY[0x193B0C7F0](v17, -1, -1);
    }

    v19 = v0[25];
    v18 = v0[26];
    v20 = v0[24];
    v21 = v0[22];

    (*(v19 + 16))(v18, v19);
    v22 = v0[29];

    v23 = v0[1];

    return v23();
  }

  else if (v1)
  {
    return sub_192228620();
  }

  else
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v2 = sub_1922258B0();
    __swift_project_value_buffer(v2, qword_1EAE00810);
    v3 = sub_192225890();
    v4 = sub_192227FB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Fetching current value", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    v25 = v0[25];

    v6 = *(v25 + 24);
    v24 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[30] = v8;
    *v8 = v0;
    v8[1] = sub_1921D2840;
    v9 = v0[29];
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];

    return v24(v9, v10, v11);
  }
}

uint64_t sub_1921D2840()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1921D29D4;
  }

  else
  {
    v3 = sub_1921D2954;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921D2954()
{
  (*(v0[28] + 32))(v0[22], v0[29], v0[27]);
  v1 = v0[29];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1921D29D4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *MEMORY[0x1E69941E8];
  v4 = v1;
  v5 = v3;
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v6 = *MEMORY[0x1E696A278];
  v7 = sub_192227960();
  v9 = v8;
  *(v0 + 40) = MEMORY[0x1E69E6158];
  *(v0 + 16) = 0xD00000000000002ALL;
  *(v0 + 24) = 0x800000019224A900;
  sub_19203BEDC((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 48), v7, v9, isUniquelyReferenced_nonNull_native);

  v11 = *MEMORY[0x1E696AA08];
  v12 = sub_192227960();
  v14 = v13;
  swift_getErrorValue();
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  *(v0 + 104) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
  sub_19203BEDC((v0 + 80), (v0 + 112));
  v18 = v1;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 112), v12, v14, v19);

  v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v21 = sub_192227830();

  [v20 initWithDomain:v5 code:1106 userInfo:v21];

  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t AnimatingWaveformView.init(resolvedColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

double AnimatingWaveformView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  sub_1921D57AC(v10);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_192227310();
  }

  KeyPath = swift_getKeyPath();
  v8 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v8;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_1921D2D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465766C6F736572 && a2 == 0xED0000726F6C6F43)
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

uint64_t sub_1921D2D94(uint64_t a1)
{
  v2 = sub_1921D5870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D2DD0(uint64_t a1)
{
  v2 = sub_1921D5870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnimatingWaveformView.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D40, &qword_192240FB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  HIDWORD(v12) = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D5870();
  sub_192228B90();
  v13 = v9;
  v14 = v8;
  v15 = BYTE4(v12);
  sub_1920CF350();
  sub_192228850();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AnimatingWaveformView.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D50, &qword_192240FB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D5870();
  sub_192228B70();
  if (!v2)
  {
    sub_1920CF44C();
    sub_192228750();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1921D3114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921D661C();

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_1921D3178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1921D661C();

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

double sub_1921D3220@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  sub_1921D57AC(v10);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_192227310();
  }

  KeyPath = swift_getKeyPath();
  v8 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v8;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_1921D32B8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D88, &qword_1922412E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D90, &qword_1922412E8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1D98, &qword_1922412F0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v31 - v14;
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = *(v1 + 48);
  v43 = *(v1 + 8);
  v42 = *v1;
  v31[2] = v18;
  sub_1921D5C4C(v42, v43, v18, v16, v17);
  v20 = v19;
  *v5 = sub_192226340();
  *(v5 + 1) = v20;
  v5[16] = 0;
  v31[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DA0, &unk_1922412F8) + 44);
  v34 = xmmword_192240F50;
  v31[0] = swift_getKeyPath();
  v41 = *(v1 + 16);
  v21 = swift_allocObject();
  v22 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = *(v1 + 48);
  sub_19202CFFC(&v42, v33, &qword_1EADF1DA8, &qword_192241320);
  sub_19202CFFC(&v41, v33, &qword_1EADF1DB0, &unk_192241328);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DB8, &qword_192241338);
  sub_1921D6034();
  sub_1921D60C0();
  sub_192227590();
  sub_1922275F0();
  sub_192225DA0();
  sub_19204E300(v5, v10, &qword_1EADF1D88, &qword_1922412E0);
  v23 = &v10[*(v7 + 44)];
  v24 = v39;
  v23[4] = v38;
  v23[5] = v24;
  v23[6] = v40;
  v25 = v35;
  *v23 = v34;
  v23[1] = v25;
  v26 = v37;
  v23[2] = v36;
  v23[3] = v26;
  v27 = swift_allocObject();
  v28 = *(v1 + 16);
  *(v27 + 16) = *v1;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v1 + 32);
  *(v27 + 64) = *(v1 + 48);
  sub_19204E300(v10, v15, &qword_1EADF1D90, &qword_1922412E8);
  v29 = &v15[*(v12 + 44)];
  *v29 = sub_1921D3B40;
  *(v29 + 1) = 0;
  *(v29 + 2) = sub_1921D622C;
  *(v29 + 3) = v27;
  sub_19204E300(v15, v32, &qword_1EADF1D98, &qword_1922412F0);
  sub_19202CFFC(&v42, v33, &qword_1EADF1DA8, &qword_192241320);
  sub_19202CFFC(&v41, v33, &qword_1EADF1DB0, &unk_192241328);
}

unint64_t sub_1921D36F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1922261D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192228960();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (qword_1EADEE9C8 != -1)
  {
    swift_once();
  }

  v16 = off_1EADF1D20;
  v49 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DB0, &unk_192241328);
  sub_1922274F0();
  v17 = v16[2];
  v46 = v7;
  if (!v17 || (result = sub_1920B7548(LOBYTE(v53)), (v19 & 1) == 0))
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = *(v16[7] + 8 * result);
  if (v15 >= *(v20 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v21 = *(v20 + 8 * v15 + 32);

LABEL_9:
  v23 = *(a2 + 40);
  v24 = *(a2 + 48);
  *&v49 = *(a2 + 32);
  v22 = *&v49;
  *(&v49 + 1) = v23;
  *&v50 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE0, &qword_192241348);
  sub_1922274F0();
  v25 = v53;
  v26 = v54;
  KeyPath = swift_getKeyPath();
  v47 = swift_getKeyPath();
  *&v49 = v22;
  *(&v49 + 1) = v23;
  *&v50 = v24;
  sub_1922274F0();
  v27 = v53;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E7048], v10);
  LOBYTE(v54) = *(a2 + 8);
  v28 = *a2;
  v53 = *a2;
  v29 = v54;
  if (v54 == 1)
  {
    v52 = *&v28;
    v30 = *&v28;
  }

  else
  {

    sub_192227FA0();
    v31 = sub_192226D00();
    v44 = v10;
    v32 = v21;
    v33 = v6;
    v34 = v31;
    sub_1922257A0();

    v35 = v45;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192033970(&v53, &qword_1EADF1DA8, &qword_192241320);
    v36 = v33;
    v21 = v32;
    v10 = v44;
    (*(v46 + 8))(v35, v36);
    v30 = v52;
  }

  sub_1921D3BC8(v14, v30, v27 * 0.113636364);
  (*(v11 + 8))(v14, v10);
  sub_1922275F0();
  sub_192225AA0();
  v56 = 0;
  v55 = 0;
  sub_1921D6234(v28, v29, v24, v22, v23);
  v38 = v37;
  result = sub_1922276A0();
  v39 = v47;
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v39;
  *(a3 + 24) = 0;
  *(a3 + 32) = v21;
  *(a3 + 40) = v25;
  *(a3 + 48) = v26;
  v40 = v50;
  *(a3 + 56) = v49;
  *(a3 + 72) = v40;
  *(a3 + 88) = v51;
  *(a3 + 104) = v38;
  *(a3 + 112) = 0x3FF0000000000000;
  *(a3 + 120) = v41;
  *(a3 + 128) = v42;
  return result;
}

uint64_t sub_1921D3B40@<X0>(void *a1@<X8>)
{
  result = sub_192225AD0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1921D3B6C(__int128 *a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v3 = *a1;
  v4 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE0, &qword_192241348);
  return sub_192227500();
}

double sub_1921D3BC8(uint64_t a1, double a2, double a3)
{
  v6 = sub_192228960();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 / a2;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x1E69E7038])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7030])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7040])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7048])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7020])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7028])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_192227D20();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 * a2;
}

uint64_t sub_1921D3DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1921D32B8(a1);
}

uint64_t sub_1921D3DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_192227580();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_192226560();
  result = (*(*(v13 - 8) + 104))(v11, v12, v13);
  v15 = v1[4];
  v32 = v15;
  if (*(v15 + 16))
  {
    v25 = *(v15 + 32);
    v31 = *(v1 + 24);
    v16 = v1[2];
    v30 = v16;
    v23[0] = v8;
    v23[1] = a1;
    if (v31 == 1)
    {
      if ((v16 & 1) == 0)
      {
LABEL_8:
        v26 = *v1;
        v27 = *(v1 + 8);
        v19 = swift_allocObject();
        v20 = *(v1 + 1);
        *(v19 + 16) = *v1;
        *(v19 + 32) = v20;
        *(v19 + 48) = *(v1 + 2);
        *(v19 + 64) = v1[6];
        v21 = swift_allocObject();
        v22 = *(v1 + 1);
        *(v21 + 16) = *v1;
        *(v21 + 32) = v22;
        *(v21 + 48) = *(v1 + 2);
        *(v21 + 64) = v1[6];
        sub_19202CFFC(&v30, v24, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v26, v24, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v32, v24, &unk_1EADEEB10, &qword_19222AF50);
        sub_19202CFFC(&v30, v24, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v26, v24, &qword_1EADF0B80, &qword_192236FF0);
        sub_19202CFFC(&v32, v24, &unk_1EADEEB10, &qword_19222AF50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E40, &qword_1922416D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E48, &qword_1922416D8);
        sub_1921D69BC();
        sub_1921D6A14();
        sub_192031E74(&qword_1EADF1E70, &qword_1EADF1E48, &qword_1922416D8);
        sub_1922270C0();

        return sub_1921D6ACC(v11);
      }
    }

    else
    {

      sub_192227FA0();
      v17 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v30, &qword_1EADF0B80, &qword_192236FF0);
      (*(v4 + 8))(v7, v3);
      if (v28 != 1)
      {
        goto LABEL_8;
      }
    }

    v29 = *(v1 + 8);
    v28 = *v1;
    if (v29 != 1)
    {

      sub_192227FA0();
      v18 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192033970(&v28, &qword_1EADF0B80, &qword_192236FF0);
      (*(v4 + 8))(v7, v3);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

double sub_1921D42D4@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2 * *(a3 + 48);
  sub_1922275F0();
  sub_192225AA0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E68, &qword_1922416E0);
  (*(*(v7 - 8) + 16))(a4, a1, v7);
  v8 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E40, &qword_1922416D0) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_1921D43B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E48, &qword_1922416D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  swift_getKeyPath();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E78, &qword_192241708);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEF658, &qword_192241710);
  v12 = sub_192031E74(&qword_1EADF1E80, &qword_1EADEF658, &qword_192241710);
  v16[5] = MEMORY[0x1E69E7DE0];
  v16[6] = v11;
  v16[7] = v12;
  swift_getOpaqueTypeConformance2();
  sub_192225AE0();
  v13 = sub_192031E74(&qword_1EADF1E70, &qword_1EADF1E48, &qword_1922416D8);
  MEMORY[0x193B08C80](v7, &type metadata for WaveformBarKeyframe, v3, v13);
  v14 = *(v4 + 8);
  v14(v7, v3);
  MEMORY[0x193B08CA0](v10, &type metadata for WaveformBarKeyframe, v3, v13);
  MEMORY[0x193B08C90](v7, &type metadata for WaveformBarKeyframe, v3, v13);
  v14(v7, v3);
  return (v14)(v10, v3);
}

uint64_t sub_1921D4634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = sub_192227690();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF658, &qword_192241710);
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E78, &qword_192241708);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - v21;
  v23 = *(a1 + 32);
  v24 = *(v23 + 16);
  v25 = v24 - 1;
  v56 = v26;
  v57 = a2;
  v54 = v22;
  v55 = v27;
  if (v24 == 1)
  {
    goto LABEL_10;
  }

  if (v24)
  {
    v61 = v13;
    if (qword_1EADEE9D0 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v28 = (v65 + 8);
  v59 = (v65 + 16);
  v60 = (v4 + 16);
  v58 = v65 + 32;
  v29 = (v23 + 56);
  v30 = MEMORY[0x1E69E7CC0];
  v67 = v10;
  v31 = v61;
  do
  {
    v66 = v25;
    v68 = *(v29 - 1);
    v32 = *v29;
    v33 = v64;
    v34 = __swift_project_value_buffer(v64, qword_1EADF1D28);
    (*v60)(v63, v34, v33);
    sub_1921D6B30();
    v35 = v30;
    v36 = v7;
    v37 = v28;
    v38 = v18;
    v39 = v62;
    v40 = MEMORY[0x1E69E7DE0];
    sub_192225C50();
    v41 = sub_192031E74(&qword_1EADF1E80, &qword_1EADEF658, &qword_192241710);
    MEMORY[0x193B099D0](v39, v40, v36, v41);
    v42 = *v37;
    v43 = v39;
    v18 = v38;
    v28 = v37;
    v7 = v36;
    v30 = v35;
    v42(v43, v7);
    MEMORY[0x193B099E0](v18, v40, v7, v41);
    (*v59)(v67, v31, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1920C37BC(0, v35[2] + 1, 1, v35);
    }

    v45 = v30[2];
    v44 = v30[3];
    v46 = v66;
    if (v45 >= v44 >> 1)
    {
      v30 = sub_1920C37BC(v44 > 1, v45 + 1, 1, v30);
    }

    v31 = v61;
    v42(v61, v7);
    v42(v18, v7);
    v30[2] = v45 + 1;
    (*(v65 + 32))(v30 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v45, v67, v7);
    v29 += 2;
    v25 = v46 - 1;
  }

  while (v25);
LABEL_10:
  v47 = MEMORY[0x1E69E7DE0];
  v48 = sub_192031E74(&qword_1EADF1E80, &qword_1EADEF658, &qword_192241710);
  v49 = v54;
  sub_192226A10();

  v68 = v47;
  v69 = v7;
  v70 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v47;
  v52 = v56;
  MEMORY[0x193B099E0](v49, v51, v56, OpaqueTypeConformance2);
  return (*(v55 + 8))(v49, v52);
}

uint64_t sub_1921D4BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1921D3DF4(a1);
}

uint64_t sub_1921D4BFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 56 == *a2 << 56)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1922289A0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1921D4C74()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921D4CD8()
{
  v1 = *v0;
  sub_1922279B0();
}

uint64_t sub_1921D4D20()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921D4D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1921D6B84();
  *a2 = result;
  return result;
}

uint64_t sub_1921D4E94(void *a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1EA0, &qword_192241720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D6D98();
  sub_192228B90();
  v13 = a2;
  v12[15] = 0;
  sub_192059A84();
  sub_1922288C0();
  if (!v2)
  {
    v12[14] = 1;
    sub_192228880();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1921D5034()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x746867696568;
  }

  *v0;
  return result;
}

uint64_t sub_1921D506C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_1921D5144(uint64_t a1)
{
  v2 = sub_1921D6D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D5180(uint64_t a1)
{
  v2 = sub_1921D6D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1921D51BC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1921D6BD0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1921D5204()
{
  v0 = sub_192140A1C(&unk_1F06A8E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DF0, &qword_1922413A8);
  result = swift_arrayDestroy();
  off_1EADF1D18 = v0;
  return result;
}

void *sub_1921D5260()
{
  result = sub_1921D5280();
  off_1EADF1D20 = result;
  return result;
}

void *sub_1921D5280()
{
  if (qword_1EADEE9C0 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v0 = off_1EADF1D18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE8, &qword_1922413A0);
    result = sub_192228690();
    v2 = 0;
    v4 = (v0 + 8);
    v3 = v0[8];
    v52 = v0;
    v5 = 1 << *(v0 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & v3;
    v8 = (v5 + 63) >> 6;
    v9 = result + 8;
    v46 = (v0 + 8);
    v47 = result;
    v44 = result + 8;
    v45 = v8;
    if ((v6 & v3) == 0)
    {
      break;
    }

    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v2 << 6);
      v14 = v52[6];
      v15 = *(v14 + v13);
      v16 = *(v52[7] + 8 * v13);
      v17 = *(v16 + 16);
      if (v17)
      {
        break;
      }

      v19 = MEMORY[0x1E69E7CC0];
LABEL_34:
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(result[6] + v13) = v15;
      *(result[7] + 8 * v13) = v19;
      v41 = result[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_43;
      }

      result[2] = v43;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v48 = *(v14 + v13);
    v49 = v13;
    v50 = v7;
    v51 = v2;
    v59 = MEMORY[0x1E69E7CC0];

    sub_19209AE00(0, v17, 0);
    v18 = 0;
    v19 = v59;
    v54 = v16;
    v55 = v16 + 32;
    v53 = v17;
    while (v18 < *(v16 + 16))
    {
      v20 = *(*(v55 + 8 * v18) + 16);
      if (v20)
      {
        v56 = v18;
        v57 = *(v55 + 8 * v18);
        v58 = MEMORY[0x1E69E7CC0];

        sub_19209AE40(0, v20, 0);
        v21 = v57;
        v22 = *(v57 + 16);
        if (!v22)
        {
          goto LABEL_38;
        }

        v23 = v58;
        v24 = *(v57 + 32);
        v25 = *&qword_1F06A8EB0;
        v27 = *(v58 + 16);
        v26 = *(v58 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_19209AE40((v26 > 1), v27 + 1, 1);
          v21 = v57;
          v23 = v58;
        }

        *(v23 + 16) = v27 + 1;
        v28 = v23 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = (v25 - v25) * 2.66;
        if (v20 != 1)
        {
          v31 = 0;
          v32 = 16 * v27;
          v33 = v22 - 1;
          v34 = v21 + 40;
          v35 = &unk_1F06A8EB8;
          while (v33 != v31)
          {
            if ((v31 + 1) >= *(v21 + 16))
            {
              goto LABEL_39;
            }

            if (v31 == 11)
            {
              goto LABEL_40;
            }

            v36 = *(v34 + 8 * v31);
            v38 = *(v35 - 1);
            v37 = *v35;
            v39 = *(v23 + 24);
            if (v31 + 1 + v27 >= v39 >> 1)
            {
              sub_19209AE40((v39 > 1), v27 + v31 + 2, 1);
              v21 = v57;
            }

            *(v23 + 16) = v27 + v31 + 2;
            v40 = v23 + v32;
            *(v40 + 48) = v36;
            *(v40 + 56) = (v37 - v38) * 2.66;
            v32 += 16;
            ++v31;
            ++v35;
            if (v20 - 1 == v31)
            {
              goto LABEL_19;
            }
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          break;
        }

LABEL_19:

        v17 = v53;
        v16 = v54;
        v18 = v56;
      }

      else
      {
        v23 = MEMORY[0x1E69E7CC0];
      }

      v30 = *(v59 + 16);
      v29 = *(v59 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_19209AE00((v29 > 1), v30 + 1, 1);
      }

      ++v18;
      *(v59 + 16) = v30 + 1;
      *(v59 + 8 * v30 + 32) = v23;
      if (v18 == v17)
      {

        v4 = v46;
        result = v47;
        v7 = v50;
        v2 = v51;
        v9 = v44;
        v8 = v45;
        v13 = v49;
        v15 = v48;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_6:
  v11 = v2;
  while (1)
  {
    v2 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_42;
    }

    if (v2 >= v8)
    {
      return result;
    }

    v12 = *&v4[8 * v2];
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1921D5668()
{
  v0 = sub_192227690();
  __swift_allocate_value_buffer(v0, qword_1EADF1D28);
  __swift_project_value_buffer(v0, qword_1EADF1D28);
  return sub_192227680();
}

uint64_t sub_1921D56C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225F00();
  *a1 = result;
  return result;
}

uint64_t sub_1921D56F4(uint64_t *a1)
{
  v1 = *a1;

  return sub_192225F10();
}

unint64_t sub_1921D5720(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x193B0C800](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x193B0C800](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1921D57AC@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = sub_1921D5720(3uLL);
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    v9 = byte_1F06A85C0[result + 32];
    sub_1922274E0();
    __asm { FMOV            V0.2D, #11.0 }

    type metadata accessor for CGSize(0);
    result = sub_1922274E0();
    *a1 = KeyPath;
    *(a1 + 8) = 0;
    *(a1 + 16) = v10;
    *(a1 + 24) = *(&v10 + 1);
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
  }

  return result;
}

unint64_t sub_1921D5870()
{
  result = qword_1EADF1D48;
  if (!qword_1EADF1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D48);
  }

  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CodableColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_1921D5940()
{
  result = qword_1EADF1D58;
  if (!qword_1EADF1D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1D60, &unk_1922410E8);
    sub_1921D59F8();
    sub_192031E74(&qword_1EADEDCD8, &qword_1EADF1928, &qword_19223DC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D58);
  }

  return result;
}

unint64_t sub_1921D59F8()
{
  result = qword_1EADF1D68;
  if (!qword_1EADF1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D68);
  }

  return result;
}

uint64_t sub_1921D5A4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1921D5AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1921D5B2C()
{
  result = qword_1EADF1D70;
  if (!qword_1EADF1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D70);
  }

  return result;
}

unint64_t sub_1921D5BA0()
{
  result = qword_1EADF1D78;
  if (!qword_1EADF1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D78);
  }

  return result;
}

unint64_t sub_1921D5BF8()
{
  result = qword_1EADF1D80;
  if (!qword_1EADF1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1D80);
  }

  return result;
}

uint64_t sub_1921D5C4C(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v42 = *&a1;
  v9 = sub_1922261D0();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_192228960();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37[-v19];
  v44 = a4;
  v45 = a5;
  v46 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE0, &qword_192241348);
  result = sub_1922274F0();
  if (v43 > 0.0)
  {
    v40 = v9;
    v44 = a4;
    v45 = a5;
    v46 = a3;
    sub_1922274F0();
    v22 = v43;
    v44 = a4;
    v45 = a5;
    v46 = a3;
    sub_1922274F0();
    v23 = v43;
    v24 = *MEMORY[0x1E69E7048];
    v39 = v14[13];
    v39(v20, v24, v13);
    LODWORD(v25) = a2;
    if (a2)
    {
      v26 = v42;
    }

    else
    {
      v27 = *&v42;

      sub_192227FA0();
      v28 = sub_192226D00();
      v38 = v25;
      v25 = v28;
      sub_1922257A0();

      LOBYTE(v25) = v38;
      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192049898(v27, 0);
      (*(v41 + 8))(v12, v40);
      v26 = v44;
    }

    v29 = sub_1921D3BC8(v20, v26, v23 * 0.113636364);
    v30 = v14[1];
    v30(v20, v13);
    v31 = (v22 + v29 * -5.0) * 0.25;
    v39(v18, v24, v13);
    if (v25)
    {
      v32 = v42;
    }

    else
    {
      v33 = *&v42;

      sub_192227FA0();
      v34 = sub_192226D00();
      v35 = v41;
      v36 = v34;
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192049898(v33, 0);
      (*(v35 + 8))(v12, v40);
      v32 = v44;
    }

    sub_1921D3BC8(v18, v32, v31);
    return (v30)(v18, v13);
  }

  return result;
}

unint64_t sub_1921D6034()
{
  result = qword_1EADF1C70;
  if (!qword_1EADF1C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0CC0, &qword_1922374E0);
    sub_1921CFD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1C70);
  }

  return result;
}

unint64_t sub_1921D60C0()
{
  result = qword_1EADF1DC0;
  if (!qword_1EADF1DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1DB8, &qword_192241338);
    sub_1921D614C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DC0);
  }

  return result;
}

unint64_t sub_1921D614C()
{
  result = qword_1EADF1DC8;
  if (!qword_1EADF1DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1DD0, &qword_192241340);
    sub_1921D61D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DC8);
  }

  return result;
}

unint64_t sub_1921D61D8()
{
  result = qword_1EADF1DD8;
  if (!qword_1EADF1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DD8);
  }

  return result;
}

uint64_t sub_1921D6234(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1922261D0();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_192228960();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v42 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v45 = a4;
  v46 = a5;
  v40 = a3;
  v47 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1DE0, &qword_192241348);
  sub_1922274F0();
  v21 = v44;
  v22 = v15[13];
  v39 = *MEMORY[0x1E69E7048];
  v38 = v22;
  v22(v20);
  v41 = a2;
  v37 = v10;
  if (a2)
  {
    v23 = *&a1;
  }

  else
  {

    sub_192227FA0();
    v24 = sub_192226D00();
    v36 = v14;
    v25 = v10;
    v26 = v24;
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(a1, 0);
    v14 = v36;
    (*(v43 + 8))(v13, v25);
    v23 = v45;
  }

  v27 = sub_1921D3BC8(v20, v23, v21 * 0.113636364);
  v28 = v15[1];
  result = v28(v20, v14);
  if (v27 > 0.0)
  {
    v45 = a4;
    v46 = a5;
    v30 = v40;
    v47 = v40;
    sub_1922274F0();
    v45 = a4;
    v46 = a5;
    v47 = v30;
    sub_1922274F0();
    v31 = v44;
    v32 = v42;
    v38(v42, v39, v14);
    if (v41)
    {
      v33 = *&a1;
    }

    else
    {

      sub_192227FA0();
      v34 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      sub_192049898(a1, 0);
      (*(v43 + 8))(v13, v37);
      v33 = v45;
    }

    sub_1921D3BC8(v32, v33, v31 * 0.113636364);
    return v28(v32, v14);
  }

  return result;
}

unint64_t sub_1921D661C()
{
  result = qword_1EADF1DF8;
  if (!qword_1EADF1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1DF8);
  }

  return result;
}

uint64_t sub_1921D6680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1921D66C8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1921D6734()
{
  result = qword_1EADF1E00;
  if (!qword_1EADF1E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1D98, &qword_1922412F0);
    sub_1921D67EC();
    sub_192031E74(&qword_1EADF1E18, &qword_1EADF1E20, &qword_1922414F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E00);
  }

  return result;
}

unint64_t sub_1921D67EC()
{
  result = qword_1EADF1E08;
  if (!qword_1EADF1E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1D90, &qword_1922412E8);
    sub_192031E74(&qword_1EADF1E10, &qword_1EADF1D88, &qword_1922412E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E08);
  }

  return result;
}

unint64_t sub_1921D68EC()
{
  result = qword_1EADF1E38;
  if (!qword_1EADF1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E38);
  }

  return result;
}

uint64_t objectdestroy_65Tm()
{
  sub_192049898(*(v0 + 16), *(v0 + 24));
  sub_192049898(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

unint64_t sub_1921D69BC()
{
  result = qword_1EADF1E50;
  if (!qword_1EADF1E50)
  {
    sub_192227580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E50);
  }

  return result;
}

unint64_t sub_1921D6A14()
{
  result = qword_1EADF1E58;
  if (!qword_1EADF1E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1E40, &qword_1922416D0);
    sub_192031E74(&qword_1EADF1E60, &qword_1EADF1E68, &qword_1922416E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E58);
  }

  return result;
}

uint64_t sub_1921D6ACC(uint64_t a1)
{
  v2 = sub_192227580();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1921D6B30()
{
  result = qword_1EADF1E88;
  if (!qword_1EADF1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E88);
  }

  return result;
}

uint64_t sub_1921D6B84()
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

double sub_1921D6BD0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1E90, &qword_192241718);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D6D98();
  sub_192228B70();
  v10[7] = 0;
  sub_192045184();
  sub_1922287C0();
  v8 = v11;
  v10[6] = 1;
  sub_192228780();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1921D6D98()
{
  result = qword_1EADF1E98;
  if (!qword_1EADF1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1E98);
  }

  return result;
}

unint64_t sub_1921D6DEC()
{
  result = qword_1EADF1EA8;
  if (!qword_1EADF1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EA8);
  }

  return result;
}

unint64_t sub_1921D6E54()
{
  result = qword_1EADF1EB0;
  if (!qword_1EADF1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EB0);
  }

  return result;
}

unint64_t sub_1921D6EAC()
{
  result = qword_1EADF1EB8;
  if (!qword_1EADF1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EB8);
  }

  return result;
}

unint64_t sub_1921D6F04()
{
  result = qword_1EADF1EC0;
  if (!qword_1EADF1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EC0);
  }

  return result;
}

uint64_t ControlAction.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
  sub_19202A7A8(0, &qword_1EADEDEF8, 0x1E696E730);
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_1921D85E8();
  v11 = *(v6 + 8);
  v11(v9, a2);
  v12 = sub_1921D8918(v10);

  *a3 = v12;
  return (v11)(a1, a2);
}

WidgetKit::ActionAuthenticationPolicy_optional __swiftcall ActionAuthenticationPolicy.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1921D71E4()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192228B00();
  return sub_192228B30();
}

uint64_t sub_1921D7258()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192228B00();
  return sub_192228B30();
}

id ControlAction.storage.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void ControlAction.storage.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t ControlAction.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v34 = a6;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v17);
  v31[2] = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v31 - v21;
  v23 = v15[2];
  v33 = v24;
  v31[1] = v23;
  v23(v31 - v21, v20);
  v25 = *(v10 + 16);
  v32 = a2;
  v25(v13, a2, a3);
  sub_192224CA0();
  sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
  sub_19202A7A8(0, &qword_1EADEDEF8, 0x1E696E730);
  v26 = *(a5 + 8);
  v27 = sub_1921D85E8();
  v28 = sub_1921D8918(v27);

  (*(v10 + 8))(v32, a3);
  v29 = v15[1];
  v29(v33, a4);
  result = v29(v22, a4);
  *v34 = v28;
  return result;
}

void ControlAction.authenticationPolicy.getter(char *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 intent];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 linkAction];

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v5 authenticationPolicyAllowingImplicit_];
  if (!v6)
  {

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 integerValue];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

LABEL_12:
  *a1 = v9;
}

id ControlAction.lnAction.getter()
{
  if (*v0)
  {
    v1 = [*v0 intent];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 linkAction];

  return v3;
}

void LNAction.authenticationPolicy.getter(char *a1@<X8>)
{
  v3 = [v1 authenticationPolicyAllowingImplicit_];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 integerValue];

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void *ControlAction.inIntent.getter()
{
  result = *v0;
  if (*v0)
  {
    v2 = [result intent];
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t ControlAction.description.getter()
{
  if (!*v0)
  {
    return 0xD00000000000001ALL;
  }

  v1 = *v0;
  sub_192228400();

  v2 = [v1 description];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](41, 0xE100000000000000);

  return 0x2E6C6F72746E6F43;
}

uint64_t sub_1921D79F8()
{
  if (!*v0)
  {
    return MEMORY[0x193B0BA90](0);
  }

  MEMORY[0x193B0BA90](1);
  return sub_1922281E0();
}

uint64_t _s9WidgetKit13ControlActionV7StorageO9hashValueSivg_0()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    MEMORY[0x193B0BA90](1);
    sub_1922281E0();
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  return sub_192228B30();
}

uint64_t sub_1921D7AB4()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    MEMORY[0x193B0BA90](1);
    sub_1922281E0();
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  return sub_192228B30();
}

uint64_t sub_1921D7B20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E65746E69;
  }

  else
  {
    v4 = 0x656761726F7473;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E65746E69;
  }

  else
  {
    v6 = 0x656761726F7473;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_1921D7BC4()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921D7C44()
{
  *v0;
  sub_1922279B0();
}

uint64_t sub_1921D7CB0()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921D7D2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_192228700();

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

void sub_1921D7D8C(uint64_t *a1@<X8>)
{
  v2 = 0x656761726F7473;
  if (*v1)
  {
    v2 = 0x746E65746E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1921D7DC8()
{
  if (*v0)
  {
    result = 0x746E65746E69;
  }

  else
  {
    result = 0x656761726F7473;
  }

  *v0;
  return result;
}

uint64_t sub_1921D7E00@<X0>(char *a1@<X8>)
{
  v2 = sub_192228700();

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

uint64_t sub_1921D7E64(uint64_t a1)
{
  v2 = sub_1921D89DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D7EA0(uint64_t a1)
{
  v2 = sub_1921D89DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1EC8, &qword_192241838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D89DC();
  sub_192228B70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16[0]) = 0;
  v11 = sub_1922287A0();
  if (v11 == 1)
  {
    v17 = 1;
    sub_192047340();
    sub_1922287C0();
    v12 = v16[0];
    v13 = v16[1];
    sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
    v14 = sub_192227FE0();
    (*(v6 + 8))(v9, v5);
    sub_192039140(v12, v13);
LABEL_6:
    *a2 = v14;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (!v11)
  {
    (*(v6 + 8))(v9, v5);
    v14 = 0;
    goto LABEL_6;
  }

  result = sub_192228620();
  __break(1u);
  return result;
}

void ControlAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1ED0, &qword_192241840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D89DC();
  sub_192228B90();
  if (v9)
  {
    LOBYTE(v13) = 0;
    v11 = v9;
    sub_1922288A0();
    if (v2)
    {
      (*(v5 + 8))(v8, v4);

      return;
    }

    sub_19202A7A8(0, &qword_1EADEE508, 0x1E69942D0);
    v13 = sub_192227FD0();
    v14 = v12;
    v15 = 1;
    sub_1920593E0();
    sub_1922288C0();

    sub_192039140(v13, v14);
  }

  else
  {
    LOBYTE(v13) = 0;
    sub_1922288A0();
  }

  (*(v5 + 8))(v8, v4);
}

void sub_1921D8394()
{
  error[3] = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    error[0] = 0;
    v2 = sub_192227930();
    v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

    if (v3)
    {

      swift_dynamicCast();
    }

    else
    {
      v4 = error[0];
      if (error[0])
      {
        type metadata accessor for CFError(0);
        sub_1921D8C80();
        swift_allocError();
        *v5 = v4;
        swift_willThrow();
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

BOOL _s9WidgetKit13ControlActionV7StorageO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
      v4 = v3;
      v5 = v2;
      v6 = sub_1922281D0();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t _s9WidgetKit13ControlActionV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
      v4 = v3;
      v5 = v2;
      v6 = sub_1922281D0();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1921D85E8()
{
  sub_192224C70();
  sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
  if (swift_dynamicCast() && (sub_192224BE0(), sub_19202A7A8(0, &qword_1EADEDEF0, 0x1E69AC678), swift_dynamicCast()))
  {
    sub_1921D8394();
    if (v0)
    {
LABEL_6:
      v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v4 = sub_192227930();

      v5 = [v3 initWithAppBundleIdentifier:v4 linkAction:v8 linkActionMetadata:v8];

      return v5;
    }

    v1 = [objc_opt_self() mainBundle];
    v2 = [v1 bundleIdentifier];

    if (v2)
    {
      sub_192227960();

      goto LABEL_6;
    }
  }

  else
  {
    sub_192228400();

    v7 = sub_192228BD0();
    MEMORY[0x193B0A990](v7);

    MEMORY[0x193B0A990](46, 0xE100000000000000);
  }

  result = sub_192228620();
  __break(1u);
  return result;
}

id sub_1921D8918(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() referenceFromIntent:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_192224F90();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

unint64_t sub_1921D89DC()
{
  result = qword_1EADEE6E8;
  if (!qword_1EADEE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6E8);
  }

  return result;
}

unint64_t sub_1921D8A34()
{
  result = qword_1EADF1ED8;
  if (!qword_1EADF1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1ED8);
  }

  return result;
}

unint64_t sub_1921D8A8C()
{
  result = qword_1EADF1EE0;
  if (!qword_1EADF1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EE0);
  }

  return result;
}

unint64_t sub_1921D8AE4()
{
  result = qword_1EADF1EE8;
  if (!qword_1EADF1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EE8);
  }

  return result;
}

unint64_t sub_1921D8B7C()
{
  result = qword_1EADF1EF0;
  if (!qword_1EADF1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EF0);
  }

  return result;
}

unint64_t sub_1921D8BD4()
{
  result = qword_1EADEE6D8;
  if (!qword_1EADEE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6D8);
  }

  return result;
}

unint64_t sub_1921D8C2C()
{
  result = qword_1EADEE6E0;
  if (!qword_1EADEE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6E0);
  }

  return result;
}

unint64_t sub_1921D8C80()
{
  result = qword_1EADF1EF8;
  if (!qword_1EADF1EF8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1EF8);
  }

  return result;
}

uint64_t sub_1921D8CEC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192058978(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921D8D50()
{
  sub_192058978(*v0);
  sub_1922279B0();
}

uint64_t sub_1921D8DA4()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192058978(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921D8E04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192058978(*a1);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1921D8E8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_192058978(*a2);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
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

uint64_t sub_1921D8F2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192058978(*a1);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
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

uint64_t sub_1921D8FC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_192058978(*a2);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_1921D906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1921DAAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921D9094(uint64_t a1)
{
  v2 = sub_1921D9724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D90D0(uint64_t a1)
{
  v2 = sub_1921D9724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D910C(uint64_t a1)
{
  v2 = sub_1921D9874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D9148(uint64_t a1)
{
  v2 = sub_1921D9874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D9184(uint64_t a1)
{
  v2 = sub_1921D9820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D91C0(uint64_t a1)
{
  v2 = sub_1921D9820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D91FC(uint64_t a1)
{
  v2 = sub_1921D97CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D9238(uint64_t a1)
{
  v2 = sub_1921D97CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921D9274(uint64_t a1)
{
  v2 = sub_1921D9778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D92B0(uint64_t a1)
{
  v2 = sub_1921D9778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlSize.Storage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F08, &qword_192241E18);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F10, &qword_192241E20);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F18, &qword_192241E28);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F20, &qword_192241E30);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F28, &qword_192241E38);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921D9724();
  sub_192228B90();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1921D97CC();
      v24 = v33;
      sub_192228820();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1921D9778();
      v24 = v36;
      sub_192228820();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1921D9820();
    v24 = v30;
    sub_192228820();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1921D9874();
  sub_192228820();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1921D9724()
{
  result = qword_1EADF1F30;
  if (!qword_1EADF1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F30);
  }

  return result;
}

unint64_t sub_1921D9778()
{
  result = qword_1EADF1F38;
  if (!qword_1EADF1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F38);
  }

  return result;
}

unint64_t sub_1921D97CC()
{
  result = qword_1EADF1F40;
  if (!qword_1EADF1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F40);
  }

  return result;
}

unint64_t sub_1921D9820()
{
  result = qword_1EADF1F48;
  if (!qword_1EADF1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F48);
  }

  return result;
}

unint64_t sub_1921D9874()
{
  result = qword_1EADF1F50;
  if (!qword_1EADF1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F50);
  }

  return result;
}

uint64_t ControlSize.Storage.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F58, &qword_192241E40);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F60, &qword_192241E48);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F68, &qword_192241E50);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F70, &qword_192241E58);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F78, &qword_192241E60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1921D9724();
  v21 = v53;
  sub_192228B70();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1922287F0();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_19212C278();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1922284A0();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
      *v34 = &type metadata for ControlSize.Storage;
      sub_192228720();
      sub_192228480();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1921D9820();
        v39 = v42;
        sub_192228710();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1921D9874();
        v31 = v42;
        sub_192228710();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1921D97CC();
      v38 = v42;
      sub_192228710();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1921D9778();
      v40 = v42;
      sub_192228710();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1921D9F9C(uint64_t a1)
{
  v2 = sub_1921DA160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921D9FD8(uint64_t a1)
{
  v2 = sub_1921DA160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlSize.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F80, &qword_192241E68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921DA160();
  sub_192228B90();
  v12 = v8;
  sub_1921DA1B4();
  sub_1922288C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1921DA160()
{
  result = qword_1EADF1F88;
  if (!qword_1EADF1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F88);
  }

  return result;
}

unint64_t sub_1921DA1B4()
{
  result = qword_1EADF1F90;
  if (!qword_1EADF1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1F90);
  }

  return result;
}

uint64_t ControlSize.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F98, &qword_192241E70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921DA160();
  sub_192228B70();
  if (!v2)
  {
    sub_1921DA3D0();
    sub_1922287C0();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1921DA3D0()
{
  result = qword_1EADF1FA0;
  if (!qword_1EADF1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FA0);
  }

  return result;
}

uint64_t ControlSize.debugDescription.getter()
{
  v1 = *&a1x1_1[8 * *v0];
  strcpy(v3, "ControlSize.");
  MEMORY[0x193B0A990](v1, 0xE300000000000000);

  return v3[0];
}

unint64_t sub_1921DA494()
{
  result = qword_1EADF1FA8;
  if (!qword_1EADF1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FA8);
  }

  return result;
}

unint64_t sub_1921DA4EC()
{
  result = qword_1EADF1FB0;
  if (!qword_1EADF1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FB0);
  }

  return result;
}

uint64_t sub_1921DA540()
{
  v1 = *&a1x1_1[8 * *v0];
  strcpy(v3, "ControlSize.");
  MEMORY[0x193B0A990](v1, 0xE300000000000000);

  return v3[0];
}

unint64_t sub_1921DA620()
{
  result = qword_1EADF1FB8;
  if (!qword_1EADF1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FB8);
  }

  return result;
}

unint64_t sub_1921DA678()
{
  result = qword_1EADF1FC0;
  if (!qword_1EADF1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FC0);
  }

  return result;
}

unint64_t sub_1921DA6D0()
{
  result = qword_1EADF1FC8;
  if (!qword_1EADF1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FC8);
  }

  return result;
}

unint64_t sub_1921DA728()
{
  result = qword_1EADF1FD0;
  if (!qword_1EADF1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FD0);
  }

  return result;
}

unint64_t sub_1921DA780()
{
  result = qword_1EADF1FD8;
  if (!qword_1EADF1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FD8);
  }

  return result;
}

unint64_t sub_1921DA7D8()
{
  result = qword_1EADF1FE0;
  if (!qword_1EADF1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FE0);
  }

  return result;
}

unint64_t sub_1921DA830()
{
  result = qword_1EADF1FE8;
  if (!qword_1EADF1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FE8);
  }

  return result;
}

unint64_t sub_1921DA888()
{
  result = qword_1EADF1FF0;
  if (!qword_1EADF1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FF0);
  }

  return result;
}

unint64_t sub_1921DA8E0()
{
  result = qword_1EADF1FF8;
  if (!qword_1EADF1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1FF8);
  }

  return result;
}

unint64_t sub_1921DA938()
{
  result = qword_1EADF2000;
  if (!qword_1EADF2000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2000);
  }

  return result;
}

unint64_t sub_1921DA990()
{
  result = qword_1EADF2008;
  if (!qword_1EADF2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2008);
  }

  return result;
}

unint64_t sub_1921DA9E8()
{
  result = qword_1EADF2010;
  if (!qword_1EADF2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2010);
  }

  return result;
}

unint64_t sub_1921DAA40()
{
  result = qword_1EADF2018;
  if (!qword_1EADF2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2018);
  }

  return result;
}

unint64_t sub_1921DAA98()
{
  result = qword_1EADF2020;
  if (!qword_1EADF2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2020);
  }

  return result;
}

uint64_t sub_1921DAAEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 829960543 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 846737759 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 829960799 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 846738015 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t EnvironmentValues.isWidgetFocal.getter()
{
  sub_1921DAC8C();
  sub_1922261E0();
  return v1;
}

unint64_t sub_1921DAC8C()
{
  result = qword_1EADECD98;
  if (!qword_1EADECD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD98);
  }

  return result;
}

uint64_t sub_1921DACE0@<X0>(_BYTE *a1@<X8>)
{
  sub_1921DAC8C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1921DAD30(char *a1)
{
  v2 = *a1;
  sub_1921DAC8C();
  return sub_1922261F0();
}

uint64_t (*EnvironmentValues.isWidgetFocal.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1921DAC8C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921DAE20;
}

uint64_t sub_1921DAE20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

double static JindoMetricsDefinition.mock()@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for JindoMetricsDefinition();
  v3 = a1 + v2[5];
  v4 = type metadata accessor for MetricsRequest();
  v5 = *(v4 + 40);
  v6 = sub_192226600();
  v7 = *(*(v6 - 8) + 56);
  v7(&v3[v5], 1, 1, v6);
  *v3 = xmmword_19223F6C0;
  v3[16] = 0;
  *(v3 + 24) = xmmword_19223F6C0;
  v3[40] = 0;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 10) = 0;
  v3[88] = 1;
  *(v3 + 6) = xmmword_19222F810;
  v8 = a1 + v2[6];
  v7(&v8[*(v4 + 40)], 1, 1, v6);
  *v8 = xmmword_19223F6C0;
  v8[16] = 0;
  *(v8 + 24) = xmmword_19223F6C0;
  v8[40] = 0;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 10) = 0;
  v8[88] = 1;
  *(v8 + 6) = xmmword_19222F810;
  v9 = a1 + v2[7];
  v7(&v9[*(v4 + 40)], 1, 1, v6);
  *v9 = xmmword_19223F6C0;
  v9[16] = 0;
  *(v9 + 24) = xmmword_19223F6C0;
  v9[40] = 0;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  v9[88] = 1;
  *(v9 + 6) = xmmword_19222F810;
  v10 = a1 + v2[8];
  v7(&v10[*(v4 + 40)], 1, 1, v6);
  *v10 = xmmword_19223F6C0;
  v10[16] = 0;
  *(v10 + 24) = xmmword_19223F6C0;
  v10[40] = 0;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 10) = 0;
  v10[88] = 1;
  *(v10 + 6) = xmmword_19222F810;
  result = 80.0;
  *a1 = xmmword_1922425E0;
  return result;
}

void sub_1921DB0C4()
{
  type metadata accessor for ViewSource(319);
  if (v0 <= 0x3F)
  {
    sub_1920407C4(319, &qword_1ED74B590, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1921DB414();
      if (v2 <= 0x3F)
      {
        sub_1920407C4(319, &qword_1ED74AF50, &type metadata for ActivityFamily, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1921DB46C();
          if (v4 <= 0x3F)
          {
            sub_1921DB5A0(319, &qword_1ED74AB90, sub_1921DB54C);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CHSEnablement(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for CHSWidgetVisibility(319);
                if (v7 <= 0x3F)
                {
                  sub_1921DB5A0(319, &qword_1ED74AB50, sub_1921DB600);
                  if (v8 <= 0x3F)
                  {
                    v9 = MEMORY[0x1E69E6370];
                    sub_1920407C4(319, qword_1ED74AF58, &type metadata for WidgetURLSessionEventConfiguration, MEMORY[0x1E69E62F8]);
                    if (v10 <= 0x3F)
                    {
                      sub_1920407C4(319, &qword_1ED74B550, v9, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1921DB654(319, &qword_1ED74AFE0, &qword_1EADF2030, &qword_192242670);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for CHSControlSize(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1921DB654(319, &qword_1ED74AF48, &qword_1EADF2038, &qword_192242678);
                            if (v14 <= 0x3F)
                            {
                              sub_1921DB654(319, &qword_1ED74ABB0, &qword_1EADF2040, &qword_192242680);
                              if (v15 <= 0x3F)
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
    }
  }
}

void sub_1921DB414()
{
  if (!qword_1ED74ABD8)
  {
    type metadata accessor for CHSWidgetFamily(255);
    v0 = sub_192227C40();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74ABD8);
    }
  }
}

void sub_1921DB46C()
{
  if (!qword_1ED74ABE8)
  {
    type metadata accessor for CHSWidgetFamily(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2028, &qword_192242668);
    sub_1921DB4F4();
    v0 = sub_192227860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74ABE8);
    }
  }
}

unint64_t sub_1921DB4F4()
{
  result = qword_1ED74ABD0;
  if (!qword_1ED74ABD0)
  {
    type metadata accessor for CHSWidgetFamily(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABD0);
  }

  return result;
}

unint64_t sub_1921DB54C()
{
  result = qword_1ED74AB98;
  if (!qword_1ED74AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB98);
  }

  return result;
}

void sub_1921DB5A0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_192227D80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1921DB600()
{
  result = qword_1ED74AB70;
  if (!qword_1ED74AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB70);
  }

  return result;
}

void sub_1921DB654(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_192228240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1921DB6B8()
{
  sub_1921DB738();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1921DB738()
{
  if (!qword_1ED74BB30)
  {
    sub_1922253B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED74BB30);
    }
  }
}

__n128 sub_1921DB7C0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ViewSource(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192038FB8(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *(a1 + 24) = &type metadata for ControlViewSource;
      *(a1 + 32) = sub_1921AFF60();
      v9 = swift_allocObject();
      *a1 = v9;
      v10 = *(v7 + 3);
      v9[3] = *(v7 + 2);
      v9[4] = v10;
      v9[5] = *(v7 + 4);
      *(v9 + 89) = *(v7 + 73);
      result = *v7;
      v12 = *(v7 + 1);
      v9[1] = *v7;
      v9[2] = v12;
      return result;
    }

    *(a1 + 24) = &type metadata for LiveSceneWidgetViewSource;
    *(a1 + 32) = sub_1921AFF0C();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
      v14 = *(v13 + 1);
      v15 = *(v13 + 3);

      v16 = sub_1922253B0();
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      (*(*(v16 - 8) + 8))(v7, v16);
      return result;
    }

    *(a1 + 24) = &type metadata for TimelineViewSource;
    *(a1 + 32) = sub_192082A7C();
  }

  v17 = swift_allocObject();
  *a1 = v17;
  v18 = *(v7 + 1);
  *(v17 + 16) = *v7;
  *(v17 + 32) = v18;
  result = *(v7 + 2);
  v19 = *(v7 + 3);
  *(v17 + 48) = result;
  *(v17 + 64) = v19;
  return result;
}

uint64_t sub_1921DB98C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19207C3DC(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_192033970(v5, &qword_1EADEEE20, &qword_19222B670);
    if (qword_1EADEDA30 != -1)
    {
      swift_once();
    }

    LOBYTE(v11) = dyld_program_sdk_at_least();
  }

  else
  {
    sub_19207C284(v5, v10);
    v11 = v10[*(v6 + 176)];
    if (v11 == 2)
    {
      if (qword_1EADEDA30 != -1)
      {
        swift_once();
      }

      LOBYTE(v11) = dyld_program_sdk_at_least();
    }

    sub_19207D1F8(v10, type metadata accessor for WidgetDescriptor);
  }

  return v11 & 1;
}

uint64_t sub_1921DBB94()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_19202D088(v1);
  return v1;
}

uint64_t sub_1921DBBC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_19202D088(v1);
  return v1;
}

uint64_t sub_1921DBBFC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1922289A0(), result = 0, (v7 & 1) != 0))
  {
    result = (v3 | v5) == 0;
    if (v3 && v5 != 0)
    {
      if (v2 == v4 && v3 == v5)
      {
        return 1;
      }

      else
      {

        return sub_1922289A0();
      }
    }
  }

  return result;
}

unint64_t sub_1921DBCB8(uint64_t a1)
{
  result = sub_1921DBCE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1921DBCE0()
{
  result = qword_1EADF2048;
  if (!qword_1EADF2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2048);
  }

  return result;
}

uint64_t sub_1921DBD38()
{
  v0 = sub_192225460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-1] - v6;
  sub_192225560();
  sub_192225550();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_192225540();
  if (qword_1ED74C3B0 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    (*(v1 + 104))(v5, *MEMORY[0x1E6993F58], v0);
    v8 = sub_192225450();
    v9 = *(v1 + 8);
    v9(v5, v0);
    if (v8)
    {
      v10 = &unk_1F06A7800;
    }

    else
    {
      v10 = &unk_1F06A7840;
    }
  }

  else
  {
    v9 = *(v1 + 8);
    v10 = &unk_1F06A7878;
  }

  v9(v7, v0);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  qword_1ED74ABB8 = v10;
  return result;
}

uint64_t sub_1921DBF40@<X0>(void *a1@<X8>)
{
  if (qword_1EADEE4A0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EAE00808;
}

uint64_t sub_1921DBFB0(uint64_t a1, uint64_t a2)
{
  v76 = sub_1922253B0();
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v10 = type metadata accessor for ViewSource(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v73 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v73 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2050, &unk_192242910);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v73 + *(v26 + 56) - v25;
  v28 = a1;
  v29 = &v73 - v25;
  sub_192038FB8(v28, &v73 - v25);
  sub_192038FB8(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_192038FB8(v29, v16);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1920390EC(v16);
        goto LABEL_20;
      }

      v38 = v16[3];
      v84 = v16[2];
      v85 = v38;
      v86[0] = v16[4];
      *(v86 + 9) = *(v16 + 73);
      v39 = v16[1];
      v82 = *v16;
      v83 = v39;
      v40 = *(v27 + 3);
      v79 = *(v27 + 2);
      v80 = v40;
      v81[0] = *(v27 + 4);
      *(v81 + 9) = *(v27 + 73);
      v41 = *(v27 + 1);
      v77 = *v27;
      v78 = v41;
      v42 = sub_19216F568(&v82, &v77);
      sub_1920390EC(&v77);
      sub_1920390EC(&v82);
      goto LABEL_41;
    }

    sub_192038FB8(v29, v13);
    v54 = v13[1];
    v82 = *v13;
    v83 = v54;
    v55 = v13[3];
    v84 = v13[2];
    v85 = v55;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1921DC700(&v82);
      goto LABEL_20;
    }

    v56 = *(v27 + 1);
    v77 = *v27;
    v78 = v56;
    v57 = *(v27 + 3);
    v79 = *(v27 + 2);
    v80 = v57;
    if (v82 != v77 && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_33;
    }

    v58 = *(&v78 + 1);
    if (!*(&v83 + 1))
    {
      sub_1921DC700(&v82);
      v42 = v58 == 0;
      v69 = &v77;
LABEL_40:
      sub_1921DC700(v69);
LABEL_41:
      v70 = v29;
LABEL_42:
      sub_19207D1F8(v70, type metadata accessor for ViewSource);
      return v42 & 1;
    }

    if (*(&v78 + 1))
    {
      if (v83 == v78)
      {
        sub_1921DC700(&v77);
        v42 = 1;
      }

      else
      {
        v42 = sub_1922289A0();
        sub_1921DC700(&v77);
      }
    }

    else
    {
LABEL_33:
      sub_1921DC700(&v77);
      v42 = 0;
    }

    v69 = &v82;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    sub_192038FB8(v29, v22);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);
    v44 = &v22[*(v43 + 48)];
    v45 = *(v44 + 1);
    v46 = *(v44 + 3);

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v75 + 8))(v22, v76);
      goto LABEL_20;
    }

    v47 = &v27[*(v43 + 48)];
    v48 = *(v47 + 1);
    v49 = *(v47 + 3);

    v50 = v75;
    v51 = *(v75 + 32);
    v52 = v76;
    v51(v9, v22, v76);
    v51(v6, v27, v52);
    v42 = sub_192225390();
    v53 = *(v50 + 8);
    v53(v6, v52);
    v53(v9, v52);
    goto LABEL_41;
  }

  sub_192038FB8(v29, v19);
  v32 = *v19;
  v31 = v19[1];
  v33 = v19[2];
  v34 = v19[3];
  v36 = v19[4];
  v35 = v19[5];
  v37 = v19[7];
  if (!swift_getEnumCaseMultiPayload())
  {
    v76 = v29;
    v59 = *v27;
    v60 = *(v27 + 1);
    v61 = *(v27 + 2);
    v62 = *(v27 + 3);
    v63 = *(v27 + 5);
    v74 = *(v27 + 4);
    v75 = v63;
    v64 = *(v27 + 7);
    v65 = v32 == v59 && v31 == v60;
    if (v65 || (v66 = v61, v67 = sub_1922289A0(), v61 = v66, (v67 & 1) != 0))
    {
      if (!v34)
      {

        sub_19207C280(v36, v35);

        if (v62)
        {

          sub_19207C280(v74, v75);
          v42 = 0;
        }

        else
        {
          sub_19207C280(v74, v75);
          v42 = 1;
        }

        goto LABEL_48;
      }

      if (v62)
      {
        if (v33 == v61 && v34 == v62)
        {
          v42 = 1;
        }

        else
        {
          v42 = sub_1922289A0();
        }

        sub_19207C280(v74, v75);

        sub_19207C280(v36, v35);
        goto LABEL_48;
      }
    }

    else
    {
    }

    sub_19207C280(v74, v75);

    sub_19207C280(v36, v35);
    v42 = 0;
LABEL_48:
    v72 = v76;

    v70 = v72;
    goto LABEL_42;
  }

  sub_19207C280(v36, v35);

LABEL_20:
  sub_192033970(v29, &qword_1EADF2050, &unk_192242910);
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1921DC740()
{
  v0 = sub_1922265A0();
  __swift_allocate_value_buffer(v0, qword_1EAE008D8);
  v1 = __swift_project_value_buffer(v0, qword_1EAE008D8);
  v2 = *MEMORY[0x1E697F680];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1921DC7E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v68 = a4;
  v70 = *&a3;
  v69 = a2;
  v5 = sub_192226DA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_192225D00();
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  v21 = sub_192226600();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226EB0();
  v26 = *(v67 + 88);
  v71 = a1;
  v27 = a1;
  v28 = v67;
  v29 = v26(v27, v25);
  (*(v22 + 8))(v25, v21);
  if (v68)
  {
    v70 = (*(v28 + 104))(v71);
  }

  sub_192226EA0();
  v30 = *(v6 + 48);
  v31 = v69;
  if (v30(v69, 1, v5) == 1)
  {
    v14 = v63;
    (*(v6 + 104))(v63, *MEMORY[0x1E6980E28], v5);
  }

  else
  {
    sub_19202CFFC(v31, v14, &qword_1EADEFEC8, &qword_192242DC0);
    result = v30(v14, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }
  }

  v33 = sub_1920765C0();
  (*(v6 + 8))(v14, v5);
  v34 = v28;
  v35 = (*(v28 + 120))(v33, COERCE_DOUBLE(*&v70), 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192242920;
  v37 = *MEMORY[0x1E6965848];
  *(inited + 32) = *MEMORY[0x1E6965848];
  v38 = MEMORY[0x1E69E7DE0];
  *(inited + 40) = v29;
  v39 = *MEMORY[0x1E6965898];
  *(inited + 64) = v38;
  *(inited + 72) = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
  *(inited + 80) = v35;
  v41 = *MEMORY[0x1E6965788];
  *(inited + 104) = v40;
  *(inited + 112) = v41;
  *(inited + 144) = MEMORY[0x1E69E6810];
  *(inited + 120) = 7;
  v42 = v37;
  v43 = v39;
  v44 = v41;
  v45 = sub_19207614C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  v46 = v64;
  sub_19202CFFC(v20, v64, &qword_1EADEF290, &qword_19222CA80);
  v47 = v65;
  v48 = v66;
  if ((*(v65 + 48))(v46, 1, v66) != 1)
  {
    v50 = v62;
    (*(v47 + 16))(v62, v46, v48);
    v51 = (*(v47 + 88))(v50, v48);
    if (v51 != *MEMORY[0x1E697E9F8])
    {
      if (v51 == *MEMORY[0x1E697E9F0])
      {
        v52 = 1;
LABEL_13:
        (*(v47 + 8))(v46, v48);
        v53 = *MEMORY[0x1E69657F0];
        v75 = MEMORY[0x1E69E6530];
        *&v74 = v52;
        sub_19203BEDC(&v74, v73);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v45;
        v49 = sub_1920767A8(v73, v53, isUniquelyReferenced_nonNull_native);
        v45 = v72;
        goto LABEL_14;
      }

      (*(v47 + 8))(v50, v48);
    }

    v52 = 0;
    goto LABEL_13;
  }

  v49 = sub_192033970(v46, &qword_1EADEF290, &qword_19222CA80);
LABEL_14:
  v55 = (*(v34 + 128))(v49);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *&v74 = v45;
  sub_1921E3830(v55, sub_1921E1D3C, 0, v56, &v74);

  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7B8, 255, type metadata accessor for CFString);
  v57 = sub_192227830();

  sub_192033970(v20, &qword_1EADEF290, &qword_19222CA80);
  v58 = sub_192076CDC();
  if (qword_1EADEE9D8 != -1)
  {
    swift_once();
  }

  v59 = sub_1922265A0();
  __swift_project_value_buffer(v59, qword_1EAE008D8);
  v60 = sub_192076F7C();
  v61 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v61;
}

uint64_t sub_1921DD004(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v59 = a4;
  v62 = *&a3;
  v57 = sub_192226DA0();
  v56 = *(v57 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_192225D00();
  v60 = *(v61 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v56 - v18;
  v19 = sub_192226600();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226EB0();
  v24 = (*(v4 + 96))(a1, v23);
  (*(v20 + 8))(v23, v19);
  if (v59)
  {
    v62 = (*(v4 + 112))(a1);
  }

  sub_192226EA0();
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v26 = v56;
    v27 = v57;
    (*(v56 + 104))(v10, *MEMORY[0x1E6980E28], v57);
    v25 = sub_1920765C0();
    (*(v26 + 8))(v10, v27);
  }

  v28 = *(v4 + 120);
  v29 = a2;
  v30 = v28(v25, *&v62, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192242920;
  v32 = *MEMORY[0x1E6965848];
  *(inited + 32) = *MEMORY[0x1E6965848];
  v33 = MEMORY[0x1E69E7DE0];
  *(inited + 40) = v24;
  v34 = *MEMORY[0x1E6965898];
  *(inited + 64) = v33;
  *(inited + 72) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
  *(inited + 80) = v30;
  v36 = *MEMORY[0x1E6965788];
  *(inited + 104) = v35;
  *(inited + 112) = v36;
  *(inited + 144) = MEMORY[0x1E69E6810];
  *(inited + 120) = 7;
  v37 = v32;
  v38 = v34;
  v39 = v36;
  v40 = sub_19207614C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  sub_19202CFFC(v63, v16, &qword_1EADEF290, &qword_19222CA80);
  v41 = v60;
  v42 = v61;
  if ((*(v60 + 48))(v16, 1, v61) == 1)
  {
    v43 = sub_192033970(v16, &qword_1EADEF290, &qword_19222CA80);
    goto LABEL_14;
  }

  v44 = v58;
  (*(v41 + 16))(v58, v16, v42);
  v45 = (*(v41 + 88))(v44, v42);
  if (v45 == *MEMORY[0x1E697E9F8])
  {
    goto LABEL_12;
  }

  if (v45 != *MEMORY[0x1E697E9F0])
  {
    (*(v41 + 8))(v44, v42);
LABEL_12:
    v46 = 0;
    goto LABEL_13;
  }

  v46 = 1;
LABEL_13:
  (*(v41 + 8))(v16, v42);
  v47 = *MEMORY[0x1E69657F0];
  v67 = MEMORY[0x1E69E6530];
  *&v66 = v46;
  sub_19203BEDC(&v66, v65);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v40;
  v43 = sub_1920767A8(v65, v47, isUniquelyReferenced_nonNull_native);
  v40 = v64;
LABEL_14:
  v49 = (*(v5 + 128))(v43);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  *&v66 = v40;
  sub_1921E3830(v49, sub_1921E1D3C, 0, v50, &v66);

  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7B8, 255, type metadata accessor for CFString);
  v51 = sub_192227830();

  sub_192033970(v63, &qword_1EADEF290, &qword_19222CA80);
  if (qword_1EADEE9D8 != -1)
  {
    swift_once();
  }

  v52 = sub_1922265A0();
  __swift_project_value_buffer(v52, qword_1EAE008D8);
  v53 = sub_192076F7C();
  v54 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v54;
}

uint64_t sub_1921DD748(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v53 = a3;
  v54 = a2;
  v6 = sub_192226DA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192225D00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v51 - v24;
  sub_192226EA0();
  v25 = *(v7 + 48);
  if (v25(a1, 1, v6) == 1)
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E6980E28], v6);
    v18 = v10;
    goto LABEL_4;
  }

  sub_19202CFFC(a1, v18, &qword_1EADEFEC8, &qword_192242DC0);
  result = (v25)(v18, 1, v6);
  if (result != 1)
  {
LABEL_4:
    v27 = sub_1920765C0();
    (*(v7 + 8))(v18, v6);
    v28 = v56;
    v29 = (*(v56 + 120))(v27, v54, v53 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_192242920;
    v31 = *MEMORY[0x1E6965848];
    *(inited + 32) = *MEMORY[0x1E6965848];
    v32 = MEMORY[0x1E69E7DE0];
    *(inited + 40) = a4;
    v33 = *MEMORY[0x1E6965898];
    *(inited + 64) = v32;
    *(inited + 72) = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED0, &unk_192231E40);
    *(inited + 80) = v29;
    v35 = *MEMORY[0x1E6965788];
    *(inited + 104) = v34;
    *(inited + 112) = v35;
    *(inited + 144) = MEMORY[0x1E69E6810];
    *(inited + 120) = 7;
    v36 = v31;
    v37 = v33;
    v38 = v35;
    v39 = sub_19207614C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
    swift_arrayDestroy();
    v40 = v55;
    sub_19202CFFC(v55, v22, &qword_1EADEF290, &qword_19222CA80);
    if ((*(v12 + 48))(v22, 1, v11) == 1)
    {
      v41 = sub_192033970(v22, &qword_1EADEF290, &qword_19222CA80);
LABEL_12:
      v47 = (*(v28 + 128))(v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v39;
      sub_1921E3830(v47, sub_1921E1D3C, 0, isUniquelyReferenced_nonNull_native, &v59);

      type metadata accessor for CFString(0);
      sub_1921E3E34(&qword_1ED74B7B8, 255, type metadata accessor for CFString);
      v49 = sub_192227830();

      sub_192033970(v40, &qword_1EADEF290, &qword_19222CA80);
      v50 = CTFontDescriptorCreateWithAttributesAndOptions();

      return v50;
    }

    v42 = v52;
    (*(v12 + 16))(v52, v22, v11);
    v43 = (*(v12 + 88))(v42, v11);
    if (v43 != *MEMORY[0x1E697E9F8])
    {
      if (v43 == *MEMORY[0x1E697E9F0])
      {
        v44 = 1;
LABEL_11:
        (*(v12 + 8))(v22, v11);
        v45 = *MEMORY[0x1E69657F0];
        v60 = MEMORY[0x1E69E6530];
        *&v59 = v44;
        sub_19203BEDC(&v59, v58);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v57 = v39;
        v41 = sub_1920767A8(v58, v45, v46);
        v39 = v57;
        goto LABEL_12;
      }

      (*(v12 + 8))(v42, v11);
    }

    v44 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1921DDDCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1921DC7E4(a1, a2, a3, a4 & 1);

  return sub_192226D70();
}

uint64_t sub_1921DDE1C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  sub_1921DD004(a1, a2, a3, a4 & 1);

  return sub_192226D70();
}

double sub_1921DDE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192226F10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  v16 = 15.0;
  if (v15 != *MEMORY[0x1E6980EE8] && v15 != *MEMORY[0x1E6980F00] && v15 != *MEMORY[0x1E6980F08] && v15 != *MEMORY[0x1E6980F10])
  {
    v16 = 10.0;
    v20 = v15 == *MEMORY[0x1E6980F38] || v15 == *MEMORY[0x1E6980EF0];
    v21 = v20 || v15 == *MEMORY[0x1E6980EF8];
    if (!v21 && v15 != *MEMORY[0x1E6980F18])
    {
      v16 = 8.5;
      v23 = v15 == *MEMORY[0x1E6980F30] || v15 == *MEMORY[0x1E6980F20];
      if (!v23 && v15 != *MEMORY[0x1E6980F28])
      {
        (*(v10 + 8))(v14, v9);
        v16 = 10.0;
      }
    }
  }

  (*(v5 + 16))(v8, a2, v4);
  v25 = (*(v5 + 88))(v8, v4);
  v27 = 1.0;
  if (v25 != *MEMORY[0x1E697F8A8])
  {
    v27 = 1.1;
    if (v25 != *MEMORY[0x1E697F8C0])
    {
      if (v25 == *MEMORY[0x1E697F8B0])
      {
        v27 = 1.06;
      }

      else
      {
        v26.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v25 == *MEMORY[0x1E697F8C8] || v25 == *MEMORY[0x1E697F8D8])
        {
          v27 = 1.19;
        }

        else if (v25 != *MEMORY[0x1E697F8B8])
        {
          if (v25 == *MEMORY[0x1E697F8D0])
          {
            v27 = 1.21;
          }

          else
          {
            v27 = 1.19;
            if (v25 != *MEMORY[0x1E697F8E0])
            {
              (*(v5 + 8))(v8, v4, 1.19, v26);
              v27 = 1.0;
            }
          }
        }
      }
    }
  }

  return v16 * v27;
}

double sub_1921DE1F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E6965AD8];
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
  v9 = sub_192225570();
  (*(v4 + 16))(v7, a2, v3);
  v10 = (*(v4 + 88))(v7, v3);
  v12 = 1.0;
  if (v10 != *MEMORY[0x1E697F8A8])
  {
    v12 = 1.1;
    if (v10 != *MEMORY[0x1E697F8C0])
    {
      if (v10 == *MEMORY[0x1E697F8B0])
      {
        v12 = 1.06;
      }

      else
      {
        v11.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v10 == *MEMORY[0x1E697F8C8] || v10 == *MEMORY[0x1E697F8D8])
        {
          v12 = 1.19;
        }

        else if (v10 != *MEMORY[0x1E697F8B8])
        {
          if (v10 == *MEMORY[0x1E697F8D0])
          {
            v12 = 1.21;
          }

          else
          {
            v12 = 1.19;
            if (v10 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v7, v3, 1.19, v11);
              v12 = 1.0;
            }
          }
        }
      }
    }
  }

  v14 = 10.0;
  if (v9)
  {
    v14 = 7.0;
  }

  return v14 * v12;
}

double sub_1921DE4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192226F10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  v16 = 9.0;
  if (v15 != *MEMORY[0x1E6980EE8] && v15 != *MEMORY[0x1E6980F00] && v15 != *MEMORY[0x1E6980F08] && v15 != *MEMORY[0x1E6980F10])
  {
    v16 = 7.0;
    v20 = v15 == *MEMORY[0x1E6980F38] || v15 == *MEMORY[0x1E6980EF0];
    v21 = v20 || v15 == *MEMORY[0x1E6980EF8];
    if (!v21 && v15 != *MEMORY[0x1E6980F18])
    {
      v16 = 6.0;
      v23 = v15 == *MEMORY[0x1E6980F30] || v15 == *MEMORY[0x1E6980F20];
      if (!v23 && v15 != *MEMORY[0x1E6980F28])
      {
        (*(v10 + 8))(v14, v9);
        v16 = 7.0;
      }
    }
  }

  (*(v5 + 16))(v8, a2, v4);
  v25 = (*(v5 + 88))(v8, v4);
  v27 = 1.0;
  if (v25 != *MEMORY[0x1E697F8A8])
  {
    v27 = 1.1;
    if (v25 != *MEMORY[0x1E697F8C0])
    {
      if (v25 == *MEMORY[0x1E697F8B0])
      {
        v27 = 1.06;
      }

      else
      {
        v26.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v25 == *MEMORY[0x1E697F8C8] || v25 == *MEMORY[0x1E697F8D8])
        {
          v27 = 1.19;
        }

        else if (v25 != *MEMORY[0x1E697F8B8])
        {
          if (v25 == *MEMORY[0x1E697F8D0])
          {
            v27 = 1.21;
          }

          else
          {
            v27 = 1.19;
            if (v25 != *MEMORY[0x1E697F8E0])
            {
              (*(v5 + 8))(v8, v4, 1.19, v26);
              v27 = 1.0;
            }
          }
        }
      }
    }
  }

  return v16 * v27;
}

double sub_1921DE848(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E6965AD8];
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
  v9 = sub_192225570();
  (*(v4 + 16))(v7, a2, v3);
  v10 = (*(v4 + 88))(v7, v3);
  v12 = 1.0;
  if (v10 != *MEMORY[0x1E697F8A8])
  {
    v12 = 1.1;
    if (v10 != *MEMORY[0x1E697F8C0])
    {
      if (v10 == *MEMORY[0x1E697F8B0])
      {
        v12 = 1.06;
      }

      else
      {
        v11.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v10 == *MEMORY[0x1E697F8C8] || v10 == *MEMORY[0x1E697F8D8])
        {
          v12 = 1.19;
        }

        else if (v10 != *MEMORY[0x1E697F8B8])
        {
          if (v10 == *MEMORY[0x1E697F8D0])
          {
            v12 = 1.21;
          }

          else
          {
            v12 = 1.19;
            if (v10 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v7, v3, 1.19, v11);
              v12 = 1.0;
            }
          }
        }
      }
    }
  }

  v14 = 7.0;
  if (v9)
  {
    v14 = 5.0;
  }

  return v14 * v12;
}

uint64_t sub_1921DEAAC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v3 = *MEMORY[0x1E6965AD8];
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
  if (sub_192225570())
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  return v4();
}

double sub_1921DEB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192226F10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == *MEMORY[0x1E6980EE8] || v15 == *MEMORY[0x1E6980F00] || v15 == *MEMORY[0x1E6980F08] || v15 == *MEMORY[0x1E6980F10])
  {
    v19 = 19.5;
  }

  else
  {
    v19 = 12.0;
    if (v15 != *MEMORY[0x1E6980F38] && v15 != *MEMORY[0x1E6980EF0] && v15 != *MEMORY[0x1E6980EF8] && v15 != *MEMORY[0x1E6980F18])
    {
      v19 = 10.5;
      v23 = v15 == *MEMORY[0x1E6980F30] || v15 == *MEMORY[0x1E6980F20];
      if (!v23 && v15 != *MEMORY[0x1E6980F28])
      {
        (*(v10 + 8))(v14, v9);
        v19 = 12.0;
      }
    }
  }

  (*(v5 + 16))(v8, a2, v4);
  v25 = (*(v5 + 88))(v8, v4);
  v27 = 1.0;
  if (v25 != *MEMORY[0x1E697F8A8])
  {
    v27 = 1.1;
    if (v25 != *MEMORY[0x1E697F8C0])
    {
      if (v25 == *MEMORY[0x1E697F8B0])
      {
        v27 = 1.06;
      }

      else
      {
        v26.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v25 == *MEMORY[0x1E697F8C8] || v25 == *MEMORY[0x1E697F8D8])
        {
          v27 = 1.19;
        }

        else if (v25 != *MEMORY[0x1E697F8B8])
        {
          if (v25 == *MEMORY[0x1E697F8D0])
          {
            v27 = 1.21;
          }

          else
          {
            v27 = 1.19;
            if (v25 != *MEMORY[0x1E697F8E0])
            {
              (*(v5 + 8))(v8, v4, 1.19, v26);
              v27 = 1.0;
            }
          }
        }
      }
    }
  }

  return v19 * v27;
}

double sub_1921DEF24(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E6965AD8];
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
  v9 = sub_192225570();
  (*(v4 + 16))(v7, a2, v3);
  v10 = (*(v4 + 88))(v7, v3);
  v12 = 1.0;
  if (v10 != *MEMORY[0x1E697F8A8])
  {
    v12 = 1.1;
    if (v10 != *MEMORY[0x1E697F8C0])
    {
      if (v10 == *MEMORY[0x1E697F8B0])
      {
        v12 = 1.06;
      }

      else
      {
        v11.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v10 == *MEMORY[0x1E697F8C8] || v10 == *MEMORY[0x1E697F8D8])
        {
          v12 = 1.19;
        }

        else if (v10 != *MEMORY[0x1E697F8B8])
        {
          if (v10 == *MEMORY[0x1E697F8D0])
          {
            v12 = 1.21;
          }

          else
          {
            v12 = 1.19;
            if (v10 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v7, v3, 1.19, v11);
              v12 = 1.0;
            }
          }
        }
      }
    }
  }

  v14 = 12.0;
  if (v9)
  {
    v14 = 7.5;
  }

  return v14 * v12;
}

uint64_t sub_1921DF1D0(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E6980EE8] || v8 == *MEMORY[0x1E6980F00] || v8 == *MEMORY[0x1E6980F08] || v8 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E30();
  }

  if (v8 == *MEMORY[0x1E6980F38])
  {
    return sub_192226E40();
  }

  if (v8 == *MEMORY[0x1E6980EF0] || v8 == *MEMORY[0x1E6980EF8])
  {
    return sub_192226E30();
  }

  if (v8 == *MEMORY[0x1E6980F18])
  {
    return sub_192226E20();
  }

  v14 = v8 == *MEMORY[0x1E6980F30] || v8 == *MEMORY[0x1E6980F20];
  if (v14 || v8 == *MEMORY[0x1E6980F28])
  {
    return sub_192226E20();
  }

  sub_192226E30();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1921DF3C0(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E6980EE8])
  {
    return sub_192226E20();
  }

  if (v8 == *MEMORY[0x1E6980F00] || v8 == *MEMORY[0x1E6980F08])
  {
    return sub_192226E30();
  }

  if (v8 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E20();
  }

  if (v8 == *MEMORY[0x1E6980F38])
  {
    return sub_192226E40();
  }

  if (v8 == *MEMORY[0x1E6980EF0])
  {
    return sub_192226E30();
  }

  if (v8 == *MEMORY[0x1E6980EF8] || v8 == *MEMORY[0x1E6980F18] || v8 == *MEMORY[0x1E6980F30] || v8 == *MEMORY[0x1E6980F20] || v8 == *MEMORY[0x1E6980F28])
  {
    return sub_192226E20();
  }

  sub_192226E30();
  return (*(v3 + 8))(v7, v2);
}

double sub_1921DF5B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226F10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192226600();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a2, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  v16 = 0.0;
  if (v15 != *MEMORY[0x1E697F898] && v15 != *MEMORY[0x1E697F8A0])
  {
    if (v15 == *MEMORY[0x1E697F8A8])
    {
      goto LABEL_6;
    }

    v16 = 17.0;
    if (v15 == *MEMORY[0x1E697F8C0])
    {
      goto LABEL_8;
    }

    if (v15 == *MEMORY[0x1E697F8B0])
    {
      goto LABEL_6;
    }

    if (v15 != *MEMORY[0x1E697F8C8] && v15 != *MEMORY[0x1E697F8D8])
    {
      if (v15 == *MEMORY[0x1E697F8B8])
      {
LABEL_6:
        v16 = 16.0;
        goto LABEL_8;
      }

      if (v15 != *MEMORY[0x1E697F8D0] && v15 != *MEMORY[0x1E697F8E0])
      {
        (*(v10 + 8))(v14, v9);
        goto LABEL_6;
      }
    }
  }

LABEL_8:
  (*(v5 + 104))(v8, *MEMORY[0x1E6980EF8], v4);
  sub_1921E2040(v8, a2);
  v19 = v18;
  (*(v5 + 8))(v8, v4);
  return v16 / v19 * sub_1921E3B10(a1, a2);
}

uint64_t sub_1921DF874(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E6980EE8])
  {
    return sub_192226E20();
  }

  if (v8 == *MEMORY[0x1E6980F00] || v8 == *MEMORY[0x1E6980F08] || v8 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E30();
  }

  if (v8 == *MEMORY[0x1E6980F38])
  {
    return sub_192226E40();
  }

  if (v8 == *MEMORY[0x1E6980EF0])
  {
    return sub_192226E30();
  }

  if (v8 == *MEMORY[0x1E6980EF8] || v8 == *MEMORY[0x1E6980F18] || v8 == *MEMORY[0x1E6980F30] || v8 == *MEMORY[0x1E6980F20] || v8 == *MEMORY[0x1E6980F28])
  {
    return sub_192226E20();
  }

  sub_192226E30();
  return (*(v3 + 8))(v7, v2);
}

double sub_1921DFA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192226F10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 != *MEMORY[0x1E6980EE8] && v15 != *MEMORY[0x1E6980F00] && v15 != *MEMORY[0x1E6980F08] && v15 != *MEMORY[0x1E6980F10] && v15 != *MEMORY[0x1E6980F38] && v15 != *MEMORY[0x1E6980EF0] && v15 != *MEMORY[0x1E6980EF8] && v15 != *MEMORY[0x1E6980F18] && v15 != *MEMORY[0x1E6980F30] && v15 != *MEMORY[0x1E6980F20] && v15 != *MEMORY[0x1E6980F28])
  {
    (*(v10 + 8))(v14, v9);
  }

  (*(v5 + 16))(v8, a2, v4);
  v26 = (*(v5 + 88))(v8, v4);
  result = 8.5;
  if (v26 != *MEMORY[0x1E697F8A8])
  {
    result = 9.35;
    if (v26 != *MEMORY[0x1E697F8C0])
    {
      if (v26 == *MEMORY[0x1E697F8B0])
      {
        return 9.01;
      }

      else if (v26 == *MEMORY[0x1E697F8C8] || v26 == *MEMORY[0x1E697F8D8])
      {
        return 10.115;
      }

      else if (v26 != *MEMORY[0x1E697F8B8])
      {
        if (v26 == *MEMORY[0x1E697F8D0])
        {
          return 10.285;
        }

        else
        {
          result = 10.115;
          if (v26 != *MEMORY[0x1E697F8E0])
          {
            (*(v5 + 8))(v8, v4, 10.115, 10.115);
            return 8.5;
          }
        }
      }
    }
  }

  return result;
}

double sub_1921DFDC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E6965AD8];
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
  sub_192225570();
  (*(v4 + 16))(v7, a2, v3);
  v9 = (*(v4 + 88))(v7, v3);
  result = 8.5;
  if (v9 != *MEMORY[0x1E697F8A8])
  {
    result = 9.35;
    if (v9 != *MEMORY[0x1E697F8C0])
    {
      if (v9 == *MEMORY[0x1E697F8B0])
      {
        return 9.01;
      }

      else
      {
        v10.n128_u64[0] = 0x40243AE147AE147BLL;
        if (v9 == *MEMORY[0x1E697F8C8] || v9 == *MEMORY[0x1E697F8D8])
        {
          return 10.115;
        }

        else if (v9 != *MEMORY[0x1E697F8B8])
        {
          if (v9 == *MEMORY[0x1E697F8D0])
          {
            return 10.285;
          }

          else
          {
            result = 10.115;
            if (v9 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v7, v3, 10.115, v10);
              return 8.5;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1921E0010(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = *(v3 + 88);
  v29 = v2;
  v9 = v8(v7, v2);
  v33 = *MEMORY[0x1E6980EE8];
  v32 = *MEMORY[0x1E6980F00];
  v31 = *MEMORY[0x1E6980F08];
  v30 = *MEMORY[0x1E6980F10];
  v10 = *MEMORY[0x1E6980F38];
  v11 = *MEMORY[0x1E6980EF0];
  v12 = *MEMORY[0x1E6980EF8];
  v13 = *MEMORY[0x1E6980F18];
  v14 = *MEMORY[0x1E6980F30];
  v15 = *MEMORY[0x1E6980F20];
  v16 = *MEMORY[0x1E6980F28];
  result = sub_192226E40();
  if (v9 != v33 && v9 != v32 && v9 != v31 && v9 != v30 && v9 != v10 && v9 != v11 && v9 != v12 && v9 != v13 && v9 != v14 && v9 != v15 && v9 != v16)
  {
    return (*(v3 + 8))(v7, v29);
  }

  return result;
}

uint64_t sub_1921E020C()
{
  v0 = *MEMORY[0x1E6965AD8];
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
  sub_192225570();

  return sub_192226E40();
}

uint64_t sub_1921E0404(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = sub_192226F10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == *MEMORY[0x1E6980EE8] || v14 == *MEMORY[0x1E6980F00] || v14 == *MEMORY[0x1E6980F08] || v14 == *MEMORY[0x1E6980F10])
  {
    return a3();
  }

  if (v14 == *MEMORY[0x1E6980F38])
  {
    return a4();
  }

  if (v14 == *MEMORY[0x1E6980EF0] || v14 == *MEMORY[0x1E6980EF8] || v14 == *MEMORY[0x1E6980F18])
  {
    return a2();
  }

  v21 = *MEMORY[0x1E6980F30];
  v22 = *MEMORY[0x1E6980F20];
  v23 = *MEMORY[0x1E6980F28];
  v24 = v14;
  result = a2();
  if (v24 != v21 && v24 != v22 && v24 != v23)
  {
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_1921E0618(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E6980EE8] || v8 == *MEMORY[0x1E6980F00] || v8 == *MEMORY[0x1E6980F08] || v8 == *MEMORY[0x1E6980F10])
  {
    return sub_192226E40();
  }

  if (v8 == *MEMORY[0x1E6980F38])
  {
    return sub_192226DD0();
  }

  if (v8 == *MEMORY[0x1E6980EF0] || v8 == *MEMORY[0x1E6980EF8])
  {
    return sub_192226E40();
  }

  if (v8 == *MEMORY[0x1E6980F18])
  {
    return sub_192226DD0();
  }

  v14 = *MEMORY[0x1E6980F30];
  v15 = *MEMORY[0x1E6980F20];
  v16 = *MEMORY[0x1E6980F28];
  v17 = v8;
  result = sub_192226E40();
  if (v17 != v14 && v17 != v15 && v17 != v16)
  {
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

unint64_t sub_1921E083C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19222B480;
  v3 = *MEMORY[0x1E69657A8];
  *(inited + 32) = *MEMORY[0x1E69657A8];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  *(inited + 40) = a1;
  v4 = v3;
  v5 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
  return v5;
}

uint64_t View.defineFontsForSmartStack()()
{
  swift_getKeyPath();
  type metadata accessor for RectangularHomeScreenComplicationFontDefinition();
  sub_1921E3E34(&qword_1EADEFD80, v0, type metadata accessor for RectangularHomeScreenComplicationFontDefinition);
  sub_192227040();
}

unint64_t sub_1921E0C34()
{
  result = qword_1ED74BAD0;
  if (!qword_1ED74BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD68, &qword_1922360C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BAD0);
  }

  return result;
}

double sub_1921E0C98@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_192076274(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19213EF6C();
      v11 = v13;
    }

    sub_19203BEDC((*(v11 + 56) + 32 * v8), a2);
    sub_1921E16A0(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1921E0D38@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_19203CB7C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19213FBB0();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_1922285D0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_19203BEDC((*(v11 + 56) + 32 * v8), a2);
    sub_1921E189C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1921E0E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1920440AC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19213FE34();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_192225150();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1921E1B50(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_192225150();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1921E0F84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_192228AD0();

      sub_192140210(v21, v10);

      result = sub_192228B30();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1921E1120(int64_t a1, uint64_t a2)
{
  v46 = sub_192225020();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192226B30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SymbolLookupKey(0);
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x1EEE9AC00](v41);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 + 64;
  v18 = -1 << *(a2 + 32);
  v19 = (a1 + 1) & ~v18;
  if ((*(a2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v52 = v4;
    v20 = ~v18;
    v21 = sub_192228310();
    v53 = v20;
    v51 = (v21 + 1) & v20;
    v22 = *(v12 + 72);
    v48 = (v8 + 88);
    v49 = (v8 + 16);
    v47 = *MEMORY[0x1E697CAF0];
    v44 = *MEMORY[0x1E697CAF8];
    v23 = (v8 + 96);
    v24 = v22;
    v43 = (v52 + 32);
    v42 = (v52 + 8);
    v52 = a2 + 64;
    v50 = v22;
    do
    {
      v25 = v24 * v19;
      sub_1921E3D74(*(a2 + 48) + v24 * v19, v16);
      v26 = *(a2 + 40);
      sub_192228AD0();
      (*v49)(v11, v16, v7);
      v27 = (*v48)(v11, v7);
      if (v27 == v47)
      {
        (*v23)(v11, v7);
        v28 = v45;
        v29 = v46;
        (*v43)(v45, v11, v46);
        sub_1921E3E34(&qword_1EADF0A38, 255, MEMORY[0x1E6968FB0]);
        sub_192227890();
        (*v42)(v28, v29);
      }

      else
      {
        if (v27 != v44)
        {
          goto LABEL_25;
        }

        (*v23)(v11, v7);
        v30 = *v11;
        sub_192228AF0();
      }

      v31 = sub_192228B30();
      result = sub_1921E3DD8(v16);
      v32 = v31 & v53;
      if (a1 >= v51)
      {
        v17 = v52;
        v24 = v50;
        if (v32 < v51)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v17 = v52;
        v24 = v50;
        if (v32 >= v51)
        {
          goto LABEL_14;
        }
      }

      if (a1 >= v32)
      {
LABEL_14:
        v33 = *(a2 + 48);
        result = v33 + v24 * a1;
        if (v24 * a1 < v25 || result >= v33 + v25 + v24)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v24 * a1 != v25)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v34 = *(a2 + 56);
        v35 = (v34 + 8 * a1);
        v36 = (v34 + 8 * v19);
        if (a1 != v19 || v35 >= v36 + 1)
        {
          *v35 = *v36;
          a1 = v19;
        }
      }

LABEL_4:
      v19 = (v19 + 1) & v53;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
LABEL_25:
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000004BLL, 0x800000019224B9D0);
    sub_1922285A0();
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1921E16A0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_192228AD0();
      type metadata accessor for CFString(0);
      sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
      v12 = v11;
      sub_192225580();
      v13 = sub_192228B30();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1921E189C(int64_t a1, uint64_t a2)
{
  v4 = sub_1922285D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_192228310();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_192227880();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1921E1B50(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_192228310() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_192228AD0();

      sub_1922279B0();
      v13 = sub_192228B30();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_192225150() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

id sub_1921E1D3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_19202A98C((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_1921E1D8C@<X0>(uint64_t a1@<X8>)
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
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_19202A98C(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_19203BEDC(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_192033970(&v19, &qword_1EADF2058, &qword_192242DB8);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
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
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
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

uint64_t sub_1921E1EDC(void *a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  result = swift_initStackObject();
  *(result + 16) = xmmword_19222B490;
  v6 = *MEMORY[0x1E6965870];
  *(result + 32) = *MEMORY[0x1E6965870];
  *(result + 64) = MEMORY[0x1E69E6530];
  *(result + 40) = 0x8000;
  v7 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    *(result + 72) = v7;
    v8 = result;
    type metadata accessor for CFString(0);
    *(v8 + 104) = v9;
    *(v8 + 80) = a1;
    v10 = v6;
    v11 = a1;
    v12 = v7;
    v13 = sub_19207614C(v8);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
    swift_arrayDestroy();
    if ((a3 & 1) == 0)
    {
      v14 = sub_192198CD8();
      v15 = *MEMORY[0x1E6965970];
      v19 = MEMORY[0x1E69E7DE0];
      v18[0] = v14;
      sub_19203BEDC(v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1920767A8(v17, v15, isUniquelyReferenced_nonNull_native);
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1921E2040(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = sub_192226F10();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, v17, v20);
  v23 = (*(v18 + 88))(v22, v17);
  if (v23 == *MEMORY[0x1E6980EE8])
  {
    (*(v5 + 16))(v16, a2, v4);
    result = (*(v5 + 88))(v16, v4);
    v25 = result == *MEMORY[0x1E697F898] || result == *MEMORY[0x1E697F8A0];
    if (!v25 && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v16, v4, 26.0);
    }

    return result;
  }

  if (v23 == *MEMORY[0x1E6980F00] || v23 == *MEMORY[0x1E6980F08] || v23 == *MEMORY[0x1E6980F10])
  {
    goto LABEL_25;
  }

  v28 = v23 == *MEMORY[0x1E6980F38] || v23 == *MEMORY[0x1E6980EF0];
  if (v28 || v23 == *MEMORY[0x1E6980EF8])
  {
    goto LABEL_25;
  }

  if (v23 == *MEMORY[0x1E6980F18])
  {
    (*(v5 + 16))(v13, a2, v4);
    result = (*(v5 + 88))(v13, v4);
    if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v13, v4, 15.5);
    }

    return result;
  }

  if (v23 == *MEMORY[0x1E6980F30])
  {
LABEL_25:
    v30 = a2;
  }

  else
  {
    v30 = a2;
    if (v23 == *MEMORY[0x1E6980F20])
    {
      v31 = v33;
      (*(v5 + 16))(v33, v30, v4);
      result = (*(v5 + 88))(v31, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v31, v4, 10.0);
      }

      return result;
    }

    if (v23 != *MEMORY[0x1E6980F28])
    {
      (*(v18 + 8))(v22, v17);
      v30 = a2;
    }
  }

  (*(v5 + 16))(v8, v30, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
  {
    return (*(v5 + 8))(v8, v4, 1.19, 1.19);
  }

  return result;
}

uint64_t sub_1921E27F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v23 = sub_192226F10();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v46 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v45 - v29;
  v31 = *(v24 + 16);
  v47 = a1;
  v31(&v45 - v29, a1, v23, v28);
  v32 = (*(v24 + 88))(v30, v23);
  if (v32 == *MEMORY[0x1E6980EE8] || v32 == *MEMORY[0x1E6980F00])
  {
    (*(v5 + 16))(v22, a2, v4);
    result = (*(v5 + 88))(v22, v4);
    v35 = result == *MEMORY[0x1E697F898] || result == *MEMORY[0x1E697F8A0];
    if (!v35 && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v22, v4, 41.5);
    }
  }

  else if (v32 == *MEMORY[0x1E6980F08] || v32 == *MEMORY[0x1E6980F10])
  {
    (*(v5 + 16))(v19, a2, v4);
    result = (*(v5 + 88))(v19, v4);
    if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
    {
      return (*(v5 + 8))(v19, v4, 26.0);
    }
  }

  else
  {
    v37 = *MEMORY[0x1E6980EF8];
    if (v32 == *MEMORY[0x1E6980F38] || v32 == v37)
    {
      (*(v5 + 16))(v16, a2, v4);
      result = (*(v5 + 88))(v16, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v16, v4, 17.0);
      }
    }

    else if (v32 == *MEMORY[0x1E6980F18])
    {
      v39 = v50;
      (*(v5 + 16))(v50, a2, v4);
      result = (*(v5 + 88))(v39, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v39, v4, 14.0);
      }
    }

    else if (v32 == *MEMORY[0x1E6980F20])
    {
      v40 = v49;
      (*(v5 + 16))(v49, a2, v4);
      result = (*(v5 + 88))(v40, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v40, v4, 10.5);
      }
    }

    else if (v32 == *MEMORY[0x1E6980F28])
    {
      v41 = v45;
      (*(v5 + 16))(v45, a2, v4);
      result = (*(v5 + 88))(v41, v4);
      if (result != *MEMORY[0x1E697F898] && result != *MEMORY[0x1E697F8A0] && result != *MEMORY[0x1E697F8A8] && result != *MEMORY[0x1E697F8C0] && result != *MEMORY[0x1E697F8B0] && result != *MEMORY[0x1E697F8C8] && result != *MEMORY[0x1E697F8D8] && result != *MEMORY[0x1E697F8B8] && result != *MEMORY[0x1E697F8D0] && result != *MEMORY[0x1E697F8E0])
      {
        return (*(v5 + 8))(v41, v4, 15.0);
      }
    }

    else
    {
      v50 = *(v24 + 8);
      (v50)(v30, v23);
      v42 = v48;
      (*(v5 + 16))(v48, a2, v4);
      v43 = (*(v5 + 88))(v42, v4);
      if (v43 != *MEMORY[0x1E697F898] && v43 != *MEMORY[0x1E697F8A0] && v43 != *MEMORY[0x1E697F8A8] && v43 != *MEMORY[0x1E697F8C0] && v43 != *MEMORY[0x1E697F8B0] && v43 != *MEMORY[0x1E697F8C8] && v43 != *MEMORY[0x1E697F8D8] && v43 != *MEMORY[0x1E697F8B8] && v43 != *MEMORY[0x1E697F8D0] && v43 != *MEMORY[0x1E697F8E0])
      {
        (*(v5 + 8))(v48, v4);
      }

      v44 = v46;
      (*(v24 + 104))(v46, v37, v23);
      sub_1921E2040(v44, a2);
      (v50)(v44, v23);
      return sub_1921E2040(v47, a2);
    }
  }

  return result;
}

uint64_t sub_1921E343C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  result = swift_initStackObject();
  *(result + 16) = xmmword_192242920;
  v4 = *MEMORY[0x1E6965870];
  *(result + 32) = *MEMORY[0x1E6965870];
  *(result + 64) = MEMORY[0x1E69E6530];
  *(result + 40) = 0x8000;
  v5 = *MEMORY[0x1E69658E0];
  if (!*MEMORY[0x1E69658E0])
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  *(result + 72) = v5;
  v7 = *MEMORY[0x1E69658A0];
  if (!*MEMORY[0x1E69658A0])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  type metadata accessor for CFString(0);
  v6[10] = v7;
  v8 = *MEMORY[0x1E6965970];
  v9 = MEMORY[0x1E6965960];
  v6[13] = v10;
  v6[14] = v8;
  v11 = *v9;
  v12 = MEMORY[0x1E69E7DE0];
  v6[18] = MEMORY[0x1E69E7DE0];
  v6[15] = v11;
  v13 = v4;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v17 = sub_19207614C(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  if ((a2 & 1) == 0)
  {
    v21 = v12;
    *&v20 = sub_192198CD8();
    sub_19203BEDC(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1920767A8(v19, v14, isUniquelyReferenced_nonNull_native);
  }

  return v17;
}

uint64_t sub_1921E35D4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  result = swift_initStackObject();
  *(result + 16) = xmmword_19222B490;
  v4 = *MEMORY[0x1E6965870];
  *(result + 32) = *MEMORY[0x1E6965870];
  *(result + 64) = MEMORY[0x1E69E6530];
  *(result + 40) = 0x8000;
  v5 = *MEMORY[0x1E69658E0];
  if (!*MEMORY[0x1E69658E0])
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  *(result + 72) = v5;
  v7 = *MEMORY[0x1E69658A0];
  if (!*MEMORY[0x1E69658A0])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  type metadata accessor for CFString(0);
  *(v6 + 104) = v8;
  *(v6 + 80) = v7;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = sub_19207614C(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF190, &qword_19222C030);
  swift_arrayDestroy();
  if ((a2 & 1) == 0)
  {
    v13 = sub_192198CD8();
    v14 = *MEMORY[0x1E6965970];
    v18 = MEMORY[0x1E69E7DE0];
    v17[0] = v13;
    sub_19203BEDC(v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1920767A8(v16, v14, isUniquelyReferenced_nonNull_native);
  }

  return v12;
}

uint64_t sub_1921E3748(void *a1, uint64_t a2, char a3)
{
  result = sub_1921E1EDC(a1, a2, a3 & 1);
  v15 = result;
  v4 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    v5 = *MEMORY[0x1E69658A8];
    if (*MEMORY[0x1E69658A8])
    {
      v6 = result;
      type metadata accessor for CFString(0);
      v14 = v7;
      *&v13 = v5;
      sub_19203BEDC(&v13, v12);
      v8 = v4;
      v9 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1920767A8(v12, v8, isUniquelyReferenced_nonNull_native);

      return v6;
    }

    else
    {
      v11 = v4;
      sub_1921E0C98(v11, &v13);

      sub_192033970(&v13, &unk_1EADEF330, &unk_19222CD40);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1921E3830(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_1921E1D8C(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_19203BEDC(v43, v41);
  v13 = *a5;
  result = sub_192076274(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1920768E8(v19, a4 & 1);
    v21 = *a5;
    result = sub_192076274(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = sub_192228A40();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_19213EF6C();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_19203BEDC(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_19203BEDC(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_1921E1D8C(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_19203BEDC(v43, v41);
        v31 = *a5;
        result = sub_192076274(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_1920768E8(v35, 1);
          v36 = *a5;
          result = sub_192076274(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_1(v30);
          sub_19203BEDC(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_19203BEDC(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1921E1D8C(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_19204C3D0();
  }

LABEL_27:
  __break(1u);
  return result;
}

double sub_1921E3B10(uint64_t a1, uint64_t a2)
{
  v3 = sub_192226600();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E6965AD8];
  type metadata accessor for CFString(0);
  sub_1921E3E34(&qword_1ED74B7C0, 255, type metadata accessor for CFString);
  v9 = sub_192225570();
  (*(v4 + 16))(v7, a2, v3);
  v10 = (*(v4 + 88))(v7, v3);
  v12 = 1.0;
  if (v10 != *MEMORY[0x1E697F8A8])
  {
    v12 = 1.1;
    if (v10 != *MEMORY[0x1E697F8C0])
    {
      if (v10 == *MEMORY[0x1E697F8B0])
      {
        v12 = 1.06;
      }

      else
      {
        v11.n128_u64[0] = 0x3FF30A3D70A3D70ALL;
        if (v10 == *MEMORY[0x1E697F8C8] || v10 == *MEMORY[0x1E697F8D8])
        {
          v12 = 1.19;
        }

        else if (v10 != *MEMORY[0x1E697F8B8])
        {
          if (v10 == *MEMORY[0x1E697F8D0])
          {
            v12 = 1.21;
          }

          else
          {
            v12 = 1.19;
            if (v10 != *MEMORY[0x1E697F8E0])
            {
              (*(v4 + 8))(v7, v3, 1.19, v11);
              v12 = 1.0;
            }
          }
        }
      }
    }
  }

  v14 = 16.0;
  if (v9)
  {
    v14 = 11.5;
  }

  return v14 * v12;
}

uint64_t sub_1921E3D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolLookupKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921E3DD8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolLookupKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1921E3E34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void ActivityPreviewContext.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a3;
  v118 = a4;
  v119 = a5;
  v7 = type metadata accessor for ActivityPreviewContextKey();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86 - v14;
  v16 = sub_1922253B0();
  v109 = *(v16 - 8);
  v110 = v16;
  v17 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = type metadata accessor for ActivityViewContext();
  v115 = *(v22 - 8);
  v23 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v86 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v28);
  v29 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v33);
  if (v7 == a1)
  {
    v104 = v35;
    v102 = v20;
    v97 = a1;
    v114 = v39;
    v95 = v15;
    v112 = v37;
    v113 = v34;
    v107 = v25;
    v105 = v22;
    v96 = v19;
    v94 = v7;
    v41 = xmmword_1ED74CC80;
    if (xmmword_1ED74CC80)
    {
      v103 = qword_1ED74CC90;
      v101 = v38;
      *&v100 = *(v38 + 16);
      v42 = &v86 - v36;
      v43 = v116;
      v99 = v21;
      (v100)(&v86 - v36, v116, v21, v40);
      v44 = v113;
      v45 = *(v112 + 16);
      v46 = v114;
      v45(v114, v43 + *(a2 + 36), v113);
      v93 = a2;
      LODWORD(v43) = *(v43 + *(a2 + 40));
      v98 = "ed";
      v106 = v42;
      v47 = v99;
      (v100)(v32, v42, v99);
      v48 = v103;
      v49 = v104;
      v45(v104, v46, v44);
      v50 = v32;
      v51 = v107;
      v52 = v49;
      v53 = v47;
      v54 = v102;
      sub_192100360(0xD000000000000016, v98 | 0x8000000000000000, v50, v52, v43, v47, v107);
      v55 = *v41;
      v120 = v41;
      v56 = *(v48 + 56);
      v104 = v41;
      v57 = v53;

      v56(&v121, v51, v53, v54, v55, v48);
      v92 = v55;
      LODWORD(v98) = v43;
      v58 = v121;
      v100 = v122;
      v59 = v123;
      v60 = sub_192224DB0();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      sub_192224DA0();
      v63 = *(v54 + 16);
      v89 = sub_192224D90();
      v90 = v64;
      v88 = v58;
      v91 = v59;
      swift_getAssociatedConformanceWitness();
      v65 = sub_192224D90();
      v97 = v66;
      v87 = v65;
      v121 = v104;
      v67 = (*(v103 + 64))(v92);
      v68 = v96;
      v69 = sub_1922253A0();
      MEMORY[0x1EEE9AC00](v69);
      *(&v86 - 2) = v68;
      v70 = v95;
      sub_1920BBEE4(sub_1921E4CCC, v67, v95);

      v71 = v108;
      sub_19202CFFC(v70, v108, &qword_1EADEEE20, &qword_19222B670);
      v72 = type metadata accessor for WidgetDescriptor(0);
      if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
      {
        sub_192033970(v71, &qword_1EADEEE20, &qword_19222B670);
        v73 = &unk_1F06A91A8;
      }

      else
      {
        v73 = *(v71 + *(v72 + 32));

        sub_192036A20(v71, type metadata accessor for WidgetDescriptor);
      }

      v74 = v116;
      v75 = v94;
      v77 = v110;
      v76 = v111;
      v78 = v91;

      sub_192033970(v95, &qword_1EADEEE20, &qword_19222B670);
      (*(v115 + 8))(v107, v105);
      (*(v112 + 8))(v114, v113);
      (*(v101 + 8))(v106, v57);
      v79 = v109;
      v80 = v96;
      (*(v109 + 16))(&v76[v75[5]], v96, v77);
      v81 = *(v74 + *(v93 + 44));
      *v76 = v88;
      *(v76 + 8) = v100;
      *(v76 + 3) = v78;
      v82 = &v76[v75[6]];
      v83 = v90;
      *v82 = v89;
      v82[1] = v83;
      v84 = &v76[v75[7]];
      v85 = v97;
      *v84 = v87;
      v84[1] = v85;
      v76[v75[8]] = v98;
      v76[v75[9]] = v81;
      *&v76[v75[10]] = v73;
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
      (*(v79 + 8))(v80, v77);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_192226320();
  }
}

uint64_t type metadata accessor for ActivityPreviewContextKey()
{
  result = qword_1EADF2110;
  if (!qword_1EADF2110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1921E4930(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0900, &unk_192235BA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - v8;
  sub_192038FB8(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = sub_1922253B0();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
      sub_192036A20(v5, type metadata accessor for ViewSource);
      goto LABEL_7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
    v12 = *(v11 + 1);
    v13 = *(v11 + 3);

    v14 = sub_1922253B0();
    v15 = *(v14 - 8);
    (*(v15 + 32))(v9, v5, v14);
    (*(v15 + 56))(v9, 0, 1, v14);
    goto LABEL_7;
  }

  sub_192036A20(v5, type metadata accessor for ViewSource);
  v14 = sub_1922253B0();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
LABEL_7:
  sub_1922253B0();
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v9, 1, v14) == 1)
  {
    sub_192033970(v9, &qword_1EADF0900, &unk_192235BA0);
    sub_192225370();
    v17 = 0;
  }

  else
  {
    v18 = sub_192225370();
    v20 = v19;
    (*(v16 + 8))(v9, v14);
    v21 = sub_192225370();
    if (v20)
    {
      if (v18 == v21 && v20 == v22)
      {

        v17 = 1;
      }

      else
      {
        v17 = sub_1922289A0();
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17 & 1;
}

uint64_t sub_1921E4CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a4;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for ActivityPreviewContext();
  v11 = v10[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a6 + v11, a2, AssociatedTypeWitness);
  *(a6 + v10[10]) = a3;
  *(a6 + v10[11]) = v9;
  return result;
}

uint64_t ActivityPreviewContentCategory.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_192228700();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1921E4E54()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_1921E4EC8()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_1921E4F1C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_192228700();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1921E4F90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  __swift_allocate_value_buffer(v0, qword_1EADF2060);
  v1 = __swift_project_value_buffer(v0, qword_1EADF2060);
  v2 = type metadata accessor for ActivityPreviewContextKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static ActivityPreviewContextKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  return sub_19202CFFC(v3, a1, &qword_1EADF2078, &qword_192242DC8);
}

uint64_t static ActivityPreviewContextKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  sub_1921E51A0(a1, v3);
  swift_endAccess();
  return sub_192033970(a1, &qword_1EADF2078, &qword_192242DC8);
}

uint64_t sub_1921E51A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static ActivityPreviewContextKey.defaultValue.modify())()
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  __swift_project_value_buffer(v0, qword_1EADF2060);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1921E52B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  return sub_19202CFFC(v3, a1, &qword_1EADF2078, &qword_192242DC8);
}

uint64_t sub_1921E5360(uint64_t a1)
{
  if (qword_1EADEE9E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2078, &qword_192242DC8);
  v3 = __swift_project_value_buffer(v2, qword_1EADF2060);
  swift_beginAccess();
  sub_1921E51A0(a1, v3);
  return swift_endAccess();
}

uint64_t ActivityPreviewContextKey.viewSource.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t ActivityPreviewContextKey.attributesType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityPreviewContextKey() + 20);
  v4 = sub_1922253B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityPreviewContextKey.attributesData.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityPreviewContextKey() + 24);
  v2 = *v1;
  sub_1920367C8(*v1, *(v1 + 8));
  return v2;
}

uint64_t ActivityPreviewContextKey.contentStatePayload.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityPreviewContextKey() + 28);
  v2 = *v1;
  sub_1920367C8(*v1, *(v1 + 8));
  return v2;
}

uint64_t ActivityPreviewContextKey.viewKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityPreviewContextKey();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ActivityPreviewContextKey.supportedFamilies.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityPreviewContextKey() + 40));
}

uint64_t ActivityPreviewViewKind.DynamicIslandPreviewViewState.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t ActivityAttributes.previewContext(_:isStale:viewKind:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = a6;
  v24 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v24 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActivityPreviewContext();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  v22 = *a3;
  v31 = sub_192227240();
  (*(v12 + 16))(v16, v26, a4);
  (*(v8 + 16))(v11, v27, AssociatedTypeWitness);
  v30 = v22;
  sub_1921E4CEC(v16, v11, v28, &v30, a4, v21);
  swift_getWitnessTable();
  sub_192227090();
  (*(v18 + 8))(v21, v17);
}

unint64_t sub_1921E5960()
{
  result = qword_1EADF2080;
  if (!qword_1EADF2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2080);
  }

  return result;
}

unint64_t sub_1921E59B8()
{
  result = qword_1EADF2088[0];
  if (!qword_1EADF2088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF2088);
  }

  return result;
}

uint64_t sub_1921E5A0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1921E5ACC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + v12;
  if (a2 > v11)
  {
    v15 = v13 + (v14 & ~v12) + 2;
    v16 = 8 * v15;
    if (v15 > 3)
    {
      goto LABEL_9;
    }

    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 >= 2)
    {
LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v15)
      {
        if (v15 <= 3)
        {
          v20 = v15;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      v27 = v11 + (v21 | v19);
      return (v27 + 1);
    }
  }

LABEL_29:
  if (v7 == v11)
  {
    v22 = *(v6 + 48);

    return v22(a1, v7, v5);
  }

  v24 = (a1 + v14) & ~v12;
  if (v10 != v11)
  {
    v26 = *(v24 + v13);
    if (v26 < 2)
    {
      return 0;
    }

    v27 = (v26 + 2147483646) & 0x7FFFFFFF;
    return (v27 + 1);
  }

  v25 = *(v9 + 48);

  return v25(v24);
}

void sub_1921E5D74(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v8 + 64) + v14;
  v18 = v15 + (v17 & ~v14) + 2;
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v15 + (v17 & ~v14) != -2)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_51:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v16)
  {
    v25 = *(v28 + 56);

    v25(a1, a2, v9, v7);
  }

  else
  {
    v26 = &a1[v17] & ~v14;
    if (v12 == v16)
    {
      v27 = *(v11 + 56);

      v27(v26, a2);
    }

    else
    {
      *(v26 + v15) = a2 + 1;
    }
  }
}

void sub_1921E60D8()
{
  sub_1922253B0();
  if (v0 <= 0x3F)
  {
    sub_1920B9710();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ActivityPreviewViewKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
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

uint64_t storeEnumTagSinglePayload for ActivityPreviewViewKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1921E62E4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1921E62F8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1921E6328()
{
  result = qword_1EADF2120;
  if (!qword_1EADF2120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2128, &qword_192243058);
    sub_1921E63B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2120);
  }

  return result;
}

unint64_t sub_1921E63B4()
{
  result = qword_1EADF2130;
  if (!qword_1EADF2130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2138, qword_192243060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2130);
  }

  return result;
}

uint64_t sub_1921E641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920A59A8;

  return v13(a1, a2, a3, a4);
}

double sub_1921E6584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1922261D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226740();
  (*(v13 + 16))(v17, a1, a3);
  sub_192226750();
  (*(v9 + 16))(v12, a2, v8);
  sub_192226700();
  sub_192226730();
  sub_1920C9518();
  sub_192226710();
  v22 = v25;
  v23 = v24;
  LOBYTE(a2) = sub_192226720();

  v18 = type metadata accessor for ExtractedControlValueMetadata(0);
  v19 = (a4 + *(v18 + 20));
  v21 = v22;
  result = *&v23;
  *v19 = v23;
  v19[1] = v21;
  *(a4 + *(v18 + 24)) = a2 & 1;
  return result;
}

uint64_t sub_1921E67A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1922261D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192226740();
  (*(v13 + 16))(v17, a1, a3);
  sub_192226750();
  (*(v9 + 16))(v12, a2, v8);
  sub_192226700();
  sub_192226730();
  LOBYTE(a2) = sub_192226720();

  result = type metadata accessor for ExtractedControlMetadata(0);
  *(a4 + *(result + 20)) = a2 & 1;
  return result;
}

uint64_t sub_1921E69B4()
{
  result = sub_192226BA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921E6A70()
{
  result = sub_192226BA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921E6B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v3 = sub_1922276C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1922276E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2150, &unk_192243180);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  v21[3] = *v2;
  sub_1922276D0();
  sub_1922276B0();
  v17 = &v16[*(v13 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF18C8, &qword_19223DA10) + 28);
  sub_1921E6D8C();
  sub_192225DD0();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  *v17 = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2158, qword_1922431C0);
  (*(*(v19 - 8) + 16))(v16, v22, v19);
  sub_1921E6DE4();
  sub_1922270D0();
  return sub_1921E6EC8(v16);
}

unint64_t sub_1921E6D8C()
{
  result = qword_1EADEDCC0;
  if (!qword_1EADEDCC0)
  {
    sub_1922276E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDCC0);
  }

  return result;
}

unint64_t sub_1921E6DE4()
{
  result = qword_1EADEDE48;
  if (!qword_1EADEDE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2150, &unk_192243180);
    sub_192031E74(&qword_1EADEDD38, &qword_1EADF2158, qword_1922431C0);
    sub_192031E74(&unk_1EADEE600, &qword_1EADF18C8, &qword_19223DA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE48);
  }

  return result;
}

uint64_t sub_1921E6EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2150, &unk_192243180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1921E7020@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v32 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v31 - v9);
  v11 = type metadata accessor for WidgetDescriptor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v16 = [a1 kind];
  v17 = sub_192227960();
  v19 = v18;

  sub_1921E74D0(v17, v19, a2, a3, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v20 = &qword_1EADEEE20;
    v21 = &qword_19222B670;
    v22 = v10;
  }

  else
  {
    sub_19207C284(v10, v15);
    sub_19203683C(v34);
    result = sub_192036A20(v15, type metadata accessor for WidgetDescriptor);
    if (*(&v34[0] + 1))
    {
      v24 = v34[3];
      v25 = v32;
      v32[2] = v34[2];
      v25[3] = v24;
      v25[4] = v35[0];
      *(v25 + 73) = *(v35 + 9);
      v26 = v34[1];
      *v25 = v34[0];
      v25[1] = v26;
      return result;
    }

    v20 = &qword_1EADF1990;
    v21 = &qword_192243230;
    v22 = v34;
  }

  sub_192033970(v22, v20, v21);
  v27 = [v33 kind];
  v28 = sub_192227960();
  v30 = v29;

  sub_1921E7A80(v28, v30);

  return swift_willThrow();
}

uint64_t sub_1921E7298()
{
  v1 = v0;
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v20 = v2;

  v3 = v20;
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
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    v9 = [v3 base64EncodedStringWithOptions_];
    v10 = sub_192227960();
    v12 = v11;

    v13 = sub_19202B8CC(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_192028000, v5, v6, "Locale token: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  v14 = v3;
  v15 = sub_192225080();
  v17 = v16;

  *(v1 + 16) = v15;
  *(v1 + 24) = v17;

  v18 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1921E74D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a2;
  v49 = a1;
  v8 = type metadata accessor for ViewSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v45 - v13);
  v46 = type metadata accessor for WidgetDescriptor(0);
  v15 = *(v46 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a4 + 8))(a3, a4);
  v20 = result;
  v21 = *(result + 16);
  if (v21)
  {
    v45 = a5;
    v22 = 0;
    v50 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v47 = v15;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      sub_19207C0C0(v50 + *(v15 + 72) * v22, v18, type metadata accessor for WidgetDescriptor);
      sub_19207C0C0(v18, v14, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (!EnumCaseMultiPayload)
      {
        *(&v52 + 1) = &type metadata for TimelineViewSource;
        v53 = sub_192082A7C();
LABEL_15:
        v31 = swift_allocObject();
        *&v51 = v31;
        v32 = v14[1];
        v31[1] = *v14;
        v31[2] = v32;
        v33 = v14[3];
        v31[3] = v14[2];
        v31[4] = v33;
        goto LABEL_16;
      }

      v27 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48);
      v28 = *(v27 + 1);
      v29 = *(v27 + 3);

      v30 = sub_1922253B0();
      v51 = 0u;
      v52 = 0u;
      v53 = 0;
      (*(*(v30 - 8) + 8))(v14, v30);
      if (!*(&v52 + 1))
      {
        sub_192033970(&v51, &qword_1EADF1860, &unk_19223D680);
        goto LABEL_5;
      }

LABEL_16:
      sub_19209CBAC(&v51, v54);
      sub_19207C0C0(v18, v12, type metadata accessor for ViewSource);
      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 1)
      {
        if (v34)
        {
          v35 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
          v36 = *(v35 + 1);
          v37 = *(v35 + 3);

          v38 = sub_1922253B0();
          (*(*(v38 - 8) + 8))(v12, v38);
        }

        else
        {
LABEL_3:
          sub_192036A20(v12, type metadata accessor for ViewSource);
        }

        __swift_destroy_boxed_opaque_existential_1(v54);
        goto LABEL_5;
      }

      if (v34 != 2)
      {
        goto LABEL_3;
      }

      sub_192036A20(v12, type metadata accessor for ViewSource);
      v39 = v55;
      v40 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v41 = (*(v40 + 16))(v39, v40);
      if (v41 == v49 && v42 == v48)
      {

        __swift_destroy_boxed_opaque_existential_1(v54);

        v15 = v47;
        goto LABEL_27;
      }

      v43 = sub_1922289A0();

      __swift_destroy_boxed_opaque_existential_1(v54);
      v15 = v47;
      if (v43)
      {

LABEL_27:
        a5 = v45;
        sub_19207C284(v18, v45);
        v44 = 0;
        return (*(v15 + 56))(a5, v44, 1, v46);
      }

LABEL_5:
      ++v22;
      result = sub_192036A20(v18, type metadata accessor for WidgetDescriptor);
      if (v21 == v22)
      {

        v44 = 1;
        a5 = v45;
        return (*(v15 + 56))(a5, v44, 1, v46);
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(&v52 + 1) = &type metadata for ControlViewSource;
      v53 = sub_1921AFF60();
      v24 = swift_allocObject();
      *&v51 = v24;
      v25 = v14[3];
      v24[3] = v14[2];
      v24[4] = v25;
      v24[5] = v14[4];
      *(v24 + 89) = *(v14 + 73);
      v26 = v14[1];
      v24[1] = *v14;
      v24[2] = v26;
      goto LABEL_16;
    }

    *(&v52 + 1) = &type metadata for LiveSceneWidgetViewSource;
    v53 = sub_1921AFF0C();
    goto LABEL_15;
  }

  v44 = 1;
  return (*(v15 + 56))(a5, v44, 1, v46);
}

uint64_t sub_1921E7A24()
{
  sub_192039140(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

id sub_1921E7A80(uint64_t a1, uint64_t a2)
{
  sub_192228400();

  *&v15 = 0xD00000000000002BLL;
  *(&v15 + 1) = 0x800000019224E710;
  MEMORY[0x193B0A990](a1, a2);
  v4 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v5 = *MEMORY[0x1E696A278];
  v6 = sub_192227960();
  v8 = v7;
  v16 = MEMORY[0x1E69E6158];
  *&v15 = 0xD00000000000002BLL;
  *(&v15 + 1) = 0x800000019224E710;
  sub_19203BEDC(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v14, v6, v8, isUniquelyReferenced_nonNull_native);

  v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v11 = sub_192227830();

  v12 = [v10 initWithDomain:v4 code:1100 userInfo:v11];

  return v12;
}

uint64_t static ActivityMetricsDefinition.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = *(type metadata accessor for MetricsRequest() + 40);
  v7 = sub_192226600();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *a1 = xmmword_19223F6C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_19223F6C0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = xmmword_19222F810;
  v8 = type metadata accessor for JindoMetricsDefinition();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = *(type metadata accessor for ActivityMetricsDefinition() + 20);
  v9((a1 + v10), 1, 1, v8);
  return sub_1920E3564(v5, a1 + v10);
}

uint64_t DimensionRequest.filePath.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v11 = 762214756;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19222B480;
    v4 = MEMORY[0x1E69E7DE0];
    *(v3 + 56) = MEMORY[0x1E69E7DE0];
    v5 = sub_192150ED0();
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v6 = sub_192227970();
    MEMORY[0x193B0A990](v6);

    MEMORY[0x193B0A990](45, 0xE100000000000000);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_19222B480;
    *(v7 + 56) = v4;
    *(v7 + 64) = v5;
    *(v7 + 32) = v2;
  }

  else
  {
    v11 = 762866022;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_19222B480;
    *(v8 + 56) = MEMORY[0x1E69E7DE0];
    *(v8 + 64) = sub_192150ED0();
    *(v8 + 32) = v1;
  }

  v9 = sub_192227970();
  MEMORY[0x193B0A990](v9);

  return v11;
}

double DimensionRequest.maxValue.getter()
{
  v1 = v0 + 8;
  if (!*(v0 + 16))
  {
    v1 = v0;
  }

  return *v1;
}

double DimensionRequest.resolveIfNecessary(intrinsicLength:)(double result)
{
  if ((v1[2] & 1) == 0)
  {
    return *v1;
  }

  v2 = *v1;
  if (v1[1] < result)
  {
    result = v1[1];
  }

  if (result <= *v1)
  {
    return *v1;
  }

  return result;
}

BOOL static DimensionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return *(a1 + 8) == *(a2 + 8);
      }
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t DimensionRequest.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v11 = 0x3C63696D616E7944;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19222B480;
    v4 = MEMORY[0x1E69E7DE0];
    *(v3 + 56) = MEMORY[0x1E69E7DE0];
    v5 = sub_192150ED0();
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v6 = sub_192227970();
    MEMORY[0x193B0A990](v6);

    MEMORY[0x193B0A990](8236, 0xE200000000000000);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_19222B480;
    *(v7 + 56) = v4;
    *(v7 + 64) = v5;
    *(v7 + 32) = v2;
  }

  else
  {
    v11 = 0x3C6465786946;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_19222B480;
    *(v8 + 56) = MEMORY[0x1E69E7DE0];
    *(v8 + 64) = sub_192150ED0();
    *(v8 + 32) = v1;
  }

  v9 = sub_192227970();
  MEMORY[0x193B0A990](v9);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v11;
}

uint64_t sub_1921E8198()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921E8250()
{
  *v0;
  *v0;
  *v0;
  sub_1922279B0();
}

uint64_t sub_1921E82F4()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921E83A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1921E9048();
  *a2 = result;
  return result;
}

void sub_1921E83D8(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657079;
  v3 = 0x5474736575716572;
  v4 = 7235949;
  if (*v1 != 2)
  {
    v4 = 7889261;
  }

  if (*v1)
  {
    v3 = 0x6465786966;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1921E844C()
{
  v1 = 0x5474736575716572;
  v2 = 7235949;
  if (*v0 != 2)
  {
    v2 = 7889261;
  }

  if (*v0)
  {
    v1 = 0x6465786966;
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

uint64_t sub_1921E84BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1921E9048();
  *a1 = result;
  return result;
}

uint64_t sub_1921E84E4(uint64_t a1)
{
  v2 = sub_1921E87A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921E8520(uint64_t a1)
{
  v2 = sub_1921E87A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DimensionRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2160, &qword_1922432B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v14 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921E87A8();
  sub_192228B90();
  if (v10 == 1)
  {
    LOBYTE(v16) = 0;
    sub_192228860();
    if (!v2)
    {
      v16 = v14;
      v15 = 2;
      sub_192059A84();
      sub_1922288C0();
      v16 = v9;
      v15 = 3;
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    sub_192228860();
    if (!v2)
    {
      v16 = v14;
      v15 = 1;
      sub_192059A84();
LABEL_7:
      sub_1922288C0();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1921E87A8()
{
  result = qword_1EADEE328;
  if (!qword_1EADEE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE328);
  }

  return result;
}

uint64_t DimensionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192228490();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2168, &unk_1922432C0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1921E87A8();
  v15 = v37;
  sub_192228B70();
  if (!v15)
  {
    v37 = v4;
    v16 = v36;
    v42 = 0;
    sub_192228760();
    v34 = v8;
    v18 = sub_192228700();

    if (v18 == 1)
    {
      v41 = 1;
      v25 = v34;
      sub_192228780();
      v21 = v26;
      (*(v16 + 8))(v11, v25);
      v24 = 0;
      v23 = 0;
    }

    else
    {
      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_19222B480;
        *(v27 + 56) = &type metadata for DimensionRequest.CodingKeys;
        *(v27 + 64) = v14;
        *(v27 + 32) = 0;
        sub_192228480();
        v28 = sub_1922284A0();
        swift_allocError();
        v30 = v29;
        v31 = v35;
        v32 = v37;
        (*(v35 + 16))(v29, v7, v37);
        (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6B00], v28);
        swift_willThrow();
        (*(v31 + 8))(v7, v32);
        (*(v16 + 8))(v11, v34);
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }

      v40 = 2;
      v19 = v34;
      sub_192228780();
      v21 = v20;
      v39 = 3;
      sub_192228780();
      v23 = v22;
      (*(v16 + 8))(v11, v19);
      v24 = 1;
    }

    *a2 = v21;
    *(a2 + 8) = v23;
    *(a2 + 16) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t DimensionRequest.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x193B0BA90](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x193B0BAC0](v3);
    v1 = v2;
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x193B0BAC0](v4);
}

uint64_t DimensionRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_192228AD0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  if (v3)
  {
    MEMORY[0x193B0BA90](1);
    MEMORY[0x193B0BAC0](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  MEMORY[0x193B0BAC0](v1);
  return sub_192228B30();
}

uint64_t sub_1921E8D38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_192228AD0();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  if (v3)
  {
    MEMORY[0x193B0BA90](1);
    MEMORY[0x193B0BAC0](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x193B0BA90](0);
  }

  MEMORY[0x193B0BAC0](v1);
  return sub_192228B30();
}

unint64_t sub_1921E8DC8()
{
  result = qword_1EADF2170;
  if (!qword_1EADF2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2170);
  }

  return result;
}

BOOL sub_1921E8E20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return *(a1 + 8) == *(a2 + 8);
      }
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for DimensionRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DimensionRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1921E8F44()
{
  result = qword_1EADF2178;
  if (!qword_1EADF2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2178);
  }

  return result;
}

unint64_t sub_1921E8F9C()
{
  result = qword_1EADEE318;
  if (!qword_1EADEE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE318);
  }

  return result;
}

unint64_t sub_1921E8FF4()
{
  result = qword_1EADEE320;
  if (!qword_1EADEE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE320);
  }

  return result;
}

uint64_t sub_1921E9048()
{
  v0 = sub_192228700();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t ControlPushInfo.token.getter()
{
  v1 = *v0;
  sub_1920367C8(*v0, *(v0 + 8));
  return v1;
}

id TimelineRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment);
  *a1 = v2;
  return v2;
}

uint64_t sub_1921E9114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D6E6F7269766E65;
  v4 = 0xEB00000000746E65;
  if (v2 != 1)
  {
    v3 = 0x646E6148656C6966;
    v4 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746567646977;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6D6E6F7269766E65;
  v8 = 0xEB00000000746E65;
  if (*a2 != 1)
  {
    v7 = 0x646E6148656C6966;
    v8 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746567646977;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_1921E922C()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921E92D8()
{
  *v0;
  *v0;
  sub_1922279B0();
}

uint64_t sub_1921E9370()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1921E9418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1921E9D08();
  *a2 = result;
  return result;
}

void sub_1921E9448(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEB00000000746E65;
  v5 = 0x6D6E6F7269766E65;
  if (v2 != 1)
  {
    v5 = 0x646E6148656C6966;
    v4 = 0xEA0000000000656CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1921E94B0()
{
  v1 = 0x6D6E6F7269766E65;
  if (*v0 != 1)
  {
    v1 = 0x646E6148656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567646977;
  }
}

uint64_t sub_1921E9514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1921E9D08();
  *a1 = result;
  return result;
}

uint64_t sub_1921E953C(uint64_t a1)
{
  v2 = sub_1921EA4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921E9578(uint64_t a1)
{
  v2 = sub_1921EA4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id TimelineRequest.init(widget:environment:fileHandle:)(void *a1, void **a2, uint64_t a3)
{
  v4 = sub_192077DB8(a1, a2, a3);

  return v4;
}

uint64_t sub_1921E95FC(void *a1)
{
  v3 = v1;
  v35 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2198, &qword_1922435D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921EA4FC();
  sub_192228B90();
  v33 = *(v3 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_environment);
  v11 = v33;
  v32 = 1;
  sub_1920E2830();
  v12 = v11;
  sub_1922288C0();

  if (v2)
  {
    result = (*(v6 + 8))(v9, v5);
  }

  else
  {
    v14 = objc_opt_self();
    v15 = *(v3 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget);
    v33 = 0;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v33];
    v17 = v33;
    if (v16)
    {
      v18 = sub_192225080();
      v31 = v19;
    }

    else
    {
      v20 = v17;
      v21 = sub_192224F90();

      swift_willThrow();
      v18 = 0;
      v31 = 0xF000000000000000;
    }

    v22 = *(v3 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
    v33 = 0;
    v23 = [v14 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v33];
    v24 = v33;
    if (v23)
    {
      v30 = sub_192225080();
      v26 = v25;
    }

    else
    {
      v27 = v24;
      v28 = sub_192224F90();

      swift_willThrow();
      v30 = 0;
      v26 = 0xF000000000000000;
    }

    v33 = v18;
    v34 = v31;
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0400, &qword_192233B98);
    sub_192117B88();
    sub_1922288C0();
    v33 = v30;
    v34 = v26;
    v32 = 2;
    sub_1922288C0();
    (*(v6 + 8))(v9, v5);
    sub_192046ED4(v18, v31);
    result = sub_192046ED4(v30, v26);
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

id TimelineRequest.init(coder:)(void *a1)
{
  sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v2 = sub_192228140();
  type metadata accessor for WidgetEnvironment.Storage();
  v3 = sub_192228140();
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v4 = sub_192228140();
  v5 = v4;
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v3;
        v6 = objc_allocWithZone(type metadata accessor for TimelineRequest());
        v7 = sub_192077DB8(v2, &v9, v5);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v7;
      }
    }

    else
    {

      a1 = v5;
    }
  }

  else
  {

    a1 = v5;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id TimelineRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TimelineRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimelineRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1921E9CB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1921E9D54(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}