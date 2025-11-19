void *sub_1820D5528(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_181F5B010(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838920);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1820D562C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *v2;
  v8 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v9 = v2[1] - v7;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
    goto LABEL_37;
  }

  if (v11 < 2)
  {
LABEL_7:
    v12 = 1;
    v2[3] = 1;
    *(v2 + 32) = 1;
    v13 = 1;
LABEL_12:
    *a2 = v12;
    *(a2 + 8) = v13;
    return;
  }

  if (v7)
  {
    v14 = *(v7 + v8);
    if (v14 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v15 = sub_1820E2C6C(2);
    if (v16)
    {
LABEL_11:
      v12 = v3[3];
      v13 = *(v3 + 32);
      goto LABEL_12;
    }

    v17 = v15;
    v18 = *v2;
    v19 = v2[2];
    if (*(v2 + 32) == 1 && v2[3])
    {
      goto LABEL_7;
    }

    v20 = v2[1] - v18;
    if (!v18)
    {
      v20 = 0;
    }

    v35 = v20;
    v10 = __OFSUB__(v20, v19);
    v21 = v20 - v19;
    if (v10)
    {
      goto LABEL_39;
    }

    if (v21 < v14)
    {
      goto LABEL_7;
    }

    v22 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_40;
    }

    if (v22 < v15)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v32 = v14;
    v33 = a1;
    if (v15 == v22)
    {
LABEL_22:
      sub_182AD2FD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
      sub_1820E3960();
      v23 = sub_182AD2FB8();
      v25 = v24;

      if (!v25)
      {
        v12 = 2;
        v3[3] = 2;
        v13 = 1;
        *(v3 + 32) = 1;
        goto LABEL_12;
      }

      *v33 = v23;
      v33[1] = v25;
      sub_1820E2C6C(v32);
      goto LABEL_11;
    }

    if (v15 >= v22)
    {
      goto LABEL_42;
    }

    v26 = MEMORY[0x1E69E7CC0];
    v27 = v14;
    v28 = v15;
    v34 = v18;
    while ((v17 & 0x8000000000000000) == 0 && v28 < v35)
    {
      v31 = *(v18 + v28);
      if (v31)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_181FB7730(0, *(v26 + 16) + 1, 1);
        }

        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_181FB7730((v29 > 1), v30 + 1, 1);
        }

        *(v26 + 16) = v30 + 1;
        *(v26 + v30 + 32) = v31;
        v18 = v34;
      }

      ++v28;
      if (!--v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
}

_DWORD *Deserializer.uint32(_:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 < 4)
    {
LABEL_7:
      v8 = 1;
      v2[3] = 1;
      *(v2 + 32) = 1;
      v9 = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    if (v3)
    {
      v10 = a2;
      *result = *(v3 + v4);
      result = sub_1820E2C6C(4);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deserializer.buffer(_:length:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (*(v2 + 32) == 1 && *(v2 + 24))
  {
    goto LABEL_7;
  }

  v6 = v4 - v3;
  if (!v3)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < a1)
  {
LABEL_7:
    v9 = 1;
    *(v2 + 24) = 1;
    *(v2 + 32) = 1;
    v10 = 1;
LABEL_11:
    *a2 = v9;
    *(a2 + 8) = v10;
    return result;
  }

  if (__OFADD__(v5, a1))
  {
    goto LABEL_13;
  }

  if (v5 + a1 >= v5)
  {
    v12 = a2;
    sub_181ADF8C8(*(v2 + 16), v5 + a1, v3, v4);
    result = sub_1820E2C6C(a1);
    a2 = v12;
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1820D5A58@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char **a4@<X3>, uint64_t *a5@<X8>)
{
  v80 = a5;
  v9 = sub_182AD27E8();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v71[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v71[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v71[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v71[-v23];
  v78 = a3;
  v79 = a4;
  v81[2] = a3;
  v81[3] = a4;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v72 = a2;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v93 = a1[10];
  v94 = v28;
  v95 = a1[12];
  v96 = *(a1 + 208);
  v29 = a1[7];
  v89 = a1[6];
  v90 = v29;
  v30 = a1[9];
  v91 = a1[8];
  v92 = v30;
  v31 = a1[3];
  v85 = a1[2];
  v86 = v31;
  v32 = a1[5];
  v87 = a1[4];
  v88 = v32;
  v33 = a1[1];
  v83 = *a1;
  v84 = v33;
  sub_1821438A8(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_181F49A88(v13, &qword_1EA839BA8);
    LOBYTE(a2) = v72;
LABEL_4:
    v34 = a1[11];
    v93 = a1[10];
    v94 = v34;
    v95 = a1[12];
    v96 = *(a1 + 208);
    v35 = a1[7];
    v89 = a1[6];
    v90 = v35;
    v36 = a1[9];
    v91 = a1[8];
    v92 = v36;
    v37 = a1[3];
    v85 = a1[2];
    v86 = v37;
    v38 = a1[5];
    v87 = a1[4];
    v88 = v38;
    v39 = a1[1];
    v83 = *a1;
    v84 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v80;
      *v80 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v83 = result;
    *(&v83 + 1) = v44;
    v84 = 0uLL;
    LOBYTE(v85) = 1;
    sub_182021098(&v83, v78, v79, &v82);
    v45 = *(&v84 + 1);
    result = v84;
    if ((v85 & 1) == 0)
    {
      v46 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v84 + 1))
    {
      v46 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v83)
    {
      v67 = *(&v83 + 1) - v83;
    }

    else
    {
      v67 = 0;
    }

    v45 = v67 - v84;
    if (__OFSUB__(v67, v84))
    {
      __break(1u);
    }

    else if ((v45 & 0x8000000000000000) == 0)
    {
      v46 = v67 == v84;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v69 = v80;
        *v80 = v45;
        *(v69 + 8) = v46 & 1;
        return result;
      }

LABEL_30:
      if (v45)
      {
        v68 = v46;
      }

      else
      {
        v68 = 0;
      }

      if (v68)
      {
        v46 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v84, 0, 1);
        if ((result & 1) == 0)
        {
          v45 = 2;
        }

        v46 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v47 = v13;
  v48 = v77;
  sub_182022420(v47, v77);
  sub_181AB5D28(v48, v19, &unk_1EA83A980);
  v49 = sub_182AD27F8();
  v27(v19, v26);
  v50 = *(v49 + 16);

  if (!v50)
  {
    result = sub_181F49A88(v48, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v50 == 1)
  {
    v51 = v74;
    sub_181AB5D28(v48, v74, &unk_1EA83A980);
    v52 = sub_182AD27F8();
    v27(v51, v26);
    v53 = v76;
    if (*(v52 + 16))
    {
      v54 = v75;
      v55 = v73;
      (*(v75 + 16))(v73, v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v76);

      MEMORY[0x1EEE9AC00](v56);
      *&v71[-32] = a1;
      v71[-24] = v72 & 1;
      *&v71[-16] = sub_1820E39E4;
      *&v71[-8] = v81;
      sub_182AD27D8();
      sub_181F49A88(v48, &unk_1EA83A980);
      return (*(v54 + 8))(v55, v53);
    }

    goto LABEL_44;
  }

  v82 = xmmword_182AE7580;
  sub_181AB5D28(v48, v19, &unk_1EA83A980);
  v57 = sub_182AD27F8();
  v27(v19, v26);
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = v76;
    v60 = v57 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v61 = *(v75 + 72);
    v78 = v57;
    v79 = v61;
    v62 = (v75 + 16);
    do
    {
      *(&v84 + 1) = v59;
      *&v85 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v83);
      (*v62)(boxed_opaque_existential_0Tm, v60, v59);
      __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
      sub_182AD1DC8();
      v65 = v81[6];
      v64 = v81[7];
      __swift_destroy_boxed_opaque_existential_1(&v83);
      sub_182AD2178();
      sub_181C1F2E4(v65, v64);
      v60 += v79;
      --v58;
    }

    while (v58);

    v48 = v77;
  }

  else
  {
  }

  v70 = v82;
  MEMORY[0x1EEE9AC00](v66);
  *&v71[-32] = a1;
  v71[-24] = v72 & 1;
  *&v71[-16] = sub_1820E39E4;
  *&v71[-8] = v81;
  sub_1820E375C(sub_1820E3AF0, &v71[-48], v70, *(&v70 + 1));
  sub_181F49A88(v48, &unk_1EA83A980);
  return sub_181C1F2E4(v70, *(&v70 + 1));
}

uint64_t sub_1820D6258@<X0>(__int128 *a1@<X0>, int a2@<W1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, void *a6@<X8>)
{
  v82 = a2;
  v84 = a6;
  v10 = sub_182AD27E8();
  v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v73 - v23;
  v80 = a3;
  v81 = a4;
  v85[2] = a3;
  v85[3] = a4;
  v83 = a5;
  v85[4] = a5;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v74 = v10;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v97 = a1[10];
  v98 = v28;
  v99 = a1[12];
  v100 = *(a1 + 208);
  v29 = a1[7];
  v93 = a1[6];
  v94 = v29;
  v30 = a1[9];
  v95 = a1[8];
  v96 = v30;
  v31 = a1[3];
  v89 = a1[2];
  v90 = v31;
  v32 = a1[5];
  v91 = a1[4];
  v92 = v32;
  v33 = a1[1];
  v87 = *a1;
  v88 = v33;
  sub_1821438A8(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_181F49A88(v14, &qword_1EA839BA8);
LABEL_4:
    v34 = a1[11];
    v97 = a1[10];
    v98 = v34;
    v99 = a1[12];
    v100 = *(a1 + 208);
    v35 = a1[7];
    v93 = a1[6];
    v94 = v35;
    v36 = a1[9];
    v95 = a1[8];
    v96 = v36;
    v37 = a1[3];
    v89 = a1[2];
    v90 = v37;
    v38 = a1[5];
    v91 = a1[4];
    v92 = v38;
    v39 = a1[1];
    v87 = *a1;
    v88 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v84;
      *v84 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v87 = result;
    *(&v87 + 1) = v44;
    v88 = 0uLL;
    LOBYTE(v89) = 1;
    v45 = sub_1820E2CC0();
    *v80 = v45;
    Deserializer.buffer(_:length:)(v45, &v86);
    v46 = sub_1820E2CC0();
    v47 = v84;
    *v83 = v46;
    v48 = *(&v88 + 1);
    result = v88;
    if ((v89 & 1) == 0)
    {
      v49 = 0;
      if ((v82 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v88 + 1))
    {
      v49 = 1;
      if ((v82 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v87)
    {
      v70 = *(&v87 + 1) - v87;
    }

    else
    {
      v70 = 0;
    }

    v48 = v70 - v88;
    if (__OFSUB__(v70, v88))
    {
      __break(1u);
    }

    else if ((v48 & 0x8000000000000000) == 0)
    {
      v49 = v70 == v88;
      if ((v82 & 1) == 0)
      {
LABEL_38:
        *v47 = v48;
        *(v47 + 8) = v49 & 1;
        return result;
      }

LABEL_30:
      if (v48)
      {
        v71 = v49;
      }

      else
      {
        v71 = 0;
      }

      if (v71)
      {
        v49 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v88, 0, 1);
        if ((result & 1) == 0)
        {
          v48 = 2;
        }

        v49 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v50 = v79;
  sub_182022420(v14, v79);
  v51 = v78;
  sub_181AB5D28(v50, v78, &unk_1EA83A980);
  v52 = sub_182AD27F8();
  v27(v51, v26);
  v53 = *(v52 + 16);

  if (!v53)
  {
    result = sub_181F49A88(v50, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v53 == 1)
  {
    v54 = v76;
    sub_181AB5D28(v50, v76, &unk_1EA83A980);
    v55 = sub_182AD27F8();
    v27(v54, v26);
    if (*(v55 + 16))
    {
      v56 = v77;
      v57 = v74;
      v58 = v75;
      (*(v77 + 16))(v75, v55 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v74);

      MEMORY[0x1EEE9AC00](v59);
      *(&v73 - 4) = a1;
      *(&v73 - 24) = v82 & 1;
      *(&v73 - 2) = sub_1820E39EC;
      *(&v73 - 1) = v85;
      sub_182AD27D8();
      sub_181F49A88(v50, &unk_1EA83A980);
      return (*(v56 + 8))(v58, v57);
    }

    goto LABEL_44;
  }

  v86 = xmmword_182AE7580;
  sub_181AB5D28(v50, v51, &unk_1EA83A980);
  v60 = sub_182AD27F8();
  v27(v51, v26);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = *(v77 + 80);
    v81 = v60;
    v63 = v60 + ((v62 + 32) & ~v62);
    v83 = *(v77 + 72);
    v64 = (v77 + 16);
    v65 = v74;
    do
    {
      *(&v88 + 1) = v65;
      *&v89 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v87);
      (*v64)(boxed_opaque_existential_0Tm, v63, v65);
      __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
      sub_182AD1DC8();
      v68 = v85[6];
      v67 = v85[7];
      __swift_destroy_boxed_opaque_existential_1(&v87);
      sub_182AD2178();
      sub_181C1F2E4(v68, v67);
      v63 += v83;
      --v61;
    }

    while (v61);

    v50 = v79;
  }

  else
  {
  }

  v72 = v86;
  MEMORY[0x1EEE9AC00](v69);
  *(&v73 - 4) = a1;
  *(&v73 - 24) = v82 & 1;
  *(&v73 - 2) = sub_1820E39EC;
  *(&v73 - 1) = v85;
  sub_1820E375C(sub_1820E3AF0, (&v73 - 6), v72, *(&v72 + 1));
  sub_181F49A88(v50, &unk_1EA83A980);
  return sub_181C1F2E4(v72, *(&v72 + 1));
}

uint64_t sub_1820D6A9C@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v7 = sub_182AD27E8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v69 - v22;
  v75 = a3;
  v77[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v69 = v15;
  v70 = a2;
  v24 = swift_projectBox();
  sub_181AB5D28(v24, v23, &qword_1EA8398E0);
  v25 = sub_182AD2868();
  v26 = *(*(v25 - 8) + 8);
  v26(v23, v25);
  v27 = *(a1 + 176);
  v89 = *(a1 + 160);
  v90 = v27;
  v91 = *(a1 + 192);
  v92 = *(a1 + 208);
  v28 = *(a1 + 112);
  v85 = *(a1 + 96);
  v86 = v28;
  v29 = *(a1 + 144);
  v87 = *(a1 + 128);
  v88 = v29;
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v83 = *(a1 + 64);
  v84 = v31;
  v32 = *(a1 + 16);
  v79 = *a1;
  v80 = v32;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    LOBYTE(a2) = v70;
LABEL_4:
    v33 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v33;
    v91 = *(a1 + 192);
    v92 = *(a1 + 208);
    v34 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v34;
    v35 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v35;
    v36 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v36;
    v37 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v37;
    v38 = *(a1 + 16);
    v79 = *a1;
    v80 = v38;
    result = Frame.unclaimedBytes.getter();
    if (v41)
    {
LABEL_5:
      v42 = v76;
      *v76 = 1;
      *(v42 + 8) = 1;
      return result;
    }

    if (result)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    *&v79 = result;
    *(&v79 + 1) = v43;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    *v75 = sub_1820E2CC0();
    v44 = *(&v80 + 1);
    result = v80;
    if ((v81 & 1) == 0)
    {
      v45 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v80 + 1))
    {
      v45 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v79)
    {
      v64 = *(&v79 + 1) - v79;
    }

    else
    {
      v64 = 0;
    }

    v44 = v64 - v80;
    if (__OFSUB__(v64, v80))
    {
      __break(1u);
    }

    else if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v64 == v80;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v66 = v76;
        *v76 = v44;
        *(v66 + 8) = v45 & 1;
        return result;
      }

LABEL_30:
      if (v44)
      {
        v65 = v45;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v45 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v80, 0, 1);
        if ((result & 1) == 0)
        {
          v44 = 2;
        }

        v45 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = v74;
  sub_182022420(v11, v74);
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v47 = sub_182AD27F8();
  v26(v18, v25);
  v48 = *(v47 + 16);

  if (!v48)
  {
    result = sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v48 == 1)
  {
    v49 = v69;
    sub_181AB5D28(v46, v69, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v26(v49, v25);
    v51 = v73;
    if (*(v50 + 16))
    {
      v53 = v71;
      v52 = v72;
      (*(v72 + 16))(v71, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v73);

      MEMORY[0x1EEE9AC00](v54);
      *(&v69 - 4) = a1;
      *(&v69 - 24) = v70 & 1;
      *(&v69 - 2) = sub_1820E39F8;
      *(&v69 - 1) = v77;
      sub_182AD27D8();
      sub_181F49A88(v46, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v78 = xmmword_182AE7580;
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v55 = sub_182AD27F8();
  v26(v18, v25);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v73;
    v58 = *(v72 + 80);
    v71 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v75 = *(v72 + 72);
    v60 = (v72 + 16);
    do
    {
      *(&v80 + 1) = v57;
      *&v81 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v79);
      (*v60)(boxed_opaque_existential_0Tm, v59, v57);
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      sub_182AD1DC8();
      v63 = v77[4];
      v62 = v77[5];
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_182AD2178();
      sub_181C1F2E4(v63, v62);
      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v68 = v78;
  MEMORY[0x1EEE9AC00](v67);
  *(&v69 - 4) = a1;
  *(&v69 - 24) = v70 & 1;
  *(&v69 - 2) = sub_1820E39F8;
  *(&v69 - 1) = v77;
  sub_1820E375C(sub_1820E3AF0, (&v69 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v74, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

uint64_t sub_1820D7390@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, void (*a7)(__int128 *__return_ptr, __int128 *, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v83 = a7;
  v84 = a8;
  v76 = a5;
  v77 = a6;
  v80 = a4;
  v11 = sub_182AD27E8();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v73 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v73 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v73 - v26;
  v82 = a3;
  v85[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v73 = v19;
  v74 = a2;
  v28 = swift_projectBox();
  sub_181AB5D28(v28, v27, &qword_1EA8398E0);
  v29 = sub_182AD2868();
  v30 = *(*(v29 - 8) + 8);
  v30(v27, v29);
  v31 = *(a1 + 176);
  v97 = *(a1 + 160);
  v98 = v31;
  v99 = *(a1 + 192);
  v100 = *(a1 + 208);
  v32 = *(a1 + 112);
  v93 = *(a1 + 96);
  v94 = v32;
  v33 = *(a1 + 144);
  v95 = *(a1 + 128);
  v96 = v33;
  v34 = *(a1 + 48);
  v89 = *(a1 + 32);
  v90 = v34;
  v35 = *(a1 + 80);
  v91 = *(a1 + 64);
  v92 = v35;
  v36 = *(a1 + 16);
  v87 = *a1;
  v88 = v36;
  sub_1821438A8(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_181F49A88(v15, &qword_1EA839BA8);
    LOBYTE(a2) = v74;
LABEL_4:
    v37 = *(a1 + 176);
    v97 = *(a1 + 160);
    v98 = v37;
    v99 = *(a1 + 192);
    v100 = *(a1 + 208);
    v38 = *(a1 + 112);
    v93 = *(a1 + 96);
    v94 = v38;
    v39 = *(a1 + 144);
    v95 = *(a1 + 128);
    v96 = v39;
    v40 = *(a1 + 48);
    v89 = *(a1 + 32);
    v90 = v40;
    v41 = *(a1 + 80);
    v91 = *(a1 + 64);
    v92 = v41;
    v42 = *(a1 + 16);
    v87 = *a1;
    v88 = v42;
    result = Frame.unclaimedBytes.getter();
    if (v45)
    {
LABEL_5:
      v46 = v84;
      *v84 = 1;
      *(v46 + 8) = 1;
      return result;
    }

    if (result)
    {
      v47 = v44;
    }

    else
    {
      v47 = 0;
    }

    *&v87 = result;
    *(&v87 + 1) = v47;
    v88 = 0uLL;
    LOBYTE(v89) = 1;
    v83(&v86, &v87, v82);
    v48 = *(&v88 + 1);
    result = v88;
    if ((v89 & 1) == 0)
    {
      v49 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v88 + 1))
    {
      v49 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v87)
    {
      v69 = *(&v87 + 1) - v87;
    }

    else
    {
      v69 = 0;
    }

    v48 = v69 - v88;
    if (__OFSUB__(v69, v88))
    {
      __break(1u);
    }

    else if ((v48 & 0x8000000000000000) == 0)
    {
      v49 = v69 == v88;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v71 = v84;
        *v84 = v48;
        *(v71 + 8) = v49 & 1;
        return result;
      }

LABEL_30:
      if (v48)
      {
        v70 = v49;
      }

      else
      {
        v70 = 0;
      }

      if (v70)
      {
        v49 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v88, 0, 1);
        if ((result & 1) == 0)
        {
          v48 = 2;
        }

        v49 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v50 = v81;
  sub_182022420(v15, v81);
  sub_181AB5D28(v50, v22, &unk_1EA83A980);
  v51 = sub_182AD27F8();
  v30(v22, v29);
  v52 = *(v51 + 16);

  if (!v52)
  {
    result = sub_181F49A88(v50, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v52 == 1)
  {
    v53 = v73;
    sub_181AB5D28(v50, v73, &unk_1EA83A980);
    v54 = sub_182AD27F8();
    v30(v53, v29);
    v55 = v79;
    if (*(v54 + 16))
    {
      v56 = v78;
      v57 = v75;
      (*(v78 + 16))(v75, v54 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v79);

      MEMORY[0x1EEE9AC00](v58);
      *(&v73 - 4) = a1;
      *(&v73 - 24) = v74 & 1;
      *(&v73 - 2) = v80;
      *(&v73 - 1) = v85;
      sub_182AD27D8();
      sub_181F49A88(v50, &unk_1EA83A980);
      return (*(v56 + 8))(v57, v55);
    }

    goto LABEL_44;
  }

  v86 = xmmword_182AE7580;
  sub_181AB5D28(v50, v22, &unk_1EA83A980);
  v59 = sub_182AD27F8();
  v30(v22, v29);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v79;
    v62 = v59 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v63 = *(v78 + 72);
    v82 = v59;
    v83 = v63;
    v64 = (v78 + 16);
    do
    {
      *(&v88 + 1) = v61;
      *&v89 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v87);
      (*v64)(boxed_opaque_existential_0Tm, v62, v61);
      __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
      sub_182AD1DC8();
      v67 = v85[4];
      v66 = v85[5];
      __swift_destroy_boxed_opaque_existential_1(&v87);
      sub_182AD2178();
      sub_181C1F2E4(v67, v66);
      v62 += v83;
      --v60;
    }

    while (v60);

    v50 = v81;
  }

  else
  {
  }

  v72 = v86;
  MEMORY[0x1EEE9AC00](v68);
  *(&v73 - 4) = a1;
  *(&v73 - 24) = v74 & 1;
  *(&v73 - 2) = v80;
  *(&v73 - 1) = v85;
  sub_1820E375C(v77, (&v73 - 6), v72, *(&v72 + 1));
  sub_181F49A88(v50, &unk_1EA83A980);
  return sub_181C1F2E4(v72, *(&v72 + 1));
}

uint64_t sub_1820D7BB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, _WORD *a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v7 = sub_182AD27E8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v69 - v22;
  v75 = a3;
  v77[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v69 = v15;
  v70 = a2;
  v24 = swift_projectBox();
  sub_181AB5D28(v24, v23, &qword_1EA8398E0);
  v25 = sub_182AD2868();
  v26 = *(*(v25 - 8) + 8);
  v26(v23, v25);
  v27 = *(a1 + 176);
  v89 = *(a1 + 160);
  v90 = v27;
  v91 = *(a1 + 192);
  v92 = *(a1 + 208);
  v28 = *(a1 + 112);
  v85 = *(a1 + 96);
  v86 = v28;
  v29 = *(a1 + 144);
  v87 = *(a1 + 128);
  v88 = v29;
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v83 = *(a1 + 64);
  v84 = v31;
  v32 = *(a1 + 16);
  v79 = *a1;
  v80 = v32;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    LOBYTE(a2) = v70;
LABEL_4:
    v33 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v33;
    v91 = *(a1 + 192);
    v92 = *(a1 + 208);
    v34 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v34;
    v35 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v35;
    v36 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v36;
    v37 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v37;
    v38 = *(a1 + 16);
    v79 = *a1;
    v80 = v38;
    result = Frame.unclaimedBytes.getter();
    if (v41)
    {
LABEL_5:
      v42 = v76;
      *v76 = 1;
      *(v42 + 8) = 1;
      return result;
    }

    if (result)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    *&v79 = result;
    *(&v79 + 1) = v43;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    sub_18201D0CC(&v79, v75, &v78);
    v44 = *(&v80 + 1);
    result = v80;
    if ((v81 & 1) == 0)
    {
      v45 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v80 + 1))
    {
      v45 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v79)
    {
      v64 = *(&v79 + 1) - v79;
    }

    else
    {
      v64 = 0;
    }

    v44 = v64 - v80;
    if (__OFSUB__(v64, v80))
    {
      __break(1u);
    }

    else if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v64 == v80;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v66 = v76;
        *v76 = v44;
        *(v66 + 8) = v45 & 1;
        return result;
      }

LABEL_30:
      if (v44)
      {
        v65 = v45;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v45 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v80, 0, 1);
        if ((result & 1) == 0)
        {
          v44 = 2;
        }

        v45 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = v74;
  sub_182022420(v11, v74);
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v47 = sub_182AD27F8();
  v26(v18, v25);
  v48 = *(v47 + 16);

  if (!v48)
  {
    result = sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v48 == 1)
  {
    v49 = v69;
    sub_181AB5D28(v46, v69, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v26(v49, v25);
    v51 = v73;
    if (*(v50 + 16))
    {
      v53 = v71;
      v52 = v72;
      (*(v72 + 16))(v71, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v73);

      MEMORY[0x1EEE9AC00](v54);
      *(&v69 - 4) = a1;
      *(&v69 - 24) = v70 & 1;
      *(&v69 - 2) = sub_1820E3AAC;
      *(&v69 - 1) = v77;
      sub_182AD27D8();
      sub_181F49A88(v46, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v78 = xmmword_182AE7580;
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v55 = sub_182AD27F8();
  v26(v18, v25);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v73;
    v58 = *(v72 + 80);
    v71 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v75 = *(v72 + 72);
    v60 = (v72 + 16);
    do
    {
      *(&v80 + 1) = v57;
      *&v81 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v79);
      (*v60)(boxed_opaque_existential_0Tm, v59, v57);
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      sub_182AD1DC8();
      v63 = v77[4];
      v62 = v77[5];
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_182AD2178();
      sub_181C1F2E4(v63, v62);
      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v68 = v78;
  MEMORY[0x1EEE9AC00](v67);
  *(&v69 - 4) = a1;
  *(&v69 - 24) = v70 & 1;
  *(&v69 - 2) = sub_1820E3AAC;
  *(&v69 - 1) = v77;
  sub_1820E375C(sub_1820E3AF0, (&v69 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v74, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

uint64_t sub_1820D83AC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v7 = sub_182AD27E8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v69 - v22;
  v75 = a3;
  v77[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v69 = v15;
  v70 = a2;
  v24 = swift_projectBox();
  sub_181AB5D28(v24, v23, &qword_1EA8398E0);
  v25 = sub_182AD2868();
  v26 = *(*(v25 - 8) + 8);
  v26(v23, v25);
  v27 = *(a1 + 176);
  v89 = *(a1 + 160);
  v90 = v27;
  v91 = *(a1 + 192);
  v92 = *(a1 + 208);
  v28 = *(a1 + 112);
  v85 = *(a1 + 96);
  v86 = v28;
  v29 = *(a1 + 144);
  v87 = *(a1 + 128);
  v88 = v29;
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v83 = *(a1 + 64);
  v84 = v31;
  v32 = *(a1 + 16);
  v79 = *a1;
  v80 = v32;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    LOBYTE(a2) = v70;
LABEL_4:
    v33 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v33;
    v91 = *(a1 + 192);
    v92 = *(a1 + 208);
    v34 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v34;
    v35 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v35;
    v36 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v36;
    v37 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v37;
    v38 = *(a1 + 16);
    v79 = *a1;
    v80 = v38;
    result = Frame.unclaimedBytes.getter();
    if (v41)
    {
LABEL_5:
      v42 = v76;
      *v76 = 1;
      *(v42 + 8) = 1;
      return result;
    }

    if (result)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    *&v79 = result;
    *(&v79 + 1) = v43;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    sub_18201D174(v75, &v78);
    v44 = *(&v80 + 1);
    result = v80;
    if ((v81 & 1) == 0)
    {
      v45 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v80 + 1))
    {
      v45 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v79)
    {
      v64 = *(&v79 + 1) - v79;
    }

    else
    {
      v64 = 0;
    }

    v44 = v64 - v80;
    if (__OFSUB__(v64, v80))
    {
      __break(1u);
    }

    else if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v64 == v80;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v66 = v76;
        *v76 = v44;
        *(v66 + 8) = v45 & 1;
        return result;
      }

LABEL_30:
      if (v44)
      {
        v65 = v45;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v45 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v80, 0, 1);
        if ((result & 1) == 0)
        {
          v44 = 2;
        }

        v45 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = v74;
  sub_182022420(v11, v74);
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v47 = sub_182AD27F8();
  v26(v18, v25);
  v48 = *(v47 + 16);

  if (!v48)
  {
    result = sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v48 == 1)
  {
    v49 = v69;
    sub_181AB5D28(v46, v69, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v26(v49, v25);
    v51 = v73;
    if (*(v50 + 16))
    {
      v53 = v71;
      v52 = v72;
      (*(v72 + 16))(v71, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v73);

      MEMORY[0x1EEE9AC00](v54);
      *(&v69 - 4) = a1;
      *(&v69 - 24) = v70 & 1;
      *(&v69 - 2) = sub_1820E3AB4;
      *(&v69 - 1) = v77;
      sub_182AD27D8();
      sub_181F49A88(v46, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v78 = xmmword_182AE7580;
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v55 = sub_182AD27F8();
  v26(v18, v25);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v73;
    v58 = *(v72 + 80);
    v71 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v75 = *(v72 + 72);
    v60 = (v72 + 16);
    do
    {
      *(&v80 + 1) = v57;
      *&v81 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v79);
      (*v60)(boxed_opaque_existential_0Tm, v59, v57);
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      sub_182AD1DC8();
      v63 = v77[4];
      v62 = v77[5];
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_182AD2178();
      sub_181C1F2E4(v63, v62);
      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v68 = v78;
  MEMORY[0x1EEE9AC00](v67);
  *(&v69 - 4) = a1;
  *(&v69 - 24) = v70 & 1;
  *(&v69 - 2) = sub_1820E3AB4;
  *(&v69 - 1) = v77;
  sub_1820E375C(sub_1820E3AF0, (&v69 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v74, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

uint64_t sub_1820D8BA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v7 = sub_182AD27E8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v69 - v22;
  v75 = a3;
  v77[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v69 = v15;
  v70 = a2;
  v24 = swift_projectBox();
  sub_181AB5D28(v24, v23, &qword_1EA8398E0);
  v25 = sub_182AD2868();
  v26 = *(*(v25 - 8) + 8);
  v26(v23, v25);
  v27 = *(a1 + 176);
  v89 = *(a1 + 160);
  v90 = v27;
  v91 = *(a1 + 192);
  v92 = *(a1 + 208);
  v28 = *(a1 + 112);
  v85 = *(a1 + 96);
  v86 = v28;
  v29 = *(a1 + 144);
  v87 = *(a1 + 128);
  v88 = v29;
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v83 = *(a1 + 64);
  v84 = v31;
  v32 = *(a1 + 16);
  v79 = *a1;
  v80 = v32;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    LOBYTE(a2) = v70;
LABEL_4:
    v33 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v33;
    v91 = *(a1 + 192);
    v92 = *(a1 + 208);
    v34 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v34;
    v35 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v35;
    v36 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v36;
    v37 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v37;
    v38 = *(a1 + 16);
    v79 = *a1;
    v80 = v38;
    result = Frame.unclaimedBytes.getter();
    if (v41)
    {
LABEL_5:
      v42 = v76;
      *v76 = 1;
      *(v42 + 8) = 1;
      return result;
    }

    if (result)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    *&v79 = result;
    *(&v79 + 1) = v43;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    sub_18201D27C(&v79, v75, &v78);
    v44 = *(&v80 + 1);
    result = v80;
    if ((v81 & 1) == 0)
    {
      v45 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v80 + 1))
    {
      v45 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v79)
    {
      v64 = *(&v79 + 1) - v79;
    }

    else
    {
      v64 = 0;
    }

    v44 = v64 - v80;
    if (__OFSUB__(v64, v80))
    {
      __break(1u);
    }

    else if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v64 == v80;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v66 = v76;
        *v76 = v44;
        *(v66 + 8) = v45 & 1;
        return result;
      }

LABEL_30:
      if (v44)
      {
        v65 = v45;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v45 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v80, 0, 1);
        if ((result & 1) == 0)
        {
          v44 = 2;
        }

        v45 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = v74;
  sub_182022420(v11, v74);
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v47 = sub_182AD27F8();
  v26(v18, v25);
  v48 = *(v47 + 16);

  if (!v48)
  {
    result = sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v48 == 1)
  {
    v49 = v69;
    sub_181AB5D28(v46, v69, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v26(v49, v25);
    v51 = v73;
    if (*(v50 + 16))
    {
      v53 = v71;
      v52 = v72;
      (*(v72 + 16))(v71, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v73);

      MEMORY[0x1EEE9AC00](v54);
      *(&v69 - 4) = a1;
      *(&v69 - 24) = v70 & 1;
      *(&v69 - 2) = sub_1820E3ABC;
      *(&v69 - 1) = v77;
      sub_182AD27D8();
      sub_181F49A88(v46, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v78 = xmmword_182AE7580;
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v55 = sub_182AD27F8();
  v26(v18, v25);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v73;
    v58 = *(v72 + 80);
    v71 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v75 = *(v72 + 72);
    v60 = (v72 + 16);
    do
    {
      *(&v80 + 1) = v57;
      *&v81 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v79);
      (*v60)(boxed_opaque_existential_0Tm, v59, v57);
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      sub_182AD1DC8();
      v63 = v77[4];
      v62 = v77[5];
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_182AD2178();
      sub_181C1F2E4(v63, v62);
      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v68 = v78;
  MEMORY[0x1EEE9AC00](v67);
  *(&v69 - 4) = a1;
  *(&v69 - 24) = v70 & 1;
  *(&v69 - 2) = sub_1820E3ABC;
  *(&v69 - 1) = v77;
  sub_1820E375C(sub_1820E3AF0, (&v69 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v74, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

uint64_t sub_1820D93DC@<X0>(__int128 *a1@<X0>, int a2@<W1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v76 = a5;
  v77 = a6;
  v80 = a4;
  v83 = a7;
  v10 = sub_182AD27E8();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v72 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v72 - v25;
  v82 = a3;
  v84[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v73 = v18;
  v74 = a2;
  v27 = swift_projectBox();
  sub_181AB5D28(v27, v26, &qword_1EA8398E0);
  v28 = sub_182AD2868();
  v29 = *(*(v28 - 8) + 8);
  v29(v26, v28);
  v30 = a1[11];
  v96 = a1[10];
  v97 = v30;
  v98 = a1[12];
  v99 = *(a1 + 208);
  v31 = a1[7];
  v92 = a1[6];
  v93 = v31;
  v32 = a1[9];
  v94 = a1[8];
  v95 = v32;
  v33 = a1[3];
  v88 = a1[2];
  v89 = v33;
  v34 = a1[5];
  v90 = a1[4];
  v91 = v34;
  v35 = a1[1];
  v86 = *a1;
  v87 = v35;
  sub_1821438A8(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_181F49A88(v14, &qword_1EA839BA8);
    LOBYTE(a2) = v74;
LABEL_4:
    v36 = a1[11];
    v96 = a1[10];
    v97 = v36;
    v98 = a1[12];
    v99 = *(a1 + 208);
    v37 = a1[7];
    v92 = a1[6];
    v93 = v37;
    v38 = a1[9];
    v94 = a1[8];
    v95 = v38;
    v39 = a1[3];
    v88 = a1[2];
    v89 = v39;
    v40 = a1[5];
    v90 = a1[4];
    v91 = v40;
    v41 = a1[1];
    v86 = *a1;
    v87 = v41;
    result = Frame.unclaimedBytes.getter();
    if (v44)
    {
LABEL_5:
      v45 = v83;
      *v83 = 1;
      *(v45 + 8) = 1;
      return result;
    }

    if (result)
    {
      v46 = v43;
    }

    else
    {
      v46 = 0;
    }

    *&v86 = result;
    *(&v86 + 1) = v46;
    v87 = 0uLL;
    LOBYTE(v88) = 1;
    *v82 = sub_1820E2CC0();
    v47 = *(&v87 + 1);
    result = v87;
    if ((v88 & 1) == 0)
    {
      v48 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v87 + 1))
    {
      v48 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v86)
    {
      v68 = *(&v86 + 1) - v86;
    }

    else
    {
      v68 = 0;
    }

    v47 = v68 - v87;
    if (__OFSUB__(v68, v87))
    {
      __break(1u);
    }

    else if ((v47 & 0x8000000000000000) == 0)
    {
      v48 = v68 == v87;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v70 = v83;
        *v83 = v47;
        *(v70 + 8) = v48 & 1;
        return result;
      }

LABEL_30:
      if (v47)
      {
        v69 = v48;
      }

      else
      {
        v69 = 0;
      }

      if (v69)
      {
        v48 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v87, 0, 1);
        if ((result & 1) == 0)
        {
          v47 = 2;
        }

        v48 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v49 = v81;
  sub_182022420(v14, v81);
  sub_181AB5D28(v49, v21, &unk_1EA83A980);
  v50 = sub_182AD27F8();
  v29(v21, v28);
  v51 = *(v50 + 16);

  if (!v51)
  {
    result = sub_181F49A88(v49, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v51 == 1)
  {
    v52 = v73;
    sub_181AB5D28(v49, v73, &unk_1EA83A980);
    v53 = sub_182AD27F8();
    v29(v52, v28);
    v54 = v79;
    if (*(v53 + 16))
    {
      v55 = v78;
      v56 = v75;
      (*(v78 + 16))(v75, v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v79);

      MEMORY[0x1EEE9AC00](v57);
      *(&v72 - 4) = a1;
      *(&v72 - 24) = v74 & 1;
      *(&v72 - 2) = v80;
      *(&v72 - 1) = v84;
      sub_182AD27D8();
      sub_181F49A88(v49, &unk_1EA83A980);
      return (*(v55 + 8))(v56, v54);
    }

    goto LABEL_44;
  }

  v85 = xmmword_182AE7580;
  sub_181AB5D28(v49, v21, &unk_1EA83A980);
  v58 = sub_182AD27F8();
  v29(v21, v28);
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v79;
    v61 = *(v78 + 80);
    v76 = v58;
    v62 = v58 + ((v61 + 32) & ~v61);
    v82 = *(v78 + 72);
    v63 = (v78 + 16);
    do
    {
      *(&v87 + 1) = v60;
      *&v88 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v86);
      (*v63)(boxed_opaque_existential_0Tm, v62, v60);
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      sub_182AD1DC8();
      v66 = v84[4];
      v65 = v84[5];
      __swift_destroy_boxed_opaque_existential_1(&v86);
      sub_182AD2178();
      sub_181C1F2E4(v66, v65);
      v62 += v82;
      --v59;
    }

    while (v59);

    v49 = v81;
  }

  else
  {
  }

  v71 = v85;
  MEMORY[0x1EEE9AC00](v67);
  *(&v72 - 4) = a1;
  *(&v72 - 24) = v74 & 1;
  *(&v72 - 2) = v80;
  *(&v72 - 1) = v84;
  sub_1820E375C(v77, (&v72 - 6), v71, *(&v71 + 1));
  sub_181F49A88(v49, &unk_1EA83A980);
  return sub_181C1F2E4(v71, *(&v71 + 1));
}

uint64_t sub_1820D9BAC@<X0>(__int128 *a1@<X0>, int a2@<W1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, void *a6@<X8>)
{
  v83 = a2;
  v85 = a6;
  v10 = sub_182AD27E8();
  v78 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v74 - v23;
  v81 = a3;
  v82 = a4;
  v86[2] = a3;
  v86[3] = a4;
  v84 = a5;
  v86[4] = a5;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v75 = v10;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v98 = a1[10];
  v99 = v28;
  v100 = a1[12];
  v101 = *(a1 + 208);
  v29 = a1[7];
  v94 = a1[6];
  v95 = v29;
  v30 = a1[9];
  v96 = a1[8];
  v97 = v30;
  v31 = a1[3];
  v90 = a1[2];
  v91 = v31;
  v32 = a1[5];
  v92 = a1[4];
  v93 = v32;
  v33 = a1[1];
  v88 = *a1;
  v89 = v33;
  sub_1821438A8(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_181F49A88(v14, &qword_1EA839BA8);
LABEL_4:
    v34 = a1[11];
    v98 = a1[10];
    v99 = v34;
    v100 = a1[12];
    v101 = *(a1 + 208);
    v35 = a1[7];
    v94 = a1[6];
    v95 = v35;
    v36 = a1[9];
    v96 = a1[8];
    v97 = v36;
    v37 = a1[3];
    v90 = a1[2];
    v91 = v37;
    v38 = a1[5];
    v92 = a1[4];
    v93 = v38;
    v39 = a1[1];
    v88 = *a1;
    v89 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v85;
      *v85 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v88 = result;
    *(&v88 + 1) = v44;
    v89 = 0uLL;
    LOBYTE(v90) = 1;
    *v81 = sub_1820E2CC0();
    v45 = sub_1820E2CC0();
    v46 = v82;
    *(v82 + 32) = v45;
    *(v46 + 40) = sub_1820E2CC0();
    v47 = sub_1820E2CC0();
    v48 = v85;
    *v84 = v47;
    v49 = *(&v89 + 1);
    result = v89;
    if ((v90 & 1) == 0)
    {
      v50 = 0;
      if ((v83 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v89 + 1))
    {
      v50 = 1;
      if ((v83 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v88)
    {
      v71 = *(&v88 + 1) - v88;
    }

    else
    {
      v71 = 0;
    }

    v49 = v71 - v89;
    if (__OFSUB__(v71, v89))
    {
      __break(1u);
    }

    else if ((v49 & 0x8000000000000000) == 0)
    {
      v50 = v71 == v89;
      if ((v83 & 1) == 0)
      {
LABEL_38:
        *v48 = v49;
        *(v48 + 8) = v50 & 1;
        return result;
      }

LABEL_30:
      if (v49)
      {
        v72 = v50;
      }

      else
      {
        v72 = 0;
      }

      if (v72)
      {
        v50 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v89, 0, 1);
        if ((result & 1) == 0)
        {
          v49 = 2;
        }

        v50 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v51 = v80;
  sub_182022420(v14, v80);
  v52 = v79;
  sub_181AB5D28(v51, v79, &unk_1EA83A980);
  v53 = sub_182AD27F8();
  v27(v52, v26);
  v54 = *(v53 + 16);

  if (!v54)
  {
    result = sub_181F49A88(v51, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v54 == 1)
  {
    v55 = v77;
    sub_181AB5D28(v51, v77, &unk_1EA83A980);
    v56 = sub_182AD27F8();
    v27(v55, v26);
    if (*(v56 + 16))
    {
      v57 = v78;
      v58 = v75;
      v59 = v76;
      (*(v78 + 16))(v76, v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v75);

      MEMORY[0x1EEE9AC00](v60);
      *(&v74 - 4) = a1;
      *(&v74 - 24) = v83 & 1;
      *(&v74 - 2) = sub_1820E3A18;
      *(&v74 - 1) = v86;
      sub_182AD27D8();
      sub_181F49A88(v51, &unk_1EA83A980);
      return (*(v57 + 8))(v59, v58);
    }

    goto LABEL_44;
  }

  v87 = xmmword_182AE7580;
  sub_181AB5D28(v51, v52, &unk_1EA83A980);
  v61 = sub_182AD27F8();
  v27(v52, v26);
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = *(v78 + 80);
    v82 = v61;
    v64 = v61 + ((v63 + 32) & ~v63);
    v84 = *(v78 + 72);
    v65 = (v78 + 16);
    v66 = v75;
    do
    {
      *(&v89 + 1) = v66;
      *&v90 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v88);
      (*v65)(boxed_opaque_existential_0Tm, v64, v66);
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      sub_182AD1DC8();
      v69 = v86[6];
      v68 = v86[7];
      __swift_destroy_boxed_opaque_existential_1(&v88);
      sub_182AD2178();
      sub_181C1F2E4(v69, v68);
      v64 += v84;
      --v62;
    }

    while (v62);

    v51 = v80;
  }

  else
  {
  }

  v73 = v87;
  MEMORY[0x1EEE9AC00](v70);
  *(&v74 - 4) = a1;
  *(&v74 - 24) = v83 & 1;
  *(&v74 - 2) = sub_1820E3A18;
  *(&v74 - 1) = v86;
  sub_1820E375C(sub_1820E3AF0, (&v74 - 6), v73, *(&v73 + 1));
  sub_181F49A88(v51, &unk_1EA83A980);
  return sub_181C1F2E4(v73, *(&v73 + 1));
}

uint64_t sub_1820DA3F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v7 = sub_182AD27E8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v69 - v22;
  v75 = a3;
  v77[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v69 = v15;
  v70 = a2;
  v24 = swift_projectBox();
  sub_181AB5D28(v24, v23, &qword_1EA8398E0);
  v25 = sub_182AD2868();
  v26 = *(*(v25 - 8) + 8);
  v26(v23, v25);
  v27 = *(a1 + 176);
  v89 = *(a1 + 160);
  v90 = v27;
  v91 = *(a1 + 192);
  v92 = *(a1 + 208);
  v28 = *(a1 + 112);
  v85 = *(a1 + 96);
  v86 = v28;
  v29 = *(a1 + 144);
  v87 = *(a1 + 128);
  v88 = v29;
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v83 = *(a1 + 64);
  v84 = v31;
  v32 = *(a1 + 16);
  v79 = *a1;
  v80 = v32;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    LOBYTE(a2) = v70;
LABEL_4:
    v33 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v33;
    v91 = *(a1 + 192);
    v92 = *(a1 + 208);
    v34 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v34;
    v35 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v35;
    v36 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v36;
    v37 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v37;
    v38 = *(a1 + 16);
    v79 = *a1;
    v80 = v38;
    result = Frame.unclaimedBytes.getter();
    if (v41)
    {
LABEL_5:
      v42 = v76;
      *v76 = 1;
      *(v42 + 8) = 1;
      return result;
    }

    if (result)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    *&v79 = result;
    *(&v79 + 1) = v43;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    sub_182105D48(&v79, v75, &v78);
    v44 = *(&v80 + 1);
    result = v80;
    if ((v81 & 1) == 0)
    {
      v45 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v80 + 1))
    {
      v45 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v79)
    {
      v64 = *(&v79 + 1) - v79;
    }

    else
    {
      v64 = 0;
    }

    v44 = v64 - v80;
    if (__OFSUB__(v64, v80))
    {
      __break(1u);
    }

    else if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v64 == v80;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v66 = v76;
        *v76 = v44;
        *(v66 + 8) = v45 & 1;
        return result;
      }

LABEL_30:
      if (v44)
      {
        v65 = v45;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v45 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v80, 0, 1);
        if ((result & 1) == 0)
        {
          v44 = 2;
        }

        v45 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = v74;
  sub_182022420(v11, v74);
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v47 = sub_182AD27F8();
  v26(v18, v25);
  v48 = *(v47 + 16);

  if (!v48)
  {
    result = sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v48 == 1)
  {
    v49 = v69;
    sub_181AB5D28(v46, v69, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v26(v49, v25);
    v51 = v73;
    if (*(v50 + 16))
    {
      v53 = v71;
      v52 = v72;
      (*(v72 + 16))(v71, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v73);

      MEMORY[0x1EEE9AC00](v54);
      *(&v69 - 4) = a1;
      *(&v69 - 24) = v70 & 1;
      *(&v69 - 2) = sub_1820E3A10;
      *(&v69 - 1) = v77;
      sub_182AD27D8();
      sub_181F49A88(v46, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v78 = xmmword_182AE7580;
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v55 = sub_182AD27F8();
  v26(v18, v25);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v73;
    v58 = *(v72 + 80);
    v71 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v75 = *(v72 + 72);
    v60 = (v72 + 16);
    do
    {
      *(&v80 + 1) = v57;
      *&v81 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v79);
      (*v60)(boxed_opaque_existential_0Tm, v59, v57);
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      sub_182AD1DC8();
      v63 = v77[4];
      v62 = v77[5];
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_182AD2178();
      sub_181C1F2E4(v63, v62);
      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v68 = v78;
  MEMORY[0x1EEE9AC00](v67);
  *(&v69 - 4) = a1;
  *(&v69 - 24) = v70 & 1;
  *(&v69 - 2) = sub_1820E3A10;
  *(&v69 - 1) = v77;
  sub_1820E375C(sub_1820E3AF0, (&v69 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v74, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

uint64_t sub_1820DABF0@<X0>(__int128 *a1@<X0>, int a2@<W1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, void *a6@<X8>)
{
  v83 = a2;
  v85 = a6;
  v10 = sub_182AD27E8();
  v78 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v74 - v23;
  v81 = a3;
  v82 = a4;
  v86[2] = a3;
  v86[3] = a4;
  v84 = a5;
  v86[4] = a5;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v75 = v10;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v98 = a1[10];
  v99 = v28;
  v100 = a1[12];
  v101 = *(a1 + 208);
  v29 = a1[7];
  v94 = a1[6];
  v95 = v29;
  v30 = a1[9];
  v96 = a1[8];
  v97 = v30;
  v31 = a1[3];
  v90 = a1[2];
  v91 = v31;
  v32 = a1[5];
  v92 = a1[4];
  v93 = v32;
  v33 = a1[1];
  v88 = *a1;
  v89 = v33;
  sub_1821438A8(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_181F49A88(v14, &qword_1EA839BA8);
LABEL_4:
    v34 = a1[11];
    v98 = a1[10];
    v99 = v34;
    v100 = a1[12];
    v101 = *(a1 + 208);
    v35 = a1[7];
    v94 = a1[6];
    v95 = v35;
    v36 = a1[9];
    v96 = a1[8];
    v97 = v36;
    v37 = a1[3];
    v90 = a1[2];
    v91 = v37;
    v38 = a1[5];
    v92 = a1[4];
    v93 = v38;
    v39 = a1[1];
    v88 = *a1;
    v89 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v85;
      *v85 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v88 = result;
    *(&v88 + 1) = v44;
    v89 = 0uLL;
    LOBYTE(v90) = 1;
    *v81 = sub_1820E2CC0();
    v45 = sub_1820E2CC0();
    v46 = v82;
    *(v82 + 16) = v45;
    *(v46 + 24) = sub_1820E2CC0();
    v47 = sub_1820E2CC0();
    v48 = v85;
    *v84 = v47;
    v49 = *(&v89 + 1);
    result = v89;
    if ((v90 & 1) == 0)
    {
      v50 = 0;
      if ((v83 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v89 + 1))
    {
      v50 = 1;
      if ((v83 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v88)
    {
      v71 = *(&v88 + 1) - v88;
    }

    else
    {
      v71 = 0;
    }

    v49 = v71 - v89;
    if (__OFSUB__(v71, v89))
    {
      __break(1u);
    }

    else if ((v49 & 0x8000000000000000) == 0)
    {
      v50 = v71 == v89;
      if ((v83 & 1) == 0)
      {
LABEL_38:
        *v48 = v49;
        *(v48 + 8) = v50 & 1;
        return result;
      }

LABEL_30:
      if (v49)
      {
        v72 = v50;
      }

      else
      {
        v72 = 0;
      }

      if (v72)
      {
        v50 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v89, 0, 1);
        if ((result & 1) == 0)
        {
          v49 = 2;
        }

        v50 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v51 = v80;
  sub_182022420(v14, v80);
  v52 = v79;
  sub_181AB5D28(v51, v79, &unk_1EA83A980);
  v53 = sub_182AD27F8();
  v27(v52, v26);
  v54 = *(v53 + 16);

  if (!v54)
  {
    result = sub_181F49A88(v51, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v54 == 1)
  {
    v55 = v77;
    sub_181AB5D28(v51, v77, &unk_1EA83A980);
    v56 = sub_182AD27F8();
    v27(v55, v26);
    if (*(v56 + 16))
    {
      v57 = v78;
      v58 = v75;
      v59 = v76;
      (*(v78 + 16))(v76, v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v75);

      MEMORY[0x1EEE9AC00](v60);
      *(&v74 - 4) = a1;
      *(&v74 - 24) = v83 & 1;
      *(&v74 - 2) = sub_1820E3A2C;
      *(&v74 - 1) = v86;
      sub_182AD27D8();
      sub_181F49A88(v51, &unk_1EA83A980);
      return (*(v57 + 8))(v59, v58);
    }

    goto LABEL_44;
  }

  v87 = xmmword_182AE7580;
  sub_181AB5D28(v51, v52, &unk_1EA83A980);
  v61 = sub_182AD27F8();
  v27(v52, v26);
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = *(v78 + 80);
    v82 = v61;
    v64 = v61 + ((v63 + 32) & ~v63);
    v84 = *(v78 + 72);
    v65 = (v78 + 16);
    v66 = v75;
    do
    {
      *(&v89 + 1) = v66;
      *&v90 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v88);
      (*v65)(boxed_opaque_existential_0Tm, v64, v66);
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      sub_182AD1DC8();
      v69 = v86[6];
      v68 = v86[7];
      __swift_destroy_boxed_opaque_existential_1(&v88);
      sub_182AD2178();
      sub_181C1F2E4(v69, v68);
      v64 += v84;
      --v62;
    }

    while (v62);

    v51 = v80;
  }

  else
  {
  }

  v73 = v87;
  MEMORY[0x1EEE9AC00](v70);
  *(&v74 - 4) = a1;
  *(&v74 - 24) = v83 & 1;
  *(&v74 - 2) = sub_1820E3A2C;
  *(&v74 - 1) = v86;
  sub_1820E375C(sub_1820E3AF0, (&v74 - 6), v73, *(&v73 + 1));
  sub_181F49A88(v51, &unk_1EA83A980);
  return sub_181C1F2E4(v73, *(&v73 + 1));
}

uint64_t sub_1820DB43C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v7 = sub_182AD27E8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v69 - v22;
  v75 = a3;
  v77[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v69 = v15;
  v70 = a2;
  v24 = swift_projectBox();
  sub_181AB5D28(v24, v23, &qword_1EA8398E0);
  v25 = sub_182AD2868();
  v26 = *(*(v25 - 8) + 8);
  v26(v23, v25);
  v27 = *(a1 + 176);
  v89 = *(a1 + 160);
  v90 = v27;
  v91 = *(a1 + 192);
  v92 = *(a1 + 208);
  v28 = *(a1 + 112);
  v85 = *(a1 + 96);
  v86 = v28;
  v29 = *(a1 + 144);
  v87 = *(a1 + 128);
  v88 = v29;
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v83 = *(a1 + 64);
  v84 = v31;
  v32 = *(a1 + 16);
  v79 = *a1;
  v80 = v32;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    LOBYTE(a2) = v70;
LABEL_4:
    v33 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v33;
    v91 = *(a1 + 192);
    v92 = *(a1 + 208);
    v34 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v34;
    v35 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v35;
    v36 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v36;
    v37 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v37;
    v38 = *(a1 + 16);
    v79 = *a1;
    v80 = v38;
    result = Frame.unclaimedBytes.getter();
    if (v41)
    {
LABEL_5:
      v42 = v76;
      *v76 = 1;
      *(v42 + 8) = 1;
      return result;
    }

    if (result)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    *&v79 = result;
    *(&v79 + 1) = v43;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    sub_1821072B8(&v79, v75, &v78);
    v44 = *(&v80 + 1);
    result = v80;
    if ((v81 & 1) == 0)
    {
      v45 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v80 + 1))
    {
      v45 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v79)
    {
      v64 = *(&v79 + 1) - v79;
    }

    else
    {
      v64 = 0;
    }

    v44 = v64 - v80;
    if (__OFSUB__(v64, v80))
    {
      __break(1u);
    }

    else if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v64 == v80;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v66 = v76;
        *v76 = v44;
        *(v66 + 8) = v45 & 1;
        return result;
      }

LABEL_30:
      if (v44)
      {
        v65 = v45;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v45 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v80, 0, 1);
        if ((result & 1) == 0)
        {
          v44 = 2;
        }

        v45 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = v74;
  sub_182022420(v11, v74);
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v47 = sub_182AD27F8();
  v26(v18, v25);
  v48 = *(v47 + 16);

  if (!v48)
  {
    result = sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v48 == 1)
  {
    v49 = v69;
    sub_181AB5D28(v46, v69, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v26(v49, v25);
    v51 = v73;
    if (*(v50 + 16))
    {
      v53 = v71;
      v52 = v72;
      (*(v72 + 16))(v71, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v73);

      MEMORY[0x1EEE9AC00](v54);
      *(&v69 - 4) = a1;
      *(&v69 - 24) = v70 & 1;
      *(&v69 - 2) = sub_1820E3A24;
      *(&v69 - 1) = v77;
      sub_182AD27D8();
      sub_181F49A88(v46, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v78 = xmmword_182AE7580;
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v55 = sub_182AD27F8();
  v26(v18, v25);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v73;
    v58 = *(v72 + 80);
    v71 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v75 = *(v72 + 72);
    v60 = (v72 + 16);
    do
    {
      *(&v80 + 1) = v57;
      *&v81 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v79);
      (*v60)(boxed_opaque_existential_0Tm, v59, v57);
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      sub_182AD1DC8();
      v63 = v77[4];
      v62 = v77[5];
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_182AD2178();
      sub_181C1F2E4(v63, v62);
      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v68 = v78;
  MEMORY[0x1EEE9AC00](v67);
  *(&v69 - 4) = a1;
  *(&v69 - 24) = v70 & 1;
  *(&v69 - 2) = sub_1820E3A24;
  *(&v69 - 1) = v77;
  sub_1820E375C(sub_1820E3AF0, (&v69 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v74, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

uint64_t sub_1820DBC34@<X0>(__int128 *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v82 = a5;
  v9 = sub_182AD27E8();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v73[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v73[-v23];
  v80 = a3;
  v81 = a4;
  v83[2] = a3;
  v83[3] = a4;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v74 = a2;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v95 = a1[10];
  v96 = v28;
  v97 = a1[12];
  v98 = *(a1 + 208);
  v29 = a1[7];
  v91 = a1[6];
  v92 = v29;
  v30 = a1[9];
  v93 = a1[8];
  v94 = v30;
  v31 = a1[3];
  v87 = a1[2];
  v88 = v31;
  v32 = a1[5];
  v89 = a1[4];
  v90 = v32;
  v33 = a1[1];
  v85 = *a1;
  v86 = v33;
  sub_1821438A8(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_181F49A88(v13, &qword_1EA839BA8);
    LOBYTE(a2) = v74;
LABEL_4:
    v34 = a1[11];
    v95 = a1[10];
    v96 = v34;
    v97 = a1[12];
    v98 = *(a1 + 208);
    v35 = a1[7];
    v91 = a1[6];
    v92 = v35;
    v36 = a1[9];
    v93 = a1[8];
    v94 = v36;
    v37 = a1[3];
    v87 = a1[2];
    v88 = v37;
    v38 = a1[5];
    v89 = a1[4];
    v90 = v38;
    v39 = a1[1];
    v85 = *a1;
    v86 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v82;
      *v82 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v85 = result;
    *(&v85 + 1) = v44;
    v86 = 0uLL;
    LOBYTE(v87) = 1;
    *v80 = sub_1820E2CC0();
    v45 = sub_1820E2CC0();
    v46 = v81;
    *(v81 + 16) = v45;
    *(v46 + 24) = sub_1820E2CC0();
    *(v46 + 32) = sub_1820E2CC0();
    v47 = *(&v86 + 1);
    result = v86;
    if ((v87 & 1) == 0)
    {
      v48 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v86 + 1))
    {
      v48 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v85)
    {
      v69 = *(&v85 + 1) - v85;
    }

    else
    {
      v69 = 0;
    }

    v47 = v69 - v86;
    if (__OFSUB__(v69, v86))
    {
      __break(1u);
    }

    else if ((v47 & 0x8000000000000000) == 0)
    {
      v48 = v69 == v86;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v71 = v82;
        *v82 = v47;
        *(v71 + 8) = v48 & 1;
        return result;
      }

LABEL_30:
      if (v47)
      {
        v70 = v48;
      }

      else
      {
        v70 = 0;
      }

      if (v70)
      {
        v48 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v86, 0, 1);
        if ((result & 1) == 0)
        {
          v47 = 2;
        }

        v48 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v49 = v13;
  v50 = v79;
  sub_182022420(v49, v79);
  sub_181AB5D28(v50, v19, &unk_1EA83A980);
  v51 = sub_182AD27F8();
  v27(v19, v26);
  v52 = *(v51 + 16);

  if (!v52)
  {
    result = sub_181F49A88(v50, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v52 == 1)
  {
    v53 = v76;
    sub_181AB5D28(v50, v76, &unk_1EA83A980);
    v54 = sub_182AD27F8();
    v27(v53, v26);
    v55 = v78;
    if (*(v54 + 16))
    {
      v56 = v77;
      v57 = v75;
      (*(v77 + 16))(v75, v54 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v78);

      MEMORY[0x1EEE9AC00](v58);
      *&v73[-32] = a1;
      v73[-24] = v74 & 1;
      *&v73[-16] = sub_1820E3A38;
      *&v73[-8] = v83;
      sub_182AD27D8();
      sub_181F49A88(v50, &unk_1EA83A980);
      return (*(v56 + 8))(v57, v55);
    }

    goto LABEL_44;
  }

  v84 = xmmword_182AE7580;
  sub_181AB5D28(v50, v19, &unk_1EA83A980);
  v59 = sub_182AD27F8();
  v27(v19, v26);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v78;
    v62 = v59 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v63 = *(v77 + 72);
    v80 = v59;
    v81 = v63;
    v64 = (v77 + 16);
    do
    {
      *(&v86 + 1) = v61;
      *&v87 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v85);
      (*v64)(boxed_opaque_existential_0Tm, v62, v61);
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      sub_182AD1DC8();
      v67 = v83[6];
      v66 = v83[7];
      __swift_destroy_boxed_opaque_existential_1(&v85);
      sub_182AD2178();
      sub_181C1F2E4(v67, v66);
      v62 += v81;
      --v60;
    }

    while (v60);

    v50 = v79;
  }

  else
  {
  }

  v72 = v84;
  MEMORY[0x1EEE9AC00](v68);
  *&v73[-32] = a1;
  v73[-24] = v74 & 1;
  *&v73[-16] = sub_1820E3A38;
  *&v73[-8] = v83;
  sub_1820E375C(sub_1820E3AF0, &v73[-48], v72, *(&v72 + 1));
  sub_181F49A88(v50, &unk_1EA83A980);
  return sub_181C1F2E4(v72, *(&v72 + 1));
}

uint64_t sub_1820DC49C@<X0>(__int128 *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v84 = a6;
  v11 = sub_182AD27E8();
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v74[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v74[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v74[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v74[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v74[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v74[-v24];
  v82 = a3;
  v83 = a4;
  v85[2] = a3;
  v85[3] = a4;
  v26 = a5;
  v85[4] = a5;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v75 = a2;
  v27 = swift_projectBox();
  sub_181AB5D28(v27, v25, &qword_1EA8398E0);
  v28 = sub_182AD2868();
  v29 = *(*(v28 - 8) + 8);
  v29(v25, v28);
  v30 = a1[11];
  v97 = a1[10];
  v98 = v30;
  v99 = a1[12];
  v100 = *(a1 + 208);
  v31 = a1[7];
  v93 = a1[6];
  v94 = v31;
  v32 = a1[9];
  v95 = a1[8];
  v96 = v32;
  v33 = a1[3];
  v89 = a1[2];
  v90 = v33;
  v34 = a1[5];
  v91 = a1[4];
  v92 = v34;
  v35 = a1[1];
  v87 = *a1;
  v88 = v35;
  sub_1821438A8(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_181F49A88(v15, &qword_1EA839BA8);
    LOBYTE(a2) = v75;
LABEL_4:
    v36 = a1[11];
    v97 = a1[10];
    v98 = v36;
    v99 = a1[12];
    v100 = *(a1 + 208);
    v37 = a1[7];
    v93 = a1[6];
    v94 = v37;
    v38 = a1[9];
    v95 = a1[8];
    v96 = v38;
    v39 = a1[3];
    v89 = a1[2];
    v90 = v39;
    v40 = a1[5];
    v91 = a1[4];
    v92 = v40;
    v41 = a1[1];
    v87 = *a1;
    v88 = v41;
    result = Frame.unclaimedBytes.getter();
    if (v44)
    {
LABEL_5:
      v45 = v84;
      *v84 = 1;
      *(v45 + 8) = 1;
      return result;
    }

    if (result)
    {
      v46 = v43;
    }

    else
    {
      v46 = 0;
    }

    *&v87 = result;
    *(&v87 + 1) = v46;
    v88 = 0uLL;
    LOBYTE(v89) = 1;
    *v82 = sub_1820E2CC0();
    *(v83 + 16) = sub_1820E2CC0();
    v47 = sub_1820E2CC0();
    *v26 = v47;
    Deserializer.buffer(_:length:)(v47, &v86);
    v48 = *(&v88 + 1);
    result = v88;
    if ((v89 & 1) == 0)
    {
      v49 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v88 + 1))
    {
      v49 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v87)
    {
      v69 = *(&v87 + 1) - v87;
    }

    else
    {
      v69 = 0;
    }

    v48 = v69 - v88;
    if (__OFSUB__(v69, v88))
    {
      __break(1u);
    }

    else if ((v48 & 0x8000000000000000) == 0)
    {
      v49 = v69 == v88;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v71 = v84;
        *v84 = v48;
        *(v71 + 8) = v49 & 1;
        return result;
      }

LABEL_30:
      if (v48)
      {
        v70 = v49;
      }

      else
      {
        v70 = 0;
      }

      if (v70)
      {
        v49 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v88, 0, 1);
        if ((result & 1) == 0)
        {
          v48 = 2;
        }

        v49 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v50 = v81;
  sub_182022420(v15, v81);
  v51 = v80;
  sub_181AB5D28(v50, v80, &unk_1EA83A980);
  v52 = sub_182AD27F8();
  v29(v51, v28);
  v53 = *(v52 + 16);

  if (!v53)
  {
    result = sub_181F49A88(v50, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v53 == 1)
  {
    v54 = v77;
    sub_181AB5D28(v50, v77, &unk_1EA83A980);
    v55 = sub_182AD27F8();
    v29(v54, v28);
    v56 = v79;
    if (*(v55 + 16))
    {
      v57 = v78;
      v58 = v76;
      (*(v78 + 16))(v76, v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v79);

      MEMORY[0x1EEE9AC00](v59);
      *&v74[-32] = a1;
      v74[-24] = v75 & 1;
      *&v74[-16] = sub_1820E3A48;
      *&v74[-8] = v85;
      sub_182AD27D8();
      sub_181F49A88(v50, &unk_1EA83A980);
      return (*(v57 + 8))(v58, v56);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v86 = xmmword_182AE7580;
  sub_181AB5D28(v50, v51, &unk_1EA83A980);
  v60 = sub_182AD27F8();
  v29(v51, v28);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = v79;
    v63 = v60 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v64 = *(v78 + 72);
    v82 = v60;
    v83 = v64;
    v65 = (v78 + 16);
    do
    {
      *(&v88 + 1) = v62;
      *&v89 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v87);
      (*v65)(boxed_opaque_existential_0Tm, v63, v62);
      __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
      sub_182AD1DC8();
      v68 = v85[6];
      v67 = v85[7];
      __swift_destroy_boxed_opaque_existential_1(&v87);
      sub_182AD2178();
      sub_181C1F2E4(v68, v67);
      v63 += v83;
      --v61;
    }

    while (v61);
  }

  v73 = v86;
  MEMORY[0x1EEE9AC00](v72);
  *&v74[-32] = a1;
  v74[-24] = v75 & 1;
  *&v74[-16] = sub_1820E3A48;
  *&v74[-8] = v85;
  sub_1820E375C(sub_1820E3AF0, &v74[-48], v73, *(&v73 + 1));
  sub_181F49A88(v81, &unk_1EA83A980);
  return sub_181C1F2E4(v73, *(&v73 + 1));
}

uint64_t sub_1820DCCDC@<X0>(__int128 *a1@<X0>, int a2@<W1>, unint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v81 = a2;
  v83 = a6;
  v10 = sub_182AD27E8();
  v76 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v72 - v23;
  v79 = a3;
  v80 = a4;
  v84[2] = a3;
  v84[3] = a4;
  v82 = a5;
  v84[4] = a5;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v73 = v10;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v96 = a1[10];
  v97 = v28;
  v98 = a1[12];
  v99 = *(a1 + 208);
  v29 = a1[7];
  v92 = a1[6];
  v93 = v29;
  v30 = a1[9];
  v94 = a1[8];
  v95 = v30;
  v31 = a1[3];
  v88 = a1[2];
  v89 = v31;
  v32 = a1[5];
  v90 = a1[4];
  v91 = v32;
  v33 = a1[1];
  v86 = *a1;
  v87 = v33;
  sub_1821438A8(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_181F49A88(v14, &qword_1EA839BA8);
LABEL_4:
    v34 = a1[11];
    v96 = a1[10];
    v97 = v34;
    v98 = a1[12];
    v99 = *(a1 + 208);
    v35 = a1[7];
    v92 = a1[6];
    v93 = v35;
    v36 = a1[9];
    v94 = a1[8];
    v95 = v36;
    v37 = a1[3];
    v88 = a1[2];
    v89 = v37;
    v38 = a1[5];
    v90 = a1[4];
    v91 = v38;
    v39 = a1[1];
    v86 = *a1;
    v87 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v83;
      *v83 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v86 = result;
    *(&v86 + 1) = v44;
    v87 = 0uLL;
    LOBYTE(v88) = 1;
    *v79 = sub_1820E2CC0();
    v45 = sub_1820E2CC0();
    *v80 = v45;
    Deserializer.buffer(_:length:)(v45, &v85);
    v46 = *(&v87 + 1);
    result = v87;
    v47 = v83;
    if ((v88 & 1) == 0)
    {
      v48 = 0;
      if ((v81 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v87 + 1))
    {
      v48 = 1;
      if ((v81 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v86)
    {
      v69 = *(&v86 + 1) - v86;
    }

    else
    {
      v69 = 0;
    }

    v46 = v69 - v87;
    if (__OFSUB__(v69, v87))
    {
      __break(1u);
    }

    else if ((v46 & 0x8000000000000000) == 0)
    {
      v48 = v69 == v87;
      if ((v81 & 1) == 0)
      {
LABEL_38:
        *v47 = v46;
        *(v47 + 8) = v48 & 1;
        return result;
      }

LABEL_30:
      if (v46)
      {
        v70 = v48;
      }

      else
      {
        v70 = 0;
      }

      if (v70)
      {
        v48 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v87, 0, 1);
        if ((result & 1) == 0)
        {
          v46 = 2;
        }

        v48 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v49 = v78;
  sub_182022420(v14, v78);
  v50 = v77;
  sub_181AB5D28(v49, v77, &unk_1EA83A980);
  v51 = sub_182AD27F8();
  v27(v50, v26);
  v52 = *(v51 + 16);

  if (!v52)
  {
    result = sub_181F49A88(v49, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v52 == 1)
  {
    v53 = v75;
    sub_181AB5D28(v49, v75, &unk_1EA83A980);
    v54 = sub_182AD27F8();
    v27(v53, v26);
    if (*(v54 + 16))
    {
      v55 = v76;
      v56 = v73;
      v57 = v74;
      (*(v76 + 16))(v74, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v73);

      MEMORY[0x1EEE9AC00](v58);
      *(&v72 - 4) = a1;
      *(&v72 - 24) = v81 & 1;
      *(&v72 - 2) = sub_1820E3A54;
      *(&v72 - 1) = v84;
      sub_182AD27D8();
      sub_181F49A88(v49, &unk_1EA83A980);
      return (*(v55 + 8))(v57, v56);
    }

    goto LABEL_44;
  }

  v85 = xmmword_182AE7580;
  sub_181AB5D28(v49, v50, &unk_1EA83A980);
  v59 = sub_182AD27F8();
  v27(v50, v26);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = *(v76 + 80);
    v80 = v59;
    v62 = v59 + ((v61 + 32) & ~v61);
    v82 = *(v76 + 72);
    v63 = (v76 + 16);
    v64 = v73;
    do
    {
      *(&v87 + 1) = v64;
      *&v88 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v86);
      (*v63)(boxed_opaque_existential_0Tm, v62, v64);
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      sub_182AD1DC8();
      v67 = v84[6];
      v66 = v84[7];
      __swift_destroy_boxed_opaque_existential_1(&v86);
      sub_182AD2178();
      sub_181C1F2E4(v67, v66);
      v62 += v82;
      --v60;
    }

    while (v60);

    v49 = v78;
  }

  else
  {
  }

  v71 = v85;
  MEMORY[0x1EEE9AC00](v68);
  *(&v72 - 4) = a1;
  *(&v72 - 24) = v81 & 1;
  *(&v72 - 2) = sub_1820E3A54;
  *(&v72 - 1) = v84;
  sub_1820E375C(sub_1820E3AF0, (&v72 - 6), v71, *(&v71 + 1));
  sub_181F49A88(v49, &unk_1EA83A980);
  return sub_181C1F2E4(v71, *(&v71 + 1));
}

uint64_t sub_1820DD528@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v90 = a6;
  v11 = sub_182AD27E8();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v79[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v79[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v79[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v79[-v24];
  v88 = a3;
  v89 = a4;
  v91[2] = a3;
  v91[3] = a4;
  v85 = a5;
  v91[4] = a5;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v80 = a2;
  v26 = swift_projectBox();
  sub_181AB5D28(v26, v25, &qword_1EA8398E0);
  v27 = sub_182AD2868();
  v28 = *(*(v27 - 8) + 8);
  v28(v25, v27);
  v29 = a1[11];
  v103 = a1[10];
  v104 = v29;
  v105 = a1[12];
  v106 = *(a1 + 208);
  v30 = a1[7];
  v99 = a1[6];
  v100 = v30;
  v31 = a1[9];
  v101 = a1[8];
  v102 = v31;
  v32 = a1[3];
  v95 = a1[2];
  v96 = v32;
  v33 = a1[5];
  v97 = a1[4];
  v98 = v33;
  v34 = a1[1];
  v93 = *a1;
  v94 = v34;
  sub_1821438A8(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_181F49A88(v15, &qword_1EA839BA8);
    LOBYTE(a2) = v80;
LABEL_4:
    v35 = a1[11];
    v103 = a1[10];
    v104 = v35;
    v105 = a1[12];
    v106 = *(a1 + 208);
    v36 = a1[7];
    v99 = a1[6];
    v100 = v36;
    v37 = a1[9];
    v101 = a1[8];
    v102 = v37;
    v38 = a1[3];
    v95 = a1[2];
    v96 = v38;
    v39 = a1[5];
    v97 = a1[4];
    v98 = v39;
    v40 = a1[1];
    v93 = *a1;
    v94 = v40;
    result = Frame.unclaimedBytes.getter();
    if (v43)
    {
LABEL_5:
      v44 = v90;
      *v90 = 1;
      *(v44 + 8) = 1;
      return result;
    }

    if (result)
    {
      v45 = v42;
    }

    else
    {
      v45 = 0;
    }

    *&v93 = result;
    *(&v93 + 1) = v45;
    v94 = 0uLL;
    LOBYTE(v95) = 1;
    v46 = sub_1820E2CC0();
    v47 = v88;
    *v88 = v46;
    v48 = sub_1820E2CC0();
    v49 = v89;
    *(v89 + 16) = v48;
    v50 = *v47;
    if ((*v47 & 4) != 0)
    {
      *(v49 + 24) = sub_1820E2CC0();
      v50 = *v47;
    }

    if ((v50 & 2) != 0)
    {
      v62 = sub_1820E2CC0();
      *v85 = v62;
      Deserializer.buffer(_:length:)(v62, &v92);
    }

    else
    {
      Deserializer.buffer(_:)(&v92);
    }

    v63 = *(&v94 + 1);
    result = v94;
    if (v95 != 1)
    {
      v64 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if (*(&v94 + 1))
    {
      v64 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if (v93)
    {
      v75 = *(&v93 + 1) - v93;
    }

    else
    {
      v75 = 0;
    }

    v63 = v75 - v94;
    if (__OFSUB__(v75, v94))
    {
      __break(1u);
    }

    else if ((v63 & 0x8000000000000000) == 0)
    {
      v64 = v75 == v94;
      if ((a2 & 1) == 0)
      {
LABEL_43:
        v77 = v90;
        *v90 = v63;
        *(v77 + 8) = v64 & 1;
        return result;
      }

LABEL_35:
      if (v63)
      {
        v76 = v64;
      }

      else
      {
        v76 = 0;
      }

      if (v76)
      {
        v64 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v94, 0, 1);
        if ((result & 1) == 0)
        {
          v63 = 2;
        }

        v64 |= result ^ 1;
      }

      goto LABEL_43;
    }

    __break(1u);
LABEL_49:

    __break(1u);
    return result;
  }

  v51 = v15;
  v52 = v87;
  sub_182022420(v51, v87);
  v53 = v86;
  sub_181AB5D28(v52, v86, &unk_1EA83A980);
  v54 = sub_182AD27F8();
  v28(v53, v27);
  v55 = *(v54 + 16);

  if (!v55)
  {
    result = sub_181F49A88(v52, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v55 == 1)
  {
    v56 = v82;
    sub_181AB5D28(v52, v82, &unk_1EA83A980);
    v57 = sub_182AD27F8();
    v28(v56, v27);
    v58 = v84;
    if (*(v57 + 16))
    {
      v59 = v83;
      v60 = v81;
      (*(v83 + 16))(v81, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v84);

      MEMORY[0x1EEE9AC00](v61);
      *&v79[-32] = a1;
      v79[-24] = v80 & 1;
      *&v79[-16] = sub_1820E3A60;
      *&v79[-8] = v91;
      sub_182AD27D8();
      sub_181F49A88(v52, &unk_1EA83A980);
      return (*(v59 + 8))(v60, v58);
    }

    goto LABEL_49;
  }

  v92 = xmmword_182AE7580;
  sub_181AB5D28(v52, v53, &unk_1EA83A980);
  v65 = sub_182AD27F8();
  v28(v53, v27);
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = v84;
    v68 = v65 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v69 = *(v83 + 72);
    v88 = v65;
    v89 = v69;
    v70 = (v83 + 16);
    do
    {
      *(&v94 + 1) = v67;
      *&v95 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v93);
      (*v70)(boxed_opaque_existential_0Tm, v68, v67);
      __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
      sub_182AD1DC8();
      v73 = v91[6];
      v72 = v91[7];
      __swift_destroy_boxed_opaque_existential_1(&v93);
      sub_182AD2178();
      sub_181C1F2E4(v73, v72);
      v68 += v89;
      --v66;
    }

    while (v66);

    v52 = v87;
  }

  else
  {
  }

  v78 = v92;
  MEMORY[0x1EEE9AC00](v74);
  *&v79[-32] = a1;
  v79[-24] = v80 & 1;
  *&v79[-16] = sub_1820E3A60;
  *&v79[-8] = v91;
  sub_1820E375C(sub_1820E3AF0, &v79[-48], v78, *(&v78 + 1));
  sub_181F49A88(v52, &unk_1EA83A980);
  return sub_181C1F2E4(v78, *(&v78 + 1));
}

uint64_t sub_1820DDDE4@<X0>(__int128 *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v81 = a7;
  v79 = a6;
  v84 = a5;
  v88 = a8;
  v12 = sub_182AD27E8();
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v76[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v76[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v76[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v76[-v26];
  v86 = a3;
  v87 = a4;
  v89[2] = a3;
  v89[3] = a4;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v77 = a2;
  v28 = swift_projectBox();
  sub_181AB5D28(v28, v27, &qword_1EA8398E0);
  v29 = sub_182AD2868();
  v30 = *(*(v29 - 8) + 8);
  v30(v27, v29);
  v31 = a1[11];
  v101 = a1[10];
  v102 = v31;
  v103 = a1[12];
  v104 = *(a1 + 208);
  v32 = a1[7];
  v97 = a1[6];
  v98 = v32;
  v33 = a1[9];
  v99 = a1[8];
  v100 = v33;
  v34 = a1[3];
  v93 = a1[2];
  v94 = v34;
  v35 = a1[5];
  v95 = a1[4];
  v96 = v35;
  v36 = a1[1];
  v91 = *a1;
  v92 = v36;
  sub_1821438A8(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_181F49A88(v16, &qword_1EA839BA8);
    LOBYTE(a2) = v77;
LABEL_4:
    v37 = a2;
    v38 = a1[11];
    v101 = a1[10];
    v102 = v38;
    v103 = a1[12];
    v104 = *(a1 + 208);
    v39 = a1[7];
    v97 = a1[6];
    v98 = v39;
    v40 = a1[9];
    v99 = a1[8];
    v100 = v40;
    v41 = a1[3];
    v93 = a1[2];
    v94 = v41;
    v42 = a1[5];
    v95 = a1[4];
    v96 = v42;
    v43 = a1[1];
    v91 = *a1;
    v92 = v43;
    result = Frame.unclaimedBytes.getter();
    if (v46)
    {
LABEL_5:
      v47 = v88;
      *v88 = 1;
      *(v47 + 8) = 1;
      return result;
    }

    if (result)
    {
      v48 = v45;
    }

    else
    {
      v48 = 0;
    }

    *&v91 = result;
    *(&v91 + 1) = v48;
    v92 = 0uLL;
    LOBYTE(v93) = 1;
    *v86 = sub_1820E2CC0();
    v49 = sub_1820E2CC0();
    v50 = v87;
    *(v87 + 16) = v49;
    *(v50 + 24) = sub_1820E2CC0();
    v51 = *(&v92 + 1);
    result = v92;
    if ((v93 & 1) == 0)
    {
      v52 = 0;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v92 + 1))
    {
      v52 = 1;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v91)
    {
      v72 = *(&v91 + 1) - v91;
    }

    else
    {
      v72 = 0;
    }

    v51 = v72 - v92;
    if (__OFSUB__(v72, v92))
    {
      __break(1u);
    }

    else if ((v51 & 0x8000000000000000) == 0)
    {
      v52 = v72 == v92;
      if ((v37 & 1) == 0)
      {
LABEL_38:
        v74 = v88;
        *v88 = v51;
        *(v74 + 8) = v52 & 1;
        return result;
      }

LABEL_30:
      if (v51)
      {
        v73 = v52;
      }

      else
      {
        v73 = 0;
      }

      if (v73)
      {
        v52 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v92, 0, 1);
        if ((result & 1) == 0)
        {
          v51 = 2;
        }

        v52 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v53 = v85;
  sub_182022420(v16, v85);
  sub_181AB5D28(v53, v22, &unk_1EA83A980);
  v54 = sub_182AD27F8();
  v30(v22, v29);
  v55 = *(v54 + 16);

  if (!v55)
  {
    result = sub_181F49A88(v53, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v55 == 1)
  {
    v56 = v80;
    sub_181AB5D28(v53, v80, &unk_1EA83A980);
    v57 = sub_182AD27F8();
    v30(v56, v29);
    v58 = v83;
    if (*(v57 + 16))
    {
      v59 = v82;
      v60 = v78;
      (*(v82 + 16))(v78, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v83);

      MEMORY[0x1EEE9AC00](v61);
      *&v76[-32] = a1;
      v76[-24] = v77 & 1;
      *&v76[-16] = v84;
      *&v76[-8] = v89;
      sub_182AD27D8();
      sub_181F49A88(v53, &unk_1EA83A980);
      return (*(v59 + 8))(v60, v58);
    }

    goto LABEL_44;
  }

  v90 = xmmword_182AE7580;
  sub_181AB5D28(v53, v22, &unk_1EA83A980);
  v62 = sub_182AD27F8();
  v30(v22, v29);
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = v83;
    v65 = v62 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v66 = *(v82 + 72);
    v86 = v62;
    v87 = v66;
    v67 = (v82 + 16);
    do
    {
      *(&v92 + 1) = v64;
      *&v93 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v91);
      (*v67)(boxed_opaque_existential_0Tm, v65, v64);
      __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
      sub_182AD1DC8();
      v70 = v89[6];
      v69 = v89[7];
      __swift_destroy_boxed_opaque_existential_1(&v91);
      sub_182AD2178();
      sub_181C1F2E4(v70, v69);
      v65 += v87;
      --v63;
    }

    while (v63);

    v53 = v85;
  }

  else
  {
  }

  v75 = v90;
  MEMORY[0x1EEE9AC00](v71);
  *&v76[-32] = a1;
  v76[-24] = v77 & 1;
  *&v76[-16] = v84;
  *&v76[-8] = v89;
  sub_1820E375C(v81, &v76[-48], v75, *(&v75 + 1));
  sub_181F49A88(v53, &unk_1EA83A980);
  return sub_181C1F2E4(v75, *(&v75 + 1));
}

uint64_t sub_1820DE5DC@<X0>(__int128 *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v79 = a7;
  v77 = a6;
  v82 = a5;
  v86 = a8;
  v12 = sub_182AD27E8();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v74[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v74[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v74[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v74[-v26];
  v84 = a3;
  v85 = a4;
  v87[2] = a3;
  v87[3] = a4;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v75 = a2;
  v28 = swift_projectBox();
  sub_181AB5D28(v28, v27, &qword_1EA8398E0);
  v29 = sub_182AD2868();
  v30 = *(*(v29 - 8) + 8);
  v30(v27, v29);
  v31 = a1[11];
  v99 = a1[10];
  v100 = v31;
  v101 = a1[12];
  v102 = *(a1 + 208);
  v32 = a1[7];
  v95 = a1[6];
  v96 = v32;
  v33 = a1[9];
  v97 = a1[8];
  v98 = v33;
  v34 = a1[3];
  v91 = a1[2];
  v92 = v34;
  v35 = a1[5];
  v93 = a1[4];
  v94 = v35;
  v36 = a1[1];
  v89 = *a1;
  v90 = v36;
  sub_1821438A8(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_181F49A88(v16, &qword_1EA839BA8);
    LOBYTE(a2) = v75;
LABEL_4:
    v37 = a2;
    v38 = a1[11];
    v99 = a1[10];
    v100 = v38;
    v101 = a1[12];
    v102 = *(a1 + 208);
    v39 = a1[7];
    v95 = a1[6];
    v96 = v39;
    v40 = a1[9];
    v97 = a1[8];
    v98 = v40;
    v41 = a1[3];
    v91 = a1[2];
    v92 = v41;
    v42 = a1[5];
    v93 = a1[4];
    v94 = v42;
    v43 = a1[1];
    v89 = *a1;
    v90 = v43;
    result = Frame.unclaimedBytes.getter();
    if (v46)
    {
LABEL_5:
      v47 = v86;
      *v86 = 1;
      *(v47 + 8) = 1;
      return result;
    }

    if (result)
    {
      v48 = v45;
    }

    else
    {
      v48 = 0;
    }

    *&v89 = result;
    *(&v89 + 1) = v48;
    v90 = 0uLL;
    LOBYTE(v91) = 1;
    *v84 = sub_1820E2CC0();
    *(v85 + 16) = sub_1820E2CC0();
    v49 = *(&v90 + 1);
    result = v90;
    if ((v91 & 1) == 0)
    {
      v50 = 0;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v90 + 1))
    {
      v50 = 1;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v89)
    {
      v70 = *(&v89 + 1) - v89;
    }

    else
    {
      v70 = 0;
    }

    v49 = v70 - v90;
    if (__OFSUB__(v70, v90))
    {
      __break(1u);
    }

    else if ((v49 & 0x8000000000000000) == 0)
    {
      v50 = v70 == v90;
      if ((v37 & 1) == 0)
      {
LABEL_38:
        v72 = v86;
        *v86 = v49;
        *(v72 + 8) = v50 & 1;
        return result;
      }

LABEL_30:
      if (v49)
      {
        v71 = v50;
      }

      else
      {
        v71 = 0;
      }

      if (v71)
      {
        v50 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v90, 0, 1);
        if ((result & 1) == 0)
        {
          v49 = 2;
        }

        v50 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v51 = v83;
  sub_182022420(v16, v83);
  sub_181AB5D28(v51, v22, &unk_1EA83A980);
  v52 = sub_182AD27F8();
  v30(v22, v29);
  v53 = *(v52 + 16);

  if (!v53)
  {
    result = sub_181F49A88(v51, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v53 == 1)
  {
    v54 = v78;
    sub_181AB5D28(v51, v78, &unk_1EA83A980);
    v55 = sub_182AD27F8();
    v30(v54, v29);
    v56 = v81;
    if (*(v55 + 16))
    {
      v57 = v80;
      v58 = v76;
      (*(v80 + 16))(v76, v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v81);

      MEMORY[0x1EEE9AC00](v59);
      *&v74[-32] = a1;
      v74[-24] = v75 & 1;
      *&v74[-16] = v82;
      *&v74[-8] = v87;
      sub_182AD27D8();
      sub_181F49A88(v51, &unk_1EA83A980);
      return (*(v57 + 8))(v58, v56);
    }

    goto LABEL_44;
  }

  v88 = xmmword_182AE7580;
  sub_181AB5D28(v51, v22, &unk_1EA83A980);
  v60 = sub_182AD27F8();
  v30(v22, v29);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = v81;
    v63 = v60 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v64 = *(v80 + 72);
    v84 = v60;
    v85 = v64;
    v65 = (v80 + 16);
    do
    {
      *(&v90 + 1) = v62;
      *&v91 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v89);
      (*v65)(boxed_opaque_existential_0Tm, v63, v62);
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      sub_182AD1DC8();
      v68 = v87[6];
      v67 = v87[7];
      __swift_destroy_boxed_opaque_existential_1(&v89);
      sub_182AD2178();
      sub_181C1F2E4(v68, v67);
      v63 += v85;
      --v61;
    }

    while (v61);

    v51 = v83;
  }

  else
  {
  }

  v73 = v88;
  MEMORY[0x1EEE9AC00](v69);
  *&v74[-32] = a1;
  v74[-24] = v75 & 1;
  *&v74[-16] = v82;
  *&v74[-8] = v87;
  sub_1820E375C(v79, &v74[-48], v73, *(&v73 + 1));
  sub_181F49A88(v51, &unk_1EA83A980);
  return sub_181C1F2E4(v73, *(&v73 + 1));
}

uint64_t sub_1820DEE08@<X0>(__int128 *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v81 = a7;
  v79 = a6;
  v84 = a5;
  v88 = a8;
  v12 = sub_182AD27E8();
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v76[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v76[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v76[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v76[-v26];
  v86 = a3;
  v87 = a4;
  v89[2] = a3;
  v89[3] = a4;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v77 = a2;
  v28 = swift_projectBox();
  sub_181AB5D28(v28, v27, &qword_1EA8398E0);
  v29 = sub_182AD2868();
  v30 = *(*(v29 - 8) + 8);
  v30(v27, v29);
  v31 = a1[11];
  v101 = a1[10];
  v102 = v31;
  v103 = a1[12];
  v104 = *(a1 + 208);
  v32 = a1[7];
  v97 = a1[6];
  v98 = v32;
  v33 = a1[9];
  v99 = a1[8];
  v100 = v33;
  v34 = a1[3];
  v93 = a1[2];
  v94 = v34;
  v35 = a1[5];
  v95 = a1[4];
  v96 = v35;
  v36 = a1[1];
  v91 = *a1;
  v92 = v36;
  sub_1821438A8(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_181F49A88(v16, &qword_1EA839BA8);
    LOBYTE(a2) = v77;
LABEL_4:
    v37 = a2;
    v38 = a1[11];
    v101 = a1[10];
    v102 = v38;
    v103 = a1[12];
    v104 = *(a1 + 208);
    v39 = a1[7];
    v97 = a1[6];
    v98 = v39;
    v40 = a1[9];
    v99 = a1[8];
    v100 = v40;
    v41 = a1[3];
    v93 = a1[2];
    v94 = v41;
    v42 = a1[5];
    v95 = a1[4];
    v96 = v42;
    v43 = a1[1];
    v91 = *a1;
    v92 = v43;
    result = Frame.unclaimedBytes.getter();
    if (v46)
    {
LABEL_5:
      v47 = v88;
      *v88 = 1;
      *(v47 + 8) = 1;
      return result;
    }

    if (result)
    {
      v48 = v45;
    }

    else
    {
      v48 = 0;
    }

    *&v91 = result;
    *(&v91 + 1) = v48;
    v92 = 0uLL;
    LOBYTE(v93) = 1;
    v49 = sub_1820E2CC0();
    v50 = v87;
    *v86 = v49;
    Deserializer.uint64(_:)((v50 + 16), &v90);
    v51 = *(&v92 + 1);
    result = v92;
    if ((v93 & 1) == 0)
    {
      v52 = 0;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v92 + 1))
    {
      v52 = 1;
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v91)
    {
      v72 = *(&v91 + 1) - v91;
    }

    else
    {
      v72 = 0;
    }

    v51 = v72 - v92;
    if (__OFSUB__(v72, v92))
    {
      __break(1u);
    }

    else if ((v51 & 0x8000000000000000) == 0)
    {
      v52 = v72 == v92;
      if ((v37 & 1) == 0)
      {
LABEL_38:
        v74 = v88;
        *v88 = v51;
        *(v74 + 8) = v52 & 1;
        return result;
      }

LABEL_30:
      if (v51)
      {
        v73 = v52;
      }

      else
      {
        v73 = 0;
      }

      if (v73)
      {
        v52 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v92, 0, 1);
        if ((result & 1) == 0)
        {
          v51 = 2;
        }

        v52 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v53 = v85;
  sub_182022420(v16, v85);
  sub_181AB5D28(v53, v22, &unk_1EA83A980);
  v54 = sub_182AD27F8();
  v30(v22, v29);
  v55 = *(v54 + 16);

  if (!v55)
  {
    result = sub_181F49A88(v53, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v55 == 1)
  {
    v56 = v80;
    sub_181AB5D28(v53, v80, &unk_1EA83A980);
    v57 = sub_182AD27F8();
    v30(v56, v29);
    v58 = v83;
    if (*(v57 + 16))
    {
      v59 = v82;
      v60 = v78;
      (*(v82 + 16))(v78, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v83);

      MEMORY[0x1EEE9AC00](v61);
      *&v76[-32] = a1;
      v76[-24] = v77 & 1;
      *&v76[-16] = v84;
      *&v76[-8] = v89;
      sub_182AD27D8();
      sub_181F49A88(v53, &unk_1EA83A980);
      return (*(v59 + 8))(v60, v58);
    }

    goto LABEL_44;
  }

  v90 = xmmword_182AE7580;
  sub_181AB5D28(v53, v22, &unk_1EA83A980);
  v62 = sub_182AD27F8();
  v30(v22, v29);
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = v83;
    v65 = v62 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v66 = *(v82 + 72);
    v86 = v62;
    v87 = v66;
    v67 = (v82 + 16);
    do
    {
      *(&v92 + 1) = v64;
      *&v93 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v91);
      (*v67)(boxed_opaque_existential_0Tm, v65, v64);
      __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
      sub_182AD1DC8();
      v70 = v89[6];
      v69 = v89[7];
      __swift_destroy_boxed_opaque_existential_1(&v91);
      sub_182AD2178();
      sub_181C1F2E4(v70, v69);
      v65 += v87;
      --v63;
    }

    while (v63);

    v53 = v85;
  }

  else
  {
  }

  v75 = v90;
  MEMORY[0x1EEE9AC00](v71);
  *&v76[-32] = a1;
  v76[-24] = v77 & 1;
  *&v76[-16] = v84;
  *&v76[-8] = v89;
  sub_1820E375C(v81, &v76[-48], v75, *(&v75 + 1));
  sub_181F49A88(v53, &unk_1EA83A980);
  return sub_181C1F2E4(v75, *(&v75 + 1));
}

uint64_t sub_1820DF5F4@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v88 = a6;
  v11 = sub_182AD27E8();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v78[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v78[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v78[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v78[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v78[-v24];
  v87 = a3;
  v89[2] = a3;
  v89[3] = a4;
  v82 = a4;
  v26 = a5;
  v89[4] = a5;
  if (*(a1 + 24) != 2)
  {
LABEL_4:
    v36 = a1[11];
    v101 = a1[10];
    v102 = v36;
    v103 = a1[12];
    v104 = *(a1 + 208);
    v37 = a1[7];
    v97 = a1[6];
    v98 = v37;
    v38 = a1[9];
    v99 = a1[8];
    v100 = v38;
    v39 = a1[3];
    v93 = a1[2];
    v94 = v39;
    v40 = a1[5];
    v95 = a1[4];
    v96 = v40;
    v41 = a1[1];
    v91 = *a1;
    v92 = v41;
    result = Frame.unclaimedBytes.getter();
    if (v44)
    {
LABEL_5:
      v45 = v88;
      *v88 = 1;
      *(v45 + 8) = 1;
      return result;
    }

    if (result)
    {
      v46 = v43;
    }

    else
    {
      v46 = 0;
    }

    *&v91 = result;
    *(&v91 + 1) = v46;
    v92 = 0uLL;
    LOBYTE(v93) = 1;
    v47 = *v87;
    if (*(v87 + 8))
    {
      if (*(v87 + 8) == 1 && (v47 & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v60 = __CFADD__(v47, 8);
      v61 = v47 + 8;
      if (v60)
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v61 == 49)
      {
LABEL_12:
        v48 = *v82;
        if ((*v82 & 0x8000000000000000) == 0)
        {
          if (!__OFSUB__(v48, *v26))
          {
            Deserializer.buffer(_:length:)(v48 - *v26, &v90);
            goto LABEL_22;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    Deserializer.buffer(_:)(&v90);
LABEL_22:
    v62 = *(&v92 + 1);
    result = v92;
    if (v93 != 1)
    {
      v63 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    if (*(&v92 + 1))
    {
      v63 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    if (v91)
    {
      v74 = *(&v91 + 1) - v91;
    }

    else
    {
      v74 = 0;
    }

    v62 = v74 - v92;
    if (!__OFSUB__(v74, v92))
    {
      if ((v62 & 0x8000000000000000) == 0)
      {
        v63 = v74 == v92;
        if ((a2 & 1) == 0)
        {
LABEL_47:
          v76 = v88;
          *v88 = v62;
          *(v76 + 8) = v63 & 1;
          return result;
        }

LABEL_39:
        if (v62)
        {
          v75 = v63;
        }

        else
        {
          v75 = 0;
        }

        if (v75)
        {
          v63 = 1;
        }

        else
        {
          result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v92, 0, 1);
          if ((result & 1) == 0)
          {
            v62 = 2;
          }

          v63 |= result ^ 1;
        }

        goto LABEL_47;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:

    __break(1u);
    return result;
  }

  v79 = a2;
  v27 = swift_projectBox();
  sub_181AB5D28(v27, v25, &qword_1EA8398E0);
  v28 = sub_182AD2868();
  v29 = *(*(v28 - 8) + 8);
  v29(v25, v28);
  v30 = a1[11];
  v101 = a1[10];
  v102 = v30;
  v103 = a1[12];
  v104 = *(a1 + 208);
  v31 = a1[7];
  v97 = a1[6];
  v98 = v31;
  v32 = a1[9];
  v99 = a1[8];
  v100 = v32;
  v33 = a1[3];
  v93 = a1[2];
  v94 = v33;
  v34 = a1[5];
  v95 = a1[4];
  v96 = v34;
  v35 = a1[1];
  v91 = *a1;
  v92 = v35;
  sub_1821438A8(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_181F49A88(v15, &qword_1EA839BA8);
    LOBYTE(a2) = v79;
    goto LABEL_4;
  }

  v49 = v15;
  v50 = v86;
  sub_182022420(v49, v86);
  v51 = v85;
  sub_181AB5D28(v50, v85, &unk_1EA83A980);
  v52 = sub_182AD27F8();
  v29(v51, v28);
  v53 = *(v52 + 16);

  if (!v53)
  {
    result = sub_181F49A88(v50, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v53 == 1)
  {
    v54 = v81;
    sub_181AB5D28(v50, v81, &unk_1EA83A980);
    v55 = sub_182AD27F8();
    v29(v54, v28);
    v56 = v84;
    if (*(v55 + 16))
    {
      v57 = v83;
      v58 = v80;
      (*(v83 + 16))(v80, v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v84);

      MEMORY[0x1EEE9AC00](v59);
      *&v78[-32] = a1;
      v78[-24] = v79 & 1;
      *&v78[-16] = sub_1820E3A7C;
      *&v78[-8] = v89;
      sub_182AD27D8();
      sub_181F49A88(v50, &unk_1EA83A980);
      return (*(v57 + 8))(v58, v56);
    }

    goto LABEL_56;
  }

  v90 = xmmword_182AE7580;
  sub_181AB5D28(v50, v51, &unk_1EA83A980);
  v64 = sub_182AD27F8();
  v29(v51, v28);
  v65 = *(v64 + 2);
  if (v65)
  {
    v66 = v84;
    v67 = *(v83 + 80);
    v85 = v64;
    v68 = &v64[(v67 + 32) & ~v67];
    v87 = *(v83 + 72);
    v69 = (v83 + 16);
    do
    {
      *(&v92 + 1) = v66;
      *&v93 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v91);
      (*v69)(boxed_opaque_existential_0Tm, v68, v66);
      __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
      sub_182AD1DC8();
      v72 = v89[6];
      v71 = v89[7];
      __swift_destroy_boxed_opaque_existential_1(&v91);
      sub_182AD2178();
      sub_181C1F2E4(v72, v71);
      v68 += v87;
      --v65;
    }

    while (v65);

    v50 = v86;
  }

  else
  {
  }

  v77 = v90;
  MEMORY[0x1EEE9AC00](v73);
  *&v78[-32] = a1;
  v78[-24] = v79 & 1;
  *&v78[-16] = sub_1820E3A7C;
  *&v78[-8] = v89;
  sub_1820E375C(sub_1820E3AF0, &v78[-48], v77, *(&v77 + 1));
  sub_181F49A88(v50, &unk_1EA83A980);
  return sub_181C1F2E4(v77, *(&v77 + 1));
}

uint64_t sub_1820DFE7C@<X0>(__int128 *a1@<X0>, int a2@<W1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X8>)
{
  v82 = a2;
  v84 = a6;
  v10 = sub_182AD27E8();
  v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v73 - v23;
  v80 = a3;
  v81 = a4;
  v85[2] = a3;
  v85[3] = a4;
  v83 = a5;
  v85[4] = a5;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v74 = v10;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v97 = a1[10];
  v98 = v28;
  v99 = a1[12];
  v100 = *(a1 + 208);
  v29 = a1[7];
  v93 = a1[6];
  v94 = v29;
  v30 = a1[9];
  v95 = a1[8];
  v96 = v30;
  v31 = a1[3];
  v89 = a1[2];
  v90 = v31;
  v32 = a1[5];
  v91 = a1[4];
  v92 = v32;
  v33 = a1[1];
  v87 = *a1;
  v88 = v33;
  sub_1821438A8(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_181F49A88(v14, &qword_1EA839BA8);
LABEL_4:
    v34 = a1[11];
    v97 = a1[10];
    v98 = v34;
    v99 = a1[12];
    v100 = *(a1 + 208);
    v35 = a1[7];
    v93 = a1[6];
    v94 = v35;
    v36 = a1[9];
    v95 = a1[8];
    v96 = v36;
    v37 = a1[3];
    v89 = a1[2];
    v90 = v37;
    v38 = a1[5];
    v91 = a1[4];
    v92 = v38;
    v39 = a1[1];
    v87 = *a1;
    v88 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v84;
      *v84 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v87 = result;
    *(&v87 + 1) = v44;
    v88 = 0uLL;
    LOBYTE(v89) = 1;
    *v80 = sub_1820E2CC0();
    v45 = sub_1820E2CC0();
    v46 = v81;
    *(v81 + 16) = v45;
    *(v46 + 24) = sub_1820E2CC0();
    *(v46 + 32) = sub_1820E2CC0();
    Deserializer.uint8(_:)(v83, &v86);
    v47 = *(&v88 + 1);
    result = v88;
    v48 = v84;
    if ((v89 & 1) == 0)
    {
      v49 = 0;
      if ((v82 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v88 + 1))
    {
      v49 = 1;
      if ((v82 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v87)
    {
      v70 = *(&v87 + 1) - v87;
    }

    else
    {
      v70 = 0;
    }

    v47 = v70 - v88;
    if (__OFSUB__(v70, v88))
    {
      __break(1u);
    }

    else if ((v47 & 0x8000000000000000) == 0)
    {
      v49 = v70 == v88;
      if ((v82 & 1) == 0)
      {
LABEL_38:
        *v48 = v47;
        *(v48 + 8) = v49 & 1;
        return result;
      }

LABEL_30:
      if (v47)
      {
        v71 = v49;
      }

      else
      {
        v71 = 0;
      }

      if (v71)
      {
        v49 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v88, 0, 1);
        if ((result & 1) == 0)
        {
          v47 = 2;
        }

        v49 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v50 = v79;
  sub_182022420(v14, v79);
  v51 = v78;
  sub_181AB5D28(v50, v78, &unk_1EA83A980);
  v52 = sub_182AD27F8();
  v27(v51, v26);
  v53 = *(v52 + 16);

  if (!v53)
  {
    result = sub_181F49A88(v50, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v53 == 1)
  {
    v54 = v76;
    sub_181AB5D28(v50, v76, &unk_1EA83A980);
    v55 = sub_182AD27F8();
    v27(v54, v26);
    if (*(v55 + 16))
    {
      v56 = v77;
      v57 = v74;
      v58 = v75;
      (*(v77 + 16))(v75, v55 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v74);

      MEMORY[0x1EEE9AC00](v59);
      *(&v73 - 4) = a1;
      *(&v73 - 24) = v82 & 1;
      *(&v73 - 2) = sub_1820E3A88;
      *(&v73 - 1) = v85;
      sub_182AD27D8();
      sub_181F49A88(v50, &unk_1EA83A980);
      return (*(v56 + 8))(v58, v57);
    }

    goto LABEL_44;
  }

  v86 = xmmword_182AE7580;
  sub_181AB5D28(v50, v51, &unk_1EA83A980);
  v60 = sub_182AD27F8();
  v27(v51, v26);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = *(v77 + 80);
    v81 = v60;
    v63 = v60 + ((v62 + 32) & ~v62);
    v83 = *(v77 + 72);
    v64 = (v77 + 16);
    v65 = v74;
    do
    {
      *(&v88 + 1) = v65;
      *&v89 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v87);
      (*v64)(boxed_opaque_existential_0Tm, v63, v65);
      __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
      sub_182AD1DC8();
      v68 = v85[6];
      v67 = v85[7];
      __swift_destroy_boxed_opaque_existential_1(&v87);
      sub_182AD2178();
      sub_181C1F2E4(v68, v67);
      v63 += v83;
      --v61;
    }

    while (v61);

    v50 = v79;
  }

  else
  {
  }

  v72 = v86;
  MEMORY[0x1EEE9AC00](v69);
  *(&v73 - 4) = a1;
  *(&v73 - 24) = v82 & 1;
  *(&v73 - 2) = sub_1820E3A88;
  *(&v73 - 1) = v85;
  sub_1820E375C(sub_1820E3AF0, (&v73 - 6), v72, *(&v72 + 1));
  sub_181F49A88(v50, &unk_1EA83A980);
  return sub_181C1F2E4(v72, *(&v72 + 1));
}

uint64_t sub_1820E06D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v7 = sub_182AD27E8();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v69 - v22;
  v75 = a3;
  v77[2] = a3;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v69 = v15;
  v70 = a2;
  v24 = swift_projectBox();
  sub_181AB5D28(v24, v23, &qword_1EA8398E0);
  v25 = sub_182AD2868();
  v26 = *(*(v25 - 8) + 8);
  v26(v23, v25);
  v27 = *(a1 + 176);
  v89 = *(a1 + 160);
  v90 = v27;
  v91 = *(a1 + 192);
  v92 = *(a1 + 208);
  v28 = *(a1 + 112);
  v85 = *(a1 + 96);
  v86 = v28;
  v29 = *(a1 + 144);
  v87 = *(a1 + 128);
  v88 = v29;
  v30 = *(a1 + 48);
  v81 = *(a1 + 32);
  v82 = v30;
  v31 = *(a1 + 80);
  v83 = *(a1 + 64);
  v84 = v31;
  v32 = *(a1 + 16);
  v79 = *a1;
  v80 = v32;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    LOBYTE(a2) = v70;
LABEL_4:
    v33 = *(a1 + 176);
    v89 = *(a1 + 160);
    v90 = v33;
    v91 = *(a1 + 192);
    v92 = *(a1 + 208);
    v34 = *(a1 + 112);
    v85 = *(a1 + 96);
    v86 = v34;
    v35 = *(a1 + 144);
    v87 = *(a1 + 128);
    v88 = v35;
    v36 = *(a1 + 48);
    v81 = *(a1 + 32);
    v82 = v36;
    v37 = *(a1 + 80);
    v83 = *(a1 + 64);
    v84 = v37;
    v38 = *(a1 + 16);
    v79 = *a1;
    v80 = v38;
    result = Frame.unclaimedBytes.getter();
    if (v41)
    {
LABEL_5:
      v42 = v76;
      *v76 = 1;
      *(v42 + 8) = 1;
      return result;
    }

    if (result)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    *&v79 = result;
    *(&v79 + 1) = v43;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    sub_182114CCC(&v79, v75, &v78);
    v44 = *(&v80 + 1);
    result = v80;
    if ((v81 & 1) == 0)
    {
      v45 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v80 + 1))
    {
      v45 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v79)
    {
      v64 = *(&v79 + 1) - v79;
    }

    else
    {
      v64 = 0;
    }

    v44 = v64 - v80;
    if (__OFSUB__(v64, v80))
    {
      __break(1u);
    }

    else if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v64 == v80;
      if ((a2 & 1) == 0)
      {
LABEL_38:
        v66 = v76;
        *v76 = v44;
        *(v66 + 8) = v45 & 1;
        return result;
      }

LABEL_30:
      if (v44)
      {
        v65 = v45;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v45 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v80, 0, 1);
        if ((result & 1) == 0)
        {
          v44 = 2;
        }

        v45 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v46 = v74;
  sub_182022420(v11, v74);
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v47 = sub_182AD27F8();
  v26(v18, v25);
  v48 = *(v47 + 16);

  if (!v48)
  {
    result = sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v48 == 1)
  {
    v49 = v69;
    sub_181AB5D28(v46, v69, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v26(v49, v25);
    v51 = v73;
    if (*(v50 + 16))
    {
      v53 = v71;
      v52 = v72;
      (*(v72 + 16))(v71, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v73);

      MEMORY[0x1EEE9AC00](v54);
      *(&v69 - 4) = a1;
      *(&v69 - 24) = v70 & 1;
      *(&v69 - 2) = sub_1820E3A94;
      *(&v69 - 1) = v77;
      sub_182AD27D8();
      sub_181F49A88(v46, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v78 = xmmword_182AE7580;
  sub_181AB5D28(v46, v18, &unk_1EA83A980);
  v55 = sub_182AD27F8();
  v26(v18, v25);
  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v73;
    v58 = *(v72 + 80);
    v71 = v55;
    v59 = v55 + ((v58 + 32) & ~v58);
    v75 = *(v72 + 72);
    v60 = (v72 + 16);
    do
    {
      *(&v80 + 1) = v57;
      *&v81 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v79);
      (*v60)(boxed_opaque_existential_0Tm, v59, v57);
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      sub_182AD1DC8();
      v63 = v77[4];
      v62 = v77[5];
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_182AD2178();
      sub_181C1F2E4(v63, v62);
      v59 += v75;
      --v56;
    }

    while (v56);
  }

  v68 = v78;
  MEMORY[0x1EEE9AC00](v67);
  *(&v69 - 4) = a1;
  *(&v69 - 24) = v70 & 1;
  *(&v69 - 2) = sub_1820E3A94;
  *(&v69 - 1) = v77;
  sub_1820E375C(sub_1820E3AF0, (&v69 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v74, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

uint64_t sub_1820E0ED0@<X0>(__int128 *a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v82 = a5;
  v9 = sub_182AD27E8();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v73[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v73[-v23];
  v80 = a3;
  v81 = a4;
  v83[2] = a3;
  v83[3] = a4;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v74 = a2;
  v25 = swift_projectBox();
  sub_181AB5D28(v25, v24, &qword_1EA8398E0);
  v26 = sub_182AD2868();
  v27 = *(*(v26 - 8) + 8);
  v27(v24, v26);
  v28 = a1[11];
  v95 = a1[10];
  v96 = v28;
  v97 = a1[12];
  v98 = *(a1 + 208);
  v29 = a1[7];
  v91 = a1[6];
  v92 = v29;
  v30 = a1[9];
  v93 = a1[8];
  v94 = v30;
  v31 = a1[3];
  v87 = a1[2];
  v88 = v31;
  v32 = a1[5];
  v89 = a1[4];
  v90 = v32;
  v33 = a1[1];
  v85 = *a1;
  v86 = v33;
  sub_1821438A8(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_181F49A88(v13, &qword_1EA839BA8);
    LOBYTE(a2) = v74;
LABEL_4:
    v34 = a1[11];
    v95 = a1[10];
    v96 = v34;
    v97 = a1[12];
    v98 = *(a1 + 208);
    v35 = a1[7];
    v91 = a1[6];
    v92 = v35;
    v36 = a1[9];
    v93 = a1[8];
    v94 = v36;
    v37 = a1[3];
    v87 = a1[2];
    v88 = v37;
    v38 = a1[5];
    v89 = a1[4];
    v90 = v38;
    v39 = a1[1];
    v85 = *a1;
    v86 = v39;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
LABEL_5:
      v43 = v82;
      *v82 = 1;
      *(v43 + 8) = 1;
      return result;
    }

    if (result)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    *&v85 = result;
    *(&v85 + 1) = v44;
    v86 = 0uLL;
    LOBYTE(v87) = 1;
    *v80 = sub_1820E2CC0();
    v45 = sub_1820E2CC0();
    v46 = v81;
    v81[2] = v45;
    if (v45 != 2)
    {
      v46[3] = sub_1820E2CC0();
    }

    v46[4] = sub_1820E2CC0();
    v46[5] = sub_1820E2CC0();
    v47 = *(&v86 + 1);
    result = v86;
    if (v87 != 1)
    {
      v48 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (*(&v86 + 1))
    {
      v48 = 1;
      if ((a2 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

    if (v85)
    {
      v69 = *(&v85 + 1) - v85;
    }

    else
    {
      v69 = 0;
    }

    v47 = v69 - v86;
    if (__OFSUB__(v69, v86))
    {
      __break(1u);
    }

    else if ((v47 & 0x8000000000000000) == 0)
    {
      v48 = v69 == v86;
      if ((a2 & 1) == 0)
      {
LABEL_40:
        v71 = v82;
        *v82 = v47;
        *(v71 + 8) = v48 & 1;
        return result;
      }

LABEL_32:
      if (v47)
      {
        v70 = v48;
      }

      else
      {
        v70 = 0;
      }

      if (v70)
      {
        v48 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v86, 0, 1);
        if ((result & 1) == 0)
        {
          v47 = 2;
        }

        v48 |= result ^ 1;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_46:

    __break(1u);
    return result;
  }

  v49 = v13;
  v50 = v79;
  sub_182022420(v49, v79);
  sub_181AB5D28(v50, v19, &unk_1EA83A980);
  v51 = sub_182AD27F8();
  v27(v19, v26);
  v52 = *(v51 + 16);

  if (!v52)
  {
    result = sub_181F49A88(v50, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v52 == 1)
  {
    v53 = v76;
    sub_181AB5D28(v50, v76, &unk_1EA83A980);
    v54 = sub_182AD27F8();
    v27(v53, v26);
    v55 = v78;
    if (*(v54 + 16))
    {
      v56 = v77;
      v57 = v75;
      (*(v77 + 16))(v75, v54 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v78);

      MEMORY[0x1EEE9AC00](v58);
      *&v73[-32] = a1;
      v73[-24] = v74 & 1;
      *&v73[-16] = sub_1820E3A9C;
      *&v73[-8] = v83;
      sub_182AD27D8();
      sub_181F49A88(v50, &unk_1EA83A980);
      return (*(v56 + 8))(v57, v55);
    }

    goto LABEL_46;
  }

  v84 = xmmword_182AE7580;
  sub_181AB5D28(v50, v19, &unk_1EA83A980);
  v59 = sub_182AD27F8();
  v27(v19, v26);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v78;
    v62 = v59 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v63 = *(v77 + 72);
    v80 = v59;
    v81 = v63;
    v64 = (v77 + 16);
    do
    {
      *(&v86 + 1) = v61;
      *&v87 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v85);
      (*v64)(boxed_opaque_existential_0Tm, v62, v61);
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      sub_182AD1DC8();
      v67 = v83[6];
      v66 = v83[7];
      __swift_destroy_boxed_opaque_existential_1(&v85);
      sub_182AD2178();
      sub_181C1F2E4(v67, v66);
      v62 += v81;
      --v60;
    }

    while (v60);

    v50 = v79;
  }

  else
  {
  }

  v72 = v84;
  MEMORY[0x1EEE9AC00](v68);
  *&v73[-32] = a1;
  v73[-24] = v74 & 1;
  *&v73[-16] = sub_1820E3A9C;
  *&v73[-8] = v83;
  sub_1820E375C(sub_1820E3AF0, &v73[-48], v72, *(&v72 + 1));
  sub_181F49A88(v50, &unk_1EA83A980);
  return sub_181C1F2E4(v72, *(&v72 + 1));
}

uint64_t sub_1820E17A4@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t)@<X6>, void (*a8)(__int128 *__return_ptr, __int128 *, uint64_t, uint64_t)@<X7>, uint64_t *a9@<X8>)
{
  v87 = a8;
  v88 = a9;
  v80 = a7;
  v78 = a6;
  v83 = a5;
  v13 = sub_182AD27E8();
  v81 = *(v13 - 8);
  v82 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v75[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v75[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v75[-v27];
  v85 = a3;
  v86 = a4;
  v89[2] = a3;
  v89[3] = a4;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v76 = a2;
  v29 = swift_projectBox();
  sub_181AB5D28(v29, v28, &qword_1EA8398E0);
  v30 = sub_182AD2868();
  v31 = *(*(v30 - 8) + 8);
  v31(v28, v30);
  v32 = a1[11];
  v101 = a1[10];
  v102 = v32;
  v103 = a1[12];
  v104 = *(a1 + 208);
  v33 = a1[7];
  v97 = a1[6];
  v98 = v33;
  v34 = a1[9];
  v99 = a1[8];
  v100 = v34;
  v35 = a1[3];
  v93 = a1[2];
  v94 = v35;
  v36 = a1[5];
  v95 = a1[4];
  v96 = v36;
  v37 = a1[1];
  v91 = *a1;
  v92 = v37;
  sub_1821438A8(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_181F49A88(v17, &qword_1EA839BA8);
    LOBYTE(a2) = v76;
LABEL_4:
    v38 = a2;
    v39 = a1[11];
    v101 = a1[10];
    v102 = v39;
    v103 = a1[12];
    v104 = *(a1 + 208);
    v40 = a1[7];
    v97 = a1[6];
    v98 = v40;
    v41 = a1[9];
    v99 = a1[8];
    v100 = v41;
    v42 = a1[3];
    v93 = a1[2];
    v94 = v42;
    v43 = a1[5];
    v95 = a1[4];
    v96 = v43;
    v44 = a1[1];
    v91 = *a1;
    v92 = v44;
    result = Frame.unclaimedBytes.getter();
    if (v47)
    {
LABEL_5:
      v48 = v88;
      *v88 = 1;
      *(v48 + 8) = 1;
      return result;
    }

    if (result)
    {
      v49 = v46;
    }

    else
    {
      v49 = 0;
    }

    *&v91 = result;
    *(&v91 + 1) = v49;
    v92 = 0uLL;
    LOBYTE(v93) = 1;
    v87(&v90, &v91, v85, v86);
    v50 = *(&v92 + 1);
    result = v92;
    if ((v93 & 1) == 0)
    {
      v51 = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v92 + 1))
    {
      v51 = 1;
      if ((v38 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v91)
    {
      v70 = *(&v91 + 1) - v91;
    }

    else
    {
      v70 = 0;
    }

    v50 = v70 - v92;
    if (__OFSUB__(v70, v92))
    {
      __break(1u);
    }

    else if ((v50 & 0x8000000000000000) == 0)
    {
      v51 = v70 == v92;
      if ((v38 & 1) == 0)
      {
LABEL_38:
        v72 = v88;
        *v88 = v50;
        *(v72 + 8) = v51 & 1;
        return result;
      }

LABEL_30:
      if (v50)
      {
        v71 = v51;
      }

      else
      {
        v71 = 0;
      }

      if (v71)
      {
        v51 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v92, 0, 1);
        if ((result & 1) == 0)
        {
          v50 = 2;
        }

        v51 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_42;
  }

  v52 = v84;
  sub_182022420(v17, v84);
  sub_181AB5D28(v52, v23, &unk_1EA83A980);
  v53 = sub_182AD27F8();
  v31(v23, v30);
  v54 = *(v53 + 16);

  if (!v54)
  {
    result = sub_181F49A88(v52, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v54 == 1)
  {
    v55 = v79;
    sub_181AB5D28(v52, v79, &unk_1EA83A980);
    v56 = sub_182AD27F8();
    v31(v55, v30);
    v57 = v82;
    if (*(v56 + 16))
    {
      v58 = v81;
      v59 = v77;
      (*(v81 + 16))(v77, v56 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v82);

      MEMORY[0x1EEE9AC00](v60);
      *&v75[-32] = a1;
      v75[-24] = v76 & 1;
      *&v75[-16] = v83;
      *&v75[-8] = v89;
      sub_182AD27D8();
      sub_181F49A88(v52, &unk_1EA83A980);
      return (*(v58 + 8))(v59, v57);
    }

LABEL_42:

    __break(1u);
    return result;
  }

  v90 = xmmword_182AE7580;
  sub_181AB5D28(v52, v23, &unk_1EA83A980);
  v61 = sub_182AD27F8();
  v31(v23, v30);
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = v82;
    v64 = v61 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v65 = *(v81 + 72);
    v86 = v61;
    v87 = v65;
    v66 = (v81 + 16);
    do
    {
      *(&v92 + 1) = v63;
      *&v93 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v91);
      (*v66)(boxed_opaque_existential_0Tm, v64, v63);
      __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
      sub_182AD1DC8();
      v69 = v89[6];
      v68 = v89[7];
      __swift_destroy_boxed_opaque_existential_1(&v91);
      sub_182AD2178();
      sub_181C1F2E4(v69, v68);
      v64 += v87;
      --v62;
    }

    while (v62);
  }

  v74 = v90;
  MEMORY[0x1EEE9AC00](v73);
  *&v75[-32] = a1;
  v75[-24] = v76 & 1;
  *&v75[-16] = v83;
  *&v75[-8] = v89;
  sub_1820E375C(v80, &v75[-48], v74, *(&v74 + 1));
  sub_181F49A88(v84, &unk_1EA83A980);
  return sub_181C1F2E4(v74, *(&v74 + 1));
}

uint64_t static Deserializer.deserialize(_:claim:_:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, void (*a3)(__int128 *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v78 = a3;
  v77 = a2;
  v80 = a5;
  v7 = sub_182AD27E8();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v70 - v21;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_4;
  }

  v72 = a4;
  v23 = swift_projectBox();
  sub_181AB5D28(v23, v22, &qword_1EA8398E0);
  v24 = sub_182AD2868();
  v71 = *(*(v24 - 8) + 8);
  v71(v22, v24);
  v25 = a1[11];
  v94 = a1[10];
  v95 = v25;
  v96 = a1[12];
  v97 = *(a1 + 208);
  v26 = a1[7];
  v90 = a1[6];
  v91 = v26;
  v27 = a1[9];
  v92 = a1[8];
  v93 = v27;
  v28 = a1[3];
  v86 = a1[2];
  v87 = v28;
  v29 = a1[5];
  v88 = a1[4];
  v89 = v29;
  v30 = a1[1];
  v84 = *a1;
  v85 = v30;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
LABEL_4:
    v31 = a1[11];
    v94 = a1[10];
    v95 = v31;
    v96 = a1[12];
    v97 = *(a1 + 208);
    v32 = a1[7];
    v90 = a1[6];
    v91 = v32;
    v33 = a1[9];
    v92 = a1[8];
    v93 = v33;
    v34 = a1[3];
    v86 = a1[2];
    v87 = v34;
    v35 = a1[5];
    v88 = a1[4];
    v89 = v35;
    v36 = a1[1];
    v84 = *a1;
    v85 = v36;
    result = Frame.unclaimedBytes.getter();
    if (v39)
    {
LABEL_5:
      v40 = v80;
      *v80 = 1;
      *(v40 + 8) = 1;
      return result;
    }

    if (result)
    {
      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    *&v84 = result;
    *(&v84 + 1) = v41;
    v85 = 0uLL;
    LOBYTE(v86) = 1;
    v78(&v83, &v84);
    v42 = *(&v85 + 1);
    result = v85;
    v43 = v80;
    if (v86 != 1)
    {
      v44 = 0;
      if ((v77 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (*(&v85 + 1))
    {
      v44 = 1;
      if ((v77 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v84)
    {
      v66 = *(&v84 + 1) - v84;
    }

    else
    {
      v66 = 0;
    }

    v42 = v66 - v85;
    if (__OFSUB__(v66, v85))
    {
      __break(1u);
    }

    else if ((v42 & 0x8000000000000000) == 0)
    {
      v44 = v66 == v85;
      if ((v77 & 1) == 0)
      {
LABEL_38:
        *v43 = v42;
        *(v43 + 8) = v44 & 1;
        return result;
      }

LABEL_30:
      if (v42)
      {
        v67 = v44;
      }

      else
      {
        v67 = 0;
      }

      if (v67)
      {
        v44 = 1;
      }

      else
      {
        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v85, 0, 1);
        if ((result & 1) == 0)
        {
          v42 = 2;
        }

        v44 |= result ^ 1;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_44:

    __break(1u);
    return result;
  }

  v45 = v76;
  sub_182022420(v11, v76);
  sub_181AB5D28(v45, v17, &unk_1EA83A980);
  v46 = sub_182AD27F8();
  v47 = v71;
  v71(v17, v24);
  v48 = *(v46 + 16);

  if (v48 == 1)
  {
    v49 = v79;
    sub_181AB5D28(v45, v79, &unk_1EA83A980);
    v50 = sub_182AD27F8();
    v47(v49, v24);
    v51 = v75;
    if (*(v50 + 16))
    {
      v53 = v73;
      v52 = v74;
      (*(v74 + 16))(v73, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v75);

      MEMORY[0x1EEE9AC00](v54);
      *(&v70 - 4) = a1;
      *(&v70 - 24) = v77 & 1;
      v55 = v72;
      *(&v70 - 2) = v78;
      *(&v70 - 1) = v55;
      sub_182AD27D8();
      sub_181F49A88(v45, &unk_1EA83A980);
      return (*(v52 + 8))(v53, v51);
    }

    goto LABEL_44;
  }

  if (!v48)
  {
    result = sub_181F49A88(v45, &unk_1EA83A980);
    goto LABEL_5;
  }

  v83 = xmmword_182AE7580;
  sub_181AB5D28(v45, v17, &unk_1EA83A980);
  v56 = sub_182AD27F8();
  v47(v17, v24);
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = v75;
    v59 = *(v74 + 80);
    v73 = v56;
    v60 = v56 + ((v59 + 32) & ~v59);
    v79 = *(v74 + 72);
    v61 = (v74 + 16);
    do
    {
      *(&v85 + 1) = v58;
      *&v86 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v84);
      (*v61)(boxed_opaque_existential_0Tm, v60, v58);
      __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
      sub_182AD1DC8();
      v64 = v81;
      v63 = v82;
      __swift_destroy_boxed_opaque_existential_1(&v84);
      sub_182AD2178();
      sub_181C1F2E4(v64, v63);
      v60 += v79;
      --v57;
    }

    while (v57);

    v45 = v76;
  }

  else
  {
  }

  v68 = v83;
  MEMORY[0x1EEE9AC00](v65);
  *(&v70 - 4) = a1;
  *(&v70 - 24) = v77 & 1;
  v69 = v72;
  *(&v70 - 2) = v78;
  *(&v70 - 1) = v69;
  sub_1820E375C(sub_1820E393C, (&v70 - 6), v68, *(&v68 + 1));
  sub_181F49A88(v45, &unk_1EA83A980);
  return sub_181C1F2E4(v68, *(&v68 + 1));
}

_WORD *Deserializer.uint16NetworkByteOrder(_:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 < 2)
    {
LABEL_7:
      v8 = 1;
      v2[3] = 1;
      *(v2 + 32) = 1;
      v9 = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    if (v3)
    {
      v10 = a2;
      *result = bswap32(*(v3 + v4)) >> 16;
      result = sub_1820E2C6C(2);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

_DWORD *Deserializer.uint32NetworkByteOrder(_:)@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 < 4)
    {
LABEL_7:
      v8 = 1;
      v2[3] = 1;
      *(v2 + 32) = 1;
      v9 = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    if (v3)
    {
      v10 = a2;
      *result = bswap32(*(v3 + v4));
      result = sub_1820E2C6C(4);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deserializer.vle<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 8))();
  sub_1820E2CC0();
  sub_181F7D8D8();
  result = sub_182AD3A98();
  v5 = *(v2 + 32);
  *a2 = *(v2 + 24);
  *(a2 + 8) = v5;
  return result;
}

uint64_t static DeserializationBuilder.buildArray(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  result = a1 + 16;
  v3 = v4;
  v5 = (result + 24);
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 16;
    if (v8 == 1 && v7 != 0)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    v10 = result + 16 * v3;
    v7 = *v10;
    v11 = *(v10 + 8);
    goto LABEL_12;
  }

  v7 = 1;
LABEL_11:
  v11 = 1;
LABEL_12:
  *a2 = v7;
  *(a2 + 8) = v11;
  return result;
}

BOOL static DeserializationResult.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t DeserializationResult.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0xD000000000000010;
    if (v1 != 1)
    {
      v2 = 0x20676E6973726150;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x73736563637553;
    }
  }

  else
  {
    sub_182AD3BA8();
    v4 = sub_182AD41B8();

    MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDDC00);
    return v4;
  }
}

BOOL sub_1820E2B5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t *static DeserializationBuilder.buildOptional(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 9))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v2 = *result;
    v3 = *(result + 8);
  }

  *a2 = v2;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t static DeserializationBuilder.buildEither(first:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void sub_1820E2C14(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2 != 1 || *(v1 + 24) != 0)
  {
    goto LABEL_12;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 8) - *v1;
  if (!*v1)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      LOBYTE(v2) = 0;
LABEL_13:
      *a1 = v7;
      *(a1 + 8) = v2;
      return;
    }

LABEL_12:
    v7 = *(v1 + 24);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1820E2C6C(uint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  if (*v1)
  {
    v2 = v1[1] - v2;
  }

  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v5 >= result)
    {
      v6 = v3 + result;
      v1[2] = v6;
    }

    else
    {
      v6 = 0;
      v1[3] = 1;
      *(v1 + 32) = 1;
    }

    return v6;
  }

  return result;
}

unint64_t sub_1820E2CC0()
{
  v1 = *v0;
  v2 = v0[2];
  if (*(v0 + 32) == 1 && v0[3])
  {
    goto LABEL_37;
  }

  v3 = v0[1] - v1;
  if (!v1)
  {
    v3 = 0;
  }

  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v5 < 1)
  {
    goto LABEL_37;
  }

  v6 = *(v1 + v2) >> 6;
  if (v6 <= 1)
  {
    if (!v6)
    {
      v7 = *(v1 + v2);
      sub_1820E2C6C(1);
      return v7;
    }

    if (*(v0 + 32))
    {
      if (v5 == 1 || v0[3] != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (v5 != 1)
    {
LABEL_34:
      if (v1)
      {
        v13 = *(v1 + v2);
        sub_1820E2C6C(2);
        return bswap32(v13 & 0xFFFFFFBF) >> 16;
      }

      goto LABEL_42;
    }

LABEL_37:
    result = 0;
    v0[3] = 1;
    *(v0 + 32) = 1;
    return result;
  }

  if (v6 == 2)
  {
    if (*(v0 + 32))
    {
      if (v5 < 4 || v0[3] != 0)
      {
        goto LABEL_37;
      }
    }

    else if (v5 < 4)
    {
      goto LABEL_37;
    }

    if (v1)
    {
      v12 = *(v1 + v2);
      sub_1820E2C6C(4);
      return bswap32(v12 & 0xFFFFFF7F);
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*(v0 + 32))
  {
    if (v5 < 8 || v0[3] != 0)
    {
      goto LABEL_37;
    }
  }

  else if (v5 < 8)
  {
    goto LABEL_37;
  }

  if (v1)
  {
    v14 = *(v1 + v2);
    sub_1820E2C6C(8);
    return bswap64(v14 & 0xFFFFFFFFFFFFFF3FLL);
  }

LABEL_43:
  __break(1u);
  return result;
}

_WORD *sub_1820E2E34@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 < 2)
    {
LABEL_7:
      v8 = 1;
      v2[3] = 1;
      *(v2 + 32) = 1;
      v9 = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    if (v3)
    {
      v10 = a2;
      *result = *(v3 + v4);
      result = sub_1820E2C6C(2);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *Deserializer.uint64(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 < 8)
    {
LABEL_7:
      v8 = 1;
      v2[3] = 1;
      *(v2 + 32) = 1;
      v9 = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    if (v3)
    {
      v10 = a2;
      *result = *(v3 + v4);
      result = sub_1820E2C6C(8);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *Deserializer.uint64NetworkByteOrder(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 < 8)
    {
LABEL_7:
      v8 = 1;
      v2[3] = 1;
      *(v2 + 32) = 1;
      v9 = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    if (v3)
    {
      v10 = a2;
      *result = bswap64(*(v3 + v4));
      result = sub_1820E2C6C(8);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deserializer.vleWithSize<A>(_:_:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 8))();
  sub_1820E2CC0();
  v7 = v6;
  sub_181F7D8D8();
  result = sub_182AD3A98();
  *a1 = v7;
  v9 = *(v3 + 32);
  *a3 = *(v3 + 24);
  *(a3 + 8) = v9;
  return result;
}

_OWORD *Deserializer.uuid(_:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 < 16)
    {
LABEL_7:
      v8 = 1;
      v2[3] = 1;
      *(v2 + 32) = 1;
      v9 = 1;
LABEL_10:
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    if (v3)
    {
      v10 = a2;
      *result = *(v3 + v4);
      result = sub_1820E2C6C(16);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deserializer.buffer(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1 && *(v1 + 24))
  {
    v2 = 1;
    *(v1 + 24) = 1;
    *(v1 + 32) = 1;
LABEL_9:
    v7 = 1;
LABEL_13:
    *a1 = v2;
    *(a1 + 8) = v7;
    return result;
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v3 - *v1;
  if (!*v1)
  {
    v5 = 0;
  }

  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 == v4)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if (__OFADD__(v4, v6))
  {
    goto LABEL_15;
  }

  if (v5 >= v4)
  {
    v8 = a1;
    sub_181ADF8C8(*(v1 + 16), v5, *v1, v3);
    result = sub_1820E2C6C(v6);
    a1 = v8;
    v2 = *(v1 + 24);
    v7 = *(v1 + 32);
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t Deserializer.skip(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3])
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = v2[1] - v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= result)
    {
      v10 = a2;
      result = sub_1820E2C6C(result);
      a2 = v10;
      v8 = v2[3];
      v9 = *(v2 + 32);
      goto LABEL_10;
    }

LABEL_8:
    v8 = 1;
    v2[3] = 1;
    *(v2 + 32) = 1;
    v9 = 1;
LABEL_10:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

void static Deserializer.deserialize(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v8 = 0uLL;
  v9 = 1;
  a3(v5, &v7);
  v5[0] = v7;
  v5[1] = v8;
  v6 = v9;
  sub_1820E2C14(a4);
}

void sub_1820E3330(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = a1;
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  sub_1820D562C(a4, v15);
  v7 = v18;
  v8 = v19;
  if (v20 != 1)
  {
    goto LABEL_10;
  }

  if (v19)
  {
    v9 = 1;
LABEL_16:
    *a5 = v8;
    *(a5 + 8) = v9;
    return;
  }

  if (v16)
  {
    v10 = v17 - v16;
  }

  else
  {
    v10 = 0;
  }

  v8 = v10 - v18;
  if (__OFSUB__(v10, v18))
  {
    __break(1u);
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    if (!v8)
    {
      v9 = 1;
LABEL_11:
      v11 = *a3;
      v12 = *(*a3 + 16);
      if (v12 < v18)
      {
        __break(1u);
      }

      else if ((v18 & 0x8000000000000000) == 0)
      {
        if (!v18)
        {

LABEL_15:
          *a3 = v13;

          goto LABEL_16;
        }

LABEL_20:
        sub_1822D0918(v11, v11 + 32, v7, (2 * v12) | 1);
        v13 = v14;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

void *sub_1820E3438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v17 = a1;
  v18 = a2;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  result = a3(&v16, &v17);
  v8 = v19;
  v9 = v20;
  if (v21 != 1)
  {
    goto LABEL_10;
  }

  if (v20)
  {
    v10 = 1;
LABEL_16:
    *a5 = v9;
    *(a5 + 8) = v10;
    return result;
  }

  if (v17)
  {
    v11 = v18 - v17;
  }

  else
  {
    v11 = 0;
  }

  v9 = v11 - v19;
  if (__OFSUB__(v11, v19))
  {
    __break(1u);
  }

  else if ((v9 & 0x8000000000000000) == 0)
  {
    if (!v9)
    {
      v10 = 1;
LABEL_11:
      v12 = *a4;
      v13 = *(*a4 + 16);
      if (v13 < v19)
      {
        __break(1u);
      }

      else if ((v19 & 0x8000000000000000) == 0)
      {
        if (!v19)
        {

LABEL_15:
          *a4 = v14;

          goto LABEL_16;
        }

LABEL_20:
        sub_1822D0918(v12, v12 + 32, v8, (2 * v13) | 1);
        v14 = v15;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Swift::Int static Deserializer.deserialize(_:buffer:claim:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void (*a4)(uint64_t *__return_ptr, uint64_t *)@<X4>, uint64_t a5@<X8>)
{
  v13 = a1;
  v14 = a2;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  a4(&v12, &v13);
  result = v15;
  v8 = v16;
  if (v17 != 1)
  {
    v9 = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v16)
  {
    v9 = 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v13)
  {
    v10 = v14 - v13;
  }

  else
  {
    v10 = 0;
  }

  v8 = v10 - v15;
  if (__OFSUB__(v10, v15))
  {
    __break(1u);
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v10 == v15;
    if ((a3 & 1) == 0)
    {
LABEL_21:
      *a5 = v8;
      *(a5 + 8) = v9 & 1;
      return result;
    }

LABEL_13:
    if (v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v15, 0, 1);
      if ((result & 1) == 0)
      {
        v8 = 2;
      }

      v9 |= result ^ 1;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1820E3648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, void (*a4)(uint64_t *__return_ptr, uint64_t *)@<X4>, uint64_t a5@<X8>)
{
  v13 = a1;
  v14 = a2;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  a4(&v12, &v13);
  result = v15;
  v8 = v16;
  if (v17 != 1)
  {
    v9 = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v16)
  {
    v9 = 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v13)
  {
    v10 = v14 - v13;
  }

  else
  {
    v10 = 0;
  }

  v8 = v10 - v15;
  if (__OFSUB__(v10, v15))
  {
    __break(1u);
  }

  else if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v10 == v15;
    if ((a3 & 1) == 0)
    {
LABEL_21:
      *a5 = v8;
      *(a5 + 8) = v9 & 1;
      return result;
    }

LABEL_13:
    if (v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v15, 0, 1);
      if ((result & 1) == 0)
      {
        v8 = 2;
      }

      v9 |= result ^ 1;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1820E375C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1820E3894(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1820E3894(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_1820E3894(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_182AD1D58();
  v7 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_182AD1D78();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

unint64_t sub_1820E3960()
{
  result = qword_1ED410250;
  if (!qword_1ED410250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED410250);
  }

  return result;
}

double FrameArray.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 216) = 0;
  v2 = Frame.bufferLength.getter();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 2;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 256;
  *(a1 + 194) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = -1;
  *(a1 + 224) = 1;
  return result;
}

uint64_t FrameArray.add(frame:)(__int128 *a1)
{
  if (*(v1 + 224) == 1)
  {
    v36 = a1[10];
    v37 = a1[11];
    v38 = a1[12];
    LOBYTE(v39) = *(a1 + 208);
    v32 = a1[6];
    v33 = a1[7];
    v34 = a1[8];
    v35 = a1[9];
    v28 = a1[2];
    v29 = a1[3];
    v30 = a1[4];
    v31 = a1[5];
    v26 = *a1;
    v27 = a1[1];
    v2 = *v1;
    v9 = *(v1 + 8);
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    v7 = *(v1 + 48);
    v10 = *(v1 + 144);
    v11 = *(v1 + 160);

    if (v7 == 2 && !(v6 | v5))
    {
      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      if ((v12 & 1) == 0)
      {
        MEMORY[0x1865DF520](v10, -1, -1);
      }

      sub_181F68EF4(v2, v9, v3, v4);

      *(v1 + 160) = v36;
      *(v1 + 176) = v37;
      *(v1 + 192) = v38;
      *(v1 + 96) = v32;
      *(v1 + 112) = v33;
      *(v1 + 128) = v34;
      *(v1 + 144) = v35;
      *(v1 + 32) = v28;
      *(v1 + 48) = v29;
      *(v1 + 64) = v30;
      *(v1 + 80) = v31;
      *v1 = v26;
      *(v1 + 16) = v27;
      *(v1 + 208) = v39;
      *(v1 + 216) = 0;
      *(v1 + 224) = 0;
      return result;
    }

LABEL_19:
    sub_181F68EF4(v2, v9, v3, v4);

    result = sub_181F68F3C(v5, v6, v7);
    __break(1u);
    return result;
  }

  v15 = *(v1 + 216);
  v14 = (v1 + 216);
  if (!v15)
  {
    *v14 = *sub_182AD2388();
  }

  type metadata accessor for FrameArrayEntry();
  v9 = swift_allocObject();
  swift_beginAccess();
  v16 = a1[5];
  *(v9 + 80) = a1[4];
  *(v9 + 96) = v16;
  v17 = a1[3];
  *(v9 + 48) = a1[2];
  *(v9 + 64) = v17;
  v18 = a1[9];
  *(v9 + 144) = a1[8];
  *(v9 + 160) = v18;
  v19 = a1[7];
  *(v9 + 112) = a1[6];
  *(v9 + 128) = v19;
  *(v9 + 224) = *(a1 + 208);
  v20 = a1[12];
  *(v9 + 192) = a1[11];
  *(v9 + 208) = v20;
  *(v9 + 176) = a1[10];
  v21 = a1[1];
  *(v9 + 16) = *a1;
  *(v9 + 32) = v21;
  v22 = *(*v14 + 24);
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v14;
  if (*(*v14 + 16) < v23 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181F461F8(isUniquelyReferenced_nonNull_native, v23);
    v25 = *v14;
  }

  sub_181F46ACC((v25 + 16), v25 + 40, v9);
}

Swift::Void __swiftcall FrameArray.finalizeAllFramesAsFailed()()
{
  v1 = v0;
  Frame.finalize(success:)(0);
  v2 = *(v0 + 216);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2[4];
  if (v2[2] >= v2[3] + v3)
  {
    v4 = v2[3] + v3;
  }

  else
  {
    v4 = v2[2];
  }

  *&v27 = v2;
  *(&v27 + 1) = v3;
  *&v28 = v4;
  v5 = swift_retain_n();
  while (1)
  {
    if (v3 != v4)
    {
      goto LABEL_6;
    }

    if ((sub_181AC81FC(v5) & 1) == 0)
    {
      break;
    }

    v3 = *(&v27 + 1);
    v4 = v28;
LABEL_6:
    *(&v27 + 1) = v3 + 1;
    swift_beginAccess();

    Frame.finalize(success:)(0);
    swift_endAccess();

    ++v3;
  }

LABEL_11:
  FrameArray.init()(&v27);

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  if (v11 == 2 && *(v1 + 32) == 0)
  {
    if ((*(v1 + 160) & 1) == 0)
    {
      v13 = *(v1 + 144);
      if (v13)
      {
        MEMORY[0x1865DF520](v13, -1, -1);
      }
    }

    sub_181F68EF4(v6, v7, v8, v9);

    v14 = v38;
    v15 = v40;
    *(v1 + 192) = v39;
    *(v1 + 208) = v15;
    v16 = v34;
    v17 = v36;
    v18 = v37;
    *(v1 + 128) = v35;
    *(v1 + 144) = v17;
    *(v1 + 224) = v41;
    *(v1 + 160) = v18;
    *(v1 + 176) = v14;
    v19 = v32;
    *(v1 + 64) = v31;
    *(v1 + 80) = v19;
    *(v1 + 96) = v33;
    *(v1 + 112) = v16;
    v20 = v28;
    *v1 = v27;
    *(v1 + 16) = v20;
    v21 = v30;
    *(v1 + 32) = v29;
    *(v1 + 48) = v21;
  }

  else
  {
    v22 = *(v1 + 32);
    v23 = v6;
    v24 = v10;
    v25 = v7;
    v26 = v11;
    sub_181F68EF4(v23, v25, v8, v9);

    sub_181F68F3C(v22, v24, v26);
    __break(1u);
  }
}

void FrameArray.drainArray(maximumFrameCount:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    goto LABEL_41;
  }

  if (*(v5 + 224) == 1)
  {
    if (a1 < 0)
    {
      FrameArray.init()(&v57);
LABEL_40:
      v25 = v68;
      v26 = v70;
      *(a3 + 192) = v69;
      *(a3 + 208) = v26;
      v27 = v64;
      v28 = v66;
      v29 = v67;
      *(a3 + 128) = v65;
      *(a3 + 144) = v28;
      *(a3 + 224) = v71;
      *(a3 + 160) = v29;
      *(a3 + 176) = v25;
      v30 = v62;
      *(a3 + 64) = v61;
      *(a3 + 80) = v30;
      *(a3 + 96) = v63;
      *(a3 + 112) = v27;
      v31 = v58;
      *a3 = v57;
      *(a3 + 16) = v31;
      v33 = v59;
      v32 = v60;
      goto LABEL_42;
    }

LABEL_41:
    v34 = v5[13];
    v84 = v5[12];
    v85 = v34;
    v86 = *(v5 + 224);
    v35 = v5[9];
    v80 = v5[8];
    v81 = v35;
    v36 = v5[11];
    v82 = v5[10];
    v83 = v36;
    v37 = v5[5];
    v76 = v5[4];
    v77 = v37;
    v38 = v5[7];
    v78 = v5[6];
    v79 = v38;
    v39 = v5[1];
    v72 = *v5;
    v73 = v39;
    v40 = v5[3];
    v74 = v5[2];
    v75 = v40;
    FrameArray.init()(&v87);
    v41 = v100;
    v5[12] = v99;
    v5[13] = v41;
    *(v5 + 224) = v101;
    v42 = v96;
    v5[8] = v95;
    v5[9] = v42;
    v43 = v98;
    v5[10] = v97;
    v5[11] = v43;
    v44 = v92;
    v5[4] = v91;
    v5[5] = v44;
    v45 = v94;
    v5[6] = v93;
    v5[7] = v45;
    v46 = v88;
    *v5 = v87;
    v5[1] = v46;
    v47 = v90;
    v5[2] = v89;
    v5[3] = v47;
    v48 = v85;
    *(a3 + 192) = v84;
    *(a3 + 208) = v48;
    *(a3 + 224) = v86;
    v49 = v81;
    *(a3 + 128) = v80;
    *(a3 + 144) = v49;
    v50 = v83;
    *(a3 + 160) = v82;
    *(a3 + 176) = v50;
    v51 = v77;
    *(a3 + 64) = v76;
    *(a3 + 80) = v51;
    v52 = v79;
    *(a3 + 96) = v78;
    *(a3 + 112) = v52;
    v53 = v73;
    *a3 = v72;
    *(a3 + 16) = v53;
    v33 = v74;
    v32 = v75;
LABEL_42:
    *(a3 + 32) = v33;
    *(a3 + 48) = v32;
    return;
  }

  v12 = *(v5 + 27);
  if (v12)
  {
    v12 = *(v12 + 24);
  }

  v24 = __OFADD__(v12, 1);
  v13 = v12 + 1;
  if (v24)
  {
    goto LABEL_48;
  }

  if (v13 <= a1)
  {
    goto LABEL_41;
  }

  FrameArray.init()(&v57);
  v6 = *(&v70 + 1);
  v7 = *(&v70 + 1);
  while (1)
  {
    while (v71 == 1)
    {
      if (a1 <= 0)
      {
        goto LABEL_40;
      }

      FrameArray.popFirst()(&v72);

      v97 = v82;
      v98 = v83;
      v99 = v84;
      LOBYTE(v100) = v85;
      v93 = v78;
      v94 = v79;
      v95 = v80;
      v96 = v81;
      v89 = v74;
      v90 = v75;
      v91 = v76;
      v92 = v77;
      v87 = v72;
      v88 = v73;
      v7 = *(&v57 + 1);
      v6 = v57;
      v8 = v58;
      v9 = BYTE8(v58);
      v3 = *(&v59 + 1);
      v13 = v59;
      LOBYTE(v4) = v60;
      if (v60 != 2 || v59 != 0)
      {
        goto LABEL_50;
      }

      if ((v67 & 1) == 0)
      {
        if (v66)
        {
          MEMORY[0x1865DF520](v66, -1, -1);
        }
      }

      sub_181F68EF4(v6, v7, v8, v9);

      v6 = 0;
      v7 = 0;
      v68 = v98;
      v69 = v99;
      v64 = v94;
      v65 = v95;
      v66 = v96;
      v67 = v97;
      v59 = v89;
      v60 = v90;
      v61 = v91;
      v62 = v92;
      v63 = v93;
      v57 = v87;
      v58 = v88;
      v70 = v100;
      v71 = 0;
      if (v5[14])
      {
        goto LABEL_40;
      }
    }

    if (!v7)
    {
      break;
    }

    v14 = *(v7 + 24);
    v24 = __OFADD__(v14, 1);
    v13 = v14 + 1;
    if (v24)
    {
      goto LABEL_43;
    }

LABEL_23:
    if (v13 >= a1)
    {
      goto LABEL_40;
    }

    FrameArray.popFirst()(&v72);
    if (!v7)
    {
      v6 = *sub_182AD2388();
      *(&v70 + 1) = v6;
    }

    type metadata accessor for FrameArrayEntry();
    v7 = swift_allocObject();
    swift_beginAccess();
    v15 = v77;
    *(v7 + 80) = v76;
    *(v7 + 96) = v15;
    v16 = v75;
    *(v7 + 48) = v74;
    *(v7 + 64) = v16;
    v17 = v81;
    *(v7 + 144) = v80;
    *(v7 + 160) = v17;
    v18 = v79;
    *(v7 + 112) = v78;
    *(v7 + 128) = v18;
    *(v7 + 224) = v85;
    v19 = v84;
    *(v7 + 192) = v83;
    *(v7 + 208) = v19;
    *(v7 + 176) = v82;
    v20 = v73;
    *(v7 + 16) = v72;
    *(v7 + 32) = v20;
    v13 = *(v6 + 24);
    v8 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v6 + 16) < v8 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F461F8(isUniquelyReferenced_nonNull_native, v8);
    }

    v6 = *(&v70 + 1);
    v13 = *(*(&v70 + 1) + 24);
    v22 = *(*(&v70 + 1) + 32);
    v24 = __OFADD__(v22, v13);
    v3 = v22 + v13;
    if (v24)
    {
      goto LABEL_45;
    }

    if (v13 < 0)
    {
      if (v3 < 0)
      {
        v4 = *(*(&v70 + 1) + 16);
        v24 = __OFADD__(v3, v4);
        v3 += v4;
        if (v24)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v23 = *(*(&v70 + 1) + 16);
      v24 = __OFSUB__(v3, v23);
      v4 = v3 - v23;
      if (v4 < 0 == v24)
      {
        v3 = v4;
        if (v24)
        {
          goto LABEL_47;
        }
      }
    }

    v3 = *(&v70 + 1) + 8 * v3;
    *(v3 + 40) = v7;
    v24 = __OFADD__(v13++, 1);
    if (v24)
    {
      goto LABEL_46;
    }

    *(v6 + 24) = v13;
    v7 = v6;
    if (v5[14])
    {
      goto LABEL_40;
    }
  }

  v13 = 1;
  if (!__OFSUB__(v71, 1))
  {
    goto LABEL_23;
  }

LABEL_43:
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
  v54 = v13;
  v55 = v3;
  v56 = v4;
  sub_181F68EF4(v6, v7, v8, v9);

  sub_181F68F3C(v54, v55, v56);
  __break(1u);
}

void FrameArray.unclaimedLength.getter()
{
  if ((*(v0 + 224) & 1) == 0)
  {
    v1 = *(v0 + 216);
    if (*(v0 + 24) == 5)
    {
      v2 = nw_frame_unclaimed_length(*v0);
      if (!v1)
      {
        return;
      }

      goto LABEL_9;
    }

    v3 = *(v0 + 72);
    if (v3)
    {
      v4 = *(v0 + 56);
      v5 = *(v0 + 64);
      v6 = __OFADD__(v4, v5);
      v7 = v4 + v5;
      if (v6)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v2 = v3 - v7;
      if (__OFSUB__(v3, v7))
      {
LABEL_31:
        __break(1u);
        return;
      }

      if (v1)
      {
LABEL_9:
        v8 = v1[4];
        v9 = v1[3] + v8;
        if (v1[2] < v9)
        {
          v9 = v1[2];
        }

        v20 = v1[4];
        v21 = v9;
        v10 = swift_retain_n();
        v11 = v1;
        do
        {
          if (v8 == v21)
          {
            if ((sub_181AC81FC(v10) & 1) == 0)
            {

              return;
            }

            v11 = v1;
            v8 = v20;
          }

          v14 = &v11[v8++];
          v20 = v8;
          v15 = v14[5];
          swift_beginAccess();
          if (*(v15 + 40) == 5)
          {
            v12 = *(v15 + 16);

            v13 = nw_frame_unclaimed_length(v12);
          }

          else
          {
            v16 = *(v15 + 88);
            if (v16)
            {
              v17 = *(v15 + 72);
              v18 = *(v15 + 80);
              v6 = __OFADD__(v17, v18);
              v19 = v17 + v18;
              if (v6)
              {
                goto LABEL_28;
              }

              v13 = v16 - v19;
              if (__OFSUB__(v16, v19))
              {
                goto LABEL_29;
              }
            }

            else
            {

              v13 = 0;
            }
          }

          swift_endAccess();

          v6 = __OFADD__(v2, v13);
          v2 += v13;
        }

        while (!v6);
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v2 = 0;
      if (v1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t FrameArray.iterateImmutableFrames(_:)(uint64_t result)
{
  if ((v1[14] & 1) == 0)
  {
    v2 = result;
    v3 = v1[10];
    v4 = v1[12];
    v30 = v1[11];
    v31 = v4;
    v5 = v1[6];
    v6 = v1[8];
    v7 = v1[9];
    v26 = v1[7];
    v27 = v6;
    v8 = *(v1 + 27);
    v32 = *(v1 + 208);
    v28 = v7;
    v29 = v3;
    v9 = v1[3];
    v21 = v1[2];
    v22 = v9;
    v10 = v1[5];
    v23 = v1[4];
    v24 = v10;
    v25 = v5;
    v11 = v1[1];
    v19 = *v1;
    v20 = v11;
    result = (result)(&v19);
    if (result)
    {
      if (v8)
      {
        v12 = v8[4];
        v13 = v8[3] + v12;
        if (v8[2] < v13)
        {
          v13 = v8[2];
        }

        *&v19 = v8;
        *(&v19 + 1) = v12;
        *&v20 = v13;
        v14 = swift_retain_n();
        v15 = v8;
        while (1)
        {
          if (v12 == v20)
          {
            if ((sub_181AC81FC(v14) & 1) == 0)
            {
LABEL_11:
            }

            v12 = *(&v19 + 1);
            v15 = v19;
          }

          v16 = v12 + 1;
          *(&v19 + 1) = v12 + 1;
          v17 = v15[v12 + 5];
          swift_beginAccess();

          v18 = v2(v17 + 16);
          swift_endAccess();

          v12 = v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FrameArray.popFirst()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[11];
  v92 = v1[10];
  v93 = v4;
  v94 = v1[12];
  v95 = *(v1 + 208);
  v5 = v1[7];
  v88 = v1[6];
  v89 = v5;
  v6 = v1[9];
  v90 = v1[8];
  v91 = v6;
  v7 = v1[3];
  v84 = v1[2];
  v85 = v7;
  v8 = v1[5];
  v86 = v1[4];
  v87 = v8;
  v9 = v1[1];
  v82 = *v1;
  v83 = v9;
  v10 = *(v1 + 27);
  if (!v10 || (v81 = *(v1 + 27), !v10[3]))
  {
    FrameArray.init()(&v68);

    v21 = v77;
    v22 = v79;
    v1[12] = v78;
    v1[13] = v22;
    v23 = v73;
    v24 = v75;
    v25 = v76;
    v1[8] = v74;
    v1[9] = v24;
    v1[10] = v25;
    v1[11] = v21;
    v26 = *&v71[32];
    v27 = v72;
    v1[4] = *&v71[16];
    v1[5] = v26;
    *(v1 + 224) = v80;
    v1[6] = v27;
    v1[7] = v23;
    v28 = v69;
    *v1 = v68;
    v1[1] = v28;
    v29 = *v71;
    v1[2] = v70;
    v1[3] = v29;
    goto LABEL_11;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v12 = v10;
  if ((result & 1) == 0)
  {
    result = sub_1820E5FD0();
    v12 = v81;
  }

  v13 = v12[4];
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v12[v13 + 5];
    v16 = v12[3];
    if (v14 >= v12[2])
    {
      v14 = 0;
    }

    v12[4] = v14;
    if (!__OFSUB__(v16, 1))
    {
      v12[3] = v16 - 1;
      v59[0] = 1;
      v68 = 0uLL;
      *&v69 = 0;
      BYTE8(v69) = 6;
      v70 = 0uLL;
      v71[0] = 2;
      memset(&v71[8], 0, 33);
      v72 = 0u;
      v73 = 0u;
      *&v74 = 0;
      DWORD2(v74) = 2;
      BYTE12(v74) = 1;
      v75 = 0uLL;
      LOBYTE(v76) = 1;
      v77 = 0uLL;
      *(&v76 + 1) = 0;
      LOWORD(v78) = 256;
      BYTE2(v78) = 0;
      *(&v78 + 1) = 0;
      LOBYTE(v79) = -1;
      v17 = Frame.bufferLength.getter();
      swift_beginAccess();
      v44 = *(v15 + 16);
      v18 = *(v15 + 32);
      v43 = *(v15 + 40);
      LODWORD(v67) = *(v15 + 41);
      *(&v67 + 3) = *(v15 + 44);
      v41 = *(v15 + 56);
      v42 = *(v15 + 48);
      v40 = *(v15 + 64);
      LODWORD(v66) = *(v15 + 65);
      *(&v66 + 3) = *(v15 + 68);
      v45 = *(v15 + 104);
      LODWORD(v65) = *(v15 + 105);
      *(&v65 + 3) = *(v15 + 108);
      v58 = *(v15 + 144);
      v56 = *(v15 + 156);
      v57 = *(v15 + 152);
      v63 = *(v15 + 157);
      v64 = *(v15 + 159);
      v54 = *(v15 + 168);
      v55 = *(v15 + 160);
      v53 = *(v15 + 176);
      LODWORD(v62) = *(v15 + 177);
      *(&v62 + 3) = *(v15 + 180);
      v52 = *(v15 + 184);
      v51 = *(v15 + 192);
      v49 = *(v15 + 201);
      v50 = *(v15 + 193);
      v48 = *(v15 + 209);
      v61 = *(v15 + 215);
      v60 = *(v15 + 211);
      v47 = *(v15 + 216);
      v46 = *(v15 + 224);
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 40) = 6;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 2;
      v19 = *(v15 + 72);
      v20 = *(v15 + 88);
      *(v15 + 72) = 0;
      *(v15 + 80) = 0;
      *(v15 + 88) = v17;
      *(v15 + 96) = 0;
      *(v15 + 104) = 0;
      v38 = *(v15 + 112);
      v39 = v19;
      v36 = *(v15 + 128);
      v37 = v20;
      *(v15 + 144) = 0;
      *(v15 + 112) = 0u;
      *(v15 + 128) = 0u;
      *(v15 + 152) = 2;
      *(v15 + 156) = 1;
      *(v15 + 160) = 0;
      *(v15 + 168) = 0;
      *(v15 + 176) = 1;
      *(v15 + 184) = 0;
      *(v15 + 192) = 0;
      *(v15 + 208) = 0;
      *(v15 + 200) = 0;
      *(v15 + 209) = 1;
      *(v15 + 216) = 0;
      *(v15 + 224) = -1;

      *v2 = v44;
      *(v2 + 2) = v18;
      *(v2 + 24) = v43;
      *(v2 + 25) = v67;
      *(v2 + 7) = *(&v67 + 3);
      *(v2 + 4) = v42;
      *(v2 + 5) = v41;
      *(v2 + 48) = v40;
      *(v2 + 49) = v66;
      *(v2 + 13) = *(&v66 + 3);
      *(v2 + 72) = v37;
      *(v2 + 56) = v39;
      *(v2 + 88) = v45;
      *(v2 + 89) = v65;
      *(v2 + 23) = *(&v65 + 3);
      v2[6] = v38;
      v2[7] = v36;
      *(v2 + 16) = v58;
      *(v2 + 34) = v57;
      *(v2 + 140) = v56;
      *(v2 + 141) = v63;
      *(v2 + 143) = v64;
      *(v2 + 18) = v55;
      *(v2 + 19) = v54;
      *(v2 + 160) = v53;
      *(v2 + 41) = *(&v62 + 3);
      *(v2 + 161) = v62;
      *(v2 + 21) = v52;
      *(v2 + 176) = v51;
      *(v2 + 177) = v50;
      *(v2 + 185) = v49;
      *(v2 + 193) = v48;
      *(v2 + 199) = v61;
      *(v2 + 195) = v60;
      *(v2 + 25) = v47;
      *(v2 + 208) = v46;
      *(v2 + 53) = *&v59[3];
      *(v2 + 209) = *v59;
      *(v2 + 27) = v12;
      *(v2 + 224) = 0;
LABEL_11:
      v30 = v93;
      *(a1 + 160) = v92;
      *(a1 + 176) = v30;
      *(a1 + 192) = v94;
      *(a1 + 208) = v95;
      v31 = v89;
      *(a1 + 96) = v88;
      *(a1 + 112) = v31;
      v32 = v91;
      *(a1 + 128) = v90;
      *(a1 + 144) = v32;
      v33 = v85;
      *(a1 + 32) = v84;
      *(a1 + 48) = v33;
      v34 = v87;
      *(a1 + 64) = v86;
      *(a1 + 80) = v34;
      v35 = v83;
      *a1 = v82;
      *(a1 + 16) = v35;
      return result;
    }
  }

  __break(1u);
  return result;
}