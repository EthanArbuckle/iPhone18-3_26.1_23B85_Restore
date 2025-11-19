uint64_t sub_E5064(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_E50D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E5144()
{
  result = qword_22BB30;
  if (!qword_22BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB30);
  }

  return result;
}

uint64_t sub_E5198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_E5200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreBook(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_E5264@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1B3FF4();
  *a1 = v5;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_E52A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_E530C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_E53B0()
{
  result = qword_22BB40;
  if (!qword_22BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB40);
  }

  return result;
}

unint64_t sub_E5408()
{
  result = qword_22BB48;
  if (!qword_22BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB48);
  }

  return result;
}

unint64_t sub_E5460()
{
  result = qword_22BB50;
  if (!qword_22BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB50);
  }

  return result;
}

unint64_t sub_E54B8()
{
  result = qword_22BB58;
  if (!qword_22BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB58);
  }

  return result;
}

unint64_t sub_E5510()
{
  result = qword_22BB60;
  if (!qword_22BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB60);
  }

  return result;
}

unint64_t sub_E5568()
{
  result = qword_22BB68;
  if (!qword_22BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB68);
  }

  return result;
}

unint64_t sub_E55C0()
{
  result = qword_22BB70;
  if (!qword_22BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB70);
  }

  return result;
}

unint64_t sub_E5618()
{
  result = qword_22BB78;
  if (!qword_22BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB78);
  }

  return result;
}

unint64_t sub_E5670()
{
  result = qword_22BB80;
  if (!qword_22BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BB80);
  }

  return result;
}

uint64_t dispatch thunk of ScoredBookProcessorServiceType.process(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

uint64_t sub_E5810()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22BB88);
  sub_50E58(v0, qword_22BB88);
  return sub_1B4634();
}

uint64_t sub_E5890(uint64_t a1)
{
  *(v2 + 336) = a1;
  *(v2 + 344) = v1;
  return _swift_task_switch(sub_E58B0, 0, 0);
}

uint64_t sub_E58B0()
{
  v14 = v0;
  v1 = v0[42];
  v2 = *(v1 + 16);
  v0[44] = v2;
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v3 += 8;
      sub_111CE0(&v13, v4);
      --v2;
    }

    while (v2);
  }

  v0[45] = _swiftEmptySetSingleton;
  v5 = v0[43];
  v6 = v5[5];
  v7 = v5[6];
  sub_2698(v5 + 2, v6);
  v8 = *(v7 + 40);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_E5A28;

  return (v12)(_swiftEmptySetSingleton, v6, v7);
}

uint64_t sub_E5A28(uint64_t a1)
{
  v3 = *(*v2 + 368);
  v4 = *(*v2 + 360);
  v5 = *v2;
  *(v5 + 376) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_E5B7C, 0, 0);
  }
}

uint64_t sub_E5B7C()
{
  v21 = v0;
  v1 = v0[47];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 64);
    v4 = &_swiftEmptyDictionarySingleton;
    v5 = &_swiftEmptyDictionarySingleton;
    do
    {
      if ((*v3 & 1) == 0 && (*(v3 - 16) & 1) == 0)
      {
        v6 = *(v3 - 4);
        v7 = *(v3 - 3);
        v8 = *(v3 - 1);
        sub_111CE0(&v20, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v5;
        sub_53D80(v7, v6, isUniquelyReferenced_nonNull_native);
        v5 = v20;
        v10 = swift_isUniquelyReferenced_nonNull_native();
        v20 = v4;
        sub_545D8(v8, v6, v10);
        v4 = v20;
      }

      v3 += 40;
      --v2;
    }

    while (v2);
    v11 = v0[47];
  }

  else
  {

    v4 = &_swiftEmptyDictionarySingleton;
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v0[49] = v4;
  v0[50] = v5;
  v0[48] = _swiftEmptySetSingleton;
  v12 = v0[43];
  v13 = v12[5];
  v14 = v12[6];
  sub_2698(v12 + 2, v13);
  v15 = *(v14 + 48);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[51] = v17;
  *v17 = v0;
  v17[1] = sub_E5DA0;

  return (v19)(_swiftEmptySetSingleton, v13, v14);
}

uint64_t sub_E5DA0(uint64_t a1)
{
  v3 = *(*v2 + 408);
  v4 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {
    v6 = v4[49];
    v5 = v4[50];
    v7 = v4[48];

    v8 = v4[1];

    return v8();
  }

  else
  {
    v10 = v4[48];

    return _swift_task_switch(sub_E5F04, 0, 0);
  }
}

void sub_E5F04()
{
  v92 = v0;
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v24 = &_swiftEmptyDictionarySingleton;
LABEL_56:

    v46 = *(v0 + 416);
    v48 = *(v0 + 392);
    v47 = *(v0 + 400);
    v49 = *(v0 + 352);

    v79 = _swiftEmptySetSingleton;

    if (v49)
    {
      v50 = v24;
      v51 = 0;
      v52 = (*(v0 + 336) + 32);
      v53 = *(v0 + 424);
      v54 = _swiftEmptyArrayStorage;
      while (1)
      {
        v58 = *(v0 + 392);
        v57 = *(v0 + 400);
        v59 = v52[3];
        v61 = *v52;
        v60 = v52[1];
        *(v0 + 48) = v52[2];
        *(v0 + 64) = v59;
        *(v0 + 16) = v61;
        *(v0 + 32) = v60;
        v62 = v52[1];
        v80 = *v52;
        v81 = v62;
        v63 = v52[3];
        v82 = v52[2];
        v83 = v63;
        sub_42BA4(v0 + 16, v0 + 80);
        sub_E652C(&v80, v57, v58, v50, &v79, &v84);
        if (v53)
        {
          break;
        }

        v64 = v81;
        *(v0 + 208) = v80;
        *(v0 + 224) = v64;
        v65 = v83;
        *(v0 + 240) = v82;
        *(v0 + 256) = v65;
        sub_43FF4(v0 + 208);
        if (v86)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_3349C(0, *(v54 + 2) + 1, 1, v54);
          }

          v67 = *(v54 + 2);
          v66 = *(v54 + 3);
          if (v67 >= v66 >> 1)
          {
            v54 = sub_3349C((v66 > 1), v67 + 1, 1, v54);
          }

          v90 = v86;
          v91 = v87;
          v68 = v84;
          v88 = v84;
          v89 = v85;
          *(v54 + 2) = v67 + 1;
          v69 = &v54[64 * v67];
          v70 = v89;
          v71 = v91;
          *(v69 + 4) = v90;
          *(v69 + 5) = v71;
          *(v69 + 2) = v68;
          *(v69 + 3) = v70;
        }

        else
        {
          v55 = v85;
          *(v0 + 272) = v84;
          *(v0 + 288) = v55;
          v56 = v87;
          *(v0 + 304) = v86;
          *(v0 + 320) = v56;
          sub_E6A4C(v0 + 272);
        }

        v53 = 0;
        ++v51;
        v52 += 4;
        if (v51 == *(v0 + 352))
        {
          goto LABEL_71;
        }
      }

      v72 = v81;
      *(v0 + 144) = v80;
      *(v0 + 160) = v72;
      v73 = v83;
      *(v0 + 176) = v82;
      *(v0 + 192) = v73;
      sub_43FF4(v0 + 144);
    }

    else
    {
      v54 = _swiftEmptyArrayStorage;
LABEL_71:
      v75 = *(v0 + 392);
      v74 = *(v0 + 400);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v76 = *(v0 + 8);

      v76(v54);
    }

    return;
  }

  v3 = 0;
  v4 = (v1 + 65);
  v5 = &_swiftEmptyDictionarySingleton;
  v77 = *(v0 + 416);
  v78 = *(v1 + 16);
  while (v3 < *(v1 + 16))
  {
    if ((*(v4 - 1) & 1) != 0 || (*(v4 - 17) & 1) != 0 || !*v4)
    {
      goto LABEL_4;
    }

    v6 = *(v4 - 25);
    v7 = *(v4 - 9);
    if (v5[2] && (v8 = sub_43124(*(v4 - 25)), (v9 & 1) != 0))
    {
      if (*(v5[7] + 8 * v8) < v7)
      {
        goto LABEL_14;
      }
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v88 = v5;
      v11 = sub_43124(v6);
      v13 = v5[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_79;
      }

      v17 = v12;
      if (v5[3] >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v19 = v11;
        sub_1871D8();
        v11 = v19;
        v5 = v88;
        v1 = v77;
        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        *(v5[7] + 8 * v11) = v7;
      }

      else
      {
        sub_181858(v16, isUniquelyReferenced_nonNull_native);
        v5 = v88;
        v11 = sub_43124(v6);
        if ((v17 & 1) != (v18 & 1))
        {
LABEL_74:

          sub_1B5784();
          return;
        }

LABEL_19:
        v1 = v77;
        if (v17)
        {
          goto LABEL_20;
        }

LABEL_22:
        v5[(v11 >> 6) + 8] |= 1 << v11;
        *(v5[6] + 8 * v11) = v6;
        *(v5[7] + 8 * v11) = v7;
        v20 = v5[2];
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_80;
        }

        v5[2] = v21;
      }

      v2 = v78;
      goto LABEL_4;
    }

    v1 = v77;
LABEL_4:
    ++v3;
    v4 += 40;
    if (v2 == v3)
    {
      v22 = 0;
      v23 = (v1 + 64);
      v24 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v22 >= *(v1 + 16))
        {
          goto LABEL_78;
        }

        if ((*v23 & 1) == 0 && (*(v23 - 16) & 1) == 0)
        {
          break;
        }

LABEL_29:
        ++v22;
        v23 += 40;
        if (v2 == v22)
        {
          goto LABEL_56;
        }
      }

      v26 = *(v23 - 4);
      v27 = *(v23 - 3);
      v28 = *(v23 - 1);
      if (v5[2])
      {
        v29 = sub_43124(*(v23 - 3));
        if (v30)
        {
          if (*(v5[7] + 8 * v29) < v28)
          {
            goto LABEL_38;
          }

LABEL_28:
          v2 = v78;
          goto LABEL_29;
        }
      }

      if (v28 < 0)
      {
        goto LABEL_28;
      }

LABEL_38:
      if (v24[2] && (v31 = sub_43124(v27), (v32 & 1) != 0))
      {
        if (v28 >= *(v24[7] + 16 * v31))
        {
          goto LABEL_28;
        }
      }

      else if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      v33 = v24;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v88 = v33;
      v35 = sub_43124(v27);
      v37 = v33[2];
      v38 = (v36 & 1) == 0;
      v15 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v15)
      {
        goto LABEL_81;
      }

      v40 = v36;
      if (v33[3] >= v39)
      {
        if (v34)
        {
          v24 = v33;
          if ((v36 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v45 = v35;
          sub_187088();
          v35 = v45;
          v24 = v88;
          if ((v40 & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        sub_1815F4(v39, v34);
        v24 = v88;
        v35 = sub_43124(v27);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_74;
        }

        if ((v40 & 1) == 0)
        {
LABEL_50:
          v24[(v35 >> 6) + 8] |= 1 << v35;
          *(v24[6] + 8 * v35) = v27;
          v42 = (v24[7] + 16 * v35);
          *v42 = v28;
          v42[1] = v26;
          v43 = v24[2];
          v15 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v15)
          {
            goto LABEL_82;
          }

          v24[2] = v44;
          goto LABEL_27;
        }
      }

      v25 = (v24[7] + 16 * v35);
      *v25 = v28;
      v25[1] = v26;
LABEL_27:
      v1 = v77;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void sub_E652C(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a1[3];
  v52 = a1[2];
  v53 = v8;
  v9 = a1[1];
  v50 = *a1;
  v51 = v9;
  v10 = v50;
  if (!*(a2 + 16))
  {
    goto LABEL_14;
  }

  v14 = BYTE8(v50);
  v46 = *(&v52 + 1);
  v47 = v53;
  v48 = v52;
  v15 = sub_43124(v50);
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a3 + 16) && (v17 = *(*(a2 + 56) + 8 * v15), v18 = sub_43124(v50), (v19 & 1) != 0) && *(a4 + 16) && (v20 = *(*(a3 + 56) + 8 * v18), v21 = sub_43124(v17), (v22 & 1) != 0) && (v23 = (*(a4 + 56) + 16 * v21), *v23 < v20))
  {
    v24 = v23[1];
    if (sub_2AA44(v24, *a5))
    {
      if (qword_2282E0 != -1)
      {
        swift_once();
      }

      v25 = sub_1B4644();
      sub_50E58(v25, qword_22BB88);
      v26 = sub_1B4624();
      v27 = sub_1B4D74();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49[0] = v29;
        *v28 = 141558275;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2081;
        v54 = v10;
        v30 = sub_1B5594();
        v32 = sub_60FF4(v30, v31, v49);

        *(v28 + 14) = v32;
        _os_log_impl(&dword_0, v26, v27, "Already included series storeID %{private,mask.hash}s, won't include again", v28, 0x16u);
        sub_2BF8(v29);
      }

      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
    }

    else
    {
      sub_111CE0(v49, v24);
      if (qword_2282E0 != -1)
      {
        swift_once();
      }

      v35 = sub_1B4644();
      sub_50E58(v35, qword_22BB88);
      v36 = sub_1B4624();
      v37 = sub_1B4D74();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v38 = 141558787;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        v54 = v24;
        v39 = sub_1B5594();
        v41 = sub_60FF4(v39, v40, v49);

        *(v38 + 14) = v41;
        *(v38 + 22) = 2160;
        *(v38 + 24) = 1752392040;
        *(v38 + 32) = 2081;
        v54 = v10;
        v42 = sub_1B5594();
        v44 = sub_60FF4(v42, v43, v49);

        *(v38 + 34) = v44;
        _os_log_impl(&dword_0, v36, v37, "Substituting storeID %{private,mask.hash}s for storeID %{private,mask.hash}s because it is earlier in the series and unpurchased", v38, 0x2Au);
        swift_arrayDestroy();
      }

      v45 = *(&v53 + 1);
      *a6 = v24;
      *(a6 + 8) = v14;
      *(a6 + 16) = 0;
      *(a6 + 24) = -1;
      *(a6 + 32) = v48;
      *(a6 + 40) = v46;
      *(a6 + 48) = v47;
      *(a6 + 56) = v45;
    }
  }

  else
  {
LABEL_14:
    sub_111CE0(v49, v50);
    v33 = v51;
    *a6 = v50;
    *(a6 + 16) = v33;
    v34 = v53;
    *(a6 + 32) = v52;
    *(a6 + 48) = v34;
    sub_42BA4(&v50, v49);
  }
}

uint64_t sub_E69B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_E5890(a1);
}

uint64_t sub_E6A4C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22BC40, &unk_1C5DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_E6AB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  sub_378AC(0, v6, 0);
  v7 = v6;
  result = _swiftEmptyArrayStorage;
  v34 = a1;
  v35 = a2;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v7;
    v12 = v4;
    v13 = v5;
    v14 = v4;
    v15 = v5;
    while (v12)
    {
      if (!v13)
      {
        goto LABEL_23;
      }

      v16 = *v9;
      v17 = *v10 == 1;
      v36 = result;
      v19 = result[2];
      v18 = result[3];
      if (v19 >= v18 >> 1)
      {
        v30 = v7;
        v32 = v14;
        v28 = *v9;
        v29 = v15;
        sub_378AC((v18 > 1), v19 + 1, 1);
        v16 = v28;
        v15 = v29;
        v7 = v30;
        v14 = v32;
        result = v36;
      }

      result[2] = v19 + 1;
      v20 = &result[4 * v19];
      v20[4] = v16;
      *(v20 + 40) = v17;
      --v13;
      v20[6] = _swiftEmptyArrayStorage;
      v20[7] = 0;
      --v12;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v4;
  v15 = v5;
LABEL_13:
  if (v14 > v15)
  {
    while (v7 < v14)
    {
      v21 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

      if (v15 != v7)
      {
        if (v7 >= v15)
        {
          goto LABEL_26;
        }

        v22 = *(v34 + 32 + 8 * v7);
        v23 = *(v35 + 32 + 8 * v7) == 1;
        v37 = result;
        v25 = result[2];
        v24 = result[3];
        if (v25 >= v24 >> 1)
        {
          v31 = v7;
          v33 = v14;
          v27 = v15;
          sub_378AC((v24 > 1), v25 + 1, 1);
          v7 = v31;
          v14 = v33;
          v15 = v27;
          result = v37;
        }

        result[2] = v25 + 1;
        v26 = &result[4 * v25];
        v26[4] = v22;
        *(v26 + 40) = v23;
        v26[6] = _swiftEmptyArrayStorage;
        v26[7] = 0;
        ++v7;
        if (v21 != v14)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void *sub_E6CD4(uint64_t a1, uint64_t a2)
{
  v33 = *(a2 + 16);
  v34 = *(a1 + 16);
  if (v33 >= v34)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  result = sub_3788C(0, v4, 0);
  v6 = v4;
  v35 = a1;
  v31 = a2;
  if (v4)
  {
    v7 = (a2 + 32);
    v8 = (a1 + 56);
    v9 = v4;
    while (1)
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 16);
      v12 = *(v8 - 1);
      v13 = *v8;
      v14 = *v7;

      if (!v12)
      {
        break;
      }

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        result = sub_3788C((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
      }

      _swiftEmptyArrayStorage[2] = v17;
      v18 = &_swiftEmptyArrayStorage[5 * v16];
      v18[4] = v10;
      v8 += 4;
      *(v18 + 40) = v11;
      v18[6] = v12;
      v18[7] = v13;
      v18[8] = v14;
      ++v7;
      if (!--v9)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v20 = v33;
    v19 = v34;
    if (v34 <= v33)
    {
      return _swiftEmptyArrayStorage;
    }

    v32 = v31 + 32;
    v21 = (v35 + 32 * v6 + 56);
    while (v6 < v19)
    {
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_22;
      }

      if (v20 == v6)
      {
        return _swiftEmptyArrayStorage;
      }

      if (v6 >= v20)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_24;
      }

      v36 = *(v21 - 3);
      v23 = *(v21 - 16);
      v24 = *(v21 - 1);
      v25 = *v21;
      v26 = *(v32 + 8 * v6);
      v27 = v6;
      v29 = _swiftEmptyArrayStorage[2];
      v28 = _swiftEmptyArrayStorage[3];

      if (v29 >= v28 >> 1)
      {
        result = sub_3788C((v28 > 1), v29 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v29 + 1;
      v30 = &_swiftEmptyArrayStorage[5 * v29];
      v19 = v34;
      v30[4] = v36;
      *(v30 + 40) = v23;
      v30[6] = v24;
      v30[7] = v25;
      v30[8] = v26;
      v6 = v27 + 1;
      v21 += 4;
      v20 = v33;
      if (v22 == v34)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t WorkServiceGenreRecommendationService.fetchRecommendedGenres(with:)()
{
  v1[110] = v0;
  v2 = sub_1B4414();
  v1[111] = v2;
  v3 = *(v2 - 8);
  v1[112] = v3;
  v4 = *(v3 + 64) + 15;
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v5 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v1[116] = v5;
  v6 = *(v5 - 8);
  v1[117] = v6;
  v7 = *(v6 + 64) + 15;
  v1[118] = swift_task_alloc();

  return _swift_task_switch(sub_E704C, 0, 0);
}

uint64_t sub_E704C()
{
  v1 = v0[118];
  v2 = *(v0[110] + OBJC_IVAR____TtC20BooksPersonalization37WorkServiceGenreRecommendationService_computeService);
  sub_1B4444();
  v9 = v0[118];
  v10 = v0[116];
  sub_1B4454();
  memcpy(v0 + 2, v0 + 56, 0x1B0uLL);
  v11 = v0[31];
  v12 = v0[32];
  v13 = v0[33];
  v14 = v0[34];
  v15 = v0[35];
  v16 = v0[36];
  sub_E7E30(v11, v12);
  sub_726C8((v0 + 2));
  v17 = v0[118];
  if (v12)
  {
    v61 = v0[116];
    v18 = v0[115];
    v19 = v0[114];
    v60 = v0[113];

    sub_1B43F4();

    sub_1B43F4();

    sub_1B43F4();
    sub_E7ED4(v11, v12);
    sub_9AEA0();
    v20 = sub_1B4514();
    v23 = *(v20 + 16);
    if (v23)
    {
      v24 = v20;
      sub_3741C(0, v23, 0);
      v25 = v24;
      v26 = 32;
      while (1)
      {
        v27 = *(v25 + v26);
        if (v27 < 0)
        {
          break;
        }

        v29 = _swiftEmptyArrayStorage[2];
        v28 = _swiftEmptyArrayStorage[3];
        if (v29 >= v28 >> 1)
        {
          sub_3741C((v28 > 1), v29 + 1, 1);
          v25 = v24;
        }

        _swiftEmptyArrayStorage[2] = v29 + 1;
        _swiftEmptyArrayStorage[v29 + 4] = v27;
        v26 += 8;
        if (!--v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:

      v30 = v0[118];
      v31 = v0[116];
      v32 = v0[114];
      v33 = sub_1B4514();
      v34 = *(v33 + 16);
      if (!v34)
      {
LABEL_20:

        v40 = v0[118];
        v41 = v0[116];
        v42 = v0[115];
        v43 = sub_1B4504();
        v52 = *(v43 + 16);
        if (v52)
        {
          v53 = v43;
          sub_37708(0, v52, 0);
          v54 = v53;
          v55 = _swiftEmptyArrayStorage[2];
          v56 = 32;
          do
          {
            v57 = *(v54 + v56);
            v58 = _swiftEmptyArrayStorage[3];
            if (v55 >= v58 >> 1)
            {
              v63 = *(v54 + v56);
              sub_37708((v58 > 1), v55 + 1, 1);
              v57 = v63;
              v54 = v53;
            }

            _swiftEmptyArrayStorage[2] = v55 + 1;
            *&_swiftEmptyArrayStorage[v55 + 4] = v57;
            v56 += 4;
            ++v55;
            --v52;
          }

          while (v52);
        }

        _swiftEmptyArrayStorage[2];
        _swiftEmptyArrayStorage[2];
        _swiftEmptyArrayStorage[2];
        v59 = sub_E6AB4(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

        v64 = sub_E6CD4(v59, _swiftEmptyArrayStorage);

        goto LABEL_21;
      }

      v62 = v33;
      sub_3741C(0, v34, 0);
      v35 = v62;
      v36 = 32;
      while (1)
      {
        v37 = *(v35 + v36);
        if (v37 < 0)
        {
          break;
        }

        v39 = _swiftEmptyArrayStorage[2];
        v38 = _swiftEmptyArrayStorage[3];
        if (v39 >= v38 >> 1)
        {
          sub_3741C((v38 > 1), v39 + 1, 1);
          v35 = v62;
        }

        _swiftEmptyArrayStorage[2] = v39 + 1;
        _swiftEmptyArrayStorage[v39 + 4] = v37;
        v36 += 8;
        if (!--v34)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
    swift_once();
    sub_1B4D84();
    v64 = _swiftEmptyArrayStorage;
    sub_1B4614();

LABEL_21:
    v44 = v0[118];
    v45 = v0[117];
    v46 = v0[116];
    v47 = v0[115];
    v48 = v0[114];
    v49 = v0[111];
    v50 = *(v0[112] + 8);
    v50(v0[113], v49);
    v50(v48, v49);
    v50(v47, v49);
    (*(v45 + 8))(v44, v46);

    v51 = v0[1];

    return v51(v64);
  }

  v21 = v0[117];
  v22 = v0[116];
  sub_E7E80();
  swift_allocError();
  swift_willThrow();
  (*(v21 + 8))(v17, v22);
  v3 = v0[118];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];

  v7 = v0[1];

  return v7();
}

uint64_t sub_E77C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B45D4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v52 - v16;
  __chkstk_darwin(v15);
  v65 = v52 - v18;
  v19 = sub_1B40F4();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[30])
  {
    v54 = v22;
    v55 = v10;
    v60 = v8;
    v61 = v21;
    v56 = a2;
    v57 = v2;
    v25 = a1[33];
    v26 = a1[34];
    v28 = a1[31];
    v27 = a1[32];
    v29 = a1[29];
    v58 = v24;
    sub_1B40E4();

    sub_1B43F4();

    v59 = v17;
    sub_1B43F4();

    v62 = v14;
    sub_1B43F4();
    if (qword_228320 != -1)
    {
      swift_once();
    }

    v53 = qword_22E368;
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C00D0;
    sub_85D3C();
    v31 = sub_1B5594();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    v34 = sub_76888();
    *(v30 + 64) = v34;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1B51F4();
    v35 = v63;
    v36 = v64;
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v34;
    *(v30 + 72) = v35;
    *(v30 + 80) = v36;
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1B51F4();
    v66._countAndFlagsBits = 41;
    v66._object = 0xE100000000000000;
    sub_1B48D4(v66);
    v37 = v63;
    v38 = v64;
    *(v30 + 136) = &type metadata for String;
    *(v30 + 144) = v34;
    *(v30 + 112) = v37;
    *(v30 + 120) = v38;
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1B51F4();
    v39 = v63;
    v40 = v64;
    *(v30 + 176) = &type metadata for String;
    *(v30 + 184) = v34;
    *(v30 + 152) = v39;
    *(v30 + 160) = v40;
    sub_1B4DB4();
    sub_1B4614();

    sub_1B45C4();
    v41 = sub_1B40D4();
    v52[3] = v42;
    v53 = v41;
    v52[1] = off_22EE40;
    v52[2] = qword_22EE38;
    sub_2B0C(&qword_229440, &qword_1BC4E0);
    v43 = v55;
    v44 = *(v55 + 72);
    v45 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1C00E0;
    v47 = *(v43 + 16);
    v47(v46 + v45, v62, v9);
    v48 = v59;
    v47(v46 + v45 + v44, v59, v9);
    v49 = v65;
    v47(v46 + v45 + 2 * v44, v65, v9);

    sub_40F30(v46);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B45A4();
    v50 = *(v43 + 8);
    v50(v62, v9);
    v50(v48, v9);
    v50(v49, v9);
    return (*(v54 + 8))(v58, v61);
  }

  else
  {
    sub_E7E80();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_E7DA0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return WorkServiceGenreRecommendationService.fetchRecommendedGenres(with:)();
}

uint64_t sub_E7E30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_E7E80()
{
  result = qword_22BC50;
  if (!qword_22BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BC50);
  }

  return result;
}

uint64_t sub_E7ED4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_E7F74()
{
  result = qword_22BC80;
  if (!qword_22BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BC80);
  }

  return result;
}

uint64_t SeedBasedRecommendationRequest.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B40F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PersonalizationMetadataRequest.bookIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for PersonalizationMetadataRequest() + 20));
}

uint64_t type metadata accessor for PersonalizationMetadataRequest()
{
  result = qword_22BCE0;
  if (!qword_22BCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonalizationMetadataRequest.init(uuid:bookIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B40F4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PersonalizationMetadataRequest();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_E8150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B40F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_E8220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B40F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_E82D8()
{
  sub_1B40F4();
  if (v0 <= 0x3F)
  {
    sub_B90C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of PersonalizationMetadataServiceType.fetchPersonalizationMetadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

uint64_t sub_E8484@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_1B40F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v103 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B45D4();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v21 = a1[44];
  if (v21)
  {
    v104 = v20;
    v105 = v17;
    v100 = &v95 - v18;
    v101 = v19;
    v22 = a1[41];
    v117 = a1[42];
    v118 = v22;
    v98 = a1[43];
    v99 = v21;
    v23 = qword_228328;

    if (v23 != -1)
    {
      goto LABEL_77;
    }

    while (1)
    {
      v102 = a4;
      v119 = v5;
      sub_2B0C(&qword_22A048, &unk_1BFC60);
      v24 = swift_allocObject();
      v97 = xmmword_1BCA80;
      *(v24 + 16) = xmmword_1BCA80;
      v25 = a2[2];
      *(v24 + 56) = &type metadata for Int;
      *(v24 + 64) = &protocol witness table for Int;
      *(v24 + 32) = v25;
      sub_1B4DB4();
      sub_1B4614();

      v26 = _swiftEmptyArrayStorage;
      if (!v25)
      {
LABEL_71:
        v85 = v100;
        sub_156010(v26, 0x726F63536B6F6F62, 0xEB00000000676E69, v100);

        v86 = v101;
        (*(v101 + 16))(v104, v85, v105);
        v87 = v103;
        sub_1B40E4();
        v134 = sub_1B40D4();
        v120 = v88;
        (*(v11 + 8))(v87, v10);
        v118 = *aBookScoring;
        sub_2B0C(&qword_229440, &qword_1BC4E0);
        v89 = sub_1B4414();
        v90 = *(v89 - 8);
        v91 = *(v90 + 72);
        v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = v97;

        sub_1B43F4();
        sub_40F30(v93);
        swift_setDeallocating();
        (*(v90 + 8))(v93 + v92, v89);
        swift_deallocClassInstance();
        sub_1B45A4();
        return (*(v86 + 8))(v85, v105);
      }

      v95 = v11;
      v96 = v10;
      v133 = _swiftEmptyArrayStorage;
      sub_3782C(0, v25, 0);
      a4 = 0;
      v26 = v133;
      v111 = a2 + 4;
      v107 = -v118;
      v106 = -v117;
      v11 = 0xE000000000000000;
      v109 = a3;
      v110 = v25;
      v108 = xmmword_1C5FB0;
      while (1)
      {
        v116 = v26;
        v27 = &v111[7 * a4];
        a2 = *v27;
        v28 = *(v27 + 8);
        v5 = v27[2];
        LODWORD(v120) = *(v27 + 24);
        v134 = v27[4];
        v29 = v27[6];
        v30 = a3[2];
        v115 = v29;
        if (!v30)
        {
          goto LABEL_9;
        }

        v31 = sub_43124(a2);
        if (v32)
        {
          v33 = a3[7] + 88 * v31;
          v34 = *(v33 + 16);
          v127 = *v33;
          v128 = v34;
          v36 = *(v33 + 48);
          v35 = *(v33 + 64);
          v37 = *(v33 + 32);
          v132 = *(v33 + 80);
          v130 = v36;
          v131 = v35;
          v129 = v37;
          v38 = *(v33 + 32);
          v39 = *(v33 + 64);
          v124 = *(v33 + 48);
          v125 = v39;
          v126 = *(v33 + 80);
          v40 = *(v33 + 16);
          *&v121[88] = *v33;
          v122 = v40;
          v123 = v38;
          sub_43688(v5, v120);

          sub_5EDD8(&v127, v121);
          v41 = Book.Metadata.genreIDs.getter();
          v42 = v128;

          sub_85554(&v127);
          if (!v28)
          {
            goto LABEL_8;
          }
        }

        else
        {
LABEL_9:
          sub_43688(v5, v120);

          v41 = _swiftEmptySetSingleton;
          v42 = _swiftEmptySetSingleton;
          if (!v28)
          {
LABEL_8:
            v43 = sub_1B5604();

            v44 = v43 & 1;
            goto LABEL_11;
          }
        }

        v44 = 1;
LABEL_11:
        v114 = v44;
        v45 = v119;
        a3 = sub_7EC1C(v41);
        v10 = v45;

        v46 = sub_7EC1C(v42);

        *&v127 = a2;
        v47 = sub_1B5594();
        v112 = v48;
        v113 = v47;
        v49 = a3[2];
        v119 = v45;
        if (v118 >= v49)
        {
          v56 = v118;
          a2 = a3;
          goto LABEL_28;
        }

        *&v127 = a3;

        sub_97098();
        if ((v118 & 0x8000000000000000) != 0)
        {
          break;
        }

        a2 = v127;
        v50 = *(v127 + 16);
        if (v50 >= v118)
        {
          v51 = v118;
        }

        else
        {
          v51 = *(v127 + 16);
        }

        if (v118)
        {
          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        if (v50 == v52)
        {
        }

        else if (v52)
        {
          sub_2B0C(&qword_229258, &unk_1BCC20);
          v53 = swift_allocObject();
          v54 = j__malloc_size(v53);
          v55 = v54 - 32;
          if (v54 < 32)
          {
            v55 = v54 - 17;
          }

          v53[2] = v52;
          v53[3] = 2 * (v55 >> 4);
          swift_arrayInitWithCopy();

          a2 = v53;
        }

        else
        {

          a2 = _swiftEmptyArrayStorage;
        }

        v56 = v118;
LABEL_28:
        v10 = a2[2];
        v57 = v56 - v10;
        if (v56 == v10)
        {
          goto LABEL_39;
        }

        if ((v56 - v10) < 0)
        {
          goto LABEL_74;
        }

        v58 = sub_1B4B34();
        *(v58 + 16) = v57;
        v59 = (v58 + 32);
        if (v57 > 3)
        {
          v60 = v57 & 0x7FFFFFFFFFFFFFFCLL;
          v59 += 2 * (v57 & 0x7FFFFFFFFFFFFFFCLL);
          v61 = (v58 + 64);
          v62 = v57 & 0x7FFFFFFFFFFFFFFCLL;
          v63 = v108;
          do
          {
            *(v61 - 2) = v63;
            *(v61 - 1) = v63;
            *v61 = v63;
            v61[1] = v63;
            v61 += 4;
            v62 -= 4;
          }

          while (v62);
          if (v57 == v60)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v60 = 0;
        }

        v64 = v107 + v60 + v10;
        do
        {
          *v59 = 0;
          v59[1] = 0xE000000000000000;
          v59 += 2;
          v65 = __CFADD__(v64++, 1);
        }

        while (!v65);
LABEL_38:
        *&v127 = a2;
        sub_5FC38(v58);
        a2 = v127;
LABEL_39:
        v10 = v117;
        if (v117 >= v46[2])
        {
          a3 = v46;
        }

        else
        {
          *&v127 = v46;

          sub_97098();
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_75;
          }

          a3 = v127;
          v66 = *(v127 + 16);
          if (v66 >= v10)
          {
            v67 = v10;
          }

          else
          {
            v67 = *(v127 + 16);
          }

          if (v10)
          {
            v68 = v67;
          }

          else
          {
            v68 = 0;
          }

          if (v66 == v68)
          {
          }

          else if (v68)
          {
            sub_2B0C(&qword_229258, &unk_1BCC20);
            v69 = swift_allocObject();
            v70 = j__malloc_size(v69);
            v71 = v70 - 32;
            if (v70 < 32)
            {
              v71 = v70 - 17;
            }

            v69[2] = v68;
            v69[3] = 2 * (v71 >> 4);
            swift_arrayInitWithCopy();

            a3 = v69;
          }

          else
          {

            a3 = _swiftEmptyArrayStorage;
          }
        }

        v10 = a3[2];
        v72 = v117 - v10;
        v73 = v110;
        if (v117 != v10)
        {
          if ((v117 - v10) < 0)
          {
            goto LABEL_76;
          }

          v74 = sub_1B4B34();
          *(v74 + 16) = v72;
          v75 = (v74 + 32);
          if (v72 <= 3)
          {
            v76 = 0;
            goto LABEL_63;
          }

          v76 = v72 & 0x7FFFFFFFFFFFFFFCLL;
          v75 += 2 * (v72 & 0x7FFFFFFFFFFFFFFCLL);
          v77 = (v74 + 64);
          v78 = v72 & 0x7FFFFFFFFFFFFFFCLL;
          v79 = v108;
          do
          {
            *(v77 - 2) = v79;
            *(v77 - 1) = v79;
            *v77 = v79;
            v77[1] = v79;
            v77 += 4;
            v78 -= 4;
          }

          while (v78);
          if (v72 != v76)
          {
LABEL_63:
            v80 = v106 + v76 + v10;
            do
            {
              *v75 = 0;
              v75[1] = 0xE000000000000000;
              v75 += 2;
              v65 = __CFADD__(v80++, 1);
            }

            while (!v65);
          }

          *&v127 = a3;
          sub_5FC38(v74);
          sub_43CE0(v5, v120);

          a3 = v127;
          goto LABEL_67;
        }

        sub_43CE0(v5, v120);

LABEL_67:
        v26 = v116;
        v133 = v116;
        v82 = v116[2];
        v81 = v116[3];
        if (v82 >= v81 >> 1)
        {
          sub_3782C((v81 > 1), v82 + 1, 1);
          v26 = v133;
        }

        ++a4;
        v26[2] = v82 + 1;
        v83 = &v26[5 * v82];
        v84 = v112;
        v83[4] = v113;
        v83[5] = v84;
        *(v83 + 12) = v114;
        v83[7] = a2;
        v83[8] = a3;
        a3 = v109;
        if (a4 == v73)
        {
          v11 = v95;
          v10 = v96;
          goto LABEL_71;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      swift_once();
    }
  }

  sub_E97F0();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_E8EA8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v8 = *(a1 + 16);

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v11 = *a4;
  v12 = sub_43124(v9);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_17F7E0(v17, v5 & 1);
    v19 = *a4;
    v12 = sub_43124(v9);
    if ((v18 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v12 = sub_1B5784();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v12;
  sub_186378();
  v12 = v22;
  if (v18)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_29;
  }

LABEL_12:
  v23 = *a4;
  *(*a4 + 8 * (v12 >> 6) + 64) |= 1 << v12;
  *(v23[6] + 8 * v12) = v9;
  *(v23[7] + 8 * v12) = v10;
  v24 = v23[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v16)
  {
    v23[2] = v25;
    v5 = v8 - 1;
    if (v8 != 1)
    {
      v8 = 0;
      do
      {
        v26 = v8 + 1;
        if ((v8 + 1) >= *(a1 + 16))
        {
          goto LABEL_27;
        }

        v27 = *(a2 + 16);
        if (v26 == v27)
        {
          break;
        }

        if (v26 >= v27)
        {
          goto LABEL_28;
        }

        v9 = *(a1 + 40 + 8 * v8);
        v10 = *(a2 + 40 + 8 * v8);
        v28 = *a4;
        v29 = sub_43124(v9);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v16 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v16)
        {
          goto LABEL_25;
        }

        v18 = v30;
        if (v28[3] < v33)
        {
          sub_17F7E0(v33, 1);
          v34 = *a4;
          v29 = sub_43124(v9);
          if ((v18 & 1) != (v35 & 1))
          {
            goto LABEL_6;
          }
        }

        if (v18)
        {
          goto LABEL_9;
        }

        v36 = *a4;
        *(*a4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v36[6] + 8 * v29) = v9;
        *(v36[7] + 8 * v29) = v10;
        v37 = v36[2];
        v16 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v16)
        {
          goto LABEL_26;
        }

        v36[2] = v38;
      }

      while (v5 != ++v8);
    }

LABEL_24:

    return swift_bridgeObjectRelease_n();
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1B5084(30);
  v39._object = 0x80000000001D57D0;
  v39._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1B48D4(v39);
  sub_1B51F4();
  v40._countAndFlagsBits = 39;
  v40._object = 0xE100000000000000;
  sub_1B48D4(v40);
  result = sub_1B5234();
  __break(1u);
  return result;
}

void *sub_E924C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    sub_2B0C(&qword_22BD20, &qword_1C6110);
    v5 = sub_1B52B4();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v5;

  sub_E8EA8(a1, a2, 1, &v7);
  return v7;
}

unint64_t sub_E9318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v6 = sub_1B4414();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v31 = a3;
  v32 = a4;
  v15 = v30;
  sub_1B4444();
  if (!v15)
  {
    v16 = v29;
    v27 = v6;
    v30 = v11;
    sub_1B4454();
    memcpy(v34, v33, 0x1B0uLL);
    v17 = v34[44];

    sub_726C8(v34);
    if (v17)
    {
      sub_1B43F4();
      sub_9AEA0();
      v18 = sub_1B4504();
      (*(v16 + 8))(v9, v27);
      v19 = *(v18 + 16);
      if (v19)
      {
        v29 = v10;
        v33[0] = _swiftEmptyArrayStorage;
        sub_37708(0, v19, 0);
        v20 = v33[0];
        v21 = *(v33[0] + 16);
        v22 = 32;
        do
        {
          v23 = *(v18 + v22);
          v33[0] = v20;
          v24 = v20[3];
          if (v21 >= v24 >> 1)
          {
            sub_37708((v24 > 1), v21 + 1, 1);
            v20 = v33[0];
          }

          v20[2] = v21 + 1;
          *&v20[v21 + 4] = v23;
          v22 += 4;
          ++v21;
          --v19;
        }

        while (v19);

        v10 = v29;
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      if (v20[2] == *(v28 + 16))
      {

        v11 = sub_E924C(v25, v20);
      }

      else
      {

        if (qword_228328 != -1)
        {
          swift_once();
        }

        sub_1B4D94();
        sub_1B4614();
        v11 = sub_13085C(_swiftEmptyArrayStorage);
      }

      (*(v30 + 8))(v14, v10);
    }

    else
    {
      sub_E97F0();
      swift_allocError();
      swift_willThrow();
      (*(v30 + 8))(v14, v10);
    }
  }

  return v11;
}

unint64_t sub_E97F0()
{
  result = qword_22BD18;
  if (!qword_22BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BD18);
  }

  return result;
}

unint64_t sub_E9858()
{
  result = qword_22BD28;
  if (!qword_22BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BD28);
  }

  return result;
}

uint64_t sub_E98AC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v19 = *(result + 16);
  if (v19)
  {
    v4 = 0;
    v5 = result + 32;
    v18 = result + 32;
    while (1)
    {
      v6 = v5 + 56 * v4;
      v7 = *v6;
      v21 = *(v6 + 8);
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v10 = *(v6 + 32);
      v20 = *(v6 + 40);
      v11 = *(v6 + 48);
      v12 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      v13 = a2;
      v14 = *(v12 + 40);
      result = sub_1B57E4();
      v15 = -1 << *(v12 + 32);
      v16 = result & ~v15;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      ++v4;
      v17 = ~v15;
      while (*(*(v12 + 48) + 8 * v16) != v7)
      {
        v16 = (v16 + 1) & v17;
        if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v5 = v18;
      a2 = v13;
      if (v4 == v19)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    *a3 = v7;
    a3[1] = v21;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v20;
    a3[6] = v11;
    sub_43688(v8, v9);
  }

  else
  {
LABEL_10:
    a3[6] = 0;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
  }

  return result;
}

Swift::Int sub_E9A08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BF8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2B0C(&qword_22BDE8, &qword_1C6118);
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_EB3F8(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_E9B64(uint64_t a1, void *a2)
{
  *(v3 + 1152) = v2;
  *(v3 + 1144) = a2;
  v6 = sub_2B0C(&qword_22BDE0, &qword_1C6108);
  *(v3 + 1160) = v6;
  v7 = *(v6 - 8);
  *(v3 + 1168) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 1176) = swift_task_alloc();
  v9 = *(type metadata accessor for AttributeAffinityResult() - 8);
  *(v3 + 1184) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 1192) = swift_task_alloc();
  *(v3 + 1337) = *a1;
  v11 = *(a1 + 16);
  *(v3 + 1200) = *(a1 + 8);
  *(v3 + 1208) = v11;
  *(v3 + 1216) = a2[7];
  *(v3 + 1224) = a2[53];
  *(v3 + 1232) = a2[59];

  return _swift_task_switch(sub_E9CC8, 0, 0);
}

uint64_t sub_E9CC8()
{
  v87 = v0;
  v1 = v0;
  v2 = v0[150];
  if (v2)
  {
    v3 = sub_157084(v2);
    v0[157] = v3;
    v4 = v0[144];
    v6 = v4[5];
    v5 = v4[6];
    sub_2698(v4 + 2, v6);
    v7 = *(v3 + 16);
    if (v7)
    {
      v8 = sub_351DC(v7, 0);
      v9 = sub_3F4A0(&v86, v8 + 32, v7, v3);

      result = sub_417B8();
      if (v9 != v7)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return result;
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v83 = v1[148];
    v27 = (*(v5 + 8))(sub_EB2A0, 0, v8, &type metadata for UInt64, &protocol witness table for UInt64, v6, v5);

    sub_2B0C(&qword_22BD20, &qword_1C6110);
    result = sub_1B5294();
    v28 = result;
    v29 = 0;
    v30 = 1 << *(v27 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v27 + 64);
    v33 = (v30 + 63) >> 6;
    v81 = result + 64;
    if (v32)
    {
      while (1)
      {
        v34 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
LABEL_18:
        v37 = v34 | (v29 << 6);
        v38 = v1;
        v39 = v1[149];
        v40 = *(*(v27 + 48) + 8 * v37);
        sub_42C00(*(v27 + 56) + *(v83 + 72) * v37, v39);
        v41 = *v39;
        result = sub_EBB90(v39);
        *(v81 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        *(v28[6] + 8 * v37) = v40;
        *(v28[7] + 8 * v37) = v41;
        v42 = v28[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          break;
        }

        v28[2] = v44;
        v1 = v38;
        if (!v32)
        {
          goto LABEL_13;
        }
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_13:
    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v29 >= v33)
      {
        break;
      }

      v36 = *(v27 + 64 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v32 = (v36 - 1) & v36;
        goto LABEL_18;
      }
    }

    v45 = v28[2];
    v46 = _swiftEmptyArrayStorage;
    if (v45)
    {
      v46 = sub_354C8(v28[2], 0);
      v47 = sub_3FC80(&v86, v46 + 4, v45, v28);

      result = sub_417B8();
      if (v47 != v45)
      {
        goto LABEL_49;
      }
    }

    v86 = v46;
    sub_E9A08(&v86);

    v48 = v86;
    v49 = *(v86 + 2);
    if (v49)
    {
      v86 = _swiftEmptyArrayStorage;
      sub_3741C(0, v49, 0);
      v50 = v86;
      v51 = *(v86 + 2);
      v52 = 32;
      do
      {
        v53 = *&v48[v52];
        v86 = v50;
        v54 = *(v50 + 3);
        if (v51 >= v54 >> 1)
        {
          sub_3741C((v54 > 1), v51 + 1, 1);
          v50 = v86;
        }

        *(v50 + 2) = v51 + 1;
        *&v50[8 * v51 + 32] = v53;
        v52 += 16;
        ++v51;
        --v49;
      }

      while (v49);

      v55 = *(v50 + 2);
      if (v55)
      {
LABEL_29:
        v56 = 0;
        v84 = v1;
        v57 = v1[154];
        v58 = _swiftEmptyArrayStorage;
        do
        {
          v61 = *&v50[8 * v56 + 32];
          v62 = *(v57 + 16);
          v63 = (v57 + 32);
          while (v62)
          {
            v64 = *v63++;
            --v62;
            if (v64 == v61)
            {
              goto LABEL_33;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_3741C(0, *(v58 + 2) + 1, 1);
            v58 = v86;
          }

          v60 = *(v58 + 2);
          v59 = *(v58 + 3);
          if (v60 >= v59 >> 1)
          {
            sub_3741C((v59 > 1), v60 + 1, 1);
            v58 = v86;
          }

          *(v58 + 2) = v60 + 1;
          *&v58[8 * v60 + 32] = v61;
LABEL_33:
          ++v56;
        }

        while (v56 != v55);

        v1 = v84;
        goto LABEL_43;
      }
    }

    else
    {

      v50 = _swiftEmptyArrayStorage;
      v55 = _swiftEmptyArrayStorage[2];
      if (v55)
      {
        goto LABEL_29;
      }
    }

    v58 = _swiftEmptyArrayStorage;
LABEL_43:
    v66 = *(v1 + 1337);
    v67 = v1[144];
    v68 = sub_43174(v1[152], v58);
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v1[159] = v68;
    v1[160] = v69;
    v1[161] = v71;
    v1[162] = v73;
    v75 = v67[10];
    v76 = v67[11];
    sub_2698(v67 + 7, v75);
    v77 = sub_410CC(v70, v72, v74);
    v1[163] = v77;
    *(v1 + 1336) = v66;
    v78 = *(v76 + 8);
    v85 = (v78 + *v78);
    v79 = v78[1];
    v80 = swift_task_alloc();
    v1[164] = v80;
    *v80 = v1;
    v80[1] = sub_EAC5C;

    return (v85)(v77, v1 + 167, v75, v76);
  }

  v11 = v0[154];
  v12 = v1[153];
  v13 = v1[152];
  v14 = v1[144];
  v15 = v1[143];
  v16 = v14[15];
  v17 = v14[16];
  sub_2698(v14 + 12, v16);
  v18 = v15[2];
  v19 = *(v15 + 6);
  v20 = *v15;
  *(v1 + 2) = v15[1];
  *(v1 + 3) = v18;
  *(v1 + 1) = v20;
  v1[8] = v19;
  v1[9] = v13;
  memcpy(v1 + 10, v15 + 4, 0x168uLL);
  v1[55] = v12;
  v21 = *(v15 + 58);
  v22 = v15[28];
  *(v1 + 28) = v15[27];
  *(v1 + 29) = v22;
  v1[60] = v21;
  v1[61] = v11;
  memcpy(v1 + 62, v15 + 30, 0x280uLL);
  v23 = *(v17 + 8);
  v82 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v1[155] = v25;
  *v25 = v1;
  v25[1] = sub_EA490;
  v26 = v1[153];

  return (v82)(v1 + 2, v26, v16, v17);
}

uint64_t sub_EA490(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1240);
  v6 = *v2;
  *(*v2 + 1248) = v1;

  if (v1)
  {
    v7 = sub_EABEC;
  }

  else
  {
    *(v4 + 1264) = a1;
    v7 = sub_EA5B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_EA5B8()
{
  v68 = v0;
  v1 = v0[158];
  v63 = v0[156];
  v0[157] = v1;
  v2 = v0[144];
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = sub_351DC(v5, 0);
    v7 = sub_3F4A0(&v67, v6 + 32, v5, v1);

    result = sub_417B8();
    if (v7 != v5)
    {
LABEL_50:
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v64 = *(v66 + 1184);
  v9 = (*(v4 + 8))(sub_EB2A0, 0, v6, &type metadata for UInt64, &protocol witness table for UInt64, v3, v4);

  sub_2B0C(&qword_22BD20, &qword_1C6110);
  result = sub_1B5294();
  v10 = result;
  v11 = 0;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (v14)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = *(v66 + 1192);
      v22 = *(*(v9 + 48) + 8 * v20);
      sub_42C00(*(v9 + 56) + *(v64 + 72) * v20, v21);
      v23 = *v21;
      result = sub_EBB90(v21);
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v10[6] + 8 * v20) = v22;
      *(v10[7] + 8 * v20) = v23;
      v24 = v10[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v10[2] = v26;
      if (!v14)
      {
        goto LABEL_9;
      }
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_9:
  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v11 >= v15)
    {
      break;
    }

    v19 = *(v9 + 64 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_14;
    }
  }

  v27 = v10[2];
  if (v27)
  {
    v28 = sub_354C8(v10[2], 0);
    v29 = sub_3FC80(&v67, v28 + 4, v27, v10);

    sub_417B8();
    if (v29 == v27)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_21:
  v67 = v28;
  sub_E9A08(&v67);
  if (v63)
  {
  }

  v30 = v67;
  v31 = *(v67 + 2);
  if (v31)
  {
    v67 = _swiftEmptyArrayStorage;
    sub_3741C(0, v31, 0);
    v32 = v67;
    v33 = *(v67 + 2);
    v34 = 32;
    do
    {
      v35 = *&v30[v34];
      v67 = v32;
      v36 = *(v32 + 3);
      if (v33 >= v36 >> 1)
      {
        sub_3741C((v36 > 1), v33 + 1, 1);
        v32 = v67;
      }

      *(v32 + 2) = v33 + 1;
      *&v32[8 * v33 + 32] = v35;
      v34 += 16;
      ++v33;
      --v31;
    }

    while (v31);

    v37 = *(v32 + 2);
    if (v37)
    {
LABEL_31:
      v38 = 0;
      v39 = *(v66 + 1232);
      v40 = _swiftEmptyArrayStorage;
      do
      {
        v43 = *&v32[8 * v38 + 32];
        v44 = *(v39 + 16);
        v45 = (v39 + 32);
        while (v44)
        {
          v46 = *v45++;
          --v44;
          if (v46 == v43)
          {
            goto LABEL_35;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3741C(0, *(v40 + 2) + 1, 1);
          v40 = v67;
        }

        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        if (v42 >= v41 >> 1)
        {
          sub_3741C((v41 > 1), v42 + 1, 1);
          v40 = v67;
        }

        *(v40 + 2) = v42 + 1;
        *&v40[8 * v42 + 32] = v43;
LABEL_35:
        ++v38;
      }

      while (v38 != v37);

      goto LABEL_45;
    }
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
    v37 = _swiftEmptyArrayStorage[2];
    if (v37)
    {
      goto LABEL_31;
    }
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_45:
  v48 = *(v66 + 1337);
  v49 = *(v66 + 1152);
  v50 = sub_43174(*(v66 + 1216), v40);
  v52 = v51;
  v54 = v53;
  v56 = v55;
  *(v66 + 1272) = v50;
  *(v66 + 1280) = v51;
  *(v66 + 1288) = v53;
  *(v66 + 1296) = v55;
  v57 = v49[10];
  v58 = v49[11];
  sub_2698(v49 + 7, v57);
  v59 = sub_410CC(v52, v54, v56);
  *(v66 + 1304) = v59;
  *(v66 + 1336) = v48;
  v60 = *(v58 + 8);
  v65 = (v60 + *v60);
  v61 = v60[1];
  v62 = swift_task_alloc();
  *(v66 + 1312) = v62;
  *v62 = v66;
  v62[1] = sub_EAC5C;

  return v65(v59, v66 + 1336, v57, v58);
}

uint64_t sub_EABEC()
{
  v1 = v0[156];
  v2 = v0[149];
  v3 = v0[147];

  v4 = v0[1];

  return v4();
}

uint64_t sub_EAC5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1312);
  v9 = *v2;
  v3[165] = a1;
  v3[166] = v1;

  v5 = v3[163];
  if (v1)
  {
    v6 = v3[157];

    v7 = sub_EB228;
  }

  else
  {

    v7 = sub_EAD90;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_EAD90()
{
  v62 = v0;
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1208);

  sub_495E8(v1);
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(v1 + 56) + 568 * (v10 | (v8 << 6));
      if ((*(v11 + 40) & 1) == 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v11 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_33008(0, v9[2] + 1, 1, v9);
      v9 = result;
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_33008((v14 > 1), v15 + 1, 1, v9);
      v9 = result;
    }

    v9[2] = v15 + 1;
    v9[v15 + 4] = v13;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  v16 = v54;
  v17 = v54[157];

  v18 = v9[2];
  if (v18)
  {
    v19 = v9 + 4;
    do
    {
      v20 = *v19++;
      sub_111CE0(&v56, v20);
      --v18;
    }

    while (v18);
  }

  v21 = v54[165];
  v22 = v54[162];
  v23 = v54[161];

  v24 = v22 >> 1;

  if (v23 != v22 >> 1)
  {
    v31 = v54[165];
    v53 = v54[146];
    v32 = v54[166];
    v33 = v54[161];
    v52 = _swiftEmptyArrayStorage;
LABEL_25:
    if (v33 >= v16[161])
    {
      if (v33 <= v24)
      {
        v34 = v24;
      }

      else
      {
        v34 = v33;
      }

      while (v34 != v33)
      {
        if (*(v31 + 16) && (v35 = v16[165], v36 = sub_43124(*(v16[160] + 8 * v33)), (v37 & 1) != 0))
        {
          v38 = v54[147];
          v39 = v54[145];
          (*(v53 + 16))(v38, *(v31 + 56) + *(v53 + 72) * v36, v39);
          sub_1B4394();
          v40 = v54[142];
          v16 = v54;
          (*(v53 + 8))(v38, v39);
        }

        else
        {
          v40 = _swiftEmptyArrayStorage;
        }

        sub_E98AC(v40, &v55, &v56);

        v41 = v60;
        if (v60)
        {
          v42 = v58;
          v51 = v61;
          v43 = v56;
          v49 = v57;
          v44 = v59;
          sub_111CE0(&v56, v56);
          result = swift_isUniquelyReferenced_nonNull_native();
          v50 = v42;
          if ((result & 1) == 0)
          {
            result = sub_339D8(0, *(v52 + 2) + 1, 1, v52);
            v52 = result;
          }

          v46 = *(v52 + 2);
          v45 = *(v52 + 3);
          if (v46 >= v45 >> 1)
          {
            result = sub_339D8((v45 > 1), v46 + 1, 1, v52);
            v52 = result;
          }

          *(v52 + 2) = v46 + 1;
          v47 = &v52[56 * v46];
          *(v47 + 4) = v43;
          v47[40] = v49 & 1;
          *(v47 + 6) = v50;
          v47[56] = v44;
          *(v47 + 8) = v41;
          *(v47 + 72) = v51;
          if (v24 - 1 == v33++)
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }

        if (v24 == ++v33)
        {
          goto LABEL_21;
        }
      }
    }

    goto LABEL_45;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_21:
  v25 = v16[165];
  v26 = v16[159];
  v27 = v16[149];
  v28 = v16[147];
  swift_bridgeObjectRelease_n();
  v29 = Array<A>.positionScored()(v52);
  swift_unknownObjectRelease();

  v30 = v16[1];

  return v30(v29);
}

uint64_t sub_EB228()
{
  v1 = v0[159];
  swift_unknownObjectRelease();
  v2 = v0[166];
  v3 = v0[149];
  v4 = v0[147];

  v5 = v0[1];

  return v5();
}

void *sub_EB2A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  memcpy(__dst, (a1 + 168), 0x179uLL);
  result = sub_42D84(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v3, __dst, sizeof(v3));
    if ((sub_DF2A8() & 1) == 0)
    {
      return _swiftEmptySetSingleton;
    }

    return v1;
  }

  return result;
}

uint64_t sub_EB350(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return sub_E9B64(a1, a2);
}

uint64_t sub_EB3F8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_EB98C((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_32F04((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_EB98C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_EB98C(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_EBB90(uint64_t a1)
{
  v2 = type metadata accessor for AttributeAffinityResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_EBBEC(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
LABEL_5:
    v6 = *(a2 + 16);
    v7 = a2 + 32;
    v4 = _swiftEmptyArrayStorage;
    v8 = v6;
LABEL_6:
    v9 = v7 + 40 * v8;
    while (v8)
    {
      if (--v8 >= v6)
      {
        __break(1u);
        return _swiftEmptyArrayStorage;
      }

      v10 = (v9 - 40);
      v11 = *(v9 - 8);
      v9 -= 40;
      if (v11 >= 0.0)
      {
        v12 = *v10;
        v13 = *(v10 + 8);
        v14 = v10[2];
        v15 = v10[3];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3788C(0, v4[2] + 1, 1);
          v4 = v21;
        }

        v18 = v4[2];
        v17 = v4[3];
        if (v18 >= v17 >> 1)
        {
          sub_3788C((v17 > 1), v18 + 1, 1);
          v4 = v21;
        }

        v4[2] = v18 + 1;
        v19 = &v4[5 * v18];
        v19[4] = v12;
        *(v19 + 40) = v13;
        v19[6] = v14;
        v19[7] = v15;
        *(v19 + 8) = v11;
        goto LABEL_6;
      }
    }

    return v4;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_35418(*(a2 + 16), 0);
  v5 = sub_3F7C0(&v21, (v4 + 4), v2, a2);

  if (v5 != v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  return v4;
}

Swift::Int sub_EBD88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BD0(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 64];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 + 2))
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = v13[32];
          v16 = *v13;
          *(v13 + 24) = *(v13 - 1);
          v17 = *(v13 + 5);
          v18 = *(v13 + 6);
          *(v13 + 40) = v16;
          *(v13 + 7) = *(v13 + 2);
          *(v13 - 2) = v14;
          *(v13 - 8) = v15;
          *v13 = v17;
          *(v13 + 1) = v18;
          *(v13 + 2) = v11;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_ED364(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_EBEF8()
{
  v1 = v0[2];

  sub_2BF8(v0 + 3);
  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_EBF64(uint64_t a1, _BYTE *a2)
{
  *(v3 + 3424) = v2;
  *(v3 + 3416) = a1;
  *(v3 + 3489) = *a2;
  *(v3 + 3490) = a2[1];
  return _swift_task_switch(sub_EBF98, 0, 0);
}

uint64_t sub_EBF98()
{
  v1 = *(*(v0 + 3424) + 16);
  v2 = swift_task_alloc();
  *(v0 + 3432) = v2;
  *v2 = v0;
  v2[1] = sub_EC048;

  return sub_EC9EC(v0 + 3488);
}

uint64_t sub_EC048()
{
  v2 = *(*v1 + 3432);
  v5 = *v1;
  *(*v1 + 3440) = v0;

  if (v0)
  {
    v3 = sub_EC950;
  }

  else
  {
    v3 = sub_EC15C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_EC15C()
{
  v1 = *(v0 + 3488);
  if (v1 == 4)
  {
    v2 = *(v0 + 3424);
    v3 = v2[6];
    v4 = v2[7];
    sub_2698(v2 + 3, v3);
    v5 = *(v4 + 16);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 3448) = v7;
    *v7 = v0;
    v7[1] = sub_EC2F8;

    return v11(v0 + 16, v3, v4);
  }

  else
  {
    sub_ED310();
    swift_allocError();
    *v9 = v1;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_EC2F8()
{
  v2 = *(*v1 + 3448);
  v5 = *v1;
  *(*v1 + 3456) = v0;

  if (v0)
  {
    v3 = sub_EC968;
  }

  else
  {
    v3 = sub_EC40C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_EC40C()
{
  v13 = v0;
  LODWORD(v1) = *(v0 + 3490);
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  if (v1 == 5)
  {
    v1 = 0x402030100uLL >> (8 * *(v0 + 1145));
  }

  v2 = *(v0 + 3456);
  v3 = *(v0 + 3424);
  v12[0] = v1;
  sub_ECF40(v12, v0 + 3376);
  if (v2)
  {
    sub_2B54(v0 + 1136);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 3400);
    v7 = *(v0 + 3408);
    sub_2698((v0 + 3376), v6);
    memcpy((v0 + 2256), (v0 + 1136), 0x460uLL);
    v8 = *(v7 + 8);
    v11 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 3464) = v10;
    *v10 = v0;
    v10[1] = sub_EC5DC;

    return v11(v0 + 2256, v6, v7);
  }
}

uint64_t sub_EC5DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3464);
  v7 = *v2;
  *(v3 + 3472) = a1;
  *(v3 + 3480) = v1;

  if (v1)
  {
    v5 = sub_EC980;
  }

  else
  {
    v5 = sub_EC6F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_EC6F4()
{
  v31 = v0;
  v1 = *(v0 + 3480);
  v30 = *(v0 + 3472);

  sub_EBD88(&v30);
  if (v1)
  {
  }

  else
  {
    v3 = *(v0 + 3472);
    v4 = *(v0 + 3489);

    v5 = sub_EBBEC(v4, v30);

    result = v5;
    v6 = v5[2];
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 4;
      v9 = _swiftEmptyArrayStorage;
      v28 = result;
      v29 = v0;
      v27 = result + 32;
      while (2)
      {
        v10 = *(result + 16);
        v11 = *(v0 + 1592);
        if (v7 > v10)
        {
          v10 = v7;
        }

LABEL_9:
        if (v7 == v10)
        {
          __break(1u);
          return result;
        }

        v12 = &v8[5 * v7];
        v13 = *v12;
        ++v7;
        v14 = *(v11 + 16);
        v15 = (v11 + 32);
        while (v14)
        {
          v16 = *v15++;
          --v14;
          if (v16 == v13)
          {
            if (v7 != v6)
            {
              goto LABEL_9;
            }

            goto LABEL_22;
          }
        }

        v17 = *(v12 + 8);
        v18 = v12[2];
        v19 = v12[3];
        v20 = v12[4];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3788C(0, *(v9 + 2) + 1, 1);
          v9 = v30;
        }

        v23 = *(v9 + 2);
        v22 = *(v9 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_3788C((v22 > 1), v23 + 1, 1);
          v9 = v30;
        }

        *(v9 + 2) = v23 + 1;
        v24 = &v9[40 * v23];
        *(v24 + 4) = v13;
        v24[40] = v17;
        *(v24 + 6) = v18;
        *(v24 + 7) = v19;
        *(v24 + 8) = v20;
        result = v28;
        v0 = v29;
        v8 = v27;
        if (v7 != v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

LABEL_22:
    v25 = *(v0 + 3416);

    *v25 = v9;
    memcpy(v25 + 1, (v0 + 1136), 0x460uLL);
    sub_2BF8((v0 + 3376));
    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_EC980()
{
  sub_2B54((v0 + 142));
  sub_2BF8(v0 + 422);
  v1 = v0[435];
  v2 = v0[1];

  return v2();
}

uint64_t sub_EC9EC(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_ECA0C, 0, 0);
}

uint64_t sub_ECA0C()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[13] = v2;
  v3 = *(v2 + 16);
  v0[14] = v3;

  if (v3)
  {
    v0[15] = 0;
    if (*(result + 16))
    {
      sub_EDBE4(result + 32, (v0 + 2));
      v5 = v0[5];
      v6 = v0[6];
      sub_2698(v0 + 2, v5);
      v7 = *(v6 + 8);
      v12 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      v0[16] = v9;
      *v9 = v0;
      v9[1] = sub_ECBC4;

      return v12(v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = v0[11];

    *v10 = 4;
    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_ECBC4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = *(v4 + 104);

    v8 = sub_ECEDC;
  }

  else
  {
    *(v4 + 57) = a1 & 1;
    v8 = sub_ECCF8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_ECCF8()
{
  if ((*(v0 + 57) & 1) == 0)
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 88);

    *v7 = *(v0 + 56);
    sub_EDC54(v0 + 16);
    goto LABEL_5;
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120) + 1;
  result = sub_EDC54(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);

    *v5 = 4;
LABEL_5:
    v8 = *(v0 + 8);

    return v8();
  }

  v9 = *(v0 + 120) + 1;
  *(v0 + 120) = v9;
  v10 = *(v0 + 104);
  if (v9 >= *(v10 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_EDBE4(v10 + 48 * v9 + 32, v0 + 16);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_2698((v0 + 16), v11);
    v13 = *(v12 + 8);
    v16 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_ECBC4;

    return v16(v11, v12);
  }

  return result;
}

uint64_t sub_ECEDC()
{
  sub_EDC54(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1();
}

uint64_t sub_ECF40@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (*(v5 + 16) && (v6 = sub_3AE10(v4), (v7 & 1) != 0))
  {
    sub_404C4(*(v5 + 56) + 40 * v6, v10);
    sub_264B8(v10, a2);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_EDB90();
    swift_allocError();
    *v9 = v4;
    return swift_willThrow();
  }
}

uint64_t sub_ED008(uint64_t a1, _BYTE *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226C;

  return sub_EBF64(a1, a2);
}

uint64_t sub_ED0B4(_BYTE *a1)
{
  v3 = *v1;
  v4 = a1[1];
  *(v2 + 2288) = *a1;
  *(v2 + 2289) = v4;
  v5 = swift_task_alloc();
  *(v2 + 2272) = v5;
  *v5 = v2;
  v5[1] = sub_ED160;

  return sub_EBF64(v2 + 16, (v2 + 2288));
}

uint64_t sub_ED160()
{
  v2 = *(*v1 + 2272);
  v5 = *v1;
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v3 = sub_ED2F8;
  }

  else
  {
    v3 = sub_ED274;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_ED274()
{
  memcpy(v0 + 143, v0 + 2, 0x468uLL);
  v1 = v0[143];

  sub_EDCBC((v0 + 143));
  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_ED310()
{
  result = qword_22BEA0;
  if (!qword_22BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEA0);
  }

  return result;
}

uint64_t sub_ED364(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v92 = v8 + 2;
    v93 = v8[2];
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[2 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_ED954((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 32);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 32);
      v13 = v9 + 2;
      v14 = (v11 + 112);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v10 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = *(v31 + v19 - 32);
            v24 = (v31 + v18);
            v25 = *(v22 - 24);
            v26 = *(v22 - 2);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = v24[1];
            v30 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v30;
            *v22 = v29;
            *(v24 - 3) = v23;
            *(v24 - 16) = v25;
            *(v24 - 1) = v26;
            *v24 = v27;
            v24[1] = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_32F04((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_ED954((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > v8[2])
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 40 * v7 - 8;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 40 * v7 + 32);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (v35 >= *v37)
    {
LABEL_29:
      ++v7;
      v33 += 40;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 8);
    v39 = *(v37 + 16);
    v40 = *(v37 - 16);
    *(v37 + 8) = *(v37 - 32);
    v41 = *(v37 + 24);
    v42 = *(v37 + 32);
    *(v37 + 24) = v40;
    *(v37 + 40) = *v37;
    *(v37 - 32) = v38;
    *(v37 - 24) = v39;
    *(v37 - 16) = v41;
    *(v37 - 8) = v42;
    *v37 = v35;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_ED954(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

unint64_t sub_EDB90()
{
  result = qword_22BEA8;
  if (!qword_22BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEA8);
  }

  return result;
}

uint64_t sub_EDBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22BEB0, &qword_1C61A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EDC54(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22BEB0, &qword_1C61A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DelegatingGenreRecommendationService.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DelegatingGenreRecommendationService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of MediaTypesRecommendationServiceType.determineRecommendedMediaTypes(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_EE004()
{
  v1 = 0x65726E654778616DLL;
  v2 = 0xD00000000000001FLL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x6F6874754178616DLL;
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

uint64_t sub_EE098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_EE724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_EE0C0(uint64_t a1)
{
  v2 = sub_EE320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EE0FC(uint64_t a1)
{
  v2 = sub_EE320();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.BookSuggestionsConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22BEB8, &qword_1C6240);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15[3] = v1[2];
  v15[4] = v8;
  v11 = v1[5];
  v15[1] = v1[4];
  v15[2] = v10;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_EE320();
  sub_1B5884();
  v19 = 0;
  v13 = v15[5];
  sub_1B5534();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_1B5534();
  v17 = 2;
  sub_1B54F4();
  v16 = 3;
  sub_1B54F4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_EE320()
{
  result = qword_22BEC0;
  if (!qword_22BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEC0);
  }

  return result;
}

uint64_t WorkServiceConfiguration.BookSuggestionsConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22BEC8, &qword_1C6248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_EE320();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v29 = 0;
  v11 = sub_1B53F4();
  v28 = 1;
  v25 = sub_1B53F4();
  v27 = 2;
  v12 = sub_1B53B4();
  v14 = v13;
  v24 = v12;
  v26 = 3;
  v15 = sub_1B53B4();
  v17 = v16;
  v18 = *(v6 + 8);
  v23 = v15;
  v18(v9, v5);
  v19 = v24;
  v20 = v25;
  *a2 = v11;
  a2[1] = v20;
  a2[2] = v19;
  a2[3] = v14;
  a2[4] = v23;
  a2[5] = v17;

  sub_2BF8(a1);
}

unint64_t sub_EE620()
{
  result = qword_22BED0;
  if (!qword_22BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BED0);
  }

  return result;
}

unint64_t sub_EE678()
{
  result = qword_22BED8;
  if (!qword_22BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BED8);
  }

  return result;
}

unint64_t sub_EE6D0()
{
  result = qword_22BEE0;
  if (!qword_22BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEE0);
  }

  return result;
}

uint64_t sub_EE724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726E654778616DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6874754178616DLL && a2 == 0xEC00000073444972 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D7710 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D7730 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

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

unint64_t sub_EE900()
{
  result = qword_22BEE8;
  if (!qword_22BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BEE8);
  }

  return result;
}

uint64_t sub_EE984(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v8 << 9) | (8 * v10);
    v12 = *(*(a1 + 48) + v11);
    v13 = *(*(a1 + 56) + v11);
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v35)
    {
      v14 = *(&_swiftEmptyDictionarySingleton + 2);
      if (*(&_swiftEmptyDictionarySingleton + 3) <= v14)
      {
        sub_17FA44(v14 + 1, 1);
      }

      v15 = *(&_swiftEmptyDictionarySingleton + 5);
      result = sub_1B57E4();
      v16 = &_swiftEmptyDictionarySingleton + 64;
      v17 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(&_swiftEmptyDictionarySingleton + (v18 >> 6) + 8)) == 0)
      {
        v26 = 0;
        v27 = (63 - v17) >> 6;
        v21 = v36;
        v22 = v34;
        v24 = v32;
        v23 = v33;
        v25 = v31;
        while (++v19 != v27 || (v26 & 1) == 0)
        {
          v28 = v19 == v27;
          if (v19 == v27)
          {
            v19 = 0;
          }

          v26 |= v28;
          v29 = *&v16[8 * v19];
          if (v29 != -1)
          {
            v20 = __clz(__rbit64(~v29)) + (v19 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(&_swiftEmptyDictionarySingleton + (v18 >> 6) + 8))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v36;
      v22 = v34;
      v24 = v32;
      v23 = v33;
      v25 = v31;
LABEL_23:
      *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
      *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v20) = v12;
      v30 = *(&_swiftEmptyDictionarySingleton + 7) + 56 * v20;
      *v30 = v25;
      *(v30 + 8) = v24 & 1;
      *(v30 + 16) = v23;
      *(v30 + 24) = v22;
      *(v30 + 32) = v35;
      *(v30 + 40) = v21;
      *(v30 + 48) = v37;
      ++*(&_swiftEmptyDictionarySingleton + 2);
    }

    else
    {
      result = sub_EF8B4(v31, v32, v33, v34, 0);
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t WorkServiceBookScorer.score(_:configuration:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_EEC38, 0, 0);
}

uint64_t sub_EEC38()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_3786C(0, v2, 0);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v6 = v3[3];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v6;
      *(v0 + 16) = v4;
      *(v0 + 32) = v5;
      sub_42BA4(v0 + 16, v0 + 80);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_3786C((v7 > 1), v8 + 1, 1);
      }

      v9 = *(v0 + 16);
      v10 = *(v0 + 24);
      v11 = *(v0 + 32);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      v14 = &_swiftEmptyArrayStorage[7 * v8];
      v15 = *(v0 + 56);
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v14[4] = v9;
      *(v14 + 40) = v10;
      v14[6] = v11;
      *(v14 + 56) = v12;
      v14[8] = v13;
      v3 += 4;
      *(v14 + 9) = v15;
      --v2;
    }

    while (v2);
  }

  *(v0 + 160) = _swiftEmptyArrayStorage;

  v17 = sub_EF544(v16);

  *(v0 + 168) = sub_EE984(v17);

  v18 = _swiftEmptyArrayStorage[2];
  if (v18)
  {
    sub_3741C(0, v18, 0);
    v19 = &_swiftEmptyArrayStorage[4];
    v20 = _swiftEmptyArrayStorage[2];
    do
    {
      v22 = *v19;
      v19 += 7;
      v21 = v22;
      v23 = _swiftEmptyArrayStorage[3];
      if (v20 >= v23 >> 1)
      {
        sub_3741C((v23 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      _swiftEmptyArrayStorage[v20++ + 4] = v21;
      --v18;
    }

    while (v18);
  }

  *(v0 + 176) = _swiftEmptyArrayStorage;
  v24 = *(v0 + 152);
  v25 = v24[6];
  v26 = v24[7];
  sub_2698(v24 + 3, v25);
  v27 = *(v26 + 16);
  v31 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = sub_EEF08;

  return (v31)(_swiftEmptyArrayStorage, v25, v26);
}

uint64_t sub_EEF08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_EF328;
  }

  else
  {
    v5 = sub_EF01C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_EF01C()
{
  v1 = v0[25];
  v2 = sub_E9318(v0[22], *(v0[19] + 16), v0[20], v0[24]);
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  if (v1)
  {
    v6 = v0[24];

    v7 = v0[20];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v2;
    v11 = v0[20];

    v12 = -1;
    v13 = -1 << *(v10 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v10 + 64);
    v15 = (63 - v13) >> 6;

    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    while (v14)
    {
      v18 = v14;
LABEL_14:
      v14 = (v18 - 1) & v18;
      if (*(v4 + 16))
      {
        v20 = v0[21];
        v21 = (v16 << 9) | (8 * __clz(__rbit64(v18)));
        v22 = *(*(v10 + 56) + v21);
        result = sub_43124(*(*(v10 + 48) + v21));
        if (v23)
        {
          v24 = *(v4 + 56) + 56 * result;
          v33 = *v24;
          v32 = *(v24 + 8);
          v38 = *(v24 + 32);
          v35 = *(v24 + 16);
          v36 = *(v24 + 40);
          v25 = *(v24 + 48);
          v34 = *(v24 + 24);
          sub_43688(v35, v34);
          v37 = v25;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_3349C(0, *(v17 + 2) + 1, 1, v17);
            v17 = result;
          }

          v27 = *(v17 + 2);
          v26 = *(v17 + 3);
          v28 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            result = sub_3349C((v26 > 1), v27 + 1, 1, v17);
            v28 = v27 + 1;
            v17 = result;
          }

          *(v17 + 2) = v28;
          v29 = &v17[64 * v27];
          *(v29 + 4) = v33;
          v29[40] = v32;
          *(v29 + 41) = *v39;
          *(v29 + 11) = *&v39[3];
          *(v29 + 6) = v35;
          v29[56] = v34;
          *(v29 + 15) = *&v40[3];
          *(v29 + 57) = *v40;
          *(v29 + 8) = v38;
          *(v29 + 9) = v36;
          *(v29 + 10) = v37;
          *(v29 + 11) = v22;
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v19 >= v15)
      {
        break;
      }

      v18 = *(v10 + 64 + 8 * v19);
      ++v16;
      if (v18)
      {
        v16 = v19;
        goto LABEL_14;
      }
    }

    v30 = v0[21];

    v31 = v0[1];

    return v31(v17);
  }
}

uint64_t sub_EF328()
{
  v2 = v0[21];
  v1 = v0[22];

  v3 = v0[25];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_EF39C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = *(v3 + 80);
    v10 = *(v3 + 56);
    sub_43688(v6, *(v3 + 56));
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v10;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  return result;
}

uint64_t WorkServiceBookScorer.deinit()
{
  v1 = *(v0 + 16);

  sub_2BF8((v0 + 24));
  return v0;
}

uint64_t WorkServiceBookScorer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_2BF8((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_EF4AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return WorkServiceBookScorer.score(_:configuration:)(a1);
}

uint64_t sub_EF544(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = (a1 + 80);
  while (1)
  {
    v5 = v2;
    v45 = *(v3 - 40);
    v6 = *(v3 - 4);
    v7 = *(v3 - 24);
    v8 = *(v3 - 2);
    v46 = *(v3 - 1);
    v43 = v3;
    v44 = *(v3 - 6);
    v9 = *v3;
    v10 = sub_43124(v44);
    v12 = v1[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    v16 = v11;
    v41 = v5;
    v38 = v1;
    v17 = v1[3];
    v40 = v6;
    sub_43688(v6, v7);
    v42 = v9;

    v39 = v8;
    if (v17 >= v14)
    {
      v22 = v5;
      v23 = v7;
      v18 = v44;
      v1 = v38;
      v24 = v40;
      v21 = v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_17FD2C(v14, 1);
      v1 = &_swiftEmptyDictionarySingleton;
      v18 = v44;
      v19 = sub_43124(v44);
      if ((v16 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v21 = v19;
      v22 = v41;
      v23 = v7;
      v24 = v40;
      if (v16)
      {
LABEL_12:
        v29 = v1[7];
        v30 = *(v29 + 8 * v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v29 + 8 * v21) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_339D8(0, *(v30 + 2) + 1, 1, v30);
          *(v29 + 8 * v21) = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        v34 = v33 + 1;
        v35 = v42;
        if (v33 >= v32 >> 1)
        {
          v36 = sub_339D8((v32 > 1), v33 + 1, 1, v30);
          v34 = v33 + 1;
          v30 = v36;
          v35 = v42;
          *(v29 + 8 * v21) = v36;
        }

        *(v30 + 2) = v34;
        v4 = &v30[56 * v33];
        *(v4 + 4) = v18;
        v4[40] = v45;
        *(v4 + 6) = v24;
        v4[56] = v23;
        *(v4 + 8) = v39;
        *(v4 + 9) = v46;
        *(v4 + 10) = v35;
        goto LABEL_4;
      }
    }

    sub_2B0C(&qword_229290, &qword_1BC358);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BCA80;
    *(v25 + 32) = v18;
    *(v25 + 40) = v45;
    *(v25 + 48) = v24;
    *(v25 + 56) = v23;
    *(v25 + 64) = v39;
    *(v25 + 72) = v46;
    *(v25 + 80) = v42;
    v1[(v21 >> 6) + 8] |= 1 << v21;
    *(v1[6] + 8 * v21) = v18;
    *(v1[7] + 8 * v21) = v25;
    v26 = v1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_18;
    }

    v1[2] = v28;
LABEL_4:
    v3 = v43 + 7;
    v2 = v22 - 1;
    if (!v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

unint64_t sub_EF84C()
{
  result = qword_22BF98;
  if (!qword_22BF98)
  {
    sub_1CC1C(&qword_22BFA0, &qword_1C6508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22BF98);
  }

  return result;
}

uint64_t sub_EF8B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    sub_43CE0(a3, a4);
  }

  return result;
}

uint64_t sub_EF988@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
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

uint64_t sub_EFA0C()
{
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_EFA4C(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (!v52)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C080, &qword_1C65E0);
  result = sub_1B4264();
  if (!v50)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A760, &qword_1CFD50);
  result = sub_1B4264();
  if (!v48)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A758, &unk_1C0540);
  result = sub_1B4264();
  if (!v46)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C048, &qword_1C6590);
  result = sub_1B4264();
  if (v44)
  {
    v8 = v50;
    v9 = sub_40474(v49, v50);
    v38[1] = v38;
    v10 = *(*(v8 - 8) + 64);
    __chkstk_darwin(v9);
    v12 = (v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = v46;
    v15 = sub_40474(v45, v46);
    v38[0] = v38;
    v16 = *(*(v14 - 8) + 64);
    __chkstk_darwin(v15);
    v18 = (v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v12;
    v21 = *v18;
    v22 = type metadata accessor for DelegatingCollectionService();
    v42[3] = v22;
    v42[4] = &off_2207B8;
    v42[0] = v20;
    v23 = type metadata accessor for DelegatingBookScorer();
    v40 = v23;
    v41 = &off_2195F8;
    v39[0] = v21;
    type metadata accessor for BookRecommendationService();
    v24 = swift_allocObject();
    v25 = sub_40474(v42, v22);
    v26 = *(*(v22 - 8) + 64);
    __chkstk_darwin(v25);
    v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = v40;
    v31 = sub_40474(v39, v40);
    v32 = *(*(v30 - 8) + 64);
    __chkstk_darwin(v31);
    v34 = (v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = *v28;
    v37 = *v34;
    v24[10] = v22;
    v24[11] = &off_2207B8;
    v24[7] = v36;
    v24[20] = v23;
    v24[21] = &off_2195F8;
    v24[17] = v37;
    sub_264B8(&v51, (v24 + 2));
    sub_264B8(&v47, (v24 + 12));
    sub_264B8(&v43, (v24 + 22));
    sub_2BF8(v39);
    sub_2BF8(v42);
    sub_2BF8(v45);
    sub_2BF8(v49);
    return v24;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_EFF4C(void *a1)
{
  v1 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D8, &qword_1C05D8);
  result = sub_1B4264();
  if (v5)
  {
    type metadata accessor for NextInSeriesProcessorService();
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

uint64_t sub_EFFE4(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (!v30)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A7D8, &qword_1C05D8);
  result = sub_1B4264();
  if (!v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = type metadata accessor for StringOperationFlattener();
  v6 = swift_allocObject();
  sub_2B0C(&qword_22C068, &qword_1C65C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BFC80;
  v8 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C070, &unk_1C65C8);
  result = sub_1B4264();
  v9 = v25;
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v26;
  v11 = sub_2698(&v24, v25);
  *(v7 + 56) = v9;
  *(v7 + 64) = v10[1];
  v12 = sub_40528((v7 + 32));
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  v13 = swift_allocObject();
  *(v7 + 96) = v5;
  *(v7 + 104) = &protocol witness table for StringOperationFlattener;
  *(v7 + 72) = v13;
  sub_2BF8(&v24);
  v14 = type metadata accessor for AggregateFlattener();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v25 = v14;
  v26 = &protocol witness table for AggregateFlattener;
  *&v24 = v15;
  v16 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A780, &qword_1C0570);
  result = sub_1B4264();
  if (v23)
  {
    v17 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22C078, &qword_1C65D8);
    sub_1B4834();
    sub_1B4244();

    v20 = v5;
    v21 = &protocol witness table for StringOperationFlattener;
    *&v19 = v6;
    type metadata accessor for BookRecommendationPostHydrationFilteringService();
    v18 = swift_allocObject();
    *(v18 + 224) = 0;
    sub_264B8(&v29, v18 + 16);
    sub_264B8(&v27, v18 + 56);
    sub_264B8(&v19, v18 + 136);
    sub_264B8(&v24, v18 + 96);
    sub_264B8(&v22, v18 + 176);
    *(v18 + 216) = &type metadata for UseV2AndMetadata & 1;
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_F0344()
{
  v0 = sub_1B4344();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_22C040, &qword_1C6588);
  sub_1B4304();

  v5 = enum case for Scope.singleton(_:);
  v6 = v1[13];
  v6(v4, enum case for Scope.singleton(_:), v0);
  sub_1B4214();

  v7 = v1[1];
  v7(v4, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C048, &qword_1C6590);
  sub_1B4304();

  v6(v4, v5, v0);
  sub_1B4214();

  v7(v4, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C050, &qword_1C6598);
  sub_1B4304();

  v6(v4, v5, v0);
  sub_1B4214();

  v7(v4, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C058, &unk_1C65A0);
  sub_1B4304();

  v6(v4, v5, v0);
  sub_1B4214();

  v7(v4, v0);
  sub_1B4284();
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  sub_1B42F4();

  v6(v4, v5, v0);
  sub_1B4214();

  v7(v4, v0);
  sub_1B4294();
  type metadata accessor for BookRecommendationService();
  sub_1B42F4();

  v6(v4, v5, v0);
  sub_1B4214();

  v7(v4, v0);
  sub_1B4294();
  type metadata accessor for NextInSeriesProcessorService();
  sub_1B42F4();

  v6(v4, v5, v0);
  sub_1B4214();

  v7(v4, v0);
  sub_1B4294();
  type metadata accessor for BookRecommendationPostHydrationFilteringService();
  sub_1B42F4();

  v6(v4, v5, v0);
  sub_1B4214();

  return (v7)(v4, v0);
}

uint64_t sub_F08B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_37658(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_23;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    if (v11 < 0)
    {
      goto LABEL_24;
    }

    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_37658((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    _swiftEmptyArrayStorage[v14 + 4] = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_25;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_26;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_42FF0(result, v12, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_20;
        }
      }

      sub_42FF0(result, v12, 0);
LABEL_20:
      v6 = v24;
    }

    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_F0AD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 48);
    v9 = _swiftEmptyArrayStorage;
    v20 = *(a3 + 16);
    v21 = result;
    while (v7 < *(v4 + 16))
    {
      v10 = *v8;
      v11 = *(v8 - 4);
      v12 = *(v8 - 2);
      v24 = *(v8 - 2);
      v25 = v12;
      v26 = v11;
      v27 = v10;

      v13 = v6(&v24);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v13)
      {
        v14 = v24;
        v15 = v25;
        v16 = v26;
        v23 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((result & 1) == 0)
        {
          result = sub_37998(0, v9[2] + 1, 1);
          v9 = v28;
        }

        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_37998((v17 > 1), v18 + 1, 1);
          v9 = v28;
        }

        v9[2] = v18 + 1;
        v19 = &v9[3 * v18];
        v19[4] = v14;
        *(v19 + 10) = v15;
        *(v19 + 44) = v16;
        v4 = a3;
        v19[6] = v23;
        v6 = v21;
        v5 = v20;
      }

      else
      {
      }

      ++v7;
      v8 += 3;
      if (v5 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_16:

    return v9;
  }

  return result;
}

uint64_t sub_F0C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    result = sub_37998(0, v4, 0);
    v7 = (a1 + 88);
    while (1)
    {
      v8 = *(v7 - 7);
      if (v8 < 0)
      {
        break;
      }

      v9 = *v7;
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_37998((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[3 * v11];
      *(v12 + 4) = v8;
      v13 = v9;
      v12[10] = v13;
      *(v12 + 44) = 0;
      *(v12 + 6) = 0;
      v7 += 8;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    result = type metadata accessor for SeedBasedRecommendationRequest(0);
    *a2 = *(v2 + *(result + 44));
    *(a2 + 8) = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_F0DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = sub_F08B4(a1);
  }

  else
  {
    v6 = &off_213328;
  }

  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  v8 = *(v3 + *(result + 32));
  v9 = *(v3 + *(result + 40)) & 2;
  if ((*(v3 + *(result + 40)) & 1) == 0)
  {
    if (!v9)
    {

      sub_26110(0, v8);
      sub_F1484();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 7;
      return swift_willThrow();
    }

    v9 = 1;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    *a3 = 0;
    *(a3 + 8) = v8;
    *(a3 + 16) = v6;
    *(a3 + 24) = 0;
    *(a3 + 32) = v9;
    *(a3 + 40) = a2;
    *(a3 + 44) = 0;
    *(a3 + 48) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_F0EB4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 48);
  if (v3 <= 1)
  {
    if (!*(v1 + 48))
    {
      v7 = v1[4];
      v6 = v1[5];
      v9 = v1[2];
      v8 = v1[3];
      v10 = v1[1];
      *a1 = v2;
      a1[1] = v10;
      a1[2] = v9;
      a1[3] = v8;
      a1[4] = v7;
      a1[5] = v6;
    }

    sub_F1484();
    swift_allocError();
    *v13 = v2;
    *(v13 + 8) = 0;
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    sub_F1484();
    swift_allocError();
    *v4 = v2;
    v5 = 1;
    goto LABEL_8;
  }

  if (v3 == 3)
  {
    sub_F1484();
    swift_allocError();
    *v4 = v2;
    v5 = 2;
LABEL_8:
    *(v4 + 8) = v5;
LABEL_11:

    return swift_willThrow();
  }

  sub_F1484();
  swift_allocError();
  *v12 = v2;
  *(v12 + 8) = 3;
  return swift_willThrow();
}

void sub_F1014()
{
  v1 = *v0;
  if (!*v0)
  {
    sub_F1484();
    swift_allocError();
    *v34 = 1;
    *(v34 + 8) = 7;
    swift_willThrow();
    return;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    v35 = v2 - 1;
    v5 = _swiftEmptyArrayStorage;
    v38 = *(v1 + 16);
    v39 = *v0;
    v36 = v1 + 48;
    while (1)
    {
      v37 = v5;
      v6 = (v4 + 24 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v8 = *(v6 - 2);
        if (v8 < 0)
        {
          goto LABEL_32;
        }

        v9 = *v6;
        if ((*(v6 - 4) & 1) == 0)
        {
          break;
        }

        v10 = 4;
LABEL_15:
        sub_F1484();
        swift_allocError();
        *v11 = v8;
        *(v11 + 8) = v10;
        swift_willThrow();
        v12 = qword_228358;

        if (v12 != -1)
        {
          swift_once();
        }

        v13 = sub_1B4644();
        sub_50E58(v13, qword_260C80);

        swift_errorRetain();
        v14 = sub_1B4624();
        v15 = sub_1B4DA4();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 134218242;
          *(v16 + 4) = v8;

          *(v16 + 12) = 2112;
          swift_errorRetain();
          v18 = _swift_stdlib_bridgeErrorToNSError();
          *(v16 + 14) = v18;
          *v17 = v18;
          _os_log_impl(&dword_0, v14, v15, "failed to create recommended book for %lld with error %@", v16, 0x16u);
          sub_42F48(v17, &qword_22B250, &qword_1C3850);
          v2 = v38;

          v1 = v39;
        }

        else
        {
        }

        ++v7;
        v6 += 3;
        if (v2 == v7)
        {
          return;
        }
      }

      if (!v9)
      {
        v10 = 5;
        goto LABEL_15;
      }

      if (!*(v9 + 16))
      {
        break;
      }

      v19 = *(v9 + 32);
      v20 = *(v6 - 2);
      v40 = 0;
      v41 = 0;
      v42 = v20;
      sub_2B0C(&qword_22C090, &qword_1C65F0);
      v21 = sub_1B52B4();

      v22 = v40;
      v23 = v41;
      v24 = v42;
      sub_1E04C(v40, v41);
      v25 = sub_3AFEC(v22, v23);
      if (v26)
      {
        goto LABEL_33;
      }

      v21[(v25 >> 6) + 8] |= 1 << v25;
      v27 = (v21[6] + 16 * v25);
      *v27 = v22;
      v27[1] = v23;
      *(v21[7] + 8 * v25) = v24;
      v28 = v21[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      v5 = v37;
      if (v29)
      {
        goto LABEL_34;
      }

      v21[2] = v30;

      sub_42F48(&v40, &qword_22C098, &qword_1C65F8);

      if (v19 < 0)
      {
        goto LABEL_35;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_3427C(0, *(v37 + 2) + 1, 1, v37);
      }

      v32 = *(v5 + 2);
      v31 = *(v5 + 3);
      if (v32 >= v31 >> 1)
      {
        v5 = sub_3427C((v31 > 1), v32 + 1, 1, v5);
      }

      v3 = v7 + 1;
      *(v5 + 2) = v32 + 1;
      v33 = &v5[24 * v32];
      *(v33 + 4) = v8;
      *(v33 + 5) = v21;
      *(v33 + 6) = v19;
      v4 = v36;
      v2 = v38;
      v1 = v39;
      if (v35 == v7)
      {
        return;
      }
    }

    v10 = 6;
    goto LABEL_15;
  }
}

unint64_t sub_F1484()
{
  result = qword_22C088;
  if (!qword_22C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C088);
  }

  return result;
}

void *sub_F14D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = (v1 + 72);
      while (v3 < *(v1 + 16))
      {
        if ((*(v4 - 32) & 1) == 0 && (*(v4 - 16) & 1) == 0)
        {
          v6 = *(v4 - 15);
          if (v6 != 2 && (*v4 & 1) == 0)
          {
            v7 = *(v4 - 5);
            v8 = *(v4 - 3);
            if ((v8 | v7) < 0)
            {
              goto LABEL_29;
            }

            if ((~*(v4 - 1) & 0x7FF0000000000000) == 0)
            {
              goto LABEL_30;
            }

            v9 = *(v4 - 1);
            if (v9 <= -9.22337204e18)
            {
              goto LABEL_31;
            }

            if (v9 >= 9.22337204e18)
            {
              goto LABEL_32;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11 = sub_43124(v7);
            v13 = _swiftEmptyDictionarySingleton[2];
            v14 = (v12 & 1) == 0;
            v15 = __OFADD__(v13, v14);
            v16 = v13 + v14;
            if (v15)
            {
              goto LABEL_33;
            }

            v17 = v12;
            if (_swiftEmptyDictionarySingleton[3] >= v16)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v23 = v11;
                sub_1874E4();
                v11 = v23;
              }
            }

            else
            {
              sub_181E24(v16, isUniquelyReferenced_nonNull_native);
              v11 = sub_43124(v7);
              if ((v17 & 1) != (v18 & 1))
              {
                goto LABEL_35;
              }
            }

            v19 = v9;
            if (v17)
            {
              v5 = _swiftEmptyDictionarySingleton[7] + 40 * v11;
              *v5 = v19;
              *(v5 + 8) = v8;
              *(v5 + 16) = v6 & 1;
              *(v5 + 24) = 0;
              *(v5 + 32) = 1;
            }

            else
            {
              _swiftEmptyDictionarySingleton[(v11 >> 6) + 8] |= 1 << v11;
              *(_swiftEmptyDictionarySingleton[6] + 8 * v11) = v7;
              v20 = _swiftEmptyDictionarySingleton[7] + 40 * v11;
              *v20 = v19;
              *(v20 + 8) = v8;
              *(v20 + 16) = v6 & 1;
              *(v20 + 24) = 0;
              *(v20 + 32) = 1;
              v21 = _swiftEmptyDictionarySingleton[2];
              v15 = __OFADD__(v21, 1);
              v22 = v21 + 1;
              if (v15)
              {
                goto LABEL_34;
              }

              _swiftEmptyDictionarySingleton[2] = v22;
            }
          }
        }

        ++v3;
        v4 += 48;
        if (v2 == v3)
        {
          return _swiftEmptyDictionarySingleton;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_1B5784();
      __break(1u);
    }

    else
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  else
  {

    return sub_130E18(_swiftEmptyArrayStorage);
  }

  return result;
}

void *sub_F1750()
{
  v1 = *(v0 + 24);
  if (!v1)
  {

    return sub_12DA78(_swiftEmptyArrayStorage);
  }

  v30 = *(v1 + 16);
  if (!v30)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v29 = v1 + 32;
  v28 = *(v0 + 24);
  while (v2 < *(v1 + 16))
  {
    v5 = (v29 + 16 * v2);
    v6 = *v5;
    if (*v5 < 0)
    {
      goto LABEL_32;
    }

    v7 = v5[1];
    v8 = *(v7 + 16);
    if (v8)
    {

      sub_3741C(0, v8, 0);
      v9 = (v7 + 32);
      while (1)
      {
        v11 = *v9++;
        v10 = v11;
        if (v11 < 0)
        {
          break;
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_3741C((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        _swiftEmptyArrayStorage[v13 + 4] = v10;
        if (!--v8)
        {
          v1 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

    v14 = v5[1];

LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_43124(v6);
    v18 = _swiftEmptyDictionarySingleton[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_33;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] < v21)
    {
      sub_17D824(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_43124(v6);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_35;
      }

LABEL_21:
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v26 = v16;
    sub_1854E4();
    v16 = v26;
    if (v22)
    {
LABEL_4:
      v3 = _swiftEmptyDictionarySingleton[7];
      v4 = *(v3 + 8 * v16);
      *(v3 + 8 * v16) = _swiftEmptyArrayStorage;

      goto LABEL_5;
    }

LABEL_22:
    _swiftEmptyDictionarySingleton[(v16 >> 6) + 8] |= 1 << v16;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v16) = v6;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v16) = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyDictionarySingleton[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_34;
    }

    _swiftEmptyDictionarySingleton[2] = v25;
LABEL_5:

    if (++v2 == v30)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1B5784();
  __break(1u);
  return result;
}

void *sub_F1A00()
{
  v1 = *(v0 + 40);
  if (!v1)
  {

    return sub_12DA78(_swiftEmptyArrayStorage);
  }

  v30 = *(v1 + 16);
  if (!v30)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v29 = v1 + 32;
  v28 = *(v0 + 40);
  while (v2 < *(v1 + 16))
  {
    v5 = (v29 + 16 * v2);
    v6 = *v5;
    if (*v5 < 0)
    {
      goto LABEL_32;
    }

    v7 = v5[1];
    v8 = *(v7 + 16);
    if (v8)
    {

      sub_3741C(0, v8, 0);
      v9 = (v7 + 32);
      while (1)
      {
        v11 = *v9++;
        v10 = v11;
        if (v11 < 0)
        {
          break;
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_3741C((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        _swiftEmptyArrayStorage[v13 + 4] = v10;
        if (!--v8)
        {
          v1 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

    v14 = v5[1];

LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_43124(v6);
    v18 = _swiftEmptyDictionarySingleton[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_33;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] < v21)
    {
      sub_17D824(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_43124(v6);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_35;
      }

LABEL_21:
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v26 = v16;
    sub_1854E4();
    v16 = v26;
    if (v22)
    {
LABEL_4:
      v3 = _swiftEmptyDictionarySingleton[7];
      v4 = *(v3 + 8 * v16);
      *(v3 + 8 * v16) = _swiftEmptyArrayStorage;

      goto LABEL_5;
    }

LABEL_22:
    _swiftEmptyDictionarySingleton[(v16 >> 6) + 8] |= 1 << v16;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v16) = v6;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v16) = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyDictionarySingleton[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_34;
    }

    _swiftEmptyDictionarySingleton[2] = v25;
LABEL_5:

    if (++v2 == v30)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_F1CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  v11 = *(v6 + 16);
  if (v11)
  {

    v23 = v8;

    v22 = v9;

    sub_379B8(0, v11, 0);
    v14 = (v6 + 32);
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (v16)
      {
        swift_bridgeObjectRetain_n();
        v17 = sub_F0AD4(a1, a2, v15);
      }

      else
      {

        v17 = 0;
      }

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_379B8((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      _swiftEmptyArrayStorage[v20 + 4] = v17;
      --v11;
    }

    while (v11);
    v4 = a3;
    v8 = v23;
    v9 = v22;
    v21 = v10;
  }

  else
  {

    v21 = v10;
  }

  *v4 = _swiftEmptyArrayStorage;
  v4[1] = v5;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v21;
  v4[5] = v9;
  return result;
}

uint64_t sub_F1E5C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v31 = a1[5];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v29 = a1[3];
  v30 = a2[5];
  if (*(*a1 + 16))
  {
    v10 = *(*a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  if (!*(v6 + 16))
  {
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

LABEL_13:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v12 = *(v6 + 32);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_14:
  sub_5FF1C(v14);
  v15 = v13;
  sub_2B0C(&qword_2293A0, &qword_1BC440);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BCA80;
  *(v16 + 32) = v15;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v32 = v17;

  sub_6024C(v18);
  v19 = v32;
  if (v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v33 = v20;

  sub_60158(v21);
  v22 = v33;
  if (v29)
  {
    v23 = v29;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  if (v8)
  {
    v24 = v8;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v34 = v23;

  sub_60034(v24);
  v25 = v34;
  if (v31)
  {
    v26 = v31;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  if (v30)
  {
    v27 = v30;
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v35 = v26;

  result = sub_60014(v27);
  *a3 = v16;
  a3[1] = v19;
  a3[2] = v22;
  a3[3] = v25;
  a3[4] = 0;
  a3[5] = v35;
  return result;
}

uint64_t Transport.Recommend.Input.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_F2080(v2, v3);
}

uint64_t sub_F2080(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Transport.Recommend.Input.body.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  sub_F212C(v1[4], v1[5]);
  result = *a1;
  v10 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v10;
  v1[8] = v3;
  v1[9] = v4;
  return result;
}

uint64_t sub_F212C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Transport.Recommend.Input.init(xAppleRequestUUID:xAppleUserExperimentIds:body:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a5 + 32);
  v9 = *(a5 + 40);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  sub_F212C(0, 0);
  result = *a5;
  v11 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v11;
  *(a6 + 64) = v8;
  *(a6 + 72) = v9;
  return result;
}

uint64_t Transport.RecommendV2.Input.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_F2224(v2, v3);
}

uint64_t sub_F2224(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Transport.RecommendV2.Input.body.setter(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  sub_F22A8(v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v6;
  return result;
}

uint64_t sub_F22A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Transport.RecommendV2.Input.init(xAppleRequestUUID:xAppleUserExperimentIds:body:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  sub_F22A8(0, 0);
  result = *a5;
  v9 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v9;
  return result;
}

uint64_t Transport.PersonalizationMetadata.Input.body.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t Transport.PersonalizationMetadata.Input.init(xAppleRequestUUID:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a3;
  *a4 = a1;
  a4[1] = a2;

  a4[2] = v5;
  return result;
}

__n128 sub_F23D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_F23F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_F2450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_F24D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F251C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_F2598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_F25F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_F2674(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_F2698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 65))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 64);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F26E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_F277C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_F27C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_F2828(uint64_t result, void *a2, double a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = a2;
    for (i = (result + 64); ; i += 5)
    {
      v10 = *(i - 4);
      v11 = *i;
      v12 = *(i - 2);
      v13 = *(i - 1);
      v14 = *(i - 24);

      v15 = *v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v32 = *v5;
      *v5 = 0x8000000000000000;
      v18 = sub_43124(v10);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        break;
      }

      v24 = v19;
      if (v17[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v18;
          sub_187658();
          v18 = v30;
        }
      }

      else
      {
        sub_1820C4(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_43124(v10);
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_17;
        }
      }

      v26 = v11 * a3;
      if (v24)
      {
        v7 = v32[7] + 40 * v18;
        v8 = *(v7 + 16);
        v9 = *(v7 + 24);
        *v7 = v10;
        *(v7 + 8) = v14;
        *(v7 + 16) = _swiftEmptyArrayStorage;
        *(v7 + 24) = 0;
        *(v7 + 32) = v26;
      }

      else
      {
        v32[(v18 >> 6) + 8] |= 1 << v18;
        *(v32[6] + 8 * v18) = v10;
        v27 = v32[7] + 40 * v18;
        *v27 = v10;
        *(v27 + 8) = v14;
        *(v27 + 16) = _swiftEmptyArrayStorage;
        *(v27 + 24) = 0;
        *(v27 + 32) = v26;
        v28 = v32[2];
        v22 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v22)
        {
          goto LABEL_16;
        }

        v32[2] = v29;
      }

      v5 = a2;
      *a2 = v32;

      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1B5784();
    __break(1u);
  }

  return result;
}

uint64_t sub_F2A24(uint64_t result, uint64_t *a2, double a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = v4 - 1;
    v8 = (result + 64);
    do
    {
      v9 = v7;
      v10 = *v8;
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = *(v8 - 24);
      v14 = *(v8 - 4);
      v15 = v13;
      v16 = v12;
      v17 = v11;
      v18 = v10;

      sub_F34CC(&v14, a2, a3);

      if (v3)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 5;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_F2AE4(uint64_t a1)
{
  *(v2 + 3376) = v1;
  *(v2 + 3368) = a1;
  *(v2 + 3352) = *a1;
  *(v2 + 3384) = *(a1 + 16);
  memcpy((v2 + 2256), (a1 + 24), 0x448uLL);

  return _swift_task_switch(sub_F2B74, 0, 0);
}

uint64_t sub_F2B74()
{
  v1 = *(v0 + 3384);
  v2 = *(v0 + 3376);
  v3 = *(v0 + 3368);
  v4 = v2[10];
  v5 = v2[11];
  sub_2698(v2 + 7, v4);
  *(v0 + 16) = *v3;
  *(v0 + 32) = v1;
  memcpy((v0 + 40), v3 + 24, 0x448uLL);
  v6 = *(v5 + 8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 3392) = v8;
  *v8 = v0;
  v8[1] = sub_F2CD8;

  return v10(v0 + 16, v4, v5);
}

uint64_t sub_F2CD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3392);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_F2F70;
  }

  else
  {
    *(v4 + 3400) = a1;
    v7 = sub_F2E04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_F2E04()
{
  *(v0 + 3408) = *(v0 + 3400);
  v1 = *(v0 + 3384);
  v2 = *(v0 + 3376);
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  *(v0 + 1136) = *(v0 + 3352);
  *(v0 + 1152) = v1;
  memcpy((v0 + 1160), (v0 + 2256), 0x448uLL);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 3416) = v7;
  *v7 = v0;
  v7[1] = sub_F30E0;

  return v9(v0 + 1136, v3, v4);
}

uint64_t sub_F2F70()
{
  *(v0 + 3408) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 3384);
  v2 = *(v0 + 3376);
  v3 = v2[5];
  v4 = v2[6];
  sub_2698(v2 + 2, v3);
  *(v0 + 1136) = *(v0 + 3352);
  *(v0 + 1152) = v1;
  memcpy((v0 + 1160), (v0 + 2256), 0x448uLL);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 3416) = v7;
  *v7 = v0;
  v7[1] = sub_F30E0;

  return v9(v0 + 1136, v3, v4);
}

uint64_t sub_F30E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3416);
  v6 = *v2;
  *(*v2 + 3424) = v1;

  if (v1)
  {

    v7 = sub_F336C;
  }

  else
  {
    *(v4 + 3432) = a1;
    v7 = sub_F3210;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_F3210()
{
  v13 = v0;
  v1 = *(v0 + 429);
  v2 = *(v0 + 428);
  v3 = *(v0 + 426);
  v4 = v0[423];
  v11 = &_swiftEmptyDictionarySingleton;
  sub_F2828(v3, &v11, v4);

  sub_F2A24(v1, &v11, v4);

  v5 = v11;
  v6 = v11[2];
  if (v6)
  {
    v7 = sub_35418(v11[2], 0);
    v8 = sub_3F630(&v12, (v7 + 4), v6, v5);

    result = sub_417B8();
    if (v8 != v6)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v10 = *(v0 + 1);

  return v10(v7);
}

uint64_t sub_F336C()
{
  v11 = v0;
  v1 = *(v0 + 426);
  v2 = v0[423];
  v9 = &_swiftEmptyDictionarySingleton;
  sub_F2828(v1, &v9, v2);

  sub_F2A24(_swiftEmptyArrayStorage, &v9, v2);

  v3 = v9;
  v4 = v9[2];
  if (v4)
  {
    v5 = sub_35418(v9[2], 0);
    v6 = sub_3F630(&v10, (v5 + 4), v4, v3);

    result = sub_417B8();
    if (v6 != v4)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v8 = *(v0 + 1);

  return v8(v5);
}

unint64_t sub_F34CC(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (1.0 - a3) * (*(a1 + 32) * 0.5 + 0.5);
  v24 = *a1;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v9 = *a2;
  if (*(*a2 + 16) && (v10 = sub_43124(v4), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 40 * v10;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_F372C(&v24);
    v29 = v14;
    sub_60340(v6);

    v17 = v29;
    v29 = v4;
    v30 = v13;
    v31 = v17;
    v32 = 0;
    v33 = v8 + v16;
    v18 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a2;
    *a2 = 0x8000000000000000;
    result = sub_54758(&v29, v4, isUniquelyReferenced_nonNull_native);
    v21 = v34;
  }

  else
  {

    v22 = *a2;

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a2;
    *a2 = 0x8000000000000000;
    result = sub_54758(&v24, v4, v23);
    v21 = v29;
  }

  *a2 = v21;
  return result;
}

uint64_t sub_F3694(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_F2AE4(a1);
}

uint64_t Transport.Client.server.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 152);
  a1[1] = v2;
}

uint64_t Transport.Client.server.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v3;
  return result;
}

uint64_t Transport.Client.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_41BF8(v2);

  return sub_41BF8(v4);
}

__n128 Transport.Client.configuration.setter(uint64_t a1)
{
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  sub_41C08(v1[21]);
  sub_41C08(v4);
  result = *a1;
  *(v1 + 23) = *(a1 + 16);
  *(v1 + 21) = result;
  return result;
}

uint64_t Transport.Client.transport.setter(__int128 *a1)
{
  sub_2BF8((v1 + 200));

  return sub_264B8(a1, v1 + 200);
}

double Transport.Client.init(server:configuration:transport:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  *(a4 + 152) = *a1;
  *(a4 + 160) = v6;
  *(a4 + 168) = v7;
  *(a4 + 176) = v8;
  *(a4 + 184) = v9;
  *(a4 + 192) = v10;
  sub_404C4(a3, a4 + 200);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  sub_41BF8(v7);
  sub_41BF8(v9);
  ClientConverter.init(configuration:)(v16, v17);
  sub_2BF8(a3);
  v11 = v17[7];
  *(a4 + 96) = v17[6];
  *(a4 + 112) = v11;
  *(a4 + 128) = v17[8];
  *(a4 + 144) = v18;
  v12 = v17[3];
  *(a4 + 32) = v17[2];
  *(a4 + 48) = v12;
  v13 = v17[5];
  *(a4 + 64) = v17[4];
  *(a4 + 80) = v13;
  result = *v17;
  v15 = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = v15;
  return result;
}

uint64_t Transport.Client.recommend(input:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = a2[4];
  v5 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return _swift_task_switch(sub_F3A14, 0, 0);
}

uint64_t sub_F3A14()
{
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_F3B5C;
  v6 = *(v0 + 96);

  return sub_F4974(v6, (v0 + 16), sub_F44B4, v2, &unk_1CF410, v3, sub_F4958, v4);
}

uint64_t sub_F3B5C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_F3CAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v69 = a3;
  v4 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v64 - v6;
  v8 = sub_1B3F34();
  *&v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  __chkstk_darwin(v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v64 - v14;
  v16 = sub_1B3D64();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v21 = *(a1 + 152);
  v22 = *(a1 + 160);
  sub_1B3D54();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_42F48(v15, &qword_22C200, &unk_1CE6C0);
    type metadata accessor for ClientErrorPayload();
    sub_FA3E0();
    swift_allocError();
    *v23 = v21;
    v23[1] = v22;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v25 = sub_1B3D44();
    v75._countAndFlagsBits = 0xD000000000000013;
    v75._object = 0x80000000001D7910;
    sub_1B48D4(v75);
    v25(v72, 0);
    sub_1B3D34();
    v26 = v70;
    if ((*(v70 + 48))(v7, 1, v8) == 1)
    {
      sub_42F48(v7, &qword_22C1F8, &qword_1CFD60);
      type metadata accessor for ClientErrorPayload();
      sub_FA3E0();
      swift_allocError();
      (*(v17 + 16))(v27, v20, v16);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v17 + 8))(v20, v16);
    }

    else
    {
      v64 = v20;
      v65 = v17;
      v66 = v16;
      v28 = *(v26 + 32);
      v28(v11, v7, v8);
      v29 = v69;
      v28(v69, v11, v8);
      v30 = type metadata accessor for ClientCurrency.Request();
      v31 = v29 + v30[7];
      v70 = xmmword_1C6AD0;
      *v31 = xmmword_1C6AD0;
      v32 = (v29 + v30[5]);
      *v32 = 1414745936;
      v32[1] = 0xE400000000000000;
      v33 = v30[6];
      *(v29 + v33) = _swiftEmptyArrayStorage;
      sub_85D94(*v31, *(v31 + 8));
      *v31 = v70;
      *(v29 + v33) = _swiftEmptyArrayStorage;
      v34 = sub_3324C(0, 1, 1, _swiftEmptyArrayStorage);
      *(v29 + v33) = v34;
      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_3324C((v35 > 1), v36 + 1, 1, v34);
      }

      v37 = v74;
      *(v34 + 2) = v36 + 1;
      v38 = &v34[32 * v36];
      strcpy(v38 + 32, "content-type");
      v38[45] = 0;
      *(v38 + 23) = -5120;
      *(v38 + 6) = 0xD000000000000010;
      *(v38 + 7) = 0x80000000001D7860;
      *(v29 + v33) = v34;
      v39 = *(v37 + 3);
      v73[0] = *(v37 + 2);
      v73[1] = v39;
      v41 = *(v37 + 2);
      v40 = *(v37 + 3);
      v73[2] = *(v37 + 4);
      v42 = *(v67 + 128);
      v72[0] = v41;
      v72[1] = v40;
      v72[2] = *(v37 + 4);
      *&v70 = 0x80000000001D7860;
      sub_43050(v73, v71, &qword_22C280, qword_1C6D28);
      sub_2B0C(&qword_22C280, qword_1C6D28);
      sub_FA628(&qword_22C288, &qword_22C280, qword_1C6D28, sub_FA89C);
      v43 = v68;
      v44 = sub_1B3C54();
      if (v43)
      {
        sub_F212C(*&v72[0], *(&v72[0] + 1));
        (*(v65 + 8))(v64, v66);
        return sub_FA138(v29);
      }

      else
      {
        v46 = v44;
        v47 = v45;
        sub_F212C(*&v72[0], *(&v72[0] + 1));
        sub_85D94(*v31, *(v31 + 8));
        *v31 = v46;
        *(v31 + 8) = v47;
        v68 = v33;
        *(v29 + v33) = v34;
        v49 = *(v34 + 2);
        v48 = *(v34 + 3);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v34 = sub_3324C((v48 > 1), v49 + 1, 1, v34);
        }

        v51 = v70;
        *(v34 + 2) = v50;
        v52 = &v34[32 * v49];
        *(v52 + 4) = 0x747065636361;
        *(v52 + 5) = 0xE600000000000000;
        *(v52 + 6) = 0xD000000000000010;
        *(v52 + 7) = v51;
        v53 = v68;
        *(v29 + v68) = v34;
        v54 = v37[1];
        if (v54)
        {
          v55 = *v37;
          *(v29 + v53) = v34;
          v56 = *(v34 + 3);

          if ((v49 + 2) > (v56 >> 1))
          {
            v34 = sub_3324C((v56 > 1), v49 + 2, 1, v34);
          }

          *(v34 + 2) = v49 + 2;
          v57 = &v34[32 * v50];
          *(v57 + 4) = 0xD000000000000014;
          *(v57 + 5) = 0x80000000001D78B0;
          *(v57 + 6) = v55;
          *(v57 + 7) = v54;
          v53 = v68;
          *(v29 + v68) = v34;
          v37 = v74;
        }

        v58 = v37[3];
        v59 = v64;
        if (v58)
        {
          v60 = v37[2];
          *(v29 + v53) = v34;
          v62 = *(v34 + 2);
          v61 = *(v34 + 3);

          if (v62 >= v61 >> 1)
          {
            v34 = sub_3324C((v61 > 1), v62 + 1, 1, v34);
            *(v29 + v68) = v34;
          }

          result = (*(v65 + 8))(v59, v66);
          *(v34 + 2) = v62 + 1;
          v63 = &v34[32 * v62];
          *(v63 + 4) = 0xD00000000000001BLL;
          *(v63 + 5) = 0x80000000001D78F0;
          *(v63 + 6) = v60;
          *(v63 + 7) = v58;
          *(v29 + v68) = v34;
        }

        else
        {
          return (*(v65 + 8))(v64, v66);
        }
      }
    }
  }

  return result;
}

uint64_t sub_F44D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_F44F4, 0, 0);
}

uint64_t sub_F44F4()
{
  v1 = v0[4];
  v2 = v1[28];
  v3 = v1[29];
  sub_2698(v1 + 25, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_FA8F0;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, 0x6E656D6D6F636572, 0xE900000000000064, v2, v3);
}

uint64_t sub_F463C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  result = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  if (v8 > 400)
  {
    if (v8 == 401)
    {
      v19 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v19);

      if (!v3)
      {
        v17 = *(a2 + 136);
        sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
        sub_FA2B4();
        result = sub_1B3BA4();
        *a3 = v19;
        *(a3 + 8) = 0u;
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0;
        v12 = 2;
        goto LABEL_12;
      }

      return result;
    }

    if (v8 == 500)
    {
      v19 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v19);
      if (v3)
      {
      }

      v18 = *(a2 + 136);
      sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
      sub_FA2B4();
      result = sub_1B3BA4();
      *a3 = v19;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0;
      v12 = 3;
      goto LABEL_12;
    }

LABEL_11:
    *a3 = v8;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
    v12 = 4;
LABEL_12:
    *(a3 + 48) = v12;
    return result;
  }

  if (v8 == 200)
  {
    v19 = result;

    sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v19);

    if (!v3)
    {
      v13 = *(a2 + 136);
      sub_FA848();
      result = sub_1B3BA4();
      v14 = v22;
      v15 = v20;
      v16 = v21;
      *a3 = v19;
      *(a3 + 8) = v15;
      *(a3 + 24) = v16;
      *(a3 + 40) = v14;
      *(a3 + 48) = 0;
    }

    return result;
  }

  if (v8 != 400)
  {
    goto LABEL_11;
  }

  v19 = result;

  sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v19);

  if (!v3)
  {
    v11 = *(a2 + 136);
    sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA2B4();
    result = sub_1B3BA4();
    *a3 = v19;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0;
    v12 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_F4974(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = a8;
  *(v8 + 576) = a7;
  *(v8 + 568) = a6;
  *(v8 + 560) = a5;
  *(v8 + 552) = a4;
  *(v8 + 544) = a3;
  *(v8 + 536) = a1;
  v10 = sub_2B0C(&qword_22C260, &qword_1C6D18);
  *(v8 + 592) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  v12 = *(*(sub_2B0C(&qword_22C1B0, &qword_1C6CE0) - 8) + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v13 = type metadata accessor for ClientCurrency.Request();
  *(v8 + 624) = v13;
  v14 = *(v13 - 8);
  *(v8 + 632) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 640) = swift_task_alloc();
  v16 = a2[3];
  *(v8 + 128) = a2[2];
  *(v8 + 144) = v16;
  *(v8 + 160) = a2[4];
  v17 = a2[1];
  *(v8 + 96) = *a2;
  *(v8 + 112) = v17;

  return _swift_task_switch(sub_F4AE8, 0, 0);
}

uint64_t sub_F4AE8()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 552);
  (*(v0 + 544))();
  v3 = *(v0 + 640);
  v4 = swift_task_alloc();
  *(v0 + 648) = v4;
  *(v4 + 16) = *(v0 + 560);
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 656) = v5;
  *(v5 + 16) = v0 + 96;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v0 + 664) = v6;
  *v6 = v0;
  v6[1] = sub_F4DD8;

  return sub_140A44(v0 + 496, &unk_1C6D20, v4, sub_FA7AC, v5);
}

uint64_t sub_F4DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v8 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v4 = sub_F548C;
  }

  else
  {
    v5 = *(v2 + 656);
    v6 = *(v2 + 648);

    v4 = sub_F4F00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_F4F00()
{
  v64 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 536);
  v6 = *(v0 + 496);
  v5 = *(v0 + 504);
  v7 = *(v0 + 512);
  v8 = *(v0 + 520);
  v63[0] = v6;
  v63[1] = v5;
  v63[2] = v7;
  v63[3] = v8;
  v3(v63);
  if (v1)
  {
    v9 = *(v0 + 640);
    v61 = v1;
    v62 = v8;
    v10 = *(v0 + 632);
    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    v57 = *(v0 + 608);
    v13 = *(v0 + 600);
    v14 = v5;
    v15 = *(v0 + 592);
    v16 = *(v0 + 144);
    *(v0 + 208) = *(v0 + 128);
    *(v0 + 224) = v16;
    *(v0 + 240) = *(v0 + 160);
    v17 = *(v0 + 112);
    *(v0 + 176) = *(v0 + 96);
    *(v0 + 192) = v17;
    sub_FA194(v9, v12);
    v60 = v6;
    v18 = *(v10 + 56);
    v18(v12, 0, 1, v11);
    *(v0 + 400) = v15;
    *(v0 + 408) = sub_42094(&qword_22C268, &qword_22C260, &qword_1C6D18);
    v59 = sub_40528((v0 + 376));
    sub_43050(v12, v57, &qword_22C1B0, &qword_1C6CE0);
    v19 = *(v15 + 40);
    v18(v13 + v19, 1, 1, v11);
    v20 = (v0 + 456);
    v21 = v13 + *(v15 + 44);
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *v13 = 0x6E656D6D6F636572;
    *(v13 + 8) = 0xE900000000000064;
    *(v13 + 16) = *(v0 + 176);
    v22 = *(v0 + 192);
    v23 = *(v0 + 208);
    v24 = *(v0 + 240);
    *(v13 + 64) = *(v0 + 224);
    *(v13 + 80) = v24;
    *(v13 + 32) = v22;
    *(v13 + 48) = v23;
    sub_FA7EC(v0 + 176, v0 + 256);
    sub_FA1F8(v57, v13 + v19);
    v25 = *v21;
    v26 = *(v21 + 8);
    v28 = *(v21 + 16);
    v27 = *(v21 + 24);

    sub_4161C(v7, v62);
    sub_FA268(v25, v26, v28, v27);
    *v21 = v60;
    *(v21 + 8) = v14;
    *(v21 + 16) = v7;
    *(v21 + 24) = v62;
    *(v0 + 528) = v61;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
    v29 = swift_dynamicCast();
    v30 = *(v0 + 608);
    v31 = *(v0 + 600);
    v32 = *(v0 + 592);
    v58 = v7;
    if (v29)
    {
      sub_264B8(v20, v0 + 416);
      v33 = *(v0 + 440);
      v34 = *(v0 + 448);
      sub_2698((v0 + 416), v33);
      v35 = (*(v34 + 48))(v33, v34);
      sub_42F48(v30, &qword_22C1B0, &qword_1C6CE0);
      *(v31 + *(v32 + 48)) = v35;
      sub_2BF8((v0 + 416));
    }

    else
    {
      sub_42F48(v30, &qword_22C1B0, &qword_1C6CE0);
      *v20 = 0u;
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0;
      sub_42F48(v20, &qword_22C1C8, &qword_1CE710);
      *(v31 + *(v32 + 48)) = v61;
      swift_errorRetain();
    }

    v41 = *(v0 + 616);
    v42 = *(v0 + 592);
    sub_5ED18(*(v0 + 600), v59, &qword_22C260, &qword_1C6D18);
    sub_42F48(v41, &qword_22C1B0, &qword_1C6CE0);
    v44 = *(v0 + 400);
    v43 = *(v0 + 408);
    v45 = sub_2698((v0 + 376), v44);
    v46 = *(v44 - 8);
    v47 = *(v46 + 64) + 15;
    v48 = swift_task_alloc();
    (*(v46 + 16))(v48, v45, v44);
    sub_42094(&qword_22C270, &qword_22C260, &qword_1C6D18);
    if (sub_1B55C4())
    {
      (*(v46 + 8))(v48, v44);
    }

    else
    {
      v49 = *(*(v43 + 8) + 8);
      swift_allocError();
      (*(v46 + 32))(v50, v48, v44);
    }

    v51 = *(v0 + 640);
    swift_willThrow();

    sub_2BF8((v0 + 376));

    sub_41670(v58, v62);
    sub_FA138(v51);
    v52 = *(v0 + 640);
    v53 = *(v0 + 616);
    v54 = *(v0 + 608);
    v55 = *(v0 + 600);

    v40 = *(v0 + 8);
  }

  else
  {
    v36 = *(v0 + 640);
    v37 = *(v0 + 616);
    v38 = *(v0 + 608);
    v39 = *(v0 + 600);

    sub_41670(v7, v8);
    sub_FA138(v36);

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_F548C()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];

  sub_FA138(v3);
  v4 = v0[84];
  v5 = v0[80];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];

  v9 = v0[1];

  return v9();
}

uint64_t sub_F553C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 520) = a8;
  *(v8 + 504) = a6;
  *(v8 + 512) = a7;
  *(v8 + 488) = a4;
  *(v8 + 496) = a5;
  *(v8 + 472) = a1;
  *(v8 + 480) = a3;
  v10 = sub_2B0C(&qword_22C228, &qword_1C6D00);
  *(v8 + 528) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v12 = *(*(sub_2B0C(&qword_22C1B0, &qword_1C6CE0) - 8) + 64) + 15;
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  v13 = type metadata accessor for ClientCurrency.Request();
  *(v8 + 560) = v13;
  v14 = *(v13 - 8);
  *(v8 + 568) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 576) = swift_task_alloc();
  v16 = a2[1];
  *(v8 + 80) = *a2;
  *(v8 + 96) = v16;
  v17 = a2[3];
  *(v8 + 112) = a2[2];
  *(v8 + 128) = v17;

  return _swift_task_switch(sub_F569C, 0, 0);
}

uint64_t sub_F569C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 488);
  (*(v0 + 480))();
  v3 = *(v0 + 576);
  v4 = swift_task_alloc();
  *(v0 + 584) = v4;
  *(v4 + 16) = *(v0 + 496);
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 592) = v5;
  *(v5 + 16) = v0 + 80;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v0 + 600) = v6;
  *v6 = v0;
  v6[1] = sub_F5980;

  return sub_140A44(v0 + 432, &unk_1C6D08, v4, sub_FA540, v5);
}

uint64_t sub_F5980()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v8 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = sub_F6024;
  }

  else
  {
    v5 = *(v2 + 592);
    v6 = *(v2 + 584);

    v4 = sub_F5AA8;
  }

  return _swift_task_switch(v4, 0, 0);
}