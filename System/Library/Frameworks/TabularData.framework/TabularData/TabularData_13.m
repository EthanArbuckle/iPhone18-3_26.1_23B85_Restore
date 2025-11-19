uint64_t sub_21B2E7A64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *&v103 = MEMORY[0x277D84F90];
  *(&v103 + 1) = MEMORY[0x277D84F90];
  v104 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v7 = a2[4];
  v8 = a2[2];
  (*(v7 + 56))(v8, v7);
  v86 = v8;
  v88 = v7;
  swift_getAssociatedTypeWitness();
  v9 = sub_21B34B004();

  if (v9 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v82 = a3;
  if (v9)
  {
    v84 = *(v7 + 24);
    v11 = a2[3];
    v12 = a2[5];
    v97 = v8;
    v98 = v11;
    v81 = v11;
    v99 = v8;
    v100 = v7;
    v79 = a2;
    v80 = v12;
    v101 = v12;
    v102 = v7;
    v13 = 0;
    v83 = type metadata accessor for HashJoin.JoinItem();
    v14 = *(v3 + *(v83 + 72));
    v15 = 32;
    while (1)
    {
      v84(&v94, v86, v88);
      v16 = v94;

      if (v13 >= *(v16 + 16))
      {
        break;
      }

      sub_21B233A74(v16 + v15, &v97);

      v18 = v100;
      v17 = v101;
      __swift_project_boxed_opaque_existential_1(&v97, v100);
      (*(*(v17 + 8) + 88))(&v90, v18);
      v20 = v92;
      v19 = v93;
      __swift_project_boxed_opaque_existential_1(&v90, v92);
      (*(v19 + 32))(&v94, a1, v20, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(&v90);
      if (v14 == v13)
      {
        DataFrame.append(column:)(&v94);
      }

      else
      {
        v21 = (v4 + *(v83 + 76));
        v22 = v21[1];
        v90 = *v21;
        v91 = v22;

        MEMORY[0x21CEED5E0](46, 0xE100000000000000);
        v24 = v100;
        v23 = v101;
        __swift_project_boxed_opaque_existential_1(&v97, v100);
        v25 = (*(*(v23 + 8) + 8))(v24);
        MEMORY[0x21CEED5E0](v25);

        v26 = v90;
        v27 = v91;
        v29 = v95;
        v28 = v96;
        __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
        (*(*(v28 + 8) + 16))(v26, v27, v29);
        DataFrame.append(column:)(&v94);
        v31 = v100;
        v30 = v101;
        __swift_project_boxed_opaque_existential_1(&v97, v100);
        v32 = (*(*(v30 + 8) + 8))(v31);
        v34 = v33;
        v35 = v95;
        v36 = v96;
        __swift_project_boxed_opaque_existential_1(&v94, v95);
        v37._countAndFlagsBits = (*(*(v36 + 8) + 8))(v35);
        v39 = v38;
        v40._countAndFlagsBits = v32;
        v40._object = v34;
        v37._object = v39;
        DataFrame.addAlias(_:forColumn:)(v40, v37);
      }

      ++v13;
      sub_21B233960(&v94);
      sub_21B233960(&v97);
      v15 += 40;
      if (v9 == v13)
      {
        v42 = v80;
        v41 = v81;
        v43 = v79;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v43 = a2;
  v42 = a2[5];
  v41 = v43[3];
LABEL_11:
  v44 = v4 + *(v43 + 13);
  (*(v42 + 56))(v41, v42);
  swift_getAssociatedTypeWitness();
  v45 = sub_21B34B004();

  if (v45 < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (!v45)
  {
    goto LABEL_19;
  }

  v97 = v86;
  v98 = v41;
  v99 = v41;
  v100 = v88;
  v101 = v42;
  v102 = v42;
  result = type metadata accessor for HashJoin.JoinItem();
  v46 = 0;
  v47 = *(v44 + *(result + 72));
  v87 = result;
  v48 = 32;
  v85 = v47;
  while (1)
  {
    if (v47 == v46)
    {
      goto LABEL_15;
    }

    (*(v42 + 24))(&v94, v41, v42);
    v77 = v94;

    if (v46 >= *(v77 + 16))
    {
      break;
    }

    sub_21B233A74(v77 + v48, &v97);

    v50 = v100;
    v49 = v101;
    __swift_project_boxed_opaque_existential_1(&v97, v100);
    (*(*(v49 + 8) + 88))(&v90, v50);
    v51 = v41;
    v52 = v92;
    v53 = v93;
    __swift_project_boxed_opaque_existential_1(&v90, v92);
    (*(v53 + 32))(&v94, a1, v52, v53);
    __swift_destroy_boxed_opaque_existential_1Tm(&v90);
    v54 = (v44 + *(v87 + 76));
    v55 = v54[1];
    v90 = *v54;
    v91 = v55;

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v57 = v100;
    v56 = v101;
    __swift_project_boxed_opaque_existential_1(&v97, v100);
    v58 = (*(*(v56 + 8) + 8))(v57);
    MEMORY[0x21CEED5E0](v58);

    v59 = v90;
    v60 = v91;
    v61 = v45;
    v62 = v44;
    v63 = v42;
    v64 = v95;
    v65 = v96;
    __swift_mutable_project_boxed_opaque_existential_1(&v94, v95);
    (*(*(v65 + 8) + 16))(v59, v60, v64);
    DataFrame.append(column:)(&v94);
    v67 = v100;
    v66 = v101;
    __swift_project_boxed_opaque_existential_1(&v97, v100);
    v68 = (*(*(v66 + 8) + 8))(v67);
    v70 = v69;
    v72 = v95;
    v71 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v73._countAndFlagsBits = (*(*(v71 + 8) + 8))(v72);
    v75 = v74;
    v76._countAndFlagsBits = v68;
    v76._object = v70;
    v73._object = v75;
    DataFrame.addAlias(_:forColumn:)(v76, v73);
    v41 = v51;
    v47 = v85;

    v42 = v63;
    v44 = v62;
    v45 = v61;

    sub_21B233960(&v94);
    result = sub_21B233960(&v97);
LABEL_15:
    ++v46;
    v48 += 40;
    if (v45 == v46)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  v78 = v104;
  *v82 = v103;
  *(v82 + 16) = v78;
  return result;
}

uint64_t sub_21B2E811C(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = result;
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      sub_21B2E916C(v7, a3, a4);
      result = sub_21B2E9330(v9, a3, a4);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_21B2E8194(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = a3;
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  (*(v6 + 24))(v35, v7, v6);
  v8 = v35[0];

  v9 = *(v8 + 16);
  if (!v9)
  {

    goto LABEL_8;
  }

  v32 = v7;
  v7 = *a2;
  v33 = v6;
  v30 = v3;
  v31 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      sub_21B233A74(v8 + v10 + 32, v35);
      if (v11 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      ++v11;
      v12 = v36;
      v13 = v37;
      v14 = a2;
      v15 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v39[3] = v12;
      v39[4] = *(v13 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v15, v12);
      v18 = *&v7[v10 + 56];
      v17 = *&v7[v10 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v7[v10 + 32], v18);
      v19 = v18;
      a2 = v14;
      (*(v17 + 56))(a1, v39, v19, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      *v14 = v7;
      sub_21B233960(v35);
      v10 += 40;
    }

    while (v9 != v11);

    v7 = v32;
    v6 = v33;
    v3 = v30;
    v4 = v31;
LABEL_8:
    v20 = v3 + *(v4 + 52);
    v21 = *(v4 + 40);
    v22 = *(v4 + 24);
    (*(v21 + 56))(v22, v21);
    swift_getAssociatedTypeWitness();
    v23 = sub_21B34B004();

    if ((v23 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    v7 = sub_21B23A2F4(v7);
  }

  if (!v23)
  {
    return result;
  }

  v35[0] = v7;
  v35[1] = v22;
  v35[2] = v22;
  v36 = v6;
  v37 = v21;
  v38 = v21;
  v25 = *(v20 + *(type metadata accessor for HashJoin.JoinItem() + 72));
  v26 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B23A2F4(v26);
    v26 = result;
  }

  *a2 = v26;
  while (1)
  {
    if (!v25)
    {
      goto LABEL_14;
    }

    if (v9 >= *(v26 + 16))
    {
      break;
    }

    v27 = v26 + 32 + 40 * v9;
    v28 = *(v27 + 24);
    v29 = *(v27 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    result = (*(v29 + 16))(v28, v29);
    *a2 = v26;
    ++v9;
LABEL_14:
    --v25;
    if (!--v23)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2E8474(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = (result + 32);
    do
    {
      v9 = *v8++;
      sub_21B2E916C(v9, a3, a4);
      result = sub_21B2E9330(a2, a3, a4);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_21B2E84E0(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = v3;
  v6 = v3 + *(a3 + 52);
  v7 = *(a3 + 40);
  v8 = *(v7 + 24);
  v9 = *(a3 + 24);
  (v8)(v50, v9, v7);
  v10 = v50[0];

  v11 = *(a3 + 16);
  v12 = *(a3 + 32);
  *v51 = v11;
  *&v51[8] = v9;
  v45 = v9;
  v46 = v7;
  *&v51[16] = v9;
  v52 = v12;
  v53 = v7;
  v54 = v7;
  v13 = *(v6 + *(type metadata accessor for HashJoin.JoinItem() + 72));
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (v13 >= *(v10 + 16))
  {
    goto LABEL_35;
  }

  v43 = v8;
  v44 = v13;
  sub_21B233A74(v10 + 40 * v13 + 32, v55);

  (*(v12 + 24))(v51, v11, v12);
  v14 = *v51;

  v15 = *(v14 + 16);

  if (v15)
  {
    *v51 = v11;
    *&v51[8] = v45;
    *&v51[16] = v11;
    v52 = v12;
    v53 = v7;
    v54 = v12;
    v16 = *(v4 + *(type metadata accessor for HashJoin.JoinItem() + 72));
    v17 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_21B23A2F4(v17);
    }

    v10 = 0;
    v12 = (v17 + 32);
    v11 = &v17[40 * v16 + 32];
    v48 = v16;
    do
    {
      v18 = v10 + 1;
      v19 = __OFADD__(v10, 1);
      v20 = *(v17 + 2);
      if (v16 == v10)
      {
        if (v16 >= v20)
        {
          goto LABEL_32;
        }

        v21 = v56;
        v22 = v57;
        v23 = __swift_project_boxed_opaque_existential_1(v55, v56);
        v52 = v21;
        v53 = *(v22 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
        v25 = *(v11 + 3);
        v8 = *(v11 + 4);
        __swift_mutable_project_boxed_opaque_existential_1(v11, v25);
        (*(v8 + 7))(a1, v51, v25, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      else
      {
        if (v10 >= v20)
        {
          goto LABEL_33;
        }

        v8 = *(v12 + 24);
        v26 = *(v12 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v12, v8);
        (*(v26 + 16))(v8, v26);
      }

      *a2 = v17;
      if (v19)
      {
        __break(1u);
        goto LABEL_31;
      }

      ++v10;
      v12 += 40;
      v16 = v48;
    }

    while (v18 != v15);
  }

  v11 = v51;
  (v43)(v51, v45, v46);
  v10 = *v51;

  v8 = *a2;
  v12 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v27 = *(v10 + 16);
    *a2 = v8;
    v28 = v44;
    if (!v27)
    {
      break;
    }

    v29 = 0;
LABEL_20:
    v30 = v10 + 32 + 40 * v29;
    while (v29 < *(v10 + 16))
    {
      *v51 = v29;
      result = sub_21B233A74(v30, (v11 + 8));
      v32 = v53;
      if (!v53)
      {
        goto LABEL_29;
      }

      v33 = *v51;
      v34 = v54;
      *v51 = *&v51[8];
      *&v51[16] = v52;
      v52 = v53;
      v53 = v54;
      if (v33 != v28)
      {
        if (v12 >= *(v8 + 2))
        {
          __break(1u);
          return result;
        }

        v35 = v12;
        v36 = &v8[40 * v12 + 32];
        v37 = __swift_project_boxed_opaque_existential_1(v51, v32);
        v50[3] = v32;
        v50[4] = *(v34 + 8);
        v38 = __swift_allocate_boxed_opaque_existential_1(v50);
        (*(*(v32 - 8) + 16))(v38, v37, v32);
        v39 = v36;
        v40 = *(v36 + 24);
        v41 = *(v39 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
        (*(v41 + 56))(a1, v50, v40, v41);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        *a2 = v8;
        sub_21B233960(v51);
        v12 = v35 + 1;
        v28 = v44;
        if (v27 - 1 == v29++)
        {
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      ++v29;
      sub_21B233960(v51);
      v30 += 40;
      if (v27 == v29)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v8 = sub_21B23A2F4(v8);
  }

LABEL_29:

  return sub_21B233960(v55);
}

uint64_t sub_21B2E8990(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a8;
  v78 = a4;
  v79 = a5;
  v72 = a3;
  v77 = a10;
  v74 = a9;
  v75 = a12;
  v70 = a13;
  v76 = sub_21B34B474();
  v65 = *(v76 - 8);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v76);
  v20 = &v63 - v19;
  v64 = *(a7 - 8);
  v21 = *(v64 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v63 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v73 = &v63 - v25;
  v71 = *(a8 - 8);
  v26 = *(v71 + 64);
  MEMORY[0x28223BE20](v24);
  v69 = (&v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v29 = *(v67 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v63 - v30;
  (*(a11 + 24))(v89, a6, a11);
  v32 = v89[0];
  v33 = v89[1];
  v34 = v89[2];
  v83 = v78;
  v84 = v79;
  v85 = a6;
  v86 = v74;
  v87 = v77;
  v88 = a11;
  v35 = *(a1 + *(type metadata accessor for HashJoin.JoinItem() + 72));
  v83 = v32;
  v84 = v33;
  v85 = v34;
  DataFrame.subscript.getter(v35);

  v79 = v81;
  v77 = v80;
  v78 = v82;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E760, &unk_21B352380);
  swift_getTupleTypeMetadata2();
  v37 = sub_21B34AFD4();
  v66 = v36;
  v74 = sub_21B2E97E8(v37, a7, v36, v75);

  (*(v71 + 16))(v69, v72, v68);
  sub_21B34AEC4();
  swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  sub_21B34B4D4();
  if (v84)
  {
    v39 = 0;
LABEL_20:
    (*(v67 + 8))(v31, v38);

    sub_21B2E9AD4(v39);
    return v74;
  }

  else
  {
    v40 = v83;
    v41 = type metadata accessor for Column();
    v39 = 0;
    v42 = (v64 + 48);
    v43 = (v65 + 8);
    v71 = v64 + 32;
    v65 = v64 + 16;
    v69 = (v64 + 8);
    while (1)
    {
      v72 = v39;
      while (1)
      {
        v83 = v77;
        v84 = v79;
        v85 = v78;
        Column.subscript.getter(v40, v41, v20);
        if ((*v42)(v20, 1, a7) != 1)
        {
          break;
        }

        (*v43)(v20, v76);
        sub_21B34B4D4();
        v40 = v83;
        if (v84 == 1)
        {
          v39 = v72;
          goto LABEL_20;
        }
      }

      (*v71)(v73, v20, a7);
      sub_21B2E9AD4(v72);
      v44 = v74;
      LODWORD(v70) = swift_isUniquelyReferenced_nonNull_native();
      v83 = v44;
      v72 = sub_21B2E9604(v73, a7, v75);
      v46 = *(v44 + 16);
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        break;
      }

      LODWORD(v68) = v45;
      v74 = v49;
      sub_21B34B814();
      v50 = sub_21B34B7F4();
      v51 = v83;
      v74 = v83;
      if (v50)
      {
        v72 = sub_21B2E9604(v73, a7, v75);
        v53 = v68;
        if ((v68 & 1) != (v52 & 1))
        {
          goto LABEL_22;
        }

        v51 = v74;
      }

      else
      {
        v53 = v68;
      }

      v68 = v31;
      if ((v53 & 1) == 0)
      {
        v83 = MEMORY[0x277D84F90];
        (*v65)(v63, v73, a7);
        v51 = v74;
        sub_21B34B804();
      }

      v54 = *(v51 + 56);
      v70 = v54;
      v55 = *(v54 + 8 * v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v55;
      *(v54 + 8 * v72) = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = sub_21B22E2C4(0, *(v55 + 16) + 1, 1, v55);
        *(v70 + 8 * v72) = v57;
      }

      v31 = v68;
      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      v68 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v61 = sub_21B22E2C4((v58 > 1), v68, 1, v57);
        *(v70 + 8 * v72) = v61;
      }

      (*v69)(v73, a7);
      v60 = *(v70 + 8 * v72);
      *(v60 + 16) = v68;
      *(v60 + 8 * v59 + 32) = v40;
      sub_21B34B4D4();
      v40 = v83;
      v39 = sub_21B2E9EE4;
      if (v84)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    result = sub_21B34BA84();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2E916C(uint64_t a1, char **a2, uint64_t a3)
{
  (*(*(a3 + 32) + 24))(&v18, *(a3 + 16));
  v4 = v18;

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v6 = sub_21B23A2F4(v6);
    }

    v7 = 0;
    v8 = 0;
    do
    {
      sub_21B233A74(v4 + v7 + 32, &v18);
      if (v8 >= *(v6 + 2))
      {
        __break(1u);
        goto LABEL_11;
      }

      ++v8;
      v9 = v19;
      v10 = v20;
      v11 = __swift_project_boxed_opaque_existential_1(&v18, v19);
      v17[3] = v9;
      v17[4] = *(v10 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
      v13 = *&v6[v7 + 56];
      v14 = *&v6[v7 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v6[v7 + 32], v13);
      (*(v14 + 56))(a1, v17, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      *a2 = v6;
      sub_21B233960(&v18);
      v7 += 40;
    }

    while (v5 != v8);
  }

  else
  {
  }
}

uint64_t sub_21B2E9330(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v29 = v6;
  v30 = *(a3 + 32);
  (*(v30 + 24))(&v35);
  v7 = v35;

  v27 = *(v7 + 16);

  v8 = v3 + *(a3 + 52);
  v9 = *(a3 + 40);
  v10 = *(a3 + 24);
  (*(v9 + 24))(&v35, v10, v9);
  v11 = v35;

  v12 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v12 = sub_21B23A2F4(v12);
  }

  v13 = *(v11 + 16);
  v26 = a2;
  v28 = v12;
  *a2 = v12;
  if (!v13)
  {
  }

  a2 = 0;
  v24 = v27;
  while (1)
  {
    for (i = v11 + 32 + 40 * a2; ; i += 40)
    {
      if (a2 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v35 = a2;
      sub_21B233A74(i, &v36);
      v12 = v38;
      if (!v38)
      {
      }

      v15 = v35;
      v16 = v39;
      v31 = v36;
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v35 = v29;
      *&v36 = v10;
      *(&v36 + 1) = v10;
      v37 = v30;
      v38 = v9;
      v39 = v9;
      result = type metadata accessor for HashJoin.JoinItem();
      if (v15 != *(v8 + *(result + 72)))
      {
        break;
      }

      a2 = (a2 + 1);
      sub_21B233960(&v31);
      if (v13 == a2)
      {
      }
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 >= *(v28 + 16))
    {
      goto LABEL_18;
    }

    v23 = v28 + 32 + 40 * v24;
    v18 = __swift_project_boxed_opaque_existential_1(&v31, v12);
    v37 = v12;
    v38 = *(v16 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v18, v12);
    v20 = *(v23 + 24);
    v21 = *(v23 + 32);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v20);
    (*(v21 + 56))(a1, &v35, v20, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    *v26 = v28;
    sub_21B233960(&v31);
    ++v24;
    v22 = (v13 - 1) == a2;
    a2 = (a2 + 1);
    if (v22)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_21B2E9604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_21B34AAA4();

  return sub_21B2E9660(a1, v9, a2, a3);
}

unint64_t sub_21B2E9660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_21B34AC54();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_21B2E97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_21B34B004())
  {
    sub_21B34B8A4();
    v13 = sub_21B34B894();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_21B34B004();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_21B34AFF4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_21B34B684();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_21B2E9604(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_21B2E9AD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21B2E9AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_21B25F054(MEMORY[0x277D84F90]);
  (*(a8 + 32))(v62, a4, a8);
  v14 = v62[0];
  v15 = v63;
  v52 = v62[2];
  v53 = v62[1];
  v16 = v64;
  v17 = v65;
  v18 = v63;
  v54 = v64;
  if (v65)
  {
    if (v65 == 1 && *(v63 + 16))
    {
      v18 = *(v63 + 32);
    }

    else
    {
      sub_21B2A6400(v63, v64, v65);
      if (v20)
      {
        v18 = 0;
      }

      else
      {
        v18 = v19;
      }

      v16 = v54;
    }
  }

  sub_21B2A6400(v15, v16, v17);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v51 = v23;
  if (v18 == v23)
  {
    v50 = 0;
    v24 = v54;
LABEL_14:

    sub_21B23A9F4(v15, v24, v17);
    sub_21B2E9AD4(v50);
    return v13;
  }

  *&v58 = a2;
  *(&v58 + 1) = a3;
  *&v59 = a4;
  *(&v59 + 1) = a6;
  v60 = a7;
  v61 = a8;
  v48 = v15;
  v50 = 0;
  v26 = (a1 + *(type metadata accessor for HashJoin.JoinItem() + 68));
  v24 = v54;
  v46 = v14;
  while (1)
  {
    *&v58 = v14;
    *(&v58 + 1) = v53;
    *&v59 = v52;
    *(&v59 + 1) = v15;
    v60 = v24;
    LOBYTE(v61) = v17;
    v27 = DataFrame.Rows.index(after:)(v18);
    v28 = v26[3];
    v29 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v28);
    (*(v29 + 48))(&v58, v18, v28, v29);
    if (!*(&v59 + 1))
    {
      sub_21B261664(&v58, &qword_27CD7E0F8, &unk_21B3557C0);
      v55 = 0u;
      v56 = 0u;
      v57 = 0;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      goto LABEL_17;
    }

    if (*(&v56 + 1))
    {
      break;
    }

LABEL_17:
    sub_21B261664(&v55, &qword_27CD7E200, &unk_21B352050);
LABEL_18:
    v18 = v27;
    v24 = v54;
    if (v27 == v51)
    {
      goto LABEL_14;
    }
  }

  v30 = v17;
  v58 = v55;
  v59 = v56;
  v60 = v57;
  sub_21B2E9AD4(v50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v55 = v13;
  v33 = sub_21B24B560(&v58);
  v34 = v13[2];
  v35 = (v32 & 1) == 0;
  v36 = v34 + v35;
  if (!__OFADD__(v34, v35))
  {
    v37 = v32;
    if (v13[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v55;
        if ((v32 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_21B252F24();
        v13 = v55;
        if ((v37 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_21B24D8F4(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_21B24B560(&v58);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_39;
      }

      v33 = v38;
      v13 = v55;
      if (v37)
      {
        goto LABEL_31;
      }

LABEL_30:
      sub_21B260E68(&v58, &v55);
      sub_21B24FCF8(v33, &v55, MEMORY[0x277D84F90], v13);
    }

LABEL_31:
    v40 = v13[7];
    v41 = *(v40 + 8 * v33);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 8 * v33) = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_21B22E2C4(0, *(v41 + 2) + 1, 1, v41);
      *(v40 + 8 * v33) = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *(v40 + 8 * v33) = sub_21B22E2C4((v43 > 1), v44 + 1, 1, v41);
    }

    sub_21B260E14(&v58);
    v45 = *(v40 + 8 * v33);
    *(v45 + 16) = v44 + 1;
    *(v45 + 8 * v44 + 32) = v18;
    v50 = sub_21B2E9EE4;
    v17 = v30;
    v14 = v46;
    v15 = v48;
    goto LABEL_18;
  }

  __break(1u);
LABEL_39:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t Column<A>.encoded<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v93 = a4;
  v91 = a1;
  v75 = a6;
  v73 = sub_21B34B6E4();
  v71 = *(v73 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v74 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v72 = &v68 - v15;
  v94 = a5;
  v92 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = sub_21B34B474();
  v84 = *(v90 - 8);
  v17 = *(v84 + 64);
  v18 = MEMORY[0x28223BE20](v90);
  v89 = &v68 - v19;
  v85 = *(AssociatedTypeWitness - 8);
  v20 = *(v85 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = &v68 - v21;
  v22 = *(a2 + 16);
  v23 = sub_21B34B474();
  v86 = *(v23 - 8);
  v24 = *(v86 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v77 = &v68 - v26;
  v99 = v22;
  v83 = *(v22 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x28223BE20](v25);
  v95 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = sub_21B34B474();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = (&v68 - v31);
  v33 = v6[1];
  v35 = v6[2];
  *&v115 = *v6;
  v34 = v115;
  *(&v115 + 1) = v33;
  *&v116 = v35;
  v36 = Column.count.getter(a2);
  swift_bridgeObjectRetain_n();
  v96 = AssociatedTypeWitness;
  Column.init(name:capacity:)(v34, v33, v36, AssociatedTypeWitness, &v118);
  *&v110 = v34;
  *(&v110 + 1) = v33;
  v111 = v35;
  swift_getWitnessTable();
  sub_21B34B194();
  v113 = v114;
  v69 = v34;
  v106 = v34;
  v107 = v33;
  v78 = v33;
  v108 = v35;
  v37 = TupleTypeMetadata2;
  v38 = v77;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v40 = sub_21B2A85CC();
  v41 = a2;
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v110 = v104;
  v111 = *&v105[0];
  v112 = *(v105 + 8);
  v106 = v39;
  v107 = v41;
  v102 = v40;
  v103 = v41;
  v108 = v40;
  v109 = WitnessTable;
  v101 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v100 = v37 - 8;
  v97 = (v83 + 48);
  v98 = (v86 + 32);
  v87 = (v83 + 32);
  v80 = (v85 + 8);
  v81 = v39;
  v86 += 8;
  v85 += 56;
  v83 += 8;
  v84 += 8;
  for (i = v32; ; v32 = i)
  {
    while (1)
    {
      *&v104 = v39;
      *(&v104 + 1) = v103;
      *&v105[0] = v102;
      *(&v105[0] + 1) = v101;
      v45 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(v37 - 8) + 48))(v32, 1, v37) == 1)
      {

        v104 = v115;
        v105[0] = v116;
        v105[1] = v117[0];
        *(&v105[1] + 9) = *(v117 + 9);
        result = (*(*(v45 - 8) + 8))(&v104, v45);
        v57 = v75;
        *v75 = v118;
        *(v57 + 1) = v119;
        return result;
      }

      v46 = *v32;
      (*v98)(v38, v32 + *(v37 + 48), v23);
      v47 = v99;
      if ((*v97)(v38, 1, v99) != 1)
      {
        break;
      }

      (*v86)(v38, v23);
      v43 = v89;
      (*v85)(v89, 1, 1, v96);
      v44 = type metadata accessor for Column();
      Column.append(_:)(v43, v44);
      (*v84)(v43, v90);
    }

    v79 = v46;
    v48 = v37;
    v49 = v23;
    v50 = v95;
    v51 = v38;
    (*v87)(v95, v38, v47);
    v52 = v88;
    v53 = v120;
    sub_21B34A964();
    v120 = v53;
    if (v53)
    {
      break;
    }

    v54 = v96;
    v55 = type metadata accessor for Column();
    Column.append(_:)(v52, v55);
    (*v80)(v52, v54);
    (*v83)(v50, v47);
    v23 = v49;
    v38 = v51;
    v37 = v48;
    v39 = v81;
  }

  v58 = v120;
  *&v110 = v120;
  MEMORY[0x21CEEE850](v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  v59 = v72;
  v60 = v73;
  if (swift_dynamicCast())
  {
    MEMORY[0x21CEEE840](v58);
    v61 = v70;
    v62 = v71;
    v63 = *(v71 + 32);
    v63(v70, v59, v60);
    (*(v62 + 16))(v74, v61, v60);
    v64 = type metadata accessor for ColumnEncodingError();
    sub_21B2EA87C();
    swift_allocError();
    v66 = v78;
    v65 = v79;
    *v67 = v69;
    v67[1] = v66;
    v67[2] = v65;
    v63(v67 + *(v64 + 24), v74, v60);
    swift_willThrow();
    (*(v62 + 8))(v61, v60);
  }

  else
  {
  }

  (*v83)(v95, v99);
  v104 = v115;
  v105[0] = v116;
  v105[1] = v117[0];
  *(&v105[1] + 9) = *(v117 + 9);
  (*(*(v45 - 8) + 8))(&v104, v45);

  return MEMORY[0x21CEEE840](v110);
}

uint64_t type metadata accessor for ColumnEncodingError()
{
  result = qword_27CD7F130;
  if (!qword_27CD7F130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B2EA87C()
{
  result = qword_27CD7F120;
  if (!qword_27CD7F120)
  {
    type metadata accessor for ColumnEncodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F120);
  }

  return result;
}

uint64_t ColumnEncodingError.init(columnName:rowIndex:encodingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for ColumnEncodingError() + 24);
  v8 = sub_21B34B6E4();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t AnyColumn.encoded<A, B>(_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = v6;
  v27 = a6;
  v14 = v6[3];
  v15 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v14);
  if ((*(*(v15 + 8) + 80))(v14) == a2)
  {
    sub_21B233A10(v8, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v16 = type metadata accessor for Column();
    swift_dynamicCast();
    Column<A>.encoded<A>(using:)(a1, v16, a3, a4, a5, &v25);

    if (!v7)
    {
      v23 = v25;
      v24 = v26;
      swift_getAssociatedTypeWitness();
      v18 = type metadata accessor for Column();
      Column.eraseToAnyColumn()(v18, v27);
    }
  }

  else
  {
    v23 = 0;
    *&v24 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34D5E0);
    v19 = v8[3];
    v20 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v19);
    (*(*(v20 + 8) + 80))(v19);
    v21 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v21);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v22 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v22);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t *AnyColumn.encode<A, B>(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v15 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v8, v15);
  if ((*(*(v14 + 8) + 80))(v15) == a3)
  {
    sub_21B233A10(v8, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    v16 = type metadata accessor for Column();
    swift_dynamicCast();
    swift_getAssociatedTypeWitness();
    v24 = type metadata accessor for Column();
    v25 = &off_282CAA128;
    Column<A>.encoded<A>(using:)(a2, v16, a4, a5, a6, &v23);

    if (v7)
    {
      return __swift_deallocate_boxed_opaque_existential_1(&v23);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      return sub_21B234878(&v23, v8);
    }
  }

  else
  {
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34D5E0);
    v19 = v8[3];
    v18 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v19);
    (*(*(v18 + 8) + 80))(v19);
    v20 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v20);

    MEMORY[0x21CEED5E0](0xD00000000000001ALL, 0x800000021B34CD80);
    v21 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v21);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t DataFrame.encodeColumn<A, B>(_:_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *v8;
  v20 = v8[1];
  v21 = v8[2];

  v17 = sub_21B23AC94(a1, a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v16);
  v16 = result;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v17 < *(v16 + 16))
  {
    result = AnyColumn.encode<A, B>(_:using:)(result, a4, a5, a6, a7, a8);
    *v9 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DataFrame.encodeColumn<A, B>(_:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a1;
  v13 = a1[1];
  v14 = *v6;
  v18 = v6[1];
  v19 = v6[2];

  v15 = sub_21B23AC94(v12, v13);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21B23A2F4(v14);
  v14 = result;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v15 < *(v14 + 16))
  {
    result = AnyColumn.encode<A, B>(_:using:)(result, a2, a3, a4, a5, a6);
    *v7 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ColumnEncodingError.columnName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ColumnEncodingError.columnName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ColumnEncodingError.encodingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ColumnEncodingError() + 24);
  v4 = sub_21B34B6E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ColumnEncodingError.encodingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ColumnEncodingError() + 24);
  v4 = sub_21B34B6E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ColumnEncodingError.debugDescription.getter()
{
  v1 = sub_21B34B6D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B34B6E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ColumnEncodingError();
  (*(v7 + 16))(v10, &v0[*(v11 + 24)], v6);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D841A8])
  {
    (*(v7 + 96))(v10, v6);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F128, &qword_21B355CB8);
    (*(v2 + 32))(v5, v10 + *(v12 + 48), v1);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_21B34B634();

    v20 = 0x6D756C6F63206E49;
    v21 = 0xEB0000000027206ELL;
    MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
    MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
    v19 = *(v0 + 2);
    v13 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v13);

    MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
    v14 = sub_21B34B694();
    MEMORY[0x21CEED5E0](v14);

    v15 = v20;
    (*(v2 + 8))(v5, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0x6D756C6F63206E49, 0xEB0000000027206ELL);
    MEMORY[0x21CEED5E0](*v0, *(v0 + 1));
    MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
    v19 = *(v0 + 2);
    v16 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v16);

    MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
    sub_21B34B7C4();
    v15 = v20;
    (*(v7 + 8))(v10, v6);
  }

  return v15;
}

uint64_t sub_21B2EB698()
{
  result = sub_21B34B6E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_21B2EB760(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_21B2EB7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2EB838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = sub_21B34A834();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v45 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21B22EBA0(a1, a2, *(v5 + 104)))
  {
    (*(v17 + 56))(v13, 1, 1, v16);
    sub_21B2FDE8C(v13);
    return sub_21B27DF7C(v13);
  }

  v37 = a3;
  v38 = v4;
  v21 = sub_21B22EA68(a1, a2);
  if (!v22)
  {
    v23 = *(v5 + 200);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
    v43 = v31;
    v44 = sub_21B27A8D0();
    v41 = a1;
    v42 = a2;
    v32 = __swift_project_boxed_opaque_existential_1(&v41, v31);
    if (*v32)
    {
      v33 = (v32[1] + *v32);
    }

    else
    {
      v33 = 0;
    }

    sub_21B273F78(*v32, v33, &v39);
    v29 = v39;
    v27 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(&v41);
    v28 = 0;
    v30 = 0;
    goto LABEL_13;
  }

  sub_21B2D12C4(v21, v22, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21B27DF7C(v15);
    v23 = *(v5 + 200);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
    v43 = v24;
    v44 = sub_21B27A8D0();
    v41 = a1;
    v42 = a2;
    v25 = __swift_project_boxed_opaque_existential_1(&v41, v24);
    if (*v25)
    {
      v26 = (v25[1] + *v25);
    }

    else
    {
      v26 = 0;
    }

    sub_21B273F78(*v25, v26, &v39);
    v27 = v39;
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(&v41);
    v29 = 4;
    v30 = 4;
LABEL_13:
    sub_21B27A934();
    swift_allocError();
    *v34 = v37;
    *(v34 + 8) = v23;
    *(v34 + 16) = v29;
    *(v34 + 24) = v27;
    *(v34 + 32) = v28;
    *(v34 + 40) = v30;
    return swift_willThrow();
  }

  v35 = v45;
  (*(v17 + 32))(v45, v15, v16);
  (*(v17 + 16))(v13, v35, v16);
  (*(v17 + 56))(v13, 0, 1, v16);
  sub_21B2FDE8C(v13);
  sub_21B27DF7C(v13);
  return (*(v17 + 8))(v35, v16);
}

uint64_t sub_21B2EBBE0@<X0>(void *a1@<X8>)
{
  v4 = v1[29];
  v3 = v1[30];
  v5 = v1[31];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
  a1[4] = &off_282CAA128;
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
}

uint64_t sub_21B2EBC54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 240);

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t AnyColumnSlice.name.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t AnyColumnSlice.wrappedElementType.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 80))(v2);
}

uint64_t AnyColumnSlice.assumingType<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  if ((*(*(v6 + 8) + 80))(v7) == a1)
  {
    sub_21B233A10(v3, &v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
    type metadata accessor for ColumnSlice();
    if (swift_dynamicCast())
    {

      sub_21B233A10(v3, &v36);
      swift_dynamicCast();
      v8 = v31;
      v9 = v32;
      v25 = a2;
      v10 = v33;
      v11 = v34;
      v12 = v35;
      v36 = v31;
      v37 = v32;
      v38 = v33;
      v39 = v34;
      v40 = v35;
      v13 = type metadata accessor for Column();
      swift_getWitnessTable();
      v14 = sub_21B34BB44();
      MEMORY[0x21CEEE2D0](v30, v14);
      v15 = v30[1];
      v24 = v30[0];
      v16 = v30[2];
      v31 = v8;
      v32 = v9;
      v33 = v10;
      v34 = v11;
      v35 = v12;
      swift_getWitnessTable();
      sub_21B34B194();
      v26[0] = v26[1];
      sub_21B297EA4(v26, &v27);
      v17 = v27;
      v18 = v28;
      LOBYTE(v9) = v29;
      v31 = v24;
      v32 = v15;
      v33 = v16;
      sub_21B28B2B8(v27, v28, v29, v13, v25);

      sub_21B23A9F4(v17, v18, v9);
    }

    else
    {
      sub_21B233A10(v3, &v36);
      type metadata accessor for DiscontiguousColumnSlice();
      return swift_dynamicCast();
    }
  }

  else
  {
    sub_21B34B634();

    v36 = 0xD00000000000001CLL;
    v37 = 0x800000021B34C840;
    v20 = v3[3];
    v21 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v20);
    (*(*(v21 + 8) + 80))(v20);
    v22 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v22);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    v23 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v23);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t AnyColumnSlice.missingCount.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 56))(v2);
}

uint64_t sub_21B2EC0DC@<X0>(uint64_t a1@<X8>)
{
  v60 = MEMORY[0x277D84FA0];
  v57 = 0;
  v58 = 0;
  v59 = 2;
  v3 = *(v1 + 16);
  v54 = *v1;
  v55[0] = v3;
  *(v55 + 9) = *(v1 + 25);
  v61 = v54;
  v4 = *(v1 + 24);
  v39 = *(v1 + 16);
  v36 = v4;
  v37 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v37 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v39 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v31 = v4;
  v62 = v61;
  v63 = v39;
  result = swift_beginAccess();
  v8 = *(v39 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = *v1;
  v34 = *v1;
  v35 = *(v8 + 8);
  v10 = v36;
  v32 = *(v1 + 32);
  v33 = *(v1 + 8);
  if (v37)
  {
    if (v37 == 1 && *(v36 + 16))
    {
      v11 = (v36 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(v39 + 16);
      if (!v12)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v11 = (v12 + 8);
    }

    v10 = *v11;
  }

  v13 = v31;
  if (v31 != v35)
  {
    v76 = v54;
    *v77 = v55[0];
    *&v77[9] = *(v55 + 9);
    sub_21B2615FC(v1, v41, &qword_27CD7E710, &qword_21B352330);
    sub_21B2615FC(v1, v41, &qword_27CD7E710, &qword_21B352330);
    swift_beginAccess();
    v17 = v31;
    while (1)
    {
      result = sub_21B2B4370(v17);
      v18 = *(v39 + 16);
      if (!v18)
      {
        break;
      }

      if (v10 == *(v18 + 8))
      {
        goto LABEL_38;
      }

      v38 = result;
      v70 = v34;
      v71 = v33;
      v72 = v39;
      v73 = v36;
      v74 = v32;
      v75 = v37;
      v19 = sub_21B2AE370(v10);
      v21 = v20;
      v64 = v34;
      v65 = v33;
      v66 = v39;
      v67 = v36;
      v22 = v19;
      v68 = v32;
      v69 = v37;
      result = sub_21B2B4370(v10);
      v10 = result;
      v23 = v60;
      if (*(v60 + 16))
      {
        v24 = *(v60 + 40);
        sub_21B34BBC4();
        sub_21B34BBE4();
        if ((v21 & 1) == 0)
        {
          MEMORY[0x21CEEE3B0](v22);
        }

        result = sub_21B34BC24();
        v25 = -1 << *(v23 + 32);
        v26 = result & ~v25;
        if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          do
          {
            v28 = *(v23 + 48) + 16 * v26;
            if (*(v28 + 8))
            {
              if (v21)
              {
                goto LABEL_20;
              }
            }

            else if ((v21 & 1) == 0 && *v28 == v22)
            {
              goto LABEL_20;
            }

            v26 = (v26 + 1) & v27;
          }

          while (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
        }
      }

      v29 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        break;
      }

      if (v29 < v17)
      {
        __break(1u);
LABEL_37:
        result = v35;
LABEL_38:
        v15 = v57;
        v14 = v58;
        v16 = v59;
        v13 = v31;
        goto LABEL_39;
      }

      sub_21B28DFBC(v17, v29);
      sub_21B256274(v41, v22, v21 & 1);
LABEL_20:
      v17 = v38;
      if (v38 == v35)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v41, &qword_27CD7E710, &qword_21B352330);
  sub_21B2615FC(v1, v41, &qword_27CD7E710, &qword_21B352330);
  v14 = 0;
  v15 = 0;
  v16 = 2;
  result = v31;
LABEL_39:
  v41[0] = v54;
  v41[1] = v55[0];
  v41[2] = v55[1];
  v42 = v13;
  v43 = v35;
  v44 = result;
  v45 = v34;
  v46 = v33;
  v47 = v39;
  v48 = v36;
  v49 = v32;
  v50 = v37;
  *&v51[3] = *&v56[3];
  *v51 = *v56;
  v52 = v10;
  v53 = 1;
  sub_21B261664(v41, &qword_27CD7F178, &qword_21B356210);

  v30 = *(&v62 + 1);
  *a1 = v62;
  *(a1 + 8) = v30;
  *(a1 + 16) = v39;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  return sub_21B2615FC(&v62, v40, &qword_27CD7E170, &unk_21B3526E0);
}

uint64_t sub_21B2EC584@<X0>(uint64_t a1@<X8>)
{
  v57 = MEMORY[0x277D84FA0];
  v54 = 0;
  v55 = 0;
  v56 = 2;
  v3 = *(v1 + 16);
  v51 = *v1;
  v52[0] = v3;
  *(v52 + 9) = *(v1 + 25);
  v58 = v51;
  v4 = *(v1 + 24);
  v36 = *(v1 + 16);
  v33 = v4;
  v34 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v34 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v36 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v59 = v58;
  v60 = v36;
  result = swift_beginAccess();
  v8 = *(v36 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = *v1;
  v31 = *v1;
  v32 = *(v8 + 8);
  v10 = v33;
  v29 = *(v1 + 8);
  v30 = *(v1 + 32);
  if (v34)
  {
    if (v34 == 1 && *(v33 + 16))
    {
      v11 = (v33 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(v36 + 16);
      if (!v12)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v11 = (v12 + 8);
    }

    v10 = *v11;
  }

  v28 = a1;
  v13 = v4;
  if (v4 != v32)
  {
    v73 = v51;
    *v74 = v52[0];
    *&v74[9] = *(v52 + 9);
    sub_21B2615FC(v1, v38, &qword_27CD7E708, &qword_21B352328);
    sub_21B2615FC(v1, v38, &qword_27CD7E708, &qword_21B352328);
    swift_beginAccess();
    v27 = v4;
    while (1)
    {
      result = sub_21B2B4370(v4);
      v17 = *(v36 + 16);
      if (!v17)
      {
        break;
      }

      if (v10 == *(v17 + 8))
      {
        goto LABEL_38;
      }

      v35 = result;
      v67 = v31;
      v68 = v29;
      v69 = v36;
      v70 = v33;
      v71 = v30;
      v72 = v34;
      v18 = sub_21B2AEB50(v10);
      v61 = v31;
      v62 = v29;
      v63 = v36;
      v64 = v33;
      v65 = v30;
      v66 = v34;
      result = sub_21B2B4370(v10);
      v10 = result;
      v19 = v57;
      if (*(v57 + 16))
      {
        v20 = *(v57 + 40);
        sub_21B34BBC4();
        sub_21B34BBE4();
        if ((v18 & 0x10000) == 0)
        {
          sub_21B34BBF4();
        }

        result = sub_21B34BC24();
        v21 = -1 << *(v19 + 32);
        v22 = result & ~v21;
        if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          do
          {
            v24 = *(v19 + 48) + 4 * v22;
            if (*(v24 + 2))
            {
              if ((v18 & 0x10000) != 0)
              {
                goto LABEL_20;
              }
            }

            else if ((v18 & 0x10000) == 0 && *v24 == *&v18)
            {
              goto LABEL_20;
            }

            v22 = (v22 + 1) & v23;
          }

          while (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
        }
      }

      v25 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        break;
      }

      if (v25 < v4)
      {
        __break(1u);
LABEL_37:
        result = v32;
LABEL_38:
        v15 = v54;
        v14 = v55;
        v16 = v56;
        v13 = v27;
        goto LABEL_39;
      }

      sub_21B28DFBC(v4, v25);
      sub_21B256130(v38, v18 & 0x1FFFF);
LABEL_20:
      v4 = v35;
      if (v35 == v32)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v38, &qword_27CD7E708, &qword_21B352328);
  sub_21B2615FC(v1, v38, &qword_27CD7E708, &qword_21B352328);
  v14 = 0;
  v15 = 0;
  v16 = 2;
  result = v13;
LABEL_39:
  v38[0] = v51;
  v38[1] = v52[0];
  v38[2] = v52[1];
  v39 = v13;
  v40 = v32;
  v41 = result;
  v42 = v31;
  v43 = v29;
  v44 = v36;
  v45 = v33;
  v46 = v30;
  v47 = v34;
  *&v48[3] = *&v53[3];
  *v48 = *v53;
  v49 = v10;
  v50 = 1;
  sub_21B261664(v38, &qword_27CD7F180, &qword_21B356218);

  v26 = *(&v59 + 1);
  *v28 = v59;
  *(v28 + 8) = v26;
  *(v28 + 16) = v36;
  *(v28 + 24) = v15;
  *(v28 + 32) = v14;
  *(v28 + 40) = v16;
  return sub_21B2615FC(&v59, v37, &qword_27CD7ED10, &qword_21B354A68);
}

uint64_t sub_21B2ECA28@<X0>(uint64_t a1@<X8>)
{
  v57 = MEMORY[0x277D84FA0];
  v54 = 0;
  v55 = 0;
  v56 = 2;
  v3 = *(v1 + 16);
  v51 = *v1;
  v52[0] = v3;
  *(v52 + 9) = *(v1 + 25);
  v58 = v51;
  v4 = *(v1 + 24);
  v36 = *(v1 + 16);
  v33 = v4;
  v34 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v34 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v36 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v59 = v58;
  v60 = v36;
  result = swift_beginAccess();
  v8 = *(v36 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = *v1;
  v31 = *v1;
  v32 = *(v8 + 8);
  v10 = v33;
  v29 = *(v1 + 8);
  v30 = *(v1 + 32);
  if (v34)
  {
    if (v34 == 1 && *(v33 + 16))
    {
      v11 = (v33 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(v36 + 16);
      if (!v12)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v11 = (v12 + 8);
    }

    v10 = *v11;
  }

  v28 = a1;
  v13 = v4;
  if (v4 != v32)
  {
    v73 = v51;
    *v74 = v52[0];
    *&v74[9] = *(v52 + 9);
    sub_21B2615FC(v1, v38, &qword_27CD7E700, &qword_21B352320);
    sub_21B2615FC(v1, v38, &qword_27CD7E700, &qword_21B352320);
    swift_beginAccess();
    v27 = v4;
    while (1)
    {
      result = sub_21B2B4370(v4);
      v17 = *(v36 + 16);
      if (!v17)
      {
        break;
      }

      if (v10 == *(v17 + 8))
      {
        goto LABEL_38;
      }

      v35 = result;
      v67 = v31;
      v68 = v29;
      v69 = v36;
      v70 = v33;
      v71 = v30;
      v72 = v34;
      v18 = sub_21B2AE9BC(v10);
      v61 = v31;
      v62 = v29;
      v63 = v36;
      v64 = v33;
      v65 = v30;
      v66 = v34;
      result = sub_21B2B4370(v10);
      v10 = result;
      v19 = v57;
      if (*(v57 + 16))
      {
        v20 = *(v57 + 40);
        sub_21B34BBC4();
        sub_21B34BBE4();
        if ((v18 & 0x100000000) == 0)
        {
          sub_21B34BC04();
        }

        result = sub_21B34BC24();
        v21 = -1 << *(v19 + 32);
        v22 = result & ~v21;
        if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          do
          {
            v24 = *(v19 + 48) + 8 * v22;
            if (*(v24 + 4))
            {
              if ((v18 & 0x100000000) != 0)
              {
                goto LABEL_20;
              }
            }

            else if ((v18 & 0x100000000) == 0 && *v24 == *&v18)
            {
              goto LABEL_20;
            }

            v22 = (v22 + 1) & v23;
          }

          while (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
        }
      }

      v25 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        break;
      }

      if (v25 < v4)
      {
        __break(1u);
LABEL_37:
        result = v32;
LABEL_38:
        v15 = v54;
        v14 = v55;
        v16 = v56;
        v13 = v27;
        goto LABEL_39;
      }

      sub_21B28DFBC(v4, v25);
      sub_21B255FD4(v38, v18 | ((HIDWORD(v18) & 1) << 32));
LABEL_20:
      v4 = v35;
      if (v35 == v32)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v38, &qword_27CD7E700, &qword_21B352320);
  sub_21B2615FC(v1, v38, &qword_27CD7E700, &qword_21B352320);
  v14 = 0;
  v15 = 0;
  v16 = 2;
  result = v13;
LABEL_39:
  v38[0] = v51;
  v38[1] = v52[0];
  v38[2] = v52[1];
  v39 = v13;
  v40 = v32;
  v41 = result;
  v42 = v31;
  v43 = v29;
  v44 = v36;
  v45 = v33;
  v46 = v30;
  v47 = v34;
  *&v48[3] = *&v53[3];
  *v48 = *v53;
  v49 = v10;
  v50 = 1;
  sub_21B261664(v38, &qword_27CD7F188, &qword_21B356220);

  v26 = *(&v59 + 1);
  *v28 = v59;
  *(v28 + 8) = v26;
  *(v28 + 16) = v36;
  *(v28 + 24) = v15;
  *(v28 + 32) = v14;
  *(v28 + 40) = v16;
  return sub_21B2615FC(&v59, v37, &qword_27CD7E160, &unk_21B352A10);
}

uint64_t sub_21B2ECEDC@<X0>(uint64_t a1@<X8>)
{
  v60 = MEMORY[0x277D84FA0];
  v57 = 0;
  v58 = 0;
  v59 = 2;
  v3 = *(v1 + 16);
  v54 = *v1;
  v55[0] = v3;
  *(v55 + 9) = *(v1 + 25);
  v61 = v54;
  v4 = *(v1 + 24);
  v39 = *(v1 + 16);
  v35 = v4;
  v36 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v36 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v39 + 16);
      if (!v7)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v30 = v4;
  v62 = v61;
  v63 = v39;
  result = swift_beginAccess();
  v8 = *(v39 + 16);
  if (!v8)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v9 = *v1;
  v33 = *v1;
  v34 = *(v8 + 8);
  v10 = v35;
  v31 = *(v1 + 32);
  v32 = *(v1 + 8);
  if (v36)
  {
    if (v36 == 1 && *(v35 + 16))
    {
      v11 = (v35 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(v39 + 16);
      if (!v12)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v11 = (v12 + 8);
    }

    v10 = *v11;
  }

  v13 = v30;
  if (v30 != v34)
  {
    v76 = v54;
    *v77 = v55[0];
    *&v77[9] = *(v55 + 9);
    sub_21B2615FC(v1, v41, &qword_27CD7E6F8, &qword_21B352318);
    sub_21B2615FC(v1, v41, &qword_27CD7E6F8, &qword_21B352318);
    swift_beginAccess();
    v17 = v30;
    while (1)
    {
      result = sub_21B2B4370(v17);
      v18 = *(v39 + 16);
      if (!v18)
      {
        break;
      }

      if (v10 == *(v18 + 8))
      {
        goto LABEL_42;
      }

      v37 = result;
      v70 = v33;
      v71 = v32;
      v72 = v39;
      v73 = v35;
      v74 = v31;
      v75 = v36;
      v38 = COERCE_DOUBLE(sub_21B2AE370(v10));
      v20 = v19;
      v64 = v33;
      v65 = v32;
      v66 = v39;
      v67 = v35;
      v68 = v31;
      v69 = v36;
      result = sub_21B2B4370(v10);
      v10 = result;
      v21 = v60;
      if (*(v60 + 16))
      {
        v22 = *(v60 + 40);
        sub_21B34BBC4();
        if (v20)
        {
          sub_21B34BBE4();
        }

        else
        {
          sub_21B34BBE4();
          v23 = (*&v38 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? *&v38 : 0;
          MEMORY[0x21CEEE3F0](v23);
        }

        result = sub_21B34BC24();
        v24 = -1 << *(v21 + 32);
        v25 = result & ~v24;
        if ((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          do
          {
            v27 = *(v21 + 48) + 16 * v25;
            if (*(v27 + 8))
            {
              if (v20)
              {
                goto LABEL_20;
              }
            }

            else if ((v20 & 1) == 0 && *v27 == v38)
            {
              goto LABEL_20;
            }

            v25 = (v25 + 1) & v26;
          }

          while (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
        }
      }

      v28 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        break;
      }

      if (v28 < v17)
      {
        __break(1u);
LABEL_41:
        result = v34;
LABEL_42:
        v15 = v57;
        v14 = v58;
        v16 = v59;
        v13 = v30;
        goto LABEL_43;
      }

      sub_21B28DFBC(v17, v28);
      sub_21B255E74(v41, *&v38, v20 & 1);
LABEL_20:
      v17 = v37;
      if (v37 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_21B2615FC(v1, v41, &qword_27CD7E6F8, &qword_21B352318);
  sub_21B2615FC(v1, v41, &qword_27CD7E6F8, &qword_21B352318);
  v14 = 0;
  v15 = 0;
  v16 = 2;
  result = v30;
LABEL_43:
  v41[0] = v54;
  v41[1] = v55[0];
  v41[2] = v55[1];
  v42 = v13;
  v43 = v34;
  v44 = result;
  v45 = v33;
  v46 = v32;
  v47 = v39;
  v48 = v35;
  v49 = v31;
  v50 = v36;
  *&v51[3] = *&v56[3];
  *v51 = *v56;
  v52 = v10;
  v53 = 1;
  sub_21B261664(v41, &qword_27CD7F190, &qword_21B356228);

  v29 = *(&v62 + 1);
  *a1 = v62;
  *(a1 + 8) = v29;
  *(a1 + 16) = v39;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  return sub_21B2615FC(&v62, v40, &qword_27CD7E168, &unk_21B3526C0);
}

uint64_t sub_21B2ED390@<X0>(uint64_t a1@<X8>)
{
  v57 = MEMORY[0x277D84FA0];
  v54 = 0;
  v55 = 0;
  v56 = 2;
  v3 = *(v1 + 16);
  v51 = *v1;
  v52[0] = v3;
  *(v52 + 9) = *(v1 + 25);
  v58 = v51;
  v4 = *(v1 + 24);
  v36 = *(v1 + 16);
  v33 = v4;
  v34 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v34 == 1 && *(v4 + 16))
    {
      v5 = (v4 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v36 + 16);
      if (!v7)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v59 = v58;
  v60 = v36;
  result = swift_beginAccess();
  v8 = *(v36 + 16);
  if (!v8)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = *v1;
  v31 = *v1;
  v32 = *(v8 + 8);
  v10 = v33;
  v29 = *(v1 + 8);
  v30 = *(v1 + 32);
  if (v34)
  {
    if (v34 == 1 && *(v33 + 16))
    {
      v11 = (v33 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(v36 + 16);
      if (!v12)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v11 = (v12 + 8);
    }

    v10 = *v11;
  }

  v28 = a1;
  v13 = v4;
  if (v4 != v32)
  {
    v73 = v51;
    *v74 = v52[0];
    *&v74[9] = *(v52 + 9);
    sub_21B2615FC(v1, v38, &qword_27CD7E6F0, &qword_21B352310);
    sub_21B2615FC(v1, v38, &qword_27CD7E6F0, &qword_21B352310);
    swift_beginAccess();
    v27 = v4;
    while (1)
    {
      result = sub_21B2B4370(v4);
      v17 = *(v36 + 16);
      if (!v17)
      {
        break;
      }

      if (v10 == *(v17 + 8))
      {
        goto LABEL_38;
      }

      v35 = result;
      v67 = v31;
      v68 = v29;
      v69 = v36;
      v70 = v33;
      v71 = v30;
      v72 = v34;
      v18 = sub_21B2AE834(v10);
      v61 = v31;
      v62 = v29;
      v63 = v36;
      v64 = v33;
      v65 = v30;
      v66 = v34;
      result = sub_21B2B4370(v10);
      v10 = result;
      v19 = v57;
      if (*(v57 + 16))
      {
        v20 = *(v57 + 40);
        sub_21B34BBC4();
        if (v18 != 2)
        {
          sub_21B34BBE4();
        }

        sub_21B34BBE4();
        result = sub_21B34BC24();
        v21 = -1 << *(v19 + 32);
        v22 = result & ~v21;
        if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          do
          {
            v24 = *(*(v19 + 48) + v22);
            if (v24 == 2)
            {
              if (v18 == 2)
              {
                goto LABEL_20;
              }
            }

            else if (v18 != 2 && ((v24 ^ v18) & 1) == 0)
            {
              goto LABEL_20;
            }

            v22 = (v22 + 1) & v23;
          }

          while (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
        }
      }

      v25 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        break;
      }

      if (v25 < v4)
      {
        __break(1u);
LABEL_37:
        result = v32;
LABEL_38:
        v15 = v54;
        v14 = v55;
        v16 = v56;
        v13 = v27;
        goto LABEL_39;
      }

      sub_21B28DFBC(v4, v25);
      sub_21B255D28(v38, v18);
LABEL_20:
      v4 = v35;
      if (v35 == v32)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  sub_21B2615FC(v1, v38, &qword_27CD7E6F0, &qword_21B352310);
  sub_21B2615FC(v1, v38, &qword_27CD7E6F0, &qword_21B352310);
  v14 = 0;
  v15 = 0;
  v16 = 2;
  result = v13;
LABEL_39:
  v38[0] = v51;
  v38[1] = v52[0];
  v38[2] = v52[1];
  v39 = v13;
  v40 = v32;
  v41 = result;
  v42 = v31;
  v43 = v29;
  v44 = v36;
  v45 = v33;
  v46 = v30;
  v47 = v34;
  *&v48[3] = *&v53[3];
  *v48 = *v53;
  v49 = v10;
  v50 = 1;
  sub_21B261664(v38, &qword_27CD7F198, &qword_21B356230);

  v26 = *(&v59 + 1);
  *v28 = v59;
  *(v28 + 8) = v26;
  *(v28 + 16) = v36;
  *(v28 + 24) = v15;
  *(v28 + 32) = v14;
  *(v28 + 40) = v16;
  return sub_21B2615FC(&v59, v37, &qword_27CD7E150, &unk_21B3526D0);
}

uint64_t sub_21B2ED83C@<X0>(uint64_t a1@<X8>)
{
  v65 = MEMORY[0x277D84FA0];
  v62 = 0;
  v63 = 0;
  v64 = 2;
  v3 = *(v1 + 16);
  v59 = *v1;
  v60[0] = v3;
  *(v60 + 9) = *(v1 + 25);
  v66 = v59;
  v44 = *(v1 + 16);
  v42 = *(v1 + 24);
  v4 = v42;
  v43 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v43 == 1 && *(v42 + 16))
    {
      v5 = (v42 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v44 + 16);
      if (!v7)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v5 = (v7 + 8);
    }

    v4 = *v5;
  }

  v37 = v4;
  v67 = v66;
  v68 = v44;
  result = swift_beginAccess();
  v8 = *(v44 + 16);
  if (!v8)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v9 = *v1;
  v40 = *v1;
  v41 = *(v8 + 8);
  v10 = v42;
  v38 = *(v1 + 32);
  v39 = *(v1 + 8);
  if (v43)
  {
    if (v43 == 1 && *(v42 + 16))
    {
      v11 = (v42 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(v44 + 16);
      if (!v12)
      {
LABEL_49:
        __break(1u);
        return result;
      }

      v11 = (v12 + 8);
    }

    v10 = *v11;
  }

  v36 = a1;
  sub_21B2615FC(v1, v46, &qword_27CD7E6E8, &qword_21B352308);
  sub_21B2615FC(v1, v46, &qword_27CD7E6E8, &qword_21B352308);
  v13 = v37;
  if (v37 != v41)
  {
    v18 = v37;
    while (1)
    {
      v81 = v59;
      *v82 = v60[0];
      *&v82[9] = *(v60 + 9);
      v17 = sub_21B2B4370(v18);
      result = swift_beginAccess();
      v19 = *(v44 + 16);
      if (!v19)
      {
        break;
      }

      if (v10 == *(v19 + 8))
      {
        goto LABEL_42;
      }

      v75 = v40;
      v76 = v39;
      v77 = v44;
      v78 = v42;
      v79 = v38;
      v80 = v43;
      v20 = sub_21B2AE51C(v10);
      v22 = v21;
      v69 = v40;
      v70 = v39;
      v71 = v44;
      v72 = v42;
      v73 = v38;
      v74 = v43;
      v10 = sub_21B2B4370(v10);
      v23 = v65;
      if (*(v65 + 16))
      {
        v24 = *(v65 + 40);
        sub_21B34BBC4();
        sub_21B34BBE4();
        if (v22)
        {
          sub_21B34AD94();
        }

        v25 = sub_21B34BC24();
        v26 = v23 + 56;
        v27 = -1 << *(v23 + 32);
        v28 = v25 & ~v27;
        if ((*(v23 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          v30 = *(v23 + 48);
          do
          {
            v31 = (v30 + 16 * v28);
            v32 = v31[1];
            if (v32)
            {
              if (v22)
              {
                v33 = *v31 == v20 && v32 == v22;
                if (v33 || (sub_21B34B9F4() & 1) != 0)
                {
                  goto LABEL_39;
                }
              }
            }

            else if (!v22)
            {
              goto LABEL_40;
            }

            v28 = (v28 + 1) & v29;
          }

          while (((*(v26 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0);
        }
      }

      result = v18;
      v34 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        break;
      }

      if (v34 < v18)
      {
        goto LABEL_45;
      }

      sub_21B28DFBC(v18, v34);
      sub_21B255BA0(v46, v20, v22);
LABEL_39:

LABEL_40:
      v18 = v17;
      if (v17 == v41)
      {
        v17 = v41;
LABEL_42:
        v15 = v62;
        v14 = v63;
        v16 = v64;
        v13 = v37;
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v14 = 0;
  v15 = 0;
  v16 = 2;
  v17 = v37;
LABEL_43:
  v46[0] = v59;
  v46[1] = v60[0];
  v46[2] = v60[1];
  v47 = v13;
  v48 = v41;
  v49 = v17;
  v50 = v40;
  v51 = v39;
  v52 = v44;
  v53 = v42;
  v54 = v38;
  v55 = v43;
  *&v56[3] = *&v61[3];
  *v56 = *v61;
  v57 = v10;
  v58 = 1;
  sub_21B261664(v46, &qword_27CD7F1A0, &qword_21B356238);

  v35 = *(&v67 + 1);
  *v36 = v67;
  *(v36 + 8) = v35;
  *(v36 + 16) = v44;
  *(v36 + 24) = v15;
  *(v36 + 32) = v14;
  *(v36 + 40) = v16;
  return sub_21B2615FC(&v67, v45, &qword_27CD7E158, &unk_21B3526B0);
}

uint64_t sub_21B2EDCE0@<X0>(uint64_t a1@<X8>)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  v3 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v5 = &v79 - v4;
  v111 = sub_21B34A834();
  v6 = *(v111 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v111);
  v101 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v81 = *(v9 - 8);
  v10 = *(v81 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v84 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v83 = &v79 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v102 = &v79 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v82 = &v79 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v110 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v90 = &v79 - v24;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F1A8, &qword_21B356240);
  v25 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v79 - v26;
  v135 = MEMORY[0x277D84FA0];
  v133 = 0;
  v132 = 0;
  v134 = 2;
  v27 = *(v1 + 16);
  v126 = *v1;
  v127[0] = v27;
  *(v127 + 9) = *(v1 + 25);
  v136 = v126;
  v28 = *(v1 + 16);
  v95 = *(v1 + 24);
  v80 = v95;
  v96 = *(v1 + 40);
  if (v96)
  {
    if (v96 == 1 && *(v95 + 16))
    {
      v29 = (v95 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v31 = *(v28 + 16);
      if (!v31)
      {
        goto LABEL_49;
      }

      v29 = (v31 + 8);
    }

    v80 = *v29;
  }

  v137 = v136;
  v138 = v28;
  result = swift_beginAccess();
  v32 = *(v28 + 16);
  if (!v32)
  {
    goto LABEL_48;
  }

  v33 = *(v32 + 8);
  v129 = v126;
  v130 = v127[0];
  v131 = v127[1];
  v34 = *v1;
  v91 = *(v1 + 8);
  v92 = v34;
  v93 = *(v1 + 32);
  v94 = v33;
  v35 = v95;
  if (v96)
  {
    if (v96 == 1 && *(v95 + 16))
    {
      v36 = (v95 + 32);
    }

    else
    {
      result = swift_beginAccess();
      v37 = *(v28 + 16);
      if (!v37)
      {
        goto LABEL_50;
      }

      v36 = (v37 + 8);
    }

    v35 = *v36;
  }

  v38 = v80;
  if (v80 == v94)
  {
    sub_21B2615FC(v1, v113, &qword_27CD7E6E0, &qword_21B352300);
    sub_21B2615FC(v1, v113, &qword_27CD7E6E0, &qword_21B352300);
    v39 = 0;
    v40 = 0;
    v41 = 2;
    v42 = v28;
    result = v38;
LABEL_44:
    v113[0] = v129;
    v113[1] = v130;
    v113[2] = v131;
    v114 = v38;
    v115 = v94;
    v116 = result;
    v117 = v92;
    v118 = v91;
    v119 = v42;
    v120 = v95;
    v121 = v93;
    v122 = v96;
    *&v123[3] = *&v128[3];
    *v123 = *v128;
    v124 = v35;
    v125 = 1;
    sub_21B261664(v113, &qword_27CD7F1B0, &qword_21B356248);

    v78 = *(&v137 + 1);
    *a1 = v137;
    *(a1 + 8) = v78;
    *(a1 + 16) = v28;
    *(a1 + 24) = v40;
    *(a1 + 32) = v39;
    *(a1 + 40) = v41;
    return sub_21B2615FC(&v137, &v112, &qword_27CD7E140, &unk_21B3526A0);
  }

  v79 = a1;
  v151 = v126;
  *v152 = v127[0];
  *&v152[9] = *(v127 + 9);
  v104 = v17;
  sub_21B2615FC(v1, v113, &qword_27CD7E6E0, &qword_21B352300);
  sub_21B2615FC(v1, v113, &qword_27CD7E6E0, &qword_21B352300);
  swift_beginAccess();
  v100 = (v6 + 32);
  v103 = (v6 + 8);
  v85 = v28;
  v86 = v5;
  v87 = (v6 + 48);
  while (1)
  {
    result = sub_21B2B4370(v38);
    v43 = *(v28 + 16);
    if (!v43)
    {
      goto LABEL_47;
    }

    if (v35 == *(v43 + 8))
    {
      v42 = v28;
LABEL_43:
      v40 = v132;
      v39 = v133;
      v41 = v134;
      v28 = v138;
      a1 = v79;
      v38 = v80;
      goto LABEL_44;
    }

    v97 = v38;
    v99 = result;
    v44 = v35;
    v45 = v91;
    v46 = v92;
    v145 = v92;
    v146 = v91;
    v47 = v95;
    v147 = v28;
    v148 = v95;
    v48 = v93;
    v149 = v93;
    v49 = v96;
    v150 = v96;
    v50 = v90;
    sub_21B2AE6A4(v44, v90);
    v139 = v46;
    v140 = v45;
    v51 = v104;
    v141 = v28;
    v142 = v47;
    v52 = v102;
    v143 = v48;
    v144 = v49;
    v53 = v44;
    v54 = v87;
    v98 = sub_21B2B4370(v53);
    v55 = v88;
    v56 = *(v89 + 48);
    v57 = v50;
    v58 = v86;
    sub_21B260BE8(v57, &v88[v56]);
    sub_21B260BE8(&v55[v56], v110);
    v109 = v135;
    if (*(v135 + 16))
    {
      v59 = *(v109 + 40);
      sub_21B34BBC4();
      v60 = v82;
      sub_21B2615FC(v110, v82, &qword_27CD7E100, &unk_21B352A30);
      v61 = *v54;
      if ((*v54)(v60, 1, v111) == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        v62 = v101;
        v63 = v111;
        (*v100)(v101, v60, v111);
        sub_21B34BBE4();
        sub_21B260D68(&qword_27CD7E1E0);
        sub_21B34AAB4();
        v64 = v63;
        v51 = v104;
        (*v103)(v62, v64);
      }

      v65 = sub_21B34BC24();
      v66 = -1 << *(v109 + 32);
      v67 = v65 & ~v66;
      v108 = v109 + 56;
      if ((*(v109 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
      {
        v106 = ~v66;
        v107 = *(v81 + 72);
        while (1)
        {
          sub_21B2615FC(*(v109 + 48) + v107 * v67, v52, &qword_27CD7E100, &unk_21B352A30);
          v68 = *(v105 + 48);
          sub_21B2615FC(v52, v58, &qword_27CD7E100, &unk_21B352A30);
          sub_21B2615FC(v110, v58 + v68, &qword_27CD7E100, &unk_21B352A30);
          if (v61(v58, 1, v111) == 1)
          {
            break;
          }

          sub_21B2615FC(v58, v51, &qword_27CD7E100, &unk_21B352A30);
          if (v61(v58 + v68, 1, v111) == 1)
          {
            sub_21B261664(v52, &qword_27CD7E100, &unk_21B352A30);
            (*v103)(v51, v111);
LABEL_28:
            sub_21B261664(v58, &qword_27CD7E1D8, &qword_21B351B08);
            goto LABEL_29;
          }

          v69 = v101;
          v70 = v111;
          (*v100)(v101, v58 + v68, v111);
          sub_21B260D68(&qword_27CD7E1E8);
          v71 = sub_21B34AC54();
          v72 = *v103;
          v73 = v69;
          v52 = v102;
          (*v103)(v73, v70);
          sub_21B261664(v52, &qword_27CD7E100, &unk_21B352A30);
          v72(v104, v70);
          v51 = v104;
          sub_21B261664(v58, &qword_27CD7E100, &unk_21B352A30);
          if (v71)
          {
            goto LABEL_39;
          }

LABEL_29:
          v67 = (v67 + 1) & v106;
          if (((*(v108 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        sub_21B261664(v52, &qword_27CD7E100, &unk_21B352A30);
        if (v61(v58 + v68, 1, v111) == 1)
        {
          v77 = v58;
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

LABEL_35:
    result = v97;
    v74 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    if (v74 < v97)
    {
      goto LABEL_46;
    }

    sub_21B28DFBC(v97, v74);
    v75 = v84;
    sub_21B2615FC(v110, v84, &qword_27CD7E100, &unk_21B352A30);
    v76 = v83;
    sub_21B255530(v83, v75);
    v77 = v76;
LABEL_38:
    sub_21B261664(v77, &qword_27CD7E100, &unk_21B352A30);
LABEL_39:
    sub_21B261664(v110, &qword_27CD7E100, &unk_21B352A30);
    v35 = v98;
    v38 = v99;
    v28 = v85;
    if (v99 == v94)
    {
      v42 = v85;
      result = v94;
      goto LABEL_43;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_21B2EE75C@<X0>(uint64_t a1@<X8>)
{
  v65 = MEMORY[0x277D84FA0];
  v62 = 0;
  v63 = 0;
  v64 = 2;
  v3 = *(v1 + 16);
  v60 = *v1;
  v61[0] = v3;
  *(v61 + 9) = *(v1 + 25);
  v66 = v60;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v5;
  v7 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v7 == 1 && *(v5 + 16))
    {
      v8 = (v5 + 32);
    }

    else
    {
      swift_beginAccess();
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_49;
      }

      v8 = (v9 + 8);
    }

    v6 = *v8;
  }

  v42 = v6;
  v67 = v66;
  v68 = v4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (!v10)
  {
    goto LABEL_48;
  }

  v11 = *v1;
  v44 = *v1;
  v45 = *(v10 + 8);
  v43 = *(v1 + 8);
  v12 = v5;
  v46 = *(v1 + 32);
  if (v7)
  {
    if (v7 == 1 && *(v5 + 16))
    {
      v13 = (v5 + 32);
    }

    else
    {
      swift_beginAccess();
      v14 = *(v4 + 16);
      if (!v14)
      {
        goto LABEL_50;
      }

      v13 = (v14 + 8);
    }

    v12 = *v13;
  }

  v41 = a1;
  sub_21B2615FC(v1, v48, &qword_27CD7E6D8, &qword_21B3522F8);
  sub_21B2615FC(v1, v48, &qword_27CD7E6D8, &qword_21B3522F8);
  v15 = v42;
  if (v42 == v45)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v19 = 2;
    v20 = v42;
LABEL_42:
    v48[0] = v60;
    v48[1] = v61[0];
    v48[2] = v61[1];
    v49 = v15;
    v50 = v45;
    v51 = v20;
    v52 = v44;
    v53 = v43;
    v54 = v4;
    v55 = v5;
    v56 = v46;
    v57 = v7;
    v58 = v12;
    v59 = v18;
    sub_21B261664(v48, &qword_27CD7F1B8, &unk_21B356250);

    v38 = *(&v67 + 1);
    *v41 = v67;
    *(v41 + 8) = v38;
    *(v41 + 16) = v4;
    *(v41 + 24) = v17;
    *(v41 + 32) = v16;
    *(v41 + 40) = v19;
    return sub_21B2615FC(&v67, v47, &qword_27CD7E148, &unk_21B352A20);
  }

  v21 = v42;
  while (1)
  {
    v75 = v60;
    v76[0] = v61[0];
    *(v76 + 9) = *(v61 + 9);
    v20 = sub_21B2B4370(v21);
    swift_beginAccess();
    v24 = *(v4 + 16);
    if (!v24)
    {
      goto LABEL_46;
    }

    if (v12 == *(v24 + 8))
    {
      v18 = 1;
LABEL_41:
      v17 = v62;
      v16 = v63;
      v19 = v64;
      v15 = v42;
      goto LABEL_42;
    }

    if ((sub_21B2D3BE8(v12, v5, v46, v7) & 1) == 0)
    {
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      sub_21B34B634();

      *&v48[0] = 0x6E6F697469736F70;
      *(&v48[0] + 1) = 0xE900000000000020;
      v47[0] = v12;
      v40 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v40);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_53;
    }

    if (v12 < 0)
    {
      goto LABEL_53;
    }

    v25 = *(v4 + 16);
    if (!v25)
    {
      goto LABEL_47;
    }

    if (v12 >= v25[1])
    {
      goto LABEL_53;
    }

    v26 = v25 + 8;
    if (((*(v25 + (v12 >> 3) + 64) >> (v12 & 7)) & 1) == 0)
    {
      v35 = 0;
      v36 = 0xF000000000000000;
      goto LABEL_33;
    }

    v27 = *v25;
    v28 = __OFADD__(v27, 7);
    v29 = v27 + 7;
    if (v28)
    {
      break;
    }

    v30 = v29 / 8;
    v32 = v30 - 1;
    v31 = v30 < 1;
    v33 = v30 + 62;
    if (!v31)
    {
      v33 = v32;
    }

    v34 = &v26[2 * v12] + (v33 & 0xFFFFFFFFFFFFFFC0);
    v35 = *(v34 + 64);
    v36 = *(v34 + 72);
    sub_21B260DC0(v35, v36);
LABEL_33:
    v69 = v44;
    v70 = v43;
    v71 = v4;
    v72 = v5;
    v73 = v46;
    v74 = v7;
    v12 = sub_21B2B4370(v12);
    if (v36 >> 60 == 11)
    {
      v18 = 0;
      goto LABEL_41;
    }

    if (sub_21B241ACC(v35, v36, v65))
    {
      v22 = v35;
      v23 = v36;
    }

    else
    {
      v37 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_44;
      }

      if (v37 < v21)
      {
        goto LABEL_45;
      }

      sub_21B28DFBC(v21, v37);
      sub_21B254968(v48, v35, v36);
      v23 = *(&v48[0] + 1);
      v22 = *&v48[0];
    }

    sub_21B260C58(v22, v23);
    v21 = v20;
    if (v20 == v45)
    {
      v18 = 1;
      v20 = v45;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
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
LABEL_53:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2EEC78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 16);

  return v7(v2, v3, v4, v6);
}

uint64_t AnyColumnSlice.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5);
}

uint64_t (*AnyColumnSlice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *a1 = (*(*(v4 + 8) + 8))(v3);
  a1[1] = v5;
  return sub_21B2EEDE0;
}

uint64_t sub_21B2EEDE0(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v6);
  v8 = *(v7 + 8);
  v9 = *(v8 + 16);
  if ((a2 & 1) == 0)
  {
    return v9(v5, v4, v6, v8);
  }

  v9(v5, v4, v6, v8);
}

uint64_t AnyColumnSlice.count.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 48))(v2);
}

Swift::Bool __swiftcall AnyColumnSlice.isNil(at:)(Swift::Int at)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 96))(at, v3) & 1;
}

uint64_t AnyColumnSlice.hashValue.getter()
{
  sub_21B34BBC4();
  AnyColumnSlice.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t sub_21B2EEFA4()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_21B2EEFF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5);
}

uint64_t (*sub_21B2EF05C(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *a1 = (*(*(v4 + 8) + 8))(v3);
  a1[1] = v5;
  return sub_21B2EEDE0;
}

uint64_t sub_21B2EF0D8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 80))(v2);
}

uint64_t sub_21B2EF124(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 128))(a1, v3);
}

uint64_t AnyColumnSlice.subscript.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 128))(a1, v3);
}

uint64_t sub_21B2EF1FC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 144))(a1, a2, v5);
}

uint64_t AnyColumnSlice.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 144))(a1, a2, v5);
}

uint64_t sub_21B2EF2E4()
{
  sub_21B34BBC4();
  AnyColumnSlice.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumnSlice.hash(into:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(*(v3 + 8) + 8))(v4);
  sub_21B34AD94();

  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 48))(v6);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_11:
    sub_21B2F1184(a1, v8);
  }

  v9 = v7;
  v29 = MEMORY[0x277D84F90];
  sub_21B253FF4(0, v7 & ~(v7 >> 63), 0);
  v8 = v29;
  v11 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  result = (*(*(v10 + 8) + 32))(v11);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v13 = result;
    do
    {
      v15 = v1[3];
      v14 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v15);
      (*(*(v14 + 8) + 128))(&v24, v13, v15);
      v23[0] = v24;
      v23[1] = v25;
      if (*(&v25 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v28 = 0;
          v26 = 0u;
          v27 = 0u;
        }
      }

      else
      {
        sub_21B261664(v23, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v29 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21B253FF4((v16 > 1), v17 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 40 * v17;
      v19 = v26;
      v20 = v27;
      *(v18 + 64) = v28;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      v22 = v1[3];
      v21 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v22);
      v13 = (*(*(v21 + 8) + 64))(v13, v22);
      --v9;
    }

    while (v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2EF5B4()
{
  sub_21B34BBC4();
  AnyColumnSlice.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumnSlice.startIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 32))(v2);
}

uint64_t AnyColumnSlice.endIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 40))(v2);
}

Swift::Int __swiftcall AnyColumnSlice.index(after:)(Swift::Int after)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 64))(after, v3);
}

Swift::Int __swiftcall AnyColumnSlice.index(before:)(Swift::Int before)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 72))(before, v3);
}

uint64_t sub_21B2EF748(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  sub_21B2615FC(a1, v8, &qword_27CD7E0F8, &unk_21B3557C0);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  (*(*(v6 + 8) + 136))(v4, v8, v5);
  return sub_21B261664(v8, &qword_27CD7E0F8, &unk_21B3557C0);
}

uint64_t AnyColumnSlice.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v6 + 8) + 136))(a2, a1, v5);
  return sub_21B261664(a1, &qword_27CD7E0F8, &unk_21B3557C0);
}

void (*AnyColumnSlice.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  *a1 = v6;
  *(v6 + 64) = a2;
  *(v6 + 72) = v3;
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 128))(a2, v7);
  return sub_21B2EF930;
}

void sub_21B2EF930(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    sub_21B2615FC(*a1, (v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v5);
    (*(*(v6 + 8) + 136))(v4, v2 + 4, v5);
    sub_21B261664((v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
  }

  else
  {
    v8 = v2[8];
    v7 = v2[9];
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    (*(*(v10 + 8) + 136))(v8, v2, v9);
  }

  sub_21B261664(v2, &qword_27CD7E0F8, &unk_21B3557C0);

  free(v2);
}

uint64_t sub_21B2EFA48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_21B25EFA4(a1, v9);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v6);
  (*(*(v7 + 8) + 152))(v4, v5, v9, v6);
  return sub_21B25F000(v9);
}

uint64_t AnyColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 152))(a2, a3, a1, v7);

  return sub_21B25F000(a1);
}

void (*AnyColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  *a1 = v8;
  v8[11] = a3;
  v8[12] = v4;
  v8[10] = a2;
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(*(v10 + 8) + 144))(a2, a3, v9);
  return sub_21B2EFC2C;
}

void sub_21B2EFC2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[11];
    v3 = v2[12];
    v5 = v2[10];
    sub_21B25EFA4(*a1, (v2 + 5));
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v6);
    (*(*(v7 + 8) + 152))(v5, v4, v2 + 5, v6);
    sub_21B25F000((v2 + 5));
  }

  else
  {
    v9 = v2[11];
    v8 = v2[12];
    v10 = v2[10];
    v11 = *(v8 + 24);
    v12 = *(v8 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v8, v11);
    (*(*(v12 + 8) + 152))(v10, v9, v2, v11);
  }

  sub_21B25F000(v2);

  free(v2);
}

uint64_t sub_21B2EFD1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v6 + 8) + 136))(v4, a1, v5);
  return sub_21B261664(a1, &qword_27CD7E0F8, &unk_21B3557C0);
}

void (*sub_21B2EFDA0(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *(v5 + 64) = v2;
  *(v5 + 72) = v6;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  (*(*(v8 + 8) + 128))(v6, v7);
  return sub_21B2EFE58;
}

void sub_21B2EFE58(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    sub_21B2615FC(*a1, (v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    (*(*(v6 + 8) + 136))(v3, v2 + 4, v5);
    sub_21B261664((v2 + 4), &qword_27CD7E0F8, &unk_21B3557C0);
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v9);
    (*(*(v10 + 8) + 136))(v8, v2, v9);
  }

  sub_21B261664(v2, &qword_27CD7E0F8, &unk_21B3557C0);

  free(v2);
}

uint64_t sub_21B2EFF74(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v6);
  (*(*(v7 + 8) + 152))(v4, v5, a1, v6);

  return sub_21B25F000(a1);
}

void (*sub_21B2EFFF8(void *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  *a1 = v5;
  v7 = *a2;
  v6 = a2[1];
  v5[10] = v2;
  v5[11] = v7;
  v5[12] = v6;
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  (*(*(v9 + 8) + 144))(v7, v6, v8);
  return sub_21B2F00C0;
}

void sub_21B2F00C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = v2[10];
    sub_21B25EFA4(*a1, (v2 + 5));
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    (*(*(v7 + 8) + 152))(v4, v3, v2 + 5, v6);
    sub_21B25F000((v2 + 5));
  }

  else
  {
    v8 = v2[10];
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    (*(*(v10 + 8) + 152))(v4, v3, v2, v9);
  }

  sub_21B25F000(v2);

  free(v2);
}

uint64_t sub_21B2F01B4@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B338334(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21B2F01EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v6 + 8) + 72))(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_21B2F0258(uint64_t *a1)
{
  v3 = *a1;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  result = (*(*(v5 + 8) + 72))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_21B2F02C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v4 + 8) + 32))(v5);
  *a1 = result;
  return result;
}

uint64_t sub_21B2F0320@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v4 + 8) + 40))(v5);
  *a1 = result;
  return result;
}

uint64_t (*sub_21B2F037C(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(*(v5 + 8) + 128))(v3, v4);
  return sub_21B2F0404;
}

uint64_t sub_21B2F042C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  return (*(*(v5 + 8) + 144))(v2, v3, v4);
}

uint64_t sub_21B2F049C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v6 = (*(*(v4 + 8) + 32))(v5);
  v8 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  result = (*(*(v7 + 8) + 40))(v8);
  if (result < v6)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    a1[1] = result;
  }

  return result;
}

BOOL sub_21B2F0544()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = (*(*(v2 + 8) + 32))(v3);
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  return v4 == (*(*(v5 + 8) + 40))(v6);
}

void *sub_21B2F05D8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = v3;
    v8 = v3[3];
    v7 = v3[4];
    __swift_project_boxed_opaque_existential_1(v6, v8);
    v9 = (*(*(v7 + 8) + 32))(v8);
    v11 = v6[3];
    v10 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v11);
    result = (*(*(v10 + 8) + 40))(v11);
    if (v5 >= v9 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_21B2F0694(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B2F06B0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B2F06CC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2F06E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  result = (*(*(v6 + 8) + 64))(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_21B2F0754(uint64_t *a1)
{
  v3 = *a1;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  result = (*(*(v5 + 8) + 64))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_21B2F07C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_21B25EFA4(v1, a1);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v6 = (*(*(v4 + 8) + 32))(v5);
  result = sub_21B25F000(v2);
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_21B2F0838()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 48))(v2);
}

void *sub_21B2F0884()
{
  v1 = sub_21B263DC8(v0);
  sub_21B25F000(v0);
  return v1;
}

uint64_t _s11TabularData9AnyColumnV11descriptionSSvg_0()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 168))(v2);
}

uint64_t AnyColumnSlice.customMirror.getter()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 176))(v3);
}

uint64_t sub_21B2F0968()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 176))(v3);
}

uint64_t AnyColumnSlice.distinct()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v4 + 8) + 80))(v5);
  if (swift_dynamicCastMetatype())
  {
    sub_21B26DF44(v17);
    v6 = &qword_27CD7E710;
    v7 = &qword_21B352330;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
    a1[4] = &off_282CAB618;
    v8 = swift_allocObject();
    *a1 = v8;
    sub_21B2EC0DC(v8 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E1B8(v17);
    v6 = &qword_27CD7E708;
    v7 = &qword_21B352328;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E708, &qword_21B352328);
    a1[4] = &off_282CAB618;
    v9 = swift_allocObject();
    *a1 = v9;
    sub_21B2EC584(v9 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E434(v17);
    v6 = &qword_27CD7E700;
    v7 = &qword_21B352320;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E700, &qword_21B352320);
    a1[4] = &off_282CAB618;
    v10 = swift_allocObject();
    *a1 = v10;
    sub_21B2ECA28(v10 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E6AC(v17);
    v6 = &qword_27CD7E6F8;
    v7 = &qword_21B352318;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
    a1[4] = &off_282CAB618;
    v11 = swift_allocObject();
    *a1 = v11;
    sub_21B2ECEDC(v11 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E924(v17);
    v6 = &qword_27CD7E6F0;
    v7 = &qword_21B352310;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F0, &qword_21B352310);
    a1[4] = &off_282CAB618;
    v12 = swift_allocObject();
    *a1 = v12;
    sub_21B2ED390(v12 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26EB98(v17);
    v6 = &qword_27CD7E6E8;
    v7 = &qword_21B352308;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E8, &qword_21B352308);
    a1[4] = &off_282CAB618;
    v13 = swift_allocObject();
    *a1 = v13;
    sub_21B2ED83C(v13 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    sub_21B26EE10(v17);
    v6 = &qword_27CD7E6E0;
    v7 = &qword_21B352300;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E0, &qword_21B352300);
    a1[4] = &off_282CAB618;
    v14 = swift_allocObject();
    *a1 = v14;
    sub_21B2EDCE0(v14 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26F088(v17);
    v6 = &qword_27CD7E6D8;
    v7 = &qword_21B3522F8;
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6D8, &qword_21B3522F8);
    a1[4] = &off_282CAB618;
    v15 = swift_allocObject();
    *a1 = v15;
    sub_21B2EE75C(v15 + 16);
    return sub_21B261664(v17, v6, v7);
  }

  return sub_21B2F0DDC();
}

uint64_t sub_21B2F0DDC()
{
  v1 = v0;
  v32 = MEMORY[0x277D84FA0];
  v29 = 0;
  v30 = 0;
  v31 = 2;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = (*(*(v2 + 8) + 32))(v3);
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 40))(v6);
  if (v7 < v4)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_21B34B634();

    *&v26 = 0xD00000000000002ALL;
    *(&v26 + 1) = 0x800000021B34D600;
    v19 = v1[3];
    v18 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v19);
    (*(*(v18 + 8) + 80))(v19);
    v20 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v20);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v8 = v7;
  if (v4 != v7)
  {
    while (v4 < v8)
    {
      v12 = v1[3];
      v13 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v12);
      (*(*(v13 + 8) + 128))(&v26, v4, v12);
      if (*(&v27 + 1))
      {
        sub_21B261720(&v26, v22);
        sub_21B2616C4(v22, v21);
        if (!swift_dynamicCast())
        {
          goto LABEL_17;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v26 = v23;
        v27 = v24;
        v28 = v25;
      }

      else
      {
        sub_21B261664(&v26, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v14 = v4 + 1;
      if ((sub_21B24185C(&v26, v32) & 1) == 0)
      {
        sub_21B2615FC(&v26, v22, &qword_27CD7E200, &unk_21B352050);
        sub_21B254668(&v23, v22);
        sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
        sub_21B28DFBC(v4, v4 + 1);
      }

      sub_21B261664(&v26, &qword_27CD7E200, &unk_21B352050);
      ++v4;
      if (v8 == v14)
      {
        v10 = v29;
        v9 = v30;
        v11 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 0;
  v11 = 2;
LABEL_14:

  v15 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v15);
  (*(*(v16 + 8) + 160))(v10, v9, v11, v15);
  return sub_21B23A9F4(v10, v9, v11);
}

uint64_t sub_21B2F1184(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CEEE3B0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_21B2615FC(v5, &v8, &qword_27CD7E200, &unk_21B352050);
      if (*(&v9 + 1))
      {
        v6[0] = v8;
        v6[1] = v9;
        v7 = v10;
        sub_21B34BBE4();
        sub_21B34B5C4();
        result = sub_21B260E14(v6);
      }

      else
      {
        result = sub_21B34BBE4();
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s11TabularData14AnyColumnSliceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v6 = (*(*(v4 + 8) + 8))(v5);
  v8 = v7;
  v10 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  if (v6 == (*(*(v9 + 8) + 8))(v10) && v8 == v11)
  {
  }

  else
  {
    v13 = sub_21B34B9F4();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = (*(*(v15 + 8) + 48))(v16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v17;
    v57 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v17 & ~(v17 >> 63), 0);
    v18 = v57;
    v21 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    result = (*(*(v20 + 8) + 32))(v21);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v23 = result;
    do
    {
      v25 = a1[3];
      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v25);
      (*(*(v24 + 8) + 128))(&v52, v23, v25);
      v50 = v52;
      v51 = v53;
      if (*(&v53 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v50, &qword_27CD7E0F8, &unk_21B3557C0);
        v54 = 0u;
        v55 = 0u;
        v56 = 0;
      }

      v57 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21B253FF4((v26 > 1), v27 + 1, 1);
        v18 = v57;
      }

      *(v18 + 16) = v27 + 1;
      v28 = v18 + 40 * v27;
      v29 = v54;
      v30 = v55;
      *(v28 + 64) = v56;
      *(v28 + 32) = v29;
      *(v28 + 48) = v30;
      v32 = a1[3];
      v31 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v32);
      v23 = (*(*(v31 + 8) + 64))(v23, v32);
      --v19;
    }

    while (v19);
  }

  v34 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v34);
  v35 = (*(*(v33 + 8) + 48))(v34);
  v36 = MEMORY[0x277D84F90];
  if (!v35)
  {
LABEL_28:
    v14 = sub_21B2470A0(v18, v36);

    return v14 & 1;
  }

  v37 = v35;
  v57 = MEMORY[0x277D84F90];
  sub_21B253FF4(0, v35 & ~(v35 >> 63), 0);
  v36 = v57;
  v39 = a2[3];
  v38 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v39);
  result = (*(*(v38 + 8) + 32))(v39);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v40 = result;
    do
    {
      v42 = a2[3];
      v41 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v42);
      (*(*(v41 + 8) + 128))(&v52, v40, v42);
      v50 = v52;
      v51 = v53;
      if (*(&v53 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v50, &qword_27CD7E0F8, &unk_21B3557C0);
        v54 = 0u;
        v55 = 0u;
        v56 = 0;
      }

      v57 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_21B253FF4((v43 > 1), v44 + 1, 1);
        v36 = v57;
      }

      *(v36 + 16) = v44 + 1;
      v45 = v36 + 40 * v44;
      v46 = v54;
      v47 = v55;
      *(v45 + 64) = v56;
      *(v45 + 32) = v46;
      *(v45 + 48) = v47;
      v49 = a2[3];
      v48 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v49);
      v40 = (*(*(v48 + 8) + 64))(v40, v49);
      --v37;
    }

    while (v37);
    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_21B23A9F4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_21B2F177C()
{
  result = qword_27CD7F140;
  if (!qword_27CD7F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F140);
  }

  return result;
}

unint64_t sub_21B2F17D0()
{
  result = qword_27CD7F148;
  if (!qword_27CD7F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F148);
  }

  return result;
}

unint64_t sub_21B2F1828()
{
  result = qword_27CD7F150;
  if (!qword_27CD7F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F150);
  }

  return result;
}

unint64_t sub_21B2F187C()
{
  result = qword_27CD7F158;
  if (!qword_27CD7F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F158);
  }

  return result;
}

unint64_t sub_21B2F18D4()
{
  result = qword_27CD7F160;
  if (!qword_27CD7F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F160);
  }

  return result;
}

unint64_t sub_21B2F192C()
{
  result = qword_27CD7F168;
  if (!qword_27CD7F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F168);
  }

  return result;
}

unint64_t sub_21B2F1984()
{
  result = qword_27CD7F170;
  if (!qword_27CD7F170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E540, &unk_21B352040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F170);
  }

  return result;
}

double DataFrame.explodeColumn<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v3[1];
  v7 = v3[2];
  v10[2] = *v3;
  v10[3] = v6;
  v10[4] = v7;
  v10[0] = v4;
  v10[1] = v5;
  DataFrame.explodingColumn<A>(_:)(v10, a2, a3, &v11);

  v8 = v12;
  result = *&v11;
  *v3 = v11;
  v3[2] = v8;
  return result;
}

uint64_t DataFrame.explodingColumn<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v91 = a4;
  v104 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v130 = *(AssociatedTypeWitness - 8);
  v8 = *(v130 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v116 = &v89 - v9;
  v10 = sub_21B34B474();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = &v89 - v12;
  v96 = v7;
  v125 = swift_getAssociatedTypeWitness();
  v129 = *(v125 - 8);
  v13 = *(v129 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v89 - v14;
  v15 = sub_21B34B474();
  v128 = *(v15 - 8);
  v16 = *(v128 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v89 - v18;
  v127 = *(a2 - 8);
  v19 = v127[8];
  v20 = MEMORY[0x28223BE20](v17);
  v95 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v97 = &v89 - v22;
  v99 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = sub_21B34B474();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v111 = &v89 - v26;
  v27 = *a1;
  v28 = a1[1];
  v30 = v4[1];
  v31 = v4[2];
  *&v133 = *v4;
  v29 = v133;
  *(&v133 + 1) = v30;
  *&v134 = v31;
  v90 = sub_21B23AC94(v27, v28);
  *&v133 = v29;
  *(&v133 + 1) = v30;
  *&v134 = v31;
  *&v136 = v27;
  *(&v136 + 1) = v28;

  DataFrame.subscript.getter(&v136);

  v33 = *(&v131 + 1);
  v32 = v131;
  v133 = v131;
  v92 = *&v132[0];
  *&v134 = *&v132[0];
  v112 = type metadata accessor for Column();
  v34 = Column.count.getter(v112);

  Column.init(name:capacity:)(v32, v33, v34, AssociatedTypeWitness, &v144);
  v141 = v29;
  v142 = v30;
  v143 = v31;
  *&v131 = v27;
  *(&v131 + 1) = v28;

  DataFrame.removeColumn<A>(_:)(&v131);

  *&v139 = MEMORY[0x277D84F90];
  *(&v139 + 1) = MEMORY[0x277D84F90];
  v140 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v35 = *(v29 + 16);
  v114 = a2;
  v100 = v33;
  if (v35)
  {
    v36 = v29 + 32;
    do
    {
      sub_21B233A74(v36, &v133);
      v38 = *(&v134 + 1);
      v37 = *&v135[0];
      __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
      if ((*(*(v37 + 8) + 8))(v38) == v32 && v39 == v33)
      {
      }

      else
      {
        v41 = sub_21B34B9F4();

        if ((v41 & 1) == 0)
        {
          v43 = *(&v134 + 1);
          v42 = *&v135[0];
          __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
          (*(*(v42 + 8) + 88))(&v131, v43);
          v44 = *(&v132[0] + 1);
          v45 = *&v132[1];
          __swift_project_boxed_opaque_existential_1(&v131, *(&v132[0] + 1));
          v47 = *(&v134 + 1);
          v46 = *&v135[0];
          __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
          v48 = (*(*(v46 + 8) + 48))(v47);
          v49 = *(v45 + 32);
          v50 = v45;
          v33 = v100;
          v49(&v136, v48, v44, v50);
          DataFrame.append(column:)(&v136);
          sub_21B233960(&v136);
          sub_21B233960(&v133);
          __swift_destroy_boxed_opaque_existential_1Tm(&v131);
          goto LABEL_5;
        }
      }

      sub_21B233960(&v133);
LABEL_5:
      v36 += 40;
      --v35;
    }

    while (v35);
  }

  *&v133 = v32;
  *(&v133 + 1) = v33;
  v51 = v92;
  *&v134 = v92;
  v52 = v112;
  swift_getWitnessTable();
  sub_21B34B194();
  v132[3] = v132[4];
  *&v136 = v32;
  *(&v136 + 1) = v33;
  v137 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v54 = sub_21B2A85CC();
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v136 = v131;
  v137 = *&v132[0];
  v138 = *(v132 + 8);
  v109 = v54;
  v110 = v53;
  *&v133 = v53;
  *(&v133 + 1) = v52;
  *&v134 = v54;
  *(&v134 + 1) = WitnessTable;
  v108 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v106 = (v128 + 32);
  v107 = TupleTypeMetadata2 - 8;
  v105 = (v127 + 6);
  v103 = (v127 + 4);
  v94 = (v127 + 2);
  v123 = (v130 + 48);
  v120 = (v130 + 32);
  v118 = (v130 + 8);
  v93 = (v129 + 8);
  v101 = (v127 + 1);
  v102 = (v128 + 8);
  v57 = v116;
  v56 = AssociatedTypeWitness;
  v58 = v115;
  v60 = v98;
  v59 = v99;
  v61 = v97;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        *&v131 = v110;
        *(&v131 + 1) = v112;
        *&v132[0] = v109;
        *(&v132[0] + 1) = v108;
        v62 = sub_21B34B664();
        v63 = v111;
        sub_21B34B654();
        v64 = TupleTypeMetadata2;
        if ((*(*(TupleTypeMetadata2 - 8) + 48))(v63, 1, TupleTypeMetadata2) == 1)
        {
          v131 = v133;
          v132[0] = v134;
          v132[1] = v135[0];
          *(&v132[1] + 9) = *(v135 + 9);
          (*(*(v62 - 8) + 8))(&v131, v62);

          v136 = v144;
          v137 = v145;

          DataFrame.insert<A>(column:at:)(&v136, v90);

          v85 = v140;
          v86 = v91;
          *v91 = v139;
          *(v86 + 2) = v85;
          return result;
        }

        v130 = *v63;
        (*v106)(v60, &v63[*(v64 + 48)], v59);
        v65 = v114;
        if ((*v105)(v60, 1, v114) != 1)
        {
          break;
        }

        (*v102)(v60, v59);
      }

      (*v103)(v61, v60, v65);
      if ((sub_21B34B214() & 1) == 0)
      {
        break;
      }

      (*v101)(v61, v65);
    }

    (*v94)(v95, v61, v65);
    sub_21B34AEC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_21B34B4D4();
    v121 = *v123;
    if (v121(v58, 1, v56) != 1)
    {
      break;
    }

LABEL_19:
    (*v93)(v124, v125);
    v61 = v97;
    (*v101)(v97, v114);
    v60 = v98;
    v59 = v99;
  }

  v119 = *v120;
  v119(v57, v58, v56);
  while (1)
  {
    v67 = v141;
    v68 = *(v141 + 16);
    v128 = v143;
    v129 = v142;
    if (v68)
    {
      sub_21B233A74(v141 + 32, &v131);
      v70 = *(&v132[0] + 1);
      v69 = *&v132[1];
      v71 = __swift_project_boxed_opaque_existential_1(&v131, *(&v132[0] + 1));
      v72 = *(v69 + 8);
      v126 = *(v72 + 48);
      v127 = v71;

      v73 = v126(v70, v72);
      sub_21B233960(&v131);
      if (v73 < 0)
      {
        goto LABEL_41;
      }

      if (v73)
      {
        v74 = 0;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v73 = 0;
    v74 = 2;
LABEL_30:
    sub_21B23A9F4(0, v73, v74);
    v75 = *(v67 + 16);
    v70 = v139;
    if (v75 != *(v139 + 16))
    {
      goto LABEL_43;
    }

    if (v75)
    {
      break;
    }

LABEL_22:
    v66 = type metadata accessor for Column();
    Column.append(_:)(v57, v66);
    (*v118)(v57, v56);
    sub_21B34B4D4();
    if (v121(v58, 1, v56) == 1)
    {
      goto LABEL_19;
    }

    v119(v57, v58, v56);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v70 = sub_21B23A2F4(v70);
  }

  if (v75 <= *(v67 + 16))
  {
    v76 = 0;
    v77 = 0;
    while (1)
    {
      sub_21B233A74(v67 + v76 + 32, &v131);
      if (v77 >= *(v70 + 2))
      {
        break;
      }

      ++v77;
      v78 = *(&v132[0] + 1);
      v79 = *&v132[1];
      v80 = __swift_project_boxed_opaque_existential_1(&v131, *(&v132[0] + 1));
      *&v138 = v78;
      *(&v138 + 1) = *(v79 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
      (*(*(v78 - 8) + 16))(boxed_opaque_existential_1, v80, v78);
      v83 = *&v70[v76 + 56];
      v82 = *&v70[v76 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v70[v76 + 32], v83);
      (*(v82 + 56))(v130, &v136, v83, v82);
      __swift_destroy_boxed_opaque_existential_1Tm(&v136);
      sub_21B233960(&v131);
      *&v139 = v70;
      v76 += 40;
      if (v75 == v77)
      {

        v57 = v116;
        v56 = AssociatedTypeWitness;
        v58 = v115;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  *&v131 = 0;
  *(&v131 + 1) = 0xE000000000000000;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
  *&v136 = *(v67 + 16);
  v87 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v87);

  MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
  *&v136 = *(v70 + 2);
  v88 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v88);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

double DataFrame.explodeColumn<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5[1];
  v9 = v5[2];
  v13[2] = *v5;
  v13[3] = v8;
  v13[4] = v9;
  ColumnID.init(_:_:)(a1, a2, v13);
  v12[0] = v13[0];
  v12[1] = v13[1];

  DataFrame.explodingColumn<A>(_:)(v12, a4, a5, &v14);

  v10 = v15;
  result = *&v14;
  *v5 = v14;
  v5[2] = v10;
  return result;
}

uint64_t DataFrame.explodingColumn<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *(v5 + 2);
  v13 = *v5;
  v14 = v9;
  ColumnID.init(_:_:)(a1, a2, v12);
  v11[0] = v12[0];
  v11[1] = v12[1];

  DataFrame.explodingColumn<A>(_:)(v11, a3, a4, a5);
}

uint64_t Order.areOrdered<A>(_:_:)()
{
  if (*v0)
  {
    v1 = sub_21B34AB84();
  }

  else
  {
    v1 = sub_21B34AB94();
  }

  return v1 & 1;
}

TabularData::DataFrame __swiftcall RowGroupingProtocol.counts()()
{
  v4 = 2;
  v1 = (*(v0 + 32))(&v4);
  result.columnIndicesByName._rawValue = v3;
  result.aliases._rawValue = v2;
  result.columns._rawValue = v1;
  return result;
}

uint64_t RowGroupingProtocol.sums<A>(_:_:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v19 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B351EA0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a9;
  v16 = *(a6 + 40);

  v16(v28, v15, sub_21B2F2C0C, 0, sub_21B2F2CD8, v21, a5, a5, a4, a6);

  v27[2] = v28[0];
  v27[3] = v28[1];
  v27[4] = v28[2];
  v27[0] = 678262131;
  v27[1] = 0xE400000000000000;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v17 = v27[0];
  LOBYTE(v27[0]) = v19;
  sub_21B2F2D44(v17, v27, a8);
}

uint64_t sub_21B2F2C1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = *(a1 + 3);
  v12 = *(a1 + 40);
  v7 = type metadata accessor for DiscontiguousColumnSlice();
  DiscontiguousColumnSlice<A>.sum()(v7, a3);
  return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
}

uint64_t sub_21B2F2CD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[6];
  return sub_21B2F2C1C(a1, v2[3], v2[5], a2);
}

uint64_t sub_21B2F2D44@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X3>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = v3[1];
  v6 = v3[2];
  if (v4 == 2)
  {
    *a3 = *v3;
    a3[1] = v5;
    a3[2] = v6;
  }

  else
  {
    v19 = *v3;
    v20 = v5;
    v21 = v6;
    if (v4)
    {
      v8 = MEMORY[0x28223BE20](a1);
      v16 = v10;
      v17 = v12;
      v18 = v10;
      v13 = sub_21B2F3D68;
    }

    else
    {
      v8 = MEMORY[0x28223BE20](a1);
      v16 = v10;
      v17 = v14;
      v18 = v10;
      v13 = sub_21B2F3D9C;
    }

    return DataFrameProtocol.sorted<A>(on:_:by:)(v8, v9, v13, &v15, &type metadata for DataFrame, v10, &protocol witness table for DataFrame, v11);
  }
}

uint64_t RowGroupingProtocol.sums<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v11 = *a2;
  return RowGroupingProtocol.sums<A>(_:_:order:)(v8, v9, &v11, a3, a4, a5, a6, a8, a7);
}

uint64_t RowGroupingProtocol.means<A>(_:_:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v19 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B351EA0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v15 = *(a6 + 40);

  v15(v27, v14, sub_21B2F3080, 0, sub_21B2F3094, v21, a5, a5, a4, a6);

  v26[2] = v27[0];
  v26[3] = v27[1];
  v26[4] = v27[2];
  v26[0] = 0x286E61656DLL;
  v26[1] = 0xE500000000000000;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v16 = v26[0];
  LOBYTE(v26[0]) = v19;
  v17 = *(*(a7 + 24) + 8);
  sub_21B2F2D44(v16, v26, a8);
}

uint64_t RowGroupingProtocol.means<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  return RowGroupingProtocol.means<A>(_:_:order:)(v7, v8, &v10, a3, a4, a5, a6, a7);
}

uint64_t RowGroupingProtocol.quantiles<A>(_:_:quantile:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v20 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B351EA0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a9;
  v27 = a3;
  v16 = *(a7 + 40);

  v16(v29, v15, sub_21B2F32CC, 0, sub_21B2F33B0, v22, a6, a6, a5, a7);

  v28[2] = v29[0];
  v28[3] = v29[1];
  v28[4] = v29[2];
  v28[0] = 0x656C69746E617571;
  v28[1] = 0xE900000000000028;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v17 = v28[0];
  LOBYTE(v28[0]) = v20;
  v18 = *(*(*(a9 + 16) + 24) + 8);
  sub_21B2F2D44(v17, v28, a8);
}

uint64_t sub_21B2F32E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = *(a1 + 3);
  v14 = *(a1 + 40);
  v9 = type metadata accessor for DiscontiguousColumnSlice();
  sub_21B30FED4(a2, v9, a4);
  return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
}

uint64_t sub_21B2F33B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_21B2F32E8(a1, v2[6], v2[3], v2[5], a2);
}

uint64_t RowGroupingProtocol.quantiles<A>(_:quantile:order:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = *a3;
  return RowGroupingProtocol.quantiles<A>(_:_:quantile:order:)(v12, v11, a2, &v14, a4, a5, a6, a8, a7);
}

uint64_t RowGroupingProtocol.minimums<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  return RowGroupingProtocol.minimums<A>(_:_:order:)(v7, v8, &v10, a3, a4, a5, a6, a7);
}

uint64_t sub_21B2F3554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21B351EA0;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v18 = *(a6 + 40);

  v18(v29, v17, a9, 0, a10, v23, a5, a5, a4, a6);

  v28[2] = v29[0];
  v28[3] = v29[1];
  v28[4] = v29[2];
  v28[0] = a11;
  v28[1] = 0xE400000000000000;
  MEMORY[0x21CEED5E0](a1, a2);
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  v19 = v28[0];
  LOBYTE(v28[0]) = v21;
  sub_21B2F2D44(v19, v28, a8);
}

uint64_t sub_21B2F36F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21CEED5E0]();
  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return a3;
}

uint64_t sub_21B2F3738(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 3);
  v13 = *(a1 + 40);
  v8 = type metadata accessor for DiscontiguousColumnSlice();
  return a6(v8, a5);
}

uint64_t RowGroupingProtocol.maximums<A>(_:order:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  return RowGroupingProtocol.maximums<A>(_:_:order:)(v7, v8, &v10, a3, a4, a5, a6, a7);
}

uint64_t RowGroupingProtocol.aggregated<A, B>(on:into:transform:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a1;
  v15 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21B351EA0;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  v29 = a2;
  v30 = a3;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a4;
  v27 = a5;
  v17 = *(a9 + 40);

  v17(v16, sub_21B2F39F4, v28, sub_21B2F3AFC, v21, a7, a8, a6, a9);
}

uint64_t sub_21B2F396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    MEMORY[0x21CEED5E0]();
    MEMORY[0x21CEED5E0](41, 0xE100000000000000);
    a3 = 0x7461676572676761;
  }

  return a3;
}

uint64_t sub_21B2F39FC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v10(v7);
  if (!v2)
  {
    (*(v5 + 32))(a2, v9, a1);
    return (*(v5 + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_21B2F3AFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_21B2F39FC(v1[4], a1);
}

uint64_t Order.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

unint64_t sub_21B2F3BEC()
{
  result = qword_27CD7F1C0[0];
  if (!qword_27CD7F1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD7F1C0);
  }

  return result;
}

uint64_t sub_21B2F3D68()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21B34AB84() & 1;
}

uint64_t sub_21B2F3D9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21B34AB94() & 1;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B2F3DEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
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

uint64_t sub_21B2F3E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2F3F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v39 = a3;
  v40 = a4;
  v41 = a2;
  v7 = v6;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_21B34B474();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v42 = *(AssociatedTypeWitness - 8);
  v18 = *(v42 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v34 - v20;
  v22 = *(v11 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  if (sub_21B34B2B4())
  {
    v26 = *(v42 + 56);

    return v26(a6, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v35 = a6;
    (*(v22 + 16))(v25, v6, v11);
    v28 = type metadata accessor for Column();
    if (swift_dynamicCast())
    {
      v29 = v41;
      v39(v28, v41);
      v30 = *(v42 + 48);
      if (v30(v17, 1, AssociatedTypeWitness) == 1)
      {
        (*(v42 + 16))(v21, v7 + *(a1 + 36), AssociatedTypeWitness);
        if (v30(v17, 1, AssociatedTypeWitness) != 1)
        {
          (*(v36 + 8))(v17, v37);
        }
      }

      else
      {
        (*(v42 + 32))(v21, v17, AssociatedTypeWitness);
      }

      v31 = *(a1 + 36);
      v32 = v40(v21, v7 + v31, AssociatedTypeWitness, v29);

      if (v32)
      {
        v33 = v35;
        (*(v42 + 32))(v35, v21, AssociatedTypeWitness);
      }

      else
      {
        (*(v42 + 8))(v21, AssociatedTypeWitness);
        v33 = v35;
        (*(v42 + 16))(v35, v7 + v31, AssociatedTypeWitness);
      }

      return (*(v42 + 56))(v33, 0, 1, AssociatedTypeWitness);
    }

    else
    {
      return v38(a1, v41);
    }
  }
}

uint64_t sub_21B2F4394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, char *, uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v69 = a3;
  v68 = a2;
  v76 = a4;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v65 = &v63 - v9;
  v10 = *(*(*(v5 + 8) + 8) + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v90 = &v63 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_21B34B474();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v82 = &v63 - v18;
  swift_getWitnessTable();
  v19 = sub_21B34AAF4();
  v87 = *(v19 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x28223BE20](v19);
  v86 = &v63 - v21;
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v92 = v19;
  v93 = a1;
  v94 = WitnessTable;
  v95 = v23;
  v84 = WitnessTable;
  v24 = v23;
  v81 = v23;
  v85 = sub_21B34B674();
  v25 = *(*(v85 - 1) + 8);
  MEMORY[0x28223BE20](v85);
  v92 = v19;
  v93 = a1;
  v94 = WitnessTable;
  v95 = v24;
  v83 = sub_21B34B664();
  v63 = *(v83 - 8);
  v26 = *(v63 + 64);
  MEMORY[0x28223BE20](v83);
  v28 = &v63 - v27;
  v64 = sub_21B34B474();
  v66 = *(v64 - 8);
  v29 = *(v66 + 64);
  v30 = MEMORY[0x28223BE20](v64);
  v70 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v80 = &v63 - v33;
  MEMORY[0x28223BE20](v32);
  v89 = v12;
  v34 = v12;
  v36 = &v63 - v35;
  v37 = *(v34 + 56);
  v91 = v11;
  v38 = v11;
  v39 = v71;
  v75 = v34 + 56;
  v74 = v37;
  v37(v76, 1, 1, v38);
  v40 = *(v39 + 56);
  v73 = v39 + 56;
  v72 = v40;
  v40(v36, 1, 1, AssociatedTypeWitness);
  v41 = v86;
  sub_21B34B2E4();
  sub_21B34BA54();
  (*(v87 + 8))(v41, v19);
  v42 = v82;
  v43 = v65;
  sub_21B34B644();
  v81 = v28;
  v44 = v64;
  sub_21B34B654();
  v45 = *(TupleTypeMetadata2 - 8);
  v46 = *(v45 + 48);
  v78 = v45 + 48;
  v79 = v46;
  if (v46(v42, 1, TupleTypeMetadata2) == 1)
  {
LABEL_2:
    (*(v63 + 8))(v81, v83);
    return (*(v66 + 8))(v36, v44);
  }

  v48 = *(v89 + 32);
  v87 = v39 + 32;
  v88 = v48;
  v84 = (v39 + 48);
  v85 = (v66 + 16);
  v86 = (v66 + 8);
  v71 = v39 + 8;
  v89 += 32;
  v67 = (v89 - 24);
  v77 = TupleTypeMetadata2;
  while (1)
  {
    v52 = *(TupleTypeMetadata2 + 48);
    v88(v90, v42, v91);
    v53 = *v87;
    (*v87)(v43, &v42[v52], AssociatedTypeWitness);
    v54 = *v85;
    v55 = v80;
    (*v85)(v80, v36, v44);
    v56 = *v84;
    v57 = (*v84)(v55, 1, AssociatedTypeWitness);
    v58 = *v86;
    (*v86)(v55, v44);
    if (v57 == 1)
    {
      goto LABEL_4;
    }

    v59 = v70;
    v54(v70, v36, v44);
    result = v56(v59, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      break;
    }

    v60 = v59;
    v61 = v69(v43, v59, AssociatedTypeWitness, v68);
    v62 = *v71;
    (*v71)(v60, AssociatedTypeWitness);
    if ((v61 & 1) == 0)
    {
      v62(v43, AssociatedTypeWitness);
      (*v67)(v90, v91);
      goto LABEL_5;
    }

LABEL_4:
    v58(v36, v44);
    v49 = v91;
    v50 = sub_21B34B474();
    v51 = v76;
    (*(*(v50 - 8) + 8))(v76, v50);
    v88(v51, v90, v49);
    v74(v51, 0, 1, v49);
    v53(v36, v43, AssociatedTypeWitness);
    v72(v36, 0, 1, AssociatedTypeWitness);
LABEL_5:
    v42 = v82;
    sub_21B34B654();
    TupleTypeMetadata2 = v77;
    if (v79(v42, 1, v77) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t FilledColumn<>.sum()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v6 = *(a1 + 16);
  v35 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v34 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v38 = &v34 - v14;
  v15 = *(v6 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v19 = *(a2 + 24);
  v20 = *(v19 + 16);
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  swift_getWitnessTable();
  v40 = v3;
  if (sub_21B34B2B4())
  {
    swift_getAssociatedConformanceWitness();
    sub_21B34BA24();
    return sub_21B34B9E4();
  }

  else
  {
    (*(v15 + 16))(v18, v40, v6);
    v24 = type metadata accessor for Column();
    if (swift_dynamicCast())
    {
      v25 = v43;
      v26 = v38;
      Column<A>.sum()(v24, *(v19 + 8));
      v42 = sub_21B328D40(v25);
      sub_21B2CFAF0();
      v27 = v34;
      sub_21B34B544();
      v28 = v40 + *(a1 + 36);
      v29 = v36;
      sub_21B34B144();
      v30 = *(v39 + 8);
      v30(v27, AssociatedTypeWitness);
      sub_21B34B834();

      v30(v29, AssociatedTypeWitness);
      return (v30)(v26, AssociatedTypeWitness);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_21B34BA24();
      v31 = v38;
      v32 = sub_21B34B9E4();
      MEMORY[0x28223BE20](v32);
      v33 = v35;
      *(&v34 - 4) = v6;
      *(&v34 - 3) = v33;
      *(&v34 - 2) = v37;
      *(&v34 - 1) = AssociatedTypeWitness;
      swift_getWitnessTable();
      sub_21B34AF34();
      return (*(v39 + 8))(v31, AssociatedTypeWitness);
    }
  }
}

{
  v42 = a3;
  v6 = *(a1 + 16);
  v37 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v8 = *(v40 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v35 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v39 = &v35 - v14;
  v15 = *(v6 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  v19 = *(*(a2 + 16) + 8);
  v20 = *(v19 + 16);
  v21 = swift_getAssociatedTypeWitness();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  swift_getWitnessTable();
  v41 = v3;
  if (sub_21B34B2B4())
  {
    swift_getAssociatedConformanceWitness();
    sub_21B34BA24();
    return sub_21B34B9E4();
  }

  else
  {
    (*(v15 + 16))(v18, v41, v6);
    v24 = type metadata accessor for Column();
    if (swift_dynamicCast())
    {
      v37 = v43;
      v25 = v44;
      v26 = v39;
      Column<A>.sum()(v24, *(v19 + 8));
      sub_21B328D40(v25);
      v27 = v35;
      sub_21B34AA84();
      v28 = v41 + *(a1 + 36);
      v29 = v36;
      sub_21B34B144();
      v30 = *(v40 + 8);
      v30(v27, AssociatedTypeWitness);
      sub_21B34B834();

      v30(v29, AssociatedTypeWitness);
      return (v30)(v26, AssociatedTypeWitness);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_21B34BA24();
      v31 = v39;
      v32 = sub_21B34B9E4();
      MEMORY[0x28223BE20](v32);
      v34 = v37;
      v33 = v38;
      *(&v35 - 4) = v6;
      *(&v35 - 3) = v34;
      *(&v35 - 2) = v33;
      *(&v35 - 1) = AssociatedTypeWitness;
      swift_getWitnessTable();
      sub_21B34AF34();
      return (*(v40 + 8))(v31, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_21B2F517C()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_getAssociatedTypeWitness();
  v5 = *(*(v4 + 24) + 8);
  return sub_21B34B834();
}

uint64_t FilledColumn<>.mean()(uint64_t a1, uint64_t a2)
{
  v16[1] = *(a1 + 16);
  v17 = a2;
  WitnessTable = swift_getWitnessTable();
  v5 = sub_21B2FCC28(sub_21B2F5DC8, v16, a1, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);
  v6 = *(v5 + 16);
  if (!v6)
  {

LABEL_11:
    *&result = 0.0;
    return result;
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
LABEL_8:
    v12 = v6 - v7;
    v13 = (v5 + 8 * v7 + 32);
    do
    {
      v14 = *v13++;
      v9 = v9 + v14;
      v8 = v8 + 1.0;
      --v12;
    }

    while (v12);
    goto LABEL_10;
  }

  v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
  v10 = (v5 + 40);
  v8 = 0.0;
  v11 = v6 & 0x7FFFFFFFFFFFFFFELL;
  v9 = 0.0;
  do
  {
    v8 = v8 + 1.0 + 1.0;
    v9 = v9 + *(v10 - 1) + *v10;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  if (v6 != v7)
  {
    goto LABEL_8;
  }

LABEL_10:

  if (v8 == 0.0)
  {
    goto LABEL_11;
  }

  *&result = v9 / v8;
  return result;
}

uint64_t FilledColumn<>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *(a2 + 16);
  v11 = a3;
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21B2FCC28(sub_21B2F55C4, v10, a2, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
  v8 = sub_21B2F55E8(v7, a1);

  return v8;
}

uint64_t sub_21B2F5404@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v13 - v7;
  (*(v5 + 16))(v13 - v7, a1, AssociatedTypeWitness);
  if (sub_21B34B524() < 65)
  {
    v11 = sub_21B34B534();
    v12 = sub_21B34B514();
    result = (*(v5 + 8))(v8, AssociatedTypeWitness);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v5 + 8))(v8, AssociatedTypeWitness);
    v10 = *&v13[1];
  }

  *a2 = v10;
  return result;
}

uint64_t sub_21B2F55C4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_21B2F5404(a1, a2);
}

uint64_t sub_21B2F55E8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      return 0;
    }

    __asm { FMOV            V0.2D, #1.0 }

    if (v2 == 1)
    {
      v8 = 0;
      v9 = 0uLL;
    }

    else
    {
      v8 = v2 & 0x7FFFFFFFFFFFFFFELL;
      v10 = (a1 + 40);
      v9 = 0uLL;
      v11 = v2 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v12.f64[1] = *(&_Q0 + 1);
        v12.f64[0] = *(v10 - 1);
        v13 = vaddq_f64(v9, v12);
        v12.f64[1] = *(&_Q0 + 1);
        v12.f64[0] = *v10;
        v9 = vaddq_f64(v13, v12);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
      if (v2 == v8)
      {
LABEL_10:
        if (v9.f64[1] != 0.0)
        {
          v17 = v9.f64[0] / v9.f64[1];
          if (v2 >= 4)
          {
            v18 = v2 & 0x7FFFFFFFFFFFFFFCLL;
            v20 = vdupq_lane_s64(*&v17, 0);
            v21 = (a1 + 48);
            v19 = 0.0;
            v22 = v2 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v23 = vsubq_f64(v21[-1], v20);
              v24 = vsubq_f64(*v21, v20);
              v25 = vmulq_f64(v23, v23);
              v26 = vmulq_f64(v24, v24);
              v19 = v19 + v25.f64[0] + v25.f64[1] + v26.f64[0] + v26.f64[1];
              v21 += 2;
              v22 -= 4;
            }

            while (v22);
            if (v2 == v18)
            {
LABEL_18:
              v30 = v2 <= a2;
              v31 = v2 - a2;
              if (!v30)
              {
                return sqrt(v19 / v31);
              }

              return 0;
            }
          }

          else
          {
            v18 = 0;
            v19 = 0.0;
          }

          v27 = v2 - v18;
          v28 = (a1 + 8 * v18 + 32);
          do
          {
            v29 = *v28++;
            v19 = v19 + (v29 - v17) * (v29 - v17);
            --v27;
          }

          while (v27);
          goto LABEL_18;
        }

        return 0;
      }
    }

    v14 = v2 - v8;
    v15 = (a1 + 8 * v8 + 32);
    do
    {
      v16.f64[1] = *(&_Q0 + 1);
      v16.f64[0] = *v15++;
      v9 = vaddq_f64(v9, v16);
      --v14;
    }

    while (v14);
    goto LABEL_10;
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2F5C5C()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_getAssociatedTypeWitness();
  v5 = *(*(*(v4 + 16) + 8) + 8);
  return sub_21B34B834();
}

uint64_t FilledColumn<>.mean()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B310088(v3, a1, WitnessTable, a2, a3);
}

uint64_t FilledColumn<>.standardDeviation(deltaDegreesOfFreedom:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B3106A0(v4, a1, a2, WitnessTable, a3, a4);
}

uint64_t FilledColumn.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v30 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  v15 = *(v7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v28 = v4;
  v19(v18, v4, v7);
  v27 = v6;
  v20 = *(*(*(v6 + 8) + 8) + 8);
  v21 = sub_21B34B314();
  v29 = v10;
  (*(v10 + 16))(v14);
  v21(v31, 0);
  (*(v15 + 8))(v18, v7);
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 48);
  if (v23(v14, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v22 + 32))(v30, v14, AssociatedTypeWitness);
  }

  v24 = *(a2 + 36);
  v25 = swift_getAssociatedTypeWitness();
  (*(*(v25 - 8) + 16))(v30, v28 + v24, v25);
  result = (v23)(v14, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v29 + 8))(v14, v9);
  }

  return result;
}

uint64_t OptionalColumnProtocol.filled(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19 - v12;
  v14 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v4, a2);
  (*(v9 + 16))(v13, a1, AssociatedTypeWitness);
  return sub_21B2F627C(v16, v13, a2, a3);
}

uint64_t sub_21B2F627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for FilledColumn() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 32);

  return v8(a4 + v6, a2, AssociatedTypeWitness);
}

uint64_t FilledColumn.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_21B2F648C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  v8 = type metadata accessor for FilledColumn();

  return FilledColumn.name.setter(v6, v7, v8);
}

void (*FilledColumn.name.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[2] = v2;
  v7 = *(*(a2 + 24) + 8);
  v5[3] = v7;
  v8 = *(v7 + 16);
  v5[4] = *(a2 + 16);
  *v5 = v8();
  v6[1] = v9;
  return sub_21B2F65A0;
}

void sub_21B2F65A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = *(v5 + 24);
  v7 = (*a1)[4];
  if (a2)
  {
    v8 = (*a1)[1];

    v6(v3, v4, v7, v5);
    v9 = v2[1];
  }

  else
  {
    v6(**a1, v4, v7, v5);
  }

  free(v2);
}

uint64_t sub_21B2F6680(uint64_t a1, void (*a2)(uint64_t, void))
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  a2(v4, *(*(*(*(a1 + 24) + 8) + 8) + 8));
  return (*(v5 + 8))(v8, v4);
}

uint64_t FilledColumn.index(after:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = *(*(*(*(a2 + 24) + 8) + 8) + 8);
  sub_21B34B1E4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t FilledColumn.index(before:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = *(*(*(a2 + 24) + 8) + 8);
  sub_21B34AB24();
  return (*(v5 + 8))(v8, v4);
}

void (*sub_21B2F69AC(void *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = FilledColumn.name.modify(v4, a2);
  return sub_21B2444C0;
}

uint64_t sub_21B2F6A24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2F6B7C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 16;
  v2 = *(a2 + 16);
  v4 = *(*(*(*(v3 + 8) + 8) + 8) + 8);
  return swift_getAssociatedConformanceWitness();
}

void (*sub_21B2F6BAC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2F6C34(v6, a2, a3);
  return sub_21B285370;
}

void (*sub_21B2F6C34(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  a1[1] = v10;
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  a1[2] = v11;
  FilledColumn.subscript.getter(a2, a3, v11);
  return sub_21B2854A4;
}

uint64_t sub_21B2F6D24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(*(*(*(a1 + 24) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v5 = sub_21B34B474();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t sub_21B2F6DBC()
{
  swift_getWitnessTable();

  return sub_21B34AB54();
}

uint64_t sub_21B2F6E38()
{
  swift_getWitnessTable();

  return sub_21B34AB44();
}

uint64_t sub_21B2F6EBC()
{
  swift_getWitnessTable();

  return sub_21B34AB64();
}

uint64_t sub_21B2F6F44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = *(a2 + 16);
  v8 = *(*(*(*(a2 + 24) + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, AssociatedTypeWitness);
  a4(v13, a2);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_21B2F7068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = a2 + *(sub_21B34B7D4() + 36);
  FilledColumn.startIndex.getter(a1);
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t sub_21B2F7160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B2F71B4(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_21B2DBAB0();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_21B2F7240(uint64_t a1)
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

uint64_t sub_21B2F72E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
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
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
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
      v19 = v14;
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

void sub_21B2F7560(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_21B2F7880(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = MEMORY[0x277D84F90];
    sub_21B254088(0, v8, 0);
    result = v39;
    v10 = (a1 + 64);
    while (1)
    {
      v35 = v8;
      v36 = result;
      v11 = v6;
      v12 = *(v10 - 4);
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      v16 = *a2;
      v17 = *(*a2 + 16);
      v18 = *(v10 - 3);

      if (!v17 || (v19 = sub_21B24B534(v13, v14), (v20 & 1) == 0))
      {
        sub_21B34B634();

        MEMORY[0x21CEED5E0](v13, v14);
        MEMORY[0x21CEED5E0](0x616420303030302ELL, 0xEF656C6966206174);
        sub_21B239564();
        swift_allocError();
        *v30 = 0x20676E697373694DLL;
        *(v30 + 8) = 0xE800000000000000;
        *(v30 + 16) = 0;
        swift_willThrow();
        goto LABEL_12;
      }

      v21 = (*(v16 + 56) + 24 * v19);
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[2];
      sub_21B260DC0(*v21, v22);

      sub_21B273654(v12, v18, v15, a3, a4, a5 & 1, v23, v22, v37, v24);
      v6 = v11;
      if (v11)
      {
        break;
      }

      sub_21B234324(v23, v22);

      result = v36;
      v39 = v36;
      v26 = *(v36 + 16);
      v25 = *(v36 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21B254088((v25 > 1), v26 + 1, 1);
        result = v39;
      }

      v10 += 5;
      *(result + 16) = v26 + 1;
      v27 = result + 40 * v26;
      v28 = v37[0];
      v29 = v37[1];
      *(v27 + 64) = v38;
      *(v27 + 32) = v28;
      *(v27 + 48) = v29;
      v8 = v35 - 1;
      if (v35 == 1)
      {
        return result;
      }
    }

    sub_21B234324(v23, v22);

LABEL_12:
  }

  return result;
}

uint64_t DataFrame.init(contentsOfSFrameDirectory:columns:rows:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v162 = a5;
  v163 = a3;
  v164 = a4;
  v161 = a6;
  v172 = *MEMORY[0x277D85DE8];
  v9 = sub_21B34A6D4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v165 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v166 = &v145 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v167 = &v145 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v145 - v18;
  sub_21B34A6B4();
  v20 = [objc_opt_self() defaultManager];
  sub_21B34A6C4();
  v21 = sub_21B34AC74();

  v22 = [v20 fileExistsAtPath_];

  if ((v22 & 1) == 0)
  {

    sub_21B239564();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 6;
    swift_willThrow();

    goto LABEL_6;
  }

  v159 = v20;
  v160 = a2;
  v23 = sub_21B34A6E4();
  if (v6)
  {

LABEL_6:
    v28 = v10[1];
    v28(a1, v9);
    result = (v28)(v19, v9);
LABEL_7:
    v30 = *MEMORY[0x277D85DE8];
    return result;
  }

  v156 = v19;
  v157 = v9;
  v158 = a1;
  v26 = v23;
  v27 = v24;
  v31 = sub_21B2F9150(v23, v24);
  v33 = v32;
  sub_21B234324(v26, v27);
  *&v170 = v31;
  *(&v170 + 1) = v33;

  MEMORY[0x21CEED5E0](0x695F656D6172662ELL, 0xEA00000000007864);

  v34 = v167;
  sub_21B34A6B4();

  v35 = v10;
  v36 = v10[2];
  v37 = v166;
  v38 = v157;
  v36(v166, v34, v157);
  v39 = sub_21B34A6E4();
  sub_21B2E2A48(v39, v40);
  v41 = 0;
  v43 = v42;
  v44 = v35[1];
  v152 = v35 + 1;
  v151 = v44;
  v44(v37, v38);
  v169 = MEMORY[0x277D84F98];
  v45 = *(v43 + 16);
  v46 = MEMORY[0x277D84F90];
  v146 = v43;
  if (v45)
  {
    v166 = 0;
    *&v170 = MEMORY[0x277D84F90];

    sub_21B231F10(0, v45, 0);
    v46 = v170;
    v47 = (v43 + 56);
    v48 = v165;
    do
    {
      v49 = *(v47 - 1);
      v50 = *v47;
      *&v170 = v46;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);

      if (v52 >= v51 >> 1)
      {
        sub_21B231F10((v51 > 1), v52 + 1, 1);
        v46 = v170;
      }

      *(v46 + 16) = v52 + 1;
      v53 = v46 + 16 * v52;
      *(v53 + 32) = v49;
      *(v53 + 40) = v50;
      v47 += 5;
      --v45;
    }

    while (v45);

    v41 = v166;
  }

  else
  {
    v48 = v165;
  }

  v54 = sub_21B25DE78(v46);

  v55 = 0;
  v57 = v54 + 56;
  v56 = *(v54 + 56);
  v153 = v54;
  v58 = 1 << *(v54 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & v56;
  v61 = (v58 + 63) >> 6;
  v62 = MEMORY[0x277D84F98];
  v150 = v54 + 56;
  v149 = v61;
  while (2)
  {
    v154 = v62;
    if (v60)
    {
      v67 = v48;
      goto LABEL_26;
    }

    do
    {
      v68 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (v68 >= v61)
      {
        v126 = v167;

        if (v160)
        {
          v127 = sub_21B2F9544(v160, v146);
          v128 = v157;
          v129 = v158;
          if (v41)
          {

            v130 = v151;
            v151(v129, v128);
            v130(v126, v128);
            v130(v156, v128);
            goto LABEL_75;
          }

          v132 = v127;

          v131 = v132;
        }

        else
        {
          v128 = v157;
          v129 = v158;
          v131 = v146;
        }

        v133 = sub_21B2F7880(v131, &v169, v163, v164, v162 & 1);
        v134 = v159;
        v135 = v156;
        if (!v41)
        {
          v138 = v133;

          sub_21B23BEF8(v138, &v170);

          v139 = v151;
          v151(v129, v128);
          v139(v126, v128);
          v139(v135, v128);

          v140 = v171;
          v141 = v161;
          *v161 = v170;
          *(v141 + 2) = v140;
          goto LABEL_7;
        }

        v136 = v129;
        v137 = v151;
        v151(v136, v128);
        v137(v126, v128);
        v137(v135, v128);
LABEL_75:

        goto LABEL_7;
      }

      v60 = *(v57 + 8 * v68);
      ++v55;
    }

    while (!v60);
    v67 = v48;
    v55 = v68;
LABEL_26:
    v69 = (*(v153 + 48) + ((v55 << 10) | (16 * __clz(__rbit64(v60)))));
    v70 = v69[1];
    v166 = *v69;
    *&v170 = v166;
    *(&v170 + 1) = v70;
    v71 = v70;
    swift_bridgeObjectRetain_n();
    MEMORY[0x21CEED5E0](0x303030302ELL, 0xE500000000000000);
    sub_21B34A6B4();

    v72 = v67;
    v73 = sub_21B34A6E4();
    if (v41)
    {

      v142 = v157;
      v143 = v72;
      v144 = v151;
      v151(v158, v157);
      v144(v143, v142);
      v144(v167, v142);
      v144(v156, v142);
      goto LABEL_75;
    }

    *&v170 = v73;
    *(&v170 + 1) = v74;
    v171 = MEMORY[0x277D84F90];
    v75 = v74 >> 62;
    v155 = v60;
    if ((v74 >> 62) > 1)
    {
      if (v75 != 2)
      {
        v98 = v73;
        v99 = v74;
        memset(v168, 0, 14);
        sub_21B23AA08(v168, v168);
        sub_21B234324(v98, v99);
        v78 = v72;
        v79 = v166;
        v80 = v71;
        goto LABEL_55;
      }

      v81 = v74;
      v82 = *(v73 + 16);
      v83 = *(v73 + 24);
      v147 = v73;

      v84 = sub_21B34A574();
      if (v84)
      {
        v85 = v84;
        v86 = v81;
        v87 = sub_21B34A594();
        if (__OFSUB__(v82, v87))
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
        }

        v88 = (v82 - v87 + v85);
      }

      else
      {
        v86 = v81;
        v88 = 0;
      }

      v100 = __OFSUB__(v83, v82);
      v101 = v83 - v82;
      v148 = v71;
      v102 = v166;
      if (!v100)
      {
        v103 = sub_21B34A584();
        if (v103 >= v101)
        {
          v104 = v101;
        }

        else
        {
          v104 = v103;
        }

        v105 = v88 + v104;
        if (v88)
        {
          v106 = v105;
        }

        else
        {
          v106 = 0;
        }

        sub_21B23AA08(v88, v106);
        sub_21B234324(v147, v86);
        v78 = v165;
        v80 = v148;
        v79 = v102;
        goto LABEL_55;
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (!v75)
    {
      v148 = v71;
      v168[0] = v73;
      v76 = v73;
      LOWORD(v168[1]) = v74;
      BYTE2(v168[1]) = BYTE2(v74);
      v77 = v74;
      BYTE3(v168[1]) = BYTE3(v74);
      BYTE4(v168[1]) = BYTE4(v74);
      BYTE5(v168[1]) = BYTE5(v74);
      sub_21B23AA08(v168, v168 + BYTE6(v74));
      sub_21B234324(v76, v77);
      v78 = v72;
      v79 = v166;
      v80 = v148;
      goto LABEL_55;
    }

    v148 = v74;
    v89 = v73;
    v147 = v73;
    v90 = (v73 >> 32) - v73;
    if (v73 >> 32 < v73)
    {
      goto LABEL_79;
    }

    v91 = sub_21B34A574();
    if (!v91)
    {
      goto LABEL_38;
    }

    v92 = sub_21B34A594();
    if (__OFSUB__(v89, v92))
    {
      goto LABEL_82;
    }

    v91 = (v91 + v89 - v92);
LABEL_38:
    v93 = v148;
    v94 = sub_21B34A584();
    if (v94 >= v90)
    {
      v95 = v90;
    }

    else
    {
      v95 = v94;
    }

    v96 = v91 + v95;
    if (v91)
    {
      v97 = v96;
    }

    else
    {
      v97 = 0;
    }

    sub_21B23AA08(v91, v97);
    v79 = v166;
    sub_21B234324(v147, v93);
    v78 = v165;
    v80 = v71;
LABEL_55:
    v151(v78, v157);
    v107 = v170;
    v108 = v171;
    sub_21B260DC0(v170, *(&v170 + 1));

    v154 = v107;
    sub_21B234324(v107, *(&v107 + 1));
    v109 = v108;

    v110 = v169;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v170 = v110;
    v112 = v80;
    v114 = sub_21B24B534(v79, v80);
    v115 = *(v110 + 16);
    v116 = (v113 & 1) == 0;
    v117 = v115 + v116;
    if (__OFADD__(v115, v116))
    {
      goto LABEL_77;
    }

    v118 = v113;
    if (*(v110 + 24) >= v117)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v121 = *(&v107 + 1);
        if ((v113 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_18;
      }

      sub_21B2530B8();
      v121 = *(&v107 + 1);
      if (v118)
      {
        goto LABEL_18;
      }

LABEL_62:
      v62 = v170;
      *(v170 + 8 * (v114 >> 6) + 64) |= 1 << v114;
      v122 = (v62[6] + 16 * v114);
      *v122 = v166;
      v122[1] = v112;
      v123 = (v62[7] + 24 * v114);
      *v123 = v154;
      v123[1] = v121;
      v123[2] = v109;
      v124 = v62[2];
      v100 = __OFADD__(v124, 1);
      v125 = v124 + 1;
      if (!v100)
      {
        v62[2] = v125;
        goto LABEL_19;
      }

      goto LABEL_78;
    }

    sub_21B24DBA4(v117, isUniquelyReferenced_nonNull_native);
    v119 = sub_21B24B534(v166, v112);
    if ((v118 & 1) == (v120 & 1))
    {
      v114 = v119;
      v121 = *(&v107 + 1);
      if ((v118 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_18:

      v62 = v170;
      v63 = (*(v170 + 56) + 24 * v114);
      v64 = *v63;
      v65 = v63[1];
      v66 = v63[2];
      *v63 = v154;
      v63[1] = v121;
      v63[2] = v109;
      sub_21B234324(v64, v65);

LABEL_19:
      v57 = v150;
      v61 = v149;
      v48 = v165;
      v60 = (v155 - 1) & v155;
      v169 = v62;
      continue;
    }

    break;
  }

  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B2F89A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_65;
  }

  result = sub_21B24B534(0x666572705F6D756ELL, 0xEC00000073657869);
  if ((v7 & 1) == 0)
  {
    goto LABEL_65;
  }

  v8 = (*(a1 + 56) + 16 * result);
  v9 = *v8;
  v10 = v8[1];
  v11 = HIBYTE(v10) & 0xF;
  v12 = v9 & 0xFFFFFFFFFFFFLL;
  if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : v9 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {

    v15 = sub_21B3411A0(v9, v10, 10);
    v39 = v38;

    if (v39)
    {
      goto LABEL_65;
    }

    goto LABEL_70;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v61 = v9;
    v62 = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v9 == 43)
    {
      if (v11)
      {
        if (--v11)
        {
          v15 = 0;
          v25 = &v61 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_97:
      __break(1u);
      return result;
    }

    if (v9 != 45)
    {
      if (v11)
      {
        v15 = 0;
        v30 = &v61;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          v30 = (v30 + 1);
          if (!--v11)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v11)
    {
      if (--v11)
      {
        v15 = 0;
        v19 = &v61 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v11)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21B34B6F4();
  }

  v14 = *result;
  if (v14 == 43)
  {
    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          v22 = (result + 1);
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              goto LABEL_63;
            }

            v24 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_63;
            }

            v15 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_63;
            }

            ++v22;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_96;
  }

  if (v14 == 45)
  {
    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          v16 = (result + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_63;
            }

            v18 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_63;
            }

            v15 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_63;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v11) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v12)
  {
    v15 = 0;
    if (result)
    {
      while (1)
      {
        v28 = *result - 48;
        if (v28 > 9)
        {
          goto LABEL_63;
        }

        v29 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          goto LABEL_63;
        }

        v15 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v12)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v15 = 0;
  LOBYTE(v11) = 1;
LABEL_64:
  if (v11)
  {
LABEL_65:
    v33 = 0;
    v34 = 0x800000021B34D7B0;
    v35 = 36;
LABEL_66:
    v36 = v35 | 0xD000000000000010;
LABEL_67:
    sub_21B239564();
    swift_allocError();
    *v37 = v36;
    *(v37 + 8) = v34;
    *(v37 + 16) = v33;
    return swift_willThrow();
  }

LABEL_70:
  if (!*(a1 + 16) || (v40 = sub_21B24B534(0x6E6F6973726576, 0xE700000000000000), (v41 & 1) == 0))
  {
    v33 = 0;
    v34 = 0x800000021B34D7F0;
    v35 = 39;
    goto LABEL_66;
  }

  v42 = (*(a1 + 56) + 16 * v40);
  v44 = *v42;
  v43 = v42[1];
  v45 = *v42 == 49 && v43 == 0xE100000000000000;
  if (!v45 && (sub_21B34B9F4() & 1) == 0)
  {
    v61 = 0;
    v62 = 0xE000000000000000;

    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000026, 0x800000021B34D830);
    MEMORY[0x21CEED5E0](v44, v43);

    v52 = 0x800000021B34D860;
    v53 = 0xD000000000000010;
LABEL_90:
    MEMORY[0x21CEED5E0](v53, v52);
    v36 = v61;
    v34 = v62;
    v33 = 1;
    goto LABEL_67;
  }

  if (!*(a2 + 16) || (result = sub_21B24B534(0x73746E65746E6F63, 0xE800000000000000), (v46 & 1) == 0))
  {
    v33 = 0;
    v34 = 0x800000021B34D880;
    v35 = 40;
    goto LABEL_66;
  }

  v47 = (*(a2 + 56) + 16 * result);
  v49 = *v47;
  v48 = v47[1];
  if (*v47 != 0x656D61726673 || v48 != 0xE600000000000000)
  {
    result = sub_21B34B9F4();
    if ((result & 1) == 0)
    {
      v61 = 0;
      v62 = 0xE000000000000000;

      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001DLL, 0x800000021B34D8C0);
      MEMORY[0x21CEED5E0](v49, v48);

      v53 = 0xD000000000000015;
      v52 = 0x800000021B34D8E0;
      goto LABEL_90;
    }
  }

  if (*(a3 + 16) != v15)
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000003BLL, 0x800000021B34D900);
    v60 = *(a3 + 16);
    v54 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v54);

    MEMORY[0x21CEED5E0](0x6578696665727020, 0xEE00207475622073);
    v56 = v61;
    v55 = v62;
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_21B34B634();

    v61 = 0xD000000000000023;
    v62 = 0x800000021B34D940;
    v57 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v57);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v58 = v61;
    v59 = v62;
    v61 = v56;
    v62 = v55;

    MEMORY[0x21CEED5E0](v58, v59);

    v33 = 0;
    v36 = v61;
    v34 = v62;
    goto LABEL_67;
  }

  if (v15 != 3)
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_21B34B634();

    v61 = 0xD000000000000018;
    v62 = 0x800000021B34D970;
    v51 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v51);

    MEMORY[0x21CEED5E0](0x746365707865202CLL, 0xED00002E33206465);
    v36 = v61;
    v34 = v62;
    v33 = 3;
    goto LABEL_67;
  }

  return result;
}

uint64_t sub_21B2F9150(uint64_t a1, unint64_t a2)
{
  v4 = sub_21B30FB6C(a1, a2);
  if (v3)
  {
    MEMORY[0x21CEEE850](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
    if (swift_dynamicCast())
    {
      MEMORY[0x21CEEE840](v3);
      sub_21B239564();
      swift_allocError();
      *v5 = 0xD000000000000028;
      *(v5 + 8) = 0x800000021B34D690;
      *(v5 + 16) = 0;
      swift_willThrow();
    }

    MEMORY[0x21CEEE840](v3);
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = v4;
    v8 = (v4 + 48);
    v9 = v6 + 1;
    do
    {
      if (!--v9)
      {

        v20 = 0x800000021B34D770;
        sub_21B239564();
        swift_allocError();
        v22 = 0xD000000000000039;
        goto LABEL_31;
      }

      v2 = *(v8 - 1);
      v10 = *v8;
      if (*(v8 - 2) == 0x65766968637261 && v2 == 0xE700000000000000)
      {
        break;
      }

      v8 += 3;
    }

    while ((sub_21B34B9F4() & 1) == 0);
    v29 = v7;
    v12 = (v7 + 48);
    v13 = v6 + 1;
    do
    {
      if (!--v13)
      {

        v23 = "Directory archive index is missing the 'metadata' section.";
LABEL_30:
        v20 = (v23 - 32) | 0x8000000000000000;
        sub_21B239564();
        swift_allocError();
        v22 = 0xD00000000000003ALL;
        goto LABEL_31;
      }

      v14 = *v12;
      if (*(v12 - 2) == 0x617461646174656DLL && *(v12 - 1) == 0xE800000000000000)
      {
        break;
      }

      v12 += 3;
    }

    while ((sub_21B34B9F4() & 1) == 0);
    v16 = (v29 + 48);
    v17 = v6 + 1;
    do
    {
      if (!--v17)
      {

        v23 = "Directory archive index is missing the 'prefixes' section.";
        goto LABEL_30;
      }

      v18 = *v16;
      if (*(v16 - 2) == 0x7365786966657270 && *(v16 - 1) == 0xE800000000000000)
      {
        break;
      }

      v16 += 3;
    }

    while ((sub_21B34B9F4() & 1) == 0);

    sub_21B2F89A8(v10, v14, v18);

    if (*(v18 + 16))
    {
      v2 = v18;
      v25 = sub_21B24B534(842018864, 0xE400000000000000);
      if (v26)
      {
        v27 = (*(v18 + 56) + 16 * v25);
        v2 = *v27;
        v28 = v27[1];

        return v2;
      }
    }

    v20 = 0x800000021B34D6C0;
    sub_21B239564();
    swift_allocError();
    v22 = 0xD00000000000002DLL;
LABEL_31:
    *v21 = v22;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

void *sub_21B2F9544(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_21B254388(0, v2, 0);
    v6 = 0;
    v3 = v31;
    v7 = a1 + 32;
    v8 = (a2 + 64);
    v9 = *(a2 + 16) + 1;
    v27 = a1 + 32;
    v28 = v2;
    v25 = v9;
    v26 = (a2 + 64);
    do
    {
      v10 = (v7 + 16 * v6);
      v29 = v6 + 1;
      v30 = v3;
      v12 = *v10;
      v11 = v10[1];
      v13 = v9;
      v3 = v8;
      while (1)
      {
        if (!--v13)
        {
          sub_21B239564();
          swift_allocError();
          *v23 = v12;
          *(v23 + 8) = v11;
          *(v23 + 16) = 5;
          swift_willThrow();

          return v3;
        }

        v15 = *(v3 - 4);
        v14 = *(v3 - 3);
        v17 = *(v3 - 2);
        v16 = *(v3 - 1);
        v18 = *v3;
        if (v15 == v12 && v14 == v11)
        {
          break;
        }

        v3 += 5;
        if (sub_21B34B9F4())
        {
          goto LABEL_12;
        }
      }

      v15 = v12;
LABEL_12:
      v3 = v30;
      v20 = v30[2];
      v21 = v30[3];

      if (v20 >= v21 >> 1)
      {
        sub_21B254388((v21 > 1), v20 + 1, 1);
        v3 = v30;
      }

      v3[2] = v20 + 1;
      v22 = &v3[5 * v20];
      v22[4] = v15;
      v22[5] = v14;
      v22[6] = v17;
      v22[7] = v16;
      v22[8] = v18;
      v6 = v29;
      v8 = v26;
      v7 = v27;
      v9 = v25;
    }

    while (v29 != v28);
  }

  return v3;
}

uint64_t CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v25 = *a5;
  v16 = sub_21B34AB04();
  if ((v16 & 0x100) != 0 || (v17 = v16, v27 = a3, v28 = a4, v18 = sub_21B34AB04(), (v18 & 0x100) != 0))
  {
    result = sub_21B34B824();
    __break(1u);
  }

  else
  {
    v19 = v18;
    v20 = a7 & 1;

    v21 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v21 setFormatOptions_];
    v22 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v22 setFormatOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21B351EA0;
    result = swift_allocObject();
    *(result + 16) = v21;
    *(result + 24) = v22;
    *(result + 32) = xmmword_21B356570;
    *(result + 48) = xmmword_21B356580;
    *(v23 + 32) = sub_21B2FABE8;
    *(v23 + 40) = result;
    *a9 = a1 & 1;
    *(a9 + 8) = a2;
    *(a9 + 16) = v27;
    *(a9 + 24) = v28;
    *(a9 + 32) = v25;
    *(a9 + 40) = v23;
    *(a9 + 48) = a6 & 1;
    *(a9 + 49) = v20;
    *(a9 + 50) = a8 & 1;
    *(a9 + 51) = v17;
    *(a9 + 52) = v19;
  }

  return result;
}

uint64_t sub_21B2F9944@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21B2F99AC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F248, &qword_21B356598);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_21B34A8E4();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_21B34A7E4();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B34A7C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B34A7A4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21B34A7B4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  sub_21B34A8C4();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_21B34A7D4();
  }

  return result;
}

uint64_t CSVReadingOptions.nilEncodings.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t CSVReadingOptions.trueEncodings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t CSVReadingOptions.falseEncodings.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t CSVReadingOptions.dateParsers.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t CSVReadingOptions.addDateParseStrategy<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, v8, a2);
  v11 = *(v3 + 40);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B24A830(0, v11[2] + 1, 1, v11);
    v11 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_21B24A830((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_21B27D170;
  v15[5] = v10;
  *(v3 + 40) = v11;
  return result;
}

uint64_t CSVWritingOptions.dateFormat.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CSVWritingOptions.dateFormat.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CSVWritingOptions.dateFormatter.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_21B2FA358(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 32);

  *(a2 + 24) = sub_21B2FAD98;
  *(a2 + 32) = v5;
  return result;
}

uint64_t CSVWritingOptions.dateFormatter.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*CSVWritingOptions.dateFormatter.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_21B2FA450;
}

uint64_t sub_21B2FA450(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
  }

  return result;
}

uint64_t CSVWritingOptions.nilEncoding.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t CSVWritingOptions.nilEncoding.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CSVWritingOptions.trueEncoding.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CSVWritingOptions.trueEncoding.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t CSVWritingOptions.falseEncoding.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t CSVWritingOptions.falseEncoding.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t CSVWritingOptions.newline.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t CSVWritingOptions.newline.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t CSVWritingOptions.delimiter.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t CSVWritingOptions.delimiter.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v46 = a6;
  v47 = a7;
  v43 = a4;
  v44 = a5;
  v48 = a14;
  v42 = a10;
  v45 = a13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F248, &qword_21B356598);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v41 - v21;
  v23 = sub_21B34A874();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  v28 = sub_21B2FAB04;
  if (a3)
  {
    v41 = a8;
    v29 = objc_allocWithZone(MEMORY[0x277CCA968]);

    v30 = [v29 init];
    sub_21B34A844();
    v31 = sub_21B34A854();
    (*(v24 + 8))(v27, v23);
    [v30 setLocale_];

    sub_21B34A8C4();
    v32 = sub_21B34A8E4();
    v33 = *(v32 - 8);
    v34 = 0;
    if ((*(v33 + 48))(v22, 1, v32) != 1)
    {
      v34 = sub_21B34A8D4();
      (*(v33 + 8))(v22, v32);
    }

    [v30 setTimeZone_];

    v35 = sub_21B34AC74();

    [v30 setDateFormat_];

    result = swift_allocObject();
    *(result + 16) = v30;
    v28 = sub_21B2FAC14;
    a8 = v41;
  }

  else
  {
    result = 0;
  }

  *a9 = a1 & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v28;
  *(a9 + 32) = result;
  v37 = v44;
  *(a9 + 40) = v43;
  *(a9 + 48) = v37;
  v38 = v47;
  *(a9 + 56) = v46;
  *(a9 + 64) = v38;
  v39 = v42;
  *(a9 + 72) = a8;
  *(a9 + 80) = v39;
  *(a9 + 88) = 10;
  *(a9 + 96) = 0xE100000000000000;
  v40 = v48;
  *(a9 + 104) = v45;
  *(a9 + 112) = v40;
  return result;
}

uint64_t sub_21B2FAA90(uint64_t a1, void *a2)
{
  v3 = sub_21B34A804();
  v4 = [a2 stringFromDate_];

  v5 = sub_21B34AC84();
  return v5;
}

uint64_t sub_21B2FAB04()
{
  v0 = sub_21B34A7F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2F99AC(v4);
  v5 = sub_21B34A794();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21B2FABE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  return sub_21B27A988(a2);
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B2FAC38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_21B2FAC80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2FACE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_21B2FAD2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2FAD98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_21B2FADD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t CSVWritingError.column.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t CSVWritingError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_21B34B634();

  v12 = 0xD000000000000019;
  v13 = 0x800000021B34D1B0;
  v11[0] = v2;
  v6 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v6);

  MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE900000000000027);
  MEMORY[0x21CEED5E0](v1, v4);
  MEMORY[0x21CEED5E0](2112039, 0xE300000000000000);
  sub_21B260DC0(v3, v5);
  sub_21B2CB408(1024, v3, v5, v11);
  sub_21B2D062C(v11[0], v11[1]);
  v7 = MEMORY[0x21CEED760]();
  v9 = v8;

  MEMORY[0x21CEED5E0](v7, v9);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  return v12;
}

uint64_t sub_21B2FAF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21B2FAFE4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

int64_t sub_21B2FB03C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = sub_21B2FB104(a2, a3, a4);
  result = sub_21B2CB3D0(a1, v5);
  v10 = (v9 >> 1) - v8;
  if (v9 >> 1 == v8)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    if ((v9 >> 1) > v8)
    {
      v11 = (v7 + 8 * v8);
      while (1)
      {
        v12 = *v11++;
        result = v12;
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 < result)
        {
          goto LABEL_11;
        }

        sub_21B28DFBC(result, v13);
        if (!--v10)
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B2FB104(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v5 = result;
  v6 = 0;
  v12 = MEMORY[0x277D84F90];
  v7 = (result + 40);
  v8 = a3;
  if (!a3)
  {
    goto LABEL_6;
  }

  while (1)
  {
    if (v8 != 1)
    {
      return v12;
    }

    v9 = *(v5 + 16);
    if (v6 == v9)
    {
      return v12;
    }

    if (v6 >= v9)
    {
      break;
    }

    v10 = *(v7 - 1);
    for (i = *v7; ; i = a2)
    {
      ++v6;
      result = sub_21B2708C0(v10, i);
      v7 += 2;
      v8 = a3;
      if (a3)
      {
        break;
      }

LABEL_6:
      if (v6 == 1)
      {
        return v12;
      }

      if (v6)
      {
        goto LABEL_13;
      }

      v10 = v5;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}