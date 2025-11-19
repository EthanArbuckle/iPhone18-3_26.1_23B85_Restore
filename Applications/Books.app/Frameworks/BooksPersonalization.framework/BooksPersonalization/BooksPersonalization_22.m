void *sub_177B34(char a1, uint64_t a2)
{
  v84 = sub_1B40F4();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v84);
  v83 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v82 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v64 - v12;
  if ((a1 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = *(a2 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    return v15;
  }

  v85 = _swiftEmptyArrayStorage;
  sub_37768(0, v14, 0);
  v16 = 0;
  v65 = 0;
  v15 = v85;
  v69 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v70 = v14;
  v71 = a2 + v69;
  v17 = (v4 + 16);
  v67 = (v4 + 8);
  v68 = (v4 + 16);
  v18 = *(v8 + 72);
  v66 = v18;
  while (1)
  {
    v19 = v82;
    sub_8478C(v71 + v18 * v16, v82);
    v20 = *v17;
    (*v17)(v83, v19, v84);
    v21 = *(v19 + v7[5]);
    v22 = *(v21 + 32);
    v23 = v22 & 0x3F;
    v79 = ((1 << v22) + 63) >> 6;
    v24 = 8 * v79;

    v80 = v16;
    v81 = v15;
    if (v23 <= 0xD)
    {
      goto LABEL_5;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_5:
      v78 = v20;
      __chkstk_darwin(v25);
      bzero(&v64 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0), v24);
      v26 = 0;
      v27 = 0;
      v28 = 1 << *(v21 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & *(v21 + 56);
      v31 = (v28 + 63) >> 6;
      while (v30)
      {
        v32 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v33 = v32 | (v27 << 6);
LABEL_16:
        v36 = *(*(v21 + 48) + 568 * v33 + 64);
        if (v36 != 2 && (v36 & 1) != 0)
        {
          *(&v64 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v33;
          if (__OFADD__(v26++, 1))
          {
            goto LABEL_33;
          }
        }
      }

      v34 = v27;
      while (1)
      {
        v27 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v27 >= v31)
        {
          v79 = sub_3D37C((&v64 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0)), v79, v26, v21);
          v20 = v78;
          goto LABEL_22;
        }

        v35 = *(v21 + 56 + 8 * v27);
        ++v34;
        if (v35)
        {
          v30 = (v35 - 1) & v35;
          v33 = __clz(__rbit64(v35)) | (v27 << 6);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    v59 = swift_slowAlloc();

    v60 = v65;
    v61 = sub_1798C8(v59, v79, v21, sub_178130);
    v65 = v60;
    if (v60)
    {
      break;
    }

    v62 = v61;
    swift_bridgeObjectRelease_n();

    v79 = v62;
LABEL_22:
    v38 = v13;
    v39 = v83;
    v40 = v13;
    v41 = v84;
    v20(v38, v83, v84);
    v42 = v82;
    v43 = (v82 + v7[6]);
    v44 = *v43;
    v45 = v43[1];
    v46 = (v82 + v7[7]);
    v47 = *v46;
    v48 = v46[1];
    v77 = v44;
    v78 = v47;
    LODWORD(v44) = *(v82 + v7[8]);
    v76 = *(v82 + v7[9]);
    v49 = *(v82 + v7[10]);
    v73 = *(v82 + v7[11]);
    v74 = v44;
    v50 = v7[14];
    v72 = *(v82 + v7[13]);
    v75 = *(v82 + v50);
    v51 = *v67;

    v52 = v41;
    v13 = v40;
    v51(v39, v52);
    sub_155848(v42);
    *&v40[v7[5]] = v79;
    v53 = &v40[v7[6]];
    v54 = v78;
    *v53 = v77;
    *(v53 + 1) = v45;
    v55 = &v40[v7[7]];
    *v55 = v54;
    *(v55 + 1) = v48;
    v40[v7[8]] = v74;
    v40[v7[9]] = v76;
    *&v40[v7[10]] = v49;
    v40[v7[11]] = v73;
    *&v40[v7[12]] = _swiftEmptySetSingleton;
    *&v40[v7[13]] = v72;
    *&v40[v7[14]] = v75;
    v15 = v81;
    v85 = v81;
    v57 = v81[2];
    v56 = v81[3];
    if (v57 >= v56 >> 1)
    {
      sub_37768(v56 > 1, v57 + 1, 1);
      v15 = v85;
    }

    v16 = v80 + 1;
    v15[2] = v57 + 1;
    v58 = v15 + v69 + v57 * v66;
    v18 = v66;
    sub_84A24(v13, v58);
    v17 = v68;
    if (v16 == v70)
    {
      return v15;
    }
  }

  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

uint64_t sub_178150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[145] = a4;
  v4[144] = a3;
  v4[143] = a2;
  v4[142] = a1;
  return _swift_task_switch(sub_17817C, 0, 0);
}

uint64_t sub_17817C()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  memcpy(v0 + 2, v1, 0x460uLL);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[146] = v7;
  *v7 = v0;
  v7[1] = sub_1782D0;
  v8 = v0[144];

  return (v10)(v8, v0 + 2, v3, v4);
}

uint64_t sub_1782D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1168);
  v6 = *v2;
  *(*v2 + 1176) = v1;

  if (v1)
  {
    v7 = sub_17A0A8;
  }

  else
  {
    *(v4 + 1184) = a1;
    v7 = sub_17A0A4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1783F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[145] = a4;
  v4[144] = a3;
  v4[143] = a2;
  v4[142] = a1;
  return _swift_task_switch(sub_178424, 0, 0);
}

uint64_t sub_178424()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v2[10];
  v4 = v2[11];
  sub_2698(v2 + 7, v3);
  memcpy(v0 + 2, v1, 0x460uLL);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[146] = v7;
  *v7 = v0;
  v7[1] = sub_178578;
  v8 = v0[144];

  return (v10)(v8, v0 + 2, v3, v4);
}

uint64_t sub_178578(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1168);
  v6 = *v2;
  *(*v2 + 1176) = v1;

  if (v1)
  {
    v7 = sub_2680;
  }

  else
  {
    *(v4 + 1184) = a1;
    v7 = sub_1786A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1786C4(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    v6 = *(result + 48);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
      v11 = *(*(v1 + 56) + v10);
      v12 = *(v11 + 16);
      v13 = *(v8 + 2);
      v14 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v15 = *(*(v1 + 56) + v10);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v14 > *(v8 + 3) >> 1)
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        result = sub_33128(result, v16, 1, v8);
        v8 = result;
      }

      v4 &= v4 - 1;
      if (*(v11 + 16))
      {
        if ((*(v8 + 3) >> 1) - *(v8 + 2) < v12)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v8 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_33;
          }

          *(v8 + 2) = v19;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v7;
      if (v4)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v20 = *(v8 + 2);
    if (v20)
    {
      sub_3741C(0, v20, 0);
      v21 = _swiftEmptyArrayStorage[2];
      v22 = 32;
      do
      {
        v23 = *&v8[v22];
        v24 = _swiftEmptyArrayStorage[3];
        if (v21 >= v24 >> 1)
        {
          sub_3741C((v24 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        _swiftEmptyArrayStorage[v21 + 4] = v23;
        v22 += 568;
        ++v21;
        --v20;
      }

      while (v20);
    }

    v25 = sub_40854(_swiftEmptyArrayStorage);

    return v25;
  }

  else
  {
LABEL_34:
    __break(1u);
  }

  return result;
}

uint64_t sub_178938(uint64_t a1, uint64_t a2, const void *a3)
{
  v22 = a1;
  v24 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v24);
  v8 = &v21 - v7;
  memcpy(v26, a3, 0x460uLL);
  v9 = *(a2 + 64);
  v25 = _swiftEmptyArrayStorage;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;

  for (i = 0; v12; result = sub_5F548(v8))
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v5 + 16))(v8, *(a2 + 56) + *(v5 + 72) * (v17 | (v16 << 6)), v24);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      v18 = v25;

      v19 = v23;

      sub_84BC0(v26, &v25);
      v20 = sub_179CD8(v22, a2, v18, v19, v26);
      sub_2B54(v26);

      swift_bridgeObjectRelease_n();

      return v20;
    }

    v12 = *(a2 + 64 + 8 * v16);
    ++i;
    if (v12)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_178B60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v40 = v7 + 16;
  v41 = v12;
  v39 = v11;
  (v11)(v10, a2);
  v13 = *(a3 + 16);
  if (!v13)
  {
    v14 = 0;
LABEL_19:
    (*(v7 + 8))(v10, v41);
    return sub_CC294(v14);
  }

  v14 = 0;
  v15 = (a3 + 32);
  while (1)
  {
    v16 = *v15;
    if (!*(*v15 + 16))
    {
      goto LABEL_4;
    }

    v17 = *v15;

    v18 = sub_3AC78(v10);
    if (v19)
    {
      break;
    }

LABEL_4:
    ++v15;
    if (!--v13)
    {
      goto LABEL_19;
    }
  }

  v20 = *(*(v16 + 56) + 8 * v18);

  sub_CC294(v14);
  v21 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *a1;
  v23 = v42;
  v24 = sub_3AC78(v10);
  v26 = v23[2];
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (!v28)
  {
    v30 = v25;
    if (v23[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v36 = v24;
      sub_185F44();
      v24 = v36;
      v23 = v42;
      *a1 = v42;
      if ((v30 & 1) == 0)
      {
LABEL_13:
        v23[(v24 >> 6) + 8] |= 1 << v24;
        v32 = v24;
        v39(v23[6] + *(v7 + 72) * v24, v10, v41);
        *(v23[7] + 8 * v32) = _swiftEmptyArrayStorage;
        v33 = v23[2];
        v28 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v28)
        {
          goto LABEL_21;
        }

        v24 = v32;
        v23[2] = v34;
      }
    }

    else
    {
      sub_17F10C(v29, isUniquelyReferenced_nonNull_native);
      v23 = v42;
      v24 = sub_3AC78(v10);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      *a1 = v23;
      if ((v30 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v35 = v23[7] + 8 * v24;
    sub_5FB40(v20);
    v14 = sub_BFFBC;
    goto LABEL_4;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_178E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v6 = v5;
  v12 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12);
  v17 = &v80 - v16;
  v18 = *a1;
  v19 = *(*a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (!v19)
  {
    goto LABEL_49;
  }

  v88 = v17;
  v89 = v15;
  v90 = result;
  v91 = a4;
  v96 = a2;
  v92 = a3;
  v21 = 0;
  v87 = v15 + 16;
  v86 = v15 + 8;
  v22 = v18 + 32;
  v94 = v19 - 1;
  v93 = xmmword_1BCA80;
  v98 = v18;
  v116 = v19;
  v95 = v18 + 32;
  do
  {
    v97 = v20;
    v23 = (v22 + 136 * v21);
    v24 = v21;
    while (1)
    {
      if (v24 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v107 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[4];
      v110 = v23[3];
      v111 = v27;
      v108 = v25;
      v109 = v26;
      v28 = v23[5];
      v29 = v23[6];
      v30 = v23[7];
      v115 = *(v23 + 128);
      v113 = v29;
      v114 = v30;
      v112 = v28;
      v31 = v110;
      if (!v110)
      {
        goto LABEL_52;
      }

      if (*(v110 + 16))
      {
        break;
      }

LABEL_6:
      ++v24;
      v23 = (v23 + 136);
      if (v19 == v24)
      {
        v20 = v97;
        goto LABEL_49;
      }
    }

    v99 = v107;
    v100 = BYTE8(v107);
    v101 = BYTE8(v108);
    v102 = v108;
    v103 = v109;
    sub_429F8(&v107, v106);
    sub_42BA4(&v107, v106);
    v32 = sub_3AB0C(0);
    if ((v33 & 1) == 0 || (v34 = *(*(v31 + 56) + 8 * v32), !*(v34 + 16)))
    {
      sub_43FF4(&v107);
      result = sub_5C740(&v107);
LABEL_5:
      v19 = v116;
      goto LABEL_6;
    }

    memcpy(v106, (v34 + 32), 0x231uLL);
    v35 = v106[18];
    if (v106[18] >> 1 == 0xFFFFFFFF)
    {
      sub_4299C(v106, v105);
      sub_43FF4(&v107);
      sub_5C740(&v107);
      result = sub_2601C(v106);
      v18 = v98;
      goto LABEL_5;
    }

    v36 = v106[12];
    if ((v106[18] >> 62) <= 1)
    {
      v81 = v106[13];
      v82 = v106[16];
      v83 = v106[14];
      *&v84 = v106[17];
      *&v85 = v106[15];
      goto LABEL_18;
    }

    if (v106[18] >> 62 == 2)
    {
      *&v85 = v106[15];
      v83 = v106[14];
      *&v84 = v106[17];
      v81 = v106[13];
      v82 = v106[16];
LABEL_18:
      sub_2B0C(&qword_229488, &qword_1BC520);
      v37 = swift_allocObject();
      *(v37 + 16) = v93;
      v38 = v81;
      *(v37 + 32) = v36;
      *(v37 + 40) = v38;
      v39 = v85;
      *(v37 + 48) = v83;
      *(v37 + 56) = v39;
      v40 = v84;
      *(v37 + 64) = v82;
      *(v37 + 72) = v40;
      *(v37 + 80) = v35 & 1;
    }

    else
    {
      v37 = v106[12];
    }

    sub_4299C(v106, v105);
    sub_169DD8(&v106[12], v105);
    v41 = COERCE_DOUBLE(Array<A>.affinity.getter(v37));
    v43 = v42;

    if (v43)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v41;
    }

    v45 = v96;
    if (*(v96 + 16))
    {
      v46 = sub_43124(v106[0]);
      if (v47)
      {
        v48 = *(v45 + 56);
        v49 = v88;
        v50 = v89;
        v51 = v90;
        (*(v89 + 16))(v88, v48 + *(v89 + 72) * v46, v90);
        sub_1B4394();
        sub_2601C(v106);
        (*(v50 + 8))(v49, v51);
        v52 = v105[0];
        v53 = *(v105[0] + 16);
        if (!v53)
        {
          goto LABEL_26;
        }

LABEL_29:
        v82 = a5;
        v83 = v6;
        v105[0] = _swiftEmptyArrayStorage;
        *&v84 = v52;
        *&v85 = v53;
        sub_37708(0, v53, 0);
        v57 = v85;
        result = v84;
        v58 = 0;
        v54 = v105[0];
        v59 = (v84 + 80);
        while (v58 < *(result + 16))
        {
          if (!*v59)
          {
            goto LABEL_53;
          }

          v60 = *(v59 - 1);
          v105[0] = v54;
          v62 = *(v54 + 2);
          v61 = *(v54 + 3);
          if (v62 >= v61 >> 1)
          {
            sub_37708((v61 > 1), v62 + 1, 1);
            v57 = v85;
            result = v84;
            v54 = v105[0];
          }

          ++v58;
          *(v54 + 2) = v62 + 1;
          v54[v62 + 4] = v60;
          v59 += 17;
          if (v57 == v58)
          {

            a5 = v82;
            v6 = v83;
            v55 = *(v54 + 2);
            if (!v55)
            {
              goto LABEL_27;
            }

            goto LABEL_36;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }
    }

    sub_2601C(v106);

    v53 = *(v52 + 16);
    if (v53)
    {
      goto LABEL_29;
    }

LABEL_26:

    v54 = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage[2];
    if (v55)
    {
LABEL_36:
      v63 = v54[4];
      v64 = v55 - 1;
      if (v64)
      {
        v65 = v54 + 5;
        do
        {
          v66 = *v65++;
          v67 = v66;
          if (v63 < v66)
          {
            v63 = v67;
          }

          --v64;
        }

        while (v64);
      }

      v56 = fmin(v63 * *(v91 + 432), 1.0);
    }

    else
    {
LABEL_27:

      v56 = 1.0;
    }

    v84 = v114;
    v85 = v113;
    LODWORD(v83) = v115;
    v68 = v112;
    v69 = v111;

    v80 = *(&v69 + 1);

    v81 = v68;

    v82 = *(&v68 + 1);

    sub_43688(v102, v101);
    sub_43FF4(&v107);
    sub_5C740(&v107);
    result = swift_isUniquelyReferenced_nonNull_native();
    v70 = a5;
    if ((result & 1) == 0)
    {
      result = sub_33358(0, *(v97 + 2) + 1, 1, v97);
      v97 = result;
    }

    v71 = v97;
    v73 = *(v97 + 2);
    v72 = *(v97 + 3);
    if (v73 >= v72 >> 1)
    {
      result = sub_33358((v72 > 1), v73 + 1, 1, v97);
      v71 = result;
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[136 * v73];
    *(v74 + 4) = v99;
    v21 = v24 + 1;
    v74[40] = v100;
    v75 = *(v105 + 3);
    *(v74 + 41) = v105[0];
    *(v74 + 11) = v75;
    *(v74 + 6) = v102;
    v74[56] = v101;
    v76 = *v104;
    *(v74 + 15) = *&v104[3];
    *(v74 + 57) = v76;
    *(v74 + 8) = v103;
    *(v74 + 9) = v56;
    *(v74 + 10) = v31;
    *(v74 + 11) = v44 * v56;
    v78 = v80;
    v77 = v81;
    *(v74 + 12) = v69;
    *(v74 + 13) = v78;
    *(v74 + 14) = v77;
    *(v74 + 15) = v82;
    v79 = v84;
    *(v74 + 8) = v85;
    *(v74 + 9) = v79;
    v74[160] = v83;
    v22 = v95;
    v20 = v71;
    a5 = v70;
    v18 = v98;
    v19 = v116;
  }

  while (v94 != v24);
LABEL_49:
  *a5 = v20;
  return result;
}

uint64_t sub_179514(uint64_t a1, const void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return sub_176C28(a1, a2);
}

uint64_t sub_1795C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7A038;

  return sub_178150(a1, v4, v5, v1 + 32);
}

uint64_t sub_179670()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[14];

  v4 = v0[56];

  v5 = v0[61];

  v6 = v0[62];

  v7 = v0[63];

  v8 = v0[68];

  v9 = v0[71];

  v10 = v0[72];

  v11 = v0[74];

  v12 = v0[75];

  v13 = v0[76];

  v14 = v0[77];

  v15 = v0[78];

  v16 = v0[83];

  v17 = v0[85];

  v18 = v0[91];

  v19 = v0[93];

  v20 = v0[94];

  if (v0[117])
  {

    v21 = v0[118];
  }

  if (v0[120])
  {

    v22 = v0[122];

    v23 = v0[124];
  }

  if (v0[128])
  {

    v24 = v0[130];
  }

  v25 = v0[134];

  if (v0[138])
  {

    v26 = v0[140];

    v27 = v0[142];
  }

  return _swift_deallocObject(v0, 1152, 7);
}

uint64_t sub_1797A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226C;

  return sub_1783F8(a1, v4, v5, v1 + 32);
}

uint64_t sub_179858(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22E178, &unk_1CF3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1798C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_179958(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_179958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v26 = a4;
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 568 * v15);
    memcpy(__dst, v16, 0x231uLL);
    memcpy(__src, v16, 0x231uLL);
    sub_4299C(__dst, v23);
    v17 = v26(__src);
    if (v4)
    {
      memcpy(v23, __src, 0x231uLL);
      return sub_2601C(v23);
    }

    v18 = v17;
    memcpy(v23, __src, 0x231uLL);
    result = sub_2601C(v23);
    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_3D37C(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_179B18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v23 = result;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 48) + 40 * v16;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    v24 = *v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    result = a4(&v24);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_3D908(v23, a2, v28, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_179C84(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v3 + 112);
  v10[6] = *(v3 + 96);
  v10[7] = v5;
  v11 = *(v3 + 128);
  v6 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v6;
  v7 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v7;
  v8 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v8;
  return sub_159A24(v4, v2, v10);
}

uint64_t sub_179CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v37 - v12;
  sub_2B0C(&qword_22E180, &unk_1D1530);
  result = sub_1B5294();
  v14 = 0;
  v43 = result;
  v44 = a1;
  v15 = *(a1 + 64);
  v38 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v49 = v7;
  v39 = result + 64;
  v40 = v7 + 32;
  v41 = v7 + 16;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v50 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v14 << 6);
      v24 = v44;
      v25 = v49;
      v26 = *(v49 + 72) * v23;
      v27 = v42;
      (*(v49 + 16))(v42, *(v44 + 48) + v26, v6);
      v28 = *(v24 + 56);
      v29 = v6;
      v53 = *(v28 + 8 * v23);
      v30 = *(v25 + 32);
      v30(v11, v27, v6);

      v31 = v51;
      sub_178E2C(&v53, v45, v46, v48, &v52);
      v51 = v31;
      if (v31)
      {
        break;
      }

      *(v39 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v32 = v43;
      result = (v30)(*(v43 + 48) + v26, v11, v29);
      *(*(v32 + 56) + 8 * v23) = v52;
      v33 = *(v32 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_17;
      }

      result = v32;
      v6 = v29;
      *(result + 16) = v35;
      v18 = v50;
      if (!v50)
      {
        goto LABEL_5;
      }
    }

    v36 = v43;

    (*(v49 + 8))(v11, v6);

    return v36;
  }

  else
  {
LABEL_5:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        return result;
      }

      v22 = *(v38 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v50 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_179FD4()
{
  result = qword_229718;
  if (!qword_229718)
  {
    sub_1CC1C(&qword_229710, &unk_1D32C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229718);
  }

  return result;
}

uint64_t sub_17A038(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_17A0D0()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t dispatch thunk of BooksByAuthorsServiceType.fetchBooks(by:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_17A308(void *a1)
{
  v1 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A770, &qword_1C0558);
  result = sub_1B4264();
  v3 = v20;
  if (v20)
  {
    v4 = sub_40474(v19, v20);
    v5 = *(*(v3 - 8) + 64);
    __chkstk_darwin(v4);
    v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for BooksBackendDiversifier();
    v18[3] = v10;
    v18[4] = &off_218F58;
    v18[0] = v9;
    type metadata accessor for DefaultBookClusteringService();
    v11 = swift_allocObject();
    v12 = sub_40474(v18, v10);
    v13 = *(*(v10 - 8) + 64);
    __chkstk_darwin(v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v11[5] = v10;
    v11[6] = &off_218F58;
    v11[2] = v17;
    sub_2BF8(v18);
    sub_2BF8(v19);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17A510(void *a1)
{
  v1 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v5)
  {
    type metadata accessor for AllCollectionTypesFillingClusteringService();
    v3 = swift_allocObject();
    sub_264B8(&v4, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17A5A8()
{
  type metadata accessor for SeedBasedRecommendationServiceResolver();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyDictionarySingleton;
  return result;
}

void *sub_17A5DC(void *a1)
{
  v1 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  result = sub_1B4254();
  if (result)
  {
    v3 = result;
    type metadata accessor for DelegatingCollectionService();
    result = swift_allocObject();
    result[4] = _swiftEmptyDictionarySingleton;
    result[5] = _swiftEmptyDictionarySingleton;
    result[6] = _swiftEmptyDictionarySingleton;
    result[7] = _swiftEmptyDictionarySingleton;
    result[8] = _swiftEmptyDictionarySingleton;
    result[2] = v3;
    result[3] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17A68C(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22F528, &qword_1D1458);
  result = sub_1B4264();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FF0, qword_1BB3D0);
  result = sub_1B4264();
  if (v8)
  {
    type metadata accessor for SeedBasedMoreFromYourAuthorsService();
    v6 = swift_allocObject();
    sub_264B8(&v11, v6 + 16);
    sub_264B8(&v9, v6 + 56);
    sub_264B8(&v7, v6 + 96);
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_17A7F0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[4];
  sub_2698(a1, a1[3]);
  v8 = a2(0);
  result = sub_1B4254();
  if (result)
  {
    a4[3] = v8;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17A874(void *a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1B4794();
  v4 = [v2 BOOLForKey:v3];

  v5 = a1[4];
  sub_2698(a1, a1[3]);
  if (v4)
  {
    v6 = type metadata accessor for AllCollectionTypesFillingClusteringService();
    result = sub_1B4254();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v91[3] = v6;
    v91[4] = &off_216F18;
    v91[0] = result;
LABEL_6:
    sub_404C4(v91, &v89);
    v8 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22A308, &unk_1C65B0);
    result = sub_1B4264();
    if (v88)
    {
      v9 = a1[4];
      sub_2698(a1, a1[3]);
      type metadata accessor for DelegatingMediaTypesRecommendationService();
      result = sub_1B4254();
      if (result)
      {
        v10 = result;
        v11 = a1[4];
        sub_2698(a1, a1[3]);
        sub_2B0C(&qword_22A100, &qword_1D1440);
        result = sub_1B4264();
        if (v86)
        {
          v12 = a1[4];
          sub_2698(a1, a1[3]);
          sub_2B0C(&qword_22F4B0, &qword_1D13C0);
          result = sub_1B4264();
          if (v84)
          {
            v13 = a1[4];
            sub_2698(a1, a1[3]);
            sub_2B0C(&qword_22A7F0, &unk_1C05F0);
            result = sub_1B4264();
            if (v82)
            {
              v14 = a1[4];
              sub_2698(a1, a1[3]);
              sub_2B0C(&qword_228FF0, qword_1BB3D0);
              result = sub_1B4264();
              if (v80)
              {
                v15 = a1[4];
                sub_2698(a1, a1[3]);
                sub_2B0C(&qword_22C080, &qword_1C65E0);
                result = sub_1B4264();
                if (v78)
                {
                  v66 = v10;
                  v16 = a1[4];
                  sub_2698(a1, a1[3]);
                  sub_2B0C(&qword_22A760, &qword_1CFD50);
                  result = sub_1B4264();
                  if (v76)
                  {
                    v17 = v84;
                    v18 = sub_40474(v83, v84);
                    v65[6] = v65;
                    v19 = *(*(v17 - 8) + 64);
                    __chkstk_darwin(v18);
                    v21 = (v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v22 + 16))(v21);
                    v23 = v82;
                    v24 = sub_40474(v81, v82);
                    v65[5] = v65;
                    v25 = *(*(v23 - 8) + 64);
                    __chkstk_darwin(v24);
                    v27 = (v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v28 + 16))(v27);
                    v29 = v78;
                    v30 = sub_40474(v77, v78);
                    v65[4] = v65;
                    v31 = *(*(v29 - 8) + 64);
                    __chkstk_darwin(v30);
                    v33 = (v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v34 + 16))(v33);
                    v35 = *v21;
                    v36 = *v27;
                    v37 = *v33;
                    v38 = type metadata accessor for GenreMetadataServiceDepthMapGenerator();
                    v74[3] = v38;
                    v74[4] = &off_216FF0;
                    v74[0] = v35;
                    v39 = type metadata accessor for SeedBasedRecommendationServiceResolver();
                    v72 = v39;
                    v73 = &off_220D90;
                    v71[0] = v36;
                    v40 = type metadata accessor for DelegatingCollectionService();
                    v69 = v40;
                    v70 = &off_2207B8;
                    v68[0] = v37;
                    v41 = type metadata accessor for InternalCollectionRecommendationService(0);
                    v42 = *(v41 + 48);
                    v43 = *(v41 + 52);
                    v44 = swift_allocObject();
                    v45 = sub_40474(v74, v38);
                    v65[3] = v65;
                    v46 = *(*(v38 - 8) + 64);
                    __chkstk_darwin(v45);
                    v48 = (v65 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v49 + 16))(v48);
                    v50 = v72;
                    v51 = sub_40474(v71, v72);
                    v65[2] = v65;
                    v52 = *(*(v50 - 8) + 64);
                    __chkstk_darwin(v51);
                    v54 = (v65 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v55 + 16))(v54);
                    v56 = v69;
                    v57 = sub_40474(v68, v69);
                    v65[1] = v65;
                    v58 = *(*(v56 - 8) + 64);
                    __chkstk_darwin(v57);
                    v60 = (v65 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v61 + 16))(v60);
                    v62 = *v48;
                    v63 = *v54;
                    v64 = *v60;
                    v44[21] = v38;
                    v44[22] = &off_216FF0;
                    v44[18] = v62;
                    v44[26] = v39;
                    v44[27] = &off_220D90;
                    v44[23] = v63;
                    v44[36] = v40;
                    v44[37] = &off_2207B8;
                    v44[33] = v64;
                    v67 = v41;
                    sub_2B0C(&qword_22F520, &unk_1D1448);
                    sub_1B4834();
                    sub_1B4634();
                    sub_264B8(&v89, (v44 + 7));
                    sub_264B8(&v87, (v44 + 2));
                    v44[12] = v66;
                    sub_264B8(&v85, (v44 + 13));
                    sub_264B8(&v79, (v44 + 28));
                    sub_264B8(&v75, (v44 + 38));
                    sub_2BF8(v68);
                    sub_2BF8(v71);
                    sub_2BF8(v74);
                    sub_2BF8(v77);
                    sub_2BF8(v81);
                    sub_2BF8(v83);
                    sub_2BF8(v91);
                    return v44;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_2B0C(&qword_22F4A0, &qword_1D13A8);
  result = sub_1B4264();
  if (v90)
  {
    sub_264B8(&v89, v91);
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_17B180@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22F510, &qword_1D1428);
  result = sub_1B4264();
  if (v10)
  {
    v5 = type metadata accessor for GenreMetadataServiceDepthMapGenerator();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v8 = swift_allocObject();
    sub_2B0C(&qword_22F518, &unk_1D1430);
    sub_1B4834();
    sub_1B4634();
    result = sub_264B8(&v9, v8 + 16);
    a2[3] = v5;
    a2[4] = &off_216FF0;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17B288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6[2] = a1;
  v3 = sub_2A16C(sub_189474, v6, &off_213EE0);
  v4 = type metadata accessor for FallingBackSuggestionsService();
  result = swift_allocObject();
  *(result + 16) = v3;
  a2[3] = v4;
  a2[4] = &off_220858;
  *a2 = result;
  return result;
}

uint64_t sub_17B314@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[4];
  sub_2698(a2, a2[3]);
  sub_2B0C(&qword_2291F8, &unk_1CFD30);
  sub_1B4244();

  if (v8)
  {
    return sub_264B8(&v7, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_17B464(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22A778, &unk_1C0560);
  v4 = 0;
  for (i = 0; ; i = 1)
  {
    v8 = v4;
    v9 = *(&off_213F08 + i + 32);
    v10 = a2[4];
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v27)
    {
      break;
    }

    sub_264B8(&v26, v28);
    swift_beginAccess();
    sub_404C4(v28, &v26);
    v11 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 16);
    v14 = sub_3B0C8(v9);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_1838B8(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_3B0C8(v9);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v22 = v13;
      if (v20)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v14;
    sub_187F20();
    v14 = v25;
    v22 = v13;
    if (v20)
    {
LABEL_2:
      v6 = (v22[7] + 40 * v14);
      sub_2BF8(v6);
      sub_264B8(&v26, v6);
      goto LABEL_3;
    }

LABEL_11:
    v22[(v14 >> 6) + 8] |= 1 << v14;
    *(v22[6] + v14) = v9;
    sub_264B8(&v26, v22[7] + 40 * v14);
    v23 = v22[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v22[2] = v24;
LABEL_3:
    *(a1 + 16) = v22;
    swift_endAccess();
    result = sub_2BF8(v28);
    v4 = 1;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

unint64_t sub_17B6B4(void *a1, void *a2)
{
  v4 = 109;
  sub_2B0C(&qword_22F4B8, &qword_1D13C8);
  v5 = 1;
  v6 = a2[3];
  sub_2698(a2, v6);
  v103 = "preferSaleTypeToGenreOrder";
  v7 = "";
  sub_1B4244();

  if (!v106)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_264B8(&v105, v107);
  swift_beginAccess();
  sub_404C4(v107, &v105);
  v9 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = a1[3];
  v104 = v11;
  a1[3] = 0x8000000000000000;
  v12 = sub_3B20C(1u);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v6) = v13;
  if (v11[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

LABEL_10:
    v21 = v12;
    sub_1861EC(&qword_22F4D8, &qword_1D13E8, sub_43178);
    v12 = v21;
    v19 = v11;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_18355C(v17, isUniquelyReferenced_nonNull_native, &qword_22F4D8, &qword_1D13E8, sub_43178);
  v12 = sub_3B20C(1u);
  if ((v6 & 1) != (v18 & 1))
  {
    goto LABEL_43;
  }

LABEL_7:
  v19 = v11;
  if (v6)
  {
LABEL_8:
    v20 = (v19[7] + 40 * v12);
    sub_2BF8(v20);
    sub_264B8(&v105, v20);
    goto LABEL_13;
  }

LABEL_11:
  v19[(v12 >> 6) + 8] |= 1 << v12;
  *(v19[6] + v12) = 1;
  v22 = sub_264B8(&v105, v19[7] + 40 * v12);
  v23 = v19[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19[2] = v24;
LABEL_13:
  a1[3] = v19;
  swift_endAccess();
  sub_2BF8(v107);
  sub_2B0C(&qword_22F4C0, &qword_1D13D0);
  v5 = 1;
  v6 = a2[3];
  sub_2698(a2, v6);
  sub_1B4244();

  if (!v106)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_264B8(&v105, v107);
  swift_beginAccess();
  sub_404C4(v107, &v105);
  v25 = a1[4];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = a1[4];
  v104 = v27;
  a1[4] = 0x8000000000000000;
  v22 = sub_3B20C(1u);
  v29 = v27[2];
  v30 = (v28 & 1) == 0;
  v16 = __OFADD__(v29, v30);
  v31 = v29 + v30;
  if (v16)
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v6) = v28;
  if (v27[3] >= v31)
  {
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_23:
    v35 = v22;
    sub_1861EC(&qword_22F4E0, &qword_1D13F0, sub_43178);
    v22 = v35;
    v33 = v104;
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  sub_18355C(v31, v26, &qword_22F4E0, &qword_1D13F0, sub_43178);
  v22 = sub_3B20C(1u);
  if ((v6 & 1) != (v32 & 1))
  {
    goto LABEL_43;
  }

LABEL_19:
  v33 = v27;
  if (v6)
  {
LABEL_20:
    v34 = (v33[7] + 40 * v22);
    sub_2BF8(v34);
    sub_264B8(&v105, v34);
    goto LABEL_26;
  }

LABEL_24:
  v33[(v22 >> 6) + 8] |= 1 << v22;
  *(v33[6] + v22) = 1;
  v36 = sub_264B8(&v105, v33[7] + 40 * v22);
  v37 = v33[2];
  v16 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33[2] = v38;
LABEL_26:
  a1[4] = v33;
  swift_endAccess();
  sub_2BF8(v107);
  sub_2B0C(&qword_22F4C8, &qword_1D13D8);
  v5 = 1;
  v6 = a2[3];
  sub_2698(a2, v6);
  sub_1B4244();

  if (!v106)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  sub_264B8(&v105, v107);
  swift_beginAccess();
  sub_404C4(v107, &v105);
  v39 = a1[5];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v41 = a1[5];
  v104 = v41;
  a1[5] = 0x8000000000000000;
  v36 = sub_3B20C(1u);
  v43 = v41[2];
  v44 = (v42 & 1) == 0;
  v16 = __OFADD__(v43, v44);
  v45 = v43 + v44;
  if (v16)
  {
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v6) = v42;
  if (v41[3] >= v45)
  {
    if (v40)
    {
      goto LABEL_32;
    }

LABEL_36:
    v49 = v36;
    sub_1861EC(&qword_22F4E8, &qword_1D13F8, sub_43178);
    v36 = v49;
    v47 = v104;
    if (v6)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  sub_18355C(v45, v40, &qword_22F4E8, &qword_1D13F8, sub_43178);
  v36 = sub_3B20C(1u);
  if ((v6 & 1) != (v46 & 1))
  {
    goto LABEL_43;
  }

LABEL_32:
  v47 = v41;
  if (v6)
  {
LABEL_33:
    v48 = (v47[7] + 40 * v36);
    sub_2BF8(v48);
    sub_264B8(&v105, v48);
    goto LABEL_39;
  }

LABEL_37:
  v47[(v36 >> 6) + 8] |= 1 << v36;
  *(v47[6] + v36) = 1;
  v50 = sub_264B8(&v105, v47[7] + 40 * v36);
  v51 = v47[2];
  v16 = __OFADD__(v51, 1);
  v52 = v51 + 1;
  if (v16)
  {
    goto LABEL_48;
  }

  v47[2] = v52;
LABEL_39:
  a1[5] = v47;
  swift_endAccess();
  sub_2BF8(v107);
  sub_2B0C(&qword_22F4D0, &qword_1D13E0);
  v5 = 1;
  v53 = a2[4];
  sub_2698(a2, a2[3]);
  sub_1B4244();

  if (v106)
  {
    sub_264B8(&v105, v107);
    swift_beginAccess();
    sub_404C4(v107, &v105);
    v54 = a1[6];
    LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
    v55 = a1[6];
    v104 = v55;
    a1[6] = 0x8000000000000000;
    v50 = sub_3B20C(1u);
    v57 = v55[2];
    v58 = (v56 & 1) == 0;
    v16 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (!v16)
    {
      v4 = v56;
      if (v55[3] >= v59)
      {
        goto LABEL_44;
      }

      sub_18355C(v59, v6, &qword_22F4F0, &qword_1D1400, sub_43178);
      v50 = sub_3B20C(1u);
      if ((v4 & 1) == (v60 & 1))
      {
        goto LABEL_45;
      }

LABEL_43:
      while (2)
      {
        v50 = sub_1B5784();
        __break(1u);
LABEL_44:
        if (v6)
        {
LABEL_45:
          v61 = v104;
          if (v4)
          {
LABEL_46:
            v62 = (v61[7] + 40 * v50);
            sub_2BF8(v62);
            sub_264B8(&v105, v62);
LABEL_52:
            a1[6] = v61;
            swift_endAccess();
            sub_2BF8(v107);
            v4 = sub_2B0C(&qword_22F4A8, &unk_1D13B0);
            v66 = 0;
            v67 = 0;
            v103 |= 0x8000000000000000;
            v68 = v7 | 0x8000000000000000;
            while (1)
            {
              LOBYTE(v6) = v66;
              v70 = *(&off_213FD0 + v67 + 32);
              v71 = a2[4];
              sub_2698(a2, a2[3]);
              v72 = v103;
              if (v70 != 3)
              {
                v72 = 0xE400000000000000;
              }

              if (v70 == 2)
              {
                v72 = 0xEB0000000079726FLL;
              }

              v73 = 0xE800000000000000;
              if (!v70)
              {
                v73 = v68;
              }

              if (v70 <= 1)
              {
                v7 = v73;
              }

              else
              {
                v7 = v72;
              }

              sub_1B4244();

              if (!v106)
              {
                goto LABEL_104;
              }

              sub_264B8(&v105, v107);
              swift_beginAccess();
              sub_404C4(v107, &v105);
              v74 = a1[7];
              v5 = swift_isUniquelyReferenced_nonNull_native();
              v75 = a1[7];
              v104 = v75;
              a1[7] = 0x8000000000000000;
              result = sub_3B20C(v70);
              v77 = v75[2];
              v78 = (v76 & 1) == 0;
              v16 = __OFADD__(v77, v78);
              v79 = v77 + v78;
              if (v16)
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

              v80 = v76;
              if (v75[3] < v79)
              {
                break;
              }

              if (v5)
              {
                goto LABEL_70;
              }

              v85 = result;
              sub_1861EC(&qword_22F4F8, &qword_1D1408, sub_43178);
              result = v85;
              v82 = v75;
              if ((v80 & 1) == 0)
              {
LABEL_71:
                v82[(result >> 6) + 8] |= 1 << result;
                *(v82[6] + result) = v70;
                result = sub_264B8(&v105, v82[7] + 40 * result);
                v83 = v82[2];
                v16 = __OFADD__(v83, 1);
                v84 = v83 + 1;
                if (v16)
                {
                  goto LABEL_101;
                }

                v82[2] = v84;
                goto LABEL_54;
              }

LABEL_53:
              v69 = (v82[7] + 40 * result);
              sub_2BF8(v69);
              sub_264B8(&v105, v69);
LABEL_54:
              a1[7] = v82;
              swift_endAccess();
              sub_2BF8(v107);
              v66 = 1;
              v67 = 1;
              if (v6)
              {
                v4 = sub_2B0C(&qword_2291F8, &unk_1CFD30);
                v6 = 0;
                while (1)
                {
                  v87 = *(&off_213FF8 + v6++ + 32);
                  v88 = a2[4];
                  sub_2698(a2, a2[3]);
                  v89 = v103;
                  if (v87 != 3)
                  {
                    v89 = 0xE400000000000000;
                  }

                  if (v87 == 2)
                  {
                    v89 = 0xEB0000000079726FLL;
                  }

                  v90 = 0xE800000000000000;
                  if (!v87)
                  {
                    v90 = v68;
                  }

                  if (v87 <= 1)
                  {
                    v7 = v90;
                  }

                  else
                  {
                    v7 = v89;
                  }

                  sub_1B4244();

                  if (!v106)
                  {
                    goto LABEL_105;
                  }

                  sub_264B8(&v105, v107);
                  swift_beginAccess();
                  sub_404C4(v107, &v105);
                  v91 = a1[8];
                  v5 = swift_isUniquelyReferenced_nonNull_native();
                  v92 = a1[8];
                  v104 = v92;
                  a1[8] = 0x8000000000000000;
                  result = sub_3B20C(v87);
                  v94 = v92[2];
                  v95 = (v93 & 1) == 0;
                  v16 = __OFADD__(v94, v95);
                  v96 = v94 + v95;
                  if (v16)
                  {
                    goto LABEL_100;
                  }

                  v97 = v93;
                  if (v92[3] < v96)
                  {
                    break;
                  }

                  if (v5)
                  {
                    goto LABEL_93;
                  }

                  v102 = result;
                  sub_1861EC(&qword_22F500, &unk_1D1410, sub_43178);
                  result = v102;
                  v99 = v92;
                  if (v97)
                  {
LABEL_76:
                    v86 = (v99[7] + 40 * result);
                    sub_2BF8(v86);
                    sub_264B8(&v105, v86);
                    goto LABEL_77;
                  }

LABEL_94:
                  v99[(result >> 6) + 8] |= 1 << result;
                  *(v99[6] + result) = v87;
                  result = sub_264B8(&v105, v99[7] + 40 * result);
                  v100 = v99[2];
                  v16 = __OFADD__(v100, 1);
                  v101 = v100 + 1;
                  if (v16)
                  {
                    goto LABEL_102;
                  }

                  v99[2] = v101;
LABEL_77:
                  a1[8] = v99;
                  swift_endAccess();
                  result = sub_2BF8(v107);
                  if (v6 == 4)
                  {
                    return result;
                  }
                }

                sub_18355C(v96, v5, &qword_22F500, &unk_1D1410, sub_43178);
                result = sub_3B20C(v87);
                if ((v97 & 1) != (v98 & 1))
                {
                  goto LABEL_43;
                }

LABEL_93:
                v99 = v92;
                if (v97)
                {
                  goto LABEL_76;
                }

                goto LABEL_94;
              }
            }

            sub_18355C(v79, v5, &qword_22F4F8, &qword_1D1408, sub_43178);
            result = sub_3B20C(v70);
            if ((v80 & 1) != (v81 & 1))
            {
              continue;
            }

LABEL_70:
            v82 = v75;
            if ((v80 & 1) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_53;
          }

          goto LABEL_50;
        }

        break;
      }

LABEL_49:
      v63 = v50;
      sub_1861EC(&qword_22F4F0, &qword_1D1400, sub_43178);
      v50 = v63;
      v61 = v104;
      if (v4)
      {
        goto LABEL_46;
      }

LABEL_50:
      v61[(v50 >> 6) + 8] |= 1 << v50;
      *(v61[6] + v50) = v5;
      result = sub_264B8(&v105, v61[7] + 40 * v50);
      v64 = v61[2];
      v16 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (!v16)
      {
        v61[2] = v65;
        goto LABEL_52;
      }

LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_109:
  __break(1u);
  return result;
}

uint64_t sub_17C6A0(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_1B41D4();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4204();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_2B0C(&qword_22F5D8, &qword_1D15B8);
  v52 = a2;
  result = sub_1B52A4();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_1895D4(&qword_2294B8, &type metadata accessor for TimeZone);
      result = sub_1B4744();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_17CB48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_2297B0, &unk_1D14D0);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
      memcpy(__src, (*(v5 + 56) + 384 * v20), sizeof(__src));
      v22 = *(v8 + 40);
      result = sub_1B57E4();
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

LABEL_34:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = memcpy((*(v8 + 56) + 384 * v16), __src, 0x179uLL);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
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
  }

  *v3 = v8;
  return result;
}

uint64_t sub_17CDCC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoreBook(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_2B0C(&qword_22F560, &qword_1D14C8);
  v41 = a2;
  result = sub_1B52A4();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_18956C(v28, v9, type metadata accessor for StoreBook);
      }

      else
      {
        sub_189504(v28, v9, type metadata accessor for StoreBook);
      }

      v29 = *(v13 + 40);
      result = sub_1B57E4();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_18956C(v9, *(v13 + 56) + v27 * v21, type metadata accessor for StoreBook);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_17D114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22E250, &qword_1D14F0);
  v40 = a2;
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      if (v40)
      {
        v25 = *(v5 + 56) + 568 * v23;
        v50 = *v25;
        v41 = *(v25 + 16);
        v44 = *(v25 + 32);
        v26 = *(v25 + 40);
        v45 = *(v25 + 64);
        v46 = *(v25 + 48);
        v42 = *(v25 + 8);
        v43 = *(v25 + 80);
        v47 = *(v25 + 88);
        v27 = *(v25 + 144);
        v55 = *(v25 + 128);
        v56 = v27;
        v57 = *(v25 + 160);
        v28 = *(v25 + 96);
        v54 = *(v25 + 112);
        v53 = v28;
        memcpy(__src, (v25 + 168), sizeof(__src));
        v48 = *(v25 + 552);
        v49 = *(v25 + 560);
        v5 = v39;
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 568 * v23), sizeof(__dst));
        v49 = __dst[560];
        v50 = *__dst;
        v47 = *&__dst[88];
        v48 = *&__dst[552];
        v45 = *&__dst[64];
        v46 = *&__dst[48];
        v44 = *&__dst[32];
        v26 = __dst[40];
        v41 = *&__dst[16];
        v42 = __dst[8];
        v43 = __dst[80];
        sub_4299C(__dst, v51);
        v55 = *&__dst[128];
        v56 = *&__dst[144];
        v57 = *&__dst[160];
        v54 = *&__dst[112];
        v53 = *&__dst[96];
        memcpy(__src, &__dst[168], sizeof(__src));
      }

      v29 = *(v8 + 40);
      result = sub_1B57E4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      __dst[0] = v26;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v24;
      v17 = *(v8 + 56) + 568 * v16;
      *v17 = v50;
      *(v17 + 8) = v42;
      *(v17 + 16) = v41;
      *(v17 + 32) = v44;
      *(v17 + 40) = v26;
      *(v17 + 48) = v46;
      *(v17 + 64) = v45;
      *(v17 + 80) = v43;
      *(v17 + 88) = v47;
      v18 = v56;
      *(v17 + 128) = v55;
      *(v17 + 144) = v18;
      *(v17 + 160) = v57;
      v19 = v54;
      *(v17 + 96) = v53;
      *(v17 + 112) = v19;
      result = memcpy((v17 + 168), __src, 0x179uLL);
      *(v17 + 552) = v48;
      *(v17 + 560) = v49;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_17D558(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22D6B0, &unk_1CCC60);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_17D85C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_2290B8, &qword_1BB480);
  v41 = a2;
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_43050(v28, &v42, &qword_229010, &unk_1D15F0);
      }

      v31 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_17DB74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_229700, &qword_1BCB58);
  v45 = a2;
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      v25 = *(v5 + 56) + 136 * v23;
      if (v45)
      {
        v26 = *(v25 + 16);
        v60 = *v25;
        v61 = v26;
        v27 = *(v25 + 48);
        v62 = *(v25 + 32);
        v63 = v27;
        v46 = *(v25 + 64);
        v47 = *(v25 + 80);
        v48 = *(v25 + 112);
        v49 = *(v25 + 96);
        v28 = *(v25 + 128);
      }

      else
      {
        v51 = *v25;
        v29 = *(v25 + 64);
        v31 = *(v25 + 16);
        v30 = *(v25 + 32);
        v54 = *(v25 + 48);
        v55 = v29;
        v52 = v31;
        v53 = v30;
        v33 = *(v25 + 96);
        v32 = *(v25 + 112);
        v34 = *(v25 + 80);
        v59 = *(v25 + 128);
        v57 = v33;
        v58 = v32;
        v56 = v34;
        v48 = v32;
        v49 = v33;
        v28 = v59;
        v46 = v55;
        v47 = v34;
        sub_429F8(&v51, v50);
        v60 = v51;
        v61 = v52;
        v62 = v53;
        v63 = v54;
      }

      v35 = *(v8 + 40);
      result = sub_1B57E4();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v24;
      v17 = *(v8 + 56) + 136 * v16;
      v18 = v61;
      *v17 = v60;
      *(v17 + 16) = v18;
      v19 = v63;
      *(v17 + 32) = v62;
      *(v17 + 48) = v19;
      *(v17 + 64) = v46;
      *(v17 + 80) = v47;
      *(v17 + 96) = v49;
      *(v17 + 112) = v48;
      *(v17 + 128) = v28;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_17DED0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v49 = sub_2B0C(a3, a4);
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v49);
  v48 = &v43 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  sub_2B0C(a5, a6);
  v46 = a2;
  result = sub_1B52A4();
  v18 = result;
  if (*(v15 + 16))
  {
    v43 = v9;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v12 + 16);
    v45 = v12;
    v47 = (v12 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(*(v15 + 48) + v30);
      v32 = *(v12 + 72);
      v33 = *(v15 + 56) + v32 * v30;
      if (v46)
      {
        (*v47)(v48, v33, v49);
      }

      else
      {
        (*v44)(v48, v33, v49);
      }

      v34 = *(v18 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v35 = -1 << *(v18 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v25 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v25 + 8 * v37);
          if (v41 != -1)
          {
            v26 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v36) & ~*(v25 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v18 + 48) + v26) = v31;
      result = (*v47)(*(v18 + 56) + v32 * v26, v48, v49);
      ++*(v18 + 16);
      v12 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v15 + 32);
    v9 = v43;
    if (v42 >= 64)
    {
      bzero((v15 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v42;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_17E28C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2B0C(a3, a4);
  v35 = a2;
  result = sub_1B52A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_17E550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F558, &qword_1D14C0);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (1)
    {
      if (v13)
      {
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = v18 | (v9 << 6);
        if (a2)
        {
LABEL_12:
          v20 = *(*(v5 + 48) + 8 * v19);
          v21 = (*(v5 + 56) + (v19 << 6));
          v42 = *v21;
          v43 = v21[1];
          v44 = v21[2];
          v45 = v21[3];
          goto LABEL_19;
        }
      }

      else
      {
        v22 = v9;
        do
        {
          v9 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v9 >= v14)
          {
            if (a2)
            {
              v36 = 1 << *(v5 + 32);
              if (v36 >= 64)
              {
                bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v10 = -1 << v36;
              }

              *(v5 + 16) = 0;
            }

            v3 = v37;
            goto LABEL_35;
          }

          v23 = v10[v9];
          ++v22;
        }

        while (!v23);
        v13 = (v23 - 1) & v23;
        v19 = __clz(__rbit64(v23)) | (v9 << 6);
        if (a2)
        {
          goto LABEL_12;
        }
      }

      v20 = *(*(v5 + 48) + 8 * v19);
      v24 = (*(v5 + 56) + (v19 << 6));
      v26 = v24[2];
      v25 = v24[3];
      v27 = v24[1];
      v38 = *v24;
      v39 = v27;
      v40 = v26;
      v41 = v25;
      sub_42BA4(&v38, &v42);
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
LABEL_19:
      v28 = *(v8 + 40);
      result = sub_1B57E4();
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
      *(*(v8 + 48) + 8 * v16) = v20;
      v17 = (*(v8 + 56) + (v16 << 6));
      *v17 = v42;
      v17[1] = v43;
      v17[2] = v44;
      v17[3] = v45;
      ++*(v8 + 16);
    }
  }

LABEL_35:
  *v3 = v8;
  return result;
}

Swift::Int sub_17E830(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  __chkstk_darwin(v6 - 8);
  v75 = &v59 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2B0C(&qword_229730, &qword_1BCB88);
  v66 = a2;
  v79 = sub_1B52A4();
  if (*(v9 + 16))
  {
    v60 = v3;
    v11 = 0;
    v65 = v9;
    result = v9 + 64;
    v13 = 1 << *(v9 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v9 + 64);
    v61 = (v13 + 63) >> 6;
    v62 = v9 + 64;
    v63 = v79 + 64;
    while (v15)
    {
      v25 = __clz(__rbit64(v15));
      v26 = (v15 - 1) & v15;
LABEL_17:
      v29 = v25 | (v11 << 6);
      v69 = v26;
      if (v66)
      {
        v30 = *(v65 + 48) + 568 * v29;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        v34 = *(v30 + 32);
        v35 = *(v30 + 40);
        v36 = *(v30 + 48);
        v78 = *(v30 + 64);
        v76 = v33;
        v77 = v36;
        v37 = *(v30 + 80);
        v73 = *(v30 + 88);
        v74 = v34;
        v38 = *(v30 + 144);
        v85 = *(v30 + 128);
        v86 = v38;
        v87 = *(v30 + 160);
        v39 = *(v30 + 112);
        v83 = *(v30 + 96);
        v84 = v39;
        memcpy(v88, (v30 + 168), sizeof(v88));
        v70 = *(v30 + 552);
        v71 = *(v30 + 560);
        v40 = *(v65 + 56);
        v68 = *(v64 + 72);
        sub_189494(v40 + v68 * v29, v75);
      }

      else
      {
        memcpy(v82, (*(v65 + 48) + 568 * v29), sizeof(v82));
        v41 = *(v65 + 56);
        v68 = *(v64 + 72);
        sub_43050(v41 + v68 * v29, v75, &qword_229728, &unk_1D14A0);
        v71 = v82[560];
        v31 = *v82;
        v70 = *&v82[552];
        v77 = *&v82[48];
        v78 = *&v82[64];
        v37 = v82[80];
        v73 = *&v82[88];
        v74 = *&v82[32];
        v35 = v82[40];
        v76 = *&v82[16];
        v32 = v82[8];
        sub_4299C(v82, v81);
        v85 = *&v82[128];
        v86 = *&v82[144];
        v87 = *&v82[160];
        v83 = *&v82[96];
        v84 = *&v82[112];
        memcpy(v88, &v82[168], sizeof(v88));
      }

      v80 = v35;
      v42 = v79;
      v43 = *(v79 + 40);
      v72 = v31;
      *v82 = v31;
      v82[8] = v32;
      *&v82[16] = v76;
      v44 = v74;
      *&v82[32] = v74;
      v67 = v35;
      v82[40] = v35;
      *&v82[48] = v77;
      *&v82[64] = v78;
      v82[80] = v37;
      v45 = v73;
      *&v82[88] = v73;
      *&v82[128] = v85;
      *&v82[144] = v86;
      *&v82[160] = v87;
      *&v82[96] = v83;
      *&v82[112] = v84;
      memcpy(&v82[168], v88, 0x179uLL);
      v46 = v70;
      *&v82[552] = v70;
      v47 = v71;
      v82[560] = v71;
      sub_1B57F4();
      SeedBook.hash(into:)(v81);
      result = sub_1B5844();
      v48 = -1 << *(v42 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      v51 = v47;
      v52 = v44;
      if (((-1 << v49) & ~*(v63 + 8 * (v49 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v48) >> 6;
        v17 = v72;
        v19 = v77;
        v18 = v78;
        v20 = v76;
        while (++v50 != v54 || (v53 & 1) == 0)
        {
          v55 = v50 == v54;
          if (v50 == v54)
          {
            v50 = 0;
          }

          v53 |= v55;
          v56 = *(v63 + 8 * v50);
          if (v56 != -1)
          {
            v16 = __clz(__rbit64(~v56)) + (v50 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v49) & ~*(v63 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      v17 = v72;
      v19 = v77;
      v18 = v78;
      v20 = v76;
LABEL_9:
      *(v63 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = v79;
      v22 = *(v79 + 48) + 568 * v16;
      *v22 = v17;
      *(v22 + 8) = v32;
      *(v22 + 16) = v20;
      *(v22 + 32) = v52;
      *(v22 + 40) = v67;
      *(v22 + 48) = v19;
      *(v22 + 64) = v18;
      *(v22 + 80) = v37;
      *(v22 + 88) = v45;
      v23 = v86;
      *(v22 + 128) = v85;
      *(v22 + 144) = v23;
      *(v22 + 160) = v87;
      v24 = v84;
      *(v22 + 96) = v83;
      *(v22 + 112) = v24;
      memcpy((v22 + 168), v88, 0x179uLL);
      *(v22 + 552) = v46;
      *(v22 + 560) = v51;
      sub_189494(v75, *(v21 + 56) + v68 * v16);
      ++*(v21 + 16);
      v15 = v69;
      result = v62;
    }

    v27 = v11;
    while (1)
    {
      v11 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v61)
      {
        break;
      }

      v28 = *(result + 8 * v11);
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v66 & 1) == 0)
    {

      v3 = v60;
      goto LABEL_37;
    }

    v57 = v65;
    v58 = 1 << *(v65 + 32);
    v3 = v60;
    if (v58 >= 64)
    {
      bzero(result, ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *result = -1 << v58;
    }

    *(v57 + 16) = 0;
  }

LABEL_37:
  *v3 = v79;
  return result;
}

uint64_t sub_17EDE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F538, &qword_1D1468);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_264B8(v22, v33);
      }

      else
      {
        sub_404C4(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_264B8(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_17F10C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_2B0C(&qword_22E180, &unk_1D1530);
  v43 = a2;
  result = sub_1B52A4();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1895D4(&qword_229338, &type metadata accessor for UUID);
      result = sub_1B4744();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_17F4E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F540, &unk_1D1470);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_264B8(v22, v33);
      }

      else
      {
        sub_404C4(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_264B8(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_17F7E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22BD20, &qword_1C6110);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1B57E4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_17FA44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F5C8, &qword_1D15A8);
  v38 = a2;
  result = sub_1B52A4();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 56 * v21;
      v40 = *(v23 + 8);
      v41 = *v23;
      v42 = *(v23 + 16);
      v24 = *(v23 + 24);
      v25 = *(v23 + 32);
      v39 = *(v23 + 40);
      v26 = *(v23 + 48);
      if ((v38 & 1) == 0)
      {
        sub_43688(v42, v24);
      }

      v27 = *(v8 + 40);
      result = sub_1B57E4();
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
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 56 * v16;
      *v17 = v41;
      *(v17 + 8) = v40;
      *(v17 + 16) = v42;
      *(v17 + 24) = v24;
      *(v17 + 32) = v25;
      *(v17 + 40) = v39;
      *(v17 + 48) = v26;
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

uint64_t sub_17FD40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_2297C0, &qword_1BCC38);
  v42 = a2;
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      if (v42)
      {
        v24 = *v23;
        v43 = *(v23 + 8);
        v45 = *(v23 + 24);
        v25 = *(v23 + 32);
        v26 = *(v23 + 56);
        v46 = v26;
        v47 = *(v23 + 40);
        v44 = *(v23 + 72);
        v27 = *(v23 + 80);
      }

      else
      {
        v27 = *(v23 + 80);
        v29 = *(v23 + 48);
        v28 = *(v23 + 64);
        *v50 = *(v23 + 32);
        *&v50[16] = v29;
        *&v50[32] = v28;
        v30 = *(v23 + 16);
        *v49 = *v23;
        *&v49[16] = v30;
        v51 = v27;
        v46 = *&v50[24];
        v47 = *&v50[8];
        v44 = BYTE8(v28);
        v45 = *(&v30 + 1);
        v25 = v50[0];
        v43 = *&v49[8];
        v24 = v49[0];
        sub_5EDD8(v49, v48);
      }

      v31 = *(v8 + 40);
      result = sub_1B57E4();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v49[0] = v25;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 88 * v16;
      *v17 = v24;
      *(v17 + 8) = v43;
      *(v17 + 24) = v45;
      *(v17 + 32) = v25;
      *(v17 + 40) = v47;
      *(v17 + 56) = v46;
      *(v17 + 72) = v44;
      *(v17 + 80) = v27;
      ++*(v8 + 16);
      v5 = v41;
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

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_180090(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_2297B8, &qword_1BCC30);
  v36 = a2;
  result = sub_1B52A4();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_1B57E4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18033C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1B40F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_2B0C(a3, a4);
  v47 = a2;
  result = sub_1B52A4();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v14;
    v51 = v10;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    v46 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v49 = *(v11 + 72);
      v32 = v31 + v49 * v30;
      if (v47)
      {
        (*v48)(v50, v32, v51);
        v52 = *(*(v15 + 56) + 16 * v30);
      }

      else
      {
        (*v44)(v50, v32, v51);
        v52 = *(*(v15 + 56) + 16 * v30);
      }

      v33 = *(v18 + 40);
      sub_1895D4(&qword_229338, &type metadata accessor for UUID);
      result = sub_1B4744();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v11 = v45;
        v15 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v11 = v45;
      v15 = v46;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v49 * v26, v50, v51);
      *(*(v18 + 56) + 16 * v26) = v52;
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_180744(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v24;
      }

      v26 = *(v10 + 40);
      result = sub_1B57E4();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1809A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22D6F0, &unk_1CCCA0);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_180C74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22D6E8, &qword_1D1570);
  v35 = a2;
  v7 = sub_1B52A4();
  v8 = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_35;
  }

  v34 = v3;
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
  v15 = v7 + 64;
  while (v13)
  {
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_18:
    v24 = v21 | (v9 << 6);
    v25 = *(*(v5 + 48) + v24);
    v26 = *(*(v5 + 56) + 8 * v24);
    if ((v35 & 1) == 0)
    {
    }

    v27 = *(v8 + 40);
    sub_1B57F4();
    sub_1B4884();

    v16 = sub_1B5844();
    v17 = -1 << *(v8 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v17) >> 6;
      do
      {
        if (++v19 == v29 && (v28 & 1) != 0)
        {
          goto LABEL_38;
        }

        v30 = v19 == v29;
        if (v19 == v29)
        {
          v19 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v19);
      }

      while (v31 == -1);
      v20 = __clz(__rbit64(~v31)) + (v19 << 6);
    }

    *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + v20) = v25;
    *(*(v8 + 56) + 8 * v20) = v26;
    ++*(v8 + 16);
  }

  v22 = v9;
  while (1)
  {
    v9 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      JUMPOUT(0x1810A0);
    }

    if (v9 >= v14)
    {
      break;
    }

    v23 = v10[v9];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v13 = (v23 - 1) & v23;
      goto LABEL_18;
    }
  }

  if (v35)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
LABEL_35:

    goto LABEL_36;
  }

  v3 = v34;
LABEL_36:
  *v3 = v8;
  return result;
}

Swift::Int sub_1810FC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2B0C(a3, a4);
  v9 = sub_1B52A4();
  v10 = v9;
  if (*(v7 + 16))
  {
    v11 = 0;
    v52 = v9;
    v53 = v7;
    v51 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v49 = v5;
    v50 = (v12 + 63) >> 6;
    v15 = v9 + 64;
    while (v14)
    {
      v25 = __clz(__rbit64(v14));
      v26 = (v14 - 1) & v14;
LABEL_17:
      v30 = v25 | (v11 << 6);
      v55 = v26;
      if (a2)
      {
        v31 = *(v53 + 48) + 568 * v30;
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 32);
        v35 = *(v31 + 40);
        v62 = *(v31 + 64);
        v60 = *(v31 + 16);
        v61 = *(v31 + 48);
        v56 = *(v31 + 80);
        v57 = *(v31 + 88);
        v36 = *(v31 + 144);
        v67 = *(v31 + 128);
        v68 = v36;
        v69 = *(v31 + 160);
        v37 = *(v31 + 112);
        v65 = *(v31 + 96);
        v66 = v37;
        memcpy(__src, (v31 + 168), sizeof(__src));
        v59 = *(v31 + 552);
        v58 = *(v31 + 560);
        v38 = v32;
        v54 = *(*(v53 + 56) + 8 * v30);
      }

      else
      {
        memcpy(__dst, (*(v53 + 48) + 568 * v30), sizeof(__dst));
        v39 = *(*(v53 + 56) + 8 * v30);
        v58 = __dst[560];
        v38 = *__dst;
        v59 = *&__dst[552];
        v57 = *&__dst[88];
        v61 = *&__dst[48];
        v62 = *&__dst[64];
        v56 = __dst[80];
        v34 = *&__dst[32];
        v35 = __dst[40];
        v60 = *&__dst[16];
        v33 = __dst[8];
        sub_4299C(__dst, v63);
        v67 = *&__dst[128];
        v68 = *&__dst[144];
        v69 = *&__dst[160];
        v65 = *&__dst[96];
        v66 = *&__dst[112];
        memcpy(__src, &__dst[168], sizeof(__src));
        v54 = v39;
      }

      v10 = v52;
      v40 = *(v52 + 40);
      *__dst = v38;
      __dst[8] = v33;
      *&__dst[16] = v60;
      *&__dst[32] = v34;
      __dst[40] = v35;
      *&__dst[48] = v61;
      *&__dst[64] = v62;
      __dst[80] = v56;
      *&__dst[88] = v57;
      *&__dst[128] = v67;
      *&__dst[144] = v68;
      *&__dst[160] = v69;
      *&__dst[96] = v65;
      *&__dst[112] = v66;
      memcpy(&__dst[168], __src, 0x179uLL);
      *&__dst[552] = v59;
      __dst[560] = v58;
      sub_1B57F4();
      SeedBook.hash(into:)(v63);
      result = sub_1B5844();
      v41 = -1 << *(v52 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v15 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v19 = v61;
        v18 = v62;
        v20 = v33;
        v21 = v60;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v15 + 8 * v43);
          if (v47 != -1)
          {
            v16 = v38;
            v17 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = v38;
      v17 = __clz(__rbit64((-1 << v42) & ~*(v15 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v19 = v61;
      v18 = v62;
      v20 = v33;
      v21 = v60;
LABEL_9:
      *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = *(v52 + 48) + 568 * v17;
      *v22 = v16;
      *(v22 + 8) = v20;
      *(v22 + 16) = v21;
      *(v22 + 32) = v34;
      *(v22 + 40) = v35;
      *(v22 + 48) = v19;
      *(v22 + 64) = v18;
      *(v22 + 80) = v56;
      *(v22 + 88) = v57;
      v23 = v68;
      *(v22 + 128) = v67;
      *(v22 + 144) = v23;
      *(v22 + 160) = v69;
      v24 = v66;
      *(v22 + 96) = v65;
      *(v22 + 112) = v24;
      memcpy((v22 + 168), __src, 0x179uLL);
      *(v22 + 552) = v59;
      *(v22 + 560) = v58;
      v14 = v55;
      *(*(v52 + 56) + 8 * v17) = v54;
      ++*(v52 + 16);
    }

    v27 = v11;
    result = v51;
    while (1)
    {
      v11 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v50)
      {
        break;
      }

      v29 = v51[v11];
      ++v27;
      if (v29)
      {
        v25 = __clz(__rbit64(v29));
        v26 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v49;
      goto LABEL_37;
    }

    v48 = 1 << *(v53 + 32);
    v5 = v49;
    if (v48 >= 64)
    {
      bzero(v51, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v48;
    }

    *(v53 + 16) = 0;
  }

LABEL_37:
  *v5 = v10;
  return result;
}

uint64_t sub_1815F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F570, &qword_1D14E8);
  result = sub_1B52A4();
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
      v22 = *(v8 + 40);
      result = sub_1B57E4();
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

LABEL_35:
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
        goto LABEL_35;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_18186C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      v25 = *(v10 + 40);
      result = sub_1B57E4();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_181AC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F530, &qword_1D1460);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 40 * v23);
      if (a2)
      {
        sub_264B8(v25, v33);
      }

      else
      {
        sub_404C4(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_264B8(v33, *(v8 + 56) + 40 * v19);
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_181E24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22D6E0, &unk_1CCC90);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
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
      v22 = *(v5 + 56) + 40 * v21;
      v23 = *(*(v5 + 48) + 8 * v21);
      v40 = *(v22 + 32);
      v39 = *(v22 + 24);
      v24 = *(v22 + 16);
      v26 = *v22;
      v25 = *(v22 + 8);
      v27 = *(v8 + 40);
      result = sub_1B57E4();
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
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v26;
      *(v17 + 8) = v25;
      *(v17 + 16) = v24;
      v5 = v38;
      *(v17 + 24) = v39;
      *(v17 + 32) = v40;
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

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1820C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F578, &qword_1D14F8);
  v39 = a2;
  result = sub_1B52A4();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *v23;
      v40 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      v27 = *(v23 + 32);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      result = sub_1B57E4();
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
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v24;
      *(v17 + 8) = v40;
      *(v17 + 16) = v25;
      *(v17 + 24) = v26;
      *(v17 + 32) = v27;
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

uint64_t sub_182384(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22D6C8, &qword_1CCC78);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = sub_1B57E4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1825FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F588, &unk_1D1520);
  v35 = a2;
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v34 = v3;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = *(v5 + 56) + 24 * v24;
      v37 = *v26;
      v36 = *(v26 + 8);
      v27 = *(v26 + 16);
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = *(v8 + 56) + 24 * v19;
      *v20 = v37;
      *(v20 + 8) = v36;
      *(v20 + 16) = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1829C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22D730, &unk_1CCCD0);
  v38 = a2;
  result = sub_1B52A4();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 48 * v21;
      v40 = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      v39 = *(v23 + 32);
      v26 = *(v23 + 40);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      result = sub_1B57E4();
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
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 48 * v16;
      *v17 = v40;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      *(v17 + 32) = v39;
      *(v17 + 40) = v26;
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

uint64_t sub_182CBC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v49 = sub_2B0C(a3, a4);
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v49);
  v48 = &v44 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  sub_2B0C(a5, a6);
  v47 = a2;
  result = sub_1B52A4();
  v18 = result;
  if (*(v15 + 16))
  {
    v44 = v9;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v12 + 16);
    v46 = v12;
    v25 = (v12 + 32);
    v26 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(*(v15 + 48) + 8 * v31);
      v33 = *(v12 + 72);
      v34 = *(v15 + 56) + v33 * v31;
      if (v47)
      {
        (*v25)(v48, v34, v49);
      }

      else
      {
        (*v45)(v48, v34, v49);
      }

      v35 = *(v18 + 40);
      result = sub_1B57E4();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v26 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v26 + 8 * v38);
          if (v42 != -1)
          {
            v27 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v37) & ~*(v26 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v18 + 48) + 8 * v27) = v32;
      result = (*v25)(*(v18 + 56) + v33 * v27, v48, v49);
      ++*(v18 + 16);
      v12 = v46;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v15 + 32);
    v9 = v44;
    if (v43 >= 64)
    {
      bzero((v15 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_18301C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_1B57E4();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_183284(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22A510, &qword_1C0208);
  v33 = a2;
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18355C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v6;
    v18 = result + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_18:
      v26 = v23 | (v12 << 6);
      v27 = *(*(v8 + 48) + v26);
      v28 = *(v8 + 56) + 40 * v26;
      if (a2)
      {
        a5(v28, v37);
      }

      else
      {
        sub_404C4(v28, v37);
      }

      v29 = *(v11 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v19 = -1 << *(v11 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v18 + 8 * (v20 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v19) >> 6;
        while (++v21 != v31 || (v30 & 1) == 0)
        {
          v32 = v21 == v31;
          if (v21 == v31)
          {
            v21 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v21);
          if (v33 != -1)
          {
            v22 = __clz(__rbit64(~v33)) + (v21 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v18 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v11 + 48) + v22) = v27;
      result = (a5)(v37, *(v11 + 56) + 40 * v22);
      ++*(v11 + 16);
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v35;
      goto LABEL_37;
    }

    v34 = 1 << *(v8 + 32);
    v6 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v6 = v11;
  return result;
}

uint64_t sub_1838B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F508, &qword_1D1420);
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_264B8(v22, v33);
      }

      else
      {
        sub_404C4(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_264B8(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_183B7C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Package();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_2B0C(&qword_22F5C0, &qword_1D1598);
  v44 = a2;
  result = sub_1B52A4();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_18956C(v31, v45, type metadata accessor for Package);
      }

      else
      {
        sub_189504(v31, v45, type metadata accessor for Package);
      }

      v32 = *(v12 + 40);
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_18956C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Package);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_183F1C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2B0C(a3, a4);
  v35 = a2;
  result = sub_1B52A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_1B57F4();
      sub_8E228(v36, v23);
      result = sub_1B5844();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1841C0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2B0C(a3, a4);
  v40 = a2;
  result = sub_1B52A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_184460(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F5B0, &qword_1D1588);
  v40 = a2;
  result = sub_1B52A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_184720(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F5A8, &qword_1D1580);
  v36 = a2;
  result = sub_1B52A4();
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_1B57E4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1849A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2B0C(&qword_22F5A0, &qword_1D1578);
  v39 = a2;
  result = sub_1B52A4();
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
      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
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

char *sub_184C48()
{
  v1 = v0;
  v43 = sub_1B41D4();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B4204();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22F5D8, &qword_1D15B8);
  v6 = *v0;
  v7 = sub_1B5294();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_184F9C()
{
  v1 = v0;
  sub_2B0C(&qword_2297B0, &unk_1D14D0);
  v2 = *v0;
  v3 = sub_1B5294();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        memcpy(__dst, (*(v2 + 56) + 384 * v17), sizeof(__dst));
        *(*(v4 + 48) + 8 * v17) = v18;
        result = memcpy((*(v4 + 56) + 384 * v17), __dst, 0x179uLL);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_185124()
{
  v1 = v0;
  v2 = type metadata accessor for StoreBook(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22F560, &qword_1D14C8);
  v5 = *v0;
  v6 = sub_1B5294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_189504(*(v5 + 56) + v24, v27, type metadata accessor for StoreBook);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        result = sub_18956C(v23, *(v25 + 56) + v24, type metadata accessor for StoreBook);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_185370()
{
  v1 = v0;
  sub_2B0C(&qword_22D6B0, &unk_1CCC60);
  v2 = *v0;
  v3 = sub_1B5294();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1854F8()
{
  v1 = v0;
  sub_2B0C(&qword_2290B8, &qword_1BB480);
  v2 = *v0;
  v3 = sub_1B5294();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_43050(*(v2 + 56) + 40 * v17, v28, &qword_229010, &unk_1D15F0);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1856D0()
{
  v1 = v0;
  sub_2B0C(&qword_229700, &qword_1BCB58);
  v2 = *v0;
  v3 = sub_1B5294();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_429F8(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 136 * v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *(v18 + 64);
      v36 = *(v18 + 48);
      v37 = v21;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v41 = *(v18 + 128);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v33 = *v18;
      v34 = v20;
      v35 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v25 = *(v4 + 56) + 136 * v16;
      *v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v37;
      *(v25 + 48) = v36;
      *(v25 + 64) = v28;
      *(v25 + 16) = v26;
      *(v25 + 32) = v27;
      v29 = v38;
      v30 = v39;
      v31 = v40;
      *(v25 + 128) = v41;
      *(v25 + 96) = v30;
      *(v25 + 112) = v31;
      *(v25 + 80) = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1858C4()
{
  v1 = v0;
  sub_2B0C(&qword_22F558, &qword_1D14C0);
  v2 = *v0;
  v3 = sub_1B5294();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[3];
        v30 = v19[2];
        v31 = v22;
        v28 = v21;
        v29 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v28;
        v25 = v29;
        v26 = v31;
        v23[2] = v30;
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        result = sub_42BA4(&v28, &v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_185A54()
{
  v1 = v0;
  v2 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  sub_2B0C(&qword_229730, &qword_1BCB88);
  v6 = *v0;
  v7 = sub_1B5294();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    for (i = (v13 + 63) >> 6; v15; result = sub_4299C(v27, &v26))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = v17 | (v12 << 6);
      v21 = 568 * v20;
      memcpy(v27, (*(v6 + 48) + 568 * v20), 0x231uLL);
      v22 = *(v25 + 72) * v20;
      sub_43050(*(v6 + 56) + v22, v5, &qword_229728, &unk_1D14A0);
      memcpy((*(v8 + 48) + v21), v27, 0x231uLL);
      sub_189494(v5, *(v8 + 56) + v22);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= i)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_185CAC()
{
  v1 = v0;
  v30 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - v3;
  sub_2B0C(&qword_229748, &qword_1BCBA0);
  v4 = *v0;
  v5 = sub_1B5294();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}