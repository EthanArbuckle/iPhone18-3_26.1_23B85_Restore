uint64_t sub_182109C08@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = sub_1820E2CC0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a3 + 16) = sub_1820E2CC0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a4 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    result = Deserializer.buffer(_:length:)(result, &v20);
    if (v9 == 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    if (v11 == 1)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
    v19 = 1;
    if ((v16 & 1) == 0 && (v17 & 1) == 0)
    {
      v18 = v20;
      if ((v15 & (v14 == 1)) != 0)
      {
        v18 = 1;
      }

      v19 = v15 & (v14 == 1) | v21;
    }

    *a5 = v18;
    *(a5 + 8) = v19 & 1;
  }

  return result;
}

unint64_t sub_182109CF0(unint64_t result, uint64_t *a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = 26;
  }

  else
  {
    v6 = 34;
  }

  if (result)
  {
    v7 = 25;
  }

  else
  {
    v7 = 33;
  }

  if (result)
  {
    v8 = 28;
  }

  else
  {
    v8 = 36;
  }

  if (result)
  {
    v9 = 27;
  }

  else
  {
    v9 = 35;
  }

  if (result)
  {
    v10 = 32;
  }

  else
  {
    v10 = 40;
  }

  if (result)
  {
    v11 = 31;
  }

  else
  {
    v11 = 39;
  }

  if (HIBYTE(a4) != 1)
  {
    v8 = v10;
    v9 = v11;
  }

  if (HIBYTE(a4))
  {
    v12 = v8;
  }

  else
  {
    v12 = v6;
  }

  if (HIBYTE(a4))
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  v15 = *a2;
  if (*a2)
  {
    v17 = *(v15 + 16);
    if (v17)
    {
      result = sub_181A41ED0(v13);
      if (v18)
      {
        v17 = *(*(v15 + 56) + 8 * result);
      }

      else
      {
        v17 = 0;
      }
    }

    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *a2;
      result = sub_182258BF8(v19, v13, isUniquelyReferenced_nonNull_native);
      *a2 = v27;
      if (!v27)
      {
        return result;
      }

      v21 = *(a6 + 16);
      v22 = *(v27 + 16);
      if (v22)
      {
        result = sub_181A41ED0(v12);
        if (v23)
        {
          v22 = *(*(v27 + 56) + 8 * result);
        }

        else
        {
          v22 = 0;
        }
      }

      v24 = __OFADD__(v22, v21);
      v25 = v22 + v21;
      if (!v24)
      {
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v28 = *a2;
        result = sub_182258BF8(v25, v12, v26);
        *a2 = v28;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_182109E64(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  if (*(a1 + 24) == 2)
  {
    v16 = swift_projectBox();
    sub_181AB5D28(v16, v15, &qword_1EA8398E0);
    v17 = sub_182AD2868();
    v18 = *(*(v17 - 8) + 8);
    v61 = a5;

    v18(v15, v17);
    sub_1822A9284(a1, a2 & 1, a3, a4, v61, a6, &v45);
    v19 = v45;
    if (!BYTE8(v45))
    {
      return 0;
    }

LABEL_34:
    if (v19 > 1)
    {
      v45 = 0uLL;
      LOBYTE(v46) = 96;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }

    return 0;
  }

  v43 = a2;
  v61 = v6;
  v20 = *(a1 + 16);
  v45 = *a1;
  v46 = v20;
  v47 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v60 = *(a1 + 208);
  v24 = *(a1 + 64);
  v23 = *(a1 + 72);
  v25 = *(a1 + 192);
  v58 = *(a1 + 176);
  v59 = v25;
  v26 = *(a1 + 128);
  v54 = *(a1 + 112);
  v55 = v26;
  v27 = *(a1 + 160);
  v56 = *(a1 + 144);
  v57 = v27;
  v28 = *(a1 + 96);
  v52 = *(a1 + 80);
  v53 = v28;
  v48 = v21;
  v49 = v22;
  v50 = v24;
  v51 = v23;

  result = Frame.unclaimedBytes.getter();
  if (v31)
  {

    v19 = 2;
    goto LABEL_34;
  }

  if (*(a1 + 24) == 5)
  {
    v32 = result;
    v33 = v30;
    v34 = nw_frame_unclaimed_length(*a1);
    v30 = v33;
    v35 = v34;
    result = v32;
    v36 = v35;
    goto LABEL_14;
  }

  if (!v23)
  {
    goto LABEL_13;
  }

  v37 = v22 + v24;
  if (__OFADD__(v22, v24))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v36 = v23 - v37;
  if (__OFSUB__(v23, v37))
  {
    __break(1u);
LABEL_13:
    v36 = 0;
  }

LABEL_14:
  *&v45 = result;
  *(&v45 + 1) = v30;
  v46 = 0uLL;
  LOBYTE(v47) = 1;
  result = sub_18210A264(a3, a4, a5, a6, v44);
  v19 = *(&v46 + 1);
  if (v47 != 1)
  {
    if (v43)
    {
LABEL_18:
      result = v36 - v19;
      if (!__OFSUB__(v36, v19))
      {
        v39 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);

        if (v39)
        {
          return 0;
        }

LABEL_33:
        v19 = 2;
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    v38 = 0;
LABEL_31:

    if (!v38)
    {
      return 0;
    }

    goto LABEL_34;
  }

  if (*(&v46 + 1))
  {
    v38 = 1;
    goto LABEL_31;
  }

  if (v45)
  {
    v40 = *(&v45 + 1) - v45;
  }

  else
  {
    v40 = 0;
  }

  v19 = v40 - v46;
  if (__OFSUB__(v40, v46))
  {
    goto LABEL_39;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    v38 = v40 == v46;
    if (v43)
    {
      if (!v19)
      {
        v41 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v36, 0, 1);

        if (v41)
        {
          v19 = 0;
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18210A264@<X0>(uint64_t a1@<X1>, char a2@<W2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = sub_182104788(a1, a2);
  InPlaceSerializer.vle(_:)(v8, &v22);
  InPlaceSerializer.vle(_:)(a3, &v20);
  sub_1821065FC(*(a4 + 16), &v18);
  result = InPlaceSerializer.buffer(_:)(a4, &v16);
  v10 = v22;
  v11 = v23 == 1 && v22 > 1;
  if (v11 || ((v12 = v21, (v21 & (v20 == 1)) != 0) ? (v12 = v23) : (v10 = v20), v12 ? (v13 = v10 > 1) : (v13 = 0), v13 || ((v14 = v18, (v19 & (v18 == 1)) == 0) ? (v15 = v19) : (v14 = v10, v15 = v12), v15 && v14 > 1)))
  {
    LOBYTE(v15) = 1;
    v14 = 2;
  }

  else if ((v17 & (v16 == 1)) == 0)
  {
    v14 = v16;
    LOBYTE(v15) = v17;
  }

  *a5 = v14;
  *(a5 + 8) = v15;
  return result;
}

uint64_t sub_18210A36C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  *a2 = sub_1820E2CC0();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    result = Deserializer.buffer(_:length:)(result, &v15);
    if (v7 == 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = 1;
      v14 = 1;
    }

    else
    {
      v13 = v15;
      if ((v11 & (v10 == 1)) != 0)
      {
        v13 = 1;
      }

      v14 = v11 & (v10 == 1) | v16;
    }

    *a4 = v13;
    *(a4 + 8) = v14 & 1;
  }

  return result;
}

uint64_t sub_18210A434(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = a3;
    }

    else
    {
      v4 = qword_182AF77D0[a2];
    }
  }

  else
  {
    v5 = a2 + 8;
    if (a2 >= 0xFFFFFFFFFFFFFFF8)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v5 < 0x40)
    {
      v4 = 1;
    }

    else if (v5 < 0x4000)
    {
      v4 = 2;
    }

    else if (v5 >> 30)
    {
      if (v5 >> 62)
      {
        goto LABEL_24;
      }

      v4 = 8;
    }

    else
    {
      v4 = 4;
    }
  }

  v6 = *(a4 + 16);
  if (v6 < 0x40)
  {
    v7 = 1;
    return v6 + v4 + v7;
  }

  if (v6 < 0x4000)
  {
    v7 = 2;
    return v6 + v4 + v7;
  }

  if (!(v6 >> 30))
  {
    v7 = 4;
    return v6 + v4 + v7;
  }

  if (!(v6 >> 62))
  {
    v7 = 8;
    return v6 + v4 + v7;
  }

LABEL_24:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

unint64_t *sub_18210A56C@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 <= 7)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_18210A58C@<X0>(unint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  result = InPlaceSerializer.vle(_:)(a1, &v22);
  v6 = a2[2];
  if (*(v6 + 24))
  {
    __break(1u);
  }

  else
  {
    InPlaceSerializer.vle(_:)(*(v6 + 16), &v20);
    v7 = a2[3];
    if (v7)
    {
      InPlaceSerializer.vle(_:)(v7, &v18);
      v8 = v18;
      v9 = v19;
    }

    else
    {
      v8 = 0;
      v9 = 1;
    }

    result = InPlaceSerializer.vle(_:)(a2[4], &v18);
    v10 = v22;
    if (v23 == 1 && v22 > 1 || ((v11 = v21, (v21 & (v20 == 1)) != 0) ? (v11 = v23) : (v10 = v20), v11 ? (v12 = v10 > 1) : (v12 = 0), v12 || ((v13 = v8 == 1, v14 = (v9 & v13) == 0) ? (v15 = v8) : (v15 = v10), v14 ? (v16 = v9) : (v16 = v11), v16 == 1 ? (v17 = v15 > 1) : (v17 = 0), v17)))
    {
      LOBYTE(v16) = 1;
      v15 = 2;
    }

    else if ((v19 & (v18 == 1)) == 0)
    {
      v15 = v18;
      LOBYTE(v16) = v19;
    }

    *a3 = v15;
    *(a3 + 8) = v16;
  }

  return result;
}

uint64_t sub_18210A6B4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = sub_1820E2CC0();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a3 + 16) = sub_1820E2CC0();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  if ((*a2 & 4) != 0)
  {
    *(a3 + 24) = sub_1820E2CC0();
    if (*(a1 + 24) == 1)
    {
      v14 = *(a1 + 32);
    }

    else
    {
      v14 = 0;
    }

    if ((*a2 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    result = Deserializer.buffer(_:)(&v22);
    v18 = v22;
    v19 = v23;
    goto LABEL_12;
  }

  v14 = 0;
  if ((*a2 & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_1820E2CC0();
  *a4 = result;
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  result = Deserializer.buffer(_:length:)(result, &v22);
  v18 = v22;
  if ((v17 & (v16 == 1)) != 0)
  {
    v18 = 1;
  }

  v19 = v17 & (v16 == 1) | v23;
LABEL_12:
  if (v10 == 1)
  {
    v20 = v11;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v14 | v13 & (v12 == 1);
  if (v21)
  {
    v18 = 1;
  }

  *a5 = v18;
  *(a5 + 8) = (v21 | v19) & 1;
  return result;
}

unint64_t sub_18210A7EC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a2 = sub_1820E2CC0();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(a3 + 16) = sub_1820E2CC0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  result = sub_1820E2CC0();
  *(a3 + 24) = result;
  if (v8 == 1 && v7 == 1)
  {
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v13 = *(a1 + 24);
    if ((v10 & (v9 == 1)) != 0)
    {
      v13 = 1;
    }

    v14 = v10 & (v9 == 1) | *(a1 + 32);
  }

  *a4 = v13;
  *(a4 + 8) = v14 & 1;
  return result;
}

uint64_t sub_18210A898@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v95 = a2;
  v91 = a3;
  v97 = sub_182AD27E8();
  v92 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v88 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v88 - v17;
  *&v120 = 16;
  BYTE8(v120) = 2;
  v121 = 0uLL;
  v123 = 0;
  v119 = 0;
  v117 = MEMORY[0x1E69E7CC0];
  v118 = MEMORY[0x1E69E7CC0];
  sub_1822C3A50(MEMORY[0x1E69E7CC0], v122);
  StatelessResetToken.init()(v122 + 1);
  v98[2] = &v123;
  v98[3] = &v120;
  v98[4] = &v119;
  v98[5] = &v118;
  v98[6] = &v117;
  if (*(a1 + 24) == 2)
  {
    v89 = v13;
    v19 = swift_projectBox();
    sub_181AB5D28(v19, v18, &qword_1EA8398E0);
    v20 = sub_182AD2868();
    v21 = *(*(v20 - 8) + 8);
    v21(v18, v20);
    v22 = a1[11];
    v113 = a1[10];
    v114 = v22;
    v115 = a1[12];
    v116 = *(a1 + 208);
    v23 = a1[7];
    v109 = a1[6];
    v110 = v23;
    v24 = a1[9];
    v111 = a1[8];
    v112 = v24;
    v25 = a1[3];
    v105 = a1[2];
    v106 = v25;
    v26 = a1[5];
    v107 = a1[4];
    v108 = v26;
    v27 = a1[1];
    v103 = *a1;
    v104 = v27;
    sub_1821438A8(v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v43 = v93;
      sub_182022420(v7, v93);
      v44 = v89;
      sub_181AB5D28(v43, v89, &unk_1EA83A980);
      v45 = sub_182AD27F8();
      v21(v44, v20);
      v46 = *(v45 + 16);

      if (!v46)
      {
        sub_181F49A88(v43, &unk_1EA83A980);
        goto LABEL_5;
      }

      v47 = v20;
      if (v46 != 1)
      {
        v101 = xmmword_182AE7580;
        v55 = v89;
        sub_181AB5D28(v43, v89, &unk_1EA83A980);
        v56 = sub_182AD27F8();
        v21(v55, v47);
        v57 = *(v56 + 16);
        v58 = v97;
        if (v57)
        {
          v59 = *(v92 + 80);
          v90 = v56;
          v60 = v56 + ((v59 + 32) & ~v59);
          v94 = *(v92 + 72);
          v61 = (v92 + 16);
          v62 = v96;
          do
          {
            *(&v104 + 1) = v58;
            *&v105 = MEMORY[0x1E6969D40];
            boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v103);
            (*v61)(boxed_opaque_existential_0Tm, v60, v58);
            __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
            sub_182AD1DC8();
            v64 = v99;
            v65 = v100;
            __swift_destroy_boxed_opaque_existential_1(&v103);
            sub_182AD2178();
            v66 = v64;
            v58 = v97;
            sub_181C1F2E4(v66, v65);
            v60 += v94;
            --v57;
          }

          while (v57);
          v96 = v62;

          v38 = v95;
          v43 = v93;
        }

        else
        {

          v38 = v95;
        }

        v87 = v101;
        MEMORY[0x1EEE9AC00](v67);
        *(&v88 - 4) = a1;
        *(&v88 - 24) = 1;
        *(&v88 - 2) = sub_182123158;
        *(&v88 - 1) = v98;
        v37 = v96;
        sub_1820E375C(sub_182022490, (&v88 - 6), v87, *(&v87 + 1));
        sub_181F49A88(v43, &unk_1EA83A980);
        sub_181C1F2E4(v87, *(&v87 + 1));
        goto LABEL_34;
      }

      v48 = v94;
      sub_181AB5D28(v43, v94, &unk_1EA83A980);
      v49 = sub_182AD27F8();
      v21(v48, v47);
      v50 = v97;
      if (*(v49 + 16))
      {
        v51 = v92;
        v52 = v90;
        (*(v92 + 16))(v90, v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v97);

        MEMORY[0x1EEE9AC00](v53);
        *(&v88 - 4) = a1;
        *(&v88 - 24) = 1;
        *(&v88 - 2) = sub_182123158;
        *(&v88 - 1) = v98;
        v37 = v96;
        sub_182AD27D8();
        sub_181F49A88(v43, &unk_1EA83A980);
        (*(v51 + 8))(v52, v50);
        goto LABEL_6;
      }

LABEL_49:

      __break(1u);
      return result;
    }

    sub_181F49A88(v7, &qword_1EA839BA8);
  }

  v28 = a1[11];
  v113 = a1[10];
  v114 = v28;
  v115 = a1[12];
  v116 = *(a1 + 208);
  v29 = a1[7];
  v109 = a1[6];
  v110 = v29;
  v30 = a1[9];
  v111 = a1[8];
  v112 = v30;
  v31 = a1[3];
  v105 = a1[2];
  v106 = v31;
  v32 = a1[5];
  v107 = a1[4];
  v108 = v32;
  v33 = a1[1];
  v103 = *a1;
  v104 = v33;
  v34 = Frame.unclaimedBytes.getter();
  if (v36)
  {
LABEL_5:
    v99 = 1;
    LOBYTE(v100) = 1;
    v37 = v96;
LABEL_6:
    v38 = v95;
    goto LABEL_34;
  }

  if (v34)
  {
    v39 = v35;
  }

  else
  {
    v39 = 0;
  }

  *&v103 = v34;
  *(&v103 + 1) = v39;
  v104 = 0uLL;
  LOBYTE(v105) = 1;
  v123 = sub_1820E2CC0();
  v40 = sub_1820E2CC0();
  v38 = v95;
  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  *&v121 = v40;
  *(&v121 + 1) = sub_1820E2CC0();
  Deserializer.uint8(_:)(&v119, &v101);
  Deserializer.buffer(_:length:)(v119, &v99);
  Deserializer.buffer(_:length:)(16, &v102);
  v41 = *(&v104 + 1);
  if (v105 != 1)
  {
    v54 = 0;
LABEL_30:
    v69 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v104, 0, 1);
    if (!v69)
    {
      v41 = 2;
    }

    v42 = !v69 || v54;
    goto LABEL_33;
  }

  if (!*(&v104 + 1))
  {
    if (v103)
    {
      v68 = *(&v103 + 1) - v103;
    }

    else
    {
      v68 = 0;
    }

    v41 = v68 - v104;
    if (!__OFSUB__(v68, v104))
    {
      if ((v41 & 0x8000000000000000) == 0)
      {
        v54 = v68 == v104;
        goto LABEL_30;
      }

      goto LABEL_48;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v42 = 1;
LABEL_33:
  v99 = v41;
  LOBYTE(v100) = v42 & 1;
  v37 = v96;
LABEL_34:
  if (v100 == 1 && v99)
  {
    v103 = 0uLL;
    v70 = 82;
    LOBYTE(v104) = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v122[1] = v120;
    v122[2] = v121;
    v122[3] = v122[0];
    v73 = sub_182105908(v123);
    if (v37)
    {
      v71 = v73;
      v72 = v74;
      v70 = v75;
    }

    else
    {
      v76 = v119;
      if (v119 - 21 >= 0xFFFFFFEC)
      {

        sub_1822C3A50(v80, &v103);
        v81 = v103;

        *&v122[0] = v81;

        StatelessResetToken.init(_:)(v82, &v103);
        v83 = v103;

        v84 = BYTE8(v120);
        v85 = *&v122[0];
        v86 = v91;
        *v91 = v120;
        *(v86 + 8) = v84;
        *(v86 + 1) = v121;
        v86[4] = v85;
        v86[5] = v83;
        return result;
      }

      *&v103 = 0;
      *(&v103 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v103 = 0x676E656C20646963;
      *(&v103 + 1) = 0xEB00000000206874;
      LOBYTE(v101) = v76;
      v77 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v77);

      MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDE440);
      *&v101 = 20;
      v78 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v78);

      v72 = *(&v103 + 1);
      v71 = v103;
      v70 = 81;
      LOBYTE(v104) = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }
  }

  *v38 = v71;
  *(v38 + 8) = v72;
  *(v38 + 16) = v70;
  return result;
}

unint64_t sub_18210B36C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = sub_1820E2CC0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  result = sub_1820E2CC0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = a5;
    *(a3 + 16) = result;
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    *(a3 + 24) = sub_1820E2CC0();
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    Deserializer.uint8(_:)(a4, &v27);
    Deserializer.buffer(_:length:)(*a4, &v25);
    result = Deserializer.buffer(_:length:)(16, &v23);
    if (v9 == 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    if (v12 == 1)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    if (v14 == 1)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = 1;
    v20 = 1;
    if (v16 & 1) != 0 || (v17)
    {
      v21 = v22;
    }

    else
    {
      v21 = v22;
      if ((v18 & 1) == 0)
      {
        if (v28 != 1 || (v19 = v27, v27 != 1))
        {
          if ((v26 & (v25 == 1)) != 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = v23;
          }

          v20 = v26 & (v25 == 1) | v24;
        }
      }
    }

    *v21 = v19;
    *(v21 + 8) = v20 & 1;
  }

  return result;
}

uint64_t sub_18210B4B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_182104788(*a1, *(a1 + 8));
  InPlaceSerializer.vle(_:)(v4, &v20);
  sub_1821065FC(*(a1 + 16), &v18);
  InPlaceSerializer.vle(_:)(*(a1 + 24), &v16);
  v22 = *(a1 + 32);
  v11 = v22;
  sub_1822A6070(&v11, &v14);
  sub_182123280(&v22, v13);

  result = InPlaceSerializer.buffer(_:)(*(a1 + 40), &v11);
  v6 = v20;
  v7 = v21;
  if (v21 == 1 && v20 > 1)
  {
    goto LABEL_16;
  }

  if ((v19 & (v18 == 1)) == 0)
  {
    v6 = v18;
    v7 = v19;
  }

  if (v7 && v6 > 1)
  {
    goto LABEL_16;
  }

  if ((v17 & (v16 == 1)) == 0)
  {
    v6 = v16;
    v7 = v17;
  }

  if (v7 && v6 > 1 || ((v8 = v14, (v15 & (v14 == 1)) == 0) ? (v9 = v15) : (v8 = v6, v9 = v7), v9 && v8 > 1))
  {
LABEL_16:
    LOBYTE(v9) = 1;
    v10 = 2;
  }

  else
  {
    v10 = v11;
    if ((v12 & (v11 == 1)) != 0)
    {
      v10 = v8;
    }

    else
    {
      LOBYTE(v9) = v12;
    }
  }

  *a2 = v10;
  *(a2 + 8) = v9;
  return result;
}

uint64_t sub_18210B614(uint64_t a1, uint64_t a2)
{
  v3 = sub_182104788(*a2, *(a2 + 8));
  if (v3 < 0x40)
  {
    v4 = *(a2 + 16);
    if (v4 > 63)
    {
      if (v4 >> 14)
      {
        if (v4 >> 30)
        {
          v5 = 1;
          goto LABEL_26;
        }

        v12 = *(a2 + 24);
        if (v12 >= 0x40)
        {
          if (v12 >= 0x4000)
          {
            if (v12 >> 30)
            {
              if (v12 >> 62)
              {
                goto LABEL_146;
              }

              v5 = 1;
              goto LABEL_115;
            }

            v5 = 1;
LABEL_139:
            v7 = 4;
            goto LABEL_140;
          }

          v5 = 1;
LABEL_135:
          v7 = 4;
          v8 = 3;
          goto LABEL_141;
        }

        v5 = 1;
LABEL_86:
        v7 = 4;
        v8 = 2;
        goto LABEL_141;
      }

      v10 = *(a2 + 24);
      if (v10 >= 0x40)
      {
        if (v10 >= 0x4000)
        {
          if (v10 >> 30)
          {
            if (v10 >> 62)
            {
              goto LABEL_146;
            }

            v5 = 1;
            goto LABEL_37;
          }

          v5 = 1;
LABEL_103:
          v7 = 2;
LABEL_140:
          v8 = 5;
          goto LABEL_141;
        }

        v5 = 1;
LABEL_83:
        v7 = 2;
        v8 = 3;
        goto LABEL_141;
      }

      v5 = 1;
LABEL_61:
      v8 = 2;
      v7 = 2;
      goto LABEL_141;
    }

    v6 = *(a2 + 24);
    if (v6 < 0x40)
    {
      v7 = 1;
      v8 = 2;
      v5 = 1;
    }

    else if (v6 < 0x4000)
    {
      v7 = 1;
      v8 = 3;
      v5 = 1;
    }

    else
    {
      if (v6 >> 30)
      {
        if (!(v6 >> 62))
        {
          v7 = 1;
          v8 = 9;
          v5 = 1;
          goto LABEL_141;
        }

        goto LABEL_146;
      }

      v7 = 1;
      v8 = 5;
      v5 = 1;
    }
  }

  else
  {
    if (v3 < 0x4000)
    {
      v4 = *(a2 + 16);
      if (v4 < 64)
      {
        v11 = *(a2 + 24);
        if (v11 >= 0x40)
        {
          if (v11 >= 0x4000)
          {
            if (v11 >> 30)
            {
              if (v11 >> 62)
              {
                goto LABEL_146;
              }

              v5 = 2;
              goto LABEL_69;
            }

            v5 = 2;
            goto LABEL_127;
          }

          v5 = 2;
          goto LABEL_117;
        }

        v7 = 1;
      }

      else
      {
        if (v4 < 0x4000)
        {
          v13 = *(a2 + 24);
          if (v13 < 0x40)
          {
            v8 = 2;
            v7 = 2;
            v5 = 2;
          }

          else if (v13 < 0x4000)
          {
            v7 = 2;
            v8 = 3;
            v5 = 2;
          }

          else if (v13 >> 30)
          {
            if (v13 >> 62)
            {
              goto LABEL_146;
            }

            v7 = 2;
            v8 = 9;
            v5 = 2;
          }

          else
          {
            v7 = 2;
            v8 = 5;
            v5 = 2;
          }

          goto LABEL_141;
        }

        if (v4 >> 30)
        {
          v5 = 2;
          goto LABEL_26;
        }

        v16 = *(a2 + 24);
        if (v16 >= 0x40)
        {
          if (v16 >= 0x4000)
          {
            if (v16 >> 30)
            {
              if (v16 >> 62)
              {
                goto LABEL_146;
              }

              v5 = 2;
              goto LABEL_115;
            }

            v5 = 2;
            goto LABEL_139;
          }

          v5 = 2;
          goto LABEL_135;
        }

        v7 = 4;
      }

      v8 = 2;
      v5 = 2;
      goto LABEL_141;
    }

    if (v3 >> 30)
    {
      if (v3 >> 62)
      {
        goto LABEL_146;
      }

      v4 = *(a2 + 16);
      if (v4 >= 64)
      {
        if (v4 >= 0x4000)
        {
          if (v4 >> 30)
          {
            v5 = 8;
LABEL_26:
            if (v4 >> 62)
            {
              goto LABEL_146;
            }

            v9 = *(a2 + 24);
            if (v9 < 0x40)
            {
              v7 = 8;
              v8 = 2;
              goto LABEL_141;
            }

            if (v9 < 0x4000)
            {
              v7 = 8;
              v8 = 3;
              goto LABEL_141;
            }

            if (v9 >> 30)
            {
              if (!(v9 >> 62))
              {
                v7 = 8;
                v8 = 9;
                goto LABEL_141;
              }

LABEL_146:
              result = sub_182AD3EA8();
              __break(1u);
              return result;
            }

            v7 = 8;
            goto LABEL_140;
          }

          v20 = *(a2 + 24);
          if (v20 >= 0x40)
          {
            if (v20 >= 0x4000)
            {
              if (v20 >> 30)
              {
                if (v20 >> 62)
                {
                  goto LABEL_146;
                }

                v5 = 8;
LABEL_115:
                v7 = 4;
                v8 = 9;
                goto LABEL_141;
              }

              v5 = 8;
              goto LABEL_139;
            }

            v5 = 8;
            goto LABEL_135;
          }

          v5 = 8;
          goto LABEL_86;
        }

        v18 = *(a2 + 24);
        if (v18 >= 0x40)
        {
          if (v18 >= 0x4000)
          {
            if (v18 >> 30)
            {
              if (v18 >> 62)
              {
                goto LABEL_146;
              }

              v5 = 8;
LABEL_37:
              v7 = 2;
              v8 = 9;
              goto LABEL_141;
            }

            v5 = 8;
            goto LABEL_103;
          }

          v5 = 8;
          goto LABEL_83;
        }

        v5 = 8;
        goto LABEL_61;
      }

      v15 = *(a2 + 24);
      if (v15 >= 0x40)
      {
        if (v15 >= 0x4000)
        {
          if (v15 >> 30)
          {
            if (v15 >> 62)
            {
              goto LABEL_146;
            }

            v5 = 8;
LABEL_69:
            v7 = 1;
            v8 = 9;
            goto LABEL_141;
          }

          v5 = 8;
          goto LABEL_127;
        }

        v5 = 8;
        goto LABEL_117;
      }

      v5 = 8;
      goto LABEL_95;
    }

    v4 = *(a2 + 16);
    if (v4 < 64)
    {
      v14 = *(a2 + 24);
      if (v14 >= 0x40)
      {
        if (v14 >= 0x4000)
        {
          if (v14 >> 30)
          {
            if (v14 >> 62)
            {
              goto LABEL_146;
            }

            v5 = 4;
            goto LABEL_69;
          }

          v5 = 4;
LABEL_127:
          v7 = 1;
          goto LABEL_140;
        }

        v5 = 4;
LABEL_117:
        v7 = 1;
        v8 = 3;
        goto LABEL_141;
      }

      v5 = 4;
LABEL_95:
      v7 = 1;
      v8 = 2;
      goto LABEL_141;
    }

    if (v4 < 0x4000)
    {
      v17 = *(a2 + 24);
      if (v17 >= 0x40)
      {
        if (v17 >= 0x4000)
        {
          if (v17 >> 30)
          {
            if (v17 >> 62)
            {
              goto LABEL_146;
            }

            v5 = 4;
            goto LABEL_37;
          }

          v5 = 4;
          goto LABEL_103;
        }

        v5 = 4;
        goto LABEL_83;
      }

      v5 = 4;
      goto LABEL_61;
    }

    if (v4 >> 30)
    {
      v5 = 4;
      goto LABEL_26;
    }

    v19 = *(a2 + 24);
    if (v19 < 0x40)
    {
      v7 = 4;
      v8 = 2;
    }

    else if (v19 < 0x4000)
    {
      v7 = 4;
      v8 = 3;
    }

    else if (v19 >> 30)
    {
      if (v19 >> 62)
      {
        goto LABEL_146;
      }

      v7 = 4;
      v8 = 9;
    }

    else
    {
      v7 = 4;
      v8 = 5;
    }

    v5 = 4;
  }

LABEL_141:
  v21 = *(*(a2 + 32) + 16);
  if (v21 > 0xFF)
  {
    __break(1u);
    goto LABEL_145;
  }

  v22 = *(*(a2 + 40) + 16);
  v23 = v8 + v7 + v5 + v21;
  result = v23 + v22;
  if (__OFADD__(v23, v22))
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  return result;
}

unint64_t sub_18210BBC4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a2 = sub_1820E2CC0();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  result = sub_1820E2CC0();
  *(a3 + 16) = result;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if ((v8 & (v7 == 1)) != 0)
  {
    v10 = 1;
  }

  *a4 = v10;
  *(a4 + 8) = v8 & (v7 == 1) | v11 & 1;
  return result;
}

uint64_t sub_18210BC40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, unint64_t *)@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v26 = a4;
  v27 = 2;
  v28 = 0;

  v29 = v11;
  v30 = 0;
  a5(&v23, a1, 1, &v30, &v26);
  if (v24 != 1 || v23 == 0)
  {
    v13 = v26;
    v14 = v27;
    v16 = v28;
    v15 = v29;
    result = sub_182105240(v30, v26, v27);
    if (!v6)
    {
      *a6 = v13;
      *(a6 + 8) = v14;
      *(a6 + 16) = v16;
      *(a6 + 24) = v15;
      return result;
    }

    v21 = result;
    v22 = v18;
    v20 = v19;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v20 = 82;
    v25 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v21 = 0;
    v22 = 0;
  }

  *a3 = v21;
  *(a3 + 8) = v22;
  *(a3 + 16) = v20;
  return result;
}

void *sub_18210BD7C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a2 = sub_1820E2CC0();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  result = Deserializer.uint64(_:)((a3 + 16), &v12);
  v10 = v12;
  v11 = v13;
  if ((v8 & (v7 == 1)) != 0)
  {
    v10 = 1;
  }

  *a4 = v10;
  *(a4 + 8) = v8 & (v7 == 1) | v11 & 1;
  return result;
}

uint64_t sub_18210BE04(uint64_t a1, char a2)
{
  if (a2)
  {
    return qword_182AF78B8[a1];
  }

  v3 = __CFADD__(a1, 256);
  result = a1 + 256;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18210BE28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18211E1C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_18210BE60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18210BE04(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

unint64_t *sub_18210BEAC@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 <= 0xFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

int64_t sub_18210BECC(int64_t result, char a2, char a3, uint64_t *a4)
{
  if ((a2 & 1) == 0)
  {
    v8 = (a3 & 1) == 0;
    v9 = 72;
    v10 = 62;
    goto LABEL_15;
  }

  if (result <= 5)
  {
    if (result > 2)
    {
      if (a3)
      {
        v16 = 55;
      }

      else
      {
        v16 = 65;
      }

      if (a3)
      {
        v17 = 56;
      }

      else
      {
        v17 = 66;
      }

      if (a3)
      {
        v18 = 57;
      }

      else
      {
        v18 = 67;
      }

      if (result != 4)
      {
        v17 = v18;
      }

      if (result == 3)
      {
        v7 = v16;
      }

      else
      {
        v7 = v17;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      if (a3)
      {
        v5 = 53;
      }

      else
      {
        v5 = 63;
      }

      if (a3)
      {
        v6 = 54;
      }

      else
      {
        v6 = 64;
      }

      if (result == 1)
      {
        v7 = v5;
      }

      else
      {
        v7 = v6;
      }
    }

    goto LABEL_18;
  }

  if (result <= 0xF)
  {
    if (((1 << result) & 0xF600) != 0)
    {
      return result;
    }

    if (result == 8)
    {
      v8 = (a3 & 1) == 0;
      v9 = 70;
      v10 = 60;
      goto LABEL_15;
    }

    if (result == 11)
    {
      v8 = (a3 & 1) == 0;
      v9 = 71;
      v10 = 61;
LABEL_15:
      if (v8)
      {
        v7 = v9;
      }

      else
      {
        v7 = v10;
      }

      goto LABEL_18;
    }
  }

  if (a3)
  {
    v19 = 58;
  }

  else
  {
    v19 = 68;
  }

  if (a3)
  {
    v20 = 59;
  }

  else
  {
    v20 = 69;
  }

  if (result == 6)
  {
    v7 = v19;
  }

  else
  {
    v7 = v20;
  }

LABEL_18:
  v11 = *a4;
  if (*a4)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      result = sub_181A41ED0(v7);
      if (v13)
      {
        v12 = *(*(v11 + 56) + 8 * result);
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a4;
      result = sub_182258BF8(v14, v7, isUniquelyReferenced_nonNull_native);
      *a4 = v21;
    }
  }

  return result;
}

uint64_t sub_18210C064@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a2 = sub_1820E2CC0();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a3 = sub_1820E2CC0();
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  *a4 = sub_1820E2CC0();
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    result = Deserializer.fixedLengthUTF8(_:byteCount:)((a6 + 48), result, &v28);
    if (v12 == 1)
    {
      v21 = v13;
    }

    else
    {
      v21 = 0;
    }

    if (v14 == 1)
    {
      v22 = v15;
    }

    else
    {
      v22 = 0;
    }

    if (v16 == 1)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    v24 = 1;
    v25 = 1;
    if (v21 & 1) != 0 || (v22)
    {
      v26 = a7;
    }

    else
    {
      v26 = a7;
      if ((v23 & 1) == 0)
      {
        v24 = v28;
        if ((v20 & (v19 == 1)) != 0)
        {
          v24 = 1;
        }

        v25 = v20 & (v19 == 1) | v29;
      }
    }

    *v26 = v24;
    *(v26 + 8) = v25 & 1;
  }

  return result;
}

unint64_t sub_18210C17C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_182104788(*a1, *(a1 + 8));
  InPlaceSerializer.vle(_:)(v4, &v25);
  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    result = qword_182AF78B8[v5];
  }

  else
  {
    result = v5 + 256;
    if (v5 >= 0xFFFFFFFFFFFFFF00)
    {
      __break(1u);
      return result;
    }
  }

  InPlaceSerializer.vle(_:)(result, &v23);
  v7 = sub_182104788(*(a1 + 32), *(a1 + 40));
  InPlaceSerializer.vle(_:)(v7, &v21);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = sub_182AD30F8();
  sub_1821065FC(v10, &v19);
  v11 = sub_182AD30F8();
  result = InPlaceSerializer.fixedLengthUTF8(_:byteCount:)(v9, v8, v11, &v17);
  v12 = v25;
  v13 = v26;
  if (v26 == 1 && v25 > 1)
  {
    goto LABEL_19;
  }

  if ((v24 & (v23 == 1)) == 0)
  {
    v12 = v23;
    v13 = v24;
  }

  if (v13 && v12 > 1)
  {
    goto LABEL_19;
  }

  if ((v22 & (v21 == 1)) == 0)
  {
    v12 = v21;
    v13 = v22;
  }

  if (v13 && v12 > 1 || ((v14 = v19, (v20 & (v19 == 1)) == 0) ? (v15 = v20) : (v14 = v12, v15 = v13), v15 && v14 > 1))
  {
LABEL_19:
    LOBYTE(v15) = 1;
    v16 = 2;
  }

  else
  {
    v16 = v17;
    if ((v18 & (v17 == 1)) != 0)
    {
      v16 = v14;
    }

    else
    {
      LOBYTE(v15) = v18;
    }
  }

  *a2 = v16;
  *(a2 + 8) = v15;
  return result;
}

uint64_t sub_18210C304(uint64_t a1, uint64_t a2)
{
  v3 = sub_182104788(*a2, *(a2 + 8));
  if (v3 < 0x40)
  {
    v4 = 1;
  }

  else if (v3 < 0x4000)
  {
    v4 = 2;
  }

  else if (v3 >> 30)
  {
    if (v3 >> 62)
    {
      goto LABEL_40;
    }

    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  v5 = *(a2 + 16);
  if (*(a2 + 24))
  {
    if (v5 >= 0xF)
    {
LABEL_11:
      v6 = 4;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v7 = __CFADD__(v5, 256);
  v8 = v5 + 256;
  if (v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v8 < 0x40)
  {
LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  if (v8 < 0x4000)
  {
    v6 = 2;
  }

  else
  {
    if (!(v8 >> 30))
    {
      goto LABEL_11;
    }

    if (v8 >> 62)
    {
      goto LABEL_40;
    }

    v6 = 8;
  }

LABEL_19:
  v9 = sub_182104788(*(a2 + 32), *(a2 + 40));
  if (v9 < 0x40)
  {
    v10 = 1;
  }

  else if (v9 < 0x4000)
  {
    v10 = 2;
  }

  else if (v9 >> 30)
  {
    if (v9 >> 62)
    {
      goto LABEL_40;
    }

    v10 = 8;
  }

  else
  {
    v10 = 4;
  }

  v11 = sub_182AD30F8();
  if (v11 < 64)
  {
    v12 = 1;
  }

  else if (v11 < 0x4000)
  {
    v12 = 2;
  }

  else
  {
    if (v11 >> 30)
    {
      if (!(v11 >> 62))
      {
        v12 = 8;
        goto LABEL_35;
      }

LABEL_40:
      result = sub_182AD3EA8();
      __break(1u);
      return result;
    }

    v12 = 4;
  }

LABEL_35:
  v13 = sub_182AD30F8();
  v14 = v6 + v4 + v10 + v12;
  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v15)
  {
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_18210C4FC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a2 = sub_1820E2CC0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a3 = sub_1820E2CC0();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a4 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    result = Deserializer.fixedLengthUTF8(_:byteCount:)((a5 + 32), result, &v22);
    if (v11 == 1)
    {
      v18 = v12;
    }

    else
    {
      v18 = 0;
    }

    if (v13 == 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    v20 = 1;
    v21 = 1;
    if ((v18 & 1) == 0 && (v19 & 1) == 0)
    {
      v20 = v22;
      if ((v17 & (v16 == 1)) != 0)
      {
        v20 = 1;
      }

      v21 = v17 & (v16 == 1) | v23;
    }

    *a6 = v20;
    *(a6 + 8) = v21 & 1;
  }

  return result;
}

unint64_t sub_18210C5E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_182104788(*a1, *(a1 + 8));
  InPlaceSerializer.vle(_:)(v4, &v22);
  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    result = qword_182AF78B8[v5];
  }

  else
  {
    result = v5 + 256;
    if (v5 >= 0xFFFFFFFFFFFFFF00)
    {
      __break(1u);
      return result;
    }
  }

  InPlaceSerializer.vle(_:)(result, &v20);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = sub_182AD30F8();
  sub_1821065FC(v9, &v18);
  v10 = sub_182AD30F8();
  result = InPlaceSerializer.fixedLengthUTF8(_:byteCount:)(v8, v7, v10, &v16);
  v11 = v22;
  v12 = v23;
  if (v23 == 1 && v22 > 1)
  {
    goto LABEL_15;
  }

  if ((v21 & (v20 == 1)) == 0)
  {
    v11 = v20;
    v12 = v21;
  }

  if (v12 && v11 > 1 || ((v13 = v18, (v19 & (v18 == 1)) == 0) ? (v14 = v19) : (v13 = v11, v14 = v12), v14 && v13 > 1))
  {
LABEL_15:
    LOBYTE(v14) = 1;
    v15 = 2;
  }

  else
  {
    v15 = v16;
    if ((v17 & (v16 == 1)) != 0)
    {
      v15 = v13;
    }

    else
    {
      LOBYTE(v14) = v17;
    }
  }

  *a2 = v15;
  *(a2 + 8) = v14;
  return result;
}

uint64_t sub_18210C734(uint64_t a1, uint64_t a2)
{
  v3 = sub_182104788(*a2, *(a2 + 8));
  if (v3 < 0x40)
  {
    v4 = 1;
  }

  else if (v3 < 0x4000)
  {
    v4 = 2;
  }

  else if (v3 >> 30)
  {
    if (v3 >> 62)
    {
      goto LABEL_32;
    }

    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  v5 = *(a2 + 16);
  if (*(a2 + 24))
  {
    if (v5 >= 0xF)
    {
LABEL_11:
      v6 = 4;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v7 = __CFADD__(v5, 256);
  v8 = v5 + 256;
  if (v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v8 < 0x40)
  {
LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  if (v8 < 0x4000)
  {
    v6 = 2;
  }

  else
  {
    if (!(v8 >> 30))
    {
      goto LABEL_11;
    }

    if (v8 >> 62)
    {
      goto LABEL_32;
    }

    v6 = 8;
  }

LABEL_19:
  v9 = sub_182AD30F8();
  if (v9 < 64)
  {
    v10 = 1;
  }

  else if (v9 < 0x4000)
  {
    v10 = 2;
  }

  else
  {
    if (v9 >> 30)
    {
      if (!(v9 >> 62))
      {
        v10 = 8;
        goto LABEL_27;
      }

LABEL_32:
      result = sub_182AD3EA8();
      __break(1u);
      return result;
    }

    v10 = 4;
  }

LABEL_27:
  v11 = sub_182AD30F8();
  v12 = v6 + v4 + v10;
  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_18210C8E0()
{
  result = *(*(v0 + 48) + 16);
  if ((*(v0 + 24) & 1) == 0)
  {
    v2 = *(v0 + 16);
    if (v2 < 0x40)
    {
      v3 = 1;
    }

    else if (v2 < 0x4000)
    {
      v3 = 2;
    }

    else if (v2 >> 30)
    {
      if (v2 >> 62)
      {
        goto LABEL_22;
      }

      v3 = 8;
    }

    else
    {
      v3 = 4;
    }

    result += v3;
  }

  if (*(v0 + 40))
  {
    return result;
  }

  v4 = *(v0 + 32);
  if (v4 < 0x40)
  {
    v5 = 1;
    goto LABEL_20;
  }

  if (v4 < 0x4000)
  {
    v5 = 2;
    goto LABEL_20;
  }

  if (!(v4 >> 30))
  {
    v5 = 4;
    goto LABEL_20;
  }

  if (v4 >> 62)
  {
LABEL_22:
    result = sub_182AD3EA8();
    __break(1u);
    return result;
  }

  v5 = 8;
LABEL_20:
  result += v5;
  return result;
}

unint64_t sub_18210C9E8@<X0>(unint64_t result@<X0>, char a2@<W1>, unint64_t *a3@<X2>, char a4@<W3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = result;
  if (a2)
  {
    result = sub_1820E2CC0();
    *a3 = result;
    if (*(v8 + 24) == 1)
    {
      v11 = *(v8 + 32);
    }

    else
    {
      v11 = 0;
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if ((a4 & 1) == 0)
    {
LABEL_6:
      v12 = 0;
      v13 = 1;
      goto LABEL_9;
    }
  }

  result = sub_1820E2CC0();
  *a5 = result;
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
LABEL_9:
  if (v11)
  {
    v12 = 1;
  }

  *a6 = v12;
  *(a6 + 8) = (v11 | v13) & 1;
  return result;
}

uint64_t sub_18210CA84@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1 && (v5 & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = Deserializer.buffer(_:)(&v11);
    goto LABEL_10;
  }

  v8 = __CFADD__(v5, 8);
  v9 = v5 + 8;
  if (v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 != 49)
  {
    goto LABEL_9;
  }

LABEL_4:
  v6 = *a2;
  if (*a2 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFSUB__(v6, *a3))
  {
    result = Deserializer.buffer(_:length:)(v6 - *a3, &v11);
LABEL_10:
    v10 = v12;
    *a4 = v11;
    *(a4 + 8) = v10;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_18210CB28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = sub_182104788(*a1, v5);
  InPlaceSerializer.vle(_:)(v6, &v24);
  if (sub_18211977C(v4, v5))
  {
    v7 = sub_18210C8E0();
    InPlaceSerializer.vle(_:)(v7, &v22);
    v8 = v22;
    v9 = v23;
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 1;
    v11 = 1;
    if ((*(a1 + 40) & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = 1;
  v9 = 1;
  if (*(a1 + 24))
  {
    goto LABEL_6;
  }

LABEL_3:
  InPlaceSerializer.vle(_:)(*(a1 + 16), &v22);
  v10 = v22;
  v11 = v23;
  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_4:
    InPlaceSerializer.vle(_:)(*(a1 + 32), &v22);
    v12 = v22;
    v13 = v23;
    goto LABEL_8;
  }

LABEL_7:
  v12 = 1;
  v13 = 1;
LABEL_8:
  result = InPlaceSerializer.buffer(_:)(*(a1 + 48), &v22);
  v15 = v24;
  v16 = v25;
  if (v25 == 1 && v24 > 1)
  {
    goto LABEL_27;
  }

  if ((v9 & (v8 == 1)) == 0)
  {
    v15 = v8;
    v16 = v9;
  }

  if (v16 == 1 && v15 > 1 || ((v11 & (v10 == 1)) != 0 ? (v17 = v16) : (v15 = v10, v17 = v11), v17 == 1 && v15 > 1 || ((v18 = v12 == 1, v19 = (v13 & v18) == 0) ? (v20 = v12) : (v20 = v15), v19 ? (v21 = v13) : (v21 = v17), v21 == 1 && v20 > 1)))
  {
LABEL_27:
    LOBYTE(v21) = 1;
    v20 = 2;
  }

  else if ((v23 & (v22 == 1)) == 0)
  {
    v20 = v22;
    LOBYTE(v21) = v23;
  }

  *a2 = v20;
  *(a2 + 8) = v21;
  return result;
}

uint64_t sub_18210CCF4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = sub_182104788(*a2, v4);
  if (v5 < 0x40)
  {
    v6 = 1;
  }

  else if (v5 < 0x4000)
  {
    v6 = 2;
  }

  else if (v5 >> 30)
  {
    if (v5 >> 62)
    {
      goto LABEL_46;
    }

    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  if (!sub_18211977C(v3, v4))
  {
    v8 = 0;
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v7 = sub_18210C8E0();
  if (v7 < 0x40)
  {
    v8 = 1;
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_21:
    v9 = 0;
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v7 < 0x4000)
  {
    v8 = 2;
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (!(v7 >> 30))
  {
    v8 = 4;
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v7 >> 62)
  {
    goto LABEL_46;
  }

  v8 = 8;
  if (*(a2 + 24))
  {
    goto LABEL_21;
  }

LABEL_24:
  v10 = *(a2 + 16);
  if (v10 < 0x40)
  {
    v9 = 1;
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v11 = 0;
    goto LABEL_43;
  }

  if (v10 < 0x4000)
  {
    v9 = 2;
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (!(v10 >> 30))
  {
    v9 = 4;
    if ((*(a2 + 40) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v10 >> 62)
  {
    goto LABEL_46;
  }

  v9 = 8;
  if (*(a2 + 40))
  {
    goto LABEL_33;
  }

LABEL_35:
  v12 = *(a2 + 32);
  if (v12 < 0x40)
  {
    v11 = 1;
  }

  else if (v12 < 0x4000)
  {
    v11 = 2;
  }

  else
  {
    if (v12 >> 30)
    {
      if (!(v12 >> 62))
      {
        v11 = 8;
        goto LABEL_43;
      }

LABEL_46:
      result = sub_182AD3EA8();
      __break(1u);
      return result;
    }

    v11 = 4;
  }

LABEL_43:
  v13 = *(*(a2 + 48) + 16);
  v14 = v8 + v6 + v9 + v11;
  result = v14 + v13;
  if (__OFADD__(v14, v13))
  {
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

_BYTE *sub_18210CF10@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  *a2 = sub_1820E2CC0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  a3[2] = sub_1820E2CC0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  a3[3] = sub_1820E2CC0();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  a3[4] = sub_1820E2CC0();
  v15 = *(a1 + 24);
  v22 = *(a1 + 32);
  result = Deserializer.uint8(_:)(a4, &v23);
  if (v9 == 1)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0;
  }

  if (v11 == 1)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  if (v13 == 1)
  {
    v19 = v14;
  }

  else
  {
    v19 = 0;
  }

  v20 = 1;
  v21 = 1;
  if ((v17 & 1) == 0 && (v18 & 1) == 0 && (v19 & 1) == 0)
  {
    v20 = v23;
    if ((v22 & (v15 == 1)) != 0)
    {
      v20 = 1;
    }

    v21 = v22 & (v15 == 1) | v24;
  }

  *a5 = v20;
  *(a5 + 8) = v21 & 1;
  return result;
}

uint64_t sub_18210D010@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_182104788(*a1, *(a1 + 8));
  InPlaceSerializer.vle(_:)(v4, &v20);
  InPlaceSerializer.vle(_:)(*(a1 + 16), &v18);
  InPlaceSerializer.vle(_:)(*(a1 + 24), &v16);
  InPlaceSerializer.vle(_:)(*(a1 + 32), &v14);
  result = InPlaceSerializer.uint8(_:)(*(a1 + 40) & 1, &v12);
  v6 = v20;
  v7 = v21;
  if (v21 == 1 && v20 > 1)
  {
    goto LABEL_18;
  }

  if ((v19 & (v18 == 1)) == 0)
  {
    v6 = v18;
    v7 = v19;
  }

  if (v7 && v6 > 1)
  {
    goto LABEL_18;
  }

  if ((v17 & (v16 == 1)) == 0)
  {
    v6 = v16;
    v7 = v17;
  }

  if (v7 && v6 > 1 || ((v9 = v14, (v15 & (v14 == 1)) == 0) ? (v10 = v15) : (v9 = v6, v10 = v7), v10 && v9 > 1))
  {
LABEL_18:
    LOBYTE(v10) = 1;
    v11 = 2;
  }

  else
  {
    v11 = v12;
    if ((v13 & (v12 == 1)) != 0)
    {
      v11 = v9;
    }

    else
    {
      LOBYTE(v10) = v13;
    }
  }

  *a2 = v11;
  *(a2 + 8) = v10;
  return result;
}

uint64_t sub_18210D150@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  *a2 = sub_1820E2CC0();
  v25 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = sub_1820E2CC0();
  a3[2] = v11;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  if (v11 == 2)
  {
    v14 = 0;
  }

  else
  {
    a3[3] = sub_1820E2CC0();
    if (*(a1 + 24) == 1)
    {
      v14 = *(a1 + 32);
    }

    else
    {
      v14 = 0;
    }
  }

  *a4 = sub_1820E2CC0();
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    result = Deserializer.fixedLengthUTF8(_:byteCount:)(a3 + 6, result, &v27);
    if (v25 == 1)
    {
      v20 = v10;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 | v14 | v13 & (v12 == 1);
    if (v15 == 1)
    {
      v22 = v16;
    }

    else
    {
      v22 = 0;
    }

    v23 = 1;
    v24 = 1;
    if ((v21 & 1) == 0 && (v22 & 1) == 0)
    {
      v23 = v27;
      if ((v19 & (v18 == 1)) != 0)
      {
        v23 = 1;
      }

      v24 = v19 & (v18 == 1) | v28;
    }

    *a6 = v23;
    *(a6 + 8) = v24 & 1;
  }

  return result;
}

unint64_t sub_18210D294@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_182104788(*a1, *(a1 + 8));
  InPlaceSerializer.vle(_:)(v4, &v27);
  v5 = *(a1 + 16);
  InPlaceSerializer.vle(_:)(v5, &v25);
  if (v5 == 2)
  {
    v6 = 1;
    v7 = 1;
  }

  else
  {
    InPlaceSerializer.vle(_:)(*(a1 + 24), &v23);
    v6 = v23;
    v7 = v24;
  }

  v8 = *(a1 + 32);
  if (*(a1 + 40))
  {
    result = qword_182AF78B8[v8];
  }

  else
  {
    result = v8 + 256;
    if (v8 >= 0xFFFFFFFFFFFFFF00)
    {
      __break(1u);
      return result;
    }
  }

  InPlaceSerializer.vle(_:)(result, &v23);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = sub_182AD30F8();
  sub_1821065FC(v12, &v21);
  v13 = sub_182AD30F8();
  result = InPlaceSerializer.fixedLengthUTF8(_:byteCount:)(v11, v10, v13, &v19);
  v14 = v27;
  v15 = v28;
  if (v28 == 1 && v27 > 1)
  {
    goto LABEL_26;
  }

  if ((v26 & (v25 == 1)) == 0)
  {
    v14 = v25;
    v15 = v26;
  }

  if (v15 && v14 > 1)
  {
    goto LABEL_26;
  }

  if ((v7 & (v6 == 1)) == 0)
  {
    v14 = v6;
    v15 = v7;
  }

  if (v15 == 1 && v14 > 1)
  {
    goto LABEL_26;
  }

  if ((v24 & (v23 == 1)) == 0)
  {
    v14 = v23;
    v15 = v24;
  }

  if (v15 && v14 > 1 || ((v16 = v21, (v22 & (v21 == 1)) == 0) ? (v17 = v22) : (v16 = v14, v17 = v15), v17 && v16 > 1))
  {
LABEL_26:
    LOBYTE(v17) = 1;
    v18 = 2;
  }

  else
  {
    v18 = v19;
    if ((v20 & (v19 == 1)) != 0)
    {
      v18 = v16;
    }

    else
    {
      LOBYTE(v17) = v20;
    }
  }

  *a2 = v18;
  *(a2 + 8) = v17;
  return result;
}

uint64_t sub_18210D46C(uint64_t a1, uint64_t a2)
{
  v3 = sub_182104788(*a2, *(a2 + 8));
  if (v3 < 0x40)
  {
    v9 = *(a2 + 16);
    if (v9 <= 0x3F)
    {
      if (v9 == 2)
      {
        v6 = 0;
      }

      else
      {
        v16 = *(a2 + 24);
        if (v16 >= 0x40)
        {
          if (v16 < 0x4000)
          {
            v7 = 1;
            v6 = 2;
            v8 = 1;
          }

          else if (v16 >> 30)
          {
            if (v16 >> 62)
            {
              goto LABEL_202;
            }

            v7 = 1;
            v6 = 8;
            v8 = 1;
          }

          else
          {
            v7 = 1;
            v6 = 4;
            v8 = 1;
          }

          goto LABEL_178;
        }

        v6 = 1;
      }

      v7 = 1;
      v8 = 1;
      goto LABEL_178;
    }

    if (v9 >> 14)
    {
      if (v9 >> 30)
      {
        if (v9 >> 62)
        {
          goto LABEL_202;
        }

        v10 = *(a2 + 24);
        if (v10 >= 0x40)
        {
          if (v10 < 0x4000)
          {
            v8 = 1;
            goto LABEL_136;
          }

          if (v10 >> 30)
          {
            if (v10 >> 62)
            {
              goto LABEL_202;
            }

            v8 = 1;
            goto LABEL_43;
          }

          v8 = 1;
LABEL_165:
          v7 = 8;
          v6 = 4;
          goto LABEL_178;
        }

        v7 = 8;
      }

      else
      {
        v17 = *(a2 + 24);
        if (v17 >= 0x40)
        {
          if (v17 < 0x4000)
          {
            v8 = 1;
            goto LABEL_123;
          }

          if (!(v17 >> 30))
          {
            v8 = 1;
            goto LABEL_177;
          }

          if (v17 >> 62)
          {
            goto LABEL_202;
          }

          v8 = 1;
          goto LABEL_84;
        }

        v7 = 4;
      }
    }

    else
    {
      v15 = *(a2 + 24);
      if (v15 >= 0x40)
      {
        if (v15 < 0x4000)
        {
          v8 = 1;
          goto LABEL_91;
        }

        if (!(v15 >> 30))
        {
          v8 = 1;
          goto LABEL_120;
        }

        if (v15 >> 62)
        {
          goto LABEL_202;
        }

        v8 = 1;
LABEL_49:
        v7 = 2;
        v6 = 8;
        goto LABEL_178;
      }

      v7 = 2;
    }

    v6 = 1;
    v8 = 1;
    goto LABEL_178;
  }

  if (v3 < 0x4000)
  {
    v11 = *(a2 + 16);
    if (v11 < 0x40)
    {
      if (v11 == 2)
      {
        v6 = 0;
        v8 = 2;
        v7 = 1;
        goto LABEL_178;
      }

      v19 = *(a2 + 24);
      if (v19 < 0x40)
      {
        v8 = 2;
        goto LABEL_141;
      }

      if (v19 >= 0x4000)
      {
        if (!(v19 >> 30))
        {
          v8 = 2;
          goto LABEL_169;
        }

        if (v19 >> 62)
        {
          goto LABEL_202;
        }

        v8 = 2;
        goto LABEL_100;
      }

      v7 = 1;
      goto LABEL_151;
    }

    if (v11 < 0x4000)
    {
      v18 = *(a2 + 24);
      if (v18 < 0x40)
      {
        v7 = 2;
        v6 = 1;
        v8 = 2;
      }

      else if (v18 < 0x4000)
      {
        v6 = 2;
        v7 = 2;
        v8 = 2;
      }

      else if (v18 >> 30)
      {
        if (v18 >> 62)
        {
          goto LABEL_202;
        }

        v7 = 2;
        v6 = 8;
        v8 = 2;
      }

      else
      {
        v7 = 2;
        v6 = 4;
        v8 = 2;
      }

      goto LABEL_178;
    }

    if (v11 >> 30)
    {
      if (v11 >> 62)
      {
        goto LABEL_202;
      }

      v12 = *(a2 + 24);
      if (v12 < 0x40)
      {
        v8 = 2;
        goto LABEL_153;
      }

      if (v12 >= 0x4000)
      {
        if (v12 >> 30)
        {
          if (v12 >> 62)
          {
            goto LABEL_202;
          }

          v8 = 2;
          goto LABEL_43;
        }

        v8 = 2;
        goto LABEL_165;
      }

      v7 = 8;
LABEL_151:
      v6 = 2;
      v8 = 2;
      goto LABEL_178;
    }

    v20 = *(a2 + 24);
    if (v20 < 0x40)
    {
      v8 = 2;
      goto LABEL_158;
    }

    if (v20 < 0x4000)
    {
      v7 = 4;
      goto LABEL_151;
    }

    if (!(v20 >> 30))
    {
      v8 = 2;
      goto LABEL_177;
    }

    if (v20 >> 62)
    {
      goto LABEL_202;
    }

    v8 = 2;
LABEL_84:
    v7 = 4;
    v6 = 8;
    goto LABEL_178;
  }

  if (!(v3 >> 30))
  {
    v13 = *(a2 + 16);
    if (v13 >= 0x40)
    {
      if (v13 >= 0x4000)
      {
        if (!(v13 >> 30))
        {
          v25 = *(a2 + 24);
          if (v25 < 0x40)
          {
            v7 = 4;
            v6 = 1;
          }

          else if (v25 < 0x4000)
          {
            v7 = 4;
            v6 = 2;
          }

          else if (v25 >> 30)
          {
            if (v25 >> 62)
            {
              goto LABEL_202;
            }

            v7 = 4;
            v6 = 8;
          }

          else
          {
            v6 = 4;
            v7 = 4;
          }

          goto LABEL_175;
        }

        if (v13 >> 62)
        {
          goto LABEL_202;
        }

        v14 = *(a2 + 24);
        if (v14 >= 0x40)
        {
          if (v14 >= 0x4000)
          {
            if (v14 >> 30)
            {
              if (v14 >> 62)
              {
                goto LABEL_202;
              }

              v8 = 4;
LABEL_43:
              v6 = 8;
              v7 = 8;
              goto LABEL_178;
            }

            v7 = 8;
            goto LABEL_174;
          }

          v8 = 4;
LABEL_136:
          v7 = 8;
          v6 = 2;
          goto LABEL_178;
        }

        v8 = 4;
LABEL_153:
        v7 = 8;
        v6 = 1;
        goto LABEL_178;
      }

      v21 = *(a2 + 24);
      if (v21 < 0x40)
      {
        v8 = 4;
        goto LABEL_139;
      }

      if (v21 < 0x4000)
      {
        v8 = 4;
        goto LABEL_91;
      }

      if (v21 >> 30)
      {
        if (v21 >> 62)
        {
          goto LABEL_202;
        }

        v8 = 4;
        goto LABEL_49;
      }

      v7 = 2;
LABEL_174:
      v6 = 4;
LABEL_175:
      v8 = 4;
      goto LABEL_178;
    }

    if (v13 == 2)
    {
      v6 = 0;
      v8 = 4;
      v7 = 1;
      goto LABEL_178;
    }

    v22 = *(a2 + 24);
    if (v22 < 0x40)
    {
      v8 = 4;
      goto LABEL_141;
    }

    if (v22 < 0x4000)
    {
      v8 = 4;
      goto LABEL_156;
    }

    if (!(v22 >> 30))
    {
      v7 = 1;
      goto LABEL_174;
    }

    if (v22 >> 62)
    {
      goto LABEL_202;
    }

    v8 = 4;
LABEL_100:
    v7 = 1;
    v6 = 8;
    goto LABEL_178;
  }

  if (v3 >> 62)
  {
    goto LABEL_202;
  }

  v4 = *(a2 + 16);
  if (v4 < 0x40)
  {
    if (v4 == 2)
    {
      v6 = 0;
      v8 = 8;
      v7 = 1;
      goto LABEL_178;
    }

    v24 = *(a2 + 24);
    if (v24 >= 0x40)
    {
      if (v24 >= 0x4000)
      {
        if (v24 >> 30)
        {
          if (v24 >> 62)
          {
            goto LABEL_202;
          }

          v7 = 1;
          goto LABEL_134;
        }

        v8 = 8;
LABEL_169:
        v7 = 1;
        v6 = 4;
        goto LABEL_178;
      }

      v8 = 8;
LABEL_156:
      v7 = 1;
      v6 = 2;
      goto LABEL_178;
    }

    v8 = 8;
LABEL_141:
    v6 = 1;
    v7 = 1;
    goto LABEL_178;
  }

  if (v4 < 0x4000)
  {
    v23 = *(a2 + 24);
    if (v23 >= 0x40)
    {
      if (v23 >= 0x4000)
      {
        if (v23 >> 30)
        {
          if (v23 >> 62)
          {
            goto LABEL_202;
          }

          v7 = 2;
          goto LABEL_134;
        }

        v8 = 8;
LABEL_120:
        v7 = 2;
        v6 = 4;
        goto LABEL_178;
      }

      v8 = 8;
LABEL_91:
      v6 = 2;
      v7 = 2;
      goto LABEL_178;
    }

    v8 = 8;
LABEL_139:
    v7 = 2;
    v6 = 1;
    goto LABEL_178;
  }

  if (!(v4 >> 30))
  {
    v26 = *(a2 + 24);
    if (v26 >= 0x40)
    {
      if (v26 >= 0x4000)
      {
        if (v26 >> 30)
        {
          if (v26 >> 62)
          {
            goto LABEL_202;
          }

          v7 = 4;
LABEL_134:
          v6 = 8;
          v8 = 8;
          goto LABEL_178;
        }

        v8 = 8;
LABEL_177:
        v6 = 4;
        v7 = 4;
        goto LABEL_178;
      }

      v8 = 8;
LABEL_123:
      v7 = 4;
      v6 = 2;
      goto LABEL_178;
    }

    v8 = 8;
LABEL_158:
    v7 = 4;
    v6 = 1;
    goto LABEL_178;
  }

  if (v4 >> 62)
  {
    goto LABEL_202;
  }

  v5 = *(a2 + 24);
  if (v5 < 0x40)
  {
    v7 = 8;
    v6 = 1;
    v8 = 8;
  }

  else if (v5 < 0x4000)
  {
    v7 = 8;
    v6 = 2;
    v8 = 8;
  }

  else if (v5 >> 30)
  {
    if (v5 >> 62)
    {
      goto LABEL_202;
    }

    v6 = 8;
    v7 = 8;
    v8 = 8;
  }

  else
  {
    v7 = 8;
    v6 = 4;
    v8 = 8;
  }

LABEL_178:
  v27 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v27 >= 0xF)
    {
LABEL_180:
      v28 = 4;
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  v29 = __CFADD__(v27, 256);
  v30 = v27 + 256;
  if (v29)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  if (v30 < 0x40)
  {
LABEL_187:
    v28 = 1;
    goto LABEL_188;
  }

  if (v30 < 0x4000)
  {
    v28 = 2;
  }

  else
  {
    if (!(v30 >> 30))
    {
      goto LABEL_180;
    }

    if (v30 >> 62)
    {
      goto LABEL_202;
    }

    v28 = 8;
  }

LABEL_188:
  v31 = sub_182AD30F8();
  if (v31 < 64)
  {
    v32 = 1;
  }

  else if (v31 < 0x4000)
  {
    v32 = 2;
  }

  else
  {
    if (v31 >> 30)
    {
      if (!(v31 >> 62))
      {
        v32 = 8;
        goto LABEL_196;
      }

LABEL_202:
      result = sub_182AD3EA8();
      __break(1u);
      return result;
    }

    v32 = 4;
  }

LABEL_196:
  v33 = sub_182AD30F8();
  v34 = v7 + v6 + v8 + v28 + v32;
  v35 = __OFADD__(v34, v33);
  result = v34 + v33;
  if (v35)
  {
    __break(1u);
    goto LABEL_201;
  }

  return result;
}

unint64_t sub_18210DC40@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a2 = sub_1820E2CC0();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = sub_1820E2CC0();
  a3[2] = v9;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v9 == 2)
  {
    v12 = 0;
  }

  else
  {
    a3[3] = sub_1820E2CC0();
    if (*(a1 + 24) == 1)
    {
      v12 = *(a1 + 32);
    }

    else
    {
      v12 = 0;
    }
  }

  a3[4] = sub_1820E2CC0();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  result = sub_1820E2CC0();
  a3[5] = result;
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  if (v7 == 1)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 | v12 | v11 & (v10 == 1) | v14 & (v13 == 1);
  if (v19)
  {
    v16 = 1;
  }

  *a4 = v16;
  *(a4 + 8) = (v19 | v17) & 1;
  return result;
}

uint64_t sub_18210DD38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_182104788(*a1, *(a1 + 8));
  InPlaceSerializer.vle(_:)(v4, &v21);
  v5 = *(a1 + 16);
  InPlaceSerializer.vle(_:)(v5, &v19);
  if (v5 == 2)
  {
    v6 = 1;
    v7 = 1;
  }

  else
  {
    InPlaceSerializer.vle(_:)(*(a1 + 24), &v17);
    v6 = v17;
    v7 = v18;
  }

  InPlaceSerializer.vle(_:)(*(a1 + 32), &v17);
  result = InPlaceSerializer.vle(_:)(*(a1 + 40), &v15);
  v9 = v21;
  v10 = v22;
  if (v22 == 1 && v21 > 1)
  {
    goto LABEL_21;
  }

  if ((v20 & (v19 == 1)) == 0)
  {
    v9 = v19;
    v10 = v20;
  }

  if (v10 && v9 > 1)
  {
    goto LABEL_21;
  }

  if ((v7 & (v6 == 1)) == 0)
  {
    v9 = v6;
    v10 = v7;
  }

  if (v10 == 1 && v9 > 1 || ((v12 = v17, (v18 & (v17 == 1)) == 0) ? (v13 = v18) : (v12 = v9, v13 = v10), v13 && v12 > 1))
  {
LABEL_21:
    LOBYTE(v13) = 1;
    v14 = 2;
  }

  else
  {
    v14 = v15;
    if ((v16 & (v15 == 1)) != 0)
    {
      v14 = v12;
    }

    else
    {
      LOBYTE(v13) = v16;
    }
  }

  *a2 = v14;
  *(a2 + 8) = v13;
  return result;
}

uint64_t sub_18210DE98(uint64_t a1, uint64_t a2)
{
  v3 = sub_182104788(*a2, *(a2 + 8));
  if (v3 < 0x40)
  {
    v9 = *(a2 + 16);
    if (v9 > 0x3F)
    {
      if (v9 >> 14)
      {
        if (v9 >> 30)
        {
          if (v9 >> 62)
          {
            goto LABEL_2794;
          }

          v10 = *(a2 + 24);
          if (v10 <= 0x3F)
          {
            v79 = *(a2 + 32);
            if (v79 < 0x40)
            {
              v123 = *(a2 + 40);
              if (v123 < 0x40)
              {
                v8 = 1;
              }

              else if (v123 < 0x4000)
              {
                v8 = 2;
              }

              else if (v123 >> 30)
              {
                if (v123 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
              v19 = 1;
            }

            else if (v79 < 0x4000)
            {
              v168 = *(a2 + 40);
              if (v168 < 0x40)
              {
                v8 = 1;
              }

              else if (v168 < 0x4000)
              {
                v8 = 2;
              }

              else if (v168 >> 30)
              {
                if (v168 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
              v19 = 1;
            }

            else if (v79 >> 30)
            {
              if (v79 >> 62)
              {
                goto LABEL_2794;
              }

              v80 = *(a2 + 40);
              if (v80 < 0x40)
              {
                v8 = 1;
              }

              else if (v80 < 0x4000)
              {
                v8 = 2;
              }

              else if (v80 >> 30)
              {
                if (v80 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
              v19 = 1;
            }

            else
            {
              v220 = *(a2 + 40);
              if (v220 < 0x40)
              {
                v8 = 1;
              }

              else if (v220 < 0x4000)
              {
                v8 = 2;
              }

              else if (v220 >> 30)
              {
                if (v220 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
              v19 = 1;
            }
          }

          else if (v10 >> 14)
          {
            if (v10 >> 30)
            {
              if (v10 >> 62)
              {
                goto LABEL_2794;
              }

              v11 = *(a2 + 32);
              if (v11 < 0x40)
              {
                v237 = *(a2 + 40);
                if (v237 < 0x40)
                {
                  v8 = 1;
                }

                else if (v237 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v237 >> 30)
                {
                  if (v237 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 1;
                v19 = 8;
              }

              else if (v11 < 0x4000)
              {
                v289 = *(a2 + 40);
                if (v289 < 0x40)
                {
                  v8 = 1;
                }

                else if (v289 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v289 >> 30)
                {
                  if (v289 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 2;
                v19 = 8;
              }

              else if (v11 >> 30)
              {
                if (v11 >> 62)
                {
                  goto LABEL_2794;
                }

                v12 = *(a2 + 40);
                if (v12 < 0x40)
                {
                  v8 = 1;
                }

                else if (v12 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v12 >> 30)
                {
                  if (v12 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 8;
                v19 = 8;
              }

              else
              {
                v327 = *(a2 + 40);
                if (v327 < 0x40)
                {
                  v8 = 1;
                }

                else if (v327 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v327 >> 30)
                {
                  if (v327 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 4;
                v19 = 8;
              }
            }

            else
            {
              v157 = *(a2 + 32);
              if (v157 < 0x40)
              {
                v229 = *(a2 + 40);
                if (v229 < 0x40)
                {
                  v8 = 1;
                }

                else if (v229 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v229 >> 30)
                {
                  if (v229 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 1;
                v19 = 4;
              }

              else if (v157 < 0x4000)
              {
                v276 = *(a2 + 40);
                if (v276 < 0x40)
                {
                  v8 = 1;
                }

                else if (v276 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v276 >> 30)
                {
                  if (v276 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 2;
                v19 = 4;
              }

              else if (v157 >> 30)
              {
                if (v157 >> 62)
                {
                  goto LABEL_2794;
                }

                v158 = *(a2 + 40);
                if (v158 < 0x40)
                {
                  v8 = 1;
                }

                else if (v158 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v158 >> 30)
                {
                  if (v158 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 8;
                v19 = 4;
              }

              else
              {
                v314 = *(a2 + 40);
                if (v314 < 0x40)
                {
                  v8 = 1;
                }

                else if (v314 < 0x4000)
                {
                  v8 = 2;
                }

                else if (v314 >> 30)
                {
                  if (v314 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v8 = 8;
                }

                else
                {
                  v8 = 4;
                }

                v41 = 4;
                v19 = 4;
              }
            }
          }

          else
          {
            v116 = *(a2 + 32);
            if (v116 < 0x40)
            {
              v173 = *(a2 + 40);
              if (v173 < 0x40)
              {
                v8 = 1;
                v41 = 1;
              }

              else if (v173 < 0x4000)
              {
                v8 = 2;
                v41 = 1;
              }

              else if (v173 >> 30)
              {
                if (v173 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
                v41 = 1;
              }

              else
              {
                v8 = 4;
                v41 = 1;
              }
            }

            else if (v116 < 0x4000)
            {
              v225 = *(a2 + 40);
              if (v225 < 0x40)
              {
                v8 = 1;
                v41 = 2;
              }

              else if (v225 < 0x4000)
              {
                v8 = 2;
                v41 = 2;
              }

              else if (v225 >> 30)
              {
                if (v225 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
                v41 = 2;
              }

              else
              {
                v8 = 4;
                v41 = 2;
              }
            }

            else if (v116 >> 30)
            {
              if (v116 >> 62)
              {
                goto LABEL_2794;
              }

              v117 = *(a2 + 40);
              if (v117 < 0x40)
              {
                v8 = 1;
              }

              else if (v117 < 0x4000)
              {
                v8 = 2;
              }

              else if (v117 >> 30)
              {
                if (v117 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
            }

            else
            {
              v272 = *(a2 + 40);
              if (v272 < 0x40)
              {
                v8 = 1;
                v41 = 4;
              }

              else if (v272 < 0x4000)
              {
                v8 = 2;
                v41 = 4;
              }

              else if (v272 >> 30)
              {
                if (v272 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
                v41 = 4;
              }

              else
              {
                v8 = 4;
                v41 = 4;
              }
            }

            v19 = 2;
          }

          v20 = 8;
          v28 = 1;
        }

        else
        {
          v34 = *(a2 + 24);
          if (v34 < 0x40)
          {
            v65 = *(a2 + 32);
            if (v65 < 0x40)
            {
              v108 = *(a2 + 40);
              if (v108 < 0x40)
              {
                v8 = 1;
              }

              else if (v108 < 0x4000)
              {
                v8 = 2;
              }

              else if (v108 >> 30)
              {
                if (v108 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
              v19 = 1;
            }

            else if (v65 < 0x4000)
            {
              v142 = *(a2 + 40);
              if (v142 < 0x40)
              {
                v8 = 1;
              }

              else if (v142 < 0x4000)
              {
                v8 = 2;
              }

              else if (v142 >> 30)
              {
                if (v142 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
              v19 = 1;
            }

            else if (v65 >> 30)
            {
              if (v65 >> 62)
              {
                goto LABEL_2794;
              }

              v66 = *(a2 + 40);
              if (v66 < 0x40)
              {
                v8 = 1;
              }

              else if (v66 < 0x4000)
              {
                v8 = 2;
              }

              else if (v66 >> 30)
              {
                if (v66 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
              v19 = 1;
            }

            else
            {
              v186 = *(a2 + 40);
              if (v186 < 0x40)
              {
                v8 = 1;
              }

              else if (v186 < 0x4000)
              {
                v8 = 2;
              }

              else if (v186 >> 30)
              {
                if (v186 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
              v19 = 1;
            }
          }

          else if (v34 < 0x4000)
          {
            v93 = *(a2 + 32);
            if (v93 < 0x40)
            {
              v151 = *(a2 + 40);
              if (v151 < 0x40)
              {
                v8 = 1;
              }

              else if (v151 < 0x4000)
              {
                v8 = 2;
              }

              else if (v151 >> 30)
              {
                if (v151 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
              v19 = 2;
            }

            else if (v93 < 0x4000)
            {
              v195 = *(a2 + 40);
              if (v195 < 0x40)
              {
                v8 = 1;
              }

              else if (v195 < 0x4000)
              {
                v8 = 2;
              }

              else if (v195 >> 30)
              {
                if (v195 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
              v19 = 2;
            }

            else if (v93 >> 30)
            {
              if (v93 >> 62)
              {
                goto LABEL_2794;
              }

              v94 = *(a2 + 40);
              if (v94 < 0x40)
              {
                v8 = 1;
              }

              else if (v94 < 0x4000)
              {
                v8 = 2;
              }

              else if (v94 >> 30)
              {
                if (v94 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
              v19 = 2;
            }

            else
            {
              v243 = *(a2 + 40);
              if (v243 < 0x40)
              {
                v8 = 1;
              }

              else if (v243 < 0x4000)
              {
                v8 = 2;
              }

              else if (v243 >> 30)
              {
                if (v243 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
              v19 = 2;
            }
          }

          else if (v34 >> 30)
          {
            if (v34 >> 62)
            {
              goto LABEL_2794;
            }

            v35 = *(a2 + 32);
            if (v35 < 0x40)
            {
              v214 = *(a2 + 40);
              if (v214 < 0x40)
              {
                v8 = 1;
                v41 = 1;
              }

              else if (v214 < 0x4000)
              {
                v8 = 2;
                v41 = 1;
              }

              else if (v214 >> 30)
              {
                if (v214 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
                v41 = 1;
              }

              else
              {
                v8 = 4;
                v41 = 1;
              }
            }

            else if (v35 < 0x4000)
            {
              v264 = *(a2 + 40);
              if (v264 < 0x40)
              {
                v8 = 1;
                v41 = 2;
              }

              else if (v264 < 0x4000)
              {
                v8 = 2;
                v41 = 2;
              }

              else if (v264 >> 30)
              {
                if (v264 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
                v41 = 2;
              }

              else
              {
                v8 = 4;
                v41 = 2;
              }
            }

            else if (v35 >> 30)
            {
              if (v35 >> 62)
              {
                goto LABEL_2794;
              }

              v36 = *(a2 + 40);
              if (v36 < 0x40)
              {
                v8 = 1;
              }

              else if (v36 < 0x4000)
              {
                v8 = 2;
              }

              else if (v36 >> 30)
              {
                if (v36 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
            }

            else
            {
              v307 = *(a2 + 40);
              if (v307 < 0x40)
              {
                v8 = 1;
                v41 = 4;
              }

              else if (v307 < 0x4000)
              {
                v8 = 2;
                v41 = 4;
              }

              else if (v307 >> 30)
              {
                if (v307 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
                v41 = 4;
              }

              else
              {
                v8 = 4;
                v41 = 4;
              }
            }

            v19 = 8;
          }

          else
          {
            v127 = *(a2 + 32);
            if (v127 < 0x40)
            {
              v201 = *(a2 + 40);
              if (v201 < 0x40)
              {
                v8 = 1;
              }

              else if (v201 < 0x4000)
              {
                v8 = 2;
              }

              else if (v201 >> 30)
              {
                if (v201 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
              v19 = 4;
            }

            else if (v127 < 0x4000)
            {
              v249 = *(a2 + 40);
              if (v249 < 0x40)
              {
                v8 = 1;
              }

              else if (v249 < 0x4000)
              {
                v8 = 2;
              }

              else if (v249 >> 30)
              {
                if (v249 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
              v19 = 4;
            }

            else if (v127 >> 30)
            {
              if (v127 >> 62)
              {
                goto LABEL_2794;
              }

              v128 = *(a2 + 40);
              if (v128 < 0x40)
              {
                v8 = 1;
              }

              else if (v128 < 0x4000)
              {
                v8 = 2;
              }

              else if (v128 >> 30)
              {
                if (v128 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
              v19 = 4;
            }

            else
            {
              v295 = *(a2 + 40);
              if (v295 < 0x40)
              {
                v8 = 1;
              }

              else if (v295 < 0x4000)
              {
                v8 = 2;
              }

              else if (v295 >> 30)
              {
                if (v295 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
              v19 = 4;
            }
          }

          v20 = 4;
          v28 = 1;
        }

        return v41 + v8 + v19 + v20 + v28;
      }

      v25 = *(a2 + 24);
      if (v25 >= 0x40)
      {
        if (v25 >= 0x4000)
        {
          if (v25 >> 30)
          {
            if (v25 >> 62)
            {
              goto LABEL_2794;
            }

            v26 = *(a2 + 32);
            if (v26 >= 0x40)
            {
              if (v26 >= 0x4000)
              {
                if (v26 >> 30)
                {
                  if (v26 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v27 = *(a2 + 40);
                  if (v27 < 0x40)
                  {
                    v20 = 2;
                    v19 = 8;
                    v28 = 1;
                    v8 = 1;
                    v41 = 8;
                    return v41 + v8 + v19 + v20 + v28;
                  }

                  if (v27 < 0x4000)
                  {
                    v28 = 1;
                    v19 = 8;
                    v20 = 2;
                    v8 = 2;
                    v41 = 8;
                    return v41 + v8 + v19 + v20 + v28;
                  }

                  if (!(v27 >> 30))
                  {
                    v28 = 1;
                    v20 = 2;
                    v19 = 8;
                    v8 = 4;
                    v41 = 8;
                    return v41 + v8 + v19 + v20 + v28;
                  }

                  if (v27 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v28 = 1;
                  v20 = 2;
                  v19 = 8;
                  goto LABEL_160;
                }

                v262 = *(a2 + 40);
                if (v262 < 0x40)
                {
                  v20 = 2;
                  v19 = 8;
                  v28 = 1;
                  v8 = 1;
                  v41 = 4;
                  return v41 + v8 + v19 + v20 + v28;
                }

                if (v262 < 0x4000)
                {
                  v28 = 1;
                  v19 = 8;
                  v20 = 2;
                  v8 = 2;
                  v41 = 4;
                  return v41 + v8 + v19 + v20 + v28;
                }

                if (!(v262 >> 30))
                {
                  v28 = 1;
                  v20 = 2;
                  v19 = 8;
                  goto LABEL_2363;
                }

                if (v262 >> 62)
                {
                  goto LABEL_2794;
                }

                v28 = 1;
                v20 = 2;
                v19 = 8;
LABEL_1335:
                v8 = 8;
                v41 = 4;
                return v41 + v8 + v19 + v20 + v28;
              }

              v212 = *(a2 + 40);
              if (v212 >= 0x40)
              {
                if (v212 < 0x4000)
                {
                  v28 = 1;
                  v19 = 8;
                  v20 = 2;
                  goto LABEL_1437;
                }

                if (v212 >> 30)
                {
                  if (v212 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v28 = 1;
                  v20 = 2;
                  v19 = 8;
LABEL_1015:
                  v8 = 8;
                  v41 = 2;
                  return v41 + v8 + v19 + v20 + v28;
                }

                v28 = 1;
                v19 = 8;
                v20 = 2;
                goto LABEL_2072;
              }

              v19 = 8;
              goto LABEL_1469;
            }

            v163 = *(a2 + 40);
            if (v163 >= 0x40)
            {
              if (v163 >= 0x4000)
              {
                if (!(v163 >> 30))
                {
                  v19 = 8;
                  v28 = 1;
                  v8 = 4;
                  goto LABEL_1788;
                }

                if (v163 >> 62)
                {
                  goto LABEL_2794;
                }

                v28 = 1;
                goto LABEL_1032;
              }

              v19 = 8;
              v28 = 1;
LABEL_1787:
              v8 = 2;
              goto LABEL_1788;
            }

            v20 = 2;
            v19 = 8;
          }

          else
          {
            v88 = *(a2 + 32);
            if (v88 >= 0x40)
            {
              if (v88 >= 0x4000)
              {
                if (v88 >> 30)
                {
                  if (v88 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v89 = *(a2 + 40);
                  if (v89 < 0x40)
                  {
                    v20 = 2;
                    v19 = 4;
                    v41 = 8;
                    v28 = 1;
                    v8 = 1;
                    return v41 + v8 + v19 + v20 + v28;
                  }

                  if (v89 < 0x4000)
                  {
                    v28 = 1;
                    v19 = 4;
                    v41 = 8;
                    goto LABEL_2142;
                  }

                  if (!(v89 >> 30))
                  {
                    v28 = 1;
                    v20 = 2;
                    v41 = 8;
                    goto LABEL_2378;
                  }

                  if (v89 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v28 = 1;
                  v20 = 2;
                  v19 = 4;
                  v41 = 8;
                  v8 = 8;
                  return v41 + v8 + v19 + v20 + v28;
                }

                v241 = *(a2 + 40);
                if (v241 < 0x40)
                {
                  v20 = 2;
                  v41 = 4;
                  v28 = 1;
                  goto LABEL_1656;
                }

                if (v241 < 0x4000)
                {
                  v28 = 1;
                  goto LABEL_1982;
                }

                if (!(v241 >> 30))
                {
                  v28 = 1;
                  v20 = 2;
                  v19 = 4;
                  goto LABEL_2363;
                }

                if (v241 >> 62)
                {
                  goto LABEL_2794;
                }

                v28 = 1;
                v20 = 2;
                v19 = 4;
                goto LABEL_1335;
              }

              v193 = *(a2 + 40);
              if (v193 >= 0x40)
              {
                if (v193 < 0x4000)
                {
                  v28 = 1;
                  v19 = 4;
                  v20 = 2;
                  goto LABEL_1437;
                }

                if (v193 >> 30)
                {
                  if (v193 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v28 = 1;
                  v19 = 4;
                  v20 = 2;
                  goto LABEL_1015;
                }

                v28 = 1;
                v20 = 2;
                v19 = 4;
LABEL_2072:
                v8 = 4;
                v41 = 2;
                return v41 + v8 + v19 + v20 + v28;
              }

              v19 = 4;
LABEL_1469:
              v20 = 2;
              v28 = 1;
              v8 = 1;
              v41 = 2;
              return v41 + v8 + v19 + v20 + v28;
            }

            v149 = *(a2 + 40);
            if (v149 >= 0x40)
            {
              if (v149 < 0x4000)
              {
                v19 = 4;
                v28 = 1;
                v20 = 2;
                v8 = 2;
                v41 = 1;
              }

              else if (v149 >> 30)
              {
                if (v149 >> 62)
                {
                  goto LABEL_2794;
                }

                v20 = 2;
                v19 = 4;
                v28 = 1;
                v8 = 8;
                v41 = 1;
              }

              else
              {
                v20 = 2;
                v28 = 1;
                v19 = 4;
                v8 = 4;
                v41 = 1;
              }

              return v41 + v8 + v19 + v20 + v28;
            }

            v20 = 2;
            v19 = 4;
          }

          v28 = 1;
          v8 = 1;
          v41 = 1;
          return v41 + v8 + v19 + v20 + v28;
        }

        v60 = *(a2 + 32);
        if (v60 < 0x40)
        {
          v106 = *(a2 + 40);
          if (v106 < 0x40)
          {
            v19 = 2;
            v8 = 1;
            v41 = 1;
          }

          else if (v106 < 0x4000)
          {
            v41 = 1;
            v8 = 2;
            v19 = 2;
          }

          else if (v106 >> 30)
          {
            if (v106 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 2;
            v41 = 1;
            v8 = 8;
          }

          else
          {
            v19 = 2;
            v41 = 1;
            v8 = 4;
          }
        }

        else if (v60 < 0x4000)
        {
          v140 = *(a2 + 40);
          if (v140 >= 0x40)
          {
            if (v140 >= 0x4000)
            {
              if (v140 >> 30)
              {
                if (v140 >> 62)
                {
                  goto LABEL_2794;
                }

                v28 = 1;
                v41 = 2;
                v8 = 8;
                goto LABEL_1844;
              }

              v28 = 1;
              goto LABEL_1577;
            }

            v28 = 1;
LABEL_1256:
            v8 = 2;
            v41 = 2;
LABEL_1844:
            v19 = 2;
            v20 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          v41 = 2;
          v8 = 1;
          v19 = 2;
        }

        else
        {
          if (v60 >> 30)
          {
            if (v60 >> 62)
            {
              goto LABEL_2794;
            }

            v61 = *(a2 + 40);
            if (v61 >= 0x40)
            {
              if (v61 < 0x4000)
              {
                v28 = 1;
                v41 = 8;
                goto LABEL_1815;
              }

              if (!(v61 >> 30))
              {
                v28 = 1;
                v19 = 2;
                v41 = 8;
                goto LABEL_2108;
              }

              if (v61 >> 62)
              {
                goto LABEL_2794;
              }

              v28 = 1;
              v19 = 2;
              v8 = 8;
              goto LABEL_2596;
            }

            v19 = 2;
            v41 = 8;
          }

          else
          {
            v184 = *(a2 + 40);
            if (v184 >= 0x40)
            {
              if (v184 >= 0x4000)
              {
                if (v184 >> 30)
                {
                  if (v184 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v28 = 1;
                  v19 = 2;
                  v41 = 4;
                  goto LABEL_845;
                }

                v28 = 1;
LABEL_1930:
                v19 = 2;
                goto LABEL_1931;
              }

              v28 = 1;
              goto LABEL_1620;
            }

            v19 = 2;
            v41 = 4;
          }

          v8 = 1;
        }

LABEL_1373:
        v20 = 2;
        v28 = 1;
        return v41 + v8 + v19 + v20 + v28;
      }

      v44 = *(a2 + 32);
      if (v44 < 0x40)
      {
        v72 = *(a2 + 40);
        if (v72 < 0x40)
        {
          v20 = 2;
          v8 = 1;
          v41 = 1;
        }

        else
        {
          if (v72 < 0x4000)
          {
            v41 = 1;
            v8 = 2;
            v19 = 1;
            goto LABEL_1373;
          }

          if (v72 >> 30)
          {
            if (v72 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v41 = 1;
            v8 = 8;
          }

          else
          {
            v20 = 2;
            v41 = 1;
            v8 = 4;
          }
        }

LABEL_1035:
        v19 = 1;
        v28 = 1;
        return v41 + v8 + v19 + v20 + v28;
      }

      if (v44 < 0x4000)
      {
        v98 = *(a2 + 40);
        if (v98 < 0x40)
        {
          v41 = 2;
          v8 = 1;
          v19 = 1;
        }

        else if (v98 < 0x4000)
        {
          v19 = 1;
          v8 = 2;
          v41 = 2;
        }

        else if (v98 >> 30)
        {
          if (v98 >> 62)
          {
            goto LABEL_2794;
          }

          v19 = 1;
          v41 = 2;
          v8 = 8;
        }

        else
        {
          v19 = 1;
          v41 = 2;
          v8 = 4;
        }

        goto LABEL_1373;
      }

      if (v44 >> 30)
      {
        if (v44 >> 62)
        {
          goto LABEL_2794;
        }

        v45 = *(a2 + 40);
        if (v45 >= 0x40)
        {
          if (v45 >= 0x4000)
          {
            if (v45 >> 30)
            {
              if (v45 >> 62)
              {
                goto LABEL_2794;
              }

              v20 = 2;
              v19 = 1;
LABEL_170:
              v8 = 8;
              v41 = 8;
              v28 = 1;
              return v41 + v8 + v19 + v20 + v28;
            }

            v20 = 2;
            v19 = 1;
LABEL_1689:
            v41 = 8;
            goto LABEL_1690;
          }

          v19 = 1;
          v41 = 8;
LABEL_1354:
          v8 = 2;
          goto LABEL_1373;
        }

        v20 = 2;
        v41 = 8;
        goto LABEL_1034;
      }

      v132 = *(a2 + 40);
      if (v132 < 0x40)
      {
        v20 = 2;
        v41 = 4;
LABEL_1034:
        v8 = 1;
        goto LABEL_1035;
      }

      if (v132 < 0x4000)
      {
        v19 = 1;
        v41 = 4;
        goto LABEL_1354;
      }

      if (v132 >> 30)
      {
        if (v132 >> 62)
        {
          goto LABEL_2794;
        }

        v20 = 2;
        v19 = 1;
LABEL_577:
        v41 = 4;
        goto LABEL_578;
      }

      v20 = 2;
      v19 = 1;
      goto LABEL_1558;
    }

    if (v9 == 2)
    {
      v17 = *(a2 + 32);
      if (v17 < 0x40)
      {
        v40 = *(a2 + 40);
        if (v40 < 0x40)
        {
          v19 = 0;
          v8 = 1;
          v41 = 1;
        }

        else if (v40 < 0x4000)
        {
          v19 = 0;
          v41 = 1;
          v8 = 2;
        }

        else if (v40 >> 30)
        {
          if (v40 >> 62)
          {
            goto LABEL_2794;
          }

          v19 = 0;
          v41 = 1;
          v8 = 8;
        }

        else
        {
          v19 = 0;
          v41 = 1;
          v8 = 4;
        }
      }

      else
      {
        if (v17 < 0x4000)
        {
          v56 = *(a2 + 40);
          if (v56 >= 0x40)
          {
            if (v56 < 0x4000)
            {
              v19 = 0;
              v20 = 1;
              v8 = 2;
              v41 = 2;
              v28 = 1;
              return v41 + v8 + v19 + v20 + v28;
            }

            if (!(v56 >> 30))
            {
              v19 = 0;
              v20 = 1;
              v41 = 2;
LABEL_1690:
              v8 = 4;
              v28 = 1;
              return v41 + v8 + v19 + v20 + v28;
            }

            if (v56 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v20 = 1;
            v41 = 2;
LABEL_578:
            v8 = 8;
            v28 = 1;
            return v41 + v8 + v19 + v20 + v28;
          }

          v19 = 0;
          v41 = 2;
        }

        else if (v17 >> 30)
        {
          if (v17 >> 62)
          {
            goto LABEL_2794;
          }

          v18 = *(a2 + 40);
          if (v18 >= 0x40)
          {
            if (v18 >= 0x4000)
            {
              if (v18 >> 30)
              {
                if (v18 >> 62)
                {
                  goto LABEL_2794;
                }

                v19 = 0;
                v20 = 1;
                goto LABEL_170;
              }

              v19 = 0;
              v20 = 1;
              goto LABEL_1689;
            }

            v19 = 0;
            v20 = 1;
            v41 = 8;
            goto LABEL_1000;
          }

          v19 = 0;
          v41 = 8;
        }

        else
        {
          v84 = *(a2 + 40);
          if (v84 >= 0x40)
          {
            if (v84 >= 0x4000)
            {
              if (v84 >> 30)
              {
                if (v84 >> 62)
                {
                  goto LABEL_2794;
                }

                v19 = 0;
                v20 = 1;
                goto LABEL_577;
              }

              v19 = 0;
              v20 = 1;
LABEL_1558:
              v8 = 4;
              v41 = 4;
              v28 = 1;
              return v41 + v8 + v19 + v20 + v28;
            }

            v19 = 0;
            v20 = 1;
            v41 = 4;
LABEL_1000:
            v8 = 2;
            v28 = 1;
            return v41 + v8 + v19 + v20 + v28;
          }

          v19 = 0;
          v41 = 4;
        }

        v8 = 1;
      }
    }

    else
    {
      v31 = *(a2 + 24);
      if (v31 < 0x40)
      {
        v49 = *(a2 + 32);
        if (v49 < 0x40)
        {
          v75 = *(a2 + 40);
          if (v75 < 0x40)
          {
            v8 = 1;
          }

          else if (v75 < 0x4000)
          {
            v8 = 2;
          }

          else if (v75 >> 30)
          {
            if (v75 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
          v19 = 1;
        }

        else if (v49 < 0x4000)
        {
          v101 = *(a2 + 40);
          if (v101 < 0x40)
          {
            v8 = 1;
          }

          else if (v101 < 0x4000)
          {
            v8 = 2;
          }

          else if (v101 >> 30)
          {
            if (v101 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
          v19 = 1;
        }

        else if (v49 >> 30)
        {
          if (v49 >> 62)
          {
            goto LABEL_2794;
          }

          v50 = *(a2 + 40);
          if (v50 < 0x40)
          {
            v8 = 1;
          }

          else if (v50 < 0x4000)
          {
            v8 = 2;
          }

          else if (v50 >> 30)
          {
            if (v50 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
          v19 = 1;
        }

        else
        {
          v135 = *(a2 + 40);
          if (v135 < 0x40)
          {
            v8 = 1;
          }

          else if (v135 < 0x4000)
          {
            v8 = 2;
          }

          else if (v135 >> 30)
          {
            if (v135 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
          v19 = 1;
        }
      }

      else if (v31 < 0x4000)
      {
        v63 = *(a2 + 32);
        if (v63 < 0x40)
        {
          v107 = *(a2 + 40);
          if (v107 < 0x40)
          {
            v8 = 1;
          }

          else if (v107 < 0x4000)
          {
            v8 = 2;
          }

          else if (v107 >> 30)
          {
            if (v107 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
          v19 = 2;
        }

        else if (v63 < 0x4000)
        {
          v141 = *(a2 + 40);
          if (v141 < 0x40)
          {
            v8 = 1;
          }

          else if (v141 < 0x4000)
          {
            v8 = 2;
          }

          else if (v141 >> 30)
          {
            if (v141 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
          v19 = 2;
        }

        else if (v63 >> 30)
        {
          if (v63 >> 62)
          {
            goto LABEL_2794;
          }

          v64 = *(a2 + 40);
          if (v64 < 0x40)
          {
            v8 = 1;
          }

          else if (v64 < 0x4000)
          {
            v8 = 2;
          }

          else if (v64 >> 30)
          {
            if (v64 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
          v19 = 2;
        }

        else
        {
          v185 = *(a2 + 40);
          if (v185 < 0x40)
          {
            v8 = 1;
          }

          else if (v185 < 0x4000)
          {
            v8 = 2;
          }

          else if (v185 >> 30)
          {
            if (v185 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
          v19 = 2;
        }
      }

      else if (v31 >> 30)
      {
        if (v31 >> 62)
        {
          goto LABEL_2794;
        }

        v32 = *(a2 + 32);
        if (v32 < 0x40)
        {
          v164 = *(a2 + 40);
          if (v164 < 0x40)
          {
            v8 = 1;
          }

          else if (v164 < 0x4000)
          {
            v8 = 2;
          }

          else if (v164 >> 30)
          {
            if (v164 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
        }

        else if (v32 < 0x4000)
        {
          v213 = *(a2 + 40);
          if (v213 < 0x40)
          {
            v8 = 1;
          }

          else if (v213 < 0x4000)
          {
            v8 = 2;
          }

          else if (v213 >> 30)
          {
            if (v213 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
        }

        else if (v32 >> 30)
        {
          if (v32 >> 62)
          {
            goto LABEL_2794;
          }

          v33 = *(a2 + 40);
          if (v33 < 0x40)
          {
            v8 = 1;
          }

          else if (v33 < 0x4000)
          {
            v8 = 2;
          }

          else if (v33 >> 30)
          {
            if (v33 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
        }

        else
        {
          v263 = *(a2 + 40);
          if (v263 < 0x40)
          {
            v8 = 1;
          }

          else if (v263 < 0x4000)
          {
            v8 = 2;
          }

          else if (v263 >> 30)
          {
            if (v263 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
        }

        v19 = 8;
      }

      else
      {
        v91 = *(a2 + 32);
        if (v91 < 0x40)
        {
          v150 = *(a2 + 40);
          if (v150 < 0x40)
          {
            v8 = 1;
          }

          else if (v150 < 0x4000)
          {
            v8 = 2;
          }

          else if (v150 >> 30)
          {
            if (v150 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
          v19 = 4;
        }

        else if (v91 < 0x4000)
        {
          v194 = *(a2 + 40);
          if (v194 < 0x40)
          {
            v8 = 1;
          }

          else if (v194 < 0x4000)
          {
            v8 = 2;
          }

          else if (v194 >> 30)
          {
            if (v194 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
          v19 = 4;
        }

        else if (v91 >> 30)
        {
          if (v91 >> 62)
          {
            goto LABEL_2794;
          }

          v92 = *(a2 + 40);
          if (v92 < 0x40)
          {
            v8 = 1;
          }

          else if (v92 < 0x4000)
          {
            v8 = 2;
          }

          else if (v92 >> 30)
          {
            if (v92 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
          v19 = 4;
        }

        else
        {
          v242 = *(a2 + 40);
          if (v242 < 0x40)
          {
            v8 = 1;
          }

          else if (v242 < 0x4000)
          {
            v8 = 2;
          }

          else if (v242 >> 30)
          {
            if (v242 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
          v19 = 4;
        }
      }
    }

    v20 = 1;
    v28 = 1;
    return v41 + v8 + v19 + v20 + v28;
  }

  if (v3 < 0x4000)
  {
    v13 = *(a2 + 16);
    if (v13 < 0x40)
    {
      if (v13 == 2)
      {
        v29 = *(a2 + 32);
        if (v29 < 0x40)
        {
          v62 = *(a2 + 40);
          if (v62 < 0x40)
          {
            v19 = 0;
            v8 = 1;
            v41 = 1;
          }

          else if (v62 < 0x4000)
          {
            v19 = 0;
            v8 = 2;
            v41 = 1;
          }

          else if (v62 >> 30)
          {
            if (v62 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v8 = 8;
            v41 = 1;
          }

          else
          {
            v19 = 0;
            v8 = 4;
            v41 = 1;
          }
        }

        else if (v29 < 0x4000)
        {
          v90 = *(a2 + 40);
          if (v90 < 0x40)
          {
            v19 = 0;
            v8 = 1;
            v41 = 2;
          }

          else if (v90 < 0x4000)
          {
            v19 = 0;
            v8 = 2;
            v41 = 2;
          }

          else if (v90 >> 30)
          {
            if (v90 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v8 = 8;
            v41 = 2;
          }

          else
          {
            v19 = 0;
            v8 = 4;
            v41 = 2;
          }
        }

        else if (v29 >> 30)
        {
          if (v29 >> 62)
          {
            goto LABEL_2794;
          }

          v30 = *(a2 + 40);
          if (v30 < 0x40)
          {
            v19 = 0;
            v8 = 1;
          }

          else if (v30 < 0x4000)
          {
            v19 = 0;
            v8 = 2;
          }

          else if (v30 >> 30)
          {
            if (v30 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v8 = 8;
          }

          else
          {
            v19 = 0;
            v8 = 4;
          }

          v41 = 8;
        }

        else
        {
          v126 = *(a2 + 40);
          if (v126 < 0x40)
          {
            v19 = 0;
            v8 = 1;
            v41 = 4;
          }

          else if (v126 < 0x4000)
          {
            v19 = 0;
            v8 = 2;
            v41 = 4;
          }

          else if (v126 >> 30)
          {
            if (v126 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v8 = 8;
            v41 = 4;
          }

          else
          {
            v19 = 0;
            v8 = 4;
            v41 = 4;
          }
        }
      }

      else
      {
        v46 = *(a2 + 24);
        if (v46 <= 0x3F)
        {
          v73 = *(a2 + 32);
          if (v73 < 0x40)
          {
            v112 = *(a2 + 40);
            if (v112 < 0x40)
            {
              v8 = 1;
            }

            else if (v112 < 0x4000)
            {
              v8 = 2;
            }

            else if (v112 >> 30)
            {
              if (v112 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 1;
          }

          else if (v73 < 0x4000)
          {
            v146 = *(a2 + 40);
            if (v146 < 0x40)
            {
              v8 = 1;
            }

            else if (v146 < 0x4000)
            {
              v8 = 2;
            }

            else if (v146 >> 30)
            {
              if (v146 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 1;
          }

          else if (v73 >> 30)
          {
            if (v73 >> 62)
            {
              goto LABEL_2794;
            }

            v74 = *(a2 + 40);
            if (v74 < 0x40)
            {
              v8 = 1;
            }

            else if (v74 < 0x4000)
            {
              v8 = 2;
            }

            else if (v74 >> 30)
            {
              if (v74 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 1;
          }

          else
          {
            v190 = *(a2 + 40);
            if (v190 < 0x40)
            {
              v8 = 1;
            }

            else if (v190 < 0x4000)
            {
              v8 = 2;
            }

            else if (v190 >> 30)
            {
              if (v190 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 1;
          }
        }

        else if (v46 >> 14)
        {
          if (v46 >> 30)
          {
            if (v46 >> 62)
            {
              goto LABEL_2794;
            }

            v47 = *(a2 + 32);
            if (v47 < 0x40)
            {
              v216 = *(a2 + 40);
              if (v216 < 0x40)
              {
                v8 = 1;
              }

              else if (v216 < 0x4000)
              {
                v8 = 2;
              }

              else if (v216 >> 30)
              {
                if (v216 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
            }

            else if (v47 < 0x4000)
            {
              v266 = *(a2 + 40);
              if (v266 < 0x40)
              {
                v8 = 1;
              }

              else if (v266 < 0x4000)
              {
                v8 = 2;
              }

              else if (v266 >> 30)
              {
                if (v266 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
            }

            else if (v47 >> 30)
            {
              if (v47 >> 62)
              {
                goto LABEL_2794;
              }

              v48 = *(a2 + 40);
              if (v48 < 0x40)
              {
                v8 = 1;
              }

              else if (v48 < 0x4000)
              {
                v8 = 2;
              }

              else if (v48 >> 30)
              {
                if (v48 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
            }

            else
            {
              v309 = *(a2 + 40);
              if (v309 < 0x40)
              {
                v8 = 1;
              }

              else if (v309 < 0x4000)
              {
                v8 = 2;
              }

              else if (v309 >> 30)
              {
                if (v309 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
            }

            v19 = 8;
          }

          else
          {
            v133 = *(a2 + 32);
            if (v133 < 0x40)
            {
              v203 = *(a2 + 40);
              if (v203 < 0x40)
              {
                v8 = 1;
              }

              else if (v203 < 0x4000)
              {
                v8 = 2;
              }

              else if (v203 >> 30)
              {
                if (v203 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
              v19 = 4;
            }

            else if (v133 < 0x4000)
            {
              v251 = *(a2 + 40);
              if (v251 < 0x40)
              {
                v8 = 1;
              }

              else if (v251 < 0x4000)
              {
                v8 = 2;
              }

              else if (v251 >> 30)
              {
                if (v251 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
              v19 = 4;
            }

            else if (v133 >> 30)
            {
              if (v133 >> 62)
              {
                goto LABEL_2794;
              }

              v134 = *(a2 + 40);
              if (v134 < 0x40)
              {
                v8 = 1;
              }

              else if (v134 < 0x4000)
              {
                v8 = 2;
              }

              else if (v134 >> 30)
              {
                if (v134 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
              v19 = 4;
            }

            else
            {
              v297 = *(a2 + 40);
              if (v297 < 0x40)
              {
                v8 = 1;
              }

              else if (v297 < 0x4000)
              {
                v8 = 2;
              }

              else if (v297 >> 30)
              {
                if (v297 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
              v19 = 4;
            }
          }
        }

        else
        {
          v99 = *(a2 + 32);
          if (v99 < 0x40)
          {
            v153 = *(a2 + 40);
            if (v153 < 0x40)
            {
              v8 = 1;
            }

            else if (v153 < 0x4000)
            {
              v8 = 2;
            }

            else if (v153 >> 30)
            {
              if (v153 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 2;
          }

          else if (v99 < 0x4000)
          {
            v197 = *(a2 + 40);
            if (v197 < 0x40)
            {
              v8 = 1;
            }

            else if (v197 < 0x4000)
            {
              v8 = 2;
            }

            else if (v197 >> 30)
            {
              if (v197 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 2;
          }

          else if (v99 >> 30)
          {
            if (v99 >> 62)
            {
              goto LABEL_2794;
            }

            v100 = *(a2 + 40);
            if (v100 < 0x40)
            {
              v8 = 1;
            }

            else if (v100 < 0x4000)
            {
              v8 = 2;
            }

            else if (v100 >> 30)
            {
              if (v100 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 2;
          }

          else
          {
            v245 = *(a2 + 40);
            if (v245 < 0x40)
            {
              v8 = 1;
            }

            else if (v245 < 0x4000)
            {
              v8 = 2;
            }

            else if (v245 >> 30)
            {
              if (v245 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 2;
          }
        }
      }

      v20 = 1;
      v28 = 2;
      return v41 + v8 + v19 + v20 + v28;
    }

    if (v13 >= 0x4000)
    {
      if (v13 >> 30)
      {
        if (v13 >> 62)
        {
          goto LABEL_2794;
        }

        v14 = *(a2 + 24);
        if (v14 < 0x40)
        {
          v118 = *(a2 + 32);
          if (v118 < 0x40)
          {
            v174 = *(a2 + 40);
            if (v174 < 0x40)
            {
              v8 = 1;
            }

            else if (v174 < 0x4000)
            {
              v8 = 2;
            }

            else if (v174 >> 30)
            {
              if (v174 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 1;
          }

          else if (v118 < 0x4000)
          {
            v226 = *(a2 + 40);
            if (v226 < 0x40)
            {
              v8 = 1;
            }

            else if (v226 < 0x4000)
            {
              v8 = 2;
            }

            else if (v226 >> 30)
            {
              if (v226 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 1;
          }

          else if (v118 >> 30)
          {
            if (v118 >> 62)
            {
              goto LABEL_2794;
            }

            v119 = *(a2 + 40);
            if (v119 < 0x40)
            {
              v8 = 1;
            }

            else if (v119 < 0x4000)
            {
              v8 = 2;
            }

            else if (v119 >> 30)
            {
              if (v119 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 1;
          }

          else
          {
            v273 = *(a2 + 40);
            if (v273 < 0x40)
            {
              v8 = 1;
            }

            else if (v273 < 0x4000)
            {
              v8 = 2;
            }

            else if (v273 >> 30)
            {
              if (v273 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 1;
          }
        }

        else if (v14 < 0x4000)
        {
          v159 = *(a2 + 32);
          if (v159 < 0x40)
          {
            v230 = *(a2 + 40);
            if (v230 < 0x40)
            {
              v8 = 1;
            }

            else if (v230 < 0x4000)
            {
              v8 = 2;
            }

            else if (v230 >> 30)
            {
              if (v230 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 2;
          }

          else if (v159 < 0x4000)
          {
            v277 = *(a2 + 40);
            if (v277 < 0x40)
            {
              v8 = 1;
            }

            else if (v277 < 0x4000)
            {
              v8 = 2;
            }

            else if (v277 >> 30)
            {
              if (v277 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 2;
          }

          else if (v159 >> 30)
          {
            if (v159 >> 62)
            {
              goto LABEL_2794;
            }

            v160 = *(a2 + 40);
            if (v160 < 0x40)
            {
              v8 = 1;
            }

            else if (v160 < 0x4000)
            {
              v8 = 2;
            }

            else if (v160 >> 30)
            {
              if (v160 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 2;
          }

          else
          {
            v315 = *(a2 + 40);
            if (v315 < 0x40)
            {
              v8 = 1;
            }

            else if (v315 < 0x4000)
            {
              v8 = 2;
            }

            else if (v315 >> 30)
            {
              if (v315 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 2;
          }
        }

        else if (v14 >> 30)
        {
          if (v14 >> 62)
          {
            goto LABEL_2794;
          }

          v15 = *(a2 + 32);
          if (v15 < 0x40)
          {
            v290 = *(a2 + 40);
            if (v290 < 0x40)
            {
              v8 = 1;
              v41 = 1;
            }

            else if (v290 < 0x4000)
            {
              v8 = 2;
              v41 = 1;
            }

            else if (v290 >> 30)
            {
              if (v290 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 1;
            }

            else
            {
              v8 = 4;
              v41 = 1;
            }
          }

          else if (v15 < 0x4000)
          {
            v328 = *(a2 + 40);
            if (v328 < 0x40)
            {
              v8 = 1;
              v41 = 2;
            }

            else if (v328 < 0x4000)
            {
              v8 = 2;
              v41 = 2;
            }

            else if (v328 >> 30)
            {
              if (v328 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 2;
            }

            else
            {
              v8 = 4;
              v41 = 2;
            }
          }

          else if (v15 >> 30)
          {
            if (v15 >> 62)
            {
              goto LABEL_2794;
            }

            v16 = *(a2 + 40);
            if (v16 < 0x40)
            {
              v8 = 1;
            }

            else if (v16 < 0x4000)
            {
              v8 = 2;
            }

            else if (v16 >> 30)
            {
              if (v16 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
          }

          else
          {
            v353 = *(a2 + 40);
            if (v353 < 0x40)
            {
              v8 = 1;
              v41 = 4;
            }

            else if (v353 < 0x4000)
            {
              v8 = 2;
              v41 = 4;
            }

            else if (v353 >> 30)
            {
              if (v353 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 4;
            }

            else
            {
              v8 = 4;
              v41 = 4;
            }
          }

          v19 = 8;
        }

        else
        {
          v208 = *(a2 + 32);
          if (v208 < 0x40)
          {
            v282 = *(a2 + 40);
            if (v282 < 0x40)
            {
              v8 = 1;
            }

            else if (v282 < 0x4000)
            {
              v8 = 2;
            }

            else if (v282 >> 30)
            {
              if (v282 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 4;
          }

          else if (v208 < 0x4000)
          {
            v320 = *(a2 + 40);
            if (v320 < 0x40)
            {
              v8 = 1;
            }

            else if (v320 < 0x4000)
            {
              v8 = 2;
            }

            else if (v320 >> 30)
            {
              if (v320 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 4;
          }

          else if (v208 >> 30)
          {
            if (v208 >> 62)
            {
              goto LABEL_2794;
            }

            v209 = *(a2 + 40);
            if (v209 < 0x40)
            {
              v8 = 1;
            }

            else if (v209 < 0x4000)
            {
              v8 = 2;
            }

            else if (v209 >> 30)
            {
              if (v209 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 4;
          }

          else
          {
            v346 = *(a2 + 40);
            if (v346 < 0x40)
            {
              v8 = 1;
            }

            else if (v346 < 0x4000)
            {
              v8 = 2;
            }

            else if (v346 >> 30)
            {
              if (v346 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 4;
          }
        }

        v20 = 8;
        v28 = 2;
        return v41 + v8 + v19 + v20 + v28;
      }

      v53 = *(a2 + 24);
      if (v53 > 0x3F)
      {
        if (v53 >> 14)
        {
          if (v53 >> 30)
          {
            if (v53 >> 62)
            {
              goto LABEL_2794;
            }

            v54 = *(a2 + 32);
            if (v54 < 0x40)
            {
              v267 = *(a2 + 40);
              if (v267 < 0x40)
              {
                v8 = 1;
              }

              else if (v267 < 0x4000)
              {
                v8 = 2;
              }

              else if (v267 >> 30)
              {
                if (v267 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
              v19 = 8;
            }

            else if (v54 < 0x4000)
            {
              v310 = *(a2 + 40);
              if (v310 < 0x40)
              {
                v8 = 1;
              }

              else if (v310 < 0x4000)
              {
                v8 = 2;
              }

              else if (v310 >> 30)
              {
                if (v310 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
              v19 = 8;
            }

            else if (v54 >> 30)
            {
              if (v54 >> 62)
              {
                goto LABEL_2794;
              }

              v55 = *(a2 + 40);
              if (v55 < 0x40)
              {
                v8 = 1;
              }

              else if (v55 < 0x4000)
              {
                v8 = 2;
              }

              else if (v55 >> 30)
              {
                if (v55 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
              v19 = 8;
            }

            else
            {
              v342 = *(a2 + 40);
              if (v342 < 0x40)
              {
                v8 = 1;
              }

              else if (v342 < 0x4000)
              {
                v8 = 2;
              }

              else if (v342 >> 30)
              {
                if (v342 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
              v19 = 8;
            }
          }

          else
          {
            v180 = *(a2 + 32);
            if (v180 < 0x40)
            {
              v256 = *(a2 + 40);
              if (v256 < 0x40)
              {
                v8 = 1;
              }

              else if (v256 < 0x4000)
              {
                v8 = 2;
              }

              else if (v256 >> 30)
              {
                if (v256 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 1;
              v19 = 4;
            }

            else if (v180 < 0x4000)
            {
              v302 = *(a2 + 40);
              if (v302 < 0x40)
              {
                v8 = 1;
              }

              else if (v302 < 0x4000)
              {
                v8 = 2;
              }

              else if (v302 >> 30)
              {
                if (v302 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 2;
              v19 = 4;
            }

            else if (v180 >> 30)
            {
              if (v180 >> 62)
              {
                goto LABEL_2794;
              }

              v181 = *(a2 + 40);
              if (v181 < 0x40)
              {
                v8 = 1;
              }

              else if (v181 < 0x4000)
              {
                v8 = 2;
              }

              else if (v181 >> 30)
              {
                if (v181 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 8;
              v19 = 4;
            }

            else
            {
              v337 = *(a2 + 40);
              if (v337 < 0x40)
              {
                v8 = 1;
              }

              else if (v337 < 0x4000)
              {
                v8 = 2;
              }

              else if (v337 >> 30)
              {
                if (v337 >> 62)
                {
                  goto LABEL_2794;
                }

                v8 = 8;
              }

              else
              {
                v8 = 4;
              }

              v41 = 4;
              v19 = 4;
            }
          }
        }

        else
        {
          v136 = *(a2 + 32);
          if (v136 < 0x40)
          {
            v204 = *(a2 + 40);
            if (v204 < 0x40)
            {
              v8 = 1;
              v41 = 1;
            }

            else if (v204 < 0x4000)
            {
              v8 = 2;
              v41 = 1;
            }

            else if (v204 >> 30)
            {
              if (v204 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 1;
            }

            else
            {
              v8 = 4;
              v41 = 1;
            }
          }

          else if (v136 < 0x4000)
          {
            v252 = *(a2 + 40);
            if (v252 < 0x40)
            {
              v8 = 1;
              v41 = 2;
            }

            else if (v252 < 0x4000)
            {
              v8 = 2;
              v41 = 2;
            }

            else if (v252 >> 30)
            {
              if (v252 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 2;
            }

            else
            {
              v8 = 4;
              v41 = 2;
            }
          }

          else if (v136 >> 30)
          {
            if (v136 >> 62)
            {
              goto LABEL_2794;
            }

            v137 = *(a2 + 40);
            if (v137 < 0x40)
            {
              v8 = 1;
            }

            else if (v137 < 0x4000)
            {
              v8 = 2;
            }

            else if (v137 >> 30)
            {
              if (v137 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
          }

          else
          {
            v298 = *(a2 + 40);
            if (v298 < 0x40)
            {
              v8 = 1;
              v41 = 4;
            }

            else if (v298 < 0x4000)
            {
              v8 = 2;
              v41 = 4;
            }

            else if (v298 >> 30)
            {
              if (v298 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 4;
            }

            else
            {
              v8 = 4;
              v41 = 4;
            }
          }

          v19 = 2;
        }

        goto LABEL_2537;
      }

      v102 = *(a2 + 32);
      if (v102 < 0x40)
      {
        v154 = *(a2 + 40);
        if (v154 < 0x40)
        {
          v28 = 2;
          v8 = 1;
          v41 = 1;
        }

        else if (v154 < 0x4000)
        {
          v28 = 2;
          v8 = 2;
          v41 = 1;
        }

        else
        {
          if (v154 >> 30)
          {
            if (v154 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 1;
            v19 = 1;
LABEL_2537:
            v20 = 4;
            v28 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          v28 = 2;
          v8 = 4;
          v41 = 1;
        }
      }

      else if (v102 < 0x4000)
      {
        v198 = *(a2 + 40);
        if (v198 < 0x40)
        {
          v28 = 2;
          v8 = 1;
          v41 = 2;
        }

        else if (v198 < 0x4000)
        {
          v28 = 2;
          v8 = 2;
          v41 = 2;
        }

        else if (v198 >> 30)
        {
          if (v198 >> 62)
          {
            goto LABEL_2794;
          }

          v28 = 2;
          v8 = 8;
          v41 = 2;
        }

        else
        {
          v28 = 2;
          v8 = 4;
          v41 = 2;
        }
      }

      else if (v102 >> 30)
      {
        if (v102 >> 62)
        {
          goto LABEL_2794;
        }

        v103 = *(a2 + 40);
        if (v103 < 0x40)
        {
          v28 = 2;
          v8 = 1;
        }

        else if (v103 < 0x4000)
        {
          v28 = 2;
          v8 = 2;
        }

        else if (v103 >> 30)
        {
          if (v103 >> 62)
          {
            goto LABEL_2794;
          }

          v28 = 2;
          v8 = 8;
        }

        else
        {
          v28 = 2;
          v8 = 4;
        }

        v41 = 8;
      }

      else
      {
        v246 = *(a2 + 40);
        if (v246 < 0x40)
        {
          v28 = 2;
          v8 = 1;
          v41 = 4;
        }

        else if (v246 < 0x4000)
        {
          v28 = 2;
          v8 = 2;
          v41 = 4;
        }

        else if (v246 >> 30)
        {
          if (v246 >> 62)
          {
            goto LABEL_2794;
          }

          v28 = 2;
          v8 = 8;
          v41 = 4;
        }

        else
        {
          v28 = 2;
          v8 = 4;
          v41 = 4;
        }
      }

      v19 = 1;
      v20 = 4;
      return v41 + v8 + v19 + v20 + v28;
    }

    v37 = *(a2 + 24);
    if (v37 >= 0x40)
    {
      if (v37 >= 0x4000)
      {
        if (v37 >> 30)
        {
          if (v37 >> 62)
          {
            goto LABEL_2794;
          }

          v38 = *(a2 + 32);
          if (v38 >= 0x40)
          {
            if (v38 < 0x4000)
            {
              v265 = *(a2 + 40);
              if (v265 < 0x40)
              {
                v19 = 8;
                v28 = 2;
                v8 = 1;
              }

              else if (v265 < 0x4000)
              {
                v19 = 8;
                v28 = 2;
                v8 = 2;
              }

              else if (v265 >> 30)
              {
                if (v265 >> 62)
                {
                  goto LABEL_2794;
                }

                v28 = 2;
                v19 = 8;
                v8 = 8;
              }

              else
              {
                v19 = 8;
                v28 = 2;
                v8 = 4;
              }

              goto LABEL_2346;
            }

            if (!(v38 >> 30))
            {
              v308 = *(a2 + 40);
              if (v308 < 0x40)
              {
                v28 = 2;
                v19 = 8;
                v8 = 1;
                goto LABEL_2383;
              }

              if (v308 < 0x4000)
              {
                v19 = 8;
                v28 = 2;
                v8 = 2;
                goto LABEL_2383;
              }

              if (v308 >> 30)
              {
                if (v308 >> 62)
                {
                  goto LABEL_2794;
                }

                v28 = 2;
                v19 = 8;
                v8 = 8;
                goto LABEL_2383;
              }

              v28 = 2;
              v19 = 8;
LABEL_1931:
              v8 = 4;
LABEL_2383:
              v41 = 4;
              v20 = 2;
              return v41 + v8 + v19 + v20 + v28;
            }

            if (v38 >> 62)
            {
              goto LABEL_2794;
            }

            v39 = *(a2 + 40);
            if (v39 < 0x40)
            {
              v28 = 2;
              v19 = 8;
              v8 = 1;
            }

            else if (v39 < 0x4000)
            {
              v19 = 8;
              v28 = 2;
              v8 = 2;
            }

            else if (v39 >> 30)
            {
              if (v39 >> 62)
              {
                goto LABEL_2794;
              }

              v28 = 2;
              v19 = 8;
              v8 = 8;
            }

            else
            {
              v28 = 2;
              v19 = 8;
              v8 = 4;
            }

LABEL_2596:
            v41 = 8;
            v20 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          v215 = *(a2 + 40);
          if (v215 < 0x40)
          {
            v28 = 2;
            v19 = 8;
            v8 = 1;
            goto LABEL_1788;
          }

          if (v215 >= 0x4000)
          {
            if (!(v215 >> 30))
            {
              v28 = 2;
              v19 = 8;
              v8 = 4;
              goto LABEL_1788;
            }

            if (v215 >> 62)
            {
              goto LABEL_2794;
            }

            v28 = 2;
LABEL_1032:
            v19 = 8;
            v8 = 8;
            goto LABEL_1788;
          }

          v19 = 8;
          v28 = 2;
          goto LABEL_1787;
        }

        v129 = *(a2 + 32);
        if (v129 < 0x40)
        {
          v202 = *(a2 + 40);
          if (v202 < 0x40)
          {
            v20 = 2;
            v19 = 4;
            v8 = 1;
          }

          else if (v202 < 0x4000)
          {
            v19 = 4;
            v20 = 2;
            v8 = 2;
          }

          else if (v202 >> 30)
          {
            if (v202 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v19 = 4;
            v8 = 8;
          }

          else
          {
            v20 = 2;
            v19 = 4;
            v8 = 4;
          }

          v41 = 1;
          v28 = 2;
          return v41 + v8 + v19 + v20 + v28;
        }

        if (v129 < 0x4000)
        {
          v250 = *(a2 + 40);
          if (v250 < 0x40)
          {
            v19 = 4;
            v20 = 2;
            v8 = 1;
          }

          else if (v250 < 0x4000)
          {
            v19 = 4;
            v20 = 2;
            v8 = 2;
          }

          else if (v250 >> 30)
          {
            if (v250 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 4;
            v20 = 2;
            v8 = 8;
          }

          else
          {
            v20 = 2;
            v19 = 4;
            v8 = 4;
          }

          v41 = 2;
          v28 = 2;
          return v41 + v8 + v19 + v20 + v28;
        }

        if (v129 >> 30)
        {
          if (v129 >> 62)
          {
            goto LABEL_2794;
          }

          v130 = *(a2 + 40);
          if (v130 < 0x40)
          {
            v20 = 2;
            v19 = 4;
            v8 = 1;
          }

          else if (v130 < 0x4000)
          {
            v19 = 4;
            v20 = 2;
            v8 = 2;
          }

          else if (v130 >> 30)
          {
            if (v130 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v19 = 4;
            v8 = 8;
          }

          else
          {
            v20 = 2;
            v19 = 4;
            v8 = 4;
          }

          goto LABEL_2531;
        }

        v296 = *(a2 + 40);
        if (v296 < 0x40)
        {
          v20 = 2;
          v19 = 4;
          v8 = 1;
          goto LABEL_2289;
        }

        if (v296 < 0x4000)
        {
          v19 = 4;
          v20 = 2;
          v8 = 2;
          goto LABEL_2289;
        }

        if (v296 >> 30)
        {
          if (v296 >> 62)
          {
            goto LABEL_2794;
          }

          v20 = 2;
          v19 = 4;
          v8 = 8;
          goto LABEL_2289;
        }

        v20 = 2;
        v19 = 4;
LABEL_1937:
        v8 = 4;
LABEL_2289:
        v41 = 4;
        v28 = 2;
        return v41 + v8 + v19 + v20 + v28;
      }

      v95 = *(a2 + 32);
      if (v95 >= 0x40)
      {
        if (v95 < 0x4000)
        {
          v196 = *(a2 + 40);
          if (v196 < 0x40)
          {
            v41 = 2;
            v8 = 1;
LABEL_2048:
            v19 = 2;
            goto LABEL_2049;
          }

          if (v196 >= 0x4000)
          {
            if (v196 >> 30)
            {
              if (v196 >> 62)
              {
                goto LABEL_2794;
              }

              v41 = 2;
              v8 = 8;
            }

            else
            {
              v41 = 2;
              v8 = 4;
            }

            goto LABEL_2048;
          }

          v41 = 2;
LABEL_2047:
          v8 = 2;
          goto LABEL_2048;
        }

        if (v95 >> 30)
        {
          if (v95 >> 62)
          {
            goto LABEL_2794;
          }

          v96 = *(a2 + 40);
          if (v96 >= 0x40)
          {
            if (v96 >= 0x4000)
            {
              if (v96 >> 30)
              {
                if (v96 >> 62)
                {
                  goto LABEL_2794;
                }

                v19 = 2;
                v8 = 8;
                v41 = 8;
              }

              else
              {
                v19 = 2;
                v41 = 8;
                v8 = 4;
              }

              goto LABEL_2049;
            }

            v41 = 8;
            goto LABEL_2047;
          }

          v19 = 2;
          v41 = 8;
          v8 = 1;
        }

        else
        {
          v244 = *(a2 + 40);
          if (v244 >= 0x40)
          {
            if (v244 >= 0x4000)
            {
              if (v244 >> 30)
              {
                if (v244 >> 62)
                {
                  goto LABEL_2794;
                }

                v19 = 2;
                v41 = 4;
                v8 = 8;
              }

              else
              {
                v19 = 2;
                v41 = 4;
                v8 = 4;
              }

              goto LABEL_2049;
            }

            v41 = 4;
            goto LABEL_2047;
          }

          v19 = 2;
          v41 = 4;
          v8 = 1;
        }

LABEL_2049:
        v20 = 2;
        v28 = 2;
        return v41 + v8 + v19 + v20 + v28;
      }

      v152 = *(a2 + 40);
      if (v152 < 0x40)
      {
        v19 = 2;
        v41 = 1;
        v8 = 1;
        goto LABEL_2049;
      }

      if (v152 >= 0x4000)
      {
        if (v152 >> 30)
        {
          if (v152 >> 62)
          {
            goto LABEL_2794;
          }

          v19 = 2;
          v41 = 1;
          v8 = 8;
        }

        else
        {
          v19 = 2;
          v41 = 1;
          v8 = 4;
        }

        goto LABEL_2049;
      }

      v41 = 1;
      v19 = 2;
LABEL_1712:
      v8 = 2;
      goto LABEL_2049;
    }

    v67 = *(a2 + 32);
    if (v67 < 0x40)
    {
      v109 = *(a2 + 40);
      if (v109 < 0x40)
      {
        v20 = 2;
        v8 = 1;
        v41 = 1;
      }

      else
      {
        if (v109 < 0x4000)
        {
          v41 = 1;
          v8 = 2;
          v19 = 1;
          goto LABEL_2049;
        }

        if (v109 >> 30)
        {
          if (v109 >> 62)
          {
            goto LABEL_2794;
          }

          v20 = 2;
          v41 = 1;
          v8 = 8;
        }

        else
        {
          v20 = 2;
          v41 = 1;
          v8 = 4;
        }
      }
    }

    else
    {
      if (v67 < 0x4000)
      {
        v143 = *(a2 + 40);
        if (v143 < 0x40)
        {
          v41 = 2;
          v8 = 1;
          v19 = 1;
        }

        else if (v143 < 0x4000)
        {
          v19 = 1;
          v8 = 2;
          v41 = 2;
        }

        else if (v143 >> 30)
        {
          if (v143 >> 62)
          {
            goto LABEL_2794;
          }

          v19 = 1;
          v41 = 2;
          v8 = 8;
        }

        else
        {
          v19 = 1;
          v41 = 2;
          v8 = 4;
        }

        goto LABEL_2049;
      }

      if (v67 >> 30)
      {
        if (v67 >> 62)
        {
          goto LABEL_2794;
        }

        v68 = *(a2 + 40);
        if (v68 >= 0x40)
        {
          if (v68 >= 0x4000)
          {
            if (!(v68 >> 30))
            {
              v20 = 2;
              v19 = 1;
              v41 = 8;
              v8 = 4;
              v28 = 2;
              return v41 + v8 + v19 + v20 + v28;
            }

            if (v68 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v19 = 1;
            v8 = 8;
LABEL_2531:
            v41 = 8;
            v28 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          v19 = 1;
          v41 = 8;
          goto LABEL_1712;
        }

        v20 = 2;
        v41 = 8;
      }

      else
      {
        v187 = *(a2 + 40);
        if (v187 >= 0x40)
        {
          if (v187 >= 0x4000)
          {
            if (v187 >> 30)
            {
              if (v187 >> 62)
              {
                goto LABEL_2794;
              }

              v20 = 2;
              v19 = 1;
              v41 = 4;
              v8 = 8;
              v28 = 2;
              return v41 + v8 + v19 + v20 + v28;
            }

            v20 = 2;
            v19 = 1;
            goto LABEL_1937;
          }

          v19 = 1;
          v41 = 4;
          goto LABEL_1712;
        }

        v20 = 2;
        v41 = 4;
      }

      v8 = 1;
    }

    v19 = 1;
    v28 = 2;
    return v41 + v8 + v19 + v20 + v28;
  }

  if (!(v3 >> 30))
  {
    v21 = *(a2 + 16);
    if (v21 >= 0x40)
    {
      if (v21 < 0x4000)
      {
        v57 = *(a2 + 24);
        if (v57 < 0x40)
        {
          v104 = *(a2 + 32);
          if (v104 < 0x40)
          {
            v155 = *(a2 + 40);
            if (v155 < 0x40)
            {
              v8 = 1;
            }

            else if (v155 < 0x4000)
            {
              v8 = 2;
            }

            else if (v155 >> 30)
            {
              if (v155 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 1;
          }

          else if (v104 < 0x4000)
          {
            v199 = *(a2 + 40);
            if (v199 < 0x40)
            {
              v8 = 1;
            }

            else if (v199 < 0x4000)
            {
              v8 = 2;
            }

            else if (v199 >> 30)
            {
              if (v199 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 1;
          }

          else if (v104 >> 30)
          {
            if (v104 >> 62)
            {
              goto LABEL_2794;
            }

            v105 = *(a2 + 40);
            if (v105 < 0x40)
            {
              v8 = 1;
            }

            else if (v105 < 0x4000)
            {
              v8 = 2;
            }

            else if (v105 >> 30)
            {
              if (v105 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 1;
          }

          else
          {
            v247 = *(a2 + 40);
            if (v247 < 0x40)
            {
              v8 = 1;
            }

            else if (v247 < 0x4000)
            {
              v8 = 2;
            }

            else if (v247 >> 30)
            {
              if (v247 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 1;
          }
        }

        else if (v57 < 0x4000)
        {
          v138 = *(a2 + 32);
          if (v138 < 0x40)
          {
            v205 = *(a2 + 40);
            if (v205 < 0x40)
            {
              v8 = 1;
            }

            else if (v205 < 0x4000)
            {
              v8 = 2;
            }

            else if (v205 >> 30)
            {
              if (v205 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 2;
          }

          else if (v138 < 0x4000)
          {
            v253 = *(a2 + 40);
            if (v253 < 0x40)
            {
              v8 = 1;
            }

            else if (v253 < 0x4000)
            {
              v8 = 2;
            }

            else if (v253 >> 30)
            {
              if (v253 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 2;
          }

          else if (v138 >> 30)
          {
            if (v138 >> 62)
            {
              goto LABEL_2794;
            }

            v139 = *(a2 + 40);
            if (v139 < 0x40)
            {
              v8 = 1;
            }

            else if (v139 < 0x4000)
            {
              v8 = 2;
            }

            else if (v139 >> 30)
            {
              if (v139 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 2;
          }

          else
          {
            v299 = *(a2 + 40);
            if (v299 < 0x40)
            {
              v8 = 1;
            }

            else if (v299 < 0x4000)
            {
              v8 = 2;
            }

            else if (v299 >> 30)
            {
              if (v299 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 2;
          }
        }

        else if (v57 >> 30)
        {
          if (v57 >> 62)
          {
            goto LABEL_2794;
          }

          v58 = *(a2 + 32);
          if (v58 < 0x40)
          {
            v268 = *(a2 + 40);
            if (v268 < 0x40)
            {
              v8 = 1;
              v41 = 1;
            }

            else if (v268 < 0x4000)
            {
              v8 = 2;
              v41 = 1;
            }

            else if (v268 >> 30)
            {
              if (v268 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 1;
            }

            else
            {
              v8 = 4;
              v41 = 1;
            }
          }

          else if (v58 < 0x4000)
          {
            v311 = *(a2 + 40);
            if (v311 < 0x40)
            {
              v8 = 1;
              v41 = 2;
            }

            else if (v311 < 0x4000)
            {
              v8 = 2;
              v41 = 2;
            }

            else if (v311 >> 30)
            {
              if (v311 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 2;
            }

            else
            {
              v8 = 4;
              v41 = 2;
            }
          }

          else if (v58 >> 30)
          {
            if (v58 >> 62)
            {
              goto LABEL_2794;
            }

            v59 = *(a2 + 40);
            if (v59 < 0x40)
            {
              v8 = 1;
            }

            else if (v59 < 0x4000)
            {
              v8 = 2;
            }

            else if (v59 >> 30)
            {
              if (v59 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
          }

          else
          {
            v343 = *(a2 + 40);
            if (v343 < 0x40)
            {
              v8 = 1;
              v41 = 4;
            }

            else if (v343 < 0x4000)
            {
              v8 = 2;
              v41 = 4;
            }

            else if (v343 >> 30)
            {
              if (v343 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 4;
            }

            else
            {
              v8 = 4;
              v41 = 4;
            }
          }

          v19 = 8;
        }

        else
        {
          v182 = *(a2 + 32);
          if (v182 < 0x40)
          {
            v257 = *(a2 + 40);
            if (v257 < 0x40)
            {
              v8 = 1;
            }

            else if (v257 < 0x4000)
            {
              v8 = 2;
            }

            else if (v257 >> 30)
            {
              if (v257 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 4;
          }

          else if (v182 < 0x4000)
          {
            v303 = *(a2 + 40);
            if (v303 < 0x40)
            {
              v8 = 1;
            }

            else if (v303 < 0x4000)
            {
              v8 = 2;
            }

            else if (v303 >> 30)
            {
              if (v303 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 4;
          }

          else if (v182 >> 30)
          {
            if (v182 >> 62)
            {
              goto LABEL_2794;
            }

            v183 = *(a2 + 40);
            if (v183 < 0x40)
            {
              v8 = 1;
            }

            else if (v183 < 0x4000)
            {
              v8 = 2;
            }

            else if (v183 >> 30)
            {
              if (v183 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 4;
          }

          else
          {
            v338 = *(a2 + 40);
            if (v338 < 0x40)
            {
              v8 = 1;
            }

            else if (v338 < 0x4000)
            {
              v8 = 2;
            }

            else if (v338 >> 30)
            {
              if (v338 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 4;
          }
        }

        v20 = 2;
        v28 = 4;
      }

      else if (v21 >> 30)
      {
        if (v21 >> 62)
        {
          goto LABEL_2794;
        }

        v22 = *(a2 + 24);
        if (v22 < 0x40)
        {
          v161 = *(a2 + 32);
          if (v161 < 0x40)
          {
            v231 = *(a2 + 40);
            if (v231 < 0x40)
            {
              v8 = 1;
              v41 = 1;
            }

            else if (v231 < 0x4000)
            {
              v8 = 2;
              v41 = 1;
            }

            else if (v231 >> 30)
            {
              if (v231 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 1;
            }

            else
            {
              v8 = 4;
              v41 = 1;
            }
          }

          else if (v161 < 0x4000)
          {
            v278 = *(a2 + 40);
            if (v278 < 0x40)
            {
              v8 = 1;
              v41 = 2;
            }

            else if (v278 < 0x4000)
            {
              v8 = 2;
              v41 = 2;
            }

            else if (v278 >> 30)
            {
              if (v278 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 2;
            }

            else
            {
              v8 = 4;
              v41 = 2;
            }
          }

          else if (v161 >> 30)
          {
            if (v161 >> 62)
            {
              goto LABEL_2794;
            }

            v162 = *(a2 + 40);
            if (v162 < 0x40)
            {
              v8 = 1;
            }

            else if (v162 < 0x4000)
            {
              v8 = 2;
            }

            else if (v162 >> 30)
            {
              if (v162 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
          }

          else
          {
            v316 = *(a2 + 40);
            if (v316 < 0x40)
            {
              v8 = 1;
              v41 = 4;
            }

            else if (v316 < 0x4000)
            {
              v8 = 2;
              v41 = 4;
            }

            else if (v316 >> 30)
            {
              if (v316 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 4;
            }

            else
            {
              v8 = 4;
              v41 = 4;
            }
          }

          v19 = 1;
        }

        else if (v22 < 0x4000)
        {
          v210 = *(a2 + 32);
          if (v210 < 0x40)
          {
            v283 = *(a2 + 40);
            if (v283 < 0x40)
            {
              v8 = 1;
            }

            else if (v283 < 0x4000)
            {
              v8 = 2;
            }

            else if (v283 >> 30)
            {
              if (v283 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 2;
          }

          else if (v210 < 0x4000)
          {
            v321 = *(a2 + 40);
            if (v321 < 0x40)
            {
              v8 = 1;
            }

            else if (v321 < 0x4000)
            {
              v8 = 2;
            }

            else if (v321 >> 30)
            {
              if (v321 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 2;
          }

          else if (v210 >> 30)
          {
            if (v210 >> 62)
            {
              goto LABEL_2794;
            }

            v211 = *(a2 + 40);
            if (v211 < 0x40)
            {
              v8 = 1;
            }

            else if (v211 < 0x4000)
            {
              v8 = 2;
            }

            else if (v211 >> 30)
            {
              if (v211 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 2;
          }

          else
          {
            v347 = *(a2 + 40);
            if (v347 < 0x40)
            {
              v8 = 1;
            }

            else if (v347 < 0x4000)
            {
              v8 = 2;
            }

            else if (v347 >> 30)
            {
              if (v347 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 2;
          }
        }

        else if (v22 >> 30)
        {
          if (v22 >> 62)
          {
            goto LABEL_2794;
          }

          v23 = *(a2 + 32);
          if (v23 < 0x40)
          {
            v329 = *(a2 + 40);
            if (v329 < 0x40)
            {
              v8 = 1;
            }

            else if (v329 < 0x4000)
            {
              v8 = 2;
            }

            else if (v329 >> 30)
            {
              if (v329 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 8;
          }

          else if (v23 < 0x4000)
          {
            v354 = *(a2 + 40);
            if (v354 < 0x40)
            {
              v8 = 1;
            }

            else if (v354 < 0x4000)
            {
              v8 = 2;
            }

            else if (v354 >> 30)
            {
              if (v354 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 8;
          }

          else if (v23 >> 30)
          {
            if (v23 >> 62)
            {
              goto LABEL_2794;
            }

            v24 = *(a2 + 40);
            if (v24 < 0x40)
            {
              v8 = 1;
            }

            else if (v24 < 0x4000)
            {
              v8 = 2;
            }

            else if (v24 >> 30)
            {
              if (v24 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 8;
          }

          else
          {
            v365 = *(a2 + 40);
            if (v365 < 0x40)
            {
              v8 = 1;
            }

            else if (v365 < 0x4000)
            {
              v8 = 2;
            }

            else if (v365 >> 30)
            {
              if (v365 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 8;
          }
        }

        else
        {
          v260 = *(a2 + 32);
          if (v260 < 0x40)
          {
            v325 = *(a2 + 40);
            if (v325 < 0x40)
            {
              v8 = 1;
            }

            else if (v325 < 0x4000)
            {
              v8 = 2;
            }

            else if (v325 >> 30)
            {
              if (v325 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 4;
          }

          else if (v260 < 0x4000)
          {
            v351 = *(a2 + 40);
            if (v351 < 0x40)
            {
              v8 = 1;
            }

            else if (v351 < 0x4000)
            {
              v8 = 2;
            }

            else if (v351 >> 30)
            {
              if (v351 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 4;
          }

          else if (v260 >> 30)
          {
            if (v260 >> 62)
            {
              goto LABEL_2794;
            }

            v261 = *(a2 + 40);
            if (v261 < 0x40)
            {
              v8 = 1;
            }

            else if (v261 < 0x4000)
            {
              v8 = 2;
            }

            else if (v261 >> 30)
            {
              if (v261 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 4;
          }

          else
          {
            v363 = *(a2 + 40);
            if (v363 < 0x40)
            {
              v8 = 1;
            }

            else if (v363 < 0x4000)
            {
              v8 = 2;
            }

            else if (v363 >> 30)
            {
              if (v363 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 4;
          }
        }

        v20 = 8;
        v28 = 4;
      }

      else
      {
        v85 = *(a2 + 24);
        if (v85 < 0x40)
        {
          v147 = *(a2 + 32);
          if (v147 < 0x40)
          {
            v207 = *(a2 + 40);
            if (v207 < 0x40)
            {
              v8 = 1;
            }

            else if (v207 < 0x4000)
            {
              v8 = 2;
            }

            else if (v207 >> 30)
            {
              if (v207 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 1;
          }

          else if (v147 < 0x4000)
          {
            v255 = *(a2 + 40);
            if (v255 < 0x40)
            {
              v8 = 1;
            }

            else if (v255 < 0x4000)
            {
              v8 = 2;
            }

            else if (v255 >> 30)
            {
              if (v255 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 1;
          }

          else if (v147 >> 30)
          {
            if (v147 >> 62)
            {
              goto LABEL_2794;
            }

            v148 = *(a2 + 40);
            if (v148 < 0x40)
            {
              v8 = 1;
            }

            else if (v148 < 0x4000)
            {
              v8 = 2;
            }

            else if (v148 >> 30)
            {
              if (v148 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 1;
          }

          else
          {
            v301 = *(a2 + 40);
            if (v301 < 0x40)
            {
              v8 = 1;
            }

            else if (v301 < 0x4000)
            {
              v8 = 2;
            }

            else if (v301 >> 30)
            {
              if (v301 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 1;
          }
        }

        else if (v85 < 0x4000)
        {
          v191 = *(a2 + 32);
          if (v191 < 0x40)
          {
            v259 = *(a2 + 40);
            if (v259 < 0x40)
            {
              v8 = 1;
            }

            else if (v259 < 0x4000)
            {
              v8 = 2;
            }

            else if (v259 >> 30)
            {
              if (v259 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 2;
          }

          else if (v191 < 0x4000)
          {
            v305 = *(a2 + 40);
            if (v305 < 0x40)
            {
              v8 = 1;
            }

            else if (v305 < 0x4000)
            {
              v8 = 2;
            }

            else if (v305 >> 30)
            {
              if (v305 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 2;
          }

          else if (v191 >> 30)
          {
            if (v191 >> 62)
            {
              goto LABEL_2794;
            }

            v192 = *(a2 + 40);
            if (v192 < 0x40)
            {
              v8 = 1;
            }

            else if (v192 < 0x4000)
            {
              v8 = 2;
            }

            else if (v192 >> 30)
            {
              if (v192 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 2;
          }

          else
          {
            v340 = *(a2 + 40);
            if (v340 < 0x40)
            {
              v8 = 1;
            }

            else if (v340 < 0x4000)
            {
              v8 = 2;
            }

            else if (v340 >> 30)
            {
              if (v340 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 2;
          }
        }

        else if (v85 >> 30)
        {
          if (v85 >> 62)
          {
            goto LABEL_2794;
          }

          v86 = *(a2 + 32);
          if (v86 < 0x40)
          {
            v313 = *(a2 + 40);
            if (v313 < 0x40)
            {
              v8 = 1;
              v41 = 1;
            }

            else if (v313 < 0x4000)
            {
              v8 = 2;
              v41 = 1;
            }

            else if (v313 >> 30)
            {
              if (v313 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 1;
            }

            else
            {
              v8 = 4;
              v41 = 1;
            }
          }

          else if (v86 < 0x4000)
          {
            v345 = *(a2 + 40);
            if (v345 < 0x40)
            {
              v8 = 1;
              v41 = 2;
            }

            else if (v345 < 0x4000)
            {
              v8 = 2;
              v41 = 2;
            }

            else if (v345 >> 30)
            {
              if (v345 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 2;
            }

            else
            {
              v8 = 4;
              v41 = 2;
            }
          }

          else if (v86 >> 30)
          {
            if (v86 >> 62)
            {
              goto LABEL_2794;
            }

            v87 = *(a2 + 40);
            if (v87 < 0x40)
            {
              v8 = 1;
            }

            else if (v87 < 0x4000)
            {
              v8 = 2;
            }

            else if (v87 >> 30)
            {
              if (v87 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
          }

          else
          {
            v362 = *(a2 + 40);
            if (v362 < 0x40)
            {
              v8 = 1;
              v41 = 4;
            }

            else if (v362 < 0x4000)
            {
              v8 = 2;
              v41 = 4;
            }

            else if (v362 >> 30)
            {
              if (v362 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
              v41 = 4;
            }

            else
            {
              v8 = 4;
              v41 = 4;
            }
          }

          v19 = 8;
        }

        else
        {
          v239 = *(a2 + 32);
          if (v239 < 0x40)
          {
            v306 = *(a2 + 40);
            if (v306 < 0x40)
            {
              v8 = 1;
            }

            else if (v306 < 0x4000)
            {
              v8 = 2;
            }

            else if (v306 >> 30)
            {
              if (v306 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 1;
            v19 = 4;
          }

          else if (v239 < 0x4000)
          {
            v341 = *(a2 + 40);
            if (v341 < 0x40)
            {
              v8 = 1;
            }

            else if (v341 < 0x4000)
            {
              v8 = 2;
            }

            else if (v341 >> 30)
            {
              if (v341 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 2;
            v19 = 4;
          }

          else if (v239 >> 30)
          {
            if (v239 >> 62)
            {
              goto LABEL_2794;
            }

            v240 = *(a2 + 40);
            if (v240 < 0x40)
            {
              v8 = 1;
            }

            else if (v240 < 0x4000)
            {
              v8 = 2;
            }

            else if (v240 >> 30)
            {
              if (v240 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 8;
            v19 = 4;
          }

          else
          {
            v361 = *(a2 + 40);
            if (v361 < 0x40)
            {
              v8 = 1;
            }

            else if (v361 < 0x4000)
            {
              v8 = 2;
            }

            else if (v361 >> 30)
            {
              if (v361 >> 62)
              {
                goto LABEL_2794;
              }

              v8 = 8;
            }

            else
            {
              v8 = 4;
            }

            v41 = 4;
            v19 = 4;
          }
        }

        v20 = 4;
        v28 = 4;
      }

      return v41 + v8 + v19 + v20 + v28;
    }

    if (v21 == 2)
    {
      v42 = *(a2 + 32);
      if (v42 < 0x40)
      {
        v97 = *(a2 + 40);
        if (v97 < 0x40)
        {
          v19 = 0;
          v28 = 4;
          goto LABEL_795;
        }

        if (v97 < 0x4000)
        {
          v19 = 0;
          v28 = 4;
          goto LABEL_1090;
        }

        if (v97 >> 30)
        {
          if (v97 >> 62)
          {
            goto LABEL_2794;
          }

          v19 = 0;
          v28 = 4;
          v41 = 1;
          v8 = 8;
          v20 = 1;
          return v41 + v8 + v19 + v20 + v28;
        }

        v19 = 0;
        v41 = 1;
        v8 = 4;
      }

      else
      {
        if (v42 < 0x4000)
        {
          v131 = *(a2 + 40);
          if (v131 < 0x40)
          {
            v19 = 0;
            v28 = 4;
            goto LABEL_1121;
          }

          if (v131 < 0x4000)
          {
            v19 = 0;
            v28 = 4;
LABEL_1436:
            v20 = 1;
LABEL_1437:
            v8 = 2;
            v41 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          if (v131 >> 30)
          {
            if (v131 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v28 = 4;
            v20 = 1;
            v41 = 2;
            v8 = 8;
            return v41 + v8 + v19 + v20 + v28;
          }

          v19 = 0;
          v20 = 1;
          v41 = 2;
          goto LABEL_2014;
        }

        if (v42 >> 30)
        {
          if (v42 >> 62)
          {
            goto LABEL_2794;
          }

          v43 = *(a2 + 40);
          if (v43 < 0x40)
          {
            v19 = 0;
            v28 = 4;
            v41 = 8;
            goto LABEL_1122;
          }

          if (v43 < 0x4000)
          {
            v19 = 0;
            v28 = 4;
            v20 = 1;
            v41 = 8;
            v8 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          if (v43 >> 30)
          {
            if (v43 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v28 = 4;
            v20 = 1;
LABEL_160:
            v8 = 8;
            v41 = 8;
            return v41 + v8 + v19 + v20 + v28;
          }

          v19 = 0;
          v20 = 1;
          v41 = 8;
LABEL_2014:
          v8 = 4;
          v28 = 4;
          return v41 + v8 + v19 + v20 + v28;
        }

        v179 = *(a2 + 40);
        if (v179 >= 0x40)
        {
          if (v179 < 0x4000)
          {
            v19 = 0;
            v20 = 1;
            v41 = 4;
            v8 = 2;
            v28 = 4;
          }

          else if (v179 >> 30)
          {
            if (v179 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v20 = 1;
            v41 = 4;
            v8 = 8;
            v28 = 4;
          }

          else
          {
            v19 = 0;
            v20 = 1;
            v8 = 4;
            v41 = 4;
            v28 = 4;
          }

          return v41 + v8 + v19 + v20 + v28;
        }

        v19 = 0;
        v41 = 4;
        v8 = 1;
      }
    }

    else
    {
      v69 = *(a2 + 24);
      if (v69 < 0x40)
      {
        v110 = *(a2 + 32);
        if (v110 < 0x40)
        {
          v156 = *(a2 + 40);
          if (v156 < 0x40)
          {
            v8 = 1;
          }

          else if (v156 < 0x4000)
          {
            v8 = 2;
          }

          else if (v156 >> 30)
          {
            if (v156 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
          v19 = 1;
        }

        else if (v110 < 0x4000)
        {
          v200 = *(a2 + 40);
          if (v200 < 0x40)
          {
            v8 = 1;
          }

          else if (v200 < 0x4000)
          {
            v8 = 2;
          }

          else if (v200 >> 30)
          {
            if (v200 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
          v19 = 1;
        }

        else if (v110 >> 30)
        {
          if (v110 >> 62)
          {
            goto LABEL_2794;
          }

          v111 = *(a2 + 40);
          if (v111 < 0x40)
          {
            v8 = 1;
          }

          else if (v111 < 0x4000)
          {
            v8 = 2;
          }

          else if (v111 >> 30)
          {
            if (v111 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
          v19 = 1;
        }

        else
        {
          v248 = *(a2 + 40);
          if (v248 < 0x40)
          {
            v8 = 1;
          }

          else if (v248 < 0x4000)
          {
            v8 = 2;
          }

          else if (v248 >> 30)
          {
            if (v248 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
          v19 = 1;
        }
      }

      else if (v69 < 0x4000)
      {
        v144 = *(a2 + 32);
        if (v144 < 0x40)
        {
          v206 = *(a2 + 40);
          if (v206 < 0x40)
          {
            v8 = 1;
          }

          else if (v206 < 0x4000)
          {
            v8 = 2;
          }

          else if (v206 >> 30)
          {
            if (v206 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
          v19 = 2;
        }

        else if (v144 < 0x4000)
        {
          v254 = *(a2 + 40);
          if (v254 < 0x40)
          {
            v8 = 1;
          }

          else if (v254 < 0x4000)
          {
            v8 = 2;
          }

          else if (v254 >> 30)
          {
            if (v254 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
          v19 = 2;
        }

        else if (v144 >> 30)
        {
          if (v144 >> 62)
          {
            goto LABEL_2794;
          }

          v145 = *(a2 + 40);
          if (v145 < 0x40)
          {
            v8 = 1;
          }

          else if (v145 < 0x4000)
          {
            v8 = 2;
          }

          else if (v145 >> 30)
          {
            if (v145 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
          v19 = 2;
        }

        else
        {
          v300 = *(a2 + 40);
          if (v300 < 0x40)
          {
            v8 = 1;
          }

          else if (v300 < 0x4000)
          {
            v8 = 2;
          }

          else if (v300 >> 30)
          {
            if (v300 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
          v19 = 2;
        }
      }

      else if (v69 >> 30)
      {
        if (v69 >> 62)
        {
          goto LABEL_2794;
        }

        v70 = *(a2 + 32);
        if (v70 < 0x40)
        {
          v269 = *(a2 + 40);
          if (v269 < 0x40)
          {
            v8 = 1;
          }

          else if (v269 < 0x4000)
          {
            v8 = 2;
          }

          else if (v269 >> 30)
          {
            if (v269 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
        }

        else if (v70 < 0x4000)
        {
          v312 = *(a2 + 40);
          if (v312 < 0x40)
          {
            v8 = 1;
          }

          else if (v312 < 0x4000)
          {
            v8 = 2;
          }

          else if (v312 >> 30)
          {
            if (v312 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
        }

        else if (v70 >> 30)
        {
          if (v70 >> 62)
          {
            goto LABEL_2794;
          }

          v71 = *(a2 + 40);
          if (v71 < 0x40)
          {
            v8 = 1;
          }

          else if (v71 < 0x4000)
          {
            v8 = 2;
          }

          else if (v71 >> 30)
          {
            if (v71 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
        }

        else
        {
          v344 = *(a2 + 40);
          if (v344 < 0x40)
          {
            v8 = 1;
          }

          else if (v344 < 0x4000)
          {
            v8 = 2;
          }

          else if (v344 >> 30)
          {
            if (v344 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
        }

        v19 = 8;
      }

      else
      {
        v188 = *(a2 + 32);
        if (v188 < 0x40)
        {
          v258 = *(a2 + 40);
          if (v258 < 0x40)
          {
            v8 = 1;
          }

          else if (v258 < 0x4000)
          {
            v8 = 2;
          }

          else if (v258 >> 30)
          {
            if (v258 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 1;
          v19 = 4;
        }

        else if (v188 < 0x4000)
        {
          v304 = *(a2 + 40);
          if (v304 < 0x40)
          {
            v8 = 1;
          }

          else if (v304 < 0x4000)
          {
            v8 = 2;
          }

          else if (v304 >> 30)
          {
            if (v304 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 2;
          v19 = 4;
        }

        else if (v188 >> 30)
        {
          if (v188 >> 62)
          {
            goto LABEL_2794;
          }

          v189 = *(a2 + 40);
          if (v189 < 0x40)
          {
            v8 = 1;
          }

          else if (v189 < 0x4000)
          {
            v8 = 2;
          }

          else if (v189 >> 30)
          {
            if (v189 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
          v19 = 4;
        }

        else
        {
          v339 = *(a2 + 40);
          if (v339 < 0x40)
          {
            v8 = 1;
          }

          else if (v339 < 0x4000)
          {
            v8 = 2;
          }

          else if (v339 >> 30)
          {
            if (v339 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 4;
          v19 = 4;
        }
      }
    }

    v20 = 1;
    v28 = 4;
    return v41 + v8 + v19 + v20 + v28;
  }

  if (v3 >> 62)
  {
    goto LABEL_2794;
  }

  v4 = *(a2 + 16);
  if (v4 < 0x40)
  {
    if (v4 != 2)
    {
      v81 = *(a2 + 24);
      if (v81 < 0x40)
      {
        v124 = *(a2 + 32);
        if (v124 < 0x40)
        {
          v176 = *(a2 + 40);
          if (v176 < 0x40)
          {
            v8 = 1;
            v41 = 1;
          }

          else if (v176 < 0x4000)
          {
            v8 = 2;
            v41 = 1;
          }

          else if (v176 >> 30)
          {
            if (v176 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 1;
          }

          else
          {
            v8 = 4;
            v41 = 1;
          }
        }

        else if (v124 < 0x4000)
        {
          v228 = *(a2 + 40);
          if (v228 < 0x40)
          {
            v8 = 1;
            v41 = 2;
          }

          else if (v228 < 0x4000)
          {
            v8 = 2;
            v41 = 2;
          }

          else if (v228 >> 30)
          {
            if (v228 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 2;
          }

          else
          {
            v8 = 4;
            v41 = 2;
          }
        }

        else if (v124 >> 30)
        {
          if (v124 >> 62)
          {
            goto LABEL_2794;
          }

          v125 = *(a2 + 40);
          if (v125 < 0x40)
          {
            v8 = 1;
          }

          else if (v125 < 0x4000)
          {
            v8 = 2;
          }

          else if (v125 >> 30)
          {
            if (v125 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
        }

        else
        {
          v275 = *(a2 + 40);
          if (v275 < 0x40)
          {
            v8 = 1;
            v41 = 4;
          }

          else if (v275 < 0x4000)
          {
            v8 = 2;
            v41 = 4;
          }

          else if (v275 >> 30)
          {
            if (v275 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 4;
          }

          else
          {
            v8 = 4;
            v41 = 4;
          }
        }

        v19 = 1;
        v20 = 1;
        goto LABEL_2786;
      }

      if (v81 < 0x4000)
      {
        v169 = *(a2 + 32);
        if (v169 < 0x40)
        {
          v233 = *(a2 + 40);
          if (v233 < 0x40)
          {
            v8 = 1;
            v41 = 1;
          }

          else if (v233 < 0x4000)
          {
            v8 = 2;
            v41 = 1;
          }

          else if (v233 >> 30)
          {
            if (v233 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 1;
          }

          else
          {
            v8 = 4;
            v41 = 1;
          }
        }

        else if (v169 < 0x4000)
        {
          v280 = *(a2 + 40);
          if (v280 < 0x40)
          {
            v8 = 1;
            v41 = 2;
          }

          else if (v280 < 0x4000)
          {
            v8 = 2;
            v41 = 2;
          }

          else if (v280 >> 30)
          {
            if (v280 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 2;
          }

          else
          {
            v8 = 4;
            v41 = 2;
          }
        }

        else if (v169 >> 30)
        {
          if (v169 >> 62)
          {
            goto LABEL_2794;
          }

          v170 = *(a2 + 40);
          if (v170 < 0x40)
          {
            v8 = 1;
          }

          else if (v170 < 0x4000)
          {
            v8 = 2;
          }

          else if (v170 >> 30)
          {
            if (v170 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
        }

        else
        {
          v318 = *(a2 + 40);
          if (v318 < 0x40)
          {
            v8 = 1;
            v41 = 4;
          }

          else if (v318 < 0x4000)
          {
            v8 = 2;
            v41 = 4;
          }

          else if (v318 >> 30)
          {
            if (v318 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 4;
          }

          else
          {
            v8 = 4;
            v41 = 4;
          }
        }

        v19 = 2;
        v20 = 1;
        goto LABEL_2786;
      }

      if (!(v81 >> 30))
      {
        v221 = *(a2 + 32);
        if (v221 < 0x40)
        {
          v285 = *(a2 + 40);
          if (v285 < 0x40)
          {
            v8 = 1;
            v41 = 1;
          }

          else if (v285 < 0x4000)
          {
            v8 = 2;
            v41 = 1;
          }

          else if (v285 >> 30)
          {
            if (v285 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 1;
          }

          else
          {
            v8 = 4;
            v41 = 1;
          }
        }

        else if (v221 < 0x4000)
        {
          v323 = *(a2 + 40);
          if (v323 < 0x40)
          {
            v8 = 1;
            v41 = 2;
          }

          else if (v323 < 0x4000)
          {
            v8 = 2;
            v41 = 2;
          }

          else if (v323 >> 30)
          {
            if (v323 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 2;
          }

          else
          {
            v8 = 4;
            v41 = 2;
          }
        }

        else if (v221 >> 30)
        {
          if (v221 >> 62)
          {
            goto LABEL_2794;
          }

          v222 = *(a2 + 40);
          if (v222 < 0x40)
          {
            v8 = 1;
          }

          else if (v222 < 0x4000)
          {
            v8 = 2;
          }

          else if (v222 >> 30)
          {
            if (v222 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
        }

        else
        {
          v349 = *(a2 + 40);
          if (v349 < 0x40)
          {
            v8 = 1;
            v41 = 4;
          }

          else if (v349 < 0x4000)
          {
            v8 = 2;
            v41 = 4;
          }

          else if (v349 >> 30)
          {
            if (v349 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 4;
          }

          else
          {
            v8 = 4;
            v41 = 4;
          }
        }

        v19 = 4;
        v20 = 1;
        goto LABEL_2786;
      }

      if (!(v81 >> 62))
      {
        v82 = *(a2 + 32);
        if (v82 < 0x40)
        {
          v292 = *(a2 + 40);
          if (v292 < 0x40)
          {
            v8 = 1;
            v41 = 1;
          }

          else if (v292 < 0x4000)
          {
            v8 = 2;
            v41 = 1;
          }

          else if (v292 >> 30)
          {
            if (v292 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 1;
          }

          else
          {
            v8 = 4;
            v41 = 1;
          }
        }

        else if (v82 < 0x4000)
        {
          v331 = *(a2 + 40);
          if (v331 < 0x40)
          {
            v8 = 1;
            v41 = 2;
          }

          else if (v331 < 0x4000)
          {
            v8 = 2;
            v41 = 2;
          }

          else if (v331 >> 30)
          {
            if (v331 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 2;
          }

          else
          {
            v8 = 4;
            v41 = 2;
          }
        }

        else if (v82 >> 30)
        {
          if (v82 >> 62)
          {
            goto LABEL_2794;
          }

          v83 = *(a2 + 40);
          if (v83 < 0x40)
          {
            v8 = 1;
          }

          else if (v83 < 0x4000)
          {
            v8 = 2;
          }

          else if (v83 >> 30)
          {
            if (v83 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
          }

          else
          {
            v8 = 4;
          }

          v41 = 8;
        }

        else
        {
          v356 = *(a2 + 40);
          if (v356 < 0x40)
          {
            v8 = 1;
            v41 = 4;
          }

          else if (v356 < 0x4000)
          {
            v8 = 2;
            v41 = 4;
          }

          else if (v356 >> 30)
          {
            if (v356 >> 62)
            {
              goto LABEL_2794;
            }

            v8 = 8;
            v41 = 4;
          }

          else
          {
            v8 = 4;
            v41 = 4;
          }
        }

        v19 = 8;
        v20 = 1;
        goto LABEL_2786;
      }

      goto LABEL_2794;
    }

    v51 = *(a2 + 32);
    if (v51 >= 0x40)
    {
      if (v51 >= 0x4000)
      {
        if (v51 >> 30)
        {
          if (v51 >> 62)
          {
            goto LABEL_2794;
          }

          v52 = *(a2 + 40);
          if (v52 < 0x40)
          {
            v19 = 0;
            v41 = 8;
            v8 = 1;
            v20 = 1;
            goto LABEL_2786;
          }

          if (v52 < 0x4000)
          {
            v19 = 0;
            v20 = 1;
            v41 = 8;
            v8 = 2;
            goto LABEL_2786;
          }

          if (v52 >> 30)
          {
            if (v52 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v20 = 1;
            goto LABEL_528;
          }

          v19 = 0;
          v20 = 1;
LABEL_2442:
          v41 = 8;
          v8 = 4;
          goto LABEL_2786;
        }

        v217 = *(a2 + 40);
        if (v217 >= 0x40)
        {
          if (v217 < 0x4000)
          {
            v19 = 0;
            v28 = 8;
            v20 = 1;
            v41 = 4;
            v8 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          if (v217 >> 30)
          {
            if (v217 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v20 = 1;
            goto LABEL_1410;
          }

          v19 = 0;
          v28 = 8;
          v20 = 1;
LABEL_2363:
          v8 = 4;
          v41 = 4;
          return v41 + v8 + v19 + v20 + v28;
        }

        v19 = 0;
        v28 = 8;
        v41 = 4;
LABEL_1122:
        v8 = 1;
        v20 = 1;
        return v41 + v8 + v19 + v20 + v28;
      }

      v165 = *(a2 + 40);
      if (v165 >= 0x40)
      {
        if (v165 >= 0x4000)
        {
          if (v165 >> 30)
          {
            if (v165 >> 62)
            {
              goto LABEL_2794;
            }

            v19 = 0;
            v20 = 1;
            v41 = 2;
            v8 = 8;
            goto LABEL_2786;
          }

          v19 = 0;
          v28 = 8;
          v20 = 1;
          v41 = 2;
          v8 = 4;
          return v41 + v8 + v19 + v20 + v28;
        }

        v19 = 0;
        v28 = 8;
        goto LABEL_1436;
      }

      v19 = 0;
      v28 = 8;
LABEL_1121:
      v41 = 2;
      goto LABEL_1122;
    }

    v120 = *(a2 + 40);
    if (v120 >= 0x40)
    {
      if (v120 >= 0x4000)
      {
        if (v120 >> 30)
        {
          if (v120 >> 62)
          {
            goto LABEL_2794;
          }

          v19 = 0;
          v41 = 1;
          v8 = 8;
          v20 = 1;
          goto LABEL_2786;
        }

        v19 = 0;
        v28 = 8;
        v41 = 1;
        v8 = 4;
        v20 = 1;
        return v41 + v8 + v19 + v20 + v28;
      }

      v19 = 0;
      v28 = 8;
LABEL_1090:
      v41 = 1;
      v8 = 2;
      v20 = 1;
      return v41 + v8 + v19 + v20 + v28;
    }

    v19 = 0;
    v28 = 8;
LABEL_795:
    v8 = 1;
    v41 = 1;
    v20 = 1;
    return v41 + v8 + v19 + v20 + v28;
  }

  if (v4 < 0x4000)
  {
    v76 = *(a2 + 24);
    if (v76 > 0x3F)
    {
      if (v76 >> 14)
      {
        if (v76 >> 30)
        {
          if (v76 >> 62)
          {
            goto LABEL_2794;
          }

          v77 = *(a2 + 32);
          if (v77 < 0x40)
          {
            v291 = *(a2 + 40);
            if (v291 < 0x40)
            {
              v20 = 2;
              v19 = 8;
              v8 = 1;
              v41 = 1;
            }

            else
            {
              if (v291 < 0x4000)
              {
                v19 = 8;
                v20 = 2;
                v8 = 2;
                v41 = 1;
                goto LABEL_2786;
              }

              if (!(v291 >> 30))
              {
                v20 = 2;
                v19 = 8;
                v8 = 4;
                v41 = 1;
                goto LABEL_2786;
              }

              if (v291 >> 62)
              {
                goto LABEL_2794;
              }

              v20 = 2;
              v19 = 8;
              v8 = 8;
              v41 = 1;
            }
          }

          else if (v77 < 0x4000)
          {
            v330 = *(a2 + 40);
            if (v330 < 0x40)
            {
              v19 = 8;
              v20 = 2;
              v8 = 1;
              v41 = 2;
              goto LABEL_2786;
            }

            if (v330 < 0x4000)
            {
              v19 = 8;
              v20 = 2;
              v8 = 2;
              v41 = 2;
              goto LABEL_2786;
            }

            if (!(v330 >> 30))
            {
              v19 = 8;
              v20 = 2;
              v8 = 4;
              v41 = 2;
              goto LABEL_2786;
            }

            if (v330 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v19 = 8;
            v8 = 8;
            v41 = 2;
          }

          else
          {
            if (v77 >> 30)
            {
              if (v77 >> 62)
              {
                goto LABEL_2794;
              }

              v78 = *(a2 + 40);
              if (v78 < 0x40)
              {
                v20 = 2;
                v19 = 8;
                v8 = 1;
                v41 = 8;
                goto LABEL_2786;
              }

              if (v78 < 0x4000)
              {
                v19 = 8;
                v20 = 2;
                v8 = 2;
                v41 = 8;
                goto LABEL_2786;
              }

              if (!(v78 >> 30))
              {
                v20 = 2;
                v19 = 8;
                v8 = 4;
                v41 = 8;
                goto LABEL_2786;
              }

              if (v78 >> 62)
              {
                goto LABEL_2794;
              }

              v20 = 2;
              v19 = 8;
              goto LABEL_528;
            }

            v355 = *(a2 + 40);
            if (v355 < 0x40)
            {
              v20 = 2;
              v19 = 8;
              v8 = 1;
              v41 = 4;
              goto LABEL_2786;
            }

            if (v355 < 0x4000)
            {
              v19 = 8;
              v20 = 2;
              v8 = 2;
              v41 = 4;
              goto LABEL_2786;
            }

            if (!(v355 >> 30))
            {
              v20 = 2;
              v19 = 8;
              v8 = 4;
              v41 = 4;
              goto LABEL_2786;
            }

            if (v355 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v19 = 8;
            v8 = 8;
            v41 = 4;
          }

LABEL_2786:
          v28 = 8;
          return v41 + v8 + v19 + v20 + v28;
        }

        v218 = *(a2 + 32);
        if (v218 >= 0x40)
        {
          if (v218 >= 0x4000)
          {
            if (v218 >> 30)
            {
              if (v218 >> 62)
              {
                goto LABEL_2794;
              }

              v219 = *(a2 + 40);
              if (v219 < 0x40)
              {
                v20 = 2;
                v19 = 4;
                v41 = 8;
                v8 = 1;
                goto LABEL_2786;
              }

              if (v219 < 0x4000)
              {
                v19 = 4;
                v41 = 8;
                v20 = 2;
                v8 = 2;
                goto LABEL_2786;
              }

              if (!(v219 >> 30))
              {
                v20 = 2;
                v41 = 8;
                v19 = 4;
                v8 = 4;
                goto LABEL_2786;
              }

              if (v219 >> 62)
              {
                goto LABEL_2794;
              }

              v20 = 2;
              v19 = 4;
              v41 = 8;
              v8 = 8;
              goto LABEL_2786;
            }

            v348 = *(a2 + 40);
            if (v348 >= 0x40)
            {
              if (v348 >= 0x4000)
              {
                if (v348 >> 30)
                {
                  if (v348 >> 62)
                  {
                    goto LABEL_2794;
                  }

                  v20 = 2;
                  v41 = 4;
                  v28 = 8;
                  v8 = 8;
                  v19 = 4;
                }

                else
                {
                  v28 = 8;
                  v20 = 2;
                  v41 = 4;
                  v8 = 4;
                  v19 = 4;
                }

                return v41 + v8 + v19 + v20 + v28;
              }

              v28 = 8;
LABEL_1982:
              v41 = 4;
              v20 = 2;
              v8 = 2;
              v19 = 4;
              return v41 + v8 + v19 + v20 + v28;
            }

            v28 = 8;
            v20 = 2;
            v41 = 4;
LABEL_1656:
            v8 = 1;
            v19 = 4;
            return v41 + v8 + v19 + v20 + v28;
          }

          v322 = *(a2 + 40);
          if (v322 >= 0x40)
          {
            if (v322 >= 0x4000)
            {
              if (v322 >> 30)
              {
                if (v322 >> 62)
                {
                  goto LABEL_2794;
                }

                v19 = 4;
                v41 = 2;
                v28 = 8;
LABEL_845:
                v8 = 8;
                v20 = 2;
                return v41 + v8 + v19 + v20 + v28;
              }

              v28 = 8;
              v41 = 2;
              v19 = 4;
LABEL_2108:
              v8 = 4;
              v20 = 2;
              return v41 + v8 + v19 + v20 + v28;
            }

            v28 = 8;
            v19 = 4;
            v41 = 2;
LABEL_2398:
            v8 = 2;
            v20 = 2;
            return v41 + v8 + v19 + v20 + v28;
          }

          v28 = 8;
          v19 = 4;
          v41 = 2;
LABEL_2161:
          v8 = 1;
          v20 = 2;
          return v41 + v8 + v19 + v20 + v28;
        }

        v284 = *(a2 + 40);
        if (v284 < 0x40)
        {
          v28 = 8;
          v20 = 2;
          v19 = 4;
          v41 = 1;
          v8 = 1;
          return v41 + v8 + v19 + v20 + v28;
        }

        if (v284 >= 0x4000)
        {
          if (v284 >> 30)
          {
            if (v284 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v19 = 4;
            v41 = 1;
            v28 = 8;
            v8 = 8;
            return v41 + v8 + v19 + v20 + v28;
          }

          v28 = 8;
          v20 = 2;
          v41 = 1;
LABEL_2378:
          v19 = 4;
          v8 = 4;
          return v41 + v8 + v19 + v20 + v28;
        }

        v28 = 8;
        v19 = 4;
        v41 = 1;
LABEL_2142:
        v20 = 2;
        v8 = 2;
        return v41 + v8 + v19 + v20 + v28;
      }

      v166 = *(a2 + 32);
      if (v166 >= 0x40)
      {
        if (v166 >= 0x4000)
        {
          if (v166 >> 30)
          {
            if (v166 >> 62)
            {
              goto LABEL_2794;
            }

            v167 = *(a2 + 40);
            if (v167 < 0x40)
            {
              v19 = 2;
              v41 = 8;
              v8 = 1;
              v20 = 2;
              goto LABEL_2786;
            }

            if (v167 >= 0x4000)
            {
              if (!(v167 >> 30))
              {
                v19 = 2;
                v41 = 8;
                v8 = 4;
                v20 = 2;
                goto LABEL_2786;
              }

              if (v167 >> 62)
              {
                goto LABEL_2794;
              }

              v19 = 2;
              v8 = 8;
              v41 = 8;
              v20 = 2;
              goto LABEL_2786;
            }

            v41 = 8;
            v8 = 2;
LABEL_2450:
            v19 = 2;
            v20 = 2;
            goto LABEL_2786;
          }

          v317 = *(a2 + 40);
          if (v317 < 0x40)
          {
            v28 = 8;
            v19 = 2;
            v41 = 4;
            goto LABEL_2161;
          }

          if (v317 >= 0x4000)
          {
            if (v317 >> 30)
            {
              if (v317 >> 62)
              {
                goto LABEL_2794;
              }

              v19 = 2;
              v41 = 4;
              goto LABEL_1128;
            }

            v28 = 8;
            goto LABEL_1930;
          }

          v28 = 8;
LABEL_1620:
          v41 = 4;
LABEL_1815:
          v8 = 2;
          goto LABEL_1844;
        }

        v279 = *(a2 + 40);
        if (v279 < 0x40)
        {
          v28 = 8;
          v41 = 2;
          v8 = 1;
          goto LABEL_1844;
        }

        if (v279 >= 0x4000)
        {
          if (v279 >> 30)
          {
            if (v279 >> 62)
            {
              goto LABEL_2794;
            }

            v41 = 2;
            v8 = 8;
            goto LABEL_2450;
          }

          v28 = 8;
LABEL_1577:
          v41 = 2;
          v8 = 4;
          goto LABEL_1844;
        }

        v28 = 8;
        goto LABEL_1256;
      }

      v232 = *(a2 + 40);
      if (v232 >= 0x40)
      {
        if (v232 < 0x4000)
        {
          v28 = 8;
          v41 = 1;
          goto LABEL_1815;
        }

        if (!(v232 >> 30))
        {
          v28 = 8;
          v19 = 2;
          v41 = 1;
          goto LABEL_2108;
        }

        if (v232 >> 62)
        {
          goto LABEL_2794;
        }

        v19 = 2;
        v41 = 1;
LABEL_1128:
        v8 = 8;
        v20 = 2;
        goto LABEL_2786;
      }

      v28 = 8;
      v19 = 2;
      v8 = 1;
LABEL_1788:
      v41 = 1;
      v20 = 2;
      return v41 + v8 + v19 + v20 + v28;
    }

    v121 = *(a2 + 32);
    if (v121 >= 0x40)
    {
      if (v121 >= 0x4000)
      {
        if (v121 >> 30)
        {
          if (v121 >> 62)
          {
            goto LABEL_2794;
          }

          v122 = *(a2 + 40);
          if (v122 < 0x40)
          {
            v20 = 2;
            v41 = 8;
            v8 = 1;
            v19 = 1;
            goto LABEL_2786;
          }

          if (v122 < 0x4000)
          {
            v19 = 1;
            v41 = 8;
            v8 = 2;
            v20 = 2;
            goto LABEL_2786;
          }

          if (v122 >> 30)
          {
            if (v122 >> 62)
            {
              goto LABEL_2794;
            }

            v20 = 2;
            v19 = 1;
LABEL_528:
            v8 = 8;
            v41 = 8;
            goto LABEL_2786;
          }

          v20 = 2;
          v19 = 1;
          goto LABEL_2442;
        }

        v274 = *(a2 + 40);
        if (v274 < 0x40)
        {
          v28 = 8;
          v20 = 2;
          v41 = 4;
          v8 = 1;
          v19 = 1;
          return v41 + v8 + v19 + v20 + v28;
        }

        if (v274 < 0x4000)
        {
          v28 = 8;
          v19 = 1;
          v41 = 4;
          goto LABEL_2398;
        }

        if (v274 >> 30)
        {
          if (v274 >> 62)
          {
            goto LABEL_2794;
          }

          v20 = 2;
          v19 = 1;
LABEL_1410:
          v41 = 4;
          v8 = 8;
          goto LABEL_2786;
        }

        v28 = 8;
        v20 = 2;
        v19 = 1;
        goto LABEL_2363;
      }

      v227 = *(a2 + 40);
      if (v227 >= 0x40)
      {
        if (v227 >= 0x4000)
        {
          if (!(v227 >> 30))
          {
            v28 = 8;
            v19 = 1;
            v41 = 2;
            goto LABEL_2108;
          }

          if (v227 >> 62)
          {
            goto LABEL_2794;
          }

          v19 = 1;
          v41 = 2;
          goto LABEL_1128;
        }

        v28 = 8;
        v19 = 1;
        v8 = 2;
LABEL_2346:
        v41 = 2;
        v20 = 2;
        return v41 + v8 + v19 + v20 + v28;
      }

      v28 = 8;
      v41 = 2;
      v8 = 1;
LABEL_1494:
      v19 = 1;
      v20 = 2;
      return v41 + v8 + v19 + v20 + v28;
    }

    v175 = *(a2 + 40);
    if (v175 < 0x40)
    {
      v28 = 8;
      v20 = 2;
      v8 = 1;
      v41 = 1;
      v19 = 1;
      return v41 + v8 + v19 + v20 + v28;
    }

    if (v175 < 0x4000)
    {
      v28 = 8;
      v41 = 1;
      v8 = 2;
      goto LABEL_1494;
    }

    if (v175 >> 30)
    {
      if (v175 >> 62)
      {
        goto LABEL_2794;
      }

      v20 = 2;
      v41 = 1;
      v8 = 8;
      v19 = 1;
      goto LABEL_2786;
    }

    v28 = 8;
    v20 = 2;
    v41 = 1;
    v8 = 4;
    v19 = 1;
    return v41 + v8 + v19 + v20 + v28;
  }

  if (!(v4 >> 30))
  {
    v113 = *(a2 + 24);
    if (v113 < 0x40)
    {
      v171 = *(a2 + 32);
      if (v171 < 0x40)
      {
        v234 = *(a2 + 40);
        if (v234 < 0x40)
        {
          v8 = 1;
          v41 = 1;
        }

        else if (v234 < 0x4000)
        {
          v8 = 2;
          v41 = 1;
        }

        else if (v234 >> 30)
        {
          if (v234 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 1;
        }

        else
        {
          v8 = 4;
          v41 = 1;
        }
      }

      else if (v171 < 0x4000)
      {
        v281 = *(a2 + 40);
        if (v281 < 0x40)
        {
          v8 = 1;
          v41 = 2;
        }

        else if (v281 < 0x4000)
        {
          v8 = 2;
          v41 = 2;
        }

        else if (v281 >> 30)
        {
          if (v281 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 2;
        }

        else
        {
          v8 = 4;
          v41 = 2;
        }
      }

      else if (v171 >> 30)
      {
        if (v171 >> 62)
        {
          goto LABEL_2794;
        }

        v172 = *(a2 + 40);
        if (v172 < 0x40)
        {
          v8 = 1;
        }

        else if (v172 < 0x4000)
        {
          v8 = 2;
        }

        else if (v172 >> 30)
        {
          if (v172 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 8;
      }

      else
      {
        v319 = *(a2 + 40);
        if (v319 < 0x40)
        {
          v8 = 1;
          v41 = 4;
        }

        else if (v319 < 0x4000)
        {
          v8 = 2;
          v41 = 4;
        }

        else if (v319 >> 30)
        {
          if (v319 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 4;
        }

        else
        {
          v8 = 4;
          v41 = 4;
        }
      }

      v19 = 1;
    }

    else if (v113 < 0x4000)
    {
      v223 = *(a2 + 32);
      if (v223 < 0x40)
      {
        v286 = *(a2 + 40);
        if (v286 < 0x40)
        {
          v8 = 1;
          v41 = 1;
        }

        else if (v286 < 0x4000)
        {
          v8 = 2;
          v41 = 1;
        }

        else if (v286 >> 30)
        {
          if (v286 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 1;
        }

        else
        {
          v8 = 4;
          v41 = 1;
        }
      }

      else if (v223 < 0x4000)
      {
        v324 = *(a2 + 40);
        if (v324 < 0x40)
        {
          v8 = 1;
          v41 = 2;
        }

        else if (v324 < 0x4000)
        {
          v8 = 2;
          v41 = 2;
        }

        else if (v324 >> 30)
        {
          if (v324 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 2;
        }

        else
        {
          v8 = 4;
          v41 = 2;
        }
      }

      else if (v223 >> 30)
      {
        if (v223 >> 62)
        {
          goto LABEL_2794;
        }

        v224 = *(a2 + 40);
        if (v224 < 0x40)
        {
          v8 = 1;
        }

        else if (v224 < 0x4000)
        {
          v8 = 2;
        }

        else if (v224 >> 30)
        {
          if (v224 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 8;
      }

      else
      {
        v350 = *(a2 + 40);
        if (v350 < 0x40)
        {
          v8 = 1;
          v41 = 4;
        }

        else if (v350 < 0x4000)
        {
          v8 = 2;
          v41 = 4;
        }

        else if (v350 >> 30)
        {
          if (v350 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 4;
        }

        else
        {
          v8 = 4;
          v41 = 4;
        }
      }

      v19 = 2;
    }

    else if (v113 >> 30)
    {
      if (v113 >> 62)
      {
        goto LABEL_2794;
      }

      v114 = *(a2 + 32);
      if (v114 < 0x40)
      {
        v332 = *(a2 + 40);
        if (v332 < 0x40)
        {
          v8 = 1;
          v41 = 1;
        }

        else if (v332 < 0x4000)
        {
          v8 = 2;
          v41 = 1;
        }

        else if (v332 >> 30)
        {
          if (v332 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 1;
        }

        else
        {
          v8 = 4;
          v41 = 1;
        }
      }

      else if (v114 < 0x4000)
      {
        v357 = *(a2 + 40);
        if (v357 < 0x40)
        {
          v8 = 1;
          v41 = 2;
        }

        else if (v357 < 0x4000)
        {
          v8 = 2;
          v41 = 2;
        }

        else if (v357 >> 30)
        {
          if (v357 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 2;
        }

        else
        {
          v8 = 4;
          v41 = 2;
        }
      }

      else if (v114 >> 30)
      {
        if (v114 >> 62)
        {
          goto LABEL_2794;
        }

        v115 = *(a2 + 40);
        if (v115 < 0x40)
        {
          v8 = 1;
        }

        else if (v115 < 0x4000)
        {
          v8 = 2;
        }

        else if (v115 >> 30)
        {
          if (v115 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 8;
      }

      else
      {
        v366 = *(a2 + 40);
        if (v366 < 0x40)
        {
          v8 = 1;
          v41 = 4;
        }

        else if (v366 < 0x4000)
        {
          v8 = 2;
          v41 = 4;
        }

        else if (v366 >> 30)
        {
          if (v366 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 4;
        }

        else
        {
          v8 = 4;
          v41 = 4;
        }
      }

      v19 = 8;
    }

    else
    {
      v270 = *(a2 + 32);
      if (v270 < 0x40)
      {
        v326 = *(a2 + 40);
        if (v326 < 0x40)
        {
          v8 = 1;
          v41 = 1;
        }

        else if (v326 < 0x4000)
        {
          v8 = 2;
          v41 = 1;
        }

        else if (v326 >> 30)
        {
          if (v326 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 1;
        }

        else
        {
          v8 = 4;
          v41 = 1;
        }
      }

      else if (v270 < 0x4000)
      {
        v352 = *(a2 + 40);
        if (v352 < 0x40)
        {
          v8 = 1;
          v41 = 2;
        }

        else if (v352 < 0x4000)
        {
          v8 = 2;
          v41 = 2;
        }

        else if (v352 >> 30)
        {
          if (v352 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 2;
        }

        else
        {
          v8 = 4;
          v41 = 2;
        }
      }

      else if (v270 >> 30)
      {
        if (v270 >> 62)
        {
          goto LABEL_2794;
        }

        v271 = *(a2 + 40);
        if (v271 < 0x40)
        {
          v8 = 1;
        }

        else if (v271 < 0x4000)
        {
          v8 = 2;
        }

        else if (v271 >> 30)
        {
          if (v271 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 8;
      }

      else
      {
        v364 = *(a2 + 40);
        if (v364 < 0x40)
        {
          v8 = 1;
          v41 = 4;
        }

        else if (v364 < 0x4000)
        {
          v8 = 2;
          v41 = 4;
        }

        else if (v364 >> 30)
        {
          if (v364 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 4;
        }

        else
        {
          v8 = 4;
          v41 = 4;
        }
      }

      v19 = 4;
    }

    v20 = 4;
    goto LABEL_2786;
  }

  if (!(v4 >> 62))
  {
    v5 = *(a2 + 24);
    if (v5 < 0x40)
    {
      v177 = *(a2 + 32);
      if (v177 < 0x40)
      {
        v238 = *(a2 + 40);
        if (v238 < 0x40)
        {
          v8 = 1;
        }

        else if (v238 < 0x4000)
        {
          v8 = 2;
        }

        else if (v238 >> 30)
        {
          if (v238 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 1;
      }

      else if (v177 < 0x4000)
      {
        v293 = *(a2 + 40);
        if (v293 < 0x40)
        {
          v8 = 1;
          v41 = 2;
        }

        else if (v293 < 0x4000)
        {
          v8 = 2;
          v41 = 2;
        }

        else if (v293 >> 30)
        {
          if (v293 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 2;
        }

        else
        {
          v8 = 4;
          v41 = 2;
        }
      }

      else if (v177 >> 30)
      {
        if (v177 >> 62)
        {
          goto LABEL_2794;
        }

        v178 = *(a2 + 40);
        if (v178 < 0x40)
        {
          v8 = 1;
          v41 = 8;
        }

        else if (v178 < 0x4000)
        {
          v8 = 2;
          v41 = 8;
        }

        else if (v178 >> 30)
        {
          if (v178 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 8;
        }

        else
        {
          v8 = 4;
          v41 = 8;
        }
      }

      else
      {
        v333 = *(a2 + 40);
        if (v333 < 0x40)
        {
          v8 = 1;
          v41 = 4;
        }

        else if (v333 < 0x4000)
        {
          v8 = 2;
          v41 = 4;
        }

        else if (v333 >> 30)
        {
          if (v333 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
          v41 = 4;
        }

        else
        {
          v8 = 4;
          v41 = 4;
        }
      }

      v19 = 1;
    }

    else if (v5 < 0x4000)
    {
      v235 = *(a2 + 32);
      if (v235 < 0x40)
      {
        v294 = *(a2 + 40);
        if (v294 < 0x40)
        {
          v8 = 1;
        }

        else if (v294 < 0x4000)
        {
          v8 = 2;
        }

        else if (v294 >> 30)
        {
          if (v294 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 1;
        v19 = 2;
      }

      else if (v235 < 0x4000)
      {
        v334 = *(a2 + 40);
        if (v334 < 0x40)
        {
          v8 = 1;
        }

        else if (v334 < 0x4000)
        {
          v8 = 2;
        }

        else if (v334 >> 30)
        {
          if (v334 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 2;
        v19 = 2;
      }

      else if (v235 >> 30)
      {
        if (v235 >> 62)
        {
          goto LABEL_2794;
        }

        v236 = *(a2 + 40);
        if (v236 < 0x40)
        {
          v8 = 1;
        }

        else if (v236 < 0x4000)
        {
          v8 = 2;
        }

        else if (v236 >> 30)
        {
          if (v236 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 8;
        v19 = 2;
      }

      else
      {
        v358 = *(a2 + 40);
        if (v358 < 0x40)
        {
          v8 = 1;
        }

        else if (v358 < 0x4000)
        {
          v8 = 2;
        }

        else if (v358 >> 30)
        {
          if (v358 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 4;
        v19 = 2;
      }
    }

    else if (v5 >> 30)
    {
      if (v5 >> 62)
      {
        goto LABEL_2794;
      }

      v6 = *(a2 + 32);
      if (v6 < 0x40)
      {
        v336 = *(a2 + 40);
        if (v336 < 0x40)
        {
          v8 = 1;
        }

        else if (v336 < 0x4000)
        {
          v8 = 2;
        }

        else if (v336 >> 30)
        {
          if (v336 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 1;
        v19 = 8;
      }

      else if (v6 < 0x4000)
      {
        v360 = *(a2 + 40);
        if (v360 < 0x40)
        {
          v8 = 1;
        }

        else if (v360 < 0x4000)
        {
          v8 = 2;
        }

        else if (v360 >> 30)
        {
          if (v360 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 2;
        v19 = 8;
      }

      else
      {
        if (v6 >> 30)
        {
          if (!(v6 >> 62))
          {
            v7 = *(a2 + 40);
            if (v7 < 0x40)
            {
              v8 = 1;
              goto LABEL_2793;
            }

            if (v7 < 0x4000)
            {
              v8 = 2;
              goto LABEL_2793;
            }

            if (!(v7 >> 30))
            {
              v8 = 4;
              goto LABEL_2793;
            }

            if (!(v7 >> 62))
            {
              v8 = 8;
LABEL_2793:
              v41 = 8;
              v19 = 8;
              goto LABEL_2219;
            }
          }

          goto LABEL_2794;
        }

        v368 = *(a2 + 40);
        if (v368 < 0x40)
        {
          v8 = 1;
        }

        else if (v368 < 0x4000)
        {
          v8 = 2;
        }

        else if (v368 >> 30)
        {
          if (v368 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 4;
        v19 = 8;
      }
    }

    else
    {
      v287 = *(a2 + 32);
      if (v287 < 0x40)
      {
        v335 = *(a2 + 40);
        if (v335 < 0x40)
        {
          v8 = 1;
        }

        else if (v335 < 0x4000)
        {
          v8 = 2;
        }

        else if (v335 >> 30)
        {
          if (v335 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 1;
        v19 = 4;
      }

      else if (v287 < 0x4000)
      {
        v359 = *(a2 + 40);
        if (v359 < 0x40)
        {
          v8 = 1;
        }

        else if (v359 < 0x4000)
        {
          v8 = 2;
        }

        else if (v359 >> 30)
        {
          if (v359 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 2;
        v19 = 4;
      }

      else if (v287 >> 30)
      {
        if (v287 >> 62)
        {
          goto LABEL_2794;
        }

        v288 = *(a2 + 40);
        if (v288 < 0x40)
        {
          v8 = 1;
        }

        else if (v288 < 0x4000)
        {
          v8 = 2;
        }

        else if (v288 >> 30)
        {
          if (v288 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 8;
        v19 = 4;
      }

      else
      {
        v367 = *(a2 + 40);
        if (v367 < 0x40)
        {
          v8 = 1;
        }

        else if (v367 < 0x4000)
        {
          v8 = 2;
        }

        else if (v367 >> 30)
        {
          if (v367 >> 62)
          {
            goto LABEL_2794;
          }

          v8 = 8;
        }

        else
        {
          v8 = 4;
        }

        v41 = 4;
        v19 = 4;
      }
    }

LABEL_2219:
    v20 = 8;
    goto LABEL_2786;
  }

LABEL_2794:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}