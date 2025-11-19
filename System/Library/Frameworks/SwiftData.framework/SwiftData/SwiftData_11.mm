uint64_t sub_1974CC744(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v18 = a3;
  v19 = a4;
  sub_1973FC6F4(&v18, a7, a9, v21);
  sub_1973FFCAC(v21, &v18);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _StitchedBackingData();
  if (swift_dynamicCast())
  {
    v20 = a6;
    v18 = a5;
    __swift_project_boxed_opaque_existential_1Tm_2(&v18, a6);
    DynamicType = swift_getDynamicType();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v18);
    sub_1974CC890(DynamicType, a7, a5, a3, a4, v17, a6, a7, a8, a9);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v21);
}

uint64_t sub_1974CC890(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = *a6;
  sub_197434244(a7, a8, a9, a10, v69);
  sub_1973FFCAC(v69, &v66);
  v65 = a8;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _FullFutureBackingData();
  v54 = a3;
  v55 = a7;
  if (swift_dynamicCast())
  {

    *&v66 = a3;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v10 = type metadata accessor for _KKMDBackingData();
      *&v66 = a4;
      BYTE8(v66) = a5;
      sub_1974028EC(a4, a5);
      v15 = sub_197512DF4(a8, &v66);
      v67 = v10;
      WitnessTable = swift_getWitnessTable();
      v68 = WitnessTable;
      *&v66 = v15;
      v17 = *(a10 + 64);

      v17(&v66, a8, a10);
      v67 = v10;
      v68 = WitnessTable;
      swift_unknownObjectRelease();
      *&v66 = v15;
      __swift_destroy_boxed_opaque_existential_1Tm_3(v69);
      sub_197434660(&v66, v69);
    }
  }

  sub_1973FFCAC(v69, &v66);
  type metadata accessor for _KKMDBackingData();
  if (!swift_dynamicCast())
  {
    goto LABEL_35;
  }

  v61 = *&v64[0];
  type metadata accessor for Schema.Entity();
  v18 = sub_1973FDF38(a2, a10);
  swift_beginAccess();
  v19 = *(v18 + 64);
  v60 = *(v19 + 16);
  if (!v60)
  {
    goto LABEL_25;
  }

  v20 = v19 + 32;

  v22 = 0;
  v59 = v21;
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1975221EC();

      MEMORY[0x19A8DFF80](v18, v10);
      while (1)
      {
        sub_1975223EC();
        __break(1u);
LABEL_35:
        *&v66 = 0;
        *(&v66 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v64[0] = 0xD000000000000019;
        *(&v64[0] + 1) = 0x80000001975284B0;
        sub_1973FFCAC(v69, &v66);
        v53 = sub_1975217CC();
        MEMORY[0x19A8DFF80](v53);
      }
    }

    sub_1973FFCAC(v20, &v66);
    v23 = *(v61 + 16);
    v24 = v67;
    v25 = v68;
    __swift_project_boxed_opaque_existential_1Tm_2(&v66, v67);
    v26 = *(v25 + 32);

    v63 = v26(v24, v25);
    v10 = v27;
    v28 = a6[2];
    v29 = v67;
    v30 = v68;
    __swift_project_boxed_opaque_existential_1Tm_2(&v66, v67);
    v31 = *(v30 + 32);

    v32 = v31(v29, v30);
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v66);
    v35 = *(v28 + 16);
    if (!*(v35 + 16))
    {

LABEL_14:
      memset(v64, 0, sizeof(v64));
      goto LABEL_15;
    }

    v18 = sub_1973F4028(v32, v34);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      goto LABEL_14;
    }

    v38 = *(*(v35 + 56) + 8 * v18);
    swift_beginAccess();
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    v39 = *(v28 + 32);
    if (v38 >= *(v39 + 16))
    {
      goto LABEL_32;
    }

    sub_1973FE21C(v39 + 32 * v38 + 32, v64, &qword_1EAF2AF20, &unk_19752F320);
LABEL_15:

    v40 = *(v23 + 16);
    v18 = v63;
    if (!*(v40 + 16))
    {
      goto LABEL_33;
    }

    v41 = sub_1973F4028(v63, v10);
    if ((v42 & 1) == 0)
    {
      goto LABEL_33;
    }

    v43 = v41;

    v44 = *(*(v40 + 56) + 8 * v43);
    swift_beginAccess();
    v45 = *(v23 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 32) = v45;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_19;
    }

    v45 = sub_19751C104(v45);
    *(v23 + 32) = v45;
    if ((v44 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_19:
    if (v44 >= v45[2])
    {
      goto LABEL_30;
    }

    ++v22;
    sub_1973F7958(v64, &v45[4 * v44 + 4]);
    *(v23 + 32) = v45;
    swift_endAccess();
    sub_1973F7E04(v64, &qword_1EAF2AF20, &unk_19752F320);

    v20 += 40;
    v21 = v59;
    if (v60 == v22)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:

LABEL_25:
  *&v66 = a4;
  BYTE8(v66) = a5;
  sub_1974028EC(a4, a5);
  sub_197459D38(&v66);
  *&v66 = a6;
  v47 = swift_getWitnessTable();
  v48 = sub_1973FE71C(v56, v47);
  sub_1975131E4(v48);
  sub_197430254(1);

  v49 = sub_1975214CC();
  if (v49)
  {
    v50 = v49;
    v51 = swift_conformsToProtocol2();
    if (v51)
    {
      sub_1974CC890(v50, v50, v54, a4, a5, a6, v55, v50, a9, v51);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v69);
}

Swift::Void __swiftcall PersistentModel.markDirty()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_1975213EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1974CD170(v3, v3, v2, v2, v14);
  v15 = sub_1973F68A4(v3, v2);
  v16 = *(v15 + 16);
  if (v16)
  {
    v25 = v15;
    v26 = v14;
    v17 = v15 + 32;
    v18 = (v10 + 16);
    v19 = v3;
    v20 = v2;
    v24 = v10;
    v21 = (v10 + 56);
    do
    {
      sub_1973F7E64(v17, v27);
      v22 = v28;

      sub_1973F82A8(v27);
      (*v18)(v8, v26, v9);
      (*v21)(v8, 0, 1, v9);
      sub_1974C1E20(v22, v8, v19, v20);

      sub_1973F7E04(v8, &qword_1EAF2B658, &unk_19752F180);
      v17 += 96;
      --v16;
    }

    while (v16);

    v10 = v24;
    v14 = v26;
  }

  else
  {
  }

  (*(v10 + 8))(v14, v9);
}

uint64_t sub_1974CD170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v31 = a5;
  v29 = sub_197522AEC();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1975213EC();
  v28 = *(v16 - 8);
  v17 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v21 = sub_1973FE074(a1, a3);
  swift_beginAccess();
  v22 = *(v21 + 104);

  if (v22)
  {
    if (*(v22 + 16))
    {
      v23 = sub_1973F7950(a2, a4);
      if (v24)
      {
        v25 = v28;
        (*(v28 + 16))(v20, *(v22 + 56) + *(v28 + 72) * v23, v16);

        return (*(v25 + 32))(v31, v20, v16);
      }
    }
  }

  v33 = a1;
  v32 = v6;
  swift_unknownObjectRetain();
  sub_197522ABC();
  sub_1974CD884(v15, v6, a2, a4, a1, a2, v30, a4, v31);
  return (*(v11 + 8))(v15, v29);
}

uint64_t sub_1974CD3CC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = sub_197521FFC();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *a1;
    sub_197521FFC();
    return sub_1974CD4C8(v13, a1, a3, a2, a4, v9, v13);
  }

  return result;
}

uint64_t sub_1974CD4C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_197521F5C();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v28 - v15;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a7;
  sub_197522B2C();
  if (swift_dynamicCastClass())
  {
    v32 = a3;

    swift_unknownObjectRetain();
    v22 = swift_dynamicCast();
    v23 = *(v17 + 56);
    if (v22)
    {
      v23(v16, 0, 1, a6);
      (*(v17 + 32))(v21, v16, a6);
      sub_1975213DC();
      sub_1975213CC();

      return (*(v17 + 8))(v21, a6);
    }

    v23(v16, 1, 1, a6);
    (*(v29 + 8))(v16, v11);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1975221EC();

    v32 = 0xD00000000000001BLL;
    v33 = 0x8000000197528250;
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528230);
    v31 = a2;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v25 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v25);

    MEMORY[0x19A8DFF80](32, 0xE100000000000000);
    v26 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v26);
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974CD884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a8;
  v58 = a7;
  v61 = a6;
  v57 = a5;
  v55 = a4;
  v54 = a3;
  v56 = a2;
  v59 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9B8, &qword_19752FE18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v48 - v13;
  v15 = sub_197522AEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v48 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v50 = &v48 - v27;
  v52 = sub_1975213EC();
  v51 = *(v52 - 8);
  v28 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52, v29);
  v49 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v67 + 1))
  {
LABEL_25:

LABEL_26:
    v32 = v61;
LABEL_27:
    sub_197522AAC();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1973F7E04(v14, &qword_1EAF2B9B8, &qword_19752FE18);
      *&v68 = 0;
      *(&v68 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197528270);
      v47 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v47);

      MEMORY[0x19A8DFF80](0xD000000000000029, 0x80000001975282A0);
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      (*(v16 + 32))(v20, v14, v15);
      sub_1974CD884(v20, v56, v54, v55, v57, v32, v58, v53);
      return (*(v16 + 8))(v20, v15);
    }

    return result;
  }

  while (1)
  {
    v62 = v65;
    v63 = v66;
    v64 = v67;
    if (*(&v65 + 1))
    {
      v31 = v62 == 0x6E696B636162245FLL && *(&v65 + 1) == 0xED00006174614467;
      if (v31 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v62, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v67 + 1))
    {
      goto LABEL_25;
    }
  }

  v68 = v62;
  v69 = v63;
  v70 = v64;

  sub_1974028B8(&v69, &v71);
  v32 = v61;
  *&v68 = v61;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0 || !v73)
  {
    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_3(&v72);
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v67 + 1))
  {
LABEL_30:

    v34 = v50;
    (*(v51 + 56))(v50, 1, 1, v52);
LABEL_31:
    sub_1973F7E04(v34, &qword_1EAF2B658, &unk_19752F180);
    goto LABEL_26;
  }

  while (1)
  {
    v62 = v65;
    v63 = v66;
    v64 = v67;
    if (*(&v65 + 1))
    {
      v33 = v62 == 0xD000000000000016 && *(&v65 + 1) == 0x8000000197525EF0;
      if (v33 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v62, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v67 + 1))
    {
      goto LABEL_30;
    }
  }

  v68 = v62;
  v69 = v63;
  v70 = v64;

  sub_1974028B8(&v69, &v72);
  v34 = v50;
  v35 = v52;
  v36 = swift_dynamicCast();
  v37 = v51;
  v38 = *(v51 + 56);
  v38(v34, v36 ^ 1u, 1, v35);
  if ((*(v37 + 48))(v34, 1, v35) == 1)
  {
    goto LABEL_31;
  }

  v39 = *(v37 + 32);
  v40 = v49;
  v39(v49, v34, v35);
  sub_1973FE074(v57, v58);
  v41 = sub_1974CE144();
  if (*v42)
  {
    v43 = v48;
    (*(v37 + 16))(v48, v49, v35);
    v38(v43, 0, 1, v35);
    v44 = v43;
    v40 = v49;
    sub_19749B95C(v44, v54, v55);
  }

  (v41)(&v68, 0);
  v45 = v59;

  return (v39)(v45, v40, v35);
}

uint64_t sub_1974CE198(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t), uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a2;
  if (sub_197521FFC() != a1)
  {
    goto LABEL_42;
  }

  sub_197521FFC();
  v17 = v16;
  v41 = v16;
  if (swift_conformsToProtocol2())
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    do
    {
      sub_1973F732C(v17, &v41);
      v17 = v41;
      if (swift_conformsToProtocol2())
      {
        v19 = v17 == 0;
      }

      else
      {
        v19 = 1;
      }
    }

    while (!v19);
  }

  sub_197521FFC();
  v21 = v20;
  if (swift_conformsToProtocol2())
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22;
  if (!swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
    v26 = sub_1975214EC();
    v27 = sub_1975214EC();
    if (v26)
    {
      if (v27 && v26 == v27)
      {
        goto LABEL_24;
      }
    }

    else if (!v27)
    {
LABEL_24:
      v28 = sub_1975214DC();
      if (v29 >= 1)
      {
        v30 = *v28;
        if (swift_conformsToProtocol2() && v30)
        {
          if (v30 == a13)
          {
            if (v23)
            {
              v31 = a7;
              if (!a7)
              {
                v41 = 0;
                v42 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000067, 0x8000000197528040);
                sub_19752202C();
                sub_19752235C();
                goto LABEL_49;
              }

              sub_197521AAC();
              sub_197522B2C();
              v32 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              v31 = a9;
              if (!a9)
              {
                v41 = 0;
                v42 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000071, 0x80000001975280B0);
                sub_19752202C();
                sub_19752235C();
                goto LABEL_49;
              }

              sub_197521AAC();
              sub_197521F5C();
              sub_197522B2C();
              v32 = swift_dynamicCastClassUnconditional();
            }

            v31(v32);
            v25 = v31;
            goto LABEL_36;
          }

          v41 = 0;
          v42 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528000);
          v38 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v38);

          MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197528020);
          v39 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v39);
        }

        else
        {
          v41 = 0;
          v42 = 0xE000000000000000;
          sub_1975221EC();

          v41 = 0xD00000000000002BLL;
          v42 = 0x8000000197527FD0;
          v37 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v37);
        }

LABEL_49:
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      __break(1u);
LABEL_42:
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525450);
      v36 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v36);

      MEMORY[0x19A8DFF80](0x74796E61206F7420, 0xEF202D20676E6968);
      sub_19752202C();
      sub_19752235C();
      goto LABEL_49;
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1975221EC();

    v41 = 0xD000000000000029;
    v42 = 0x8000000197527FA0;
    v35 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v35);

    goto LABEL_49;
  }

  if ((v23 & 1) == 0)
  {
    if (a5)
    {
      sub_197521F5C();
      sub_197522B2C();
      v33 = swift_dynamicCastClassUnconditional();

      a5(v33);
      v25 = a5;
      goto LABEL_36;
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000066, 0x8000000197528190);
    sub_19752202C();
    sub_19752235C();
    goto LABEL_49;
  }

  if (!a3)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197528130);
    sub_19752202C();
    sub_19752235C();
    goto LABEL_49;
  }

  sub_197522B2C();
  v24 = swift_dynamicCastClassUnconditional();

  a3(v24);
  v25 = a3;
LABEL_36:

  return sub_19745E20C(v25);
}

uint64_t sub_1974CE944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    v26 = a4;
    v28 = *(a1 + 112);
    v25 = a6;
    v21 = swift_allocObject();
    v21[2] = a10;
    v21[3] = a13;
    v21[4] = a14;
    v21[5] = a15;
    v21[6] = a2;
    v21[7] = a3;
    v22 = swift_allocObject();
    v22[2] = a10;
    v22[3] = a13;
    v22[4] = a14;
    v22[5] = a15;
    v22[6] = a4;
    v22[7] = a5;
    v23 = swift_allocObject();
    v23[2] = a10;
    v23[3] = a13;
    v23[4] = a14;
    v23[5] = a15;
    v23[6] = a6;
    v23[7] = a7;
    v24 = swift_allocObject();
    v24[2] = a10;
    v24[3] = a13;
    v24[4] = a14;
    v24[5] = a15;
    v24[6] = a8;
    v24[7] = a9;

    sub_19745E220(a2);
    sub_19745E220(v26);
    sub_19745E220(v25);
    sub_19745E220(a8);
    sub_1974CE198(a12, v28, sub_1974CEE5C, v21, sub_1974CEE74, v22, sub_1974CF698, v23, sub_1974CEEDC, v24, a10, a12, a11);
  }

  return result;
}

void sub_1974CEB60(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_1974C5F20(a1, *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

void sub_1974CEC1C(void *a1)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 40);
  sub_1974C7950(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

void sub_1974CECAC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  sub_1974C8470(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1974CECE4()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1974CEDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1974CEE0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_1974CEE78(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1974CB04C(a1, *(v1 + 48), *(v1 + 56));
}

uint64_t objectdestroy_38Tm_0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_53Tm_0()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1974CEFD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a6;
  v15[4] = a8;
  v15[5] = a9;
  v15[6] = a10;
  v15[7] = a11;
  v15[8] = a1;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a6;
  v16[4] = a8;
  v16[5] = a9;
  v20 = a8;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a1;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a6;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a11;
  v17[8] = a1;
  v17[9] = a2;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a6;
  v18[4] = v20;
  v18[5] = a9;
  v18[6] = a10;
  v18[7] = a11;
  v18[8] = a1;
  v18[9] = a2;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  sub_1974CE198(a7, a3, sub_1974CF3CC, v15, sub_1974CF3E4, v16, sub_1974CF418, v17, sub_1974CF470, v18, a4, a7, a5);
}

uint64_t sub_1974CF1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v17 = *(a2 + 48);
  if (v17)
  {
    v18 = *v17;

    v19 = sub_197521FFC();
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      sub_1974CEFD0(a3, a1, v17, a4, a5, a6, v19, a7, a8, a9, v20);
    }

    sub_1975221EC();

    v23 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197528360);
    type metadata accessor for Schema.Relationship();
    sub_19752235C();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t objectdestroy_71Tm()
{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1974CF640(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1974CF6D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *a4 = result;
  return result;
}

uint64_t sub_1974CF6EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = v6;
  *a5 = result;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_1974CF708@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *a1 = v2;
  v3 = sub_19752228C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9D0, &qword_19752FEA0);
  swift_getTupleTypeMetadata2();
  v5 = sub_197521A1C();
  v6 = sub_1974A0B6C(v5, v3, v4, MEMORY[0x1E69E6930]);

  a1[1] = v6;
  return result;
}

void sub_1974CF7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  os_unfair_lock_lock(*v3 + 4);
  sub_1974D4B9C(a2, v8);
  v7 = *(a3 + 16);
  sub_19752228C();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9D0, &qword_19752FEA0);
  sub_19752166C();
  sub_19752168C();
  os_unfair_lock_unlock(v6 + 4);
}

__n128 sub_1974CF888@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, __n128 *a5@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  a5->n128_u64[1] = a2;
  a5[1].n128_u64[0] = v5;
  a5[1].n128_u8[8] = v6;
  a5->n128_u64[0] = a1;
  result = *a4;
  a5[2] = *a4;
  return result;
}

uint64_t sub_1974CF8B0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1974DB0A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1974D1F8C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1974CF91C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1974DB0A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1974D2084(v5);
  *a1 = v2;
  return result;
}

uint64_t HistoryChange.changedPersistentIdentifier.getter()
{
  sub_1974713D0(v0, v7);
  sub_19745E2D4(v7, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1Tm_3(v4, v5);
  (*(v2 + 88))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm_4(v4);
}

uint64_t HistoryTombstone.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(a1 + 16);
  v7 = sub_19752228C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9D0, &qword_19752FEA0);

  v9 = sub_19752164C();

  if (v5 >= v9)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v14 = *(v2 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v18[0] = nullsub_26(v4, v7, v8, MEMORY[0x1E69E6930]);
    sub_19752163C();

    swift_getWitnessTable();
    sub_197521ADC();
    sub_197521AFC();

    sub_19752167C();

    v11 = v19;
    if (v19)
    {
      v12 = __swift_project_boxed_opaque_existential_1Tm_3(v18, v19);
      *(a2 + 24) = v11;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
      (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v12, v11);

      result = __swift_destroy_boxed_opaque_existential_1Tm_4(v18);
      goto LABEL_8;
    }
  }

  result = sub_1974D389C(v18);
  *a2 = 0u;
  *(a2 + 16) = 0u;
LABEL_8:
  v17 = *(v2 + 16);
  v15 = __OFADD__(v17, 1);
  v16 = v17 + 1;
  if (!v15)
  {
LABEL_9:
    *(v2 + 16) = v16;
    return result;
  }

  __break(1u);
  return result;
}

void HistoryTombstone.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  os_unfair_lock_lock(v5 + 4);
  v6 = *(a2 + 16);
  sub_19752228C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9D0, &qword_19752FEA0);
  sub_19752167C();

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t HistoryTombstone.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[1] = v1[1];
  a1[2] = 0;
  *a1 = v2;
}

uint64_t sub_1974CFDA4@<X0>(void *a1@<X8>)
{
  HistoryTombstone.makeIterator()(a1);
  v3 = *v1;
  v2 = v1[1];
}

uint64_t sub_1974CFDF0()
{
  v1 = sub_1974D3C94();
  v3 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HistoryDescriptor.predicate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t HistoryDescriptor.predicate.setter(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t (*HistoryDescriptor.fetchLimit.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_28;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t HistoryDescriptor.sortBy.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*HistoryDescriptor.sortBy.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_29;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t HistoryDescriptor.init(predicate:sortBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19752139C();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for HistoryDescriptor();
  v8 = *(v7 + 40);
  v9 = sub_197521F5C();
  result = (*(*(v9 - 8) + 40))(a3, a1, v9);
  *(a3 + v8) = a2;
  *(a3 + *(v7 + 36)) = 0;
  return result;
}

uint64_t DefaultHistoryTransaction.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752132C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DefaultHistoryTransaction.changes.getter()
{
  v1 = *(v0 + *(type metadata accessor for DefaultHistoryTransaction() + 20));
}

uint64_t DefaultHistoryTransaction.token.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DefaultHistoryTransaction() + 24));
}

uint64_t DefaultHistoryTransaction.storeIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DefaultHistoryTransaction() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DefaultHistoryTransaction.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DefaultHistoryTransaction() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DefaultHistoryTransaction.processIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DefaultHistoryTransaction() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DefaultHistoryTransaction.author.getter()
{
  v1 = (v0 + *(type metadata accessor for DefaultHistoryTransaction() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DefaultHistoryTransaction.hashValue.getter()
{
  sub_197522A5C();
  v1 = type metadata accessor for DefaultHistoryTransaction();
  MEMORY[0x19A8E11B0](*(v0 + *(v1 + 28)));
  return sub_197522A9C();
}

uint64_t sub_1974D03FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752132C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1974D0480(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1974D04B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1974D04F0(uint64_t a1)
{
  sub_197522A5C();
  MEMORY[0x19A8E11B0](*(v1 + *(a1 + 28)));
  return sub_197522A9C();
}

uint64_t sub_1974D056C(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  MEMORY[0x19A8E11B0](*(v2 + *(a2 + 28)));
  return sub_197522A9C();
}

id DefaultHistoryInsert.changedPersistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t DefaultHistoryInsert.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x19A8E11B0](v0[1]);
  return MEMORY[0x19A8E11B0](v1);
}

uint64_t sub_1974D0644@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryInsert.changeIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D066C@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryInsert.transactionIdentifier.getter();
  *a1 = result;
  return result;
}

id DefaultHistoryUpdate.changedPersistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t DefaultHistoryUpdate.updatedAttributes.getter()
{
  sub_1974D3C98();
}

uint64_t DefaultHistoryUpdate.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x19A8E11B0](v0[1]);
  return MEMORY[0x19A8E11B0](v1);
}

uint64_t sub_1974D0738@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryUpdate.changeIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D0760@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryUpdate.transactionIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D078C()
{
  sub_1974D3C98();
}

id DefaultHistoryDelete.changedPersistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t DefaultHistoryDelete.tombstone.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t DefaultHistoryDelete.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x19A8E11B0](v0[1]);
  return MEMORY[0x19A8E11B0](v1);
}

uint64_t sub_1974D0868@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryDelete.changeIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D0890@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultHistoryDelete.transactionIdentifier.getter();
  *a1 = result;
  return result;
}

uint64_t TokenCompareError.hashValue.getter()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D0974()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D09E8()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t DefaultHistoryToken.hashValue.getter()
{
  v1 = *v0;
  result = sub_197522A5C();
  v3 = 0;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = MEMORY[0x19A8E11B0](*(*(v1 + 56) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {
      return sub_197522A9C();
    }

    v6 = *(v1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultHistoryToken.hash(into:)()
{
  v1 = 0;
  v2 = *v0;
  v3 = *v0;
  v4 = 1 << *(*v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v7 = *(v3 + 64);
  v6 = v3 + 64;
  v8 = v5 & v7;
  v9 = (v4 + 63) >> 6;
  if ((v5 & v7) != 0)
  {
    do
    {
      v10 = v1;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = MEMORY[0x19A8E11B0](*(*(v2 + 56) + ((v10 << 9) | (8 * v11))));
    }

    while (v8);
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return result;
    }

    v8 = *(v6 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultHistoryToken.compare(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  if (v5 != *(*a1 + 16))
  {
    v8 = 0;
LABEL_25:
    sub_1974D3CA0();
    swift_allocError();
    *v27 = v8;
    return swift_willThrow();
  }

  if (v5)
  {
    v29 = v2;
    v6 = sub_1974D1F10(v5, 0, &qword_1EAF2AE50, &qword_19752D530);
    v7 = sub_1974D3324(&v28, v6 + 4, v5, v4);
    v2 = v28;

    sub_1974D3CF4();
    if (v7 != v5)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v2 = v29;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v28 = v6;
  sub_1974CF8B0(&v28);
  if (v2)
  {
LABEL_34:

    __break(1u);
    return result;
  }

  v9 = v28;
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = sub_1974D1F10(v10, 0, &qword_1EAF2AE50, &qword_19752D530);
    v29 = sub_1974D3324(&v28, v11 + 4, v10, v3);
    v2 = v28;

    sub_1974D3CF4();
    if (v29 == v10)
    {
      v2 = 0;
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v28 = v11;
  sub_1974CF8B0(&v28);
  v12 = sub_1974D188C(v9, v28);

  if ((v12 & 1) == 0)
  {

    v8 = 1;
    goto LABEL_25;
  }

  v13 = *(v9 + 2);
  v29 = v9;
  v14 = (v9 + 40);
  v15 = -v13;
  v16 = -1;
  do
  {
    if (v15 + v16 == -1)
    {

      return 0;
    }

    if (++v16 >= *(v29 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_28;
    }

    v18 = *(v14 - 1);
    v17 = *v14;

    v19 = sub_1973F4028(v18, v17);
    if ((v20 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_30;
    }

    v21 = *(*(v4 + 56) + 8 * v19);
    v22 = sub_1973F4028(v18, v17);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_31;
    }

    v14 += 2;
    v25 = *(*(v3 + 56) + 8 * v22);
  }

  while (v21 == v25);

  if (v21 < v25)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1974D0F1C()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_1974D0F88()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_1974D0FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6F5465726F7473 && a2 == 0xEB00000000736E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1974D108C(uint64_t a1)
{
  v2 = sub_1974D3CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974D10C8(uint64_t a1)
{
  v2 = sub_1974D3CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DefaultHistoryToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9E8, &qword_19752FEB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_3(a1, a1[3]);
  sub_1974D3CFC();

  sub_197522B0C();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9F8, &qword_19752FEB8);
  sub_1974D3D50(&qword_1EAF2BA00);
  sub_1975226EC();

  return (*(v4 + 8))(v8, v3);
}

uint64_t DefaultHistoryToken.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BA08, &qword_19752FEC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  sub_19744E9BC(MEMORY[0x1E69E7CC0]);

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_3(a1, a1[3]);
  sub_1974D3CFC();
  sub_197522AFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9F8, &qword_19752FEB8);
    sub_1974D3D50(&qword_1EAF2BA10);
    sub_19752261C();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_4(a1);
}

uint64_t sub_1974D1474()
{
  v1 = *v0;
  result = sub_197522A5C();
  v3 = 0;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = MEMORY[0x19A8E11B0](*(*(v1 + 56) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {
      return sub_197522A9C();
    }

    v6 = *(v1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1974D1554(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(&v4, &v5);
}

BOOL sub_1974D1590(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(&v5, &v4);
}

BOOL sub_1974D15CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return _s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(&v4, &v5);
}

uint64_t sub_1974D1604@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  result = DefaultHistoryToken.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1974D1674(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 68);
  for (i = (a1 + 68); ; i += 40)
  {
    result = 0;
    if (*(i - 4) != *(v3 - 4))
    {
      break;
    }

    if ((*(i - 2) ^ *(v3 - 2)))
    {
      break;
    }

    if ((*i ^ *v3))
    {
      break;
    }

    if ((*(i - 3) ^ *(v3 - 3)))
    {
      break;
    }

    if ((*(i - 1) ^ *(v3 - 1)))
    {
      break;
    }

    v6 = *(i - 36);
    v7 = *(v3 - 36);
    if ((v6 ^ v7))
    {
      break;
    }

    if ((v6 & v7) == 1)
    {
      v8 = *(i - 12);
      v9 = *(v3 - 12);
      if (v8)
      {
        if (!v9 || (*(i - 20) != *(v3 - 20) || v8 != v9) && (sub_19752282C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }
    }

    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1974D178C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_16:
        result = v8 == v2;
        if (v8 != v2)
        {
          v5 = *(v3 + 8 * v8);
          v6 = *(v4 + 8 * v8++);
          v7 = *(v5 + 16);
          if (v7 == *(v6 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v9 = (v5 + 40);
      v10 = (v6 + 40);
      while (1)
      {
        v11 = *(v9 - 1) == *(v10 - 1) && *v9 == *v10;
        if (!v11 && (sub_19752282C() & 1) == 0)
        {
          break;
        }

        v9 += 2;
        v10 += 2;
        if (!--v7)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1974D188C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_19752282C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1974D191C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_1974D1990(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974D19EC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_74;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1975220EC();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
          goto LABEL_73;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19A8E0960](v12 - 4, v3);
          v15 = result;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v15 = *(v3 + 8 * v12);

          if (v11)
          {
LABEL_21:
            v16 = MEMORY[0x19A8E0960](v12 - 4, a2);
            goto LABEL_26;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v16 = *(a2 + 8 * v12);

LABEL_26:
        swift_beginAccess();
        v17 = v15[2];
        v18 = v15[3];
        swift_beginAccess();
        v19 = v17 == v16[2] && v18 == v16[3];
        if (!v19 && (sub_19752282C() & 1) == 0 || (swift_beginAccess(), v20 = v15[6], swift_beginAccess(), (sub_1974D1674(v20, v16[6]) & 1) == 0))
        {

          return 0;
        }

        swift_beginAccess();
        v21 = v15[7];

        swift_beginAccess();
        v4 = v16[7];

        result = v21 == v4;
        if (v21 == v4)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v4 = 0;
    v39 = v3 + 32;
    v22 = a2 + 32;
    v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v4 == v23)
      {
        goto LABEL_79;
      }

      if (v4 == v24)
      {
        break;
      }

      v25 = *(v39 + 8 * v4);
      v26 = *(v22 + 8 * v4);
      swift_beginAccess();
      v27 = v25[2];
      v28 = v25[3];
      swift_beginAccess();
      v29 = v27 == v26[2] && v28 == v26[3];
      if (!v29 && (sub_19752282C() & 1) == 0)
      {
        return 0;
      }

      swift_beginAccess();
      v30 = v25[6];
      swift_beginAccess();
      v31 = v26[6];
      a2 = *(v30 + 16);
      if (a2 != *(v31 + 16))
      {
        return 0;
      }

      if (a2)
      {
        v32 = v30 == v31;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v3 = v31 + 68;
        v34 = (v30 + 68);
        while (a2)
        {
          result = 0;
          if (*(v34 - 4) != *(v3 - 4))
          {
            return result;
          }

          if ((*(v34 - 2) ^ *(v3 - 2)))
          {
            return result;
          }

          if ((*v34 ^ *v3))
          {
            return result;
          }

          if ((*(v34 - 3) ^ *(v3 - 3)))
          {
            return result;
          }

          if ((*(v34 - 1) ^ *(v3 - 1)))
          {
            return result;
          }

          v35 = *(v34 - 36);
          v36 = *(v3 - 36);
          if ((v35 ^ v36))
          {
            return result;
          }

          if ((v35 & v36) == 1)
          {
            v37 = *(v34 - 12);
            v38 = *(v3 - 12);
            if (v37)
            {
              if (!v38 || (*(v34 - 20) != *(v3 - 20) || v37 != v38) && (sub_19752282C() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v38)
            {
              return 0;
            }
          }

          v34 += 40;
          v3 += 40;
          if (!--a2)
          {
            goto LABEL_53;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        v5 = sub_1975220EC();
        goto LABEL_3;
      }

LABEL_53:
      swift_beginAccess();
      v33 = v25[7];
      swift_beginAccess();
      if (v33 != v26[7])
      {
        return 0;
      }

      ++v4;
      result = 1;
      if (v4 == v5)
      {
        return result;
      }
    }

LABEL_80:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1974D1E74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_2(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1974D1F10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_2(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t sub_1974D1F8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1975227BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_197521A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1974D231C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1974D217C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1974D2084(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1975227BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_197521A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1974D28F8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1974D224C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1974D217C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_19752282C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1974D224C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_19752282C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1974D231C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1974DAF28(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1974D2ED4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_19752282C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_19752282C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_197477094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_197477094((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1974D2ED4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1974DAF28(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1974DAE9C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_19752282C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1974D28F8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1974DAF28(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1974D30FC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_19752282C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_19752282C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_197477094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_197477094((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1974D30FC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1974DAF28(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1974DAE9C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_19752282C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1974D2ED4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_19752282C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_19752282C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1974D30FC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_19752282C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_19752282C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_1974D3324(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1974D350C(uint64_t result, uint64_t *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v25 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v16 = v27 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_1975220AC();
  a5(0);
  sub_19744ED98(a6, a7);
  result = sub_197521C1C();
  v8 = v33;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  v16 = v37;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v29 = v14;
  v30 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_19752212C())
      {
        goto LABEL_30;
      }

      v30(0);
      swift_dynamicCast();
      result = v32;
      v17 = a3;
      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v28 = v15 + 1;
  }

  else
  {
    v28 = v18;
  }

  v15 = v28 - 1;
LABEL_30:
  v14 = v29;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

void *sub_1974D373C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = *v17;
      *(v11 + 8) = v19;
      if (v14 == v10)
      {
        sub_1974028EC(v18, v19);
        goto LABEL_24;
      }

      v11 += 16;
      sub_1974028EC(v18, v19);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1974D389C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9D8, &qword_19752FEA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

BOOL _s9SwiftData19DefaultHistoryTokenV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4[0] = *a2;
  v4[1] = v2;
  return DefaultHistoryToken.compare(_:)(v4) > 1;
}

uint64_t _s9SwiftData19DefaultHistoryTokenV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = sub_1974D1F10(*(*a1 + 16), 0, &qword_1EAF2AE50, &qword_19752D530);
    v6 = sub_1974D3324(&v26, v5 + 4, v4, v2);

    sub_1974D3CF4();
    if (v6 != v4)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v26 = v5;
  v8 = 0;
  sub_1974CF91C(&v26);
  v9 = v26;
  v10 = *(v3 + 16);
  v25 = v26;
  if (v10)
  {
    v11 = sub_1974D1F10(v10, 0, &qword_1EAF2AE50, &qword_19752D530);
    v23 = sub_1974D3324(&v26, v11 + 4, v10, v3);

    sub_1974D3CF4();
    if (v23 != v10)
    {
      goto LABEL_30;
    }

    v9 = v25;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v26 = v11;
  sub_1974CF91C(&v26);
  v8 = sub_1974D188C(v9, v26);

  if ((v8 & 1) == 0)
  {
LABEL_26:

    return 0;
  }

  v24 = *(v9 + 2);
  if (!v24)
  {
LABEL_27:

    return 1;
  }

  v12 = 0;
  v13 = (v9 + 40);
  while (v12 < *(v9 + 2))
  {
    v14 = *(v13 - 1);
    v8 = *v13;
    v15 = *(v2 + 16);

    if (v15 && (v16 = sub_1973F4028(v14, v8), (v17 & 1) != 0))
    {
      v18 = 0;
      v19 = *(*(v2 + 56) + 8 * v16);
      if (!*(v3 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
      v18 = 1;
      if (!*(v3 + 16))
      {
LABEL_14:

LABEL_15:
        v9 = v25;
        if ((v18 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    v20 = sub_1973F4028(v14, v8);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v18)
    {
      goto LABEL_26;
    }

    v9 = v25;
    if (v19 != *(*(v3 + 56) + 8 * v20))
    {
      goto LABEL_26;
    }

LABEL_16:
    ++v12;
    v13 += 2;
    if (v24 == v12)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1974D3CA0()
{
  result = qword_1EAF2B9E0;
  if (!qword_1EAF2B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B9E0);
  }

  return result;
}

unint64_t sub_1974D3CFC()
{
  result = qword_1EAF2B9F0;
  if (!qword_1EAF2B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B9F0);
  }

  return result;
}

uint64_t sub_1974D3D50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9F8, &qword_19752FEB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1974D3EA0()
{
  result = qword_1EAF2BA18;
  if (!qword_1EAF2BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BA18);
  }

  return result;
}

unint64_t sub_1974D3F80()
{
  result = qword_1EAF2BA20[0];
  if (!qword_1EAF2BA20[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B9F8, &qword_19752FEB8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2BA20);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1974D40A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1974D40DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1974D412C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1974D4244()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D428C(uint64_t *a1, int a2)
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

uint64_t sub_1974D42D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1974D4328()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D4370(uint64_t *a1, int a2)
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

uint64_t sub_1974D43B8(uint64_t result, int a2, int a3)
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

uint64_t sub_1974D44C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D450C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1974D4554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1974D45B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1974D45FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1974D4644(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1974D46A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1974D4700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1974D4748(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TokenCompareError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TokenCompareError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1974D4920(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1974D4968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultHistoryToken.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DefaultHistoryToken.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1974D4A98()
{
  result = qword_1EAF2BAA8;
  if (!qword_1EAF2BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAA8);
  }

  return result;
}

unint64_t sub_1974D4AF0()
{
  result = qword_1EAF2BAB0;
  if (!qword_1EAF2BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAB0);
  }

  return result;
}

unint64_t sub_1974D4B48()
{
  result = qword_1EAF2BAB8;
  if (!qword_1EAF2BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BAB8);
  }

  return result;
}

uint64_t sub_1974D4B9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Schema.__allocating_init(_:version:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  Schema.init(_:version:)(a1, a2);
  return v4;
}

double sub_1974D4C70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1973F51F0(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

unint64_t sub_1974D4CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = v3[1];
  if (!*(v8 + 16) || (result = sub_1973F4028(a1, a2), (v10 & 1) == 0))
  {
    result = v4[3];
    if (result)
    {
      sub_1973F51F0(result, v4[4], v14);
      sub_1974D4CB4(a1, a2);
      v17 = v14[0];
      sub_1973FA4B8(&v17, &qword_1EAF2B568, &qword_19752E990);
      v13 = v14[2];
      v16 = v14[1];
      sub_1973FA4B8(&v16, &qword_1EAF2B570, &qword_19752E998);
      v15 = v13;
      return sub_1973FA4B8(&v15, &qword_1EAF2B578, &qword_19752E9A0);
    }

    else
    {
      a3[4] = 0u;
      a3[5] = 0u;
      a3[2] = 0u;
      a3[3] = 0u;
      *a3 = 0u;
      a3[1] = 0u;
    }

    return result;
  }

  v11 = *(*(v8 + 56) + 8 * result);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v11 >= *(*v4 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = *v4 + 96 * v11 + 32;

  return sub_1973F7E64(v12, a3);
}

uint64_t sub_1974D4E08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = sub_1973F4028(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = *(v8 + 16);
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

unint64_t sub_1974D4E94()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1974DB040();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_1975220EC();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_19744C5BC(result, sub_19751E87C);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_19744C5BC(result, sub_19751E87C);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_1975220EC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t sub_1974D4F38@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = v2[2];
  if (!*(v6 + 16) || (result = sub_1973F7814(a1), (v8 & 1) == 0))
  {
    result = v3[3];
    if (result)
    {
      sub_1973F51F0(result, v3[4], v12);
      sub_1974D4F38(a1);
      v15 = v12[0];
      sub_1973FA4B8(&v15, &qword_1EAF2B568, &qword_19752E990);
      v11 = v12[2];
      v14 = v12[1];
      sub_1973FA4B8(&v14, &qword_1EAF2B570, &qword_19752E998);
      v13 = v11;
      return sub_1973FA4B8(&v13, &qword_1EAF2B578, &qword_19752E9A0);
    }

    else
    {
      a2[4] = 0u;
      a2[5] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
    }

    return result;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= *(*v3 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = *v3 + 96 * v9 + 32;

  return sub_1973F7E64(v10, a2);
}

unint64_t sub_1974D5080()
{
  v1 = *v0;
  v2 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v2);

  return 0xD000000000000011;
}

uint64_t sub_1974D50E4()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D512C()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D5170()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1974D51B0(uint64_t *a1, void *a2, uint64_t *a3)
{
  v7 = a1;
  v8 = a2[2];
  v9 = sub_1973F9DB4(v8, *a1);
  if (v9)
  {
    v7 = a2[3];
    v3 = a2[4];
    v10 = *(v9 + 24) == v7 && *(v9 + 32) == v3;
    if (v10 || (v4 = v9, v11 = *(v9 + 24), v12 = a2[3], v13 = a2[4], (sub_19752282C() & 1) != 0))
    {

      goto LABEL_16;
    }

LABEL_22:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197528CC0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528CF0);
    MEMORY[0x19A8DFF80](*(v4 + 24), *(v4 + 32));
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v7, v3);
    goto LABEL_24;
  }

  v14 = *v7;
  if ((*v7 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v7;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = sub_1975220EC();
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *v7 = sub_1974D9DC4(v15, v16 + 1);
  }

  else
  {
    v17 = *v7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  sub_19747C894(a2, v8, isUniquelyReferenced_nonNull_native);
  *v7 = v31;
LABEL_16:
  v20 = a2[3];
  v19 = a2[4];
  v21 = *a3;
  if (!*(*a3 + 16) || (v22 = sub_1973F4028(a2[3], a2[4]), (v23 & 1) == 0))
  {

    v28 = *a3;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *a3;
    *a3 = 0x8000000000000000;
    sub_19747C9C0(a2, v20, v19, v29);

    *a3 = v32;
    return result;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  v25 = *(v24 + 16);

  v26 = sub_19752201C();
  if (v26 == sub_19752201C())
  {
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528C60);
  MEMORY[0x19A8DFF80](v20, v19);
  MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197528C90);
  v30 = *(v24 + 16);
  sub_19752202C();
  sub_19752235C();
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  sub_19752235C();
LABEL_24:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974D554C(void *a1)
{
  v2 = v1;
  v5 = a1[3];
  v4 = a1[4];
  swift_beginAccess();
  v6 = v1[3];
  if (*(v6 + 16) && (v7 = sub_1973F4028(v5, v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_197530980;
    *(inited + 32) = v9;
    *(inited + 40) = a1;
    swift_retain_n();

    v11 = sub_1974DB23C(inited);
    swift_setDeallocating();
    v12 = *(inited + 16);
    swift_arrayDestroy();
    swift_beginAccess();
    v13 = v2[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_19747C9C0(v11, v5, v4, isUniquelyReferenced_nonNull_native);

    v2[3] = v25;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();

    v15 = v2[3];
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v2[3];
    v2[3] = 0x8000000000000000;
    sub_19747C9C0(a1, v5, v4, v16);

    v2[3] = v26;
    swift_endAccess();
  }

  v17 = a1[2];
  swift_beginAccess();
  v18 = v2[2];
  if ((v18 & 0xC000000000000001) != 0)
  {
    if (v18 < 0)
    {
      v19 = v2[2];
    }

    else
    {
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_1975220EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v2[2] = sub_1974D9DC4(v19, result + 1);
  }

  else
  {
    v21 = v2[2];
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v2[2];
  sub_19747C894(a1, v17, v22);
  v2[2] = v27;
  swift_endAccess();
  swift_beginAccess();

  MEMORY[0x19A8E00D0](v23);
  if (*((v2[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v24 = *((v2[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1975219FC();
  }

  sub_197521A4C();
  return swift_endAccess();
}

uint64_t sub_1974D5858(uint64_t a1, char *a2, char *a3)
{
  v5 = v3;
  v9 = *(v3 + 16);

  os_unfair_lock_lock(v9 + 4);

  swift_beginAccess();
  v10 = *(v5 + 24);
  if (*(v10 + 16) && (v11 = sub_1973F7950(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = sub_1973F8C4C(a2, a3, a2, a3);
  }

  swift_beginAccess();
  v14 = sub_1973F9DB4(a1, *(v13 + 16));
  if (v14)
  {
    v15 = v14;
    swift_endAccess();

    v17 = *(v15 + 24);
    v16 = *(v15 + 32);

    goto LABEL_93;
  }

  v74 = a3;
  v75 = a2;
  v76 = v5;
  swift_endAccess();
  v78 = a1;
  sub_197521FEC();
  sub_197416D54();
  sub_197521FBC();
  v19 = v18;

  v90 = 0;
  v91 = 0xE000000000000000;
  v20 = sub_197521FBC();
  v22 = v21;

  v73 = v20;
  v83 = v20;
  v84 = v22;
  v88 = 46;
  v89 = 0xE100000000000000;
  v23 = sub_197521F9C();
  v24 = *(v23 + 16);
  v25 = v24 != 0;
  v82 = v23 + 32;
  v83 = v23;
  v84 = v23 + 32;
  v85 = v25;
  v86 = (2 * v24) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFA0, &qword_19752C710);
  sub_19745B2D4(&qword_1EAF2AFA8, &qword_1EAF2AFA0, &qword_19752C710);
  v79 = sub_1975216CC();
  if (v24 < v25)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    v83 = 0;
    v84 = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197528840);
    MEMORY[0x19A8DFF80](v79, v77);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v68 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v68);

    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197528860);
    v69 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v69);

    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528880);
    MEMORY[0x19A8DFF80](v4, v19);
    goto LABEL_99;
  }

  if (v24 < 2)
  {

LABEL_90:
    v17 = v79;
    goto LABEL_93;
  }

  v72 = v22;
  v81 = v24 - 1;
  v77 = v26;
  v27 = a2;
  v28 = v78;
  while (1)
  {
    if (v25 >= v24)
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v30 = (v82 + 16 * v25);
    v4 = *v30;
    v19 = v30[1];
    v31 = swift_conformsToProtocol2();
    if (!v31 || !v27)
    {
      v83 = v27;
      if (swift_conformsToProtocol2() && v27)
      {
        v37 = v27;
        do
        {
          sub_1973F732C(v37, &v83);
          v37 = v83;
        }

        while (swift_conformsToProtocol2() && v37);
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      sub_19752132C();
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      sub_19752135C();
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      sub_1975212CC();
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      type metadata accessor for Decimal(0);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_98;
      }

      swift_bridgeObjectRetain_n();
      sub_1974DBC1C(v27, v4, v19);
      v45 = v44;

      if (!v45)
      {
        goto LABEL_100;
      }

      v28 = v78;
      if (v25 == v81)
      {
        type metadata accessor for Schema.KeyPathCacheEntry();
        v29 = swift_allocObject();
        v29[2] = v78;
        v29[3] = v79;
        v29[4] = v77;

        sub_1974D554C(v29);
        goto LABEL_12;
      }

      v27 = sub_19752152C();
      v83 = v27;
      if (swift_conformsToProtocol2() && v27)
      {
        do
        {
          sub_1973F732C(v27, &v83);
          v27 = v83;
          if (swift_conformsToProtocol2())
          {
            v46 = v27 == 0;
          }

          else
          {
            v46 = 1;
          }
        }

        while (!v46);
      }

      goto LABEL_13;
    }

    v32 = v31;
    swift_beginAccess();
    v33 = *(v5 + 24);
    if (*(v33 + 16) && (v34 = sub_1973F7950(v27, v32), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      v36 = sub_1973F8C4C(v27, v32, v27, v32);
    }

    swift_beginAccess();
    v38 = *(v36 + 24);
    if (!*(v38 + 16))
    {
      break;
    }

    v39 = sub_1973F4028(v4, v19);
    if ((v40 & 1) == 0)
    {
      break;
    }

    v41 = *(*(v38 + 56) + 8 * v39);
    swift_endAccess();

    v42 = *(v41 + 16);

    if (v25 == v81)
    {
      type metadata accessor for Schema.KeyPathCacheEntry();
      v19 = swift_allocObject();
      v19[2] = v28;
      v19[3] = v79;
      v19[4] = v77;

      sub_1974D554C(v19);

      goto LABEL_12;
    }

    v58 = *v42;
    sub_197521FFC();
    v27 = v59;

    v83 = v27;
    if (swift_conformsToProtocol2())
    {
      v60 = v27 == 0;
    }

    else
    {
      v60 = 1;
    }

    if (!v60)
    {
      do
      {
        sub_1973F732C(v27, &v83);
        v27 = v83;
      }

      while (swift_conformsToProtocol2() && v27);
    }

LABEL_13:
    if (++v25 == v24)
    {

      goto LABEL_90;
    }
  }

  swift_endAccess();
  if (v4 == 0xD000000000000011 && 0x80000001975288B0 == v19 || (sub_19752282C() & 1) != 0)
  {
    if (v25 != v81)
    {
      v83 = 0;
      v84 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x206874615079654BLL, 0xE800000000000000);
      MEMORY[0x19A8DFF80](v73, v72);
      MEMORY[0x19A8DFF80](0xD0000000000000BBLL, 0x8000000197528980);
      goto LABEL_99;
    }

    type metadata accessor for Schema.KeyPathCacheEntry();
    v43 = swift_allocObject();
    v43[2] = v28;
    v43[3] = v79;
    v43[4] = v77;

    sub_1974D554C(v43);

LABEL_12:

    goto LABEL_13;
  }

  if (v4 == 25705 && v19 == 0xE200000000000000 || (sub_19752282C() & 1) != 0)
  {
    type metadata accessor for Schema.Entity();
    v47 = sub_1973FDF38(v75, v74);
    swift_beginAccess();
    v4 = *(v47 + 64);

    v48 = v4 + 32;
    v80 = -*(v4 + 16);
    v49 = -1;
    while (v80 + v49 != -1)
    {
      if (++v49 >= *(v4 + 16))
      {
        goto LABEL_96;
      }

      v50 = v25;
      v51 = v19;
      v52 = v24;
      sub_1973FA430(v48, &v83);
      v53 = v86;
      v54 = v87;
      __swift_project_boxed_opaque_existential_1(&v83, v86);
      if ((*(v54 + 32))(v53, v54) == 25705 && v55 == 0xE200000000000000)
      {

        __swift_destroy_boxed_opaque_existential_1(&v83);
        v24 = v52;
        v19 = v51;
        v25 = v50;
LABEL_87:

        if (v25 == v81)
        {

          type metadata accessor for Schema.KeyPathCacheEntry();
          v61 = swift_allocObject();
          v28 = v78;
          v61[2] = v78;
          v61[3] = v79;
          v61[4] = v77;

          sub_1974D554C(v61);

          v5 = v76;
          goto LABEL_13;
        }

LABEL_102:
        v83 = 0;
        v84 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0x206874615079654BLL, 0xE800000000000000);
        MEMORY[0x19A8DFF80](v73, v72);
        MEMORY[0x19A8DFF80](0xD0000000000000ACLL, 0x80000001975288D0);
        while (1)
        {
LABEL_99:
          sub_1975223EC();
          __break(1u);
LABEL_100:
          v83 = 0;
          v84 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528800);
          v70 = sub_197521FEC();
          MEMORY[0x19A8DFF80](v70);

          MEMORY[0x19A8DFF80](0x6573756163656220, 0xE900000000000020);
          MEMORY[0x19A8DFF80](v4, v19);
          MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197528820);
          v71 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v71);
        }
      }

      v48 += 40;
      v57 = sub_19752282C();

      __swift_destroy_boxed_opaque_existential_1(&v83);
      v24 = v52;
      v19 = v51;
      v25 = v50;
      if (v57)
      {
        goto LABEL_87;
      }
    }

    v5 = v76;
    if (v25 != v81)
    {
      goto LABEL_102;
    }

    type metadata accessor for Schema.KeyPathCacheEntry();
    v62 = swift_allocObject();
    v62[2] = v78;
    v62[3] = 0xD000000000000011;
    v62[4] = 0x80000001975288B0;

    sub_1974D554C(v62);

    v17 = 0xD000000000000011;
  }

  else
  {

    v17 = sub_1974A2E08(v28, v75, v74);
    v66 = v65;

    type metadata accessor for Schema.KeyPathCacheEntry();
    v67 = swift_allocObject();
    v67[2] = v28;
    v67[3] = v17;
    v67[4] = v66;

    sub_1974D554C(v67);
  }

LABEL_93:
  v63 = *(v5 + 16);

  os_unfair_lock_unlock(v63 + 4);

  return v17;
}

uint64_t sub_1974D6808(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v6 = v4;
  v11 = *(v4 + 16);

  os_unfair_lock_lock(v11 + 4);

  swift_beginAccess();
  v12 = *(v6 + 24);
  if (*(v12 + 16) && (v13 = sub_1973F7950(a3, a4), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1973F8C4C(a3, a4, a3, a4);
  }

  v16 = sub_1974D4E08(a1, a2);
  if (!v16)
  {
    v58 = a1;
    v59 = a2;
    v63 = a1;
    v64 = a2;
    sub_197416D54();
    v18 = sub_197521F9C();
    v62 = *(v18 + 16);
    if (!v62)
    {
      goto LABEL_84;
    }

    v17 = 0;
    v19 = 0;
    v61 = v18 + 32;
    v20 = v18;
    v60 = v18;
    while (v19 < *(v20 + 16))
    {
      v21 = (v61 + 16 * v19);
      v5 = *v21;
      a4 = v21[1];
      v22 = swift_conformsToProtocol2();
      if (v22 && a3)
      {
        v23 = v22;
        swift_beginAccess();
        v24 = *(v6 + 24);
        if (*(v24 + 16) && (v25 = sub_1973F7950(a3, v23), (v26 & 1) != 0))
        {
          v27 = *(*(v24 + 56) + 8 * v25);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();

          v27 = sub_1973F8C4C(a3, v23, a3, v23);
        }

        swift_beginAccess();
        v29 = *(v27 + 24);
        if (!*(v29 + 16))
        {
          goto LABEL_82;
        }

        v30 = sub_1973F4028(v5, a4);
        if ((v31 & 1) == 0)
        {
          goto LABEL_82;
        }

        v32 = *(*(v29 + 56) + 8 * v30);
        swift_endAccess();

        v33 = *(v32 + 16);

        if (v17)
        {
          sub_19752202C();
          v34 = sub_1975224AC();

          v17 = v34;
        }

        else
        {

          v17 = v33;
        }

        v41 = *v33;
        sub_197521FFC();
        a3 = v42;

        v63 = a3;
        a4 = &protocol descriptor for _Optional;
        if (swift_conformsToProtocol2())
        {
          v43 = a3 == 0;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          do
          {
            sub_1973F732C(a3, &v63);
            a3 = v63;
          }

          while (swift_conformsToProtocol2() && a3);
        }
      }

      else
      {
        v63 = a3;
        if (swift_conformsToProtocol2() && a3)
        {
          v28 = a3;
          do
          {
            sub_1973F732C(v28, &v63);
            v28 = v63;
          }

          while (swift_conformsToProtocol2() && v28);
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        sub_19752132C();
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        sub_19752135C();
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        sub_1975212CC();
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        type metadata accessor for Decimal(0);
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_80;
        }

        swift_bridgeObjectRetain_n();
        v35 = v5;
        v5 = sub_1974DBC1C(a3, v5, a4);
        v37 = v36;

        if (v37)
        {

          v38 = *sub_1974AA070(v37, v5, v37);

          sub_197521FFC();
          a3 = v39;
          v40 = swift_conformsToProtocol2();
          a4 = v40;
          if (v17)
          {
            if (v40 && a3)
            {
              sub_19752150C();
            }

            else
            {
              sub_1974AA070(v37, v5, v37);
            }

            sub_19752202C();
            v45 = sub_1975224AC();

            v17 = v45;
          }

          else
          {
            v17 = sub_1974AA070(v37, v5, v37);
          }

          v63 = a3;
          v20 = v60;
          if (a4 && a3)
          {
            do
            {
              sub_1973F732C(a3, &v63);
              a3 = v63;
              a4 = swift_conformsToProtocol2();
              if (a4)
              {
                v46 = a3 == 0;
              }

              else
              {
                v46 = 1;
              }
            }

            while (!v46);
          }
        }

        else
        {
          v44 = *a3;
          v20 = v60;
          if (*a3 > 0x7FFuLL || v44 != 514 && v44 != 513)
          {
            v63 = 0;
            v64 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528800);
            MEMORY[0x19A8DFF80](v58, v59);
            MEMORY[0x19A8DFF80](0x6573756163656220, 0xE900000000000020);
            MEMORY[0x19A8DFF80](v35, a4);
            MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197528820);
            v54 = sub_197522B8C();
            a4 = v55;
            MEMORY[0x19A8DFF80](v54);

            goto LABEL_81;
          }
        }
      }

      if (++v19 == v62)
      {
        if (v17)
        {

          type metadata accessor for Schema.KeyPathCacheEntry();
          v47 = swift_allocObject();
          v47[2] = v17;
          v47[3] = v58;
          v47[4] = v59;

          sub_1974D554C(v47);

          goto LABEL_78;
        }

LABEL_84:
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197528D20);
        MEMORY[0x19A8DFF80](v58, v59);
        MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
        v56 = sub_197522B8C();
        a4 = v57;
        MEMORY[0x19A8DFF80](v56);

        MEMORY[0x19A8DFF80](0xD000000000000078, 0x8000000197528D50);
        while (1)
        {
LABEL_81:
          sub_1975223EC();
          __break(1u);
LABEL_82:
          swift_endAccess();
          v63 = 0;
          v64 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000002BLL, 0x8000000197528DD0);
          MEMORY[0x19A8DFF80](v58, v59);
          MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197528E00);
          MEMORY[0x19A8DFF80](v5, a4);
          MEMORY[0x19A8DFF80](0x6E6B6E7520736920, 0xEF206F74206E776FLL);
          v52 = sub_197522B8C();
          a4 = v53;
          MEMORY[0x19A8DFF80](v52);

          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
        }
      }
    }

    __break(1u);
LABEL_80:
    v63 = 0;
    v64 = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197528840);
    MEMORY[0x19A8DFF80](v58, v59);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v50 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v50);

    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197528860);
    v51 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v51);

    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197528880);
    MEMORY[0x19A8DFF80](v5, a4);
    goto LABEL_81;
  }

  v17 = v16;
LABEL_78:

  v48 = *(v6 + 16);

  os_unfair_lock_unlock(v48 + 4);

  return v17;
}

uint64_t sub_1974D7350(void (*a1)(void))
{
  a1(v1[2]);
  v2 = v1[3];

  v3 = v1[4];

  return swift_deallocClassInstance();
}

unint64_t sub_1974D73A0()
{
  v1 = *v0;
  v2 = sub_19752162C();
  MEMORY[0x19A8DFF80](v2);

  return 0xD00000000000001FLL;
}

double static Schema.schemaEncodingVersion.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED7C9B38 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1ED7C9B50;
  result = *&xmmword_1ED7C9B40;
  *a1 = xmmword_1ED7C9B40;
  *(a1 + 16) = v1;
  return result;
}

__n128 Schema.encodingVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 Schema.version.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

id static Schema.purgeSchemaCaches()()
{
  if (qword_1ED7C9CC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED7C9CC8;
  [qword_1ED7C9CC8 lock];
  if (qword_1ED7C9598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC8];
  qword_1ED7CE630 = MEMORY[0x1E69E7CC8];

  if (qword_1EAF2AD98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EAF33E98 = v1;

  if (qword_1ED7C9DD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED7CE6C0;
  os_unfair_lock_lock((qword_1ED7CE6C0 + 16));
  if (qword_1ED7C95C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED7CE638 = v1;

  os_unfair_lock_unlock(v2 + 4);
  return [v0 unlock];
}

void *static Schema.createSchema(versionedSchema:)(uint64_t a1, uint64_t a2)
{
  if (qword_1ED7C9CC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7C9CC8;
  [qword_1ED7C9CC8 lock];
  if (qword_1EAF2AD98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EAF33E98;
  if (*(qword_1EAF33E98 + 16) && (v6 = sub_1974A188C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = (*(a2 + 8))(a1, a2);
    (*(a2 + 16))(&v17, a1, a2);
    v15 = v17;
    v16 = v18;
    v8 = swift_allocObject();
    Schema.init(_:version:)(v9, &v15);
    v10 = sub_1974DBEE8(v8, 1);
    if (!v10)
    {
      sub_1974DC038();
      swift_allocError();
      *v13 = 0xD000000000000031;
      v13[1] = 0x8000000197528520;
      swift_willThrow();

      [v4 unlock];
      return v8;
    }

    v11 = v10;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15 = qword_1EAF33E98;
    qword_1EAF33E98 = 0x8000000000000000;
    sub_19747CFD0(v8, a1, a2, isUniquelyReferenced_nonNull_native);
    qword_1EAF33E98 = v15;
    swift_endAccess();
  }

  [v4 unlock];
  return v8;
}

uint64_t Schema.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_1ED7C9B38 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7C9B50;
  *(v0 + 16) = xmmword_1ED7C9B40;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = sub_1974BFD10(v2);
  return v0;
}

uint64_t Schema.init()()
{
  if (qword_1ED7C9B38 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7C9B50;
  *(v0 + 16) = xmmword_1ED7C9B40;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = sub_1974BFD10(v2);
  return v0;
}

uint64_t Schema.__allocating_init(_:version:)(unint64_t a1, __int128 *a2)
{
  swift_allocObject();
  v4 = sub_1974DC2B8(a1, a2);

  return v4;
}

uint64_t Schema.init(_:version:)(unint64_t a1, __int128 *a2)
{
  v2 = sub_1974DC2B8(a1, a2);

  return v2;
}

uint64_t Schema.__allocating_init(_:version:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *a2;
  v7 = v3;
  v4 = swift_allocObject();
  Schema.init(_:version:)(a1, &v6);
  return v4;
}

uint64_t sub_1974D7B5C(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v64 = a1;
  v7 = a1;
  if (swift_conformsToProtocol2())
  {
    v7 = a1;
    if (a1)
    {
      v7 = a1;
      do
      {
        sub_1973F732C(v7, &v64);
        v7 = v64;
        if (swift_conformsToProtocol2())
        {
          v8 = v7 == 0;
        }

        else
        {
          v8 = 1;
        }
      }

      while (!v8);
    }
  }

  v9 = swift_conformsToProtocol2();
  if (!v9 || !v7)
  {
    goto LABEL_76;
  }

  v10 = v9;
  type metadata accessor for Schema.Entity();
  v11 = sub_1973F69F8(v7, v10);
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_72;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
  }

LABEL_13:
  if (v13 >= 1)
  {
    v61 = v13;
    v14 = 0;
    v62 = v12;
    v63 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v63)
      {
        v17 = MEMORY[0x19A8E0960](v14, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v14 + 32);
      }

      swift_beginAccess();
      v18 = *a3;
      if (*(*a3 + 16))
      {
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);

        v21 = sub_1973F4028(v19, v20);
        v23 = v22;

        if (v23)
        {
          break;
        }
      }

LABEL_44:

      MEMORY[0x19A8E00D0](v39);
      if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1975219FC();
      }

      sub_197521A4C();
      v40 = *(v17 + 16);
      v12 = *(v17 + 24);

      v41 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *a3;
      v43 = v66;
      *a3 = 0x8000000000000000;
      v44 = sub_1973F4028(v40, v12);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v31 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v31)
      {
        __break(1u);
LABEL_67:
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
        v13 = sub_1975220EC();
        if (!v13)
        {
        }

        goto LABEL_13;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_197417494(v48, isUniquelyReferenced_nonNull_native);
        v44 = sub_1973F4028(v40, v12);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_75;
        }

LABEL_51:
        v51 = v66;
        if (v49)
        {
          goto LABEL_15;
        }

        goto LABEL_52;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      v56 = v44;
      sub_197479C28();
      v44 = v56;
      v51 = v66;
      if (v49)
      {
LABEL_15:
        v15 = v51[7];
        v16 = *(v15 + 8 * v44);
        *(v15 + 8 * v44) = v17;

        goto LABEL_16;
      }

LABEL_52:
      v51[(v44 >> 6) + 8] |= 1 << v44;
      v52 = (v51[6] + 16 * v44);
      *v52 = v40;
      v52[1] = v12;
      *(v51[7] + 8 * v44) = v17;
      v53 = v51[2];
      v31 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v31)
      {
        goto LABEL_67;
      }

      v51[2] = v54;
LABEL_16:
      ++v14;
      *a3 = v51;
      v12 = v62;
      if (v61 == v14)
      {
      }
    }

    v24 = *(*(v18 + 56) + 8 * v21);

    v25 = sub_1974DB8D4(a4, v24);
    v26 = v25;
    v27 = *a4;
    if (*a4 >> 62)
    {
      if (v27 < 0)
      {
        v57 = *a4;
      }

      v12 = sub_1975220EC();
      v28 = v12 - v26;
      if (v12 < v26)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v12 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v12 - v25;
      if (v12 < v25)
      {
        goto LABEL_68;
      }
    }

    if (v26 < 0)
    {
      goto LABEL_69;
    }

    v29 = *a4;
    v30 = *a4 >> 62;
    if (v30)
    {
      if (v29 < 0)
      {
        v58 = *a4;
      }

      else
      {
        v58 = *a4 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_1975220EC() < v12)
      {
LABEL_64:
        __break(1u);
      }
    }

    else if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
    {
      goto LABEL_64;
    }

    v31 = __OFSUB__(0, v28);
    v32 = -v28;
    if (v31)
    {
      goto LABEL_70;
    }

    if (v30)
    {
      v33 = sub_1975220EC();
    }

    else
    {
      v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_71;
    }

    v35 = *a4;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *a4 = v35;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFFF8;
        if (v34 <= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_43:
          sub_197505EEC(v26, v12, 0);

          goto LABEL_44;
        }

        goto LABEL_40;
      }
    }

    else if ((v35 & 0x8000000000000000) == 0 && (v35 & 0x4000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFFF8;
LABEL_40:
      v38 = *(v37 + 16);
LABEL_42:
      *a4 = sub_19752224C();
      goto LABEL_43;
    }

    sub_1975220EC();
    goto LABEL_42;
  }

  __break(1u);
LABEL_75:
  sub_1975229CC();
  __break(1u);
LABEL_76:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1975221EC();

  v64 = 0xD00000000000001DLL;
  v65 = 0x8000000197528E40;
  v60 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v60);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974D80D4()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x7365697469746E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646F636E65;
  }
}

uint64_t sub_1974D813C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1974DC08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1974D8170(uint64_t a1)
{
  v2 = sub_1974DC574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974D81AC(uint64_t a1)
{
  v2 = sub_1974DC574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Schema.init(from:)(a1);
  return v2;
}

uint64_t Schema.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAD0, &qword_1975309C0);
  v76 = *(v5 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v61 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC574();
  sub_197522AFC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  v69 = v1;
  LOBYTE(v73) = 0;
  sub_1974DC5C8();
  sub_19752261C();
  v11 = v75;
  v12 = v69;
  *(v69 + 1) = v74;
  v12[4] = v11;
  LOBYTE(v73) = 1;
  sub_19752261C();
  v13 = v75;
  *(v12 + 5) = v74;
  v12[7] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAE8, &qword_1975309C8);
  LOBYTE(v73) = 2;
  sub_1974DC670(&qword_1EAF2BAF0, &qword_1EAF2BAF8);
  sub_19752261C();
  v14 = 0;
  v62 = v9;
  v16 = v74;
  v12[8] = v74;
  if (v16 >> 62)
  {
    goto LABEL_52;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v18 = a1;
  v61[1] = v14;

  v19 = v69;
  v67 = a1;
  v66 = v5;
  if (v17)
  {
    v20 = 0;
    v65 = v16 & 0xC000000000000001;
    v64 = v16 & 0xFFFFFFFFFFFFFF8;
    v14 = MEMORY[0x1E69E7CC8];
    v63 = v17;
    while (1)
    {
      if (v65)
      {
        v5 = MEMORY[0x19A8E0960](v20, v16);
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v20 >= *(v64 + 16))
        {
          goto LABEL_47;
        }

        v5 = v16[v20 + 4];

        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_46:
          __break(1u);
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
LABEL_52:
          v17 = sub_1975220EC();
          goto LABEL_6;
        }
      }

      v68 = v23;
      a1 = v16;
      swift_beginAccess();
      v24 = *(v5 + 16);
      v25 = *(v5 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v14;
      v28 = sub_1973F4028(v24, v25);
      v29 = *(v14 + 16);
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_48;
      }

      v16 = v27;
      if (*(v14 + 24) >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v27)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_197479C28();
          if (v16)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_197417494(v31, isUniquelyReferenced_nonNull_native);
        v32 = sub_1973F4028(v24, v25);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_55;
        }

        v28 = v32;
        if (v16)
        {
LABEL_8:

          v14 = v73;
          v21 = *(v73 + 56);
          v22 = *(v21 + 8 * v28);
          *(v21 + 8 * v28) = v5;

          goto LABEL_9;
        }
      }

      v14 = v73;
      *(v73 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v34 = (*(v14 + 48) + 16 * v28);
      *v34 = v24;
      v34[1] = v25;
      *(*(v14 + 56) + 8 * v28) = v5;

      v35 = *(v14 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_50;
      }

      *(v14 + 16) = v37;
LABEL_9:
      v18 = v67;
      v5 = v66;
      v16 = a1;
      ++v20;
      v19 = v69;
      if (v68 == v63)
      {
        goto LABEL_28;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
LABEL_28:

  v19[9] = v14;
  a1 = v19;
  v38 = v19[8];
  if (v38 >> 62)
  {
    v39 = sub_1975220EC();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v76;
  v40 = v62;
  if (!v39)
  {
LABEL_45:
    (*(v14 + 8))(v40, v5);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return a1;
  }

  v68 = v38 & 0xC000000000000001;
  v64 = v38 & 0xFFFFFFFFFFFFFF8;

  v5 = 0;
  v65 = v38;
  while (1)
  {
    if (v68)
    {
      v41 = MEMORY[0x19A8E0960](v5, v38);
      v42 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v5 >= *(v64 + 16))
      {
        goto LABEL_51;
      }

      v41 = *(v38 + 8 * v5 + 32);

      v42 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_49;
      }
    }

    swift_beginAccess();
    v43 = v41[6];
    if (v43)
    {
      break;
    }

LABEL_33:
    ++v5;
    v14 = v76;
    if (v42 == v39)
    {

      v18 = v67;
      v5 = v66;
      v40 = v62;
      goto LABEL_45;
    }
  }

  v44 = v41[5];
  v45 = a1[9];
  v46 = *(v45 + 16);
  v47 = v41[6];

  if (v46)
  {
    v48 = sub_1973F4028(v44, v43);
    if (v49)
    {
      v50 = v48;

      v51 = *(*(v45 + 56) + 8 * v50);
      swift_beginAccess();
      v52 = v51[8];
      swift_beginAccess();
      v53 = v51[9];
      v70 = v52;
      swift_retain_n();

      sub_1974EE570(v54);
      v55 = v70;
      swift_beginAccess();
      v56 = v41[9];
      v41[9] = v55;

      sub_1974EF18C();

      swift_weakAssign();
      swift_beginAccess();
      v57 = v51[2];
      v58 = v51[3];

      v16 = v41[6];
      v41[5] = v57;
      v41[6] = v58;

      a1 = v69;
      v38 = v65;
      goto LABEL_33;
    }
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1975221EC();

  strcpy(v72, "SuperEntity ");
  HIBYTE(v72[6]) = 0;
  v72[7] = -5120;
  MEMORY[0x19A8DFF80](v44, v43);
  MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528580);
  swift_beginAccess();
  v60 = v41[2];
  v59 = v41[3];

  MEMORY[0x19A8DFF80](v60, v59);

  MEMORY[0x19A8DFF80](41, 0xE100000000000000);
  sub_1975223EC();
  __break(1u);
LABEL_55:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t Schema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB00, &qword_1975309D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC574();
  sub_197522B0C();
  v12 = *(v3 + 32);
  v17 = *(v3 + 16);
  v18 = v12;
  v16 = 0;
  sub_1974DC61C();
  sub_1975226EC();
  if (!v2)
  {
    v14 = *(v3 + 56);
    v17 = *(v3 + 40);
    v18 = v14;
    v16 = 1;
    sub_1975226EC();
    *&v17 = *(v3 + 64);
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAE8, &qword_1975309C8);
    sub_1974DC670(&qword_1EAF2BB10, &qword_1EAF2BB18);
    sub_1975226EC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t Schema.hash(into:)()
{
  v1 = v0[6];
  v2 = v0[7];
  MEMORY[0x19A8E1190](v0[5]);
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  v3 = v0[8];
  if (!(v3 >> 62))
  {
    result = MEMORY[0x19A8E1190](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v3 < 0)
  {
    v14 = v0[8];
  }

  v15 = sub_1975220EC();
  MEMORY[0x19A8E1190](v15);
  result = sub_1975220EC();
  v5 = result;
  if (result)
  {
LABEL_3:
    if (v5 < 1)
    {
      __break(1u);
    }

    else if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x19A8E0960](v6++, v3);
        swift_beginAccess();
        v8 = *(v7 + 16);
        v9 = *(v7 + 24);

        sub_19752180C();

        result = swift_unknownObjectRelease();
      }

      while (v5 != v6);
    }

    else
    {
      v10 = (v3 + 32);
      do
      {
        v11 = *v10++;
        swift_beginAccess();
        v12 = *(v11 + 16);
        v13 = *(v11 + 24);

        sub_19752180C();

        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t Schema.save(to:)()
{
  v2 = *v0;
  v3 = sub_197520BAC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_197520B9C();
  sub_197420CF8(&qword_1EAF2BB20, v6, type metadata accessor for Schema);
  v7 = sub_197520B8C();
  if (!v1)
  {
    v10 = v7;
    v11 = v8;
    sub_19752130C();
    sub_19744D0E0(v10, v11);
  }
}

uint64_t static Schema.load(from:)()
{
  result = sub_1975212DC();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = sub_197520B7C();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_197520B6C();
    sub_197420CF8(&qword_1EAF2BB28, v8, type metadata accessor for Schema);
    sub_197520B5C();

    sub_19744D0E0(v3, v4);
    return v9;
  }

  return result;
}

uint64_t static Schema.Version.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a2, a1) ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1974D9174()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D91BC()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974D9218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1974DC1AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1974D924C(uint64_t a1)
{
  v2 = sub_1974DC710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974D9288(uint64_t a1)
{
  v2 = sub_1974DC710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Version.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB30, &qword_1975309D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v14 - v8;
  v11 = *v1;
  v10 = v1[1];
  v14[0] = v1[2];
  v14[1] = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC710();
  sub_197522B0C();
  v17 = 0;
  sub_1975226CC();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v16 = 1;
  sub_1975226CC();
  v15 = 2;
  sub_1975226CC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t Schema.Version.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x19A8E1190](*v0);
  MEMORY[0x19A8E1190](v1);
  return MEMORY[0x19A8E1190](v2);
}

uint64_t Schema.Version.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  return sub_197522A9C();
}

uint64_t Schema.Version.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB40, &qword_1975309E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974DC710();
  sub_197522AFC();
  if (!v2)
  {
    v20 = 0;
    v12 = sub_19752260C();
    v19 = 1;
    v17 = sub_19752260C();
    v18 = 2;
    v14 = sub_19752260C();
    (*(v6 + 8))(v10, v5);
    v15 = v17;
    *a2 = v12;
    a2[1] = v15;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1974D9728(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v5, &v7) & 1) == 0;
}

BOOL sub_1974D9778(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v7, &v5) & 1) == 0;
}

uint64_t sub_1974D97C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v7 = *a1;
  v8 = v2;
  v5 = *a2;
  v6 = v3;
  return _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_1974D9818()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  return sub_197522A9C();
}

uint64_t sub_1974D9884()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x19A8E1190](*v0);
  MEMORY[0x19A8E1190](v1);
  return MEMORY[0x19A8E1190](v2);
}

uint64_t sub_1974D98CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  return sub_197522A9C();
}

uint64_t sub_1974D9934(__int128 *a1, __int128 *a2)
{
  if (_s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = _s9SwiftData6SchemaC7VersionV1loiySbAE_AEtFZ_0(a2, a1) ^ 1;
  }

  return v4 & 1;
}

uint64_t Schema.deinit()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return v0;
}

uint64_t Schema.hashValue.getter()
{
  sub_197522A5C();
  v1 = v0[6];
  v2 = v0[7];
  MEMORY[0x19A8E1190](v0[5]);
  MEMORY[0x19A8E1190](v1);
  MEMORY[0x19A8E1190](v2);
  v3 = v0[8];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v14 = v0[8];
    }

    v15 = sub_1975220EC();
    MEMORY[0x19A8E1190](v15);
    result = sub_1975220EC();
    v5 = result;
    if (!result)
    {
      return sub_197522A9C();
    }
  }

  else
  {
    result = MEMORY[0x19A8E1190](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return sub_197522A9C();
    }
  }

  if (v5 >= 1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x19A8E0960](v6++, v3);
        swift_beginAccess();
        v8 = *(v7 + 16);
        v9 = *(v7 + 24);

        sub_19752180C();

        swift_unknownObjectRelease();
      }

      while (v5 != v6);
    }

    else
    {
      v10 = (v3 + 32);
      do
      {
        v11 = *v10++;
        swift_beginAccess();
        v12 = *(v11 + 16);
        v13 = *(v11 + 24);

        sub_19752180C();

        --v5;
      }

      while (v5);
    }

    return sub_197522A9C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1974D9B3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Schema.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1974D9C00()
{
  v1 = *v0;
  sub_197522A5C();
  v2 = v1[6];
  v3 = v1[7];
  MEMORY[0x19A8E1190](v1[5]);
  MEMORY[0x19A8E1190](v2);
  MEMORY[0x19A8E1190](v3);
  v4 = v1[8];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v15 = v1[8];
    }

    v16 = sub_1975220EC();
    MEMORY[0x19A8E1190](v16);
    result = sub_1975220EC();
    v6 = result;
    if (!result)
    {
      return sub_197522A9C();
    }
  }

  else
  {
    result = MEMORY[0x19A8E1190](*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return sub_197522A9C();
    }
  }

  if (v6 >= 1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x19A8E0960](v7++, v4);
        swift_beginAccess();
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);

        sub_19752180C();

        swift_unknownObjectRelease();
      }

      while (v6 != v7);
    }

    else
    {
      v11 = (v4 + 32);
      do
      {
        v12 = *v11++;
        swift_beginAccess();
        v13 = *(v12 + 16);
        v14 = *(v12 + 24);

        sub_19752180C();

        --v6;
      }

      while (v6);
    }

    return sub_197522A9C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1974D9DC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B198, &qword_197531230);
    v2 = sub_19752244C();
    v20 = v2;
    sub_1975223AC();
    v3 = sub_1975223DC();
    if (v3)
    {
      v4 = v3;
      sub_19752202C();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for Schema.KeyPathCacheEntry();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1973F9030(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1975216AC();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1975223DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1974D9FFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_197480ED0(a4, a5[7] + 16 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1974DA06C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974DA0B4(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1973FA670(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1974DA124(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1974DA174(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1974DA1BC(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974DA208(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1975213EC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1974DA2B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974DA300(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v115 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = *a3;
        v11 = *(*a3 + 8 * v9);
        v12 = *(*a3 + 8 * v6);
        swift_beginAccess();
        v13 = *(v11 + 16);
        v14 = *(v11 + 24);
        result = swift_beginAccess();
        v15 = v13 == *(v12 + 16) && v14 == *(v12 + 24);
        if (v15)
        {
          v4 = 0;
        }

        else
        {
          result = sub_19752282C();
          v4 = result;
        }

        v9 = v8 + 2;
        if (v8 + 2 < v5)
        {
          v122 = v8;
          v16 = (v10 + 8 * v8 + 16);
          do
          {
            v17 = v9;
            v19 = *(v16 - 1);
            v18 = *v16;
            swift_beginAccess();
            v20 = *(v18 + 16);
            v21 = *(v18 + 24);
            result = swift_beginAccess();
            if (v20 == *(v19 + 16) && v21 == *(v19 + 24))
            {
              v9 = v17;
              if (v4)
              {
                v8 = v122;
                goto LABEL_25;
              }
            }

            else
            {
              result = sub_19752282C();
              v9 = v17;
              if ((v4 ^ result))
              {
                goto LABEL_23;
              }
            }

            ++v9;
            ++v16;
          }

          while (v5 != v9);
          v9 = v5;
LABEL_23:
          v8 = v122;
        }

        if (v4)
        {
LABEL_25:
          if (v9 < v8)
          {
            goto LABEL_180;
          }

          if (v8 < v9)
          {
            v23 = 8 * v9 - 8;
            v24 = 8 * v8;
            v25 = v9;
            v26 = v8;
            do
            {
              if (v26 != --v25)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_186;
                }

                v27 = *(v28 + v24);
                *(v28 + v24) = *(v28 + v23);
                *(v28 + v23) = v27;
              }

              ++v26;
              v23 -= 8;
              v24 += 8;
            }

            while (v26 < v25);
          }
        }
      }

      v29 = a3[1];
      if (v9 < v29)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_179;
        }

        if (v9 - v8 < a4)
        {
          v30 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_181;
          }

          if (v30 >= v29)
          {
            v30 = a3[1];
          }

          if (v30 < v8)
          {
            goto LABEL_182;
          }

          if (v9 != v30)
          {
            v123 = v8;
            v125 = v7;
            v31 = *a3;
            v32 = *a3 + 8 * v9 - 8;
            v33 = v8 - v9;
            __src = v30;
            do
            {
              v34 = v9;
              v4 = *(v31 + 8 * v9);
              v35 = v33;
              v36 = v32;
              do
              {
                v7 = *v36;
                swift_beginAccess();
                v37 = *(v4 + 16);
                v4 = *(v4 + 24);
                swift_beginAccess();
                v38 = v37 == *(v7 + 2) && v4 == *(v7 + 3);
                if (v38 || (sub_19752282C() & 1) == 0)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_183;
                }

                v39 = *v36;
                v4 = *(v36 + 8);
                *v36 = v4;
                *(v36 + 8) = v39;
                v36 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              v9 = v34 + 1;
              v32 += 8;
              --v33;
            }

            while ((v34 + 1) != __src);
            v9 = __src;
            v8 = v123;
            v7 = v125;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_176;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v117 = v9;
      if ((result & 1) == 0)
      {
        result = sub_197477094(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v42 = *(v7 + 2);
      v41 = *(v7 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        result = sub_197477094((v41 > 1), v42 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v43;
      v44 = &v7[16 * v42];
      *(v44 + 4) = v8;
      *(v44 + 5) = v117;
      v45 = *v115;
      if (!*v115)
      {
        goto LABEL_187;
      }

      if (v42)
      {
        break;
      }

LABEL_3:
      v6 = v117;
      v5 = a3[1];
      if (v117 >= v5)
      {
        goto LABEL_151;
      }
    }

    __srca = *v115;
    while (1)
    {
      v46 = v43 - 1;
      if (v43 >= 4)
      {
        break;
      }

      if (v43 == 3)
      {
        v47 = *(v7 + 4);
        v48 = *(v7 + 5);
        v57 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        v50 = v57;
LABEL_75:
        if (v50)
        {
          goto LABEL_167;
        }

        v63 = &v7[16 * v43];
        v65 = *v63;
        v64 = *(v63 + 1);
        v66 = __OFSUB__(v64, v65);
        v67 = v64 - v65;
        v68 = v66;
        if (v66)
        {
          goto LABEL_170;
        }

        v69 = &v7[16 * v46 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_173;
        }

        if (__OFADD__(v67, v72))
        {
          goto LABEL_174;
        }

        if (v67 + v72 >= v49)
        {
          if (v49 < v72)
          {
            v46 = v43 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v73 = &v7[16 * v43];
      v75 = *v73;
      v74 = *(v73 + 1);
      v57 = __OFSUB__(v74, v75);
      v67 = v74 - v75;
      v68 = v57;
LABEL_89:
      if (v68)
      {
        goto LABEL_169;
      }

      v76 = &v7[16 * v46];
      v78 = *(v76 + 4);
      v77 = *(v76 + 5);
      v57 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v57)
      {
        goto LABEL_172;
      }

      if (v79 < v67)
      {
        goto LABEL_3;
      }

LABEL_96:
      if (v46 - 1 >= v43)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v84 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        return result;
      }

      v119 = v46 - 1;
      v120 = v46;
      v85 = *&v7[16 * v46 + 32];
      v86 = *&v7[16 * v46 + 40];
      v124 = *&v7[16 * v46 + 16];
      v126 = v7;
      v7 = (8 * v124);
      v87 = (v84 + 8 * v124);
      v88 = 8 * v85;
      v89 = (v84 + 8 * v85);
      v121 = v86;
      v90 = 8 * v86;
      v91 = (v84 + 8 * v86);
      v92 = 8 * v85 - 8 * v124;
      v93 = 8 * v86 - 8 * v85;
      if (v92 >= v93)
      {
        if (v89 != v45 || v91 <= v45)
        {
          memmove(v45, (v84 + 8 * v85), 8 * v86 - 8 * v85);
        }

        v94 = v45 + v93;
        if (v93 < 1 || v88 <= v7)
        {
LABEL_140:
          v95 = __srca;
          v102 = v89;
        }

        else
        {
          do
          {
            v102 = v89 - 1;
            --v91;
            v7 = v94;
            while (1)
            {
              v103 = *(v7 - 1);
              v7 -= 8;
              v104 = *v102;
              swift_beginAccess();
              v106 = *(v103 + 16);
              v105 = *(v103 + 24);
              swift_beginAccess();
              v107 = v106 == *(v104 + 16) && v105 == *(v104 + 24);
              if (!v107 && (sub_19752282C() & 1) != 0)
              {
                break;
              }

              if (v91 + 1 != v94)
              {
                *v91 = *v7;
              }

              --v91;
              v94 = v7;
              if (v7 <= __srca)
              {
                v94 = v7;
                goto LABEL_140;
              }
            }

            if (v91 + 1 != v89)
            {
              *v91 = *v102;
            }

            v95 = __srca;
            if (v94 <= __srca)
            {
              break;
            }

            --v89;
          }

          while (v87 < v102);
        }
      }

      else
      {
        if (v87 != v45 || v89 <= v45)
        {
          memmove(v45, (v84 + 8 * v124), 8 * v85 - 8 * v124);
        }

        v94 = v45 + v92;
        if (v92 >= 1 && v90 > v88)
        {
          v95 = __srca;
          while (1)
          {
            v96 = *v89;
            v97 = *v95;
            swift_beginAccess();
            v98 = *(v96 + 16);
            v99 = *(v96 + 24);
            swift_beginAccess();
            v100 = v98 == *(v97 + 16) && v99 == *(v97 + 24);
            if (v100 || (sub_19752282C() & 1) == 0)
            {
              break;
            }

            v101 = v89;
            v15 = v87 == v89++;
            if (!v15)
            {
              goto LABEL_114;
            }

LABEL_115:
            ++v87;
            if (v95 >= v94 || v89 >= v91)
            {
              goto LABEL_138;
            }
          }

          v101 = v95;
          v15 = v87 == v95++;
          if (v15)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v87 = *v101;
          goto LABEL_115;
        }

        v95 = __srca;
LABEL_138:
        v102 = v87;
      }

      if (v102 != v95 || v102 >= (v95 + ((v94 - v95 + (v94 - v95 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v102, v95, 8 * ((v94 - v95) / 8));
      }

      v4 = v121;
      v108 = v126;
      v45 = __srca;
      if (v121 < v124)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_1974DAF28(v126);
      }

      if (v120 > *(v108 + 2))
      {
        goto LABEL_164;
      }

      v109 = &v108[16 * v119];
      *(v109 + 4) = v124;
      *(v109 + 5) = v121;
      result = sub_1974DAE9C(v120);
      v7 = v108;
      v43 = *(v108 + 2);
      if (v43 <= 1)
      {
        goto LABEL_3;
      }
    }

    v51 = &v7[16 * v43 + 32];
    v52 = *(v51 - 64);
    v53 = *(v51 - 56);
    v57 = __OFSUB__(v53, v52);
    v54 = v53 - v52;
    if (v57)
    {
      goto LABEL_165;
    }

    v56 = *(v51 - 48);
    v55 = *(v51 - 40);
    v57 = __OFSUB__(v55, v56);
    v49 = v55 - v56;
    v50 = v57;
    if (v57)
    {
      goto LABEL_166;
    }

    v58 = &v7[16 * v43];
    v60 = *v58;
    v59 = *(v58 + 1);
    v57 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v57)
    {
      goto LABEL_168;
    }

    v57 = __OFADD__(v49, v61);
    v62 = v49 + v61;
    if (v57)
    {
      goto LABEL_171;
    }

    if (v62 >= v54)
    {
      v80 = &v7[16 * v46 + 32];
      v82 = *v80;
      v81 = *(v80 + 1);
      v57 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v57)
      {
        goto LABEL_175;
      }

      if (v49 < v83)
      {
        v46 = v43 - 2;
      }

      goto LABEL_96;
    }

    goto LABEL_75;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_151:
  v4 = *v115;
  if (!*v115)
  {
    goto LABEL_189;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_184:
    result = sub_1974DAF28(v7);
    v7 = result;
  }

  v110 = *(v7 + 2);
  if (v110 >= 2)
  {
    while (*a3)
    {
      v111 = *&v7[16 * v110];
      v112 = *&v7[16 * v110 + 24];
      sub_1974DABD8((*a3 + 8 * v111), (*a3 + 8 * *&v7[16 * v110 + 16]), (*a3 + 8 * v112), v4);
      if (v116)
      {
      }

      if (v112 < v111)
      {
        goto LABEL_177;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1974DAF28(v7);
      }

      if (v110 - 2 >= *(v7 + 2))
      {
        goto LABEL_178;
      }

      v113 = &v7[16 * v110];
      *v113 = v111;
      *(v113 + 1) = v112;
      result = sub_1974DAE9C(v110 - 1);
      v110 = *(v7 + 2);
      if (v110 <= 1)
      {
      }
    }

    goto LABEL_188;
  }
}

uint64_t sub_1974DABD8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      swift_beginAccess();
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      swift_beginAccess();
      v20 = v18 == *(v17 + 16) && v19 == *(v17 + 24);
      if (!v20 && (sub_19752282C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v20 = v7 == v4;
      v4 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v20 = v7 == v6;
    v6 += 8;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v29 = v6;
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      while (1)
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v6 = v21;
        v24 = *v21;
        swift_beginAccess();
        v25 = *(v23 + 16);
        v26 = *(v23 + 24);
        swift_beginAccess();
        v27 = v25 == *(v24 + 16) && v26 == *(v24 + 24);
        if (!v27 && (sub_19752282C() & 1) != 0)
        {
          break;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
        v21 = v6;
        if (v22 <= v4)
        {
          v14 = v22;
          v6 = v29;
          goto LABEL_43;
        }
      }

      if (v5 + 8 != v29)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1974DAE9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1974DAF28(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1974DAF3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B388, &qword_19752D540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1974DB040()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_19751E87C(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1974DB0CC()
{
  sub_1975227EC();
  if (swift_dynamicCastClass())
  {
    return 5;
  }

  sub_19752232C();
  if (swift_dynamicCastClass())
  {
    return 4;
  }

  sub_197522B2C();
  if (swift_dynamicCastClass())
  {
    return 3;
  }

  sub_19752228C();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_1974DB180(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(*a1 + 16);
  v5 = sub_1974DB0CC();
  v6 = *(a2 + 16);
  result = sub_1974DB0CC();
  if (v5 < result)
  {
    swift_beginAccess();
    *a1 = a2;
  }

  return result;
}

unint64_t sub_1974DB23C(unint64_t a1)
{
  v28 = a1;

  v1 = sub_1974D4E94();
  if (!v1)
  {
    goto LABEL_33;
  }

  v27 = v1;
  swift_beginAccess();
  while (1)
  {
    v2 = v28;
    v3 = v28 >> 62;
    if (v28 >> 62)
    {
      break;
    }

    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_6:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v3 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v2 = sub_19751E87C(v2);
    }

    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      __break(1u);
LABEL_30:
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000004FLL, 0x8000000197528AE0);
      v22 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v22);

      while (1)
      {
LABEL_33:
        sub_1975223EC();
        __break(1u);
      }
    }

    v6 = v5 - 1;
    v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    v28 = v2;
    v8 = v27;
    v9 = *(v27 + 24) == *(v7 + 24) && *(v27 + 32) == *(v7 + 32);
    if (!v9 && (sub_19752282C() & 1) == 0)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000053, 0x8000000197528A80);
      v23 = *(v8 + 24);
      v24 = *(v8 + 32);

      MEMORY[0x19A8DFF80](v23, v24);

      MEMORY[0x19A8DFF80](0x202E737620, 0xE500000000000000);
      MEMORY[0x19A8DFF80](*(v7 + 24), *(v7 + 32));
      goto LABEL_33;
    }

    v10 = **(v8 + 16);
    v11 = sub_197521FFC();
    v12 = **(v8 + 16);
    sub_197521FFC();
    v13 = **(v7 + 16);
    v14 = sub_197521FFC();
    v15 = **(v7 + 16);
    sub_197521FFC();
    if (v11 != v14)
    {
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v11 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_30;
      }

      v18 = v16;
      v19 = swift_conformsToProtocol2();
      if (!v19 || v14 == 0)
      {
        goto LABEL_30;
      }

      if (!sub_1974A9BCC(v14, v19, v11) && !sub_1974A9BCC(v11, v18, v14))
      {
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD00000000000004ALL, 0x8000000197528B30);
        v25 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v25);

        MEMORY[0x19A8DFF80](0x202E737620, 0xE500000000000000);
        v26 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v26);

        goto LABEL_33;
      }
    }

    sub_1974DB180(&v27, v7);
  }

  if (sub_1975220EC())
  {
    goto LABEL_6;
  }

LABEL_28:

  swift_beginAccess();
  return v27;
}