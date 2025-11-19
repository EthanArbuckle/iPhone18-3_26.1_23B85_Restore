unint64_t sub_1DD90DCD0()
{
  result = qword_1ECD82A98;
  if (!qword_1ECD82A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82A98);
  }

  return result;
}

unint64_t sub_1DD90DD28()
{
  result = qword_1ECD82AA0;
  if (!qword_1ECD82AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AA0);
  }

  return result;
}

unint64_t sub_1DD90DD80()
{
  result = qword_1ECD82AA8;
  if (!qword_1ECD82AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AA8);
  }

  return result;
}

unint64_t sub_1DD90DDD8()
{
  result = qword_1ECD82AB0;
  if (!qword_1ECD82AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AB0);
  }

  return result;
}

unint64_t sub_1DD90DE30()
{
  result = qword_1ECD82AB8;
  if (!qword_1ECD82AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AB8);
  }

  return result;
}

unint64_t sub_1DD90DE88()
{
  result = qword_1ECD82AC0;
  if (!qword_1ECD82AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AC0);
  }

  return result;
}

unint64_t sub_1DD90DEE0()
{
  result = qword_1ECD82AC8;
  if (!qword_1ECD82AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AC8);
  }

  return result;
}

unint64_t sub_1DD90DF38()
{
  result = qword_1ECD82AD0;
  if (!qword_1ECD82AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AD0);
  }

  return result;
}

unint64_t sub_1DD90DF90()
{
  result = qword_1ECD82AD8;
  if (!qword_1ECD82AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AD8);
  }

  return result;
}

unint64_t sub_1DD90DFE8()
{
  result = qword_1ECD82AE0;
  if (!qword_1ECD82AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AE0);
  }

  return result;
}

unint64_t sub_1DD90E040()
{
  result = qword_1ECD82AE8;
  if (!qword_1ECD82AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AE8);
  }

  return result;
}

unint64_t sub_1DD90E098()
{
  result = qword_1ECD82AF0;
  if (!qword_1ECD82AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AF0);
  }

  return result;
}

unint64_t sub_1DD90E0F0()
{
  result = qword_1ECD82AF8;
  if (!qword_1ECD82AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AF8);
  }

  return result;
}

unint64_t sub_1DD90E148()
{
  result = qword_1ECD82B00;
  if (!qword_1ECD82B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B00);
  }

  return result;
}

unint64_t sub_1DD90E19C()
{
  result = qword_1ECD82B08;
  if (!qword_1ECD82B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B08);
  }

  return result;
}

uint64_t sub_1DD90E1F0()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD90E23C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B88, &qword_1DDA17A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DD90FD9C();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v12 = v6;
    LOBYTE(v51[0]) = 0;
    v13 = sub_1DDA15280();
    v15 = v14;
    LOBYTE(v51[0]) = 1;
    v16 = sub_1DDA15280();
    v43 = v17;
    LOBYTE(v51[0]) = 2;
    v18 = v12;
    *&v42 = sub_1DDA15280();
    v41 = v16;
    *(&v42 + 1) = v19;
    LOBYTE(v51[0]) = 3;
    v20 = sub_1DDA15280();
    v22 = v21;
    v40 = v20;
    LOBYTE(v51[0]) = 4;
    v23 = sub_1DDA15220();
    v25 = v24;
    v39 = v23;
    v52 = 5;
    v26 = sub_1DDA15280();
    v27 = *(v18 + 8);
    v38 = v26;
    v28 = v9;
    v30 = v29;
    v27(v28, v5);
    *&v45 = v13;
    *(&v45 + 1) = v15;
    v31 = v41;
    *&v46 = v41;
    *(&v46 + 1) = v43;
    v47 = v42;
    v32 = *(&v42 + 1);
    *&v48 = v40;
    *(&v48 + 1) = v22;
    *&v49 = v39;
    *(&v49 + 1) = v25;
    *&v50 = v38;
    *(&v50 + 1) = v30;
    sub_1DD90FDF0(&v45, v51);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v51[0] = v13;
    v51[1] = v15;
    v51[2] = v31;
    v51[3] = v43;
    v51[4] = v42;
    v51[5] = v32;
    v51[6] = v40;
    v51[7] = v22;
    v51[8] = v39;
    v51[9] = v25;
    v51[10] = v38;
    v51[11] = v30;
    result = sub_1DD90FE28(v51);
    v34 = v48;
    a2[2] = v47;
    a2[3] = v34;
    v35 = v50;
    a2[4] = v49;
    a2[5] = v35;
    v36 = v46;
    *a2 = v45;
    a2[1] = v36;
  }

  return result;
}

uint64_t sub_1DD90E6D0()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD90E71C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B98, &qword_1DDA17AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FC8C();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    v11 = sub_1DDA15280();
    v13 = v12;
    v34 = v11;
    LOBYTE(v39[0]) = 1;
    v14 = sub_1DDA15280();
    v16 = v15;
    v33 = v14;
    LOBYTE(v39[0]) = 2;
    v17 = sub_1DDA15220();
    v19 = v18;
    v32 = v17;
    v40 = 3;
    v20 = sub_1DDA15280();
    v21 = *(v6 + 8);
    v31 = v20;
    v22 = v9;
    v24 = v23;
    v21(v22, v5);
    v25 = v34;
    *&v35 = v34;
    *(&v35 + 1) = v13;
    *&v36 = v33;
    *(&v36 + 1) = v16;
    v26 = v32;
    *&v37 = v32;
    *(&v37 + 1) = v19;
    *&v38 = v31;
    *(&v38 + 1) = v24;
    sub_1DD90FE58(&v35, v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39[0] = v25;
    v39[1] = v13;
    v39[2] = v33;
    v39[3] = v16;
    v39[4] = v26;
    v39[5] = v19;
    v39[6] = v31;
    v39[7] = v24;
    result = sub_1DD90FE90(v39);
    v28 = v36;
    *a2 = v35;
    a2[1] = v28;
    v29 = v38;
    a2[2] = v37;
    a2[3] = v29;
  }

  return result;
}

uint64_t sub_1DD90EA0C()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD90EA58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B68, &qword_1DDA17A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FCE0();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v48[0]) = 0;
  v11 = sub_1DDA15280();
  v40 = v12;
  LOBYTE(v48[0]) = 1;
  *&v39 = sub_1DDA15280();
  *(&v39 + 1) = v13;
  LOBYTE(v48[0]) = 2;
  v37 = sub_1DDA15280();
  v15 = v14;
  LOBYTE(v48[0]) = 3;
  v16 = sub_1DDA15280();
  v38 = v17;
  v34 = v16;
  LOBYTE(v48[0]) = 4;
  v36 = 0;
  sub_1DDA152A0();
  v19 = v18;
  LOBYTE(v48[0]) = 5;
  v33 = sub_1DDA15280();
  v35 = v20;
  v59 = 6;
  v21 = sub_1DDA15220();
  v22 = *(v6 + 8);
  v23 = v21;
  v36 = v24;
  v22(v9, v5);
  *&v41 = v11;
  v25 = v40;
  *(&v41 + 1) = v40;
  v42 = v39;
  *&v43 = v37;
  *(&v43 + 1) = v15;
  v26 = v38;
  *&v44 = v34;
  *(&v44 + 1) = v38;
  *&v45 = v19;
  *(&v45 + 1) = v33;
  *&v46 = v35;
  v27 = v36;
  *(&v46 + 1) = v23;
  v47 = v36;
  sub_1DD90FD34(&v41, v48);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v48[0] = v11;
  v48[1] = v25;
  v49 = v39;
  v50 = v37;
  v51 = v15;
  v52 = v34;
  v53 = v26;
  v54 = v19;
  v55 = v33;
  v56 = v35;
  v57 = v23;
  v58 = v27;
  result = sub_1DD90FD6C(v48);
  v29 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v29;
  *(a2 + 96) = v47;
  v30 = v42;
  *a2 = v41;
  *(a2 + 16) = v30;
  v31 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v31;
  return result;
}

uint64_t sub_1DD90EF50()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD90EF9C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82BA8, &qword_1DDA17AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FBE4();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_1DDA15280();
  v26 = v12;
  LOBYTE(v31[0]) = 1;
  *&v25 = sub_1DDA15280();
  *(&v25 + 1) = v13;
  LOBYTE(v31[0]) = 2;
  *&v24 = sub_1DDA15220();
  *(&v24 + 1) = v14;
  v37 = 3;
  v15 = sub_1DDA15220();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v18 = v26;
  *&v27 = v11;
  *(&v27 + 1) = v26;
  v19 = *(&v24 + 1);
  v20 = v25;
  v28 = v25;
  v29 = v24;
  *&v30 = v15;
  *(&v30 + 1) = v17;
  sub_1DD90FEC0(&v27, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v11;
  v31[1] = v18;
  v32 = __PAIR128__(*(&v25 + 1), v20);
  v33 = v24;
  v34 = v19;
  v35 = v15;
  v36 = v17;
  result = sub_1DD90FEF8(v31);
  v22 = v28;
  *a2 = v27;
  a2[1] = v22;
  v23 = v30;
  a2[2] = v29;
  a2[3] = v23;
  return result;
}

uint64_t sub_1DD90F290()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD90F2DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B48, &qword_1DDA17A78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FC38();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1DDA15280();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1DDA15280();
  v23 = v14;
  v25 = 2;
  v15 = sub_1DDA15280();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

uint64_t sub_1DD90F528()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD90F574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B10, &qword_1DDA17A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90F870();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_1DDA15280();
  v13 = v12;
  v25 = v11;
  v29 = 1;
  v23 = sub_1DDA15280();
  v24 = v14;
  v28 = 2;
  v21 = sub_1DDA15220();
  v22 = v15;
  v26 = 3;
  sub_1DD90F8C4();
  sub_1DDA15260();
  (*(v6 + 8))(v9, v5);
  v16 = v27;
  v17 = v22;

  v18 = v24;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v25;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21;
  *(a2 + 40) = v17;
  *(a2 + 48) = v16;
  return result;
}

unint64_t sub_1DD90F870()
{
  result = qword_1ECD82B18;
  if (!qword_1ECD82B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B18);
  }

  return result;
}

unint64_t sub_1DD90F8C4()
{
  result = qword_1ECD82B20;
  if (!qword_1ECD82B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B20);
  }

  return result;
}

uint64_t sub_1DD90F918()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD90F964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B28, &qword_1DDA17A68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FB90();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_1DDA15280();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_1DD90CD54();
  sub_1DDA152C0();
  v21 = v24;
  v22 = 2;
  v15 = sub_1DDA15280();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

unint64_t sub_1DD90FB90()
{
  result = qword_1ECD82B30;
  if (!qword_1ECD82B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B30);
  }

  return result;
}

unint64_t sub_1DD90FBE4()
{
  result = qword_1ECD82B40;
  if (!qword_1ECD82B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B40);
  }

  return result;
}

unint64_t sub_1DD90FC38()
{
  result = qword_1ECD82B50;
  if (!qword_1ECD82B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B50);
  }

  return result;
}

unint64_t sub_1DD90FC8C()
{
  result = qword_1ECD82B60;
  if (!qword_1ECD82B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B60);
  }

  return result;
}

unint64_t sub_1DD90FCE0()
{
  result = qword_1ECD82B70;
  if (!qword_1ECD82B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B70);
  }

  return result;
}

unint64_t sub_1DD90FD9C()
{
  result = qword_1ECD82B80;
  if (!qword_1ECD82B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B80);
  }

  return result;
}

unint64_t sub_1DD90FF28()
{
  result = qword_1ECD82BC0;
  if (!qword_1ECD82BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BC0);
  }

  return result;
}

uint64_t sub_1DD90FF7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1DD91000C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationTokensResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthorizationTokensResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalPartnerModel.ReleaseLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExternalPartnerModel.ReleaseLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPClient.PrivacyPassRedemptionTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPClient.PrivacyPassRedemptionTypes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalLanguageModelBundle(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ExternalLanguageModelBundle(_WORD *result, int a2, int a3)
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

unint64_t sub_1DD9105CC()
{
  result = qword_1ECD82BC8;
  if (!qword_1ECD82BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BC8);
  }

  return result;
}

unint64_t sub_1DD910624()
{
  result = qword_1ECD82BD0;
  if (!qword_1ECD82BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BD0);
  }

  return result;
}

unint64_t sub_1DD91067C()
{
  result = qword_1ECD82BD8;
  if (!qword_1ECD82BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BD8);
  }

  return result;
}

unint64_t sub_1DD9106D4()
{
  result = qword_1ECD82BE0;
  if (!qword_1ECD82BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BE0);
  }

  return result;
}

unint64_t sub_1DD91072C()
{
  result = qword_1ECD82BE8;
  if (!qword_1ECD82BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BE8);
  }

  return result;
}

unint64_t sub_1DD910784()
{
  result = qword_1ECD82BF0;
  if (!qword_1ECD82BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BF0);
  }

  return result;
}

unint64_t sub_1DD9107DC()
{
  result = qword_1ECD82BF8;
  if (!qword_1ECD82BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BF8);
  }

  return result;
}

unint64_t sub_1DD910834()
{
  result = qword_1ECD82C00;
  if (!qword_1ECD82C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C00);
  }

  return result;
}

unint64_t sub_1DD91088C()
{
  result = qword_1ECD82C08;
  if (!qword_1ECD82C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C08);
  }

  return result;
}

unint64_t sub_1DD9108E4()
{
  result = qword_1ECD82C10;
  if (!qword_1ECD82C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C10);
  }

  return result;
}

unint64_t sub_1DD91093C()
{
  result = qword_1ECD82C18;
  if (!qword_1ECD82C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C18);
  }

  return result;
}

unint64_t sub_1DD910994()
{
  result = qword_1ECD82C20;
  if (!qword_1ECD82C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C20);
  }

  return result;
}

unint64_t sub_1DD9109EC()
{
  result = qword_1ECD82C28;
  if (!qword_1ECD82C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C28);
  }

  return result;
}

unint64_t sub_1DD910A44()
{
  result = qword_1ECD82C30;
  if (!qword_1ECD82C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C30);
  }

  return result;
}

unint64_t sub_1DD910A9C()
{
  result = qword_1ECD82C38;
  if (!qword_1ECD82C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C38);
  }

  return result;
}

unint64_t sub_1DD910AF4()
{
  result = qword_1ECD82C40;
  if (!qword_1ECD82C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C40);
  }

  return result;
}

unint64_t sub_1DD910B4C()
{
  result = qword_1ECD82C48;
  if (!qword_1ECD82C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C48);
  }

  return result;
}

unint64_t sub_1DD910BA4()
{
  result = qword_1ECD82C50;
  if (!qword_1ECD82C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C50);
  }

  return result;
}

unint64_t sub_1DD910BFC()
{
  result = qword_1ECD82C58;
  if (!qword_1ECD82C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C58);
  }

  return result;
}

unint64_t sub_1DD910C54()
{
  result = qword_1ECD82C60;
  if (!qword_1ECD82C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C60);
  }

  return result;
}

unint64_t sub_1DD910CAC()
{
  result = qword_1ECD82C68;
  if (!qword_1ECD82C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C68);
  }

  return result;
}

unint64_t sub_1DD910D04()
{
  result = qword_1ECD82C70;
  if (!qword_1ECD82C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C70);
  }

  return result;
}

unint64_t sub_1DD910D58()
{
  result = qword_1ECD82C78;
  if (!qword_1ECD82C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C78);
  }

  return result;
}

uint64_t sub_1DD910E48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = sub_1DDA134E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = v1[4];
  v19 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v18);
  (*(v19 + 88))(v18, v19);
  if (!v20)
  {
    goto LABEL_4;
  }

  sub_1DDA134C0();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DD911244(v9);
LABEL_4:
    sub_1DDA134C0();
    result = (*(v11 + 48))(v7, 1, v10);
    if (result != 1)
    {
      return (*(v11 + 32))(a1, v7, v10);
    }

    __break(1u);
    return result;
  }

  v33 = *(v11 + 32);
  v33(v17, v9, v10);
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1DDA14810();
  __swift_project_value_buffer(v22, qword_1ECDA20E0);
  (*(v11 + 16))(v15, v17, v10);
  v23 = sub_1DDA147F0();
  v24 = sub_1DDA14ED0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v25 = 136315138;
    sub_1DD911DE4();
    v26 = sub_1DDA15400();
    v32 = a1;
    v28 = v27;
    (*(v11 + 8))(v15, v10);
    v29 = sub_1DD93FA54(v26, v28, &v34);
    a1 = v32;

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DD8F8000, v23, v24, "Using custom ChatGPT base URL: %s", v25, 0xCu);
    v30 = v31;
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1E12B8CE0](v30, -1, -1);
    MEMORY[0x1E12B8CE0](v25, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  return (v33)(a1, v17, v10);
}

uint64_t sub_1DD911244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1DD9112AC()
{
  sub_1DD981DC8(v4);
  qword_1EE16FAB8 = &type metadata for Overrides.BlackPowder;
  unk_1EE16FAC0 = &off_1F58F1660;
  v0 = swift_allocObject();
  v1 = v4[3];
  *(v0 + 48) = v4[2];
  *(v0 + 64) = v1;
  *(v0 + 80) = v4[4];
  *(v0 + 96) = v5;
  result = *v4;
  v3 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v3;
  qword_1EE16FA98 = 4;
  unk_1EE16FAA0 = v0;
  byte_1EE16FAC8 = 1;
  return result;
}

uint64_t sub_1DD911340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1DDA13680();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = sub_1DDA13710();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD911468, 0, 0);
}

void sub_1DD911468()
{
  v94 = v0;
  if (v0[3] | v0[5])
  {
    v86 = v0[3];
    v1 = v0[8];
    v90 = MEMORY[0x1E69E7CC8];
    v2 = v1[4];
    v3 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
    v88 = (*(v3 + 8))(v2, v3);
    v89 = v1;
    v5 = v4;
    v6 = v1[4];
    v7 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
    v8 = (*(v7 + 24))(v6, v7);
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x2D38302D34323032;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEA00000000003832;
    }

    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1DDA14810();
    __swift_project_value_buffer(v12, qword_1ECDA20E0);

    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14F00();

    v87 = v5;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v92 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1DD93FA54(v10, v11, &v92);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1DD93FA54(v88, v5, &v92);
      _os_log_impl(&dword_1DD8F8000, v13, v14, "Using API version:%s and app id: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v16, -1, -1);
      MEMORY[0x1E12B8CE0](v15, -1, -1);

      v17 = v90;
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC8];
    }

    v18 = v0[13];
    v19 = v0[14];
    v21 = v0[11];
    v20 = v0[12];
    v23 = v0[9];
    v22 = v0[10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v17;
    sub_1DD9CB364(v10, v11, 0x2D54504774616843, 0xEF6E6F6973726556, isUniquelyReferenced_nonNull_native);
    v25 = v92;
    sub_1DDA13700();
    sub_1DDA13670();
    v26 = sub_1DDA136F0();
    (*(v22 + 8))(v21, v23);
    (*(v18 + 8))(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82810, &unk_1DDA16340);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DDA184A0;
    v28 = sub_1DD911E3C();
    v29 = 43;
    if (v26 < 0)
    {
      v29 = 45;
    }

    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = v28;
    *(v27 + 32) = v29;
    *(v27 + 40) = 0xE100000000000000;
    v30 = v26 / 3600;
    v31 = MEMORY[0x1E69E6530];
    v32 = MEMORY[0x1E69E65A8];
    *(v27 + 96) = MEMORY[0x1E69E6530];
    *(v27 + 104) = v32;
    if (v26 < -3599)
    {
      v30 = v26 / -3600;
    }

    *(v27 + 72) = v30;
    v33 = v26 / 60;
    if (v26 < -59)
    {
      v33 = v26 / -60;
    }

    *(v27 + 136) = v31;
    *(v27 + 144) = v32;
    *(v27 + 112) = v33 % 0x3C;
    v34 = sub_1DDA14B40();
    v36 = v35;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v25;
    sub_1DD9CB364(v34, v36, 0xD00000000000001ALL, 0x80000001DDA26F50, v37);
    v38 = v92;
    v39 = v89;
    v40 = v89[4];
    v41 = v89[5];
    __swift_project_boxed_opaque_existential_1(v89 + 1, v40);
    v42 = (*(v41 + 128))(v40, v41);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v38;
    sub_1DD911E90(v42, sub_1DD9B233C, 0, v43, &v92);

    v44 = v92;
    v45 = v89[4];
    v46 = v89[5];
    __swift_project_boxed_opaque_existential_1(v39 + 1, v39[4]);
    v47 = (*(v46 + 16))(v45, v46);
    if (v48)
    {
      v49 = v47;
      v50 = v48;

      v51 = sub_1DDA147F0();
      v52 = sub_1DDA14EE0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1DD8F8000, v51, v52, "Using overridden API key!", v53, 2u);
        MEMORY[0x1E12B8CE0](v53, -1, -1);
      }

      v92 = 0x20726572616542;
      v93 = 0xE700000000000000;
      MEMORY[0x1E12B7AB0](v49, v50);

      v54 = v92;
      v55 = v93;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v44;
      sub_1DD9CB364(v54, v55, 0x7A69726F68747541, 0xED00006E6F697461, v56);
      v91 = v92;
    }

    else if (v86)
    {
      v57 = v0[3];

      v58 = sub_1DDA147F0();
      v59 = sub_1DDA14F00();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1DD8F8000, v58, v59, "User is signed in. Authenticating with stored access token.", v60, 2u);
        MEMORY[0x1E12B8CE0](v60, -1, -1);
      }

      v61 = v0[2];

      v92 = 0x20726572616542;
      v93 = 0xE700000000000000;
      MEMORY[0x1E12B7AB0](v61, v57);
      v62 = v92;
      v63 = v93;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v44;
      sub_1DD9CB364(v62, v63, 0x7A69726F68747541, 0xED00006E6F697461, v64);
      v91 = v92;
    }

    else
    {
      v65 = sub_1DDA147F0();
      v66 = sub_1DDA14F00();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1DD8F8000, v65, v66, "User is not logged in. Authenticating anonymously.", v67, 2u);
        MEMORY[0x1E12B8CE0](v67, -1, -1);
      }

      v69 = v0[4];
      v68 = v0[5];

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v44;
      sub_1DD9CB364(v88, v87, 0x412D49416E65704FLL, 0xEA00000000007070, v70);
      v91 = v92;

      sub_1DD9C70C8(v69, v68, 0xD000000000000016, 0x80000001DDA26F70);
      v39 = v89;
    }

    v71 = v39[4];
    v72 = v39[5];
    __swift_project_boxed_opaque_existential_1(v39 + 1, v71);
    v73 = (*(v72 + 96))(v71, v72);
    if (v74)
    {
      sub_1DD9C70C8(v73, v74, 0xD00000000000001ELL, 0x80000001DDA26F90);
    }

    v75 = v39[4];
    v76 = v39[5];
    __swift_project_boxed_opaque_existential_1(v39 + 1, v75);
    v77 = (*(v76 + 104))(v75, v76);
    if (!v78)
    {
      v77 = sub_1DD9C6CFC(v0[6], v0[7]);
    }

    v79 = v77;
    v80 = v78;
    v81 = v0[14];
    v82 = v0[11];
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v91;
    sub_1DD9CB364(v79, v80, 0x6567412D72657355, 0xEA0000000000746ELL, v83);
    v84 = v92;

    v85 = v0[1];

    v85(v84);
  }

  else
  {
    __break(1u);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1DD911DE4()
{
  result = qword_1ECD82CE8;
  if (!qword_1ECD82CE8)
  {
    sub_1DDA134E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82CE8);
  }

  return result;
}

unint64_t sub_1DD911E3C()
{
  result = qword_1ECD82CF0;
  if (!qword_1ECD82CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82CF0);
  }

  return result;
}

uint64_t sub_1DD911E90(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_1DD96AC38(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_1DD9C9D00();
      }
    }

    else
    {
      v34 = v56;
      sub_1DD9C838C(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_1DD96AC38(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_1DD912130();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
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

uint64_t sub_1DD912138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DD912180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD9121E0()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD912250(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_1DD912298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD9122F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UserCredentials(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35[-v18];
  v20 = v1[1];
  sub_1DD92C474(v41);
  v40 = a1;
  v21 = v42;
  if (v42)
  {
    v38 = v43;
    v39 = v44;
    v37 = v41[1];
    v36 = v41[0];
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v21 = 0xE000000000000000;
    v39 = 0xE000000000000000;
  }

  v22 = *v2;
  sub_1DD92C8C4(v15);
  sub_1DD914958(v15, v13, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {

    v23 = type metadata accessor for Credentials(0);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  }

  else
  {
    v36 &= 1u;
    sub_1DD9149C0(v13, v8, type metadata accessor for UserCredentials);
    v25 = *v8;
    v24 = *(v8 + 1);
    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    v28 = *(v4 + 32);
    v29 = type metadata accessor for Credentials(0);
    v30 = *(v29 + 28);
    v31 = sub_1DDA13680();
    (*(*(v31 - 8) + 16))(&v19[v30], &v8[v28], v31);

    sub_1DD914888(v8, type metadata accessor for UserCredentials);
    *v19 = v25;
    *(v19 + 1) = v24;
    *(v19 + 2) = v27;
    *(v19 + 3) = v26;
    v19[32] = v36;
    v32 = v38;
    *(v19 + 5) = v37;
    *(v19 + 6) = v21;
    v33 = v39;
    *(v19 + 7) = v32;
    *(v19 + 8) = v33;
    (*(*(v29 - 8) + 56))(v19, 0, 1, v29);
  }

  return sub_1DD914958(v19, v40, &qword_1ECD82D20, &qword_1DDA18CE0);
}

uint64_t sub_1DD912800@<X0>(uint64_t a1@<X8>)
{
  v165 = a1;
  v163 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v160 = *(v163 - 8);
  v2 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v153 = (&v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v152 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v151 = &v140 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v140 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v140 - v12;
  v166 = type metadata accessor for RateLimitBudgets(0);
  v164 = *(v166 - 8);
  v13 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v161 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v158 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v159 = &v140 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v157 = &v140 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v140 - v23;
  v24 = type metadata accessor for ChatChunk.RateLimits(0);
  v155 = *(v24 - 8);
  v156 = v24;
  v25 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v154 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v162 = &v140 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D18, &qword_1DDA185E8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v140 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v140 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v140 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v140 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = &v140 - v50;
  v52 = v1;
  v53 = *v1;
  sub_1DD92C8C4(&v140 - v50);
  v146 = v52;
  v140 = v45;
  v141 = v47;
  v142 = v36;
  v54 = v163;
  v143 = v39;
  v145 = v42;
  v144 = v32;
  v55 = type metadata accessor for UserCredentials(0);
  LODWORD(v53) = (*(*(v55 - 8) + 48))(v51, 1, v55);
  sub_1DD90D378(v51, &qword_1ECD82D00, &qword_1DDA18B10);
  if (v53 == 1)
  {
    v56 = v146[2];
    v57 = sub_1DD92C900();
    if (v57 == 2)
    {
      v58 = 1;
      v59 = v166;
      v60 = v145;
      v61 = v141;
    }

    else
    {
      v59 = v166;
      v121 = *(v166 + 20);
      v122 = v57;
      v123 = type metadata accessor for RateLimitBudgets.Limits(0);
      v124 = *(*(v123 - 8) + 56);
      v61 = v141;
      v124(&v141[v121], 1, 1, v123);
      v125 = v59[6];
      v124(&v61[v125], 1, 1, v123);
      v126 = v59[7];
      v124(&v61[v126], 1, 1, v123);
      v127 = v59[8];
      v124(&v61[v127], 1, 1, v123);
      *v61 = v122 & 1;
      sub_1DD90D378(&v61[v121], &qword_1ECD82830, &unk_1DDA16350);
      v124(&v61[v121], 1, 1, v123);
      sub_1DD90D378(&v61[v125], &qword_1ECD82830, &unk_1DDA16350);
      v124(&v61[v125], 1, 1, v123);
      sub_1DD90D378(&v61[v126], &qword_1ECD82830, &unk_1DDA16350);
      v124(&v61[v126], 1, 1, v123);
      sub_1DD90D378(&v61[v127], &qword_1ECD82830, &unk_1DDA16350);
      v124(&v61[v127], 1, 1, v123);
      v58 = 0;
      v60 = v145;
    }

    v128 = v140;
    (*(v164 + 56))(v61, v58, 1, v59);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v129 = sub_1DDA14810();
    __swift_project_value_buffer(v129, qword_1EE16FA80);
    sub_1DD90ADB4(v61, v128, &qword_1ECD82D18, &qword_1DDA185E8);
    v130 = sub_1DDA147F0();
    v131 = sub_1DDA14EC0();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v167[0] = v133;
      *v132 = 136315394;
      *(v132 + 4) = sub_1DD93FA54(0xD000000000000019, 0x80000001DDA27050, v167);
      *(v132 + 12) = 2080;
      sub_1DD90ADB4(v128, v60, &qword_1ECD82D18, &qword_1DDA185E8);
      v134 = sub_1DDA14B70();
      v136 = v135;
      sub_1DD90D378(v128, &qword_1ECD82D18, &qword_1DDA185E8);
      v137 = sub_1DD93FA54(v134, v136, v167);

      *(v132 + 14) = v137;
      _os_log_impl(&dword_1DD8F8000, v130, v131, "%s: [anonymous] %s", v132, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v133, -1, -1);
      MEMORY[0x1E12B8CE0](v132, -1, -1);
    }

    else
    {

      sub_1DD90D378(v128, &qword_1ECD82D18, &qword_1DDA185E8);
    }

    v138 = v61;
  }

  else
  {
    v62 = v146[3];
    v63 = v162;
    sub_1DD92CCAC(v162);
    v64 = v154;
    sub_1DD90ADB4(v63, v154, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v65 = v156;
    v66 = 1;
    if ((*(v155 + 48))(v64, 1, v156) != 1)
    {
      v67 = v147;
      sub_1DD9149C0(v64, v147, type metadata accessor for ChatChunk.RateLimits);
      v68 = v148;
      sub_1DD914958(v67, v148, &qword_1ECD82D10, &qword_1DDA185E0);
      sub_1DD914958(v67 + v65[5], v157, &qword_1ECD82D10, &qword_1DDA185E0);
      sub_1DD914958(v67 + v65[6], v159, &qword_1ECD82D10, &qword_1DDA185E0);
      sub_1DD914958(v67 + v65[7], v158, &qword_1ECD82D10, &qword_1DDA185E0);
      v69 = v166;
      v70 = *(v166 + 20);
      v71 = type metadata accessor for RateLimitBudgets.Limits(0);
      v72 = *(*(v71 - 1) + 56);
      v73 = 1;
      v74 = v161;
      v72(&v161[v70], 1, 1, v71);
      v147 = v69[6];
      v72(&v74[v147], 1, 1, v71);
      v155 = v69[7];
      v72(&v74[v155], 1, 1, v71);
      v75 = v69[8];
      v76 = v68;
      v154 = v75;
      v77 = v72;
      v72(&v74[v75], 1, 1, v71);
      *v74 = 0;
      v78 = *(v160 + 48);
      v79 = v54;
      v160 += 48;
      v156 = v78;
      v80 = (v78)(v68, 1, v54);
      v81 = v149;
      if (v80 != 1)
      {
        v82 = v153;
        sub_1DD9149C0(v76, v153, type metadata accessor for ChatChunk.RateLimits.Limits);
        v83 = *(v82 + *(v54 + 24));
        v84 = *v82;
        sub_1DD914958(v82 + *(v54 + 20), v81 + v71[6], &qword_1ECD82838, &unk_1DDA185F0);
        v73 = 0;
        v85 = v83 >= v84;
        *v81 = v83;
        v81[1] = v84;
        v79 = v54;
        *(v81 + v71[7]) = v85;
        *(v81 + v71[8]) = 0;
      }

      v86 = 1;
      v87 = v72;
      v72(v81, v73, 1, v71);
      sub_1DD9148E8(v81, &v161[v70]);
      v88 = v157;
      v89 = (v156)(v157, 1, v79);
      v90 = v153;
      v91 = v150;
      if (v89 != 1)
      {
        sub_1DD9149C0(v88, v153, type metadata accessor for ChatChunk.RateLimits.Limits);
        v92 = *(v90 + *(v79 + 24));
        v93 = *v90;
        sub_1DD914958(v90 + *(v79 + 20), v91 + v71[6], &qword_1ECD82838, &unk_1DDA185F0);
        v86 = 0;
        *v91 = v92;
        v91[1] = v93;
        *(v91 + v71[7]) = v92 >= v93;
        *(v91 + v71[8]) = 0;
      }

      v94 = 1;
      v77(v91, v86, 1, v71);
      sub_1DD9148E8(v91, &v161[v147]);
      v95 = v158;
      v96 = (v156)(v158, 1, v79);
      v97 = v151;
      if (v96 != 1)
      {
        sub_1DD9149C0(v95, v90, type metadata accessor for ChatChunk.RateLimits.Limits);
        v98 = *(v90 + *(v79 + 24));
        v99 = *v90;
        sub_1DD914958(v90 + *(v79 + 20), v97 + v71[6], &qword_1ECD82838, &unk_1DDA185F0);
        v94 = 0;
        *v97 = v98;
        v97[1] = v99;
        *(v97 + v71[7]) = 0;
        *(v97 + v71[8]) = v98 >= v99;
      }

      v100 = 1;
      v87(v97, v94, 1, v71);
      v101 = v161;
      sub_1DD9148E8(v97, &v161[v154]);
      v102 = v159;
      v103 = (v156)(v159, 1, v79);
      v104 = v152;
      if (v103 != 1)
      {
        sub_1DD9149C0(v102, v90, type metadata accessor for ChatChunk.RateLimits.Limits);
        v105 = *(v90 + *(v79 + 24));
        v106 = *v90;
        sub_1DD914958(v90 + *(v79 + 20), v104 + v71[6], &qword_1ECD82838, &unk_1DDA185F0);
        v100 = 0;
        v107 = v105 >= v106;
        *v104 = v105;
        v104[1] = v106;
        v101 = v161;
        *(v104 + v71[7]) = v107;
        *(v104 + v71[8]) = 0;
      }

      v87(v104, v100, 1, v71);
      sub_1DD9148E8(v104, v101 + v155);
      sub_1DD9149C0(v101, v143, type metadata accessor for RateLimitBudgets);
      v66 = 0;
    }

    v108 = v143;
    (*(v164 + 56))(v143, v66, 1, v166);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v109 = sub_1DDA14810();
    __swift_project_value_buffer(v109, qword_1EE16FA80);
    v110 = v142;
    sub_1DD90ADB4(v108, v142, &qword_1ECD82D18, &qword_1DDA185E8);
    v111 = sub_1DDA147F0();
    v112 = sub_1DDA14EC0();
    v113 = os_log_type_enabled(v111, v112);
    v114 = v145;
    if (v113)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v167[0] = v116;
      *v115 = 136315394;
      *(v115 + 4) = sub_1DD93FA54(0xD000000000000019, 0x80000001DDA27050, v167);
      *(v115 + 12) = 2080;
      sub_1DD90ADB4(v110, v114, &qword_1ECD82D18, &qword_1DDA185E8);
      v117 = sub_1DDA14B70();
      v119 = v118;
      sub_1DD90D378(v110, &qword_1ECD82D18, &qword_1DDA185E8);
      v120 = sub_1DD93FA54(v117, v119, v167);

      *(v115 + 14) = v120;
      _os_log_impl(&dword_1DD8F8000, v111, v112, "%s: [authenticated] %s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v116, -1, -1);
      MEMORY[0x1E12B8CE0](v115, -1, -1);
    }

    else
    {

      sub_1DD90D378(v110, &qword_1ECD82D18, &qword_1DDA185E8);
    }

    sub_1DD90D378(v162, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v138 = v108;
  }

  return sub_1DD914958(v138, v165, &qword_1ECD82D18, &qword_1DDA185E8);
}

uint64_t sub_1DD913A48@<X0>(char a1@<W0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for Vault(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v55 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v55 - v18);
  if (a1)
  {
    v20 = 0xD000000000000016;
  }

  else
  {
    v20 = 0xD000000000000010;
  }

  if (a1)
  {
    v21 = "saveRateLimitBudgets(_:)";
  }

  else
  {
    v21 = "com.apple.openai.xcode";
  }

  v22 = v21 | 0x8000000000000000;
  v57 = v17;
  v23 = *(v17 + 24);
  sub_1DDA14800();

  v24 = sub_1DDA147F0();
  v25 = sub_1DDA14ED0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v56 = v20;
    v28 = v27;
    v63 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_1DD93FA54(v56, v22, &v63);
    *(v26 + 12) = 2080;
    v62 = 1;
    v29 = sub_1DDA14B70();
    v31 = sub_1DD93FA54(v29, v30, &v63);

    *(v26 + 14) = v31;
    _os_log_impl(&dword_1DD8F8000, v24, v25, "Creating vault:%s security:%s", v26, 0x16u);
    swift_arrayDestroy();
    v32 = v28;
    v20 = v56;
    MEMORY[0x1E12B8CE0](v32, -1, -1);
    MEMORY[0x1E12B8CE0](v26, -1, -1);
  }

  *v19 = v20;
  v19[1] = v22;
  v33 = type metadata accessor for ManagedKeychainValueStore(0);
  v19[5] = v33;
  v19[6] = &off_1F58F2328;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19 + 2);

  sub_1DDA141C0();
  sub_1DDA14040();
  v35 = sub_1DDA14050();
  v36 = v20;
  v37 = *(v35 - 8);
  result = (*(v37 + 48))(v7, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v7;
    v40 = v61;
    v41 = HIDWORD(v61) & 1;
    (*(v37 + 32))(boxed_opaque_existential_1 + v33[5], v39, v35);
    v42 = v33[6];
    v43 = *MEMORY[0x1E69A1490];
    v44 = sub_1DDA14060();
    (*(*(v44 - 8) + 104))(boxed_opaque_existential_1 + v42, v43, v44);
    v45 = boxed_opaque_existential_1 + v33[7];
    *v45 = v40;
    v56 = v41;
    v45[4] = BYTE4(v40) & 1;
    v46 = v16 + *(v57 + 24);
    sub_1DDA14800();
    *v16 = v36;
    v16[1] = v22;
    v16[5] = type metadata accessor for UserDefaultsValueStore(0);
    v16[6] = &off_1F58F2310;
    v47 = __swift_allocate_boxed_opaque_existential_1(v16 + 2);
    v64 = v41;
    sub_1DD9C74C8(v40 | (v41 << 32), v47);
    v48 = v58;
    sub_1DD914824(v19, v58);
    v49 = v59;
    sub_1DD914824(v16, v59);
    v50 = sub_1DD96EB64(0x69746E6564657263, 0xEB00000000736C61);
    v51 = sub_1DD96EEA8(0x50676E696C6C6962, 0xEB000000006E616CLL);
    v52 = sub_1DD96F1EC(0x696D694C65746172, 0xEB00000000646574);
    v53 = sub_1DD96F51C(0x696D694C65746172, 0xEA00000000007374);
    sub_1DD914888(v49, type metadata accessor for Vault);
    sub_1DD914888(v48, type metadata accessor for Vault);
    sub_1DD914888(v19, type metadata accessor for Vault);
    result = sub_1DD914888(v16, type metadata accessor for Vault);
    v54 = v60;
    *v60 = v50;
    v54[1] = v51;
    v54[2] = v52;
    v54[3] = v53;
    *(v54 + 8) = v40;
    *(v54 + 36) = v56;
  }

  return result;
}

uint64_t sub_1DD913FF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-v5];
  sub_1DD92C8C4(&v11[-v5]);
  sub_1DD914958(v6, v4, &qword_1ECD82D00, &qword_1DDA18B10);
  v7 = type metadata accessor for UserCredentials(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
    sub_1DD90D378(v4, &qword_1ECD82D00, &qword_1DDA18B10);
    return 0;
  }

  else
  {
    v10 = *(v4 + 4);
    v9 = *(v4 + 5);

    sub_1DD914888(v4, type metadata accessor for UserCredentials);
    return v10;
  }
}

uint64_t sub_1DD91442C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v11 = sub_1DDA14810();
  __swift_project_value_buffer(v11, qword_1EE16FA80);
  sub_1DD90ADB4(a1, v10, &qword_1ECD82CF8, &unk_1DDA1AD50);
  v12 = sub_1DDA147F0();
  v13 = sub_1DDA14EC0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1DD93FA54(0xD000000000000018, 0x80000001DDA26FF0, v22);
    *(v14 + 12) = 2080;
    v21[1] = a2;
    sub_1DD90ADB4(v10, v8, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v16 = sub_1DDA14B70();
    v18 = v17;
    sub_1DD90D378(v10, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v19 = sub_1DD93FA54(v16, v18, v22);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1DD8F8000, v12, v13, "%s budget:%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v15, -1, -1);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
  }

  else
  {

    sub_1DD90D378(v10, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }

  return sub_1DD9316D8(a1);
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

uint64_t sub_1DD914824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Vault(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD914888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD9148E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD914958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD9149C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD914A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  v36 = *(v38 - 8);
  v39 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v3 = &v32 - v2;
  v33 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v34 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D38, &unk_1DDA18610);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v35);
  v16 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  sub_1DDA14140();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8790], v8);
  sub_1DDA14DD0();
  (*(v9 + 8))(v12, v8);
  v19 = sub_1DDA14D60();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_1DD916418(v41, &v42);
  v20 = v36;
  v21 = v3;
  v22 = v38;
  (*(v36 + 16))(v21, v40, v38);
  v23 = v35;
  (*(v13 + 16))(v16, v18, v35);
  v24 = (*(v20 + 80) + 80) & ~*(v20 + 80);
  v25 = (v39 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = v43;
  *(v26 + 32) = v42;
  *(v26 + 48) = v27;
  *(v26 + 64) = v44;
  (*(v20 + 32))(v26 + v24, v33, v22);
  (*(v13 + 32))(v26 + v25, v16, v23);
  v28 = sub_1DD982718(0, 0, v34, &unk_1DDA18628, v26);
  sub_1DD916418(v41, &v42);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 16) = v42;
  *(v29 + 32) = v30;
  *(v29 + 48) = v44;
  *(v29 + 64) = v28;
  sub_1DDA14DE0();
  return (*(v13 + 8))(v18, v23);
}

uint64_t sub_1DD914E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  v10 = sub_1DDA134E0();
  v6[19] = v10;
  v11 = *(v10 - 8);
  v6[20] = v11;
  v12 = *(v11 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v13 = sub_1DDA14120();
  v6[24] = v13;
  v14 = *(v13 - 8);
  v6[25] = v14;
  v15 = *(v14 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v16 = sub_1DDA140C0();
  v6[28] = v16;
  v17 = *(v16 - 8);
  v6[29] = v17;
  v18 = *(v17 + 64) + 15;
  v6[30] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v20 = sub_1DDA14140();
  v6[32] = v20;
  v21 = *(v20 - 8);
  v6[33] = v21;
  v22 = *(v21 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v6[38] = v23;
  v24 = *(v23 - 8);
  v6[39] = v24;
  v25 = *(v24 + 64) + 15;
  v6[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9151BC, 0, 0);
}

uint64_t sub_1DD9151BC()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 112);
  sub_1DD916418(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  sub_1DDA14E10();
  v3 = *(v0 + 56);
  if (*(v3 + 16))
  {
    *(v0 + 352) = *MEMORY[0x1E69A1508];
    *(v0 + 356) = *MEMORY[0x1E69A1518];
    *(v0 + 360) = *MEMORY[0x1E69A1510];
    *(v0 + 328) = v3;
    v4 = *(MEMORY[0x1E69E87B0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_1DD915454;
    v6 = *(v0 + 320);
    v7 = *(v0 + 304);
    v8 = *(v0 + 248);

    return MEMORY[0x1EEE6DB98](v8, v7);
  }

  else
  {
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);
    v12 = *(v0 + 120);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    (*(v14 + 40))(sub_1DD916A68, 0, v13, v14);
    *(v0 + 72) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14E00();
    (*(v10 + 8))(v9, v11);
    sub_1DD91692C(v0 + 16);
    v15 = *(v0 + 320);
    v16 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v23 = *(v0 + 208);
    v22 = *(v0 + 216);
    v24 = *(v0 + 184);
    v27 = *(v0 + 176);
    v28 = *(v0 + 168);
    v29 = *(v0 + 144);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1DD915454()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1DD916270;
  }

  else
  {
    v3 = sub_1DD915568;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD915568()
{
  v175 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DD91695C(v3);
LABEL_39:
    v138 = *(v0 + 312);
    v137 = *(v0 + 320);
    v139 = *(v0 + 304);
    v140 = *(v0 + 120);
    v141 = *(v0 + 40);
    v142 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v141);
    (*(v142 + 40))(sub_1DD916A68, 0, v141, v142);
    *(v0 + 72) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14E00();
    (*(v138 + 8))(v137, v139);
    sub_1DD91692C(v0 + 16);
    v143 = *(v0 + 320);
    v144 = *(v0 + 288);
    v145 = *(v0 + 296);
    v147 = *(v0 + 272);
    v146 = *(v0 + 280);
    v149 = *(v0 + 240);
    v148 = *(v0 + 248);
    v151 = *(v0 + 208);
    v150 = *(v0 + 216);
    v152 = *(v0 + 184);
    v168 = *(v0 + 176);
    v171 = *(v0 + 168);
    v173 = *(v0 + 144);

    v153 = *(v0 + 8);

    return v153();
  }

  v4 = *(v0 + 352);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);
  (*(v2 + 32))(*(v0 + 296), v3, v1);
  sub_1DDA140D0();
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 == v4)
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    (*(*(v0 + 232) + 96))(v9, *(v0 + 224));
    (*(v12 + 32))(v10, v9, v11);
    if (qword_1ECD827A0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 288);
    v14 = *(v0 + 296);
    v15 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    v21 = sub_1DDA14810();
    __swift_project_value_buffer(v21, qword_1ECDA20C8);
    v169 = *(v16 + 16);
    v169(v13, v14, v15);
    (*(v20 + 16))(v18, v17, v19);
    v22 = sub_1DDA147F0();
    v23 = sub_1DDA14ED0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 288);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v29 = *(v0 + 200);
    v28 = *(v0 + 208);
    v30 = *(v0 + 192);
    if (v24)
    {
      v161 = *(v0 + 192);
      v164 = *(v0 + 256);
      v31 = *(v0 + 184);
      v32 = *(v0 + 152);
      v33 = *(v0 + 160);
      v156 = *(v0 + 208);
      v34 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v174 = v158;
      *v34 = 136315394;
      log = v22;
      sub_1DDA140E0();
      sub_1DD911DE4();
      v35 = sub_1DDA15400();
      v155 = v23;
      v37 = v36;
      (*(v33 + 8))(v31, v32);
      v38 = v164;
      v165 = *(v26 + 8);
      v165(v25, v38);
      v39 = sub_1DD93FA54(v35, v37, &v174);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2048;
      sub_1DDA14110();
      v41 = v40;
      v42 = v161;
      v162 = *(v29 + 8);
      v162(v156, v42);
      *(v34 + 14) = v41;
      _os_log_impl(&dword_1DD8F8000, log, v155, "Registration progress update. URL:%s progress:%f", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v158);
      MEMORY[0x1E12B8CE0](v158, -1, -1);
      MEMORY[0x1E12B8CE0](v34, -1, -1);
    }

    else
    {

      v162 = *(v29 + 8);
      v162(v28, v30);
      v165 = *(v26 + 8);
      v165(v25, v27);
    }

    v63 = *(v0 + 296);
    v64 = *(v0 + 256);
    v65 = *(v0 + 192);
    v67 = *(v0 + 136);
    v66 = *(v0 + 144);
    v68 = *(v0 + 200) + 8;
    v160 = *(v0 + 216);
    v69 = *(v0 + 120);
    v70 = *(v0 + 128);
    v169(*(v0 + 280), v63, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14DF0();
    (*(v67 + 8))(v66, v70);
    v162(v160, v65);
    v165(v63, v64);
  }

  else if (v8 == *(v0 + 356))
  {
    (*(*(v0 + 232) + 96))(*(v0 + 240), *(v0 + 224));
    if (qword_1ECD827A0 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 296);
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);
    v46 = *(v0 + 256);
    v47 = sub_1DDA14810();
    __swift_project_value_buffer(v47, qword_1ECDA20C8);
    v170 = *(v45 + 16);
    v170(v44, v43, v46);
    v48 = sub_1DDA147F0();
    v49 = sub_1DDA14ED0();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 264);
    v52 = *(v0 + 272);
    v53 = *(v0 + 256);
    if (v50)
    {
      v54 = *(v0 + 184);
      v56 = *(v0 + 152);
      v55 = *(v0 + 160);
      v166 = *(v0 + 256);
      v57 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v174 = v163;
      *v57 = 136315138;
      v159 = v49;
      sub_1DDA140E0();
      sub_1DD911DE4();
      v58 = sub_1DDA15400();
      v60 = v59;
      (*(v55 + 8))(v54, v56);
      v61 = v166;
      v167 = *(v51 + 8);
      v167(v52, v61);
      v62 = sub_1DD93FA54(v58, v60, &v174);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1DD8F8000, v48, v159, "Finished uploading document. URL: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v163);
      MEMORY[0x1E12B8CE0](v163, -1, -1);
      MEMORY[0x1E12B8CE0](v57, -1, -1);
    }

    else
    {

      v167 = *(v51 + 8);
      v167(v52, v53);
    }

    v80 = *(v0 + 328);
    v81 = *(v0 + 296);
    v82 = *(v0 + 176);
    sub_1DDA140E0();
    v83 = sub_1DD96AD50(v82);
    if (v84)
    {
      v85 = v83;
      v86 = *(v0 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v0 + 56);
      *(v0 + 96) = v88;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DD9CA010();
        v88 = *(v0 + 96);
      }

      v89 = *(v0 + 176);
      v90 = *(v0 + 152);
      v91 = *(v0 + 160);
      v92 = *(v91 + 8);
      v92(*(v88 + 48) + *(v91 + 72) * v85, v90);
      v93 = *(*(v88 + 56) + 8 * v85);

      sub_1DD9CAEFC(v85, v88);
      v92(v89, v90);
      *(v0 + 56) = v88;
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
    }

    v102 = *(v0 + 296);
    v103 = *(v0 + 256);
    v104 = *(v0 + 240);
    v106 = *(v0 + 136);
    v105 = *(v0 + 144);
    v107 = *(v0 + 120);
    v108 = *(v0 + 128);
    v170(*(v0 + 280), v102, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14DF0();
    (*(v106 + 8))(v105, v108);
    v167(v102, v103);
    v109 = sub_1DDA14180();
    (*(*(v109 - 8) + 8))(v104, v109);
  }

  else if (v8 == *(v0 + 360))
  {
    v71 = *(v0 + 240);
    (*(*(v0 + 232) + 96))(v71, *(v0 + 224));
    v73 = *v71;
    v72 = v71[1];
    if (qword_1ECD827A0 != -1)
    {
      swift_once();
    }

    v74 = sub_1DDA14810();
    __swift_project_value_buffer(v74, qword_1ECDA20C8);

    v75 = sub_1DDA147F0();
    v76 = sub_1DDA14EE0();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v174 = v78;
      *v77 = 136315138;
      v79 = sub_1DD93FA54(v73, v72, &v174);

      *(v77 + 4) = v79;
      _os_log_impl(&dword_1DD8F8000, v75, v76, "Registration failed for document with error: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1E12B8CE0](v78, -1, -1);
      MEMORY[0x1E12B8CE0](v77, -1, -1);
    }

    else
    {
    }

    v110 = *(v0 + 328);
    v111 = *(v0 + 296);
    v112 = *(v0 + 168);
    sub_1DDA140E0();
    v113 = sub_1DD96AD50(v112);
    if (v114)
    {
      v115 = v113;
      v116 = *(v0 + 56);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v0 + 56);
      *(v0 + 88) = v118;
      if (!v117)
      {
        sub_1DD9CA010();
        v118 = *(v0 + 88);
      }

      v120 = *(v0 + 160);
      v119 = *(v0 + 168);
      v121 = *(v0 + 152);
      v122 = *(v120 + 8);
      v122(*(v118 + 48) + *(v120 + 72) * v115, v121);
      v123 = *(*(v118 + 56) + 8 * v115);

      sub_1DD9CAEFC(v115, v118);
      v122(v119, v121);
      *(v0 + 56) = v118;
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    v124 = *(v0 + 296);
    v125 = *(v0 + 256);
    v126 = *(v0 + 264);
    v128 = *(v0 + 136);
    v127 = *(v0 + 144);
    v129 = *(v0 + 120);
    v130 = *(v0 + 128);
    (*(v126 + 16))(*(v0 + 280), v124, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14DF0();
    (*(v128 + 8))(v127, v130);
    (*(v126 + 8))(v124, v125);
  }

  else
  {
    v94 = *(v0 + 296);
    v95 = *(v0 + 256);
    v96 = *(v0 + 264);
    v97 = *(v0 + 232);
    v172 = *(v0 + 240);
    v98 = *(v0 + 224);
    v99 = *(v0 + 120);
    v100 = *(v0 + 40);
    v101 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v100);
    (*(v101 + 40))(sub_1DD916A68, 0, v100, v101);
    *(v0 + 80) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14E00();
    (*(v96 + 8))(v94, v95);
    (*(v97 + 8))(v172, v98);
  }

  v131 = *(v0 + 56);
  if (!*(v131 + 16))
  {
    goto LABEL_39;
  }

  *(v0 + 328) = v131;
  v132 = *(MEMORY[0x1E69E87B0] + 4);
  v133 = swift_task_alloc();
  *(v0 + 336) = v133;
  *v133 = v0;
  v133[1] = sub_1DD915454;
  v134 = *(v0 + 320);
  v135 = *(v0 + 304);
  v136 = *(v0 + 248);

  return MEMORY[0x1EEE6DB98](v136, v135);
}

uint64_t sub_1DD916270()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[15];
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v7 + 40))(sub_1DD916A68, 0, v6, v7);
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  sub_1DDA14E00();
  (*(v3 + 8))(v2, v4);
  sub_1DD91692C((v0 + 2));
  v8 = v0[40];
  v9 = v0[36];
  v10 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[30];
  v13 = v0[31];
  v16 = v0[26];
  v15 = v0[27];
  v17 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[18];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1DD916450(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600) - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DD9165BC;

  return sub_1DD914E94(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_1DD9165BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DD9166B0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D48, &qword_1DDA18630);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  LODWORD(a1) = (*(v5 + 88))(v8, v4);
  v9 = *MEMORY[0x1E69E8760];
  result = (*(v5 + 8))(v8, v4);
  if (a1 == v9)
  {
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    (*(v12 + 40))(sub_1DD916A68, 0, v11, v12);
    return sub_1DDA14D70();
  }

  return result;
}

void sub_1DD916858(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DDA15190())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12B7F50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 cancel];

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1DD91695C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD9169C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD916A0C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_1DD916D34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD916DF8(void *a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_completion);
  v6 = *(v2 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_completion + 8);
  v8 = (v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_data);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  sub_1DD909CD4(v9, v10);
  v11 = [a1 response];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  v7(v9, v10, v13, a2);

  return sub_1DD909D28(v9, v10);
}

uint64_t sub_1DD916EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DDA14120();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize + 8))
  {
    v13 = a3;
  }

  else
  {
    v13 = *(v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize);
  }

  if (v13 < 1)
  {
    if (((a2 | a1) & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (((a2 | a1) & 0x8000000000000000) == 0)
  {
LABEL_6:
    sub_1DDA14100();
    v14 = *(v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_update);
    v15 = *(v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_update + 8);
    v14(v12);
    return (*(v8 + 8))(v12, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD917050(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9170D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v11 = v6 + ((v9 + ((v9 + (v9 & ~v8)) & ~v8)) & ~v8) + 1;
  v12 = 8 * v11;
  if (v11 > 3)
  {
    goto LABEL_7;
  }

  v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
  if (HIWORD(v14))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

LABEL_14:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      return v7 + (v11 | v15) + 1;
    }

    v13 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *(((v9 + ((v9 + ((a1 + v9) & ~v8)) & ~v8)) & ~v8) + v6);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_1DD917284(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + ((v8 + v9 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9)) & ~v9) + 1;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v8 + ((v8 + v9 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9)) & ~v9) != -1)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0xFE)
  {
    *(((v8 + v9 + ((v8 + v9 + (&result[v8 + v9] & ~v9)) & ~v9)) & ~v9) + v8) = a2 + 1;
  }

  else
  {
    v21 = *(v5 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_1DD917508()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD917584()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9175F8()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD91764C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DDA151E0();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DD9176C0()
{
  sub_1DD94BC74(1, v13);
  if (qword_1ECD827D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECDA2158;
  v1 = qword_1EE16F290;

  if (v1 != -1)
  {
    swift_once();
  }

  v12[3] = &type metadata for ChatGPTProvider;
  v12[4] = &off_1F58EF288;
  v12[0] = swift_allocObject();
  sub_1DD9183EC(&qword_1EE16FA98, v12[0] + 16);
  type metadata accessor for ExternalLanguageModel();
  v2 = swift_allocObject();
  type metadata accessor for ExpiredSessions();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x1E69E7CD0];
  *(v2 + 120) = v3;
  sub_1DD90ADB4(v12, &v6, &qword_1ECD82F40, &qword_1DDA18708);
  if (*(&v7 + 1))
  {
    sub_1DD8FEEB0(&v6, &v9);
  }

  else
  {
    *(&v10 + 1) = &type metadata for ChatGPTProvider;
    *&v11[0] = &off_1F58EF288;
    *&v9 = swift_allocObject();
    sub_1DD9183EC(&qword_1EE16FA98, v9 + 16);
    if (*(&v7 + 1))
    {
      sub_1DD90D378(&v6, &qword_1ECD82F40, &qword_1DDA18708);
    }
  }

  sub_1DD8FEEB0(&v9, v2 + 80);
  sub_1DD90ADB4(v13, &v6, &qword_1ECD82F48, &unk_1DDA18710);
  if (v6)
  {
    v9 = v6;
    v10 = v7;
    v11[0] = v8[0];
    *(v11 + 9) = *(v8 + 9);
  }

  else
  {
    sub_1DD94BC74(1, &v9);
    if (v6)
    {
      sub_1DD90D378(&v6, &qword_1ECD82F48, &unk_1DDA18710);
    }
  }

  v4 = v10;
  *(v2 + 16) = v9;
  *(v2 + 32) = v4;
  *(v2 + 48) = v11[0];
  *(v2 + 57) = *(v11 + 9);
  sub_1DD90D378(v13, &qword_1ECD82F48, &unk_1DDA18710);
  result = sub_1DD90D378(v12, &qword_1ECD82F40, &qword_1DDA18708);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 128) = v0;
  qword_1ECDA20B0 = v2;
  return result;
}

uint64_t sub_1DD917948(char *a1)
{
  v2 = sub_1DDA13870();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_1DDA134E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA13440();
  sub_1DDA134C0();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DD90D378(v10, &qword_1ECD82CE0, &qword_1DDA18700);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_1DDA13460();
    v16 = sub_1DDA151E0();

    (*(v12 + 8))(v15, v11);
    if (!v16)
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DDA14810();
  __swift_project_value_buffer(v17, qword_1EE16FA80);
  (*(v3 + 16))(v6, a1, v2);
  v18 = sub_1DDA147F0();
  v19 = sub_1DDA14EE0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    v22 = sub_1DDA13440();
    v24 = v23;
    v29 = a1;
    v25 = *(v3 + 8);
    v25(v6, v2);
    v26 = sub_1DD93FA54(v22, v24, &v30);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1DD8F8000, v18, v19, "Invalid Model Bundle %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E12B8CE0](v21, -1, -1);
    MEMORY[0x1E12B8CE0](v20, -1, -1);

    v25(v29, v2);
  }

  else
  {

    v27 = *(v3 + 8);
    v27(a1, v2);
    v27(v6, v2);
  }

  return 1;
}

id sub_1DD917D58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_1DDA134E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA134C0();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82CE0, &qword_1DDA18700);
LABEL_5:
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DDA14810();
    __swift_project_value_buffer(v19, qword_1ECDA20E0);

    v20 = sub_1DDA147F0();
    v21 = sub_1DDA14EE0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1DD93FA54(a1, a2, v46);
      _os_log_impl(&dword_1DD8F8000, v20, v21, "Failed to load model, cannot recognize model identifier: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B8CE0](v23, -1, -1);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
    }

    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_1DDA13460();
  v18 = sub_1DDA151E0();

  if (v18)
  {
    (*(v14 + 8))(v17, v13);
    goto LABEL_5;
  }

  if (a5)
  {

    sub_1DD94BC74(1, v46);
    if (qword_1ECD827D8 != -1)
    {
      swift_once();
    }

    v35 = qword_1ECDA2158;

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v25 = result;
      internalBuild = MobileGestalt_get_internalBuild();

      v43 = &type metadata for Overrides.ChatGPTXcode;
      v44 = &off_1F58F16E8;
      v27 = swift_allocObject();
      *&v42 = v27;
      strcpy((v27 + 16), "chatgptXcode");
      *(v27 + 29) = 0;
      *(v27 + 30) = -5120;
      *(v27 + 32) = 0xD00000000000001CLL;
      *(v27 + 40) = 0x80000001DDA27170;
      *(v27 + 48) = 0xD00000000000001CLL;
      *(v27 + 56) = 0x80000001DDA27190;
      *(v27 + 64) = 0xD00000000000001CLL;
      *(v27 + 72) = 0x80000001DDA27190;
      *(v27 + 80) = 0xD00000000000001CLL;
      *(v27 + 88) = 0x80000001DDA271B0;
      *(v27 + 96) = internalBuild;
      *(v27 + 104) = a3;
      v45[3] = &type metadata for ChatGPTProvider;
      v45[4] = &off_1F58EF288;
      v28 = swift_allocObject();
      v45[0] = v28;
      *(v28 + 16) = 4;
      sub_1DD8FEEB0(&v42, v28 + 24);
      *(v28 + 64) = 1;
      type metadata accessor for ExternalLanguageModel();
      v29 = swift_allocObject();
      type metadata accessor for ExpiredSessions();
      v30 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v30 + 112) = MEMORY[0x1E69E7CD0];
      *(v29 + 120) = v30;
      sub_1DD90ADB4(v45, &v36, &qword_1ECD82F40, &qword_1DDA18708);
      if (*(&v37 + 1))
      {
        sub_1DD8FEEB0(&v36, &v39);
      }

      else
      {
        if (qword_1EE16F290 != -1)
        {
          swift_once();
        }

        *(&v40 + 1) = &type metadata for ChatGPTProvider;
        *&v41[0] = &off_1F58EF288;
        *&v39 = swift_allocObject();
        sub_1DD9183EC(&qword_1EE16FA98, v39 + 16);
        if (*(&v37 + 1))
        {
          sub_1DD90D378(&v36, &qword_1ECD82F40, &qword_1DDA18708);
        }
      }

      sub_1DD8FEEB0(&v39, v29 + 80);
      sub_1DD90ADB4(v46, &v36, &qword_1ECD82F48, &unk_1DDA18710);
      if (v36)
      {
        v39 = v36;
        v40 = v37;
        v41[0] = v38[0];
        *(v41 + 9) = *(v38 + 9);
      }

      else
      {
        sub_1DD94BC74(1, &v39);
        if (v36)
        {
          sub_1DD90D378(&v36, &qword_1ECD82F48, &unk_1DDA18710);
        }
      }

      v33 = v40;
      *(v29 + 16) = v39;
      *(v29 + 32) = v33;
      *(v29 + 48) = v41[0];
      *(v29 + 57) = *(v41 + 9);
      sub_1DD90D378(v46, &qword_1ECD82F48, &unk_1DDA18710);
      (*(v14 + 8))(v17, v13);
      sub_1DD90D378(v45, &qword_1ECD82F40, &qword_1DDA18708);
      result = v29;
      *(v29 + 136) = 0;
      *(v29 + 144) = 0;
      *(v29 + 128) = v35;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1ECD82778 != -1)
    {
      swift_once();
    }

    v31 = qword_1ECDA20B0;
    v32 = *(v14 + 8);

    v32(v17, v13);
    return v31;
  }

  return result;
}

unint64_t sub_1DD91845C()
{
  result = qword_1ECD82F50;
  if (!qword_1ECD82F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82F50);
  }

  return result;
}

uint64_t sub_1DD9184B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = v10;
  v96 = a7;
  v114 = a5;
  v115 = a3;
  v116 = a4;
  v108 = a1;
  v109 = a2;
  v106 = a9;
  v101 = *v10;
  v14 = sub_1DDA136B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v95 = v17;
  v111 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = *(v104 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v102 = v21;
  v103 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v91 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v91 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v94 = *(v27 - 8);
  v28 = *(v94 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v110 = (&v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v91 - v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  v112 = swift_allocBox();
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v35 = *(v34 - 8);
  v98 = *(v35 + 56);
  v99 = v34;
  v97 = v35 + 56;
  v36 = v98(v33, 1, 1);
  v37 = v11[17];
  v117 = v11;
  v118 = a6;
  v107 = v14;
  if (v37)
  {
    v38 = v11[18];
    v37(&v121, v36);
    *&v127[16] = v123;
    v128 = v124;
    v129 = v125;
    v126 = v121;
    *v127 = v122;
    v39 = a8;
  }

  else
  {
    v93 = v15;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    sub_1DD90ADB4(a8, v31, &qword_1ECD82F60, &qword_1DDA18890);
    v40 = sub_1DDA13F50();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 48))(v31, 1, v40);
    v39 = a8;
    if (v42 == 1)
    {
      sub_1DD90D378(v31, &qword_1ECD82F60, &qword_1DDA18890);
      v43 = 0;
      v44 = 1;
    }

    else
    {
      v45 = sub_1DDA13F40();
      (*(v41 + 8))(v31, v40);
      v43 = v45;
      v44 = v121 == 0;
    }

    v46 = v42 == 1;
    v47 = v109;

    v48 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    v49 = sub_1DD9C13D0(v108, v47, v48);
    v51 = v50;
    v53 = v52;
    LOBYTE(v126) = v46;
    sub_1DD913A48(v52 & 1, v43 | (v46 << 32), &v130);
    sub_1DD928DB4(v49, v51, v53 & 1);
    sub_1DD94BC74(1, &v119);
    *&v129 = type metadata accessor for OpenAIAuthenticationService();
    *(&v129 + 1) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v127[24]);
    sub_1DD979F04(&v119, v49, v51, v53 & 1, boxed_opaque_existential_1);
    sub_1DD928DD4(v49, v51, v53 & 1);
    v126 = v130;
    *v127 = v131[0];
    *&v127[13] = *(v131 + 13);
    v14 = v107;
    v15 = v93;
    if (!v44)
    {
      sub_1DD90D378(&v121, &qword_1ECD82F70, &qword_1DDA188A8);
    }
  }

  v93 = a10;
  v119 = v126;
  v120[0] = *v127;
  *(v120 + 13) = *&v127[13];
  sub_1DD9122F0(v26);
  v55 = type metadata accessor for Credentials(0);
  if ((*(*(v55 - 8) + 48))(v26, 1, v55) == 1)
  {
    sub_1DD90D378(v26, &qword_1ECD82D20, &qword_1DDA18CE0);
    v92 = 0;
    v56 = 0;
  }

  else
  {
    v92 = Credentials.credentialsID.getter();
    v56 = v57;
    sub_1DD929B9C(v26, type metadata accessor for Credentials);
  }

  sub_1DD928DF4(&v126, &v121);
  (*(v15 + 16))(v111, v96, v14);
  sub_1DD90ADB4(v39, v110, &qword_1ECD82F60, &qword_1DDA18890);
  v58 = (*(v15 + 80) + 176) & ~*(v15 + 80);
  v59 = (v95 + *(v94 + 80) + v58) & ~*(v94 + 80);
  v96 = (v28 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v121;
  *(v60 + 40) = v122;
  v62 = v124;
  *(v60 + 56) = v123;
  *(v60 + 72) = v62;
  *(v60 + 88) = v125;
  *(v60 + 16) = v112;
  *(v60 + 24) = v61;
  v63 = v116;
  v64 = v114;
  v65 = v115;
  *(v60 + 104) = v117;
  *(v60 + 112) = v65;
  *(v60 + 120) = v63;
  *(v60 + 128) = v64;
  v66 = v92;
  *(v60 + 136) = v118;
  *(v60 + 144) = v66;
  v67 = v107;
  v68 = v108;
  *(v60 + 152) = v56;
  *(v60 + 160) = v68;
  *(v60 + 168) = v109;
  (*(v15 + 32))(v60 + v58, v111, v67);
  sub_1DD914958(v110, v60 + v59, &qword_1ECD82F60, &qword_1DDA18890);
  v69 = v95;
  *(v60 + v96) = v93;
  *(v60 + v69) = v101;
  v70 = sub_1DDA14140();

  v71 = v103;
  v111 = v70;
  sub_1DDA14E30();
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v72 = sub_1DDA14810();
  v73 = __swift_project_value_buffer(v72, qword_1ECDA2110);
  v74 = v113;
  sub_1DD91DE3C("RegisteringDocument", 19, 2, v73, v113);
  v75 = v104;
  v76 = v105;
  v77 = *(v104 + 8);
  v109 = v104 + 8;
  v110 = v77;
  (v77)(v71, v105);
  v78 = swift_allocBox();
  (v98)(v79, 1, 1, v99);
  (*(v75 + 16))(v71, v74, v76);
  v80 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v81 = (v102 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  *(v83 + 16) = v78;
  (*(v75 + 32))(v83 + v80, v71, v76);
  v84 = (v83 + v81);
  v85 = v115;
  v86 = v117;
  v87 = v118;
  *v84 = v114;
  v84[1] = v87;
  *(v83 + v82) = v86;
  v88 = (v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8));
  v89 = v116;
  *v88 = v85;
  v88[1] = v89;

  sub_1DDA14E30();
  (v110)(v113, v76);

  sub_1DD9291B0(&v126);
}

uint64_t sub_1DD918E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v23;
  *(v8 + 224) = v21;
  *(v8 + 240) = v22;
  *(v8 + 208) = v20;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 160) = a3;
  *(v8 + 168) = a4;
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v11 = sub_1DDA14140();
  *(v8 + 280) = v11;
  v12 = *(v11 - 8);
  *(v8 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 304) = v14;
  *(v8 + 312) = *(v14 + 64);
  *(v8 + 320) = swift_task_alloc();
  v15 = sub_1DDA136B0();
  *(v8 + 328) = v15;
  v16 = *(v15 - 8);
  *(v8 + 336) = v16;
  *(v8 + 344) = *(v16 + 64);
  *(v8 + 352) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898) - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD919080, 0, 0);
}

uint64_t sub_1DD919080()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  swift_beginAccess();
  sub_1DD90ADB4(v2, v1, &qword_1ECD82F68, &qword_1DDA18898);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82F68, &qword_1DDA18898);
  if (v5 == 1)
  {
    v7 = *(v0 + 344);
    v6 = *(v0 + 352);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v44 = v10;
    v12 = *(v0 + 304);
    v13 = *(v0 + 248);
    v14 = *(v0 + 240);
    v53 = *(v0 + 232);
    v54 = *(v0 + 256);
    v52 = *(v0 + 224);
    v50 = *(v0 + 208);
    v51 = *(v0 + 216);
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    v45 = *(v0 + 176);
    v43 = *(v0 + 168);
    v46 = *(v0 + 184);
    v47 = *(v0 + 152);
    sub_1DD928DF4(*(v0 + 160), v0 + 16);
    (*(v9 + 16))(v6, v14, v8);
    sub_1DD90ADB4(v13, v10, &qword_1ECD82F60, &qword_1DDA18890);
    v15 = (*(v9 + 80) + 176) & ~*(v9 + 80);
    v42 = (v7 + *(v12 + 80) + v15) & ~*(v12 + 80);
    v16 = swift_allocObject();
    v17 = *(v0 + 16);
    *(v16 + 88) = *(v0 + 32);
    v18 = *(v0 + 64);
    *(v16 + 104) = *(v0 + 48);
    *(v16 + 120) = v18;
    *(v16 + 136) = *(v0 + 80);
    *(v0 + 376) = v16;
    *(v16 + 16) = v43;
    *(v16 + 24) = v45;
    *(v16 + 32) = v46;
    *(v16 + 40) = v48;
    *(v16 + 48) = v49;
    *(v16 + 56) = v50;
    *(v16 + 64) = v51;
    *(v16 + 72) = v17;
    *(v16 + 152) = v47;
    *(v16 + 160) = v52;
    *(v16 + 168) = v53;
    (*(v9 + 32))(v16 + v15, v6, v8);
    sub_1DD914958(v44, v16 + v42, &qword_1ECD82F60, &qword_1DDA18890);
    *(v16 + ((v11 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;

    v19 = swift_task_alloc();
    *(v0 + 384) = v19;
    *v19 = v0;
    v19[1] = sub_1DD919610;
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);

    return (sub_1DD9330A4)(v21, v20, &unk_1DDA18910, v16);
  }

  else
  {
    v23 = *(v0 + 368);
    swift_beginAccess();
    if (v4(v23, 1, v3))
    {
      v24 = *(v0 + 280);
      v25 = *(v0 + 288);
      v26 = *(v0 + 272);
      swift_endAccess();
      (*(v25 + 56))(v26, 1, 1, v24);
      v27 = *(v0 + 264);
      v29 = *(v0 + 176);
      v28 = *(v0 + 184);
      v30 = *(v0 + 168);
      sub_1DD90D378(*(v0 + 272), &qword_1ECD82D58, &unk_1DDA18640);
      v31 = *(v30 + 128);
      v32 = sub_1DDA14D60();
      (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
      sub_1DDA14D40();

      v33 = sub_1DDA14D30();
      v34 = swift_allocObject();
      v35 = MEMORY[0x1E69E85E0];
      v34[2] = v33;
      v34[3] = v35;
      v34[4] = v29;
      v34[5] = v28;
      v34[6] = v31;
      *(v0 + 416) = sub_1DD982718(0, 0, v27, &unk_1DDA18918, v34);
      v36 = *(MEMORY[0x1E69E86C0] + 4);
      v37 = swift_task_alloc();
      *(v0 + 424) = v37;
      *v37 = v0;
      v37[1] = sub_1DD919B68;

      return MEMORY[0x1EEE6DA40]();
    }

    else
    {
      v38 = *(MEMORY[0x1E69E87B0] + 4);
      v39 = swift_task_alloc();
      *(v0 + 400) = v39;
      *v39 = v0;
      v39[1] = sub_1DD9197A4;
      v40 = *(v0 + 368);
      v41 = *(v0 + 272);

      return MEMORY[0x1EEE6DB98](v41, v3);
    }
  }
}

uint64_t sub_1DD919610()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD919D48, 0, 0);
  }

  else
  {
    v4 = v3[47];

    v6 = v3[44];
    v5 = v3[45];
    v7 = v3[40];
    v8 = v3[37];
    v9 = v3[33];
    v10 = v3[34];

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_1DD9197A4()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1DD919DF8;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1DD9198C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD9198C0()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[33];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];
    sub_1DD90D378(v3, &qword_1ECD82D58, &unk_1DDA18640);
    v8 = *(v7 + 128);
    v9 = sub_1DDA14D60();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_1DDA14D40();

    v10 = sub_1DDA14D30();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v6;
    v11[5] = v5;
    v11[6] = v8;
    v0[52] = sub_1DD982718(0, 0, v4, &unk_1DDA18918, v11);
    v13 = *(MEMORY[0x1E69E86C0] + 4);
    v14 = swift_task_alloc();
    v0[53] = v14;
    *v14 = v0;
    v14[1] = sub_1DD919B68;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v15 = v0[37];
    v16 = v0[18];
    v17 = *(v2 + 32);
    v17(v15, v3, v1);
    v17(v16, v15, v1);
    (*(v2 + 56))(v16, 0, 1, v1);
    v19 = v0[44];
    v18 = v0[45];
    v20 = v0[40];
    v21 = v0[37];
    v23 = v0[33];
    v22 = v0[34];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1DD919B68()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD919C80, 0, 0);
}

uint64_t sub_1DD919C80()
{
  (*(v0[36] + 56))(v0[18], 1, 1, v0[35]);
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[40];
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD919D48()
{
  v1 = v0[47];

  v2 = v0[49];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[40];
  v6 = v0[37];
  v8 = v0[33];
  v7 = v0[34];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DD919DF8()
{
  swift_endAccess();
  v1 = v0[51];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[40];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DD919EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v34;
  *(v8 + 184) = v35;
  *(v8 + 160) = v33;
  *(v8 + 152) = a1;
  v14 = sub_1DDA134E0();
  *(v8 + 192) = v14;
  v15 = *(v14 - 8);
  *(v8 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 224) = v17;
  *(v8 + 232) = *(v17 + 64);
  *(v8 + 240) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D38, &unk_1DDA18610);
  *(v8 + 256) = v19;
  v20 = *(v19 - 8);
  *(v8 + 264) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 280) = v22;
  v23 = *(v22 - 8);
  *(v8 + 288) = v23;
  *(v8 + 296) = *(v23 + 64);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  *(v8 + 320) = v24;
  v25 = *(v24 - 8);
  *(v8 + 328) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898) - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_projectBox();
  v28 = swift_task_alloc();
  *(v8 + 376) = v28;
  *v28 = v8;
  v28[1] = sub_1DD91A260;

  return sub_1DD91B008(a3, a4, a5, a6, a7, a8, v32);
}

uint64_t sub_1DD91A260(uint64_t a1)
{
  v4 = *(*v2 + 376);
  v5 = *v2;
  v5[48] = a1;
  v5[49] = v1;

  if (v1)
  {
    v7 = v5[44];
    v6 = v5[45];
    v9 = v5[42];
    v8 = v5[43];
    v11 = v5[38];
    v10 = v5[39];
    v12 = v5[34];
    v13 = v5[31];
    v14 = v5[26];
    v17 = v5[30];
    v18 = v5[27];

    v15 = v5[1];

    return v15();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD91A438, a1, 0);
  }
}

uint64_t sub_1DD91A438()
{
  v62 = *(v0 + 384);
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v54 = *(v0 + 280);
  v55 = *(v0 + 304);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v56 = *(v0 + 224);
  v57 = *(v0 + 232);
  v60 = *(v0 + 296);
  v61 = *(v0 + 184);
  v52 = v8;
  v53 = *(v0 + 176);
  v59 = *(v0 + 168);
  v58 = *(v0 + 160);
  *(v0 + 400) = sub_1DDA14140();
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8790], v5);
  sub_1DDA14DD0();
  (*(v6 + 8))(v4, v5);
  v9 = sub_1DDA14D60();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1DD90ADB4(v53, v8, &qword_1ECD82F60, &qword_1DDA18890);
  (*(v3 + 16))(v55, v2, v54);
  v10 = sub_1DD92BC10(&qword_1ECD82F88, type metadata accessor for Session);
  v11 = (*(v56 + 80) + 64) & ~*(v56 + 80);
  v12 = (v57 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v62;
  *(v13 + 3) = v10;
  *(v13 + 4) = v62;
  *(v13 + 5) = v58;
  *(v13 + 6) = v59;
  *(v13 + 7) = v61;
  sub_1DD914958(v52, &v13[v11], &qword_1ECD82F60, &qword_1DDA18890);
  (*(v3 + 32))(&v13[v12], v55, v54);
  swift_retain_n();

  sub_1DD927794(0, 0, v7, &unk_1DDA18928, v13);

  sub_1DDA14DE0();
  sub_1DD929A28(v62 + 312, v0 + 64);
  if (v61 >> 62)
  {
    if (*(v0 + 184) < 0)
    {
      v50 = *(v0 + 184);
    }

    v14 = sub_1DDA15190();
  }

  else
  {
    v14 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v63 = MEMORY[0x1E69E7CC0];
    v16 = sub_1DD9AF034(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v16, v17, v18);
    }

    v15 = v63;
    v19 = *(v0 + 200);
    if ((v61 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v21 = *(v0 + 208);
        v22 = *(v0 + 192);
        v23 = MEMORY[0x1E12B7F50](i, *(v0 + 184));
        (*(v19 + 16))(v21, v23 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, v22);
        swift_unknownObjectRelease();
        v25 = *(v63 + 16);
        v24 = *(v63 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1DD9AF034(v24 > 1, v25 + 1, 1);
        }

        v26 = *(v0 + 208);
        v27 = *(v0 + 192);
        *(v63 + 16) = v25 + 1;
        (*(v19 + 32))(v63 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v25, v26, v27);
      }
    }

    else
    {
      v28 = (*(v0 + 184) + 32);
      v29 = *(v19 + 16);
      do
      {
        v29(*(v0 + 216), *v28 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, *(v0 + 192));
        v31 = *(v63 + 16);
        v30 = *(v63 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1DD9AF034(v30 > 1, v31 + 1, 1);
        }

        v32 = *(v0 + 216);
        v33 = *(v0 + 192);
        *(v63 + 16) = v31 + 1;
        (*(v19 + 32))(v63 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v31, v32, v33);
        ++v28;
        --v14;
      }

      while (v14);
    }
  }

  v34 = *(v0 + 392);
  v36 = *(v0 + 336);
  v35 = *(v0 + 344);
  v37 = *(v0 + 184);

  v38 = sub_1DD927A40(v15, v37);
  sub_1DD8FEEB0((v0 + 64), v0 + 16);
  *(v0 + 56) = v38;
  sub_1DD914A28(v0 + 16, v36);
  sub_1DD91692C(v0 + 16);
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 344);
  v39 = *(v0 + 352);
  v41 = *(v0 + 328);
  v42 = *(v0 + 336);
  v44 = *(v0 + 312);
  v43 = *(v0 + 320);
  v45 = *(v0 + 280);
  v46 = *(v0 + 288);
  v47 = sub_1DDA14810();
  v48 = __swift_project_value_buffer(v47, qword_1ECDA2110);
  sub_1DD91DE3C("RegisterDocumentsStream", 23, 2, v48, v39);

  v49 = *(v41 + 8);
  *(v0 + 408) = v49;
  *(v0 + 416) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v42, v43);
  (*(v46 + 8))(v44, v45);
  v49(v40, v43);
  v16 = sub_1DD91AA3C;
  v17 = 0;
  v18 = 0;

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DD91AA3C()
{
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[40];
  sub_1DDA14E10();
  v2(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v8 = *(v7 - 8);
  (*(v8 + 56))(v4, 0, 1, v7);
  swift_beginAccess();
  sub_1DD90AE1C(v4, v3, &qword_1ECD82F68, &qword_1DDA18898);
  swift_beginAccess();
  if ((*(v8 + 48))(v3, 1, v7))
  {
    v9 = v0[50];
    v10 = v0[48];
    v11 = v0[19];
    swift_endAccess();

    (*(*(v9 - 8) + 56))(v11, 1, 1, v9);
    v13 = v0[44];
    v12 = v0[45];
    v15 = v0[42];
    v14 = v0[43];
    v17 = v0[38];
    v16 = v0[39];
    v18 = v0[34];
    v20 = v0[30];
    v19 = v0[31];
    v21 = v0[27];
    v28 = v0[26];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = *(MEMORY[0x1E69E87B0] + 4);
    v25 = swift_task_alloc();
    v0[53] = v25;
    *v25 = v0;
    v25[1] = sub_1DD91ACF4;
    v26 = v0[46];
    v27 = v0[19];

    return MEMORY[0x1EEE6DB98](v27, v7);
  }
}

uint64_t sub_1DD91ACF4()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_1DD91AF04;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1DD91AE10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD91AE10()
{
  v1 = v0[48];

  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[34];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[27];
  v14 = v0[26];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD91AF04()
{
  v1 = v0[48];
  swift_endAccess();

  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[34];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[27];
  v14 = v0[26];
  v15 = v0[54];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD91B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[196] = v7;
  v8[195] = a7;
  v8[194] = a6;
  v8[193] = a5;
  v8[192] = a4;
  v8[191] = a3;
  v8[190] = a2;
  v8[189] = a1;
  v9 = sub_1DDA136B0();
  v8[197] = v9;
  v10 = *(v9 - 8);
  v8[198] = v10;
  v11 = *(v10 + 64) + 15;
  v8[199] = swift_task_alloc();
  v12 = sub_1DDA13840();
  v8[200] = v12;
  v13 = *(v12 - 8);
  v8[201] = v13;
  v14 = *(v13 + 64) + 15;
  v8[202] = swift_task_alloc();
  v15 = sub_1DDA13830();
  v8[203] = v15;
  v16 = *(v15 - 8);
  v8[204] = v16;
  v17 = *(v16 + 64) + 15;
  v8[205] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v8[206] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v8[207] = swift_task_alloc();
  v8[208] = swift_task_alloc();
  v20 = sub_1DDA13680();
  v8[209] = v20;
  v21 = *(v20 - 8);
  v8[210] = v21;
  v22 = *(v21 + 64) + 15;
  v8[211] = swift_task_alloc();
  v8[212] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v8[213] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v8[214] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v8[215] = swift_task_alloc();
  v26 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v8[216] = v26;
  v27 = *(v26 - 8);
  v8[217] = v27;
  v28 = *(v27 + 64) + 15;
  v8[218] = swift_task_alloc();
  v8[219] = swift_task_alloc();
  v8[220] = swift_task_alloc();
  v8[221] = swift_task_alloc();
  v8[222] = swift_task_alloc();
  v8[223] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD91B358, 0, 0);
}

uint64_t sub_1DD91B358()
{
  v1 = *(*(v0 + 1568) + 120);
  *(v0 + 1792) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DD91B37C, v1, 0);
}

uint64_t sub_1DD91B37C()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1528);
  swift_beginAccess();
  v4 = *(v1 + 112);

  *(v0 + 553) = sub_1DD9261C0(v3, v2, v4) & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DD91B430, 0, 0);
}

uint64_t sub_1DD91B430()
{
  v63 = v0;
  if (*(v0 + 553))
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 1536);
    v2 = sub_1DDA14810();
    __swift_project_value_buffer(v2, qword_1ECDA20E0);

    v3 = sub_1DDA147F0();
    v4 = sub_1DDA14EE0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1536);
      v6 = *(v0 + 1528);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v61 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1DD93FA54(v6, v5, &v61);
      _os_log_impl(&dword_1DD8F8000, v3, v4, "Client attempted to use expired session %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12B8CE0](v8, -1, -1);
      MEMORY[0x1E12B8CE0](v7, -1, -1);
    }

    v9 = *(v0 + 1640);
    v10 = *(v0 + 1632);
    v11 = *(v0 + 1624);
    v12 = *(v0 + 1616);
    v13 = *(v0 + 1608);
    v14 = *(v0 + 1600);
    v15 = *(v0 + 1536);
    v16 = *(v0 + 1528);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1DDA15070();

    v61 = 0xD000000000000022;
    v62 = 0x80000001DDA27340;
    MEMORY[0x1E12B7AB0](v16, v15);
    sub_1DDA13800();
    (*(v10 + 16))(v12, v9, v11);
    (*(v13 + 104))(v12, *MEMORY[0x1E69DA4A0], v14);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    (*(v13 + 16))(v17, v12, v14);
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    v18 = *(v0 + 1784);
    v19 = *(v0 + 1776);
    v20 = *(v0 + 1768);
    v21 = *(v0 + 1760);
    v22 = *(v0 + 1752);
    v23 = *(v0 + 1744);
    v24 = *(v0 + 1720);
    v25 = *(v0 + 1704);
    v26 = *(v0 + 1696);
    v27 = *(v0 + 1688);
    v54 = *(v0 + 1664);
    v55 = *(v0 + 1656);
    v56 = *(v0 + 1640);
    v57 = *(v0 + 1616);
    v58 = *(v0 + 1592);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v30 = *(v0 + 1568);
    v31 = *(v0 + 1560);
    v32 = *(v0 + 1536);
    v33 = *(v0 + 1528);
    v34 = *(v0 + 1520);
    v35 = *(v0 + 1512);
    v59 = *(v0 + 1704);
    v60 = v35;
    v36 = swift_allocObject();
    *(v0 + 1800) = v36;
    v36[2] = v33;
    v36[3] = v32;
    v36[4] = v30;
    v36[5] = v35;
    v36[6] = v34;
    *(v0 + 572) = *(v31 + 32);
    *(v0 + 554) = *(v31 + 36);
    v37 = __swift_project_boxed_opaque_existential_1((v31 + 40), *(v31 + 64));
    v39 = v37[3];
    v38 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v39);
    v40 = *(v38 + 8);

    *(v0 + 1808) = v40(v39, v38);
    *(v0 + 1816) = v41;
    sub_1DD928DF4(v31, v0 + 96);
    v42 = *(v30 + 128);
    *(v0 + 1824) = v42;
    v43 = sub_1DDA14D60();
    *(v0 + 1832) = v43;
    v44 = *(v43 - 8);
    v45 = *(v44 + 56);
    *(v0 + 1840) = v45;
    *(v0 + 1848) = (v44 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v45(v59, 1, 1, v43);
    *(v0 + 1856) = sub_1DDA14D40();

    v46 = sub_1DDA14D30();
    v47 = swift_allocObject();
    v48 = MEMORY[0x1E69E85E0];
    v47[2] = v46;
    v47[3] = v48;
    v47[4] = v60;
    v47[5] = v34;
    v47[6] = v42;
    v49 = sub_1DD982A18(0, 0, v59, &unk_1DDA18960, v47);
    *(v0 + 1864) = v49;
    v50 = *(MEMORY[0x1E69E86C0] + 4);
    v51 = swift_task_alloc();
    *(v0 + 1872) = v51;
    *v51 = v0;
    v51[1] = sub_1DD91BA14;
    v52 = *(v0 + 1720);
    v53 = *(v0 + 1712);

    return MEMORY[0x1EEE6DA40](v52, v49, v53);
  }
}

uint64_t sub_1DD91BA14()
{
  v1 = *(*v0 + 1872);
  v2 = *(*v0 + 1864);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD91BB2C, 0, 0);
}

uint64_t sub_1DD91BB2C()
{
  v362 = v0;
  v1 = *(v0 + 1720);
  v359 = v0;
  if ((*(*(v0 + 1736) + 48))(v1, 1, *(v0 + 1728)) == 1)
  {
    sub_1DD90D378(v1, &qword_1ECD82FA0, &qword_1DDA18948);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v2 = (v0 + 496);
    v3 = *(v0 + 1536);
    v4 = *(v0 + 1520);
    v5 = sub_1DDA14810();
    __swift_project_value_buffer(v5, qword_1ECDA20E0);

    v6 = sub_1DDA147F0();
    v7 = sub_1DDA14F00();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 1536);
      v9 = *(v0 + 1528);
      v10 = *(v0 + 1520);
      v11 = *(v0 + 1512);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v361 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1DD93FA54(v9, v8, &v361);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1DD93FA54(v11, v10, &v361);
      _os_log_impl(&dword_1DD8F8000, v6, v7, "New session with localID:%s and groupID:%s. Remote session will be created lazily.", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v13, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    v313 = *(v0 + 1824);
    v352 = *(v0 + 1816);
    log = *(v0 + 1808);
    v346 = *(v0 + 1800);
    v14 = *(v0 + 1592);
    v15 = *(v0 + 1584);
    v16 = *(v0 + 1576);
    v17 = *(v0 + 1568);
    v18 = *(v0 + 1536);
    v325 = *(v0 + 1520);
    v332 = *(v0 + 1528);
    v319 = *(v0 + 1512);
    sub_1DDA136A0();
    v19 = sub_1DDA13690();
    v303 = v20;
    v309 = v19;
    (*(v15 + 8))(v14, v16);
    sub_1DD929A28(v17 + 80, v0 + 912);
    sub_1DD928DF4(v0 + 96, v0 + 176);
    sub_1DD929A8C(v17 + 16, v2);
    v21 = *(v0 + 936);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 912, v21);
    v23 = *(v21 - 8);
    v24 = *(v23 + 64) + 15;
    v25 = swift_task_alloc();
    (*(v23 + 16))(v25, v22, v21);
    *(v0 + 896) = &type metadata for ChatGPTProvider;
    *(v0 + 904) = &off_1F58EF288;
    v26 = swift_allocObject();
    *(v0 + 872) = v26;
    v28 = *(v25 + 16);
    v27 = *(v25 + 32);
    v29 = *v25;
    *(v26 + 64) = *(v25 + 48);
    *(v26 + 32) = v28;
    *(v26 + 48) = v27;
    *(v26 + 16) = v29;
    type metadata accessor for Session();
    v30 = swift_allocObject();
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 872, &type metadata for ChatGPTProvider);
    v32 = off_1F58EF260;
    v33 = *(off_1F58EF260 + 8) + 15;
    v34 = swift_task_alloc();
    v32[2](v34, v31, &type metadata for ChatGPTProvider);
    *(v359 + 856) = &type metadata for ChatGPTProvider;
    *(v359 + 864) = &off_1F58EF288;
    v35 = swift_allocObject();
    *(v359 + 832) = v35;
    v37 = *(v34 + 16);
    v36 = *(v34 + 32);
    v38 = *v34;
    *(v35 + 64) = *(v34 + 48);
    *(v35 + 32) = v37;
    *(v35 + 48) = v36;
    *(v35 + 16) = v38;

    swift_defaultActor_initialize();
    sub_1DD9291B0(v359 + 96);
    *(v30 + 112) = v319;
    *(v30 + 120) = v325;
    *(v30 + 128) = v332;
    *(v30 + 136) = v18;
    *(v30 + 144) = v309;
    *(v30 + 152) = v303;
    *(v30 + 160) = log;
    *(v30 + 168) = v352;
    sub_1DD8FEEB0((v359 + 832), v30 + 176);
    v39 = *(v359 + 176);
    *(v30 + 232) = *(v359 + 192);
    v40 = *(v359 + 224);
    *(v30 + 248) = *(v359 + 208);
    v41 = *(v359 + 240);
    *(v30 + 264) = v40;
    *(v30 + 280) = v41;
    *(v30 + 216) = v39;
    v42 = v2[1];
    *(v30 + 296) = *v2;
    *(v30 + 312) = v42;
    *(v30 + 328) = v2[2];
    *(v30 + 337) = *(v2 + 41);
    *(v30 + 360) = v313;
    *(v30 + 368) = &unk_1DDA18958;
    v353 = v30;
    *(v30 + 376) = v346;

    __swift_destroy_boxed_opaque_existential_1((v359 + 872));
    v43 = v359;

    __swift_destroy_boxed_opaque_existential_1((v359 + 912));

    goto LABEL_50;
  }

  v44 = *(v0 + 1784);
  v45 = *(v0 + 1552);
  sub_1DD929B38(v1, v44);
  v46 = *(v44 + 56);
  if (!v46)
  {
    if (!v45)
    {
      goto LABEL_12;
    }

LABEL_20:
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v355 = (v0 + 576);
    v91 = sub_1DDA14810();
    __swift_project_value_buffer(v91, qword_1ECDA20E0);
    v92 = sub_1DDA147F0();
    v93 = sub_1DDA14EE0();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1DD8F8000, v92, v93, "Existing session accessed with different credentials. New remote session will be created.", v94, 2u);
      MEMORY[0x1E12B8CE0](v94, -1, -1);
    }

    v95 = *(v0 + 1856);
    v96 = *(v0 + 1848);
    v97 = *(v0 + 1840);
    v98 = *(v0 + 1832);
    v99 = *(v0 + 1824);
    v334 = *(v359 + 1816);
    v327 = *(v359 + 1808);
    logb = *(v359 + 1800);
    v347 = *(v359 + 1784);
    v100 = *(v359 + 1704);
    v101 = *(v359 + 1592);
    v282 = *(v359 + 1584);
    v286 = *(v359 + 1576);
    v290 = *(v359 + 1568);
    v321 = *(v359 + 1536);
    v315 = *(v359 + 1528);
    v102 = *(v359 + 1520);
    v103 = *(v359 + 1512);

    v97(v100, 1, 1, v98);

    v305 = v99;

    v104 = sub_1DDA14D30();
    v105 = swift_allocObject();
    v106 = MEMORY[0x1E69E85E0];
    v105[2] = v104;
    v105[3] = v106;
    v105[4] = v103;
    v105[5] = v102;
    v105[6] = v99;
    sub_1DD982718(0, 0, v100, &unk_1DDA18968, v105);

    sub_1DDA136A0();
    v107 = sub_1DDA13690();
    v294 = v108;
    v299 = v107;
    (*(v282 + 8))(v101, v286);
    sub_1DD929A28(v290 + 80, v359 + 952);
    sub_1DD928DF4(v359 + 96, v359 + 256);
    sub_1DD929A8C(v290 + 16, v355);
    v109 = *(v359 + 976);
    v110 = __swift_mutable_project_boxed_opaque_existential_1(v359 + 952, v109);
    v111 = *(v109 - 8);
    v112 = *(v111 + 64) + 15;
    v113 = swift_task_alloc();
    (*(v111 + 16))(v113, v110, v109);
    *(v359 + 1016) = &type metadata for ChatGPTProvider;
    *(v359 + 1024) = &off_1F58EF288;
    v114 = swift_allocObject();
    *(v359 + 992) = v114;
    v116 = *(v113 + 16);
    v115 = *(v113 + 32);
    v117 = *v113;
    *(v114 + 64) = *(v113 + 48);
    *(v114 + 32) = v116;
    *(v114 + 48) = v115;
    *(v114 + 16) = v117;
    type metadata accessor for Session();
    v118 = swift_allocObject();
    v119 = __swift_mutable_project_boxed_opaque_existential_1(v359 + 992, &type metadata for ChatGPTProvider);
    v120 = off_1F58EF260;
    v121 = *(off_1F58EF260 + 8) + 15;
    v122 = swift_task_alloc();
    v123 = v119;
    v43 = v359;
    v120[2](v122, v123, &type metadata for ChatGPTProvider);
    *(v359 + 1056) = &type metadata for ChatGPTProvider;
    *(v359 + 1064) = &off_1F58EF288;
    v124 = swift_allocObject();
    *(v359 + 1032) = v124;
    v126 = *(v122 + 16);
    v125 = *(v122 + 32);
    v127 = *v122;
    *(v124 + 64) = *(v122 + 48);
    *(v124 + 32) = v126;
    *(v124 + 48) = v125;
    *(v124 + 16) = v127;

    swift_defaultActor_initialize();
    sub_1DD9291B0(v359 + 96);
    *(v118 + 112) = v103;
    *(v118 + 120) = v102;
    *(v118 + 128) = v315;
    *(v118 + 136) = v321;
    *(v118 + 144) = v299;
    *(v118 + 152) = v294;
    *(v118 + 160) = v327;
    *(v118 + 168) = v334;
    sub_1DD8FEEB0((v359 + 1032), v118 + 176);
    v128 = *(v359 + 256);
    *(v118 + 232) = *(v359 + 272);
    v129 = *(v359 + 304);
    *(v118 + 248) = *(v359 + 288);
    v130 = *(v359 + 320);
    *(v118 + 264) = v129;
    *(v118 + 280) = v130;
    *(v118 + 216) = v128;
    v131 = v355[1];
    *(v118 + 296) = *v355;
    *(v118 + 312) = v131;
    *(v118 + 328) = v355[2];
    *(v118 + 337) = *(v355 + 41);
    *(v118 + 360) = v305;
    *(v118 + 368) = &unk_1DDA18958;
    v353 = v118;
    *(v118 + 376) = logb;

    __swift_destroy_boxed_opaque_existential_1((v359 + 992));

    v90 = (v359 + 952);
    goto LABEL_48;
  }

  if (!v45 || (*(v44 + 48) != *(v0 + 1544) || v46 != *(v0 + 1552)) && (sub_1DDA15440() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v47 = *(v0 + 1784);
  v48 = *(v0 + 554);
  if (*(v47 + 68))
  {
    if (!*(v0 + 554))
    {
LABEL_14:
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v354 = (v0 + 640);
      v49 = sub_1DDA14810();
      __swift_project_value_buffer(v49, qword_1ECDA20E0);
      v50 = sub_1DDA147F0();
      v51 = sub_1DDA14EE0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DD8F8000, v50, v51, "Existing session accessed with different user account. New remote session will be created.", v52, 2u);
        MEMORY[0x1E12B8CE0](v52, -1, -1);
      }

      v53 = *(v0 + 1856);
      v54 = *(v0 + 1848);
      v55 = *(v0 + 1840);
      v56 = *(v0 + 1832);
      v57 = *(v0 + 1824);
      v333 = *(v359 + 1816);
      v326 = *(v359 + 1808);
      loga = *(v359 + 1800);
      v347 = *(v359 + 1784);
      v58 = *(v359 + 1704);
      v59 = *(v359 + 1592);
      v281 = *(v359 + 1584);
      v285 = *(v359 + 1576);
      v289 = *(v359 + 1568);
      v320 = *(v359 + 1536);
      v314 = *(v359 + 1528);
      v60 = *(v359 + 1520);
      v61 = *(v359 + 1512);

      v55(v58, 1, 1, v56);

      v304 = v57;

      v62 = sub_1DDA14D30();
      v63 = swift_allocObject();
      v64 = MEMORY[0x1E69E85E0];
      v63[2] = v62;
      v63[3] = v64;
      v63[4] = v61;
      v63[5] = v60;
      v63[6] = v57;
      sub_1DD982718(0, 0, v58, &unk_1DDA18970, v63);

      sub_1DDA136A0();
      v65 = sub_1DDA13690();
      v293 = v66;
      v298 = v65;
      (*(v281 + 8))(v59, v285);
      sub_1DD929A28(v289 + 80, v359 + 1072);
      sub_1DD928DF4(v359 + 96, v359 + 336);
      sub_1DD929A8C(v289 + 16, v354);
      v67 = *(v359 + 1096);
      v68 = __swift_mutable_project_boxed_opaque_existential_1(v359 + 1072, v67);
      v69 = *(v67 - 8);
      v70 = *(v69 + 64) + 15;
      v71 = swift_task_alloc();
      (*(v69 + 16))(v71, v68, v67);
      *(v359 + 1136) = &type metadata for ChatGPTProvider;
      *(v359 + 1144) = &off_1F58EF288;
      v72 = swift_allocObject();
      *(v359 + 1112) = v72;
      v74 = *(v71 + 16);
      v73 = *(v71 + 32);
      v75 = *v71;
      *(v72 + 64) = *(v71 + 48);
      *(v72 + 32) = v74;
      *(v72 + 48) = v73;
      *(v72 + 16) = v75;
      type metadata accessor for Session();
      v76 = swift_allocObject();
      v77 = __swift_mutable_project_boxed_opaque_existential_1(v359 + 1112, &type metadata for ChatGPTProvider);
      v78 = off_1F58EF260;
      v79 = *(off_1F58EF260 + 8) + 15;
      v80 = swift_task_alloc();
      v81 = v77;
      v43 = v359;
      v78[2](v80, v81, &type metadata for ChatGPTProvider);
      *(v359 + 1176) = &type metadata for ChatGPTProvider;
      *(v359 + 1184) = &off_1F58EF288;
      v82 = swift_allocObject();
      *(v359 + 1152) = v82;
      v84 = *(v80 + 16);
      v83 = *(v80 + 32);
      v85 = *v80;
      *(v82 + 64) = *(v80 + 48);
      *(v82 + 32) = v84;
      *(v82 + 48) = v83;
      *(v82 + 16) = v85;

      swift_defaultActor_initialize();
      sub_1DD9291B0(v359 + 96);
      *(v76 + 112) = v61;
      *(v76 + 120) = v60;
      *(v76 + 128) = v314;
      *(v76 + 136) = v320;
      *(v76 + 144) = v298;
      *(v76 + 152) = v293;
      *(v76 + 160) = v326;
      *(v76 + 168) = v333;
      sub_1DD8FEEB0((v359 + 1152), v76 + 176);
      v86 = *(v359 + 336);
      *(v76 + 232) = *(v359 + 352);
      v87 = *(v359 + 384);
      *(v76 + 248) = *(v359 + 368);
      v88 = *(v359 + 400);
      *(v76 + 264) = v87;
      *(v76 + 280) = v88;
      *(v76 + 216) = v86;
      v89 = v354[1];
      *(v76 + 296) = *v354;
      *(v76 + 312) = v89;
      *(v76 + 328) = v354[2];
      *(v76 + 337) = *(v354 + 41);
      *(v76 + 360) = v304;
      *(v76 + 368) = &unk_1DDA18958;
      v353 = v76;
      *(v76 + 376) = loga;

      __swift_destroy_boxed_opaque_existential_1((v359 + 1112));

      v90 = (v359 + 1072);
LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(v90);
LABEL_49:

      sub_1DD929B9C(v347, type metadata accessor for SessionRegistry.SessionInfo);
LABEL_50:
      v238 = v43[223];
      v239 = v43[222];
      v240 = v43[221];
      v241 = v43[220];
      v242 = v43[219];
      v243 = v43[218];
      v244 = v43[215];
      v245 = v43[213];
      v246 = v43;
      v247 = v43[212];
      v248 = v246[211];
      v330 = v246[208];
      v338 = v246[207];
      logf = v246[205];
      v351 = v246[202];
      v360 = v246[199];

      v249 = v246[1];

      return v249(v353);
    }
  }

  else
  {
    if (*(v47 + 64) != *(v0 + 572))
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_14;
    }
  }

  v132 = *(v0 + 1728);
  v133 = *(v0 + 1680);
  v134 = *(v0 + 1672);
  v135 = *(v0 + 1664);
  sub_1DD90ADB4(v47 + *(v132 + 36), v135, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v133 + 48))(v135, 1, v134) == 1)
  {
    v136 = *(v0 + 1664);
    sub_1DD9291B0(v0 + 96);
    sub_1DD90D378(v136, &qword_1ECD82838, &unk_1DDA185F0);
LABEL_42:
    v336 = v132;
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v357 = (v0 + 704);
    v162 = *(v0 + 1784);
    v163 = *(v0 + 1776);
    v164 = *(v0 + 1768);
    v165 = *(v0 + 1760);
    v166 = *(v0 + 1752);
    v167 = *(v0 + 1744);
    v168 = *(v0 + 1552);
    logc = *(v0 + 1536);
    v349 = *(v0 + 1816);
    v169 = *(v0 + 1520);
    v170 = sub_1DDA14810();
    __swift_project_value_buffer(v170, qword_1ECDA20E0);
    sub_1DD929BFC(v162, v163);
    sub_1DD929BFC(v162, v164);
    sub_1DD929BFC(v162, v165);
    sub_1DD929BFC(v162, v166);
    sub_1DD929BFC(v162, v167);

    v171 = sub_1DDA147F0();
    v172 = sub_1DDA14F00();

    if (os_log_type_enabled(v171, v172))
    {
      v350 = v172;
      v173 = *(v0 + 1816);
      v283 = *(v0 + 554);
      v279 = *(v0 + 572);
      v287 = *(v0 + 1808);
      v291 = *(v0 + 1776);
      v295 = *(v0 + 1768);
      v300 = *(v0 + 1760);
      v306 = *(v0 + 1752);
      v310 = *(v0 + 1656);
      v316 = *(v0 + 1744);
      v322 = *(v0 + 1648);
      logd = v171;
      v174 = *(v0 + 1552);
      v175 = *(v0 + 1544);
      v176 = *(v0 + 1536);
      v177 = *(v0 + 1528);
      v178 = *(v0 + 1520);
      v179 = *(v0 + 1512);
      v180 = swift_slowAlloc();
      v328 = swift_slowAlloc();
      v361 = v328;
      *v180 = 136317442;
      *(v180 + 4) = sub_1DD93FA54(v179, v178, &v361);
      *(v180 + 12) = 2080;
      *(v180 + 14) = sub_1DD93FA54(v177, v176, &v361);
      *(v180 + 22) = 2080;
      *(v0 + 1496) = v175;
      *(v0 + 1504) = v174;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
      v181 = sub_1DDA14B70();
      v183 = sub_1DD93FA54(v181, v182, &v361);

      *(v180 + 24) = v183;
      *(v180 + 32) = 2080;
      *(v0 + 564) = v279;
      *(v0 + 568) = v283;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FB0, &qword_1DDA18980);
      v184 = sub_1DDA14B70();
      v186 = sub_1DD93FA54(v184, v185, &v361);

      *(v180 + 34) = v186;
      *(v180 + 42) = 2080;

      v187 = sub_1DD93FA54(v287, v173, &v361);

      *(v180 + 44) = v187;
      *(v180 + 52) = 2080;
      v188 = *(v291 + 32);
      v189 = *(v291 + 40);

      sub_1DD929B9C(v291, type metadata accessor for SessionRegistry.SessionInfo);
      v190 = sub_1DD93FA54(v188, v189, &v361);

      *(v180 + 54) = v190;
      *(v180 + 62) = 2080;
      v191 = *(v295 + 16);
      v192 = *(v295 + 24);

      sub_1DD929B9C(v295, type metadata accessor for SessionRegistry.SessionInfo);
      v193 = sub_1DD93FA54(v191, v192, &v361);

      *(v180 + 64) = v193;
      *(v180 + 72) = 2080;
      v194 = *(v300 + 56);
      *(v0 + 1480) = *(v300 + 48);
      *(v0 + 1488) = v194;

      v195 = sub_1DDA14B70();
      v197 = v196;
      sub_1DD929B9C(v300, type metadata accessor for SessionRegistry.SessionInfo);
      v198 = sub_1DD93FA54(v195, v197, &v361);

      *(v180 + 74) = v198;
      *(v180 + 82) = 2080;
      v199 = *(v306 + 68);
      *(v0 + 556) = *(v306 + 64);
      *(v0 + 560) = v199;
      v200 = sub_1DDA14B70();
      v202 = v201;
      sub_1DD929B9C(v306, type metadata accessor for SessionRegistry.SessionInfo);
      v203 = sub_1DD93FA54(v200, v202, &v361);

      *(v180 + 84) = v203;
      *(v180 + 92) = 2080;
      sub_1DD90ADB4(v316 + *(v336 + 36), v310, &qword_1ECD82838, &unk_1DDA185F0);
      v204 = sub_1DDA14B70();
      v206 = v205;
      sub_1DD929B9C(v316, type metadata accessor for SessionRegistry.SessionInfo);
      v207 = sub_1DD93FA54(v204, v206, &v361);

      *(v180 + 94) = v207;
      _os_log_impl(&dword_1DD8F8000, logd, v350, "New local session with:\n  groupID:%s\n  localID:%s\n  credentialsID:%s\n  auditID:%s\n  clientID:%s\n\nAttaching to existing remote session:\n  userID:%s\n  remoteID:%s\n  credentialsID:%s\n  auditID:%s\n  expirationDate:%s", v180, 0x66u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v328, -1, -1);
      MEMORY[0x1E12B8CE0](v180, -1, -1);
    }

    else
    {
      v208 = *(v0 + 1776);
      v209 = *(v0 + 1768);
      v210 = *(v0 + 1760);
      v211 = *(v0 + 1752);
      v212 = *(v0 + 1744);

      sub_1DD929B9C(v212, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v211, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v210, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v209, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v208, type metadata accessor for SessionRegistry.SessionInfo);
    }

    v329 = *(v0 + 1808);
    v337 = *(v0 + 1816);
    loge = *(v0 + 1800);
    v347 = *(v0 + 1784);
    v213 = *(v0 + 1568);
    v214 = *(v0 + 1560);
    v317 = *(v0 + 1528);
    v323 = *(v0 + 1536);
    v296 = *(v0 + 1824);
    v301 = *(v0 + 1512);
    v215 = *(v347 + 40);
    v307 = *(v0 + 1520);
    v311 = *(v347 + 32);
    sub_1DD929A28(v213 + 80, v0 + 1192);
    sub_1DD928DF4(v214, v0 + 416);
    sub_1DD929A8C(v213 + 16, v357);
    v216 = *(v0 + 1216);
    v217 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1192, v216);
    v218 = *(v216 - 8);
    v219 = *(v218 + 64) + 15;
    v220 = swift_task_alloc();
    (*(v218 + 16))(v220, v217, v216);
    *(v0 + 1256) = &type metadata for ChatGPTProvider;
    *(v0 + 1264) = &off_1F58EF288;
    v221 = swift_allocObject();
    *(v0 + 1232) = v221;
    v223 = *(v220 + 16);
    v222 = *(v220 + 32);
    v224 = *v220;
    *(v221 + 64) = *(v220 + 48);
    *(v221 + 32) = v223;
    *(v221 + 48) = v222;
    *(v221 + 16) = v224;
    type metadata accessor for Session();
    v225 = swift_allocObject();
    v226 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1232, &type metadata for ChatGPTProvider);
    v227 = off_1F58EF260;
    v228 = *(off_1F58EF260 + 8) + 15;
    v229 = swift_task_alloc();
    v227[2](v229, v226, &type metadata for ChatGPTProvider);
    *(v359 + 1296) = &type metadata for ChatGPTProvider;
    *(v359 + 1304) = &off_1F58EF288;
    v230 = swift_allocObject();
    *(v359 + 1272) = v230;
    v232 = *(v229 + 16);
    v231 = *(v229 + 32);
    v233 = *v229;
    *(v230 + 64) = *(v229 + 48);
    *(v230 + 32) = v232;
    *(v230 + 48) = v231;
    *(v230 + 16) = v233;

    swift_defaultActor_initialize();
    *(v225 + 112) = v301;
    *(v225 + 120) = v307;
    *(v225 + 128) = v317;
    *(v225 + 136) = v323;
    *(v225 + 144) = v311;
    *(v225 + 152) = v215;
    *(v225 + 160) = v329;
    *(v225 + 168) = v337;
    sub_1DD8FEEB0((v359 + 1272), v225 + 176);
    v234 = *(v359 + 416);
    *(v225 + 232) = *(v359 + 432);
    v235 = *(v359 + 464);
    *(v225 + 248) = *(v359 + 448);
    v236 = *(v359 + 480);
    *(v225 + 264) = v235;
    *(v225 + 280) = v236;
    *(v225 + 216) = v234;
    v237 = v357[1];
    *(v225 + 296) = *v357;
    *(v225 + 312) = v237;
    *(v225 + 328) = v357[2];
    *(v225 + 337) = *(v357 + 41);
    *(v225 + 360) = v296;
    *(v225 + 368) = &unk_1DDA18958;
    v353 = v225;
    *(v225 + 376) = loge;

    __swift_destroy_boxed_opaque_existential_1((v359 + 1232));
    v43 = v359;

    v90 = (v359 + 1192);
    goto LABEL_48;
  }

  v137 = *(v0 + 1688);
  v138 = *(v0 + 1680);
  v139 = *(v0 + 1672);
  (*(v138 + 32))(*(v0 + 1696), *(v0 + 1664), v139);
  sub_1DDA13660();
  v140 = sub_1DDA13610();
  v141 = *(v138 + 8);
  *(v0 + 1880) = v141;
  *(v0 + 1888) = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v141(v137, v139);
  if ((v140 & 1) == 0)
  {
    v141(*(v0 + 1696), *(v0 + 1672));
    sub_1DD9291B0(v0 + 96);
    goto LABEL_42;
  }

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v335 = v141;
  v142 = sub_1DDA14810();
  __swift_project_value_buffer(v142, qword_1ECDA20E0);
  v143 = sub_1DDA147F0();
  v144 = sub_1DDA14F00();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 0;
    _os_log_impl(&dword_1DD8F8000, v143, v144, "Existing session has expired.", v145, 2u);
    MEMORY[0x1E12B8CE0](v145, -1, -1);
  }

  v146 = *(v0 + 1856);
  v147 = *(v0 + 1848);
  v148 = *(v0 + 1840);
  v149 = *(v0 + 1832);
  v150 = *(v0 + 1824);
  v151 = *(v0 + 1784);
  v152 = *(v0 + 1704);
  v348 = *(v0 + 1536);
  v356 = *(v0 + 1528);
  v153 = *(v0 + 1520);
  v154 = *(v0 + 1512);

  v148(v152, 1, 1, v149);

  v155 = sub_1DDA14D30();
  v156 = swift_allocObject();
  v157 = MEMORY[0x1E69E85E0];
  v156[2] = v155;
  v156[3] = v157;
  v156[4] = v154;
  v156[5] = v153;
  v156[6] = v150;
  sub_1DD982718(0, 0, v152, &unk_1DDA18988, v156);

  if (*v151 != v356 || v151[1] != v348)
  {
    v158 = *(v359 + 1536);
    v159 = *(v359 + 1528);
    if ((sub_1DDA15440() & 1) == 0)
    {
      v288 = *(v359 + 1824);
      v358 = *(v359 + 1816);
      v324 = *(v359 + 1808);
      v331 = *(v359 + 1800);
      v347 = *(v359 + 1784);
      v297 = *(v359 + 1672);
      v302 = *(v359 + 1696);
      v250 = *(v359 + 1592);
      v251 = *(v359 + 1584);
      v252 = *(v359 + 1576);
      v253 = *(v359 + 1568);
      v312 = *(v359 + 1528);
      v318 = *(v359 + 1536);
      v308 = *(v359 + 1520);
      v292 = *(v359 + 1512);
      sub_1DDA136A0();
      v254 = sub_1DDA13690();
      v280 = v255;
      v284 = v254;
      (*(v251 + 8))(v250, v252);
      sub_1DD929A28(v253 + 80, v359 + 1392);
      sub_1DD928DF4(v359 + 96, v359 + 16);
      sub_1DD929A8C(v253 + 16, v359 + 768);
      v256 = *(v359 + 1416);
      v257 = __swift_mutable_project_boxed_opaque_existential_1(v359 + 1392, v256);
      v258 = *(v256 - 8);
      v259 = *(v258 + 64) + 15;
      v260 = swift_task_alloc();
      (*(v258 + 16))(v260, v257, v256);
      *(v359 + 1376) = &type metadata for ChatGPTProvider;
      *(v359 + 1384) = &off_1F58EF288;
      v261 = swift_allocObject();
      *(v359 + 1352) = v261;
      v263 = *(v260 + 16);
      v262 = *(v260 + 32);
      v264 = *v260;
      *(v261 + 64) = *(v260 + 48);
      *(v261 + 32) = v263;
      *(v261 + 48) = v262;
      *(v261 + 16) = v264;
      type metadata accessor for Session();
      v265 = swift_allocObject();
      v266 = __swift_mutable_project_boxed_opaque_existential_1(v359 + 1352, &type metadata for ChatGPTProvider);
      v267 = off_1F58EF260;
      v268 = *(off_1F58EF260 + 8) + 15;
      v269 = swift_task_alloc();
      v267[2](v269, v266, &type metadata for ChatGPTProvider);
      *(v359 + 1336) = &type metadata for ChatGPTProvider;
      *(v359 + 1344) = &off_1F58EF288;
      v270 = swift_allocObject();
      *(v359 + 1312) = v270;
      v272 = *(v269 + 16);
      v271 = *(v269 + 32);
      v273 = *v269;
      *(v270 + 64) = *(v269 + 48);
      *(v270 + 32) = v272;
      *(v270 + 48) = v271;
      *(v270 + 16) = v273;

      swift_defaultActor_initialize();
      v335(v302, v297);
      sub_1DD9291B0(v359 + 96);
      *(v265 + 112) = v292;
      *(v265 + 120) = v308;
      *(v265 + 128) = v312;
      *(v265 + 136) = v318;
      *(v265 + 144) = v284;
      *(v265 + 152) = v280;
      *(v265 + 160) = v324;
      *(v265 + 168) = v358;
      sub_1DD8FEEB0((v359 + 1312), v265 + 176);
      v274 = *(v359 + 16);
      *(v265 + 232) = *(v359 + 32);
      v275 = *(v359 + 64);
      *(v265 + 248) = *(v359 + 48);
      v276 = *(v359 + 80);
      *(v265 + 264) = v275;
      *(v265 + 280) = v276;
      *(v265 + 216) = v274;
      v277 = *(v359 + 784);
      *(v265 + 296) = *(v359 + 768);
      *(v265 + 312) = v277;
      *(v265 + 328) = *(v359 + 800);
      *(v265 + 337) = *(v359 + 809);
      *(v265 + 360) = v288;
      *(v265 + 368) = &unk_1DDA18958;
      v353 = v265;
      *(v265 + 376) = v331;

      __swift_destroy_boxed_opaque_existential_1((v359 + 1352));
      v43 = v359;

      __swift_destroy_boxed_opaque_existential_1((v359 + 1392));
      goto LABEL_49;
    }
  }

  v160 = *(v359 + 1816);
  v161 = *(v359 + 1792);
  sub_1DD9291B0(v359 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DD91DA50, v161, 0);
}

uint64_t sub_1DD91DA50()
{
  v6 = v0;
  v1 = v0[224];
  v2 = v0[192];
  v3 = v0[191];
  swift_beginAccess();

  sub_1DD9AFBD8(&v5, v3, v2);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD91DB04, 0, 0);
}

uint64_t sub_1DD91DB04()
{
  v26 = v0[235];
  v28 = v0[236];
  v24 = v0[225];
  v30 = v0[223];
  v22 = v0[212];
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[203];
  v5 = v0[202];
  v6 = v0[201];
  v7 = v0[200];
  sub_1DDA15070();

  sub_1DD92BC10(&qword_1ECD82FB8, MEMORY[0x1E6969530]);
  v8 = sub_1DDA15400();
  MEMORY[0x1E12B7AB0](v8);

  sub_1DDA13800();
  (*(v3 + 16))(v5, v2, v4);
  (*(v6 + 104))(v5, *MEMORY[0x1E69DA4A0], v7);
  sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
  swift_allocError();
  (*(v6 + 16))(v9, v5, v7);
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v26(v22, v1);
  sub_1DD929B9C(v30, type metadata accessor for SessionRegistry.SessionInfo);
  v10 = v0[223];
  v11 = v0[222];
  v12 = v0[221];
  v13 = v0[220];
  v14 = v0[219];
  v15 = v0[218];
  v16 = v0[215];
  v17 = v0[213];
  v18 = v0[212];
  v19 = v0[211];
  v23 = v0[208];
  v25 = v0[207];
  v27 = v0[205];
  v29 = v0[202];
  v31 = v0[199];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1DD91DE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v35 = a4;
  v40 = a3;
  v39 = a2;
  v41 = a5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  v5 = *(v42 - 8);
  v36 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v33 - v6;
  v33 = &v33 - v6;
  v8 = sub_1DDA14810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DDA14790();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  (*(v9 + 16))(v12, v35, v8);
  v34 = v19;
  sub_1DDA14770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  v20 = swift_allocBox();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  (*(v14 + 16))(v17, v19, v13);
  v25 = v5;
  (*(v5 + 16))(v7, v37, v42);
  v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v5 + 80) + v27 + 17) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  *(v29 + 24) = v24;
  (*(v14 + 32))(v29 + v26, v17, v13);
  v30 = v29 + v27;
  v31 = v39;
  *v30 = v38;
  *(v30 + 8) = v31;
  *(v30 + 16) = v40;
  (*(v25 + 32))(v29 + v28, v33, v42);
  sub_1DDA14140();

  sub_1DDA14E30();
  (*(v14 + 8))(v34, v13);
}

uint64_t sub_1DD91E228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v36 = a4;
  v42 = a3;
  v41 = a2;
  v43 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  v33 = v5;
  v37 = *(v5 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v34 = &v32 - v6;
  v8 = sub_1DDA14810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DDA14790();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  (*(v9 + 16))(v12, v36, v8);
  v35 = v18;
  sub_1DDA14770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  v36 = swift_allocBox();
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v23, v18, v13);
  v24 = v37;
  (*(v37 + 16))(v7, v39, v5);
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v24 + 80) + v26 + 17) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v36;
  *(v28 + 24) = v22;
  (*(v14 + 32))(v28 + v25, v23, v13);
  v29 = v28 + v26;
  v30 = v41;
  *v29 = v40;
  *(v29 + 8) = v30;
  *(v29 + 16) = v42;
  (*(v24 + 32))(v28 + v27, v34, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  sub_1DDA14E30();
  (*(v14 + 8))(v35, v13);
}

uint64_t sub_1DD91E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 504) = v31;
  *(v8 + 488) = v30;
  *(v8 + 472) = v29;
  *(v8 + 456) = v28;
  *(v8 + 440) = v27;
  *(v8 + 424) = v26;
  *(v8 + 408) = v25;
  *(v8 + 392) = v24;
  *(v8 + 376) = a7;
  *(v8 + 384) = a8;
  *(v8 + 360) = a5;
  *(v8 + 368) = a6;
  *(v8 + 344) = a3;
  *(v8 + 352) = a4;
  *(v8 + 328) = a1;
  *(v8 + 336) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v10 = sub_1DDA13680();
  *(v8 + 520) = v10;
  v11 = *(v10 - 8);
  *(v8 + 528) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  *(v8 + 552) = v13;
  *(v8 + 560) = *(v13 + 64);
  *(v8 + 568) = swift_task_alloc();
  v14 = sub_1DDA13A80();
  *(v8 + 576) = v14;
  v15 = *(v14 - 8);
  *(v8 + 584) = v15;
  *(v8 + 592) = *(v15 + 64);
  *(v8 + 600) = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  *(v8 + 608) = v16;
  *(v8 + 616) = *(v16 + 64);
  *(v8 + 624) = swift_task_alloc();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  *(v8 + 632) = v17;
  *(v8 + 640) = *(v17 + 64);
  *(v8 + 648) = swift_task_alloc();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 656) = v18;
  *(v8 + 664) = *(v18 + 64);
  *(v8 + 672) = swift_task_alloc();
  v19 = sub_1DDA136B0();
  *(v8 + 680) = v19;
  v20 = *(v19 - 8);
  *(v8 + 688) = v20;
  *(v8 + 696) = *(v20 + 64);
  *(v8 + 704) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0) - 8) + 64) + 15;
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD91EA4C, 0, 0);
}

uint64_t sub_1DD91EA4C()
{
  v104 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  *(v0 + 728) = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  *(v0 + 736) = v5;
  *(v0 + 744) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  if (v1 == 1)
  {
    v6 = *(v0 + 704);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);
    v87 = v8;
    v9 = *(v0 + 672);
    v72 = *(v0 + 696);
    v73 = *(v0 + 664);
    v10 = *(v0 + 648);
    v76 = *(v0 + 640);
    v69 = *(v0 + 656);
    v70 = *(v0 + 632);
    v11 = *(v0 + 624);
    v84 = v11;
    v80 = *(v0 + 616);
    v71 = *(v0 + 608);
    v99 = *(v0 + 600);
    v78 = *(v0 + 592);
    v98 = *(v0 + 584);
    v12 = *(v0 + 576);
    v85 = v12;
    v100 = *(v0 + 568);
    v82 = *(v0 + 560);
    v74 = *(v0 + 552);
    v96 = *(v0 + 480);
    v97 = *(v0 + 488);
    v68 = *(v0 + 472);
    v95 = *(v0 + 464);
    v66 = *(v0 + 448);
    v67 = *(v0 + 456);
    v13 = *(v0 + 432);
    v65 = *(v0 + 440);
    v14 = *(v0 + 424);
    v101 = *(v0 + 416);
    v92 = *(v0 + 400);
    v93 = *(v0 + 408);
    v90 = *(v0 + 384);
    v91 = *(v0 + 392);
    v89 = *(v0 + 376);
    v102 = *(v0 + 368);
    v88 = *(v0 + 360);
    v86 = *(v0 + 352);
    v94 = *(v0 + 336);
    sub_1DD928DF4(*(v0 + 344), v0 + 16);
    (*(v7 + 16))(v6, v14, v8);
    sub_1DD90ADB4(v13, v9, &qword_1ECD82F60, &qword_1DDA18890);
    sub_1DD90ADB4(v65, v10, &qword_1ECD82FD0, &qword_1DDA189A8);
    sub_1DD90ADB4(v66, v11, &qword_1ECD82FC8, &qword_1DDA189A0);
    (*(v98 + 16))(v99, v67, v12);
    sub_1DD90ADB4(v68, v100, &qword_1ECD82FC0, &qword_1DDA18998);
    v15 = (*(v7 + 80) + 168) & ~*(v7 + 80);
    v16 = (v72 + *(v69 + 80) + v15) & ~*(v69 + 80);
    v17 = (v73 + *(v70 + 80) + v16) & ~*(v70 + 80);
    v18 = (v76 + *(v71 + 80) + v17) & ~*(v71 + 80);
    v77 = (v80 + *(v98 + 80) + v18) & ~*(v98 + 80);
    v81 = (v78 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + ((*(v74 + 80) + v81 + 8) & ~*(v74 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (*(v74 + 80) + v81 + 8) & ~*(v74 + 80);
    v19 = swift_allocObject();
    v20 = *(v0 + 16);
    *(v19 + 88) = *(v0 + 32);
    v21 = *(v0 + 64);
    *(v19 + 104) = *(v0 + 48);
    *(v19 + 120) = v21;
    *(v19 + 136) = *(v0 + 80);
    *(v0 + 752) = v19;
    *(v19 + 16) = v86;
    *(v19 + 24) = v88;
    *(v19 + 32) = v102;
    *(v19 + 40) = v89;
    *(v19 + 48) = v90;
    *(v19 + 56) = v91;
    *(v19 + 64) = v92;
    *(v19 + 72) = v20;
    *(v19 + 152) = v93;
    *(v19 + 160) = v101;
    (*(v7 + 32))(v19 + v15, v6, v87);
    sub_1DD914958(v9, v19 + v16, &qword_1ECD82F60, &qword_1DDA18890);
    sub_1DD914958(v10, v19 + v17, &qword_1ECD82FD0, &qword_1DDA189A8);
    sub_1DD914958(v84, v19 + v18, &qword_1ECD82FC8, &qword_1DDA189A0);
    (*(v98 + 32))(v19 + v77, v99, v85);
    *(v19 + v81) = v95;
    sub_1DD914958(v100, v19 + v75, &qword_1ECD82FC0, &qword_1DDA18998);
    *(v19 + v83) = v96;
    *(v19 + v79) = v97;
    *(v19 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v94;

    v22 = swift_task_alloc();
    *(v0 + 760) = v22;
    *v22 = v0;
    v22[1] = sub_1DD91F424;
    v23 = *(v0 + 344);

    return sub_1DD933F24();
  }

  else
  {
    v25 = *(v0 + 744);
    v26 = *(v0 + 736);
    v27 = *(v0 + 728);
    v28 = *(v0 + 720);
    swift_beginAccess();
    if (v26(v28, 1, v27))
    {
      swift_endAccess();
      *(v0 + 168) = 0;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      v29 = *(v0 + 536);
      v31 = *(v0 + 496);
      v30 = *(v0 + 504);
      sub_1DD90D378(v0 + 136, &qword_1ECD82FF8, &qword_1DDA18A18);
      sub_1DDA13670();
      sub_1DDA135E0();
      v33 = v32;
      sub_1DDA135E0();
      v35 = v33 - v34;
      swift_beginAccess();
      *(v0 + 320) = *(v31 + 16) / v35;
      sub_1DD92B3B4();
      v36 = sub_1DDA14A80();
      v38 = v37;
      if (qword_1ECD827B8 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 496);
      v40 = sub_1DDA14810();
      *(v0 + 792) = __swift_project_value_buffer(v40, qword_1ECDA2110);

      v41 = sub_1DDA147F0();
      v42 = sub_1DDA14F00();

      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v0 + 496);
      if (v43)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v103 = v46;
        *v45 = 134218498;
        *(v45 + 4) = v35;
        *(v45 + 12) = 2048;
        swift_beginAccess();
        *(v45 + 14) = *(v44 + 16);

        *(v45 + 22) = 2080;
        v47 = sub_1DD93FA54(v36, v38, &v103);

        *(v45 + 24) = v47;
        _os_log_impl(&dword_1DD8F8000, v41, v42, "#tokenperf: Received last token. Total: %f. %ld tokens at @ %s tokens per second", v45, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1E12B8CE0](v46, -1, -1);
        MEMORY[0x1E12B8CE0](v45, -1, -1);
      }

      else
      {
        v52 = *(v0 + 496);
      }

      v53 = *(v0 + 512);
      v55 = *(v0 + 360);
      v54 = *(v0 + 368);
      v56 = *(*(v0 + 352) + 128);
      v57 = sub_1DDA14D60();
      (*(*(v57 - 8) + 56))(v53, 1, 1, v57);
      sub_1DDA14D40();

      v58 = sub_1DDA14D30();
      v59 = swift_allocObject();
      v60 = MEMORY[0x1E69E85E0];
      v59[2] = v58;
      v59[3] = v60;
      v59[4] = v55;
      v59[5] = v54;
      v59[6] = v56;
      v61 = sub_1DD982718(0, 0, v53, &unk_1DDA18A30, v59);
      *(v0 + 800) = v61;
      v62 = *(MEMORY[0x1E69E86C0] + 4);
      v63 = swift_task_alloc();
      *(v0 + 808) = v63;
      *v63 = v0;
      v63[1] = sub_1DD92008C;
      v64 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA40](v63, v61, v64);
    }

    else
    {
      v48 = *(MEMORY[0x1E69E87B0] + 4);
      v49 = swift_task_alloc();
      *(v0 + 776) = v49;
      *v49 = v0;
      v49[1] = sub_1DD91F9A4;
      v50 = *(v0 + 728);
      v51 = *(v0 + 720);

      return MEMORY[0x1EEE6DB98](v0 + 136, v50);
    }
  }
}

uint64_t sub_1DD91F424()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v7 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = sub_1DD920338;
  }

  else
  {
    v5 = *(v2 + 752);

    v4 = sub_1DD91F540;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD91F540()
{
  v43 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  swift_beginAccess();
  if (v2(v4, 1, v3))
  {
    swift_endAccess();
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    v5 = *(v0 + 536);
    v7 = *(v0 + 496);
    v6 = *(v0 + 504);
    sub_1DD90D378(v0 + 136, &qword_1ECD82FF8, &qword_1DDA18A18);
    sub_1DDA13670();
    sub_1DDA135E0();
    v9 = v8;
    sub_1DDA135E0();
    v11 = v9 - v10;
    swift_beginAccess();
    *(v0 + 320) = *(v7 + 16) / v11;
    sub_1DD92B3B4();
    v12 = sub_1DDA14A80();
    v14 = v13;
    if (qword_1ECD827B8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 496);
    v16 = sub_1DDA14810();
    *(v0 + 792) = __swift_project_value_buffer(v16, qword_1ECDA2110);

    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14F00();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 496);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 134218498;
      *(v21 + 4) = v11;
      *(v21 + 12) = 2048;
      swift_beginAccess();
      *(v21 + 14) = *(v20 + 16);

      *(v21 + 22) = 2080;
      v23 = sub_1DD93FA54(v12, v14, &v42);

      *(v21 + 24) = v23;
      _os_log_impl(&dword_1DD8F8000, v17, v18, "#tokenperf: Received last token. Total: %f. %ld tokens at @ %s tokens per second", v21, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
    }

    else
    {
      v28 = *(v0 + 496);
    }

    v29 = *(v0 + 512);
    v31 = *(v0 + 360);
    v30 = *(v0 + 368);
    v32 = *(*(v0 + 352) + 128);
    v33 = sub_1DDA14D60();
    (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
    sub_1DDA14D40();

    v34 = sub_1DDA14D30();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v31;
    v35[5] = v30;
    v35[6] = v32;
    v37 = sub_1DD982718(0, 0, v29, &unk_1DDA18A30, v35);
    *(v0 + 800) = v37;
    v38 = *(MEMORY[0x1E69E86C0] + 4);
    v39 = swift_task_alloc();
    *(v0 + 808) = v39;
    *v39 = v0;
    v39[1] = sub_1DD92008C;
    v40 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v39, v37, v40);
  }

  else
  {
    v24 = *(MEMORY[0x1E69E87B0] + 4);
    v25 = swift_task_alloc();
    *(v0 + 776) = v25;
    *v25 = v0;
    v25[1] = sub_1DD91F9A4;
    v26 = *(v0 + 728);
    v27 = *(v0 + 720);

    return MEMORY[0x1EEE6DB98](v0 + 136, v26);
  }
}

uint64_t sub_1DD91F9A4()
{
  v2 = *(*v1 + 776);
  v5 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = sub_1DD920438;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1DD91FAC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD91FAC0()
{
  v61 = v2;
  if (*(v2 + 160))
  {
    v4 = *(v2 + 496);
    sub_1DD8FEEB0((v2 + 136), v2 + 96);
    swift_beginAccess();
    if (!*(v4 + 16))
    {
      v5 = *(v2 + 544);
      v6 = *(v2 + 504);
      sub_1DDA13670();
      sub_1DDA135E0();
      v3 = v7;
      sub_1DDA135E0();
      v9 = v8;
      if (qword_1ECD827B8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DDA14810();
      __swift_project_value_buffer(v10, qword_1ECDA2110);
      v11 = sub_1DDA147F0();
      v12 = sub_1DDA14F00();
      if (os_log_type_enabled(v11, v12))
      {
        v3 = v3 - v9;
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v3;
        _os_log_impl(&dword_1DD8F8000, v11, v12, "#tokenperf: Received first bytes back in %f", v13, 0xCu);
        MEMORY[0x1E12B8CE0](v13, -1, -1);
      }

      v0 = *(v2 + 544);
      v14 = *(v2 + 528);
      v1 = *(v2 + 520);

      (*(v14 + 8))(v0, v1);
    }

    v15 = *(v2 + 496);
    sub_1DD8FEEB0((v2 + 96), *(v2 + 328));
    swift_beginAccess();
    v16 = *(v15 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(*(v2 + 496) + 16) = v18;
      v19 = *(v2 + 712);
      v20 = *(v2 + 704);
      v21 = *(v2 + 672);
      v22 = *(v2 + 648);
      v23 = *(v2 + 624);
      v24 = *(v2 + 600);
      v25 = *(v2 + 568);
      v26 = *(v2 + 544);
      v27 = *(v2 + 536);
      v28 = *(v2 + 512);

      v29 = *(v2 + 8);

      return v29();
    }

    __break(1u);
    goto LABEL_20;
  }

  v31 = *(v2 + 536);
  v33 = *(v2 + 496);
  v32 = *(v2 + 504);
  sub_1DD90D378(v2 + 136, &qword_1ECD82FF8, &qword_1DDA18A18);
  sub_1DDA13670();
  sub_1DDA135E0();
  v35 = v34;
  sub_1DDA135E0();
  v3 = v35 - v36;
  swift_beginAccess();
  *(v2 + 320) = *(v33 + 16) / v3;
  sub_1DD92B3B4();
  v1 = sub_1DDA14A80();
  v0 = v37;
  if (qword_1ECD827B8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v38 = *(v2 + 496);
  v39 = sub_1DDA14810();
  *(v2 + 792) = __swift_project_value_buffer(v39, qword_1ECDA2110);

  v40 = sub_1DDA147F0();
  v41 = sub_1DDA14F00();

  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v2 + 496);
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v60 = v45;
    *v44 = 134218498;
    *(v44 + 4) = v3;
    *(v44 + 12) = 2048;
    swift_beginAccess();
    *(v44 + 14) = *(v43 + 16);

    *(v44 + 22) = 2080;
    v46 = sub_1DD93FA54(v1, v0, &v60);

    *(v44 + 24) = v46;
    _os_log_impl(&dword_1DD8F8000, v40, v41, "#tokenperf: Received last token. Total: %f. %ld tokens at @ %s tokens per second", v44, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1E12B8CE0](v45, -1, -1);
    MEMORY[0x1E12B8CE0](v44, -1, -1);
  }

  else
  {
    v47 = *(v2 + 496);
  }

  v48 = *(v2 + 512);
  v50 = *(v2 + 360);
  v49 = *(v2 + 368);
  v51 = *(*(v2 + 352) + 128);
  v52 = sub_1DDA14D60();
  (*(*(v52 - 8) + 56))(v48, 1, 1, v52);
  sub_1DDA14D40();

  v53 = sub_1DDA14D30();
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E85E0];
  v54[2] = v53;
  v54[3] = v55;
  v54[4] = v50;
  v54[5] = v49;
  v54[6] = v51;
  v56 = sub_1DD982718(0, 0, v48, &unk_1DDA18A30, v54);
  *(v2 + 800) = v56;
  v57 = *(MEMORY[0x1E69E86C0] + 4);
  v58 = swift_task_alloc();
  *(v2 + 808) = v58;
  *v58 = v2;
  v58[1] = sub_1DD92008C;
  v59 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v58, v56, v59);
}

uint64_t sub_1DD92008C()
{
  v1 = *(*v0 + 808);
  v2 = *(*v0 + 800);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD9201A4, 0, 0);
}

uint64_t sub_1DD9201A4()
{
  v1 = v0[99];
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "#tokenperf: Finished streaming complete prompt request", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[41];

  (*(v6 + 8))(v5, v7);
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[84];
  v12 = v0[81];
  v13 = v0[78];
  v14 = v0[75];
  v15 = v0[71];
  v16 = v0[68];
  v17 = v0[67];
  v18 = v0[64];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DD920338()
{
  v1 = v0[94];

  v14 = v0[96];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[84];
  v5 = v0[81];
  v6 = v0[78];
  v7 = v0[75];
  v8 = v0[71];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[64];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD920438()
{
  swift_endAccess();
  v13 = v0[98];
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[84];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[75];
  v7 = v0[71];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[64];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DD920538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v29;
  *(v8 + 104) = v28;
  *(v8 + 88) = v27;
  *(v8 + 72) = v26;
  *(v8 + 56) = v25;
  *(v8 + 40) = v24;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  *(v8 + 144) = v17;
  v18 = *(v17 - 8);
  *(v8 + 152) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_projectBox();
  v20 = swift_task_alloc();
  *(v8 + 176) = v20;
  *v20 = v8;
  v20[1] = sub_1DD92073C;

  return sub_1DD91B008(a3, a4, a5, a6, a7, a8, v23);
}

uint64_t sub_1DD92073C(uint64_t a1)
{
  v3 = *(*v2 + 176);
  v4 = *v2;
  v4[23] = a1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[16];
    v7 = v4[17];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD920898, 0, 0);
  }
}

uint64_t sub_1DD920898()
{
  v1 = *(v0 + 136);
  sub_1DD90ADB4(*(v0 + 80), v1, &qword_1ECD82FC8, &qword_1DDA189A0);
  v2 = sub_1DDA13EE0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 136);
  if (v4 == 1)
  {
    sub_1DD90D378(*(v0 + 136), &qword_1ECD82FC8, &qword_1DDA189A0);
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = *(v0 + 136);
    v6 = sub_1DDA13E50();
    (*(v3 + 8))(v5, v2);
  }

  *(v0 + 192) = v6;
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_1DD920A34;
  v9 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v16 = *(v0 + 40);
  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  v19 = *(v0 + 96);

  return sub_1DD9A0720(v10, v16, v14, v15, v12, v13, v6, v11);
}

uint64_t sub_1DD920A34()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1DD920CA8;
  }

  else
  {
    v4 = sub_1DD920B64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD920B64()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  sub_1DDA14E10();

  (*(v5 + 8))(v2, v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  swift_beginAccess();
  sub_1DD90AE1C(v6, v3, &qword_1ECD82FE8, &qword_1DDA189D0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DD920CA8()
{
  v1 = v0[23];

  v2 = v0[26];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DD920D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD920DD4, 0, 0);
}

uint64_t sub_1DD920DD4()
{
  v21 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA20E0);

  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14F00();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DD93FA54(v6, v5, &v20);
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Session %s invalidated and will be deleted.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  v13 = *(v11 + 128);
  v14 = sub_1DDA14D60();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1DDA14D40();

  v15 = sub_1DDA14D30();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v12;
  v16[5] = v10;
  v16[6] = v13;
  sub_1DD982718(0, 0, v9, &unk_1DDA18990, v16);

  v18 = *(v11 + 120);
  v0[11] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1DD921028, v18, 0);
}

uint64_t sub_1DD921028()
{
  v8 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  sub_1DD9AFBD8(&v7, v4, v3);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DD9210E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[15] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8) - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898) - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD921214, 0, 0);
}

uint64_t sub_1DD921214()
{
  v2 = v0[25];
  v1 = v0[26];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82F68, &qword_1DDA18898);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82F68, &qword_1DDA18898);
  if (v1 == 1)
  {
    v6 = v0[26];
    v7 = v0[24];
    v8 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
    sub_1DDA14E10();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD82F68, &qword_1DDA18898);
  }

  v9 = v0[26];
  swift_beginAccess();
  if (v5(v9, 1, v3))
  {
    v10 = v0[15];
    swift_endAccess();
    v11 = sub_1DDA14140();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = v0[24];
    v12 = v0[25];
    v15 = v0[22];
    v14 = v0[23];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = *(MEMORY[0x1E69E87B0] + 4);
    v19 = swift_task_alloc();
    v0[27] = v19;
    *v19 = v0;
    v19[1] = sub_1DD9214E0;
    v20 = v0[26];
    v21 = v0[15];

    return MEMORY[0x1EEE6DB98](v21, v3);
  }
}

uint64_t sub_1DD9214E0()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD921650, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[24];
    v4 = v3[25];
    v6 = v3[22];
    v7 = v3[23];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1DD921650()
{
  v40 = v0;
  v1 = v0[28];
  v2 = v0[23];
  swift_endAccess();
  v3 = sub_1DD9C4E98(v1);
  v0[14] = v3;
  v0[29] = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  v5 = sub_1DDA13840();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  v8 = v0[23];
  if (v6)
  {
    v9 = *(v5 - 8);
    v7(v0[23], 0, 1, v5);
    v10 = (*(v9 + 88))(v8, v5);
    v11 = *MEMORY[0x1E69DA4A0];
    (*(v9 + 8))(v8, v5);
    if (v10 == v11)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v12 = v0[18];
      v13 = sub_1DDA14810();
      __swift_project_value_buffer(v13, qword_1ECDA20E0);

      v14 = sub_1DDA147F0();
      v15 = sub_1DDA14F00();

      if (os_log_type_enabled(v14, v15))
      {
        v17 = v0[17];
        v16 = v0[18];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v39 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1DD93FA54(v17, v16, &v39);
        _os_log_impl(&dword_1DD8F8000, v14, v15, "Session %s was invalidated and will be deleted.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E12B8CE0](v19, -1, -1);
        MEMORY[0x1E12B8CE0](v18, -1, -1);
      }

      v21 = v0[21];
      v20 = v0[22];
      v22 = v0[19];
      v23 = v0[20];
      v24 = *(v22 + 128);
      v25 = sub_1DDA14D60();
      (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
      sub_1DDA14D40();

      v26 = sub_1DDA14D30();
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E85E0];
      v27[2] = v26;
      v27[3] = v28;
      v27[4] = v23;
      v27[5] = v21;
      v27[6] = v24;
      sub_1DD982718(0, 0, v20, &unk_1DDA188E8, v27);

      v29 = *(v22 + 120);
      v0[30] = v29;

      return MEMORY[0x1EEE6DFA0](sub_1DD921A54, v29, 0);
    }
  }

  else
  {
    v7(v0[23], 1, 1, v5);
    sub_1DD90D378(v8, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v30 = v0[28];
  v31 = v0[29];
  v33 = v0[24];
  v32 = v0[25];
  v35 = v0[22];
  v34 = v0[23];
  swift_willThrow();

  v36 = v0[1];
  v37 = v0[29];

  return v36();
}

uint64_t sub_1DD921A54()
{
  v6 = v0;
  v1 = v0[30];
  v3 = v0[17];
  v2 = v0[18];
  swift_beginAccess();

  sub_1DD9AFBD8(&v5, v3, v2);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD92BD0C, 0, 0);
}

uint64_t sub_1DD921B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[15] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8) - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0) - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD921C38, 0, 0);
}

uint64_t sub_1DD921C38()
{
  v2 = v0[25];
  v1 = v0[26];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  if (v1 == 1)
  {
    v6 = v0[26];
    v7 = v0[24];
    v8 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
    sub_1DDA14E10();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD82FE8, &qword_1DDA189D0);
  }

  v9 = v0[26];
  swift_beginAccess();
  if (v5(v9, 1, v3))
  {
    v10 = v0[15];
    swift_endAccess();
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v12 = v0[24];
    v11 = v0[25];
    v14 = v0[22];
    v13 = v0[23];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = *(MEMORY[0x1E69E87B0] + 4);
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_1DD921ED0;
    v19 = v0[26];
    v20 = v0[15];

    return MEMORY[0x1EEE6DB98](v20, v3);
  }
}

uint64_t sub_1DD921ED0()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD922040, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[24];
    v4 = v3[25];
    v6 = v3[22];
    v7 = v3[23];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1DD922040()
{
  v40 = v0;
  v1 = v0[28];
  v2 = v0[23];
  swift_endAccess();
  v3 = sub_1DD9C4E98(v1);
  v0[14] = v3;
  v0[29] = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  v5 = sub_1DDA13840();
  v6 = swift_dynamicCast();
  v7 = *(*(v5 - 8) + 56);
  v8 = v0[23];
  if (v6)
  {
    v9 = *(v5 - 8);
    v7(v0[23], 0, 1, v5);
    v10 = (*(v9 + 88))(v8, v5);
    v11 = *MEMORY[0x1E69DA4A0];
    (*(v9 + 8))(v8, v5);
    if (v10 == v11)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v12 = v0[18];
      v13 = sub_1DDA14810();
      __swift_project_value_buffer(v13, qword_1ECDA20E0);

      v14 = sub_1DDA147F0();
      v15 = sub_1DDA14F00();

      if (os_log_type_enabled(v14, v15))
      {
        v17 = v0[17];
        v16 = v0[18];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v39 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1DD93FA54(v17, v16, &v39);
        _os_log_impl(&dword_1DD8F8000, v14, v15, "Session %s was invalidated and will be deleted.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E12B8CE0](v19, -1, -1);
        MEMORY[0x1E12B8CE0](v18, -1, -1);
      }

      v21 = v0[21];
      v20 = v0[22];
      v22 = v0[19];
      v23 = v0[20];
      v24 = *(v22 + 128);
      v25 = sub_1DDA14D60();
      (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
      sub_1DDA14D40();

      v26 = sub_1DDA14D30();
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E85E0];
      v27[2] = v26;
      v27[3] = v28;
      v27[4] = v23;
      v27[5] = v21;
      v27[6] = v24;
      sub_1DD982718(0, 0, v20, &unk_1DDA18A00, v27);

      v29 = *(v22 + 120);
      v0[30] = v29;

      return MEMORY[0x1EEE6DFA0](sub_1DD922444, v29, 0);
    }
  }

  else
  {
    v7(v0[23], 1, 1, v5);
    sub_1DD90D378(v8, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v30 = v0[28];
  v31 = v0[29];
  v33 = v0[24];
  v32 = v0[25];
  v35 = v0[22];
  v34 = v0[23];
  swift_willThrow();

  v36 = v0[1];
  v37 = v0[29];

  return v36();
}

uint64_t sub_1DD922444()
{
  v6 = v0;
  v1 = v0[30];
  v3 = v0[17];
  v2 = v0[18];
  swift_beginAccess();

  sub_1DD9AFBD8(&v5, v3, v2);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD9224F4, 0, 0);
}

uint64_t sub_1DD9224F4()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[29];

  return v7();
}

uint64_t sub_1DD9225A0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v165 = a8;
  v166 = a1;
  v147 = a7;
  v179 = a4;
  v180 = a6;
  v176 = a5;
  v177 = a9;
  v173 = a2;
  v174 = a3;
  v163 = a15;
  v153 = a14;
  v162 = a13;
  v152 = a12;
  v149 = a11;
  v148 = a10;
  v160 = *v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v154 = *(v17 - 8);
  v155 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v171 = &v124 - v18;
  v170 = sub_1DDA13A80();
  v157 = *(v170 - 8);
  v19 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v151 = v20;
  v156 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  v145 = *(v21 - 8);
  v146 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v175 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  v143 = *(v23 - 8);
  v144 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v169 = &v124 - v24;
  v168 = sub_1DDA136B0();
  v150 = *(v168 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v142 = v26;
  v167 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  v159 = *(v161 - 8);
  v27 = *(v159 + 64);
  v28 = MEMORY[0x1EEE9AC00](v161);
  v158 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v124 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v140 = &v124 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v141 = *(v33 - 8);
  v34 = *(v141 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124 - v36;
  v38 = sub_1DDA13680();
  v178 = *(v38 - 8);
  v39 = *(v178 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v124 - v41;
  v43 = sub_1DD929C60(a16);
  v125 = v37;
  v132 = v34;
  v133 = v39;
  v134 = v43;
  v135 = v27;
  v138 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v38;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v44 = sub_1DDA14810();
  __swift_project_value_buffer(v44, qword_1ECDA20E0);
  v45 = v173;

  v46 = sub_1DDA147F0();
  v47 = sub_1DDA14F00();

  v48 = os_log_type_enabled(v46, v47);
  v49 = v181;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v189 = v51;
    *v50 = 136315650;
    *(v50 + 4) = sub_1DD93FA54(0xD000000000000092, 0x80000001DDA27390, &v189);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_1DD93FA54(v166, v45, &v189);
    *(v50 + 22) = 2080;
    *(v50 + 24) = sub_1DD93FA54(v176, v180, &v189);
    _os_log_impl(&dword_1DD8F8000, v46, v47, "%s\n  useCaseID: %s\n  sessionID: %s", v50, 0x20u);
    swift_arrayDestroy();
    v52 = v51;
    v49 = v181;
    MEMORY[0x1E12B8CE0](v52, -1, -1);
    MEMORY[0x1E12B8CE0](v50, -1, -1);
  }

  v53 = v175;
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v131 = __swift_project_value_buffer(v44, qword_1ECDA2110);
  v54 = sub_1DDA147F0();
  v55 = sub_1DDA14F00();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1DD8F8000, v54, v55, "#tokenperf: Starting streaming complete prompt request", v56, 2u);
    MEMORY[0x1E12B8CE0](v56, -1, -1);
  }

  sub_1DDA13670();
  v137 = swift_allocObject();
  *(v137 + 16) = 0;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  v136 = swift_allocBox();
  v58 = v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v60 = *(v59 - 8);
  v128 = *(v60 + 56);
  v129 = v59;
  v127 = v60 + 56;
  v61 = v128(v58, 1, 1);
  v62 = *(v49 + 136);
  if (v62)
  {
    v63 = *(v49 + 144);
    v62(&v184, v61);
    *&v190[16] = v186;
    v191 = v187;
    v192 = v188;
    v189 = v184;
    *v190 = v185;
  }

  else
  {
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v184 = 0u;
    v64 = v125;
    sub_1DD90ADB4(v165, v125, &qword_1ECD82F60, &qword_1DDA18890);
    v65 = sub_1DDA13F50();
    v66 = *(v65 - 8);
    v67 = (*(v66 + 48))(v64, 1, v65);
    if (v67 == 1)
    {
      sub_1DD90D378(v64, &qword_1ECD82F60, &qword_1DDA18890);
      v68 = 0;
      v69 = 1;
    }

    else
    {
      v70 = sub_1DDA13F40();
      (*(v66 + 8))(v64, v65);
      v68 = v70;
      v69 = v184 == 0;
    }

    v71 = v166;
    v72 = v67 == 1;

    v73 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    v74 = sub_1DD9C13D0(v71, v45, v73);
    v76 = v75;
    v78 = v77;
    LOBYTE(v189) = v72;
    sub_1DD913A48(v77 & 1, v68 | (v72 << 32), &v193);
    sub_1DD928DB4(v74, v76, v78 & 1);
    sub_1DD94BC74(1, &v182);
    *&v192 = type metadata accessor for OpenAIAuthenticationService();
    *(&v192 + 1) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v190[24]);
    sub_1DD979F04(&v182, v74, v76, v78 & 1, boxed_opaque_existential_1);
    sub_1DD928DD4(v74, v76, v78 & 1);
    v189 = v193;
    *v190 = v194[0];
    *&v190[13] = *(v194 + 13);
    v53 = v175;
    if (!v69)
    {
      sub_1DD90D378(&v184, &qword_1ECD82F70, &qword_1DDA188A8);
    }
  }

  v182 = v189;
  v183[0] = *v190;
  *(v183 + 13) = *&v190[13];
  v80 = v140;
  sub_1DD9122F0(v140);
  v81 = type metadata accessor for Credentials(0);
  v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
  v83 = v170;
  v84 = v156;
  v85 = v42;
  if (v82 == 1)
  {
    sub_1DD90D378(v80, &qword_1ECD82D20, &qword_1DDA18CE0);
    v124 = 0;
    v125 = 0;
  }

  else
  {
    v86 = Credentials.credentialsID.getter();
    v124 = v87;
    v125 = v86;
    sub_1DD929B9C(v80, type metadata accessor for Credentials);
  }

  v88 = v171;
  v89 = v164;
  v90 = v157;
  v91 = v178;
  sub_1DD928DF4(&v189, &v184);
  v92 = v150;
  (*(v150 + 16))(v167, v147, v168);
  sub_1DD90ADB4(v165, v138, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD90ADB4(v148, v169, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90ADB4(v149, v53, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v90 + 16))(v84, v152, v83);
  sub_1DD90ADB4(v153, v88, &qword_1ECD82FC0, &qword_1DDA18998);
  v93 = *(v91 + 16);
  v126 = v85;
  v93(v139, v85, v89);
  v94 = (*(v92 + 80) + 176) & ~*(v92 + 80);
  v142 = (v142 + *(v141 + 80) + v94) & ~*(v141 + 80);
  v147 = (v132 + *(v143 + 80) + v142) & ~*(v143 + 80);
  v149 = (v144 + *(v145 + 80) + v147) & ~*(v145 + 80);
  v152 = (v146 + *(v90 + 80) + v149) & ~*(v90 + 80);
  v153 = (v151 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
  v154 = (*(v154 + 80) + v153 + 8) & ~*(v154 + 80);
  v165 = (v155 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
  v157 = (v165 + 15) & 0xFFFFFFFFFFFFFFF8;
  v155 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
  v151 = (*(v91 + 80) + v155 + 8) & ~*(v91 + 80);
  v148 = (v133 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  v96 = v184;
  *(v95 + 40) = v185;
  v97 = v187;
  *(v95 + 56) = v186;
  *(v95 + 72) = v97;
  *(v95 + 88) = v188;
  *(v95 + 16) = v136;
  *(v95 + 24) = v96;
  v98 = v180;
  v99 = v174;
  *(v95 + 104) = v181;
  *(v95 + 112) = v99;
  v100 = v176;
  *(v95 + 120) = v179;
  *(v95 + 128) = v100;
  v102 = v124;
  v101 = v125;
  *(v95 + 136) = v98;
  *(v95 + 144) = v101;
  v104 = v166;
  v103 = v167;
  *(v95 + 152) = v102;
  *(v95 + 160) = v104;
  *(v95 + 168) = v173;
  (*(v92 + 32))(v95 + v94, v103, v168);
  sub_1DD914958(v138, v95 + v142, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD914958(v169, v95 + v147, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD914958(v175, v95 + v149, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v90 + 32))(v95 + v152, v84, v170);
  v105 = v154;
  *(v95 + v153) = v162;
  sub_1DD914958(v171, v95 + v105, &qword_1ECD82FC0, &qword_1DDA18998);
  v106 = v164;
  *(v95 + v165) = v163;
  *(v95 + v157) = v134;
  *(v95 + v155) = v137;
  (*(v178 + 32))(v95 + v151, v139, v106);
  *(v95 + v148) = v160;

  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  v107 = v158;
  sub_1DDA14E30();
  v108 = v172;
  sub_1DD91E228("StreamingPromptCompletion", 25, 2, v131, v172);
  v109 = v159;
  v110 = *(v159 + 8);
  v171 = v159 + 8;
  v173 = v110;
  v111 = v161;
  v110(v107, v161);
  v112 = swift_allocBox();
  (v128)(v113, 1, 1, v129);
  (*(v109 + 16))(v107, v108, v111);
  v114 = (*(v109 + 80) + 24) & ~*(v109 + 80);
  v115 = (v135 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = (v115 + 23) & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  *(v117 + 16) = v112;
  (*(v109 + 32))(v117 + v114, v107, v111);
  v118 = (v117 + v115);
  v119 = v180;
  v120 = v181;
  *v118 = v176;
  v118[1] = v119;
  *(v117 + v116) = v120;
  v121 = (v117 + ((v116 + 15) & 0xFFFFFFFFFFFFFFF8));
  v122 = v179;
  *v121 = v174;
  v121[1] = v122;

  sub_1DDA14E30();
  v173(v172, v111);
  (*(v178 + 8))(v126, v164);

  sub_1DD9291B0(&v189);
}

uint64_t sub_1DD923720()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return v3();
}

uint64_t sub_1DD923798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 376) = v29;
  *(v9 + 384) = v8;
  *(v9 + 368) = v28;
  *(v9 + 336) = v26;
  *(v9 + 352) = v27;
  *(v9 + 320) = v25;
  *(v9 + 304) = a7;
  *(v9 + 312) = a8;
  *(v9 + 288) = a5;
  *(v9 + 296) = a6;
  *(v9 + 272) = a3;
  *(v9 + 280) = a4;
  *(v9 + 256) = a1;
  *(v9 + 264) = a2;
  *(v9 + 392) = *v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  *(v9 + 400) = v10;
  *(v9 + 408) = *(v10 + 64);
  *(v9 + 416) = swift_task_alloc();
  v11 = sub_1DDA13A80();
  *(v9 + 424) = v11;
  v12 = *(v11 - 8);
  *(v9 + 432) = v12;
  *(v9 + 440) = *(v12 + 64);
  *(v9 + 448) = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  *(v9 + 456) = v13;
  *(v9 + 464) = *(v13 + 64);
  *(v9 + 472) = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  *(v9 + 480) = v14;
  *(v9 + 488) = *(v14 + 64);
  *(v9 + 496) = swift_task_alloc();
  v15 = sub_1DDA136B0();
  *(v9 + 504) = v15;
  v16 = *(v15 - 8);
  *(v9 + 512) = v16;
  *(v9 + 520) = *(v16 + 64);
  *(v9 + 528) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8) + 64) + 15;
  *(v9 + 536) = swift_task_alloc();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v9 + 544) = v18;
  *(v9 + 552) = *(v18 + 64);
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  v19 = sub_1DDA13680();
  *(v9 + 576) = v19;
  v20 = *(v19 - 8);
  *(v9 + 584) = v20;
  *(v9 + 592) = *(v20 + 64);
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  *(v9 + 616) = v21;
  v22 = *(v21 - 8);
  *(v9 + 624) = v22;
  *(v9 + 632) = *(v22 + 64);
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD923C04, 0, 0);
}

uint64_t sub_1DD923C04()
{
  v156 = v0;
  v128 = sub_1DD929C60(*(v0 + 376));
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v148 = sub_1DDA14810();
  *(v0 + 664) = __swift_project_value_buffer(v148, qword_1ECDA20E0);

  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14F00();

  if (os_log_type_enabled(v3, v4))
  {
    v146 = *(v0 + 304);
    v144 = *(v0 + 296);
    v5 = *(v0 + 264);
    v6 = *(v0 + 272);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v150 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_1DD93FA54(0xD000000000000084, 0x80000001DDA27540, &v150);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1DD93FA54(v5, v6, &v150);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_1DD93FA54(v144, v146, &v150);
    _os_log_impl(&dword_1DD8F8000, v3, v4, "%s\n  useCaseID:%s\n  sessionID:%s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14F00();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "#tokenperf: Starting one-shot complete prompt request (implementation relies on streaming)", v11, 2u);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  v12 = *(v0 + 304);
  v13 = *(v0 + 272);

  v14 = sub_1DDA147F0();
  v15 = sub_1DDA14F00();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v150 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_1DD93FA54(0xD000000000000092, 0x80000001DDA27390, &v150);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1DD93FA54(v19, v18, &v150);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_1DD93FA54(v17, v16, &v150);
    _os_log_impl(&dword_1DD8F8000, v14, v15, "%s\n  useCaseID: %s\n  sessionID: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v21, -1, -1);
    MEMORY[0x1E12B8CE0](v20, -1, -1);
  }

  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v127 = __swift_project_value_buffer(v148, qword_1ECDA2110);
  v22 = sub_1DDA147F0();
  v23 = sub_1DDA14F00();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DD8F8000, v22, v23, "#tokenperf: Starting streaming complete prompt request", v24, 2u);
    MEMORY[0x1E12B8CE0](v24, -1, -1);
  }

  v25 = *(v0 + 608);
  v26 = *(v0 + 384);

  sub_1DDA13670();
  v145 = swift_allocObject();
  *(v145 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  v143 = swift_allocBox();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v125 = *(*(v29 - 8) + 56);
  v126 = v29;
  v30 = v125(v28, 1, 1);
  v31 = *(v26 + 136);
  if (v31)
  {
    v32 = *(*(v0 + 384) + 144);
    v31(&v150, v30);
    v33 = v153;
    *(v0 + 48) = v152;
    *(v0 + 64) = v33;
    *(v0 + 80) = v154;
    v34 = v151;
    *(v0 + 16) = v150;
    *(v0 + 32) = v34;
  }

  else
  {
    v35 = *(v0 + 568);
    v36 = *(v0 + 320);
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    sub_1DD90ADB4(v36, v35, &qword_1ECD82F60, &qword_1DDA18890);
    v37 = sub_1DDA13F50();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 48))(v35, 1, v37);
    v40 = *(v0 + 568);
    if (v39 == 1)
    {
      sub_1DD90D378(*(v0 + 568), &qword_1ECD82F60, &qword_1DDA18890);
      v41 = 0;
    }

    else
    {
      LODWORD(v41) = sub_1DDA13F40();
      (*(v38 + 8))(v40, v37);
      v41 = v41;
    }

    v42 = v39 == 1;
    v43 = *(v0 + 264);
    v44 = *(v0 + 272);

    v45 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    v46 = sub_1DD9C13D0(v43, v44, v45);
    v48 = v47;
    v50 = v49;
    LOBYTE(v155[0]) = v42;
    sub_1DD913A48(v49 & 1, v41 | (v42 << 32), (v0 + 216));
    sub_1DD928DB4(v46, v48, v50 & 1);
    sub_1DD94BC74(1, v155);
    *(v0 + 80) = type metadata accessor for OpenAIAuthenticationService();
    *(v0 + 88) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_1DD979F04(v155, v46, v48, v50 & 1, boxed_opaque_existential_1);
    sub_1DD928DD4(v46, v48, v50 & 1);
    v52 = *(v0 + 232);
    *(v0 + 16) = *(v0 + 216);
    *(v0 + 32) = v52;
    *(v0 + 45) = *(v0 + 245);
  }

  v53 = *(v0 + 536);
  v54 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v54;
  *(v0 + 205) = *(v0 + 45);
  sub_1DD9122F0(v53);
  v55 = type metadata accessor for Credentials(0);
  v56 = (*(*(v55 - 8) + 48))(v53, 1, v55);
  v57 = *(v0 + 536);
  if (v56 == 1)
  {
    sub_1DD90D378(*(v0 + 536), &qword_1ECD82D20, &qword_1DDA18CE0);
    v119 = 0;
    v117 = 0;
  }

  else
  {
    v119 = Credentials.credentialsID.getter();
    v117 = v58;
    sub_1DD929B9C(v57, type metadata accessor for Credentials);
  }

  v123 = *(v0 + 632);
  v124 = *(v0 + 656);
  v121 = *(v0 + 640);
  v122 = *(v0 + 624);
  v140 = *(v0 + 616);
  v138 = *(v0 + 648);
  v139 = *(v0 + 608);
  v137 = *(v0 + 600);
  v114 = *(v0 + 592);
  v147 = *(v0 + 584);
  v149 = *(v0 + 576);
  v59 = *(v0 + 560);
  v60 = *(v0 + 528);
  v112 = v60;
  v95 = *(v0 + 520);
  v97 = *(v0 + 544);
  v62 = *(v0 + 504);
  v61 = *(v0 + 512);
  v63 = *(v0 + 496);
  v64 = *(v0 + 472);
  v111 = v63;
  v105 = *(v0 + 464);
  v107 = *(v0 + 552);
  v92 = *(v0 + 480);
  v94 = *(v0 + 456);
  v134 = *(v0 + 448);
  v101 = *(v0 + 488);
  v103 = *(v0 + 440);
  v129 = *(v0 + 432);
  v130 = *(v0 + 424);
  v135 = *(v0 + 416);
  v109 = *(v0 + 408);
  v99 = *(v0 + 400);
  v120 = *(v0 + 392);
  v118 = *(v0 + 368);
  v90 = *(v0 + 344);
  v91 = *(v0 + 360);
  v65 = *(v0 + 328);
  v89 = *(v0 + 336);
  v67 = *(v0 + 312);
  v66 = *(v0 + 320);
  v132 = *(v0 + 304);
  v133 = *(v0 + 384);
  v141 = *(v0 + 296);
  v131 = *(v0 + 288);
  v142 = *(v0 + 280);
  v115 = *(v0 + 272);
  v116 = *(v0 + 352);
  v113 = *(v0 + 264);
  sub_1DD928DF4(v0 + 16, v0 + 96);
  (*(v61 + 16))(v60, v67, v62);
  sub_1DD90ADB4(v66, v59, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD90ADB4(v65, v63, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90ADB4(v89, v64, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v129 + 16))(v134, v90, v130);
  sub_1DD90ADB4(v91, v135, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v147 + 16))(v137, v139, v149);
  v68 = v61;
  v69 = (*(v61 + 80) + 176) & ~*(v61 + 80);
  v70 = (v95 + *(v97 + 80) + v69) & ~*(v97 + 80);
  v93 = (v107 + *(v92 + 80) + v70) & ~*(v92 + 80);
  v96 = (v101 + *(v94 + 80) + v93) & ~*(v94 + 80);
  v102 = (v105 + *(v129 + 80) + v96) & ~*(v129 + 80);
  v106 = (v103 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (*(v99 + 80) + v106 + 8) & ~*(v99 + 80);
  v110 = (v109 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = (*(v147 + 80) + v100 + 8) & ~*(v147 + 80);
  v71 = swift_allocObject();
  v72 = *(v0 + 96);
  *(v71 + 40) = *(v0 + 112);
  v73 = *(v0 + 144);
  *(v71 + 56) = *(v0 + 128);
  *(v71 + 72) = v73;
  *(v71 + 88) = *(v0 + 160);
  *(v71 + 16) = v143;
  *(v71 + 24) = v72;
  *(v71 + 104) = v133;
  *(v71 + 112) = v142;
  *(v71 + 120) = v131;
  *(v71 + 128) = v141;
  *(v71 + 136) = v132;
  *(v71 + 144) = v119;
  *(v71 + 152) = v117;
  *(v71 + 160) = v113;
  *(v71 + 168) = v115;
  (*(v68 + 32))(v71 + v69, v112, v62);
  sub_1DD914958(v59, v71 + v70, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD914958(v111, v71 + v93, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD914958(v64, v71 + v96, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v129 + 32))(v71 + v102, v134, v130);
  *(v71 + v106) = v116;
  sub_1DD914958(v135, v71 + v104, &qword_1ECD82FC0, &qword_1DDA18998);
  *(v71 + v110) = v118;
  *(v71 + v108) = v128;
  *(v71 + v100) = v145;
  (*(v147 + 32))(v71 + v98, v137, v149);
  *(v71 + ((v114 + v98 + 7) & 0xFFFFFFFFFFFFFFF8)) = v120;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  sub_1DDA14E30();
  sub_1DD91E228("StreamingPromptCompletion", 25, 2, v127, v138);
  v136 = *(v122 + 8);
  *(v0 + 672) = v136;
  *(v0 + 680) = (v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v136(v121, v140);
  v74 = swift_allocBox();
  (v125)(v75, 1, 1, v126);
  (*(v122 + 16))(v121, v138, v140);
  v76 = (*(v122 + 80) + 24) & ~*(v122 + 80);
  v77 = (v123 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  *(v79 + 16) = v74;
  (*(v122 + 32))(v79 + v76, v121, v140);
  v80 = (v79 + v77);
  *v80 = v141;
  v80[1] = v132;
  *(v79 + v78) = v133;
  v81 = (v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v81 = v142;
  v81[1] = v131;

  sub_1DDA14E30();
  v136(v138, v140);
  (*(v147 + 8))(v139, v149);

  sub_1DD9291B0(v0 + 16);

  v82 = *(MEMORY[0x1E69DA520] + 4);
  v83 = swift_task_alloc();
  *(v0 + 688) = v83;
  v84 = sub_1DD92BBAC();
  *v83 = v0;
  v83[1] = sub_1DD924B90;
  v85 = *(v0 + 656);
  v86 = *(v0 + 616);
  v87 = *(v0 + 256);

  return MEMORY[0x1EEE49D58](v87, v85, v86, v84);
}

uint64_t sub_1DD924B90()
{
  v2 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = sub_1DD924E54;
  }

  else
  {
    v3 = sub_1DD924CA4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD924CA4()
{
  v1 = v0[83];
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "#tokenperf: Finished one-shot complete prompt request", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[75];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[67];
  v18 = v0[66];
  v19 = v0[62];
  v20 = v0[59];
  v21 = v0[56];
  v22 = v0[52];

  v6(v7, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DD924E54()
{
  v1 = *(v0 + 680);
  (*(v0 + 672))(*(v0 + 656), *(v0 + 616));
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 536);
  v10 = *(v0 + 528);
  v11 = *(v0 + 496);
  v14 = *(v0 + 472);
  v15 = *(v0 + 448);
  v16 = *(v0 + 416);
  v17 = *(v0 + 696);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DD924F88(uint64_t a1)
{
  v125 = sub_1DDA143D0();
  v2 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DDA14440();
  v128 = *(v4 - 1);
  v129 = v4;
  v5 = *(v128 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v127 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v131 = &v122 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83010, &qword_1DDA18A40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v122 - v11;
  v138 = sub_1DDA13840();
  v136 = *(v138 - 8);
  v13 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v134 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1DDA13830();
  v137 = *(v139 - 1);
  v15 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DDA144A0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DDA144B0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v123 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v126 = &v122 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v122 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v122 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = *(v23 + 16);
  v130 = a1;
  v37 = (&v122 - v36);
  v132 = v23 + 16;
  v133 = v35;
  v35();
  result = (*(v23 + 88))(v37, v22);
  if (result == *MEMORY[0x1E69A0B78])
  {
    (*(v23 + 96))(v37, v22);
    v39 = *v37;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83018, &qword_1DDA18A48);
    v41 = swift_projectBox();
    sub_1DD90ADB4(v41 + *(v40 + 48), v12, &qword_1ECD83010, &qword_1DDA18A40);
    v42 = sub_1DDA14450();
    if ((*(*(v42 - 8) + 48))(v12, 1, v42) == 1)
    {
      sub_1DD90D378(v12, &qword_1ECD83010, &qword_1DDA18A40);
    }

    if (qword_1ECD827A8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

  v140 = v22;
  if (result == *MEMORY[0x1E69A0B70])
  {
    (*(v23 + 96))(v37, v140);
    v138 = *v37;
    v43 = *(v138 + 16);
    v12 = *(v43 + 16);
    if (!v12)
    {
    }

    v44 = 0;
    v139 = (v18 + 16);
    v45 = (v23 + 8);
    while (v44 < *(v43 + 16))
    {
      (*(v18 + 16))(v21, v43 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v44, v17);
      sub_1DDA14480();
      (*(v18 + 8))(v21, v17);
      v46 = v143;
      sub_1DD924F88(v34);
      v143 = v46;
      if (v46)
      {
        (*v45)(v34, v140);
      }

      ++v44;
      (*v45)(v34, v140);
      if (v12 == v44)
      {
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
LABEL_12:
    v47 = sub_1DDA14810();
    __swift_project_value_buffer(v47, qword_1ECDA20E0);
    v48 = sub_1DDA147F0();
    v49 = sub_1DDA14EE0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DD8F8000, v48, v49, "Strings with constraints are not supported", v50, 2u);
      MEMORY[0x1E12B8CE0](v50, -1, -1);
    }

    v51 = v135;
    sub_1DDA13800();
    v52 = v137;
    v53 = v134;
    v54 = v139;
    (*(v137 + 16))(v134, v51, v139);
    v55 = v136;
    v56 = v138;
    (*(v136 + 104))(v53, *MEMORY[0x1E69DA4B0], v138);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    (*(v55 + 16))(v57, v53, v56);
    swift_willThrow();
    (*(v55 + 8))(v53, v56);
    (*(v52 + 8))(v51, v54);
    sub_1DD90D378(v12, &qword_1ECD83010, &qword_1DDA18A40);
  }

  if (result == *MEMORY[0x1E69A0B58])
  {
    v58 = v140;
    (*(v23 + 96))(v37, v140);
    v59 = *v37;
    v60 = swift_projectBox();
    (v133)(v31, v60, v58);
    v61 = v143;
    sub_1DD924F88(v31);
    if (!v61)
    {
      v143 = 0;
      (*(v23 + 8))(v31, v58);
    }

    (*(v23 + 8))(v31, v58);
  }

  v62 = v133;
  if (result == *MEMORY[0x1E69A0B50])
  {
    (*(v23 + 8))(v37, v140);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v63 = sub_1DDA14810();
    __swift_project_value_buffer(v63, qword_1ECDA20E0);
    v64 = sub_1DDA147F0();
    v65 = sub_1DDA14EE0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1DD8F8000, v64, v65, "Schemas with dictionaries are not supported", v66, 2u);
      MEMORY[0x1E12B8CE0](v66, -1, -1);
    }

LABEL_40:

    v89 = v135;
    sub_1DDA13800();
    v90 = v137;
    v91 = v134;
    v92 = v139;
    (*(v137 + 16))(v134, v89, v139);
    v93 = v136;
    v94 = v138;
    (*(v136 + 104))(v91, *MEMORY[0x1E69DA4B0], v138);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    (*(v93 + 16))(v95, v91, v94);
    swift_willThrow();
    (*(v93 + 8))(v91, v94);
    return (*(v90 + 8))(v89, v92);
  }

  if (result == *MEMORY[0x1E69A0B60] || result == *MEMORY[0x1E69A0B90])
  {
    (*(v23 + 8))(v37, v140);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v86 = sub_1DDA14810();
    __swift_project_value_buffer(v86, qword_1ECDA20E0);
    v64 = sub_1DDA147F0();
    v87 = sub_1DDA14EE0();
    if (os_log_type_enabled(v64, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1DD8F8000, v64, v87, "Generable enums with associated values are not supported", v88, 2u);
      MEMORY[0x1E12B8CE0](v88, -1, -1);
    }

    goto LABEL_40;
  }

  if (result == *MEMORY[0x1E69A0B48])
  {
    (*(v23 + 96))(v37, v140);
    v67 = *v37;
    v68 = swift_projectBox();
    v69 = v128;
    v70 = v129;
    v71 = *(v128 + 16);
    v72 = v131;
    v71(v131, v68, v129);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v73 = sub_1DDA14810();
    __swift_project_value_buffer(v73, qword_1ECDA20E0);
    v74 = v127;
    v71(v127, v72, v70);
    v75 = sub_1DDA147F0();
    v76 = sub_1DDA14ED0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = v74;
      v78 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141 = v139;
      *v78 = 136315138;
      sub_1DDA14430();
      v79 = sub_1DDA14B70();
      v140 = v67;
      v80 = v79;
      v82 = v81;
      v83 = *(v69 + 8);
      v83(v77, v70);
      v84 = sub_1DD93FA54(v80, v82, &v141);

      *(v78 + 4) = v84;
      _os_log_impl(&dword_1DD8F8000, v75, v76, "RecursiveSchema: %s", v78, 0xCu);
      v85 = v139;
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x1E12B8CE0](v85, -1, -1);
      MEMORY[0x1E12B8CE0](v78, -1, -1);

      v83(v131, v70);
    }

    else
    {

      v111 = *(v69 + 8);
      v111(v74, v70);
      v111(v72, v70);
    }
  }

  if (result != *MEMORY[0x1E69A0B80] && result != *MEMORY[0x1E69A0B88] && result != *MEMORY[0x1E69A0B68])
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v96 = sub_1DDA14810();
    __swift_project_value_buffer(v96, qword_1ECDA20E0);
    v97 = v126;
    (v62)(v126, v130, v140);
    v98 = sub_1DDA147F0();
    v99 = sub_1DDA14EE0();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v123;
    if (v100)
    {
      v102 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v141 = v129;
      *v102 = 136315138;
      v103 = v97;
      v104 = v140;
      (v62)(v101, v103, v140);
      v105 = sub_1DDA14B70();
      v107 = v106;
      v108 = *(v23 + 8);
      v131 = ((v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v143 = v108;
      v108(v126, v104);
      v109 = sub_1DD93FA54(v105, v107, &v141);
      v62 = v133;

      *(v102 + 4) = v109;
      _os_log_impl(&dword_1DD8F8000, v98, v99, "Schema not supported: %s", v102, 0xCu);
      v110 = v129;
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x1E12B8CE0](v110, -1, -1);
      MEMORY[0x1E12B8CE0](v102, -1, -1);
    }

    else
    {

      v112 = *(v23 + 8);
      v131 = ((v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v143 = v112;
      v112(v97, v140);
    }

    v141 = 0;
    v142 = 0xE000000000000000;
    sub_1DDA15070();

    v141 = 0xD000000000000016;
    v142 = 0x80000001DDA27480;
    v113 = v140;
    (v62)(v101, v130, v140);
    v114 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v114);

    v115 = v135;
    sub_1DDA13800();
    v116 = v137;
    v117 = v134;
    v118 = v139;
    (*(v137 + 16))(v134, v115, v139);
    v119 = v136;
    v120 = v138;
    (*(v136 + 104))(v117, *MEMORY[0x1E69DA4B0], v138);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
    swift_allocError();
    (*(v119 + 16))(v121, v117, v120);
    swift_willThrow();
    (*(v119 + 8))(v117, v120);
    (*(v116 + 8))(v115, v118);
    return v143(v37, v113);
  }

  return result;
}

uint64_t sub_1DD926144()
{
  sub_1DD926314((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[18];
  sub_1DD926368(v0[17]);

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1DD9261C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  v7 = sub_1DDA155B0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DDA15440() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DD9262B8()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DD926368(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD926378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 176) = a5;
  *(v8 + 184) = a8;
  *(v8 + 304) = a7;
  *(v8 + 160) = a3;
  *(v8 + 168) = a4;
  *(v8 + 152) = a1;
  v9 = sub_1DDA147A0();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v13 = sub_1DDA14760();
  *(v8 + 224) = v13;
  v14 = *(v13 - 8);
  *(v8 + 232) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD926544, 0, 0);
}

uint64_t sub_1DD926544()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82F68, &qword_1DDA18898);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82F68, &qword_1DDA18898);
  if (v1 == 1)
  {
    v6 = *(v0 + 256);
    v7 = *(v0 + 168);
    sub_1DDA14750();
    v8 = sub_1DDA14780();
    v9 = sub_1DDA14F30();
    v10 = sub_1DDA14F40();
    if ((v10 & 1) == 0)
    {
LABEL_11:
      v36 = *(v0 + 280);
      v37 = v5;
      v17 = *(v0 + 256);
      v16 = *(v0 + 264);
      v18 = *(v0 + 248);
      v19 = v8;
      v20 = v4;
      v22 = *(v0 + 224);
      v21 = *(v0 + 232);
      v35 = *(v0 + 184);
      v23 = *(v0 + 160);

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

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
      sub_1DDA14E10();
      (*(v20 + 56))(v16, 0, 1, v3);
      swift_beginAccess();
      sub_1DD90AE1C(v16, v36, &qword_1ECD82F68, &qword_1DDA18898);
      goto LABEL_12;
    }

    v12 = *(v0 + 176);
    if ((*(v0 + 304) & 1) == 0)
    {
      if (v12)
      {
LABEL_10:
        v13 = *(v0 + 256);
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
        v12 = (v0 + 144);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v30 = *(v0 + 280);
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
  *(v0 + 288) = v32;
  *v32 = v0;
  v32[1] = sub_1DD9268E8;
  v33 = *(v0 + 280);
  v10 = *(v0 + 216);
  v11 = v3;

  return MEMORY[0x1EEE6DB98](v10, v11);
}

uint64_t sub_1DD9268E8()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1DD926D3C;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1DD926A04;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD926A04()
{
  v1 = *(v0 + 216);
  v2 = sub_1DDA14140();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 160);
  sub_1DD90D378(v1, &qword_1ECD82D58, &unk_1DDA18640);
  result = swift_beginAccess();
  if (!*(v4 + 16))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v6 = *(v0 + 240);
  v7 = *(v0 + 168);

  v8 = sub_1DDA14780();
  sub_1DDA147B0();
  v9 = sub_1DDA14F20();
  v1 = v8;
  result = sub_1DDA14F40();
  if ((result & 1) == 0)
  {
LABEL_16:
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v21 = *(v0 + 224);

    (*(v20 + 8))(v19, v21);
    v11 = 1;
    goto LABEL_17;
  }

  v10 = *(v0 + 176);
  if (*(v0 + 304))
  {
    if (v10 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((*(v0 + 176) & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v10 >> 16 <= 0x10)
      {
        v10 = (v0 + 136);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v10)
  {
LABEL_12:
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 192);

    sub_1DDA147E0();

    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      v15 = "";
    }

    v16 = *(v0 + 240);
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1DDA14740();
    _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v8, v9, v18, v10, v15, v17, 2u);
    MEMORY[0x1E12B8CE0](v17, -1, -1);
    goto LABEL_16;
  }

  __break(1u);
LABEL_7:
  (*(v3 + 32))(*(v0 + 152), v1, v2);
  v11 = 0;
LABEL_17:
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v26 = *(v0 + 240);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  (*(v3 + 56))(*(v0 + 152), v11, 1, v2);

  v29 = *(v0 + 8);

  return v29();
}