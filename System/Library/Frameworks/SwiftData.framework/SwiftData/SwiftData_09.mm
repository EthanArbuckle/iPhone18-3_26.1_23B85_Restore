uint64_t sub_1974A46D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  swift_unknownObjectRetain();

  return v3;
}

uint64_t sub_1974A4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1973FE074(a3, a4);
  v7 = *(v6 + 32);
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1974A4780(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  swift_unknownObjectRetain();

  return v3;
}

uint64_t sub_1974A47C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a5 + 16))
  {
    v15 = *(a5 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
LABEL_10:

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
      v28 = *(a4 + 72);
      v27 = *(a4 + 80);

      MEMORY[0x19A8DFF80](v28, v27);

      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197526030);
      goto LABEL_12;
    }

    v15 = Strong;
  }

  v17 = *(v15 + 16);

  v18 = *(v17 + 72);

  swift_beginAccess();
  if (!*(v18 + 16))
  {
    goto LABEL_10;
  }

  v20 = *(a4 + 72);
  v19 = *(a4 + 80);

  v21 = sub_1973F4028(v20, v19);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = *(*(v18 + 56) + 8 * v21);

  v25 = *(v24 + 144);
  if (v25)
  {
    sub_1974A4A64(v25, a2, a1, a3, a4, a5, a6, a7, v25, a8, a9, *(v24 + 152));
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197526060);
  type metadata accessor for Schema.Entity();
  sub_19752235C();
LABEL_12:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974A4A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_unknownObjectRetain();
  v17 = a7;
  if (swift_dynamicCast())
  {
    v18 = swift_allocObject();
    v18[2] = a7;
    v18[3] = a10;
    v18[4] = a11;
    v18[5] = a12;
    v18[6] = v27;
    v18[7] = a3;
    v18[8] = a2;
    v18[9] = a5;
    v19 = a5;
    v20 = swift_allocObject();
    v20[2] = a7;
    v20[3] = a10;
    v20[4] = a11;
    v20[5] = a12;
    v20[6] = v27;
    v20[7] = a3;
    v20[8] = a2;
    v20[9] = a5;
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = a10;
    v21[4] = a11;
    v21[5] = a12;
    v21[6] = v27;
    v21[7] = a3;
    v21[8] = a6;
    v21[9] = a2;
    v21[10] = a5;
    v22 = swift_allocObject();
    v22[2] = v17;
    v22[3] = a10;
    v22[4] = a11;
    v22[5] = a12;
    v22[6] = v27;
    v22[7] = a3;
    v22[8] = a6;
    v22[9] = a2;
    v22[10] = v19;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    sub_1974CE198(a3, a4, sub_1974AD3CC, v18, sub_1974AD42C, v20, sub_1974AD480, v21, sub_1974AD4E8, v22, v17, a8, a9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000018, 0x80000001975260B0);
    v24 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v24);

    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975260D0);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974A4D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a5;
  v28 = a7;
  v12 = *a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v26 - v16;
  v18 = MEMORY[0x1E69E77B0];
  sub_197434244(*(v12 + *MEMORY[0x1E69E77B0]), *(v12 + *MEMORY[0x1E69E77B0]), a8, a8, v29);
  v19 = v30;
  v20 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v21 = *(v12 + *v18 + 8);
  v22 = (*(v20 + 72))(a1, v21, a9, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v23 = v28;
  sub_197454D38(v27, v22, a6, v21, v28, a9);
  v24 = sub_1975213EC();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_1974C1E20(a1, v17, a6, v23);
  swift_unknownObjectRelease();
  return sub_1973F7DA4(v17, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A4F70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27[1] = a4;
  v28 = a7;
  v27[0] = a5;
  v12 = *a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v27 - v16;
  v18 = MEMORY[0x1E69E77B0];
  sub_197434244(*(v12 + *MEMORY[0x1E69E77B0]), *(v12 + *MEMORY[0x1E69E77B0]), a8, a8, v29);
  v20 = v30;
  v19 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v21 = *(*(v12 + *v18 + 8) + 16);
  v22 = (*(v19 + 80))(a1, v21, a9, v20, v19);
  if (!v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v29);
  v24 = v28;
  sub_197454D38(v27[0], v23, a6, v21, v28, a9);
  v25 = sub_1975213EC();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  sub_1974C1E20(a1, v17, a6, v24);
  swift_unknownObjectRelease();
  return sub_1973F7DA4(v17, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A5170(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a5;
  v34[1] = a4;
  v39 = a1;
  v13 = *a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v35 = v34 - v17;
  v18 = MEMORY[0x1E69E77B0];
  v37 = *(v13 + *MEMORY[0x1E69E77B0]);
  v38 = a9;
  sub_197434244(v37, v37, v38, v38, v49);
  v20 = v50;
  v19 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v36 = *(v19 + 88);
  v21 = *(v13 + *v18 + 8);
  v22 = *(v21 + 16);
  WitnessTable = swift_getWitnessTable();
  v36(&v48, v39, v21, v22, WitnessTable, v20, v19);
  v24 = v48;
  __swift_destroy_boxed_opaque_existential_1(v49);
  v48 = v24;
  v49[0] = MEMORY[0x1E69E7CC0];
  v41 = a7;
  v42 = v37;
  v43 = v22;
  v44 = a8;
  v45 = v38;
  v46 = a10;
  v47 = v49;
  swift_getWitnessTable();
  sub_19752195C();
  v25 = v49[0];
  if (*(v49[0] + 16))
  {
    sub_1974BD348(v22, v49[0], v22, a10);
  }

  v38 = v25;
  if (sub_197521A5C())
  {
    v26 = 4;
    do
    {
      v27 = v26 - 4;
      v28 = sub_197521A3C();
      sub_1975219EC();
      if (v28)
      {
        v29 = *(v24 + 8 * v26);
        swift_unknownObjectRetain();
        v30 = v26 - 3;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v29 = sub_19752222C();
        v30 = v26 - 3;
        if (__OFADD__(v27, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      sub_197454D38(a6, v29, a7, v22, a8, a10);
      swift_unknownObjectRelease();
      ++v26;
    }

    while (v30 != sub_197521A5C());
  }

  v31 = sub_1975213EC();
  v32 = v35;
  (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
  sub_1974C1E20(v39, v32, a7, a8);
  sub_1973F7DA4(v32, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A54EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a5;
  v38 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v39 = &v38 - v18;
  v19 = MEMORY[0x1E69E77B0];
  v43 = *(v14 + *MEMORY[0x1E69E77B0]);
  v44 = a9;
  sub_197434244(v43, v43, v44, v44, v51);
  v20 = v53;
  v46 = v52;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v45 = *(v20 + 88);
  v21 = *(v14 + *v19 + 8);
  v22 = *(*(v21 + 16) + 16);
  v42 = *(v21 + 16);
  WitnessTable = swift_getWitnessTable();
  v48 = WitnessTable;
  v49 = a10;
  v23 = swift_getWitnessTable();
  v40 = a1;
  v45(&v50, a1, v21, v22, v23, v46, v20);
  v24 = v50;
  if (!v50)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v25 = __swift_destroy_boxed_opaque_existential_1(v51);
  v50 = v24;
  v51[0] = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v43;
  v27 = v44;
  *(&v38 - 8) = a7;
  *(&v38 - 7) = v28;
  *(&v38 - 6) = v22;
  *(&v38 - 5) = a8;
  *(&v38 - 4) = v27;
  *(&v38 - 3) = a10;
  *(&v38 - 2) = v51;
  sub_19752195C();
  v29 = v51[0];
  if (*(v51[0] + 16))
  {
    sub_1974BD348(v22, v51[0], v22, a10);
  }

  v46 = v29;
  if (sub_197521A5C())
  {
    v30 = 4;
    do
    {
      v31 = v30 - 4;
      v32 = sub_197521A3C();
      sub_1975219EC();
      if (v32)
      {
        v33 = *(v24 + 8 * v30);
        swift_unknownObjectRetain();
        v34 = v30 - 3;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v33 = sub_19752222C();
        v34 = v30 - 3;
        if (__OFADD__(v31, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      sub_197454D38(a6, v33, a7, v22, a8, a10);
      swift_unknownObjectRelease();
      ++v30;
    }

    while (v34 != sub_197521A5C());
  }

  v35 = sub_1975213EC();
  v36 = v39;
  (*(*(v35 - 8) + 56))(v39, 1, 1, v35);
  sub_1974C1E20(v40, v36, a7, a8);
  sub_1973F7DA4(v36, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A5890(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = *(sub_1973FE074(a5, a8) + 112);

  if (v12 == 1)
  {
    PersistentModel.persistentModelID.getter(a5, a8, &v20);
    v14 = v20;
    v15 = v21;
    v16 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((result & 1) == 0)
    {
      result = sub_197445BA8(0, *(v16 + 16) + 1, 1, v16);
      v16 = result;
      *a2 = result;
    }

    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_197445BA8((v17 > 1), v18 + 1, 1, v16);
      v16 = result;
      *a2 = result;
    }

    *(v16 + 16) = v18 + 1;
    v19 = v16 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v15;
  }

  return result;
}

uint64_t sub_1974A5994(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a1;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(v19 + *MEMORY[0x1E69E77B0] + 8);
  v23 = (*(v21 + 72))(a1, v22, a14, v20, v21);
  swift_beginAccess();
  v24 = *(a3 + 16);

  PersistentModel.persistentModelID.getter(v22, a14, &v33);
  v25 = v33;
  LOBYTE(v21) = v34;
  LOBYTE(a3) = sub_197455CE4(v33, v34, v24);

  sub_1974028C8(v25, v21);
  if ((a3 & 1) == 0)
  {
    if (a4)
    {
      swift_beginAccess();
      v26 = *(a5 + 16);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_197433F80(0, v26[2] + 1, 1, v26);
        *(a5 + 16) = v26;
      }

      v28 = v26[2];
      v29 = v26[3];
      if (v28 >= v29 >> 1)
      {
        v31 = v26[2];
        v26 = sub_197433F80((v29 > 1), v28 + 1, 1, v26);
        v28 = v31;
        *(a5 + 16) = v26;
      }

      sub_19743F3E4(v28, v23, (a5 + 16), v22, a14);
      *(a5 + 16) = v26;
      swift_endAccess();
    }

    swift_unknownObjectRetain();
    a6(a8, v23, a14);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1974A5BC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v5 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v6 = *(v4 + 88);
  v7 = *(v3 + *MEMORY[0x1E69E77B0] + 8);
  v8 = *(v7 + 16);
  WitnessTable = swift_getWitnessTable();
  v6(&v12, a1, v7, v8, WitnessTable, v5, v4);
  v11 = *(v3 + *MEMORY[0x1E69E77B0]);
  swift_getWitnessTable();
  sub_19752195C();
}

void *sub_1974A5D94(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 88);
  v17 = v6;
  v10 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
  v11 = *(*(v10 + 16) + 16);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  result = v9(&v18, a1, v10, v11, WitnessTable, v7, v8);
  if (v18)
  {
    MEMORY[0x1EEE9AC00](a5 + 16, v14);
    v15 = *(v17 + *MEMORY[0x1E69E77B0]);
    sub_19752195C();
  }

  return result;
}

void sub_1974A5F84(uint64_t *a1, uint64_t *a2, char a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *a1;
  swift_beginAccess();
  v19 = *a2;

  PersistentModel.persistentModelID.getter(a11, a15, &v29);
  v20 = v29;
  v21 = v30;
  v22 = sub_197455CE4(v29, v30, v19);

  sub_1974028C8(v20, v21);
  if ((v22 & 1) == 0)
  {
    if (a3)
    {
      swift_beginAccess();
      v23 = *a4;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_197433F80(0, v23[2] + 1, 1, v23);
        *a4 = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_197433F80((v25 > 1), v26 + 1, 1, v23);
        *a4 = v23;
      }

      sub_19743F3E4(v26, v18, a4, a11, a15);
      *a4 = v23;
      swift_endAccess();
    }

    a5(a7, v18, a15);
  }
}

void sub_1974A6128(char a1, uint64_t a2, uint64_t a3)
{
  if (PersistentModel.modelContext.getter(a2, a3))
  {

    v6 = *(sub_1973FE074(a2, a3) + 112);

    if (v6 == 1 && (a1 & 1) == 0)
    {
      sub_1974258A4(a2, a3);
    }

    type metadata accessor for ModelSnapshot();
    swift_unknownObjectRetain();
    sub_1975122EC();
    swift_unknownObjectRelease();
    swift_getWitnessTable();

    sub_19751206C();
  }

  else
  {
    sub_1975223EC();
    __break(1u);
  }
}

uint64_t sub_1974A6264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1973FE074(a2, a3);
  *(v8 + 24) |= 0x800u;

  v9 = sub_1973F68A4(a2, a3);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_1973F7E64(v11, v18);
      v12 = *v18[2];
      v13 = sub_197521FFC();
      v14 = swift_conformsToProtocol2();
      if (v14)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        sub_1974A63B4(v13, a1, v18, v4, a2, v13, a3, v14);
      }

      sub_1973F82A8(v18);
      v11 += 96;
      --v10;
    }

    while (v10);
  }

  v16 = sub_1973FE074(a2, a3);
  *(v16 + 24) &= ~0x800u;
}

uint64_t sub_1974A63B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = v33 - v19;
  if (*(a2 + 16))
  {
    v21 = *a3;
    v22 = a3[1];
    result = sub_1973F4028(*a3, v22);
    if (v23)
    {
      sub_1973FE1B4(*(a2 + 56) + 32 * result, v44, &qword_1EAF2AF20, &unk_19752F320);
      sub_197434244(a5, a6, a7, a8, &v39);
      v33[0] = a6;
      swift_getExtendedExistentialTypeMetadata();
      type metadata accessor for _KKMDBackingData();
      if (!swift_dynamicCast())
      {
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v24 = v34;
      sub_1973FE1B4(v44, v33, &qword_1EAF2AF20, &unk_19752F320);
      if (v33[3])
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        if (swift_dynamicCast())
        {
          if (v34)
          {
            v41 = v36;
            v42 = v37;
            v43 = v38;
            v39 = v34;
            v40 = v35;
            sub_1973FE1B4(&v39, &v34, &qword_1EAF2B600, &qword_19752EA58);

            v26 = v37;
            if (v37 == 1)
            {
              __swift_destroy_boxed_opaque_existential_1(&v34 + 1);
              v27 = *(v24 + 16);
              *(&v35 + 1) = v25;
              *&v34 = swift_allocObject();
              sub_1973FE1B4(&v39, v34 + 16, &qword_1EAF2B600, &qword_19752EA58);

              sub_197511DB4(&v34, v21, v22);
            }

            else
            {
              v31 = v38;
              v32 = *(&v37 + 1);
              __swift_destroy_boxed_opaque_existential_1(&v34 + 1);
              sub_1974AD580(v26, v32, v31, a3, v24, a4, a5, a7);
            }

            sub_1973F7DA4(&v39, &qword_1EAF2B600, &qword_19752EA58);
            goto LABEL_17;
          }
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
          v35 = 0u;
          v34 = 0u;
        }
      }

      else
      {
        sub_1973F7DA4(v33, &qword_1EAF2AF20, &unk_19752F320);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
      }

      sub_1973F7DA4(&v34, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_1973FE1B4(v44, &v39, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v40 + 1))
      {
        if (swift_dynamicCast())
        {
          sub_1974AD580(v34, *(&v34 + 1), v35, a3, v24, a4, a5, a7);

LABEL_17:
          v29 = a3[2];
          v30 = sub_1975213EC();
          (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
          sub_1974C1E20(v29, v20, a5, a7);

          sub_1973F7DA4(v20, &qword_1EAF2B658, &unk_19752F180);
          return sub_1973F7DA4(v44, &qword_1EAF2AF20, &unk_19752F320);
        }
      }

      else
      {
        sub_1973F7DA4(&v39, &qword_1EAF2AF20, &unk_19752F320);
      }

      v28 = *(v24 + 16);
      sub_1973FE1B4(v44, &v39, &qword_1EAF2AF20, &unk_19752F320);

      sub_197511DB4(&v39, v21, v22);

      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_1974A6950(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      swift_unknownObjectRetain();
      sub_1974327FC(&v13, v11, v12);
      result = swift_unknownObjectRelease();
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1974A6A54(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1974A4780(a1, a2);
  v30 = v8;
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = v7;
  v10 = PersistentModel.modelContext.getter(a1, a2);
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_15:
      __break(1u);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v31);
      __break(1u);
      goto LABEL_20;
    }

    v13 = Strong;
  }

  v3 = *(v13 + 80);

  v15 = sub_1973F7AAC();
  if (v3[2])
  {
    v17 = sub_1973F4028(v15, v16);
    v19 = v18;

    if (v19)
    {
      v20 = *(v3[7] + 8 * v17);

      v32 = sub_1974BFAD8(MEMORY[0x1E69E7CC0]);
      swift_beginAccess();
      v21 = *(v20 + 64);
      swift_beginAccess();
      v22 = *(v20 + 72);
      v31[0] = v21;

      sub_1974EE570(v23);

      v3 = 0;
      sub_1974EEA08(v31);

      v24 = v31[0];
      v25 = v31[0][2];
      if (!v25)
      {
LABEL_13:

        swift_unknownObjectRelease();

        swift_beginAccess();
        return v32;
      }

      v26 = 0;
      v27 = v31[0] + 4;
      while (v26 < v24[2])
      {
        sub_197413BF4(v27, v31);
        sub_1974A6DF4(v31, v4, v9, v30, v11, &v32, a1, a2);
        ++v26;
        __swift_destroy_boxed_opaque_existential_1(v31);
        v27 += 5;
        if (v25 == v26)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
  }

  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197526220);
  v29 = sub_1973F7AAC();
  MEMORY[0x19A8DFF80](v29);

LABEL_20:
  sub_1975223EC();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1974A6DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_197413BF4(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Relationship();
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (*(v30 + 168))
  {

LABEL_4:
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 32))(v14, v15);
    v18 = v17;
    swift_getObjectType();
    v20 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v21 = (*(v19 + 32))(v20, v19);
    (*(a4 + 24))(v31, v21);

    swift_beginAccess();
    sub_19743A964(v31, v16, v18);
    return swift_endAccess();
  }

  swift_beginAccess();
  v23 = *(v30 + 48);
  if (v23)
  {
    v24 = *v23;

    v25 = sub_197521FFC();
    v26 = swift_conformsToProtocol2();
    if (v26)
    {
      v27 = v25 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      sub_1974A70EC(v25, a2, a3, a4, v30, a5, a6, a7, v25, a8, v26);
    }
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197526270);
    v31[6] = v30;
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974A70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v15 = a10;
  sub_197434244(a8, a9, a10, a11, &v95);
  *&v84 = a9;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if (!swift_dynamicCast())
  {
    goto LABEL_92;
  }

  v16 = v89;
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v18 = *(a5 + 16);
  v19 = *(a5 + 24);
  v81 = a5;
  v20 = *(a4 + 24);

  v20(v100, v18, v19, ObjectType, a4);

  sub_1973FE1B4(v100, &v89, &qword_1EAF2AF20, &unk_19752F320);
  v21 = MEMORY[0x1E69E7CA0];
  if (!*(&v90 + 1))
  {
    sub_1973F7DA4(&v89, &qword_1EAF2AF20, &unk_19752F320);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
LABEL_8:
    v22 = v81;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    goto LABEL_8;
  }

  v22 = v81;
  if (v95)
  {
    v89 = v95;
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = v99;

    sub_1974416CC(v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v23 = swift_dynamicCast();
    v24 = v95;
LABEL_20:
    if (v23)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_25;
  }

LABEL_9:
  sub_1973F7DA4(&v95, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_1973FE1B4(v100, &v95, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v96 + 1))
  {
    sub_1973F7DA4(&v95, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_1973FE1B4(v100, &v95, &qword_1EAF2AF20, &unk_19752F320);
    if (!*(&v96 + 1))
    {
      sub_1973F7DA4(&v95, &qword_1EAF2AF20, &unk_19752F320);
      v27 = 0;
      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v23 = swift_dynamicCast();
    v24 = v89;
    goto LABEL_20;
  }

  v25 = v89;
  v26 = *(v89 + 16);
  if (v26)
  {
    v80 = v16;
    *&v89 = MEMORY[0x1E69E7CC0];
    sub_197444B2C(0, v26, 0);
    v27 = v89;
    v28 = (v25 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      *&v95 = v29;
      BYTE8(v95) = v30;
      sub_1974028EC(v29, v30);
      v31 = sub_1974309B4(&v95);
      v33 = v32;
      sub_1974028C8(v29, v30);
      *&v89 = v27;
      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_197444B2C((v34 > 1), v35 + 1, 1);
        v27 = v89;
      }

      v28 += 16;
      *(v27 + 16) = v35 + 1;
      v36 = v27 + 16 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v33;
      --v26;
    }

    while (v26);

    v16 = v80;
    v22 = v81;
    v21 = MEMORY[0x1E69E7CA0];
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:
  v11 = a6;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v37 = *(v16 + 16);
  v38 = *(v37 + 16);
  if (*(v38 + 16))
  {
    v39 = v21;
    v40 = *(v22 + 16);
    v41 = *(v22 + 24);
    v42 = v22;

    v43 = sub_1973F4028(v40, v41);
    v45 = v44;
    v15 = v39;

    if (v45)
    {
      v46 = *(*(v38 + 56) + 8 * v43);
      swift_beginAccess();
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v47 = *(v37 + 32);
        if (v46 < *(v47 + 16))
        {
          sub_1973FE1B4(v47 + 32 * v46 + 32, v94, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_92:
      *&v95 = 0;
      *(&v95 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v89 = v95;
      MEMORY[0x19A8DFF80](0xD00000000000003FLL, 0x80000001975262A0);
      (*(v15 + 56))(&v95, v11, v15);
      swift_getExtendedExistentialTypeMetadata();
      sub_1975227FC();
      __swift_destroy_boxed_opaque_existential_1(&v95);
      result = sub_1975223EC();
      __break(1u);
      return result;
    }
  }

  else
  {
    v42 = v22;
    v48 = *(v16 + 16);
  }

  memset(v94, 0, sizeof(v94));
LABEL_32:

  sub_1973FE1B4(v94, v83, &qword_1EAF2AF20, &unk_19752F320);
  v49 = v42;
  if (v83[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
    if (swift_dynamicCast())
    {
      if (v84)
      {
        sub_1973F7DA4(&v95, &qword_1EAF2B5F8, &qword_19752EA50);
        v91 = v86;
        v92 = v87;
        v93 = v88;
        v89 = v84;
        v90 = v85;
        sub_1973FE1B4(&v89, &v95, &qword_1EAF2B600, &qword_19752EA58);
        v84 = v89;
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v88 = v93;

        sub_1974416CC(v87);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
        if (swift_dynamicCast())
        {
          v50 = v83[0];
        }

        else
        {
          v50 = 0;
        }

LABEL_57:
        if (v27)
        {
          goto LABEL_58;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
    }
  }

  else
  {
    sub_1973F7DA4(v83, &qword_1EAF2AF20, &unk_19752F320);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
  }

  sub_1973F7DA4(&v84, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_1973FE1B4(v94, &v89, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v90 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    if (swift_dynamicCast())
    {
      v51 = v84;
      v52 = *(v84 + 16);
      if (!v52)
      {

        v50 = MEMORY[0x1E69E7CC0];
        if (v27)
        {
          goto LABEL_58;
        }

        goto LABEL_60;
      }

      *&v84 = MEMORY[0x1E69E7CC0];
      sub_197444B2C(0, v52, 0);
      v50 = v84;
      v53 = (v51 + 40);
      do
      {
        v54 = *(v53 - 1);
        v55 = *v53;
        *&v89 = v54;
        BYTE8(v89) = v55;
        sub_1974028EC(v54, v55);
        v56 = sub_1974309B4(&v89);
        v58 = v57;
        sub_1974028C8(v54, v55);
        *&v84 = v50;
        v60 = *(v50 + 16);
        v59 = *(v50 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_197444B2C((v59 > 1), v60 + 1, 1);
          v50 = v84;
        }

        v53 += 16;
        *(v50 + 16) = v60 + 1;
        v61 = v50 + 16 * v60;
        *(v61 + 32) = v56;
        *(v61 + 40) = v58;
        --v52;
      }

      while (v52);

      v49 = v81;
      goto LABEL_57;
    }
  }

  else
  {
    sub_1973F7DA4(&v89, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE1B4(v94, &v89, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v90 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    if (swift_dynamicCast())
    {
      v50 = v84;
    }

    else
    {
      v50 = 0;
    }

    if (v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
    sub_1973F7DA4(&v89, &qword_1EAF2AF20, &unk_19752F320);
    v50 = 0;
    if (v27)
    {
LABEL_58:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
      v63 = v27;
      goto LABEL_61;
    }
  }

LABEL_60:
  v63 = 0;
  v62 = 0;
  *(&v89 + 1) = 0;
  *&v90 = 0;
LABEL_61:
  *&v89 = v63;
  *(&v90 + 1) = v62;
  if (v50)
  {
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v65 = v50;
  }

  else
  {
    v65 = 0;
    v64 = 0;
    *(&v84 + 1) = 0;
    *&v85 = 0;
  }

  *&v84 = v65;
  *(&v85 + 1) = v64;

  sub_1973F7DA4(&v84, &qword_1EAF2AF20, &unk_19752F320);
  sub_1973F7DA4(&v89, &qword_1EAF2AF20, &unk_19752F320);
  if (v50)
  {
    if (*(v65 + 16))
    {
      *&v89 = MEMORY[0x1E69E7CD0];
      sub_1974A2780(v65);

      v66 = v89;
      if (!v27)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }
  }

  v66 = 0;
  if (!v27)
  {
    goto LABEL_74;
  }

LABEL_70:
  if (*(v27 + 16))
  {
    *&v89 = MEMORY[0x1E69E7CD0];
    sub_1974A2780(v27);

    v67 = v89;
    v82 = 0;
    if (!v66)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

LABEL_74:
  v67 = 0;
  v82 = 0;
  if (!v66)
  {
LABEL_79:
    if (!v67)
    {
      goto LABEL_85;
    }

    goto LABEL_81;
  }

LABEL_75:
  if (!*(v66 + 16))
  {
    goto LABEL_79;
  }

  v82 = v66;
  if (!v67)
  {
    goto LABEL_86;
  }

  v68 = *(v67 + 16);

  if (v68)
  {
    sub_1974AA194(v67);
  }

LABEL_81:
  v69 = *(v67 + 16);

  if (!v69)
  {
    goto LABEL_85;
  }

  if (v66)
  {
    if (*(v66 + 16))
    {
      sub_1974AA194(v66);

      goto LABEL_86;
    }

LABEL_85:
  }

LABEL_86:
  sub_1973FE1B4(&v95, &v84, &qword_1EAF2B5F8, &qword_19752EA50);
  if (v84)
  {
    v92 = v87;
    v93 = v88;
    v90 = v85;
    v91 = v86;
    v89 = v84;
    v70 = v87;

    sub_1974416CC(v70);
    *&v92 = v82;
    *(&v92 + 1) = v67;
    v93 = 0uLL;
    v71 = *(v49 + 16);
    v72 = *(v49 + 24);
    *(&v85 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
    *&v84 = swift_allocObject();
    sub_1973FE1B4(&v89, v84 + 16, &qword_1EAF2B600, &qword_19752EA58);
    swift_beginAccess();

    sub_19743A964(&v84, v71, v72);
    swift_endAccess();

    sub_1973F7DA4(v94, &qword_1EAF2AF20, &unk_19752F320);
    sub_1973F7DA4(&v95, &qword_1EAF2B5F8, &qword_19752EA50);
    sub_1973F7DA4(v100, &qword_1EAF2AF20, &unk_19752F320);
    v73 = &v89;
    v74 = &qword_1EAF2B600;
    v75 = &qword_19752EA58;
  }

  else
  {

    sub_1973F7DA4(&v84, &qword_1EAF2B5F8, &qword_19752EA50);
    v76 = *(v49 + 16);
    v77 = *(v49 + 24);
    *(&v90 + 1) = &type metadata for _UnorderedCollectionDeltaSnapshot;
    v78 = swift_allocObject();
    *&v89 = v78;
    v78[2] = v82;
    v78[3] = v67;
    v78[4] = 0;
    v78[5] = 0;
    swift_beginAccess();

    sub_19743A964(&v89, v76, v77);
    swift_endAccess();

    sub_1973F7DA4(v94, &qword_1EAF2AF20, &unk_19752F320);
    sub_1973F7DA4(&v95, &qword_1EAF2B5F8, &qword_19752EA50);
    v73 = v100;
    v74 = &qword_1EAF2AF20;
    v75 = &unk_19752F320;
  }

  sub_1973F7DA4(v73, v74, v75);
}

BOOL sub_1974A7EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 & 0x38) != 0;
}

uint64_t sub_1974A7ED0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  *(v2 + 24) &= 0xFFFFFFC7;
}

uint64_t sub_1974A7F04(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  *(v2 + 24) &= 0xFFFFFFF8;
}

uint64_t sub_1974A7F38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  *(v2 + 24) &= 0xFFFFFFC0;
}

uint64_t sub_1974A7F6C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFDF | v5;
}

uint64_t sub_1974A7FC4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFFB | v5;
}

uint64_t sub_1974A801C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 1) & 1;
}

uint64_t sub_1974A8048(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return v2 & 1;
}

uint64_t sub_1974A8074(uint64_t a1, uint64_t a2)
{
  result = PersistentModel.modelContext.getter(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_41;
      }

      v6 = Strong;
    }

    v8 = *(v6 + 16);

    v9 = *(v8 + 72);

    v10 = sub_1973F7AAC();
    if (!*(v9 + 16))
    {
      goto LABEL_37;
    }

    v12 = sub_1973F4028(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v12);

      swift_beginAccess();
      v16 = *(v15 + 88);
      v39 = v4;
      if ((v16 & 0xC000000000000001) != 0)
      {

        sub_1975220AC();
        type metadata accessor for Schema.Relationship();
        sub_1973FA5E0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
        sub_197521C1C();
        v16 = v44;
        v17 = v45;
        v4 = v46;
        v18 = v47;
        v19 = v48;
      }

      else
      {
        v20 = -1 << *(v16 + 32);
        v17 = v16 + 56;
        v4 = ~v20;
        v21 = -v20;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v19 = v22 & *(v16 + 56);

        v18 = 0;
      }

      v23 = (v4 + 64) >> 6;
      while (1)
      {
        if (v16 < 0)
        {
          if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v27 = v41, v26 = v18, v4 = v19, !v41))
          {
LABEL_34:
            sub_1974171EC();
          }
        }

        else
        {
          v24 = v18;
          v25 = v19;
          v26 = v18;
          if (!v19)
          {
            while (1)
            {
              v26 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              if (v26 >= v23)
              {
                goto LABEL_34;
              }

              v25 = *(v17 + 8 * v26);
              ++v24;
              if (v25)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_37:

            break;
          }

LABEL_21:
          v4 = (v25 - 1) & v25;
          v27 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

          if (!v27)
          {
            goto LABEL_34;
          }
        }

        swift_beginAccess();
        if (*(v27 + 88) == 2)
        {
        }

        else
        {
          v28 = sub_19752282C();

          if ((v28 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        swift_beginAccess();
        v29 = *(v27 + 48);
        if (!v29)
        {
          goto LABEL_42;
        }

        v30 = *v29;

        v31 = sub_197521FFC();
        v32 = swift_conformsToProtocol2();
        if (v32)
        {
          v33 = v31 == 0;
        }

        else
        {
          v33 = 1;
        }

        if (v33)
        {
          sub_1975221EC();

          v41 = 0x70797420746F6F52;
          v42 = 0xEA00000000002065;
          v36 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v36);

          v34 = &v41;
          MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197526400);
          goto LABEL_44;
        }

        sub_1974A86D8(v31, v38, v29, v39, v27, a1, v31, a2, v32);

LABEL_15:

        v18 = v26;
        v19 = v4;
      }
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
    v43 = v38;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525F90);
    v34 = *(v4 + 16);
    if (v34)
    {
      goto LABEL_45;
    }

    v35 = swift_weakLoadStrong();
    if (v35)
    {
      v37 = v35;
      goto LABEL_47;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1975221EC();
    v34 = &v41;
    MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x8000000197525FC0);
    type metadata accessor for Schema.Relationship();
    sub_19752235C();
    while (1)
    {
LABEL_44:
      sub_1975223EC();
      __break(1u);
LABEL_45:
      v37 = v34;
LABEL_47:
      v43 = v37;
      type metadata accessor for ModelContainer();

      sub_19752235C();

      v34 = &v44;
      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    }
  }

  return result;
}

uint64_t sub_1974A86D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a4 + 16))
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v16 = a3;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
LABEL_12:

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
      v30 = *(a5 + 72);
      v31 = *(a5 + 80);

      MEMORY[0x19A8DFF80](v30, v31);

      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197526030);
LABEL_14:
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    v15 = Strong;
    a3 = v16;
  }

  v32 = a3;
  v18 = *(v15 + 16);

  v19 = *(v18 + 72);

  swift_beginAccess();
  if (!*(v19 + 16))
  {
    goto LABEL_12;
  }

  v21 = *(a5 + 72);
  v20 = *(a5 + 80);

  v22 = sub_1973F4028(v21, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = *(*(v19 + 56) + 8 * v22);

  v26 = *(v25 + 144);
  if (!v26)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197526060);
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_14;
  }

  v27 = *(v25 + 152);
  v28 = *(sub_1973FE074(a6, a8) + 112);

  if (v28 == 1)
  {
    sub_1974258A4(a6, a8);
  }

  sub_1974A89B4(v26, a2, a1, v32, a4, a6, a7, v26, a8, a9, v27);
}

uint64_t sub_1974A89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a11;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a11;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a5;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a9;
  v18 = a6;
  v23 = a6;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a2;
  v17[7] = a3;
  v19 = a3;
  v17[8] = a5;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = a11;
  v20[6] = a2;
  v20[7] = v19;
  v20[8] = a5;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  sub_1974CE198(v19, a4, sub_1974ADF6C, v15, sub_1974ADF84, v16, sub_1974ADF9C, v17, sub_1974ADFF4, v20, v23, a7, a8);
}

uint64_t sub_1974A8BA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v15);
  v12 = v16;
  v13 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v13 + 72))(a1, *(v10 + *v11 + 8), a8, v12, v13);
  sub_1974B7028();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1974A8CB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v18);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v14 = *(*(v10 + *v11 + 8) + 16);
  v15 = (*(v13 + 80))(a1, v14, a8, v12, v13);
  if (!v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1974B7028(v16, v14, a8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1974A8DD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v18);
  v11 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v12 = *(v10 + 88);
  v13 = *(v8 + *v9 + 8);
  v14 = *(v13 + 16);
  WitnessTable = swift_getWitnessTable();
  v12(&v17, a1, v13, v14, WitnessTable, v11, v10);
  swift_getWitnessTable();
  sub_19752195C();

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1974A8F74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  v9 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v21);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v12 = *(v11 + 88);
  v13 = *(v8 + *v9 + 8);
  v14 = *(*(v13 + 16) + 16);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v12(&v20, a1, v13, v14, WitnessTable, v10, v11);
  v16 = v20;
  if (!v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v17 = __swift_destroy_boxed_opaque_existential_1(v21);
  v21[0] = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_19752195C();
}

uint64_t sub_1974A9160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, v3);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = (*(v6 + 8))(v9, a1);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v10;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    return (*(v11 + 32))(boxed_opaque_existential_1Tm, v9, v10);
  }

  return result;
}

uint64_t sub_1974A92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1974A33B8(a2, a5, a6);
  v7 = 0;
  v8 = v6 + 64;
  v39 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = MEMORY[0x1E69E7CC8];
  v36 = v6 + 64;
  while (v11)
  {
    v16 = v7;
LABEL_11:
    v17 = __clz(__rbit64(v11)) | (v16 << 6);
    v18 = *(*(v39 + 48) + 8 * v17);
    v19 = (*(v39 + 56) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);

    MEMORY[0x19A8DFF80](v20, v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v13;
    v23 = sub_1973F7814(v18);
    v25 = v13[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_22;
    }

    v29 = v24;
    if (v13[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v23;
        sub_197479770();
        v23 = v34;
      }
    }

    else
    {
      sub_197477E60(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1973F7814(v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_24;
      }
    }

    v11 &= v11 - 1;
    v13 = v40;
    if (v29)
    {
      v14 = (v40[7] + 16 * v23);
      v15 = v14[1];
      *v14 = a3;
      v14[1] = a4;
    }

    else
    {
      v40[(v23 >> 6) + 8] |= 1 << v23;
      *(v40[6] + 8 * v23) = v18;
      v31 = (v40[7] + 16 * v23);
      *v31 = a3;
      v31[1] = a4;
      v32 = v40[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_23;
      }

      v40[2] = v33;
    }

    v7 = v16;
    v8 = v36;
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v13;
    }

    v11 = *(v8 + 8 * v16);
    ++v7;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_19752202C();
  result = sub_1975229CC();
  __break(1u);
  return result;
}

void sub_1974A953C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 environment];
  v7 = sub_1975215FC();

  if (*(v7 + 16))
  {
    v8 = sub_1973F4028(a1, a2);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      goto LABEL_22;
    }
  }

  v11 = [v3 arguments];
  v12 = sub_1975219CC();

  v13 = *(v12 + 16);

  v34 = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_26;
  }

  v14 = [v3 arguments];
  v15 = sub_1975219CC();

  if (!*(v15 + 16))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v16 = 0;
  v17 = 1;
  while (1)
  {
    v19 = *(v15 + v16 + 32);
    v18 = *(v15 + v16 + 40);

    MEMORY[0x19A8DFF80](a1, a2);
    if (v19 == 45 && v18 == 0xE100000000000000)
    {
    }

    else
    {
      v21 = sub_19752282C();

      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = [v3 arguments];
    v23 = sub_1975219CC();

    v24 = *(v23 + 16);

    if (v17 < v24)
    {
      break;
    }

LABEL_15:
    if (v34 == v17)
    {
      return;
    }

    v25 = [v3 arguments];
    v15 = sub_1975219CC();

    v16 += 16;
    if (v17++ >= *(v15 + 16))
    {
      goto LABEL_18;
    }
  }

  v27 = [v3 arguments];
  v28 = sub_1975219CC();

  if (v17 >= *(v28 + 16))
  {
LABEL_26:
    __break(1u);
    return;
  }

  v10 = (v28 + v16 + 48);
LABEL_22:
  v30 = *v10;
  v29 = v10[1];

  v31 = sub_1974F923C(&unk_1F0BA51C8);
  swift_arrayDestroy();
  v32 = sub_1974F923C(&unk_1F0BA5278);
  swift_arrayDestroy();
  v33 = sub_1974248B8(v30, v29, v31);

  if ((v33 & 1) == 0)
  {
    sub_1974248B8(v30, v29, v32);
  }
}

uint64_t sub_1974A98BC()
{
  sub_1975217EC();
  v0 = xpc_copy_entitlement_for_self();

  if (v0)
  {
    if (xpc_array_get_count(v0) >= 1 && xpc_array_get_string(v0, 0))
    {
      v1 = sub_19752186C();
      swift_unknownObjectRelease();
      return v1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1974A9950(uint64_t a1, uint64_t *a2)
{
  v22 = *a2;
  swift_beginAccess();
  v4 = *(a1 + 32);

  v5 = sub_197473184(a2, v4);

  if ((v5 & 1) == 0)
  {
    v7 = *(a1 + 32);
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v8 = *(a1 + 32);
      }

      sub_1975220AC();
      sub_1973FA5E0(&qword_1EAF2B670, type metadata accessor for Schema.Entity);
      result = sub_197521C1C();
      v7 = v24;
      v10 = v25;
      v11 = v26;
      v12 = v27;
      v13 = v28;
    }

    else
    {
      v14 = -1 << *(v7 + 32);
      v10 = v7 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v7 + 56);

      v12 = 0;
    }

    v17 = (v11 + 64) >> 6;
    while (1)
    {
      if (v7 < 0)
      {
        if (!sub_19752212C() || (swift_dynamicCast(), (v18 = v23) == 0))
        {
LABEL_22:
          v6 = 0;
LABEL_23:
          sub_1974171EC();
          return v6;
        }
      }

      else
      {
        v20 = v12;
        v21 = v13;
        if (!v13)
        {
          while (1)
          {
            v12 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v12 >= v17)
            {
              goto LABEL_22;
            }

            v21 = *(v10 + 8 * v12);
            ++v20;
            if (v21)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
          return result;
        }

LABEL_12:
        v13 = (v21 - 1) & v21;
        v18 = *(*(v7 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));

        if (!v18)
        {
          goto LABEL_22;
        }
      }

      v19 = sub_1974A9950(v18, a2);

      if (v19)
      {
        v6 = 1;
        goto LABEL_23;
      }
    }
  }

  return 1;
}

BOOL sub_1974A9BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a1;
    if (a1 == a3)
    {
      break;
    }

    v6 = sub_1975214CC();
    if (!v6)
    {
      break;
    }

    a1 = v6;
  }

  while (swift_conformsToProtocol2());
  return v5 == a3;
}

unint64_t sub_1974A9C38(void *a1)
{
  v1 = a1;
  v2 = &off_1E74AD000;
  v3 = [a1 subentities];
  sub_1974ADEC0(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v4 = sub_1975219CC();

  if (v4 >> 62)
  {
    goto LABEL_53;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v1 v2[475]];
  v7 = sub_1975219CC();

  v8 = [v1 v2[475]];
  v9 = sub_1975219CC();

  if (v9 >> 62)
  {
    v10 = sub_1975220EC();
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_6:
      v11 = 0;
      v44 = v10;
      v45 = v9 & 0xC000000000000001;
      v41 = v9 + 32;
      v42 = v9 & 0xFFFFFFFFFFFFFF8;
      v40 = v9;
      do
      {
        if (v45)
        {
          v14 = MEMORY[0x19A8E0960](v11, v9);
        }

        else
        {
          if (v11 >= *(v42 + 16))
          {
            goto LABEL_51;
          }

          v14 = *(v41 + 8 * v11);
        }

        v15 = v14;
        v16 = __OFADD__(v11++, 1);
        if (v16)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v5 = sub_1975220EC();
          goto LABEL_3;
        }

        v17 = sub_1974A9C38(v14);
        v18 = v17;
        v2 = (v17 >> 62);
        if (v17 >> 62)
        {
          v19 = sub_1975220EC();
        }

        else
        {
          v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = v7 >> 62;
        if (v7 >> 62)
        {
          v38 = sub_1975220EC();
          v22 = v38 + v19;
          if (__OFADD__(v38, v19))
          {
LABEL_45:
            __break(1u);
            return MEMORY[0x1E69E7CC0];
          }
        }

        else
        {
          v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v22 = v21 + v19;
          if (__OFADD__(v21, v19))
          {
            goto LABEL_45;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v20)
          {
            goto LABEL_26;
          }

          v23 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v22 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = v9;
            v25 = v19;
            goto LABEL_28;
          }
        }

        else
        {
          if (v20)
          {
LABEL_26:
            v24 = v9;
            sub_1975220EC();
            goto LABEL_27;
          }

          v23 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v9;
        v26 = *(v23 + 16);
LABEL_27:
        v25 = v19;
        v7 = sub_19752224C();
        v23 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v1 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v2)
        {
          v29 = v23;
          v30 = sub_1975220EC();
          v23 = v29;
          v28 = v30;
          if (!v30)
          {
LABEL_7:

            v12 = v25 <= 0;
            v9 = v24;
            v13 = v44;
            if (!v12)
            {
              goto LABEL_48;
            }

            continue;
          }
        }

        else
        {
          v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v28)
          {
            goto LABEL_7;
          }
        }

        if (((v27 >> 1) - v1) < v25)
        {
          goto LABEL_49;
        }

        v31 = v25;
        v1 = v23 + 8 * v1 + 32;
        v46 = v23;
        if (v2)
        {
          if (v28 < 1)
          {
            goto LABEL_52;
          }

          v43 = v25;
          v2 = sub_1974ADF08();
          for (i = 0; i != v28; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6B8, &qword_19752F3A0);
            v33 = sub_197480544(v47, i, v18);
            v35 = *v34;
            (v33)(v47, 0);
            *(v1 + 8 * i) = v35;
          }

          v9 = v40;
          v13 = v44;
          v31 = v43;
        }

        else
        {
          swift_arrayInitWithCopy();

          v9 = v24;
          v13 = v44;
        }

        if (v31 > 0)
        {
          v36 = *(v46 + 16);
          v16 = __OFADD__(v36, v31);
          v37 = v36 + v31;
          if (v16)
          {
            goto LABEL_50;
          }

          *(v46 + 16) = v37;
        }
      }

      while (v11 != v13);
    }
  }

  return v7;
}

uint64_t sub_1974AA070(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19752152C();

  return sub_1974AA0CC(v5, a2, a3);
}

uint64_t sub_1974AA0CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_19752153C())
  {
    v4 = *a3;
    if (*a3 - 2048) < 0xFFFFFFFFFFFFF801 || ((v6 = sub_19752147C(), v6 < 0x800) ? (v7 = v6 == v4) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), (v4 - 515) < 2 || (v8))
    {
      sub_1975227EC();
    }

    else
    {
      sub_19752232C();
    }
  }

  else
  {
    sub_197522B2C();
  }

  return sub_197522B1C();
}

uint64_t sub_1974AA194(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        v14 = swift_unknownObjectRetain();
        sub_1974580E0(v14, v13);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1974AA2BC(uint64_t a1, unint64_t a2)
{
  v238 = *MEMORY[0x1E69E9840];
  v208 = 0;
  v217 = sub_1975212CC();
  v6 = *(*(v217 - 8) + 64);
  MEMORY[0x1EEE9AC00](v217, v7);
  v216 = v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
LABEL_207:
    v197 = *MEMORY[0x1E69E9840];
    return a2;
  }

  v11 = a1 + 56;
  v10 = *(a1 + 56);
  v12 = -1 << *(a1 + 32);
  v211 = ~v12;
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v214 = v13 & v10;
  v212 = (63 - v12) >> 6;
  v228 = (a2 + 56);
  v215 = (v8 + 8);

  v15 = 0;
  v218 = a2;
  v210 = a1;
  v209 = a1 + 56;
  while (1)
  {
    v16 = v214;
    if (v214)
    {
      goto LABEL_13;
    }

    v17 = v15;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_209;
      }

      if (v18 >= v212)
      {
LABEL_206:
        sub_1974171EC();
        goto LABEL_207;
      }

      v16 = *(v11 + 8 * v18);
      ++v17;
    }

    while (!v16);
    v15 = v18;
LABEL_13:
    v19 = *(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v16))));
    v20 = *v19;
    v21 = *(v19 + 8);
    v233 = a1;
    v234 = v11;
    v235 = v211;
    v236 = v15;
    v213 = v15;
    v214 = (v16 - 1) & v16;
    v237 = v214;
    v22 = *(a2 + 40);
    sub_197522A5C();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v225 = ObjectType;
    v226 = v21;
    v227 = v20;
    PersistentModel.persistentModelID.getter(ObjectType, v21, &v229);
    v24 = v229;
    if (v230)
    {
      if (v230 == 1)
      {
        MEMORY[0x19A8E1190](1);
        sub_1974028EC(v24, 1);
        sub_197452CB8();
        sub_1974028C8(v24, 1);
        sub_1974028C8(v24, 1);
      }

      else
      {
        MEMORY[0x19A8E1190](2);
        sub_1974028EC(v24, 2);
        sub_19750A470();
        sub_19752180C();

        sub_19750A588();
        sub_19752180C();
        sub_1974028C8(v24, 2);
        sub_1974028C8(v24, 2);
      }
    }

    else
    {
      MEMORY[0x19A8E1190](0);
      sub_1974028EC(v24, 0);
      sub_197521F4C();
      sub_1974028C8(v24, 0);
      sub_1974028C8(v24, 0);
    }

    v25 = sub_197522A9C();
    v26 = -1 << *(a2 + 32);
    v2 = v25 & ~v26;
    v27 = v2 >> 6;
    v28 = 1 << v2;
    if (((1 << v2) & v228[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    swift_unknownObjectRelease();
    a1 = v210;
    v11 = v209;
    v15 = v213;
  }

  v221 = ~v26;
  while (1)
  {
    v219 = v28;
    v30 = (*(a2 + 48) + 16 * v2);
    v32 = *v30;
    v31 = v30[1];
    v33 = swift_getObjectType();
    swift_unknownObjectRetain();
    v223 = v33;
    v224 = v31;
    PersistentModel.persistentModelID.getter(v33, v31, &v231);
    v29 = v231;
    v34 = v232;
    PersistentModel.persistentModelID.getter(v225, v226, &v229);
    v3 = v229;
    v35 = v230;
    v220 = v27;
    if (!v34)
    {
      if (!v230)
      {
        sub_1974ADEC0(0, &qword_1ED7C8630, 0x1E69E58C0);
        v74 = sub_197521F3C();
        sub_1974028C8(v3, 0);
        v75 = v29;
        v76 = 0;
LABEL_62:
        sub_1974028C8(v75, v76);
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_91;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v40 = swift_allocObject();
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      v41 = [v29 persistentStore];
      v42 = v29;
      if (v41 && (v43 = v41, v44 = [v41 identifier], v43, v44))
      {
        v45 = sub_1975217BC();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      *(v40 + 16) = v45;
      *(v40 + 24) = v47;
      v55 = v42;
      *(v40 + 33) = [v42 isTemporaryID];
      *(v40 + 32) = 1;
      v56 = [v42 URIRepresentation];
      v57 = v216;
      sub_19752127C();

      v58 = sub_19752123C();
      v60 = v59;
      (*v215)(v57, v217);
      *(v40 + 56) = v58;
      *(v40 + 64) = v60;
      v61 = [v55 entityName];
      v62 = sub_1975217BC();
      v64 = v63;

      *(v40 + 72) = v62;
      *(v40 + 80) = v64;
      v29 = v55;
      a2 = v218;
      goto LABEL_54;
    }

    if (v34 != 1)
    {
      if (v230 == 2)
      {
        v48 = v29;
        v49 = sub_19750A470();
        v51 = v50;
        if (v49 == sub_19750A470() && v51 == v52)
        {
        }

        else
        {
          v77 = sub_19752282C();

          if ((v77 & 1) == 0)
          {
            LOBYTE(v35) = 2;
            LOBYTE(v34) = 2;
            v29 = v48;
            goto LABEL_21;
          }
        }

        v78 = sub_19750A588();
        v80 = v79;
        if (v78 == sub_19750A588() && v80 == v81)
        {

          sub_1974028C8(v3, 2);
          sub_1974028C8(v48, 2);
        }

        else
        {
          v82 = sub_19752282C();

          sub_1974028C8(v3, 2);
          sub_1974028C8(v48, 2);
          if ((v82 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_91;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v40 = swift_allocObject();
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = sub_19750A470();
      *(v40 + 64) = v53;
      *(v40 + 72) = sub_19750A588();
      *(v40 + 80) = v54;
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      *(v40 + 32) = 256;
      goto LABEL_54;
    }

    if (v230 != 1)
    {
      sub_1974028EC(v29, 1);
      v40 = v29;
LABEL_54:
      v222 = v29;
      if (v35)
      {
        if (v35 == 1)
        {
          sub_1974028EC(v3, 1);
          v65 = v3;
        }

        else
        {
          type metadata accessor for PersistentIdentifierImplementation();
          v65 = swift_allocObject();
          *(v65 + 40) = 0;
          *(v65 + 48) = 0;
          *(v65 + 56) = sub_19750A470();
          *(v65 + 64) = v72;
          *(v65 + 72) = sub_19750A588();
          *(v65 + 80) = v73;
          *(v65 + 16) = 0;
          *(v65 + 24) = 0;
          *(v65 + 32) = 256;
        }
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v65 = swift_allocObject();
        *(v65 + 40) = 0;
        *(v65 + 48) = 0;
        v66 = [v3 persistentStore];
        if (v66)
        {
          v67 = v66;
          v68 = [v66 identifier];

          if (v68)
          {
            v69 = sub_1975217BC();
            v71 = v70;
          }

          else
          {
            v69 = 0;
            v71 = 0;
          }
        }

        else
        {
          v69 = 0;
          v71 = 0;
        }

        *(v65 + 16) = v69;
        *(v65 + 24) = v71;
        *(v65 + 33) = [v3 isTemporaryID];
        *(v65 + 32) = 1;
        v83 = [v3 URIRepresentation];
        v84 = v216;
        sub_19752127C();

        v85 = sub_19752123C();
        v87 = v86;
        (*v215)(v84, v217);
        *(v65 + 56) = v85;
        *(v65 + 64) = v87;
        v88 = [v3 entityName];
        v89 = sub_1975217BC();
        v91 = v90;

        *(v65 + 72) = v89;
        *(v65 + 80) = v91;
        a2 = v218;
      }

      if ((*(v40 + 56) != *(v65 + 56) || *(v40 + 64) != *(v65 + 64)) && (sub_19752282C() & 1) == 0 || (*(v40 + 72) != *(v65 + 72) || *(v40 + 80) != *(v65 + 80)) && (sub_19752282C() & 1) == 0)
      {
LABEL_20:

        v29 = v222;
LABEL_21:
        sub_1974028C8(v3, v35);
        sub_1974028C8(v29, v34);
LABEL_22:
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v92 = *(v40 + 24);
      v93 = *(v65 + 24);
      if (v92)
      {
        if (!v93)
        {
          goto LABEL_20;
        }

        if (*(v40 + 16) == *(v65 + 16) && v92 == v93)
        {

          sub_1974028C8(v3, v35);
          sub_1974028C8(v222, v34);
        }

        else
        {
          v94 = *(v65 + 24);
          v95 = sub_19752282C();

          sub_1974028C8(v3, v35);
          sub_1974028C8(v222, v34);
          if ((v95 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {

        sub_1974028C8(v3, v35);
        sub_1974028C8(v222, v34);
        if (v93)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_91;
    }

    v36 = v29[7] == v229[7] && v29[8] == v229[8];
    if (!v36 && (sub_19752282C() & 1) == 0 || (v29[9] == *(v3 + 72) ? (v37 = v29[10] == *(v3 + 80)) : (v37 = 0), !v37 && (sub_19752282C() & 1) == 0))
    {
LABEL_64:
      LOBYTE(v35) = 1;
      LOBYTE(v34) = 1;
      goto LABEL_21;
    }

    v38 = v29[3];
    v39 = *(v3 + 24);
    if (v38)
    {
      if (!v39)
      {
        goto LABEL_64;
      }

      if (v29[2] == *(v3 + 16) && v38 == v39)
      {
        sub_1974028C8(v3, 1);
        sub_1974028C8(v29, 1);
        goto LABEL_91;
      }

      v98 = *(v3 + 24);
      v74 = sub_19752282C();
      sub_1974028C8(v3, 1);
      v75 = v29;
      v76 = 1;
      goto LABEL_62;
    }

    sub_1974028C8(v3, 1);
    sub_1974028C8(v29, 1);
    if (v39)
    {
      goto LABEL_22;
    }

LABEL_91:
    v96 = PersistentModel.modelContext.getter(v223, v224);
    v97 = PersistentModel.modelContext.getter(v225, v226);
    swift_unknownObjectRelease();
    if (!v96)
    {
      break;
    }

    if (!v97)
    {
      goto LABEL_96;
    }

    if (v96 == v97)
    {
      goto LABEL_100;
    }

LABEL_23:
    v2 = (v2 + 1) & v221;
    v27 = v2 >> 6;
    v28 = 1 << v2;
    if ((v228[v2 >> 6] & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v97)
  {
LABEL_96:

    goto LABEL_23;
  }

LABEL_100:
  v99 = swift_unknownObjectRelease();
  v101 = *(a2 + 32);
  v3 = 1;
  v205[0] = ((1 << v101) + 63) >> 6;
  v14 = 8 * v205[0];
  if ((v101 & 0x3Fu) > 0xD)
  {
    goto LABEL_210;
  }

  while (2)
  {
    v205[1] = v205;
    MEMORY[0x1EEE9AC00](v99, v100);
    v103 = v205 - ((v102 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v103, v228, v102);
    v104 = *&v103[8 * v220] & ~v219;
    v105 = *(a2 + 16);
    v207 = v103;
    *&v103[8 * v220] = v104;
    v206 = v105 - 1;
    while (2)
    {
      v106 = v210;
      v107 = v209;
      v108 = v212;
      v109 = v213;
      v110 = v214;
LABEL_104:
      if (v110)
      {
LABEL_110:
        v113 = (*(v106 + 48) + ((v109 << 10) | (16 * __clz(__rbit64(v110)))));
        v115 = *v113;
        v114 = v113[1];
        v233 = v106;
        v234 = v107;
        v235 = v211;
        v236 = v109;
        v213 = v109;
        v214 = (v110 - 1) & v110;
        v237 = v214;
        v116 = *(a2 + 40);
        sub_197522A5C();
        v117 = swift_getObjectType();
        swift_unknownObjectRetain();
        v225 = v117;
        v226 = v114;
        PersistentModel.persistentModelID.getter(v117, v114, &v229);
        v118 = v229;
        if (v230)
        {
          if (v230 == 1)
          {
            MEMORY[0x19A8E1190](1);
            sub_1974028EC(v118, 1);
            sub_197452CB8();
            sub_1974028C8(v118, 1);
            sub_1974028C8(v118, 1);
          }

          else
          {
            MEMORY[0x19A8E1190](2);
            sub_1974028EC(v118, 2);
            sub_19750A470();
            sub_19752180C();

            sub_19750A588();
            sub_19752180C();
            sub_1974028C8(v118, 2);
            sub_1974028C8(v118, 2);
          }
        }

        else
        {
          MEMORY[0x19A8E1190](0);
          sub_1974028EC(v118, 0);
          sub_197521F4C();
          sub_1974028C8(v118, 0);
          sub_1974028C8(v118, 0);
        }

        v119 = sub_197522A9C();
        v120 = -1 << *(a2 + 32);
        v121 = v119 & ~v120;
        v122 = v121 >> 6;
        v123 = v3 << v121;
        if (((v3 << v121) & v228[v121 >> 6]) == 0)
        {
LABEL_102:
          swift_unknownObjectRelease();
          continue;
        }

        v222 = ~v120;
        v219 = v115;
        while (1)
        {
          v220 = v123;
          v126 = (*(a2 + 48) + 16 * v121);
          v2 = *v126;
          v127 = v126[1];
          v128 = swift_getObjectType();
          swift_unknownObjectRetain();
          v224 = v128;
          PersistentModel.persistentModelID.getter(v128, v127, &v231);
          v227 = v231;
          v125 = v232;
          PersistentModel.persistentModelID.getter(v225, v226, &v229);
          v129 = v229;
          v124 = v230;
          v221 = v122;
          if (v125)
          {
            if (v125 == 1)
            {
              v130 = v227;
              if (v230 == 1)
              {
                v131 = v227[7] == v229[7] && v227[8] == v229[8];
                if (!v131 && (sub_19752282C() & 1) == 0 || (v130[9] == v129[9] ? (v132 = v130[10] == v129[10]) : (v132 = 0), !v132 && (sub_19752282C() & 1) == 0))
                {
LABEL_117:
                  LOBYTE(v124) = 1;
                  LOBYTE(v125) = 1;
                  goto LABEL_118;
                }

                v133 = v130[3];
                v134 = v129[3];
                if (v133)
                {
                  a2 = v218;
                  if (!v134)
                  {
                    goto LABEL_117;
                  }

                  if (v130[2] == v129[2] && v133 == v134)
                  {
                    v223 = v127;
                    sub_1974028C8(v129, 1);
                    sub_1974028C8(v130, 1);
LABEL_184:
                    v127 = v223;
                    goto LABEL_185;
                  }

                  v191 = v129[3];
                  v192 = sub_19752282C();
                  sub_1974028C8(v129, 1);
                  sub_1974028C8(v130, 1);
                  if ((v192 & 1) == 0)
                  {
                    goto LABEL_119;
                  }
                }

                else
                {
                  sub_1974028C8(v129, 1);
                  sub_1974028C8(v130, 1);
                  a2 = v218;
                  if (v134)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_185;
              }

              sub_1974028EC(v227, 1);
              v135 = v130;
            }

            else
            {
              if (v230 == 2)
              {
                v142 = sub_19750A470();
                v144 = v143;
                if (v142 == sub_19750A470() && v144 == v145)
                {

                  v146 = v218;
                }

                else
                {
                  v170 = sub_19752282C();

                  v146 = v218;
                  if ((v170 & 1) == 0)
                  {
                    LOBYTE(v124) = 2;
                    LOBYTE(v125) = 2;
LABEL_182:
                    v130 = v227;
LABEL_118:
                    sub_1974028C8(v129, v124);
                    sub_1974028C8(v130, v125);
                    a2 = v218;
LABEL_119:
                    swift_unknownObjectRelease();
                    goto LABEL_120;
                  }
                }

                v171 = sub_19750A588();
                v173 = v172;
                if (v171 == sub_19750A588() && v173 == v174)
                {

                  sub_1974028C8(v129, 2);
                  sub_1974028C8(v227, 2);
                  a2 = v146;
                }

                else
                {
                  v175 = sub_19752282C();

                  sub_1974028C8(v129, 2);
                  sub_1974028C8(v227, 2);
                  a2 = v146;
                  if ((v175 & 1) == 0)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_185;
              }

              type metadata accessor for PersistentIdentifierImplementation();
              v135 = swift_allocObject();
              *(v135 + 40) = 0;
              *(v135 + 48) = 0;
              *(v135 + 56) = sub_19750A470();
              *(v135 + 64) = v147;
              *(v135 + 72) = sub_19750A588();
              *(v135 + 80) = v148;
              *(v135 + 16) = 0;
              *(v135 + 24) = 0;
              *(v135 + 32) = 256;
            }
          }

          else
          {
            if (!v230)
            {
              sub_1974ADEC0(0, &qword_1ED7C8630, 0x1E69E58C0);
              v168 = v227;
              v169 = sub_197521F3C();
              sub_1974028C8(v129, 0);
              sub_1974028C8(v168, 0);
              a2 = v218;
              if ((v169 & 1) == 0)
              {
                goto LABEL_119;
              }

              goto LABEL_185;
            }

            type metadata accessor for PersistentIdentifierImplementation();
            v135 = swift_allocObject();
            *(v135 + 40) = 0;
            *(v135 + 48) = 0;
            v136 = [v227 persistentStore];
            v223 = v127;
            if (v136 && (v137 = v136, v138 = [v136 identifier], v137, v138))
            {
              v139 = sub_1975217BC();
              v141 = v140;
            }

            else
            {
              v139 = 0;
              v141 = 0;
            }

            *(v135 + 16) = v139;
            *(v135 + 24) = v141;
            v149 = v227;
            *(v135 + 33) = [v227 isTemporaryID];
            *(v135 + 32) = v3;
            v150 = [v149 URIRepresentation];
            v151 = v216;
            sub_19752127C();

            v152 = sub_19752123C();
            v154 = v153;
            (*v215)(v151, v217);
            *(v135 + 56) = v152;
            *(v135 + 64) = v154;
            v155 = [v149 entityName];
            v156 = sub_1975217BC();
            v158 = v157;

            *(v135 + 72) = v156;
            *(v135 + 80) = v158;
            v3 = 1;
            v127 = v223;
          }

          v223 = v127;
          if (v124)
          {
            if (v124 == 1)
            {
              sub_1974028EC(v129, 1);
              v159 = v129;
            }

            else
            {
              type metadata accessor for PersistentIdentifierImplementation();
              v159 = swift_allocObject();
              *(v159 + 40) = 0;
              *(v159 + 48) = 0;
              *(v159 + 56) = sub_19750A470();
              *(v159 + 64) = v166;
              *(v159 + 72) = sub_19750A588();
              *(v159 + 80) = v167;
              *(v159 + 16) = 0;
              *(v159 + 24) = 0;
              *(v159 + 32) = 256;
            }
          }

          else
          {
            type metadata accessor for PersistentIdentifierImplementation();
            v159 = swift_allocObject();
            *(v159 + 40) = 0;
            *(v159 + 48) = 0;
            v160 = [v129 persistentStore];
            if (v160)
            {
              v161 = v160;
              v162 = [v160 identifier];

              if (v162)
              {
                v163 = sub_1975217BC();
                v165 = v164;
              }

              else
              {
                v163 = 0;
                v165 = 0;
              }

              LOBYTE(v3) = 1;
            }

            else
            {
              v163 = 0;
              v165 = 0;
            }

            *(v159 + 16) = v163;
            *(v159 + 24) = v165;
            *(v159 + 33) = [v129 isTemporaryID];
            *(v159 + 32) = v3;
            v176 = [v129 URIRepresentation];
            v177 = v216;
            sub_19752127C();

            v178 = sub_19752123C();
            v180 = v179;
            (*v215)(v177, v217);
            *(v159 + 56) = v178;
            *(v159 + 64) = v180;
            v181 = [v129 entityName];
            v182 = sub_1975217BC();
            v184 = v183;

            *(v159 + 72) = v182;
            *(v159 + 80) = v184;
            v3 = 1;
          }

          if ((*(v135 + 56) != *(v159 + 56) || *(v135 + 64) != *(v159 + 64)) && (sub_19752282C() & 1) == 0 || (*(v135 + 72) != *(v159 + 72) || *(v135 + 80) != *(v159 + 80)) && (sub_19752282C() & 1) == 0)
          {
LABEL_181:

            goto LABEL_182;
          }

          v185 = *(v135 + 24);
          v186 = *(v159 + 24);
          if (!v185)
          {

            sub_1974028C8(v129, v124);
            sub_1974028C8(v227, v125);
            a2 = v218;
            if (v186)
            {
              goto LABEL_119;
            }

            goto LABEL_184;
          }

          if (!v186)
          {
            goto LABEL_181;
          }

          if (*(v135 + 16) == *(v159 + 16) && v185 == v186)
          {

            sub_1974028C8(v129, v124);
            sub_1974028C8(v227, v125);
            a2 = v218;
            goto LABEL_184;
          }

          v189 = *(v159 + 24);
          v190 = sub_19752282C();

          sub_1974028C8(v129, v124);
          sub_1974028C8(v227, v125);
          a2 = v218;
          v127 = v223;
          if ((v190 & 1) == 0)
          {
            goto LABEL_119;
          }

LABEL_185:
          v187 = PersistentModel.modelContext.getter(v224, v127);
          v188 = PersistentModel.modelContext.getter(v225, v226);
          swift_unknownObjectRelease();
          if (!v187)
          {
            if (!v188)
            {
LABEL_198:
              swift_unknownObjectRelease();
              v193 = v207[v221];
              v194 = v220;
              v207[v221] = v193 & ~v220;
              v36 = (v193 & v194) == 0;
              v106 = v210;
              v107 = v209;
              v108 = v212;
              v109 = v213;
              v110 = v214;
              if (!v36)
              {
                v195 = v206 - 1;
                if (__OFSUB__(v206, 1))
                {
                  __break(1u);
                }

                --v206;
                if (!v195)
                {

                  a2 = MEMORY[0x1E69E7CD0];
                  goto LABEL_206;
                }
              }

              goto LABEL_104;
            }

LABEL_190:

            goto LABEL_120;
          }

          if (!v188)
          {
            goto LABEL_190;
          }

          if (v187 == v188)
          {
            goto LABEL_198;
          }

LABEL_120:
          v121 = (v121 + 1) & v222;
          v122 = v121 >> 6;
          v123 = v3 << v121;
          if ((v228[v121 >> 6] & (v3 << v121)) == 0)
          {
            goto LABEL_102;
          }
        }
      }

      break;
    }

    v111 = v109;
    while (1)
    {
      v112 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      if (v112 >= v108)
      {
        if (v108 <= v109 + 1)
        {
          v196 = v109 + 1;
        }

        else
        {
          v196 = v108;
        }

        v233 = v106;
        v234 = v107;
        v235 = v211;
        v236 = v196 - 1;
        v237 = 0;
        a2 = sub_1974AC8D4(v207, v205[0], v206, a2);
        goto LABEL_206;
      }

      v110 = *(v107 + 8 * v112);
      ++v111;
      if (v110)
      {
        v109 = v112;
        goto LABEL_110;
      }
    }

LABEL_209:
    __break(1u);
LABEL_210:
    v199 = v14;

    v200 = v199;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v201 = swift_slowAlloc();
  memcpy(v201, v228, v200);
  v202 = a2;
  v203 = v208;
  v204 = sub_1974ABC04(v201, v205[0], v202, v2, &v233);

  if (!v203)
  {

    MEMORY[0x19A8E1B50](v201, -1, -1);
    a2 = v204;
    goto LABEL_206;
  }

  result = MEMORY[0x19A8E1B50](v201, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_1974ABC04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v118 = a2;
  v124 = sub_1975212CC();
  v9 = *(*(v124 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v124, v10);
  v123 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v14 = *(a3 + 16);
  v15 = *(a1 + v13) & ((-1 << a4) - 1);
  v120 = a1;
  *(a1 + v13) = v15;
  v16 = v14 - 1;
  v117 = 0x8000000197523720;
  v17 = a3 + 56;
  v122 = (v18 + 8);
  v125 = a3;
  v121 = a5;
  v126 = a3 + 56;
LABEL_2:
  v119 = v16;
LABEL_4:
  while (2)
  {
    v19 = a5[3];
    v20 = a5[4];
    if (v20)
    {
      v21 = a5[3];
LABEL_10:
      v24 = (*(*a5 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v20)))));
      v26 = *v24;
      v25 = v24[1];
      a5[3] = v21;
      a5[4] = (v20 - 1) & v20;
      v27 = *(a3 + 40);
      sub_197522A5C();
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v132 = ObjectType;
      v133 = v25;
      v135 = v26;
      PersistentModel.persistentModelID.getter(ObjectType, v25, &v136);
      v29 = v136;
      if (v137)
      {
        if (v137 != 1)
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v29, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
          sub_19752180C();
          sub_1974028C8(v29, 2);
          sub_1974028C8(v29, 2);

LABEL_21:
          v38 = sub_197522A9C();
          v39 = -1 << *(a3 + 32);
          v40 = v38 & ~v39;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v17 + 8 * (v40 >> 6))) == 0)
          {
LABEL_3:
            result = swift_unknownObjectRelease();
            a5 = v121;
            continue;
          }

          v129 = ~v39;
          while (1)
          {
            v127 = v42;
            v128 = v41;
            v45 = (*(a3 + 48) + 16 * v40);
            v46 = *v45;
            v47 = v45[1];
            v48 = swift_getObjectType();
            swift_unknownObjectRetain();
            v131 = v48;
            PersistentModel.persistentModelID.getter(v48, v47, &v138);
            v140 = v138;
            v44 = v139;
            PersistentModel.persistentModelID.getter(v132, v133, &v136);
            v49 = v136;
            v43 = v137;
            if (!v44)
            {
              if (!v137)
              {
                sub_1974ADEC0(0, &qword_1ED7C8630, 0x1E69E58C0);
                v88 = v140;
                v89 = sub_197521F3C();
                sub_1974028C8(v49, 0);
                v90 = v88;
                v91 = 0;
LABEL_65:
                sub_1974028C8(v90, v91);
                if ((v89 & 1) == 0)
                {
                  goto LABEL_25;
                }

                goto LABEL_93;
              }

              v134 = v46;
              type metadata accessor for PersistentIdentifierImplementation();
              v55 = swift_allocObject();
              v55[5] = 0;
              v55[6] = 0;
              v56 = [v140 persistentStore];
              v130 = v47;
              if (v56 && (v57 = v56, v58 = [v56 identifier], v57, v58))
              {
                v59 = sub_1975217BC();
                v61 = v60;
              }

              else
              {
                v59 = 0;
                v61 = 0;
              }

              v55[2] = v59;
              v55[3] = v61;
              v76 = v140;
              *(v55 + 33) = [v140 isTemporaryID];
              *(v55 + 32) = 1;
              v77 = [v76 URIRepresentation];
              v78 = v123;
              sub_19752127C();

              v79 = sub_19752123C();
              v81 = v80;
              (*v122)(v78, v124);
              v55[7] = v79;
              v55[8] = v81;
              v82 = [v76 entityName];
              v83 = sub_1975217BC();
              v85 = v84;

              v55[9] = v83;
              v55[10] = v85;
              a3 = v125;
              v17 = v126;
              goto LABEL_61;
            }

            if (v44 != 1)
            {
              break;
            }

            if (v137 != 1)
            {
              v134 = v46;
              v55 = v140;
              sub_1974028EC(v140, 1);
              v130 = v47;
              if (!v43)
              {
                goto LABEL_56;
              }

LABEL_61:
              if (v43 == 1)
              {
                sub_1974028EC(v49, 1);
                v69 = v49;
              }

              else
              {
                type metadata accessor for PersistentIdentifierImplementation();
                v69 = swift_allocObject();
                *(v69 + 40) = 0;
                *(v69 + 48) = 0;
                *(v69 + 56) = sub_19750A470();
                *(v69 + 64) = v86;
                *(v69 + 72) = sub_19750A588();
                *(v69 + 80) = v87;
                *(v69 + 16) = 0;
                *(v69 + 24) = 0;
                *(v69 + 32) = 256;
              }

              goto LABEL_69;
            }

            v50 = v140;
            v51 = *(v140 + 7) == v136[7] && *(v140 + 8) == v136[8];
            if (!v51 && (sub_19752282C() & 1) == 0 || (v50[9] == v49[9] ? (v52 = v50[10] == v49[10]) : (v52 = 0), !v52 && (sub_19752282C() & 1) == 0))
            {
LABEL_23:
              LOBYTE(v43) = 1;
              LOBYTE(v44) = 1;
LABEL_24:
              sub_1974028C8(v49, v43);
              sub_1974028C8(v140, v44);
LABEL_25:
              swift_unknownObjectRelease();
              goto LABEL_26;
            }

            v53 = v50[3];
            v54 = v49[3];
            if (v53)
            {
              if (!v54)
              {
                goto LABEL_23;
              }

              if (v50[2] == v49[2] && v53 == v54)
              {
                v130 = v47;
                sub_1974028C8(v49, 1);
                sub_1974028C8(v50, 1);
LABEL_82:
                v47 = v130;
                goto LABEL_93;
              }

              v113 = v49[3];
              v89 = sub_19752282C();
              sub_1974028C8(v49, 1);
              v90 = v50;
              v91 = 1;
              goto LABEL_65;
            }

            sub_1974028C8(v49, 1);
            sub_1974028C8(v50, 1);
            if (v54)
            {
              goto LABEL_25;
            }

LABEL_93:
            v111 = PersistentModel.modelContext.getter(v131, v47);
            v112 = PersistentModel.modelContext.getter(v132, v133);
            swift_unknownObjectRelease();
            if (!v111)
            {
              if (!v112)
              {
LABEL_100:
                result = swift_unknownObjectRelease();
                v114 = v127;
                v115 = v120[v128];
                v120[v128] = v115 & ~v127;
                a5 = v121;
                if ((v115 & v114) != 0)
                {
                  v16 = v119 - 1;
                  if (__OFSUB__(v119, 1))
                  {
LABEL_109:
                    __break(1u);
                    return result;
                  }

                  if (v119 == 1)
                  {
                    return MEMORY[0x1E69E7CD0];
                  }

                  goto LABEL_2;
                }

                goto LABEL_4;
              }

LABEL_98:

              goto LABEL_26;
            }

            if (!v112)
            {
              goto LABEL_98;
            }

            if (v111 == v112)
            {
              goto LABEL_100;
            }

LABEL_26:
            v40 = (v40 + 1) & v129;
            v41 = v40 >> 6;
            v42 = 1 << v40;
            if ((*(v17 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
            {
              goto LABEL_3;
            }
          }

          v134 = v46;
          if (v137 == 2)
          {
            v62 = v140;
            v63 = sub_19750A470();
            v65 = v64;
            if (v63 == sub_19750A470() && v65 == v66)
            {
            }

            else
            {
              v103 = sub_19752282C();

              if ((v103 & 1) == 0)
              {
                LOBYTE(v43) = 2;
                LOBYTE(v44) = 2;
                goto LABEL_24;
              }
            }

            v104 = sub_19750A588();
            v106 = v105;
            if (v104 == sub_19750A588() && v106 == v107)
            {

              sub_1974028C8(v49, 2);
              sub_1974028C8(v62, 2);
            }

            else
            {
              v108 = sub_19752282C();

              sub_1974028C8(v49, 2);
              sub_1974028C8(v62, 2);
              if ((v108 & 1) == 0)
              {
                goto LABEL_25;
              }
            }

            goto LABEL_93;
          }

          type metadata accessor for PersistentIdentifierImplementation();
          v55 = swift_allocObject();
          v55[5] = 0;
          v55[6] = 0;
          v55[7] = sub_19750A470();
          v55[8] = v67;
          v55[9] = sub_19750A588();
          v55[10] = v68;
          v55[2] = 0;
          v55[3] = 0;
          *(v55 + 16) = 256;
          v130 = v47;
          if (v43)
          {
            goto LABEL_61;
          }

LABEL_56:
          type metadata accessor for PersistentIdentifierImplementation();
          v69 = swift_allocObject();
          *(v69 + 40) = 0;
          *(v69 + 48) = 0;
          v70 = [v49 persistentStore];
          if (v70 && (v71 = v70, v72 = [v70 identifier], v71, v72))
          {
            v73 = sub_1975217BC();
            v75 = v74;
          }

          else
          {
            v73 = 0;
            v75 = 0;
          }

          *(v69 + 16) = v73;
          *(v69 + 24) = v75;
          *(v69 + 33) = [v49 isTemporaryID];
          *(v69 + 32) = 1;
          v92 = [v49 URIRepresentation];
          v93 = v123;
          sub_19752127C();

          v94 = sub_19752123C();
          v96 = v95;
          (*v122)(v93, v124);
          *(v69 + 56) = v94;
          *(v69 + 64) = v96;
          v97 = [v49 entityName];
          v98 = sub_1975217BC();
          v100 = v99;

          *(v69 + 72) = v98;
          *(v69 + 80) = v100;
          a3 = v125;
          v17 = v126;
LABEL_69:
          if ((v55[7] != *(v69 + 56) || v55[8] != *(v69 + 64)) && (sub_19752282C() & 1) == 0 || (v55[9] != *(v69 + 72) || v55[10] != *(v69 + 80)) && (sub_19752282C() & 1) == 0)
          {
LABEL_80:

            goto LABEL_24;
          }

          v101 = v55[3];
          v102 = *(v69 + 24);
          if (!v101)
          {

            sub_1974028C8(v49, v43);
            sub_1974028C8(v140, v44);
            if (v102)
            {
              goto LABEL_25;
            }

            goto LABEL_82;
          }

          if (!v102)
          {
            goto LABEL_80;
          }

          if (v55[2] == *(v69 + 16) && v101 == v102)
          {

            sub_1974028C8(v49, v43);
            sub_1974028C8(v140, v44);
            goto LABEL_82;
          }

          v109 = *(v69 + 24);
          v110 = sub_19752282C();

          sub_1974028C8(v49, v43);
          sub_1974028C8(v140, v44);
          v47 = v130;
          if ((v110 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_93;
        }

        MEMORY[0x19A8E1190](1);
        v30 = v29[7];
        v31 = v29[8];
        sub_1974028EC(v29, 1);
        sub_19752180C();
        v32 = v29[9];
        v33 = v29[10];
        sub_19752180C();
        if (v29[3])
        {
          v34 = v29[2];
          sub_197522A7C();
          v17 = v126;
          sub_19752180C();
        }

        else
        {
          sub_197522A7C();
        }

        v37 = *(v29 + 33);
        sub_197522A7C();
        if (*(v29 + 32))
        {
          *(v29 + 32);
        }

        sub_19752180C();

        sub_1974028C8(v29, 1);
        v35 = v29;
        v36 = 1;
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v29, 0);
        sub_197521F4C();
        sub_1974028C8(v29, 0);
        v35 = v29;
        v36 = 0;
      }

      sub_1974028C8(v35, v36);
      goto LABEL_21;
    }

    break;
  }

  v22 = (a5[2] + 64) >> 6;
  v23 = a5[3];
  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_109;
    }

    if (v21 >= v22)
    {
      break;
    }

    v20 = *(a5[1] + 8 * v21);
    ++v23;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  if (v22 <= v19 + 1)
  {
    v116 = v19 + 1;
  }

  else
  {
    v116 = (a5[2] + 64) >> 6;
  }

  a5[3] = v116 - 1;
  a5[4] = 0;

  return sub_1974AC8D4(v120, v118, v119, a3);
}

unint64_t sub_1974AC8D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  result = sub_1975221CC();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = (*(a4 + 48) + 16 * (v12 | (v11 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = swift_unknownObjectRetain();
    result = sub_19747ECF8(v18, v17, v6);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1974ACA08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_1974ACA50(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1975227CC() & 1;
  }
}

uint64_t sub_1974ACAC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
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
  v44 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v46 = a5;
  v47 = v7;
  v45 = v11;
  while (v10)
  {
    v52 = a4;
    v18 = v12;
LABEL_14:
    v20 = __clz(__rbit64(v10)) | (v18 << 6);
    v21 = *(*(a1 + 48) + 8 * v20);
    v22 = (*(a1 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v51[0] = v21;
    v51[1] = v23;
    v51[2] = v24;

    a2(v50, v51);

    v25 = v50[0];
    v26 = v50[1];
    v27 = v50[2];
    v28 = *a5;
    v30 = sub_1973F7814(v50[0]);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((v52 & 1) == 0)
      {
        sub_197479770();
      }
    }

    else
    {
      sub_197477E60(v33, v52 & 1);
      v35 = *a5;
      v36 = sub_1973F7814(v25);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v30 = v36;
    }

    v10 &= v10 - 1;
    v38 = *a5;
    if (v34)
    {
      v13 = (v38[7] + 16 * v30);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v38[7] + 16 * v30);
      v17 = v16[1];
      *v16 = v15;
      v16[1] = v14;
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      *(v38[6] + 8 * v30) = v25;
      v39 = (v38[7] + 16 * v30);
      *v39 = v26;
      v39[1] = v27;
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_26;
      }

      v38[2] = v42;
    }

    a4 = 1;
    v12 = v18;
    a5 = v46;
    v7 = v47;
    v11 = v45;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_1974171EC();
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v52 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_19752202C();
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t sub_1974ACD70(void *a1, uint64_t a2)
{
  v3 = v2;
  result = PersistentModel.modelContext.getter(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = *(sub_1973FE074(a1, a2) + 24);

    v9 = sub_1973FE074(a1, a2);
    *(v9 + 24) |= 0x800u;

    v10 = *(sub_1973FE074(a1, a2) + 112);

    if (v10 == 1)
    {
      sub_1974258A4(a1, a2);
    }

    if (*(v7 + 16))
    {
      v11 = *(v7 + 16);
    }

    else
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_39;
      }

      v11 = Strong;
    }

    v13 = *(v11 + 16);

    v14 = *(v13 + 72);

    v15 = sub_1973F7AAC();
    if (!*(v14 + 16))
    {
      goto LABEL_35;
    }

    v17 = sub_1973F4028(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
LABEL_36:

      v49 = 0;
      v50 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
      v48 = v3;
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525F90);
      v39 = *(v7 + 16);
      if (v39)
      {
        goto LABEL_43;
      }

      v40 = swift_weakLoadStrong();
      if (v40)
      {
        v41 = v40;
        goto LABEL_45;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1975221EC();
      v39 = &v46;
      MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x8000000197525FC0);
      type metadata accessor for Schema.Relationship();
      sub_19752235C();
      goto LABEL_42;
    }

    v42 = v8;
    v44 = a1;
    v20 = *(*(v14 + 56) + 8 * v17);

    swift_beginAccess();
    v21 = *(v20 + 88);
    v45 = v7;
    v43 = v3;
    if ((v21 & 0xC000000000000001) != 0)
    {

      sub_1975220AC();
      type metadata accessor for Schema.Relationship();
      sub_1973FA5E0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
      sub_197521C1C();
      v21 = v49;
      v22 = v50;
      v23 = v51;
      v24 = v52;
      v25 = v53;
    }

    else
    {
      v26 = -1 << *(v21 + 32);
      v22 = v21 + 56;
      v23 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(v21 + 56);

      v24 = 0;
    }

    v29 = (v23 + 64) >> 6;
    if (v21 < 0)
    {
      goto LABEL_23;
    }

LABEL_17:
    v30 = v24;
    v31 = v25;
    v3 = v24;
    if (!v25)
    {
      while (1)
      {
        v3 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v3 >= v29)
        {
          goto LABEL_32;
        }

        v31 = *(v22 + 8 * v3);
        ++v30;
        if (v31)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_35:

      goto LABEL_36;
    }

LABEL_21:
    v7 = (v31 - 1) & v31;
    v32 = *(*(v21 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v31)))));

    if (v32)
    {
      while (1)
      {
        swift_beginAccess();
        v33 = *(v32 + 48);
        if (!v33)
        {
          goto LABEL_40;
        }

        v34 = *v33;

        v35 = sub_197521FFC();
        v36 = swift_conformsToProtocol2();
        if (!v36 || v35 == 0)
        {
          break;
        }

        sub_1974A47C8(v35, v43, v33, v32, v45, v44, v35, a2, v36);

        v24 = v3;
        v25 = v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_23:
        if (sub_19752212C())
        {
          type metadata accessor for Schema.Relationship();
          swift_dynamicCast();
          v32 = v46;
          v3 = v24;
          v7 = v25;
          if (v46)
          {
            continue;
          }
        }

        goto LABEL_32;
      }

      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1975221EC();
      v39 = &v46;
      MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197525FF0);
      sub_19752202C();
      sub_19752235C();
      while (1)
      {
LABEL_42:
        sub_1975223EC();
        __break(1u);
LABEL_43:
        v41 = v39;
LABEL_45:
        v48 = v41;
        type metadata accessor for ModelContainer();

        sub_19752235C();

        v39 = &v49;
        MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      }
    }

LABEL_32:
    sub_1974171EC();
    v38 = sub_1973FE074(v44, a2);
    *(v38 + 24) = *(v38 + 24) & 0xFFFFF7FF | v42 & 0x800;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[8];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];
  swift_unknownObjectRelease();
  v4 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1974AD580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 + 16);
  v13 = *a4;
  v12 = a4[1];
  v14 = *(v11 + 16);
  v15 = *(v14 + 16);

  if (v15)
  {
    v16 = sub_1973F4028(v13, v12);
    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v16);
      swift_beginAccess();
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v19 = *(v11 + 32);
        if (v18 < *(v19 + 16))
        {
          sub_1973FE1B4(v19 + 32 * v18 + 32, v85, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_76;
    }
  }

  memset(v85, 0, 32);
LABEL_7:

  sub_1973FE1B4(v85, &v72, &qword_1EAF2AF20, &unk_19752F320);
  v20 = MEMORY[0x1E69E7CC0];
  v71 = v12;
  v67 = v13;
  if (*(&v73 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
    if (swift_dynamicCast())
    {
      if (v80)
      {
        v72 = v80;
        v73 = v81;
        v74 = v82;
        v75 = v83;
        v76 = v84;

        sub_1974416CC(v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
        if (swift_dynamicCast())
        {
          v21 = v80;
        }

        else
        {
          v21 = 0;
        }

        v23 = a1;
        v22 = a2;
        if (!a3)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
    }
  }

  else
  {
    sub_1973F7DA4(&v72, &qword_1EAF2AF20, &unk_19752F320);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
  }

  sub_1973F7DA4(&v80, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_1973FE1B4(v85, &v80, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v81 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    if (swift_dynamicCast())
    {
      v66 = a3;
      v24 = v72;
      if (PersistentModel.modelContext.getter(a7, a8))
      {
        v25 = *(v24 + 16);
        if (v25)
        {
          *&v72 = v20;
          sub_197444B2C(0, v25, 0);
          v21 = v72;
          v26 = (v24 + 40);
          do
          {
            v27 = *(v26 - 1);
            v28 = *v26;
            *&v80 = v27;
            BYTE8(v80) = v28;
            sub_1974028EC(v27, v28);
            v29 = sub_1974309B4(&v80);
            v31 = v30;
            sub_1974028C8(v27, v28);
            *&v72 = v21;
            v33 = *(v21 + 16);
            v32 = *(v21 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_197444B2C((v32 > 1), v33 + 1, 1);
              v21 = v72;
            }

            v26 += 16;
            *(v21 + 16) = v33 + 1;
            v34 = v21 + 16 * v33;
            *(v34 + 32) = v29;
            *(v34 + 40) = v31;
            --v25;
          }

          while (v25);
        }

        else
        {

          v21 = MEMORY[0x1E69E7CC0];
        }

        v23 = a1;
        v22 = a2;
        a3 = v66;
        if (!v66)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }

LABEL_76:
      result = sub_1975223EC();
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_1973F7DA4(&v80, &qword_1EAF2AF20, &unk_19752F320);
  }

  v23 = a1;
  sub_1973FE1B4(v85, &v80, &qword_1EAF2AF20, &unk_19752F320);
  v22 = a2;
  if (*(&v81 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    if (swift_dynamicCast())
    {
      v21 = v72;
    }

    else
    {
      v21 = 0;
    }

    if (!a3)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_1973F7DA4(&v80, &qword_1EAF2AF20, &unk_19752F320);
    v21 = 0;
    if (!a3)
    {
LABEL_34:
      v35 = 0;
      v36 = 0;
      *(&v80 + 1) = 0;
      *&v81 = 0;
      goto LABEL_38;
    }
  }

LABEL_37:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
  v35 = a3;
LABEL_38:
  *&v80 = v35;
  *(&v81 + 1) = v36;
  v37 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v39 = v21;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    *(&v72 + 1) = 0;
    *&v73 = 0;
  }

  *&v72 = v39;
  *(&v73 + 1) = v38;

  sub_1973F7DA4(&v72, &qword_1EAF2AF20, &unk_19752F320);
  sub_1973F7DA4(&v80, &qword_1EAF2AF20, &unk_19752F320);
  v40 = MEMORY[0x1E69E7CD0];
  *&v72 = MEMORY[0x1E69E7CD0];
  if (v21)
  {

    sub_1974A2780(v41);

    v42 = v72;
    if (v23)
    {
      goto LABEL_43;
    }

LABEL_48:

    if (!v22)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (*(v22 + 16))
    {
      sub_1974A6950(v22);
    }

    else
    {
    }

    goto LABEL_52;
  }

  v42 = MEMORY[0x1E69E7CD0];
  if (!v23)
  {
    goto LABEL_48;
  }

LABEL_43:
  v43 = *(v23 + 16);

  if (v43)
  {
    sub_1974AA194(v23);
  }

  if (v22)
  {
    goto LABEL_49;
  }

LABEL_52:
  v44 = v72;
  if (*(v42 + 16) <= *(v72 + 16) >> 3)
  {
    *&v80 = v72;

    sub_1974AA194(v42);
    v45 = v80;
  }

  else
  {

    v45 = sub_1974AA2BC(v42, v44);
  }

  if (*(v44 + 16) > *(v42 + 16) >> 3)
  {
    v46 = sub_1974AA2BC(v44, v42);
    v79 = v40;
    if (!v21)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  *&v80 = v42;
  sub_1974AA194(v44);
  v46 = v80;
  v79 = v40;
  if (v21)
  {
LABEL_59:
    sub_1974A2780(v39);

    v40 = v79;
  }

LABEL_60:
  if (*(v46 + 16) <= *(v40 + 16) >> 3)
  {
    *&v80 = v40;

    sub_1974AA194(v46);

    v47 = v80;
  }

  else
  {

    v47 = sub_1974AA2BC(v46, v40);
  }

  v48 = sub_19743E380(v45, v47);

  v78 = v37;
  sub_1974A2604(v48, &v78);
  v49 = *(a5 + 16);
  if (*(a5 + 48) == 1)
  {
    v50 = v78;
    v51 = *(v78 + 16);
    v52 = v71;
    if (v51)
    {
      v77 = v37;

      sub_197411CB8(0, v51, 0);
      v53 = v77;
      v54 = (v50 + 40);
      do
      {
        v55 = *(v54 - 1);
        v56 = *v54;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        PersistentModel.persistentModelID.getter(ObjectType, v56, &v80);
        swift_unknownObjectRelease();
        v58 = v80;
        v59 = BYTE8(v80);
        v77 = v53;
        v61 = *(v53 + 16);
        v60 = *(v53 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_197411CB8((v60 > 1), v61 + 1, 1);
          v53 = v77;
        }

        *(v53 + 16) = v61 + 1;
        v62 = v53 + 16 * v61;
        *(v62 + 32) = v58;
        *(v62 + 40) = v59;
        v54 += 2;
        --v51;
      }

      while (v51);
      v52 = v71;
    }

    else
    {
      v64 = *(a5 + 16);

      v53 = MEMORY[0x1E69E7CC0];
    }

    *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    *&v80 = v53;
    sub_197511DB4(&v80, v67, v52);

    sub_1973F7DA4(v85, &qword_1EAF2AF20, &unk_19752F320);
  }

  else
  {
    v63 = v78;
    *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    *&v80 = v63;

    sub_197511DB4(&v80, v67, v71);

    sub_1973F7DA4(v85, &qword_1EAF2AF20, &unk_19752F320);
  }
}

id sub_1974ADEAC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1974028EC(result, a2);
  }

  return result;
}

uint64_t sub_1974ADEC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1974ADF08()
{
  result = qword_1EAF2B6C0;
  if (!qword_1EAF2B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B6B8, &qword_19752F3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B6C0);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1974AE028(void *a1)
{
  v2 = v1[4];
  v3 = v1[7];
  v4 = v1[8];
  return sub_1974B7028(*a1, v2, v3);
}

uint64_t objectdestroy_53Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[17];

  v4 = v0[18];

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1974AE1A8(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];
    v14 = swift_unknownObjectRetain();
    sub_1974580E0(v14, v12);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974AE2B4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    swift_unknownObjectRetain_n();
    sub_1974327FC(&v15, v12, v13);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    sub_1974ACD70(ObjectType, v13);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974AE3E0(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = swift_unknownObjectRelease())
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];
    swift_unknownObjectRetain_n();
    sub_1974327FC(&v14, v13, v12);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974AE500(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_19744377C(ObjectType, v13))
    {
      swift_unknownObjectRetain();
      sub_1974327FC(&v15, v12, v13);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
    v8 = v9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1974AE6D4(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1975220EC();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1974F6610(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x19A8E0960](v11, a1);
        v22 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1974F6610((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_197404E28(a3, a4);
        *&v19 = v12;
        *(v9 + 16) = v14 + 1;
        sub_197402778(&v19, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_1974F6610((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_197404E28(a3, a4);
        *&v19 = v16;
        *(v9 + 16) = v18 + 1;
        sub_197402778(&v19, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974AE8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1974F6690(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_1974028EC(v5, *v4);
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1974F6690((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v4 += 16;
      v11 = &type metadata for PersistentIdentifier;
      v12 = &off_1F0BAA0F8;
      *&v10 = v5;
      BYTE8(v10) = v6;
      *(v2 + 16) = v8 + 1;
      sub_197402778(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1974AE9C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1974F66D0(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1974F66D0((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1974028B8(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1974AEAC4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_197411CB8(0, v2, 0);
    v4 = v36;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_19752206C();
    v7 = result;
    v8 = 0;
    v29 = v1 + 64;
    v30 = v2;
    v31 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = v8;
      v33 = *(v1 + 36);
      v11 = (*(v1 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      PersistentModel.persistentModelID.getter(ObjectType, v13, &v34);
      result = swift_unknownObjectRelease();
      v15 = v34;
      v16 = v35;
      v17 = v4;
      v36 = v4;
      v18 = v1;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_197411CB8((v19 > 1), v20 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v20 + 1;
      v21 = v17 + 16 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v16;
      v9 = 1 << *(v18 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v31;
      v22 = *(v31 + 8 * v10);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v18;
      v4 = v17;
      if (v33 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_197444BD8(v7, v33, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_197444BD8(v7, v33, 0);
      }

LABEL_4:
      v8 = v32 + 1;
      v7 = v9;
      if (v32 + 1 == v30)
      {
        return v4;
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

uint64_t sub_1974AED34()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974AEDA8()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t SwiftDataError._explanation.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void sub_1974AEE5C()
{
  byte_1EAF2B6C8 = 0;
  qword_1EAF2B6D0 = 0;
  unk_1EAF2B6D8 = 0;
}

uint64_t static SwiftDataError.includePendingChangesWithBatchSize.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B6D0;
  v2 = unk_1EAF2B6D8;
  *a1 = byte_1EAF2B6C8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AEEEC()
{
  byte_1EAF2B6E0 = 1;
  qword_1EAF2B6E8 = 0;
  unk_1EAF2B6F0 = 0;
}

uint64_t static SwiftDataError.unsupportedPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B6E8;
  v2 = unk_1EAF2B6F0;
  *a1 = byte_1EAF2B6E0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AEF80()
{
  byte_1EAF2B6F8 = 2;
  qword_1EAF2B700 = 0;
  unk_1EAF2B708 = 0;
}

uint64_t static SwiftDataError.unsupportedKeyPath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B700;
  v2 = unk_1EAF2B708;
  *a1 = byte_1EAF2B6F8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF014()
{
  byte_1EAF2B710 = 3;
  qword_1EAF2B718 = 0;
  unk_1EAF2B720 = 0;
}

uint64_t static SwiftDataError.sortingPendingChangesWithIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B718;
  v2 = unk_1EAF2B720;
  *a1 = byte_1EAF2B710;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF0A8()
{
  byte_1EAF2B728 = 4;
  qword_1EAF2B730 = 0;
  unk_1EAF2B738 = 0;
}

uint64_t static SwiftDataError.unsupportedSortDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B730;
  v2 = unk_1EAF2B738;
  *a1 = byte_1EAF2B728;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF13C()
{
  byte_1EAF2B740 = 5;
  qword_1EAF2B748 = 0;
  unk_1EAF2B750 = 0;
}

uint64_t static SwiftDataError.duplicateConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B748;
  v2 = unk_1EAF2B750;
  *a1 = byte_1EAF2B740;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF1D0()
{
  byte_1EAF2B758 = 6;
  qword_1EAF2B760 = 0;
  unk_1EAF2B768 = 0;
}

uint64_t static SwiftDataError.configurationFileNameTooLong.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B760;
  v2 = unk_1EAF2B768;
  *a1 = byte_1EAF2B758;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF264()
{
  byte_1EAF2B770 = 7;
  qword_1EAF2B778 = 0;
  unk_1EAF2B780 = 0;
}

uint64_t static SwiftDataError.configurationFileNameContainsInvalidCharacters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B778;
  v2 = unk_1EAF2B780;
  *a1 = byte_1EAF2B770;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF2F8()
{
  byte_1EAF2B788 = 8;
  qword_1EAF2B790 = 0;
  unk_1EAF2B798 = 0;
}

uint64_t static SwiftDataError.configurationSchemaNotFoundInContainerSchema.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B790;
  v2 = unk_1EAF2B798;
  *a1 = byte_1EAF2B788;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF38C()
{
  byte_1EAF2B7A0 = 10;
  qword_1EAF2B7A8 = 0;
  unk_1EAF2B7B0 = 0;
}

uint64_t static SwiftDataError.loadIssueModelContainer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7A8;
  v2 = unk_1EAF2B7B0;
  *a1 = byte_1EAF2B7A0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF420()
{
  byte_1EAF2B7B8 = 11;
  qword_1EAF2B7C0 = 0;
  unk_1EAF2B7C8 = 0;
}

uint64_t static SwiftDataError.modelValidationFailure.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7C0;
  v2 = unk_1EAF2B7C8;
  *a1 = byte_1EAF2B7B8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF4B4()
{
  byte_1EAF2B7D0 = 12;
  qword_1EAF2B7D8 = 0;
  unk_1EAF2B7E0 = 0;
}

uint64_t static SwiftDataError.missingModelContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7D8;
  v2 = unk_1EAF2B7E0;
  *a1 = byte_1EAF2B7D0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF548()
{
  byte_1EAF2B7E8 = 13;
  qword_1EAF2B7F0 = 0;
  unk_1EAF2B7F8 = 0;
}

uint64_t static SwiftDataError.backwardMigration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7F0;
  v2 = unk_1EAF2B7F8;
  *a1 = byte_1EAF2B7E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF5DC()
{
  byte_1EAF2B800 = 14;
  qword_1EAF2B808 = 0;
  unk_1EAF2B810 = 0;
}

uint64_t static SwiftDataError.unknownSchema.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD80 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B808;
  v2 = unk_1EAF2B810;
  *a1 = byte_1EAF2B800;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF670()
{
  byte_1EAF2B818 = 15;
  qword_1EAF2B820 = 0;
  unk_1EAF2B828 = 0;
}

uint64_t static SwiftDataError.historyTokenExpired.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B820;
  v2 = unk_1EAF2B828;
  *a1 = byte_1EAF2B818;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

void sub_1974AF704()
{
  byte_1EAF2B830 = 16;
  qword_1EAF2B838 = 0;
  unk_1EAF2B840 = 0;
}

uint64_t static SwiftDataError.invalidTransactionFetchRequest.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B838;
  v2 = unk_1EAF2B840;
  *a1 = byte_1EAF2B830;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t SwiftDataError.hashValue.getter()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974AF7F0()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974AF864()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t static SwiftDataError.~= infix(_:_:)(unsigned __int8 *a1, id a2)
{
  v2 = *a1;
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  result = swift_dynamicCast();
  if (result)
  {

    return v5 == v2;
  }

  return result;
}

uint64_t sub_1974AF938@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for EditingState() + 20));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_1974AF9A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v5 = (v4 + *(type metadata accessor for EditingState() + 20));
  v6 = v5[1];
  *v5 = v3;
  v5[1] = v2;
}

uint64_t sub_1974AFA1C()
{
  v1 = v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v2 = (v1 + *(type metadata accessor for EditingState() + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void (*sub_1974AFA84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = type metadata accessor for EditingState();
  v4[7] = v7;
  v8 = (v6 + *(v7 + 20));
  v9 = v8[1];
  v4[3] = *v8;
  v4[4] = v9;

  return sub_1974AFB38;
}

void sub_1974AFB38(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = (*(*a1 + 40) + *(*a1 + 48) + *(*(*a1 + 56) + 20));
  v6 = v5[1];
  *v5 = v3;
  v5[1] = v4;
  if (a2)
  {

    v7 = v2[4];
  }

  free(v2);
}

void *sub_1974AFBB0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1974AFBF4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = MEMORY[0x1E696AA10];
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = v3;
    v7 = [v5 defaultCenter];
    [v7 removeObserver:v1 name:*v4 object:v6];

    [v6 removeAllActionsWithTarget_];
    v3 = *(v1 + 40);
  }

  *(v1 + 40) = a1;
  v8 = a1;

  if (a1)
  {
    v9 = [objc_opt_self() defaultCenter];
    [v9 addObserver:v1 selector:sel__undoManagerCheckpoint_ name:*v4 object:v8];
  }
}

void (*sub_1974AFD1C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 40);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1974AFDB0;
}

void sub_1974AFDB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  if (a2)
  {
    v6 = v3;
    sub_1974AFBF4(v3);
  }

  else
  {
    sub_1974AFBF4(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1974AFE50(char a1)
{
  result = swift_beginAccess();
  *(v1 + 63) = a1;
  return result;
}

uint64_t sub_1974AFEE0()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v0 + 80);

  v4 = sub_19743E380(v3, v1);
  v5 = sub_19743AD6C(v4);

  return v5;
}

uint64_t sub_1974AFF70()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v0 + 96);

  v4 = sub_19743E380(v3, v1);
  v5 = sub_19743AD6C(v4);

  return v5;
}

uint64_t sub_1974B0000()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v0 + 112);

  v4 = sub_19743E380(v3, v1);
  v5 = sub_19743AD6C(v4);

  return v5;
}

uint64_t sub_1974B0090(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EditingState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197404E70(a1, v8);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_1974C075C(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t sub_1974B0148@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  return sub_197404E70(v1 + v3, a1);
}

uint64_t sub_1974B01A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_1974C075C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1974B0260()
{
  v1 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1974B02A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1974B0308;
}

void sub_1974B0308(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_19740E114();
  }
}

void sub_1974B033C()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  swift_beginAccess();
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 defaultCenter];
    [v5 removeObserver:v0 name:*MEMORY[0x1E696AA10] object:v4];

    [v4 removeAllActionsWithTarget_];
    v6 = *(v0 + 40);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 40) = 0;

  v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  *(v0 + v7) = 0;
  sub_19740E114();
  v8 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
  v9 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer);
  if (v9)
  {
    [v9 invalidate];
    v10 = *(v0 + v8);
    *(v0 + v8) = 0;
  }

  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver_];

  *(v0 + 62) = 0;
}

uint64_t sub_1974B049C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16))
    {
      v1 = *(result + 16);
    }

    else
    {
      if (!swift_weakLoadStrong())
      {
      }

      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v1 = result;
    }

    swift_beginAccess();
    v2 = *(v1 + 48);
    swift_retain_n();

    v3 = *(v2 + 16);

    if (v3)
    {
      sub_19743FB78(0);
    }
  }

  return result;
}

void sub_1974B05A8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    swift_weakAssign();
    v2 = qword_1EAF2ACB8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = dyld_program_sdk_at_least();

    if (v3)
    {
      v4 = *(v0 + 16);
      *(v0 + 16) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1974B0664()
{
  v1 = MEMORY[0x19A8E1370]();
  sub_19740E3D0(1);
  sub_1974B033C();
  if (_SD_get_current_context_tsd())
  {
    v2 = swift_retain_n();

    v3 = sub_1974BEE44(v0);

    if (v3)
    {
    }
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1974B06F8()
{
  v1 = v0;
  v2 = sub_197520BEC();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v33 = 0xD000000000000031;
  v34 = 0x80000001975275A0;
  sub_19752218C();
  if (!*(v3 + 16) || (v4 = sub_197445520(v35), (v5 & 1) == 0))
  {

    sub_197420CA4(v35);
LABEL_8:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_9;
  }

  sub_197404860(*(v3 + 56) + 32 * v4, &v36);
  sub_197420CA4(v35);

  if (!*(&v37 + 1))
  {
LABEL_9:
    sub_1974050A8(&v36, &qword_1EAF2AF20, &unk_19752F320);
    return;
  }

  sub_1974028B8(&v36, v35);
  sub_197404860(v35, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B948, &qword_19752FC60);
  if (swift_dynamicCast())
  {
    v6 = 0;
    sub_1975223AC();

    v7 = 0;
    while (1)
    {
      v8 = sub_1975223DC();
      if (!v8)
      {
        break;
      }

      v10 = v9;
      v33 = v8;
      sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630);
      swift_dynamicCast();
      v11 = v36;
      v33 = v10;
      swift_dynamicCast();
      v12 = v36;
      v13 = v7;
      v31 = v6;
      if (!v11)
      {
        break;
      }

      v14 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
      swift_beginAccess();
      v15 = *(v1 + v14);
      if (*(v15 + 16))
      {
        v16 = v11;
        v17 = v12;

        v18 = sub_197403C30(v11, 0);
        if (v19)
        {
          sub_19742FE50(*(v15 + 56) + 32 * v18, &v36);

          v20 = v36 != 0;
          v21 = *(&v36 + 1) != 1;
        }

        else
        {

          v21 = 0;
          v20 = 0;
          v36 = xmmword_19752EA60;
          *&v37 = 0;
          BYTE8(v37) = 0;
        }
      }

      else
      {
        v36 = xmmword_19752EA60;
        *&v37 = 0;
        BYTE8(v37) = 0;
        v22 = v11;
        v23 = v12;
        v21 = 0;
        v20 = 0;
      }

      if (v20 || v21)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v25 = *(&v36 + 1);
        sub_1974050A8(&v36, &qword_1EAF2B640, &unk_19752F160);
        if (Strong)
        {
          v26 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
          ObjectType = swift_getObjectType();
          *&v36 = v12;
          BYTE8(v36) = 0;
          sub_197459C60(&v36, ObjectType, v25);
          swift_beginAccess();
          v28 = v11;
          sub_197459F50(v11, 0, &v36);

          sub_1974050A8(&v36, &qword_1EAF2B640, &unk_19752F160);
          swift_endAccess();
          *(&v36 + 1) = 0;
          swift_unknownObjectWeakInit();
          *(&v36 + 1) = v25;
          swift_unknownObjectWeakAssign();
          swift_unknownObjectRetain();
          PersistentModel.persistentModelID.getter(ObjectType, v25, &v33);
          swift_unknownObjectRelease();
          *&v37 = v33;
          BYTE8(v37) = v34;
          swift_beginAccess();
          sub_197433E8C(&v36, &v33);
          v29 = *(v1 + v26);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = *(v1 + v26);
          sub_197433C04(&v33, v12, 0, isUniquelyReferenced_nonNull_native);

          *(v1 + v26) = v32;
          swift_endAccess();

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {

        sub_1974050A8(&v36, &qword_1EAF2B640, &unk_19752F160);
      }

      v7 = v13;
      v6 = v31;
    }

    sub_197458C2C();
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }
}

uint64_t sub_1974B0D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  if (!*(a1 + 8))
  {
    sub_1974028EC(*a1, 0);
    v12 = [v6 entityName];
    v8 = sub_1975217BC();
    v7 = v13;

    v14 = v6;
    v15 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 8) != 1)
  {
    sub_1974028EC(*a1, 2);
    v8 = sub_19750A588();
    v7 = v16;
    v14 = v6;
    v15 = 2;
LABEL_8:
    sub_1974028C8(v14, v15);
    v9 = *(a2 + 16);
    if (!v9)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = v9;
    goto LABEL_10;
  }

  v8 = v6[9];
  v7 = v6[10];

  v9 = *(a2 + 16);
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_4:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = Strong;
LABEL_10:
  v17 = *(v11 + 80);

  if (!*(v17 + 16) || (v18 = sub_1973F4028(v8, v7), (v19 & 1) == 0))
  {

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197527B30);
    MEMORY[0x19A8DFF80](v8, v7);
    MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
    if (*(a2 + 16) || swift_weakLoadStrong())
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_17;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 144);
  if (!v21)
  {
LABEL_18:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000054, 0x8000000197527B50);
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    while (1)
    {
      sub_1975223EC();
      __break(1u);
LABEL_20:
      type metadata accessor for ModelContainer();

      sub_19752235C();
    }
  }

  v22 = *(v20 + 152);

  v23 = sub_1974B10B8(v21, a1, v20, a2, v21, v22);

  *a3 = v23;
  a3[1] = v22;
  return result;
}

uint64_t sub_1974B10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for _KKMDBackingData();
  swift_beginAccess();
  v71 = a2;
  v10 = *(a2 + 8);
  *&v86 = *a2;
  BYTE8(v86) = v10;
  sub_1974028EC(v86, v10);
  v68 = v9;
  v75 = sub_197512DF4(a1, &v86);
  swift_beginAccess();
  v70 = a3;
  v11 = *(a3 + 80);
  if ((v11 & 0xC000000000000001) != 0)
  {
    if (v11 < 0)
    {
      v12 = *(a3 + 80);
    }

    v13 = *(a3 + 80);

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_197404E28(&qword_1ED7CA320, type metadata accessor for Schema.Attribute);
    sub_197521C1C();
    v11 = v81;
    v14 = v82;
    v15 = v83;
    v16 = v84;
    v17 = v85;
  }

  else
  {
    v18 = -1 << *(v11 + 32);
    v14 = v11 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v11 + 56);
    v21 = *(a3 + 80);

    v16 = 0;
  }

  v22 = (v15 + 64) >> 6;
  v23 = &qword_1EAF2AF20;
  v73 = v11;
  v74 = v22;
  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v24 = sub_19752212C();
  if (v24)
  {
    *&v76 = v24;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v25 = v86;
    v26 = v16;
    v27 = v17;
    if (v86)
    {
      while (1)
      {
        swift_beginAccess();
        sub_1974047F8(v25 + 64, &v76, v23, &unk_19752F320);
        if (v77)
        {
          v30 = v14;
          v31 = v23;
          sub_1974028B8(&v76, &v86);
          v32 = v75[2];
          swift_beginAccess();
          v16 = *(v25 + 16);
          v23 = *(v25 + 24);
          sub_197404860(&v86, &v76);
          v33 = *(v32 + 16);
          v34 = *(v33 + 16);

          if (!v34)
          {
            goto LABEL_68;
          }

          v35 = sub_1973F4028(v16, v23);
          if ((v36 & 1) == 0)
          {
            goto LABEL_68;
          }

          v37 = v35;

          v23 = *(*(v33 + 56) + 8 * v37);
          swift_beginAccess();
          v38 = *(v32 + 32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v32 + 32) = v38;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v23 < 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v38 = sub_19751C104(v38);
            *(v32 + 32) = v38;
            if (v23 < 0)
            {
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }
          }

          if (v23 >= v38[2])
          {
            goto LABEL_66;
          }

          sub_1973F7958(&v76, &v38[4 * v23 + 4]);
          *(v32 + 32) = v38;
          swift_endAccess();

          v23 = v31;
          sub_1974050A8(&v76, v31, &unk_19752F320);
          __swift_destroy_boxed_opaque_existential_0Tm(&v86);

          v16 = v26;
          v17 = v27;
          v14 = v30;
          v11 = v73;
          v22 = v74;
          if (v73 < 0)
          {
            goto LABEL_12;
          }
        }

        else
        {

          sub_1974050A8(&v76, v23, &unk_19752F320);
          v16 = v26;
          v17 = v27;
          if (v11 < 0)
          {
            goto LABEL_12;
          }
        }

LABEL_15:
        v28 = v16;
        v29 = v17;
        v26 = v16;
        if (!v17)
        {
          break;
        }

LABEL_19:
        v27 = (v29 - 1) & v29;
        v25 = *(*(v11 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v29)))));

        if (!v25)
        {
          goto LABEL_30;
        }
      }

      while (1)
      {
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        if (v26 >= v22)
        {
          break;
        }

        v29 = *(v14 + 8 * v26);
        ++v28;
        if (v29)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_30:
  sub_197458C2C();
  swift_beginAccess();
  v16 = *(v70 + 88);
  if ((v16 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v40 = *(v70 + 88);
    }

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_197404E28(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v41 = *(&v86 + 1);
    v16 = v86;
    v42 = v87;
    v43 = v88;
    v23 = v89;
  }

  else
  {
    v44 = -1 << *(v16 + 32);
    v41 = v16 + 56;
    v42 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v23 = v46 & *(v16 + 56);

    v43 = 0;
  }

  v47 = (v42 + 64) >> 6;
  while (v16 < 0)
  {
    if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v52 = v76, v50 = v43, v51 = v23, !v76))
    {
LABEL_63:
      sub_197458C2C();
      v77 = v68;
      WitnessTable = swift_getWitnessTable();
      *&v76 = v75;
      return (*(a6 + 48))(&v76);
    }

LABEL_49:
    if ((*(v52 + 168) & 1) == 0)
    {
      swift_beginAccess();
      v53 = *(v52 + 64);
      if (!swift_conformsToProtocol2() || v53 == 0)
      {
        if (*(a4 + 16))
        {
          v55 = *(a4 + 16);
        }

        else
        {
          Strong = swift_weakLoadStrong();
          if (!Strong)
          {
            goto LABEL_67;
          }

          v55 = Strong;
        }

        v57 = *(v55 + 80);

        swift_beginAccess();
        if (!*(v57 + 16) || (v58 = *(v52 + 72), v59 = *(v52 + 80), , v60 = sub_1973F4028(v58, v59), v62 = v61, , (v62 & 1) == 0))
        {

          *&v76 = 0;
          *(&v76 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
          v67 = *(v52 + 72);
          v66 = *(v52 + 80);

          MEMORY[0x19A8DFF80](v67, v66);

          MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197526030);
          goto LABEL_71;
        }

        v63 = *(*(v57 + 56) + 8 * v60);

        v64 = *(v63 + 144);
        if (!v64)
        {
          *&v76 = 0;
          *(&v76 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197526060);
          type metadata accessor for Schema.Entity();
          sub_19752235C();
          goto LABEL_71;
        }

        sub_1974B1B44(v64, v52, v71, v75, *(v63 + 144), *(v63 + 152));
      }
    }

    v43 = v50;
    v23 = v51;
  }

  v48 = v43;
  v49 = v23;
  v50 = v43;
  if (v23)
  {
LABEL_45:
    v51 = (v49 - 1) & v49;
    v52 = *(*(v16 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));

    if (!v52)
    {
      goto LABEL_63;
    }

    goto LABEL_49;
  }

  while (1)
  {
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v50 >= v47)
    {
      goto LABEL_63;
    }

    v49 = *(v41 + 8 * v50);
    ++v48;
    if (v49)
    {
      goto LABEL_45;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_1975221EC();

  v79 = 0xD000000000000029;
  v80 = 0x8000000197527BD0;
  MEMORY[0x19A8DFF80](v16, v23);
LABEL_71:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974B19B4(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v2 = MEMORY[0x1E69E77B0];
  v3 = *(v1 + *MEMORY[0x1E69E77B0] + 8);
  v4 = sub_1975214EC();
  v5 = sub_1975214EC();
  if (v4)
  {
    if (v5 && v4 == v5)
    {
      goto LABEL_4;
    }
  }

  else if (!v5)
  {
LABEL_4:
    sub_1975215CC();
    sub_197521AAC();
    return swift_dynamicCast();
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x8000000197527C80);
  v7 = *(v1 + *v2);
  sub_197522B2C();
  sub_1975227FC();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974B1B44(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v42 = a3;
  v9 = *a4;
  v10 = sub_1975212CC();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (a2[6] && (v15 = *(v9 + 232), v16 = sub_197521AAC(), sub_197522B2C(), (v17 = swift_dynamicCastClass()) != 0))
  {
    v18 = v17;
    v19 = a4[2];
    swift_beginAccess();
    v20 = a2[2];
    v21 = a2[3];
    v47 = v16;
    v22 = *(v9 + 240);
    v44 = a6;

    swift_getWitnessTable();
    sub_1974B19B4(v18);
    sub_197511DB4(&v45, v20, v21);
  }

  else
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1975221EC();
    v48 = v45;
    v49 = v46;
    MEMORY[0x19A8DFF80](0xD000000000000075, 0x8000000197527C00);
    swift_beginAccess();
    v24 = a2[2];
    v25 = a2[3];

    MEMORY[0x19A8DFF80](v24, v25);

    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v26 = v42;
    swift_beginAccess();
    v27 = *v26;
    if (*(v26 + 8))
    {
      v28 = *v26;
      if (*(v26 + 8) == 1)
      {
        v38 = sub_1974028EC(v28, 1);
        v31 = sub_19750ACDC(v38, v39);
        v33 = v40;
        v34 = v27;
        v35 = 1;
      }

      else
      {
        v29 = sub_1974028EC(v28, 2);
        v31 = sub_19750A29C(v29, v30);
        v33 = v32;
        v34 = v27;
        v35 = 2;
      }

      sub_1974028C8(v34, v35);
    }

    else
    {
      sub_1974028EC(*v26, 0);
      v36 = [v27 URIRepresentation];
      sub_19752127C();

      v31 = sub_19752121C();
      v33 = v37;
      sub_1974028C8(v27, 0);
      (*(v43 + 8))(v14, v10);
    }

    MEMORY[0x19A8DFF80](v31, v33);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974B1EEC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v8 = v7;
  if (swift_getAssociatedTypeWitness() == a4)
  {
    v13 = type metadata accessor for _KKMDBackingData();
    v20 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v19 + 24))(&v34, v20, v19);
    v39 = v34;
    v40 = v35;
    v16 = sub_197512DF4(a4, &v39);
    v21 = sub_197512E44();
    v22 = *(v21 + 16);
    *(v21 + 16) = v8;

    *(*(v16 + 40) + 80) = 0;
    sub_197430254(1);
  }

  else
  {
    v13 = type metadata accessor for _StitchedBackingData();
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 24))(&v34, v14, v15);
    v39 = v34;
    v40 = v35;
    v16 = sub_197512F10(a4, &v39);
    v17 = *(v16 + 24);
    v18 = *(v17 + 16);
    *(v17 + 16) = v8;

    *(*(v16 + 24) + 80) = 0;
    sub_197512F08(1);
  }

  a7[3] = v13;
  a7[4] = swift_getWitnessTable();
  *a7 = v16;
  v34 = a4;
  v35 = a3;
  v36 = a6;
  v37 = a5;
  v23 = type metadata accessor for BackingDataEncoder();

  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_197441730(MEMORY[0x1E69E7CC0]);
  v26 = sub_19749A79C(a7, v8, a2, v24, v25);

  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v23;
  WitnessTable = swift_getWitnessTable();
  v34 = v26;
  v28 = *(v27 + 16);

  v29 = v41;
  sub_19752169C();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a7);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(&v34);
}

uint64_t sub_1974B21D0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_1974309B4(&v3);
}

void sub_1974B2204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a3, &v7);
  v5 = v7;
  v6 = v8;
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  sub_1974028C8(v5, v6);
}

uint64_t sub_1974B2310(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v6);
  v4 = v6;
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8();
      sub_1974028C8(v4, 1);
      sub_1974028C8(v4, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v4, 2);
      sub_1974028C8(v4, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
    sub_1974028C8(v4, 0);
    sub_1974028C8(v4, 0);
  }

  return sub_197522A9C();
}

uint64_t sub_1974B2484()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, v2, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v4, v5);
  sub_1974028C8(v4, v5);
  return sub_197522A9C();
}

void sub_1974B25D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 24))
  {
    if (v2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v1, 1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v1, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v1, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v1, v2);
}

uint64_t sub_1974B26DC()
{
  sub_197522A5C();
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v1, 1);
      sub_197452CB8();
      sub_1974028C8(v1, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v1, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v1, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v1, 0);
    sub_197521F4C();
    sub_1974028C8(v1, 0);
  }

  return sub_197522A9C();
}

uint64_t sub_1974B2808()
{
  sub_197522A5C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 24))
  {
    if (v2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v1, 1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v1, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v1, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v1, v2);
  return sub_197522A9C();
}

uint64_t sub_1974B2918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  sub_1974028EC(v2, v4);
  sub_1974028EC(v3, v5);
  v6 = sub_19742291C(v2, v4, v3, v5);
  sub_1974028C8(v3, v5);
  sub_1974028C8(v2, v4);
  return v6 & 1;
}

uint64_t sub_1974B29A0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a1;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 72))(a1, *(v10 + *MEMORY[0x1E69E77B0] + 8), a9, v11, v12);
  v13 = *(*(a9 + 16) + 8);
  if (sub_19752173C())
  {
    return swift_unknownObjectRelease();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974B2AE0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a1;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = *(*(v12 + *MEMORY[0x1E69E77B0] + 8) + 16);
  if ((*(v14 + 80))(a1, v15, a9, v13, v14))
  {
    v16 = *(*(a9 + 16) + 8);
    if (sub_19752173C())
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000003FLL, 0x80000001975274D0);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0x202E737620, 0xE500000000000000);
      sub_1975227FC();
      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    return (*(v19 + 128))(a1, a3, v15, a9, v18, v19);
  }

  return result;
}

void sub_1974B2CDC(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = *(v12 + 88);
  v14 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v15 = *(v14 + 16);
  WitnessTable = swift_getWitnessTable();
  v13(&v26, a1, v14, v15);
  PersistentModel.persistentModelID.getter(v15, a9, &v24);
  v16 = v24;
  v17 = v25;
  v24 = v26;
  v23 = *(v11 + *MEMORY[0x1E69E77B0]);

  swift_getWitnessTable();
  v18 = sub_19752196C();

  if (v18)
  {

    sub_1974028C8(v16, v17);
  }

  else
  {
    v24 = a3;
    swift_unknownObjectRetain();
    sub_197521A7C();
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v24 = v26;
    (*(v20 + 136))(a1, &v24, v14, v15, WitnessTable, v19, v20);
    sub_1974028C8(v16, v17);
  }
}

uint64_t sub_1974B2F38(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  result = swift_beginAccess();
  if (*(v3 + 63) == 1)
  {
    v8 = *(v6 + *MEMORY[0x1E69E6B90]);
    swift_beginAccess();
    v9 = *(v3 + 160);
    if (*(v9 + 16) && (v10 = sub_1973F7950(v8, a2), (v11 & 1) != 0))
    {
      v17 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    sub_19747D9D8(v16, a1);

    v12 = v17;
    swift_beginAccess();
    v13 = *(v3 + 160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 160);
    *(v3 + 160) = 0x8000000000000000;
    sub_19747CE90(v12, v8, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 160) = v15;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1974B3098(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  result = swift_beginAccess();
  if (*(v3 + 63) == 1)
  {
    v8 = *(v6 + *MEMORY[0x1E69E6B90]);
    swift_beginAccess();
    v9 = *(v3 + 168);
    if (*(v9 + 16) && (v10 = sub_1973F7950(v8, a2), (v11 & 1) != 0))
    {
      v17 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    sub_19747D9D8(v16, a1);

    v12 = v17;
    swift_beginAccess();
    v13 = *(v3 + 168);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + 168);
    *(v3 + 168) = 0x8000000000000000;
    sub_19747CE90(v12, v8, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 168) = v15;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1974B3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12 = *(a2 + 160);
  if (!*(v12 + 16) || (v13 = sub_1973F7950(a5, a7), (v14 & 1) == 0))
  {
LABEL_24:
    result = sub_1975214CC();
    if (result)
    {
      v31 = result;
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_1974B3210(v31, a2, a3, a4, v31, a6, result);
      }
    }

    return result;
  }

  v32 = a2;
  v33 = a6;
  v15 = *(*(v12 + 56) + 8 * v13);
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_19752202C();
    result = sub_197521C1C();
    v15 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
  }

  else
  {
    v21 = -1 << *(v15 + 32);
    v17 = v15 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v15 + 56);

    v19 = 0;
  }

  v24 = (v18 + 64) >> 6;
  while (v15 < 0)
  {
    if (!sub_19752212C() || (sub_19752202C(), swift_dynamicCast(), v29 = v35, v27 = v19, v28 = v20, !v35))
    {
LABEL_23:
      sub_197458C2C();
      a2 = v32;
      a6 = v33;
      goto LABEL_24;
    }

LABEL_21:
    sub_19752228C();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      sub_197521C2C();

      sub_197521C0C();
      swift_endAccess();
    }

    else
    {
      v30 = *v29;
      sub_197521FFC();
      swift_beginAccess();
      sub_197521C2C();
      swift_retain_n();
      sub_197521C0C();
      swift_endAccess();
    }

    v19 = v27;
    v20 = v28;
  }

  v25 = v19;
  v26 = v20;
  v27 = v19;
  if (v20)
  {
LABEL_17:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v15 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

    if (!v29)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
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
      goto LABEL_23;
    }

    v26 = *(v17 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974B35A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  sub_19752228C();
  *(v8 + 16) = sub_1975215DC();
  a4(a2, v4, v8, a2, a2, a3, a3);
  swift_beginAccess();
  v9 = *(v8 + 16);

  return v9;
}

uint64_t sub_1974B3668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12 = *(a2 + 168);
  if (!*(v12 + 16) || (v13 = sub_1973F7950(a5, a7), (v14 & 1) == 0))
  {
LABEL_24:
    result = sub_1975214CC();
    if (result)
    {
      v31 = result;
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_1974B3668(v31, a2, a3, a4, v31, a6, result);
      }
    }

    return result;
  }

  v32 = a2;
  v33 = a6;
  v15 = *(*(v12 + 56) + 8 * v13);
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_19752202C();
    result = sub_197521C1C();
    v15 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
  }

  else
  {
    v21 = -1 << *(v15 + 32);
    v17 = v15 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v15 + 56);

    v19 = 0;
  }

  v24 = (v18 + 64) >> 6;
  while (v15 < 0)
  {
    if (!sub_19752212C() || (sub_19752202C(), swift_dynamicCast(), v29 = v35, v27 = v19, v28 = v20, !v35))
    {
LABEL_23:
      sub_197458C2C();
      a2 = v32;
      a6 = v33;
      goto LABEL_24;
    }

LABEL_21:
    sub_19752228C();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      sub_197521C2C();

      sub_197521C0C();
      swift_endAccess();
    }

    else
    {
      v30 = *v29;
      sub_197521FFC();
      swift_beginAccess();
      sub_197521C2C();
      swift_retain_n();
      sub_197521C0C();
      swift_endAccess();
    }

    v19 = v27;
    v20 = v28;
  }

  v25 = v19;
  v26 = v20;
  v27 = v19;
  if (v20)
  {
LABEL_17:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v15 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

    if (!v29)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
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
      goto LABEL_23;
    }

    v26 = *(v17 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1974B39E0()
{
  v1 = v0;
  v2 = *(v0 + 56);
  *(v0 + 56) = 0;
  sub_19743FB78(0);
  swift_beginAccess();
  v3 = *(v0 + 64);
  *(v0 + 64) = 0;

  swift_beginAccess();
  if (*(*(v0 + 88) + 16) || (swift_beginAccess(), *(*(v0 + 72) + 16)) || (swift_beginAccess(), *(*(v0 + 104) + 16)))
  {
    v81 = v2;
    v80 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    v4 = *(v0 + 88);
    swift_beginAccess();
    v5 = *(v1 + 104);

    v7 = sub_19743E380(v6, v4);
    v8 = v7;
    v9 = v7 + 56;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
LABEL_13:
      v16 = (*(v8 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = *v16;
      v18 = v16[1];
      ObjectType = swift_getObjectType();
      v20 = swift_unknownObjectRetain();
      if (sub_1974C0AD0(v20, ObjectType, v18))
      {
        swift_unknownObjectRelease();
      }

      v12 &= v12 - 1;
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_13;
      }
    }

    swift_beginAccess();
    v21 = *(v1 + 72);
    v22 = 1 << *(v21 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v21 + 56);
    v25 = (v22 + 63) >> 6;
    v26 = *(v1 + 72);
    swift_bridgeObjectRetain_n();
    v27 = 0;
    while (v24)
    {
      v28 = v27;
LABEL_23:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = (*(v21 + 48) + ((v28 << 10) | (16 * v29)));
      v32 = *v30;
      v31 = v30[1];
      v33 = swift_getObjectType();
      v34 = swift_unknownObjectRetain();
      sub_1974B7028(v34, v33, v31);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        v35 = *(v1 + 104);
        v36 = 1 << *(v35 + 32);
        v37 = -1;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        v38 = v37 & *(v35 + 56);
        v39 = (v36 + 63) >> 6;
        v40 = *(v1 + 104);
        swift_bridgeObjectRetain_n();
        v41 = 0;
        while (v38)
        {
          v42 = v41;
LABEL_33:
          v43 = __clz(__rbit64(v38));
          v38 &= v38 - 1;
          v44 = (*(v35 + 48) + ((v42 << 10) | (16 * v43)));
          v46 = *v44;
          v45 = v44[1];
          v47 = swift_getObjectType();
          v48 = swift_unknownObjectRetain();
          sub_197454EEC(v48, v47, v45);
          swift_unknownObjectRelease();
        }

        while (1)
        {
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_46;
          }

          if (v42 >= v39)
          {

            v49 = *(v1 + 88);
            if (*(v49 + 16))
            {
              v50 = *MEMORY[0x1E695D4D0];
              v51 = sub_1975217BC();
              v53 = v52;
              swift_beginAccess();
              v54 = *(v1 + 96);

              v56 = sub_19743E380(v55, v49);
              v57 = sub_19743AD6C(v56);

              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
              *&v84 = v57;
              sub_1974028B8(&v84, v82);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v83 = v80;
              sub_1973FF710(v82, v51, v53, isUniquelyReferenced_nonNull_native);

              v59 = v83;
              v2 = v81;
            }

            else
            {
              v2 = v81;
              v59 = v80;
            }

            v60 = *(v1 + 72);
            if (*(v60 + 16))
            {
              v61 = *MEMORY[0x1E695D2F8];
              v62 = sub_1975217BC();
              v64 = v63;
              swift_beginAccess();
              v65 = *(v1 + 80);

              v67 = sub_19743E380(v66, v60);
              v68 = sub_19743AD6C(v67);

              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
              *&v84 = v68;
              sub_1974028B8(&v84, v82);
              v69 = swift_isUniquelyReferenced_nonNull_native();
              v83 = v59;
              sub_1973FF710(v82, v62, v64, v69);

              v59 = v83;
            }

            v70 = *(v1 + 104);
            if (*(v70 + 16))
            {
              v71 = *MEMORY[0x1E695D328];
              v72 = sub_1975217BC();
              v74 = v73;
              swift_beginAccess();
              v75 = *(v1 + 112);

              v77 = sub_19743E380(v76, v70);
              v78 = sub_19743AD6C(v77);

              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
              *&v84 = v78;
              sub_1974028B8(&v84, v82);
              v79 = swift_isUniquelyReferenced_nonNull_native();
              sub_1973FF710(v82, v72, v74, v79);
            }

            sub_1974443D4(v59);

            sub_19743FB78(0);
            sub_19740EB4C();
            goto LABEL_43;
          }

          v38 = *(v35 + 56 + 8 * v42);
          ++v41;
          if (v38)
          {
            v41 = v42;
            goto LABEL_33;
          }
        }
      }

      v24 = *(v21 + 56 + 8 * v28);
      ++v27;
      if (v24)
      {
        v27 = v28;
        goto LABEL_23;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_43:
    *(v1 + 56) = v2;
  }
}

uint64_t sub_1974B4038(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v1 + 184) = v5;
  v6 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v7 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList);
  if (v7 && (*(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID + 4) & 1) == 0)
  {
    v8 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID) != *(v1 + 176);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

  v8 = 1;
  v9 = *(v6 + 16);
  if (!v9)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_5:
  v44 = v1;
  v2 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots);
  v10 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots);
  v37 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v38 = v9 - 1;
  v42 = v6 + 32;
  if (!v7)
  {
    v8 = 1;
  }

  v41 = v8;

  v11 = 0;
  v43 = v10;
  v12 = (v10 + 40);
  v36 = MEMORY[0x1E69E7CC0];
  v39 = v2;
  v40 = v7;
  while (1)
  {
    v45 = *(v42 + 16 * v11);
    if (v2)
    {
      if (v11 >= *(v2 + 16))
      {
        goto LABEL_49;
      }

      v13 = *(v2 + 8 * v11 + 32);

      if (v41)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      if (v41)
      {
        goto LABEL_11;
      }
    }

    if (v11 >= *(v7 + 16))
    {
      goto LABEL_50;
    }

    v14 = *(v7 + v11 + 32);
LABEL_15:
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    PersistentModel.persistentModelID.getter(ObjectType, *(&v45 + 1), &v47);
    v16 = v47;
    v2 = v48;
    v49 = v47;
    v50 = v48;
    sub_1974553C8(v45, &v49, ObjectType, *(&v45 + 1));
    sub_1974028C8(v16, v2);
    if (v13)
    {
      sub_1974A6264(v13, ObjectType, *(&v45 + 1));

      if (v43)
      {
        if (v11 >= *(v43 + 16))
        {
          goto LABEL_51;
        }

        if (*(v12 - 1))
        {
          v17 = *v12;
          v18 = *(v12 - 1);
          v19 = swift_unknownObjectRetain();
          sub_197442F3C(v19, v17, ObjectType, *(&v45 + 1));
          swift_unknownObjectRelease();
        }
      }
    }

    if (sub_1974C2378(ObjectType, *(&v45 + 1)))
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v45;
      *(v20 + 32) = v44;
      swift_unknownObjectRetain();

      sub_197455A10(0, sub_1974C17E4, v20, ObjectType, *(&v45 + 1));

      sub_197457A40(0, ObjectType, *(&v45 + 1));
    }

    if (!v14)
    {
      goto LABEL_34;
    }

    PersistentModel.persistentModelID.getter(ObjectType, *(&v45 + 1), &v47);
    if (v48)
    {
      if (v48 != 1)
      {
        sub_1974028C8(v47, 2);
LABEL_34:
        swift_unknownObjectRelease_n();
        v2 = v39;
        v7 = v40;
        goto LABEL_35;
      }

      v21 = *(v47 + 33);
      sub_1974028C8(v47, 1);
      if (v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v22 = v47;
      v23 = [v47 isTemporaryID];
      sub_1974028C8(v22, 0);
      if (v23)
      {
        goto LABEL_34;
      }
    }

    sub_1974A7F6C(0, ObjectType, *(&v45 + 1));
    sub_1974A7FC4(0, ObjectType, *(&v45 + 1));
    swift_beginAccess();
    sub_1974580E0(v45, *(&v45 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v45, *(&v45 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197458088(0, ObjectType, *(&v45 + 1));
    sub_1974556E8(0, ObjectType, *(&v45 + 1));
    swift_beginAccess();
    sub_1974580E0(v45, *(&v45 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v45, *(&v45 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197432658(v45, ObjectType, *(&v45 + 1));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_197442AD4(0, *(v36 + 2) + 1, 1, v36);
    }

    v25 = *(v36 + 2);
    v24 = *(v36 + 3);
    v2 = v39;
    v7 = v40;
    if (v25 >= v24 >> 1)
    {
      v36 = sub_197442AD4((v24 > 1), v25 + 1, 1, v36);
    }

    swift_unknownObjectRelease();
    *(v36 + 2) = v25 + 1;
    *&v36[16 * v25 + 32] = v45;
LABEL_35:
    if (v38 == v11)
    {
      break;
    }

    ++v11;
    v12 += 2;
    if (v11 >= *(v37 + 16))
    {
      goto LABEL_48;
    }
  }

  v26 = *(v44 + 184);
  v4 = __OFSUB__(v26, 1);
  v27 = v26 - 1;
  if (v4)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v44 + 184) = v27;
  if (*(v36 + 2))
  {
    swift_beginAccess();
    v28 = *(v44 + 40);
    if (v28)
    {
      v29 = type metadata accessor for ModelContext._UndoModifiedDeletedList();
      v30 = objc_allocWithZone(v29);
      *&v30[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56024_UndoModifiedDeletedList__deletedModifiedObjects] = v36;
      v46.receiver = v30;
      v46.super_class = v29;
      v31 = v28;

      v32 = objc_msgSendSuper2(&v46, sel_init);
      [v31 registerUndoWithTarget:v44 selector:sel__undoDeletionsMovedToUpdates_ object:v32];
    }

    v2 = sub_1974F9648(v36);

    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_43:
      v33 = MEMORY[0x1E69E7CD0];
      goto LABEL_44;
    }

LABEL_54:
    if (!sub_1975220EC())
    {
      goto LABEL_43;
    }

    sub_1974FA0B4(MEMORY[0x1E69E7CC0]);
    v33 = v35;
LABEL_44:
    sub_197443A28(v2, MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], v33, MEMORY[0x1E69E7CD0], 0);
  }
}

uint64_t sub_1974B46E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_getObjectType();

  return sub_197456F2C(a1, a2, a4, v11, ObjectType, a5, a3);
}

uint64_t sub_1974B477C(uint64_t result)
{
  v2 = *(v1 + 184);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v5 = v1;
  *(v1 + 184) = v4;
  v6 = *(result + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_20;
  }

  v25 = v7 - 1;
  v8 = *(result + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots);

  v9 = 0;
  v24 = v6;
  v10 = (v6 + 40);
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    if (v8)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v13 = *(v8 + 8 * v9 + 32);
    }

    else
    {
      v13 = 0;
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    if (PersistentModel.modelContext.getter(ObjectType, v12))
    {

      v15 = v11;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      PersistentModel.persistentModelID.getter(ObjectType, v12, &v28);
      v17 = v28;
      v18 = v5;
      v19 = v29;
      v26 = v28;
      v27 = v29;
      v15 = sub_1974309B4(&v26);
      v12 = v20;
      swift_unknownObjectRelease();
      v21 = v19;
      v5 = v18;
      sub_1974028C8(v17, v21);
      if (v13)
      {
LABEL_10:
        v16 = swift_getObjectType();
        sub_197432658(v15, v16, v12);
        sub_1974A6264(v13, v16, v12);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
LABEL_13:
    if (v25 == v9)
    {
      goto LABEL_16;
    }

    ++v9;
    v10 += 2;
  }

  while (v9 < *(v24 + 16));
  __break(1u);
LABEL_16:

  v22 = *(v5 + 184);
  v3 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v3)
  {
    goto LABEL_21;
  }

  *(v5 + 184) = v23;
  return result;
}

void sub_1974B4990(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v1 + 184) = v4;
  v5 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots);
  v26 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v6 = *(v26 + 16);

  v25 = v6;
  if (v6)
  {
    v7 = 0;
    v23 = v5;
    v24 = v5 + 32;
    v8 = (v26 + 40);
    while (v7 < *(v26 + 16))
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain_n();
      if (PersistentModel.modelContext.getter(ObjectType, v11))
      {

        v13 = v10;
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        PersistentModel.persistentModelID.getter(ObjectType, v11, &v29);
        v14 = v29;
        v15 = v30;
        v27 = v29;
        v28 = v30;
        v13 = sub_1974309B4(&v27);
        v11 = v16;
        swift_unknownObjectRelease();
        sub_1974028C8(v14, v15);
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      if (v7 >= *(v5 + 16))
      {
        goto LABEL_16;
      }

      v17 = *(v24 + 8 * v7);
      if (v17)
      {
        v18 = swift_getObjectType();

        sub_1974A6118(v18, v11);
        sub_197442F3C(v19, v20, v18, v11);
        v5 = v23;
        swift_unknownObjectRelease();
        sub_1974A6264(v17, v18, v11);
      }

      ++v7;
      v9 = swift_getObjectType();
      sub_1974B7028(v13, v9, v11);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v8 += 2;
      if (v25 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_13:

  v21 = *(v1 + 184);
  v3 = __OFSUB__(v21, 1);
  v22 = v21 - 1;
  if (!v3)
  {
    *(v1 + 184) = v22;
    return;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1974B4BD0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56024_UndoModifiedDeletedList__deletedModifiedObjects);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v6 = *(v4 - 1);
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v8 = swift_unknownObjectRetain();
      sub_1974B7028(v8, ObjectType, v5);
      result = swift_unknownObjectRelease();
      v4 += 2;
      if (v2 == v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1974B4C84(uint64_t a1)
{
  sub_19743FB78(0);
  v3 = *(a1 + 16);
  if (!v3)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  sub_197404860(a1 + 32, v20);
  sub_1974C179C(0, &qword_1ED7C9B88, 0x1E696AD98);
  swift_dynamicCast();
  v4 = *(v1 + 176);
  if (v4 != [v19 intValue])
  {

    return;
  }

  if (v3 == 1)
  {
    goto LABEL_27;
  }

  sub_197404860(a1 + 64, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
  swift_dynamicCast();
  swift_beginAccess();
  v5 = *(v1 + 88);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = *(v1 + 88);
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v8)
  {
LABEL_13:
    v13 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v13;
    v15 = v13[1];
    v16 = swift_unknownObjectRetain();
    if ((sub_197473494(v16, v15, v19) & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      sub_197442A5C(0, ObjectType, v15);
      swift_beginAccess();
      sub_1974580E0(v14, v15);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    v8 &= v8 - 1;
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  *(v1 + 180) = 0;
  swift_beginAccess();
  if (*(*(v1 + 72) + 16) || (swift_beginAccess(), *(*(v1 + 80) + 16)) || (swift_beginAccess(), *(*(v1 + 104) + 16)) || (swift_beginAccess(), *(*(v1 + 112) + 16)) || *(*(v1 + 88) + 16))
  {
    v18 = 1;
    goto LABEL_22;
  }

LABEL_25:
  swift_beginAccess();
  v18 = *(*(v1 + 96) + 16) != 0;
LABEL_22:
  *(v1 + 48) = v18;
}

uint64_t sub_1974B5018(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = *(v1 + 184);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (!v3)
    {
      v5 = result;
      *(v1 + 184) = v4;
      *(v1 + 61) = 1;
      v6 = MEMORY[0x1E69E7CD0];
      v17 = MEMORY[0x1E69E7CD0];

      swift_beginAccess();
      v7 = 0;
      v8 = *(v1 + 112);
      while (1)
      {
        *(v1 + 112) = v6;

        sub_1974AE2B4(v5);
        v9 = *(v5 + 16);

        if (v7 >= 50)
        {
          v10 = *(v1 + 112);
          v11 = v17;

          v12 = sub_1974B5168(v17, v10);

          if (v12)
          {
            goto LABEL_11;
          }

          v7 = 0;
          if (v9 <= 0)
          {
LABEL_10:
            v11 = v17;
LABEL_11:
            swift_beginAccess();
            v14 = *(v1 + 112);
            *(v1 + 112) = v11;

            *(v1 + 61) = 0;
            v15 = *(v1 + 184);
            v3 = __OFSUB__(v15, 1);
            v16 = v15 - 1;
            if (!v3)
            {
              *(v1 + 184) = v16;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }
        }

        else
        {
          ++v7;
          if (v9 <= 0)
          {
            goto LABEL_10;
          }
        }

        v13 = *(v1 + 112);
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1974B5168(uint64_t a1, uint64_t a2)
{
  v106 = sub_1975212CC();
  v4 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106, v5);
  v105 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v8 = a2 + 56;
  v9 = 1 << *(a2 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;
  v111 = a1 + 56;
  v104 = (v6 + 8);

  v14 = 0;
  v109 = a1;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_6:
  while (2)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      if (v15 < v12)
      {
        v11 = *(v8 + 8 * v15);
        ++v14;
        if (!v11)
        {
          continue;
        }

        v14 = v15;
        if (!*(a1 + 16))
        {
LABEL_102:

          return 0;
        }

LABEL_12:
        v16 = (*(a2 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(a1 + 40);
        sub_197522A5C();
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v114 = ObjectType;
        v115 = v17;
        v108 = v18;
        PersistentModel.persistentModelID.getter(ObjectType, v17, &v116);
        v21 = v116;
        v103 = a2;
        v102 = v8;
        v101 = v12;
        v100 = v14;
        if (v117)
        {
          if (v117 == 1)
          {
            MEMORY[0x19A8E1190](1);
            sub_1974028EC(v21, 1);
            sub_197452CB8();
            sub_1974028C8(v21, 1);
            sub_1974028C8(v21, 1);
          }

          else
          {
            MEMORY[0x19A8E1190](2);
            sub_1974028EC(v21, 2);
            sub_19750A470();
            sub_19752180C();

            sub_19750A588();
            sub_19752180C();
            sub_1974028C8(v21, 2);
            sub_1974028C8(v21, 2);
          }
        }

        else
        {
          MEMORY[0x19A8E1190](0);
          sub_1974028EC(v21, 0);
          sub_197521F4C();
          sub_1974028C8(v21, 0);
          sub_1974028C8(v21, 0);
        }

        v22 = sub_197522A9C();
        v23 = -1 << *(a1 + 32);
        v24 = v22 & ~v23;
        if (((*(v111 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
LABEL_101:
          swift_unknownObjectRelease();
          goto LABEL_102;
        }

        v99 = (v11 - 1) & v11;
        v110 = ~v23;
        while (1)
        {
          v25 = (*(a1 + 48) + 16 * v24);
          v27 = *v25;
          v26 = v25[1];
          v28 = swift_getObjectType();
          swift_unknownObjectRetain();
          v112 = v28;
          v113 = v26;
          PersistentModel.persistentModelID.getter(v28, v26, &v118);
          v29 = v118;
          v30 = v119;
          PersistentModel.persistentModelID.getter(v114, v115, &v116);
          v31 = v116;
          v32 = v117;
          if (!v30)
          {
            if (!v117)
            {
              sub_1974C179C(0, &qword_1ED7C8630, 0x1E69E58C0);
              v58 = v29;
              v59 = sub_197521F3C();
              sub_1974028C8(v31, 0);
              v60 = v58;
              v61 = 0;
LABEL_56:
              sub_1974028C8(v60, v61);
              if ((v59 & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_92;
            }

            type metadata accessor for PersistentIdentifierImplementation();
            v37 = swift_allocObject();
            *(v37 + 40) = 0;
            *(v37 + 48) = 0;
            v38 = [v29 persistentStore];
            if (v38)
            {
              v107 = v29;
              v39 = v38;
              v40 = [v38 identifier];

              if (v40)
              {
                v41 = sub_1975217BC();
                v43 = v42;
              }

              else
              {
                v41 = 0;
                v43 = 0;
              }

              v29 = v107;
            }

            else
            {
              v41 = 0;
              v43 = 0;
            }

            *(v37 + 16) = v41;
            *(v37 + 24) = v43;
            *(v37 + 33) = [v29 isTemporaryID];
            *(v37 + 32) = 1;
            v77 = v29;
            v78 = [v29 URIRepresentation];
            v79 = v105;
            sub_19752127C();

            v80 = sub_19752123C();
            v82 = v81;
            (*v104)(v79, v106);
            *(v37 + 56) = v80;
            *(v37 + 64) = v82;
            v83 = [v77 entityName];
            v84 = sub_1975217BC();
            v86 = v85;

            v29 = v77;
            *(v37 + 72) = v84;
            *(v37 + 80) = v86;
            goto LABEL_71;
          }

          if (v30 != 1)
          {
            break;
          }

          if (v117 != 1)
          {
            sub_1974028EC(v29, 1);
            v37 = v29;
            if (!v32)
            {
              goto LABEL_50;
            }

LABEL_71:
            if (v32 == 1)
            {
              sub_1974028EC(v31, 1);
              v49 = v31;
            }

            else
            {
              type metadata accessor for PersistentIdentifierImplementation();
              v49 = swift_allocObject();
              *(v49 + 40) = 0;
              *(v49 + 48) = 0;
              *(v49 + 56) = sub_19750A470();
              *(v49 + 64) = v87;
              *(v49 + 72) = sub_19750A588();
              *(v49 + 80) = v88;
              *(v49 + 16) = 0;
              *(v49 + 24) = 0;
              *(v49 + 32) = 256;
            }

            a1 = v109;
            goto LABEL_75;
          }

          v33 = v29[7] == v116[7] && v29[8] == v116[8];
          if (!v33 && (sub_19752282C() & 1) == 0 || (v29[9] == v31[9] ? (v34 = v29[10] == v31[10]) : (v34 = 0), !v34 && (sub_19752282C() & 1) == 0))
          {
LABEL_60:
            LOBYTE(v32) = 1;
            LOBYTE(v30) = 1;
            goto LABEL_20;
          }

          v35 = v29[3];
          v36 = v31[3];
          if (v35)
          {
            if (!v36)
            {
              goto LABEL_60;
            }

            if (v29[2] == v31[2] && v35 == v36)
            {
              sub_1974028C8(v31, 1);
              sub_1974028C8(v29, 1);
              goto LABEL_92;
            }

            v96 = v31[3];
            v97 = v29;
            v59 = sub_19752282C();
            sub_1974028C8(v31, 1);
            v60 = v97;
            v61 = 1;
            goto LABEL_56;
          }

          sub_1974028C8(v31, 1);
          sub_1974028C8(v29, 1);
          if (v36)
          {
            goto LABEL_21;
          }

LABEL_92:
          v94 = PersistentModel.modelContext.getter(v112, v113);
          v95 = PersistentModel.modelContext.getter(v114, v115);
          swift_unknownObjectRelease();
          if (!v94)
          {
            if (!v95)
            {
LABEL_99:
              result = swift_unknownObjectRelease();
              a2 = v103;
              v8 = v102;
              v12 = v101;
              v11 = v99;
              v14 = v100;
              if (!v99)
              {
                goto LABEL_6;
              }

LABEL_11:
              if (!*(a1 + 16))
              {
                goto LABEL_102;
              }

              goto LABEL_12;
            }

LABEL_97:

            goto LABEL_22;
          }

          if (!v95)
          {
            goto LABEL_97;
          }

          if (v94 == v95)
          {
            goto LABEL_99;
          }

LABEL_22:
          v24 = (v24 + 1) & v110;
          if (((*(v111 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_101;
          }
        }

        if (v117 == 2)
        {
          v44 = v29;
          v45 = sub_19750A470();
          v47 = v46;
          if (v45 == sub_19750A470() && v47 == v48)
          {
          }

          else
          {
            v71 = sub_19752282C();

            if ((v71 & 1) == 0)
            {
              LOBYTE(v32) = 2;
              LOBYTE(v30) = 2;
              v29 = v44;
              a1 = v109;
              goto LABEL_20;
            }
          }

          v72 = sub_19750A588();
          v74 = v73;
          if (v72 == sub_19750A588() && v74 == v75)
          {

            sub_1974028C8(v31, 2);
            sub_1974028C8(v44, 2);
            a1 = v109;
          }

          else
          {
            v76 = sub_19752282C();

            sub_1974028C8(v31, 2);
            sub_1974028C8(v44, 2);
            a1 = v109;
            if ((v76 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          goto LABEL_92;
        }

        type metadata accessor for PersistentIdentifierImplementation();
        v37 = swift_allocObject();
        *(v37 + 40) = 0;
        *(v37 + 48) = 0;
        *(v37 + 56) = sub_19750A470();
        *(v37 + 64) = v56;
        *(v37 + 72) = sub_19750A588();
        *(v37 + 80) = v57;
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        *(v37 + 32) = 256;
        if (v32)
        {
          goto LABEL_71;
        }

LABEL_50:
        v107 = v29;
        type metadata accessor for PersistentIdentifierImplementation();
        v49 = swift_allocObject();
        *(v49 + 40) = 0;
        *(v49 + 48) = 0;
        v50 = [v31 persistentStore];
        if (v50 && (v51 = v50, v52 = [v50 identifier], v51, v52))
        {
          v53 = sub_1975217BC();
          v55 = v54;
        }

        else
        {
          v53 = 0;
          v55 = 0;
        }

        *(v49 + 16) = v53;
        *(v49 + 24) = v55;
        *(v49 + 33) = [v31 isTemporaryID];
        *(v49 + 32) = 1;
        v62 = [v31 URIRepresentation];
        v63 = v105;
        sub_19752127C();

        v64 = sub_19752123C();
        v66 = v65;
        (*v104)(v63, v106);
        *(v49 + 56) = v64;
        *(v49 + 64) = v66;
        v67 = [v31 entityName];
        v68 = sub_1975217BC();
        v70 = v69;

        *(v49 + 72) = v68;
        *(v49 + 80) = v70;
        a1 = v109;
        v29 = v107;
LABEL_75:
        if ((*(v37 + 56) != *(v49 + 56) || *(v37 + 64) != *(v49 + 64)) && (sub_19752282C() & 1) == 0 || (*(v37 + 72) != *(v49 + 72) || *(v37 + 80) != *(v49 + 80)) && (sub_19752282C() & 1) == 0)
        {
LABEL_19:

LABEL_20:
          sub_1974028C8(v31, v32);
          sub_1974028C8(v29, v30);
LABEL_21:
          swift_unknownObjectRelease();
          goto LABEL_22;
        }

        v89 = *(v37 + 24);
        v90 = *(v49 + 24);
        if (v89)
        {
          if (!v90)
          {
            goto LABEL_19;
          }

          if (*(v37 + 16) == *(v49 + 16) && v89 == v90)
          {

            sub_1974028C8(v31, v32);
            sub_1974028C8(v29, v30);
          }

          else
          {
            v91 = *(v49 + 24);
            v92 = v29;
            v93 = sub_19752282C();

            sub_1974028C8(v31, v32);
            sub_1974028C8(v92, v30);
            if ((v93 & 1) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {

          sub_1974028C8(v31, v32);
          sub_1974028C8(v29, v30);
          if (v90)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_92;
      }

      return 1;
    }

    return result;
  }
}